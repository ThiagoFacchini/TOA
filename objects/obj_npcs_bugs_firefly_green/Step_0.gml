/// @description Insert description here
// You can write your code in this editor

angle --
angle = angle mod 360

if (angle > 360) {
	angle -= 360
}

x = spawn_pos_x + lengthdir_x(wondering_dist, angle)
y = spawn_pos_y + lengthdir_y(wondering_dist, angle)

image_angle = angle - 180