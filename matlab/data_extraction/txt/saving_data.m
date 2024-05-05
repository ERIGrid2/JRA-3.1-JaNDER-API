%% Experiments on December 14 and 15, 2023
if selection_switch == 5

    disp('Saving TXTfiles...');
    %%%% FIRST ATTEMPT
    % Opening the txt file for the data is going to be saved - FIRST SET OF DATA
    fid_data_active_power_el_sin_out_vec_downsample_1_txt       = ...
        fopen(strcat('data_active_power_el_sin_out_vec_downsample_1', '.txt'), 'w');
    fid_data_reactive_power_el_sin_out_vec_downsample_1_txt     = ...
        fopen(strcat('data_reactive_power_el_sin_out_vec_downsample_1', '.txt'), 'w');   
    fid_data_active_power_ref_el_sin_out_vec_downsample_1_txt   = ...
        fopen(strcat('data_active_power_ref_el_sin_out_vec_downsample_1', '.txt'), 'w');          
    fid_data_reactive_power_ref_el_sin_out_vec_downsample_1_txt = ...
        fopen(strcat('data_reactive_power_ref_el_sin_out_vec_downsample_1', '.txt'), 'w');   
    fid_data_soc_sin_vec_downsample_1_txt                       = ...
        fopen(strcat('data_soc_sin_vec_downsample_1', '.txt'), 'w');                                          
    fid_data_voltage_ref_sin_out_vec_downsample_1_txt           = ...
        fopen(strcat('data_voltage_ref_sin_out_vec_downsample_1', '.txt'), 'w');        
    fid_data_frequency_ref_sin_out_vec_downsample_1_txt         = ...
        fopen(strcat('data_frequency_ref_sin_out_vec_downsample_1', '.txt'), 'w');    
    fid_data_active_power_el_rse_out_vec_downsample_1_txt       = ...
        fopen(strcat('data_active_power_el_rse_out_vec_downsample_1', '.txt'), 'w');    
    fid_data_reactive_power_el_rse_out_vec_downsample_1_txt     = ...
        fopen(strcat('data_reactive_power_el_rse_out_vec_downsample_1', '.txt'), 'w'); 
    fid_data_voltage_ref_rse_out_vec_downsample_1_txt           = ...
        fopen(strcat('data_voltage_ref_rse_out_vec_downsample_1', '.txt'), 'w');  
    fid_data_frequency_ref_rse_out_vec_downsample_1_txt         = ...
        fopen(strcat('data_frequency_ref_rse_out_vec_downsample_1', '.txt'), 'w');     
    fid_data_rse_chp_m_ea_watt_vec_downsample_1_txt             = ...
        fopen(strcat('data_rse_chp_m_ea_watt_vec_downsample_1', '.txt'), 'w');  
    
    % Opening the txt file for the data is going to be saved - SECOND SET OF DATA
    fid_data_cres_heat_pump_m_ea_kiloWatts_vec_downsample_1_txt = ...
        fopen(strcat('data_cres_heat_pump_m_ea_kiloWatts_vec_downsample_1', '.txt'), 'w'); 
    fid_data_th_temp_0_dtu_vec_downsample_1_txt                 = ...
        fopen(strcat('data_th_temp_0_dtu_vec_downsample_1', '.txt'), 'w');                                  
    fid_data_th_flow_1_dtu_vec_downsample_1_txt                 = ...
        fopen(strcat('data_th_flow_1_dtu_vec_downsample_1', '.txt'), 'w');                             
    fid_data_th_fwd_1_dtu_vec_downsample_1_txt                  = ...
        fopen(strcat('data_th_fwd_1_dtu_vec_downsample_1', '.txt'), 'w');                               
    fid_data_th_ret_1_dtu_vec_downsample_1_txt                  = ...
        fopen(strcat('data_th_ret_1_dtu_vec_downsample_1', '.txt'), 'w');                             
    fid_data_th_fwd_2_dtu_vec_downsample_1_txt                  = ...
        fopen(strcat('data_th_fwd_2_dtu_vec_downsample_1', '.txt'), 'w');                                
    fid_data_th_ret_2_dtu_vec_downsample_1_txt                  = ...
        fopen(strcat('data_th_ret_2_dtu_vec_downsample_1', '.txt'), 'w');                              
    fid_data_th_fwd_3_dtu_vec_downsample_1_txt                  = ...
        fopen(strcat('data_th_fwd_3_dtu_vec_downsample_1', '.txt'), 'w');                                
    fid_data_th_ret_3_dtu_vec_downsample_1_txt                  = ...
        fopen(strcat('data_th_ret_3_dtu_vec_downsample_1', '.txt'), 'w');                             
    fid_data_thermal_load_dtu_vec_downsample_1_txt              = ...
        fopen(strcat('data_thermal_load_dtu_vec_downsample_1', '.txt'), 'w');                        
    fid_data_thermal_source_dtu_vec_downsample_1_txt            = ...
        fopen(strcat('data_thermal_source_dtu_vec_downsample_1', '.txt'), 'w');                    
    fid_data_chp_heat_out_rse_vec_downsample_1_txt              = ...
        fopen(strcat('data_chp_heat_out_rse_vec_downsample_1', '.txt'), 'w');                   
    fid_data_active_power_chp_rse_vec_downsample_1_txt          = ...
        fopen(strcat('data_active_power_chp_rse_vec_downsample_1', '.txt'), 'w');            
    
    %%%% SECOND ATTEMPT
    % Opening the txt file for the data is going to be saved - FIRST SET OF DATA
    fid_data_active_power_el_sin_out_vec_downsample_2_txt       = ...
        fopen(strcat('data_active_power_el_sin_out_vec_downsample_2', '.txt'), 'w');
    fid_data_reactive_power_el_sin_out_vec_downsample_2_txt     = ...
        fopen(strcat('data_reactive_power_el_sin_out_vec_downsample_2', '.txt'), 'w');   
    fid_data_active_power_ref_el_sin_out_vec_downsample_2_txt   = ...
        fopen(strcat('data_active_power_ref_el_sin_out_vec_downsample_2', '.txt'), 'w');          
    fid_data_reactive_power_ref_el_sin_out_vec_downsample_2_txt = ...
        fopen(strcat('data_reactive_power_ref_el_sin_out_vec_downsample_2', '.txt'), 'w');   
    fid_data_soc_sin_vec_downsample_2_txt                       = ...
        fopen(strcat('data_soc_sin_vec_downsample_2', '.txt'), 'w');                                          
    fid_data_voltage_ref_sin_out_vec_downsample_2_txt           = ...
        fopen(strcat('data_voltage_ref_sin_out_vec_downsample_2', '.txt'), 'w');        
    fid_data_frequency_ref_sin_out_vec_downsample_2_txt         = ...
        fopen(strcat('data_frequency_ref_sin_out_vec_downsample_2', '.txt'), 'w');    
    fid_data_active_power_el_rse_out_vec_downsample_2_txt       = ...
        fopen(strcat('data_active_power_el_rse_out_vec_downsample_2', '.txt'), 'w');    
    fid_data_reactive_power_el_rse_out_vec_downsample_2_txt     = ...
        fopen(strcat('data_reactive_power_el_rse_out_vec_downsample_2', '.txt'), 'w'); 
    fid_data_voltage_ref_rse_out_vec_downsample_2_txt           = ...
        fopen(strcat('data_voltage_ref_rse_out_vec_downsample_2', '.txt'), 'w');  
    fid_data_frequency_ref_rse_out_vec_downsample_2_txt         = ...
        fopen(strcat('data_frequency_ref_rse_out_vec_downsample_2', '.txt'), 'w');     
    fid_data_rse_chp_m_ea_watt_vec_downsample_2_txt             = ...
        fopen(strcat('data_rse_chp_m_ea_watt_vec_downsample_2', '.txt'), 'w');  
    
    % Opening the txt file for the data is going to be saved - SECOND SET OF DATA
    fid_data_cres_heat_pump_m_ea_kiloWatts_vec_downsample_2_txt = ...
        fopen(strcat('data_cres_heat_pump_m_ea_kiloWatts_vec_downsample_2', '.txt'), 'w'); 
    fid_data_th_temp_0_dtu_vec_downsample_2_txt                 = ...
        fopen(strcat('data_th_temp_0_dtu_vec_downsample_2', '.txt'), 'w');                                  
    fid_data_th_flow_1_dtu_vec_downsample_2_txt                 = ...
        fopen(strcat('data_th_flow_1_dtu_vec_downsample_2', '.txt'), 'w');                             
    fid_data_th_fwd_1_dtu_vec_downsample_2_txt                  = ...
        fopen(strcat('data_th_fwd_1_dtu_vec_downsample_2', '.txt'), 'w');                               
    fid_data_th_ret_1_dtu_vec_downsample_2_txt                  = ...
        fopen(strcat('data_th_ret_1_dtu_vec_downsample_2', '.txt'), 'w');                             
    fid_data_th_fwd_2_dtu_vec_downsample_2_txt                  = ...
        fopen(strcat('data_th_fwd_2_dtu_vec_downsample_2', '.txt'), 'w');                                
    fid_data_th_ret_2_dtu_vec_downsample_2_txt                  = ...
        fopen(strcat('data_th_ret_2_dtu_vec_downsample_2', '.txt'), 'w');                              
    fid_data_th_fwd_3_dtu_vec_downsample_2_txt                  = ...
        fopen(strcat('data_th_fwd_3_dtu_vec_downsample_2', '.txt'), 'w');                                
    fid_data_th_ret_3_dtu_vec_downsample_2_txt                  = ...
        fopen(strcat('data_th_ret_3_dtu_vec_downsample_2', '.txt'), 'w');                             
    fid_data_thermal_load_dtu_vec_downsample_2_txt              = ...
        fopen(strcat('data_thermal_load_dtu_vec_downsample_2', '.txt'), 'w');                        
    fid_data_thermal_source_dtu_vec_downsample_2_txt            = ...
        fopen(strcat('data_thermal_source_dtu_vec_downsample_2', '.txt'), 'w');                    
    fid_data_chp_heat_out_rse_vec_downsample_2_txt              = ...
        fopen(strcat('data_chp_heat_out_rse_vec_downsample_2', '.txt'), 'w');                   
    fid_data_active_power_chp_rse_vec_downsample_2_txt          = ...
        fopen(strcat('data_active_power_chp_rse_vec_downsample_2', '.txt'), 'w');  

    for j = 1 : length(data_active_power_el_sin_out_vec_downsample_2)

        %%%% FIRST ATTEMPT
        % Writing data in the text files - FIRST SET OF DATA
        if j <= length(data_active_power_el_sin_out_vec_downsample_1)
            temp = time2num(data_active_power_el_sin_out_vec_downsample_1(j,1), 'minutes');
            fprintf(fid_data_active_power_el_sin_out_vec_downsample_1_txt, '%f %f\n', ...
                [temp active_power_el_sin_out_vec_downsample_1(j,3)]'); 
        end
        if j <= length(data_reactive_power_el_sin_out_vec_downsample_1)
            temp = time2num(data_reactive_power_el_sin_out_vec_downsample_1(j,1), 'minutes');
            fprintf(fid_data_reactive_power_el_sin_out_vec_downsample_1_txt, '%f %f\n', ...
                [temp reactive_power_el_sin_out_vec_downsample_1(j,3)]'); 
        end
        if j <= length(data_active_power_ref_el_sin_out_vec_downsample_1)
            temp = time2num(data_active_power_ref_el_sin_out_vec_downsample_1(j,1), 'minutes');
            fprintf(fid_data_active_power_ref_el_sin_out_vec_downsample_1_txt, '%f %f\n', ...
                [temp active_power_ref_el_sin_out_vec_downsample_1(j,3)]'); 
        end
        if j <= length(data_reactive_power_ref_el_sin_out_vec_downsample_1)
            temp = time2num(data_reactive_power_ref_el_sin_out_vec_downsample_1(j,1), 'minutes');
            fprintf(fid_data_reactive_power_ref_el_sin_out_vec_downsample_1_txt, '%f %f\n', ...
                [temp reactive_power_ref_el_sin_out_vec_downsample_1(j,3)]'); 
       end
       if j <= length(data_soc_sin_vec_downsample_1)
            temp = time2num(data_soc_sin_vec_downsample_1(j,1), 'minutes');
            fprintf(fid_data_soc_sin_vec_downsample_1_txt, '%f %f\n', ...
                [temp soc_sin_vec_downsample_1(j,3)]');
       end
       if j <= length(data_voltage_ref_sin_out_vec_downsample_1)
            temp = time2num(data_voltage_ref_sin_out_vec_downsample_1(j,1), 'minutes');
            fprintf(fid_data_voltage_ref_sin_out_vec_downsample_1_txt, '%f %f\n', ...
                [temp voltage_ref_sin_out_vec_downsample_1(j,3)]');
       end
       if j <= length(data_frequency_ref_sin_out_vec_downsample_1)
            temp = time2num(data_frequency_ref_sin_out_vec_downsample_1(j,1), 'minutes');
            fprintf(fid_data_frequency_ref_sin_out_vec_downsample_1_txt, '%f %f\n', ...
                [temp frequency_ref_sin_out_vec_downsample_1(j,3)]');
       end
       if j <= length(data_active_power_el_rse_out_vec_downsample_1)
            temp = time2num(data_active_power_el_rse_out_vec_downsample_1(j,1), 'minutes');
            fprintf(fid_data_active_power_el_rse_out_vec_downsample_1_txt, '%f %f\n', ...
                [temp active_power_el_rse_out_vec_downsample_1(j,3)]'); 
       end
       if j <= length(data_reactive_power_el_rse_out_vec_downsample_1)
            temp = time2num(data_reactive_power_el_rse_out_vec_downsample_1(j,1), 'minutes');
            fprintf(fid_data_reactive_power_el_rse_out_vec_downsample_1_txt, '%f %f\n', ...
                [temp reactive_power_el_rse_out_vec_downsample_1(j,3)]'); 
       end
       if j <= length(data_voltage_ref_rse_out_vec_downsample_1)
            temp = time2num(data_voltage_ref_rse_out_vec_downsample_1(j,1), 'minutes');
            fprintf(fid_data_voltage_ref_rse_out_vec_downsample_1_txt, '%f %f\n', ...
                [temp voltage_ref_rse_out_vec_downsample_1(j,3)]');
       end
       if j <= length(data_frequency_ref_rse_out_vec_downsample_1)
            temp = time2num(data_frequency_ref_rse_out_vec_downsample_1(j,1), 'minutes');
            fprintf(fid_data_frequency_ref_rse_out_vec_downsample_1_txt, '%f %f\n', ...
                [temp frequency_ref_rse_out_vec_downsample_1(j,3)]');
       end
       if j <= length(data_rse_chp_m_ea_watt_vec_downsample_1)
            temp = time2num(data_rse_chp_m_ea_watt_vec_downsample_1(j,1), 'minutes');
            fprintf(fid_data_rse_chp_m_ea_watt_vec_downsample_1_txt, '%f %f\n', ...
                [temp rse_chp_m_ea_watt_vec_downsample_1(j,3)]');
       end
        
       % Writing data in the text files - SECOND SET OF DATA
       if j <= length(data_cres_heat_pump_m_ea_kiloWatts_vec_downsample_1)
            temp = time2num(data_cres_heat_pump_m_ea_kiloWatts_vec_downsample_1(j,1), 'minutes');
            fprintf(fid_data_cres_heat_pump_m_ea_kiloWatts_vec_downsample_1_txt, '%f %f\n', ...
                [temp cres_heat_pump_m_ea_kiloWatts_vec_downsample_1(j,3)]'); 
       end
       if j <= length(data_th_temp_0_dtu_vec_downsample_1)
            temp = time2num(data_th_temp_0_dtu_vec_downsample_1(j,1), 'minutes');
            fprintf(fid_data_th_temp_0_dtu_vec_downsample_1_txt, '%f %f\n', ...
                [temp th_temp_0_dtu_vec_downsample_1(j,3)]'); 
       end
       if j <= length(data_th_flow_1_dtu_vec_downsample_1)
            temp = time2num(data_th_flow_1_dtu_vec_downsample_1(j,1), 'minutes');
            fprintf(fid_data_th_flow_1_dtu_vec_downsample_1_txt, '%f %f\n', ...
                [temp th_flow_1_dtu_vec_downsample_1(j,3)]'); 
       end
       if j <= length(data_th_fwd_1_dtu_vec_downsample_1)
            temp = time2num(data_th_fwd_1_dtu_vec_downsample_1(j,1), 'minutes');
            fprintf(fid_data_th_fwd_1_dtu_vec_downsample_1_txt, '%f %f\n', ...
                [temp th_fwd_1_dtu_vec_downsample_1(j,3)]'); 
       end
       if j <= length(data_th_ret_1_dtu_vec_downsample_1)
            temp = time2num(data_th_ret_1_dtu_vec_downsample_1(j,1), 'minutes');
            fprintf(fid_data_th_ret_1_dtu_vec_downsample_1_txt, '%f %f\n', ...
                [temp th_ret_1_dtu_vec_downsample_1(j,3)]'); 
       end
       if j <= length(data_th_fwd_2_dtu_vec_downsample_1)
            temp = time2num(data_th_fwd_2_dtu_vec_downsample_1(j,1), 'minutes');
            fprintf(fid_data_th_fwd_2_dtu_vec_downsample_1_txt, '%f %f\n', ...
                [temp th_fwd_2_dtu_vec_downsample_1(j,3)]'); 
       end
       if j <= length(data_th_ret_2_dtu_vec_downsample_1)
            temp = time2num(data_th_ret_2_dtu_vec_downsample_1(j,1), 'minutes');
            fprintf(fid_data_th_ret_2_dtu_vec_downsample_1_txt, '%f %f\n', ...
                [temp th_ret_2_dtu_vec_downsample_1(j,3)]'); 
       end
       if j <= length(data_th_fwd_3_dtu_vec_downsample_1)
            temp = time2num(data_th_fwd_3_dtu_vec_downsample_1(j,1), 'minutes');
            fprintf(fid_data_th_fwd_3_dtu_vec_downsample_1_txt, '%f %f\n', ...
                [temp th_fwd_3_dtu_vec_downsample_1(j,3)]'); 
       end
       if j <= length(data_th_ret_3_dtu_vec_downsample_1)
            temp = time2num(data_th_ret_3_dtu_vec_downsample_1(j,1), 'minutes');
            fprintf(fid_data_th_ret_3_dtu_vec_downsample_1_txt, '%f %f\n', ...
                [temp th_ret_3_dtu_vec_downsample_1(j,3)]'); 
       end
       if j <= length(data_thermal_load_dtu_vec_downsample_1)
            temp = time2num(data_thermal_load_dtu_vec_downsample_1(j,1), 'minutes');
            fprintf(fid_data_thermal_load_dtu_vec_downsample_1_txt, '%f %f\n', ...
                [temp thermal_load_dtu_vec_downsample_1(j,3)]'); 
       end
       if j <= length(data_thermal_source_dtu_vec_downsample_1)
            temp = time2num(data_thermal_source_dtu_vec_downsample_1(j,1), 'minutes');
            fprintf(fid_data_thermal_source_dtu_vec_downsample_1_txt, '%f %f\n', ...
                [temp thermal_source_dtu_vec_downsample_1(j,3)]'); 
       end
       if j <= length(data_chp_heat_out_rse_vec_downsample_1)
            temp = time2num(data_chp_heat_out_rse_vec_downsample_1(j,1), 'minutes');
            fprintf(fid_data_chp_heat_out_rse_vec_downsample_1_txt, '%f %f\n', ...
                [temp chp_heat_out_rse_vec_downsample_1(j,3)]'); 
       end
       if j <= length(data_active_power_chp_rse_vec_downsample_1)
            temp = time2num(data_active_power_chp_rse_vec_downsample_1(j,1), 'minutes');
            fprintf(fid_data_active_power_chp_rse_vec_downsample_1_txt, '%f %f\n', ...
                [temp active_power_chp_rse_vec_downsample_1(j,3)]'); 
       end
        
       %%%% SECOND ATTEMPT
       % Writing data in the text files - FIRST SET OF DATA
        if j <= length(data_active_power_el_sin_out_vec_downsample_2)
            temp = time2num(data_active_power_el_sin_out_vec_downsample_2(j,1), 'minutes');
            fprintf(fid_data_active_power_el_sin_out_vec_downsample_2_txt, '%f %f\n', ...
                [temp active_power_el_sin_out_vec_downsample_2(j,3)]'); 
        end
        if j <= length(data_reactive_power_el_sin_out_vec_downsample_2)
            temp = time2num(data_reactive_power_el_sin_out_vec_downsample_2(j,1), 'minutes');
            fprintf(fid_data_reactive_power_el_sin_out_vec_downsample_2_txt, '%f %f\n', ...
                [temp reactive_power_el_sin_out_vec_downsample_2(j,3)]'); 
        end
        if j <= length(data_active_power_ref_el_sin_out_vec_downsample_2)
            temp = time2num(data_active_power_ref_el_sin_out_vec_downsample_2(j,1), 'minutes');
            fprintf(fid_data_active_power_ref_el_sin_out_vec_downsample_2_txt, '%f %f\n', ...
                [temp active_power_ref_el_sin_out_vec_downsample_2(j,3)]'); 
        end
        if j <= length(data_reactive_power_ref_el_sin_out_vec_downsample_2)
            temp = time2num(data_reactive_power_ref_el_sin_out_vec_downsample_2(j,1), 'minutes');
            fprintf(fid_data_reactive_power_ref_el_sin_out_vec_downsample_2_txt, '%f %f\n', ...
                [temp reactive_power_ref_el_sin_out_vec_downsample_2(j,3)]'); 
       end
       if j <= length(data_soc_sin_vec_downsample_2)
            temp = time2num(data_soc_sin_vec_downsample_2(j,1), 'minutes');
            fprintf(fid_data_soc_sin_vec_downsample_2_txt, '%f %f\n', ...
                [temp soc_sin_vec_downsample_2(j,3)]');
       end
       if j <= length(data_voltage_ref_sin_out_vec_downsample_2)
            temp = time2num(data_voltage_ref_sin_out_vec_downsample_2(j,1), 'minutes');
            fprintf(fid_data_voltage_ref_sin_out_vec_downsample_2_txt, '%f %f\n', ...
                [temp voltage_ref_sin_out_vec_downsample_2(j,3)]');
       end
       if j <= length(data_frequency_ref_sin_out_vec_downsample_2)
            temp = time2num(data_frequency_ref_sin_out_vec_downsample_2(j,1), 'minutes');
            fprintf(fid_data_frequency_ref_sin_out_vec_downsample_2_txt, '%f %f\n', ...
                [temp frequency_ref_sin_out_vec_downsample_2(j,3)]');
       end
       if j <= length(data_active_power_el_rse_out_vec_downsample_2)
            temp = time2num(data_active_power_el_rse_out_vec_downsample_2(j,1), 'minutes');
            fprintf(fid_data_active_power_el_rse_out_vec_downsample_2_txt, '%f %f\n', ...
                [temp active_power_el_rse_out_vec_downsample_2(j,3)]'); 
       end
       if j <= length(data_reactive_power_el_rse_out_vec_downsample_2)
            temp = time2num(data_reactive_power_el_rse_out_vec_downsample_2(j,1), 'minutes');
            fprintf(fid_data_reactive_power_el_rse_out_vec_downsample_2_txt, '%f %f\n', ...
                [temp reactive_power_el_rse_out_vec_downsample_2(j,3)]'); 
       end
       if j <= length(data_voltage_ref_rse_out_vec_downsample_2)
            temp = time2num(data_voltage_ref_rse_out_vec_downsample_2(j,1), 'minutes');
            fprintf(fid_data_voltage_ref_rse_out_vec_downsample_2_txt, '%f %f\n', ...
                [temp voltage_ref_rse_out_vec_downsample_2(j,3)]');
       end
       if j <= length(data_frequency_ref_rse_out_vec_downsample_2)
            temp = time2num(data_frequency_ref_rse_out_vec_downsample_2(j,1), 'minutes');
            fprintf(fid_data_frequency_ref_rse_out_vec_downsample_2_txt, '%f %f\n', ...
                [temp frequency_ref_rse_out_vec_downsample_2(j,3)]');
       end
       if j <= length(data_rse_chp_m_ea_watt_vec_downsample_2)
            temp = time2num(data_rse_chp_m_ea_watt_vec_downsample_2(j,1), 'minutes');
            fprintf(fid_data_rse_chp_m_ea_watt_vec_downsample_2_txt, '%f %f\n', ...
                [temp rse_chp_m_ea_watt_vec_downsample_2(j,3)]');
       end
        
       % Writing data in the text files - SECOND SET OF DATA
       if j <= length(data_cres_heat_pump_m_ea_kiloWatts_vec_downsample_2)
            temp = time2num(data_cres_heat_pump_m_ea_kiloWatts_vec_downsample_2(j,1), 'minutes');
            fprintf(fid_data_cres_heat_pump_m_ea_kiloWatts_vec_downsample_2_txt, '%f %f\n', ...
                [temp cres_heat_pump_m_ea_kiloWatts_vec_downsample_2(j,3)]'); 
       end
       if j <= length(data_th_temp_0_dtu_vec_downsample_2)
            temp = time2num(data_th_temp_0_dtu_vec_downsample_2(j,1), 'minutes');
            fprintf(fid_data_th_temp_0_dtu_vec_downsample_2_txt, '%f %f\n', ...
                [temp th_temp_0_dtu_vec_downsample_2(j,3)]'); 
       end
       if j <= length(data_th_flow_1_dtu_vec_downsample_2)
            temp = time2num(data_th_flow_1_dtu_vec_downsample_2(j,1), 'minutes');
            fprintf(fid_data_th_flow_1_dtu_vec_downsample_2_txt, '%f %f\n', ...
                [temp th_flow_1_dtu_vec_downsample_2(j,3)]'); 
       end
       if j <= length(data_th_fwd_1_dtu_vec_downsample_2)
            temp = time2num(data_th_fwd_1_dtu_vec_downsample_2(j,1), 'minutes');
            fprintf(fid_data_th_fwd_2_dtu_vec_downsample_2_txt, '%f %f\n', ...
                [temp th_fwd_1_dtu_vec_downsample_2(j,3)]'); 
       end
       if j <= length(data_th_ret_1_dtu_vec_downsample_2)
            temp = time2num(data_th_ret_1_dtu_vec_downsample_2(j,1), 'minutes');
            fprintf(fid_data_th_ret_2_dtu_vec_downsample_2_txt, '%f %f\n', ...
                [temp th_ret_1_dtu_vec_downsample_2(j,3)]'); 
       end
       if j <= length(data_th_fwd_1_dtu_vec_downsample_2)
            temp = time2num(data_th_fwd_1_dtu_vec_downsample_2(j,1), 'minutes');
            fprintf(fid_data_th_fwd_2_dtu_vec_downsample_2_txt, '%f %f\n', ...
                [temp th_fwd_1_dtu_vec_downsample_2(j,3)]'); 
       end
       if j <= length(data_th_ret_1_dtu_vec_downsample_2)
            temp = time2num(data_th_ret_1_dtu_vec_downsample_2(j,1), 'minutes');
            fprintf(fid_data_th_ret_2_dtu_vec_downsample_2_txt, '%f %f\n', ...
                [temp th_ret_1_dtu_vec_downsample_2(j,3)]'); 
       end
       if j <= length(data_th_fwd_3_dtu_vec_downsample_2)
            temp = time2num(data_th_fwd_3_dtu_vec_downsample_2(j,1), 'minutes');
            fprintf(fid_data_th_fwd_3_dtu_vec_downsample_2_txt, '%f %f\n', ...
                [temp th_fwd_3_dtu_vec_downsample_2(j,3)]'); 
       end
       if j <= length(data_th_ret_3_dtu_vec_downsample_2)
            temp = time2num(data_th_ret_3_dtu_vec_downsample_2(j,1), 'minutes');
            fprintf(fid_data_th_ret_3_dtu_vec_downsample_2_txt, '%f %f\n', ...
                [temp th_ret_3_dtu_vec_downsample_2(j,3)]'); 
       end
       if j <= length(data_thermal_load_dtu_vec_downsample_2)
            temp = time2num(data_thermal_load_dtu_vec_downsample_2(j,1), 'minutes');
            fprintf(fid_data_thermal_load_dtu_vec_downsample_2_txt, '%f %f\n', ...
                [temp thermal_load_dtu_vec_downsample_2(j,3)]'); 
       end
       if j <= length(data_thermal_source_dtu_vec_downsample_2)
            temp = time2num(data_thermal_source_dtu_vec_downsample_2(j,1), 'minutes');
            fprintf(fid_data_thermal_source_dtu_vec_downsample_2_txt, '%f %f\n', ...
                [temp thermal_source_dtu_vec_downsample_2(j,3)]'); 
       end
       if j <= length(data_chp_heat_out_rse_vec_downsample_2)
            temp = time2num(data_chp_heat_out_rse_vec_downsample_2(j,1), 'minutes');
            fprintf(fid_data_chp_heat_out_rse_vec_downsample_2_txt, '%f %f\n', ...
                [temp chp_heat_out_rse_vec_downsample_2(j,3)]'); 
       end
       if j <= length(data_active_power_chp_rse_vec_downsample_2)
            temp = time2num(data_active_power_chp_rse_vec_downsample_2(j,1), 'minutes');
            fprintf(fid_data_active_power_chp_rse_vec_downsample_2_txt, '%f %f\n', ...
                [temp active_power_chp_rse_vec_downsample_2(j,3)]'); 
       end

    end

    %%%% FIRST ATTEMPT
    % Closing the txt files - FIRST SET OF DATA
    fclose(fid_data_active_power_el_sin_out_vec_downsample_1_txt);
    fclose(fid_data_reactive_power_el_sin_out_vec_downsample_1_txt);
    fclose(fid_data_active_power_ref_el_sin_out_vec_downsample_1_txt);
    fclose(fid_data_reactive_power_ref_el_sin_out_vec_downsample_1_txt);
    fclose(fid_data_soc_sin_vec_downsample_1_txt);
    fclose(fid_data_voltage_ref_sin_out_vec_downsample_1_txt);
    fclose(fid_data_frequency_ref_sin_out_vec_downsample_1_txt);
    fclose(fid_data_active_power_el_rse_out_vec_downsample_1_txt);
    fclose(fid_data_reactive_power_el_rse_out_vec_downsample_1_txt);
    fclose(fid_data_voltage_ref_rse_out_vec_downsample_1_txt);
    fclose(fid_data_frequency_ref_rse_out_vec_downsample_1_txt);
    fclose(fid_data_rse_chp_m_ea_watt_vec_downsample_1_txt);
    
    % Closing the txt files - SECOND SET OF DATA
    fclose(fid_data_cres_heat_pump_m_ea_kiloWatts_vec_downsample_1_txt);
    fclose(fid_data_th_temp_0_dtu_vec_downsample_1_txt);
    fclose(fid_data_th_flow_1_dtu_vec_downsample_1_txt);
    fclose(fid_data_th_fwd_1_dtu_vec_downsample_1_txt);
    fclose(fid_data_th_ret_1_dtu_vec_downsample_1_txt);
    fclose(fid_data_th_fwd_2_dtu_vec_downsample_1_txt);
    fclose(fid_data_th_ret_2_dtu_vec_downsample_1_txt);
    fclose(fid_data_th_fwd_3_dtu_vec_downsample_1_txt);
    fclose(fid_data_th_ret_3_dtu_vec_downsample_1_txt);
    fclose(fid_data_thermal_load_dtu_vec_downsample_1_txt);
    fclose(fid_data_thermal_source_dtu_vec_downsample_1_txt);
    fclose(fid_data_chp_heat_out_rse_vec_downsample_1_txt);
    fclose(fid_data_active_power_chp_rse_vec_downsample_1_txt);

    %%%% SECOND ATTEMPT
    % Closing the txt files - FIRST SET OF DATA
    fclose(fid_data_active_power_el_sin_out_vec_downsample_2_txt);
    fclose(fid_data_reactive_power_el_sin_out_vec_downsample_2_txt);
    fclose(fid_data_active_power_ref_el_sin_out_vec_downsample_2_txt);
    fclose(fid_data_reactive_power_ref_el_sin_out_vec_downsample_2_txt);
    fclose(fid_data_soc_sin_vec_downsample_2_txt);
    fclose(fid_data_voltage_ref_sin_out_vec_downsample_2_txt);
    fclose(fid_data_frequency_ref_sin_out_vec_downsample_2_txt);
    fclose(fid_data_active_power_el_rse_out_vec_downsample_2_txt);
    fclose(fid_data_reactive_power_el_rse_out_vec_downsample_2_txt);
    fclose(fid_data_voltage_ref_rse_out_vec_downsample_2_txt);
    fclose(fid_data_frequency_ref_rse_out_vec_downsample_2_txt);
    fclose(fid_data_rse_chp_m_ea_watt_vec_downsample_2_txt);
    
    % Closing the txt files - SECOND SET OF DATA
    fclose(fid_data_cres_heat_pump_m_ea_kiloWatts_vec_downsample_2_txt);
    fclose(fid_data_th_temp_0_dtu_vec_downsample_2_txt);
    fclose(fid_data_th_flow_1_dtu_vec_downsample_2_txt);
    fclose(fid_data_th_fwd_1_dtu_vec_downsample_2_txt);
    fclose(fid_data_th_ret_1_dtu_vec_downsample_2_txt);
    fclose(fid_data_th_fwd_2_dtu_vec_downsample_2_txt);
    fclose(fid_data_th_ret_2_dtu_vec_downsample_2_txt);
    fclose(fid_data_th_fwd_3_dtu_vec_downsample_2_txt);
    fclose(fid_data_th_ret_3_dtu_vec_downsample_2_txt);
    fclose(fid_data_thermal_load_dtu_vec_downsample_2_txt);
    fclose(fid_data_thermal_source_dtu_vec_downsample_2_txt);
    fclose(fid_data_chp_heat_out_rse_vec_downsample_2_txt);
    fclose(fid_data_active_power_chp_rse_vec_downsample_2_txt);
   
    %%%% FIRST ATTEMPT
    % Moving the obtained files - FIRST SET OF DATA
    movefile(strcat('data_active_power_el_sin_out_vec_downsample_1', '.txt'), destinationTxT_1, 'f');
    movefile(strcat('data_reactive_power_el_sin_out_vec_downsample_1', '.txt'), destinationTxT_1, 'f');   
    movefile(strcat('data_active_power_ref_el_sin_out_vec_downsample_1', '.txt'), destinationTxT_1, 'f');         
    movefile(strcat('data_reactive_power_ref_el_sin_out_vec_downsample_1', '.txt'), destinationTxT_1, 'f');
    movefile(strcat('data_soc_sin_vec_downsample_1', '.txt'), destinationTxT_1, 'f');                                    
    movefile(strcat('data_voltage_ref_sin_out_vec_downsample_1', '.txt'), destinationTxT_1, 'f');       
    movefile(strcat('data_frequency_ref_sin_out_vec_downsample_1', '.txt'), destinationTxT_1, 'f');   
    movefile(strcat('data_active_power_el_rse_out_vec_downsample_1', '.txt'), destinationTxT_1, 'f');  
    movefile(strcat('data_reactive_power_el_rse_out_vec_downsample_1', '.txt'), destinationTxT_1, 'f');
    movefile(strcat('data_voltage_ref_rse_out_vec_downsample_1', '.txt'), destinationTxT_1, 'f');
    movefile(strcat('data_frequency_ref_rse_out_vec_downsample_1', '.txt'), destinationTxT_1, 'f'); 
    movefile(strcat('data_rse_chp_m_ea_watt_vec_downsample_1', '.txt'), destinationTxT_1, 'f');  
    
    % Moving the obtained files - SECOND SET OF DATA
    movefile(strcat('data_cres_heat_pump_m_ea_kiloWatts_vec_downsample_1', '.txt'), destinationTxT_1, 'f');
    movefile(strcat('data_th_temp_0_dtu_vec_downsample_1', '.txt'), destinationTxT_1, 'f');                                 
    movefile(strcat('data_th_flow_1_dtu_vec_downsample_1', '.txt'), destinationTxT_1, 'f');                             
    movefile(strcat('data_th_fwd_1_dtu_vec_downsample_1', '.txt'), destinationTxT_1, 'f');                              
    movefile(strcat('data_th_ret_1_dtu_vec_downsample_1', '.txt'), destinationTxT_1, 'f');                            
    movefile(strcat('data_th_fwd_2_dtu_vec_downsample_1', '.txt'), destinationTxT_1, 'f');                                
    movefile(strcat('data_th_ret_2_dtu_vec_downsample_1', '.txt'), destinationTxT_1, 'f');                            
    movefile(strcat('data_th_fwd_3_dtu_vec_downsample_1', '.txt'), destinationTxT_1, 'f');                                
    movefile(strcat('data_th_ret_3_dtu_vec_downsample_1', '.txt'), destinationTxT_1, 'f');                           
    movefile(strcat('data_thermal_load_dtu_vec_downsample_1', '.txt'), destinationTxT_1, 'f');                        
    movefile(strcat('data_thermal_source_dtu_vec_downsample_1', '.txt'), destinationTxT_1, 'f');                    
    movefile(strcat('data_chp_heat_out_rse_vec_downsample_1', '.txt'), destinationTxT_1, 'f');                   
    movefile(strcat('data_active_power_chp_rse_vec_downsample_1', '.txt'), destinationTxT_1, 'f'); 

    %%%% SECOND ATTEMPT
    % Moving the obtained files - FIRST SET OF DATA
    movefile(strcat('data_active_power_el_sin_out_vec_downsample_2', '.txt'), destinationTxT_2, 'f');
    movefile(strcat('data_reactive_power_el_sin_out_vec_downsample_2', '.txt'), destinationTxT_2, 'f');   
    movefile(strcat('data_active_power_ref_el_sin_out_vec_downsample_2', '.txt'), destinationTxT_2, 'f');         
    movefile(strcat('data_reactive_power_ref_el_sin_out_vec_downsample_2', '.txt'), destinationTxT_2, 'f');
    movefile(strcat('data_soc_sin_vec_downsample_2', '.txt'), destinationTxT_2, 'f');                                    
    movefile(strcat('data_voltage_ref_sin_out_vec_downsample_2', '.txt'), destinationTxT_2, 'f');       
    movefile(strcat('data_frequency_ref_sin_out_vec_downsample_2', '.txt'), destinationTxT_2, 'f');   
    movefile(strcat('data_active_power_el_rse_out_vec_downsample_2', '.txt'), destinationTxT_2, 'f');  
    movefile(strcat('data_reactive_power_el_rse_out_vec_downsample_2', '.txt'), destinationTxT_2, 'f');
    movefile(strcat('data_voltage_ref_rse_out_vec_downsample_2', '.txt'), destinationTxT_2, 'f');
    movefile(strcat('data_frequency_ref_rse_out_vec_downsample_2', '.txt'), destinationTxT_2, 'f'); 
    movefile(strcat('data_rse_chp_m_ea_watt_vec_downsample_2', '.txt'), destinationTxT_2, 'f');  
    
    % Moving the obtained files - SECOND SET OF DATA
    movefile(strcat('data_cres_heat_pump_m_ea_kiloWatts_vec_downsample_2', '.txt'), destinationTxT_2, 'f');
    movefile(strcat('data_th_temp_0_dtu_vec_downsample_2', '.txt'), destinationTxT_2, 'f');                                 
    movefile(strcat('data_th_flow_1_dtu_vec_downsample_2', '.txt'), destinationTxT_2, 'f');                             
    movefile(strcat('data_th_fwd_1_dtu_vec_downsample_2', '.txt'), destinationTxT_2, 'f');                              
    movefile(strcat('data_th_ret_1_dtu_vec_downsample_2', '.txt'), destinationTxT_2, 'f');                            
    movefile(strcat('data_th_fwd_2_dtu_vec_downsample_2', '.txt'), destinationTxT_2, 'f');                                
    movefile(strcat('data_th_ret_2_dtu_vec_downsample_2', '.txt'), destinationTxT_2, 'f');                            
    movefile(strcat('data_th_fwd_3_dtu_vec_downsample_2', '.txt'), destinationTxT_2, 'f');                                
    movefile(strcat('data_th_ret_3_dtu_vec_downsample_2', '.txt'), destinationTxT_2, 'f');                           
    movefile(strcat('data_thermal_load_dtu_vec_downsample_2', '.txt'), destinationTxT_2, 'f');                        
    movefile(strcat('data_thermal_source_dtu_vec_downsample_2', '.txt'), destinationTxT_2, 'f');                    
    movefile(strcat('data_chp_heat_out_rse_vec_downsample_2', '.txt'), destinationTxT_2, 'f');                   
    movefile(strcat('data_active_power_chp_rse_vec_downsample_2', '.txt'), destinationTxT_2, 'f'); 
    
%% Experiments on January 26, 2024
elseif selection_switch == 6
    
    disp('Saving TXTfiles...');
    % Opening the txt file for the data is going to be saved - FIRST SET OF DATA
    fid_data_active_power_el_sin_out_vec_downsample_1_txt       = ...
        fopen(strcat('data_active_power_el_sin_out_vec_downsample_1', '.txt'), 'w');
    fid_data_reactive_power_el_sin_out_vec_downsample_1_txt     = ...
        fopen(strcat('data_reactive_power_el_sin_out_vec_downsample_1', '.txt'), 'w');   
    fid_data_active_power_ref_el_sin_out_vec_downsample_1_txt   = ...
        fopen(strcat('data_active_power_ref_el_sin_out_vec_downsample_1', '.txt'), 'w');          
    fid_data_reactive_power_ref_el_sin_out_vec_downsample_1_txt = ...
        fopen(strcat('data_reactive_power_ref_el_sin_out_vec_downsample_1', '.txt'), 'w');   
    fid_data_soc_sin_vec_downsample_1_txt                       = ...
        fopen(strcat('data_soc_sin_vec_downsample_1', '.txt'), 'w');                                          
    fid_data_voltage_ref_sin_out_vec_downsample_1_txt           = ...
        fopen(strcat('data_voltage_ref_sin_out_vec_downsample_1', '.txt'), 'w');        
    fid_data_frequency_ref_sin_out_vec_downsample_1_txt         = ...
        fopen(strcat('data_frequency_ref_sin_out_vec_downsample_1', '.txt'), 'w');    
    fid_data_active_power_el_rse_out_vec_downsample_1_txt       = ...
        fopen(strcat('data_active_power_el_rse_out_vec_downsample_1', '.txt'), 'w');    
    fid_data_reactive_power_el_rse_out_vec_downsample_1_txt     = ...
        fopen(strcat('data_reactive_power_el_rse_out_vec_downsample_1', '.txt'), 'w'); 
    fid_data_voltage_ref_rse_out_vec_downsample_1_txt           = ...
        fopen(strcat('data_voltage_ref_rse_out_vec_downsample_1', '.txt'), 'w');  
    fid_data_frequency_ref_rse_out_vec_downsample_1_txt         = ...
        fopen(strcat('data_frequency_ref_rse_out_vec_downsample_1', '.txt'), 'w');     
    fid_data_rse_chp_m_ea_watt_vec_downsample_1_txt             = ...
        fopen(strcat('data_rse_chp_m_ea_watt_vec_downsample_1', '.txt'), 'w');  
   
    % Opening the txt file for the data is going to be saved - SECOND SET OF DATA
    fid_data_voltage_rse_pcc_vec_downsample_1_txt                 = ...
        fopen(strcat('data_voltage_rse_pcc_vec_downsample_1', '.txt'), 'w');
    fid_data_frequency_rse_pcc_vec_downsample_1_txt               = ...
        fopen(strcat('data_frequency_rse_pcc_vec_downsample_1', '.txt'), 'w');
    fid_data_active_power_el_hp_mes_vec_shifted_1_txt             = ...
        fopen(strcat('data_active_power_el_hp_mes_vec_shifted_1', '.txt'), 'w');
    fid_data_reactive_power_el_hp_mes_vec_shifted_1_txt           = ...
        fopen(strcat('data_reactive_power_el_hp_mes_vec_shifted_1', '.txt'), 'w');  
    fid_data_active_power_el_chp_mes_vec_shifted_1_txt            = ...
        fopen(strcat('data_active_power_el_chp_mes_vec_shifted_1', '.txt'), 'w');
    fid_data_reactive_power_el_chp_mes_vec_shifted_1_txt          = ...
        fopen(strcat('data_reactive_power_el_chp_mes_vec_shifted_1', '.txt'), 'w');
    fid_data_cres_temperature1_m_ea_celsius_vec_downsample_1_txt  = ...
        fopen(strcat('data_cres_temperature1_m_ea_celsius_vec_downsample_1', '.txt'), 'w');
    fid_data_cres_temperature2_m_ea_celsisus_vec_downsample_1_txt = ...
        fopen(strcat('data_cres_temperature2_m_ea_celsisus_vec_downsample_1', '.txt'), 'w');
    fid_data_cres_temperature3_m_ea_celsius_vec_downsample_1_txt  = ...
        fopen(strcat('data_cres_temperature3_m_ea_celsius_vec_downsample_1', '.txt'), 'w');
    
    % Opening the txt file for the data is going to be saved - THIRD SET OF DATA
    fid_data_cres_heat_pump_m_ea_kiloWatts_vec_downsample_1_txt = ...
        fopen(strcat('data_cres_heat_pump_m_ea_kiloWatts_vec_downsample_1', '.txt'), 'w'); 
    fid_data_th_temp_0_dtu_vec_downsample_1_txt                 = ...
        fopen(strcat('data_th_temp_0_dtu_vec_downsample_1', '.txt'), 'w');                                  
    fid_data_th_flow_1_dtu_vec_downsample_1_txt                 = ...
        fopen(strcat('data_th_flow_1_dtu_vec_downsample_1', '.txt'), 'w');                             
    fid_data_th_fwd_1_dtu_vec_downsample_1_txt                  = ...
        fopen(strcat('data_th_fwd_1_dtu_vec_downsample_1', '.txt'), 'w');                               
    fid_data_th_ret_1_dtu_vec_downsample_1_txt                  = ...
        fopen(strcat('data_th_ret_1_dtu_vec_downsample_1', '.txt'), 'w');                             
    fid_data_th_fwd_2_dtu_vec_downsample_1_txt                  = ...
        fopen(strcat('data_th_fwd_2_dtu_vec_downsample_1', '.txt'), 'w');                                
    fid_data_th_ret_2_dtu_vec_downsample_1_txt                  = ...
        fopen(strcat('data_th_ret_2_dtu_vec_downsample_1', '.txt'), 'w');                              
    fid_data_th_fwd_3_dtu_vec_downsample_1_txt                  = ...
        fopen(strcat('data_th_fwd_3_dtu_vec_downsample_1', '.txt'), 'w');                                
    fid_data_th_ret_3_dtu_vec_downsample_1_txt                  = ...
        fopen(strcat('data_th_ret_3_dtu_vec_downsample_1', '.txt'), 'w');                             
    fid_data_thermal_load_dtu_vec_downsample_1_txt              = ...
        fopen(strcat('data_thermal_load_dtu_vec_downsample_1', '.txt'), 'w');                        
    fid_data_thermal_source_dtu_vec_downsample_1_txt            = ...
        fopen(strcat('data_thermal_source_dtu_vec_downsample_1', '.txt'), 'w');                    
    fid_data_chp_heat_out_rse_vec_downsample_1_txt              = ...
        fopen(strcat('data_chp_heat_out_rse_vec_downsample_1', '.txt'), 'w');                   
    fid_data_active_power_chp_rse_vec_downsample_1_txt          = ...
        fopen(strcat('data_active_power_chp_rse_vec_downsample_1', '.txt'), 'w');            
    
    
    for j = 1 : length(data_active_power_el_sin_out_vec_downsample_1)

        % Writing data in the text files - FIRST SET OF DATA
        if j <= length(data_active_power_el_sin_out_vec_downsample_1)
            temp = time2num(data_active_power_el_sin_out_vec_downsample_1(j,1), 'minutes');
            fprintf(fid_data_active_power_el_sin_out_vec_downsample_1_txt, '%f %f\n', ...
                [temp active_power_el_sin_out_vec_downsample_1(j,3)]'); 
        end
        if j <= length(data_reactive_power_el_sin_out_vec_downsample_1)
            temp = time2num(data_reactive_power_el_sin_out_vec_downsample_1(j,1), 'minutes');
            fprintf(fid_data_reactive_power_el_sin_out_vec_downsample_1_txt, '%f %f\n', ...
                [temp reactive_power_el_sin_out_vec_downsample_1(j,3)]'); 
        end
        if j <= length(data_active_power_ref_el_sin_out_vec_downsample_1)
            temp = time2num(data_active_power_ref_el_sin_out_vec_downsample_1(j,1), 'minutes');
            fprintf(fid_data_active_power_ref_el_sin_out_vec_downsample_1_txt, '%f %f\n', ...
                [temp active_power_ref_el_sin_out_vec_downsample_1(j,3)]'); 
        end
        if j <= length(data_reactive_power_ref_el_sin_out_vec_downsample_1)
            temp = time2num(data_reactive_power_ref_el_sin_out_vec_downsample_1(j,1), 'minutes');
            fprintf(fid_data_reactive_power_ref_el_sin_out_vec_downsample_1_txt, '%f %f\n', ...
                [temp reactive_power_ref_el_sin_out_vec_downsample_1(j,3)]'); 
       end
       if j <= length(data_soc_sin_vec_downsample_1)
            temp = time2num(data_soc_sin_vec_downsample_1(j,1), 'minutes');
            fprintf(fid_data_soc_sin_vec_downsample_1_txt, '%f %f\n', ...
                [temp soc_sin_vec_downsample_1(j,3)]');
       end
       if j <= length(data_voltage_ref_sin_out_vec_downsample_1)
            temp = time2num(data_voltage_ref_sin_out_vec_downsample_1(j,1), 'minutes');
            fprintf(fid_data_voltage_ref_sin_out_vec_downsample_1_txt, '%f %f\n', ...
                [temp voltage_ref_sin_out_vec_downsample_1(j,3)]');
       end
       if j <= length(data_frequency_ref_sin_out_vec_downsample_1)
            temp = time2num(data_frequency_ref_sin_out_vec_downsample_1(j,1), 'minutes');
            fprintf(fid_data_frequency_ref_sin_out_vec_downsample_1_txt, '%f %f\n', ...
                [temp frequency_ref_sin_out_vec_downsample_1(j,3)]');
       end
       if j <= length(data_active_power_el_rse_out_vec_downsample_1)
            temp = time2num(data_active_power_el_rse_out_vec_downsample_1(j,1), 'minutes');
            fprintf(fid_data_active_power_el_rse_out_vec_downsample_1_txt, '%f %f\n', ...
                [temp active_power_el_rse_out_vec_downsample_1(j,3)]'); 
       end
       if j <= length(data_reactive_power_el_rse_out_vec_downsample_1)
            temp = time2num(data_reactive_power_el_rse_out_vec_downsample_1(j,1), 'minutes');
            fprintf(fid_data_reactive_power_el_rse_out_vec_downsample_1_txt, '%f %f\n', ...
                [temp reactive_power_el_rse_out_vec_downsample_1(j,3)]'); 
       end
       if j <= length(data_voltage_ref_rse_out_vec_downsample_1)
            temp = time2num(data_voltage_ref_rse_out_vec_downsample_1(j,1), 'minutes');
            fprintf(fid_data_voltage_ref_rse_out_vec_downsample_1_txt, '%f %f\n', ...
                [temp voltage_ref_rse_out_vec_downsample_1(j,3)]');
       end
       if j <= length(data_frequency_ref_rse_out_vec_downsample_1)
            temp = time2num(data_frequency_ref_rse_out_vec_downsample_1(j,1), 'minutes');
            fprintf(fid_data_frequency_ref_rse_out_vec_downsample_1_txt, '%f %f\n', ...
                [temp frequency_ref_rse_out_vec_downsample_1(j,3)]');
       end
       if j <= length(data_rse_chp_m_ea_watt_vec_downsample_1)
            temp = time2num(data_rse_chp_m_ea_watt_vec_downsample_1(j,1), 'minutes');
            fprintf(fid_data_rse_chp_m_ea_watt_vec_downsample_1_txt, '%f %f\n', ...
                [temp rse_chp_m_ea_watt_vec_downsample_1(j,3)]');
       end
          
        % Writing data in the text files - SECOND SET OF DATA
       if j <= length(data_voltage_rse_pcc_vec_downsample_1)
            temp = time2num(data_voltage_rse_pcc_vec_downsample_1(j,1), 'minutes');
            fprintf(fid_data_voltage_rse_pcc_vec_downsample_1_txt, '%f %f\n', ...
                [temp voltage_rse_pcc_vec_downsample_1(j,3)]');
       end
       if j <= length(data_frequency_rse_pcc_vec_downsample_1)
            temp = time2num(data_frequency_rse_pcc_vec_downsample_1(j,1), 'minutes');
            fprintf(fid_data_frequency_rse_pcc_vec_downsample_1_txt, '%f %f\n', ...
                [temp frequency_rse_pcc_vec_downsample_1(j,3)]');
       end
       if j <= length(data_active_power_el_hp_mes_vec_shifted_1)
            temp = time2num(data_active_power_el_hp_mes_vec_shifted_1(j,1), 'minutes');
            fprintf(fid_data_active_power_el_hp_mes_vec_shifted_1_txt, '%f %f\n', ...
                [temp active_power_el_hp_mes_vec_shifted_1(j,3)]'); 
       end
       if j <= length(data_reactive_power_el_hp_mes_vec_shifted_1)
            temp = time2num(data_reactive_power_el_hp_mes_vec_shifted_1(j,1), 'minutes');
            fprintf(fid_data_reactive_power_el_hp_mes_vec_shifted_1_txt, '%f %f\n', ...
                [temp reactive_power_el_hp_mes_vec_shifted_1(j,3)]'); 
       end
       if j <= length(data_active_power_el_chp_mes_vec_shifted_1)
            temp = time2num(data_active_power_el_chp_mes_vec_shifted_1(j,1), 'minutes');
            fprintf(fid_data_active_power_el_chp_mes_vec_shifted_1_txt, '%f %f\n', ...
                [temp active_power_el_chp_mes_vec_shifted_1(j,3)]'); 
       end
       if j <= length(data_reactive_power_el_chp_mes_vec_shifted_1)
            temp = time2num(data_reactive_power_el_chp_mes_vec_shifted_1(j,1), 'minutes');
            fprintf(fid_data_reactive_power_el_chp_mes_vec_shifted_1_txt, '%f %f\n', ...
                [temp reactive_power_el_chp_mes_vec_shifted_1(j,3)]'); 
       end
        
        % Writing data in the text files - THIRD SET OF DATA
       if j <= length(data_cres_heat_pump_m_ea_kiloWatts_vec_downsample_1)
            temp = time2num(data_cres_heat_pump_m_ea_kiloWatts_vec_downsample_1(j,1), 'minutes');
            fprintf(fid_data_cres_heat_pump_m_ea_kiloWatts_vec_downsample_1_txt, '%f %f\n', ...
                [temp cres_heat_pump_m_ea_kiloWatts_vec_downsample_1(j,3)]'); 
       end
       if j <= length(data_th_temp_0_dtu_vec_downsample_1)
            temp = time2num(data_th_temp_0_dtu_vec_downsample_1(j,1), 'minutes');
            fprintf(fid_data_th_temp_0_dtu_vec_downsample_1_txt, '%f %f\n', ...
                [temp th_temp_0_dtu_vec_downsample_1(j,3)]'); 
       end
       if j <= length(data_th_flow_1_dtu_vec_downsample_1)
            temp = time2num(data_th_flow_1_dtu_vec_downsample_1(j,1), 'minutes');
            fprintf(fid_data_th_flow_1_dtu_vec_downsample_1_txt, '%f %f\n', ...
                [temp th_flow_1_dtu_vec_downsample_1(j,3)]'); 
       end
       if j <= length(data_th_fwd_1_dtu_vec_downsample_1)
            temp = time2num(data_th_fwd_1_dtu_vec_downsample_1(j,1), 'minutes');
            fprintf(fid_data_th_fwd_1_dtu_vec_downsample_1_txt, '%f %f\n', ...
                [temp th_fwd_1_dtu_vec_downsample_1(j,3)]'); 
       end
       if j <= length(data_th_ret_1_dtu_vec_downsample_1)
            temp = time2num(data_th_ret_1_dtu_vec_downsample_1(j,1), 'minutes');
            fprintf(fid_data_th_ret_1_dtu_vec_downsample_1_txt, '%f %f\n', ...
                [temp th_ret_1_dtu_vec_downsample_1(j,3)]'); 
       end
       if j <= length(data_th_fwd_2_dtu_vec_downsample_1)
            temp = time2num(data_th_fwd_2_dtu_vec_downsample_1(j,1), 'minutes');
            fprintf(fid_data_th_fwd_2_dtu_vec_downsample_1_txt, '%f %f\n', ...
                [temp th_fwd_2_dtu_vec_downsample_1(j,3)]'); 
       end
       if j <= length(data_th_ret_2_dtu_vec_downsample_1)
            temp = time2num(data_th_ret_2_dtu_vec_downsample_1(j,1), 'minutes');
            fprintf(fid_data_th_ret_2_dtu_vec_downsample_1_txt, '%f %f\n', ...
                [temp th_ret_2_dtu_vec_downsample_1(j,3)]'); 
       end
       if j <= length(data_th_fwd_3_dtu_vec_downsample_1)
            temp = time2num(data_th_fwd_3_dtu_vec_downsample_1(j,1), 'minutes');
            fprintf(fid_data_th_fwd_3_dtu_vec_downsample_1_txt, '%f %f\n', ...
                [temp th_fwd_3_dtu_vec_downsample_1(j,3)]'); 
       end
       if j <= length(data_th_ret_3_dtu_vec_downsample_1)
            temp = time2num(data_th_ret_3_dtu_vec_downsample_1(j,1), 'minutes');
            fprintf(fid_data_th_ret_3_dtu_vec_downsample_1_txt, '%f %f\n', ...
                [temp th_ret_3_dtu_vec_downsample_1(j,3)]'); 
       end
       if j <= length(data_thermal_load_dtu_vec_downsample_1)
            temp = time2num(data_thermal_load_dtu_vec_downsample_1(j,1), 'minutes');
            fprintf(fid_data_thermal_load_dtu_vec_downsample_1_txt, '%f %f\n', ...
                [temp thermal_load_dtu_vec_downsample_1(j,3)]'); 
       end
       if j <= length(data_thermal_source_dtu_vec_downsample_1)
            temp = time2num(data_thermal_source_dtu_vec_downsample_1(j,1), 'minutes');
            fprintf(fid_data_thermal_source_dtu_vec_downsample_1_txt, '%f %f\n', ...
                [temp thermal_source_dtu_vec_downsample_1(j,3)]'); 
       end
       if j <= length(data_chp_heat_out_rse_vec_downsample_1)
            temp = time2num(data_chp_heat_out_rse_vec_downsample_1(j,1), 'minutes');
            fprintf(fid_data_chp_heat_out_rse_vec_downsample_1_txt, '%f %f\n', ...
                [temp chp_heat_out_rse_vec_downsample_1(j,3)]'); 
       end
       if j <= length(data_active_power_chp_rse_vec_downsample_1)
            temp = time2num(data_active_power_chp_rse_vec_downsample_1(j,1), 'minutes');
            fprintf(fid_data_active_power_chp_rse_vec_downsample_1_txt, '%f %f\n', ...
                [temp active_power_chp_rse_vec_downsample_1(j,3)]'); 
       end
        
    end

    % Closing the txt files - FIRST SET OF DATA
    fclose(fid_data_active_power_el_sin_out_vec_downsample_1_txt);
    fclose(fid_data_reactive_power_el_sin_out_vec_downsample_1_txt);
    fclose(fid_data_active_power_ref_el_sin_out_vec_downsample_1_txt);
    fclose(fid_data_reactive_power_ref_el_sin_out_vec_downsample_1_txt);
    fclose(fid_data_soc_sin_vec_downsample_1_txt);
    fclose(fid_data_voltage_ref_sin_out_vec_downsample_1_txt);
    fclose(fid_data_frequency_ref_sin_out_vec_downsample_1_txt);
    fclose(fid_data_active_power_el_rse_out_vec_downsample_1_txt);
    fclose(fid_data_reactive_power_el_rse_out_vec_downsample_1_txt);
    fclose(fid_data_voltage_ref_rse_out_vec_downsample_1_txt);
    fclose(fid_data_frequency_ref_rse_out_vec_downsample_1_txt);
    fclose(fid_data_rse_chp_m_ea_watt_vec_downsample_1_txt);
   
    % Closing the txt files - SECOND SET OF DATA
    fclose(fid_data_voltage_rse_pcc_vec_downsample_1_txt);
    fclose(fid_data_frequency_rse_pcc_vec_downsample_1_txt);
    fclose(fid_data_active_power_el_hp_mes_vec_shifted_1_txt);
    fclose(fid_data_reactive_power_el_hp_mes_vec_shifted_1_txt);
    fclose(fid_data_active_power_el_chp_mes_vec_shifted_1_txt);
    fclose(fid_data_reactive_power_el_chp_mes_vec_shifted_1_txt);
    fclose(fid_data_cres_temperature1_m_ea_celsius_vec_downsample_1_txt);
    fclose(fid_data_cres_temperature2_m_ea_celsisus_vec_downsample_1_txt);
    fclose(fid_data_cres_temperature3_m_ea_celsius_vec_downsample_1_txt);
    
    % Closing the txt files - THIRD SET OF DATA
    fclose(fid_data_cres_heat_pump_m_ea_kiloWatts_vec_downsample_1_txt);
    fclose(fid_data_th_temp_0_dtu_vec_downsample_1_txt);
    fclose(fid_data_th_flow_1_dtu_vec_downsample_1_txt);
    fclose(fid_data_th_fwd_1_dtu_vec_downsample_1_txt);
    fclose(fid_data_th_ret_1_dtu_vec_downsample_1_txt);
    fclose(fid_data_th_fwd_2_dtu_vec_downsample_1_txt);
    fclose(fid_data_th_ret_2_dtu_vec_downsample_1_txt);
    fclose(fid_data_th_fwd_3_dtu_vec_downsample_1_txt);
    fclose(fid_data_th_ret_3_dtu_vec_downsample_1_txt);
    fclose(fid_data_thermal_load_dtu_vec_downsample_1_txt);
    fclose(fid_data_thermal_source_dtu_vec_downsample_1_txt);
    fclose(fid_data_chp_heat_out_rse_vec_downsample_1_txt);
    fclose(fid_data_active_power_chp_rse_vec_downsample_1_txt);
   
    % Moving the obtained files - FIRST SET OF DATA
    movefile(strcat('data_active_power_el_sin_out_vec_downsample_1', '.txt'), destinationTxT, 'f');
    movefile(strcat('data_reactive_power_el_sin_out_vec_downsample_1', '.txt'), destinationTxT, 'f');   
    movefile(strcat('data_active_power_ref_el_sin_out_vec_downsample_1', '.txt'), destinationTxT, 'f');        
    movefile(strcat('data_reactive_power_ref_el_sin_out_vec_downsample_1', '.txt'), destinationTxT, 'f'); 
    movefile(strcat('data_soc_sin_vec_downsample_1', '.txt'), destinationTxT, 'f');                                      
    movefile(strcat('data_voltage_ref_sin_out_vec_downsample_1', '.txt'), destinationTxT, 'f');      
    movefile(strcat('data_frequency_ref_sin_out_vec_downsample_1', '.txt'), destinationTxT, 'f');  
    movefile(strcat('data_active_power_el_rse_out_vec_downsample_1', '.txt'), destinationTxT, 'f'); 
    movefile(strcat('data_reactive_power_el_rse_out_vec_downsample_1', '.txt'), destinationTxT, 'f');
    movefile(strcat('data_voltage_ref_rse_out_vec_downsample_1', '.txt'), destinationTxT, 'f');  
    movefile(strcat('data_frequency_ref_rse_out_vec_downsample_1', '.txt'), destinationTxT, 'f');
    movefile(strcat('data_rse_chp_m_ea_watt_vec_downsample_1', '.txt'), destinationTxT, 'f'); 
   
    % Moving the obtained files - SECOND SET OF DATA
    movefile(strcat('data_voltage_rse_pcc_vec_downsample_1', '.txt'), destinationTxT, 'f');
    movefile(strcat('data_frequency_rse_pcc_vec_downsample_1', '.txt'), destinationTxT, 'f');
    movefile(strcat('data_active_power_el_hp_mes_vec_shifted_1', '.txt'), destinationTxT, 'f');
    movefile(strcat('data_reactive_power_el_hp_mes_vec_shifted_1', '.txt'), destinationTxT, 'f');
    movefile(strcat('data_active_power_el_chp_mes_vec_shifted_1', '.txt'), destinationTxT, 'f');
    movefile(strcat('data_reactive_power_el_chp_mes_vec_shifted_1', '.txt'), destinationTxT, 'f');
    movefile(strcat('data_cres_temperature1_m_ea_celsius_vec_downsample_1', '.txt'), destinationTxT, 'f');
    movefile(strcat('data_cres_temperature2_m_ea_celsisus_vec_downsample_1', '.txt'), destinationTxT, 'f');
    movefile(strcat('data_cres_temperature3_m_ea_celsius_vec_downsample_1', '.txt'), destinationTxT, 'f');
    
    % Moving the obtained files - THIRD SET OF DATA
    movefile(strcat('data_cres_heat_pump_m_ea_kiloWatts_vec_downsample_1', '.txt'), destinationTxT, 'f');
    movefile(strcat('data_th_temp_0_dtu_vec_downsample_1', '.txt'), destinationTxT, 'f');                                
    movefile(strcat('data_th_flow_1_dtu_vec_downsample_1', '.txt'), destinationTxT, 'f');                            
    movefile(strcat('data_th_fwd_1_dtu_vec_downsample_1', '.txt'), destinationTxT, 'f');                              
    movefile(strcat('data_th_ret_1_dtu_vec_downsample_1', '.txt'), destinationTxT, 'f');                            
    movefile(strcat('data_th_fwd_2_dtu_vec_downsample_1', '.txt'), destinationTxT, 'f');                                
    movefile(strcat('data_th_ret_2_dtu_vec_downsample_1', '.txt'), destinationTxT, 'f');                            
    movefile(strcat('data_th_fwd_3_dtu_vec_downsample_1', '.txt'), destinationTxT, 'f');                                
    movefile(strcat('data_th_ret_3_dtu_vec_downsample_1', '.txt'), destinationTxT, 'f');                          
    movefile(strcat('data_thermal_load_dtu_vec_downsample_1', '.txt'), destinationTxT, 'f');                        
    movefile(strcat('data_thermal_source_dtu_vec_downsample_1', '.txt'), destinationTxT, 'f');                    
    movefile(strcat('data_chp_heat_out_rse_vec_downsample_1', '.txt'), destinationTxT, 'f');                  
    movefile(strcat('data_active_power_chp_rse_vec_downsample_1', '.txt'), destinationTxT, 'f');      


%% Display messagge explaining that the scenario is not coded within the code
else
    disp('This scenario is not coded in the MATLAB script');
end
