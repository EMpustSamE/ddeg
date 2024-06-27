///@arg room
function Player_GetRoomName() {
	var ROOM=argument[0];

	var name="";

	switch(ROOM){
		case -1:
			name="--";
			break;
		case room_area_0:
			name="TEST";
			break;
		case room_corridor:
			name="ETERNAL CORRIDOR"
			break;
	}
	return name;


}
