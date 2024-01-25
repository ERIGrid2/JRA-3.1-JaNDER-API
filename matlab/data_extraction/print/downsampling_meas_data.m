
%%%%%%%%%%%%%%%%%%%%%%%%% SHIFTING TO MISSION START %%%%%%%%%%%%%%%%%%%%%%%
%% FINDING - Finding the sample related to the UTC starting and ending time
% STARTING TIME
find_start_active_power_el_sin_out_vec_1        = find(datetime(active_power_el_sin_out_vec(:,2), 'ConvertFrom', ...
    'posixtime') >= shift_1_start, 1);
find_start_reactive_power_el_sin_out_vec_1      = find(datetime(reactive_power_el_sin_out_vec(:,2), 'ConvertFrom', ...
    'posixtime') >= shift_1_start, 1);
find_start_active_power_ref_el_sin_out_vec_1    = find(datetime(active_power_ref_el_sin_out_vec(:,2), 'ConvertFrom', ...
    'posixtime') >= shift_1_start, 1);
find_start_reactive_power_ref_el_sin_out_vec_1  = find(datetime(reactive_power_ref_el_sin_out_vec(:,2), 'ConvertFrom', ...
    'posixtime') >= shift_1_start, 1);
find_start_soc_sin_vec_1                        = find(datetime(soc_sin_vec(:,2), 'ConvertFrom', ...
    'posixtime') >= shift_1_start, 1);
find_start_voltage_ref_sin_out_vec_1            = find(datetime(voltage_ref_sin_out_vec(:,2), 'ConvertFrom', ...
    'posixtime') >= shift_1_start, 1);
find_start_frequency_ref_sin_out_vec_1          = find(datetime(frequency_ref_sin_out_vec(:,2), 'ConvertFrom', ...
    'posixtime') >= shift_1_start, 1);
find_start_active_power_el_rse_out_vec_1        = find(datetime(active_power_el_rse_out_vec(:,2), 'ConvertFrom', ...
    'posixtime') >= shift_1_start, 1);
find_start_reactive_power_el_rse_out_vec_1      = find(datetime(reactive_power_el_rse_out_vec(:,2), 'ConvertFrom', ...
    'posixtime') >= shift_1_start, 1);
find_start_voltage_ref_rse_out_vec_1            = find(datetime(voltage_ref_rse_out_vec(:,2), 'ConvertFrom', ...
    'posixtime') >= shift_1_start, 1);
find_start_frequency_ref_rse_out_vec_1          = find(datetime(frequency_ref_rse_out_vec(:,2), 'ConvertFrom', ...
    'posixtime') >= shift_1_start, 1);
find_start_rse_chp_m_ea_watt_vec_1              = find(datetime(rse_chp_m_ea_watt_vec(:,2), 'ConvertFrom', ...
    'posixtime') >= shift_1_start, 1);

% ENDING TIME
find_end_active_power_el_sin_out_vec_1        = find(datetime(active_power_el_sin_out_vec(:,2), 'ConvertFrom', ...
    'posixtime') >= shift_1_end, 1);
find_end_reactive_power_el_sin_out_vec_1      = find(datetime(reactive_power_el_sin_out_vec(:,2), 'ConvertFrom', ...
    'posixtime') >= shift_1_end, 1);
find_end_active_power_ref_el_sin_out_vec_1    = find(datetime(active_power_ref_el_sin_out_vec(:,2), 'ConvertFrom', ...
    'posixtime') >= shift_1_end, 1);
find_end_reactive_power_ref_el_sin_out_vec_1  = find(datetime(reactive_power_ref_el_sin_out_vec(:,2), 'ConvertFrom', ...
    'posixtime') >= shift_1_end, 1);
find_end_soc_sin_vec_1                        = find(datetime(soc_sin_vec(:,2), 'ConvertFrom', ...
    'posixtime') >= shift_1_end, 1);
find_end_voltage_ref_sin_out_vec_1            = find(datetime(voltage_ref_sin_out_vec(:,2), 'ConvertFrom', ...
    'posixtime') >= shift_1_end, 1);
find_end_frequency_ref_sin_out_vec_1          = find(datetime(frequency_ref_sin_out_vec(:,2), 'ConvertFrom', ...
    'posixtime') >= shift_1_end, 1);
find_end_active_power_el_rse_out_vec_1        = find(datetime(active_power_el_rse_out_vec(:,2), 'ConvertFrom', ...
    'posixtime') >= shift_1_end, 1);
find_end_reactive_power_el_rse_out_vec_1      = find(datetime(reactive_power_el_rse_out_vec(:,2), 'ConvertFrom', ...
    'posixtime') >= shift_1_end, 1);
find_end_voltage_ref_rse_out_vec_1            = find(datetime(voltage_ref_rse_out_vec(:,2), 'ConvertFrom', ...
    'posixtime') >= shift_1_end, 1);
find_end_frequency_ref_rse_out_vec_1          = find(datetime(frequency_ref_rse_out_vec(:,2), 'ConvertFrom', ...
    'posixtime') >= shift_1_end, 1);
find_end_rse_chp_m_ea_watt_vec_1              = find(datetime(rse_chp_m_ea_watt_vec(:,2), 'ConvertFrom', ...
    'posixtime') >= shift_1_end, 1);

% Excluding some signals from the scenario SELECTION_SWITCH = 2 (Experiments December 14-15, 2023)
if selection_switch == 2 && selection_scenario ~= 1 && selection_scenario ~= 2 && selection_scenario ~= 3 ...
        && selection_scenario ~= 4
    % STARTING TIME
    find_start_cres_temperature1_m_ea_celsius_vec_1  = find(datetime(cres_temperature1_m_ea_celsius_vec(:,2), 'ConvertFrom', ...
        'posixtime') >= shift_1_start, 1);
    find_start_cres_temperature2_m_ea_celsisus_vec_1 = find(datetime(cres_temperature2_m_ea_celsisus_vec(:,2), 'ConvertFrom', ...
        'posixtime') >= shift_1_start, 1);
    find_start_cres_temperature3_m_ea_celsius_vec_1  = find(datetime(cres_temperature3_m_ea_celsius_vec(:,2), 'ConvertFrom', ...
        'posixtime') >= shift_1_start, 1);
    
    % ENDING TIME
    find_end_cres_temperature1_m_ea_celsius_vec_1    = find(datetime(cres_temperature1_m_ea_celsius_vec(:,2), 'ConvertFrom', ...
        'posixtime') >= shift_1_end, 1);
    find_end_cres_temperature2_m_ea_celsisus_vec_1   = find(datetime(cres_temperature2_m_ea_celsisus_vec(:,2), 'ConvertFrom', ...
        'posixtime') >= shift_1_end, 1);
    find_end_cres_temperature3_m_ea_celsius_vec_1    = find(datetime(cres_temperature3_m_ea_celsius_vec(:,2), 'ConvertFrom', ...
        'posixtime') >= shift_1_end, 1);
end

% Excluding some signals generated only in the SELECTION_SWITCH = 4 (Experiments Januar 26, 2024)
if selection_switch == 4 && selection_scenario ~= 1 && selection_scenario ~= 2 
    % Frequency and voltage at the connection point SINTEF - STARTING TIME
    find_start_frequency_rse_pcc_vec_1  = find(datetime(frequency_rse_pcc_vec(:,2), 'ConvertFrom', ...
        'posixtime') >= shift_1_start, 1);
    find_start_voltage_rse_pcc_vec_1    = find(datetime(voltage_rse_pcc_vec(:,2), 'ConvertFrom', ...
        'posixtime') >= shift_1_start, 1);
    
    % ENDING TIME
    find_end_frequency_rse_pcc_vec_1    = find(datetime(frequency_rse_pcc_vec(:,2), 'ConvertFrom', ...
        'posixtime') >= shift_1_end, 1);
    find_end_voltage_rse_pcc_vec_1      = find(datetime(voltage_rse_pcc_vec(:,2), 'ConvertFrom', ...
        'posixtime') >= shift_1_end, 1);
    
    % STARTING TIME
    find_start_frequency_sin_pcc_vec_1  = find(datetime(frequency_sin_pcc_vec(:,2), 'ConvertFrom', ...
        'posixtime') >= shift_1_start, 1);
    find_start_voltage_sin_pcc_vec_1    = find(datetime(voltage_sin_pcc_vec(:,2), 'ConvertFrom', ...
        'posixtime') >= shift_1_start, 1);
    
    % ENDING TIME
    find_end_frequency_sin_pcc_vec_1    = find(datetime(frequency_sin_pcc_vec(:,2), 'ConvertFrom', ...
        'posixtime') >= shift_1_end, 1);
    find_end_voltage_sin_pcc_vec_1      = find(datetime(voltage_sin_pcc_vec(:,2), 'ConvertFrom', ...
        'posixtime') >= shift_1_end, 1);
    
    % Reactive and active power measured at RSE - STARTING TIME
    find_start_active_power_el_gf_mes_vec_1     = find(datetime(active_power_el_gf_mes_vec(:,2), 'ConvertFrom', ...
        'posixtime') >= shift_1_start, 1);
    find_start_reactive_power_el_gf_mes_vec_1   = find(datetime(reactive_power_el_gf_mes_vec(:,2), 'ConvertFrom', ...
        'posixtime') >= shift_1_start, 1);
    find_start_active_power_el_chp_mes_vec_1    = find(datetime(active_power_el_chp_mes_vec(:,2), 'ConvertFrom', ...
        'posixtime') >= shift_1_start, 1);
    find_start_reactive_power_el_chp_mes_vec_1  = find(datetime(reactive_power_el_chp_mes_vec(:,2), 'ConvertFrom', ...
        'posixtime') >= shift_1_start, 1);
    
    % ENDING TIME
    find_end_active_power_el_gf_mes_vec_1       = find(datetime(active_power_el_gf_mes_vec(:,2), 'ConvertFrom', ...
        'posixtime') >= shift_1_end, 1);
    find_end_reactive_power_el_gf_mes_vec_1     = find(datetime(reactive_power_el_gf_mes_vec(:,2), 'ConvertFrom', ...
        'posixtime') >= shift_1_end, 1);
    find_end_active_power_el_chp_mes_vec_1      = find(datetime(active_power_el_chp_mes_vec(:,2), 'ConvertFrom', ...
        'posixtime') >= shift_1_end, 1);
    find_end_reactive_power_el_chp_mes_vec_1    = find(datetime(reactive_power_el_chp_mes_vec(:,2), 'ConvertFrom', ...
        'posixtime') >= shift_1_end, 1);

    % STARTING TIME
    find_start_cres_temperature1_m_ea_celsius_vec_1  = find(datetime(cres_temperature1_m_ea_celsius_vec(:,2), 'ConvertFrom', ...
        'posixtime') >= shift_1_start, 1);
    find_start_cres_temperature2_m_ea_celsisus_vec_1 = find(datetime(cres_temperature2_m_ea_celsisus_vec(:,2), 'ConvertFrom', ...
        'posixtime') >= shift_1_start, 1);
    find_start_cres_temperature3_m_ea_celsius_vec_1  = find(datetime(cres_temperature3_m_ea_celsius_vec(:,2), 'ConvertFrom', ...
        'posixtime') >= shift_1_start, 1);
    
    % ENDING TIME
    find_end_cres_temperature1_m_ea_celsius_vec_1    = find(datetime(cres_temperature1_m_ea_celsius_vec(:,2), 'ConvertFrom', ...
        'posixtime') >= shift_1_end, 1);
    find_end_cres_temperature2_m_ea_celsisus_vec_1   = find(datetime(cres_temperature2_m_ea_celsisus_vec(:,2), 'ConvertFrom', ...
        'posixtime') >= shift_1_end, 1);
    find_end_cres_temperature3_m_ea_celsius_vec_1    = find(datetime(cres_temperature3_m_ea_celsius_vec(:,2), 'ConvertFrom', ...
        'posixtime') >= shift_1_end, 1);
end

find_start_cres_heat_pump_m_ea_kiloWatts_vec_1    = find(datetime(cres_heat_pump_m_ea_kiloWatts_vec(:,2), 'ConvertFrom', ...
        'posixtime') >= shift_1_start, 1);
find_start_th_temp_0_dtu_vec_1                    = find(datetime(th_temp_0_dtu_vec(:,2), 'ConvertFrom', ...
        'posixtime') >= shift_1_start, 1);
find_start_th_flow_1_dtu_vec_1                    = find(datetime(th_flow_1_dtu_vec(:,2), 'ConvertFrom', ...
        'posixtime') >= shift_1_start, 1);
find_start_th_fwd_1_dtu_vec_1                     = find(datetime(th_fwd_1_dtu_vec(:,2), 'ConvertFrom', ...
        'posixtime') >= shift_1_start, 1);
