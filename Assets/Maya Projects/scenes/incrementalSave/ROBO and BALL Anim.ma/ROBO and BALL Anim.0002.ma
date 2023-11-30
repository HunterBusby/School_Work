//Maya ASCII 2024 scene
//Name: ROBO and BALL Anim.ma
//Last modified: Fri, Nov 10, 2023 03:27:30 PM
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
fileInfo "UUID" "C0824EFA-4057-5F93-1FD7-99AA68A2365C";
createNode transform -s -n "persp";
	rename -uid "A4E4D85E-46E1-161C-0A10-C88E8DA5A22A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 21.219107374637115 36.458485004793033 59.737092394051764 ;
	setAttr ".r" -type "double3" -25.538352729502058 22.99999999997819 8.6380714602808243e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "DD306209-4CBA-8C33-032F-53A812EB31BF";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 72.631333812285817;
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
createNode transform -n "RockGeo" -p "hunte__dev__NewRockGeo__1_01";
	rename -uid "11C3B380-4557-85C4-F2C0-3DBB676E3876";
createNode transform -n "uvunwrap1_0" -p "RockGeo";
	rename -uid "00A96922-488F-BB1C-1FB7-F5974E6160EC";
	setAttr ".t" -type "double3" 0 1.8904170120238737 4.7563935739012759 ;
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
		-nn "Segments" -min 1 -smn 1 -smx 50 -at "long" -p "houdiniAssetParm";
	addAttr -is true -ci true -sn "houdiniAssetParm_BrickJitter" -ln "houdiniAssetParm_BrickJitter" 
		-nn "Multi" -smn 0 -smx 1 -at "float" -p "houdiniAssetParm";
	addAttr -is true -ci true -sn "houdiniAssetParm_BrickDepth" -ln "houdiniAssetParm_BrickDepth" 
		-nn "Length" -smn 0 -smx 10 -at "float" -p "houdiniAssetParm";
	setAttr ".t" -type "double3" 0 0 -1.1811237170213502 ;
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
	setAttr -cb on ".houdiniAssetParm_WallWidth" 10;
	setAttr -cb on ".houdiniAssetParm_WallHeight" 10;
	setAttr -cb on ".houdiniAssetParm_BrickSegments" 10;
	setAttr -cb on ".houdiniAssetParm_BrickJitter" 0.16200000047683716;
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
createNode lightLinker -s -n "lightLinker1";
	rename -uid "1A4F8F33-4DCB-AD84-A4F0-A989697DC4D5";
	setAttr -s 8 ".lnk";
	setAttr -s 8 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "DB351300-4F6E-2F9B-B374-91ADE0E43875";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "E5FFA7D1-4865-DE15-E524-D499780A1B5C";
createNode displayLayerManager -n "layerManager";
	rename -uid "25C4C108-4116-8E76-F994-8D929EDB32F2";
