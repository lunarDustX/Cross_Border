/// @description 
draw_set_font(f_text);
draw_set_halign(fa_center);
draw_set_color(c_black);
draw_text(x-8, y-4, text);
draw_text(x-0, y-4, text);
draw_text(x-4, y-8, text);
draw_text(x-4, y-0, text);
draw_set_color(textColor);
draw_text(x-4, y-4, text);
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_font(f_wawa);

/*
draw_set_font(f_text);
draw_set_halign(fa_center);
draw_set_color(textColor);
draw_text(x-4, y-4, text);
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_font(f_wawa);