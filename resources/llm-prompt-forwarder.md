# LLM Prompt --- Pegasus Forwarder Receiver (json_fwd & devicepkg)

You are a senior backend engineer. Build a small service that **receives
Pegasus Forwarder POSTs** and **acks with retry semantics**.

## Context (must follow exactly)

-   Pegasus **Forwarders** send **HTTP POST** with a **JSON array** of
    1..N items.
-   Two protocols:
    -   `FWD:json_fwd`: array of **vehicle event** objects (flat
        telemetry fields like `id`, `vid`, `lat`, `lon`, `mph`,
        `event_time`, ECU fields, etc.).
    -   `FWD:devicepkg`: array of **full device** objects with nested
        sections (e.g., `connection`, `trip`, `config`, `vcounters`,
        etc.). You may receive large/nested JSON.
-   **Ack contract** (required):
    -   On success: respond `200 OK` with body `[]` (empty array).
    -   If some items failed transiently: respond with JSON array of the
        **failed item ids**, e.g. `[10001, 10005]`.
-   **Performance**: reply within **≤ 1 second**; do heavy work async
    after ack.
-   **Batching**: Pegasus can send up to `MAX_MESS_PER_CALL` items
    (25..500). Your handler must process **arrays**.
-   **Reliability**: Forwarders have an internal queue + retry. Your
    endpoint must be **idempotent** (dedupe by `id`) and **never
    block**.
-   **Security**: Accept optional **custom headers** (e.g., shared
    secret / bearer). Reject requests that fail auth.
-   **Networking**: Service must be reachable over HTTPS at path
    `/<BASE_PATH>` (configurable).
-   **Filtering** (devicepkg only): Pegasus may configure
    `general.filter_fields` to limit sections; your code must not assume
    fixed shapes.
-   **Timestamps**: Expect ISO strings (sometimes with microseconds).
    Don't parse if you don't need it in the hot path.

## Target stack (choose one and stick to it)

-   Language/Framework: **Node.js 20 + Express** *or* **Python 3.11 +
    FastAPI**.
-   Storage: **None for hot path**; use an in-memory queue + background
    worker. Optionally show a pluggable async sink interface (e.g., to
    Postgres/Kafka/S3) but stub it.

## Deliverables (exact file list)

1.  `app.(js|py)` --- HTTP server with:
    -   `POST /<BASE_PATH>` that:
        -   Validates: body is a JSON **array** of objects with at least
            an `id` (number or string).
        -   Auth: if env `FWD_SHARED_SECRET` is set, require header
            `X-Pegasus-Signature: <secret>` (constant-time compare).
        -   Fast-path:
            -   Log count, first `k` ids (k=5), and protocol hint (infer
                by presence of canonical fields: `vid/lat/lon` →
                json_fwd; `connection/config/trip` → devicepkg).
            -   Push items into an **async queue** and immediately
                **ack**.
        -   Acks: `[]` on full accept; otherwise subset of ids that
            **failed to enqueue**.
    -   Health: `GET /healthz` returns `{status:"ok"}`.
2.  `worker.(js|py)` --- background consumer that:
    -   Batches internally (e.g., 100/ms) and calls a pluggable `sink`
        function.
    -   Demonstrates **idempotency** via an in-memory **LRU cache** of
        processed ids.
3.  `sink_example.(js|py)` --- example sink that prints summaries:
    -   For `json_fwd`: count, min/max `event_time`, unique `vid` count.
    -   For `devicepkg`: count, presence of sections (`connection`,
        `trip`, etc.).
4.  `config.example.env` --- includes:
    -   `PORT=3000`
    -   `BASE_PATH=pegasus-forwarder`
    -   `FWD_SHARED_SECRET=change-me`
5.  `README.md` --- **how to run**, **curl tests**, **acceptance
    tests**, and operational notes.
6.  (Optional) `Dockerfile` and `compose.yaml`.

## Functional requirements

-   **Hot path ≤ 1s** even for 500-item payloads.
-   **Array-only**: reject non-arrays with `400` and message
    `"expected array of events"`.