find_start_th_ret_1_dtu_vec_1                     = find(datetime(th_ret_1_dtu_vec(:,2), 'ConvertFrom', ...
        'posixtime') >= shift_1_start, 1);
find_start_th_fwd_2_dtu_vec_1                     = find(datetime(th_fwd_2_dtu_vec(:,2), 'ConvertFrom', ...
        'posixtime') >= shift_1_start, 1);
find_start_th_ret_2_dtu_vec_1                     = find(datetime(th_ret_2_dtu_vec(:,2), 'ConvertFrom', ...
        'posixtime') >= shift_1_start, 1);
find_start_th_fwd_3_dtu_vec_1                     = find(datetime(th_fwd_3_dtu_vec(:,2), 'ConvertFrom', ...
        'posixtime') >= shift_1_start, 1);
find_start_th_ret_3_dtu_vec_1                     = find(datetime(th_ret_3_dtu_vec(:,2), 'ConvertFrom', ...
        'posixtime') >= shift_1_start, 1);
find_start_thermal_load_dtu_vec_1                 = find(datetime(thermal_load_dtu_vec(:,2), 'ConvertFrom', ...
        'posixtime') >= shift_1_start, 1);
find_start_thermal_source_dtu_vec_1               = find(datetime(thermal_source_dtu_vec(:,2), 'ConvertFrom', ...
        'posixtime') >= shift_1_start, 1);
find_start_chp_heat_out_rse_vec_1                 = find(datetime(chp_heat_out_rse_vec(:,2), 'ConvertFrom', ...
        'posixtime') >= shift_1_start, 1);
find_start_active_power_chp_rse_vec_1             = find(datetime(active_power_chp_rse_vec(:,2), 'ConvertFrom', ...
        'posixtime') >= shift_1_start, 1);

% ENDING TIME
find_end_cres_heat_pump_m_ea_kiloWatts_vec_1      = find(datetime(cres_heat_pump_m_ea_kiloWatts_vec(:,2), 'ConvertFrom', ...
        'posixtime') >= shift_1_end, 1);
find_end_th_temp_0_dtu_vec_1                      = find(datetime(th_temp_0_dtu_vec(:,2), 'ConvertFrom', ...
        'posixtime') >= shift_1_end, 1);
find_end_th_flow_1_dtu_vec_1                      = find(datetime(th_flow_1_dtu_vec(:,2), 'ConvertFrom', ...
        'posixtime') >= shift_1_end, 1);
find_end_th_fwd_1_dtu_vec_1                       = find(datetime(th_fwd_1_dtu_vec(:,2), 'ConvertFrom', ...
        'posixtime') >= shift_1_end, 1);
find_end_th_ret_1_dtu_vec_1                       = find(datetime(th_ret_1_dtu_vec(:,2), 'ConvertFrom', ...
        'posixtime') >= shift_1_end, 1);
find_end_th_fwd_2_dtu_vec_1                       = find(datetime(th_fwd_2_dtu_vec(:,2), 'ConvertFrom', ...
        'posixtime') >= shift_1_end, 1);
find_end_th_ret_2_dtu_vec_1                       = find(datetime(th_ret_2_dtu_vec(:,2), 'ConvertFrom', ...
        'posixtime') >= shift_1_end, 1);
find_end_th_fwd_3_dtu_vec_1                       = find(datetime(th_fwd_3_dtu_vec(:,2), 'ConvertFrom', ...
        'posixtime') >= shift_1_end, 1);
find_end_th_ret_3_dtu_vec_1                       = find(datetime(th_ret_3_dtu_vec(:,2), 'ConvertFrom', ...
        'posixtime') >= shift_1_end, 1);
find_end_thermal_load_dtu_vec_1                   = find(datetime(thermal_load_dtu_vec(:,2), 'ConvertFrom', ...
        'posixtime') >= shift_1_end, 1);
find_end_thermal_source_dtu_vec_1                 = find(datetime(thermal_source_dtu_vec(:,2), 'ConvertFrom', ...
        'posixtime') >= shift_1_end, 1);
find_end_chp_heat_out_rse_vec_1                   = find(datetime(chp_heat_out_rse_vec(:,2), 'ConvertFrom', ...
        'posixtime') >= shift_1_end, 1);
find_end_active_power_chp_rse_vec_1               = find(datetime(active_power_chp_rse_vec(:,2), 'ConvertFrom', ...
        'posixtime') >= shift_1_end, 1);
    
