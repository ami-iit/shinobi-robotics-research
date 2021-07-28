function [srr_info] = load_info()
%load_info Load shinobi server info from the default configuration file

% Get default configuration file 
conf_file = fullfile(srr.get_home_dir(),'shinobi-robotics-research-info.json');
conf_file_content = fileread(conf_file);
srr_info = jsondecode(conf_file_content);

end