createNode displayLayer -n "defaultLayer";
	rename -uid "D9FC099B-4C94-1D81-9449-318F603795A2";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "67666676-443D-B14C-82E2-CD916FFE04B3";
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
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 960\n            -height 817\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
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
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 960\\n    -height 817\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 960\\n    -height 817\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
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
		-dv 0.47415700554847717 -smn 0 -smx 0 -at "float" -p "input_color_1";
	addAttr -r false -ci true -h true -k true -sn "input_color_1g" -ln "input_color_1G" 
		-dv 0.45013201236724854 -smn 0 -smx 0 -at "float" -p "input_color_1";
	addAttr -r false -ci true -h true -k true -sn "input_color_1b" -ln "input_color_1B" 
		-dv 0.39371699094772339 -smn 0 -smx 0 -at "float" -p "input_color_1";
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
		-dv 0.25995099544525146 -smn 0 -smx 0 -at "float" -p "input_color_2";
	addAttr -r false -ci true -h true -k true -sn "input_color_2g" -ln "input_color_2G" 
		-dv 0.24019800126552582 -smn 0 -smx 0 -at "float" -p "input_color_2";
	addAttr -r false -ci true -h true -k true -sn "input_color_2b" -ln "input_color_2B" 
		-dv 0.21403299272060394 -smn 0 -smx 0 -at "float" -p "input_color_2";
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
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "2FD1744C-4DB9-4845-781B-CAA237F83597";
	setAttr -s 2 ".tgi";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -7173.2144264238268 -2545.238109406027 ;
	setAttr ".tgi[0].vh" -type "double2" 6541.0715944000694 1169.0476879004448 ;
	setAttr -s 21 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 1117.142822265625;
	setAttr ".tgi[0].ni[0].y" -1714.2857666015625;
	setAttr ".tgi[0].ni[0].nvs" 1923;
	setAttr ".tgi[0].ni[1].x" 452.85714721679688;
	setAttr ".tgi[0].ni[1].y" -948.5714111328125;
	setAttr ".tgi[0].ni[1].nvs" 1923;
	setAttr ".tgi[0].ni[2].x" 452.85714721679688;
	setAttr ".tgi[0].ni[2].y" -51.428569793701172;
	setAttr ".tgi[0].ni[2].nvs" 1923;
	setAttr ".tgi[0].ni[3].x" 768.5714111328125;
	setAttr ".tgi[0].ni[3].y" -1462.857177734375;
	setAttr ".tgi[0].ni[3].nvs" 1922;
	setAttr ".tgi[0].ni[4].x" -254.28572082519531;
	setAttr ".tgi[0].ni[4].y" 1398.5714111328125;
	setAttr ".tgi[0].ni[4].nvs" 1922;
	setAttr ".tgi[0].ni[5].x" 87.142860412597656;
	setAttr ".tgi[0].ni[5].y" -882.85711669921875;
	setAttr ".tgi[0].ni[5].nvs" 1922;
	setAttr ".tgi[0].ni[6].x" 87.142860412597656;
	setAttr ".tgi[0].ni[6].y" 124.28571319580078;
	setAttr ".tgi[0].ni[6].nvs" 1922;
	setAttr ".tgi[0].ni[7].x" -872.85711669921875;
	setAttr ".tgi[0].ni[7].y" -280;
	setAttr ".tgi[0].ni[7].nvs" 1923;
	setAttr ".tgi[0].ni[8].x" -565.71429443359375;
	setAttr ".tgi[0].ni[8].y" -71.428573608398438;
	setAttr ".tgi[0].ni[8].nvs" 1970;
	setAttr ".tgi[0].ni[9].x" 87.142860412597656;
	setAttr ".tgi[0].ni[9].y" 694.28570556640625;
	setAttr ".tgi[0].ni[9].nvs" 1923;
	setAttr ".tgi[0].ni[10].x" 768.5714111328125;
	setAttr ".tgi[0].ni[10].y" -70;
	setAttr ".tgi[0].ni[10].nvs" 2387;
	setAttr ".tgi[0].ni[11].x" 452.85714721679688;
	setAttr ".tgi[0].ni[11].y" 240;
	setAttr ".tgi[0].ni[11].nvs" 1923;
	setAttr ".tgi[0].ni[12].x" -254.28572082519531;
	setAttr ".tgi[0].ni[12].y" 928.5714111328125;
	setAttr ".tgi[0].ni[12].nvs" 1922;
	setAttr ".tgi[0].ni[13].x" 452.85714721679688;
	setAttr ".tgi[0].ni[13].y" -204.28572082519531;
	setAttr ".tgi[0].ni[13].nvs" 1923;
	setAttr ".tgi[0].ni[14].x" -254.28572082519531;
	setAttr ".tgi[0].ni[14].y" 458.57144165039062;
	setAttr ".tgi[0].ni[14].nvs" 1922;
	setAttr ".tgi[0].ni[15].x" 87.142860412597656;
	setAttr ".tgi[0].ni[15].y" 475.71429443359375;
	setAttr ".tgi[0].ni[15].nvs" 1923;
	setAttr ".tgi[0].ni[16].x" 87.142860412597656;
	setAttr ".tgi[0].ni[16].y" 300;
	setAttr ".tgi[0].ni[16].nvs" 1923;
	setAttr ".tgi[0].ni[17].x" 1117.142822265625;
	setAttr ".tgi[0].ni[17].y" -394.28570556640625;
	setAttr ".tgi[0].ni[17].nvs" 1923;
	setAttr ".tgi[0].ni[18].x" 87.142860412597656;
	setAttr ".tgi[0].ni[18].y" -345.71429443359375;
	setAttr ".tgi[0].ni[18].nvs" 1922;
	setAttr ".tgi[0].ni[19].x" 768.5714111328125;
	setAttr ".tgi[0].ni[19].y" -764.28570556640625;
	setAttr ".tgi[0].ni[19].nvs" 1923;
	setAttr ".tgi[0].ni[20].x" 452.85714721679688;
	setAttr ".tgi[0].ni[20].y" -380;
	setAttr ".tgi[0].ni[20].nvs" 1923;
	setAttr ".tgi[1].tn" -type "string" "Untitled_2";
	setAttr ".tgi[1].vl" -type "double2" -975.57939654790619 -2061.7018776202076 ;
	setAttr ".tgi[1].vh" -type "double2" 1169.663881039643 654.33783746291999 ;
	setAttr -s 23 ".tgi[1].ni";
	setAttr ".tgi[1].ni[0].x" -741.4285888671875;
	setAttr ".tgi[1].ni[0].y" 1054.2857666015625;
	setAttr ".tgi[1].ni[0].nvs" 1922;
	setAttr ".tgi[1].ni[1].x" -244.28572082519531;
	setAttr ".tgi[1].ni[1].y" -214.28572082519531;
	setAttr ".tgi[1].ni[1].nvs" 1922;
	setAttr ".tgi[1].ni[2].x" -741.4285888671875;
	setAttr ".tgi[1].ni[2].y" 584.28570556640625;
	setAttr ".tgi[1].ni[2].nvs" 1922;
	setAttr ".tgi[1].ni[3].x" 740;
	setAttr ".tgi[1].ni[3].y" 1660;
	setAttr ".tgi[1].ni[3].nvs" 1922;
	setAttr ".tgi[1].ni[4].x" 1214.2857666015625;
	setAttr ".tgi[1].ni[4].y" 1410;
	setAttr ".tgi[1].ni[4].nvs" 1923;
	setAttr ".tgi[1].ni[5].x" 1214.2857666015625;
	setAttr ".tgi[1].ni[5].y" -2057.142822265625;
	setAttr ".tgi[1].ni[5].nvs" 1923;
	setAttr ".tgi[1].ni[6].x" -244.28572082519531;
	setAttr ".tgi[1].ni[6].y" -1225.7142333984375;
	setAttr ".tgi[1].ni[6].nvs" 1922;
	setAttr ".tgi[1].ni[7].x" 252.85714721679688;
	setAttr ".tgi[1].ni[7].y" -97.142860412597656;
	setAttr ".tgi[1].ni[7].nvs" 1923;
	setAttr ".tgi[1].ni[8].x" -1052.857177734375;
	setAttr ".tgi[1].ni[8].y" -358.57144165039062;
	setAttr ".tgi[1].ni[8].nvs" 1970;
	setAttr ".tgi[1].ni[9].x" 740;
	setAttr ".tgi[1].ni[9].y" -1104.2857666015625;
	setAttr ".tgi[1].ni[9].nvs" 1923;
	setAttr ".tgi[1].ni[10].x" -244.28572082519531;
	setAttr ".tgi[1].ni[10].y" 137.14285278320312;
	setAttr ".tgi[1].ni[10].nvs" 1923;
	setAttr ".tgi[1].ni[11].x" -244.28572082519531;
	setAttr ".tgi[1].ni[11].y" -38.571430206298828;
	setAttr ".tgi[1].ni[11].nvs" 1923;
	setAttr ".tgi[1].ni[12].x" -1360;
	setAttr ".tgi[1].ni[12].y" -504.28570556640625;
	setAttr ".tgi[1].ni[12].nvs" 1923;
	setAttr ".tgi[1].ni[13].x" -244.28572082519531;
	setAttr ".tgi[1].ni[13].y" 352.85714721679688;
	setAttr ".tgi[1].ni[13].nvs" 1923;
	setAttr ".tgi[1].ni[14].x" 252.85714721679688;
	setAttr ".tgi[1].ni[14].y" -718.5714111328125;
	setAttr ".tgi[1].ni[14].nvs" 1923;
	setAttr ".tgi[1].ni[15].x" 740;
	setAttr ".tgi[1].ni[15].y" -410;
	setAttr ".tgi[1].ni[15].nvs" 2387;
	setAttr ".tgi[1].ni[16].x" -244.28572082519531;
	setAttr ".tgi[1].ni[16].y" -684.28570556640625;
	setAttr ".tgi[1].ni[16].nvs" 1922;
	setAttr ".tgi[1].ni[17].x" 252.85714721679688;
	setAttr ".tgi[1].ni[17].y" -390;
	setAttr ".tgi[1].ni[17].nvs" 1923;
	setAttr ".tgi[1].ni[18].x" -741.4285888671875;
	setAttr ".tgi[1].ni[18].y" 114.28571319580078;
	setAttr ".tgi[1].ni[18].nvs" 1922;
	setAttr ".tgi[1].ni[19].x" 252.85714721679688;
	setAttr ".tgi[1].ni[19].y" -1290;
	setAttr ".tgi[1].ni[19].nvs" 1923;
	setAttr ".tgi[1].ni[20].x" 1214.2857666015625;
	setAttr ".tgi[1].ni[20].y" -735.71429443359375;
	setAttr ".tgi[1].ni[20].nvs" 1923;
	setAttr ".tgi[1].ni[21].x" 740;
	setAttr ".tgi[1].ni[21].y" -1807.142822265625;
	setAttr ".tgi[1].ni[21].nvs" 1922;
	setAttr ".tgi[1].ni[22].x" 252.85714721679688;
	setAttr ".tgi[1].ni[22].y" -542.85711669921875;
	setAttr ".tgi[1].ni[22].nvs" 1923;
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
	setAttr -s 8 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 13 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 8 ".u";