%%%%%%%%% FINDING Time second experimental trial (Overvoltage scenario) - SELECTION_SWITH = 2 (Experiments December 14-15,   %%%%%%%%% 
%%%%%%%%% 2023) - SELECTION_SWITH = 4 (Experiments January 26, 2024)                                                               %%%%%%%%%
if (selection_switch == 2 || selection_switch == 4 ) && selection_scenario == 1 || selection_scenario == 2
    % STARTING TIME
    find_start_active_power_el_sin_out_vec_2        = find(datetime(active_power_el_sin_out_vec(:,2), 'ConvertFrom', ...
        'posixtime') >= shift_2_start, 1);
    find_start_reactive_power_el_sin_out_vec_2      = find(datetime(reactive_power_el_sin_out_vec(:,2), 'ConvertFrom', ...
        'posixtime') >= shift_2_start, 1);
    find_start_active_power_ref_el_sin_out_vec_2    = find(datetime(active_power_ref_el_sin_out_vec(:,2), 'ConvertFrom', ...
        'posixtime') >= shift_2_start, 1);
    find_start_reactive_power_ref_el_sin_out_vec_2  = find(datetime(reactive_power_ref_el_sin_out_vec(:,2), 'ConvertFrom', ...
        'posixtime') >= shift_2_start, 1);
    find_start_soc_sin_vec_2                        = find(datetime(soc_sin_vec(:,2), 'ConvertFrom', ...
        'posixtime') >= shift_2_start, 1);
    find_start_voltage_ref_sin_out_vec_2            = find(datetime(voltage_ref_sin_out_vec(:,2), 'ConvertFrom', ...
        'posixtime') >= shift_2_start, 1);
    find_start_frequency_ref_sin_out_vec_2          = find(datetime(frequency_ref_sin_out_vec(:,2), 'ConvertFrom', ...
        'posixtime') >= shift_2_start, 1);
    find_start_active_power_el_rse_out_vec_2        = find(datetime(active_power_el_rse_out_vec(:,2), 'ConvertFrom', ...
        'posixtime') >= shift_2_start, 1);
    find_start_reactive_power_el_rse_out_vec_2      = find(datetime(reactive_power_el_rse_out_vec(:,2), 'ConvertFrom', ...
        'posixtime') >= shift_2_start, 1);
    find_start_voltage_ref_rse_out_vec_2            = find(datetime(voltage_ref_rse_out_vec(:,2), 'ConvertFrom', ...
        'posixtime') >= shift_2_start, 1);
    find_start_frequency_ref_rse_out_vec_2          = find(datetime(frequency_ref_rse_out_vec(:,2), 'ConvertFrom', ...
        'posixtime') >= shift_2_start, 1);
    find_start_rse_chp_m_ea_watt_vec_2              = find(datetime(rse_chp_m_ea_watt_vec(:,2), 'ConvertFrom', ...
        'posixtime') >= shift_2_start, 1);

    % ENDING TIME
    find_end_active_power_el_sin_out_vec_2        = find(datetime(active_power_el_sin_out_vec(:,2), 'ConvertFrom', ...
        'posixtime') >= shift_2_end, 1);
    find_end_reactive_power_el_sin_out_vec_2      = find(datetime(reactive_power_el_sin_out_vec(:,2), 'ConvertFrom', ...
        'posixtime') >= shift_2_end, 1);
    find_end_active_power_ref_el_sin_out_vec_2    = find(datetime(active_power_ref_el_sin_out_vec(:,2), 'ConvertFrom', ...
        'posixtime') >= shift_2_end, 1);
    find_end_reactive_power_ref_el_sin_out_vec_2  = find(datetime(reactive_power_ref_el_sin_out_vec(:,2), 'ConvertFrom', ...
        'posixtime') >= shift_2_end, 1);
    find_end_soc_sin_vec_2                        = find(datetime(soc_sin_vec(:,2), 'ConvertFrom', ...
        'posixtime') >= shift_2_end, 1);
    find_end_voltage_ref_sin_out_vec_2            = find(datetime(voltage_ref_sin_out_vec(:,2), 'ConvertFrom', ...
        'posixtime') >= shift_2_end, 1);
    find_end_frequency_ref_sin_out_vec_2          = find(datetime(frequency_ref_sin_out_vec(:,2), 'ConvertFrom', ...
        'posixtime') >= shift_2_end, 1);
    find_end_active_power_el_rse_out_vec_2        = find(datetime(active_power_el_rse_out_vec(:,2), 'ConvertFrom', ...
        'posixtime') >= shift_2_end, 1);
    find_end_reactive_power_el_rse_out_vec_2      = find(datetime(reactive_power_el_rse_out_vec(:,2), 'ConvertFrom', ...
        'posixtime') >= shift_2_end, 1);
    find_end_voltage_ref_rse_out_vec_2            = find(datetime(voltage_ref_rse_out_vec(:,2), 'ConvertFrom', ...
        'posixtime') >= shift_2_end, 1);
    find_end_frequency_ref_rse_out_vec_2          = find(datetime(frequency_ref_rse_out_vec(:,2), 'ConvertFrom', ...
        'posixtime') >= shift_2_end, 1);
    find_end_rse_chp_m_ea_watt_vec_2              = find(datetime(rse_chp_m_ea_watt_vec(:,2), 'ConvertFrom', ...
        'posixtime') >= shift_2_end, 1);

    % Excluding some signals from the scenario SELECTION_SWITCH = 2 (Experiments December 14-15, 2023)
    if selection_switch == 2 && selection_scenario ~= 1 && selection_scenario ~= 2 && selection_scenario ~= 3 ...
            && selection_scenario ~= 4
        % STARTING TIME
        find_start_cres_temperature1_m_ea_celsius_vec_2  = find(datetime(cres_temperature1_m_ea_celsius_vec(:,2), 'ConvertFrom', ...
            'posixtime') >= shift_2_start, 1);
        find_start_cres_temperature2_m_ea_celsisus_vec_2 = find(datetime(cres_temperature2_m_ea_celsisus_vec(:,2), 'ConvertFrom', ...
            'posixtime') >= shift_2_start, 1);
        find_start_cres_temperature3_m_ea_celsius_vec_2  = find(datetime(cres_temperature3_m_ea_celsius_vec(:,2), 'ConvertFrom', ...
            'posixtime') >= shift_2_start, 1);

        % ENDING TIME
        find_end_cres_temperature1_m_ea_celsius_vec_2    = find(datetime(cres_temperature1_m_ea_celsius_vec(:,2), 'ConvertFrom', ...
            'posixtime') >= shift_2_end, 1);
        find_end_cres_temperature2_m_ea_celsisus_vec_2   = find(datetime(cres_temperature2_m_ea_celsisus_vec(:,2), 'ConvertFrom', ...
            'posixtime') >= shift_2_end, 1);
        find_end_cres_temperature3_m_ea_celsius_vec_2    = find(datetime(cres_temperature3_m_ea_celsius_vec(:,2), 'ConvertFrom', ...
            'posixtime') >= shift_2_end, 1);
    end

    % Excluding some signals generated only in the SELECTION_SWITCH = 4 (Experiments Januar 26, 2024)
    if selection_switch == 4 && selection_scenario ~= 1 && selection_scenario ~= 2 
        % Frequency and voltage at the connection point SINTEF - STARTING TIME
        find_start_frequency_rse_pcc_vec_2  = find(datetime(frequency_rse_pcc_vec(:,2), 'ConvertFrom', ...
            'posixtime') >= shift_2_start, 1);
        find_start_voltage_rse_pcc_vec_2    = find(datetime(voltage_rse_pcc_vec(:,2), 'ConvertFrom', ...
            'posixtime') >= shift_2_start, 1);

        % ENDING TIME
        find_end_frequency_rse_pcc_vec_2    = find(datetime(frequency_rse_pcc_vec(:,2), 'ConvertFrom', ...
            'posixtime') >= shift_2_end, 1);
        find_end_voltage_rse_pcc_vec_2      = find(datetime(voltage_rse_pcc_vec(:,2), 'ConvertFrom', ...
            'posixtime') >= shift_2_end, 1);

        % STARTING TIME
        find_start_frequency_sin_pcc_vec_2  = find(datetime(frequency_sin_pcc_vec(:,2), 'ConvertFrom', ...
            'posixtime') >= shift_2_start, 1);
        find_start_voltage_sin_pcc_vec_2    = find(datetime(voltage_sin_pcc_vec(:,2), 'ConvertFrom', ...
            'posixtime') >= shift_2_start, 1);

        % ENDING TIME
        find_end_frequency_sin_pcc_vec_2    = find(datetime(frequency_sin_pcc_vec(:,2), 'ConvertFrom', ...
            'posixtime') >= shift_2_end, 1);
        find_end_voltage_sin_pcc_vec_2      = find(datetime(voltage_sin_pcc_vec(:,2), 'ConvertFrom', ...
            'posixtime') >= shift_2_end, 1);

        % Reactive and active power measured at RSE - STARTING TIME
        find_start_active_power_el_gf_mes_vec_2     = find(datetime(active_power_el_gf_mes_vec(:,2), 'ConvertFrom', ...
            'posixtime') >= shift_2_start, 1);
        find_start_reactive_power_el_gf_mes_vec_2   = find(datetime(reactive_power_el_gf_mes_vec(:,2), 'ConvertFrom', ...
            'posixtime') >= shift_2_start, 1);
        find_start_active_power_el_chp_mes_vec_2    = find(datetime(active_power_el_chp_mes_vec(:,2), 'ConvertFrom', ...
            'posixtime') >= shift_2_start, 1);
        find_start_reactive_power_el_chp_mes_vec_2  = find(datetime(reactive_power_el_chp_mes_vec(:,2), 'ConvertFrom', ...
            'posixtime') >= shift_2_start, 1);

        % ENDING TIME
        find_end_active_power_el_gf_mes_vec_2       = find(datetime(active_power_el_gf_mes_vec(:,2), 'ConvertFrom', ...
            'posixtime') >= shift_2_end, 1);
        find_end_reactive_power_el_gf_mes_vec_2     = find(datetime(reactive_power_el_gf_mes_vec(:,2), 'ConvertFrom', ...
            'posixtime') >= shift_2_end, 1);
        find_end_active_power_el_chp_mes_vec_2      = find(datetime(active_power_el_chp_mes_vec(:,2), 'ConvertFrom', ...
            'posixtime') >= shift_2_end, 1);
        find_end_reactive_power_el_chp_mes_vec_2    = find(datetime(reactive_power_el_chp_mes_vec(:,2), 'ConvertFrom', ...
            'posixtime') >= shift_2_end, 1);

        % STARTING TIME
        find_start_cres_temperature1_m_ea_celsius_vec_2  = find(datetime(cres_temperature1_m_ea_celsius_vec(:,2), 'ConvertFrom', ...
            'posixtime') >= shift_2_start, 1);
        find_start_cres_temperature2_m_ea_celsisus_vec_2 = find(datetime(cres_temperature2_m_ea_celsisus_vec(:,2), 'ConvertFrom', ...
            'posixtime') >= shift_2_start, 1);
        find_start_cres_temperature3_m_ea_celsius_vec_2  = find(datetime(cres_temperature3_m_ea_celsius_vec(:,2), 'ConvertFrom', ...
            'posixtime') >= shift_2_start, 1);

        % ENDING TIME
        find_end_cres_temperature1_m_ea_celsius_vec_2    = find(datetime(cres_temperature1_m_ea_celsius_vec(:,2), 'ConvertFrom', ...
            'posixtime') >= shift_2_end, 1);
        find_end_cres_temperature2_m_ea_celsisus_vec_2   = find(datetime(cres_temperature2_m_ea_celsisus_vec(:,2), 'ConvertFrom', ...
            'posixtime') >= shift_2_end, 1);
        find_end_cres_temperature3_m_ea_celsius_vec_2    = find(datetime(cres_temperature3_m_ea_celsius_vec(:,2), 'ConvertFrom', ...
            'posixtime') >= shift_2_end, 1);
    end

    find_start_cres_heat_pump_m_ea_kiloWatts_vec_2    = find(datetime(cres_heat_pump_m_ea_kiloWatts_vec(:,2), 'ConvertFrom', ...
            'posixtime') >= shift_2_start, 1);
    find_start_th_temp_0_dtu_vec_2                    = find(datetime(th_temp_0_dtu_vec(:,2), 'ConvertFrom', ...
            'posixtime') >= shift_2_start, 1);
    find_start_th_flow_1_dtu_vec_2                    = find(datetime(th_flow_1_dtu_vec(:,2), 'ConvertFrom', ...
            'posixtime') >= shift_2_start, 1);
    find_start_th_fwd_1_dtu_vec_2                     = find(datetime(th_fwd_1_dtu_vec(:,2), 'ConvertFrom', ...
            'posixtime') >= shift_2_start, 1);
    find_start_th_ret_1_dtu_vec_2                     = find(datetime(th_ret_1_dtu_vec(:,2), 'ConvertFrom', ...
            'posixtime') >= shift_2_start, 1);
    find_start_th_fwd_2_dtu_vec_2                     = find(datetime(th_fwd_2_dtu_vec(:,2), 'ConvertFrom', ...
            'posixtime') >= shift_2_start, 1);
    find_start_th_ret_2_dtu_vec_2                     = find(datetime(th_ret_2_dtu_vec(:,2), 'ConvertFrom', ...
            'posixtime') >= shift_2_start, 1);
    find_start_th_fwd_3_dtu_vec_2                     = find(datetime(th_fwd_3_dtu_vec(:,2), 'ConvertFrom', ...
            'posixtime') >= shift_2_start, 1);
    find_start_th_ret_3_dtu_vec_2                     = find(datetime(th_ret_3_dtu_vec(:,2), 'ConvertFrom', ...
            'posixtime') >= shift_2_start, 1);
    find_start_thermal_load_dtu_vec_2                 = find(datetime(thermal_load_dtu_vec(:,2), 'ConvertFrom', ...
            'posixtime') >= shift_2_start, 1);
    find_start_thermal_source_dtu_vec_2               = find(datetime(thermal_source_dtu_vec(:,2), 'ConvertFrom', ...
            'posixtime') >= shift_2_start, 1);
    find_start_chp_heat_out_rse_vec_2                 = find(datetime(chp_heat_out_rse_vec(:,2), 'ConvertFrom', ...
            'posixtime') >= shift_2_start, 1);
    find_start_active_power_chp_rse_vec_2             = find(datetime(active_power_chp_rse_vec(:,2), 'ConvertFrom', ...
            'posixtime') >= shift_2_start, 1);

    % ENDING TIME
    find_end_cres_heat_pump_m_ea_kiloWatts_vec_2      = find(datetime(cres_heat_pump_m_ea_kiloWatts_vec(:,2), 'ConvertFrom', ...
            'posixtime') >= shift_2_end, 1);
    find_end_th_temp_0_dtu_vec_2                      = find(datetime(th_temp_0_dtu_vec(:,2), 'ConvertFrom', ...
            'posixtime') >= shift_2_end, 1);
    find_end_th_flow_1_dtu_vec_2                      = find(datetime(th_flow_1_dtu_vec(:,2), 'ConvertFrom', ...
            'posixtime') >= shift_2_end, 1);
    find_end_th_fwd_1_dtu_vec_2                       = find(datetime(th_fwd_1_dtu_vec(:,2), 'ConvertFrom', ...
            'posixtime') >= shift_2_end, 1);
    find_end_th_ret_1_dtu_vec_2                       = find(datetime(th_ret_1_dtu_vec(:,2), 'ConvertFrom', ...
            'posixtime') >= shift_2_end, 1);
    find_end_th_fwd_2_dtu_vec_2                       = find(datetime(th_fwd_2_dtu_vec(:,2), 'ConvertFrom', ...
            'posixtime') >= shift_2_end, 1);
    find_end_th_ret_2_dtu_vec_2                       = find(datetime(th_ret_2_dtu_vec(:,2), 'ConvertFrom', ...
            'posixtime') >= shift_2_end, 1);
    find_end_th_fwd_3_dtu_vec_2                       = find(datetime(th_fwd_3_dtu_vec(:,2), 'ConvertFrom', ...
            'posixtime') >= shift_2_end, 1);
    find_end_th_ret_3_dtu_vec_2                       = find(datetime(th_ret_3_dtu_vec(:,2), 'ConvertFrom', ...
            'posixtime') >= shift_2_end, 1);
    find_end_thermal_load_dtu_vec_2                   = find(datetime(thermal_load_dtu_vec(:,2), 'ConvertFrom', ...
            'posixtime') >= shift_2_end, 1);
    find_end_thermal_source_dtu_vec_2                 = find(datetime(thermal_source_dtu_vec(:,2), 'ConvertFrom', ...
            'posixtime') >= shift_2_end, 1);
    find_end_chp_heat_out_rse_vec_2                   = find(datetime(chp_heat_out_rse_vec(:,2), 'ConvertFrom', ...
            'posixtime') >= shift_2_end, 1);
    find_end_active_power_chp_rse_vec_2               = find(datetime(active_power_chp_rse_vec(:,2), 'ConvertFrom', ...
            'posixtime') >= shift_2_end, 1);
    
end
%% SHIFTING - Shifting first experiment trial
active_power_el_sin_out_vec_shifted_1         = active_power_el_sin_out_vec(find_start_active_power_el_sin_out_vec_1 : ...
    find_end_active_power_el_sin_out_vec_1, :);
reactive_power_el_sin_out_vec_shifted_1       = reactive_power_el_sin_out_vec(find_start_reactive_power_el_sin_out_vec_1 : ...
    find_end_reactive_power_el_sin_out_vec_1, :);
active_power_ref_el_sin_out_vec_shifted_1     = active_power_ref_el_sin_out_vec(find_start_active_power_ref_el_sin_out_vec_1 : ...
    find_end_active_power_ref_el_sin_out_vec_1, :);
reactive_power_ref_el_sin_out_vec_shifted_1   = reactive_power_ref_el_sin_out_vec(find_start_reactive_power_ref_el_sin_out_vec_1 : ...
    find_end_reactive_power_ref_el_sin_out_vec_1, :);
soc_sin_vec_shifted_1                         = soc_sin_vec(find_start_soc_sin_vec_1 : ...
    find_end_soc_sin_vec_1, :);
voltage_ref_sin_out_vec_shifted_1             = voltage_ref_sin_out_vec(find_start_voltage_ref_sin_out_vec_1 : ...
    find_end_voltage_ref_sin_out_vec_1, :);
frequency_ref_sin_out_vec_shifted_1           = frequency_ref_sin_out_vec(find_start_frequency_ref_sin_out_vec_1 : ...
    find_end_frequency_ref_sin_out_vec_1, :);
active_power_el_rse_out_vec_shifted_1         = active_power_el_rse_out_vec(find_start_active_power_el_rse_out_vec_1 : ...
    find_end_active_power_el_rse_out_vec_1, :);
reactive_power_el_rse_out_vec_shifted_1       = reactive_power_el_rse_out_vec(find_start_reactive_power_el_rse_out_vec_1 : ...
    find_end_reactive_power_el_rse_out_vec_1, :);
voltage_ref_rse_out_vec_shifted_1             = voltage_ref_rse_out_vec(find_start_voltage_ref_rse_out_vec_1 : ...
    find_end_voltage_ref_rse_out_vec_1, :);
frequency_ref_rse_out_vec_shifted_1           = frequency_ref_rse_out_vec(find_start_frequency_ref_rse_out_vec_1 : ...
    find_end_frequency_ref_rse_out_vec_1, :);
rse_chp_m_ea_watt_vec_shifted_1               = rse_chp_m_ea_watt_vec(find_start_rse_chp_m_ea_watt_vec_1 : ...
    find_end_rse_chp_m_ea_watt_vec_1, :);

% Excluding some signals from the scenario SELECTION_SWITCH = 2 (Experiments December 14-15, 2023)
if selection_switch == 2 && selection_scenario ~= 1 && selection_scenario ~= 2 && selection_scenario ~= 3 ...
        && selection_scenario ~= 4
    cres_temperature1_m_ea_celsius_vec_shifted_1  = cres_temperature1_m_ea_celsius_vec(find_start_cres_temperature1_m_ea_celsius_vec_1 : ...
        find_end_cres_temperature1_m_ea_celsius_vec_1, :);
    cres_temperature2_m_ea_celsisus_vec_shifted_1 = cres_temperature2_m_ea_celsisus_vec(find_start_cres_temperature2_m_ea_celsisus_vec_1 : ...
        find_end_cres_temperature2_m_ea_celsisus_vec_1, :);
    cres_temperature3_m_ea_celsius_vec_shifted_1  = cres_temperature3_m_ea_celsius_vec(find_start_cres_temperature3_m_ea_celsius_vec_1 : ...
        find_end_cres_temperature3_m_ea_celsius_vec_1, :);
end

