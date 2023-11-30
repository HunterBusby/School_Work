//Maya ASCII 2024 scene
//Name: ROBO and BALL Anim.ma
//Last modified: Fri, Nov 10, 2023 04:47:56 PM
//Codeset: 1252
file -rdi 1 -ns "Ultimate_Walker_Rig" -rfn "Ultimate_Walker_RigRN" -op "v=0;"
		 -typ "mayaAscii" "C:/Users/hunte/Documents/Education/Fall 2023/vid game/2D_Side_Sccroller/Assets/Maya Projects/scenes/Ultimate_Walker_Rig.ma";
file -r -ns "Ultimate_Walker_Rig" -dr 1 -rfn "Ultimate_Walker_RigRN" -op "v=0;" 
		-typ "mayaAscii" "C:/Users/hunte/Documents/Education/Fall 2023/vid game/2D_Side_Sccroller/Assets/Maya Projects/scenes/Ultimate_Walker_Rig.ma";
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
fileInfo "UUID" "3F8F7E70-461C-1A98-5732-5A8F5EF62DA3";
createNode transform -s -n "persp";
	rename -uid "A4E4D85E-46E1-161C-0A10-C88E8DA5A22A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 11.560114457871828 4.6850924003903991 14.387970805691138 ;
	setAttr ".r" -type "double3" -6.9383527294850431 44.199999999980733 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "DD306209-4CBA-8C33-032F-53A812EB31BF";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 19.440382042365385;
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
	setAttr -s 11 ".outputMaterials";
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
	setAttr ".t" -type "double3" 0.68291506633723564 1.8904170120238737 2.0737361605607036 ;
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
	setAttr ".t" -type "double3" 0 3.2119826261476301 2.203565991583305 ;
	setAttr ".r" -type "double3" -0.67459393054748074 110.37372433261001 30.37722494681493 ;
createNode directionalLight -n "directionalLightShape1" -p "directionalLight1";
	rename -uid "5DDFA0A2-406A-54E6-3259-08A74A3E8CF7";
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
	setAttr -s 11 ".outputMaterials";
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
	setAttr ".t" -type "double3" -4.1262470409178347 -5.6320578439208404 1.766417508208594 ;
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
	setAttr -s 11 ".outputMaterials";
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
createNode transform -n "pasted__RockGeo" -p "pasted__hunte__dev__NewRockGeo__1_01";
	rename -uid "E0044CE3-4F0A-8A7A-F2FF-A396BCDA758A";
createNode transform -n "pasted__uvunwrap1_0" -p "pasted__RockGeo";
	rename -uid "E0898DA9-4FF1-FC5E-A71B-C19CF144EC53";
	setAttr ".t" -type "double3" -2.0573251145804132 1.8904170120238737 0.12325389299016276 ;
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
createNode transform -n "copytopoints1_0" -p "geo1";
	rename -uid "CBC64211-43E1-D781-A00C-2B80BA0949F7";
	setAttr ".t" -type "double3" -1.7783526368972142 1.1396843405879418 -4.7168500484386486 ;
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
createNode transform -n "group";
	rename -uid "EBBA1059-4EC3-B9F0-7C75-BC8F3A22E185";
	setAttr ".t" -type "double3" -1.9066641836317118 0 12.366914472056061 ;
	setAttr ".rp" -type "double3" 1.0841139741479822e-07 0.91618942048259855 -4.7168501568500458 ;
	setAttr ".sp" -type "double3" 1.0841139741479822e-07 0.91618942048259855 -4.7168501568500458 ;
createNode houdiniAsset -n "pasted__hunte__dev__BottomlessBucket__1_01" -p "group";
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
	setAttr ".t" -type "double3" 0 1.1396843405879418 -4.7168500484386486 ;
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
	setAttr ".t" -type "double3" -2.8454318208074669 1.6126868186386916 7.4971112236109283 ;
	setAttr ".r" -type "double3" 0 -2.4844462502990541 0 ;
	setAttr ".s" -type "double3" 0.84857217106335325 0.84857217106335325 0.84857217106335325 ;
createNode mesh -n "uvunwrap1_0Shape" -p "|hunte__dev__Tree_subnet__1_01|tube_object1|uvunwrap1_0";
	rename -uid "3FCEFDD7-4161-C619-432D-74B59DD6F62B";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
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
	setAttr ".t" -type "double3" -3.5317191039516418 1.671727011552175 -8.2098125740712877 ;
createNode mesh -n "pasted__uvunwrap1_0Shape" -p "|group3|pasted__hunte__dev__Tree_subnet__1_01|pasted__tube_object1|pasted__uvunwrap1_0";
	rename -uid "44AD8A5F-46D2-24FE-D39E-1CAA86C5C5CE";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
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
createNode lightLinker -s -n "lightLinker1";
	rename -uid "B69C659D-43B7-7037-CC6F-F18754A9067A";
	setAttr -s 14 ".lnk";
	setAttr -s 14 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "EE184B58-49E5-7973-EA16-298FA542E233";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "A2CECD3D-4F96-6571-457B-2CB7CBD4956B";
createNode displayLayerManager -n "layerManager";
	rename -uid "70BF7CBE-49DA-AAED-507B-2BB04A15BA2C";
createNode displayLayer -n "defaultLayer";
	rename -uid "D9FC099B-4C94-1D81-9449-318F603795A2";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "CF6B03BC-483F-2273-AB1C-CFB86F9B4EBD";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "A6C360DC-4E96-A1FC-A786-3CA0DD2F412D";
	setAttr ".g" yes;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "0D9476D1-4949-3A02-B72B-2D841A05367E";
	addAttr -ci true -sn "ARV_options" -ln "ARV_options" -dt "string";
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
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 960\n            -height 816\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n"
		+ "            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n"
		+ "            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n"
		+ "            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n"
		+ "            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n"
		+ "                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n"
		+ "                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -outliner \"graphEditor1OutlineEd\" \n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n"
		+ "                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n"
		+ "                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n"
		+ "            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n"
		+ "                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n"
		+ "                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n"
		+ "                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"|persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n"
		+ "                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n"
		+ "                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n"
		+ "                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -bluePencil 1\n                -greasePencils 0\n                -excludeObjectPreset \"All\" \n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n"
		+ "            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 960\\n    -height 816\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 960\\n    -height 816\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "F5E32F60-4E0D-EB7A-0DB5-0BBAC1BEF0C5";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 250 -ast 0 -aet 250 ";
	setAttr ".st" 6;
