/// @description File text write
///
/// Writes text to a file
///
/// @arg directory
/// @arg filename
/// @arg text
///
/// @author eNzy
/// @link https://github.com/eNzyOfficial

dir_create(argument0);

// naming arguments
var file = file_text_open_write(argument0 + "\\" + argument1);
if (file == -1) return false;

file_text_write_string(file, argument2);
file_text_close(file);

return true;