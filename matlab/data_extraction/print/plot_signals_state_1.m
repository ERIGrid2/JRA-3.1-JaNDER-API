%% %%%%%%%%%%%%%%%%%%%%%%% ELECTRIC ACTIVE POWER SINTEF TO TUD %%%%%%%%% %% 
handlerIndex = 1; 
handlerIndexFig = 1;
handlerFig{handlerIndex,1} = figure();
color_vector = 'brgymk';
handlerLegend =  1;
legend_string = strings;

plot(data_active_power_el_sin_out_vec_downsample_1(:,1), ...
    active_power_el_sin_out_vec_downsample_1(:,3), color_vector(1));
grid on

legend_string(handlerLegend) = strcat('$P_{el_{SIN}}$');  
leg = legend(legend_string, 'Location', 'Best', 'FontSize', 14, 'Orientation','horizontal');
set(leg,'Interpreter','latex');
xlim([0 data_active_power_el_sin_out_vec_downsample_1(end,1)]); % X-axis limits - TIME

xlabel('Time [m]');
ylabel('Power [kW]');
title('Electric Active Power SINTEF TO TUD');
handlerNameFig{handlerIndexFig,1} = strcat('active_power_el_sin_out','.fig'); 

%% %%%%%%%%%%%%%%%%%%%%%%% ELECTRIC REACTIVE POWER SINTEF TO TUD %%%%%%% %% 
handlerIndex = handlerIndex + 1; 
handlerIndexFig = handlerIndexFig + 1;
handlerFig{handlerIndex,1} = figure();
color_vector = 'brgymk';
handlerLegend =  1;
legend_string = strings;

plot(data_reactive_power_el_sin_out_vec_downsample_1(:,1), ...
    reactive_power_el_sin_out_vec_downsample_1(:,3), color_vector(1));
grid on

legend_string(handlerLegend) = strcat('$Q_{el_{SIN}}$');  
leg = legend(legend_string, 'Location', 'Best', 'FontSize', 14, 'Orientation','horizontal');
set(leg,'Interpreter','latex');
xlim([0 data_reactive_power_el_sin_out_vec_downsample_1(end,1)]); % X-axis limits - TIME

xlabel('Time [m]');
ylabel('Power [kVAr]');
title('Electric Reactive Power SINTEF TO TUD');
handlerNameFig{handlerIndexFig,1} = strcat('reactive_power_el_sin_out','.fig'); 

%% %%%%%%%%%%%%%%%%%%%%%%% REF. ELECTRIC ACTIVE POWER SINTEF TO TUD %%%% %% 
handlerIndex = handlerIndex + 1; 
handlerIndexFig = handlerIndexFig + 1;
handlerFig{handlerIndex,1} = figure();
color_vector = 'brgymk';
handlerLegend =  1;
legend_string = strings;

plot(data_active_power_ref_el_sin_out_vec_downsample_1(:,1), ...
    active_power_ref_el_sin_out_vec_downsample_1(:,3), color_vector(1));
grid on

legend_string(handlerLegend) = strcat('$P_{el_{SIN}}^{ref}$');  
leg = legend(legend_string, 'Location', 'Best', 'FontSize', 14, 'Orientation','horizontal');
set(leg,'Interpreter','latex');
xlim([0 data_active_power_ref_el_sin_out_vec_downsample_1(end,1)]); % X-axis limits - TIME

xlabel('Time [m]');
ylabel('Power [kW]');
title('Reference Electric Active Power SINTEF TO TUD');
handlerNameFig{handlerIndexFig,1} = strcat('active_power_ref_el_sin_out','.fig'); 

%% %%%%%%%%%%%%%%%%%%%%%%% REF. ELECTRIC REACTIVE POWER SINTEF TO TUD %% %% 
handlerIndex = handlerIndex + 1; 
handlerIndexFig = handlerIndexFig + 1;
handlerFig{handlerIndex,1} = figure();
color_vector = 'brgymk';
handlerLegend =  1;
legend_string = strings;

plot(data_reactive_power_ref_el_sin_out_vec_downsample_1(:,1), ...
    reactive_power_ref_el_sin_out_vec_downsample_1(:,3), color_vector(1));
grid on

legend_string(handlerLegend) = strcat('$Q_{el_{SIN}}^{ref}$');  
leg = legend(legend_string, 'Location', 'Best', 'FontSize', 14, 'Orientation','horizontal');
set(leg,'Interpreter','latex');
xlim([0 data_reactive_power_ref_el_sin_out_vec_downsample_1(end,1)]); % X-axis limits - TIME

xlabel('Time [m]');
ylabel('Power [kVAr]');
title('Reference Electric Rective Power SINTEF TO TUD');
handlerNameFig{handlerIndexFig,1} = strcat('reactive_power_ref_el_sin_out','.fig'); 

%% %%%%%%%%%%%%%%%%%%%%%%% STATE OF CHARGE SINTEF %%%%%%%%%%%%%%%%%%%%%% %% 
handlerIndex = handlerIndex + 1; 
handlerIndexFig = handlerIndexFig + 1;
handlerFig{handlerIndex,1} = figure();
color_vector = 'brgymk';
handlerLegend =  1;
legend_string = strings;

plot(data_soc_sin_vec_downsample_1(:,1), ...
    soc_sin_vec_downsample_1(:,3), color_vector(1));
grid on

legend_string(handlerLegend) = strcat('$SoC$');  
leg = legend(legend_string, 'Location', 'Best', 'FontSize', 14, 'Orientation','horizontal');
set(leg,'Interpreter','latex');
xlim([0 data_soc_sin_vec_downsample_1(end,1)]); % X-axis limits - TIME

xlabel('Time [m]');
ylabel('SOC [%]');
title('State of Charge Battery SINTEF');
handlerNameFig{handlerIndexFig,1} = strcat('soc_sin','.fig'); 

%% %%%%%%%%%%%%%%%%%%%%%%% REF. VOLTAGE TO SINTEF %%%%%%%%%%%%%%%%%%%%%% %% 
handlerIndex = handlerIndex + 1; 
handlerIndexFig = handlerIndexFig + 1;
handlerFig{handlerIndex,1} = figure();
color_vector = 'brgymk';
handlerLegend =  1;
legend_string = strings;

plot(data_voltage_ref_sin_out_vec_downsample_1(:,1), ...
    voltage_ref_sin_out_vec_downsample_1(:,3), color_vector(1));
grid on

legend_string(handlerLegend) = strcat('$V_{SIN}^{ref}$');  
leg = legend(legend_string, 'Location', 'Best', 'FontSize', 14, 'Orientation','horizontal');
set(leg,'Interpreter','latex');
xlim([0 data_voltage_ref_sin_out_vec_downsample_1(end,1)]); % X-axis limits - TIME

xlabel('Time [m]');
ylabel('Voltage [V]');
title('Reference Voltage From TUD to SINTEF');
handlerNameFig{handlerIndexFig,1} = strcat('voltage_ref_sin_out','.fig'); 

%% %%%%%%%%%%%%%%%%%%%%%%% REF. FREQUENCY TO SINTEF %%%%%%%%%%%%%%%%%%%% %% 
handlerIndex = handlerIndex + 1; 
handlerIndexFig = handlerIndexFig + 1;
handlerFig{handlerIndex,1} = figure();
color_vector = 'brgymk';
handlerLegend =  1;
legend_string = strings;

plot(data_frequency_ref_sin_out_vec_downsample_1(:,1), ...
    frequency_ref_sin_out_vec_downsample_1(:,3), color_vector(1));
grid on

legend_string(handlerLegend) = strcat('$f_{SIN}^{ref}$');  
leg = legend(legend_string, 'Location', 'Best', 'FontSize', 14, 'Orientation','horizontal');
set(leg,'Interpreter','latex');
xlim([0 data_frequency_ref_sin_out_vec_downsample_1(end,1)]); % X-axis limits - TIME

xlabel('Time [m]');
ylabel('Frequency [Hz]');
title('Reference Frequency From TUD to SINTEF');
handlerNameFig{handlerIndexFig,1} = strcat('frequency_ref_sin_out','.fig'); 

%% %%%%%%%%%%%%%%%%%%%%%%% ELECTRIC ACTIVE POWER FROM RSE TO TUD %%%%%%% %% 
handlerIndex = handlerIndex + 1; 
handlerIndexFig = handlerIndexFig + 1;
handlerFig{handlerIndex,1} = figure();
color_vector = 'brgymk';
handlerLegend =  1;
legend_string = strings;

plot(data_active_power_el_rse_out_vec_downsample_1(:,1), ...
    active_power_el_rse_out_vec_downsample_1(:,3), color_vector(1));
grid on

legend_string(handlerLegend) = strcat('$P_{el_{RSE}}$');  
leg = legend(legend_string, 'Location', 'Best', 'FontSize', 14, 'Orientation','horizontal');
set(leg,'Interpreter','latex');
xlim([0 data_active_power_el_rse_out_vec_downsample_1(end,1)]); % X-axis limits - TIME

xlabel('Time [m]');
ylabel('Power [kW]');
title('Active Power From RSE to TUD');
handlerNameFig{handlerIndexFig,1} = strcat('active_power_el_rse_out','.fig'); 

%% %%%%%%%%%%%%%%%%%%%%%%% ELECTRIC REACTIVE POWER FROM RSE TO TUD %%%%% %% 
handlerIndex = handlerIndex + 1; 
handlerIndexFig = handlerIndexFig + 1;
handlerFig{handlerIndex,1} = figure();
color_vector = 'brgymk';
handlerLegend =  1;
legend_string = strings;

plot(data_reactive_power_el_rse_out_vec_downsample_1(:,1), ...
    reactive_power_el_rse_out_vec_downsample_1(:,3), color_vector(1));
grid on

legend_string(handlerLegend) = strcat('$Q_{el_{RSE}}$');  
leg = legend(legend_string, 'Location', 'Best', 'FontSize', 14, 'Orientation','horizontal');
set(leg,'Interpreter','latex');
xlim([0 data_reactive_power_el_rse_out_vec_downsample_1(end,1)]); % X-axis limits - TIME

