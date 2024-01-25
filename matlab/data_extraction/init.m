clear all
close all
clc

%% ADD PATHS

addpath('csv_files');
addpath('mat_files');
addpath('print');

%% LOADING CSV file

folder_csv    = 'csv_files';
folder_mat    = 'mat_files';

destinationMAT = 'mat_files';

filenameOvervoltageScenario_rev1        = 'tests_december_14_2023.csv';
filenameOvervoltagePrettyScenario_rev1  = 'tests_december_14_2023_pretty.csv';
filenameUndervoltageScenario_rev1       = 'tests_december_15_2023.csv';
filenameUndervoltagePrettyScenario_rev1 = 'tests_december_15_2023_pretty.csv';
filenameUndervoltageScenario_rev2       = 'tests_january_26_2024.csv';
filenameUndervoltagePrettyScenario_rev2 = 'tests_january_26_2024_pretty.csv';

%% Simulation info

disp( ' ' );
disp( '----------------------------------------------------------------------------------');
disp( 'This file runs the MATLAB script for extracting and elaborating data from the experiments');
disp( '1  - Extracting data from the experiments on December 14 and 15, 2023 - Overvoltage scenario / Undervoltage');
disp( '2  - Cleaning, subsampling and plotting data from the experiments on December 14-15, 2023 - Overvoltage/Undervoltage scenario');
disp( '3  - Extracting data from the experiments on January 26, 2024 - Undervoltage');
disp( '4  - Cleaning, subsampling and plotting data from the experiments on January 26, 2023 - Undervoltage scenario');
disp('---------------------------------------------------------------------------------');

disp( ' ' );
selection_switch = str2double(input('Which scenario do you intend to simulate?\n','s'));
disp( ' ' );

