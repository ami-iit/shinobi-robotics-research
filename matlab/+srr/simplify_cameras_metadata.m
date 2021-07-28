function [outcameras] = simplify_cameras_metadata(incameras)
%simplify_cameras_metadata Remove all the metadata except for mid and name
for k = 1:numel(incameras)
    outcameras(k).mid = incameras(k).mid;
    outcameras(k).name = incameras(k).name;
end

