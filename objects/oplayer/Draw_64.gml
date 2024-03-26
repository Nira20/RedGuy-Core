var heart_init_x = 32;
var heart_init_y  = 32;
var heart_step_x  = 48; // if it's positive, the hearts will be drawn from left to right; if it's negative, they'll be drawn from right to left
var heart_step_y  = 0; // if it's positive, the hearts will be drawn from top to bottom; if it's negative, they'll be drawn from bottom to top

// drawing the current number of lives
// insert your own lives variable name in place of "current_lives"
for (var i = 0; i < hp; i++) {
    var heart_x = heart_init_x + heart_step_x * i;
    var heart_y = heart_init_y + heart_step_y * i;
    draw_sprite(spr_heart, 0, heart_x, heart_y);
}
draw_sprite(spr_lives,0,32,80)


draw_sprite(spr_lives,0,32,80)
if livess = 0 {
draw_sprite(spr_noLives,0,96, 80) 
} if livess > 0 {draw_text(96,80,string(livess))


draw_set_font(fn_CBoo48)}
draw_set_color(c_white)
draw_text(view_current, 32,"Score: " + string(sscore))

if keyboard_check_released(ord("R"))
{room_restart()}