select -ne :defaultRenderingList1;
	setAttr -s 2 ".r";
select -ne :lightList1;
select -ne :defaultTextureList1;
	setAttr -s 34 ".tx";
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
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "v_layered1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "set1.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "v_layered2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "set2.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "v_layered1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "set1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "v_layered2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "set2.message" ":defaultLightSet.message";
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
connectAttr "CementSurface.msg" "materialInfo4.t" -na;
connectAttr "file12.oa" "bump2d2.bv";
connectAttr "file16.oa" "displacementShader2.d";
connectAttr "file2.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "file8.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "bump2d1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "Moon_Surface_diffuse.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "Moon_Surface_basecolor.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "Moon_Surface_height.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "Moon_Surface_roughness.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[6].dn"
		;
connectAttr "place2dTexture1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[7].dn"
		;
connectAttr "substanceNode1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[8].dn"
		;
connectAttr "file5.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[9].dn"
		;
connectAttr "MoonSurface.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[10].dn"
		;
connectAttr "multiplyDivide1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[11].dn"
		;
connectAttr "Moon_Surface_ambientocclusion.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[12].dn"
		;
connectAttr "file4.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[13].dn"
		;
connectAttr "Moon_Surface_normal.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[14].dn"
		;
connectAttr "file6.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[15].dn"
		;
