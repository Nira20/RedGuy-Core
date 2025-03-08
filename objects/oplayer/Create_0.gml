state = "idle"
sscore = 0
hp = 5
hit =false
invincible = false
kbud = false
canMove = false
canFire = true
livess=4
damage =1
alarm[0] = 1
alarm[1] = 5
scontrolsSetup()
kbtimer = 1
//checkpoint system
checkpointX = oRoomMove.x
checkpointY = oRoomMove.y
knockback = false
knockbackcount = 0
//movement, -1 left, 0 not moving, 1 right. 
moveDir  = 0;
moveSpeed = 12;
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
	jspeed[0] =-10.15 //jumpingspeed, needs to be negative
	jumpHoldFrames[0] = 18;
	jspeed[1] =-9.15 //jumpingspeed, needs to be negative
	jumpHoldFrames[1] = 10;
	attackdiru = false
attackdird = false
attackdir = "noone" 

//Coyote Time
//hangTime 
coyoteHangFrames = 1
coyoteHangTimer = 0;
//jump buffer
coyoteJumpFrames =1
coyoteJumpTimer = 0 