xlabel('Time [m]');
ylabel('Power [kVAr]');
title('Reactive Power From RSE to TUD');
handlerNameFig{handlerIndexFig,1} = strcat('reactive_power_el_rse_out','.fig'); 

%% %%%%%%%%%%%%%%%%%%%%%%% REF. VOLTAGE FROM TUD TO RSE %%%%%%%%%%%%%%%% %% 
handlerIndex = handlerIndex + 1; 
handlerIndexFig = handlerIndexFig + 1;
handlerFig{handlerIndex,1} = figure();
color_vector = 'brgymk';
handlerLegend =  1;
legend_string = strings;

plot(data_voltage_ref_rse_out_vec_downsample_1(:,1), ...
    voltage_ref_rse_out_vec_downsample_1(:,3), color_vector(1));
grid on

legend_string(handlerLegend) = strcat('$V_{RSE}^{ref}$');  
leg = legend(legend_string, 'Location', 'Best', 'FontSize', 14, 'Orientation','horizontal');
set(leg,'Interpreter','latex');
xlim([0 data_voltage_ref_rse_out_vec_downsample_1(end,1)]); % X-axis limits - TIME

xlabel('Time [m]');
ylabel('Voltage [V]');
title('Reference Voltage From TUD to RSE');
handlerNameFig{handlerIndexFig,1} = strcat('voltage_ref_rse_out','.fig'); 

%% %%%%%%%%%%%%%%%%%%%%%%% REF. FREQUENCY FROM TUD TO RSE %%%%%%%%%%%%%% %% 
handlerIndex = handlerIndex + 1; 
handlerIndexFig = handlerIndexFig + 1;
handlerFig{handlerIndex,1} = figure();
color_vector = 'brgymk';
handlerLegend =  1;
legend_string = strings;

plot(data_frequency_ref_rse_out_vec_downsample_1(:,1), ...
    frequency_ref_rse_out_vec_downsample_1(:,3), color_vector(1));
grid on

legend_string(handlerLegend) = strcat('$f_{RSE}^{ref}$');  
leg = legend(legend_string, 'Location', 'Best', 'FontSize', 14, 'Orientation','horizontal');
set(leg,'Interpreter','latex');
xlim([0 data_frequency_ref_rse_out_vec_downsample_1(end,1)]); % X-axis limits - TIME

xlabel('Time [m]');
ylabel('Frequency [Hz]');
title('Reference Frequency From TUD to RSE');
handlerNameFig{handlerIndexFig,1} = strcat('frequency_ref_rse_out','.fig'); 

%% %%%%%%%%%%%%%%%%%%%%%%% VOLTAGE FROM RSE TO TUD %%%%%%%%%%%%%%%%%%%%% %% 
% Only in the case SELECTION_SWITCH = 4 (Experiments January 26, 2024)
% The signals were no measured in the previous experiments
if selection_switch == 4
    
    handlerIndex = handlerIndex + 1; 
    handlerIndexFig = handlerIndexFig + 1;
    handlerFig{handlerIndex,1} = figure();
    color_vector = 'brgymk';
    handlerLegend =  1;
    legend_string = strings;

    plot(data_voltage_rse_pcc_vec_downsample_1(:,1), ...
        voltage_rse_pcc_vec_downsample_1(:,3), color_vector(1));
    grid on

    legend_string(handlerLegend) = strcat('$V_{RSE}$');  
    leg = legend(legend_string, 'Location', 'Best', 'FontSize', 14, 'Orientation','horizontal');
    set(leg,'Interpreter','latex');
    xlim([0 data_voltage_rse_pcc_vec_downsample_1(end,1)]); % X-axis limits - TIME

    xlabel('Time [m]');
    ylabel('Voltage [V]');
    title('Voltage From RSE to TUD');
    handlerNameFig{handlerIndexFig,1} = strcat('voltage_rse_out','.fig'); 

end

%% %%%%%%%%%%%%%%%%%%%%%%% ON/OFF SIGNAL EHP (CRES) %%%%%%%%%%%%%%%%%%%% %% 
handlerIndex = handlerIndex + 1; 
handlerIndexFig = handlerIndexFig + 1;
handlerFig{handlerIndex,1} = figure();
color_vector = 'brgymk';
handlerLegend =  1;
legend_string = strings;

plot(data_rse_chp_m_ea_watt_vec_downsample_1(:,1), ...
    rse_chp_m_ea_watt_vec_downsample_1(:,3), color_vector(1));
grid on

legend_string(handlerLegend) = strcat('$ON/OFF$');  
leg = legend(legend_string, 'Location', 'Best', 'FontSize', 14, 'Orientation','horizontal');
set(leg,'Interpreter','latex');
xlim([0 data_rse_chp_m_ea_watt_vec_downsample_1(end,1)]); % X-axis limits - TIME

xlabel('Time [m]');
ylabel('Signal [-]');
title('ON/OFF Signal EHP - CRES');
handlerNameFig{handlerIndexFig,1} = strcat('rse_chp_m_ea_watt','.fig'); 

%% %%%%%%%%%%%%%%%%%%%%%%% TEMPERATURE 1 HEAT DIST. (CRES) %%%%%%%%%%%%% %% 

% Excluding some signals from the scenario 
if selection_scenario ~= 1 && selection_scenario ~= 2 && selection_scenario ~= 3 && selection_scenario ~= 4
    handlerIndex = handlerIndex + 1; 
    handlerIndexFig = handlerIndexFig + 1;
    handlerFig{handlerIndex,1} = figure();
    color_vector = 'brgymk';
    handlerLegend =  1;
    legend_string = strings;

    plot(data_cres_temperature1_m_ea_celsius_vec_downsample_1(:,1), ...
        cres_temperature1_m_ea_celsius_vec_downsample_1(:,3), color_vector(1));
    grid on

    legend_string(handlerLegend) = strcat('$T_1$');  
    leg = legend(legend_string, 'Location', 'Best', 'FontSize', 14, 'Orientation','horizontal');
    set(leg,'Interpreter','latex');
    xlim([0 data_cres_temperature1_m_ea_celsius_vec_downsample_1(end,1)]); % X-axis limits - TIME

    xlabel('Time [m]');
    ylabel('Temperature [ï¿½C]');
    title('Temperature 1 Heat Distribution - CRES');
    handlerNameFig{handlerIndexFig,1} = strcat('cres_temperature1_m_ea_celsius','.fig'); 

end

%% %%%%%%%%%%%%%%%%%%%%%%% TEMPERATURE 2 HEAT DIST. (CRES) %%%%%%%%%%%%% %% 

% Excluding some signals from the scenario 
if selection_scenario ~= 1 && selection_scenario ~= 2 && selection_scenario ~= 3 && selection_scenario ~= 4
    handlerIndex = handlerIndex + 1; 
    handlerIndexFig = handlerIndexFig + 1;
    handlerFig{handlerIndex,1} = figure();
    color_vector = 'brgymk';
    handlerLegend =  1;
    legend_string = strings;

    plot(data_cres_temperature2_m_ea_celsisus_vec_downsample_1(:,1), ...
        cres_temperature2_m_ea_celsisus_vec_downsample_1(:,3), color_vector(1));
    grid on

    legend_string(handlerLegend) = strcat('$T_2$');  
    leg = legend(legend_string, 'Location', 'Best', 'FontSize', 14, 'Orientation','horizontal');
    set(leg,'Interpreter','latex');
    xlim([0 data_cres_temperature2_m_ea_celsisus_vec_downsample_1(end,1)]); % X-axis limits - TIME

    xlabel('Time [m]');
    ylabel('Temperature [ï¿½C]');
    title('Temperature 2 Heat Distribution - CRES');
    handlerNameFig{handlerIndexFig,1} = strcat('cres_temperature2_m_ea_celsius','.fig'); 

end


%% %%%%%%%%%%%%%%%%%%%%%%% TEMPERATURE 3 HEAT DIST. (CRES) %%%%%%%%%%%%% %% 

% Excluding some signals from the scenario 
if selection_scenario ~= 1 && selection_scenario ~= 2 && selection_scenario ~= 3 && selection_scenario ~= 4
    handlerIndex = handlerIndex + 1; 
    handlerIndexFig = handlerIndexFig + 1;
    handlerFig{handlerIndex,1} = figure();
    color_vector = 'brgymk';
    handlerLegend =  1;
    legend_string = strings;

    plot(data_cres_temperature3_m_ea_celsius_vec_downsample_1(:,1), ...
        cres_temperature3_m_ea_celsius_vec_downsample_1(:,3), color_vector(1));
    grid on

    legend_string(handlerLegend) = strcat('$T_3$');  
    leg = legend(legend_string, 'Location', 'Best', 'FontSize', 14, 'Orientation','horizontal');
    set(leg,'Interpreter','latex');
    xlim([0 data_cres_temperature3_m_ea_celsius_vec_downsample_1(end,1)]); % X-axis limits - TIME

    xlabel('Time [m]');
    ylabel('Temperature [ï¿½C]');
    title('Temperature 3 Heat Distribution - CRES');
    handlerNameFig{handlerIndexFig,1} = strcat('cres_temperature3_m_ea_celsius','.fig'); 

end

%% %%%%%%%%%%%%%%%%%%%%%%% TH. ACTIVE POWER HEAT PUMP (CRES) %%%%%%%%%%% %% 
handlerIndex = handlerIndex + 1; 
handlerIndexFig = handlerIndexFig + 1;
handlerFig{handlerIndex,1} = figure();
color_vector = 'brgymk';
handlerLegend =  1;
legend_string = strings;

plot(data_cres_heat_pump_m_ea_kiloWatts_vec_downsample_1(:,1), ...
    cres_heat_pump_m_ea_kiloWatts_vec_downsample_1(:,3), color_vector(1));
grid on

legend_string(handlerLegend) = strcat('$P_{th_{CRES}}$');  
leg = legend(legend_string, 'Location', 'Best', 'FontSize', 14, 'Orientation','horizontal');
set(leg,'Interpreter','latex');
xlim([0 data_cres_heat_pump_m_ea_kiloWatts_vec_downsample_1(end,1)]); % X-axis limits - TIME

