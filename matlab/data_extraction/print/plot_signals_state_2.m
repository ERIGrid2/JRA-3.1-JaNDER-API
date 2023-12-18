%% %%%%%%%%%%%%%%%%%%%%%%% ELECTRIC ACTIVE POWER SINTEF TO TUD %%%%%%%%% %% 
handlerIndex = 1; 
handlerIndexFig = 1;
handlerFig{handlerIndex,1} = figure();
color_vector = 'brgymk';
handlerLegend =  1;
legend_string = strings;

plot(data_active_power_el_sin_out_vec_downsample_2(:,1), ...
    data_active_power_el_sin_out_vec_downsample_2(:,2), color_vector(1));
grid on

legend_string(handlerLegend) = strcat('$P_{el_{SIN}}$');  
leg = legend(legend_string, 'Location', 'Best', 'FontSize', 14, 'Orientation','horizontal');
set(leg,'Interpreter','latex');
xlim([0 data_active_power_el_sin_out_vec_downsample_2(end,1)]); % X-axis limits - TIME

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

plot(data_reactive_power_el_sin_out_vec_downsample_2(:,1), ...
    data_reactive_power_el_sin_out_vec_downsample_2(:,2), color_vector(1));
grid on

legend_string(handlerLegend) = strcat('$Q_{el_{SIN}}$');  
leg = legend(legend_string, 'Location', 'Best', 'FontSize', 14, 'Orientation','horizontal');
set(leg,'Interpreter','latex');
xlim([0 data_reactive_power_el_sin_out_vec_downsample_2(end,1)]); % X-axis limits - TIME

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

plot(data_active_power_ref_el_sin_out_vec_downsample_2(:,1), ...
    data_active_power_ref_el_sin_out_vec_downsample_2(:,2), color_vector(1));
grid on

legend_string(handlerLegend) = strcat('$P_{el_{SIN}}^{ref}$');  
leg = legend(legend_string, 'Location', 'Best', 'FontSize', 14, 'Orientation','horizontal');
set(leg,'Interpreter','latex');
xlim([0 data_active_power_ref_el_sin_out_vec_downsample_2(end,1)]); % X-axis limits - TIME

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

plot(data_reactive_power_ref_el_sin_out_vec_downsample_2(:,1), ...
    data_reactive_power_ref_el_sin_out_vec_downsample_2(:,2), color_vector(1));
grid on

legend_string(handlerLegend) = strcat('$Q_{el_{SIN}}^{ref}$');  
leg = legend(legend_string, 'Location', 'Best', 'FontSize', 14, 'Orientation','horizontal');
set(leg,'Interpreter','latex');
xlim([0 data_reactive_power_ref_el_sin_out_vec_downsample_2(end,1)]); % X-axis limits - TIME

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

plot(data_soc_sin_vec_downsample_2(:,1), ...
    data_soc_sin_vec_downsample_2(:,2), color_vector(1));
grid on

legend_string(handlerLegend) = strcat('$SoC$');  
leg = legend(legend_string, 'Location', 'Best', 'FontSize', 14, 'Orientation','horizontal');
set(leg,'Interpreter','latex');
xlim([0 data_soc_sin_vec_downsample_2(end,1)]); % X-axis limits - TIME

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

plot(data_voltage_ref_sin_out_vec_downsample_2(:,1), ...
    data_voltage_ref_sin_out_vec_downsample_2(:,2), color_vector(1));
grid on

legend_string(handlerLegend) = strcat('$V_{SIN}^{ref}$');  
leg = legend(legend_string, 'Location', 'Best', 'FontSize', 14, 'Orientation','horizontal');
set(leg,'Interpreter','latex');
xlim([0 data_voltage_ref_sin_out_vec_downsample_2(end,1)]); % X-axis limits - TIME

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

plot(data_frequency_ref_sin_out_vec_downsample_2(:,1), ...
    data_frequency_ref_sin_out_vec_downsample_2(:,2), color_vector(1));
grid on

legend_string(handlerLegend) = strcat('$f_{SIN}^{ref}$');  
leg = legend(legend_string, 'Location', 'Best', 'FontSize', 14, 'Orientation','horizontal');
set(leg,'Interpreter','latex');
xlim([0 data_frequency_ref_sin_out_vec_downsample_2(end,1)]); % X-axis limits - TIME

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

plot(data_active_power_el_rse_out_vec_downsample_2(:,1), ...
    data_active_power_el_rse_out_vec_downsample_2(:,2), color_vector(1));
