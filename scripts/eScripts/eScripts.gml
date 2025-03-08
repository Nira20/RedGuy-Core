
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

