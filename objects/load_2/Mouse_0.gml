function json_to_string(fileName) {
    var _json_string = "";
    if (file_exists(fileName)) {
        var _file_id = file_text_open_read(fileName);
        while (!file_text_eof(_file_id)) {
            _json_string += file_text_read_string(_file_id);
            file_text_readln(_file_id);
        }
        file_text_close(_file_id);
    }
    return _json_string;
}

var data = json_to_string("user_data2.json");
var parse_data = json_parse(data);
global.hp = parse_data.d_hp
global.points = parse_data.d_pt
global.spd = parse_data.d_spd
global.catches = parse_data.d_catches