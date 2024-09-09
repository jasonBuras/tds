/// @description Insert description here
// You can write your code in this editor
if(global.show_message){
	if (global.message_timer > 0) {
    global.message_timer--;
	}else {
		global.show_message = false;
	}
}