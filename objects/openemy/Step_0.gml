if(hp <= 0) { instance_destroy(self);}
// Enemy Movement script
moveDir = rightKey
xspeed = moveDir * moveSpeed
distance_to_player = point_distance(x, y, target.x, target.y);


   if (distance_to_player < distance_threshold) && distance_to_player > distance_threshold/2{ 
	        // Change enemy state (e.g., change sprite, behavior, etc.)
	        state = ENEMY_STATE.CHASE; 
			sprite_index = chasesprite			
	    }
   if (distance_to_player > distance_threshold){
			state = ENEMY_STATE.IDLE;
			sprite_index = idlesprite
			
		}
		if (distance_to_player < distance_threshold) && distance_to_player < distance_threshold/2
	{state = ENEMY_STATE.ATTACK
		sprite_index= attacksprite
	}
image_xscale = rightKey *-1

if (x >= target.x){
	rightKey = -1
	
			}
		else{
			rightKey = 1
			
		}
//actually move
 xCollisions()
x += xspeed
//check if player is on ground
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
