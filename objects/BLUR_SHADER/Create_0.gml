/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_white);
depth = -100000

uni_resolution_hoz = shader_get_uniform(shd_gaussian_horizontal,"resolution");
uni_resolution_vert = shader_get_uniform(shd_gaussian_vertical,"resolution");
var_resolution_x = 640
var_resolution_y = 480

uni_blur_amount_hoz = shader_get_uniform(shd_gaussian_vertical,"blur_amount");
uni_blur_amount_vert = shader_get_uniform(shd_gaussian_horizontal,"blur_amount");
var_blur_amount = 0.5;
Anim_Create(id,"var_blur_amount",2,1,2,-2,30)

final_surface = application_surface//surface_create(640,480);

surf = surface_create(640, 480);

alarm[0] = 30