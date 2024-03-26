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
		var _atk_object = instance_create_depth(x,y,100,oattack);
		_atk_object.owner = id;
		_atk_object.image_xscale = image_xscale;
		canFire = false;
		alarm[2] = room_speed *.25;
	}
xspeed = moveDir * moveSpeed

//x collisions

// scooting up to wall
var _subPixel = .5
if place_meeting(x + xspeed, y, owall){
	//check if slope
	if !place_meeting(x+xspeed, y - abs(xspeed)-1, owall)
	{
	while place_meeting(x+xspeed, y, owall)
	{ y-= _subPixel}
	
	}
	//no slope = normal collision
	else{ 
		//cieling slopes
		if !place_meeting(x+xspeed, y + abs(xspeed)+1,owall)
		{
			while place_meeting(x+xspeed, y, owall){
			y += _subPixel
		}} else {
	//get as close as possible to wall 
var _pixelCheck = _subPixel * sign(xspeed)
//while loops are dangerous
while !place_meeting(x + _pixelCheck, y, owall) {
x += _pixelCheck }
//this must come after pixelcheck
xspeed = 0
}
	
}  
}
//go down slopes
if yspeed >=0 && !place_meeting(x+xspeed, y+1, owall) && place_meeting(x+xspeed, y +abs(xspeed)  + 1, owall)
{
while !place_meeting(x+xspeed, y+ _subPixel, owall)
{
y+= _subPixel
}
}
//actually move
x += xspeed
 
//apply Gravity
if coyoteHangTimer >0
{
coyoteHangTimer--
} 
else
{
yspeed += grav
setOnGround(false)
}
if (yspeed > termVel)
{yspeed = termVel}
//reset jumping count
if onGround
{
jumpCount = 0
coyoteJumpTimer = coyoteJumpFrames;

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

//y collision checks 
var _subPixel = .5
if place_meeting(x , y + yspeed, owall){
	//get as close as possible to wall 
var _pixelCheck = _subPixel * sign(yspeed)
//while loops are dangerous
while !place_meeting(x , y +_pixelCheck , owall) { 
	//bonk
	if yspeed <0 
	{
	jumpHoldTimer =0
	}
y += _pixelCheck
}
//this must come after pixelcheck
yspeed = 0
}

//check if player is on ground
 if yspeed>=0 && place_meeting(x, y+1, owall)
 {
	 setOnGround(true);
	 }
 
 

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