xlabel('Time [m]');
ylabel('Power [kW]');
title('Thermal Active Power Heat Pump - CRES');
handlerNameFig{handlerIndexFig,1} = strcat('cres_heat_pump_m_ea_kiloWatts','.fig'); 

%% %%%%%%%%%%%%%%%%%%%%%%% TEMPERATURE BUFFER TANK (DTU) %%%%%%%%%%%%%%% %% 
handlerIndex = handlerIndex + 1; 
handlerIndexFig = handlerIndexFig + 1;
handlerFig{handlerIndex,1} = figure();
color_vector = 'brgymk';
handlerLegend =  1;
legend_string = strings;

plot(data_th_temp_0_dtu_vec_downsample_1(:,1), ...
    th_temp_0_dtu_vec_downsample_1(:,3), color_vector(1));
grid on

legend_string(handlerLegend) = strcat('$T_{1_{DTU}}$');  
leg = legend(legend_string, 'Location', 'Best', 'FontSize', 14, 'Orientation','horizontal');
set(leg,'Interpreter','latex');
xlim([0 data_th_temp_0_dtu_vec_downsample_1(end,1)]); % X-axis limits - TIME

xlabel('Time [m]');
ylabel('Temperature [°C]');
title('Temperature Heat Source Buffer Tank - DTU');
handlerNameFig{handlerIndexFig,1} = strcat('th_temp_0_dtu','.fig'); 

%% %%%%%%%%%%%%%%%%%%%%%%% MASS FLOW HEAT DISTRIBUTION FEEDER (DTU) %%%% %% 
handlerIndex = handlerIndex + 1; 
handlerIndexFig = handlerIndexFig + 1;
handlerFig{handlerIndex,1} = figure();
color_vector = 'brgymk';

plot(data_th_flow_1_dtu_vec_downsample_1(:,1), ...
    th_flow_1_dtu_vec_downsample_1(:,3), color_vector(1));
grid on

xlim([0 data_th_flow_1_dtu_vec_downsample_1(end,1)]); % X-axis limits - TIME

xlabel('Time [m]');
ylabel('Mass Flow [l/min]');
title('Mass Flow Start Heat Distribution Feeder - DTU');
handlerNameFig{handlerIndexFig,1} = strcat('th_flow_1_dtu','.fig'); 

%% %%%%%%%%%%%%%%%%%%%%%%% FWD HEAT DISTRIBUTION FEEDER (DTU) 1 %%%%%%%% %% 
handlerIndex = handlerIndex + 1; 
handlerIndexFig = handlerIndexFig + 1;
handlerFig{handlerIndex,1} = figure();
color_vector = 'brgymk';

plot(data_th_fwd_1_dtu_vec_downsample_1(:,1), ...
    th_fwd_1_dtu_vec_downsample_1(:,3), color_vector(1));
grid on

xlim([0 data_th_fwd_1_dtu_vec_downsample_1(end,1)]); % X-axis limits - TIME

xlabel('Time [m]');
ylabel('Temperature [ï¿½C]');
title('Forward Temperature Start Heat Distribution Feeder - DTU');
handlerNameFig{handlerIndexFig,1} = strcat('th_fwd_1_dtu','.fig'); 

%% %%%%%%%%%%%%%%%%%%%%%%% RETURN TEMPERATURE HEAT DIST FEEDER 1 (DTU) % %% 
handlerIndex = handlerIndex + 1; 
handlerIndexFig = handlerIndexFig + 1;
handlerFig{handlerIndex,1} = figure();
color_vector = 'brgymk';

plot(data_th_ret_1_dtu_vec_downsample_1(:,1), ...
    th_ret_1_dtu_vec_downsample_1(:,3), color_vector(1));
grid on

xlim([0 data_th_ret_1_dtu_vec_downsample_1(end,1)]); % X-axis limits - TIME

xlabel('Time [m]');
ylabel('Temperature [ï¿½C]');
title('Return Temperature Start Heat Dist Feeder - DTU');
handlerNameFig{handlerIndexFig,1} = strcat('th_ret_1_dtu','.fig'); 

%% %%%%%%%%%%%%%%%%%%%%%%% FORW. TEMPERATURE HEAT DIST FEEDER 2 (DTU) %% %% 
handlerIndex = handlerIndex + 1; 
handlerIndexFig = handlerIndexFig + 1;
handlerFig{handlerIndex,1} = figure();
color_vector = 'brgymk';

plot(data_th_fwd_2_dtu_vec_downsample_1(:,1), ...
    th_fwd_2_dtu_vec_downsample_1(:,3), color_vector(1));
grid on

xlim([0 data_th_fwd_2_dtu_vec_downsample_1(end,1)]); % X-axis limits - TIME

xlabel('Time [m]');
ylabel('Temperature [ï¿½C]');
title('Forward Temperature Midpoint Heat Distribution - DTU');
handlerNameFig{handlerIndexFig,1} = strcat('th_fwd_2_dtu','.fig'); 

%% %%%%%%%%%%%%%%%%%%%%%%% RETURN TEMPERATURE HEAT DIST FEEDER 2 (DTU) % %% 
handlerIndex = handlerIndex + 1; 
handlerIndexFig = handlerIndexFig + 1;
handlerFig{handlerIndex,1} = figure();
color_vector = 'brgymk';

plot(data_th_ret_2_dtu_vec_downsample_1(:,1), ...
    th_ret_2_dtu_vec_downsample_1(:,3), color_vector(1));
grid on

xlim([0 data_th_ret_2_dtu_vec_downsample_1(end,1)]); % X-axis limits - TIME

xlabel('Time [m]');
ylabel('Temperature [ï¿½C]');
title('Return Temperature Midpoint Heat Dist Feeder - DTU');
handlerNameFig{handlerIndexFig,1} = strcat('th_ret_2_dtu','.fig'); 

%% %%%%%%%%%%%%%%%%%%%%%%% FWD HEAT DISTRIBUTION FEEDER (DTU) 3 %%%%%%%% %% 
handlerIndex = handlerIndex + 1; 
handlerIndexFig = handlerIndexFig + 1;
handlerFig{handlerIndex,1} = figure();
color_vector = 'brgymk';

plot(data_th_fwd_3_dtu_vec_downsample_1(:,1), ...
    th_fwd_3_dtu_vec_downsample_1(:,3), color_vector(1));
grid on

xlim([0 data_th_fwd_3_dtu_vec_downsample_1(end,1)]); % X-axis limits - TIME

xlabel('Time [m]');
ylabel('Temperature [ï¿½C]');
title('Forward Temperature End Heat Distribution Feeder - DTU');
handlerNameFig{handlerIndexFig,1} = strcat('th_fwd_3_dtu','.fig'); 

%% %%%%%%%%%%%%%%%%%%%%%%% RETURN TEMPERATURE HEAT DIST FEEDER 3 (DTU) % %% 
handlerIndex = handlerIndex + 1; 
handlerIndexFig = handlerIndexFig + 1;
handlerFig{handlerIndex,1} = figure();
color_vector = 'brgymk';

plot(data_th_ret_3_dtu_vec_downsample_1(:,1), ...
    th_ret_3_dtu_vec_downsample_1(:,3), color_vector(1));
grid on

xlim([0 data_th_ret_3_dtu_vec_downsample_1(end,1)]); % X-axis limits - TIME

xlabel('Time [m]');
ylabel('Temperature [ï¿½C]');
title('Return Temperature End Heat Dist Feeder - DTU');
handlerNameFig{handlerIndexFig,1} = strcat('th_ret_3_dtu','.fig'); 

%% %%%%%%%%%%%%%%%%%%%%%%% THERMAL LOAD (DTU) %%%%%%%%%%%%%%%%%%%%%%%%%% %% 
handlerIndex = handlerIndex + 1; 
handlerIndexFig = handlerIndexFig + 1;
handlerFig{handlerIndex,1} = figure();
color_vector = 'brgymk';

plot(data_thermal_load_dtu_vec_downsample_1(:,1), ...
    thermal_load_dtu_vec_downsample_1(:,3), color_vector(1));
grid on

xlim([0 data_thermal_load_dtu_vec_downsample_1(end,1)]); % X-axis limits - TIME

xlabel('Time [m]');
ylabel('Load [kW]');
title('Thermal Load - DTU');
handlerNameFig{handlerIndexFig,1} = strcat('thermal_load_dtu','.fig');

%% %%%%%%%%%%%%%%%%%%%%%%% THERMAL SOURCE (DTU) %%%%%%%%%%%%%%%%%%%%%%%%%% %% 
handlerIndex = handlerIndex + 1; 
handlerIndexFig = handlerIndexFig + 1;
handlerFig{handlerIndex,1} = figure();
color_vector = 'brgymk';

plot(data_thermal_source_dtu_vec_downsample_1(:,1), ...
    thermal_source_dtu_vec_downsample_1(:,3), color_vector(1));
grid on

xlim([0 data_thermal_source_dtu_vec_downsample_1(end,1)]); % X-axis limits - TIME

xlabel('Time [m]');
ylabel('Power [kW]');
title('Thermal Source - DTU');
handlerNameFig{handlerIndexFig,1} = strcat('thermal_source_dtu','.fig');

%% %%%%%%%%%%%%%%%%%%%%%%% HEAT OUT CHP RSE  %%%%%%%%%%%%%%%%%%%%%%%%%%% %% 
handlerIndex = handlerIndex + 1; 
handlerIndexFig = handlerIndexFig + 1;
handlerFig{handlerIndex,1} = figure();
color_vector = 'brgymk';
handlerLegend =  1;
legend_string = strings;

plot(data_chp_heat_out_rse_vec_downsample_1(:,1), ...
    chp_heat_out_rse_vec_downsample_1(:,3), color_vector(1));
grid on

legend_string(handlerLegend) = strcat('$P_{th_{CHP}}$');  
leg = legend(legend_string, 'Location', 'Best', 'FontSize', 14, 'Orientation','horizontal');
set(leg,'Interpreter','latex');
xlim([0 data_cres_heat_pump_m_ea_kiloWatts_vec_downsample_1(end,1)]); % X-axis limits - TIME

