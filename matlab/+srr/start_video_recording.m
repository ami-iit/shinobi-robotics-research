function [status] = start_video_recording(server_info, cameras)
%START_VIDEO_RECORDING Start the video recording
for k = 1:numel(cameras)
    % https://shinobi.video/docs/api#content-set-to-a-mode-for-a-monitor
    r = matlab.net.http.RequestMessage;
    uri_raw = sprintf('%s/%s/monitor/%s/%s/record', server_info.shinobi_url, server_info.shinobi_api_key, server_info.shinobi_group_key, cameras(k).mid)
    uri = matlab.net.URI(uri_raw);
    resp = send(r,uri);
end

end