grid on

legend_string(handlerLegend) = strcat('$P_{el_{RSE}}$');  
leg = legend(legend_string, 'Location', 'Best', 'FontSize', 14, 'Orientation','horizontal');
set(leg,'Interpreter','latex');
xlim([0 data_active_power_el_rse_out_vec_downsample_2(end,1)]); % X-axis limits - TIME

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

plot(data_reactive_power_el_rse_out_vec_downsample_2(:,1), ...
    data_reactive_power_el_rse_out_vec_downsample_2(:,2), color_vector(1));
grid on

legend_string(handlerLegend) = strcat('$Q_{el_{RSE}}$');  
leg = legend(legend_string, 'Location', 'Best', 'FontSize', 14, 'Orientation','horizontal');
set(leg,'Interpreter','latex');
xlim([0 data_reactive_power_el_rse_out_vec_downsample_2(end,1)]); % X-axis limits - TIME

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

plot(data_voltage_ref_rse_out_vec_downsample_2(:,1), ...
    data_voltage_ref_rse_out_vec_downsample_2(:,2), color_vector(1));
grid on

legend_string(handlerLegend) = strcat('$V_{RSE}^{ref}$');  
leg = legend(legend_string, 'Location', 'Best', 'FontSize', 14, 'Orientation','horizontal');
set(leg,'Interpreter','latex');
xlim([0 data_voltage_ref_rse_out_vec_downsample_2(end,1)]); % X-axis limits - TIME

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

plot(data_frequency_ref_rse_out_vec_downsample_2(:,1), ...
    data_frequency_ref_rse_out_vec_downsample_2(:,2), color_vector(1));
grid on

legend_string(handlerLegend) = strcat('$f_{RSE}^{ref}$');  
leg = legend(legend_string, 'Location', 'Best', 'FontSize', 14, 'Orientation','horizontal');
set(leg,'Interpreter','latex');
xlim([0 data_frequency_ref_rse_out_vec_downsample_2(end,1)]); % X-axis limits - TIME

xlabel('Time [m]');
ylabel('Frequency [Hz]');
title('Reference Frequency From TUD to RSE');
handlerNameFig{handlerIndexFig,1} = strcat('frequency_ref_rse_out','.fig'); 

%% %%%%%%%%%%%%%%%%%%%%%%% ON/OFF SIGNAL EHP (CRES) %%%%%%%%%%%%%%%%%%%% %% 
handlerIndex = handlerIndex + 1; 
handlerIndexFig = handlerIndexFig + 1;
handlerFig{handlerIndex,1} = figure();
color_vector = 'brgymk';
handlerLegend =  1;
legend_string = strings;

plot(data_rse_chp_m_ea_watt_vec_downsample_2(:,1), ...
    data_rse_chp_m_ea_watt_vec_downsample_2(:,2), color_vector(1));
grid on

legend_string(handlerLegend) = strcat('$ON/OFF$');  
leg = legend(legend_string, 'Location', 'Best', 'FontSize', 14, 'Orientation','horizontal');
set(leg,'Interpreter','latex');
xlim([0 data_rse_chp_m_ea_watt_vec_downsample_2(end,1)]); % X-axis limits - TIME

xlabel('Time [m]');
ylabel('Signal [-]');
title('ON/OFF Signal EHP - CRES');
handlerNameFig{handlerIndexFig,1} = strcat('rse_chp_m_ea_watt','.fig'); 

%% %%%%%%%%%%%%%%%%%%%%%%% TEMPERATURE 1 HEAT DIST. (CRES) %%%%%%%%%%%%% %% 

% Excluding some signals from the scenario 
if selection_scenario ~= 1 && selection_scenario ~= 2
    handlerIndex = handlerIndex + 1; 
    handlerIndexFig = handlerIndexFig + 1;
    handlerFig{handlerIndex,1} = figure();
    color_vector = 'brgymk';
    handlerLegend =  1;
    legend_string = strings;

    plot(data_cres_temperature1_m_ea_celsius_vec_downsample_2(:,1), ...
        data_cres_temperature1_m_ea_celsius_vec_downsample_2(:,2), color_vector(1));
    grid on

    legend_string(handlerLegend) = strcat('$T_1$');  
    leg = legend(legend_string, 'Location', 'Best', 'FontSize', 14, 'Orientation','horizontal');
    set(leg,'Interpreter','latex');
    xlim([0 data_cres_temperature1_m_ea_celsius_vec_downsample_2(end,1)]); % X-axis limits - TIME

    xlabel('Time [m]');
    ylabel('Temperature [°C]');
    title('Temperature 1 Heat Distribution - CRES');
    handlerNameFig{handlerIndexFig,1} = strcat('cres_temperature1_m_ea_celsius','.fig'); 

