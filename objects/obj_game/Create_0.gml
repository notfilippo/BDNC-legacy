/// @description Create all managers

var l = "Managers"

randomize()

object_set_persistent(instance_create_layer(x, y, l, obj_os_manager), true)
object_set_persistent(instance_create_layer(x, y, l, obj_ai_manager), true)
object_set_persistent(instance_create_layer(x, y, l, obj_audio_manager), true)

instance_create_layer(room_width / 2, 0, "Managers", obj_camera)

room_goto_next()