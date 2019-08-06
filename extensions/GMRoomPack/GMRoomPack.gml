#define room_pack_init
// Generated at 2018-12-01 09:24:35 (859ms) for v2.1.4+
globalvar f_room_pack_eval_script_lf;f_room_pack_eval_script_lf=asset_get_index("room_pack_eval_script_lf");
globalvar f_room_pack_const_script_lf;f_room_pack_const_script_lf=asset_get_index("room_pack_const_script_lf");
globalvar g_room_pack_flag_settings;g_room_pack_flag_settings=1;
globalvar g_room_pack_flag_instances;g_room_pack_flag_instances=2;
globalvar g_room_pack_flag_backgrounds;g_room_pack_flag_backgrounds=4;
globalvar g_room_pack_flag_tiles;g_room_pack_flag_tiles=8;
globalvar g_room_pack_flag_views;g_room_pack_flag_views=16;
globalvar g_room_pack_flag_sprites;g_room_pack_flag_sprites=32;
globalvar g_room_pack_flag_all;g_room_pack_flag_all=255;
globalvar g_room_pack_blank_object;g_room_pack_blank_object=-1;
globalvar g_room_pack_eval_script;g_room_pack_eval_script=f_room_pack_eval_script_lf;
globalvar g_room_pack_const_script;g_room_pack_const_script=f_room_pack_const_script_lf;
globalvar g_room_pack_raw_object_cache;g_room_pack_raw_object_cache=ds_map_create();
globalvar g_room_pack_raw_sprite_cache;g_room_pack_raw_sprite_cache=ds_map_create();
globalvar g_room_pack_raw_use_physics;g_room_pack_raw_use_physics=false;
globalvar g_room_pack_raw_room_x;g_room_pack_raw_room_x=0;
globalvar g_room_pack_raw_room_y;g_room_pack_raw_room_y=0;
globalvar g_room_pack_raw_apply_backgrounds;g_room_pack_raw_apply_backgrounds=true;
globalvar g_room_pack_raw_apply_instances;g_room_pack_raw_apply_instances=true;
globalvar g_room_pack_raw_apply_tiles;g_room_pack_raw_apply_tiles=true;
globalvar g_room_pack_raw_apply_views;g_room_pack_raw_apply_views=true;
globalvar g_room_pack_raw_apply_settings;g_room_pack_raw_apply_settings=true;
globalvar g_room_pack_raw_apply_sprites;g_room_pack_raw_apply_sprites=true;
globalvar g_room_pack_raw_store_instances;g_room_pack_raw_store_instances=undefined;
globalvar g_room_pack_raw_store_backgrounds;g_room_pack_raw_store_backgrounds=undefined;
globalvar g_room_pack_raw_store_sprites;g_room_pack_raw_store_sprites=undefined;
globalvar g_room_pack_raw_store_tilemaps;g_room_pack_raw_store_tilemaps=undefined;
globalvar g_room_pack_raw_store_tilemaps_ext;g_room_pack_raw_store_tilemaps_ext=false;
globalvar g_room_pack_raw_include_layers;g_room_pack_raw_include_layers=ds_map_create();
globalvar g_room_pack_raw_include_layers_on;g_room_pack_raw_include_layers_on=false;
globalvar g_room_pack_raw_exclude_layers;g_room_pack_raw_exclude_layers=ds_map_create();

#define room_pack_eval_script_lf
/// @function room_pack_eval_script_lf(_:string, s:string)
/// @param _:string
/// @param s:string
var l_s=argument[1];
show_debug_message("Can't execute code for "+l_s+" - please assign an evaluator script to room_pack_eval_script (see doc)");

#define room_pack_const_script_lf
/// @function room_pack_const_script_lf(s:string, v:?)
/// @param s:string
/// @param v:?


#define room_pack_store_instances
/// @function room_pack_store_instances(list:ds_list<instance>)
/// @param list:ds_list<instance>
var l_list=argument[0];
g_room_pack_raw_store_instances=l_list;

#define room_pack_store_tilemaps
/// @function room_pack_store_tilemaps(list:ds_list<tilemap>, ext:bool = false)
/// @param list:ds_list<tilemap>
/// @param ext:bool=false
var l_list=argument[0],l_ext;
if(argument_count>1)l_ext=argument[1];else l_ext=false;
g_room_pack_raw_store_tilemaps=l_list;
g_room_pack_raw_store_tilemaps_ext=l_ext;

#define room_pack_store_backgrounds
/// @function room_pack_store_backgrounds(list:ds_list<layer_background>)
/// @param list:ds_list<layer_background>
var l_list=argument[0];
g_room_pack_raw_store_backgrounds=l_list;

