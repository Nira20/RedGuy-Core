draw_self()
/*// Draw "Red Guy" centered on the screen

num_sprites = array_length(options); // Total number of locks
spacing = 128; // Spacing between options
startX = (room_width / 2 ); // Starting X position to center locks
startY = (room_height - (num_sprites - 1) * spacing) / 2; // Y position for the lock sprites, vertically centered

/* Draw gradient behind sprite when hovered over
mouseX = mouse_x; // Get current mouse X position
mouseY = mouse_y; // Get current mouse Y position

// Iterate through each lock sprite
for (var i = 0; i < num_sprites; i++) {
    var lockX = startX; // Calculate X position of the lock sprite
    var lockY = startY + i * spacing; // Y position of the lock sprite (each sprite is spaced vertically)

    // Check if mouse cursor is within the bounds of the lock sprite
    if (point_in_rectangle(mouseX, mouseY, lockX, lockY, lockX + sprite_get_width(spr_startGame), lockY + sprite_get_height(spr_startGame))) {
        // Mouse is hovering over this lock sprite
        if (mouse_check_button_pressed(mb_left)) {
            // Where the different options lead to
        } 
    }
}

for (var i = 0; i < num_sprites; i++) {
    var lockX = startX; // Calculate X position of the lock sprite
    var lockY = startY + i * spacing; // Y position of the lock sprite (each sprite is spaced vertically)
    
    // Draw sprite based on option type
    switch options[i][1] {
        case "StartGame": 
            draw_sprite_ext(spr_startGame, 3, lockX, lockY, 1, 1, 0, c_white, 1);
            break;
        case "Extras": 
            draw_sprite_ext(spr_startGame, 1, lockX, lockY, 1, 1, 0, c_white, 1);
            break;
        case "Options":
            draw_sprite_ext(spr_startGame, 2, lockX, lockY, 1, 1, 0, c_white, 1);
            break;
        case "Credits":
            draw_sprite_ext(spr_startGame, 0, lockX, lockY, 1, 1, 0, c_white, 1);
            break;
    }
}
