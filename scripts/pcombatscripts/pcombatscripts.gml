/* Create 4 scripts to generate attacks. Standard Melee, pogo and a up swing
up swing activates when holding up key and attack key
pogo activates when player is falling and holding the down key.

determine which the player is using 
*/

function pattackdetermine(){ 
 if attackdiru {
 attackdir = "up"
 } 
 if attackdird && !onground
 {attackdir = "down"
 
 } else attackdir = "noone"
 
	
}

function pattackcreate(){
	canFire=false
	switch (attackdir){
	
	case "noone":
		var _atk_object = instance_create_depth(x,y,depth,oattack);
		_atk_object.owner = id;
		_atk_object.image_xscale = image_xscale;
		break;
	case "up":
		_atk_object = instance_create_depth(x,y,depth,oattackup);
		_atk_object.owner = id;
		_atk_object.image_xscale = image_xscale;
		break;
		
	case "down": 
		show_debug_message("Pogo not configured")
		break;
		
		}
		}