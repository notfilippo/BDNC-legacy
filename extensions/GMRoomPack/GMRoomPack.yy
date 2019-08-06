{
    "id": "3969cb90-038d-4821-b7eb-cd6e9de3586f",
    "modelName": "GMExtension",
    "mvc": "1.0",
    "name": "GMRoomPack",
    "IncludedResources": [
        
    ],
    "androidPermissions": [
        
    ],
    "androidProps": false,
    "androidactivityinject": "",
    "androidclassname": "",
    "androidinject": "",
    "androidmanifestinject": "",
    "androidsourcedir": "",
    "author": "",
    "classname": "",
    "copyToTargets": -1,
    "date": "2018-23-05 04:10:53",
    "description": "",
    "extensionName": "",
    "files": [
        {
            "id": "22c76632-806a-4774-8943-8cb4df3bb75c",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                {
                    "id": "5b272ca4-2a98-b325-e12c-0a87c5330af2",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "room_pack_flag_settings",
                    "hidden": false,
                    "value": "1"
                },
                {
                    "id": "677b4b99-6ec8-8cbd-6b41-71d88c5f9ffa",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "room_pack_flag_instances",
                    "hidden": false,
                    "value": "2"
                },
                {
                    "id": "61379255-5c96-53ca-7974-94bfd469107b",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "room_pack_flag_backgrounds",
                    "hidden": false,
                    "value": "4"
                },
                {
                    "id": "3a127c2e-6bc8-8022-b9fe-dd6ed25a6dac",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "room_pack_flag_tiles",
                    "hidden": false,
                    "value": "8"
                },
                {
                    "id": "02779bc2-644a-a178-7a5c-57b2ec34cb81",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "room_pack_flag_views",
                    "hidden": false,
                    "value": "16"
                },
                {
                    "id": "4ead1c54-354d-4a7b-8620-070eb9285e71",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "room_pack_flag_sprites",
                    "hidden": false,
                    "value": "32"
                },
                {
                    "id": "729c8ebf-9782-1726-3492-854315d33759",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "room_pack_flag_all",
                    "hidden": false,
                    "value": "255"
                },
                {
                    "id": "71d94ee9-51ac-5e18-c6f0-0cd9036a2b5e",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "room_pack_blank_object",
                    "hidden": false,
                    "value": "g_room_pack_blank_object"
                },
                {
                    "id": "87e05e08-d732-86ba-0716-4812165f529f",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "room_pack_eval_script",
                    "hidden": false,
                    "value": "g_room_pack_eval_script"
                },
                {
                    "id": "140a3e6e-4c09-165b-7832-3c6aba5cfc57",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "room_pack_const_script",
                    "hidden": false,
                    "value": "g_room_pack_const_script"
                }
            ],
            "copyToTargets": -1,
            "filename": "GMRoomPack.gml",
            "final": "",
            "functions": [
                {
                    "id": "c997aff1-29fa-ad79-94c2-3b8a54910660",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "room_pack_init",
                    "help": "",
                    "hidden": true,
                    "kind": 2,
                    "name": "room_pack_init",
                    "returnType": 2
                },
                {
                    "id": "90cc1aae-7928-3c58-45b8-ce3318d5b1ca",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "room_pack_eval_script_lf",
                    "help": "",
                    "hidden": true,
                    "kind": 2,
                    "name": "room_pack_eval_script_lf",
                    "returnType": 2
                },
                {
                    "id": "48b95807-a98b-5b36-7498-d17125166f85",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "room_pack_const_script_lf",
                    "help": "",
                    "hidden": true,
                    "kind": 2,
                    "name": "room_pack_const_script_lf",
                    "returnType": 2
                },
                {
                    "id": "91b7fdca-d958-4bfc-ca57-995b6ca35269",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "room_pack_store_instances",
                    "help": "room_pack_store_instances(list:ds_list<instance>)",
                    "hidden": false,
                    "kind": 2,
                    "name": "room_pack_store_instances",
                    "returnType": 2
                },
                {
                    "id": "071ac256-49fe-af10-8f05-4999bbc77176",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "room_pack_store_tilemaps",
                    "help": "room_pack_store_tilemaps(list:ds_list<tilemap>, ext:bool = false)",
                    "hidden": false,
                    "kind": 2,
                    "name": "room_pack_store_tilemaps",
                    "returnType": 2
                },
                {
                    "id": "9df8d2eb-3fe9-68f7-a588-fe38454d4e2a",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "room_pack_store_backgrounds",
                    "help": "room_pack_store_backgrounds(list:ds_list<layer_background>)",
                    "hidden": false,
                    "kind": 2,
                    "name": "room_pack_store_backgrounds",
                    "returnType": 2
                },
                {
                    "id": "af8f63f9-e233-d34d-6f3b-f84a3257b07d",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "room_pack_store_sprites",
                    "help": "room_pack_store_sprites(list:ds_list<layer_sprite>)",
                    "hidden": false,
                    "kind": 2,
                    "name": "room_pack_store_sprites",
                    "returnType": 2
                },
                {
                    "id": "91a2f1b7-8571-1caf-a16c-2455eaff2538",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "room_pack_include_layer",
                    "help": "room_pack_include_layer(name:string)",
                    "hidden": false,
                    "kind": 2,
                    "name": "room_pack_include_layer",
                    "returnType": 2
                },
                {
                    "id": "1ffdbb8a-59c9-40e2-86cb-127b4d069b9e",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "room_pack_exclude_layer",
                    "help": "room_pack_exclude_layer(name:string)",
                    "hidden": false,
                    "kind": 2,
                    "name": "room_pack_exclude_layer",
                    "returnType": 2
                },
                {
                    "id": "f59b60a6-1e8b-afc3-d7de-552235cb0ce4",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "room_pack_load_map",
                    "help": "room_pack_load_map(map:dynamic, x:real = 0, y:real = 0, flags:RoomPackBitFlags = 46)",
                    "hidden": false,
                    "kind": 2,
                    "name": "room_pack_load_map",
                    "returnType": 2
                },
                {
                    "id": "10a16197-13f6-b5dd-d33f-2bf88ef2b29e",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "room_pack_load_string",
                    "help": "room_pack_load_string(str:string, x:real = 0, y:real = 0, flags:RoomPackBitFlags = 46)->bool",
                    "hidden": false,
                    "kind": 2,
                    "name": "room_pack_load_string",
                    "returnType": 2
                },
                {
                    "id": "a728be20-29e4-c53d-b2a6-dca1a4fca851",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "room_pack_load_file",
                    "help": "room_pack_load_file(path:string, x:real = 0, y:real = 0, flags:RoomPackBitFlags = 46)->bool",
                    "hidden": false,
                    "kind": 2,
                    "name": "room_pack_load_file",
                    "returnType": 2
                },
                {
                    "id": "e72cccc2-e70e-1e0d-b299-9ec81aee72bb",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "room_pack_raw_run_cc",
                    "help": "",
                    "hidden": true,
                    "kind": 2,
                    "name": "room_pack_raw_run_cc",
                    "returnType": 2
                },
                {
                    "id": "1b3f007d-ee74-6fa4-831c-a002e26b4b02",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "room_pack_raw_init_physics",
                    "help": "",
                    "hidden": true,
                    "kind": 2,
                    "name": "room_pack_raw_init_physics",
                    "returnType": 2
                },
                {
                    "id": "fce34489-6742-4dba-fe5f-0a6cdf363b83",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "room_pack_raw_anim_speed",
                    "help": "",
                    "hidden": true,
                    "kind": 2,
                    "name": "room_pack_raw_anim_speed",
                    "returnType": 2
                },
                {
                    "id": "c6d79f57-172d-7846-ace0-4f2569f7dbc3",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "room_pack_raw_add_layer",
                    "help": "",
                    "hidden": true,
                    "kind": 2,
                    "name": "room_pack_raw_add_layer",
                    "returnType": 2
                },
                {
                    "id": "1d17b9f8-c940-f50a-bd6a-813115bc40cb",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "room_pack_raw_run_impl2",
                    "help": "",
                    "hidden": true,
                    "kind": 2,
                    "name": "room_pack_raw_run_impl2",
                    "returnType": 2
                }
            ],
            "init": "room_pack_init",
            "kind": 2,
            "order": [
                "90cc1aae-7928-3c58-45b8-ce3318d5b1ca",
                "48b95807-a98b-5b36-7498-d17125166f85",
                "f59b60a6-1e8b-afc3-d7de-552235cb0ce4",
                "a728be20-29e4-c53d-b2a6-dca1a4fca851",
                "e72cccc2-e70e-1e0d-b299-9ec81aee72bb",
                "1b3f007d-ee74-6fa4-831c-a002e26b4b02",
                "fce34489-6742-4dba-fe5f-0a6cdf363b83",
                "c6d79f57-172d-7846-ace0-4f2569f7dbc3",
                "1d17b9f8-c940-f50a-bd6a-813115bc40cb",
                "c997aff1-29fa-ad79-94c2-3b8a54910660",
                "91b7fdca-d958-4bfc-ca57-995b6ca35269",
                "071ac256-49fe-af10-8f05-4999bbc77176",
                "9df8d2eb-3fe9-68f7-a588-fe38454d4e2a",
                "af8f63f9-e233-d34d-6f3b-f84a3257b07d",
                "91a2f1b7-8571-1caf-a16c-2455eaff2538",
                "1ffdbb8a-59c9-40e2-86cb-127b4d069b9e",
                "10a16197-13f6-b5dd-d33f-2bf88ef2b29e"
            ],
            "origname": "",
            "uncompress": false
        }
    ],
    "gradleinject": "",
    "helpfile": "",
    "installdir": "",
    "iosProps": false,
    "iosSystemFrameworkEntries": [
        
    ],
    "iosThirdPartyFrameworkEntries": [
        
    ],
    "iosdelegatename": null,
    "iosplistinject": "",
    "license": "",
    "maccompilerflags": "",
    "maclinkerflags": "",
    "macsourcedir": "",
    "packageID": "",
    "productID": "",
    "sourcedir": "",
    "tvosProps": false,
    "tvosSystemFrameworkEntries": [
        
    ],
    "tvosThirdPartyFrameworkEntries": [
        
    ],
    "tvosclassname": "",
    "tvosdelegatename": null,
    "tvosmaccompilerflags": "",
    "tvosmaclinkerflags": "",
    "tvosplistinject": "",
    "version": "0.0.1"
}