% Excluding some signals generated only in the SELECTION_SWITCH = 4 (Experiments Januar 26, 2024)
if selection_switch == 4 && selection_scenario ~= 1 && selection_scenario ~= 2 
    % Frequency and voltage at the connection point SINTEF
    frequency_rse_pcc_vec_shifted_1               = frequency_rse_pcc_vec(find_start_frequency_rse_pcc_vec_1 : ...
        find_end_frequency_rse_pcc_vec_1, :);
    voltage_rse_pcc_vec_shifted_1                 = voltage_rse_pcc_vec(find_start_voltage_rse_pcc_vec_1 : ...
        find_end_voltage_rse_pcc_vec_1, :);
    
    frequency_sin_pcc_vec_shifted_1               = frequency_sin_pcc_vec(find_start_frequency_sin_pcc_vec_1 : ...
        find_end_frequency_sin_pcc_vec_1, :);
    voltage_sin_pcc_vec_shifted_1                 = voltage_sin_pcc_vec(find_start_voltage_sin_pcc_vec_1 : ...
        find_end_voltage_sin_pcc_vec_1, :);
    
    % Reactive and active power measured at RSE
    active_power_el_gf_mes_vec_shifted_1          = active_power_el_gf_mes_vec(find_start_active_power_el_gf_mes_vec_1 : ...
        find_end_active_power_el_gf_mes_vec_1, :);
    reactive_power_el_gf_mes_vec_shifted_1        = reactive_power_el_gf_mes_vec(find_start_reactive_power_el_gf_mes_vec_1 : ...
        find_end_reactive_power_el_gf_mes_vec_1, :);
    active_power_el_chp_mes_vec_shifted_1         = active_power_el_chp_mes_vec(find_start_active_power_el_chp_mes_vec_1 : ...
        find_end_active_power_el_chp_mes_vec_1, :);
    reactive_power_el_chp_mes_vec_shifted_1       = reactive_power_el_chp_mes_vec(find_start_reactive_power_el_chp_mes_vec_1 : ...
        find_end_reactive_power_el_chp_mes_vec_1, :);

    cres_temperature1_m_ea_celsius_vec_shifted_1  = cres_temperature1_m_ea_celsius_vec(find_start_cres_temperature1_m_ea_celsius_vec_1 : ...
        find_end_cres_temperature1_m_ea_celsius_vec_1, :);
    cres_temperature2_m_ea_celsisus_vec_shifted_1 = cres_temperature2_m_ea_celsisus_vec(find_start_cres_temperature2_m_ea_celsisus_vec_1 : ...
        find_end_cres_temperature2_m_ea_celsisus_vec_1, :);
    cres_temperature3_m_ea_celsius_vec_shifted_1  = cres_temperature3_m_ea_celsius_vec(find_start_cres_temperature3_m_ea_celsius_vec_1 : ...
        find_end_cres_temperature3_m_ea_celsius_vec_1, :);
end

cres_heat_pump_m_ea_kiloWatts_vec_shifted_1   = cres_heat_pump_m_ea_kiloWatts_vec(find_start_cres_heat_pump_m_ea_kiloWatts_vec_1 : ...
    find_end_cres_heat_pump_m_ea_kiloWatts_vec_1, :);
th_temp_0_dtu_vec_shifted_1                   = th_temp_0_dtu_vec(find_start_th_temp_0_dtu_vec_1 : ...
    find_end_th_temp_0_dtu_vec_1, :);
th_flow_1_dtu_vec_shifted_1                   = th_flow_1_dtu_vec(find_start_th_flow_1_dtu_vec_1 : ...
    find_end_th_flow_1_dtu_vec_1, :);
th_fwd_1_dtu_vec_shifted_1                    = th_fwd_1_dtu_vec(find_start_th_fwd_1_dtu_vec_1 : ...
    find_end_th_fwd_1_dtu_vec_1, :);
th_ret_1_dtu_vec_shifted_1                    = th_ret_1_dtu_vec(find_start_th_ret_1_dtu_vec_1 : ...
    find_end_th_ret_1_dtu_vec_1, :);
th_fwd_2_dtu_vec_shifted_1                    = th_fwd_2_dtu_vec(find_start_th_fwd_2_dtu_vec_1 : ...
    find_end_th_fwd_2_dtu_vec_1, :);
th_ret_2_dtu_vec_shifted_1                    = th_ret_2_dtu_vec(find_start_th_ret_2_dtu_vec_1 : ...
    find_end_th_ret_2_dtu_vec_1, :);
th_fwd_3_dtu_vec_shifted_1                    = th_fwd_3_dtu_vec(find_start_th_fwd_3_dtu_vec_1 : ...
    find_end_th_fwd_3_dtu_vec_1, :);
th_ret_3_dtu_vec_shifted_1                    = th_ret_3_dtu_vec(find_start_th_ret_3_dtu_vec_1 : ...
    find_end_th_ret_3_dtu_vec_1, :);
thermal_load_dtu_vec_shifted_1                = thermal_load_dtu_vec(find_start_thermal_load_dtu_vec_1 : ...
    find_end_thermal_load_dtu_vec_1, :);
thermal_source_dtu_vec_shifted_1              = thermal_source_dtu_vec(find_start_thermal_source_dtu_vec_1 : ...
    find_end_thermal_source_dtu_vec_1, :);
chp_heat_out_rse_vec_shifted_1                = chp_heat_out_rse_vec(find_start_chp_heat_out_rse_vec_1 : ...
    find_end_chp_heat_out_rse_vec_1, :);
active_power_chp_rse_vec_shifted_1            = active_power_chp_rse_vec(find_start_active_power_chp_rse_vec_1 : ...
    find_end_active_power_chp_rse_vec_1, :);

%%%%%%%%% Shifting second experimental trial (Overvoltage scenario) - SELECTION_SWITH = 2 (Experiments December 14-15, 2023) %%%%%%%%%
%%%%%%%%% - SELECTION_SWITH = 4 (Experiments January 26, 2024)                                                               %%%%%%%%%
if (selection_switch == 2 || selection_switch == 4 ) && selection_scenario == 1 || selection_scenario == 2
    active_power_el_sin_out_vec_shifted_2         = active_power_el_sin_out_vec(find_start_active_power_el_sin_out_vec_2 : ...
        find_end_active_power_el_sin_out_vec_2, :);
    reactive_power_el_sin_out_vec_shifted_2       = reactive_power_el_sin_out_vec(find_start_reactive_power_el_sin_out_vec_2 : ...
        find_end_reactive_power_el_sin_out_vec_2, :);
    active_power_ref_el_sin_out_vec_shifted_2     = active_power_ref_el_sin_out_vec(find_start_active_power_ref_el_sin_out_vec_2 : ...
        find_end_active_power_ref_el_sin_out_vec_2, :);
    reactive_power_ref_el_sin_out_vec_shifted_2   = reactive_power_ref_el_sin_out_vec(find_start_reactive_power_ref_el_sin_out_vec_2 : ...
        find_end_reactive_power_ref_el_sin_out_vec_2, :);
    soc_sin_vec_shifted_2                         = soc_sin_vec(find_start_soc_sin_vec_2 : ...
        find_end_soc_sin_vec_2, :);
    voltage_ref_sin_out_vec_shifted_2             = voltage_ref_sin_out_vec(find_start_voltage_ref_sin_out_vec_2 : ...
        find_end_voltage_ref_sin_out_vec_2, :);
    frequency_ref_sin_out_vec_shifted_2           = frequency_ref_sin_out_vec(find_start_frequency_ref_sin_out_vec_2 : ...
        find_end_frequency_ref_sin_out_vec_2, :);
    active_power_el_rse_out_vec_shifted_2         = active_power_el_rse_out_vec(find_start_active_power_el_rse_out_vec_2 : ...
        find_end_active_power_el_rse_out_vec_2, :);
    reactive_power_el_rse_out_vec_shifted_2       = reactive_power_el_rse_out_vec(find_start_reactive_power_el_rse_out_vec_2 : ...
        find_end_reactive_power_el_rse_out_vec_2, :);
    voltage_ref_rse_out_vec_shifted_2             = voltage_ref_rse_out_vec(find_start_voltage_ref_rse_out_vec_2 : ...
        find_end_voltage_ref_rse_out_vec_2, :);
    frequency_ref_rse_out_vec_shifted_2           = frequency_ref_rse_out_vec(find_start_frequency_ref_rse_out_vec_2 : ...
        find_end_frequency_ref_rse_out_vec_2, :);
    rse_chp_m_ea_watt_vec_shifted_2               = rse_chp_m_ea_watt_vec(find_start_rse_chp_m_ea_watt_vec_2 : ...
        find_end_rse_chp_m_ea_watt_vec_2, :);

    % Excluding some signals from the scenario SELECTION_SWITCH = 2 (Experiments December 14-15, 2023)
    if selection_switch == 2 && selection_scenario ~= 1 && selection_scenario ~= 2 && selection_scenario ~= 3 ...
            && selection_scenario ~= 4
        cres_temperature1_m_ea_celsius_vec_shifted_2  = cres_temperature1_m_ea_celsius_vec(find_start_cres_temperature1_m_ea_celsius_vec_2 : ...
            find_end_cres_temperature1_m_ea_celsius_vec_2, :);
        cres_temperature2_m_ea_celsisus_vec_shifted_2 = cres_temperature2_m_ea_celsisus_vec(find_start_cres_temperature2_m_ea_celsisus_vec_2 : ...
            find_end_cres_temperature2_m_ea_celsisus_vec_2, :);
        cres_temperature3_m_ea_celsius_vec_shifted_2  = cres_temperature3_m_ea_celsius_vec(find_start_cres_temperature3_m_ea_celsius_vec_2 : ...
            find_end_cres_temperature3_m_ea_celsius_vec_2, :);
    end

    % Excluding some signals generated only in the SELECTION_SWITCH = 4 (Experiments Januar 26, 2024)
    if selection_switch == 4 && selection_scenario ~= 1 && selection_scenario ~= 2 
        % Frequency and voltage at the connection point SINTEF
        frequency_rse_pcc_vec_shifted_2               = frequency_rse_pcc_vec(find_start_frequency_rse_pcc_vec_2 : ...
            find_end_frequency_rse_pcc_vec_2, :);
        voltage_rse_pcc_vec_shifted_2                 = voltage_rse_pcc_vec(find_start_voltage_rse_pcc_vec_2 : ...
            find_end_voltage_rse_pcc_vec_2, :);

        frequency_sin_pcc_vec_shifted_2               = frequency_sin_pcc_vec(find_start_frequency_sin_pcc_vec_2 : ...
            find_end_frequency_sin_pcc_vec_2, :);
        voltage_sin_pcc_vec_shifted_2                 = voltage_sin_pcc_vec(find_start_voltage_sin_pcc_vec_2 : ...
            find_end_voltage_sin_pcc_vec_2, :);

        % Reactive and active power measured at RSE
        active_power_el_gf_mes_vec_shifted_2          = active_power_el_gf_mes_vec(find_start_active_power_el_gf_mes_vec_2 : ...
            find_end_active_power_el_gf_mes_vec_2, :);
        reactive_power_el_gf_mes_vec_shifted_2        = reactive_power_el_gf_mes_vec(find_start_reactive_power_el_gf_mes_vec_2 : ...
            find_end_reactive_power_el_gf_mes_vec_2, :);
        active_power_el_chp_mes_vec_shifted_2         = active_power_el_chp_mes_vec(find_start_active_power_el_chp_mes_vec_2 : ...
            find_end_active_power_el_chp_mes_vec_2, :);
        reactive_power_el_chp_mes_vec_shifted_2       = reactive_power_el_chp_mes_vec(find_start_reactive_power_el_chp_mes_vec_2 : ...
            find_end_reactive_power_el_chp_mes_vec_2, :);

        cres_temperature1_m_ea_celsius_vec_shifted_2  = cres_temperature1_m_ea_celsius_vec(find_start_cres_temperature1_m_ea_celsius_vec_2 : ...
            find_end_cres_temperature1_m_ea_celsius_vec_2, :);
        cres_temperature2_m_ea_celsisus_vec_shifted_2 = cres_temperature2_m_ea_celsisus_vec(find_start_cres_temperature2_m_ea_celsisus_vec_2 : ...
            find_end_cres_temperature2_m_ea_celsisus_vec_2, :);
        cres_temperature3_m_ea_celsius_vec_shifted_2  = cres_temperature3_m_ea_celsius_vec(find_start_cres_temperature3_m_ea_celsius_vec_2 : ...
            find_end_cres_temperature3_m_ea_celsius_vec_2, :);
    end

    cres_heat_pump_m_ea_kiloWatts_vec_shifted_2   = cres_heat_pump_m_ea_kiloWatts_vec(find_start_cres_heat_pump_m_ea_kiloWatts_vec_2 : ...
        find_end_cres_heat_pump_m_ea_kiloWatts_vec_2, :);
    th_temp_0_dtu_vec_shifted_2                   = th_temp_0_dtu_vec(find_start_th_temp_0_dtu_vec_2 : ...
        find_end_th_temp_0_dtu_vec_2, :);
    th_flow_1_dtu_vec_shifted_2                   = th_flow_1_dtu_vec(find_start_th_flow_1_dtu_vec_2 : ...
        find_end_th_flow_1_dtu_vec_2, :);
    th_fwd_1_dtu_vec_shifted_2                    = th_fwd_1_dtu_vec(find_start_th_fwd_1_dtu_vec_2 : ...
        find_end_th_fwd_1_dtu_vec_2, :);
    th_ret_1_dtu_vec_shifted_2                    = th_ret_1_dtu_vec(find_start_th_ret_1_dtu_vec_2 : ...
        find_end_th_ret_1_dtu_vec_2, :);
    th_fwd_2_dtu_vec_shifted_2                    = th_fwd_2_dtu_vec(find_start_th_fwd_2_dtu_vec_2 : ...
        find_end_th_fwd_2_dtu_vec_2, :);
    th_ret_2_dtu_vec_shifted_2                    = th_ret_2_dtu_vec(find_start_th_ret_2_dtu_vec_2 : ...
        find_end_th_ret_2_dtu_vec_2, :);
    th_fwd_3_dtu_vec_shifted_2                    = th_fwd_3_dtu_vec(find_start_th_fwd_3_dtu_vec_2 : ...
        find_end_th_fwd_3_dtu_vec_2, :);
    th_ret_3_dtu_vec_shifted_2                    = th_ret_3_dtu_vec(find_start_th_ret_3_dtu_vec_2 : ...
        find_end_th_ret_3_dtu_vec_2, :);
    thermal_load_dtu_vec_shifted_2                = thermal_load_dtu_vec(find_start_thermal_load_dtu_vec_2 : ...
        find_end_thermal_load_dtu_vec_2, :);
    thermal_source_dtu_vec_shifted_2              = thermal_source_dtu_vec(find_start_thermal_source_dtu_vec_2 : ...
        find_end_thermal_source_dtu_vec_2, :);
    chp_heat_out_rse_vec_shifted_2                = chp_heat_out_rse_vec(find_start_chp_heat_out_rse_vec_2 : ...
        find_end_chp_heat_out_rse_vec_2, :);
    active_power_chp_rse_vec_shifted_2            = active_power_chp_rse_vec(find_start_active_power_chp_rse_vec_2 : ...
        find_end_active_power_chp_rse_vec_2, :);
