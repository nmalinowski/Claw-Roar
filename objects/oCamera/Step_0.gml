/// @description Update Camera

var cameraXPos   = camera_get_view_x(camera);
var cameraYPos   = camera_get_view_y(camera);
var cameraWidth  = camera_get_view_width(camera);
var cameraHeight = camera_get_view_height(camera);

// Screenshake
cameraXPos =     0 + random_range(-screenshake, screenshake);
cameraYPos =     0 + random_range(-screenshake, screenshake);


// Update Camera
camera_set_view_pos(camera, cameraXPos, cameraYPos);
camera_set_view_size(camera, cameraWidth, cameraHeight);
