
function rspike(){
	if step = 0 {
	y = sY }
	if step = 1
	{y = sY +11}
	if step = 2
	{y = sY +17}
	if step = 3 
	{y =sY + 23}
	if step =4 
	{y =sY +45}
	if place_meeting(x,y,oplayer){
oplayer.y =bbox_top
}
if place_meeting(x + 1, y -1,oplayer)
{if step != 4 && oplayer.invincible = false
{oplayer.hp -= damage
	oplayer.yspeed =-5
	
	}}
	
	
}