end

%%%%%%%%%%%%%%%%%%%%%%%%% SUBSAMPLING %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% SUBSAMPLING
active_power_el_sin_out_vec_downsample_1         = downsample(active_power_el_sin_out_vec_shifted_1, downsampling_value_1);
reactive_power_el_sin_out_vec_downsample_1       = downsample(reactive_power_el_sin_out_vec_shifted_1, downsampling_value_1);
active_power_ref_el_sin_out_vec_downsample_1     = downsample(active_power_ref_el_sin_out_vec_shifted_1, downsampling_value_1);
reactive_power_ref_el_sin_out_vec_downsample_1   = downsample(reactive_power_ref_el_sin_out_vec_shifted_1, downsampling_value_1);
soc_sin_vec_downsample_1                         = downsample(soc_sin_vec_shifted_1, downsampling_value_1);
voltage_ref_sin_out_vec_downsample_1             = downsample(voltage_ref_sin_out_vec_shifted_1, downsampling_value_1);
frequency_ref_sin_out_vec_downsample_1           = downsample(frequency_ref_sin_out_vec_shifted_1, downsampling_value_1);
active_power_el_rse_out_vec_downsample_1         = downsample(active_power_el_rse_out_vec_shifted_1, downsampling_value_1);
reactive_power_el_rse_out_vec_downsample_1       = downsample(reactive_power_el_rse_out_vec_shifted_1, downsampling_value_1);
voltage_ref_rse_out_vec_downsample_1             = downsample(voltage_ref_rse_out_vec_shifted_1, downsampling_value_1);
frequency_ref_rse_out_vec_downsample_1           = downsample(frequency_ref_rse_out_vec_shifted_1, downsampling_value_1);
rse_chp_m_ea_watt_vec_downsample_1               = downsample(rse_chp_m_ea_watt_vec_shifted_1, downsampling_value_1);

% Excluding some signals from the scenario only in the SELECTION_SWITCH = 2 (Experiments December 14-15, 2023)
if selection_switch == 2 && selection_scenario ~= 1 && selection_scenario ~= 2 && selection_scenario ~= 3 ...
        && selection_scenario ~= 4
    cres_temperature1_m_ea_celsius_vec_downsample_1  = ...
        downsample(cres_temperature1_m_ea_celsius_vec_shifted_1, downsampling_value_1);
    cres_temperature2_m_ea_celsisus_vec_downsample_1 = ...
        downsample(cres_temperature2_m_ea_celsisus_vec_shifted_1, downsampling_value_1);
    cres_temperature3_m_ea_celsius_vec_downsample_1  = ...
        downsample(cres_temperature3_m_ea_celsius_vec_shifted_1, downsampling_value_1);
end

% Excluding some signals from the scenario only in the SELECTION_SWITCH = 4 (Experiments January 26, 2024)
if selection_switch == 4 && selection_scenario ~= 1 && selection_scenario ~= 2 
    % Voltage and frequency at the connection point SINTEF
    voltage_rse_pcc_vec_shifted_1                 = downsample(voltage_rse_pcc_vec_shifted_1, downsampling_value_1);
    frequency_rse_pcc_vec_shifted_1               = downsample(frequency_rse_pcc_vec_shifted_1, downsampling_value_1);

    voltage_sin_pcc_vec_shifted_1                 = downsample(voltage_sin_pcc_vec_shifted_1, downsampling_value_1);
    frequency_sin_pcc_vec_shifted_1               = downsample(frequency_sin_pcc_vec_shifted_1, downsampling_value_1);
    
    % Reactive and active power measured at RSE
    active_power_el_gf_mes_vec_shifted_1          = downsample(active_power_el_gf_mes_vec_shifted_1, downsampling_value_1);
    reactive_power_el_gf_mes_vec_shifted_1        = downsample(reactive_power_el_gf_mes_vec_shifted_1, downsampling_value_1);
    active_power_el_chp_mes_vec_shifted_1         = downsample(active_power_el_chp_mes_vec_shifted_1, downsampling_value_1);
    reactive_power_el_chp_mes_vec_shifted_1       = downsample(reactive_power_el_chp_mes_vec_shifted_1, downsampling_value_1);
    
    cres_temperature1_m_ea_celsius_vec_downsample_1  = ...
        downsample(cres_temperature1_m_ea_celsius_vec_shifted_1, downsampling_value_1);
    cres_temperature2_m_ea_celsisus_vec_downsample_1 = ...
        downsample(cres_temperature2_m_ea_celsisus_vec_shifted_1, downsampling_value_1);
    cres_temperature3_m_ea_celsius_vec_downsample_1  = ...
        downsample(cres_temperature3_m_ea_celsius_vec_shifted_1, downsampling_value_1);
end

cres_heat_pump_m_ea_kiloWatts_vec_downsample_1   = downsample(cres_heat_pump_m_ea_kiloWatts_vec_shifted_1, downsampling_value_1);
th_temp_0_dtu_vec_downsample_1                   = downsample(th_temp_0_dtu_vec_shifted_1, downsampling_value_1);
th_flow_1_dtu_vec_downsample_1                   = downsample(th_flow_1_dtu_vec_shifted_1, downsampling_value_1);
th_fwd_1_dtu_vec_downsample_1                    = downsample(th_fwd_1_dtu_vec_shifted_1, downsampling_value_1);
th_ret_1_dtu_vec_downsample_1                    = downsample(th_ret_1_dtu_vec_shifted_1, downsampling_value_1);
th_fwd_2_dtu_vec_downsample_1                    = downsample(th_fwd_2_dtu_vec_shifted_1, downsampling_value_1);
th_ret_2_dtu_vec_downsample_1                    = downsample(th_ret_2_dtu_vec_shifted_1, downsampling_value_1);
th_fwd_3_dtu_vec_downsample_1                    = downsample(th_fwd_3_dtu_vec_shifted_1, downsampling_value_1);
th_ret_3_dtu_vec_downsample_1                    = downsample(th_ret_3_dtu_vec_shifted_1, downsampling_value_1);
thermal_load_dtu_vec_downsample_1                = downsample(thermal_load_dtu_vec_shifted_1, downsampling_value_1);
thermal_source_dtu_vec_downsample_1              = downsample(thermal_source_dtu_vec_shifted_1, downsampling_value_1);
chp_heat_out_rse_vec_downsample_1                = downsample(chp_heat_out_rse_vec_shifted_1, downsampling_value_1);
active_power_chp_rse_vec_downsample_1            = downsample(active_power_chp_rse_vec_shifted_1, downsampling_value_1);

%%%%%%%%% Shifting second experimental trial - SELECTION_SWITH = 2 (Experiments December 14-15, 2023) %%%%%%%%%
%%%%%%%%% - SELECTION_SWITH = 4 (Experiments January 26, 2024)                                        %%%%%%%%%
if (selection_switch == 2 || selection_switch == 4 ) && selection_scenario == 1 || selection_scenario == 2
    active_power_el_sin_out_vec_downsample_2         = downsample(active_power_el_sin_out_vec_shifted_2, downsampling_value_2);
    reactive_power_el_sin_out_vec_downsample_2       = downsample(reactive_power_el_sin_out_vec_shifted_2, downsampling_value_2);
    active_power_ref_el_sin_out_vec_downsample_2     = downsample(active_power_ref_el_sin_out_vec_shifted_2, downsampling_value_2);
    reactive_power_ref_el_sin_out_vec_downsample_2   = downsample(reactive_power_ref_el_sin_out_vec_shifted_2, downsampling_value_2);
    soc_sin_vec_downsample_2                         = downsample(soc_sin_vec_shifted_2, downsampling_value_2);
    voltage_ref_sin_out_vec_downsample_2             = downsample(voltage_ref_sin_out_vec_shifted_2, downsampling_value_2);
    frequency_ref_sin_out_vec_downsample_2           = downsample(frequency_ref_sin_out_vec_shifted_2, downsampling_value_2);
    active_power_el_rse_out_vec_downsample_2         = downsample(active_power_el_rse_out_vec_shifted_2, downsampling_value_2);
    reactive_power_el_rse_out_vec_downsample_2       = downsample(reactive_power_el_rse_out_vec_shifted_2, downsampling_value_2);
    voltage_ref_rse_out_vec_downsample_2             = downsample(voltage_ref_rse_out_vec_shifted_2, downsampling_value_2);
    frequency_ref_rse_out_vec_downsample_2           = downsample(frequency_ref_rse_out_vec_shifted_2, downsampling_value_2);
    rse_chp_m_ea_watt_vec_downsample_2               = downsample(rse_chp_m_ea_watt_vec_shifted_2, downsampling_value_2);

    % Excluding some signals from the scenario only in the SELECTION_SWITCH = 2 (Experiments December 14-15, 2023)
    if selection_scenario ~= 1 && selection_scenario ~= 2
        cres_temperature1_m_ea_celsius_vec_downsample_2  = ...
            downsample(cres_temperature1_m_ea_celsius_vec_shifted_2, downsampling_value_2);
        cres_temperature2_m_ea_celsisus_vec_downsample_2 = ...
            downsample(cres_temperature2_m_ea_celsisus_vec_shifted_2, downsampling_value_2);
        cres_temperature3_m_ea_celsius_vec_downsample_2  = ...
            downsample(cres_temperature3_m_ea_celsius_vec_shifted_2, downsampling_value_2);
    end
    
    % Excluding some signals from the scenario only in the SELECTION_SWITCH = 4 (Experiments January 26, 2024)
    if selection_switch == 4 && selection_scenario ~= 1 && selection_scenario ~= 2 
        % Voltage and frequency at the connection SINTEF (in case of
        % a second experiment trial)
        voltage_rse_pcc_vec_shifted_2                 = downsample(voltage_rse_pcc_vec_shifted_2, downsampling_value_2);
        frequency_rse_pcc_vec_shifted_2               = downsample(frequency_rse_pcc_vec_shifted_2, downsampling_value_2);
    
        voltage_sin_pcc_vec_shifted_2                 = downsample(voltage_sin_pcc_vec_shifted_2, downsampling_value_2);
        frequency_sin_pcc_vec_shifted_2               = downsample(frequency_sin_pcc_vec_shifted_2, downsampling_value_2);
        
        % Reactive and active power measured at RSE (in case of
        % a second experiment trial)
        active_power_el_gf_mes_vec_shifted_2          = downsample(active_power_el_gf_mes_vec_shifted_2, downsampling_value_2);
        reactive_power_el_gf_mes_vec_shifted_2        = downsample(reactive_power_el_gf_mes_vec_shifted_2, downsampling_value_2);
        active_power_el_chp_mes_vec_shifted_2         = downsample(active_power_el_chp_mes_vec_shifted_2, downsampling_value_2);
        reactive_power_el_chp_mes_vec_shifted_2       = downsample(reactive_power_el_chp_mes_vec_shifted_2, downsampling_value_2);

        cres_temperature1_m_ea_celsius_vec_downsample_2  = ...
            downsample(cres_temperature1_m_ea_celsius_vec_shifted_2, downsampling_value_2);
        cres_temperature2_m_ea_celsisus_vec_downsample_2 = ...
            downsample(cres_temperature2_m_ea_celsisus_vec_shifted_2, downsampling_value_2);
        cres_temperature3_m_ea_celsius_vec_downsample_2  = ...
            downsample(cres_temperature3_m_ea_celsius_vec_shifted_2, downsampling_value_2);
    end

    cres_heat_pump_m_ea_kiloWatts_vec_downsample_2   = downsample(cres_heat_pump_m_ea_kiloWatts_vec_shifted_2, downsampling_value_2);
    th_temp_0_dtu_vec_downsample_2                   = downsample(th_temp_0_dtu_vec_shifted_2, downsampling_value_2);
    th_flow_1_dtu_vec_downsample_2                   = downsample(th_flow_1_dtu_vec_shifted_2, downsampling_value_2);
    th_fwd_1_dtu_vec_downsample_2                    = downsample(th_fwd_1_dtu_vec_shifted_2, downsampling_value_2);
    th_ret_1_dtu_vec_downsample_2                    = downsample(th_ret_1_dtu_vec_shifted_2, downsampling_value_2);
    th_fwd_2_dtu_vec_downsample_2                    = downsample(th_fwd_2_dtu_vec_shifted_2, downsampling_value_2);
    th_ret_2_dtu_vec_downsample_2                    = downsample(th_ret_2_dtu_vec_shifted_2, downsampling_value_2);
    th_fwd_3_dtu_vec_downsample_2                    = downsample(th_fwd_3_dtu_vec_shifted_2, downsampling_value_2);
    th_ret_3_dtu_vec_downsample_2                    = downsample(th_ret_3_dtu_vec_shifted_2, downsampling_value_2);
    thermal_load_dtu_vec_downsample_2                = downsample(thermal_load_dtu_vec_shifted_2, downsampling_value_2);
    thermal_source_dtu_vec_downsample_2              = downsample(thermal_source_dtu_vec_shifted_2, downsampling_value_2);
    chp_heat_out_rse_vec_downsample_2                = downsample(chp_heat_out_rse_vec_shifted_2, downsampling_value_2);
    active_power_chp_rse_vec_downsample_2            = downsample(active_power_chp_rse_vec_shifted_2, downsampling_value_2);
