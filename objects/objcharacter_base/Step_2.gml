/// @description User.FollowCam

#region User.FollowCam

halfViewCameraWidth = camera_get_view_width(view_camera[0]) / 2;
halfViewCameraHeight = camera_get_view_height(view_camera[0]) / 2;

camera_set_view_pos(view_camera[0], x - halfViewCameraWidth, y - halfViewCameraHeight);

#region