-   **Idempotency**: ignore duplicates by `id` for a TTL of at least **1
    hour** (LRU of last \~1e6 ids configurable).
-   **Schema-agnostic**: do not hard-fail if fields are missing/extra;
    only require `id`.
-   **Robust JSON**: Booleans may appear as `true/false` or unusual
    encodings in samples; rely on JSON parser.
-   **Graceful backpressure**: if queue full, **fail those ids** in the
    ack array.
-   **Observability**:
    -   Structured logs (one line per request): `proto`, `count`,
        `duration_ms`, `ack_size`.
    -   Metrics counters (even simple in-process): `requests_total`,
        `events_total`, `rejected_total`, `queue_depth`.
-   **Security**:
    -   Optional header check as described.
    -   Size limit: reject bodies \> **5 MB** with `413`.
    -   Only `Content-Type: application/json`.
-   **Startup**: log effective config (without secrets) and port.

## Acceptance tests (include in README and runnable as curl)

1.  **Happy path (json_fwd)**\
    POST array with two events (fields: `id`, `vid`, `lat`, `lon`,
    `event_time`). Expect `[]`.
2.  **Happy path (devicepkg)**\
    POST array with two objects each containing at least `id` and a
    nested section like `connection`. Expect `[]`.
3.  **Malformed**\
    POST an object `{...}` (not array). Expect `400` + error.
4.  **Auth fail**\
    If `FWD_SHARED_SECRET` set, omit/mismatch header; expect `401`.
5.  **Backpressure**\
    Simulate queue at capacity; expect ack body `[<subset ids>]`.
6.  **Large batch**\
    250 items; service still acks within ≤ 1s.

## Example test payloads (use these in README)

-   **json_fwd minimal**:

``` json
[
  {"id": 289, "event_time": "2025-02-02T07:01:26Z", "lat": 25.167934, "lon": -79.782812, "vid": 3398},
  {"id": 657, "event_time": "2025-02-02T07:01:26Z", "lat": 25.682332, "lon": -79.925022, "vid": 6827}
]
```

-   **devicepkg minimal**:

``` json
[
  {"id":"70023020332334","connection":{"online":true,"last":{"code":100}},"trip":{"id":"t1"}},
  {"id":"70023018507093","config":{"ky":"s218"},"vcounters":{"dev_dist":{"value":519344026}}}
]
```

## Non-functional notes the code must reflect (comments OK)

-   Keep handler **pure**; enqueue and return. All downstream (DB,
    Kafka, S3) is async.
-   Do **not** parse/transform every field; only do minimal validation.
-   Log only **summaries** to avoid PII/volume issues.
-   Prefer UTC everywhere.

## Output format from you (very important)

-   Provide the **full code** for all deliverables.
-   Put **env and README** contents inline.
-   Keep it runnable via:
    -   Node: `npm install && node app.js`
    -   Python:
        `pip install fastapi uvicorn pydantic[dotenv] && uvicorn app:app --port 3000`
-   Include the exact **curl** commands:

``` bash
curl -sS -X POST "http://localhost:3000/${BASE_PATH:-pegasus-forwarder}"   -H "Content-Type: application/json"   -H "X-Pegasus-Signature: ${FWD_SHARED_SECRET:-}"   -d '[{"id":289,"event_time":"2025-02-02T07:01:26Z","lat":25.167934,"lon":-79.782812,"vid":3398}]'
```

## Stretch (if time permits, optional)

-   Simple **LRU** implementation (no external deps) *or* use a
    lightweight lib.
-   Prometheus `/metrics`.
-   Dockerfile with distroless.

------------------------------------------------------------------------

## Quick critique of common pitfalls (avoid these)

-   ❌ Treating body as a single object instead of an **array**.
-   ❌ Doing heavy DB writes **before** ack → breaks 1-second SLA.
-   ❌ Assuming fixed schemas (devicepkg varies, may include/exclude
    sections).
-   ❌ No idempotency → duplicated records on Pegasus retries.
-   ❌ Logging entire payloads (huge + sensitive).
-   ❌ Forgetting `Content-Type` guard and size limits.
