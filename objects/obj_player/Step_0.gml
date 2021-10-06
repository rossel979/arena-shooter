/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 50EE9C58
/// @DnDArgument : "key" "vk_right"
var l50EE9C58_0;
l50EE9C58_0 = keyboard_check(vk_right);
if (l50EE9C58_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 14F955E0
	/// @DnDParent : 50EE9C58
	/// @DnDArgument : "expr" "4"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "x"
	x += 4;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 525E5676
/// @DnDArgument : "key" "vk_down"
var l525E5676_0;
l525E5676_0 = keyboard_check(vk_down);
if (l525E5676_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 33075819
	/// @DnDParent : 525E5676
	/// @DnDArgument : "expr" "4"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "y"
	y += 4;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 103DCBE4
/// @DnDArgument : "key" "vk_left"
var l103DCBE4_0;
l103DCBE4_0 = keyboard_check(vk_left);
if (l103DCBE4_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1086428E
	/// @DnDParent : 103DCBE4
	/// @DnDArgument : "expr" "-4"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "x"
	x += -4;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 125C10AA
/// @DnDArgument : "key" "vk_up"
var l125C10AA_0;
l125C10AA_0 = keyboard_check(vk_up);
if (l125C10AA_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 62E148CA
	/// @DnDParent : 125C10AA
	/// @DnDArgument : "expr" "-4"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "y"
	y += -4;
}

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 5CD2ECAB
/// @DnDArgument : "var" "dir"
/// @DnDArgument : "value" "point_direction(x, y, mouse_x, mouse_y)"
var dir = point_direction(x, y, mouse_x, mouse_y);

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 77DBA576
/// @DnDArgument : "angle" "dir"
image_angle = dir;

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Down
/// @DnDVersion : 1.1
/// @DnDHash : 318D7BBD
var l318D7BBD_0;
l318D7BBD_0 = mouse_check_button(mb_left);
if (l318D7BBD_0)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 02AFE35E
	/// @DnDParent : 318D7BBD
	/// @DnDArgument : "xpos" "mouse_x"
	/// @DnDArgument : "ypos" "mouse_y"
	/// @DnDArgument : "objectid" "obj_bullet"
	/// @DnDSaveInfo : "objectid" "obj_bullet"
	instance_create_layer(mouse_x, mouse_y, "Instances", obj_bullet);
}