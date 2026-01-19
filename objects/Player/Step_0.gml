l= keyboard_check(ord("A"));
r = keyboard_check(ord("D"));
if(keyboard_check(vk_lshift)&&global.stamina > 0){
    spd = 8;
    global.stamina = global.stamina - 3;
}
else{
    spd = 5;
    if(global.stamina<90){
    global.stamina = global.stamina + 1;
    }
}
xspeed = (r-l) * spd;
if place_meeting(x+xspeed,y,wall){
    xspeed = 0;
}

x = x + xspeed;