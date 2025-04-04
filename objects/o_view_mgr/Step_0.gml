// adjust the viewport to window size
if view_wport[0] != global.w_width {
	view_wport[0] = global.w_width;	
}
if view_hport[0] != global.w_height {
	view_hport[0] = global.w_height;	
}

// adjust camera
var cam = view_camera[0];
var cw = camera_get_view_width(cam);
var ch = camera_get_view_height(cam);
var target_w = view_wport[0] / cam_zoom;
var target_h = view_hport[0] / cam_zoom;
if cw != target_w || ch != target_h {
	camera_set_view_size(cam, target_w, target_h);
}