createNode reference -n "Ultimate_Walker_RigRN";
	rename -uid "FCA297B1-4545-2088-E479-6CA1BDE985C2";
	setAttr ".ed" -type "dataReferenceEdits" 
		"Ultimate_Walker_RigRN"
		"Ultimate_Walker_RigRN" 0;
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
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
	setAttr -s 2 ".dsm";
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
	setAttr -av ".metalness" 1;
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
	setAttr -av ".metalness" 1;
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
	setAttr ".cpth" -type "string" "C:/Users/hunte/Documents/maya\\2024\\substance/baked_images/Pine_Wood_Outdoor_Panelling_01_basecolor.png";
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
createNode place2dTexture -n "pasted__place2dTexture3";
	rename -uid "88C0A29E-41B1-9B49-9493-F292CFD6D012";
createNode file -n "pasted__file27";
	rename -uid "3014A598-4C84-244D-F731-0293017AE5F6";
	setAttr ".ail" yes;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "pasted__Pine_Wood_Outdoor_Panelling_01_ambientocclusion";
	rename -uid "C9C97B20-46C4-2884-3D1C-80BC20015D74";
	setAttr ".cpth" -type "string" "C:/Users/hunte/Documents/maya\\2024\\substance/baked_images/Pine_Wood_Outdoor_Panelling_01_ambientocclusion.png";
createNode bump2d -n "pasted__bump2d3";
	rename -uid "26AE5AA3-41EC-0DB3-05FA-B18BB1C2C446";
	setAttr ".bi" 1;
	setAttr ".vc2" -type "float3" 9.9999997e-06 9.9999997e-06 0 ;
createNode file -n "pasted__file22";
	rename -uid "A9833EE7-49ED-5669-5271-10B77363A2CD";
	setAttr ".ail" yes;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "pasted__Pine_Wood_Outdoor_Panelling_01_normal";
	rename -uid "821DC665-44BA-2195-EF39-BBB83476E08D";
	setAttr ".cpth" -type "string" "C:/Users/hunte/Documents/maya\\2024\\substance/baked_images/Pine_Wood_Outdoor_Panelling_01_normal.exr";
createNode file -n "pasted__file23";
	rename -uid "92EACBE8-4E2B-BD94-E79C-5A8101A332A2";
	setAttr ".ail" yes;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "pasted__Pine_Wood_Outdoor_Panelling_01_roughness";
	rename -uid "75008BB1-4433-F434-7716-39BC7A8FE97A";
	setAttr ".cpth" -type "string" "C:/Users/hunte/Documents/maya\\2024\\substance/baked_images/Pine_Wood_Outdoor_Panelling_01_roughness.png";
createNode file -n "pasted__file24";
	rename -uid "40A00049-4FC0-B016-3C65-0A964C9610B6";
	setAttr ".ail" yes;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "pasted__Pine_Wood_Outdoor_Panelling_01_metallic";
	rename -uid "7B46742E-46E9-E494-CC6D-A3AF494C7BEE";
	setAttr ".cpth" -type "string" "C:/Users/hunte/Documents/maya\\2024\\substance/baked_images/Pine_Wood_Outdoor_Panelling_01_metallic.png";
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
	setAttr ".cpth" -type "string" "C:/Users/hunte/Documents/maya\\2024\\substance/baked_images/Pine_Wood_Outdoor_Panelling_01_height.exr";
