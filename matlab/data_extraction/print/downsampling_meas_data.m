
%%%%%%%%%%%%%%%%%%%%%%%%% SHIFTING TO MISSION START %%%%%%%%%%%%%%%%%%%%%%%
%% SHIFTING - Shifting first experiment trial
active_power_el_sin_out_vec_shifted_1         = active_power_el_sin_out_vec(shift_1_start: shift_1_end, :);
reactive_power_el_sin_out_vec_shifted_1       = reactive_power_el_sin_out_vec(shift_1_start: shift_1_end, :);
active_power_ref_el_sin_out_vec_shifted_1     = active_power_ref_el_sin_out_vec(shift_1_start: shift_1_end, :);
reactive_power_ref_el_sin_out_vec_shifted_1   = reactive_power_ref_el_sin_out_vec(shift_1_start: shift_1_end, :);
soc_sin_vec_shifted_1                         = soc_sin_vec(shift_1_start: shift_1_end, :);
voltage_ref_sin_out_vec_shifted_1             = voltage_ref_sin_out_vec(shift_1_start: shift_1_end, :);
frequency_ref_sin_out_vec_shifted_1           = frequency_ref_sin_out_vec(shift_1_start: shift_1_end, :);
active_power_el_rse_out_vec_shifted_1         = active_power_el_rse_out_vec(shift_1_start: shift_1_end, :);
reactive_power_el_rse_out_vec_shifted_1       = reactive_power_el_rse_out_vec(shift_1_start: shift_1_end, :);
voltage_ref_rse_out_vec_shifted_1             = voltage_ref_rse_out_vec(shift_1_start: shift_1_end, :);
frequency_ref_rse_out_vec_shifted_1           = frequency_ref_rse_out_vec(shift_1_start: shift_1_end, :);
rse_chp_m_ea_watt_vec_shifted_1               = rse_chp_m_ea_watt_vec(shift_1_start: shift_1_end, :);

% Excluding some signals from the scenario 
if selection_scenario ~= 1 && selection_scenario ~= 2 && selection_scenario ~= 3 && selection_scenario ~= 4
    cres_temperature1_m_ea_celsius_vec_shifted_1  = ...
        cres_temperature1_m_ea_celsius_vec(shift_1_start: shift_1_end, :);
    cres_temperature2_m_ea_celsisus_vec_shifted_1 = ...
        cres_temperature2_m_ea_celsisus_vec(shift_1_start: shift_1_end, :);
    cres_temperature3_m_ea_celsius_vec_shifted_1  = ...
        cres_temperature3_m_ea_celsius_vec(shift_1_start: shift_1_end, :);
end

cres_heat_pump_m_ea_kiloWatts_vec_shifted_1   = cres_heat_pump_m_ea_kiloWatts_vec(shift_1_start: shift_1_end, :);
th_temp_0_dtu_vec_shifted_1                   = th_temp_0_dtu_vec(shift_1_start: shift_1_end, :);
th_flow_1_dtu_vec_shifted_1                   = th_flow_1_dtu_vec(shift_1_start: shift_1_end, :);
th_fwd_1_dtu_vec_shifted_1                    = th_fwd_1_dtu_vec(shift_1_start: shift_1_end, :);
th_ret_1_dtu_vec_shifted_1                    = th_ret_1_dtu_vec(shift_1_start: shift_1_end, :);
th_fwd_2_dtu_vec_shifted_1                    = th_fwd_2_dtu_vec(shift_1_start: shift_1_end, :);
th_ret_2_dtu_vec_shifted_1                    = th_ret_2_dtu_vec(shift_1_start: shift_1_end, :);
th_fwd_3_dtu_vec_shifted_1                    = th_fwd_3_dtu_vec(shift_1_start: shift_1_end, :);
th_ret_3_dtu_vec_shifted_1                    = th_ret_3_dtu_vec(shift_1_start: shift_1_end, :);
thermal_load_dtu_vec_shifted_1                = thermal_load_dtu_vec(shift_1_start: shift_1_end, :);
thermal_source_dtu_vec_shifted_1              = thermal_source_dtu_vec(shift_1_start: shift_1_end, :);
chp_heat_out_rse_vec_shifted_1                = chp_heat_out_rse_vec(shift_1_start: shift_1_end, :);
active_power_chp_rse_vec_shifted_1            = active_power_chp_rse_vec(shift_1_start: shift_1_end, :);

