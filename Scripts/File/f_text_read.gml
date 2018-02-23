/// @description File text read
///
/// Loads and returns an a file
///
/// @arg file_location
/// @arg [new_line_char]
///
/// @author eNzy
/// @link https://github.com/eNzyOfficial

if (!file_exists(argument0)) return false;

var file =  file_text_open_read(argument[0]);

if (file == -1) return false; 
if (file_text_eof(file)) return "";

var nl = (argument_count > 1) ? argument[1] : chr(10);
var str = file_text_readln(file);

while (!file_text_eof(file)) {
	
	file_text_readln(file);
	
	str += nl + file_text_readln(file);
}

return str;