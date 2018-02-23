/// @description Empty
///
/// Returns if the given value is empty
///
/// @arg array
/// @arg [glue]
///
/// @author eNzy
/// @link https://github.com/eNzyOfficial

if (argument0 == "" || argument0 == 0 || argument0 == 0.0 || argument0 == "0" || argument0 == pointer_null || argument0 == false || argument0 == []) {
	return true;
}

return false;