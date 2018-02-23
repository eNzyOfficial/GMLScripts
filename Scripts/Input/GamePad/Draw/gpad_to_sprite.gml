/// @description Gamepad to sprite
///
/// Returns sprite index from gamepad code
///
/// @arg gp_code
///
/// @author eNzy
/// @link https://github.com/eNzyOfficial

switch(argument0) {
	default: return string(argument0);
	case gp_face1: return 0;
	case gp_face2: return 1;
	case gp_face3: return 2;
	case gp_face4: return 3;
	
	case gp_shoulderl: return 4;
	case gp_shoulderlb: return 5;
	case gp_shoulderr: return 6;
	case gp_shoulderrb: return 7;
	
	case gp_select: return 8;
	case gp_start: return 9;
	
	case gp_stickl: return 10;
	case gp_stickr: return 11;
	
	case gp_padu: return 12;
	case gp_padl: return 13;
	case gp_padr: return 14;
	case gp_padd: return 15;
	case gp_pad: return 16;
	
	case gp_axislh: return 17;
	case gp_axislv: return 18;
	case gp_axisrh: return 19;
	case gp_axisrv: return 20;
	
	case gp_axisll: return 21;
	case gp_axislr: return 22;
	case gp_axislu: return 23;
	case gp_axisld: return 24;
	
	case gp_axisrl: return 25;
	case gp_axisrr: return 26;
	case gp_axisru: return 27;
	case gp_axisrd: return 28;
	
	case gp_axis: return 29;
}