%%%%%%%%% Shifting second experimental trial %%%%%%%%%
if selection_scenario == 1 || selection_scenario == 2
    active_power_el_sin_out_vec_shifted_2         = active_power_el_sin_out_vec(shift_2_start: shift_2_end, :);
    reactive_power_el_sin_out_vec_shifted_2       = reactive_power_el_sin_out_vec(shift_2_start: shift_2_end, :);
    active_power_ref_el_sin_out_vec_shifted_2     = active_power_ref_el_sin_out_vec(shift_2_start: shift_2_end, :);
    reactive_power_ref_el_sin_out_vec_shifted_2   = reactive_power_ref_el_sin_out_vec(shift_2_start: shift_2_end, :);
    soc_sin_vec_shifted_2                         = soc_sin_vec(shift_2_start: shift_2_end, :);
    voltage_ref_sin_out_vec_shifted_2             = voltage_ref_sin_out_vec(shift_2_start: shift_2_end, :);
    frequency_ref_sin_out_vec_shifted_2           = frequency_ref_sin_out_vec(shift_2_start: shift_2_end, :);
    active_power_el_rse_out_vec_shifted_2         = active_power_el_rse_out_vec(shift_2_start: shift_2_end, :);
    reactive_power_el_rse_out_vec_shifted_2       = reactive_power_el_rse_out_vec(shift_2_start: shift_2_end, :);
    voltage_ref_rse_out_vec_shifted_2             = voltage_ref_rse_out_vec(shift_2_start: shift_2_end, :);
    frequency_ref_rse_out_vec_shifted_2           = frequency_ref_rse_out_vec(shift_2_start: shift_2_end, :);
    rse_chp_m_ea_watt_vec_shifted_2               = rse_chp_m_ea_watt_vec(shift_2_start: shift_2_end, :);

    % Excluding some signals from the scenario 
    if selection_scenario ~= 1 && selection_scenario ~= 2 && selection_scenario ~= 3 && selection_scenario ~= 4
        cres_temperature1_m_ea_celsius_vec_shifted_2  = ...
            cres_temperature1_m_ea_celsius_vec(shift_2_start: shift_2_end, :);
        cres_temperature2_m_ea_celsisus_vec_shifted_2 = ...
            cres_temperature2_m_ea_celsisus_vec(shift_2_start: shift_2_end, :);
        cres_temperature3_m_ea_celsius_vec_shifted_2  = ...
            cres_temperature3_m_ea_celsius_vec(shift_2_start: shift_2_end, :);
    end

    cres_heat_pump_m_ea_kiloWatts_vec_shifted_2   = cres_heat_pump_m_ea_kiloWatts_vec(shift_2_start: shift_2_end, :);
    th_temp_0_dtu_vec_shifted_2                   = th_temp_0_dtu_vec(shift_2_start: shift_2_end, :);
    th_flow_1_dtu_vec_shifted_2                   = th_flow_1_dtu_vec(shift_2_start: shift_2_end, :);
    th_fwd_1_dtu_vec_shifted_2                    = th_fwd_1_dtu_vec(shift_2_start: shift_2_end, :);
    th_ret_1_dtu_vec_shifted_2                    = th_ret_1_dtu_vec(shift_2_start: shift_2_end, :);
    th_fwd_2_dtu_vec_shifted_2                    = th_fwd_2_dtu_vec(shift_2_start: shift_2_end, :);
    th_ret_2_dtu_vec_shifted_2                    = th_ret_2_dtu_vec(shift_2_start: shift_2_end, :);
    th_fwd_3_dtu_vec_shifted_2                    = th_fwd_3_dtu_vec(shift_2_start: shift_2_end, :);
    th_ret_3_dtu_vec_shifted_2                    = th_ret_3_dtu_vec(shift_2_start: shift_2_end, :);
    thermal_load_dtu_vec_shifted_2                = thermal_load_dtu_vec(shift_2_start: shift_2_end, :);
    thermal_source_dtu_vec_shifted_2              = thermal_source_dtu_vec(shift_2_start: shift_2_end, :);
    chp_heat_out_rse_vec_shifted_2                = chp_heat_out_rse_vec(shift_2_start: shift_2_end, :);
    active_power_chp_rse_vec_shifted_2            = active_power_chp_rse_vec(shift_2_start: shift_2_end, :);
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

