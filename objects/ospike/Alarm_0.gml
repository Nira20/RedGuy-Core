if step <=3
{
step +=1
alarm[0] = room_speed
}
if step >=4
{pause +=1
	alarm[0] = room_speed}

if pause >=5 
{
step =0
pause = 0
}