end

%% %%%%%%%%%%%%%%%%%%%%%%% TEMPERATURE 2 HEAT DIST. (CRES) %%%%%%%%%%%%% %% 

% Excluding some signals from the scenario 
if selection_scenario ~= 1 && selection_scenario ~= 2
    handlerIndex = handlerIndex + 1; 
    handlerIndexFig = handlerIndexFig + 1;
    handlerFig{handlerIndex,1} = figure();
    color_vector = 'brgymk';
    handlerLegend =  1;
    legend_string = strings;

    plot(data_cres_temperature2_m_ea_celsisus_vec_downsample_2(:,1), ...
        data_cres_temperature2_m_ea_celsisus_vec_downsample_2(:,2), color_vector(1));
    grid on

    legend_string(handlerLegend) = strcat('$T_2$');  
    leg = legend(legend_string, 'Location', 'Best', 'FontSize', 14, 'Orientation','horizontal');
    set(leg,'Interpreter','latex');
    xlim([0 data_cres_temperature2_m_ea_celsisus_vec_downsample_2(end,1)]); % X-axis limits - TIME

    xlabel('Time [m]');
    ylabel('Temperature [°C]');
    title('Temperature 2 Heat Distribution - CRES');
    handlerNameFig{handlerIndexFig,1} = strcat('cres_temperature2_m_ea_celsius','.fig'); 

end


%% %%%%%%%%%%%%%%%%%%%%%%% TEMPERATURE 3 HEAT DIST. (CRES) %%%%%%%%%%%%% %% 

% Excluding some signals from the scenario 
if selection_scenario ~= 1 && selection_scenario ~= 2
    handlerIndex = handlerIndex + 1; 
    handlerIndexFig = handlerIndexFig + 1;
    handlerFig{handlerIndex,1} = figure();
    color_vector = 'brgymk';
    handlerLegend =  1;
    legend_string = strings;

    plot(data_cres_temperature3_m_ea_celsius_vec_downsample_2(:,1), ...
        data_cres_temperature3_m_ea_celsius_vec_downsample_2(:,2), color_vector(1));
    grid on

    legend_string(handlerLegend) = strcat('$T_3$');  
    leg = legend(legend_string, 'Location', 'Best', 'FontSize', 14, 'Orientation','horizontal');
    set(leg,'Interpreter','latex');
    xlim([0 data_cres_temperature3_m_ea_celsius_vec_downsample_2(end,1)]); % X-axis limits - TIME

    xlabel('Time [m]');
    ylabel('Temperature [°C]');
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

plot(data_cres_heat_pump_m_ea_kiloWatts_vec_downsample_2(:,1), ...
    data_cres_heat_pump_m_ea_kiloWatts_vec_downsample_2(:,2), color_vector(1));
grid on

legend_string(handlerLegend) = strcat('$P_{th_{CRES}}$');  
leg = legend(legend_string, 'Location', 'Best', 'FontSize', 14, 'Orientation','horizontal');
set(leg,'Interpreter','latex');
xlim([0 data_cres_heat_pump_m_ea_kiloWatts_vec_downsample_2(end,1)]); % X-axis limits - TIME

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

plot(data_th_temp_0_dtu_vec_downsample_2(:,1), ...
    data_th_temp_0_dtu_vec_downsample_2(:,2), color_vector(1));
grid on

legend_string(handlerLegend) = strcat('$T_{1_{DTU}}$');  
leg = legend(legend_string, 'Location', 'Best', 'FontSize', 14, 'Orientation','horizontal');
set(leg,'Interpreter','latex');
xlim([0 data_th_temp_0_dtu_vec_downsample_2(end,1)]); % X-axis limits - TIME

xlabel('Time [m]');
ylabel('Temperature [°C]');
title('Temperature Heat Source Buffer Tank - DTU');
handlerNameFig{handlerIndexFig,1} = strcat('th_temp_0_dtu','.fig'); 

%% %%%%%%%%%%%%%%%%%%%%%%% MASS FLOW HEAT DISTRIBUTION FEEDER (DTU) %%%% %% 
handlerIndex = handlerIndex + 1; 
handlerIndexFig = handlerIndexFig + 1;
handlerFig{handlerIndex,1} = figure();
color_vector = 'brgymk';

