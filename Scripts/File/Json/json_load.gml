/// @description Json load
///
/// Loads json object from a file
///
/// @arg file_location
///
/// @author eNzy
/// @link https://github.com/eNzyOfficial

var str = f_text_read(argument0);

if (empty(str)) return false;

return json_decode(str);