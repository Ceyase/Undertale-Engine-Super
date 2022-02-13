draw_set_font(font_fzxs)
ca++
var col = make_color_hsv((ca % 255), 255, 255)
draw_set_color(col)
draw_text_ext_transformed(15, 20, "音乐测试房:音乐:"+string(song)+"/音高:"+string(pitch), 120, 160, 3, 3, 0)