end

%%%%%%%%%%%%%%%%%%%%%%%%% DATA SAVING %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% SAVE DOWNSAMPLED VECTORS

% The following code allow to convert the UTC time in  datatime MATLAB
% format. Such a format can be used for plotting the measurements
time_bias = datetime(active_power_el_sin_out_vec_downsample_1(1,2), 'ConvertFrom', 'posixtime');
time_vector = datetime(active_power_el_sin_out_vec_downsample_1(:,2), 'ConvertFrom', 'posixtime') - time_bias; 
data_active_power_el_sin_out_vec_downsample_1       = [time_vector, active_power_el_sin_out_vec_downsample_1(:,3)];

time_bias = datetime(reactive_power_el_sin_out_vec_downsample_1(1,2), 'ConvertFrom', 'posixtime');
time_vector = datetime(reactive_power_el_sin_out_vec_downsample_1(:,2), 'ConvertFrom', 'posixtime') - time_bias;
data_reactive_power_el_sin_out_vec_downsample_1     = [time_vector, reactive_power_el_sin_out_vec_downsample_1(:,3)];     

time_bias = datetime(active_power_ref_el_sin_out_vec_downsample_1(1,2), 'ConvertFrom', 'posixtime');
time_vector = datetime(active_power_ref_el_sin_out_vec_downsample_1(:,2), 'ConvertFrom', 'posixtime') - time_bias;
data_active_power_ref_el_sin_out_vec_downsample_1   = [time_vector, active_power_ref_el_sin_out_vec_downsample_1(:,3)];     

time_bias = datetime(reactive_power_ref_el_sin_out_vec_downsample_1(1,2), 'ConvertFrom', 'posixtime');
time_vector = datetime(reactive_power_ref_el_sin_out_vec_downsample_1(:,2), 'ConvertFrom', 'posixtime') - time_bias;
data_reactive_power_ref_el_sin_out_vec_downsample_1 = [time_vector, reactive_power_ref_el_sin_out_vec_downsample_1(:,3)];  

time_bias = datetime(soc_sin_vec_downsample_1(1,2), 'ConvertFrom', 'posixtime');
time_vector = datetime(soc_sin_vec_downsample_1(:,2), 'ConvertFrom', 'posixtime') - time_bias;
data_soc_sin_vec_downsample_1                       = [time_vector, soc_sin_vec_downsample_1(:,3)];                        

time_bias = datetime(voltage_ref_sin_out_vec_downsample_1(1,2), 'ConvertFrom', 'posixtime');
time_vector = datetime(voltage_ref_sin_out_vec_downsample_1(:,2), 'ConvertFrom', 'posixtime') - time_bias;
data_voltage_ref_sin_out_vec_downsample_1           = [time_vector, voltage_ref_sin_out_vec_downsample_1(:,3)];         

time_bias = datetime(frequency_ref_sin_out_vec_downsample_1(1,2), 'ConvertFrom', 'posixtime');
time_vector = datetime(frequency_ref_sin_out_vec_downsample_1(:,2), 'ConvertFrom', 'posixtime') - time_bias;
data_frequency_ref_sin_out_vec_downsample_1         = [time_vector, frequency_ref_sin_out_vec_downsample_1(:,3)];        

time_bias = datetime(active_power_el_rse_out_vec_downsample_1(1,2), 'ConvertFrom', 'posixtime');
time_vector = datetime(active_power_el_rse_out_vec_downsample_1(:,2), 'ConvertFrom', 'posixtime') - time_bias;
data_active_power_el_rse_out_vec_downsample_1       = [time_vector, active_power_el_rse_out_vec_downsample_1(:,3)];       

time_bias = datetime(reactive_power_el_rse_out_vec_downsample_1(1,2), 'ConvertFrom', 'posixtime');
time_vector = datetime(reactive_power_el_rse_out_vec_downsample_1(:,2), 'ConvertFrom', 'posixtime') - time_bias;
data_reactive_power_el_rse_out_vec_downsample_1     = [time_vector, reactive_power_el_rse_out_vec_downsample_1(:,3)];     

time_bias = datetime(voltage_ref_rse_out_vec_downsample_1(1,2), 'ConvertFrom', 'posixtime');
time_vector = datetime(voltage_ref_rse_out_vec_downsample_1(:,2), 'ConvertFrom', 'posixtime') - time_bias;
data_voltage_ref_rse_out_vec_downsample_1           = [time_vector, voltage_ref_rse_out_vec_downsample_1(:,3)];           

time_bias = datetime(frequency_ref_rse_out_vec_downsample_1(1,2), 'ConvertFrom', 'posixtime');
time_vector = datetime(frequency_ref_rse_out_vec_downsample_1(:,2), 'ConvertFrom', 'posixtime') - time_bias;
data_frequency_ref_rse_out_vec_downsample_1         = [time_vector, frequency_ref_rse_out_vec_downsample_1(:,3)];         

time_bias = datetime(rse_chp_m_ea_watt_vec_downsample_1(1,2), 'ConvertFrom', 'posixtime');
time_vector = datetime(rse_chp_m_ea_watt_vec_downsample_1(:,2), 'ConvertFrom', 'posixtime') - time_bias;
data_rse_chp_m_ea_watt_vec_downsample_1             = [time_vector, rse_chp_m_ea_watt_vec_downsample_1(:,3)];

% Excluding some signals from the scenario only in the SELECTION_SWITCH = 2 (Experiments December 14-15, 2023)
if selection_switch == 2 && selection_scenario ~= 1 && selection_scenario ~= 2 && selection_scenario ~= 3 && selection_scenario ~= 4
    
    time_bias = datetime(cres_temperature1_m_ea_celsius_vec_downsample_1(1,2), 'ConvertFrom', 'posixtime');
    time_vector = datetime(cres_temperature1_m_ea_celsius_vec_downsample_1(:,2), 'ConvertFrom', 'posixtime') - time_bias;
    data_cres_temperature1_m_ea_celsius_vec_downsample_1  = [time_vector, cres_temperature1_m_ea_celsius_vec_downsample_1(:,3)];
    
    time_bias = datetime(cres_temperature2_m_ea_celsisus_vec_downsample_1(1,2), 'ConvertFrom', 'posixtime');
    time_vector = datetime(cres_temperature2_m_ea_celsisus_vec_downsample_1(:,2), 'ConvertFrom', 'posixtime') - time_bias;
    data_cres_temperature2_m_ea_celsisus_vec_downsample_1 = [time_vector, cres_temperature2_m_ea_celsisus_vec_downsample_1(:,3)];
    
    time_bias = datetime(cres_temperature3_m_ea_celsius_vec_downsample_1(1,2), 'ConvertFrom', 'posixtime');
    time_vector = datetime(cres_temperature3_m_ea_celsius_vec_downsample_1(:,2), 'ConvertFrom', 'posixtime') - time_bias;
    data_cres_temperature3_m_ea_celsius_vec_downsample_1  = [time_vector, cres_temperature3_m_ea_celsius_vec_downsample_1(:,3)];

end

% Excluding some signals from the scenario only in the SELECTION_SWITCH = 4 (Experiments January 26, 2024)
if selection_switch == 4 && selection_scenario ~= 1 && selection_scenario ~= 2
    % Voltage and frequency at the connection point at SINTEF
    
    time_bias = datetime(voltage_rse_pcc_vec_downsample_1(1,2), 'ConvertFrom', 'posixtime');
    time_vector = datetime(voltage_rse_pcc_vec_downsample_1(:,2), 'ConvertFrom', 'posixtime') - time_bias;
    data_voltage_rse_pcc_vec_downsample_1              = [time_vector, voltage_rse_pcc_vec_downsample_1(:,3)]; 
    
    time_bias = datetime(frequency_rse_pcc_vec_downsample_1(1,2), 'ConvertFrom', 'posixtime');
    time_vector = datetime(frequency_rse_pcc_vec_downsample_1(:,2), 'ConvertFrom', 'posixtime') - time_bias;
    data_frequency_rse_pcc_vec_downsample_1            = [time_vector, frequency_rse_pcc_vec_downsample_1(:,3)]; 

    time_bias = datetime(voltage_sin_pcc_vec_downsample_1(1,2), 'ConvertFrom', 'posixtime');
    time_vector = datetime(voltage_sin_pcc_vec_downsample_1(:,2), 'ConvertFrom', 'posixtime') - time_bias;
    data_voltage_sin_pcc_vec_downsample_1              = [time_vector, voltage_sin_pcc_vec_downsample_1(:,3)]; 
    
    time_bias = datetime(frequency_sin_pcc_vec_downsample_1(1,2), 'ConvertFrom', 'posixtime');
    time_vector = datetime(frequency_sin_pcc_vec_downsample_1(:,2), 'ConvertFrom', 'posixtime') - time_bias;
    data_frequency_sin_pcc_vec_downsample_1            = [time_vector, frequency_sin_pcc_vec_downsample_1(:,3)]; 

    % Active and reactive power measured at RSE
    time_bias = datetime(active_power_el_gf_mes_vec_shifted_1(1,2), 'ConvertFrom', 'posixtime');
    time_vector = datetime(active_power_el_gf_mes_vec_shifted_1(:,2), 'ConvertFrom', 'posixtime') - time_bias;
    data_active_power_el_gf_mes_vec_shifted_1          = [time_vector, active_power_el_gf_mes_vec_shifted_1(:,3)];
    
    time_bias = datetime(reactive_power_el_gf_mes_vec_shifted_1(1,2), 'ConvertFrom', 'posixtime');
    time_vector = datetime(reactive_power_el_gf_mes_vec_shifted_1(:,2), 'ConvertFrom', 'posixtime') - time_bias;
    data_reactive_power_el_gf_mes_vec_shifted_1        = [time_vector, reactive_power_el_gf_mes_vec_shifted_1(:,3)];

    time_bias = datetime(active_power_el_chp_mes_vec_shifted_1(1,2), 'ConvertFrom', 'posixtime');
    time_vector = datetime(active_power_el_chp_mes_vec_shifted_1(:,2), 'ConvertFrom', 'posixtime') - time_bias;
    data_active_power_el_chp_mes_vec_shifted_1         = [time_vector, active_power_el_chp_mes_vec_shifted_1(:,3)];

    time_bias = datetime(reactive_power_el_chp_mes_vec_shifted_1(1,2), 'ConvertFrom', 'posixtime');
    time_vector = datetime(reactive_power_el_chp_mes_vec_shifted_1(:,2), 'ConvertFrom', 'posixtime') - time_bias;
    data_reactive_power_el_chp_mes_vec_shifted_1       = [time_vector, reactive_power_el_chp_mes_vec_shifted_1(:,3)];


    time_bias = datetime(cres_temperature1_m_ea_celsius_vec_downsample_1(1,2), 'ConvertFrom', 'posixtime');
    time_vector = datetime(cres_temperature1_m_ea_celsius_vec_downsample_1(:,2), 'ConvertFrom', 'posixtime') - time_bias;
    data_cres_temperature1_m_ea_celsius_vec_downsample_1  = [time_vector, cres_temperature1_m_ea_celsius_vec_downsample_1(:,3)];

    time_bias = datetime(cres_temperature2_m_ea_celsisus_vec_downsample_1(1,2), 'ConvertFrom', 'posixtime');
    time_vector = datetime(cres_temperature2_m_ea_celsisus_vec_downsample_1(:,2), 'ConvertFrom', 'posixtime') - time_bias;
    data_cres_temperature2_m_ea_celsisus_vec_downsample_1 = [time_vector, cres_temperature2_m_ea_celsisus_vec_downsample_1(:,3)];

    time_bias = datetime(cres_temperature3_m_ea_celsius_vec_downsample_1(1,2), 'ConvertFrom', 'posixtime');
    time_vector = datetime(cres_temperature3_m_ea_celsius_vec_downsample_1(:,2), 'ConvertFrom', 'posixtime') - time_bias;
    data_cres_temperature3_m_ea_celsius_vec_downsample_1  = [time_vector, cres_temperature3_m_ea_celsius_vec_downsample_1(:,3)];

