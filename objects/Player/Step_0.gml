l= keyboard_check(ord("A"));
r = keyboard_check(ord("D"));
if(keyboard_check(vk_lshift)&&global.stamina > 0){
    if(keyboard_check(ord("A")))or keyboard_check(ord("D")){
    spd = 8;
    global.stamina = global.stamina - 3;
}
    global.stamina = global.stamina + 1;
}
else{
    spd = 5;
    if(global.stamina<global.max_stamina){
    global.stamina = global.stamina + 1;
    }
}
if(keyboard_check(vk_escape)){
    room_goto(Menu)
}
xspeed = (r-l) * spd;
if place_meeting(x+xspeed,y,wall){
    xspeed = 0;
}

x = x + xspeed;