createNode substanceNode -n "CarvedWood";
	rename -uid "D87559F0-448E-1C0C-AA28-2F9E2443C6AF";
	addAttr -r false -ci true -h true -k true -sn "input_randomseed" -ln "input_randomseed" 
		-nn "$randomseed" -ct "substance_input" -smn 0 -smx 2147483647 -at "long";
	addAttr -r false -ci true -uac -h true -k true -sn "input_wood_color" -ln "input_wood_color" 
		-nn "Wood Color" -ct "substance_input" -at "float3" -nc 3;
	addAttr -r false -ci true -h true -k true -sn "input_wood_colorr" -ln "input_wood_colorR" 
		-dv 0.76436799764633179 -smn 0 -smx 0 -at "float" -p "input_wood_color";
	addAttr -r false -ci true -h true -k true -sn "input_wood_colorg" -ln "input_wood_colorG" 
		-dv 0.62114202976226807 -smn 0 -smx 0 -at "float" -p "input_wood_color";
	addAttr -r false -ci true -h true -k true -sn "input_wood_colorb" -ln "input_wood_colorB" 
		-dv 0.50656300783157349 -smn 0 -smx 0 -at "float" -p "input_wood_color";
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
	addAttr -r false -ci true -h true -k true -sn "input_add_veins" -ln "input_add_veins" 
		-nn "Add Veins" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_veins_color_intensity" -ln "input_veins_color_intensity" 
		-nn "Veins Color Intensity" -ct "substance_input" -dv 0.69999998807907104 -smn 0 
		-smx 1 -at "float";
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
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "F0F4E202-4B79-4C57-4667-2CBDFFE5DB5B";
	setAttr -s 4 ".tgi";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -7169.6429979943068 -2548.8095378355397 ;
	setAttr ".tgi[0].vh" -type "double2" 6544.6430228295894 1165.4762594709321 ;
	setAttr -s 21 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 452.85714721679688;
	setAttr ".tgi[0].ni[0].y" -380;
	setAttr ".tgi[0].ni[0].nvs" 1923;
	setAttr ".tgi[0].ni[1].x" 1117.142822265625;
	setAttr ".tgi[0].ni[1].y" -394.28570556640625;
	setAttr ".tgi[0].ni[1].nvs" 1923;
	setAttr ".tgi[0].ni[2].x" 768.5714111328125;
	setAttr ".tgi[0].ni[2].y" -764.28570556640625;
	setAttr ".tgi[0].ni[2].nvs" 1923;
	setAttr ".tgi[0].ni[3].x" 87.142860412597656;
	setAttr ".tgi[0].ni[3].y" 694.28570556640625;
	setAttr ".tgi[0].ni[3].nvs" 1923;
	setAttr ".tgi[0].ni[4].x" 87.142860412597656;
	setAttr ".tgi[0].ni[4].y" 475.71429443359375;
	setAttr ".tgi[0].ni[4].nvs" 1923;
	setAttr ".tgi[0].ni[5].x" 768.5714111328125;
	setAttr ".tgi[0].ni[5].y" -1462.857177734375;
	setAttr ".tgi[0].ni[5].nvs" 1922;
	setAttr ".tgi[0].ni[6].x" -872.85711669921875;
	setAttr ".tgi[0].ni[6].y" -280;
	setAttr ".tgi[0].ni[6].nvs" 1923;
	setAttr ".tgi[0].ni[7].x" 87.142860412597656;
	setAttr ".tgi[0].ni[7].y" 124.28571319580078;
	setAttr ".tgi[0].ni[7].nvs" 1922;
	setAttr ".tgi[0].ni[8].x" 452.85714721679688;
	setAttr ".tgi[0].ni[8].y" -51.428569793701172;
	setAttr ".tgi[0].ni[8].nvs" 1923;
	setAttr ".tgi[0].ni[9].x" 452.85714721679688;
	setAttr ".tgi[0].ni[9].y" 240;
	setAttr ".tgi[0].ni[9].nvs" 1923;
	setAttr ".tgi[0].ni[10].x" -254.28572082519531;
	setAttr ".tgi[0].ni[10].y" 928.5714111328125;
	setAttr ".tgi[0].ni[10].nvs" 1922;
	setAttr ".tgi[0].ni[11].x" -254.28572082519531;
	setAttr ".tgi[0].ni[11].y" 1398.5714111328125;
	setAttr ".tgi[0].ni[11].nvs" 1922;
	setAttr ".tgi[0].ni[12].x" 452.85714721679688;
	setAttr ".tgi[0].ni[12].y" -948.5714111328125;
	setAttr ".tgi[0].ni[12].nvs" 1923;
	setAttr ".tgi[0].ni[13].x" 87.142860412597656;
	setAttr ".tgi[0].ni[13].y" -882.85711669921875;
	setAttr ".tgi[0].ni[13].nvs" 1922;
	setAttr ".tgi[0].ni[14].x" 768.5714111328125;
	setAttr ".tgi[0].ni[14].y" -70;
	setAttr ".tgi[0].ni[14].nvs" 2387;
	setAttr ".tgi[0].ni[15].x" 87.142860412597656;
	setAttr ".tgi[0].ni[15].y" -345.71429443359375;
	setAttr ".tgi[0].ni[15].nvs" 1922;
	setAttr ".tgi[0].ni[16].x" -565.71429443359375;
	setAttr ".tgi[0].ni[16].y" -71.428573608398438;
	setAttr ".tgi[0].ni[16].nvs" 1970;
	setAttr ".tgi[0].ni[17].x" 452.85714721679688;
	setAttr ".tgi[0].ni[17].y" -204.28572082519531;
	setAttr ".tgi[0].ni[17].nvs" 1923;
	setAttr ".tgi[0].ni[18].x" 87.142860412597656;
	setAttr ".tgi[0].ni[18].y" 300;
	setAttr ".tgi[0].ni[18].nvs" 1923;
	setAttr ".tgi[0].ni[19].x" -254.28572082519531;
	setAttr ".tgi[0].ni[19].y" 458.57144165039062;
	setAttr ".tgi[0].ni[19].nvs" 1922;
	setAttr ".tgi[0].ni[20].x" 1117.142822265625;
	setAttr ".tgi[0].ni[20].y" -1714.2857666015625;
	setAttr ".tgi[0].ni[20].nvs" 1923;
	setAttr ".tgi[1].tn" -type "string" "Untitled_2";
	setAttr ".tgi[1].vl" -type "double2" -5896.4287628730335 -2070.2381282808346 ;
	setAttr ".tgi[1].vh" -type "double2" 7817.8572579508627 1644.0476690256373 ;
	setAttr -s 23 ".tgi[1].ni";
	setAttr ".tgi[1].ni[0].x" 1214.2857666015625;
	setAttr ".tgi[1].ni[0].y" -735.71429443359375;
	setAttr ".tgi[1].ni[0].nvs" 1923;
	setAttr ".tgi[1].ni[1].x" 1214.2857666015625;
	setAttr ".tgi[1].ni[1].y" -2057.142822265625;
	setAttr ".tgi[1].ni[1].nvs" 1923;
	setAttr ".tgi[1].ni[2].x" 252.85714721679688;
	setAttr ".tgi[1].ni[2].y" -1290;
	setAttr ".tgi[1].ni[2].nvs" 1923;
	setAttr ".tgi[1].ni[3].x" 740;
	setAttr ".tgi[1].ni[3].y" -1807.142822265625;
	setAttr ".tgi[1].ni[3].nvs" 1922;
	setAttr ".tgi[1].ni[4].x" 252.85714721679688;
	setAttr ".tgi[1].ni[4].y" -542.85711669921875;
	setAttr ".tgi[1].ni[4].nvs" 1923;
	setAttr ".tgi[1].ni[5].x" 252.85714721679688;
	setAttr ".tgi[1].ni[5].y" -718.5714111328125;
	setAttr ".tgi[1].ni[5].nvs" 1923;
	setAttr ".tgi[1].ni[6].x" -244.28572082519531;
	setAttr ".tgi[1].ni[6].y" -1225.7142333984375;
	setAttr ".tgi[1].ni[6].nvs" 1922;
	setAttr ".tgi[1].ni[7].x" -244.28572082519531;
	setAttr ".tgi[1].ni[7].y" -214.28572082519531;
	setAttr ".tgi[1].ni[7].nvs" 1922;
	setAttr ".tgi[1].ni[8].x" -244.28572082519531;
	setAttr ".tgi[1].ni[8].y" 137.14285278320312;
	setAttr ".tgi[1].ni[8].nvs" 1923;
	setAttr ".tgi[1].ni[9].x" -741.4285888671875;
	setAttr ".tgi[1].ni[9].y" 114.28571319580078;
	setAttr ".tgi[1].ni[9].nvs" 1922;
	setAttr ".tgi[1].ni[10].x" 740;
	setAttr ".tgi[1].ni[10].y" 1660;
	setAttr ".tgi[1].ni[10].nvs" 1922;
	setAttr ".tgi[1].ni[11].x" -1360;
	setAttr ".tgi[1].ni[11].y" -504.28570556640625;
	setAttr ".tgi[1].ni[11].nvs" 1923;
	setAttr ".tgi[1].ni[12].x" 740;
	setAttr ".tgi[1].ni[12].y" -410;
	setAttr ".tgi[1].ni[12].nvs" 2387;
	setAttr ".tgi[1].ni[13].x" -244.28572082519531;
	setAttr ".tgi[1].ni[13].y" -38.571430206298828;
	setAttr ".tgi[1].ni[13].nvs" 1923;
	setAttr ".tgi[1].ni[14].x" -741.4285888671875;
	setAttr ".tgi[1].ni[14].y" 1054.2857666015625;
	setAttr ".tgi[1].ni[14].nvs" 1922;
	setAttr ".tgi[1].ni[15].x" 252.85714721679688;
	setAttr ".tgi[1].ni[15].y" -390;
	setAttr ".tgi[1].ni[15].nvs" 1923;
	setAttr ".tgi[1].ni[16].x" 740;
	setAttr ".tgi[1].ni[16].y" -1104.2857666015625;
	setAttr ".tgi[1].ni[16].nvs" 1923;
	setAttr ".tgi[1].ni[17].x" -244.28572082519531;
	setAttr ".tgi[1].ni[17].y" 352.85714721679688;
	setAttr ".tgi[1].ni[17].nvs" 1923;
	setAttr ".tgi[1].ni[18].x" -1052.857177734375;
	setAttr ".tgi[1].ni[18].y" -358.57144165039062;
	setAttr ".tgi[1].ni[18].nvs" 1970;
	setAttr ".tgi[1].ni[19].x" 1214.2857666015625;
	setAttr ".tgi[1].ni[19].y" 1410;
	setAttr ".tgi[1].ni[19].nvs" 1923;
	setAttr ".tgi[1].ni[20].x" -741.4285888671875;
	setAttr ".tgi[1].ni[20].y" 584.28570556640625;
	setAttr ".tgi[1].ni[20].nvs" 1922;
	setAttr ".tgi[1].ni[21].x" 252.85714721679688;
	setAttr ".tgi[1].ni[21].y" -97.142860412597656;
	setAttr ".tgi[1].ni[21].nvs" 1923;
	setAttr ".tgi[1].ni[22].x" -244.28572082519531;
	setAttr ".tgi[1].ni[22].y" -684.28570556640625;
	setAttr ".tgi[1].ni[22].nvs" 1922;
	setAttr ".tgi[2].tn" -type "string" "Untitled_3";
	setAttr ".tgi[2].vl" -type "double2" -4123.2141218724773 -879.76186980330897 ;
	setAttr ".tgi[2].vh" -type "double2" 2962.4998822808311 1039.2856729882121 ;
	setAttr -s 23 ".tgi[2].ni";
	setAttr ".tgi[2].ni[0].x" -1161.4285888671875;
	setAttr ".tgi[2].ni[0].y" 35.213565826416016;
	setAttr ".tgi[2].ni[0].nvs" 1970;
	setAttr ".tgi[2].ni[1].x" 588.5714111328125;
	setAttr ".tgi[2].ni[1].y" -645.71429443359375;
	setAttr ".tgi[2].ni[1].nvs" 2387;
	setAttr ".tgi[2].ni[2].x" -371.42855834960938;
	setAttr ".tgi[2].ni[2].y" -457.14285278320312;
	setAttr ".tgi[2].ni[2].nvs" 1922;
	setAttr ".tgi[2].ni[3].x" 128.57142639160156;
	setAttr ".tgi[2].ni[3].y" -641.4285888671875;
	setAttr ".tgi[2].ni[3].nvs" 1923;
	setAttr ".tgi[2].ni[4].x" 1034.2857666015625;
	setAttr ".tgi[2].ni[4].y" 1781.4285888671875;
	setAttr ".tgi[2].ni[4].nvs" 1923;
	setAttr ".tgi[2].ni[5].x" -850;
	setAttr ".tgi[2].ni[5].y" 381.42855834960938;
	setAttr ".tgi[2].ni[5].nvs" 1922;
	setAttr ".tgi[2].ni[6].x" 1034.2857666015625;
	setAttr ".tgi[2].ni[6].y" -971.4285888671875;
	setAttr ".tgi[2].ni[6].nvs" 1923;
	setAttr ".tgi[2].ni[7].x" -371.42855834960938;
	setAttr ".tgi[2].ni[7].y" -927.14288330078125;
	setAttr ".tgi[2].ni[7].nvs" 1922;
	setAttr ".tgi[2].ni[8].x" -371.42855834960938;
	setAttr ".tgi[2].ni[8].y" -105.71428680419922;
	setAttr ".tgi[2].ni[8].nvs" 1923;
	setAttr ".tgi[2].ni[9].x" -371.42855834960938;
	setAttr ".tgi[2].ni[9].y" -281.42855834960938;
	setAttr ".tgi[2].ni[9].nvs" 1923;
	setAttr ".tgi[2].ni[10].x" -371.42855834960938;
	setAttr ".tgi[2].ni[10].y" -1440;
	setAttr ".tgi[2].ni[10].nvs" 1922;
	setAttr ".tgi[2].ni[11].x" 588.5714111328125;
	setAttr ".tgi[2].ni[11].y" 1448.5714111328125;
	setAttr ".tgi[2].ni[11].nvs" 1922;
	setAttr ".tgi[2].ni[12].x" -371.42855834960938;
	setAttr ".tgi[2].ni[12].y" 135.71427917480469;
	setAttr ".tgi[2].ni[12].nvs" 1923;
	setAttr ".tgi[2].ni[13].x" 1034.2857666015625;
	setAttr ".tgi[2].ni[13].y" 1198.5714111328125;
	setAttr ".tgi[2].ni[13].nvs" 1923;
	setAttr ".tgi[2].ni[14].x" -1468.5714111328125;
	setAttr ".tgi[2].ni[14].y" -232.85714721679688;
	setAttr ".tgi[2].ni[14].nvs" 1923;
	setAttr ".tgi[2].ni[15].x" 588.5714111328125;
	setAttr ".tgi[2].ni[15].y" 2031.4285888671875;
	setAttr ".tgi[2].ni[15].nvs" 1922;
	setAttr ".tgi[2].ni[16].x" -850;
	setAttr ".tgi[2].ni[16].y" -88.571426391601562;
	setAttr ".tgi[2].ni[16].nvs" 1922;
	setAttr ".tgi[2].ni[17].x" 128.57142639160156;
	setAttr ".tgi[2].ni[17].y" -1515.7142333984375;
	setAttr ".tgi[2].ni[17].nvs" 1923;
	setAttr ".tgi[2].ni[18].x" 128.57142639160156;
	setAttr ".tgi[2].ni[18].y" -332.85714721679688;
	setAttr ".tgi[2].ni[18].nvs" 1923;
	setAttr ".tgi[2].ni[19].x" -850;
	setAttr ".tgi[2].ni[19].y" 851.4285888671875;
	setAttr ".tgi[2].ni[19].nvs" 1922;
	setAttr ".tgi[2].ni[20].x" 128.57142639160156;
	setAttr ".tgi[2].ni[20].y" -794.28570556640625;
	setAttr ".tgi[2].ni[20].nvs" 1923;
	setAttr ".tgi[2].ni[21].x" 128.57142639160156;
	setAttr ".tgi[2].ni[21].y" -970;
	setAttr ".tgi[2].ni[21].nvs" 1923;
	setAttr ".tgi[2].ni[22].x" 588.5714111328125;
	setAttr ".tgi[2].ni[22].y" -1340;
	setAttr ".tgi[2].ni[22].nvs" 1923;
	setAttr ".tgi[3].tn" -type "string" "Untitled_4";
	setAttr ".tgi[3].vl" -type "double2" -2237.8423046707421 -2686.0223332164937 ;
	setAttr ".tgi[3].vh" -type "double2" 2045.5171964259926 2737.0337091920114 ;
	setAttr -s 25 ".tgi[3].ni";
	setAttr ".tgi[3].ni[0].x" 682.85711669921875;
	setAttr ".tgi[3].ni[0].y" -2108.571533203125;
	setAttr ".tgi[3].ni[0].nvs" 1923;
	setAttr ".tgi[3].ni[1].x" -341.42855834960938;
	setAttr ".tgi[3].ni[1].y" 298.57144165039062;
	setAttr ".tgi[3].ni[1].nvs" 1923;
	setAttr ".tgi[3].ni[2].x" 682.85711669921875;
	setAttr ".tgi[3].ni[2].y" 1357.142822265625;
	setAttr ".tgi[3].ni[2].nvs" 1923;
	setAttr ".tgi[3].ni[3].x" 334.28570556640625;
	setAttr ".tgi[3].ni[3].y" -460;
	setAttr ".tgi[3].ni[3].nvs" 2387;
	setAttr ".tgi[3].ni[4].x" 21.428571701049805;
	setAttr ".tgi[3].ni[4].y" -594.28570556640625;
	setAttr ".tgi[3].ni[4].nvs" 1923;
	setAttr ".tgi[3].ni[5].x" 682.85711669921875;
	setAttr ".tgi[3].ni[5].y" 1944.2857666015625;
	setAttr ".tgi[3].ni[5].nvs" 1923;
	setAttr ".tgi[3].ni[6].x" 334.28570556640625;
	setAttr ".tgi[3].ni[6].y" -1154.2857666015625;
	setAttr ".tgi[3].ni[6].nvs" 1923;
	setAttr ".tgi[3].ni[7].x" -341.42855834960938;
	setAttr ".tgi[3].ni[7].y" -88.571426391601562;
	setAttr ".tgi[3].ni[7].nvs" 1923;
	setAttr ".tgi[3].ni[8].x" 682.85711669921875;
	setAttr ".tgi[3].ni[8].y" -785.71429443359375;
	setAttr ".tgi[3].ni[8].nvs" 1923;
	setAttr ".tgi[3].ni[9].x" 21.428571701049805;
	setAttr ".tgi[3].ni[9].y" -1341.4285888671875;
	setAttr ".tgi[3].ni[9].nvs" 1923;
	setAttr ".tgi[3].ni[10].x" 21.428571701049805;
	setAttr ".tgi[3].ni[10].y" -770;
	setAttr ".tgi[3].ni[10].nvs" 1923;
	setAttr ".tgi[3].ni[11].x" 334.28570556640625;
	setAttr ".tgi[3].ni[11].y" -1858.5714111328125;
	setAttr ".tgi[3].ni[11].nvs" 1922;
	setAttr ".tgi[3].ni[12].x" 334.28570556640625;
	setAttr ".tgi[3].ni[12].y" 1607.142822265625;
	setAttr ".tgi[3].ni[12].nvs" 1922;
	setAttr ".tgi[3].ni[13].x" -680;
	setAttr ".tgi[3].ni[13].y" 532.85711669921875;
	setAttr ".tgi[3].ni[13].nvs" 1922;
	setAttr ".tgi[3].ni[14].x" -680;
	setAttr ".tgi[3].ni[14].y" 1002.8571166992188;
	setAttr ".tgi[3].ni[14].nvs" 1922;
	setAttr ".tgi[3].ni[15].x" 21.428571701049805;
	setAttr ".tgi[3].ni[15].y" -147.14285278320312;
	setAttr ".tgi[3].ni[15].nvs" 1923;
	setAttr ".tgi[3].ni[16].x" -1298.5714111328125;
	setAttr ".tgi[3].ni[16].y" -284.28570556640625;
	setAttr ".tgi[3].ni[16].nvs" 1923;
	setAttr ".tgi[3].ni[17].x" 21.428571701049805;
	setAttr ".tgi[3].ni[17].y" -441.42855834960938;
	setAttr ".tgi[3].ni[17].nvs" 1923;
	setAttr ".tgi[3].ni[18].x" -341.42855834960938;
	setAttr ".tgi[3].ni[18].y" 87.142860412597656;
	setAttr ".tgi[3].ni[18].nvs" 1923;
	setAttr ".tgi[3].ni[19].x" -341.42855834960938;
	setAttr ".tgi[3].ni[19].y" -1277.142822265625;
	setAttr ".tgi[3].ni[19].nvs" 1922;
	setAttr ".tgi[3].ni[20].x" -680;
	setAttr ".tgi[3].ni[20].y" 62.857143402099609;
	setAttr ".tgi[3].ni[20].nvs" 1922;
	setAttr ".tgi[3].ni[21].x" -341.42855834960938;
	setAttr ".tgi[3].ni[21].y" -264.28570556640625;
	setAttr ".tgi[3].ni[21].nvs" 1922;
	setAttr ".tgi[3].ni[22].x" -991.4285888671875;
	setAttr ".tgi[3].ni[22].y" -262.85714721679688;
	setAttr ".tgi[3].ni[22].nvs" 1970;
	setAttr ".tgi[3].ni[23].x" -341.42855834960938;
	setAttr ".tgi[3].ni[23].y" -734.28570556640625;
	setAttr ".tgi[3].ni[23].nvs" 1922;
	setAttr ".tgi[3].ni[24].x" 334.28570556640625;
	setAttr ".tgi[3].ni[24].y" 2194.28564453125;
	setAttr ".tgi[3].ni[24].nvs" 1922;
