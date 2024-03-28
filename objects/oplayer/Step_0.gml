// Reset player attributes if HP reaches 0
if hp <=0
{ 
	hp = 5 // reset Hp
	livess -=1  //decease lives
	x=checkpointX //reset x to start of room
	y=checkpointY // reset y to start of room

}//game over condition
if livess < 0 
{room_restart()}

//movment and collision detection. Do not alter

sgetControls();
//X movement 
moveDir = rightKey - leftKey
if moveDir != 0 {
		image_xscale = moveDir

}
if onGround && !getAnyImput()
{state = "idle"}
if moveDir !=0 && onGround

{
state = "moving"
}
	if attackkey && canFire{
		var _atk_object = instance_create_depth(x,y,depth,oattack);
		_atk_object.owner = id;
		_atk_object.image_xscale = image_xscale;
		canFire = false;
		alarm[2] = room_speed *.25;
	}
xspeed = moveDir * moveSpeed

//actually move
 xCollisions()
x += xspeed

//apply Gravity
if coyoteHangTimer >0
{
coyoteHangTimer--
} 
else
{
gravi()
}
termVelo()
//reset jumping count
if onGround
{
jumpCount = 0
coyoteJumpTimer = coyoteJumpFrames;
jumpHoldTimer = 0
}
else
{coyoteJumpTimer--;
	if jumpCount == 0 && coyoteJumpTimer <=0 {jumpCount =1}
	
	}
 

//Initiate the jump
if jumpKeyBuffered && jumpCount < jumpMax
{ //reset the buffer
	jumpKeyBuffered = false
	jumpKeyBufferTimer =0
	
	//increase the number of jumps
	jumpCount ++
	
//set the jump hold timer
jumpHoldTimer = jumpHoldFrames[jumpCount -1];
setOnGround(false) 

}

//cut off the jump by releasing the jump button

if !jumpKey 
{
jumpHoldTimer=0
}

//Jump based on time jump button is held
if jumpHoldTimer >0 
{
	//set the yspeed to be the jumping speed constantly. 
	yspeed = jspeed[jumpCount-1];

	//timer Count down
	jumpHoldTimer --
	
}
yCollisions()

//check if player is on ground
ongroundCheck()

 y+= yspeed
 
 //state machine and sprite control 
 switch (state) {
    case "idle":
        sprite_index = spr_playerIdle
        break;
        
    case "moving":
       sprite_index  = spr_playerMoving
        break;
			        
    case "jumping":
        sprite_index  = spr_jumping
        break;
		
	case "falling": 
		sprite_index  = spr_jumping
		break;
		
	
}