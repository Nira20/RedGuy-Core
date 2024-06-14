function pattackdetermine(){ 
 if attackdiru {
 attackdir = "up"
 } 
 if attackdird && !onGround
 {attackdir = "down"
 
 } if !attackdiru && !attackdird {attackdir = "noone" 
 
	
}}

function pattackcreate(){
	canFire=false
	switch (attackdir){
	
	case "noone":
		var _atk_object = instance_create_depth(x,y,depth,oattack);
		_atk_object.owner = id;
		_atk_object.image_xscale = image_xscale;
		break;
	case "up":
		_atk_object = instance_create_depth(x,y-oplayer.sprite_height,depth,oattackup);
		_atk_object.owner = id;
		_atk_object.image_xscale = image_xscale;
		break;
		
	case "down": 
		_atk_object = instance_create_depth(x,y+oplayer.sprite_height,depth,oattackd);
		_atk_object.owner = id;
		_atk_object.image_xscale = image_xscale;
		break;
		
		}
		}

//apply damage

function applyDamage(){hp -= other.damage}  

//effects
function pknockback(){
if !oplayer.knockback
{oplayer.knockback = true
 oplayer.alarm[0] = 1
oplayer.xspeed =(-2 * image_xscale)
}

}
//place in the alarm 0 event
function countKnockback(){
if knockback =true

{knockbackcount +=1
alarm[0] = 1}
}

function resetKnockback(){
knockbackcount =0
	knockback = false
	kb=0}