createNode objectSet -n "group1";
	rename -uid "68B1E4A1-4D5C-C517-49BA-FDA679C2A3F5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5";
	rename -uid "6628DC37-4553-17CD-A567-FAABC5BAD377";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	rename -uid "5915C2FC-408E-9F47-9C13-60B5EACE0871";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[591:598]" "f[643:645]";
createNode objectSet -n "group2";
	rename -uid "4CD2DE7B-4F79-8356-6DA4-3E8F7D4C9C2D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6";
	rename -uid "EA4630BD-4999-1434-7615-8A807A48BF4D";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "02D8D5A5-47FB-C7DF-8DD9-24BC05126B55";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[643:645]";
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
createNode groupParts -n "pasted__groupParts2";
	rename -uid "973789CF-4BC0-43E0-D899-73BA7448F168";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[643:645]";
createNode groupParts -n "pasted__groupParts1";
	rename -uid "2CC0F21A-487B-4871-AB15-24B87B54CD88";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[591:598]" "f[643:645]";
createNode groupId -n "pasted__groupId5";
	rename -uid "05DE5B70-44DA-1752-4D71-96BB0DAB1C22";
	setAttr ".ihi" 0;
createNode groupId -n "pasted__groupId6";
	rename -uid "2DD6E53C-4F47-E228-BC12-7DBB380E4D18";
	setAttr ".ihi" 0;