connectAttr "file7.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[16].dn"
		;
connectAttr "set1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[17].dn"
		;
connectAttr "Moon_Surface_metallic.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[18].dn"
		;
connectAttr "displacementShader1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[19].dn"
		;
connectAttr "file3.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[20].dn"
		;
connectAttr "Heavy_Cracked_Concrete_Sidewalk_01_basecolor.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[0].dn"
		;
connectAttr "Heavy_Cracked_Concrete_Sidewalk_01_roughness.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[1].dn"
		;
connectAttr "Heavy_Cracked_Concrete_Sidewalk_01_ambientocclusion.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[2].dn"
		;
connectAttr "Heavy_Cracked_Concrete_Sidewalk_01_specularlevel.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[3].dn"
		;
connectAttr "file18.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[4].dn"
		;
connectAttr "file10.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[5].dn"
		;
connectAttr "Heavy_Cracked_Concrete_Sidewalk_01_height.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[6].dn"
		;
connectAttr "multiplyDivide2.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[7].dn"
		;
connectAttr "CementSkin.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[8].dn"
		;
connectAttr "displacementShader2.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[9].dn"
		;
connectAttr "file19.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[10].dn"
		;
connectAttr "file12.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[11].dn"
		;
connectAttr "place2dTexture2.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[12].dn"
		;
connectAttr "file11.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[13].dn"
		;
connectAttr "file17.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[14].dn"
		;
connectAttr "CementSurface.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[15].dn"
		;
connectAttr "Heavy_Cracked_Concrete_Sidewalk_01_metallic.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[16].dn"
		;
connectAttr "bump2d2.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[17].dn"
		;
connectAttr "Heavy_Cracked_Concrete_Sidewalk_01_normal.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[18].dn"
		;
connectAttr "file16.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[19].dn"
		;
connectAttr "set2.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[20].dn"
		;
connectAttr "Heavy_Cracked_Concrete_Sidewalk_01_diffuse.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[21].dn"
		;
connectAttr "file13.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[22].dn"
		;
connectAttr "v_layered1SG.pa" ":renderPartition.st" -na;
connectAttr "set1.pa" ":renderPartition.st" -na;
connectAttr "v_layered2SG.pa" ":renderPartition.st" -na;
connectAttr "set2.pa" ":renderPartition.st" -na;
connectAttr "v_layered1.msg" ":defaultShaderList1.s" -na;
connectAttr "MoonSurface.msg" ":defaultShaderList1.s" -na;
connectAttr "displacementShader1.msg" ":defaultShaderList1.s" -na;
connectAttr "v_layered2.msg" ":defaultShaderList1.s" -na;
connectAttr "CementSurface.msg" ":defaultShaderList1.s" -na;
connectAttr "displacementShader2.msg" ":defaultShaderList1.s" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multiplyDivide1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "bump2d1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multiplyDivide2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "bump2d2.msg" ":defaultRenderUtilityList1.u" -na;
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
connectAttr "directionalLight1.iog" ":defaultLightSet.dsm" -na;
// End of ROBO and BALL Anim.ma
