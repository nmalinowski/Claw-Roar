/// @description Init Camera


resWidth        = 640;
resHeight       = 320;
resScale        = 2;

screenshake     = 0;

// Enable use of views
view_enabled    = true;
view_visible[0] = true;

// Create Camera
camera = camera_create_view(0, 0, resWidth, resHeight);

// Set the camera
view_set_camera(0, camera);

// Resize window and application surface
window_set_size(resWidth * resScale, resHeight * resScale);
surface_resize(application_surface, resWidth * resScale, resHeight * resScale);

// Center vindow
var displayWidth = display_get_width();
var displayHeight = display_get_height();

var windowWidth = resWidth * resScale;
var windowHeight = resHeight * resScale;

window_set_position(displayWidth/2 - windowWidth/2, displayHeight/2 - windowHeight/2);