createNode objectSet -n "pasted__group1";
	rename -uid "79EE5CC2-4788-5454-F0E4-4983B33D1841";
	setAttr ".ihi" 0;
createNode objectSet -n "pasted__group2";
	rename -uid "3AE6207A-421F-76F9-5CD4-C5B4688E8E2D";
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
select -ne :time1;
	setAttr ".o" 0;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
	setAttr ".rtfm" 1;
select -ne :renderPartition;
	setAttr -s 14 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 22 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 20 ".u";
select -ne :defaultRenderingList1;
	setAttr -s 2 ".r";
select -ne :lightList1;
select -ne :defaultTextureList1;
	setAttr -s 98 ".tx";
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
	setAttr ".dss" -type "string" "standardSurface1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultLightSet;
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
connectAttr "hunte__dev__Wallsubnet__1_01.outputObjects[0].outputGeos[0].outputParts[0].outputPartExtraAttributes[0].outputPartExtraAttributeData" "|hunte__dev__Wallsubnet__1_01|WallTool|uvunwrap1_0|uvunwrap1_0Shape.ptdist"
		;
connectAttr "hunte__dev__Wallsubnet__1_01.outputObjects[0].outputGeos[0].outputParts[0].outputPartExtraAttributes[1].outputPartExtraAttributeData" "|hunte__dev__Wallsubnet__1_01|WallTool|uvunwrap1_0|uvunwrap1_0Shape.side"
		;
