rn = random(9)
if place_meeting(x,y+spd,Player){
    if(rn <=1){
    sprite_index = Banana
    }
    else if(rn<=3){
    sprite_index = bomb
    }
    else{
        sprite_index = Apple
    }
    spd = 0;
    x = random_range(xstart-300,xstart+300);
    y = random_range(ystart,ystart);
    global.points = global.points + pt
    global.hp = global.hp + heal
    audio_play_sound(Sound1,1,false);
}
    
if place_meeting(x,y+spd,wall){
    x = random_range(xstart-300,xstart+300);
    y = random_range(ystart,ystart);
    spd = 0;
    global.hp = global.hp + heal;
    audio_play_sound(Sound2,1,false);
    if(global.hp = 0){
        game_end();
    }
    }
        
else{
    spd = 8;
}
y = y + spd;

if(sprite_index=Banana){
    pt = 2
}
if(sprite_index=bomb){
    pt = 0
    heal = -1
}
else{
    pt = 1
    heal = 0
}