xlabel('Time [m]');
ylabel('Power [kW]');
title('Thermal Source - DTU');
handlerNameFig{handlerIndexFig,1} = strcat('chp_heat_out_rse','.fig');

%% %%%%%%%%%%%%%%%%%%%%%%% ACTIVE POWER CHP RSE  %%%%%%%%%%%%%%%%%%%%%%% %% 
handlerIndex = handlerIndex + 1; 
handlerIndexFig = handlerIndexFig + 1;
handlerFig{handlerIndex,1} = figure();
color_vector = 'brgymk';
handlerLegend =  1;
legend_string = strings;

plot(data_active_power_chp_rse_vec_downsample_1(:,1), ...
    active_power_chp_rse_vec_downsample_1(:,3), color_vector(1));
grid on

legend_string(handlerLegend) = strcat('$P_{el_{CHP}}$');  
leg = legend(legend_string, 'Location', 'Best', 'FontSize', 14, 'Orientation','horizontal');
set(leg,'Interpreter','latex');
xlim([0 data_active_power_chp_rse_vec_downsample_1(end,1)]); % X-axis limits - TIME

xlabel('Time [m]');
ylabel('Power [kW]');
title('Active Power Setpoint RSE CHP');
handlerNameFig{handlerIndexFig,1} = strcat('active_power_chp_rse','.fig');

%% %%%%%%%%%%%%%%%%%%%%%%% PelSINref, PelSIN, SOC  %%%%%%%%%%%%%%%%%%%%% %% 
handlerIndex = handlerIndex + 1; 
handlerIndexFig = handlerIndexFig + 1;
handlerFig{handlerIndex,1} = figure();
color_vector = 'brgymk';
handlerLegend =  1;
legend_string = strings;

title('Comparison P_{el_{SIN}}, P_{el_{SIN}}^{ref} and SoC');

%%% First subplot
subplot(2,2,1)
plot(data_active_power_ref_el_sin_out_vec_downsample_1(:,1), ...
    active_power_ref_el_sin_out_vec_downsample_1(:,3), color_vector(1)); % P_{el_{SIN}}^{ref}
grid on

legend_string(handlerLegend) = strcat('$P_{el_{SIN}}^{ref}$');  
leg = legend(legend_string, 'Location', 'Best', 'FontSize', 14, 'Orientation','horizontal');
set(leg,'Interpreter','latex');
xlim([0 data_active_power_ref_el_sin_out_vec_downsample_1(end,1)]); % X-axis limits - TIME

xlabel('Time [m]');
ylabel('Power [kW]');

%%% Second subplot
subplot(2,2,2)
plot(data_active_power_el_sin_out_vec_downsample_1(:,1), ...
    active_power_el_sin_out_vec_downsample_1(:,3), color_vector(2)); % P_{el_{SIN}}
grid on

legend_string(handlerLegend) = strcat('$P_{el_{SIN}}$');  
leg = legend(legend_string, 'Location', 'Best', 'FontSize', 14, 'Orientation','horizontal');
set(leg,'Interpreter','latex');
xlim([0 data_active_power_el_sin_out_vec_downsample_1(end,1)]); % X-axis limits - TIME

xlabel('Time [m]');
ylabel('Power [kW]');

%%% Third subplot
subplot(2,2,3)
plot(data_soc_sin_vec_downsample_1(:,1), ...
    soc_sin_vec_downsample_1(:,3), color_vector(3)); % SoC
grid on

legend_string(handlerLegend) = strcat('$SoC$');  
leg = legend(legend_string, 'Location', 'Best', 'FontSize', 14, 'Orientation','horizontal');
set(leg,'Interpreter','latex');
xlim([0 data_soc_sin_vec_downsample_1(end,1)]); % X-axis limits - TIME

xlabel('Time [m]');
ylabel('SoC [%]');

%%% Fourth subplot
subplot(2,2,4)
plot(data_active_power_ref_el_sin_out_vec_downsample_1(:,1), ...
    active_power_ref_el_sin_out_vec_downsample_1(:,3), strcat('--', color_vector(1)), 'LineWidth',2); % P_{el_{SIN}}^{ref}
grid on
hold on
plot(data_active_power_el_sin_out_vec_downsample_1(:,1), ...
    active_power_el_sin_out_vec_downsample_1(:,3), strcat(':', color_vector(2)), 'LineWidth',2); % P_{el_{SIN}}
hold off

xlabel('Time [m]');
ylabel('Power [kW]');

legend_string(handlerLegend) = strcat('$P_{el_{SIN}}^{ref}$'); handlerLegend = handlerLegend + 1;
legend_string(handlerLegend) = strcat('$P_{el_{SIN}}$');  
leg = legend(legend_string, 'Location', 'Best', 'FontSize', 14, 'Orientation','horizontal');
set(leg,'Interpreter','latex');
xlim([0 data_active_power_ref_el_sin_out_vec_downsample_1(end,1)]); % X-axis limits - TIME

handlerNameFig{handlerIndexFig,1} = strcat('comparison_power_el_and_soc','.fig');

%% %%%%%%%%%%%%%%%%%%%%%%% PelCRES AND ON/OFF %%%%%%%%%%%%%%%%%%% %% 
handlerIndex = handlerIndex + 1; 
handlerIndexFig = handlerIndexFig + 1;
handlerFig{handlerIndex,1} = figure();
color_vector = 'brgymk';
handlerLegend =  1;
legend_string = strings;

title('Comparison P_{el_{CRES}} and ON/OFF'); % P_{elGF}^{mes} not stored

%%% First subplot
subplot(2,1,1)
plot(data_cres_heat_pump_m_ea_kiloWatts_vec_downsample_1(:,1), ...
    cres_heat_pump_m_ea_kiloWatts_vec_downsample_1(:,3), color_vector(1)); % P_{el_{CRES}}
grid on

legend_string(handlerLegend) = strcat('$P_{el_{CRES}}$');  
leg = legend(legend_string, 'Location', 'Best', 'FontSize', 14, 'Orientation','horizontal');
set(leg,'Interpreter','latex');
xlim([0 data_cres_heat_pump_m_ea_kiloWatts_vec_downsample_1(end,1)]); % X-axis limits - TIME

xlabel('Time [m]');
ylabel('Power [kW]');

%%% Second subplot
subplot(2,1,2)
plot(data_rse_chp_m_ea_watt_vec_downsample_1(:,1), ...
    rse_chp_m_ea_watt_vec_downsample_1(:,3), color_vector(2)); % ON/OFF
grid on

legend_string(handlerLegend) = strcat('$ON/OFF$');  
leg = legend(legend_string, 'Location', 'Best', 'FontSize', 14, 'Orientation','horizontal');
set(leg,'Interpreter','latex');
xlim([0 data_rse_chp_m_ea_watt_vec_downsample_1(end,1)]); % X-axis limits - TIME

xlabel('Time [m]');
ylabel('ON/OFF [-]');

handlerNameFig{handlerIndexFig,1} = strcat('comparison_power_el_cres_and_on-off','.fig');

%% %%%%%%%%%%%%%%%%%%%%%%% PelCHPref AND PthCHP %%%%%%%%%%%%%%%%%%%%%%%% %% 
handlerIndex = handlerIndex + 1; 
handlerIndexFig = handlerIndexFig + 1;
handlerFig{handlerIndex,1} = figure();
color_vector = 'brgymk';
handlerLegend =  1;
legend_string = strings;

title('Comparison P_{el_{CHP}}^{ref} and and P_{thCHP}'); % P_{elCHP}^{mes} not stored

%%% First subplot
subplot(2,1,1)
plot(data_active_power_chp_rse_vec_downsample_1(:,1), ...
    active_power_chp_rse_vec_downsample_1(:,3), color_vector(1)); % ON/OFF
grid on

legend_string(handlerLegend) = strcat('$P_{el_{CHP}}^{ref}$');  
leg = legend(legend_string, 'Location', 'Best', 'FontSize', 14, 'Orientation','horizontal');
set(leg,'Interpreter','latex');
xlim([0 data_active_power_chp_rse_vec_downsample_1(end,1)]); % X-axis limits - TIME

xlabel('Time [m]');
ylabel('Power [kW]');

%%% Second subplot
subplot(2,1,2)
plot(data_chp_heat_out_rse_vec_downsample_1(:,1), ...
    chp_heat_out_rse_vec_downsample_1(:,3), color_vector(2)); % ON/OFF
grid on

legend_string(handlerLegend) = strcat('$P_{th_{CHP}}$');  
leg = legend(legend_string, 'Location', 'Best', 'FontSize', 14, 'Orientation','horizontal');
set(leg,'Interpreter','latex');
xlim([0 data_chp_heat_out_rse_vec_downsample_1(end,1)]); % X-axis limits - TIME

xlabel('Time [m]');
ylabel('Power [kW]');

handlerNameFig{handlerIndexFig,1} = strcat('comparison_power_el_chp_ref_and_p_thCHP','.fig');

%% %%%%%%%%%%%%%%%%%%%%%%% VRSEref, VSINref, PelSIN, PelRSE %%%%%%%%%%%% %% 
handlerIndex = handlerIndex + 1; 
handlerIndexFig = handlerIndexFig + 1;
handlerFig{handlerIndex,1} = figure();
color_vector = 'brgymk';
handlerLegend =  1;
legend_string = strings;

title('Comparison V_{RSE}^{ref}, V_{SIN}^{ref}, P_{el_{SIN}}, and P_{el_{RSE}}');

%%% First subplot
subplot(2,3,1)
plot(data_voltage_ref_rse_out_vec_downsample_1(:,1), ...
    voltage_ref_rse_out_vec_downsample_1(:,3), color_vector(1)); % V_{RSE}^{ref}
grid on

legend_string(handlerLegend) = strcat('$V_{RSE}^{ref}$');  
leg = legend(legend_string, 'Location', 'Best', 'FontSize', 14, 'Orientation','horizontal');
set(leg,'Interpreter','latex');
xlim([0 data_voltage_ref_rse_out_vec_downsample_1(end,1)]); % X-axis limits - TIME

xlabel('Time [m]');
ylabel('Voltage [V]');

