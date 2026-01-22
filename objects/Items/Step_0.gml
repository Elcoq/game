if y=random_range(ystart,ystart){
    sprite_index = choose(banana_skin,bomb_skin,apple_skin,add_health)
}
if place_meeting(x,y+spd,Player){
    if catches%10==0{
        spd=maxspeed
        maxspeed++
    }
    
    
    sprite_index = choose(banana_skin,bomb_skin,apple_skin,add_health)

    x = random_range(xstart-300,xstart+300);
    y = random_range(ystart,ystart);
    global.points = global.points + pt
    global.hp = global.hp + heal
    audio_play_sound(Sound1,1,false);
    if(global.hp = 0){
        room_goto(Menu)
    }
    if sprite_index != bomb{
        catches++
    }
}
if(sprite_index=banana_skin){
    pt = 2 
        heal = 0
}
    if(sprite_index=bomb_skin){
    pt = 0
    heal = -1
}
    if(sprite_index = apple_skin){
    pt = 1
    heal = 0
}
    if(sprite_index = add_health){
    pt = 0
    heal = 1
}

if place_meeting(x,y+spd,wall){
    x = random_range(xstart-300,xstart+300);
    y = random_range(ystart,ystart);

    if(sprite_index!=bomb_skin){
        audio_play_sound(Sound2,1,false);
        global.hp = global.hp - 1;
        if(global.hp = 0){
        room_goto(Menu)
    }
    }
    sprite_index = apple_skin
    if(global.hp = 0){
        room_goto(Menu)
    }
    }

y = y + spd;