% Switch for selecting the right scenario
switch selection_switch
    
    %% OVERVOLTAGE SCENARIO
    case 1
        
        disp( '----------------------------------------------------------------------------------');
        disp( '1  - Overvoltage scenario');
        disp( '2  - Overvoltage scenario (pretty)');
        disp( '3  - Undervoltage scenario');
        disp( '4  - Undervoltage scenario (pretty)');
        disp('---------------------------------------------------------------------------------');
        
        % Asking for the scenario to plot
        disp( ' ' );
        selection_scenario = str2double(input('Which scenario do you intend to plot?\n','s'));
        disp( ' ' );
        
        % Selecting the scenario of interest
        switch selection_scenario
            
            %%%% Overvoltage scenario
            case 1
                
                disp('Reading from csv file...')
                disp( ' ' );
                % Setup the Import Options and import the data
                opts = delimitedTextImportOptions("NumVariables", 18);

                % Specify range and delimiter
                opts.DataLines = [1, Inf];
                opts.Delimiter = ",";

                % Specify column names and types
                opts.VariableNames = ["Var1", "time", "Var3", "Var4", "Channelid", "Var6", "Var7", "Var8", "Var9", ...
                    "Var10", "Var11", "Var12", "Var13", "Samplestimestamp", "Var15", "Samplesvalue", "Var17", "Var18"];
                opts.SelectedVariableNames = ["time", "Channelid", "Samplestimestamp", "Samplesvalue"];
                opts.VariableTypes = ["string", "double", "string", "string", "categorical", "string", "string", ...
                    "string", "string", "string", "string", "string", "string", "double", "string", "double", ...
                    "string", "string"];

                % Specify file level properties
                opts.ExtraColumnsRule = "ignore";
                opts.EmptyLineRule = "read";

                % Specify variable properties
                opts = setvaropts(opts, ["Var1", "Var3", "Var4", "Var6", "Var7", "Var8", "Var9", "Var10", "Var11", ...
                    "Var12", "Var13", "Var15", "Var17", "Var18"], "WhitespaceRule", "preserve");
                opts = setvaropts(opts, ["Var1", "Var3", "Var4", "Channelid", "Var6", "Var7", "Var8", "Var9", ...
                    "Var10", "Var11", "Var12", "Var13", "Var15", "Var17", "Var18"], "EmptyFieldRule", "auto");

                % Import the data
                table = readtable(strcat(folder_csv, filesep, filenameOvervoltageScenario_rev1), opts);

                % Clear temporary variables
                clear opts
                
                % To read csv columns name
                %filename = 'tests_december_14_2023.csv';
                %formatSpec = '%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s'; % 18 columns
                %fileID = fopen(filename,'r');
                %delimiter = ',';
                %startRow = 1;
                %Array = textscan(fileID, formatSpec, 'Delimiter', delimiter, 'EmptyValue' ,NaN, ...
                %   'HeaderLines' ,startRow-1, 'ReturnOnError', false);
                %fclose(fileID);
                %Name = Array{1}(1); %  Array{2}(1); and so on
                
                %remove headers
                time_vec             = table2array(table(2:end,1)); % move from table to array data format
                channelId_vec        = table2array(table(2:end,2)); % move from table to array data format
                samplesTimestamp_vec = table2array(table(2:end,3)); % move from table to array data format
                samplesvalues_vec    = table2array(table(2:end,4)); % move from table to array data format
                
                format long % for better displaying data
                
                fileMATName = filenameOvervoltageScenario_rev1; % name MAT-file
                fileMATName = erase(fileMATName,'.csv'); % Delete substrings within strings
                
            %%%% Overvoltage scenario (pretty)
            case 2
                
                % Setup the Import Options and import the data
                opts = delimitedTextImportOptions("NumVariables", 18);

                % Specify range and delimiter
                opts.DataLines = [1, Inf];
                opts.Delimiter = ",";

                % Specify column names and types
                opts.VariableNames = ["Var1", "time", "Var3", "Var4", "Channelid", "Var6", "Var7", "Var8", "Var9", ...
                    "Var10", "Var11", "Var12", "Var13", "Samplestimestamp", "Var15", "Samplesvalue", "Var17", "Var18"];
                opts.SelectedVariableNames = ["time", "Channelid", "Samplestimestamp", "Samplesvalue"];
                opts.VariableTypes = ["string", "double", "string", "string", "categorical", "string", "string", ...
                    "string", "string", "string", "string", "string", "string", "double", "string", "double", ...
                    "string", "string"];

                % Specify file level properties
                opts.ExtraColumnsRule = "ignore";
                opts.EmptyLineRule = "read";

                % Specify variable properties
                opts = setvaropts(opts, ["Var1", "Var3", "Var4", "Var6", "Var7", "Var8", "Var9", "Var10", "Var11", ...
                    "Var12", "Var13", "Var15", "Var17", "Var18"], "WhitespaceRule", "preserve");
                opts = setvaropts(opts, ["Var1", "Var3", "Var4", "Channelid", "Var6", "Var7", "Var8", "Var9", ...
                    "Var10", "Var11", "Var12", "Var13", "Var15", "Var17", "Var18"], "EmptyFieldRule", "auto");

                % Import the data
                table = readtable(strcat(folder_csv, filesep, filenameOvervoltagePrettyScenario_rev1), opts);

                % Clear temporary variables
                clear opts
                
                % To read csv columns name
                %filename = 'tests_december_14_2023.csv';
                %formatSpec = '%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s'; % 18 columns
                %fileID = fopen(filename,'r');
                %delimiter = ',';
                %startRow = 1;
                %Array = textscan(fileID, formatSpec, 'Delimiter', delimiter, 'EmptyValue' ,NaN, ...
                %   'HeaderLines' ,startRow-1, 'ReturnOnError', false);
                %fclose(fileID);
                %Name = Array{1}(1); %  Array{2}(1); and so on
                
                %remove headers
                time_vec             = table2array(table(2:end,1)); % move from table to array data format
                channelId_vec        = table2array(table(2:end,2)); % move from table to array data format
                samplesTimestamp_vec = table2array(table(2:end,3)); % move from table to array data format
                samplesvalues_vec    = table2array(table(2:end,4)); % move from table to array data format
                
                format long % for better displaying data
                
                fileMATName = filenameOvervoltagePrettyScenario_rev1; % name MAT-file
                fileMATName = erase(fileMATName,'.csv'); % Delete substrings within strings
                
            %%%% Undervoltage scenario
            case 3
                
                disp('Reading from csv file...')
                disp( ' ' );
                % Setup the Import Options and import the data
                opts = delimitedTextImportOptions("NumVariables", 18);

                % Specify range and delimiter
                opts.DataLines = [1, Inf];
                opts.Delimiter = ",";

                % Specify column names and types
                opts.VariableNames = ["Var1", "time", "Var3", "Var4", "Channelid", "Var6", "Var7", "Var8", "Var9", ...
                    "Var10", "Var11", "Var12", "Var13", "Samplestimestamp", "Var15", "Samplesvalue", "Var17", "Var18"];
                opts.SelectedVariableNames = ["time", "Channelid", "Samplestimestamp", "Samplesvalue"];
                opts.VariableTypes = ["string", "double", "string", "string", "categorical", "string", "string", ...
                    "string", "string", "string", "string", "string", "string", "double", "string", "double", ...
                    "string", "string"];

                % Specify file level properties
                opts.ExtraColumnsRule = "ignore";
                opts.EmptyLineRule = "read";

                % Specify variable properties
                opts = setvaropts(opts, ["Var1", "Var3", "Var4", "Var6", "Var7", "Var8", "Var9", "Var10", "Var11", ...
                    "Var12", "Var13", "Var15", "Var17", "Var18"], "WhitespaceRule", "preserve");
                opts = setvaropts(opts, ["Var1", "Var3", "Var4", "Channelid", "Var6", "Var7", "Var8", "Var9", ...
                    "Var10", "Var11", "Var12", "Var13", "Var15", "Var17", "Var18"], "EmptyFieldRule", "auto");

                % Import the data
                table = readtable(strcat(folder_csv, filesep, filenameUndervoltageScenario_rev1), opts);

                % Clear temporary variables
                clear opts
                
                % To read csv columns name
                %filename = 'tests_december_14_2023.csv';
                %formatSpec = '%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s'; % 18 columns
                %fileID = fopen(filename,'r');
                %delimiter = ',';
                %startRow = 1;
                %Array = textscan(fileID, formatSpec, 'Delimiter', delimiter, 'EmptyValue' ,NaN, ...
                %   'HeaderLines' ,startRow-1, 'ReturnOnError', false);
                %fclose(fileID);
                %Name = Array{1}(1); %  Array{2}(1); and so on
                
                %remove headers
                time_vec             = table2array(table(2:end,1)); % move from table to array data format
                channelId_vec        = table2array(table(2:end,2)); % move from table to array data format
                samplesTimestamp_vec = table2array(table(2:end,3)); % move from table to array data format
                samplesvalues_vec    = table2array(table(2:end,4)); % move from table to array data format
                
                format long % for better displaying data
                
                fileMATName = filenameUndervoltageScenario_rev1; % name MAT-file
                fileMATName = erase(fileMATName,'.csv'); % Delete substrings within strings
                
            %%%% Undervoltage scenario (pretty)
            case 4
                
                % Setup the Import Options and import the data
                opts = delimitedTextImportOptions("NumVariables", 18);

                % Specify range and delimiter
                opts.DataLines = [1, Inf];
                opts.Delimiter = ",";

                % Specify column names and types
                opts.VariableNames = ["Var1", "time", "Var3", "Var4", "Channelid", "Var6", "Var7", "Var8", "Var9", ...
                    "Var10", "Var11", "Var12", "Var13", "Samplestimestamp", "Var15", "Samplesvalue", "Var17", "Var18"];
                opts.SelectedVariableNames = ["time", "Channelid", "Samplestimestamp", "Samplesvalue"];
                opts.VariableTypes = ["string", "double", "string", "string", "categorical", "string", "string", ...
                    "string", "string", "string", "string", "string", "string", "double", "string", "double", ...
                    "string", "string"];

                % Specify file level properties
                opts.ExtraColumnsRule = "ignore";
                opts.EmptyLineRule = "read";

                % Specify variable properties
                opts = setvaropts(opts, ["Var1", "Var3", "Var4", "Var6", "Var7", "Var8", "Var9", "Var10", "Var11", ...
                    "Var12", "Var13", "Var15", "Var17", "Var18"], "WhitespaceRule", "preserve");
                opts = setvaropts(opts, ["Var1", "Var3", "Var4", "Channelid", "Var6", "Var7", "Var8", "Var9", ...
                    "Var10", "Var11", "Var12", "Var13", "Var15", "Var17", "Var18"], "EmptyFieldRule", "auto");

                % Import the data
                table = readtable(strcat(folder_csv, filesep, filenameUndervoltagePrettyScenario_rev1), opts);

                % Clear temporary variables
                clear opts
                
                % To read csv columns name
                %filename = 'tests_december_14_2023.csv';
                %formatSpec = '%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s'; % 18 columns
                %fileID = fopen(filename,'r');
                %delimiter = ',';
                %startRow = 1;
                %Array = textscan(fileID, formatSpec, 'Delimiter', delimiter, 'EmptyValue' ,NaN, ...
                %   'HeaderLines' ,startRow-1, 'ReturnOnError', false);
                %fclose(fileID);
                %Name = Array{1}(1); %  Array{2}(1); and so on
                
                %remove headers
                time_vec             = table2array(table(2:end,1)); % move from table to array data format
                channelId_vec        = table2array(table(2:end,2)); % move from table to array data format
                samplesTimestamp_vec = table2array(table(2:end,3)); % move from table to array data format
                samplesvalues_vec    = table2array(table(2:end,4)); % move from table to array data format
                
                format long % for better displaying data
                
                fileMATName = filenameUndervoltagePrettyScenario_rev1; % name MAT-file
                fileMATName = erase(fileMATName,'.csv'); % Delete substrings within strings
        
        end
        
        
        disp('Extracting data...')
        disp( ' ' );
        % Initialization
        active_power_el_sin_out_vec = [];
        reactive_power_el_sin_out_vec = [];
        active_power_ref_el_sin_out_vec = [];
        reactive_power_ref_el_sin_out_vec = [];
        soc_sin_vec = [];
        active_power_el_rse_out_vec = [];
        reactive_power_el_rse_out_vec = [];
        voltage_ref_rse_out_vec = [];
        voltage_rse_pcc_vec = []; 
        frequency_rse_pcc_vec = [];
        frequency_ref_rse_out_vec = [];
        rse_chp_m_ea_watt_vec = [];
        cres_temperature1_m_ea_celsius_vec = [];
        cres_temperature2_m_ea_celsisus_vec = [];
        cres_temperature3_m_ea_celsius_vec = [];
        cres_heat_pump_m_ea_kiloWatts_vec = [];
        th_temp_0_dtu_vec = [];
        th_flow_1_dtu_vec = [];
        th_fwd_1_dtu_vec = [];
        th_ret_1_dtu_vec = [];
        th_fwd_2_dtu_vec = [];
        th_ret_2_dtu_vec = [];
        th_fwd_3_dtu_vec = [];
        th_ret_3_dtu_vec = [];
        thermal_load_dtu_vec = [];
        thermal_source_dtu_vec = [];
        chp_heat_out_rse_vec = [];
        active_power_chp_rse_vec = [];
        
    	for i = 1 : length(time_vec) %#ok<ALIGN>
           
            % Signal list available at the link: 
            % https://aitonline.sharepoint.com/:x:/r/sites/ERIGrid2.0CollaborationEnvironment/_layouts/15/Doc.aspx?sourcedoc=%7B43A89652-5E5D-4698-9B48-259066926BB7%7D&file=Signal_List_demo4.xlsx&action=default&mobileredirect=true
            switch channelId_vec(i)
                
                case 'ACTIVE_POWER_EL_SIN_out'
                    
                    % Data relative to this signal
                    active_power_el_sin_out_vec = [active_power_el_sin_out_vec; ...
                        time_vec(i), samplesTimestamp_vec(i), samplesvalues_vec(i)];
                    
                case 'REACTIVE_POWER_EL_SIN_out'
                    
                    % Data relative to this signal
                    reactive_power_el_sin_out_vec = [reactive_power_el_sin_out_vec; ...
                        time_vec(i), samplesTimestamp_vec(i), samplesvalues_vec(i)];
                    
                case 'ACTIVE_POWER_REF_EL_SIN_out'
                    
                    % Data relative to this signal
                    active_power_ref_el_sin_out_vec = [active_power_ref_el_sin_out_vec; ...
                        time_vec(i), samplesTimestamp_vec(i), samplesvalues_vec(i)];
                    
                case 'REACTIVE_POWER_REF_EL_SIN_out'
                    
                    % Data relative to this signal
                    reactive_power_ref_el_sin_out_vec = [reactive_power_ref_el_sin_out_vec;...
                        time_vec(i), samplesTimestamp_vec(i), samplesvalues_vec(i)];
                    
                case 'SOC_SIN_out'
                    
                    % Data relative to this signal
                    soc_sin_vec = [soc_sin_vec; time_vec(i), samplesTimestamp_vec(i), samplesvalues_vec(i)];
                    
                case 'VOLTAGE_REF_SIN_out'
                    
                    % Data relative to this signal
                    voltage_ref_sin_out_vec = [voltage_ref_sin_out_vec; ...
                        time_vec(i), samplesTimestamp_vec(i), samplesvalues_vec(i)];
                    
                case 'FREQUENCY_REF_SIN_out'
                    
                    % Data relative to this signal
                    frequency_ref_sin_out_vec = [frequency_ref_sin_out_vec; ...
                        time_vec(i), samplesTimestamp_vec(i), samplesvalues_vec(i)];
                    
                case 'ACTIVE_POWER_EL_RSE_out'
                    
                    % Data relative to this signal
                    active_power_el_rse_out_vec = [active_power_el_rse_out_vec; ...
                        time_vec(i), samplesTimestamp_vec(i), samplesvalues_vec(i)];
                    
                case 'REACTIVE_POWER_EL_RSE_out'
                    
                    % Data relative to this signal
                    reactive_power_el_rse_out_vec = [reactive_power_el_rse_out_vec; ...
                        time_vec(i), samplesTimestamp_vec(i), samplesvalues_vec(i)];
                    
                case 'VOLTAGE_REF_RSE_out'
                    
                    % Data relative to this signal
                    voltage_ref_rse_out_vec = [voltage_ref_rse_out_vec; ...
                        time_vec(i), samplesTimestamp_vec(i), samplesvalues_vec(i)];
                    
                case 'VOLTAGE_RSE_PCC'
                    
                    % Data relative to this signal
                    voltage_rse_pcc_vec = [voltage_rse_pcc_vec; ...
                        time_vec(i), samplesTimestamp_vec(i), samplesvalues_vec(i)]; 
                    
                case 'FREQUENCY_RSE_PCC'
                    
                    % Data relative to this signal
                    frequency_rse_pcc_vec = [frequency_rse_pcc_vec; ...
                        time_vec(i), samplesTimestamp_vec(i), samplesvalues_vec(i)]; 
                    
                case 'FREQUENCY_REF_RSE_out'
                    
                    % Data relative to this signal
                    frequency_ref_rse_out_vec = [frequency_ref_rse_out_vec; ...
                        time_vec(i), samplesTimestamp_vec(i), samplesvalues_vec(i)];
                    
                case 'RSE::CHP:M_EA_Watt'
                    
                    % Data relative to this signal
                    rse_chp_m_ea_watt_vec = [rse_chp_m_ea_watt_vec; ...
                        time_vec(i), samplesTimestamp_vec(i), samplesvalues_vec(i)];
                    
                case 'CRES::Temperature1:M_EA_Celsius.instMag'
                    
                    % Data relative to this signal
                    cres_temperature1_m_ea_celsius_vec = [cres_temperature1_m_ea_celsius_vec; ...
                        time_vec(i), samplesTimestamp_vec(i), samplesvalues_vec(i)];
                
                case 'CRES::Temperature2:M_EA_Celsius.instMag'
                    
                    % Data relative to this signal
                    cres_temperature2_m_ea_celsisus_vec = [cres_temperature2_m_ea_celsisus_vec; ...
                        time_vec(i), samplesTimestamp_vec(i), samplesvalues_vec(i)];
                                         
                case 'CRES::Temperature3:M_EA_Celsius.instMag'
                    
                    % Data relative to this signal
                    cres_temperature3_m_ea_celsius_vec = [cres_temperature3_m_ea_celsius_vec; ...
                        time_vec(i), samplesTimestamp_vec(i), samplesvalues_vec(i)];
                    
                case 'CRES::Heat_Pump:M_EA_kiloWatts.instMag'
                    
                    % Data relative to this signal
                    cres_heat_pump_m_ea_kiloWatts_vec = [cres_heat_pump_m_ea_kiloWatts_vec; ...
                        time_vec(i), samplesTimestamp_vec(i), samplesvalues_vec(i)];
                    
                case 'TH_TEMP_0_DTU'
                    
                    % Data relative to this signal
                    th_temp_0_dtu_vec = [th_temp_0_dtu_vec; ...
                        time_vec(i), samplesTimestamp_vec(i), samplesvalues_vec(i)];
                    
                case 'TH_FLOW_1_DTU'
                    
                    % Data relative to this signal
                    th_flow_1_dtu_vec = [th_flow_1_dtu_vec; ...
                        time_vec(i), samplesTimestamp_vec(i), samplesvalues_vec(i)];
                
                case 'TH_FWD_1_DTU'
                    
                    % Data relative to this signal
                    th_fwd_1_dtu_vec = [th_fwd_1_dtu_vec; ...
                        time_vec(i), samplesTimestamp_vec(i), samplesvalues_vec(i)];
                    
                case 'TH_RET_1_DTU'
                    
                    % Data relative to this signal
                    th_ret_1_dtu_vec = [th_ret_1_dtu_vec; ....
                        time_vec(i), samplesTimestamp_vec(i), samplesvalues_vec(i)];
                    
                case 'TH_FWD_2_DTU'
                    
                    % Data relative to this signal
                    th_fwd_2_dtu_vec = [th_fwd_2_dtu_vec; ...
                        time_vec(i), samplesTimestamp_vec(i), samplesvalues_vec(i)];
                    
                case 'TH_RET_2_DTU'
                    
                    % Data relative to this signal
                    th_ret_2_dtu_vec = [th_ret_2_dtu_vec; ...
                        time_vec(i), samplesTimestamp_vec(i), samplesvalues_vec(i)];
                    
                case 'TH_FWD_3_DTU'
                    
                    % Data relative to this signal
                    th_fwd_3_dtu_vec = [th_fwd_3_dtu_vec; ...
                        time_vec(i), samplesTimestamp_vec(i), samplesvalues_vec(i)];
                    
                case 'TH_RET_3_DTU'
                    
                    % Data relative to this signal
                    th_ret_3_dtu_vec = [th_ret_3_dtu_vec; ...
                        time_vec(i), samplesTimestamp_vec(i), samplesvalues_vec(i)];
                    
                case 'THERMAL_LOAD_DTU'
                    
                    % Data relative to this signal
                    thermal_load_dtu_vec = [thermal_load_dtu_vec; ...
                        time_vec(i), samplesTimestamp_vec(i), samplesvalues_vec(i)];
                    
                case 'THERMAL_SOURCE_DTU'
                    
                    % Data relative to this signal
                    thermal_source_dtu_vec = [thermal_source_dtu_vec; ...
                        time_vec(i), samplesTimestamp_vec(i), samplesvalues_vec(i)];
                    
                case 'CHP_HEAT_OUT_RSE'
                    
                    % Data relative to this signal
                    chp_heat_out_rse_vec = [chp_heat_out_rse_vec; ...
                        time_vec(i), samplesTimestamp_vec(i), samplesvalues_vec(i)];
                    
                case 'ACTIVE_POWER_CHP_RSE'
                    
                    % Data relative to this signal
                    active_power_chp_rse_vec = [active_power_chp_rse_vec; ...
                        time_vec(i), samplesTimestamp_vec(i), samplesvalues_vec(i)];
  
            end
            
        end
        
        disp('Saving the MAT-file...')
        disp( ' ' );
        
        % Saving the MAT-file
        file_name_MAT = strcat(fileMATName, '.mat');
        save(file_name_MAT, 'active_power_el_sin_out_vec', 'reactive_power_el_sin_out_vec', 'active_power_ref_el_sin_out_vec', ...
            'reactive_power_ref_el_sin_out_vec', 'soc_sin_vec', 'voltage_ref_sin_out_vec', 'frequency_ref_sin_out_vec', ...
            'active_power_el_rse_out_vec', 'reactive_power_el_rse_out_vec', 'voltage_ref_rse_out_vec', 'voltage_rse_pcc_vec', ...
            'frequency_rse_pcc_vec', 'frequency_ref_rse_out_vec', 'rse_chp_m_ea_watt_vec', 'cres_temperature1_m_ea_celsius_vec', ...
            'cres_temperature2_m_ea_celsisus_vec', 'cres_temperature3_m_ea_celsius_vec', 'cres_heat_pump_m_ea_kiloWatts_vec', ...
            'th_temp_0_dtu_vec', 'th_flow_1_dtu_vec', 'th_fwd_1_dtu_vec', 'th_ret_1_dtu_vec', 'th_fwd_2_dtu_vec', ...
            'th_ret_2_dtu_vec', 'th_fwd_3_dtu_vec', 'th_ret_3_dtu_vec', 'thermal_load_dtu_vec', 'thermal_source_dtu_vec', ...
            'chp_heat_out_rse_vec', 'active_power_chp_rse_vec');
    
        % Moving file to the right folder
        movefile(file_name_MAT, destinationMAT);
        
    %% Clearing, subsampling and plotting data
    case 2
        
        disp( '----------------------------------------------------------------------------------');
        disp( '1  - Overvoltage scenario');
        disp( '2  - Overvoltage scenario (pretty)');
        disp( '3  - Undervoltage scenario');
        disp( '4  - Undervoltage scenario (pretty)');
        disp('---------------------------------------------------------------------------------');
        
        % Asking for the scenario to plot
        disp( ' ' );
        selection_scenario = str2double(input('Which scenario do you intend to plot?\n','s'));
        disp( ' ' );
        
        % Selecting the scenario of interest
        switch selection_scenario
            
            %%%% Overvoltage scenario
            case 1
                
                fileMATName = filenameOvervoltagePrettyScenario_rev1; % name MAT-file
                fileMATName = erase(fileMATName,'.csv'); % Delete substrings within strings
                
                % Loading MAT-files
                load(strcat(folder_mat, filesep, fileMATName, '.mat'));
                close all
                clc
                
                % To align the plots. Remove the dirty part
                % COMMAND: datetime(active_power_el_sin_out_vec(XX,2), 'ConvertFrom', 'posixtime')
                shift_1_start = datetime('14-Dec-2023 09:17:45'); % related point 2568, "voltage_ref_rse_out_vec" vector
                shift_1_end   = datetime('14-Dec-2023 09:34:11'); % related point 3551, "voltage_ref_rse_out_vec" vector
                shift_2_start = datetime('14-Dec-2023 09:37:01'); % related point 3721, "voltage_ref_rse_out_vec" vector
                shift_2_end   = datetime('14-Dec-2023 09:46:11'); % related point 4129, "voltage_ref_rse_out_vec" vector
                
                % Downsampling factor
                downsampling_value_1 = 2; % parameters for the code
                downsampling_value_2 = 1; % parameters for the code
                
                % Resizing vector for LaTeX plots (Deliverable)
                disp( 'Creating necessary subvectors and downsampling data...');
                disp( ' ' );
                downsampling_meas_data

                % Plotting and saving drone state - FIRST ATTEMPT
                destinationFig = strcat('figures', filesep, '14_december_2023_attempt1');
                disp( 'Plotting data first attempt...');
                plot_signals_state_1
                
                disp( 'Closing previous plots...');
                close all
                disp( ' ' );
                
                % Plotting and saving drone state - SECOND ATTEMPT
                destinationFig = strcat('figures', filesep, '14_december_2023_attempt2');
                disp( 'Plotting data second attempt...');
                plot_signals_state_2

                disp( 'Closing previous plots...');
                close all
                disp( ' ' );
                
            %%%% Overvoltage scenario (pretty)
            case 2
                
                fileMATName = filenameOvervoltagePrettyScenario_rev1; % name MAT-file
                fileMATName = erase(fileMATName,'.csv'); % Delete substrings within strings
                
                % Loading MAT-files
                load(strcat(folder_mat, filesep, fileMATName, '.mat'));
                close all
                clc
                
                % To align the plots. Remove the dirty part
                % COMMAND: datetime(active_power_el_sin_out_vec(XX,2), 'ConvertFrom', 'posixtime')
                shift_1_start = datetime('14-Dec-2023 09:17:45'); % related point 2568, "voltage_ref_rse_out_vec" vector
                shift_1_end   = datetime('14-Dec-2023 09:34:11'); % related point 3551, "voltage_ref_rse_out_vec" vector
                shift_2_start = datetime('14-Dec-2023 09:37:01'); % related point 3721, "voltage_ref_rse_out_vec" vector
                shift_2_end   = datetime('14-Dec-2023 09:46:11'); % related point 4129, "voltage_ref_rse_out_vec" vector
                
                % Downsampling factor
                downsampling_value_1 = 2; % parameters for the code
                downsampling_value_2 = 1; % parameters for the code
                
                % Resizing vector for LaTeX plots (Deliverable)
                disp( 'Creating necessary subvectors and downsampling data...');
                disp( ' ' );
                downsampling_meas_data

                % Plotting and saving drone state - FIRST ATTEMPT
                destinationFig = strcat('figures', filesep, '14_december_2023_pretty_attempt1');
                disp( 'Plotting data first attempt...');
                disp( ' ' );
                plot_signals_state_1
                
                disp( 'Closing previous plots...');
                close all
                disp( ' ' );
                
                % Plotting and saving drone state - SECOND ATTEMPT
                destinationFig = strcat('figures', filesep, '14_december_2023_pretty_attempt2');
                disp( 'Plotting data second attempt...');
                disp( ' ' );
                plot_signals_state_2

                disp( 'Closing previous plots...');
                close all
                disp( ' ' );
                
            %%%% Undervoltage scenario
            case 3
                
                fileMATName = filenameUndervoltagePrettyScenario_rev1; % name MAT-file
                fileMATName = erase(fileMATName,'.csv'); % Delete substrings within strings
                
                % Loading MAT-files
                load(strcat(folder_mat, filesep, fileMATName, '.mat'));
                close all
                clc
                
                % To align the plots. Remove the dirty part
                % COMMAND: datetime(active_power_el_sin_out_vec(XX,2), 'ConvertFrom', 'posixtime')
                shift_1_start = datetime('15-Dec-2023 11:00:27'); % related point 570, "voltage_ref_rse_out_vec" vector
                shift_1_end   = datetime('15-Dec-2023 11:24:37'); % related point 1037, "voltage_ref_rse_out_vec" vector
                
                % Downsampling factor
                downsampling_value_1 = 2; % parameters for the code
                
                % Resizing vector for LaTeX plots (Deliverable)
                disp( 'Creating necessary subvectors and downsampling data...');
                disp( ' ' );
                downsampling_meas_data

                % Plotting and saving drone state - FIRST ATTEMPT
                destinationFig = strcat('figures', filesep, '15_december_2023_attempt1');
                disp( 'Plotting data first attempt...');
                plot_signals_state_1
                
                disp( 'Closing previous plots...');
                close all
                disp( ' ' );
                
                
            %%%% Overvoltage scenario (pretty)
            case 4
                
                fileMATName = filenameUndervoltagePrettyScenario_rev1; % name MAT-file
                fileMATName = erase(fileMATName,'.csv'); % Delete substrings within strings
                
                % Loading MAT-files
                load(strcat(folder_mat, filesep, fileMATName, '.mat'));
                close all
                clc
                
                % To align the plots. Remove the dirty part
                % COMMAND: datetime(active_power_el_sin_out_vec(XX,2), 'ConvertFrom', 'posixtime')
                shift_1_start = datetime('15-Dec-2023 11:00:27'); % related point 570, "voltage_ref_rse_out_vec" vector
                shift_1_end   = datetime('15-Dec-2023 11:24:37'); % related point 1037, "voltage_ref_rse_out_vec" vector
                
                % Downsampling factor
                downsampling_value_1 = 2; % parameters for the code
                
                % Resizing vector for LaTeX plots (Deliverable)
                disp( 'Creating necessary subvectors and downsampling data...');
                disp( ' ' );
                downsampling_meas_data

                % Plotting and saving drone state - FIRST ATTEMPT
                destinationFig = strcat('figures', filesep, '15_december_2023_pretty_attempt1');
                disp( 'Plotting data first attempt...');
                plot_signals_state_1
                
                disp( 'Closing previous plots...');
                close all
                disp( ' ' );
                
        end
        
    %% UNDERVOLTAGE SCENARIO
    case 3
        
        disp( '----------------------------------------------------------------------------------');
        disp( '1  - Undervoltage scenario');
        disp( '2  - Undervoltage scenario (pretty)');
        disp('---------------------------------------------------------------------------------');
        
        % Asking for the scenario to plot
        disp( ' ' );
        selection_scenario = str2double(input('Which scenario do you intend to plot?\n','s'));
        disp( ' ' );
        
        % Selecting the scenario of interest
        switch selection_scenario
                
            %%%% Undervoltage scenario
            case 1
                
                disp('Reading from csv file...')
                disp( ' ' );
                % Setup the Import Options and import the data
                opts = delimitedTextImportOptions("NumVariables", 18);

                % Specify range and delimiter
                opts.DataLines = [1, Inf];
                opts.Delimiter = ",";

                % Specify column names and types
                opts.VariableNames = ["Var1", "time", "Var3", "Var4", "Channelid", "Var6", "Var7", "Var8", "Var9", ...
                    "Var10", "Var11", "Var12", "Var13", "Samplestimestamp", "Var15", "Samplesvalue", "Var17", "Var18"];
                opts.SelectedVariableNames = ["time", "Channelid", "Samplestimestamp", "Samplesvalue"];
                opts.VariableTypes = ["string", "double", "string", "string", "categorical", "string", "string", ...
                    "string", "string", "string", "string", "string", "string", "double", "string", "double", ...
                    "string", "string"];

                % Specify file level properties
                opts.ExtraColumnsRule = "ignore";
                opts.EmptyLineRule = "read";

                % Specify variable properties
                opts = setvaropts(opts, ["Var1", "Var3", "Var4", "Var6", "Var7", "Var8", "Var9", "Var10", "Var11", ...
                    "Var12", "Var13", "Var15", "Var17", "Var18"], "WhitespaceRule", "preserve");
                opts = setvaropts(opts, ["Var1", "Var3", "Var4", "Channelid", "Var6", "Var7", "Var8", "Var9", ...
                    "Var10", "Var11", "Var12", "Var13", "Var15", "Var17", "Var18"], "EmptyFieldRule", "auto");

                % Import the data
                table = readtable(strcat(folder_csv, filesep, filenameUndervoltageScenario_rev2), opts);

                % Clear temporary variables
                clear opts
                
                % To read csv columns name
                %filename = 'tests_december_14_2023.csv';
                %formatSpec = '%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s'; % 18 columns
                %fileID = fopen(filename,'r');
                %delimiter = ',';
                %startRow = 1;
                %Array = textscan(fileID, formatSpec, 'Delimiter', delimiter, 'EmptyValue' ,NaN, ...
                %   'HeaderLines' ,startRow-1, 'ReturnOnError', false);
                %fclose(fileID);
                %Name = Array{1}(1); %  Array{2}(1); and so on
                
                %remove headers
                time_vec             = table2array(table(2:end,1)); % move from table to array data format
                channelId_vec        = table2array(table(2:end,2)); % move from table to array data format
                samplesTimestamp_vec = table2array(table(2:end,3)); % move from table to array data format
                samplesvalues_vec    = table2array(table(2:end,4)); % move from table to array data format
                
                format long % for better displaying data
                
                fileMATName = filenameUndervoltageScenario_rev1; % name MAT-file
                fileMATName = erase(fileMATName,'.csv'); % Delete substrings within strings
                
            %%%% Undervoltage scenario (pretty)
            case 2
                
                % Setup the Import Options and import the data
                opts = delimitedTextImportOptions("NumVariables", 18);

                % Specify range and delimiter
                opts.DataLines = [1, Inf];
                opts.Delimiter = ",";

                % Specify column names and types
                opts.VariableNames = ["Var1", "time", "Var3", "Var4", "Channelid", "Var6", "Var7", "Var8", "Var9", ...
                    "Var10", "Var11", "Var12", "Var13", "Samplestimestamp", "Var15", "Samplesvalue", "Var17", "Var18"];
                opts.SelectedVariableNames = ["time", "Channelid", "Samplestimestamp", "Samplesvalue"];
                opts.VariableTypes = ["string", "double", "string", "string", "categorical", "string", "string", ...
                    "string", "string", "string", "string", "string", "string", "double", "string", "double", ...
                    "string", "string"];

                % Specify file level properties
                opts.ExtraColumnsRule = "ignore";
                opts.EmptyLineRule = "read";

                % Specify variable properties
                opts = setvaropts(opts, ["Var1", "Var3", "Var4", "Var6", "Var7", "Var8", "Var9", "Var10", "Var11", ...
                    "Var12", "Var13", "Var15", "Var17", "Var18"], "WhitespaceRule", "preserve");
                opts = setvaropts(opts, ["Var1", "Var3", "Var4", "Channelid", "Var6", "Var7", "Var8", "Var9", ...
                    "Var10", "Var11", "Var12", "Var13", "Var15", "Var17", "Var18"], "EmptyFieldRule", "auto");

                % Import the data
                table = readtable(strcat(folder_csv, filesep, filenameUndervoltagePrettyScenario_rev2), opts);

                % Clear temporary variables
                clear opts
                
                % To read csv columns name
                %filename = 'tests_december_14_2023.csv';
                %formatSpec = '%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s'; % 18 columns
                %fileID = fopen(filename,'r');
                %delimiter = ',';
                %startRow = 1;
                %Array = textscan(fileID, formatSpec, 'Delimiter', delimiter, 'EmptyValue' ,NaN, ...
                %   'HeaderLines' ,startRow-1, 'ReturnOnError', false);
                %fclose(fileID);
                %Name = Array{1}(1); %  Array{2}(1); and so on
                
                %remove headers
                time_vec             = table2array(table(2:end,1)); % move from table to array data format
                channelId_vec        = table2array(table(2:end,2)); % move from table to array data format
                samplesTimestamp_vec = table2array(table(2:end,3)); % move from table to array data format
                samplesvalues_vec    = table2array(table(2:end,4)); % move from table to array data format
                
                format long % for better displaying data
                
                fileMATName = filenameUndervoltagePrettyScenario_rev1; % name MAT-file
                fileMATName = erase(fileMATName,'.csv'); % Delete substrings within strings
        
        end
        
        
        disp('Extracting data...')
        disp( ' ' );
        % Initialization
        active_power_el_sin_out_vec = [];
        reactive_power_el_sin_out_vec = [];
        active_power_ref_el_sin_out_vec = [];
        reactive_power_ref_el_sin_out_vec = [];
        soc_sin_vec = [];
        voltage_sin_pcc_vec = []; 
        frequency_sin_pcc_vec = [];
        voltage_ref_sin_out_vec = [];
        frequency_ref_sin_out_vec = [];
        active_power_el_rse_out_vec = [];
        reactive_power_el_rse_out_vec = [];
        voltage_ref_rse_out_vec = [];
        voltage_rse_pcc_vec = []; 
        frequency_rse_pcc_vec = [];
        frequency_ref_rse_out_vec = [];
        rse_chp_m_ea_watt_vec = [];
        cres_temperature1_m_ea_celsius_vec = [];
        cres_temperature2_m_ea_celsisus_vec = [];
        cres_temperature3_m_ea_celsius_vec = [];
        cres_heat_pump_m_ea_kiloWatts_vec = [];
        th_temp_0_dtu_vec = [];
        th_flow_1_dtu_vec = [];
        th_fwd_1_dtu_vec = [];
        th_ret_1_dtu_vec = [];
        th_fwd_2_dtu_vec = [];
        th_ret_2_dtu_vec = [];
        th_fwd_3_dtu_vec = [];
        th_ret_3_dtu_vec = [];
        thermal_load_dtu_vec = [];
        thermal_source_dtu_vec = [];
        chp_heat_out_rse_vec = [];
        active_power_chp_rse_vec = [];
        active_power_el_gf_mes_vec = [];
        reactive_power_el_gf_mes_vec = [];
        active_power_el_chp_mes_vec = [];
        reactive_power_el_chp_mes_vec = [];
        
    	for i = 1 : length(time_vec) %#ok<ALIGN>
           
            % Signal list available at the link: 
            % https://aitonline.sharepoint.com/:x:/r/sites/ERIGrid2.0CollaborationEnvironment/_layouts/15/Doc.aspx?sourcedoc=%7B43A89652-5E5D-4698-9B48-259066926BB7%7D&file=Signal_List_demo4.xlsx&action=default&mobileredirect=true
            switch channelId_vec(i)
                
                case 'ACTIVE_POWER_EL_SIN_out'
                    
                    % Data relative to this signal
                    active_power_el_sin_out_vec = [active_power_el_sin_out_vec; ...
                        time_vec(i), samplesTimestamp_vec(i), samplesvalues_vec(i)];
                    
                case 'REACTIVE_POWER_EL_SIN_out'
                    
                    % Data relative to this signal
                    reactive_power_el_sin_out_vec = [reactive_power_el_sin_out_vec; ...
                        time_vec(i), samplesTimestamp_vec(i), samplesvalues_vec(i)];
                    
                case 'ACTIVE_POWER_REF_EL_SIN_out'
                    
                    % Data relative to this signal
                    active_power_ref_el_sin_out_vec = [active_power_ref_el_sin_out_vec; ...
                        time_vec(i), samplesTimestamp_vec(i), samplesvalues_vec(i)];
                    
                case 'REACTIVE_POWER_REF_EL_SIN_out'
                    
                    % Data relative to this signal
                    reactive_power_ref_el_sin_out_vec = [reactive_power_ref_el_sin_out_vec;...
                        time_vec(i), samplesTimestamp_vec(i), samplesvalues_vec(i)];
                    
                case 'SOC_SIN_out'
                    
                    % Data relative to this signal
                    soc_sin_vec = [soc_sin_vec; time_vec(i), samplesTimestamp_vec(i), samplesvalues_vec(i)];
                    
                case 'VOLTAGE_EL_SIN_out'
                    
                    % Data relative to this signal
                    voltage_sin_pcc_vec = [voltage_sin_pcc_vec; ...
                        time_vec(i), samplesTimestamp_vec(i), samplesvalues_vec(i)]; 
                    
                case 'FREQUENCY_SIN_PCC'
                    
                    % Data relative to this signal
                    frequency_sin_pcc_vec = [frequency_sin_pcc_vec; ...
                        time_vec(i), samplesTimestamp_vec(i), samplesvalues_vec(i)]; 
                    
                case 'VOLTAGE_REF_SIN_out'
                    
                    % Data relative to this signal
                    voltage_ref_sin_out_vec = [voltage_ref_sin_out_vec; ...
                        time_vec(i), samplesTimestamp_vec(i), samplesvalues_vec(i)];
                    
                case 'FREQUENCY_REF_SIN_out'
                    
                    % Data relative to this signal
                    frequency_ref_sin_out_vec = [frequency_ref_sin_out_vec; ...
                        time_vec(i), samplesTimestamp_vec(i), samplesvalues_vec(i)];
                    
                case 'ACTIVE_POWER_EL_RSE_out'
                    
                    % Data relative to this signal
                    active_power_el_rse_out_vec = [active_power_el_rse_out_vec; ...
                        time_vec(i), samplesTimestamp_vec(i), samplesvalues_vec(i)];
                    
                case 'REACTIVE_POWER_EL_RSE_out'
                    
                    % Data relative to this signal
                    reactive_power_el_rse_out_vec = [reactive_power_el_rse_out_vec; ...
                        time_vec(i), samplesTimestamp_vec(i), samplesvalues_vec(i)];
                    
                case 'VOLTAGE_REF_RSE_out'
                    
                    % Data relative to this signal
                    voltage_ref_rse_out_vec = [voltage_ref_rse_out_vec; ...
                        time_vec(i), samplesTimestamp_vec(i), samplesvalues_vec(i)];
                    
                case 'VOLTAGE_RSE_PCC'
                    
                    % Data relative to this signal
                    voltage_rse_pcc_vec = [voltage_rse_pcc_vec; ...
                        time_vec(i), samplesTimestamp_vec(i), samplesvalues_vec(i)]; 
                    
                case 'FREQUENCY_RSE_PCC'
                    
                    % Data relative to this signal
                    frequency_rse_pcc_vec = [frequency_rse_pcc_vec; ...
                        time_vec(i), samplesTimestamp_vec(i), samplesvalues_vec(i)]; 
                    
                case 'FREQUENCY_REF_RSE_out'
                    
                    % Data relative to this signal
                    frequency_ref_rse_out_vec = [frequency_ref_rse_out_vec; ...
                        time_vec(i), samplesTimestamp_vec(i), samplesvalues_vec(i)];
                    
                case 'RSE::CHP:M_EA_Watt'
                    
                    % Data relative to this signal
                    rse_chp_m_ea_watt_vec = [rse_chp_m_ea_watt_vec; ...
                        time_vec(i), samplesTimestamp_vec(i), samplesvalues_vec(i)];
                    
                case 'CRES::Temperature1:M_EA_Celsius.instMag'
                    
                    % Data relative to this signal
                    cres_temperature1_m_ea_celsius_vec = [cres_temperature1_m_ea_celsius_vec; ...
                        time_vec(i), samplesTimestamp_vec(i), samplesvalues_vec(i)];
                
                case 'CRES::Temperature2:M_EA_Celsius.instMag'
                    
                    % Data relative to this signal
                    cres_temperature2_m_ea_celsisus_vec = [cres_temperature2_m_ea_celsisus_vec; ...
                        time_vec(i), samplesTimestamp_vec(i), samplesvalues_vec(i)];
                                         
                case 'CRES::Temperature3:M_EA_Celsius.instMag'
                    
                    % Data relative to this signal
                    cres_temperature3_m_ea_celsius_vec = [cres_temperature3_m_ea_celsius_vec; ...
                        time_vec(i), samplesTimestamp_vec(i), samplesvalues_vec(i)];
                    
                case 'CRES::Heat_Pump:M_EA_kiloWatts.instMag'
                    
                    % Data relative to this signal
                    cres_heat_pump_m_ea_kiloWatts_vec = [cres_heat_pump_m_ea_kiloWatts_vec; ...
                        time_vec(i), samplesTimestamp_vec(i), samplesvalues_vec(i)];
                    
                case 'TH_TEMP_0_DTU'
                    
                    % Data relative to this signal
                    th_temp_0_dtu_vec = [th_temp_0_dtu_vec; ...
                        time_vec(i), samplesTimestamp_vec(i), samplesvalues_vec(i)];
                    
                case 'TH_FLOW_1_DTU'
                    
                    % Data relative to this signal
                    th_flow_1_dtu_vec = [th_flow_1_dtu_vec; ...
                        time_vec(i), samplesTimestamp_vec(i), samplesvalues_vec(i)];
                
                case 'TH_FWD_1_DTU'
                    
                    % Data relative to this signal
                    th_fwd_1_dtu_vec = [th_fwd_1_dtu_vec; ...
                        time_vec(i), samplesTimestamp_vec(i), samplesvalues_vec(i)];
                    
                case 'TH_RET_1_DTU'
                    
                    % Data relative to this signal
                    th_ret_1_dtu_vec = [th_ret_1_dtu_vec; ...
                        time_vec(i), samplesTimestamp_vec(i), samplesvalues_vec(i)];
                    
                case 'TH_FWD_2_DTU'
                    
                    % Data relative to this signal
                    th_fwd_2_dtu_vec = [th_fwd_2_dtu_vec; ...
                        time_vec(i), samplesTimestamp_vec(i), samplesvalues_vec(i)];
                    
                case 'TH_RET_2_DTU'
                    
                    % Data relative to this signal
                    th_ret_2_dtu_vec = [th_ret_2_dtu_vec; ...
                        time_vec(i), samplesTimestamp_vec(i), samplesvalues_vec(i)];
                    
                case 'TH_FWD_3_DTU'
                    
                    % Data relative to this signal
                    th_fwd_3_dtu_vec = [th_fwd_3_dtu_vec; ...
                        time_vec(i), samplesTimestamp_vec(i), samplesvalues_vec(i)];
                    
                case 'TH_RET_3_DTU'
                    
                    % Data relative to this signal
                    th_ret_3_dtu_vec = [th_ret_3_dtu_vec; ...
                        time_vec(i), samplesTimestamp_vec(i), samplesvalues_vec(i)];
                    
                case 'THERMAL_LOAD_DTU'
                    
                    % Data relative to this signal
                    thermal_load_dtu_vec = [thermal_load_dtu_vec; ...
                        time_vec(i), samplesTimestamp_vec(i), samplesvalues_vec(i)];
                    
                case 'THERMAL_SOURCE_DTU'
                    
                    % Data relative to this signal
                    thermal_source_dtu_vec = [thermal_source_dtu_vec; ...
                        time_vec(i), samplesTimestamp_vec(i), samplesvalues_vec(i)];
                    
                case 'CHP_HEAT_OUT_RSE'
                    
                    % Data relative to this signal
                    chp_heat_out_rse_vec = [chp_heat_out_rse_vec; ...
                        time_vec(i), samplesTimestamp_vec(i), samplesvalues_vec(i)];
                    
                case 'ACTIVE_POWER_CHP_RSE'
                    
                    % Data relative to this signal
                    active_power_chp_rse_vec = [active_power_chp_rse_vec; ...
                        time_vec(i), samplesTimestamp_vec(i), samplesvalues_vec(i)];
                                    
                case 'ACTIVE_POWER_EL_GF_MES'
                    
                    % Data relative to this signal
                    active_power_el_gf_mes_vec = [active_power_el_gf_mes_vec; ...
                        time_vec(i), samplesTimestamp_vec(i), samplesvalues_vec(i)];
                    
                case 'REACTIVE_POWER_EL_GF_MES'
                    
                    % Data relative to this signal
                    reactive_power_el_gf_mes_vec = [reactive_power_el_gf_mes_vec; ...
                        time_vec(i), samplesTimestamp_vec(i), samplesvalues_vec(i)];
                    
                case 'ACTIVE_POWER_EL_CHP_MES'
                    
                    % Data relative to this signal
                    active_power_el_chp_mes_vec = [active_power_el_chp_mes_vec; ...
                        time_vec(i), samplesTimestamp_vec(i), samplesvalues_vec(i)];
                    
                case 'REACTIVE_POWER_EL_CHP_MES'
                    
                    % Data relative to this signal
                    reactive_power_el_chp_mes_vec = [reactive_power_el_chp_mes_vec; ...
                        time_vec(i), samplesTimestamp_vec(i), samplesvalues_vec(i)];
                    
            end
            
        end
        
        disp('Saving the MAT-file...')
        disp( ' ' );
        
        % Saving the MAT-file
        file_name_MAT = strcat(fileMATName, '.mat');
        save(file_name_MAT, 'active_power_el_sin_out_vec', 'reactive_power_el_sin_out_vec', 'active_power_ref_el_sin_out_vec', ...
            'reactive_power_ref_el_sin_out_vec', 'soc_sin_vec', 'voltage_ref_sin_out_vec', 'frequency_ref_sin_out_vec', ...
            'active_power_el_rse_out_vec', 'reactive_power_el_rse_out_vec', 'voltage_ref_rse_out_vec', 'voltage_rse_pcc_vec', ...
            'frequency_rse_pcc_vec', 'frequency_ref_rse_out_vec', 'rse_chp_m_ea_watt_vec', 'cres_temperature1_m_ea_celsius_vec', ...
            'voltage_sin_pcc_vec', 'frequency_sin_pcc_vec', ...
            'cres_temperature2_m_ea_celsisus_vec', 'cres_temperature3_m_ea_celsius_vec', 'cres_heat_pump_m_ea_kiloWatts_vec', ...
            'th_temp_0_dtu_vec', 'th_flow_1_dtu_vec', 'th_fwd_1_dtu_vec', 'th_ret_1_dtu_vec', 'th_fwd_2_dtu_vec', ...
            'th_ret_2_dtu_vec', 'th_fwd_3_dtu_vec', 'th_ret_3_dtu_vec', 'thermal_load_dtu_vec', 'thermal_source_dtu_vec', ...
            'chp_heat_out_rse_vec', 'active_power_chp_rse_vec', 'active_power_el_gf_mes_vec', 'reactive_power_el_gf_mes_vec', ...
            'active_power_el_chp_mes_vec', 'reactive_power_el_chp_mes_vec');
    
        % Moving file to the right folder
        movefile(file_name_MAT, destinationMAT);
        
    %% Clearing, subsampling and plotting data
    case 4
        
        disp( '----------------------------------------------------------------------------------');
        disp( '1  - Undervoltage scenario');
        disp( '2  - Undervoltage scenario (pretty)');
        disp('---------------------------------------------------------------------------------');
        
        % Asking for the scenario to plot
        disp( ' ' );
        selection_scenario = str2double(input('Which scenario do you intend to plot?\n','s'));
        disp( ' ' );
        
        % Selecting the scenario of interest
        switch selection_scenario
                
            %%%% Undervoltage scenario
            case 1
                
                fileMATName = filenameUndervoltagePrettyScenario_rev2; % name MAT-file
                fileMATName = erase(fileMATName,'.csv'); % Delete substrings within strings
                
                % Loading MAT-files
                load(strcat(folder_mat, filesep, fileMATName, '.mat'));
                close all
                clc
                
                % To align the plots. Remove the dirty part
                % COMMAND: datetime(active_power_el_sin_out_vec(XX,2), 'ConvertFrom', 'posixtime')
                shift_1_start = 0; %%%%%%%%%% TO BE MODIFIED %%%%%%%%%%
                shift_1_end   = 0; %%%%%%%%%% TO BE MODIFIED %%%%%%%%%%
                
                % Downsampling factor
                downsampling_value_1 = 2; % parameters for the code
                
                % Resizing vector for LaTeX plots (Deliverable)
                disp( 'Creating necessary subvectors and downsampling data...');
                disp( ' ' );
                downsampling_meas_data

                % Plotting and saving drone state - FIRST ATTEMPT
                destinationFig = strcat('figures', filesep, '26_january_2024_attempt1');
                disp( 'Plotting data first attempt...');
                plot_signals_state_1
                
                disp( 'Closing previous plots...');
                close all
                disp( ' ' );
                
                
            %%%% Overvoltage scenario (pretty)
            case 2
                
                fileMATName = filenameUndervoltagePrettyScenario_rev2; % name MAT-file
                fileMATName = erase(fileMATName,'.csv'); % Delete substrings within strings
                
                % Loading MAT-files
                load(strcat(folder_mat, filesep, fileMATName, '.mat'));
                close all
                clc
                
                % To align the plots. Remove the dirty part
                % COMMAND: datetime(active_power_el_sin_out_vec(XX,2), 'ConvertFrom', 'posixtime')
                shift_1_start = 0; %%%%%%%%%% TO BE MODIFIED %%%%%%%%%%
                shift_1_end   = 0; %%%%%%%%%% TO BE MODIFIED %%%%%%%%%%
                
                % Downsampling factor
                downsampling_value_1 = 2; % parameters for the code
                
                % Resizing vector for LaTeX plots (Deliverable)
                disp( 'Creating necessary subvectors and downsampling data...');
                disp( ' ' );
                downsampling_meas_data

                % Plotting and saving drone state - FIRST ATTEMPT
                destinationFig = strcat('figures', filesep, '26_january_2024_pretty_attempt1');
                disp( 'Plotting data first attempt...');
                plot_signals_state_1
                
                disp( 'Closing previous plots...');
                close all
                disp( ' ' );
                
        end

end

