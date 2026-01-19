if place_meeting(x,y+spd,Player){
    spd = 0;
    x = random_range(xstart-300,xstart+300);
    y = random_range(ystart,ystart);
    global.points = global.points + 1
    audio_play_sound(Sound1,1,false);
}
if place_meeting(x,y+spd,wall){
    spd = 0;
    x = random_range(xstart-300,xstart+300);
    y = random_range(ystart,ystart);
    global.hp = global.hp -1;
    audio_play_sound(Sound2,1,false);
    if(global.hp = 0){
        game_end();
    }
}
else{
    spd = 8;
}
y = y + spd;
