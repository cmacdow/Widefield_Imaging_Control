%% Start behavioral aquisition
%Define default values 
opts_vals.record = 0; %1=record video, 0=check cameras
opts_vals.num_cam = 3; %Number of Cameras
opts_vals.fps = 60; %frame rate of behvaioral acq cameras
opts_vals.duration_in_sec = 5; %duration of the recording in second
opts_vals.w = [640,320];
opts_vals.h = [480,240];
opts_vals.show_feed = 1; %Show feed from camera 1 
opts_vals.time_stamp = 1'; %Add timestamps to the recording file
opts_vals.filetype = '.avi';
opts_vals.flank_duration = 10; %duration in seconds that behavioral cameras will start and end before and after the imaging
%%
filename =  CreateVideoRecordingScript([pwd filesep],...
    [pwd filesep],opts_vals);
%%
cmd = sprintf('python "%s" %% Exit &',filename);
system(cmd)
