// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
global.midTransition = -1;
global.roomTarget = -1;

// Places the seqence in the room
function TransitionPlaceSequence(_type){
	if (layer_exists("transition")) layer_destroy("transition");
	var _lay = layer_create(-9999, "transition");
	layer_sequence_create(_lay,0,0,_type);
}

// Called whenever you want to go from one room to another, using any combo of in/out sequences
function TransitionStart(_roomTarget, _typeOut, _typeIn){
	
	if (!global.midTransition){
		
		global.midTransition = true;
		global.roomTarget = _roomTarget;
		TransitionPlaceSequence(_typeOut);
		layer_set_target_room(_roomTarget);
		TransitionPlaceSequence(_typeIn);
		layer_reset_target_room();
		return true;
		
	}
	else return false;
}

function TransitionChangeRoom()
{
	room_goto(global.roomTarget);
}

function TransitionFinished()
{
	layer_sequence_destroy(self.elementID);
	global.midTransition = false;
}