connectAttr ":time1.o" "pasted__hunte__dev__NewRockGeo__1_01.inTime";
connectAttr "pasted__hunte__dev__NewRockGeo__1_01.outputObjects[0].outputObjectTranslate" "pasted__RockGeo.t"
		;
connectAttr "pasted__hunte__dev__NewRockGeo__1_01.outputObjects[0].outputObjectRotate" "pasted__RockGeo.r"
		;
connectAttr "pasted__hunte__dev__NewRockGeo__1_01.outputObjects[0].outputObjectScale" "pasted__RockGeo.s"
		;
connectAttr "pasted__hunte__dev__NewRockGeo__1_01.outputObjects[0].outputGeos[0].outputParts[0].outputPartMeshData" "|Rock2|pasted__hunte__dev__NewRockGeo__1_01|pasted__RockGeo|pasted__uvunwrap1_0|pasted__uvunwrap1_0Shape.i"
		;
connectAttr ":time1.o" "hunte__dev__BottomlessBucket__1_01.inTime";
connectAttr "hunte__dev__BottomlessBucket__1_01.outputObjects[0].outputObjectTranslate" "geo1.t"
		;
connectAttr "hunte__dev__BottomlessBucket__1_01.outputObjects[0].outputObjectRotate" "geo1.r"
		;