% Excluding some signals from the scenario 
if selection_scenario ~= 1 && selection_scenario ~= 2 && selection_scenario ~= 3 && selection_scenario ~= 4
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

%%%%%%%%% Shifting second experimental trial %%%%%%%%%
if selection_scenario == 1 || selection_scenario == 2
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

    % Excluding some signals from the scenario 
    if selection_scenario ~= 1 && selection_scenario ~= 2
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

% Since voltage and frequency from TUD are received every 2 seconds, the
% lenght of the simulation is simply the lenght of the vector (i.e., number
% of ssamples) times the 2 seconds. Hence
simulation_duration_1 = (2 * length(voltage_ref_sin_out_vec_shifted_1))/60; % minutes
if selection_scenario == 1 || selection_scenario == 2
    simulation_duration_2 = (2 * length(voltage_ref_sin_out_vec_shifted_2))/60; % minutes
end

data_active_power_el_sin_out_vec_downsample_1       = [linspace(0, simulation_duration_1, ...
    length(active_power_el_sin_out_vec_downsample_1))', active_power_el_sin_out_vec_downsample_1(:,3)];
data_reactive_power_el_sin_out_vec_downsample_1 = [linspace(0, simulation_duration_1, ...
    length(reactive_power_el_sin_out_vec_downsample_1))', reactive_power_el_sin_out_vec_downsample_1(:,3)];     
data_active_power_ref_el_sin_out_vec_downsample_1   = [linspace(0, simulation_duration_1, ...
    length(active_power_ref_el_sin_out_vec_downsample_1))', active_power_ref_el_sin_out_vec_downsample_1(:,3)];     
data_reactive_power_ref_el_sin_out_vec_downsample_1 = [linspace(0, simulation_duration_1, ...
    length(reactive_power_ref_el_sin_out_vec_downsample_1))', reactive_power_ref_el_sin_out_vec_downsample_1(:,3)];  
data_soc_sin_vec_downsample_1                       = [linspace(0, simulation_duration_1, ...
    length(soc_sin_vec_downsample_1))', soc_sin_vec_downsample_1(:,3)];                        
data_voltage_ref_sin_out_vec_downsample_1           = [linspace(0, simulation_duration_1, ...
    length(voltage_ref_sin_out_vec_downsample_1))', voltage_ref_sin_out_vec_downsample_1(:,3)];         
data_frequency_ref_sin_out_vec_downsample_1         = [linspace(0, simulation_duration_1, ...
    length(frequency_ref_sin_out_vec_downsample_1))', frequency_ref_sin_out_vec_downsample_1(:,3)];        
data_active_power_el_rse_out_vec_downsample_1       = [linspace(0, simulation_duration_1, ...
    length(active_power_el_rse_out_vec_downsample_1))', active_power_el_rse_out_vec_downsample_1(:,3)];       
data_reactive_power_el_rse_out_vec_downsample_1     = [linspace(0, simulation_duration_1, ...
    length(reactive_power_el_rse_out_vec_downsample_1))', reactive_power_el_rse_out_vec_downsample_1(:,3)];     
data_voltage_ref_rse_out_vec_downsample_1           = [linspace(0, simulation_duration_1, ...
    length(voltage_ref_rse_out_vec_downsample_1))', voltage_ref_rse_out_vec_downsample_1(:,3)];           
data_frequency_ref_rse_out_vec_downsample_1         = [linspace(0, simulation_duration_1, ...
    length(frequency_ref_rse_out_vec_downsample_1))', frequency_ref_rse_out_vec_downsample_1(:,3)];         
data_rse_chp_m_ea_watt_vec_downsample_1             = [linspace(0, simulation_duration_1, ...
    length(rse_chp_m_ea_watt_vec_downsample_1))', rse_chp_m_ea_watt_vec_downsample_1(:,3)];             

% Excluding some signals from the scenario 
if selection_scenario ~= 1 && selection_scenario ~= 2 && selection_scenario ~= 3 && selection_scenario ~= 4
    data_cres_temperature1_m_ea_celsius_vec_downsample_1 = [linspace(0, simulation_duration_1, ...
        length(cres_temperature1_m_ea_celsius_vec_downsample_1))', cres_temperature1_m_ea_celsius_vec_downsample_1(:,3)];

    data_cres_temperature2_m_ea_celsisus_vec_downsample_1 = [linspace(0, simulation_duration_1, ...
        length(cres_temperature2_m_ea_celsisus_vec_downsample_1))', cres_temperature2_m_ea_celsisus_vec_downsample_1(:,3)];

    data_cres_temperature3_m_ea_celsius_vec_downsample_1 = [linspace(0, simulation_duration_1, ...
        length(cres_temperature3_m_ea_celsius_vec_downsample_1))', cres_temperature3_m_ea_celsius_vec_downsample_1(:,3)];

end

data_cres_heat_pump_m_ea_kiloWatts_vec_downsample_1 = [linspace(0, simulation_duration_1, ...
    length(cres_heat_pump_m_ea_kiloWatts_vec_downsample_1))', cres_heat_pump_m_ea_kiloWatts_vec_downsample_1(:,3)];   
data_th_temp_0_dtu_vec_downsample_1 = [linspace(0, simulation_duration_1, ...
    length(th_temp_0_dtu_vec_downsample_1))', th_temp_0_dtu_vec_downsample_1(:,3)];                  
data_th_flow_1_dtu_vec_downsample_1  = [linspace(0, simulation_duration_1, ...
    length(th_flow_1_dtu_vec_downsample_1))', th_flow_1_dtu_vec_downsample_1(:,3)];                  
data_th_fwd_1_dtu_vec_downsample_1  = [linspace(0, simulation_duration_1, ...
    length(th_fwd_1_dtu_vec_downsample_1))', th_fwd_1_dtu_vec_downsample_1(:,3)];                    
data_th_ret_1_dtu_vec_downsample_1  = [linspace(0, simulation_duration_1, ...
    length(th_ret_1_dtu_vec_downsample_1))', th_ret_1_dtu_vec_downsample_1(:,3)];                  
data_th_fwd_2_dtu_vec_downsample_1  = [linspace(0, simulation_duration_1, ...
    length(th_fwd_2_dtu_vec_downsample_1))', th_fwd_2_dtu_vec_downsample_1(:,3)];                   
data_th_ret_2_dtu_vec_downsample_1 = [linspace(0, simulation_duration_1, ...
    length(th_ret_2_dtu_vec_downsample_1))', th_ret_2_dtu_vec_downsample_1(:,3)];                  
data_th_fwd_3_dtu_vec_downsample_1 = [linspace(0, simulation_duration_1, ...
    length(th_fwd_3_dtu_vec_downsample_1))', th_fwd_3_dtu_vec_downsample_1(:,3)];                 
data_th_ret_3_dtu_vec_downsample_1 = [linspace(0, simulation_duration_1, ...
    length(th_ret_3_dtu_vec_downsample_1))', th_ret_3_dtu_vec_downsample_1(:,3)];                   
data_thermal_load_dtu_vec_downsample_1 = [linspace(0, simulation_duration_1, ...
    length(thermal_load_dtu_vec_downsample_1))', thermal_load_dtu_vec_downsample_1(:,3)];               
data_thermal_source_dtu_vec_downsample_1 = [linspace(0, simulation_duration_1, ...
    length(thermal_source_dtu_vec_downsample_1))', thermal_source_dtu_vec_downsample_1(:,3)];             
data_chp_heat_out_rse_vec_downsample_1 = [linspace(0, simulation_duration_1, ...
    length(chp_heat_out_rse_vec_downsample_1))', chp_heat_out_rse_vec_downsample_1(:,3)];               
data_active_power_chp_rse_vec_downsample_1 = [linspace(0, simulation_duration_1, ...
    length(active_power_chp_rse_vec_downsample_1))', active_power_chp_rse_vec_downsample_1(:,3)];  

%%%%%%%%% Shifting second experimental trial %%%%%%%%%
if selection_scenario == 1 || selection_scenario == 2
    data_active_power_el_sin_out_vec_downsample_2       = [linspace(0, simulation_duration_2, ...
        length(active_power_el_sin_out_vec_downsample_2))', active_power_el_sin_out_vec_downsample_2(:,3)];
    data_reactive_power_el_sin_out_vec_downsample_2 = [linspace(0, simulation_duration_2, ...
        length(reactive_power_el_sin_out_vec_downsample_2))', reactive_power_el_sin_out_vec_downsample_2(:,3)];     
    data_active_power_ref_el_sin_out_vec_downsample_2   = [linspace(0, simulation_duration_2, ...
        length(active_power_ref_el_sin_out_vec_downsample_2))', active_power_ref_el_sin_out_vec_downsample_2(:,3)];     
    data_reactive_power_ref_el_sin_out_vec_downsample_2 = [linspace(0, simulation_duration_2, ...
        length(reactive_power_ref_el_sin_out_vec_downsample_2))', reactive_power_ref_el_sin_out_vec_downsample_2(:,3)];  
    data_soc_sin_vec_downsample_2                       = [linspace(0, simulation_duration_2, ...
        length(soc_sin_vec_downsample_2))', soc_sin_vec_downsample_2(:,3)];                        
    data_voltage_ref_sin_out_vec_downsample_2           = [linspace(0, simulation_duration_2, ...
        length(voltage_ref_sin_out_vec_downsample_2))', voltage_ref_sin_out_vec_downsample_2(:,3)];         
    data_frequency_ref_sin_out_vec_downsample_2         = [linspace(0, simulation_duration_2, ...
        length(frequency_ref_sin_out_vec_downsample_2))', frequency_ref_sin_out_vec_downsample_2(:,3)];        
    data_active_power_el_rse_out_vec_downsample_2       = [linspace(0, simulation_duration_2, ...
        length(active_power_el_rse_out_vec_downsample_2))', active_power_el_rse_out_vec_downsample_2(:,3)];       
    data_reactive_power_el_rse_out_vec_downsample_2     = [linspace(0, simulation_duration_2, ...
        length(reactive_power_el_rse_out_vec_downsample_2))', reactive_power_el_rse_out_vec_downsample_2(:,3)];     
    data_voltage_ref_rse_out_vec_downsample_2           = [linspace(0, simulation_duration_2, ...
        length(voltage_ref_rse_out_vec_downsample_2))', voltage_ref_rse_out_vec_downsample_2(:,3)];           
    data_frequency_ref_rse_out_vec_downsample_2         = [linspace(0, simulation_duration_2, ...
        length(frequency_ref_rse_out_vec_downsample_2))', frequency_ref_rse_out_vec_downsample_2(:,3)];         
    data_rse_chp_m_ea_watt_vec_downsample_2             = [linspace(0, simulation_duration_2, ...
        length(rse_chp_m_ea_watt_vec_downsample_2))', rse_chp_m_ea_watt_vec_downsample_2(:,3)];             

    % Excluding some signals from the scenario 
    if selection_scenario ~= 1 && selection_scenario ~= 2
        data_cres_temperature1_m_ea_celsius_vec_downsample_2 = [linspace(0, simulation_duration_2, ...
            length(cres_temperature1_m_ea_celsius_vec_downsample_2))', cres_temperature1_m_ea_celsius_vec_downsample_2(:,3)];

        data_cres_temperature2_m_ea_celsisus_vec_downsample_2 = [linspace(0, simulation_duration_2, ...
            length(cres_temperature2_m_ea_celsisus_vec_downsample_2))', cres_temperature2_m_ea_celsisus_vec_downsample_2(:,3)];

        data_cres_temperature3_m_ea_celsius_vec_downsample_2 = [linspace(0, simulation_duration_2, ...
            length(cres_temperature3_m_ea_celsius_vec_downsample_2))', cres_temperature3_m_ea_celsius_vec_downsample_2(:,3)];

    end

    data_cres_heat_pump_m_ea_kiloWatts_vec_downsample_2 = [linspace(0, simulation_duration_2, ...
        length(cres_heat_pump_m_ea_kiloWatts_vec_downsample_2))', cres_heat_pump_m_ea_kiloWatts_vec_downsample_2(:,3)];   
    data_th_temp_0_dtu_vec_downsample_2 = [linspace(0, simulation_duration_2, ...
        length(th_temp_0_dtu_vec_downsample_2))', th_temp_0_dtu_vec_downsample_2(:,3)];                  
    data_th_flow_1_dtu_vec_downsample_2  = [linspace(0, simulation_duration_2, ...
        length(th_flow_1_dtu_vec_downsample_2))', th_flow_1_dtu_vec_downsample_2(:,3)];                  
    data_th_fwd_1_dtu_vec_downsample_2  = [linspace(0, simulation_duration_2, ...
        length(th_fwd_1_dtu_vec_downsample_2))', th_fwd_1_dtu_vec_downsample_2(:,3)];                    
    data_th_ret_1_dtu_vec_downsample_2  = [linspace(0, simulation_duration_2, ...
        length(th_ret_1_dtu_vec_downsample_2))', th_ret_1_dtu_vec_downsample_2(:,3)];                  
    data_th_fwd_2_dtu_vec_downsample_2  = [linspace(0, simulation_duration_2, ...
        length(th_fwd_2_dtu_vec_downsample_2))', th_fwd_2_dtu_vec_downsample_2(:,3)];                   
    data_th_ret_2_dtu_vec_downsample_2 = [linspace(0, simulation_duration_2, ...
        length(th_ret_2_dtu_vec_downsample_2))', th_ret_2_dtu_vec_downsample_2(:,3)];                  
    data_th_fwd_3_dtu_vec_downsample_2 = [linspace(0, simulation_duration_2, ...
        length(th_fwd_3_dtu_vec_downsample_2))', th_fwd_3_dtu_vec_downsample_2(:,3)];                 
    data_th_ret_3_dtu_vec_downsample_2 = [linspace(0, simulation_duration_2, ...
        length(th_ret_3_dtu_vec_downsample_2))', th_ret_3_dtu_vec_downsample_2(:,3)];                   
    data_thermal_load_dtu_vec_downsample_2 = [linspace(0, simulation_duration_2, ...
        length(thermal_load_dtu_vec_downsample_2))', thermal_load_dtu_vec_downsample_2(:,3)];               
    data_thermal_source_dtu_vec_downsample_2 = [linspace(0, simulation_duration_2, ...
        length(thermal_source_dtu_vec_downsample_2))', thermal_source_dtu_vec_downsample_2(:,3)];             
    data_chp_heat_out_rse_vec_downsample_2 = [linspace(0, simulation_duration_2, ...
        length(chp_heat_out_rse_vec_downsample_2))', chp_heat_out_rse_vec_downsample_2(:,3)];               
    data_active_power_chp_rse_vec_downsample_2 = [linspace(0, simulation_duration_2, ...
        length(active_power_chp_rse_vec_downsample_2))', active_power_chp_rse_vec_downsample_2(:,3)];           
end

