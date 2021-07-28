function [cameras, status] = get_available_cameras(srr_info)
%GET_AVAILABLE_CAMERAS Get the available cameras in the shinobi server


% Build HTTP query to get status 
% https://shinobi.video/docs/api#content-get-all-saved-monitors
% https://www.mathworks.com/help/matlab/ref/matlab.net.http.requestmessage.send.html
r = matlab.net.http.RequestMessage;
uri_raw = sprintf('%s/%s/monitor/%s', srr_info.shinobi_url, srr_info.shinobi_api_key, srr_info.shinobi_group_key)
uri = matlab.net.URI(uri_raw);
resp = send(r,uri);
status = resp.StatusCode;
cameras = resp.Body.Data;

cameras = srr.simplify_cameras_metadata(cameras);

end