%%% Second subplot
subplot(2,3,2)
plot(data_voltage_ref_sin_out_vec_downsample_1(:,1), ...
    voltage_ref_sin_out_vec_downsample_1(:,3), color_vector(2)); % V_{SIN}^{ref}
grid on

handlerLegend = 1; % re-initialization
legend_string(handlerLegend) = strcat('$V_{SIN}^{ref}$');  
leg = legend(legend_string, 'Location', 'Best', 'FontSize', 14, 'Orientation','horizontal');
set(leg,'Interpreter','latex');
xlim([0 data_voltage_ref_sin_out_vec_downsample_1(end,1)]); % X-axis limits - TIME

xlabel('Time [m]');
ylabel('Voltage [V]');

%%% Third subplot
subplot(2,3,3)
plot(data_voltage_ref_rse_out_vec_downsample_1(:,1), ...
    voltage_ref_rse_out_vec_downsample_1(:,3), strcat('--', color_vector(1)), 'LineWidth',2); % V_{RSE}^{ref}
grid on
hold on
plot(data_voltage_ref_sin_out_vec_downsample_1(:,1), ...
    voltage_ref_sin_out_vec_downsample_1(:,3), strcat(':', color_vector(2)), 'LineWidth',2); % V_{SIN}^{ref}
grid on
hold off

handlerLegend = 1; % re-initialization
legend_string(handlerLegend) = strcat('$V_{RSE}^{ref}$');  handlerLegend = handlerLegend + 1;
legend_string(handlerLegend) = strcat('$V_{SIN}^{ref}$');  
leg = legend(legend_string, 'Location', 'Best', 'FontSize', 14, 'Orientation','horizontal');
set(leg,'Interpreter','latex');
xlim([0 data_voltage_ref_rse_out_vec_downsample_1(end,1)]); % X-axis limits - TIME

xlabel('Time [m]');
ylabel('Voltage [V]');

%%% Fourth subplot 
subplot(2,3,4)
plot(data_active_power_el_sin_out_vec_downsample_1(:,1), ...
    active_power_el_sin_out_vec_downsample_1(:,3), color_vector(1)); % P_{el_{SIN}}
grid on

handlerLegend = 1; % re-initialization
legend_string(handlerLegend) = strcat('$P_{el_{SIN}}$');  
leg = legend(legend_string, 'Location', 'Best', 'FontSize', 14, 'Orientation','horizontal');
set(leg,'Interpreter','latex');
xlim([0 data_active_power_el_sin_out_vec_downsample_1(end,1)]); % X-axis limits - TIME

xlabel('Time [m]');
ylabel('Power [kW]');

%%% Fifth subplot 
subplot(2,3,5)
plot(data_active_power_el_rse_out_vec_downsample_1(:,1), ...
    active_power_el_rse_out_vec_downsample_1(:,3), color_vector(2)); % P_{el_{RSE}}
grid on

handlerLegend = 1; % re-initialization
legend_string(handlerLegend) = strcat('$P_{el_{RSE}}$');  
leg = legend(legend_string, 'Location', 'Best', 'FontSize', 14, 'Orientation','horizontal');
set(leg,'Interpreter','latex');
xlim([0 data_active_power_el_rse_out_vec_downsample_1(end,1)]); % X-axis limits - TIME

xlabel('Time [m]');
ylabel('Power [kW]');

%%% Sixth subplot
subplot(2,3,6)
plot(data_active_power_el_sin_out_vec_downsample_1(:,1), ...
    active_power_el_sin_out_vec_downsample_1(:,3), strcat('--', color_vector(1)), 'LineWidth',2); % P_{el_{SIN}}
grid on
hold on
plot(data_active_power_el_rse_out_vec_downsample_1(:,1), ...
    active_power_el_rse_out_vec_downsample_1(:,3), strcat(':', color_vector(2)), 'LineWidth',2); % P_{el_{RSE}}
hold off

xlabel('Time [m]');
ylabel('Power [kW]');

handlerLegend = 1; % re-initialization
legend_string(handlerLegend) = strcat('$P_{el_{SIN}}$'); handlerLegend = handlerLegend + 1;
legend_string(handlerLegend) = strcat('$P_{el_{RSE}}$');  
leg = legend(legend_string, 'Location', 'Best', 'FontSize', 14, 'Orientation','horizontal');
set(leg,'Interpreter','latex');
xlim([0 data_active_power_el_sin_out_vec_downsample_1(end,1)]); % X-axis limits - TIME

handlerNameFig{handlerIndexFig,1} = strcat('comparison_voltage_and_active_power_RSE_SIN','.fig');

%% %%%%%%%%%%%%%%%%%%%%%%% VOLTAGE AT SINTEF AND RSE NODES %%%%%%%%%%%%% %% 
handlerIndex = handlerIndex + 1; 
handlerIndexFig = handlerIndexFig + 1;
handlerFig{handlerIndex,1} = figure();
color_vector = 'brgymk';
handlerLegend =  1;
legend_string = strings;

plot(data_voltage_ref_sin_out_vec_downsample_1(:,1), ...
    voltage_ref_sin_out_vec_downsample_1(:,3), color_vector(1));
grid on
hold on
plot(data_voltage_ref_rse_out_vec_downsample_1(:,1), ...
    voltage_ref_rse_out_vec_downsample_1(:,3), color_vector(2));
hold off

legend_string(handlerLegend) = strcat('$V_{SIN}^{ref}$');  handlerLegend = handlerLegend + 1;
legend_string(handlerLegend) = strcat('$V_{RSE}^{ref}$');  
leg = legend(legend_string, 'Location', 'Best', 'FontSize', 14, 'Orientation','horizontal');
set(leg,'Interpreter','latex');
xlim([0 data_voltage_ref_rse_out_vec_downsample_1(end,1)]); % X-axis limits - TIME

xlabel('Time [m]');
ylabel('Voltage [V]');
title('Comparison reference voltage RSE and TUD nodes');
handlerNameFig{handlerIndexFig,1} = strcat('comparison_reference_voltage_TUD_RSE','.fig');

%% %%%%%%%%%%%%%%%%%%%%%%% ACTIVE POWER AT SINTEF AND RSE NODES %%%%%%%% %% 
handlerIndex = handlerIndex + 1; 
handlerIndexFig = handlerIndexFig + 1;
handlerFig{handlerIndex,1} = figure();
color_vector = 'brgymk';
handlerLegend =  1;
legend_string = strings;

plot(data_active_power_el_sin_out_vec_downsample_1(:,1), ...
    active_power_el_sin_out_vec_downsample_1(:,3), color_vector(1));
grid on
hold on
plot(data_active_power_el_rse_out_vec_downsample_1(:,1), ...
    active_power_el_rse_out_vec_downsample_1(:,3), color_vector(2));
hold off

legend_string(handlerLegend) = strcat('$P_{el_{SIN}}$');  handlerLegend = handlerLegend + 1;
legend_string(handlerLegend) = strcat('$P_{el_{RSE}}$');  
leg = legend(legend_string, 'Location', 'Best', 'FontSize', 14, 'Orientation','horizontal');
set(leg,'Interpreter','latex');
xlim([0 data_active_power_el_rse_out_vec_downsample_1(end,1)]); % X-axis limits - TIME

xlabel('Time [m]');
ylabel('Power [kW]');
title('Comparison active power at RSE and TUD nodes');
handlerNameFig{handlerIndexFig,1} = strcat('comparison_active_power_TUD_RSE','.fig');

%% %%%%%% SUBPLOT ACTIVE POWER AND VOLTAGE AT SINTEF AND RSE NODES %%%%% %% 
handlerIndex = handlerIndex + 1; 
handlerIndexFig = handlerIndexFig + 1;
handlerFig{handlerIndex,1} = figure();
color_vector = 'brgymk';
handlerLegend =  1;
legend_string = strings;

title('Comparison V_{SIN}^{ref}, V_{RSE}^{ref}, P_{el_{SIN}}, and P_{el_{RSE}}');

%%% First subplot
subplot(2,1,1)
plot(data_voltage_ref_sin_out_vec_downsample_1(:,1), ...
    voltage_ref_sin_out_vec_downsample_1(:,3), color_vector(1));
grid on
hold on
plot(data_voltage_ref_rse_out_vec_downsample_1(:,1), ...
    voltage_ref_rse_out_vec_downsample_1(:,3), color_vector(2));
hold off

legend_string(handlerLegend) = strcat('$V_{SIN}^{ref}$');  handlerLegend = handlerLegend + 1;
legend_string(handlerLegend) = strcat('$V_{RSE}^{ref}$');  
leg = legend(legend_string, 'Location', 'Best', 'FontSize', 14, 'Orientation','horizontal');
set(leg,'Interpreter','latex');
xlim([0 data_voltage_ref_rse_out_vec_downsample_1(end,1)]); % X-axis limits - TIME

xlabel('Time [m]');
ylabel('Voltage [V]');

%%% Second subplot
subplot(2,1,2)
plot(data_active_power_el_sin_out_vec_downsample_1(:,1), ...
    active_power_el_sin_out_vec_downsample_1(:,3), color_vector(1));
grid on
hold on
plot(data_active_power_el_rse_out_vec_downsample_1(:,1), ...
    active_power_el_rse_out_vec_downsample_1(:,3), color_vector(2));
hold off

handlerLegend = 1; % re-initialization
legend_string(handlerLegend) = strcat('$P_{el_{SIN}}$');  handlerLegend = handlerLegend + 1;
legend_string(handlerLegend) = strcat('$P_{el_{RSE}}$');  
leg = legend(legend_string, 'Location', 'Best', 'FontSize', 14, 'Orientation','horizontal');
set(leg,'Interpreter','latex');
xlim([0 data_active_power_el_rse_out_vec_downsample_1(end,1)]); % X-axis limits - TIME

xlabel('Time [m]');
ylabel('Power [kW]');

handlerNameFig{handlerIndexFig,1} = strcat('sbuplot_voltage_active_power_RSE_SIN','.fig');