connectAttr "hunte__dev__BottomlessBucket__1_01.outputObjects[0].outputObjectScale" "geo1.s"
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
connectAttr "groupParts2.og" "|hunte__dev__Tree_subnet__1_01|tube_object1|uvunwrap1_0|uvunwrap1_0Shape.i"
		;
connectAttr "groupId5.id" "|hunte__dev__Tree_subnet__1_01|tube_object1|uvunwrap1_0|uvunwrap1_0Shape.iog.og[0].gid"
		;
connectAttr "group1.mwc" "|hunte__dev__Tree_subnet__1_01|tube_object1|uvunwrap1_0|uvunwrap1_0Shape.iog.og[0].gco"
		;
connectAttr "groupId6.id" "|hunte__dev__Tree_subnet__1_01|tube_object1|uvunwrap1_0|uvunwrap1_0Shape.iog.og[1].gid"
		;
connectAttr "group2.mwc" "|hunte__dev__Tree_subnet__1_01|tube_object1|uvunwrap1_0|uvunwrap1_0Shape.iog.og[1].gco"
		;
connectAttr ":time1.o" "pasted__hunte__dev__Tree_subnet__1_01.inTime";
connectAttr "pasted__hunte__dev__Tree_subnet__1_01.outputObjects[0].outputObjectTranslate" "pasted__tube_object1.t"
		;
connectAttr "pasted__hunte__dev__Tree_subnet__1_01.outputObjects[0].outputObjectRotate" "pasted__tube_object1.r"
		;
connectAttr "pasted__hunte__dev__Tree_subnet__1_01.outputObjects[0].outputObjectScale" "pasted__tube_object1.s"
		;
connectAttr "pasted__groupParts2.og" "|group3|pasted__hunte__dev__Tree_subnet__1_01|pasted__tube_object1|pasted__uvunwrap1_0|pasted__uvunwrap1_0Shape.i"
		;
connectAttr "pasted__groupId5.id" "|group3|pasted__hunte__dev__Tree_subnet__1_01|pasted__tube_object1|pasted__uvunwrap1_0|pasted__uvunwrap1_0Shape.iog.og[0].gid"
		;
connectAttr "pasted__group1.mwc" "|group3|pasted__hunte__dev__Tree_subnet__1_01|pasted__tube_object1|pasted__uvunwrap1_0|pasted__uvunwrap1_0Shape.iog.og[0].gco"
		;
connectAttr "pasted__groupId6.id" "|group3|pasted__hunte__dev__Tree_subnet__1_01|pasted__tube_object1|pasted__uvunwrap1_0|pasted__uvunwrap1_0Shape.iog.og[1].gid"
		;
connectAttr "pasted__group2.mwc" "|group3|pasted__hunte__dev__Tree_subnet__1_01|pasted__tube_object1|pasted__uvunwrap1_0|pasted__uvunwrap1_0Shape.iog.og[1].gco"
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
connectAttr "multiplyDivide3.o" "CutWood.base_color";
connectAttr "bump2d3.o" "CutWood.n";
connectAttr "file23.oa" "CutWood.specular_roughness";
connectAttr "file24.oa" "CutWood.metalness";
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
connectAttr "file3.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "set1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "displacementShader1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "file5.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "file6.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "Moon_Surface_diffuse.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "place2dTexture1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[6].dn"
		;
connectAttr "Moon_Surface_roughness.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[7].dn"
		;
connectAttr "bump2d1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[8].dn"
		;
connectAttr "multiplyDivide1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[9].dn"
		;
connectAttr "Moon_Surface_ambientocclusion.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[10].dn"
		;
connectAttr "Moon_Surface_basecolor.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[11].dn"
		;
connectAttr "file8.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[12].dn"
		;
connectAttr "Moon_Surface_height.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[13].dn"
		;
connectAttr "MoonSurface.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[14].dn"
		;
connectAttr "Moon_Surface_metallic.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[15].dn"
		;
connectAttr "substanceNode1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[16].dn"
		;
connectAttr "file4.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[17].dn"
		;
connectAttr "file7.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[18].dn"
		;
connectAttr "Moon_Surface_normal.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[19].dn"
		;
connectAttr "file2.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[20].dn"
		;
connectAttr "set2.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[0].dn"
		;
connectAttr "file10.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[1].dn"
		;
connectAttr "file16.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[2].dn"
		;
connectAttr "Heavy_Cracked_Concrete_Sidewalk_01_diffuse.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[3].dn"
		;
connectAttr "file13.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[4].dn"
		;
connectAttr "file17.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[5].dn"
		;
connectAttr "Heavy_Cracked_Concrete_Sidewalk_01_height.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[6].dn"
		;
connectAttr "Heavy_Cracked_Concrete_Sidewalk_01_roughness.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[7].dn"
		;
connectAttr "file19.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[8].dn"
		;
connectAttr "Heavy_Cracked_Concrete_Sidewalk_01_normal.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[9].dn"
		;
connectAttr "Heavy_Cracked_Concrete_Sidewalk_01_specularlevel.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[10].dn"
		;
connectAttr "place2dTexture2.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[11].dn"
		;
connectAttr "CementSurface.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[12].dn"
		;
connectAttr "file12.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[13].dn"
		;
connectAttr "Heavy_Cracked_Concrete_Sidewalk_01_basecolor.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[14].dn"
		;
connectAttr "bump2d2.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[15].dn"
		;
connectAttr "displacementShader2.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[16].dn"
		;
connectAttr "file11.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[17].dn"
		;
connectAttr "CementSkin.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[18].dn"
		;
connectAttr "file18.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[19].dn"
		;
connectAttr "Heavy_Cracked_Concrete_Sidewalk_01_ambientocclusion.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[20].dn"
		;
connectAttr "multiplyDivide2.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[21].dn"
		;
connectAttr "Heavy_Cracked_Concrete_Sidewalk_01_metallic.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[22].dn"
		;