#define room_pack_store_sprites
/// @function room_pack_store_sprites(list:ds_list<layer_sprite>)
/// @param list:ds_list<layer_sprite>
var l_list=argument[0];
g_room_pack_raw_store_sprites=l_list;

#define room_pack_include_layer
/// @function room_pack_include_layer(name:string)
/// @param name:string
var l_name=argument[0];
g_room_pack_raw_include_layers_on=true;
g_room_pack_raw_include_layers[?l_name]=true;

#define room_pack_exclude_layer
/// @function room_pack_exclude_layer(name:string)
/// @param name:string
var l_name=argument[0];
g_room_pack_raw_exclude_layers[?l_name]=true;

#define room_pack_load_map
/// @function room_pack_load_map(map:dynamic, x:real = 0, y:real = 0, flags:RoomPackBitFlags = 46)
/// @param map:dynamic
/// @param x:real=0
/// @param y:real=0
/// @param flags:RoomPackBitFlags=46
var l_map=argument[0],l_x,l_y,l_flags;
if(argument_count>1)l_x=argument[1];else l_x=0;
if(argument_count>2)l_y=argument[2];else l_y=0;
if(argument_count>3)l_flags=argument[3];else l_flags=46;
g_room_pack_raw_apply_settings=(l_flags&1)!=0;
g_room_pack_raw_apply_instances=(l_flags&2)!=0;
g_room_pack_raw_apply_backgrounds=(l_flags&4)!=0;
g_room_pack_raw_apply_tiles=(l_flags&8)!=0;
g_room_pack_raw_apply_views=(l_flags&16)!=0;
g_room_pack_raw_room_x=l_x;
g_room_pack_raw_room_y=l_y;
g_room_pack_raw_apply_sprites=(l_flags&32)!=0;
room_pack_raw_run_impl2(l_map);
g_room_pack_raw_store_tilemaps=undefined;
g_room_pack_raw_store_backgrounds=undefined;
g_room_pack_raw_store_sprites=undefined;
ds_map_clear(g_room_pack_raw_include_layers);
g_room_pack_raw_include_layers_on=false;
ds_map_clear(g_room_pack_raw_exclude_layers);
g_room_pack_raw_store_instances=undefined;

#define room_pack_load_string
/// @function room_pack_load_string(str:string, x:real = 0, y:real = 0, flags:RoomPackBitFlags = 46)->bool
/// @param str:string
/// @param x:real=0
/// @param y:real=0
/// @param flags:RoomPackBitFlags=46
var l_str=argument[0],l_x,l_y,l_flags;
if(argument_count>1)l_x=argument[1];else l_x=0;
if(argument_count>2)l_y=argument[2];else l_y=0;
if(argument_count>3)l_flags=argument[3];else l_flags=46;
var l_raw1=json_decode(l_str);
if(l_raw1==-1)return false;
room_pack_load_map(l_raw1,l_x,l_y,l_flags);
ds_map_destroy(l_raw1);
return true;

#define room_pack_load_file
/// @function room_pack_load_file(path:string, x:real = 0, y:real = 0, flags:RoomPackBitFlags = 46)->bool
/// @param path:string
/// @param x:real=0
/// @param y:real=0
/// @param flags:RoomPackBitFlags=46
var l_path1=argument[0],l_x,l_y,l_flags;
if(argument_count>1)l_x=argument[1];else l_x=0;
if(argument_count>2)l_y=argument[2];else l_y=0;
if(argument_count>3)l_flags=argument[3];else l_flags=46;
if(file_exists(l_path1)){
	var l_buf=buffer_load(l_path1);
	if(l_buf==-1)return false;
	var l_z=room_pack_load_string(buffer_read(l_buf,11),l_x,l_y,l_flags);
	buffer_delete(l_buf);
	return l_z;
} else return false;

#define room_pack_raw_run_cc
/// @function room_pack_raw_run_cc(ccRaw:string, ccPath:string)
/// @param ccRaw:string
/// @param ccPath:string
var l_ccRaw=argument[0],l_ccPath=argument[1];
script_execute(g_room_pack_eval_script,l_ccRaw,l_ccPath);

#define room_pack_raw_init_physics
/// @function room_pack_raw_init_physics(phs:YyRoomPhySettings)
/// @param phs:YyRoomPhySettings
var l_phs=argument[0];
if(l_phs==undefined)return 0;
if(l_phs[?"PhysicsWorld"]){
	g_room_pack_raw_use_physics=true;
	physics_world_create(l_phs[?"PhysicsWorldPixToMeters"]);
	physics_world_gravity(l_phs[?"PhysicsWorldGravityX"],l_phs[?"PhysicsWorldGravityY"]);
} else g_room_pack_raw_use_physics=false;