plot(data_th_flow_1_dtu_vec_downsample_2(:,1), ...
    data_th_flow_1_dtu_vec_downsample_2(:,2), color_vector(1));
grid on

xlim([0 data_th_flow_1_dtu_vec_downsample_2(end,1)]); % X-axis limits - TIME

xlabel('Time [m]');
ylabel('Mass Flow [l/min]');
title('Mass Flow Start Heat Distribution Feeder - DTU');
handlerNameFig{handlerIndexFig,1} = strcat('th_flow_1_dtu','.fig'); 

%% %%%%%%%%%%%%%%%%%%%%%%% FWD HEAT DISTRIBUTION FEEDER (DTU) 1 %%%%%%%% %% 
handlerIndex = handlerIndex + 1; 
handlerIndexFig = handlerIndexFig + 1;
handlerFig{handlerIndex,1} = figure();
color_vector = 'brgymk';

plot(data_th_fwd_1_dtu_vec_downsample_2(:,1), ...
    data_th_fwd_1_dtu_vec_downsample_2(:,2), color_vector(1));
grid on

xlim([0 data_th_fwd_1_dtu_vec_downsample_2(end,1)]); % X-axis limits - TIME

xlabel('Time [m]');
ylabel('Temperature [°C]');
title('Forward Temperature Start Heat Distribution Feeder - DTU');
handlerNameFig{handlerIndexFig,1} = strcat('th_fwd_1_dtu','.fig'); 

%% %%%%%%%%%%%%%%%%%%%%%%% RETURN TEMPERATURE HEAT DIST FEEDER 1 (DTU) % %% 
handlerIndex = handlerIndex + 1; 
handlerIndexFig = handlerIndexFig + 1;
handlerFig{handlerIndex,1} = figure();
color_vector = 'brgymk';

plot(data_th_ret_1_dtu_vec_downsample_2(:,1), ...
    data_th_ret_1_dtu_vec_downsample_2(:,2), color_vector(1));
grid on

xlim([0 data_th_ret_1_dtu_vec_downsample_2(end,1)]); % X-axis limits - TIME

xlabel('Time [m]');
ylabel('Temperature [°C]');
title('Return Temperature Start Heat Dist Feeder - DTU');
handlerNameFig{handlerIndexFig,1} = strcat('th_ret_1_dtu','.fig'); 

%% %%%%%%%%%%%%%%%%%%%%%%% FORW. TEMPERATURE HEAT DIST FEEDER 2 (DTU) %% %% 
handlerIndex = handlerIndex + 1; 
handlerIndexFig = handlerIndexFig + 1;
handlerFig{handlerIndex,1} = figure();
color_vector = 'brgymk';

plot(data_th_fwd_2_dtu_vec_downsample_2(:,1), ...
    data_th_fwd_2_dtu_vec_downsample_2(:,2), color_vector(1));
grid on

xlim([0 data_th_fwd_2_dtu_vec_downsample_2(end,1)]); % X-axis limits - TIME

xlabel('Time [m]');
ylabel('Temperature [°C]');
title('Forward Temperature Midpoint Heat Distribution - DTU');
handlerNameFig{handlerIndexFig,1} = strcat('th_fwd_2_dtu','.fig'); 

%% %%%%%%%%%%%%%%%%%%%%%%% RETURN TEMPERATURE HEAT DIST FEEDER 2 (DTU) % %% 
handlerIndex = handlerIndex + 1; 
handlerIndexFig = handlerIndexFig + 1;
handlerFig{handlerIndex,1} = figure();
color_vector = 'brgymk';

plot(data_th_ret_2_dtu_vec_downsample_2(:,1), ...
    data_th_ret_2_dtu_vec_downsample_2(:,2), color_vector(1));
grid on

xlim([0 data_th_ret_2_dtu_vec_downsample_2(end,1)]); % X-axis limits - TIME

xlabel('Time [m]');
ylabel('Temperature [°C]');
title('Return Temperature Midpoint Heat Dist Feeder - DTU');
handlerNameFig{handlerIndexFig,1} = strcat('th_ret_2_dtu','.fig'); 

%% %%%%%%%%%%%%%%%%%%%%%%% FWD HEAT DISTRIBUTION FEEDER (DTU) 3 %%%%%%%% %% 
handlerIndex = handlerIndex + 1; 
handlerIndexFig = handlerIndexFig + 1;
handlerFig{handlerIndex,1} = figure();
color_vector = 'brgymk';

