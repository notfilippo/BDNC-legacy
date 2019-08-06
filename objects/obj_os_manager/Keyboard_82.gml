/// @description Reload

if (room == room_tutorial || room == room_0 || room == room_1 || room == room_2){
    room_restart()
    obj_camera.follow = obj_player
}