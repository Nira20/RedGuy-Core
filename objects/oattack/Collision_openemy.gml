if(is_active){
	is_active = false;
	with other take_damage(sign(other.x - owner.x));
	alarm[0] = game_get_speed(gamespeed_fps);
	instance_destroy(self)
}