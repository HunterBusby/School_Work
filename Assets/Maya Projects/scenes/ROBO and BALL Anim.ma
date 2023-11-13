//Maya ASCII 2024 scene
//Name: ROBO and BALL Anim.ma
//Last modified: Fri, Nov 10, 2023 07:01:10 PM
//Codeset: 1252
file -rdi 1 -ns "PALBot" -rfn "Robot_Movement:PALBotRN" -op "v=0;" -typ "mayaAscii"
		 "C:/Users/hunte/Documents/Education/Fall 2023/Modeling/Imported/PALBOT/PALBOT/scenes/PALBot.ma";
file -rdi 1 -ns "Ultimate_Walker_Rig" -rfn "Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN"
		 -op "v=0;" -typ "mayaAscii" "C:/Users/hunte/Documents/Education/Fall 2023/Modeling/References/Ultimate_Walker_Rig.ma";
file -r -ns "PALBot" -dr 1 -rfn "Robot_Movement:PALBotRN" -op "v=0;" -typ "mayaAscii"
		 "C:/Users/hunte/Documents/Education/Fall 2023/Modeling/Imported/PALBOT/PALBOT/scenes/PALBot.ma";
file -r -ns "Ultimate_Walker_Rig" -dr 1 -rfn "Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN"
		 -op "v=0;" -typ "mayaAscii" "C:/Users/hunte/Documents/Education/Fall 2023/Modeling/References/Ultimate_Walker_Rig.ma";
requires maya "2024";
requires -nodeType "houdiniAsset" "houdiniEngine" "5.0 (API: 8)";
requires "stereoCamera" "10.0";
requires -nodeType "substanceNode" -nodeType "substanceOutputNode" "substancemaya" "2.3.2";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" -nodeType "aiStandardSurface"
		 "mtoa" "5.3.0";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2024";
fileInfo "version" "2024";
fileInfo "cutIdentifier" "202302170737-4500172811";
fileInfo "osv" "Windows 11 Home v2009 (Build: 22621)";
fileInfo "UUID" "99FD2E18-42CE-0FE8-AF7D-B0873AC9F815";
createNode transform -s -n "persp";
	rename -uid "A4E4D85E-46E1-161C-0A10-C88E8DA5A22A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 59.16939200634593 30.173302996546116 35.438116462266429 ;
	setAttr ".r" -type "double3" -14.138352729742822 58.599999999999596 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "DD306209-4CBA-8C33-032F-53A812EB31BF";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 69.84690636479408;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "0829E7B8-420D-D891-6B34-7BA90BC1964E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "38D32C35-433E-A830-2710-3DAAF75B7A2A";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "DC9AD489-46EE-1FA1-D623-3BB1007395C5";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "0BB0BDBA-4B4B-36ED-A1F5-969F7BB5CD87";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "18E485A3-4A86-80B4-20B2-31869942AAC0";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "83F569DA-4AF6-7762-DEEB-488AA32C8AE5";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode houdiniAsset -n "hunte__dev__NewRockGeo__1_01";
	rename -uid "6D30B551-4EDE-F906-A011-D3B40BF9F526";
	addAttr -is true -ci true -sn "houdiniAssetParm" -ln "houdiniAssetParm" -at "compound" 
		-nc 6;
	addAttr -is true -ci true -sn "houdiniAssetParm_stdswitcher3_0__folder" -ln "houdiniAssetParm_stdswitcher3_0__folder" 
		-nn "Transform" -at "compound" -p "houdiniAssetParm" -nc 12;
	addAttr -is true -ci true -sn "houdiniAssetParm_xOrd" -ln "houdiniAssetParm_xOrd" 
		-nn "Transform Order" -min 0 -max 5 -en "Scale Rot Trans:Scale Trans Rot:Rot Scale Trans:Rot Trans Scale:Trans Scale Rot:Trans Rot Scale" 
		-at "enum" -p "houdiniAssetParm_stdswitcher3_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_rOrd" -ln "houdiniAssetParm_rOrd" 
		-nn "Rotate Order" -min 0 -max 5 -en "Rx Ry Rz:Rx Rz Ry:Ry Rx Rz:Ry Rz Rx:Rz Rx Ry:Rz Ry Rx" 
		-at "enum" -p "houdiniAssetParm_stdswitcher3_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_t" -ln "houdiniAssetParm_t" -nn "Translate" 
		-at "compound" -p "houdiniAssetParm_stdswitcher3_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_t__tuple0" -ln "houdiniAssetParm_t__tuple0" 
		-nn "Translate 0" -at "float" -p "houdiniAssetParm_t";
	addAttr -is true -ci true -sn "houdiniAssetParm_t__tuple1" -ln "houdiniAssetParm_t__tuple1" 
		-nn "Translate 1" -at "float" -p "houdiniAssetParm_t";
	addAttr -is true -ci true -sn "houdiniAssetParm_t__tuple2" -ln "houdiniAssetParm_t__tuple2" 
		-nn "Translate 2" -at "float" -p "houdiniAssetParm_t";
	addAttr -is true -ci true -sn "houdiniAssetParm_r" -ln "houdiniAssetParm_r" -nn "Rotate" 
		-at "compound" -p "houdiniAssetParm_stdswitcher3_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_r__tuple0" -ln "houdiniAssetParm_r__tuple0" 
		-nn "Rotate 0" -at "float" -p "houdiniAssetParm_r";
	addAttr -is true -ci true -sn "houdiniAssetParm_r__tuple1" -ln "houdiniAssetParm_r__tuple1" 
		-nn "Rotate 1" -at "float" -p "houdiniAssetParm_r";
	addAttr -is true -ci true -sn "houdiniAssetParm_r__tuple2" -ln "houdiniAssetParm_r__tuple2" 
		-nn "Rotate 2" -at "float" -p "houdiniAssetParm_r";
	addAttr -is true -ci true -sn "houdiniAssetParm_s" -ln "houdiniAssetParm_s" -nn "Scale" 
		-at "compound" -p "houdiniAssetParm_stdswitcher3_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_s__tuple0" -ln "houdiniAssetParm_s__tuple0" 
		-nn "Scale 0" -at "float" -p "houdiniAssetParm_s";
	addAttr -is true -ci true -sn "houdiniAssetParm_s__tuple1" -ln "houdiniAssetParm_s__tuple1" 
		-nn "Scale 1" -at "float" -p "houdiniAssetParm_s";
	addAttr -is true -ci true -sn "houdiniAssetParm_s__tuple2" -ln "houdiniAssetParm_s__tuple2" 
		-nn "Scale 2" -at "float" -p "houdiniAssetParm_s";
	addAttr -is true -ci true -sn "houdiniAssetParm_p" -ln "houdiniAssetParm_p" -nn "Pivot Translate" 
		-at "compound" -p "houdiniAssetParm_stdswitcher3_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_p__tuple0" -ln "houdiniAssetParm_p__tuple0" 
		-nn "Pivot Translate 0" -at "float" -p "houdiniAssetParm_p";
	addAttr -is true -ci true -sn "houdiniAssetParm_p__tuple1" -ln "houdiniAssetParm_p__tuple1" 
		-nn "Pivot Translate 1" -at "float" -p "houdiniAssetParm_p";
	addAttr -is true -ci true -sn "houdiniAssetParm_p__tuple2" -ln "houdiniAssetParm_p__tuple2" 
		-nn "Pivot Translate 2" -at "float" -p "houdiniAssetParm_p";
	addAttr -is true -ci true -sn "houdiniAssetParm_pr" -ln "houdiniAssetParm_pr" -nn "Pivot Rotate" 
		-at "compound" -p "houdiniAssetParm_stdswitcher3_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_pr__tuple0" -ln "houdiniAssetParm_pr__tuple0" 
		-nn "Pivot Rotate 0" -at "float" -p "houdiniAssetParm_pr";
	addAttr -is true -ci true -sn "houdiniAssetParm_pr__tuple1" -ln "houdiniAssetParm_pr__tuple1" 
		-nn "Pivot Rotate 1" -at "float" -p "houdiniAssetParm_pr";
	addAttr -is true -ci true -sn "houdiniAssetParm_pr__tuple2" -ln "houdiniAssetParm_pr__tuple2" 
		-nn "Pivot Rotate 2" -at "float" -p "houdiniAssetParm_pr";
	addAttr -is true -ci true -sn "houdiniAssetParm_scale" -ln "houdiniAssetParm_scale" 
		-nn "Uniform Scale" -at "float" -p "houdiniAssetParm_stdswitcher3_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_pre_xform" -ln "houdiniAssetParm_pre_xform" 
		-nn "Modify Pre-Transform" -min 0 -max 6 -en "Modify Pre-Transform:Clean Transform:Clean Translates:Clean Rotates:Clean Scales:Extract Pre-transform:Reset Pre-transform" 
		-at "enum" -p "houdiniAssetParm_stdswitcher3_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_keeppos" -ln "houdiniAssetParm_keeppos" 
		-nn "Keep Position When Parenting" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher3_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_childcomp" -ln "houdiniAssetParm_childcomp" 
		-nn "Child Compensation" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher3_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_constraints_on" -ln "houdiniAssetParm_constraints_on" 
		-nn "Enable Constraints" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher3_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_stdswitcher3_1__folder" -ln "houdiniAssetParm_stdswitcher3_1__folder" 
		-nn "Subnet" -at "compound" -p "houdiniAssetParm" -nc 7;
	addAttr -is true -ci true -sn "houdiniAssetParm_tdisplay" -ln "houdiniAssetParm_tdisplay" 
		-nn "Display" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher3_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_display" -ln "houdiniAssetParm_display" 
		-nn "Display" -min 0 -max 1 -smn 0 -smx 1 -at "long" -p "houdiniAssetParm_stdswitcher3_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_outputobj" -ln "houdiniAssetParm_outputobj" 
		-nn "Output Transform" -min 0 -max 6 -en "No Object:Input Object 1:Input Object 2:Input Object 3:Input Object 4:_separator_:RockGeo" 
		-at "enum" -p "houdiniAssetParm_stdswitcher3_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_visibleobjects" -ln "houdiniAssetParm_visibleobjects" 
		-nn "Visible Children" -dt "string" -p "houdiniAssetParm_stdswitcher3_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_picking" -ln "houdiniAssetParm_picking" 
		-nn "Viewport Selecting Enabled" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher3_1__folder";
	addAttr -is true -ci true -uaf -sn "houdiniAssetParm_pickscript" -ln "houdiniAssetParm_pickscript" 
		-nn "Select Script" -ct "hapiParmFile_read" -dt "string" -p "houdiniAssetParm_stdswitcher3_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_caching" -ln "houdiniAssetParm_caching" 
		-nn "Cache Object Transform" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher3_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_scale2" -ln "houdiniAssetParm_scale2" 
		-nn "Uniform Scale" -smn 0 -smx 10 -at "float" -p "houdiniAssetParm";
	addAttr -is true -ci true -sn "houdiniAssetParm_freq" -ln "houdiniAssetParm_freq" 
		-nn "Resolution" -dv 1 -min 1 -smn 1 -smx 10 -at "long" -p "houdiniAssetParm";
	addAttr -is true -ci true -sn "houdiniAssetParm_amplitude" -ln "houdiniAssetParm_amplitude" 
		-nn "Amplitude" -min 0 -smn 0 -smx 10 -at "float" -p "houdiniAssetParm";
	addAttr -is true -ci true -sn "houdiniAssetParm_offset" -ln "houdiniAssetParm_offset" 
		-nn "Variation" -smn 0 -smx 50 -at "float" -p "houdiniAssetParm";
	setAttr ".otlFilePath" -type "string" "C:/Users/hunte/Documents/houdini19.5/otls/object_hunte.dev.NewRockGeo.1.0.hdanc";
	setAttr ".assetName" -type "string" "hunte::dev::Object/NewRockGeo::1.0";
	setAttr ".outputMaterials[0].outputMaterialPath" -type "string" "RockGeo/uvquickshade1/shop_definition/texture_material/v_layered1";
	setAttr -cb on ".houdiniAssetParm_s__tuple0" 1;
	setAttr -cb on ".houdiniAssetParm_s__tuple1" 1;
	setAttr -cb on ".houdiniAssetParm_s__tuple2" 1;
	setAttr -cb on ".houdiniAssetParm_scale" 1;
	setAttr -l on -cb on ".houdiniAssetParm_display" 1;
	setAttr -cb on ".houdiniAssetParm_outputobj" 1;
	setAttr ".houdiniAssetParm_visibleobjects" -type "string" "*";
	setAttr -cb on ".houdiniAssetParm_picking" yes;
	setAttr ".houdiniAssetParm_pickscript" -type "string" "";
	setAttr -cb on ".houdiniAssetParm_caching" yes;
	setAttr -cb on ".houdiniAssetParm_scale2" 1;
	setAttr -cb on ".houdiniAssetParm_freq" 2;
	setAttr -cb on ".houdiniAssetParm_amplitude" 0.25;
	setAttr ".houdiniAssetParm_offset" 3.7292816638946533;
createNode transform -n "RockGeo" -p "hunte__dev__NewRockGeo__1_01";
	rename -uid "11C3B380-4557-85C4-F2C0-3DBB676E3876";
createNode transform -n "uvunwrap1_0" -p "RockGeo";
	rename -uid "00A96922-488F-BB1C-1FB7-F5974E6160EC";
	setAttr ".t" -type "double3" -3.7240709015978566 1.8904170120238772 -3.852144679697822 ;
	setAttr ".s" -type "double3" 1.5878964923375183 1.5878964923375183 1.5878964923375183 ;
createNode mesh -n "uvunwrap1_0Shape" -p "|hunte__dev__NewRockGeo__1_01|RockGeo|uvunwrap1_0";
	rename -uid "63521F45-4E09-DED2-9B04-118F31A43E76";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 2 ".uvst";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".uvst[1].uvsn" -type "string" "uv";
	setAttr ".cuvs" -type "string" "uv";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "directionalLight1";
	rename -uid "00D0AEED-4E30-861F-B25E-4B951C80A616";
	setAttr ".t" -type "double3" 0 7.0482630233680368 -7.7668245153139015 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".r" -type "double3" -0.67459393054748074 110.37372433261001 30.37722494681493 ;
createNode directionalLight -n "directionalLightShape1" -p "directionalLight1";
	rename -uid "5DDFA0A2-406A-54E6-3259-08A74A3E8CF7";
	setAttr -k off ".v";
createNode transform -n "directionalLight2";
	rename -uid "D628C456-4425-77B2-C7F1-88A23A473E07";
	setAttr ".t" -type "double3" -2.5561876013964593 8.0022233315174027 9.8956801089569453 ;
	setAttr ".r" -type "double3" 0.68237149144740938 69.868600378798902 31.650307122988586 ;
createNode directionalLight -n "directionalLightShape2" -p "directionalLight2";
	rename -uid "644F812A-455F-0988-BAF9-FF8989FD8634";
	setAttr -k off ".v";
createNode houdiniAsset -n "hunte__dev__Wallsubnet__1_01";
	rename -uid "FD1A1362-47A6-80B3-65F0-47B0DA7CE3FC";
	addAttr -is true -ci true -sn "houdiniAssetParm" -ln "houdiniAssetParm" -at "compound" 
		-nc 7;
	addAttr -is true -ci true -sn "houdiniAssetParm_stdswitcher3_0__folder" -ln "houdiniAssetParm_stdswitcher3_0__folder" 
		-nn "Transform" -at "compound" -p "houdiniAssetParm" -nc 12;
	addAttr -is true -ci true -sn "houdiniAssetParm_xOrd" -ln "houdiniAssetParm_xOrd" 
		-nn "Transform Order" -min 0 -max 5 -en "Scale Rot Trans:Scale Trans Rot:Rot Scale Trans:Rot Trans Scale:Trans Scale Rot:Trans Rot Scale" 
		-at "enum" -p "houdiniAssetParm_stdswitcher3_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_rOrd" -ln "houdiniAssetParm_rOrd" 
		-nn "Rotate Order" -min 0 -max 5 -en "Rx Ry Rz:Rx Rz Ry:Ry Rx Rz:Ry Rz Rx:Rz Rx Ry:Rz Ry Rx" 
		-at "enum" -p "houdiniAssetParm_stdswitcher3_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_t" -ln "houdiniAssetParm_t" -nn "Translate" 
		-at "compound" -p "houdiniAssetParm_stdswitcher3_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_t__tuple0" -ln "houdiniAssetParm_t__tuple0" 
		-nn "Translate 0" -at "float" -p "houdiniAssetParm_t";
	addAttr -is true -ci true -sn "houdiniAssetParm_t__tuple1" -ln "houdiniAssetParm_t__tuple1" 
		-nn "Translate 1" -at "float" -p "houdiniAssetParm_t";
	addAttr -is true -ci true -sn "houdiniAssetParm_t__tuple2" -ln "houdiniAssetParm_t__tuple2" 
		-nn "Translate 2" -at "float" -p "houdiniAssetParm_t";
	addAttr -is true -ci true -sn "houdiniAssetParm_r" -ln "houdiniAssetParm_r" -nn "Rotate" 
		-at "compound" -p "houdiniAssetParm_stdswitcher3_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_r__tuple0" -ln "houdiniAssetParm_r__tuple0" 
		-nn "Rotate 0" -at "float" -p "houdiniAssetParm_r";
	addAttr -is true -ci true -sn "houdiniAssetParm_r__tuple1" -ln "houdiniAssetParm_r__tuple1" 
		-nn "Rotate 1" -at "float" -p "houdiniAssetParm_r";
	addAttr -is true -ci true -sn "houdiniAssetParm_r__tuple2" -ln "houdiniAssetParm_r__tuple2" 
		-nn "Rotate 2" -at "float" -p "houdiniAssetParm_r";
	addAttr -is true -ci true -sn "houdiniAssetParm_s" -ln "houdiniAssetParm_s" -nn "Scale" 
		-at "compound" -p "houdiniAssetParm_stdswitcher3_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_s__tuple0" -ln "houdiniAssetParm_s__tuple0" 
		-nn "Scale 0" -at "float" -p "houdiniAssetParm_s";
	addAttr -is true -ci true -sn "houdiniAssetParm_s__tuple1" -ln "houdiniAssetParm_s__tuple1" 
		-nn "Scale 1" -at "float" -p "houdiniAssetParm_s";
	addAttr -is true -ci true -sn "houdiniAssetParm_s__tuple2" -ln "houdiniAssetParm_s__tuple2" 
		-nn "Scale 2" -at "float" -p "houdiniAssetParm_s";
	addAttr -is true -ci true -sn "houdiniAssetParm_p" -ln "houdiniAssetParm_p" -nn "Pivot Translate" 
		-at "compound" -p "houdiniAssetParm_stdswitcher3_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_p__tuple0" -ln "houdiniAssetParm_p__tuple0" 
		-nn "Pivot Translate 0" -at "float" -p "houdiniAssetParm_p";
	addAttr -is true -ci true -sn "houdiniAssetParm_p__tuple1" -ln "houdiniAssetParm_p__tuple1" 
		-nn "Pivot Translate 1" -at "float" -p "houdiniAssetParm_p";
	addAttr -is true -ci true -sn "houdiniAssetParm_p__tuple2" -ln "houdiniAssetParm_p__tuple2" 
		-nn "Pivot Translate 2" -at "float" -p "houdiniAssetParm_p";
	addAttr -is true -ci true -sn "houdiniAssetParm_pr" -ln "houdiniAssetParm_pr" -nn "Pivot Rotate" 
		-at "compound" -p "houdiniAssetParm_stdswitcher3_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_pr__tuple0" -ln "houdiniAssetParm_pr__tuple0" 
		-nn "Pivot Rotate 0" -at "float" -p "houdiniAssetParm_pr";
	addAttr -is true -ci true -sn "houdiniAssetParm_pr__tuple1" -ln "houdiniAssetParm_pr__tuple1" 
		-nn "Pivot Rotate 1" -at "float" -p "houdiniAssetParm_pr";
	addAttr -is true -ci true -sn "houdiniAssetParm_pr__tuple2" -ln "houdiniAssetParm_pr__tuple2" 
		-nn "Pivot Rotate 2" -at "float" -p "houdiniAssetParm_pr";
	addAttr -is true -ci true -sn "houdiniAssetParm_scale" -ln "houdiniAssetParm_scale" 
		-nn "Uniform Scale" -at "float" -p "houdiniAssetParm_stdswitcher3_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_pre_xform" -ln "houdiniAssetParm_pre_xform" 
		-nn "Modify Pre-Transform" -min 0 -max 6 -en "Modify Pre-Transform:Clean Transform:Clean Translates:Clean Rotates:Clean Scales:Extract Pre-transform:Reset Pre-transform" 
		-at "enum" -p "houdiniAssetParm_stdswitcher3_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_keeppos" -ln "houdiniAssetParm_keeppos" 
		-nn "Keep Position When Parenting" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher3_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_childcomp" -ln "houdiniAssetParm_childcomp" 
		-nn "Child Compensation" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher3_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_constraints_on" -ln "houdiniAssetParm_constraints_on" 
		-nn "Enable Constraints" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher3_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_stdswitcher3_1__folder" -ln "houdiniAssetParm_stdswitcher3_1__folder" 
		-nn "Subnet" -at "compound" -p "houdiniAssetParm" -nc 7;
	addAttr -is true -ci true -sn "houdiniAssetParm_tdisplay" -ln "houdiniAssetParm_tdisplay" 
		-nn "Display" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher3_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_display" -ln "houdiniAssetParm_display" 
		-nn "Display" -min 0 -max 1 -smn 0 -smx 1 -at "long" -p "houdiniAssetParm_stdswitcher3_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_outputobj" -ln "houdiniAssetParm_outputobj" 
		-nn "Output Transform" -min 0 -max 6 -en "No Object:Input Object 1:Input Object 2:Input Object 3:Input Object 4:_separator_:WallTool" 
		-at "enum" -p "houdiniAssetParm_stdswitcher3_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_visibleobjects" -ln "houdiniAssetParm_visibleobjects" 
		-nn "Visible Children" -dt "string" -p "houdiniAssetParm_stdswitcher3_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_picking" -ln "houdiniAssetParm_picking" 
		-nn "Viewport Selecting Enabled" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher3_1__folder";
	addAttr -is true -ci true -uaf -sn "houdiniAssetParm_pickscript" -ln "houdiniAssetParm_pickscript" 
		-nn "Select Script" -ct "hapiParmFile_read" -dt "string" -p "houdiniAssetParm_stdswitcher3_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_caching" -ln "houdiniAssetParm_caching" 
		-nn "Cache Object Transform" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher3_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_WallWidth" -ln "houdiniAssetParm_WallWidth" 
		-nn "Length" -smn 0 -smx 10 -at "float" -p "houdiniAssetParm";
	addAttr -is true -ci true -sn "houdiniAssetParm_WallHeight" -ln "houdiniAssetParm_WallHeight" 
		-nn "Length" -smn 0 -smx 10 -at "float" -p "houdiniAssetParm";
	addAttr -is true -ci true -sn "houdiniAssetParm_BrickSegments" -ln "houdiniAssetParm_BrickSegments" 
		-nn "Segments" -dv 1 -min 1 -smn 1 -smx 50 -at "long" -p "houdiniAssetParm";
	addAttr -is true -ci true -sn "houdiniAssetParm_BrickJitter" -ln "houdiniAssetParm_BrickJitter" 
		-nn "Multi" -smn 0 -smx 1 -at "float" -p "houdiniAssetParm";
	addAttr -is true -ci true -sn "houdiniAssetParm_BrickDepth" -ln "houdiniAssetParm_BrickDepth" 
		-nn "Length" -smn 0 -smx 10 -at "float" -p "houdiniAssetParm";
	setAttr ".t" -type "double3" -3.2036598257148672 0 -1.1811237170213502 ;
	setAttr ".otlFilePath" -type "string" "C:/Users/hunte/Documents/houdini19.5/otls/object_hunte.dev.Wallsubnet.1.0.hdanc";
	setAttr ".assetName" -type "string" "hunte::dev::Object/Wallsubnet::1.0";
	setAttr ".outputMaterials[0].outputMaterialPath" -type "string" "WallTool/uvquickshade1/shop_definition/texture_material/v_layered1";
	setAttr -cb on ".houdiniAssetParm_s__tuple0" 1;
	setAttr -cb on ".houdiniAssetParm_s__tuple1" 1;
	setAttr -cb on ".houdiniAssetParm_s__tuple2" 1;
	setAttr -cb on ".houdiniAssetParm_scale" 1;
	setAttr -l on -cb on ".houdiniAssetParm_display" 1;
	setAttr -cb on ".houdiniAssetParm_outputobj" 1;
	setAttr ".houdiniAssetParm_visibleobjects" -type "string" "*";
	setAttr -cb on ".houdiniAssetParm_picking" yes;
	setAttr ".houdiniAssetParm_pickscript" -type "string" "";
	setAttr -cb on ".houdiniAssetParm_caching" yes;
	setAttr -cb on ".houdiniAssetParm_WallWidth" 20;
	setAttr -cb on ".houdiniAssetParm_WallHeight" 10;
	setAttr -cb on ".houdiniAssetParm_BrickSegments" 10;
	setAttr -cb on ".houdiniAssetParm_BrickJitter" 0.41712707281112671;
	setAttr -cb on ".houdiniAssetParm_BrickDepth" 0.30000001192092896;
createNode transform -n "WallTool" -p "hunte__dev__Wallsubnet__1_01";
	rename -uid "CE9115E7-4F30-F37A-F0EC-31B1F47FC394";
createNode transform -n "uvunwrap1_0" -p "WallTool";
	rename -uid "075A8140-4FED-85FD-99F2-538CC7778BD8";
	setAttr ".t" -type "double3" -4.7757495892445725 -5.632057843920836 1.7664175082085922 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".s" -type "double3" 2.4538853595276815 2.4538853595276815 2.4538853595276815 ;
createNode mesh -n "uvunwrap1_0Shape" -p "|hunte__dev__Wallsubnet__1_01|WallTool|uvunwrap1_0";
	rename -uid "BDFCEE35-415B-9D6C-5DB2-989580AB9F85";
	addAttr -ci true -sn "ptdist" -ln "ptdist" -dt "floatArray";
	addAttr -ci true -sn "side" -ln "side" -dt "vectorArray";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 2 ".uvst";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".uvst[1].uvsn" -type "string" "uv";
	setAttr ".cuvs" -type "string" "uv";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Rock2";
	rename -uid "94009436-4A6B-96A7-5762-4BAA6777DC43";
	setAttr ".t" -type "double3" 0 0 -1.5122085219897858 ;
	setAttr ".rp" -type "double3" -0.012393161654472351 1.8800397688626722 4.8345320147486728 ;
	setAttr ".sp" -type "double3" -0.012393161654472351 1.8800397688626722 4.8345320147486728 ;
createNode houdiniAsset -n "pasted__hunte__dev__NewRockGeo__1_01" -p "Rock2";
	rename -uid "8DF5471E-4431-4B4C-8726-589D215517EC";
	addAttr -is true -ci true -sn "houdiniAssetParm" -ln "houdiniAssetParm" -at "compound" 
		-nc 6;
	addAttr -is true -ci true -sn "houdiniAssetParm_stdswitcher3_0__folder" -ln "houdiniAssetParm_stdswitcher3_0__folder" 
		-nn "Transform" -at "compound" -p "houdiniAssetParm" -nc 12;
	addAttr -is true -ci true -sn "houdiniAssetParm_xOrd" -ln "houdiniAssetParm_xOrd" 
		-nn "Transform Order" -min 0 -max 5 -en "Scale Rot Trans:Scale Trans Rot:Rot Scale Trans:Rot Trans Scale:Trans Scale Rot:Trans Rot Scale" 
		-at "enum" -p "houdiniAssetParm_stdswitcher3_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_rOrd" -ln "houdiniAssetParm_rOrd" 
		-nn "Rotate Order" -min 0 -max 5 -en "Rx Ry Rz:Rx Rz Ry:Ry Rx Rz:Ry Rz Rx:Rz Rx Ry:Rz Ry Rx" 
		-at "enum" -p "houdiniAssetParm_stdswitcher3_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_t" -ln "houdiniAssetParm_t" -nn "Translate" 
		-at "compound" -p "houdiniAssetParm_stdswitcher3_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_t__tuple0" -ln "houdiniAssetParm_t__tuple0" 
		-nn "Translate 0" -at "float" -p "houdiniAssetParm_t";
	addAttr -is true -ci true -sn "houdiniAssetParm_t__tuple1" -ln "houdiniAssetParm_t__tuple1" 
		-nn "Translate 1" -at "float" -p "houdiniAssetParm_t";
	addAttr -is true -ci true -sn "houdiniAssetParm_t__tuple2" -ln "houdiniAssetParm_t__tuple2" 
		-nn "Translate 2" -at "float" -p "houdiniAssetParm_t";
	addAttr -is true -ci true -sn "houdiniAssetParm_r" -ln "houdiniAssetParm_r" -nn "Rotate" 
		-at "compound" -p "houdiniAssetParm_stdswitcher3_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_r__tuple0" -ln "houdiniAssetParm_r__tuple0" 
		-nn "Rotate 0" -at "float" -p "houdiniAssetParm_r";
	addAttr -is true -ci true -sn "houdiniAssetParm_r__tuple1" -ln "houdiniAssetParm_r__tuple1" 
		-nn "Rotate 1" -at "float" -p "houdiniAssetParm_r";
	addAttr -is true -ci true -sn "houdiniAssetParm_r__tuple2" -ln "houdiniAssetParm_r__tuple2" 
		-nn "Rotate 2" -at "float" -p "houdiniAssetParm_r";
	addAttr -is true -ci true -sn "houdiniAssetParm_s" -ln "houdiniAssetParm_s" -nn "Scale" 
		-at "compound" -p "houdiniAssetParm_stdswitcher3_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_s__tuple0" -ln "houdiniAssetParm_s__tuple0" 
		-nn "Scale 0" -at "float" -p "houdiniAssetParm_s";
	addAttr -is true -ci true -sn "houdiniAssetParm_s__tuple1" -ln "houdiniAssetParm_s__tuple1" 
		-nn "Scale 1" -at "float" -p "houdiniAssetParm_s";
	addAttr -is true -ci true -sn "houdiniAssetParm_s__tuple2" -ln "houdiniAssetParm_s__tuple2" 
		-nn "Scale 2" -at "float" -p "houdiniAssetParm_s";
	addAttr -is true -ci true -sn "houdiniAssetParm_p" -ln "houdiniAssetParm_p" -nn "Pivot Translate" 
		-at "compound" -p "houdiniAssetParm_stdswitcher3_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_p__tuple0" -ln "houdiniAssetParm_p__tuple0" 
		-nn "Pivot Translate 0" -at "float" -p "houdiniAssetParm_p";
	addAttr -is true -ci true -sn "houdiniAssetParm_p__tuple1" -ln "houdiniAssetParm_p__tuple1" 
		-nn "Pivot Translate 1" -at "float" -p "houdiniAssetParm_p";
	addAttr -is true -ci true -sn "houdiniAssetParm_p__tuple2" -ln "houdiniAssetParm_p__tuple2" 
		-nn "Pivot Translate 2" -at "float" -p "houdiniAssetParm_p";
	addAttr -is true -ci true -sn "houdiniAssetParm_pr" -ln "houdiniAssetParm_pr" -nn "Pivot Rotate" 
		-at "compound" -p "houdiniAssetParm_stdswitcher3_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_pr__tuple0" -ln "houdiniAssetParm_pr__tuple0" 
		-nn "Pivot Rotate 0" -at "float" -p "houdiniAssetParm_pr";
	addAttr -is true -ci true -sn "houdiniAssetParm_pr__tuple1" -ln "houdiniAssetParm_pr__tuple1" 
		-nn "Pivot Rotate 1" -at "float" -p "houdiniAssetParm_pr";
	addAttr -is true -ci true -sn "houdiniAssetParm_pr__tuple2" -ln "houdiniAssetParm_pr__tuple2" 
		-nn "Pivot Rotate 2" -at "float" -p "houdiniAssetParm_pr";
	addAttr -is true -ci true -sn "houdiniAssetParm_scale" -ln "houdiniAssetParm_scale" 
		-nn "Uniform Scale" -at "float" -p "houdiniAssetParm_stdswitcher3_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_pre_xform" -ln "houdiniAssetParm_pre_xform" 
		-nn "Modify Pre-Transform" -min 0 -max 6 -en "Modify Pre-Transform:Clean Transform:Clean Translates:Clean Rotates:Clean Scales:Extract Pre-transform:Reset Pre-transform" 
		-at "enum" -p "houdiniAssetParm_stdswitcher3_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_keeppos" -ln "houdiniAssetParm_keeppos" 
		-nn "Keep Position When Parenting" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher3_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_childcomp" -ln "houdiniAssetParm_childcomp" 
		-nn "Child Compensation" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher3_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_constraints_on" -ln "houdiniAssetParm_constraints_on" 
		-nn "Enable Constraints" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher3_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_stdswitcher3_1__folder" -ln "houdiniAssetParm_stdswitcher3_1__folder" 
		-nn "Subnet" -at "compound" -p "houdiniAssetParm" -nc 7;
	addAttr -is true -ci true -sn "houdiniAssetParm_tdisplay" -ln "houdiniAssetParm_tdisplay" 
		-nn "Display" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher3_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_display" -ln "houdiniAssetParm_display" 
		-nn "Display" -min 0 -max 1 -smn 0 -smx 1 -at "long" -p "houdiniAssetParm_stdswitcher3_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_outputobj" -ln "houdiniAssetParm_outputobj" 
		-nn "Output Transform" -min 0 -max 6 -en "No Object:Input Object 1:Input Object 2:Input Object 3:Input Object 4:_separator_:RockGeo" 
		-at "enum" -p "houdiniAssetParm_stdswitcher3_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_visibleobjects" -ln "houdiniAssetParm_visibleobjects" 
		-nn "Visible Children" -dt "string" -p "houdiniAssetParm_stdswitcher3_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_picking" -ln "houdiniAssetParm_picking" 
		-nn "Viewport Selecting Enabled" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher3_1__folder";
	addAttr -is true -ci true -uaf -sn "houdiniAssetParm_pickscript" -ln "houdiniAssetParm_pickscript" 
		-nn "Select Script" -ct "hapiParmFile_read" -dt "string" -p "houdiniAssetParm_stdswitcher3_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_caching" -ln "houdiniAssetParm_caching" 
		-nn "Cache Object Transform" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher3_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_scale2" -ln "houdiniAssetParm_scale2" 
		-nn "Uniform Scale" -smn 0 -smx 10 -at "float" -p "houdiniAssetParm";
	addAttr -is true -ci true -sn "houdiniAssetParm_freq" -ln "houdiniAssetParm_freq" 
		-nn "Resolution" -dv 1 -min 1 -smn 1 -smx 10 -at "long" -p "houdiniAssetParm";
	addAttr -is true -ci true -sn "houdiniAssetParm_amplitude" -ln "houdiniAssetParm_amplitude" 
		-nn "Amplitude" -min 0 -smn 0 -smx 10 -at "float" -p "houdiniAssetParm";
	addAttr -is true -ci true -sn "houdiniAssetParm_offset" -ln "houdiniAssetParm_offset" 
		-nn "Variation" -smn 0 -smx 50 -at "float" -p "houdiniAssetParm";
	setAttr ".otlFilePath" -type "string" "C:/Users/hunte/Documents/houdini19.5/otls/object_hunte.dev.NewRockGeo.1.0.hdanc";
	setAttr ".assetName" -type "string" "hunte::dev::Object/NewRockGeo::1.0";
	setAttr ".outputMaterials[0].outputMaterialPath" -type "string" "RockGeo/uvquickshade1/shop_definition/texture_material/v_layered1";
	setAttr -cb on ".houdiniAssetParm_s__tuple0" 1;
	setAttr -cb on ".houdiniAssetParm_s__tuple1" 1;
	setAttr -cb on ".houdiniAssetParm_s__tuple2" 1;
	setAttr -cb on ".houdiniAssetParm_scale" 1;
	setAttr -l on -cb on ".houdiniAssetParm_display" 1;
	setAttr -cb on ".houdiniAssetParm_outputobj" 1;
	setAttr ".houdiniAssetParm_visibleobjects" -type "string" "*";
	setAttr -cb on ".houdiniAssetParm_picking" yes;
	setAttr ".houdiniAssetParm_pickscript" -type "string" "";
	setAttr -cb on ".houdiniAssetParm_caching" yes;
	setAttr -cb on ".houdiniAssetParm_scale2" 1;
	setAttr -cb on ".houdiniAssetParm_freq" 2;
	setAttr -cb on ".houdiniAssetParm_amplitude" 0.25;
	setAttr ".houdiniAssetParm_offset" 2.6243093013763428;
createNode transform -n "pasted__RockGeo" -p "|Rock2|pasted__hunte__dev__NewRockGeo__1_01";
	rename -uid "E0044CE3-4F0A-8A7A-F2FF-A396BCDA758A";
createNode transform -n "pasted__uvunwrap1_0" -p "|Rock2|pasted__hunte__dev__NewRockGeo__1_01|pasted__RockGeo";
	rename -uid "E0898DA9-4FF1-FC5E-A71B-C19CF144EC53";
	setAttr ".t" -type "double3" -4.8832819495762703 1.9740718495268803 -2.3327473919414556 ;
	setAttr ".s" -type "double3" 1.6708571606185265 1.6708571606185265 1.6708571606185265 ;
createNode mesh -n "pasted__uvunwrap1_0Shape" -p "|Rock2|pasted__hunte__dev__NewRockGeo__1_01|pasted__RockGeo|pasted__uvunwrap1_0";
	rename -uid "DF063108-4665-5B6E-184B-0DA8D7F9DD05";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 2 ".uvst";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".uvst[1].uvsn" -type "string" "uv";
	setAttr ".cuvs" -type "string" "uv";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode houdiniAsset -n "hunte__dev__BottomlessBucket__1_01";
	rename -uid "9E5DFCB6-44F7-2F42-A3C6-D2930E1C65AC";
	addAttr -is true -ci true -sn "houdiniAssetParm" -ln "houdiniAssetParm" -at "compound" 
		-nc 2;
	addAttr -is true -ci true -sn "houdiniAssetParm_stdswitcher3_0__folder" -ln "houdiniAssetParm_stdswitcher3_0__folder" 
		-nn "Transform" -at "compound" -p "houdiniAssetParm" -nc 12;
	addAttr -is true -ci true -sn "houdiniAssetParm_xOrd" -ln "houdiniAssetParm_xOrd" 
		-nn "Transform Order" -min 0 -max 5 -en "Scale Rot Trans:Scale Trans Rot:Rot Scale Trans:Rot Trans Scale:Trans Scale Rot:Trans Rot Scale" 
		-at "enum" -p "houdiniAssetParm_stdswitcher3_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_rOrd" -ln "houdiniAssetParm_rOrd" 
		-nn "Rotate Order" -min 0 -max 5 -en "Rx Ry Rz:Rx Rz Ry:Ry Rx Rz:Ry Rz Rx:Rz Rx Ry:Rz Ry Rx" 
		-at "enum" -p "houdiniAssetParm_stdswitcher3_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_t" -ln "houdiniAssetParm_t" -nn "Translate" 
		-at "compound" -p "houdiniAssetParm_stdswitcher3_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_t__tuple0" -ln "houdiniAssetParm_t__tuple0" 
		-nn "Translate 0" -at "float" -p "houdiniAssetParm_t";
	addAttr -is true -ci true -sn "houdiniAssetParm_t__tuple1" -ln "houdiniAssetParm_t__tuple1" 
		-nn "Translate 1" -at "float" -p "houdiniAssetParm_t";
	addAttr -is true -ci true -sn "houdiniAssetParm_t__tuple2" -ln "houdiniAssetParm_t__tuple2" 
		-nn "Translate 2" -at "float" -p "houdiniAssetParm_t";
	addAttr -is true -ci true -sn "houdiniAssetParm_r" -ln "houdiniAssetParm_r" -nn "Rotate" 
		-at "compound" -p "houdiniAssetParm_stdswitcher3_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_r__tuple0" -ln "houdiniAssetParm_r__tuple0" 
		-nn "Rotate 0" -at "float" -p "houdiniAssetParm_r";
	addAttr -is true -ci true -sn "houdiniAssetParm_r__tuple1" -ln "houdiniAssetParm_r__tuple1" 
		-nn "Rotate 1" -at "float" -p "houdiniAssetParm_r";
	addAttr -is true -ci true -sn "houdiniAssetParm_r__tuple2" -ln "houdiniAssetParm_r__tuple2" 
		-nn "Rotate 2" -at "float" -p "houdiniAssetParm_r";
	addAttr -is true -ci true -sn "houdiniAssetParm_s" -ln "houdiniAssetParm_s" -nn "Scale" 
		-at "compound" -p "houdiniAssetParm_stdswitcher3_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_s__tuple0" -ln "houdiniAssetParm_s__tuple0" 
		-nn "Scale 0" -at "float" -p "houdiniAssetParm_s";
	addAttr -is true -ci true -sn "houdiniAssetParm_s__tuple1" -ln "houdiniAssetParm_s__tuple1" 
		-nn "Scale 1" -at "float" -p "houdiniAssetParm_s";
	addAttr -is true -ci true -sn "houdiniAssetParm_s__tuple2" -ln "houdiniAssetParm_s__tuple2" 
		-nn "Scale 2" -at "float" -p "houdiniAssetParm_s";
	addAttr -is true -ci true -sn "houdiniAssetParm_p" -ln "houdiniAssetParm_p" -nn "Pivot Translate" 
		-at "compound" -p "houdiniAssetParm_stdswitcher3_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_p__tuple0" -ln "houdiniAssetParm_p__tuple0" 
		-nn "Pivot Translate 0" -at "float" -p "houdiniAssetParm_p";
	addAttr -is true -ci true -sn "houdiniAssetParm_p__tuple1" -ln "houdiniAssetParm_p__tuple1" 
		-nn "Pivot Translate 1" -at "float" -p "houdiniAssetParm_p";
	addAttr -is true -ci true -sn "houdiniAssetParm_p__tuple2" -ln "houdiniAssetParm_p__tuple2" 
		-nn "Pivot Translate 2" -at "float" -p "houdiniAssetParm_p";
	addAttr -is true -ci true -sn "houdiniAssetParm_pr" -ln "houdiniAssetParm_pr" -nn "Pivot Rotate" 
		-at "compound" -p "houdiniAssetParm_stdswitcher3_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_pr__tuple0" -ln "houdiniAssetParm_pr__tuple0" 
		-nn "Pivot Rotate 0" -at "float" -p "houdiniAssetParm_pr";
	addAttr -is true -ci true -sn "houdiniAssetParm_pr__tuple1" -ln "houdiniAssetParm_pr__tuple1" 
		-nn "Pivot Rotate 1" -at "float" -p "houdiniAssetParm_pr";
	addAttr -is true -ci true -sn "houdiniAssetParm_pr__tuple2" -ln "houdiniAssetParm_pr__tuple2" 
		-nn "Pivot Rotate 2" -at "float" -p "houdiniAssetParm_pr";
	addAttr -is true -ci true -sn "houdiniAssetParm_scale" -ln "houdiniAssetParm_scale" 
		-nn "Uniform Scale" -at "float" -p "houdiniAssetParm_stdswitcher3_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_pre_xform" -ln "houdiniAssetParm_pre_xform" 
		-nn "Modify Pre-Transform" -min 0 -max 6 -en "Modify Pre-Transform:Clean Transform:Clean Translates:Clean Rotates:Clean Scales:Extract Pre-transform:Reset Pre-transform" 
		-at "enum" -p "houdiniAssetParm_stdswitcher3_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_keeppos" -ln "houdiniAssetParm_keeppos" 
		-nn "Keep Position When Parenting" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher3_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_childcomp" -ln "houdiniAssetParm_childcomp" 
		-nn "Child Compensation" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher3_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_constraints_on" -ln "houdiniAssetParm_constraints_on" 
		-nn "Enable Constraints" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher3_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_stdswitcher3_1__folder" -ln "houdiniAssetParm_stdswitcher3_1__folder" 
		-nn "Subnet" -at "compound" -p "houdiniAssetParm" -nc 7;
	addAttr -is true -ci true -sn "houdiniAssetParm_tdisplay" -ln "houdiniAssetParm_tdisplay" 
		-nn "Display" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher3_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_display" -ln "houdiniAssetParm_display" 
		-nn "Display" -min 0 -max 1 -smn 0 -smx 1 -at "long" -p "houdiniAssetParm_stdswitcher3_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_outputobj" -ln "houdiniAssetParm_outputobj" 
		-nn "Output Transform" -min 0 -max 6 -en "No Object:Input Object 1:Input Object 2:Input Object 3:Input Object 4:_separator_:geo1" 
		-at "enum" -p "houdiniAssetParm_stdswitcher3_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_visibleobjects" -ln "houdiniAssetParm_visibleobjects" 
		-nn "Visible Children" -dt "string" -p "houdiniAssetParm_stdswitcher3_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_picking" -ln "houdiniAssetParm_picking" 
		-nn "Viewport Selecting Enabled" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher3_1__folder";
	addAttr -is true -ci true -uaf -sn "houdiniAssetParm_pickscript" -ln "houdiniAssetParm_pickscript" 
		-nn "Select Script" -ct "hapiParmFile_read" -dt "string" -p "houdiniAssetParm_stdswitcher3_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_caching" -ln "houdiniAssetParm_caching" 
		-nn "Cache Object Transform" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher3_1__folder";
	setAttr ".otlFilePath" -type "string" "C:/Users/hunte/Documents/houdini19.5/otls/object_hunte.dev.BottomlessBucket.1.0.hdanc";
	setAttr ".assetName" -type "string" "hunte::dev::Object/BottomlessBucket::1.0";
	setAttr -cb on ".houdiniAssetParm_s__tuple0" 1;
	setAttr -cb on ".houdiniAssetParm_s__tuple1" 1;
	setAttr -cb on ".houdiniAssetParm_s__tuple2" 1;
	setAttr -cb on ".houdiniAssetParm_scale" 1;
	setAttr -l on -cb on ".houdiniAssetParm_display" 1;
	setAttr -cb on ".houdiniAssetParm_outputobj" 1;
	setAttr ".houdiniAssetParm_visibleobjects" -type "string" "*";
	setAttr -cb on ".houdiniAssetParm_picking" yes;
	setAttr ".houdiniAssetParm_pickscript" -type "string" "";
	setAttr -cb on ".houdiniAssetParm_caching" yes;
createNode transform -n "geo1" -p "hunte__dev__BottomlessBucket__1_01";
	rename -uid "8645D998-497E-330E-7AB0-92B5638AD5EA";
createNode transform -n "copytopoints1_0" -p "|hunte__dev__BottomlessBucket__1_01|geo1";
	rename -uid "CBC64211-43E1-D781-A00C-2B80BA0949F7";
	setAttr ".t" -type "double3" -4.604309471893071 1.1396843405879453 -4.7168500484386495 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".s" -type "double3" 0.45471035787853309 0.45471035787853309 0.45471035787853309 ;
createNode mesh -n "copytopoints1_0Shape" -p "copytopoints1_0";
	rename -uid "8C227EDA-4C55-FB0A-3FBD-E494C52A8B1F";
	addAttr -ci true -sn "pscale" -ln "pscale" -dt "floatArray";
	addAttr -ci true -sn "tangentv" -ln "tangentv" -dt "vectorArray";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 2 ".uvst";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".uvst[1].uvsn" -type "string" "uv";
	setAttr ".cuvs" -type "string" "";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Basket2";
	rename -uid "EBBA1059-4EC3-B9F0-7C75-BC8F3A22E185";
	setAttr ".t" -type "double3" -1.9066641836317118 0 12.366914472056061 ;
	setAttr ".rp" -type "double3" 1.0841139741479822e-07 0.91618942048259855 -4.7168501568500458 ;
	setAttr ".sp" -type "double3" 1.0841139741479822e-07 0.91618942048259855 -4.7168501568500458 ;
createNode houdiniAsset -n "pasted__hunte__dev__BottomlessBucket__1_01" -p "Basket2";
	rename -uid "962DA076-4D67-FD1A-F4C1-21B8B809F0F3";
	addAttr -is true -ci true -sn "houdiniAssetParm" -ln "houdiniAssetParm" -at "compound" 
		-nc 2;
	addAttr -is true -ci true -sn "houdiniAssetParm_stdswitcher3_0__folder" -ln "houdiniAssetParm_stdswitcher3_0__folder" 
		-nn "Transform" -at "compound" -p "houdiniAssetParm" -nc 12;
	addAttr -is true -ci true -sn "houdiniAssetParm_xOrd" -ln "houdiniAssetParm_xOrd" 
		-nn "Transform Order" -min 0 -max 5 -en "Scale Rot Trans:Scale Trans Rot:Rot Scale Trans:Rot Trans Scale:Trans Scale Rot:Trans Rot Scale" 
		-at "enum" -p "houdiniAssetParm_stdswitcher3_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_rOrd" -ln "houdiniAssetParm_rOrd" 
		-nn "Rotate Order" -min 0 -max 5 -en "Rx Ry Rz:Rx Rz Ry:Ry Rx Rz:Ry Rz Rx:Rz Rx Ry:Rz Ry Rx" 
		-at "enum" -p "houdiniAssetParm_stdswitcher3_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_t" -ln "houdiniAssetParm_t" -nn "Translate" 
		-at "compound" -p "houdiniAssetParm_stdswitcher3_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_t__tuple0" -ln "houdiniAssetParm_t__tuple0" 
		-nn "Translate 0" -at "float" -p "houdiniAssetParm_t";
	addAttr -is true -ci true -sn "houdiniAssetParm_t__tuple1" -ln "houdiniAssetParm_t__tuple1" 
		-nn "Translate 1" -at "float" -p "houdiniAssetParm_t";
	addAttr -is true -ci true -sn "houdiniAssetParm_t__tuple2" -ln "houdiniAssetParm_t__tuple2" 
		-nn "Translate 2" -at "float" -p "houdiniAssetParm_t";
	addAttr -is true -ci true -sn "houdiniAssetParm_r" -ln "houdiniAssetParm_r" -nn "Rotate" 
		-at "compound" -p "houdiniAssetParm_stdswitcher3_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_r__tuple0" -ln "houdiniAssetParm_r__tuple0" 
		-nn "Rotate 0" -at "float" -p "houdiniAssetParm_r";
	addAttr -is true -ci true -sn "houdiniAssetParm_r__tuple1" -ln "houdiniAssetParm_r__tuple1" 
		-nn "Rotate 1" -at "float" -p "houdiniAssetParm_r";
	addAttr -is true -ci true -sn "houdiniAssetParm_r__tuple2" -ln "houdiniAssetParm_r__tuple2" 
		-nn "Rotate 2" -at "float" -p "houdiniAssetParm_r";
	addAttr -is true -ci true -sn "houdiniAssetParm_s" -ln "houdiniAssetParm_s" -nn "Scale" 
		-at "compound" -p "houdiniAssetParm_stdswitcher3_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_s__tuple0" -ln "houdiniAssetParm_s__tuple0" 
		-nn "Scale 0" -at "float" -p "houdiniAssetParm_s";
	addAttr -is true -ci true -sn "houdiniAssetParm_s__tuple1" -ln "houdiniAssetParm_s__tuple1" 
		-nn "Scale 1" -at "float" -p "houdiniAssetParm_s";
	addAttr -is true -ci true -sn "houdiniAssetParm_s__tuple2" -ln "houdiniAssetParm_s__tuple2" 
		-nn "Scale 2" -at "float" -p "houdiniAssetParm_s";
	addAttr -is true -ci true -sn "houdiniAssetParm_p" -ln "houdiniAssetParm_p" -nn "Pivot Translate" 
		-at "compound" -p "houdiniAssetParm_stdswitcher3_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_p__tuple0" -ln "houdiniAssetParm_p__tuple0" 
		-nn "Pivot Translate 0" -at "float" -p "houdiniAssetParm_p";
	addAttr -is true -ci true -sn "houdiniAssetParm_p__tuple1" -ln "houdiniAssetParm_p__tuple1" 
		-nn "Pivot Translate 1" -at "float" -p "houdiniAssetParm_p";
	addAttr -is true -ci true -sn "houdiniAssetParm_p__tuple2" -ln "houdiniAssetParm_p__tuple2" 
		-nn "Pivot Translate 2" -at "float" -p "houdiniAssetParm_p";
	addAttr -is true -ci true -sn "houdiniAssetParm_pr" -ln "houdiniAssetParm_pr" -nn "Pivot Rotate" 
		-at "compound" -p "houdiniAssetParm_stdswitcher3_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_pr__tuple0" -ln "houdiniAssetParm_pr__tuple0" 
		-nn "Pivot Rotate 0" -at "float" -p "houdiniAssetParm_pr";
	addAttr -is true -ci true -sn "houdiniAssetParm_pr__tuple1" -ln "houdiniAssetParm_pr__tuple1" 
		-nn "Pivot Rotate 1" -at "float" -p "houdiniAssetParm_pr";
	addAttr -is true -ci true -sn "houdiniAssetParm_pr__tuple2" -ln "houdiniAssetParm_pr__tuple2" 
		-nn "Pivot Rotate 2" -at "float" -p "houdiniAssetParm_pr";
	addAttr -is true -ci true -sn "houdiniAssetParm_scale" -ln "houdiniAssetParm_scale" 
		-nn "Uniform Scale" -at "float" -p "houdiniAssetParm_stdswitcher3_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_pre_xform" -ln "houdiniAssetParm_pre_xform" 
		-nn "Modify Pre-Transform" -min 0 -max 6 -en "Modify Pre-Transform:Clean Transform:Clean Translates:Clean Rotates:Clean Scales:Extract Pre-transform:Reset Pre-transform" 
		-at "enum" -p "houdiniAssetParm_stdswitcher3_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_keeppos" -ln "houdiniAssetParm_keeppos" 
		-nn "Keep Position When Parenting" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher3_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_childcomp" -ln "houdiniAssetParm_childcomp" 
		-nn "Child Compensation" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher3_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_constraints_on" -ln "houdiniAssetParm_constraints_on" 
		-nn "Enable Constraints" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher3_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_stdswitcher3_1__folder" -ln "houdiniAssetParm_stdswitcher3_1__folder" 
		-nn "Subnet" -at "compound" -p "houdiniAssetParm" -nc 7;
	addAttr -is true -ci true -sn "houdiniAssetParm_tdisplay" -ln "houdiniAssetParm_tdisplay" 
		-nn "Display" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher3_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_display" -ln "houdiniAssetParm_display" 
		-nn "Display" -min 0 -max 1 -smn 0 -smx 1 -at "long" -p "houdiniAssetParm_stdswitcher3_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_outputobj" -ln "houdiniAssetParm_outputobj" 
		-nn "Output Transform" -min 0 -max 6 -en "No Object:Input Object 1:Input Object 2:Input Object 3:Input Object 4:_separator_:geo1" 
		-at "enum" -p "houdiniAssetParm_stdswitcher3_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_visibleobjects" -ln "houdiniAssetParm_visibleobjects" 
		-nn "Visible Children" -dt "string" -p "houdiniAssetParm_stdswitcher3_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_picking" -ln "houdiniAssetParm_picking" 
		-nn "Viewport Selecting Enabled" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher3_1__folder";
	addAttr -is true -ci true -uaf -sn "houdiniAssetParm_pickscript" -ln "houdiniAssetParm_pickscript" 
		-nn "Select Script" -ct "hapiParmFile_read" -dt "string" -p "houdiniAssetParm_stdswitcher3_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_caching" -ln "houdiniAssetParm_caching" 
		-nn "Cache Object Transform" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher3_1__folder";
	setAttr ".otlFilePath" -type "string" "C:/Users/hunte/Documents/houdini19.5/otls/object_hunte.dev.BottomlessBucket.1.0.hdanc";
	setAttr ".assetName" -type "string" "hunte::dev::Object/BottomlessBucket::1.0";
	setAttr -cb on ".houdiniAssetParm_s__tuple0" 1;
	setAttr -cb on ".houdiniAssetParm_s__tuple1" 1;
	setAttr -cb on ".houdiniAssetParm_s__tuple2" 1;
	setAttr -cb on ".houdiniAssetParm_scale" 1;
	setAttr -l on -cb on ".houdiniAssetParm_display" 1;
	setAttr -cb on ".houdiniAssetParm_outputobj" 1;
	setAttr ".houdiniAssetParm_visibleobjects" -type "string" "*";
	setAttr -cb on ".houdiniAssetParm_picking" yes;
	setAttr ".houdiniAssetParm_pickscript" -type "string" "";
	setAttr -cb on ".houdiniAssetParm_caching" yes;
createNode transform -n "pasted__geo1" -p "pasted__hunte__dev__BottomlessBucket__1_01";
	rename -uid "5BB6FFF1-4B77-06DA-A0CD-5AB46179E4A4";
createNode transform -n "pasted__copytopoints1_0" -p "pasted__geo1";
	rename -uid "BDA5438B-43EB-005D-A851-7386A9251C9A";
	setAttr ".t" -type "double3" -2.8259568349958566 1.1396843405879453 -4.7168500484386495 ;
	setAttr ".s" -type "double3" 0.45471035787853309 0.45471035787853309 0.45471035787853309 ;
createNode mesh -n "pasted__copytopoints1_0Shape" -p "pasted__copytopoints1_0";
	rename -uid "71219F7E-45CA-E80D-6F7E-E187179D8A32";
	addAttr -ci true -sn "pscale" -ln "pscale" -dt "floatArray";
	addAttr -ci true -sn "tangentv" -ln "tangentv" -dt "vectorArray";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 2 ".uvst";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".uvst[1].uvsn" -type "string" "uv";
	setAttr ".cuvs" -type "string" "";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode houdiniAsset -n "hunte__dev__Tree_subnet__1_01";
	rename -uid "BEFD3BA7-4D3C-01F0-F3A5-E4AF9A8F06EE";
	addAttr -is true -ci true -sn "houdiniAssetParm" -ln "houdiniAssetParm" -at "compound" 
		-nc 8;
	addAttr -is true -ci true -sn "houdiniAssetParm_stdswitcher3_0__folder" -ln "houdiniAssetParm_stdswitcher3_0__folder" 
		-nn "Transform" -at "compound" -p "houdiniAssetParm" -nc 12;
	addAttr -is true -ci true -sn "houdiniAssetParm_xOrd" -ln "houdiniAssetParm_xOrd" 
		-nn "Transform Order" -min 0 -max 5 -en "Scale Rot Trans:Scale Trans Rot:Rot Scale Trans:Rot Trans Scale:Trans Scale Rot:Trans Rot Scale" 
		-at "enum" -p "houdiniAssetParm_stdswitcher3_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_rOrd" -ln "houdiniAssetParm_rOrd" 
		-nn "Rotate Order" -min 0 -max 5 -en "Rx Ry Rz:Rx Rz Ry:Ry Rx Rz:Ry Rz Rx:Rz Rx Ry:Rz Ry Rx" 
		-at "enum" -p "houdiniAssetParm_stdswitcher3_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_t" -ln "houdiniAssetParm_t" -nn "Translate" 
		-at "compound" -p "houdiniAssetParm_stdswitcher3_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_t__tuple0" -ln "houdiniAssetParm_t__tuple0" 
		-nn "Translate 0" -at "float" -p "houdiniAssetParm_t";
	addAttr -is true -ci true -sn "houdiniAssetParm_t__tuple1" -ln "houdiniAssetParm_t__tuple1" 
		-nn "Translate 1" -at "float" -p "houdiniAssetParm_t";
	addAttr -is true -ci true -sn "houdiniAssetParm_t__tuple2" -ln "houdiniAssetParm_t__tuple2" 
		-nn "Translate 2" -at "float" -p "houdiniAssetParm_t";
	addAttr -is true -ci true -sn "houdiniAssetParm_r" -ln "houdiniAssetParm_r" -nn "Rotate" 
		-at "compound" -p "houdiniAssetParm_stdswitcher3_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_r__tuple0" -ln "houdiniAssetParm_r__tuple0" 
		-nn "Rotate 0" -at "float" -p "houdiniAssetParm_r";
	addAttr -is true -ci true -sn "houdiniAssetParm_r__tuple1" -ln "houdiniAssetParm_r__tuple1" 
		-nn "Rotate 1" -at "float" -p "houdiniAssetParm_r";
	addAttr -is true -ci true -sn "houdiniAssetParm_r__tuple2" -ln "houdiniAssetParm_r__tuple2" 
		-nn "Rotate 2" -at "float" -p "houdiniAssetParm_r";
	addAttr -is true -ci true -sn "houdiniAssetParm_s" -ln "houdiniAssetParm_s" -nn "Scale" 
		-at "compound" -p "houdiniAssetParm_stdswitcher3_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_s__tuple0" -ln "houdiniAssetParm_s__tuple0" 
		-nn "Scale 0" -at "float" -p "houdiniAssetParm_s";
	addAttr -is true -ci true -sn "houdiniAssetParm_s__tuple1" -ln "houdiniAssetParm_s__tuple1" 
		-nn "Scale 1" -at "float" -p "houdiniAssetParm_s";
	addAttr -is true -ci true -sn "houdiniAssetParm_s__tuple2" -ln "houdiniAssetParm_s__tuple2" 
		-nn "Scale 2" -at "float" -p "houdiniAssetParm_s";
	addAttr -is true -ci true -sn "houdiniAssetParm_p" -ln "houdiniAssetParm_p" -nn "Pivot Translate" 
		-at "compound" -p "houdiniAssetParm_stdswitcher3_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_p__tuple0" -ln "houdiniAssetParm_p__tuple0" 
		-nn "Pivot Translate 0" -at "float" -p "houdiniAssetParm_p";
	addAttr -is true -ci true -sn "houdiniAssetParm_p__tuple1" -ln "houdiniAssetParm_p__tuple1" 
		-nn "Pivot Translate 1" -at "float" -p "houdiniAssetParm_p";
	addAttr -is true -ci true -sn "houdiniAssetParm_p__tuple2" -ln "houdiniAssetParm_p__tuple2" 
		-nn "Pivot Translate 2" -at "float" -p "houdiniAssetParm_p";
	addAttr -is true -ci true -sn "houdiniAssetParm_pr" -ln "houdiniAssetParm_pr" -nn "Pivot Rotate" 
		-at "compound" -p "houdiniAssetParm_stdswitcher3_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_pr__tuple0" -ln "houdiniAssetParm_pr__tuple0" 
		-nn "Pivot Rotate 0" -at "float" -p "houdiniAssetParm_pr";
	addAttr -is true -ci true -sn "houdiniAssetParm_pr__tuple1" -ln "houdiniAssetParm_pr__tuple1" 
		-nn "Pivot Rotate 1" -at "float" -p "houdiniAssetParm_pr";
	addAttr -is true -ci true -sn "houdiniAssetParm_pr__tuple2" -ln "houdiniAssetParm_pr__tuple2" 
		-nn "Pivot Rotate 2" -at "float" -p "houdiniAssetParm_pr";
	addAttr -is true -ci true -sn "houdiniAssetParm_scale" -ln "houdiniAssetParm_scale" 
		-nn "Uniform Scale" -at "float" -p "houdiniAssetParm_stdswitcher3_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_pre_xform" -ln "houdiniAssetParm_pre_xform" 
		-nn "Modify Pre-Transform" -min 0 -max 6 -en "Modify Pre-Transform:Clean Transform:Clean Translates:Clean Rotates:Clean Scales:Extract Pre-transform:Reset Pre-transform" 
		-at "enum" -p "houdiniAssetParm_stdswitcher3_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_keeppos" -ln "houdiniAssetParm_keeppos" 
		-nn "Keep Position When Parenting" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher3_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_childcomp" -ln "houdiniAssetParm_childcomp" 
		-nn "Child Compensation" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher3_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_constraints_on" -ln "houdiniAssetParm_constraints_on" 
		-nn "Enable Constraints" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher3_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_stdswitcher3_1__folder" -ln "houdiniAssetParm_stdswitcher3_1__folder" 
		-nn "Subnet" -at "compound" -p "houdiniAssetParm" -nc 7;
	addAttr -is true -ci true -sn "houdiniAssetParm_tdisplay" -ln "houdiniAssetParm_tdisplay" 
		-nn "Display" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher3_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_display" -ln "houdiniAssetParm_display" 
		-nn "Display" -min 0 -max 1 -smn 0 -smx 1 -at "long" -p "houdiniAssetParm_stdswitcher3_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_outputobj" -ln "houdiniAssetParm_outputobj" 
		-nn "Output Transform" -min 0 -max 6 -en "No Object:Input Object 1:Input Object 2:Input Object 3:Input Object 4:_separator_:tube_object1" 
		-at "enum" -p "houdiniAssetParm_stdswitcher3_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_visibleobjects" -ln "houdiniAssetParm_visibleobjects" 
		-nn "Visible Children" -dt "string" -p "houdiniAssetParm_stdswitcher3_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_picking" -ln "houdiniAssetParm_picking" 
		-nn "Viewport Selecting Enabled" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher3_1__folder";
	addAttr -is true -ci true -uaf -sn "houdiniAssetParm_pickscript" -ln "houdiniAssetParm_pickscript" 
		-nn "Select Script" -ct "hapiParmFile_read" -dt "string" -p "houdiniAssetParm_stdswitcher3_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_caching" -ln "houdiniAssetParm_caching" 
		-nn "Cache Object Transform" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher3_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_bend" -ln "houdiniAssetParm_bend" 
		-nn "Tree Base Bend" -smn -90 -smx 90 -at "float" -p "houdiniAssetParm";
	addAttr -is true -ci true -sn "houdiniAssetParm_selectamount1" -ln "houdiniAssetParm_selectamount1" 
		-nn "Branch Range 1" -min 0 -smn 0 -smx 10 -at "long" -p "houdiniAssetParm";
	addAttr -is true -ci true -sn "houdiniAssetParm_dist" -ln "houdiniAssetParm_dist" 
		-nn "tree branch Distance 1" -smn -1 -smx 1 -at "float" -p "houdiniAssetParm";
	addAttr -is true -ci true -sn "houdiniAssetParm_selectamount2" -ln "houdiniAssetParm_selectamount2" 
		-nn "branch range 2" -min 0 -smn 0 -smx 10 -at "long" -p "houdiniAssetParm";
	addAttr -is true -ci true -sn "houdiniAssetParm_dist2" -ln "houdiniAssetParm_dist2" 
		-nn "tree branch 2 Distance" -smn -1 -smx 1 -at "float" -p "houdiniAssetParm";
	addAttr -is true -ci true -sn "houdiniAssetParm_bend2" -ln "houdiniAssetParm_bend2" 
		-nn "branch 2 Bend" -smn -90 -smx 90 -at "float" -p "houdiniAssetParm";
	setAttr ".otlFilePath" -type "string" "C:/Users/hunte/Documents/houdini19.5/otls/object_hunte.dev.Tree_subnet.1.0.hdanc";
	setAttr ".assetName" -type "string" "hunte::dev::Object/Tree_subnet::1.0";
	setAttr ".outputMaterials[0].outputMaterialPath" -type "string" "tube_object1/uvquickshade1/shop_definition/texture_material/v_layered1";
	setAttr -cb on ".houdiniAssetParm_s__tuple0" 1;
	setAttr -cb on ".houdiniAssetParm_s__tuple1" 1;
	setAttr -cb on ".houdiniAssetParm_s__tuple2" 1;
	setAttr -cb on ".houdiniAssetParm_scale" 1;
	setAttr -l on -cb on ".houdiniAssetParm_display" 1;
	setAttr -cb on ".houdiniAssetParm_outputobj" 1;
	setAttr ".houdiniAssetParm_visibleobjects" -type "string" "*";
	setAttr -cb on ".houdiniAssetParm_picking" yes;
	setAttr ".houdiniAssetParm_pickscript" -type "string" "";
	setAttr -cb on ".houdiniAssetParm_caching" yes;
	setAttr -cb on ".houdiniAssetParm_bend" -2.4861879348754883;
	setAttr -cb on ".houdiniAssetParm_selectamount1" 4;
	setAttr -cb on ".houdiniAssetParm_dist" 0.98299998044967651;
	setAttr -cb on ".houdiniAssetParm_selectamount2" 3;
	setAttr -cb on ".houdiniAssetParm_dist2" 1;
	setAttr -cb on ".houdiniAssetParm_bend2" -30.331491470336914;
createNode transform -n "tube_object1" -p "hunte__dev__Tree_subnet__1_01";
	rename -uid "6B2F9F63-4817-7925-0EA6-A598B136D435";
createNode transform -n "uvunwrap1_0" -p "tube_object1";
	rename -uid "0D8C5FBF-4397-ED89-389D-EC8A49CF5D0D";
	setAttr ".t" -type "double3" -5.671388655803324 1.6126868186386951 7.4971112236109274 ;
	setAttr ".r" -type "double3" 0 -2.4844462502990541 0 ;
	setAttr ".s" -type "double3" 0.84857217106335325 0.84857217106335325 0.84857217106335325 ;
createNode mesh -n "uvunwrap1_0Shape" -p "|hunte__dev__Tree_subnet__1_01|tube_object1|uvunwrap1_0";
	rename -uid "3FCEFDD7-4161-C619-432D-74B59DD6F62B";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 2 ".uvst";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".uvst[1].uvsn" -type "string" "uv";
	setAttr ".cuvs" -type "string" "uv";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "group3";
	rename -uid "F2876A33-4A5A-04DD-7757-A79CC39057ED";
	setAttr ".t" -type "double3" 1.4849994516333007 0 3.4320719496848007 ;
	setAttr ".rp" -type "double3" 4.8169865944278145 2.5089339017868042 -0.18635177612304688 ;
	setAttr ".sp" -type "double3" 4.8169865944278145 2.5089339017868042 -0.18635177612304688 ;
createNode houdiniAsset -n "pasted__hunte__dev__Tree_subnet__1_01" -p "group3";
	rename -uid "1B333407-49BB-35D3-B6F6-5891F2A8ABDB";
	addAttr -is true -ci true -sn "houdiniAssetParm" -ln "houdiniAssetParm" -at "compound" 
		-nc 8;
	addAttr -is true -ci true -sn "houdiniAssetParm_stdswitcher3_0__folder" -ln "houdiniAssetParm_stdswitcher3_0__folder" 
		-nn "Transform" -at "compound" -p "houdiniAssetParm" -nc 12;
	addAttr -is true -ci true -sn "houdiniAssetParm_xOrd" -ln "houdiniAssetParm_xOrd" 
		-nn "Transform Order" -min 0 -max 5 -en "Scale Rot Trans:Scale Trans Rot:Rot Scale Trans:Rot Trans Scale:Trans Scale Rot:Trans Rot Scale" 
		-at "enum" -p "houdiniAssetParm_stdswitcher3_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_rOrd" -ln "houdiniAssetParm_rOrd" 
		-nn "Rotate Order" -min 0 -max 5 -en "Rx Ry Rz:Rx Rz Ry:Ry Rx Rz:Ry Rz Rx:Rz Rx Ry:Rz Ry Rx" 
		-at "enum" -p "houdiniAssetParm_stdswitcher3_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_t" -ln "houdiniAssetParm_t" -nn "Translate" 
		-at "compound" -p "houdiniAssetParm_stdswitcher3_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_t__tuple0" -ln "houdiniAssetParm_t__tuple0" 
		-nn "Translate 0" -at "float" -p "houdiniAssetParm_t";
	addAttr -is true -ci true -sn "houdiniAssetParm_t__tuple1" -ln "houdiniAssetParm_t__tuple1" 
		-nn "Translate 1" -at "float" -p "houdiniAssetParm_t";
	addAttr -is true -ci true -sn "houdiniAssetParm_t__tuple2" -ln "houdiniAssetParm_t__tuple2" 
		-nn "Translate 2" -at "float" -p "houdiniAssetParm_t";
	addAttr -is true -ci true -sn "houdiniAssetParm_r" -ln "houdiniAssetParm_r" -nn "Rotate" 
		-at "compound" -p "houdiniAssetParm_stdswitcher3_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_r__tuple0" -ln "houdiniAssetParm_r__tuple0" 
		-nn "Rotate 0" -at "float" -p "houdiniAssetParm_r";
	addAttr -is true -ci true -sn "houdiniAssetParm_r__tuple1" -ln "houdiniAssetParm_r__tuple1" 
		-nn "Rotate 1" -at "float" -p "houdiniAssetParm_r";
	addAttr -is true -ci true -sn "houdiniAssetParm_r__tuple2" -ln "houdiniAssetParm_r__tuple2" 
		-nn "Rotate 2" -at "float" -p "houdiniAssetParm_r";
	addAttr -is true -ci true -sn "houdiniAssetParm_s" -ln "houdiniAssetParm_s" -nn "Scale" 
		-at "compound" -p "houdiniAssetParm_stdswitcher3_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_s__tuple0" -ln "houdiniAssetParm_s__tuple0" 
		-nn "Scale 0" -at "float" -p "houdiniAssetParm_s";
	addAttr -is true -ci true -sn "houdiniAssetParm_s__tuple1" -ln "houdiniAssetParm_s__tuple1" 
		-nn "Scale 1" -at "float" -p "houdiniAssetParm_s";
	addAttr -is true -ci true -sn "houdiniAssetParm_s__tuple2" -ln "houdiniAssetParm_s__tuple2" 
		-nn "Scale 2" -at "float" -p "houdiniAssetParm_s";
	addAttr -is true -ci true -sn "houdiniAssetParm_p" -ln "houdiniAssetParm_p" -nn "Pivot Translate" 
		-at "compound" -p "houdiniAssetParm_stdswitcher3_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_p__tuple0" -ln "houdiniAssetParm_p__tuple0" 
		-nn "Pivot Translate 0" -at "float" -p "houdiniAssetParm_p";
	addAttr -is true -ci true -sn "houdiniAssetParm_p__tuple1" -ln "houdiniAssetParm_p__tuple1" 
		-nn "Pivot Translate 1" -at "float" -p "houdiniAssetParm_p";
	addAttr -is true -ci true -sn "houdiniAssetParm_p__tuple2" -ln "houdiniAssetParm_p__tuple2" 
		-nn "Pivot Translate 2" -at "float" -p "houdiniAssetParm_p";
	addAttr -is true -ci true -sn "houdiniAssetParm_pr" -ln "houdiniAssetParm_pr" -nn "Pivot Rotate" 
		-at "compound" -p "houdiniAssetParm_stdswitcher3_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_pr__tuple0" -ln "houdiniAssetParm_pr__tuple0" 
		-nn "Pivot Rotate 0" -at "float" -p "houdiniAssetParm_pr";
	addAttr -is true -ci true -sn "houdiniAssetParm_pr__tuple1" -ln "houdiniAssetParm_pr__tuple1" 
		-nn "Pivot Rotate 1" -at "float" -p "houdiniAssetParm_pr";
	addAttr -is true -ci true -sn "houdiniAssetParm_pr__tuple2" -ln "houdiniAssetParm_pr__tuple2" 
		-nn "Pivot Rotate 2" -at "float" -p "houdiniAssetParm_pr";
	addAttr -is true -ci true -sn "houdiniAssetParm_scale" -ln "houdiniAssetParm_scale" 
		-nn "Uniform Scale" -at "float" -p "houdiniAssetParm_stdswitcher3_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_pre_xform" -ln "houdiniAssetParm_pre_xform" 
		-nn "Modify Pre-Transform" -min 0 -max 6 -en "Modify Pre-Transform:Clean Transform:Clean Translates:Clean Rotates:Clean Scales:Extract Pre-transform:Reset Pre-transform" 
		-at "enum" -p "houdiniAssetParm_stdswitcher3_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_keeppos" -ln "houdiniAssetParm_keeppos" 
		-nn "Keep Position When Parenting" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher3_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_childcomp" -ln "houdiniAssetParm_childcomp" 
		-nn "Child Compensation" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher3_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_constraints_on" -ln "houdiniAssetParm_constraints_on" 
		-nn "Enable Constraints" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher3_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_stdswitcher3_1__folder" -ln "houdiniAssetParm_stdswitcher3_1__folder" 
		-nn "Subnet" -at "compound" -p "houdiniAssetParm" -nc 7;
	addAttr -is true -ci true -sn "houdiniAssetParm_tdisplay" -ln "houdiniAssetParm_tdisplay" 
		-nn "Display" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher3_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_display" -ln "houdiniAssetParm_display" 
		-nn "Display" -min 0 -max 1 -smn 0 -smx 1 -at "long" -p "houdiniAssetParm_stdswitcher3_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_outputobj" -ln "houdiniAssetParm_outputobj" 
		-nn "Output Transform" -min 0 -max 6 -en "No Object:Input Object 1:Input Object 2:Input Object 3:Input Object 4:_separator_:tube_object1" 
		-at "enum" -p "houdiniAssetParm_stdswitcher3_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_visibleobjects" -ln "houdiniAssetParm_visibleobjects" 
		-nn "Visible Children" -dt "string" -p "houdiniAssetParm_stdswitcher3_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_picking" -ln "houdiniAssetParm_picking" 
		-nn "Viewport Selecting Enabled" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher3_1__folder";
	addAttr -is true -ci true -uaf -sn "houdiniAssetParm_pickscript" -ln "houdiniAssetParm_pickscript" 
		-nn "Select Script" -ct "hapiParmFile_read" -dt "string" -p "houdiniAssetParm_stdswitcher3_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_caching" -ln "houdiniAssetParm_caching" 
		-nn "Cache Object Transform" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher3_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_bend" -ln "houdiniAssetParm_bend" 
		-nn "Tree Base Bend" -smn -90 -smx 90 -at "float" -p "houdiniAssetParm";
	addAttr -is true -ci true -sn "houdiniAssetParm_selectamount1" -ln "houdiniAssetParm_selectamount1" 
		-nn "Branch Range 1" -min 0 -smn 0 -smx 10 -at "long" -p "houdiniAssetParm";
	addAttr -is true -ci true -sn "houdiniAssetParm_dist" -ln "houdiniAssetParm_dist" 
		-nn "tree branch Distance 1" -smn -1 -smx 1 -at "float" -p "houdiniAssetParm";
	addAttr -is true -ci true -sn "houdiniAssetParm_selectamount2" -ln "houdiniAssetParm_selectamount2" 
		-nn "branch range 2" -min 0 -smn 0 -smx 10 -at "long" -p "houdiniAssetParm";
	addAttr -is true -ci true -sn "houdiniAssetParm_dist2" -ln "houdiniAssetParm_dist2" 
		-nn "tree branch 2 Distance" -smn -1 -smx 1 -at "float" -p "houdiniAssetParm";
	addAttr -is true -ci true -sn "houdiniAssetParm_bend2" -ln "houdiniAssetParm_bend2" 
		-nn "branch 2 Bend" -smn -90 -smx 90 -at "float" -p "houdiniAssetParm";
	setAttr ".otlFilePath" -type "string" "C:/Users/hunte/Documents/houdini19.5/otls/object_hunte.dev.Tree_subnet.1.0.hdanc";
	setAttr ".assetName" -type "string" "hunte::dev::Object/Tree_subnet::1.0";
	setAttr ".outputMaterials[0].outputMaterialPath" -type "string" "tube_object1/uvquickshade1/shop_definition/texture_material/v_layered1";
	setAttr -cb on ".houdiniAssetParm_s__tuple0" 1;
	setAttr -cb on ".houdiniAssetParm_s__tuple1" 1;
	setAttr -cb on ".houdiniAssetParm_s__tuple2" 1;
	setAttr -cb on ".houdiniAssetParm_scale" 1;
	setAttr -l on -cb on ".houdiniAssetParm_display" 1;
	setAttr -cb on ".houdiniAssetParm_outputobj" 1;
	setAttr ".houdiniAssetParm_visibleobjects" -type "string" "*";
	setAttr -cb on ".houdiniAssetParm_picking" yes;
	setAttr ".houdiniAssetParm_pickscript" -type "string" "";
	setAttr -cb on ".houdiniAssetParm_caching" yes;
	setAttr -cb on ".houdiniAssetParm_bend" -45;
	setAttr -cb on ".houdiniAssetParm_selectamount1" 1;
	setAttr -cb on ".houdiniAssetParm_dist" 0.98299998044967651;
	setAttr -cb on ".houdiniAssetParm_selectamount2" 1;
	setAttr -cb on ".houdiniAssetParm_dist2" 1;
	setAttr -cb on ".houdiniAssetParm_bend2" 16.100000381469727;
createNode transform -n "pasted__tube_object1" -p "pasted__hunte__dev__Tree_subnet__1_01";
	rename -uid "3105A63E-4FE0-5608-A68E-699B37AC150E";
createNode transform -n "pasted__uvunwrap1_0" -p "pasted__tube_object1";
	rename -uid "023E2E33-48B3-6375-C01B-34AB3A81184A";
	setAttr ".t" -type "double3" -6.3576759389474988 1.6717270115521785 -8.2098125740712877 ;
createNode mesh -n "pasted__uvunwrap1_0Shape" -p "|group3|pasted__hunte__dev__Tree_subnet__1_01|pasted__tube_object1|pasted__uvunwrap1_0";
	rename -uid "44AD8A5F-46D2-24FE-D39E-1CAA86C5C5CE";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 2 ".uvst";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".uvst[1].uvsn" -type "string" "uv";
	setAttr ".cuvs" -type "string" "uv";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Rock3";
	rename -uid "4C783E33-47F5-36A0-F300-62B91E32280B";
	setAttr ".t" -type "double3" 0 0 -1.5127334676977835 ;
	setAttr ".s" -type "double3" 1.6899792423071747 1.6899792423071747 1.6899792423071747 ;
	setAttr ".rp" -type "double3" -0.96804357695699528 1.8526426429032758 -3.94826792803652 ;
	setAttr ".sp" -type "double3" -0.96804357695699528 1.8526426429032758 -3.94826792803652 ;
createNode houdiniAsset -n "pasted__hunte__dev__NewRockGeo__1_01" -p "Rock3";
	rename -uid "04519F59-4D7F-5079-E6F6-60A94E758A34";
	addAttr -is true -ci true -sn "houdiniAssetParm" -ln "houdiniAssetParm" -at "compound" 
		-nc 6;
	addAttr -is true -ci true -sn "houdiniAssetParm_stdswitcher3_0__folder" -ln "houdiniAssetParm_stdswitcher3_0__folder" 
		-nn "Transform" -at "compound" -p "houdiniAssetParm" -nc 12;
	addAttr -is true -ci true -sn "houdiniAssetParm_xOrd" -ln "houdiniAssetParm_xOrd" 
		-nn "Transform Order" -min 0 -max 5 -en "Scale Rot Trans:Scale Trans Rot:Rot Scale Trans:Rot Trans Scale:Trans Scale Rot:Trans Rot Scale" 
		-at "enum" -p "houdiniAssetParm_stdswitcher3_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_rOrd" -ln "houdiniAssetParm_rOrd" 
		-nn "Rotate Order" -min 0 -max 5 -en "Rx Ry Rz:Rx Rz Ry:Ry Rx Rz:Ry Rz Rx:Rz Rx Ry:Rz Ry Rx" 
		-at "enum" -p "houdiniAssetParm_stdswitcher3_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_t" -ln "houdiniAssetParm_t" -nn "Translate" 
		-at "compound" -p "houdiniAssetParm_stdswitcher3_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_t__tuple0" -ln "houdiniAssetParm_t__tuple0" 
		-nn "Translate 0" -at "float" -p "houdiniAssetParm_t";
	addAttr -is true -ci true -sn "houdiniAssetParm_t__tuple1" -ln "houdiniAssetParm_t__tuple1" 
		-nn "Translate 1" -at "float" -p "houdiniAssetParm_t";
	addAttr -is true -ci true -sn "houdiniAssetParm_t__tuple2" -ln "houdiniAssetParm_t__tuple2" 
		-nn "Translate 2" -at "float" -p "houdiniAssetParm_t";
	addAttr -is true -ci true -sn "houdiniAssetParm_r" -ln "houdiniAssetParm_r" -nn "Rotate" 
		-at "compound" -p "houdiniAssetParm_stdswitcher3_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_r__tuple0" -ln "houdiniAssetParm_r__tuple0" 
		-nn "Rotate 0" -at "float" -p "houdiniAssetParm_r";
	addAttr -is true -ci true -sn "houdiniAssetParm_r__tuple1" -ln "houdiniAssetParm_r__tuple1" 
		-nn "Rotate 1" -at "float" -p "houdiniAssetParm_r";
	addAttr -is true -ci true -sn "houdiniAssetParm_r__tuple2" -ln "houdiniAssetParm_r__tuple2" 
		-nn "Rotate 2" -at "float" -p "houdiniAssetParm_r";
	addAttr -is true -ci true -sn "houdiniAssetParm_s" -ln "houdiniAssetParm_s" -nn "Scale" 
		-at "compound" -p "houdiniAssetParm_stdswitcher3_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_s__tuple0" -ln "houdiniAssetParm_s__tuple0" 
		-nn "Scale 0" -at "float" -p "houdiniAssetParm_s";
	addAttr -is true -ci true -sn "houdiniAssetParm_s__tuple1" -ln "houdiniAssetParm_s__tuple1" 
		-nn "Scale 1" -at "float" -p "houdiniAssetParm_s";
	addAttr -is true -ci true -sn "houdiniAssetParm_s__tuple2" -ln "houdiniAssetParm_s__tuple2" 
		-nn "Scale 2" -at "float" -p "houdiniAssetParm_s";
	addAttr -is true -ci true -sn "houdiniAssetParm_p" -ln "houdiniAssetParm_p" -nn "Pivot Translate" 
		-at "compound" -p "houdiniAssetParm_stdswitcher3_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_p__tuple0" -ln "houdiniAssetParm_p__tuple0" 
		-nn "Pivot Translate 0" -at "float" -p "houdiniAssetParm_p";
	addAttr -is true -ci true -sn "houdiniAssetParm_p__tuple1" -ln "houdiniAssetParm_p__tuple1" 
		-nn "Pivot Translate 1" -at "float" -p "houdiniAssetParm_p";
	addAttr -is true -ci true -sn "houdiniAssetParm_p__tuple2" -ln "houdiniAssetParm_p__tuple2" 
		-nn "Pivot Translate 2" -at "float" -p "houdiniAssetParm_p";
	addAttr -is true -ci true -sn "houdiniAssetParm_pr" -ln "houdiniAssetParm_pr" -nn "Pivot Rotate" 
		-at "compound" -p "houdiniAssetParm_stdswitcher3_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_pr__tuple0" -ln "houdiniAssetParm_pr__tuple0" 
		-nn "Pivot Rotate 0" -at "float" -p "houdiniAssetParm_pr";
	addAttr -is true -ci true -sn "houdiniAssetParm_pr__tuple1" -ln "houdiniAssetParm_pr__tuple1" 
		-nn "Pivot Rotate 1" -at "float" -p "houdiniAssetParm_pr";
	addAttr -is true -ci true -sn "houdiniAssetParm_pr__tuple2" -ln "houdiniAssetParm_pr__tuple2" 
		-nn "Pivot Rotate 2" -at "float" -p "houdiniAssetParm_pr";
	addAttr -is true -ci true -sn "houdiniAssetParm_scale" -ln "houdiniAssetParm_scale" 
		-nn "Uniform Scale" -at "float" -p "houdiniAssetParm_stdswitcher3_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_pre_xform" -ln "houdiniAssetParm_pre_xform" 
		-nn "Modify Pre-Transform" -min 0 -max 6 -en "Modify Pre-Transform:Clean Transform:Clean Translates:Clean Rotates:Clean Scales:Extract Pre-transform:Reset Pre-transform" 
		-at "enum" -p "houdiniAssetParm_stdswitcher3_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_keeppos" -ln "houdiniAssetParm_keeppos" 
		-nn "Keep Position When Parenting" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher3_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_childcomp" -ln "houdiniAssetParm_childcomp" 
		-nn "Child Compensation" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher3_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_constraints_on" -ln "houdiniAssetParm_constraints_on" 
		-nn "Enable Constraints" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher3_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_stdswitcher3_1__folder" -ln "houdiniAssetParm_stdswitcher3_1__folder" 
		-nn "Subnet" -at "compound" -p "houdiniAssetParm" -nc 7;
	addAttr -is true -ci true -sn "houdiniAssetParm_tdisplay" -ln "houdiniAssetParm_tdisplay" 
		-nn "Display" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher3_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_display" -ln "houdiniAssetParm_display" 
		-nn "Display" -min 0 -max 1 -smn 0 -smx 1 -at "long" -p "houdiniAssetParm_stdswitcher3_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_outputobj" -ln "houdiniAssetParm_outputobj" 
		-nn "Output Transform" -min 0 -max 6 -en "No Object:Input Object 1:Input Object 2:Input Object 3:Input Object 4:_separator_:RockGeo" 
		-at "enum" -p "houdiniAssetParm_stdswitcher3_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_visibleobjects" -ln "houdiniAssetParm_visibleobjects" 
		-nn "Visible Children" -dt "string" -p "houdiniAssetParm_stdswitcher3_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_picking" -ln "houdiniAssetParm_picking" 
		-nn "Viewport Selecting Enabled" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher3_1__folder";
	addAttr -is true -ci true -uaf -sn "houdiniAssetParm_pickscript" -ln "houdiniAssetParm_pickscript" 
		-nn "Select Script" -ct "hapiParmFile_read" -dt "string" -p "houdiniAssetParm_stdswitcher3_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_caching" -ln "houdiniAssetParm_caching" 
		-nn "Cache Object Transform" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher3_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_scale2" -ln "houdiniAssetParm_scale2" 
		-nn "Uniform Scale" -smn 0 -smx 10 -at "float" -p "houdiniAssetParm";
	addAttr -is true -ci true -sn "houdiniAssetParm_freq" -ln "houdiniAssetParm_freq" 
		-nn "Resolution" -dv 1 -min 1 -smn 1 -smx 10 -at "long" -p "houdiniAssetParm";
	addAttr -is true -ci true -sn "houdiniAssetParm_amplitude" -ln "houdiniAssetParm_amplitude" 
		-nn "Amplitude" -min 0 -smn 0 -smx 10 -at "float" -p "houdiniAssetParm";
	addAttr -is true -ci true -sn "houdiniAssetParm_offset" -ln "houdiniAssetParm_offset" 
		-nn "Variation" -smn 0 -smx 50 -at "float" -p "houdiniAssetParm";
	setAttr ".otlFilePath" -type "string" "C:/Users/hunte/Documents/houdini19.5/otls/object_hunte.dev.NewRockGeo.1.0.hdanc";
	setAttr ".assetName" -type "string" "hunte::dev::Object/NewRockGeo::1.0";
	setAttr ".outputMaterials[0].outputMaterialPath" -type "string" "RockGeo/uvquickshade1/shop_definition/texture_material/v_layered1";
	setAttr -cb on ".houdiniAssetParm_s__tuple0" 1;
	setAttr -cb on ".houdiniAssetParm_s__tuple1" 1;
	setAttr -cb on ".houdiniAssetParm_s__tuple2" 1;
	setAttr -cb on ".houdiniAssetParm_scale" 1;
	setAttr -l on -cb on ".houdiniAssetParm_display" 1;
	setAttr -cb on ".houdiniAssetParm_outputobj" 1;
	setAttr ".houdiniAssetParm_visibleobjects" -type "string" "*";
	setAttr -cb on ".houdiniAssetParm_picking" yes;
	setAttr ".houdiniAssetParm_pickscript" -type "string" "";
	setAttr -cb on ".houdiniAssetParm_caching" yes;
	setAttr -cb on ".houdiniAssetParm_scale2" 1;
	setAttr -cb on ".houdiniAssetParm_freq" 2;
	setAttr -cb on ".houdiniAssetParm_amplitude" 0.25;
	setAttr ".houdiniAssetParm_offset" 3.7292816638946533;
createNode transform -n "pasted__RockGeo" -p "|Rock3|pasted__hunte__dev__NewRockGeo__1_01";
	rename -uid "A729D088-46B1-5FD9-643E-BDBDD30B1797";
createNode transform -n "pasted__uvunwrap1_0" -p "|Rock3|pasted__hunte__dev__NewRockGeo__1_01|pasted__RockGeo";
	rename -uid "B5FC31B8-4BBC-316B-E8C8-20BD577FF72D";
	setAttr ".t" -type "double3" -2.570298413161094 1.8904170120238755 -3.852144679697822 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
createNode mesh -n "pasted__uvunwrap1_0Shape" -p "|Rock3|pasted__hunte__dev__NewRockGeo__1_01|pasted__RockGeo|pasted__uvunwrap1_0";
	rename -uid "FE373A21-43D6-C281-47F4-C686D32F093F";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 2 ".uvst";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".uvst[1].uvsn" -type "string" "uv";
	setAttr ".cuvs" -type "string" "uv";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Rock4";
	rename -uid "5981D467-4461-E2BA-B4EF-B6A0499BC7A2";
	setAttr ".t" -type "double3" 0 0 13.730319501146948 ;
	setAttr ".rp" -type "double3" -0.96804357695699528 1.8526426429032761 -5.4610013957343035 ;
	setAttr ".sp" -type "double3" -0.96804357695699528 1.8526426429032761 -5.4610013957343035 ;
createNode transform -n "pasted__Rock3" -p "Rock4";
	rename -uid "0AEEDD67-457A-2761-9F49-B3B9B1DC7E60";
	setAttr ".t" -type "double3" 0 0 -1.5127334676977835 ;
	setAttr ".s" -type "double3" 1.6899792423071747 1.6899792423071747 1.6899792423071747 ;
	setAttr ".rp" -type "double3" -0.96804357695699528 1.8526426429032758 -3.94826792803652 ;
	setAttr ".sp" -type "double3" -0.96804357695699528 1.8526426429032758 -3.94826792803652 ;
createNode houdiniAsset -n "pasted__pasted__hunte__dev__NewRockGeo__1_01" -p "|Rock4|pasted__Rock3";
	rename -uid "9594DDEF-43F4-54D2-D435-09A2CD5A1F37";
	addAttr -is true -ci true -sn "houdiniAssetParm" -ln "houdiniAssetParm" -at "compound" 
		-nc 6;
	addAttr -is true -ci true -sn "houdiniAssetParm_stdswitcher3_0__folder" -ln "houdiniAssetParm_stdswitcher3_0__folder" 
		-nn "Transform" -at "compound" -p "houdiniAssetParm" -nc 12;
	addAttr -is true -ci true -sn "houdiniAssetParm_xOrd" -ln "houdiniAssetParm_xOrd" 
		-nn "Transform Order" -min 0 -max 5 -en "Scale Rot Trans:Scale Trans Rot:Rot Scale Trans:Rot Trans Scale:Trans Scale Rot:Trans Rot Scale" 
		-at "enum" -p "houdiniAssetParm_stdswitcher3_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_rOrd" -ln "houdiniAssetParm_rOrd" 
		-nn "Rotate Order" -min 0 -max 5 -en "Rx Ry Rz:Rx Rz Ry:Ry Rx Rz:Ry Rz Rx:Rz Rx Ry:Rz Ry Rx" 
		-at "enum" -p "houdiniAssetParm_stdswitcher3_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_t" -ln "houdiniAssetParm_t" -nn "Translate" 
		-at "compound" -p "houdiniAssetParm_stdswitcher3_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_t__tuple0" -ln "houdiniAssetParm_t__tuple0" 
		-nn "Translate 0" -at "float" -p "houdiniAssetParm_t";
	addAttr -is true -ci true -sn "houdiniAssetParm_t__tuple1" -ln "houdiniAssetParm_t__tuple1" 
		-nn "Translate 1" -at "float" -p "houdiniAssetParm_t";
	addAttr -is true -ci true -sn "houdiniAssetParm_t__tuple2" -ln "houdiniAssetParm_t__tuple2" 
		-nn "Translate 2" -at "float" -p "houdiniAssetParm_t";
	addAttr -is true -ci true -sn "houdiniAssetParm_r" -ln "houdiniAssetParm_r" -nn "Rotate" 
		-at "compound" -p "houdiniAssetParm_stdswitcher3_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_r__tuple0" -ln "houdiniAssetParm_r__tuple0" 
		-nn "Rotate 0" -at "float" -p "houdiniAssetParm_r";
	addAttr -is true -ci true -sn "houdiniAssetParm_r__tuple1" -ln "houdiniAssetParm_r__tuple1" 
		-nn "Rotate 1" -at "float" -p "houdiniAssetParm_r";
	addAttr -is true -ci true -sn "houdiniAssetParm_r__tuple2" -ln "houdiniAssetParm_r__tuple2" 
		-nn "Rotate 2" -at "float" -p "houdiniAssetParm_r";
	addAttr -is true -ci true -sn "houdiniAssetParm_s" -ln "houdiniAssetParm_s" -nn "Scale" 
		-at "compound" -p "houdiniAssetParm_stdswitcher3_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_s__tuple0" -ln "houdiniAssetParm_s__tuple0" 
		-nn "Scale 0" -at "float" -p "houdiniAssetParm_s";
	addAttr -is true -ci true -sn "houdiniAssetParm_s__tuple1" -ln "houdiniAssetParm_s__tuple1" 
		-nn "Scale 1" -at "float" -p "houdiniAssetParm_s";
	addAttr -is true -ci true -sn "houdiniAssetParm_s__tuple2" -ln "houdiniAssetParm_s__tuple2" 
		-nn "Scale 2" -at "float" -p "houdiniAssetParm_s";
	addAttr -is true -ci true -sn "houdiniAssetParm_p" -ln "houdiniAssetParm_p" -nn "Pivot Translate" 
		-at "compound" -p "houdiniAssetParm_stdswitcher3_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_p__tuple0" -ln "houdiniAssetParm_p__tuple0" 
		-nn "Pivot Translate 0" -at "float" -p "houdiniAssetParm_p";
	addAttr -is true -ci true -sn "houdiniAssetParm_p__tuple1" -ln "houdiniAssetParm_p__tuple1" 
		-nn "Pivot Translate 1" -at "float" -p "houdiniAssetParm_p";
	addAttr -is true -ci true -sn "houdiniAssetParm_p__tuple2" -ln "houdiniAssetParm_p__tuple2" 
		-nn "Pivot Translate 2" -at "float" -p "houdiniAssetParm_p";
	addAttr -is true -ci true -sn "houdiniAssetParm_pr" -ln "houdiniAssetParm_pr" -nn "Pivot Rotate" 
		-at "compound" -p "houdiniAssetParm_stdswitcher3_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_pr__tuple0" -ln "houdiniAssetParm_pr__tuple0" 
		-nn "Pivot Rotate 0" -at "float" -p "houdiniAssetParm_pr";
	addAttr -is true -ci true -sn "houdiniAssetParm_pr__tuple1" -ln "houdiniAssetParm_pr__tuple1" 
		-nn "Pivot Rotate 1" -at "float" -p "houdiniAssetParm_pr";
	addAttr -is true -ci true -sn "houdiniAssetParm_pr__tuple2" -ln "houdiniAssetParm_pr__tuple2" 
		-nn "Pivot Rotate 2" -at "float" -p "houdiniAssetParm_pr";
	addAttr -is true -ci true -sn "houdiniAssetParm_scale" -ln "houdiniAssetParm_scale" 
		-nn "Uniform Scale" -at "float" -p "houdiniAssetParm_stdswitcher3_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_pre_xform" -ln "houdiniAssetParm_pre_xform" 
		-nn "Modify Pre-Transform" -min 0 -max 6 -en "Modify Pre-Transform:Clean Transform:Clean Translates:Clean Rotates:Clean Scales:Extract Pre-transform:Reset Pre-transform" 
		-at "enum" -p "houdiniAssetParm_stdswitcher3_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_keeppos" -ln "houdiniAssetParm_keeppos" 
		-nn "Keep Position When Parenting" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher3_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_childcomp" -ln "houdiniAssetParm_childcomp" 
		-nn "Child Compensation" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher3_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_constraints_on" -ln "houdiniAssetParm_constraints_on" 
		-nn "Enable Constraints" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher3_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_stdswitcher3_1__folder" -ln "houdiniAssetParm_stdswitcher3_1__folder" 
		-nn "Subnet" -at "compound" -p "houdiniAssetParm" -nc 7;
	addAttr -is true -ci true -sn "houdiniAssetParm_tdisplay" -ln "houdiniAssetParm_tdisplay" 
		-nn "Display" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher3_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_display" -ln "houdiniAssetParm_display" 
		-nn "Display" -min 0 -max 1 -smn 0 -smx 1 -at "long" -p "houdiniAssetParm_stdswitcher3_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_outputobj" -ln "houdiniAssetParm_outputobj" 
		-nn "Output Transform" -min 0 -max 6 -en "No Object:Input Object 1:Input Object 2:Input Object 3:Input Object 4:_separator_:RockGeo" 
		-at "enum" -p "houdiniAssetParm_stdswitcher3_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_visibleobjects" -ln "houdiniAssetParm_visibleobjects" 
		-nn "Visible Children" -dt "string" -p "houdiniAssetParm_stdswitcher3_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_picking" -ln "houdiniAssetParm_picking" 
		-nn "Viewport Selecting Enabled" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher3_1__folder";
	addAttr -is true -ci true -uaf -sn "houdiniAssetParm_pickscript" -ln "houdiniAssetParm_pickscript" 
		-nn "Select Script" -ct "hapiParmFile_read" -dt "string" -p "houdiniAssetParm_stdswitcher3_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_caching" -ln "houdiniAssetParm_caching" 
		-nn "Cache Object Transform" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher3_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_scale2" -ln "houdiniAssetParm_scale2" 
		-nn "Uniform Scale" -smn 0 -smx 10 -at "float" -p "houdiniAssetParm";
	addAttr -is true -ci true -sn "houdiniAssetParm_freq" -ln "houdiniAssetParm_freq" 
		-nn "Resolution" -dv 1 -min 1 -smn 1 -smx 10 -at "long" -p "houdiniAssetParm";
	addAttr -is true -ci true -sn "houdiniAssetParm_amplitude" -ln "houdiniAssetParm_amplitude" 
		-nn "Amplitude" -min 0 -smn 0 -smx 10 -at "float" -p "houdiniAssetParm";
	addAttr -is true -ci true -sn "houdiniAssetParm_offset" -ln "houdiniAssetParm_offset" 
		-nn "Variation" -smn 0 -smx 50 -at "float" -p "houdiniAssetParm";
	setAttr ".otlFilePath" -type "string" "C:/Users/hunte/Documents/houdini19.5/otls/object_hunte.dev.NewRockGeo.1.0.hdanc";
	setAttr ".assetName" -type "string" "hunte::dev::Object/NewRockGeo::1.0";
	setAttr ".outputMaterials[0].outputMaterialPath" -type "string" "RockGeo/uvquickshade1/shop_definition/texture_material/v_layered1";
	setAttr -cb on ".houdiniAssetParm_s__tuple0" 1;
	setAttr -cb on ".houdiniAssetParm_s__tuple1" 1;
	setAttr -cb on ".houdiniAssetParm_s__tuple2" 1;
	setAttr -cb on ".houdiniAssetParm_scale" 1;
	setAttr -l on -cb on ".houdiniAssetParm_display" 1;
	setAttr -cb on ".houdiniAssetParm_outputobj" 1;
	setAttr ".houdiniAssetParm_visibleobjects" -type "string" "*";
	setAttr -cb on ".houdiniAssetParm_picking" yes;
	setAttr ".houdiniAssetParm_pickscript" -type "string" "";
	setAttr -cb on ".houdiniAssetParm_caching" yes;
	setAttr -cb on ".houdiniAssetParm_scale2" 1;
	setAttr -cb on ".houdiniAssetParm_freq" 2;
	setAttr -cb on ".houdiniAssetParm_amplitude" 0.25;
	setAttr ".houdiniAssetParm_offset" 6.9060773849487305;
createNode transform -n "pasted__pasted__RockGeo" -p "|Rock4|pasted__Rock3|pasted__pasted__hunte__dev__NewRockGeo__1_01";
	rename -uid "DF7022E8-4B18-2C88-7EEC-309DC45C98D0";
createNode transform -n "pasted__pasted__uvunwrap1_0" -p "|Rock4|pasted__Rock3|pasted__pasted__hunte__dev__NewRockGeo__1_01|pasted__pasted__RockGeo";
	rename -uid "9937CD11-4728-773D-AE18-D1BFA8E54941";
	setAttr ".t" -type "double3" -2.9462268274130246 1.8904170120238755 -3.8521446796978229 ;
createNode mesh -n "pasted__pasted__uvunwrap1_0Shape" -p "|Rock4|pasted__Rock3|pasted__pasted__hunte__dev__NewRockGeo__1_01|pasted__pasted__RockGeo|pasted__pasted__uvunwrap1_0";
	rename -uid "E070B976-498E-9C5C-CA65-E0A4360E2053";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 2 ".uvst";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".uvst[1].uvsn" -type "string" "uv";
	setAttr ".cuvs" -type "string" "uv";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "group4";
	rename -uid "075DB90C-4670-4FFE-8E7D-E2B4D6779FD7";
	setAttr ".t" -type "double3" -0.23484883621181352 0 12.478451383043319 ;
	setAttr ".rp" -type "double3" -0.96804357695699528 1.8526426429032761 -5.4610013957343035 ;
	setAttr ".sp" -type "double3" -0.96804357695699528 1.8526426429032761 -5.4610013957343035 ;
createNode transform -n "pasted__Rock3" -p "group4";
	rename -uid "2F53847B-4709-6531-9188-1EBAD10392F6";
	setAttr ".t" -type "double3" 0 0 -1.5127334676977835 ;
	setAttr ".s" -type "double3" 1.6899792423071747 1.6899792423071747 1.6899792423071747 ;
	setAttr ".rp" -type "double3" -0.96804357695699528 1.8526426429032758 -3.94826792803652 ;
	setAttr ".sp" -type "double3" -0.96804357695699528 1.8526426429032758 -3.94826792803652 ;
createNode houdiniAsset -n "pasted__pasted__hunte__dev__NewRockGeo__1_01" -p "|group4|pasted__Rock3";
	rename -uid "07F0E2BE-4403-E734-7B00-629512694CD0";
	addAttr -is true -ci true -sn "houdiniAssetParm" -ln "houdiniAssetParm" -at "compound" 
		-nc 6;
	addAttr -is true -ci true -sn "houdiniAssetParm_stdswitcher3_0__folder" -ln "houdiniAssetParm_stdswitcher3_0__folder" 
		-nn "Transform" -at "compound" -p "houdiniAssetParm" -nc 12;
	addAttr -is true -ci true -sn "houdiniAssetParm_xOrd" -ln "houdiniAssetParm_xOrd" 
		-nn "Transform Order" -min 0 -max 5 -en "Scale Rot Trans:Scale Trans Rot:Rot Scale Trans:Rot Trans Scale:Trans Scale Rot:Trans Rot Scale" 
		-at "enum" -p "houdiniAssetParm_stdswitcher3_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_rOrd" -ln "houdiniAssetParm_rOrd" 
		-nn "Rotate Order" -min 0 -max 5 -en "Rx Ry Rz:Rx Rz Ry:Ry Rx Rz:Ry Rz Rx:Rz Rx Ry:Rz Ry Rx" 
		-at "enum" -p "houdiniAssetParm_stdswitcher3_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_t" -ln "houdiniAssetParm_t" -nn "Translate" 
		-at "compound" -p "houdiniAssetParm_stdswitcher3_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_t__tuple0" -ln "houdiniAssetParm_t__tuple0" 
		-nn "Translate 0" -at "float" -p "houdiniAssetParm_t";
	addAttr -is true -ci true -sn "houdiniAssetParm_t__tuple1" -ln "houdiniAssetParm_t__tuple1" 
		-nn "Translate 1" -at "float" -p "houdiniAssetParm_t";
	addAttr -is true -ci true -sn "houdiniAssetParm_t__tuple2" -ln "houdiniAssetParm_t__tuple2" 
		-nn "Translate 2" -at "float" -p "houdiniAssetParm_t";
	addAttr -is true -ci true -sn "houdiniAssetParm_r" -ln "houdiniAssetParm_r" -nn "Rotate" 
		-at "compound" -p "houdiniAssetParm_stdswitcher3_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_r__tuple0" -ln "houdiniAssetParm_r__tuple0" 
		-nn "Rotate 0" -at "float" -p "houdiniAssetParm_r";
	addAttr -is true -ci true -sn "houdiniAssetParm_r__tuple1" -ln "houdiniAssetParm_r__tuple1" 
		-nn "Rotate 1" -at "float" -p "houdiniAssetParm_r";
	addAttr -is true -ci true -sn "houdiniAssetParm_r__tuple2" -ln "houdiniAssetParm_r__tuple2" 
		-nn "Rotate 2" -at "float" -p "houdiniAssetParm_r";
	addAttr -is true -ci true -sn "houdiniAssetParm_s" -ln "houdiniAssetParm_s" -nn "Scale" 
		-at "compound" -p "houdiniAssetParm_stdswitcher3_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_s__tuple0" -ln "houdiniAssetParm_s__tuple0" 
		-nn "Scale 0" -at "float" -p "houdiniAssetParm_s";
	addAttr -is true -ci true -sn "houdiniAssetParm_s__tuple1" -ln "houdiniAssetParm_s__tuple1" 
		-nn "Scale 1" -at "float" -p "houdiniAssetParm_s";
	addAttr -is true -ci true -sn "houdiniAssetParm_s__tuple2" -ln "houdiniAssetParm_s__tuple2" 
		-nn "Scale 2" -at "float" -p "houdiniAssetParm_s";
	addAttr -is true -ci true -sn "houdiniAssetParm_p" -ln "houdiniAssetParm_p" -nn "Pivot Translate" 
		-at "compound" -p "houdiniAssetParm_stdswitcher3_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_p__tuple0" -ln "houdiniAssetParm_p__tuple0" 
		-nn "Pivot Translate 0" -at "float" -p "houdiniAssetParm_p";
	addAttr -is true -ci true -sn "houdiniAssetParm_p__tuple1" -ln "houdiniAssetParm_p__tuple1" 
		-nn "Pivot Translate 1" -at "float" -p "houdiniAssetParm_p";
	addAttr -is true -ci true -sn "houdiniAssetParm_p__tuple2" -ln "houdiniAssetParm_p__tuple2" 
		-nn "Pivot Translate 2" -at "float" -p "houdiniAssetParm_p";
	addAttr -is true -ci true -sn "houdiniAssetParm_pr" -ln "houdiniAssetParm_pr" -nn "Pivot Rotate" 
		-at "compound" -p "houdiniAssetParm_stdswitcher3_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_pr__tuple0" -ln "houdiniAssetParm_pr__tuple0" 
		-nn "Pivot Rotate 0" -at "float" -p "houdiniAssetParm_pr";
	addAttr -is true -ci true -sn "houdiniAssetParm_pr__tuple1" -ln "houdiniAssetParm_pr__tuple1" 
		-nn "Pivot Rotate 1" -at "float" -p "houdiniAssetParm_pr";
	addAttr -is true -ci true -sn "houdiniAssetParm_pr__tuple2" -ln "houdiniAssetParm_pr__tuple2" 
		-nn "Pivot Rotate 2" -at "float" -p "houdiniAssetParm_pr";
	addAttr -is true -ci true -sn "houdiniAssetParm_scale" -ln "houdiniAssetParm_scale" 
		-nn "Uniform Scale" -at "float" -p "houdiniAssetParm_stdswitcher3_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_pre_xform" -ln "houdiniAssetParm_pre_xform" 
		-nn "Modify Pre-Transform" -min 0 -max 6 -en "Modify Pre-Transform:Clean Transform:Clean Translates:Clean Rotates:Clean Scales:Extract Pre-transform:Reset Pre-transform" 
		-at "enum" -p "houdiniAssetParm_stdswitcher3_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_keeppos" -ln "houdiniAssetParm_keeppos" 
		-nn "Keep Position When Parenting" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher3_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_childcomp" -ln "houdiniAssetParm_childcomp" 
		-nn "Child Compensation" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher3_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_constraints_on" -ln "houdiniAssetParm_constraints_on" 
		-nn "Enable Constraints" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher3_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_stdswitcher3_1__folder" -ln "houdiniAssetParm_stdswitcher3_1__folder" 
		-nn "Subnet" -at "compound" -p "houdiniAssetParm" -nc 7;
	addAttr -is true -ci true -sn "houdiniAssetParm_tdisplay" -ln "houdiniAssetParm_tdisplay" 
		-nn "Display" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher3_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_display" -ln "houdiniAssetParm_display" 
		-nn "Display" -min 0 -max 1 -smn 0 -smx 1 -at "long" -p "houdiniAssetParm_stdswitcher3_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_outputobj" -ln "houdiniAssetParm_outputobj" 
		-nn "Output Transform" -min 0 -max 6 -en "No Object:Input Object 1:Input Object 2:Input Object 3:Input Object 4:_separator_:RockGeo" 
		-at "enum" -p "houdiniAssetParm_stdswitcher3_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_visibleobjects" -ln "houdiniAssetParm_visibleobjects" 
		-nn "Visible Children" -dt "string" -p "houdiniAssetParm_stdswitcher3_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_picking" -ln "houdiniAssetParm_picking" 
		-nn "Viewport Selecting Enabled" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher3_1__folder";
	addAttr -is true -ci true -uaf -sn "houdiniAssetParm_pickscript" -ln "houdiniAssetParm_pickscript" 
		-nn "Select Script" -ct "hapiParmFile_read" -dt "string" -p "houdiniAssetParm_stdswitcher3_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_caching" -ln "houdiniAssetParm_caching" 
		-nn "Cache Object Transform" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher3_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_scale2" -ln "houdiniAssetParm_scale2" 
		-nn "Uniform Scale" -smn 0 -smx 10 -at "float" -p "houdiniAssetParm";
	addAttr -is true -ci true -sn "houdiniAssetParm_freq" -ln "houdiniAssetParm_freq" 
		-nn "Resolution" -dv 1 -min 1 -smn 1 -smx 10 -at "long" -p "houdiniAssetParm";
	addAttr -is true -ci true -sn "houdiniAssetParm_amplitude" -ln "houdiniAssetParm_amplitude" 
		-nn "Amplitude" -min 0 -smn 0 -smx 10 -at "float" -p "houdiniAssetParm";
	addAttr -is true -ci true -sn "houdiniAssetParm_offset" -ln "houdiniAssetParm_offset" 
		-nn "Variation" -smn 0 -smx 50 -at "float" -p "houdiniAssetParm";
	setAttr ".otlFilePath" -type "string" "C:/Users/hunte/Documents/houdini19.5/otls/object_hunte.dev.NewRockGeo.1.0.hdanc";
	setAttr ".assetName" -type "string" "hunte::dev::Object/NewRockGeo::1.0";
	setAttr ".outputMaterials[0].outputMaterialPath" -type "string" "RockGeo/uvquickshade1/shop_definition/texture_material/v_layered1";
	setAttr -cb on ".houdiniAssetParm_s__tuple0" 1;
	setAttr -cb on ".houdiniAssetParm_s__tuple1" 1;
	setAttr -cb on ".houdiniAssetParm_s__tuple2" 1;
	setAttr -cb on ".houdiniAssetParm_scale" 1;
	setAttr -l on -cb on ".houdiniAssetParm_display" 1;
	setAttr -cb on ".houdiniAssetParm_outputobj" 1;
	setAttr ".houdiniAssetParm_visibleobjects" -type "string" "*";
	setAttr -cb on ".houdiniAssetParm_picking" yes;
	setAttr ".houdiniAssetParm_pickscript" -type "string" "";
	setAttr -cb on ".houdiniAssetParm_caching" yes;
	setAttr -cb on ".houdiniAssetParm_scale2" 1;
	setAttr -cb on ".houdiniAssetParm_freq" 2;
	setAttr -cb on ".houdiniAssetParm_amplitude" 0.25;
	setAttr ".houdiniAssetParm_offset" 4.0055246353149414;
createNode transform -n "pasted__pasted__RockGeo" -p "|group4|pasted__Rock3|pasted__pasted__hunte__dev__NewRockGeo__1_01";
	rename -uid "FB12F644-4CBA-6086-AEA6-59BEB669ED54";
createNode transform -n "pasted__pasted__uvunwrap1_0" -p "|group4|pasted__Rock3";
	rename -uid "079E2419-4324-9C43-F14F-BDBC65843DA2";
	setAttr ".t" -type "double3" -2.570298413161094 1.8904170120238757 -3.8521446796978216 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode mesh -n "pasted__pasted__uvunwrap1_0Shape" -p "|group4|pasted__Rock3|pasted__pasted__uvunwrap1_0";
	rename -uid "4CFB0303-4C51-7718-57FA-B1B605859AD8";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 2 ".uvst";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".uvst[1].uvsn" -type "string" "uv";
	setAttr ".cuvs" -type "string" "uv";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode houdiniAsset -n "hunte__dev__SimpleGround__1_02";
	rename -uid "095239A6-4B63-0F47-C8B5-F7B7342C57EA";
	addAttr -is true -ci true -sn "houdiniAssetParm" -ln "houdiniAssetParm" -at "compound" 
		-nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_stdswitcher3_0__folder" -ln "houdiniAssetParm_stdswitcher3_0__folder" 
		-nn "Transform" -at "compound" -p "houdiniAssetParm" -nc 12;
	addAttr -is true -ci true -sn "houdiniAssetParm_xOrd" -ln "houdiniAssetParm_xOrd" 
		-nn "Transform Order" -min 0 -max 5 -en "Scale Rot Trans:Scale Trans Rot:Rot Scale Trans:Rot Trans Scale:Trans Scale Rot:Trans Rot Scale" 
		-at "enum" -p "houdiniAssetParm_stdswitcher3_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_rOrd" -ln "houdiniAssetParm_rOrd" 
		-nn "Rotate Order" -min 0 -max 5 -en "Rx Ry Rz:Rx Rz Ry:Ry Rx Rz:Ry Rz Rx:Rz Rx Ry:Rz Ry Rx" 
		-at "enum" -p "houdiniAssetParm_stdswitcher3_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_t" -ln "houdiniAssetParm_t" -nn "Translate" 
		-at "compound" -p "houdiniAssetParm_stdswitcher3_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_t__tuple0" -ln "houdiniAssetParm_t__tuple0" 
		-nn "Translate 0" -at "float" -p "houdiniAssetParm_t";
	addAttr -is true -ci true -sn "houdiniAssetParm_t__tuple1" -ln "houdiniAssetParm_t__tuple1" 
		-nn "Translate 1" -at "float" -p "houdiniAssetParm_t";
	addAttr -is true -ci true -sn "houdiniAssetParm_t__tuple2" -ln "houdiniAssetParm_t__tuple2" 
		-nn "Translate 2" -at "float" -p "houdiniAssetParm_t";
	addAttr -is true -ci true -sn "houdiniAssetParm_r" -ln "houdiniAssetParm_r" -nn "Rotate" 
		-at "compound" -p "houdiniAssetParm_stdswitcher3_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_r__tuple0" -ln "houdiniAssetParm_r__tuple0" 
		-nn "Rotate 0" -at "float" -p "houdiniAssetParm_r";
	addAttr -is true -ci true -sn "houdiniAssetParm_r__tuple1" -ln "houdiniAssetParm_r__tuple1" 
		-nn "Rotate 1" -at "float" -p "houdiniAssetParm_r";
	addAttr -is true -ci true -sn "houdiniAssetParm_r__tuple2" -ln "houdiniAssetParm_r__tuple2" 
		-nn "Rotate 2" -at "float" -p "houdiniAssetParm_r";
	addAttr -is true -ci true -sn "houdiniAssetParm_s" -ln "houdiniAssetParm_s" -nn "Scale" 
		-at "compound" -p "houdiniAssetParm_stdswitcher3_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_s__tuple0" -ln "houdiniAssetParm_s__tuple0" 
		-nn "Scale 0" -at "float" -p "houdiniAssetParm_s";
	addAttr -is true -ci true -sn "houdiniAssetParm_s__tuple1" -ln "houdiniAssetParm_s__tuple1" 
		-nn "Scale 1" -at "float" -p "houdiniAssetParm_s";
	addAttr -is true -ci true -sn "houdiniAssetParm_s__tuple2" -ln "houdiniAssetParm_s__tuple2" 
		-nn "Scale 2" -at "float" -p "houdiniAssetParm_s";
	addAttr -is true -ci true -sn "houdiniAssetParm_p" -ln "houdiniAssetParm_p" -nn "Pivot Translate" 
		-at "compound" -p "houdiniAssetParm_stdswitcher3_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_p__tuple0" -ln "houdiniAssetParm_p__tuple0" 
		-nn "Pivot Translate 0" -at "float" -p "houdiniAssetParm_p";
	addAttr -is true -ci true -sn "houdiniAssetParm_p__tuple1" -ln "houdiniAssetParm_p__tuple1" 
		-nn "Pivot Translate 1" -at "float" -p "houdiniAssetParm_p";
	addAttr -is true -ci true -sn "houdiniAssetParm_p__tuple2" -ln "houdiniAssetParm_p__tuple2" 
		-nn "Pivot Translate 2" -at "float" -p "houdiniAssetParm_p";
	addAttr -is true -ci true -sn "houdiniAssetParm_pr" -ln "houdiniAssetParm_pr" -nn "Pivot Rotate" 
		-at "compound" -p "houdiniAssetParm_stdswitcher3_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_pr__tuple0" -ln "houdiniAssetParm_pr__tuple0" 
		-nn "Pivot Rotate 0" -at "float" -p "houdiniAssetParm_pr";
	addAttr -is true -ci true -sn "houdiniAssetParm_pr__tuple1" -ln "houdiniAssetParm_pr__tuple1" 
		-nn "Pivot Rotate 1" -at "float" -p "houdiniAssetParm_pr";
	addAttr -is true -ci true -sn "houdiniAssetParm_pr__tuple2" -ln "houdiniAssetParm_pr__tuple2" 
		-nn "Pivot Rotate 2" -at "float" -p "houdiniAssetParm_pr";
	addAttr -is true -ci true -sn "houdiniAssetParm_scale" -ln "houdiniAssetParm_scale" 
		-nn "Uniform Scale" -at "float" -p "houdiniAssetParm_stdswitcher3_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_pre_xform" -ln "houdiniAssetParm_pre_xform" 
		-nn "Modify Pre-Transform" -min 0 -max 6 -en "Modify Pre-Transform:Clean Transform:Clean Translates:Clean Rotates:Clean Scales:Extract Pre-transform:Reset Pre-transform" 
		-at "enum" -p "houdiniAssetParm_stdswitcher3_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_keeppos" -ln "houdiniAssetParm_keeppos" 
		-nn "Keep Position When Parenting" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher3_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_childcomp" -ln "houdiniAssetParm_childcomp" 
		-nn "Child Compensation" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher3_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_constraints_on" -ln "houdiniAssetParm_constraints_on" 
		-nn "Enable Constraints" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher3_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_stdswitcher3_1__folder" -ln "houdiniAssetParm_stdswitcher3_1__folder" 
		-nn "Subnet" -at "compound" -p "houdiniAssetParm" -nc 7;
	addAttr -is true -ci true -sn "houdiniAssetParm_tdisplay" -ln "houdiniAssetParm_tdisplay" 
		-nn "Display" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher3_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_display" -ln "houdiniAssetParm_display" 
		-nn "Display" -min 0 -max 1 -smn 0 -smx 1 -at "long" -p "houdiniAssetParm_stdswitcher3_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_outputobj" -ln "houdiniAssetParm_outputobj" 
		-nn "Output Transform" -min 0 -max 6 -en "No Object:Input Object 1:Input Object 2:Input Object 3:Input Object 4:_separator_:geo1" 
		-at "enum" -p "houdiniAssetParm_stdswitcher3_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_visibleobjects" -ln "houdiniAssetParm_visibleobjects" 
		-nn "Visible Children" -dt "string" -p "houdiniAssetParm_stdswitcher3_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_picking" -ln "houdiniAssetParm_picking" 
		-nn "Viewport Selecting Enabled" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher3_1__folder";
	addAttr -is true -ci true -uaf -sn "houdiniAssetParm_pickscript" -ln "houdiniAssetParm_pickscript" 
		-nn "Select Script" -ct "hapiParmFile_read" -dt "string" -p "houdiniAssetParm_stdswitcher3_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_caching" -ln "houdiniAssetParm_caching" 
		-nn "Cache Object Transform" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher3_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_Bumpiness" -ln "houdiniAssetParm_Bumpiness" 
		-nn "Amplitude" -min 0 -smn 0 -smx 10 -at "float" -p "houdiniAssetParm";
	setAttr ".s" -type "double3" 5.9806026450511247 1 5.9806026450511247 ;
	setAttr ".otlFilePath" -type "string" "C:/Users/hunte/Documents/houdini19.5/otls/object_hunte.dev.SimpleGround.1.0.hdanc";
	setAttr ".assetName" -type "string" "hunte::dev::Object/SimpleGround::1.0";
	setAttr ".outputMaterials[0].outputMaterialPath" -type "string" "geo1/uvquickshade1/shop_definition/texture_material/v_layered1";
	setAttr -cb on ".houdiniAssetParm_s__tuple0" 1;
	setAttr -cb on ".houdiniAssetParm_s__tuple1" 1;
	setAttr -cb on ".houdiniAssetParm_s__tuple2" 1;
	setAttr -cb on ".houdiniAssetParm_scale" 1;
	setAttr -l on -cb on ".houdiniAssetParm_display" 1;
	setAttr -cb on ".houdiniAssetParm_outputobj" 1;
	setAttr ".houdiniAssetParm_visibleobjects" -type "string" "*";
	setAttr -cb on ".houdiniAssetParm_picking" yes;
	setAttr ".houdiniAssetParm_pickscript" -type "string" "";
	setAttr -cb on ".houdiniAssetParm_caching" yes;
	setAttr -cb on ".houdiniAssetParm_Bumpiness" 0.090000003576278687;
createNode transform -n "geo1" -p "hunte__dev__SimpleGround__1_02";
	rename -uid "4BD16F97-4B2D-F67F-B39E-D08946F3EBBF";
createNode transform -n "uvquickshade1_0" -p "|hunte__dev__SimpleGround__1_02|geo1";
	rename -uid "EA81FB00-46EC-B7F6-1671-20A7319FBD97";
	setAttr ".t" -type "double3" -2.1787123529235721 0 -2.970197060107586e-16 ;
createNode mesh -n "uvquickshade1_0Shape" -p "uvquickshade1_0";
	rename -uid "507631B3-4245-D452-F4BE-4DB075A75047";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 2 ".uvst";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".uvst[1].uvsn" -type "string" "uv";
	setAttr ".cuvs" -type "string" "uv";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "camera1";
	rename -uid "7B656951-428E-1F0B-C727-3A926A934030";
	setAttr ".t" -type "double3" 32.222777260670107 8.2415986561653991 1.1059358092164491 ;
	setAttr ".r" -type "double3" -6.8872764946191349 89.999999999999972 0 ;
createNode camera -n "cameraShape1" -p "camera1";
	rename -uid "154D55AA-4FF5-FA37-0054-77A45174E2D8";
	setAttr -k off ".v";
	setAttr ".cap" -type "double2" 1.41732 0.94488 ;
	setAttr ".ff" 0;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "camera1";
	setAttr ".den" -type "string" "camera1_depth";
	setAttr ".man" -type "string" "camera1_mask";
createNode transform -n "directionalLight3";
	rename -uid "9B4A3CF7-4B6D-C2AA-A912-36B061824643";
	setAttr ".t" -type "double3" 0 17.880160342372527 0 ;
	setAttr ".r" -type "double3" -90.32372697126749 0 0 ;
createNode directionalLight -n "directionalLightShape3" -p "directionalLight3";
	rename -uid "5DE23AF8-4346-E458-BB0D-04A1AB231850";
	setAttr -k off ".v";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "720D236B-4C2D-7CCA-972F-7E860EF3DA1E";
	setAttr -s 34 ".lnk";
	setAttr -s 34 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "D9FD8DC3-4485-D129-B68C-29B11CD231BB";
	setAttr ".bsdt[0].bscd" -type "Int32Array" 3 1 0 1 ;
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "25383EAD-4E16-B9C7-4AA0-5EBE4F7E887C";
createNode displayLayerManager -n "layerManager";
	rename -uid "152A436A-4BD8-1F56-0E35-B7BA069E7AA2";
	setAttr -s 2 ".dli[1]"  1;
	setAttr -s 2 ".dli";
createNode displayLayer -n "defaultLayer";
	rename -uid "D9FC099B-4C94-1D81-9449-318F603795A2";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "DCD2DE5D-48D6-271C-A04D-FD9146F34DB3";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "A6C360DC-4E96-A1FC-A786-3CA0DD2F412D";
	setAttr ".g" yes;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "0D9476D1-4949-3A02-B72B-2D841A05367E";
	addAttr -ci true -sn "ARV_options" -ln "ARV_options" -dt "string";
	setAttr ".rndrdvc" 1;
	setAttr ".manualdevs" yes;
	setAttr ".rndev[0]"  1;
	setAttr ".version" -type "string" "5.3.0";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "C5512C2B-4272-00AC-6F8B-A9B4F8A71833";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "DFCF3792-4510-260B-7786-B4B859B4F1C4";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "3A174A47-4469-C432-4200-9F9E4EDCBC82";
	setAttr ".output_mode" 0;
	setAttr ".ai_translator" -type "string" "maya";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "8D656305-440D-30B9-77A1-539C90FA7C79";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n"
		+ "            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n"
		+ "            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n"
		+ "            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n"
		+ "            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n"
		+ "            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1319\n            -height 517\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n"
		+ "            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n"
		+ "            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n"
		+ "            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n"
		+ "            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n"
		+ "                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n"
		+ "                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -isSet 0\n                -isSetMember 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n"
		+ "                -renderFilterVisible 0\n                -selectionOrder \"display\" \n                -expandAttribute 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -outliner \"graphEditor1OutlineEd\" \n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n"
		+ "                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n"
		+ "                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n"
		+ "                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n"
		+ "                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n"
		+ "                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n"
		+ "                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"|persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n"
		+ "                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n"
		+ "                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n"
		+ "                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -bluePencil 1\n                -greasePencils 0\n                -excludeObjectPreset \"All\" \n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n"
		+ "                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1319\\n    -height 517\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1319\\n    -height 517\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "F5E32F60-4E0D-EB7A-0DB5-0BBAC1BEF0C5";
	setAttr ".b" -type "string" "playbackOptions -min -1 -max 60 -ast -1 -aet 250 ";
	setAttr ".st" 6;
createNode phong -n "v_layered1";
	rename -uid "40CDDB32-4BEB-4A90-F24C-8C845019F67B";
createNode shadingEngine -n "v_layered1SG";
	rename -uid "A680151D-4F2F-2EF2-D717-D4BD656EF1C3";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "118CEEBA-496B-6240-3ADB-77BA98F9E092";
createNode file -n "file1";
	rename -uid "03A6D1E0-4803-9165-D9CE-5D9676832229";
	setAttr ".cs" -type "string" "sRGB";
createNode groupId -n "groupId2";
	rename -uid "29048C06-4391-3C63-02E0-5E82A408082D";
	setAttr ".ihi" 0;
createNode substanceNode -n "substanceNode1";
	rename -uid "4162B59F-404A-2008-AAD2-6496A4EA01F8";
	addAttr -r false -ci true -h true -k true -sn "input_randomseed" -ln "input_randomseed" 
		-nn "$randomseed" -ct "substance_input" -smn 0 -smx 2147483647 -at "long";
	addAttr -r false -ci true -uac -h true -k true -sn "input_moon_color" -ln "input_moon_color" 
		-nn "Moon Color" -ct "substance_input" -at "float3" -nc 3;
	addAttr -r false -ci true -h true -k true -sn "input_moon_colorr" -ln "input_moon_colorR" 
		-nn "Moon Color" -dv 0.7098039984703064 -smn 0 -smx 0 -at "float" -p "input_moon_color";
	addAttr -r false -ci true -h true -k true -sn "input_moon_colorg" -ln "input_moon_colorG" 
		-nn "Moon Color" -dv 0.7098039984703064 -smn 0 -smx 0 -at "float" -p "input_moon_color";
	addAttr -r false -ci true -h true -k true -sn "input_moon_colorb" -ln "input_moon_colorB" 
		-nn "Moon Color" -dv 0.7098039984703064 -smn 0 -smx 0 -at "float" -p "input_moon_color";
	addAttr -r false -ci true -h true -k true -sn "input_moon_roughness" -ln "input_moon_roughness" 
		-nn "Moon Roughness" -ct "substance_input" -dv 0.6600000262260437 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_crater_density" -ln "input_crater_density" 
		-nn "Crater Density" -ct "substance_input" -dv 1 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_crater_size" -ln "input_crater_size" 
		-nn "Crater Size" -ct "substance_input" -dv 1 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_luminosity" -ln "input_luminosity" 
		-nn "Luminosity" -ct "substance_input" -dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_contrast" -ln "input_contrast" 
		-nn "Contrast" -ct "substance_input" -smn -1 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_hue_shift" -ln "input_hue_shift" 
		-nn "Hue Shift" -ct "substance_input" -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_saturation" -ln "input_saturation" 
		-nn "Saturation" -ct "substance_input" -dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_normal_intensity" -ln "input_normal_intensity" 
		-nn "Normal Intensity" -ct "substance_input" -dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_normal_format" -ln "input_normal_format" 
		-nn "Normal Format" -ct "substance_input" -smn 0 -smx 0 -at "long";
	addAttr -r false -ci true -h true -k true -sn "input_height_range" -ln "input_height_range" 
		-nn "Height Range" -ct "substance_input" -dv 1 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_height_position" -ln "input_height_position" 
		-nn "Height Position" -ct "substance_input" -dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_ambientocclusion_intensity" 
		-ln "input_ambientocclusion_intensity" -nn "Ambient Occlusion Intensity" -ct "substance_input" 
		-dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -ci true -h true -sn "output_diffuse" -ln "output_diffuse" -ct "substance_output" 
		-dt "string";
	addAttr -ci true -h true -sn "output_metallic" -ln "output_metallic" -ct "substance_output" 
		-dt "string";
	addAttr -ci true -h true -sn "output_roughness" -ln "output_roughness" -ct "substance_output" 
		-dt "string";
	addAttr -ci true -h true -sn "output_basecolor" -ln "output_basecolor" -ct "substance_output" 
		-dt "string";
	addAttr -ci true -h true -sn "output_ambientocclusion" -ln "output_ambientocclusion" 
		-ct "substance_output" -dt "string";
	addAttr -ci true -h true -sn "output_normal" -ln "output_normal" -ct "substance_output" 
		-dt "string";
	addAttr -ci true -h true -sn "output_height" -ln "output_height" -ct "substance_output" 
		-dt "string";
	addAttr -r false -ci true -h true -k true -sn "input_channel_diffuse" -ln "input_channel_diffuse" 
		-nn "Diffuse" -ct "substance_input" -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_basecolor" -ln "input_channel_basecolor" 
		-nn "Base Color" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_normal" -ln "input_channel_normal" 
		-nn "Normal" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_specular" -ln "input_channel_specular" 
		-nn "Specular" -ct "substance_input" -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_glossiness" -ln "input_channel_glossiness" 
		-nn "Glossiness" -ct "substance_input" -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_roughness" -ln "input_channel_roughness" 
		-nn "Roughness" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_metallic" -ln "input_channel_metallic" 
		-nn "Metallic" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_height" -ln "input_channel_height" 
		-nn "Height" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_ambientocclusion" -ln "input_channel_ambientocclusion" 
		-nn "Ambient Occlusion" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	setAttr ".sbs" -type "string" "C:/Users/hunte/Documents/Education/Fall 2023/Substance surfaces/moon_surface.sbsar";
	setAttr ".ctd" yes;
	setAttr ".wkfl" -type "string" "Arnold";
	setAttr ".storedHeight" 9;
	setAttr ".pst" -type "stringArray" 1 "<sbspresets formatversion=\"1.1\" count=\"3\" >\n <sbspreset pkgurl=\"pkg://moon_surface\" label=\"Sulfer Rich Moon Surface\" >\n  <presetinput identifier=\"moon_color\" uid=\"931447336\" type=\"2\" value=\"0.875,0.812659,0.466667\" />\n  <presetinput identifier=\"moon_roughness\" uid=\"939161379\" type=\"0\" value=\"0.66\" />\n  <presetinput identifier=\"crater_density\" uid=\"931451369\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"crater_size\" uid=\"931451150\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"channel_diffuse\" uid=\"744089660\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_basecolor\" uid=\"586469398\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_normal\" uid=\"586469397\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_specular\" uid=\"744089603\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_glossiness\" uid=\"744089602\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_roughness\" uid=\"586469401\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_metallic\" uid=\"586469400\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_height\" uid=\"586469406\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_ambientocclusion\" uid=\"689414011\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"luminosity\" uid=\"1540245785\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"contrast\" uid=\"608927803\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"hue_shift\" uid=\"1540245867\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"saturation\" uid=\"1540245772\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_intensity\" uid=\"1540339320\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_format\" uid=\"586466101\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"height_range\" uid=\"602913369\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"height_position\" uid=\"602913320\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"ambientocclusion_intensity\" uid=\"700229330\" type=\"0\" value=\"0.5\" />\n </sbspreset>\n <sbspreset pkgurl=\"pkg://moon_surface\" label=\"Ice Moon Surface\" >\n  <presetinput identifier=\"moon_color\" uid=\"931447336\" type=\"2\" value=\"0.4,0.454902,0.552941\" />\n  <presetinput identifier=\"moon_roughness\" uid=\"939161379\" type=\"0\" value=\"0.59\" />\n  <presetinput identifier=\"crater_density\" uid=\"931451369\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"crater_size\" uid=\"931451150\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"channel_diffuse\" uid=\"744089660\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_basecolor\" uid=\"586469398\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_normal\" uid=\"586469397\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_specular\" uid=\"744089603\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_glossiness\" uid=\"744089602\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_roughness\" uid=\"586469401\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_metallic\" uid=\"586469400\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_height\" uid=\"586469406\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_ambientocclusion\" uid=\"689414011\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"luminosity\" uid=\"1540245785\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"contrast\" uid=\"608927803\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"hue_shift\" uid=\"1540245867\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"saturation\" uid=\"1540245772\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_intensity\" uid=\"1540339320\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_format\" uid=\"586466101\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"height_range\" uid=\"602913369\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"height_position\" uid=\"602913320\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"ambientocclusion_intensity\" uid=\"700229330\" type=\"0\" value=\"0.5\" />\n </sbspreset>\n <sbspreset pkgurl=\"pkg://moon_surface\" label=\"Iron Rich Moon Surface\" >\n  <presetinput identifier=\"moon_color\" uid=\"931447336\" type=\"2\" value=\"0.833333,0.700647,0.565359\" />\n  <presetinput identifier=\"moon_roughness\" uid=\"939161379\" type=\"0\" value=\"0.59\" />\n  <presetinput identifier=\"crater_density\" uid=\"931451369\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"crater_size\" uid=\"931451150\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"channel_diffuse\" uid=\"744089660\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_basecolor\" uid=\"586469398\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_normal\" uid=\"586469397\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_specular\" uid=\"744089603\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_glossiness\" uid=\"744089602\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_roughness\" uid=\"586469401\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_metallic\" uid=\"586469400\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_height\" uid=\"586469406\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_ambientocclusion\" uid=\"689414011\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"luminosity\" uid=\"1540245785\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"contrast\" uid=\"608927803\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"hue_shift\" uid=\"1540245867\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"saturation\" uid=\"1540245772\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_intensity\" uid=\"1540339320\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_format\" uid=\"586466101\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"height_range\" uid=\"602913369\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"height_position\" uid=\"602913320\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"ambientocclusion_intensity\" uid=\"700229330\" type=\"0\" value=\"0.5\" />\n </sbspreset>\n</sbspresets>\n"  ;
createNode place2dTexture -n "place2dTexture1";
	rename -uid "D64DF750-4C12-1F4F-C382-ABB61889F5F0";
createNode substanceOutputNode -n "Moon_Surface_diffuse";
	rename -uid "53FE265A-4BD6-45A9-1CC5-F0BCBBA5D51A";
	setAttr ".cpth" -type "string" "C:/Users/hunte/Documents/maya\\2024\\substance/baked_images/Moon_Surface_diffuse.exr";
createNode file -n "file2";
	rename -uid "9264A827-43C8-CE9B-1F6B-6F8498F3B1F9";
	setAttr ".cs" -type "string" "sRGB";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Moon_Surface_metallic";
	rename -uid "1404BF37-46C4-455C-68D5-7489221A5862";
	setAttr ".cpth" -type "string" "C:/Users/hunte/Documents/maya\\2024\\substance/baked_images/Moon_Surface_metallic.png";
createNode file -n "file3";
	rename -uid "7FF0D235-41AD-D35C-6717-9F8D78FFACA4";
	setAttr ".ail" yes;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Moon_Surface_roughness";
	rename -uid "01014AD2-4B17-BE10-9D99-F9946CB207A0";
	setAttr ".cpth" -type "string" "C:/Users/hunte/Documents/maya\\2024\\substance/baked_images/Moon_Surface_roughness.exr";
createNode file -n "file4";
	rename -uid "256EDB00-4F04-DFF5-EDF0-F291CDB7E5B6";
	setAttr ".ail" yes;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Moon_Surface_basecolor";
	rename -uid "45A5FFC8-4D58-57C4-491D-BEB089C63640";
	setAttr ".cpth" -type "string" "C:/Users/hunte/Documents/maya\\2024\\substance/baked_images/Moon_Surface_basecolor.exr";
createNode file -n "file5";
	rename -uid "E37CD323-4776-DFE1-6E8E-46A63015D510";
	setAttr ".cs" -type "string" "sRGB";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Moon_Surface_ambientocclusion";
	rename -uid "32D3551A-4A01-8887-9649-A7AA03BC0AFB";
	setAttr ".cpth" -type "string" "C:/Users/hunte/Documents/maya\\2024\\substance/baked_images/Moon_Surface_ambientocclusion.exr";
createNode file -n "file6";
	rename -uid "9E4812CF-4248-3959-C5FA-16B59A84CA37";
	setAttr ".ail" yes;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Moon_Surface_normal";
	rename -uid "D9456B9B-408D-57D4-38F5-8592E8F1BC8C";
	setAttr ".cpth" -type "string" "C:/Users/hunte/Documents/maya\\2024\\substance/baked_images/Moon_Surface_normal.exr";
createNode file -n "file7";
	rename -uid "36D717E9-4A64-8246-DACB-289BC096F359";
	setAttr ".ail" yes;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Moon_Surface_height";
	rename -uid "954A7B4A-489C-E28E-8459-CDA74BB3B392";
	setAttr ".cpth" -type "string" "C:/Users/hunte/Documents/maya\\2024\\substance/baked_images/Moon_Surface_height.exr";
createNode file -n "file8";
	rename -uid "0B2D3DB7-4DDF-76B8-9A34-8FA66B57216F";
	setAttr ".ail" yes;
	setAttr ".ao" -0.5;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode multiplyDivide -n "multiplyDivide1";
	rename -uid "76D6A7B0-44DB-B4F2-0AAC-59BCCE4C91D8";
createNode aiStandardSurface -n "MoonSurface";
	rename -uid "C106F73D-4EFD-68DA-70B9-7787A0CAEBAC";
	setAttr ".emission" 1;
	setAttr ".emission_color" -type "float3" 0 0 0 ;
createNode shadingEngine -n "set1";
	rename -uid "BBC7FDD0-4E26-70C6-54F9-34ADB6B0834C";
	setAttr ".ihi" 0;
	setAttr -s 4 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "3DA01C5C-4CF0-0DB7-43AE-6AB0CC93ED21";
createNode bump2d -n "bump2d1";
	rename -uid "E401BE8A-4483-C617-9E3F-04807637B636";
	setAttr ".bi" 1;
	setAttr ".vc1" -type "float3" 0 9.9999997e-06 0 ;
	setAttr ".vc2" -type "float3" 9.9999997e-06 9.9999997e-06 0 ;
createNode displacementShader -n "displacementShader1";
	rename -uid "A75EC7F8-4683-870E-BA20-82818D6C041D";
createNode phong -n "v_layered2";
	rename -uid "1276B3EE-44AB-AEC8-392C-78B58097F7D5";
createNode shadingEngine -n "v_layered2SG";
	rename -uid "680E85E8-46E6-44D4-91B2-A89714B131B5";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
	rename -uid "3FD0C4FA-4152-526A-7329-F99E1108D0A3";
createNode file -n "file9";
	rename -uid "80EBD972-4687-F6C2-56BB-1698CCD94999";
	setAttr ".cs" -type "string" "sRGB";
createNode groupId -n "groupId4";
	rename -uid "B25F19E0-4E05-7AF4-B796-4F83349CC977";
	setAttr ".ihi" 0;
createNode substanceNode -n "CementSkin";
	rename -uid "DC4A92A6-4BDD-8E27-ADBB-22A625AE6FE7";
	addAttr -r false -ci true -h true -k true -sn "input_randomseed" -ln "input_randomseed" 
		-nn "$randomseed" -ct "substance_input" -smn 0 -smx 2147483647 -at "long";
	addAttr -r false -ci true -uac -h true -k true -sn "input_color_1" -ln "input_color_1" 
		-nn "Color 1" -ct "substance_input" -at "float3" -nc 3;
	addAttr -r false -ci true -h true -k true -sn "input_color_1r" -ln "input_color_1R" 
		-nn "Color 1" -dv 0.47415700554847717 -smn 0 -smx 0 -at "float" -p "input_color_1";
	addAttr -r false -ci true -h true -k true -sn "input_color_1g" -ln "input_color_1G" 
		-nn "Color 1" -dv 0.45013201236724854 -smn 0 -smx 0 -at "float" -p "input_color_1";
	addAttr -r false -ci true -h true -k true -sn "input_color_1b" -ln "input_color_1B" 
		-nn "Color 1" -dv 0.39371699094772339 -smn 0 -smx 0 -at "float" -p "input_color_1";
	addAttr -r false -ci true -h true -k true -sn "input_color_1_weight" -ln "input_color_1_weight" 
		-nn "Color 1 Weight" -ct "substance_input" -dv 1 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_roughness_1" -ln "input_roughness_1" 
		-nn "Roughness 1" -ct "substance_input" -dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_metallic_1" -ln "input_metallic_1" 
		-nn "Metallic 1" -ct "substance_input" -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_height_range_1" -ln "input_height_range_1" 
		-nn "Height Range 1" -ct "substance_input" -dv 1 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_height_position_1" -ln "input_height_position_1" 
		-nn "Height Position 1" -ct "substance_input" -dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -uac -h true -k true -sn "input_color_2" -ln "input_color_2" 
		-nn "Color 2" -ct "substance_input" -at "float3" -nc 3;
	addAttr -r false -ci true -h true -k true -sn "input_color_2r" -ln "input_color_2R" 
		-nn "Color 2" -dv 0.25995099544525146 -smn 0 -smx 0 -at "float" -p "input_color_2";
	addAttr -r false -ci true -h true -k true -sn "input_color_2g" -ln "input_color_2G" 
		-nn "Color 2" -dv 0.24019800126552582 -smn 0 -smx 0 -at "float" -p "input_color_2";
	addAttr -r false -ci true -h true -k true -sn "input_color_2b" -ln "input_color_2B" 
		-nn "Color 2" -dv 0.21403299272060394 -smn 0 -smx 0 -at "float" -p "input_color_2";
	addAttr -r false -ci true -h true -k true -sn "input_color_2_weight" -ln "input_color_2_weight" 
		-nn "Color 2 Weight" -ct "substance_input" -dv 1 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_roughness_2" -ln "input_roughness_2" 
		-nn "Roughness 2" -ct "substance_input" -dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_metallic_2" -ln "input_metallic_2" 
		-nn "Metallic 2" -ct "substance_input" -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_height_range_2" -ln "input_height_range_2" 
		-nn "Height Range 2" -ct "substance_input" -dv 1 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_height_position_2" -ln "input_height_position_2" 
		-nn "Height Position 2" -ct "substance_input" -dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_luminosity" -ln "input_luminosity" 
		-nn "Luminosity" -ct "substance_input" -dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_contrast" -ln "input_contrast" 
		-nn "Contrast" -ct "substance_input" -smn -1 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_hue_shift" -ln "input_hue_shift" 
		-nn "Hue Shift" -ct "substance_input" -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_saturation" -ln "input_saturation" 
		-nn "Saturation" -ct "substance_input" -dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_normal_intensity" -ln "input_normal_intensity" 
		-nn "Normal Intensity" -ct "substance_input" -dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_normal_format" -ln "input_normal_format" 
		-nn "Normal Format" -ct "substance_input" -smn 0 -smx 0 -at "long";
	addAttr -r false -ci true -h true -k true -sn "input_height_range" -ln "input_height_range" 
		-nn "Height Range" -ct "substance_input" -dv 1 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_height_position" -ln "input_height_position" 
		-nn "Height Position" -ct "substance_input" -dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_ambientocclusion_intensity" 
		-ln "input_ambientocclusion_intensity" -nn "Ambient Occlusion Intensity" -ct "substance_input" 
		-dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -ci true -h true -sn "output_diffuse" -ln "output_diffuse" -ct "substance_output" 
		-dt "string";
	addAttr -ci true -h true -sn "output_basecolor" -ln "output_basecolor" -ct "substance_output" 
		-dt "string";
	addAttr -ci true -h true -sn "output_normal" -ln "output_normal" -ct "substance_output" 
		-dt "string";
	addAttr -ci true -h true -sn "output_roughness" -ln "output_roughness" -ct "substance_output" 
		-dt "string";
	addAttr -ci true -h true -sn "output_height" -ln "output_height" -ct "substance_output" 
		-dt "string";
	addAttr -ci true -h true -sn "output_metallic" -ln "output_metallic" -ct "substance_output" 
		-dt "string";
	addAttr -ci true -h true -sn "output_specularlevel" -ln "output_specularlevel" -ct "substance_output" 
		-dt "string";
	addAttr -ci true -h true -sn "output_ambientocclusion" -ln "output_ambientocclusion" 
		-ct "substance_output" -dt "string";
	addAttr -r false -ci true -h true -k true -sn "input_channel_diffuse" -ln "input_channel_diffuse" 
		-nn "Diffuse" -ct "substance_input" -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_basecolor" -ln "input_channel_basecolor" 
		-nn "Base Color" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_normal" -ln "input_channel_normal" 
		-nn "Normal" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_specular" -ln "input_channel_specular" 
		-nn "Specular" -ct "substance_input" -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_glossiness" -ln "input_channel_glossiness" 
		-nn "Glossiness" -ct "substance_input" -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_roughness" -ln "input_channel_roughness" 
		-nn "Roughness" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_metallic" -ln "input_channel_metallic" 
		-nn "Metallic" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_specularlevel" -ln "input_channel_specularlevel" 
		-nn "Specular Level" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_height" -ln "input_channel_height" 
		-nn "Height" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_ambientocclusion" -ln "input_channel_ambientocclusion" 
		-nn "Ambient Occlusion" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	setAttr ".sbs" -type "string" "C:/Users/hunte/Documents/Education/Fall 2023/Substance surfaces/heavy_cracked_concrete_sidewalk_01.sbsar";
	setAttr ".ctd" yes;
	setAttr ".wkfl" -type "string" "Arnold";
	setAttr ".storedHeight" 9;
	setAttr ".pst" -type "stringArray" 1 "<sbspresets formatversion=\"1.1\" count=\"3\" >\n <sbspreset pkgurl=\"pkg://heavy_cracked_concrete_sidewalk_01\" label=\"Wet Cracked Sidewalk\" >\n  <presetinput identifier=\"color_1\" uid=\"1987461446\" type=\"2\" value=\"0.33908,0.321905,0.281576\" />\n  <presetinput identifier=\"color_1_weight\" uid=\"1761118681\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"roughness_1\" uid=\"1987461498\" type=\"0\" value=\"0.19\" />\n  <presetinput identifier=\"metallic_1\" uid=\"1987461493\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"height_range_1\" uid=\"1802715915\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"height_position_1\" uid=\"1802722442\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"color_2\" uid=\"1980450723\" type=\"2\" value=\"0.259951,0.240198,0.214033\" />\n  <presetinput identifier=\"color_2_weight\" uid=\"1761118096\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"roughness_2\" uid=\"1980455780\" type=\"0\" value=\"0.43\" />\n  <presetinput identifier=\"metallic_2\" uid=\"1980455693\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"height_range_2\" uid=\"1802721285\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"height_position_2\" uid=\"1802720645\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"channel_diffuse\" uid=\"1918225426\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_basecolor\" uid=\"2096690232\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_normal\" uid=\"2096690235\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_specular\" uid=\"1918225453\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_glossiness\" uid=\"1918225452\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_roughness\" uid=\"2096690231\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_metallic\" uid=\"2096690230\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_specularlevel\" uid=\"1980381759\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_height\" uid=\"2096690224\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_ambientocclusion\" uid=\"1980334292\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"luminosity\" uid=\"96628023\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"contrast\" uid=\"2051515413\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"hue_shift\" uid=\"96628037\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"saturation\" uid=\"96628002\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_intensity\" uid=\"96703062\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_format\" uid=\"2096686875\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"height_range\" uid=\"2112069239\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"height_position\" uid=\"2112069126\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"ambientocclusion_intensity\" uid=\"1980345861\" type=\"0\" value=\"0.5\" />\n </sbspreset>\n <sbspreset pkgurl=\"pkg://heavy_cracked_concrete_sidewalk_01\" label=\"Dusty Sidewalk\" >\n  <presetinput identifier=\"color_1\" uid=\"1987461446\" type=\"2\" value=\"0.574713,0.545602,0.477247\" />\n  <presetinput identifier=\"color_1_weight\" uid=\"1761118681\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"roughness_1\" uid=\"1987461498\" type=\"0\" value=\"0.53\" />\n  <presetinput identifier=\"metallic_1\" uid=\"1987461493\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"height_range_1\" uid=\"1802715915\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"height_position_1\" uid=\"1802722442\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"color_2\" uid=\"1980450723\" type=\"2\" value=\"0.494253,0.435815,0.358406\" />\n  <presetinput identifier=\"color_2_weight\" uid=\"1761118096\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"roughness_2\" uid=\"1980455780\" type=\"0\" value=\"0.77\" />\n  <presetinput identifier=\"metallic_2\" uid=\"1980455693\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"height_range_2\" uid=\"1802721285\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"height_position_2\" uid=\"1802720645\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"channel_diffuse\" uid=\"1918225426\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_basecolor\" uid=\"2096690232\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_normal\" uid=\"2096690235\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_specular\" uid=\"1918225453\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_glossiness\" uid=\"1918225452\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_roughness\" uid=\"2096690231\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_metallic\" uid=\"2096690230\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_specularlevel\" uid=\"1980381759\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_height\" uid=\"2096690224\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_ambientocclusion\" uid=\"1980334292\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"luminosity\" uid=\"96628023\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"contrast\" uid=\"2051515413\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"hue_shift\" uid=\"96628037\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"saturation\" uid=\"96628002\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_intensity\" uid=\"96703062\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_format\" uid=\"2096686875\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"height_range\" uid=\"2112069239\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"height_position\" uid=\"2112069126\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"ambientocclusion_intensity\" uid=\"1980345861\" type=\"0\" value=\"0.5\" />\n </sbspreset>\n <sbspreset pkgurl=\"pkg://heavy_cracked_concrete_sidewalk_01\" label=\"Dry Damaged Sidewalk\" >\n  <presetinput identifier=\"color_1\" uid=\"1987461446\" type=\"2\" value=\"0.511494,0.496307,0.460644\" />\n  <presetinput identifier=\"color_1_weight\" uid=\"1761118681\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"roughness_1\" uid=\"1987461498\" type=\"0\" value=\"0.55\" />\n  <presetinput identifier=\"metallic_1\" uid=\"1987461493\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"height_range_1\" uid=\"1802715915\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"height_position_1\" uid=\"1802722442\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"color_2\" uid=\"1980450723\" type=\"2\" value=\"0.488506,0.431976,0.357095\" />\n  <presetinput identifier=\"color_2_weight\" uid=\"1761118096\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"roughness_2\" uid=\"1980455780\" type=\"0\" value=\"0.58\" />\n  <presetinput identifier=\"metallic_2\" uid=\"1980455693\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"height_range_2\" uid=\"1802721285\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"height_position_2\" uid=\"1802720645\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"channel_diffuse\" uid=\"1918225426\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_basecolor\" uid=\"2096690232\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_normal\" uid=\"2096690235\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_specular\" uid=\"1918225453\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_glossiness\" uid=\"1918225452\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_roughness\" uid=\"2096690231\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_metallic\" uid=\"2096690230\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_specularlevel\" uid=\"1980381759\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_height\" uid=\"2096690224\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_ambientocclusion\" uid=\"1980334292\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"luminosity\" uid=\"96628023\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"contrast\" uid=\"2051515413\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"hue_shift\" uid=\"96628037\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"saturation\" uid=\"96628002\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_intensity\" uid=\"96703062\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_format\" uid=\"2096686875\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"height_range\" uid=\"2112069239\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"height_position\" uid=\"2112069126\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"ambientocclusion_intensity\" uid=\"1980345861\" type=\"0\" value=\"0.5\" />\n </sbspreset>\n</sbspresets>\n"  ;
createNode place2dTexture -n "place2dTexture2";
	rename -uid "E220607B-4F12-D02E-83EC-FDB0EC5857AC";
createNode substanceOutputNode -n "Heavy_Cracked_Concrete_Sidewalk_01_diffuse";
	rename -uid "89F70A1E-42A9-7262-DFB7-1B91ACC3E20E";
	setAttr ".cpth" -type "string" "C:/Users/hunte/Documents/maya\\2024\\substance/baked_images/Heavy_Cracked_Concrete_Sidewalk_01_diffuse.exr";
createNode file -n "file10";
	rename -uid "9CE00923-4F3A-8DE0-C179-8BBA22DCE8C6";
	setAttr ".cs" -type "string" "sRGB";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Heavy_Cracked_Concrete_Sidewalk_01_basecolor";
	rename -uid "8B7D0203-4627-45D1-1D61-D8B0EAE9684B";
	setAttr ".cpth" -type "string" "C:/Users/hunte/Documents/maya\\2024\\substance/baked_images/Heavy_Cracked_Concrete_Sidewalk_01_basecolor.png";
createNode file -n "file11";
	rename -uid "EEA77B79-4033-E389-2BF3-8580CAD240FC";
	setAttr ".cs" -type "string" "sRGB";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Heavy_Cracked_Concrete_Sidewalk_01_normal";
	rename -uid "8778F411-4118-FAB9-E2A5-6BAB9DC601AC";
	setAttr ".cpth" -type "string" "C:/Users/hunte/Documents/maya\\2024\\substance/baked_images/Heavy_Cracked_Concrete_Sidewalk_01_normal.exr";
createNode file -n "file12";
	rename -uid "5671B48C-40CC-FA77-8A5C-F68C216E94BF";
	setAttr ".ail" yes;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Heavy_Cracked_Concrete_Sidewalk_01_roughness";
	rename -uid "8B923C09-4880-0F63-16B6-B8BE13E86A8A";
	setAttr ".cpth" -type "string" "C:/Users/hunte/Documents/maya\\2024\\substance/baked_images/Heavy_Cracked_Concrete_Sidewalk_01_roughness.png";
createNode file -n "file13";
	rename -uid "F2D69487-4739-66AA-B82A-668BAD90986A";
	setAttr ".ail" yes;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Heavy_Cracked_Concrete_Sidewalk_01_height";
	rename -uid "50788E7E-41DC-983C-7E98-D3AA1E868048";
	setAttr ".cpth" -type "string" "C:/Users/hunte/Documents/maya\\2024\\substance/baked_images/Heavy_Cracked_Concrete_Sidewalk_01_height.exr";
createNode file -n "file16";
	rename -uid "5DEEE0D3-495A-DF89-1160-E690F21D5401";
	setAttr ".ail" yes;
	setAttr ".ao" -0.5;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Heavy_Cracked_Concrete_Sidewalk_01_metallic";
	rename -uid "BAAC2A25-40DA-55B5-03AF-E7B2EFCE5128";
	setAttr ".cpth" -type "string" "C:/Users/hunte/Documents/maya\\2024\\substance/baked_images/Heavy_Cracked_Concrete_Sidewalk_01_metallic.png";
createNode file -n "file17";
	rename -uid "DDC2C3B4-46FD-D430-E3A3-D6A15D0AD538";
	setAttr ".ail" yes;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Heavy_Cracked_Concrete_Sidewalk_01_specularlevel";
	rename -uid "5F7D2CED-44C7-869B-B631-309C95513E6B";
	setAttr ".cpth" -type "string" "C:/Users/hunte/Documents/maya\\2024\\substance/baked_images/Heavy_Cracked_Concrete_Sidewalk_01_specularlevel.png";
createNode file -n "file18";
	rename -uid "226C7741-45D2-53C2-0807-B084965A82F6";
	setAttr ".ail" yes;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Heavy_Cracked_Concrete_Sidewalk_01_ambientocclusion";
	rename -uid "62AE6C24-4C1A-7589-FC25-EB8F29F45959";
	setAttr ".cpth" -type "string" "C:/Users/hunte/Documents/maya\\2024\\substance/baked_images/Heavy_Cracked_Concrete_Sidewalk_01_ambientocclusion.png";
createNode file -n "file19";
	rename -uid "5CB20FBA-4CE3-1AF6-A5EF-59BB22867CC4";
	setAttr ".ail" yes;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode multiplyDivide -n "multiplyDivide2";
	rename -uid "D42D2D86-4477-57AD-9AAB-618E850D740F";
createNode aiStandardSurface -n "CementSurface";
	rename -uid "76AD7076-4D8E-6D02-0C6E-4DA5017E31AB";
	setAttr ".emission" 1;
	setAttr ".emission_color" -type "float3" 0 0 0 ;
createNode shadingEngine -n "set2";
	rename -uid "B542AF20-40AB-EB19-F533-ABB070DB0965";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo4";
	rename -uid "23518D5F-4D90-DCE1-9EA6-1BBC0CA63FDA";
createNode bump2d -n "bump2d2";
	rename -uid "C951700E-420F-1B01-C50C-C8A23AD39B75";
	setAttr ".bi" 1;
	setAttr ".vc1" -type "float3" 0 9.9999997e-06 0 ;
	setAttr ".vc2" -type "float3" 9.9999997e-06 9.9999997e-06 0 ;
createNode displacementShader -n "displacementShader2";
	rename -uid "0E3D5B7F-44AD-CED4-2AC1-8E927EEA575E";
createNode materialInfo -n "pasted__materialInfo2";
	rename -uid "2C458803-4FB2-1796-568C-5E8E55119A99";
createNode shadingEngine -n "pasted__set1";
	rename -uid "048E0106-4873-B59F-036B-30B247065F8B";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode multiplyDivide -n "pasted__multiplyDivide1";
	rename -uid "016FEA26-4CCD-F3B8-4758-A191A9DDB92D";
createNode file -n "pasted__file5";
	rename -uid "F6F336B4-4242-CCCA-61DB-C79596325B5A";
	setAttr ".cs" -type "string" "sRGB";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "pasted__Moon_Surface_basecolor";
	rename -uid "D18EBCC3-4730-76AB-262B-B6B575AE76A6";
	setAttr ".cpth" -type "string" "C:/Users/hunte/Documents/maya\\2024\\substance/baked_images/pasted__Moon_Surface_basecolor.exr";
createNode substanceNode -n "pasted__substanceNode1";
	rename -uid "2B1607C4-4096-F283-B720-2B83560105F6";
	addAttr -r false -ci true -h true -k true -sn "input_randomseed" -ln "input_randomseed" 
		-nn "$randomseed" -ct "substance_input" -smn 0 -smx 2147483647 -at "long";
	addAttr -r false -ci true -uac -h true -k true -sn "input_moon_color" -ln "input_moon_color" 
		-nn "Moon Color" -ct "substance_input" -at "float3" -nc 3;
	addAttr -r false -ci true -h true -k true -sn "input_moon_colorr" -ln "input_moon_colorR" 
		-nn "Moon Color" -dv 0.7098039984703064 -smn 0 -smx 0 -at "float" -p "input_moon_color";
	addAttr -r false -ci true -h true -k true -sn "input_moon_colorg" -ln "input_moon_colorG" 
		-nn "Moon Color" -dv 0.7098039984703064 -smn 0 -smx 0 -at "float" -p "input_moon_color";
	addAttr -r false -ci true -h true -k true -sn "input_moon_colorb" -ln "input_moon_colorB" 
		-nn "Moon Color" -dv 0.7098039984703064 -smn 0 -smx 0 -at "float" -p "input_moon_color";
	addAttr -r false -ci true -h true -k true -sn "input_moon_roughness" -ln "input_moon_roughness" 
		-nn "Moon Roughness" -ct "substance_input" -dv 0.6600000262260437 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_crater_density" -ln "input_crater_density" 
		-nn "Crater Density" -ct "substance_input" -dv 1 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_crater_size" -ln "input_crater_size" 
		-nn "Crater Size" -ct "substance_input" -dv 1 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_luminosity" -ln "input_luminosity" 
		-nn "Luminosity" -ct "substance_input" -dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_contrast" -ln "input_contrast" 
		-nn "Contrast" -ct "substance_input" -smn -1 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_hue_shift" -ln "input_hue_shift" 
		-nn "Hue Shift" -ct "substance_input" -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_saturation" -ln "input_saturation" 
		-nn "Saturation" -ct "substance_input" -dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_normal_intensity" -ln "input_normal_intensity" 
		-nn "Normal Intensity" -ct "substance_input" -dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_normal_format" -ln "input_normal_format" 
		-nn "Normal Format" -ct "substance_input" -smn 0 -smx 0 -at "long";
	addAttr -r false -ci true -h true -k true -sn "input_height_range" -ln "input_height_range" 
		-nn "Height Range" -ct "substance_input" -dv 1 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_height_position" -ln "input_height_position" 
		-nn "Height Position" -ct "substance_input" -dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_ambientocclusion_intensity" 
		-ln "input_ambientocclusion_intensity" -nn "Ambient Occlusion Intensity" -ct "substance_input" 
		-dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -ci true -h true -sn "output_metallic" -ln "output_metallic" -ct "substance_output" 
		-dt "string";
	addAttr -ci true -h true -sn "output_roughness" -ln "output_roughness" -ct "substance_output" 
		-dt "string";
	addAttr -ci true -h true -sn "output_basecolor" -ln "output_basecolor" -ct "substance_output" 
		-dt "string";
	addAttr -ci true -h true -sn "output_ambientocclusion" -ln "output_ambientocclusion" 
		-ct "substance_output" -dt "string";
	addAttr -ci true -h true -sn "output_normal" -ln "output_normal" -ct "substance_output" 
		-dt "string";
	addAttr -ci true -h true -sn "output_height" -ln "output_height" -ct "substance_output" 
		-dt "string";
	addAttr -r false -ci true -h true -k true -sn "input_channel_diffuse" -ln "input_channel_diffuse" 
		-nn "Diffuse" -ct "substance_input" -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_basecolor" -ln "input_channel_basecolor" 
		-nn "Base Color" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_normal" -ln "input_channel_normal" 
		-nn "Normal" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_specular" -ln "input_channel_specular" 
		-nn "Specular" -ct "substance_input" -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_glossiness" -ln "input_channel_glossiness" 
		-nn "Glossiness" -ct "substance_input" -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_roughness" -ln "input_channel_roughness" 
		-nn "Roughness" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_metallic" -ln "input_channel_metallic" 
		-nn "Metallic" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_height" -ln "input_channel_height" 
		-nn "Height" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_ambientocclusion" -ln "input_channel_ambientocclusion" 
		-nn "Ambient Occlusion" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	setAttr ".sbs" -type "string" "C:/Users/hunte/Documents/Education/Fall 2023/Substance surfaces/moon_surface.sbsar";
	setAttr ".ctd" yes;
	setAttr ".wkfl" -type "string" "Arnold";
	setAttr ".storedHeight" 9;
	setAttr ".pst" -type "stringArray" 1 "<sbspresets formatversion=\"1.1\" count=\"3\" >\n <sbspreset pkgurl=\"pkg://moon_surface\" label=\"Sulfer Rich Moon Surface\" >\n  <presetinput identifier=\"moon_color\" uid=\"931447336\" type=\"2\" value=\"0.875,0.812659,0.466667\" />\n  <presetinput identifier=\"moon_roughness\" uid=\"939161379\" type=\"0\" value=\"0.66\" />\n  <presetinput identifier=\"crater_density\" uid=\"931451369\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"crater_size\" uid=\"931451150\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"channel_diffuse\" uid=\"744089660\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_basecolor\" uid=\"586469398\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_normal\" uid=\"586469397\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_specular\" uid=\"744089603\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_glossiness\" uid=\"744089602\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_roughness\" uid=\"586469401\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_metallic\" uid=\"586469400\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_height\" uid=\"586469406\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_ambientocclusion\" uid=\"689414011\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"luminosity\" uid=\"1540245785\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"contrast\" uid=\"608927803\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"hue_shift\" uid=\"1540245867\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"saturation\" uid=\"1540245772\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_intensity\" uid=\"1540339320\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_format\" uid=\"586466101\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"height_range\" uid=\"602913369\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"height_position\" uid=\"602913320\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"ambientocclusion_intensity\" uid=\"700229330\" type=\"0\" value=\"0.5\" />\n </sbspreset>\n <sbspreset pkgurl=\"pkg://moon_surface\" label=\"Ice Moon Surface\" >\n  <presetinput identifier=\"moon_color\" uid=\"931447336\" type=\"2\" value=\"0.4,0.454902,0.552941\" />\n  <presetinput identifier=\"moon_roughness\" uid=\"939161379\" type=\"0\" value=\"0.59\" />\n  <presetinput identifier=\"crater_density\" uid=\"931451369\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"crater_size\" uid=\"931451150\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"channel_diffuse\" uid=\"744089660\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_basecolor\" uid=\"586469398\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_normal\" uid=\"586469397\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_specular\" uid=\"744089603\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_glossiness\" uid=\"744089602\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_roughness\" uid=\"586469401\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_metallic\" uid=\"586469400\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_height\" uid=\"586469406\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_ambientocclusion\" uid=\"689414011\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"luminosity\" uid=\"1540245785\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"contrast\" uid=\"608927803\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"hue_shift\" uid=\"1540245867\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"saturation\" uid=\"1540245772\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_intensity\" uid=\"1540339320\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_format\" uid=\"586466101\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"height_range\" uid=\"602913369\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"height_position\" uid=\"602913320\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"ambientocclusion_intensity\" uid=\"700229330\" type=\"0\" value=\"0.5\" />\n </sbspreset>\n <sbspreset pkgurl=\"pkg://moon_surface\" label=\"Iron Rich Moon Surface\" >\n  <presetinput identifier=\"moon_color\" uid=\"931447336\" type=\"2\" value=\"0.833333,0.700647,0.565359\" />\n  <presetinput identifier=\"moon_roughness\" uid=\"939161379\" type=\"0\" value=\"0.59\" />\n  <presetinput identifier=\"crater_density\" uid=\"931451369\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"crater_size\" uid=\"931451150\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"channel_diffuse\" uid=\"744089660\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_basecolor\" uid=\"586469398\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_normal\" uid=\"586469397\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_specular\" uid=\"744089603\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_glossiness\" uid=\"744089602\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_roughness\" uid=\"586469401\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_metallic\" uid=\"586469400\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_height\" uid=\"586469406\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_ambientocclusion\" uid=\"689414011\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"luminosity\" uid=\"1540245785\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"contrast\" uid=\"608927803\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"hue_shift\" uid=\"1540245867\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"saturation\" uid=\"1540245772\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_intensity\" uid=\"1540339320\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_format\" uid=\"586466101\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"height_range\" uid=\"602913369\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"height_position\" uid=\"602913320\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"ambientocclusion_intensity\" uid=\"700229330\" type=\"0\" value=\"0.5\" />\n </sbspreset>\n</sbspresets>\n"  ;
createNode place2dTexture -n "pasted__place2dTexture1";
	rename -uid "FA70BC62-42E6-786C-F0F9-DC83C99A94E9";
createNode file -n "pasted__file6";
	rename -uid "70B96EF8-4E43-F9E8-C7EC-EF9F965B0F41";
	setAttr ".ail" yes;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "pasted__Moon_Surface_ambientocclusion";
	rename -uid "527B3B77-46C4-2854-FBF7-3FB07F2917D7";
	setAttr ".cpth" -type "string" "C:/Users/hunte/Documents/maya\\2024\\substance/baked_images/pasted__Moon_Surface_ambientocclusion.exr";
createNode bump2d -n "pasted__bump2d1";
	rename -uid "62D0D567-421D-4659-32D2-5BBC2E9F4403";
	setAttr ".bi" 1;
	setAttr ".vc1" -type "float3" 0 9.9999997e-06 0 ;
	setAttr ".vc2" -type "float3" 9.9999997e-06 9.9999997e-06 0 ;
createNode file -n "pasted__file7";
	rename -uid "E256AE39-4918-A976-C6E0-979B99DE7EF8";
	setAttr ".ail" yes;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "pasted__Moon_Surface_normal";
	rename -uid "932B4B47-4842-29F3-CD9B-0981583CFCAF";
	setAttr ".cpth" -type "string" "C:/Users/hunte/Documents/maya\\2024\\substance/baked_images/pasted__Moon_Surface_normal.exr";
createNode file -n "pasted__file4";
	rename -uid "C547DCA8-4833-ED7C-FE27-73AF53306FE1";
	setAttr ".ail" yes;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "pasted__Moon_Surface_roughness";
	rename -uid "6DC20279-4FF4-893E-2C6C-C4803A63EC75";
	setAttr ".cpth" -type "string" "C:/Users/hunte/Documents/maya\\2024\\substance/baked_images/pasted__Moon_Surface_roughness.exr";
createNode file -n "pasted__file3";
	rename -uid "BB841539-4808-16E8-E3D3-5BB289BA7D3A";
	setAttr ".ail" yes;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "pasted__Moon_Surface_metallic";
	rename -uid "AA97E323-42A7-82D5-8CA5-C99E37BCD6B3";
	setAttr ".cpth" -type "string" "C:/Users/hunte/Documents/maya\\2024\\substance/baked_images/pasted__Moon_Surface_metallic.png";
createNode displacementShader -n "pasted__displacementShader1";
	rename -uid "34555D3C-42A6-48E0-A473-239ED9506643";
createNode file -n "pasted__file8";
	rename -uid "818B1F3C-4434-9E0B-F4D7-4AB0C75CF440";
	setAttr ".ail" yes;
	setAttr ".ao" -0.5;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "pasted__Moon_Surface_height";
	rename -uid "85B63CE8-4310-99DA-8BBE-148E55711C8E";
	setAttr ".cpth" -type "string" "C:/Users/hunte/Documents/maya\\2024\\substance/baked_images/pasted__Moon_Surface_height.exr";
createNode substanceNode -n "substanceNode2";
	rename -uid "1F561790-4A85-ACB4-767D-C780DFEE2056";
	addAttr -r false -ci true -h true -k true -sn "input_randomseed" -ln "input_randomseed" 
		-nn "$randomseed" -ct "substance_input" -smn 0 -smx 2147483647 -at "long";
	addAttr -r false -ci true -uac -h true -k true -sn "input_color" -ln "input_color" 
		-nn "Color" -ct "substance_input" -at "float3" -nc 3;
	addAttr -r false -ci true -h true -k true -sn "input_colorr" -ln "input_colorR" 
		-nn "Color" -dv 0.53096401691436768 -smn 0 -smx 0 -at "float" -p "input_color";
	addAttr -r false -ci true -h true -k true -sn "input_colorg" -ln "input_colorG" 
		-nn "Color" -dv 0.52770501375198364 -smn 0 -smx 0 -at "float" -p "input_color";
	addAttr -r false -ci true -h true -k true -sn "input_colorb" -ln "input_colorB" 
		-nn "Color" -dv 0.52071499824523926 -smn 0 -smx 0 -at "float" -p "input_color";
	addAttr -r false -ci true -h true -k true -sn "input_color_weight" -ln "input_color_weight" 
		-nn "Color Weight" -ct "substance_input" -dv 1 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_roughness" -ln "input_roughness" 
		-nn "Roughness" -ct "substance_input" -dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_metallic" -ln "input_metallic" 
		-nn "Metallic" -ct "substance_input" -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_luminosity" -ln "input_luminosity" 
		-nn "Luminosity" -ct "substance_input" -dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_contrast" -ln "input_contrast" 
		-nn "Contrast" -ct "substance_input" -smn -1 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_hue_shift" -ln "input_hue_shift" 
		-nn "Hue Shift" -ct "substance_input" -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_saturation" -ln "input_saturation" 
		-nn "Saturation" -ct "substance_input" -dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_normal_intensity" -ln "input_normal_intensity" 
		-nn "Normal Intensity" -ct "substance_input" -dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_normal_format" -ln "input_normal_format" 
		-nn "Normal Format" -ct "substance_input" -smn 0 -smx 0 -at "long";
	addAttr -r false -ci true -h true -k true -sn "input_height_range" -ln "input_height_range" 
		-nn "Height Range" -ct "substance_input" -dv 1 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_height_position" -ln "input_height_position" 
		-nn "Height Position" -ct "substance_input" -dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_ambientocclusion_intensity" 
		-ln "input_ambientocclusion_intensity" -nn "Ambient Occlusion Intensity" -ct "substance_input" 
		-dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -ci true -h true -sn "output_diffuse" -ln "output_diffuse" -ct "substance_output" 
		-dt "string";
	addAttr -ci true -h true -sn "output_basecolor" -ln "output_basecolor" -ct "substance_output" 
		-dt "string";
	addAttr -ci true -h true -sn "output_normal" -ln "output_normal" -ct "substance_output" 
		-dt "string";
	addAttr -ci true -h true -sn "output_roughness" -ln "output_roughness" -ct "substance_output" 
		-dt "string";
	addAttr -ci true -h true -sn "output_metallic" -ln "output_metallic" -ct "substance_output" 
		-dt "string";
	addAttr -ci true -h true -sn "output_specularlevel" -ln "output_specularlevel" -ct "substance_output" 
		-dt "string";
	addAttr -ci true -h true -sn "output_height" -ln "output_height" -ct "substance_output" 
		-dt "string";
	addAttr -ci true -h true -sn "output_ambientocclusion" -ln "output_ambientocclusion" 
		-ct "substance_output" -dt "string";
	addAttr -r false -ci true -h true -k true -sn "input_channel_diffuse" -ln "input_channel_diffuse" 
		-nn "Diffuse" -ct "substance_input" -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_basecolor" -ln "input_channel_basecolor" 
		-nn "Base Color" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_normal" -ln "input_channel_normal" 
		-nn "Normal" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_specular" -ln "input_channel_specular" 
		-nn "Specular" -ct "substance_input" -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_glossiness" -ln "input_channel_glossiness" 
		-nn "Glossiness" -ct "substance_input" -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_roughness" -ln "input_channel_roughness" 
		-nn "Roughness" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_metallic" -ln "input_channel_metallic" 
		-nn "Metallic" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_specularlevel" -ln "input_channel_specularlevel" 
		-nn "Specular Level" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_height" -ln "input_channel_height" 
		-nn "Height" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_ambientocclusion" -ln "input_channel_ambientocclusion" 
		-nn "Ambient Occlusion" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	setAttr ".sbs" -type "string" "C:/Users/hunte/Documents/Education/Fall 2023/Substance surfaces/pine_wood_outdoor_panelling_01.sbsar";
	setAttr ".ctd" yes;
	setAttr ".wkfl" -type "string" "Arnold";
	setAttr ".storedHeight" 9;
	setAttr ".pst" -type "stringArray" 1 "<sbspresets formatversion=\"1.1\" count=\"3\" >\n <sbspreset pkgurl=\"pkg://pine_wood_outdoor_panelling_01\" label=\"Wet Wood Paneling\" >\n  <presetinput identifier=\"color\" uid=\"2980535945\" type=\"2\" value=\"0.235632,0.216792,0.17638\" />\n  <presetinput identifier=\"color_weight\" uid=\"2939005097\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"roughness\" uid=\"2980535989\" type=\"0\" value=\"0.3\" />\n  <presetinput identifier=\"metallic\" uid=\"2980535994\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"channel_diffuse\" uid=\"3045381085\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_basecolor\" uid=\"3140086775\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_normal\" uid=\"3140086772\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_specular\" uid=\"3045381090\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_glossiness\" uid=\"3045381091\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_roughness\" uid=\"3140086776\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_metallic\" uid=\"3140086777\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_specularlevel\" uid=\"2983929328\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_height\" uid=\"3140086783\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_ambientocclusion\" uid=\"2983763739\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"luminosity\" uid=\"3256054520\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"contrast\" uid=\"3180772314\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"hue_shift\" uid=\"3256054410\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"saturation\" uid=\"3256054509\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_intensity\" uid=\"3255995801\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_format\" uid=\"3140090068\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"height_range\" uid=\"3123872184\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"height_position\" uid=\"3123872201\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"ambientocclusion_intensity\" uid=\"2983768522\" type=\"0\" value=\"0.5\" />\n </sbspreset>\n <sbspreset pkgurl=\"pkg://pine_wood_outdoor_panelling_01\" label=\"Dark Wood Paneling\" >\n  <presetinput identifier=\"color\" uid=\"2980535945\" type=\"2\" value=\"0.304598,0.247106,0.176346\" />\n  <presetinput identifier=\"color_weight\" uid=\"2939005097\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"roughness\" uid=\"2980535989\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"metallic\" uid=\"2980535994\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"channel_diffuse\" uid=\"3045381085\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_basecolor\" uid=\"3140086775\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_normal\" uid=\"3140086772\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_specular\" uid=\"3045381090\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_glossiness\" uid=\"3045381091\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_roughness\" uid=\"3140086776\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_metallic\" uid=\"3140086777\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_specularlevel\" uid=\"2983929328\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_height\" uid=\"3140086783\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_ambientocclusion\" uid=\"2983763739\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"luminosity\" uid=\"3256054520\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"contrast\" uid=\"3180772314\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"hue_shift\" uid=\"3256054410\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"saturation\" uid=\"3256054509\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_intensity\" uid=\"3255995801\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_format\" uid=\"3140090068\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"height_range\" uid=\"3123872184\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"height_position\" uid=\"3123872201\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"ambientocclusion_intensity\" uid=\"2983768522\" type=\"0\" value=\"0.5\" />\n </sbspreset>\n <sbspreset pkgurl=\"pkg://pine_wood_outdoor_panelling_01\" label=\"Worn Wood Paneling\" >\n  <presetinput identifier=\"color\" uid=\"2980535945\" type=\"2\" value=\"0.603448,0.546499,0.476407\" />\n  <presetinput identifier=\"color_weight\" uid=\"2939005097\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"roughness\" uid=\"2980535989\" type=\"0\" value=\"0.6\" />\n  <presetinput identifier=\"metallic\" uid=\"2980535994\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"channel_diffuse\" uid=\"3045381085\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_basecolor\" uid=\"3140086775\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_normal\" uid=\"3140086772\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_specular\" uid=\"3045381090\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_glossiness\" uid=\"3045381091\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_roughness\" uid=\"3140086776\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_metallic\" uid=\"3140086777\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_specularlevel\" uid=\"2983929328\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_height\" uid=\"3140086783\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_ambientocclusion\" uid=\"2983763739\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"luminosity\" uid=\"3256054520\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"contrast\" uid=\"3180772314\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"hue_shift\" uid=\"3256054410\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"saturation\" uid=\"3256054509\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_intensity\" uid=\"3255995801\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_format\" uid=\"3140090068\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"height_range\" uid=\"3123872184\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"height_position\" uid=\"3123872201\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"ambientocclusion_intensity\" uid=\"2983768522\" type=\"0\" value=\"0.5\" />\n </sbspreset>\n</sbspresets>\n"  ;
	setAttr -k on ".input_color" -type "float3" 0.53100002 0.40900001 0.34029999 ;
createNode place2dTexture -n "place2dTexture3";
	rename -uid "01BB7EC0-4D35-A425-2AFC-298C6C5DF9EA";
createNode substanceOutputNode -n "Pine_Wood_Outdoor_Panelling_01_diffuse";
	rename -uid "705B5E1C-4C02-FF6F-E369-358861F1C56E";
	setAttr ".cpth" -type "string" "C:/Users/hunte/Documents/maya\\2024\\substance/baked_images/Pine_Wood_Outdoor_Panelling_01_diffuse.exr";
createNode file -n "file20";
	rename -uid "18E0C50E-4636-B60E-9506-19954A5FB743";
	setAttr ".cs" -type "string" "sRGB";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Pine_Wood_Outdoor_Panelling_01_basecolor";
	rename -uid "47AA3BFC-494F-264C-6765-EE870D5DE281";
	setAttr ".cpth" -type "string" "C:/Users/hunte/Documents/maya\\2024\\substance/baked_images/Pine_Wood_Outdoor_Panelling_01_basecolor.png";
createNode file -n "file21";
	rename -uid "35043D2B-4718-58A5-F412-F0957F8DDC3B";
	setAttr ".cs" -type "string" "sRGB";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Pine_Wood_Outdoor_Panelling_01_normal";
	rename -uid "501FBA1A-4CEE-7C92-DA35-41A3E66B000B";
	setAttr ".cpth" -type "string" "C:/Users/hunte/Documents/maya\\2024\\substance/baked_images/Pine_Wood_Outdoor_Panelling_01_normal.exr";
createNode file -n "file22";
	rename -uid "05343277-4015-AE43-37FB-21925327A223";
	setAttr ".ail" yes;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Pine_Wood_Outdoor_Panelling_01_roughness";
	rename -uid "BE22D2BE-48CB-5D5E-7F2D-D59300C7135A";
	setAttr ".cpth" -type "string" "C:/Users/hunte/Documents/maya\\2024\\substance/baked_images/Pine_Wood_Outdoor_Panelling_01_roughness.png";
createNode file -n "file23";
	rename -uid "03FF54B4-44C6-F353-2D4C-0C804D9CF4EC";
	setAttr ".ail" yes;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Pine_Wood_Outdoor_Panelling_01_metallic";
	rename -uid "CE55E060-48B1-CFDD-78EC-E69A9517DCDB";
	setAttr ".cpth" -type "string" "C:/Users/hunte/Documents/maya\\2024\\substance/baked_images/Pine_Wood_Outdoor_Panelling_01_metallic.png";
createNode file -n "file24";
	rename -uid "AA1745A5-4623-D715-1284-B0A8B696F474";
	setAttr ".ail" yes;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Pine_Wood_Outdoor_Panelling_01_specularlevel";
	rename -uid "C873B07C-46D5-7332-78F2-E2BEA89ECC0F";
	setAttr ".cpth" -type "string" "C:/Users/hunte/Documents/maya\\2024\\substance/baked_images/Pine_Wood_Outdoor_Panelling_01_specularlevel.png";
createNode file -n "file25";
	rename -uid "B6B3E680-423B-31B7-E0A1-2EBB7E0DE321";
	setAttr ".ail" yes;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Pine_Wood_Outdoor_Panelling_01_height";
	rename -uid "BC3270E4-47CA-0066-693E-BD9201D30B2F";
	setAttr ".cpth" -type "string" "C:/Users/hunte/Documents/maya\\2024\\substance/baked_images/Pine_Wood_Outdoor_Panelling_01_height.exr";
createNode file -n "file26";
	rename -uid "6990664C-4EC7-F4BC-BEBD-E68C94CD76C1";
	setAttr ".ail" yes;
	setAttr ".ao" -0.5;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Pine_Wood_Outdoor_Panelling_01_ambientocclusion";
	rename -uid "F82CA92C-4088-E610-4654-4688E11169F5";
	setAttr ".cpth" -type "string" "C:/Users/hunte/Documents/maya\\2024\\substance/baked_images/Pine_Wood_Outdoor_Panelling_01_ambientocclusion.png";
createNode file -n "file27";
	rename -uid "0D50EFD9-464D-262B-BDD4-D4ABB88572ED";
	setAttr ".ail" yes;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode multiplyDivide -n "multiplyDivide3";
	rename -uid "C7F3382F-45D5-1CB9-870A-56A6C7E55550";
createNode shadingEngine -n "set3";
	rename -uid "E49FBA10-48BA-99C2-BA1A-01A0CA782C8B";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo5";
	rename -uid "25C318B4-455F-6556-5D27-83AA67E77115";
createNode bump2d -n "bump2d3";
	rename -uid "795A95E3-49A8-93FB-ABE5-B2871AACA991";
	setAttr ".bi" 1;
	setAttr ".vc1" -type "float3" 0 9.9999997e-06 0 ;
	setAttr ".vc2" -type "float3" 9.9999997e-06 9.9999997e-06 0 ;
createNode displacementShader -n "displacementShader3";
	rename -uid "FFA99C7D-41D6-AA44-2D2B-E8851B460E6F";
createNode aiStandardSurface -n "CutWood";
	rename -uid "50D4C7E7-40F0-C1D1-D23D-27AA0D9F45CF";
	setAttr ".specular_color" -type "float3" 0.97202796 0.97202796 0.97202796 ;
	setAttr ".emission" 1;
	setAttr ".emission_color" -type "float3" 0 0 0 ;
createNode materialInfo -n "pasted__materialInfo5";
	rename -uid "0918C541-402A-5330-B478-73B47E66F288";
createNode shadingEngine -n "pasted__set3";
	rename -uid "86BA6D22-4F64-424C-04BB-73B2D55999CB";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode aiStandardSurface -n "pasted__CutWood";
	rename -uid "E2ABFB7B-44E6-DBD3-9805-0DB41C00DDCD";
	setAttr ".specular_color" -type "float3" 0.97202796 0.97202796 0.97202796 ;
	setAttr ".emission" 1;
	setAttr ".emission_color" -type "float3" 0 0 0 ;
createNode multiplyDivide -n "pasted__multiplyDivide3";
	rename -uid "3FA35447-496D-FC2E-3E30-ACA3E265514E";
createNode file -n "pasted__file21";
	rename -uid "9BD8DBD5-467B-C7D5-6575-B49B112975FA";
	setAttr ".cs" -type "string" "sRGB";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "pasted__Pine_Wood_Outdoor_Panelling_01_basecolor";
	rename -uid "EB266A5C-4E23-9C8A-A333-5796F64A749F";
	setAttr ".cpth" -type "string" "C:/Users/hunte/Documents/maya\\2024\\substance/baked_images/pasted__Pine_Wood_Outdoor_Panelling_01_basecolor.png";
createNode substanceNode -n "pasted__substanceNode2";
	rename -uid "5378F556-4740-26DA-E2AC-44A16BC06F01";
	addAttr -r false -ci true -h true -k true -sn "input_randomseed" -ln "input_randomseed" 
		-nn "$randomseed" -ct "substance_input" -smn 0 -smx 2147483647 -at "long";
	addAttr -r false -ci true -uac -h true -k true -sn "input_color" -ln "input_color" 
		-nn "Color" -ct "substance_input" -at "float3" -nc 3;
	addAttr -r false -ci true -h true -k true -sn "input_colorr" -ln "input_colorR" 
		-nn "Color" -dv 0.53096401691436768 -smn 0 -smx 0 -at "float" -p "input_color";
	addAttr -r false -ci true -h true -k true -sn "input_colorg" -ln "input_colorG" 
		-nn "Color" -dv 0.52770501375198364 -smn 0 -smx 0 -at "float" -p "input_color";
	addAttr -r false -ci true -h true -k true -sn "input_colorb" -ln "input_colorB" 
		-nn "Color" -dv 0.52071499824523926 -smn 0 -smx 0 -at "float" -p "input_color";
	addAttr -r false -ci true -h true -k true -sn "input_color_weight" -ln "input_color_weight" 
		-nn "Color Weight" -ct "substance_input" -dv 1 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_roughness" -ln "input_roughness" 
		-nn "Roughness" -ct "substance_input" -dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_metallic" -ln "input_metallic" 
		-nn "Metallic" -ct "substance_input" -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_luminosity" -ln "input_luminosity" 
		-nn "Luminosity" -ct "substance_input" -dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_contrast" -ln "input_contrast" 
		-nn "Contrast" -ct "substance_input" -smn -1 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_hue_shift" -ln "input_hue_shift" 
		-nn "Hue Shift" -ct "substance_input" -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_saturation" -ln "input_saturation" 
		-nn "Saturation" -ct "substance_input" -dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_normal_intensity" -ln "input_normal_intensity" 
		-nn "Normal Intensity" -ct "substance_input" -dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_normal_format" -ln "input_normal_format" 
		-nn "Normal Format" -ct "substance_input" -smn 0 -smx 0 -at "long";
	addAttr -r false -ci true -h true -k true -sn "input_height_range" -ln "input_height_range" 
		-nn "Height Range" -ct "substance_input" -dv 1 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_height_position" -ln "input_height_position" 
		-nn "Height Position" -ct "substance_input" -dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_ambientocclusion_intensity" 
		-ln "input_ambientocclusion_intensity" -nn "Ambient Occlusion Intensity" -ct "substance_input" 
		-dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -ci true -h true -sn "output_basecolor" -ln "output_basecolor" -ct "substance_output" 
		-dt "string";
	addAttr -ci true -h true -sn "output_normal" -ln "output_normal" -ct "substance_output" 
		-dt "string";
	addAttr -ci true -h true -sn "output_roughness" -ln "output_roughness" -ct "substance_output" 
		-dt "string";
	addAttr -ci true -h true -sn "output_metallic" -ln "output_metallic" -ct "substance_output" 
		-dt "string";
	addAttr -ci true -h true -sn "output_height" -ln "output_height" -ct "substance_output" 
		-dt "string";
	addAttr -ci true -h true -sn "output_ambientocclusion" -ln "output_ambientocclusion" 
		-ct "substance_output" -dt "string";
	addAttr -r false -ci true -h true -k true -sn "input_channel_diffuse" -ln "input_channel_diffuse" 
		-nn "Diffuse" -ct "substance_input" -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_basecolor" -ln "input_channel_basecolor" 
		-nn "Base Color" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_normal" -ln "input_channel_normal" 
		-nn "Normal" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_specular" -ln "input_channel_specular" 
		-nn "Specular" -ct "substance_input" -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_glossiness" -ln "input_channel_glossiness" 
		-nn "Glossiness" -ct "substance_input" -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_roughness" -ln "input_channel_roughness" 
		-nn "Roughness" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_metallic" -ln "input_channel_metallic" 
		-nn "Metallic" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_specularlevel" -ln "input_channel_specularlevel" 
		-nn "Specular Level" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_height" -ln "input_channel_height" 
		-nn "Height" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_ambientocclusion" -ln "input_channel_ambientocclusion" 
		-nn "Ambient Occlusion" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	setAttr ".sbs" -type "string" "C:/Users/hunte/Documents/Education/Fall 2023/Substance surfaces/pine_wood_outdoor_panelling_01.sbsar";
	setAttr ".ctd" yes;
	setAttr ".wkfl" -type "string" "Arnold";
	setAttr ".storedHeight" 9;
	setAttr ".pst" -type "stringArray" 1 "<sbspresets formatversion=\"1.1\" count=\"3\" >\n <sbspreset pkgurl=\"pkg://pine_wood_outdoor_panelling_01\" label=\"Wet Wood Paneling\" >\n  <presetinput identifier=\"color\" uid=\"2980535945\" type=\"2\" value=\"0.235632,0.216792,0.17638\" />\n  <presetinput identifier=\"color_weight\" uid=\"2939005097\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"roughness\" uid=\"2980535989\" type=\"0\" value=\"0.3\" />\n  <presetinput identifier=\"metallic\" uid=\"2980535994\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"channel_diffuse\" uid=\"3045381085\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_basecolor\" uid=\"3140086775\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_normal\" uid=\"3140086772\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_specular\" uid=\"3045381090\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_glossiness\" uid=\"3045381091\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_roughness\" uid=\"3140086776\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_metallic\" uid=\"3140086777\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_specularlevel\" uid=\"2983929328\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_height\" uid=\"3140086783\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_ambientocclusion\" uid=\"2983763739\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"luminosity\" uid=\"3256054520\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"contrast\" uid=\"3180772314\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"hue_shift\" uid=\"3256054410\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"saturation\" uid=\"3256054509\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_intensity\" uid=\"3255995801\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_format\" uid=\"3140090068\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"height_range\" uid=\"3123872184\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"height_position\" uid=\"3123872201\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"ambientocclusion_intensity\" uid=\"2983768522\" type=\"0\" value=\"0.5\" />\n </sbspreset>\n <sbspreset pkgurl=\"pkg://pine_wood_outdoor_panelling_01\" label=\"Dark Wood Paneling\" >\n  <presetinput identifier=\"color\" uid=\"2980535945\" type=\"2\" value=\"0.304598,0.247106,0.176346\" />\n  <presetinput identifier=\"color_weight\" uid=\"2939005097\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"roughness\" uid=\"2980535989\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"metallic\" uid=\"2980535994\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"channel_diffuse\" uid=\"3045381085\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_basecolor\" uid=\"3140086775\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_normal\" uid=\"3140086772\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_specular\" uid=\"3045381090\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_glossiness\" uid=\"3045381091\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_roughness\" uid=\"3140086776\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_metallic\" uid=\"3140086777\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_specularlevel\" uid=\"2983929328\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_height\" uid=\"3140086783\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_ambientocclusion\" uid=\"2983763739\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"luminosity\" uid=\"3256054520\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"contrast\" uid=\"3180772314\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"hue_shift\" uid=\"3256054410\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"saturation\" uid=\"3256054509\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_intensity\" uid=\"3255995801\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_format\" uid=\"3140090068\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"height_range\" uid=\"3123872184\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"height_position\" uid=\"3123872201\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"ambientocclusion_intensity\" uid=\"2983768522\" type=\"0\" value=\"0.5\" />\n </sbspreset>\n <sbspreset pkgurl=\"pkg://pine_wood_outdoor_panelling_01\" label=\"Worn Wood Paneling\" >\n  <presetinput identifier=\"color\" uid=\"2980535945\" type=\"2\" value=\"0.603448,0.546499,0.476407\" />\n  <presetinput identifier=\"color_weight\" uid=\"2939005097\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"roughness\" uid=\"2980535989\" type=\"0\" value=\"0.6\" />\n  <presetinput identifier=\"metallic\" uid=\"2980535994\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"channel_diffuse\" uid=\"3045381085\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_basecolor\" uid=\"3140086775\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_normal\" uid=\"3140086772\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_specular\" uid=\"3045381090\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_glossiness\" uid=\"3045381091\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_roughness\" uid=\"3140086776\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_metallic\" uid=\"3140086777\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_specularlevel\" uid=\"2983929328\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_height\" uid=\"3140086783\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_ambientocclusion\" uid=\"2983763739\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"luminosity\" uid=\"3256054520\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"contrast\" uid=\"3180772314\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"hue_shift\" uid=\"3256054410\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"saturation\" uid=\"3256054509\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_intensity\" uid=\"3255995801\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_format\" uid=\"3140090068\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"height_range\" uid=\"3123872184\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"height_position\" uid=\"3123872201\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"ambientocclusion_intensity\" uid=\"2983768522\" type=\"0\" value=\"0.5\" />\n </sbspreset>\n</sbspresets>\n"  ;
	setAttr -k on ".input_color" -type "float3" 0.53100002 0.40900001 0.34029999 ;
createNode place2dTexture -n "pasted__place2dTexture3";
	rename -uid "88C0A29E-41B1-9B49-9493-F292CFD6D012";
createNode file -n "pasted__file27";
	rename -uid "3014A598-4C84-244D-F731-0293017AE5F6";
	setAttr ".ail" yes;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "pasted__Pine_Wood_Outdoor_Panelling_01_ambientocclusion";
	rename -uid "C9C97B20-46C4-2884-3D1C-80BC20015D74";
	setAttr ".cpth" -type "string" "C:/Users/hunte/Documents/maya\\2024\\substance/baked_images/pasted__Pine_Wood_Outdoor_Panelling_01_ambientocclusion.png";
createNode bump2d -n "pasted__bump2d3";
	rename -uid "26AE5AA3-41EC-0DB3-05FA-B18BB1C2C446";
	setAttr ".bi" 1;
	setAttr ".vc1" -type "float3" 0 9.9999997e-06 0 ;
	setAttr ".vc2" -type "float3" 9.9999997e-06 9.9999997e-06 0 ;
createNode file -n "pasted__file22";
	rename -uid "A9833EE7-49ED-5669-5271-10B77363A2CD";
	setAttr ".ail" yes;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "pasted__Pine_Wood_Outdoor_Panelling_01_normal";
	rename -uid "821DC665-44BA-2195-EF39-BBB83476E08D";
	setAttr ".cpth" -type "string" "C:/Users/hunte/Documents/maya\\2024\\substance/baked_images/pasted__Pine_Wood_Outdoor_Panelling_01_normal.exr";
createNode file -n "pasted__file23";
	rename -uid "92EACBE8-4E2B-BD94-E79C-5A8101A332A2";
	setAttr ".ail" yes;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "pasted__Pine_Wood_Outdoor_Panelling_01_roughness";
	rename -uid "75008BB1-4433-F434-7716-39BC7A8FE97A";
	setAttr ".cpth" -type "string" "C:/Users/hunte/Documents/maya\\2024\\substance/baked_images/pasted__Pine_Wood_Outdoor_Panelling_01_roughness.png";
createNode file -n "pasted__file24";
	rename -uid "40A00049-4FC0-B016-3C65-0A964C9610B6";
	setAttr ".ail" yes;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "pasted__Pine_Wood_Outdoor_Panelling_01_metallic";
	rename -uid "7B46742E-46E9-E494-CC6D-A3AF494C7BEE";
	setAttr ".cpth" -type "string" "C:/Users/hunte/Documents/maya\\2024\\substance/baked_images/pasted__Pine_Wood_Outdoor_Panelling_01_metallic.png";
createNode displacementShader -n "pasted__displacementShader3";
	rename -uid "0B3B066A-4F32-2E93-ED3A-3680A6922992";
createNode file -n "pasted__file26";
	rename -uid "660A9AD5-4B49-DB59-7194-65803D3A1624";
	setAttr ".ail" yes;
	setAttr ".ao" -0.5;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "pasted__Pine_Wood_Outdoor_Panelling_01_height";
	rename -uid "FCA286DE-4355-ECE6-D318-E68C84B98761";
	setAttr ".cpth" -type "string" "C:/Users/hunte/Documents/maya\\2024\\substance/baked_images/pasted__Pine_Wood_Outdoor_Panelling_01_height.exr";
createNode substanceNode -n "CarvedWood";
	rename -uid "D87559F0-448E-1C0C-AA28-2F9E2443C6AF";
	addAttr -r false -ci true -h true -k true -sn "input_randomseed" -ln "input_randomseed" 
		-nn "$randomseed" -ct "substance_input" -smn 0 -smx 2147483647 -at "long";
	addAttr -r false -ci true -uac -h true -k true -sn "input_wood_color" -ln "input_wood_color" 
		-nn "Wood Color" -ct "substance_input" -at "float3" -nc 3;
	addAttr -r false -ci true -h true -k true -sn "input_wood_colorr" -ln "input_wood_colorR" 
		-nn "Wood Color" -dv 0.76436799764633179 -smn 0 -smx 0 -at "float" -p "input_wood_color";
	addAttr -r false -ci true -h true -k true -sn "input_wood_colorg" -ln "input_wood_colorG" 
		-nn "Wood Color" -dv 0.62114202976226807 -smn 0 -smx 0 -at "float" -p "input_wood_color";
	addAttr -r false -ci true -h true -k true -sn "input_wood_colorb" -ln "input_wood_colorB" 
		-nn "Wood Color" -dv 0.50656300783157349 -smn 0 -smx 0 -at "float" -p "input_wood_color";
	addAttr -r false -ci true -h true -k true -sn "input_roughness" -ln "input_roughness" 
		-nn "Roughness" -ct "substance_input" -dv 0.68999999761581421 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_roughness_variations" -ln "input_roughness_variations" 
		-nn "Roughness Variations" -ct "substance_input" -dv 1 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_wood_contrast" -ln "input_wood_contrast" 
		-nn "Wood Contrast" -ct "substance_input" -dv 0.20000000298023224 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_chisel_x_amount" -ln "input_chisel_x_amount" 
		-nn "Chisel X Amount" -ct "substance_input" -dv 10 -smn 5 -smx 25 -at "long";
	addAttr -r false -ci true -h true -k true -sn "input_chisel_y_amount" -ln "input_chisel_y_amount" 
		-nn "Chisel Y Amount" -ct "substance_input" -dv 20 -smn 5 -smx 25 -at "long";
	addAttr -r false -ci true -h true -k true -sn "input_cracks_amount" -ln "input_cracks_amount" 
		-nn "Cracks Amount" -ct "substance_input" -dv 1 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_cracks_scale" -ln "input_cracks_scale" 
		-nn "Cracks Scale" -ct "substance_input" -dv 0.20000000298023224 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_cracks_scale_variation" -ln "input_cracks_scale_variation" 
		-nn "Cracks Scale Variation" -ct "substance_input" -dv 0.34999999403953552 -smn 0 
		-smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_veins_color_intensity" -ln "input_veins_color_intensity" 
		-nn "Veins Color Intensity" -ct "substance_input" -dv 0.69999998807907104 -smn 0 
		-smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_luminosity" -ln "input_luminosity" 
		-nn "Luminosity" -ct "substance_input" -dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_contrast" -ln "input_contrast" 
		-nn "Contrast" -ct "substance_input" -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_hue_shift" -ln "input_hue_shift" 
		-nn "Hue Shift" -ct "substance_input" -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_saturation" -ln "input_saturation" 
		-nn "Saturation" -ct "substance_input" -dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_normal_intensity" -ln "input_normal_intensity" 
		-nn "Normal Intensity" -ct "substance_input" -dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_normal_format" -ln "input_normal_format" 
		-nn "Normal Format" -ct "substance_input" -smn 0 -smx 0 -at "long";
	addAttr -r false -ci true -h true -k true -sn "input_height_range" -ln "input_height_range" 
		-nn "Height Range" -ct "substance_input" -dv 1 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_height_position" -ln "input_height_position" 
		-nn "Height Position" -ct "substance_input" -dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_ambientocclusion_intensity" 
		-ln "input_ambientocclusion_intensity" -nn "Ambient Occlusion Intensity" -ct "substance_input" 
		-dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -ci true -h true -sn "output_basecolor" -ln "output_basecolor" -ct "substance_output" 
		-dt "string";
	addAttr -ci true -h true -sn "output_normal" -ln "output_normal" -ct "substance_output" 
		-dt "string";
	addAttr -ci true -h true -sn "output_roughness" -ln "output_roughness" -ct "substance_output" 
		-dt "string";
	addAttr -ci true -h true -sn "output_specularlevel" -ln "output_specularlevel" -ct "substance_output" 
		-dt "string";
	addAttr -ci true -h true -sn "output_ambientocclusion" -ln "output_ambientocclusion" 
		-ct "substance_output" -dt "string";
	addAttr -ci true -h true -sn "output_metallic" -ln "output_metallic" -ct "substance_output" 
		-dt "string";
	addAttr -ci true -h true -sn "output_height" -ln "output_height" -ct "substance_output" 
		-dt "string";
	addAttr -ci true -h true -sn "output_diffuse" -ln "output_diffuse" -ct "substance_output" 
		-dt "string";
	addAttr -ci true -h true -sn "output_specular" -ln "output_specular" -ct "substance_output" 
		-dt "string";
	addAttr -r false -ci true -h true -k true -sn "input_add_veins" -ln "input_add_veins" 
		-nn "Add Veins" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_rotate_90" -ln "input_rotate_90" 
		-nn "Rotate 90" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_diffuse" -ln "input_channel_diffuse" 
		-nn "Diffuse" -ct "substance_input" -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_basecolor" -ln "input_channel_basecolor" 
		-nn "Base Color" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_normal" -ln "input_channel_normal" 
		-nn "Normal" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_specular" -ln "input_channel_specular" 
		-nn "Specular" -ct "substance_input" -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_glossiness" -ln "input_channel_glossiness" 
		-nn "Glossiness" -ct "substance_input" -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_roughness" -ln "input_channel_roughness" 
		-nn "Roughness" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_metallic" -ln "input_channel_metallic" 
		-nn "Metallic" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_specularlevel" -ln "input_channel_specularlevel" 
		-nn "Specular Level" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_height" -ln "input_channel_height" 
		-nn "Height" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_ambientocclusion" -ln "input_channel_ambientocclusion" 
		-nn "Ambient Occlusion" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	setAttr ".sbs" -type "string" "C:/Users/hunte/Documents/Education/Fall 2023/Substance surfaces/carved_wood.sbsar";
	setAttr ".ctd" yes;
	setAttr ".wkfl" -type "string" "Arnold";
	setAttr ".storedHeight" 9;
	setAttr ".pst" -type "stringArray" 1 "<sbspresets formatversion=\"1.1\" count=\"3\" >\n <sbspreset pkgurl=\"pkg://carved_wood\" label=\"Dark Long Chisel\" >\n  <presetinput identifier=\"wood_color\" uid=\"1818358844\" type=\"2\" value=\"0.321839,0.271056,0.230429\" />\n  <presetinput identifier=\"roughness\" uid=\"1818331502\" type=\"0\" value=\"0.69\" />\n  <presetinput identifier=\"roughness_variations\" uid=\"1818332364\" type=\"0\" value=\"0.58\" />\n  <presetinput identifier=\"wood_contrast\" uid=\"1840735482\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"chisel_x_amount\" uid=\"1818331111\" type=\"4\" value=\"20\" />\n  <presetinput identifier=\"chisel_y_amount\" uid=\"1818337131\" type=\"4\" value=\"11\" />\n  <presetinput identifier=\"cracks_amount\" uid=\"1818341830\" type=\"0\" value=\"6\" />\n  <presetinput identifier=\"cracks_scale\" uid=\"1818337203\" type=\"0\" value=\"0.1\" />\n  <presetinput identifier=\"cracks_scale_variation\" uid=\"1818333251\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"add_veins\" uid=\"1816777912\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"rotate_90\" uid=\"1816787835\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_diffuse\" uid=\"1840343658\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_basecolor\" uid=\"1840343576\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_normal\" uid=\"1840343584\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_specular\" uid=\"1840343605\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_glossiness\" uid=\"1840343555\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_roughness\" uid=\"1840343560\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_metallic\" uid=\"1840343756\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_specularlevel\" uid=\"1840343801\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_height\" uid=\"1840343599\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_ambientocclusion\" uid=\"1840343771\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"luminosity\" uid=\"1840377501\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"contrast\" uid=\"1840356461\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"hue_shift\" uid=\"1840370076\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"saturation\" uid=\"1840369756\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_intensity\" uid=\"1840260691\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_format\" uid=\"1840260628\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"height_range\" uid=\"1840261060\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"height_position\" uid=\"1840261011\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"ambientocclusion_intensity\" uid=\"1840264863\" type=\"0\" value=\"0.5\" />\n </sbspreset>\n <sbspreset pkgurl=\"pkg://carved_wood\" label=\"Burgundy Large Chisel\" >\n  <presetinput identifier=\"wood_color\" uid=\"1818358844\" type=\"2\" value=\"0.396552,0.22526,0.22526\" />\n  <presetinput identifier=\"roughness\" uid=\"1818331502\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"roughness_variations\" uid=\"1818332364\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"wood_contrast\" uid=\"1840735482\" type=\"0\" value=\"0.15\" />\n  <presetinput identifier=\"chisel_x_amount\" uid=\"1818331111\" type=\"4\" value=\"5\" />\n  <presetinput identifier=\"chisel_y_amount\" uid=\"1818337131\" type=\"4\" value=\"9\" />\n  <presetinput identifier=\"cracks_amount\" uid=\"1818341830\" type=\"0\" value=\"8\" />\n  <presetinput identifier=\"cracks_scale\" uid=\"1818337203\" type=\"0\" value=\"0.2\" />\n  <presetinput identifier=\"cracks_scale_variation\" uid=\"1818333251\" type=\"0\" value=\"0.35\" />\n  <presetinput identifier=\"add_veins\" uid=\"1816777912\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"rotate_90\" uid=\"1816787835\" type=\"4\" value=\"1\" />\n </sbspreset>\n <sbspreset pkgurl=\"pkg://carved_wood\" label=\"Orange Small Chisel\" >\n  <presetinput identifier=\"wood_color\" uid=\"1818358844\" type=\"2\" value=\"0.655172,0.43118,0.251989\" />\n  <presetinput identifier=\"roughness\" uid=\"1818331502\" type=\"0\" value=\"0.69\" />\n  <presetinput identifier=\"roughness_variations\" uid=\"1818332364\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"wood_contrast\" uid=\"1840735482\" type=\"0\" value=\"0.2\" />\n  <presetinput identifier=\"chisel_x_amount\" uid=\"1818331111\" type=\"4\" value=\"23\" />\n  <presetinput identifier=\"chisel_y_amount\" uid=\"1818337131\" type=\"4\" value=\"29\" />\n  <presetinput identifier=\"cracks_amount\" uid=\"1818341830\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"cracks_scale\" uid=\"1818337203\" type=\"0\" value=\"0.2\" />\n  <presetinput identifier=\"cracks_scale_variation\" uid=\"1818333251\" type=\"0\" value=\"0.35\" />\n  <presetinput identifier=\"add_veins\" uid=\"1816777912\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"veins_color_intensity\" uid=\"1840183477\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"rotate_90\" uid=\"1816787835\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_diffuse\" uid=\"1840343658\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_basecolor\" uid=\"1840343576\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_normal\" uid=\"1840343584\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_specular\" uid=\"1840343605\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_glossiness\" uid=\"1840343555\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_roughness\" uid=\"1840343560\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_metallic\" uid=\"1840343756\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_specularlevel\" uid=\"1840343801\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_height\" uid=\"1840343599\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_ambientocclusion\" uid=\"1840343771\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"luminosity\" uid=\"1840377501\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"contrast\" uid=\"1840356461\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"hue_shift\" uid=\"1840370076\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"saturation\" uid=\"1840369756\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_intensity\" uid=\"1840260691\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_format\" uid=\"1840260628\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"height_range\" uid=\"1840261060\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"height_position\" uid=\"1840261011\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"ambientocclusion_intensity\" uid=\"1840264863\" type=\"0\" value=\"0.5\" />\n </sbspreset>\n</sbspresets>\n"  ;
createNode place2dTexture -n "place2dTexture4";
	rename -uid "86350755-40E8-15C4-50E9-EAA1B7914042";
createNode substanceOutputNode -n "Carved_Wood_basecolor";
	rename -uid "2B20894A-4918-C7D6-2F0C-4A8D36A977DF";
	setAttr ".cpth" -type "string" "C:/Users/hunte/Documents/maya\\2024\\substance/baked_images/Carved_Wood_basecolor.png";
createNode file -n "file28";
	rename -uid "D8DEE3E3-49C1-C6DC-7751-A6AD3531C30A";
	setAttr ".cs" -type "string" "sRGB";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Carved_Wood_normal";
	rename -uid "0FDD3D6B-4B5E-7CF2-C279-F0A04EAEB025";
	setAttr ".cpth" -type "string" "C:/Users/hunte/Documents/maya\\2024\\substance/baked_images/Carved_Wood_normal.exr";
createNode file -n "file29";
	rename -uid "5103F2B9-4789-CE8F-3BC2-3BAC222FFE9D";
	setAttr ".ail" yes;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Carved_Wood_roughness";
	rename -uid "421F0E33-4C06-72FA-7A19-D4BF55BFFF54";
	setAttr ".cpth" -type "string" "C:/Users/hunte/Documents/maya\\2024\\substance/baked_images/Carved_Wood_roughness.exr";
createNode file -n "file30";
	rename -uid "044275E7-4A8D-3E37-9462-46B0FE55EBF6";
	setAttr ".ail" yes;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Carved_Wood_specularlevel";
	rename -uid "DEC46EDE-4FA5-39EE-CEEE-6A97A8832F09";
	setAttr ".cpth" -type "string" "C:/Users/hunte/Documents/maya\\2024\\substance/baked_images/Carved_Wood_specularlevel.exr";
createNode file -n "file31";
	rename -uid "8601CE7C-4A7D-8510-8BF6-02B8F3D3185E";
	setAttr ".ail" yes;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Carved_Wood_ambientocclusion";
	rename -uid "DA73EEC0-4752-937E-7310-0898972E2C6A";
	setAttr ".cpth" -type "string" "C:/Users/hunte/Documents/maya\\2024\\substance/baked_images/Carved_Wood_ambientocclusion.exr";
createNode file -n "file32";
	rename -uid "4462C82D-47D2-29CB-EEBB-6CB521CF70D7";
	setAttr ".ail" yes;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Carved_Wood_metallic";
	rename -uid "87B3B93F-4AF6-B5CE-C054-09938A01B2C5";
	setAttr ".cpth" -type "string" "C:/Users/hunte/Documents/maya\\2024\\substance/baked_images/Carved_Wood_metallic.png";
createNode file -n "file33";
	rename -uid "456BBCDE-4021-2C1F-5C38-E993DC828CF3";
	setAttr ".ail" yes;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Carved_Wood_height";
	rename -uid "C7E5B4E5-40BF-4139-D392-BDBB8ED516BA";
	setAttr ".cpth" -type "string" "C:/Users/hunte/Documents/maya\\2024\\substance/baked_images/Carved_Wood_height.exr";
createNode file -n "file34";
	rename -uid "41667280-4CC9-AF43-3DF7-148F1C1C4097";
	setAttr ".ail" yes;
	setAttr ".ao" -0.5;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Carved_Wood_diffuse";
	rename -uid "BE4779EA-439E-4924-7BE4-AB8A9D623C02";
	setAttr ".cpth" -type "string" "C:/Users/hunte/Documents/maya\\2024\\substance/baked_images/Carved_Wood_diffuse.exr";
createNode file -n "file35";
	rename -uid "3FA6FA29-4EC9-7F2F-6A5E-B68EF6B9BB72";
	setAttr ".cs" -type "string" "sRGB";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Carved_Wood_specular";
	rename -uid "F075489F-48AD-1B2D-A34F-E7B77F9B174A";
	setAttr ".cpth" -type "string" "C:/Users/hunte/Documents/maya\\2024\\substance/baked_images/Carved_Wood_specular.exr";
createNode file -n "file36";
	rename -uid "BDA0E478-4421-A0F7-B9CD-C4A8B60F2AA9";
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode multiplyDivide -n "multiplyDivide4";
	rename -uid "F9558663-4678-659A-CEB8-299864DF83C2";
createNode aiStandardSurface -n "CarvedWood1";
	rename -uid "99F0AE04-45CA-7067-F114-908F25078D80";
	setAttr ".emission" 1;
	setAttr ".emission_color" -type "float3" 0 0 0 ;
createNode shadingEngine -n "set4";
	rename -uid "4DF62C06-4E1D-A109-6BA7-5BB584C0A270";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo6";
	rename -uid "D3F3489B-4EF7-A379-03B6-B6843176D40B";
createNode bump2d -n "bump2d4";
	rename -uid "EB10B3C3-4DCD-7DBA-B089-3EA3FD076051";
	setAttr ".bi" 1;
	setAttr ".vc1" -type "float3" 0 9.9999997e-06 0 ;
	setAttr ".vc2" -type "float3" 9.9999997e-06 9.9999997e-06 0 ;
createNode displacementShader -n "displacementShader4";
	rename -uid "651EF77C-4558-1AB8-753F-458A0C918378";
createNode phong -n "v_layered3";
	rename -uid "BF720A48-4DF2-2666-D60D-AFBC55624D05";
createNode shadingEngine -n "v_layered3SG";
	rename -uid "AB8A7FB6-4CA3-B5D1-482F-A894422EC069";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo7";
	rename -uid "516A2C1B-49A7-84F0-D99D-B9840E895A5B";
createNode file -n "file37";
	rename -uid "ED7963FD-4BC8-EFDE-11E4-27B0F4B8237D";
	setAttr ".cs" -type "string" "sRGB";
createNode groupId -n "groupId8";
	rename -uid "19C5C1F2-4F67-B7F0-0158-8D86E55CDEAA";
	setAttr ".ihi" 0;
createNode shadingEngine -n "pasted__v_layered3SG";
	rename -uid "F19871B5-46D4-6176-9A4F-AA965BC6604B";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "pasted__materialInfo7";
	rename -uid "634FE74E-4CC4-DC84-095F-A58C25C1E00E";
createNode phong -n "pasted__v_layered3";
	rename -uid "34DB5270-40AC-6265-59E8-C289697DA390";
createNode file -n "pasted__file37";
	rename -uid "B676C5A9-484E-630A-8F01-1B80EC64865A";
	setAttr ".cs" -type "string" "sRGB";
createNode groupId -n "pasted__groupId8";
	rename -uid "858E6B42-49F4-209D-CFB8-4389B7F0FEE6";
	setAttr ".ihi" 0;
createNode materialInfo -n "pasted__materialInfo8";
	rename -uid "193429D0-4FE2-55F2-A74E-92AAA6D9042B";
createNode shadingEngine -n "pasted__set4";
	rename -uid "D3EB5A09-4E33-8116-C729-789FD0B7291B";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode multiplyDivide -n "pasted__multiplyDivide4";
	rename -uid "F57CE001-4A54-F9EE-46E5-9A8940413369";
createNode file -n "pasted__file40";
	rename -uid "FBEEB5D5-4CD6-74CE-A368-0D87B5C5C5BE";
	setAttr ".cs" -type "string" "sRGB";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "pasted__Moon_Surface_basecolor1";
	rename -uid "03990B92-4C4E-D9B6-5A22-03A94F080AEC";
	setAttr ".cpth" -type "string" "C:/Users/hunte/Documents/maya\\2024\\substance/baked_images/pasted__Moon_Surface_basecolor1.exr";
createNode substanceNode -n "pasted__substanceNode3";
	rename -uid "66E01B99-4E60-63E1-C882-D58AD46626D7";
	addAttr -r false -ci true -h true -k true -sn "input_randomseed" -ln "input_randomseed" 
		-nn "$randomseed" -ct "substance_input" -smn 0 -smx 2147483647 -at "long";
	addAttr -r false -ci true -uac -h true -k true -sn "input_moon_color" -ln "input_moon_color" 
		-nn "Moon Color" -ct "substance_input" -at "float3" -nc 3;
	addAttr -r false -ci true -h true -k true -sn "input_moon_colorr" -ln "input_moon_colorR" 
		-nn "Moon Color" -dv 0.7098039984703064 -smn 0 -smx 0 -at "float" -p "input_moon_color";
	addAttr -r false -ci true -h true -k true -sn "input_moon_colorg" -ln "input_moon_colorG" 
		-nn "Moon Color" -dv 0.7098039984703064 -smn 0 -smx 0 -at "float" -p "input_moon_color";
	addAttr -r false -ci true -h true -k true -sn "input_moon_colorb" -ln "input_moon_colorB" 
		-nn "Moon Color" -dv 0.7098039984703064 -smn 0 -smx 0 -at "float" -p "input_moon_color";
	addAttr -r false -ci true -h true -k true -sn "input_moon_roughness" -ln "input_moon_roughness" 
		-nn "Moon Roughness" -ct "substance_input" -dv 0.6600000262260437 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_crater_density" -ln "input_crater_density" 
		-nn "Crater Density" -ct "substance_input" -dv 1 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_crater_size" -ln "input_crater_size" 
		-nn "Crater Size" -ct "substance_input" -dv 1 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_luminosity" -ln "input_luminosity" 
		-nn "Luminosity" -ct "substance_input" -dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_contrast" -ln "input_contrast" 
		-nn "Contrast" -ct "substance_input" -smn -1 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_hue_shift" -ln "input_hue_shift" 
		-nn "Hue Shift" -ct "substance_input" -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_saturation" -ln "input_saturation" 
		-nn "Saturation" -ct "substance_input" -dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_normal_intensity" -ln "input_normal_intensity" 
		-nn "Normal Intensity" -ct "substance_input" -dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_normal_format" -ln "input_normal_format" 
		-nn "Normal Format" -ct "substance_input" -smn 0 -smx 0 -at "long";
	addAttr -r false -ci true -h true -k true -sn "input_height_range" -ln "input_height_range" 
		-nn "Height Range" -ct "substance_input" -dv 1 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_height_position" -ln "input_height_position" 
		-nn "Height Position" -ct "substance_input" -dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_ambientocclusion_intensity" 
		-ln "input_ambientocclusion_intensity" -nn "Ambient Occlusion Intensity" -ct "substance_input" 
		-dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -ci true -h true -sn "output_metallic" -ln "output_metallic" -ct "substance_output" 
		-dt "string";
	addAttr -ci true -h true -sn "output_roughness" -ln "output_roughness" -ct "substance_output" 
		-dt "string";
	addAttr -ci true -h true -sn "output_basecolor" -ln "output_basecolor" -ct "substance_output" 
		-dt "string";
	addAttr -ci true -h true -sn "output_ambientocclusion" -ln "output_ambientocclusion" 
		-ct "substance_output" -dt "string";
	addAttr -ci true -h true -sn "output_normal" -ln "output_normal" -ct "substance_output" 
		-dt "string";
	addAttr -ci true -h true -sn "output_height" -ln "output_height" -ct "substance_output" 
		-dt "string";
	addAttr -r false -ci true -h true -k true -sn "input_channel_diffuse" -ln "input_channel_diffuse" 
		-nn "Diffuse" -ct "substance_input" -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_basecolor" -ln "input_channel_basecolor" 
		-nn "Base Color" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_normal" -ln "input_channel_normal" 
		-nn "Normal" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_specular" -ln "input_channel_specular" 
		-nn "Specular" -ct "substance_input" -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_glossiness" -ln "input_channel_glossiness" 
		-nn "Glossiness" -ct "substance_input" -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_roughness" -ln "input_channel_roughness" 
		-nn "Roughness" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_metallic" -ln "input_channel_metallic" 
		-nn "Metallic" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_height" -ln "input_channel_height" 
		-nn "Height" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_ambientocclusion" -ln "input_channel_ambientocclusion" 
		-nn "Ambient Occlusion" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	setAttr ".sbs" -type "string" "C:/Users/hunte/Documents/Education/Fall 2023/Substance surfaces/moon_surface.sbsar";
	setAttr ".ctd" yes;
	setAttr ".wkfl" -type "string" "Arnold";
	setAttr ".storedHeight" 9;
	setAttr ".pst" -type "stringArray" 1 "<sbspresets formatversion=\"1.1\" count=\"3\" >\n <sbspreset pkgurl=\"pkg://moon_surface\" label=\"Sulfer Rich Moon Surface\" >\n  <presetinput identifier=\"moon_color\" uid=\"931447336\" type=\"2\" value=\"0.875,0.812659,0.466667\" />\n  <presetinput identifier=\"moon_roughness\" uid=\"939161379\" type=\"0\" value=\"0.66\" />\n  <presetinput identifier=\"crater_density\" uid=\"931451369\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"crater_size\" uid=\"931451150\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"channel_diffuse\" uid=\"744089660\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_basecolor\" uid=\"586469398\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_normal\" uid=\"586469397\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_specular\" uid=\"744089603\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_glossiness\" uid=\"744089602\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_roughness\" uid=\"586469401\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_metallic\" uid=\"586469400\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_height\" uid=\"586469406\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_ambientocclusion\" uid=\"689414011\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"luminosity\" uid=\"1540245785\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"contrast\" uid=\"608927803\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"hue_shift\" uid=\"1540245867\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"saturation\" uid=\"1540245772\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_intensity\" uid=\"1540339320\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_format\" uid=\"586466101\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"height_range\" uid=\"602913369\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"height_position\" uid=\"602913320\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"ambientocclusion_intensity\" uid=\"700229330\" type=\"0\" value=\"0.5\" />\n </sbspreset>\n <sbspreset pkgurl=\"pkg://moon_surface\" label=\"Ice Moon Surface\" >\n  <presetinput identifier=\"moon_color\" uid=\"931447336\" type=\"2\" value=\"0.4,0.454902,0.552941\" />\n  <presetinput identifier=\"moon_roughness\" uid=\"939161379\" type=\"0\" value=\"0.59\" />\n  <presetinput identifier=\"crater_density\" uid=\"931451369\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"crater_size\" uid=\"931451150\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"channel_diffuse\" uid=\"744089660\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_basecolor\" uid=\"586469398\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_normal\" uid=\"586469397\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_specular\" uid=\"744089603\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_glossiness\" uid=\"744089602\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_roughness\" uid=\"586469401\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_metallic\" uid=\"586469400\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_height\" uid=\"586469406\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_ambientocclusion\" uid=\"689414011\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"luminosity\" uid=\"1540245785\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"contrast\" uid=\"608927803\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"hue_shift\" uid=\"1540245867\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"saturation\" uid=\"1540245772\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_intensity\" uid=\"1540339320\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_format\" uid=\"586466101\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"height_range\" uid=\"602913369\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"height_position\" uid=\"602913320\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"ambientocclusion_intensity\" uid=\"700229330\" type=\"0\" value=\"0.5\" />\n </sbspreset>\n <sbspreset pkgurl=\"pkg://moon_surface\" label=\"Iron Rich Moon Surface\" >\n  <presetinput identifier=\"moon_color\" uid=\"931447336\" type=\"2\" value=\"0.833333,0.700647,0.565359\" />\n  <presetinput identifier=\"moon_roughness\" uid=\"939161379\" type=\"0\" value=\"0.59\" />\n  <presetinput identifier=\"crater_density\" uid=\"931451369\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"crater_size\" uid=\"931451150\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"channel_diffuse\" uid=\"744089660\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_basecolor\" uid=\"586469398\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_normal\" uid=\"586469397\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_specular\" uid=\"744089603\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_glossiness\" uid=\"744089602\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_roughness\" uid=\"586469401\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_metallic\" uid=\"586469400\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_height\" uid=\"586469406\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_ambientocclusion\" uid=\"689414011\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"luminosity\" uid=\"1540245785\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"contrast\" uid=\"608927803\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"hue_shift\" uid=\"1540245867\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"saturation\" uid=\"1540245772\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_intensity\" uid=\"1540339320\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_format\" uid=\"586466101\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"height_range\" uid=\"602913369\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"height_position\" uid=\"602913320\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"ambientocclusion_intensity\" uid=\"700229330\" type=\"0\" value=\"0.5\" />\n </sbspreset>\n</sbspresets>\n"  ;
createNode place2dTexture -n "pasted__place2dTexture4";
	rename -uid "CA1F154B-41CB-01C6-3A57-159C0371D432";
createNode file -n "pasted__file41";
	rename -uid "BAE45779-4D17-96D6-003C-E28ED3E4A22D";
	setAttr ".ail" yes;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "pasted__Moon_Surface_ambientocclusion1";
	rename -uid "1D366396-4FA8-1E39-DD0E-72AE2059E3BF";
	setAttr ".cpth" -type "string" "C:/Users/hunte/Documents/maya\\2024\\substance/baked_images/pasted__Moon_Surface_ambientocclusion1.exr";
createNode bump2d -n "pasted__bump2d4";
	rename -uid "2C5BDED6-4373-AF5E-D109-2B826B6A461B";
	setAttr ".bi" 1;
	setAttr ".vc2" -type "float3" 9.9999997e-06 9.9999997e-06 0 ;
createNode file -n "pasted__file42";
	rename -uid "345D213C-4501-6BDD-BAA7-81A7A8CD5FC0";
	setAttr ".ail" yes;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "pasted__Moon_Surface_normal1";
	rename -uid "E2CBD56B-4550-8465-AF2A-BF8B1BE860C3";
	setAttr ".cpth" -type "string" "C:/Users/hunte/Documents/maya\\2024\\substance/baked_images/pasted__Moon_Surface_normal1.exr";
createNode file -n "pasted__file39";
	rename -uid "32C25B7E-4475-46CE-F6C0-158CBE8B7F6A";
	setAttr ".ail" yes;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "pasted__Moon_Surface_roughness1";
	rename -uid "26319D3F-4B67-8450-D6AB-DF8ADE34B503";
	setAttr ".cpth" -type "string" "C:/Users/hunte/Documents/maya\\2024\\substance/baked_images/pasted__Moon_Surface_roughness1.exr";
createNode file -n "pasted__file38";
	rename -uid "6706ABE1-483E-9691-06DF-579593CEE53A";
	setAttr ".ail" yes;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "pasted__Moon_Surface_metallic1";
	rename -uid "7F02F755-4464-0AF2-92F3-57885FF6DF02";
	setAttr ".cpth" -type "string" "C:/Users/hunte/Documents/maya\\2024\\substance/baked_images/pasted__Moon_Surface_metallic1.png";
createNode displacementShader -n "pasted__displacementShader4";
	rename -uid "BAF83945-44AA-B0AD-AD7C-06BFAB84D012";
createNode file -n "pasted__file43";
	rename -uid "605AED03-4A1F-50B5-2F5D-92BD578CDC86";
	setAttr ".ail" yes;
	setAttr ".ao" -0.5;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "pasted__Moon_Surface_height1";
	rename -uid "CCA69D08-4F2A-E15C-13FC-FB8B1412474F";
	setAttr ".cpth" -type "string" "C:/Users/hunte/Documents/maya\\2024\\substance/baked_images/pasted__Moon_Surface_height1.exr";
createNode materialInfo -n "pasted__pasted__materialInfo8";
	rename -uid "1F90A43B-4809-1F52-5D1C-739D71217620";
createNode shadingEngine -n "pasted__pasted__set4";
	rename -uid "67E14BE5-40C6-DB4D-D9C7-B4935C141CBE";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode displacementShader -n "pasted__pasted__displacementShader4";
	rename -uid "C7BB52E3-42D1-D653-39AC-6DBF0F139B48";
createNode file -n "pasted__pasted__file43";
	rename -uid "76083C1F-4406-B9F4-CE93-EBB63488E124";
	setAttr ".ail" yes;
	setAttr ".ao" -0.5;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "pasted__pasted__Moon_Surface_height1";
	rename -uid "E6E1AB86-475B-62BA-0E68-90BE07717245";
	setAttr ".cpth" -type "string" "C:/Users/hunte/Documents/maya\\2024\\substance/baked_images/pasted__pasted__Moon_Surface_height1.exr";
createNode substanceNode -n "pasted__pasted__substanceNode3";
	rename -uid "6DBECD0D-4FA2-13EB-46E9-60AC96F96FDF";
	addAttr -r false -ci true -h true -k true -sn "input_randomseed" -ln "input_randomseed" 
		-nn "$randomseed" -ct "substance_input" -smn 0 -smx 2147483647 -at "long";
	addAttr -r false -ci true -uac -h true -k true -sn "input_moon_color" -ln "input_moon_color" 
		-nn "Moon Color" -ct "substance_input" -at "float3" -nc 3;
	addAttr -r false -ci true -h true -k true -sn "input_moon_colorr" -ln "input_moon_colorR" 
		-nn "Moon Color" -dv 0.7098039984703064 -smn 0 -smx 0 -at "float" -p "input_moon_color";
	addAttr -r false -ci true -h true -k true -sn "input_moon_colorg" -ln "input_moon_colorG" 
		-nn "Moon Color" -dv 0.7098039984703064 -smn 0 -smx 0 -at "float" -p "input_moon_color";
	addAttr -r false -ci true -h true -k true -sn "input_moon_colorb" -ln "input_moon_colorB" 
		-nn "Moon Color" -dv 0.7098039984703064 -smn 0 -smx 0 -at "float" -p "input_moon_color";
	addAttr -r false -ci true -h true -k true -sn "input_moon_roughness" -ln "input_moon_roughness" 
		-nn "Moon Roughness" -ct "substance_input" -dv 0.6600000262260437 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_crater_density" -ln "input_crater_density" 
		-nn "Crater Density" -ct "substance_input" -dv 1 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_crater_size" -ln "input_crater_size" 
		-nn "Crater Size" -ct "substance_input" -dv 1 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_luminosity" -ln "input_luminosity" 
		-nn "Luminosity" -ct "substance_input" -dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_contrast" -ln "input_contrast" 
		-nn "Contrast" -ct "substance_input" -smn -1 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_hue_shift" -ln "input_hue_shift" 
		-nn "Hue Shift" -ct "substance_input" -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_saturation" -ln "input_saturation" 
		-nn "Saturation" -ct "substance_input" -dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_normal_intensity" -ln "input_normal_intensity" 
		-nn "Normal Intensity" -ct "substance_input" -dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_normal_format" -ln "input_normal_format" 
		-nn "Normal Format" -ct "substance_input" -smn 0 -smx 0 -at "long";
	addAttr -r false -ci true -h true -k true -sn "input_height_range" -ln "input_height_range" 
		-nn "Height Range" -ct "substance_input" -dv 1 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_height_position" -ln "input_height_position" 
		-nn "Height Position" -ct "substance_input" -dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_ambientocclusion_intensity" 
		-ln "input_ambientocclusion_intensity" -nn "Ambient Occlusion Intensity" -ct "substance_input" 
		-dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -ci true -h true -sn "output_height" -ln "output_height" -ct "substance_output" 
		-dt "string";
	addAttr -r false -ci true -h true -k true -sn "input_channel_diffuse" -ln "input_channel_diffuse" 
		-nn "Diffuse" -ct "substance_input" -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_basecolor" -ln "input_channel_basecolor" 
		-nn "Base Color" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_normal" -ln "input_channel_normal" 
		-nn "Normal" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_specular" -ln "input_channel_specular" 
		-nn "Specular" -ct "substance_input" -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_glossiness" -ln "input_channel_glossiness" 
		-nn "Glossiness" -ct "substance_input" -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_roughness" -ln "input_channel_roughness" 
		-nn "Roughness" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_metallic" -ln "input_channel_metallic" 
		-nn "Metallic" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_height" -ln "input_channel_height" 
		-nn "Height" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_ambientocclusion" -ln "input_channel_ambientocclusion" 
		-nn "Ambient Occlusion" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	setAttr ".sbs" -type "string" "C:/Users/hunte/Documents/Education/Fall 2023/Substance surfaces/moon_surface.sbsar";
	setAttr ".ctd" yes;
	setAttr ".wkfl" -type "string" "Arnold";
	setAttr ".storedHeight" 9;
	setAttr ".pst" -type "stringArray" 1 "<sbspresets formatversion=\"1.1\" count=\"3\" >\n <sbspreset pkgurl=\"pkg://moon_surface\" label=\"Sulfer Rich Moon Surface\" >\n  <presetinput identifier=\"moon_color\" uid=\"931447336\" type=\"2\" value=\"0.875,0.812659,0.466667\" />\n  <presetinput identifier=\"moon_roughness\" uid=\"939161379\" type=\"0\" value=\"0.66\" />\n  <presetinput identifier=\"crater_density\" uid=\"931451369\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"crater_size\" uid=\"931451150\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"channel_diffuse\" uid=\"744089660\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_basecolor\" uid=\"586469398\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_normal\" uid=\"586469397\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_specular\" uid=\"744089603\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_glossiness\" uid=\"744089602\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_roughness\" uid=\"586469401\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_metallic\" uid=\"586469400\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_height\" uid=\"586469406\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_ambientocclusion\" uid=\"689414011\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"luminosity\" uid=\"1540245785\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"contrast\" uid=\"608927803\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"hue_shift\" uid=\"1540245867\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"saturation\" uid=\"1540245772\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_intensity\" uid=\"1540339320\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_format\" uid=\"586466101\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"height_range\" uid=\"602913369\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"height_position\" uid=\"602913320\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"ambientocclusion_intensity\" uid=\"700229330\" type=\"0\" value=\"0.5\" />\n </sbspreset>\n <sbspreset pkgurl=\"pkg://moon_surface\" label=\"Ice Moon Surface\" >\n  <presetinput identifier=\"moon_color\" uid=\"931447336\" type=\"2\" value=\"0.4,0.454902,0.552941\" />\n  <presetinput identifier=\"moon_roughness\" uid=\"939161379\" type=\"0\" value=\"0.59\" />\n  <presetinput identifier=\"crater_density\" uid=\"931451369\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"crater_size\" uid=\"931451150\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"channel_diffuse\" uid=\"744089660\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_basecolor\" uid=\"586469398\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_normal\" uid=\"586469397\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_specular\" uid=\"744089603\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_glossiness\" uid=\"744089602\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_roughness\" uid=\"586469401\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_metallic\" uid=\"586469400\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_height\" uid=\"586469406\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_ambientocclusion\" uid=\"689414011\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"luminosity\" uid=\"1540245785\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"contrast\" uid=\"608927803\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"hue_shift\" uid=\"1540245867\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"saturation\" uid=\"1540245772\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_intensity\" uid=\"1540339320\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_format\" uid=\"586466101\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"height_range\" uid=\"602913369\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"height_position\" uid=\"602913320\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"ambientocclusion_intensity\" uid=\"700229330\" type=\"0\" value=\"0.5\" />\n </sbspreset>\n <sbspreset pkgurl=\"pkg://moon_surface\" label=\"Iron Rich Moon Surface\" >\n  <presetinput identifier=\"moon_color\" uid=\"931447336\" type=\"2\" value=\"0.833333,0.700647,0.565359\" />\n  <presetinput identifier=\"moon_roughness\" uid=\"939161379\" type=\"0\" value=\"0.59\" />\n  <presetinput identifier=\"crater_density\" uid=\"931451369\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"crater_size\" uid=\"931451150\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"channel_diffuse\" uid=\"744089660\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_basecolor\" uid=\"586469398\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_normal\" uid=\"586469397\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_specular\" uid=\"744089603\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_glossiness\" uid=\"744089602\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_roughness\" uid=\"586469401\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_metallic\" uid=\"586469400\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_height\" uid=\"586469406\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_ambientocclusion\" uid=\"689414011\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"luminosity\" uid=\"1540245785\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"contrast\" uid=\"608927803\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"hue_shift\" uid=\"1540245867\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"saturation\" uid=\"1540245772\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_intensity\" uid=\"1540339320\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_format\" uid=\"586466101\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"height_range\" uid=\"602913369\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"height_position\" uid=\"602913320\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"ambientocclusion_intensity\" uid=\"700229330\" type=\"0\" value=\"0.5\" />\n </sbspreset>\n</sbspresets>\n"  ;
createNode place2dTexture -n "pasted__pasted__place2dTexture4";
	rename -uid "D8459E51-4D9C-88D7-7A57-C582402C5DB3";
createNode materialInfo -n "pasted__pasted__materialInfo9";
	rename -uid "6D06026E-4545-BB0E-8905-539AC0367245";
createNode shadingEngine -n "pasted__pasted__set5";
	rename -uid "B468CA86-4B75-1636-7D96-ECAEF6978AD9";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode displacementShader -n "pasted__pasted__displacementShader5";
	rename -uid "98D00429-42EF-C0DF-3D5D-BF90215158F9";
createNode file -n "pasted__pasted__file44";
	rename -uid "420A4324-4FB3-736B-228E-5392F1CE60E6";
	setAttr ".ail" yes;
	setAttr ".ao" -0.5;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "pasted__pasted__Moon_Surface_height2";
	rename -uid "CBA4BBCD-4760-82BB-28CE-558CFE45F445";
	setAttr ".cpth" -type "string" "C:/Users/hunte/Documents/maya\\2024\\substance/baked_images/pasted__pasted__Moon_Surface_height2.exr";
createNode substanceNode -n "pasted__pasted__substanceNode4";
	rename -uid "53F79C8B-4F6F-70FD-6BBB-9A8F1AD0CF2E";
	addAttr -r false -ci true -h true -k true -sn "input_randomseed" -ln "input_randomseed" 
		-nn "$randomseed" -ct "substance_input" -smn 0 -smx 2147483647 -at "long";
	addAttr -r false -ci true -uac -h true -k true -sn "input_moon_color" -ln "input_moon_color" 
		-nn "Moon Color" -ct "substance_input" -at "float3" -nc 3;
	addAttr -r false -ci true -h true -k true -sn "input_moon_colorr" -ln "input_moon_colorR" 
		-nn "Moon Color" -dv 0.7098039984703064 -smn 0 -smx 0 -at "float" -p "input_moon_color";
	addAttr -r false -ci true -h true -k true -sn "input_moon_colorg" -ln "input_moon_colorG" 
		-nn "Moon Color" -dv 0.7098039984703064 -smn 0 -smx 0 -at "float" -p "input_moon_color";
	addAttr -r false -ci true -h true -k true -sn "input_moon_colorb" -ln "input_moon_colorB" 
		-nn "Moon Color" -dv 0.7098039984703064 -smn 0 -smx 0 -at "float" -p "input_moon_color";
	addAttr -r false -ci true -h true -k true -sn "input_moon_roughness" -ln "input_moon_roughness" 
		-nn "Moon Roughness" -ct "substance_input" -dv 0.6600000262260437 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_crater_density" -ln "input_crater_density" 
		-nn "Crater Density" -ct "substance_input" -dv 1 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_crater_size" -ln "input_crater_size" 
		-nn "Crater Size" -ct "substance_input" -dv 1 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_luminosity" -ln "input_luminosity" 
		-nn "Luminosity" -ct "substance_input" -dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_contrast" -ln "input_contrast" 
		-nn "Contrast" -ct "substance_input" -smn -1 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_hue_shift" -ln "input_hue_shift" 
		-nn "Hue Shift" -ct "substance_input" -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_saturation" -ln "input_saturation" 
		-nn "Saturation" -ct "substance_input" -dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_normal_intensity" -ln "input_normal_intensity" 
		-nn "Normal Intensity" -ct "substance_input" -dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_normal_format" -ln "input_normal_format" 
		-nn "Normal Format" -ct "substance_input" -smn 0 -smx 0 -at "long";
	addAttr -r false -ci true -h true -k true -sn "input_height_range" -ln "input_height_range" 
		-nn "Height Range" -ct "substance_input" -dv 1 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_height_position" -ln "input_height_position" 
		-nn "Height Position" -ct "substance_input" -dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_ambientocclusion_intensity" 
		-ln "input_ambientocclusion_intensity" -nn "Ambient Occlusion Intensity" -ct "substance_input" 
		-dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -ci true -h true -sn "output_height" -ln "output_height" -ct "substance_output" 
		-dt "string";
	addAttr -r false -ci true -h true -k true -sn "input_channel_diffuse" -ln "input_channel_diffuse" 
		-nn "Diffuse" -ct "substance_input" -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_basecolor" -ln "input_channel_basecolor" 
		-nn "Base Color" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_normal" -ln "input_channel_normal" 
		-nn "Normal" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_specular" -ln "input_channel_specular" 
		-nn "Specular" -ct "substance_input" -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_glossiness" -ln "input_channel_glossiness" 
		-nn "Glossiness" -ct "substance_input" -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_roughness" -ln "input_channel_roughness" 
		-nn "Roughness" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_metallic" -ln "input_channel_metallic" 
		-nn "Metallic" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_height" -ln "input_channel_height" 
		-nn "Height" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_ambientocclusion" -ln "input_channel_ambientocclusion" 
		-nn "Ambient Occlusion" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	setAttr ".sbs" -type "string" "C:/Users/hunte/Documents/Education/Fall 2023/Substance surfaces/moon_surface.sbsar";
	setAttr ".ctd" yes;
	setAttr ".wkfl" -type "string" "Arnold";
	setAttr ".storedHeight" 9;
	setAttr ".pst" -type "stringArray" 1 "<sbspresets formatversion=\"1.1\" count=\"3\" >\n <sbspreset pkgurl=\"pkg://moon_surface\" label=\"Sulfer Rich Moon Surface\" >\n  <presetinput identifier=\"moon_color\" uid=\"931447336\" type=\"2\" value=\"0.875,0.812659,0.466667\" />\n  <presetinput identifier=\"moon_roughness\" uid=\"939161379\" type=\"0\" value=\"0.66\" />\n  <presetinput identifier=\"crater_density\" uid=\"931451369\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"crater_size\" uid=\"931451150\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"channel_diffuse\" uid=\"744089660\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_basecolor\" uid=\"586469398\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_normal\" uid=\"586469397\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_specular\" uid=\"744089603\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_glossiness\" uid=\"744089602\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_roughness\" uid=\"586469401\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_metallic\" uid=\"586469400\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_height\" uid=\"586469406\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_ambientocclusion\" uid=\"689414011\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"luminosity\" uid=\"1540245785\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"contrast\" uid=\"608927803\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"hue_shift\" uid=\"1540245867\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"saturation\" uid=\"1540245772\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_intensity\" uid=\"1540339320\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_format\" uid=\"586466101\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"height_range\" uid=\"602913369\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"height_position\" uid=\"602913320\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"ambientocclusion_intensity\" uid=\"700229330\" type=\"0\" value=\"0.5\" />\n </sbspreset>\n <sbspreset pkgurl=\"pkg://moon_surface\" label=\"Ice Moon Surface\" >\n  <presetinput identifier=\"moon_color\" uid=\"931447336\" type=\"2\" value=\"0.4,0.454902,0.552941\" />\n  <presetinput identifier=\"moon_roughness\" uid=\"939161379\" type=\"0\" value=\"0.59\" />\n  <presetinput identifier=\"crater_density\" uid=\"931451369\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"crater_size\" uid=\"931451150\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"channel_diffuse\" uid=\"744089660\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_basecolor\" uid=\"586469398\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_normal\" uid=\"586469397\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_specular\" uid=\"744089603\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_glossiness\" uid=\"744089602\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_roughness\" uid=\"586469401\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_metallic\" uid=\"586469400\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_height\" uid=\"586469406\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_ambientocclusion\" uid=\"689414011\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"luminosity\" uid=\"1540245785\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"contrast\" uid=\"608927803\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"hue_shift\" uid=\"1540245867\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"saturation\" uid=\"1540245772\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_intensity\" uid=\"1540339320\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_format\" uid=\"586466101\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"height_range\" uid=\"602913369\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"height_position\" uid=\"602913320\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"ambientocclusion_intensity\" uid=\"700229330\" type=\"0\" value=\"0.5\" />\n </sbspreset>\n <sbspreset pkgurl=\"pkg://moon_surface\" label=\"Iron Rich Moon Surface\" >\n  <presetinput identifier=\"moon_color\" uid=\"931447336\" type=\"2\" value=\"0.833333,0.700647,0.565359\" />\n  <presetinput identifier=\"moon_roughness\" uid=\"939161379\" type=\"0\" value=\"0.59\" />\n  <presetinput identifier=\"crater_density\" uid=\"931451369\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"crater_size\" uid=\"931451150\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"channel_diffuse\" uid=\"744089660\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_basecolor\" uid=\"586469398\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_normal\" uid=\"586469397\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_specular\" uid=\"744089603\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_glossiness\" uid=\"744089602\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_roughness\" uid=\"586469401\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_metallic\" uid=\"586469400\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_height\" uid=\"586469406\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_ambientocclusion\" uid=\"689414011\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"luminosity\" uid=\"1540245785\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"contrast\" uid=\"608927803\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"hue_shift\" uid=\"1540245867\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"saturation\" uid=\"1540245772\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_intensity\" uid=\"1540339320\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_format\" uid=\"586466101\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"height_range\" uid=\"602913369\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"height_position\" uid=\"602913320\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"ambientocclusion_intensity\" uid=\"700229330\" type=\"0\" value=\"0.5\" />\n </sbspreset>\n</sbspresets>\n"  ;
createNode place2dTexture -n "pasted__pasted__place2dTexture5";
	rename -uid "B09EDB47-4C46-1214-DF13-B6B9324C4BEA";
createNode phong -n "v_layered4";
	rename -uid "64A97808-459E-2DFA-D2CE-388FC311227B";
createNode shadingEngine -n "v_layered4SG";
	rename -uid "DDE4157A-4253-D0E6-3A42-3C9C2E1A7807";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo8";
	rename -uid "A8701925-4CB7-F6DF-8432-55A1BB39FE03";
createNode file -n "file38";
	rename -uid "AEBCD3C0-4FDB-E606-BE30-A6A2CBF03F38";
	setAttr ".cs" -type "string" "sRGB";
createNode groupId -n "groupId10";
	rename -uid "0F39D97E-44A3-F3B0-CB18-63B2336553EE";
	setAttr ".ihi" 0;
createNode substanceNode -n "substanceNode3";
	rename -uid "0D2F2544-4DEB-D2F3-E1A5-6D971FFEC75A";
	addAttr -r false -ci true -h true -k true -sn "input_randomseed" -ln "input_randomseed" 
		-nn "$randomseed" -ct "substance_input" -smn 0 -smx 2147483647 -at "long";
	addAttr -r false -ci true -uac -h true -k true -sn "input_stone_color" -ln "input_stone_color" 
		-nn "Stone Color" -ct "substance_input" -at "float3" -nc 3;
	addAttr -r false -ci true -h true -k true -sn "input_stone_colorr" -ln "input_stone_colorR" 
		-nn "Stone Color" -dv 0.50980401039123535 -smn 0 -smx 0 -at "float" -p "input_stone_color";
	addAttr -r false -ci true -h true -k true -sn "input_stone_colorg" -ln "input_stone_colorG" 
		-nn "Stone Color" -dv 0.36078399419784546 -smn 0 -smx 0 -at "float" -p "input_stone_color";
	addAttr -r false -ci true -h true -k true -sn "input_stone_colorb" -ln "input_stone_colorB" 
		-nn "Stone Color" -dv 0.17647099494934082 -smn 0 -smx 0 -at "float" -p "input_stone_color";
	addAttr -r false -ci true -uac -h true -k true -sn "input_color_variation" -ln "input_color_variation" 
		-nn "Color Variation" -ct "substance_input" -at "float3" -nc 3;
	addAttr -r false -ci true -h true -k true -sn "input_color_variationr" -ln "input_color_variationR" 
		-nn "Color Variation" -dv 0.39607799053192139 -smn 0 -smx 0 -at "float" -p "input_color_variation";
	addAttr -r false -ci true -h true -k true -sn "input_color_variationg" -ln "input_color_variationG" 
		-nn "Color Variation" -dv 0.34117600321769714 -smn 0 -smx 0 -at "float" -p "input_color_variation";
	addAttr -r false -ci true -h true -k true -sn "input_color_variationb" -ln "input_color_variationB" 
		-nn "Color Variation" -dv 0.19607800245285034 -smn 0 -smx 0 -at "float" -p "input_color_variation";
	addAttr -r false -ci true -h true -k true -sn "input_color_variation_intensity" 
		-ln "input_color_variation_intensity" -nn "Color Variation Intensity" -ct "substance_input" 
		-dv 0.51999998092651367 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_color_transition" -ln "input_color_transition" 
		-nn "Color Transition" -ct "substance_input" -dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -uac -h true -k true -sn "input_shadow_color" -ln "input_shadow_color" 
		-nn "Shadow Color" -ct "substance_input" -at "float3" -nc 3;
	addAttr -r false -ci true -h true -k true -sn "input_shadow_colorr" -ln "input_shadow_colorR" 
		-nn "Shadow Color" -dv 0.38431400060653687 -smn 0 -smx 0 -at "float" -p "input_shadow_color";
	addAttr -r false -ci true -h true -k true -sn "input_shadow_colorg" -ln "input_shadow_colorG" 
		-nn "Shadow Color" -dv 0.31764701008796692 -smn 0 -smx 0 -at "float" -p "input_shadow_color";
	addAttr -r false -ci true -h true -k true -sn "input_shadow_colorb" -ln "input_shadow_colorB" 
		-nn "Shadow Color" -dv 0.20000000298023224 -smn 0 -smx 0 -at "float" -p "input_shadow_color";
	addAttr -r false -ci true -h true -k true -sn "input_shadow_intensity" -ln "input_shadow_intensity" 
		-nn "Shadow Intensity" -ct "substance_input" -dv 1 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -uac -h true -k true -sn "input_highlight_color" -ln "input_highlight_color" 
		-nn "Highlight Color" -ct "substance_input" -at "float3" -nc 3;
	addAttr -r false -ci true -h true -k true -sn "input_highlight_colorr" -ln "input_highlight_colorR" 
		-nn "Highlight Color" -dv 0.2901960015296936 -smn 0 -smx 0 -at "float" -p "input_highlight_color";
	addAttr -r false -ci true -h true -k true -sn "input_highlight_colorg" -ln "input_highlight_colorG" 
		-nn "Highlight Color" -dv 0.19215700030326843 -smn 0 -smx 0 -at "float" -p "input_highlight_color";
	addAttr -r false -ci true -h true -k true -sn "input_highlight_colorb" -ln "input_highlight_colorB" 
		-nn "Highlight Color" -dv 0.10588199645280838 -smn 0 -smx 0 -at "float" -p "input_highlight_color";
	addAttr -r false -ci true -h true -k true -sn "input_highlight_intensity" -ln "input_highlight_intensity" 
		-nn "Highlight Intensity" -ct "substance_input" -dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_roughness" -ln "input_roughness" 
		-nn "Roughness" -ct "substance_input" -dv 0.80000001192092896 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_edge_roundness" -ln "input_edge_roundness" 
		-nn "Edge Roundness" -ct "substance_input" -dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_height_variations" -ln "input_height_variations" 
		-nn "Height Variations" -ct "substance_input" -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_trim_density" -ln "input_trim_density" 
		-nn "Trim Density" -ct "substance_input" -dv 0.60000002384185791 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_cracks_intensity" -ln "input_cracks_intensity" 
		-nn "Cracks Intensity" -ct "substance_input" -dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_cuts_density" -ln "input_cuts_density" 
		-nn "Cuts Density" -ct "substance_input" -dv 1 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_luminosity" -ln "input_luminosity" 
		-nn "Luminosity" -ct "substance_input" -dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_contrast" -ln "input_contrast" 
		-nn "Contrast" -ct "substance_input" -smn -1 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_hue_shift" -ln "input_hue_shift" 
		-nn "Hue Shift" -ct "substance_input" -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_saturation" -ln "input_saturation" 
		-nn "Saturation" -ct "substance_input" -dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_normal_intensity" -ln "input_normal_intensity" 
		-nn "Normal Intensity" -ct "substance_input" -dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_normal_format" -ln "input_normal_format" 
		-nn "Normal Format" -ct "substance_input" -smn 0 -smx 0 -at "long";
	addAttr -r false -ci true -h true -k true -sn "input_height_range" -ln "input_height_range" 
		-nn "Height Range" -ct "substance_input" -dv 1 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_height_position" -ln "input_height_position" 
		-nn "Height Position" -ct "substance_input" -dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_ambientocclusion_intensity" 
		-ln "input_ambientocclusion_intensity" -nn "Ambient Occlusion Intensity" -ct "substance_input" 
		-dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -ci true -h true -sn "output_diffuse" -ln "output_diffuse" -ct "substance_output" 
		-dt "string";
	addAttr -ci true -h true -sn "output_basecolor" -ln "output_basecolor" -ct "substance_output" 
		-dt "string";
	addAttr -ci true -h true -sn "output_normal" -ln "output_normal" -ct "substance_output" 
		-dt "string";
	addAttr -ci true -h true -sn "output_roughness" -ln "output_roughness" -ct "substance_output" 
		-dt "string";
	addAttr -ci true -h true -sn "output_metallic" -ln "output_metallic" -ct "substance_output" 
		-dt "string";
	addAttr -ci true -h true -sn "output_height" -ln "output_height" -ct "substance_output" 
		-dt "string";
	addAttr -ci true -h true -sn "output_ambientocclusion" -ln "output_ambientocclusion" 
		-ct "substance_output" -dt "string";
	addAttr -r false -ci true -h true -k true -sn "input_channel_diffuse" -ln "input_channel_diffuse" 
		-nn "Diffuse" -ct "substance_input" -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_basecolor" -ln "input_channel_basecolor" 
		-nn "Base Color" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_normal" -ln "input_channel_normal" 
		-nn "Normal" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_specular" -ln "input_channel_specular" 
		-nn "Specular" -ct "substance_input" -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_glossiness" -ln "input_channel_glossiness" 
		-nn "Glossiness" -ct "substance_input" -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_roughness" -ln "input_channel_roughness" 
		-nn "Roughness" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_metallic" -ln "input_channel_metallic" 
		-nn "Metallic" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_height" -ln "input_channel_height" 
		-nn "Height" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_ambientocclusion" -ln "input_channel_ambientocclusion" 
		-nn "Ambient Occlusion" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	setAttr ".sbs" -type "string" "C:/Users/hunte/Documents/Education/Fall 2023/Substance surfaces/stylized_cobblestone_pavement.sbsar";
	setAttr ".ctd" yes;
	setAttr ".wkfl" -type "string" "Arnold";
	setAttr ".storedHeight" 9;
	setAttr ".pst" -type "stringArray" 1 "<sbspresets formatversion=\"1.1\" count=\"3\" >\n <sbspreset pkgurl=\"pkg://stylized_cobblestone_pavement\" label=\"Grey Green Cracked Stone Tiles\" >\n  <presetinput identifier=\"stone_color\" uid=\"2593441964\" type=\"2\" value=\"0.34902,0.341176,0.290196,1\" />\n  <presetinput identifier=\"color_variation\" uid=\"2574062539\" type=\"2\" value=\"0.4,0.388235,0.32549\" />\n  <presetinput identifier=\"color_variation_intensity\" uid=\"2574098640\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"shadow_color\" uid=\"2573307243\" type=\"2\" value=\"0.286275,0.290196,0.266667\" />\n  <presetinput identifier=\"shadow_intensity\" uid=\"2573336111\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"highlight_color\" uid=\"2573443823\" type=\"2\" value=\"0.396078,0.396078,0.34902\" />\n  <presetinput identifier=\"highlight_intensity\" uid=\"2573422157\" type=\"0\" value=\"0.49\" />\n  <presetinput identifier=\"edge_roundness\" uid=\"2571365762\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"height_variations\" uid=\"2593447025\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"trim_density\" uid=\"2575049286\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"cracks_intensity\" uid=\"2574918014\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"channel_diffuse\" uid=\"2203359624\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_basecolor\" uid=\"2381947298\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_normal\" uid=\"2381947297\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_specular\" uid=\"2203359671\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_glossiness\" uid=\"2203359670\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_roughness\" uid=\"2381947309\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_metallic\" uid=\"2381947308\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_height\" uid=\"2381947306\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_ambientocclusion\" uid=\"2249912015\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"luminosity\" uid=\"4106434733\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"contrast\" uid=\"2336682383\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"hue_shift\" uid=\"4106434783\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"saturation\" uid=\"4106434744\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_intensity\" uid=\"4106405836\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_format\" uid=\"2381951617\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"height_range\" uid=\"2363673581\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"height_position\" uid=\"2363673500\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"ambientocclusion_intensity\" uid=\"2259801958\" type=\"0\" value=\"0.5\" />\n </sbspreset>\n <sbspreset pkgurl=\"pkg://stylized_cobblestone_pavement\" label=\"Light Brown Cracked Stone Tiles\" >\n  <presetinput identifier=\"stone_color\" uid=\"2593441964\" type=\"2\" value=\"0.529412,0.360784,0.298039,1\" />\n  <presetinput identifier=\"color_variation\" uid=\"2574062539\" type=\"2\" value=\"0.344828,0.344828,0.344828\" />\n  <presetinput identifier=\"color_variation_intensity\" uid=\"2574098640\" type=\"0\" value=\"0.52\" />\n  <presetinput identifier=\"shadow_color\" uid=\"2573307243\" type=\"2\" value=\"0.592157,0.478431,0.431373\" />\n  <presetinput identifier=\"shadow_intensity\" uid=\"2573336111\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"highlight_color\" uid=\"2573443823\" type=\"2\" value=\"0.866667,0.717647,0.635294\" />\n  <presetinput identifier=\"highlight_intensity\" uid=\"2573422157\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"edge_roundness\" uid=\"2571365762\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"height_variations\" uid=\"2593447025\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"trim_density\" uid=\"2575049286\" type=\"0\" value=\"0.6\" />\n  <presetinput identifier=\"cracks_intensity\" uid=\"2574918014\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"cuts_density\" uid=\"2575087350\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"channel_diffuse\" uid=\"2203359624\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_basecolor\" uid=\"2381947298\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_normal\" uid=\"2381947297\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_specular\" uid=\"2203359671\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_glossiness\" uid=\"2203359670\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_roughness\" uid=\"2381947309\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_metallic\" uid=\"2381947308\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_height\" uid=\"2381947306\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_ambientocclusion\" uid=\"2249912015\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"luminosity\" uid=\"4106434733\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"contrast\" uid=\"2336682383\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"hue_shift\" uid=\"4106434783\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"saturation\" uid=\"4106434744\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_intensity\" uid=\"4106405836\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_format\" uid=\"2381951617\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"height_range\" uid=\"2363673581\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"height_position\" uid=\"2363673500\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"ambientocclusion_intensity\" uid=\"2259801958\" type=\"0\" value=\"0.5\" />\n </sbspreset>\n <sbspreset pkgurl=\"pkg://stylized_cobblestone_pavement\" label=\"Dark Brown Cracked Stone Tiles\" >\n  <presetinput identifier=\"stone_color\" uid=\"2593441964\" type=\"2\" value=\"0.239216,0.172549,0.137255,1\" />\n  <presetinput identifier=\"color_variation\" uid=\"2574062539\" type=\"2\" value=\"0.32549,0.329412,0.278431\" />\n  <presetinput identifier=\"color_variation_intensity\" uid=\"2574098640\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"shadow_color\" uid=\"2573307243\" type=\"2\" value=\"0.337255,0.243137,0.164706\" />\n  <presetinput identifier=\"highlight_color\" uid=\"2573443823\" type=\"2\" value=\"0.290196,0.27451,0.172549\" />\n  <presetinput identifier=\"edge_roundness\" uid=\"2571365762\" type=\"0\" value=\"0.25\" />\n  <presetinput identifier=\"height_variations\" uid=\"2593447025\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"trim_density\" uid=\"2575049286\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"cracks_intensity\" uid=\"2574918014\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"channel_diffuse\" uid=\"2203359624\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_basecolor\" uid=\"2381947298\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_normal\" uid=\"2381947297\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_specular\" uid=\"2203359671\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_glossiness\" uid=\"2203359670\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_roughness\" uid=\"2381947309\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_metallic\" uid=\"2381947308\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_height\" uid=\"2381947306\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_ambientocclusion\" uid=\"2249912015\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"luminosity\" uid=\"4106434733\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"contrast\" uid=\"2336682383\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"hue_shift\" uid=\"4106434783\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"saturation\" uid=\"4106434744\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_intensity\" uid=\"4106405836\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_format\" uid=\"2381951617\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"height_range\" uid=\"2363673581\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"height_position\" uid=\"2363673500\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"ambientocclusion_intensity\" uid=\"2259801958\" type=\"0\" value=\"0.5\" />\n </sbspreset>\n</sbspresets>\n"  ;
createNode place2dTexture -n "place2dTexture5";
	rename -uid "9E960934-4C56-AF29-9E94-E788D4A33FB3";
createNode substanceOutputNode -n "Stylized_Cobblestone_Pavement_diffuse";
	rename -uid "E32B3E44-465E-4D62-7719-2B881C505DD8";
	setAttr ".cpth" -type "string" "C:/Users/hunte/Documents/maya\\2024\\substance/baked_images/Stylized_Cobblestone_Pavement_diffuse.exr";
createNode file -n "file39";
	rename -uid "C13384EF-419C-A720-A9B4-57941A1604E8";
	setAttr ".cs" -type "string" "sRGB";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Stylized_Cobblestone_Pavement_basecolor";
	rename -uid "98E30837-4EB2-096D-B129-08A6AA8EFDAA";
	setAttr ".cpth" -type "string" "C:/Users/hunte/Documents/maya\\2024\\substance/baked_images/Stylized_Cobblestone_Pavement_basecolor.exr";
createNode file -n "file40";
	rename -uid "BDB942D2-4DDF-9D77-EC08-B5863C27E552";
	setAttr ".cs" -type "string" "sRGB";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Stylized_Cobblestone_Pavement_normal";
	rename -uid "28C691D3-4ED1-8122-CE8D-3C8063A348E5";
	setAttr ".cpth" -type "string" "C:/Users/hunte/Documents/maya\\2024\\substance/baked_images/Stylized_Cobblestone_Pavement_normal.exr";
createNode file -n "file41";
	rename -uid "333BCB56-427C-18BC-DB82-F78EA4ECD7B3";
	setAttr ".ail" yes;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Stylized_Cobblestone_Pavement_roughness";
	rename -uid "0E5D6D7A-4AFC-1C31-005F-52A2B52EE411";
	setAttr ".cpth" -type "string" "C:/Users/hunte/Documents/maya\\2024\\substance/baked_images/Stylized_Cobblestone_Pavement_roughness.png";
createNode file -n "file42";
	rename -uid "8A00E0FE-45C5-1110-D893-C4AC952968DD";
	setAttr ".ail" yes;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Stylized_Cobblestone_Pavement_metallic";
	rename -uid "ED841DC4-4EB4-CFC8-F27F-FF8A1D6436C1";
	setAttr ".cpth" -type "string" "C:/Users/hunte/Documents/maya\\2024\\substance/baked_images/Stylized_Cobblestone_Pavement_metallic.png";
createNode file -n "file43";
	rename -uid "6F3A4040-4F78-8220-C2D1-65ABF284B926";
	setAttr ".ail" yes;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Stylized_Cobblestone_Pavement_height";
	rename -uid "58159370-45FD-412B-9542-4F8182B1EF58";
	setAttr ".cpth" -type "string" "C:/Users/hunte/Documents/maya\\2024\\substance/baked_images/Stylized_Cobblestone_Pavement_height.exr";
createNode file -n "file44";
	rename -uid "C41F1870-4CE2-5E67-E0C1-75AD0225FBE9";
	setAttr ".ail" yes;
	setAttr ".ao" -0.5;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Stylized_Cobblestone_Pavement_ambientocclusion";
	rename -uid "1F40D3F4-4A88-52E4-DF1B-17806414B73E";
	setAttr ".cpth" -type "string" "C:/Users/hunte/Documents/maya\\2024\\substance/baked_images/Stylized_Cobblestone_Pavement_ambientocclusion.exr";
createNode file -n "file45";
	rename -uid "1779876D-4BC1-6234-8FAD-A9AB58068C02";
	setAttr ".ail" yes;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode multiplyDivide -n "multiplyDivide5";
	rename -uid "298A7A05-4777-B625-2BEF-AF89DA6862E7";
createNode aiStandardSurface -n "CobbleStone";
	rename -uid "FD5B076F-41D9-725B-C8D4-4DBC8B2B1B20";
	setAttr ".emission" 1;
	setAttr ".emission_color" -type "float3" 0 0 0 ;
createNode shadingEngine -n "set5";
	rename -uid "1F8CA859-4E36-142D-8B9D-17ACF2447550";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo9";
	rename -uid "D8639676-4566-8573-3BCB-5EA47479DA8B";
createNode bump2d -n "bump2d5";
	rename -uid "06924DDC-47B1-9615-F344-C8A76EBCED15";
	setAttr ".bi" 1;
	setAttr ".vc1" -type "float3" 0 9.9999997e-06 0 ;
	setAttr ".vc2" -type "float3" 9.9999997e-06 9.9999997e-06 0 ;
createNode displacementShader -n "displacementShader5";
	rename -uid "50FF9B90-4177-F1EF-A7E1-B6AE6A12D978";
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "8269233D-4B56-42CE-88AD-91807DF60CAC";
	setAttr -s 4 ".tgi";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -7166.6668076363794 -2551.7857281934671 ;
	setAttr ".tgi[0].vh" -type "double2" 6547.6192131875168 1162.5000691130047 ;
	setAttr -s 21 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 1117.142822265625;
	setAttr ".tgi[0].ni[0].y" -394.28570556640625;
	setAttr ".tgi[0].ni[0].nvs" 1923;
	setAttr ".tgi[0].ni[1].x" 1117.142822265625;
	setAttr ".tgi[0].ni[1].y" -1714.2857666015625;
	setAttr ".tgi[0].ni[1].nvs" 1923;
	setAttr ".tgi[0].ni[2].x" 87.142860412597656;
	setAttr ".tgi[0].ni[2].y" 300;
	setAttr ".tgi[0].ni[2].nvs" 1923;
	setAttr ".tgi[0].ni[3].x" -565.71429443359375;
	setAttr ".tgi[0].ni[3].y" -71.428573608398438;
	setAttr ".tgi[0].ni[3].nvs" 1970;
	setAttr ".tgi[0].ni[4].x" 452.85714721679688;
	setAttr ".tgi[0].ni[4].y" -948.5714111328125;
	setAttr ".tgi[0].ni[4].nvs" 1923;
	setAttr ".tgi[0].ni[5].x" 452.85714721679688;
	setAttr ".tgi[0].ni[5].y" -51.428569793701172;
	setAttr ".tgi[0].ni[5].nvs" 1923;
	setAttr ".tgi[0].ni[6].x" 452.85714721679688;
	setAttr ".tgi[0].ni[6].y" -380;
	setAttr ".tgi[0].ni[6].nvs" 1923;
	setAttr ".tgi[0].ni[7].x" 87.142860412597656;
	setAttr ".tgi[0].ni[7].y" 124.28571319580078;
	setAttr ".tgi[0].ni[7].nvs" 1922;
	setAttr ".tgi[0].ni[8].x" -872.85711669921875;
	setAttr ".tgi[0].ni[8].y" -280;
	setAttr ".tgi[0].ni[8].nvs" 1923;
	setAttr ".tgi[0].ni[9].x" 452.85714721679688;
	setAttr ".tgi[0].ni[9].y" -204.28572082519531;
	setAttr ".tgi[0].ni[9].nvs" 1923;
	setAttr ".tgi[0].ni[10].x" 452.85714721679688;
	setAttr ".tgi[0].ni[10].y" 240;
	setAttr ".tgi[0].ni[10].nvs" 1923;
	setAttr ".tgi[0].ni[11].x" 87.142860412597656;
	setAttr ".tgi[0].ni[11].y" -345.71429443359375;
	setAttr ".tgi[0].ni[11].nvs" 1922;
	setAttr ".tgi[0].ni[12].x" 87.142860412597656;
	setAttr ".tgi[0].ni[12].y" 694.28570556640625;
	setAttr ".tgi[0].ni[12].nvs" 1923;
	setAttr ".tgi[0].ni[13].x" 768.5714111328125;
	setAttr ".tgi[0].ni[13].y" -1462.857177734375;
	setAttr ".tgi[0].ni[13].nvs" 1922;
	setAttr ".tgi[0].ni[14].x" 87.142860412597656;
	setAttr ".tgi[0].ni[14].y" -882.85711669921875;
	setAttr ".tgi[0].ni[14].nvs" 1922;
	setAttr ".tgi[0].ni[15].x" -254.28572082519531;
	setAttr ".tgi[0].ni[15].y" 1398.5714111328125;
	setAttr ".tgi[0].ni[15].nvs" 1922;
	setAttr ".tgi[0].ni[16].x" -254.28572082519531;
	setAttr ".tgi[0].ni[16].y" 458.57144165039062;
	setAttr ".tgi[0].ni[16].nvs" 1922;
	setAttr ".tgi[0].ni[17].x" 768.5714111328125;
	setAttr ".tgi[0].ni[17].y" -764.28570556640625;
	setAttr ".tgi[0].ni[17].nvs" 1923;
	setAttr ".tgi[0].ni[18].x" -254.28572082519531;
	setAttr ".tgi[0].ni[18].y" 928.5714111328125;
	setAttr ".tgi[0].ni[18].nvs" 1922;
	setAttr ".tgi[0].ni[19].x" 768.5714111328125;
	setAttr ".tgi[0].ni[19].y" -70;
	setAttr ".tgi[0].ni[19].nvs" 2387;
	setAttr ".tgi[0].ni[20].x" 87.142860412597656;
	setAttr ".tgi[0].ni[20].y" 475.71429443359375;
	setAttr ".tgi[0].ni[20].nvs" 1923;
	setAttr ".tgi[1].tn" -type "string" "Untitled_2";
	setAttr ".tgi[1].vl" -type "double2" -4115.5218144858345 -848.80949008086293 ;
	setAttr ".tgi[1].vh" -type "double2" 3497.664696180128 1213.0951898911683 ;
	setAttr -s 23 ".tgi[1].ni";
	setAttr ".tgi[1].ni[0].x" -244.28572082519531;
	setAttr ".tgi[1].ni[0].y" -214.28572082519531;
	setAttr ".tgi[1].ni[0].nvs" 1922;
	setAttr ".tgi[1].ni[1].x" -741.4285888671875;
	setAttr ".tgi[1].ni[1].y" 584.28570556640625;
	setAttr ".tgi[1].ni[1].nvs" 1922;
	setAttr ".tgi[1].ni[2].x" 740;
	setAttr ".tgi[1].ni[2].y" -1104.2857666015625;
	setAttr ".tgi[1].ni[2].nvs" 1923;
	setAttr ".tgi[1].ni[3].x" -244.28572082519531;
	setAttr ".tgi[1].ni[3].y" 352.85714721679688;
	setAttr ".tgi[1].ni[3].nvs" 1923;
	setAttr ".tgi[1].ni[4].x" 1214.2857666015625;
	setAttr ".tgi[1].ni[4].y" -2057.142822265625;
	setAttr ".tgi[1].ni[4].nvs" 1923;
	setAttr ".tgi[1].ni[5].x" 252.85714721679688;
	setAttr ".tgi[1].ni[5].y" -542.85711669921875;
	setAttr ".tgi[1].ni[5].nvs" 1923;
	setAttr ".tgi[1].ni[6].x" 252.85714721679688;
	setAttr ".tgi[1].ni[6].y" -97.142860412597656;
	setAttr ".tgi[1].ni[6].nvs" 1923;
	setAttr ".tgi[1].ni[7].x" -1052.857177734375;
	setAttr ".tgi[1].ni[7].y" -358.57144165039062;
	setAttr ".tgi[1].ni[7].nvs" 1970;
	setAttr ".tgi[1].ni[8].x" -244.28572082519531;
	setAttr ".tgi[1].ni[8].y" 137.14285278320312;
	setAttr ".tgi[1].ni[8].nvs" 1923;
	setAttr ".tgi[1].ni[9].x" 740;
	setAttr ".tgi[1].ni[9].y" -1807.142822265625;
	setAttr ".tgi[1].ni[9].nvs" 1922;
	setAttr ".tgi[1].ni[10].x" -741.4285888671875;
	setAttr ".tgi[1].ni[10].y" 1054.2857666015625;
	setAttr ".tgi[1].ni[10].nvs" 1922;
	setAttr ".tgi[1].ni[11].x" -741.4285888671875;
	setAttr ".tgi[1].ni[11].y" 114.28571319580078;
	setAttr ".tgi[1].ni[11].nvs" 1922;
	setAttr ".tgi[1].ni[12].x" -244.28572082519531;
	setAttr ".tgi[1].ni[12].y" -38.571430206298828;
	setAttr ".tgi[1].ni[12].nvs" 1923;
	setAttr ".tgi[1].ni[13].x" 740;
	setAttr ".tgi[1].ni[13].y" -410;
	setAttr ".tgi[1].ni[13].nvs" 2387;
	setAttr ".tgi[1].ni[14].x" 1214.2857666015625;
	setAttr ".tgi[1].ni[14].y" 1410;
	setAttr ".tgi[1].ni[14].nvs" 1923;
	setAttr ".tgi[1].ni[15].x" 252.85714721679688;
	setAttr ".tgi[1].ni[15].y" -1290;
	setAttr ".tgi[1].ni[15].nvs" 1923;
	setAttr ".tgi[1].ni[16].x" 252.85714721679688;
	setAttr ".tgi[1].ni[16].y" -390;
	setAttr ".tgi[1].ni[16].nvs" 1923;
	setAttr ".tgi[1].ni[17].x" 740;
	setAttr ".tgi[1].ni[17].y" 1660;
	setAttr ".tgi[1].ni[17].nvs" 1922;
	setAttr ".tgi[1].ni[18].x" -244.28572082519531;
	setAttr ".tgi[1].ni[18].y" -684.28570556640625;
	setAttr ".tgi[1].ni[18].nvs" 1922;
	setAttr ".tgi[1].ni[19].x" 252.85714721679688;
	setAttr ".tgi[1].ni[19].y" -718.5714111328125;
	setAttr ".tgi[1].ni[19].nvs" 1923;
	setAttr ".tgi[1].ni[20].x" -1360;
	setAttr ".tgi[1].ni[20].y" -504.28570556640625;
	setAttr ".tgi[1].ni[20].nvs" 1923;
	setAttr ".tgi[1].ni[21].x" -244.28572082519531;
	setAttr ".tgi[1].ni[21].y" -1225.7142333984375;
	setAttr ".tgi[1].ni[21].nvs" 1922;
	setAttr ".tgi[1].ni[22].x" 1214.2857666015625;
	setAttr ".tgi[1].ni[22].y" -735.71429443359375;
	setAttr ".tgi[1].ni[22].nvs" 1923;
	setAttr ".tgi[2].tn" -type "string" "Untitled_3";
	setAttr ".tgi[2].vl" -type "double2" -7857.1429706755207 -1387.5000601723164 ;
	setAttr ".tgi[2].vh" -type "double2" 5857.1430501483756 2326.7857371341552 ;
	setAttr -s 23 ".tgi[2].ni";
	setAttr ".tgi[2].ni[0].x" -850;
	setAttr ".tgi[2].ni[0].y" 381.42855834960938;
	setAttr ".tgi[2].ni[0].nvs" 1922;
	setAttr ".tgi[2].ni[1].x" -371.42855834960938;
	setAttr ".tgi[2].ni[1].y" -927.14288330078125;
	setAttr ".tgi[2].ni[1].nvs" 1922;
	setAttr ".tgi[2].ni[2].x" 1034.2857666015625;
	setAttr ".tgi[2].ni[2].y" 1781.4285888671875;
	setAttr ".tgi[2].ni[2].nvs" 1923;
	setAttr ".tgi[2].ni[3].x" 588.5714111328125;
	setAttr ".tgi[2].ni[3].y" -645.71429443359375;
	setAttr ".tgi[2].ni[3].nvs" 2387;
	setAttr ".tgi[2].ni[4].x" -371.42855834960938;
	setAttr ".tgi[2].ni[4].y" -105.71428680419922;
	setAttr ".tgi[2].ni[4].nvs" 1923;
	setAttr ".tgi[2].ni[5].x" -371.42855834960938;
	setAttr ".tgi[2].ni[5].y" -281.42855834960938;
	setAttr ".tgi[2].ni[5].nvs" 1923;
	setAttr ".tgi[2].ni[6].x" 128.57142639160156;
	setAttr ".tgi[2].ni[6].y" -1515.7142333984375;
	setAttr ".tgi[2].ni[6].nvs" 1923;
	setAttr ".tgi[2].ni[7].x" 128.57142639160156;
	setAttr ".tgi[2].ni[7].y" -970;
	setAttr ".tgi[2].ni[7].nvs" 1923;
	setAttr ".tgi[2].ni[8].x" 128.57142639160156;
	setAttr ".tgi[2].ni[8].y" -332.85714721679688;
	setAttr ".tgi[2].ni[8].nvs" 1923;
	setAttr ".tgi[2].ni[9].x" 128.57142639160156;
	setAttr ".tgi[2].ni[9].y" -641.4285888671875;
	setAttr ".tgi[2].ni[9].nvs" 1923;
	setAttr ".tgi[2].ni[10].x" 1034.2857666015625;
	setAttr ".tgi[2].ni[10].y" -971.4285888671875;
	setAttr ".tgi[2].ni[10].nvs" 1923;
	setAttr ".tgi[2].ni[11].x" 128.57142639160156;
	setAttr ".tgi[2].ni[11].y" -794.28570556640625;
	setAttr ".tgi[2].ni[11].nvs" 1923;
	setAttr ".tgi[2].ni[12].x" -1468.5714111328125;
	setAttr ".tgi[2].ni[12].y" -232.85714721679688;
	setAttr ".tgi[2].ni[12].nvs" 1923;
	setAttr ".tgi[2].ni[13].x" -1161.4285888671875;
	setAttr ".tgi[2].ni[13].y" 35.213565826416016;
	setAttr ".tgi[2].ni[13].nvs" 1970;
	setAttr ".tgi[2].ni[14].x" 1034.2857666015625;
	setAttr ".tgi[2].ni[14].y" 1198.5714111328125;
	setAttr ".tgi[2].ni[14].nvs" 1923;
	setAttr ".tgi[2].ni[15].x" 588.5714111328125;
	setAttr ".tgi[2].ni[15].y" 2031.4285888671875;
	setAttr ".tgi[2].ni[15].nvs" 1922;
	setAttr ".tgi[2].ni[16].x" 588.5714111328125;
	setAttr ".tgi[2].ni[16].y" 1448.5714111328125;
	setAttr ".tgi[2].ni[16].nvs" 1922;
	setAttr ".tgi[2].ni[17].x" -850;
	setAttr ".tgi[2].ni[17].y" 851.4285888671875;
	setAttr ".tgi[2].ni[17].nvs" 1922;
	setAttr ".tgi[2].ni[18].x" -850;
	setAttr ".tgi[2].ni[18].y" -88.571426391601562;
	setAttr ".tgi[2].ni[18].nvs" 1922;
	setAttr ".tgi[2].ni[19].x" 588.5714111328125;
	setAttr ".tgi[2].ni[19].y" -1340;
	setAttr ".tgi[2].ni[19].nvs" 1923;
	setAttr ".tgi[2].ni[20].x" -371.42855834960938;
	setAttr ".tgi[2].ni[20].y" -457.14285278320312;
	setAttr ".tgi[2].ni[20].nvs" 1922;
	setAttr ".tgi[2].ni[21].x" -371.42855834960938;
	setAttr ".tgi[2].ni[21].y" -1440;
	setAttr ".tgi[2].ni[21].nvs" 1922;
	setAttr ".tgi[2].ni[22].x" -371.42855834960938;
	setAttr ".tgi[2].ni[22].y" 135.71427917480469;
	setAttr ".tgi[2].ni[22].nvs" 1923;
	setAttr ".tgi[3].tn" -type "string" "Untitled_4";
	setAttr ".tgi[3].vl" -type "double2" -147.61904175319393 -703.5714006140131 ;
	setAttr ".tgi[3].vh" -type "double2" 926.19043938697496 655.95235488717628 ;
	setAttr -s 21 ".tgi[3].ni";
	setAttr ".tgi[3].ni[0].x" 790;
	setAttr ".tgi[3].ni[0].y" -1258.5714111328125;
	setAttr ".tgi[3].ni[0].nvs" 1922;
	setAttr ".tgi[3].ni[1].x" -144.28572082519531;
	setAttr ".tgi[3].ni[1].y" 508.57144165039062;
	setAttr ".tgi[3].ni[1].nvs" 1923;
	setAttr ".tgi[3].ni[2].x" 790;
	setAttr ".tgi[3].ni[2].y" -555.71429443359375;
	setAttr ".tgi[3].ni[2].nvs" 1923;
	setAttr ".tgi[3].ni[3].x" 344.28570556640625;
	setAttr ".tgi[3].ni[3].y" 158.57142639160156;
	setAttr ".tgi[3].ni[3].nvs" 1923;
	setAttr ".tgi[3].ni[4].x" -144.28572082519531;
	setAttr ".tgi[3].ni[4].y" 684.28570556640625;
	setAttr ".tgi[3].ni[4].nvs" 1923;
	setAttr ".tgi[3].ni[5].x" 1178.5714111328125;
	setAttr ".tgi[3].ni[5].y" -185.71427917480469;
	setAttr ".tgi[3].ni[5].nvs" 1923;
	setAttr ".tgi[3].ni[6].x" 344.28570556640625;
	setAttr ".tgi[3].ni[6].y" 448.57144165039062;
	setAttr ".tgi[3].ni[6].nvs" 1923;
	setAttr ".tgi[3].ni[7].x" -144.28572082519531;
	setAttr ".tgi[3].ni[7].y" -137.14285278320312;
	setAttr ".tgi[3].ni[7].nvs" 1922;
	setAttr ".tgi[3].ni[8].x" 344.28570556640625;
	setAttr ".tgi[3].ni[8].y" -741.4285888671875;
	setAttr ".tgi[3].ni[8].nvs" 1923;
	setAttr ".tgi[3].ni[9].x" 344.28570556640625;
	setAttr ".tgi[3].ni[9].y" -170;
	setAttr ".tgi[3].ni[9].nvs" 1923;
	setAttr ".tgi[3].ni[10].x" 790;
	setAttr ".tgi[3].ni[10].y" 138.57142639160156;
	setAttr ".tgi[3].ni[10].nvs" 2387;
	setAttr ".tgi[3].ni[11].x" -608.5714111328125;
	setAttr ".tgi[3].ni[11].y" 662.85711669921875;
	setAttr ".tgi[3].ni[11].nvs" 1922;
	setAttr ".tgi[3].ni[12].x" -144.28572082519531;
	setAttr ".tgi[3].ni[12].y" 901.4285888671875;
	setAttr ".tgi[3].ni[12].nvs" 1923;
	setAttr ".tgi[3].ni[13].x" -1227.142822265625;
	setAttr ".tgi[3].ni[13].y" -168.57142639160156;
	setAttr ".tgi[3].ni[13].nvs" 1923;
	setAttr ".tgi[3].ni[14].x" -608.5714111328125;
	setAttr ".tgi[3].ni[14].y" 1132.857177734375;
	setAttr ".tgi[3].ni[14].nvs" 1922;
	setAttr ".tgi[3].ni[15].x" -144.28572082519531;
	setAttr ".tgi[3].ni[15].y" 332.85714721679688;
	setAttr ".tgi[3].ni[15].nvs" 1922;
	setAttr ".tgi[3].ni[16].x" 1178.5714111328125;
	setAttr ".tgi[3].ni[16].y" -1508.5714111328125;
	setAttr ".tgi[3].ni[16].nvs" 1923;
	setAttr ".tgi[3].ni[17].x" -608.5714111328125;
	setAttr ".tgi[3].ni[17].y" 1602.857177734375;
	setAttr ".tgi[3].ni[17].nvs" 1922;
	setAttr ".tgi[3].ni[18].x" -920;
	setAttr ".tgi[3].ni[18].y" 107.14286041259766;
	setAttr ".tgi[3].ni[18].nvs" 1970;
	setAttr ".tgi[3].ni[19].x" 344.28570556640625;
	setAttr ".tgi[3].ni[19].y" 5.7142858505249023;
	setAttr ".tgi[3].ni[19].nvs" 1923;
	setAttr ".tgi[3].ni[20].x" -144.28572082519531;
	setAttr ".tgi[3].ni[20].y" -677.14288330078125;
	setAttr ".tgi[3].ni[20].nvs" 1922;
createNode renderLayerManager -n "Ball_Anim_reference_for_TRAX:renderLayerManager";
	rename -uid "9946F9F7-4DC6-C3E3-77A4-BB9C9286E7DF";
createNode renderLayer -n "Ball_Anim_reference_for_TRAX:defaultRenderLayer";
	rename -uid "8C9C7418-4C47-A0BE-BC94-F9B88E3F5FF2";
	setAttr ".g" yes;
createNode animCurveTL -n "Ball_Anim_reference_for_TRAX:CTRL_Main_translateY";
	rename -uid "8BDF5680-4051-EFB1-C428-6DB77CF3BD54";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 38 ".ktv[0:37]"  1 -0.13441104219708588 4 -0.25042991905451384
		 7 -0.098536672764713895 10 0.024843030562707646 13 -0.134 16 -0.25 19 -0.029 22 -0.010085326558387474
		 25 -0.134 26 0 29 -0.38427397818152143 32 -0.088678610349581355 39 0.44339305174790988
		 43 0.88083694168524995 50 0 51 -0.28890126858226983 57 -0.12576447436530502 63 -0.27760325410607578
		 69 -0.12576447436530502 75 -0.28890126858226983 76 0 77 -0.13599566416181474 79 -0.31304063209731936
		 81 -0.23530950126187972 83 -0.084298198371095617 85 0.0095451694896135919 87 0.10231139688061736
		 89 -0.20972045888912172 91 -0.313 93 -0.235 95 -0.084 97 0.01 99 0.102 101 -0.21
		 102 0 118 -2.011767941896581 122 -1.7261577269004553 126 -2.0175072042883713;
	setAttr -s 38 ".kit[0:37]"  9 9 9 9 9 9 9 9 
		9 18 18 18 18 9 18 18 18 10 2 1 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 38 ".kot[0:37]"  9 9 9 9 9 9 9 9 
		9 18 18 18 18 9 5 18 18 10 2 1 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 38 ".kix[19:37]"  1 1 0.37083754376410416 1 0.58888448084299605 
		0.56269201916538547 0.66612908391087178 1 0.37243475088055411 1 0.58845157454608532 
		0.56246385846399616 0.66734087322208513 1 1 1 1 1 1;
	setAttr -s 38 ".kiy[19:37]"  0 0 -0.92869775284265987 0 0.80821721598978269 
		0.82666661452340118 0.74583647240401352 0 -0.92805837981052663 0 0.80853246342631968 
		0.82682187194207291 0.74475241451584773 0 0 0 0 0 0;
	setAttr -s 38 ".kox[19:37]"  1 1 0.37083754376410405 1 0.58888448084299605 
		0.56269201916538536 0.66612908391087178 1 0.37243475088055411 1 0.58845157454608532 
		0.56246385846399616 0.66734087322208513 1 1 1 1 1 1;
	setAttr -s 38 ".koy[19:37]"  0 0 -0.92869775284265976 0 0.80821721598978269 
		0.82666661452340118 0.74583647240401352 0 -0.92805837981052663 0 0.80853246342631968 
		0.82682187194207291 0.74475241451584762 0 0 0 0 0 0;
createNode animCurveTU -n "Ball_Anim_reference_for_TRAX:walker_rt_heel_ik_ctrl_footRoll";
	rename -uid "5838BA9D-41E3-0CDF-7BFA-8FB4C3CE0E6F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 39 ".ktv[0:38]"  1 -22.1 4 0 7 0 10 23.900000000000002 13 30.8
		 16 51.8 19 51.8 22 -5.6 23 -14.129629629629834 25 -22.1 26 0 35 27 39 52.1 43 50
		 50 0 51 0 76 0 77 92.300000000000011 79 92.300000000000011 81 53.000000000000007
		 83 30.600000000000009 85 0.40000000000000924 87 -24.399999999999991 89 -24.399999999999991
		 91 -19.999999999999716 93 19.9 95 50.7 97 50.7 99 70.9 101 128.1 102 0 103 0 104 0
		 107 0 109 0 112 0 117 0 122 0 126 0;
	setAttr -s 39 ".kit[0:38]"  9 9 9 9 9 9 9 9 
		18 9 9 18 18 9 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 39 ".kot[0:38]"  9 9 9 9 9 9 9 9 
		18 5 9 18 18 9 18 5 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18;
createNode animCurveTU -n "Ball_Anim_reference_for_TRAX:walker_rt_heel_ik_ctrl_footBreak";
	rename -uid "4E802961-4BA4-31A8-BFD2-C1AE83733F28";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 55 4 55 7 55 10 55 13 55 16 55 17 0 19 0
		 20 -18.1 22 0 23 1.6088888888889041 25 0 26 0 35 18 39 20 43 -10 50 0 51 0 76 0 77 0
		 79 0 81 -32 83 -15.400000000000002 85 2.2999999999999972 87 2.2999999999999972 89 2.2999999999999972
		 91 1.7037037037037015 93 19.7 95 54.7 97 25.3 99 -2.5 101 -2.5 102 0 103 0 104 0
		 107 0 109 0 112 0 117 0 122 0 126 0;
	setAttr -s 41 ".kit[0:40]"  9 9 9 9 9 9 18 9 
		18 9 18 9 9 18 18 9 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 41 ".kot[0:40]"  9 9 9 9 9 9 18 9 
		18 9 18 5 9 18 18 9 18 5 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
createNode animCurveTL -n "Ball_Anim_reference_for_TRAX:walker_rt_heel_ik_ctrl_translateY";
	rename -uid "69208216-44C8-34DD-2697-E8AAAFB8B2CC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1 -0.032844329404068111 4 -0.032844329404068111
		 7 -0.032844329404068111 10 -0.032844329404068111 13 0.014 16 0.014 17 0.044866278916252972
		 19 0.424 20 0.34651464858356495 22 0.561 23 0.41726536457034968 25 -0.033 26 0 35 -0.021666382258401375
		 39 0.0075924476607645008 43 0.029164570402022694 50 0 51 0 76 0 77 0.7917061537077188
		 79 0.34305436932731759 81 0.0075559783555587678 83 0.015989271754740964 85 0.64005298329422022
		 87 0.6569195700925845 89 -0.1442433028297192 91 -0.070531188602557748 93 0 95 0 97 0
		 99 0.143 101 0.455 102 0 103 0.20437074000151226 104 0.30975666993631795 107 0.87999053959181539
		 109 0.83960771086431529 112 0.70053482195745809 117 0.4052908754294422 122 -0.065133001281544756
		 126 0;
	setAttr -s 41 ".kit[0:40]"  9 9 9 9 9 9 18 9 
		18 9 18 9 9 18 18 9 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 41 ".kot[0:40]"  9 9 9 9 9 9 18 9 
		18 9 18 5 9 18 18 9 18 5 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
createNode animCurveTL -n "Ball_Anim_reference_for_TRAX:walker_rt_heel_ik_ctrl_translateZ";
	rename -uid "4A7A3DC1-48BF-7EAD-5522-D3AECE713C23";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  1 0.93162235471218269 4 0.61918437823016181
		 7 0.083354264633682618 10 -0.60649351910422 13 -1.048 16 -1.182 17 -1.3389538407884312
		 19 -0.674 20 0.065355093640077133 22 1.2469971625518974 23 1.3032964725313483 25 0.932
		 26 0 35 -0.15559340228506593 43 -0.24076444278650344 50 0 51 0.3095097969773008 76 0
		 77 -2.6150153509022762 79 -2.2189708712574845 81 -0.9868663401479203 83 0.5564263519024133
		 85 1.3069894644296274 87 1.5937214400018196 89 1.2563897040345338 91 1.1402496631378356
		 93 -0.192 95 -1.052 97 -1.457 99 -2.166 101 -2.638 102 0 103 0.77478741092617642
		 104 1.1466618670141122 107 2.2786402299747319 109 2.2109207769756845 112 2.2742129963055771
		 117 2.5853712020047475 122 2.482975071828172 126 2.002348222942202;
	setAttr -s 40 ".kit[0:39]"  9 9 9 9 9 9 18 9 
		18 9 18 9 9 18 9 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 40 ".kot[0:39]"  9 9 9 9 9 9 18 9 
		18 9 18 5 9 18 9 18 5 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
createNode animCurveTL -n "Ball_Anim_reference_for_TRAX:CTRL_Main_translateX";
	rename -uid "D82E5AD6-4528-45D4-287D-5990466411D4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  1 0 4 0 7 0 10 0 13 0 16 0 19 0 22 0 25 0
		 26 0 50 0 77 0 79 0 81 0 83 0 85 0 87 0 89 0 91 0 93 0 95 0 97 0 99 0 101 0 102 0
		 118 0 122 0 126 0;
	setAttr -s 28 ".kit[0:27]"  9 9 9 9 9 9 9 9 
		9 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18;
	setAttr -s 28 ".kot[0:27]"  9 9 9 9 9 9 9 9 
		9 18 5 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18;
createNode animCurveTL -n "Ball_Anim_reference_for_TRAX:CTRL_Main_translateZ";
	rename -uid "01A6234E-4E8C-7AC1-8D31-E5BA39D0A0B0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 38 ".ktv[0:37]"  1 0 4 -0.17789193708877143 7 0 10 0.077341376934980999
		 13 0 16 -0.178 19 0 22 0.077 25 0 26 0 29 -0.20691675748235738 32 -0.38427397818152098
		 39 -0.384 43 -0.384 50 0 51 0.31025855742687075 57 0.15885788621776969 63 -0.043595762190537624
		 69 0.1891489825884945 75 0.31025855742687075 76 0 77 0 79 0 81 0 83 0 85 0 87 0 89 0
		 91 0 93 0 95 0 97 0 99 0 101 0 102 0 118 0 122 0 126 0;
	setAttr -s 38 ".kit[0:37]"  9 9 9 9 9 9 9 9 
		9 18 18 18 18 9 18 18 18 10 2 1 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 38 ".kot[0:37]"  9 9 9 9 9 9 9 9 
		9 18 18 18 18 9 5 18 18 10 2 1 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 38 ".kix[19:37]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 38 ".kiy[19:37]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 38 ".kox[19:37]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 38 ".koy[19:37]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Ball_Anim_reference_for_TRAX:walker_lf_heel_ik_ctrl_translateX";
	rename -uid "A673A68D-4E73-B773-972C-02A118E30D33";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 29 ".ktv[0:28]"  1 0 4 0 7 0 10 0 13 0 16 -1.4411479270790191e-17
		 19 0 22 0 25 0 26 0 76 0 77 1.368320874953467e-16 79 0 81 0 83 0 85 0 87 0 89 0 93 0
		 95 0 97 0 99 0 101 0 102 0 107 9.556059273368138e-17 114 -4.5761913655263639e-17
		 122 -1.5315949185026122e-16 124 -1.7195406803438603e-16 126 -1.9074864421851055e-16;
	setAttr -s 29 ".kit[0:28]"  9 9 9 9 9 9 9 9 
		9 9 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 29 ".kot[0:28]"  9 9 9 9 9 9 9 9 
		5 9 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18;
createNode animCurveTL -n "Ball_Anim_reference_for_TRAX:walker_lf_heel_ik_ctrl_translateY";
	rename -uid "5B6D109E-4C5E-FBBB-3A65-3BB7A9254A20";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  1 0.01384857339934753 4 0.01384857339934753
		 5 -0.12826695488449441 7 0.42437690689486068 10 0.56052138375433547 13 -0.033 16 -0.033
		 19 -0.033 22 -0.033 25 0.014 26 0 35 -0.022 39 0.008 43 0.029 50 0 76 0 77 0 79 0
		 81 0 83 0 85 0 87 0.14336598778609644 89 0.45539784355583596 91 0.343 93 0.008 95 0.016
		 97 0.64 99 0.657 101 -0.144 102 0 107 0.49765177705779839 114 1.313006277748765 122 0.0087837129824230864
		 124 0.094367585932344011 126 0;
	setAttr -s 35 ".kit[0:34]"  9 9 18 9 9 9 9 9 
		9 9 9 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18;
	setAttr -s 35 ".kot[0:34]"  9 9 18 9 9 9 9 9 
		9 5 9 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18;
createNode animCurveTL -n "Ball_Anim_reference_for_TRAX:walker_lf_heel_ik_ctrl_translateZ";
	rename -uid "516585DF-4594-6C4C-34EC-F8AFAEC25EF0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  1 -1.0483909399442253 4 -1.1822588747797187
		 5 -1.3924710652937988 7 -0.67356072240484344 10 1.1035140832048467 13 0.932 16 0.66232134129755604
		 19 -0.203 22 -0.606 25 -1.048 26 0 35 -0.156 43 -0.241 50 0 51 -0.57971942193949766
		 76 0 77 1.1173187860419396 79 0.82200334871733882 81 -0.19226046042110684 83 -1.0523774758326043
		 85 -1.4571755589933493 87 -2.165572204524651 89 -2.6378366348788509 91 -2.219 93 -0.987
		 95 0.556 97 1.307 99 1.594 101 1.256 102 0 107 1.2639163668036966 114 2.5134701495804639
		 122 2.7465849583593887 124 2.7544301682702179 126 2.7555509125431934;
	setAttr -s 35 ".kit[0:34]"  9 9 18 9 9 9 9 9 
		9 9 9 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18;
	setAttr -s 35 ".kot[0:34]"  9 9 18 9 9 9 9 9 
		9 5 9 18 18 18 5 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18;
createNode animCurveTL -n "Ball_Anim_reference_for_TRAX:walker_lf_knee_pv_ctrl_translateX";
	rename -uid "583D100D-477C-E8CA-C198-4E8D573114DD";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 0 7 0 10 0 13 0 16 0 19 0 22 0 25 0 76 4.1873744214478214e-17
		 107 6.8228237441022008e-17;
	setAttr -s 10 ".kit[8:9]"  18 18;
	setAttr -s 10 ".kot[8:9]"  18 18;
createNode animCurveTL -n "Ball_Anim_reference_for_TRAX:walker_lf_knee_pv_ctrl_translateY";
	rename -uid "4A9C8F84-4F25-F099-CCF4-F48B00A4E814";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 0 7 0 10 0 13 0 16 0 19 0 22 0 25 0 76 0.14531815461848874
		 107 0.92968556408164393;
	setAttr -s 10 ".kit[8:9]"  18 18;
	setAttr -s 10 ".kot[8:9]"  18 18;
createNode animCurveTL -n "Ball_Anim_reference_for_TRAX:walker_lf_knee_pv_ctrl_translateZ";
	rename -uid "4EBDB7BC-44B5-420A-CEA3-2EAEF20369F7";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 0 7 0 10 0 13 0 16 0 19 0 22 0 25 0 76 0.3419250696905618
		 107 0.55712583814798822;
	setAttr -s 10 ".kit[8:9]"  18 18;
	setAttr -s 10 ".kot[8:9]"  18 18;
createNode animCurveTL -n "Ball_Anim_reference_for_TRAX:walker_rt_heel_ik_ctrl_translateX";
	rename -uid "EE7B14D2-4BBA-D858-4492-DF85BCFB38AE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 36 ".ktv[0:35]"  1 0 4 -1.307049462830552e-16 7 -7.5901357066490771e-17
		 10 0 13 0 16 0 19 0 22 1.751210174063348e-17 23 1.2989572881585577e-16 25 0 26 0
		 50 0 51 0 76 0 77 -5.4229162284539839e-16 79 0 81 0 83 0 85 0 87 0 89 0 91 0 93 0
		 95 0 97 0 99 0 101 0 102 0 103 -7.7484621934586828e-17 104 -1.5496924386917119e-16
		 107 -3.9466222000414739e-17 109 -4.3851381321948032e-17 112 -2.890589660121787e-17
		 117 4.8475281348165555e-17 122 6.1010805063242468e-17 126 2.0087301593839708e-17;
	setAttr -s 36 ".kit[0:35]"  9 9 9 9 9 9 9 9 
		18 9 9 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 36 ".kot[0:35]"  9 9 9 9 9 9 9 9 
		18 5 9 18 5 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18;
createNode animCurveTL -n "Ball_Anim_reference_for_TRAX:walker_rt_knee_pv_ctrl_translateX";
	rename -uid "6358DA07-4982-5F42-751F-CEA46931B349";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  1 0 7 0 10 0 13 0 16 0 19 0 22 0 25 0 86 4.6475125954105111e-17
		 107 9.3704146509477754e-17 117 0 122 0 126 1.7886552606126309;
	setAttr -s 13 ".kit[8:12]"  18 18 18 18 18;
	setAttr -s 13 ".kot[8:12]"  18 18 18 18 18;
createNode animCurveTL -n "Ball_Anim_reference_for_TRAX:walker_rt_knee_pv_ctrl_translateY";
	rename -uid "54C2C347-436D-2D19-8F6F-A8AB222E3AA6";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  1 0 7 0 10 0 13 0 16 0 19 0 22 0 25 0 86 0.15179928118527863
		 107 0.96985368629851831 117 0.96985368629851831 122 0.96985368629851831 126 0.96985368629851831;
	setAttr -s 13 ".kit[8:12]"  18 18 18 18 18;
	setAttr -s 13 ".kot[8:12]"  18 18 18 18 18;
createNode animCurveTL -n "Ball_Anim_reference_for_TRAX:walker_rt_knee_pv_ctrl_translateZ";
	rename -uid "1E3A9150-4920-842E-F619-81BDA8FF60E7";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  1 0 7 0 10 0 13 0 16 0 19 0 22 0 25 0 86 0.37949820296319636
		 107 0.76515242251658067 117 0.76515242251658067 122 0.76515242251658067 126 0.76515242251658067;
	setAttr -s 13 ".kit[8:12]"  18 18 18 18 18;
	setAttr -s 13 ".kot[8:12]"  18 18 18 18 18;
createNode animCurveTA -n "Ball_Anim_reference_for_TRAX:walker_rt_heel_ik_ctrl_rotateX";
	rename -uid "42ECA6F2-4C68-9058-06B1-25AF07DD1193";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 36 ".ktv[0:35]"  1 0 4 0 7 0 10 0 13 0 16 0 19 0 22 0 23 0
		 25 0 26 0 50 0 51 0 76 0 77 0 79 0 81 0 83 0 85 0 87 0 89 0 91 0 93 0 95 0 97 0 99 0
		 101 0 102 0 103 -6.822336924708865 104 -19.059226964265722 107 -54.145531148482348
		 109 -48.341135435534426 112 -37.655770600334947 117 -64.537413923191465 122 -26.912721306790491
		 126 0;
	setAttr -s 36 ".kit[0:35]"  9 9 9 9 9 9 9 9 
		18 9 9 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 36 ".kot[0:35]"  9 9 9 9 9 9 9 9 
		18 5 9 18 5 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18;
createNode animCurveTA -n "Ball_Anim_reference_for_TRAX:walker_rt_heel_ik_ctrl_rotateY";
	rename -uid "7CAF190E-463C-D85D-F631-14B250472856";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 36 ".ktv[0:35]"  1 0 4 0 7 0 10 0 13 0 16 0 19 0 22 0 23 0
		 25 0 26 0 50 0 51 0 76 0 77 0 79 0 81 0 83 0 85 0 87 0 89 0 91 0 93 0 95 0 97 0 99 0
		 101 0 102 0 103 0 104 0 107 0 109 0 112 0 117 0 122 0 126 0;
	setAttr -s 36 ".kit[0:35]"  9 9 9 9 9 9 9 9 
		18 9 9 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 36 ".kot[0:35]"  9 9 9 9 9 9 9 9 
		18 5 9 18 5 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18;
createNode animCurveTA -n "Ball_Anim_reference_for_TRAX:walker_rt_heel_ik_ctrl_rotateZ";
	rename -uid "A17D8F95-4533-4B3D-FEA8-8087AB74C95E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 36 ".ktv[0:35]"  1 0 4 0 7 0 10 0 13 0 16 0 19 0 22 0 23 0
		 25 0 26 0 50 0 51 0 76 0 77 0 79 0 81 0 83 0 85 0 87 0 89 0 91 0 93 0 95 0 97 0 99 0
		 101 0 102 0 103 0 104 0 107 0 109 0 112 0 117 0 122 0 126 0;
	setAttr -s 36 ".kit[0:35]"  9 9 9 9 9 9 9 9 
		18 9 9 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 36 ".kot[0:35]"  9 9 9 9 9 9 9 9 
		18 5 9 18 5 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18;
createNode animCurveTU -n "Ball_Anim_reference_for_TRAX:walker_rt_heel_ik_ctrl_pvControl";
	rename -uid "AD6BBC7E-49B3-ADE8-3192-3C81E7481AB3";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 36 ".ktv[0:35]"  1 1 4 1 7 1 10 1 13 1 16 1 19 1 22 1 23 1
		 25 1 26 1 50 1 51 1 76 1 77 1 79 1 81 1 83 1 85 1 87 1 89 1 91 1 93 1 95 1 97 1 99 1
		 101 1 102 1 103 1 104 1 107 1 109 1 112 1 117 1 122 1 126 1;
	setAttr -s 36 ".kot[8:35]"  5 5 9 5 5 5 5 5 
		5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 
		5 5 5;
createNode animCurveTU -n "Ball_Anim_reference_for_TRAX:walker_rt_heel_ik_ctrl_toeRoll";
	rename -uid "4D787003-4F8F-9F37-5B2E-50A674971AEE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 36 ".ktv[0:35]"  1 0 4 0 7 0 10 0 13 0 16 0 19 0 22 0 23 0
		 25 0 26 0 50 0 51 0 76 0 77 0 79 0 81 0 83 0 85 0 87 0 89 0 91 0 93 0 95 0 97 0 99 0
		 101 0 102 0 103 0 104 0 107 0 109 0 112 0 117 0 122 0 126 0;
	setAttr -s 36 ".kit[0:35]"  9 9 9 9 9 9 9 9 
		18 9 9 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 36 ".kot[0:35]"  9 9 9 9 9 9 9 9 
		18 5 9 18 5 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18;
createNode animCurveTU -n "Ball_Anim_reference_for_TRAX:walker_rt_heel_ik_ctrl_legTwist";
	rename -uid "F6931870-4A7A-39A9-4AB0-11A2F63CDAD6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 36 ".ktv[0:35]"  1 0 4 0 7 0 10 0 13 0 16 0 19 0 22 0 23 0
		 25 0 26 0 50 0 51 0 76 0 77 0 79 0 81 0 83 0 85 0 87 0 89 0 91 0 93 0 95 0 97 0 99 0
		 101 0 102 0 103 0 104 0 107 0 109 0 112 0 117 0 122 0 126 0;
	setAttr -s 36 ".kit[0:35]"  9 9 9 9 9 9 9 9 
		18 9 9 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 36 ".kot[0:35]"  9 9 9 9 9 9 9 9 
		18 5 9 18 5 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18;
createNode animCurveTU -n "Ball_Anim_reference_for_TRAX:walker_rt_heel_ik_ctrl_heelTwist";
	rename -uid "5BA7DBC0-4F98-305D-2B46-DC8DC4BB8D62";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 36 ".ktv[0:35]"  1 0 4 0 7 0 10 0 13 0 16 0 19 0 22 0 23 0
		 25 0 26 0 50 0 51 0 76 0 77 0 79 0 81 0 83 0 85 0 87 0 89 0 91 0 93 0 95 0 97 0 99 0
		 101 0 102 0 103 0 104 0 107 0 109 0 112 0 117 0 122 0 126 0;
	setAttr -s 36 ".kit[0:35]"  9 9 9 9 9 9 9 9 
		18 9 9 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 36 ".kot[0:35]"  9 9 9 9 9 9 9 9 
		18 5 9 18 5 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18;
createNode animCurveTU -n "Ball_Anim_reference_for_TRAX:walker_rt_heel_ik_ctrl_ballTwist";
	rename -uid "8AE47BF9-43E6-6F8E-7A24-C98AEF35CE11";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 36 ".ktv[0:35]"  1 0 4 0 7 0 10 0 13 0 16 0 19 0 22 0 23 0
		 25 0 26 0 50 0 51 0 76 0 77 0 79 0 81 0 83 0 85 0 87 0 89 0 91 0 93 0 95 0 97 0 99 0
		 101 0 102 0 103 0 104 0 107 0 109 0 112 0 117 0 122 0 126 0;
	setAttr -s 36 ".kit[0:35]"  9 9 9 9 9 9 9 9 
		18 9 9 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 36 ".kot[0:35]"  9 9 9 9 9 9 9 9 
		18 5 9 18 5 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18;
createNode animCurveTU -n "Ball_Anim_reference_for_TRAX:walker_rt_heel_ik_ctrl_toeTwist";
	rename -uid "6F8B6498-4E14-038A-9D8F-64B4CFF553B5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 36 ".ktv[0:35]"  1 0 4 0 7 0 10 0 13 0 16 0 19 0 22 0 23 0
		 25 0 26 0 50 0 51 0 76 0 77 0 79 0 81 0 83 0 85 0 87 0 89 0 91 0 93 0 95 0 97 0 99 0
		 101 0 102 0 103 0 104 0 107 0 109 0 112 0 117 0 122 0 126 0;
	setAttr -s 36 ".kit[0:35]"  9 9 9 9 9 9 9 9 
		18 9 9 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 36 ".kot[0:35]"  9 9 9 9 9 9 9 9 
		18 5 9 18 5 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18;
createNode animCurveTU -n "Ball_Anim_reference_for_TRAX:walker_lf_foot_ctrl_ikFkBlend";
	rename -uid "026CF0F3-4BB5-E192-7B96-A59AF672789D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 1 7 1 10 1 13 1 16 1 19 1 22 1 25 1 26 1;
	setAttr -s 9 ".kot[7:8]"  5 9;
createNode animCurveTA -n "Ball_Anim_reference_for_TRAX:walker_lf_heel_ik_ctrl_rotateX";
	rename -uid "7114675F-4132-B810-8571-36AE7ECED74E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 29 ".ktv[0:28]"  1 0 4 0 7 0 10 0 13 0 16 0 19 0 22 0 25 0
		 26 0 76 0 77 0 79 0 81 0 83 0 85 0 87 0 89 0 93 0 95 0 97 0 99 0 101 0 102 0 107 -3.0146260120584638
		 114 -73.247074342108888 122 -64.680389777086788 124 -62.699343971425407 126 -61.682050179329046;
	setAttr -s 29 ".kit[0:28]"  9 9 9 9 9 9 9 9 
		9 9 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 29 ".kot[0:28]"  9 9 9 9 9 9 9 9 
		5 9 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18;
createNode animCurveTA -n "Ball_Anim_reference_for_TRAX:walker_lf_heel_ik_ctrl_rotateY";
	rename -uid "6D6B26C9-4BF8-68F3-AA8C-CFB896D9800A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 29 ".ktv[0:28]"  1 0 4 0 7 0 10 0 13 0 16 0 19 0 22 0 25 0
		 26 0 76 0 77 0 79 0 81 0 83 0 85 0 87 0 89 0 93 0 95 0 97 0 99 0 101 0 102 0 107 0
		 114 0 122 0 124 0 126 0;
	setAttr -s 29 ".kit[0:28]"  9 9 9 9 9 9 9 9 
		9 9 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 29 ".kot[0:28]"  9 9 9 9 9 9 9 9 
		5 9 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18;
createNode animCurveTA -n "Ball_Anim_reference_for_TRAX:walker_lf_heel_ik_ctrl_rotateZ";
	rename -uid "E9DFCCB3-4AAD-0E3B-BE17-85B01E3FF85B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 29 ".ktv[0:28]"  1 0 4 0 7 0 10 0 13 0 16 0 19 0 22 0 25 0
		 26 0 76 0 77 0 79 0 81 0 83 0 85 0 87 0 89 0 93 0 95 0 97 0 99 0 101 0 102 0 107 0
		 114 0 122 0 124 0 126 0;
	setAttr -s 29 ".kit[0:28]"  9 9 9 9 9 9 9 9 
		9 9 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 29 ".kot[0:28]"  9 9 9 9 9 9 9 9 
		5 9 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18;
createNode animCurveTU -n "Ball_Anim_reference_for_TRAX:walker_lf_heel_ik_ctrl_pvControl";
	rename -uid "89226ACB-4157-7CF2-7D95-C0933C2E9A8B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 29 ".ktv[0:28]"  1 1 4 1 7 1 10 1 13 1 16 1 19 1 22 1 25 1
		 26 1 76 1 77 1 79 1 81 1 83 1 85 1 87 1 89 1 93 1 95 1 97 1 99 1 101 1 102 1 107 1
		 114 1 122 1 124 1 126 1;
	setAttr -s 29 ".kot[8:28]"  5 9 5 5 5 5 5 5 
		5 5 5 5 5 5 5 5 5 5 5 5 5;
createNode animCurveTU -n "Ball_Anim_reference_for_TRAX:walker_lf_heel_ik_ctrl_footRoll";
	rename -uid "AFF27A86-4468-5124-D9A2-ECB7294D5DAC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  1 30.800000000000004 4 51.800000000000004
		 7 51.800000000000004 10 -5.6 13 -22.1 16 0 19 0 22 23.9 25 30.8 26 0 35 27 39 52.1
		 43 50 50 0 76 0 77 -29.6 79 -1.1000000000000014 81 19.9 83 50.7 85 50.7 87 70.9 89 128.10000000000002
		 91 92.3 93 53 95 30.6 97 0.4 99 -24.4 101 -24.4 102 0 107 0 114 0 122 0 124 0 126 0;
	setAttr -s 34 ".kit[0:33]"  9 9 9 9 9 9 9 9 
		9 9 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18;
	setAttr -s 34 ".kot[0:33]"  9 9 9 9 9 9 9 9 
		5 9 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18;
createNode animCurveTU -n "Ball_Anim_reference_for_TRAX:walker_lf_heel_ik_ctrl_footBreak";
	rename -uid "DD385CF6-4BE3-CCE3-BFAE-70AF78BD984D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 36 ".ktv[0:35]"  1 55 4 55 5 0 6 -11.8 7 0 10 0 13 0 16 0
		 19 55 22 55 25 55 26 0 35 18 39 20 43 -10 50 0 76 0 77 0 79 0 81 19.700000000000003
		 83 54.7 85 25.3 87 -2.5 89 -2.5 91 0 93 -32 95 -15.4 97 2.3 99 2.3 101 2.3 102 0
		 107 0 114 0 122 0 124 0 126 0;
	setAttr -s 36 ".kit[0:35]"  9 9 18 18 9 9 9 9 
		9 9 9 9 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 36 ".kot[0:35]"  9 9 18 18 9 9 9 9 
		9 9 5 9 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18;
createNode animCurveTU -n "Ball_Anim_reference_for_TRAX:walker_lf_heel_ik_ctrl_toeRoll";
	rename -uid "5D2A1C64-4955-80DE-BCDE-39BDF6BE06AE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 29 ".ktv[0:28]"  1 0 4 0 7 0 10 0 13 0 16 0 19 0 22 0 25 0
		 26 0 76 0 77 0 79 0 81 0 83 0 85 0 87 0 89 0 93 0 95 0 97 0 99 0 101 0 102 0 107 0
		 114 0 122 0 124 0 126 0;
	setAttr -s 29 ".kit[0:28]"  9 9 9 9 9 9 9 9 
		9 9 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 29 ".kot[0:28]"  9 9 9 9 9 9 9 9 
		5 9 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18;
createNode animCurveTU -n "Ball_Anim_reference_for_TRAX:walker_lf_heel_ik_ctrl_legTwist";
	rename -uid "9FDE6087-45FC-9014-0498-E68E63F5166D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 29 ".ktv[0:28]"  1 0 4 0 7 0 10 0 13 0 16 0 19 0 22 0 25 0
		 26 0 76 0 77 0 79 0 81 0 83 0 85 0 87 0 89 0 93 0 95 0 97 0 99 0 101 0 102 0 107 0
		 114 0 122 0 124 0 126 0;
	setAttr -s 29 ".kit[0:28]"  9 9 9 9 9 9 9 9 
		9 9 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 29 ".kot[0:28]"  9 9 9 9 9 9 9 9 
		5 9 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18;
createNode animCurveTU -n "Ball_Anim_reference_for_TRAX:walker_lf_heel_ik_ctrl_heelTwist";
	rename -uid "DA2C405B-48B5-5435-2478-52AD31F869E0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 29 ".ktv[0:28]"  1 0 4 0 7 0 10 0 13 0 16 0 19 0 22 0 25 0
		 26 0 76 0 77 0 79 0 81 0 83 0 85 0 87 0 89 0 93 0 95 0 97 0 99 0 101 0 102 0 107 0
		 114 0 122 0 124 0 126 0;
	setAttr -s 29 ".kit[0:28]"  9 9 9 9 9 9 9 9 
		9 9 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 29 ".kot[0:28]"  9 9 9 9 9 9 9 9 
		5 9 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18;
createNode animCurveTU -n "Ball_Anim_reference_for_TRAX:walker_lf_heel_ik_ctrl_ballTwist";
	rename -uid "2F890CAD-4489-341E-3006-03A586F0C267";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 29 ".ktv[0:28]"  1 0 4 0 7 0 10 0 13 0 16 0 19 0 22 0 25 0
		 26 0 76 0 77 0 79 0 81 0 83 0 85 0 87 0 89 0 93 0 95 0 97 0 99 0 101 0 102 0 107 0
		 114 0 122 0 124 0 126 0;
	setAttr -s 29 ".kit[0:28]"  9 9 9 9 9 9 9 9 
		9 9 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 29 ".kot[0:28]"  9 9 9 9 9 9 9 9 
		5 9 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18;
createNode animCurveTU -n "Ball_Anim_reference_for_TRAX:walker_lf_heel_ik_ctrl_toeTwist";
	rename -uid "2454AF01-4D92-FBD8-3AB2-7AAD02EA1536";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 29 ".ktv[0:28]"  1 0 4 0 7 0 10 0 13 0 16 0 19 0 22 0 25 0
		 26 0 76 0 77 0 79 0 81 0 83 0 85 0 87 0 89 0 93 0 95 0 97 0 99 0 101 0 102 0 107 0
		 114 0 122 0 124 0 126 0;
	setAttr -s 29 ".kit[0:28]"  9 9 9 9 9 9 9 9 
		9 9 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 29 ".kot[0:28]"  9 9 9 9 9 9 9 9 
		5 9 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18;
createNode animCurveTU -n "Ball_Anim_reference_for_TRAX:walker_rt_knee_pv_ctrl_rtLegIkCtrl";
	rename -uid "E1C1D59B-43CE-8B81-FA25-908619C0003B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  1 0 7 0 10 0 13 0 16 0 19 0 22 0 25 0 86 0
		 107 0 117 0 122 0 126 0;
	setAttr -s 13 ".kit[8:12]"  18 18 18 18 18;
	setAttr -s 13 ".kot[8:12]"  18 18 18 18 18;
createNode animCurveTU -n "Ball_Anim_reference_for_TRAX:walker_rt_foot_ctrl_ikFkBlend";
	rename -uid "37FF321E-436E-AF3B-FDA8-E7BBADF6BEFD";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 1 7 1 10 1 13 1 16 1 19 1 22 1 25 1 26 1;
	setAttr -s 9 ".kot[7:8]"  5 9;
createNode animCurveTU -n "Ball_Anim_reference_for_TRAX:walker_lf_knee_pv_ctrl_lfLegIkCtrl";
	rename -uid "15850F61-465F-F0E0-A631-178C04C0A20A";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 0 7 0 10 0 13 0 16 0 19 0 22 0 25 0 76 0
		 107 0;
	setAttr -s 10 ".kit[8:9]"  18 18;
	setAttr -s 10 ".kot[8:9]"  18 18;
createNode animCurveTL -n "Ball_Anim_reference_for_TRAX:CTRL_Top_translateY";
	rename -uid "504E5F2A-4BAD-29EB-668C-949F123B687D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 6 0 9 0 12 0 15 0 18 0;
createNode animCurveTA -n "Ball_Anim_reference_for_TRAX:CTRL_Main_rotateX";
	rename -uid "B0EDE091-45FF-7F84-EB03-838D72B4BC97";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  1 0 4 0 7 0 10 0 13 0 16 0 19 0 22 0 25 0
		 26 0 50 0 77 0 79 0 81 0 83 0 85 0 87 0 89 0 91 0 93 0 95 0 97 0 99 0 101 0 102 0
		 118 41.555853281497605 122 55.660283749937307 126 52.309972296796865;
	setAttr -s 28 ".kit[0:27]"  9 9 9 9 9 9 9 9 
		9 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18;
	setAttr -s 28 ".kot[0:27]"  9 9 9 9 9 9 9 9 
		9 18 5 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18;
createNode animCurveTA -n "Ball_Anim_reference_for_TRAX:CTRL_Main_rotateY";
	rename -uid "6445CD69-404D-AD64-52BB-14A07AA44B5E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  1 0 4 0 7 0 10 0 13 0 16 0 19 0 22 0 25 0
		 26 0 50 0 77 0 79 0 81 0 83 0 85 0 87 0 89 0 91 0 93 0 95 0 97 0 99 0 101 0 102 0
		 118 14.755643781014838 122 17.016710823735874 126 18.574214134834204;
	setAttr -s 28 ".kit[0:27]"  9 9 9 9 9 9 9 9 
		9 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18;
	setAttr -s 28 ".kot[0:27]"  9 9 9 9 9 9 9 9 
		9 18 5 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18;
createNode animCurveTA -n "Ball_Anim_reference_for_TRAX:CTRL_Main_rotateZ";
	rename -uid "871E261D-475F-5EC3-6A46-999251033DCA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 29 ".ktv[0:28]"  1 0 3 0 4 0 7 0 10 0 13 0 16 0 19 0 22 0
		 25 0 26 0 50 0 77 0 79 0 81 0 83 0 85 0 87 0 89 0 91 0 93 0 95 0 97 0 99 0 101 0
		 102 0 118 17.799234749829822 122 20.526683560316549 126 22.405447202845348;
	setAttr -s 29 ".kit[0:28]"  9 9 18 9 9 9 9 9 
		9 9 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 29 ".kot[0:28]"  9 9 18 9 9 9 9 9 
		9 9 18 5 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18;
createNode renderLayerManager -n "Robot_TRAX_reference:renderLayerManager";
	rename -uid "3B9AF247-4B61-65FE-2B33-E6BBFE68850B";
createNode renderLayer -n "Robot_TRAX_reference:defaultRenderLayer";
	rename -uid "6F22E6C9-4486-36DF-AFC0-84A19A8D4638";
	setAttr ".g" yes;
createNode animCurveTU -n "Robot_TRAX_reference:PALbot_R_Engine_ctrl_scaleX";
	rename -uid "EC127EEF-4071-4682-70BA-A59C3556C5A2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  41 1 59 1 92 1 125 1;
createNode animCurveTU -n "Robot_TRAX_reference:PALbot_R_Engine_ctrl_scaleY";
	rename -uid "FBEB5E2E-4FBA-9441-4580-7AAC2ED0D866";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  41 1 59 1 92 1 125 1;
createNode animCurveTU -n "Robot_TRAX_reference:PALbot_R_Engine_ctrl_scaleZ";
	rename -uid "1A354062-404C-1641-2FFA-FBBE0740B05E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  41 1 59 1 92 1 125 1;
createNode animCurveTU -n "Robot_TRAX_reference:PALbot_L_Engine_ctrl_scaleX";
	rename -uid "D8315BDC-48D9-1F40-F7A0-7897335FAB51";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  56 1 59 1 92 1 125 1;
createNode animCurveTU -n "Robot_TRAX_reference:PALbot_L_Engine_ctrl_scaleY";
	rename -uid "98B260D0-424C-3F48-2DF6-71B7922BD078";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  56 1 59 1 92 1 125 1;
createNode animCurveTU -n "Robot_TRAX_reference:PALbot_L_Engine_ctrl_scaleZ";
	rename -uid "CB0B45BB-45F5-14C1-BB87-558F39A78A7F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  56 1 59 1 92 1 125 1;
createNode trackInfoManager -n "Robot_TRAX_reference:trackInfoManager1";
	rename -uid "3D15D475-4E27-6714-C917-B5BE429CDFA0";
createNode nodeGraphEditorInfo -n "Robot_TRAX_reference:hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "5C1FD6C5-4DAF-53E1-AA23-37A63225CC06";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -44.047617297323995 -615.47616601936511 ;
	setAttr ".tgi[0].vh" -type "double2" 872.61901294428355 44.047617297323995 ;
createNode renderLayerManager -n "Robot_Movement:renderLayerManager";
	rename -uid "79642B57-4375-6579-DE36-7B8BF8201A0B";
createNode renderLayer -n "Robot_Movement:defaultRenderLayer";
	rename -uid "E0249671-4B7A-A9F0-F0B5-8DA048C92B1C";
	setAttr ".g" yes;
createNode reference -n "Robot_Movement:PALBotRN";
	rename -uid "9D5815EC-462F-667F-B200-86BD7B7158D1";
	setAttr -s 374 ".phl";
	setAttr ".phl[1]" 0;
	setAttr ".phl[2]" 0;
	setAttr ".phl[3]" 0;
	setAttr ".phl[4]" 0;
	setAttr ".phl[5]" 0;
	setAttr ".phl[6]" 0;
	setAttr ".phl[7]" 0;
	setAttr ".phl[8]" 0;
	setAttr ".phl[9]" 0;
	setAttr ".phl[10]" 0;
	setAttr ".phl[11]" 0;
	setAttr ".phl[12]" 0;
	setAttr ".phl[13]" 0;
	setAttr ".phl[14]" 0;
	setAttr ".phl[15]" 0;
	setAttr ".phl[16]" 0;
	setAttr ".phl[17]" 0;
	setAttr ".phl[18]" 0;
	setAttr ".phl[19]" 0;
	setAttr ".phl[20]" 0;
	setAttr ".phl[21]" 0;
	setAttr ".phl[22]" 0;
	setAttr ".phl[23]" 0;
	setAttr ".phl[24]" 0;
	setAttr ".phl[25]" 0;
	setAttr ".phl[26]" 0;
	setAttr ".phl[27]" 0;
	setAttr ".phl[28]" 0;
	setAttr ".phl[29]" 0;
	setAttr ".phl[30]" 0;
	setAttr ".phl[31]" 0;
	setAttr ".phl[32]" 0;
	setAttr ".phl[33]" 0;
	setAttr ".phl[34]" 0;
	setAttr ".phl[35]" 0;
	setAttr ".phl[36]" 0;
	setAttr ".phl[37]" 0;
	setAttr ".phl[38]" 0;
	setAttr ".phl[39]" 0;
	setAttr ".phl[40]" 0;
	setAttr ".phl[41]" 0;
	setAttr ".phl[42]" 0;
	setAttr ".phl[43]" 0;
	setAttr ".phl[44]" 0;
	setAttr ".phl[45]" 0;
	setAttr ".phl[46]" 0;
	setAttr ".phl[47]" 0;
	setAttr ".phl[48]" 0;
	setAttr ".phl[49]" 0;
	setAttr ".phl[50]" 0;
	setAttr ".phl[51]" 0;
	setAttr ".phl[52]" 0;
	setAttr ".phl[53]" 0;
	setAttr ".phl[54]" 0;
	setAttr ".phl[55]" 0;
	setAttr ".phl[56]" 0;
	setAttr ".phl[57]" 0;
	setAttr ".phl[58]" 0;
	setAttr ".phl[59]" 0;
	setAttr ".phl[60]" 0;
	setAttr ".phl[61]" 0;
	setAttr ".phl[62]" 0;
	setAttr ".phl[63]" 0;
	setAttr ".phl[64]" 0;
	setAttr ".phl[65]" 0;
	setAttr ".phl[66]" 0;
	setAttr ".phl[67]" 0;
	setAttr ".phl[68]" 0;
	setAttr ".phl[69]" 0;
	setAttr ".phl[70]" 0;
	setAttr ".phl[71]" 0;
	setAttr ".phl[72]" 0;
	setAttr ".phl[73]" 0;
	setAttr ".phl[74]" 0;
	setAttr ".phl[75]" 0;
	setAttr ".phl[76]" 0;
	setAttr ".phl[77]" 0;
	setAttr ".phl[78]" 0;
	setAttr ".phl[79]" 0;
	setAttr ".phl[80]" 0;
	setAttr ".phl[81]" 0;
	setAttr ".phl[82]" 0;
	setAttr ".phl[83]" 0;
	setAttr ".phl[84]" 0;
	setAttr ".phl[85]" 0;
	setAttr ".phl[86]" 0;
	setAttr ".phl[87]" 0;
	setAttr ".phl[88]" 0;
	setAttr ".phl[89]" 0;
	setAttr ".phl[90]" 0;
	setAttr ".phl[91]" 0;
	setAttr ".phl[92]" 0;
	setAttr ".phl[93]" 0;
	setAttr ".phl[94]" 0;
	setAttr ".phl[95]" 0;
	setAttr ".phl[96]" 0;
	setAttr ".phl[97]" 0;
	setAttr ".phl[98]" 0;
	setAttr ".phl[99]" 0;
	setAttr ".phl[100]" 0;
	setAttr ".phl[101]" 0;
	setAttr ".phl[102]" 0;
	setAttr ".phl[103]" 0;
	setAttr ".phl[104]" 0;
	setAttr ".phl[105]" 0;
	setAttr ".phl[106]" 0;
	setAttr ".phl[107]" 0;
	setAttr ".phl[108]" 0;
	setAttr ".phl[109]" 0;
	setAttr ".phl[110]" 0;
	setAttr ".phl[111]" 0;
	setAttr ".phl[112]" 0;
	setAttr ".phl[113]" 0;
	setAttr ".phl[114]" 0;
	setAttr ".phl[115]" 0;
	setAttr ".phl[116]" 0;
	setAttr ".phl[117]" 0;
	setAttr ".phl[118]" 0;
	setAttr ".phl[119]" 0;
	setAttr ".phl[120]" 0;
	setAttr ".phl[121]" 0;
	setAttr ".phl[122]" 0;
	setAttr ".phl[123]" 0;
	setAttr ".phl[124]" 0;
	setAttr ".phl[125]" 0;
	setAttr ".phl[126]" 0;
	setAttr ".phl[127]" 0;
	setAttr ".phl[128]" 0;
	setAttr ".phl[129]" 0;
	setAttr ".phl[130]" 0;
	setAttr ".phl[131]" 0;
	setAttr ".phl[132]" 0;
	setAttr ".phl[133]" 0;
	setAttr ".phl[134]" 0;
	setAttr ".phl[135]" 0;
	setAttr ".phl[136]" 0;
	setAttr ".phl[137]" 0;
	setAttr ".phl[138]" 0;
	setAttr ".phl[139]" 0;
	setAttr ".phl[140]" 0;
	setAttr ".phl[141]" 0;
	setAttr ".phl[142]" 0;
	setAttr ".phl[143]" 0;
	setAttr ".phl[144]" 0;
	setAttr ".phl[145]" 0;
	setAttr ".phl[146]" 0;
	setAttr ".phl[147]" 0;
	setAttr ".phl[148]" 0;
	setAttr ".phl[149]" 0;
	setAttr ".phl[150]" 0;
	setAttr ".phl[151]" 0;
	setAttr ".phl[152]" 0;
	setAttr ".phl[153]" 0;
	setAttr ".phl[154]" 0;
	setAttr ".phl[155]" 0;
	setAttr ".phl[156]" 0;
	setAttr ".phl[157]" 0;
	setAttr ".phl[158]" 0;
	setAttr ".phl[159]" 0;
	setAttr ".phl[160]" 0;
	setAttr ".phl[161]" 0;
	setAttr ".phl[162]" 0;
	setAttr ".phl[163]" 0;
	setAttr ".phl[164]" 0;
	setAttr ".phl[165]" 0;
	setAttr ".phl[166]" 0;
	setAttr ".phl[167]" 0;
	setAttr ".phl[168]" 0;
	setAttr ".phl[169]" 0;
	setAttr ".phl[170]" 0;
	setAttr ".phl[171]" 0;
	setAttr ".phl[172]" 0;
	setAttr ".phl[173]" 0;
	setAttr ".phl[174]" 0;
	setAttr ".phl[175]" 0;
	setAttr ".phl[176]" 0;
	setAttr ".phl[177]" 0;
	setAttr ".phl[178]" 0;
	setAttr ".phl[179]" 0;
	setAttr ".phl[180]" 0;
	setAttr ".phl[181]" 0;
	setAttr ".phl[182]" 0;
	setAttr ".phl[183]" 0;
	setAttr ".phl[184]" 0;
	setAttr ".phl[185]" 0;
	setAttr ".phl[186]" 0;
	setAttr ".phl[187]" 0;
	setAttr ".phl[188]" 0;
	setAttr ".phl[189]" 0;
	setAttr ".phl[190]" 0;
	setAttr ".phl[191]" 0;
	setAttr ".phl[192]" 0;
	setAttr ".phl[193]" 0;
	setAttr ".phl[194]" 0;
	setAttr ".phl[195]" 0;
	setAttr ".phl[196]" 0;
	setAttr ".phl[197]" 0;
	setAttr ".phl[198]" 0;
	setAttr ".phl[199]" 0;
	setAttr ".phl[200]" 0;
	setAttr ".phl[201]" 0;
	setAttr ".phl[202]" 0;
	setAttr ".phl[203]" 0;
	setAttr ".phl[204]" 0;
	setAttr ".phl[205]" 0;
	setAttr ".phl[206]" 0;
	setAttr ".phl[207]" 0;
	setAttr ".phl[208]" 0;
	setAttr ".phl[209]" 0;
	setAttr ".phl[210]" 0;
	setAttr ".phl[211]" 0;
	setAttr ".phl[212]" 0;
	setAttr ".phl[213]" 0;
	setAttr ".phl[214]" 0;
	setAttr ".phl[215]" 0;
	setAttr ".phl[216]" 0;
	setAttr ".phl[217]" 0;
	setAttr ".phl[218]" 0;
	setAttr ".phl[219]" 0;
	setAttr ".phl[220]" 0;
	setAttr ".phl[221]" 0;
	setAttr ".phl[222]" 0;
	setAttr ".phl[223]" 0;
	setAttr ".phl[224]" 0;
	setAttr ".phl[225]" 0;
	setAttr ".phl[226]" 0;
	setAttr ".phl[227]" 0;
	setAttr ".phl[228]" 0;
	setAttr ".phl[229]" 0;
	setAttr ".phl[230]" 0;
	setAttr ".phl[231]" 0;
	setAttr ".phl[232]" 0;
	setAttr ".phl[233]" 0;
	setAttr ".phl[234]" 0;
	setAttr ".phl[235]" 0;
	setAttr ".phl[236]" 0;
	setAttr ".phl[237]" 0;
	setAttr ".phl[238]" 0;
	setAttr ".phl[239]" 0;
	setAttr ".phl[240]" 0;
	setAttr ".phl[241]" 0;
	setAttr ".phl[242]" 0;
	setAttr ".phl[243]" 0;
	setAttr ".phl[244]" 0;
	setAttr ".phl[245]" 0;
	setAttr ".phl[246]" 0;
	setAttr ".phl[247]" 0;
	setAttr ".phl[248]" 0;
	setAttr ".phl[249]" 0;
	setAttr ".phl[250]" 0;
	setAttr ".phl[251]" 0;
	setAttr ".phl[252]" 0;
	setAttr ".phl[253]" 0;
	setAttr ".phl[254]" 0;
	setAttr ".phl[255]" 0;
	setAttr ".phl[256]" 0;
	setAttr ".phl[257]" 0;
	setAttr ".phl[258]" 0;
	setAttr ".phl[259]" 0;
	setAttr ".phl[260]" 0;
	setAttr ".phl[261]" 0;
	setAttr ".phl[262]" 0;
	setAttr ".phl[263]" 0;
	setAttr ".phl[264]" 0;
	setAttr ".phl[265]" 0;
	setAttr ".phl[266]" 0;
	setAttr ".phl[267]" 0;
	setAttr ".phl[268]" 0;
	setAttr ".phl[269]" 0;
	setAttr ".phl[270]" 0;
	setAttr ".phl[271]" 0;
	setAttr ".phl[272]" 0;
	setAttr ".phl[273]" 0;
	setAttr ".phl[274]" 0;
	setAttr ".phl[275]" 0;
	setAttr ".phl[276]" 0;
	setAttr ".phl[277]" 0;
	setAttr ".phl[278]" 0;
	setAttr ".phl[279]" 0;
	setAttr ".phl[280]" 0;
	setAttr ".phl[281]" 0;
	setAttr ".phl[282]" 0;
	setAttr ".phl[283]" 0;
	setAttr ".phl[284]" 0;
	setAttr ".phl[285]" 0;
	setAttr ".phl[286]" 0;
	setAttr ".phl[287]" 0;
	setAttr ".phl[288]" 0;
	setAttr ".phl[289]" 0;
	setAttr ".phl[290]" 0;
	setAttr ".phl[291]" 0;
	setAttr ".phl[292]" 0;
	setAttr ".phl[293]" 0;
	setAttr ".phl[294]" 0;
	setAttr ".phl[295]" 0;
	setAttr ".phl[296]" 0;
	setAttr ".phl[297]" 0;
	setAttr ".phl[298]" 0;
	setAttr ".phl[299]" 0;
	setAttr ".phl[300]" 0;
	setAttr ".phl[301]" 0;
	setAttr ".phl[302]" 0;
	setAttr ".phl[303]" 0;
	setAttr ".phl[304]" 0;
	setAttr ".phl[305]" 0;
	setAttr ".phl[306]" 0;
	setAttr ".phl[307]" 0;
	setAttr ".phl[308]" 0;
	setAttr ".phl[309]" 0;
	setAttr ".phl[310]" 0;
	setAttr ".phl[311]" 0;
	setAttr ".phl[312]" 0;
	setAttr ".phl[313]" 0;
	setAttr ".phl[314]" 0;
	setAttr ".phl[315]" 0;
	setAttr ".phl[316]" 0;
	setAttr ".phl[317]" 0;
	setAttr ".phl[318]" 0;
	setAttr ".phl[319]" 0;
	setAttr ".phl[320]" 0;
	setAttr ".phl[321]" 0;
	setAttr ".phl[322]" 0;
	setAttr ".phl[323]" 0;
	setAttr ".phl[324]" 0;
	setAttr ".phl[325]" 0;
	setAttr ".phl[326]" 0;
	setAttr ".phl[327]" 0;
	setAttr ".phl[328]" 0;
	setAttr ".phl[329]" 0;
	setAttr ".phl[330]" 0;
	setAttr ".phl[331]" 0;
	setAttr ".phl[332]" 0;
	setAttr ".phl[333]" 0;
	setAttr ".phl[334]" 0;
	setAttr ".phl[335]" 0;
	setAttr ".phl[336]" 0;
	setAttr ".phl[337]" 0;
	setAttr ".phl[338]" 0;
	setAttr ".phl[339]" 0;
	setAttr ".phl[340]" 0;
	setAttr ".phl[341]" 0;
	setAttr ".phl[342]" 0;
	setAttr ".phl[343]" 0;
	setAttr ".phl[344]" 0;
	setAttr ".phl[345]" 0;
	setAttr ".phl[346]" 0;
	setAttr ".phl[347]" 0;
	setAttr ".phl[348]" 0;
	setAttr ".phl[349]" 0;
	setAttr ".phl[350]" 0;
	setAttr ".phl[351]" 0;
	setAttr ".phl[352]" 0;
	setAttr ".phl[353]" 0;
	setAttr ".phl[354]" 0;
	setAttr ".phl[355]" 0;
	setAttr ".phl[356]" 0;
	setAttr ".phl[357]" 0;
	setAttr ".phl[358]" 0;
	setAttr ".phl[359]" 0;
	setAttr ".phl[360]" 0;
	setAttr ".phl[361]" 0;
	setAttr ".phl[362]" 0;
	setAttr ".phl[363]" 0;
	setAttr ".phl[364]" 0;
	setAttr ".phl[365]" 0;
	setAttr ".phl[366]" 0;
	setAttr ".phl[367]" 0;
	setAttr ".phl[368]" 0;
	setAttr ".phl[369]" 0;
	setAttr ".phl[370]" 0;
	setAttr ".phl[371]" 0;
	setAttr ".phl[372]" 0;
	setAttr ".phl[373]" 0;
	setAttr ".phl[374]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"Robot_Movement:PALBotRN"
		"PALBotRN" 0
		"PALBotRN" 375
		2 "|PALBot:PALBOT_GRP|PALBot:PALbot_MESH|PALBot:PALbot_HeadGRP|PALBot:GLASS_clean|PALBot:GLASS_cleanShape" 
		"uvSet[0].uvSetName" " -type \"string\" \"map1\""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN.global_scale" 
		"Robot_Movement:PALBotRN.placeHolderList[1]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN.Mesh_lock" 
		"Robot_Movement:PALBotRN.placeHolderList[2]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN.translateX" 
		"Robot_Movement:PALBotRN.placeHolderList[3]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN.translateY" 
		"Robot_Movement:PALBotRN.placeHolderList[4]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN.translateZ" 
		"Robot_Movement:PALBotRN.placeHolderList[5]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN.rotateX" 
		"Robot_Movement:PALBotRN.placeHolderList[6]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN.rotateY" 
		"Robot_Movement:PALBotRN.placeHolderList[7]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN.rotateZ" 
		"Robot_Movement:PALBotRN.placeHolderList[8]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root.rotateX" 
		"Robot_Movement:PALBotRN.placeHolderList[9]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root.rotateY" 
		"Robot_Movement:PALBotRN.placeHolderList[10]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root.rotateZ" 
		"Robot_Movement:PALBotRN.placeHolderList[11]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root.translateX" 
		"Robot_Movement:PALBotRN.placeHolderList[12]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root.translateY" 
		"Robot_Movement:PALBotRN.placeHolderList[13]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root.translateZ" 
		"Robot_Movement:PALBotRN.placeHolderList[14]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_knee_aim_offset|PALBot:PALbot_L_knee_aim_ctrl.space_switch" 
		"Robot_Movement:PALBotRN.placeHolderList[15]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_knee_aim_offset|PALBot:PALbot_L_knee_aim_ctrl.translateX" 
		"Robot_Movement:PALBotRN.placeHolderList[16]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_knee_aim_offset|PALBot:PALbot_L_knee_aim_ctrl.translateY" 
		"Robot_Movement:PALBotRN.placeHolderList[17]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_knee_aim_offset|PALBot:PALbot_L_knee_aim_ctrl.translateZ" 
		"Robot_Movement:PALBotRN.placeHolderList[18]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_knee_aim_offset|PALBot:PALbot_L_knee_aim_ctrl.rotateX" 
		"Robot_Movement:PALBotRN.placeHolderList[19]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_knee_aim_offset|PALBot:PALbot_L_knee_aim_ctrl.rotateY" 
		"Robot_Movement:PALBotRN.placeHolderList[20]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_knee_aim_offset|PALBot:PALbot_L_knee_aim_ctrl.rotateZ" 
		"Robot_Movement:PALBotRN.placeHolderList[21]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_foot_secondary_offset|PALBot:PALbot_L_foot_secondary.rotateX" 
		"Robot_Movement:PALBotRN.placeHolderList[22]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_foot_secondary_offset|PALBot:PALbot_L_foot_secondary.rotateY" 
		"Robot_Movement:PALBotRN.placeHolderList[23]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_foot_secondary_offset|PALBot:PALbot_L_foot_secondary.rotateZ" 
		"Robot_Movement:PALBotRN.placeHolderList[24]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_foot_secondary_offset|PALBot:PALbot_L_foot_secondary.translateX" 
		"Robot_Movement:PALBotRN.placeHolderList[25]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_foot_secondary_offset|PALBot:PALbot_L_foot_secondary.translateY" 
		"Robot_Movement:PALBotRN.placeHolderList[26]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_foot_secondary_offset|PALBot:PALbot_L_foot_secondary.translateZ" 
		"Robot_Movement:PALBotRN.placeHolderList[27]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_foot_secondary_offset|PALBot:PALbot_L_foot_secondary|PALBot:PALbot_L_footSec_reshape01_offset|PALBot:PALbot_L_footSec_reshape01.translateX" 
		"Robot_Movement:PALBotRN.placeHolderList[28]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_foot_secondary_offset|PALBot:PALbot_L_foot_secondary|PALBot:PALbot_L_footSec_reshape01_offset|PALBot:PALbot_L_footSec_reshape01.translateY" 
		"Robot_Movement:PALBotRN.placeHolderList[29]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_foot_secondary_offset|PALBot:PALbot_L_foot_secondary|PALBot:PALbot_L_footSec_reshape01_offset|PALBot:PALbot_L_footSec_reshape01.translateZ" 
		"Robot_Movement:PALBotRN.placeHolderList[30]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_foot_secondary_offset|PALBot:PALbot_L_foot_secondary|PALBot:PALbot_L_footSec_reshape01_offset|PALBot:PALbot_L_footSec_reshape01.rotateX" 
		"Robot_Movement:PALBotRN.placeHolderList[31]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_foot_secondary_offset|PALBot:PALbot_L_foot_secondary|PALBot:PALbot_L_footSec_reshape01_offset|PALBot:PALbot_L_footSec_reshape01.rotateY" 
		"Robot_Movement:PALBotRN.placeHolderList[32]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_foot_secondary_offset|PALBot:PALbot_L_foot_secondary|PALBot:PALbot_L_footSec_reshape01_offset|PALBot:PALbot_L_footSec_reshape01.rotateZ" 
		"Robot_Movement:PALBotRN.placeHolderList[33]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_foot_secondary_offset|PALBot:PALbot_L_foot_secondary|PALBot:PALbot_L_footSec_reshape02_offset|PALBot:PALbot_L_footSec_reshape02.translateX" 
		"Robot_Movement:PALBotRN.placeHolderList[34]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_foot_secondary_offset|PALBot:PALbot_L_foot_secondary|PALBot:PALbot_L_footSec_reshape02_offset|PALBot:PALbot_L_footSec_reshape02.translateY" 
		"Robot_Movement:PALBotRN.placeHolderList[35]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_foot_secondary_offset|PALBot:PALbot_L_foot_secondary|PALBot:PALbot_L_footSec_reshape02_offset|PALBot:PALbot_L_footSec_reshape02.translateZ" 
		"Robot_Movement:PALBotRN.placeHolderList[36]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_foot_secondary_offset|PALBot:PALbot_L_foot_secondary|PALBot:PALbot_L_footSec_reshape02_offset|PALBot:PALbot_L_footSec_reshape02.rotateX" 
		"Robot_Movement:PALBotRN.placeHolderList[37]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_foot_secondary_offset|PALBot:PALbot_L_foot_secondary|PALBot:PALbot_L_footSec_reshape02_offset|PALBot:PALbot_L_footSec_reshape02.rotateY" 
		"Robot_Movement:PALBotRN.placeHolderList[38]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_foot_secondary_offset|PALBot:PALbot_L_foot_secondary|PALBot:PALbot_L_footSec_reshape02_offset|PALBot:PALbot_L_footSec_reshape02.rotateZ" 
		"Robot_Movement:PALBotRN.placeHolderList[39]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_Engine_ctrl_offset|PALBot:PALbot_L_Engine_ctrl.on_off" 
		"Robot_Movement:PALBotRN.placeHolderList[40]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_Engine_ctrl_offset|PALBot:PALbot_L_Engine_ctrl.translateX" 
		"Robot_Movement:PALBotRN.placeHolderList[41]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_Engine_ctrl_offset|PALBot:PALbot_L_Engine_ctrl.translateY" 
		"Robot_Movement:PALBotRN.placeHolderList[42]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_Engine_ctrl_offset|PALBot:PALbot_L_Engine_ctrl.translateZ" 
		"Robot_Movement:PALBotRN.placeHolderList[43]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_Engine_ctrl_offset|PALBot:PALbot_L_Engine_ctrl.rotateX" 
		"Robot_Movement:PALBotRN.placeHolderList[44]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_Engine_ctrl_offset|PALBot:PALbot_L_Engine_ctrl.rotateY" 
		"Robot_Movement:PALBotRN.placeHolderList[45]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_Engine_ctrl_offset|PALBot:PALbot_L_Engine_ctrl.rotateZ" 
		"Robot_Movement:PALBotRN.placeHolderList[46]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_Engine_ctrl_offset|PALBot:PALbot_L_Engine_ctrl.scaleX" 
		"Robot_Movement:PALBotRN.placeHolderList[47]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_Engine_ctrl_offset|PALBot:PALbot_L_Engine_ctrl.scaleY" 
		"Robot_Movement:PALBotRN.placeHolderList[48]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_Engine_ctrl_offset|PALBot:PALbot_L_Engine_ctrl.scaleZ" 
		"Robot_Movement:PALBotRN.placeHolderList[49]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_IK_Foot_offset|PALBot:PALbot_L_IK_Foot_ctrl.Heel_Peel" 
		"Robot_Movement:PALBotRN.placeHolderList[50]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_IK_Foot_offset|PALBot:PALbot_L_IK_Foot_ctrl.follow_hip" 
		"Robot_Movement:PALBotRN.placeHolderList[51]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_IK_Foot_offset|PALBot:PALbot_L_IK_Foot_ctrl.translateX" 
		"Robot_Movement:PALBotRN.placeHolderList[52]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_IK_Foot_offset|PALBot:PALbot_L_IK_Foot_ctrl.translateY" 
		"Robot_Movement:PALBotRN.placeHolderList[53]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_IK_Foot_offset|PALBot:PALbot_L_IK_Foot_ctrl.translateZ" 
		"Robot_Movement:PALBotRN.placeHolderList[54]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_IK_Foot_offset|PALBot:PALbot_L_IK_Foot_ctrl.rotateX" 
		"Robot_Movement:PALBotRN.placeHolderList[55]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_IK_Foot_offset|PALBot:PALbot_L_IK_Foot_ctrl.rotateY" 
		"Robot_Movement:PALBotRN.placeHolderList[56]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_IK_Foot_offset|PALBot:PALbot_L_IK_Foot_ctrl.rotateZ" 
		"Robot_Movement:PALBotRN.placeHolderList[57]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_IK_Foot_offset|PALBot:PALbot_L_IK_Foot_ctrl|PALBot:PALbot_L_IK_heel_lift_offset|PALBot:PALbot_L_IK_heel_lift_tip.rotateX" 
		"Robot_Movement:PALBotRN.placeHolderList[58]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_IK_Foot_offset|PALBot:PALbot_L_IK_Foot_ctrl|PALBot:PALbot_L_IK_heel_lift_offset|PALBot:PALbot_L_IK_heel_lift_tip.rotateY" 
		"Robot_Movement:PALBotRN.placeHolderList[59]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_IK_Foot_offset|PALBot:PALbot_L_IK_Foot_ctrl|PALBot:PALbot_L_IK_heel_lift_offset|PALBot:PALbot_L_IK_heel_lift_tip.rotateZ" 
		"Robot_Movement:PALBotRN.placeHolderList[60]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_IK_Foot_offset|PALBot:PALbot_L_IK_Foot_ctrl|PALBot:PALbot_L_IK_heel_lift_offset|PALBot:PALbot_L_IK_heel_lift_tip.translateX" 
		"Robot_Movement:PALBotRN.placeHolderList[61]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_IK_Foot_offset|PALBot:PALbot_L_IK_Foot_ctrl|PALBot:PALbot_L_IK_heel_lift_offset|PALBot:PALbot_L_IK_heel_lift_tip.translateY" 
		"Robot_Movement:PALBotRN.placeHolderList[62]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_IK_Foot_offset|PALBot:PALbot_L_IK_Foot_ctrl|PALBot:PALbot_L_IK_heel_lift_offset|PALBot:PALbot_L_IK_heel_lift_tip.translateZ" 
		"Robot_Movement:PALBotRN.placeHolderList[63]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_IK_Foot_offset|PALBot:PALbot_L_IK_Foot_ctrl|PALBot:PALbot_L_IK_heel_lift_offset|PALBot:PALbot_L_IK_heel_lift_tip|PALBot:PALbot_L_IK_foot_tip_offset|PALBot:PALbot_L_IK_foot_tip.translateX" 
		"Robot_Movement:PALBotRN.placeHolderList[64]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_IK_Foot_offset|PALBot:PALbot_L_IK_Foot_ctrl|PALBot:PALbot_L_IK_heel_lift_offset|PALBot:PALbot_L_IK_heel_lift_tip|PALBot:PALbot_L_IK_foot_tip_offset|PALBot:PALbot_L_IK_foot_tip.translateY" 
		"Robot_Movement:PALBotRN.placeHolderList[65]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_IK_Foot_offset|PALBot:PALbot_L_IK_Foot_ctrl|PALBot:PALbot_L_IK_heel_lift_offset|PALBot:PALbot_L_IK_heel_lift_tip|PALBot:PALbot_L_IK_foot_tip_offset|PALBot:PALbot_L_IK_foot_tip.translateZ" 
		"Robot_Movement:PALBotRN.placeHolderList[66]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_IK_Foot_offset|PALBot:PALbot_L_IK_Foot_ctrl|PALBot:PALbot_L_IK_heel_lift_offset|PALBot:PALbot_L_IK_heel_lift_tip|PALBot:PALbot_L_IK_foot_tip_offset|PALBot:PALbot_L_IK_foot_tip.rotateX" 
		"Robot_Movement:PALBotRN.placeHolderList[67]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_IK_Foot_offset|PALBot:PALbot_L_IK_Foot_ctrl|PALBot:PALbot_L_IK_heel_lift_offset|PALBot:PALbot_L_IK_heel_lift_tip|PALBot:PALbot_L_IK_foot_tip_offset|PALBot:PALbot_L_IK_foot_tip.rotateY" 
		"Robot_Movement:PALBotRN.placeHolderList[68]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_IK_Foot_offset|PALBot:PALbot_L_IK_Foot_ctrl|PALBot:PALbot_L_IK_heel_lift_offset|PALBot:PALbot_L_IK_heel_lift_tip|PALBot:PALbot_L_IK_foot_tip_offset|PALBot:PALbot_L_IK_foot_tip.rotateZ" 
		"Robot_Movement:PALBotRN.placeHolderList[69]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_IK_Foot_offset|PALBot:PALbot_L_IK_Foot_ctrl|PALBot:PALbot_L_IK_heel_lift_offset|PALBot:PALbot_L_IK_heel_lift_tip|PALBot:PALbot_L_IK_foot_tip_offset|PALBot:PALbot_L_IK_foot_tip|PALBot:PALbot_L_IK_footBall_offset|PALBot:PALbot_L_IK_footBall_ctrl.translateX" 
		"Robot_Movement:PALBotRN.placeHolderList[70]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_IK_Foot_offset|PALBot:PALbot_L_IK_Foot_ctrl|PALBot:PALbot_L_IK_heel_lift_offset|PALBot:PALbot_L_IK_heel_lift_tip|PALBot:PALbot_L_IK_foot_tip_offset|PALBot:PALbot_L_IK_foot_tip|PALBot:PALbot_L_IK_footBall_offset|PALBot:PALbot_L_IK_footBall_ctrl.translateY" 
		"Robot_Movement:PALBotRN.placeHolderList[71]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_IK_Foot_offset|PALBot:PALbot_L_IK_Foot_ctrl|PALBot:PALbot_L_IK_heel_lift_offset|PALBot:PALbot_L_IK_heel_lift_tip|PALBot:PALbot_L_IK_foot_tip_offset|PALBot:PALbot_L_IK_foot_tip|PALBot:PALbot_L_IK_footBall_offset|PALBot:PALbot_L_IK_footBall_ctrl.translateZ" 
		"Robot_Movement:PALBotRN.placeHolderList[72]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_IK_Foot_offset|PALBot:PALbot_L_IK_Foot_ctrl|PALBot:PALbot_L_IK_heel_lift_offset|PALBot:PALbot_L_IK_heel_lift_tip|PALBot:PALbot_L_IK_foot_tip_offset|PALBot:PALbot_L_IK_foot_tip|PALBot:PALbot_L_IK_footBall_offset|PALBot:PALbot_L_IK_footBall_ctrl.rotateX" 
		"Robot_Movement:PALBotRN.placeHolderList[73]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_IK_Foot_offset|PALBot:PALbot_L_IK_Foot_ctrl|PALBot:PALbot_L_IK_heel_lift_offset|PALBot:PALbot_L_IK_heel_lift_tip|PALBot:PALbot_L_IK_foot_tip_offset|PALBot:PALbot_L_IK_foot_tip|PALBot:PALbot_L_IK_footBall_offset|PALBot:PALbot_L_IK_footBall_ctrl.rotateY" 
		"Robot_Movement:PALBotRN.placeHolderList[74]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_IK_Foot_offset|PALBot:PALbot_L_IK_Foot_ctrl|PALBot:PALbot_L_IK_heel_lift_offset|PALBot:PALbot_L_IK_heel_lift_tip|PALBot:PALbot_L_IK_foot_tip_offset|PALBot:PALbot_L_IK_foot_tip|PALBot:PALbot_L_IK_footBall_offset|PALBot:PALbot_L_IK_footBall_ctrl.rotateZ" 
		"Robot_Movement:PALBotRN.placeHolderList[75]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_HandVIS_offset|PALBot:PALbot_R_HandVIS.Hand_Vis" 
		"Robot_Movement:PALBotRN.placeHolderList[76]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_HandVIS_offset|PALBot:PALbot_R_HandVIS.canon_light" 
		"Robot_Movement:PALBotRN.placeHolderList[77]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl.secondary_vis" 
		"Robot_Movement:PALBotRN.placeHolderList[78]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl.translateX" 
		"Robot_Movement:PALBotRN.placeHolderList[79]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl.translateY" 
		"Robot_Movement:PALBotRN.placeHolderList[80]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl.translateZ" 
		"Robot_Movement:PALBotRN.placeHolderList[81]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl.rotateX" 
		"Robot_Movement:PALBotRN.placeHolderList[82]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl.rotateY" 
		"Robot_Movement:PALBotRN.placeHolderList[83]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl.rotateZ" 
		"Robot_Movement:PALBotRN.placeHolderList[84]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl.secondary_vis" 
		"Robot_Movement:PALBotRN.placeHolderList[85]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl.rotateY" 
		"Robot_Movement:PALBotRN.placeHolderList[86]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl.rotateX" 
		"Robot_Movement:PALBotRN.placeHolderList[87]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl.rotateZ" 
		"Robot_Movement:PALBotRN.placeHolderList[88]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl.translateX" 
		"Robot_Movement:PALBotRN.placeHolderList[89]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl.translateY" 
		"Robot_Movement:PALBotRN.placeHolderList[90]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl.translateZ" 
		"Robot_Movement:PALBotRN.placeHolderList[91]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_Neck_ctrl_offset|PALBot:PALbot_Neck_ctrl.translateX" 
		"Robot_Movement:PALBotRN.placeHolderList[92]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_Neck_ctrl_offset|PALBot:PALbot_Neck_ctrl.translateY" 
		"Robot_Movement:PALBotRN.placeHolderList[93]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_Neck_ctrl_offset|PALBot:PALbot_Neck_ctrl.translateZ" 
		"Robot_Movement:PALBotRN.placeHolderList[94]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_Neck_ctrl_offset|PALBot:PALbot_Neck_ctrl.rotateX" 
		"Robot_Movement:PALBotRN.placeHolderList[95]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_Neck_ctrl_offset|PALBot:PALbot_Neck_ctrl.rotateY" 
		"Robot_Movement:PALBotRN.placeHolderList[96]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_Neck_ctrl_offset|PALBot:PALbot_Neck_ctrl.rotateZ" 
		"Robot_Movement:PALBotRN.placeHolderList[97]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_Neck_ctrl_offset|PALBot:PALbot_Neck_ctrl|PALBot:PALbot_head_ctrl_offset|PALBot:PALbot_head_ctrl.Space_switch" 
		"Robot_Movement:PALBotRN.placeHolderList[98]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_Neck_ctrl_offset|PALBot:PALbot_Neck_ctrl|PALBot:PALbot_head_ctrl_offset|PALBot:PALbot_head_ctrl.FaceLight" 
		"Robot_Movement:PALBotRN.placeHolderList[99]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_Neck_ctrl_offset|PALBot:PALbot_Neck_ctrl|PALBot:PALbot_head_ctrl_offset|PALBot:PALbot_head_ctrl.Led_color" 
		"Robot_Movement:PALBotRN.placeHolderList[100]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_Neck_ctrl_offset|PALBot:PALbot_Neck_ctrl|PALBot:PALbot_head_ctrl_offset|PALBot:PALbot_head_ctrl.Face_Drawing" 
		"Robot_Movement:PALBotRN.placeHolderList[101]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_Neck_ctrl_offset|PALBot:PALbot_Neck_ctrl|PALBot:PALbot_head_ctrl_offset|PALBot:PALbot_head_ctrl.rotateY" 
		"Robot_Movement:PALBotRN.placeHolderList[102]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_Neck_ctrl_offset|PALBot:PALbot_Neck_ctrl|PALBot:PALbot_head_ctrl_offset|PALBot:PALbot_head_ctrl.rotateX" 
		"Robot_Movement:PALBotRN.placeHolderList[103]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_Neck_ctrl_offset|PALBot:PALbot_Neck_ctrl|PALBot:PALbot_head_ctrl_offset|PALBot:PALbot_head_ctrl.rotateZ" 
		"Robot_Movement:PALBotRN.placeHolderList[104]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_Neck_ctrl_offset|PALBot:PALbot_Neck_ctrl|PALBot:PALbot_head_ctrl_offset|PALBot:PALbot_head_ctrl.translateX" 
		"Robot_Movement:PALBotRN.placeHolderList[105]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_Neck_ctrl_offset|PALBot:PALbot_Neck_ctrl|PALBot:PALbot_head_ctrl_offset|PALBot:PALbot_head_ctrl.translateY" 
		"Robot_Movement:PALBotRN.placeHolderList[106]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_Neck_ctrl_offset|PALBot:PALbot_Neck_ctrl|PALBot:PALbot_head_ctrl_offset|PALBot:PALbot_head_ctrl.translateZ" 
		"Robot_Movement:PALBotRN.placeHolderList[107]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_R_Clavicle_offset|PALBot:PALbot_R_Clavicle_ctrl.translateX" 
		"Robot_Movement:PALBotRN.placeHolderList[108]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_R_Clavicle_offset|PALBot:PALbot_R_Clavicle_ctrl.translateY" 
		"Robot_Movement:PALBotRN.placeHolderList[109]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_R_Clavicle_offset|PALBot:PALbot_R_Clavicle_ctrl.translateZ" 
		"Robot_Movement:PALBotRN.placeHolderList[110]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_R_Clavicle_offset|PALBot:PALbot_R_Clavicle_ctrl.rotateX" 
		"Robot_Movement:PALBotRN.placeHolderList[111]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_R_Clavicle_offset|PALBot:PALbot_R_Clavicle_ctrl.rotateY" 
		"Robot_Movement:PALBotRN.placeHolderList[112]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_R_Clavicle_offset|PALBot:PALbot_R_Clavicle_ctrl.rotateZ" 
		"Robot_Movement:PALBotRN.placeHolderList[113]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_R_Clavicle_offset|PALBot:PALbot_R_Clavicle_ctrl|PALBot:PALbot_R_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl.rotateZ" 
		"Robot_Movement:PALBotRN.placeHolderList[114]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_R_Clavicle_offset|PALBot:PALbot_R_Clavicle_ctrl|PALBot:PALbot_R_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl.translateX" 
		"Robot_Movement:PALBotRN.placeHolderList[115]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_R_Clavicle_offset|PALBot:PALbot_R_Clavicle_ctrl|PALBot:PALbot_R_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl.translateY" 
		"Robot_Movement:PALBotRN.placeHolderList[116]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_R_Clavicle_offset|PALBot:PALbot_R_Clavicle_ctrl|PALBot:PALbot_R_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl.translateZ" 
		"Robot_Movement:PALBotRN.placeHolderList[117]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_R_Clavicle_offset|PALBot:PALbot_R_Clavicle_ctrl|PALBot:PALbot_R_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl.rotateZ" 
		"Robot_Movement:PALBotRN.placeHolderList[118]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_R_Clavicle_offset|PALBot:PALbot_R_Clavicle_ctrl|PALBot:PALbot_R_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl.rotateY" 
		"Robot_Movement:PALBotRN.placeHolderList[119]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_R_Clavicle_offset|PALBot:PALbot_R_Clavicle_ctrl|PALBot:PALbot_R_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl.translateX" 
		"Robot_Movement:PALBotRN.placeHolderList[120]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_R_Clavicle_offset|PALBot:PALbot_R_Clavicle_ctrl|PALBot:PALbot_R_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl.translateY" 
		"Robot_Movement:PALBotRN.placeHolderList[121]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_R_Clavicle_offset|PALBot:PALbot_R_Clavicle_ctrl|PALBot:PALbot_R_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl.translateZ" 
		"Robot_Movement:PALBotRN.placeHolderList[122]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_R_Clavicle_offset|PALBot:PALbot_R_Clavicle_ctrl|PALBot:PALbot_R_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl|PALBot:PALbot_R_FK_Elbow_offset|PALBot:PALbot_R_FK_Elbow_ctrl.rotateX" 
		"Robot_Movement:PALBotRN.placeHolderList[123]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_R_Clavicle_offset|PALBot:PALbot_R_Clavicle_ctrl|PALBot:PALbot_R_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl|PALBot:PALbot_R_FK_Elbow_offset|PALBot:PALbot_R_FK_Elbow_ctrl.translateX" 
		"Robot_Movement:PALBotRN.placeHolderList[124]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_R_Clavicle_offset|PALBot:PALbot_R_Clavicle_ctrl|PALBot:PALbot_R_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl|PALBot:PALbot_R_FK_Elbow_offset|PALBot:PALbot_R_FK_Elbow_ctrl.translateY" 
		"Robot_Movement:PALBotRN.placeHolderList[125]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_R_Clavicle_offset|PALBot:PALbot_R_Clavicle_ctrl|PALBot:PALbot_R_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl|PALBot:PALbot_R_FK_Elbow_offset|PALBot:PALbot_R_FK_Elbow_ctrl.translateZ" 
		"Robot_Movement:PALBotRN.placeHolderList[126]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_R_Clavicle_offset|PALBot:PALbot_R_Clavicle_ctrl|PALBot:PALbot_R_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl|PALBot:PALbot_R_FK_Elbow_offset|PALBot:PALbot_R_FK_Elbow_ctrl|PALBot:PALbot_R_FK_Wrist_ctrl_offset|PALBot:PALbot_R_FK_Wrist_ctrl.translateX" 
		"Robot_Movement:PALBotRN.placeHolderList[127]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_R_Clavicle_offset|PALBot:PALbot_R_Clavicle_ctrl|PALBot:PALbot_R_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl|PALBot:PALbot_R_FK_Elbow_offset|PALBot:PALbot_R_FK_Elbow_ctrl|PALBot:PALbot_R_FK_Wrist_ctrl_offset|PALBot:PALbot_R_FK_Wrist_ctrl.translateY" 
		"Robot_Movement:PALBotRN.placeHolderList[128]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_R_Clavicle_offset|PALBot:PALbot_R_Clavicle_ctrl|PALBot:PALbot_R_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl|PALBot:PALbot_R_FK_Elbow_offset|PALBot:PALbot_R_FK_Elbow_ctrl|PALBot:PALbot_R_FK_Wrist_ctrl_offset|PALBot:PALbot_R_FK_Wrist_ctrl.translateZ" 
		"Robot_Movement:PALBotRN.placeHolderList[129]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_R_Clavicle_offset|PALBot:PALbot_R_Clavicle_ctrl|PALBot:PALbot_R_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl|PALBot:PALbot_R_FK_Elbow_offset|PALBot:PALbot_R_FK_Elbow_ctrl|PALBot:PALbot_R_FK_Wrist_ctrl_offset|PALBot:PALbot_R_FK_Wrist_ctrl.rotateX" 
		"Robot_Movement:PALBotRN.placeHolderList[130]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_R_Clavicle_offset|PALBot:PALbot_R_Clavicle_ctrl|PALBot:PALbot_R_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl|PALBot:PALbot_R_FK_Elbow_offset|PALBot:PALbot_R_FK_Elbow_ctrl|PALBot:PALbot_R_FK_Wrist_ctrl_offset|PALBot:PALbot_R_FK_Wrist_ctrl.rotateY" 
		"Robot_Movement:PALBotRN.placeHolderList[131]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_R_Clavicle_offset|PALBot:PALbot_R_Clavicle_ctrl|PALBot:PALbot_R_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl|PALBot:PALbot_R_FK_Elbow_offset|PALBot:PALbot_R_FK_Elbow_ctrl|PALBot:PALbot_R_FK_Wrist_ctrl_offset|PALBot:PALbot_R_FK_Wrist_ctrl.rotateZ" 
		"Robot_Movement:PALBotRN.placeHolderList[132]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_R_Clavicle_offset|PALBot:PALbot_R_Clavicle_ctrl|PALBot:PALbot_R_arm_IK_FK_switch_offset|PALBot:PALbot_R_arm_IK_FK_switch.IK_FK" 
		"Robot_Movement:PALBotRN.placeHolderList[133]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_L_Clavicle_offset|PALBot:PALbot_L_Clavicle_ctrl.translateX" 
		"Robot_Movement:PALBotRN.placeHolderList[134]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_L_Clavicle_offset|PALBot:PALbot_L_Clavicle_ctrl.translateY" 
		"Robot_Movement:PALBotRN.placeHolderList[135]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_L_Clavicle_offset|PALBot:PALbot_L_Clavicle_ctrl.translateZ" 
		"Robot_Movement:PALBotRN.placeHolderList[136]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_L_Clavicle_offset|PALBot:PALbot_L_Clavicle_ctrl.rotateX" 
		"Robot_Movement:PALBotRN.placeHolderList[137]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_L_Clavicle_offset|PALBot:PALbot_L_Clavicle_ctrl.rotateY" 
		"Robot_Movement:PALBotRN.placeHolderList[138]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_L_Clavicle_offset|PALBot:PALbot_L_Clavicle_ctrl.rotateZ" 
		"Robot_Movement:PALBotRN.placeHolderList[139]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_L_Clavicle_offset|PALBot:PALbot_L_Clavicle_ctrl|PALBot:PALbot_L_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl.rotateZ" 
		"Robot_Movement:PALBotRN.placeHolderList[140]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_L_Clavicle_offset|PALBot:PALbot_L_Clavicle_ctrl|PALBot:PALbot_L_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl.translateX" 
		"Robot_Movement:PALBotRN.placeHolderList[141]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_L_Clavicle_offset|PALBot:PALbot_L_Clavicle_ctrl|PALBot:PALbot_L_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl.translateY" 
		"Robot_Movement:PALBotRN.placeHolderList[142]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_L_Clavicle_offset|PALBot:PALbot_L_Clavicle_ctrl|PALBot:PALbot_L_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl.translateZ" 
		"Robot_Movement:PALBotRN.placeHolderList[143]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_L_Clavicle_offset|PALBot:PALbot_L_Clavicle_ctrl|PALBot:PALbot_L_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl.rotateZ" 
		"Robot_Movement:PALBotRN.placeHolderList[144]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_L_Clavicle_offset|PALBot:PALbot_L_Clavicle_ctrl|PALBot:PALbot_L_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl.rotateY" 
		"Robot_Movement:PALBotRN.placeHolderList[145]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_L_Clavicle_offset|PALBot:PALbot_L_Clavicle_ctrl|PALBot:PALbot_L_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl.translateX" 
		"Robot_Movement:PALBotRN.placeHolderList[146]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_L_Clavicle_offset|PALBot:PALbot_L_Clavicle_ctrl|PALBot:PALbot_L_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl.translateY" 
		"Robot_Movement:PALBotRN.placeHolderList[147]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_L_Clavicle_offset|PALBot:PALbot_L_Clavicle_ctrl|PALBot:PALbot_L_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl.translateZ" 
		"Robot_Movement:PALBotRN.placeHolderList[148]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_L_Clavicle_offset|PALBot:PALbot_L_Clavicle_ctrl|PALBot:PALbot_L_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl|PALBot:PALbot_L_FK_Elbow_offset|PALBot:PALbot_L_FK_Elbow_ctrl.rotateX" 
		"Robot_Movement:PALBotRN.placeHolderList[149]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_L_Clavicle_offset|PALBot:PALbot_L_Clavicle_ctrl|PALBot:PALbot_L_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl|PALBot:PALbot_L_FK_Elbow_offset|PALBot:PALbot_L_FK_Elbow_ctrl.translateX" 
		"Robot_Movement:PALBotRN.placeHolderList[150]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_L_Clavicle_offset|PALBot:PALbot_L_Clavicle_ctrl|PALBot:PALbot_L_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl|PALBot:PALbot_L_FK_Elbow_offset|PALBot:PALbot_L_FK_Elbow_ctrl.translateY" 
		"Robot_Movement:PALBotRN.placeHolderList[151]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_L_Clavicle_offset|PALBot:PALbot_L_Clavicle_ctrl|PALBot:PALbot_L_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl|PALBot:PALbot_L_FK_Elbow_offset|PALBot:PALbot_L_FK_Elbow_ctrl.translateZ" 
		"Robot_Movement:PALBotRN.placeHolderList[152]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_L_Clavicle_offset|PALBot:PALbot_L_Clavicle_ctrl|PALBot:PALbot_L_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl|PALBot:PALbot_L_FK_Elbow_offset|PALBot:PALbot_L_FK_Elbow_ctrl|PALBot:PALbot_L_FK_Wrist_ctrl_offset|PALBot:PALbot_L_FK_Wrist_ctrl.translateX" 
		"Robot_Movement:PALBotRN.placeHolderList[153]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_L_Clavicle_offset|PALBot:PALbot_L_Clavicle_ctrl|PALBot:PALbot_L_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl|PALBot:PALbot_L_FK_Elbow_offset|PALBot:PALbot_L_FK_Elbow_ctrl|PALBot:PALbot_L_FK_Wrist_ctrl_offset|PALBot:PALbot_L_FK_Wrist_ctrl.translateY" 
		"Robot_Movement:PALBotRN.placeHolderList[154]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_L_Clavicle_offset|PALBot:PALbot_L_Clavicle_ctrl|PALBot:PALbot_L_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl|PALBot:PALbot_L_FK_Elbow_offset|PALBot:PALbot_L_FK_Elbow_ctrl|PALBot:PALbot_L_FK_Wrist_ctrl_offset|PALBot:PALbot_L_FK_Wrist_ctrl.translateZ" 
		"Robot_Movement:PALBotRN.placeHolderList[155]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_L_Clavicle_offset|PALBot:PALbot_L_Clavicle_ctrl|PALBot:PALbot_L_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl|PALBot:PALbot_L_FK_Elbow_offset|PALBot:PALbot_L_FK_Elbow_ctrl|PALBot:PALbot_L_FK_Wrist_ctrl_offset|PALBot:PALbot_L_FK_Wrist_ctrl.rotateX" 
		"Robot_Movement:PALBotRN.placeHolderList[156]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_L_Clavicle_offset|PALBot:PALbot_L_Clavicle_ctrl|PALBot:PALbot_L_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl|PALBot:PALbot_L_FK_Elbow_offset|PALBot:PALbot_L_FK_Elbow_ctrl|PALBot:PALbot_L_FK_Wrist_ctrl_offset|PALBot:PALbot_L_FK_Wrist_ctrl.rotateY" 
		"Robot_Movement:PALBotRN.placeHolderList[157]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_L_Clavicle_offset|PALBot:PALbot_L_Clavicle_ctrl|PALBot:PALbot_L_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl|PALBot:PALbot_L_FK_Elbow_offset|PALBot:PALbot_L_FK_Elbow_ctrl|PALBot:PALbot_L_FK_Wrist_ctrl_offset|PALBot:PALbot_L_FK_Wrist_ctrl.rotateZ" 
		"Robot_Movement:PALBotRN.placeHolderList[158]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_L_Clavicle_offset|PALBot:PALbot_L_Clavicle_ctrl|PALBot:PALbot_L_arm_IK_FK_switch_offset|PALBot:PALbot_L_arm_IK_FK_switch.IK_FK" 
		"Robot_Movement:PALBotRN.placeHolderList[159]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_hipMain_ctrl.translateX" 
		"Robot_Movement:PALBotRN.placeHolderList[160]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_hipMain_ctrl.translateY" 
		"Robot_Movement:PALBotRN.placeHolderList[161]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_hipMain_ctrl.translateZ" 
		"Robot_Movement:PALBotRN.placeHolderList[162]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_hipMain_ctrl.rotateX" 
		"Robot_Movement:PALBotRN.placeHolderList[163]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_hipMain_ctrl.rotateY" 
		"Robot_Movement:PALBotRN.placeHolderList[164]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_hipMain_ctrl.rotateZ" 
		"Robot_Movement:PALBotRN.placeHolderList[165]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_hipMain_ctrl|PALBot:PALbot_R_hip_offset|PALBot:PALbot_R_hip.translateX" 
		"Robot_Movement:PALBotRN.placeHolderList[166]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_hipMain_ctrl|PALBot:PALbot_R_hip_offset|PALBot:PALbot_R_hip.translateY" 
		"Robot_Movement:PALBotRN.placeHolderList[167]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_hipMain_ctrl|PALBot:PALbot_R_hip_offset|PALBot:PALbot_R_hip.translateZ" 
		"Robot_Movement:PALBotRN.placeHolderList[168]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_hipMain_ctrl|PALBot:PALbot_R_hip_offset|PALBot:PALbot_R_hip.rotateX" 
		"Robot_Movement:PALBotRN.placeHolderList[169]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_hipMain_ctrl|PALBot:PALbot_R_hip_offset|PALBot:PALbot_R_hip.rotateY" 
		"Robot_Movement:PALBotRN.placeHolderList[170]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_hipMain_ctrl|PALBot:PALbot_R_hip_offset|PALBot:PALbot_R_hip.rotateZ" 
		"Robot_Movement:PALBotRN.placeHolderList[171]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_hipMain_ctrl|PALBot:PALbot_R_hip_offset|PALBot:PALbot_R_hip|PALBot:PALbot_R_leg_IK_FK_switch_offset|PALBot:PALbot_R_leg_IK_FK_switch.IK_FK" 
		"Robot_Movement:PALBotRN.placeHolderList[172]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_hipMain_ctrl|PALBot:PALbot_L_hip_offset|PALBot:PALbot_L_hip.translateX" 
		"Robot_Movement:PALBotRN.placeHolderList[173]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_hipMain_ctrl|PALBot:PALbot_L_hip_offset|PALBot:PALbot_L_hip.translateY" 
		"Robot_Movement:PALBotRN.placeHolderList[174]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_hipMain_ctrl|PALBot:PALbot_L_hip_offset|PALBot:PALbot_L_hip.translateZ" 
		"Robot_Movement:PALBotRN.placeHolderList[175]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_hipMain_ctrl|PALBot:PALbot_L_hip_offset|PALBot:PALbot_L_hip.rotateX" 
		"Robot_Movement:PALBotRN.placeHolderList[176]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_hipMain_ctrl|PALBot:PALbot_L_hip_offset|PALBot:PALbot_L_hip.rotateY" 
		"Robot_Movement:PALBotRN.placeHolderList[177]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_hipMain_ctrl|PALBot:PALbot_L_hip_offset|PALBot:PALbot_L_hip.rotateZ" 
		"Robot_Movement:PALBotRN.placeHolderList[178]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_hipMain_ctrl|PALBot:PALbot_L_hip_offset|PALBot:PALbot_L_hip|PALBot:PALbot_L_leg_IK_FK_switch_offset|PALBot:PALbot_L_leg_IK_FK_switch.IK_FK" 
		"Robot_Movement:PALBotRN.placeHolderList[179]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Thumb01_offset|PALBot:PALbot_L_Thumb01_ctrl.translateX" 
		"Robot_Movement:PALBotRN.placeHolderList[180]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Thumb01_offset|PALBot:PALbot_L_Thumb01_ctrl.translateY" 
		"Robot_Movement:PALBotRN.placeHolderList[181]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Thumb01_offset|PALBot:PALbot_L_Thumb01_ctrl.translateZ" 
		"Robot_Movement:PALBotRN.placeHolderList[182]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Thumb01_offset|PALBot:PALbot_L_Thumb01_ctrl.rotateX" 
		"Robot_Movement:PALBotRN.placeHolderList[183]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Thumb01_offset|PALBot:PALbot_L_Thumb01_ctrl.rotateY" 
		"Robot_Movement:PALBotRN.placeHolderList[184]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Thumb01_offset|PALBot:PALbot_L_Thumb01_ctrl.rotateZ" 
		"Robot_Movement:PALBotRN.placeHolderList[185]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Thumb01_offset|PALBot:PALbot_L_Thumb01_ctrl|PALBot:PALbot_L_Thumb02_offset|PALBot:PALbot_L_Thumb02_ctrl.translateX" 
		"Robot_Movement:PALBotRN.placeHolderList[186]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Thumb01_offset|PALBot:PALbot_L_Thumb01_ctrl|PALBot:PALbot_L_Thumb02_offset|PALBot:PALbot_L_Thumb02_ctrl.translateY" 
		"Robot_Movement:PALBotRN.placeHolderList[187]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Thumb01_offset|PALBot:PALbot_L_Thumb01_ctrl|PALBot:PALbot_L_Thumb02_offset|PALBot:PALbot_L_Thumb02_ctrl.translateZ" 
		"Robot_Movement:PALBotRN.placeHolderList[188]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Thumb01_offset|PALBot:PALbot_L_Thumb01_ctrl|PALBot:PALbot_L_Thumb02_offset|PALBot:PALbot_L_Thumb02_ctrl.rotateX" 
		"Robot_Movement:PALBotRN.placeHolderList[189]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Thumb01_offset|PALBot:PALbot_L_Thumb01_ctrl|PALBot:PALbot_L_Thumb02_offset|PALBot:PALbot_L_Thumb02_ctrl.rotateY" 
		"Robot_Movement:PALBotRN.placeHolderList[190]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Thumb01_offset|PALBot:PALbot_L_Thumb01_ctrl|PALBot:PALbot_L_Thumb02_offset|PALBot:PALbot_L_Thumb02_ctrl.rotateZ" 
		"Robot_Movement:PALBotRN.placeHolderList[191]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Thumb01_offset|PALBot:PALbot_L_Thumb01_ctrl|PALBot:PALbot_L_Thumb02_offset|PALBot:PALbot_L_Thumb02_ctrl|PALBot:PALbot_L_Thumb03_offset|PALBot:PALbot_L_Thumb03_ctrl.translateX" 
		"Robot_Movement:PALBotRN.placeHolderList[192]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Thumb01_offset|PALBot:PALbot_L_Thumb01_ctrl|PALBot:PALbot_L_Thumb02_offset|PALBot:PALbot_L_Thumb02_ctrl|PALBot:PALbot_L_Thumb03_offset|PALBot:PALbot_L_Thumb03_ctrl.translateY" 
		"Robot_Movement:PALBotRN.placeHolderList[193]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Thumb01_offset|PALBot:PALbot_L_Thumb01_ctrl|PALBot:PALbot_L_Thumb02_offset|PALBot:PALbot_L_Thumb02_ctrl|PALBot:PALbot_L_Thumb03_offset|PALBot:PALbot_L_Thumb03_ctrl.translateZ" 
		"Robot_Movement:PALBotRN.placeHolderList[194]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Thumb01_offset|PALBot:PALbot_L_Thumb01_ctrl|PALBot:PALbot_L_Thumb02_offset|PALBot:PALbot_L_Thumb02_ctrl|PALBot:PALbot_L_Thumb03_offset|PALBot:PALbot_L_Thumb03_ctrl.rotateX" 
		"Robot_Movement:PALBotRN.placeHolderList[195]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Thumb01_offset|PALBot:PALbot_L_Thumb01_ctrl|PALBot:PALbot_L_Thumb02_offset|PALBot:PALbot_L_Thumb02_ctrl|PALBot:PALbot_L_Thumb03_offset|PALBot:PALbot_L_Thumb03_ctrl.rotateY" 
		"Robot_Movement:PALBotRN.placeHolderList[196]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Thumb01_offset|PALBot:PALbot_L_Thumb01_ctrl|PALBot:PALbot_L_Thumb02_offset|PALBot:PALbot_L_Thumb02_ctrl|PALBot:PALbot_L_Thumb03_offset|PALBot:PALbot_L_Thumb03_ctrl.rotateZ" 
		"Robot_Movement:PALBotRN.placeHolderList[197]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Index01_offset|PALBot:PALbot_L_Index01_ctrl.translateX" 
		"Robot_Movement:PALBotRN.placeHolderList[198]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Index01_offset|PALBot:PALbot_L_Index01_ctrl.translateY" 
		"Robot_Movement:PALBotRN.placeHolderList[199]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Index01_offset|PALBot:PALbot_L_Index01_ctrl.translateZ" 
		"Robot_Movement:PALBotRN.placeHolderList[200]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Index01_offset|PALBot:PALbot_L_Index01_ctrl.rotateX" 
		"Robot_Movement:PALBotRN.placeHolderList[201]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Index01_offset|PALBot:PALbot_L_Index01_ctrl.rotateY" 
		"Robot_Movement:PALBotRN.placeHolderList[202]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Index01_offset|PALBot:PALbot_L_Index01_ctrl.rotateZ" 
		"Robot_Movement:PALBotRN.placeHolderList[203]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Index01_offset|PALBot:PALbot_L_Index01_ctrl|PALBot:PALbot_L_Index02_offset|PALBot:PALbot_L_Index02_ctrl.translateX" 
		"Robot_Movement:PALBotRN.placeHolderList[204]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Index01_offset|PALBot:PALbot_L_Index01_ctrl|PALBot:PALbot_L_Index02_offset|PALBot:PALbot_L_Index02_ctrl.translateY" 
		"Robot_Movement:PALBotRN.placeHolderList[205]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Index01_offset|PALBot:PALbot_L_Index01_ctrl|PALBot:PALbot_L_Index02_offset|PALBot:PALbot_L_Index02_ctrl.translateZ" 
		"Robot_Movement:PALBotRN.placeHolderList[206]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Index01_offset|PALBot:PALbot_L_Index01_ctrl|PALBot:PALbot_L_Index02_offset|PALBot:PALbot_L_Index02_ctrl.rotateX" 
		"Robot_Movement:PALBotRN.placeHolderList[207]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Index01_offset|PALBot:PALbot_L_Index01_ctrl|PALBot:PALbot_L_Index02_offset|PALBot:PALbot_L_Index02_ctrl.rotateY" 
		"Robot_Movement:PALBotRN.placeHolderList[208]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Index01_offset|PALBot:PALbot_L_Index01_ctrl|PALBot:PALbot_L_Index02_offset|PALBot:PALbot_L_Index02_ctrl.rotateZ" 
		"Robot_Movement:PALBotRN.placeHolderList[209]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Middle01_offset|PALBot:PALbot_L_Middle01_ctrl.translateX" 
		"Robot_Movement:PALBotRN.placeHolderList[210]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Middle01_offset|PALBot:PALbot_L_Middle01_ctrl.translateY" 
		"Robot_Movement:PALBotRN.placeHolderList[211]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Middle01_offset|PALBot:PALbot_L_Middle01_ctrl.translateZ" 
		"Robot_Movement:PALBotRN.placeHolderList[212]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Middle01_offset|PALBot:PALbot_L_Middle01_ctrl.rotateX" 
		"Robot_Movement:PALBotRN.placeHolderList[213]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Middle01_offset|PALBot:PALbot_L_Middle01_ctrl.rotateY" 
		"Robot_Movement:PALBotRN.placeHolderList[214]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Middle01_offset|PALBot:PALbot_L_Middle01_ctrl.rotateZ" 
		"Robot_Movement:PALBotRN.placeHolderList[215]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Middle01_offset|PALBot:PALbot_L_Middle01_ctrl|PALBot:PALbot_L_Middle02_offset|PALBot:PALbot_L_Middle02_ctrl.translateX" 
		"Robot_Movement:PALBotRN.placeHolderList[216]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Middle01_offset|PALBot:PALbot_L_Middle01_ctrl|PALBot:PALbot_L_Middle02_offset|PALBot:PALbot_L_Middle02_ctrl.translateY" 
		"Robot_Movement:PALBotRN.placeHolderList[217]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Middle01_offset|PALBot:PALbot_L_Middle01_ctrl|PALBot:PALbot_L_Middle02_offset|PALBot:PALbot_L_Middle02_ctrl.translateZ" 
		"Robot_Movement:PALBotRN.placeHolderList[218]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Middle01_offset|PALBot:PALbot_L_Middle01_ctrl|PALBot:PALbot_L_Middle02_offset|PALBot:PALbot_L_Middle02_ctrl.rotateX" 
		"Robot_Movement:PALBotRN.placeHolderList[219]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Middle01_offset|PALBot:PALbot_L_Middle01_ctrl|PALBot:PALbot_L_Middle02_offset|PALBot:PALbot_L_Middle02_ctrl.rotateY" 
		"Robot_Movement:PALBotRN.placeHolderList[220]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Middle01_offset|PALBot:PALbot_L_Middle01_ctrl|PALBot:PALbot_L_Middle02_offset|PALBot:PALbot_L_Middle02_ctrl.rotateZ" 
		"Robot_Movement:PALBotRN.placeHolderList[221]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Ring01_offset|PALBot:PALbot_L_Ring01_ctrl.translateX" 
		"Robot_Movement:PALBotRN.placeHolderList[222]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Ring01_offset|PALBot:PALbot_L_Ring01_ctrl.translateY" 
		"Robot_Movement:PALBotRN.placeHolderList[223]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Ring01_offset|PALBot:PALbot_L_Ring01_ctrl.translateZ" 
		"Robot_Movement:PALBotRN.placeHolderList[224]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Ring01_offset|PALBot:PALbot_L_Ring01_ctrl.rotateX" 
		"Robot_Movement:PALBotRN.placeHolderList[225]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Ring01_offset|PALBot:PALbot_L_Ring01_ctrl.rotateY" 
		"Robot_Movement:PALBotRN.placeHolderList[226]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Ring01_offset|PALBot:PALbot_L_Ring01_ctrl.rotateZ" 
		"Robot_Movement:PALBotRN.placeHolderList[227]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Ring01_offset|PALBot:PALbot_L_Ring01_ctrl|PALBot:PALbot_L_Ring02_offset|PALBot:PALbot_L_Ring02_ctrl.translateX" 
		"Robot_Movement:PALBotRN.placeHolderList[228]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Ring01_offset|PALBot:PALbot_L_Ring01_ctrl|PALBot:PALbot_L_Ring02_offset|PALBot:PALbot_L_Ring02_ctrl.translateY" 
		"Robot_Movement:PALBotRN.placeHolderList[229]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Ring01_offset|PALBot:PALbot_L_Ring01_ctrl|PALBot:PALbot_L_Ring02_offset|PALBot:PALbot_L_Ring02_ctrl.translateZ" 
		"Robot_Movement:PALBotRN.placeHolderList[230]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Ring01_offset|PALBot:PALbot_L_Ring01_ctrl|PALBot:PALbot_L_Ring02_offset|PALBot:PALbot_L_Ring02_ctrl.rotateX" 
		"Robot_Movement:PALBotRN.placeHolderList[231]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Ring01_offset|PALBot:PALbot_L_Ring01_ctrl|PALBot:PALbot_L_Ring02_offset|PALBot:PALbot_L_Ring02_ctrl.rotateY" 
		"Robot_Movement:PALBotRN.placeHolderList[232]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Ring01_offset|PALBot:PALbot_L_Ring01_ctrl|PALBot:PALbot_L_Ring02_offset|PALBot:PALbot_L_Ring02_ctrl.rotateZ" 
		"Robot_Movement:PALBotRN.placeHolderList[233]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Pinky01_offset|PALBot:PALbot_L_Pinky01_ctrl.translateX" 
		"Robot_Movement:PALBotRN.placeHolderList[234]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Pinky01_offset|PALBot:PALbot_L_Pinky01_ctrl.translateY" 
		"Robot_Movement:PALBotRN.placeHolderList[235]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Pinky01_offset|PALBot:PALbot_L_Pinky01_ctrl.translateZ" 
		"Robot_Movement:PALBotRN.placeHolderList[236]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Pinky01_offset|PALBot:PALbot_L_Pinky01_ctrl.rotateX" 
		"Robot_Movement:PALBotRN.placeHolderList[237]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Pinky01_offset|PALBot:PALbot_L_Pinky01_ctrl.rotateY" 
		"Robot_Movement:PALBotRN.placeHolderList[238]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Pinky01_offset|PALBot:PALbot_L_Pinky01_ctrl.rotateZ" 
		"Robot_Movement:PALBotRN.placeHolderList[239]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Pinky01_offset|PALBot:PALbot_L_Pinky01_ctrl|PALBot:PALbot_L_Pinky02_offset|PALBot:PALbot_L_Pinky02_ctrl.translateX" 
		"Robot_Movement:PALBotRN.placeHolderList[240]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Pinky01_offset|PALBot:PALbot_L_Pinky01_ctrl|PALBot:PALbot_L_Pinky02_offset|PALBot:PALbot_L_Pinky02_ctrl.translateY" 
		"Robot_Movement:PALBotRN.placeHolderList[241]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Pinky01_offset|PALBot:PALbot_L_Pinky01_ctrl|PALBot:PALbot_L_Pinky02_offset|PALBot:PALbot_L_Pinky02_ctrl.translateZ" 
		"Robot_Movement:PALBotRN.placeHolderList[242]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Pinky01_offset|PALBot:PALbot_L_Pinky01_ctrl|PALBot:PALbot_L_Pinky02_offset|PALBot:PALbot_L_Pinky02_ctrl.rotateX" 
		"Robot_Movement:PALBotRN.placeHolderList[243]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Pinky01_offset|PALBot:PALbot_L_Pinky01_ctrl|PALBot:PALbot_L_Pinky02_offset|PALBot:PALbot_L_Pinky02_ctrl.rotateY" 
		"Robot_Movement:PALBotRN.placeHolderList[244]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Pinky01_offset|PALBot:PALbot_L_Pinky01_ctrl|PALBot:PALbot_L_Pinky02_offset|PALBot:PALbot_L_Pinky02_ctrl.rotateZ" 
		"Robot_Movement:PALBotRN.placeHolderList[245]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Thumb01_offset|PALBot:PALbot_R_Thumb01_ctrl.translateX" 
		"Robot_Movement:PALBotRN.placeHolderList[246]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Thumb01_offset|PALBot:PALbot_R_Thumb01_ctrl.translateY" 
		"Robot_Movement:PALBotRN.placeHolderList[247]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Thumb01_offset|PALBot:PALbot_R_Thumb01_ctrl.translateZ" 
		"Robot_Movement:PALBotRN.placeHolderList[248]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Thumb01_offset|PALBot:PALbot_R_Thumb01_ctrl.rotateX" 
		"Robot_Movement:PALBotRN.placeHolderList[249]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Thumb01_offset|PALBot:PALbot_R_Thumb01_ctrl.rotateY" 
		"Robot_Movement:PALBotRN.placeHolderList[250]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Thumb01_offset|PALBot:PALbot_R_Thumb01_ctrl.rotateZ" 
		"Robot_Movement:PALBotRN.placeHolderList[251]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Thumb01_offset|PALBot:PALbot_R_Thumb01_ctrl|PALBot:PALbot_R_Thumb02_offset|PALBot:PALbot_R_Thumb02_ctrl.translateX" 
		"Robot_Movement:PALBotRN.placeHolderList[252]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Thumb01_offset|PALBot:PALbot_R_Thumb01_ctrl|PALBot:PALbot_R_Thumb02_offset|PALBot:PALbot_R_Thumb02_ctrl.translateY" 
		"Robot_Movement:PALBotRN.placeHolderList[253]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Thumb01_offset|PALBot:PALbot_R_Thumb01_ctrl|PALBot:PALbot_R_Thumb02_offset|PALBot:PALbot_R_Thumb02_ctrl.translateZ" 
		"Robot_Movement:PALBotRN.placeHolderList[254]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Thumb01_offset|PALBot:PALbot_R_Thumb01_ctrl|PALBot:PALbot_R_Thumb02_offset|PALBot:PALbot_R_Thumb02_ctrl.rotateX" 
		"Robot_Movement:PALBotRN.placeHolderList[255]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Thumb01_offset|PALBot:PALbot_R_Thumb01_ctrl|PALBot:PALbot_R_Thumb02_offset|PALBot:PALbot_R_Thumb02_ctrl.rotateY" 
		"Robot_Movement:PALBotRN.placeHolderList[256]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Thumb01_offset|PALBot:PALbot_R_Thumb01_ctrl|PALBot:PALbot_R_Thumb02_offset|PALBot:PALbot_R_Thumb02_ctrl.rotateZ" 
		"Robot_Movement:PALBotRN.placeHolderList[257]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Thumb01_offset|PALBot:PALbot_R_Thumb01_ctrl|PALBot:PALbot_R_Thumb02_offset|PALBot:PALbot_R_Thumb02_ctrl|PALBot:PALbot_R_Thumb03_offset|PALBot:PALbot_R_Thumb03_ctrl.translateX" 
		"Robot_Movement:PALBotRN.placeHolderList[258]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Thumb01_offset|PALBot:PALbot_R_Thumb01_ctrl|PALBot:PALbot_R_Thumb02_offset|PALBot:PALbot_R_Thumb02_ctrl|PALBot:PALbot_R_Thumb03_offset|PALBot:PALbot_R_Thumb03_ctrl.translateY" 
		"Robot_Movement:PALBotRN.placeHolderList[259]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Thumb01_offset|PALBot:PALbot_R_Thumb01_ctrl|PALBot:PALbot_R_Thumb02_offset|PALBot:PALbot_R_Thumb02_ctrl|PALBot:PALbot_R_Thumb03_offset|PALBot:PALbot_R_Thumb03_ctrl.translateZ" 
		"Robot_Movement:PALBotRN.placeHolderList[260]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Thumb01_offset|PALBot:PALbot_R_Thumb01_ctrl|PALBot:PALbot_R_Thumb02_offset|PALBot:PALbot_R_Thumb02_ctrl|PALBot:PALbot_R_Thumb03_offset|PALBot:PALbot_R_Thumb03_ctrl.rotateX" 
		"Robot_Movement:PALBotRN.placeHolderList[261]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Thumb01_offset|PALBot:PALbot_R_Thumb01_ctrl|PALBot:PALbot_R_Thumb02_offset|PALBot:PALbot_R_Thumb02_ctrl|PALBot:PALbot_R_Thumb03_offset|PALBot:PALbot_R_Thumb03_ctrl.rotateY" 
		"Robot_Movement:PALBotRN.placeHolderList[262]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Thumb01_offset|PALBot:PALbot_R_Thumb01_ctrl|PALBot:PALbot_R_Thumb02_offset|PALBot:PALbot_R_Thumb02_ctrl|PALBot:PALbot_R_Thumb03_offset|PALBot:PALbot_R_Thumb03_ctrl.rotateZ" 
		"Robot_Movement:PALBotRN.placeHolderList[263]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Index01_offset|PALBot:PALbot_R_Index01_ctrl.translateX" 
		"Robot_Movement:PALBotRN.placeHolderList[264]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Index01_offset|PALBot:PALbot_R_Index01_ctrl.translateY" 
		"Robot_Movement:PALBotRN.placeHolderList[265]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Index01_offset|PALBot:PALbot_R_Index01_ctrl.translateZ" 
		"Robot_Movement:PALBotRN.placeHolderList[266]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Index01_offset|PALBot:PALbot_R_Index01_ctrl.rotateX" 
		"Robot_Movement:PALBotRN.placeHolderList[267]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Index01_offset|PALBot:PALbot_R_Index01_ctrl.rotateY" 
		"Robot_Movement:PALBotRN.placeHolderList[268]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Index01_offset|PALBot:PALbot_R_Index01_ctrl.rotateZ" 
		"Robot_Movement:PALBotRN.placeHolderList[269]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Index01_offset|PALBot:PALbot_R_Index01_ctrl|PALBot:PALbot_R_Index02_offset|PALBot:PALbot_R_Index02_ctrl.translateX" 
		"Robot_Movement:PALBotRN.placeHolderList[270]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Index01_offset|PALBot:PALbot_R_Index01_ctrl|PALBot:PALbot_R_Index02_offset|PALBot:PALbot_R_Index02_ctrl.translateY" 
		"Robot_Movement:PALBotRN.placeHolderList[271]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Index01_offset|PALBot:PALbot_R_Index01_ctrl|PALBot:PALbot_R_Index02_offset|PALBot:PALbot_R_Index02_ctrl.translateZ" 
		"Robot_Movement:PALBotRN.placeHolderList[272]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Index01_offset|PALBot:PALbot_R_Index01_ctrl|PALBot:PALbot_R_Index02_offset|PALBot:PALbot_R_Index02_ctrl.rotateX" 
		"Robot_Movement:PALBotRN.placeHolderList[273]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Index01_offset|PALBot:PALbot_R_Index01_ctrl|PALBot:PALbot_R_Index02_offset|PALBot:PALbot_R_Index02_ctrl.rotateY" 
		"Robot_Movement:PALBotRN.placeHolderList[274]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Index01_offset|PALBot:PALbot_R_Index01_ctrl|PALBot:PALbot_R_Index02_offset|PALBot:PALbot_R_Index02_ctrl.rotateZ" 
		"Robot_Movement:PALBotRN.placeHolderList[275]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Middle01_offset|PALBot:PALbot_R_Middle01_ctrl.translateX" 
		"Robot_Movement:PALBotRN.placeHolderList[276]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Middle01_offset|PALBot:PALbot_R_Middle01_ctrl.translateY" 
		"Robot_Movement:PALBotRN.placeHolderList[277]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Middle01_offset|PALBot:PALbot_R_Middle01_ctrl.translateZ" 
		"Robot_Movement:PALBotRN.placeHolderList[278]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Middle01_offset|PALBot:PALbot_R_Middle01_ctrl.rotateX" 
		"Robot_Movement:PALBotRN.placeHolderList[279]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Middle01_offset|PALBot:PALbot_R_Middle01_ctrl.rotateY" 
		"Robot_Movement:PALBotRN.placeHolderList[280]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Middle01_offset|PALBot:PALbot_R_Middle01_ctrl.rotateZ" 
		"Robot_Movement:PALBotRN.placeHolderList[281]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Middle01_offset|PALBot:PALbot_R_Middle01_ctrl|PALBot:PALbot_R_Middle02_offset|PALBot:PALbot_R_Middle02_ctrl.translateX" 
		"Robot_Movement:PALBotRN.placeHolderList[282]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Middle01_offset|PALBot:PALbot_R_Middle01_ctrl|PALBot:PALbot_R_Middle02_offset|PALBot:PALbot_R_Middle02_ctrl.translateY" 
		"Robot_Movement:PALBotRN.placeHolderList[283]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Middle01_offset|PALBot:PALbot_R_Middle01_ctrl|PALBot:PALbot_R_Middle02_offset|PALBot:PALbot_R_Middle02_ctrl.translateZ" 
		"Robot_Movement:PALBotRN.placeHolderList[284]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Middle01_offset|PALBot:PALbot_R_Middle01_ctrl|PALBot:PALbot_R_Middle02_offset|PALBot:PALbot_R_Middle02_ctrl.rotateX" 
		"Robot_Movement:PALBotRN.placeHolderList[285]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Middle01_offset|PALBot:PALbot_R_Middle01_ctrl|PALBot:PALbot_R_Middle02_offset|PALBot:PALbot_R_Middle02_ctrl.rotateY" 
		"Robot_Movement:PALBotRN.placeHolderList[286]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Middle01_offset|PALBot:PALbot_R_Middle01_ctrl|PALBot:PALbot_R_Middle02_offset|PALBot:PALbot_R_Middle02_ctrl.rotateZ" 
		"Robot_Movement:PALBotRN.placeHolderList[287]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Ring01_offset|PALBot:PALbot_R_Ring01_ctrl.translateX" 
		"Robot_Movement:PALBotRN.placeHolderList[288]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Ring01_offset|PALBot:PALbot_R_Ring01_ctrl.translateY" 
		"Robot_Movement:PALBotRN.placeHolderList[289]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Ring01_offset|PALBot:PALbot_R_Ring01_ctrl.translateZ" 
		"Robot_Movement:PALBotRN.placeHolderList[290]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Ring01_offset|PALBot:PALbot_R_Ring01_ctrl.rotateX" 
		"Robot_Movement:PALBotRN.placeHolderList[291]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Ring01_offset|PALBot:PALbot_R_Ring01_ctrl.rotateY" 
		"Robot_Movement:PALBotRN.placeHolderList[292]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Ring01_offset|PALBot:PALbot_R_Ring01_ctrl.rotateZ" 
		"Robot_Movement:PALBotRN.placeHolderList[293]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Ring01_offset|PALBot:PALbot_R_Ring01_ctrl|PALBot:PALbot_R_Ring02_offset|PALBot:PALbot_R_Ring02_ctrl.translateX" 
		"Robot_Movement:PALBotRN.placeHolderList[294]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Ring01_offset|PALBot:PALbot_R_Ring01_ctrl|PALBot:PALbot_R_Ring02_offset|PALBot:PALbot_R_Ring02_ctrl.translateY" 
		"Robot_Movement:PALBotRN.placeHolderList[295]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Ring01_offset|PALBot:PALbot_R_Ring01_ctrl|PALBot:PALbot_R_Ring02_offset|PALBot:PALbot_R_Ring02_ctrl.translateZ" 
		"Robot_Movement:PALBotRN.placeHolderList[296]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Ring01_offset|PALBot:PALbot_R_Ring01_ctrl|PALBot:PALbot_R_Ring02_offset|PALBot:PALbot_R_Ring02_ctrl.rotateX" 
		"Robot_Movement:PALBotRN.placeHolderList[297]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Ring01_offset|PALBot:PALbot_R_Ring01_ctrl|PALBot:PALbot_R_Ring02_offset|PALBot:PALbot_R_Ring02_ctrl.rotateY" 
		"Robot_Movement:PALBotRN.placeHolderList[298]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Ring01_offset|PALBot:PALbot_R_Ring01_ctrl|PALBot:PALbot_R_Ring02_offset|PALBot:PALbot_R_Ring02_ctrl.rotateZ" 
		"Robot_Movement:PALBotRN.placeHolderList[299]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Pinky01_offset|PALBot:PALbot_R_Pinky01_ctrl.translateX" 
		"Robot_Movement:PALBotRN.placeHolderList[300]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Pinky01_offset|PALBot:PALbot_R_Pinky01_ctrl.translateY" 
		"Robot_Movement:PALBotRN.placeHolderList[301]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Pinky01_offset|PALBot:PALbot_R_Pinky01_ctrl.translateZ" 
		"Robot_Movement:PALBotRN.placeHolderList[302]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Pinky01_offset|PALBot:PALbot_R_Pinky01_ctrl.rotateX" 
		"Robot_Movement:PALBotRN.placeHolderList[303]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Pinky01_offset|PALBot:PALbot_R_Pinky01_ctrl.rotateY" 
		"Robot_Movement:PALBotRN.placeHolderList[304]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Pinky01_offset|PALBot:PALbot_R_Pinky01_ctrl.rotateZ" 
		"Robot_Movement:PALBotRN.placeHolderList[305]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Pinky01_offset|PALBot:PALbot_R_Pinky01_ctrl|PALBot:PALbot_R_Pinky02_offset|PALBot:PALbot_R_Pinky02_ctrl.translateX" 
		"Robot_Movement:PALBotRN.placeHolderList[306]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Pinky01_offset|PALBot:PALbot_R_Pinky01_ctrl|PALBot:PALbot_R_Pinky02_offset|PALBot:PALbot_R_Pinky02_ctrl.translateY" 
		"Robot_Movement:PALBotRN.placeHolderList[307]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Pinky01_offset|PALBot:PALbot_R_Pinky01_ctrl|PALBot:PALbot_R_Pinky02_offset|PALBot:PALbot_R_Pinky02_ctrl.translateZ" 
		"Robot_Movement:PALBotRN.placeHolderList[308]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Pinky01_offset|PALBot:PALbot_R_Pinky01_ctrl|PALBot:PALbot_R_Pinky02_offset|PALBot:PALbot_R_Pinky02_ctrl.rotateX" 
		"Robot_Movement:PALBotRN.placeHolderList[309]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Pinky01_offset|PALBot:PALbot_R_Pinky01_ctrl|PALBot:PALbot_R_Pinky02_offset|PALBot:PALbot_R_Pinky02_ctrl.rotateY" 
		"Robot_Movement:PALBotRN.placeHolderList[310]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Pinky01_offset|PALBot:PALbot_R_Pinky01_ctrl|PALBot:PALbot_R_Pinky02_offset|PALBot:PALbot_R_Pinky02_ctrl.rotateZ" 
		"Robot_Movement:PALBotRN.placeHolderList[311]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_knee_aim_offset|PALBot:PALbot_R_knee_aim_ctrl.space_switch" 
		"Robot_Movement:PALBotRN.placeHolderList[312]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_knee_aim_offset|PALBot:PALbot_R_knee_aim_ctrl.translateX" 
		"Robot_Movement:PALBotRN.placeHolderList[313]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_knee_aim_offset|PALBot:PALbot_R_knee_aim_ctrl.translateY" 
		"Robot_Movement:PALBotRN.placeHolderList[314]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_knee_aim_offset|PALBot:PALbot_R_knee_aim_ctrl.translateZ" 
		"Robot_Movement:PALBotRN.placeHolderList[315]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_knee_aim_offset|PALBot:PALbot_R_knee_aim_ctrl.rotateX" 
		"Robot_Movement:PALBotRN.placeHolderList[316]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_knee_aim_offset|PALBot:PALbot_R_knee_aim_ctrl.rotateY" 
		"Robot_Movement:PALBotRN.placeHolderList[317]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_knee_aim_offset|PALBot:PALbot_R_knee_aim_ctrl.rotateZ" 
		"Robot_Movement:PALBotRN.placeHolderList[318]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_foot_secondary_offset|PALBot:PALbot_R_foot_secondary.rotateX" 
		"Robot_Movement:PALBotRN.placeHolderList[319]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_foot_secondary_offset|PALBot:PALbot_R_foot_secondary.rotateY" 
		"Robot_Movement:PALBotRN.placeHolderList[320]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_foot_secondary_offset|PALBot:PALbot_R_foot_secondary.rotateZ" 
		"Robot_Movement:PALBotRN.placeHolderList[321]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_foot_secondary_offset|PALBot:PALbot_R_foot_secondary.translateX" 
		"Robot_Movement:PALBotRN.placeHolderList[322]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_foot_secondary_offset|PALBot:PALbot_R_foot_secondary.translateY" 
		"Robot_Movement:PALBotRN.placeHolderList[323]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_foot_secondary_offset|PALBot:PALbot_R_foot_secondary.translateZ" 
		"Robot_Movement:PALBotRN.placeHolderList[324]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_foot_secondary_offset|PALBot:PALbot_R_foot_secondary|PALBot:PALbot_R_footSec_reshape01_offset|PALBot:PALbot_R_footSec_reshape01.translateX" 
		"Robot_Movement:PALBotRN.placeHolderList[325]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_foot_secondary_offset|PALBot:PALbot_R_foot_secondary|PALBot:PALbot_R_footSec_reshape01_offset|PALBot:PALbot_R_footSec_reshape01.translateY" 
		"Robot_Movement:PALBotRN.placeHolderList[326]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_foot_secondary_offset|PALBot:PALbot_R_foot_secondary|PALBot:PALbot_R_footSec_reshape01_offset|PALBot:PALbot_R_footSec_reshape01.translateZ" 
		"Robot_Movement:PALBotRN.placeHolderList[327]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_foot_secondary_offset|PALBot:PALbot_R_foot_secondary|PALBot:PALbot_R_footSec_reshape01_offset|PALBot:PALbot_R_footSec_reshape01.rotateX" 
		"Robot_Movement:PALBotRN.placeHolderList[328]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_foot_secondary_offset|PALBot:PALbot_R_foot_secondary|PALBot:PALbot_R_footSec_reshape01_offset|PALBot:PALbot_R_footSec_reshape01.rotateY" 
		"Robot_Movement:PALBotRN.placeHolderList[329]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_foot_secondary_offset|PALBot:PALbot_R_foot_secondary|PALBot:PALbot_R_footSec_reshape01_offset|PALBot:PALbot_R_footSec_reshape01.rotateZ" 
		"Robot_Movement:PALBotRN.placeHolderList[330]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_foot_secondary_offset|PALBot:PALbot_R_foot_secondary|PALBot:PALbot_R_footSec_reshape02_offset|PALBot:PALbot_R_footSec_reshape02.translateX" 
		"Robot_Movement:PALBotRN.placeHolderList[331]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_foot_secondary_offset|PALBot:PALbot_R_foot_secondary|PALBot:PALbot_R_footSec_reshape02_offset|PALBot:PALbot_R_footSec_reshape02.translateY" 
		"Robot_Movement:PALBotRN.placeHolderList[332]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_foot_secondary_offset|PALBot:PALbot_R_foot_secondary|PALBot:PALbot_R_footSec_reshape02_offset|PALBot:PALbot_R_footSec_reshape02.translateZ" 
		"Robot_Movement:PALBotRN.placeHolderList[333]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_foot_secondary_offset|PALBot:PALbot_R_foot_secondary|PALBot:PALbot_R_footSec_reshape02_offset|PALBot:PALbot_R_footSec_reshape02.rotateX" 
		"Robot_Movement:PALBotRN.placeHolderList[334]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_foot_secondary_offset|PALBot:PALbot_R_foot_secondary|PALBot:PALbot_R_footSec_reshape02_offset|PALBot:PALbot_R_footSec_reshape02.rotateY" 
		"Robot_Movement:PALBotRN.placeHolderList[335]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_foot_secondary_offset|PALBot:PALbot_R_foot_secondary|PALBot:PALbot_R_footSec_reshape02_offset|PALBot:PALbot_R_footSec_reshape02.rotateZ" 
		"Robot_Movement:PALBotRN.placeHolderList[336]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_Engine_ctrl_offset1|PALBot:PALbot_R_Engine_ctrl.on_off" 
		"Robot_Movement:PALBotRN.placeHolderList[337]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_Engine_ctrl_offset1|PALBot:PALbot_R_Engine_ctrl.translateX" 
		"Robot_Movement:PALBotRN.placeHolderList[338]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_Engine_ctrl_offset1|PALBot:PALbot_R_Engine_ctrl.translateY" 
		"Robot_Movement:PALBotRN.placeHolderList[339]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_Engine_ctrl_offset1|PALBot:PALbot_R_Engine_ctrl.translateZ" 
		"Robot_Movement:PALBotRN.placeHolderList[340]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_Engine_ctrl_offset1|PALBot:PALbot_R_Engine_ctrl.rotateX" 
		"Robot_Movement:PALBotRN.placeHolderList[341]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_Engine_ctrl_offset1|PALBot:PALbot_R_Engine_ctrl.rotateY" 
		"Robot_Movement:PALBotRN.placeHolderList[342]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_Engine_ctrl_offset1|PALBot:PALbot_R_Engine_ctrl.rotateZ" 
		"Robot_Movement:PALBotRN.placeHolderList[343]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_Engine_ctrl_offset1|PALBot:PALbot_R_Engine_ctrl.scaleX" 
		"Robot_Movement:PALBotRN.placeHolderList[344]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_Engine_ctrl_offset1|PALBot:PALbot_R_Engine_ctrl.scaleY" 
		"Robot_Movement:PALBotRN.placeHolderList[345]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_Engine_ctrl_offset1|PALBot:PALbot_R_Engine_ctrl.scaleZ" 
		"Robot_Movement:PALBotRN.placeHolderList[346]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_IK_Foot_offset|PALBot:PALbot_R_IK_Foot_ctrl.Heel_Peel" 
		"Robot_Movement:PALBotRN.placeHolderList[347]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_IK_Foot_offset|PALBot:PALbot_R_IK_Foot_ctrl.follow_hip" 
		"Robot_Movement:PALBotRN.placeHolderList[348]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_IK_Foot_offset|PALBot:PALbot_R_IK_Foot_ctrl.translateX" 
		"Robot_Movement:PALBotRN.placeHolderList[349]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_IK_Foot_offset|PALBot:PALbot_R_IK_Foot_ctrl.translateY" 
		"Robot_Movement:PALBotRN.placeHolderList[350]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_IK_Foot_offset|PALBot:PALbot_R_IK_Foot_ctrl.translateZ" 
		"Robot_Movement:PALBotRN.placeHolderList[351]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_IK_Foot_offset|PALBot:PALbot_R_IK_Foot_ctrl.rotateX" 
		"Robot_Movement:PALBotRN.placeHolderList[352]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_IK_Foot_offset|PALBot:PALbot_R_IK_Foot_ctrl.rotateY" 
		"Robot_Movement:PALBotRN.placeHolderList[353]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_IK_Foot_offset|PALBot:PALbot_R_IK_Foot_ctrl.rotateZ" 
		"Robot_Movement:PALBotRN.placeHolderList[354]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_IK_Foot_offset|PALBot:PALbot_R_IK_Foot_ctrl|PALBot:PALbot_R_IK_heel_lift_offset|PALBot:PALbot_R_IK_heel_lift_tip.rotateX" 
		"Robot_Movement:PALBotRN.placeHolderList[355]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_IK_Foot_offset|PALBot:PALbot_R_IK_Foot_ctrl|PALBot:PALbot_R_IK_heel_lift_offset|PALBot:PALbot_R_IK_heel_lift_tip.rotateY" 
		"Robot_Movement:PALBotRN.placeHolderList[356]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_IK_Foot_offset|PALBot:PALbot_R_IK_Foot_ctrl|PALBot:PALbot_R_IK_heel_lift_offset|PALBot:PALbot_R_IK_heel_lift_tip.rotateZ" 
		"Robot_Movement:PALBotRN.placeHolderList[357]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_IK_Foot_offset|PALBot:PALbot_R_IK_Foot_ctrl|PALBot:PALbot_R_IK_heel_lift_offset|PALBot:PALbot_R_IK_heel_lift_tip.translateX" 
		"Robot_Movement:PALBotRN.placeHolderList[358]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_IK_Foot_offset|PALBot:PALbot_R_IK_Foot_ctrl|PALBot:PALbot_R_IK_heel_lift_offset|PALBot:PALbot_R_IK_heel_lift_tip.translateY" 
		"Robot_Movement:PALBotRN.placeHolderList[359]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_IK_Foot_offset|PALBot:PALbot_R_IK_Foot_ctrl|PALBot:PALbot_R_IK_heel_lift_offset|PALBot:PALbot_R_IK_heel_lift_tip.translateZ" 
		"Robot_Movement:PALBotRN.placeHolderList[360]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_IK_Foot_offset|PALBot:PALbot_R_IK_Foot_ctrl|PALBot:PALbot_R_IK_heel_lift_offset|PALBot:PALbot_R_IK_heel_lift_tip|PALBot:PALbot_R_IK_foot_tip_offset|PALBot:PALbot_R_IK_foot_tip.translateX" 
		"Robot_Movement:PALBotRN.placeHolderList[361]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_IK_Foot_offset|PALBot:PALbot_R_IK_Foot_ctrl|PALBot:PALbot_R_IK_heel_lift_offset|PALBot:PALbot_R_IK_heel_lift_tip|PALBot:PALbot_R_IK_foot_tip_offset|PALBot:PALbot_R_IK_foot_tip.translateY" 
		"Robot_Movement:PALBotRN.placeHolderList[362]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_IK_Foot_offset|PALBot:PALbot_R_IK_Foot_ctrl|PALBot:PALbot_R_IK_heel_lift_offset|PALBot:PALbot_R_IK_heel_lift_tip|PALBot:PALbot_R_IK_foot_tip_offset|PALBot:PALbot_R_IK_foot_tip.translateZ" 
		"Robot_Movement:PALBotRN.placeHolderList[363]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_IK_Foot_offset|PALBot:PALbot_R_IK_Foot_ctrl|PALBot:PALbot_R_IK_heel_lift_offset|PALBot:PALbot_R_IK_heel_lift_tip|PALBot:PALbot_R_IK_foot_tip_offset|PALBot:PALbot_R_IK_foot_tip.rotateX" 
		"Robot_Movement:PALBotRN.placeHolderList[364]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_IK_Foot_offset|PALBot:PALbot_R_IK_Foot_ctrl|PALBot:PALbot_R_IK_heel_lift_offset|PALBot:PALbot_R_IK_heel_lift_tip|PALBot:PALbot_R_IK_foot_tip_offset|PALBot:PALbot_R_IK_foot_tip.rotateY" 
		"Robot_Movement:PALBotRN.placeHolderList[365]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_IK_Foot_offset|PALBot:PALbot_R_IK_Foot_ctrl|PALBot:PALbot_R_IK_heel_lift_offset|PALBot:PALbot_R_IK_heel_lift_tip|PALBot:PALbot_R_IK_foot_tip_offset|PALBot:PALbot_R_IK_foot_tip.rotateZ" 
		"Robot_Movement:PALBotRN.placeHolderList[366]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_IK_Foot_offset|PALBot:PALbot_R_IK_Foot_ctrl|PALBot:PALbot_R_IK_heel_lift_offset|PALBot:PALbot_R_IK_heel_lift_tip|PALBot:PALbot_R_IK_foot_tip_offset|PALBot:PALbot_R_IK_foot_tip|PALBot:PALbot_R_IK_footBall_offset|PALBot:PALbot_R_IK_footBall_ctrl.translateX" 
		"Robot_Movement:PALBotRN.placeHolderList[367]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_IK_Foot_offset|PALBot:PALbot_R_IK_Foot_ctrl|PALBot:PALbot_R_IK_heel_lift_offset|PALBot:PALbot_R_IK_heel_lift_tip|PALBot:PALbot_R_IK_foot_tip_offset|PALBot:PALbot_R_IK_foot_tip|PALBot:PALbot_R_IK_footBall_offset|PALBot:PALbot_R_IK_footBall_ctrl.translateY" 
		"Robot_Movement:PALBotRN.placeHolderList[368]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_IK_Foot_offset|PALBot:PALbot_R_IK_Foot_ctrl|PALBot:PALbot_R_IK_heel_lift_offset|PALBot:PALbot_R_IK_heel_lift_tip|PALBot:PALbot_R_IK_foot_tip_offset|PALBot:PALbot_R_IK_foot_tip|PALBot:PALbot_R_IK_footBall_offset|PALBot:PALbot_R_IK_footBall_ctrl.translateZ" 
		"Robot_Movement:PALBotRN.placeHolderList[369]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_IK_Foot_offset|PALBot:PALbot_R_IK_Foot_ctrl|PALBot:PALbot_R_IK_heel_lift_offset|PALBot:PALbot_R_IK_heel_lift_tip|PALBot:PALbot_R_IK_foot_tip_offset|PALBot:PALbot_R_IK_foot_tip|PALBot:PALbot_R_IK_footBall_offset|PALBot:PALbot_R_IK_footBall_ctrl.rotateX" 
		"Robot_Movement:PALBotRN.placeHolderList[370]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_IK_Foot_offset|PALBot:PALbot_R_IK_Foot_ctrl|PALBot:PALbot_R_IK_heel_lift_offset|PALBot:PALbot_R_IK_heel_lift_tip|PALBot:PALbot_R_IK_foot_tip_offset|PALBot:PALbot_R_IK_foot_tip|PALBot:PALbot_R_IK_footBall_offset|PALBot:PALbot_R_IK_footBall_ctrl.rotateY" 
		"Robot_Movement:PALBotRN.placeHolderList[371]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_IK_Foot_offset|PALBot:PALbot_R_IK_Foot_ctrl|PALBot:PALbot_R_IK_heel_lift_offset|PALBot:PALbot_R_IK_heel_lift_tip|PALBot:PALbot_R_IK_foot_tip_offset|PALBot:PALbot_R_IK_foot_tip|PALBot:PALbot_R_IK_footBall_offset|PALBot:PALbot_R_IK_footBall_ctrl.rotateZ" 
		"Robot_Movement:PALBotRN.placeHolderList[372]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_HandVIS_offset|PALBot:PALbot_L_HandVIS.Hand_Vis" 
		"Robot_Movement:PALBotRN.placeHolderList[373]" ""
		5 4 "Robot_Movement:PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_HandVIS_offset|PALBot:PALbot_L_HandVIS.canon_light" 
		"Robot_Movement:PALBotRN.placeHolderList[374]" "";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode animCurveTL -n "Robot_Movement:PALbot_cog_ctrl_translateX";
	rename -uid "B67679DA-42B2-551F-2E5E-1BBC1AEB7B32";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  6 0 7 0 18 0 22 0 28 0 30 0 32 0 37 0 39 0
		 40 0 42 0;
createNode animCurveTL -n "Robot_Movement:PALbot_cog_ctrl_translateY";
	rename -uid "E49947E6-4B35-C4EE-C6FE-B3B8C9C44D17";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  6 -0.04 7 0 18 -5.7642249601536122 22 -5.764
		 28 -5.2570333156256872 30 -6.4715863941192335 32 -8.4523984947634609 37 -9.8545874485297951
		 39 -9.4316112097171541 40 -9.1778254664295691 42 -9.8545874485297968;
createNode animCurveTL -n "Robot_Movement:PALbot_cog_ctrl_translateZ";
	rename -uid "F4A7B7E4-4C62-FFA1-A790-BA8002623FD5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  6 -0.02 7 0 18 0 22 0 28 2.772265703904202
		 30 4.6521219559445415 32 6.1248241818264635 37 6.3637901795397429 39 6.3637901795397429
		 40 6.3637901795397429 42 6.3637901795397429;
createNode animCurveTA -n "Robot_Movement:PALbot_cog_ctrl_rotateX";
	rename -uid "341FD771-4AFB-2B24-425C-93A81BC801D8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  6 0 7 0 18 0 22 0 28 0 30 0 37 81.738859979201678
		 39 81.738859979201678 40 81.738859979201678 42 81.738859979201678;
createNode animCurveTA -n "Robot_Movement:PALbot_cog_ctrl_rotateY";
	rename -uid "25972D15-4570-9DA2-0A82-1B922DCB52F9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  6 0 7 0 18 0 22 0 28 0 30 0 32 0 37 0 39 0
		 40 0 42 0;
createNode animCurveTA -n "Robot_Movement:PALbot_cog_ctrl_rotateZ";
	rename -uid "863A1595-4B40-F55C-34B0-7E83BCC3E89A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  6 0 7 0 18 0 22 0 28 0 30 0 32 0 37 0 39 0
		 40 0 42 0;
createNode animCurveTU -n "Robot_Movement:PALbot_cog_ctrl_secondary_vis";
	rename -uid "1A6B2D62-4198-F031-6415-24987E93CA35";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  6 0 7 0 18 0 22 0 28 0 30 0 32 0 37 0 39 0
		 40 0 42 0;
createNode animCurveTL -n "Robot_Movement:PALbot_L_IK_Foot_ctrl_translateX";
	rename -uid "0453215D-4B81-2EAC-82CA-74AEC40D0F55";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  6 0 7 0 18 0 22 0 27 0 31 0 33 0 34 0 35 0
		 37 0;
createNode animCurveTL -n "Robot_Movement:PALbot_L_IK_Foot_ctrl_translateY";
	rename -uid "32243D4B-4AE6-E56C-BE68-B8BD5A22FFDB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  6 0 7 0 18 0.48818778934191576 22 0.488
		 27 0.91028180081140153 31 1.3616658736228309 33 1.4637060773400941 34 1.4025598727822071
		 35 1.2780635691914028 37 0.95690528507677586;
createNode animCurveTL -n "Robot_Movement:PALbot_L_IK_Foot_ctrl_translateZ";
	rename -uid "55B00215-465E-72BC-32FB-A3A1CC9724C1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  6 0 7 0 18 -3.1806703509762451 22 -3.181
		 27 -3.1809434758189723 31 -3.1806703509762451 33 -3.0400551022557867 34 -3.0566555135630633
		 35 -2.9463116031088155 37 -3.0869268518292738;
createNode animCurveTA -n "Robot_Movement:PALbot_L_IK_Foot_ctrl_rotateX";
	rename -uid "0AC9D189-4C82-8554-6C01-0DAD65E3C7C9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  6 -1.068 7 0 18 73.985330281414477 22 73.985
		 27 73.985056632615652 31 73.985330281414477 33 84.185570299996584 34 92.308745314794621
		 35 100.30853032936807 37 109.52165034615174;
createNode animCurveTA -n "Robot_Movement:PALbot_L_IK_Foot_ctrl_rotateY";
	rename -uid "BF7AD0DF-4EF1-8697-7999-A2B7432B29A0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  6 0 7 0 18 0 22 0 27 0 31 0 33 0 34 0 35 0
		 37 0;
createNode animCurveTA -n "Robot_Movement:PALbot_L_IK_Foot_ctrl_rotateZ";
	rename -uid "51518558-4D4F-C187-4E10-0582F75AE5C0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  6 0 7 0 18 0 22 0 27 0 31 0 33 0 34 0 35 0
		 37 0;
createNode animCurveTU -n "Robot_Movement:PALbot_L_IK_Foot_ctrl_Heel_Peel";
	rename -uid "B88343B5-4EB2-3382-022A-E6BAB3D8B0BC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  6 0 7 0 18 0 22 0 27 0 31 0 33 0 34 0 35 0
		 37 0;
createNode animCurveTU -n "Robot_Movement:PALbot_L_IK_Foot_ctrl_follow_hip";
	rename -uid "955F4643-4639-8D6F-81B7-38B40D32779C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  6 0 7 0 18 0 22 0 27 0 31 0 33 0 34 0 35 0
		 37 0;
createNode animCurveTL -n "Robot_Movement:PALbot_R_IK_footBall_ctrl_translateX";
	rename -uid "8FCC91AB-4185-2EE9-FC03-C7AB6A3534E0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  7 0 18 0 22 0 38 0;
createNode animCurveTL -n "Robot_Movement:PALbot_R_IK_footBall_ctrl_translateY";
	rename -uid "03CC1C36-47AB-456E-C2B1-88BDF83C5B98";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  7 0 18 0 22 0 38 0;
createNode animCurveTL -n "Robot_Movement:PALbot_R_IK_footBall_ctrl_translateZ";
	rename -uid "CB9FDC2B-4D25-7C92-E561-9887839B72AD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  7 0 18 0 22 0 38 0;
createNode animCurveTA -n "Robot_Movement:PALbot_R_IK_footBall_ctrl_rotateX";
	rename -uid "97A8800F-4F2A-0225-72A9-4FA68307AB39";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  7 0 18 -59.675000000000004 22 -59.675000000000004
		 38 0;
createNode animCurveTA -n "Robot_Movement:PALbot_R_IK_footBall_ctrl_rotateY";
	rename -uid "64654A91-42BF-01F1-9B6D-69887D075A1B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  7 0 18 0 22 0 38 0;
createNode animCurveTA -n "Robot_Movement:PALbot_R_IK_footBall_ctrl_rotateZ";
	rename -uid "4960EE85-4A23-79D2-FD7D-DEBB3D866CDC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  7 0 18 0 22 0 38 0;
createNode animCurveTL -n "Robot_Movement:PALbot_R_IK_Foot_ctrl_translateX";
	rename -uid "0F1F53EA-433D-6F6A-BED4-F3BE664129D0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  6 0 7 0 18 0 22 0 27 0 31 0 33 0 34 0 35 0
		 37 0;
createNode animCurveTL -n "Robot_Movement:PALbot_R_IK_Foot_ctrl_translateY";
	rename -uid "B1D0FA97-44AE-F581-C7C7-5C8A1F06BB18";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  6 0 7 0 18 0.48818778934191576 22 0.488
		 27 0.91028180081140153 31 1.3616658736228309 33 1.4637060773400941 34 1.4025598727822071
		 35 1.2780635691914028 37 0.95690528507677586;
createNode animCurveTL -n "Robot_Movement:PALbot_R_IK_Foot_ctrl_translateZ";
	rename -uid "BF888E21-44DD-C75F-49AC-95A778A49FF9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  6 0 7 0 18 -3.181 22 -3.181 27 -3.181 31 -3.181
		 33 -3.0403847512795417 34 -3.0569851625868183 35 -2.9466412521325704 37 -3.0872565008530288;
createNode animCurveTA -n "Robot_Movement:PALbot_R_IK_Foot_ctrl_rotateX";
	rename -uid "5621ABF5-4BE9-C7F1-4B0A-A8ADCEC51E87";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  6 -0.982 7 0 18 73.985330281414477 22 73.985
		 27 73.985056632615652 31 73.985330281414477 33 84.185570299996584 34 92.308745314794621
		 35 100.30853032936807 37 109.52165034615174;
createNode animCurveTA -n "Robot_Movement:PALbot_R_IK_Foot_ctrl_rotateY";
	rename -uid "4D28DCF0-48BA-5C97-4233-9F932FB51D66";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  6 0 7 0 18 0 22 0 27 0 31 0 33 0 34 0 35 0
		 37 0;
createNode animCurveTA -n "Robot_Movement:PALbot_R_IK_Foot_ctrl_rotateZ";
	rename -uid "FB6F86E9-4A56-D84F-48BC-718D46C35E3B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  6 0 7 0 18 0 22 0 27 0 31 0 33 0 34 0 35 0
		 37 0;
createNode animCurveTU -n "Robot_Movement:PALbot_R_IK_Foot_ctrl_Heel_Peel";
	rename -uid "0E03926E-4E46-082B-1F81-B98FA8FB3AB2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  6 0 7 0 18 0 22 0 27 0 31 0 33 0 34 0 35 0
		 37 0;
createNode animCurveTU -n "Robot_Movement:PALbot_R_IK_Foot_ctrl_follow_hip";
	rename -uid "3A93F665-4719-5D99-9578-E3A51D071024";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  6 0 7 0 18 0 22 0 27 0 31 0 33 0 34 0 35 0
		 37 0;
createNode animCurveTA -n "Robot_Movement:PALbot_L_ShoulderRotate_ctrl_rotateZ";
	rename -uid "E20511F9-4903-2257-3E1B-3984ED0EF969";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 -31.031362206015228 3 -28 6 -9.1436026869416356
		 7 0 18 180.77964810141637 29 192.98519139999101 33 198.92132163577989 37 148.34519053001671
		 40 133.76394870094961 42 143.1239487342543;
createNode animCurveTL -n "Robot_Movement:PALbot_L_ShoulderRotate_ctrl_translateX";
	rename -uid "20DDEF09-4C26-A863-7A6D-0EBBEDF154E2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 0 3 0 5 0 6 0 7 0 18 0 29 0 33 0 37 0
		 40 0 42 0;
createNode animCurveTL -n "Robot_Movement:PALbot_L_ShoulderRotate_ctrl_translateY";
	rename -uid "A0A40B92-481D-5B53-49B9-E3ABFE69EB36";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 0 3 0 5 0 6 0 7 0 18 0 29 0 33 0 37 0
		 40 0 42 0;
createNode animCurveTL -n "Robot_Movement:PALbot_L_ShoulderRotate_ctrl_translateZ";
	rename -uid "66B5F71F-404A-79C2-8DEC-308BFCEB7919";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 0 3 0 5 0 6 0 7 0 18 0 29 0 33 0 37 0
		 40 0 42 0;
createNode animCurveTA -n "Robot_Movement:PALbot_L_ShoulderRotate_ctrl_rotateZ1";
	rename -uid "3C5FF52E-4043-DD7E-56BE-4B825E8EA6B0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 -28 6 -4.74 7 0 18 169.75992596512995
		 22 169.75992596512995 31 188.35941722381071 34 189.4107954639735 37 153.89493484685477
		 39 146.33493459407137 40 142.69136220823984 42 150.66407116128178;
createNode animCurveTL -n "Robot_Movement:PALbot_L_ShoulderRotate_ctrl_translateX1";
	rename -uid "1DCEABF6-4FBE-1E47-FBAB-EFA50F947727";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 0 6 0 7 0 18 0 22 0 31 0 34 0 37 0 39 0
		 40 0 42 0;
createNode animCurveTL -n "Robot_Movement:PALbot_L_ShoulderRotate_ctrl_translateY1";
	rename -uid "4E665946-4EFA-8751-CDB4-13913B38FCD1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 0 6 0 7 0 18 0 22 0 31 0 34 0 37 0 39 0
		 40 0 42 0;
createNode animCurveTL -n "Robot_Movement:PALbot_L_ShoulderRotate_ctrl_translateZ1";
	rename -uid "5E1A0C04-4264-5567-A75F-80A9C37A4B69";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 0 6 0 7 0 18 0 22 0 31 0 34 0 37 0 39 0
		 40 0 42 0;
createNode animCurveTL -n "Robot_Movement:PALbot_L_knee_aim_ctrl_translateX";
	rename -uid "F3289160-4348-D661-5AF1-8B8AC48AACBD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 1.188;
createNode animCurveTL -n "Robot_Movement:PALbot_L_knee_aim_ctrl_translateY";
	rename -uid "89091D99-4BA5-DFEC-A905-1183D02D73B3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTL -n "Robot_Movement:PALbot_L_knee_aim_ctrl_translateZ";
	rename -uid "3876D105-4C01-B7BC-4C45-D4AD25AF284B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "Robot_Movement:PALbot_L_knee_aim_ctrl_rotateX";
	rename -uid "03A872D3-4A1D-6A47-72E4-C490DAEF6B84";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "Robot_Movement:PALbot_L_knee_aim_ctrl_rotateY";
	rename -uid "69411999-4A54-B891-83D2-2CB85BD34254";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "Robot_Movement:PALbot_L_knee_aim_ctrl_rotateZ";
	rename -uid "BF280D7E-4290-E812-A168-08B424875DAD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTU -n "Robot_Movement:PALbot_L_knee_aim_ctrl_space_switch";
	rename -uid "E389AA45-4108-BB13-D478-4784E9BBF705";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 2;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "Robot_Movement:PALbot_R_knee_aim_ctrl_translateX";
	rename -uid "5756EFB6-4821-1CE2-7F11-66B335448C8A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 1.051;
createNode animCurveTL -n "Robot_Movement:PALbot_R_knee_aim_ctrl_translateY";
	rename -uid "61E93D47-4FA9-E33F-3ED2-29BC0E64F790";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTL -n "Robot_Movement:PALbot_R_knee_aim_ctrl_translateZ";
	rename -uid "ED2608C8-415A-4B06-79BD-36BD8F11DD14";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "Robot_Movement:PALbot_R_knee_aim_ctrl_rotateX";
	rename -uid "A49BE08D-4A34-14D7-2C92-28BBF6C4F39C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "Robot_Movement:PALbot_R_knee_aim_ctrl_rotateY";
	rename -uid "D0260A34-47E2-C305-6D3F-4DB435DF247E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "Robot_Movement:PALbot_R_knee_aim_ctrl_rotateZ";
	rename -uid "EC519343-4FEF-8732-2FAB-71992885695D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTU -n "Robot_Movement:PALbot_R_knee_aim_ctrl_space_switch";
	rename -uid "A14E14B6-453B-EF84-03D4-C1A771BF72F7";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 2;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "Robot_Movement:PALbot_chestUp_ctrl_rotateX";
	rename -uid "5AE33E5B-4773-FF3A-3225-8EA5E01F3DE0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  1 2 6 2 7 0 18 0 25 0 28 0 30 0 31 8.2800002350243176
		 32 5.5548340254916253 33 0.72000017451834175 34 -3.9065101233172821 36 8.2800002350243176;
createNode animCurveTA -n "Robot_Movement:PALbot_chestUp_ctrl_rotateY";
	rename -uid "24BC6F8D-4986-93B2-66BA-C895286616F2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  1 0 6 0 7 0 18 0 25 0 28 6.4799998260700775
		 30 6.48 31 6.48 32 6.8081818374210918 33 4 34 2.5 36 0;
createNode animCurveTA -n "Robot_Movement:PALbot_chestUp_ctrl_rotateZ";
	rename -uid "F6F02AF4-4FA5-1639-C659-48A100D72505";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  1 0 6 0 7 0 18 0 25 0 28 0 30 0 31 0 32 0.66054371559149772
		 33 0 34 0 36 0;
createNode animCurveTL -n "Robot_Movement:PALbot_chestUp_ctrl_translateX";
	rename -uid "68FC68CA-46FF-9FD1-4D1F-CE8228BE3112";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  1 0 6 0 7 0 18 0 25 0 28 0 30 0 31 0 32 0
		 33 0 34 0 36 0;
createNode animCurveTL -n "Robot_Movement:PALbot_chestUp_ctrl_translateY";
	rename -uid "BD0E4E29-4BBA-4740-8F49-06BFDBD9E3C3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  1 0.12942415250789557 6 0.129 7 0 18 0 25 0
		 28 0 30 0 31 0.054697820962170011 32 0.03747813658518967 33 0.012155071324924809
		 34 0.0060775356624631852 36 0.069891660118328452;
createNode animCurveTL -n "Robot_Movement:PALbot_chestUp_ctrl_translateZ";
	rename -uid "2B7CEC54-4A4C-A161-7E7E-2C813A3020CF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  1 0.15970661249727333 6 0.16 7 0 18 0 25 0
		 28 0 30 0 31 -0.37672849142062809 32 -0.25812878115857862 33 -0.083717442537916922
		 34 -0.041858721268957677 36 -0.48137529459302553;
createNode animCurveTU -n "Robot_Movement:PALbot_chestUp_ctrl_secondary_vis";
	rename -uid "BC17F0FE-404E-F3C0-C931-6B92602CE3F9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  1 0 6 0 7 0 18 0 25 0 28 0 30 0 31 0 32 0
		 33 0 34 0 36 0;
createNode animCurveTL -n "Robot_Movement:PALbot_R_FK_Elbow_ctrl_translateX";
	rename -uid "369A3FD2-4D66-4087-CF44-849A8263767B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  6 0 7 0 18 0 22 0 37 0 40 0 42 0;
createNode animCurveTL -n "Robot_Movement:PALbot_R_FK_Elbow_ctrl_translateY";
	rename -uid "862DAE99-48E5-7F10-EDD1-8188C35E6344";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  6 0 7 0 18 0 22 0 37 0 40 0 42 0;
createNode animCurveTL -n "Robot_Movement:PALbot_R_FK_Elbow_ctrl_translateZ";
	rename -uid "6CCE71E1-4241-9E04-3F46-B99F6B77AC46";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  6 0 7 0 18 0 22 0 37 0 40 0 42 0;
createNode animCurveTA -n "Robot_Movement:PALbot_R_FK_Elbow_ctrl_rotateX";
	rename -uid "7EF13D2B-4A46-C0EE-1A12-519AB7440283";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  6 5 7 0 18 -118.31469860085632 22 -118.31469860085632
		 37 20.652457423320183 40 33.580054167355179 42 30.360116243684171;
createNode animCurveTL -n "Robot_Movement:PALbot_L_Arm_ctrl_translateX";
	rename -uid "436BC056-434B-2855-1F23-2DB3A7C6062B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  5 0 7 0 8 0 18 0 22 0 36 0 37 0;
createNode animCurveTL -n "Robot_Movement:PALbot_L_Arm_ctrl_translateY";
	rename -uid "E244F0B3-4D1F-AD5C-D08C-77922C0E18C1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  5 0 7 0 8 0 18 0 22 0 36 0 37 0;
createNode animCurveTL -n "Robot_Movement:PALbot_L_Arm_ctrl_translateZ";
	rename -uid "6F0056A2-46C4-ABE0-0C36-2F9B1493724B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  5 0 7 0 8 0 18 0 22 0 36 0 37 0;
createNode animCurveTA -n "Robot_Movement:PALbot_L_Arm_ctrl_rotateY";
	rename -uid "D9F9994E-4940-A3F1-9B2F-D6BD818C6B32";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  5 0 7 0 8 0 18 102.35303064859995 22 102.35303064859995
		 36 157.33823044704965 37 158.04782336161543;
createNode animCurveTA -n "Robot_Movement:PALbot_L_Arm_ctrl_rotateZ";
	rename -uid "54326B9E-4196-89C0-16F7-54AAD5946022";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  5 -5.501 7 -5.501 8 0 18 -48.169390629192172
		 22 -48.169390629192172 36 -21.317237555858576 37 -20.970706168657703;
createNode animCurveTA -n "Robot_Movement:PALbot_R_FK_Wrist_ctrl_rotateX";
	rename -uid "9ADB804F-4B4B-5B46-ABD4-69AC56B03D12";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 18.019 6 13.2 7 0 18 -4.5399020920317081
		 22 -4.5399020920317081 35 -155.41823887877464 41 -222.21594786352466;
createNode animCurveTA -n "Robot_Movement:PALbot_R_FK_Wrist_ctrl_rotateY";
	rename -uid "6381E807-425E-9AA0-6A70-CF88B6689172";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 47.473 6 48.682 7 0 18 -154.47654898110022
		 22 -154.47654898110022 35 -99.887092801703844 41 -102.17105243059163;
createNode animCurveTA -n "Robot_Movement:PALbot_R_FK_Wrist_ctrl_rotateZ";
	rename -uid "FADB8B67-41B5-8B30-9B3B-659FFEEB5704";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 23.817000000000004 6 17.343 7 0 18 10.44130280430309
		 22 10.44130280430309 35 164.22278001647217 41 231.99526172865708;
createNode animCurveTL -n "Robot_Movement:PALbot_R_FK_Wrist_ctrl_translateX";
	rename -uid "EE66D8EB-40F6-8E05-28DB-66BDFDC74E65";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 7 0 18 0 22 0 35 0 41 0;
createNode animCurveTL -n "Robot_Movement:PALbot_R_FK_Wrist_ctrl_translateY";
	rename -uid "BED6B44F-4F12-80D5-4024-9F92ED37DCA4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 7 0 18 0 22 0 35 0 41 0;
createNode animCurveTL -n "Robot_Movement:PALbot_R_FK_Wrist_ctrl_translateZ";
	rename -uid "092F6F54-47AE-8EAC-18F7-6CB0728F05C4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 7 0 18 0 22 0 35 0 41 0;
createNode animCurveTA -n "Robot_Movement:PALbot_R_Index01_ctrl_rotateX";
	rename -uid "970BA222-4E94-527A-E34E-97B1EEFA0DB3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  7 0 18 13.70811353211236 29 13.70811353211236
		 33 13.70811353211236 35 -7.1552902651975065 36 -27.010848690889514 38 -27.010848690889514
		 40 -4.2064641840069408 44 3.3535357220922961;
createNode animCurveTA -n "Robot_Movement:PALbot_R_Index01_ctrl_rotateY";
	rename -uid "F5477512-4952-C569-5B2B-F4832B6D135C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  7 0 18 0 29 0 33 0 35 0 36 0 38 0 40 0 44 0;
createNode animCurveTA -n "Robot_Movement:PALbot_R_Index01_ctrl_rotateZ";
	rename -uid "B272D4E6-4A7F-E1D1-D669-18A67705DAED";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  7 0 18 0 29 0 33 0 35 0 36 0 38 0 40 0 44 0;
createNode animCurveTA -n "Robot_Movement:PALbot_R_Index02_ctrl_rotateX";
	rename -uid "9C38C345-409B-25DB-E96B-9CBB7204748C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  7 0 18 28.727999831121348 29 28.727999831121348
		 33 28.727999831121348 35 7.8645960338114911 36 -11.990962391880478 38 -11.990962391880478
		 40 10.813422115002107 44 18.373422021101362;
createNode animCurveTA -n "Robot_Movement:PALbot_R_Index02_ctrl_rotateY";
	rename -uid "E4ED0C47-4230-97BC-EA5E-3299B8A25DEA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  7 0 18 0 29 0 33 0 35 0 36 0 38 0 40 0 44 0;
createNode animCurveTA -n "Robot_Movement:PALbot_R_Index02_ctrl_rotateZ";
	rename -uid "E048AB72-4FB5-2E21-5B7B-A6BCA6A502B3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  7 0 18 0 29 0 33 0 35 0 36 0 38 0 40 0 44 0;
createNode animCurveTA -n "Robot_Movement:PALbot_R_Middle01_ctrl_rotateX";
	rename -uid "F3E14BF0-4914-6B91-31E6-13B3A1092043";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  7 0 18 27.562480083411991 29 27.562480083411991
		 33 27.562480083411991 35 6.6990762861021276 36 -13.156482139589841 38 -13.156482139589841
		 40 9.6479023672927529 44 17.207902273391994;
createNode animCurveTA -n "Robot_Movement:PALbot_R_Middle01_ctrl_rotateY";
	rename -uid "6697F8CA-4119-FF6F-8E78-0ABAF8D7B939";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  7 0 18 0 29 0 33 0 35 0 36 0 38 0 40 0 44 0;
createNode animCurveTA -n "Robot_Movement:PALbot_R_Middle01_ctrl_rotateZ";
	rename -uid "2143A942-4112-0197-B264-55917F4BCB36";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  7 0 18 0 29 0 33 0 35 0 36 0 38 0 40 0 44 0;
createNode animCurveTA -n "Robot_Movement:PALbot_R_Middle02_ctrl_rotateX";
	rename -uid "8559FC34-490A-829B-BFA9-8EB01F330D8C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  7 0 18 10.435763877800271 29 10.435763877800271
		 33 10.435763877800271 35 -10.427639919509589 36 -30.283198345201559 38 -30.283198345201559
		 40 -7.4788138383189802 44 0.081186067780254029;
createNode animCurveTA -n "Robot_Movement:PALbot_R_Middle02_ctrl_rotateY";
	rename -uid "53E1A148-409E-25C7-A7E4-0CB229FF8301";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  7 0 18 0 29 0 33 0 35 0 36 0 38 0 40 0 44 0;
createNode animCurveTA -n "Robot_Movement:PALbot_R_Middle02_ctrl_rotateZ";
	rename -uid "9C3E2357-4757-57CF-2C8B-4EA5A1CAE578";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  7 0 18 0 29 0 33 0 35 0 36 0 38 0 40 0 44 0;
createNode animCurveTA -n "Robot_Movement:PALbot_R_Pinky01_ctrl_rotateX";
	rename -uid "D0EE3740-4650-6E02-AC70-FFB0E4CEB717";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  7 0 18 29.992750616433462 29 29.992750616433462
		 33 29.992750616433462 35 9.1293468191236169 36 -10.72621160656834 38 -10.72621160656834
		 40 12.078172900314247 44 19.63817280641349;
createNode animCurveTA -n "Robot_Movement:PALbot_R_Pinky01_ctrl_rotateY";
	rename -uid "3F65A369-4987-D590-639F-CFAAA36678DE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  7 0 18 0 29 0 33 0 35 0 36 0 38 0 40 0 44 0;
createNode animCurveTA -n "Robot_Movement:PALbot_R_Pinky01_ctrl_rotateZ";
	rename -uid "E83FDBF8-4A36-AA36-311C-61AF4C0C4B76";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  7 0 18 0 29 0 33 0 35 0 36 0 38 0 40 0 44 0;
createNode animCurveTA -n "Robot_Movement:PALbot_R_Pinky02_ctrl_rotateX";
	rename -uid "B6E1817C-466A-CC23-6150-33BF364AD93D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  7 0 18 14.650717346969405 29 14.650717346969405
		 33 14.650717346969405 35 -6.2126864503404811 36 -26.06824487603247 38 -26.06824487603247
		 40 -3.2638603691498926 44 4.2961395369493438;
createNode animCurveTA -n "Robot_Movement:PALbot_R_Pinky02_ctrl_rotateY";
	rename -uid "C4828D08-4346-8943-2A9A-78B56F57E2B9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  7 0 18 0 29 0 33 0 35 0 36 0 38 0 40 0 44 0;
createNode animCurveTA -n "Robot_Movement:PALbot_R_Pinky02_ctrl_rotateZ";
	rename -uid "9F646D53-4F3A-96B8-7E43-539801B705E6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  7 0 18 0 29 0 33 0 35 0 36 0 38 0 40 0 44 0;
createNode animCurveTA -n "Robot_Movement:PALbot_R_Ring01_ctrl_rotateX";
	rename -uid "9164231D-4DA0-CCA9-5B0D-B1A97898B5E0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  7 0 18 34.919999867781996 29 34.919999867781996
		 33 34.919999867781996 35 14.056596070472155 36 -5.798962355219806 38 -5.798962355219806
		 40 17.005422151662785 44 24.565422057762031;
createNode animCurveTA -n "Robot_Movement:PALbot_R_Ring02_ctrl_rotateX";
	rename -uid "526B9513-4E46-CB7D-9169-B6BB805D5E1D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  7 0 18 0 29 0 33 0 35 -20.863403797309889
		 36 -40.718962223001874 38 -40.718962223001874 40 -17.914577716119346 44 -10.354577810020132;
createNode animCurveTA -n "Robot_Movement:PALbot_R_Ring02_ctrl_rotateY";
	rename -uid "D3AD202F-431A-043C-E105-ABA12E63FEC3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  7 0 18 0 29 0 33 0 35 0 36 0 38 0 40 0 44 0;
createNode animCurveTA -n "Robot_Movement:PALbot_R_Ring02_ctrl_rotateZ";
	rename -uid "411B51C3-437B-BCBE-B5A5-A982CE20A7BE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  7 0 18 0 29 0 33 0 35 0 36 0 38 0 40 0 44 0;
createNode animCurveTL -n "Robot_Movement:PALbot_R_Index02_ctrl_translateX";
	rename -uid "570F9C84-426E-2E8C-2327-D9A54F0547A7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  7 0 18 0 29 0 33 0 35 0 36 0 38 0 40 0 44 0;
createNode animCurveTL -n "Robot_Movement:PALbot_R_Index02_ctrl_translateY";
	rename -uid "23991814-44CB-B853-E6F4-82927C47E6DF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  7 0 18 0 29 0 33 0 35 0 36 0 38 0 40 0 44 0;
createNode animCurveTL -n "Robot_Movement:PALbot_R_Index02_ctrl_translateZ";
	rename -uid "F524CD5F-4ADA-EECE-8B20-84AB8BDF4026";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  7 0 18 0 29 0 33 0 35 0 36 0 38 0 40 0 44 0;
createNode animCurveTL -n "Robot_Movement:PALbot_R_Pinky01_ctrl_translateY";
	rename -uid "44F98928-45D7-BF09-5302-87A0B6FD6072";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  7 0 18 0 29 0 33 0 35 0 36 0 38 0 40 0 44 0;
createNode animCurveTL -n "Robot_Movement:PALbot_R_Pinky01_ctrl_translateZ";
	rename -uid "3520BC12-45AE-0D89-57F5-9FB8DB3741D8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  7 0 18 0 29 0 33 0 35 0 36 0 38 0 40 0 44 0;
createNode animCurveTL -n "Robot_Movement:PALbot_R_Ring02_ctrl_translateX";
	rename -uid "E15AD278-4EAA-E31E-016D-7AA602C3694C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  7 0 18 0 29 0 33 0 35 0 36 0 38 0 40 0 44 0;
createNode animCurveTL -n "Robot_Movement:PALbot_R_Ring02_ctrl_translateY";
	rename -uid "BA74D9C9-492B-686F-308F-0FAA7C932005";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  7 0 18 0 29 0 33 0 35 0 36 0 38 0 40 0 44 0;
createNode animCurveTL -n "Robot_Movement:PALbot_R_Ring02_ctrl_translateZ";
	rename -uid "EA21A160-4DCF-C990-196B-3A8BFBA0A553";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  7 0 18 0 29 0 33 0 35 0 36 0 38 0 40 0 44 0;
createNode animCurveTL -n "Robot_Movement:PALbot_R_Index01_ctrl_translateX";
	rename -uid "5D4078AB-4672-60FF-768D-B6ACDA5A5445";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  7 0 18 0 29 0 33 0 35 0 36 0 38 0 40 0 44 0;
createNode animCurveTL -n "Robot_Movement:PALbot_R_Index01_ctrl_translateY";
	rename -uid "C4F082A1-4754-C55D-521E-CD8E0FD81EEF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  7 0 18 0 29 0 33 0 35 0 36 0 38 0 40 0 44 0;
createNode animCurveTL -n "Robot_Movement:PALbot_R_Index01_ctrl_translateZ";
	rename -uid "FBF1AE9B-4155-D306-E8D8-75906853801A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  7 0 18 0 29 0 33 0 35 0 36 0 38 0 40 0 44 0;
createNode animCurveTL -n "Robot_Movement:PALbot_R_Pinky02_ctrl_translateX";
	rename -uid "F2CCA828-4216-C03A-D43B-8B861492DAFF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  7 0 18 0 29 0 33 0 35 0 36 0 38 0 40 0 44 0;
createNode animCurveTL -n "Robot_Movement:PALbot_R_Pinky02_ctrl_translateY";
	rename -uid "DEC27267-44CD-B7F4-84AC-CBBEFECE7047";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  7 0 18 0 29 0 33 0 35 0 36 0 38 0 40 0 44 0;
createNode animCurveTL -n "Robot_Movement:PALbot_R_Pinky02_ctrl_translateZ";
	rename -uid "7383A61C-4DC1-E708-3954-53BCA833BEA3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  7 0 18 0 29 0 33 0 35 0 36 0 38 0 40 0 44 0;
createNode animCurveTL -n "Robot_Movement:PALbot_R_Middle01_ctrl_translateZ";
	rename -uid "F1B1E9D5-4146-0445-F7BD-F890466BD650";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  7 0 18 0 29 0 33 0 35 0 36 0 38 0 40 0 44 0;
createNode animCurveTL -n "Robot_Movement:PALbot_R_Middle02_ctrl_translateX";
	rename -uid "5210EB1F-464E-DC40-9B45-5D872DABE464";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  7 0 18 0 29 0 33 0 35 0 36 0 38 0 40 0 44 0;
createNode animCurveTL -n "Robot_Movement:PALbot_R_Middle02_ctrl_translateY";
	rename -uid "B397A5F2-405F-3CBF-DE2C-C2895CE1DE0B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  7 0 18 0 29 0 33 0 35 0 36 0 38 0 40 0 44 0;
createNode animCurveTL -n "Robot_Movement:PALbot_R_Middle02_ctrl_translateZ";
	rename -uid "B6BF0BBC-4D20-D803-3A2B-189A3DF61821";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  7 0 18 0 29 0 33 0 35 0 36 0 38 0 40 0 44 0;
createNode animCurveTA -n "Robot_Movement:PALbot_L_Arm_ctrl_rotateY1";
	rename -uid "C71C8940-417D-FAA7-CE90-0286495B417F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  6 0 7 0 18 100.93792390386314 24 110 29 131.72365041533251
		 36 0;
createNode animCurveTA -n "Robot_Movement:PALbot_L_Arm_ctrl_rotateZ1";
	rename -uid "A2772F69-4B54-2F5B-D844-34A8B78BF978";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  6 -5.5007078090422539 7 0 18 -41.272230450758023
		 24 -41.27223045075791 29 -41.272230450757817 36 -41.272230450757817;
createNode animCurveTL -n "Robot_Movement:PALbot_L_Arm_ctrl_translateX1";
	rename -uid "3FFF40C7-4D20-F956-19D7-8D8611A7F96E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  6 0 7 0 18 0 24 0 29 0 36 0;
createNode animCurveTL -n "Robot_Movement:PALbot_L_Arm_ctrl_translateY1";
	rename -uid "9B83728D-47DF-ECDA-89ED-2882F6D555C6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  6 0 7 0 18 0 24 0 29 0 36 0;
createNode animCurveTL -n "Robot_Movement:PALbot_L_Arm_ctrl_translateZ1";
	rename -uid "01CB7D80-4348-9C88-4036-5BB1A1423C77";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  6 0 7 0 18 0 24 0 29 0 36 0;
createNode animCurveTA -n "Robot_Movement:PALbot_L_Index01_ctrl_rotateX";
	rename -uid "45268D6A-4E73-DCA3-BEBF-7B9986B639AE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  7 0 18 14.041695238625492 39 14.041695238625492
		 41 -2.9027392598266517 44 0;
createNode animCurveTA -n "Robot_Movement:PALbot_L_Index01_ctrl_rotateY";
	rename -uid "25A847F1-4B4B-D21F-B164-0FB4470BBF6A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  7 0 18 -13.288097921758562 39 -13.288097921758562
		 41 -13.288097921758562 44 0;
createNode animCurveTA -n "Robot_Movement:PALbot_L_Index01_ctrl_rotateZ";
	rename -uid "0D22B1D3-4976-9AC3-2AC6-0C9C01CE43DA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  7 0 18 -3.2900345668421251 39 -3.2900345668421251
		 41 -3.2900345668421251 44 0;
createNode animCurveTA -n "Robot_Movement:PALbot_L_Index02_ctrl_rotateX";
	rename -uid "0C339E67-4F20-9FBB-165C-E88ABC62EEC8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  7 0 18 56.019563590311193 39 56.019563590311193
		 41 39.075129091859054 44 0;
createNode animCurveTA -n "Robot_Movement:PALbot_L_Index02_ctrl_rotateY";
	rename -uid "69D50483-4C53-2F81-C5FF-C79B8673F28A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  7 0 18 -9.1599544885995119 39 -9.1599544885995119
		 41 -9.1599544885995119 44 0;
createNode animCurveTA -n "Robot_Movement:PALbot_L_Index02_ctrl_rotateZ";
	rename -uid "B50341B8-43FB-4C85-48B8-C085FBCCD27E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  7 0 18 -13.288854491111277 39 -13.288854491111277
		 41 -13.288854491111277 44 0;
createNode animCurveTA -n "Robot_Movement:PALbot_L_Middle01_ctrl_rotateX";
	rename -uid "911B7885-48D0-A146-044B-4B81F6CFB97C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  7 0 18 0.64650126664087715 39 0.64650126664087715
		 41 -16.297933231811271 44 0;
createNode animCurveTA -n "Robot_Movement:PALbot_L_Middle01_ctrl_rotateY";
	rename -uid "85942F78-4115-C42D-350F-C4BB852CF97C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  7 0 18 -11.046527484977316 39 -11.046527484977316
		 41 -11.046527484977316 44 0;
createNode animCurveTA -n "Robot_Movement:PALbot_L_Middle01_ctrl_rotateZ";
	rename -uid "B9B570FB-49F8-AA5D-467B-5D8D2CAE899F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  7 0 18 -3.3703671916838496 39 -3.3703671916838496
		 41 -3.3703671916838496 44 0;
createNode animCurveTA -n "Robot_Movement:PALbot_L_Middle02_ctrl_rotateX";
	rename -uid "C915942F-4F12-1E38-930C-9C9F86AA0C08";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  7 0 18 61.559998497023145 39 61.559998497023145
		 41 44.615563998571005 44 0;
createNode animCurveTA -n "Robot_Movement:PALbot_L_Middle02_ctrl_rotateY";
	rename -uid "E9EE206C-483B-C7E9-A6FD-AE867CA29A31";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  7 0 18 0 39 0 41 0 44 0;
createNode animCurveTA -n "Robot_Movement:PALbot_L_Middle02_ctrl_rotateZ";
	rename -uid "D9234D3B-436C-0129-09A1-7C8EB08B7D48";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  7 0 18 0 39 0 41 0 44 0;
createNode animCurveTA -n "Robot_Movement:PALbot_L_Pinky01_ctrl_rotateX";
	rename -uid "AC289C9F-4BA1-4E7C-FE72-75B6023DFA21";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  7 0 18 25.531860070206015 39 25.531860070206015
		 41 8.5874255717538741 44 0;
createNode animCurveTA -n "Robot_Movement:PALbot_L_Pinky01_ctrl_rotateY";
	rename -uid "FABD4289-4B5F-4B65-7499-C1819E4380FA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  7 0 18 0 39 0 41 0 44 0;
createNode animCurveTA -n "Robot_Movement:PALbot_L_Pinky01_ctrl_rotateZ";
	rename -uid "AE27D18F-462D-96DB-62DF-40A57AC7497E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  7 0 18 0 39 0 41 0 44 0;
createNode animCurveTA -n "Robot_Movement:PALbot_L_Pinky02_ctrl_rotateX";
	rename -uid "57365B26-49A8-A534-ABAC-83A547A1948A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  7 0 18 15.640437121283037 39 15.640437121283037
		 41 -1.3039973771691049 44 0;
createNode animCurveTA -n "Robot_Movement:PALbot_L_Pinky02_ctrl_rotateY";
	rename -uid "CBA527B0-45C1-5A60-5B02-9E9E66E8DB1A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  7 0 18 0 39 0 41 0 44 0;
createNode animCurveTA -n "Robot_Movement:PALbot_L_Pinky02_ctrl_rotateZ";
	rename -uid "AC59F986-498E-7A70-C371-27BBC7052DD0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  7 0 18 0 39 0 41 0 44 0;
createNode animCurveTA -n "Robot_Movement:PALbot_L_Ring01_ctrl_rotateX";
	rename -uid "3BB10856-4433-6FDD-50E4-39A7B8A35470";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  7 0 18 18.684944328091952 39 18.684944328091952
		 41 1.740509829639808 44 0;
createNode animCurveTA -n "Robot_Movement:PALbot_L_Ring01_ctrl_rotateY";
	rename -uid "D0747679-4626-6003-33DB-38970DB5A95D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  7 0 18 0 39 0 41 0 44 0;
createNode animCurveTA -n "Robot_Movement:PALbot_L_Ring01_ctrl_rotateZ";
	rename -uid "3E40C454-46AA-FA44-F33D-B8AC6E94B260";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  7 0 18 0 39 0 41 0 44 0;
createNode animCurveTA -n "Robot_Movement:PALbot_L_Ring02_ctrl_rotateX";
	rename -uid "47549E20-49C8-1838-B31B-33B367478032";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  7 0 18 26.46847575180319 39 26.46847575180319
		 41 9.524041253351049 44 0;
createNode animCurveTA -n "Robot_Movement:PALbot_L_Ring02_ctrl_rotateY";
	rename -uid "FB947A67-4CEB-7B41-D744-47AA477DB605";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  7 0 18 -6.7278176153678331 39 -6.7278176153678331
		 41 -6.7278176153678331 44 0;
createNode animCurveTA -n "Robot_Movement:PALbot_L_Ring02_ctrl_rotateZ";
	rename -uid "BF248FF5-4138-3B3C-234B-438669E6D911";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  7 0 18 -2.4349830441581064 39 -2.4349830441581064
		 41 -2.4349830441581064 44 0;
createNode animCurveTL -n "Robot_Movement:PALbot_L_Ring02_ctrl_translateX";
	rename -uid "977288E7-41EE-FF15-C0CF-588307D71735";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  7 0 18 0 39 0 41 0 44 0;
createNode animCurveTL -n "Robot_Movement:PALbot_L_Ring02_ctrl_translateY";
	rename -uid "581A8A81-4411-335D-F17D-65A3C5521668";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  7 0 18 0 39 0 41 0 44 0;
createNode animCurveTL -n "Robot_Movement:PALbot_L_Ring02_ctrl_translateZ";
	rename -uid "C7F097F4-43DF-5669-E529-B8A369205121";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  7 0 18 0 39 0 41 0 44 0;
createNode animCurveTL -n "Robot_Movement:PALbot_L_Middle02_ctrl_translateX";
	rename -uid "DC2EEDE6-438F-EE8B-3670-7EA82B6997E4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  7 0 18 0 39 0 41 0 44 0;
createNode animCurveTL -n "Robot_Movement:PALbot_L_Middle02_ctrl_translateY";
	rename -uid "77260397-42E4-6110-A4C1-A7B3BDBA9F4F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  7 0 18 0 39 0 41 0 44 0;
createNode animCurveTL -n "Robot_Movement:PALbot_L_Middle02_ctrl_translateZ";
	rename -uid "E340AB76-442A-5E33-481F-EA8597CEC568";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  7 0 18 0 39 0 41 0 44 0;
createNode animCurveTL -n "Robot_Movement:PALbot_L_Pinky02_ctrl_translateX";
	rename -uid "754373F9-4F2E-6A21-8976-A281C01B2978";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  7 0 18 0 39 0 41 0 44 0;
createNode animCurveTL -n "Robot_Movement:PALbot_L_Pinky02_ctrl_translateY";
	rename -uid "0566516A-4723-F988-0C27-80A80C903E86";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  7 0 18 0 39 0 41 0 44 0;
createNode animCurveTL -n "Robot_Movement:PALbot_L_Pinky02_ctrl_translateZ";
	rename -uid "094B3A9F-4326-27A5-60B5-8DB3A30FCB7C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  7 0 18 0 39 0 41 0 44 0;
createNode animCurveTL -n "Robot_Movement:PALbot_L_Index02_ctrl_translateX";
	rename -uid "E5FB6923-471B-DF2F-FF45-0BBA61A093BF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  7 0 18 0 39 0 41 0 44 0;
createNode animCurveTL -n "Robot_Movement:PALbot_L_Index02_ctrl_translateY";
	rename -uid "B8C4BC1B-4BEC-E649-B39E-44A40C0C2130";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  7 0 18 0 39 0 41 0 44 0;
createNode animCurveTL -n "Robot_Movement:PALbot_L_Index02_ctrl_translateZ";
	rename -uid "EE5E6D06-40DA-BEFB-D40A-7C8ED25E3B34";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  7 0 18 0 39 0 41 0 44 0;
createNode animCurveTL -n "Robot_Movement:PALbot_L_Ring01_ctrl_translateX";
	rename -uid "90154EA5-4CB6-A111-4E80-179F853F9AB7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  7 0 18 0 39 0 41 0 44 0;
createNode animCurveTL -n "Robot_Movement:PALbot_L_Ring01_ctrl_translateY";
	rename -uid "DC118877-4AC3-6AD7-7211-39BAFE901C0C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  7 0 18 0 39 0 41 0 44 0;
createNode animCurveTL -n "Robot_Movement:PALbot_L_Ring01_ctrl_translateZ";
	rename -uid "6AA38FD5-4942-7EEE-A4BD-78A94EDE24E3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  7 0 18 0 39 0 41 0 44 0;
createNode animCurveTL -n "Robot_Movement:PALbot_L_Middle01_ctrl_translateX";
	rename -uid "46616CCD-4C69-60B5-B6D5-EFBAA0804CB9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  7 0 18 0 39 0 41 0 44 0;
createNode animCurveTL -n "Robot_Movement:PALbot_L_Middle01_ctrl_translateY";
	rename -uid "43F57C55-4BC6-DA96-D73A-38AB29FEDAFC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  7 0 18 0 39 0 41 0 44 0;
createNode animCurveTL -n "Robot_Movement:PALbot_L_Middle01_ctrl_translateZ";
	rename -uid "F9F895DA-4667-76DE-2DC3-57856EDB1FB5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  7 0 18 0 39 0 41 0 44 0;
createNode animCurveTL -n "Robot_Movement:PALbot_L_Index01_ctrl_translateX";
	rename -uid "F3795357-4FEF-7E1A-8BC4-10BCE661C0E8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  7 0 18 0 39 0 41 0 44 0;
createNode animCurveTL -n "Robot_Movement:PALbot_L_Index01_ctrl_translateY";
	rename -uid "A8730993-4D2F-5F85-BD73-4FAF17435EB5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  7 0 18 0 39 0 41 0 44 0;
createNode animCurveTL -n "Robot_Movement:PALbot_L_Index01_ctrl_translateZ";
	rename -uid "3B89F016-4EF0-F822-0215-65A31B927A70";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  7 0 18 0 39 0 41 0 44 0;
createNode animCurveTL -n "Robot_Movement:PALbot_L_Pinky01_ctrl_translateX";
	rename -uid "F7AE3BFD-4C15-B129-EDAF-B78411BFED19";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  7 0 18 0 39 0 41 0 44 0;
createNode animCurveTL -n "Robot_Movement:PALbot_L_Pinky01_ctrl_translateY";
	rename -uid "BDF9DE04-42C0-E62A-7860-2085FAD8AC2D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  7 0 18 0 39 0 41 0 44 0;
createNode animCurveTL -n "Robot_Movement:PALbot_L_Pinky01_ctrl_translateZ";
	rename -uid "BBE127E3-4CE7-72CB-625F-33A08BF099ED";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  7 0 18 0 39 0 41 0 44 0;
createNode animCurveTA -n "Robot_Movement:PALbot_L_FK_Elbow_ctrl_rotateX";
	rename -uid "E0E1C317-4F7D-D721-E02C-95BBD6253BF2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  6 5 7 0 18 -107 24 -107 29 -77.073681745315966
		 34 -35.173610290286923 36 0 37 -42.120001062435989 40 -33.840001073461877;
createNode animCurveTL -n "Robot_Movement:PALbot_L_FK_Elbow_ctrl_translateX";
	rename -uid "9B9BDAE2-46F7-50D5-5BC2-2B8083C510F8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  6 0 7 0 18 0 24 0 29 0 34 0 36 0 37 0 40 0;
createNode animCurveTL -n "Robot_Movement:PALbot_L_FK_Elbow_ctrl_translateY";
	rename -uid "F19B5C81-45BD-DF28-8C9B-05A713565222";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  6 0 7 0 18 0 24 0 29 0 34 0 36 0 37 0 40 0;
createNode animCurveTL -n "Robot_Movement:PALbot_L_FK_Elbow_ctrl_translateZ";
	rename -uid "641F4055-47CE-4439-99FF-D8B922672E50";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  6 0 7 0 18 0 24 0 29 0 34 0 36 0 37 0 40 0;
createNode animCurveTA -n "Robot_Movement:PALbot_L_FK_Wrist_ctrl_rotateX";
	rename -uid "AF61B3AD-44AA-B60B-44E0-18B445FDBA30";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 18.01926440237947 6 13.2 7 0 12 -0.54049449936507776
		 13 33.053250974454372 14 63.606590438902209 16 121.96109277249505 17 136.83113636330134
		 18 149.89025372908935 24 149.89025372908935 30 149.89025372908935 34 174.93397655494152
		 36 208.26576152287862 38 185.50933927547004 39 174.04972398269746 40 164.70705501999984
		 42 158.88620341318932;
createNode animCurveTA -n "Robot_Movement:PALbot_L_FK_Wrist_ctrl_rotateY";
	rename -uid "964B9BE7-4E54-F18E-B92C-2EB93F9F124A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 47.472750740872186 6 48.682 7 0 12 -18.593474837973631
		 13 -49.102897745417209 14 -43.620682173404354 16 -40.497760877126822 17 -32.740208662688232
		 18 -31.546619682054473 24 -31.546619682054473 30 -31.546619682054473 34 -42.258935747905745
		 36 -33.172293242678073 38 -42.213744437334299 39 -41.4617024334215 40 -40.156530656231176
		 42 -37.788706251113886;
createNode animCurveTA -n "Robot_Movement:PALbot_L_FK_Wrist_ctrl_rotateZ";
	rename -uid "A3A547EF-47EE-D66B-077A-72A924B6E8A1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 23.816605006295241 6 17.343 7 0 12 -6.4155919420783833
		 13 -47.362958514460324 14 -70.044139604345773 16 -106.93192124114434 17 -119.67281754726667
		 18 218.30641655965172 24 218.30641655965172 30 218.30641655965172 34 177.87290837167569
		 36 125.86411512805414 38 162.19398023604884 39 179.46044466468405 40 193.34077537461022
		 42 202.58157073293521;
createNode animCurveTL -n "Robot_Movement:PALbot_L_FK_Wrist_ctrl_translateX";
	rename -uid "CD8B7C77-47ED-635F-4FFC-5D86E6E31078";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 6 0 7 0 12 0 13 0 14 0 16 0 17 0 18 0
		 24 0 30 0 34 0 36 0 38 0 39 0 40 0 42 0;
createNode animCurveTL -n "Robot_Movement:PALbot_L_FK_Wrist_ctrl_translateY";
	rename -uid "43C86D82-40BD-CC3C-EB6B-6D8D84BD1A1C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 6 0 7 0 12 0 13 0 14 0 16 0 17 0 18 0
		 24 0 30 0 34 0 36 0 38 0 39 0 40 0 42 0;
createNode animCurveTL -n "Robot_Movement:PALbot_L_FK_Wrist_ctrl_translateZ";
	rename -uid "D21FEEA0-4F28-3153-405B-2FA1C7C8F08B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 6 0 7 0 12 0 13 0 14 0 16 0 17 0 18 0
		 24 0 30 0 34 0 36 0 38 0 39 0 40 0 42 0;
createNode animCurveTA -n "Robot_Movement:PALbot_L_IK_footBall_ctrl_rotateX";
	rename -uid "D4DC3118-458F-2565-2B4E-8FBCA04C075F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  7 0 18 -59.675046743517527 22 -59.675000000000004
		 38 0;
createNode animCurveTA -n "Robot_Movement:PALbot_L_IK_footBall_ctrl_rotateY";
	rename -uid "8889F501-4022-B95F-6C98-BAA19689AC2B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  7 0 18 0 22 0 38 0;
createNode animCurveTA -n "Robot_Movement:PALbot_L_IK_footBall_ctrl_rotateZ";
	rename -uid "DB5FADCF-4563-A8FC-E6CC-7F84A31A0267";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  7 0 18 0 22 0 38 0;
createNode animCurveTL -n "Robot_Movement:PALbot_L_IK_footBall_ctrl_translateX";
	rename -uid "B19BC6B5-4EBC-3166-50A0-55A8260D2A96";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  7 0 18 0 22 0 38 0;
createNode animCurveTL -n "Robot_Movement:PALbot_L_IK_footBall_ctrl_translateY";
	rename -uid "B378919C-4383-E4B3-7861-CB97783723F1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  7 0 18 0 22 0 38 0;
createNode animCurveTL -n "Robot_Movement:PALbot_L_IK_footBall_ctrl_translateZ";
	rename -uid "82D176A6-4FCF-22E2-6F39-8FA704B4A0A8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  7 0 18 0 22 0 38 0;
createNode animCurveTA -n "Robot_Movement:PALbot_head_ctrl_rotateX";
	rename -uid "C3DB75C5-4305-966F-3444-108788EC90A7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  6 0 7 0 18 0 22 0 26 0 30 -15.989336902112695
		 32 -25.198442585109582 35 -44.597303661843583 37 -44.597303661843583 39 0 40 0 41 0
		 42 0;
createNode animCurveTA -n "Robot_Movement:PALbot_head_ctrl_rotateY";
	rename -uid "551CBC72-4974-8785-5E5C-008F7349DD04";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  6 0 7 0 18 0 22 0 26 0 30 0 32 0 35 0 37 0
		 39 0 40 0 41 0 42 0;
createNode animCurveTA -n "Robot_Movement:PALbot_head_ctrl_rotateZ";
	rename -uid "849E2A10-4EA3-A3E8-5AA4-1D8D7237E0EC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  6 0 7 0 18 0 22 0 26 0 30 0 32 0 35 0 37 0
		 39 0 40 0 41 0 42 0;
createNode animCurveTL -n "Robot_Movement:PALbot_head_ctrl_translateX";
	rename -uid "63E5B1FB-4195-6413-1E23-28A5BE279D27";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  6 0 7 0 18 0 22 0 26 0 30 0 32 0 35 0 37 0
		 39 0 40 0 41 0 42 0;
createNode animCurveTL -n "Robot_Movement:PALbot_head_ctrl_translateY";
	rename -uid "761AF6D2-4AA3-383C-95D1-8F9BD79468D9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  6 0 7 0 18 0 22 0 26 0 30 0.13491426103339421
		 32 0.11165701095776406 35 -0.35574094374525572 37 -0.35574094374525572 39 0 40 -0.03747470079279739
		 41 -0.0084091676792613628 42 0.016552526540220602;
createNode animCurveTL -n "Robot_Movement:PALbot_head_ctrl_translateZ";
	rename -uid "FEE1596D-424A-338D-9C52-F582B956624E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  6 -0.003 7 0 18 0 22 0 26 0 30 -0.3544967979306719
		 32 -0.96618865473345206 35 -1.5922942315459083 37 -1.5922942315459083 39 0 40 0.25810511731123814
		 41 0.057917719539557974 42 -0.11400469420911699;
createNode animCurveTU -n "Robot_Movement:PALbot_head_ctrl_Space_switch";
	rename -uid "5EEAE3D1-4632-3827-361A-AC871CFF1020";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  6 2 7 2 18 2 22 2 26 2 30 2 32 2 35 2 37 2
		 39 2 40 2 41 2 42 2;
	setAttr -s 13 ".kot[0:12]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5;
createNode animCurveTU -n "Robot_Movement:PALbot_head_ctrl_FaceLight";
	rename -uid "EE8928D6-4220-4CD5-5142-ED9255079C19";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  6 0 7 0 18 0 22 0 26 0 30 0 32 0 35 0 37 0
		 39 0 40 0 41 0 42 0;
	setAttr -s 13 ".kot[0:12]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5;
createNode animCurveTU -n "Robot_Movement:PALbot_head_ctrl_Led_color";
	rename -uid "92E25571-4ACC-815C-759C-07AB235B44E0";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  6 2 7 2 18 2 22 2 26 2 30 2 32 2 35 2 37 2
		 39 2 40 2 41 2 42 2;
	setAttr -s 13 ".kot[0:12]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5;
createNode animCurveTU -n "Robot_Movement:PALbot_head_ctrl_Face_Drawing";
	rename -uid "500C8915-42EB-B390-634D-18820A0C6B1F";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  6 2 7 2 18 2 22 2 26 2 30 2 32 2 35 2 37 2
		 39 2 40 2 41 2 42 2;
	setAttr -s 13 ".kot[0:12]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5;
createNode animCurveTL -n "Robot_Movement:PALbot_R_Pinky01_ctrl_translateX";
	rename -uid "896D71C8-4ABE-AFD3-44B1-70A142C24437";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  7 0 18 0 29 0 33 0 35 0 36 0 38 0 40 0 44 0;
createNode animCurveTA -n "Robot_Movement:PALbot_R_Ring01_ctrl_rotateY";
	rename -uid "9CECBD62-4B7E-272C-A8E3-8BB5E1D0F1B3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  7 0 18 0 29 0 33 0 35 0 36 0 38 0 40 0 44 0;
createNode animCurveTA -n "Robot_Movement:PALbot_R_Ring01_ctrl_rotateZ";
	rename -uid "CCC4841F-41F7-C310-58F9-839CEE0B1288";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  7 0 18 0 29 0 33 0 35 0 36 0 38 0 40 0 44 0;
createNode animCurveTL -n "Robot_Movement:PALbot_R_Ring01_ctrl_translateX";
	rename -uid "04B54BE8-4555-A87F-8B4F-22BDDAF9C5BA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  7 0 18 0 29 0 33 0 35 0 36 0 38 0 40 0 44 0;
createNode animCurveTL -n "Robot_Movement:PALbot_R_Ring01_ctrl_translateY";
	rename -uid "10D5BEE9-4E1F-FD20-1D20-6EB28BA82CB6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  7 0 18 0 29 0 33 0 35 0 36 0 38 0 40 0 44 0;
createNode animCurveTL -n "Robot_Movement:PALbot_R_Ring01_ctrl_translateZ";
	rename -uid "3F07449B-4BF7-5FD3-2958-13AC8704D64A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  7 0 18 0 29 0 33 0 35 0 36 0 38 0 40 0 44 0;
createNode animCurveTL -n "Robot_Movement:PALbot_R_Middle01_ctrl_translateX";
	rename -uid "77C5EA1A-4CA9-130A-A212-DA890693FF36";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  7 0 18 0 29 0 33 0 35 0 36 0 38 0 40 0 44 0;
createNode animCurveTL -n "Robot_Movement:PALbot_R_Middle01_ctrl_translateY";
	rename -uid "53828924-41B1-D7ED-061C-C7BBAFC6E987";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  7 0 18 0 29 0 33 0 35 0 36 0 38 0 40 0 44 0;
createNode animCurveTA -n "Robot_Movement:PALbot_R_Thumb02_ctrl_rotateX";
	rename -uid "43D43A1D-4238-B7F4-687D-BC8A86B11C8F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  7 0 18 -48.259492735564272;
createNode animCurveTA -n "Robot_Movement:PALbot_R_Thumb02_ctrl_rotateY";
	rename -uid "6A77D500-468D-F840-28A0-6BABF75E3F1A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  7 0 18 38.49298983904233;
createNode animCurveTA -n "Robot_Movement:PALbot_R_Thumb02_ctrl_rotateZ";
	rename -uid "9B1FE918-4DF0-3F00-F46B-A885D45FB194";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  7 0 18 -3.5146425224432161;
createNode animCurveTA -n "Robot_Movement:PALbot_R_Thumb03_ctrl_rotateX";
	rename -uid "CC4366E2-4863-E94F-60C0-E4AB7B6BCEC6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  7 0 18 42.468583615070997 29 42.468583615070997
		 33 42.468583615070997 35 21.605179817761183 36 1.7496213920692389 38 11.535300786367465
		 40 22.438961162704214 44 32.114005805051079;
createNode animCurveTA -n "Robot_Movement:PALbot_R_Thumb03_ctrl_rotateY";
	rename -uid "2118AD88-4043-7990-6189-8DAD3DAD38A2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  7 0 18 23.400905951281949 29 23.400905951281949
		 33 23.400905951281949 35 23.400905951281946 36 23.400905951281956 38 -2.7341911218606212
		 40 2.3752574332373082 44 23.400905951281956;
createNode animCurveTA -n "Robot_Movement:PALbot_R_Thumb03_ctrl_rotateZ";
	rename -uid "9FEBB4AC-49F2-4C2E-7F7B-CA97EB431F5C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  7 0 18 15.779005772235937 29 15.779005772235937
		 33 15.779005772235937 35 15.779005772235939 36 15.779005772235958 38 15.007237917174532
		 40 6.4751249638040589 44 15.779005772235946;
createNode animCurveTL -n "Robot_Movement:PALbot_R_Thumb03_ctrl_translateX";
	rename -uid "720C321C-4F21-B381-2DD8-1E84F5F63E89";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  7 0 18 0 29 0 33 0 35 0 36 0 38 0 40 0 44 0;
createNode animCurveTL -n "Robot_Movement:PALbot_R_Thumb03_ctrl_translateY";
	rename -uid "FAE86303-411A-6C1E-4C38-779BF98BCD88";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  7 0 18 0 29 0 33 0 35 0 36 0 38 0 40 0 44 0;
createNode animCurveTL -n "Robot_Movement:PALbot_R_Thumb03_ctrl_translateZ";
	rename -uid "8E9A37E3-4038-CFBB-6720-6D9333653F4E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  7 0 18 0 29 0 33 0 35 0 36 0 38 0 40 0 44 0;
createNode animCurveTL -n "Robot_Movement:PALbot_R_Thumb02_ctrl_translateX";
	rename -uid "BD0B1A96-480F-5BBD-7869-3A9EB612695C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  7 0 18 0;
createNode animCurveTL -n "Robot_Movement:PALbot_R_Thumb02_ctrl_translateY";
	rename -uid "353DE131-42FF-44F2-06E3-60ACA689DB75";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  7 0 18 0;
createNode animCurveTL -n "Robot_Movement:PALbot_R_Thumb02_ctrl_translateZ";
	rename -uid "2CA1847F-4BFB-1120-9006-1A8F9661261C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  7 0 18 0;
createNode animCurveTU -n "Robot_Movement:PALbot_R_arm_IK_FK_switch_IK_FK";
	rename -uid "E556990A-4D3F-841E-F289-2F999FCDF292";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 1;
createNode animCurveTL -n "Robot_Movement:PALbot_L_footSec_reshape02_translateX";
	rename -uid "FD46DFA4-49C3-C49D-BA8B-0BA2463CEE35";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTL -n "Robot_Movement:PALbot_L_footSec_reshape02_translateY";
	rename -uid "FEB41A20-4158-FC21-DF34-ACBA2C53B00D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTL -n "Robot_Movement:PALbot_L_footSec_reshape02_translateZ";
	rename -uid "15337D85-491D-3E5E-8562-719B5106AFC2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "Robot_Movement:PALbot_L_footSec_reshape02_rotateX";
	rename -uid "5F44A04A-4FDB-7697-6ABF-2AA8A08A0481";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "Robot_Movement:PALbot_L_footSec_reshape02_rotateY";
	rename -uid "E14E7885-4791-7DA7-D5B8-82BF961951DE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "Robot_Movement:PALbot_L_footSec_reshape02_rotateZ";
	rename -uid "E500EDE9-4BD1-6E0A-2077-08A2A5196303";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTU -n "Robot_Movement:PALbot_L_arm_IK_FK_switch_IK_FK";
	rename -uid "79CFF753-458E-C0D8-7F93-E4977594EA2A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 1;
createNode animCurveTL -n "Robot_Movement:PALbot_L_Thumb01_ctrl_translateX";
	rename -uid "440E9CAC-4F27-EB3F-60E0-85B1420FE656";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  7 0 39 0;
createNode animCurveTL -n "Robot_Movement:PALbot_L_Thumb01_ctrl_translateY";
	rename -uid "9CB6A6F1-449D-AE80-9AAA-E0ABE106442F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  7 0 39 0;
createNode animCurveTL -n "Robot_Movement:PALbot_L_Thumb01_ctrl_translateZ";
	rename -uid "F7EA3902-44BD-8E93-E606-CEBB1B2958A6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  7 0 39 0;
createNode animCurveTA -n "Robot_Movement:PALbot_L_Thumb01_ctrl_rotateX";
	rename -uid "AAD088C9-41CA-A977-D83D-44AB645E3D69";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  7 0 39 0;
createNode animCurveTA -n "Robot_Movement:PALbot_L_Thumb01_ctrl_rotateY";
	rename -uid "3845C6AA-4473-263F-D9D9-F18DF39D18CB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  7 0 39 0;
createNode animCurveTA -n "Robot_Movement:PALbot_L_Thumb01_ctrl_rotateZ";
	rename -uid "1C344C95-4EC1-6069-7919-D58E28DB9408";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  7 0 39 0;
createNode animCurveTL -n "Robot_Movement:PALbot_R_Engine_ctrl_translateX";
	rename -uid "F59714B7-4517-8268-3266-4986A03971D1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTL -n "Robot_Movement:PALbot_R_Engine_ctrl_translateY";
	rename -uid "113A43AC-4DD4-FFC6-008C-76B6E8D6850D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTL -n "Robot_Movement:PALbot_R_Engine_ctrl_translateZ";
	rename -uid "561F16D6-4D80-4CBD-138A-38970C3BF393";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "Robot_Movement:PALbot_R_Engine_ctrl_rotateX";
	rename -uid "D2B14E2D-4D9D-6335-7808-A6B434039E16";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "Robot_Movement:PALbot_R_Engine_ctrl_rotateY";
	rename -uid "A3A220F2-42F9-71ED-CC10-B88E73D618DF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "Robot_Movement:PALbot_R_Engine_ctrl_rotateZ";
	rename -uid "2831EA13-4D46-A9C7-CF89-28B2A51E51FD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTU -n "Robot_Movement:PALbot_R_Engine_ctrl_scaleX";
	rename -uid "27C55863-480A-0B57-43C0-09ACDB076AAD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 1;
createNode animCurveTU -n "Robot_Movement:PALbot_R_Engine_ctrl_scaleY";
	rename -uid "55EA6A32-472F-C175-305F-269856B65E1E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 1;
createNode animCurveTU -n "Robot_Movement:PALbot_R_Engine_ctrl_scaleZ";
	rename -uid "E30D9D5A-4811-3A7E-1AD7-1E812327F57B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 1;
createNode animCurveTU -n "Robot_Movement:PALbot_R_Engine_ctrl_on_off";
	rename -uid "5CB110EA-431F-1305-A49A-F49ABFDF098D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTU -n "Robot_Movement:PALbot_L_HandVIS_Hand_Vis";
	rename -uid "53E35376-4217-E8A6-6035-DEA1544AC98E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  7 1 39 1;
createNode animCurveTU -n "Robot_Movement:PALbot_L_HandVIS_canon_light";
	rename -uid "1FE77440-4B0A-3701-4A06-C0AF6C2C9DC3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  7 0 39 0;
createNode animCurveTL -n "Robot_Movement:PALbot_R_hip_translateX";
	rename -uid "3FDDBB54-45A2-C9D0-D899-C09443C12C73";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTL -n "Robot_Movement:PALbot_R_hip_translateY";
	rename -uid "0D29D7FA-41A8-21E3-85DC-4FAA743DF198";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTL -n "Robot_Movement:PALbot_R_hip_translateZ";
	rename -uid "65289336-4928-4F80-CA9E-59AFC6BA7429";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "Robot_Movement:PALbot_R_hip_rotateX";
	rename -uid "218D7ECE-46D4-1FE1-B8CE-01BC8637D02D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "Robot_Movement:PALbot_R_hip_rotateY";
	rename -uid "EFDEDDEF-4F85-C142-0F2E-C39C13678B65";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "Robot_Movement:PALbot_R_hip_rotateZ";
	rename -uid "D0BD4B35-4274-FD05-3AB4-5BB745A5E35D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTL -n "Robot_Movement:PALbot_L_footSec_reshape01_translateX";
	rename -uid "2EAA3877-455A-513E-86C3-A5BDD6D4FE16";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTL -n "Robot_Movement:PALbot_L_footSec_reshape01_translateY";
	rename -uid "677A7C80-44A4-B99D-2A06-A48BE04D64EF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTL -n "Robot_Movement:PALbot_L_footSec_reshape01_translateZ";
	rename -uid "859517F9-45AC-14C9-4F67-7C9866E0A5BB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "Robot_Movement:PALbot_L_footSec_reshape01_rotateX";
	rename -uid "B06C1744-4944-FEA6-4CA1-5BAB3C2700AD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "Robot_Movement:PALbot_L_footSec_reshape01_rotateY";
	rename -uid "02D03A49-427E-611F-5E9C-65877CADFBF1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "Robot_Movement:PALbot_L_footSec_reshape01_rotateZ";
	rename -uid "1D8464FF-4562-4054-9D86-77A9D6C51A61";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTL -n "Robot_Movement:PALbot_R_Clavicle_ctrl_translateX";
	rename -uid "7E130DAA-4A94-0E33-3B2E-DF9B69B2EEFD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTL -n "Robot_Movement:PALbot_R_Clavicle_ctrl_translateY";
	rename -uid "CC5F6FDA-4402-2706-83C7-5395C21C0A1C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTL -n "Robot_Movement:PALbot_R_Clavicle_ctrl_translateZ";
	rename -uid "CC91B7D2-498D-0EE0-B027-7D8D95A58283";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "Robot_Movement:PALbot_R_Clavicle_ctrl_rotateX";
	rename -uid "2CD4E95D-4865-FE0B-F476-9EA641E7F22D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "Robot_Movement:PALbot_R_Clavicle_ctrl_rotateY";
	rename -uid "A10106F3-4EB3-9B32-681B-B499859DEA0E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "Robot_Movement:PALbot_R_Clavicle_ctrl_rotateZ";
	rename -uid "109A140A-49AF-33BC-04E6-AAAE8F94BBFC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTL -n "Robot_Movement:PALbot_L_IK_heel_lift_tip_translateX";
	rename -uid "17A2E8AD-48FB-A292-743A-6DAD888EB364";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTL -n "Robot_Movement:PALbot_L_IK_heel_lift_tip_translateY";
	rename -uid "769C1601-459D-8E02-D131-9290F9EA86B3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTL -n "Robot_Movement:PALbot_L_IK_heel_lift_tip_translateZ";
	rename -uid "6FC5CAEC-4950-7CF4-9FCC-71A6FE7E3E26";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "Robot_Movement:PALbot_L_IK_heel_lift_tip_rotateX";
	rename -uid "97AD8814-42BD-C5CF-D1DC-029BAA05A595";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "Robot_Movement:PALbot_L_IK_heel_lift_tip_rotateY";
	rename -uid "256E7299-4757-36C1-1FD2-F5B1CA29AA14";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "Robot_Movement:PALbot_L_IK_heel_lift_tip_rotateZ";
	rename -uid "E347944B-4BC2-C728-4A62-B29C2B320C76";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTL -n "Robot_Movement:PALbot_R_foot_secondary_translateX";
	rename -uid "60395DB5-45DB-BE5F-AF4E-A2990872BC38";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTL -n "Robot_Movement:PALbot_R_foot_secondary_translateY";
	rename -uid "CAA37954-4DBA-33DA-FE96-DCB72FCF053B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTL -n "Robot_Movement:PALbot_R_foot_secondary_translateZ";
	rename -uid "ED9F2CF6-4104-14A5-2ED3-4D94B28D0A88";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "Robot_Movement:PALbot_R_foot_secondary_rotateX";
	rename -uid "D2F77F10-4F71-5A1F-C427-A08BA4CE5B28";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "Robot_Movement:PALbot_R_foot_secondary_rotateY";
	rename -uid "C092D5A4-4623-361C-D160-328592366847";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "Robot_Movement:PALbot_R_foot_secondary_rotateZ";
	rename -uid "26BB5DD7-4960-3196-29A9-5D9AE130D313";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTL -n "Robot_Movement:PALbot_L_foot_secondary_translateX";
	rename -uid "CB8281EF-4E9A-4BE0-1E90-01B5DC2EF564";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTL -n "Robot_Movement:PALbot_L_foot_secondary_translateY";
	rename -uid "89C0BE2D-42A5-DCCB-375C-BBA4FCE42816";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTL -n "Robot_Movement:PALbot_L_foot_secondary_translateZ";
	rename -uid "281F02B8-465B-D185-E2C4-EE9A6B98FECC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "Robot_Movement:PALbot_L_foot_secondary_rotateX";
	rename -uid "6F97D4D5-457E-0EC4-7321-BEB243775240";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "Robot_Movement:PALbot_L_foot_secondary_rotateY";
	rename -uid "3C9A79CA-4A25-A143-5B81-DC8FD94DAC3C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "Robot_Movement:PALbot_L_foot_secondary_rotateZ";
	rename -uid "69719810-40F1-353D-8638-D5961C17C43A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTL -n "Robot_Movement:PALbot_R_footSec_reshape01_translateX";
	rename -uid "E0A7082F-46D0-5339-500A-448E2C809F70";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTL -n "Robot_Movement:PALbot_R_footSec_reshape01_translateY";
	rename -uid "DD3DE419-4FBC-6E08-347B-77A495D56267";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTL -n "Robot_Movement:PALbot_R_footSec_reshape01_translateZ";
	rename -uid "115AB5A4-4794-2EDF-22B8-88B2C3A41818";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "Robot_Movement:PALbot_R_footSec_reshape01_rotateX";
	rename -uid "D4EF2D58-4590-5D8C-67E1-5294B2F1AC49";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "Robot_Movement:PALbot_R_footSec_reshape01_rotateY";
	rename -uid "4C773F24-4901-0C43-1072-1F84E4DB4A26";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "Robot_Movement:PALbot_R_footSec_reshape01_rotateZ";
	rename -uid "5D58CC78-46BD-ABFB-D9E5-A08F91BA0B95";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTL -n "Robot_Movement:PALbot_root_translateX";
	rename -uid "F5C49D25-4A18-D509-FC1D-79A957149B6B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTL -n "Robot_Movement:PALbot_root_translateY";
	rename -uid "E657BF5E-4267-97C6-3F4A-C4A19F1D23C1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTL -n "Robot_Movement:PALbot_root_translateZ";
	rename -uid "06C08F77-4938-6A3A-A7E4-5486E842A01B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "Robot_Movement:PALbot_root_rotateX";
	rename -uid "396DFA03-4F3D-F13A-9D97-E98248DE09DB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "Robot_Movement:PALbot_root_rotateY";
	rename -uid "5C5F599A-4B2A-8E1C-2118-F98343402CD0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "Robot_Movement:PALbot_root_rotateZ";
	rename -uid "4D03BC47-4A8A-810A-3A82-F894FC2DE037";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTL -n "Robot_Movement:PALbot_R_Thumb01_ctrl_translateX";
	rename -uid "49F4C7B7-4B24-3A34-5B3A-32BB37FA0F53";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTL -n "Robot_Movement:PALbot_R_Thumb01_ctrl_translateY";
	rename -uid "0FDF1D60-43CA-DC47-8394-66AE4928EB9C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTL -n "Robot_Movement:PALbot_R_Thumb01_ctrl_translateZ";
	rename -uid "DC242FD8-416C-1B99-3FED-ACB6607C4F37";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "Robot_Movement:PALbot_R_Thumb01_ctrl_rotateX";
	rename -uid "CE2B0C8F-44C2-5137-CF7B-57AB93D5877C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "Robot_Movement:PALbot_R_Thumb01_ctrl_rotateY";
	rename -uid "6F71D9BF-4F30-6C58-7FD8-F09D09C827C7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "Robot_Movement:PALbot_R_Thumb01_ctrl_rotateZ";
	rename -uid "BBB9CBED-4C13-A0C7-E512-1DA775F27000";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTU -n "Robot_Movement:PALbot_R_HandVIS_Hand_Vis";
	rename -uid "56983416-4405-44F8-41F3-BEB0BB3CC8EF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 1;
createNode animCurveTU -n "Robot_Movement:PALbot_R_HandVIS_canon_light";
	rename -uid "338BD1FE-4413-6A9B-0F2B-B39539EED479";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTU -n "Robot_Movement:PALbot_L_leg_IK_FK_switch_IK_FK";
	rename -uid "B57DE665-43DC-71F6-D498-AE8FDE3D74CF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTL -n "Robot_Movement:PALbot_L_Clavicle_ctrl_translateX";
	rename -uid "AAD99E57-4D9C-974B-921D-D09F189DD75C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTL -n "Robot_Movement:PALbot_L_Clavicle_ctrl_translateY";
	rename -uid "F5B6FEAE-45A3-B881-3640-DE9DC805CDE9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTL -n "Robot_Movement:PALbot_L_Clavicle_ctrl_translateZ";
	rename -uid "31DDAC98-41BF-1FCC-98BF-2D95F236E2AD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "Robot_Movement:PALbot_L_Clavicle_ctrl_rotateX";
	rename -uid "8ADFFF34-4C86-19E3-E2DA-E689BB39378F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "Robot_Movement:PALbot_L_Clavicle_ctrl_rotateY";
	rename -uid "111156AA-4C39-927C-349F-4BB70509E73A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "Robot_Movement:PALbot_L_Clavicle_ctrl_rotateZ";
	rename -uid "544817C5-410F-5385-F803-80BCEC82011D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTU -n "Robot_Movement:PALbot_R_leg_IK_FK_switch_IK_FK";
	rename -uid "7A6C8A58-4CE5-1B80-3122-E6A37D794CD0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTL -n "Robot_Movement:PALbot_Neck_ctrl_translateX";
	rename -uid "23AEE697-43F6-D535-997E-D691EEB7C4FA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTL -n "Robot_Movement:PALbot_Neck_ctrl_translateY";
	rename -uid "0F529C47-44D0-4795-C64D-AABC89FBBD53";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTL -n "Robot_Movement:PALbot_Neck_ctrl_translateZ";
	rename -uid "2CF1E647-46F1-6209-5AC5-A087B5D90786";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "Robot_Movement:PALbot_Neck_ctrl_rotateX";
	rename -uid "FAEB3D11-4ED1-6F65-6FC9-2590DEFACB46";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "Robot_Movement:PALbot_Neck_ctrl_rotateY";
	rename -uid "01BB766C-4998-E93D-BD1C-1999B3A6537B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "Robot_Movement:PALbot_Neck_ctrl_rotateZ";
	rename -uid "64141767-4F0C-2200-552C-A58EB8C75C3E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTL -n "Robot_Movement:PALbot_R_footSec_reshape02_translateX";
	rename -uid "F9652E1C-4459-5E90-8B94-A281A5172010";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTL -n "Robot_Movement:PALbot_R_footSec_reshape02_translateY";
	rename -uid "BE4118B3-46AC-4310-FAE7-24B3F55010BF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTL -n "Robot_Movement:PALbot_R_footSec_reshape02_translateZ";
	rename -uid "155BC326-4EE8-D357-8621-7987F546A174";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "Robot_Movement:PALbot_R_footSec_reshape02_rotateX";
	rename -uid "F50DA5A2-42BA-EB2F-9401-DBBE148A0C2D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "Robot_Movement:PALbot_R_footSec_reshape02_rotateY";
	rename -uid "FD865903-4D15-64A2-B26E-74944555EF10";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "Robot_Movement:PALbot_R_footSec_reshape02_rotateZ";
	rename -uid "69BBC473-4A23-200D-6320-AB932C31AED7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTL -n "Robot_Movement:PALbot_R_IK_heel_lift_tip_translateX";
	rename -uid "D579CAA0-4F54-8618-F983-43855AC7E92E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTL -n "Robot_Movement:PALbot_R_IK_heel_lift_tip_translateY";
	rename -uid "B42F0C22-4434-5370-B94F-3299DB52CE5A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTL -n "Robot_Movement:PALbot_R_IK_heel_lift_tip_translateZ";
	rename -uid "23CFBB4B-4142-824F-4CD2-2BB87DD53C3C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "Robot_Movement:PALbot_R_IK_heel_lift_tip_rotateX";
	rename -uid "39E5E80B-4B1C-A648-02C2-75801680EFFB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "Robot_Movement:PALbot_R_IK_heel_lift_tip_rotateY";
	rename -uid "DABC8672-47A2-59BA-6F16-1185026D6EB8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "Robot_Movement:PALbot_R_IK_heel_lift_tip_rotateZ";
	rename -uid "01C37CA1-4E78-ACAE-2F6C-F7A6562D0D8B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTL -n "Robot_Movement:PALbot_L_Thumb03_ctrl_translateX";
	rename -uid "706155F2-4C8E-5C29-9015-02B9CA383D41";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  7 0 18 0 39 0 41 0 44 0;
createNode animCurveTL -n "Robot_Movement:PALbot_L_Thumb03_ctrl_translateY";
	rename -uid "20A4BDB0-4121-EF61-7AF2-AB946F633258";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  7 0 18 0 39 0 41 0 44 0;
createNode animCurveTL -n "Robot_Movement:PALbot_L_Thumb03_ctrl_translateZ";
	rename -uid "971F5DAE-45DA-0EF4-A640-27820FEA4CFE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  7 0 18 0 39 0 41 0 44 0;
createNode animCurveTA -n "Robot_Movement:PALbot_L_Thumb03_ctrl_rotateX";
	rename -uid "6E2F9005-4983-D9B0-50A3-7A96C6073216";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  7 0 18 0 39 0 41 -16.944434498452143 44 -1.281;
createNode animCurveTA -n "Robot_Movement:PALbot_L_Thumb03_ctrl_rotateY";
	rename -uid "3487E07B-4FEB-C1CC-5338-59B565D6D6BA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  7 0 18 0 39 0 41 0 44 0;
createNode animCurveTA -n "Robot_Movement:PALbot_L_Thumb03_ctrl_rotateZ";
	rename -uid "C1832398-4FB0-B651-1E0B-E08D8F2A87BF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  7 0 18 0 39 0 41 0 44 0;
createNode animCurveTL -n "Robot_Movement:PALbot_hipMain_ctrl_translateX";
	rename -uid "C3EA53FC-4964-4BDD-5C37-1E958B344322";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTL -n "Robot_Movement:PALbot_hipMain_ctrl_translateY";
	rename -uid "400B8A4F-4ACB-2D1D-F831-F59B56C42DE6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTL -n "Robot_Movement:PALbot_hipMain_ctrl_translateZ";
	rename -uid "EE1635C9-486F-32F6-AB2B-05991080C698";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "Robot_Movement:PALbot_hipMain_ctrl_rotateX";
	rename -uid "1C8B2FB7-40BD-40C7-B30A-8093DD549D14";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "Robot_Movement:PALbot_hipMain_ctrl_rotateY";
	rename -uid "B481CB59-48D5-3973-8928-85A9D41B2246";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "Robot_Movement:PALbot_hipMain_ctrl_rotateZ";
	rename -uid "16B417D7-4F4E-ACF0-46B7-539BC1B4A82E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTL -n "Robot_Movement:PALbot_L_hip_translateX";
	rename -uid "11C04BFB-4483-8617-44A6-CF95177601F6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTL -n "Robot_Movement:PALbot_L_hip_translateY";
	rename -uid "09265F9D-4E93-2693-CBA5-BDB0B948F039";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTL -n "Robot_Movement:PALbot_L_hip_translateZ";
	rename -uid "2D859678-40BD-12A9-AA47-2EA3722DDF32";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "Robot_Movement:PALbot_L_hip_rotateX";
	rename -uid "2822DFF8-4229-36FF-CDA3-FDBBEC27D693";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "Robot_Movement:PALbot_L_hip_rotateY";
	rename -uid "20BB3779-4947-E9BA-6C59-7584AE445F7C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "Robot_Movement:PALbot_L_hip_rotateZ";
	rename -uid "AC2431E0-4890-E93C-994C-FD83F16CFBBB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTL -n "Robot_Movement:PALbot_R_IK_foot_tip_translateX";
	rename -uid "CD606EBB-471A-601E-CEF0-6E99F6115645";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTL -n "Robot_Movement:PALbot_R_IK_foot_tip_translateY";
	rename -uid "6DD63A27-464D-651E-4194-ADBA6AA49277";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTL -n "Robot_Movement:PALbot_R_IK_foot_tip_translateZ";
	rename -uid "951155CF-4806-956C-A4A4-6AB6F80AB4B5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "Robot_Movement:PALbot_R_IK_foot_tip_rotateX";
	rename -uid "6D0C750C-4500-54D8-71EB-81929F56AAFC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "Robot_Movement:PALbot_R_IK_foot_tip_rotateY";
	rename -uid "79478BF4-4D97-F892-81C0-35864DD38A73";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "Robot_Movement:PALbot_R_IK_foot_tip_rotateZ";
	rename -uid "BBE26FB8-47EA-0D03-D029-D6806A97AC88";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTL -n "Robot_Movement:PALbot_MAIN_translateX";
	rename -uid "6F6EF61A-469D-B4CE-21C6-69B9A286E273";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 8 0 10 0 17 0;
createNode animCurveTL -n "Robot_Movement:PALbot_MAIN_translateY";
	rename -uid "D5C7CA57-4DEF-DF4B-8721-668BF03321A3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 8 0 10 0 17 0;
createNode animCurveTL -n "Robot_Movement:PALbot_MAIN_translateZ";
	rename -uid "F2120FC2-4A5B-E834-15B1-B3A204970432";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -13.559780004245459 8 -13.56 10 -12.705730531705523
		 19 -9.0603009403152797;
createNode animCurveTA -n "Robot_Movement:PALbot_MAIN_rotateX";
	rename -uid "5C2E9543-46A4-CA20-EFC2-DE8C72959B0D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 8 0 10 0 17 0;
createNode animCurveTA -n "Robot_Movement:PALbot_MAIN_rotateY";
	rename -uid "4A17D4D7-4AFA-A597-4C92-758895D4A86D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 8 0 10 0 17 0;
createNode animCurveTA -n "Robot_Movement:PALbot_MAIN_rotateZ";
	rename -uid "7E6C0541-4815-C731-0F65-9B83678CB229";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 8 0 10 0 17 0;
createNode animCurveTU -n "Robot_Movement:PALbot_MAIN_global_scale";
	rename -uid "80358B4E-4529-D243-9511-E5AF3D61D8E5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1 8 1 10 1 17 1;
createNode animCurveTU -n "Robot_Movement:PALbot_MAIN_Mesh_lock";
	rename -uid "C50BE8FC-4669-2743-099B-AD945FCC6AD9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1 8 1 10 1 17 1;
createNode animCurveTL -n "Robot_Movement:PALbot_L_IK_foot_tip_translateX";
	rename -uid "E8EC860A-4D3B-4C42-8716-CD95F7BFF3D4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTL -n "Robot_Movement:PALbot_L_IK_foot_tip_translateY";
	rename -uid "2D35696A-4882-D910-CDCF-12A8E9E1A9F7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTL -n "Robot_Movement:PALbot_L_IK_foot_tip_translateZ";
	rename -uid "94E4C430-4922-8515-2332-65ACF198B564";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "Robot_Movement:PALbot_L_IK_foot_tip_rotateX";
	rename -uid "242122FC-4F90-C84F-E103-9AB10610B6E5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "Robot_Movement:PALbot_L_IK_foot_tip_rotateY";
	rename -uid "CCE6C706-4EC1-90D6-99BE-AF9B30FEEAF3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "Robot_Movement:PALbot_L_IK_foot_tip_rotateZ";
	rename -uid "06D750C2-4545-974B-E22C-38818C97BC98";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTL -n "Robot_Movement:PALbot_L_Thumb02_ctrl_translateX";
	rename -uid "F43FA4C0-4762-9F89-DCC4-F99416D7E63B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  7 0 18 0 39 0 41 0 43 0 44 0;
createNode animCurveTL -n "Robot_Movement:PALbot_L_Thumb02_ctrl_translateY";
	rename -uid "7F5AE923-4D2D-E36C-1B58-8EA477284084";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  7 0 18 0 39 0 41 0 43 0 44 0;
createNode animCurveTL -n "Robot_Movement:PALbot_L_Thumb02_ctrl_translateZ";
	rename -uid "E8D962C5-4446-F687-464A-5E94E9903B7C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  7 0 18 0 39 0 41 0 43 0 44 0;
createNode animCurveTA -n "Robot_Movement:PALbot_L_Thumb02_ctrl_rotateX";
	rename -uid "BD6530A6-4748-2B69-C495-C98CD7DD821F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  7 0 18 -36.73415716605507 39 -36.73415716605507
		 41 -53.678591664507216 43 -40.089443705215729 44 -40.089000000000006;
createNode animCurveTA -n "Robot_Movement:PALbot_L_Thumb02_ctrl_rotateY";
	rename -uid "44FA6A28-4EDF-F868-9782-03B9FA7D8D98";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  7 0 18 24.027468463740018 39 24.027468463740018
		 41 24.027468463740018 43 6.2293436757845084 44 6.0000000000000009;
createNode animCurveTA -n "Robot_Movement:PALbot_L_Thumb02_ctrl_rotateZ";
	rename -uid "240F1950-423C-77FA-926E-5082AEFFCD2C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  7 0 18 -30.800840853416567 39 -30.800840853416567
		 41 -30.800840853416567 43 -7.9854031842192086 44 -7;
createNode animCurveTL -n "Robot_Movement:PALbot_L_Engine_ctrl_translateX";
	rename -uid "97AE2415-4150-3C74-2137-9290F6C73D5C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTL -n "Robot_Movement:PALbot_L_Engine_ctrl_translateY";
	rename -uid "A8BC02CA-4866-5140-30F0-39B9C1460158";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTL -n "Robot_Movement:PALbot_L_Engine_ctrl_translateZ";
	rename -uid "FD1F9AB2-4771-1BF6-9C47-4DA40E1E2386";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "Robot_Movement:PALbot_L_Engine_ctrl_rotateX";
	rename -uid "027AF011-4DA0-A516-086F-1B917CAF1BDE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "Robot_Movement:PALbot_L_Engine_ctrl_rotateY";
	rename -uid "3132CF34-43EE-6147-529B-FFAD7FC74A7E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "Robot_Movement:PALbot_L_Engine_ctrl_rotateZ";
	rename -uid "BDE4266F-46F7-CF02-6D10-5BBCB81CACFD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTU -n "Robot_Movement:PALbot_L_Engine_ctrl_scaleX";
	rename -uid "D7841797-4F4C-2DA6-F030-F3A75B63C234";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 1;
createNode animCurveTU -n "Robot_Movement:PALbot_L_Engine_ctrl_scaleY";
	rename -uid "48DD29D0-4D5F-0C31-F95A-D68C78ECBF5B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 1;
createNode animCurveTU -n "Robot_Movement:PALbot_L_Engine_ctrl_scaleZ";
	rename -uid "1A9CB41B-4ED2-9DBD-7FAE-52A7AF291E1F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 1;
createNode animCurveTU -n "Robot_Movement:PALbot_L_Engine_ctrl_on_off";
	rename -uid "6C484E5B-4D96-E97A-2FD3-E78DEF4A6DEF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode renderLayerManager -n "Ball_Anim_reference_for_TRAX1:renderLayerManager";
	rename -uid "65066BCA-4AD0-593E-E9A6-73A443AC58C2";
createNode renderLayer -n "Ball_Anim_reference_for_TRAX1:defaultRenderLayer";
	rename -uid "B16E2720-4160-E627-739A-E5A4187E35B0";
	setAttr ".g" yes;
createNode reference -n "Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN";
	rename -uid "6AA163A1-41EE-A66E-1823-8A82C202B285";
	setAttr -s 2 ".fn";
	setAttr ".fn[0]" -type "string" "C:/Users/hunte/Documents/Education/Fall 2023/Modeling/References/Ultimate_Walker_Rig.ma";
	setAttr ".fn[1]" -type "string" "C:/Users/hunte/Documents/Education/Fall 2023/vid game/2D_Side_Sccroller/Assets/Maya Projects/scenes/Ultimate_Walker_Rig.ma";
	setAttr -s 43 ".phl";
	setAttr ".phl[1]" 0;
	setAttr ".phl[2]" 0;
	setAttr ".phl[3]" 0;
	setAttr ".phl[4]" 0;
	setAttr ".phl[5]" 0;
	setAttr ".phl[6]" 0;
	setAttr ".phl[7]" 0;
	setAttr ".phl[8]" 0;
	setAttr ".phl[9]" 0;
	setAttr ".phl[10]" 0;
	setAttr ".phl[11]" 0;
	setAttr ".phl[12]" 0;
	setAttr ".phl[13]" 0;
	setAttr ".phl[14]" 0;
	setAttr ".phl[15]" 0;
	setAttr ".phl[16]" 0;
	setAttr ".phl[17]" 0;
	setAttr ".phl[18]" 0;
	setAttr ".phl[19]" 0;
	setAttr ".phl[20]" 0;
	setAttr ".phl[21]" 0;
	setAttr ".phl[22]" 0;
	setAttr ".phl[23]" 0;
	setAttr ".phl[24]" 0;
	setAttr ".phl[25]" 0;
	setAttr ".phl[26]" 0;
	setAttr ".phl[27]" 0;
	setAttr ".phl[28]" 0;
	setAttr ".phl[29]" 0;
	setAttr ".phl[30]" 0;
	setAttr ".phl[31]" 0;
	setAttr ".phl[32]" 0;
	setAttr ".phl[33]" 0;
	setAttr ".phl[34]" 0;
	setAttr ".phl[35]" 0;
	setAttr ".phl[36]" 0;
	setAttr ".phl[37]" 0;
	setAttr ".phl[38]" 0;
	setAttr ".phl[39]" 0;
	setAttr ".phl[40]" 0;
	setAttr ".phl[41]" 0;
	setAttr ".phl[42]" 0;
	setAttr ".phl[43]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN"
		"Ultimate_Walker_RigRN" 0
		"Ultimate_Walker_RigRN" 84
		2 "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:CTRL_Root" "translate" 
		" -type \"double3\" 0 0 10.63989198734007857"
		2 "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:CTRL_Root" "translateX" 
		" -k 0 -cb 1"
		2 "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:CTRL_Root" "translateY" 
		" -k 0 -cb 1"
		2 "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:CTRL_Root" "translateZ" 
		" -k 0 -cb 1"
		2 "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_foot_ctrl" 
		"ikFkBlend" " -k 1 1"
		2 "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_foot_ctrl" 
		"ikFkBlend" " -k 1 1"
		2 "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_foot_ctrl|Ultimate_Walker_Rig:walker_rt_foot_ctrl_parentConstraint1" 
		"rotationDecompositionTarget" " -type \"double3\" 0 0 0"
		2 "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Body_Rig_Grp|Ultimate_Walker_Rig:Mesh_Flex_Grp|Ultimate_Walker_Rig:Mesh_body_Grp|Ultimate_Walker_Rig:simple_body|Ultimate_Walker_Rig:simple_bodyShape" 
		"dispResolution" " 1"
		2 "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Body_Rig_Grp|Ultimate_Walker_Rig:Mesh_Flex_Grp|Ultimate_Walker_Rig:Mesh_body_Grp|Ultimate_Walker_Rig:simple_body|Ultimate_Walker_Rig:simple_bodyShape" 
		"displaySmoothMesh" " 0"
		2 "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Body_Rig_Grp|Ultimate_Walker_Rig:Mesh_Flex_Grp|Ultimate_Walker_Rig:Mesh_body_Grp|Ultimate_Walker_Rig:simple_body_line|Ultimate_Walker_Rig:simple_body_lineShape" 
		"dispResolution" " 1"
		2 "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Body_Rig_Grp|Ultimate_Walker_Rig:Mesh_Flex_Grp|Ultimate_Walker_Rig:Mesh_body_Grp|Ultimate_Walker_Rig:simple_body_line|Ultimate_Walker_Rig:simple_body_lineShape" 
		"displaySmoothMesh" " 0"
		2 "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Body_Rig_Grp|Ultimate_Walker_Rig:CNT_Grp|Ultimate_Walker_Rig:CTRL_Top_Grp|Ultimate_Walker_Rig:CTRL_Top" 
		"translateY" " 0"
		2 "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Mesh_Grp|Ultimate_Walker_Rig:leg_binded_grp|Ultimate_Walker_Rig:R_leg_Grp|Ultimate_Walker_Rig:R_upperleg|Ultimate_Walker_Rig:R_upperlegShape" 
		"dispResolution" " 1"
		2 "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Mesh_Grp|Ultimate_Walker_Rig:leg_binded_grp|Ultimate_Walker_Rig:R_leg_Grp|Ultimate_Walker_Rig:R_upperleg|Ultimate_Walker_Rig:R_upperlegShape" 
		"displaySmoothMesh" " 0"
		2 "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Mesh_Grp|Ultimate_Walker_Rig:leg_binded_grp|Ultimate_Walker_Rig:R_leg_Grp|Ultimate_Walker_Rig:R_leg|Ultimate_Walker_Rig:R_legShape" 
		"dispResolution" " 1"
		2 "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Mesh_Grp|Ultimate_Walker_Rig:leg_binded_grp|Ultimate_Walker_Rig:R_leg_Grp|Ultimate_Walker_Rig:R_leg|Ultimate_Walker_Rig:R_legShape" 
		"displaySmoothMesh" " 0"
		2 "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Mesh_Grp|Ultimate_Walker_Rig:leg_binded_grp|Ultimate_Walker_Rig:L_leg_Grp|Ultimate_Walker_Rig:L_upperleg|Ultimate_Walker_Rig:L_upperlegShape" 
		"dispResolution" " 1"
		2 "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Mesh_Grp|Ultimate_Walker_Rig:leg_binded_grp|Ultimate_Walker_Rig:L_leg_Grp|Ultimate_Walker_Rig:L_upperleg|Ultimate_Walker_Rig:L_upperlegShape" 
		"displaySmoothMesh" " 0"
		2 "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Mesh_Grp|Ultimate_Walker_Rig:leg_binded_grp|Ultimate_Walker_Rig:L_leg_Grp|Ultimate_Walker_Rig:L_leg|Ultimate_Walker_Rig:L_legShape" 
		"dispResolution" " 1"
		2 "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Mesh_Grp|Ultimate_Walker_Rig:leg_binded_grp|Ultimate_Walker_Rig:L_leg_Grp|Ultimate_Walker_Rig:L_leg|Ultimate_Walker_Rig:L_legShape" 
		"displaySmoothMesh" " 0"
		2 "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Mesh_Grp|Ultimate_Walker_Rig:leg_scale_Const|Ultimate_Walker_Rig:R_but|Ultimate_Walker_Rig:R_butShape" 
		"dispResolution" " 1"
		2 "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Mesh_Grp|Ultimate_Walker_Rig:leg_scale_Const|Ultimate_Walker_Rig:R_but|Ultimate_Walker_Rig:R_butShape" 
		"displaySmoothMesh" " 0"
		2 "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Mesh_Grp|Ultimate_Walker_Rig:leg_scale_Const|Ultimate_Walker_Rig:L_but|Ultimate_Walker_Rig:L_butShape" 
		"dispResolution" " 1"
		2 "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Mesh_Grp|Ultimate_Walker_Rig:leg_scale_Const|Ultimate_Walker_Rig:L_but|Ultimate_Walker_Rig:L_butShape" 
		"displaySmoothMesh" " 0"
		2 "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Mesh_Grp|Ultimate_Walker_Rig:leg_scale_Const|Ultimate_Walker_Rig:R_knee|Ultimate_Walker_Rig:R_kneeShape" 
		"dispResolution" " 1"
		2 "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Mesh_Grp|Ultimate_Walker_Rig:leg_scale_Const|Ultimate_Walker_Rig:R_knee|Ultimate_Walker_Rig:R_kneeShape" 
		"displaySmoothMesh" " 0"
		2 "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Mesh_Grp|Ultimate_Walker_Rig:leg_scale_Const|Ultimate_Walker_Rig:L_knee|Ultimate_Walker_Rig:L_kneeShape" 
		"dispResolution" " 1"
		2 "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Mesh_Grp|Ultimate_Walker_Rig:leg_scale_Const|Ultimate_Walker_Rig:L_knee|Ultimate_Walker_Rig:L_kneeShape" 
		"displaySmoothMesh" " 0"
		2 "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Mesh_Grp|Ultimate_Walker_Rig:leg_scale_Const|Ultimate_Walker_Rig:R_ankle|Ultimate_Walker_Rig:R_ankleShape" 
		"dispResolution" " 1"
		2 "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Mesh_Grp|Ultimate_Walker_Rig:leg_scale_Const|Ultimate_Walker_Rig:R_ankle|Ultimate_Walker_Rig:R_ankleShape" 
		"displaySmoothMesh" " 0"
		2 "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Mesh_Grp|Ultimate_Walker_Rig:leg_scale_Const|Ultimate_Walker_Rig:L_ankle|Ultimate_Walker_Rig:L_ankleShape" 
		"dispResolution" " 1"
		2 "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Mesh_Grp|Ultimate_Walker_Rig:leg_scale_Const|Ultimate_Walker_Rig:L_ankle|Ultimate_Walker_Rig:L_ankleShape" 
		"displaySmoothMesh" " 0"
		2 "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Mesh_Grp|Ultimate_Walker_Rig:leg_scale_Const|Ultimate_Walker_Rig:R_foot|Ultimate_Walker_Rig:R_footShape" 
		"dispResolution" " 1"
		2 "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Mesh_Grp|Ultimate_Walker_Rig:leg_scale_Const|Ultimate_Walker_Rig:R_foot|Ultimate_Walker_Rig:R_footShape" 
		"displaySmoothMesh" " 0"
		2 "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Mesh_Grp|Ultimate_Walker_Rig:leg_scale_Const|Ultimate_Walker_Rig:L_foot|Ultimate_Walker_Rig:L_footShape" 
		"dispResolution" " 1"
		2 "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Mesh_Grp|Ultimate_Walker_Rig:leg_scale_Const|Ultimate_Walker_Rig:L_foot|Ultimate_Walker_Rig:L_footShape" 
		"displaySmoothMesh" " 0"
		2 "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Mesh_Grp|Ultimate_Walker_Rig:leg_scale_Const|Ultimate_Walker_Rig:R_toe|Ultimate_Walker_Rig:R_toeShape" 
		"dispResolution" " 1"
		2 "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Mesh_Grp|Ultimate_Walker_Rig:leg_scale_Const|Ultimate_Walker_Rig:R_toe|Ultimate_Walker_Rig:R_toeShape" 
		"displaySmoothMesh" " 0"
		2 "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Mesh_Grp|Ultimate_Walker_Rig:leg_scale_Const|Ultimate_Walker_Rig:L_toe|Ultimate_Walker_Rig:L_toeShape" 
		"dispResolution" " 1"
		2 "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Mesh_Grp|Ultimate_Walker_Rig:leg_scale_Const|Ultimate_Walker_Rig:L_toe|Ultimate_Walker_Rig:L_toeShape" 
		"displaySmoothMesh" " 0"
		3 "Ultimate_Walker_Rig:layerManager.displayLayerId[2]" "Ultimate_Walker_Rig:L_Objects.identification" 
		""
		5 4 "Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl.pvControl" 
		"Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN.placeHolderList[1]" ""
		5 4 "Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl.legTwist" 
		"Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN.placeHolderList[2]" ""
		5 4 "Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl.heelTwist" 
		"Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN.placeHolderList[3]" ""
		5 4 "Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl.ballTwist" 
		"Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN.placeHolderList[4]" ""
		5 4 "Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl.toeTwist" 
		"Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN.placeHolderList[5]" ""
		5 4 "Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl.translateX" 
		"Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN.placeHolderList[6]" ""
		5 4 "Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl.translateY" 
		"Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN.placeHolderList[7]" ""
		5 4 "Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl.translateZ" 
		"Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN.placeHolderList[8]" ""
		5 4 "Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl.rotateX" 
		"Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN.placeHolderList[9]" ""
		5 4 "Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl.rotateY" 
		"Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN.placeHolderList[10]" ""
		5 4 "Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl.rotateZ" 
		"Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN.placeHolderList[11]" ""
		5 4 "Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl.footRoll" 
		"Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN.placeHolderList[12]" ""
		5 4 "Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl.footBreak" 
		"Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN.placeHolderList[13]" ""
		5 4 "Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl.toeRoll" 
		"Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN.placeHolderList[14]" ""
		5 4 "Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_knee_pv_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_legPvCtrlGrp_space_grp|Ultimate_Walker_Rig:walker_lf_knee_pv_ctrl.translateX" 
		"Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN.placeHolderList[15]" ""
		5 4 "Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_knee_pv_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_legPvCtrlGrp_space_grp|Ultimate_Walker_Rig:walker_lf_knee_pv_ctrl.translateY" 
		"Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN.placeHolderList[16]" ""
		5 4 "Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_knee_pv_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_legPvCtrlGrp_space_grp|Ultimate_Walker_Rig:walker_lf_knee_pv_ctrl.translateZ" 
		"Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN.placeHolderList[17]" ""
		5 4 "Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_knee_pv_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_legPvCtrlGrp_space_grp|Ultimate_Walker_Rig:walker_lf_knee_pv_ctrl.lfLegIkCtrl" 
		"Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN.placeHolderList[18]" ""
		5 4 "Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl.pvControl" 
		"Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN.placeHolderList[19]" ""
		5 4 "Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl.legTwist" 
		"Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN.placeHolderList[20]" ""
		5 4 "Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl.heelTwist" 
		"Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN.placeHolderList[21]" ""
		5 4 "Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl.ballTwist" 
		"Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN.placeHolderList[22]" ""
		5 4 "Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl.toeTwist" 
		"Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN.placeHolderList[23]" ""
		5 4 "Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl.translateX" 
		"Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN.placeHolderList[24]" ""
		5 4 "Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl.translateY" 
		"Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN.placeHolderList[25]" ""
		5 4 "Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl.translateZ" 
		"Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN.placeHolderList[26]" ""
		5 4 "Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl.rotateX" 
		"Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN.placeHolderList[27]" ""
		5 4 "Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl.rotateY" 
		"Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN.placeHolderList[28]" ""
		5 4 "Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl.rotateZ" 
		"Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN.placeHolderList[29]" ""
		5 4 "Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl.footRoll" 
		"Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN.placeHolderList[30]" ""
		5 4 "Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl.footBreak" 
		"Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN.placeHolderList[31]" ""
		5 4 "Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl.toeRoll" 
		"Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN.placeHolderList[32]" ""
		5 4 "Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_knee_pv_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_legPvCtrlGrp_space_grp|Ultimate_Walker_Rig:walker_rt_knee_pv_ctrl.translateX" 
		"Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN.placeHolderList[33]" ""
		5 4 "Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_knee_pv_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_legPvCtrlGrp_space_grp|Ultimate_Walker_Rig:walker_rt_knee_pv_ctrl.translateY" 
		"Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN.placeHolderList[34]" ""
		5 4 "Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_knee_pv_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_legPvCtrlGrp_space_grp|Ultimate_Walker_Rig:walker_rt_knee_pv_ctrl.translateZ" 
		"Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN.placeHolderList[35]" ""
		5 4 "Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_knee_pv_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_legPvCtrlGrp_space_grp|Ultimate_Walker_Rig:walker_rt_knee_pv_ctrl.rtLegIkCtrl" 
		"Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN.placeHolderList[36]" ""
		5 4 "Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Body_Rig_Grp|Ultimate_Walker_Rig:CNT_Grp|Ultimate_Walker_Rig:CTRL_Main_Grp|Ultimate_Walker_Rig:CTRL_Main.translateX" 
		"Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN.placeHolderList[37]" ""
		5 4 "Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Body_Rig_Grp|Ultimate_Walker_Rig:CNT_Grp|Ultimate_Walker_Rig:CTRL_Main_Grp|Ultimate_Walker_Rig:CTRL_Main.translateY" 
		"Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN.placeHolderList[38]" ""
		5 4 "Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Body_Rig_Grp|Ultimate_Walker_Rig:CNT_Grp|Ultimate_Walker_Rig:CTRL_Main_Grp|Ultimate_Walker_Rig:CTRL_Main.translateZ" 
		"Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN.placeHolderList[39]" ""
		5 4 "Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Body_Rig_Grp|Ultimate_Walker_Rig:CNT_Grp|Ultimate_Walker_Rig:CTRL_Main_Grp|Ultimate_Walker_Rig:CTRL_Main.rotateX" 
		"Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN.placeHolderList[40]" ""
		5 4 "Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Body_Rig_Grp|Ultimate_Walker_Rig:CNT_Grp|Ultimate_Walker_Rig:CTRL_Main_Grp|Ultimate_Walker_Rig:CTRL_Main.rotateY" 
		"Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN.placeHolderList[41]" ""
		5 4 "Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Body_Rig_Grp|Ultimate_Walker_Rig:CNT_Grp|Ultimate_Walker_Rig:CTRL_Main_Grp|Ultimate_Walker_Rig:CTRL_Main.rotateZ" 
		"Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN.placeHolderList[42]" ""
		5 4 "Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN" "Ultimate_Walker_Rig:L_Objects.identification" 
		"Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN.placeHolderList[43]" "";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode animCurveTL -n "Ball_Anim_reference_for_TRAX1:CTRL_Main_translateY";
	rename -uid "F4BF9792-421C-C99F-3B46-B98BA529FA6D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  35 0 51 -2.011767941896581 55 -1.7261577269004553
		 59 -2.0175072042883713;
createNode animCurveTU -n "Ball_Anim_reference_for_TRAX1:walker_rt_heel_ik_ctrl_footRoll";
	rename -uid "E1AA8235-4C95-EC3B-E896-6E90167893A1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  35 0 36 0 37 0 40 0 42 0 45 0 50 0 55 0
		 59 0;
createNode animCurveTU -n "Ball_Anim_reference_for_TRAX1:walker_rt_heel_ik_ctrl_footBreak";
	rename -uid "2BBDF6EF-42E8-9B2B-8987-76BF89DD09ED";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  35 0 36 0 37 0 40 0 42 0 45 0 50 0 55 0
		 59 0;
createNode animCurveTL -n "Ball_Anim_reference_for_TRAX1:walker_rt_heel_ik_ctrl_translateY";
	rename -uid "4FB293AE-4895-56C3-9C92-0891FCDEB2D4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  35 0 36 0.20437074000151226 37 0.30975666993631795
		 40 0.87999053959181539 42 0.83960771086431529 45 0.70053482195745809 50 0.4052908754294422
		 55 -0.065133001281544756 59 0;
createNode animCurveTL -n "Ball_Anim_reference_for_TRAX1:walker_rt_heel_ik_ctrl_translateZ";
	rename -uid "57FF5589-4A4C-1188-A937-BEABD09715F8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  35 0 36 0.77478741092617642 37 1.1466618670141122
		 40 2.2786402299747319 42 2.2109207769756845 45 2.2742129963055771 50 2.5853712020047475
		 55 2.482975071828172 59 2.002348222942202;
createNode animCurveTL -n "Ball_Anim_reference_for_TRAX1:CTRL_Main_translateX";
	rename -uid "5FA74F2C-4F84-8651-FD90-A7B7195AA093";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  35 0 51 0 55 0 59 0;
createNode animCurveTL -n "Ball_Anim_reference_for_TRAX1:CTRL_Main_translateZ";
	rename -uid "1A2071F6-4980-F072-0A6B-459C21C0AE6D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  35 0 51 0 55 0 59 0;
createNode animCurveTL -n "Ball_Anim_reference_for_TRAX1:walker_lf_heel_ik_ctrl_translateX";
	rename -uid "44C926BA-4E1A-39CF-4AC4-14AAE92098A3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  35 0 40 0 47 0 55 0 57 0 59 0;
createNode animCurveTL -n "Ball_Anim_reference_for_TRAX1:walker_lf_heel_ik_ctrl_translateY";
	rename -uid "E2BB812F-4B43-711F-D248-3F880BC3E512";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  35 0 40 0.49765177705779839 47 1.313006277748765
		 55 0.0087837129824230864 57 0.094367585932344011 59 0;
createNode animCurveTL -n "Ball_Anim_reference_for_TRAX1:walker_lf_heel_ik_ctrl_translateZ";
	rename -uid "23B19323-4ED3-D838-160D-E3A554376F7F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  35 0 40 1.2639163668036966 47 2.5134701495804639
		 55 2.7465849583593887 57 2.7544301682702179 59 2.7555509125431934;
createNode animCurveTL -n "Ball_Anim_reference_for_TRAX1:walker_lf_knee_pv_ctrl_translateX";
	rename -uid "31C5604F-4201-4A0B-D1B9-A69B272B76E3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  40 0;
createNode animCurveTL -n "Ball_Anim_reference_for_TRAX1:walker_lf_knee_pv_ctrl_translateY";
	rename -uid "FDAA96E0-4360-9595-0217-E6AA702AF7CC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  40 0.92968556408164393;
createNode animCurveTL -n "Ball_Anim_reference_for_TRAX1:walker_lf_knee_pv_ctrl_translateZ";
	rename -uid "652AC23C-4B1E-070D-921A-919A6AB8AA5B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  40 0.55712583814798822;
createNode animCurveTL -n "Ball_Anim_reference_for_TRAX1:walker_rt_heel_ik_ctrl_translateX";
	rename -uid "F9A7BB6F-468F-257B-B99C-2DAAE8B7F240";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  35 0 36 0 37 0 40 0 42 0 45 0 50 0 55 0
		 59 0;
createNode animCurveTL -n "Ball_Anim_reference_for_TRAX1:walker_rt_knee_pv_ctrl_translateX";
	rename -uid "F9807EB4-4BE3-180E-C347-76BBAB807624";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  40 0 50 0 55 0 59 1.7886552606126309;
createNode animCurveTL -n "Ball_Anim_reference_for_TRAX1:walker_rt_knee_pv_ctrl_translateY";
	rename -uid "213D57AE-4B6B-3DFA-B879-62A75634AA55";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  40 0.96985368629851831 50 0.96985368629851831
		 55 0.96985368629851831 59 0.96985368629851831;
createNode animCurveTL -n "Ball_Anim_reference_for_TRAX1:walker_rt_knee_pv_ctrl_translateZ";
	rename -uid "10C93CE7-4343-596F-AF47-DAA34374C85A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  40 0.76515242251658067 50 0.76515242251658067
		 55 0.76515242251658067 59 0.76515242251658067;
createNode animCurveTA -n "Ball_Anim_reference_for_TRAX1:walker_rt_heel_ik_ctrl_rotateX";
	rename -uid "F3C8A84D-4B89-D01F-6D4E-849E2BA28D97";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  35 0 36 -6.822336924708865 37 -19.059226964265722
		 40 -54.145531148482348 42 -48.341135435534426 45 -37.655770600334947 50 -64.537413923191465
		 55 -26.912721306790491 59 0;
createNode animCurveTA -n "Ball_Anim_reference_for_TRAX1:walker_rt_heel_ik_ctrl_rotateY";
	rename -uid "6081AAD9-4747-BF08-6B40-CDAD23C18CC9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  35 0 36 0 37 0 40 0 42 0 45 0 50 0 55 0
		 59 0;
createNode animCurveTA -n "Ball_Anim_reference_for_TRAX1:walker_rt_heel_ik_ctrl_rotateZ";
	rename -uid "7F6B0A11-4D2D-CB0D-8C57-88B4FE79FC54";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  35 0 36 0 37 0 40 0 42 0 45 0 50 0 55 0
		 59 0;
createNode animCurveTU -n "Ball_Anim_reference_for_TRAX1:walker_rt_heel_ik_ctrl_pvControl";
	rename -uid "1ECD4C77-44A4-04CB-0E00-879F16B3CEA4";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  35 1 36 1 37 1 40 1 42 1 45 1 50 1 55 1
		 59 1;
	setAttr -s 9 ".kot[0:8]"  5 5 5 5 5 5 5 5 
		5;
createNode animCurveTU -n "Ball_Anim_reference_for_TRAX1:walker_rt_heel_ik_ctrl_toeRoll";
	rename -uid "1B75B4CB-4B37-053B-852E-D7BEBFED4080";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  35 0 36 0 37 0 40 0 42 0 45 0 50 0 55 0
		 59 0;
createNode animCurveTU -n "Ball_Anim_reference_for_TRAX1:walker_rt_heel_ik_ctrl_legTwist";
	rename -uid "A3FD9C24-4432-46E7-7AE6-B38E3A708062";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  35 0 36 0 37 0 40 0 42 0 45 0 50 0 55 0
		 59 0;
createNode animCurveTU -n "Ball_Anim_reference_for_TRAX1:walker_rt_heel_ik_ctrl_heelTwist";
	rename -uid "9187565A-43B8-59FC-19AE-738D9729F1BD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  35 0 36 0 37 0 40 0 42 0 45 0 50 0 55 0
		 59 0;
createNode animCurveTU -n "Ball_Anim_reference_for_TRAX1:walker_rt_heel_ik_ctrl_ballTwist";
	rename -uid "9BA752E3-4EEA-6C74-567A-5DB317728152";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  35 0 36 0 37 0 40 0 42 0 45 0 50 0 55 0
		 59 0;
createNode animCurveTU -n "Ball_Anim_reference_for_TRAX1:walker_rt_heel_ik_ctrl_toeTwist";
	rename -uid "8AE4631D-48DE-AAC3-2648-C9A1EA2F1902";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  35 0 36 0 37 0 40 0 42 0 45 0 50 0 55 0
		 59 0;
createNode animCurveTA -n "Ball_Anim_reference_for_TRAX1:walker_lf_heel_ik_ctrl_rotateX";
	rename -uid "AF4CDAD6-451C-89B6-3713-3A802AFFAEA1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  35 0 40 -3.0146260120584638 47 -73.247074342108888
		 55 -64.680389777086788 57 -62.699343971425407 59 -61.682050179329046;
createNode animCurveTA -n "Ball_Anim_reference_for_TRAX1:walker_lf_heel_ik_ctrl_rotateY";
	rename -uid "CC7C10EB-49D4-BD88-144E-0A9273C0A162";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  35 0 40 0 47 0 55 0 57 0 59 0;
createNode animCurveTA -n "Ball_Anim_reference_for_TRAX1:walker_lf_heel_ik_ctrl_rotateZ";
	rename -uid "FFEE2B2E-43B5-0742-5F06-A2B33CC8EF59";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  35 0 40 0 47 0 55 0 57 0 59 0;
createNode animCurveTU -n "Ball_Anim_reference_for_TRAX1:walker_lf_heel_ik_ctrl_pvControl";
	rename -uid "9D8BA60E-4361-1095-0C38-4FA4C9C15339";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  35 1 40 1 47 1 55 1 57 1 59 1;
	setAttr -s 6 ".kot[0:5]"  5 5 5 5 5 5;
createNode animCurveTU -n "Ball_Anim_reference_for_TRAX1:walker_lf_heel_ik_ctrl_footRoll";
	rename -uid "573258EF-4B1C-9747-1D48-E2956E9FEC13";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  35 0 40 0 47 0 55 0 57 0 59 0;
createNode animCurveTU -n "Ball_Anim_reference_for_TRAX1:walker_lf_heel_ik_ctrl_footBreak";
	rename -uid "438E185C-4100-E3F9-698A-2784AF39B2D5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  35 0 40 0 47 0 55 0 57 0 59 0;
createNode animCurveTU -n "Ball_Anim_reference_for_TRAX1:walker_lf_heel_ik_ctrl_toeRoll";
	rename -uid "A5A3B4F3-431A-2F54-4F92-D7B383F097E5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  35 0 40 0 47 0 55 0 57 0 59 0;
createNode animCurveTU -n "Ball_Anim_reference_for_TRAX1:walker_lf_heel_ik_ctrl_legTwist";
	rename -uid "84AFD501-455E-49FB-36D9-D1A471689369";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  35 0 40 0 47 0 55 0 57 0 59 0;
createNode animCurveTU -n "Ball_Anim_reference_for_TRAX1:walker_lf_heel_ik_ctrl_heelTwist";
	rename -uid "FDD6DEE7-4C0D-981F-5777-ED9F612BA706";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  35 0 40 0 47 0 55 0 57 0 59 0;
createNode animCurveTU -n "Ball_Anim_reference_for_TRAX1:walker_lf_heel_ik_ctrl_ballTwist";
	rename -uid "DCDBB945-48A3-F92B-32FC-BB88AF07D635";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  35 0 40 0 47 0 55 0 57 0 59 0;
createNode animCurveTU -n "Ball_Anim_reference_for_TRAX1:walker_lf_heel_ik_ctrl_toeTwist";
	rename -uid "3740B663-4F8B-3A54-ABB3-94BF522C06B4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  35 0 40 0 47 0 55 0 57 0 59 0;
createNode animCurveTU -n "Ball_Anim_reference_for_TRAX1:walker_rt_knee_pv_ctrl_rtLegIkCtrl";
	rename -uid "3FBC7E5B-490A-6E60-7F09-B59897C0B51B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  40 0 50 0 55 0 59 0;
createNode animCurveTU -n "Ball_Anim_reference_for_TRAX1:walker_lf_knee_pv_ctrl_lfLegIkCtrl";
	rename -uid "F6AA3FEE-49BC-EB35-B775-648352759276";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  40 0;
createNode animCurveTA -n "Ball_Anim_reference_for_TRAX1:CTRL_Main_rotateX";
	rename -uid "061D0744-45D9-EA77-CDBC-90B2BC061FD8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  35 0 51 41.555853281497605 55 55.660283749937307
		 59 52.309972296796865;
createNode animCurveTA -n "Ball_Anim_reference_for_TRAX1:CTRL_Main_rotateY";
	rename -uid "10A4B834-4D30-E5D2-94FF-CC97E6464645";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  35 0 51 14.755643781014838 55 17.016710823735874
		 59 18.574214134834204;
createNode animCurveTA -n "Ball_Anim_reference_for_TRAX1:CTRL_Main_rotateZ";
	rename -uid "001325CF-4778-D9CC-6644-8084C691F330";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  35 0 51 17.799234749829822 55 20.526683560316549
		 59 22.405447202845348;
createNode reference -n "Ball_Anim_reference_for_TRAX1:sharedReferenceNode";
	rename -uid "170C02A3-448C-35A4-870C-B984F4B2768F";
	setAttr ".ed" -type "dataReferenceEdits" 
		"Ball_Anim_reference_for_TRAX1:sharedReferenceNode";
select -ne :time1;
	setAttr ".o" 50;
	setAttr ".unw" 50;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
	setAttr ".rtfm" 1;
select -ne :renderPartition;
	setAttr -s 34 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 43 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 55 ".u";
select -ne :defaultRenderingList1;
	setAttr -s 14 ".r";
select -ne :lightList1;
	setAttr -s 3 ".l";
select -ne :defaultTextureList1;
	setAttr -s 153 ".tx";
select -ne :standardSurface1;
	setAttr ".bc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
	setAttr ".sr" 0.5;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
	setAttr ".outf" 51;
	setAttr ".imfkey" -type "string" "exr";
	setAttr ".an" yes;
	setAttr ".ef" 60;
	setAttr ".pff" yes;
	setAttr ".peie" 2;
	setAttr ".dss" -type "string" "standardSurface1";
select -ne :defaultResolution;
	setAttr ".w" 1920;
	setAttr ".h" 1080;
	setAttr ".pa" 1;
	setAttr ".dar" 1.7769999504089355;
select -ne :defaultLightSet;
	setAttr -s 3 ".dsm";
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya2022-default/config.ocio";
	setAttr ".vtn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".vn" -type "string" "ACES 1.0 SDR-video";
	setAttr ".dn" -type "string" "sRGB";
	setAttr ".wsn" -type "string" "ACEScg";
	setAttr ".otn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".potn" -type "string" "ACES 1.0 SDR-video (sRGB)";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 3 ".sol";
connectAttr "Robot_Movement:PALbot_MAIN_global_scale.o" "Robot_Movement:PALBotRN.phl[1]"
		;
connectAttr "Robot_Movement:PALbot_MAIN_Mesh_lock.o" "Robot_Movement:PALBotRN.phl[2]"
		;
connectAttr "Robot_Movement:PALbot_MAIN_translateX.o" "Robot_Movement:PALBotRN.phl[3]"
		;
connectAttr "Robot_Movement:PALbot_MAIN_translateY.o" "Robot_Movement:PALBotRN.phl[4]"
		;
connectAttr "Robot_Movement:PALbot_MAIN_translateZ.o" "Robot_Movement:PALBotRN.phl[5]"
		;
connectAttr "Robot_Movement:PALbot_MAIN_rotateX.o" "Robot_Movement:PALBotRN.phl[6]"
		;
connectAttr "Robot_Movement:PALbot_MAIN_rotateY.o" "Robot_Movement:PALBotRN.phl[7]"
		;
connectAttr "Robot_Movement:PALbot_MAIN_rotateZ.o" "Robot_Movement:PALBotRN.phl[8]"
		;
connectAttr "Robot_Movement:PALbot_root_rotateX.o" "Robot_Movement:PALBotRN.phl[9]"
		;
connectAttr "Robot_Movement:PALbot_root_rotateY.o" "Robot_Movement:PALBotRN.phl[10]"
		;
connectAttr "Robot_Movement:PALbot_root_rotateZ.o" "Robot_Movement:PALBotRN.phl[11]"
		;
connectAttr "Robot_Movement:PALbot_root_translateX.o" "Robot_Movement:PALBotRN.phl[12]"
		;
connectAttr "Robot_Movement:PALbot_root_translateY.o" "Robot_Movement:PALBotRN.phl[13]"
		;
connectAttr "Robot_Movement:PALbot_root_translateZ.o" "Robot_Movement:PALBotRN.phl[14]"
		;
connectAttr "Robot_Movement:PALbot_L_knee_aim_ctrl_space_switch.o" "Robot_Movement:PALBotRN.phl[15]"
		;
connectAttr "Robot_Movement:PALbot_L_knee_aim_ctrl_translateX.o" "Robot_Movement:PALBotRN.phl[16]"
		;
connectAttr "Robot_Movement:PALbot_L_knee_aim_ctrl_translateY.o" "Robot_Movement:PALBotRN.phl[17]"
		;
connectAttr "Robot_Movement:PALbot_L_knee_aim_ctrl_translateZ.o" "Robot_Movement:PALBotRN.phl[18]"
		;
connectAttr "Robot_Movement:PALbot_L_knee_aim_ctrl_rotateX.o" "Robot_Movement:PALBotRN.phl[19]"
		;
connectAttr "Robot_Movement:PALbot_L_knee_aim_ctrl_rotateY.o" "Robot_Movement:PALBotRN.phl[20]"
		;
connectAttr "Robot_Movement:PALbot_L_knee_aim_ctrl_rotateZ.o" "Robot_Movement:PALBotRN.phl[21]"
		;
connectAttr "Robot_Movement:PALbot_L_foot_secondary_rotateX.o" "Robot_Movement:PALBotRN.phl[22]"
		;
connectAttr "Robot_Movement:PALbot_L_foot_secondary_rotateY.o" "Robot_Movement:PALBotRN.phl[23]"
		;
connectAttr "Robot_Movement:PALbot_L_foot_secondary_rotateZ.o" "Robot_Movement:PALBotRN.phl[24]"
		;
connectAttr "Robot_Movement:PALbot_L_foot_secondary_translateX.o" "Robot_Movement:PALBotRN.phl[25]"
		;
connectAttr "Robot_Movement:PALbot_L_foot_secondary_translateY.o" "Robot_Movement:PALBotRN.phl[26]"
		;
connectAttr "Robot_Movement:PALbot_L_foot_secondary_translateZ.o" "Robot_Movement:PALBotRN.phl[27]"
		;
connectAttr "Robot_Movement:PALbot_L_footSec_reshape01_translateX.o" "Robot_Movement:PALBotRN.phl[28]"
		;
connectAttr "Robot_Movement:PALbot_L_footSec_reshape01_translateY.o" "Robot_Movement:PALBotRN.phl[29]"
		;
connectAttr "Robot_Movement:PALbot_L_footSec_reshape01_translateZ.o" "Robot_Movement:PALBotRN.phl[30]"
		;
connectAttr "Robot_Movement:PALbot_L_footSec_reshape01_rotateX.o" "Robot_Movement:PALBotRN.phl[31]"
		;
connectAttr "Robot_Movement:PALbot_L_footSec_reshape01_rotateY.o" "Robot_Movement:PALBotRN.phl[32]"
		;
connectAttr "Robot_Movement:PALbot_L_footSec_reshape01_rotateZ.o" "Robot_Movement:PALBotRN.phl[33]"
		;
connectAttr "Robot_Movement:PALbot_L_footSec_reshape02_translateX.o" "Robot_Movement:PALBotRN.phl[34]"
		;
connectAttr "Robot_Movement:PALbot_L_footSec_reshape02_translateY.o" "Robot_Movement:PALBotRN.phl[35]"
		;
connectAttr "Robot_Movement:PALbot_L_footSec_reshape02_translateZ.o" "Robot_Movement:PALBotRN.phl[36]"
		;
connectAttr "Robot_Movement:PALbot_L_footSec_reshape02_rotateX.o" "Robot_Movement:PALBotRN.phl[37]"
		;
connectAttr "Robot_Movement:PALbot_L_footSec_reshape02_rotateY.o" "Robot_Movement:PALBotRN.phl[38]"
		;
connectAttr "Robot_Movement:PALbot_L_footSec_reshape02_rotateZ.o" "Robot_Movement:PALBotRN.phl[39]"
		;
connectAttr "Robot_Movement:PALbot_L_Engine_ctrl_on_off.o" "Robot_Movement:PALBotRN.phl[40]"
		;
connectAttr "Robot_Movement:PALbot_L_Engine_ctrl_translateX.o" "Robot_Movement:PALBotRN.phl[41]"
		;
connectAttr "Robot_Movement:PALbot_L_Engine_ctrl_translateY.o" "Robot_Movement:PALBotRN.phl[42]"
		;
connectAttr "Robot_Movement:PALbot_L_Engine_ctrl_translateZ.o" "Robot_Movement:PALBotRN.phl[43]"
		;
connectAttr "Robot_Movement:PALbot_L_Engine_ctrl_rotateX.o" "Robot_Movement:PALBotRN.phl[44]"
		;
connectAttr "Robot_Movement:PALbot_L_Engine_ctrl_rotateY.o" "Robot_Movement:PALBotRN.phl[45]"
		;
connectAttr "Robot_Movement:PALbot_L_Engine_ctrl_rotateZ.o" "Robot_Movement:PALBotRN.phl[46]"
		;
connectAttr "Robot_Movement:PALbot_L_Engine_ctrl_scaleX.o" "Robot_Movement:PALBotRN.phl[47]"
		;
connectAttr "Robot_Movement:PALbot_L_Engine_ctrl_scaleY.o" "Robot_Movement:PALBotRN.phl[48]"
		;
connectAttr "Robot_Movement:PALbot_L_Engine_ctrl_scaleZ.o" "Robot_Movement:PALBotRN.phl[49]"
		;
connectAttr "Robot_Movement:PALbot_L_IK_Foot_ctrl_Heel_Peel.o" "Robot_Movement:PALBotRN.phl[50]"
		;
connectAttr "Robot_Movement:PALbot_L_IK_Foot_ctrl_follow_hip.o" "Robot_Movement:PALBotRN.phl[51]"
		;
connectAttr "Robot_Movement:PALbot_L_IK_Foot_ctrl_translateX.o" "Robot_Movement:PALBotRN.phl[52]"
		;
connectAttr "Robot_Movement:PALbot_L_IK_Foot_ctrl_translateY.o" "Robot_Movement:PALBotRN.phl[53]"
		;
connectAttr "Robot_Movement:PALbot_L_IK_Foot_ctrl_translateZ.o" "Robot_Movement:PALBotRN.phl[54]"
		;
connectAttr "Robot_Movement:PALbot_L_IK_Foot_ctrl_rotateX.o" "Robot_Movement:PALBotRN.phl[55]"
		;
connectAttr "Robot_Movement:PALbot_L_IK_Foot_ctrl_rotateY.o" "Robot_Movement:PALBotRN.phl[56]"
		;
connectAttr "Robot_Movement:PALbot_L_IK_Foot_ctrl_rotateZ.o" "Robot_Movement:PALBotRN.phl[57]"
		;
connectAttr "Robot_Movement:PALbot_L_IK_heel_lift_tip_rotateX.o" "Robot_Movement:PALBotRN.phl[58]"
		;
connectAttr "Robot_Movement:PALbot_L_IK_heel_lift_tip_rotateY.o" "Robot_Movement:PALBotRN.phl[59]"
		;
connectAttr "Robot_Movement:PALbot_L_IK_heel_lift_tip_rotateZ.o" "Robot_Movement:PALBotRN.phl[60]"
		;
connectAttr "Robot_Movement:PALbot_L_IK_heel_lift_tip_translateX.o" "Robot_Movement:PALBotRN.phl[61]"
		;
connectAttr "Robot_Movement:PALbot_L_IK_heel_lift_tip_translateY.o" "Robot_Movement:PALBotRN.phl[62]"
		;
connectAttr "Robot_Movement:PALbot_L_IK_heel_lift_tip_translateZ.o" "Robot_Movement:PALBotRN.phl[63]"
		;
connectAttr "Robot_Movement:PALbot_L_IK_foot_tip_translateX.o" "Robot_Movement:PALBotRN.phl[64]"
		;
connectAttr "Robot_Movement:PALbot_L_IK_foot_tip_translateY.o" "Robot_Movement:PALBotRN.phl[65]"
		;
connectAttr "Robot_Movement:PALbot_L_IK_foot_tip_translateZ.o" "Robot_Movement:PALBotRN.phl[66]"
		;
connectAttr "Robot_Movement:PALbot_L_IK_foot_tip_rotateX.o" "Robot_Movement:PALBotRN.phl[67]"
		;
connectAttr "Robot_Movement:PALbot_L_IK_foot_tip_rotateY.o" "Robot_Movement:PALBotRN.phl[68]"
		;
connectAttr "Robot_Movement:PALbot_L_IK_foot_tip_rotateZ.o" "Robot_Movement:PALBotRN.phl[69]"
		;
connectAttr "Robot_Movement:PALbot_L_IK_footBall_ctrl_translateX.o" "Robot_Movement:PALBotRN.phl[70]"
		;
connectAttr "Robot_Movement:PALbot_L_IK_footBall_ctrl_translateY.o" "Robot_Movement:PALBotRN.phl[71]"
		;
connectAttr "Robot_Movement:PALbot_L_IK_footBall_ctrl_translateZ.o" "Robot_Movement:PALBotRN.phl[72]"
		;
connectAttr "Robot_Movement:PALbot_L_IK_footBall_ctrl_rotateX.o" "Robot_Movement:PALBotRN.phl[73]"
		;
connectAttr "Robot_Movement:PALbot_L_IK_footBall_ctrl_rotateY.o" "Robot_Movement:PALBotRN.phl[74]"
		;
connectAttr "Robot_Movement:PALbot_L_IK_footBall_ctrl_rotateZ.o" "Robot_Movement:PALBotRN.phl[75]"
		;
connectAttr "Robot_Movement:PALbot_R_HandVIS_Hand_Vis.o" "Robot_Movement:PALBotRN.phl[76]"
		;
connectAttr "Robot_Movement:PALbot_R_HandVIS_canon_light.o" "Robot_Movement:PALBotRN.phl[77]"
		;
connectAttr "Robot_Movement:PALbot_cog_ctrl_secondary_vis.o" "Robot_Movement:PALBotRN.phl[78]"
		;
connectAttr "Robot_Movement:PALbot_cog_ctrl_translateX.o" "Robot_Movement:PALBotRN.phl[79]"
		;
connectAttr "Robot_Movement:PALbot_cog_ctrl_translateY.o" "Robot_Movement:PALBotRN.phl[80]"
		;
connectAttr "Robot_Movement:PALbot_cog_ctrl_translateZ.o" "Robot_Movement:PALBotRN.phl[81]"
		;
connectAttr "Robot_Movement:PALbot_cog_ctrl_rotateX.o" "Robot_Movement:PALBotRN.phl[82]"
		;
connectAttr "Robot_Movement:PALbot_cog_ctrl_rotateY.o" "Robot_Movement:PALBotRN.phl[83]"
		;
connectAttr "Robot_Movement:PALbot_cog_ctrl_rotateZ.o" "Robot_Movement:PALBotRN.phl[84]"
		;
connectAttr "Robot_Movement:PALbot_chestUp_ctrl_secondary_vis.o" "Robot_Movement:PALBotRN.phl[85]"
		;
connectAttr "Robot_Movement:PALbot_chestUp_ctrl_rotateY.o" "Robot_Movement:PALBotRN.phl[86]"
		;
connectAttr "Robot_Movement:PALbot_chestUp_ctrl_rotateX.o" "Robot_Movement:PALBotRN.phl[87]"
		;
connectAttr "Robot_Movement:PALbot_chestUp_ctrl_rotateZ.o" "Robot_Movement:PALBotRN.phl[88]"
		;
connectAttr "Robot_Movement:PALbot_chestUp_ctrl_translateX.o" "Robot_Movement:PALBotRN.phl[89]"
		;
connectAttr "Robot_Movement:PALbot_chestUp_ctrl_translateY.o" "Robot_Movement:PALBotRN.phl[90]"
		;
connectAttr "Robot_Movement:PALbot_chestUp_ctrl_translateZ.o" "Robot_Movement:PALBotRN.phl[91]"
		;
connectAttr "Robot_Movement:PALbot_Neck_ctrl_translateX.o" "Robot_Movement:PALBotRN.phl[92]"
		;
connectAttr "Robot_Movement:PALbot_Neck_ctrl_translateY.o" "Robot_Movement:PALBotRN.phl[93]"
		;
connectAttr "Robot_Movement:PALbot_Neck_ctrl_translateZ.o" "Robot_Movement:PALBotRN.phl[94]"
		;
connectAttr "Robot_Movement:PALbot_Neck_ctrl_rotateX.o" "Robot_Movement:PALBotRN.phl[95]"
		;
connectAttr "Robot_Movement:PALbot_Neck_ctrl_rotateY.o" "Robot_Movement:PALBotRN.phl[96]"
		;
connectAttr "Robot_Movement:PALbot_Neck_ctrl_rotateZ.o" "Robot_Movement:PALBotRN.phl[97]"
		;
connectAttr "Robot_Movement:PALbot_head_ctrl_Space_switch.o" "Robot_Movement:PALBotRN.phl[98]"
		;
connectAttr "Robot_Movement:PALbot_head_ctrl_FaceLight.o" "Robot_Movement:PALBotRN.phl[99]"
		;
connectAttr "Robot_Movement:PALbot_head_ctrl_Led_color.o" "Robot_Movement:PALBotRN.phl[100]"
		;
connectAttr "Robot_Movement:PALbot_head_ctrl_Face_Drawing.o" "Robot_Movement:PALBotRN.phl[101]"
		;
connectAttr "Robot_Movement:PALbot_head_ctrl_rotateY.o" "Robot_Movement:PALBotRN.phl[102]"
		;
connectAttr "Robot_Movement:PALbot_head_ctrl_rotateX.o" "Robot_Movement:PALBotRN.phl[103]"
		;
connectAttr "Robot_Movement:PALbot_head_ctrl_rotateZ.o" "Robot_Movement:PALBotRN.phl[104]"
		;
connectAttr "Robot_Movement:PALbot_head_ctrl_translateX.o" "Robot_Movement:PALBotRN.phl[105]"
		;
connectAttr "Robot_Movement:PALbot_head_ctrl_translateY.o" "Robot_Movement:PALBotRN.phl[106]"
		;
connectAttr "Robot_Movement:PALbot_head_ctrl_translateZ.o" "Robot_Movement:PALBotRN.phl[107]"
		;
connectAttr "Robot_Movement:PALbot_R_Clavicle_ctrl_translateX.o" "Robot_Movement:PALBotRN.phl[108]"
		;
connectAttr "Robot_Movement:PALbot_R_Clavicle_ctrl_translateY.o" "Robot_Movement:PALBotRN.phl[109]"
		;
connectAttr "Robot_Movement:PALbot_R_Clavicle_ctrl_translateZ.o" "Robot_Movement:PALBotRN.phl[110]"
		;
connectAttr "Robot_Movement:PALbot_R_Clavicle_ctrl_rotateX.o" "Robot_Movement:PALBotRN.phl[111]"
		;
connectAttr "Robot_Movement:PALbot_R_Clavicle_ctrl_rotateY.o" "Robot_Movement:PALBotRN.phl[112]"
		;
connectAttr "Robot_Movement:PALbot_R_Clavicle_ctrl_rotateZ.o" "Robot_Movement:PALBotRN.phl[113]"
		;
connectAttr "Robot_Movement:PALbot_L_ShoulderRotate_ctrl_rotateZ1.o" "Robot_Movement:PALBotRN.phl[114]"
		;
connectAttr "Robot_Movement:PALbot_L_ShoulderRotate_ctrl_translateX1.o" "Robot_Movement:PALBotRN.phl[115]"
		;
connectAttr "Robot_Movement:PALbot_L_ShoulderRotate_ctrl_translateY1.o" "Robot_Movement:PALBotRN.phl[116]"
		;
connectAttr "Robot_Movement:PALbot_L_ShoulderRotate_ctrl_translateZ1.o" "Robot_Movement:PALBotRN.phl[117]"
		;
connectAttr "Robot_Movement:PALbot_L_Arm_ctrl_rotateZ.o" "Robot_Movement:PALBotRN.phl[118]"
		;
connectAttr "Robot_Movement:PALbot_L_Arm_ctrl_rotateY.o" "Robot_Movement:PALBotRN.phl[119]"
		;
connectAttr "Robot_Movement:PALbot_L_Arm_ctrl_translateX.o" "Robot_Movement:PALBotRN.phl[120]"
		;
connectAttr "Robot_Movement:PALbot_L_Arm_ctrl_translateY.o" "Robot_Movement:PALBotRN.phl[121]"
		;
connectAttr "Robot_Movement:PALbot_L_Arm_ctrl_translateZ.o" "Robot_Movement:PALBotRN.phl[122]"
		;
connectAttr "Robot_Movement:PALbot_R_FK_Elbow_ctrl_rotateX.o" "Robot_Movement:PALBotRN.phl[123]"
		;
connectAttr "Robot_Movement:PALbot_R_FK_Elbow_ctrl_translateX.o" "Robot_Movement:PALBotRN.phl[124]"
		;
connectAttr "Robot_Movement:PALbot_R_FK_Elbow_ctrl_translateY.o" "Robot_Movement:PALBotRN.phl[125]"
		;
connectAttr "Robot_Movement:PALbot_R_FK_Elbow_ctrl_translateZ.o" "Robot_Movement:PALBotRN.phl[126]"
		;
connectAttr "Robot_Movement:PALbot_R_FK_Wrist_ctrl_translateX.o" "Robot_Movement:PALBotRN.phl[127]"
		;
connectAttr "Robot_Movement:PALbot_R_FK_Wrist_ctrl_translateY.o" "Robot_Movement:PALBotRN.phl[128]"
		;
connectAttr "Robot_Movement:PALbot_R_FK_Wrist_ctrl_translateZ.o" "Robot_Movement:PALBotRN.phl[129]"
		;
connectAttr "Robot_Movement:PALbot_R_FK_Wrist_ctrl_rotateX.o" "Robot_Movement:PALBotRN.phl[130]"
		;
connectAttr "Robot_Movement:PALbot_R_FK_Wrist_ctrl_rotateY.o" "Robot_Movement:PALBotRN.phl[131]"
		;
connectAttr "Robot_Movement:PALbot_R_FK_Wrist_ctrl_rotateZ.o" "Robot_Movement:PALBotRN.phl[132]"
		;
connectAttr "Robot_Movement:PALbot_R_arm_IK_FK_switch_IK_FK.o" "Robot_Movement:PALBotRN.phl[133]"
		;
connectAttr "Robot_Movement:PALbot_L_Clavicle_ctrl_translateX.o" "Robot_Movement:PALBotRN.phl[134]"
		;
connectAttr "Robot_Movement:PALbot_L_Clavicle_ctrl_translateY.o" "Robot_Movement:PALBotRN.phl[135]"
		;
connectAttr "Robot_Movement:PALbot_L_Clavicle_ctrl_translateZ.o" "Robot_Movement:PALBotRN.phl[136]"
		;
connectAttr "Robot_Movement:PALbot_L_Clavicle_ctrl_rotateX.o" "Robot_Movement:PALBotRN.phl[137]"
		;
connectAttr "Robot_Movement:PALbot_L_Clavicle_ctrl_rotateY.o" "Robot_Movement:PALBotRN.phl[138]"
		;
connectAttr "Robot_Movement:PALbot_L_Clavicle_ctrl_rotateZ.o" "Robot_Movement:PALBotRN.phl[139]"
		;
connectAttr "Robot_Movement:PALbot_L_ShoulderRotate_ctrl_rotateZ.o" "Robot_Movement:PALBotRN.phl[140]"
		;
connectAttr "Robot_Movement:PALbot_L_ShoulderRotate_ctrl_translateX.o" "Robot_Movement:PALBotRN.phl[141]"
		;
connectAttr "Robot_Movement:PALbot_L_ShoulderRotate_ctrl_translateY.o" "Robot_Movement:PALBotRN.phl[142]"
		;
connectAttr "Robot_Movement:PALbot_L_ShoulderRotate_ctrl_translateZ.o" "Robot_Movement:PALBotRN.phl[143]"
		;
connectAttr "Robot_Movement:PALbot_L_Arm_ctrl_rotateZ1.o" "Robot_Movement:PALBotRN.phl[144]"
		;
connectAttr "Robot_Movement:PALbot_L_Arm_ctrl_rotateY1.o" "Robot_Movement:PALBotRN.phl[145]"
		;
connectAttr "Robot_Movement:PALbot_L_Arm_ctrl_translateX1.o" "Robot_Movement:PALBotRN.phl[146]"
		;
connectAttr "Robot_Movement:PALbot_L_Arm_ctrl_translateY1.o" "Robot_Movement:PALBotRN.phl[147]"
		;
connectAttr "Robot_Movement:PALbot_L_Arm_ctrl_translateZ1.o" "Robot_Movement:PALBotRN.phl[148]"
		;
connectAttr "Robot_Movement:PALbot_L_FK_Elbow_ctrl_rotateX.o" "Robot_Movement:PALBotRN.phl[149]"
		;
connectAttr "Robot_Movement:PALbot_L_FK_Elbow_ctrl_translateX.o" "Robot_Movement:PALBotRN.phl[150]"
		;
connectAttr "Robot_Movement:PALbot_L_FK_Elbow_ctrl_translateY.o" "Robot_Movement:PALBotRN.phl[151]"
		;
connectAttr "Robot_Movement:PALbot_L_FK_Elbow_ctrl_translateZ.o" "Robot_Movement:PALBotRN.phl[152]"
		;
connectAttr "Robot_Movement:PALbot_L_FK_Wrist_ctrl_translateX.o" "Robot_Movement:PALBotRN.phl[153]"
		;
connectAttr "Robot_Movement:PALbot_L_FK_Wrist_ctrl_translateY.o" "Robot_Movement:PALBotRN.phl[154]"
		;
connectAttr "Robot_Movement:PALbot_L_FK_Wrist_ctrl_translateZ.o" "Robot_Movement:PALBotRN.phl[155]"
		;
connectAttr "Robot_Movement:PALbot_L_FK_Wrist_ctrl_rotateX.o" "Robot_Movement:PALBotRN.phl[156]"
		;
connectAttr "Robot_Movement:PALbot_L_FK_Wrist_ctrl_rotateY.o" "Robot_Movement:PALBotRN.phl[157]"
		;
connectAttr "Robot_Movement:PALbot_L_FK_Wrist_ctrl_rotateZ.o" "Robot_Movement:PALBotRN.phl[158]"
		;
connectAttr "Robot_Movement:PALbot_L_arm_IK_FK_switch_IK_FK.o" "Robot_Movement:PALBotRN.phl[159]"
		;
connectAttr "Robot_Movement:PALbot_hipMain_ctrl_translateX.o" "Robot_Movement:PALBotRN.phl[160]"
		;
connectAttr "Robot_Movement:PALbot_hipMain_ctrl_translateY.o" "Robot_Movement:PALBotRN.phl[161]"
		;
connectAttr "Robot_Movement:PALbot_hipMain_ctrl_translateZ.o" "Robot_Movement:PALBotRN.phl[162]"
		;
connectAttr "Robot_Movement:PALbot_hipMain_ctrl_rotateX.o" "Robot_Movement:PALBotRN.phl[163]"
		;
connectAttr "Robot_Movement:PALbot_hipMain_ctrl_rotateY.o" "Robot_Movement:PALBotRN.phl[164]"
		;
connectAttr "Robot_Movement:PALbot_hipMain_ctrl_rotateZ.o" "Robot_Movement:PALBotRN.phl[165]"
		;
connectAttr "Robot_Movement:PALbot_R_hip_translateX.o" "Robot_Movement:PALBotRN.phl[166]"
		;
connectAttr "Robot_Movement:PALbot_R_hip_translateY.o" "Robot_Movement:PALBotRN.phl[167]"
		;
connectAttr "Robot_Movement:PALbot_R_hip_translateZ.o" "Robot_Movement:PALBotRN.phl[168]"
		;
connectAttr "Robot_Movement:PALbot_R_hip_rotateX.o" "Robot_Movement:PALBotRN.phl[169]"
		;
connectAttr "Robot_Movement:PALbot_R_hip_rotateY.o" "Robot_Movement:PALBotRN.phl[170]"
		;
connectAttr "Robot_Movement:PALbot_R_hip_rotateZ.o" "Robot_Movement:PALBotRN.phl[171]"
		;
connectAttr "Robot_Movement:PALbot_R_leg_IK_FK_switch_IK_FK.o" "Robot_Movement:PALBotRN.phl[172]"
		;
connectAttr "Robot_Movement:PALbot_L_hip_translateX.o" "Robot_Movement:PALBotRN.phl[173]"
		;
connectAttr "Robot_Movement:PALbot_L_hip_translateY.o" "Robot_Movement:PALBotRN.phl[174]"
		;
connectAttr "Robot_Movement:PALbot_L_hip_translateZ.o" "Robot_Movement:PALBotRN.phl[175]"
		;
connectAttr "Robot_Movement:PALbot_L_hip_rotateX.o" "Robot_Movement:PALBotRN.phl[176]"
		;
connectAttr "Robot_Movement:PALbot_L_hip_rotateY.o" "Robot_Movement:PALBotRN.phl[177]"
		;
connectAttr "Robot_Movement:PALbot_L_hip_rotateZ.o" "Robot_Movement:PALBotRN.phl[178]"
		;
connectAttr "Robot_Movement:PALbot_L_leg_IK_FK_switch_IK_FK.o" "Robot_Movement:PALBotRN.phl[179]"
		;
connectAttr "Robot_Movement:PALbot_L_Thumb01_ctrl_translateX.o" "Robot_Movement:PALBotRN.phl[180]"
		;
connectAttr "Robot_Movement:PALbot_L_Thumb01_ctrl_translateY.o" "Robot_Movement:PALBotRN.phl[181]"
		;
connectAttr "Robot_Movement:PALbot_L_Thumb01_ctrl_translateZ.o" "Robot_Movement:PALBotRN.phl[182]"
		;
connectAttr "Robot_Movement:PALbot_L_Thumb01_ctrl_rotateX.o" "Robot_Movement:PALBotRN.phl[183]"
		;
connectAttr "Robot_Movement:PALbot_L_Thumb01_ctrl_rotateY.o" "Robot_Movement:PALBotRN.phl[184]"
		;
connectAttr "Robot_Movement:PALbot_L_Thumb01_ctrl_rotateZ.o" "Robot_Movement:PALBotRN.phl[185]"
		;
connectAttr "Robot_Movement:PALbot_L_Thumb02_ctrl_translateX.o" "Robot_Movement:PALBotRN.phl[186]"
		;
connectAttr "Robot_Movement:PALbot_L_Thumb02_ctrl_translateY.o" "Robot_Movement:PALBotRN.phl[187]"
		;
connectAttr "Robot_Movement:PALbot_L_Thumb02_ctrl_translateZ.o" "Robot_Movement:PALBotRN.phl[188]"
		;
connectAttr "Robot_Movement:PALbot_L_Thumb02_ctrl_rotateX.o" "Robot_Movement:PALBotRN.phl[189]"
		;
connectAttr "Robot_Movement:PALbot_L_Thumb02_ctrl_rotateY.o" "Robot_Movement:PALBotRN.phl[190]"
		;
connectAttr "Robot_Movement:PALbot_L_Thumb02_ctrl_rotateZ.o" "Robot_Movement:PALBotRN.phl[191]"
		;
connectAttr "Robot_Movement:PALbot_L_Thumb03_ctrl_translateX.o" "Robot_Movement:PALBotRN.phl[192]"
		;
connectAttr "Robot_Movement:PALbot_L_Thumb03_ctrl_translateY.o" "Robot_Movement:PALBotRN.phl[193]"
		;
connectAttr "Robot_Movement:PALbot_L_Thumb03_ctrl_translateZ.o" "Robot_Movement:PALBotRN.phl[194]"
		;
connectAttr "Robot_Movement:PALbot_L_Thumb03_ctrl_rotateX.o" "Robot_Movement:PALBotRN.phl[195]"
		;
connectAttr "Robot_Movement:PALbot_L_Thumb03_ctrl_rotateY.o" "Robot_Movement:PALBotRN.phl[196]"
		;
connectAttr "Robot_Movement:PALbot_L_Thumb03_ctrl_rotateZ.o" "Robot_Movement:PALBotRN.phl[197]"
		;
connectAttr "Robot_Movement:PALbot_L_Index01_ctrl_translateX.o" "Robot_Movement:PALBotRN.phl[198]"
		;
connectAttr "Robot_Movement:PALbot_L_Index01_ctrl_translateY.o" "Robot_Movement:PALBotRN.phl[199]"
		;
connectAttr "Robot_Movement:PALbot_L_Index01_ctrl_translateZ.o" "Robot_Movement:PALBotRN.phl[200]"
		;
connectAttr "Robot_Movement:PALbot_L_Index01_ctrl_rotateX.o" "Robot_Movement:PALBotRN.phl[201]"
		;
connectAttr "Robot_Movement:PALbot_L_Index01_ctrl_rotateY.o" "Robot_Movement:PALBotRN.phl[202]"
		;
connectAttr "Robot_Movement:PALbot_L_Index01_ctrl_rotateZ.o" "Robot_Movement:PALBotRN.phl[203]"
		;
connectAttr "Robot_Movement:PALbot_L_Index02_ctrl_translateX.o" "Robot_Movement:PALBotRN.phl[204]"
		;
connectAttr "Robot_Movement:PALbot_L_Index02_ctrl_translateY.o" "Robot_Movement:PALBotRN.phl[205]"
		;
connectAttr "Robot_Movement:PALbot_L_Index02_ctrl_translateZ.o" "Robot_Movement:PALBotRN.phl[206]"
		;
connectAttr "Robot_Movement:PALbot_L_Index02_ctrl_rotateX.o" "Robot_Movement:PALBotRN.phl[207]"
		;
connectAttr "Robot_Movement:PALbot_L_Index02_ctrl_rotateY.o" "Robot_Movement:PALBotRN.phl[208]"
		;
connectAttr "Robot_Movement:PALbot_L_Index02_ctrl_rotateZ.o" "Robot_Movement:PALBotRN.phl[209]"
		;
connectAttr "Robot_Movement:PALbot_L_Middle01_ctrl_translateX.o" "Robot_Movement:PALBotRN.phl[210]"
		;
connectAttr "Robot_Movement:PALbot_L_Middle01_ctrl_translateY.o" "Robot_Movement:PALBotRN.phl[211]"
		;
connectAttr "Robot_Movement:PALbot_L_Middle01_ctrl_translateZ.o" "Robot_Movement:PALBotRN.phl[212]"
		;
connectAttr "Robot_Movement:PALbot_L_Middle01_ctrl_rotateX.o" "Robot_Movement:PALBotRN.phl[213]"
		;
connectAttr "Robot_Movement:PALbot_L_Middle01_ctrl_rotateY.o" "Robot_Movement:PALBotRN.phl[214]"
		;
connectAttr "Robot_Movement:PALbot_L_Middle01_ctrl_rotateZ.o" "Robot_Movement:PALBotRN.phl[215]"
		;
connectAttr "Robot_Movement:PALbot_L_Middle02_ctrl_translateX.o" "Robot_Movement:PALBotRN.phl[216]"
		;
connectAttr "Robot_Movement:PALbot_L_Middle02_ctrl_translateY.o" "Robot_Movement:PALBotRN.phl[217]"
		;
connectAttr "Robot_Movement:PALbot_L_Middle02_ctrl_translateZ.o" "Robot_Movement:PALBotRN.phl[218]"
		;
connectAttr "Robot_Movement:PALbot_L_Middle02_ctrl_rotateX.o" "Robot_Movement:PALBotRN.phl[219]"
		;
connectAttr "Robot_Movement:PALbot_L_Middle02_ctrl_rotateY.o" "Robot_Movement:PALBotRN.phl[220]"
		;
connectAttr "Robot_Movement:PALbot_L_Middle02_ctrl_rotateZ.o" "Robot_Movement:PALBotRN.phl[221]"
		;
connectAttr "Robot_Movement:PALbot_L_Ring01_ctrl_translateX.o" "Robot_Movement:PALBotRN.phl[222]"
		;
connectAttr "Robot_Movement:PALbot_L_Ring01_ctrl_translateY.o" "Robot_Movement:PALBotRN.phl[223]"
		;
connectAttr "Robot_Movement:PALbot_L_Ring01_ctrl_translateZ.o" "Robot_Movement:PALBotRN.phl[224]"
		;
connectAttr "Robot_Movement:PALbot_L_Ring01_ctrl_rotateX.o" "Robot_Movement:PALBotRN.phl[225]"
		;
connectAttr "Robot_Movement:PALbot_L_Ring01_ctrl_rotateY.o" "Robot_Movement:PALBotRN.phl[226]"
		;
connectAttr "Robot_Movement:PALbot_L_Ring01_ctrl_rotateZ.o" "Robot_Movement:PALBotRN.phl[227]"
		;
connectAttr "Robot_Movement:PALbot_L_Ring02_ctrl_translateX.o" "Robot_Movement:PALBotRN.phl[228]"
		;
connectAttr "Robot_Movement:PALbot_L_Ring02_ctrl_translateY.o" "Robot_Movement:PALBotRN.phl[229]"
		;
connectAttr "Robot_Movement:PALbot_L_Ring02_ctrl_translateZ.o" "Robot_Movement:PALBotRN.phl[230]"
		;
connectAttr "Robot_Movement:PALbot_L_Ring02_ctrl_rotateX.o" "Robot_Movement:PALBotRN.phl[231]"
		;
connectAttr "Robot_Movement:PALbot_L_Ring02_ctrl_rotateY.o" "Robot_Movement:PALBotRN.phl[232]"
		;
connectAttr "Robot_Movement:PALbot_L_Ring02_ctrl_rotateZ.o" "Robot_Movement:PALBotRN.phl[233]"
		;
connectAttr "Robot_Movement:PALbot_L_Pinky01_ctrl_translateX.o" "Robot_Movement:PALBotRN.phl[234]"
		;
connectAttr "Robot_Movement:PALbot_L_Pinky01_ctrl_translateY.o" "Robot_Movement:PALBotRN.phl[235]"
		;
connectAttr "Robot_Movement:PALbot_L_Pinky01_ctrl_translateZ.o" "Robot_Movement:PALBotRN.phl[236]"
		;
connectAttr "Robot_Movement:PALbot_L_Pinky01_ctrl_rotateX.o" "Robot_Movement:PALBotRN.phl[237]"
		;
connectAttr "Robot_Movement:PALbot_L_Pinky01_ctrl_rotateY.o" "Robot_Movement:PALBotRN.phl[238]"
		;
connectAttr "Robot_Movement:PALbot_L_Pinky01_ctrl_rotateZ.o" "Robot_Movement:PALBotRN.phl[239]"
		;
connectAttr "Robot_Movement:PALbot_L_Pinky02_ctrl_translateX.o" "Robot_Movement:PALBotRN.phl[240]"
		;
connectAttr "Robot_Movement:PALbot_L_Pinky02_ctrl_translateY.o" "Robot_Movement:PALBotRN.phl[241]"
		;
connectAttr "Robot_Movement:PALbot_L_Pinky02_ctrl_translateZ.o" "Robot_Movement:PALBotRN.phl[242]"
		;
connectAttr "Robot_Movement:PALbot_L_Pinky02_ctrl_rotateX.o" "Robot_Movement:PALBotRN.phl[243]"
		;
connectAttr "Robot_Movement:PALbot_L_Pinky02_ctrl_rotateY.o" "Robot_Movement:PALBotRN.phl[244]"
		;
connectAttr "Robot_Movement:PALbot_L_Pinky02_ctrl_rotateZ.o" "Robot_Movement:PALBotRN.phl[245]"
		;
connectAttr "Robot_Movement:PALbot_R_Thumb01_ctrl_translateX.o" "Robot_Movement:PALBotRN.phl[246]"
		;
connectAttr "Robot_Movement:PALbot_R_Thumb01_ctrl_translateY.o" "Robot_Movement:PALBotRN.phl[247]"
		;
connectAttr "Robot_Movement:PALbot_R_Thumb01_ctrl_translateZ.o" "Robot_Movement:PALBotRN.phl[248]"
		;
connectAttr "Robot_Movement:PALbot_R_Thumb01_ctrl_rotateX.o" "Robot_Movement:PALBotRN.phl[249]"
		;
connectAttr "Robot_Movement:PALbot_R_Thumb01_ctrl_rotateY.o" "Robot_Movement:PALBotRN.phl[250]"
		;
connectAttr "Robot_Movement:PALbot_R_Thumb01_ctrl_rotateZ.o" "Robot_Movement:PALBotRN.phl[251]"
		;
connectAttr "Robot_Movement:PALbot_R_Thumb02_ctrl_translateX.o" "Robot_Movement:PALBotRN.phl[252]"
		;
connectAttr "Robot_Movement:PALbot_R_Thumb02_ctrl_translateY.o" "Robot_Movement:PALBotRN.phl[253]"
		;
connectAttr "Robot_Movement:PALbot_R_Thumb02_ctrl_translateZ.o" "Robot_Movement:PALBotRN.phl[254]"
		;
connectAttr "Robot_Movement:PALbot_R_Thumb02_ctrl_rotateX.o" "Robot_Movement:PALBotRN.phl[255]"
		;
connectAttr "Robot_Movement:PALbot_R_Thumb02_ctrl_rotateY.o" "Robot_Movement:PALBotRN.phl[256]"
		;
connectAttr "Robot_Movement:PALbot_R_Thumb02_ctrl_rotateZ.o" "Robot_Movement:PALBotRN.phl[257]"
		;
connectAttr "Robot_Movement:PALbot_R_Thumb03_ctrl_translateX.o" "Robot_Movement:PALBotRN.phl[258]"
		;
connectAttr "Robot_Movement:PALbot_R_Thumb03_ctrl_translateY.o" "Robot_Movement:PALBotRN.phl[259]"
		;
connectAttr "Robot_Movement:PALbot_R_Thumb03_ctrl_translateZ.o" "Robot_Movement:PALBotRN.phl[260]"
		;
connectAttr "Robot_Movement:PALbot_R_Thumb03_ctrl_rotateX.o" "Robot_Movement:PALBotRN.phl[261]"
		;
connectAttr "Robot_Movement:PALbot_R_Thumb03_ctrl_rotateY.o" "Robot_Movement:PALBotRN.phl[262]"
		;
connectAttr "Robot_Movement:PALbot_R_Thumb03_ctrl_rotateZ.o" "Robot_Movement:PALBotRN.phl[263]"
		;
connectAttr "Robot_Movement:PALbot_R_Index01_ctrl_translateX.o" "Robot_Movement:PALBotRN.phl[264]"
		;
connectAttr "Robot_Movement:PALbot_R_Index01_ctrl_translateY.o" "Robot_Movement:PALBotRN.phl[265]"
		;
connectAttr "Robot_Movement:PALbot_R_Index01_ctrl_translateZ.o" "Robot_Movement:PALBotRN.phl[266]"
		;
connectAttr "Robot_Movement:PALbot_R_Index01_ctrl_rotateX.o" "Robot_Movement:PALBotRN.phl[267]"
		;
connectAttr "Robot_Movement:PALbot_R_Index01_ctrl_rotateY.o" "Robot_Movement:PALBotRN.phl[268]"
		;
connectAttr "Robot_Movement:PALbot_R_Index01_ctrl_rotateZ.o" "Robot_Movement:PALBotRN.phl[269]"
		;
connectAttr "Robot_Movement:PALbot_R_Index02_ctrl_translateX.o" "Robot_Movement:PALBotRN.phl[270]"
		;
connectAttr "Robot_Movement:PALbot_R_Index02_ctrl_translateY.o" "Robot_Movement:PALBotRN.phl[271]"
		;
connectAttr "Robot_Movement:PALbot_R_Index02_ctrl_translateZ.o" "Robot_Movement:PALBotRN.phl[272]"
		;
connectAttr "Robot_Movement:PALbot_R_Index02_ctrl_rotateX.o" "Robot_Movement:PALBotRN.phl[273]"
		;
connectAttr "Robot_Movement:PALbot_R_Index02_ctrl_rotateY.o" "Robot_Movement:PALBotRN.phl[274]"
		;
connectAttr "Robot_Movement:PALbot_R_Index02_ctrl_rotateZ.o" "Robot_Movement:PALBotRN.phl[275]"
		;
connectAttr "Robot_Movement:PALbot_R_Middle01_ctrl_translateX.o" "Robot_Movement:PALBotRN.phl[276]"
		;
connectAttr "Robot_Movement:PALbot_R_Middle01_ctrl_translateY.o" "Robot_Movement:PALBotRN.phl[277]"
		;
connectAttr "Robot_Movement:PALbot_R_Middle01_ctrl_translateZ.o" "Robot_Movement:PALBotRN.phl[278]"
		;
connectAttr "Robot_Movement:PALbot_R_Middle01_ctrl_rotateX.o" "Robot_Movement:PALBotRN.phl[279]"
		;
connectAttr "Robot_Movement:PALbot_R_Middle01_ctrl_rotateY.o" "Robot_Movement:PALBotRN.phl[280]"
		;
connectAttr "Robot_Movement:PALbot_R_Middle01_ctrl_rotateZ.o" "Robot_Movement:PALBotRN.phl[281]"
		;
connectAttr "Robot_Movement:PALbot_R_Middle02_ctrl_translateX.o" "Robot_Movement:PALBotRN.phl[282]"
		;
connectAttr "Robot_Movement:PALbot_R_Middle02_ctrl_translateY.o" "Robot_Movement:PALBotRN.phl[283]"
		;
connectAttr "Robot_Movement:PALbot_R_Middle02_ctrl_translateZ.o" "Robot_Movement:PALBotRN.phl[284]"
		;
connectAttr "Robot_Movement:PALbot_R_Middle02_ctrl_rotateX.o" "Robot_Movement:PALBotRN.phl[285]"
		;
connectAttr "Robot_Movement:PALbot_R_Middle02_ctrl_rotateY.o" "Robot_Movement:PALBotRN.phl[286]"
		;
connectAttr "Robot_Movement:PALbot_R_Middle02_ctrl_rotateZ.o" "Robot_Movement:PALBotRN.phl[287]"
		;
connectAttr "Robot_Movement:PALbot_R_Ring01_ctrl_translateX.o" "Robot_Movement:PALBotRN.phl[288]"
		;
connectAttr "Robot_Movement:PALbot_R_Ring01_ctrl_translateY.o" "Robot_Movement:PALBotRN.phl[289]"
		;
connectAttr "Robot_Movement:PALbot_R_Ring01_ctrl_translateZ.o" "Robot_Movement:PALBotRN.phl[290]"
		;
connectAttr "Robot_Movement:PALbot_R_Ring01_ctrl_rotateX.o" "Robot_Movement:PALBotRN.phl[291]"
		;
connectAttr "Robot_Movement:PALbot_R_Ring01_ctrl_rotateY.o" "Robot_Movement:PALBotRN.phl[292]"
		;
connectAttr "Robot_Movement:PALbot_R_Ring01_ctrl_rotateZ.o" "Robot_Movement:PALBotRN.phl[293]"
		;
connectAttr "Robot_Movement:PALbot_R_Ring02_ctrl_translateX.o" "Robot_Movement:PALBotRN.phl[294]"
		;
connectAttr "Robot_Movement:PALbot_R_Ring02_ctrl_translateY.o" "Robot_Movement:PALBotRN.phl[295]"
		;
connectAttr "Robot_Movement:PALbot_R_Ring02_ctrl_translateZ.o" "Robot_Movement:PALBotRN.phl[296]"
		;
connectAttr "Robot_Movement:PALbot_R_Ring02_ctrl_rotateX.o" "Robot_Movement:PALBotRN.phl[297]"
		;
connectAttr "Robot_Movement:PALbot_R_Ring02_ctrl_rotateY.o" "Robot_Movement:PALBotRN.phl[298]"
		;
connectAttr "Robot_Movement:PALbot_R_Ring02_ctrl_rotateZ.o" "Robot_Movement:PALBotRN.phl[299]"
		;
connectAttr "Robot_Movement:PALbot_R_Pinky01_ctrl_translateX.o" "Robot_Movement:PALBotRN.phl[300]"
		;
connectAttr "Robot_Movement:PALbot_R_Pinky01_ctrl_translateY.o" "Robot_Movement:PALBotRN.phl[301]"
		;
connectAttr "Robot_Movement:PALbot_R_Pinky01_ctrl_translateZ.o" "Robot_Movement:PALBotRN.phl[302]"
		;
connectAttr "Robot_Movement:PALbot_R_Pinky01_ctrl_rotateX.o" "Robot_Movement:PALBotRN.phl[303]"
		;
connectAttr "Robot_Movement:PALbot_R_Pinky01_ctrl_rotateY.o" "Robot_Movement:PALBotRN.phl[304]"
		;
connectAttr "Robot_Movement:PALbot_R_Pinky01_ctrl_rotateZ.o" "Robot_Movement:PALBotRN.phl[305]"
		;
connectAttr "Robot_Movement:PALbot_R_Pinky02_ctrl_translateX.o" "Robot_Movement:PALBotRN.phl[306]"
		;
connectAttr "Robot_Movement:PALbot_R_Pinky02_ctrl_translateY.o" "Robot_Movement:PALBotRN.phl[307]"
		;
connectAttr "Robot_Movement:PALbot_R_Pinky02_ctrl_translateZ.o" "Robot_Movement:PALBotRN.phl[308]"
		;
connectAttr "Robot_Movement:PALbot_R_Pinky02_ctrl_rotateX.o" "Robot_Movement:PALBotRN.phl[309]"
		;
connectAttr "Robot_Movement:PALbot_R_Pinky02_ctrl_rotateY.o" "Robot_Movement:PALBotRN.phl[310]"
		;
connectAttr "Robot_Movement:PALbot_R_Pinky02_ctrl_rotateZ.o" "Robot_Movement:PALBotRN.phl[311]"
		;
connectAttr "Robot_Movement:PALbot_R_knee_aim_ctrl_space_switch.o" "Robot_Movement:PALBotRN.phl[312]"
		;
connectAttr "Robot_Movement:PALbot_R_knee_aim_ctrl_translateX.o" "Robot_Movement:PALBotRN.phl[313]"
		;
connectAttr "Robot_Movement:PALbot_R_knee_aim_ctrl_translateY.o" "Robot_Movement:PALBotRN.phl[314]"
		;
connectAttr "Robot_Movement:PALbot_R_knee_aim_ctrl_translateZ.o" "Robot_Movement:PALBotRN.phl[315]"
		;
connectAttr "Robot_Movement:PALbot_R_knee_aim_ctrl_rotateX.o" "Robot_Movement:PALBotRN.phl[316]"
		;
connectAttr "Robot_Movement:PALbot_R_knee_aim_ctrl_rotateY.o" "Robot_Movement:PALBotRN.phl[317]"
		;
connectAttr "Robot_Movement:PALbot_R_knee_aim_ctrl_rotateZ.o" "Robot_Movement:PALBotRN.phl[318]"
		;
connectAttr "Robot_Movement:PALbot_R_foot_secondary_rotateX.o" "Robot_Movement:PALBotRN.phl[319]"
		;
connectAttr "Robot_Movement:PALbot_R_foot_secondary_rotateY.o" "Robot_Movement:PALBotRN.phl[320]"
		;
connectAttr "Robot_Movement:PALbot_R_foot_secondary_rotateZ.o" "Robot_Movement:PALBotRN.phl[321]"
		;
connectAttr "Robot_Movement:PALbot_R_foot_secondary_translateX.o" "Robot_Movement:PALBotRN.phl[322]"
		;
connectAttr "Robot_Movement:PALbot_R_foot_secondary_translateY.o" "Robot_Movement:PALBotRN.phl[323]"
		;
connectAttr "Robot_Movement:PALbot_R_foot_secondary_translateZ.o" "Robot_Movement:PALBotRN.phl[324]"
		;
connectAttr "Robot_Movement:PALbot_R_footSec_reshape01_translateX.o" "Robot_Movement:PALBotRN.phl[325]"
		;
connectAttr "Robot_Movement:PALbot_R_footSec_reshape01_translateY.o" "Robot_Movement:PALBotRN.phl[326]"
		;
connectAttr "Robot_Movement:PALbot_R_footSec_reshape01_translateZ.o" "Robot_Movement:PALBotRN.phl[327]"
		;
connectAttr "Robot_Movement:PALbot_R_footSec_reshape01_rotateX.o" "Robot_Movement:PALBotRN.phl[328]"
		;
connectAttr "Robot_Movement:PALbot_R_footSec_reshape01_rotateY.o" "Robot_Movement:PALBotRN.phl[329]"
		;
connectAttr "Robot_Movement:PALbot_R_footSec_reshape01_rotateZ.o" "Robot_Movement:PALBotRN.phl[330]"
		;
connectAttr "Robot_Movement:PALbot_R_footSec_reshape02_translateX.o" "Robot_Movement:PALBotRN.phl[331]"
		;
connectAttr "Robot_Movement:PALbot_R_footSec_reshape02_translateY.o" "Robot_Movement:PALBotRN.phl[332]"
		;
connectAttr "Robot_Movement:PALbot_R_footSec_reshape02_translateZ.o" "Robot_Movement:PALBotRN.phl[333]"
		;
connectAttr "Robot_Movement:PALbot_R_footSec_reshape02_rotateX.o" "Robot_Movement:PALBotRN.phl[334]"
		;
connectAttr "Robot_Movement:PALbot_R_footSec_reshape02_rotateY.o" "Robot_Movement:PALBotRN.phl[335]"
		;
connectAttr "Robot_Movement:PALbot_R_footSec_reshape02_rotateZ.o" "Robot_Movement:PALBotRN.phl[336]"
		;
connectAttr "Robot_Movement:PALbot_R_Engine_ctrl_on_off.o" "Robot_Movement:PALBotRN.phl[337]"
		;
connectAttr "Robot_Movement:PALbot_R_Engine_ctrl_translateX.o" "Robot_Movement:PALBotRN.phl[338]"
		;
connectAttr "Robot_Movement:PALbot_R_Engine_ctrl_translateY.o" "Robot_Movement:PALBotRN.phl[339]"
		;
connectAttr "Robot_Movement:PALbot_R_Engine_ctrl_translateZ.o" "Robot_Movement:PALBotRN.phl[340]"
		;
connectAttr "Robot_Movement:PALbot_R_Engine_ctrl_rotateX.o" "Robot_Movement:PALBotRN.phl[341]"
		;
connectAttr "Robot_Movement:PALbot_R_Engine_ctrl_rotateY.o" "Robot_Movement:PALBotRN.phl[342]"
		;
connectAttr "Robot_Movement:PALbot_R_Engine_ctrl_rotateZ.o" "Robot_Movement:PALBotRN.phl[343]"
		;
connectAttr "Robot_Movement:PALbot_R_Engine_ctrl_scaleX.o" "Robot_Movement:PALBotRN.phl[344]"
		;
connectAttr "Robot_Movement:PALbot_R_Engine_ctrl_scaleY.o" "Robot_Movement:PALBotRN.phl[345]"
		;
connectAttr "Robot_Movement:PALbot_R_Engine_ctrl_scaleZ.o" "Robot_Movement:PALBotRN.phl[346]"
		;
connectAttr "Robot_Movement:PALbot_R_IK_Foot_ctrl_Heel_Peel.o" "Robot_Movement:PALBotRN.phl[347]"
		;
connectAttr "Robot_Movement:PALbot_R_IK_Foot_ctrl_follow_hip.o" "Robot_Movement:PALBotRN.phl[348]"
		;
connectAttr "Robot_Movement:PALbot_R_IK_Foot_ctrl_translateX.o" "Robot_Movement:PALBotRN.phl[349]"
		;
connectAttr "Robot_Movement:PALbot_R_IK_Foot_ctrl_translateY.o" "Robot_Movement:PALBotRN.phl[350]"
		;
connectAttr "Robot_Movement:PALbot_R_IK_Foot_ctrl_translateZ.o" "Robot_Movement:PALBotRN.phl[351]"
		;
connectAttr "Robot_Movement:PALbot_R_IK_Foot_ctrl_rotateX.o" "Robot_Movement:PALBotRN.phl[352]"
		;
connectAttr "Robot_Movement:PALbot_R_IK_Foot_ctrl_rotateY.o" "Robot_Movement:PALBotRN.phl[353]"
		;
connectAttr "Robot_Movement:PALbot_R_IK_Foot_ctrl_rotateZ.o" "Robot_Movement:PALBotRN.phl[354]"
		;
connectAttr "Robot_Movement:PALbot_R_IK_heel_lift_tip_rotateX.o" "Robot_Movement:PALBotRN.phl[355]"
		;
connectAttr "Robot_Movement:PALbot_R_IK_heel_lift_tip_rotateY.o" "Robot_Movement:PALBotRN.phl[356]"
		;
connectAttr "Robot_Movement:PALbot_R_IK_heel_lift_tip_rotateZ.o" "Robot_Movement:PALBotRN.phl[357]"
		;
connectAttr "Robot_Movement:PALbot_R_IK_heel_lift_tip_translateX.o" "Robot_Movement:PALBotRN.phl[358]"
		;
connectAttr "Robot_Movement:PALbot_R_IK_heel_lift_tip_translateY.o" "Robot_Movement:PALBotRN.phl[359]"
		;
connectAttr "Robot_Movement:PALbot_R_IK_heel_lift_tip_translateZ.o" "Robot_Movement:PALBotRN.phl[360]"
		;
connectAttr "Robot_Movement:PALbot_R_IK_foot_tip_translateX.o" "Robot_Movement:PALBotRN.phl[361]"
		;
connectAttr "Robot_Movement:PALbot_R_IK_foot_tip_translateY.o" "Robot_Movement:PALBotRN.phl[362]"
		;
connectAttr "Robot_Movement:PALbot_R_IK_foot_tip_translateZ.o" "Robot_Movement:PALBotRN.phl[363]"
		;
connectAttr "Robot_Movement:PALbot_R_IK_foot_tip_rotateX.o" "Robot_Movement:PALBotRN.phl[364]"
		;
connectAttr "Robot_Movement:PALbot_R_IK_foot_tip_rotateY.o" "Robot_Movement:PALBotRN.phl[365]"
		;
connectAttr "Robot_Movement:PALbot_R_IK_foot_tip_rotateZ.o" "Robot_Movement:PALBotRN.phl[366]"
		;
connectAttr "Robot_Movement:PALbot_R_IK_footBall_ctrl_translateX.o" "Robot_Movement:PALBotRN.phl[367]"
		;
connectAttr "Robot_Movement:PALbot_R_IK_footBall_ctrl_translateY.o" "Robot_Movement:PALBotRN.phl[368]"
		;
connectAttr "Robot_Movement:PALbot_R_IK_footBall_ctrl_translateZ.o" "Robot_Movement:PALBotRN.phl[369]"
		;
connectAttr "Robot_Movement:PALbot_R_IK_footBall_ctrl_rotateX.o" "Robot_Movement:PALBotRN.phl[370]"
		;
connectAttr "Robot_Movement:PALbot_R_IK_footBall_ctrl_rotateY.o" "Robot_Movement:PALBotRN.phl[371]"
		;
connectAttr "Robot_Movement:PALbot_R_IK_footBall_ctrl_rotateZ.o" "Robot_Movement:PALBotRN.phl[372]"
		;
connectAttr "Robot_Movement:PALbot_L_HandVIS_Hand_Vis.o" "Robot_Movement:PALBotRN.phl[373]"
		;
connectAttr "Robot_Movement:PALbot_L_HandVIS_canon_light.o" "Robot_Movement:PALBotRN.phl[374]"
		;
connectAttr "Ball_Anim_reference_for_TRAX1:walker_lf_heel_ik_ctrl_pvControl.o" "Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN.phl[1]"
		;
connectAttr "Ball_Anim_reference_for_TRAX1:walker_lf_heel_ik_ctrl_legTwist.o" "Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN.phl[2]"
		;
connectAttr "Ball_Anim_reference_for_TRAX1:walker_lf_heel_ik_ctrl_heelTwist.o" "Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN.phl[3]"
		;
connectAttr "Ball_Anim_reference_for_TRAX1:walker_lf_heel_ik_ctrl_ballTwist.o" "Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN.phl[4]"
		;
connectAttr "Ball_Anim_reference_for_TRAX1:walker_lf_heel_ik_ctrl_toeTwist.o" "Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN.phl[5]"
		;
connectAttr "Ball_Anim_reference_for_TRAX1:walker_lf_heel_ik_ctrl_translateX.o" "Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN.phl[6]"
		;
connectAttr "Ball_Anim_reference_for_TRAX1:walker_lf_heel_ik_ctrl_translateY.o" "Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN.phl[7]"
		;
connectAttr "Ball_Anim_reference_for_TRAX1:walker_lf_heel_ik_ctrl_translateZ.o" "Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN.phl[8]"
		;
connectAttr "Ball_Anim_reference_for_TRAX1:walker_lf_heel_ik_ctrl_rotateX.o" "Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN.phl[9]"
		;
connectAttr "Ball_Anim_reference_for_TRAX1:walker_lf_heel_ik_ctrl_rotateY.o" "Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN.phl[10]"
		;
connectAttr "Ball_Anim_reference_for_TRAX1:walker_lf_heel_ik_ctrl_rotateZ.o" "Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN.phl[11]"
		;
connectAttr "Ball_Anim_reference_for_TRAX1:walker_lf_heel_ik_ctrl_footRoll.o" "Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN.phl[12]"
		;
connectAttr "Ball_Anim_reference_for_TRAX1:walker_lf_heel_ik_ctrl_footBreak.o" "Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN.phl[13]"
		;
connectAttr "Ball_Anim_reference_for_TRAX1:walker_lf_heel_ik_ctrl_toeRoll.o" "Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN.phl[14]"
		;
connectAttr "Ball_Anim_reference_for_TRAX1:walker_lf_knee_pv_ctrl_translateX.o" "Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN.phl[15]"
		;
connectAttr "Ball_Anim_reference_for_TRAX1:walker_lf_knee_pv_ctrl_translateY.o" "Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN.phl[16]"
		;
connectAttr "Ball_Anim_reference_for_TRAX1:walker_lf_knee_pv_ctrl_translateZ.o" "Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN.phl[17]"
		;
connectAttr "Ball_Anim_reference_for_TRAX1:walker_lf_knee_pv_ctrl_lfLegIkCtrl.o" "Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN.phl[18]"
		;
connectAttr "Ball_Anim_reference_for_TRAX1:walker_rt_heel_ik_ctrl_pvControl.o" "Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN.phl[19]"
		;
connectAttr "Ball_Anim_reference_for_TRAX1:walker_rt_heel_ik_ctrl_legTwist.o" "Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN.phl[20]"
		;
connectAttr "Ball_Anim_reference_for_TRAX1:walker_rt_heel_ik_ctrl_heelTwist.o" "Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN.phl[21]"
		;
connectAttr "Ball_Anim_reference_for_TRAX1:walker_rt_heel_ik_ctrl_ballTwist.o" "Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN.phl[22]"
		;
connectAttr "Ball_Anim_reference_for_TRAX1:walker_rt_heel_ik_ctrl_toeTwist.o" "Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN.phl[23]"
		;
connectAttr "Ball_Anim_reference_for_TRAX1:walker_rt_heel_ik_ctrl_translateX.o" "Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN.phl[24]"
		;
connectAttr "Ball_Anim_reference_for_TRAX1:walker_rt_heel_ik_ctrl_translateY.o" "Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN.phl[25]"
		;
connectAttr "Ball_Anim_reference_for_TRAX1:walker_rt_heel_ik_ctrl_translateZ.o" "Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN.phl[26]"
		;
connectAttr "Ball_Anim_reference_for_TRAX1:walker_rt_heel_ik_ctrl_rotateX.o" "Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN.phl[27]"
		;
connectAttr "Ball_Anim_reference_for_TRAX1:walker_rt_heel_ik_ctrl_rotateY.o" "Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN.phl[28]"
		;
connectAttr "Ball_Anim_reference_for_TRAX1:walker_rt_heel_ik_ctrl_rotateZ.o" "Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN.phl[29]"
		;
connectAttr "Ball_Anim_reference_for_TRAX1:walker_rt_heel_ik_ctrl_footRoll.o" "Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN.phl[30]"
		;
connectAttr "Ball_Anim_reference_for_TRAX1:walker_rt_heel_ik_ctrl_footBreak.o" "Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN.phl[31]"
		;
connectAttr "Ball_Anim_reference_for_TRAX1:walker_rt_heel_ik_ctrl_toeRoll.o" "Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN.phl[32]"
		;
connectAttr "Ball_Anim_reference_for_TRAX1:walker_rt_knee_pv_ctrl_translateX.o" "Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN.phl[33]"
		;
connectAttr "Ball_Anim_reference_for_TRAX1:walker_rt_knee_pv_ctrl_translateY.o" "Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN.phl[34]"
		;
connectAttr "Ball_Anim_reference_for_TRAX1:walker_rt_knee_pv_ctrl_translateZ.o" "Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN.phl[35]"
		;
connectAttr "Ball_Anim_reference_for_TRAX1:walker_rt_knee_pv_ctrl_rtLegIkCtrl.o" "Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN.phl[36]"
		;
connectAttr "Ball_Anim_reference_for_TRAX1:CTRL_Main_translateX.o" "Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN.phl[37]"
		;
connectAttr "Ball_Anim_reference_for_TRAX1:CTRL_Main_translateY.o" "Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN.phl[38]"
		;
connectAttr "Ball_Anim_reference_for_TRAX1:CTRL_Main_translateZ.o" "Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN.phl[39]"
		;
connectAttr "Ball_Anim_reference_for_TRAX1:CTRL_Main_rotateX.o" "Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN.phl[40]"
		;
connectAttr "Ball_Anim_reference_for_TRAX1:CTRL_Main_rotateY.o" "Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN.phl[41]"
		;
connectAttr "Ball_Anim_reference_for_TRAX1:CTRL_Main_rotateZ.o" "Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN.phl[42]"
		;
connectAttr "layerManager.dli[1]" "Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN.phl[43]"
		;
connectAttr ":time1.o" "hunte__dev__NewRockGeo__1_01.inTime";
connectAttr "hunte__dev__NewRockGeo__1_01.outputObjects[0].outputObjectTranslate" "RockGeo.t"
		;
connectAttr "hunte__dev__NewRockGeo__1_01.outputObjects[0].outputObjectRotate" "RockGeo.r"
		;
connectAttr "hunte__dev__NewRockGeo__1_01.outputObjects[0].outputObjectScale" "RockGeo.s"
		;
connectAttr "hunte__dev__NewRockGeo__1_01.outputObjects[0].outputGeos[0].outputParts[0].outputPartMeshData" "|hunte__dev__NewRockGeo__1_01|RockGeo|uvunwrap1_0|uvunwrap1_0Shape.i"
		;
connectAttr ":time1.o" "hunte__dev__Wallsubnet__1_01.inTime";
connectAttr "hunte__dev__Wallsubnet__1_01.outputObjects[0].outputObjectTranslate" "WallTool.t"
		;
connectAttr "hunte__dev__Wallsubnet__1_01.outputObjects[0].outputObjectRotate" "WallTool.r"
		;
connectAttr "hunte__dev__Wallsubnet__1_01.outputObjects[0].outputObjectScale" "WallTool.s"
		;
connectAttr "hunte__dev__Wallsubnet__1_01.outputObjects[0].outputGeos[0].outputParts[0].outputPartMeshData" "|hunte__dev__Wallsubnet__1_01|WallTool|uvunwrap1_0|uvunwrap1_0Shape.i"
		;
connectAttr "hunte__dev__Wallsubnet__1_01.outputObjects[0].outputGeos[0].outputParts[0].outputPartExtraAttributes[1].outputPartExtraAttributeData" "|hunte__dev__Wallsubnet__1_01|WallTool|uvunwrap1_0|uvunwrap1_0Shape.side"
		;
connectAttr "hunte__dev__Wallsubnet__1_01.outputObjects[0].outputGeos[0].outputParts[0].outputPartExtraAttributes[0].outputPartExtraAttributeData" "|hunte__dev__Wallsubnet__1_01|WallTool|uvunwrap1_0|uvunwrap1_0Shape.ptdist"
		;
connectAttr ":time1.o" "|Rock2|pasted__hunte__dev__NewRockGeo__1_01.inTime";
connectAttr "|Rock2|pasted__hunte__dev__NewRockGeo__1_01.outputObjects[0].outputObjectTranslate" "|Rock2|pasted__hunte__dev__NewRockGeo__1_01|pasted__RockGeo.t"
		;
connectAttr "|Rock2|pasted__hunte__dev__NewRockGeo__1_01.outputObjects[0].outputObjectRotate" "|Rock2|pasted__hunte__dev__NewRockGeo__1_01|pasted__RockGeo.r"
		;
connectAttr "|Rock2|pasted__hunte__dev__NewRockGeo__1_01.outputObjects[0].outputObjectScale" "|Rock2|pasted__hunte__dev__NewRockGeo__1_01|pasted__RockGeo.s"
		;
connectAttr "|Rock2|pasted__hunte__dev__NewRockGeo__1_01.outputObjects[0].outputGeos[0].outputParts[0].outputPartMeshData" "|Rock2|pasted__hunte__dev__NewRockGeo__1_01|pasted__RockGeo|pasted__uvunwrap1_0|pasted__uvunwrap1_0Shape.i"
		;
connectAttr ":time1.o" "hunte__dev__BottomlessBucket__1_01.inTime";
connectAttr "hunte__dev__BottomlessBucket__1_01.outputObjects[0].outputObjectTranslate" "|hunte__dev__BottomlessBucket__1_01|geo1.t"
		;
connectAttr "hunte__dev__BottomlessBucket__1_01.outputObjects[0].outputObjectRotate" "|hunte__dev__BottomlessBucket__1_01|geo1.r"
		;
connectAttr "hunte__dev__BottomlessBucket__1_01.outputObjects[0].outputObjectScale" "|hunte__dev__BottomlessBucket__1_01|geo1.s"
		;
connectAttr "hunte__dev__BottomlessBucket__1_01.outputObjects[0].outputGeos[0].outputParts[0].outputPartMeshData" "copytopoints1_0Shape.i"
		;
connectAttr "hunte__dev__BottomlessBucket__1_01.outputObjects[0].outputGeos[0].outputParts[0].outputPartExtraAttributes[0].outputPartExtraAttributeData" "copytopoints1_0Shape.pscale"
		;
connectAttr "hunte__dev__BottomlessBucket__1_01.outputObjects[0].outputGeos[0].outputParts[0].outputPartExtraAttributes[1].outputPartExtraAttributeData" "copytopoints1_0Shape.tangentv"
		;
connectAttr ":time1.o" "pasted__hunte__dev__BottomlessBucket__1_01.inTime";
connectAttr "pasted__hunte__dev__BottomlessBucket__1_01.outputObjects[0].outputObjectTranslate" "pasted__geo1.t"
		;
connectAttr "pasted__hunte__dev__BottomlessBucket__1_01.outputObjects[0].outputObjectRotate" "pasted__geo1.r"
		;
connectAttr "pasted__hunte__dev__BottomlessBucket__1_01.outputObjects[0].outputObjectScale" "pasted__geo1.s"
		;
connectAttr "pasted__hunte__dev__BottomlessBucket__1_01.outputObjects[0].outputGeos[0].outputParts[0].outputPartMeshData" "pasted__copytopoints1_0Shape.i"
		;
connectAttr "pasted__hunte__dev__BottomlessBucket__1_01.outputObjects[0].outputGeos[0].outputParts[0].outputPartExtraAttributes[0].outputPartExtraAttributeData" "pasted__copytopoints1_0Shape.pscale"
		;
connectAttr "pasted__hunte__dev__BottomlessBucket__1_01.outputObjects[0].outputGeos[0].outputParts[0].outputPartExtraAttributes[1].outputPartExtraAttributeData" "pasted__copytopoints1_0Shape.tangentv"
		;
connectAttr ":time1.o" "hunte__dev__Tree_subnet__1_01.inTime";
connectAttr "hunte__dev__Tree_subnet__1_01.outputObjects[0].outputObjectTranslate" "tube_object1.t"
		;
connectAttr "hunte__dev__Tree_subnet__1_01.outputObjects[0].outputObjectRotate" "tube_object1.r"
		;
connectAttr "hunte__dev__Tree_subnet__1_01.outputObjects[0].outputObjectScale" "tube_object1.s"
		;
connectAttr "hunte__dev__Tree_subnet__1_01.outputObjects[0].outputGeos[0].outputParts[0].outputPartMeshData" "|hunte__dev__Tree_subnet__1_01|tube_object1|uvunwrap1_0|uvunwrap1_0Shape.i"
		;
connectAttr ":time1.o" "pasted__hunte__dev__Tree_subnet__1_01.inTime";
connectAttr "pasted__hunte__dev__Tree_subnet__1_01.outputObjects[0].outputObjectTranslate" "pasted__tube_object1.t"
		;
connectAttr "pasted__hunte__dev__Tree_subnet__1_01.outputObjects[0].outputObjectRotate" "pasted__tube_object1.r"
		;
connectAttr "pasted__hunte__dev__Tree_subnet__1_01.outputObjects[0].outputObjectScale" "pasted__tube_object1.s"
		;
connectAttr "pasted__hunte__dev__Tree_subnet__1_01.outputObjects[0].outputGeos[0].outputParts[0].outputPartMeshData" "|group3|pasted__hunte__dev__Tree_subnet__1_01|pasted__tube_object1|pasted__uvunwrap1_0|pasted__uvunwrap1_0Shape.i"
		;
connectAttr ":time1.o" "|Rock3|pasted__hunte__dev__NewRockGeo__1_01.inTime";
connectAttr "|Rock3|pasted__hunte__dev__NewRockGeo__1_01.outputObjects[0].outputObjectTranslate" "|Rock3|pasted__hunte__dev__NewRockGeo__1_01|pasted__RockGeo.t"
		;
connectAttr "|Rock3|pasted__hunte__dev__NewRockGeo__1_01.outputObjects[0].outputObjectRotate" "|Rock3|pasted__hunte__dev__NewRockGeo__1_01|pasted__RockGeo.r"
		;
connectAttr "|Rock3|pasted__hunte__dev__NewRockGeo__1_01.outputObjects[0].outputObjectScale" "|Rock3|pasted__hunte__dev__NewRockGeo__1_01|pasted__RockGeo.s"
		;
connectAttr "|Rock3|pasted__hunte__dev__NewRockGeo__1_01.outputObjects[0].outputGeos[0].outputParts[0].outputPartMeshData" "|Rock3|pasted__hunte__dev__NewRockGeo__1_01|pasted__RockGeo|pasted__uvunwrap1_0|pasted__uvunwrap1_0Shape.i"
		;
connectAttr ":time1.o" "|Rock4|pasted__Rock3|pasted__pasted__hunte__dev__NewRockGeo__1_01.inTime"
		;
connectAttr "|Rock4|pasted__Rock3|pasted__pasted__hunte__dev__NewRockGeo__1_01.outputObjects[0].outputObjectTranslate" "|Rock4|pasted__Rock3|pasted__pasted__hunte__dev__NewRockGeo__1_01|pasted__pasted__RockGeo.t"
		;
connectAttr "|Rock4|pasted__Rock3|pasted__pasted__hunte__dev__NewRockGeo__1_01.outputObjects[0].outputObjectRotate" "|Rock4|pasted__Rock3|pasted__pasted__hunte__dev__NewRockGeo__1_01|pasted__pasted__RockGeo.r"
		;
connectAttr "|Rock4|pasted__Rock3|pasted__pasted__hunte__dev__NewRockGeo__1_01.outputObjects[0].outputObjectScale" "|Rock4|pasted__Rock3|pasted__pasted__hunte__dev__NewRockGeo__1_01|pasted__pasted__RockGeo.s"
		;
connectAttr "|Rock4|pasted__Rock3|pasted__pasted__hunte__dev__NewRockGeo__1_01.outputObjects[0].outputGeos[0].outputParts[0].outputPartMeshData" "|Rock4|pasted__Rock3|pasted__pasted__hunte__dev__NewRockGeo__1_01|pasted__pasted__RockGeo|pasted__pasted__uvunwrap1_0|pasted__pasted__uvunwrap1_0Shape.i"
		;
connectAttr ":time1.o" "|group4|pasted__Rock3|pasted__pasted__hunte__dev__NewRockGeo__1_01.inTime"
		;
connectAttr "|group4|pasted__Rock3|pasted__pasted__hunte__dev__NewRockGeo__1_01.outputObjects[0].outputObjectTranslate" "|group4|pasted__Rock3|pasted__pasted__hunte__dev__NewRockGeo__1_01|pasted__pasted__RockGeo.t"
		;
connectAttr "|group4|pasted__Rock3|pasted__pasted__hunte__dev__NewRockGeo__1_01.outputObjects[0].outputObjectRotate" "|group4|pasted__Rock3|pasted__pasted__hunte__dev__NewRockGeo__1_01|pasted__pasted__RockGeo.r"
		;
connectAttr "|group4|pasted__Rock3|pasted__pasted__hunte__dev__NewRockGeo__1_01.outputObjects[0].outputObjectScale" "|group4|pasted__Rock3|pasted__pasted__hunte__dev__NewRockGeo__1_01|pasted__pasted__RockGeo.s"
		;
connectAttr "|group4|pasted__Rock3|pasted__pasted__hunte__dev__NewRockGeo__1_01.outputObjects[0].outputGeos[0].outputParts[0].outputPartMeshData" "|group4|pasted__Rock3|pasted__pasted__uvunwrap1_0|pasted__pasted__uvunwrap1_0Shape.i"
		;
connectAttr ":time1.o" "hunte__dev__SimpleGround__1_02.inTime";
connectAttr "hunte__dev__SimpleGround__1_02.outputObjects[0].outputObjectTranslate" "|hunte__dev__SimpleGround__1_02|geo1.t"
		;
connectAttr "hunte__dev__SimpleGround__1_02.outputObjects[0].outputObjectRotate" "|hunte__dev__SimpleGround__1_02|geo1.r"
		;
connectAttr "hunte__dev__SimpleGround__1_02.outputObjects[0].outputObjectScale" "|hunte__dev__SimpleGround__1_02|geo1.s"
		;
connectAttr "hunte__dev__SimpleGround__1_02.outputObjects[0].outputGeos[0].outputParts[0].outputPartMeshData" "uvquickshade1_0Shape.i"
		;
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "v_layered1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "set1.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "v_layered2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "set2.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__set1.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "set3.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__set3.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "set4.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "v_layered3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__v_layered3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__set4.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__pasted__set4.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__pasted__set5.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "v_layered4SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "set5.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "v_layered1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "set1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "v_layered2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "set2.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__set1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "set3.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__set3.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "set4.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "v_layered3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__v_layered3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__set4.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__pasted__set4.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__pasted__set5.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "v_layered4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "set5.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "file1.oc" "v_layered1.c";
connectAttr "hunte__dev__NewRockGeo__1_01.outputMaterials[0].outputMaterialSpecularColor" "v_layered1.sc"
		;
connectAttr "hunte__dev__NewRockGeo__1_01.outputMaterials[0].outputMaterialAmbientColor" "v_layered1.ambc"
		;
connectAttr "hunte__dev__NewRockGeo__1_01.outputMaterials[0].outputMaterialAlphaColor" "v_layered1.it"
		;
connectAttr "v_layered1.oc" "v_layered1SG.ss";
connectAttr "v_layered1SG.msg" "materialInfo1.sg";
connectAttr "v_layered1.msg" "materialInfo1.m";
connectAttr "file1.msg" "materialInfo1.t" -na;
connectAttr ":defaultColorMgtGlobals.cme" "file1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file1.ws";
connectAttr "hunte__dev__NewRockGeo__1_01.outputMaterials[0].outputMaterialTexturePath" "file1.ftn"
		;
connectAttr "place2dTexture1.o" "substanceNode1.uv";
connectAttr "place2dTexture1.ofs" "substanceNode1.fs";
connectAttr "substanceNode1.output_diffuse" "Moon_Surface_diffuse.sbs";
connectAttr "substanceNode1.rsw" "Moon_Surface_diffuse.rsw";
connectAttr "substanceNode1.cext" "Moon_Surface_diffuse.cext";
connectAttr "substanceNode1.hext" "Moon_Surface_diffuse.hext";
connectAttr "substanceNode1.cfld" "Moon_Surface_diffuse.cprx";
connectAttr "place2dTexture1.o" "Moon_Surface_diffuse.uv";
connectAttr "place2dTexture1.ofs" "Moon_Surface_diffuse.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file2.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file2.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file2.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file2.ws";
connectAttr "Moon_Surface_diffuse.cpth" "file2.ftn";
connectAttr "place2dTexture1.o" "file2.uv";
connectAttr "place2dTexture1.ofs" "file2.fs";
connectAttr "place2dTexture1.c" "file2.c";
connectAttr "place2dTexture1.tf" "file2.tf";
connectAttr "place2dTexture1.rf" "file2.rf";
connectAttr "place2dTexture1.mu" "file2.mu";
connectAttr "place2dTexture1.mv" "file2.mv";
connectAttr "place2dTexture1.s" "file2.s";
connectAttr "place2dTexture1.wu" "file2.wu";
connectAttr "place2dTexture1.wv" "file2.wv";
connectAttr "place2dTexture1.re" "file2.re";
connectAttr "place2dTexture1.of" "file2.of";
connectAttr "place2dTexture1.r" "file2.ro";
connectAttr "place2dTexture1.n" "file2.n";
connectAttr "place2dTexture1.vt1" "file2.vt1";
connectAttr "place2dTexture1.vt2" "file2.vt2";
connectAttr "place2dTexture1.vt3" "file2.vt3";
connectAttr "place2dTexture1.vc1" "file2.vc1";
connectAttr "substanceNode1.output_metallic" "Moon_Surface_metallic.sbs";
connectAttr "substanceNode1.rsw" "Moon_Surface_metallic.rsw";
connectAttr "substanceNode1.cext" "Moon_Surface_metallic.cext";
connectAttr "substanceNode1.hext" "Moon_Surface_metallic.hext";
connectAttr "substanceNode1.cfld" "Moon_Surface_metallic.cprx";
connectAttr "place2dTexture1.o" "Moon_Surface_metallic.uv";
connectAttr "place2dTexture1.ofs" "Moon_Surface_metallic.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file3.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file3.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file3.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file3.ws";
connectAttr "Moon_Surface_metallic.cpth" "file3.ftn";
connectAttr "place2dTexture1.o" "file3.uv";
connectAttr "place2dTexture1.ofs" "file3.fs";
connectAttr "place2dTexture1.c" "file3.c";
connectAttr "place2dTexture1.tf" "file3.tf";
connectAttr "place2dTexture1.rf" "file3.rf";
connectAttr "place2dTexture1.mu" "file3.mu";
connectAttr "place2dTexture1.mv" "file3.mv";
connectAttr "place2dTexture1.s" "file3.s";
connectAttr "place2dTexture1.wu" "file3.wu";
connectAttr "place2dTexture1.wv" "file3.wv";
connectAttr "place2dTexture1.re" "file3.re";
connectAttr "place2dTexture1.of" "file3.of";
connectAttr "place2dTexture1.r" "file3.ro";
connectAttr "place2dTexture1.n" "file3.n";
connectAttr "place2dTexture1.vt1" "file3.vt1";
connectAttr "place2dTexture1.vt2" "file3.vt2";
connectAttr "place2dTexture1.vt3" "file3.vt3";
connectAttr "place2dTexture1.vc1" "file3.vc1";
connectAttr "substanceNode1.output_roughness" "Moon_Surface_roughness.sbs";
connectAttr "substanceNode1.rsw" "Moon_Surface_roughness.rsw";
connectAttr "substanceNode1.cext" "Moon_Surface_roughness.cext";
connectAttr "substanceNode1.hext" "Moon_Surface_roughness.hext";
connectAttr "substanceNode1.cfld" "Moon_Surface_roughness.cprx";
connectAttr "place2dTexture1.o" "Moon_Surface_roughness.uv";
connectAttr "place2dTexture1.ofs" "Moon_Surface_roughness.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file4.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file4.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file4.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file4.ws";
connectAttr "Moon_Surface_roughness.cpth" "file4.ftn";
connectAttr "place2dTexture1.o" "file4.uv";
connectAttr "place2dTexture1.ofs" "file4.fs";
connectAttr "place2dTexture1.c" "file4.c";
connectAttr "place2dTexture1.tf" "file4.tf";
connectAttr "place2dTexture1.rf" "file4.rf";
connectAttr "place2dTexture1.mu" "file4.mu";
connectAttr "place2dTexture1.mv" "file4.mv";
connectAttr "place2dTexture1.s" "file4.s";
connectAttr "place2dTexture1.wu" "file4.wu";
connectAttr "place2dTexture1.wv" "file4.wv";
connectAttr "place2dTexture1.re" "file4.re";
connectAttr "place2dTexture1.of" "file4.of";
connectAttr "place2dTexture1.r" "file4.ro";
connectAttr "place2dTexture1.n" "file4.n";
connectAttr "place2dTexture1.vt1" "file4.vt1";
connectAttr "place2dTexture1.vt2" "file4.vt2";
connectAttr "place2dTexture1.vt3" "file4.vt3";
connectAttr "place2dTexture1.vc1" "file4.vc1";
connectAttr "substanceNode1.output_basecolor" "Moon_Surface_basecolor.sbs";
connectAttr "substanceNode1.rsw" "Moon_Surface_basecolor.rsw";
connectAttr "substanceNode1.cext" "Moon_Surface_basecolor.cext";
connectAttr "substanceNode1.hext" "Moon_Surface_basecolor.hext";
connectAttr "substanceNode1.cfld" "Moon_Surface_basecolor.cprx";
connectAttr "place2dTexture1.o" "Moon_Surface_basecolor.uv";
connectAttr "place2dTexture1.ofs" "Moon_Surface_basecolor.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file5.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file5.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file5.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file5.ws";
connectAttr "Moon_Surface_basecolor.cpth" "file5.ftn";
connectAttr "place2dTexture1.o" "file5.uv";
connectAttr "place2dTexture1.ofs" "file5.fs";
connectAttr "place2dTexture1.c" "file5.c";
connectAttr "place2dTexture1.tf" "file5.tf";
connectAttr "place2dTexture1.rf" "file5.rf";
connectAttr "place2dTexture1.mu" "file5.mu";
connectAttr "place2dTexture1.mv" "file5.mv";
connectAttr "place2dTexture1.s" "file5.s";
connectAttr "place2dTexture1.wu" "file5.wu";
connectAttr "place2dTexture1.wv" "file5.wv";
connectAttr "place2dTexture1.re" "file5.re";
connectAttr "place2dTexture1.of" "file5.of";
connectAttr "place2dTexture1.r" "file5.ro";
connectAttr "place2dTexture1.n" "file5.n";
connectAttr "place2dTexture1.vt1" "file5.vt1";
connectAttr "place2dTexture1.vt2" "file5.vt2";
connectAttr "place2dTexture1.vt3" "file5.vt3";
connectAttr "place2dTexture1.vc1" "file5.vc1";
connectAttr "substanceNode1.output_ambientocclusion" "Moon_Surface_ambientocclusion.sbs"
		;
connectAttr "substanceNode1.rsw" "Moon_Surface_ambientocclusion.rsw";
connectAttr "substanceNode1.cext" "Moon_Surface_ambientocclusion.cext";
connectAttr "substanceNode1.hext" "Moon_Surface_ambientocclusion.hext";
connectAttr "substanceNode1.cfld" "Moon_Surface_ambientocclusion.cprx";
connectAttr "place2dTexture1.o" "Moon_Surface_ambientocclusion.uv";
connectAttr "place2dTexture1.ofs" "Moon_Surface_ambientocclusion.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file6.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file6.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file6.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file6.ws";
connectAttr "Moon_Surface_ambientocclusion.cpth" "file6.ftn";
connectAttr "place2dTexture1.o" "file6.uv";
connectAttr "place2dTexture1.ofs" "file6.fs";
connectAttr "place2dTexture1.c" "file6.c";
connectAttr "place2dTexture1.tf" "file6.tf";
connectAttr "place2dTexture1.rf" "file6.rf";
connectAttr "place2dTexture1.mu" "file6.mu";
connectAttr "place2dTexture1.mv" "file6.mv";
connectAttr "place2dTexture1.s" "file6.s";
connectAttr "place2dTexture1.wu" "file6.wu";
connectAttr "place2dTexture1.wv" "file6.wv";
connectAttr "place2dTexture1.re" "file6.re";
connectAttr "place2dTexture1.of" "file6.of";
connectAttr "place2dTexture1.r" "file6.ro";
connectAttr "place2dTexture1.n" "file6.n";
connectAttr "place2dTexture1.vt1" "file6.vt1";
connectAttr "place2dTexture1.vt2" "file6.vt2";
connectAttr "place2dTexture1.vt3" "file6.vt3";
connectAttr "place2dTexture1.vc1" "file6.vc1";
connectAttr "substanceNode1.output_normal" "Moon_Surface_normal.sbs";
connectAttr "substanceNode1.rsw" "Moon_Surface_normal.rsw";
connectAttr "substanceNode1.cext" "Moon_Surface_normal.cext";
connectAttr "substanceNode1.hext" "Moon_Surface_normal.hext";
connectAttr "substanceNode1.cfld" "Moon_Surface_normal.cprx";
connectAttr "place2dTexture1.o" "Moon_Surface_normal.uv";
connectAttr "place2dTexture1.ofs" "Moon_Surface_normal.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file7.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file7.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file7.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file7.ws";
connectAttr "Moon_Surface_normal.cpth" "file7.ftn";
connectAttr "place2dTexture1.o" "file7.uv";
connectAttr "place2dTexture1.ofs" "file7.fs";
connectAttr "place2dTexture1.c" "file7.c";
connectAttr "place2dTexture1.tf" "file7.tf";
connectAttr "place2dTexture1.rf" "file7.rf";
connectAttr "place2dTexture1.mu" "file7.mu";
connectAttr "place2dTexture1.mv" "file7.mv";
connectAttr "place2dTexture1.s" "file7.s";
connectAttr "place2dTexture1.wu" "file7.wu";
connectAttr "place2dTexture1.wv" "file7.wv";
connectAttr "place2dTexture1.re" "file7.re";
connectAttr "place2dTexture1.of" "file7.of";
connectAttr "place2dTexture1.r" "file7.ro";
connectAttr "place2dTexture1.n" "file7.n";
connectAttr "place2dTexture1.vt1" "file7.vt1";
connectAttr "place2dTexture1.vt2" "file7.vt2";
connectAttr "place2dTexture1.vt3" "file7.vt3";
connectAttr "place2dTexture1.vc1" "file7.vc1";
connectAttr "substanceNode1.output_height" "Moon_Surface_height.sbs";
connectAttr "substanceNode1.rsw" "Moon_Surface_height.rsw";
connectAttr "substanceNode1.cext" "Moon_Surface_height.cext";
connectAttr "substanceNode1.hext" "Moon_Surface_height.hext";
connectAttr "substanceNode1.cfld" "Moon_Surface_height.cprx";
connectAttr "place2dTexture1.o" "Moon_Surface_height.uv";
connectAttr "place2dTexture1.ofs" "Moon_Surface_height.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file8.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file8.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file8.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file8.ws";
connectAttr "Moon_Surface_height.cpth" "file8.ftn";
connectAttr "place2dTexture1.o" "file8.uv";
connectAttr "place2dTexture1.ofs" "file8.fs";
connectAttr "place2dTexture1.c" "file8.c";
connectAttr "place2dTexture1.tf" "file8.tf";
connectAttr "place2dTexture1.rf" "file8.rf";
connectAttr "place2dTexture1.mu" "file8.mu";
connectAttr "place2dTexture1.mv" "file8.mv";
connectAttr "place2dTexture1.s" "file8.s";
connectAttr "place2dTexture1.wu" "file8.wu";
connectAttr "place2dTexture1.wv" "file8.wv";
connectAttr "place2dTexture1.re" "file8.re";
connectAttr "place2dTexture1.of" "file8.of";
connectAttr "place2dTexture1.r" "file8.ro";
connectAttr "place2dTexture1.n" "file8.n";
connectAttr "place2dTexture1.vt1" "file8.vt1";
connectAttr "place2dTexture1.vt2" "file8.vt2";
connectAttr "place2dTexture1.vt3" "file8.vt3";
connectAttr "place2dTexture1.vc1" "file8.vc1";
connectAttr "file5.oc" "multiplyDivide1.i1";
connectAttr "file6.oc" "multiplyDivide1.i2";
connectAttr "multiplyDivide1.o" "MoonSurface.base_color";
connectAttr "bump2d1.o" "MoonSurface.n";
connectAttr "file4.oa" "MoonSurface.specular_roughness";
connectAttr "file3.oa" "MoonSurface.metalness";
connectAttr "MoonSurface.out" "set1.ss";
connectAttr "displacementShader1.d" "set1.ds";
connectAttr "|hunte__dev__NewRockGeo__1_01|RockGeo|uvunwrap1_0|uvunwrap1_0Shape.iog" "set1.dsm"
		 -na;
connectAttr "|Rock2|pasted__hunte__dev__NewRockGeo__1_01|pasted__RockGeo|pasted__uvunwrap1_0|pasted__uvunwrap1_0Shape.iog" "set1.dsm"
		 -na;
connectAttr "|Rock4|pasted__Rock3|pasted__pasted__hunte__dev__NewRockGeo__1_01|pasted__pasted__RockGeo|pasted__pasted__uvunwrap1_0|pasted__pasted__uvunwrap1_0Shape.iog" "set1.dsm"
		 -na;
connectAttr "|group4|pasted__Rock3|pasted__pasted__uvunwrap1_0|pasted__pasted__uvunwrap1_0Shape.iog" "set1.dsm"
		 -na;
connectAttr "set1.msg" "materialInfo2.sg";
connectAttr "MoonSurface.msg" "materialInfo2.m";
connectAttr "file5.msg" "materialInfo2.t" -na;
connectAttr "file7.oa" "bump2d1.bv";
connectAttr "file8.oa" "displacementShader1.d";
connectAttr "file9.oc" "v_layered2.c";
connectAttr "hunte__dev__Wallsubnet__1_01.outputMaterials[0].outputMaterialSpecularColor" "v_layered2.sc"
		;
connectAttr "hunte__dev__Wallsubnet__1_01.outputMaterials[0].outputMaterialAmbientColor" "v_layered2.ambc"
		;
connectAttr "hunte__dev__Wallsubnet__1_01.outputMaterials[0].outputMaterialAlphaColor" "v_layered2.it"
		;
connectAttr "v_layered2.oc" "v_layered2SG.ss";
connectAttr "v_layered2SG.msg" "materialInfo3.sg";
connectAttr "v_layered2.msg" "materialInfo3.m";
connectAttr "file9.msg" "materialInfo3.t" -na;
connectAttr ":defaultColorMgtGlobals.cme" "file9.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file9.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file9.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file9.ws";
connectAttr "hunte__dev__Wallsubnet__1_01.outputMaterials[0].outputMaterialTexturePath" "file9.ftn"
		;
connectAttr "place2dTexture2.o" "CementSkin.uv";
connectAttr "place2dTexture2.ofs" "CementSkin.fs";
connectAttr "CementSkin.output_diffuse" "Heavy_Cracked_Concrete_Sidewalk_01_diffuse.sbs"
		;
connectAttr "CementSkin.rsw" "Heavy_Cracked_Concrete_Sidewalk_01_diffuse.rsw";
connectAttr "CementSkin.cext" "Heavy_Cracked_Concrete_Sidewalk_01_diffuse.cext";
connectAttr "CementSkin.hext" "Heavy_Cracked_Concrete_Sidewalk_01_diffuse.hext";
connectAttr "CementSkin.cfld" "Heavy_Cracked_Concrete_Sidewalk_01_diffuse.cprx";
connectAttr "place2dTexture2.o" "Heavy_Cracked_Concrete_Sidewalk_01_diffuse.uv";
connectAttr "place2dTexture2.ofs" "Heavy_Cracked_Concrete_Sidewalk_01_diffuse.fs"
		;
connectAttr ":defaultColorMgtGlobals.cme" "file10.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file10.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file10.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file10.ws";
connectAttr "Heavy_Cracked_Concrete_Sidewalk_01_diffuse.cpth" "file10.ftn";
connectAttr "place2dTexture2.o" "file10.uv";
connectAttr "place2dTexture2.ofs" "file10.fs";
connectAttr "place2dTexture2.c" "file10.c";
connectAttr "place2dTexture2.tf" "file10.tf";
connectAttr "place2dTexture2.rf" "file10.rf";
connectAttr "place2dTexture2.mu" "file10.mu";
connectAttr "place2dTexture2.mv" "file10.mv";
connectAttr "place2dTexture2.s" "file10.s";
connectAttr "place2dTexture2.wu" "file10.wu";
connectAttr "place2dTexture2.wv" "file10.wv";
connectAttr "place2dTexture2.re" "file10.re";
connectAttr "place2dTexture2.of" "file10.of";
connectAttr "place2dTexture2.r" "file10.ro";
connectAttr "place2dTexture2.n" "file10.n";
connectAttr "place2dTexture2.vt1" "file10.vt1";
connectAttr "place2dTexture2.vt2" "file10.vt2";
connectAttr "place2dTexture2.vt3" "file10.vt3";
connectAttr "place2dTexture2.vc1" "file10.vc1";
connectAttr "CementSkin.output_basecolor" "Heavy_Cracked_Concrete_Sidewalk_01_basecolor.sbs"
		;
connectAttr "CementSkin.rsw" "Heavy_Cracked_Concrete_Sidewalk_01_basecolor.rsw";
connectAttr "CementSkin.cext" "Heavy_Cracked_Concrete_Sidewalk_01_basecolor.cext"
		;
connectAttr "CementSkin.hext" "Heavy_Cracked_Concrete_Sidewalk_01_basecolor.hext"
		;
connectAttr "CementSkin.cfld" "Heavy_Cracked_Concrete_Sidewalk_01_basecolor.cprx"
		;
connectAttr "place2dTexture2.o" "Heavy_Cracked_Concrete_Sidewalk_01_basecolor.uv"
		;
connectAttr "place2dTexture2.ofs" "Heavy_Cracked_Concrete_Sidewalk_01_basecolor.fs"
		;
connectAttr ":defaultColorMgtGlobals.cme" "file11.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file11.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file11.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file11.ws";
connectAttr "Heavy_Cracked_Concrete_Sidewalk_01_basecolor.cpth" "file11.ftn";
connectAttr "place2dTexture2.o" "file11.uv";
connectAttr "place2dTexture2.ofs" "file11.fs";
connectAttr "place2dTexture2.c" "file11.c";
connectAttr "place2dTexture2.tf" "file11.tf";
connectAttr "place2dTexture2.rf" "file11.rf";
connectAttr "place2dTexture2.mu" "file11.mu";
connectAttr "place2dTexture2.mv" "file11.mv";
connectAttr "place2dTexture2.s" "file11.s";
connectAttr "place2dTexture2.wu" "file11.wu";
connectAttr "place2dTexture2.wv" "file11.wv";
connectAttr "place2dTexture2.re" "file11.re";
connectAttr "place2dTexture2.of" "file11.of";
connectAttr "place2dTexture2.r" "file11.ro";
connectAttr "place2dTexture2.n" "file11.n";
connectAttr "place2dTexture2.vt1" "file11.vt1";
connectAttr "place2dTexture2.vt2" "file11.vt2";
connectAttr "place2dTexture2.vt3" "file11.vt3";
connectAttr "place2dTexture2.vc1" "file11.vc1";
connectAttr "CementSkin.output_normal" "Heavy_Cracked_Concrete_Sidewalk_01_normal.sbs"
		;
connectAttr "CementSkin.rsw" "Heavy_Cracked_Concrete_Sidewalk_01_normal.rsw";
connectAttr "CementSkin.cext" "Heavy_Cracked_Concrete_Sidewalk_01_normal.cext";
connectAttr "CementSkin.hext" "Heavy_Cracked_Concrete_Sidewalk_01_normal.hext";
connectAttr "CementSkin.cfld" "Heavy_Cracked_Concrete_Sidewalk_01_normal.cprx";
connectAttr "place2dTexture2.o" "Heavy_Cracked_Concrete_Sidewalk_01_normal.uv";
connectAttr "place2dTexture2.ofs" "Heavy_Cracked_Concrete_Sidewalk_01_normal.fs"
		;
connectAttr ":defaultColorMgtGlobals.cme" "file12.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file12.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file12.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file12.ws";
connectAttr "Heavy_Cracked_Concrete_Sidewalk_01_normal.cpth" "file12.ftn";
connectAttr "place2dTexture2.o" "file12.uv";
connectAttr "place2dTexture2.ofs" "file12.fs";
connectAttr "place2dTexture2.c" "file12.c";
connectAttr "place2dTexture2.tf" "file12.tf";
connectAttr "place2dTexture2.rf" "file12.rf";
connectAttr "place2dTexture2.mu" "file12.mu";
connectAttr "place2dTexture2.mv" "file12.mv";
connectAttr "place2dTexture2.s" "file12.s";
connectAttr "place2dTexture2.wu" "file12.wu";
connectAttr "place2dTexture2.wv" "file12.wv";
connectAttr "place2dTexture2.re" "file12.re";
connectAttr "place2dTexture2.of" "file12.of";
connectAttr "place2dTexture2.r" "file12.ro";
connectAttr "place2dTexture2.n" "file12.n";
connectAttr "place2dTexture2.vt1" "file12.vt1";
connectAttr "place2dTexture2.vt2" "file12.vt2";
connectAttr "place2dTexture2.vt3" "file12.vt3";
connectAttr "place2dTexture2.vc1" "file12.vc1";
connectAttr "CementSkin.output_roughness" "Heavy_Cracked_Concrete_Sidewalk_01_roughness.sbs"
		;
connectAttr "CementSkin.rsw" "Heavy_Cracked_Concrete_Sidewalk_01_roughness.rsw";
connectAttr "CementSkin.cext" "Heavy_Cracked_Concrete_Sidewalk_01_roughness.cext"
		;
connectAttr "CementSkin.hext" "Heavy_Cracked_Concrete_Sidewalk_01_roughness.hext"
		;
connectAttr "CementSkin.cfld" "Heavy_Cracked_Concrete_Sidewalk_01_roughness.cprx"
		;
connectAttr "place2dTexture2.o" "Heavy_Cracked_Concrete_Sidewalk_01_roughness.uv"
		;
connectAttr "place2dTexture2.ofs" "Heavy_Cracked_Concrete_Sidewalk_01_roughness.fs"
		;
connectAttr ":defaultColorMgtGlobals.cme" "file13.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file13.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file13.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file13.ws";
connectAttr "Heavy_Cracked_Concrete_Sidewalk_01_roughness.cpth" "file13.ftn";
connectAttr "place2dTexture2.o" "file13.uv";
connectAttr "place2dTexture2.ofs" "file13.fs";
connectAttr "place2dTexture2.c" "file13.c";
connectAttr "place2dTexture2.tf" "file13.tf";
connectAttr "place2dTexture2.rf" "file13.rf";
connectAttr "place2dTexture2.mu" "file13.mu";
connectAttr "place2dTexture2.mv" "file13.mv";
connectAttr "place2dTexture2.s" "file13.s";
connectAttr "place2dTexture2.wu" "file13.wu";
connectAttr "place2dTexture2.wv" "file13.wv";
connectAttr "place2dTexture2.re" "file13.re";
connectAttr "place2dTexture2.of" "file13.of";
connectAttr "place2dTexture2.r" "file13.ro";
connectAttr "place2dTexture2.n" "file13.n";
connectAttr "place2dTexture2.vt1" "file13.vt1";
connectAttr "place2dTexture2.vt2" "file13.vt2";
connectAttr "place2dTexture2.vt3" "file13.vt3";
connectAttr "place2dTexture2.vc1" "file13.vc1";
connectAttr "CementSkin.output_height" "Heavy_Cracked_Concrete_Sidewalk_01_height.sbs"
		;
connectAttr "CementSkin.rsw" "Heavy_Cracked_Concrete_Sidewalk_01_height.rsw";
connectAttr "CementSkin.cext" "Heavy_Cracked_Concrete_Sidewalk_01_height.cext";
connectAttr "CementSkin.hext" "Heavy_Cracked_Concrete_Sidewalk_01_height.hext";
connectAttr "CementSkin.cfld" "Heavy_Cracked_Concrete_Sidewalk_01_height.cprx";
connectAttr "place2dTexture2.o" "Heavy_Cracked_Concrete_Sidewalk_01_height.uv";
connectAttr "place2dTexture2.ofs" "Heavy_Cracked_Concrete_Sidewalk_01_height.fs"
		;
connectAttr ":defaultColorMgtGlobals.cme" "file16.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file16.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file16.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file16.ws";
connectAttr "Heavy_Cracked_Concrete_Sidewalk_01_height.cpth" "file16.ftn";
connectAttr "place2dTexture2.o" "file16.uv";
connectAttr "place2dTexture2.ofs" "file16.fs";
connectAttr "place2dTexture2.c" "file16.c";
connectAttr "place2dTexture2.tf" "file16.tf";
connectAttr "place2dTexture2.rf" "file16.rf";
connectAttr "place2dTexture2.mu" "file16.mu";
connectAttr "place2dTexture2.mv" "file16.mv";
connectAttr "place2dTexture2.s" "file16.s";
connectAttr "place2dTexture2.wu" "file16.wu";
connectAttr "place2dTexture2.wv" "file16.wv";
connectAttr "place2dTexture2.re" "file16.re";
connectAttr "place2dTexture2.of" "file16.of";
connectAttr "place2dTexture2.r" "file16.ro";
connectAttr "place2dTexture2.n" "file16.n";
connectAttr "place2dTexture2.vt1" "file16.vt1";
connectAttr "place2dTexture2.vt2" "file16.vt2";
connectAttr "place2dTexture2.vt3" "file16.vt3";
connectAttr "place2dTexture2.vc1" "file16.vc1";
connectAttr "CementSkin.output_metallic" "Heavy_Cracked_Concrete_Sidewalk_01_metallic.sbs"
		;
connectAttr "CementSkin.rsw" "Heavy_Cracked_Concrete_Sidewalk_01_metallic.rsw";
connectAttr "CementSkin.cext" "Heavy_Cracked_Concrete_Sidewalk_01_metallic.cext"
		;
connectAttr "CementSkin.hext" "Heavy_Cracked_Concrete_Sidewalk_01_metallic.hext"
		;
connectAttr "CementSkin.cfld" "Heavy_Cracked_Concrete_Sidewalk_01_metallic.cprx"
		;
connectAttr "place2dTexture2.o" "Heavy_Cracked_Concrete_Sidewalk_01_metallic.uv"
		;
connectAttr "place2dTexture2.ofs" "Heavy_Cracked_Concrete_Sidewalk_01_metallic.fs"
		;
connectAttr ":defaultColorMgtGlobals.cme" "file17.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file17.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file17.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file17.ws";
connectAttr "Heavy_Cracked_Concrete_Sidewalk_01_metallic.cpth" "file17.ftn";
connectAttr "place2dTexture2.o" "file17.uv";
connectAttr "place2dTexture2.ofs" "file17.fs";
connectAttr "place2dTexture2.c" "file17.c";
connectAttr "place2dTexture2.tf" "file17.tf";
connectAttr "place2dTexture2.rf" "file17.rf";
connectAttr "place2dTexture2.mu" "file17.mu";
connectAttr "place2dTexture2.mv" "file17.mv";
connectAttr "place2dTexture2.s" "file17.s";
connectAttr "place2dTexture2.wu" "file17.wu";
connectAttr "place2dTexture2.wv" "file17.wv";
connectAttr "place2dTexture2.re" "file17.re";
connectAttr "place2dTexture2.of" "file17.of";
connectAttr "place2dTexture2.r" "file17.ro";
connectAttr "place2dTexture2.n" "file17.n";
connectAttr "place2dTexture2.vt1" "file17.vt1";
connectAttr "place2dTexture2.vt2" "file17.vt2";
connectAttr "place2dTexture2.vt3" "file17.vt3";
connectAttr "place2dTexture2.vc1" "file17.vc1";
connectAttr "CementSkin.output_specularlevel" "Heavy_Cracked_Concrete_Sidewalk_01_specularlevel.sbs"
		;
connectAttr "CementSkin.rsw" "Heavy_Cracked_Concrete_Sidewalk_01_specularlevel.rsw"
		;
connectAttr "CementSkin.cext" "Heavy_Cracked_Concrete_Sidewalk_01_specularlevel.cext"
		;
connectAttr "CementSkin.hext" "Heavy_Cracked_Concrete_Sidewalk_01_specularlevel.hext"
		;
connectAttr "CementSkin.cfld" "Heavy_Cracked_Concrete_Sidewalk_01_specularlevel.cprx"
		;
connectAttr "place2dTexture2.o" "Heavy_Cracked_Concrete_Sidewalk_01_specularlevel.uv"
		;
connectAttr "place2dTexture2.ofs" "Heavy_Cracked_Concrete_Sidewalk_01_specularlevel.fs"
		;
connectAttr ":defaultColorMgtGlobals.cme" "file18.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file18.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file18.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file18.ws";
connectAttr "Heavy_Cracked_Concrete_Sidewalk_01_specularlevel.cpth" "file18.ftn"
		;
connectAttr "place2dTexture2.o" "file18.uv";
connectAttr "place2dTexture2.ofs" "file18.fs";
connectAttr "place2dTexture2.c" "file18.c";
connectAttr "place2dTexture2.tf" "file18.tf";
connectAttr "place2dTexture2.rf" "file18.rf";
connectAttr "place2dTexture2.mu" "file18.mu";
connectAttr "place2dTexture2.mv" "file18.mv";
connectAttr "place2dTexture2.s" "file18.s";
connectAttr "place2dTexture2.wu" "file18.wu";
connectAttr "place2dTexture2.wv" "file18.wv";
connectAttr "place2dTexture2.re" "file18.re";
connectAttr "place2dTexture2.of" "file18.of";
connectAttr "place2dTexture2.r" "file18.ro";
connectAttr "place2dTexture2.n" "file18.n";
connectAttr "place2dTexture2.vt1" "file18.vt1";
connectAttr "place2dTexture2.vt2" "file18.vt2";
connectAttr "place2dTexture2.vt3" "file18.vt3";
connectAttr "place2dTexture2.vc1" "file18.vc1";
connectAttr "CementSkin.output_ambientocclusion" "Heavy_Cracked_Concrete_Sidewalk_01_ambientocclusion.sbs"
		;
connectAttr "CementSkin.rsw" "Heavy_Cracked_Concrete_Sidewalk_01_ambientocclusion.rsw"
		;
connectAttr "CementSkin.cext" "Heavy_Cracked_Concrete_Sidewalk_01_ambientocclusion.cext"
		;
connectAttr "CementSkin.hext" "Heavy_Cracked_Concrete_Sidewalk_01_ambientocclusion.hext"
		;
connectAttr "CementSkin.cfld" "Heavy_Cracked_Concrete_Sidewalk_01_ambientocclusion.cprx"
		;
connectAttr "place2dTexture2.o" "Heavy_Cracked_Concrete_Sidewalk_01_ambientocclusion.uv"
		;
connectAttr "place2dTexture2.ofs" "Heavy_Cracked_Concrete_Sidewalk_01_ambientocclusion.fs"
		;
connectAttr ":defaultColorMgtGlobals.cme" "file19.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file19.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file19.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file19.ws";
connectAttr "Heavy_Cracked_Concrete_Sidewalk_01_ambientocclusion.cpth" "file19.ftn"
		;
connectAttr "place2dTexture2.o" "file19.uv";
connectAttr "place2dTexture2.ofs" "file19.fs";
connectAttr "place2dTexture2.c" "file19.c";
connectAttr "place2dTexture2.tf" "file19.tf";
connectAttr "place2dTexture2.rf" "file19.rf";
connectAttr "place2dTexture2.mu" "file19.mu";
connectAttr "place2dTexture2.mv" "file19.mv";
connectAttr "place2dTexture2.s" "file19.s";
connectAttr "place2dTexture2.wu" "file19.wu";
connectAttr "place2dTexture2.wv" "file19.wv";
connectAttr "place2dTexture2.re" "file19.re";
connectAttr "place2dTexture2.of" "file19.of";
connectAttr "place2dTexture2.r" "file19.ro";
connectAttr "place2dTexture2.n" "file19.n";
connectAttr "place2dTexture2.vt1" "file19.vt1";
connectAttr "place2dTexture2.vt2" "file19.vt2";
connectAttr "place2dTexture2.vt3" "file19.vt3";
connectAttr "place2dTexture2.vc1" "file19.vc1";
connectAttr "file11.oc" "multiplyDivide2.i1";
connectAttr "file19.oc" "multiplyDivide2.i2";
connectAttr "multiplyDivide2.o" "CementSurface.base_color";
connectAttr "bump2d2.o" "CementSurface.n";
connectAttr "file13.oa" "CementSurface.specular_roughness";
connectAttr "file17.oa" "CementSurface.metalness";
connectAttr "CementSurface.out" "set2.ss";
connectAttr "displacementShader2.d" "set2.ds";
connectAttr "|hunte__dev__Wallsubnet__1_01|WallTool|uvunwrap1_0|uvunwrap1_0Shape.iog" "set2.dsm"
		 -na;
connectAttr "|Rock3|pasted__hunte__dev__NewRockGeo__1_01|pasted__RockGeo|pasted__uvunwrap1_0|pasted__uvunwrap1_0Shape.iog" "set2.dsm"
		 -na;
connectAttr "set2.msg" "materialInfo4.sg";
connectAttr "CementSurface.msg" "materialInfo4.m";
connectAttr "file11.msg" "materialInfo4.t" -na;
connectAttr "file12.oa" "bump2d2.bv";
connectAttr "file16.oa" "displacementShader2.d";
connectAttr "pasted__set1.msg" "pasted__materialInfo2.sg";
connectAttr "pasted__displacementShader1.d" "pasted__set1.ds";
connectAttr "pasted__file5.oc" "pasted__multiplyDivide1.i1";
connectAttr "pasted__file6.oc" "pasted__multiplyDivide1.i2";
connectAttr ":defaultColorMgtGlobals.cme" "pasted__file5.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "pasted__file5.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "pasted__file5.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "pasted__file5.ws";
connectAttr "pasted__Moon_Surface_basecolor.cpth" "pasted__file5.ftn";
connectAttr "pasted__place2dTexture1.o" "pasted__file5.uv";
connectAttr "pasted__place2dTexture1.ofs" "pasted__file5.fs";
connectAttr "pasted__place2dTexture1.c" "pasted__file5.c";
connectAttr "pasted__place2dTexture1.tf" "pasted__file5.tf";
connectAttr "pasted__place2dTexture1.rf" "pasted__file5.rf";
connectAttr "pasted__place2dTexture1.mu" "pasted__file5.mu";
connectAttr "pasted__place2dTexture1.mv" "pasted__file5.mv";
connectAttr "pasted__place2dTexture1.s" "pasted__file5.s";
connectAttr "pasted__place2dTexture1.wu" "pasted__file5.wu";
connectAttr "pasted__place2dTexture1.wv" "pasted__file5.wv";
connectAttr "pasted__place2dTexture1.re" "pasted__file5.re";
connectAttr "pasted__place2dTexture1.of" "pasted__file5.of";
connectAttr "pasted__place2dTexture1.r" "pasted__file5.ro";
connectAttr "pasted__place2dTexture1.n" "pasted__file5.n";
connectAttr "pasted__place2dTexture1.vt1" "pasted__file5.vt1";
connectAttr "pasted__place2dTexture1.vt2" "pasted__file5.vt2";
connectAttr "pasted__place2dTexture1.vt3" "pasted__file5.vt3";
connectAttr "pasted__place2dTexture1.vc1" "pasted__file5.vc1";
connectAttr "pasted__substanceNode1.output_basecolor" "pasted__Moon_Surface_basecolor.sbs"
		;
connectAttr "pasted__substanceNode1.rsw" "pasted__Moon_Surface_basecolor.rsw";
connectAttr "pasted__substanceNode1.cext" "pasted__Moon_Surface_basecolor.cext";
connectAttr "pasted__substanceNode1.hext" "pasted__Moon_Surface_basecolor.hext";
connectAttr "pasted__substanceNode1.cfld" "pasted__Moon_Surface_basecolor.cprx";
connectAttr "pasted__place2dTexture1.o" "pasted__Moon_Surface_basecolor.uv";
connectAttr "pasted__place2dTexture1.ofs" "pasted__Moon_Surface_basecolor.fs";
connectAttr "pasted__place2dTexture1.o" "pasted__substanceNode1.uv";
connectAttr "pasted__place2dTexture1.ofs" "pasted__substanceNode1.fs";
connectAttr ":defaultColorMgtGlobals.cme" "pasted__file6.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "pasted__file6.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "pasted__file6.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "pasted__file6.ws";
connectAttr "pasted__Moon_Surface_ambientocclusion.cpth" "pasted__file6.ftn";
connectAttr "pasted__place2dTexture1.o" "pasted__file6.uv";
connectAttr "pasted__place2dTexture1.ofs" "pasted__file6.fs";
connectAttr "pasted__place2dTexture1.c" "pasted__file6.c";
connectAttr "pasted__place2dTexture1.tf" "pasted__file6.tf";
connectAttr "pasted__place2dTexture1.rf" "pasted__file6.rf";
connectAttr "pasted__place2dTexture1.mu" "pasted__file6.mu";
connectAttr "pasted__place2dTexture1.mv" "pasted__file6.mv";
connectAttr "pasted__place2dTexture1.s" "pasted__file6.s";
connectAttr "pasted__place2dTexture1.wu" "pasted__file6.wu";
connectAttr "pasted__place2dTexture1.wv" "pasted__file6.wv";
connectAttr "pasted__place2dTexture1.re" "pasted__file6.re";
connectAttr "pasted__place2dTexture1.of" "pasted__file6.of";
connectAttr "pasted__place2dTexture1.r" "pasted__file6.ro";
connectAttr "pasted__place2dTexture1.n" "pasted__file6.n";
connectAttr "pasted__place2dTexture1.vt1" "pasted__file6.vt1";
connectAttr "pasted__place2dTexture1.vt2" "pasted__file6.vt2";
connectAttr "pasted__place2dTexture1.vt3" "pasted__file6.vt3";
connectAttr "pasted__place2dTexture1.vc1" "pasted__file6.vc1";
connectAttr "pasted__substanceNode1.output_ambientocclusion" "pasted__Moon_Surface_ambientocclusion.sbs"
		;
connectAttr "pasted__substanceNode1.rsw" "pasted__Moon_Surface_ambientocclusion.rsw"
		;
connectAttr "pasted__substanceNode1.cext" "pasted__Moon_Surface_ambientocclusion.cext"
		;
connectAttr "pasted__substanceNode1.hext" "pasted__Moon_Surface_ambientocclusion.hext"
		;
connectAttr "pasted__substanceNode1.cfld" "pasted__Moon_Surface_ambientocclusion.cprx"
		;
connectAttr "pasted__place2dTexture1.o" "pasted__Moon_Surface_ambientocclusion.uv"
		;
connectAttr "pasted__place2dTexture1.ofs" "pasted__Moon_Surface_ambientocclusion.fs"
		;
connectAttr "pasted__file7.oa" "pasted__bump2d1.bv";
connectAttr ":defaultColorMgtGlobals.cme" "pasted__file7.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "pasted__file7.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "pasted__file7.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "pasted__file7.ws";
connectAttr "pasted__Moon_Surface_normal.cpth" "pasted__file7.ftn";
connectAttr "pasted__place2dTexture1.o" "pasted__file7.uv";
connectAttr "pasted__place2dTexture1.ofs" "pasted__file7.fs";
connectAttr "pasted__place2dTexture1.c" "pasted__file7.c";
connectAttr "pasted__place2dTexture1.tf" "pasted__file7.tf";
connectAttr "pasted__place2dTexture1.rf" "pasted__file7.rf";
connectAttr "pasted__place2dTexture1.mu" "pasted__file7.mu";
connectAttr "pasted__place2dTexture1.mv" "pasted__file7.mv";
connectAttr "pasted__place2dTexture1.s" "pasted__file7.s";
connectAttr "pasted__place2dTexture1.wu" "pasted__file7.wu";
connectAttr "pasted__place2dTexture1.wv" "pasted__file7.wv";
connectAttr "pasted__place2dTexture1.re" "pasted__file7.re";
connectAttr "pasted__place2dTexture1.of" "pasted__file7.of";
connectAttr "pasted__place2dTexture1.r" "pasted__file7.ro";
connectAttr "pasted__place2dTexture1.n" "pasted__file7.n";
connectAttr "pasted__place2dTexture1.vt1" "pasted__file7.vt1";
connectAttr "pasted__place2dTexture1.vt2" "pasted__file7.vt2";
connectAttr "pasted__place2dTexture1.vt3" "pasted__file7.vt3";
connectAttr "pasted__place2dTexture1.vc1" "pasted__file7.vc1";
connectAttr "pasted__substanceNode1.output_normal" "pasted__Moon_Surface_normal.sbs"
		;
connectAttr "pasted__substanceNode1.rsw" "pasted__Moon_Surface_normal.rsw";
connectAttr "pasted__substanceNode1.cext" "pasted__Moon_Surface_normal.cext";
connectAttr "pasted__substanceNode1.hext" "pasted__Moon_Surface_normal.hext";
connectAttr "pasted__substanceNode1.cfld" "pasted__Moon_Surface_normal.cprx";
connectAttr "pasted__place2dTexture1.o" "pasted__Moon_Surface_normal.uv";
connectAttr "pasted__place2dTexture1.ofs" "pasted__Moon_Surface_normal.fs";
connectAttr ":defaultColorMgtGlobals.cme" "pasted__file4.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "pasted__file4.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "pasted__file4.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "pasted__file4.ws";
connectAttr "pasted__Moon_Surface_roughness.cpth" "pasted__file4.ftn";
connectAttr "pasted__place2dTexture1.o" "pasted__file4.uv";
connectAttr "pasted__place2dTexture1.ofs" "pasted__file4.fs";
connectAttr "pasted__place2dTexture1.c" "pasted__file4.c";
connectAttr "pasted__place2dTexture1.tf" "pasted__file4.tf";
connectAttr "pasted__place2dTexture1.rf" "pasted__file4.rf";
connectAttr "pasted__place2dTexture1.mu" "pasted__file4.mu";
connectAttr "pasted__place2dTexture1.mv" "pasted__file4.mv";
connectAttr "pasted__place2dTexture1.s" "pasted__file4.s";
connectAttr "pasted__place2dTexture1.wu" "pasted__file4.wu";
connectAttr "pasted__place2dTexture1.wv" "pasted__file4.wv";
connectAttr "pasted__place2dTexture1.re" "pasted__file4.re";
connectAttr "pasted__place2dTexture1.of" "pasted__file4.of";
connectAttr "pasted__place2dTexture1.r" "pasted__file4.ro";
connectAttr "pasted__place2dTexture1.n" "pasted__file4.n";
connectAttr "pasted__place2dTexture1.vt1" "pasted__file4.vt1";
connectAttr "pasted__place2dTexture1.vt2" "pasted__file4.vt2";
connectAttr "pasted__place2dTexture1.vt3" "pasted__file4.vt3";
connectAttr "pasted__place2dTexture1.vc1" "pasted__file4.vc1";
connectAttr "pasted__substanceNode1.output_roughness" "pasted__Moon_Surface_roughness.sbs"
		;
connectAttr "pasted__substanceNode1.rsw" "pasted__Moon_Surface_roughness.rsw";
connectAttr "pasted__substanceNode1.cext" "pasted__Moon_Surface_roughness.cext";
connectAttr "pasted__substanceNode1.hext" "pasted__Moon_Surface_roughness.hext";
connectAttr "pasted__substanceNode1.cfld" "pasted__Moon_Surface_roughness.cprx";
connectAttr "pasted__place2dTexture1.o" "pasted__Moon_Surface_roughness.uv";
connectAttr "pasted__place2dTexture1.ofs" "pasted__Moon_Surface_roughness.fs";
connectAttr ":defaultColorMgtGlobals.cme" "pasted__file3.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "pasted__file3.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "pasted__file3.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "pasted__file3.ws";
connectAttr "pasted__Moon_Surface_metallic.cpth" "pasted__file3.ftn";
connectAttr "pasted__place2dTexture1.o" "pasted__file3.uv";
connectAttr "pasted__place2dTexture1.ofs" "pasted__file3.fs";
connectAttr "pasted__place2dTexture1.c" "pasted__file3.c";
connectAttr "pasted__place2dTexture1.tf" "pasted__file3.tf";
connectAttr "pasted__place2dTexture1.rf" "pasted__file3.rf";
connectAttr "pasted__place2dTexture1.mu" "pasted__file3.mu";
connectAttr "pasted__place2dTexture1.mv" "pasted__file3.mv";
connectAttr "pasted__place2dTexture1.s" "pasted__file3.s";
connectAttr "pasted__place2dTexture1.wu" "pasted__file3.wu";
connectAttr "pasted__place2dTexture1.wv" "pasted__file3.wv";
connectAttr "pasted__place2dTexture1.re" "pasted__file3.re";
connectAttr "pasted__place2dTexture1.of" "pasted__file3.of";
connectAttr "pasted__place2dTexture1.r" "pasted__file3.ro";
connectAttr "pasted__place2dTexture1.n" "pasted__file3.n";
connectAttr "pasted__place2dTexture1.vt1" "pasted__file3.vt1";
connectAttr "pasted__place2dTexture1.vt2" "pasted__file3.vt2";
connectAttr "pasted__place2dTexture1.vt3" "pasted__file3.vt3";
connectAttr "pasted__place2dTexture1.vc1" "pasted__file3.vc1";
connectAttr "pasted__substanceNode1.output_metallic" "pasted__Moon_Surface_metallic.sbs"
		;
connectAttr "pasted__substanceNode1.rsw" "pasted__Moon_Surface_metallic.rsw";
connectAttr "pasted__substanceNode1.cext" "pasted__Moon_Surface_metallic.cext";
connectAttr "pasted__substanceNode1.hext" "pasted__Moon_Surface_metallic.hext";
connectAttr "pasted__substanceNode1.cfld" "pasted__Moon_Surface_metallic.cprx";
connectAttr "pasted__place2dTexture1.o" "pasted__Moon_Surface_metallic.uv";
connectAttr "pasted__place2dTexture1.ofs" "pasted__Moon_Surface_metallic.fs";
connectAttr "pasted__file8.oa" "pasted__displacementShader1.d";
connectAttr ":defaultColorMgtGlobals.cme" "pasted__file8.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "pasted__file8.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "pasted__file8.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "pasted__file8.ws";
connectAttr "pasted__Moon_Surface_height.cpth" "pasted__file8.ftn";
connectAttr "pasted__place2dTexture1.o" "pasted__file8.uv";
connectAttr "pasted__place2dTexture1.ofs" "pasted__file8.fs";
connectAttr "pasted__place2dTexture1.c" "pasted__file8.c";
connectAttr "pasted__place2dTexture1.tf" "pasted__file8.tf";
connectAttr "pasted__place2dTexture1.rf" "pasted__file8.rf";
connectAttr "pasted__place2dTexture1.mu" "pasted__file8.mu";
connectAttr "pasted__place2dTexture1.mv" "pasted__file8.mv";
connectAttr "pasted__place2dTexture1.s" "pasted__file8.s";
connectAttr "pasted__place2dTexture1.wu" "pasted__file8.wu";
connectAttr "pasted__place2dTexture1.wv" "pasted__file8.wv";
connectAttr "pasted__place2dTexture1.re" "pasted__file8.re";
connectAttr "pasted__place2dTexture1.of" "pasted__file8.of";
connectAttr "pasted__place2dTexture1.r" "pasted__file8.ro";
connectAttr "pasted__place2dTexture1.n" "pasted__file8.n";
connectAttr "pasted__place2dTexture1.vt1" "pasted__file8.vt1";
connectAttr "pasted__place2dTexture1.vt2" "pasted__file8.vt2";
connectAttr "pasted__place2dTexture1.vt3" "pasted__file8.vt3";
connectAttr "pasted__place2dTexture1.vc1" "pasted__file8.vc1";
connectAttr "pasted__substanceNode1.output_height" "pasted__Moon_Surface_height.sbs"
		;
connectAttr "pasted__substanceNode1.rsw" "pasted__Moon_Surface_height.rsw";
connectAttr "pasted__substanceNode1.cext" "pasted__Moon_Surface_height.cext";
connectAttr "pasted__substanceNode1.hext" "pasted__Moon_Surface_height.hext";
connectAttr "pasted__substanceNode1.cfld" "pasted__Moon_Surface_height.cprx";
connectAttr "pasted__place2dTexture1.o" "pasted__Moon_Surface_height.uv";
connectAttr "pasted__place2dTexture1.ofs" "pasted__Moon_Surface_height.fs";
connectAttr "place2dTexture3.o" "substanceNode2.uv";
connectAttr "place2dTexture3.ofs" "substanceNode2.fs";
connectAttr "substanceNode2.output_diffuse" "Pine_Wood_Outdoor_Panelling_01_diffuse.sbs"
		;
connectAttr "substanceNode2.rsw" "Pine_Wood_Outdoor_Panelling_01_diffuse.rsw";
connectAttr "substanceNode2.cext" "Pine_Wood_Outdoor_Panelling_01_diffuse.cext";
connectAttr "substanceNode2.hext" "Pine_Wood_Outdoor_Panelling_01_diffuse.hext";
connectAttr "substanceNode2.cfld" "Pine_Wood_Outdoor_Panelling_01_diffuse.cprx";
connectAttr "place2dTexture3.o" "Pine_Wood_Outdoor_Panelling_01_diffuse.uv";
connectAttr "place2dTexture3.ofs" "Pine_Wood_Outdoor_Panelling_01_diffuse.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file20.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file20.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file20.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file20.ws";
connectAttr "Pine_Wood_Outdoor_Panelling_01_diffuse.cpth" "file20.ftn";
connectAttr "place2dTexture3.o" "file20.uv";
connectAttr "place2dTexture3.ofs" "file20.fs";
connectAttr "place2dTexture3.c" "file20.c";
connectAttr "place2dTexture3.tf" "file20.tf";
connectAttr "place2dTexture3.rf" "file20.rf";
connectAttr "place2dTexture3.mu" "file20.mu";
connectAttr "place2dTexture3.mv" "file20.mv";
connectAttr "place2dTexture3.s" "file20.s";
connectAttr "place2dTexture3.wu" "file20.wu";
connectAttr "place2dTexture3.wv" "file20.wv";
connectAttr "place2dTexture3.re" "file20.re";
connectAttr "place2dTexture3.of" "file20.of";
connectAttr "place2dTexture3.r" "file20.ro";
connectAttr "place2dTexture3.n" "file20.n";
connectAttr "place2dTexture3.vt1" "file20.vt1";
connectAttr "place2dTexture3.vt2" "file20.vt2";
connectAttr "place2dTexture3.vt3" "file20.vt3";
connectAttr "place2dTexture3.vc1" "file20.vc1";
connectAttr "substanceNode2.output_basecolor" "Pine_Wood_Outdoor_Panelling_01_basecolor.sbs"
		;
connectAttr "substanceNode2.rsw" "Pine_Wood_Outdoor_Panelling_01_basecolor.rsw";
connectAttr "substanceNode2.cext" "Pine_Wood_Outdoor_Panelling_01_basecolor.cext"
		;
connectAttr "substanceNode2.hext" "Pine_Wood_Outdoor_Panelling_01_basecolor.hext"
		;
connectAttr "substanceNode2.cfld" "Pine_Wood_Outdoor_Panelling_01_basecolor.cprx"
		;
connectAttr "place2dTexture3.o" "Pine_Wood_Outdoor_Panelling_01_basecolor.uv";
connectAttr "place2dTexture3.ofs" "Pine_Wood_Outdoor_Panelling_01_basecolor.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file21.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file21.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file21.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file21.ws";
connectAttr "Pine_Wood_Outdoor_Panelling_01_basecolor.cpth" "file21.ftn";
connectAttr "place2dTexture3.o" "file21.uv";
connectAttr "place2dTexture3.ofs" "file21.fs";
connectAttr "place2dTexture3.c" "file21.c";
connectAttr "place2dTexture3.tf" "file21.tf";
connectAttr "place2dTexture3.rf" "file21.rf";
connectAttr "place2dTexture3.mu" "file21.mu";
connectAttr "place2dTexture3.mv" "file21.mv";
connectAttr "place2dTexture3.s" "file21.s";
connectAttr "place2dTexture3.wu" "file21.wu";
connectAttr "place2dTexture3.wv" "file21.wv";
connectAttr "place2dTexture3.re" "file21.re";
connectAttr "place2dTexture3.of" "file21.of";
connectAttr "place2dTexture3.r" "file21.ro";
connectAttr "place2dTexture3.n" "file21.n";
connectAttr "place2dTexture3.vt1" "file21.vt1";
connectAttr "place2dTexture3.vt2" "file21.vt2";
connectAttr "place2dTexture3.vt3" "file21.vt3";
connectAttr "place2dTexture3.vc1" "file21.vc1";
connectAttr "substanceNode2.output_normal" "Pine_Wood_Outdoor_Panelling_01_normal.sbs"
		;
connectAttr "substanceNode2.rsw" "Pine_Wood_Outdoor_Panelling_01_normal.rsw";
connectAttr "substanceNode2.cext" "Pine_Wood_Outdoor_Panelling_01_normal.cext";
connectAttr "substanceNode2.hext" "Pine_Wood_Outdoor_Panelling_01_normal.hext";
connectAttr "substanceNode2.cfld" "Pine_Wood_Outdoor_Panelling_01_normal.cprx";
connectAttr "place2dTexture3.o" "Pine_Wood_Outdoor_Panelling_01_normal.uv";
connectAttr "place2dTexture3.ofs" "Pine_Wood_Outdoor_Panelling_01_normal.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file22.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file22.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file22.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file22.ws";
connectAttr "Pine_Wood_Outdoor_Panelling_01_normal.cpth" "file22.ftn";
connectAttr "place2dTexture3.o" "file22.uv";
connectAttr "place2dTexture3.ofs" "file22.fs";
connectAttr "place2dTexture3.c" "file22.c";
connectAttr "place2dTexture3.tf" "file22.tf";
connectAttr "place2dTexture3.rf" "file22.rf";
connectAttr "place2dTexture3.mu" "file22.mu";
connectAttr "place2dTexture3.mv" "file22.mv";
connectAttr "place2dTexture3.s" "file22.s";
connectAttr "place2dTexture3.wu" "file22.wu";
connectAttr "place2dTexture3.wv" "file22.wv";
connectAttr "place2dTexture3.re" "file22.re";
connectAttr "place2dTexture3.of" "file22.of";
connectAttr "place2dTexture3.r" "file22.ro";
connectAttr "place2dTexture3.n" "file22.n";
connectAttr "place2dTexture3.vt1" "file22.vt1";
connectAttr "place2dTexture3.vt2" "file22.vt2";
connectAttr "place2dTexture3.vt3" "file22.vt3";
connectAttr "place2dTexture3.vc1" "file22.vc1";
connectAttr "substanceNode2.output_roughness" "Pine_Wood_Outdoor_Panelling_01_roughness.sbs"
		;
connectAttr "substanceNode2.rsw" "Pine_Wood_Outdoor_Panelling_01_roughness.rsw";
connectAttr "substanceNode2.cext" "Pine_Wood_Outdoor_Panelling_01_roughness.cext"
		;
connectAttr "substanceNode2.hext" "Pine_Wood_Outdoor_Panelling_01_roughness.hext"
		;
connectAttr "substanceNode2.cfld" "Pine_Wood_Outdoor_Panelling_01_roughness.cprx"
		;
connectAttr "place2dTexture3.o" "Pine_Wood_Outdoor_Panelling_01_roughness.uv";
connectAttr "place2dTexture3.ofs" "Pine_Wood_Outdoor_Panelling_01_roughness.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file23.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file23.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file23.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file23.ws";
connectAttr "Pine_Wood_Outdoor_Panelling_01_roughness.cpth" "file23.ftn";
connectAttr "place2dTexture3.o" "file23.uv";
connectAttr "place2dTexture3.ofs" "file23.fs";
connectAttr "place2dTexture3.c" "file23.c";
connectAttr "place2dTexture3.tf" "file23.tf";
connectAttr "place2dTexture3.rf" "file23.rf";
connectAttr "place2dTexture3.mu" "file23.mu";
connectAttr "place2dTexture3.mv" "file23.mv";
connectAttr "place2dTexture3.s" "file23.s";
connectAttr "place2dTexture3.wu" "file23.wu";
connectAttr "place2dTexture3.wv" "file23.wv";
connectAttr "place2dTexture3.re" "file23.re";
connectAttr "place2dTexture3.of" "file23.of";
connectAttr "place2dTexture3.r" "file23.ro";
connectAttr "place2dTexture3.n" "file23.n";
connectAttr "place2dTexture3.vt1" "file23.vt1";
connectAttr "place2dTexture3.vt2" "file23.vt2";
connectAttr "place2dTexture3.vt3" "file23.vt3";
connectAttr "place2dTexture3.vc1" "file23.vc1";
connectAttr "substanceNode2.output_metallic" "Pine_Wood_Outdoor_Panelling_01_metallic.sbs"
		;
connectAttr "substanceNode2.rsw" "Pine_Wood_Outdoor_Panelling_01_metallic.rsw";
connectAttr "substanceNode2.cext" "Pine_Wood_Outdoor_Panelling_01_metallic.cext"
		;
connectAttr "substanceNode2.hext" "Pine_Wood_Outdoor_Panelling_01_metallic.hext"
		;
connectAttr "substanceNode2.cfld" "Pine_Wood_Outdoor_Panelling_01_metallic.cprx"
		;
connectAttr "place2dTexture3.o" "Pine_Wood_Outdoor_Panelling_01_metallic.uv";
connectAttr "place2dTexture3.ofs" "Pine_Wood_Outdoor_Panelling_01_metallic.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file24.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file24.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file24.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file24.ws";
connectAttr "Pine_Wood_Outdoor_Panelling_01_metallic.cpth" "file24.ftn";
connectAttr "place2dTexture3.o" "file24.uv";
connectAttr "place2dTexture3.ofs" "file24.fs";
connectAttr "place2dTexture3.c" "file24.c";
connectAttr "place2dTexture3.tf" "file24.tf";
connectAttr "place2dTexture3.rf" "file24.rf";
connectAttr "place2dTexture3.mu" "file24.mu";
connectAttr "place2dTexture3.mv" "file24.mv";
connectAttr "place2dTexture3.s" "file24.s";
connectAttr "place2dTexture3.wu" "file24.wu";
connectAttr "place2dTexture3.wv" "file24.wv";
connectAttr "place2dTexture3.re" "file24.re";
connectAttr "place2dTexture3.of" "file24.of";
connectAttr "place2dTexture3.r" "file24.ro";
connectAttr "place2dTexture3.n" "file24.n";
connectAttr "place2dTexture3.vt1" "file24.vt1";
connectAttr "place2dTexture3.vt2" "file24.vt2";
connectAttr "place2dTexture3.vt3" "file24.vt3";
connectAttr "place2dTexture3.vc1" "file24.vc1";
connectAttr "substanceNode2.output_specularlevel" "Pine_Wood_Outdoor_Panelling_01_specularlevel.sbs"
		;
connectAttr "substanceNode2.rsw" "Pine_Wood_Outdoor_Panelling_01_specularlevel.rsw"
		;
connectAttr "substanceNode2.cext" "Pine_Wood_Outdoor_Panelling_01_specularlevel.cext"
		;
connectAttr "substanceNode2.hext" "Pine_Wood_Outdoor_Panelling_01_specularlevel.hext"
		;
connectAttr "substanceNode2.cfld" "Pine_Wood_Outdoor_Panelling_01_specularlevel.cprx"
		;
connectAttr "place2dTexture3.o" "Pine_Wood_Outdoor_Panelling_01_specularlevel.uv"
		;
connectAttr "place2dTexture3.ofs" "Pine_Wood_Outdoor_Panelling_01_specularlevel.fs"
		;
connectAttr ":defaultColorMgtGlobals.cme" "file25.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file25.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file25.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file25.ws";
connectAttr "Pine_Wood_Outdoor_Panelling_01_specularlevel.cpth" "file25.ftn";
connectAttr "place2dTexture3.o" "file25.uv";
connectAttr "place2dTexture3.ofs" "file25.fs";
connectAttr "place2dTexture3.c" "file25.c";
connectAttr "place2dTexture3.tf" "file25.tf";
connectAttr "place2dTexture3.rf" "file25.rf";
connectAttr "place2dTexture3.mu" "file25.mu";
connectAttr "place2dTexture3.mv" "file25.mv";
connectAttr "place2dTexture3.s" "file25.s";
connectAttr "place2dTexture3.wu" "file25.wu";
connectAttr "place2dTexture3.wv" "file25.wv";
connectAttr "place2dTexture3.re" "file25.re";
connectAttr "place2dTexture3.of" "file25.of";
connectAttr "place2dTexture3.r" "file25.ro";
connectAttr "place2dTexture3.n" "file25.n";
connectAttr "place2dTexture3.vt1" "file25.vt1";
connectAttr "place2dTexture3.vt2" "file25.vt2";
connectAttr "place2dTexture3.vt3" "file25.vt3";
connectAttr "place2dTexture3.vc1" "file25.vc1";
connectAttr "substanceNode2.output_height" "Pine_Wood_Outdoor_Panelling_01_height.sbs"
		;
connectAttr "substanceNode2.rsw" "Pine_Wood_Outdoor_Panelling_01_height.rsw";
connectAttr "substanceNode2.cext" "Pine_Wood_Outdoor_Panelling_01_height.cext";
connectAttr "substanceNode2.hext" "Pine_Wood_Outdoor_Panelling_01_height.hext";
connectAttr "substanceNode2.cfld" "Pine_Wood_Outdoor_Panelling_01_height.cprx";
connectAttr "place2dTexture3.o" "Pine_Wood_Outdoor_Panelling_01_height.uv";
connectAttr "place2dTexture3.ofs" "Pine_Wood_Outdoor_Panelling_01_height.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file26.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file26.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file26.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file26.ws";
connectAttr "Pine_Wood_Outdoor_Panelling_01_height.cpth" "file26.ftn";
connectAttr "place2dTexture3.o" "file26.uv";
connectAttr "place2dTexture3.ofs" "file26.fs";
connectAttr "place2dTexture3.c" "file26.c";
connectAttr "place2dTexture3.tf" "file26.tf";
connectAttr "place2dTexture3.rf" "file26.rf";
connectAttr "place2dTexture3.mu" "file26.mu";
connectAttr "place2dTexture3.mv" "file26.mv";
connectAttr "place2dTexture3.s" "file26.s";
connectAttr "place2dTexture3.wu" "file26.wu";
connectAttr "place2dTexture3.wv" "file26.wv";
connectAttr "place2dTexture3.re" "file26.re";
connectAttr "place2dTexture3.of" "file26.of";
connectAttr "place2dTexture3.r" "file26.ro";
connectAttr "place2dTexture3.n" "file26.n";
connectAttr "place2dTexture3.vt1" "file26.vt1";
connectAttr "place2dTexture3.vt2" "file26.vt2";
connectAttr "place2dTexture3.vt3" "file26.vt3";
connectAttr "place2dTexture3.vc1" "file26.vc1";
connectAttr "substanceNode2.output_ambientocclusion" "Pine_Wood_Outdoor_Panelling_01_ambientocclusion.sbs"
		;
connectAttr "substanceNode2.rsw" "Pine_Wood_Outdoor_Panelling_01_ambientocclusion.rsw"
		;
connectAttr "substanceNode2.cext" "Pine_Wood_Outdoor_Panelling_01_ambientocclusion.cext"
		;
connectAttr "substanceNode2.hext" "Pine_Wood_Outdoor_Panelling_01_ambientocclusion.hext"
		;
connectAttr "substanceNode2.cfld" "Pine_Wood_Outdoor_Panelling_01_ambientocclusion.cprx"
		;
connectAttr "place2dTexture3.o" "Pine_Wood_Outdoor_Panelling_01_ambientocclusion.uv"
		;
connectAttr "place2dTexture3.ofs" "Pine_Wood_Outdoor_Panelling_01_ambientocclusion.fs"
		;
connectAttr ":defaultColorMgtGlobals.cme" "file27.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file27.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file27.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file27.ws";
connectAttr "Pine_Wood_Outdoor_Panelling_01_ambientocclusion.cpth" "file27.ftn";
connectAttr "place2dTexture3.o" "file27.uv";
connectAttr "place2dTexture3.ofs" "file27.fs";
connectAttr "place2dTexture3.c" "file27.c";
connectAttr "place2dTexture3.tf" "file27.tf";
connectAttr "place2dTexture3.rf" "file27.rf";
connectAttr "place2dTexture3.mu" "file27.mu";
connectAttr "place2dTexture3.mv" "file27.mv";
connectAttr "place2dTexture3.s" "file27.s";
connectAttr "place2dTexture3.wu" "file27.wu";
connectAttr "place2dTexture3.wv" "file27.wv";
connectAttr "place2dTexture3.re" "file27.re";
connectAttr "place2dTexture3.of" "file27.of";
connectAttr "place2dTexture3.r" "file27.ro";
connectAttr "place2dTexture3.n" "file27.n";
connectAttr "place2dTexture3.vt1" "file27.vt1";
connectAttr "place2dTexture3.vt2" "file27.vt2";
connectAttr "place2dTexture3.vt3" "file27.vt3";
connectAttr "place2dTexture3.vc1" "file27.vc1";
connectAttr "file21.oc" "multiplyDivide3.i1";
connectAttr "file27.oc" "multiplyDivide3.i2";
connectAttr "CutWood.out" "set3.ss";
connectAttr "displacementShader3.d" "set3.ds";
connectAttr "copytopoints1_0Shape.iog" "set3.dsm" -na;
connectAttr "set3.msg" "materialInfo5.sg";
connectAttr "CutWood.msg" "materialInfo5.m";
connectAttr "CutWood.msg" "materialInfo5.t" -na;
connectAttr "file22.oa" "bump2d3.bv";
connectAttr "file26.oa" "displacementShader3.d";
connectAttr "file24.oa" "CutWood.metalness";
connectAttr "multiplyDivide3.o" "CutWood.base_color";
connectAttr "bump2d3.o" "CutWood.n";
connectAttr "file23.oa" "CutWood.specular_roughness";
connectAttr "pasted__set3.msg" "pasted__materialInfo5.sg";
connectAttr "pasted__CutWood.msg" "pasted__materialInfo5.m";
connectAttr "pasted__CutWood.msg" "pasted__materialInfo5.t" -na;
connectAttr "pasted__CutWood.out" "pasted__set3.ss";
connectAttr "pasted__displacementShader3.d" "pasted__set3.ds";
connectAttr "pasted__copytopoints1_0Shape.iog" "pasted__set3.dsm" -na;
connectAttr "pasted__file24.oa" "pasted__CutWood.metalness";
connectAttr "pasted__multiplyDivide3.o" "pasted__CutWood.base_color";
connectAttr "pasted__bump2d3.o" "pasted__CutWood.n";
connectAttr "pasted__file23.oa" "pasted__CutWood.specular_roughness";
connectAttr "pasted__file21.oc" "pasted__multiplyDivide3.i1";
connectAttr "pasted__file27.oc" "pasted__multiplyDivide3.i2";
connectAttr ":defaultColorMgtGlobals.cme" "pasted__file21.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "pasted__file21.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "pasted__file21.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "pasted__file21.ws";
connectAttr "pasted__Pine_Wood_Outdoor_Panelling_01_basecolor.cpth" "pasted__file21.ftn"
		;
connectAttr "pasted__place2dTexture3.o" "pasted__file21.uv";
connectAttr "pasted__place2dTexture3.ofs" "pasted__file21.fs";
connectAttr "pasted__place2dTexture3.c" "pasted__file21.c";
connectAttr "pasted__place2dTexture3.tf" "pasted__file21.tf";
connectAttr "pasted__place2dTexture3.rf" "pasted__file21.rf";
connectAttr "pasted__place2dTexture3.mu" "pasted__file21.mu";
connectAttr "pasted__place2dTexture3.mv" "pasted__file21.mv";
connectAttr "pasted__place2dTexture3.s" "pasted__file21.s";
connectAttr "pasted__place2dTexture3.wu" "pasted__file21.wu";
connectAttr "pasted__place2dTexture3.wv" "pasted__file21.wv";
connectAttr "pasted__place2dTexture3.re" "pasted__file21.re";
connectAttr "pasted__place2dTexture3.of" "pasted__file21.of";
connectAttr "pasted__place2dTexture3.r" "pasted__file21.ro";
connectAttr "pasted__place2dTexture3.n" "pasted__file21.n";
connectAttr "pasted__place2dTexture3.vt1" "pasted__file21.vt1";
connectAttr "pasted__place2dTexture3.vt2" "pasted__file21.vt2";
connectAttr "pasted__place2dTexture3.vt3" "pasted__file21.vt3";
connectAttr "pasted__place2dTexture3.vc1" "pasted__file21.vc1";
connectAttr "pasted__substanceNode2.output_basecolor" "pasted__Pine_Wood_Outdoor_Panelling_01_basecolor.sbs"
		;
connectAttr "pasted__substanceNode2.rsw" "pasted__Pine_Wood_Outdoor_Panelling_01_basecolor.rsw"
		;
connectAttr "pasted__substanceNode2.cext" "pasted__Pine_Wood_Outdoor_Panelling_01_basecolor.cext"
		;
connectAttr "pasted__substanceNode2.hext" "pasted__Pine_Wood_Outdoor_Panelling_01_basecolor.hext"
		;
connectAttr "pasted__substanceNode2.cfld" "pasted__Pine_Wood_Outdoor_Panelling_01_basecolor.cprx"
		;
connectAttr "pasted__place2dTexture3.o" "pasted__Pine_Wood_Outdoor_Panelling_01_basecolor.uv"
		;
connectAttr "pasted__place2dTexture3.ofs" "pasted__Pine_Wood_Outdoor_Panelling_01_basecolor.fs"
		;
connectAttr "pasted__place2dTexture3.o" "pasted__substanceNode2.uv";
connectAttr "pasted__place2dTexture3.ofs" "pasted__substanceNode2.fs";
connectAttr ":defaultColorMgtGlobals.cme" "pasted__file27.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "pasted__file27.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "pasted__file27.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "pasted__file27.ws";
connectAttr "pasted__Pine_Wood_Outdoor_Panelling_01_ambientocclusion.cpth" "pasted__file27.ftn"
		;
connectAttr "pasted__place2dTexture3.o" "pasted__file27.uv";
connectAttr "pasted__place2dTexture3.ofs" "pasted__file27.fs";
connectAttr "pasted__place2dTexture3.c" "pasted__file27.c";
connectAttr "pasted__place2dTexture3.tf" "pasted__file27.tf";
connectAttr "pasted__place2dTexture3.rf" "pasted__file27.rf";
connectAttr "pasted__place2dTexture3.mu" "pasted__file27.mu";
connectAttr "pasted__place2dTexture3.mv" "pasted__file27.mv";
connectAttr "pasted__place2dTexture3.s" "pasted__file27.s";
connectAttr "pasted__place2dTexture3.wu" "pasted__file27.wu";
connectAttr "pasted__place2dTexture3.wv" "pasted__file27.wv";
connectAttr "pasted__place2dTexture3.re" "pasted__file27.re";
connectAttr "pasted__place2dTexture3.of" "pasted__file27.of";
connectAttr "pasted__place2dTexture3.r" "pasted__file27.ro";
connectAttr "pasted__place2dTexture3.n" "pasted__file27.n";
connectAttr "pasted__place2dTexture3.vt1" "pasted__file27.vt1";
connectAttr "pasted__place2dTexture3.vt2" "pasted__file27.vt2";
connectAttr "pasted__place2dTexture3.vt3" "pasted__file27.vt3";
connectAttr "pasted__place2dTexture3.vc1" "pasted__file27.vc1";
connectAttr "pasted__substanceNode2.output_ambientocclusion" "pasted__Pine_Wood_Outdoor_Panelling_01_ambientocclusion.sbs"
		;
connectAttr "pasted__substanceNode2.rsw" "pasted__Pine_Wood_Outdoor_Panelling_01_ambientocclusion.rsw"
		;
connectAttr "pasted__substanceNode2.cext" "pasted__Pine_Wood_Outdoor_Panelling_01_ambientocclusion.cext"
		;
connectAttr "pasted__substanceNode2.hext" "pasted__Pine_Wood_Outdoor_Panelling_01_ambientocclusion.hext"
		;
connectAttr "pasted__substanceNode2.cfld" "pasted__Pine_Wood_Outdoor_Panelling_01_ambientocclusion.cprx"
		;
connectAttr "pasted__place2dTexture3.o" "pasted__Pine_Wood_Outdoor_Panelling_01_ambientocclusion.uv"
		;
connectAttr "pasted__place2dTexture3.ofs" "pasted__Pine_Wood_Outdoor_Panelling_01_ambientocclusion.fs"
		;
connectAttr "pasted__file22.oa" "pasted__bump2d3.bv";
connectAttr ":defaultColorMgtGlobals.cme" "pasted__file22.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "pasted__file22.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "pasted__file22.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "pasted__file22.ws";
connectAttr "pasted__Pine_Wood_Outdoor_Panelling_01_normal.cpth" "pasted__file22.ftn"
		;
connectAttr "pasted__place2dTexture3.o" "pasted__file22.uv";
connectAttr "pasted__place2dTexture3.ofs" "pasted__file22.fs";
connectAttr "pasted__place2dTexture3.c" "pasted__file22.c";
connectAttr "pasted__place2dTexture3.tf" "pasted__file22.tf";
connectAttr "pasted__place2dTexture3.rf" "pasted__file22.rf";
connectAttr "pasted__place2dTexture3.mu" "pasted__file22.mu";
connectAttr "pasted__place2dTexture3.mv" "pasted__file22.mv";
connectAttr "pasted__place2dTexture3.s" "pasted__file22.s";
connectAttr "pasted__place2dTexture3.wu" "pasted__file22.wu";
connectAttr "pasted__place2dTexture3.wv" "pasted__file22.wv";
connectAttr "pasted__place2dTexture3.re" "pasted__file22.re";
connectAttr "pasted__place2dTexture3.of" "pasted__file22.of";
connectAttr "pasted__place2dTexture3.r" "pasted__file22.ro";
connectAttr "pasted__place2dTexture3.n" "pasted__file22.n";
connectAttr "pasted__place2dTexture3.vt1" "pasted__file22.vt1";
connectAttr "pasted__place2dTexture3.vt2" "pasted__file22.vt2";
connectAttr "pasted__place2dTexture3.vt3" "pasted__file22.vt3";
connectAttr "pasted__place2dTexture3.vc1" "pasted__file22.vc1";
connectAttr "pasted__substanceNode2.output_normal" "pasted__Pine_Wood_Outdoor_Panelling_01_normal.sbs"
		;
connectAttr "pasted__substanceNode2.rsw" "pasted__Pine_Wood_Outdoor_Panelling_01_normal.rsw"
		;
connectAttr "pasted__substanceNode2.cext" "pasted__Pine_Wood_Outdoor_Panelling_01_normal.cext"
		;
connectAttr "pasted__substanceNode2.hext" "pasted__Pine_Wood_Outdoor_Panelling_01_normal.hext"
		;
connectAttr "pasted__substanceNode2.cfld" "pasted__Pine_Wood_Outdoor_Panelling_01_normal.cprx"
		;
connectAttr "pasted__place2dTexture3.o" "pasted__Pine_Wood_Outdoor_Panelling_01_normal.uv"
		;
connectAttr "pasted__place2dTexture3.ofs" "pasted__Pine_Wood_Outdoor_Panelling_01_normal.fs"
		;
connectAttr ":defaultColorMgtGlobals.cme" "pasted__file23.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "pasted__file23.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "pasted__file23.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "pasted__file23.ws";
connectAttr "pasted__Pine_Wood_Outdoor_Panelling_01_roughness.cpth" "pasted__file23.ftn"
		;
connectAttr "pasted__place2dTexture3.o" "pasted__file23.uv";
connectAttr "pasted__place2dTexture3.ofs" "pasted__file23.fs";
connectAttr "pasted__place2dTexture3.c" "pasted__file23.c";
connectAttr "pasted__place2dTexture3.tf" "pasted__file23.tf";
connectAttr "pasted__place2dTexture3.rf" "pasted__file23.rf";
connectAttr "pasted__place2dTexture3.mu" "pasted__file23.mu";
connectAttr "pasted__place2dTexture3.mv" "pasted__file23.mv";
connectAttr "pasted__place2dTexture3.s" "pasted__file23.s";
connectAttr "pasted__place2dTexture3.wu" "pasted__file23.wu";
connectAttr "pasted__place2dTexture3.wv" "pasted__file23.wv";
connectAttr "pasted__place2dTexture3.re" "pasted__file23.re";
connectAttr "pasted__place2dTexture3.of" "pasted__file23.of";
connectAttr "pasted__place2dTexture3.r" "pasted__file23.ro";
connectAttr "pasted__place2dTexture3.n" "pasted__file23.n";
connectAttr "pasted__place2dTexture3.vt1" "pasted__file23.vt1";
connectAttr "pasted__place2dTexture3.vt2" "pasted__file23.vt2";
connectAttr "pasted__place2dTexture3.vt3" "pasted__file23.vt3";
connectAttr "pasted__place2dTexture3.vc1" "pasted__file23.vc1";
connectAttr "pasted__substanceNode2.output_roughness" "pasted__Pine_Wood_Outdoor_Panelling_01_roughness.sbs"
		;
connectAttr "pasted__substanceNode2.rsw" "pasted__Pine_Wood_Outdoor_Panelling_01_roughness.rsw"
		;
connectAttr "pasted__substanceNode2.cext" "pasted__Pine_Wood_Outdoor_Panelling_01_roughness.cext"
		;
connectAttr "pasted__substanceNode2.hext" "pasted__Pine_Wood_Outdoor_Panelling_01_roughness.hext"
		;
connectAttr "pasted__substanceNode2.cfld" "pasted__Pine_Wood_Outdoor_Panelling_01_roughness.cprx"
		;
connectAttr "pasted__place2dTexture3.o" "pasted__Pine_Wood_Outdoor_Panelling_01_roughness.uv"
		;
connectAttr "pasted__place2dTexture3.ofs" "pasted__Pine_Wood_Outdoor_Panelling_01_roughness.fs"
		;
connectAttr ":defaultColorMgtGlobals.cme" "pasted__file24.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "pasted__file24.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "pasted__file24.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "pasted__file24.ws";
connectAttr "pasted__Pine_Wood_Outdoor_Panelling_01_metallic.cpth" "pasted__file24.ftn"
		;
connectAttr "pasted__place2dTexture3.o" "pasted__file24.uv";
connectAttr "pasted__place2dTexture3.ofs" "pasted__file24.fs";
connectAttr "pasted__place2dTexture3.c" "pasted__file24.c";
connectAttr "pasted__place2dTexture3.tf" "pasted__file24.tf";
connectAttr "pasted__place2dTexture3.rf" "pasted__file24.rf";
connectAttr "pasted__place2dTexture3.mu" "pasted__file24.mu";
connectAttr "pasted__place2dTexture3.mv" "pasted__file24.mv";
connectAttr "pasted__place2dTexture3.s" "pasted__file24.s";
connectAttr "pasted__place2dTexture3.wu" "pasted__file24.wu";
connectAttr "pasted__place2dTexture3.wv" "pasted__file24.wv";
connectAttr "pasted__place2dTexture3.re" "pasted__file24.re";
connectAttr "pasted__place2dTexture3.of" "pasted__file24.of";
connectAttr "pasted__place2dTexture3.r" "pasted__file24.ro";
connectAttr "pasted__place2dTexture3.n" "pasted__file24.n";
connectAttr "pasted__place2dTexture3.vt1" "pasted__file24.vt1";
connectAttr "pasted__place2dTexture3.vt2" "pasted__file24.vt2";
connectAttr "pasted__place2dTexture3.vt3" "pasted__file24.vt3";
connectAttr "pasted__place2dTexture3.vc1" "pasted__file24.vc1";
connectAttr "pasted__substanceNode2.output_metallic" "pasted__Pine_Wood_Outdoor_Panelling_01_metallic.sbs"
		;
connectAttr "pasted__substanceNode2.rsw" "pasted__Pine_Wood_Outdoor_Panelling_01_metallic.rsw"
		;
connectAttr "pasted__substanceNode2.cext" "pasted__Pine_Wood_Outdoor_Panelling_01_metallic.cext"
		;
connectAttr "pasted__substanceNode2.hext" "pasted__Pine_Wood_Outdoor_Panelling_01_metallic.hext"
		;
connectAttr "pasted__substanceNode2.cfld" "pasted__Pine_Wood_Outdoor_Panelling_01_metallic.cprx"
		;
connectAttr "pasted__place2dTexture3.o" "pasted__Pine_Wood_Outdoor_Panelling_01_metallic.uv"
		;
connectAttr "pasted__place2dTexture3.ofs" "pasted__Pine_Wood_Outdoor_Panelling_01_metallic.fs"
		;
connectAttr "pasted__file26.oa" "pasted__displacementShader3.d";
connectAttr ":defaultColorMgtGlobals.cme" "pasted__file26.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "pasted__file26.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "pasted__file26.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "pasted__file26.ws";
connectAttr "pasted__Pine_Wood_Outdoor_Panelling_01_height.cpth" "pasted__file26.ftn"
		;
connectAttr "pasted__place2dTexture3.o" "pasted__file26.uv";
connectAttr "pasted__place2dTexture3.ofs" "pasted__file26.fs";
connectAttr "pasted__place2dTexture3.c" "pasted__file26.c";
connectAttr "pasted__place2dTexture3.tf" "pasted__file26.tf";
connectAttr "pasted__place2dTexture3.rf" "pasted__file26.rf";
connectAttr "pasted__place2dTexture3.mu" "pasted__file26.mu";
connectAttr "pasted__place2dTexture3.mv" "pasted__file26.mv";
connectAttr "pasted__place2dTexture3.s" "pasted__file26.s";
connectAttr "pasted__place2dTexture3.wu" "pasted__file26.wu";
connectAttr "pasted__place2dTexture3.wv" "pasted__file26.wv";
connectAttr "pasted__place2dTexture3.re" "pasted__file26.re";
connectAttr "pasted__place2dTexture3.of" "pasted__file26.of";
connectAttr "pasted__place2dTexture3.r" "pasted__file26.ro";
connectAttr "pasted__place2dTexture3.n" "pasted__file26.n";
connectAttr "pasted__place2dTexture3.vt1" "pasted__file26.vt1";
connectAttr "pasted__place2dTexture3.vt2" "pasted__file26.vt2";
connectAttr "pasted__place2dTexture3.vt3" "pasted__file26.vt3";
connectAttr "pasted__place2dTexture3.vc1" "pasted__file26.vc1";
connectAttr "pasted__substanceNode2.output_height" "pasted__Pine_Wood_Outdoor_Panelling_01_height.sbs"
		;
connectAttr "pasted__substanceNode2.rsw" "pasted__Pine_Wood_Outdoor_Panelling_01_height.rsw"
		;
connectAttr "pasted__substanceNode2.cext" "pasted__Pine_Wood_Outdoor_Panelling_01_height.cext"
		;
connectAttr "pasted__substanceNode2.hext" "pasted__Pine_Wood_Outdoor_Panelling_01_height.hext"
		;
connectAttr "pasted__substanceNode2.cfld" "pasted__Pine_Wood_Outdoor_Panelling_01_height.cprx"
		;
connectAttr "pasted__place2dTexture3.o" "pasted__Pine_Wood_Outdoor_Panelling_01_height.uv"
		;
connectAttr "pasted__place2dTexture3.ofs" "pasted__Pine_Wood_Outdoor_Panelling_01_height.fs"
		;
connectAttr "place2dTexture4.o" "CarvedWood.uv";
connectAttr "place2dTexture4.ofs" "CarvedWood.fs";
connectAttr "CarvedWood.output_basecolor" "Carved_Wood_basecolor.sbs";
connectAttr "CarvedWood.rsw" "Carved_Wood_basecolor.rsw";
connectAttr "CarvedWood.cext" "Carved_Wood_basecolor.cext";
connectAttr "CarvedWood.hext" "Carved_Wood_basecolor.hext";
connectAttr "CarvedWood.cfld" "Carved_Wood_basecolor.cprx";
connectAttr "place2dTexture4.o" "Carved_Wood_basecolor.uv";
connectAttr "place2dTexture4.ofs" "Carved_Wood_basecolor.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file28.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file28.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file28.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file28.ws";
connectAttr "Carved_Wood_basecolor.cpth" "file28.ftn";
connectAttr "place2dTexture4.o" "file28.uv";
connectAttr "place2dTexture4.ofs" "file28.fs";
connectAttr "place2dTexture4.c" "file28.c";
connectAttr "place2dTexture4.tf" "file28.tf";
connectAttr "place2dTexture4.rf" "file28.rf";
connectAttr "place2dTexture4.mu" "file28.mu";
connectAttr "place2dTexture4.mv" "file28.mv";
connectAttr "place2dTexture4.s" "file28.s";
connectAttr "place2dTexture4.wu" "file28.wu";
connectAttr "place2dTexture4.wv" "file28.wv";
connectAttr "place2dTexture4.re" "file28.re";
connectAttr "place2dTexture4.of" "file28.of";
connectAttr "place2dTexture4.r" "file28.ro";
connectAttr "place2dTexture4.n" "file28.n";
connectAttr "place2dTexture4.vt1" "file28.vt1";
connectAttr "place2dTexture4.vt2" "file28.vt2";
connectAttr "place2dTexture4.vt3" "file28.vt3";
connectAttr "place2dTexture4.vc1" "file28.vc1";
connectAttr "CarvedWood.output_normal" "Carved_Wood_normal.sbs";
connectAttr "CarvedWood.rsw" "Carved_Wood_normal.rsw";
connectAttr "CarvedWood.cext" "Carved_Wood_normal.cext";
connectAttr "CarvedWood.hext" "Carved_Wood_normal.hext";
connectAttr "CarvedWood.cfld" "Carved_Wood_normal.cprx";
connectAttr "place2dTexture4.o" "Carved_Wood_normal.uv";
connectAttr "place2dTexture4.ofs" "Carved_Wood_normal.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file29.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file29.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file29.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file29.ws";
connectAttr "Carved_Wood_normal.cpth" "file29.ftn";
connectAttr "place2dTexture4.o" "file29.uv";
connectAttr "place2dTexture4.ofs" "file29.fs";
connectAttr "place2dTexture4.c" "file29.c";
connectAttr "place2dTexture4.tf" "file29.tf";
connectAttr "place2dTexture4.rf" "file29.rf";
connectAttr "place2dTexture4.mu" "file29.mu";
connectAttr "place2dTexture4.mv" "file29.mv";
connectAttr "place2dTexture4.s" "file29.s";
connectAttr "place2dTexture4.wu" "file29.wu";
connectAttr "place2dTexture4.wv" "file29.wv";
connectAttr "place2dTexture4.re" "file29.re";
connectAttr "place2dTexture4.of" "file29.of";
connectAttr "place2dTexture4.r" "file29.ro";
connectAttr "place2dTexture4.n" "file29.n";
connectAttr "place2dTexture4.vt1" "file29.vt1";
connectAttr "place2dTexture4.vt2" "file29.vt2";
connectAttr "place2dTexture4.vt3" "file29.vt3";
connectAttr "place2dTexture4.vc1" "file29.vc1";
connectAttr "CarvedWood.output_roughness" "Carved_Wood_roughness.sbs";
connectAttr "CarvedWood.rsw" "Carved_Wood_roughness.rsw";
connectAttr "CarvedWood.cext" "Carved_Wood_roughness.cext";
connectAttr "CarvedWood.hext" "Carved_Wood_roughness.hext";
connectAttr "CarvedWood.cfld" "Carved_Wood_roughness.cprx";
connectAttr "place2dTexture4.o" "Carved_Wood_roughness.uv";
connectAttr "place2dTexture4.ofs" "Carved_Wood_roughness.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file30.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file30.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file30.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file30.ws";
connectAttr "Carved_Wood_roughness.cpth" "file30.ftn";
connectAttr "place2dTexture4.o" "file30.uv";
connectAttr "place2dTexture4.ofs" "file30.fs";
connectAttr "place2dTexture4.c" "file30.c";
connectAttr "place2dTexture4.tf" "file30.tf";
connectAttr "place2dTexture4.rf" "file30.rf";
connectAttr "place2dTexture4.mu" "file30.mu";
connectAttr "place2dTexture4.mv" "file30.mv";
connectAttr "place2dTexture4.s" "file30.s";
connectAttr "place2dTexture4.wu" "file30.wu";
connectAttr "place2dTexture4.wv" "file30.wv";
connectAttr "place2dTexture4.re" "file30.re";
connectAttr "place2dTexture4.of" "file30.of";
connectAttr "place2dTexture4.r" "file30.ro";
connectAttr "place2dTexture4.n" "file30.n";
connectAttr "place2dTexture4.vt1" "file30.vt1";
connectAttr "place2dTexture4.vt2" "file30.vt2";
connectAttr "place2dTexture4.vt3" "file30.vt3";
connectAttr "place2dTexture4.vc1" "file30.vc1";
connectAttr "CarvedWood.output_specularlevel" "Carved_Wood_specularlevel.sbs";
connectAttr "CarvedWood.rsw" "Carved_Wood_specularlevel.rsw";
connectAttr "CarvedWood.cext" "Carved_Wood_specularlevel.cext";
connectAttr "CarvedWood.hext" "Carved_Wood_specularlevel.hext";
connectAttr "CarvedWood.cfld" "Carved_Wood_specularlevel.cprx";
connectAttr "place2dTexture4.o" "Carved_Wood_specularlevel.uv";
connectAttr "place2dTexture4.ofs" "Carved_Wood_specularlevel.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file31.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file31.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file31.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file31.ws";
connectAttr "Carved_Wood_specularlevel.cpth" "file31.ftn";
connectAttr "place2dTexture4.o" "file31.uv";
connectAttr "place2dTexture4.ofs" "file31.fs";
connectAttr "place2dTexture4.c" "file31.c";
connectAttr "place2dTexture4.tf" "file31.tf";
connectAttr "place2dTexture4.rf" "file31.rf";
connectAttr "place2dTexture4.mu" "file31.mu";
connectAttr "place2dTexture4.mv" "file31.mv";
connectAttr "place2dTexture4.s" "file31.s";
connectAttr "place2dTexture4.wu" "file31.wu";
connectAttr "place2dTexture4.wv" "file31.wv";
connectAttr "place2dTexture4.re" "file31.re";
connectAttr "place2dTexture4.of" "file31.of";
connectAttr "place2dTexture4.r" "file31.ro";
connectAttr "place2dTexture4.n" "file31.n";
connectAttr "place2dTexture4.vt1" "file31.vt1";
connectAttr "place2dTexture4.vt2" "file31.vt2";
connectAttr "place2dTexture4.vt3" "file31.vt3";
connectAttr "place2dTexture4.vc1" "file31.vc1";
connectAttr "CarvedWood.output_ambientocclusion" "Carved_Wood_ambientocclusion.sbs"
		;
connectAttr "CarvedWood.rsw" "Carved_Wood_ambientocclusion.rsw";
connectAttr "CarvedWood.cext" "Carved_Wood_ambientocclusion.cext";
connectAttr "CarvedWood.hext" "Carved_Wood_ambientocclusion.hext";
connectAttr "CarvedWood.cfld" "Carved_Wood_ambientocclusion.cprx";
connectAttr "place2dTexture4.o" "Carved_Wood_ambientocclusion.uv";
connectAttr "place2dTexture4.ofs" "Carved_Wood_ambientocclusion.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file32.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file32.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file32.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file32.ws";
connectAttr "Carved_Wood_ambientocclusion.cpth" "file32.ftn";
connectAttr "place2dTexture4.o" "file32.uv";
connectAttr "place2dTexture4.ofs" "file32.fs";
connectAttr "place2dTexture4.c" "file32.c";
connectAttr "place2dTexture4.tf" "file32.tf";
connectAttr "place2dTexture4.rf" "file32.rf";
connectAttr "place2dTexture4.mu" "file32.mu";
connectAttr "place2dTexture4.mv" "file32.mv";
connectAttr "place2dTexture4.s" "file32.s";
connectAttr "place2dTexture4.wu" "file32.wu";
connectAttr "place2dTexture4.wv" "file32.wv";
connectAttr "place2dTexture4.re" "file32.re";
connectAttr "place2dTexture4.of" "file32.of";
connectAttr "place2dTexture4.r" "file32.ro";
connectAttr "place2dTexture4.n" "file32.n";
connectAttr "place2dTexture4.vt1" "file32.vt1";
connectAttr "place2dTexture4.vt2" "file32.vt2";
connectAttr "place2dTexture4.vt3" "file32.vt3";
connectAttr "place2dTexture4.vc1" "file32.vc1";
connectAttr "CarvedWood.output_metallic" "Carved_Wood_metallic.sbs";
connectAttr "CarvedWood.rsw" "Carved_Wood_metallic.rsw";
connectAttr "CarvedWood.cext" "Carved_Wood_metallic.cext";
connectAttr "CarvedWood.hext" "Carved_Wood_metallic.hext";
connectAttr "CarvedWood.cfld" "Carved_Wood_metallic.cprx";
connectAttr "place2dTexture4.o" "Carved_Wood_metallic.uv";
connectAttr "place2dTexture4.ofs" "Carved_Wood_metallic.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file33.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file33.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file33.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file33.ws";
connectAttr "Carved_Wood_metallic.cpth" "file33.ftn";
connectAttr "place2dTexture4.o" "file33.uv";
connectAttr "place2dTexture4.ofs" "file33.fs";
connectAttr "place2dTexture4.c" "file33.c";
connectAttr "place2dTexture4.tf" "file33.tf";
connectAttr "place2dTexture4.rf" "file33.rf";
connectAttr "place2dTexture4.mu" "file33.mu";
connectAttr "place2dTexture4.mv" "file33.mv";
connectAttr "place2dTexture4.s" "file33.s";
connectAttr "place2dTexture4.wu" "file33.wu";
connectAttr "place2dTexture4.wv" "file33.wv";
connectAttr "place2dTexture4.re" "file33.re";
connectAttr "place2dTexture4.of" "file33.of";
connectAttr "place2dTexture4.r" "file33.ro";
connectAttr "place2dTexture4.n" "file33.n";
connectAttr "place2dTexture4.vt1" "file33.vt1";
connectAttr "place2dTexture4.vt2" "file33.vt2";
connectAttr "place2dTexture4.vt3" "file33.vt3";
connectAttr "place2dTexture4.vc1" "file33.vc1";
connectAttr "CarvedWood.output_height" "Carved_Wood_height.sbs";
connectAttr "CarvedWood.rsw" "Carved_Wood_height.rsw";
connectAttr "CarvedWood.cext" "Carved_Wood_height.cext";
connectAttr "CarvedWood.hext" "Carved_Wood_height.hext";
connectAttr "CarvedWood.cfld" "Carved_Wood_height.cprx";
connectAttr "place2dTexture4.o" "Carved_Wood_height.uv";
connectAttr "place2dTexture4.ofs" "Carved_Wood_height.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file34.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file34.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file34.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file34.ws";
connectAttr "Carved_Wood_height.cpth" "file34.ftn";
connectAttr "place2dTexture4.o" "file34.uv";
connectAttr "place2dTexture4.ofs" "file34.fs";
connectAttr "place2dTexture4.c" "file34.c";
connectAttr "place2dTexture4.tf" "file34.tf";
connectAttr "place2dTexture4.rf" "file34.rf";
connectAttr "place2dTexture4.mu" "file34.mu";
connectAttr "place2dTexture4.mv" "file34.mv";
connectAttr "place2dTexture4.s" "file34.s";
connectAttr "place2dTexture4.wu" "file34.wu";
connectAttr "place2dTexture4.wv" "file34.wv";
connectAttr "place2dTexture4.re" "file34.re";
connectAttr "place2dTexture4.of" "file34.of";
connectAttr "place2dTexture4.r" "file34.ro";
connectAttr "place2dTexture4.n" "file34.n";
connectAttr "place2dTexture4.vt1" "file34.vt1";
connectAttr "place2dTexture4.vt2" "file34.vt2";
connectAttr "place2dTexture4.vt3" "file34.vt3";
connectAttr "place2dTexture4.vc1" "file34.vc1";
connectAttr "CarvedWood.output_diffuse" "Carved_Wood_diffuse.sbs";
connectAttr "CarvedWood.rsw" "Carved_Wood_diffuse.rsw";
connectAttr "CarvedWood.cext" "Carved_Wood_diffuse.cext";
connectAttr "CarvedWood.hext" "Carved_Wood_diffuse.hext";
connectAttr "CarvedWood.cfld" "Carved_Wood_diffuse.cprx";
connectAttr "place2dTexture4.o" "Carved_Wood_diffuse.uv";
connectAttr "place2dTexture4.ofs" "Carved_Wood_diffuse.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file35.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file35.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file35.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file35.ws";
connectAttr "Carved_Wood_diffuse.cpth" "file35.ftn";
connectAttr "place2dTexture4.o" "file35.uv";
connectAttr "place2dTexture4.ofs" "file35.fs";
connectAttr "place2dTexture4.c" "file35.c";
connectAttr "place2dTexture4.tf" "file35.tf";
connectAttr "place2dTexture4.rf" "file35.rf";
connectAttr "place2dTexture4.mu" "file35.mu";
connectAttr "place2dTexture4.mv" "file35.mv";
connectAttr "place2dTexture4.s" "file35.s";
connectAttr "place2dTexture4.wu" "file35.wu";
connectAttr "place2dTexture4.wv" "file35.wv";
connectAttr "place2dTexture4.re" "file35.re";
connectAttr "place2dTexture4.of" "file35.of";
connectAttr "place2dTexture4.r" "file35.ro";
connectAttr "place2dTexture4.n" "file35.n";
connectAttr "place2dTexture4.vt1" "file35.vt1";
connectAttr "place2dTexture4.vt2" "file35.vt2";
connectAttr "place2dTexture4.vt3" "file35.vt3";
connectAttr "place2dTexture4.vc1" "file35.vc1";
connectAttr "CarvedWood.output_specular" "Carved_Wood_specular.sbs";
connectAttr "CarvedWood.rsw" "Carved_Wood_specular.rsw";
connectAttr "CarvedWood.cext" "Carved_Wood_specular.cext";
connectAttr "CarvedWood.hext" "Carved_Wood_specular.hext";
connectAttr "CarvedWood.cfld" "Carved_Wood_specular.cprx";
connectAttr "place2dTexture4.o" "Carved_Wood_specular.uv";
connectAttr "place2dTexture4.ofs" "Carved_Wood_specular.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file36.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file36.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file36.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file36.ws";
connectAttr "Carved_Wood_specular.cpth" "file36.ftn";
connectAttr "place2dTexture4.o" "file36.uv";
connectAttr "place2dTexture4.ofs" "file36.fs";
connectAttr "place2dTexture4.c" "file36.c";
connectAttr "place2dTexture4.tf" "file36.tf";
connectAttr "place2dTexture4.rf" "file36.rf";
connectAttr "place2dTexture4.mu" "file36.mu";
connectAttr "place2dTexture4.mv" "file36.mv";
connectAttr "place2dTexture4.s" "file36.s";
connectAttr "place2dTexture4.wu" "file36.wu";
connectAttr "place2dTexture4.wv" "file36.wv";
connectAttr "place2dTexture4.re" "file36.re";
connectAttr "place2dTexture4.of" "file36.of";
connectAttr "place2dTexture4.r" "file36.ro";
connectAttr "place2dTexture4.n" "file36.n";
connectAttr "place2dTexture4.vt1" "file36.vt1";
connectAttr "place2dTexture4.vt2" "file36.vt2";
connectAttr "place2dTexture4.vt3" "file36.vt3";
connectAttr "place2dTexture4.vc1" "file36.vc1";
connectAttr "file28.oc" "multiplyDivide4.i1";
connectAttr "file32.oc" "multiplyDivide4.i2";
connectAttr "multiplyDivide4.o" "CarvedWood1.base_color";
connectAttr "bump2d4.o" "CarvedWood1.n";
connectAttr "file30.oa" "CarvedWood1.specular_roughness";
connectAttr "file33.oa" "CarvedWood1.metalness";
connectAttr "CarvedWood1.out" "set4.ss";
connectAttr "displacementShader4.d" "set4.ds";
connectAttr "|hunte__dev__Tree_subnet__1_01|tube_object1|uvunwrap1_0|uvunwrap1_0Shape.iog" "set4.dsm"
		 -na;
connectAttr "|group3|pasted__hunte__dev__Tree_subnet__1_01|pasted__tube_object1|pasted__uvunwrap1_0|pasted__uvunwrap1_0Shape.iog" "set4.dsm"
		 -na;
connectAttr "set4.msg" "materialInfo6.sg";
connectAttr "CarvedWood1.msg" "materialInfo6.m";
connectAttr "CarvedWood1.msg" "materialInfo6.t" -na;
connectAttr "file29.oa" "bump2d4.bv";
connectAttr "file34.oa" "displacementShader4.d";
connectAttr "file37.oc" "v_layered3.c";
connectAttr "hunte__dev__Tree_subnet__1_01.outputMaterials[0].outputMaterialSpecularColor" "v_layered3.sc"
		;
connectAttr "hunte__dev__Tree_subnet__1_01.outputMaterials[0].outputMaterialAmbientColor" "v_layered3.ambc"
		;
connectAttr "hunte__dev__Tree_subnet__1_01.outputMaterials[0].outputMaterialAlphaColor" "v_layered3.it"
		;
connectAttr "v_layered3.oc" "v_layered3SG.ss";
connectAttr "v_layered3SG.msg" "materialInfo7.sg";
connectAttr "v_layered3.msg" "materialInfo7.m";
connectAttr "file37.msg" "materialInfo7.t" -na;
connectAttr ":defaultColorMgtGlobals.cme" "file37.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file37.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file37.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file37.ws";
connectAttr "hunte__dev__Tree_subnet__1_01.outputMaterials[0].outputMaterialTexturePath" "file37.ftn"
		;
connectAttr "pasted__v_layered3.oc" "pasted__v_layered3SG.ss";
connectAttr "pasted__v_layered3SG.msg" "pasted__materialInfo7.sg";
connectAttr "pasted__v_layered3.msg" "pasted__materialInfo7.m";
connectAttr "pasted__file37.msg" "pasted__materialInfo7.t" -na;
connectAttr "pasted__file37.oc" "pasted__v_layered3.c";
connectAttr "pasted__hunte__dev__Tree_subnet__1_01.outputMaterials[0].outputMaterialSpecularColor" "pasted__v_layered3.sc"
		;
connectAttr "pasted__hunte__dev__Tree_subnet__1_01.outputMaterials[0].outputMaterialAmbientColor" "pasted__v_layered3.ambc"
		;
connectAttr "pasted__hunte__dev__Tree_subnet__1_01.outputMaterials[0].outputMaterialAlphaColor" "pasted__v_layered3.it"
		;
connectAttr ":defaultColorMgtGlobals.cme" "pasted__file37.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "pasted__file37.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "pasted__file37.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "pasted__file37.ws";
connectAttr "pasted__hunte__dev__Tree_subnet__1_01.outputMaterials[0].outputMaterialTexturePath" "pasted__file37.ftn"
		;
connectAttr "pasted__set4.msg" "pasted__materialInfo8.sg";
connectAttr "pasted__displacementShader4.d" "pasted__set4.ds";
connectAttr "pasted__file40.oc" "pasted__multiplyDivide4.i1";
connectAttr "pasted__file41.oc" "pasted__multiplyDivide4.i2";
connectAttr ":defaultColorMgtGlobals.cme" "pasted__file40.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "pasted__file40.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "pasted__file40.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "pasted__file40.ws";
connectAttr "pasted__Moon_Surface_basecolor1.cpth" "pasted__file40.ftn";
connectAttr "pasted__place2dTexture4.o" "pasted__file40.uv";
connectAttr "pasted__place2dTexture4.ofs" "pasted__file40.fs";
connectAttr "pasted__place2dTexture4.c" "pasted__file40.c";
connectAttr "pasted__place2dTexture4.tf" "pasted__file40.tf";
connectAttr "pasted__place2dTexture4.rf" "pasted__file40.rf";
connectAttr "pasted__place2dTexture4.mu" "pasted__file40.mu";
connectAttr "pasted__place2dTexture4.mv" "pasted__file40.mv";
connectAttr "pasted__place2dTexture4.s" "pasted__file40.s";
connectAttr "pasted__place2dTexture4.wu" "pasted__file40.wu";
connectAttr "pasted__place2dTexture4.wv" "pasted__file40.wv";
connectAttr "pasted__place2dTexture4.re" "pasted__file40.re";
connectAttr "pasted__place2dTexture4.of" "pasted__file40.of";
connectAttr "pasted__place2dTexture4.r" "pasted__file40.ro";
connectAttr "pasted__place2dTexture4.n" "pasted__file40.n";
connectAttr "pasted__place2dTexture4.vt1" "pasted__file40.vt1";
connectAttr "pasted__place2dTexture4.vt2" "pasted__file40.vt2";
connectAttr "pasted__place2dTexture4.vt3" "pasted__file40.vt3";
connectAttr "pasted__place2dTexture4.vc1" "pasted__file40.vc1";
connectAttr "pasted__substanceNode3.output_basecolor" "pasted__Moon_Surface_basecolor1.sbs"
		;
connectAttr "pasted__substanceNode3.rsw" "pasted__Moon_Surface_basecolor1.rsw";
connectAttr "pasted__substanceNode3.cext" "pasted__Moon_Surface_basecolor1.cext"
		;
connectAttr "pasted__substanceNode3.hext" "pasted__Moon_Surface_basecolor1.hext"
		;
connectAttr "pasted__substanceNode3.cfld" "pasted__Moon_Surface_basecolor1.cprx"
		;
connectAttr "pasted__place2dTexture4.o" "pasted__Moon_Surface_basecolor1.uv";
connectAttr "pasted__place2dTexture4.ofs" "pasted__Moon_Surface_basecolor1.fs";
connectAttr "pasted__place2dTexture4.o" "pasted__substanceNode3.uv";
connectAttr "pasted__place2dTexture4.ofs" "pasted__substanceNode3.fs";
connectAttr ":defaultColorMgtGlobals.cme" "pasted__file41.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "pasted__file41.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "pasted__file41.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "pasted__file41.ws";
connectAttr "pasted__Moon_Surface_ambientocclusion1.cpth" "pasted__file41.ftn";
connectAttr "pasted__place2dTexture4.o" "pasted__file41.uv";
connectAttr "pasted__place2dTexture4.ofs" "pasted__file41.fs";
connectAttr "pasted__place2dTexture4.c" "pasted__file41.c";
connectAttr "pasted__place2dTexture4.tf" "pasted__file41.tf";
connectAttr "pasted__place2dTexture4.rf" "pasted__file41.rf";
connectAttr "pasted__place2dTexture4.mu" "pasted__file41.mu";
connectAttr "pasted__place2dTexture4.mv" "pasted__file41.mv";
connectAttr "pasted__place2dTexture4.s" "pasted__file41.s";
connectAttr "pasted__place2dTexture4.wu" "pasted__file41.wu";
connectAttr "pasted__place2dTexture4.wv" "pasted__file41.wv";
connectAttr "pasted__place2dTexture4.re" "pasted__file41.re";
connectAttr "pasted__place2dTexture4.of" "pasted__file41.of";
connectAttr "pasted__place2dTexture4.r" "pasted__file41.ro";
connectAttr "pasted__place2dTexture4.n" "pasted__file41.n";
connectAttr "pasted__place2dTexture4.vt1" "pasted__file41.vt1";
connectAttr "pasted__place2dTexture4.vt2" "pasted__file41.vt2";
connectAttr "pasted__place2dTexture4.vt3" "pasted__file41.vt3";
connectAttr "pasted__place2dTexture4.vc1" "pasted__file41.vc1";
connectAttr "pasted__substanceNode3.output_ambientocclusion" "pasted__Moon_Surface_ambientocclusion1.sbs"
		;
connectAttr "pasted__substanceNode3.rsw" "pasted__Moon_Surface_ambientocclusion1.rsw"
		;
connectAttr "pasted__substanceNode3.cext" "pasted__Moon_Surface_ambientocclusion1.cext"
		;
connectAttr "pasted__substanceNode3.hext" "pasted__Moon_Surface_ambientocclusion1.hext"
		;
connectAttr "pasted__substanceNode3.cfld" "pasted__Moon_Surface_ambientocclusion1.cprx"
		;
connectAttr "pasted__place2dTexture4.o" "pasted__Moon_Surface_ambientocclusion1.uv"
		;
connectAttr "pasted__place2dTexture4.ofs" "pasted__Moon_Surface_ambientocclusion1.fs"
		;
connectAttr "pasted__file42.oa" "pasted__bump2d4.bv";
connectAttr ":defaultColorMgtGlobals.cme" "pasted__file42.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "pasted__file42.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "pasted__file42.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "pasted__file42.ws";
connectAttr "pasted__Moon_Surface_normal1.cpth" "pasted__file42.ftn";
connectAttr "pasted__place2dTexture4.o" "pasted__file42.uv";
connectAttr "pasted__place2dTexture4.ofs" "pasted__file42.fs";
connectAttr "pasted__place2dTexture4.c" "pasted__file42.c";
connectAttr "pasted__place2dTexture4.tf" "pasted__file42.tf";
connectAttr "pasted__place2dTexture4.rf" "pasted__file42.rf";
connectAttr "pasted__place2dTexture4.mu" "pasted__file42.mu";
connectAttr "pasted__place2dTexture4.mv" "pasted__file42.mv";
connectAttr "pasted__place2dTexture4.s" "pasted__file42.s";
connectAttr "pasted__place2dTexture4.wu" "pasted__file42.wu";
connectAttr "pasted__place2dTexture4.wv" "pasted__file42.wv";
connectAttr "pasted__place2dTexture4.re" "pasted__file42.re";
connectAttr "pasted__place2dTexture4.of" "pasted__file42.of";
connectAttr "pasted__place2dTexture4.r" "pasted__file42.ro";
connectAttr "pasted__place2dTexture4.n" "pasted__file42.n";
connectAttr "pasted__place2dTexture4.vt1" "pasted__file42.vt1";
connectAttr "pasted__place2dTexture4.vt2" "pasted__file42.vt2";
connectAttr "pasted__place2dTexture4.vt3" "pasted__file42.vt3";
connectAttr "pasted__place2dTexture4.vc1" "pasted__file42.vc1";
connectAttr "pasted__substanceNode3.output_normal" "pasted__Moon_Surface_normal1.sbs"
		;
connectAttr "pasted__substanceNode3.rsw" "pasted__Moon_Surface_normal1.rsw";
connectAttr "pasted__substanceNode3.cext" "pasted__Moon_Surface_normal1.cext";
connectAttr "pasted__substanceNode3.hext" "pasted__Moon_Surface_normal1.hext";
connectAttr "pasted__substanceNode3.cfld" "pasted__Moon_Surface_normal1.cprx";
connectAttr "pasted__place2dTexture4.o" "pasted__Moon_Surface_normal1.uv";
connectAttr "pasted__place2dTexture4.ofs" "pasted__Moon_Surface_normal1.fs";
connectAttr ":defaultColorMgtGlobals.cme" "pasted__file39.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "pasted__file39.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "pasted__file39.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "pasted__file39.ws";
connectAttr "pasted__Moon_Surface_roughness1.cpth" "pasted__file39.ftn";
connectAttr "pasted__place2dTexture4.o" "pasted__file39.uv";
connectAttr "pasted__place2dTexture4.ofs" "pasted__file39.fs";
connectAttr "pasted__place2dTexture4.c" "pasted__file39.c";
connectAttr "pasted__place2dTexture4.tf" "pasted__file39.tf";
connectAttr "pasted__place2dTexture4.rf" "pasted__file39.rf";
connectAttr "pasted__place2dTexture4.mu" "pasted__file39.mu";
connectAttr "pasted__place2dTexture4.mv" "pasted__file39.mv";
connectAttr "pasted__place2dTexture4.s" "pasted__file39.s";
connectAttr "pasted__place2dTexture4.wu" "pasted__file39.wu";
connectAttr "pasted__place2dTexture4.wv" "pasted__file39.wv";
connectAttr "pasted__place2dTexture4.re" "pasted__file39.re";
connectAttr "pasted__place2dTexture4.of" "pasted__file39.of";
connectAttr "pasted__place2dTexture4.r" "pasted__file39.ro";
connectAttr "pasted__place2dTexture4.n" "pasted__file39.n";
connectAttr "pasted__place2dTexture4.vt1" "pasted__file39.vt1";
connectAttr "pasted__place2dTexture4.vt2" "pasted__file39.vt2";
connectAttr "pasted__place2dTexture4.vt3" "pasted__file39.vt3";
connectAttr "pasted__place2dTexture4.vc1" "pasted__file39.vc1";
connectAttr "pasted__substanceNode3.output_roughness" "pasted__Moon_Surface_roughness1.sbs"
		;
connectAttr "pasted__substanceNode3.rsw" "pasted__Moon_Surface_roughness1.rsw";
connectAttr "pasted__substanceNode3.cext" "pasted__Moon_Surface_roughness1.cext"
		;
connectAttr "pasted__substanceNode3.hext" "pasted__Moon_Surface_roughness1.hext"
		;
connectAttr "pasted__substanceNode3.cfld" "pasted__Moon_Surface_roughness1.cprx"
		;
connectAttr "pasted__place2dTexture4.o" "pasted__Moon_Surface_roughness1.uv";
connectAttr "pasted__place2dTexture4.ofs" "pasted__Moon_Surface_roughness1.fs";
connectAttr ":defaultColorMgtGlobals.cme" "pasted__file38.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "pasted__file38.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "pasted__file38.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "pasted__file38.ws";
connectAttr "pasted__Moon_Surface_metallic1.cpth" "pasted__file38.ftn";
connectAttr "pasted__place2dTexture4.o" "pasted__file38.uv";
connectAttr "pasted__place2dTexture4.ofs" "pasted__file38.fs";
connectAttr "pasted__place2dTexture4.c" "pasted__file38.c";
connectAttr "pasted__place2dTexture4.tf" "pasted__file38.tf";
connectAttr "pasted__place2dTexture4.rf" "pasted__file38.rf";
connectAttr "pasted__place2dTexture4.mu" "pasted__file38.mu";
connectAttr "pasted__place2dTexture4.mv" "pasted__file38.mv";
connectAttr "pasted__place2dTexture4.s" "pasted__file38.s";
connectAttr "pasted__place2dTexture4.wu" "pasted__file38.wu";
connectAttr "pasted__place2dTexture4.wv" "pasted__file38.wv";
connectAttr "pasted__place2dTexture4.re" "pasted__file38.re";
connectAttr "pasted__place2dTexture4.of" "pasted__file38.of";
connectAttr "pasted__place2dTexture4.r" "pasted__file38.ro";
connectAttr "pasted__place2dTexture4.n" "pasted__file38.n";
connectAttr "pasted__place2dTexture4.vt1" "pasted__file38.vt1";
connectAttr "pasted__place2dTexture4.vt2" "pasted__file38.vt2";
connectAttr "pasted__place2dTexture4.vt3" "pasted__file38.vt3";
connectAttr "pasted__place2dTexture4.vc1" "pasted__file38.vc1";
connectAttr "pasted__substanceNode3.output_metallic" "pasted__Moon_Surface_metallic1.sbs"
		;
connectAttr "pasted__substanceNode3.rsw" "pasted__Moon_Surface_metallic1.rsw";
connectAttr "pasted__substanceNode3.cext" "pasted__Moon_Surface_metallic1.cext";
connectAttr "pasted__substanceNode3.hext" "pasted__Moon_Surface_metallic1.hext";
connectAttr "pasted__substanceNode3.cfld" "pasted__Moon_Surface_metallic1.cprx";
connectAttr "pasted__place2dTexture4.o" "pasted__Moon_Surface_metallic1.uv";
connectAttr "pasted__place2dTexture4.ofs" "pasted__Moon_Surface_metallic1.fs";
connectAttr "pasted__file43.oa" "pasted__displacementShader4.d";
connectAttr ":defaultColorMgtGlobals.cme" "pasted__file43.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "pasted__file43.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "pasted__file43.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "pasted__file43.ws";
connectAttr "pasted__Moon_Surface_height1.cpth" "pasted__file43.ftn";
connectAttr "pasted__place2dTexture4.o" "pasted__file43.uv";
connectAttr "pasted__place2dTexture4.ofs" "pasted__file43.fs";
connectAttr "pasted__place2dTexture4.c" "pasted__file43.c";
connectAttr "pasted__place2dTexture4.tf" "pasted__file43.tf";
connectAttr "pasted__place2dTexture4.rf" "pasted__file43.rf";
connectAttr "pasted__place2dTexture4.mu" "pasted__file43.mu";
connectAttr "pasted__place2dTexture4.mv" "pasted__file43.mv";
connectAttr "pasted__place2dTexture4.s" "pasted__file43.s";
connectAttr "pasted__place2dTexture4.wu" "pasted__file43.wu";
connectAttr "pasted__place2dTexture4.wv" "pasted__file43.wv";
connectAttr "pasted__place2dTexture4.re" "pasted__file43.re";
connectAttr "pasted__place2dTexture4.of" "pasted__file43.of";
connectAttr "pasted__place2dTexture4.r" "pasted__file43.ro";
connectAttr "pasted__place2dTexture4.n" "pasted__file43.n";
connectAttr "pasted__place2dTexture4.vt1" "pasted__file43.vt1";
connectAttr "pasted__place2dTexture4.vt2" "pasted__file43.vt2";
connectAttr "pasted__place2dTexture4.vt3" "pasted__file43.vt3";
connectAttr "pasted__place2dTexture4.vc1" "pasted__file43.vc1";
connectAttr "pasted__substanceNode3.output_height" "pasted__Moon_Surface_height1.sbs"
		;
connectAttr "pasted__substanceNode3.rsw" "pasted__Moon_Surface_height1.rsw";
connectAttr "pasted__substanceNode3.cext" "pasted__Moon_Surface_height1.cext";
connectAttr "pasted__substanceNode3.hext" "pasted__Moon_Surface_height1.hext";
connectAttr "pasted__substanceNode3.cfld" "pasted__Moon_Surface_height1.cprx";
connectAttr "pasted__place2dTexture4.o" "pasted__Moon_Surface_height1.uv";
connectAttr "pasted__place2dTexture4.ofs" "pasted__Moon_Surface_height1.fs";
connectAttr "pasted__pasted__set4.msg" "pasted__pasted__materialInfo8.sg";
connectAttr "pasted__pasted__displacementShader4.d" "pasted__pasted__set4.ds";
connectAttr "pasted__pasted__file43.oa" "pasted__pasted__displacementShader4.d";
connectAttr ":defaultColorMgtGlobals.cme" "pasted__pasted__file43.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "pasted__pasted__file43.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "pasted__pasted__file43.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "pasted__pasted__file43.ws";
connectAttr "pasted__pasted__Moon_Surface_height1.cpth" "pasted__pasted__file43.ftn"
		;
connectAttr "pasted__pasted__place2dTexture4.o" "pasted__pasted__file43.uv";
connectAttr "pasted__pasted__place2dTexture4.ofs" "pasted__pasted__file43.fs";
connectAttr "pasted__pasted__place2dTexture4.c" "pasted__pasted__file43.c";
connectAttr "pasted__pasted__place2dTexture4.tf" "pasted__pasted__file43.tf";
connectAttr "pasted__pasted__place2dTexture4.rf" "pasted__pasted__file43.rf";
connectAttr "pasted__pasted__place2dTexture4.mu" "pasted__pasted__file43.mu";
connectAttr "pasted__pasted__place2dTexture4.mv" "pasted__pasted__file43.mv";
connectAttr "pasted__pasted__place2dTexture4.s" "pasted__pasted__file43.s";
connectAttr "pasted__pasted__place2dTexture4.wu" "pasted__pasted__file43.wu";
connectAttr "pasted__pasted__place2dTexture4.wv" "pasted__pasted__file43.wv";
connectAttr "pasted__pasted__place2dTexture4.re" "pasted__pasted__file43.re";
connectAttr "pasted__pasted__place2dTexture4.of" "pasted__pasted__file43.of";
connectAttr "pasted__pasted__place2dTexture4.r" "pasted__pasted__file43.ro";
connectAttr "pasted__pasted__place2dTexture4.n" "pasted__pasted__file43.n";
connectAttr "pasted__pasted__place2dTexture4.vt1" "pasted__pasted__file43.vt1";
connectAttr "pasted__pasted__place2dTexture4.vt2" "pasted__pasted__file43.vt2";
connectAttr "pasted__pasted__place2dTexture4.vt3" "pasted__pasted__file43.vt3";
connectAttr "pasted__pasted__place2dTexture4.vc1" "pasted__pasted__file43.vc1";
connectAttr "pasted__pasted__substanceNode3.output_height" "pasted__pasted__Moon_Surface_height1.sbs"
		;
connectAttr "pasted__pasted__substanceNode3.rsw" "pasted__pasted__Moon_Surface_height1.rsw"
		;
connectAttr "pasted__pasted__substanceNode3.cext" "pasted__pasted__Moon_Surface_height1.cext"
		;
connectAttr "pasted__pasted__substanceNode3.hext" "pasted__pasted__Moon_Surface_height1.hext"
		;
connectAttr "pasted__pasted__substanceNode3.cfld" "pasted__pasted__Moon_Surface_height1.cprx"
		;
connectAttr "pasted__pasted__place2dTexture4.o" "pasted__pasted__Moon_Surface_height1.uv"
		;
connectAttr "pasted__pasted__place2dTexture4.ofs" "pasted__pasted__Moon_Surface_height1.fs"
		;
connectAttr "pasted__pasted__place2dTexture4.o" "pasted__pasted__substanceNode3.uv"
		;
connectAttr "pasted__pasted__place2dTexture4.ofs" "pasted__pasted__substanceNode3.fs"
		;
connectAttr "pasted__pasted__set5.msg" "pasted__pasted__materialInfo9.sg";
connectAttr "pasted__pasted__displacementShader5.d" "pasted__pasted__set5.ds";
connectAttr "pasted__pasted__file44.oa" "pasted__pasted__displacementShader5.d";
connectAttr ":defaultColorMgtGlobals.cme" "pasted__pasted__file44.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "pasted__pasted__file44.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "pasted__pasted__file44.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "pasted__pasted__file44.ws";
connectAttr "pasted__pasted__Moon_Surface_height2.cpth" "pasted__pasted__file44.ftn"
		;
connectAttr "pasted__pasted__place2dTexture5.o" "pasted__pasted__file44.uv";
connectAttr "pasted__pasted__place2dTexture5.ofs" "pasted__pasted__file44.fs";
connectAttr "pasted__pasted__place2dTexture5.c" "pasted__pasted__file44.c";
connectAttr "pasted__pasted__place2dTexture5.tf" "pasted__pasted__file44.tf";
connectAttr "pasted__pasted__place2dTexture5.rf" "pasted__pasted__file44.rf";
connectAttr "pasted__pasted__place2dTexture5.mu" "pasted__pasted__file44.mu";
connectAttr "pasted__pasted__place2dTexture5.mv" "pasted__pasted__file44.mv";
connectAttr "pasted__pasted__place2dTexture5.s" "pasted__pasted__file44.s";
connectAttr "pasted__pasted__place2dTexture5.wu" "pasted__pasted__file44.wu";
connectAttr "pasted__pasted__place2dTexture5.wv" "pasted__pasted__file44.wv";
connectAttr "pasted__pasted__place2dTexture5.re" "pasted__pasted__file44.re";
connectAttr "pasted__pasted__place2dTexture5.of" "pasted__pasted__file44.of";
connectAttr "pasted__pasted__place2dTexture5.r" "pasted__pasted__file44.ro";
connectAttr "pasted__pasted__place2dTexture5.n" "pasted__pasted__file44.n";
connectAttr "pasted__pasted__place2dTexture5.vt1" "pasted__pasted__file44.vt1";
connectAttr "pasted__pasted__place2dTexture5.vt2" "pasted__pasted__file44.vt2";
connectAttr "pasted__pasted__place2dTexture5.vt3" "pasted__pasted__file44.vt3";
connectAttr "pasted__pasted__place2dTexture5.vc1" "pasted__pasted__file44.vc1";
connectAttr "pasted__pasted__substanceNode4.output_height" "pasted__pasted__Moon_Surface_height2.sbs"
		;
connectAttr "pasted__pasted__substanceNode4.rsw" "pasted__pasted__Moon_Surface_height2.rsw"
		;
connectAttr "pasted__pasted__substanceNode4.cext" "pasted__pasted__Moon_Surface_height2.cext"
		;
connectAttr "pasted__pasted__substanceNode4.hext" "pasted__pasted__Moon_Surface_height2.hext"
		;
connectAttr "pasted__pasted__substanceNode4.cfld" "pasted__pasted__Moon_Surface_height2.cprx"
		;
connectAttr "pasted__pasted__place2dTexture5.o" "pasted__pasted__Moon_Surface_height2.uv"
		;
connectAttr "pasted__pasted__place2dTexture5.ofs" "pasted__pasted__Moon_Surface_height2.fs"
		;
connectAttr "pasted__pasted__place2dTexture5.o" "pasted__pasted__substanceNode4.uv"
		;
connectAttr "pasted__pasted__place2dTexture5.ofs" "pasted__pasted__substanceNode4.fs"
		;
connectAttr "file38.oc" "v_layered4.c";
connectAttr "hunte__dev__SimpleGround__1_02.outputMaterials[0].outputMaterialSpecularColor" "v_layered4.sc"
		;
connectAttr "hunte__dev__SimpleGround__1_02.outputMaterials[0].outputMaterialAmbientColor" "v_layered4.ambc"
		;
connectAttr "hunte__dev__SimpleGround__1_02.outputMaterials[0].outputMaterialAlphaColor" "v_layered4.it"
		;
connectAttr "v_layered4.oc" "v_layered4SG.ss";
connectAttr "v_layered4SG.msg" "materialInfo8.sg";
connectAttr "v_layered4.msg" "materialInfo8.m";
connectAttr "file38.msg" "materialInfo8.t" -na;
connectAttr ":defaultColorMgtGlobals.cme" "file38.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file38.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file38.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file38.ws";
connectAttr "hunte__dev__SimpleGround__1_02.outputMaterials[0].outputMaterialTexturePath" "file38.ftn"
		;
connectAttr "place2dTexture5.o" "substanceNode3.uv";
connectAttr "place2dTexture5.ofs" "substanceNode3.fs";
connectAttr "substanceNode3.output_diffuse" "Stylized_Cobblestone_Pavement_diffuse.sbs"
		;
connectAttr "substanceNode3.rsw" "Stylized_Cobblestone_Pavement_diffuse.rsw";
connectAttr "substanceNode3.cext" "Stylized_Cobblestone_Pavement_diffuse.cext";
connectAttr "substanceNode3.hext" "Stylized_Cobblestone_Pavement_diffuse.hext";
connectAttr "substanceNode3.cfld" "Stylized_Cobblestone_Pavement_diffuse.cprx";
connectAttr "place2dTexture5.o" "Stylized_Cobblestone_Pavement_diffuse.uv";
connectAttr "place2dTexture5.ofs" "Stylized_Cobblestone_Pavement_diffuse.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file39.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file39.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file39.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file39.ws";
connectAttr "Stylized_Cobblestone_Pavement_diffuse.cpth" "file39.ftn";
connectAttr "place2dTexture5.o" "file39.uv";
connectAttr "place2dTexture5.ofs" "file39.fs";
connectAttr "place2dTexture5.c" "file39.c";
connectAttr "place2dTexture5.tf" "file39.tf";
connectAttr "place2dTexture5.rf" "file39.rf";
connectAttr "place2dTexture5.mu" "file39.mu";
connectAttr "place2dTexture5.mv" "file39.mv";
connectAttr "place2dTexture5.s" "file39.s";
connectAttr "place2dTexture5.wu" "file39.wu";
connectAttr "place2dTexture5.wv" "file39.wv";
connectAttr "place2dTexture5.re" "file39.re";
connectAttr "place2dTexture5.of" "file39.of";
connectAttr "place2dTexture5.r" "file39.ro";
connectAttr "place2dTexture5.n" "file39.n";
connectAttr "place2dTexture5.vt1" "file39.vt1";
connectAttr "place2dTexture5.vt2" "file39.vt2";
connectAttr "place2dTexture5.vt3" "file39.vt3";
connectAttr "place2dTexture5.vc1" "file39.vc1";
connectAttr "substanceNode3.output_basecolor" "Stylized_Cobblestone_Pavement_basecolor.sbs"
		;
connectAttr "substanceNode3.rsw" "Stylized_Cobblestone_Pavement_basecolor.rsw";
connectAttr "substanceNode3.cext" "Stylized_Cobblestone_Pavement_basecolor.cext"
		;
connectAttr "substanceNode3.hext" "Stylized_Cobblestone_Pavement_basecolor.hext"
		;
connectAttr "substanceNode3.cfld" "Stylized_Cobblestone_Pavement_basecolor.cprx"
		;
connectAttr "place2dTexture5.o" "Stylized_Cobblestone_Pavement_basecolor.uv";
connectAttr "place2dTexture5.ofs" "Stylized_Cobblestone_Pavement_basecolor.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file40.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file40.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file40.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file40.ws";
connectAttr "Stylized_Cobblestone_Pavement_basecolor.cpth" "file40.ftn";
connectAttr "place2dTexture5.o" "file40.uv";
connectAttr "place2dTexture5.ofs" "file40.fs";
connectAttr "place2dTexture5.c" "file40.c";
connectAttr "place2dTexture5.tf" "file40.tf";
connectAttr "place2dTexture5.rf" "file40.rf";
connectAttr "place2dTexture5.mu" "file40.mu";
connectAttr "place2dTexture5.mv" "file40.mv";
connectAttr "place2dTexture5.s" "file40.s";
connectAttr "place2dTexture5.wu" "file40.wu";
connectAttr "place2dTexture5.wv" "file40.wv";
connectAttr "place2dTexture5.re" "file40.re";
connectAttr "place2dTexture5.of" "file40.of";
connectAttr "place2dTexture5.r" "file40.ro";
connectAttr "place2dTexture5.n" "file40.n";
connectAttr "place2dTexture5.vt1" "file40.vt1";
connectAttr "place2dTexture5.vt2" "file40.vt2";
connectAttr "place2dTexture5.vt3" "file40.vt3";
connectAttr "place2dTexture5.vc1" "file40.vc1";
connectAttr "substanceNode3.output_normal" "Stylized_Cobblestone_Pavement_normal.sbs"
		;
connectAttr "substanceNode3.rsw" "Stylized_Cobblestone_Pavement_normal.rsw";
connectAttr "substanceNode3.cext" "Stylized_Cobblestone_Pavement_normal.cext";
connectAttr "substanceNode3.hext" "Stylized_Cobblestone_Pavement_normal.hext";
connectAttr "substanceNode3.cfld" "Stylized_Cobblestone_Pavement_normal.cprx";
connectAttr "place2dTexture5.o" "Stylized_Cobblestone_Pavement_normal.uv";
connectAttr "place2dTexture5.ofs" "Stylized_Cobblestone_Pavement_normal.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file41.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file41.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file41.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file41.ws";
connectAttr "Stylized_Cobblestone_Pavement_normal.cpth" "file41.ftn";
connectAttr "place2dTexture5.o" "file41.uv";
connectAttr "place2dTexture5.ofs" "file41.fs";
connectAttr "place2dTexture5.c" "file41.c";
connectAttr "place2dTexture5.tf" "file41.tf";
connectAttr "place2dTexture5.rf" "file41.rf";
connectAttr "place2dTexture5.mu" "file41.mu";
connectAttr "place2dTexture5.mv" "file41.mv";
connectAttr "place2dTexture5.s" "file41.s";
connectAttr "place2dTexture5.wu" "file41.wu";
connectAttr "place2dTexture5.wv" "file41.wv";
connectAttr "place2dTexture5.re" "file41.re";
connectAttr "place2dTexture5.of" "file41.of";
connectAttr "place2dTexture5.r" "file41.ro";
connectAttr "place2dTexture5.n" "file41.n";
connectAttr "place2dTexture5.vt1" "file41.vt1";
connectAttr "place2dTexture5.vt2" "file41.vt2";
connectAttr "place2dTexture5.vt3" "file41.vt3";
connectAttr "place2dTexture5.vc1" "file41.vc1";
connectAttr "substanceNode3.output_roughness" "Stylized_Cobblestone_Pavement_roughness.sbs"
		;
connectAttr "substanceNode3.rsw" "Stylized_Cobblestone_Pavement_roughness.rsw";
connectAttr "substanceNode3.cext" "Stylized_Cobblestone_Pavement_roughness.cext"
		;
connectAttr "substanceNode3.hext" "Stylized_Cobblestone_Pavement_roughness.hext"
		;
connectAttr "substanceNode3.cfld" "Stylized_Cobblestone_Pavement_roughness.cprx"
		;
connectAttr "place2dTexture5.o" "Stylized_Cobblestone_Pavement_roughness.uv";
connectAttr "place2dTexture5.ofs" "Stylized_Cobblestone_Pavement_roughness.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file42.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file42.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file42.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file42.ws";
connectAttr "Stylized_Cobblestone_Pavement_roughness.cpth" "file42.ftn";
connectAttr "place2dTexture5.o" "file42.uv";
connectAttr "place2dTexture5.ofs" "file42.fs";
connectAttr "place2dTexture5.c" "file42.c";
connectAttr "place2dTexture5.tf" "file42.tf";
connectAttr "place2dTexture5.rf" "file42.rf";
connectAttr "place2dTexture5.mu" "file42.mu";
connectAttr "place2dTexture5.mv" "file42.mv";
connectAttr "place2dTexture5.s" "file42.s";
connectAttr "place2dTexture5.wu" "file42.wu";
connectAttr "place2dTexture5.wv" "file42.wv";
connectAttr "place2dTexture5.re" "file42.re";
connectAttr "place2dTexture5.of" "file42.of";
connectAttr "place2dTexture5.r" "file42.ro";
connectAttr "place2dTexture5.n" "file42.n";
connectAttr "place2dTexture5.vt1" "file42.vt1";
connectAttr "place2dTexture5.vt2" "file42.vt2";
connectAttr "place2dTexture5.vt3" "file42.vt3";
connectAttr "place2dTexture5.vc1" "file42.vc1";
connectAttr "substanceNode3.output_metallic" "Stylized_Cobblestone_Pavement_metallic.sbs"
		;
connectAttr "substanceNode3.rsw" "Stylized_Cobblestone_Pavement_metallic.rsw";
connectAttr "substanceNode3.cext" "Stylized_Cobblestone_Pavement_metallic.cext";
connectAttr "substanceNode3.hext" "Stylized_Cobblestone_Pavement_metallic.hext";
connectAttr "substanceNode3.cfld" "Stylized_Cobblestone_Pavement_metallic.cprx";
connectAttr "place2dTexture5.o" "Stylized_Cobblestone_Pavement_metallic.uv";
connectAttr "place2dTexture5.ofs" "Stylized_Cobblestone_Pavement_metallic.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file43.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file43.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file43.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file43.ws";
connectAttr "Stylized_Cobblestone_Pavement_metallic.cpth" "file43.ftn";
connectAttr "place2dTexture5.o" "file43.uv";
connectAttr "place2dTexture5.ofs" "file43.fs";
connectAttr "place2dTexture5.c" "file43.c";
connectAttr "place2dTexture5.tf" "file43.tf";
connectAttr "place2dTexture5.rf" "file43.rf";
connectAttr "place2dTexture5.mu" "file43.mu";
connectAttr "place2dTexture5.mv" "file43.mv";
connectAttr "place2dTexture5.s" "file43.s";
connectAttr "place2dTexture5.wu" "file43.wu";
connectAttr "place2dTexture5.wv" "file43.wv";
connectAttr "place2dTexture5.re" "file43.re";
connectAttr "place2dTexture5.of" "file43.of";
connectAttr "place2dTexture5.r" "file43.ro";
connectAttr "place2dTexture5.n" "file43.n";
connectAttr "place2dTexture5.vt1" "file43.vt1";
connectAttr "place2dTexture5.vt2" "file43.vt2";
connectAttr "place2dTexture5.vt3" "file43.vt3";
connectAttr "place2dTexture5.vc1" "file43.vc1";
connectAttr "substanceNode3.output_height" "Stylized_Cobblestone_Pavement_height.sbs"
		;
connectAttr "substanceNode3.rsw" "Stylized_Cobblestone_Pavement_height.rsw";
connectAttr "substanceNode3.cext" "Stylized_Cobblestone_Pavement_height.cext";
connectAttr "substanceNode3.hext" "Stylized_Cobblestone_Pavement_height.hext";
connectAttr "substanceNode3.cfld" "Stylized_Cobblestone_Pavement_height.cprx";
connectAttr "place2dTexture5.o" "Stylized_Cobblestone_Pavement_height.uv";
connectAttr "place2dTexture5.ofs" "Stylized_Cobblestone_Pavement_height.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file44.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file44.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file44.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file44.ws";
connectAttr "Stylized_Cobblestone_Pavement_height.cpth" "file44.ftn";
connectAttr "place2dTexture5.o" "file44.uv";
connectAttr "place2dTexture5.ofs" "file44.fs";
connectAttr "place2dTexture5.c" "file44.c";
connectAttr "place2dTexture5.tf" "file44.tf";
connectAttr "place2dTexture5.rf" "file44.rf";
connectAttr "place2dTexture5.mu" "file44.mu";
connectAttr "place2dTexture5.mv" "file44.mv";
connectAttr "place2dTexture5.s" "file44.s";
connectAttr "place2dTexture5.wu" "file44.wu";
connectAttr "place2dTexture5.wv" "file44.wv";
connectAttr "place2dTexture5.re" "file44.re";
connectAttr "place2dTexture5.of" "file44.of";
connectAttr "place2dTexture5.r" "file44.ro";
connectAttr "place2dTexture5.n" "file44.n";
connectAttr "place2dTexture5.vt1" "file44.vt1";
connectAttr "place2dTexture5.vt2" "file44.vt2";
connectAttr "place2dTexture5.vt3" "file44.vt3";
connectAttr "place2dTexture5.vc1" "file44.vc1";
connectAttr "substanceNode3.output_ambientocclusion" "Stylized_Cobblestone_Pavement_ambientocclusion.sbs"
		;
connectAttr "substanceNode3.rsw" "Stylized_Cobblestone_Pavement_ambientocclusion.rsw"
		;
connectAttr "substanceNode3.cext" "Stylized_Cobblestone_Pavement_ambientocclusion.cext"
		;
connectAttr "substanceNode3.hext" "Stylized_Cobblestone_Pavement_ambientocclusion.hext"
		;
connectAttr "substanceNode3.cfld" "Stylized_Cobblestone_Pavement_ambientocclusion.cprx"
		;
connectAttr "place2dTexture5.o" "Stylized_Cobblestone_Pavement_ambientocclusion.uv"
		;
connectAttr "place2dTexture5.ofs" "Stylized_Cobblestone_Pavement_ambientocclusion.fs"
		;
connectAttr ":defaultColorMgtGlobals.cme" "file45.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file45.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file45.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file45.ws";
connectAttr "Stylized_Cobblestone_Pavement_ambientocclusion.cpth" "file45.ftn";
connectAttr "place2dTexture5.o" "file45.uv";
connectAttr "place2dTexture5.ofs" "file45.fs";
connectAttr "place2dTexture5.c" "file45.c";
connectAttr "place2dTexture5.tf" "file45.tf";
connectAttr "place2dTexture5.rf" "file45.rf";
connectAttr "place2dTexture5.mu" "file45.mu";
connectAttr "place2dTexture5.mv" "file45.mv";
connectAttr "place2dTexture5.s" "file45.s";
connectAttr "place2dTexture5.wu" "file45.wu";
connectAttr "place2dTexture5.wv" "file45.wv";
connectAttr "place2dTexture5.re" "file45.re";
connectAttr "place2dTexture5.of" "file45.of";
connectAttr "place2dTexture5.r" "file45.ro";
connectAttr "place2dTexture5.n" "file45.n";
connectAttr "place2dTexture5.vt1" "file45.vt1";
connectAttr "place2dTexture5.vt2" "file45.vt2";
connectAttr "place2dTexture5.vt3" "file45.vt3";
connectAttr "place2dTexture5.vc1" "file45.vc1";
connectAttr "file40.oc" "multiplyDivide5.i1";
connectAttr "file45.oc" "multiplyDivide5.i2";
connectAttr "multiplyDivide5.o" "CobbleStone.base_color";
connectAttr "bump2d5.o" "CobbleStone.n";
connectAttr "file42.oa" "CobbleStone.specular_roughness";
connectAttr "file43.oa" "CobbleStone.metalness";
connectAttr "CobbleStone.out" "set5.ss";
connectAttr "displacementShader5.d" "set5.ds";
connectAttr "uvquickshade1_0Shape.iog" "set5.dsm" -na;
connectAttr "set5.msg" "materialInfo9.sg";
connectAttr "CobbleStone.msg" "materialInfo9.m";
connectAttr "CobbleStone.msg" "materialInfo9.t" -na;
connectAttr "file41.oa" "bump2d5.bv";
connectAttr "file44.oa" "displacementShader5.d";
connectAttr "set1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "file2.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "file7.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "substanceNode1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "file8.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "bump2d1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "file3.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[6].dn"
		;
connectAttr "Moon_Surface_roughness.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[7].dn"
		;
connectAttr "place2dTexture1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[8].dn"
		;
connectAttr "file4.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[9].dn"
		;
connectAttr "multiplyDivide1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[10].dn"
		;
connectAttr "Moon_Surface_metallic.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[11].dn"
		;
connectAttr "file5.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[12].dn"
		;
connectAttr "Moon_Surface_diffuse.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[13].dn"
		;
connectAttr "Moon_Surface_height.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[14].dn"
		;
connectAttr "Moon_Surface_basecolor.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[15].dn"
		;
connectAttr "Moon_Surface_normal.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[16].dn"
		;
connectAttr "displacementShader1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[17].dn"
		;
connectAttr "Moon_Surface_ambientocclusion.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[18].dn"
		;
connectAttr "MoonSurface.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[19].dn"
		;
connectAttr "file6.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[20].dn"
		;
connectAttr "Heavy_Cracked_Concrete_Sidewalk_01_roughness.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[0].dn"
		;
connectAttr "Heavy_Cracked_Concrete_Sidewalk_01_ambientocclusion.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[1].dn"
		;
connectAttr "displacementShader2.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[2].dn"
		;
connectAttr "file11.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[3].dn"
		;
connectAttr "file10.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[4].dn"
		;
connectAttr "file13.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[5].dn"
		;
connectAttr "multiplyDivide2.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[6].dn"
		;
connectAttr "CementSkin.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[7].dn"
		;
connectAttr "file19.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[8].dn"
		;
connectAttr "Heavy_Cracked_Concrete_Sidewalk_01_diffuse.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[9].dn"
		;
connectAttr "Heavy_Cracked_Concrete_Sidewalk_01_basecolor.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[10].dn"
		;
connectAttr "Heavy_Cracked_Concrete_Sidewalk_01_normal.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[11].dn"
		;
connectAttr "file12.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[12].dn"
		;
connectAttr "CementSurface.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[13].dn"
		;
connectAttr "file18.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[14].dn"
		;
connectAttr "file16.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[15].dn"
		;
connectAttr "bump2d2.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[16].dn"
		;
connectAttr "Heavy_Cracked_Concrete_Sidewalk_01_specularlevel.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[17].dn"
		;
connectAttr "Heavy_Cracked_Concrete_Sidewalk_01_metallic.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[18].dn"
		;
connectAttr "file17.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[19].dn"
		;
connectAttr "place2dTexture2.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[20].dn"
		;
connectAttr "Heavy_Cracked_Concrete_Sidewalk_01_height.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[21].dn"
		;
connectAttr "set2.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[22].dn"
		;
connectAttr "Pine_Wood_Outdoor_Panelling_01_ambientocclusion.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[2].ni[0].dn"
		;
connectAttr "Pine_Wood_Outdoor_Panelling_01_metallic.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[2].ni[1].dn"
		;
connectAttr "file20.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[2].ni[2].dn"
		;
connectAttr "CutWood.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[2].ni[3].dn"
		;
connectAttr "file27.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[2].ni[4].dn"
		;
connectAttr "file22.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[2].ni[5].dn"
		;
connectAttr "file26.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[2].ni[6].dn"
		;
connectAttr "file24.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[2].ni[7].dn"
		;
connectAttr "multiplyDivide3.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[2].ni[8].dn"
		;
connectAttr "bump2d3.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[2].ni[9].dn"
		;
connectAttr "set3.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[2].ni[10].dn"
		;
connectAttr "file23.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[2].ni[11].dn"
		;
connectAttr "place2dTexture3.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[2].ni[12].dn"
		;
connectAttr "substanceNode2.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[2].ni[13].dn"
		;
connectAttr "file25.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[2].ni[14].dn"
		;
connectAttr "Pine_Wood_Outdoor_Panelling_01_diffuse.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[2].ni[15].dn"
		;
connectAttr "Pine_Wood_Outdoor_Panelling_01_specularlevel.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[2].ni[16].dn"
		;
connectAttr "Pine_Wood_Outdoor_Panelling_01_basecolor.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[2].ni[17].dn"
		;
connectAttr "Pine_Wood_Outdoor_Panelling_01_normal.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[2].ni[18].dn"
		;
connectAttr "displacementShader3.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[2].ni[19].dn"
		;
connectAttr "Pine_Wood_Outdoor_Panelling_01_roughness.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[2].ni[20].dn"
		;
connectAttr "Pine_Wood_Outdoor_Panelling_01_height.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[2].ni[21].dn"
		;
connectAttr "file21.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[2].ni[22].dn"
		;
connectAttr "Stylized_Cobblestone_Pavement_diffuse.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[3].ni[0].dn"
		;
connectAttr "file41.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[3].ni[1].dn"
		;
connectAttr "displacementShader5.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[3].ni[2].dn"
		;
connectAttr "bump2d5.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[3].ni[3].dn"
		;
connectAttr "file45.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[3].ni[4].dn"
		;
connectAttr "set5.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[3].ni[5].dn"
		;
connectAttr "multiplyDivide5.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[3].ni[6].dn"
		;
connectAttr "Stylized_Cobblestone_Pavement_metallic.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[3].ni[7].dn"
		;
connectAttr "file44.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[3].ni[8].dn"
		;
connectAttr "file43.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[3].ni[9].dn"
		;
connectAttr "CobbleStone.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[3].ni[10].dn"
		;
connectAttr "Stylized_Cobblestone_Pavement_normal.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[3].ni[11].dn"
		;
connectAttr "file40.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[3].ni[12].dn"
		;
connectAttr "place2dTexture5.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[3].ni[13].dn"
		;
connectAttr "Stylized_Cobblestone_Pavement_ambientocclusion.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[3].ni[14].dn"
		;
connectAttr "Stylized_Cobblestone_Pavement_roughness.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[3].ni[15].dn"
		;
connectAttr "file39.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[3].ni[16].dn"
		;
connectAttr "Stylized_Cobblestone_Pavement_basecolor.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[3].ni[17].dn"
		;
connectAttr "substanceNode3.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[3].ni[18].dn"
		;
connectAttr "file42.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[3].ni[19].dn"
		;
connectAttr "Stylized_Cobblestone_Pavement_height.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[3].ni[20].dn"
		;
connectAttr "Ball_Anim_reference_for_TRAX:renderLayerManager.rlmi[0]" "Ball_Anim_reference_for_TRAX:defaultRenderLayer.rlid"
		;
connectAttr "Robot_TRAX_reference:renderLayerManager.rlmi[0]" "Robot_TRAX_reference:defaultRenderLayer.rlid"
		;
connectAttr "Robot_Movement:renderLayerManager.rlmi[0]" "Robot_Movement:defaultRenderLayer.rlid"
		;
connectAttr "Ball_Anim_reference_for_TRAX1:renderLayerManager.rlmi[0]" "Ball_Anim_reference_for_TRAX1:defaultRenderLayer.rlid"
		;
connectAttr "Ball_Anim_reference_for_TRAX1:sharedReferenceNode.sr" "Ball_Anim_reference_for_TRAX1:Ultimate_Walker_RigRN.sr"
		;
connectAttr "Robot_TRAX_reference:trackInfoManager1.msg" ":sequenceManager1.tim"
		;
connectAttr "v_layered1SG.pa" ":renderPartition.st" -na;
connectAttr "set1.pa" ":renderPartition.st" -na;
connectAttr "v_layered2SG.pa" ":renderPartition.st" -na;
connectAttr "set2.pa" ":renderPartition.st" -na;
connectAttr "pasted__set1.pa" ":renderPartition.st" -na;
connectAttr "set3.pa" ":renderPartition.st" -na;
connectAttr "pasted__set3.pa" ":renderPartition.st" -na;
connectAttr "set4.pa" ":renderPartition.st" -na;
connectAttr "v_layered3SG.pa" ":renderPartition.st" -na;
connectAttr "pasted__v_layered3SG.pa" ":renderPartition.st" -na;
connectAttr "pasted__set4.pa" ":renderPartition.st" -na;
connectAttr "pasted__pasted__set4.pa" ":renderPartition.st" -na;
connectAttr "pasted__pasted__set5.pa" ":renderPartition.st" -na;
connectAttr "v_layered4SG.pa" ":renderPartition.st" -na;
connectAttr "set5.pa" ":renderPartition.st" -na;
connectAttr "v_layered1.msg" ":defaultShaderList1.s" -na;
connectAttr "MoonSurface.msg" ":defaultShaderList1.s" -na;
connectAttr "displacementShader1.msg" ":defaultShaderList1.s" -na;
connectAttr "v_layered2.msg" ":defaultShaderList1.s" -na;
connectAttr "CementSurface.msg" ":defaultShaderList1.s" -na;
connectAttr "displacementShader2.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__displacementShader1.msg" ":defaultShaderList1.s" -na;
connectAttr "CutWood.msg" ":defaultShaderList1.s" -na;
connectAttr "displacementShader3.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__CutWood.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__displacementShader3.msg" ":defaultShaderList1.s" -na;
connectAttr "CarvedWood1.msg" ":defaultShaderList1.s" -na;
connectAttr "displacementShader4.msg" ":defaultShaderList1.s" -na;
connectAttr "v_layered3.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__v_layered3.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__displacementShader4.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__pasted__displacementShader4.msg" ":defaultShaderList1.s" -na
		;
connectAttr "pasted__pasted__displacementShader5.msg" ":defaultShaderList1.s" -na
		;
connectAttr "v_layered4.msg" ":defaultShaderList1.s" -na;
connectAttr "CobbleStone.msg" ":defaultShaderList1.s" -na;
connectAttr "displacementShader5.msg" ":defaultShaderList1.s" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multiplyDivide1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "bump2d1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multiplyDivide2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "bump2d2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "pasted__place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "pasted__multiplyDivide1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "pasted__bump2d1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multiplyDivide3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "bump2d3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "pasted__place2dTexture3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "pasted__multiplyDivide3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "pasted__bump2d3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture4.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multiplyDivide4.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "bump2d4.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "pasted__place2dTexture4.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "pasted__multiplyDivide4.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "pasted__bump2d4.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "pasted__pasted__place2dTexture4.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "pasted__pasted__place2dTexture5.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "place2dTexture5.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multiplyDivide5.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "bump2d5.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "Ball_Anim_reference_for_TRAX:defaultRenderLayer.msg" ":defaultRenderingList1.r"
		 -na;
connectAttr "Robot_TRAX_reference:defaultRenderLayer.msg" ":defaultRenderingList1.r"
		 -na;
connectAttr "Robot_Movement:defaultRenderLayer.msg" ":defaultRenderingList1.r" -na
		;
connectAttr "Ball_Anim_reference_for_TRAX1:defaultRenderLayer.msg" ":defaultRenderingList1.r"
		 -na;
connectAttr "directionalLightShape1.ltd" ":lightList1.l" -na;
connectAttr "directionalLightShape2.ltd" ":lightList1.l" -na;
connectAttr "directionalLightShape3.ltd" ":lightList1.l" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "substanceNode1.msg" ":defaultTextureList1.tx" -na;
connectAttr "Moon_Surface_diffuse.msg" ":defaultTextureList1.tx" -na;
connectAttr "file2.msg" ":defaultTextureList1.tx" -na;
connectAttr "Moon_Surface_metallic.msg" ":defaultTextureList1.tx" -na;
connectAttr "file3.msg" ":defaultTextureList1.tx" -na;
connectAttr "Moon_Surface_roughness.msg" ":defaultTextureList1.tx" -na;
connectAttr "file4.msg" ":defaultTextureList1.tx" -na;
connectAttr "Moon_Surface_basecolor.msg" ":defaultTextureList1.tx" -na;
connectAttr "file5.msg" ":defaultTextureList1.tx" -na;
connectAttr "Moon_Surface_ambientocclusion.msg" ":defaultTextureList1.tx" -na;
connectAttr "file6.msg" ":defaultTextureList1.tx" -na;
connectAttr "Moon_Surface_normal.msg" ":defaultTextureList1.tx" -na;
connectAttr "file7.msg" ":defaultTextureList1.tx" -na;
connectAttr "Moon_Surface_height.msg" ":defaultTextureList1.tx" -na;
connectAttr "file8.msg" ":defaultTextureList1.tx" -na;
connectAttr "file9.msg" ":defaultTextureList1.tx" -na;
connectAttr "CementSkin.msg" ":defaultTextureList1.tx" -na;
connectAttr "Heavy_Cracked_Concrete_Sidewalk_01_diffuse.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "file10.msg" ":defaultTextureList1.tx" -na;
connectAttr "Heavy_Cracked_Concrete_Sidewalk_01_basecolor.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "file11.msg" ":defaultTextureList1.tx" -na;
connectAttr "Heavy_Cracked_Concrete_Sidewalk_01_normal.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "file12.msg" ":defaultTextureList1.tx" -na;
connectAttr "Heavy_Cracked_Concrete_Sidewalk_01_roughness.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "file13.msg" ":defaultTextureList1.tx" -na;
connectAttr "Heavy_Cracked_Concrete_Sidewalk_01_height.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "file16.msg" ":defaultTextureList1.tx" -na;
connectAttr "Heavy_Cracked_Concrete_Sidewalk_01_metallic.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "file17.msg" ":defaultTextureList1.tx" -na;
connectAttr "Heavy_Cracked_Concrete_Sidewalk_01_specularlevel.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "file18.msg" ":defaultTextureList1.tx" -na;
connectAttr "Heavy_Cracked_Concrete_Sidewalk_01_ambientocclusion.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "file19.msg" ":defaultTextureList1.tx" -na;
connectAttr "pasted__substanceNode1.msg" ":defaultTextureList1.tx" -na;
connectAttr "pasted__Moon_Surface_metallic.msg" ":defaultTextureList1.tx" -na;
connectAttr "pasted__file3.msg" ":defaultTextureList1.tx" -na;
connectAttr "pasted__Moon_Surface_roughness.msg" ":defaultTextureList1.tx" -na;
connectAttr "pasted__file4.msg" ":defaultTextureList1.tx" -na;
connectAttr "pasted__Moon_Surface_basecolor.msg" ":defaultTextureList1.tx" -na;
connectAttr "pasted__file5.msg" ":defaultTextureList1.tx" -na;
connectAttr "pasted__Moon_Surface_ambientocclusion.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "pasted__file6.msg" ":defaultTextureList1.tx" -na;
connectAttr "pasted__Moon_Surface_normal.msg" ":defaultTextureList1.tx" -na;
connectAttr "pasted__file7.msg" ":defaultTextureList1.tx" -na;
connectAttr "pasted__Moon_Surface_height.msg" ":defaultTextureList1.tx" -na;
connectAttr "pasted__file8.msg" ":defaultTextureList1.tx" -na;
connectAttr "substanceNode2.msg" ":defaultTextureList1.tx" -na;
connectAttr "Pine_Wood_Outdoor_Panelling_01_diffuse.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "file20.msg" ":defaultTextureList1.tx" -na;
connectAttr "Pine_Wood_Outdoor_Panelling_01_basecolor.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "file21.msg" ":defaultTextureList1.tx" -na;
connectAttr "Pine_Wood_Outdoor_Panelling_01_normal.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "file22.msg" ":defaultTextureList1.tx" -na;
connectAttr "Pine_Wood_Outdoor_Panelling_01_roughness.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "file23.msg" ":defaultTextureList1.tx" -na;
connectAttr "Pine_Wood_Outdoor_Panelling_01_metallic.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "file24.msg" ":defaultTextureList1.tx" -na;
connectAttr "Pine_Wood_Outdoor_Panelling_01_specularlevel.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "file25.msg" ":defaultTextureList1.tx" -na;
connectAttr "Pine_Wood_Outdoor_Panelling_01_height.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "file26.msg" ":defaultTextureList1.tx" -na;
connectAttr "Pine_Wood_Outdoor_Panelling_01_ambientocclusion.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "file27.msg" ":defaultTextureList1.tx" -na;
connectAttr "pasted__substanceNode2.msg" ":defaultTextureList1.tx" -na;
connectAttr "pasted__Pine_Wood_Outdoor_Panelling_01_basecolor.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "pasted__file21.msg" ":defaultTextureList1.tx" -na;
connectAttr "pasted__Pine_Wood_Outdoor_Panelling_01_normal.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "pasted__file22.msg" ":defaultTextureList1.tx" -na;
connectAttr "pasted__Pine_Wood_Outdoor_Panelling_01_roughness.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "pasted__file23.msg" ":defaultTextureList1.tx" -na;
connectAttr "pasted__Pine_Wood_Outdoor_Panelling_01_metallic.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "pasted__file24.msg" ":defaultTextureList1.tx" -na;
connectAttr "pasted__Pine_Wood_Outdoor_Panelling_01_height.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "pasted__file26.msg" ":defaultTextureList1.tx" -na;
connectAttr "pasted__Pine_Wood_Outdoor_Panelling_01_ambientocclusion.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "pasted__file27.msg" ":defaultTextureList1.tx" -na;
connectAttr "CarvedWood.msg" ":defaultTextureList1.tx" -na;
connectAttr "Carved_Wood_basecolor.msg" ":defaultTextureList1.tx" -na;
connectAttr "file28.msg" ":defaultTextureList1.tx" -na;
connectAttr "Carved_Wood_normal.msg" ":defaultTextureList1.tx" -na;
connectAttr "file29.msg" ":defaultTextureList1.tx" -na;
connectAttr "Carved_Wood_roughness.msg" ":defaultTextureList1.tx" -na;
connectAttr "file30.msg" ":defaultTextureList1.tx" -na;
connectAttr "Carved_Wood_specularlevel.msg" ":defaultTextureList1.tx" -na;
connectAttr "file31.msg" ":defaultTextureList1.tx" -na;
connectAttr "Carved_Wood_ambientocclusion.msg" ":defaultTextureList1.tx" -na;
connectAttr "file32.msg" ":defaultTextureList1.tx" -na;
connectAttr "Carved_Wood_metallic.msg" ":defaultTextureList1.tx" -na;
connectAttr "file33.msg" ":defaultTextureList1.tx" -na;
connectAttr "Carved_Wood_height.msg" ":defaultTextureList1.tx" -na;
connectAttr "file34.msg" ":defaultTextureList1.tx" -na;
connectAttr "Carved_Wood_diffuse.msg" ":defaultTextureList1.tx" -na;
connectAttr "file35.msg" ":defaultTextureList1.tx" -na;
connectAttr "Carved_Wood_specular.msg" ":defaultTextureList1.tx" -na;
connectAttr "file36.msg" ":defaultTextureList1.tx" -na;
connectAttr "file37.msg" ":defaultTextureList1.tx" -na;
connectAttr "pasted__file37.msg" ":defaultTextureList1.tx" -na;
connectAttr "pasted__substanceNode3.msg" ":defaultTextureList1.tx" -na;
connectAttr "pasted__Moon_Surface_metallic1.msg" ":defaultTextureList1.tx" -na;
connectAttr "pasted__file38.msg" ":defaultTextureList1.tx" -na;
connectAttr "pasted__Moon_Surface_roughness1.msg" ":defaultTextureList1.tx" -na;
connectAttr "pasted__file39.msg" ":defaultTextureList1.tx" -na;
connectAttr "pasted__Moon_Surface_basecolor1.msg" ":defaultTextureList1.tx" -na;
connectAttr "pasted__file40.msg" ":defaultTextureList1.tx" -na;
connectAttr "pasted__Moon_Surface_ambientocclusion1.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "pasted__file41.msg" ":defaultTextureList1.tx" -na;
connectAttr "pasted__Moon_Surface_normal1.msg" ":defaultTextureList1.tx" -na;
connectAttr "pasted__file42.msg" ":defaultTextureList1.tx" -na;
connectAttr "pasted__Moon_Surface_height1.msg" ":defaultTextureList1.tx" -na;
connectAttr "pasted__file43.msg" ":defaultTextureList1.tx" -na;
connectAttr "pasted__pasted__substanceNode3.msg" ":defaultTextureList1.tx" -na;
connectAttr "pasted__pasted__Moon_Surface_height1.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "pasted__pasted__file43.msg" ":defaultTextureList1.tx" -na;
connectAttr "pasted__pasted__substanceNode4.msg" ":defaultTextureList1.tx" -na;
connectAttr "pasted__pasted__Moon_Surface_height2.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "pasted__pasted__file44.msg" ":defaultTextureList1.tx" -na;
connectAttr "file38.msg" ":defaultTextureList1.tx" -na;
connectAttr "substanceNode3.msg" ":defaultTextureList1.tx" -na;
connectAttr "Stylized_Cobblestone_Pavement_diffuse.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "file39.msg" ":defaultTextureList1.tx" -na;
connectAttr "Stylized_Cobblestone_Pavement_basecolor.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "file40.msg" ":defaultTextureList1.tx" -na;
connectAttr "Stylized_Cobblestone_Pavement_normal.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "file41.msg" ":defaultTextureList1.tx" -na;
connectAttr "Stylized_Cobblestone_Pavement_roughness.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "file42.msg" ":defaultTextureList1.tx" -na;
connectAttr "Stylized_Cobblestone_Pavement_metallic.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "file43.msg" ":defaultTextureList1.tx" -na;
connectAttr "Stylized_Cobblestone_Pavement_height.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "file44.msg" ":defaultTextureList1.tx" -na;
connectAttr "Stylized_Cobblestone_Pavement_ambientocclusion.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "file45.msg" ":defaultTextureList1.tx" -na;
connectAttr "directionalLight1.iog" ":defaultLightSet.dsm" -na;
connectAttr "directionalLight2.iog" ":defaultLightSet.dsm" -na;
connectAttr "directionalLight3.iog" ":defaultLightSet.dsm" -na;
// End of ROBO and BALL Anim.ma
