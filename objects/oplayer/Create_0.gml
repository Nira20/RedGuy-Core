state = "idle"
sscore = 0
hp = 5
hit =false
invincible = false
knockingback = false
canFire = true
livess=4



function setOnGround(_val = true)

{
if _val == true
{
onGround = true
coyoteHangTimer = coyoteHangFrames
} else {
	onGround = false
	coyoteHangTimer = 0;
	}
}

scontrolsSetup()
//checkpoint system
checkpointX = oRoomMove.x
checkpointY = oRoomMove.y


//movement, -1 left, 0 not moving, 1 right. 
moveDir  = 0;
moveSpeed = 10;
xspeed = 0 //left right movement speed
yspeed = 0 //updown movement speed

//jumping variables
grav = .857 //falling speed
termVel = 10 //maximum falling speed
onGround = true;
	//jump hold variables 
	jumpMax = 2;
	jumpCount = 0;
	jumpHoldTimer = 0;
	jspeed[0] =-9.15 //jumpingspeed, needs to be negative
	jumpHoldFrames[0] = 18;
	jspeed[1] =-8.15 //jumpingspeed, needs to be negative
	jumpHoldFrames[1] = 10;

//Coyote Time
//hangTime 
coyoteHangFrames = 2
coyoteHangTimer = 0;
//jump buffer
coyoteJumpFrames =2
coyoteJumpTimer = 0 
