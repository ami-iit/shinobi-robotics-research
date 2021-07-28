function [home_dir] = get_home_dir()
%GET_HOME_DIR Return home directory of the user
home_dir = getenv('HOME');
end