end


time_bias = datetime(cres_heat_pump_m_ea_kiloWatts_vec_downsample_1(1,2), 'ConvertFrom', 'posixtime');
time_vector = datetime(cres_heat_pump_m_ea_kiloWatts_vec_downsample_1(:,2), 'ConvertFrom', 'posixtime') - time_bias;
data_cres_heat_pump_m_ea_kiloWatts_vec_downsample_1 = [time_vector, cres_heat_pump_m_ea_kiloWatts_vec_downsample_1(:,3)];   

time_bias = datetime(th_temp_0_dtu_vec_downsample_1(1,2), 'ConvertFrom', 'posixtime');
time_vector = datetime(th_temp_0_dtu_vec_downsample_1(:,2), 'ConvertFrom', 'posixtime') - time_bias;
data_th_temp_0_dtu_vec_downsample_1                 = [time_vector, th_temp_0_dtu_vec_downsample_1(:,3)];                  

time_bias = datetime(th_flow_1_dtu_vec_downsample_1(1,2), 'ConvertFrom', 'posixtime');
time_vector = datetime(th_flow_1_dtu_vec_downsample_1(:,2), 'ConvertFrom', 'posixtime') - time_bias;
data_th_flow_1_dtu_vec_downsample_1                 = [time_vector, th_flow_1_dtu_vec_downsample_1(:,3)];                  

time_bias = datetime(th_fwd_1_dtu_vec_downsample_1(1,2), 'ConvertFrom', 'posixtime');
time_vector = datetime(th_fwd_1_dtu_vec_downsample_1(:,2), 'ConvertFrom', 'posixtime') - time_bias;
data_th_fwd_1_dtu_vec_downsample_1                  = [time_vector, th_fwd_1_dtu_vec_downsample_1(:,3)];                    

time_bias = datetime(th_ret_1_dtu_vec_downsample_1(1,2), 'ConvertFrom', 'posixtime');
time_vector = datetime(th_ret_1_dtu_vec_downsample_1(:,2), 'ConvertFrom', 'posixtime') - time_bias;
data_th_ret_1_dtu_vec_downsample_1                  = [time_vector, th_ret_1_dtu_vec_downsample_1(:,3)];                  

time_bias = datetime(th_fwd_2_dtu_vec_downsample_1(1,2), 'ConvertFrom', 'posixtime');
time_vector = datetime(th_fwd_2_dtu_vec_downsample_1(:,2), 'ConvertFrom', 'posixtime') - time_bias;
data_th_fwd_2_dtu_vec_downsample_1                  = [time_vector, th_fwd_2_dtu_vec_downsample_1(:,3)];                   

time_bias = datetime(th_ret_2_dtu_vec_downsample_1(1,2), 'ConvertFrom', 'posixtime');
time_vector = datetime(th_ret_2_dtu_vec_downsample_1(:,2), 'ConvertFrom', 'posixtime') - time_bias;
data_th_ret_2_dtu_vec_downsample_1                  = [time_vector, th_ret_2_dtu_vec_downsample_1(:,3)];                  

time_bias = datetime(th_fwd_3_dtu_vec_downsample_1(1,2), 'ConvertFrom', 'posixtime');
time_vector = datetime(th_fwd_3_dtu_vec_downsample_1(:,2), 'ConvertFrom', 'posixtime') - time_bias;
data_th_fwd_3_dtu_vec_downsample_1                  = [time_vector, th_fwd_3_dtu_vec_downsample_1(:,3)];                 

time_bias = datetime(th_ret_3_dtu_vec_downsample_1(1,2), 'ConvertFrom', 'posixtime');
time_vector = datetime(th_ret_3_dtu_vec_downsample_1(:,2), 'ConvertFrom', 'posixtime') - time_bias;
data_th_ret_3_dtu_vec_downsample_1                  = [time_vector, th_ret_3_dtu_vec_downsample_1(:,3)];                   

time_bias = datetime(thermal_load_dtu_vec_downsample_1(1,2), 'ConvertFrom', 'posixtime');
time_vector = datetime(thermal_load_dtu_vec_downsample_1(:,2), 'ConvertFrom', 'posixtime') - time_bias;
data_thermal_load_dtu_vec_downsample_1              = [time_vector, thermal_load_dtu_vec_downsample_1(:,3)];               

time_bias = datetime(thermal_source_dtu_vec_downsample_1(1,2), 'ConvertFrom', 'posixtime');
time_vector = datetime(thermal_source_dtu_vec_downsample_1(:,2), 'ConvertFrom', 'posixtime') - time_bias;
data_thermal_source_dtu_vec_downsample_1            = [time_vector, thermal_source_dtu_vec_downsample_1(:,3)];             

time_bias = datetime(chp_heat_out_rse_vec_downsample_1(1,2), 'ConvertFrom', 'posixtime');
time_vector = datetime(chp_heat_out_rse_vec_downsample_1(:,2), 'ConvertFrom', 'posixtime') - time_bias;
data_chp_heat_out_rse_vec_downsample_1              = [time_vector, chp_heat_out_rse_vec_downsample_1(:,3)];               

time_bias = datetime(active_power_chp_rse_vec_downsample_1(1,2), 'ConvertFrom', 'posixtime');
time_vector = datetime(active_power_chp_rse_vec_downsample_1(:,2), 'ConvertFrom', 'posixtime') - time_bias;
data_active_power_chp_rse_vec_downsample_1          = [time_vector, active_power_chp_rse_vec_downsample_1(:,3)];  

