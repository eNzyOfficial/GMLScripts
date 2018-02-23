/// @description Dir create
///
/// Creates directory if it doesn't exist
///
/// @arg file_location
///
/// @author eNzy
/// @link https://github.com/eNzyOfficial

if (!directory_exists(argument0)) {
	directory_create(argument0);
}