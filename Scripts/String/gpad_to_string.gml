/// @description Gamepad to string
///
/// Returns a string of keycode
///
/// @arg gp_code
///
/// @author eNzy
/// @link https://github.com/eNzyOfficial

switch(argument0) {
	default: return string(argument0);
	case gp_face1: return "A";
	case gp_face2: return "B";
	case gp_face3: return "X";
	case gp_face4: return "Y";
	
	case gp_shoulderl: return "Left Bumper";
	case gp_shoulderlb: return "Left Trigger";
	case gp_shoulderr: return "Right Bumper";
	case gp_shoulderrb: return "Right Trigger";
	
	case gp_select: return "Select";
	case gp_start: return "Start";
	
	case gp_stickl: return "Left Stick";
	case gp_stickr: return "Right Stick";
	
	case gp_padu: return "Up";
	case gp_padl: return "Left";
	case gp_padr: return "Right";
	case gp_padd: return "Down";
	
	case gp_axislh: return "Left Stick X";
	case gp_axislv: return "Left Stick Y";
	case gp_axisrh: return "Right Stick X";
	case gp_axisrv: return "Right Stick Y";	
}