#define room_pack_raw_anim_speed
/// @function room_pack_raw_anim_speed(val:real, type:string)->real
/// @param val:real
/// @param type:string
var l_val=argument[0],l_type=argument[1];
if(l_type=="0")return l_val/room_speed; else return l_val;

#define room_pack_raw_add_layer
/// @function room_pack_raw_add_layer(ql:YyRoomLayer)
/// @param ql:YyRoomLayer
var l_ql=argument[0];
var l_ql_depth=l_ql[?"depth"];
var l_ql_name=l_ql[?"name"];
if(g_room_pack_raw_include_layers_on&&!ds_map_exists(g_room_pack_raw_include_layers,l_ql_name))return 0;
if(ds_map_exists(g_room_pack_raw_exclude_layers,l_ql_name))return 0;
var l_rl,l_i,l_n,l_f,l_s,l_aval,l_rx,l_ry;
switch(l_ql[?"modelName"]){
	case "GMRLayer":
		l_rl=layer_get_id(l_ql_name);
		if(l_rl==-1){
			l_rl=layer_create(l_ql_depth,l_ql_name);
			if(l_ql[?"visible"]!=undefined)layer_set_visible(l_rl,l_ql[?"visible"]);
		}
		var l_sublayers=l_ql[?"layers"];
		var l_i1=ds_list_size(l_sublayers);
		while(--l_i1>=0){
			room_pack_raw_add_layer(l_sublayers[|l_i1]);
		}
		break;
	case "GMRBackgroundLayer":
		if(g_room_pack_raw_apply_backgrounds){
			l_rl=layer_get_id(l_ql_name);
			if(l_rl==-1){
				l_rl=layer_create(l_ql_depth,l_ql_name);
				if(l_ql[?"visible"]!=undefined)layer_set_visible(l_rl,l_ql[?"visible"]);
			}
			var l_qb=l_ql;
			l_s=l_qb[?"sprite"];
			var l_rb=layer_background_create(l_rl,(l_s!=undefined)?asset_get_index(l_s):-1);
			l_aval=l_qb[?"color"];
			if(l_aval!=undefined){
				layer_background_blend(l_rb,(l_aval&16777215));
				layer_background_alpha(l_rb,((l_aval>>24)/255));
			}
			l_aval=l_qb[?"htiled"];
			if(l_aval!=undefined)layer_background_htiled(l_rb,l_aval); else layer_background_htiled(l_rb,true);
			l_aval=l_qb[?"vtiled"];
			if(l_aval!=undefined)layer_background_vtiled(l_rb,l_aval); else layer_background_vtiled(l_rb,true);
			l_aval=l_qb[?"stretch"];
			if(l_aval!=undefined)layer_background_stretch(l_rb,l_aval); else layer_background_stretch(l_rb,false);
			l_aval=l_qb[?"animationFPS"];
			if(l_aval!=undefined)layer_background_speed(l_rb,room_pack_raw_anim_speed(l_aval,l_qb[?"animationSpeedType"]));
			l_aval=l_qb[?"x"];
			if(l_aval==undefined)l_aval=0;
			layer_x(l_rl,(g_room_pack_raw_room_x+l_aval));
			l_aval=l_qb[?"y"];
			if(l_aval==undefined)l_aval=0;
			layer_y(l_rl,(g_room_pack_raw_room_y+l_aval));
			var l_list1=g_room_pack_raw_store_backgrounds;
			if(l_list1!=undefined)ds_list_add(l_list1,l_rb);
		}
		break;
	case "GMRTileLayer":
		if(g_room_pack_raw_apply_tiles){
			l_rl=layer_get_id(l_ql_name);
			if(l_rl==-1){
				l_rl=layer_create(l_ql_depth,l_ql_name);
				if(l_ql[?"visible"]!=undefined)layer_set_visible(l_rl,l_ql[?"visible"]);
			}
			var l_qt=l_ql;
			var l_qtt=l_qt[?"tiles"];
			var l_qtw=l_qtt[?"SerialiseWidth"];
			var l_qth=l_qtt[?"SerialiseHeight"];
			var l_rt=layer_tilemap_create(l_rl,g_room_pack_raw_room_x+l_qt[?"x"],g_room_pack_raw_room_y+l_qt[?"y"],asset_get_index(l_qt[?"tileset"]),l_qtw,l_qth);
			var l_qtd=l_qtt[?"TileSerialiseData"];
			var l_qti=0;
			var l_y1=0;
			for(var l__g1=l_qth;l_y1<l__g1;l_y1++){
				var l_x1=0;
				for(var l__g11=l_qtw;l_x1<l__g11;l_x1++){
					tilemap_set(l_rt,l_qtd[|l_qti++],l_x1,l_y1);
				}
			}
			var l_tms=g_room_pack_raw_store_tilemaps;
			if(l_tms!=undefined){
				if(g_room_pack_raw_store_tilemaps_ext)ds_list_add(l_tms,[l_rt,l_rl]); else ds_list_add(l_tms,l_rt);
			}
		}
		break;
	case "GMRInstanceLayer":
		if(g_room_pack_raw_apply_instances){
			l_rl=layer_get_id(l_ql_name);
			if(l_rl==-1){
				l_rl=layer_create(l_ql_depth,l_ql_name);
				if(l_ql[?"visible"]!=undefined)layer_set_visible(l_rl,l_ql[?"visible"]);
			}
			var l_qi=l_ql;
			l_rx=g_room_pack_raw_room_x;
			l_ry=g_room_pack_raw_room_y;
			var l_instances=l_qi[?"instances"];
			l_n=ds_list_size(l_instances);
			var l_base=g_room_pack_blank_object;
			if(l_n!=0){
				if(!object_exists(l_base))show_error("Please add a blank object and set room_pack_blank_object to point at it prior to loading.",false);
			}
			var l_lco=g_room_pack_raw_object_cache;
			l_i=-1;
			while(++l_i<l_n){
				var l_qinst=l_instances[|l_i];
				var l_rnext=instance_create_layer((l_rx+l_qinst[?"x"]),(l_ry+l_qinst[?"y"]),l_rl,l_base);
				with (l_rnext) {
					var l_rname=l_qinst[?"name"];
					script_execute(g_room_pack_const_script,l_rname,self);
					l_aval=l_qinst[?"rotation"];
					if(l_aval!=undefined)self.image_angle=l_aval;
					l_aval=l_qinst[?"scaleX"];
					if(l_aval!=undefined)self.image_xscale=l_aval;
					l_aval=l_qinst[?"scaleY"];
					if(l_aval!=undefined)self.image_yscale=l_aval;
					l_f=l_qinst[?"color"];
					if(l_f!=undefined){
						self.image_blend=(l_f&16777215);
						self.image_alpha=(l_f>>24)/255;
					}
					l_s=l_qinst[?"obj"];
					var l_id1=l_lco[?l_s];
					if(l_id1==undefined){
						l_id1=asset_get_index(l_s);
						l_lco[?l_s]=l_id1;
					}
					instance_change(l_id1,false);
					event_perform(14,0);
					var l_rcc=l_qinst[?"propertyCode"];
					if(l_rcc!=undefined&&l_rcc!="")room_pack_raw_run_cc(l_rcc,l_rname+":Properties");
					event_perform(ev_create,0);
					l_rcc=l_qinst[?"creationCode"];
					if(l_rcc!=undefined&&l_rcc!="")room_pack_raw_run_cc(l_rcc,l_rname+":CreationCode");
					var l_list2=g_room_pack_raw_store_instances;
					if(l_list2!=undefined)ds_list_add(l_list2,self);
				}
			}
		}
		break;
	case "GMRAssetLayer":
		if(g_room_pack_raw_apply_sprites){
			l_rl=layer_get_id(l_ql_name);
			if(l_rl==-1){
				l_rl=layer_create(l_ql_depth,l_ql_name);
				if(l_ql[?"visible"]!=undefined)layer_set_visible(l_rl,l_ql[?"visible"]);
			}
			var l_sprites=l_ql[?"assets"];
			l_n=ds_list_size(l_sprites);
			var l_lcs=g_room_pack_raw_sprite_cache;
			l_rx=g_room_pack_raw_room_x;
			l_ry=g_room_pack_raw_room_y;
			l_i=-1;
			while(++l_i<l_n){
				var l_qspr=l_sprites[|l_i];
				l_s=l_qspr[?"sprite"];
				var l_rspr=l_rx+l_qspr[?"x"];
				var l_rspr1=l_ry+l_qspr[?"y"];
				var l_id=l_lcs[?l_s];
				if(l_id==undefined){
					l_id=asset_get_index(l_s);
					l_lcs[?l_s]=l_id;
				}
				var l_rspr2=layer_sprite_create(l_rl,l_rspr,l_rspr1,l_id);
				l_aval=l_qspr[?"frameIndex"];
				if(l_aval!=undefined)layer_sprite_index(l_rspr2,l_aval);
				l_aval=l_qspr[?"scaleX"];
				if(l_aval!=undefined)layer_sprite_xscale(l_rspr2,l_aval);
				l_aval=l_qspr[?"scaleY"];
				if(l_aval!=undefined)layer_sprite_yscale(l_rspr2,l_aval);
				l_aval=l_qspr[?"rotation"];
				if(l_aval!=undefined)layer_sprite_angle(l_rspr2,l_aval);
				l_f=l_qspr[?"color"];
				if(l_f!=undefined){
					layer_sprite_blend(l_rspr2,(l_f&16777215));
					layer_sprite_alpha(l_rspr2,((l_f>>24)/255));
				}
				if(l_qspr[?"userdefined_animFPS"])layer_sprite_speed(l_rspr2,room_pack_raw_anim_speed(l_qspr[?"animationFPS"],l_qspr[?"animationSpeedType"]));
				var l_list=g_room_pack_raw_store_sprites;
				if(l_list!=undefined)ds_list_add(l_list,l_rspr2);
			}
		}
		break;
}

