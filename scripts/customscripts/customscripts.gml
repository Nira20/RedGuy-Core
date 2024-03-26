//Game Feel
	function scontrolsSetup()
	{
	bufferTime = 3;
	jumpKeyBuffered = 0;
	jumpKeyBufferTimer = 0; 

	}

//Visual Effects
	function Cbob(sprite)
	{
	//this goes in the create code of the object to bob up and down
 
		y_pos = y
		x_pos = x
		float = 0  
		floatu = true
	}
	function bob()
	{ //function Cbob must be in the creation code of the object to bob
		//this function goes in the step event
		
		if floatu = true
		{float +=.5}
		if floatu = false
		{float -=.5}

		if float >= 6
		{floatu = false}

		if float <= -6 
		{floatu=true}

	}
	function rotate(angle_speed)
	{
image_angle += angle_speed; // Rotate the sprite continuously

	}

//Mechanical Scripts
	function movPos()
 {
	x = oRoomMove.x
	y = oRoomMove.y
 }
	function returntocheckpoint()
	{
	x=checkpointX
	y=checkpointY


	}
	function midX(sprite) 
	{
	y_pos = (room_height / 2) - sprite_get_height(sprite)/2

	}
	function midY(sprite)
	{
	x_pos = (room_width - sprite_get_width(sprite)) / 2
	}


//Player Input

	function gamepad_check_input(_pad_num)
	{
	    ///@desc    checks for gamepad input on the passed pad number
	    ///@arg    pad_num    real    pad number to check
    
	    for ( var i = gp_face1; i <= gp_padr; i++ ) {
	        if ( gamepad_button_check( _pad_num, i ) ) return i;
	    }
	    for ( var i = gp_axislh; i <= gp_axisrv; i++ ) {
	        if abs( gamepad_axis_value( _pad_num, i ) ) return i;
	    }
	}
	function getAnyImput()
	{
 
	button_check = keyboard_check(vk_anykey) || mouse_check_button(mb_any) || gamepad_check_input(0)

	}
	function sgetControls()
	{
	//right left keys
	rightKey = keyboard_check(vk_right) || keyboard_check(ord("D")) || gamepad_button_check(0,gp_padr)
	leftKey = keyboard_check(vk_left) || keyboard_check(ord("A")) || gamepad_button_check(0,gp_padl) 



	//action keys
	jumpKeyPressed = keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_up) || gamepad_button_check_pressed(0,gp_face1)

	jumpKey=  keyboard_check(vk_space) || keyboard_check(vk_up) || gamepad_button_check(0,gp_face1)

	attackkey = mouse_check_button_pressed(mb_left) || gamepad_button_check(0,gp_face2) || keyboard_check_pressed(vk_down)

	//jump Key Buffering
	if jumpKeyPressed
	{ 
		jumpKeyBufferTimer = bufferTime;}

	if jumpKeyBufferTimer >0
	{
	jumpKeyBuffered = 1;
	jumpKeyBufferTimer --
	state = "jumping"
	}
	else 
	{jumpKeyBuffered = 0}
	}
//Combat Scripts
	function take_damage(_dir)
{ //hit direction 1 right 0 left
	hit_dir = _dir;
	show_debug_message("enemy was hit");
	hit = true;
	state = ENEMY_STATE.HIT;
	//add disable variable
	alarm[0] = 20;
	
	is_angry = true;
	hp -= 1
	alarm[1] = 120;
}
	function apply_knockback_step()
	{
	var _angle = hit_dir == 1 ? knockback_angle : -knockback_angle + 180; 
	if (!place_meeting(x, y-sprite_height, obj_Pground))  || (!place_meeting(x, y+sprite_height, obj_Pground)) {        
        y += lengthdir_y(knockback_force, _angle);		
    }
	 if (!place_meeting(x+sprite_width, y, obj_Pground)) {
		x += lengthdir_x(knockback_force, _angle);
	}
}