%% %%%%%%%%%%%%%%%%%%%%%%% ACTIVE POWER AT SINTEF AND RSE NODES %%%%%%%% %% 
handlerIndex = handlerIndex + 1; 
handlerIndexFig = handlerIndexFig + 1;
handlerFig{handlerIndex,1} = figure();
color_vector = 'brgymk';
handlerLegend =  1;
legend_string = strings;

plot(data_cres_heat_pump_m_ea_kiloWatts_vec_downsample_1(:,1), ...
    cres_heat_pump_m_ea_kiloWatts_vec_downsample_1(:,3), color_vector(1));
grid on
hold on
plot(data_active_power_chp_rse_vec_downsample_1(:,1), ...
    active_power_chp_rse_vec_downsample_1(:,3), color_vector(2));
hold off

legend_string(handlerLegend) = strcat('$P_{th_{CRES}}$');  handlerLegend = handlerLegend + 1;
legend_string(handlerLegend) = strcat('$P_{el_{CHP}}$');  
leg = legend(legend_string, 'Location', 'Best', 'FontSize', 14, 'Orientation','horizontal');
set(leg,'Interpreter','latex');
xlim([0 data_active_power_chp_rse_vec_downsample_1(end,1)]); % X-axis limits - TIME

xlabel('Time [m]');
ylabel('Power [kW]');
title('Comparison thermal and active power from the Heat Pump (CRES) and the CHP (RSE)');
handlerNameFig{handlerIndexFig,1} = strcat('comparison_HP_CHP_CRES_RSE','.fig');

%% %%%%%% SUBPLOT CRES HP, RSE CHP AND CONTROL SIGNAL %%%%%%%%%%%%%%%%%% %% 
handlerIndex = handlerIndex + 1; 
handlerIndexFig = handlerIndexFig + 1;
handlerFig{handlerIndex,1} = figure();
color_vector = 'brgymk';
handlerLegend =  1;
legend_string = strings;

title('Comparison P_{th_{CRES}}, P_{el_{CHP}}, and ON/OFF');

%%% First subplot
subplot(2,1,1)
plot(data_cres_heat_pump_m_ea_kiloWatts_vec_downsample_1(:,1), ...
    cres_heat_pump_m_ea_kiloWatts_vec_downsample_1(:,3), color_vector(1));
grid on
hold on
plot(data_active_power_chp_rse_vec_downsample_1(:,1), ...
    active_power_chp_rse_vec_downsample_1(:,3), color_vector(2));
hold off

legend_string(handlerLegend) = strcat('$P_{th_{CRES}}$');  handlerLegend = handlerLegend + 1;
legend_string(handlerLegend) = strcat('$P_{el_{CHP}}$');  
leg = legend(legend_string, 'Location', 'Best', 'FontSize', 14, 'Orientation','horizontal');
set(leg,'Interpreter','latex');
xlim([0 data_cres_heat_pump_m_ea_kiloWatts_vec_downsample_1(end,1)]); % X-axis limits - TIME

xlabel('Time [m]');
ylabel('Power [kW]');

%%% Second subplot
subplot(2,1,2)
plot(data_rse_chp_m_ea_watt_vec_downsample_1(:,1), ...
    rse_chp_m_ea_watt_vec_downsample_1(:,3), color_vector(1));
grid on

handlerLegend = 1; % re-initialization
legend_string(handlerLegend) = strcat('$ON/OFF$'); 
leg = legend(legend_string, 'Location', 'Best', 'FontSize', 14, 'Orientation','horizontal');
set(leg,'Interpreter','latex');
xlim([0 data_rse_chp_m_ea_watt_vec_downsample_1(end,1)]); % X-axis limits - TIME

xlabel('Time [m]');
ylabel('ON/OFF [-]');

handlerNameFig{handlerIndexFig,1} = strcat('sbuplot_power_control_signal_RSE_CRES','.fig');

%% %%%%%% SUBPLOT POWER SINTEF BESS, CTRL SETPOINT, SOC SINTEF %%%%%%%%% %% 
handlerIndex = handlerIndex + 1; 
handlerIndexFig = handlerIndexFig + 1;
handlerFig{handlerIndex,1} = figure();
color_vector = 'brgymk';
handlerLegend =  1;
legend_string = strings;

title('Comparison P_{el_{SIN}}, P_{el_{CHP}}, and SoC');

%%% First subplot
subplot(2,1,1)
plot(data_active_power_el_sin_out_vec_downsample_1(:,1), ...
    active_power_el_sin_out_vec_downsample_1(:,3), color_vector(1));
grid on
hold on
plot(data_active_power_ref_el_sin_out_vec_downsample_1(:,1), ...
    active_power_ref_el_sin_out_vec_downsample_1(:,3), color_vector(2));
hold off

legend_string(handlerLegend) = strcat('$P_{el_{SIN}}$');  handlerLegend = handlerLegend + 1;
legend_string(handlerLegend) = strcat('$P_{el_{SIN}}^{ref}$');  
leg = legend(legend_string, 'Location', 'Best', 'FontSize', 14, 'Orientation','horizontal');
set(leg,'Interpreter','latex');
xlim([0 data_active_power_el_sin_out_vec_downsample_1(end,1)]); % X-axis limits - TIME

xlabel('Time [m]');
ylabel('Power [kW]');

%%% Second subplot
subplot(2,1,2)
plot(data_soc_sin_vec_downsample_1(:,1), ...
    soc_sin_vec_downsample_1(:,3), color_vector(1));
grid on

handlerLegend = 1; % re-initialization
legend_string(handlerLegend) = strcat('$SoC$');  
leg = legend(legend_string, 'Location', 'Best', 'FontSize', 14, 'Orientation','horizontal');
set(leg,'Interpreter','latex');
xlim([0 data_soc_sin_vec_downsample_1(end,1)]); % X-axis limits - TIME

xlabel('Time [m]');
ylabel('SoC [%]');

handlerNameFig{handlerIndexFig,1} = strcat('sbuplot_power_BES_and_SoC','.fig');

%% %%%%%% SUBPLOT THERMAL AND ELECTRIC POWER CHP RSE %%%%%%%%%%%%%%%%%%% %% 
handlerIndex = handlerIndex + 1; 
handlerIndexFig = handlerIndexFig + 1;
handlerFig{handlerIndex,1} = figure();
color_vector = 'brgymk';
handlerLegend =  1;
legend_string = strings;

title('Comparison P_{th_{CHP}} and P_{el_{CHP}}');

%%% First subplot
subplot(2,1,1)
plot(data_chp_heat_out_rse_vec_downsample_1(:,1), ...
    chp_heat_out_rse_vec_downsample_1(:,3), color_vector(1));
grid on

legend_string(handlerLegend) = strcat('$P_{th_{CHP}}$');  
leg = legend(legend_string, 'Location', 'Best', 'FontSize', 14, 'Orientation','horizontal');
set(leg,'Interpreter','latex');
xlim([0 data_chp_heat_out_rse_vec_downsample_1(end,1)]); % X-axis limits - TIME

xlabel('Time [m]');
ylabel('Power [kW]');

%%% Second subplot
subplot(2,1,2)
plot(data_active_power_chp_rse_vec_downsample_1(:,1), ...
    active_power_chp_rse_vec_downsample_1(:,3), color_vector(1));
grid on

handlerLegend = 1; % re-initialization
legend_string(handlerLegend) = strcat('$P_{el_{CHP}}$');  
leg = legend(legend_string, 'Location', 'Best', 'FontSize', 14, 'Orientation','horizontal');
set(leg,'Interpreter','latex');
xlim([0 data_active_power_chp_rse_vec_downsample_1(end,1)]); % X-axis limits - TIME

xlabel('Time [m]');
ylabel('Power [kW]');
handlerNameFig{handlerIndexFig,1} = strcat('thermal_and_active_power_chp_rse','.fig');

%% %%%%%% SUBPLOT FREQUENCY AND VOLTAGE RSE AND TUD %%%%%%%%%%%%%%%%%%%% %%
% Only in the case SELECTION_SWITCH = 4 (Experiments January 26, 2024)
% The signals were no measured in the previous experiments
if selection_switch == 4
    
    handlerIndex = handlerIndex + 1; 
    handlerIndexFig = handlerIndexFig + 1;
    handlerFig{handlerIndex,1} = figure();
    color_vector = 'brgymk';
    handlerLegend =  1;
    legend_string = strings;

    title('Comparison V_{TUD}^{ref}, V_{RSE}, f_{TUD}^{ref}, and f_{RSE}');

    %%% First subplot
    subplot(2,1,1)
    plot(data_voltage_ref_rse_out_vec_downsample_1(:,1), ...
        voltage_ref_rse_out_vec_downsample_1(:,3), color_vector(1));
    grid on
    hold on
    plot(data_voltage_rse_pcc_vec_downsample_1(:,1), ...
        voltage_rse_pcc_vec_downsample_1(:,3), color_vector(2));
    hold off

    legend_string(handlerLegend) = strcat('$V_{TUD}^{ref}$'); handlerLegend = handlerLegend + 1;
    legend_string(handlerLegend) = strcat('$V_{RSE}$');  
    leg = legend(legend_string, 'Location', 'Best', 'FontSize', 14, 'Orientation','horizontal');
    set(leg,'Interpreter','latex');
    xlim([0 data_voltage_ref_rse_out_vec_downsample_1(end,1)]); % X-axis limits - TIME

    xlabel('Time [m]');
    ylabel('Voltage [V]');

    %%% Second subplot
    subplot(2,1,2)
    plot(data_frequency_ref_rse_out_vec_downsample_1(:,1), ...
        frequency_ref_rse_out_vec_downsample_1(:,3), color_vector(1));
    grid on
    hold on
    plot(data_frequency_rse_pcc_vec_downsample_1(:,1), ...
        frequency_rse_pcc_vec_downsample_1(:,3), color_vector(2));
    hold off

    handlerLegend = 1; % re-initialization
    legend_string(handlerLegend) = strcat('$f_{TUD}^{ref}$'); handlerLegend = handlerLegend + 1;
    legend_string(handlerLegend) = strcat('$f_{RSE}$');  
    leg = legend(legend_string, 'Location', 'Best', 'FontSize', 14, 'Orientation','horizontal');
    set(leg,'Interpreter','latex');
    xlim([0 data_frequency_ref_rse_out_vec_downsample_1(end,1)]); % X-axis limits - TIME

    xlabel('Time [m]');
    ylabel('Frequency [Hz]');
    handlerNameFig{handlerIndexFig,1} = strcat('voltage_and_frequency_ref_mes_RSE_TUD','.fig');
    
