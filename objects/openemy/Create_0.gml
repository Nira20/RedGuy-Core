target = noone; // This will hold the player instance
distance_threshold = 400; // Distance threshold for changing state
state = ENEMY_STATE.IDLE;
target = instance_find(oplayer, 0);
hsp = 5
touching = false
hp = 2
is_grounded = false;
invincible = false
hit = false
vsp = 5;
hit_dir = 1;
knockback_force = 10;
knockback_angle = 30;

is_angry = false;


enum ENEMY_STATE{
	NONE, IDLE, CHASE, ATTACK, HIT
}