connectAttr "substanceNode2.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[2].ni[0].dn"
		;
connectAttr "CutWood.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[2].ni[1].dn"
		;
connectAttr "Pine_Wood_Outdoor_Panelling_01_roughness.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[2].ni[2].dn"
		;
connectAttr "bump2d3.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[2].ni[3].dn"
		;
connectAttr "file20.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[2].ni[4].dn"
		;
connectAttr "Pine_Wood_Outdoor_Panelling_01_ambientocclusion.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[2].ni[5].dn"
		;
connectAttr "set3.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[2].ni[6].dn"
		;
connectAttr "Pine_Wood_Outdoor_Panelling_01_metallic.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[2].ni[7].dn"
		;
connectAttr "file27.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[2].ni[8].dn"
		;
connectAttr "file22.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[2].ni[9].dn"
		;
connectAttr "Pine_Wood_Outdoor_Panelling_01_height.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[2].ni[10].dn"
		;
connectAttr "Pine_Wood_Outdoor_Panelling_01_specularlevel.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[2].ni[11].dn"
		;
connectAttr "file21.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[2].ni[12].dn"
		;
connectAttr "file25.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[2].ni[13].dn"
		;
connectAttr "place2dTexture3.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[2].ni[14].dn"
		;
connectAttr "Pine_Wood_Outdoor_Panelling_01_diffuse.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[2].ni[15].dn"
		;
connectAttr "Pine_Wood_Outdoor_Panelling_01_normal.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[2].ni[16].dn"
		;
connectAttr "file26.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[2].ni[17].dn"
		;
connectAttr "multiplyDivide3.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[2].ni[18].dn"
		;
connectAttr "Pine_Wood_Outdoor_Panelling_01_basecolor.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[2].ni[19].dn"
		;
connectAttr "file23.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[2].ni[20].dn"
		;
connectAttr "file24.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[2].ni[21].dn"
		;
connectAttr "displacementShader3.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[2].ni[22].dn"
		;
connectAttr "file36.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[3].ni[0].dn"
		;
connectAttr "file28.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[3].ni[1].dn"
		;
connectAttr "file35.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[3].ni[2].dn"
		;
connectAttr "CarvedWood1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[3].ni[3].dn"
		;
connectAttr "file30.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[3].ni[4].dn"
		;
connectAttr "file31.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[3].ni[5].dn"
		;
connectAttr "displacementShader4.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[3].ni[6].dn"
		;
connectAttr "file29.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[3].ni[7].dn"
		;
connectAttr "set4.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[3].ni[8].dn"
		;
connectAttr "file34.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[3].ni[9].dn"
		;
connectAttr "file33.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[3].ni[10].dn"
		;
connectAttr "Carved_Wood_specular.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[3].ni[11].dn"
		;
connectAttr "Carved_Wood_diffuse.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[3].ni[12].dn"
		;
connectAttr "Carved_Wood_ambientocclusion.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[3].ni[13].dn"
		;
connectAttr "Carved_Wood_basecolor.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[3].ni[14].dn"
		;
connectAttr "multiplyDivide4.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[3].ni[15].dn"
		;
connectAttr "place2dTexture4.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[3].ni[16].dn"
		;
connectAttr "bump2d4.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[3].ni[17].dn"
		;
connectAttr "file32.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[3].ni[18].dn"
		;
connectAttr "Carved_Wood_height.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[3].ni[19].dn"
		;
connectAttr "Carved_Wood_normal.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[3].ni[20].dn"
		;
connectAttr "Carved_Wood_roughness.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[3].ni[21].dn"
		;
connectAttr "CarvedWood.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[3].ni[22].dn"
		;
connectAttr "Carved_Wood_metallic.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[3].ni[23].dn"
		;
connectAttr "Carved_Wood_specularlevel.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[3].ni[24].dn"
		;
connectAttr "groupId5.msg" "group1.gn" -na;
connectAttr "|hunte__dev__Tree_subnet__1_01|tube_object1|uvunwrap1_0|uvunwrap1_0Shape.iog.og[0]" "group1.dsm"
		 -na;
connectAttr "hunte__dev__Tree_subnet__1_01.outputObjects[0].outputGeos[0].outputParts[0].outputPartMeshData" "groupParts1.ig"
		;
connectAttr "groupId5.id" "groupParts1.gi";
connectAttr "groupId6.msg" "group2.gn" -na;
connectAttr "|hunte__dev__Tree_subnet__1_01|tube_object1|uvunwrap1_0|uvunwrap1_0Shape.iog.og[1]" "group2.dsm"
		 -na;
connectAttr "groupParts1.og" "groupParts2.ig";
connectAttr "groupId6.id" "groupParts2.gi";
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
connectAttr "pasted__groupParts1.og" "pasted__groupParts2.ig";
connectAttr "pasted__groupId6.id" "pasted__groupParts2.gi";
connectAttr "pasted__hunte__dev__Tree_subnet__1_01.outputObjects[0].outputGeos[0].outputParts[0].outputPartMeshData" "pasted__groupParts1.ig"
		;
connectAttr "pasted__groupId5.id" "pasted__groupParts1.gi";
connectAttr "pasted__groupId5.msg" "pasted__group1.gn" -na;
connectAttr "|group3|pasted__hunte__dev__Tree_subnet__1_01|pasted__tube_object1|pasted__uvunwrap1_0|pasted__uvunwrap1_0Shape.iog.og[0]" "pasted__group1.dsm"
		 -na;
connectAttr "pasted__groupId6.msg" "pasted__group2.gn" -na;
connectAttr "|group3|pasted__hunte__dev__Tree_subnet__1_01|pasted__tube_object1|pasted__uvunwrap1_0|pasted__uvunwrap1_0Shape.iog.og[1]" "pasted__group2.dsm"
		 -na;
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
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "directionalLightShape1.ltd" ":lightList1.l" -na;
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
connectAttr "directionalLight1.iog" ":defaultLightSet.dsm" -na;
// End of ROBO and BALL Anim.ma