end

% % %%%%%% SUBPLOT FREQUENCY AND VOLTAGE SINTEF AND TUD %%%%%%%%%%%%%%%%% %%
% Only in the case SELECTION_SWITCH = 4 (Experiments January 26, 2024)
% The signals were no measured in the previous experiments
% if selection_switch == 4
%     
%     handlerIndex = handlerIndex + 1; 
%     handlerIndexFig = handlerIndexFig + 1;
%     handlerFig{handlerIndex,1} = figure();
%     color_vector = 'brgymk';
%     handlerLegend =  1;
%     legend_string = strings;
% 
%     title('Comparison V_{TUD}^{ref}, V_{SINTEF}, f_{TUD}^{ref}, and f_{SINTEF}');
% 
%     %% First subplot
%     subplot(2,1,1)
%     plot(data_voltage_ref_sin_out_vec_downsample_1(:,1), ...
%         voltage_ref_sin_out_vec_downsample_1(:,3), color_vector(1));
%     grid on
%     hold on
%     plot(data_voltage_sin_pcc_vec_downsample_1(:,1), ...
%         voltage_sin_pcc_vec_downsample_1(:,3), color_vector(2));
%     hold off
% 
%     legend_string(handlerLegend) = strcat('$V_{TUD}^{ref}$'); handlerLegend = handlerLegend + 1;
%     legend_string(handlerLegend) = strcat('$V_{SINTEF}$');  
%     leg = legend(legend_string, 'Location', 'Best', 'FontSize', 14, 'Orientation','horizontal');
%     set(leg,'Interpreter','latex');
%     xlim([0 data_voltage_ref_sin_out_vec_downsample_1(end,1)]); % X-axis limits - TIME
% 
%     xlabel('Time [m]');
%     ylabel('Voltage [V]');
% 
%     %% Second subplot
%     subplot(2,1,2)
%     plot(data_frequency_ref_rse_out_vec_downsample_1(:,1), ...
%         frequency_ref_rse_out_vec_downsample_1(:,3), color_vector(1));
%     grid on
%     hold on
%     plot(data_frequency_rse_pcc_vec_downsample_1(:,1), ...
%         frequency_rse_pcc_vec_downsample_1(:,3), color_vector(2));
%     hold off
% 
%     handlerLegend = 1; % re-initialization
%     legend_string(handlerLegend) = strcat('$f_{TUD}^{ref}$'); handlerLegend = handlerLegend + 1;
%     legend_string(handlerLegend) = strcat('$f_{SINTEF}$');  
%     leg = legend(legend_string, 'Location', 'Best', 'FontSize', 14, 'Orientation','horizontal');
%     set(leg,'Interpreter','latex');
%     xlim([0 data_frequency_ref_rse_out_vec_downsample_1(end,1)]); % X-axis limits - TIME
% 
%     xlabel('Time [m]');
%     ylabel('Frequency [Hz]');
%     handlerNameFig{handlerIndexFig,1} = strcat('voltage_and_frequency_ref_mes_SINTEF_TUD','.fig');
% 
% end

%% %%%%%%%%%%%%%%%%% SUBPLOT CRES HP AND TEMPERATURE %%%%%%%%%%%%%%%%%%% %%
if selection_scenario ~= 1 && selection_scenario ~= 2 && selection_scenario ~= 3 && selection_scenario ~= 4

    handlerIndex = handlerIndex + 1; 
    handlerIndexFig = handlerIndexFig + 1;
    handlerFig{handlerIndex,1} = figure();
    color_vector = 'brgymk';
    handlerLegend =  1;
    legend_string = strings;

    title('Comparison P_{th_{CRES}}');

    %%% First subplot
    subplot(2,1,1)
    plot(data_cres_heat_pump_m_ea_kiloWatts_vec_downsample_1(:,1), ...
        cres_heat_pump_m_ea_kiloWatts_vec_downsample_1(:,3), color_vector(1));

    legend_string(handlerLegend) = strcat('$P_{th_{CRES}}$');  
    leg = legend(legend_string, 'Location', 'Best', 'FontSize', 14, 'Orientation','horizontal');
    set(leg,'Interpreter','latex');
    xlim([0 data_cres_heat_pump_m_ea_kiloWatts_vec_downsample_1(end,1)]); % X-axis limits - TIME

    xlabel('Time [m]');
    ylabel('Power [kW]');

    %%% Second subplot
    subplot(2,1,2)
    plot(data_cres_temperature1_m_ea_celsius_vec_downsample_1(:,1), ...
        cres_temperature1_m_ea_celsius_vec_downsample_1(:,3), color_vector(1));
    grid on
    hold on
    plot(data_cres_temperature2_m_ea_celsius_vec_downsample_1(:,1), ...
        cres_temperature2_m_ea_celsius_vec_downsample_1(:,3), color_vector(2));
    plot(data_cres_temperature3_m_ea_celsius_vec_downsample_1(:,1), ...
        cres_temperature3_m_ea_celsius_vec_downsample_1(:,3), color_vector(3));
    hold off

    handlerLegend = 1; % re-initialization
    legend_string(handlerLegend) = strcat('$T_1$'); handlerLegend = handlerLegend + 1;
    legend_string(handlerLegend) = strcat('$T_1$'); handlerLegend = handlerLegend + 1;
    legend_string(handlerLegend) = strcat('$T_3$'); 
    leg = legend(legend_string, 'Location', 'Best', 'FontSize', 14, 'Orientation','horizontal');
    set(leg,'Interpreter','latex');
    xlim([0 data_frequency_ref_sin_out_vec_downsample_1(end,1)]); % X-axis limits - TIME

    xlabel('Time [m]');
    ylabel('Temperature [°C]');
    handlerNameFig{handlerIndexFig,1} = strcat('thermal_power_and_temperature_CRES','.fig');
    
end

%% %%%%%%%%%%%%%%%%% ACTIVE AND REACTIVE POWER MES CHP %%%%%%%%%%%%%%%%% %%
% Only in the case SELECTION_SWITCH = 4 (Experiments January 26, 2024)
% The signals were no measured in the previous experiments
if selection_switch == 4
    
    handlerIndex = handlerIndex + 1; 
    handlerIndexFig = handlerIndexFig + 1;
    handlerFig{handlerIndex,1} = figure();
    color_vector = 'brgymk';
    handlerLegend =  1;
    legend_string = strings;

    title('Comparison P_{el_{GF}}^{mes} and Q_{el_{GF}}^{mes}');

    %%% First subplot
    subplot(2,1,1)
    plot(data_active_power_el_chp_mes_vec_shifted_1(:,1), ...
        active_power_el_chp_mes_vec_shifted_1(:,3), color_vector(1));
    grid on

    legend_string(handlerLegend) = strcat('$P_{el_{GF}}^{mes}$');
    leg = legend(legend_string, 'Location', 'Best', 'FontSize', 14, 'Orientation','horizontal');
    set(leg,'Interpreter','latex');
    xlim([0 data_active_power_el_chp_mes_vec_shifted_1(end,1)]); % X-axis limits - TIME

    %%% Second subplot
    subplot(2,1,2)
    plot(data_reactive_power_el_chp_mes_vec_shifted_1(:,1), ...
        reactive_power_el_chp_mes_vec_shifted_1(:,3), color_vector(1));
    grid on

    handlerLegend = 1; % re-initialization
    legend_string(handlerLegend) = strcat('$Q_{el_{GF}}^{mes}$'); 
    leg = legend(legend_string, 'Location', 'Best', 'FontSize', 14, 'Orientation','horizontal');
    set(leg,'Interpreter','latex');
    xlim([0 data_reactive_power_el_chp_mes_vec_shifted_1(end,1)]); % X-axis limits - TIME

    xlabel('Time [m]');
    ylabel('Power [kVAr]');
    handlerNameFig{handlerIndexFig,1} = strcat('comparison_active_reactive_power_GF_RSE','.fig');

end

%% %%%%%%%%%%%%%%%%% ACTIVE AND REACTIVE POWER MES GF %%%%%%%%%%%%%%%%%% %%
% Only in the case SELECTION_SWITCH = 4 (Experiments January 26, 2024)
% The signals were no measured in the previous experiments
if selection_switch == 4
    
    handlerIndex = handlerIndex + 1; 
    handlerIndexFig = handlerIndexFig + 1;
    handlerFig{handlerIndex,1} = figure();
    color_vector = 'brgymk';
    handlerLegend =  1;
    legend_string = strings;

    title('Comparison P_{el_{CHP}}^{mes} and Q_{el_{CHP}}^{mes}');

    %%% First subplot
    subplot(2,1,1)
    plot(data_active_power_el_chp_mes_vec_shifted_1(:,1), ...
        active_power_el_chp_mes_vec_shifted_1(:,3), color_vector(1));
    grid on

    legend_string(handlerLegend) = strcat('$P_{el_{CHP}}^{mes}$');
    leg = legend(legend_string, 'Location', 'Best', 'FontSize', 14, 'Orientation','horizontal');
    set(leg,'Interpreter','latex');
    xlim([0 data_active_power_el_chp_mes_vec_shifted_1(end,1)]); % X-axis limits - TIME

    %%% Second subplot
    subplot(2,1,2)
    plot(data_reactive_power_el_chp_mes_vec_shifted_1(:,1), ...
        reactive_power_el_chp_mes_vec_shifted_1(:,3), color_vector(1));
    grid on

    handlerLegend = 1; % re-initialization
    legend_string(handlerLegend) = strcat('$Q_{el_{CHP}}^{mes}$'); 
    leg = legend(legend_string, 'Location', 'Best', 'FontSize', 14, 'Orientation','horizontal');
    set(leg,'Interpreter','latex');
    xlim([0 data_reactive_power_el_chp_mes_vec_shifted_1(end,1)]); % X-axis limits - TIME

    xlabel('Time [m]');
    ylabel('Power [kVAr]');
    handlerNameFig{handlerIndexFig,1} = strcat('comparison_active_reactive_power_GF_RSE','.fig');

