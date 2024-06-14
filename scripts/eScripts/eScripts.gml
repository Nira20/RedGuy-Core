
 	function d2p()
	{
 distance_to_player = point_distance(x, y, target.x, target.y)
 
 }
	function stateMachine()
	{
if (distance_to_player < distance_threshold) && distance_to_player > distance_threshold/2{ 
	        // Change enemy state (e.g., change sprite, behavior, etc.)
	        state = "CHASE"; 
			sprite_index = chasesprite			
	    }
if (  distance_to_player > distance_threshold){
			state = "IDLE";
			sprite_index = idlesprite
		}

		if (distance_to_player < distance_threshold) && distance_to_player < distance_threshold/2{
			state = "ATTACK"
			sprite_index= attacksprite}
image_xscale = -1*rightKey}

	function emovementX(){moveDir = rightKey 
	if !knockback || !invince {xspeed = moveDir * moveSpeed}
	else if knockback {xspeed = kb}
	
if (x >= target.x){
	rightKey = -1
	
			}
		else{
			rightKey = 1
			
		} 
//actually move
 xCollisions()
x += xspeed


	}
	function emovementY(){
if yspeed>=0 && place_meeting(x, y+1, owall)
 {
	onGround=true;
	 } else {onGround =false}
	 //apply gravity
	 
 if !onGround{
 gravi()
 termVelo()
 }

yCollisions()

 y+= yspeed
}