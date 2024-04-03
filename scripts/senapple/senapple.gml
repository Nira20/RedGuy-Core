// Apple Stats
function appleCreate(){
chasesprite = spr_appleI
idlesprite = spr_apple
attacksprite = spr_appleA
damage = 1
ppoints = 200
distance_threshold = 400; // Distance threshold for changing state
state = ENEMY_STATE.IDLE;
target = instance_find(oplayer, 0);
hp = 2
moveSpeed = 5
xspeed = 0;
yspeed = 0;
distance_to_player = 0
rightKey = 0

//jumping variables
grav = .857 //falling speed
termVel = 10 //maximum falling speed
onGround = false;
active = false


}
