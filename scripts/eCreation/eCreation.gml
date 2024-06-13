// Apple Stats
function wormCreate(){
chasesprite = swormcrawl
idlesprite = swormidle
attacksprite = awormattack
damage = 1
ppoints = 200
distance_threshold = 400; // Distance threshold for changing state
state = "IDLE"
target = instance_find(oplayer, 0);
hp = 12
moveSpeed = 5
xspeed = 0;
yspeed = 0;
distance_to_player = 0
rightKey = 0
canMove =false
knockback=false
knockbackcount =false
alarm[0] = 5
kb = 0
//jumping variables
grav = .857 //falling speed
termVel = 10 //maximum falling speed
onGround = false;
active = false


}
