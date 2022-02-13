a += 0.1
image_xscale = xscale*0.2 + sin(a)*xscale*0.7
//image_alpha = 0.65 + sin(a)/1.5
if(image_xscale <= 0)instance_destroy();