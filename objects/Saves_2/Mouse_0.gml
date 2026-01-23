var game_data_struct = {
    "d_hp" : global.hp,
    "d_pt" : global.points,
    "d_spd" : global.spd,
    "d_catches" : global.catches
    
}
function save_json(_data, _name) {
    var json_str = json_stringify(_data);
    var _buffer = buffer_create(string_byte_length(json_str) + 1, buffer_fixed, 1);
    buffer_write(_buffer, buffer_string, json_str);
    buffer_save(_buffer, _name);
    buffer_delete(_buffer);
}


save_json(game_data_struct, "user_data2.json");