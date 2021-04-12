-- for MySQL
CREATE TABLE IF NOT EXISTS UNIT_EVENTS_RPC (

	id bigint NOT NULL,
	event_time timestamp NOT NULL default '0000-00-00 00:00:00',
	system_time timestamp NOT NULL default CURRENT_TIMESTAMP,
	ac smallint default NULL,
	ad integer default NULL,
	age smallint default NULL,
	aid integer default NULL,
	al smallint default NULL,
	an_diff_in1_in2 integer default NULL,
	an_diff_in3_in4 integer default NULL,
	an_diff_in5_in6 integer default NULL,
	an_diff_in7_in8 integer default NULL,
	an_fdiff_in1_in2 integer default NULL,
	an_fdiff_in3_in4 integer default NULL,
	an_fdiff_in5_in6 integer default NULL,
	an_fdiff_in7_in8 integer default NULL,
	an_in1 integer default NULL,
	an_in2 integer default NULL,
	an_in3 integer default NULL,
	an_in4 integer default NULL,
	an_in5 integer default NULL,
	an_in6 integer default NULL,
	an_in7 integer default NULL,
	an_in8 integer default NULL,
	ap_cur_deg_x integer default NULL,
	ap_cur_deg_y integer default NULL,
	ap_cur_deg_z integer default NULL,
	ap_cur_mag integer default NULL,
	ap_mov boolean default NULL,
	ap_ref_deg_x integer default NULL,
	ap_ref_deg_y integer default NULL,
	ap_ref_deg_z integer default NULL,
	axl_weight_trailer integer default NULL,
	axl_weight_trailer_total integer default NULL,
	axl_weight_truck integer default NULL,
	axl_weight_truck_total integer default NULL,
	axl_weights text default NULL,
	axl_weights_01 integer default NULL,
	axl_weights_02 integer default NULL,
	axl_weights_03 integer default NULL,
	axl_weights_04 integer default NULL,
	axl_weights_05 integer default NULL,
	axl_weights_06 integer default NULL,
	axl_weights_07 integer default NULL,
	axl_weights_08 integer default NULL,
	bl smallint default NULL,
	btt_battery integer default NULL,
	btt_button boolean default NULL,
	btt_driver varchar(20) default NULL,
	btt_driver_set boolean default NULL,
	btt_freefall boolean default NULL,
	btt_humidity integer default NULL,
	btt_impact boolean default NULL,
	btt_light integer default NULL,
	btt_mac varchar(20) default NULL,
	btt_motion boolean default NULL,
	btt_presence boolean default NULL,
	btt_reed boolean default NULL,
	btt_temp integer default NULL,
	btt_wreason varchar(1) default NULL,
	ce bigint default NULL,
	cf_cid integer default NULL,
	cf_lac integer default NULL,
	cf_mcc integer default NULL,
	cf_mnc integer default NULL,
	cf_rssi integer default NULL,
	cf_type varchar(10) default NULL,
	checkpoint integer default NULL,
	cl bigint default NULL,
	climb_detection boolean default NULL,
	code smallint default NULL,
	comdelay integer default NULL,
	counter_ack_duration integer default NULL,
	counter_bytes_mo integer default NULL,
	counter_bytes_mt integer default NULL,
	counter_reset_gprs integer default NULL,
	counter_reset_gprs_bearer integer default NULL,
	counter_reset_gsm integer default NULL,
	counter_retransmissions integer default NULL,
	counter_transmissions integer default NULL,
	cr bigint default NULL,
	cs bigint default NULL,
	cv00 integer default NULL,
	cv01 integer default NULL,
	cv02 integer default NULL,
	cv03 integer default NULL,
	cv04 integer default NULL,
	cv05 integer default NULL,
	cv06 integer default NULL,
	cv07 integer default NULL,
	cv08 integer default NULL,
	cv09 integer default NULL,
	cv10 integer default NULL,
	cv11 integer default NULL,
	cv12 integer default NULL,
	cv13 integer default NULL,
	cv14 integer default NULL,
	cv15 integer default NULL,
	cv16 integer default NULL,
	cv17 integer default NULL,
	cv18 integer default NULL,
	cv19 integer default NULL,
	cv20 integer default NULL,
	cv21 integer default NULL,
	cv22 integer default NULL,
	cv23 integer default NULL,
	cv24 integer default NULL,
	cv25 integer default NULL,
	cv26 integer default NULL,
	cv27 integer default NULL,
	cv28 integer default NULL,
	cv29 integer default NULL,
	cv30 integer default NULL,
	cv31 integer default NULL,
	cv32 integer default NULL,
	cv33 integer default NULL,
	cv34 integer default NULL,
	cv35 integer default NULL,
	cv36 integer default NULL,
	cv37 integer default NULL,
	cv38 integer default NULL,
	cv39 integer default NULL,
	cv40 integer default NULL,
	cv41 integer default NULL,
	cv42 integer default NULL,
	cv43 integer default NULL,
	cv44 integer default NULL,
	cv45 integer default NULL,
	cv46 integer default NULL,
	cv47 integer default NULL,
	cv48 integer default NULL,
	cv49 integer default NULL,
	dev_dist bigint default NULL,
	dev_idle bigint default NULL,
	dev_ign bigint default NULL,
	dev_orpm bigint default NULL,
	dev_ospeed bigint default NULL,
	device_id bigint default NULL,
	dphoto_ptr bigint default NULL,
	ea_a integer default NULL,
	ea_b integer default NULL,
	ea_c integer default NULL,
	ecu_ac_high_pressure_fan integer default NULL,
	ecu_ac_high_pressure_fan_flag varchar(1) default NULL,
	ecu_aftmt_doc_intk_tmp integer default NULL,
	ecu_aftmt_doc_intk_tmp_flag varchar(1) default NULL,
	ecu_aftmt_dpf_diff_psi integer default NULL,
	ecu_aftmt_dpf_diff_psi_flag varchar(1) default NULL,
	ecu_aftmt_dpf_intake_tmp integer default NULL,
	ecu_aftmt_dpf_intake_tmp_flag varchar(1) default NULL,
	ecu_aftmt_dpf_outlet_tmp integer default NULL,
	ecu_aftmt_dpf_outlet_tmp_flag varchar(1) default NULL,
	ecu_aftmt_dpf_soot_load integer default NULL,
	ecu_aftmt_dpf_soot_load_flag varchar(1) default NULL,
	ecu_aftmt_intake_nox integer default NULL,
	ecu_aftmt_intake_nox_flag varchar(1) default NULL,
	ecu_aftmt_outlet_nox integer default NULL,
	ecu_aftmt_outlet_nox_flag varchar(1) default NULL,
	ecu_aftmt_purge_air_act integer default NULL,
	ecu_aftmt_purge_air_act_flag varchar(1) default NULL,
	ecu_aftmt_scr_intake_tmp integer default NULL,
	ecu_aftmt_scr_intake_tmp_flag varchar(1) default NULL,
	ecu_aftmt_scr_outlet_tmp integer default NULL,
	ecu_aftmt_scr_outlet_tmp_flag varchar(1) default NULL,
	ecu_aload integer default NULL,
	ecu_aload_flag varchar(1) default NULL,
	ecu_ambient_air_tmp integer default NULL,
	ecu_ambient_air_tmp_flag varchar(1) default NULL,
	ecu_battery integer default NULL,
	ecu_battery_flag varchar(1) default NULL,
	ecu_bpressure integer default NULL,
	ecu_bpressure_flag varchar(1) default NULL,
	ecu_brake_pedal integer default NULL,
	ecu_brake_pedal_flag varchar(1) default NULL,
	ecu_ccontrol integer default NULL,
	ecu_ccontrol_flag varchar(1) default NULL,
	ecu_ccontrol_set_speed integer default NULL,
	ecu_ccontrol_set_speed_flag varchar(1) default NULL,
	ecu_clutch_pedal integer default NULL,
	ecu_clutch_pedal_flag varchar(1) default NULL,
	ecu_cool_lvl integer default NULL,
	ecu_cool_lvl_flag varchar(1) default NULL,
	ecu_cool_psi integer default NULL,
	ecu_cool_psi_flag varchar(1) default NULL,
	ecu_cool_tmp integer default NULL,
	ecu_cool_tmp_flag varchar(1) default NULL,
	ecu_ddemand integer default NULL,
	ecu_ddemand_flag varchar(1) default NULL,
	ecu_def_consumed integer default NULL,
	ecu_def_consumed_flag varchar(1) default NULL,
	ecu_def_level integer default NULL,
	ecu_def_level_flag varchar(1) default NULL,
	ecu_def_tmp integer default NULL,
	ecu_def_tmp_flag varchar(1) default NULL,
	ecu_dist integer default NULL,
	ecu_distance integer default NULL,
	ecu_distance_flag varchar(1) default NULL,
	ecu_dpf_intake_psi integer default NULL,
	ecu_dpf_intake_psi_flag varchar(1) default NULL,
	ecu_dpf_soot_load integer default NULL,
	ecu_dpf_soot_load_flag varchar(1) default NULL,
	ecu_dpf_status integer default NULL,
	ecu_dpf_status_flag varchar(1) default NULL,
	ecu_dtc_cleared integer default NULL,
	ecu_dtc_cleared_flag varchar(1) default NULL,
	ecu_eidle integer default NULL,
	ecu_eload integer default NULL,
	ecu_eload_flag varchar(1) default NULL,
	ecu_eng_crank_psi integer default NULL,
	ecu_eng_crank_psi_flag varchar(1) default NULL,
	ecu_eng_egr_diff_psi integer default NULL,
	ecu_eng_egr_diff_psi_flag varchar(1) default NULL,
	ecu_eng_egr_maf integer default NULL,
	ecu_eng_egr_maf_flag varchar(1) default NULL,
	ecu_eng_egr_tmp integer default NULL,
	ecu_eng_egr_tmp_flag varchar(1) default NULL,
	ecu_eng_egr_valve_control integer default NULL,
	ecu_eng_egr_valve_control_flag varchar(1) default NULL,
	ecu_eng_egr_valve_pos integer default NULL,
	ecu_eng_egr_valve_pos_flag varchar(1) default NULL,
	ecu_eng_exhaust_psi integer default NULL,
	ecu_eng_exhaust_psi_flag varchar(1) default NULL,
	ecu_eng_exhaust_tmp integer default NULL,
	ecu_eng_exhaust_tmp_flag varchar(1) default NULL,
	ecu_eng_intake_manif_psi integer default NULL,
	ecu_eng_intake_manif_psi_flag varchar(1) default NULL,
	ecu_eng_load integer default NULL,
	ecu_eng_load_flag varchar(1) default NULL,
	ecu_eng_maf integer default NULL,
	ecu_eng_maf_flag varchar(1) default NULL,
	ecu_eng_oil_lvl integer default NULL,
	ecu_eng_oil_lvl_flag varchar(1) default NULL,
	ecu_eng_oil_psi integer default NULL,
	ecu_eng_oil_psi_flag varchar(1) default NULL,
	ecu_eng_oil_tmp integer default NULL,
	ecu_eng_oil_tmp_flag varchar(1) default NULL,
	ecu_eng_pto_governor_enable integer default NULL,
	ecu_eng_pto_governor_enable_flag varchar(1) default NULL,
	ecu_eng_pto_pprog_speed_control integer default NULL,
	ecu_eng_pto_pprog_speed_control_flag varchar(1) default NULL,
	ecu_eng_ref_torque integer default NULL,
	ecu_eng_ref_torque_flag varchar(1) default NULL,
	ecu_eng_turbo_intake_psi integer default NULL,
	ecu_eng_turbo_intake_psi_flag varchar(1) default NULL,
	ecu_eng_turbo_intake_tmp integer default NULL,
	ecu_eng_turbo_intake_tmp_flag varchar(1) default NULL,
	ecu_eng_turbo_rpm integer default NULL,
	ecu_eng_turbo_rpm_flag varchar(1) default NULL,
	ecu_eng_vgt_act integer default NULL,
	ecu_eng_vgt_act_flag varchar(1) default NULL,
	ecu_eng_vgt_control_mode integer default NULL,
	ecu_eng_vgt_control_mode_flag varchar(1) default NULL,
	ecu_eng_vgt_position integer default NULL,
	ecu_eng_vgt_position_flag varchar(1) default NULL,
	ecu_eon integer default NULL,
	ecu_eon_flag varchar(1) default NULL,
	ecu_error_flag varchar(1) default NULL,
	ecu_error1 integer default NULL,
	ecu_error2 integer default NULL,
	ecu_error3 integer default NULL,
	ecu_error4 integer default NULL,
	ecu_error5 integer default NULL,
	ecu_error6 integer default NULL,
	ecu_error7 integer default NULL,
	ecu_eusage integer default NULL,
	ecu_fan_state integer default NULL,
	ecu_fan_state_flag varchar(1) default NULL,
	ecu_fpressure integer default NULL,
	ecu_fpressure_flag varchar(1) default NULL,
	ecu_fuel_iconsumption integer default NULL,
	ecu_fuel_iconsumption_flag varchar(1) default NULL,
	ecu_fuel_level integer default NULL,
	ecu_fuel_level_flag varchar(1) default NULL,
	ecu_fuel_level_real integer default NULL,
	ecu_fuel_level_real_flag varchar(1) default NULL,
	ecu_fuel_tmp integer default NULL,
	ecu_fuel_tmp_flag varchar(1) default NULL,
	ecu_hours integer default NULL,
	ecu_hours_flag varchar(1) default NULL,
	ecu_hours_idle integer default NULL,
	ecu_hours_idle_flag varchar(1) default NULL,
	ecu_hydr_oil_lvl integer default NULL,
	ecu_hydr_oil_lvl_flag varchar(1) default NULL,
	ecu_hydr_oil_psi integer default NULL,
	ecu_hydr_oil_psi_flag varchar(1) default NULL,
	ecu_hydr_oil_tmp integer default NULL,
	ecu_hydr_oil_tmp_flag varchar(1) default NULL,
	ecu_idle_fuel integer default NULL,
	ecu_idle_fuel_flag varchar(1) default NULL,
	ecu_ifuel integer default NULL,
	ecu_ins_efficiency integer default NULL,
	ecu_ins_efficiency_flag varchar(1) default NULL,
	ecu_intake_air_tmp integer default NULL,
	ecu_intake_air_tmp_flag varchar(1) default NULL,
	ecu_intake_manif_tmp integer default NULL,
	ecu_intake_manif_tmp_flag varchar(1) default NULL,
	ecu_maf integer default NULL,
	ecu_maf_flag varchar(1) default NULL,
	ecu_mil_error_code integer default NULL,
	ecu_mil_error_count integer default NULL,
	ecu_mil_state boolean default NULL,
	ecu_mil_state_flag varchar(1) default NULL,
	ecu_nominal_friction_torque integer default NULL,
	ecu_nominal_friction_torque_flag varchar(1) default NULL,
	ecu_obd_auxios integer default NULL,
	ecu_obd_auxios_flag varchar(1) default NULL,
	ecu_obd_ftype integer default NULL,
	ecu_obd_ftype_flag varchar(1) default NULL,
	ecu_oxygen integer default NULL,
	ecu_oxygen_flag varchar(1) default NULL,
	ecu_pg0 varchar(20) default NULL,
	ecu_pg1 varchar(20) default NULL,
	ecu_pg2 varchar(20) default NULL,
	ecu_pg3 varchar(20) default NULL,
	ecu_pg4 varchar(20) default NULL,
	ecu_pto integer default NULL,
	ecu_pto_flag varchar(1) default NULL,
	ecu_rbatt integer default NULL,
	ecu_rbatt_flag varchar(1) default NULL,
	ecu_remote_accel_enable integer default NULL,
	ecu_remote_accel_enable_flag varchar(1) default NULL,
	ecu_remote_accel_pedal integer default NULL,
	ecu_remote_accel_pedal_flag varchar(1) default NULL,
	ecu_retarder_brake_assist integer default NULL,
	ecu_retarder_brake_assist_flag varchar(1) default NULL,
	ecu_rpm integer default NULL,
	ecu_rpm_flag varchar(1) default NULL,
	ecu_serv_distance integer default NULL,
	ecu_serv_distance_flag varchar(1) default NULL,
	ecu_speed integer default NULL,
	ecu_speed_flag varchar(1) default NULL,
	ecu_tfuel integer default NULL,
	ecu_throttle integer default NULL,
	ecu_throttle_flag varchar(1) default NULL,
	ecu_tires_psi text default NULL,
	ecu_tires_psi_flag varchar(1) default NULL,
	ecu_tires_tmp text default NULL,
	ecu_tires_tmp_flag varchar(1) default NULL,
	ecu_torque integer default NULL,
	ecu_torque_flag varchar(1) default NULL,
	ecu_total_fuel bigint default NULL,
	ecu_total_fuel_flag varchar(1) default NULL,
	ecu_total_run_time bigint default NULL,
	ecu_total_run_time_flag varchar(1) default NULL,
	ecu_tpms_provision text default NULL,
	ecu_tpms_provision_flag varchar(1) default NULL,
	ecu_tpms_warnings text default NULL,
	ecu_tpms_warnings_flag varchar(1) default NULL,
	ecu_trans_lvl integer default NULL,
	ecu_trans_lvl_flag varchar(1) default NULL,
	ecu_trans_psi integer default NULL,
	ecu_trans_psi_flag varchar(1) default NULL,
	ecu_trans_tmp integer default NULL,
	ecu_trans_tmp_flag varchar(1) default NULL,
	ecu_trip_distance integer default NULL,
	ecu_trip_distance_flag varchar(1) default NULL,
	ecu_vin text default NULL,
	ecu_vin_flag varchar(1) default NULL,
	ecu_water_in_fuel integer default NULL,
	ecu_water_in_fuel_flag varchar(1) default NULL,
	ecu_weights text default NULL,
	ecu_weights_flag varchar(1) default NULL,
	ecu_with_mil_distance bigint default NULL,
	ecu_with_mil_distance_flag varchar(1) default NULL,
	ecu_with_mil_time bigint default NULL,
	ecu_with_mil_time_flag varchar(1) default NULL,
	event_epoch bigint default NULL,
	event_type integer default NULL,
	fpr_code varchar(20) default NULL,
	fpr_conn boolean default NULL,
	fpr_id integer default NULL,
	hdop smallint default NULL,
	head smallint default NULL,
	ib varchar(16) default NULL,
	ib_set boolean default NULL,
	ii bigint default NULL,
	io_exp_in1 boolean default NULL,
	io_exp_in2 boolean default NULL,
	io_exp_in3 boolean default NULL,
	io_exp_in4 boolean default NULL,
	io_exp_out1 boolean default NULL,
	io_exp_out1_short boolean default NULL,
	io_exp_out2 boolean default NULL,
	io_exp_out2_short boolean default NULL,
	io_exp_out3 boolean default NULL,
	io_exp_out3_short boolean default NULL,
	io_exp_out4 boolean default NULL,
	io_exp_out4_short boolean default NULL,
	io_exp_state boolean default NULL,
	io_ign boolean default NULL,
	io_in1 boolean default NULL,
	io_in2 boolean default NULL,
	io_in3 boolean default NULL,
	io_out1 boolean default NULL,
	io_out1_short boolean default NULL,
	io_out2 boolean default NULL,
	io_out2_short boolean default NULL,
	io_pwr boolean default NULL,
	io_tamper boolean default NULL,
	ip varchar(15) default NULL,
	jamm_detected boolean default NULL,
	ky varchar(20) default NULL,
	label varchar(20) default NULL,
	lat integer default NULL,
	light_sensor boolean default NULL,
	lon integer default NULL,
	moving boolean default NULL,
	mph smallint default NULL,
	pc integer default NULL,
	pdop smallint default NULL,
	pid integer default NULL,
	port integer default NULL,
	primary_name text default NULL,
	re_index smallint default NULL,
	re_sense boolean default NULL,
	re_type varchar(1) default NULL,
	rfi_fac integer default NULL,
	rfi_full_id varchar(50) default NULL,
	rfi_id integer default NULL,
	source smallint default NULL,
	sv smallint default NULL,
	tc00 bigint default NULL,
	tc01 bigint default NULL,
	tc02 bigint default NULL,
	tc03 bigint default NULL,
	tc04 bigint default NULL,
	tc05 bigint default NULL,
	tc06 bigint default NULL,
	tc07 bigint default NULL,
	tc08 bigint default NULL,
	tc09 bigint default NULL,
	tc10 bigint default NULL,
	tc11 bigint default NULL,
	tc12 bigint default NULL,
	tc13 bigint default NULL,
	tc14 bigint default NULL,
	tc15 bigint default NULL,
	tc16 bigint default NULL,
	tc17 bigint default NULL,
	tc18 bigint default NULL,
	tc19 bigint default NULL,
	tec_1_ff integer default NULL,
	tec_1_fn integer default NULL,
	tec_1_ft integer default NULL,
	tec_1_st boolean default NULL,
	tec_2_ff integer default NULL,
	tec_2_fn integer default NULL,
	tec_2_ft integer default NULL,
	tec_2_st boolean default NULL,
	tec_3_ff integer default NULL,
	tec_3_fn integer default NULL,
	tec_3_ft integer default NULL,
	tec_3_st boolean default NULL,
	tec_ff integer default NULL,
	tec_fn integer default NULL,
	tec_ft integer default NULL,
	tec_st boolean default NULL,
	temp integer default NULL,
	ti_sense boolean default NULL,
	ti_signal varchar(10) default NULL,
	ti_thr integer default NULL,
	ti_val integer default NULL,
	trip_id bigint default NULL,
	tx varchar(1024) default NULL,
	type integer default NULL,
	usense_filtered_value integer default NULL,
	usense_hardware_code integer default NULL,
	usense_hour integer default NULL,
	usense_median_value integer default NULL,
	usense_minute integer default NULL,
	usense_raw_value integer default NULL,
	usense_signal_strength integer default NULL,
	usense_software_code integer default NULL,
	usense_tilt_angle integer default NULL,
	usense_valid_signal integer default NULL,
	valid_position boolean default NULL,
	vdop smallint default NULL,
	vehicle_dev_dist bigint default NULL,
	vehicle_dev_idle bigint default NULL,
	vehicle_dev_ign bigint default NULL,
	vehicle_dev_orpm bigint default NULL,
	vehicle_dev_ospeed bigint default NULL,
	vehicle_ecu_dist bigint default NULL,
	vehicle_ecu_eidle bigint default NULL,
	vehicle_ecu_eusage bigint default NULL,
	vehicle_ecu_ifuel bigint default NULL,
	vehicle_ecu_tfuel bigint default NULL,
	vid integer default NULL,
	vo bigint default NULL,
	PRIMARY KEY (id)
)