plot(data_th_fwd_3_dtu_vec_downsample_2(:,1), ...
    data_th_fwd_3_dtu_vec_downsample_2(:,2), color_vector(1));
grid on

xlim([0 data_th_fwd_3_dtu_vec_downsample_2(end,1)]); % X-axis limits - TIME

xlabel('Time [m]');
ylabel('Temperature [°C]');
title('Forward Temperature End Heat Distribution Feeder - DTU');
handlerNameFig{handlerIndexFig,1} = strcat('th_fwd_3_dtu','.fig'); 

%% %%%%%%%%%%%%%%%%%%%%%%% RETURN TEMPERATURE HEAT DIST FEEDER 3 (DTU) % %% 
handlerIndex = handlerIndex + 1; 
handlerIndexFig = handlerIndexFig + 1;
handlerFig{handlerIndex,1} = figure();
color_vector = 'brgymk';

plot(data_th_ret_3_dtu_vec_downsample_2(:,1), ...
    data_th_ret_3_dtu_vec_downsample_2(:,2), color_vector(1));
grid on

xlim([0 data_th_ret_3_dtu_vec_downsample_2(end,1)]); % X-axis limits - TIME

xlabel('Time [m]');
ylabel('Temperature [°C]');
title('Return Temperature End Heat Dist Feeder - DTU');
handlerNameFig{handlerIndexFig,1} = strcat('th_ret_3_dtu','.fig'); 

%% %%%%%%%%%%%%%%%%%%%%%%% THERMAL LOAD (DTU) %%%%%%%%%%%%%%%%%%%%%%%%%% %% 
handlerIndex = handlerIndex + 1; 
handlerIndexFig = handlerIndexFig + 1;
handlerFig{handlerIndex,1} = figure();
color_vector = 'brgymk';

plot(data_thermal_load_dtu_vec_downsample_2(:,1), ...
    data_thermal_load_dtu_vec_downsample_2(:,2), color_vector(1));
grid on

xlim([0 data_thermal_load_dtu_vec_downsample_2(end,1)]); % X-axis limits - TIME

xlabel('Time [m]');
ylabel('Load [kW]');
title('Thermal Load - DTU');
handlerNameFig{handlerIndexFig,1} = strcat('thermal_load_dtu','.fig');

%% %%%%%%%%%%%%%%%%%%%%%%% THERMAL SOURCE (DTU) %%%%%%%%%%%%%%%%%%%%%%%%%% %% 
handlerIndex = handlerIndex + 1; 
handlerIndexFig = handlerIndexFig + 1;
handlerFig{handlerIndex,1} = figure();
color_vector = 'brgymk';

plot(data_thermal_source_dtu_vec_downsample_2(:,1), ...
    data_thermal_source_dtu_vec_downsample_2(:,2), color_vector(1));
grid on

xlim([0 data_thermal_source_dtu_vec_downsample_2(end,1)]); % X-axis limits - TIME

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

plot(data_chp_heat_out_rse_vec_downsample_2(:,1), ...
    data_chp_heat_out_rse_vec_downsample_2(:,2), color_vector(1));
grid on

legend_string(handlerLegend) = strcat('$P_{th_{CHP}}$');  
leg = legend(legend_string, 'Location', 'Best', 'FontSize', 14, 'Orientation','horizontal');
set(leg,'Interpreter','latex');
xlim([0 data_cres_heat_pump_m_ea_kiloWatts_vec_downsample_2(end,1)]); % X-axis limits - TIME

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

plot(data_active_power_chp_rse_vec_downsample_2(:,1), ...
    data_active_power_chp_rse_vec_downsample_2(:,2), color_vector(1));
grid on

legend_string(handlerLegend) = strcat('$P_{th_{CHP}}$');  
leg = legend(legend_string, 'Location', 'Best', 'FontSize', 14, 'Orientation','horizontal');
set(leg,'Interpreter','latex');
xlim([0 data_active_power_chp_rse_vec_downsample_2(end,1)]); % X-axis limits - TIME

xlabel('Time [m]');
ylabel('Power [kW]');
title('Active Power Setpoint RSE CHP');
handlerNameFig{handlerIndexFig,1} = strcat('active_power_chp_rse','.fig');

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
        saveas(handlerFig{i,1}, handlerNameFig{i,1});
        movefile(handlerNameFig{i,1}, destinationFig);
    end

    % Close all figures
    clc
    close all force
    
end