%%%%%%%%% Shifting second experimental trial - SELECTION_SWITH = 2 (Experiments December 14-15, 2023) %%%%%%%%%
%%%%%%%%% - SELECTION_SWITH = 4 (Experiments January 26, 2024)                                        %%%%%%%%%
if (selection_switch == 2 || selection_switch == 4) && selection_scenario == 1 || selection_scenario == 2   
    time_bias = datetime(active_power_el_sin_out_vec_downsample_2(1,2), 'ConvertFrom', 'posixtime');
    time_vector = datetime(active_power_el_sin_out_vec_downsample_2(:,2), 'ConvertFrom', 'posixtime') - time_bias;
    data_active_power_el_sin_out_vec_downsample_2       = [time_vector, active_power_el_sin_out_vec_downsample_2(:,3)];

    time_bias = datetime(reactive_power_el_sin_out_vec_downsample_2(1,2), 'ConvertFrom', 'posixtime');
    time_vector = datetime(reactive_power_el_sin_out_vec_downsample_2(:,2), 'ConvertFrom', 'posixtime') - time_bias;
    data_reactive_power_el_sin_out_vec_downsample_2     = [time_vector, reactive_power_el_sin_out_vec_downsample_2(:,3)];     

    time_bias = datetime(active_power_ref_el_sin_out_vec_downsample_2(1,2), 'ConvertFrom', 'posixtime');
    time_vector = datetime(active_power_ref_el_sin_out_vec_downsample_2(:,2), 'ConvertFrom', 'posixtime') - time_bias;
    data_active_power_ref_el_sin_out_vec_downsample_2   = [time_vector, active_power_ref_el_sin_out_vec_downsample_2(:,3)];     

    time_bias = datetime(reactive_power_ref_el_sin_out_vec_downsample_2(1,2), 'ConvertFrom', 'posixtime');
    time_vector = datetime(reactive_power_ref_el_sin_out_vec_downsample_2(:,2), 'ConvertFrom', 'posixtime') - time_bias;
    data_reactive_power_ref_el_sin_out_vec_downsample_2 = [time_vector, reactive_power_ref_el_sin_out_vec_downsample_2(:,3)];  

    time_bias = datetime(soc_sin_vec_downsample_2(1,2), 'ConvertFrom', 'posixtime');
    time_vector = datetime(soc_sin_vec_downsample_2(:,2), 'ConvertFrom', 'posixtime') - time_bias;
    data_soc_sin_vec_downsample_2                       = [time_vector, soc_sin_vec_downsample_2(:,3)];                        

    time_bias = datetime(voltage_ref_sin_out_vec_downsample_2(1,2), 'ConvertFrom', 'posixtime');
    time_vector = datetime(voltage_ref_sin_out_vec_downsample_2(:,2), 'ConvertFrom', 'posixtime') - time_bias;
    data_voltage_ref_sin_out_vec_downsample_2           = [time_vector, voltage_ref_sin_out_vec_downsample_2(:,3)];         

    time_bias = datetime(frequency_ref_sin_out_vec_downsample_2(1,2), 'ConvertFrom', 'posixtime');
    time_vector = datetime(frequency_ref_sin_out_vec_downsample_2(:,2), 'ConvertFrom', 'posixtime') - time_bias;
    data_frequency_ref_sin_out_vec_downsample_2         = [time_vector, frequency_ref_sin_out_vec_downsample_2(:,3)];        

    time_bias = datetime(active_power_el_rse_out_vec_downsample_2(1,2), 'ConvertFrom', 'posixtime');
    time_vector = datetime(active_power_el_rse_out_vec_downsample_2(:,2), 'ConvertFrom', 'posixtime') - time_bias;
    data_active_power_el_rse_out_vec_downsample_2       = [time_vector, active_power_el_rse_out_vec_downsample_2(:,3)];       

    time_bias = datetime(reactive_power_el_rse_out_vec_downsample_2(1,2), 'ConvertFrom', 'posixtime');
    time_vector = datetime(reactive_power_el_rse_out_vec_downsample_2(:,2), 'ConvertFrom', 'posixtime') - time_bias;
    data_reactive_power_el_rse_out_vec_downsample_2     = [time_vector, reactive_power_el_rse_out_vec_downsample_2(:,3)];     

    time_bias = datetime(voltage_ref_rse_out_vec_downsample_2(1,2), 'ConvertFrom', 'posixtime');
    time_vector = datetime(voltage_ref_rse_out_vec_downsample_2(:,2), 'ConvertFrom', 'posixtime') - time_bias;
    data_voltage_ref_rse_out_vec_downsample_2           = [time_vector, voltage_ref_rse_out_vec_downsample_2(:,3)];           

    time_bias = datetime(frequency_ref_rse_out_vec_downsample_2(1,2), 'ConvertFrom', 'posixtime');
    time_vector = datetime(frequency_ref_rse_out_vec_downsample_2(:,2), 'ConvertFrom', 'posixtime') - time_bias;
    data_frequency_ref_rse_out_vec_downsample_2         = [time_vector, frequency_ref_rse_out_vec_downsample_2(:,3)];         

    time_bias = datetime(rse_chp_m_ea_watt_vec_downsample_2(1,2), 'ConvertFrom', 'posixtime');
    time_vector = datetime(rse_chp_m_ea_watt_vec_downsample_2(:,2), 'ConvertFrom', 'posixtime') - time_bias;
    data_rse_chp_m_ea_watt_vec_downsample_2             = [time_vector, rse_chp_m_ea_watt_vec_downsample_2(:,3)];             

    % Excluding some signals from the scenario only in the SELECTION_SWITCH = 4 (Experiments December 14-15, 2023)
    if selection_switch == 2 && selection_scenario ~= 1 && selection_scenario ~= 2   
        time_bias = datetime(cres_temperature1_m_ea_celsius_vec_downsample_2(1,2), 'ConvertFrom', 'posixtime');
        time_vector = datetime(cres_temperature1_m_ea_celsius_vec_downsample_2(:,2), 'ConvertFrom', 'posixtime') - time_bias;
        data_cres_temperature1_m_ea_celsius_vec_downsample_2  = [time_vector, cres_temperature1_m_ea_celsius_vec_downsample_2(:,3)];

        time_bias = datetime(cres_temperature2_m_ea_celsisus_vec_downsample_2(1,2), 'ConvertFrom', 'posixtime');
        time_vector = datetime(cres_temperature2_m_ea_celsisus_vec_downsample_2(:,2), 'ConvertFrom', 'posixtime') - time_bias;
        data_cres_temperature2_m_ea_celsisus_vec_downsample_2 = [time_vector, cres_temperature2_m_ea_celsisus_vec_downsample_2(:,3)];

        time_bias = datetime(cres_temperature3_m_ea_celsius_vec_downsample_2(1,2), 'ConvertFrom', 'posixtime');
        time_vector = datetime(cres_temperature3_m_ea_celsius_vec_downsample_2(:,2), 'ConvertFrom', 'posixtime') - time_bias;
        data_cres_temperature3_m_ea_celsius_vec_downsample_2  = [time_vector, cres_temperature3_m_ea_celsius_vec_downsample_2(:,3)];

    end
    
    % Excluding some signals from the scenario only in the SELECTION_SWITCH = 4 (Experiments January 26, 2024)
    if selection_switch == 4 && selection_scenario ~= 1 && selection_scenario ~= 2
        % Voltage and frequency at the connection point SINTEF (in case of
        % a second trial of experiments)        
        time_bias = datetime(voltage_rse_pcc_vec_downsample_2(1,2), 'ConvertFrom', 'posixtime');
        time_vector = datetime(voltage_rse_pcc_vec_downsample_2(:,2), 'ConvertFrom', 'posixtime') - time_bias;
        data_voltage_rse_pcc_vec_downsample_2               = [time_vector, voltage_rse_pcc_vec_downsample_2(:,3)]; 

        time_bias = datetime(frequency_rse_pcc_vec_downsample_2(1,2), 'ConvertFrom', 'posixtime');
        time_vector = datetime(frequency_rse_pcc_vec_downsample_2(:,2), 'ConvertFrom', 'posixtime') - time_bias;
        data_frequency_rse_pcc_vec_downsample_2             = [time_vector, frequency_rse_pcc_vec_downsample_2(:,3)];


        time_bias = datetime(voltage_sin_pcc_vec_downsample_2(1,2), 'ConvertFrom', 'posixtime');
        time_vector = datetime(voltage_sin_pcc_vec_downsample_2(:,2), 'ConvertFrom', 'posixtime') - time_bias;
        data_voltage_sin_pcc_vec_downsample_2               = [time_vector, voltage_sin_pcc_vec_downsample_2(:,3)]; 

        time_bias = datetime(frequency_sin_pcc_vec_downsample_2(1,2), 'ConvertFrom', 'posixtime');
        time_vector = datetime(frequency_sin_pcc_vec_downsample_2(:,2), 'ConvertFrom', 'posixtime') - time_bias;
        data_frequency_sin_pcc_vec_downsample_2             = [time_vector, frequency_sin_pcc_vec_downsample_2(:,3)];
        
        % Active and reactive power measured at RSE (in case of a second
        % trial of experiments)     
        time_bias = datetime(active_power_el_gf_mes_vec_shifted_2(1,2), 'ConvertFrom', 'posixtime');
        time_vector = datetime(active_power_el_gf_mes_vec_shifted_2(:,2), 'ConvertFrom', 'posixtime') - time_bias;
        data_active_power_el_gf_mes_vec_shifted_2           = [time_vector, active_power_el_gf_mes_vec_shifted_2(:,3)];

        time_bias = datetime(reactive_power_el_gf_mes_vec_shifted_2(1,2), 'ConvertFrom', 'posixtime');
        time_vector = datetime(reactive_power_el_gf_mes_vec_shifted_2(:,2), 'ConvertFrom', 'posixtime') - time_bias;
        data_reactive_power_el_gf_mes_vec_shifted_2         = [time_vector, reactive_power_el_gf_mes_vec_shifted_2(:,3)];

        time_bias = datetime(active_power_el_chp_mes_vec_shifted_2(1,2), 'ConvertFrom', 'posixtime');
        time_vector = datetime(active_power_el_chp_mes_vec_shifted_2(:,2), 'ConvertFrom', 'posixtime') - time_bias;
        data_active_power_el_chp_mes_vec_shifted_2          = [time_vector, active_power_el_chp_mes_vec_shifted_2(:,3)];

        time_bias = datetime(reactive_power_el_chp_mes_vec_shifted_2(1,2), 'ConvertFrom', 'posixtime');
        time_vector = datetime(reactive_power_el_chp_mes_vec_shifted_2(:,2), 'ConvertFrom', 'posixtime') - time_bias;
        data_reactive_power_el_chp_mes_vec_shifted_2        = [time_vector, reactive_power_el_chp_mes_vec_shifted_2(:,3)];


        time_bias = datetime(cres_temperature1_m_ea_celsius_vec_downsample_2(1,2), 'ConvertFrom', 'posixtime');
        time_vector = datetime(cres_temperature1_m_ea_celsius_vec_downsample_2(:,2), 'ConvertFrom', 'posixtime') - time_bias;
        data_cres_temperature1_m_ea_celsius_vec_downsample_2  = [time_vector, cres_temperature1_m_ea_celsius_vec_downsample_2(:,3)];

        time_bias = datetime(cres_temperature2_m_ea_celsisus_vec_downsample_2(1,2), 'ConvertFrom', 'posixtime');
        time_vector = datetime(cres_temperature2_m_ea_celsisus_vec_downsample_2(:,2), 'ConvertFrom', 'posixtime') - time_bias;
        data_cres_temperature2_m_ea_celsisus_vec_downsample_2 = [time_vector, cres_temperature2_m_ea_celsisus_vec_downsample_2(:,3)];

        time_bias = datetime(cres_temperature3_m_ea_celsius_vec_downsample_2(1,2), 'ConvertFrom', 'posixtime');
        time_vector = datetime(cres_temperature3_m_ea_celsius_vec_downsample_2(:,2), 'ConvertFrom', 'posixtime') - time_bias;
        data_cres_temperature3_m_ea_celsius_vec_downsample_2  = [time_vector, cres_temperature3_m_ea_celsius_vec_downsample_2(:,3)];

    end
  
    time_bias = datetime(cres_heat_pump_m_ea_kiloWatts_vec_downsample_2(1,2), 'ConvertFrom', 'posixtime');
    time_vector = datetime(cres_heat_pump_m_ea_kiloWatts_vec_downsample_2(:,2), 'ConvertFrom', 'posixtime') - time_bias;
    data_cres_heat_pump_m_ea_kiloWatts_vec_downsample_2 = [time_vector, cres_heat_pump_m_ea_kiloWatts_vec_downsample_2(:,3)];   

    time_bias = datetime(th_temp_0_dtu_vec_downsample_2(1,2), 'ConvertFrom', 'posixtime');
    time_vector = datetime(th_temp_0_dtu_vec_downsample_2(:,2), 'ConvertFrom', 'posixtime') - time_bias;
    data_th_temp_0_dtu_vec_downsample_2                 = [time_vector, th_temp_0_dtu_vec_downsample_2(:,3)];                  

    time_bias = datetime(th_flow_1_dtu_vec_downsample_2(1,2), 'ConvertFrom', 'posixtime');
    time_vector = datetime(th_flow_1_dtu_vec_downsample_2(:,2), 'ConvertFrom', 'posixtime') - time_bias;
    data_th_flow_1_dtu_vec_downsample_2                 = [time_vector, th_flow_1_dtu_vec_downsample_2(:,3)];                  

    time_bias = datetime(th_fwd_1_dtu_vec_downsample_2(1,2), 'ConvertFrom', 'posixtime');
    time_vector = datetime(th_fwd_1_dtu_vec_downsample_2(:,2), 'ConvertFrom', 'posixtime') - time_bias;
    data_th_fwd_1_dtu_vec_downsample_2                  = [time_vector, th_fwd_1_dtu_vec_downsample_2(:,3)];                    

    time_bias = datetime(th_ret_1_dtu_vec_downsample_2(1,2), 'ConvertFrom', 'posixtime');
    time_vector = datetime(th_ret_1_dtu_vec_downsample_2(:,2), 'ConvertFrom', 'posixtime') - time_bias;
    data_th_ret_1_dtu_vec_downsample_2                  = [time_vector, th_ret_1_dtu_vec_downsample_2(:,3)];                  

    time_bias = datetime(th_fwd_2_dtu_vec_downsample_2(1,2), 'ConvertFrom', 'posixtime');
    time_vector = datetime(th_fwd_2_dtu_vec_downsample_2(:,2), 'ConvertFrom', 'posixtime') - time_bias;
    data_th_fwd_2_dtu_vec_downsample_2                  = [time_vector, th_fwd_2_dtu_vec_downsample_2(:,3)];                   

    time_bias = datetime(th_ret_2_dtu_vec_downsample_2(1,2), 'ConvertFrom', 'posixtime');
    time_vector = datetime(th_ret_2_dtu_vec_downsample_2(:,2), 'ConvertFrom', 'posixtime') - time_bias;
    data_th_ret_2_dtu_vec_downsample_2                  = [time_vector, th_ret_2_dtu_vec_downsample_2(:,3)];                  

    time_bias = datetime(th_fwd_3_dtu_vec_downsample_2(1,2), 'ConvertFrom', 'posixtime');
    time_vector = datetime(th_fwd_3_dtu_vec_downsample_2(:,2), 'ConvertFrom', 'posixtime') - time_bias;
    data_th_fwd_3_dtu_vec_downsample_2                  = [time_vector, th_fwd_3_dtu_vec_downsample_2(:,3)];                 

    time_bias = datetime(th_ret_3_dtu_vec_downsample_2(1,2), 'ConvertFrom', 'posixtime');
    time_vector = datetime(th_ret_3_dtu_vec_downsample_2(:,2), 'ConvertFrom', 'posixtime') - time_bias;
    data_th_ret_3_dtu_vec_downsample_2                  = [time_vector, th_ret_3_dtu_vec_downsample_2(:,3)];                   

    time_bias = datetime(thermal_load_dtu_vec_downsample_2(1,2), 'ConvertFrom', 'posixtime');
    time_vector = datetime(thermal_load_dtu_vec_downsample_2(:,2), 'ConvertFrom', 'posixtime') - time_bias;
    data_thermal_load_dtu_vec_downsample_2              = [time_vector, thermal_load_dtu_vec_downsample_2(:,3)];               

    time_bias = datetime(thermal_source_dtu_vec_downsample_2(1,2), 'ConvertFrom', 'posixtime');
    time_vector = datetime(thermal_source_dtu_vec_downsample_2(:,2), 'ConvertFrom', 'posixtime') - time_bias;
    data_thermal_source_dtu_vec_downsample_2            = [time_vector, thermal_source_dtu_vec_downsample_2(:,3)];             

    time_bias = datetime(chp_heat_out_rse_vec_downsample_2(1,2), 'ConvertFrom', 'posixtime');
    time_vector = datetime(chp_heat_out_rse_vec_downsample_2(:,2), 'ConvertFrom', 'posixtime') - time_bias;
    data_chp_heat_out_rse_vec_downsample_2              = [time_vector, chp_heat_out_rse_vec_downsample_2(:,3)];               

    time_bias = datetime(active_power_chp_rse_vec_downsample_2(1,2), 'ConvertFrom', 'posixtime');
    time_vector = datetime(active_power_chp_rse_vec_downsample_2(:,2), 'ConvertFrom', 'posixtime') - time_bias;
    data_active_power_chp_rse_vec_downsample_2          = [time_vector, active_power_chp_rse_vec_downsample_2(:,3)];           

end

