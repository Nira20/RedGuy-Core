// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemyPatrol(){ 
 if place_meeting(x + xspeed, y, owall){
 if edir = "left" {
 edir = "right" 
} else if edir = "right" 
{edir = "left"

}  
 }
 }

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