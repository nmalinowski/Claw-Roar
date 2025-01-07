///applyScreenshake(amount, duration)
function applyScreenshake(argument0, argument1) {

	if (instance_exists(oCamera)) {
	    oCamera.screenshake = argument0;
	    oCamera.alarm[0]    = argument1;
	}


}