#define room_pack_raw_run_impl2
/// @function room_pack_raw_run_impl2(rm:YyRoom)
/// @param rm:YyRoom
var l_rm=argument[0];
if(g_room_pack_raw_apply_settings){
	room_width=ds_map_find_value(l_rm[?"roomSettings"],"Width");
	room_height=ds_map_find_value(l_rm[?"roomSettings"],"Height");
	room_pack_raw_init_physics(l_rm[?"physicsSettings"]);
}
var l_aval;
var l_lrs=l_rm[?"layers"];
var l_lrk=ds_list_size(l_lrs);
while(--l_lrk>=0){
	room_pack_raw_add_layer(l_lrs[|l_lrk]);
}
if(g_room_pack_raw_apply_views){
	l_aval=ds_map_find_value(l_rm[?"viewSettings"],"enableViews");
	if(l_aval!=undefined)view_enabled=l_aval; else view_enabled=false;
	var l_qvs=l_rm[?"views"];
	if(l_qvs!=undefined){
		var l_i=0;
		for(var l__g1=ds_list_size(l_qvs);l_i<l__g1;l_i++){
			var l_qv=l_qvs[|l_i];
			if(l_qv==undefined)continue;
			var l_rv=l_i;
			l_aval=l_qv[?"visible"];
			if(l_aval!=undefined)view_visible[l_rv]=l_aval; else view_visible[l_rv]=false;
			l_aval=l_qv[?"xport"];
			if(l_aval!=undefined)view_xport[l_rv]=l_aval; else view_xport[l_rv]=0;
			l_aval=l_qv[?"yport"];
			if(l_aval!=undefined)view_yport[l_rv]=l_aval; else view_yport[l_rv]=0;
			l_aval=l_qv[?"wport"];
			if(l_aval!=undefined)view_wport[l_rv]=l_aval; else view_wport[l_rv]=1024;
			l_aval=l_qv[?"hport"];
			if(l_aval!=undefined)view_hport[l_rv]=l_aval; else view_hport[l_rv]=768;
			var l_rc=view_camera[l_rv];
			var l_vx,l_vy;
			l_vx=l_qv[?"xview"];
			if(l_vx==undefined)l_vx=0;
			l_vy=l_qv[?"yview"];
			if(l_vy==undefined)l_vy=0;
			camera_set_view_pos(l_rc,g_room_pack_raw_room_x+l_vx,g_room_pack_raw_room_y+l_vy);
			l_vx=l_qv[?"wview"];
			if(l_vx==undefined)l_vx=1024;
			l_vy=l_qv[?"hview"];
			if(l_vy==undefined)l_vy=768;
			camera_set_view_size(l_rc,l_vx,l_vy);
			l_aval=l_qv[?"obj"];
			if(l_aval!=undefined)camera_set_view_target(l_rc,asset_get_index(l_aval));
			l_vx=l_qv[?"hspeed"];
			if(l_vx==undefined)l_vx=-1;
			l_vy=l_qv[?"vspeed"];
			if(l_vy==undefined)l_vy=-1;
			camera_set_view_speed(l_rc,l_vx,l_vy);
			l_vx=l_qv[?"hborder"];
			if(l_vx==undefined)l_vx=32;
			l_vy=l_qv[?"vborder"];
			if(l_vy==undefined)l_vy=32;
			camera_set_view_border(l_rc,l_vx,l_vy);
		}
	}
}
var l_s=l_rm[?"creationCode"];
if(l_s!=undefined&&l_s!="")room_pack_raw_run_cc(l_s,l_rm[?"name"]+":CreationCode");
