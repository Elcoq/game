
wall = layer_tilemap_get_id("Wall");

    x = random_range(xstart-300,xstart+300);
    y = random_range(ystart,ystart);
pt = 1;
heal = 0

maxspeed = 9
add_health = healthorb

if global.apple_skin2==1{
    apple_skin=Apple_2
}
if global.apple_skin2!=1 {
	apple_skin=Apple
}
if global.banana_skin2==1{
    banana_skin=Banana_2
}
if global.banana_skin2!=1 {
	banana_skin=Banana
}
if global.bomb_skin2==1{
    bomb_skin=bomb_2
}
if global.bomb_skin2!=1 {
	bomb_skin=bomb
}