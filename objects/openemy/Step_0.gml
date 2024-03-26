if(hp <= 0) { instance_destroy(self);}


if(place_meeting(x, y+ vsp, owall)){
	while(!place_meeting(x, y + sign(vsp),owall)){
		y += sign(vsp);
	}
	is_grounded = true;
}
else{
	y += vsp;
	is_grounded = false;
}


var distance_to_player = point_distance(x, y, target.x, target.y);
switch(state){
	
	case ENEMY_STATE.IDLE : 
		show_debug_message("enemy is idle");
		// Check if the player is within the distance threshold
	    if (distance_to_player < distance_threshold) && distance_to_player > distance_threshold/2 && !target.invincible{ //invincible can be change to hit effect too
	        // Change enemy state (e.g., change sprite, behavior, etc.)
	        state = ENEMY_STATE.CHASE; // Change this to whatever state you want
			sprite_index = spr_appleI;			
	    }
		break;
		
	case ENEMY_STATE.CHASE :
		show_debug_message("enemy chasing");
		if(!is_grounded) break;
		//player run away
		if(distance_to_player > distance_threshold and !is_angry){
			state = ENEMY_STATE.IDLE;
			sprite_index = spr_apple;
			break;
		}
		
	
		if (x >= target.x){
			x-=hsp
			image_xscale = 1
		}
		else{
			x+=hsp; image_xscale = -1
		}
		break;
	
	case ENEMY_STATE.HIT :
		//state change in alarm
		show_debug_message("enemy in hit effect");
		apply_knockback_step();
		break;
}