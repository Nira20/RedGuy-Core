//copy and paste this format for each creation code

function genericPEnemy() {
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
enum ENEMY_STATE{
	NONE, IDLE, CHASE, ATTACK, HIT
}
los = false


}
