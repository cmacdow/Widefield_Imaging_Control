function InitializeAcquisition(app)

    
    



    %Start Behavioral Monitoring 
    if app.ofCamsEditField.Value>0        
        filename = CreateVideoRecordingScript([app.rootdir filesep 'Behavioral_MultiCam' filesep],...
            app.SaveDirectoryEditField.Value,...
            'record',0,...
            'num_cam',app.ofCamsEditField.Value,...
            'fps',app.FPSEditField.Value,...
            'duration_in_sec',app.cur_routine_vals.recording_duration + (2 * app.behav_cam_options.flank_duration)...
            );
        cmd = sprintf('python "%s" && exit &',filename);
        system(cmd) 
        pause(app.behav_cam_options.flank_duration); %Start behavioral camera early 
    end       
end