end

%% %%%%%%%%%%%%%%%%% ADDITIONAL PLOTS DELIVERABLE %%%%%%%%%%%%%%%%%%%%%% %%
if(selection_switch == 4)
    handlerIndex = handlerIndex + 1; 
    handlerIndexFig = handlerIndexFig + 1;
    handlerFig{handlerIndex,1} = figure();
    color_vector = 'brgymk';
    handlerLegend =  1;
    legend_string = strings;

    %title('Comparison P_{el_{CHP}}^{mes} and Q_{el_{CHP}}^{mes}');

    %%% First subplot
    subplot(2,1,1)
    plot(data_th_temp_0_dtu_vec_downsample_1(:,1), ...
        th_temp_0_dtu_vec_downsample_1(:,3), color_vector(1));
    grid on
    
    legend_string(handlerLegend) = strcat('$T_{1_{DTU}}$');  
    leg = legend(legend_string, 'Location', 'Best', 'FontSize', 14, 'Orientation','horizontal');
    set(leg,'Interpreter','latex');
    xlim([0 data_th_temp_0_dtu_vec_downsample_1(end,1)]); % X-axis limits - TIME

    xlabel('Time [m]');
    ylabel('Temperature [°C]');
    %title('Temperature Heat Source Buffer Tank - DTU');

    %%% Second subplot
    subplot(2,1,2)
    plot(data_thermal_source_dtu_vec_downsample_1(:,1), ...
        thermal_source_dtu_vec_downsample_1(:,3), color_vector(1));
    grid on

    handlerLegend = 1; % re-initialization
    legend_string(handlerLegend) = strcat('$\bar{P}_{th_{DTU}}$');  
    leg = legend(legend_string, 'Location', 'Best', 'FontSize', 14, 'Orientation','horizontal');
    set(leg,'Interpreter','latex');
    xlim([0 data_thermal_source_dtu_vec_downsample_1(end,1)]); % X-axis limits - TIME

    xlabel('Time [m]');
    ylabel('Power [kW]');
    handlerNameFig{handlerIndexFig,1} = strcat('subplot_DTU_source_and_temperature','.fig');

    %%%%%%%%%%%%%%%%%%%%%%%% ANOTHER FIGURE %%%%%%%%%%%%%%%%%%%%%%%%
    handlerIndex = handlerIndex + 1; 
    handlerIndexFig = handlerIndexFig + 1;
    handlerFig{handlerIndex,1} = figure();
    color_vector = 'brgymk';
    handlerLegend =  1;
    legend_string = strings;

    %%% First subplot
    subplot(1,3,1)
    plot(data_voltage_ref_sin_out_vec_downsample_1(1:50,1), ...
        voltage_ref_sin_out_vec_downsample_1(1:50,3), color_vector(1));
    grid on
    hold on
    plot(data_voltage_ref_rse_out_vec_downsample_1(1:50,1), ...
        voltage_ref_rse_out_vec_downsample_1(1:50,3), color_vector(2));
    hold off

    legend_string(handlerLegend) = strcat('$V_{SIN}^{ref}$');  handlerLegend = handlerLegend + 1;
    legend_string(handlerLegend) = strcat('$V_{RSE}^{ref}$');  
    leg = legend(legend_string, 'Location', 'Best', 'FontSize', 14, 'Orientation','horizontal');
    set(leg,'Interpreter','latex');
    xlim([0 data_voltage_ref_sin_out_vec_downsample_1(50,1)]); % X-axis limits - TIME
    
    xlabel('Time [m]');
    ylabel('Voltage [V]');
    
    %%% Second subplot
    subplot(1,3,2)
    plot(data_reactive_power_el_sin_out_vec_downsample_1(:,1), ...
        reactive_power_el_sin_out_vec_downsample_1(:,3), color_vector(1));
    grid on
    hold on
    plot(data_reactive_power_el_rse_out_vec_downsample_1(:,1), ...
        reactive_power_el_rse_out_vec_downsample_1(:,3), color_vector(2));
    hold off
    
    handlerLegend = 1; % re-initialization
    legend_string(handlerLegend) = strcat('$Q_{el_{SIN}}$');  handlerLegend = handlerLegend + 1;
    legend_string(handlerLegend) = strcat('$Q_{el_{RSE}}$');  
    leg = legend(legend_string, 'Location', 'Best', 'FontSize', 14, 'Orientation','horizontal');
    set(leg,'Interpreter','latex');
    xlim([0 data_reactive_power_el_sin_out_vec_downsample_1(end,1)]); % X-axis limits - TIME

    xlabel('Time [m]');
    ylabel('Power [kVAr]');

    %%% Third subplot
    subplot(1,3,3)
    plot(data_frequency_ref_sin_out_vec_downsample_1(:,1), ...
        frequency_ref_sin_out_vec_downsample_1(:,3), color_vector(1));
    grid on
    hold on
    plot(data_frequency_ref_rse_out_vec_downsample_1(:,1), ...
        frequency_ref_rse_out_vec_downsample_1(:,3), color_vector(2));
    hold off

    handlerLegend = 1; % re-initialization
    legend_string(handlerLegend) = strcat('$f_{SIN}^{ref}$');  handlerLegend = handlerLegend + 1;
    legend_string(handlerLegend) = strcat('$f_{RSE}^{ref}$');  
    leg = legend(legend_string, 'Location', 'Best', 'FontSize', 14, 'Orientation','horizontal');
    set(leg,'Interpreter','latex');
    ylim([0 55]); % Y-axis limits - Frequency
    xlim([0 data_frequency_ref_sin_out_vec_downsample_1(end,1)]); % X-axis limits - TIME

    xlabel('Time [m]');
    ylabel('Frequency [Hz]');
    handlerNameFig{handlerIndexFig,1} = strcat('zoom_frequency_ref_SIN_RSE','.fig');

end

%% %%%%%%%%%%%%%%%%% ADDITIONAL PLOTS DELIVERABLE %%%%%%%%%%%%%%%%%%%%%% %%
if(selection_switch == 2 && (selection_scenario == 1 || selection_scenario == 2))
    handlerIndex = handlerIndex + 1; 
    handlerIndexFig = handlerIndexFig + 1;
    handlerFig{handlerIndex,1} = figure();
    color_vector = 'brgymk';
    handlerLegend =  1;
    legend_string = strings;

    %%% First subplot
    subplot(2,1,1)
    plot(data_reactive_power_el_sin_out_vec_downsample_1(:,1), ...
        reactive_power_el_sin_out_vec_downsample_1(:,3), color_vector(1));
    grid on
    hold on
    plot(data_reactive_power_el_rse_out_vec_downsample_1(:,1), ...
        reactive_power_el_rse_out_vec_downsample_1(:,3), color_vector(2));
    hold off
    
    legend_string(handlerLegend) = strcat('$Q_{el_{SIN}}$');  handlerLegend = handlerLegend + 1;
    legend_string(handlerLegend) = strcat('$Q_{el_{RSE}}$');  
    leg = legend(legend_string, 'Location', 'Best', 'FontSize', 14, 'Orientation','horizontal');
    set(leg,'Interpreter','latex');
    xlim([0 data_reactive_power_el_sin_out_vec_downsample_1(end,1)]); % X-axis limits - TIME

    xlabel('Time [m]');
    ylabel('Power [kVAr]');

    %%% Second subplot
    subplot(2,1,2)
    plot(data_frequency_ref_sin_out_vec_downsample_1(:,1), ...
        frequency_ref_sin_out_vec_downsample_1(:,3), color_vector(1));
    grid on
    hold on
    plot(data_frequency_ref_rse_out_vec_downsample_1(:,1), ...
        frequency_ref_rse_out_vec_downsample_1(:,3), color_vector(2));
    hold off

    handlerLegend = 1; % re-initialization
    legend_string(handlerLegend) = strcat('$f_{SIN}^{ref}$');  handlerLegend = handlerLegend + 1;
    legend_string(handlerLegend) = strcat('$f_{RSE}^{ref}$');  
    leg = legend(legend_string, 'Location', 'Best', 'FontSize', 14, 'Orientation','horizontal');
    set(leg,'Interpreter','latex');
    ylim([0 55]); % Y-axis limits - Frequency
    xlim([0 data_frequency_ref_sin_out_vec_downsample_1(end,1)]); % X-axis limits - TIME

    xlabel('Time [m]');
    ylabel('Frequency [Hz]');
    handlerNameFig{handlerIndexFig,1} = strcat('subplot_reactive_power_frequency_RSE_SINTEF','.fig');

end

%% %%%%%%%%%%%%%%%%%%%%%%% SAVE FIGURES %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% %%

% Asking for the scenario to plot
disp( ' ' );
selection_action = input('Do you wanna save the measured plots?y/n\n','s');
disp( ' ' );

% Saving only if it is asked for
if strcmp(selection_action, 'y')
    
    for i = 1 : handlerIndexFig
        savefig(handlerFig{i,1}, handlerNameFig{i,1});
        movefile(handlerNameFig{i,1}, destinationFig);
        handlerNameFig{i,1} = strrep(handlerNameFig{i,1},'fig','pdf'); % Replacing '.fig' with '.pdf'
        saveas(handlerFig{i,1}, handlerNameFig{i,1});
        movefile(handlerNameFig{i,1}, destinationFig);
        handlerNameFig{i,1} = strrep(handlerNameFig{i,1},'pdf','png'); % Replacing '.pdf' (the previous one) with '.png'
        saveas(handlerFig{i,1}, handlerNameFig{i,1});
        movefile(handlerNameFig{i,1}, destinationFig);
        handlerNameFig{i,1} = strrep(handlerNameFig{i,1},'png','eps'); % Replacing '.png' (the previous one) with '.eps'
        saveas(handlerFig{i,1}, handlerNameFig{i,1}, 'epsc'); % for colored EPS files
        movefile(handlerNameFig{i,1}, destinationFig);
    end

    % Close all figures
    clc
    close all force
    
end