/// @description Singleton
///
/// Destroys the instance if one already exists.
///
/// @author eNzy
/// @link https://github.com/eNzyOfficial

if (instance_number(object_index) > 1) {
	instance_destroy();
}