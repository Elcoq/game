if y=random_range(ystart,ystart){
    sprite_index = choose(banana_skin,bomb_skin,apple_skin,add_health)
}
if place_meeting(x,y+global.spd,Player){
    if global.catches%10==0{
        global.spd=maxspeed
        maxspeed++
    }
    
    x = random_range(xstart-300,xstart+300);
    y = random_range(ystart,ystart);
    global.points = global.points + pt
    if(global.hp<3 and sprite_index = add_health){
        global.hp = global.hp + heal

    }
    if(sprite_index = bomb_skin){
        global.hp = global.hp + heal
        audio_play_sound(Sound2,1,false);
    }else{
        audio_play_sound(Sound1,1,false);
    }
    if(global.hp = 0){
        room_goto(Menu)
    }
    if sprite_index != bomb{
        global.catches++
    }
    
    sprite_index = choose(banana_skin,bomb_skin,apple_skin,add_health)

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

if place_meeting(x,y+global.spd,wall){
    x = random_range(xstart-300,xstart+300);
    y = random_range(ystart,ystart);

    if(sprite_index!=bomb_skin){
        if(sprite_index!=add_health){ 
            audio_play_sound(Sound2,1,false);
            global.hp = global.hp - 1;
            if(global.hp = 0){
            room_goto(Menu)
        }

    }
    }
    sprite_index = apple_skin
    if(global.hp = 0){
        room_goto(Menu)
    }
    }

y = y + global.spd;