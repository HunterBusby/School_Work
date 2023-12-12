//Maya ASCII 2024 scene
//Name: Saga Jeune animation.ma
//Last modified: Mon, Dec 11, 2023 08:10:26 PM
//Codeset: 1252
file -rdi 1 -ns "PALBot" -rfn "PALBotRN" -op "v=0;" -typ "mayaAscii" "C:/Users/hunte/Documents/Education/Fall 2023/Modeling/Imported/PALBOT/PALBOT/scenes/PALBot.ma";
file -rdi 1 -ns "PALBot1" -rfn "PALBotRN1" -op "v=0;" -typ "mayaAscii" "C:/Users/hunte/Documents/Education/Fall 2023/Modeling/Imported/PALBOT/PALBOT/scenes/PALBot.ma";
file -r -ns "PALBot" -dr 1 -rfn "PALBotRN" -op "v=0;" -typ "mayaAscii" "C:/Users/hunte/Documents/Education/Fall 2023/Modeling/Imported/PALBOT/PALBOT/scenes/PALBot.ma";
file -r -ns "PALBot1" -dr 1 -rfn "PALBotRN1" -op "v=0;" -typ "mayaAscii" "C:/Users/hunte/Documents/Education/Fall 2023/Modeling/Imported/PALBOT/PALBOT/scenes/PALBot.ma";
requires maya "2024";
requires -nodeType "houdiniAsset" "houdiniEngine" "5.0 (API: 8)";
requires "stereoCamera" "10.0";
requires -nodeType "substanceNode" -nodeType "substanceOutputNode" "substancemaya" "2.3.2";
requires -nodeType "gameFbxExporter" "gameFbxExporter" "1.0";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" -nodeType "aiStandardSurface"
		 "mtoa" "5.3.0";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2024";
fileInfo "version" "2024";
fileInfo "cutIdentifier" "202302170737-4500172811";
fileInfo "osv" "Windows 11 Home v2009 (Build: 22621)";
fileInfo "UUID" "EA404432-4E57-2583-94E0-409E48FCCF28";
createNode transform -s -n "persp";
	rename -uid "0B68FA2E-43FB-0834-0AB7-EBBCAFC3FD4F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 45.123251190193137 18.436927003706842 10.26097814158677 ;
	setAttr ".r" -type "double3" -11.849218915329505 86.913787178575376 -2.9537903153698691e-14 ;
	setAttr ".rp" -type "double3" 8.8817841970012523e-16 0 7.1054273576010019e-15 ;
	setAttr ".rpt" -type "double3" 7.8830917816677014e-15 -1.3453959253993597e-15 -9.9539126583596209e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "0F646CF5-4FFC-0BE3-E207-F4BF66232120";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999979;
	setAttr ".coi" 37.15204914783169;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0 31.150114927141097 92.535482518305074 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "9FAF1ABA-42FB-9D7C-C647-928379357338";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "BF6D33B3-46CD-C8C5-9E2C-A581D3559B3B";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 49.44838508690561;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "D7702137-44B0-E1A2-BD1F-54BD3FB705D5";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "15F97A42-475E-7CE7-518F-52B2ADB298A6";
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
	rename -uid "522891DA-4344-C27F-7C59-A98D31510C93";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 3.6398170106993031 -5.1118608398268677 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "0D988DC6-433C-75BF-4769-CFA8331A6B1B";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 35.843255790530407;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "pCylinder1";
	rename -uid "706BAFED-4627-5C20-5839-118FD1D459D5";
createNode mesh -n "pCylinderShape1" -p "pCylinder1";
	rename -uid "7BC6DC96-4084-6470-740D-54A9CFE293E6";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode houdiniAsset -n "hunte__dev__Wallsubnet__1_01";
	rename -uid "5987F6A3-414E-B455-0503-B081CEA1E6D1";
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
	setAttr -cb on ".houdiniAssetParm_WallWidth" 5;
	setAttr -cb on ".houdiniAssetParm_WallHeight" 3;
	setAttr -cb on ".houdiniAssetParm_BrickSegments" 10;
	setAttr -cb on ".houdiniAssetParm_BrickJitter" 0.16200000047683716;
	setAttr -cb on ".houdiniAssetParm_BrickDepth" 0.30000001192092896;
createNode transform -n "WallTool" -p "hunte__dev__Wallsubnet__1_01";
	rename -uid "618A2AC0-4283-FDB2-315A-538078883712";
createNode transform -n "uvunwrap1_0" -p "WallTool";
	rename -uid "F6FF6636-4780-7D19-63C0-C49F142BEDC1";
	setAttr ".t" -type "double3" -43.59745181157043 -0.28455196428692098 2.4717856363921134 ;
	setAttr ".s" -type "double3" 9.87734684283466 22.126985380596302 22.126985380596302 ;
createNode mesh -n "uvunwrap1_0Shape" -p "|hunte__dev__Wallsubnet__1_01|WallTool|uvunwrap1_0";
	rename -uid "1B758E35-4497-CEC7-6ECB-18BF23E24EBB";
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
	setAttr ".ai_disp_padding" 0.043999999761581421;
createNode transform -n "directionalLight1";
	rename -uid "9CB5D635-4A6C-BE25-4EFC-87A8C4C99D8A";
	setAttr ".t" -type "double3" 0 33.077393321915167 92.535482518305074 ;
	setAttr ".r" -type "double3" 0 92.159406476836438 0 ;
	setAttr ".s" -type "double3" 31.672941825616086 31.672941825616086 31.672941825616086 ;
createNode directionalLight -n "directionalLightShape1" -p "directionalLight1";
	rename -uid "0BE4EECF-4F6A-30B9-67B0-1593DB5E56C8";
	setAttr -k off ".v";
	setAttr ".cl" -type "float3" 0.83950001 1 0.67900002 ;
createNode transform -n "pCylinder2";
	rename -uid "156347AD-4007-A2D4-A119-2FA9DC48CA80";
	setAttr ".s" -type "double3" 0.33681744715475681 3.3627849298178916 0.33681744715475681 ;
createNode mesh -n "pCylinderShape2" -p "pCylinder2";
	rename -uid "D395A91C-4A8A-AA5A-4C93-4A93E0E23C68";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode houdiniAsset -n "hunte__dev__Hair_Ribbon__1_01";
	rename -uid "EB2C4CC1-4BC8-449E-22BB-368A6C65E2C4";
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
	setAttr ".t" -type "double3" 0 16.18261483369923 19.540467893946765 ;
	setAttr ".otlFilePath" -type "string" "C:/Users/hunte/Documents/houdini19.5/otls/object_hunte.dev.Hair_Ribbon.1.0.hdanc";
	setAttr ".assetName" -type "string" "hunte::dev::Object/Hair_Ribbon::1.0";
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
createNode transform -n "geo1" -p "hunte__dev__Hair_Ribbon__1_01";
	rename -uid "42CB7CAD-4F32-4BFF-8927-69A972390253";
createNode transform -n "uvunwrap1_0" -p "|hunte__dev__Hair_Ribbon__1_01|geo1";
	rename -uid "345CF99D-4DF3-0117-1268-ED8DBB0075D3";
	setAttr ".t" -type "double3" 1.2781696994385332 1.7763568394002505e-15 -7.0982689012304068 ;
	setAttr ".r" -type "double3" 0 -113.33948566616606 0 ;
	setAttr ".s" -type "double3" 0.76724610874057386 0.76724610874057386 0.76724610874057386 ;
	setAttr ".rp" -type "double3" 0.54240050911903381 -0.43763512372970581 1.4296887516975403 ;
	setAttr ".sp" -type "double3" 0.54240050911903381 -0.43763512372970581 1.4296887516975403 ;
createNode mesh -n "uvunwrap1_0Shape" -p "|hunte__dev__Hair_Ribbon__1_01|geo1|uvunwrap1_0";
	rename -uid "CF70ABEC-46FD-547E-037F-9E9AB049F4D8";
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
	setAttr ".ai_disp_height" 0;
	setAttr ".ai_disp_padding" 0.16200000047683716;
createNode houdiniAsset -n "hunte__dev__Basic_Chair__1_01";
	rename -uid "309AA0CC-4DB2-D943-5620-9DBFEA52D8E6";
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
	setAttr ".otlFilePath" -type "string" "C:/Users/hunte/Documents/houdini19.5/otls/object_hunte.dev.Basic_Chair.1.0.hdanc";
	setAttr ".assetName" -type "string" "hunte::dev::Object/Basic_Chair::1.0";
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
createNode transform -n "geo1" -p "hunte__dev__Basic_Chair__1_01";
	rename -uid "72552ED8-41B4-8232-3773-C49041D03399";
createNode transform -n "uvunwrap1_0" -p "|hunte__dev__Basic_Chair__1_01|geo1";
	rename -uid "CEAE8A83-46B4-8D2A-47E7-EB9F2A38317F";
	setAttr ".t" -type "double3" 0 0 14.03876845704553 ;
	setAttr -av ".tz";
	setAttr ".s" -type "double3" 3.42349713644575 3.9482620987790833 3.333179201377519 ;
	setAttr -av ".sx";
createNode mesh -n "uvunwrap1_0Shape" -p "|hunte__dev__Basic_Chair__1_01|geo1|uvunwrap1_0";
	rename -uid "4ACE3D2D-4E6A-A323-1506-2396CE869CF6";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
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
createNode transform -n "directionalLight2";
	rename -uid "08658D04-4CF1-A0EF-BEC9-43ACA9939458";
	setAttr ".t" -type "double3" -0.98296406703304129 -0.24111079637776722 17.202416393346901 ;
	setAttr ".r" -type "double3" 74.560192058515852 0 0 ;
createNode directionalLight -n "directionalLightShape2" -p "directionalLight2";
	rename -uid "2EA73CBE-43A9-9A86-6D8D-238E35C9043D";
	setAttr -k off ".v";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "92E21942-44F5-02A9-3DD5-E8B6F4FCEDB9";
	setAttr -s 38 ".lnk";
	setAttr -s 38 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "AC2CFCE0-4B67-FF3B-E690-578E380BF5F8";
	setAttr ".bsdt[0].bscd" -type "Int32Array" 2 0 1 ;
	setAttr -s 2 ".bspr";
	setAttr -s 2 ".obsv";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "8269F515-46C4-39E3-B288-ADB0F9EAA9F1";
createNode displayLayerManager -n "layerManager";
	rename -uid "C277A052-4305-D114-F0DD-ADBD422B58B2";
createNode displayLayer -n "defaultLayer";
	rename -uid "F226B68C-4960-D29F-0265-24AE0CDCBFCA";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "CA8BFB0C-41A4-5702-3199-F88B88138A17";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "CFD9A02E-4F64-03F4-6B28-1CADD4D435E2";
	setAttr ".g" yes;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "913DE79C-4DF8-D53F-6476-2DBE60EDC30C";
	addAttr -ci true -sn "ARV_options" -ln "ARV_options" -dt "string";
	setAttr ".version" -type "string" "5.3.0";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "BFE5A452-47B9-DA93-9FAE-04BEBBB999FE";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "398C745E-499D-32BE-5BE9-C582CAF918DD";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "CB02589B-4DA8-BCF2-1437-84A9912A30D6";
	setAttr ".output_mode" 0;
	setAttr ".ai_translator" -type "string" "maya";
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "BD229189-46DD-032B-55B0-D090FA8C06C0";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -785.71425449280639 -85.714282308306153 ;
	setAttr ".tgi[0].vh" -type "double2" 757.14282705670462 86.904758451477079 ;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "6803CF99-4F09-64A0-C4C5-C6AB84A6F99A";
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
		+ "            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 990\n            -height 836\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 1\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n"
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
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"|persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n"
		+ "                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n"
		+ "                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n"
		+ "                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -bluePencil 1\n                -greasePencils 0\n                -excludeObjectPreset \"All\" \n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n"
		+ "            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n"
		+ "            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n"
		+ "            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n"
		+ "\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 990\\n    -height 836\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 990\\n    -height 836\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "08E2CDFB-4692-E3B0-1EEE-E2B515A34532";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 59 -ast 0 -aet 239 ";
	setAttr ".st" 6;
createNode reference -n "PALBotRN";
	rename -uid "183C0FAA-4303-C816-4DD1-29AF3D4B6ED6";
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
		"PALBotRN"
		"PALBotRN" 0
		"PALBotRN" 379
		2 "|PALBot:PALBOT_GRP" "scale" " -type \"double3\" 1 1 1"
		2 "|PALBot:PALBOT_GRP" "rotatePivot" " -type \"double3\" 0 0 0"
		2 "|PALBot:PALBOT_GRP" "scalePivot" " -type \"double3\" 0 0 0"
		2 "|PALBot:PALBOT_GRP" "scalePivotTranslate" " -type \"double3\" 0 0 0"
		2 "|PALBot:PALBOT_GRP|PALBot:PALbot_MESH|PALBot:PALbot_HeadGRP|PALBot:GLASS_clean|PALBot:GLASS_cleanShape" 
		"uvSet[0].uvSetName" " -type \"string\" \"map1\""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN.global_scale" 
		"PALBotRN.placeHolderList[1]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN.Mesh_lock" 
		"PALBotRN.placeHolderList[2]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN.translateX" 
		"PALBotRN.placeHolderList[3]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN.translateZ" 
		"PALBotRN.placeHolderList[4]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN.translateY" 
		"PALBotRN.placeHolderList[5]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN.rotateY" 
		"PALBotRN.placeHolderList[6]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN.rotateX" 
		"PALBotRN.placeHolderList[7]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN.rotateZ" 
		"PALBotRN.placeHolderList[8]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root.rotateX" 
		"PALBotRN.placeHolderList[9]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root.rotateY" 
		"PALBotRN.placeHolderList[10]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root.rotateZ" 
		"PALBotRN.placeHolderList[11]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root.translateX" 
		"PALBotRN.placeHolderList[12]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root.translateY" 
		"PALBotRN.placeHolderList[13]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root.translateZ" 
		"PALBotRN.placeHolderList[14]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_knee_aim_offset|PALBot:PALbot_L_knee_aim_ctrl.space_switch" 
		"PALBotRN.placeHolderList[15]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_knee_aim_offset|PALBot:PALbot_L_knee_aim_ctrl.translateX" 
		"PALBotRN.placeHolderList[16]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_knee_aim_offset|PALBot:PALbot_L_knee_aim_ctrl.translateY" 
		"PALBotRN.placeHolderList[17]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_knee_aim_offset|PALBot:PALbot_L_knee_aim_ctrl.translateZ" 
		"PALBotRN.placeHolderList[18]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_knee_aim_offset|PALBot:PALbot_L_knee_aim_ctrl.rotateX" 
		"PALBotRN.placeHolderList[19]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_knee_aim_offset|PALBot:PALbot_L_knee_aim_ctrl.rotateY" 
		"PALBotRN.placeHolderList[20]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_knee_aim_offset|PALBot:PALbot_L_knee_aim_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[21]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_foot_secondary_offset|PALBot:PALbot_L_foot_secondary.rotateX" 
		"PALBotRN.placeHolderList[22]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_foot_secondary_offset|PALBot:PALbot_L_foot_secondary.rotateY" 
		"PALBotRN.placeHolderList[23]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_foot_secondary_offset|PALBot:PALbot_L_foot_secondary.rotateZ" 
		"PALBotRN.placeHolderList[24]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_foot_secondary_offset|PALBot:PALbot_L_foot_secondary.translateX" 
		"PALBotRN.placeHolderList[25]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_foot_secondary_offset|PALBot:PALbot_L_foot_secondary.translateY" 
		"PALBotRN.placeHolderList[26]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_foot_secondary_offset|PALBot:PALbot_L_foot_secondary.translateZ" 
		"PALBotRN.placeHolderList[27]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_foot_secondary_offset|PALBot:PALbot_L_foot_secondary|PALBot:PALbot_L_footSec_reshape01_offset|PALBot:PALbot_L_footSec_reshape01.translateX" 
		"PALBotRN.placeHolderList[28]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_foot_secondary_offset|PALBot:PALbot_L_foot_secondary|PALBot:PALbot_L_footSec_reshape01_offset|PALBot:PALbot_L_footSec_reshape01.translateY" 
		"PALBotRN.placeHolderList[29]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_foot_secondary_offset|PALBot:PALbot_L_foot_secondary|PALBot:PALbot_L_footSec_reshape01_offset|PALBot:PALbot_L_footSec_reshape01.translateZ" 
		"PALBotRN.placeHolderList[30]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_foot_secondary_offset|PALBot:PALbot_L_foot_secondary|PALBot:PALbot_L_footSec_reshape01_offset|PALBot:PALbot_L_footSec_reshape01.rotateX" 
		"PALBotRN.placeHolderList[31]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_foot_secondary_offset|PALBot:PALbot_L_foot_secondary|PALBot:PALbot_L_footSec_reshape01_offset|PALBot:PALbot_L_footSec_reshape01.rotateY" 
		"PALBotRN.placeHolderList[32]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_foot_secondary_offset|PALBot:PALbot_L_foot_secondary|PALBot:PALbot_L_footSec_reshape01_offset|PALBot:PALbot_L_footSec_reshape01.rotateZ" 
		"PALBotRN.placeHolderList[33]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_foot_secondary_offset|PALBot:PALbot_L_foot_secondary|PALBot:PALbot_L_footSec_reshape02_offset|PALBot:PALbot_L_footSec_reshape02.translateX" 
		"PALBotRN.placeHolderList[34]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_foot_secondary_offset|PALBot:PALbot_L_foot_secondary|PALBot:PALbot_L_footSec_reshape02_offset|PALBot:PALbot_L_footSec_reshape02.translateY" 
		"PALBotRN.placeHolderList[35]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_foot_secondary_offset|PALBot:PALbot_L_foot_secondary|PALBot:PALbot_L_footSec_reshape02_offset|PALBot:PALbot_L_footSec_reshape02.translateZ" 
		"PALBotRN.placeHolderList[36]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_foot_secondary_offset|PALBot:PALbot_L_foot_secondary|PALBot:PALbot_L_footSec_reshape02_offset|PALBot:PALbot_L_footSec_reshape02.rotateX" 
		"PALBotRN.placeHolderList[37]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_foot_secondary_offset|PALBot:PALbot_L_foot_secondary|PALBot:PALbot_L_footSec_reshape02_offset|PALBot:PALbot_L_footSec_reshape02.rotateY" 
		"PALBotRN.placeHolderList[38]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_foot_secondary_offset|PALBot:PALbot_L_foot_secondary|PALBot:PALbot_L_footSec_reshape02_offset|PALBot:PALbot_L_footSec_reshape02.rotateZ" 
		"PALBotRN.placeHolderList[39]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_Engine_ctrl_offset|PALBot:PALbot_L_Engine_ctrl.on_off" 
		"PALBotRN.placeHolderList[40]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_Engine_ctrl_offset|PALBot:PALbot_L_Engine_ctrl.translateX" 
		"PALBotRN.placeHolderList[41]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_Engine_ctrl_offset|PALBot:PALbot_L_Engine_ctrl.translateY" 
		"PALBotRN.placeHolderList[42]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_Engine_ctrl_offset|PALBot:PALbot_L_Engine_ctrl.translateZ" 
		"PALBotRN.placeHolderList[43]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_Engine_ctrl_offset|PALBot:PALbot_L_Engine_ctrl.rotateX" 
		"PALBotRN.placeHolderList[44]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_Engine_ctrl_offset|PALBot:PALbot_L_Engine_ctrl.rotateY" 
		"PALBotRN.placeHolderList[45]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_Engine_ctrl_offset|PALBot:PALbot_L_Engine_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[46]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_Engine_ctrl_offset|PALBot:PALbot_L_Engine_ctrl.scaleX" 
		"PALBotRN.placeHolderList[47]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_Engine_ctrl_offset|PALBot:PALbot_L_Engine_ctrl.scaleY" 
		"PALBotRN.placeHolderList[48]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_Engine_ctrl_offset|PALBot:PALbot_L_Engine_ctrl.scaleZ" 
		"PALBotRN.placeHolderList[49]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_IK_Foot_offset|PALBot:PALbot_L_IK_Foot_ctrl.Heel_Peel" 
		"PALBotRN.placeHolderList[50]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_IK_Foot_offset|PALBot:PALbot_L_IK_Foot_ctrl.follow_hip" 
		"PALBotRN.placeHolderList[51]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_IK_Foot_offset|PALBot:PALbot_L_IK_Foot_ctrl.translateX" 
		"PALBotRN.placeHolderList[52]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_IK_Foot_offset|PALBot:PALbot_L_IK_Foot_ctrl.translateZ" 
		"PALBotRN.placeHolderList[53]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_IK_Foot_offset|PALBot:PALbot_L_IK_Foot_ctrl.translateY" 
		"PALBotRN.placeHolderList[54]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_IK_Foot_offset|PALBot:PALbot_L_IK_Foot_ctrl.rotateX" 
		"PALBotRN.placeHolderList[55]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_IK_Foot_offset|PALBot:PALbot_L_IK_Foot_ctrl.rotateY" 
		"PALBotRN.placeHolderList[56]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_IK_Foot_offset|PALBot:PALbot_L_IK_Foot_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[57]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_IK_Foot_offset|PALBot:PALbot_L_IK_Foot_ctrl|PALBot:PALbot_L_IK_heel_lift_offset|PALBot:PALbot_L_IK_heel_lift_tip.rotateX" 
		"PALBotRN.placeHolderList[58]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_IK_Foot_offset|PALBot:PALbot_L_IK_Foot_ctrl|PALBot:PALbot_L_IK_heel_lift_offset|PALBot:PALbot_L_IK_heel_lift_tip.rotateY" 
		"PALBotRN.placeHolderList[59]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_IK_Foot_offset|PALBot:PALbot_L_IK_Foot_ctrl|PALBot:PALbot_L_IK_heel_lift_offset|PALBot:PALbot_L_IK_heel_lift_tip.rotateZ" 
		"PALBotRN.placeHolderList[60]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_IK_Foot_offset|PALBot:PALbot_L_IK_Foot_ctrl|PALBot:PALbot_L_IK_heel_lift_offset|PALBot:PALbot_L_IK_heel_lift_tip.translateX" 
		"PALBotRN.placeHolderList[61]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_IK_Foot_offset|PALBot:PALbot_L_IK_Foot_ctrl|PALBot:PALbot_L_IK_heel_lift_offset|PALBot:PALbot_L_IK_heel_lift_tip.translateY" 
		"PALBotRN.placeHolderList[62]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_IK_Foot_offset|PALBot:PALbot_L_IK_Foot_ctrl|PALBot:PALbot_L_IK_heel_lift_offset|PALBot:PALbot_L_IK_heel_lift_tip.translateZ" 
		"PALBotRN.placeHolderList[63]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_IK_Foot_offset|PALBot:PALbot_L_IK_Foot_ctrl|PALBot:PALbot_L_IK_heel_lift_offset|PALBot:PALbot_L_IK_heel_lift_tip|PALBot:PALbot_L_IK_foot_tip_offset|PALBot:PALbot_L_IK_foot_tip.translateX" 
		"PALBotRN.placeHolderList[64]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_IK_Foot_offset|PALBot:PALbot_L_IK_Foot_ctrl|PALBot:PALbot_L_IK_heel_lift_offset|PALBot:PALbot_L_IK_heel_lift_tip|PALBot:PALbot_L_IK_foot_tip_offset|PALBot:PALbot_L_IK_foot_tip.translateY" 
		"PALBotRN.placeHolderList[65]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_IK_Foot_offset|PALBot:PALbot_L_IK_Foot_ctrl|PALBot:PALbot_L_IK_heel_lift_offset|PALBot:PALbot_L_IK_heel_lift_tip|PALBot:PALbot_L_IK_foot_tip_offset|PALBot:PALbot_L_IK_foot_tip.translateZ" 
		"PALBotRN.placeHolderList[66]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_IK_Foot_offset|PALBot:PALbot_L_IK_Foot_ctrl|PALBot:PALbot_L_IK_heel_lift_offset|PALBot:PALbot_L_IK_heel_lift_tip|PALBot:PALbot_L_IK_foot_tip_offset|PALBot:PALbot_L_IK_foot_tip.rotateX" 
		"PALBotRN.placeHolderList[67]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_IK_Foot_offset|PALBot:PALbot_L_IK_Foot_ctrl|PALBot:PALbot_L_IK_heel_lift_offset|PALBot:PALbot_L_IK_heel_lift_tip|PALBot:PALbot_L_IK_foot_tip_offset|PALBot:PALbot_L_IK_foot_tip.rotateY" 
		"PALBotRN.placeHolderList[68]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_IK_Foot_offset|PALBot:PALbot_L_IK_Foot_ctrl|PALBot:PALbot_L_IK_heel_lift_offset|PALBot:PALbot_L_IK_heel_lift_tip|PALBot:PALbot_L_IK_foot_tip_offset|PALBot:PALbot_L_IK_foot_tip.rotateZ" 
		"PALBotRN.placeHolderList[69]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_IK_Foot_offset|PALBot:PALbot_L_IK_Foot_ctrl|PALBot:PALbot_L_IK_heel_lift_offset|PALBot:PALbot_L_IK_heel_lift_tip|PALBot:PALbot_L_IK_foot_tip_offset|PALBot:PALbot_L_IK_foot_tip|PALBot:PALbot_L_IK_footBall_offset|PALBot:PALbot_L_IK_footBall_ctrl.translateX" 
		"PALBotRN.placeHolderList[70]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_IK_Foot_offset|PALBot:PALbot_L_IK_Foot_ctrl|PALBot:PALbot_L_IK_heel_lift_offset|PALBot:PALbot_L_IK_heel_lift_tip|PALBot:PALbot_L_IK_foot_tip_offset|PALBot:PALbot_L_IK_foot_tip|PALBot:PALbot_L_IK_footBall_offset|PALBot:PALbot_L_IK_footBall_ctrl.translateY" 
		"PALBotRN.placeHolderList[71]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_IK_Foot_offset|PALBot:PALbot_L_IK_Foot_ctrl|PALBot:PALbot_L_IK_heel_lift_offset|PALBot:PALbot_L_IK_heel_lift_tip|PALBot:PALbot_L_IK_foot_tip_offset|PALBot:PALbot_L_IK_foot_tip|PALBot:PALbot_L_IK_footBall_offset|PALBot:PALbot_L_IK_footBall_ctrl.translateZ" 
		"PALBotRN.placeHolderList[72]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_IK_Foot_offset|PALBot:PALbot_L_IK_Foot_ctrl|PALBot:PALbot_L_IK_heel_lift_offset|PALBot:PALbot_L_IK_heel_lift_tip|PALBot:PALbot_L_IK_foot_tip_offset|PALBot:PALbot_L_IK_foot_tip|PALBot:PALbot_L_IK_footBall_offset|PALBot:PALbot_L_IK_footBall_ctrl.rotateX" 
		"PALBotRN.placeHolderList[73]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_IK_Foot_offset|PALBot:PALbot_L_IK_Foot_ctrl|PALBot:PALbot_L_IK_heel_lift_offset|PALBot:PALbot_L_IK_heel_lift_tip|PALBot:PALbot_L_IK_foot_tip_offset|PALBot:PALbot_L_IK_foot_tip|PALBot:PALbot_L_IK_footBall_offset|PALBot:PALbot_L_IK_footBall_ctrl.rotateY" 
		"PALBotRN.placeHolderList[74]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_IK_Foot_offset|PALBot:PALbot_L_IK_Foot_ctrl|PALBot:PALbot_L_IK_heel_lift_offset|PALBot:PALbot_L_IK_heel_lift_tip|PALBot:PALbot_L_IK_foot_tip_offset|PALBot:PALbot_L_IK_foot_tip|PALBot:PALbot_L_IK_footBall_offset|PALBot:PALbot_L_IK_footBall_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[75]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_HandVIS_offset|PALBot:PALbot_R_HandVIS.Hand_Vis" 
		"PALBotRN.placeHolderList[76]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_HandVIS_offset|PALBot:PALbot_R_HandVIS.canon_light" 
		"PALBotRN.placeHolderList[77]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl.secondary_vis" 
		"PALBotRN.placeHolderList[78]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl.translateY" 
		"PALBotRN.placeHolderList[79]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl.translateX" 
		"PALBotRN.placeHolderList[80]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl.translateZ" 
		"PALBotRN.placeHolderList[81]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl.rotateX" 
		"PALBotRN.placeHolderList[82]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl.rotateY" 
		"PALBotRN.placeHolderList[83]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[84]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl.secondary_vis" 
		"PALBotRN.placeHolderList[85]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl.rotateY" 
		"PALBotRN.placeHolderList[86]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl.rotateX" 
		"PALBotRN.placeHolderList[87]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[88]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl.translateX" 
		"PALBotRN.placeHolderList[89]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl.translateY" 
		"PALBotRN.placeHolderList[90]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl.translateZ" 
		"PALBotRN.placeHolderList[91]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_Neck_ctrl_offset|PALBot:PALbot_Neck_ctrl.translateX" 
		"PALBotRN.placeHolderList[92]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_Neck_ctrl_offset|PALBot:PALbot_Neck_ctrl.translateY" 
		"PALBotRN.placeHolderList[93]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_Neck_ctrl_offset|PALBot:PALbot_Neck_ctrl.translateZ" 
		"PALBotRN.placeHolderList[94]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_Neck_ctrl_offset|PALBot:PALbot_Neck_ctrl.rotateX" 
		"PALBotRN.placeHolderList[95]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_Neck_ctrl_offset|PALBot:PALbot_Neck_ctrl.rotateY" 
		"PALBotRN.placeHolderList[96]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_Neck_ctrl_offset|PALBot:PALbot_Neck_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[97]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_Neck_ctrl_offset|PALBot:PALbot_Neck_ctrl|PALBot:PALbot_head_ctrl_offset|PALBot:PALbot_head_ctrl.Space_switch" 
		"PALBotRN.placeHolderList[98]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_Neck_ctrl_offset|PALBot:PALbot_Neck_ctrl|PALBot:PALbot_head_ctrl_offset|PALBot:PALbot_head_ctrl.FaceLight" 
		"PALBotRN.placeHolderList[99]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_Neck_ctrl_offset|PALBot:PALbot_Neck_ctrl|PALBot:PALbot_head_ctrl_offset|PALBot:PALbot_head_ctrl.Led_color" 
		"PALBotRN.placeHolderList[100]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_Neck_ctrl_offset|PALBot:PALbot_Neck_ctrl|PALBot:PALbot_head_ctrl_offset|PALBot:PALbot_head_ctrl.Face_Drawing" 
		"PALBotRN.placeHolderList[101]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_Neck_ctrl_offset|PALBot:PALbot_Neck_ctrl|PALBot:PALbot_head_ctrl_offset|PALBot:PALbot_head_ctrl.rotateY" 
		"PALBotRN.placeHolderList[102]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_Neck_ctrl_offset|PALBot:PALbot_Neck_ctrl|PALBot:PALbot_head_ctrl_offset|PALBot:PALbot_head_ctrl.rotateX" 
		"PALBotRN.placeHolderList[103]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_Neck_ctrl_offset|PALBot:PALbot_Neck_ctrl|PALBot:PALbot_head_ctrl_offset|PALBot:PALbot_head_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[104]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_Neck_ctrl_offset|PALBot:PALbot_Neck_ctrl|PALBot:PALbot_head_ctrl_offset|PALBot:PALbot_head_ctrl.translateX" 
		"PALBotRN.placeHolderList[105]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_Neck_ctrl_offset|PALBot:PALbot_Neck_ctrl|PALBot:PALbot_head_ctrl_offset|PALBot:PALbot_head_ctrl.translateY" 
		"PALBotRN.placeHolderList[106]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_Neck_ctrl_offset|PALBot:PALbot_Neck_ctrl|PALBot:PALbot_head_ctrl_offset|PALBot:PALbot_head_ctrl.translateZ" 
		"PALBotRN.placeHolderList[107]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_R_Clavicle_offset|PALBot:PALbot_R_Clavicle_ctrl.translateX" 
		"PALBotRN.placeHolderList[108]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_R_Clavicle_offset|PALBot:PALbot_R_Clavicle_ctrl.translateY" 
		"PALBotRN.placeHolderList[109]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_R_Clavicle_offset|PALBot:PALbot_R_Clavicle_ctrl.translateZ" 
		"PALBotRN.placeHolderList[110]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_R_Clavicle_offset|PALBot:PALbot_R_Clavicle_ctrl.rotateX" 
		"PALBotRN.placeHolderList[111]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_R_Clavicle_offset|PALBot:PALbot_R_Clavicle_ctrl.rotateY" 
		"PALBotRN.placeHolderList[112]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_R_Clavicle_offset|PALBot:PALbot_R_Clavicle_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[113]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_R_Clavicle_offset|PALBot:PALbot_R_Clavicle_ctrl|PALBot:PALbot_R_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[114]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_R_Clavicle_offset|PALBot:PALbot_R_Clavicle_ctrl|PALBot:PALbot_R_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl.translateX" 
		"PALBotRN.placeHolderList[115]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_R_Clavicle_offset|PALBot:PALbot_R_Clavicle_ctrl|PALBot:PALbot_R_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl.translateY" 
		"PALBotRN.placeHolderList[116]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_R_Clavicle_offset|PALBot:PALbot_R_Clavicle_ctrl|PALBot:PALbot_R_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl.translateZ" 
		"PALBotRN.placeHolderList[117]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_R_Clavicle_offset|PALBot:PALbot_R_Clavicle_ctrl|PALBot:PALbot_R_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[118]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_R_Clavicle_offset|PALBot:PALbot_R_Clavicle_ctrl|PALBot:PALbot_R_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl.rotateY" 
		"PALBotRN.placeHolderList[119]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_R_Clavicle_offset|PALBot:PALbot_R_Clavicle_ctrl|PALBot:PALbot_R_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl.translateX" 
		"PALBotRN.placeHolderList[120]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_R_Clavicle_offset|PALBot:PALbot_R_Clavicle_ctrl|PALBot:PALbot_R_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl.translateY" 
		"PALBotRN.placeHolderList[121]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_R_Clavicle_offset|PALBot:PALbot_R_Clavicle_ctrl|PALBot:PALbot_R_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl.translateZ" 
		"PALBotRN.placeHolderList[122]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_R_Clavicle_offset|PALBot:PALbot_R_Clavicle_ctrl|PALBot:PALbot_R_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl|PALBot:PALbot_R_FK_Elbow_offset|PALBot:PALbot_R_FK_Elbow_ctrl.rotateX" 
		"PALBotRN.placeHolderList[123]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_R_Clavicle_offset|PALBot:PALbot_R_Clavicle_ctrl|PALBot:PALbot_R_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl|PALBot:PALbot_R_FK_Elbow_offset|PALBot:PALbot_R_FK_Elbow_ctrl.translateX" 
		"PALBotRN.placeHolderList[124]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_R_Clavicle_offset|PALBot:PALbot_R_Clavicle_ctrl|PALBot:PALbot_R_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl|PALBot:PALbot_R_FK_Elbow_offset|PALBot:PALbot_R_FK_Elbow_ctrl.translateY" 
		"PALBotRN.placeHolderList[125]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_R_Clavicle_offset|PALBot:PALbot_R_Clavicle_ctrl|PALBot:PALbot_R_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl|PALBot:PALbot_R_FK_Elbow_offset|PALBot:PALbot_R_FK_Elbow_ctrl.translateZ" 
		"PALBotRN.placeHolderList[126]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_R_Clavicle_offset|PALBot:PALbot_R_Clavicle_ctrl|PALBot:PALbot_R_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl|PALBot:PALbot_R_FK_Elbow_offset|PALBot:PALbot_R_FK_Elbow_ctrl|PALBot:PALbot_R_FK_Wrist_ctrl_offset|PALBot:PALbot_R_FK_Wrist_ctrl.translateX" 
		"PALBotRN.placeHolderList[127]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_R_Clavicle_offset|PALBot:PALbot_R_Clavicle_ctrl|PALBot:PALbot_R_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl|PALBot:PALbot_R_FK_Elbow_offset|PALBot:PALbot_R_FK_Elbow_ctrl|PALBot:PALbot_R_FK_Wrist_ctrl_offset|PALBot:PALbot_R_FK_Wrist_ctrl.translateY" 
		"PALBotRN.placeHolderList[128]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_R_Clavicle_offset|PALBot:PALbot_R_Clavicle_ctrl|PALBot:PALbot_R_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl|PALBot:PALbot_R_FK_Elbow_offset|PALBot:PALbot_R_FK_Elbow_ctrl|PALBot:PALbot_R_FK_Wrist_ctrl_offset|PALBot:PALbot_R_FK_Wrist_ctrl.translateZ" 
		"PALBotRN.placeHolderList[129]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_R_Clavicle_offset|PALBot:PALbot_R_Clavicle_ctrl|PALBot:PALbot_R_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl|PALBot:PALbot_R_FK_Elbow_offset|PALBot:PALbot_R_FK_Elbow_ctrl|PALBot:PALbot_R_FK_Wrist_ctrl_offset|PALBot:PALbot_R_FK_Wrist_ctrl.rotateY" 
		"PALBotRN.placeHolderList[130]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_R_Clavicle_offset|PALBot:PALbot_R_Clavicle_ctrl|PALBot:PALbot_R_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl|PALBot:PALbot_R_FK_Elbow_offset|PALBot:PALbot_R_FK_Elbow_ctrl|PALBot:PALbot_R_FK_Wrist_ctrl_offset|PALBot:PALbot_R_FK_Wrist_ctrl.rotateX" 
		"PALBotRN.placeHolderList[131]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_R_Clavicle_offset|PALBot:PALbot_R_Clavicle_ctrl|PALBot:PALbot_R_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl|PALBot:PALbot_R_FK_Elbow_offset|PALBot:PALbot_R_FK_Elbow_ctrl|PALBot:PALbot_R_FK_Wrist_ctrl_offset|PALBot:PALbot_R_FK_Wrist_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[132]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_R_Clavicle_offset|PALBot:PALbot_R_Clavicle_ctrl|PALBot:PALbot_R_arm_IK_FK_switch_offset|PALBot:PALbot_R_arm_IK_FK_switch.IK_FK" 
		"PALBotRN.placeHolderList[133]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_L_Clavicle_offset|PALBot:PALbot_L_Clavicle_ctrl.translateX" 
		"PALBotRN.placeHolderList[134]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_L_Clavicle_offset|PALBot:PALbot_L_Clavicle_ctrl.translateY" 
		"PALBotRN.placeHolderList[135]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_L_Clavicle_offset|PALBot:PALbot_L_Clavicle_ctrl.translateZ" 
		"PALBotRN.placeHolderList[136]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_L_Clavicle_offset|PALBot:PALbot_L_Clavicle_ctrl.rotateX" 
		"PALBotRN.placeHolderList[137]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_L_Clavicle_offset|PALBot:PALbot_L_Clavicle_ctrl.rotateY" 
		"PALBotRN.placeHolderList[138]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_L_Clavicle_offset|PALBot:PALbot_L_Clavicle_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[139]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_L_Clavicle_offset|PALBot:PALbot_L_Clavicle_ctrl|PALBot:PALbot_L_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[140]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_L_Clavicle_offset|PALBot:PALbot_L_Clavicle_ctrl|PALBot:PALbot_L_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl.translateX" 
		"PALBotRN.placeHolderList[141]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_L_Clavicle_offset|PALBot:PALbot_L_Clavicle_ctrl|PALBot:PALbot_L_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl.translateY" 
		"PALBotRN.placeHolderList[142]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_L_Clavicle_offset|PALBot:PALbot_L_Clavicle_ctrl|PALBot:PALbot_L_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl.translateZ" 
		"PALBotRN.placeHolderList[143]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_L_Clavicle_offset|PALBot:PALbot_L_Clavicle_ctrl|PALBot:PALbot_L_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[144]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_L_Clavicle_offset|PALBot:PALbot_L_Clavicle_ctrl|PALBot:PALbot_L_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl.rotateY" 
		"PALBotRN.placeHolderList[145]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_L_Clavicle_offset|PALBot:PALbot_L_Clavicle_ctrl|PALBot:PALbot_L_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl.translateX" 
		"PALBotRN.placeHolderList[146]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_L_Clavicle_offset|PALBot:PALbot_L_Clavicle_ctrl|PALBot:PALbot_L_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl.translateY" 
		"PALBotRN.placeHolderList[147]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_L_Clavicle_offset|PALBot:PALbot_L_Clavicle_ctrl|PALBot:PALbot_L_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl.translateZ" 
		"PALBotRN.placeHolderList[148]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_L_Clavicle_offset|PALBot:PALbot_L_Clavicle_ctrl|PALBot:PALbot_L_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl|PALBot:PALbot_L_FK_Elbow_offset|PALBot:PALbot_L_FK_Elbow_ctrl.rotateX" 
		"PALBotRN.placeHolderList[149]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_L_Clavicle_offset|PALBot:PALbot_L_Clavicle_ctrl|PALBot:PALbot_L_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl|PALBot:PALbot_L_FK_Elbow_offset|PALBot:PALbot_L_FK_Elbow_ctrl.translateX" 
		"PALBotRN.placeHolderList[150]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_L_Clavicle_offset|PALBot:PALbot_L_Clavicle_ctrl|PALBot:PALbot_L_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl|PALBot:PALbot_L_FK_Elbow_offset|PALBot:PALbot_L_FK_Elbow_ctrl.translateY" 
		"PALBotRN.placeHolderList[151]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_L_Clavicle_offset|PALBot:PALbot_L_Clavicle_ctrl|PALBot:PALbot_L_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl|PALBot:PALbot_L_FK_Elbow_offset|PALBot:PALbot_L_FK_Elbow_ctrl.translateZ" 
		"PALBotRN.placeHolderList[152]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_L_Clavicle_offset|PALBot:PALbot_L_Clavicle_ctrl|PALBot:PALbot_L_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl|PALBot:PALbot_L_FK_Elbow_offset|PALBot:PALbot_L_FK_Elbow_ctrl|PALBot:PALbot_L_FK_Wrist_ctrl_offset|PALBot:PALbot_L_FK_Wrist_ctrl.translateX" 
		"PALBotRN.placeHolderList[153]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_L_Clavicle_offset|PALBot:PALbot_L_Clavicle_ctrl|PALBot:PALbot_L_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl|PALBot:PALbot_L_FK_Elbow_offset|PALBot:PALbot_L_FK_Elbow_ctrl|PALBot:PALbot_L_FK_Wrist_ctrl_offset|PALBot:PALbot_L_FK_Wrist_ctrl.translateY" 
		"PALBotRN.placeHolderList[154]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_L_Clavicle_offset|PALBot:PALbot_L_Clavicle_ctrl|PALBot:PALbot_L_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl|PALBot:PALbot_L_FK_Elbow_offset|PALBot:PALbot_L_FK_Elbow_ctrl|PALBot:PALbot_L_FK_Wrist_ctrl_offset|PALBot:PALbot_L_FK_Wrist_ctrl.translateZ" 
		"PALBotRN.placeHolderList[155]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_L_Clavicle_offset|PALBot:PALbot_L_Clavicle_ctrl|PALBot:PALbot_L_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl|PALBot:PALbot_L_FK_Elbow_offset|PALBot:PALbot_L_FK_Elbow_ctrl|PALBot:PALbot_L_FK_Wrist_ctrl_offset|PALBot:PALbot_L_FK_Wrist_ctrl.rotateY" 
		"PALBotRN.placeHolderList[156]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_L_Clavicle_offset|PALBot:PALbot_L_Clavicle_ctrl|PALBot:PALbot_L_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl|PALBot:PALbot_L_FK_Elbow_offset|PALBot:PALbot_L_FK_Elbow_ctrl|PALBot:PALbot_L_FK_Wrist_ctrl_offset|PALBot:PALbot_L_FK_Wrist_ctrl.rotateX" 
		"PALBotRN.placeHolderList[157]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_L_Clavicle_offset|PALBot:PALbot_L_Clavicle_ctrl|PALBot:PALbot_L_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl|PALBot:PALbot_L_FK_Elbow_offset|PALBot:PALbot_L_FK_Elbow_ctrl|PALBot:PALbot_L_FK_Wrist_ctrl_offset|PALBot:PALbot_L_FK_Wrist_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[158]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_L_Clavicle_offset|PALBot:PALbot_L_Clavicle_ctrl|PALBot:PALbot_L_arm_IK_FK_switch_offset|PALBot:PALbot_L_arm_IK_FK_switch.IK_FK" 
		"PALBotRN.placeHolderList[159]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_hipMain_ctrl.translateX" 
		"PALBotRN.placeHolderList[160]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_hipMain_ctrl.translateY" 
		"PALBotRN.placeHolderList[161]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_hipMain_ctrl.translateZ" 
		"PALBotRN.placeHolderList[162]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_hipMain_ctrl.rotateX" 
		"PALBotRN.placeHolderList[163]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_hipMain_ctrl.rotateY" 
		"PALBotRN.placeHolderList[164]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_hipMain_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[165]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_hipMain_ctrl|PALBot:PALbot_R_hip_offset|PALBot:PALbot_R_hip.translateX" 
		"PALBotRN.placeHolderList[166]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_hipMain_ctrl|PALBot:PALbot_R_hip_offset|PALBot:PALbot_R_hip.translateY" 
		"PALBotRN.placeHolderList[167]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_hipMain_ctrl|PALBot:PALbot_R_hip_offset|PALBot:PALbot_R_hip.translateZ" 
		"PALBotRN.placeHolderList[168]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_hipMain_ctrl|PALBot:PALbot_R_hip_offset|PALBot:PALbot_R_hip.rotateX" 
		"PALBotRN.placeHolderList[169]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_hipMain_ctrl|PALBot:PALbot_R_hip_offset|PALBot:PALbot_R_hip.rotateY" 
		"PALBotRN.placeHolderList[170]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_hipMain_ctrl|PALBot:PALbot_R_hip_offset|PALBot:PALbot_R_hip.rotateZ" 
		"PALBotRN.placeHolderList[171]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_hipMain_ctrl|PALBot:PALbot_R_hip_offset|PALBot:PALbot_R_hip|PALBot:PALbot_R_leg_IK_FK_switch_offset|PALBot:PALbot_R_leg_IK_FK_switch.IK_FK" 
		"PALBotRN.placeHolderList[172]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_hipMain_ctrl|PALBot:PALbot_L_hip_offset|PALBot:PALbot_L_hip.translateX" 
		"PALBotRN.placeHolderList[173]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_hipMain_ctrl|PALBot:PALbot_L_hip_offset|PALBot:PALbot_L_hip.translateY" 
		"PALBotRN.placeHolderList[174]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_hipMain_ctrl|PALBot:PALbot_L_hip_offset|PALBot:PALbot_L_hip.translateZ" 
		"PALBotRN.placeHolderList[175]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_hipMain_ctrl|PALBot:PALbot_L_hip_offset|PALBot:PALbot_L_hip.rotateX" 
		"PALBotRN.placeHolderList[176]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_hipMain_ctrl|PALBot:PALbot_L_hip_offset|PALBot:PALbot_L_hip.rotateY" 
		"PALBotRN.placeHolderList[177]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_hipMain_ctrl|PALBot:PALbot_L_hip_offset|PALBot:PALbot_L_hip.rotateZ" 
		"PALBotRN.placeHolderList[178]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_hipMain_ctrl|PALBot:PALbot_L_hip_offset|PALBot:PALbot_L_hip|PALBot:PALbot_L_leg_IK_FK_switch_offset|PALBot:PALbot_L_leg_IK_FK_switch.IK_FK" 
		"PALBotRN.placeHolderList[179]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Thumb01_offset|PALBot:PALbot_L_Thumb01_ctrl.translateX" 
		"PALBotRN.placeHolderList[180]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Thumb01_offset|PALBot:PALbot_L_Thumb01_ctrl.translateY" 
		"PALBotRN.placeHolderList[181]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Thumb01_offset|PALBot:PALbot_L_Thumb01_ctrl.translateZ" 
		"PALBotRN.placeHolderList[182]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Thumb01_offset|PALBot:PALbot_L_Thumb01_ctrl.rotateX" 
		"PALBotRN.placeHolderList[183]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Thumb01_offset|PALBot:PALbot_L_Thumb01_ctrl.rotateY" 
		"PALBotRN.placeHolderList[184]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Thumb01_offset|PALBot:PALbot_L_Thumb01_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[185]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Thumb01_offset|PALBot:PALbot_L_Thumb01_ctrl|PALBot:PALbot_L_Thumb02_offset|PALBot:PALbot_L_Thumb02_ctrl.translateX" 
		"PALBotRN.placeHolderList[186]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Thumb01_offset|PALBot:PALbot_L_Thumb01_ctrl|PALBot:PALbot_L_Thumb02_offset|PALBot:PALbot_L_Thumb02_ctrl.translateY" 
		"PALBotRN.placeHolderList[187]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Thumb01_offset|PALBot:PALbot_L_Thumb01_ctrl|PALBot:PALbot_L_Thumb02_offset|PALBot:PALbot_L_Thumb02_ctrl.translateZ" 
		"PALBotRN.placeHolderList[188]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Thumb01_offset|PALBot:PALbot_L_Thumb01_ctrl|PALBot:PALbot_L_Thumb02_offset|PALBot:PALbot_L_Thumb02_ctrl.rotateX" 
		"PALBotRN.placeHolderList[189]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Thumb01_offset|PALBot:PALbot_L_Thumb01_ctrl|PALBot:PALbot_L_Thumb02_offset|PALBot:PALbot_L_Thumb02_ctrl.rotateY" 
		"PALBotRN.placeHolderList[190]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Thumb01_offset|PALBot:PALbot_L_Thumb01_ctrl|PALBot:PALbot_L_Thumb02_offset|PALBot:PALbot_L_Thumb02_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[191]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Thumb01_offset|PALBot:PALbot_L_Thumb01_ctrl|PALBot:PALbot_L_Thumb02_offset|PALBot:PALbot_L_Thumb02_ctrl|PALBot:PALbot_L_Thumb03_offset|PALBot:PALbot_L_Thumb03_ctrl.translateX" 
		"PALBotRN.placeHolderList[192]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Thumb01_offset|PALBot:PALbot_L_Thumb01_ctrl|PALBot:PALbot_L_Thumb02_offset|PALBot:PALbot_L_Thumb02_ctrl|PALBot:PALbot_L_Thumb03_offset|PALBot:PALbot_L_Thumb03_ctrl.translateY" 
		"PALBotRN.placeHolderList[193]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Thumb01_offset|PALBot:PALbot_L_Thumb01_ctrl|PALBot:PALbot_L_Thumb02_offset|PALBot:PALbot_L_Thumb02_ctrl|PALBot:PALbot_L_Thumb03_offset|PALBot:PALbot_L_Thumb03_ctrl.translateZ" 
		"PALBotRN.placeHolderList[194]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Thumb01_offset|PALBot:PALbot_L_Thumb01_ctrl|PALBot:PALbot_L_Thumb02_offset|PALBot:PALbot_L_Thumb02_ctrl|PALBot:PALbot_L_Thumb03_offset|PALBot:PALbot_L_Thumb03_ctrl.rotateX" 
		"PALBotRN.placeHolderList[195]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Thumb01_offset|PALBot:PALbot_L_Thumb01_ctrl|PALBot:PALbot_L_Thumb02_offset|PALBot:PALbot_L_Thumb02_ctrl|PALBot:PALbot_L_Thumb03_offset|PALBot:PALbot_L_Thumb03_ctrl.rotateY" 
		"PALBotRN.placeHolderList[196]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Thumb01_offset|PALBot:PALbot_L_Thumb01_ctrl|PALBot:PALbot_L_Thumb02_offset|PALBot:PALbot_L_Thumb02_ctrl|PALBot:PALbot_L_Thumb03_offset|PALBot:PALbot_L_Thumb03_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[197]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Index01_offset|PALBot:PALbot_L_Index01_ctrl.translateX" 
		"PALBotRN.placeHolderList[198]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Index01_offset|PALBot:PALbot_L_Index01_ctrl.translateY" 
		"PALBotRN.placeHolderList[199]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Index01_offset|PALBot:PALbot_L_Index01_ctrl.translateZ" 
		"PALBotRN.placeHolderList[200]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Index01_offset|PALBot:PALbot_L_Index01_ctrl.rotateX" 
		"PALBotRN.placeHolderList[201]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Index01_offset|PALBot:PALbot_L_Index01_ctrl.rotateY" 
		"PALBotRN.placeHolderList[202]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Index01_offset|PALBot:PALbot_L_Index01_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[203]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Index01_offset|PALBot:PALbot_L_Index01_ctrl|PALBot:PALbot_L_Index02_offset|PALBot:PALbot_L_Index02_ctrl.translateX" 
		"PALBotRN.placeHolderList[204]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Index01_offset|PALBot:PALbot_L_Index01_ctrl|PALBot:PALbot_L_Index02_offset|PALBot:PALbot_L_Index02_ctrl.translateY" 
		"PALBotRN.placeHolderList[205]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Index01_offset|PALBot:PALbot_L_Index01_ctrl|PALBot:PALbot_L_Index02_offset|PALBot:PALbot_L_Index02_ctrl.translateZ" 
		"PALBotRN.placeHolderList[206]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Index01_offset|PALBot:PALbot_L_Index01_ctrl|PALBot:PALbot_L_Index02_offset|PALBot:PALbot_L_Index02_ctrl.rotateX" 
		"PALBotRN.placeHolderList[207]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Index01_offset|PALBot:PALbot_L_Index01_ctrl|PALBot:PALbot_L_Index02_offset|PALBot:PALbot_L_Index02_ctrl.rotateY" 
		"PALBotRN.placeHolderList[208]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Index01_offset|PALBot:PALbot_L_Index01_ctrl|PALBot:PALbot_L_Index02_offset|PALBot:PALbot_L_Index02_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[209]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Middle01_offset|PALBot:PALbot_L_Middle01_ctrl.translateX" 
		"PALBotRN.placeHolderList[210]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Middle01_offset|PALBot:PALbot_L_Middle01_ctrl.translateY" 
		"PALBotRN.placeHolderList[211]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Middle01_offset|PALBot:PALbot_L_Middle01_ctrl.translateZ" 
		"PALBotRN.placeHolderList[212]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Middle01_offset|PALBot:PALbot_L_Middle01_ctrl.rotateX" 
		"PALBotRN.placeHolderList[213]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Middle01_offset|PALBot:PALbot_L_Middle01_ctrl.rotateY" 
		"PALBotRN.placeHolderList[214]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Middle01_offset|PALBot:PALbot_L_Middle01_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[215]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Middle01_offset|PALBot:PALbot_L_Middle01_ctrl|PALBot:PALbot_L_Middle02_offset|PALBot:PALbot_L_Middle02_ctrl.translateX" 
		"PALBotRN.placeHolderList[216]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Middle01_offset|PALBot:PALbot_L_Middle01_ctrl|PALBot:PALbot_L_Middle02_offset|PALBot:PALbot_L_Middle02_ctrl.translateY" 
		"PALBotRN.placeHolderList[217]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Middle01_offset|PALBot:PALbot_L_Middle01_ctrl|PALBot:PALbot_L_Middle02_offset|PALBot:PALbot_L_Middle02_ctrl.translateZ" 
		"PALBotRN.placeHolderList[218]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Middle01_offset|PALBot:PALbot_L_Middle01_ctrl|PALBot:PALbot_L_Middle02_offset|PALBot:PALbot_L_Middle02_ctrl.rotateX" 
		"PALBotRN.placeHolderList[219]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Middle01_offset|PALBot:PALbot_L_Middle01_ctrl|PALBot:PALbot_L_Middle02_offset|PALBot:PALbot_L_Middle02_ctrl.rotateY" 
		"PALBotRN.placeHolderList[220]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Middle01_offset|PALBot:PALbot_L_Middle01_ctrl|PALBot:PALbot_L_Middle02_offset|PALBot:PALbot_L_Middle02_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[221]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Ring01_offset|PALBot:PALbot_L_Ring01_ctrl.translateX" 
		"PALBotRN.placeHolderList[222]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Ring01_offset|PALBot:PALbot_L_Ring01_ctrl.translateY" 
		"PALBotRN.placeHolderList[223]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Ring01_offset|PALBot:PALbot_L_Ring01_ctrl.translateZ" 
		"PALBotRN.placeHolderList[224]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Ring01_offset|PALBot:PALbot_L_Ring01_ctrl.rotateX" 
		"PALBotRN.placeHolderList[225]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Ring01_offset|PALBot:PALbot_L_Ring01_ctrl.rotateY" 
		"PALBotRN.placeHolderList[226]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Ring01_offset|PALBot:PALbot_L_Ring01_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[227]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Ring01_offset|PALBot:PALbot_L_Ring01_ctrl|PALBot:PALbot_L_Ring02_offset|PALBot:PALbot_L_Ring02_ctrl.translateX" 
		"PALBotRN.placeHolderList[228]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Ring01_offset|PALBot:PALbot_L_Ring01_ctrl|PALBot:PALbot_L_Ring02_offset|PALBot:PALbot_L_Ring02_ctrl.translateY" 
		"PALBotRN.placeHolderList[229]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Ring01_offset|PALBot:PALbot_L_Ring01_ctrl|PALBot:PALbot_L_Ring02_offset|PALBot:PALbot_L_Ring02_ctrl.translateZ" 
		"PALBotRN.placeHolderList[230]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Ring01_offset|PALBot:PALbot_L_Ring01_ctrl|PALBot:PALbot_L_Ring02_offset|PALBot:PALbot_L_Ring02_ctrl.rotateX" 
		"PALBotRN.placeHolderList[231]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Ring01_offset|PALBot:PALbot_L_Ring01_ctrl|PALBot:PALbot_L_Ring02_offset|PALBot:PALbot_L_Ring02_ctrl.rotateY" 
		"PALBotRN.placeHolderList[232]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Ring01_offset|PALBot:PALbot_L_Ring01_ctrl|PALBot:PALbot_L_Ring02_offset|PALBot:PALbot_L_Ring02_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[233]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Pinky01_offset|PALBot:PALbot_L_Pinky01_ctrl.translateX" 
		"PALBotRN.placeHolderList[234]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Pinky01_offset|PALBot:PALbot_L_Pinky01_ctrl.translateY" 
		"PALBotRN.placeHolderList[235]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Pinky01_offset|PALBot:PALbot_L_Pinky01_ctrl.translateZ" 
		"PALBotRN.placeHolderList[236]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Pinky01_offset|PALBot:PALbot_L_Pinky01_ctrl.rotateX" 
		"PALBotRN.placeHolderList[237]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Pinky01_offset|PALBot:PALbot_L_Pinky01_ctrl.rotateY" 
		"PALBotRN.placeHolderList[238]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Pinky01_offset|PALBot:PALbot_L_Pinky01_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[239]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Pinky01_offset|PALBot:PALbot_L_Pinky01_ctrl|PALBot:PALbot_L_Pinky02_offset|PALBot:PALbot_L_Pinky02_ctrl.translateX" 
		"PALBotRN.placeHolderList[240]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Pinky01_offset|PALBot:PALbot_L_Pinky01_ctrl|PALBot:PALbot_L_Pinky02_offset|PALBot:PALbot_L_Pinky02_ctrl.translateY" 
		"PALBotRN.placeHolderList[241]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Pinky01_offset|PALBot:PALbot_L_Pinky01_ctrl|PALBot:PALbot_L_Pinky02_offset|PALBot:PALbot_L_Pinky02_ctrl.translateZ" 
		"PALBotRN.placeHolderList[242]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Pinky01_offset|PALBot:PALbot_L_Pinky01_ctrl|PALBot:PALbot_L_Pinky02_offset|PALBot:PALbot_L_Pinky02_ctrl.rotateX" 
		"PALBotRN.placeHolderList[243]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Pinky01_offset|PALBot:PALbot_L_Pinky01_ctrl|PALBot:PALbot_L_Pinky02_offset|PALBot:PALbot_L_Pinky02_ctrl.rotateY" 
		"PALBotRN.placeHolderList[244]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Pinky01_offset|PALBot:PALbot_L_Pinky01_ctrl|PALBot:PALbot_L_Pinky02_offset|PALBot:PALbot_L_Pinky02_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[245]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Thumb01_offset|PALBot:PALbot_R_Thumb01_ctrl.translateX" 
		"PALBotRN.placeHolderList[246]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Thumb01_offset|PALBot:PALbot_R_Thumb01_ctrl.translateY" 
		"PALBotRN.placeHolderList[247]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Thumb01_offset|PALBot:PALbot_R_Thumb01_ctrl.translateZ" 
		"PALBotRN.placeHolderList[248]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Thumb01_offset|PALBot:PALbot_R_Thumb01_ctrl.rotateX" 
		"PALBotRN.placeHolderList[249]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Thumb01_offset|PALBot:PALbot_R_Thumb01_ctrl.rotateY" 
		"PALBotRN.placeHolderList[250]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Thumb01_offset|PALBot:PALbot_R_Thumb01_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[251]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Thumb01_offset|PALBot:PALbot_R_Thumb01_ctrl|PALBot:PALbot_R_Thumb02_offset|PALBot:PALbot_R_Thumb02_ctrl.translateX" 
		"PALBotRN.placeHolderList[252]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Thumb01_offset|PALBot:PALbot_R_Thumb01_ctrl|PALBot:PALbot_R_Thumb02_offset|PALBot:PALbot_R_Thumb02_ctrl.translateY" 
		"PALBotRN.placeHolderList[253]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Thumb01_offset|PALBot:PALbot_R_Thumb01_ctrl|PALBot:PALbot_R_Thumb02_offset|PALBot:PALbot_R_Thumb02_ctrl.translateZ" 
		"PALBotRN.placeHolderList[254]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Thumb01_offset|PALBot:PALbot_R_Thumb01_ctrl|PALBot:PALbot_R_Thumb02_offset|PALBot:PALbot_R_Thumb02_ctrl.rotateX" 
		"PALBotRN.placeHolderList[255]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Thumb01_offset|PALBot:PALbot_R_Thumb01_ctrl|PALBot:PALbot_R_Thumb02_offset|PALBot:PALbot_R_Thumb02_ctrl.rotateY" 
		"PALBotRN.placeHolderList[256]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Thumb01_offset|PALBot:PALbot_R_Thumb01_ctrl|PALBot:PALbot_R_Thumb02_offset|PALBot:PALbot_R_Thumb02_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[257]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Thumb01_offset|PALBot:PALbot_R_Thumb01_ctrl|PALBot:PALbot_R_Thumb02_offset|PALBot:PALbot_R_Thumb02_ctrl|PALBot:PALbot_R_Thumb03_offset|PALBot:PALbot_R_Thumb03_ctrl.translateX" 
		"PALBotRN.placeHolderList[258]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Thumb01_offset|PALBot:PALbot_R_Thumb01_ctrl|PALBot:PALbot_R_Thumb02_offset|PALBot:PALbot_R_Thumb02_ctrl|PALBot:PALbot_R_Thumb03_offset|PALBot:PALbot_R_Thumb03_ctrl.translateY" 
		"PALBotRN.placeHolderList[259]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Thumb01_offset|PALBot:PALbot_R_Thumb01_ctrl|PALBot:PALbot_R_Thumb02_offset|PALBot:PALbot_R_Thumb02_ctrl|PALBot:PALbot_R_Thumb03_offset|PALBot:PALbot_R_Thumb03_ctrl.translateZ" 
		"PALBotRN.placeHolderList[260]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Thumb01_offset|PALBot:PALbot_R_Thumb01_ctrl|PALBot:PALbot_R_Thumb02_offset|PALBot:PALbot_R_Thumb02_ctrl|PALBot:PALbot_R_Thumb03_offset|PALBot:PALbot_R_Thumb03_ctrl.rotateX" 
		"PALBotRN.placeHolderList[261]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Thumb01_offset|PALBot:PALbot_R_Thumb01_ctrl|PALBot:PALbot_R_Thumb02_offset|PALBot:PALbot_R_Thumb02_ctrl|PALBot:PALbot_R_Thumb03_offset|PALBot:PALbot_R_Thumb03_ctrl.rotateY" 
		"PALBotRN.placeHolderList[262]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Thumb01_offset|PALBot:PALbot_R_Thumb01_ctrl|PALBot:PALbot_R_Thumb02_offset|PALBot:PALbot_R_Thumb02_ctrl|PALBot:PALbot_R_Thumb03_offset|PALBot:PALbot_R_Thumb03_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[263]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Index01_offset|PALBot:PALbot_R_Index01_ctrl.translateX" 
		"PALBotRN.placeHolderList[264]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Index01_offset|PALBot:PALbot_R_Index01_ctrl.translateY" 
		"PALBotRN.placeHolderList[265]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Index01_offset|PALBot:PALbot_R_Index01_ctrl.translateZ" 
		"PALBotRN.placeHolderList[266]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Index01_offset|PALBot:PALbot_R_Index01_ctrl.rotateX" 
		"PALBotRN.placeHolderList[267]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Index01_offset|PALBot:PALbot_R_Index01_ctrl.rotateY" 
		"PALBotRN.placeHolderList[268]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Index01_offset|PALBot:PALbot_R_Index01_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[269]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Index01_offset|PALBot:PALbot_R_Index01_ctrl|PALBot:PALbot_R_Index02_offset|PALBot:PALbot_R_Index02_ctrl.translateX" 
		"PALBotRN.placeHolderList[270]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Index01_offset|PALBot:PALbot_R_Index01_ctrl|PALBot:PALbot_R_Index02_offset|PALBot:PALbot_R_Index02_ctrl.translateY" 
		"PALBotRN.placeHolderList[271]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Index01_offset|PALBot:PALbot_R_Index01_ctrl|PALBot:PALbot_R_Index02_offset|PALBot:PALbot_R_Index02_ctrl.translateZ" 
		"PALBotRN.placeHolderList[272]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Index01_offset|PALBot:PALbot_R_Index01_ctrl|PALBot:PALbot_R_Index02_offset|PALBot:PALbot_R_Index02_ctrl.rotateX" 
		"PALBotRN.placeHolderList[273]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Index01_offset|PALBot:PALbot_R_Index01_ctrl|PALBot:PALbot_R_Index02_offset|PALBot:PALbot_R_Index02_ctrl.rotateY" 
		"PALBotRN.placeHolderList[274]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Index01_offset|PALBot:PALbot_R_Index01_ctrl|PALBot:PALbot_R_Index02_offset|PALBot:PALbot_R_Index02_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[275]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Middle01_offset|PALBot:PALbot_R_Middle01_ctrl.translateX" 
		"PALBotRN.placeHolderList[276]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Middle01_offset|PALBot:PALbot_R_Middle01_ctrl.translateY" 
		"PALBotRN.placeHolderList[277]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Middle01_offset|PALBot:PALbot_R_Middle01_ctrl.translateZ" 
		"PALBotRN.placeHolderList[278]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Middle01_offset|PALBot:PALbot_R_Middle01_ctrl.rotateX" 
		"PALBotRN.placeHolderList[279]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Middle01_offset|PALBot:PALbot_R_Middle01_ctrl.rotateY" 
		"PALBotRN.placeHolderList[280]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Middle01_offset|PALBot:PALbot_R_Middle01_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[281]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Middle01_offset|PALBot:PALbot_R_Middle01_ctrl|PALBot:PALbot_R_Middle02_offset|PALBot:PALbot_R_Middle02_ctrl.translateX" 
		"PALBotRN.placeHolderList[282]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Middle01_offset|PALBot:PALbot_R_Middle01_ctrl|PALBot:PALbot_R_Middle02_offset|PALBot:PALbot_R_Middle02_ctrl.translateY" 
		"PALBotRN.placeHolderList[283]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Middle01_offset|PALBot:PALbot_R_Middle01_ctrl|PALBot:PALbot_R_Middle02_offset|PALBot:PALbot_R_Middle02_ctrl.translateZ" 
		"PALBotRN.placeHolderList[284]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Middle01_offset|PALBot:PALbot_R_Middle01_ctrl|PALBot:PALbot_R_Middle02_offset|PALBot:PALbot_R_Middle02_ctrl.rotateX" 
		"PALBotRN.placeHolderList[285]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Middle01_offset|PALBot:PALbot_R_Middle01_ctrl|PALBot:PALbot_R_Middle02_offset|PALBot:PALbot_R_Middle02_ctrl.rotateY" 
		"PALBotRN.placeHolderList[286]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Middle01_offset|PALBot:PALbot_R_Middle01_ctrl|PALBot:PALbot_R_Middle02_offset|PALBot:PALbot_R_Middle02_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[287]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Ring01_offset|PALBot:PALbot_R_Ring01_ctrl.translateX" 
		"PALBotRN.placeHolderList[288]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Ring01_offset|PALBot:PALbot_R_Ring01_ctrl.translateY" 
		"PALBotRN.placeHolderList[289]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Ring01_offset|PALBot:PALbot_R_Ring01_ctrl.translateZ" 
		"PALBotRN.placeHolderList[290]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Ring01_offset|PALBot:PALbot_R_Ring01_ctrl.rotateX" 
		"PALBotRN.placeHolderList[291]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Ring01_offset|PALBot:PALbot_R_Ring01_ctrl.rotateY" 
		"PALBotRN.placeHolderList[292]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Ring01_offset|PALBot:PALbot_R_Ring01_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[293]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Ring01_offset|PALBot:PALbot_R_Ring01_ctrl|PALBot:PALbot_R_Ring02_offset|PALBot:PALbot_R_Ring02_ctrl.translateX" 
		"PALBotRN.placeHolderList[294]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Ring01_offset|PALBot:PALbot_R_Ring01_ctrl|PALBot:PALbot_R_Ring02_offset|PALBot:PALbot_R_Ring02_ctrl.translateY" 
		"PALBotRN.placeHolderList[295]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Ring01_offset|PALBot:PALbot_R_Ring01_ctrl|PALBot:PALbot_R_Ring02_offset|PALBot:PALbot_R_Ring02_ctrl.translateZ" 
		"PALBotRN.placeHolderList[296]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Ring01_offset|PALBot:PALbot_R_Ring01_ctrl|PALBot:PALbot_R_Ring02_offset|PALBot:PALbot_R_Ring02_ctrl.rotateX" 
		"PALBotRN.placeHolderList[297]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Ring01_offset|PALBot:PALbot_R_Ring01_ctrl|PALBot:PALbot_R_Ring02_offset|PALBot:PALbot_R_Ring02_ctrl.rotateY" 
		"PALBotRN.placeHolderList[298]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Ring01_offset|PALBot:PALbot_R_Ring01_ctrl|PALBot:PALbot_R_Ring02_offset|PALBot:PALbot_R_Ring02_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[299]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Pinky01_offset|PALBot:PALbot_R_Pinky01_ctrl.translateX" 
		"PALBotRN.placeHolderList[300]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Pinky01_offset|PALBot:PALbot_R_Pinky01_ctrl.translateY" 
		"PALBotRN.placeHolderList[301]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Pinky01_offset|PALBot:PALbot_R_Pinky01_ctrl.translateZ" 
		"PALBotRN.placeHolderList[302]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Pinky01_offset|PALBot:PALbot_R_Pinky01_ctrl.rotateX" 
		"PALBotRN.placeHolderList[303]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Pinky01_offset|PALBot:PALbot_R_Pinky01_ctrl.rotateY" 
		"PALBotRN.placeHolderList[304]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Pinky01_offset|PALBot:PALbot_R_Pinky01_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[305]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Pinky01_offset|PALBot:PALbot_R_Pinky01_ctrl|PALBot:PALbot_R_Pinky02_offset|PALBot:PALbot_R_Pinky02_ctrl.translateX" 
		"PALBotRN.placeHolderList[306]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Pinky01_offset|PALBot:PALbot_R_Pinky01_ctrl|PALBot:PALbot_R_Pinky02_offset|PALBot:PALbot_R_Pinky02_ctrl.translateY" 
		"PALBotRN.placeHolderList[307]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Pinky01_offset|PALBot:PALbot_R_Pinky01_ctrl|PALBot:PALbot_R_Pinky02_offset|PALBot:PALbot_R_Pinky02_ctrl.translateZ" 
		"PALBotRN.placeHolderList[308]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Pinky01_offset|PALBot:PALbot_R_Pinky01_ctrl|PALBot:PALbot_R_Pinky02_offset|PALBot:PALbot_R_Pinky02_ctrl.rotateX" 
		"PALBotRN.placeHolderList[309]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Pinky01_offset|PALBot:PALbot_R_Pinky01_ctrl|PALBot:PALbot_R_Pinky02_offset|PALBot:PALbot_R_Pinky02_ctrl.rotateY" 
		"PALBotRN.placeHolderList[310]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Pinky01_offset|PALBot:PALbot_R_Pinky01_ctrl|PALBot:PALbot_R_Pinky02_offset|PALBot:PALbot_R_Pinky02_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[311]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_knee_aim_offset|PALBot:PALbot_R_knee_aim_ctrl.space_switch" 
		"PALBotRN.placeHolderList[312]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_knee_aim_offset|PALBot:PALbot_R_knee_aim_ctrl.translateX" 
		"PALBotRN.placeHolderList[313]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_knee_aim_offset|PALBot:PALbot_R_knee_aim_ctrl.translateY" 
		"PALBotRN.placeHolderList[314]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_knee_aim_offset|PALBot:PALbot_R_knee_aim_ctrl.translateZ" 
		"PALBotRN.placeHolderList[315]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_knee_aim_offset|PALBot:PALbot_R_knee_aim_ctrl.rotateX" 
		"PALBotRN.placeHolderList[316]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_knee_aim_offset|PALBot:PALbot_R_knee_aim_ctrl.rotateY" 
		"PALBotRN.placeHolderList[317]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_knee_aim_offset|PALBot:PALbot_R_knee_aim_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[318]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_foot_secondary_offset|PALBot:PALbot_R_foot_secondary.rotateX" 
		"PALBotRN.placeHolderList[319]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_foot_secondary_offset|PALBot:PALbot_R_foot_secondary.rotateY" 
		"PALBotRN.placeHolderList[320]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_foot_secondary_offset|PALBot:PALbot_R_foot_secondary.rotateZ" 
		"PALBotRN.placeHolderList[321]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_foot_secondary_offset|PALBot:PALbot_R_foot_secondary.translateX" 
		"PALBotRN.placeHolderList[322]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_foot_secondary_offset|PALBot:PALbot_R_foot_secondary.translateY" 
		"PALBotRN.placeHolderList[323]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_foot_secondary_offset|PALBot:PALbot_R_foot_secondary.translateZ" 
		"PALBotRN.placeHolderList[324]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_foot_secondary_offset|PALBot:PALbot_R_foot_secondary|PALBot:PALbot_R_footSec_reshape01_offset|PALBot:PALbot_R_footSec_reshape01.translateX" 
		"PALBotRN.placeHolderList[325]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_foot_secondary_offset|PALBot:PALbot_R_foot_secondary|PALBot:PALbot_R_footSec_reshape01_offset|PALBot:PALbot_R_footSec_reshape01.translateY" 
		"PALBotRN.placeHolderList[326]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_foot_secondary_offset|PALBot:PALbot_R_foot_secondary|PALBot:PALbot_R_footSec_reshape01_offset|PALBot:PALbot_R_footSec_reshape01.translateZ" 
		"PALBotRN.placeHolderList[327]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_foot_secondary_offset|PALBot:PALbot_R_foot_secondary|PALBot:PALbot_R_footSec_reshape01_offset|PALBot:PALbot_R_footSec_reshape01.rotateX" 
		"PALBotRN.placeHolderList[328]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_foot_secondary_offset|PALBot:PALbot_R_foot_secondary|PALBot:PALbot_R_footSec_reshape01_offset|PALBot:PALbot_R_footSec_reshape01.rotateY" 
		"PALBotRN.placeHolderList[329]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_foot_secondary_offset|PALBot:PALbot_R_foot_secondary|PALBot:PALbot_R_footSec_reshape01_offset|PALBot:PALbot_R_footSec_reshape01.rotateZ" 
		"PALBotRN.placeHolderList[330]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_foot_secondary_offset|PALBot:PALbot_R_foot_secondary|PALBot:PALbot_R_footSec_reshape02_offset|PALBot:PALbot_R_footSec_reshape02.translateX" 
		"PALBotRN.placeHolderList[331]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_foot_secondary_offset|PALBot:PALbot_R_foot_secondary|PALBot:PALbot_R_footSec_reshape02_offset|PALBot:PALbot_R_footSec_reshape02.translateY" 
		"PALBotRN.placeHolderList[332]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_foot_secondary_offset|PALBot:PALbot_R_foot_secondary|PALBot:PALbot_R_footSec_reshape02_offset|PALBot:PALbot_R_footSec_reshape02.translateZ" 
		"PALBotRN.placeHolderList[333]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_foot_secondary_offset|PALBot:PALbot_R_foot_secondary|PALBot:PALbot_R_footSec_reshape02_offset|PALBot:PALbot_R_footSec_reshape02.rotateX" 
		"PALBotRN.placeHolderList[334]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_foot_secondary_offset|PALBot:PALbot_R_foot_secondary|PALBot:PALbot_R_footSec_reshape02_offset|PALBot:PALbot_R_footSec_reshape02.rotateY" 
		"PALBotRN.placeHolderList[335]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_foot_secondary_offset|PALBot:PALbot_R_foot_secondary|PALBot:PALbot_R_footSec_reshape02_offset|PALBot:PALbot_R_footSec_reshape02.rotateZ" 
		"PALBotRN.placeHolderList[336]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_Engine_ctrl_offset1|PALBot:PALbot_R_Engine_ctrl.on_off" 
		"PALBotRN.placeHolderList[337]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_Engine_ctrl_offset1|PALBot:PALbot_R_Engine_ctrl.translateX" 
		"PALBotRN.placeHolderList[338]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_Engine_ctrl_offset1|PALBot:PALbot_R_Engine_ctrl.translateY" 
		"PALBotRN.placeHolderList[339]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_Engine_ctrl_offset1|PALBot:PALbot_R_Engine_ctrl.translateZ" 
		"PALBotRN.placeHolderList[340]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_Engine_ctrl_offset1|PALBot:PALbot_R_Engine_ctrl.rotateX" 
		"PALBotRN.placeHolderList[341]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_Engine_ctrl_offset1|PALBot:PALbot_R_Engine_ctrl.rotateY" 
		"PALBotRN.placeHolderList[342]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_Engine_ctrl_offset1|PALBot:PALbot_R_Engine_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[343]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_Engine_ctrl_offset1|PALBot:PALbot_R_Engine_ctrl.scaleX" 
		"PALBotRN.placeHolderList[344]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_Engine_ctrl_offset1|PALBot:PALbot_R_Engine_ctrl.scaleY" 
		"PALBotRN.placeHolderList[345]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_Engine_ctrl_offset1|PALBot:PALbot_R_Engine_ctrl.scaleZ" 
		"PALBotRN.placeHolderList[346]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_IK_Foot_offset|PALBot:PALbot_R_IK_Foot_ctrl.Heel_Peel" 
		"PALBotRN.placeHolderList[347]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_IK_Foot_offset|PALBot:PALbot_R_IK_Foot_ctrl.follow_hip" 
		"PALBotRN.placeHolderList[348]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_IK_Foot_offset|PALBot:PALbot_R_IK_Foot_ctrl.translateZ" 
		"PALBotRN.placeHolderList[349]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_IK_Foot_offset|PALBot:PALbot_R_IK_Foot_ctrl.translateX" 
		"PALBotRN.placeHolderList[350]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_IK_Foot_offset|PALBot:PALbot_R_IK_Foot_ctrl.translateY" 
		"PALBotRN.placeHolderList[351]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_IK_Foot_offset|PALBot:PALbot_R_IK_Foot_ctrl.rotateX" 
		"PALBotRN.placeHolderList[352]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_IK_Foot_offset|PALBot:PALbot_R_IK_Foot_ctrl.rotateY" 
		"PALBotRN.placeHolderList[353]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_IK_Foot_offset|PALBot:PALbot_R_IK_Foot_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[354]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_IK_Foot_offset|PALBot:PALbot_R_IK_Foot_ctrl|PALBot:PALbot_R_IK_heel_lift_offset|PALBot:PALbot_R_IK_heel_lift_tip.rotateX" 
		"PALBotRN.placeHolderList[355]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_IK_Foot_offset|PALBot:PALbot_R_IK_Foot_ctrl|PALBot:PALbot_R_IK_heel_lift_offset|PALBot:PALbot_R_IK_heel_lift_tip.rotateY" 
		"PALBotRN.placeHolderList[356]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_IK_Foot_offset|PALBot:PALbot_R_IK_Foot_ctrl|PALBot:PALbot_R_IK_heel_lift_offset|PALBot:PALbot_R_IK_heel_lift_tip.rotateZ" 
		"PALBotRN.placeHolderList[357]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_IK_Foot_offset|PALBot:PALbot_R_IK_Foot_ctrl|PALBot:PALbot_R_IK_heel_lift_offset|PALBot:PALbot_R_IK_heel_lift_tip.translateX" 
		"PALBotRN.placeHolderList[358]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_IK_Foot_offset|PALBot:PALbot_R_IK_Foot_ctrl|PALBot:PALbot_R_IK_heel_lift_offset|PALBot:PALbot_R_IK_heel_lift_tip.translateY" 
		"PALBotRN.placeHolderList[359]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_IK_Foot_offset|PALBot:PALbot_R_IK_Foot_ctrl|PALBot:PALbot_R_IK_heel_lift_offset|PALBot:PALbot_R_IK_heel_lift_tip.translateZ" 
		"PALBotRN.placeHolderList[360]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_IK_Foot_offset|PALBot:PALbot_R_IK_Foot_ctrl|PALBot:PALbot_R_IK_heel_lift_offset|PALBot:PALbot_R_IK_heel_lift_tip|PALBot:PALbot_R_IK_foot_tip_offset|PALBot:PALbot_R_IK_foot_tip.translateX" 
		"PALBotRN.placeHolderList[361]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_IK_Foot_offset|PALBot:PALbot_R_IK_Foot_ctrl|PALBot:PALbot_R_IK_heel_lift_offset|PALBot:PALbot_R_IK_heel_lift_tip|PALBot:PALbot_R_IK_foot_tip_offset|PALBot:PALbot_R_IK_foot_tip.translateY" 
		"PALBotRN.placeHolderList[362]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_IK_Foot_offset|PALBot:PALbot_R_IK_Foot_ctrl|PALBot:PALbot_R_IK_heel_lift_offset|PALBot:PALbot_R_IK_heel_lift_tip|PALBot:PALbot_R_IK_foot_tip_offset|PALBot:PALbot_R_IK_foot_tip.translateZ" 
		"PALBotRN.placeHolderList[363]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_IK_Foot_offset|PALBot:PALbot_R_IK_Foot_ctrl|PALBot:PALbot_R_IK_heel_lift_offset|PALBot:PALbot_R_IK_heel_lift_tip|PALBot:PALbot_R_IK_foot_tip_offset|PALBot:PALbot_R_IK_foot_tip.rotateX" 
		"PALBotRN.placeHolderList[364]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_IK_Foot_offset|PALBot:PALbot_R_IK_Foot_ctrl|PALBot:PALbot_R_IK_heel_lift_offset|PALBot:PALbot_R_IK_heel_lift_tip|PALBot:PALbot_R_IK_foot_tip_offset|PALBot:PALbot_R_IK_foot_tip.rotateY" 
		"PALBotRN.placeHolderList[365]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_IK_Foot_offset|PALBot:PALbot_R_IK_Foot_ctrl|PALBot:PALbot_R_IK_heel_lift_offset|PALBot:PALbot_R_IK_heel_lift_tip|PALBot:PALbot_R_IK_foot_tip_offset|PALBot:PALbot_R_IK_foot_tip.rotateZ" 
		"PALBotRN.placeHolderList[366]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_IK_Foot_offset|PALBot:PALbot_R_IK_Foot_ctrl|PALBot:PALbot_R_IK_heel_lift_offset|PALBot:PALbot_R_IK_heel_lift_tip|PALBot:PALbot_R_IK_foot_tip_offset|PALBot:PALbot_R_IK_foot_tip|PALBot:PALbot_R_IK_footBall_offset|PALBot:PALbot_R_IK_footBall_ctrl.translateX" 
		"PALBotRN.placeHolderList[367]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_IK_Foot_offset|PALBot:PALbot_R_IK_Foot_ctrl|PALBot:PALbot_R_IK_heel_lift_offset|PALBot:PALbot_R_IK_heel_lift_tip|PALBot:PALbot_R_IK_foot_tip_offset|PALBot:PALbot_R_IK_foot_tip|PALBot:PALbot_R_IK_footBall_offset|PALBot:PALbot_R_IK_footBall_ctrl.translateY" 
		"PALBotRN.placeHolderList[368]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_IK_Foot_offset|PALBot:PALbot_R_IK_Foot_ctrl|PALBot:PALbot_R_IK_heel_lift_offset|PALBot:PALbot_R_IK_heel_lift_tip|PALBot:PALbot_R_IK_foot_tip_offset|PALBot:PALbot_R_IK_foot_tip|PALBot:PALbot_R_IK_footBall_offset|PALBot:PALbot_R_IK_footBall_ctrl.translateZ" 
		"PALBotRN.placeHolderList[369]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_IK_Foot_offset|PALBot:PALbot_R_IK_Foot_ctrl|PALBot:PALbot_R_IK_heel_lift_offset|PALBot:PALbot_R_IK_heel_lift_tip|PALBot:PALbot_R_IK_foot_tip_offset|PALBot:PALbot_R_IK_foot_tip|PALBot:PALbot_R_IK_footBall_offset|PALBot:PALbot_R_IK_footBall_ctrl.rotateX" 
		"PALBotRN.placeHolderList[370]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_IK_Foot_offset|PALBot:PALbot_R_IK_Foot_ctrl|PALBot:PALbot_R_IK_heel_lift_offset|PALBot:PALbot_R_IK_heel_lift_tip|PALBot:PALbot_R_IK_foot_tip_offset|PALBot:PALbot_R_IK_foot_tip|PALBot:PALbot_R_IK_footBall_offset|PALBot:PALbot_R_IK_footBall_ctrl.rotateY" 
		"PALBotRN.placeHolderList[371]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_IK_Foot_offset|PALBot:PALbot_R_IK_Foot_ctrl|PALBot:PALbot_R_IK_heel_lift_offset|PALBot:PALbot_R_IK_heel_lift_tip|PALBot:PALbot_R_IK_foot_tip_offset|PALBot:PALbot_R_IK_foot_tip|PALBot:PALbot_R_IK_footBall_offset|PALBot:PALbot_R_IK_footBall_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[372]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_HandVIS_offset|PALBot:PALbot_L_HandVIS.Hand_Vis" 
		"PALBotRN.placeHolderList[373]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_HandVIS_offset|PALBot:PALbot_L_HandVIS.canon_light" 
		"PALBotRN.placeHolderList[374]" "";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode reference -n "PALBotRN1";
	rename -uid "7E44FD03-49C6-A94F-5DE5-348701BBDCBC";
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
		"PALBotRN1"
		"PALBotRN1" 0
		"PALBotRN1" 379
		2 "|PALBot1:PALBOT_GRP" "visibility" " 1"
		2 "|PALBot1:PALBOT_GRP" "translate" " -type \"double3\" 0 0 0"
		2 "|PALBot1:PALBOT_GRP|PALBot1:PALbot_MESH" "scale" " -type \"double3\" 1 1 1"
		
		2 "|PALBot1:PALBOT_GRP|PALBot1:PALbot_MESH|PALBot1:PALbot_HeadGRP|PALBot1:GLASS_clean|PALBot1:GLASS_cleanShape" 
		"uvSet[0].uvSetName" " -type \"string\" \"map1\""
		2 "|PALBot1:PALBOT_GRP|PALBot1:PALbot_RIG" "scale" " -type \"double3\" 1 1 1"
		
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN.global_scale" 
		"PALBotRN1.placeHolderList[1]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN.Mesh_lock" 
		"PALBotRN1.placeHolderList[2]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN.translateZ" 
		"PALBotRN1.placeHolderList[3]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN.translateY" 
		"PALBotRN1.placeHolderList[4]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN.translateX" 
		"PALBotRN1.placeHolderList[5]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN.rotateY" 
		"PALBotRN1.placeHolderList[6]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN.rotateX" 
		"PALBotRN1.placeHolderList[7]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN.rotateZ" 
		"PALBotRN1.placeHolderList[8]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root.rotateX" 
		"PALBotRN1.placeHolderList[9]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root.rotateY" 
		"PALBotRN1.placeHolderList[10]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root.rotateZ" 
		"PALBotRN1.placeHolderList[11]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root.translateX" 
		"PALBotRN1.placeHolderList[12]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root.translateY" 
		"PALBotRN1.placeHolderList[13]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root.translateZ" 
		"PALBotRN1.placeHolderList[14]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_L_knee_aim_offset|PALBot1:PALbot_L_knee_aim_ctrl.space_switch" 
		"PALBotRN1.placeHolderList[15]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_L_knee_aim_offset|PALBot1:PALbot_L_knee_aim_ctrl.translateX" 
		"PALBotRN1.placeHolderList[16]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_L_knee_aim_offset|PALBot1:PALbot_L_knee_aim_ctrl.translateZ" 
		"PALBotRN1.placeHolderList[17]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_L_knee_aim_offset|PALBot1:PALbot_L_knee_aim_ctrl.translateY" 
		"PALBotRN1.placeHolderList[18]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_L_knee_aim_offset|PALBot1:PALbot_L_knee_aim_ctrl.rotateX" 
		"PALBotRN1.placeHolderList[19]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_L_knee_aim_offset|PALBot1:PALbot_L_knee_aim_ctrl.rotateY" 
		"PALBotRN1.placeHolderList[20]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_L_knee_aim_offset|PALBot1:PALbot_L_knee_aim_ctrl.rotateZ" 
		"PALBotRN1.placeHolderList[21]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_L_foot_secondary_offset|PALBot1:PALbot_L_foot_secondary.rotateX" 
		"PALBotRN1.placeHolderList[22]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_L_foot_secondary_offset|PALBot1:PALbot_L_foot_secondary.rotateY" 
		"PALBotRN1.placeHolderList[23]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_L_foot_secondary_offset|PALBot1:PALbot_L_foot_secondary.rotateZ" 
		"PALBotRN1.placeHolderList[24]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_L_foot_secondary_offset|PALBot1:PALbot_L_foot_secondary.translateX" 
		"PALBotRN1.placeHolderList[25]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_L_foot_secondary_offset|PALBot1:PALbot_L_foot_secondary.translateY" 
		"PALBotRN1.placeHolderList[26]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_L_foot_secondary_offset|PALBot1:PALbot_L_foot_secondary.translateZ" 
		"PALBotRN1.placeHolderList[27]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_L_foot_secondary_offset|PALBot1:PALbot_L_foot_secondary|PALBot1:PALbot_L_footSec_reshape01_offset|PALBot1:PALbot_L_footSec_reshape01.translateX" 
		"PALBotRN1.placeHolderList[28]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_L_foot_secondary_offset|PALBot1:PALbot_L_foot_secondary|PALBot1:PALbot_L_footSec_reshape01_offset|PALBot1:PALbot_L_footSec_reshape01.translateY" 
		"PALBotRN1.placeHolderList[29]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_L_foot_secondary_offset|PALBot1:PALbot_L_foot_secondary|PALBot1:PALbot_L_footSec_reshape01_offset|PALBot1:PALbot_L_footSec_reshape01.translateZ" 
		"PALBotRN1.placeHolderList[30]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_L_foot_secondary_offset|PALBot1:PALbot_L_foot_secondary|PALBot1:PALbot_L_footSec_reshape01_offset|PALBot1:PALbot_L_footSec_reshape01.rotateX" 
		"PALBotRN1.placeHolderList[31]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_L_foot_secondary_offset|PALBot1:PALbot_L_foot_secondary|PALBot1:PALbot_L_footSec_reshape01_offset|PALBot1:PALbot_L_footSec_reshape01.rotateY" 
		"PALBotRN1.placeHolderList[32]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_L_foot_secondary_offset|PALBot1:PALbot_L_foot_secondary|PALBot1:PALbot_L_footSec_reshape01_offset|PALBot1:PALbot_L_footSec_reshape01.rotateZ" 
		"PALBotRN1.placeHolderList[33]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_L_foot_secondary_offset|PALBot1:PALbot_L_foot_secondary|PALBot1:PALbot_L_footSec_reshape02_offset|PALBot1:PALbot_L_footSec_reshape02.translateX" 
		"PALBotRN1.placeHolderList[34]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_L_foot_secondary_offset|PALBot1:PALbot_L_foot_secondary|PALBot1:PALbot_L_footSec_reshape02_offset|PALBot1:PALbot_L_footSec_reshape02.translateY" 
		"PALBotRN1.placeHolderList[35]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_L_foot_secondary_offset|PALBot1:PALbot_L_foot_secondary|PALBot1:PALbot_L_footSec_reshape02_offset|PALBot1:PALbot_L_footSec_reshape02.translateZ" 
		"PALBotRN1.placeHolderList[36]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_L_foot_secondary_offset|PALBot1:PALbot_L_foot_secondary|PALBot1:PALbot_L_footSec_reshape02_offset|PALBot1:PALbot_L_footSec_reshape02.rotateX" 
		"PALBotRN1.placeHolderList[37]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_L_foot_secondary_offset|PALBot1:PALbot_L_foot_secondary|PALBot1:PALbot_L_footSec_reshape02_offset|PALBot1:PALbot_L_footSec_reshape02.rotateY" 
		"PALBotRN1.placeHolderList[38]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_L_foot_secondary_offset|PALBot1:PALbot_L_foot_secondary|PALBot1:PALbot_L_footSec_reshape02_offset|PALBot1:PALbot_L_footSec_reshape02.rotateZ" 
		"PALBotRN1.placeHolderList[39]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_L_Engine_ctrl_offset|PALBot1:PALbot_L_Engine_ctrl.on_off" 
		"PALBotRN1.placeHolderList[40]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_L_Engine_ctrl_offset|PALBot1:PALbot_L_Engine_ctrl.translateX" 
		"PALBotRN1.placeHolderList[41]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_L_Engine_ctrl_offset|PALBot1:PALbot_L_Engine_ctrl.translateY" 
		"PALBotRN1.placeHolderList[42]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_L_Engine_ctrl_offset|PALBot1:PALbot_L_Engine_ctrl.translateZ" 
		"PALBotRN1.placeHolderList[43]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_L_Engine_ctrl_offset|PALBot1:PALbot_L_Engine_ctrl.rotateX" 
		"PALBotRN1.placeHolderList[44]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_L_Engine_ctrl_offset|PALBot1:PALbot_L_Engine_ctrl.rotateY" 
		"PALBotRN1.placeHolderList[45]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_L_Engine_ctrl_offset|PALBot1:PALbot_L_Engine_ctrl.rotateZ" 
		"PALBotRN1.placeHolderList[46]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_L_Engine_ctrl_offset|PALBot1:PALbot_L_Engine_ctrl.scaleX" 
		"PALBotRN1.placeHolderList[47]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_L_Engine_ctrl_offset|PALBot1:PALbot_L_Engine_ctrl.scaleY" 
		"PALBotRN1.placeHolderList[48]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_L_Engine_ctrl_offset|PALBot1:PALbot_L_Engine_ctrl.scaleZ" 
		"PALBotRN1.placeHolderList[49]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_L_IK_Foot_offset|PALBot1:PALbot_L_IK_Foot_ctrl.Heel_Peel" 
		"PALBotRN1.placeHolderList[50]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_L_IK_Foot_offset|PALBot1:PALbot_L_IK_Foot_ctrl.follow_hip" 
		"PALBotRN1.placeHolderList[51]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_L_IK_Foot_offset|PALBot1:PALbot_L_IK_Foot_ctrl.translateX" 
		"PALBotRN1.placeHolderList[52]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_L_IK_Foot_offset|PALBot1:PALbot_L_IK_Foot_ctrl.translateZ" 
		"PALBotRN1.placeHolderList[53]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_L_IK_Foot_offset|PALBot1:PALbot_L_IK_Foot_ctrl.translateY" 
		"PALBotRN1.placeHolderList[54]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_L_IK_Foot_offset|PALBot1:PALbot_L_IK_Foot_ctrl.rotateX" 
		"PALBotRN1.placeHolderList[55]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_L_IK_Foot_offset|PALBot1:PALbot_L_IK_Foot_ctrl.rotateY" 
		"PALBotRN1.placeHolderList[56]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_L_IK_Foot_offset|PALBot1:PALbot_L_IK_Foot_ctrl.rotateZ" 
		"PALBotRN1.placeHolderList[57]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_L_IK_Foot_offset|PALBot1:PALbot_L_IK_Foot_ctrl|PALBot1:PALbot_L_IK_heel_lift_offset|PALBot1:PALbot_L_IK_heel_lift_tip.rotateX" 
		"PALBotRN1.placeHolderList[58]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_L_IK_Foot_offset|PALBot1:PALbot_L_IK_Foot_ctrl|PALBot1:PALbot_L_IK_heel_lift_offset|PALBot1:PALbot_L_IK_heel_lift_tip.rotateY" 
		"PALBotRN1.placeHolderList[59]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_L_IK_Foot_offset|PALBot1:PALbot_L_IK_Foot_ctrl|PALBot1:PALbot_L_IK_heel_lift_offset|PALBot1:PALbot_L_IK_heel_lift_tip.rotateZ" 
		"PALBotRN1.placeHolderList[60]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_L_IK_Foot_offset|PALBot1:PALbot_L_IK_Foot_ctrl|PALBot1:PALbot_L_IK_heel_lift_offset|PALBot1:PALbot_L_IK_heel_lift_tip.translateX" 
		"PALBotRN1.placeHolderList[61]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_L_IK_Foot_offset|PALBot1:PALbot_L_IK_Foot_ctrl|PALBot1:PALbot_L_IK_heel_lift_offset|PALBot1:PALbot_L_IK_heel_lift_tip.translateY" 
		"PALBotRN1.placeHolderList[62]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_L_IK_Foot_offset|PALBot1:PALbot_L_IK_Foot_ctrl|PALBot1:PALbot_L_IK_heel_lift_offset|PALBot1:PALbot_L_IK_heel_lift_tip.translateZ" 
		"PALBotRN1.placeHolderList[63]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_L_IK_Foot_offset|PALBot1:PALbot_L_IK_Foot_ctrl|PALBot1:PALbot_L_IK_heel_lift_offset|PALBot1:PALbot_L_IK_heel_lift_tip|PALBot1:PALbot_L_IK_foot_tip_offset|PALBot1:PALbot_L_IK_foot_tip.translateX" 
		"PALBotRN1.placeHolderList[64]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_L_IK_Foot_offset|PALBot1:PALbot_L_IK_Foot_ctrl|PALBot1:PALbot_L_IK_heel_lift_offset|PALBot1:PALbot_L_IK_heel_lift_tip|PALBot1:PALbot_L_IK_foot_tip_offset|PALBot1:PALbot_L_IK_foot_tip.translateY" 
		"PALBotRN1.placeHolderList[65]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_L_IK_Foot_offset|PALBot1:PALbot_L_IK_Foot_ctrl|PALBot1:PALbot_L_IK_heel_lift_offset|PALBot1:PALbot_L_IK_heel_lift_tip|PALBot1:PALbot_L_IK_foot_tip_offset|PALBot1:PALbot_L_IK_foot_tip.translateZ" 
		"PALBotRN1.placeHolderList[66]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_L_IK_Foot_offset|PALBot1:PALbot_L_IK_Foot_ctrl|PALBot1:PALbot_L_IK_heel_lift_offset|PALBot1:PALbot_L_IK_heel_lift_tip|PALBot1:PALbot_L_IK_foot_tip_offset|PALBot1:PALbot_L_IK_foot_tip.rotateX" 
		"PALBotRN1.placeHolderList[67]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_L_IK_Foot_offset|PALBot1:PALbot_L_IK_Foot_ctrl|PALBot1:PALbot_L_IK_heel_lift_offset|PALBot1:PALbot_L_IK_heel_lift_tip|PALBot1:PALbot_L_IK_foot_tip_offset|PALBot1:PALbot_L_IK_foot_tip.rotateY" 
		"PALBotRN1.placeHolderList[68]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_L_IK_Foot_offset|PALBot1:PALbot_L_IK_Foot_ctrl|PALBot1:PALbot_L_IK_heel_lift_offset|PALBot1:PALbot_L_IK_heel_lift_tip|PALBot1:PALbot_L_IK_foot_tip_offset|PALBot1:PALbot_L_IK_foot_tip.rotateZ" 
		"PALBotRN1.placeHolderList[69]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_L_IK_Foot_offset|PALBot1:PALbot_L_IK_Foot_ctrl|PALBot1:PALbot_L_IK_heel_lift_offset|PALBot1:PALbot_L_IK_heel_lift_tip|PALBot1:PALbot_L_IK_foot_tip_offset|PALBot1:PALbot_L_IK_foot_tip|PALBot1:PALbot_L_IK_footBall_offset|PALBot1:PALbot_L_IK_footBall_ctrl.translateX" 
		"PALBotRN1.placeHolderList[70]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_L_IK_Foot_offset|PALBot1:PALbot_L_IK_Foot_ctrl|PALBot1:PALbot_L_IK_heel_lift_offset|PALBot1:PALbot_L_IK_heel_lift_tip|PALBot1:PALbot_L_IK_foot_tip_offset|PALBot1:PALbot_L_IK_foot_tip|PALBot1:PALbot_L_IK_footBall_offset|PALBot1:PALbot_L_IK_footBall_ctrl.translateY" 
		"PALBotRN1.placeHolderList[71]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_L_IK_Foot_offset|PALBot1:PALbot_L_IK_Foot_ctrl|PALBot1:PALbot_L_IK_heel_lift_offset|PALBot1:PALbot_L_IK_heel_lift_tip|PALBot1:PALbot_L_IK_foot_tip_offset|PALBot1:PALbot_L_IK_foot_tip|PALBot1:PALbot_L_IK_footBall_offset|PALBot1:PALbot_L_IK_footBall_ctrl.translateZ" 
		"PALBotRN1.placeHolderList[72]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_L_IK_Foot_offset|PALBot1:PALbot_L_IK_Foot_ctrl|PALBot1:PALbot_L_IK_heel_lift_offset|PALBot1:PALbot_L_IK_heel_lift_tip|PALBot1:PALbot_L_IK_foot_tip_offset|PALBot1:PALbot_L_IK_foot_tip|PALBot1:PALbot_L_IK_footBall_offset|PALBot1:PALbot_L_IK_footBall_ctrl.rotateX" 
		"PALBotRN1.placeHolderList[73]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_L_IK_Foot_offset|PALBot1:PALbot_L_IK_Foot_ctrl|PALBot1:PALbot_L_IK_heel_lift_offset|PALBot1:PALbot_L_IK_heel_lift_tip|PALBot1:PALbot_L_IK_foot_tip_offset|PALBot1:PALbot_L_IK_foot_tip|PALBot1:PALbot_L_IK_footBall_offset|PALBot1:PALbot_L_IK_footBall_ctrl.rotateY" 
		"PALBotRN1.placeHolderList[74]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_L_IK_Foot_offset|PALBot1:PALbot_L_IK_Foot_ctrl|PALBot1:PALbot_L_IK_heel_lift_offset|PALBot1:PALbot_L_IK_heel_lift_tip|PALBot1:PALbot_L_IK_foot_tip_offset|PALBot1:PALbot_L_IK_foot_tip|PALBot1:PALbot_L_IK_footBall_offset|PALBot1:PALbot_L_IK_footBall_ctrl.rotateZ" 
		"PALBotRN1.placeHolderList[75]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_R_HandVIS_offset|PALBot1:PALbot_R_HandVIS.Hand_Vis" 
		"PALBotRN1.placeHolderList[76]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_R_HandVIS_offset|PALBot1:PALbot_R_HandVIS.canon_light" 
		"PALBotRN1.placeHolderList[77]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_cog_ctrl.secondary_vis" 
		"PALBotRN1.placeHolderList[78]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_cog_ctrl.translateY" 
		"PALBotRN1.placeHolderList[79]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_cog_ctrl.translateZ" 
		"PALBotRN1.placeHolderList[80]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_cog_ctrl.translateX" 
		"PALBotRN1.placeHolderList[81]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_cog_ctrl.rotateX" 
		"PALBotRN1.placeHolderList[82]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_cog_ctrl.rotateY" 
		"PALBotRN1.placeHolderList[83]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_cog_ctrl.rotateZ" 
		"PALBotRN1.placeHolderList[84]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_cog_ctrl|PALBot1:PALbot_cog_secondary_ctrl_offset1|PALBot1:PALbot_cog_secondary_ctrl|PALBot1:PALbot_chestup_ctrl_offset|PALBot1:PALbot_chestUp_ctrl.secondary_vis" 
		"PALBotRN1.placeHolderList[85]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_cog_ctrl|PALBot1:PALbot_cog_secondary_ctrl_offset1|PALBot1:PALbot_cog_secondary_ctrl|PALBot1:PALbot_chestup_ctrl_offset|PALBot1:PALbot_chestUp_ctrl.rotateY" 
		"PALBotRN1.placeHolderList[86]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_cog_ctrl|PALBot1:PALbot_cog_secondary_ctrl_offset1|PALBot1:PALbot_cog_secondary_ctrl|PALBot1:PALbot_chestup_ctrl_offset|PALBot1:PALbot_chestUp_ctrl.rotateX" 
		"PALBotRN1.placeHolderList[87]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_cog_ctrl|PALBot1:PALbot_cog_secondary_ctrl_offset1|PALBot1:PALbot_cog_secondary_ctrl|PALBot1:PALbot_chestup_ctrl_offset|PALBot1:PALbot_chestUp_ctrl.rotateZ" 
		"PALBotRN1.placeHolderList[88]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_cog_ctrl|PALBot1:PALbot_cog_secondary_ctrl_offset1|PALBot1:PALbot_cog_secondary_ctrl|PALBot1:PALbot_chestup_ctrl_offset|PALBot1:PALbot_chestUp_ctrl.translateX" 
		"PALBotRN1.placeHolderList[89]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_cog_ctrl|PALBot1:PALbot_cog_secondary_ctrl_offset1|PALBot1:PALbot_cog_secondary_ctrl|PALBot1:PALbot_chestup_ctrl_offset|PALBot1:PALbot_chestUp_ctrl.translateY" 
		"PALBotRN1.placeHolderList[90]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_cog_ctrl|PALBot1:PALbot_cog_secondary_ctrl_offset1|PALBot1:PALbot_cog_secondary_ctrl|PALBot1:PALbot_chestup_ctrl_offset|PALBot1:PALbot_chestUp_ctrl.translateZ" 
		"PALBotRN1.placeHolderList[91]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_cog_ctrl|PALBot1:PALbot_cog_secondary_ctrl_offset1|PALBot1:PALbot_cog_secondary_ctrl|PALBot1:PALbot_chestup_ctrl_offset|PALBot1:PALbot_chestUp_ctrl|PALBot1:PALbot_chestUp_secondary_ctrl_offset|PALBot1:PALbot_chestUp_secondary_ctrl|PALBot1:PALbot_Neck_ctrl_offset|PALBot1:PALbot_Neck_ctrl.translateX" 
		"PALBotRN1.placeHolderList[92]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_cog_ctrl|PALBot1:PALbot_cog_secondary_ctrl_offset1|PALBot1:PALbot_cog_secondary_ctrl|PALBot1:PALbot_chestup_ctrl_offset|PALBot1:PALbot_chestUp_ctrl|PALBot1:PALbot_chestUp_secondary_ctrl_offset|PALBot1:PALbot_chestUp_secondary_ctrl|PALBot1:PALbot_Neck_ctrl_offset|PALBot1:PALbot_Neck_ctrl.translateY" 
		"PALBotRN1.placeHolderList[93]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_cog_ctrl|PALBot1:PALbot_cog_secondary_ctrl_offset1|PALBot1:PALbot_cog_secondary_ctrl|PALBot1:PALbot_chestup_ctrl_offset|PALBot1:PALbot_chestUp_ctrl|PALBot1:PALbot_chestUp_secondary_ctrl_offset|PALBot1:PALbot_chestUp_secondary_ctrl|PALBot1:PALbot_Neck_ctrl_offset|PALBot1:PALbot_Neck_ctrl.translateZ" 
		"PALBotRN1.placeHolderList[94]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_cog_ctrl|PALBot1:PALbot_cog_secondary_ctrl_offset1|PALBot1:PALbot_cog_secondary_ctrl|PALBot1:PALbot_chestup_ctrl_offset|PALBot1:PALbot_chestUp_ctrl|PALBot1:PALbot_chestUp_secondary_ctrl_offset|PALBot1:PALbot_chestUp_secondary_ctrl|PALBot1:PALbot_Neck_ctrl_offset|PALBot1:PALbot_Neck_ctrl.rotateY" 
		"PALBotRN1.placeHolderList[95]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_cog_ctrl|PALBot1:PALbot_cog_secondary_ctrl_offset1|PALBot1:PALbot_cog_secondary_ctrl|PALBot1:PALbot_chestup_ctrl_offset|PALBot1:PALbot_chestUp_ctrl|PALBot1:PALbot_chestUp_secondary_ctrl_offset|PALBot1:PALbot_chestUp_secondary_ctrl|PALBot1:PALbot_Neck_ctrl_offset|PALBot1:PALbot_Neck_ctrl.rotateX" 
		"PALBotRN1.placeHolderList[96]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_cog_ctrl|PALBot1:PALbot_cog_secondary_ctrl_offset1|PALBot1:PALbot_cog_secondary_ctrl|PALBot1:PALbot_chestup_ctrl_offset|PALBot1:PALbot_chestUp_ctrl|PALBot1:PALbot_chestUp_secondary_ctrl_offset|PALBot1:PALbot_chestUp_secondary_ctrl|PALBot1:PALbot_Neck_ctrl_offset|PALBot1:PALbot_Neck_ctrl.rotateZ" 
		"PALBotRN1.placeHolderList[97]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_cog_ctrl|PALBot1:PALbot_cog_secondary_ctrl_offset1|PALBot1:PALbot_cog_secondary_ctrl|PALBot1:PALbot_chestup_ctrl_offset|PALBot1:PALbot_chestUp_ctrl|PALBot1:PALbot_chestUp_secondary_ctrl_offset|PALBot1:PALbot_chestUp_secondary_ctrl|PALBot1:PALbot_Neck_ctrl_offset|PALBot1:PALbot_Neck_ctrl|PALBot1:PALbot_head_ctrl_offset|PALBot1:PALbot_head_ctrl.Space_switch" 
		"PALBotRN1.placeHolderList[98]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_cog_ctrl|PALBot1:PALbot_cog_secondary_ctrl_offset1|PALBot1:PALbot_cog_secondary_ctrl|PALBot1:PALbot_chestup_ctrl_offset|PALBot1:PALbot_chestUp_ctrl|PALBot1:PALbot_chestUp_secondary_ctrl_offset|PALBot1:PALbot_chestUp_secondary_ctrl|PALBot1:PALbot_Neck_ctrl_offset|PALBot1:PALbot_Neck_ctrl|PALBot1:PALbot_head_ctrl_offset|PALBot1:PALbot_head_ctrl.FaceLight" 
		"PALBotRN1.placeHolderList[99]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_cog_ctrl|PALBot1:PALbot_cog_secondary_ctrl_offset1|PALBot1:PALbot_cog_secondary_ctrl|PALBot1:PALbot_chestup_ctrl_offset|PALBot1:PALbot_chestUp_ctrl|PALBot1:PALbot_chestUp_secondary_ctrl_offset|PALBot1:PALbot_chestUp_secondary_ctrl|PALBot1:PALbot_Neck_ctrl_offset|PALBot1:PALbot_Neck_ctrl|PALBot1:PALbot_head_ctrl_offset|PALBot1:PALbot_head_ctrl.Led_color" 
		"PALBotRN1.placeHolderList[100]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_cog_ctrl|PALBot1:PALbot_cog_secondary_ctrl_offset1|PALBot1:PALbot_cog_secondary_ctrl|PALBot1:PALbot_chestup_ctrl_offset|PALBot1:PALbot_chestUp_ctrl|PALBot1:PALbot_chestUp_secondary_ctrl_offset|PALBot1:PALbot_chestUp_secondary_ctrl|PALBot1:PALbot_Neck_ctrl_offset|PALBot1:PALbot_Neck_ctrl|PALBot1:PALbot_head_ctrl_offset|PALBot1:PALbot_head_ctrl.Face_Drawing" 
		"PALBotRN1.placeHolderList[101]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_cog_ctrl|PALBot1:PALbot_cog_secondary_ctrl_offset1|PALBot1:PALbot_cog_secondary_ctrl|PALBot1:PALbot_chestup_ctrl_offset|PALBot1:PALbot_chestUp_ctrl|PALBot1:PALbot_chestUp_secondary_ctrl_offset|PALBot1:PALbot_chestUp_secondary_ctrl|PALBot1:PALbot_Neck_ctrl_offset|PALBot1:PALbot_Neck_ctrl|PALBot1:PALbot_head_ctrl_offset|PALBot1:PALbot_head_ctrl.rotateY" 
		"PALBotRN1.placeHolderList[102]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_cog_ctrl|PALBot1:PALbot_cog_secondary_ctrl_offset1|PALBot1:PALbot_cog_secondary_ctrl|PALBot1:PALbot_chestup_ctrl_offset|PALBot1:PALbot_chestUp_ctrl|PALBot1:PALbot_chestUp_secondary_ctrl_offset|PALBot1:PALbot_chestUp_secondary_ctrl|PALBot1:PALbot_Neck_ctrl_offset|PALBot1:PALbot_Neck_ctrl|PALBot1:PALbot_head_ctrl_offset|PALBot1:PALbot_head_ctrl.rotateX" 
		"PALBotRN1.placeHolderList[103]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_cog_ctrl|PALBot1:PALbot_cog_secondary_ctrl_offset1|PALBot1:PALbot_cog_secondary_ctrl|PALBot1:PALbot_chestup_ctrl_offset|PALBot1:PALbot_chestUp_ctrl|PALBot1:PALbot_chestUp_secondary_ctrl_offset|PALBot1:PALbot_chestUp_secondary_ctrl|PALBot1:PALbot_Neck_ctrl_offset|PALBot1:PALbot_Neck_ctrl|PALBot1:PALbot_head_ctrl_offset|PALBot1:PALbot_head_ctrl.rotateZ" 
		"PALBotRN1.placeHolderList[104]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_cog_ctrl|PALBot1:PALbot_cog_secondary_ctrl_offset1|PALBot1:PALbot_cog_secondary_ctrl|PALBot1:PALbot_chestup_ctrl_offset|PALBot1:PALbot_chestUp_ctrl|PALBot1:PALbot_chestUp_secondary_ctrl_offset|PALBot1:PALbot_chestUp_secondary_ctrl|PALBot1:PALbot_Neck_ctrl_offset|PALBot1:PALbot_Neck_ctrl|PALBot1:PALbot_head_ctrl_offset|PALBot1:PALbot_head_ctrl.translateX" 
		"PALBotRN1.placeHolderList[105]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_cog_ctrl|PALBot1:PALbot_cog_secondary_ctrl_offset1|PALBot1:PALbot_cog_secondary_ctrl|PALBot1:PALbot_chestup_ctrl_offset|PALBot1:PALbot_chestUp_ctrl|PALBot1:PALbot_chestUp_secondary_ctrl_offset|PALBot1:PALbot_chestUp_secondary_ctrl|PALBot1:PALbot_Neck_ctrl_offset|PALBot1:PALbot_Neck_ctrl|PALBot1:PALbot_head_ctrl_offset|PALBot1:PALbot_head_ctrl.translateY" 
		"PALBotRN1.placeHolderList[106]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_cog_ctrl|PALBot1:PALbot_cog_secondary_ctrl_offset1|PALBot1:PALbot_cog_secondary_ctrl|PALBot1:PALbot_chestup_ctrl_offset|PALBot1:PALbot_chestUp_ctrl|PALBot1:PALbot_chestUp_secondary_ctrl_offset|PALBot1:PALbot_chestUp_secondary_ctrl|PALBot1:PALbot_Neck_ctrl_offset|PALBot1:PALbot_Neck_ctrl|PALBot1:PALbot_head_ctrl_offset|PALBot1:PALbot_head_ctrl.translateZ" 
		"PALBotRN1.placeHolderList[107]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_cog_ctrl|PALBot1:PALbot_cog_secondary_ctrl_offset1|PALBot1:PALbot_cog_secondary_ctrl|PALBot1:PALbot_chestup_ctrl_offset|PALBot1:PALbot_chestUp_ctrl|PALBot1:PALbot_chestUp_secondary_ctrl_offset|PALBot1:PALbot_chestUp_secondary_ctrl|PALBot1:PALbot_R_Clavicle_offset|PALBot1:PALbot_R_Clavicle_ctrl.translateX" 
		"PALBotRN1.placeHolderList[108]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_cog_ctrl|PALBot1:PALbot_cog_secondary_ctrl_offset1|PALBot1:PALbot_cog_secondary_ctrl|PALBot1:PALbot_chestup_ctrl_offset|PALBot1:PALbot_chestUp_ctrl|PALBot1:PALbot_chestUp_secondary_ctrl_offset|PALBot1:PALbot_chestUp_secondary_ctrl|PALBot1:PALbot_R_Clavicle_offset|PALBot1:PALbot_R_Clavicle_ctrl.translateY" 
		"PALBotRN1.placeHolderList[109]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_cog_ctrl|PALBot1:PALbot_cog_secondary_ctrl_offset1|PALBot1:PALbot_cog_secondary_ctrl|PALBot1:PALbot_chestup_ctrl_offset|PALBot1:PALbot_chestUp_ctrl|PALBot1:PALbot_chestUp_secondary_ctrl_offset|PALBot1:PALbot_chestUp_secondary_ctrl|PALBot1:PALbot_R_Clavicle_offset|PALBot1:PALbot_R_Clavicle_ctrl.translateZ" 
		"PALBotRN1.placeHolderList[110]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_cog_ctrl|PALBot1:PALbot_cog_secondary_ctrl_offset1|PALBot1:PALbot_cog_secondary_ctrl|PALBot1:PALbot_chestup_ctrl_offset|PALBot1:PALbot_chestUp_ctrl|PALBot1:PALbot_chestUp_secondary_ctrl_offset|PALBot1:PALbot_chestUp_secondary_ctrl|PALBot1:PALbot_R_Clavicle_offset|PALBot1:PALbot_R_Clavicle_ctrl.rotateX" 
		"PALBotRN1.placeHolderList[111]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_cog_ctrl|PALBot1:PALbot_cog_secondary_ctrl_offset1|PALBot1:PALbot_cog_secondary_ctrl|PALBot1:PALbot_chestup_ctrl_offset|PALBot1:PALbot_chestUp_ctrl|PALBot1:PALbot_chestUp_secondary_ctrl_offset|PALBot1:PALbot_chestUp_secondary_ctrl|PALBot1:PALbot_R_Clavicle_offset|PALBot1:PALbot_R_Clavicle_ctrl.rotateY" 
		"PALBotRN1.placeHolderList[112]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_cog_ctrl|PALBot1:PALbot_cog_secondary_ctrl_offset1|PALBot1:PALbot_cog_secondary_ctrl|PALBot1:PALbot_chestup_ctrl_offset|PALBot1:PALbot_chestUp_ctrl|PALBot1:PALbot_chestUp_secondary_ctrl_offset|PALBot1:PALbot_chestUp_secondary_ctrl|PALBot1:PALbot_R_Clavicle_offset|PALBot1:PALbot_R_Clavicle_ctrl.rotateZ" 
		"PALBotRN1.placeHolderList[113]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_cog_ctrl|PALBot1:PALbot_cog_secondary_ctrl_offset1|PALBot1:PALbot_cog_secondary_ctrl|PALBot1:PALbot_chestup_ctrl_offset|PALBot1:PALbot_chestUp_ctrl|PALBot1:PALbot_chestUp_secondary_ctrl_offset|PALBot1:PALbot_chestUp_secondary_ctrl|PALBot1:PALbot_R_Clavicle_offset|PALBot1:PALbot_R_Clavicle_ctrl|PALBot1:PALbot_R_Arm_FOLLOW|PALBot1:PALbot_L_ShoulderRotate_offset|PALBot1:PALbot_L_ShoulderRotate_ctrl.rotateZ" 
		"PALBotRN1.placeHolderList[114]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_cog_ctrl|PALBot1:PALbot_cog_secondary_ctrl_offset1|PALBot1:PALbot_cog_secondary_ctrl|PALBot1:PALbot_chestup_ctrl_offset|PALBot1:PALbot_chestUp_ctrl|PALBot1:PALbot_chestUp_secondary_ctrl_offset|PALBot1:PALbot_chestUp_secondary_ctrl|PALBot1:PALbot_R_Clavicle_offset|PALBot1:PALbot_R_Clavicle_ctrl|PALBot1:PALbot_R_Arm_FOLLOW|PALBot1:PALbot_L_ShoulderRotate_offset|PALBot1:PALbot_L_ShoulderRotate_ctrl.translateX" 
		"PALBotRN1.placeHolderList[115]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_cog_ctrl|PALBot1:PALbot_cog_secondary_ctrl_offset1|PALBot1:PALbot_cog_secondary_ctrl|PALBot1:PALbot_chestup_ctrl_offset|PALBot1:PALbot_chestUp_ctrl|PALBot1:PALbot_chestUp_secondary_ctrl_offset|PALBot1:PALbot_chestUp_secondary_ctrl|PALBot1:PALbot_R_Clavicle_offset|PALBot1:PALbot_R_Clavicle_ctrl|PALBot1:PALbot_R_Arm_FOLLOW|PALBot1:PALbot_L_ShoulderRotate_offset|PALBot1:PALbot_L_ShoulderRotate_ctrl.translateY" 
		"PALBotRN1.placeHolderList[116]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_cog_ctrl|PALBot1:PALbot_cog_secondary_ctrl_offset1|PALBot1:PALbot_cog_secondary_ctrl|PALBot1:PALbot_chestup_ctrl_offset|PALBot1:PALbot_chestUp_ctrl|PALBot1:PALbot_chestUp_secondary_ctrl_offset|PALBot1:PALbot_chestUp_secondary_ctrl|PALBot1:PALbot_R_Clavicle_offset|PALBot1:PALbot_R_Clavicle_ctrl|PALBot1:PALbot_R_Arm_FOLLOW|PALBot1:PALbot_L_ShoulderRotate_offset|PALBot1:PALbot_L_ShoulderRotate_ctrl.translateZ" 
		"PALBotRN1.placeHolderList[117]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_cog_ctrl|PALBot1:PALbot_cog_secondary_ctrl_offset1|PALBot1:PALbot_cog_secondary_ctrl|PALBot1:PALbot_chestup_ctrl_offset|PALBot1:PALbot_chestUp_ctrl|PALBot1:PALbot_chestUp_secondary_ctrl_offset|PALBot1:PALbot_chestUp_secondary_ctrl|PALBot1:PALbot_R_Clavicle_offset|PALBot1:PALbot_R_Clavicle_ctrl|PALBot1:PALbot_R_Arm_FOLLOW|PALBot1:PALbot_L_ShoulderRotate_offset|PALBot1:PALbot_L_ShoulderRotate_ctrl|PALBot1:PALbot_L_Arm_offset|PALBot1:PALbot_L_Arm_ctrl.rotateZ" 
		"PALBotRN1.placeHolderList[118]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_cog_ctrl|PALBot1:PALbot_cog_secondary_ctrl_offset1|PALBot1:PALbot_cog_secondary_ctrl|PALBot1:PALbot_chestup_ctrl_offset|PALBot1:PALbot_chestUp_ctrl|PALBot1:PALbot_chestUp_secondary_ctrl_offset|PALBot1:PALbot_chestUp_secondary_ctrl|PALBot1:PALbot_R_Clavicle_offset|PALBot1:PALbot_R_Clavicle_ctrl|PALBot1:PALbot_R_Arm_FOLLOW|PALBot1:PALbot_L_ShoulderRotate_offset|PALBot1:PALbot_L_ShoulderRotate_ctrl|PALBot1:PALbot_L_Arm_offset|PALBot1:PALbot_L_Arm_ctrl.rotateY" 
		"PALBotRN1.placeHolderList[119]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_cog_ctrl|PALBot1:PALbot_cog_secondary_ctrl_offset1|PALBot1:PALbot_cog_secondary_ctrl|PALBot1:PALbot_chestup_ctrl_offset|PALBot1:PALbot_chestUp_ctrl|PALBot1:PALbot_chestUp_secondary_ctrl_offset|PALBot1:PALbot_chestUp_secondary_ctrl|PALBot1:PALbot_R_Clavicle_offset|PALBot1:PALbot_R_Clavicle_ctrl|PALBot1:PALbot_R_Arm_FOLLOW|PALBot1:PALbot_L_ShoulderRotate_offset|PALBot1:PALbot_L_ShoulderRotate_ctrl|PALBot1:PALbot_L_Arm_offset|PALBot1:PALbot_L_Arm_ctrl.translateX" 
		"PALBotRN1.placeHolderList[120]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_cog_ctrl|PALBot1:PALbot_cog_secondary_ctrl_offset1|PALBot1:PALbot_cog_secondary_ctrl|PALBot1:PALbot_chestup_ctrl_offset|PALBot1:PALbot_chestUp_ctrl|PALBot1:PALbot_chestUp_secondary_ctrl_offset|PALBot1:PALbot_chestUp_secondary_ctrl|PALBot1:PALbot_R_Clavicle_offset|PALBot1:PALbot_R_Clavicle_ctrl|PALBot1:PALbot_R_Arm_FOLLOW|PALBot1:PALbot_L_ShoulderRotate_offset|PALBot1:PALbot_L_ShoulderRotate_ctrl|PALBot1:PALbot_L_Arm_offset|PALBot1:PALbot_L_Arm_ctrl.translateY" 
		"PALBotRN1.placeHolderList[121]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_cog_ctrl|PALBot1:PALbot_cog_secondary_ctrl_offset1|PALBot1:PALbot_cog_secondary_ctrl|PALBot1:PALbot_chestup_ctrl_offset|PALBot1:PALbot_chestUp_ctrl|PALBot1:PALbot_chestUp_secondary_ctrl_offset|PALBot1:PALbot_chestUp_secondary_ctrl|PALBot1:PALbot_R_Clavicle_offset|PALBot1:PALbot_R_Clavicle_ctrl|PALBot1:PALbot_R_Arm_FOLLOW|PALBot1:PALbot_L_ShoulderRotate_offset|PALBot1:PALbot_L_ShoulderRotate_ctrl|PALBot1:PALbot_L_Arm_offset|PALBot1:PALbot_L_Arm_ctrl.translateZ" 
		"PALBotRN1.placeHolderList[122]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_cog_ctrl|PALBot1:PALbot_cog_secondary_ctrl_offset1|PALBot1:PALbot_cog_secondary_ctrl|PALBot1:PALbot_chestup_ctrl_offset|PALBot1:PALbot_chestUp_ctrl|PALBot1:PALbot_chestUp_secondary_ctrl_offset|PALBot1:PALbot_chestUp_secondary_ctrl|PALBot1:PALbot_R_Clavicle_offset|PALBot1:PALbot_R_Clavicle_ctrl|PALBot1:PALbot_R_Arm_FOLLOW|PALBot1:PALbot_L_ShoulderRotate_offset|PALBot1:PALbot_L_ShoulderRotate_ctrl|PALBot1:PALbot_L_Arm_offset|PALBot1:PALbot_L_Arm_ctrl|PALBot1:PALbot_R_FK_Elbow_offset|PALBot1:PALbot_R_FK_Elbow_ctrl.rotateX" 
		"PALBotRN1.placeHolderList[123]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_cog_ctrl|PALBot1:PALbot_cog_secondary_ctrl_offset1|PALBot1:PALbot_cog_secondary_ctrl|PALBot1:PALbot_chestup_ctrl_offset|PALBot1:PALbot_chestUp_ctrl|PALBot1:PALbot_chestUp_secondary_ctrl_offset|PALBot1:PALbot_chestUp_secondary_ctrl|PALBot1:PALbot_R_Clavicle_offset|PALBot1:PALbot_R_Clavicle_ctrl|PALBot1:PALbot_R_Arm_FOLLOW|PALBot1:PALbot_L_ShoulderRotate_offset|PALBot1:PALbot_L_ShoulderRotate_ctrl|PALBot1:PALbot_L_Arm_offset|PALBot1:PALbot_L_Arm_ctrl|PALBot1:PALbot_R_FK_Elbow_offset|PALBot1:PALbot_R_FK_Elbow_ctrl.translateX" 
		"PALBotRN1.placeHolderList[124]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_cog_ctrl|PALBot1:PALbot_cog_secondary_ctrl_offset1|PALBot1:PALbot_cog_secondary_ctrl|PALBot1:PALbot_chestup_ctrl_offset|PALBot1:PALbot_chestUp_ctrl|PALBot1:PALbot_chestUp_secondary_ctrl_offset|PALBot1:PALbot_chestUp_secondary_ctrl|PALBot1:PALbot_R_Clavicle_offset|PALBot1:PALbot_R_Clavicle_ctrl|PALBot1:PALbot_R_Arm_FOLLOW|PALBot1:PALbot_L_ShoulderRotate_offset|PALBot1:PALbot_L_ShoulderRotate_ctrl|PALBot1:PALbot_L_Arm_offset|PALBot1:PALbot_L_Arm_ctrl|PALBot1:PALbot_R_FK_Elbow_offset|PALBot1:PALbot_R_FK_Elbow_ctrl.translateY" 
		"PALBotRN1.placeHolderList[125]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_cog_ctrl|PALBot1:PALbot_cog_secondary_ctrl_offset1|PALBot1:PALbot_cog_secondary_ctrl|PALBot1:PALbot_chestup_ctrl_offset|PALBot1:PALbot_chestUp_ctrl|PALBot1:PALbot_chestUp_secondary_ctrl_offset|PALBot1:PALbot_chestUp_secondary_ctrl|PALBot1:PALbot_R_Clavicle_offset|PALBot1:PALbot_R_Clavicle_ctrl|PALBot1:PALbot_R_Arm_FOLLOW|PALBot1:PALbot_L_ShoulderRotate_offset|PALBot1:PALbot_L_ShoulderRotate_ctrl|PALBot1:PALbot_L_Arm_offset|PALBot1:PALbot_L_Arm_ctrl|PALBot1:PALbot_R_FK_Elbow_offset|PALBot1:PALbot_R_FK_Elbow_ctrl.translateZ" 
		"PALBotRN1.placeHolderList[126]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_cog_ctrl|PALBot1:PALbot_cog_secondary_ctrl_offset1|PALBot1:PALbot_cog_secondary_ctrl|PALBot1:PALbot_chestup_ctrl_offset|PALBot1:PALbot_chestUp_ctrl|PALBot1:PALbot_chestUp_secondary_ctrl_offset|PALBot1:PALbot_chestUp_secondary_ctrl|PALBot1:PALbot_R_Clavicle_offset|PALBot1:PALbot_R_Clavicle_ctrl|PALBot1:PALbot_R_Arm_FOLLOW|PALBot1:PALbot_L_ShoulderRotate_offset|PALBot1:PALbot_L_ShoulderRotate_ctrl|PALBot1:PALbot_L_Arm_offset|PALBot1:PALbot_L_Arm_ctrl|PALBot1:PALbot_R_FK_Elbow_offset|PALBot1:PALbot_R_FK_Elbow_ctrl|PALBot1:PALbot_R_FK_Wrist_ctrl_offset|PALBot1:PALbot_R_FK_Wrist_ctrl.translateX" 
		"PALBotRN1.placeHolderList[127]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_cog_ctrl|PALBot1:PALbot_cog_secondary_ctrl_offset1|PALBot1:PALbot_cog_secondary_ctrl|PALBot1:PALbot_chestup_ctrl_offset|PALBot1:PALbot_chestUp_ctrl|PALBot1:PALbot_chestUp_secondary_ctrl_offset|PALBot1:PALbot_chestUp_secondary_ctrl|PALBot1:PALbot_R_Clavicle_offset|PALBot1:PALbot_R_Clavicle_ctrl|PALBot1:PALbot_R_Arm_FOLLOW|PALBot1:PALbot_L_ShoulderRotate_offset|PALBot1:PALbot_L_ShoulderRotate_ctrl|PALBot1:PALbot_L_Arm_offset|PALBot1:PALbot_L_Arm_ctrl|PALBot1:PALbot_R_FK_Elbow_offset|PALBot1:PALbot_R_FK_Elbow_ctrl|PALBot1:PALbot_R_FK_Wrist_ctrl_offset|PALBot1:PALbot_R_FK_Wrist_ctrl.translateY" 
		"PALBotRN1.placeHolderList[128]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_cog_ctrl|PALBot1:PALbot_cog_secondary_ctrl_offset1|PALBot1:PALbot_cog_secondary_ctrl|PALBot1:PALbot_chestup_ctrl_offset|PALBot1:PALbot_chestUp_ctrl|PALBot1:PALbot_chestUp_secondary_ctrl_offset|PALBot1:PALbot_chestUp_secondary_ctrl|PALBot1:PALbot_R_Clavicle_offset|PALBot1:PALbot_R_Clavicle_ctrl|PALBot1:PALbot_R_Arm_FOLLOW|PALBot1:PALbot_L_ShoulderRotate_offset|PALBot1:PALbot_L_ShoulderRotate_ctrl|PALBot1:PALbot_L_Arm_offset|PALBot1:PALbot_L_Arm_ctrl|PALBot1:PALbot_R_FK_Elbow_offset|PALBot1:PALbot_R_FK_Elbow_ctrl|PALBot1:PALbot_R_FK_Wrist_ctrl_offset|PALBot1:PALbot_R_FK_Wrist_ctrl.translateZ" 
		"PALBotRN1.placeHolderList[129]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_cog_ctrl|PALBot1:PALbot_cog_secondary_ctrl_offset1|PALBot1:PALbot_cog_secondary_ctrl|PALBot1:PALbot_chestup_ctrl_offset|PALBot1:PALbot_chestUp_ctrl|PALBot1:PALbot_chestUp_secondary_ctrl_offset|PALBot1:PALbot_chestUp_secondary_ctrl|PALBot1:PALbot_R_Clavicle_offset|PALBot1:PALbot_R_Clavicle_ctrl|PALBot1:PALbot_R_Arm_FOLLOW|PALBot1:PALbot_L_ShoulderRotate_offset|PALBot1:PALbot_L_ShoulderRotate_ctrl|PALBot1:PALbot_L_Arm_offset|PALBot1:PALbot_L_Arm_ctrl|PALBot1:PALbot_R_FK_Elbow_offset|PALBot1:PALbot_R_FK_Elbow_ctrl|PALBot1:PALbot_R_FK_Wrist_ctrl_offset|PALBot1:PALbot_R_FK_Wrist_ctrl.rotateY" 
		"PALBotRN1.placeHolderList[130]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_cog_ctrl|PALBot1:PALbot_cog_secondary_ctrl_offset1|PALBot1:PALbot_cog_secondary_ctrl|PALBot1:PALbot_chestup_ctrl_offset|PALBot1:PALbot_chestUp_ctrl|PALBot1:PALbot_chestUp_secondary_ctrl_offset|PALBot1:PALbot_chestUp_secondary_ctrl|PALBot1:PALbot_R_Clavicle_offset|PALBot1:PALbot_R_Clavicle_ctrl|PALBot1:PALbot_R_Arm_FOLLOW|PALBot1:PALbot_L_ShoulderRotate_offset|PALBot1:PALbot_L_ShoulderRotate_ctrl|PALBot1:PALbot_L_Arm_offset|PALBot1:PALbot_L_Arm_ctrl|PALBot1:PALbot_R_FK_Elbow_offset|PALBot1:PALbot_R_FK_Elbow_ctrl|PALBot1:PALbot_R_FK_Wrist_ctrl_offset|PALBot1:PALbot_R_FK_Wrist_ctrl.rotateX" 
		"PALBotRN1.placeHolderList[131]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_cog_ctrl|PALBot1:PALbot_cog_secondary_ctrl_offset1|PALBot1:PALbot_cog_secondary_ctrl|PALBot1:PALbot_chestup_ctrl_offset|PALBot1:PALbot_chestUp_ctrl|PALBot1:PALbot_chestUp_secondary_ctrl_offset|PALBot1:PALbot_chestUp_secondary_ctrl|PALBot1:PALbot_R_Clavicle_offset|PALBot1:PALbot_R_Clavicle_ctrl|PALBot1:PALbot_R_Arm_FOLLOW|PALBot1:PALbot_L_ShoulderRotate_offset|PALBot1:PALbot_L_ShoulderRotate_ctrl|PALBot1:PALbot_L_Arm_offset|PALBot1:PALbot_L_Arm_ctrl|PALBot1:PALbot_R_FK_Elbow_offset|PALBot1:PALbot_R_FK_Elbow_ctrl|PALBot1:PALbot_R_FK_Wrist_ctrl_offset|PALBot1:PALbot_R_FK_Wrist_ctrl.rotateZ" 
		"PALBotRN1.placeHolderList[132]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_cog_ctrl|PALBot1:PALbot_cog_secondary_ctrl_offset1|PALBot1:PALbot_cog_secondary_ctrl|PALBot1:PALbot_chestup_ctrl_offset|PALBot1:PALbot_chestUp_ctrl|PALBot1:PALbot_chestUp_secondary_ctrl_offset|PALBot1:PALbot_chestUp_secondary_ctrl|PALBot1:PALbot_R_Clavicle_offset|PALBot1:PALbot_R_Clavicle_ctrl|PALBot1:PALbot_R_arm_IK_FK_switch_offset|PALBot1:PALbot_R_arm_IK_FK_switch.IK_FK" 
		"PALBotRN1.placeHolderList[133]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_cog_ctrl|PALBot1:PALbot_cog_secondary_ctrl_offset1|PALBot1:PALbot_cog_secondary_ctrl|PALBot1:PALbot_chestup_ctrl_offset|PALBot1:PALbot_chestUp_ctrl|PALBot1:PALbot_chestUp_secondary_ctrl_offset|PALBot1:PALbot_chestUp_secondary_ctrl|PALBot1:PALbot_L_Clavicle_offset|PALBot1:PALbot_L_Clavicle_ctrl.translateX" 
		"PALBotRN1.placeHolderList[134]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_cog_ctrl|PALBot1:PALbot_cog_secondary_ctrl_offset1|PALBot1:PALbot_cog_secondary_ctrl|PALBot1:PALbot_chestup_ctrl_offset|PALBot1:PALbot_chestUp_ctrl|PALBot1:PALbot_chestUp_secondary_ctrl_offset|PALBot1:PALbot_chestUp_secondary_ctrl|PALBot1:PALbot_L_Clavicle_offset|PALBot1:PALbot_L_Clavicle_ctrl.translateY" 
		"PALBotRN1.placeHolderList[135]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_cog_ctrl|PALBot1:PALbot_cog_secondary_ctrl_offset1|PALBot1:PALbot_cog_secondary_ctrl|PALBot1:PALbot_chestup_ctrl_offset|PALBot1:PALbot_chestUp_ctrl|PALBot1:PALbot_chestUp_secondary_ctrl_offset|PALBot1:PALbot_chestUp_secondary_ctrl|PALBot1:PALbot_L_Clavicle_offset|PALBot1:PALbot_L_Clavicle_ctrl.translateZ" 
		"PALBotRN1.placeHolderList[136]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_cog_ctrl|PALBot1:PALbot_cog_secondary_ctrl_offset1|PALBot1:PALbot_cog_secondary_ctrl|PALBot1:PALbot_chestup_ctrl_offset|PALBot1:PALbot_chestUp_ctrl|PALBot1:PALbot_chestUp_secondary_ctrl_offset|PALBot1:PALbot_chestUp_secondary_ctrl|PALBot1:PALbot_L_Clavicle_offset|PALBot1:PALbot_L_Clavicle_ctrl.rotateX" 
		"PALBotRN1.placeHolderList[137]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_cog_ctrl|PALBot1:PALbot_cog_secondary_ctrl_offset1|PALBot1:PALbot_cog_secondary_ctrl|PALBot1:PALbot_chestup_ctrl_offset|PALBot1:PALbot_chestUp_ctrl|PALBot1:PALbot_chestUp_secondary_ctrl_offset|PALBot1:PALbot_chestUp_secondary_ctrl|PALBot1:PALbot_L_Clavicle_offset|PALBot1:PALbot_L_Clavicle_ctrl.rotateY" 
		"PALBotRN1.placeHolderList[138]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_cog_ctrl|PALBot1:PALbot_cog_secondary_ctrl_offset1|PALBot1:PALbot_cog_secondary_ctrl|PALBot1:PALbot_chestup_ctrl_offset|PALBot1:PALbot_chestUp_ctrl|PALBot1:PALbot_chestUp_secondary_ctrl_offset|PALBot1:PALbot_chestUp_secondary_ctrl|PALBot1:PALbot_L_Clavicle_offset|PALBot1:PALbot_L_Clavicle_ctrl.rotateZ" 
		"PALBotRN1.placeHolderList[139]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_cog_ctrl|PALBot1:PALbot_cog_secondary_ctrl_offset1|PALBot1:PALbot_cog_secondary_ctrl|PALBot1:PALbot_chestup_ctrl_offset|PALBot1:PALbot_chestUp_ctrl|PALBot1:PALbot_chestUp_secondary_ctrl_offset|PALBot1:PALbot_chestUp_secondary_ctrl|PALBot1:PALbot_L_Clavicle_offset|PALBot1:PALbot_L_Clavicle_ctrl|PALBot1:PALbot_L_Arm_FOLLOW|PALBot1:PALbot_L_ShoulderRotate_offset|PALBot1:PALbot_L_ShoulderRotate_ctrl.rotateZ" 
		"PALBotRN1.placeHolderList[140]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_cog_ctrl|PALBot1:PALbot_cog_secondary_ctrl_offset1|PALBot1:PALbot_cog_secondary_ctrl|PALBot1:PALbot_chestup_ctrl_offset|PALBot1:PALbot_chestUp_ctrl|PALBot1:PALbot_chestUp_secondary_ctrl_offset|PALBot1:PALbot_chestUp_secondary_ctrl|PALBot1:PALbot_L_Clavicle_offset|PALBot1:PALbot_L_Clavicle_ctrl|PALBot1:PALbot_L_Arm_FOLLOW|PALBot1:PALbot_L_ShoulderRotate_offset|PALBot1:PALbot_L_ShoulderRotate_ctrl.translateX" 
		"PALBotRN1.placeHolderList[141]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_cog_ctrl|PALBot1:PALbot_cog_secondary_ctrl_offset1|PALBot1:PALbot_cog_secondary_ctrl|PALBot1:PALbot_chestup_ctrl_offset|PALBot1:PALbot_chestUp_ctrl|PALBot1:PALbot_chestUp_secondary_ctrl_offset|PALBot1:PALbot_chestUp_secondary_ctrl|PALBot1:PALbot_L_Clavicle_offset|PALBot1:PALbot_L_Clavicle_ctrl|PALBot1:PALbot_L_Arm_FOLLOW|PALBot1:PALbot_L_ShoulderRotate_offset|PALBot1:PALbot_L_ShoulderRotate_ctrl.translateY" 
		"PALBotRN1.placeHolderList[142]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_cog_ctrl|PALBot1:PALbot_cog_secondary_ctrl_offset1|PALBot1:PALbot_cog_secondary_ctrl|PALBot1:PALbot_chestup_ctrl_offset|PALBot1:PALbot_chestUp_ctrl|PALBot1:PALbot_chestUp_secondary_ctrl_offset|PALBot1:PALbot_chestUp_secondary_ctrl|PALBot1:PALbot_L_Clavicle_offset|PALBot1:PALbot_L_Clavicle_ctrl|PALBot1:PALbot_L_Arm_FOLLOW|PALBot1:PALbot_L_ShoulderRotate_offset|PALBot1:PALbot_L_ShoulderRotate_ctrl.translateZ" 
		"PALBotRN1.placeHolderList[143]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_cog_ctrl|PALBot1:PALbot_cog_secondary_ctrl_offset1|PALBot1:PALbot_cog_secondary_ctrl|PALBot1:PALbot_chestup_ctrl_offset|PALBot1:PALbot_chestUp_ctrl|PALBot1:PALbot_chestUp_secondary_ctrl_offset|PALBot1:PALbot_chestUp_secondary_ctrl|PALBot1:PALbot_L_Clavicle_offset|PALBot1:PALbot_L_Clavicle_ctrl|PALBot1:PALbot_L_Arm_FOLLOW|PALBot1:PALbot_L_ShoulderRotate_offset|PALBot1:PALbot_L_ShoulderRotate_ctrl|PALBot1:PALbot_L_Arm_offset|PALBot1:PALbot_L_Arm_ctrl.rotateZ" 
		"PALBotRN1.placeHolderList[144]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_cog_ctrl|PALBot1:PALbot_cog_secondary_ctrl_offset1|PALBot1:PALbot_cog_secondary_ctrl|PALBot1:PALbot_chestup_ctrl_offset|PALBot1:PALbot_chestUp_ctrl|PALBot1:PALbot_chestUp_secondary_ctrl_offset|PALBot1:PALbot_chestUp_secondary_ctrl|PALBot1:PALbot_L_Clavicle_offset|PALBot1:PALbot_L_Clavicle_ctrl|PALBot1:PALbot_L_Arm_FOLLOW|PALBot1:PALbot_L_ShoulderRotate_offset|PALBot1:PALbot_L_ShoulderRotate_ctrl|PALBot1:PALbot_L_Arm_offset|PALBot1:PALbot_L_Arm_ctrl.rotateY" 
		"PALBotRN1.placeHolderList[145]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_cog_ctrl|PALBot1:PALbot_cog_secondary_ctrl_offset1|PALBot1:PALbot_cog_secondary_ctrl|PALBot1:PALbot_chestup_ctrl_offset|PALBot1:PALbot_chestUp_ctrl|PALBot1:PALbot_chestUp_secondary_ctrl_offset|PALBot1:PALbot_chestUp_secondary_ctrl|PALBot1:PALbot_L_Clavicle_offset|PALBot1:PALbot_L_Clavicle_ctrl|PALBot1:PALbot_L_Arm_FOLLOW|PALBot1:PALbot_L_ShoulderRotate_offset|PALBot1:PALbot_L_ShoulderRotate_ctrl|PALBot1:PALbot_L_Arm_offset|PALBot1:PALbot_L_Arm_ctrl.translateX" 
		"PALBotRN1.placeHolderList[146]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_cog_ctrl|PALBot1:PALbot_cog_secondary_ctrl_offset1|PALBot1:PALbot_cog_secondary_ctrl|PALBot1:PALbot_chestup_ctrl_offset|PALBot1:PALbot_chestUp_ctrl|PALBot1:PALbot_chestUp_secondary_ctrl_offset|PALBot1:PALbot_chestUp_secondary_ctrl|PALBot1:PALbot_L_Clavicle_offset|PALBot1:PALbot_L_Clavicle_ctrl|PALBot1:PALbot_L_Arm_FOLLOW|PALBot1:PALbot_L_ShoulderRotate_offset|PALBot1:PALbot_L_ShoulderRotate_ctrl|PALBot1:PALbot_L_Arm_offset|PALBot1:PALbot_L_Arm_ctrl.translateY" 
		"PALBotRN1.placeHolderList[147]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_cog_ctrl|PALBot1:PALbot_cog_secondary_ctrl_offset1|PALBot1:PALbot_cog_secondary_ctrl|PALBot1:PALbot_chestup_ctrl_offset|PALBot1:PALbot_chestUp_ctrl|PALBot1:PALbot_chestUp_secondary_ctrl_offset|PALBot1:PALbot_chestUp_secondary_ctrl|PALBot1:PALbot_L_Clavicle_offset|PALBot1:PALbot_L_Clavicle_ctrl|PALBot1:PALbot_L_Arm_FOLLOW|PALBot1:PALbot_L_ShoulderRotate_offset|PALBot1:PALbot_L_ShoulderRotate_ctrl|PALBot1:PALbot_L_Arm_offset|PALBot1:PALbot_L_Arm_ctrl.translateZ" 
		"PALBotRN1.placeHolderList[148]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_cog_ctrl|PALBot1:PALbot_cog_secondary_ctrl_offset1|PALBot1:PALbot_cog_secondary_ctrl|PALBot1:PALbot_chestup_ctrl_offset|PALBot1:PALbot_chestUp_ctrl|PALBot1:PALbot_chestUp_secondary_ctrl_offset|PALBot1:PALbot_chestUp_secondary_ctrl|PALBot1:PALbot_L_Clavicle_offset|PALBot1:PALbot_L_Clavicle_ctrl|PALBot1:PALbot_L_Arm_FOLLOW|PALBot1:PALbot_L_ShoulderRotate_offset|PALBot1:PALbot_L_ShoulderRotate_ctrl|PALBot1:PALbot_L_Arm_offset|PALBot1:PALbot_L_Arm_ctrl|PALBot1:PALbot_L_FK_Elbow_offset|PALBot1:PALbot_L_FK_Elbow_ctrl.rotateX" 
		"PALBotRN1.placeHolderList[149]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_cog_ctrl|PALBot1:PALbot_cog_secondary_ctrl_offset1|PALBot1:PALbot_cog_secondary_ctrl|PALBot1:PALbot_chestup_ctrl_offset|PALBot1:PALbot_chestUp_ctrl|PALBot1:PALbot_chestUp_secondary_ctrl_offset|PALBot1:PALbot_chestUp_secondary_ctrl|PALBot1:PALbot_L_Clavicle_offset|PALBot1:PALbot_L_Clavicle_ctrl|PALBot1:PALbot_L_Arm_FOLLOW|PALBot1:PALbot_L_ShoulderRotate_offset|PALBot1:PALbot_L_ShoulderRotate_ctrl|PALBot1:PALbot_L_Arm_offset|PALBot1:PALbot_L_Arm_ctrl|PALBot1:PALbot_L_FK_Elbow_offset|PALBot1:PALbot_L_FK_Elbow_ctrl.translateX" 
		"PALBotRN1.placeHolderList[150]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_cog_ctrl|PALBot1:PALbot_cog_secondary_ctrl_offset1|PALBot1:PALbot_cog_secondary_ctrl|PALBot1:PALbot_chestup_ctrl_offset|PALBot1:PALbot_chestUp_ctrl|PALBot1:PALbot_chestUp_secondary_ctrl_offset|PALBot1:PALbot_chestUp_secondary_ctrl|PALBot1:PALbot_L_Clavicle_offset|PALBot1:PALbot_L_Clavicle_ctrl|PALBot1:PALbot_L_Arm_FOLLOW|PALBot1:PALbot_L_ShoulderRotate_offset|PALBot1:PALbot_L_ShoulderRotate_ctrl|PALBot1:PALbot_L_Arm_offset|PALBot1:PALbot_L_Arm_ctrl|PALBot1:PALbot_L_FK_Elbow_offset|PALBot1:PALbot_L_FK_Elbow_ctrl.translateY" 
		"PALBotRN1.placeHolderList[151]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_cog_ctrl|PALBot1:PALbot_cog_secondary_ctrl_offset1|PALBot1:PALbot_cog_secondary_ctrl|PALBot1:PALbot_chestup_ctrl_offset|PALBot1:PALbot_chestUp_ctrl|PALBot1:PALbot_chestUp_secondary_ctrl_offset|PALBot1:PALbot_chestUp_secondary_ctrl|PALBot1:PALbot_L_Clavicle_offset|PALBot1:PALbot_L_Clavicle_ctrl|PALBot1:PALbot_L_Arm_FOLLOW|PALBot1:PALbot_L_ShoulderRotate_offset|PALBot1:PALbot_L_ShoulderRotate_ctrl|PALBot1:PALbot_L_Arm_offset|PALBot1:PALbot_L_Arm_ctrl|PALBot1:PALbot_L_FK_Elbow_offset|PALBot1:PALbot_L_FK_Elbow_ctrl.translateZ" 
		"PALBotRN1.placeHolderList[152]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_cog_ctrl|PALBot1:PALbot_cog_secondary_ctrl_offset1|PALBot1:PALbot_cog_secondary_ctrl|PALBot1:PALbot_chestup_ctrl_offset|PALBot1:PALbot_chestUp_ctrl|PALBot1:PALbot_chestUp_secondary_ctrl_offset|PALBot1:PALbot_chestUp_secondary_ctrl|PALBot1:PALbot_L_Clavicle_offset|PALBot1:PALbot_L_Clavicle_ctrl|PALBot1:PALbot_L_Arm_FOLLOW|PALBot1:PALbot_L_ShoulderRotate_offset|PALBot1:PALbot_L_ShoulderRotate_ctrl|PALBot1:PALbot_L_Arm_offset|PALBot1:PALbot_L_Arm_ctrl|PALBot1:PALbot_L_FK_Elbow_offset|PALBot1:PALbot_L_FK_Elbow_ctrl|PALBot1:PALbot_L_FK_Wrist_ctrl_offset|PALBot1:PALbot_L_FK_Wrist_ctrl.translateX" 
		"PALBotRN1.placeHolderList[153]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_cog_ctrl|PALBot1:PALbot_cog_secondary_ctrl_offset1|PALBot1:PALbot_cog_secondary_ctrl|PALBot1:PALbot_chestup_ctrl_offset|PALBot1:PALbot_chestUp_ctrl|PALBot1:PALbot_chestUp_secondary_ctrl_offset|PALBot1:PALbot_chestUp_secondary_ctrl|PALBot1:PALbot_L_Clavicle_offset|PALBot1:PALbot_L_Clavicle_ctrl|PALBot1:PALbot_L_Arm_FOLLOW|PALBot1:PALbot_L_ShoulderRotate_offset|PALBot1:PALbot_L_ShoulderRotate_ctrl|PALBot1:PALbot_L_Arm_offset|PALBot1:PALbot_L_Arm_ctrl|PALBot1:PALbot_L_FK_Elbow_offset|PALBot1:PALbot_L_FK_Elbow_ctrl|PALBot1:PALbot_L_FK_Wrist_ctrl_offset|PALBot1:PALbot_L_FK_Wrist_ctrl.translateY" 
		"PALBotRN1.placeHolderList[154]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_cog_ctrl|PALBot1:PALbot_cog_secondary_ctrl_offset1|PALBot1:PALbot_cog_secondary_ctrl|PALBot1:PALbot_chestup_ctrl_offset|PALBot1:PALbot_chestUp_ctrl|PALBot1:PALbot_chestUp_secondary_ctrl_offset|PALBot1:PALbot_chestUp_secondary_ctrl|PALBot1:PALbot_L_Clavicle_offset|PALBot1:PALbot_L_Clavicle_ctrl|PALBot1:PALbot_L_Arm_FOLLOW|PALBot1:PALbot_L_ShoulderRotate_offset|PALBot1:PALbot_L_ShoulderRotate_ctrl|PALBot1:PALbot_L_Arm_offset|PALBot1:PALbot_L_Arm_ctrl|PALBot1:PALbot_L_FK_Elbow_offset|PALBot1:PALbot_L_FK_Elbow_ctrl|PALBot1:PALbot_L_FK_Wrist_ctrl_offset|PALBot1:PALbot_L_FK_Wrist_ctrl.translateZ" 
		"PALBotRN1.placeHolderList[155]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_cog_ctrl|PALBot1:PALbot_cog_secondary_ctrl_offset1|PALBot1:PALbot_cog_secondary_ctrl|PALBot1:PALbot_chestup_ctrl_offset|PALBot1:PALbot_chestUp_ctrl|PALBot1:PALbot_chestUp_secondary_ctrl_offset|PALBot1:PALbot_chestUp_secondary_ctrl|PALBot1:PALbot_L_Clavicle_offset|PALBot1:PALbot_L_Clavicle_ctrl|PALBot1:PALbot_L_Arm_FOLLOW|PALBot1:PALbot_L_ShoulderRotate_offset|PALBot1:PALbot_L_ShoulderRotate_ctrl|PALBot1:PALbot_L_Arm_offset|PALBot1:PALbot_L_Arm_ctrl|PALBot1:PALbot_L_FK_Elbow_offset|PALBot1:PALbot_L_FK_Elbow_ctrl|PALBot1:PALbot_L_FK_Wrist_ctrl_offset|PALBot1:PALbot_L_FK_Wrist_ctrl.rotateY" 
		"PALBotRN1.placeHolderList[156]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_cog_ctrl|PALBot1:PALbot_cog_secondary_ctrl_offset1|PALBot1:PALbot_cog_secondary_ctrl|PALBot1:PALbot_chestup_ctrl_offset|PALBot1:PALbot_chestUp_ctrl|PALBot1:PALbot_chestUp_secondary_ctrl_offset|PALBot1:PALbot_chestUp_secondary_ctrl|PALBot1:PALbot_L_Clavicle_offset|PALBot1:PALbot_L_Clavicle_ctrl|PALBot1:PALbot_L_Arm_FOLLOW|PALBot1:PALbot_L_ShoulderRotate_offset|PALBot1:PALbot_L_ShoulderRotate_ctrl|PALBot1:PALbot_L_Arm_offset|PALBot1:PALbot_L_Arm_ctrl|PALBot1:PALbot_L_FK_Elbow_offset|PALBot1:PALbot_L_FK_Elbow_ctrl|PALBot1:PALbot_L_FK_Wrist_ctrl_offset|PALBot1:PALbot_L_FK_Wrist_ctrl.rotateX" 
		"PALBotRN1.placeHolderList[157]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_cog_ctrl|PALBot1:PALbot_cog_secondary_ctrl_offset1|PALBot1:PALbot_cog_secondary_ctrl|PALBot1:PALbot_chestup_ctrl_offset|PALBot1:PALbot_chestUp_ctrl|PALBot1:PALbot_chestUp_secondary_ctrl_offset|PALBot1:PALbot_chestUp_secondary_ctrl|PALBot1:PALbot_L_Clavicle_offset|PALBot1:PALbot_L_Clavicle_ctrl|PALBot1:PALbot_L_Arm_FOLLOW|PALBot1:PALbot_L_ShoulderRotate_offset|PALBot1:PALbot_L_ShoulderRotate_ctrl|PALBot1:PALbot_L_Arm_offset|PALBot1:PALbot_L_Arm_ctrl|PALBot1:PALbot_L_FK_Elbow_offset|PALBot1:PALbot_L_FK_Elbow_ctrl|PALBot1:PALbot_L_FK_Wrist_ctrl_offset|PALBot1:PALbot_L_FK_Wrist_ctrl.rotateZ" 
		"PALBotRN1.placeHolderList[158]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_cog_ctrl|PALBot1:PALbot_cog_secondary_ctrl_offset1|PALBot1:PALbot_cog_secondary_ctrl|PALBot1:PALbot_chestup_ctrl_offset|PALBot1:PALbot_chestUp_ctrl|PALBot1:PALbot_chestUp_secondary_ctrl_offset|PALBot1:PALbot_chestUp_secondary_ctrl|PALBot1:PALbot_L_Clavicle_offset|PALBot1:PALbot_L_Clavicle_ctrl|PALBot1:PALbot_L_arm_IK_FK_switch_offset|PALBot1:PALbot_L_arm_IK_FK_switch.IK_FK" 
		"PALBotRN1.placeHolderList[159]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_cog_ctrl|PALBot1:PALbot_cog_secondary_ctrl_offset1|PALBot1:PALbot_cog_secondary_ctrl|PALBot1:PALbot_hipMain_ctrl.translateX" 
		"PALBotRN1.placeHolderList[160]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_cog_ctrl|PALBot1:PALbot_cog_secondary_ctrl_offset1|PALBot1:PALbot_cog_secondary_ctrl|PALBot1:PALbot_hipMain_ctrl.translateY" 
		"PALBotRN1.placeHolderList[161]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_cog_ctrl|PALBot1:PALbot_cog_secondary_ctrl_offset1|PALBot1:PALbot_cog_secondary_ctrl|PALBot1:PALbot_hipMain_ctrl.translateZ" 
		"PALBotRN1.placeHolderList[162]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_cog_ctrl|PALBot1:PALbot_cog_secondary_ctrl_offset1|PALBot1:PALbot_cog_secondary_ctrl|PALBot1:PALbot_hipMain_ctrl.rotateX" 
		"PALBotRN1.placeHolderList[163]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_cog_ctrl|PALBot1:PALbot_cog_secondary_ctrl_offset1|PALBot1:PALbot_cog_secondary_ctrl|PALBot1:PALbot_hipMain_ctrl.rotateY" 
		"PALBotRN1.placeHolderList[164]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_cog_ctrl|PALBot1:PALbot_cog_secondary_ctrl_offset1|PALBot1:PALbot_cog_secondary_ctrl|PALBot1:PALbot_hipMain_ctrl.rotateZ" 
		"PALBotRN1.placeHolderList[165]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_cog_ctrl|PALBot1:PALbot_cog_secondary_ctrl_offset1|PALBot1:PALbot_cog_secondary_ctrl|PALBot1:PALbot_hipMain_ctrl|PALBot1:PALbot_R_hip_offset|PALBot1:PALbot_R_hip.translateX" 
		"PALBotRN1.placeHolderList[166]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_cog_ctrl|PALBot1:PALbot_cog_secondary_ctrl_offset1|PALBot1:PALbot_cog_secondary_ctrl|PALBot1:PALbot_hipMain_ctrl|PALBot1:PALbot_R_hip_offset|PALBot1:PALbot_R_hip.translateY" 
		"PALBotRN1.placeHolderList[167]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_cog_ctrl|PALBot1:PALbot_cog_secondary_ctrl_offset1|PALBot1:PALbot_cog_secondary_ctrl|PALBot1:PALbot_hipMain_ctrl|PALBot1:PALbot_R_hip_offset|PALBot1:PALbot_R_hip.translateZ" 
		"PALBotRN1.placeHolderList[168]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_cog_ctrl|PALBot1:PALbot_cog_secondary_ctrl_offset1|PALBot1:PALbot_cog_secondary_ctrl|PALBot1:PALbot_hipMain_ctrl|PALBot1:PALbot_R_hip_offset|PALBot1:PALbot_R_hip.rotateX" 
		"PALBotRN1.placeHolderList[169]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_cog_ctrl|PALBot1:PALbot_cog_secondary_ctrl_offset1|PALBot1:PALbot_cog_secondary_ctrl|PALBot1:PALbot_hipMain_ctrl|PALBot1:PALbot_R_hip_offset|PALBot1:PALbot_R_hip.rotateY" 
		"PALBotRN1.placeHolderList[170]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_cog_ctrl|PALBot1:PALbot_cog_secondary_ctrl_offset1|PALBot1:PALbot_cog_secondary_ctrl|PALBot1:PALbot_hipMain_ctrl|PALBot1:PALbot_R_hip_offset|PALBot1:PALbot_R_hip.rotateZ" 
		"PALBotRN1.placeHolderList[171]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_cog_ctrl|PALBot1:PALbot_cog_secondary_ctrl_offset1|PALBot1:PALbot_cog_secondary_ctrl|PALBot1:PALbot_hipMain_ctrl|PALBot1:PALbot_R_hip_offset|PALBot1:PALbot_R_hip|PALBot1:PALbot_R_leg_IK_FK_switch_offset|PALBot1:PALbot_R_leg_IK_FK_switch.IK_FK" 
		"PALBotRN1.placeHolderList[172]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_cog_ctrl|PALBot1:PALbot_cog_secondary_ctrl_offset1|PALBot1:PALbot_cog_secondary_ctrl|PALBot1:PALbot_hipMain_ctrl|PALBot1:PALbot_L_hip_offset|PALBot1:PALbot_L_hip.translateX" 
		"PALBotRN1.placeHolderList[173]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_cog_ctrl|PALBot1:PALbot_cog_secondary_ctrl_offset1|PALBot1:PALbot_cog_secondary_ctrl|PALBot1:PALbot_hipMain_ctrl|PALBot1:PALbot_L_hip_offset|PALBot1:PALbot_L_hip.translateY" 
		"PALBotRN1.placeHolderList[174]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_cog_ctrl|PALBot1:PALbot_cog_secondary_ctrl_offset1|PALBot1:PALbot_cog_secondary_ctrl|PALBot1:PALbot_hipMain_ctrl|PALBot1:PALbot_L_hip_offset|PALBot1:PALbot_L_hip.translateZ" 
		"PALBotRN1.placeHolderList[175]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_cog_ctrl|PALBot1:PALbot_cog_secondary_ctrl_offset1|PALBot1:PALbot_cog_secondary_ctrl|PALBot1:PALbot_hipMain_ctrl|PALBot1:PALbot_L_hip_offset|PALBot1:PALbot_L_hip.rotateX" 
		"PALBotRN1.placeHolderList[176]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_cog_ctrl|PALBot1:PALbot_cog_secondary_ctrl_offset1|PALBot1:PALbot_cog_secondary_ctrl|PALBot1:PALbot_hipMain_ctrl|PALBot1:PALbot_L_hip_offset|PALBot1:PALbot_L_hip.rotateY" 
		"PALBotRN1.placeHolderList[177]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_cog_ctrl|PALBot1:PALbot_cog_secondary_ctrl_offset1|PALBot1:PALbot_cog_secondary_ctrl|PALBot1:PALbot_hipMain_ctrl|PALBot1:PALbot_L_hip_offset|PALBot1:PALbot_L_hip.rotateZ" 
		"PALBotRN1.placeHolderList[178]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_cog_ctrl|PALBot1:PALbot_cog_secondary_ctrl_offset1|PALBot1:PALbot_cog_secondary_ctrl|PALBot1:PALbot_hipMain_ctrl|PALBot1:PALbot_L_hip_offset|PALBot1:PALbot_L_hip|PALBot1:PALbot_L_leg_IK_FK_switch_offset|PALBot1:PALbot_L_leg_IK_FK_switch.IK_FK" 
		"PALBotRN1.placeHolderList[179]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_L_fingers_grp|PALBot1:PALbot_L_Thumb01_offset|PALBot1:PALbot_L_Thumb01_ctrl.translateX" 
		"PALBotRN1.placeHolderList[180]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_L_fingers_grp|PALBot1:PALbot_L_Thumb01_offset|PALBot1:PALbot_L_Thumb01_ctrl.translateY" 
		"PALBotRN1.placeHolderList[181]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_L_fingers_grp|PALBot1:PALbot_L_Thumb01_offset|PALBot1:PALbot_L_Thumb01_ctrl.translateZ" 
		"PALBotRN1.placeHolderList[182]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_L_fingers_grp|PALBot1:PALbot_L_Thumb01_offset|PALBot1:PALbot_L_Thumb01_ctrl.rotateX" 
		"PALBotRN1.placeHolderList[183]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_L_fingers_grp|PALBot1:PALbot_L_Thumb01_offset|PALBot1:PALbot_L_Thumb01_ctrl.rotateY" 
		"PALBotRN1.placeHolderList[184]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_L_fingers_grp|PALBot1:PALbot_L_Thumb01_offset|PALBot1:PALbot_L_Thumb01_ctrl.rotateZ" 
		"PALBotRN1.placeHolderList[185]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_L_fingers_grp|PALBot1:PALbot_L_Thumb01_offset|PALBot1:PALbot_L_Thumb01_ctrl|PALBot1:PALbot_L_Thumb02_offset|PALBot1:PALbot_L_Thumb02_ctrl.translateX" 
		"PALBotRN1.placeHolderList[186]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_L_fingers_grp|PALBot1:PALbot_L_Thumb01_offset|PALBot1:PALbot_L_Thumb01_ctrl|PALBot1:PALbot_L_Thumb02_offset|PALBot1:PALbot_L_Thumb02_ctrl.translateY" 
		"PALBotRN1.placeHolderList[187]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_L_fingers_grp|PALBot1:PALbot_L_Thumb01_offset|PALBot1:PALbot_L_Thumb01_ctrl|PALBot1:PALbot_L_Thumb02_offset|PALBot1:PALbot_L_Thumb02_ctrl.translateZ" 
		"PALBotRN1.placeHolderList[188]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_L_fingers_grp|PALBot1:PALbot_L_Thumb01_offset|PALBot1:PALbot_L_Thumb01_ctrl|PALBot1:PALbot_L_Thumb02_offset|PALBot1:PALbot_L_Thumb02_ctrl.rotateX" 
		"PALBotRN1.placeHolderList[189]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_L_fingers_grp|PALBot1:PALbot_L_Thumb01_offset|PALBot1:PALbot_L_Thumb01_ctrl|PALBot1:PALbot_L_Thumb02_offset|PALBot1:PALbot_L_Thumb02_ctrl.rotateY" 
		"PALBotRN1.placeHolderList[190]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_L_fingers_grp|PALBot1:PALbot_L_Thumb01_offset|PALBot1:PALbot_L_Thumb01_ctrl|PALBot1:PALbot_L_Thumb02_offset|PALBot1:PALbot_L_Thumb02_ctrl.rotateZ" 
		"PALBotRN1.placeHolderList[191]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_L_fingers_grp|PALBot1:PALbot_L_Thumb01_offset|PALBot1:PALbot_L_Thumb01_ctrl|PALBot1:PALbot_L_Thumb02_offset|PALBot1:PALbot_L_Thumb02_ctrl|PALBot1:PALbot_L_Thumb03_offset|PALBot1:PALbot_L_Thumb03_ctrl.translateX" 
		"PALBotRN1.placeHolderList[192]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_L_fingers_grp|PALBot1:PALbot_L_Thumb01_offset|PALBot1:PALbot_L_Thumb01_ctrl|PALBot1:PALbot_L_Thumb02_offset|PALBot1:PALbot_L_Thumb02_ctrl|PALBot1:PALbot_L_Thumb03_offset|PALBot1:PALbot_L_Thumb03_ctrl.translateY" 
		"PALBotRN1.placeHolderList[193]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_L_fingers_grp|PALBot1:PALbot_L_Thumb01_offset|PALBot1:PALbot_L_Thumb01_ctrl|PALBot1:PALbot_L_Thumb02_offset|PALBot1:PALbot_L_Thumb02_ctrl|PALBot1:PALbot_L_Thumb03_offset|PALBot1:PALbot_L_Thumb03_ctrl.translateZ" 
		"PALBotRN1.placeHolderList[194]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_L_fingers_grp|PALBot1:PALbot_L_Thumb01_offset|PALBot1:PALbot_L_Thumb01_ctrl|PALBot1:PALbot_L_Thumb02_offset|PALBot1:PALbot_L_Thumb02_ctrl|PALBot1:PALbot_L_Thumb03_offset|PALBot1:PALbot_L_Thumb03_ctrl.rotateX" 
		"PALBotRN1.placeHolderList[195]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_L_fingers_grp|PALBot1:PALbot_L_Thumb01_offset|PALBot1:PALbot_L_Thumb01_ctrl|PALBot1:PALbot_L_Thumb02_offset|PALBot1:PALbot_L_Thumb02_ctrl|PALBot1:PALbot_L_Thumb03_offset|PALBot1:PALbot_L_Thumb03_ctrl.rotateY" 
		"PALBotRN1.placeHolderList[196]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_L_fingers_grp|PALBot1:PALbot_L_Thumb01_offset|PALBot1:PALbot_L_Thumb01_ctrl|PALBot1:PALbot_L_Thumb02_offset|PALBot1:PALbot_L_Thumb02_ctrl|PALBot1:PALbot_L_Thumb03_offset|PALBot1:PALbot_L_Thumb03_ctrl.rotateZ" 
		"PALBotRN1.placeHolderList[197]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_L_fingers_grp|PALBot1:PALbot_L_Index01_offset|PALBot1:PALbot_L_Index01_ctrl.translateX" 
		"PALBotRN1.placeHolderList[198]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_L_fingers_grp|PALBot1:PALbot_L_Index01_offset|PALBot1:PALbot_L_Index01_ctrl.translateY" 
		"PALBotRN1.placeHolderList[199]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_L_fingers_grp|PALBot1:PALbot_L_Index01_offset|PALBot1:PALbot_L_Index01_ctrl.translateZ" 
		"PALBotRN1.placeHolderList[200]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_L_fingers_grp|PALBot1:PALbot_L_Index01_offset|PALBot1:PALbot_L_Index01_ctrl.rotateX" 
		"PALBotRN1.placeHolderList[201]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_L_fingers_grp|PALBot1:PALbot_L_Index01_offset|PALBot1:PALbot_L_Index01_ctrl.rotateY" 
		"PALBotRN1.placeHolderList[202]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_L_fingers_grp|PALBot1:PALbot_L_Index01_offset|PALBot1:PALbot_L_Index01_ctrl.rotateZ" 
		"PALBotRN1.placeHolderList[203]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_L_fingers_grp|PALBot1:PALbot_L_Index01_offset|PALBot1:PALbot_L_Index01_ctrl|PALBot1:PALbot_L_Index02_offset|PALBot1:PALbot_L_Index02_ctrl.translateX" 
		"PALBotRN1.placeHolderList[204]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_L_fingers_grp|PALBot1:PALbot_L_Index01_offset|PALBot1:PALbot_L_Index01_ctrl|PALBot1:PALbot_L_Index02_offset|PALBot1:PALbot_L_Index02_ctrl.translateY" 
		"PALBotRN1.placeHolderList[205]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_L_fingers_grp|PALBot1:PALbot_L_Index01_offset|PALBot1:PALbot_L_Index01_ctrl|PALBot1:PALbot_L_Index02_offset|PALBot1:PALbot_L_Index02_ctrl.translateZ" 
		"PALBotRN1.placeHolderList[206]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_L_fingers_grp|PALBot1:PALbot_L_Index01_offset|PALBot1:PALbot_L_Index01_ctrl|PALBot1:PALbot_L_Index02_offset|PALBot1:PALbot_L_Index02_ctrl.rotateX" 
		"PALBotRN1.placeHolderList[207]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_L_fingers_grp|PALBot1:PALbot_L_Index01_offset|PALBot1:PALbot_L_Index01_ctrl|PALBot1:PALbot_L_Index02_offset|PALBot1:PALbot_L_Index02_ctrl.rotateY" 
		"PALBotRN1.placeHolderList[208]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_L_fingers_grp|PALBot1:PALbot_L_Index01_offset|PALBot1:PALbot_L_Index01_ctrl|PALBot1:PALbot_L_Index02_offset|PALBot1:PALbot_L_Index02_ctrl.rotateZ" 
		"PALBotRN1.placeHolderList[209]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_L_fingers_grp|PALBot1:PALbot_L_Middle01_offset|PALBot1:PALbot_L_Middle01_ctrl.translateX" 
		"PALBotRN1.placeHolderList[210]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_L_fingers_grp|PALBot1:PALbot_L_Middle01_offset|PALBot1:PALbot_L_Middle01_ctrl.translateY" 
		"PALBotRN1.placeHolderList[211]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_L_fingers_grp|PALBot1:PALbot_L_Middle01_offset|PALBot1:PALbot_L_Middle01_ctrl.translateZ" 
		"PALBotRN1.placeHolderList[212]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_L_fingers_grp|PALBot1:PALbot_L_Middle01_offset|PALBot1:PALbot_L_Middle01_ctrl.rotateX" 
		"PALBotRN1.placeHolderList[213]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_L_fingers_grp|PALBot1:PALbot_L_Middle01_offset|PALBot1:PALbot_L_Middle01_ctrl.rotateY" 
		"PALBotRN1.placeHolderList[214]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_L_fingers_grp|PALBot1:PALbot_L_Middle01_offset|PALBot1:PALbot_L_Middle01_ctrl.rotateZ" 
		"PALBotRN1.placeHolderList[215]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_L_fingers_grp|PALBot1:PALbot_L_Middle01_offset|PALBot1:PALbot_L_Middle01_ctrl|PALBot1:PALbot_L_Middle02_offset|PALBot1:PALbot_L_Middle02_ctrl.translateX" 
		"PALBotRN1.placeHolderList[216]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_L_fingers_grp|PALBot1:PALbot_L_Middle01_offset|PALBot1:PALbot_L_Middle01_ctrl|PALBot1:PALbot_L_Middle02_offset|PALBot1:PALbot_L_Middle02_ctrl.translateY" 
		"PALBotRN1.placeHolderList[217]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_L_fingers_grp|PALBot1:PALbot_L_Middle01_offset|PALBot1:PALbot_L_Middle01_ctrl|PALBot1:PALbot_L_Middle02_offset|PALBot1:PALbot_L_Middle02_ctrl.translateZ" 
		"PALBotRN1.placeHolderList[218]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_L_fingers_grp|PALBot1:PALbot_L_Middle01_offset|PALBot1:PALbot_L_Middle01_ctrl|PALBot1:PALbot_L_Middle02_offset|PALBot1:PALbot_L_Middle02_ctrl.rotateX" 
		"PALBotRN1.placeHolderList[219]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_L_fingers_grp|PALBot1:PALbot_L_Middle01_offset|PALBot1:PALbot_L_Middle01_ctrl|PALBot1:PALbot_L_Middle02_offset|PALBot1:PALbot_L_Middle02_ctrl.rotateY" 
		"PALBotRN1.placeHolderList[220]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_L_fingers_grp|PALBot1:PALbot_L_Middle01_offset|PALBot1:PALbot_L_Middle01_ctrl|PALBot1:PALbot_L_Middle02_offset|PALBot1:PALbot_L_Middle02_ctrl.rotateZ" 
		"PALBotRN1.placeHolderList[221]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_L_fingers_grp|PALBot1:PALbot_L_Ring01_offset|PALBot1:PALbot_L_Ring01_ctrl.translateX" 
		"PALBotRN1.placeHolderList[222]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_L_fingers_grp|PALBot1:PALbot_L_Ring01_offset|PALBot1:PALbot_L_Ring01_ctrl.translateY" 
		"PALBotRN1.placeHolderList[223]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_L_fingers_grp|PALBot1:PALbot_L_Ring01_offset|PALBot1:PALbot_L_Ring01_ctrl.translateZ" 
		"PALBotRN1.placeHolderList[224]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_L_fingers_grp|PALBot1:PALbot_L_Ring01_offset|PALBot1:PALbot_L_Ring01_ctrl.rotateX" 
		"PALBotRN1.placeHolderList[225]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_L_fingers_grp|PALBot1:PALbot_L_Ring01_offset|PALBot1:PALbot_L_Ring01_ctrl.rotateY" 
		"PALBotRN1.placeHolderList[226]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_L_fingers_grp|PALBot1:PALbot_L_Ring01_offset|PALBot1:PALbot_L_Ring01_ctrl.rotateZ" 
		"PALBotRN1.placeHolderList[227]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_L_fingers_grp|PALBot1:PALbot_L_Ring01_offset|PALBot1:PALbot_L_Ring01_ctrl|PALBot1:PALbot_L_Ring02_offset|PALBot1:PALbot_L_Ring02_ctrl.translateX" 
		"PALBotRN1.placeHolderList[228]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_L_fingers_grp|PALBot1:PALbot_L_Ring01_offset|PALBot1:PALbot_L_Ring01_ctrl|PALBot1:PALbot_L_Ring02_offset|PALBot1:PALbot_L_Ring02_ctrl.translateY" 
		"PALBotRN1.placeHolderList[229]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_L_fingers_grp|PALBot1:PALbot_L_Ring01_offset|PALBot1:PALbot_L_Ring01_ctrl|PALBot1:PALbot_L_Ring02_offset|PALBot1:PALbot_L_Ring02_ctrl.translateZ" 
		"PALBotRN1.placeHolderList[230]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_L_fingers_grp|PALBot1:PALbot_L_Ring01_offset|PALBot1:PALbot_L_Ring01_ctrl|PALBot1:PALbot_L_Ring02_offset|PALBot1:PALbot_L_Ring02_ctrl.rotateX" 
		"PALBotRN1.placeHolderList[231]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_L_fingers_grp|PALBot1:PALbot_L_Ring01_offset|PALBot1:PALbot_L_Ring01_ctrl|PALBot1:PALbot_L_Ring02_offset|PALBot1:PALbot_L_Ring02_ctrl.rotateY" 
		"PALBotRN1.placeHolderList[232]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_L_fingers_grp|PALBot1:PALbot_L_Ring01_offset|PALBot1:PALbot_L_Ring01_ctrl|PALBot1:PALbot_L_Ring02_offset|PALBot1:PALbot_L_Ring02_ctrl.rotateZ" 
		"PALBotRN1.placeHolderList[233]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_L_fingers_grp|PALBot1:PALbot_L_Pinky01_offset|PALBot1:PALbot_L_Pinky01_ctrl.translateX" 
		"PALBotRN1.placeHolderList[234]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_L_fingers_grp|PALBot1:PALbot_L_Pinky01_offset|PALBot1:PALbot_L_Pinky01_ctrl.translateY" 
		"PALBotRN1.placeHolderList[235]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_L_fingers_grp|PALBot1:PALbot_L_Pinky01_offset|PALBot1:PALbot_L_Pinky01_ctrl.translateZ" 
		"PALBotRN1.placeHolderList[236]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_L_fingers_grp|PALBot1:PALbot_L_Pinky01_offset|PALBot1:PALbot_L_Pinky01_ctrl.rotateX" 
		"PALBotRN1.placeHolderList[237]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_L_fingers_grp|PALBot1:PALbot_L_Pinky01_offset|PALBot1:PALbot_L_Pinky01_ctrl.rotateY" 
		"PALBotRN1.placeHolderList[238]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_L_fingers_grp|PALBot1:PALbot_L_Pinky01_offset|PALBot1:PALbot_L_Pinky01_ctrl.rotateZ" 
		"PALBotRN1.placeHolderList[239]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_L_fingers_grp|PALBot1:PALbot_L_Pinky01_offset|PALBot1:PALbot_L_Pinky01_ctrl|PALBot1:PALbot_L_Pinky02_offset|PALBot1:PALbot_L_Pinky02_ctrl.translateX" 
		"PALBotRN1.placeHolderList[240]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_L_fingers_grp|PALBot1:PALbot_L_Pinky01_offset|PALBot1:PALbot_L_Pinky01_ctrl|PALBot1:PALbot_L_Pinky02_offset|PALBot1:PALbot_L_Pinky02_ctrl.translateY" 
		"PALBotRN1.placeHolderList[241]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_L_fingers_grp|PALBot1:PALbot_L_Pinky01_offset|PALBot1:PALbot_L_Pinky01_ctrl|PALBot1:PALbot_L_Pinky02_offset|PALBot1:PALbot_L_Pinky02_ctrl.translateZ" 
		"PALBotRN1.placeHolderList[242]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_L_fingers_grp|PALBot1:PALbot_L_Pinky01_offset|PALBot1:PALbot_L_Pinky01_ctrl|PALBot1:PALbot_L_Pinky02_offset|PALBot1:PALbot_L_Pinky02_ctrl.rotateX" 
		"PALBotRN1.placeHolderList[243]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_L_fingers_grp|PALBot1:PALbot_L_Pinky01_offset|PALBot1:PALbot_L_Pinky01_ctrl|PALBot1:PALbot_L_Pinky02_offset|PALBot1:PALbot_L_Pinky02_ctrl.rotateY" 
		"PALBotRN1.placeHolderList[244]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_L_fingers_grp|PALBot1:PALbot_L_Pinky01_offset|PALBot1:PALbot_L_Pinky01_ctrl|PALBot1:PALbot_L_Pinky02_offset|PALBot1:PALbot_L_Pinky02_ctrl.rotateZ" 
		"PALBotRN1.placeHolderList[245]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_R_fingers_grp|PALBot1:PALbot_R_Thumb01_offset|PALBot1:PALbot_R_Thumb01_ctrl.translateX" 
		"PALBotRN1.placeHolderList[246]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_R_fingers_grp|PALBot1:PALbot_R_Thumb01_offset|PALBot1:PALbot_R_Thumb01_ctrl.translateY" 
		"PALBotRN1.placeHolderList[247]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_R_fingers_grp|PALBot1:PALbot_R_Thumb01_offset|PALBot1:PALbot_R_Thumb01_ctrl.translateZ" 
		"PALBotRN1.placeHolderList[248]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_R_fingers_grp|PALBot1:PALbot_R_Thumb01_offset|PALBot1:PALbot_R_Thumb01_ctrl.rotateX" 
		"PALBotRN1.placeHolderList[249]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_R_fingers_grp|PALBot1:PALbot_R_Thumb01_offset|PALBot1:PALbot_R_Thumb01_ctrl.rotateY" 
		"PALBotRN1.placeHolderList[250]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_R_fingers_grp|PALBot1:PALbot_R_Thumb01_offset|PALBot1:PALbot_R_Thumb01_ctrl.rotateZ" 
		"PALBotRN1.placeHolderList[251]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_R_fingers_grp|PALBot1:PALbot_R_Thumb01_offset|PALBot1:PALbot_R_Thumb01_ctrl|PALBot1:PALbot_R_Thumb02_offset|PALBot1:PALbot_R_Thumb02_ctrl.translateX" 
		"PALBotRN1.placeHolderList[252]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_R_fingers_grp|PALBot1:PALbot_R_Thumb01_offset|PALBot1:PALbot_R_Thumb01_ctrl|PALBot1:PALbot_R_Thumb02_offset|PALBot1:PALbot_R_Thumb02_ctrl.translateY" 
		"PALBotRN1.placeHolderList[253]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_R_fingers_grp|PALBot1:PALbot_R_Thumb01_offset|PALBot1:PALbot_R_Thumb01_ctrl|PALBot1:PALbot_R_Thumb02_offset|PALBot1:PALbot_R_Thumb02_ctrl.translateZ" 
		"PALBotRN1.placeHolderList[254]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_R_fingers_grp|PALBot1:PALbot_R_Thumb01_offset|PALBot1:PALbot_R_Thumb01_ctrl|PALBot1:PALbot_R_Thumb02_offset|PALBot1:PALbot_R_Thumb02_ctrl.rotateX" 
		"PALBotRN1.placeHolderList[255]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_R_fingers_grp|PALBot1:PALbot_R_Thumb01_offset|PALBot1:PALbot_R_Thumb01_ctrl|PALBot1:PALbot_R_Thumb02_offset|PALBot1:PALbot_R_Thumb02_ctrl.rotateY" 
		"PALBotRN1.placeHolderList[256]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_R_fingers_grp|PALBot1:PALbot_R_Thumb01_offset|PALBot1:PALbot_R_Thumb01_ctrl|PALBot1:PALbot_R_Thumb02_offset|PALBot1:PALbot_R_Thumb02_ctrl.rotateZ" 
		"PALBotRN1.placeHolderList[257]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_R_fingers_grp|PALBot1:PALbot_R_Thumb01_offset|PALBot1:PALbot_R_Thumb01_ctrl|PALBot1:PALbot_R_Thumb02_offset|PALBot1:PALbot_R_Thumb02_ctrl|PALBot1:PALbot_R_Thumb03_offset|PALBot1:PALbot_R_Thumb03_ctrl.translateX" 
		"PALBotRN1.placeHolderList[258]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_R_fingers_grp|PALBot1:PALbot_R_Thumb01_offset|PALBot1:PALbot_R_Thumb01_ctrl|PALBot1:PALbot_R_Thumb02_offset|PALBot1:PALbot_R_Thumb02_ctrl|PALBot1:PALbot_R_Thumb03_offset|PALBot1:PALbot_R_Thumb03_ctrl.translateY" 
		"PALBotRN1.placeHolderList[259]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_R_fingers_grp|PALBot1:PALbot_R_Thumb01_offset|PALBot1:PALbot_R_Thumb01_ctrl|PALBot1:PALbot_R_Thumb02_offset|PALBot1:PALbot_R_Thumb02_ctrl|PALBot1:PALbot_R_Thumb03_offset|PALBot1:PALbot_R_Thumb03_ctrl.translateZ" 
		"PALBotRN1.placeHolderList[260]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_R_fingers_grp|PALBot1:PALbot_R_Thumb01_offset|PALBot1:PALbot_R_Thumb01_ctrl|PALBot1:PALbot_R_Thumb02_offset|PALBot1:PALbot_R_Thumb02_ctrl|PALBot1:PALbot_R_Thumb03_offset|PALBot1:PALbot_R_Thumb03_ctrl.rotateX" 
		"PALBotRN1.placeHolderList[261]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_R_fingers_grp|PALBot1:PALbot_R_Thumb01_offset|PALBot1:PALbot_R_Thumb01_ctrl|PALBot1:PALbot_R_Thumb02_offset|PALBot1:PALbot_R_Thumb02_ctrl|PALBot1:PALbot_R_Thumb03_offset|PALBot1:PALbot_R_Thumb03_ctrl.rotateY" 
		"PALBotRN1.placeHolderList[262]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_R_fingers_grp|PALBot1:PALbot_R_Thumb01_offset|PALBot1:PALbot_R_Thumb01_ctrl|PALBot1:PALbot_R_Thumb02_offset|PALBot1:PALbot_R_Thumb02_ctrl|PALBot1:PALbot_R_Thumb03_offset|PALBot1:PALbot_R_Thumb03_ctrl.rotateZ" 
		"PALBotRN1.placeHolderList[263]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_R_fingers_grp|PALBot1:PALbot_R_Index01_offset|PALBot1:PALbot_R_Index01_ctrl.translateX" 
		"PALBotRN1.placeHolderList[264]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_R_fingers_grp|PALBot1:PALbot_R_Index01_offset|PALBot1:PALbot_R_Index01_ctrl.translateY" 
		"PALBotRN1.placeHolderList[265]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_R_fingers_grp|PALBot1:PALbot_R_Index01_offset|PALBot1:PALbot_R_Index01_ctrl.translateZ" 
		"PALBotRN1.placeHolderList[266]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_R_fingers_grp|PALBot1:PALbot_R_Index01_offset|PALBot1:PALbot_R_Index01_ctrl.rotateX" 
		"PALBotRN1.placeHolderList[267]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_R_fingers_grp|PALBot1:PALbot_R_Index01_offset|PALBot1:PALbot_R_Index01_ctrl.rotateY" 
		"PALBotRN1.placeHolderList[268]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_R_fingers_grp|PALBot1:PALbot_R_Index01_offset|PALBot1:PALbot_R_Index01_ctrl.rotateZ" 
		"PALBotRN1.placeHolderList[269]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_R_fingers_grp|PALBot1:PALbot_R_Index01_offset|PALBot1:PALbot_R_Index01_ctrl|PALBot1:PALbot_R_Index02_offset|PALBot1:PALbot_R_Index02_ctrl.translateX" 
		"PALBotRN1.placeHolderList[270]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_R_fingers_grp|PALBot1:PALbot_R_Index01_offset|PALBot1:PALbot_R_Index01_ctrl|PALBot1:PALbot_R_Index02_offset|PALBot1:PALbot_R_Index02_ctrl.translateY" 
		"PALBotRN1.placeHolderList[271]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_R_fingers_grp|PALBot1:PALbot_R_Index01_offset|PALBot1:PALbot_R_Index01_ctrl|PALBot1:PALbot_R_Index02_offset|PALBot1:PALbot_R_Index02_ctrl.translateZ" 
		"PALBotRN1.placeHolderList[272]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_R_fingers_grp|PALBot1:PALbot_R_Index01_offset|PALBot1:PALbot_R_Index01_ctrl|PALBot1:PALbot_R_Index02_offset|PALBot1:PALbot_R_Index02_ctrl.rotateX" 
		"PALBotRN1.placeHolderList[273]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_R_fingers_grp|PALBot1:PALbot_R_Index01_offset|PALBot1:PALbot_R_Index01_ctrl|PALBot1:PALbot_R_Index02_offset|PALBot1:PALbot_R_Index02_ctrl.rotateY" 
		"PALBotRN1.placeHolderList[274]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_R_fingers_grp|PALBot1:PALbot_R_Index01_offset|PALBot1:PALbot_R_Index01_ctrl|PALBot1:PALbot_R_Index02_offset|PALBot1:PALbot_R_Index02_ctrl.rotateZ" 
		"PALBotRN1.placeHolderList[275]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_R_fingers_grp|PALBot1:PALbot_R_Middle01_offset|PALBot1:PALbot_R_Middle01_ctrl.translateX" 
		"PALBotRN1.placeHolderList[276]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_R_fingers_grp|PALBot1:PALbot_R_Middle01_offset|PALBot1:PALbot_R_Middle01_ctrl.translateY" 
		"PALBotRN1.placeHolderList[277]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_R_fingers_grp|PALBot1:PALbot_R_Middle01_offset|PALBot1:PALbot_R_Middle01_ctrl.translateZ" 
		"PALBotRN1.placeHolderList[278]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_R_fingers_grp|PALBot1:PALbot_R_Middle01_offset|PALBot1:PALbot_R_Middle01_ctrl.rotateX" 
		"PALBotRN1.placeHolderList[279]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_R_fingers_grp|PALBot1:PALbot_R_Middle01_offset|PALBot1:PALbot_R_Middle01_ctrl.rotateY" 
		"PALBotRN1.placeHolderList[280]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_R_fingers_grp|PALBot1:PALbot_R_Middle01_offset|PALBot1:PALbot_R_Middle01_ctrl.rotateZ" 
		"PALBotRN1.placeHolderList[281]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_R_fingers_grp|PALBot1:PALbot_R_Middle01_offset|PALBot1:PALbot_R_Middle01_ctrl|PALBot1:PALbot_R_Middle02_offset|PALBot1:PALbot_R_Middle02_ctrl.translateX" 
		"PALBotRN1.placeHolderList[282]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_R_fingers_grp|PALBot1:PALbot_R_Middle01_offset|PALBot1:PALbot_R_Middle01_ctrl|PALBot1:PALbot_R_Middle02_offset|PALBot1:PALbot_R_Middle02_ctrl.translateY" 
		"PALBotRN1.placeHolderList[283]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_R_fingers_grp|PALBot1:PALbot_R_Middle01_offset|PALBot1:PALbot_R_Middle01_ctrl|PALBot1:PALbot_R_Middle02_offset|PALBot1:PALbot_R_Middle02_ctrl.translateZ" 
		"PALBotRN1.placeHolderList[284]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_R_fingers_grp|PALBot1:PALbot_R_Middle01_offset|PALBot1:PALbot_R_Middle01_ctrl|PALBot1:PALbot_R_Middle02_offset|PALBot1:PALbot_R_Middle02_ctrl.rotateX" 
		"PALBotRN1.placeHolderList[285]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_R_fingers_grp|PALBot1:PALbot_R_Middle01_offset|PALBot1:PALbot_R_Middle01_ctrl|PALBot1:PALbot_R_Middle02_offset|PALBot1:PALbot_R_Middle02_ctrl.rotateY" 
		"PALBotRN1.placeHolderList[286]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_R_fingers_grp|PALBot1:PALbot_R_Middle01_offset|PALBot1:PALbot_R_Middle01_ctrl|PALBot1:PALbot_R_Middle02_offset|PALBot1:PALbot_R_Middle02_ctrl.rotateZ" 
		"PALBotRN1.placeHolderList[287]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_R_fingers_grp|PALBot1:PALbot_R_Ring01_offset|PALBot1:PALbot_R_Ring01_ctrl.translateX" 
		"PALBotRN1.placeHolderList[288]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_R_fingers_grp|PALBot1:PALbot_R_Ring01_offset|PALBot1:PALbot_R_Ring01_ctrl.translateY" 
		"PALBotRN1.placeHolderList[289]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_R_fingers_grp|PALBot1:PALbot_R_Ring01_offset|PALBot1:PALbot_R_Ring01_ctrl.translateZ" 
		"PALBotRN1.placeHolderList[290]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_R_fingers_grp|PALBot1:PALbot_R_Ring01_offset|PALBot1:PALbot_R_Ring01_ctrl.rotateX" 
		"PALBotRN1.placeHolderList[291]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_R_fingers_grp|PALBot1:PALbot_R_Ring01_offset|PALBot1:PALbot_R_Ring01_ctrl.rotateY" 
		"PALBotRN1.placeHolderList[292]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_R_fingers_grp|PALBot1:PALbot_R_Ring01_offset|PALBot1:PALbot_R_Ring01_ctrl.rotateZ" 
		"PALBotRN1.placeHolderList[293]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_R_fingers_grp|PALBot1:PALbot_R_Ring01_offset|PALBot1:PALbot_R_Ring01_ctrl|PALBot1:PALbot_R_Ring02_offset|PALBot1:PALbot_R_Ring02_ctrl.translateX" 
		"PALBotRN1.placeHolderList[294]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_R_fingers_grp|PALBot1:PALbot_R_Ring01_offset|PALBot1:PALbot_R_Ring01_ctrl|PALBot1:PALbot_R_Ring02_offset|PALBot1:PALbot_R_Ring02_ctrl.translateY" 
		"PALBotRN1.placeHolderList[295]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_R_fingers_grp|PALBot1:PALbot_R_Ring01_offset|PALBot1:PALbot_R_Ring01_ctrl|PALBot1:PALbot_R_Ring02_offset|PALBot1:PALbot_R_Ring02_ctrl.translateZ" 
		"PALBotRN1.placeHolderList[296]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_R_fingers_grp|PALBot1:PALbot_R_Ring01_offset|PALBot1:PALbot_R_Ring01_ctrl|PALBot1:PALbot_R_Ring02_offset|PALBot1:PALbot_R_Ring02_ctrl.rotateX" 
		"PALBotRN1.placeHolderList[297]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_R_fingers_grp|PALBot1:PALbot_R_Ring01_offset|PALBot1:PALbot_R_Ring01_ctrl|PALBot1:PALbot_R_Ring02_offset|PALBot1:PALbot_R_Ring02_ctrl.rotateY" 
		"PALBotRN1.placeHolderList[298]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_R_fingers_grp|PALBot1:PALbot_R_Ring01_offset|PALBot1:PALbot_R_Ring01_ctrl|PALBot1:PALbot_R_Ring02_offset|PALBot1:PALbot_R_Ring02_ctrl.rotateZ" 
		"PALBotRN1.placeHolderList[299]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_R_fingers_grp|PALBot1:PALbot_R_Pinky01_offset|PALBot1:PALbot_R_Pinky01_ctrl.translateX" 
		"PALBotRN1.placeHolderList[300]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_R_fingers_grp|PALBot1:PALbot_R_Pinky01_offset|PALBot1:PALbot_R_Pinky01_ctrl.translateY" 
		"PALBotRN1.placeHolderList[301]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_R_fingers_grp|PALBot1:PALbot_R_Pinky01_offset|PALBot1:PALbot_R_Pinky01_ctrl.translateZ" 
		"PALBotRN1.placeHolderList[302]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_R_fingers_grp|PALBot1:PALbot_R_Pinky01_offset|PALBot1:PALbot_R_Pinky01_ctrl.rotateX" 
		"PALBotRN1.placeHolderList[303]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_R_fingers_grp|PALBot1:PALbot_R_Pinky01_offset|PALBot1:PALbot_R_Pinky01_ctrl.rotateY" 
		"PALBotRN1.placeHolderList[304]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_R_fingers_grp|PALBot1:PALbot_R_Pinky01_offset|PALBot1:PALbot_R_Pinky01_ctrl.rotateZ" 
		"PALBotRN1.placeHolderList[305]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_R_fingers_grp|PALBot1:PALbot_R_Pinky01_offset|PALBot1:PALbot_R_Pinky01_ctrl|PALBot1:PALbot_R_Pinky02_offset|PALBot1:PALbot_R_Pinky02_ctrl.translateX" 
		"PALBotRN1.placeHolderList[306]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_R_fingers_grp|PALBot1:PALbot_R_Pinky01_offset|PALBot1:PALbot_R_Pinky01_ctrl|PALBot1:PALbot_R_Pinky02_offset|PALBot1:PALbot_R_Pinky02_ctrl.translateY" 
		"PALBotRN1.placeHolderList[307]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_R_fingers_grp|PALBot1:PALbot_R_Pinky01_offset|PALBot1:PALbot_R_Pinky01_ctrl|PALBot1:PALbot_R_Pinky02_offset|PALBot1:PALbot_R_Pinky02_ctrl.translateZ" 
		"PALBotRN1.placeHolderList[308]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_R_fingers_grp|PALBot1:PALbot_R_Pinky01_offset|PALBot1:PALbot_R_Pinky01_ctrl|PALBot1:PALbot_R_Pinky02_offset|PALBot1:PALbot_R_Pinky02_ctrl.rotateX" 
		"PALBotRN1.placeHolderList[309]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_R_fingers_grp|PALBot1:PALbot_R_Pinky01_offset|PALBot1:PALbot_R_Pinky01_ctrl|PALBot1:PALbot_R_Pinky02_offset|PALBot1:PALbot_R_Pinky02_ctrl.rotateY" 
		"PALBotRN1.placeHolderList[310]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_cog_ctrl_offset|PALBot1:PALbot_R_fingers_grp|PALBot1:PALbot_R_Pinky01_offset|PALBot1:PALbot_R_Pinky01_ctrl|PALBot1:PALbot_R_Pinky02_offset|PALBot1:PALbot_R_Pinky02_ctrl.rotateZ" 
		"PALBotRN1.placeHolderList[311]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_R_knee_aim_offset|PALBot1:PALbot_R_knee_aim_ctrl.space_switch" 
		"PALBotRN1.placeHolderList[312]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_R_knee_aim_offset|PALBot1:PALbot_R_knee_aim_ctrl.translateX" 
		"PALBotRN1.placeHolderList[313]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_R_knee_aim_offset|PALBot1:PALbot_R_knee_aim_ctrl.translateZ" 
		"PALBotRN1.placeHolderList[314]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_R_knee_aim_offset|PALBot1:PALbot_R_knee_aim_ctrl.translateY" 
		"PALBotRN1.placeHolderList[315]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_R_knee_aim_offset|PALBot1:PALbot_R_knee_aim_ctrl.rotateX" 
		"PALBotRN1.placeHolderList[316]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_R_knee_aim_offset|PALBot1:PALbot_R_knee_aim_ctrl.rotateY" 
		"PALBotRN1.placeHolderList[317]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_R_knee_aim_offset|PALBot1:PALbot_R_knee_aim_ctrl.rotateZ" 
		"PALBotRN1.placeHolderList[318]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_R_foot_secondary_offset|PALBot1:PALbot_R_foot_secondary.rotateX" 
		"PALBotRN1.placeHolderList[319]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_R_foot_secondary_offset|PALBot1:PALbot_R_foot_secondary.rotateY" 
		"PALBotRN1.placeHolderList[320]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_R_foot_secondary_offset|PALBot1:PALbot_R_foot_secondary.rotateZ" 
		"PALBotRN1.placeHolderList[321]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_R_foot_secondary_offset|PALBot1:PALbot_R_foot_secondary.translateX" 
		"PALBotRN1.placeHolderList[322]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_R_foot_secondary_offset|PALBot1:PALbot_R_foot_secondary.translateY" 
		"PALBotRN1.placeHolderList[323]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_R_foot_secondary_offset|PALBot1:PALbot_R_foot_secondary.translateZ" 
		"PALBotRN1.placeHolderList[324]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_R_foot_secondary_offset|PALBot1:PALbot_R_foot_secondary|PALBot1:PALbot_R_footSec_reshape01_offset|PALBot1:PALbot_R_footSec_reshape01.translateX" 
		"PALBotRN1.placeHolderList[325]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_R_foot_secondary_offset|PALBot1:PALbot_R_foot_secondary|PALBot1:PALbot_R_footSec_reshape01_offset|PALBot1:PALbot_R_footSec_reshape01.translateY" 
		"PALBotRN1.placeHolderList[326]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_R_foot_secondary_offset|PALBot1:PALbot_R_foot_secondary|PALBot1:PALbot_R_footSec_reshape01_offset|PALBot1:PALbot_R_footSec_reshape01.translateZ" 
		"PALBotRN1.placeHolderList[327]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_R_foot_secondary_offset|PALBot1:PALbot_R_foot_secondary|PALBot1:PALbot_R_footSec_reshape01_offset|PALBot1:PALbot_R_footSec_reshape01.rotateX" 
		"PALBotRN1.placeHolderList[328]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_R_foot_secondary_offset|PALBot1:PALbot_R_foot_secondary|PALBot1:PALbot_R_footSec_reshape01_offset|PALBot1:PALbot_R_footSec_reshape01.rotateY" 
		"PALBotRN1.placeHolderList[329]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_R_foot_secondary_offset|PALBot1:PALbot_R_foot_secondary|PALBot1:PALbot_R_footSec_reshape01_offset|PALBot1:PALbot_R_footSec_reshape01.rotateZ" 
		"PALBotRN1.placeHolderList[330]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_R_foot_secondary_offset|PALBot1:PALbot_R_foot_secondary|PALBot1:PALbot_R_footSec_reshape02_offset|PALBot1:PALbot_R_footSec_reshape02.translateX" 
		"PALBotRN1.placeHolderList[331]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_R_foot_secondary_offset|PALBot1:PALbot_R_foot_secondary|PALBot1:PALbot_R_footSec_reshape02_offset|PALBot1:PALbot_R_footSec_reshape02.translateY" 
		"PALBotRN1.placeHolderList[332]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_R_foot_secondary_offset|PALBot1:PALbot_R_foot_secondary|PALBot1:PALbot_R_footSec_reshape02_offset|PALBot1:PALbot_R_footSec_reshape02.translateZ" 
		"PALBotRN1.placeHolderList[333]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_R_foot_secondary_offset|PALBot1:PALbot_R_foot_secondary|PALBot1:PALbot_R_footSec_reshape02_offset|PALBot1:PALbot_R_footSec_reshape02.rotateX" 
		"PALBotRN1.placeHolderList[334]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_R_foot_secondary_offset|PALBot1:PALbot_R_foot_secondary|PALBot1:PALbot_R_footSec_reshape02_offset|PALBot1:PALbot_R_footSec_reshape02.rotateY" 
		"PALBotRN1.placeHolderList[335]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_R_foot_secondary_offset|PALBot1:PALbot_R_foot_secondary|PALBot1:PALbot_R_footSec_reshape02_offset|PALBot1:PALbot_R_footSec_reshape02.rotateZ" 
		"PALBotRN1.placeHolderList[336]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_R_Engine_ctrl_offset1|PALBot1:PALbot_R_Engine_ctrl.on_off" 
		"PALBotRN1.placeHolderList[337]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_R_Engine_ctrl_offset1|PALBot1:PALbot_R_Engine_ctrl.translateX" 
		"PALBotRN1.placeHolderList[338]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_R_Engine_ctrl_offset1|PALBot1:PALbot_R_Engine_ctrl.translateY" 
		"PALBotRN1.placeHolderList[339]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_R_Engine_ctrl_offset1|PALBot1:PALbot_R_Engine_ctrl.translateZ" 
		"PALBotRN1.placeHolderList[340]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_R_Engine_ctrl_offset1|PALBot1:PALbot_R_Engine_ctrl.rotateX" 
		"PALBotRN1.placeHolderList[341]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_R_Engine_ctrl_offset1|PALBot1:PALbot_R_Engine_ctrl.rotateY" 
		"PALBotRN1.placeHolderList[342]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_R_Engine_ctrl_offset1|PALBot1:PALbot_R_Engine_ctrl.rotateZ" 
		"PALBotRN1.placeHolderList[343]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_R_Engine_ctrl_offset1|PALBot1:PALbot_R_Engine_ctrl.scaleX" 
		"PALBotRN1.placeHolderList[344]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_R_Engine_ctrl_offset1|PALBot1:PALbot_R_Engine_ctrl.scaleY" 
		"PALBotRN1.placeHolderList[345]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_R_Engine_ctrl_offset1|PALBot1:PALbot_R_Engine_ctrl.scaleZ" 
		"PALBotRN1.placeHolderList[346]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_R_IK_Foot_offset|PALBot1:PALbot_R_IK_Foot_ctrl.Heel_Peel" 
		"PALBotRN1.placeHolderList[347]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_R_IK_Foot_offset|PALBot1:PALbot_R_IK_Foot_ctrl.follow_hip" 
		"PALBotRN1.placeHolderList[348]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_R_IK_Foot_offset|PALBot1:PALbot_R_IK_Foot_ctrl.translateX" 
		"PALBotRN1.placeHolderList[349]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_R_IK_Foot_offset|PALBot1:PALbot_R_IK_Foot_ctrl.translateZ" 
		"PALBotRN1.placeHolderList[350]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_R_IK_Foot_offset|PALBot1:PALbot_R_IK_Foot_ctrl.translateY" 
		"PALBotRN1.placeHolderList[351]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_R_IK_Foot_offset|PALBot1:PALbot_R_IK_Foot_ctrl.rotateX" 
		"PALBotRN1.placeHolderList[352]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_R_IK_Foot_offset|PALBot1:PALbot_R_IK_Foot_ctrl.rotateY" 
		"PALBotRN1.placeHolderList[353]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_R_IK_Foot_offset|PALBot1:PALbot_R_IK_Foot_ctrl.rotateZ" 
		"PALBotRN1.placeHolderList[354]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_R_IK_Foot_offset|PALBot1:PALbot_R_IK_Foot_ctrl|PALBot1:PALbot_R_IK_heel_lift_offset|PALBot1:PALbot_R_IK_heel_lift_tip.rotateX" 
		"PALBotRN1.placeHolderList[355]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_R_IK_Foot_offset|PALBot1:PALbot_R_IK_Foot_ctrl|PALBot1:PALbot_R_IK_heel_lift_offset|PALBot1:PALbot_R_IK_heel_lift_tip.rotateY" 
		"PALBotRN1.placeHolderList[356]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_R_IK_Foot_offset|PALBot1:PALbot_R_IK_Foot_ctrl|PALBot1:PALbot_R_IK_heel_lift_offset|PALBot1:PALbot_R_IK_heel_lift_tip.rotateZ" 
		"PALBotRN1.placeHolderList[357]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_R_IK_Foot_offset|PALBot1:PALbot_R_IK_Foot_ctrl|PALBot1:PALbot_R_IK_heel_lift_offset|PALBot1:PALbot_R_IK_heel_lift_tip.translateX" 
		"PALBotRN1.placeHolderList[358]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_R_IK_Foot_offset|PALBot1:PALbot_R_IK_Foot_ctrl|PALBot1:PALbot_R_IK_heel_lift_offset|PALBot1:PALbot_R_IK_heel_lift_tip.translateY" 
		"PALBotRN1.placeHolderList[359]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_R_IK_Foot_offset|PALBot1:PALbot_R_IK_Foot_ctrl|PALBot1:PALbot_R_IK_heel_lift_offset|PALBot1:PALbot_R_IK_heel_lift_tip.translateZ" 
		"PALBotRN1.placeHolderList[360]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_R_IK_Foot_offset|PALBot1:PALbot_R_IK_Foot_ctrl|PALBot1:PALbot_R_IK_heel_lift_offset|PALBot1:PALbot_R_IK_heel_lift_tip|PALBot1:PALbot_R_IK_foot_tip_offset|PALBot1:PALbot_R_IK_foot_tip.translateX" 
		"PALBotRN1.placeHolderList[361]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_R_IK_Foot_offset|PALBot1:PALbot_R_IK_Foot_ctrl|PALBot1:PALbot_R_IK_heel_lift_offset|PALBot1:PALbot_R_IK_heel_lift_tip|PALBot1:PALbot_R_IK_foot_tip_offset|PALBot1:PALbot_R_IK_foot_tip.translateY" 
		"PALBotRN1.placeHolderList[362]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_R_IK_Foot_offset|PALBot1:PALbot_R_IK_Foot_ctrl|PALBot1:PALbot_R_IK_heel_lift_offset|PALBot1:PALbot_R_IK_heel_lift_tip|PALBot1:PALbot_R_IK_foot_tip_offset|PALBot1:PALbot_R_IK_foot_tip.translateZ" 
		"PALBotRN1.placeHolderList[363]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_R_IK_Foot_offset|PALBot1:PALbot_R_IK_Foot_ctrl|PALBot1:PALbot_R_IK_heel_lift_offset|PALBot1:PALbot_R_IK_heel_lift_tip|PALBot1:PALbot_R_IK_foot_tip_offset|PALBot1:PALbot_R_IK_foot_tip.rotateX" 
		"PALBotRN1.placeHolderList[364]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_R_IK_Foot_offset|PALBot1:PALbot_R_IK_Foot_ctrl|PALBot1:PALbot_R_IK_heel_lift_offset|PALBot1:PALbot_R_IK_heel_lift_tip|PALBot1:PALbot_R_IK_foot_tip_offset|PALBot1:PALbot_R_IK_foot_tip.rotateY" 
		"PALBotRN1.placeHolderList[365]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_R_IK_Foot_offset|PALBot1:PALbot_R_IK_Foot_ctrl|PALBot1:PALbot_R_IK_heel_lift_offset|PALBot1:PALbot_R_IK_heel_lift_tip|PALBot1:PALbot_R_IK_foot_tip_offset|PALBot1:PALbot_R_IK_foot_tip.rotateZ" 
		"PALBotRN1.placeHolderList[366]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_R_IK_Foot_offset|PALBot1:PALbot_R_IK_Foot_ctrl|PALBot1:PALbot_R_IK_heel_lift_offset|PALBot1:PALbot_R_IK_heel_lift_tip|PALBot1:PALbot_R_IK_foot_tip_offset|PALBot1:PALbot_R_IK_foot_tip|PALBot1:PALbot_R_IK_footBall_offset|PALBot1:PALbot_R_IK_footBall_ctrl.translateX" 
		"PALBotRN1.placeHolderList[367]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_R_IK_Foot_offset|PALBot1:PALbot_R_IK_Foot_ctrl|PALBot1:PALbot_R_IK_heel_lift_offset|PALBot1:PALbot_R_IK_heel_lift_tip|PALBot1:PALbot_R_IK_foot_tip_offset|PALBot1:PALbot_R_IK_foot_tip|PALBot1:PALbot_R_IK_footBall_offset|PALBot1:PALbot_R_IK_footBall_ctrl.translateY" 
		"PALBotRN1.placeHolderList[368]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_R_IK_Foot_offset|PALBot1:PALbot_R_IK_Foot_ctrl|PALBot1:PALbot_R_IK_heel_lift_offset|PALBot1:PALbot_R_IK_heel_lift_tip|PALBot1:PALbot_R_IK_foot_tip_offset|PALBot1:PALbot_R_IK_foot_tip|PALBot1:PALbot_R_IK_footBall_offset|PALBot1:PALbot_R_IK_footBall_ctrl.translateZ" 
		"PALBotRN1.placeHolderList[369]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_R_IK_Foot_offset|PALBot1:PALbot_R_IK_Foot_ctrl|PALBot1:PALbot_R_IK_heel_lift_offset|PALBot1:PALbot_R_IK_heel_lift_tip|PALBot1:PALbot_R_IK_foot_tip_offset|PALBot1:PALbot_R_IK_foot_tip|PALBot1:PALbot_R_IK_footBall_offset|PALBot1:PALbot_R_IK_footBall_ctrl.rotateX" 
		"PALBotRN1.placeHolderList[370]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_R_IK_Foot_offset|PALBot1:PALbot_R_IK_Foot_ctrl|PALBot1:PALbot_R_IK_heel_lift_offset|PALBot1:PALbot_R_IK_heel_lift_tip|PALBot1:PALbot_R_IK_foot_tip_offset|PALBot1:PALbot_R_IK_foot_tip|PALBot1:PALbot_R_IK_footBall_offset|PALBot1:PALbot_R_IK_footBall_ctrl.rotateY" 
		"PALBotRN1.placeHolderList[371]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_R_IK_Foot_offset|PALBot1:PALbot_R_IK_Foot_ctrl|PALBot1:PALbot_R_IK_heel_lift_offset|PALBot1:PALbot_R_IK_heel_lift_tip|PALBot1:PALbot_R_IK_foot_tip_offset|PALBot1:PALbot_R_IK_foot_tip|PALBot1:PALbot_R_IK_footBall_offset|PALBot1:PALbot_R_IK_footBall_ctrl.rotateZ" 
		"PALBotRN1.placeHolderList[372]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_L_HandVIS_offset|PALBot1:PALbot_L_HandVIS.Hand_Vis" 
		"PALBotRN1.placeHolderList[373]" ""
		5 4 "PALBotRN1" "|PALBot1:PALBOT_GRP|PALBot1:PALbot_LOC|PALBot1:PALbot_CTRLs|PALBot1:PALbot_MAIN|PALBot1:PALbot_root|PALBot1:PALbot_L_HandVIS_offset|PALBot1:PALbot_L_HandVIS.canon_light" 
		"PALBotRN1.placeHolderList[374]" "";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode animCurveTL -n "PALbot_cog_ctrl_translateX";
	rename -uid "B5C81AA8-48A0-28A1-C631-558B01EAA465";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -5.5282760461180035e-16 21 -5.5282760461180035e-16
		 24 -5.5282760461180035e-16 25 -5.2262011924727689e-16 26 -5.2262011924727689e-16
		 28 0 29 0 33 -2.708343107253854 39 -2.7083431072538522 47 -2.313535119195111 52 -1.6080913505378887;
	setAttr -s 11 ".kit[0:10]"  18 10 10 10 10 10 10 9 
		10 10 10;
	setAttr -s 11 ".kot[0:10]"  18 5 10 5 5 10 10 9 
		5 5 5;
createNode animCurveTL -n "PALbot_cog_ctrl_translateY";
	rename -uid "0C5471DA-4D28-DDF7-98E5-DBABF50DBD1C";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -4.3735534880444593 21 -4.3735534880444593
		 24 -4.3735534880444593 25 -4.3735534880444593 26 -4.3735534880444593 28 -4.3735534880444593
		 29 -4.3735534880444593 33 -3.2842436608619314 39 -2.8770249479331893 47 -1.5036906437599278
		 52 -3.017677096340897;
	setAttr -s 11 ".kit[0:10]"  18 10 10 10 10 10 10 10 
		10 10 10;
	setAttr -s 11 ".kot[0:10]"  18 5 10 5 5 10 10 10 
		5 5 5;
createNode animCurveTL -n "PALbot_cog_ctrl_translateZ";
	rename -uid "94D754F1-42C6-B824-D57C-49919924981C";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -4.5141799659844839 21 -4.5141799659844839
		 24 -4.5141799659844839 25 -4.514 26 -4.514 28 -2.9990387740007858 29 -1.9724767438335054
		 33 1.1629713312886309 39 1.7509274967565567 47 1.2243750375754434 52 2.7506018099522302;
	setAttr -s 11 ".kit[0:10]"  18 10 10 10 10 10 10 10 
		10 10 10;
	setAttr -s 11 ".kot[0:10]"  18 5 10 5 5 10 10 10 
		5 5 5;
createNode animCurveTA -n "PALbot_cog_ctrl_rotateX";
	rename -uid "4DAAF9B5-4382-839A-1FF4-BA953D875230";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 21 0 24 0 25 0 26 0 28 5.5428674788092511
		 29 14.357325834731906 33 14.357325834731906 39 14.357325834731906 47 10.992695398222327
		 52 23.532643383709484;
	setAttr -s 11 ".kit[0:10]"  18 10 10 10 10 10 10 9 
		10 10 10;
	setAttr -s 11 ".kot[0:10]"  18 5 10 5 5 10 10 9 
		5 5 5;
createNode animCurveTA -n "PALbot_cog_ctrl_rotateY";
	rename -uid "C066C42E-49C8-2082-B386-42BF947BE6CA";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 21 0 24 0 25 0 26 0 28 0 29 0 33 0 39 0
		 47 -61.193824538154345 52 66.805467750494714;
	setAttr -s 11 ".kit[0:10]"  18 10 10 10 10 10 10 9 
		10 10 10;
	setAttr -s 11 ".kot[0:10]"  18 5 10 5 5 10 10 9 
		5 5 5;
createNode animCurveTA -n "PALbot_cog_ctrl_rotateZ";
	rename -uid "004B0C25-4E9B-A0B1-F600-49BE9FE9D47B";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 21 0 24 0 25 0 26 0 28 0 29 0 33 0 39 0
		 47 -17.868181046890498 52 -6.7537356752968769;
	setAttr -s 11 ".kit[0:10]"  18 10 10 10 10 10 10 9 
		10 10 10;
	setAttr -s 11 ".kot[0:10]"  18 5 10 5 5 10 10 9 
		5 5 5;
createNode animCurveTU -n "PALbot_cog_ctrl_secondary_vis";
	rename -uid "A65CAFA9-4753-BE1E-38CA-3198D2CCCC29";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 21 0 24 0 25 0 26 0 28 0 29 0 33 0 39 0
		 47 0 52 0;
	setAttr -s 11 ".kit[0:10]"  18 10 10 10 10 10 10 9 
		10 10 10;
	setAttr -s 11 ".kot[0:10]"  18 5 10 5 5 10 10 9 
		5 5 5;
createNode animCurveTL -n "PALbot_R_IK_Foot_ctrl_translateX";
	rename -uid "C7742040-4C46-D82C-DD6A-8C9B59E2C684";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.2716743302419653 21 0.2716743302419653
		 22 0.08977291127264353 23 -0.43805446618174826 24 -0.92375756695304267 27 -0.92375756695304267
		 28 -0.92375756695304267 30 -0.92375756695304267 33 -2.327104248361973 39 -2.327104248361973
		 47 -2.327104248361973;
	setAttr -s 11 ".kit[0:10]"  18 10 10 10 10 10 10 10 
		10 10 10;
	setAttr -s 11 ".kot[0:10]"  18 5 5 5 5 10 10 10 
		5 5 5;
createNode animCurveTL -n "PALbot_R_IK_Foot_ctrl_translateY";
	rename -uid "6E3361B2-4722-C111-855D-80857AAF81A2";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 21 0 22 0.31231684068542931 23 0.5441731258482867
		 24 0.01124955035006403 27 0.01124955035006403 28 0.01124955035006403 30 0.62267163012979454
		 33 0.011249550350062254 39 0.011249550350062254 47 0.011249550350062254;
	setAttr -s 11 ".kit[0:10]"  18 10 10 10 10 10 10 10 
		10 10 10;
	setAttr -s 11 ".kot[0:10]"  18 5 5 5 5 10 10 10 
		5 5 5;
createNode animCurveTL -n "PALbot_R_IK_Foot_ctrl_translateZ";
	rename -uid "8DB61BE9-4E21-6F6C-1425-9989CE79143E";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -3.3270509894132337e-17 21 -3.3270509894132337e-17
		 22 -1.0994010844018183e-17 23 5.3646199986168341e-17 24 1.1312767475571934e-16 27 1.1312767475571934e-16
		 28 1.1312767475571934e-16 30 2.7611530374181097 33 4.7615897841296331 39 4.7615897841296331
		 47 -1.011112392828271;
	setAttr -s 11 ".kit[0:10]"  18 10 10 10 10 10 10 10 
		10 10 10;
	setAttr -s 11 ".kot[0:10]"  18 5 5 5 5 10 10 10 
		5 5 5;
createNode animCurveTA -n "PALbot_R_IK_Foot_ctrl_rotateX";
	rename -uid "280C66DF-4313-9743-CFFC-2ABEC82AD462";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 21 0 22 0 23 0 24 0 27 0 28 0 30 0 33 0
		 39 0 47 0;
	setAttr -s 11 ".kit[0:10]"  18 10 10 10 10 10 10 10 
		10 10 10;
	setAttr -s 11 ".kot[0:10]"  18 5 5 5 5 10 10 10 
		5 5 5;
createNode animCurveTA -n "PALbot_R_IK_Foot_ctrl_rotateY";
	rename -uid "70569889-4A96-7B91-FD31-929AAA0059E8";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 21 0 22 0 23 0 24 0 27 0 28 0 30 0 33 0
		 39 0 47 0;
	setAttr -s 11 ".kit[0:10]"  18 10 10 10 10 10 10 10 
		10 10 10;
	setAttr -s 11 ".kot[0:10]"  18 5 5 5 5 10 10 10 
		5 5 5;
createNode animCurveTA -n "PALbot_R_IK_Foot_ctrl_rotateZ";
	rename -uid "AC03F9DF-48EE-DF0D-5F86-6F9C5797BCB2";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 21 0 22 0 23 0 24 0 27 0 28 0 30 0 33 0
		 39 0 47 0;
	setAttr -s 11 ".kit[0:10]"  18 10 10 10 10 10 10 10 
		10 10 10;
	setAttr -s 11 ".kot[0:10]"  18 5 5 5 5 10 10 10 
		5 5 5;
createNode animCurveTU -n "PALbot_R_IK_Foot_ctrl_Heel_Peel";
	rename -uid "C2F846BD-4C38-70AB-92F7-8787790A9DCB";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 21 0 22 0 23 0 24 0 27 0 28 0 30 0 33 0
		 39 0 47 0;
	setAttr -s 11 ".kit[0:10]"  18 10 10 10 10 10 10 10 
		10 10 10;
	setAttr -s 11 ".kot[0:10]"  18 5 5 5 5 10 10 10 
		5 5 5;
createNode animCurveTU -n "PALbot_R_IK_Foot_ctrl_follow_hip";
	rename -uid "31F01EB8-4DFB-C4CC-77C0-AAAEE352B705";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 21 0 22 0 23 0 24 0 27 0 28 0 30 0 33 0
		 39 0 47 0;
	setAttr -s 11 ".kit[0:10]"  18 10 10 10 10 10 10 10 
		10 10 10;
	setAttr -s 11 ".kot[0:10]"  18 5 5 5 5 10 10 10 
		5 5 5;
createNode animCurveTL -n "PALbot_L_IK_Foot_ctrl_translateX";
	rename -uid "3BB37854-439E-9E69-AA93-EFAF19673875";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.90276382547036049 21 0.90276382547036049
		 22 0.83062985665239686 23 0.62954017912558657 24 0.50185841518267904 25 0.50185841518267904
		 29 0.50185841518267904 39 0.50185841518267904 47 0.50185841518267871;
	setAttr -s 9 ".kit[0:8]"  18 10 10 10 10 10 10 10 
		10;
	setAttr -s 9 ".kot[0:8]"  18 5 5 5 5 5 5 5 
		5;
createNode animCurveTL -n "PALbot_L_IK_Foot_ctrl_translateY";
	rename -uid "6CE24A0E-41B4-30C3-C105-098BA41EECCD";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 21 0 22 0.067775935039661395 23 0.28827450220157669
		 24 0.3052891844348018 25 -0.0055829012724948335 29 -0.0055829012724948335 39 -0.0055829012724948335
		 47 -0.0055829012724948335;
	setAttr -s 9 ".kit[0:8]"  18 10 10 10 10 10 10 10 
		10;
	setAttr -s 9 ".kot[0:8]"  18 5 5 5 5 5 5 5 
		5;
createNode animCurveTL -n "PALbot_L_IK_Foot_ctrl_translateZ";
	rename -uid "8FD02169-43B3-3F5A-303C-329C77F9486B";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 2.2111336595305697e-16 21 2.2111336595305697e-16
		 22 2.0344563914851414e-16 23 1.5419287316355779e-16 24 1.2291986045912384e-16 25 1.2291986045912384e-16
		 29 1.2291986045912384e-16 39 1.2291986045912384e-16 47 4.8554892399933323;
	setAttr -s 9 ".kit[0:8]"  18 10 10 10 10 10 10 10 
		10;
	setAttr -s 9 ".kot[0:8]"  18 5 5 5 5 5 5 5 
		5;
createNode animCurveTA -n "PALbot_L_IK_Foot_ctrl_rotateX";
	rename -uid "F89E8E06-47AB-CE31-F611-3CB816E47179";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 21 0 22 0 23 0 24 0 25 0 29 0 39 0 47 0;
	setAttr -s 9 ".kit[0:8]"  18 10 10 10 10 10 10 10 
		10;
	setAttr -s 9 ".kot[0:8]"  18 5 5 5 5 5 5 5 
		5;
createNode animCurveTA -n "PALbot_L_IK_Foot_ctrl_rotateY";
	rename -uid "373FA40D-4964-9D9C-689C-8094E8C893D2";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 21 0 22 0 23 0 24 0 25 0 29 0 39 0 47 0;
	setAttr -s 9 ".kit[0:8]"  18 10 10 10 10 10 10 10 
		10;
	setAttr -s 9 ".kot[0:8]"  18 5 5 5 5 5 5 5 
		5;
createNode animCurveTA -n "PALbot_L_IK_Foot_ctrl_rotateZ";
	rename -uid "C9196F58-4D02-8CE0-8113-DDAFF3A7D323";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 21 0 22 0 23 0 24 0 25 0 29 0 39 0 47 0;
	setAttr -s 9 ".kit[0:8]"  18 10 10 10 10 10 10 10 
		10;
	setAttr -s 9 ".kot[0:8]"  18 5 5 5 5 5 5 5 
		5;
createNode animCurveTU -n "PALbot_L_IK_Foot_ctrl_Heel_Peel";
	rename -uid "A4AEB024-4119-C64C-2015-EAA8712D1BAA";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 21 0 22 0 23 0 24 0 25 0 29 0 39 0 47 0;
	setAttr -s 9 ".kit[0:8]"  18 10 10 10 10 10 10 10 
		10;
	setAttr -s 9 ".kot[0:8]"  18 5 5 5 5 5 5 5 
		5;
createNode animCurveTU -n "PALbot_L_IK_Foot_ctrl_follow_hip";
	rename -uid "6446415F-4CB4-4F5E-60EB-C6AB22C96049";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 21 0 22 0 23 0 24 0 25 0 29 0 39 0 47 0;
	setAttr -s 9 ".kit[0:8]"  18 10 10 10 10 10 10 10 
		10;
	setAttr -s 9 ".kot[0:8]"  18 5 5 5 5 5 5 5 
		5;
createNode animCurveTL -n "PALbot_L_knee_aim_ctrl_translateX";
	rename -uid "920FC23F-4042-6A33-AFAD-6083294F9744";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -4.5668747852583751 20 -4.5668747852583751
		 21 -4.5668747852583751 22 -3.9704171499483243 23 -3.7125514036189267 24 -3.4840011686861478
		 25 -2.0842915539033036 29 -2.0842915539033036 39 -2.0842915539033036 47 -0.73208617241830565;
	setAttr -s 10 ".kit[0:9]"  18 10 10 10 10 10 10 10 
		10 10;
	setAttr -s 10 ".kot[0:9]"  5 10 10 5 10 5 5 5 
		5 5;
createNode animCurveTL -n "PALbot_L_knee_aim_ctrl_translateY";
	rename -uid "E8C98248-44BD-B676-6F17-8B9EAB26B0E2";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 20 0 21 0 22 0 23 0 24 -8.8817841970012523e-16
		 25 2.6645352591003757e-15 29 2.6645352591003757e-15 39 2.6645352591003757e-15 47 0;
	setAttr -s 10 ".kit[0:9]"  18 10 10 10 10 10 10 10 
		10 10;
	setAttr -s 10 ".kot[0:9]"  5 10 10 5 10 5 5 5 
		5 5;
createNode animCurveTL -n "PALbot_L_knee_aim_ctrl_translateZ";
	rename -uid "9C88DD62-4BE7-6508-1B12-9B9C2A60CD13";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 5.5928085878734214e-16 20 5.5928085878734214e-16
		 21 5.5928085878734214e-16 22 4.2146655546334251e-17 23 4.5465641931119282e-16 24 8.7075629779577516e-16
		 25 9.2138591277284797e-16 29 9.2138591277284797e-16 39 9.2138591277284797e-16 47 0;
	setAttr -s 10 ".kit[0:9]"  18 10 10 10 10 10 10 10 
		10 10;
	setAttr -s 10 ".kot[0:9]"  5 10 10 5 10 5 5 5 
		5 5;
createNode animCurveTA -n "PALbot_L_knee_aim_ctrl_rotateX";
	rename -uid "4D2BDECC-4651-0717-E77D-BFAF556CAFB2";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 20 0 21 0 22 0 23 0 24 0 25 0 29 0 39 0
		 47 0;
	setAttr -s 10 ".kit[0:9]"  18 10 10 10 10 10 10 10 
		10 10;
	setAttr -s 10 ".kot[0:9]"  5 10 10 5 10 5 5 5 
		5 5;
createNode animCurveTA -n "PALbot_L_knee_aim_ctrl_rotateY";
	rename -uid "F8DEF5B6-4144-7BA9-1094-0CA173FA0712";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 20 0 21 0 22 0 23 0 24 0 25 0 29 0 39 0
		 47 0;
	setAttr -s 10 ".kit[0:9]"  18 10 10 10 10 10 10 10 
		10 10;
	setAttr -s 10 ".kot[0:9]"  5 10 10 5 10 5 5 5 
		5 5;
createNode animCurveTA -n "PALbot_L_knee_aim_ctrl_rotateZ";
	rename -uid "C8D34ADC-4A45-CA18-33CD-B0833427CFC1";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 20 0 21 0 22 0 23 0 24 0 25 0 29 0 39 0
		 47 0;
	setAttr -s 10 ".kit[0:9]"  18 10 10 10 10 10 10 10 
		10 10;
	setAttr -s 10 ".kot[0:9]"  5 10 10 5 10 5 5 5 
		5 5;
createNode animCurveTU -n "PALbot_L_knee_aim_ctrl_space_switch";
	rename -uid "E8941D85-459D-4EAA-40BE-EC99A61C1E54";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 2 20 2 21 2 22 2 23 2 24 2 25 2 29 2 39 2
		 47 2;
	setAttr -s 10 ".kit[1:9]"  10 10 9 10 9 9 9 9 
		9;
	setAttr -s 10 ".kot[0:9]"  5 10 10 5 10 5 5 5 
		5 5;
createNode animCurveTL -n "PALbot_R_knee_aim_ctrl_translateX";
	rename -uid "B9B1EC12-4457-F9DE-6595-18BDCF4880FE";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.22500823757083405 20 0.22500823757083405
		 21 0.22500823757083405 23 0.73150489423713605 24 1.45377015124238 29 1.45377015124238
		 39 1.45377015124238 47 0.43991179950401804;
	setAttr -s 8 ".kit[0:7]"  18 10 10 10 10 10 10 10;
	setAttr -s 8 ".kot[0:7]"  5 10 10 10 10 5 5 5;
createNode animCurveTL -n "PALbot_R_knee_aim_ctrl_translateY";
	rename -uid "49F8FED3-4606-8D1E-CDC1-9788083F8DBD";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 8.7597730690873621e-16 20 8.7597730690873621e-16
		 21 8.7597730690873621e-16 23 8.7597730690873621e-16 24 4.7652377492884091e-16 29 4.7652377492884091e-16
		 39 4.7652377492884091e-16 47 0;
	setAttr -s 8 ".kit[0:7]"  18 10 10 10 10 10 10 10;
	setAttr -s 8 ".kot[0:7]"  5 10 10 10 10 5 5 5;
createNode animCurveTL -n "PALbot_R_knee_aim_ctrl_translateZ";
	rename -uid "E9D83DFF-40A4-3D2C-03AD-A584FE5B700A";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 2.3890608916758688e-15 20 2.3890608916758688e-15
		 21 2.3890608916758688e-15 23 2.501525741701187e-15 24 3.0203458667285207e-15 29 3.0203458667285207e-15
		 39 3.0203458667285207e-15 47 0;
	setAttr -s 8 ".kit[0:7]"  18 10 10 10 10 10 10 10;
	setAttr -s 8 ".kot[0:7]"  5 10 10 10 10 5 5 5;
createNode animCurveTA -n "PALbot_R_knee_aim_ctrl_rotateX";
	rename -uid "EADF8A28-4A93-F9AF-F1CF-1A92F73845D6";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 20 0 21 0 23 0 24 0 29 0 39 0 47 0;
	setAttr -s 8 ".kit[0:7]"  18 10 10 10 10 10 10 10;
	setAttr -s 8 ".kot[0:7]"  5 10 10 10 10 5 5 5;
createNode animCurveTA -n "PALbot_R_knee_aim_ctrl_rotateY";
	rename -uid "5E332493-4789-BDC5-82EF-7A85887E0BEA";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 20 0 21 0 23 0 24 0 29 0 39 0 47 0;
	setAttr -s 8 ".kit[0:7]"  18 10 10 10 10 10 10 10;
	setAttr -s 8 ".kot[0:7]"  5 10 10 10 10 5 5 5;
createNode animCurveTA -n "PALbot_R_knee_aim_ctrl_rotateZ";
	rename -uid "CA1FABB7-444A-0044-7FB7-6B9FB38294F6";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 20 0 21 0 23 0 24 0 29 0 39 0 47 0;
	setAttr -s 8 ".kit[0:7]"  18 10 10 10 10 10 10 10;
	setAttr -s 8 ".kot[0:7]"  5 10 10 10 10 5 5 5;
createNode animCurveTU -n "PALbot_R_knee_aim_ctrl_space_switch";
	rename -uid "E25E1E42-42E8-443D-9EBD-A8B5EC717977";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 2 20 2 21 2 23 2 24 2 29 2 39 2 47 2;
	setAttr -s 8 ".kit[0:7]"  9 10 10 10 10 9 9 9;
	setAttr -s 8 ".kot[0:7]"  5 10 10 10 10 5 5 5;
createNode animCurveTA -n "PALbot_R_FK_Elbow_ctrl_rotateX";
	rename -uid "A899B5E6-49A7-DC29-5319-FD98DBD62CCE";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -105.24394914380386 21 -105.24394914380386
		 22 -116.71878908237238 23 -103.85129290399938 29 -103.85129290399938 32 -28.214509567689831
		 33 -32.454367006519433 39 -16.124787463688072 47 -54.658221141404908 52 -53.913958589509221;
	setAttr -s 10 ".kit[0:9]"  18 10 10 10 10 10 10 10 
		10 10;
	setAttr -s 10 ".kot[0:9]"  18 5 5 5 10 10 10 5 
		5 5;
createNode animCurveTL -n "PALbot_R_FK_Elbow_ctrl_translateX";
	rename -uid "AB32E9A3-453B-5B78-F730-7AAB22CD1C1E";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 21 0 22 0 23 0 29 0 31 0 32 0 33 0 39 0
		 47 0 52 0;
	setAttr -s 11 ".kit[0:10]"  18 10 10 10 10 10 10 10 
		10 10 10;
	setAttr -s 11 ".kot[0:10]"  18 5 5 5 10 10 10 10 
		5 5 5;
createNode animCurveTL -n "PALbot_R_FK_Elbow_ctrl_translateY";
	rename -uid "EBFB03A1-4F50-3239-9F4D-B6A70536090B";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 21 0 22 0 23 0 29 0 31 0 32 0 33 0 39 0
		 47 0 52 0;
	setAttr -s 11 ".kit[0:10]"  18 10 10 10 10 10 10 10 
		10 10 10;
	setAttr -s 11 ".kot[0:10]"  18 5 5 5 10 10 10 10 
		5 5 5;
createNode animCurveTL -n "PALbot_R_FK_Elbow_ctrl_translateZ";
	rename -uid "981A119A-4D6B-AD62-DA38-8AA225D3EF45";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 21 0 22 0 23 0 29 0 31 0 32 0 33 0 39 0
		 47 0 52 0;
	setAttr -s 11 ".kit[0:10]"  18 10 10 10 10 10 10 10 
		10 10 10;
	setAttr -s 11 ".kot[0:10]"  18 5 5 5 10 10 10 10 
		5 5 5;
createNode animCurveTA -n "PALbot_L_Arm_ctrl_rotateY";
	rename -uid "D1D40BB3-4B00-8489-B399-A7B47758C231";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 41.829560279900733 21 41.829560279900733
		 22 33.401525731919222 23 19.01722175146174 29 19.01722175146174 33 6.8254833917727789
		 39 6.6777854319948489 47 17.686236127542031 52 -4.0325264118212498;
	setAttr -s 9 ".kit[0:8]"  18 10 10 10 10 10 10 10 
		10;
	setAttr -s 9 ".kot[0:8]"  18 5 5 5 10 10 5 5 
		5;
createNode animCurveTA -n "PALbot_L_Arm_ctrl_rotateZ";
	rename -uid "5CF8837C-4A75-EF45-D9DC-1089733AAAD5";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -19.053685343683334 21 -19.053685343683334
		 22 -19.053685343683345 23 -28.348450287861677 29 -28.348450287861677 33 -33.610376036944643
		 39 -2.9344035310707488 47 -120.60276007820967 52 -25.074346605129886;
	setAttr -s 9 ".kit[0:8]"  18 10 10 10 10 10 10 10 
		10;
	setAttr -s 9 ".kot[0:8]"  18 5 5 5 10 10 5 5 
		5;
createNode animCurveTL -n "PALbot_L_Arm_ctrl_translateX";
	rename -uid "2D0404F9-4CE8-1D95-7A36-C0971FE522C2";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 21 0 22 0 23 0 29 0 33 0 39 0 47 0 52 0;
	setAttr -s 9 ".kit[0:8]"  18 10 10 10 10 10 10 10 
		10;
	setAttr -s 9 ".kot[0:8]"  18 5 5 5 10 10 5 5 
		5;
createNode animCurveTL -n "PALbot_L_Arm_ctrl_translateY";
	rename -uid "F8852345-46F4-2297-5683-9F80C6604F7F";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 21 0 22 0 23 0 29 0 33 0 39 0 47 0 52 0;
	setAttr -s 9 ".kit[0:8]"  18 10 10 10 10 10 10 10 
		10;
	setAttr -s 9 ".kot[0:8]"  18 5 5 5 10 10 5 5 
		5;
createNode animCurveTL -n "PALbot_L_Arm_ctrl_translateZ";
	rename -uid "9DA6E69E-40BA-3B5A-C4A7-C18C36E804E2";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 21 0 22 0 23 0 29 0 33 0 39 0 47 0 52 0;
	setAttr -s 9 ".kit[0:8]"  18 10 10 10 10 10 10 10 
		10;
	setAttr -s 9 ".kot[0:8]"  18 5 5 5 10 10 5 5 
		5;
createNode animCurveTA -n "PALbot_R_FK_Wrist_ctrl_rotateX";
	rename -uid "AC802DFD-4345-ABD8-1CCE-AAAEF4E55DBC";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 76.505748477904447 21 76.505748477904447
		 29 76.505748477904447 33 -257.31207356956293 39 -257.31207356956293 47 -257.31207356956293
		 52 -260.50523094690163;
	setAttr -s 7 ".kit[0:6]"  18 10 10 10 10 10 10;
	setAttr -s 7 ".kot[0:6]"  18 5 5 5 5 5 5;
createNode animCurveTA -n "PALbot_R_FK_Wrist_ctrl_rotateY";
	rename -uid "0BD06649-4B39-2E88-A3D2-0C8F234BC8FE";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 74.474090710551167 21 74.474090710551167
		 29 74.474090710551167 33 -65.494841091341982 39 -65.494841091341982 47 -65.494841091341982
		 52 -47.399993377862515;
	setAttr -s 7 ".kit[0:6]"  18 10 10 10 10 10 10;
	setAttr -s 7 ".kot[0:6]"  18 5 5 5 5 5 5;
createNode animCurveTA -n "PALbot_R_FK_Wrist_ctrl_rotateZ";
	rename -uid "0AB3CB57-4875-F5E9-F1F2-9883D880A5BA";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 80.047201562566357 21 80.047201562566357
		 29 80.047201562566357 33 279.42860829820182 39 279.42860829820182 47 279.42860829820182
		 52 295.21308613653002;
	setAttr -s 7 ".kit[0:6]"  18 10 10 10 10 10 10;
	setAttr -s 7 ".kot[0:6]"  18 5 5 5 5 5 5;
createNode animCurveTL -n "PALbot_R_FK_Wrist_ctrl_translateX";
	rename -uid "4CDF64F5-4B4A-0A4D-6D73-9CBCC7DB6FF5";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 21 0 29 0 33 0 39 0 47 0 52 0;
	setAttr -s 7 ".kit[0:6]"  18 10 10 10 10 10 10;
	setAttr -s 7 ".kot[0:6]"  18 5 5 5 5 5 5;
createNode animCurveTL -n "PALbot_R_FK_Wrist_ctrl_translateY";
	rename -uid "4C01FEE4-48BA-BE87-9F27-DABB30430866";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 21 0 29 0 33 0 39 0 47 0 52 0;
	setAttr -s 7 ".kit[0:6]"  18 10 10 10 10 10 10;
	setAttr -s 7 ".kot[0:6]"  18 5 5 5 5 5 5;
createNode animCurveTL -n "PALbot_R_FK_Wrist_ctrl_translateZ";
	rename -uid "C4FB2C4F-4C11-9E58-D950-7BA9FBD3D4B3";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 21 0 29 0 33 0 39 0 47 0 52 0;
	setAttr -s 7 ".kit[0:6]"  18 10 10 10 10 10 10;
	setAttr -s 7 ".kot[0:6]"  18 5 5 5 5 5 5;
createNode animCurveTA -n "PALbot_L_ShoulderRotate_ctrl_rotateZ";
	rename -uid "7004528B-48AC-A9FE-7168-A1B32AD1E179";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -12.763636351735567 21 -12.763636351735567
		 29 -12.763636351735567 32 56.954538664103644 33 55.801874883418286 39 -8.2801614829224182
		 47 92.274683736091319 52 121.25209140051004;
	setAttr -s 8 ".kit[0:7]"  18 10 10 10 10 10 10 10;
	setAttr -s 8 ".kot[0:7]"  18 5 10 5 10 5 5 5;
createNode animCurveTL -n "PALbot_L_ShoulderRotate_ctrl_translateX";
	rename -uid "1889F333-4630-1DC9-EAE0-3BAFF895413D";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 21 0 29 0 32 0 33 0 39 0 47 0 52 0;
	setAttr -s 8 ".kit[0:7]"  18 10 10 10 10 10 10 10;
	setAttr -s 8 ".kot[0:7]"  18 5 10 5 10 5 5 5;
createNode animCurveTL -n "PALbot_L_ShoulderRotate_ctrl_translateY";
	rename -uid "75C99CD8-43FB-8798-9B20-5BA7C2F01580";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 21 0 29 0 32 0 33 0 39 0 47 0 52 0;
	setAttr -s 8 ".kit[0:7]"  18 10 10 10 10 10 10 10;
	setAttr -s 8 ".kot[0:7]"  18 5 10 5 10 5 5 5;
createNode animCurveTL -n "PALbot_L_ShoulderRotate_ctrl_translateZ";
	rename -uid "CE37DF0B-47F1-8DD2-CD46-63A34A71D68F";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 21 0 29 0 32 0 33 0 39 0 47 0 52 0;
	setAttr -s 8 ".kit[0:7]"  18 10 10 10 10 10 10 10;
	setAttr -s 8 ".kot[0:7]"  18 5 10 5 10 5 5 5;
createNode animCurveTA -n "PALbot_L_FK_Elbow_ctrl_rotateX";
	rename -uid "F44148FC-4755-2F0D-D114-DFB316C9C222";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -89.207483805060676 21 -89.207483805060676
		 22 -96.747367068403065 23 -81.126756176797883 29 -81.126756176797883 36 -90.861351462969409
		 37 -102.39633963802873 38 -113.82308620389583 39 -121.98446175203091 47 -59.291 52 -89.688114966116103;
	setAttr -s 11 ".kit[0:10]"  18 10 10 10 10 10 10 10 
		10 10 10;
	setAttr -s 11 ".kot[0:10]"  18 5 5 5 10 10 10 10 
		5 5 5;
createNode animCurveTL -n "PALbot_L_FK_Elbow_ctrl_translateX";
	rename -uid "0530FB96-4575-9958-F094-52AD5185F253";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 21 0 22 0 23 0 29 0 36 0 37 0 38 0 39 0
		 47 0 52 0;
	setAttr -s 11 ".kit[0:10]"  18 10 10 10 10 10 10 10 
		10 10 10;
	setAttr -s 11 ".kot[0:10]"  18 5 5 5 10 10 10 10 
		5 5 5;
createNode animCurveTL -n "PALbot_L_FK_Elbow_ctrl_translateY";
	rename -uid "E16AC1BB-40CF-937A-7597-C2AEBDA602CF";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 21 0 22 0 23 0 29 0 36 0 37 0 38 0 39 0
		 47 0 52 0;
	setAttr -s 11 ".kit[0:10]"  18 10 10 10 10 10 10 10 
		10 10 10;
	setAttr -s 11 ".kot[0:10]"  18 5 5 5 10 10 10 10 
		5 5 5;
createNode animCurveTL -n "PALbot_L_FK_Elbow_ctrl_translateZ";
	rename -uid "85817897-4D6E-E3BD-A8F6-D49DCA00E750";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 21 0 22 0 23 0 29 0 36 0 37 0 38 0 39 0
		 47 0 52 0;
	setAttr -s 11 ".kit[0:10]"  18 10 10 10 10 10 10 10 
		10 10 10;
	setAttr -s 11 ".kot[0:10]"  18 5 5 5 10 10 10 10 
		5 5 5;
createNode animCurveTA -n "PALbot_L_FK_Wrist_ctrl_rotateX";
	rename -uid "F37D62DF-44D8-16EF-B78A-2FBCE9B57324";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 19.242877943983569 21 19.242877943983569
		 29 19.242877943983569 36 173.10742960151092 37 172.30031305911925 39 178.1955167427227
		 47 16.85151279442751;
	setAttr -s 7 ".kit[0:6]"  18 10 10 10 10 10 10;
	setAttr -s 7 ".kot[0:6]"  18 5 5 5 5 5 5;
createNode animCurveTA -n "PALbot_L_FK_Wrist_ctrl_rotateY";
	rename -uid "C8320134-4D50-731E-3408-F09E7809481F";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 68.646293245694764 21 68.646293245694764
		 29 68.646293245694764 36 0.36458394990066645 37 26.402380899218283 39 30.76252175768925
		 47 48.612637315309456;
	setAttr -s 7 ".kit[0:6]"  18 10 10 10 10 10 10;
	setAttr -s 7 ".kot[0:6]"  18 5 5 5 5 5 5;
createNode animCurveTA -n "PALbot_L_FK_Wrist_ctrl_rotateZ";
	rename -uid "48F129EE-406B-22C7-79CE-19A64A66BCA9";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 20.546325964908174 21 20.546325964908174
		 29 20.546325964908174 36 182.49227837709699 37 179.09589168916429 39 176.79719313424638
		 47 8.4806194157503203;
	setAttr -s 7 ".kit[0:6]"  18 10 10 10 10 10 10;
	setAttr -s 7 ".kot[0:6]"  18 5 5 5 5 5 5;
createNode animCurveTL -n "PALbot_L_FK_Wrist_ctrl_translateX";
	rename -uid "5798505E-4F34-FA7D-2BAA-49B0EB3B187B";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 21 0 29 0 36 0 37 0 39 0 47 0;
	setAttr -s 7 ".kit[0:6]"  18 10 10 10 10 10 10;
	setAttr -s 7 ".kot[0:6]"  18 5 5 5 5 5 5;
createNode animCurveTL -n "PALbot_L_FK_Wrist_ctrl_translateY";
	rename -uid "4E8969AD-41E4-89E8-4931-7C8B7B51C930";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 21 0 29 0 36 0 37 0 39 0 47 0;
	setAttr -s 7 ".kit[0:6]"  18 10 10 10 10 10 10;
	setAttr -s 7 ".kot[0:6]"  18 5 5 5 5 5 5;
createNode animCurveTL -n "PALbot_L_FK_Wrist_ctrl_translateZ";
	rename -uid "60DE23AD-449D-658D-52F1-E6B2DE184469";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 21 0 29 0 36 0 37 0 39 0 47 0;
	setAttr -s 7 ".kit[0:6]"  18 10 10 10 10 10 10;
	setAttr -s 7 ".kot[0:6]"  18 5 5 5 5 5 5;
createNode animCurveTA -n "PALbot_L_Arm_ctrl_rotateY1";
	rename -uid "76B94616-49B4-F973-0853-81B36470EAFD";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 33.281560577494844 21 33.281560577494844
		 22 23.3991673661532 23 8.1139630435554473 29 8.1139630435554473 34 21.681725413395785
		 36 8.0334357389295068 37 2.3806236906166842 38 -3.1190477580797977 39 -9.1531581721044653
		 47 152.16039027576556 52 152.4558555978291;
	setAttr -s 12 ".kit[0:11]"  18 10 10 10 10 10 10 10 
		10 10 10 10;
	setAttr -s 12 ".kot[0:11]"  18 5 5 5 10 10 5 5 
		5 5 5 5;
createNode animCurveTA -n "PALbot_L_Arm_ctrl_rotateZ1";
	rename -uid "1C132F8E-4781-C178-2273-76BF565D58E0";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 21 0 22 0 23 -8.413204703967228 29 -8.413204703967228
		 34 -4.4011525903289046 36 -4.9874442927858391 37 -18.334342118894366 38 -25.155574838142712
		 39 -24.209975899735905 47 -123.55401049941652 52 -84.384019764038726;
	setAttr -s 12 ".kit[0:11]"  18 10 10 10 10 10 10 10 
		10 10 10 10;
	setAttr -s 12 ".kot[0:11]"  18 5 5 5 10 10 5 5 
		5 5 5 5;
createNode animCurveTL -n "PALbot_L_Arm_ctrl_translateX1";
	rename -uid "5BE3798A-4069-B840-931F-7E854D2EC5CB";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 21 0 22 0 23 0 29 0 34 0 36 0 37 0 38 0
		 39 0 47 0 52 0;
	setAttr -s 12 ".kit[0:11]"  18 10 10 10 10 10 10 10 
		10 10 10 10;
	setAttr -s 12 ".kot[0:11]"  18 5 5 5 10 10 5 5 
		5 5 5 5;
createNode animCurveTL -n "PALbot_L_Arm_ctrl_translateY1";
	rename -uid "1DFE6504-4EE1-1792-EAD4-00B3D75326A6";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 21 0 22 0 23 0 29 0 34 0 36 0 37 0 38 0
		 39 0 47 0 52 0;
	setAttr -s 12 ".kit[0:11]"  18 10 10 10 10 10 10 10 
		10 10 10 10;
	setAttr -s 12 ".kot[0:11]"  18 5 5 5 10 10 5 5 
		5 5 5 5;
createNode animCurveTL -n "PALbot_L_Arm_ctrl_translateZ1";
	rename -uid "BD892F7C-4A25-878A-5A35-09B0EB8DA7F4";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 21 0 22 0 23 0 29 0 34 0 36 0 37 0 38 0
		 39 0 47 0 52 0;
	setAttr -s 12 ".kit[0:11]"  18 10 10 10 10 10 10 10 
		10 10 10 10;
	setAttr -s 12 ".kot[0:11]"  18 5 5 5 10 10 5 5 
		5 5 5 5;
createNode animCurveTA -n "PALbot_L_Index02_ctrl_rotateX";
	rename -uid "F132EACC-4782-7E61-C29E-E5BCDC654F47";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 17.338374016212963 21 17.338374016212963
		 29 17.338374016212963 39 17.338374016212963 47 17.338374016212963 52 90;
	setAttr -s 6 ".kit[0:5]"  18 10 10 10 10 10;
	setAttr -s 6 ".kot[0:5]"  18 5 5 5 5 5;
createNode animCurveTA -n "PALbot_L_Index02_ctrl_rotateY";
	rename -uid "B23BF987-4937-E773-4AFB-F1B50BFA9383";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 21 0 29 0 39 0 47 0 52 0;
	setAttr -s 6 ".kit[0:5]"  18 10 10 10 10 10;
	setAttr -s 6 ".kot[0:5]"  18 5 5 5 5 5;
createNode animCurveTA -n "PALbot_L_Index02_ctrl_rotateZ";
	rename -uid "4A68A601-415E-A283-A906-A3A898C91724";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 21 0 29 0 39 0 47 0 52 0;
	setAttr -s 6 ".kit[0:5]"  18 10 10 10 10 10;
	setAttr -s 6 ".kot[0:5]"  18 5 5 5 5 5;
createNode animCurveTA -n "PALbot_L_Middle02_ctrl_rotateX";
	rename -uid "490A5005-47F5-8725-FCEB-2480FBAC35D3";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 26.529782113391636 21 26.529782113391636
		 29 26.529782113391636 39 26.529782113391636 47 26.529782113391636 52 90;
	setAttr -s 6 ".kit[0:5]"  18 10 10 10 10 10;
	setAttr -s 6 ".kot[0:5]"  18 5 5 5 5 5;
createNode animCurveTA -n "PALbot_L_Middle02_ctrl_rotateY";
	rename -uid "04D2EA00-49CC-DD80-E662-D4881EF6F6C2";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 21 0 29 0 39 0 47 0 52 0;
	setAttr -s 6 ".kit[0:5]"  18 10 10 10 10 10;
	setAttr -s 6 ".kot[0:5]"  18 5 5 5 5 5;
createNode animCurveTA -n "PALbot_L_Middle02_ctrl_rotateZ";
	rename -uid "A4CECA5B-4B9A-A2DB-6CB7-96A9B06CAEAF";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 21 0 29 0 39 0 47 0 52 0;
	setAttr -s 6 ".kit[0:5]"  18 10 10 10 10 10;
	setAttr -s 6 ".kot[0:5]"  18 5 5 5 5 5;
createNode animCurveTA -n "PALbot_L_Pinky02_ctrl_rotateX";
	rename -uid "BE45D262-4F84-CE04-ABBA-BF82709A243A";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 32.52414411341428 21 32.52414411341428
		 29 32.52414411341428 39 32.52414411341428 47 32.52414411341428 52 90;
	setAttr -s 6 ".kit[0:5]"  18 10 10 10 10 10;
	setAttr -s 6 ".kot[0:5]"  18 5 5 5 5 5;
createNode animCurveTA -n "PALbot_L_Pinky02_ctrl_rotateY";
	rename -uid "FFD2326D-4FB9-6E37-A90F-A09D48585B35";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 21 0 29 0 39 0 47 0 52 0;
	setAttr -s 6 ".kit[0:5]"  18 10 10 10 10 10;
	setAttr -s 6 ".kot[0:5]"  18 5 5 5 5 5;
createNode animCurveTA -n "PALbot_L_Pinky02_ctrl_rotateZ";
	rename -uid "BDAE9123-4284-34E8-AC35-ACA5BE5D9045";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 21 0 29 0 39 0 47 0 52 0;
	setAttr -s 6 ".kit[0:5]"  18 10 10 10 10 10;
	setAttr -s 6 ".kot[0:5]"  18 5 5 5 5 5;
createNode animCurveTA -n "PALbot_L_Ring02_ctrl_rotateX";
	rename -uid "562EDE26-4E17-28A8-4729-ECB73BE37FDE";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 32.52414411341428 21 32.52414411341428
		 29 32.52414411341428 39 32.52414411341428 47 32.52414411341428 52 90;
	setAttr -s 6 ".kit[0:5]"  18 10 10 10 10 10;
	setAttr -s 6 ".kot[0:5]"  18 5 5 5 5 5;
createNode animCurveTA -n "PALbot_L_Ring02_ctrl_rotateY";
	rename -uid "5BED1862-4190-01CD-A289-CA95E3F041A7";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 21 0 29 0 39 0 47 0 52 0;
	setAttr -s 6 ".kit[0:5]"  18 10 10 10 10 10;
	setAttr -s 6 ".kot[0:5]"  18 5 5 5 5 5;
createNode animCurveTA -n "PALbot_L_Ring02_ctrl_rotateZ";
	rename -uid "A07A4676-4CCE-D2F9-9527-8086A9F3CE43";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 21 0 29 0 39 0 47 0 52 0;
	setAttr -s 6 ".kit[0:5]"  18 10 10 10 10 10;
	setAttr -s 6 ".kot[0:5]"  18 5 5 5 5 5;
createNode animCurveTL -n "PALbot_L_Pinky02_ctrl_translateX";
	rename -uid "C873C72A-4C93-7D10-562F-05A0F9DD011A";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 21 0 29 0 39 0 47 0 52 0;
	setAttr -s 6 ".kit[0:5]"  18 10 10 10 10 10;
	setAttr -s 6 ".kot[0:5]"  18 5 5 5 5 5;
createNode animCurveTL -n "PALbot_L_Pinky02_ctrl_translateY";
	rename -uid "DA551821-458C-8389-2DF3-00B0A66F600F";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 21 0 29 0 39 0 47 0 52 0;
	setAttr -s 6 ".kit[0:5]"  18 10 10 10 10 10;
	setAttr -s 6 ".kot[0:5]"  18 5 5 5 5 5;
createNode animCurveTL -n "PALbot_L_Pinky02_ctrl_translateZ";
	rename -uid "4099574A-41D2-F248-B2A5-26ABB9B41EC9";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 21 0 29 0 39 0 47 0 52 0;
	setAttr -s 6 ".kit[0:5]"  18 10 10 10 10 10;
	setAttr -s 6 ".kot[0:5]"  18 5 5 5 5 5;
createNode animCurveTL -n "PALbot_L_Middle02_ctrl_translateX";
	rename -uid "6A467EF4-4D68-A1B9-189E-0680BB02A6B2";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 21 0 29 0 39 0 47 0 52 0;
	setAttr -s 6 ".kit[0:5]"  18 10 10 10 10 10;
	setAttr -s 6 ".kot[0:5]"  18 5 5 5 5 5;
createNode animCurveTL -n "PALbot_L_Middle02_ctrl_translateY";
	rename -uid "34A5844D-4C7F-A9AF-FC2C-D68F7F89528B";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 21 0 29 0 39 0 47 0 52 0;
	setAttr -s 6 ".kit[0:5]"  18 10 10 10 10 10;
	setAttr -s 6 ".kot[0:5]"  18 5 5 5 5 5;
createNode animCurveTL -n "PALbot_L_Middle02_ctrl_translateZ";
	rename -uid "1062E824-463C-E185-768B-99AAD56D543F";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 21 0 29 0 39 0 47 0 52 0;
	setAttr -s 6 ".kit[0:5]"  18 10 10 10 10 10;
	setAttr -s 6 ".kot[0:5]"  18 5 5 5 5 5;
createNode animCurveTL -n "PALbot_L_Index02_ctrl_translateX";
	rename -uid "133FDFE0-4B10-7BCF-877B-A0A0C000B0F1";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 21 0 29 0 39 0 47 0 52 0;
	setAttr -s 6 ".kit[0:5]"  18 10 10 10 10 10;
	setAttr -s 6 ".kot[0:5]"  18 5 5 5 5 5;
createNode animCurveTL -n "PALbot_L_Index02_ctrl_translateY";
	rename -uid "7C6C4281-423F-A55F-B69B-E295D24F6241";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 21 0 29 0 39 0 47 0 52 0;
	setAttr -s 6 ".kit[0:5]"  18 10 10 10 10 10;
	setAttr -s 6 ".kot[0:5]"  18 5 5 5 5 5;
createNode animCurveTL -n "PALbot_L_Index02_ctrl_translateZ";
	rename -uid "FD416C18-4E96-7FC1-9AFD-9D9B578C2AA6";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 21 0 29 0 39 0 47 0 52 0;
	setAttr -s 6 ".kit[0:5]"  18 10 10 10 10 10;
	setAttr -s 6 ".kot[0:5]"  18 5 5 5 5 5;
createNode animCurveTL -n "PALbot_L_Ring02_ctrl_translateX";
	rename -uid "6F9CDBF4-43F6-1A88-A919-0F93094D2755";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 21 0 29 0 39 0 47 0 52 0;
	setAttr -s 6 ".kit[0:5]"  18 10 10 10 10 10;
	setAttr -s 6 ".kot[0:5]"  18 5 5 5 5 5;
createNode animCurveTL -n "PALbot_L_Ring02_ctrl_translateY";
	rename -uid "744F035A-437E-660C-71A9-5EB83239648F";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 21 0 29 0 39 0 47 0 52 0;
	setAttr -s 6 ".kit[0:5]"  18 10 10 10 10 10;
	setAttr -s 6 ".kot[0:5]"  18 5 5 5 5 5;
createNode animCurveTL -n "PALbot_L_Ring02_ctrl_translateZ";
	rename -uid "BD4FBCEC-445A-77ED-4D29-979B06379BE3";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 21 0 29 0 39 0 47 0 52 0;
	setAttr -s 6 ".kit[0:5]"  18 10 10 10 10 10;
	setAttr -s 6 ".kot[0:5]"  18 5 5 5 5 5;
createNode animCurveTA -n "PALbot_L_Pinky01_ctrl_rotateX";
	rename -uid "FD5AADD6-4656-A955-F690-19B248439D24";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 21.10569190260437 21 21.10569190260437
		 29 21.10569190260437 39 21.10569190260437 47 21.10569190260437 52 90;
	setAttr -s 6 ".kit[0:5]"  18 10 10 10 10 10;
	setAttr -s 6 ".kot[0:5]"  18 5 5 5 5 5;
createNode animCurveTA -n "PALbot_L_Pinky01_ctrl_rotateY";
	rename -uid "305D8B9F-4AB3-11B7-1B37-C498C1898630";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 21 0 29 0 39 0 47 0 52 0;
	setAttr -s 6 ".kit[0:5]"  18 10 10 10 10 10;
	setAttr -s 6 ".kot[0:5]"  18 5 5 5 5 5;
createNode animCurveTA -n "PALbot_L_Pinky01_ctrl_rotateZ";
	rename -uid "82957749-490D-73D9-266F-E891C499AEB9";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 21 0 29 0 39 0 47 0 52 0;
	setAttr -s 6 ".kit[0:5]"  18 10 10 10 10 10;
	setAttr -s 6 ".kot[0:5]"  18 5 5 5 5 5;
createNode animCurveTL -n "PALbot_L_Pinky01_ctrl_translateX";
	rename -uid "BE98EA71-428B-197E-A012-20992318E97F";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 21 0 29 0 39 0 47 0 52 0;
	setAttr -s 6 ".kit[0:5]"  18 10 10 10 10 10;
	setAttr -s 6 ".kot[0:5]"  18 5 5 5 5 5;
createNode animCurveTL -n "PALbot_L_Pinky01_ctrl_translateY";
	rename -uid "0895F7E9-4360-EE62-7056-A184547C18D1";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 21 0 29 0 39 0 47 0 52 0;
	setAttr -s 6 ".kit[0:5]"  18 10 10 10 10 10;
	setAttr -s 6 ".kot[0:5]"  18 5 5 5 5 5;
createNode animCurveTL -n "PALbot_L_Pinky01_ctrl_translateZ";
	rename -uid "3D9377A0-432F-8D94-07F6-B4AB57EA52EE";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 21 0 29 0 39 0 47 0 52 0;
	setAttr -s 6 ".kit[0:5]"  18 10 10 10 10 10;
	setAttr -s 6 ".kot[0:5]"  18 5 5 5 5 5;
createNode animCurveTA -n "PALbot_L_Ring01_ctrl_rotateX";
	rename -uid "8A6D87EE-470B-3E1C-8106-1AB3024D5B0C";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 33.964841670227003 21 33.964841670227003
		 29 33.964841670227003 39 33.964841670227003 47 33.964841670227003 52 90;
	setAttr -s 6 ".kit[0:5]"  18 10 10 10 10 10;
	setAttr -s 6 ".kot[0:5]"  18 5 5 5 5 5;
createNode animCurveTA -n "PALbot_L_Ring01_ctrl_rotateY";
	rename -uid "992121DD-4C3B-777B-8146-638717B115FE";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 21 0 29 0 39 0 47 0 52 0;
	setAttr -s 6 ".kit[0:5]"  18 10 10 10 10 10;
	setAttr -s 6 ".kot[0:5]"  18 5 5 5 5 5;
createNode animCurveTA -n "PALbot_L_Ring01_ctrl_rotateZ";
	rename -uid "CD047CBC-4CC5-C075-B0F5-5B9DE22B246B";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 21 0 29 0 39 0 47 0 52 0;
	setAttr -s 6 ".kit[0:5]"  18 10 10 10 10 10;
	setAttr -s 6 ".kot[0:5]"  18 5 5 5 5 5;
createNode animCurveTL -n "PALbot_L_Ring01_ctrl_translateX";
	rename -uid "6E7971CE-4F54-71E9-C01A-9FA50A1120CC";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 21 0 29 0 39 0 47 0 52 0;
	setAttr -s 6 ".kit[0:5]"  18 10 10 10 10 10;
	setAttr -s 6 ".kot[0:5]"  18 5 5 5 5 5;
createNode animCurveTL -n "PALbot_L_Ring01_ctrl_translateY";
	rename -uid "0CF1ECFC-41CB-DC1C-4DFD-97B0443C4B27";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 21 0 29 0 39 0 47 0 52 0;
	setAttr -s 6 ".kit[0:5]"  18 10 10 10 10 10;
	setAttr -s 6 ".kot[0:5]"  18 5 5 5 5 5;
createNode animCurveTL -n "PALbot_L_Ring01_ctrl_translateZ";
	rename -uid "64F2C978-4500-C6B0-BEC0-639571964BFB";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 21 0 29 0 39 0 47 0 52 0;
	setAttr -s 6 ".kit[0:5]"  18 10 10 10 10 10;
	setAttr -s 6 ".kot[0:5]"  18 5 5 5 5 5;
createNode animCurveTA -n "PALbot_R_Pinky01_ctrl_rotateX";
	rename -uid "24782F51-4854-B58D-4830-DAABA0B45922";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 68.641095966616817 21 68.641095966616817
		 29 68.641095966616817 39 68.641095966616817 47 68.641095966616817;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTA -n "PALbot_R_Pinky01_ctrl_rotateY";
	rename -uid "0D9B2B84-4469-E10E-7D13-8D84DE64DA8D";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTA -n "PALbot_R_Pinky01_ctrl_rotateZ";
	rename -uid "E403FD21-4346-0700-1DDE-E39E18DF3C71";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTL -n "PALbot_R_Pinky01_ctrl_translateX";
	rename -uid "5371143A-4B1C-1CDC-27F0-88BE31D9E185";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTL -n "PALbot_R_Pinky01_ctrl_translateY";
	rename -uid "4297447D-4833-1905-8191-4B85085F5EDD";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTL -n "PALbot_R_Pinky01_ctrl_translateZ";
	rename -uid "16DE03FE-45B7-CC55-101B-69AA7E5C442D";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTA -n "PALbot_R_Ring01_ctrl_rotateX";
	rename -uid "E0B60D47-4E61-D1AB-7B89-48A3A56FF09C";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 66.565289216175842 21 66.565289216175842
		 29 66.565289216175842 39 66.565289216175842 47 66.565289216175842;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTA -n "PALbot_R_Ring01_ctrl_rotateY";
	rename -uid "DA910CF4-4C21-F602-E500-72AC13DE4EFB";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTA -n "PALbot_R_Ring01_ctrl_rotateZ";
	rename -uid "CB934DCA-4AEF-2BD9-9BC7-0598F3A46599";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTL -n "PALbot_R_Ring01_ctrl_translateX";
	rename -uid "E7D6ED58-4B2C-3422-AF27-ED9AEC4BE030";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTL -n "PALbot_R_Ring01_ctrl_translateY";
	rename -uid "B9CD72D8-4AAF-015C-8A09-64907281B0D6";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTL -n "PALbot_R_Ring01_ctrl_translateZ";
	rename -uid "5300392B-48F9-B681-0682-7AB458ABDF66";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTA -n "PALbot_R_Pinky02_ctrl_rotateX";
	rename -uid "3298EF4D-429F-5BDD-F422-D5A7B3E8B1F6";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 8.3679137169186575 21 8.3679137169186575
		 29 8.3679137169186575 39 8.3679137169186575 47 8.3679137169186575;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTA -n "PALbot_R_Pinky02_ctrl_rotateY";
	rename -uid "AE9D3748-4E0C-5F00-196C-BA9FC1593C68";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTA -n "PALbot_R_Pinky02_ctrl_rotateZ";
	rename -uid "6FCFA855-44AA-526F-B135-059B432026EC";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTL -n "PALbot_R_Pinky02_ctrl_translateX";
	rename -uid "EC653697-4211-9362-977E-03AE9E936726";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTL -n "PALbot_R_Pinky02_ctrl_translateY";
	rename -uid "27D7F08C-47EF-8721-EA05-B5866176DF3B";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTL -n "PALbot_R_Pinky02_ctrl_translateZ";
	rename -uid "D5933488-4249-AC72-9BF6-C4BB101FD690";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTA -n "PALbot_R_Ring02_ctrl_rotateX";
	rename -uid "F5AA41F2-4931-47A9-66A6-66BD0B3CC3F7";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 26.823993207138496 21 26.823993207138496
		 29 26.823993207138496 39 26.823993207138496 47 26.823993207138496;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTA -n "PALbot_R_Ring02_ctrl_rotateY";
	rename -uid "25AFDAEE-49C0-6359-B391-4BAC1705AABD";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTA -n "PALbot_R_Ring02_ctrl_rotateZ";
	rename -uid "CFE6A4C0-49A6-4C98-73BE-C79807436828";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTL -n "PALbot_R_Ring02_ctrl_translateX";
	rename -uid "CFB75944-4700-EAEB-25AC-6FB881032D46";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTL -n "PALbot_R_Ring02_ctrl_translateY";
	rename -uid "EE45F5D3-4F78-A0C0-2B02-68AAE3B14900";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTL -n "PALbot_R_Ring02_ctrl_translateZ";
	rename -uid "D514754A-4C0C-1A2D-6957-2786EA9EC610";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTA -n "PALbot_R_Middle01_ctrl_rotateX";
	rename -uid "24FE0ACD-4901-594F-BD1B-2F8C9EC0BECB";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 78.872809909301125 21 78.872809909301125
		 29 78.872809909301125 39 78.872809909301125 47 78.872809909301125;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTA -n "PALbot_R_Middle01_ctrl_rotateY";
	rename -uid "BB7EB67E-44C7-54E9-E726-4389EDE1E51B";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTA -n "PALbot_R_Middle01_ctrl_rotateZ";
	rename -uid "A2566A36-46FA-92A3-A294-BBB0148B7892";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTL -n "PALbot_R_Middle01_ctrl_translateX";
	rename -uid "270BBB14-45C5-3F41-FF5F-06BA31F1426B";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTL -n "PALbot_R_Middle01_ctrl_translateY";
	rename -uid "FC89D0B8-4FA3-C839-D9B8-9D819973BE4E";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTL -n "PALbot_R_Middle01_ctrl_translateZ";
	rename -uid "D93FE05A-430B-5A14-07BD-DC9FB110B29D";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTA -n "PALbot_R_Index01_ctrl_rotateX";
	rename -uid "C8539511-4BF8-98FB-FD7E-ECAF5D2C2C64";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 73.069347075077559 21 73.069347075077559
		 29 73.069347075077559 39 73.069347075077559 47 73.069347075077559;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTA -n "PALbot_R_Index01_ctrl_rotateY";
	rename -uid "0B8D25F6-4B0C-0CF6-89B8-AAA36BEA06B6";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTA -n "PALbot_R_Index01_ctrl_rotateZ";
	rename -uid "87FC74B3-40D2-124A-7450-D98A4985083B";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTL -n "PALbot_R_Index01_ctrl_translateX";
	rename -uid "35247E82-4850-8344-9AC7-D4A3599F5ECB";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTL -n "PALbot_R_Index01_ctrl_translateY";
	rename -uid "A472B0CA-47C8-A289-E13B-A0AB0621E50D";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTL -n "PALbot_R_Index01_ctrl_translateZ";
	rename -uid "294A2E01-452F-C4E9-4DEF-518C5EA37627";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTA -n "PALbot_chestUp_ctrl_rotateX";
	rename -uid "0D4891CB-4CF8-4873-A74E-C4928A6DB975";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 21 0 23 5.8715084644048625 24 15.530734919061091
		 29 15.530734919061091 30 15.530734919061091 33 16.136877930900496 39 0.21480547541863421
		 47 -10.849162444240243 52 -6.0057652352266464;
	setAttr -s 10 ".kit[0:9]"  18 10 10 10 10 10 10 10 
		10 10;
	setAttr -s 10 ".kot[0:9]"  18 5 5 5 5 10 10 5 
		5 5;
createNode animCurveTA -n "PALbot_chestUp_ctrl_rotateY";
	rename -uid "D1D2F61B-409E-4618-1B80-FDA4A63B55B0";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -16.455365320767367 21 -16.455365320767367
		 23 -16.335435221553897 24 -16.335435221553894 29 -16.335435221553894 30 -16.335435221553894
		 33 22.408363848376109 39 -32.353316132232166 47 -30.747259836897729 52 -11.046873722394146;
	setAttr -s 10 ".kit[0:9]"  18 10 10 10 10 10 10 10 
		10 10;
	setAttr -s 10 ".kot[0:9]"  18 5 5 5 5 10 10 5 
		5 5;
createNode animCurveTA -n "PALbot_chestUp_ctrl_rotateZ";
	rename -uid "90CB0E8B-4CCB-BA4B-F3D5-39A2481652EB";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 21 0 23 7.1148880572837827 24 7.1148880572837951
		 29 7.1148880572837951 30 7.1148880572837951 33 17.878208765913183 39 8.3877351949607828
		 47 14.283236749342459 52 4.2409495318204424;
	setAttr -s 10 ".kit[0:9]"  18 10 10 10 10 10 10 10 
		10 10;
	setAttr -s 10 ".kot[0:9]"  18 5 5 5 5 10 10 5 
		5 5;
createNode animCurveTL -n "PALbot_chestUp_ctrl_translateX";
	rename -uid "B0625085-4392-749A-3183-4B960E769388";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 21 0 23 0 24 4.1513518909625132e-17
		 29 4.1513518909625132e-17 30 0 33 4.1513518909625132e-17 39 0 47 0 52 0.11309482855581218;
	setAttr -s 10 ".kit[0:9]"  18 10 10 10 10 10 10 10 
		10 10;
	setAttr -s 10 ".kot[0:9]"  18 5 5 5 5 10 10 5 
		5 5;
createNode animCurveTL -n "PALbot_chestUp_ctrl_translateY";
	rename -uid "2C30F452-49FA-06DC-E397-A3B4D79493B8";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 21 0 23 0 24 -0.15075971633176799 29 -0.15075971633176799
		 30 -0.15075971633176799 33 -0.15075971633176799 39 -0.15075971633176799 47 -0.15075971633176799
		 52 -0.17010830496630799;
	setAttr -s 10 ".kit[0:9]"  18 10 10 10 10 10 10 10 
		10 10;
	setAttr -s 10 ".kot[0:9]"  18 5 5 5 5 10 10 5 
		5 5;
createNode animCurveTL -n "PALbot_chestUp_ctrl_translateZ";
	rename -uid "2A75C570-4C20-2E00-56BD-F09CFF5C797B";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 21 0 23 0 24 0.33898360685324747 29 0.33898360685324747
		 30 0.33898360685324747 33 0.33898360685324747 39 0.33898360685324747 47 0.33898360685324747
		 52 0.29455413896747423;
	setAttr -s 10 ".kit[0:9]"  18 10 10 10 10 10 10 10 
		10 10;
	setAttr -s 10 ".kot[0:9]"  18 5 5 5 5 10 10 5 
		5 5;
createNode animCurveTU -n "PALbot_chestUp_ctrl_secondary_vis";
	rename -uid "B31E04B7-466E-8CC5-C545-24A5653EC0FE";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 21 0 23 0 24 0 29 0 30 0 33 0 39 0 47 0
		 52 0;
	setAttr -s 10 ".kit[0:9]"  18 10 10 10 10 10 10 10 
		10 10;
	setAttr -s 10 ".kot[0:9]"  18 5 5 5 5 10 10 5 
		5 5;
createNode animCurveTA -n "PALbot_L_ShoulderRotate_ctrl_rotateZ1";
	rename -uid "DFF562DF-40AC-6E45-70F9-3FBA0733E6B1";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -8.3217600274067696 21 -8.3217600274067696
		 29 -8.3217600274067696 36 70.177012292343477 37 57.341256335716515 38 44.36401546046671
		 39 27.97339745750638 47 97.93039258245787 52 76.38328930031706;
	setAttr -s 9 ".kit[0:8]"  18 10 10 10 10 10 10 10 
		10;
	setAttr -s 9 ".kot[0:8]"  18 5 10 5 5 5 5 5 
		5;
createNode animCurveTL -n "PALbot_L_ShoulderRotate_ctrl_translateX1";
	rename -uid "D7B614D6-43D6-A17F-D5D1-B38544846FAD";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 21 0 29 0 36 0 37 0 38 0 39 0 47 0 52 0;
	setAttr -s 9 ".kit[0:8]"  18 10 10 10 10 10 10 10 
		10;
	setAttr -s 9 ".kot[0:8]"  18 5 10 5 5 5 5 5 
		5;
createNode animCurveTL -n "PALbot_L_ShoulderRotate_ctrl_translateY1";
	rename -uid "8CA8DB22-4650-3FDD-22FD-51B8A3230222";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 21 0 29 0 36 0 37 0 38 0 39 0 47 0 52 0;
	setAttr -s 9 ".kit[0:8]"  18 10 10 10 10 10 10 10 
		10;
	setAttr -s 9 ".kot[0:8]"  18 5 10 5 5 5 5 5 
		5;
createNode animCurveTL -n "PALbot_L_ShoulderRotate_ctrl_translateZ1";
	rename -uid "84042F40-4407-F48C-F2C3-FD9007F6BA85";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 21 0 29 0 36 0 37 0 38 0 39 0 47 0 52 0;
	setAttr -s 9 ".kit[0:8]"  18 10 10 10 10 10 10 10 
		10;
	setAttr -s 9 ".kot[0:8]"  18 5 10 5 5 5 5 5 
		5;
createNode animCurveTA -n "PALbot_head_ctrl_rotateX";
	rename -uid "E5D4BADB-45C1-04AE-B3A8-579678874D04";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.77400305095250799 21 -0.77400305095250799
		 22 7.2425397218735288 23 7.2425397218735288 26 -14.866905128561759 29 -14.866905128561759
		 33 -17.186646628455108 39 -27.662160120349373 47 -122.08438475075393 52 -9.5813369956935173;
	setAttr -s 10 ".kit[0:9]"  18 10 10 10 10 10 10 10 
		10 10;
	setAttr -s 10 ".kot[0:9]"  18 5 5 10 5 10 10 5 
		5 5;
createNode animCurveTA -n "PALbot_head_ctrl_rotateY";
	rename -uid "8F339665-4DEE-E0D9-B651-17849EC21B2D";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -12.039406007334845 21 -12.039406007334845
		 22 -22.405594056526215 23 -22.405594056526215 26 -10.375529619402823 29 -10.375529619402823
		 33 -39.857239336009698 39 54.698814007165964 47 71.539876243531168 52 38.198072693304972;
	setAttr -s 10 ".kit[0:9]"  18 10 10 10 10 10 10 10 
		10 10;
	setAttr -s 10 ".kot[0:9]"  18 5 5 10 5 10 10 5 
		5 5;
createNode animCurveTA -n "PALbot_head_ctrl_rotateZ";
	rename -uid "C3E0E9B7-47BA-13F7-719D-A7A6766F9853";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 3.7057927889720252 21 3.7057927889720252
		 22 13.854958273439145 23 13.854958273439145 26 0.21975535661999712 29 0.21975535661999712
		 33 13.313381058454024 39 -12.234619872533663 47 -112.53576911893482 52 -0.91045575870258688;
	setAttr -s 10 ".kit[0:9]"  18 10 10 10 10 10 10 10 
		10 10;
	setAttr -s 10 ".kot[0:9]"  18 5 5 10 5 10 10 5 
		5 5;
createNode animCurveTL -n "PALbot_head_ctrl_translateX";
	rename -uid "C851C850-40FD-A0CC-C08E-57B2F06D3203";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 21 0 22 -0.70342786150903891 23 -0.81279878732550925
		 26 -0.43249586119134509 29 -0.43249586119134509 33 -0.61064714645986029 39 -0.6044430400217411
		 47 -0.17926369695402425 52 -0.17926369695402425;
	setAttr -s 10 ".kit[0:9]"  18 10 10 10 10 10 10 10 
		10 10;
	setAttr -s 10 ".kot[0:9]"  18 5 5 10 5 10 10 5 
		5 5;
createNode animCurveTL -n "PALbot_head_ctrl_translateY";
	rename -uid "DE72772C-469E-DE42-9342-D6B1E336BE5B";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 21 0 22 -0.33969139285016681 23 -0.57788564585273405
		 26 -0.51726837809681214 29 -0.51726837809681214 33 -0.35923670612265995 39 -0.82621818183782725
		 47 -0.42331465180305583 52 -0.42331465180305583;
	setAttr -s 10 ".kit[0:9]"  18 10 10 10 10 10 10 10 
		10 10;
	setAttr -s 10 ".kot[0:9]"  18 5 5 10 5 10 10 5 
		5 5;
createNode animCurveTL -n "PALbot_head_ctrl_translateZ";
	rename -uid "F34A48D0-4A4B-07C1-2894-32BB5FB64AFB";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 21 0 22 0.43423778909157223 23 0.78573695399461629
		 26 0.6674516693665592 29 0.6674516693665592 33 -0.52047469190605355 39 0.75567670543270626
		 47 -0.079800273143138131 52 -0.079800273143138131;
	setAttr -s 10 ".kit[0:9]"  18 10 10 10 10 10 10 10 
		10 10;
	setAttr -s 10 ".kot[0:9]"  18 5 5 10 5 10 10 5 
		5 5;
createNode animCurveTU -n "PALbot_head_ctrl_Space_switch";
	rename -uid "31830A86-40F4-6855-C8B7-1B8A098D331F";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 21 0 22 0 23 0 26 0 29 0 33 0 39 0 47 0
		 52 0;
	setAttr -s 10 ".kit[3:9]"  10 9 10 10 9 9 9;
	setAttr -s 10 ".kot[0:9]"  5 5 5 10 5 10 10 5 
		5 5;
createNode animCurveTU -n "PALbot_head_ctrl_FaceLight";
	rename -uid "FF43370E-44FF-AEBB-AECA-05B9F9F307C2";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 21 0 22 0 23 0 26 0 29 0 33 0 39 0 47 0
		 52 0;
	setAttr -s 10 ".kit[3:9]"  10 9 10 10 9 9 9;
	setAttr -s 10 ".kot[0:9]"  5 5 5 10 5 10 10 5 
		5 5;
createNode animCurveTU -n "PALbot_head_ctrl_Led_color";
	rename -uid "A4DB479F-4A6E-46CB-EC32-08BB739E79A3";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 2 21 2 22 2 23 2 26 2 29 2 33 2 39 2 47 2
		 52 2;
	setAttr -s 10 ".kit[3:9]"  10 9 10 10 9 9 9;
	setAttr -s 10 ".kot[0:9]"  5 5 5 10 5 10 10 5 
		5 5;
createNode animCurveTU -n "PALbot_head_ctrl_Face_Drawing";
	rename -uid "BFD0D988-4C8A-83BC-5904-34A0DDBCD63F";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 2 21 2 22 2 23 2 26 2 29 2 33 2 39 2 47 2
		 52 2;
	setAttr -s 10 ".kit[3:9]"  10 9 10 10 9 9 9;
	setAttr -s 10 ".kot[0:9]"  5 5 5 10 5 10 10 5 
		5 5;
createNode animCurveTA -n "PALbot_MAIN_rotateX";
	rename -uid "43F610B0-417C-1BCC-2775-72B893AECE5E";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
createNode animCurveTA -n "PALbot_MAIN_rotateY";
	rename -uid "CC57B646-499F-EB74-2CAF-6FB9D6B91C0A";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 180 21 180 29 180 39 180 47 180;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
createNode animCurveTA -n "PALbot_MAIN_rotateZ";
	rename -uid "5F19FE2C-4648-1F89-70E1-15A389FE4455";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
createNode animCurveTA -n "PALbot_root_rotateX";
	rename -uid "F35CD168-4D3D-073F-5BFC-CCAA0AFCA029";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTA -n "PALbot_root_rotateY";
	rename -uid "75B51936-4BED-F0C4-3613-948721473D21";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTA -n "PALbot_root_rotateZ";
	rename -uid "AE177595-4930-4143-9D7E-FA9621D1CCBD";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTA -n "PALbot_L_Engine_ctrl_rotateX";
	rename -uid "B62BD0DE-4E3E-33F5-1C2E-FABC7B59D396";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTA -n "PALbot_L_Engine_ctrl_rotateY";
	rename -uid "020616B5-4BA1-BF2B-1FCC-189E4A07288A";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTA -n "PALbot_L_Engine_ctrl_rotateZ";
	rename -uid "2669906C-4092-5BFA-7AA0-C1AB8B10DB08";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTA -n "PALbot_L_IK_heel_lift_tip_rotateX";
	rename -uid "2303204C-4651-C114-C9D3-B5A6EE0CD906";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTA -n "PALbot_L_IK_heel_lift_tip_rotateY";
	rename -uid "D9640F1B-4C8D-4141-F12E-F5B5451C7749";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTA -n "PALbot_L_IK_heel_lift_tip_rotateZ";
	rename -uid "461A1DD9-49BB-3679-AD35-20BE50B18498";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTA -n "PALbot_L_IK_foot_tip_rotateX";
	rename -uid "C9C09329-42F0-D70C-DF48-FEA6888AD406";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTA -n "PALbot_L_IK_foot_tip_rotateY";
	rename -uid "9E56EA2C-4D8E-9BF5-3B1F-B19EB8D0FDF5";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTA -n "PALbot_L_IK_foot_tip_rotateZ";
	rename -uid "7E086625-4719-D364-111A-18BD131F7E7E";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTA -n "PALbot_L_IK_footBall_ctrl_rotateX";
	rename -uid "C86B855D-4749-83EB-3DC4-A6B8B1F84865";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTA -n "PALbot_L_IK_footBall_ctrl_rotateY";
	rename -uid "FA39C697-4E04-F561-B782-59A574A3F5CD";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTA -n "PALbot_L_IK_footBall_ctrl_rotateZ";
	rename -uid "FF69D571-4096-FAC2-625F-84A8CDC85083";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTA -n "PALbot_L_foot_secondary_rotateX";
	rename -uid "E2B73558-4A98-9824-7E52-A9A1E3274E21";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTA -n "PALbot_L_foot_secondary_rotateY";
	rename -uid "D0028B17-4949-B025-EB9A-3D8AA1C22697";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTA -n "PALbot_L_foot_secondary_rotateZ";
	rename -uid "B787981E-4880-B401-ABBE-D2AA5CE11B95";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTA -n "PALbot_L_footSec_reshape01_rotateX";
	rename -uid "DDBE7C41-4736-6122-913A-EF86A4E3843A";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTA -n "PALbot_L_footSec_reshape01_rotateY";
	rename -uid "388AD25B-4509-282B-D9B6-6A811D219421";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTA -n "PALbot_L_footSec_reshape01_rotateZ";
	rename -uid "34077AD7-4E20-0A97-5309-9FA11194BB75";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTA -n "PALbot_L_footSec_reshape02_rotateX";
	rename -uid "554AE7AC-4086-F573-AD6F-AAB80DA7ED35";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTA -n "PALbot_L_footSec_reshape02_rotateY";
	rename -uid "D88B1C45-437F-CC6E-FED2-B9958B2700BA";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTA -n "PALbot_L_footSec_reshape02_rotateZ";
	rename -uid "D01F7473-4B18-80E3-DD09-CA9CA92602E5";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTA -n "PALbot_R_Engine_ctrl_rotateX";
	rename -uid "D6BB5560-48B9-EF78-6073-40833D808905";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTA -n "PALbot_R_Engine_ctrl_rotateY";
	rename -uid "9EA652E3-4CD1-9392-0836-528831A36505";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTA -n "PALbot_R_Engine_ctrl_rotateZ";
	rename -uid "6F9650C0-4000-1EC6-0755-E6960E1DB70A";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTA -n "PALbot_R_IK_heel_lift_tip_rotateX";
	rename -uid "9493C4C8-42A2-74DE-E2DE-61A0F166689A";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTA -n "PALbot_R_IK_heel_lift_tip_rotateY";
	rename -uid "DCC77A4A-45C7-8A91-671D-DFA30297ABC0";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTA -n "PALbot_R_IK_heel_lift_tip_rotateZ";
	rename -uid "1AA4E460-4223-6DBF-573E-6CBC912365A3";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTA -n "PALbot_R_IK_foot_tip_rotateX";
	rename -uid "12F57669-44D8-78DB-ED24-A6B41C1DF2FB";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTA -n "PALbot_R_IK_foot_tip_rotateY";
	rename -uid "BDC3BE00-45C4-5872-6960-6FB5221E14F1";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTA -n "PALbot_R_IK_foot_tip_rotateZ";
	rename -uid "9B239BD0-48CF-4E1D-AD9D-9EA9B2D05233";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTA -n "PALbot_R_IK_footBall_ctrl_rotateX";
	rename -uid "001CFEA0-495E-E7E8-2F32-ADA0A9113AF3";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTA -n "PALbot_R_IK_footBall_ctrl_rotateY";
	rename -uid "232F5995-4B5C-F121-291E-BF8E41452CB6";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTA -n "PALbot_R_IK_footBall_ctrl_rotateZ";
	rename -uid "49D152F2-41B0-6EA6-25CE-4BBFB13C4CD5";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTA -n "PALbot_R_foot_secondary_rotateX";
	rename -uid "BB9ECCC6-4BE8-7E85-52D0-E68D2E1F9B80";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTA -n "PALbot_R_foot_secondary_rotateY";
	rename -uid "BCEDD8D9-4E25-FC8D-A4AF-CD8C420F46AF";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTA -n "PALbot_R_foot_secondary_rotateZ";
	rename -uid "DD049B12-4DE2-D8FA-0C75-01A263936C6F";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTA -n "PALbot_R_footSec_reshape01_rotateX";
	rename -uid "2D24CC67-4CFA-053E-B336-F09BCD7FECD6";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTA -n "PALbot_R_footSec_reshape01_rotateY";
	rename -uid "A42E6278-4F46-EEC7-351B-3689EE14D41B";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTA -n "PALbot_R_footSec_reshape01_rotateZ";
	rename -uid "A321822E-416F-8C5F-2D6E-66B3B5552BFC";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTA -n "PALbot_R_footSec_reshape02_rotateX";
	rename -uid "6E331A75-4BBC-673B-764D-388D5509BE34";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTA -n "PALbot_R_footSec_reshape02_rotateY";
	rename -uid "D2731A69-49A8-914B-EFE5-3A9F56534525";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTA -n "PALbot_R_footSec_reshape02_rotateZ";
	rename -uid "D70CD09D-48E4-FE20-62AF-C2AACDEB0FA7";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTA -n "PALbot_L_Index01_ctrl_rotateX";
	rename -uid "7AEDAFA0-42C2-AD97-C7B7-B8B8A3D61F8D";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 21 0 29 0 39 0 47 0 52 90;
	setAttr -s 6 ".kit[0:5]"  18 10 10 10 10 10;
	setAttr -s 6 ".kot[0:5]"  18 5 5 5 5 5;
createNode animCurveTA -n "PALbot_L_Index01_ctrl_rotateY";
	rename -uid "5E897BE4-4EFE-F502-FA52-648A29DBAB2E";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 21 0 29 0 39 0 47 0 52 0;
	setAttr -s 6 ".kit[0:5]"  18 10 10 10 10 10;
	setAttr -s 6 ".kot[0:5]"  18 5 5 5 5 5;
createNode animCurveTA -n "PALbot_L_Index01_ctrl_rotateZ";
	rename -uid "895C8CC5-47DF-1D51-1E8C-27B673561C7F";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 21 0 29 0 39 0 47 0 52 0;
	setAttr -s 6 ".kit[0:5]"  18 10 10 10 10 10;
	setAttr -s 6 ".kot[0:5]"  18 5 5 5 5 5;
createNode animCurveTA -n "PALbot_L_Middle01_ctrl_rotateX";
	rename -uid "6DA50E4D-48BC-C775-FAD2-FF9F7FCA1B75";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 21 0 29 0 39 0 47 0 52 90;
	setAttr -s 6 ".kit[0:5]"  18 10 10 10 10 10;
	setAttr -s 6 ".kot[0:5]"  18 5 5 5 5 5;
createNode animCurveTA -n "PALbot_L_Middle01_ctrl_rotateY";
	rename -uid "63D99EFB-41A0-4BA3-C12F-DD8C5214102E";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 21 0 29 0 39 0 47 0 52 0;
	setAttr -s 6 ".kit[0:5]"  18 10 10 10 10 10;
	setAttr -s 6 ".kot[0:5]"  18 5 5 5 5 5;
createNode animCurveTA -n "PALbot_L_Middle01_ctrl_rotateZ";
	rename -uid "F98E02F5-4254-68FE-E88C-49A9EBE2583B";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 21 0 29 0 39 0 47 0 52 0;
	setAttr -s 6 ".kit[0:5]"  18 10 10 10 10 10;
	setAttr -s 6 ".kot[0:5]"  18 5 5 5 5 5;
createNode animCurveTA -n "PALbot_L_Thumb01_ctrl_rotateX";
	rename -uid "AD219641-4676-2C60-AC23-D3ADF39F2E8A";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 21 0 29 0 39 0 47 0 52 -3.1038946523147852;
	setAttr -s 6 ".kit[0:5]"  18 10 10 10 10 10;
	setAttr -s 6 ".kot[0:5]"  18 5 5 5 5 5;
createNode animCurveTA -n "PALbot_L_Thumb01_ctrl_rotateY";
	rename -uid "4A4828C5-49D4-6B85-A4D0-A18D36C77767";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 21 0 29 0 39 0 47 0 52 -2.0387532258002645;
	setAttr -s 6 ".kit[0:5]"  18 10 10 10 10 10;
	setAttr -s 6 ".kot[0:5]"  18 5 5 5 5 5;
createNode animCurveTA -n "PALbot_L_Thumb01_ctrl_rotateZ";
	rename -uid "5F8D7D0B-40B4-92C0-86F0-47ACA3886034";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 21 0 29 0 39 0 47 0 52 -108.79898175484655;
	setAttr -s 6 ".kit[0:5]"  18 10 10 10 10 10;
	setAttr -s 6 ".kot[0:5]"  18 5 5 5 5 5;
createNode animCurveTA -n "PALbot_L_Thumb02_ctrl_rotateX";
	rename -uid "6E9BEA3B-481F-0DC0-1F1E-98B466B9149F";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 21 0 29 0 39 0 47 0 52 12.000000000000002;
	setAttr -s 6 ".kit[0:5]"  18 10 10 10 10 10;
	setAttr -s 6 ".kot[0:5]"  18 5 5 5 5 5;
createNode animCurveTA -n "PALbot_L_Thumb02_ctrl_rotateY";
	rename -uid "82D4B5C2-4216-70E4-522E-CDB5D347D30B";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 21 0 29 0 39 0 47 0 52 0.0086653835589936834;
	setAttr -s 6 ".kit[0:5]"  18 10 10 10 10 10;
	setAttr -s 6 ".kot[0:5]"  18 5 5 5 5 5;
createNode animCurveTA -n "PALbot_L_Thumb02_ctrl_rotateZ";
	rename -uid "E9BBBA35-4550-79A0-5CFE-BA908E1AA464";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 21 0 29 0 39 0 47 0 52 -0.13678775490339162;
	setAttr -s 6 ".kit[0:5]"  18 10 10 10 10 10;
	setAttr -s 6 ".kot[0:5]"  18 5 5 5 5 5;
createNode animCurveTA -n "PALbot_L_Thumb03_ctrl_rotateX";
	rename -uid "FD05A45A-45B8-898A-4036-2BB66A2FB4CC";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 21 0 29 0 39 0 47 0 52 90;
	setAttr -s 6 ".kit[0:5]"  18 10 10 10 10 10;
	setAttr -s 6 ".kot[0:5]"  18 5 5 5 5 5;
createNode animCurveTA -n "PALbot_L_Thumb03_ctrl_rotateY";
	rename -uid "5CA2C668-4CD1-D28B-6445-1A85D249DAE3";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 21 0 29 0 39 0 47 0 52 0;
	setAttr -s 6 ".kit[0:5]"  18 10 10 10 10 10;
	setAttr -s 6 ".kot[0:5]"  18 5 5 5 5 5;
createNode animCurveTA -n "PALbot_L_Thumb03_ctrl_rotateZ";
	rename -uid "A8598CAB-4745-DD29-19D4-95AD93AC3D28";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 21 0 29 0 39 0 47 0 52 0;
	setAttr -s 6 ".kit[0:5]"  18 10 10 10 10 10;
	setAttr -s 6 ".kot[0:5]"  18 5 5 5 5 5;
createNode animCurveTA -n "PALbot_R_Index02_ctrl_rotateX";
	rename -uid "14789060-4A7E-2EB1-5AE6-47A281AC0F7C";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTA -n "PALbot_R_Index02_ctrl_rotateY";
	rename -uid "45E81D08-4992-9DDF-4E79-2AA00F039EA7";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTA -n "PALbot_R_Index02_ctrl_rotateZ";
	rename -uid "11F03F8D-4791-9F78-20E2-77AC889DCC94";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTA -n "PALbot_R_Middle02_ctrl_rotateX";
	rename -uid "008B7F7F-4C93-5CD0-AB49-AFA6691D2A73";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTA -n "PALbot_R_Middle02_ctrl_rotateY";
	rename -uid "D8D5494B-4DF5-ACB6-8C85-B89C7C9FCC9E";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTA -n "PALbot_R_Middle02_ctrl_rotateZ";
	rename -uid "18C7CADD-4A66-0417-B91E-36A6314DAA33";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTA -n "PALbot_R_Thumb01_ctrl_rotateX";
	rename -uid "A499ECA7-4694-A4D9-8263-1FB04979452E";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTA -n "PALbot_R_Thumb01_ctrl_rotateY";
	rename -uid "7BCBF3CE-41E7-E875-86EF-91A1EBBE9E9E";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTA -n "PALbot_R_Thumb01_ctrl_rotateZ";
	rename -uid "A22BF357-474D-7CE8-BBB4-A28BDDA3D333";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTA -n "PALbot_R_Thumb02_ctrl_rotateX";
	rename -uid "277C2AA4-4DE6-4B36-7AD9-AEB3D761713F";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTA -n "PALbot_R_Thumb02_ctrl_rotateY";
	rename -uid "46691236-4060-5DF5-FEF2-05A004FCEF08";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTA -n "PALbot_R_Thumb02_ctrl_rotateZ";
	rename -uid "DAAC09AD-4627-BBCB-26FD-F58D552ED9DE";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTA -n "PALbot_R_Thumb03_ctrl_rotateX";
	rename -uid "D8A757AB-4901-C642-696F-8687F536BA8A";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTA -n "PALbot_R_Thumb03_ctrl_rotateY";
	rename -uid "F45BF32C-4898-5367-D38A-2EAD750CBC7B";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTA -n "PALbot_R_Thumb03_ctrl_rotateZ";
	rename -uid "F21DD92B-4CF6-FA4D-58DB-53918C704B5E";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTA -n "PALbot_L_Clavicle_ctrl_rotateX";
	rename -uid "9A6CC064-4164-621C-ED42-30B9EC1A3BC0";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 21 0 29 0 39 0 47 0 52 0;
	setAttr -s 6 ".kit[0:5]"  18 10 10 10 10 10;
	setAttr -s 6 ".kot[0:5]"  18 5 5 5 5 5;
createNode animCurveTA -n "PALbot_L_Clavicle_ctrl_rotateY";
	rename -uid "258539C0-4721-2EB7-9417-97A6BEBC65E2";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 21 0 29 0 39 0 47 0 52 -33.539928382253443;
	setAttr -s 6 ".kit[0:5]"  18 10 10 10 10 10;
	setAttr -s 6 ".kot[0:5]"  18 5 5 5 5 5;
createNode animCurveTA -n "PALbot_L_Clavicle_ctrl_rotateZ";
	rename -uid "C2C3F5C0-4453-90A2-87FF-F0B751F2C65C";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 21 0 29 0 39 0 47 -23.02787389732686
		 52 -7.3707860318318259;
	setAttr -s 6 ".kit[0:5]"  18 10 10 10 10 10;
	setAttr -s 6 ".kot[0:5]"  18 5 5 5 5 5;
createNode animCurveTA -n "PALbot_Neck_ctrl_rotateX";
	rename -uid "7912C081-4358-4322-94B9-718CFF984CDA";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTA -n "PALbot_Neck_ctrl_rotateY";
	rename -uid "CD6942FE-4915-6D54-A9A7-5699B77E8251";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTA -n "PALbot_Neck_ctrl_rotateZ";
	rename -uid "2C8043EB-4752-5228-4A17-D18F7A639DF2";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTA -n "PALbot_R_Clavicle_ctrl_rotateX";
	rename -uid "EEE71DDE-484A-FEA5-324F-2AB138FF1901";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 21 0 24 0 25 0 26 0 27 0 29 0 34 0 39 0
		 47 0;
	setAttr -s 10 ".kit[0:9]"  18 10 10 10 10 10 10 2 
		10 10;
	setAttr -s 10 ".kot[0:9]"  18 10 10 10 10 10 5 2 
		5 5;
createNode animCurveTA -n "PALbot_R_Clavicle_ctrl_rotateY";
	rename -uid "880BB7C8-412F-41D0-199A-D98B676CD63F";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 21 0 24 0 25 0 26 0 27 0 29 0 34 0 39 0
		 47 0;
	setAttr -s 10 ".kit[0:9]"  18 10 10 10 10 10 10 2 
		10 10;
	setAttr -s 10 ".kot[0:9]"  18 10 10 10 10 10 5 2 
		5 5;
createNode animCurveTA -n "PALbot_R_Clavicle_ctrl_rotateZ";
	rename -uid "AF0C4B78-449A-3E7C-F19A-1896F6FDC5DC";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 21 0 24 -30.625736754746363 25 -30.625736754746363
		 26 -21.812961211247138 27 -14.017281856757281 29 -21.812961211247138 34 -21.812961211247138
		 39 -0.42944509131032327 47 -0.42944509131032327;
	setAttr -s 10 ".kit[0:9]"  18 10 10 10 10 10 10 2 
		10 10;
	setAttr -s 10 ".kot[0:9]"  18 10 10 10 10 10 5 2 
		5 5;
createNode animCurveTA -n "PALbot_hipMain_ctrl_rotateX";
	rename -uid "093D5641-41C6-1A8D-AA63-2FB79E480519";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 21 0 29 0;
	setAttr -s 3 ".kit[1:2]"  10 10;
	setAttr -s 3 ".kot[1:2]"  5 5;
createNode animCurveTA -n "PALbot_hipMain_ctrl_rotateY";
	rename -uid "14A9A2A4-4A72-9A5D-E8EE-E99D6384A9CC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 21 0 29 0;
	setAttr -s 3 ".kit[1:2]"  10 10;
	setAttr -s 3 ".kot[1:2]"  5 5;
createNode animCurveTA -n "PALbot_hipMain_ctrl_rotateZ";
	rename -uid "5848DDE9-4E0A-D109-A35A-4DB8D62A0FB0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 21 0 29 0;
	setAttr -s 3 ".kit[1:2]"  10 10;
	setAttr -s 3 ".kot[1:2]"  5 5;
createNode animCurveTA -n "PALbot_L_hip_rotateX";
	rename -uid "081B2FBA-451D-936F-E974-7499DF7D63B8";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 10 5 5;
createNode animCurveTA -n "PALbot_L_hip_rotateY";
	rename -uid "30E0E7D6-4577-9523-A4D3-ECBABABA2660";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 10 5 5;
createNode animCurveTA -n "PALbot_L_hip_rotateZ";
	rename -uid "574D284A-4590-DE8E-114B-4F9279C9DC53";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 10 5 5;
createNode animCurveTA -n "PALbot_R_hip_rotateX";
	rename -uid "89E27774-4ACD-5016-8580-178177EF826E";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 10 5 5;
createNode animCurveTA -n "PALbot_R_hip_rotateY";
	rename -uid "2EDB9151-4FFF-E6A3-9C04-F2ACC9D7B3EA";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 10 5 5;
createNode animCurveTA -n "PALbot_R_hip_rotateZ";
	rename -uid "46363A7B-49B1-59BA-E67D-CA8BF3E63072";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 10 5 5;
createNode animCurveTL -n "PALbot_R_footSec_reshape02_translateX";
	rename -uid "9F165F8C-4525-3F7E-29C3-6196333F457C";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTL -n "PALbot_R_footSec_reshape02_translateY";
	rename -uid "B1EE3C08-462E-0BFE-692F-908F83DED502";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTL -n "PALbot_R_footSec_reshape02_translateZ";
	rename -uid "48581FA6-46B2-3EBD-33ED-C2A8D786A7CB";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTL -n "PALbot_hipMain_ctrl_translateX";
	rename -uid "15BA2B41-4CB2-3C75-AA46-4F868CE1E2A5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 21 0 29 0;
	setAttr -s 3 ".kit[1:2]"  10 10;
	setAttr -s 3 ".kot[1:2]"  5 5;
createNode animCurveTL -n "PALbot_hipMain_ctrl_translateY";
	rename -uid "04A23E3A-4397-83ED-D1E9-3CBAC4FF5C71";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 21 0 29 0;
	setAttr -s 3 ".kit[1:2]"  10 10;
	setAttr -s 3 ".kot[1:2]"  5 5;
createNode animCurveTL -n "PALbot_hipMain_ctrl_translateZ";
	rename -uid "6867D4E3-4E55-7C8C-4E9F-929B35567B9F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 21 0 29 0;
	setAttr -s 3 ".kit[1:2]"  10 10;
	setAttr -s 3 ".kot[1:2]"  5 5;
createNode animCurveTL -n "PALbot_R_footSec_reshape01_translateX";
	rename -uid "48F3CFED-4D47-4B58-34E9-44BD17C6454C";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTL -n "PALbot_R_footSec_reshape01_translateY";
	rename -uid "48DCA16F-4277-BAF1-3FBC-F299B1034DE2";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTL -n "PALbot_R_footSec_reshape01_translateZ";
	rename -uid "7EE88272-4361-98FE-8A57-F58A62E01713";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTL -n "PALbot_R_Thumb01_ctrl_translateX";
	rename -uid "192ED3D3-4D90-9181-FF45-D3A5A3F277E9";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTL -n "PALbot_R_Thumb01_ctrl_translateY";
	rename -uid "496ED7EA-459C-D504-F6FF-67A22C50E09F";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTL -n "PALbot_R_Thumb01_ctrl_translateZ";
	rename -uid "F3C5B901-42B8-EBBB-F604-E2B7BAFB2A46";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTL -n "PALbot_L_Clavicle_ctrl_translateX";
	rename -uid "1901254F-4CB4-00E2-D5CC-F3947EB7A2F8";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 21 0 29 0 39 0 47 0 52 0;
	setAttr -s 6 ".kit[0:5]"  18 10 10 10 10 10;
	setAttr -s 6 ".kot[0:5]"  18 5 5 5 5 5;
createNode animCurveTL -n "PALbot_L_Clavicle_ctrl_translateY";
	rename -uid "ECA1A5DC-4B61-EC85-91E5-41A4EB7C03FC";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 21 0 29 0 39 0 47 0 52 0;
	setAttr -s 6 ".kit[0:5]"  18 10 10 10 10 10;
	setAttr -s 6 ".kot[0:5]"  18 5 5 5 5 5;
createNode animCurveTL -n "PALbot_L_Clavicle_ctrl_translateZ";
	rename -uid "2B9AE178-478C-A0B2-629F-0FA1503A6F6B";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 21 0 29 0 39 0 47 0 52 0;
	setAttr -s 6 ".kit[0:5]"  18 10 10 10 10 10;
	setAttr -s 6 ".kot[0:5]"  18 5 5 5 5 5;
createNode animCurveTU -n "PALbot_R_HandVIS_Hand_Vis";
	rename -uid "BA1FDB86-4485-1A01-5C18-DE8B19987BEF";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 21 1 29 1 39 1 47 1;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTU -n "PALbot_R_HandVIS_canon_light";
	rename -uid "2F4963C0-4ADD-55D3-E987-2FB994E752D2";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTL -n "PALbot_R_Engine_ctrl_translateX";
	rename -uid "BE304FE6-4888-03A5-F43B-41AD7C4FF30D";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTL -n "PALbot_R_Engine_ctrl_translateY";
	rename -uid "01938047-4B57-4BB9-551C-71BAB34744F0";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 2.2204460492503131e-16 21 2.2204460492503131e-16
		 29 2.2204460492503131e-16 39 2.2204460492503131e-16 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTL -n "PALbot_R_Engine_ctrl_translateZ";
	rename -uid "2331904F-450E-2E48-5F38-1698FBEFDB9C";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 6.9388939039072284e-18 21 6.9388939039072284e-18
		 29 6.9388939039072284e-18 39 6.9388939039072284e-18 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTU -n "PALbot_R_Engine_ctrl_scaleX";
	rename -uid "762006A2-4D33-1A7F-ABA4-62889D43B4D8";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 21 1 29 1 39 1 47 1;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTU -n "PALbot_R_Engine_ctrl_scaleY";
	rename -uid "DFCF1A53-454F-CBFD-2DAB-8A96D440C306";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 21 1 29 1 39 1 47 1;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTU -n "PALbot_R_Engine_ctrl_scaleZ";
	rename -uid "25370DF4-4BE0-8E67-BD61-BB8269F221D1";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 21 1 29 1 39 1 47 1;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTU -n "PALbot_R_Engine_ctrl_on_off";
	rename -uid "7ECAF64D-48DC-B014-CED5-859931E149FE";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTL -n "PALbot_L_Middle01_ctrl_translateX";
	rename -uid "6000F78A-43F9-131F-6AE2-89BD50D1C9B6";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 21 0 29 0 39 0 47 0 52 0;
	setAttr -s 6 ".kit[0:5]"  18 10 10 10 10 10;
	setAttr -s 6 ".kot[0:5]"  18 5 5 5 5 5;
createNode animCurveTL -n "PALbot_L_Middle01_ctrl_translateY";
	rename -uid "8861D873-4DD3-AF91-B633-83B9859197F8";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 21 0 29 0 39 0 47 0 52 0;
	setAttr -s 6 ".kit[0:5]"  18 10 10 10 10 10;
	setAttr -s 6 ".kot[0:5]"  18 5 5 5 5 5;
createNode animCurveTL -n "PALbot_L_Middle01_ctrl_translateZ";
	rename -uid "D122FE8B-4985-6D35-6B72-6F96A557AD32";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 21 0 29 0 39 0 47 0 52 0;
	setAttr -s 6 ".kit[0:5]"  18 10 10 10 10 10;
	setAttr -s 6 ".kot[0:5]"  18 5 5 5 5 5;
createNode animCurveTL -n "PALbot_R_Clavicle_ctrl_translateX";
	rename -uid "56482CA6-444F-0F06-EA0A-ABBF60A35C4A";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 21 0 24 0 25 0 26 0 27 0 29 0 34 0 39 0
		 47 0;
	setAttr -s 10 ".kit[0:9]"  18 10 10 10 10 10 10 2 
		10 10;
	setAttr -s 10 ".kot[0:9]"  18 10 10 10 10 10 5 2 
		5 5;
createNode animCurveTL -n "PALbot_R_Clavicle_ctrl_translateY";
	rename -uid "FE500418-4D06-380B-657F-9790681127AF";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 21 0 24 0 25 0 26 0 27 0 29 0 34 0 39 0
		 47 0;
	setAttr -s 10 ".kit[0:9]"  18 10 10 10 10 10 10 2 
		10 10;
	setAttr -s 10 ".kot[0:9]"  18 10 10 10 10 10 5 2 
		5 5;
createNode animCurveTL -n "PALbot_R_Clavicle_ctrl_translateZ";
	rename -uid "896FA7F8-4A5A-8219-351E-45A13EE80C28";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 21 0 24 0 25 0 26 0 27 0 29 0 34 0 39 0
		 47 0;
	setAttr -s 10 ".kit[0:9]"  18 10 10 10 10 10 10 2 
		10 10;
	setAttr -s 10 ".kot[0:9]"  18 10 10 10 10 10 5 2 
		5 5;
createNode animCurveTL -n "PALbot_R_hip_translateX";
	rename -uid "529A9932-4DFA-801F-9191-0B8F8CC529A9";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 10 5 5;
createNode animCurveTL -n "PALbot_R_hip_translateY";
	rename -uid "65970A72-4A15-29B4-5702-33B5B4CD7213";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 10 5 5;
createNode animCurveTL -n "PALbot_R_hip_translateZ";
	rename -uid "9425A523-44EB-9648-2F1E-85927997E3E4";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 10 5 5;
createNode animCurveTL -n "PALbot_R_Middle02_ctrl_translateX";
	rename -uid "7955ACAC-4E63-AE92-D4A6-E98852602AAD";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTL -n "PALbot_R_Middle02_ctrl_translateY";
	rename -uid "C541B484-48B8-6ECB-D8FE-DF85BCBB41E0";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTL -n "PALbot_R_Middle02_ctrl_translateZ";
	rename -uid "954C5A26-4141-B175-0233-23B84CAEAE41";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTU -n "PALbot_L_leg_IK_FK_switch_IK_FK";
	rename -uid "237D96D5-468E-17C1-39D2-3490E082B505";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTU -n "PALbot_R_arm_IK_FK_switch_IK_FK";
	rename -uid "192260EF-4583-B10E-DFB8-48A0F9207164";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 21 1 29 1 39 1 47 1;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTL -n "PALbot_L_IK_foot_tip_translateX";
	rename -uid "0C4DD456-4586-0D00-339F-A3A83AA0D3E0";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTL -n "PALbot_L_IK_foot_tip_translateY";
	rename -uid "1AB91D5D-4765-F343-73B1-96A613FD0C65";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTL -n "PALbot_L_IK_foot_tip_translateZ";
	rename -uid "7B5F3C8E-4055-0505-443B-E4989B870472";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTL -n "PALbot_R_Index02_ctrl_translateX";
	rename -uid "92336950-4C50-8163-141F-44BBDC91709D";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTL -n "PALbot_R_Index02_ctrl_translateY";
	rename -uid "A56B0EB1-469B-B03B-617D-C8997C9C7066";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTL -n "PALbot_R_Index02_ctrl_translateZ";
	rename -uid "F2A37653-45C1-8BF6-705C-2D90B1C426D7";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTL -n "PALbot_L_Thumb02_ctrl_translateX";
	rename -uid "C1A35F9F-4223-D5F2-6C60-A59550480D82";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 21 0 29 0 39 0 47 0 52 0;
	setAttr -s 6 ".kit[0:5]"  18 10 10 10 10 10;
	setAttr -s 6 ".kot[0:5]"  18 5 5 5 5 5;
createNode animCurveTL -n "PALbot_L_Thumb02_ctrl_translateY";
	rename -uid "8A22E033-48AA-4C10-0AE5-FF97B7F2DE22";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 21 0 29 0 39 0 47 0 52 0;
	setAttr -s 6 ".kit[0:5]"  18 10 10 10 10 10;
	setAttr -s 6 ".kot[0:5]"  18 5 5 5 5 5;
createNode animCurveTL -n "PALbot_L_Thumb02_ctrl_translateZ";
	rename -uid "D36CA195-4E95-BE4B-15F0-6387F83604FF";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 21 0 29 0 39 0 47 0 52 0;
	setAttr -s 6 ".kit[0:5]"  18 10 10 10 10 10;
	setAttr -s 6 ".kot[0:5]"  18 5 5 5 5 5;
createNode animCurveTU -n "PALbot_L_HandVIS_Hand_Vis";
	rename -uid "C2D9CD10-46E1-AFD9-11C5-7FB7CA7E7F87";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 21 1 29 1 39 1 47 1;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTU -n "PALbot_L_HandVIS_canon_light";
	rename -uid "0A8D9B85-4EE8-D594-F1A0-2E82FF04C614";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTL -n "PALbot_L_Engine_ctrl_translateX";
	rename -uid "649F3306-4208-12B2-C71C-1CBBFE42FDEE";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -3.0057911164751421e-12 21 -3.0057911164751421e-12
		 29 -3.0057911164751421e-12 39 -3.0057911164751421e-12 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTL -n "PALbot_L_Engine_ctrl_translateY";
	rename -uid "5C8AB5F5-4047-BB20-E042-7585807EE2C2";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTL -n "PALbot_L_Engine_ctrl_translateZ";
	rename -uid "341A6FCD-41CD-AE44-8D93-A8975E649970";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTU -n "PALbot_L_Engine_ctrl_scaleX";
	rename -uid "A58B44CD-48DF-1421-AF10-44BEE5B0B84E";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 21 1 29 1 39 1 47 1;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTU -n "PALbot_L_Engine_ctrl_scaleY";
	rename -uid "2DCA6042-42C6-C508-5D5F-D9818B543ACE";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 21 1 29 1 39 1 47 1;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTU -n "PALbot_L_Engine_ctrl_scaleZ";
	rename -uid "37D71219-4433-9ACD-542E-4797B8479346";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 21 1 29 1 39 1 47 1;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTU -n "PALbot_L_Engine_ctrl_on_off";
	rename -uid "4159DA22-41F4-CBD1-249A-3B9EB4A6FB51";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTL -n "PALbot_L_Thumb03_ctrl_translateX";
	rename -uid "8FB91A3D-4055-434F-C10B-5B8A4B4164F6";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 21 0 29 0 39 0 47 0 52 0;
	setAttr -s 6 ".kit[0:5]"  18 10 10 10 10 10;
	setAttr -s 6 ".kot[0:5]"  18 5 5 5 5 5;
createNode animCurveTL -n "PALbot_L_Thumb03_ctrl_translateY";
	rename -uid "9F9CC263-43EE-1A70-5DD2-C283D213AAD0";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 21 0 29 0 39 0 47 0 52 0;
	setAttr -s 6 ".kit[0:5]"  18 10 10 10 10 10;
	setAttr -s 6 ".kot[0:5]"  18 5 5 5 5 5;
createNode animCurveTL -n "PALbot_L_Thumb03_ctrl_translateZ";
	rename -uid "5726C9F1-4DC5-762F-394B-4D84469AF7A8";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 21 0 29 0 39 0 47 0 52 0;
	setAttr -s 6 ".kit[0:5]"  18 10 10 10 10 10;
	setAttr -s 6 ".kot[0:5]"  18 5 5 5 5 5;
createNode animCurveTL -n "PALbot_root_translateX";
	rename -uid "FF5CBEFF-4E60-BCFE-6BC1-38859B88FD1C";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTL -n "PALbot_root_translateY";
	rename -uid "8B7F9DC5-48B5-4CA1-0FF0-11860B024F59";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTL -n "PALbot_root_translateZ";
	rename -uid "498EC341-4D9B-E844-C306-40AA1FC55D5F";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTU -n "PALbot_R_leg_IK_FK_switch_IK_FK";
	rename -uid "2A97E7B8-4690-51AB-F809-9CBB71E7EA52";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTL -n "PALbot_R_foot_secondary_translateX";
	rename -uid "BB477C4D-4ABA-F323-5BC6-6CBB4AC6E081";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTL -n "PALbot_R_foot_secondary_translateY";
	rename -uid "E2B48A28-4344-23D5-8350-26A4958C62D1";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTL -n "PALbot_R_foot_secondary_translateZ";
	rename -uid "A51DC6CA-439E-AD92-0B6F-BE95594A7AC1";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTL -n "PALbot_R_IK_foot_tip_translateX";
	rename -uid "9C802282-4AC7-5261-AA7A-FC9D8DB18923";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTL -n "PALbot_R_IK_foot_tip_translateY";
	rename -uid "FED56ACB-4DF9-2C6F-6B67-29AE518767BA";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTL -n "PALbot_R_IK_foot_tip_translateZ";
	rename -uid "599A090F-4F2D-63E8-443C-7EB3C3CDDE13";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTL -n "PALbot_R_IK_footBall_ctrl_translateX";
	rename -uid "A6AD8092-4734-ABF3-CC4C-89BCAF406C04";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTL -n "PALbot_R_IK_footBall_ctrl_translateY";
	rename -uid "828F5ED3-4F84-3EE5-09C1-129C67BC76BC";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTL -n "PALbot_R_IK_footBall_ctrl_translateZ";
	rename -uid "9E744455-4EF0-3CD3-73C0-8D9165158A0D";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTU -n "PALbot_L_arm_IK_FK_switch_IK_FK";
	rename -uid "F3D65F82-4506-4B80-BDC2-F58F0C09CE22";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 21 1 29 1 39 1 47 1;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTL -n "PALbot_L_IK_heel_lift_tip_translateX";
	rename -uid "7D63C257-48E4-A211-7AD0-5CBCE0805AFA";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTL -n "PALbot_L_IK_heel_lift_tip_translateY";
	rename -uid "C7823ADA-43E1-752D-AECA-E280BBE2869A";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTL -n "PALbot_L_IK_heel_lift_tip_translateZ";
	rename -uid "9642C942-45F8-2A5A-897E-46A96EE49422";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTL -n "PALbot_R_IK_heel_lift_tip_translateX";
	rename -uid "1A06E8CE-49DF-8B27-C973-ACA9F5805D42";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTL -n "PALbot_R_IK_heel_lift_tip_translateY";
	rename -uid "456C5642-4F1E-7973-5336-CAB6AA8AF217";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTL -n "PALbot_R_IK_heel_lift_tip_translateZ";
	rename -uid "19E28FB7-48E7-9FD2-98E1-37BE07A6D4CA";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTL -n "PALbot_L_footSec_reshape02_translateX";
	rename -uid "9ABCCE1A-4F62-D986-643D-2F84D763FBA3";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTL -n "PALbot_L_footSec_reshape02_translateY";
	rename -uid "F96F286F-47B7-329C-F846-93A85C94D7FA";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTL -n "PALbot_L_footSec_reshape02_translateZ";
	rename -uid "773E689A-485F-F8D6-7AAE-40887593A1E3";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTL -n "PALbot_L_foot_secondary_translateX";
	rename -uid "1ED30969-4AFA-EC75-3F5E-D085EC20F531";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTL -n "PALbot_L_foot_secondary_translateY";
	rename -uid "32E353EB-4BC7-22DD-EE16-3BB2ABAD1AD6";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTL -n "PALbot_L_foot_secondary_translateZ";
	rename -uid "4E2EA78F-4AC6-E297-CC38-74A24106D2AC";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTL -n "PALbot_L_Index01_ctrl_translateX";
	rename -uid "A01B426D-4B2C-E7D1-50DF-E0AD0697C1DC";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 21 0 29 0 39 0 47 0 52 0;
	setAttr -s 6 ".kit[0:5]"  18 10 10 10 10 10;
	setAttr -s 6 ".kot[0:5]"  18 5 5 5 5 5;
createNode animCurveTL -n "PALbot_L_Index01_ctrl_translateY";
	rename -uid "FC3116D2-45E9-81F7-1823-5DAB4D865EDC";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 21 0 29 0 39 0 47 0 52 0;
	setAttr -s 6 ".kit[0:5]"  18 10 10 10 10 10;
	setAttr -s 6 ".kot[0:5]"  18 5 5 5 5 5;
createNode animCurveTL -n "PALbot_L_Index01_ctrl_translateZ";
	rename -uid "C81D320B-4BA3-411B-4C80-DE8FD0747133";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 21 0 29 0 39 0 47 0 52 0;
	setAttr -s 6 ".kit[0:5]"  18 10 10 10 10 10;
	setAttr -s 6 ".kot[0:5]"  18 5 5 5 5 5;
createNode animCurveTL -n "PALbot_L_hip_translateX";
	rename -uid "067EDAF2-47CE-A113-E0DC-0A94F0C3432A";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 10 5 5;
createNode animCurveTL -n "PALbot_L_hip_translateY";
	rename -uid "C426453B-43B9-3243-64E0-528E2CF58B5F";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 10 5 5;
createNode animCurveTL -n "PALbot_L_hip_translateZ";
	rename -uid "0449BEB9-4CB8-872B-5098-A7984DEC35FF";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 10 5 5;
createNode animCurveTL -n "PALbot_L_IK_footBall_ctrl_translateX";
	rename -uid "C93FD654-41DE-CAE6-B0DD-BFA4E7412983";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTL -n "PALbot_L_IK_footBall_ctrl_translateY";
	rename -uid "6CF049BC-4833-4D4A-7F63-DA94AD8DC628";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTL -n "PALbot_L_IK_footBall_ctrl_translateZ";
	rename -uid "EF6CCF96-4204-BE4E-5808-39B38C3A93F3";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTL -n "PALbot_R_Thumb03_ctrl_translateX";
	rename -uid "77267C61-493E-11AE-A56D-D699C2AD7406";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTL -n "PALbot_R_Thumb03_ctrl_translateY";
	rename -uid "606D66B6-4623-36D1-B649-B88A712FF6AA";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTL -n "PALbot_R_Thumb03_ctrl_translateZ";
	rename -uid "467E2DE8-4408-7E71-3A00-DD90DA4FA326";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTL -n "PALbot_L_footSec_reshape01_translateX";
	rename -uid "52EED4AC-425D-B780-23ED-37814464A688";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTL -n "PALbot_L_footSec_reshape01_translateY";
	rename -uid "A051F521-465A-4565-BBF9-7EAEAED1C71B";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTL -n "PALbot_L_footSec_reshape01_translateZ";
	rename -uid "9CFD028E-42F7-7DCF-C886-8E9A7D6CB114";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTL -n "PALbot_Neck_ctrl_translateX";
	rename -uid "732F6535-4CC7-A3B3-5773-7FB9FC83146D";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTL -n "PALbot_Neck_ctrl_translateY";
	rename -uid "17678618-455E-2A03-A0D4-6892F7AAF2F6";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTL -n "PALbot_Neck_ctrl_translateZ";
	rename -uid "2921A544-40F5-91A8-0A1B-28B0D1B69F01";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTL -n "PALbot_L_Thumb01_ctrl_translateX";
	rename -uid "D40941B2-4653-EDE9-078E-7EB5DA57B2E6";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -4.9400951578258161e-05 21 -4.9400951578258161e-05
		 29 -4.9400951578258161e-05 39 -4.9400951578258161e-05 47 -4.9400951578258161e-05
		 52 -4.9400951578258161e-05;
	setAttr -s 6 ".kit[0:5]"  18 10 10 10 10 10;
	setAttr -s 6 ".kot[0:5]"  18 5 5 5 5 5;
createNode animCurveTL -n "PALbot_L_Thumb01_ctrl_translateY";
	rename -uid "F1F9162C-4803-BED3-C9BD-69954EA960EF";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1.7589953799286646e-05 21 1.7589953799286646e-05
		 29 1.7589953799286646e-05 39 1.7589953799286646e-05 47 1.7589953799286646e-05 52 1.7589953799286646e-05;
	setAttr -s 6 ".kit[0:5]"  18 10 10 10 10 10;
	setAttr -s 6 ".kot[0:5]"  18 5 5 5 5 5;
createNode animCurveTL -n "PALbot_L_Thumb01_ctrl_translateZ";
	rename -uid "9B3DDAD6-485B-B319-ABD0-16B7E3FF2693";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 21 0 29 0 39 0 47 0 52 0;
	setAttr -s 6 ".kit[0:5]"  18 10 10 10 10 10;
	setAttr -s 6 ".kot[0:5]"  18 5 5 5 5 5;
createNode animCurveTL -n "PALbot_R_Thumb02_ctrl_translateX";
	rename -uid "22AFD4E8-43DD-8C99-ED55-BC953EE086DD";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTL -n "PALbot_R_Thumb02_ctrl_translateY";
	rename -uid "51719942-4537-5697-605E-FAB05F7EF204";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTL -n "PALbot_R_Thumb02_ctrl_translateZ";
	rename -uid "7D333705-41C7-3849-003A-F7B370482796";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
	setAttr -s 5 ".kot[0:4]"  18 5 5 5 5;
createNode animCurveTL -n "PALbot_MAIN_translateX";
	rename -uid "C579EB0F-4489-7EED-8828-248347725D0C";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 21 0 29 0 39 0 47 0;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
createNode animCurveTL -n "PALbot_MAIN_translateY";
	rename -uid "8F31E6CC-4F23-28E8-B634-C1BC1871270B";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.022137329085584412 21 -0.022137329085584412
		 29 -0.022137329085584412 39 -0.022137329085584412 47 -0.022137329085584412;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
createNode animCurveTL -n "PALbot_MAIN_translateZ";
	rename -uid "F3C67F7E-4418-F3D3-B48A-7CB83F9BE8B6";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 9.9417132329880342 21 9.9417132329880342
		 29 9.9417132329880342 39 9.9417132329880342 47 4.1471096799797351;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
createNode animCurveTU -n "PALbot_MAIN_global_scale";
	rename -uid "CE8DD422-4694-BDC4-4101-31AB3EB06C18";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 21 1 29 1 39 1 47 1;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
createNode animCurveTU -n "PALbot_MAIN_Mesh_lock";
	rename -uid "0A3684FB-441F-5279-4F6C-FABFB68BE8B8";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 21 1 29 1 39 1 47 1;
	setAttr -s 5 ".kit[0:4]"  18 10 10 10 10;
createNode animCurveTL -n "PALbot_cog_ctrl_translateX1";
	rename -uid "F2FEC94B-42E3-30AE-6EBA-50A098D87933";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 0 16 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0
		 25 0 26 -0.062911549844914774 28 -0.36737828917243087 29 -0.58202411892953665 31 -1.0995960993276999
		 33 -1.4319524979948459 38 -1.0282621240076402 39 -1.0282621240076402 41 -0.99787418864181121
		 41.000000170068027 -0.9657957959614657 43 -0.998 46 -0.12793188043735354 48 -0.099473446536527982
		 50 -0.15426523700470973 52 -0.26833462209991304 53 -0.26833462209991304 55 -0.26833462209991304
		 58 -0.26833462209991304;
	setAttr -s 27 ".kit[23:26]"  9 9 10 10;
	setAttr -s 27 ".kot[15:26]"  5 5 5 5 10 10 5 10 
		9 9 10 10;
createNode animCurveTL -n "PALbot_cog_ctrl_translateY1";
	rename -uid "E4774E0D-406F-78DF-D578-E39CED459063";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 -0.98608739812438806 16 -0.78106563059044731
		 18 -0.78106563059044731 19 -1.1157074405086682 20 -1.1157074405086682 21 -1.1157074405086682
		 22 -1.1157074405086682 23 -1.1157074405086682 24 -1.1157074405086682 25 -1.1157074405086682
		 26 -1.1157074405086689 28 -1.1157074405086709 29 -1.1157074405086713 31 -1.1157074405086735
		 33 -1.1157074405086771 38 -1.1157074405086786 39 -1.1157074405086786 41 -1.1157074405086789
		 41.000000170068027 -1.1157074405086806 43 -1.1157074405086806 46 -0.54386947527083684
		 48 -0.50430697972625416 50 -0.50430697972625416 52 -1.3743090010423824 53 -1.3743090010423824
		 55 -1.3743090010423824 58 -1.3743090010423824;
	setAttr -s 27 ".kit[23:26]"  9 9 10 10;
	setAttr -s 27 ".kot[15:26]"  5 5 5 5 10 10 5 10 
		9 9 10 10;
createNode animCurveTL -n "PALbot_cog_ctrl_translateZ1";
	rename -uid "F691651B-46D6-57B7-756F-46B6AC89E7C2";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 0 16 -0.32873889765511777 18 -0.32873889765511777
		 19 0.64294024120263416 20 1.203441170070467 21 1.7901749883910592 22 2.0716859095469058
		 23 2.0716859095469058 24 2.0716859095469058 25 2.0716859095469058 26 2.0768943790511045
		 28 2.1021012882869998 29 2.119871892591763 31 2.1627218602491656 33 2.1902377642644137
		 38 2.1569623033294163 39 2.1569623033294163 41 2.154300267218594 41.000000170068027 2.5417656058228344
		 43 2.154 46 2.0819667520751097 48 1.4851453247684527 50 0.82333162799011195 52 0.386083907153835
		 53 0.386083907153835 55 0.386083907153835 58 0.386083907153835;
	setAttr -s 27 ".kit[23:26]"  9 9 10 10;
	setAttr -s 27 ".kot[15:26]"  5 5 5 5 10 10 5 10 
		9 9 10 10;
createNode animCurveTA -n "PALbot_cog_ctrl_rotateX1";
	rename -uid "B9035686-4413-991D-7D86-2BBEBCC4DE07";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 0 16 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0
		 25 0 26 0 28 0 29 0 31 0 33 1.1285804330594655 38 1.1744506078386869 39 1.1744506078386869
		 41 1.1781202207678825 41.000000170068027 1.1781202207678825 43 1.1781202207678825
		 46 -8.0717343212487318 48 -14.088200785741725 50 -14.088200785741725 52 -26.662952051709233
		 53 -26.662952051709233 55 -42.584237347106821 58 -50.96095107157327;
	setAttr -s 27 ".kit[23:26]"  9 9 10 10;
	setAttr -s 27 ".kot[15:26]"  5 5 5 5 10 10 5 10 
		9 9 10 10;
createNode animCurveTA -n "PALbot_cog_ctrl_rotateY1";
	rename -uid "C469A294-42DE-5EC0-C391-3CA5729AD4B9";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 0 16 5.3222132575329857 18 13.242213490248986
		 19 18.89462629675165 20 21.498151211272834 21 40.78829712553302 22 52.863254406697806
		 23 36.024640660675807 24 23.469914892749518 25 16.2957858825059 26 21.695785622362738
		 28 26.361449012410755 29 19.535785880643598 31 16.2957858825059 33 16.257715494150897
		 38 -14.234077408199754 39 -14.234077408199754 41 -16.673420140321159 41.000000170068027 -16.673420140321159
		 43 -16.673420140321159 46 -36.745662772884309 48 -50.321913125842272 50 -50.321913125842272
		 52 -74.233208651067329 53 -74.233208651067329 55 -70.743216816092215 58 -67.323158495629102;
	setAttr -s 27 ".kit[23:26]"  9 9 10 10;
	setAttr -s 27 ".kot[15:26]"  5 5 5 5 10 10 5 10 
		9 9 10 10;
createNode animCurveTA -n "PALbot_cog_ctrl_rotateZ1";
	rename -uid "23C6B0BD-4173-BF4A-392F-33BCBD650367";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 0 16 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0
		 25 0 26 0 28 0 29 0 31 0 33 4.0251314572840657 38 -0.020734946211299995 39 -0.020734946211299995
		 41 -0.33806544039051423 41.000000170068027 -0.33806544039051423 43 -0.33806544039051423
		 46 -0.84275729898713658 48 1.8875162451306116 50 1.8875162451306116 52 14.222931060463777
		 53 14.222931060463777 55 30.899675525990254 58 39.864036880221668;
	setAttr -s 27 ".kit[23:26]"  9 9 10 10;
	setAttr -s 27 ".kot[15:26]"  5 5 5 5 10 10 5 10 
		9 9 10 10;
createNode animCurveTU -n "PALbot_cog_ctrl_secondary_vis1";
	rename -uid "FC48353B-4373-B89E-CFB7-2C9B33BD14A1";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 0 16 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0
		 25 0 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 41.000000170068027 0 43 0 46 0 48 0
		 50 0 52 0 53 0 55 0 58 0;
	setAttr -s 27 ".kit[23:26]"  9 9 10 10;
	setAttr -s 27 ".kot[15:26]"  5 5 5 5 10 10 5 10 
		9 9 10 10;
createNode animCurveTL -n "PALbot_L_IK_Foot_ctrl_translateX1";
	rename -uid "4B9B8EAA-4A90-9D4B-635A-42BFB59C4F80";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 -3.4729372789367639e-16 16 -3.4729372789367639e-16
		 19 -3.4729372789367639e-16 22 -3.4729372789367639e-16 25 -3.4729372789367639e-16
		 33 0 35 -0.33964038042474964 36 -0.83162964952781582 38 -0.95515693786034694 39 -0.95515693786034694
		 41 -0.91409333206993759 45 1.5035765520513293 51 3.1291004218891971 52 3.1291004218891971
		 57 4.2999922489082909;
	setAttr -s 15 ".kit[0:14]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 1 10;
	setAttr -s 15 ".kot[0:14]"  5 10 10 10 10 10 5 10 
		5 5 10 5 10 1 10;
	setAttr -s 15 ".kix[13:14]"  0.11118280306619102 0.17517579826427235;
	setAttr -s 15 ".kiy[13:14]"  0.99379997197743197 0.98453717030007304;
	setAttr -s 15 ".kox[13:14]"  0.11118280306619102 0.17517579826427235;
	setAttr -s 15 ".koy[13:14]"  0.99379997197743197 0.98453717030007304;
createNode animCurveTL -n "PALbot_L_IK_Foot_ctrl_translateY1";
	rename -uid "EAAD8A97-4A7D-D32D-15B3-7C8B89D6D412";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 16 0 19 0 22 0 25 0 33 0 35 0.35763702824842569
		 36 0.25059630544107581 38 0.04510068873018136 39 0.04510068873018136 41 0 45 0 51 0
		 52 0 57 1.0373054511218691;
	setAttr -s 15 ".kit[0:14]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 1 10;
	setAttr -s 15 ".kot[0:14]"  5 10 10 10 10 10 5 10 
		5 5 10 5 10 1 10;
	setAttr -s 15 ".kix[13:14]"  1 0.19690877407723584;
	setAttr -s 15 ".kiy[13:14]"  0 0.98042181467539768;
	setAttr -s 15 ".kox[13:14]"  1 0.19690877407723587;
	setAttr -s 15 ".koy[13:14]"  0 0.9804218146753978;
createNode animCurveTL -n "PALbot_L_IK_Foot_ctrl_translateZ1";
	rename -uid "6825302F-4C86-3CAA-22D4-2EAA737A09B2";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 2.8600171950264155 16 2.8600171950264155
		 19 2.8600171950264155 22 2.8600171950264155 25 2.8600171950264155 33 2.8600171950264155
		 35 2.1602271011866168 36 1.0419461660807303 38 0.42288396292625208 39 0.42288396292625208
		 41 0.34907214742984327 45 1.2774093474436454 51 2.0117798172279957 52 2.0117798172279957
		 57 3.3001199035191626;
	setAttr -s 15 ".kit[0:14]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 1 10;
	setAttr -s 15 ".kot[0:14]"  5 10 10 10 10 10 5 10 
		5 5 10 5 10 1 10;
	setAttr -s 15 ".kix[13:14]"  0.19391769686621219 0.15963312359710377;
	setAttr -s 15 ".kiy[13:14]"  0.98101780149093309 0.987176410704101;
	setAttr -s 15 ".kox[13:14]"  0.19391769686621219 0.15963312359710377;
	setAttr -s 15 ".koy[13:14]"  0.98101780149093309 0.987176410704101;
createNode animCurveTA -n "PALbot_L_IK_Foot_ctrl_rotateX1";
	rename -uid "EF6CC316-4BE2-9DE0-E7AB-098DDBFB3443";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 16 0 19 0 22 0 25 0 33 0 35 0 36 0 38 0
		 39 0 41 0 45 0 51 0 52 0 57 -14.837123263630129;
	setAttr -s 15 ".kit[0:14]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 1 10;
	setAttr -s 15 ".kot[0:14]"  5 10 10 10 10 10 5 10 
		5 5 10 5 10 1 10;
	setAttr -s 15 ".kix[13:14]"  1 0.62683557651033106;
	setAttr -s 15 ".kiy[13:14]"  0 -0.77915156421646292;
	setAttr -s 15 ".kox[13:14]"  1 0.62683557651033106;
	setAttr -s 15 ".koy[13:14]"  0 -0.77915156421646292;
createNode animCurveTA -n "PALbot_L_IK_Foot_ctrl_rotateY1";
	rename -uid "D59A2707-4AB2-559E-7883-10808FCA8E0C";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 16 0 19 0 22 0 25 0 33 0 35 0 36 0 38 0
		 39 0 41 0 45 40.02220965857969 51 80.044419317159466 52 80.044419317159466 57 80.044419317159424;
	setAttr -s 15 ".kit[0:14]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 1 10;
	setAttr -s 15 ".kot[0:14]"  5 10 10 10 10 10 5 10 
		5 5 10 5 10 1 10;
	setAttr -s 15 ".kix[13:14]"  1 1;
	setAttr -s 15 ".kiy[13:14]"  0 0;
	setAttr -s 15 ".kox[13:14]"  1 1;
	setAttr -s 15 ".koy[13:14]"  0 0;
createNode animCurveTA -n "PALbot_L_IK_Foot_ctrl_rotateZ1";
	rename -uid "321493F1-4A40-908E-1C79-2BBE911E2FE4";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 16 0 19 0 22 0 25 0 33 0 35 0 36 0 38 0
		 39 0 41 0 45 0 51 0 52 0 57 0;
	setAttr -s 15 ".kit[0:14]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 1 10;
	setAttr -s 15 ".kot[0:14]"  5 10 10 10 10 10 5 10 
		5 5 10 5 10 1 10;
	setAttr -s 15 ".kix[13:14]"  1 1;
	setAttr -s 15 ".kiy[13:14]"  0 0;
	setAttr -s 15 ".kox[13:14]"  1 1;
	setAttr -s 15 ".koy[13:14]"  0 0;
createNode animCurveTU -n "PALbot_L_IK_Foot_ctrl_Heel_Peel1";
	rename -uid "1B5668B1-48CF-FE92-486E-9CA6D3380E86";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 16 0 19 0 22 0 25 0 33 0 35 0 36 0 38 0
		 39 0 41 0 45 0 51 0 52 0 57 0;
	setAttr -s 15 ".kit[0:14]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 1 10;
	setAttr -s 15 ".kot[0:14]"  5 10 10 10 10 10 5 10 
		5 5 10 5 10 1 10;
	setAttr -s 15 ".kix[13:14]"  1 1;
	setAttr -s 15 ".kiy[13:14]"  0 0;
	setAttr -s 15 ".kox[13:14]"  1 1;
	setAttr -s 15 ".koy[13:14]"  0 0;
createNode animCurveTU -n "PALbot_L_IK_Foot_ctrl_follow_hip1";
	rename -uid "51C3AA82-4FA4-B255-956A-6D9508348F10";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 16 0 19 0 22 0 25 0 33 0 35 0 36 0 38 0
		 39 0 41 0 45 0 51 0 52 0 57 0;
	setAttr -s 15 ".kit[0:14]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 1 10;
	setAttr -s 15 ".kot[0:14]"  5 10 10 10 10 10 5 10 
		5 5 10 5 10 1 10;
	setAttr -s 15 ".kix[13:14]"  1 1;
	setAttr -s 15 ".kiy[13:14]"  0 0;
	setAttr -s 15 ".kox[13:14]"  1 1;
	setAttr -s 15 ".koy[13:14]"  0 0;
createNode animCurveTL -n "PALbot_R_IK_Foot_ctrl_translateX1";
	rename -uid "88CB0DF1-47CE-8F03-8CD2-B9B1FD98ADD5";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 0 16 0 19 0 20 0 21 0 22 0 23 -0.21044254191605474
		 24 -0.58762032065762781 25 -1.0004114209531167 26 -1.3808265871021241 28 -1.9193432702994506
		 29 -1.6785905337194618 31 -1.4378377971394711 33 -1.5598587598039493 38 -1.6619658787428555
		 39 -1.6619658787428555 41 -1.6276021617878174 43 -1.1441339103853461 45 -0.44256577292454891
		 47 1.0034887482320638 49 3.1014479261964181 50 4.4928472043672292 51 4.1747801844312225;
	setAttr -s 23 ".kit[0:22]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10 10 10 10 10 1;
	setAttr -s 23 ".kot[0:22]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 10 10 10 10 10 10 1;
	setAttr -s 23 ".kix[22]"  0.038790697149216555;
	setAttr -s 23 ".kiy[22]"  0.99924735767210204;
	setAttr -s 23 ".kox[22]"  0.038790697149216555;
	setAttr -s 23 ".koy[22]"  0.99924735767210204;
createNode animCurveTL -n "PALbot_R_IK_Foot_ctrl_translateY1";
	rename -uid "253AC535-41AB-AE2B-30CD-33A7A4CD8493";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 0 16 0 19 0 20 0.19745237217674119 21 0.5991473660013793
		 22 1.2254557298873858 23 2.7773785719034914 24 4.5804589401166815 25 5.4806762511399398
		 26 5.3073593032928592 28 4.0324798571488731 29 1.8421314737624686 31 0.017443167101643731
		 33 -0.0078244177484585453 38 0.077096845261321198 39 0.077096845261321198 41 0.18168246862730708
		 43 1.035289420387044 45 1.2650895230463375 47 1.9823634718126224 49 1.1402191854326933
		 50 0.73581176922509117 51 0.014544310844363029;
	setAttr -s 23 ".kit[0:22]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10 10 10 10 10 1;
	setAttr -s 23 ".kot[0:22]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 10 10 10 10 10 10 1;
	setAttr -s 23 ".kix[22]"  0.036989501320150234;
	setAttr -s 23 ".kiy[22]"  -0.99931565423147795;
	setAttr -s 23 ".kox[22]"  0.036989501320150234;
	setAttr -s 23 ".koy[22]"  -0.99931565423147795;
createNode animCurveTL -n "PALbot_R_IK_Foot_ctrl_translateZ1";
	rename -uid "D1C10C3D-4A14-0980-32DC-3C8F942ECA07";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 -3.0072502670617709 16 -3.0072502670617709
		 19 -3.0072502670617709 20 -3.0072502670617709 21 -3.0072502670617709 22 -3.0072502670617709
		 23 -3.1936608417416119 24 -3.4883098146226503 25 -3.6566806562689584 26 -3.61706311817855
		 28 -2.5870071278278775 29 0.95588916401616997 31 3.9639486916396987 33 3.9740508503764911
		 38 3.1887606791937779 39 3.1887606791937779 41 2.6975456408796776 43 -0.59546194556465304
		 45 -1.9999634992138691 47 -2.2692849186426263 49 -2.3868749324362333 50 -2.4611245982234444
		 51 -2.3822352071674695;
	setAttr -s 23 ".kit[0:22]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10 10 10 10 10 1;
	setAttr -s 23 ".kot[0:22]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 10 10 10 10 10 10 1;
	setAttr -s 23 ".kix[22]"  1;
	setAttr -s 23 ".kiy[22]"  0;
	setAttr -s 23 ".kox[22]"  1;
	setAttr -s 23 ".koy[22]"  0;
createNode animCurveTA -n "PALbot_R_IK_Foot_ctrl_rotateX1";
	rename -uid "42609A35-490B-F58A-59BB-BFAD44E337F7";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 0 16 0 19 0 20 8.3281737208797395 21 23.607481300480949
		 22 41.706803152329037 23 65.578022644531856 24 90.52700735630242 25 102.48959888351726
		 26 101.94121711121289 28 87.683291031299078 29 40.140068552595132 31 0 33 0 38 0
		 39 0 41 0 43 25.223131119634591 45 35.120502849151229 47 39.018152800243634 49 21.459636929389664
		 50 13.65609314702699 51 0;
	setAttr -s 23 ".kit[0:22]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10 10 10 10 10 1;
	setAttr -s 23 ".kot[0:22]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 10 10 10 10 10 10 1;
	setAttr -s 23 ".kix[22]"  0.11056511298675493;
	setAttr -s 23 ".kiy[22]"  -0.99386888259479478;
	setAttr -s 23 ".kox[22]"  0.11056511298675495;
	setAttr -s 23 ".koy[22]"  -0.99386888259479489;
createNode animCurveTA -n "PALbot_R_IK_Foot_ctrl_rotateY1";
	rename -uid "2F91DC9A-439E-5370-A75F-04921B54C9CD";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 43 -26.270501311334378 45 -43.304007712515109
		 47 -55.591968189571055 49 -67.064287960918207 50 -71.320064653258143 51 -78.388309422136473;
	setAttr -s 23 ".kit[0:22]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10 10 10 10 10 1;
	setAttr -s 23 ".kot[0:22]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 10 10 10 10 10 10 1;
	setAttr -s 23 ".kix[22]"  0.20628514333494932;
	setAttr -s 23 ".kiy[22]"  -0.97849192109045002;
	setAttr -s 23 ".kox[22]"  0.20628514333494932;
	setAttr -s 23 ".koy[22]"  -0.97849192109045002;
createNode animCurveTA -n "PALbot_R_IK_Foot_ctrl_rotateZ1";
	rename -uid "3EC944C9-43EB-7795-757D-9CB4CEB47407";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 43 0 45 0 47 0 49 0 50 0 51 0;
	setAttr -s 23 ".kit[0:22]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10 10 10 10 10 1;
	setAttr -s 23 ".kot[0:22]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 10 10 10 10 10 10 1;
	setAttr -s 23 ".kix[22]"  1;
	setAttr -s 23 ".kiy[22]"  0;
	setAttr -s 23 ".kox[22]"  1;
	setAttr -s 23 ".koy[22]"  0;
createNode animCurveTU -n "PALbot_R_IK_Foot_ctrl_Heel_Peel1";
	rename -uid "B2212FB9-496E-BA83-B1C2-92924D0A983D";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 43 0 45 0 47 0 49 0 50 0 51 0;
	setAttr -s 23 ".kit[0:22]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10 10 10 10 10 1;
	setAttr -s 23 ".kot[0:22]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 10 10 10 10 10 10 1;
	setAttr -s 23 ".kix[22]"  1;
	setAttr -s 23 ".kiy[22]"  0;
	setAttr -s 23 ".kox[22]"  1;
	setAttr -s 23 ".koy[22]"  0;
createNode animCurveTU -n "PALbot_R_IK_Foot_ctrl_follow_hip1";
	rename -uid "72BF1A1F-4D5E-7387-94FA-9F9031DCD3CF";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 43 0 45 0 47 0 49 0 50 0 51 0;
	setAttr -s 23 ".kit[0:22]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10 10 10 10 10 1;
	setAttr -s 23 ".kot[0:22]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 10 10 10 10 10 10 1;
	setAttr -s 23 ".kix[22]"  1;
	setAttr -s 23 ".kiy[22]"  0;
	setAttr -s 23 ".kox[22]"  1;
	setAttr -s 23 ".koy[22]"  0;
createNode animCurveTA -n "PALbot_L_FK_Elbow_ctrl_rotateX1";
	rename -uid "F0DA3B90-43CE-3036-EA5F-F8A10E537BF3";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -47.716785390112179 16 -107.22921171891829
		 19 -107.22921171891829 20 -93.599573015315258 21 -72.055950548329875 22 -59.745309138623952
		 23 -59.745309138623952 24 -59.745309138623952 25 -59.745309138623952 26 -59.745309138623952
		 28 -59.745309138623952 29 -59.745309138623952 31 -59.745309138623952 33 -59.745309138623952
		 35 -56.277360616905881 38 -56.277360616905881 39 -56.277360616905881 41 -56.277360616905881
		 45 -56.277360616905881;
	setAttr -s 19 ".kot[15:18]"  5 5 5 5;
createNode animCurveTL -n "PALbot_L_FK_Elbow_ctrl_translateX1";
	rename -uid "ABFF921E-4667-AA60-B50E-4DBCBAA17BE1";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 35 0 38 0 39 0 41 0 45 0;
	setAttr -s 19 ".kot[15:18]"  5 5 5 5;
createNode animCurveTL -n "PALbot_L_FK_Elbow_ctrl_translateY1";
	rename -uid "CA37B867-40CD-ADB2-C7CC-3987A22AA0B1";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 35 0 38 0 39 0 41 0 45 0;
	setAttr -s 19 ".kot[15:18]"  5 5 5 5;
createNode animCurveTL -n "PALbot_L_FK_Elbow_ctrl_translateZ1";
	rename -uid "345D0FD2-42CC-86C4-521D-52A4876F6B06";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 35 0 38 0 39 0 41 0 45 0;
	setAttr -s 19 ".kot[15:18]"  5 5 5 5;
createNode animCurveTA -n "PALbot_L_FK_Wrist_ctrl_rotateX1";
	rename -uid "7273B984-4092-8CBD-7A5F-1D93D31B67A0";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 -14.512072252843534 19 -6.0620844318918321
		 20 -6.0620844318918321 21 -6.0620844318918321 22 -6.0620844318918321 23 -6.0620844318918321
		 24 -6.0620844318918321 25 -6.0620844318918321 26 -6.0620844318918321 28 -6.0620844318918321
		 29 -6.0620844318918321 31 -6.0620844318918321 33 -6.0620844318918321 38 -6.0620844318918321
		 39 -6.0620844318918321 41 -6.0620844318918321 45 -6.0620844318918321;
	setAttr -s 18 ".kot[14:17]"  5 5 5 5;
createNode animCurveTA -n "PALbot_L_FK_Wrist_ctrl_rotateY1";
	rename -uid "F93B3162-4C43-85CA-02D5-1EBE9BE8A5E5";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 21.400146612799595 16 65.177131566979753
		 19 5.0336372661243054 20 5.0336372661243054 21 5.0336372661243054 22 5.0336372661243054
		 23 5.0336372661243054 24 5.0336372661243054 25 5.0336372661243054 26 5.0336372661243054
		 28 5.0336372661243054 29 5.0336372661243054 31 5.0336372661243054 33 5.0336372661243054
		 38 5.0336372661243054 39 5.0336372661243054 41 5.0336372661243054 45 5.0336372661243054;
	setAttr -s 18 ".kot[14:17]"  5 5 5 5;
createNode animCurveTA -n "PALbot_L_FK_Wrist_ctrl_rotateZ1";
	rename -uid "2F953362-48FF-F852-79D4-8082BC81F6DC";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 -15.917683818748801 19 -3.2309143912493199
		 20 -3.2309143912493199 21 -3.2309143912493199 22 -3.2309143912493199 23 -3.2309143912493199
		 24 -3.2309143912493199 25 -3.2309143912493199 26 -3.2309143912493199 28 -3.2309143912493199
		 29 -3.2309143912493199 31 -3.2309143912493199 33 -3.2309143912493199 38 -3.2309143912493199
		 39 -3.2309143912493199 41 -3.2309143912493199 45 -3.2309143912493199;
	setAttr -s 18 ".kot[14:17]"  5 5 5 5;
createNode animCurveTL -n "PALbot_L_FK_Wrist_ctrl_translateX1";
	rename -uid "02FCE8AF-4B92-1A43-CC9F-F49D3D1CB892";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0;
	setAttr -s 18 ".kot[14:17]"  5 5 5 5;
createNode animCurveTL -n "PALbot_L_FK_Wrist_ctrl_translateY1";
	rename -uid "F82CB4A5-4A20-B887-AF3C-798B353ED384";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0;
	setAttr -s 18 ".kot[14:17]"  5 5 5 5;
createNode animCurveTL -n "PALbot_L_FK_Wrist_ctrl_translateZ1";
	rename -uid "C4892225-4F9D-9B54-28C0-3E92F9C45ECA";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0;
	setAttr -s 18 ".kot[14:17]"  5 5 5 5;
createNode animCurveTA -n "PALbot_L_Index01_ctrl_rotateX1";
	rename -uid "172ACB43-442E-8F4A-4DF0-13ACBBEA979C";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 90 16 24.860662267704871 19 90 20 90 21 90
		 22 90 23 90 24 90 25 90 26 90 28 90 29 90 31 90 33 90 38 90 39 90 41 90 45 90;
	setAttr -s 18 ".kot[14:17]"  5 5 5 5;
createNode animCurveTA -n "PALbot_L_Index01_ctrl_rotateY1";
	rename -uid "7516514C-4F8A-3479-967E-119F785A7F64";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0;
	setAttr -s 18 ".kot[14:17]"  5 5 5 5;
createNode animCurveTA -n "PALbot_L_Index01_ctrl_rotateZ1";
	rename -uid "E3AC877C-430D-D840-FC88-19B9DC349CF0";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0;
	setAttr -s 18 ".kot[14:17]"  5 5 5 5;
createNode animCurveTA -n "PALbot_L_Index02_ctrl_rotateX1";
	rename -uid "D8F3B327-4389-C885-A508-76AE345F5FBA";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 90 16 90 19 90 20 90 21 90 22 90 23 90
		 24 90 25 90 26 90 28 90 29 90 31 90 33 90 38 90 39 90 41 90 45 90;
	setAttr -s 18 ".kit[0:17]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10;
	setAttr -s 18 ".kot[0:17]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 5 5;
createNode animCurveTA -n "PALbot_L_Index02_ctrl_rotateY1";
	rename -uid "8C09FAFA-4FC7-426E-48F8-6BBD5E26024D";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0;
	setAttr -s 18 ".kit[0:17]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10;
	setAttr -s 18 ".kot[0:17]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 5 5;
createNode animCurveTA -n "PALbot_L_Index02_ctrl_rotateZ1";
	rename -uid "2DAE7424-4F81-C0C0-2D86-E1BF7AFBEFEA";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0;
	setAttr -s 18 ".kit[0:17]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10;
	setAttr -s 18 ".kot[0:17]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 5 5;
createNode animCurveTA -n "PALbot_L_Middle01_ctrl_rotateX1";
	rename -uid "F2155F80-49FE-E35B-2C9C-D1BB03743D34";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 90 16 -15.148814511652439 19 90 20 90
		 21 90 22 90 23 90 24 90 25 90 26 90 28 90 29 90 31 90 33 90 38 90 39 90 41 90 45 90;
	setAttr -s 18 ".kot[14:17]"  5 5 5 5;
createNode animCurveTA -n "PALbot_L_Middle01_ctrl_rotateY1";
	rename -uid "B70CB060-44B1-0727-649E-368BF9DCA02C";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0;
	setAttr -s 18 ".kot[14:17]"  5 5 5 5;
createNode animCurveTA -n "PALbot_L_Middle01_ctrl_rotateZ1";
	rename -uid "B292F0EA-4F9E-938F-8D4D-B4AA04393CC1";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0;
	setAttr -s 18 ".kot[14:17]"  5 5 5 5;
createNode animCurveTA -n "PALbot_L_Middle02_ctrl_rotateX1";
	rename -uid "E7CD701D-44BF-C22F-AF65-DE9D569633FC";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 90 16 68.913848150467956 19 90 20 90 21 90
		 22 90 23 90 24 90 25 90 26 90 28 90 29 90 31 90 33 90 38 90 39 90 41 90 45 90;
	setAttr -s 18 ".kit[0:17]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10;
	setAttr -s 18 ".kot[0:17]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 5 5;
createNode animCurveTA -n "PALbot_L_Middle02_ctrl_rotateY1";
	rename -uid "1C4638DC-4C52-012F-A2BF-2EBDD8E158CA";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0;
	setAttr -s 18 ".kit[0:17]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10;
	setAttr -s 18 ".kot[0:17]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 5 5;
createNode animCurveTA -n "PALbot_L_Middle02_ctrl_rotateZ1";
	rename -uid "C061F56D-4D2E-3B7F-20A3-A2BF89E77CBB";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0;
	setAttr -s 18 ".kit[0:17]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10;
	setAttr -s 18 ".kot[0:17]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 5 5;
createNode animCurveTA -n "PALbot_L_Pinky01_ctrl_rotateX1";
	rename -uid "DF1CE7B3-4C38-3E77-731C-C5B3A5453DAC";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 90 16 23.248828655163059 19 90 20 90 21 90
		 22 90 23 90 24 90 25 90 26 90 28 90 29 90 31 90 33 90 38 90 39 90 41 90 45 90;
	setAttr -s 18 ".kot[14:17]"  5 5 5 5;
createNode animCurveTA -n "PALbot_L_Pinky01_ctrl_rotateY1";
	rename -uid "15A3B588-43DC-B755-2C5A-6B9DF40CAF7D";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 -11.231168060891527 19 -11.231168060891509
		 20 -11.231168060891509 21 -11.231168060891509 22 -11.231168060891509 23 -11.231168060891509
		 24 -11.231168060891509 25 -11.231168060891509 26 -11.231168060891509 28 -11.231168060891509
		 29 -11.231168060891509 31 -11.231168060891509 33 -11.231168060891509 38 -11.231168060891509
		 39 -11.231168060891509 41 -11.231168060891509 45 -11.231168060891509;
	setAttr -s 18 ".kot[14:17]"  5 5 5 5;
createNode animCurveTA -n "PALbot_L_Pinky01_ctrl_rotateZ1";
	rename -uid "1B3C8586-4BBF-1946-9643-D3BA2ECC0456";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 -0.32908911383496325 19 -0.32908911383496198
		 20 -0.32908911383496198 21 -0.32908911383496198 22 -0.32908911383496198 23 -0.32908911383496198
		 24 -0.32908911383496198 25 -0.32908911383496198 26 -0.32908911383496198 28 -0.32908911383496198
		 29 -0.32908911383496198 31 -0.32908911383496198 33 -0.32908911383496198 38 -0.32908911383496198
		 39 -0.32908911383496198 41 -0.32908911383496198 45 -0.32908911383496198;
	setAttr -s 18 ".kot[14:17]"  5 5 5 5;
createNode animCurveTA -n "PALbot_L_Pinky02_ctrl_rotateX1";
	rename -uid "5AC2E1D3-436C-7F7C-40B8-A19ECBE892B2";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 90 16 90 19 90 20 90 21 90 22 90 23 90
		 24 90 25 90 26 90 28 90 29 90 31 90 33 90 38 90 39 90 41 90 45 90;
	setAttr -s 18 ".kot[14:17]"  5 5 5 5;
createNode animCurveTA -n "PALbot_L_Pinky02_ctrl_rotateY1";
	rename -uid "13D13955-4B39-6CEE-8F51-F98B2669B225";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0;
	setAttr -s 18 ".kot[14:17]"  5 5 5 5;
createNode animCurveTA -n "PALbot_L_Pinky02_ctrl_rotateZ1";
	rename -uid "184B6853-4701-B389-74E5-F08DABD68B69";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0;
	setAttr -s 18 ".kot[14:17]"  5 5 5 5;
createNode animCurveTA -n "PALbot_L_Ring01_ctrl_rotateX1";
	rename -uid "CD818822-4FB0-24D4-A39A-1FB6166870B1";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 90 16 -4.9558357379105216 19 90 20 90
		 21 90 22 90 23 90 24 90 25 90 26 90 28 90 29 90 31 90 33 90 38 90 39 90 41 90 45 90;
	setAttr -s 18 ".kot[14:17]"  5 5 5 5;
createNode animCurveTA -n "PALbot_L_Ring01_ctrl_rotateY1";
	rename -uid "5DE2AAEB-4FE0-77F2-FCC9-5594DEA8833C";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 -7.4940395138196321 19 -7.4940395138196338
		 20 -7.4940395138196338 21 -7.4940395138196338 22 -7.4940395138196338 23 -7.4940395138196338
		 24 -7.4940395138196338 25 -7.4940395138196338 26 -7.4940395138196338 28 -7.4940395138196338
		 29 -7.4940395138196338 31 -7.4940395138196338 33 -7.4940395138196338 38 -7.4940395138196338
		 39 -7.4940395138196338 41 -7.4940395138196338 45 -7.4940395138196338;
	setAttr -s 18 ".kot[14:17]"  5 5 5 5;
createNode animCurveTA -n "PALbot_L_Ring01_ctrl_rotateZ1";
	rename -uid "35B50023-48A0-A754-EEA4-E38A5D1E37FE";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0.6479443363945403 19 0.64794433639454241
		 20 0.64794433639454241 21 0.64794433639454241 22 0.64794433639454241 23 0.64794433639454241
		 24 0.64794433639454241 25 0.64794433639454241 26 0.64794433639454241 28 0.64794433639454241
		 29 0.64794433639454241 31 0.64794433639454241 33 0.64794433639454241 38 0.64794433639454241
		 39 0.64794433639454241 41 0.64794433639454241 45 0.64794433639454241;
	setAttr -s 18 ".kot[14:17]"  5 5 5 5;
createNode animCurveTA -n "PALbot_L_Ring02_ctrl_rotateX1";
	rename -uid "040B3C26-4891-DF35-8605-5D8AEA532ADC";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 90 16 58.341252987640011 19 90 20 90 21 90
		 22 90 23 90 24 90 25 90 26 90 28 90 29 90 31 90 33 90 38 90 39 90 41 90 45 90;
	setAttr -s 18 ".kot[14:17]"  5 5 5 5;
createNode animCurveTA -n "PALbot_L_Ring02_ctrl_rotateY1";
	rename -uid "76352F8A-4FBE-1A93-9CFA-CD9F0456FE57";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0;
	setAttr -s 18 ".kot[14:17]"  5 5 5 5;
createNode animCurveTA -n "PALbot_L_Ring02_ctrl_rotateZ1";
	rename -uid "ABCF5C22-4F2A-5C58-1CF4-999312844094";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0;
	setAttr -s 18 ".kot[14:17]"  5 5 5 5;
createNode animCurveTA -n "PALbot_L_Thumb02_ctrl_rotateX1";
	rename -uid "4AA7F9CC-4E12-D051-4AB8-1D8561BC8456";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 12.000000000000002 16 12.000000000000002
		 19 12.000000000000002 20 12.000000000000002 21 12.000000000000002 22 12.000000000000002
		 23 12.000000000000002 24 12.000000000000002 25 12.000000000000002 26 12.000000000000002
		 28 12.000000000000002 29 12.000000000000002 31 12.000000000000002 33 12.000000000000002
		 38 12.000000000000002 39 12.000000000000002 41 12.000000000000002 45 12.000000000000002;
	setAttr -s 18 ".kot[14:17]"  5 5 5 5;
createNode animCurveTA -n "PALbot_L_Thumb02_ctrl_rotateY1";
	rename -uid "F1E06D43-4F5F-057A-28DF-5E8363C6CCA6";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0;
	setAttr -s 18 ".kot[14:17]"  5 5 5 5;
createNode animCurveTA -n "PALbot_L_Thumb02_ctrl_rotateZ1";
	rename -uid "4679B18C-4281-732D-11AD-E7BE92BAC826";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0;
	setAttr -s 18 ".kot[14:17]"  5 5 5 5;
createNode animCurveTA -n "PALbot_L_Thumb03_ctrl_rotateX1";
	rename -uid "31028FDA-4668-6348-9CB6-3F8A958720D7";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 90 16 90 19 90 20 90 21 90 22 90 23 90
		 24 90 25 90 26 90 28 90 29 90 31 90 33 90 38 90 39 90 41 90 45 90;
	setAttr -s 18 ".kot[14:17]"  5 5 5 5;
createNode animCurveTA -n "PALbot_L_Thumb03_ctrl_rotateY1";
	rename -uid "D4D3005E-46CE-5EBD-7C95-F7AF5B994D2D";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0;
	setAttr -s 18 ".kot[14:17]"  5 5 5 5;
createNode animCurveTA -n "PALbot_L_Thumb03_ctrl_rotateZ1";
	rename -uid "54A12EBA-46B4-EC50-7BB7-A7A05193930A";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0;
	setAttr -s 18 ".kot[14:17]"  5 5 5 5;
createNode animCurveTL -n "PALbot_L_Middle01_ctrl_translateX1";
	rename -uid "E024D50A-4650-BC59-15AA-498B3665D005";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0;
	setAttr -s 18 ".kot[14:17]"  5 5 5 5;
createNode animCurveTL -n "PALbot_L_Middle01_ctrl_translateY1";
	rename -uid "866DE955-40F8-C939-628C-8296DCEB7184";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0;
	setAttr -s 18 ".kot[14:17]"  5 5 5 5;
createNode animCurveTL -n "PALbot_L_Middle01_ctrl_translateZ1";
	rename -uid "159A10F1-4261-8E82-050D-9CACB244ABA6";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0;
	setAttr -s 18 ".kot[14:17]"  5 5 5 5;
createNode animCurveTL -n "PALbot_L_Index02_ctrl_translateX1";
	rename -uid "9AB13609-4EA0-682C-CFA9-C3890BCC39EF";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0;
	setAttr -s 18 ".kit[0:17]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10;
	setAttr -s 18 ".kot[0:17]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 5 5;
createNode animCurveTL -n "PALbot_L_Index02_ctrl_translateY1";
	rename -uid "2034BBA3-4481-B165-C7D1-749BF6547854";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0;
	setAttr -s 18 ".kit[0:17]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10;
	setAttr -s 18 ".kot[0:17]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 5 5;
createNode animCurveTL -n "PALbot_L_Index02_ctrl_translateZ1";
	rename -uid "9D699753-4B41-2120-0A01-71ADEFB69A81";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0;
	setAttr -s 18 ".kit[0:17]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10;
	setAttr -s 18 ".kot[0:17]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 5 5;
createNode animCurveTL -n "PALbot_L_Thumb03_ctrl_translateX1";
	rename -uid "9B7F6440-408E-C6EA-A9B2-5086A9474407";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0;
	setAttr -s 18 ".kot[14:17]"  5 5 5 5;
createNode animCurveTL -n "PALbot_L_Thumb03_ctrl_translateY1";
	rename -uid "28637B24-45B6-9ED4-6C45-1483FC15D6E0";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0;
	setAttr -s 18 ".kot[14:17]"  5 5 5 5;
createNode animCurveTL -n "PALbot_L_Thumb03_ctrl_translateZ1";
	rename -uid "234F03A8-450A-CC9C-B424-6AB1B83C9451";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0;
	setAttr -s 18 ".kot[14:17]"  5 5 5 5;
createNode animCurveTL -n "PALbot_L_Ring02_ctrl_translateX1";
	rename -uid "E9DD1FBA-4114-ACC5-D1E3-88BC4872C432";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0;
	setAttr -s 18 ".kot[14:17]"  5 5 5 5;
createNode animCurveTL -n "PALbot_L_Ring02_ctrl_translateY1";
	rename -uid "6C4A0AF7-430C-F370-D1BF-96A504B8AD4C";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0;
	setAttr -s 18 ".kot[14:17]"  5 5 5 5;
createNode animCurveTL -n "PALbot_L_Ring02_ctrl_translateZ1";
	rename -uid "10033B1C-4CDD-1F8C-F82C-3997FB6CD426";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0;
	setAttr -s 18 ".kot[14:17]"  5 5 5 5;
createNode animCurveTL -n "PALbot_L_Index01_ctrl_translateX1";
	rename -uid "207AAA9A-43AB-F725-6629-ABA73EC590C8";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0;
	setAttr -s 18 ".kot[14:17]"  5 5 5 5;
createNode animCurveTL -n "PALbot_L_Index01_ctrl_translateY1";
	rename -uid "EBFF31A8-491C-8FF0-0953-1396400499BC";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0;
	setAttr -s 18 ".kot[14:17]"  5 5 5 5;
createNode animCurveTL -n "PALbot_L_Index01_ctrl_translateZ1";
	rename -uid "1C6CE354-428C-211E-7924-33A3A0257E13";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0;
	setAttr -s 18 ".kot[14:17]"  5 5 5 5;
createNode animCurveTL -n "PALbot_L_Thumb02_ctrl_translateX1";
	rename -uid "0408F26B-4C75-25C5-B378-5487F9E26723";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0;
	setAttr -s 18 ".kot[14:17]"  5 5 5 5;
createNode animCurveTL -n "PALbot_L_Thumb02_ctrl_translateY1";
	rename -uid "5C114CCF-4E9A-2638-80ED-0688226F92E2";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0;
	setAttr -s 18 ".kot[14:17]"  5 5 5 5;
createNode animCurveTL -n "PALbot_L_Thumb02_ctrl_translateZ1";
	rename -uid "3E58A2F9-49CC-235F-9F81-CDB02AC9900C";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0;
	setAttr -s 18 ".kot[14:17]"  5 5 5 5;
createNode animCurveTL -n "PALbot_L_Pinky01_ctrl_translateX1";
	rename -uid "DF143CD6-40CF-E7C9-27C3-5B8B240ACAFE";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0;
	setAttr -s 18 ".kot[14:17]"  5 5 5 5;
createNode animCurveTL -n "PALbot_L_Pinky01_ctrl_translateY1";
	rename -uid "8A5B3D3E-4B0B-DA7D-838E-FC9FC8C64938";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0;
	setAttr -s 18 ".kot[14:17]"  5 5 5 5;
createNode animCurveTL -n "PALbot_L_Pinky01_ctrl_translateZ1";
	rename -uid "C31FF43A-4DC6-73A7-0FAB-A0B73B637B70";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0;
	setAttr -s 18 ".kot[14:17]"  5 5 5 5;
createNode animCurveTL -n "PALbot_L_Middle02_ctrl_translateX1";
	rename -uid "E9B5E409-41E7-155C-E2CF-F0AC39B6F27C";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0;
	setAttr -s 18 ".kit[0:17]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10;
	setAttr -s 18 ".kot[0:17]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 5 5;
createNode animCurveTL -n "PALbot_L_Middle02_ctrl_translateY1";
	rename -uid "52848F9B-4135-F20E-2BD8-5BAF70414D58";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0;
	setAttr -s 18 ".kit[0:17]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10;
	setAttr -s 18 ".kot[0:17]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 5 5;
createNode animCurveTL -n "PALbot_L_Middle02_ctrl_translateZ1";
	rename -uid "8C964295-4C98-F03C-9066-2C8A3B50FAA8";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0;
	setAttr -s 18 ".kit[0:17]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10;
	setAttr -s 18 ".kot[0:17]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 5 5;
createNode animCurveTL -n "PALbot_L_Ring01_ctrl_translateX1";
	rename -uid "907563F7-4E87-4F58-7809-97BC69D67F39";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0;
	setAttr -s 18 ".kot[14:17]"  5 5 5 5;
createNode animCurveTL -n "PALbot_L_Ring01_ctrl_translateY1";
	rename -uid "B68FB377-47B3-7755-DB0B-CA967480E967";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0;
	setAttr -s 18 ".kot[14:17]"  5 5 5 5;
createNode animCurveTL -n "PALbot_L_Ring01_ctrl_translateZ1";
	rename -uid "CA34903A-4B9A-AE99-5C24-A4A6E8A8579B";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0;
	setAttr -s 18 ".kot[14:17]"  5 5 5 5;
createNode animCurveTL -n "PALbot_L_Pinky02_ctrl_translateX1";
	rename -uid "520F466D-4A25-E176-3D62-7AA7783EDC12";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0;
	setAttr -s 18 ".kot[14:17]"  5 5 5 5;
createNode animCurveTL -n "PALbot_L_Pinky02_ctrl_translateY1";
	rename -uid "898C029B-4389-CCEE-5270-54AAFF34E6E8";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0;
	setAttr -s 18 ".kot[14:17]"  5 5 5 5;
createNode animCurveTL -n "PALbot_L_Pinky02_ctrl_translateZ1";
	rename -uid "5A7517F6-4C89-40BB-1E25-C48EFEB7914B";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0;
	setAttr -s 18 ".kot[14:17]"  5 5 5 5;
createNode animCurveTA -n "PALbot_R_FK_Elbow_ctrl_rotateX1";
	rename -uid "65998CC0-4ACA-7113-888A-EDA1D71A9EF7";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 -82.842917925361974 16 -45.108285928243511
		 19 -45.108285928243511 20 -10.92093420476399 21 -5.3565864172935056 22 -4.5616795905120107
		 23 -21.665986986759869 24 -48.701827709861234 25 -64.15087955163348 26 -61.170596298581827
		 28 -52.655501289862748 29 -52.655501289862748 31 -52.655501289862748 33 -52.655501289862748
		 35 -97.337999715899642 36 -127.80678394712493 37 -127.39380712617177 38 -131.4643758422321
		 39 -112.87534894587574 41 -106.18593265598264 43 -84.007039471265429 44 -53.379651330380312
		 46 -24.352610005501052 52 -54.807787513785172 53 -54.807787513785172 58 -46.88778732436753;
	setAttr -s 26 ".kit[21:25]"  9 9 10 1 10;
	setAttr -s 26 ".kot[18:25]"  5 10 10 9 9 10 1 10;
	setAttr -s 26 ".kix[24:25]"  0.72719214065939886 0.83326445645849456;
	setAttr -s 26 ".kiy[24:25]"  -0.68643396664442613 0.55287462014721733;
	setAttr -s 26 ".kox[24:25]"  0.72719214065939886 0.83326445645849456;
	setAttr -s 26 ".koy[24:25]"  -0.68643396664442613 0.55287462014721733;
createNode animCurveTL -n "PALbot_R_FK_Elbow_ctrl_translateX1";
	rename -uid "141F2FE3-4A10-30E4-1B3E-66A40FA73E44";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 46 0 52 0 53 0 58 0;
	setAttr -s 26 ".kit[21:25]"  9 9 10 1 10;
	setAttr -s 26 ".kot[18:25]"  5 10 10 9 9 10 1 10;
	setAttr -s 26 ".kix[24:25]"  1 1;
	setAttr -s 26 ".kiy[24:25]"  0 0;
	setAttr -s 26 ".kox[24:25]"  1 1;
	setAttr -s 26 ".koy[24:25]"  0 0;
createNode animCurveTL -n "PALbot_R_FK_Elbow_ctrl_translateY1";
	rename -uid "38C44061-428F-287F-FF33-7BA088EB43AB";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 46 0 52 0 53 0 58 0;
	setAttr -s 26 ".kit[21:25]"  9 9 10 1 10;
	setAttr -s 26 ".kot[18:25]"  5 10 10 9 9 10 1 10;
	setAttr -s 26 ".kix[24:25]"  1 1;
	setAttr -s 26 ".kiy[24:25]"  0 0;
	setAttr -s 26 ".kox[24:25]"  1 1;
	setAttr -s 26 ".koy[24:25]"  0 0;
createNode animCurveTL -n "PALbot_R_FK_Elbow_ctrl_translateZ1";
	rename -uid "968E00EA-4F02-0A59-5E4F-0B86A02B39D2";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 46 0 52 0 53 0 58 0;
	setAttr -s 26 ".kit[21:25]"  9 9 10 1 10;
	setAttr -s 26 ".kot[18:25]"  5 10 10 9 9 10 1 10;
	setAttr -s 26 ".kix[24:25]"  1 1;
	setAttr -s 26 ".kiy[24:25]"  0 0;
	setAttr -s 26 ".kox[24:25]"  1 1;
	setAttr -s 26 ".koy[24:25]"  0 0;
createNode animCurveTA -n "PALbot_L_Arm_ctrl_rotateY2";
	rename -uid "A9C97B49-43D2-4021-01C6-68B005604C46";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 -72.29825763745842 16 -171.18352338409932
		 19 -171.18352338409932 20 -209.94284424631201 21 -248.70216510852453 22 -216.43364874926021
		 23 -236.07608810713825 24 -267.18771794094573 25 -285.24879160483721 26 -285.41387463083811
		 28 -285.48338327336478 29 -285.48338327336478 31 -287.55282837536885 33 -278.76208088648826
		 35 -276.95856379369241 36 -340.66490395418845 39 -383.29234130341644 40 -383.29234130341644
		 43 -360.38561227167702 46 -362.68760863063278 52 -362.68760863063278 53 -362.68760863063278
		 55 -362.68760863063278 58 -362.67928981646588;
	setAttr -s 24 ".kot[16:23]"  5 10 10 10 10 10 10 10;
createNode animCurveTA -n "PALbot_L_Arm_ctrl_rotateZ2";
	rename -uid "B3CCB754-4F45-52ED-A833-20B69F763851";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 25 ".ktv[0:24]"  0 0 16 -21.551606902799197 19 -21.551606902799197
		 20 -15.744558260254022 21 -6.5656749220375019 22 -1.3205987287709697 23 -5.09803307449409
		 24 -11.881958206321487 25 -19.359543445396731 26 -26.527994874987968 28 -36.856243352698137
		 31 -47.147783423770733 33 -36.248425899111389 35 -33.811998005930548 36 -37.42950384699585
		 37 -43.760139068859921 38 -47.765234821467907 39 -47.765234821467779 40 -47.765234821467878
		 43 -49.109394404545505 46 -19.734480654177013 52 -19.734480654177013 53 -19.734480654177013
		 55 -19.734480654177013 58 -28.860453353337256;
	setAttr -s 25 ".kot[17:24]"  5 10 10 10 10 10 10 10;
createNode animCurveTL -n "PALbot_L_Arm_ctrl_translateX2";
	rename -uid "5F6B5158-46FD-3C60-B9B1-D08CCD71EEC2";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 43 0 46 0 52 0 53 0 55 0 58 0;
	setAttr -s 26 ".kot[18:25]"  5 10 10 10 10 10 10 10;
createNode animCurveTL -n "PALbot_L_Arm_ctrl_translateY2";
	rename -uid "0A3D5083-4D44-7AFE-96DD-9EBA3CF714A3";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 43 0 46 0 52 0 53 0 55 0 58 0;
	setAttr -s 26 ".kot[18:25]"  5 10 10 10 10 10 10 10;
createNode animCurveTL -n "PALbot_L_Arm_ctrl_translateZ2";
	rename -uid "75F4CA75-4D1A-6830-ECC0-23A664F3AD18";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 40 0 43 0 46 0 52 0 53 0 55 0 58 0;
	setAttr -s 26 ".kot[18:25]"  5 10 10 10 10 10 10 10;
createNode animCurveTA -n "PALbot_R_FK_Wrist_ctrl_rotateX1";
	rename -uid "D949742A-4A44-B6F6-C4C2-56B1B7F68D88";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 0 16 87.979794094061461 19 87.979794094061461
		 20 87.979794094061461 21 87.979794094061461 22 87.979794094061461 23 86.638831374414337
		 24 84.519245140133393 25 83.308053006258575 26 83.308053006258575 28 83.308053006258575
		 29 83.308053006258575 31 83.308053006258575 33 83.308053006258575 36 -88.319834753932824
		 38 83.308053006258575 39 83.308053006258575 41 83.308053006258575 46 83.308053006258575
		 47 83.308053006258575;
	setAttr -s 20 ".kit[0:19]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10 10 10;
	setAttr -s 20 ".kot[0:19]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 5 5 5 5;
createNode animCurveTA -n "PALbot_R_FK_Wrist_ctrl_rotateY1";
	rename -uid "8EF17BF7-46B4-9665-19ED-EBA1CC93DEF8";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 47.786115061402576 16 -55.675289624157685
		 19 -55.675289624157685 20 -55.675289624157685 21 -55.675289624157685 22 -55.675289624157685
		 23 -62.708597383866454 24 -73.825761262115762 25 -80.178426335401099 26 -80.178426335401099
		 28 -80.178426335401099 29 -80.178426335401099 31 -80.178426335401099 33 -80.178426335401099
		 36 -47.315532551534872 38 -80.178426335401099 39 -80.178426335401099 41 -80.178426335401099
		 46 -80.178426335401099 47 -80.178426335401099;
	setAttr -s 20 ".kit[0:19]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10 10 10;
	setAttr -s 20 ".kot[0:19]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 5 5 5 5;
createNode animCurveTA -n "PALbot_R_FK_Wrist_ctrl_rotateZ1";
	rename -uid "0A2DACDD-4C96-B74C-49C5-7F89A0610746";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 0 16 -88.331382649983539 19 -88.331382649983539
		 20 -88.331382649983539 21 -88.331382649983539 22 -88.331382649983539 23 -86.917403474617871
		 24 -84.682404132910847 25 -83.40526165193539 26 -83.40526165193539 28 -83.40526165193539
		 29 -83.40526165193539 31 -83.40526165193539 33 -83.40526165193539 36 88.764750461970607
		 38 -83.40526165193539 39 -83.40526165193539 41 -83.40526165193539 46 -83.40526165193539
		 47 -83.40526165193539;
	setAttr -s 20 ".kit[0:19]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10 10 10;
	setAttr -s 20 ".kot[0:19]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 5 5 5 5;
createNode animCurveTL -n "PALbot_R_FK_Wrist_ctrl_translateX1";
	rename -uid "89DF2BED-4E8D-307A-37D7-ABA387E3F35E";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 36 0 38 0 39 0 41 0 46 0 47 0;
	setAttr -s 20 ".kit[0:19]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10 10 10;
	setAttr -s 20 ".kot[0:19]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 5 5 5 5;
createNode animCurveTL -n "PALbot_R_FK_Wrist_ctrl_translateY1";
	rename -uid "4CC915CD-4BDE-595D-8AD0-B8999CFFBDDD";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 36 0 38 0 39 0 41 0 46 0 47 0;
	setAttr -s 20 ".kit[0:19]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10 10 10;
	setAttr -s 20 ".kot[0:19]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 5 5 5 5;
createNode animCurveTL -n "PALbot_R_FK_Wrist_ctrl_translateZ1";
	rename -uid "62DBFBD9-48C6-F8AE-BBBD-F5BEB6C8806F";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 36 0 38 0 39 0 41 0 46 0 47 0;
	setAttr -s 20 ".kit[0:19]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10 10 10;
	setAttr -s 20 ".kot[0:19]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 5 5 5 5;
createNode animCurveTA -n "PALbot_chestUp_ctrl_rotateX1";
	rename -uid "27C0D238-4CEF-8C7B-3DF7-06BD9DDA2E75";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  0 7.5154335156577003 16 -1.919700439938907
		 19 16.096443984455977 20 19.846118946733778 21 22.899957572274857 22 26.813220771363966
		 23 35.887640677240299 24 46.887865264249903 25 56.842901626040145 26 59.921445247092997
		 28 50.605589879483624 31 38.591320983687801 33 13.689960537688487 34 6.3390578247092071
		 35 6.1491561501855783 38 28.061342224907502 39 34.031222762202511 44 0 47 -11.191997053841288
		 53 -9.3983909601041749 54 -9.3983909601041749 56 0.13980413576672887;
	setAttr -s 22 ".kit[16:21]"  9 10 10 10 1 10;
	setAttr -s 22 ".kot[16:21]"  5 10 10 10 1 10;
	setAttr -s 22 ".kix[20:21]"  1 0.44762985903948033;
	setAttr -s 22 ".kiy[20:21]"  0 0.89421893812214404;
	setAttr -s 22 ".kox[20:21]"  1 0.44762985903948038;
	setAttr -s 22 ".koy[20:21]"  0 0.89421893812214415;
createNode animCurveTA -n "PALbot_chestUp_ctrl_rotateY1";
	rename -uid "5D146426-4013-7125-01B5-AFA3D2868B7E";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  0 0.15621542728432392 16 0.15621542728432411
		 19 7.7144828823825584 20 7.7144828823825584 21 7.7144828823825584 22 7.7144828823825584
		 23 9.9210273685880566 24 13.667052122072358 25 16.951364486055446 26 17.618538447217471
		 28 5.293740251990708 31 3.7444190187256585 33 -12.054749677896227 34 -11.21923921928291
		 35 -10.383728760669587 38 -21.104604472795344 39 -21.104604472795348 44 0 47 0 53 39.028350525007106
		 54 39.028350525007106 56 20.465158845320651;
	setAttr -s 22 ".kit[16:21]"  9 10 10 10 1 10;
	setAttr -s 22 ".kot[16:21]"  5 10 10 10 1 10;
	setAttr -s 22 ".kix[20:21]"  0.63249043038778185 0.249102510261106;
	setAttr -s 22 ".kiy[20:21]"  0.77456817354438112 -0.96847712382978635;
	setAttr -s 22 ".kox[20:21]"  0.63249043038778185 0.24910251026110602;
	setAttr -s 22 ".koy[20:21]"  0.77456817354438112 -0.96847712382978646;
createNode animCurveTA -n "PALbot_chestUp_ctrl_rotateZ1";
	rename -uid "35A68C36-4DB7-4B4C-D3E8-DDAD039E810B";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  0 0.20611809981856194 16 0.20611809981856208
		 19 -0.36301979797634448 20 -0.36301979797634482 21 -0.36301979797634493 22 -0.36301979797634509
		 23 5.8899662488189479 24 16.237505556774398 25 24.20429976898475 26 25.402416623455622
		 28 12.795011265900738 31 13.105948577099461 33 7.4687304860023316 34 4.0041355394312843
		 35 1.9358081466646166 38 0.34200457730703288 39 0.34200457730703115 44 0 47 0 53 -9.2293124505957795
		 54 -9.2293124505957795 56 5.7030904619030736;
	setAttr -s 22 ".kit[16:21]"  9 10 10 10 1 10;
	setAttr -s 22 ".kot[16:21]"  5 10 10 10 1 10;
	setAttr -s 22 ".kix[20:21]"  0.9464052017908029 0.30456043596084909;
	setAttr -s 22 ".kiy[20:21]"  0.32298172397723957 0.9524930135425338;
	setAttr -s 22 ".kox[20:21]"  0.9464052017908029 0.30456043596084914;
	setAttr -s 22 ".koy[20:21]"  0.32298172397723957 0.95249301354253391;
createNode animCurveTL -n "PALbot_chestUp_ctrl_translateX1";
	rename -uid "D05FD0D2-46BE-E378-1E14-56B224D27BCC";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 0 16 0 19 -0.046578703117553737 20 -0.046578703117553737
		 21 -0.046578703117553737 22 -0.046578703117553737 23 -0.046578703117553737 24 -0.046578703117553737
		 25 -0.046578703117553737 26 -0.046578703117553737 28 -0.046578703117553737 29 -0.046578703117553737
		 31 -0.046578703117553737 33 -0.046578703117553737 34 -0.046578703117553737 35 -0.046578703117553737
		 38 -0.046578703117553737 39 -0.046578703117553737 44 0 47 0.23127988219444079 53 0.23127988219444079
		 54 0.23127988219444079 56 0.23127988219444079;
	setAttr -s 23 ".kit[17:22]"  9 10 10 10 1 10;
	setAttr -s 23 ".kot[17:22]"  5 10 10 10 1 10;
	setAttr -s 23 ".kix[21:22]"  1 1;
	setAttr -s 23 ".kiy[21:22]"  0 0;
	setAttr -s 23 ".kox[21:22]"  1 1;
	setAttr -s 23 ".koy[21:22]"  0 0;
createNode animCurveTL -n "PALbot_chestUp_ctrl_translateY1";
	rename -uid "34DF3D7E-4247-F98A-C303-169AF88B69E8";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 34 0 35 0 38 0 39 0 44 0 47 0.00095929933239196079 53 0.00095929933239196079
		 54 0.00095929933239196079 56 0.00095929933239196079;
	setAttr -s 23 ".kit[17:22]"  9 10 10 10 1 10;
	setAttr -s 23 ".kot[17:22]"  5 10 10 10 1 10;
	setAttr -s 23 ".kix[21:22]"  1 1;
	setAttr -s 23 ".kiy[21:22]"  0 0;
	setAttr -s 23 ".kox[21:22]"  1 1;
	setAttr -s 23 ".koy[21:22]"  0 0;
createNode animCurveTL -n "PALbot_chestUp_ctrl_translateZ1";
	rename -uid "1048A2D8-4E26-CA89-9E7A-76AA2A05B867";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 0 16 0 19 0.49999552408098513 20 0.49999552408098513
		 21 0.49999552408098513 22 0.49999552408098513 23 0.49999552408098513 24 0.49999552408098513
		 25 0.49999552408098513 26 0.49999552408098513 28 0.49999552408098513 29 0.49999552408098513
		 31 0.49999552408098513 33 0.49999552408098513 34 0.49999552408098513 35 0.49999552408098513
		 38 0.49999552408098513 39 0.49999552408098513 44 0 47 0.014062619074986599 53 0.014062619074986599
		 54 0.014062619074986599 56 0.014062619074986599;
	setAttr -s 23 ".kit[17:22]"  9 10 10 10 1 10;
	setAttr -s 23 ".kot[17:22]"  5 10 10 10 1 10;
	setAttr -s 23 ".kix[21:22]"  1 1;
	setAttr -s 23 ".kiy[21:22]"  0 0;
	setAttr -s 23 ".kox[21:22]"  1 1;
	setAttr -s 23 ".koy[21:22]"  0 0;
createNode animCurveTU -n "PALbot_chestUp_ctrl_secondary_vis1";
	rename -uid "4AA27BFF-44EB-75A4-EF6A-AAB02C7C25AB";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 34 0 35 0 38 0 39 0 44 0 47 0 53 0 54 0 56 0;
	setAttr -s 23 ".kit[17:22]"  9 10 10 10 1 10;
	setAttr -s 23 ".kot[17:22]"  5 10 10 10 1 10;
	setAttr -s 23 ".kix[21:22]"  1 1;
	setAttr -s 23 ".kiy[21:22]"  0 0;
	setAttr -s 23 ".kox[21:22]"  1 1;
	setAttr -s 23 ".koy[21:22]"  0 0;
createNode animCurveTA -n "PALbot_L_ShoulderRotate_ctrl_rotateZ2";
	rename -uid "B38AB2B2-442B-A835-CD85-B887D624DC54";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 10.5569749046432 16 -19.300753794681931
		 19 -44.945648672765984 20 -58.143685818181623 21 -73.081090352382304 22 -87.650054940096609
		 23 -99.205815720228543 24 -108.5395871207198 25 -112.47448173102497 26 -112.47448173102497
		 28 -112.47448173102497 29 -112.47448173102497 31 -112.47448173102497 33 -112.47448173102497
		 38 -112.47448173102497 39 -112.47448173102497 41 -112.47448173102497 46 -112.47448173102497
		 52 -152.56270835640737 53 -152.56270835640737;
	setAttr -s 20 ".kit[19]"  1;
	setAttr -s 20 ".kot[14:19]"  5 5 5 10 10 1;
	setAttr -s 20 ".kix[19]"  0.23172342219127759;
	setAttr -s 20 ".kiy[19]"  -0.97278171015288051;
	setAttr -s 20 ".kox[19]"  0.23172342219127762;
	setAttr -s 20 ".koy[19]"  -0.97278171015288062;
createNode animCurveTL -n "PALbot_L_ShoulderRotate_ctrl_translateX2";
	rename -uid "86AF336C-40C8-7BCF-40A8-56BD383782A6";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 46 0 52 0 53 0;
	setAttr -s 20 ".kit[19]"  1;
	setAttr -s 20 ".kot[14:19]"  5 5 5 10 10 1;
	setAttr -s 20 ".kix[19]"  1;
	setAttr -s 20 ".kiy[19]"  0;
	setAttr -s 20 ".kox[19]"  1;
	setAttr -s 20 ".koy[19]"  0;
createNode animCurveTL -n "PALbot_L_ShoulderRotate_ctrl_translateY2";
	rename -uid "C280FA2F-495F-0CBF-BFA7-479FE0C144A6";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 46 0 52 0 53 0;
	setAttr -s 20 ".kit[19]"  1;
	setAttr -s 20 ".kot[14:19]"  5 5 5 10 10 1;
	setAttr -s 20 ".kix[19]"  1;
	setAttr -s 20 ".kiy[19]"  0;
	setAttr -s 20 ".kox[19]"  1;
	setAttr -s 20 ".koy[19]"  0;
createNode animCurveTL -n "PALbot_L_ShoulderRotate_ctrl_translateZ2";
	rename -uid "61E377B8-4AD9-1A71-F85A-BD9F7DA5F2C8";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 46 0 52 0 53 0;
	setAttr -s 20 ".kit[19]"  1;
	setAttr -s 20 ".kot[14:19]"  5 5 5 10 10 1;
	setAttr -s 20 ".kix[19]"  1;
	setAttr -s 20 ".kiy[19]"  0;
	setAttr -s 20 ".kox[19]"  1;
	setAttr -s 20 ".koy[19]"  0;
createNode animCurveTA -n "PALbot_MAIN_rotateX1";
	rename -uid "C025C09E-4522-F883-5FA5-D28C562101E0";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 25 ".ktv[0:24]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 51 0;
	setAttr -s 25 ".kit[0:24]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10;
	setAttr -s 25 ".kot[0:24]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 10 5 5 5 10 5 5 5 10;
createNode animCurveTA -n "PALbot_MAIN_rotateY1";
	rename -uid "CC2C7652-4866-462A-3374-FD87FCE00DC6";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 25 ".ktv[0:24]"  0 0 16 0 19 0 20 0 21 0 22 0 23 20.509636512591197
		 24 56.401500409625669 25 66.619764261587832 26 74.661605164711943 28 85.267255544434377
		 29 85.267255544434377 31 85.267255544434377 33 85.267255544434377 38 85.267255544434377
		 39 85.267255544434377 41 85.267255544434377 42 85.267255544434377 43 85.267255544434377
		 44 85.267255544434377 45 85.267255544434377 46 85.267255544434377 47 85.267255544434377
		 49 85.267255544434377 51 85.267255544434377;
	setAttr -s 25 ".kit[0:24]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10;
	setAttr -s 25 ".kot[0:24]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 10 5 5 5 10 5 5 5 10;
createNode animCurveTA -n "PALbot_MAIN_rotateZ1";
	rename -uid "C0B768DD-4016-9FEF-7DB3-4B9B6CEA8C93";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 25 ".ktv[0:24]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 51 0;
	setAttr -s 25 ".kit[0:24]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10;
	setAttr -s 25 ".kot[0:24]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 10 5 5 5 10 5 5 5 10;
createNode animCurveTA -n "PALbot_root_rotateX1";
	rename -uid "2C5FEC44-4276-EDFD-5499-68AE843C4366";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0 47 0;
	setAttr -s 19 ".kit[0:18]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10 10;
	setAttr -s 19 ".kot[0:18]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 10 5 5;
createNode animCurveTA -n "PALbot_root_rotateY1";
	rename -uid "E6652727-4AE9-1118-FFC5-ACBA737ECC9A";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0 47 0;
	setAttr -s 19 ".kit[0:18]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10 10;
	setAttr -s 19 ".kot[0:18]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 10 5 5;
createNode animCurveTA -n "PALbot_root_rotateZ1";
	rename -uid "922DC0E0-4044-9C4B-D46B-93801AB972A4";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0 47 0;
	setAttr -s 19 ".kit[0:18]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10 10;
	setAttr -s 19 ".kot[0:18]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 10 5 5;
createNode animCurveTA -n "PALbot_L_Engine_ctrl_rotateX1";
	rename -uid "DB0A9278-4581-F7D1-711E-1F8B0D11131A";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 16 0 19 0 22 0 25 0 33 0 38 0 39 0 41 0
		 45 0;
	setAttr -s 10 ".kit[0:9]"  18 10 10 10 10 10 10 10 
		10 10;
	setAttr -s 10 ".kot[0:9]"  5 10 10 10 10 5 5 5 
		10 5;
createNode animCurveTA -n "PALbot_L_Engine_ctrl_rotateY1";
	rename -uid "E1802CD2-4BD4-8D76-3BD6-A3AB2135A50E";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 16 0 19 0 22 0 25 0 33 0 38 0 39 0 41 0
		 45 0;
	setAttr -s 10 ".kit[0:9]"  18 10 10 10 10 10 10 10 
		10 10;
	setAttr -s 10 ".kot[0:9]"  5 10 10 10 10 5 5 5 
		10 5;
createNode animCurveTA -n "PALbot_L_Engine_ctrl_rotateZ1";
	rename -uid "258FF246-45DA-30DE-EA91-46AB39E185CE";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 16 0 19 0 22 0 25 0 33 0 38 0 39 0 41 0
		 45 0;
	setAttr -s 10 ".kit[0:9]"  18 10 10 10 10 10 10 10 
		10 10;
	setAttr -s 10 ".kot[0:9]"  5 10 10 10 10 5 5 5 
		10 5;
createNode animCurveTA -n "PALbot_L_IK_heel_lift_tip_rotateX1";
	rename -uid "9CB38B32-4A3C-3F1C-2118-B2B7BA2D941B";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 16 0 19 0 22 0 25 0 33 0 38 0 39 0 41 0
		 45 0;
	setAttr -s 10 ".kit[0:9]"  18 10 10 10 10 10 10 10 
		10 10;
	setAttr -s 10 ".kot[0:9]"  5 10 10 10 10 5 5 5 
		10 5;
createNode animCurveTA -n "PALbot_L_IK_heel_lift_tip_rotateY1";
	rename -uid "B03FB870-4DF1-BA49-BD5C-B8812DDCB357";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 16 0 19 0 22 0 25 0 33 0 38 0 39 0 41 0
		 45 0;
	setAttr -s 10 ".kit[0:9]"  18 10 10 10 10 10 10 10 
		10 10;
	setAttr -s 10 ".kot[0:9]"  5 10 10 10 10 5 5 5 
		10 5;
createNode animCurveTA -n "PALbot_L_IK_heel_lift_tip_rotateZ1";
	rename -uid "3B2014F8-4B3C-88D0-B8F7-6F9E2C861737";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 16 0 19 0 22 0 25 0 33 0 38 0 39 0 41 0
		 45 0;
	setAttr -s 10 ".kit[0:9]"  18 10 10 10 10 10 10 10 
		10 10;
	setAttr -s 10 ".kot[0:9]"  5 10 10 10 10 5 5 5 
		10 5;
createNode animCurveTA -n "PALbot_L_IK_foot_tip_rotateX1";
	rename -uid "CB529BB9-43C6-AFAA-289F-69BFE8AB37A0";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 16 0 19 0 22 0 25 0 33 0 38 0 39 0 41 0
		 45 0;
	setAttr -s 10 ".kit[0:9]"  18 10 10 10 10 10 10 10 
		10 10;
	setAttr -s 10 ".kot[0:9]"  5 10 10 10 10 10 5 5 
		10 5;
createNode animCurveTA -n "PALbot_L_IK_foot_tip_rotateY1";
	rename -uid "8A96D2E7-49FD-F30D-C605-C2A07A08CA2D";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 16 0 19 0 22 0 25 0 33 0 38 0 39 0 41 0
		 45 0;
	setAttr -s 10 ".kit[0:9]"  18 10 10 10 10 10 10 10 
		10 10;
	setAttr -s 10 ".kot[0:9]"  5 10 10 10 10 10 5 5 
		10 5;
createNode animCurveTA -n "PALbot_L_IK_foot_tip_rotateZ1";
	rename -uid "3AECB530-431C-AC18-081B-6CB9E7BAE4A0";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 16 0 19 0 22 0 25 0 33 0 38 0 39 0 41 0
		 45 0;
	setAttr -s 10 ".kit[0:9]"  18 10 10 10 10 10 10 10 
		10 10;
	setAttr -s 10 ".kot[0:9]"  5 10 10 10 10 10 5 5 
		10 5;
createNode animCurveTA -n "PALbot_L_IK_footBall_ctrl_rotateX1";
	rename -uid "6D979226-415B-940D-B5D4-87B821765525";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 16 0 19 0 22 0 25 0 33 0 38 0 39 0 41 0
		 45 0;
	setAttr -s 10 ".kit[0:9]"  18 10 10 10 10 10 10 10 
		10 10;
	setAttr -s 10 ".kot[0:9]"  5 10 10 10 10 5 5 5 
		10 5;
createNode animCurveTA -n "PALbot_L_IK_footBall_ctrl_rotateY1";
	rename -uid "967C19A4-4BB7-B412-A933-D19ADA74C3BE";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 16 0 19 0 22 0 25 0 33 0 38 0 39 0 41 0
		 45 0;
	setAttr -s 10 ".kit[0:9]"  18 10 10 10 10 10 10 10 
		10 10;
	setAttr -s 10 ".kot[0:9]"  5 10 10 10 10 5 5 5 
		10 5;
createNode animCurveTA -n "PALbot_L_IK_footBall_ctrl_rotateZ1";
	rename -uid "5959CAB1-4E51-BC01-972E-F7B2BDD05906";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 16 0 19 0 22 0 25 0 33 0 38 0 39 0 41 0
		 45 0;
	setAttr -s 10 ".kit[0:9]"  18 10 10 10 10 10 10 10 
		10 10;
	setAttr -s 10 ".kot[0:9]"  5 10 10 10 10 5 5 5 
		10 5;
createNode animCurveTA -n "PALbot_L_foot_secondary_rotateX1";
	rename -uid "B4A80CA7-448C-CE61-5C3C-1189A777CE51";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0;
	setAttr -s 18 ".kit[0:17]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10;
	setAttr -s 18 ".kot[0:17]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 10 5;
createNode animCurveTA -n "PALbot_L_foot_secondary_rotateY1";
	rename -uid "F8E7A7BC-4FF7-A2CF-4A44-1AB9385CC631";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0;
	setAttr -s 18 ".kit[0:17]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10;
	setAttr -s 18 ".kot[0:17]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 10 5;
createNode animCurveTA -n "PALbot_L_foot_secondary_rotateZ1";
	rename -uid "16DC8C5C-47B1-491A-798D-DCB3B6330C32";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0;
	setAttr -s 18 ".kit[0:17]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10;
	setAttr -s 18 ".kot[0:17]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 10 5;
createNode animCurveTA -n "PALbot_L_footSec_reshape01_rotateX1";
	rename -uid "9F287547-4627-CE3A-5952-E99E4DE43459";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 16 0 19 0 22 0 25 0 33 0 38 0 39 0 41 0
		 45 0;
	setAttr -s 10 ".kit[0:9]"  18 10 10 10 10 10 10 10 
		10 10;
	setAttr -s 10 ".kot[0:9]"  5 10 10 10 10 5 5 5 
		10 5;
createNode animCurveTA -n "PALbot_L_footSec_reshape01_rotateY1";
	rename -uid "957C7C97-493D-2966-1657-798928279326";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 16 0 19 0 22 0 25 0 33 0 38 0 39 0 41 0
		 45 0;
	setAttr -s 10 ".kit[0:9]"  18 10 10 10 10 10 10 10 
		10 10;
	setAttr -s 10 ".kot[0:9]"  5 10 10 10 10 5 5 5 
		10 5;
createNode animCurveTA -n "PALbot_L_footSec_reshape01_rotateZ1";
	rename -uid "523CDE66-4C26-8EAC-9390-DC9E39BBDEA9";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 16 0 19 0 22 0 25 0 33 0 38 0 39 0 41 0
		 45 0;
	setAttr -s 10 ".kit[0:9]"  18 10 10 10 10 10 10 10 
		10 10;
	setAttr -s 10 ".kot[0:9]"  5 10 10 10 10 5 5 5 
		10 5;
createNode animCurveTA -n "PALbot_L_footSec_reshape02_rotateX1";
	rename -uid "DBAD5BBB-453B-CE91-11CE-67845B121510";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0;
	setAttr -s 18 ".kit[0:17]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10;
	setAttr -s 18 ".kot[0:17]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 10 5;
createNode animCurveTA -n "PALbot_L_footSec_reshape02_rotateY1";
	rename -uid "5ACA936F-482B-841C-60B7-C28735DF52DB";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0;
	setAttr -s 18 ".kit[0:17]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10;
	setAttr -s 18 ".kot[0:17]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 10 5;
createNode animCurveTA -n "PALbot_L_footSec_reshape02_rotateZ1";
	rename -uid "3766E695-40B2-BC20-8A3F-D4875641A20C";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0;
	setAttr -s 18 ".kit[0:17]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10;
	setAttr -s 18 ".kot[0:17]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 10 5;
createNode animCurveTA -n "PALbot_R_Engine_ctrl_rotateX1";
	rename -uid "152E7C5F-4A1B-B988-E044-DEBAABCB694F";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 35 0 38 0 39 0 41 0 45 0;
	setAttr -s 19 ".kit[0:18]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10 10;
	setAttr -s 19 ".kot[0:18]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 5 5 10 5;
createNode animCurveTA -n "PALbot_R_Engine_ctrl_rotateY1";
	rename -uid "6DDA7DD6-4842-777C-1253-71A6F513C8D0";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 35 0 38 0 39 0 41 0 45 0;
	setAttr -s 19 ".kit[0:18]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10 10;
	setAttr -s 19 ".kot[0:18]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 5 5 10 5;
createNode animCurveTA -n "PALbot_R_Engine_ctrl_rotateZ1";
	rename -uid "CABA9C97-4C12-C8D1-AF7E-029B711F36BA";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 35 0 38 0 39 0 41 0 45 0;
	setAttr -s 19 ".kit[0:18]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10 10;
	setAttr -s 19 ".kot[0:18]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 5 5 10 5;
createNode animCurveTA -n "PALbot_R_IK_heel_lift_tip_rotateX1";
	rename -uid "1092BD16-4633-A3B9-2DE4-8A89B51640AB";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0;
	setAttr -s 18 ".kit[0:17]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10;
	setAttr -s 18 ".kot[0:17]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 10 5;
createNode animCurveTA -n "PALbot_R_IK_heel_lift_tip_rotateY1";
	rename -uid "CD3B3433-4BA7-FDCF-B5FB-11AD7E733A02";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0;
	setAttr -s 18 ".kit[0:17]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10;
	setAttr -s 18 ".kot[0:17]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 10 5;
createNode animCurveTA -n "PALbot_R_IK_heel_lift_tip_rotateZ1";
	rename -uid "061FB922-4F7A-F395-6A3E-B282D1AAB0C5";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0;
	setAttr -s 18 ".kit[0:17]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10;
	setAttr -s 18 ".kot[0:17]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 10 5;
createNode animCurveTA -n "PALbot_R_IK_foot_tip_rotateX1";
	rename -uid "0331548F-4A71-0698-885D-FE9A49A8407D";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0;
	setAttr -s 18 ".kit[0:17]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10;
	setAttr -s 18 ".kot[0:17]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 10 5;
createNode animCurveTA -n "PALbot_R_IK_foot_tip_rotateY1";
	rename -uid "CC8C555D-4D84-FCAD-C573-8B89DDA04267";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0;
	setAttr -s 18 ".kit[0:17]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10;
	setAttr -s 18 ".kot[0:17]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 10 5;
createNode animCurveTA -n "PALbot_R_IK_foot_tip_rotateZ1";
	rename -uid "4E614508-419A-DDD1-6D4D-389486DD7645";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0;
	setAttr -s 18 ".kit[0:17]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10;
	setAttr -s 18 ".kot[0:17]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 10 5;
createNode animCurveTA -n "PALbot_R_IK_footBall_ctrl_rotateX1";
	rename -uid "160FB1DE-4DDD-C6A7-FF24-C5A2F4D9DF92";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0;
	setAttr -s 18 ".kit[0:17]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10;
	setAttr -s 18 ".kot[0:17]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 10 5;
createNode animCurveTA -n "PALbot_R_IK_footBall_ctrl_rotateY1";
	rename -uid "27D44308-481E-983C-C7BD-2CB45BAFB15D";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0;
	setAttr -s 18 ".kit[0:17]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10;
	setAttr -s 18 ".kot[0:17]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 10 5;
createNode animCurveTA -n "PALbot_R_IK_footBall_ctrl_rotateZ1";
	rename -uid "E7DD390B-4673-8E9D-2B81-3EB56291FD7F";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0;
	setAttr -s 18 ".kit[0:17]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10;
	setAttr -s 18 ".kot[0:17]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 10 5;
createNode animCurveTA -n "PALbot_R_foot_secondary_rotateX1";
	rename -uid "48915C15-4CF3-24B3-2287-FA91EB501032";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0;
	setAttr -s 18 ".kit[0:17]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10;
	setAttr -s 18 ".kot[0:17]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 10 5;
createNode animCurveTA -n "PALbot_R_foot_secondary_rotateY1";
	rename -uid "45F21EE1-47DA-0FC3-F362-3885412CA1ED";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0;
	setAttr -s 18 ".kit[0:17]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10;
	setAttr -s 18 ".kot[0:17]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 10 5;
createNode animCurveTA -n "PALbot_R_foot_secondary_rotateZ1";
	rename -uid "495BAD84-4E10-30E9-7799-8CA99BD8BF71";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0;
	setAttr -s 18 ".kit[0:17]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10;
	setAttr -s 18 ".kot[0:17]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 10 5;
createNode animCurveTA -n "PALbot_R_footSec_reshape01_rotateX1";
	rename -uid "B84AFC94-4055-2D01-075C-B19F1733BF63";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0;
	setAttr -s 18 ".kit[0:17]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10;
	setAttr -s 18 ".kot[0:17]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 10 5;
createNode animCurveTA -n "PALbot_R_footSec_reshape01_rotateY1";
	rename -uid "389E7AAE-42F8-A24C-8DDA-F1BD104E2AE7";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0;
	setAttr -s 18 ".kit[0:17]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10;
	setAttr -s 18 ".kot[0:17]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 10 5;
createNode animCurveTA -n "PALbot_R_footSec_reshape01_rotateZ1";
	rename -uid "FC4F1DD7-42C7-8509-04F3-339041CAF94D";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0;
	setAttr -s 18 ".kit[0:17]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10;
	setAttr -s 18 ".kot[0:17]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 10 5;
createNode animCurveTA -n "PALbot_R_footSec_reshape02_rotateX1";
	rename -uid "B58FB9E3-4611-F415-76BF-2BB2349381D3";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0;
	setAttr -s 18 ".kit[0:17]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10;
	setAttr -s 18 ".kot[0:17]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 10 5;
createNode animCurveTA -n "PALbot_R_footSec_reshape02_rotateY1";
	rename -uid "21496BDA-4DFD-FC79-3F88-EEBA7CBE36EA";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0;
	setAttr -s 18 ".kit[0:17]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10;
	setAttr -s 18 ".kot[0:17]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 10 5;
createNode animCurveTA -n "PALbot_R_footSec_reshape02_rotateZ1";
	rename -uid "69794B27-4475-8FC1-5E75-BA82570B37D1";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0;
	setAttr -s 18 ".kit[0:17]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10;
	setAttr -s 18 ".kot[0:17]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 10 5;
createNode animCurveTA -n "PALbot_R_knee_aim_ctrl_rotateX1";
	rename -uid "A91538DA-44B1-BA2B-43FA-A089723EE116";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 16 0 19 0 22 0 25 0 28 0 31 0 33 0 38 0
		 39 0 45 0 47 0;
	setAttr -s 12 ".kit[0:11]"  18 10 10 10 10 10 10 10 
		10 10 10 10;
	setAttr -s 12 ".kot[0:11]"  5 10 10 10 10 10 10 10 
		5 5 5 5;
createNode animCurveTA -n "PALbot_R_knee_aim_ctrl_rotateY1";
	rename -uid "FD91F78A-4D40-4F65-F171-5B8202BC98D9";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 16 0 19 0 22 0 25 0 28 0 31 0 33 0 38 0
		 39 0 45 0 47 0;
	setAttr -s 12 ".kit[0:11]"  18 10 10 10 10 10 10 10 
		10 10 10 10;
	setAttr -s 12 ".kot[0:11]"  5 10 10 10 10 10 10 10 
		5 5 5 5;
createNode animCurveTA -n "PALbot_R_knee_aim_ctrl_rotateZ1";
	rename -uid "517D0015-4BE1-33F7-1F98-7CABACF634E2";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 16 0 19 0 22 0 25 0 28 0 31 0 33 0 38 0
		 39 0 45 0 47 0;
	setAttr -s 12 ".kit[0:11]"  18 10 10 10 10 10 10 10 
		10 10 10 10;
	setAttr -s 12 ".kot[0:11]"  5 10 10 10 10 10 10 10 
		5 5 5 5;
createNode animCurveTA -n "PALbot_L_Thumb01_ctrl_rotateX1";
	rename -uid "E129D067-4786-50CB-1016-20903264EAAE";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 -13.187785976287323 19 -13.187785976287323
		 20 -13.187785976287323 21 -13.187785976287323 22 -13.187785976287323 23 -13.187785976287323
		 24 -13.187785976287323 25 -13.187785976287323 26 -13.187785976287323 28 -13.187785976287323
		 29 -13.187785976287323 31 -13.187785976287323 33 -13.187785976287323 38 -13.187785976287323
		 39 -13.187785976287323 41 -13.187785976287323 45 -13.187785976287323;
	setAttr -s 18 ".kot[14:17]"  5 5 5 5;
createNode animCurveTA -n "PALbot_L_Thumb01_ctrl_rotateY1";
	rename -uid "13783DF7-45FE-ADD6-8D9A-DAB82D283729";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0;
	setAttr -s 18 ".kot[14:17]"  5 5 5 5;
createNode animCurveTA -n "PALbot_L_Thumb01_ctrl_rotateZ1";
	rename -uid "12B7DA21-4D9B-C8F6-6097-AC802A60FE9A";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0;
	setAttr -s 18 ".kot[14:17]"  5 5 5 5;
createNode animCurveTA -n "PALbot_R_Index01_ctrl_rotateX1";
	rename -uid "DC2FF49C-4A82-EA8A-5CAB-769967F0954F";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 90 16 90 19 90 20 90 21 90 22 90 23 90
		 24 90 25 90 26 90 28 90 29 90 31 90 33 90 38 90 39 90 45 90 47 90;
	setAttr -s 18 ".kit[0:17]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10;
	setAttr -s 18 ".kot[0:17]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 5 5;
createNode animCurveTA -n "PALbot_R_Index01_ctrl_rotateY1";
	rename -uid "55F61956-4CA2-2F80-314A-BBAC8635C522";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 45 0 47 0;
	setAttr -s 18 ".kit[0:17]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10;
	setAttr -s 18 ".kot[0:17]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 5 5;
createNode animCurveTA -n "PALbot_R_Index01_ctrl_rotateZ1";
	rename -uid "5B2B52F4-4544-6147-DA1C-719BDDC06B84";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 45 0 47 0;
	setAttr -s 18 ".kit[0:17]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10;
	setAttr -s 18 ".kot[0:17]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 5 5;
createNode animCurveTA -n "PALbot_R_Index02_ctrl_rotateX1";
	rename -uid "2AAE6FCF-48D1-3D5A-8381-F2A32BC7A9EA";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 90 16 90 19 90 20 90 21 90 22 90 23 90
		 24 90 25 90 26 90 28 90 29 90 31 90 33 90 38 90 39 90 41 90 45 90 47 90;
	setAttr -s 19 ".kit[0:18]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10 10;
	setAttr -s 19 ".kot[0:18]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 5 5 5;
createNode animCurveTA -n "PALbot_R_Index02_ctrl_rotateY1";
	rename -uid "4464A212-4E83-FF77-022A-859C39826E32";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0 47 0;
	setAttr -s 19 ".kit[0:18]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10 10;
	setAttr -s 19 ".kot[0:18]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 5 5 5;
createNode animCurveTA -n "PALbot_R_Index02_ctrl_rotateZ1";
	rename -uid "D1AC7302-43D6-C6EF-AFE3-E98F59BE78EE";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0 47 0;
	setAttr -s 19 ".kit[0:18]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10 10;
	setAttr -s 19 ".kot[0:18]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 5 5 5;
createNode animCurveTA -n "PALbot_R_Middle01_ctrl_rotateX1";
	rename -uid "759A5404-45CB-13A6-631B-85BFC83C3927";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 90 16 90 19 90 20 90 21 90 22 90 23 90
		 24 90 25 90 26 90 28 90 29 90 31 90 33 90 38 90 39 90 45 90 47 90;
	setAttr -s 18 ".kit[0:17]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10;
	setAttr -s 18 ".kot[0:17]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 5 5;
createNode animCurveTA -n "PALbot_R_Middle01_ctrl_rotateY1";
	rename -uid "7D0E0394-49FA-3D87-B4BF-11B0A8049896";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 45 0 47 0;
	setAttr -s 18 ".kit[0:17]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10;
	setAttr -s 18 ".kot[0:17]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 5 5;
createNode animCurveTA -n "PALbot_R_Middle01_ctrl_rotateZ1";
	rename -uid "218EC6D1-4540-3BCE-95B8-E0986D3C520D";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 45 0 47 0;
	setAttr -s 18 ".kit[0:17]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10;
	setAttr -s 18 ".kot[0:17]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 5 5;
createNode animCurveTA -n "PALbot_R_Middle02_ctrl_rotateX1";
	rename -uid "93A44F14-4FA2-3408-29E5-41924118DC29";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 90 16 90 19 90 20 90 21 90 22 90 23 90
		 24 90 25 90 26 90 28 90 29 90 31 90 33 90 38 90 39 90 41 90 45 90 47 90;
	setAttr -s 19 ".kit[0:18]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10 10;
	setAttr -s 19 ".kot[0:18]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 5 5 5;
createNode animCurveTA -n "PALbot_R_Middle02_ctrl_rotateY1";
	rename -uid "8AEB8D9D-4A34-90AE-09D0-A6BAFF5CD0F8";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0 47 0;
	setAttr -s 19 ".kit[0:18]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10 10;
	setAttr -s 19 ".kot[0:18]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 5 5 5;
createNode animCurveTA -n "PALbot_R_Middle02_ctrl_rotateZ1";
	rename -uid "8EF523C8-4971-CB6C-25F5-75BEAAB2A474";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0 47 0;
	setAttr -s 19 ".kit[0:18]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10 10;
	setAttr -s 19 ".kot[0:18]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 5 5 5;
createNode animCurveTA -n "PALbot_R_Pinky01_ctrl_rotateX1";
	rename -uid "AE5BB14A-41CA-AC3C-8E31-3CAB72AAB32C";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 90 16 90 19 90 20 90 21 90 22 90 23 90
		 24 90 25 90 26 90 28 90 29 90 31 90 33 90 38 90 39 90 41 90 45 90 47 90;
	setAttr -s 19 ".kit[0:18]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10 10;
	setAttr -s 19 ".kot[0:18]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 5 5 5;
createNode animCurveTA -n "PALbot_R_Pinky01_ctrl_rotateY1";
	rename -uid "8DEA97F9-4C33-7113-2E77-728CBD641BCF";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0 47 0;
	setAttr -s 19 ".kit[0:18]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10 10;
	setAttr -s 19 ".kot[0:18]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 5 5 5;
createNode animCurveTA -n "PALbot_R_Pinky01_ctrl_rotateZ1";
	rename -uid "08A8E1C4-4807-32C6-AD50-4BA492386722";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0 47 0;
	setAttr -s 19 ".kit[0:18]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10 10;
	setAttr -s 19 ".kot[0:18]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 5 5 5;
createNode animCurveTA -n "PALbot_R_Pinky02_ctrl_rotateX1";
	rename -uid "5F64B1B7-4C0D-A4F5-3CF0-2F8F486E7C50";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 90 16 90 19 90 20 90 21 90 22 90 23 90
		 24 90 25 90 26 90 28 90 29 90 31 90 33 90 38 90 39 90 41 90 46 90 47 90;
	setAttr -s 19 ".kit[0:18]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10 10;
	setAttr -s 19 ".kot[0:18]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 5 5 5;
createNode animCurveTA -n "PALbot_R_Pinky02_ctrl_rotateY1";
	rename -uid "00BBF03F-4750-9C72-8946-49B3AF49E4DE";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 46 0 47 0;
	setAttr -s 19 ".kit[0:18]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10 10;
	setAttr -s 19 ".kot[0:18]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 5 5 5;
createNode animCurveTA -n "PALbot_R_Pinky02_ctrl_rotateZ1";
	rename -uid "EBD43377-4333-D688-E946-5FAADCA263ED";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 46 0 47 0;
	setAttr -s 19 ".kit[0:18]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10 10;
	setAttr -s 19 ".kot[0:18]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 5 5 5;
createNode animCurveTA -n "PALbot_R_Ring01_ctrl_rotateX1";
	rename -uid "849FC448-462C-C964-E7E7-3AAEEC4639F4";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 90 16 90 19 90 20 90 21 90 22 90 23 90
		 24 90 25 90 26 90 28 90 29 90 31 90 33 90 38 90 39 90 41 90 45 90 47 90;
	setAttr -s 19 ".kit[0:18]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10 10;
	setAttr -s 19 ".kot[0:18]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 5 5 5;
createNode animCurveTA -n "PALbot_R_Ring01_ctrl_rotateY1";
	rename -uid "825F0874-489E-4144-482C-7FB190856A2C";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0 47 0;
	setAttr -s 19 ".kit[0:18]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10 10;
	setAttr -s 19 ".kot[0:18]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 5 5 5;
createNode animCurveTA -n "PALbot_R_Ring01_ctrl_rotateZ1";
	rename -uid "A84EED6B-4029-2EBE-36BE-B2BDB702ED5B";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0 47 0;
	setAttr -s 19 ".kit[0:18]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10 10;
	setAttr -s 19 ".kot[0:18]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 5 5 5;
createNode animCurveTA -n "PALbot_R_Ring02_ctrl_rotateX1";
	rename -uid "1D6AF088-4AFD-5229-BDDF-1EB44A5DA75F";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 90 16 90 19 90 20 90 21 90 22 90 23 90
		 24 90 25 90 26 90 28 90 29 90 31 90 33 90 38 90 39 90 41 90 46 90 47 90;
	setAttr -s 19 ".kit[0:18]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10 10;
	setAttr -s 19 ".kot[0:18]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 5 5 5;
createNode animCurveTA -n "PALbot_R_Ring02_ctrl_rotateY1";
	rename -uid "151202A3-4EAA-B972-CFFC-9E88C3C60F55";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 46 0 47 0;
	setAttr -s 19 ".kit[0:18]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10 10;
	setAttr -s 19 ".kot[0:18]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 5 5 5;
createNode animCurveTA -n "PALbot_R_Ring02_ctrl_rotateZ1";
	rename -uid "CB66A70B-4485-B7B0-19B4-8786F2280C73";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 46 0 47 0;
	setAttr -s 19 ".kit[0:18]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10 10;
	setAttr -s 19 ".kot[0:18]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 5 5 5;
createNode animCurveTA -n "PALbot_R_Thumb01_ctrl_rotateX1";
	rename -uid "946B668B-4A30-8E97-F224-1FB3CD31C604";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0 47 0;
	setAttr -s 19 ".kit[0:18]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10 10;
	setAttr -s 19 ".kot[0:18]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 5 5 5;
createNode animCurveTA -n "PALbot_R_Thumb01_ctrl_rotateY1";
	rename -uid "5B8D1667-4C29-453E-35DB-D190E9581B6E";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0 47 0;
	setAttr -s 19 ".kit[0:18]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10 10;
	setAttr -s 19 ".kot[0:18]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 5 5 5;
createNode animCurveTA -n "PALbot_R_Thumb01_ctrl_rotateZ1";
	rename -uid "9873F7A2-4BF8-3350-22AE-44854F1E81CB";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0 47 0;
	setAttr -s 19 ".kit[0:18]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10 10;
	setAttr -s 19 ".kot[0:18]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 5 5 5;
createNode animCurveTA -n "PALbot_R_Thumb02_ctrl_rotateX1";
	rename -uid "446700F2-484D-FBC9-3BD4-199D0F082C12";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 12.000000000000002 16 12.000000000000002
		 19 12.000000000000002 20 12.000000000000002 21 12.000000000000002 22 12.000000000000002
		 23 12.000000000000002 24 12.000000000000002 25 12.000000000000002 26 12.000000000000002
		 28 12.000000000000002 29 12.000000000000002 31 12.000000000000002 33 12.000000000000002
		 38 12.000000000000002 39 12.000000000000002 41 12.000000000000002 45 12.000000000000002
		 47 12.000000000000002;
	setAttr -s 19 ".kit[0:18]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10 10;
	setAttr -s 19 ".kot[0:18]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 5 5 5;
createNode animCurveTA -n "PALbot_R_Thumb02_ctrl_rotateY1";
	rename -uid "BDDBA4FF-4E43-4115-0497-3CAE793E4739";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0 47 0;
	setAttr -s 19 ".kit[0:18]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10 10;
	setAttr -s 19 ".kot[0:18]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 5 5 5;
createNode animCurveTA -n "PALbot_R_Thumb02_ctrl_rotateZ1";
	rename -uid "AAD4BE18-499A-23A9-1D76-1489F727D454";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0 47 0;
	setAttr -s 19 ".kit[0:18]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10 10;
	setAttr -s 19 ".kot[0:18]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 5 5 5;
createNode animCurveTA -n "PALbot_R_Thumb03_ctrl_rotateX1";
	rename -uid "C127C203-4EF0-9F33-D91E-C6BDF72C0676";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 90 16 90 19 90 20 90 21 90 22 90 23 90
		 24 90 25 90 26 90 28 90 29 90 31 90 33 90 38 90 39 90 41 90 45 90 47 90;
	setAttr -s 19 ".kit[0:18]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10 10;
	setAttr -s 19 ".kot[0:18]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 5 5 5;
createNode animCurveTA -n "PALbot_R_Thumb03_ctrl_rotateY1";
	rename -uid "E881721F-43C1-EA23-6BD0-0CA22E15E8A6";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0 47 0;
	setAttr -s 19 ".kit[0:18]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10 10;
	setAttr -s 19 ".kot[0:18]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 5 5 5;
createNode animCurveTA -n "PALbot_R_Thumb03_ctrl_rotateZ1";
	rename -uid "60E8DC3E-4A92-DD9C-1359-33BCAA20CDAA";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0 47 0;
	setAttr -s 19 ".kit[0:18]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10 10;
	setAttr -s 19 ".kot[0:18]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 5 5 5;
createNode animCurveTA -n "PALbot_L_Clavicle_ctrl_rotateX1";
	rename -uid "94349C6F-4FBC-A234-78C1-68BC796D2E25";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 36 0 38 0 39 0 41 0 46 0 51 0 52 0 58 0;
	setAttr -s 22 ".kot[16:21]"  5 10 10 10 10 5;
createNode animCurveTA -n "PALbot_L_Clavicle_ctrl_rotateY1";
	rename -uid "4BEE6391-4E2D-7756-8582-45A833678E39";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 36 0 38 0 39 0 41 0 46 0 51 0 52 0 58 0;
	setAttr -s 22 ".kot[16:21]"  5 10 10 10 10 5;
createNode animCurveTA -n "PALbot_L_Clavicle_ctrl_rotateZ1";
	rename -uid "48C719C3-4009-0D52-4388-759A394F4F9F";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 36 16.240625037757226 38 6.3289767367690004 39 0 41 0 46 -15.811238589706175
		 51 -25.962486294628185 52 -25.962486294628185 58 -4.8139307176565538;
	setAttr -s 22 ".kot[16:21]"  5 10 10 10 10 5;
createNode animCurveTA -n "PALbot_L_Arm_ctrl_rotateY3";
	rename -uid "68866AEF-410D-7710-1195-6A8D0BB8DEC6";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 0 16 0 19 7.319905116978604 20 1.3365306936563424
		 21 -9.4223693248228315 22 -21.333248453962995 23 -33.02064871308589 24 -44.23237010928699
		 25 -49.410540412191878 26 -49.395953421073393 28 -49.354276303592016 29 -49.306228570895016
		 31 -49.222989253874324 33 -49.173770845620304 35 -49.026218640708912 38 -49.026218640708912
		 39 -49.026218640708912 41 -49.026218640708912 46 -57.268772289051171 52 -101.1004545040693
		 53 -101.1004545040693 55 -102.22903455120509 58 -102.36396209029191;
	setAttr -s 23 ".kit[20:22]"  1 10 10;
	setAttr -s 23 ".kot[15:22]"  5 5 5 10 10 1 10 10;
	setAttr -s 23 ".kix[20:22]"  1 1 1;
	setAttr -s 23 ".kiy[20:22]"  0 0 0;
	setAttr -s 23 ".kox[20:22]"  1 1 1;
	setAttr -s 23 ".koy[20:22]"  0 0 0;
createNode animCurveTA -n "PALbot_L_Arm_ctrl_rotateZ3";
	rename -uid "B545DAC6-456F-FC4B-290F-4095710B13CF";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 0 16 -26.69346552462655 19 -8.7487022783433321
		 20 -15.174578217332533 21 -26.64533579053662 22 -39.017992083632834 23 -49.474266037200515
		 24 -58.940202611832788 25 -63.190868010114237 26 -61.677363964250596 28 -57.353066690354453
		 29 -65.554666719578222 31 -74.478477154233047 33 -91.213138644539939 35 -110.64810054016067
		 38 -110.64810054016067 39 -110.64810054016067 41 -110.64810054016067 46 -88.741687136982193
		 52 -143.19584686369015 53 -143.19584686369015 55 -81.964885889308931 58 -73.36111085412432;
	setAttr -s 23 ".kit[20:22]"  1 10 10;
	setAttr -s 23 ".kot[15:22]"  5 5 5 10 10 1 10 10;
	setAttr -s 23 ".kix[20:22]"  0.9267013726466895 0.16848321779339664 
		0.63977098776986696;
	setAttr -s 23 ".kiy[20:22]"  0.37579857095888675 0.98570452231994088 
		0.76856560110895455;
	setAttr -s 23 ".kox[20:22]"  0.9267013726466895 0.16848321779339664 
		0.63977098776986707;
	setAttr -s 23 ".koy[20:22]"  0.37579857095888675 0.98570452231994088 
		0.76856560110895467;
createNode animCurveTA -n "PALbot_Neck_ctrl_rotateX1";
	rename -uid "435F9C2E-4E77-8516-ACDE-E1A8EEE3C001";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 3.7351343170643805 21 9.639056302101606
		 22 13.012726007837161 23 13.012726007837161 24 13.012726007837161 25 13.012726007837161
		 26 13.012726007837161 28 13.012726007837161 29 13.012726007837161 31 13.012726007837161
		 33 13.012726007837161 38 13.012726007837161 39 13.012726007837161 41 13.012726007837161
		 46 13.012726007837161;
	setAttr -s 18 ".kot[14:17]"  5 5 5 5;
createNode animCurveTA -n "PALbot_Neck_ctrl_rotateY1";
	rename -uid "97F65FF7-4057-925B-9D74-F29717EAB7B6";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 46 0;
	setAttr -s 18 ".kot[14:17]"  5 5 5 5;
createNode animCurveTA -n "PALbot_Neck_ctrl_rotateZ1";
	rename -uid "D9D6FFB1-4632-90B9-3AEC-44A20F9F9160";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 46 0;
	setAttr -s 18 ".kot[14:17]"  5 5 5 5;
createNode animCurveTA -n "PALbot_head_ctrl_rotateX1";
	rename -uid "C20A543E-4DA9-69BF-47D1-079789A012C1";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0 16 0 19 0 20 0.71444824134429163 21 2.0951757051589941
		 22 3.9976753348224814 23 7.7945875523856083 24 12.158377135579583 25 14.693965809955401
		 26 14.923988773626842 28 15.020840547804294 29 15.020840547804294 31 15.020840547804294
		 33 15.020840547804294 38 10.654390027840991 39 -3.656298197467831 41 15.020840547804294
		 46 4.2074868011285655 52 4.2074868011285655 53 4.2074868011285655 55 -14.954043087990675;
	setAttr -s 21 ".kit[19:20]"  1 10;
	setAttr -s 21 ".kot[15:20]"  5 5 10 10 1 10;
	setAttr -s 21 ".kix[19:20]"  1 0.24178565094550522;
	setAttr -s 21 ".kiy[19:20]"  0 -0.97032968572380507;
	setAttr -s 21 ".kox[19:20]"  1 0.24178565094550522;
	setAttr -s 21 ".koy[19:20]"  0 -0.97032968572380507;
createNode animCurveTA -n "PALbot_head_ctrl_rotateY1";
	rename -uid "EF0F4040-4ED7-D1E1-8343-5D89A0DFA870";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0 16 0 19 0 20 -5.5332570180998957 21 -14.279372949935183
		 22 -19.277153482412487 23 -13.743896464312598 24 -4.9977805324773161 25 0 26 -3.0697098562002503
		 28 -11.840309445343895 29 -11.840309445343895 31 -11.840309445343895 33 -11.840309445343895
		 38 -11.840309445343905 39 -11.840309445343919 41 -11.840309445343895 46 -23.628327159923085
		 52 -23.628327159923085 53 -23.628327159923085 55 -38.805892077344083;
	setAttr -s 21 ".kit[19:20]"  1 10;
	setAttr -s 21 ".kot[15:20]"  5 5 10 10 1 10;
	setAttr -s 21 ".kix[19:20]"  1 0.30008721581770387;
	setAttr -s 21 ".kiy[19:20]"  0 -0.95391176892979934;
	setAttr -s 21 ".kox[19:20]"  1 0.30008721581770387;
	setAttr -s 21 ".koy[19:20]"  0 -0.95391176892979934;
createNode animCurveTA -n "PALbot_head_ctrl_rotateZ1";
	rename -uid "4ADCC2CF-428A-7E87-0835-35AA0900E0E1";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0 16 0 19 0 20 -1.5104710698807908 21 -3.8979898577568726
		 22 -5.2622863079717748 23 -3.7518152380909848 24 -1.3642964502149064 25 0 26 -0.81704779150545936
		 28 -3.151470052949648 29 -3.151470052949648 31 -3.151470052949648 33 -3.151470052949648
		 38 -3.1514700529496493 39 -3.151470052949648 41 -3.151470052949648 46 -4.0311267450571222
		 52 -4.0311267450571222 53 -4.0311267450571222 55 5.8410469900860509;
	setAttr -s 21 ".kit[19:20]"  1 10;
	setAttr -s 21 ".kot[15:20]"  5 5 10 10 1 10;
	setAttr -s 21 ".kix[19:20]"  1 0.43539762739965698;
	setAttr -s 21 ".kiy[19:20]"  0 0.90023824960659693;
	setAttr -s 21 ".kox[19:20]"  1 0.43539762739965698;
	setAttr -s 21 ".koy[19:20]"  0 0.90023824960659693;
createNode animCurveTA -n "PALbot_R_Clavicle_ctrl_rotateX1";
	rename -uid "66BD7D22-4EE0-A2FF-3271-949E76FE4EFA";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 36 0 38 0 39 0 41 0 43 0 46 0 52 0 53 0;
	setAttr -s 22 ".kit[21]"  1;
	setAttr -s 22 ".kot[15:21]"  5 5 10 10 10 10 1;
	setAttr -s 22 ".kix[21]"  1;
	setAttr -s 22 ".kiy[21]"  0;
	setAttr -s 22 ".kox[21]"  1;
	setAttr -s 22 ".koy[21]"  0;
createNode animCurveTA -n "PALbot_R_Clavicle_ctrl_rotateY1";
	rename -uid "A7291336-4BF6-A5CA-2F93-80A27E1B0191";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  0 0 16 -22.577588116780777 19 -22.577588116780777
		 20 -22.577588116780777 21 -22.577588116780777 22 -22.577588116780777 23 -12.39808365375581
		 24 3.6921008200577932 25 12.886491947951308 26 12.886491947951308 28 12.886491947951308
		 29 12.886491947951308 31 12.886491947951308 33 12.886491947951308 36 -20.966030943652747
		 38 -15.392916411098373 39 -15.392916411098373 41 -17.655269079822357 43 -20.829727311441403
		 46 12.886491947951308 52 -31.456371530757629 53 -31.456371530757629;
	setAttr -s 22 ".kit[18:21]"  1 10 10 1;
	setAttr -s 22 ".kot[15:21]"  5 5 10 1 10 10 1;
	setAttr -s 22 ".kix[18:21]"  0.9999040697703464 0.89635975126508083 
		1 0.21052502030959924;
	setAttr -s 22 ".kiy[18:21]"  -0.013851038109047987 -0.44332741434745759 
		0 -0.97758846956356993;
	setAttr -s 22 ".kox[18:21]"  0.99990406673016119 0.89635975126508083 
		1 0.21052502030959924;
	setAttr -s 22 ".koy[18:21]"  -0.013851257577756624 -0.44332741434745759 
		0 -0.97758846956356993;
createNode animCurveTA -n "PALbot_R_Clavicle_ctrl_rotateZ1";
	rename -uid "04368FE4-46EC-217A-EBDF-678531CBC6B2";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 36 0 38 0 39 0 41 0 43 0 46 0 52 0 53 0;
	setAttr -s 22 ".kit[21]"  1;
	setAttr -s 22 ".kot[15:21]"  5 5 10 10 10 10 1;
	setAttr -s 22 ".kix[21]"  1;
	setAttr -s 22 ".kiy[21]"  0;
	setAttr -s 22 ".kox[21]"  1;
	setAttr -s 22 ".koy[21]"  0;
createNode animCurveTA -n "PALbot_L_ShoulderRotate_ctrl_rotateZ3";
	rename -uid "E67F9979-4048-65FE-3DE5-7887211534D1";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  0 0 16 -104.87536543402277 19 -141.23198311370425
		 20 -194.78314315560277 21 -257.72340184233104 22 -289.27539682766809 23 -289.27539682766809
		 24 -289.27539682766809 25 -289.27539682766809 26 -291.92787459295715 28 -299.50638249378318
		 29 -299.50638249378318 31 -299.50638249378318 33 -318.00405831545748 35 -319.11948155638947
		 38 -343.15561359970792 39 -343.15561359970792 40 -343.15561359970792 43 -343.15561359970792
		 46 -362.93844964853565 52 -378.18844073183459 53 -378.18844073183459;
	setAttr -s 22 ".kit[21]"  1;
	setAttr -s 22 ".kot[15:21]"  5 5 5 10 10 10 1;
	setAttr -s 22 ".kix[21]"  0.53072021000048564;
	setAttr -s 22 ".kiy[21]"  -0.8475470834691371;
	setAttr -s 22 ".kox[21]"  0.53072021000048564;
	setAttr -s 22 ".koy[21]"  -0.8475470834691371;
createNode animCurveTA -n "PALbot_hipMain_ctrl_rotateX1";
	rename -uid "32F459F2-4B70-7D29-7B39-1A87A4B1922B";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 46 0;
	setAttr -s 18 ".kot[14:17]"  5 5 5 5;
createNode animCurveTA -n "PALbot_hipMain_ctrl_rotateY1";
	rename -uid "1323B2C6-4DA0-6594-E30C-17B3194EF6BE";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 46 0;
	setAttr -s 18 ".kot[14:17]"  5 5 5 5;
createNode animCurveTA -n "PALbot_hipMain_ctrl_rotateZ1";
	rename -uid "EEAE263D-4C94-10DB-C429-918022DF0EFA";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 46 0;
	setAttr -s 18 ".kot[14:17]"  5 5 5 5;
createNode animCurveTA -n "PALbot_L_hip_rotateX1";
	rename -uid "46967648-4DC9-B8DC-D01E-9DB0F89A4D73";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 46 0;
	setAttr -s 18 ".kot[14:17]"  5 5 5 5;
createNode animCurveTA -n "PALbot_L_hip_rotateY1";
	rename -uid "746A133F-4D5B-44F8-74FE-AD97CE760E5C";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 46 0;
	setAttr -s 18 ".kot[14:17]"  5 5 5 5;
createNode animCurveTA -n "PALbot_L_hip_rotateZ1";
	rename -uid "44662ABE-49C7-4E22-7F4E-548F67D0EFB1";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 46 0;
	setAttr -s 18 ".kot[14:17]"  5 5 5 5;
createNode animCurveTA -n "PALbot_R_hip_rotateX1";
	rename -uid "00B391ED-4D4E-B9C2-E6C7-789FDD2F5438";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 46 0;
	setAttr -s 18 ".kot[14:17]"  5 5 5 5;
createNode animCurveTA -n "PALbot_R_hip_rotateY1";
	rename -uid "701D265B-40FC-0134-D35D-EEBF8E7DF3D2";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 46 0;
	setAttr -s 18 ".kot[14:17]"  5 5 5 5;
createNode animCurveTA -n "PALbot_R_hip_rotateZ1";
	rename -uid "10E533E4-41DE-A966-C7C6-038961D17494";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 46 0;
	setAttr -s 18 ".kot[14:17]"  5 5 5 5;
createNode animCurveTL -n "PALbot_R_Engine_ctrl_translateX1";
	rename -uid "7AFA4EE4-4D14-5FFB-9FEA-CFB9D677DE39";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 35 0 38 0 39 0 41 0 45 0;
	setAttr -s 19 ".kit[0:18]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10 10;
	setAttr -s 19 ".kot[0:18]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 5 5 10 5;
createNode animCurveTL -n "PALbot_R_Engine_ctrl_translateY1";
	rename -uid "59CFA4BE-46E4-40C7-EAEA-84A3CA4122BE";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 2.2204460492503131e-16 16 2.2204460492503131e-16
		 19 2.2204460492503131e-16 20 2.2204460492503131e-16 21 2.2204460492503131e-16 22 2.2204460492503131e-16
		 23 2.2204460492503131e-16 24 2.2204460492503131e-16 25 2.2204460492503131e-16 26 2.2204460492503131e-16
		 28 2.2204460492503131e-16 29 2.2204460492503131e-16 31 0 33 0 35 0 38 0 39 0 41 0
		 45 0;
	setAttr -s 19 ".kit[0:18]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10 10;
	setAttr -s 19 ".kot[0:18]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 5 5 10 5;
createNode animCurveTL -n "PALbot_R_Engine_ctrl_translateZ1";
	rename -uid "307B38F2-4B8D-B497-8C94-A5B9151C16CF";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 6.9388939039072284e-18 16 6.9388939039072284e-18
		 19 6.9388939039072284e-18 20 6.9388939039072284e-18 21 6.9388939039072284e-18 22 6.9388939039072284e-18
		 23 6.9388939039072284e-18 24 6.9388939039072284e-18 25 6.9388939039072284e-18 26 6.9388939039072284e-18
		 28 6.9388939039072284e-18 29 6.9388939039072284e-18 31 0 33 0 35 0 38 0 39 0 41 0
		 45 0;
	setAttr -s 19 ".kit[0:18]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10 10;
	setAttr -s 19 ".kot[0:18]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 5 5 10 5;
createNode animCurveTU -n "PALbot_R_Engine_ctrl_scaleX1";
	rename -uid "3004A714-470B-4A88-85D1-8BB74AEA73B8";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 1 16 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1
		 26 1 28 1 29 1 31 1 33 1 35 1 38 1 39 1 41 1 45 1;
	setAttr -s 19 ".kit[0:18]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10 10;
	setAttr -s 19 ".kot[0:18]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 5 5 10 5;
createNode animCurveTU -n "PALbot_R_Engine_ctrl_scaleY1";
	rename -uid "F9C2EBB1-475F-4F02-F960-C0AD2467AEB3";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 1 16 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1
		 26 1 28 1 29 1 31 1 33 1 35 1 38 1 39 1 41 1 45 1;
	setAttr -s 19 ".kit[0:18]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10 10;
	setAttr -s 19 ".kot[0:18]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 5 5 10 5;
createNode animCurveTU -n "PALbot_R_Engine_ctrl_scaleZ1";
	rename -uid "BD82E105-4175-DC10-C61B-4EA0647B0899";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 1 16 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1
		 26 1 28 1 29 1 31 1 33 1 35 1 38 1 39 1 41 1 45 1;
	setAttr -s 19 ".kit[0:18]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10 10;
	setAttr -s 19 ".kot[0:18]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 5 5 10 5;
createNode animCurveTU -n "PALbot_R_Engine_ctrl_on_off1";
	rename -uid "E0D60E0F-43A7-41E6-405D-40847A877BBC";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 35 0 38 0 39 0 41 0 45 0;
	setAttr -s 19 ".kit[0:18]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10 10;
	setAttr -s 19 ".kot[0:18]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 5 5 10 5;
createNode animCurveTL -n "PALbot_L_footSec_reshape02_translateX1";
	rename -uid "D333A158-4509-1096-1871-33903F163EBD";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0;
	setAttr -s 18 ".kit[0:17]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10;
	setAttr -s 18 ".kot[0:17]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 10 5;
createNode animCurveTL -n "PALbot_L_footSec_reshape02_translateY1";
	rename -uid "923290D7-42AC-51F5-C552-1E8697B0115B";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0;
	setAttr -s 18 ".kit[0:17]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10;
	setAttr -s 18 ".kot[0:17]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 10 5;
createNode animCurveTL -n "PALbot_L_footSec_reshape02_translateZ1";
	rename -uid "B45249CB-4863-5B1A-185B-0BBC19A7FBA9";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0;
	setAttr -s 18 ".kit[0:17]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10;
	setAttr -s 18 ".kot[0:17]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 10 5;
createNode animCurveTL -n "PALbot_R_knee_aim_ctrl_translateX1";
	rename -uid "74E9B163-4366-C1D5-C4B0-C0904EE60021";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -6.6613381477509422e-16 16 -6.6613381477509422e-16
		 19 -6.6613381477509422e-16 22 -6.6613381477509422e-16 25 1.2608604852491332 28 3.8360594229052709
		 31 -0.23242413568416551 33 1.3721304041418887 38 1.3721304041418887 39 1.3721304041418887
		 45 1.3721304041418887 47 1.3721304041418887;
	setAttr -s 12 ".kit[0:11]"  18 10 10 10 10 10 10 10 
		10 10 10 10;
	setAttr -s 12 ".kot[0:11]"  5 10 10 10 10 10 10 10 
		5 5 5 5;
createNode animCurveTL -n "PALbot_R_knee_aim_ctrl_translateY1";
	rename -uid "7B558100-4FAC-A2B1-B799-83BECA29FFAB";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 16 0 19 0 22 0 25 -0.1385113084960933
		 28 0.18425084473393794 31 0.097685361290535649 33 0.06738744208534557 38 0.06738744208534557
		 39 0.06738744208534557 45 0.06738744208534557 47 0.06738744208534557;
	setAttr -s 12 ".kit[0:11]"  18 10 10 10 10 10 10 10 
		10 10 10 10;
	setAttr -s 12 ".kot[0:11]"  5 10 10 10 10 10 10 10 
		5 5 5 5;
createNode animCurveTL -n "PALbot_R_knee_aim_ctrl_translateZ1";
	rename -uid "EB2F38E1-4D13-33B3-896C-35909B103DCB";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 2.6645352591003757e-15 16 2.6645352591003757e-15
		 19 2.6645352591003757e-15 22 2.6645352591003757e-15 25 0.030680838582565172 28 0.059737630326293013
		 31 -0.10802042370765259 33 -0.7176042205112062 38 -0.7176042205112062 39 -0.7176042205112062
		 45 -0.7176042205112062 47 -0.7176042205112062;
	setAttr -s 12 ".kit[0:11]"  18 10 10 10 10 10 10 10 
		10 10 10 10;
	setAttr -s 12 ".kot[0:11]"  5 10 10 10 10 10 10 10 
		5 5 5 5;
createNode animCurveTU -n "PALbot_R_knee_aim_ctrl_space_switch1";
	rename -uid "68FFB4EF-4019-DAA4-47BE-45A96CB0B5F9";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 2 16 2 19 2 22 2 25 2 28 2 31 2 33 2 38 2
		 39 2 45 2 47 2;
	setAttr -s 12 ".kit[0:11]"  9 10 10 10 10 10 10 10 
		9 9 9 9;
	setAttr -s 12 ".kot[0:11]"  5 10 10 10 10 10 10 10 
		5 5 5 5;
createNode animCurveTL -n "PALbot_R_Pinky02_ctrl_translateX1";
	rename -uid "4FC77BA5-4AEE-767A-107D-07AE3412DBE6";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 46 0 47 0;
	setAttr -s 19 ".kit[0:18]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10 10;
	setAttr -s 19 ".kot[0:18]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 5 5 5;
createNode animCurveTL -n "PALbot_R_Pinky02_ctrl_translateY1";
	rename -uid "B7D205DA-4954-B3C8-31EB-D6BCA445718B";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 46 0 47 0;
	setAttr -s 19 ".kit[0:18]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10 10;
	setAttr -s 19 ".kot[0:18]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 5 5 5;
createNode animCurveTL -n "PALbot_R_Pinky02_ctrl_translateZ1";
	rename -uid "85AAE5F5-4ED0-06ED-4A57-A6A675170BBD";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 46 0 47 0;
	setAttr -s 19 ".kit[0:18]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10 10;
	setAttr -s 19 ".kot[0:18]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 5 5 5;
createNode animCurveTL -n "PALbot_Neck_ctrl_translateX1";
	rename -uid "24E5A4CC-461B-F662-BF78-5DB72834091C";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 46 0;
	setAttr -s 18 ".kot[14:17]"  5 5 5 5;
createNode animCurveTL -n "PALbot_Neck_ctrl_translateY1";
	rename -uid "F03F1296-4C4D-ADDB-4F87-238095994C45";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 46 0;
	setAttr -s 18 ".kot[14:17]"  5 5 5 5;
createNode animCurveTL -n "PALbot_Neck_ctrl_translateZ1";
	rename -uid "E3064B1A-44F2-5A07-5F9A-3D8A122D3849";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 46 0;
	setAttr -s 18 ".kot[14:17]"  5 5 5 5;
createNode animCurveTL -n "PALbot_L_Clavicle_ctrl_translateX1";
	rename -uid "D767C7A8-455B-9260-35FE-76B9D30F235C";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 36 0 38 0 39 0 41 0 46 0 51 0 52 0 58 0;
	setAttr -s 22 ".kot[16:21]"  5 10 10 10 10 5;
createNode animCurveTL -n "PALbot_L_Clavicle_ctrl_translateY1";
	rename -uid "BAFD87EE-4FD0-66E2-F407-EEA4950100F6";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 36 0 38 0 39 0 41 0 46 0 51 0 52 0 58 0;
	setAttr -s 22 ".kot[16:21]"  5 10 10 10 10 5;
createNode animCurveTL -n "PALbot_L_Clavicle_ctrl_translateZ1";
	rename -uid "8A4C88DD-4BCA-01BB-B5CA-BDA2ADBAB32A";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 36 0 38 0 39 0 41 0 46 0 51 0 52 0 58 0;
	setAttr -s 22 ".kot[16:21]"  5 10 10 10 10 5;
createNode animCurveTL -n "PALbot_hipMain_ctrl_translateX1";
	rename -uid "27687771-4159-9241-B3FE-B49D175D0632";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 46 0;
	setAttr -s 18 ".kot[14:17]"  5 5 5 5;
createNode animCurveTL -n "PALbot_hipMain_ctrl_translateY1";
	rename -uid "BC572441-40AD-830C-829D-F39418558CA8";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 46 0;
	setAttr -s 18 ".kot[14:17]"  5 5 5 5;
createNode animCurveTL -n "PALbot_hipMain_ctrl_translateZ1";
	rename -uid "E985CA85-4C5B-C54A-998D-EB9D60C04E20";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 46 0;
	setAttr -s 18 ".kot[14:17]"  5 5 5 5;
createNode animCurveTU -n "PALbot_L_arm_IK_FK_switch_IK_FK1";
	rename -uid "06DEC535-442E-8038-7918-A3BF587F3D5F";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 1 16 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1
		 26 1 28 1 29 1 31 1 33 1 38 1 39 1 41 1 46 1;
	setAttr -s 18 ".kot[14:17]"  5 5 5 5;
createNode animCurveTU -n "PALbot_R_HandVIS_Hand_Vis1";
	rename -uid "7B90B6B5-4DB8-6282-626E-EFBA796D6106";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 1 16 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1
		 26 1 28 1 29 1 31 1 33 1 38 1 39 1 46 1 47 1;
	setAttr -s 18 ".kit[0:17]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10;
	setAttr -s 18 ".kot[0:17]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 5 5;
createNode animCurveTU -n "PALbot_R_HandVIS_canon_light1";
	rename -uid "E5EDBA3A-4525-9C21-2F7C-048B54A38B39";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 46 0 47 0;
	setAttr -s 18 ".kit[0:17]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10;
	setAttr -s 18 ".kot[0:17]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 5 5;
createNode animCurveTL -n "PALbot_R_Thumb01_ctrl_translateX1";
	rename -uid "0A828FDF-47BA-2A14-B953-DC9294FDCD4B";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0 47 0;
	setAttr -s 19 ".kit[0:18]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10 10;
	setAttr -s 19 ".kot[0:18]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 5 5 5;
createNode animCurveTL -n "PALbot_R_Thumb01_ctrl_translateY1";
	rename -uid "B811A4D8-432F-F44F-0E7A-19897277C065";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0 47 0;
	setAttr -s 19 ".kit[0:18]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10 10;
	setAttr -s 19 ".kot[0:18]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 5 5 5;
createNode animCurveTL -n "PALbot_R_Thumb01_ctrl_translateZ1";
	rename -uid "A79D8DE9-454A-A486-0709-B79502A0A687";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0 47 0;
	setAttr -s 19 ".kit[0:18]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10 10;
	setAttr -s 19 ".kot[0:18]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 5 5 5;
createNode animCurveTL -n "PALbot_L_foot_secondary_translateX1";
	rename -uid "EDA2C4CF-4944-29AA-45EA-829C8830E607";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0;
	setAttr -s 18 ".kit[0:17]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10;
	setAttr -s 18 ".kot[0:17]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 10 5;
createNode animCurveTL -n "PALbot_L_foot_secondary_translateY1";
	rename -uid "8DE889DC-488E-71FD-4FC4-4A9BE30FCA32";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0;
	setAttr -s 18 ".kit[0:17]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10;
	setAttr -s 18 ".kot[0:17]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 10 5;
createNode animCurveTL -n "PALbot_L_foot_secondary_translateZ1";
	rename -uid "551DA900-4F23-AF75-77DE-09BD8D667A31";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0;
	setAttr -s 18 ".kit[0:17]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10;
	setAttr -s 18 ".kot[0:17]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 10 5;
createNode animCurveTL -n "PALbot_L_hip_translateX1";
	rename -uid "BD4F5A7E-41E1-391A-D603-FCB11B35E7EF";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 46 0;
	setAttr -s 18 ".kot[14:17]"  5 5 5 5;
createNode animCurveTL -n "PALbot_L_hip_translateY1";
	rename -uid "C23B2205-4043-F86E-0575-55A6BFE70816";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 46 0;
	setAttr -s 18 ".kot[14:17]"  5 5 5 5;
createNode animCurveTL -n "PALbot_L_hip_translateZ1";
	rename -uid "8732663D-4FAB-E910-FBFF-2CB1E0DC9A24";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 46 0;
	setAttr -s 18 ".kot[14:17]"  5 5 5 5;
createNode animCurveTL -n "PALbot_R_Index02_ctrl_translateX1";
	rename -uid "D07815E2-453D-BF6F-B98D-59811B2B5BB2";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0 47 0;
	setAttr -s 19 ".kit[0:18]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10 10;
	setAttr -s 19 ".kot[0:18]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 5 5 5;
createNode animCurveTL -n "PALbot_R_Index02_ctrl_translateY1";
	rename -uid "E05F11DA-4399-9B01-C406-35AFE9AF6E44";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0 47 0;
	setAttr -s 19 ".kit[0:18]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10 10;
	setAttr -s 19 ".kot[0:18]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 5 5 5;
createNode animCurveTL -n "PALbot_R_Index02_ctrl_translateZ1";
	rename -uid "196C0713-4129-2FCC-1455-C498D596214A";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0 47 0;
	setAttr -s 19 ".kit[0:18]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10 10;
	setAttr -s 19 ".kot[0:18]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 5 5 5;
createNode animCurveTL -n "PALbot_L_ShoulderRotate_ctrl_translateX3";
	rename -uid "489CB954-4A43-E395-4A45-4183631057D5";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 35 0 38 0 39 0 40 0 43 0 46 0 52 0 53 0;
	setAttr -s 22 ".kit[21]"  1;
	setAttr -s 22 ".kot[15:21]"  5 5 5 10 10 10 1;
	setAttr -s 22 ".kix[21]"  1;
	setAttr -s 22 ".kiy[21]"  0;
	setAttr -s 22 ".kox[21]"  1;
	setAttr -s 22 ".koy[21]"  0;
createNode animCurveTL -n "PALbot_L_ShoulderRotate_ctrl_translateY3";
	rename -uid "45C6E09E-4D02-3C65-4972-1BA63C84F263";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 35 0 38 0 39 0 40 0 43 0 46 0 52 0 53 0;
	setAttr -s 22 ".kit[21]"  1;
	setAttr -s 22 ".kot[15:21]"  5 5 5 10 10 10 1;
	setAttr -s 22 ".kix[21]"  1;
	setAttr -s 22 ".kiy[21]"  0;
	setAttr -s 22 ".kox[21]"  1;
	setAttr -s 22 ".koy[21]"  0;
createNode animCurveTL -n "PALbot_L_ShoulderRotate_ctrl_translateZ3";
	rename -uid "7A6152B6-4D39-D1FF-6F2B-688EA0504C5C";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 35 0 38 0 39 0 40 0 43 0 46 0 52 0 53 0;
	setAttr -s 22 ".kit[21]"  1;
	setAttr -s 22 ".kot[15:21]"  5 5 5 10 10 10 1;
	setAttr -s 22 ".kix[21]"  1;
	setAttr -s 22 ".kiy[21]"  0;
	setAttr -s 22 ".kox[21]"  1;
	setAttr -s 22 ".koy[21]"  0;
createNode animCurveTL -n "PALbot_head_ctrl_translateX1";
	rename -uid "6BEDCF20-4099-E008-6C41-09AAB243256F";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 46 -0.10889379737967644 52 -0.10889379737967644
		 53 -0.10889379737967644 55 -0.10889379737967644;
	setAttr -s 21 ".kit[19:20]"  1 10;
	setAttr -s 21 ".kot[15:20]"  5 5 10 10 1 10;
	setAttr -s 21 ".kix[19:20]"  1 1;
	setAttr -s 21 ".kiy[19:20]"  0 0;
	setAttr -s 21 ".kox[19:20]"  1 1;
	setAttr -s 21 ".koy[19:20]"  0 0;
createNode animCurveTL -n "PALbot_head_ctrl_translateY1";
	rename -uid "859FC3AB-493F-755E-1AF1-2FAF31B60224";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 46 -0.016028744331390902 52 -0.016028744331390902
		 53 -0.016028744331390902 55 -0.016028744331390902;
	setAttr -s 21 ".kit[19:20]"  1 10;
	setAttr -s 21 ".kot[15:20]"  5 5 10 10 1 10;
	setAttr -s 21 ".kix[19:20]"  1 1;
	setAttr -s 21 ".kiy[19:20]"  0 0;
	setAttr -s 21 ".kox[19:20]"  1 1;
	setAttr -s 21 ".koy[19:20]"  0 0;
createNode animCurveTL -n "PALbot_head_ctrl_translateZ1";
	rename -uid "DB0B10AB-4AD7-13ED-0A5A-E98FD7B79086";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 46 -0.84019095528977528 52 -0.84019095528977528
		 53 -0.84019095528977528 55 -0.84019095528977528;
	setAttr -s 21 ".kit[19:20]"  1 10;
	setAttr -s 21 ".kot[15:20]"  5 5 10 10 1 10;
	setAttr -s 21 ".kix[19:20]"  1 1;
	setAttr -s 21 ".kiy[19:20]"  0 0;
	setAttr -s 21 ".kox[19:20]"  1 1;
	setAttr -s 21 ".koy[19:20]"  0 0;
createNode animCurveTU -n "PALbot_head_ctrl_Space_switch1";
	rename -uid "B6BE7549-4FFF-68AA-A0E7-8B826A3E9081";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 46 0 52 0 53 0 55 0;
	setAttr -s 21 ".kit[19:20]"  1 10;
	setAttr -s 21 ".kot[15:20]"  5 5 10 10 1 10;
	setAttr -s 21 ".kix[19:20]"  1 1;
	setAttr -s 21 ".kiy[19:20]"  0 0;
	setAttr -s 21 ".kox[19:20]"  1 1;
	setAttr -s 21 ".koy[19:20]"  0 0;
createNode animCurveTU -n "PALbot_head_ctrl_FaceLight1";
	rename -uid "8A9CB3A9-41A1-CB9D-BB10-ECB0AB8BDCC9";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 46 0 52 0 53 0 55 0;
	setAttr -s 21 ".kit[19:20]"  1 10;
	setAttr -s 21 ".kot[15:20]"  5 5 10 10 1 10;
	setAttr -s 21 ".kix[19:20]"  1 1;
	setAttr -s 21 ".kiy[19:20]"  0 0;
	setAttr -s 21 ".kox[19:20]"  1 1;
	setAttr -s 21 ".koy[19:20]"  0 0;
createNode animCurveTU -n "PALbot_head_ctrl_Led_color1";
	rename -uid "3DD04FBA-4ACC-E711-A03C-41BA4B27FBB9";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 2 16 2 19 2 20 2 21 2 22 2 23 2 24 2 25 2
		 26 2 28 2 29 2 31 2 33 2 38 2 39 2 41 2 46 2 52 2 53 2 55 2;
	setAttr -s 21 ".kit[19:20]"  1 10;
	setAttr -s 21 ".kot[15:20]"  5 5 10 10 1 10;
	setAttr -s 21 ".kix[19:20]"  1 1;
	setAttr -s 21 ".kiy[19:20]"  0 0;
	setAttr -s 21 ".kox[19:20]"  1 1;
	setAttr -s 21 ".koy[19:20]"  0 0;
createNode animCurveTU -n "PALbot_head_ctrl_Face_Drawing1";
	rename -uid "84A81334-47ED-E421-7AB6-78888DE89172";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 2 16 2 19 2 20 2 21 2 22 2 23 2 24 2 25 2
		 26 2 28 2 29 2 31 2 33 2 38 2 39 2 41 2 46 2 52 2 53 2 55 2;
	setAttr -s 21 ".kit[19:20]"  1 10;
	setAttr -s 21 ".kot[15:20]"  5 5 10 10 1 10;
	setAttr -s 21 ".kix[19:20]"  1 1;
	setAttr -s 21 ".kiy[19:20]"  0 0;
	setAttr -s 21 ".kox[19:20]"  1 1;
	setAttr -s 21 ".koy[19:20]"  0 0;
createNode animCurveTL -n "PALbot_R_Ring01_ctrl_translateX1";
	rename -uid "9A233A6D-4003-79B8-3A80-8FBA734EBE16";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0 47 0;
	setAttr -s 19 ".kit[0:18]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10 10;
	setAttr -s 19 ".kot[0:18]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 5 5 5;
createNode animCurveTL -n "PALbot_R_Ring01_ctrl_translateY1";
	rename -uid "E5C8AB58-48AD-FB19-9F69-119A40118B3D";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0 47 0;
	setAttr -s 19 ".kit[0:18]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10 10;
	setAttr -s 19 ".kot[0:18]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 5 5 5;
createNode animCurveTL -n "PALbot_R_Ring01_ctrl_translateZ1";
	rename -uid "7AAB8B5E-4BCB-9E1A-E255-07856A1FDB7D";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0 47 0;
	setAttr -s 19 ".kit[0:18]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10 10;
	setAttr -s 19 ".kot[0:18]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 5 5 5;
createNode animCurveTL -n "PALbot_R_Thumb02_ctrl_translateX1";
	rename -uid "3AEF3AAC-4D9F-4099-146F-D880FA448325";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0 47 0;
	setAttr -s 19 ".kit[0:18]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10 10;
	setAttr -s 19 ".kot[0:18]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 5 5 5;
createNode animCurveTL -n "PALbot_R_Thumb02_ctrl_translateY1";
	rename -uid "C830F284-4FC4-4612-7312-759918613FC3";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0 47 0;
	setAttr -s 19 ".kit[0:18]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10 10;
	setAttr -s 19 ".kot[0:18]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 5 5 5;
createNode animCurveTL -n "PALbot_R_Thumb02_ctrl_translateZ1";
	rename -uid "8F1E828E-431A-D10D-F22A-F4B292DE1E9D";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0 47 0;
	setAttr -s 19 ".kit[0:18]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10 10;
	setAttr -s 19 ".kot[0:18]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 5 5 5;
createNode animCurveTL -n "PALbot_R_Middle02_ctrl_translateX1";
	rename -uid "94A5C020-45C2-3B69-18BE-5B98E48AF2DC";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0 47 0;
	setAttr -s 19 ".kit[0:18]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10 10;
	setAttr -s 19 ".kot[0:18]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 5 5 5;
createNode animCurveTL -n "PALbot_R_Middle02_ctrl_translateY1";
	rename -uid "BEE6A6FD-436A-5504-8AAC-D2B5D53C92C0";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0 47 0;
	setAttr -s 19 ".kit[0:18]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10 10;
	setAttr -s 19 ".kot[0:18]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 5 5 5;
createNode animCurveTL -n "PALbot_R_Middle02_ctrl_translateZ1";
	rename -uid "8D774829-4A61-E36D-8BFF-F6BA75FE1AAC";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0 47 0;
	setAttr -s 19 ".kit[0:18]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10 10;
	setAttr -s 19 ".kot[0:18]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 5 5 5;
createNode animCurveTL -n "PALbot_R_Clavicle_ctrl_translateX1";
	rename -uid "035F4C52-4E6A-CF56-FB1F-3889642A68EF";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 36 0 38 0 39 0 41 0 43 0 46 0 52 0 53 0;
	setAttr -s 22 ".kit[21]"  1;
	setAttr -s 22 ".kot[15:21]"  5 5 10 10 10 10 1;
	setAttr -s 22 ".kix[21]"  1;
	setAttr -s 22 ".kiy[21]"  0;
	setAttr -s 22 ".kox[21]"  1;
	setAttr -s 22 ".koy[21]"  0;
createNode animCurveTL -n "PALbot_R_Clavicle_ctrl_translateY1";
	rename -uid "4107683E-4558-03E9-906A-6BBE5D6CC53A";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 36 0 38 0 39 0 41 0 43 0 46 0 52 0 53 0;
	setAttr -s 22 ".kit[21]"  1;
	setAttr -s 22 ".kot[15:21]"  5 5 10 10 10 10 1;
	setAttr -s 22 ".kix[21]"  1;
	setAttr -s 22 ".kiy[21]"  0;
	setAttr -s 22 ".kox[21]"  1;
	setAttr -s 22 ".koy[21]"  0;
createNode animCurveTL -n "PALbot_R_Clavicle_ctrl_translateZ1";
	rename -uid "2AAFC35D-4CBF-2BA1-062C-56A7527C4D34";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 36 0 38 0 39 0 41 0 43 0 46 0 52 0 53 0;
	setAttr -s 22 ".kit[21]"  1;
	setAttr -s 22 ".kot[15:21]"  5 5 10 10 10 10 1;
	setAttr -s 22 ".kix[21]"  1;
	setAttr -s 22 ".kiy[21]"  0;
	setAttr -s 22 ".kox[21]"  1;
	setAttr -s 22 ".koy[21]"  0;
createNode animCurveTL -n "PALbot_L_Engine_ctrl_translateX1";
	rename -uid "86586A47-42E2-9FC5-60A9-04BC1573501B";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -3.0057911164751421e-12 16 -3.0057911164751421e-12
		 19 -3.0057911164751421e-12 22 -3.0057911164751421e-12 25 -3.0057911164751421e-12
		 33 -7.7927917834540781e-13 38 -7.7927917834540781e-13 39 -7.7927917834540781e-13
		 41 0 45 0;
	setAttr -s 10 ".kit[0:9]"  18 10 10 10 10 10 10 10 
		10 10;
	setAttr -s 10 ".kot[0:9]"  5 10 10 10 10 5 5 5 
		10 5;
createNode animCurveTL -n "PALbot_L_Engine_ctrl_translateY1";
	rename -uid "EFE189DA-423D-9B8B-CF3F-F5AF7F009E6B";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 16 0 19 0 22 0 25 0 33 0 38 0 39 0 41 0
		 45 0;
	setAttr -s 10 ".kit[0:9]"  18 10 10 10 10 10 10 10 
		10 10;
	setAttr -s 10 ".kot[0:9]"  5 10 10 10 10 5 5 5 
		10 5;
createNode animCurveTL -n "PALbot_L_Engine_ctrl_translateZ1";
	rename -uid "46E58C8C-4DB2-3546-ECB0-3B8813BE5247";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 16 0 19 0 22 0 25 0 33 0 38 0 39 0 41 0
		 45 0;
	setAttr -s 10 ".kit[0:9]"  18 10 10 10 10 10 10 10 
		10 10;
	setAttr -s 10 ".kot[0:9]"  5 10 10 10 10 5 5 5 
		10 5;
createNode animCurveTU -n "PALbot_L_Engine_ctrl_scaleX1";
	rename -uid "C28C06F1-48D8-8DB5-6AC7-3B87FC9E29B9";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 1 16 1 19 1 22 1 25 1 33 1 38 1 39 1 41 1
		 45 1;
	setAttr -s 10 ".kit[0:9]"  18 10 10 10 10 10 10 10 
		10 10;
	setAttr -s 10 ".kot[0:9]"  5 10 10 10 10 5 5 5 
		10 5;
createNode animCurveTU -n "PALbot_L_Engine_ctrl_scaleY1";
	rename -uid "A70FD873-42B9-2333-11A6-53B704E31297";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 1 16 1 19 1 22 1 25 1 33 1 38 1 39 1 41 1
		 45 1;
	setAttr -s 10 ".kit[0:9]"  18 10 10 10 10 10 10 10 
		10 10;
	setAttr -s 10 ".kot[0:9]"  5 10 10 10 10 5 5 5 
		10 5;
createNode animCurveTU -n "PALbot_L_Engine_ctrl_scaleZ1";
	rename -uid "E602FBF5-46F9-B071-F798-1587070F9ED3";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 1 16 1 19 1 22 1 25 1 33 1 38 1 39 1 41 1
		 45 1;
	setAttr -s 10 ".kit[0:9]"  18 10 10 10 10 10 10 10 
		10 10;
	setAttr -s 10 ".kot[0:9]"  5 10 10 10 10 5 5 5 
		10 5;
createNode animCurveTU -n "PALbot_L_Engine_ctrl_on_off1";
	rename -uid "7A376613-487C-D66A-4042-869ABB843BF3";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 16 0 19 0 22 0 25 0 33 0 38 0 39 0 41 0
		 45 0;
	setAttr -s 10 ".kit[0:9]"  18 10 10 10 10 10 10 10 
		10 10;
	setAttr -s 10 ".kot[0:9]"  5 10 10 10 10 5 5 5 
		10 5;
createNode animCurveTL -n "PALbot_L_IK_heel_lift_tip_translateX1";
	rename -uid "B40FE44E-477E-6545-BED6-6D8863261EA7";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 16 0 19 0 22 0 25 0 33 0 38 0 39 0 41 0
		 45 0;
	setAttr -s 10 ".kit[0:9]"  18 10 10 10 10 10 10 10 
		10 10;
	setAttr -s 10 ".kot[0:9]"  5 10 10 10 10 5 5 5 
		10 5;
createNode animCurveTL -n "PALbot_L_IK_heel_lift_tip_translateY1";
	rename -uid "EEA39194-46E9-46AB-EBF4-A8BBEBEBB482";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 16 0 19 0 22 0 25 0 33 0 38 0 39 0 41 0
		 45 0;
	setAttr -s 10 ".kit[0:9]"  18 10 10 10 10 10 10 10 
		10 10;
	setAttr -s 10 ".kot[0:9]"  5 10 10 10 10 5 5 5 
		10 5;
createNode animCurveTL -n "PALbot_L_IK_heel_lift_tip_translateZ1";
	rename -uid "B40D2C48-4AF5-2B9D-7517-41B173EE8D5F";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 16 0 19 0 22 0 25 0 33 0 38 0 39 0 41 0
		 45 0;
	setAttr -s 10 ".kit[0:9]"  18 10 10 10 10 10 10 10 
		10 10;
	setAttr -s 10 ".kot[0:9]"  5 10 10 10 10 5 5 5 
		10 5;
createNode animCurveTL -n "PALbot_R_Index01_ctrl_translateX1";
	rename -uid "8DCF1496-4B5E-5802-529C-7BA8047EB433";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 45 0 47 0;
	setAttr -s 18 ".kit[0:17]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10;
	setAttr -s 18 ".kot[0:17]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 5 5;
createNode animCurveTL -n "PALbot_R_Index01_ctrl_translateY1";
	rename -uid "D8F43D0C-42E0-2D3F-7C15-BB801150A788";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 45 0 47 0;
	setAttr -s 18 ".kit[0:17]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10;
	setAttr -s 18 ".kot[0:17]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 5 5;
createNode animCurveTL -n "PALbot_R_Index01_ctrl_translateZ1";
	rename -uid "A7888BFC-453E-DE4B-5285-8DB018C5E189";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 45 0 47 0;
	setAttr -s 18 ".kit[0:17]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10;
	setAttr -s 18 ".kot[0:17]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 5 5;
createNode animCurveTL -n "PALbot_R_footSec_reshape02_translateX1";
	rename -uid "BCCEE303-48CF-2192-A87B-60BC40EC7DFD";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0;
	setAttr -s 18 ".kit[0:17]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10;
	setAttr -s 18 ".kot[0:17]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 10 5;
createNode animCurveTL -n "PALbot_R_footSec_reshape02_translateY1";
	rename -uid "CB3A01A0-45EC-CD23-E062-739999B5701A";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0;
	setAttr -s 18 ".kit[0:17]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10;
	setAttr -s 18 ".kot[0:17]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 10 5;
createNode animCurveTL -n "PALbot_R_footSec_reshape02_translateZ1";
	rename -uid "65406F91-4F8F-A860-FE26-A2A60D28C930";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0;
	setAttr -s 18 ".kit[0:17]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10;
	setAttr -s 18 ".kot[0:17]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 10 5;
createNode animCurveTL -n "PALbot_R_IK_footBall_ctrl_translateX1";
	rename -uid "BDC73231-4839-79A7-3C4D-8196785A8341";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0;
	setAttr -s 18 ".kit[0:17]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10;
	setAttr -s 18 ".kot[0:17]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 10 5;
createNode animCurveTL -n "PALbot_R_IK_footBall_ctrl_translateY1";
	rename -uid "FF049D9F-47C1-C3D6-57C5-4DAF26C0AD6B";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0;
	setAttr -s 18 ".kit[0:17]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10;
	setAttr -s 18 ".kot[0:17]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 10 5;
createNode animCurveTL -n "PALbot_R_IK_footBall_ctrl_translateZ1";
	rename -uid "BB6F1D84-4564-2204-1CB7-E4B2534D19BF";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0;
	setAttr -s 18 ".kit[0:17]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10;
	setAttr -s 18 ".kot[0:17]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 10 5;
createNode animCurveTL -n "PALbot_R_Middle01_ctrl_translateX1";
	rename -uid "87BECA67-46CD-A59D-1835-DABDF0E5AB65";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 45 0 47 0;
	setAttr -s 18 ".kit[0:17]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10;
	setAttr -s 18 ".kot[0:17]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 5 5;
createNode animCurveTL -n "PALbot_R_Middle01_ctrl_translateY1";
	rename -uid "14EA8318-4831-FC94-852B-B088DB5EE8EE";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 45 0 47 0;
	setAttr -s 18 ".kit[0:17]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10;
	setAttr -s 18 ".kot[0:17]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 5 5;
createNode animCurveTL -n "PALbot_R_Middle01_ctrl_translateZ1";
	rename -uid "79B13B2C-43F6-C8B5-7656-B2BE6E04AC48";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 45 0 47 0;
	setAttr -s 18 ".kit[0:17]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10;
	setAttr -s 18 ".kot[0:17]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 5 5;
createNode animCurveTL -n "PALbot_root_translateX1";
	rename -uid "31580310-46D4-85B7-3144-66A419D139B8";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0 47 0;
	setAttr -s 19 ".kit[0:18]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10 10;
	setAttr -s 19 ".kot[0:18]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 10 5 5;
createNode animCurveTL -n "PALbot_root_translateY1";
	rename -uid "9E06B20D-498D-DC13-826A-04985E251943";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0 47 0;
	setAttr -s 19 ".kit[0:18]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10 10;
	setAttr -s 19 ".kot[0:18]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 10 5 5;
createNode animCurveTL -n "PALbot_root_translateZ1";
	rename -uid "D43982A6-4D7E-B00A-52F2-5A86E75005F7";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0 47 0;
	setAttr -s 19 ".kit[0:18]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10 10;
	setAttr -s 19 ".kot[0:18]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 10 5 5;
createNode animCurveTU -n "PALbot_R_leg_IK_FK_switch_IK_FK1";
	rename -uid "FB14EF82-41B2-B309-9F92-35B498992A24";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 46 0;
	setAttr -s 18 ".kot[14:17]"  5 5 5 5;
createNode animCurveTL -n "PALbot_R_footSec_reshape01_translateX1";
	rename -uid "7B561058-462D-D661-E73A-B7B260CEC5FD";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0;
	setAttr -s 18 ".kit[0:17]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10;
	setAttr -s 18 ".kot[0:17]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 10 5;
createNode animCurveTL -n "PALbot_R_footSec_reshape01_translateY1";
	rename -uid "1ED43057-45C6-D4DB-0622-36A08131C85B";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0;
	setAttr -s 18 ".kit[0:17]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10;
	setAttr -s 18 ".kot[0:17]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 10 5;
createNode animCurveTL -n "PALbot_R_footSec_reshape01_translateZ1";
	rename -uid "EEF1C2C9-4F6B-A060-4BA6-5AAD5A0A3B09";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0;
	setAttr -s 18 ".kit[0:17]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10;
	setAttr -s 18 ".kot[0:17]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 10 5;
createNode animCurveTL -n "PALbot_L_IK_footBall_ctrl_translateX1";
	rename -uid "074DFDAF-4A6B-C65B-3FFD-F28B9CAE2CF2";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 16 0 19 0 22 0 25 0 33 0 38 0 39 0 41 0
		 45 0;
	setAttr -s 10 ".kit[0:9]"  18 10 10 10 10 10 10 10 
		10 10;
	setAttr -s 10 ".kot[0:9]"  5 10 10 10 10 5 5 5 
		10 5;
createNode animCurveTL -n "PALbot_L_IK_footBall_ctrl_translateY1";
	rename -uid "0212EDD0-45B8-6022-E118-FDA7B55139D2";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 16 0 19 0 22 0 25 0 33 0 38 0 39 0 41 0
		 45 0;
	setAttr -s 10 ".kit[0:9]"  18 10 10 10 10 10 10 10 
		10 10;
	setAttr -s 10 ".kot[0:9]"  5 10 10 10 10 5 5 5 
		10 5;
createNode animCurveTL -n "PALbot_L_IK_footBall_ctrl_translateZ1";
	rename -uid "868389E1-4ED4-610E-F1F9-B3A6C9CC4B3A";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 16 0 19 0 22 0 25 0 33 0 38 0 39 0 41 0
		 45 0;
	setAttr -s 10 ".kit[0:9]"  18 10 10 10 10 10 10 10 
		10 10;
	setAttr -s 10 ".kot[0:9]"  5 10 10 10 10 5 5 5 
		10 5;
createNode animCurveTL -n "PALbot_L_Arm_ctrl_translateX3";
	rename -uid "329BB697-4C2D-CADE-33CD-649C2DD3F6FC";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 35 0 38 0 39 0 41 0 46 0 52 0 53 0 55 0 58 0;
	setAttr -s 23 ".kit[20:22]"  1 10 10;
	setAttr -s 23 ".kot[15:22]"  5 5 5 10 10 1 10 10;
	setAttr -s 23 ".kix[20:22]"  1 1 1;
	setAttr -s 23 ".kiy[20:22]"  0 0 0;
	setAttr -s 23 ".kox[20:22]"  1 1 1;
	setAttr -s 23 ".koy[20:22]"  0 0 0;
createNode animCurveTL -n "PALbot_L_Arm_ctrl_translateY3";
	rename -uid "3D567F0A-4A78-D015-EB24-6F86741EFE18";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 35 0 38 0 39 0 41 0 46 0 52 0 53 0 55 0 58 0;
	setAttr -s 23 ".kit[20:22]"  1 10 10;
	setAttr -s 23 ".kot[15:22]"  5 5 5 10 10 1 10 10;
	setAttr -s 23 ".kix[20:22]"  1 1 1;
	setAttr -s 23 ".kiy[20:22]"  0 0 0;
	setAttr -s 23 ".kox[20:22]"  1 1 1;
	setAttr -s 23 ".koy[20:22]"  0 0 0;
createNode animCurveTL -n "PALbot_L_Arm_ctrl_translateZ3";
	rename -uid "5B8F20B1-4713-2EA3-6CCE-6AA901AE0018";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 35 0 38 0 39 0 41 0 46 0 52 0 53 0 55 0 58 0;
	setAttr -s 23 ".kit[20:22]"  1 10 10;
	setAttr -s 23 ".kot[15:22]"  5 5 5 10 10 1 10 10;
	setAttr -s 23 ".kix[20:22]"  1 1 1;
	setAttr -s 23 ".kiy[20:22]"  0 0 0;
	setAttr -s 23 ".kox[20:22]"  1 1 1;
	setAttr -s 23 ".koy[20:22]"  0 0 0;
createNode animCurveTL -n "PALbot_L_Thumb01_ctrl_translateX1";
	rename -uid "13849936-4E45-1F41-89F3-3588BEAB72AD";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 -4.9400951578258161e-05 16 -4.9400951578258161e-05
		 19 -4.9400951578258161e-05 20 -4.9400951578258161e-05 21 -4.9400951578258161e-05
		 22 -4.9400951578258161e-05 23 -4.9400951578258161e-05 24 -4.9400951578258161e-05
		 25 -4.9400951578258161e-05 26 -4.9400951578258161e-05 28 -4.9400951578258161e-05
		 29 -4.9400951578258161e-05 31 -4.9400951578258161e-05 33 -4.9400951578258161e-05
		 38 -4.9400951578258161e-05 39 -4.9400951578258161e-05 41 -4.9400951578258161e-05
		 45 -4.9400951578258161e-05;
	setAttr -s 18 ".kot[14:17]"  5 5 5 5;
createNode animCurveTL -n "PALbot_L_Thumb01_ctrl_translateY1";
	rename -uid "CACF0882-4CA3-4E77-8B26-A5825C1B6D82";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 1.7589953799286646e-05 16 1.7589953799286646e-05
		 19 1.7589953799286646e-05 20 1.7589953799286646e-05 21 1.7589953799286646e-05 22 1.7589953799286646e-05
		 23 1.7589953799286646e-05 24 1.7589953799286646e-05 25 1.7589953799286646e-05 26 1.7589953799286646e-05
		 28 1.7589953799286646e-05 29 1.7589953799286646e-05 31 1.7589953799286646e-05 33 1.7589953799286646e-05
		 38 1.7589953799286646e-05 39 1.7589953799286646e-05 41 1.7589953799286646e-05 45 1.7589953799286646e-05;
	setAttr -s 18 ".kot[14:17]"  5 5 5 5;
createNode animCurveTL -n "PALbot_L_Thumb01_ctrl_translateZ1";
	rename -uid "A3FA9A2B-4D11-A88E-0DE0-0DBA5C931953";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0;
	setAttr -s 18 ".kot[14:17]"  5 5 5 5;
createNode animCurveTL -n "PALbot_R_foot_secondary_translateX1";
	rename -uid "15EDBFFC-4245-A4A4-B97C-CF85EB705E80";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0;
	setAttr -s 18 ".kit[0:17]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10;
	setAttr -s 18 ".kot[0:17]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 10 5;
createNode animCurveTL -n "PALbot_R_foot_secondary_translateY1";
	rename -uid "049EAEF7-41D4-BFE3-6CA8-30AC921EDCAB";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0;
	setAttr -s 18 ".kit[0:17]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10;
	setAttr -s 18 ".kot[0:17]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 10 5;
createNode animCurveTL -n "PALbot_R_foot_secondary_translateZ1";
	rename -uid "2433E27F-4FDF-744F-720E-C49AD435BB02";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0;
	setAttr -s 18 ".kit[0:17]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10;
	setAttr -s 18 ".kot[0:17]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 10 5;
createNode animCurveTL -n "PALbot_R_IK_heel_lift_tip_translateX1";
	rename -uid "A2CBB70E-41BC-344F-A9CD-F6A99B1D52C7";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0;
	setAttr -s 18 ".kit[0:17]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10;
	setAttr -s 18 ".kot[0:17]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 10 5;
createNode animCurveTL -n "PALbot_R_IK_heel_lift_tip_translateY1";
	rename -uid "2675520D-481C-0F58-D256-999EF5969A36";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0;
	setAttr -s 18 ".kit[0:17]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10;
	setAttr -s 18 ".kot[0:17]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 10 5;
createNode animCurveTL -n "PALbot_R_IK_heel_lift_tip_translateZ1";
	rename -uid "4FE5463F-4982-D2A0-F88E-87A3DD638752";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0;
	setAttr -s 18 ".kit[0:17]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10;
	setAttr -s 18 ".kot[0:17]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 10 5;
createNode animCurveTL -n "PALbot_L_IK_foot_tip_translateX1";
	rename -uid "7AF7B43F-4E3F-B683-39C3-B58A5F6F085D";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 16 0 19 0 22 0 25 0 33 0 38 0 39 0 41 0
		 45 0;
	setAttr -s 10 ".kit[0:9]"  18 10 10 10 10 10 10 10 
		10 10;
	setAttr -s 10 ".kot[0:9]"  5 10 10 10 10 10 5 5 
		10 5;
createNode animCurveTL -n "PALbot_L_IK_foot_tip_translateY1";
	rename -uid "9B27C459-43F0-EA2C-9B3D-25BF1A186112";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 16 0 19 0 22 0 25 0 33 0 38 0 39 0 41 0
		 45 0;
	setAttr -s 10 ".kit[0:9]"  18 10 10 10 10 10 10 10 
		10 10;
	setAttr -s 10 ".kot[0:9]"  5 10 10 10 10 10 5 5 
		10 5;
createNode animCurveTL -n "PALbot_L_IK_foot_tip_translateZ1";
	rename -uid "7E7A532A-42C9-4741-83D7-69B9F9AA974E";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 16 0 19 0 22 0 25 0 33 0 38 0 39 0 41 0
		 45 0;
	setAttr -s 10 ".kit[0:9]"  18 10 10 10 10 10 10 10 
		10 10;
	setAttr -s 10 ".kot[0:9]"  5 10 10 10 10 10 5 5 
		10 5;
createNode animCurveTU -n "PALbot_R_arm_IK_FK_switch_IK_FK1";
	rename -uid "C71A7979-4A54-6175-BC76-D6A26B3B6D83";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 1 16 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1
		 26 1 28 1 29 1 31 1 33 1 38 1 39 1 41 1 46 1;
	setAttr -s 18 ".kot[14:17]"  5 5 5 5;
createNode animCurveTU -n "PALbot_L_HandVIS_Hand_Vis1";
	rename -uid "17D177D8-4CF3-3B80-4C1A-929236BE2016";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 1 16 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1
		 26 1 28 1 29 1 31 1 33 1 38 1 39 1 41 1 45 1;
	setAttr -s 18 ".kot[14:17]"  5 5 5 5;
createNode animCurveTU -n "PALbot_L_HandVIS_canon_light1";
	rename -uid "6A572A85-4F22-6826-E37D-4F8C1F0D6037";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0;
	setAttr -s 18 ".kot[14:17]"  5 5 5 5;
createNode animCurveTL -n "PALbot_R_Ring02_ctrl_translateX1";
	rename -uid "92899E5B-4E58-EE1D-372B-B5B96424E780";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 46 0 47 0;
	setAttr -s 19 ".kit[0:18]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10 10;
	setAttr -s 19 ".kot[0:18]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 5 5 5;
createNode animCurveTL -n "PALbot_R_Ring02_ctrl_translateY1";
	rename -uid "0C73D3F5-4805-4159-6EB2-568D1330A70F";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 46 0 47 0;
	setAttr -s 19 ".kit[0:18]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10 10;
	setAttr -s 19 ".kot[0:18]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 5 5 5;
createNode animCurveTL -n "PALbot_R_Ring02_ctrl_translateZ1";
	rename -uid "290503F3-4ED2-5E1E-336D-DC8530148EE2";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 46 0 47 0;
	setAttr -s 19 ".kit[0:18]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10 10;
	setAttr -s 19 ".kot[0:18]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 5 5 5;
createNode animCurveTU -n "PALbot_L_leg_IK_FK_switch_IK_FK1";
	rename -uid "43264D4C-450C-A11F-E98D-2787E77F091D";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 46 0;
	setAttr -s 18 ".kot[14:17]"  5 5 5 5;
createNode animCurveTL -n "PALbot_R_Pinky01_ctrl_translateX1";
	rename -uid "1FE616C0-4D93-0E14-968C-7FB4888DA467";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0 47 0;
	setAttr -s 19 ".kit[0:18]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10 10;
	setAttr -s 19 ".kot[0:18]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 5 5 5;
createNode animCurveTL -n "PALbot_R_Pinky01_ctrl_translateY1";
	rename -uid "285718C9-453A-7FA3-AA54-88BAA8FC75F2";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0 47 0;
	setAttr -s 19 ".kit[0:18]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10 10;
	setAttr -s 19 ".kot[0:18]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 5 5 5;
createNode animCurveTL -n "PALbot_R_Pinky01_ctrl_translateZ1";
	rename -uid "BF294596-4BC0-4CEF-AF64-8FA3428368EE";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0 47 0;
	setAttr -s 19 ".kit[0:18]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10 10;
	setAttr -s 19 ".kot[0:18]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 5 5 5;
createNode animCurveTL -n "PALbot_MAIN_translateX1";
	rename -uid "DFA1605F-4F9C-1234-9091-99A1612A4E41";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 25 ".ktv[0:24]"  0 0 16 0 19 0 20 0 21 0 22 0 23 -1.3245035429388934
		 24 -2.4758640345597263 25 -2.669615143565391 26 -2.6227675396447889 28 -2.4889172427287813
		 29 -2.4889172427287813 31 -2.4889172427287813 33 -2.4889172427287813 38 -2.4889172427287813
		 39 -2.4889172427287813 41 -2.4889172427287813 42 -2.5966994545456852 43 -2.5676135117896997
		 44 -2.8462077374255101 45 -2.8191175619030875 46 -2.7316914698826569 47 -2.6414570027103101
		 49 -2.6148373190839722 51 -3.288774514595886;
	setAttr -s 25 ".kit[0:24]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10;
	setAttr -s 25 ".kot[0:24]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 10 5 5 5 10 5 5 5 10;
createNode animCurveTL -n "PALbot_MAIN_translateY1";
	rename -uid "2941626E-4428-D88B-C619-1E8E4DB8AD6A";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 25 ".ktv[0:24]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 51 0;
	setAttr -s 25 ".kit[0:24]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10;
	setAttr -s 25 ".kot[0:24]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 10 5 5 5 10 5 5 5 10;
createNode animCurveTL -n "PALbot_MAIN_translateZ1";
	rename -uid "520DCE7B-4001-0C60-C03A-CC9CB03F66CE";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 25 ".ktv[0:24]"  0 -7.9123596091300072 16 -7.9123596091300072
		 19 -7.9123596091300072 20 -7.9123596091300072 21 -7.9123596091300072 22 -7.9123596091300072
		 23 -6.933237300960676 24 -4.5143911163906774 25 -3.7743412025397776 26 -3.1846717827060287
		 28 -2.404248743143917 29 -2.404248743143917 31 -2.404248743143917 33 -2.404248743143917
		 38 -2.404248743143917 39 -2.404248743143917 41 -2.404248743143917 42 -2.9315302169624555
		 43 -3.6510200705058167 44 -4.6673057439636798 45 -5.6166761073165858 46 -5.6496245629837736
		 47 -5.6209563779763565 49 -5.5551863591255222 51 -7.2053661108814033;
	setAttr -s 25 ".kit[0:24]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10;
	setAttr -s 25 ".kot[0:24]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 10 5 5 5 10 5 5 5 10;
createNode animCurveTU -n "PALbot_MAIN_global_scale1";
	rename -uid "E91576AD-46E0-159B-729B-DFA5CE6086D1";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 25 ".ktv[0:24]"  0 1 16 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1
		 26 1 28 1 29 1 31 1 33 1 38 1 39 1 41 1 42 1 43 1 44 1 45 1 46 1 47 1 49 1 51 1;
	setAttr -s 25 ".kit[0:24]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10;
	setAttr -s 25 ".kot[0:24]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 10 5 5 5 10 5 5 5 10;
createNode animCurveTU -n "PALbot_MAIN_Mesh_lock1";
	rename -uid "39601ED4-4D47-766F-5738-10A019D733F6";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 25 ".ktv[0:24]"  0 1 16 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1
		 26 1 28 1 29 1 31 1 33 1 38 1 39 1 41 1 42 1 43 1 44 1 45 1 46 1 47 1 49 1 51 1;
	setAttr -s 25 ".kit[0:24]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10;
	setAttr -s 25 ".kot[0:24]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 10 5 5 5 10 5 5 5 10;
createNode animCurveTL -n "PALbot_R_Thumb03_ctrl_translateX1";
	rename -uid "FA9EBA1C-420E-8B57-59F7-799F26FF7870";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0 47 0;
	setAttr -s 19 ".kit[0:18]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10 10;
	setAttr -s 19 ".kot[0:18]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 5 5 5;
createNode animCurveTL -n "PALbot_R_Thumb03_ctrl_translateY1";
	rename -uid "C4A90054-4270-C753-9DAF-C794D41DE63E";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0 47 0;
	setAttr -s 19 ".kit[0:18]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10 10;
	setAttr -s 19 ".kot[0:18]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 5 5 5;
createNode animCurveTL -n "PALbot_R_Thumb03_ctrl_translateZ1";
	rename -uid "E5A9AF3A-400D-ACE5-A778-888BDD73D05A";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0 47 0;
	setAttr -s 19 ".kit[0:18]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10 10;
	setAttr -s 19 ".kot[0:18]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 5 5 5;
createNode animCurveTL -n "PALbot_L_footSec_reshape01_translateX1";
	rename -uid "040BBE44-46CF-ABC9-F731-E09FACA70C93";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 16 0 19 0 22 0 25 0 33 0 38 0 39 0 41 0
		 45 0;
	setAttr -s 10 ".kit[0:9]"  18 10 10 10 10 10 10 10 
		10 10;
	setAttr -s 10 ".kot[0:9]"  5 10 10 10 10 5 5 5 
		10 5;
createNode animCurveTL -n "PALbot_L_footSec_reshape01_translateY1";
	rename -uid "82728051-4AA6-B08E-AF5B-E4A34452CE9A";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 16 0 19 0 22 0 25 0 33 0 38 0 39 0 41 0
		 45 0;
	setAttr -s 10 ".kit[0:9]"  18 10 10 10 10 10 10 10 
		10 10;
	setAttr -s 10 ".kot[0:9]"  5 10 10 10 10 5 5 5 
		10 5;
createNode animCurveTL -n "PALbot_L_footSec_reshape01_translateZ1";
	rename -uid "29B76C39-4550-35DC-7799-8B9357021BBE";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 16 0 19 0 22 0 25 0 33 0 38 0 39 0 41 0
		 45 0;
	setAttr -s 10 ".kit[0:9]"  18 10 10 10 10 10 10 10 
		10 10;
	setAttr -s 10 ".kot[0:9]"  5 10 10 10 10 5 5 5 
		10 5;
createNode animCurveTL -n "PALbot_R_IK_foot_tip_translateX1";
	rename -uid "79A0225B-4E23-A1F2-6F5A-AA8D910F5594";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0;
	setAttr -s 18 ".kit[0:17]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10;
	setAttr -s 18 ".kot[0:17]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 10 5;
createNode animCurveTL -n "PALbot_R_IK_foot_tip_translateY1";
	rename -uid "025ECFBE-4FC2-DA86-E3EA-439D7C3633E1";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0;
	setAttr -s 18 ".kit[0:17]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10;
	setAttr -s 18 ".kot[0:17]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 10 5;
createNode animCurveTL -n "PALbot_R_IK_foot_tip_translateZ1";
	rename -uid "4A29BB3D-4D8E-5851-83DB-68ADD3161249";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 45 0;
	setAttr -s 18 ".kit[0:17]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10 10 10;
	setAttr -s 18 ".kot[0:17]"  5 10 10 10 10 10 10 10 
		10 10 10 10 10 10 5 5 10 5;
createNode animCurveTL -n "PALbot_R_hip_translateX1";
	rename -uid "18755961-4F14-77F0-1EB5-F0964C443BB4";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 46 0;
	setAttr -s 18 ".kot[14:17]"  5 5 5 5;
createNode animCurveTL -n "PALbot_R_hip_translateY1";
	rename -uid "C3D338F8-4712-B1A3-D2EE-078A9C1A0ABC";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 46 0;
	setAttr -s 18 ".kot[14:17]"  5 5 5 5;
createNode animCurveTL -n "PALbot_R_hip_translateZ1";
	rename -uid "09F94297-428D-8127-2556-BE8E195ADB2E";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 16 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0
		 26 0 28 0 29 0 31 0 33 0 38 0 39 0 41 0 46 0;
	setAttr -s 18 ".kot[14:17]"  5 5 5 5;
createNode animCurveTA -n "PALbot_L_knee_aim_ctrl_rotateX1";
	rename -uid "0935FDF0-4495-6C5A-B99C-B4B8E24DDEF3";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 20 0 21 0 23 0 24 0 25 0 26 0 28 0 29 0
		 31 0 33 0 38 0 39 0 41 0 45 0 47 0;
	setAttr -s 16 ".kit[0:15]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10;
	setAttr -s 16 ".kot[0:15]"  5 10 10 10 10 10 10 10 
		10 10 10 5 5 5 5 5;
createNode animCurveTA -n "PALbot_L_knee_aim_ctrl_rotateY1";
	rename -uid "D9F43236-4146-7F80-2421-57BC2BDD922B";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 20 0 21 0 23 0 24 0 25 0 26 0 28 0 29 0
		 31 0 33 0 38 0 39 0 41 0 45 0 47 0;
	setAttr -s 16 ".kit[0:15]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10;
	setAttr -s 16 ".kot[0:15]"  5 10 10 10 10 10 10 10 
		10 10 10 5 5 5 5 5;
createNode animCurveTA -n "PALbot_L_knee_aim_ctrl_rotateZ1";
	rename -uid "429DFBB3-4152-0BF5-F614-FF8D7EBA4993";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 20 0 21 0 23 0 24 0 25 0 26 0 28 0 29 0
		 31 0 33 0 38 0 39 0 41 0 45 0 47 0;
	setAttr -s 16 ".kit[0:15]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10;
	setAttr -s 16 ".kot[0:15]"  5 10 10 10 10 10 10 10 
		10 10 10 5 5 5 5 5;
createNode animCurveTL -n "PALbot_L_knee_aim_ctrl_translateX1";
	rename -uid "AC2532E6-4C8E-EE9B-BC96-78938FCE9E51";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 20 0 21 0 23 0 24 0 25 0 26 0 28 0 29 0
		 31 0 33 0 38 0 39 0 41 0 45 0 47 0;
	setAttr -s 16 ".kit[0:15]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10;
	setAttr -s 16 ".kot[0:15]"  5 10 10 10 10 10 10 10 
		10 10 10 5 5 5 5 5;
createNode animCurveTL -n "PALbot_L_knee_aim_ctrl_translateY1";
	rename -uid "DFB02DA2-4472-F1E5-7990-B1A0D75CEE0B";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 20 0 21 0 23 0 24 0 25 0 26 0 28 0 29 0
		 31 0 33 0 38 0 39 0 41 0 45 0 47 0;
	setAttr -s 16 ".kit[0:15]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10;
	setAttr -s 16 ".kot[0:15]"  5 10 10 10 10 10 10 10 
		10 10 10 5 5 5 5 5;
createNode animCurveTL -n "PALbot_L_knee_aim_ctrl_translateZ1";
	rename -uid "25F294A6-4B6E-B7DE-ECB2-628615DFF5A4";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 20 0 21 0 23 0 24 0 25 0 26 0 28 0 29 0
		 31 0 33 0 38 0 39 0 41 0 45 0 47 0;
	setAttr -s 16 ".kit[0:15]"  18 10 10 10 10 10 10 10 
		10 10 10 10 10 10 10 10;
	setAttr -s 16 ".kot[0:15]"  5 10 10 10 10 10 10 10 
		10 10 10 5 5 5 5 5;
createNode animCurveTU -n "PALbot_L_knee_aim_ctrl_space_switch1";
	rename -uid "FC3FCED4-4152-CE76-ADD6-48BEA8D5FB55";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 2 20 2 21 2 23 2 24 2 25 2 26 2 28 2 29 2
		 31 2 33 2 38 2 39 2 41 2 45 2 47 2;
	setAttr -s 16 ".kit[0:15]"  9 10 10 10 10 10 10 10 
		10 10 10 9 9 10 9 9;
	setAttr -s 16 ".kot[0:15]"  5 10 10 10 10 10 10 10 
		10 10 10 5 5 5 5 5;
createNode polyCylinder -n "polyCylinder1";
	rename -uid "B301021D-4847-26D2-711D-14B3F8350650";
	setAttr ".sa" 16;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode gameFbxExporter -n "gameExporterPreset1";
	rename -uid "94B585D0-4674-3B0E-1583-84A136592F06";
	setAttr ".pn" -type "string" "Model Default";
	setAttr ".ebm" yes;
	setAttr ".ich" yes;
	setAttr ".inc" yes;
	setAttr ".fv" -type "string" "FBX201800";
createNode gameFbxExporter -n "gameExporterPreset2";
	rename -uid "029C4849-417A-EF94-7FAB-068DD9BF7356";
	setAttr ".pn" -type "string" "Anim Default";
	setAttr ".eti" 2;
	setAttr ".spt" 2;
	setAttr ".ic" no;
	setAttr ".ebm" yes;
	setAttr ".fv" -type "string" "FBX201800";
createNode gameFbxExporter -n "gameExporterPreset3";
	rename -uid "D91D9BDC-4E2D-8187-0F31-0FB65C3592A7";
	setAttr ".pn" -type "string" "TE Anim Default";
	setAttr ".eti" 3;
	setAttr ".ebm" yes;
	setAttr ".fv" -type "string" "FBX201800";
createNode phong -n "v_layered1";
	rename -uid "6E5349E1-4EE4-AE20-E2D2-93B7A1B33E14";
createNode shadingEngine -n "v_layered1SG";
	rename -uid "B7DED443-4076-01EC-0214-A591D43CDC49";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "25FD3C29-495E-3441-7186-4FA7F797C8F1";
createNode file -n "file1";
	rename -uid "887EBA7F-470A-46AE-3E3A-6E9C286C8EDA";
	setAttr ".cs" -type "string" "sRGB";
createNode groupId -n "groupId2";
	rename -uid "AFEB81EE-4F18-0B9C-EE2A-B4BD42E0A735";
	setAttr ".ihi" 0;
createNode substanceNode -n "substanceNode1";
	rename -uid "5329496B-49EF-3A66-5B6C-D6AC7AB1E38D";
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
	addAttr -ci true -h true -sn "output_specular" -ln "output_specular" -ct "substance_output" 
		-dt "string";
	addAttr -ci true -h true -sn "output_glossiness" -ln "output_glossiness" -ct "substance_output" 
		-dt "string";
	addAttr -ci true -h true -sn "output_roughness" -ln "output_roughness" -ct "substance_output" 
		-dt "string";
	addAttr -ci true -h true -sn "output_ambientocclusion" -ln "output_ambientocclusion" 
		-ct "substance_output" -dt "string";
	addAttr -ci true -h true -sn "output_metallic" -ln "output_metallic" -ct "substance_output" 
		-dt "string";
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
createNode place2dTexture -n "place2dTexture1";
	rename -uid "7ED37628-4F92-517E-1B13-68B78C934D8F";
createNode substanceOutputNode -n "Heavy_Cracked_Concrete_Sidewalk_01_diffuse";
	rename -uid "59F9EEC9-4FE2-09F6-E390-C3BD14D906AA";
	setAttr ".cpth" -type "string" "C:/Users/hunte/Documents/maya\\2024\\substance/baked_images/Heavy_Cracked_Concrete_Sidewalk_01_diffuse.exr";
createNode file -n "file2";
	rename -uid "26EB59D1-4E68-A162-09F6-2FAF1C32FF5C";
	setAttr ".cs" -type "string" "sRGB";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Heavy_Cracked_Concrete_Sidewalk_01_basecolor";
	rename -uid "3FF64CCA-4227-F199-A205-90AC27F54BA8";
	setAttr ".cpth" -type "string" "C:/Users/hunte/Documents/maya\\2024\\substance/baked_images/Heavy_Cracked_Concrete_Sidewalk_01_basecolor.png";
createNode file -n "file3";
	rename -uid "317855E7-41C0-CE94-98C0-8DAD339FFD13";
	setAttr ".cs" -type "string" "sRGB";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Heavy_Cracked_Concrete_Sidewalk_01_specular";
	rename -uid "B1AE70F0-4AE4-3A51-C532-F893DF7C413E";
	setAttr ".cpth" -type "string" "C:/Users/hunte/Documents/maya\\2024\\substance/baked_images/Heavy_Cracked_Concrete_Sidewalk_01_specular.exr";
createNode file -n "file4";
	rename -uid "6DC7E14C-48D5-1B3F-B75F-B09A6CD17383";
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Heavy_Cracked_Concrete_Sidewalk_01_glossiness";
	rename -uid "C6A0D6B8-4F51-75F8-3257-9E8F86B774BC";
	setAttr ".cpth" -type "string" "C:/Users/hunte/Documents/maya\\2024\\substance/baked_images/Heavy_Cracked_Concrete_Sidewalk_01_glossiness.exr";
createNode file -n "file5";
	rename -uid "469BD4C8-4FA1-D626-C51C-30924BC7370B";
	setAttr ".ail" yes;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Heavy_Cracked_Concrete_Sidewalk_01_roughness";
	rename -uid "977FAC5F-4597-6A87-7B1E-E3A194D0FC51";
	setAttr ".cpth" -type "string" "C:/Users/hunte/Documents/maya\\2024\\substance/baked_images/Heavy_Cracked_Concrete_Sidewalk_01_roughness.png";
createNode file -n "file6";
	rename -uid "71E95304-49AF-6E09-19AF-67A3E30139DF";
	setAttr ".ail" yes;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Heavy_Cracked_Concrete_Sidewalk_01_ambientocclusion";
	rename -uid "3CAB15C2-4AB6-51DE-5194-11AB714546E2";
	setAttr ".cpth" -type "string" "C:/Users/hunte/Documents/maya\\2024\\substance/baked_images/Heavy_Cracked_Concrete_Sidewalk_01_ambientocclusion.png";
createNode file -n "file7";
	rename -uid "260AD926-44C7-849C-7A17-6B855F4A81A5";
	setAttr ".ail" yes;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Heavy_Cracked_Concrete_Sidewalk_01_metallic";
	rename -uid "361DF8A7-4655-A2E4-A43A-9AAD477CD7A5";
	setAttr ".cpth" -type "string" "C:/Users/hunte/Documents/maya\\2024\\substance/baked_images/Heavy_Cracked_Concrete_Sidewalk_01_metallic.png";
createNode file -n "file8";
	rename -uid "18CB458B-40AA-209B-866B-488D64E1DAED";
	setAttr ".ail" yes;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Heavy_Cracked_Concrete_Sidewalk_01_normal";
	rename -uid "77163CC3-4640-71F2-3BE1-BDA73AA7FA10";
	setAttr ".cpth" -type "string" "C:/Users/hunte/Documents/maya\\2024\\substance/baked_images/Heavy_Cracked_Concrete_Sidewalk_01_normal.exr";
createNode file -n "file9";
	rename -uid "46814811-4EBB-6AB5-A1D9-1CA2CA8ED3EB";
	setAttr ".ail" yes;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Heavy_Cracked_Concrete_Sidewalk_01_height";
	rename -uid "9F7DC5D4-4F27-1BFA-1939-0BBFA230FC33";
	setAttr ".cpth" -type "string" "C:/Users/hunte/Documents/maya\\2024\\substance/baked_images/Heavy_Cracked_Concrete_Sidewalk_01_height.exr";
createNode file -n "file10";
	rename -uid "8B55489E-482E-B708-47D0-288B7E658566";
	setAttr ".ail" yes;
	setAttr ".ao" -0.5;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode multiplyDivide -n "multiplyDivide1";
	rename -uid "6B7CFDC9-444B-5436-C194-628D33DFB8C4";
createNode aiStandardSurface -n "WallCement";
	rename -uid "84674266-4FD1-192B-CC2E-768765A8B5E3";
	setAttr ".emission" 1;
	setAttr ".emission_color" -type "float3" 0 0 0 ;
createNode shadingEngine -n "set1";
	rename -uid "59709C51-4B6D-0838-8E80-C896A4891AD6";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "8F25C5C5-45C1-5E8C-99C3-AC837F53A082";
createNode bump2d -n "bump2d1";
	rename -uid "79703838-4D3F-5993-5678-619A46005398";
	setAttr ".bi" 1;
	setAttr ".vc1" -type "float3" 0 9.9999997e-06 0 ;
	setAttr ".vc2" -type "float3" 9.9999997e-06 9.9999997e-06 0 ;
createNode displacementShader -n "displacementShader1";
	rename -uid "32221A9F-4619-B2F2-E8F7-D491273C954D";
createNode animCurveTL -n "pCylinder1_translateX";
	rename -uid "033FFEB6-4106-861F-2EF5-E5B2A14F4E8F";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -7.6176083624706408 17 -5.1348778110982911
		 21 0.87962588084448967 22 4.476435231620961 23 4.476435231620961 33 7.631685805399675
		 38 7.5627292777579385 39 7.482 47 -2.569947419979294 51 -0.98628063771138774;
	setAttr -s 10 ".kit[0:9]"  9 9 10 10 10 10 10 10 
		10 10;
	setAttr -s 10 ".kot[0:9]"  9 9 5 5 5 5 5 5 
		5 5;
createNode animCurveTL -n "pCylinder1_translateY";
	rename -uid "3E39C92F-4761-11A7-A167-21881693A312";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 12.42405895736715 17 17.934701433105047
		 21 14.807804483958103 22 10.587313124502725 23 10.587313124502725 33 7.1459538673910066
		 38 7.1459538673910066 39 3.146 47 16.39750843543008 51 17.282037831880068;
	setAttr -s 10 ".kit[0:9]"  9 9 10 10 10 10 10 10 
		10 10;
	setAttr -s 10 ".kot[0:9]"  9 9 5 5 5 5 5 5 
		5 5;
createNode animCurveTU -n "pCylinder1_visibility";
	rename -uid "218678F6-463A-6E2F-1E76-64A2029C675F";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 1 17 1 21 1 22 1 23 1 33 1 38 1 39 1 47 1
		 51 1;
	setAttr -s 10 ".kot[2:9]"  5 5 5 5 5 5 5 5;
createNode animCurveTA -n "pCylinder1_rotateX";
	rename -uid "FF1C2C7C-496B-8B36-819F-8BB5ADA51B1E";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 35.463734207409054 17 -129.57070114862717
		 21 66.139234912701411 22 62.658603820898904 23 62.658603820898904 33 -62.576024205905313
		 38 -76.092820095989765 39 111.375 42 111.37541141383394 47 -50.74126359735785 51 -66.220689696785556;
	setAttr -s 11 ".kit[0:10]"  9 9 10 10 10 10 10 10 
		10 10 10;
	setAttr -s 11 ".kot[0:10]"  9 9 5 5 5 5 5 5 
		5 5 5;
createNode animCurveTA -n "pCylinder1_rotateY";
	rename -uid "5E5DF643-40AD-7E13-B872-ECAF41477DEB";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 17 0 21 0 22 28.268486639054402 23 28.268486639054402
		 33 43.030399018683916 38 43.030399018683923 39 64.743 47 74.110193522215567 51 -9.1551321916673825;
	setAttr -s 10 ".kit[0:9]"  9 9 10 10 10 10 10 10 
		10 10;
	setAttr -s 10 ".kot[0:9]"  9 9 5 5 5 5 5 5 
		5 5;
createNode animCurveTA -n "pCylinder1_rotateZ";
	rename -uid "DB6FCCC5-4D01-074E-D334-6B9ABE4A4E6D";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 17 0 21 0 22 -13.75974291671962 23 -13.75974291671962
		 33 -151.597874619377 38 -151.59787461937697 39 -3.416 47 12.85976280865937 51 333.06565315217898;
	setAttr -s 10 ".kit[0:9]"  9 9 10 10 10 10 10 10 
		10 10;
	setAttr -s 10 ".kot[0:9]"  9 9 5 5 5 5 5 5 
		5 5;
createNode animCurveTU -n "pCylinder1_scaleX";
	rename -uid "28F5061A-4F70-33FE-EA58-8E9E7FA5972A";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0.75188442965285762 17 0.75188442965285762
		 21 0.75188442965285762 22 0.75188442965285762 23 0.75188442965285762 33 0.75188442965285762
		 38 0.75188442965285762 39 0.75188442965285762 47 0.75188442965285762 51 0.75188442965285762;
	setAttr -s 10 ".kit[0:9]"  9 9 10 10 10 10 10 10 
		10 10;
	setAttr -s 10 ".kot[0:9]"  9 9 5 5 5 5 5 5 
		5 5;
createNode animCurveTL -n "pCylinder1_translateZ";
	rename -uid "56A7EB3A-4D7E-C7DC-817E-57AD57870680";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -4.6892508599335834 17 -15.139023144344499
		 21 7.8487510845402211 22 5.897287221737975 23 -19.96698954244328 33 -2.5159303382075926
		 38 -2.6245563547817934 39 11.395 47 11.470317594211702 51 -9.5048578996920803;
	setAttr -s 10 ".kit[0:9]"  9 9 10 10 10 10 10 10 
		10 10;
	setAttr -s 10 ".kot[0:9]"  9 9 5 5 5 5 5 5 
		5 5;
createNode animCurveTU -n "pCylinder1_scaleY";
	rename -uid "54D08C99-4C41-D8BE-AD46-BF82DA2D5356";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  21 6.0584759081970727 22 6.0584759081970727
		 23 6.0584759081970727 33 6.0584759081970727 38 6.0584759081970727 39 6.0584759081970727
		 47 6.0584759081970727 51 6.0584759081970727;
	setAttr -s 8 ".kot[0:7]"  5 5 5 5 5 5 5 5;
createNode animCurveTU -n "pCylinder1_scaleZ";
	rename -uid "02967E48-4B26-3A83-9BBE-13BB81639DAB";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  21 0.75188442965285762 22 0.75188442965285762
		 23 0.75188442965285762 33 0.75188442965285762 38 0.75188442965285762 39 0.75188442965285762
		 47 0.75188442965285762 51 0.75188442965285762;
	setAttr -s 8 ".kot[0:7]"  5 5 5 5 5 5 5 5;
createNode polyCylinder -n "polyCylinder2";
	rename -uid "037995CA-4FEC-825F-A6AE-00AD7370DB59";
	setAttr ".sa" 16;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode animCurveTL -n "pCylinder2_translateX";
	rename -uid "FFCE3094-4D31-C766-B006-E2876CBAE328";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  26 3.9768153318401422 29 3.9768153318401422;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "pCylinder2_translateY";
	rename -uid "00BC1B97-48D1-ECA5-9C5D-D3927B191E23";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  26 -10.068365112459505 29 -10.068365112459505;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "pCylinder2_translateZ";
	rename -uid "9F5AA2B8-496D-2B9B-ADF1-73A52EF8DDBD";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  26 5.1919593505196691 29 5.1919593505196691;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode phong -n "v_layered2";
	rename -uid "252E97B9-46C9-A286-4213-1B8CE9428223";
createNode shadingEngine -n "v_layered2SG";
	rename -uid "FCF52E76-44D4-641B-0C5B-138B6960DCBA";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
	rename -uid "33E8BDF2-4548-21B0-3B40-0189443D8931";
createNode file -n "file11";
	rename -uid "978F1678-4776-5648-22D8-B790672F195D";
	setAttr ".cs" -type "string" "sRGB";
createNode groupId -n "groupId4";
	rename -uid "C97CBC54-4354-80E8-67AA-ACA752B0B99F";
	setAttr ".ihi" 0;
createNode substanceNode -n "substanceNode2";
	rename -uid "BE7036E2-446C-AFC2-3345-59B872F29FE7";
	addAttr -r false -ci true -h true -k true -sn "input_randomseed" -ln "input_randomseed" 
		-nn "$randomseed" -ct "substance_input" -smn 0 -smx 2147483647 -at "long";
	addAttr -r false -ci true -uac -h true -k true -sn "input_cotton_color" -ln "input_cotton_color" 
		-nn "Cotton Color" -ct "substance_input" -at "float3" -nc 3;
	addAttr -r false -ci true -h true -k true -sn "input_cotton_colorr" -ln "input_cotton_colorR" 
		-nn "Cotton Color" -dv 0.75686299800872803 -smn 0 -smx 0 -at "float" -p "input_cotton_color";
	addAttr -r false -ci true -h true -k true -sn "input_cotton_colorg" -ln "input_cotton_colorG" 
		-nn "Cotton Color" -dv 0.54509800672531128 -smn 0 -smx 0 -at "float" -p "input_cotton_color";
	addAttr -r false -ci true -h true -k true -sn "input_cotton_colorb" -ln "input_cotton_colorB" 
		-nn "Cotton Color" -dv 0.50588202476501465 -smn 0 -smx 0 -at "float" -p "input_cotton_color";
	addAttr -r false -ci true -uac -h true -k true -sn "input_polyester_color" -ln "input_polyester_color" 
		-nn "Polyester Color" -ct "substance_input" -at "float3" -nc 3;
	addAttr -r false -ci true -h true -k true -sn "input_polyester_colorr" -ln "input_polyester_colorR" 
		-nn "Polyester Color" -dv 0.29411798715591431 -smn 0 -smx 0 -at "float" -p "input_polyester_color";
	addAttr -r false -ci true -h true -k true -sn "input_polyester_colorg" -ln "input_polyester_colorG" 
		-nn "Polyester Color" -dv 0.36078399419784546 -smn 0 -smx 0 -at "float" -p "input_polyester_color";
	addAttr -r false -ci true -h true -k true -sn "input_polyester_colorb" -ln "input_polyester_colorB" 
		-nn "Polyester Color" -dv 0.4313730001449585 -smn 0 -smx 0 -at "float" -p "input_polyester_color";
	addAttr -r false -ci true -h true -k true -sn "input_cotton_roughness" -ln "input_cotton_roughness" 
		-nn "Cotton Roughness" -ct "substance_input" -dv 0.79607897996902466 -smn 0 -smx 
		1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_cotton_metallic" -ln "input_cotton_metallic" 
		-nn "Cotton Metallic" -ct "substance_input" -smn 0 -smx 1 -at "float";
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
	addAttr -ci true -h true -sn "output_specular" -ln "output_specular" -ct "substance_output" 
		-dt "string";
	addAttr -ci true -h true -sn "output_glossiness" -ln "output_glossiness" -ct "substance_output" 
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
	setAttr ".sbs" -type "string" "C:/Users/hunte/Documents/Education/Fall 2023/Substance surfaces/cotton_rich_tricotine_weave_front_side_scan.sbsar";
	setAttr ".ctd" yes;
	setAttr ".wkfl" -type "string" "Arnold";
	setAttr ".storedHeight" 9;
	setAttr ".pst" -type "stringArray" 1 "<sbspresets formatversion=\"1.1\" count=\"3\" >\n <sbspreset pkgurl=\"pkg://cotton_rich_tricotine_weave_front_side_scan\" label=\"Blue And Red Cotton\" >\n  <presetinput identifier=\"cotton_color\" uid=\"1837775433\" type=\"2\" value=\"0.74902,0.788235,0.827451\" />\n  <presetinput identifier=\"polyester_color\" uid=\"1837775577\" type=\"2\" value=\"0.509804,0.192157,0.188235\" />\n  <presetinput identifier=\"cotton_roughness\" uid=\"1870593999\" type=\"0\" value=\"0.51\" />\n  <presetinput identifier=\"cotton_metallic\" uid=\"1870588233\" type=\"0\" value=\"0.49\" />\n  <presetinput identifier=\"channel_diffuse\" uid=\"1899311373\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_basecolor\" uid=\"2140670247\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_normal\" uid=\"2140670244\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_specular\" uid=\"1899311410\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_glossiness\" uid=\"1899311411\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_roughness\" uid=\"2140670248\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_metallic\" uid=\"2140670249\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_height\" uid=\"2140670255\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_ambientocclusion\" uid=\"1954235978\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"luminosity\" uid=\"111317032\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"contrast\" uid=\"2032621834\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"hue_shift\" uid=\"111317082\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"saturation\" uid=\"111317053\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_intensity\" uid=\"111374153\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_format\" uid=\"2140674564\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"height_range\" uid=\"2122539880\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"height_position\" uid=\"2122539801\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"ambientocclusion_intensity\" uid=\"1959821283\" type=\"0\" value=\"0.5\" />\n </sbspreset>\n <sbspreset pkgurl=\"pkg://cotton_rich_tricotine_weave_front_side_scan\" label=\"Light Blue And Beige Cotton\" >\n  <presetinput identifier=\"cotton_color\" uid=\"1837775433\" type=\"2\" value=\"0.341176,0.478431,0.603922\" />\n  <presetinput identifier=\"polyester_color\" uid=\"1837775577\" type=\"2\" value=\"0.988235,0.87451,0.803922\" />\n  <presetinput identifier=\"cotton_roughness\" uid=\"1870593999\" type=\"0\" value=\"0.44\" />\n  <presetinput identifier=\"cotton_metallic\" uid=\"1870588233\" type=\"0\" value=\"0.4\" />\n  <presetinput identifier=\"channel_diffuse\" uid=\"1899311373\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_basecolor\" uid=\"2140670247\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_normal\" uid=\"2140670244\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_specular\" uid=\"1899311410\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_glossiness\" uid=\"1899311411\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_roughness\" uid=\"2140670248\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_metallic\" uid=\"2140670249\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_height\" uid=\"2140670255\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_ambientocclusion\" uid=\"1954235978\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"luminosity\" uid=\"111317032\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"contrast\" uid=\"2032621834\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"hue_shift\" uid=\"111317082\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"saturation\" uid=\"111317053\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_intensity\" uid=\"111374153\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_format\" uid=\"2140674564\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"height_range\" uid=\"2122539880\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"height_position\" uid=\"2122539801\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"ambientocclusion_intensity\" uid=\"1959821283\" type=\"0\" value=\"0.5\" />\n </sbspreset>\n <sbspreset pkgurl=\"pkg://cotton_rich_tricotine_weave_front_side_scan\" label=\"Red Cotton\" >\n  <presetinput identifier=\"cotton_color\" uid=\"1837775433\" type=\"2\" value=\"0.509804,0.192157,0.188235\" />\n  <presetinput identifier=\"polyester_color\" uid=\"1837775577\" type=\"2\" value=\"0.856354,0.713369,0.625989\" />\n  <presetinput identifier=\"cotton_roughness\" uid=\"1870593999\" type=\"0\" value=\"0.53\" />\n  <presetinput identifier=\"cotton_metallic\" uid=\"1870588233\" type=\"0\" value=\"0.32\" />\n  <presetinput identifier=\"channel_diffuse\" uid=\"1899311373\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_basecolor\" uid=\"2140670247\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_normal\" uid=\"2140670244\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_specular\" uid=\"1899311410\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_glossiness\" uid=\"1899311411\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_roughness\" uid=\"2140670248\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_metallic\" uid=\"2140670249\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_height\" uid=\"2140670255\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_ambientocclusion\" uid=\"1954235978\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"luminosity\" uid=\"111317032\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"contrast\" uid=\"2032621834\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"hue_shift\" uid=\"111317082\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"saturation\" uid=\"111317053\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_intensity\" uid=\"111374153\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_format\" uid=\"2140674564\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"height_range\" uid=\"2122539880\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"height_position\" uid=\"2122539801\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"ambientocclusion_intensity\" uid=\"1959821283\" type=\"0\" value=\"0.5\" />\n </sbspreset>\n</sbspresets>\n"  ;
createNode place2dTexture -n "place2dTexture2";
	rename -uid "66C2C42C-426F-EBB8-28F7-809E999007E7";
createNode substanceOutputNode -n "Cotton_Rich_Tricotine_Weave_Front_Side_Scan_diffuse";
	rename -uid "FD2FEA74-4778-AC5B-6D97-6D85FB97E3FD";
	setAttr ".cpth" -type "string" "C:/Users/hunte/Documents/maya\\2024\\substance/baked_images/Cotton_Rich_Tricotine_Weave_Front_Side_Scan_diffuse.exr";
createNode file -n "file12";
	rename -uid "43C0DB1B-485D-1207-98A3-3EA25CDD9C36";
	setAttr ".cs" -type "string" "sRGB";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Cotton_Rich_Tricotine_Weave_Front_Side_Scan_basecolor";
	rename -uid "4062756E-4403-2D0D-BC72-7197A70EEFDC";
	setAttr ".cpth" -type "string" "C:/Users/hunte/Documents/maya\\2024\\substance/baked_images/Cotton_Rich_Tricotine_Weave_Front_Side_Scan_basecolor.png";
createNode file -n "file13";
	rename -uid "57142FC2-4931-52DF-1113-1D87D8341793";
	setAttr ".cs" -type "string" "sRGB";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Cotton_Rich_Tricotine_Weave_Front_Side_Scan_normal";
	rename -uid "B57D862C-4F35-F991-DFF1-8AA21BFC58FC";
	setAttr ".cpth" -type "string" "C:/Users/hunte/Documents/maya\\2024\\substance/baked_images/Cotton_Rich_Tricotine_Weave_Front_Side_Scan_normal.png";
createNode file -n "file14";
	rename -uid "F3828F50-4EF7-53A9-CB20-86AA83C67AF2";
	setAttr ".ail" yes;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Cotton_Rich_Tricotine_Weave_Front_Side_Scan_specular";
	rename -uid "BF682BFC-4A5E-35AC-B21A-6580E4C15AF1";
	setAttr ".cpth" -type "string" "C:/Users/hunte/Documents/maya\\2024\\substance/baked_images/Cotton_Rich_Tricotine_Weave_Front_Side_Scan_specular.exr";
createNode file -n "file15";
	rename -uid "50F12701-4386-1A96-7645-52B862FC83FC";
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Cotton_Rich_Tricotine_Weave_Front_Side_Scan_glossiness";
	rename -uid "EBB69C07-4D75-4B0C-BF53-D397E8968ECF";
	setAttr ".cpth" -type "string" "C:/Users/hunte/Documents/maya\\2024\\substance/baked_images/Cotton_Rich_Tricotine_Weave_Front_Side_Scan_glossiness.exr";
createNode file -n "file16";
	rename -uid "B8AEFE2F-4834-A079-ED3A-DF9BB3035823";
	setAttr ".ail" yes;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Cotton_Rich_Tricotine_Weave_Front_Side_Scan_roughness";
	rename -uid "AF7D6DF1-436F-CDF6-021D-4286CA882046";
	setAttr ".cpth" -type "string" "C:/Users/hunte/Documents/maya\\2024\\substance/baked_images/Cotton_Rich_Tricotine_Weave_Front_Side_Scan_roughness.png";
createNode file -n "file17";
	rename -uid "0174015B-4380-80AE-EC2B-D686A74AC193";
	setAttr ".ail" yes;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Cotton_Rich_Tricotine_Weave_Front_Side_Scan_metallic";
	rename -uid "8E79740B-4583-5447-714B-8AA893AFAA5B";
	setAttr ".cpth" -type "string" "C:/Users/hunte/Documents/maya\\2024\\substance/baked_images/Cotton_Rich_Tricotine_Weave_Front_Side_Scan_metallic.png";
createNode file -n "file18";
	rename -uid "3E3CF2F4-43EB-B7C1-F740-7883D0598E52";
	setAttr ".ail" yes;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Cotton_Rich_Tricotine_Weave_Front_Side_Scan_height";
	rename -uid "B183B229-4DDA-C6BC-47E2-C690D1BDA002";
	setAttr ".cpth" -type "string" "C:/Users/hunte/Documents/maya\\2024\\substance/baked_images/Cotton_Rich_Tricotine_Weave_Front_Side_Scan_height.png";
createNode file -n "file19";
	rename -uid "8C3D3B97-4A99-7C89-E0A3-AAAA440E46A7";
	setAttr ".ail" yes;
	setAttr ".ao" -0.5;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Cotton_Rich_Tricotine_Weave_Front_Side_Scan_ambientocclusion";
	rename -uid "4248FD60-4A72-2BA5-5E4A-139B2258A93F";
	setAttr ".cpth" -type "string" "C:/Users/hunte/Documents/maya\\2024\\substance/baked_images/Cotton_Rich_Tricotine_Weave_Front_Side_Scan_ambientocclusion.exr";
createNode file -n "file20";
	rename -uid "957AF29A-4448-1C2C-F4AF-719FBD7211A4";
	setAttr ".ail" yes;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode multiplyDivide -n "multiplyDivide2";
	rename -uid "7EE21AAA-4D23-673B-9F72-0CB63E55B3C6";
createNode aiStandardSurface -n "RibbonFull";
	rename -uid "3D1E5DB4-4047-F81D-DA1A-2C92A3F58224";
	setAttr ".ai_matte_color" -type "float3" 1 1 1 ;
	setAttr ".sheen" 0.45757576823234558;
	setAttr ".sheen_color" -type "float3" 1 0 0.82330036 ;
	setAttr ".coat" 1;
	setAttr ".coat_color" -type "float3" 1 0 0.82330036 ;
	setAttr ".coat_roughness" 0.75757575035095215;
	setAttr ".emission" 1;
	setAttr ".emission_color" -type "float3" 0 0 0 ;
createNode shadingEngine -n "set2";
	rename -uid "9A9956D1-4B5B-B2C9-DE6F-6D846A8FC80E";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo4";
	rename -uid "88976335-4E1B-7321-1CB0-74ADB9CEF11B";
createNode bump2d -n "bump2d2";
	rename -uid "4B061EB0-4A5A-60F1-0CB5-5B9B7D4100A8";
	setAttr ".bi" 1;
	setAttr ".vc1" -type "float3" 0 9.9999997e-06 0 ;
	setAttr ".vc2" -type "float3" 9.9999997e-06 9.9999997e-06 0 ;
createNode displacementShader -n "displacementShader2";
	rename -uid "0A7A072D-406D-A325-1EC0-C0A0FAA104B3";
createNode objectSet -n "group1";
	rename -uid "5796A07B-4569-7E2E-A838-67BF9DD2CC18";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5";
	rename -uid "5EBB5A18-489B-7449-CB07-05919836EE5E";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	rename -uid "39A63019-4037-F2A9-642F-238E32F3516F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[88:135]";
createNode phong -n "v_layered3";
	rename -uid "F13C59DA-436E-8F83-44A2-A5BC269E6106";
createNode shadingEngine -n "v_layered3SG";
	rename -uid "A3ED6185-4385-A640-FC91-5C97CBA1CB96";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo5";
	rename -uid "FFC4DD51-4901-DDE8-7CFF-2A805427E2EC";
createNode file -n "file21";
	rename -uid "10C8300D-4271-D605-AA6E-E8AF099137DF";
	setAttr ".cs" -type "string" "sRGB";
createNode groupId -n "groupId7";
	rename -uid "22306185-4643-EED1-2DE5-ECA61F9DE6D3";
	setAttr ".ihi" 0;
createNode animCurveTU -n "uvunwrap1_0_scaleX";
	rename -uid "C4E83B77-4F64-26CD-AE21-E798E0287912";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 3.9482620987790833;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "uvunwrap1_0_scaleY";
	rename -uid "28E69B3B-4B7D-7D97-CFD6-ADA19306572E";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 3.9482620987790833;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "uvunwrap1_0_scaleZ";
	rename -uid "1C427C56-4A9B-2CB8-9AE6-09A6C5E5B456";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 3.333179201377519;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "uvunwrap1_0_visibility";
	rename -uid "647A5482-4A62-F4DD-ACB6-F8AAA5DEE4BA";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "uvunwrap1_0_translateX";
	rename -uid "43471F23-4D0A-504B-FEEA-54868B46CF23";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "uvunwrap1_0_translateY";
	rename -uid "C4E63629-45AC-AD0C-3DEE-62B14C4FB6BF";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "uvunwrap1_0_translateZ";
	rename -uid "8FB8ED09-46F9-A17F-D7DE-A8A48B8E8CA8";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 14.762705473536776;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "uvunwrap1_0_rotateX";
	rename -uid "F3B6B700-4CC5-C669-1291-7EA8EE264940";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "uvunwrap1_0_rotateY";
	rename -uid "A69A065A-4083-B5C4-ADBC-E6899530FE87";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -185.24091744731777;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "uvunwrap1_0_rotateZ";
	rename -uid "CA06B1D3-458E-F527-9716-A3AB2C26D69B";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode substanceNode -n "substanceNode3";
	rename -uid "3FE9063B-4BE3-AAFF-0550-38BD3D6A4639";
	addAttr -r false -ci true -h true -k true -sn "input_randomseed" -ln "input_randomseed" 
		-nn "$randomseed" -ct "substance_input" -smn 0 -smx 2147483647 -at "long";
	addAttr -r false -ci true -uac -h true -k true -sn "input_color_1" -ln "input_color_1" 
		-nn "Color 1" -ct "substance_input" -at "float3" -nc 3;
	addAttr -r false -ci true -h true -k true -sn "input_color_1r" -ln "input_color_1R" 
		-dv 0.42774298787117004 -smn 0 -smx 0 -at "float" -p "input_color_1";
	addAttr -r false -ci true -h true -k true -sn "input_color_1g" -ln "input_color_1G" 
		-dv 0.3967440128326416 -smn 0 -smx 0 -at "float" -p "input_color_1";
	addAttr -r false -ci true -h true -k true -sn "input_color_1b" -ln "input_color_1B" 
		-dv 0.36749199032783508 -smn 0 -smx 0 -at "float" -p "input_color_1";
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
		-dv 0.49890100955963135 -smn 0 -smx 0 -at "float" -p "input_color_2";
	addAttr -r false -ci true -h true -k true -sn "input_color_2g" -ln "input_color_2G" 
		-dv 0.47504499554634094 -smn 0 -smx 0 -at "float" -p "input_color_2";
	addAttr -r false -ci true -h true -k true -sn "input_color_2b" -ln "input_color_2B" 
		-dv 0.45185300707817078 -smn 0 -smx 0 -at "float" -p "input_color_2";
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
	addAttr -r false -ci true -uac -h true -k true -sn "input_color_3" -ln "input_color_3" 
		-nn "Color 3" -ct "substance_input" -at "float3" -nc 3;
	addAttr -r false -ci true -h true -k true -sn "input_color_3r" -ln "input_color_3R" 
		-dv 0.3307969868183136 -smn 0 -smx 0 -at "float" -p "input_color_3";
	addAttr -r false -ci true -h true -k true -sn "input_color_3g" -ln "input_color_3G" 
		-dv 0.2898159921169281 -smn 0 -smx 0 -at "float" -p "input_color_3";
	addAttr -r false -ci true -h true -k true -sn "input_color_3b" -ln "input_color_3B" 
		-dv 0.23065200448036194 -smn 0 -smx 0 -at "float" -p "input_color_3";
	addAttr -r false -ci true -h true -k true -sn "input_color_3_weight" -ln "input_color_3_weight" 
		-nn "Color 3 Weight" -ct "substance_input" -dv 1 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_roughness_3" -ln "input_roughness_3" 
		-nn "Roughness 3" -ct "substance_input" -dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_metallic_3" -ln "input_metallic_3" 
		-nn "Metallic 3" -ct "substance_input" -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_height_range_3" -ln "input_height_range_3" 
		-nn "Height Range 3" -ct "substance_input" -dv 1 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_height_position_3" -ln "input_height_position_3" 
		-nn "Height Position 3" -ct "substance_input" -dv 0.5 -smn 0 -smx 1 -at "float";
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
	setAttr ".sbs" -type "string" "C:/Users/hunte/Documents/Education/Fall 2023/Substance surfaces/walnut_bark.sbsar";
	setAttr ".ctd" yes;
	setAttr ".wkfl" -type "string" "Arnold";
	setAttr ".storedHeight" 9;
	setAttr ".pst" -type "stringArray" 1 "<sbspresets formatversion=\"1.1\" count=\"3\" >\n <sbspreset pkgurl=\"pkg://walnut_bark\" label=\"Young Walnut\" >\n  <presetinput identifier=\"color_1\" uid=\"3245508125\" type=\"2\" value=\"0.443137,0.371799,0.311065\" />\n  <presetinput identifier=\"color_1_weight\" uid=\"3757590326\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"roughness_1\" uid=\"3245508129\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"metallic_1\" uid=\"3245508142\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"height_range_1\" uid=\"3698820176\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"height_position_1\" uid=\"3698826193\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"color_2\" uid=\"3239018744\" type=\"2\" value=\"0.294118,0.223896,0.161476\" />\n  <presetinput identifier=\"color_2_weight\" uid=\"3757590327\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"roughness_2\" uid=\"3239025727\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"metallic_2\" uid=\"3239025750\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"height_range_2\" uid=\"3698827102\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"height_position_2\" uid=\"3698823902\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"color_3\" uid=\"3693542611\" type=\"2\" value=\"0.345098,0.262275,0.188654\" />\n  <presetinput identifier=\"color_3_weight\" uid=\"3757590325\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"roughness_3\" uid=\"3693542609\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"metallic_3\" uid=\"3693542622\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"height_range_3\" uid=\"3693542620\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"height_position_3\" uid=\"3693542621\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"channel_diffuse\" uid=\"3310422857\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_basecolor\" uid=\"3422303075\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_normal\" uid=\"3422303072\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_specular\" uid=\"3310422902\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_glossiness\" uid=\"3310422903\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_roughness\" uid=\"3422303084\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_metallic\" uid=\"3422303085\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_specularlevel\" uid=\"3238985060\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_height\" uid=\"3422303083\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_ambientocclusion\" uid=\"3238872975\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"luminosity\" uid=\"2999364204\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"contrast\" uid=\"3443745614\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"hue_shift\" uid=\"2999364126\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"saturation\" uid=\"2999364217\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_intensity\" uid=\"2999407885\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_format\" uid=\"3422298176\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"height_range\" uid=\"3404159276\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"height_position\" uid=\"3404159325\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"ambientocclusion_intensity\" uid=\"3238881630\" type=\"0\" value=\"0.5\" />\n </sbspreset>\n <sbspreset pkgurl=\"pkg://walnut_bark\" label=\"Old Walnut\" >\n  <presetinput identifier=\"color_1\" uid=\"3245508125\" type=\"2\" value=\"0.360784,0.346719,0.299946\" />\n  <presetinput identifier=\"color_1_weight\" uid=\"3757590326\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"roughness_1\" uid=\"3245508129\" type=\"0\" value=\"0.59\" />\n  <presetinput identifier=\"metallic_1\" uid=\"3245508142\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"height_range_1\" uid=\"3698820176\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"height_position_1\" uid=\"3698826193\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"color_2\" uid=\"3239018744\" type=\"2\" value=\"0.258824,0.232941,0.155294\" />\n  <presetinput identifier=\"color_2_weight\" uid=\"3757590327\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"roughness_2\" uid=\"3239025727\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"metallic_2\" uid=\"3239025750\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"height_range_2\" uid=\"3698827102\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"height_position_2\" uid=\"3698823902\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"color_3\" uid=\"3693542611\" type=\"2\" value=\"0.309804,0.29335,0.268497\" />\n  <presetinput identifier=\"color_3_weight\" uid=\"3757590325\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"roughness_3\" uid=\"3693542609\" type=\"0\" value=\"0.57\" />\n  <presetinput identifier=\"metallic_3\" uid=\"3693542622\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"height_range_3\" uid=\"3693542620\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"height_position_3\" uid=\"3693542621\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"channel_diffuse\" uid=\"3310422857\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_basecolor\" uid=\"3422303075\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_normal\" uid=\"3422303072\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_specular\" uid=\"3310422902\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_glossiness\" uid=\"3310422903\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_roughness\" uid=\"3422303084\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_metallic\" uid=\"3422303085\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_specularlevel\" uid=\"3238985060\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_height\" uid=\"3422303083\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_ambientocclusion\" uid=\"3238872975\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"luminosity\" uid=\"2999364204\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"contrast\" uid=\"3443745614\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"hue_shift\" uid=\"2999364126\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"saturation\" uid=\"2999364217\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_intensity\" uid=\"2999407885\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_format\" uid=\"3422298176\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"height_range\" uid=\"3404159276\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"height_position\" uid=\"3404159325\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"ambientocclusion_intensity\" uid=\"3238881630\" type=\"0\" value=\"0.5\" />\n </sbspreset>\n <sbspreset pkgurl=\"pkg://walnut_bark\" label=\"Wet Walnut\" >\n  <presetinput identifier=\"color_1\" uid=\"3245508125\" type=\"2\" value=\"0.227451,0.198568,0.160554\" />\n  <presetinput identifier=\"color_1_weight\" uid=\"3757590326\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"roughness_1\" uid=\"3245508129\" type=\"0\" value=\"0.31\" />\n  <presetinput identifier=\"metallic_1\" uid=\"3245508142\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"height_range_1\" uid=\"3698820176\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"height_position_1\" uid=\"3698826193\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"color_2\" uid=\"3239018744\" type=\"2\" value=\"0.317647,0.279822,0.252872\" />\n  <presetinput identifier=\"color_2_weight\" uid=\"3757590327\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"roughness_2\" uid=\"3239025727\" type=\"0\" value=\"0.36\" />\n  <presetinput identifier=\"metallic_2\" uid=\"3239025750\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"height_range_2\" uid=\"3698827102\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"height_position_2\" uid=\"3698823902\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"color_3\" uid=\"3693542611\" type=\"2\" value=\"0.219608,0.201221,0.180854\" />\n  <presetinput identifier=\"color_3_weight\" uid=\"3757590325\" type=\"0\" value=\"0.81\" />\n  <presetinput identifier=\"roughness_3\" uid=\"3693542609\" type=\"0\" value=\"0.33\" />\n  <presetinput identifier=\"metallic_3\" uid=\"3693542622\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"height_range_3\" uid=\"3693542620\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"height_position_3\" uid=\"3693542621\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"channel_diffuse\" uid=\"3310422857\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_basecolor\" uid=\"3422303075\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_normal\" uid=\"3422303072\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_specular\" uid=\"3310422902\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_glossiness\" uid=\"3310422903\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_roughness\" uid=\"3422303084\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_metallic\" uid=\"3422303085\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_specularlevel\" uid=\"3238985060\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_height\" uid=\"3422303083\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_ambientocclusion\" uid=\"3238872975\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"luminosity\" uid=\"2999364204\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"contrast\" uid=\"3443745614\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"hue_shift\" uid=\"2999364126\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"saturation\" uid=\"2999364217\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_intensity\" uid=\"2999407885\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_format\" uid=\"3422298176\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"height_range\" uid=\"3404159276\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"height_position\" uid=\"3404159325\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"ambientocclusion_intensity\" uid=\"3238881630\" type=\"0\" value=\"0.5\" />\n </sbspreset>\n</sbspresets>\n"  ;
createNode place2dTexture -n "place2dTexture3";
	rename -uid "04E675C0-41E4-1C9B-9264-66884E44D78D";
createNode substanceOutputNode -n "Walnut_Bark_diffuse";
	rename -uid "834F9240-480A-DC0B-4DC2-648D18DBEA32";
	setAttr ".cpth" -type "string" "C:/Users/hunte/Documents/maya\\2024\\substance/baked_images/Walnut_Bark_diffuse.exr";
createNode file -n "file22";
	rename -uid "A0A487C5-4ACB-4A60-29D7-2AAAB75332F0";
	setAttr ".cs" -type "string" "sRGB";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Walnut_Bark_basecolor";
	rename -uid "82514DCA-4D7A-3636-05F8-3C971F8D7196";
	setAttr ".cpth" -type "string" "C:/Users/hunte/Documents/maya\\2024\\substance/baked_images/Walnut_Bark_basecolor.png";
createNode file -n "file23";
	rename -uid "5AC1EEED-44A6-67A6-46E5-80932C237A7C";
	setAttr ".cs" -type "string" "sRGB";
	setAttr ".ifr" yes;
createNode substanceNode -n "substanceNode4";
	rename -uid "3F8FDC75-4773-2713-4FE2-59915F8621DB";
	addAttr -r false -ci true -h true -k true -sn "input_randomseed" -ln "input_randomseed" 
		-nn "$randomseed" -ct "substance_input" -smn 0 -smx 2147483647 -at "long";
	addAttr -r false -ci true -uac -h true -k true -sn "input_color" -ln "input_color" 
		-nn "Color" -ct "substance_input" -at "float3" -nc 3;
	addAttr -r false -ci true -h true -k true -sn "input_colorr" -ln "input_colorR" 
		-dv 0.53096401691436768 -smn 0 -smx 0 -at "float" -p "input_color";
	addAttr -r false -ci true -h true -k true -sn "input_colorg" -ln "input_colorG" 
		-dv 0.52770501375198364 -smn 0 -smx 0 -at "float" -p "input_color";
	addAttr -r false -ci true -h true -k true -sn "input_colorb" -ln "input_colorB" 
		-dv 0.52071499824523926 -smn 0 -smx 0 -at "float" -p "input_color";
	addAttr -r false -ci true -h true -k true -sn "input_color_weight" -ln "input_color_weight" 
		-nn "Color Weight" -ct "substance_input" -dv 1 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_roughness" -ln "input_roughness" 
		-nn "Roughness" -ct "substance_input" -dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_metallic" -ln "input_metallic" 
		-nn "Metallic" -ct "substance_input" -smn 0 -smx 1 -at "float";
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
	addAttr -ci true -h true -sn "output_basecolor" -ln "output_basecolor" -ct "substance_output" 
		-dt "string";
	setAttr ".sbs" -type "string" "C:/Users/hunte/Documents/Education/Fall 2023/Substance surfaces/pine_wood_outdoor_panelling_01.sbsar";
	setAttr ".ctd" yes;
	setAttr ".wkfl" -type "string" "Arnold";
	setAttr ".storedHeight" 9;
	setAttr ".pst" -type "stringArray" 1 "<sbspresets formatversion=\"1.1\" count=\"3\" >\n <sbspreset pkgurl=\"pkg://pine_wood_outdoor_panelling_01\" label=\"Wet Wood Paneling\" >\n  <presetinput identifier=\"color\" uid=\"2980535945\" type=\"2\" value=\"0.235632,0.216792,0.17638\" />\n  <presetinput identifier=\"color_weight\" uid=\"2939005097\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"roughness\" uid=\"2980535989\" type=\"0\" value=\"0.3\" />\n  <presetinput identifier=\"metallic\" uid=\"2980535994\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"channel_diffuse\" uid=\"3045381085\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_basecolor\" uid=\"3140086775\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_normal\" uid=\"3140086772\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_specular\" uid=\"3045381090\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_glossiness\" uid=\"3045381091\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_roughness\" uid=\"3140086776\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_metallic\" uid=\"3140086777\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_specularlevel\" uid=\"2983929328\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_height\" uid=\"3140086783\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_ambientocclusion\" uid=\"2983763739\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"luminosity\" uid=\"3256054520\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"contrast\" uid=\"3180772314\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"hue_shift\" uid=\"3256054410\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"saturation\" uid=\"3256054509\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_intensity\" uid=\"3255995801\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_format\" uid=\"3140090068\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"height_range\" uid=\"3123872184\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"height_position\" uid=\"3123872201\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"ambientocclusion_intensity\" uid=\"2983768522\" type=\"0\" value=\"0.5\" />\n </sbspreset>\n <sbspreset pkgurl=\"pkg://pine_wood_outdoor_panelling_01\" label=\"Dark Wood Paneling\" >\n  <presetinput identifier=\"color\" uid=\"2980535945\" type=\"2\" value=\"0.304598,0.247106,0.176346\" />\n  <presetinput identifier=\"color_weight\" uid=\"2939005097\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"roughness\" uid=\"2980535989\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"metallic\" uid=\"2980535994\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"channel_diffuse\" uid=\"3045381085\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_basecolor\" uid=\"3140086775\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_normal\" uid=\"3140086772\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_specular\" uid=\"3045381090\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_glossiness\" uid=\"3045381091\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_roughness\" uid=\"3140086776\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_metallic\" uid=\"3140086777\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_specularlevel\" uid=\"2983929328\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_height\" uid=\"3140086783\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_ambientocclusion\" uid=\"2983763739\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"luminosity\" uid=\"3256054520\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"contrast\" uid=\"3180772314\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"hue_shift\" uid=\"3256054410\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"saturation\" uid=\"3256054509\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_intensity\" uid=\"3255995801\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_format\" uid=\"3140090068\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"height_range\" uid=\"3123872184\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"height_position\" uid=\"3123872201\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"ambientocclusion_intensity\" uid=\"2983768522\" type=\"0\" value=\"0.5\" />\n </sbspreset>\n <sbspreset pkgurl=\"pkg://pine_wood_outdoor_panelling_01\" label=\"Worn Wood Paneling\" >\n  <presetinput identifier=\"color\" uid=\"2980535945\" type=\"2\" value=\"0.603448,0.546499,0.476407\" />\n  <presetinput identifier=\"color_weight\" uid=\"2939005097\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"roughness\" uid=\"2980535989\" type=\"0\" value=\"0.6\" />\n  <presetinput identifier=\"metallic\" uid=\"2980535994\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"channel_diffuse\" uid=\"3045381085\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_basecolor\" uid=\"3140086775\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_normal\" uid=\"3140086772\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_specular\" uid=\"3045381090\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_glossiness\" uid=\"3045381091\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_roughness\" uid=\"3140086776\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_metallic\" uid=\"3140086777\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_specularlevel\" uid=\"2983929328\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_height\" uid=\"3140086783\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_ambientocclusion\" uid=\"2983763739\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"luminosity\" uid=\"3256054520\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"contrast\" uid=\"3180772314\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"hue_shift\" uid=\"3256054410\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"saturation\" uid=\"3256054509\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_intensity\" uid=\"3255995801\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_format\" uid=\"3140090068\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"height_range\" uid=\"3123872184\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"height_position\" uid=\"3123872201\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"ambientocclusion_intensity\" uid=\"2983768522\" type=\"0\" value=\"0.5\" />\n </sbspreset>\n</sbspresets>\n"  ;
createNode place2dTexture -n "place2dTexture4";
	rename -uid "35763536-41BA-C766-CE33-F29E0CF1145D";
createNode substanceOutputNode -n "Pine_Wood_Outdoor_Panelling_01_basecolor";
	rename -uid "3ECE47D4-4B9C-5152-92C1-B285E567B11E";
	setAttr ".cpth" -type "string" "C:/Users/hunte/Documents/maya\\2024\\substance/baked_images/Pine_Wood_Outdoor_Panelling_01_basecolor.png";
createNode file -n "file24";
	rename -uid "442D407F-423D-6DA6-3875-CAA519C9D4C7";
	setAttr ".cs" -type "string" "sRGB";
	setAttr ".ifr" yes;
createNode substanceNode -n "substanceNode5";
	rename -uid "3DDFF03A-4EC6-32F1-2762-37A1C7034698";
	addAttr -r false -ci true -h true -k true -sn "input_randomseed" -ln "input_randomseed" 
		-nn "$randomseed" -ct "substance_input" -smn 0 -smx 2147483647 -at "long";
	addAttr -r false -ci true -uac -h true -k true -sn "input_wood_color" -ln "input_wood_color" 
		-nn "Wood Color" -ct "substance_input" -at "float3" -nc 3;
	addAttr -r false -ci true -h true -k true -sn "input_wood_colorr" -ln "input_wood_colorR" 
		-dv 0.97254902124404907 -smn 0 -smx 0 -at "float" -p "input_wood_color";
	addAttr -r false -ci true -h true -k true -sn "input_wood_colorg" -ln "input_wood_colorG" 
		-dv 0.80392199754714966 -smn 0 -smx 0 -at "float" -p "input_wood_color";
	addAttr -r false -ci true -h true -k true -sn "input_wood_colorb" -ln "input_wood_colorB" 
		-dv 0.4235289990901947 -smn 0 -smx 0 -at "float" -p "input_wood_color";
	addAttr -r false -ci true -h true -k true -sn "input_wood_color_variation" -ln "input_wood_color_variation" 
		-nn "Wood Color Variation" -ct "substance_input" -dv 0.37000000476837158 -smn 0 -smx 
		1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_veins_contrast" -ln "input_veins_contrast" 
		-nn "Veins Contrast" -ct "substance_input" -dv 0.77999997138977051 -smn 0 -smx 1 
		-at "float";
	addAttr -r false -ci true -h true -k true -sn "input_cut" -ln "input_cut" -nn "Cut" 
		-ct "substance_input" -dv 3 -smn 0 -smx 0 -at "long";
	addAttr -r false -ci true -h true -k true -sn "input_knots_amount" -ln "input_knots_amount" 
		-nn "Knots Amount" -ct "substance_input" -dv 0.15999999642372131 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_fibers" -ln "input_fibers" 
		-nn "Fibers" -ct "substance_input" -dv 0.68000000715255737 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_rotate_90" -ln "input_rotate_90" 
		-nn "Rotate 90" -ct "substance_input" -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -uac -h true -k true -sn "input_cerused_color_1" -ln "input_cerused_color_1" 
		-nn "Cerused Color 1" -ct "substance_input" -at "float3" -nc 3;
	addAttr -r false -ci true -h true -k true -sn "input_cerused_color_1r" -ln "input_cerused_color_1R" 
		-dv 0.65640997886657715 -smn 1 -smx 0 -at "float" -p "input_cerused_color_1";
	addAttr -r false -ci true -h true -k true -sn "input_cerused_color_1g" -ln "input_cerused_color_1G" 
		-dv 0.65640997886657715 -smn 0 -smx 0 -at "float" -p "input_cerused_color_1";
	addAttr -r false -ci true -h true -k true -sn "input_cerused_color_1b" -ln "input_cerused_color_1B" 
		-dv 0.65640997886657715 -smn 0 -smx 0 -at "float" -p "input_cerused_color_1";
	addAttr -r false -ci true -uac -h true -k true -sn "input_cerused_color_2" -ln "input_cerused_color_2" 
		-nn "Cerused Color 2" -ct "substance_input" -at "float3" -nc 3;
	addAttr -r false -ci true -h true -k true -sn "input_cerused_color_2r" -ln "input_cerused_color_2R" 
		-dv 0.64102602005004883 -smn 1 -smx 0 -at "float" -p "input_cerused_color_2";
	addAttr -r false -ci true -h true -k true -sn "input_cerused_color_2g" -ln "input_cerused_color_2G" 
		-dv 0.59383499622344971 -smn 0 -smx 0 -at "float" -p "input_cerused_color_2";
	addAttr -r false -ci true -h true -k true -sn "input_cerused_color_2b" -ln "input_cerused_color_2B" 
		-dv 0.56809502840042114 -smn 0 -smx 0 -at "float" -p "input_cerused_color_2";
	addAttr -r false -ci true -h true -k true -sn "input_cerused_color_details" -ln "input_cerused_color_details" 
		-nn "Cerused Color Details" -ct "substance_input" -dv 0.34000000357627869 -smn 0 
		-smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_cerused_color_blend_intensity" 
		-ln "input_cerused_color_blend_intensity" -nn "Cerused Color Blend Intensity" -ct "substance_input" 
		-dv 0.9100000262260437 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_cerused_roughness" -ln "input_cerused_roughness" 
		-nn "Cerused Roughness" -ct "substance_input" -dv 0.4699999988079071 -smn 0 -smx 
		1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_fibers_roughness_intensity" 
		-ln "input_fibers_roughness_intensity" -nn "Fibers Roughness Intensity" -ct "substance_input" 
		-dv 0.43000000715255737 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_invert_mask" -ln "input_invert_mask" 
		-nn "Invert Mask" -ct "substance_input" -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_mask_spread" -ln "input_mask_spread" 
		-nn "Mask Spread" -ct "substance_input" -dv 0.56999999284744263 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_mask_variations" -ln "input_mask_variations" 
		-nn "Mask Variations" -ct "substance_input" -dv 0.60000002384185791 -smn 0 -smx 1 
		-at "float";
	addAttr -r false -ci true -h true -k true -sn "input_normal_fibers_intensity" -ln "input_normal_fibers_intensity" 
		-nn "Normal Fibers Intensity" -ct "substance_input" -dv 0.40000000596046448 -smn 
		0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_normal_fibers_orientation_variations" 
		-ln "input_normal_fibers_orientation_variations" -nn "Normal Fibers Orientation Variations" 
		-ct "substance_input" -dv 0.20000000298023224 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_fibers_rotation_varnish" -ln "input_fibers_rotation_varnish" 
		-nn "Fibers Rotation Varnish" -ct "substance_input" -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_scratches_intensity" -ln "input_scratches_intensity" 
		-nn "Scratches Intensity" -ct "substance_input" -dv 0.46000000834465027 -smn 0 -smx 
		1 -at "float";
	addAttr -r false -ci true -uac -h true -k true -sn "input_scratches_color" -ln "input_scratches_color" 
		-nn "Scratches Color" -ct "substance_input" -at "float3" -nc 3;
	addAttr -r false -ci true -h true -k true -sn "input_scratches_colorr" -ln "input_scratches_colorR" 
		-dv 0.58461499214172363 -smn 0 -smx 0 -at "float" -p "input_scratches_color";
	addAttr -r false -ci true -h true -k true -sn "input_scratches_colorg" -ln "input_scratches_colorG" 
		-dv 0.53722798824310303 -smn 0 -smx 0 -at "float" -p "input_scratches_color";
	addAttr -r false -ci true -h true -k true -sn "input_scratches_colorb" -ln "input_scratches_colorB" 
		-dv 0.47959500551223755 -smn 0 -smx 0 -at "float" -p "input_scratches_color";
	addAttr -r false -ci true -h true -k true -sn "input_scratches_color_opacity" -ln "input_scratches_color_opacity" 
		-nn "Scratches Color Opacity" -ct "substance_input" -dv 1 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_scratches_roughness" -ln "input_scratches_roughness" 
		-nn "Scratches Roughness" -ct "substance_input" -dv 0.75 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_scratches_scale" -ln "input_scratches_scale" 
		-nn "Scratches Scale" -ct "substance_input" -dv 0.55000001192092896 -smn 0 -smx 1 
		-at "float";
	addAttr -r false -ci true -h true -k true -sn "input_scratches_density" -ln "input_scratches_density" 
		-nn "Scratches Density" -ct "substance_input" -dv 0.40000000596046448 -smn 0 -smx 
		1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_normal_blend_intensity" -ln "input_normal_blend_intensity" 
		-nn "Normal Blend Intensity" -ct "substance_input" -dv 1 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_normal_blend_format" -ln "input_normal_blend_format" 
		-nn "Normal Blend Format" -ct "substance_input" -smn 0 -smx 0 -at "long";
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
	addAttr -ci true -h true -sn "output_specular" -ln "output_specular" -ct "substance_output" 
		-dt "string";
	addAttr -ci true -h true -sn "output_glossiness" -ln "output_glossiness" -ct "substance_output" 
		-dt "string";
	addAttr -ci true -h true -sn "output_roughness" -ln "output_roughness" -ct "substance_output" 
		-dt "string";
	addAttr -ci true -h true -sn "output_metallic" -ln "output_metallic" -ct "substance_output" 
		-dt "string";
	addAttr -ci true -h true -sn "output_height" -ln "output_height" -ct "substance_output" 
		-dt "string";
	addAttr -ci true -h true -sn "output_ambientocclusion" -ln "output_ambientocclusion" 
		-ct "substance_output" -dt "string";
	addAttr -ci true -h true -sn "output_normal" -ln "output_normal" -ct "substance_output" 
		-dt "string";
	setAttr ".sbs" -type "string" "C:/Users/hunte/Documents/Education/Fall 2023/Substance surfaces/cerused_pine_wood.sbsar";
	setAttr ".ctd" yes;
	setAttr ".wkfl" -type "string" "Arnold";
	setAttr ".storedHeight" 9;
	setAttr ".pst" -type "stringArray" 1 "<sbspresets formatversion=\"1.1\" count=\"3\" >\n <sbspreset pkgurl=\"pkg://cerused_pine_wood\" label=\"Rift Cut Dark Cerused\" >\n  <presetinput identifier=\"wood_color\" uid=\"716267893\" type=\"2\" value=\"0.68718,0.583544,0.349762\" />\n  <presetinput identifier=\"wood_color_variation\" uid=\"716267883\" type=\"0\" value=\"0.68\" />\n  <presetinput identifier=\"veins_contrast\" uid=\"716267881\" type=\"0\" value=\"0.22\" />\n  <presetinput identifier=\"\" uid=\"716267887\" type=\"65535\" value=\"0.33\" />\n  <presetinput identifier=\"cut\" uid=\"716267885\" type=\"4\" value=\"2\" />\n  <presetinput identifier=\"knots_amount\" uid=\"716267875\" type=\"0\" value=\"0.19\" />\n  <presetinput identifier=\"fibers\" uid=\"716267873\" type=\"0\" value=\"0.68\" />\n  <presetinput identifier=\"rotate_90\" uid=\"716267879\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"cerused_color_1\" uid=\"716267869\" type=\"3\" value=\"0.379487,0.379487,0.379487,1\" />\n  <presetinput identifier=\"cerused_color_2\" uid=\"716267859\" type=\"3\" value=\"0.379487,0.379487,0.379487,1\" />\n  <presetinput identifier=\"cerused_color_details\" uid=\"716267857\" type=\"0\" value=\"0.56\" />\n  <presetinput identifier=\"cerused_color_blend_intensity\" uid=\"716267863\" type=\"0\" value=\"0.91\" />\n  <presetinput identifier=\"cerused_roughness\" uid=\"716267861\" type=\"0\" value=\"0.58\" />\n  <presetinput identifier=\"fibers_roughness_intensity\" uid=\"716267851\" type=\"0\" value=\"0.43\" />\n  <presetinput identifier=\"invert_mask\" uid=\"716267849\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"mask_spread\" uid=\"716267855\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"mask_variations\" uid=\"716267853\" type=\"0\" value=\"0.39\" />\n  <presetinput identifier=\"normal_fibers_intensity\" uid=\"716267843\" type=\"0\" value=\"0.4\" />\n  <presetinput identifier=\"normal_fibers_orientation_variations\" uid=\"716267841\" type=\"0\" value=\"0.2\" />\n  <presetinput identifier=\"fibers_rotation_varnish\" uid=\"716267847\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"scratches_intensity\" uid=\"716267845\" type=\"0\" value=\"0.46\" />\n  <presetinput identifier=\"scratches_color\" uid=\"716267963\" type=\"2\" value=\"0.584615,0.537228,0.479595\" />\n  <presetinput identifier=\"scratches_color_opacity\" uid=\"716267961\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"scratches_roughness\" uid=\"716267967\" type=\"0\" value=\"0.75\" />\n  <presetinput identifier=\"scratches_scale\" uid=\"716267965\" type=\"0\" value=\"0.55\" />\n  <presetinput identifier=\"scratches_density\" uid=\"716267955\" type=\"0\" value=\"0.4\" />\n  <presetinput identifier=\"normal_blend_intensity\" uid=\"716267953\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"normal_blend_format\" uid=\"716267959\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_diffuse\" uid=\"810152804\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_basecolor\" uid=\"1055181646\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_normal\" uid=\"1055181645\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_specular\" uid=\"810152795\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_glossiness\" uid=\"810152794\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_roughness\" uid=\"1055181633\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_metallic\" uid=\"1055181632\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_height\" uid=\"1055181638\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_ambientocclusion\" uid=\"889685027\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"luminosity\" uid=\"1205752385\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"contrast\" uid=\"945527651\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"hue_shift\" uid=\"1205752371\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"saturation\" uid=\"1205752404\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_intensity\" uid=\"1205841184\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_format\" uid=\"1055185005\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"height_range\" uid=\"1073717505\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"height_position\" uid=\"1073717616\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"ambientocclusion_intensity\" uid=\"900513162\" type=\"0\" value=\"0.5\" />\n </sbspreset>\n <sbspreset pkgurl=\"pkg://cerused_pine_wood\" label=\"Plain Cut Light Cerused\" >\n  <presetinput identifier=\"wood_color\" uid=\"716267893\" type=\"2\" value=\"0.615385,0.578035,0.493782\" />\n  <presetinput identifier=\"wood_color_variation\" uid=\"716267883\" type=\"0\" value=\"0.67\" />\n  <presetinput identifier=\"veins_contrast\" uid=\"716267881\" type=\"0\" value=\"0.76\" />\n  <presetinput identifier=\"\" uid=\"716267887\" type=\"65535\" value=\"0.76\" />\n  <presetinput identifier=\"cut\" uid=\"716267885\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"knots_amount\" uid=\"716267875\" type=\"0\" value=\"0.62\" />\n  <presetinput identifier=\"fibers\" uid=\"716267873\" type=\"0\" value=\"0.68\" />\n  <presetinput identifier=\"rotate_90\" uid=\"716267879\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"cerused_color_1\" uid=\"716267869\" type=\"3\" value=\"0.610256,0.610256,0.610256,1\" />\n  <presetinput identifier=\"cerused_color_2\" uid=\"716267859\" type=\"3\" value=\"0.605128,0.57614,0.57614,1\" />\n  <presetinput identifier=\"cerused_color_details\" uid=\"716267857\" type=\"0\" value=\"0.88\" />\n  <presetinput identifier=\"cerused_color_blend_intensity\" uid=\"716267863\" type=\"0\" value=\"0.48\" />\n  <presetinput identifier=\"cerused_roughness\" uid=\"716267861\" type=\"0\" value=\"0.42\" />\n  <presetinput identifier=\"fibers_roughness_intensity\" uid=\"716267851\" type=\"0\" value=\"0.43\" />\n  <presetinput identifier=\"invert_mask\" uid=\"716267849\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"mask_spread\" uid=\"716267855\" type=\"0\" value=\"0.61\" />\n  <presetinput identifier=\"mask_variations\" uid=\"716267853\" type=\"0\" value=\"0.39\" />\n  <presetinput identifier=\"normal_fibers_intensity\" uid=\"716267843\" type=\"0\" value=\"0.4\" />\n  <presetinput identifier=\"normal_fibers_orientation_variations\" uid=\"716267841\" type=\"0\" value=\"0.2\" />\n  <presetinput identifier=\"fibers_rotation_varnish\" uid=\"716267847\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"scratches_intensity\" uid=\"716267845\" type=\"0\" value=\"0.46\" />\n  <presetinput identifier=\"scratches_color\" uid=\"716267963\" type=\"2\" value=\"0.584615,0.537228,0.479595\" />\n  <presetinput identifier=\"scratches_color_opacity\" uid=\"716267961\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"scratches_roughness\" uid=\"716267967\" type=\"0\" value=\"0.75\" />\n  <presetinput identifier=\"scratches_scale\" uid=\"716267965\" type=\"0\" value=\"0.55\" />\n  <presetinput identifier=\"scratches_density\" uid=\"716267955\" type=\"0\" value=\"0.4\" />\n  <presetinput identifier=\"normal_blend_intensity\" uid=\"716267953\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"normal_blend_format\" uid=\"716267959\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_diffuse\" uid=\"810152804\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_basecolor\" uid=\"1055181646\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_normal\" uid=\"1055181645\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_specular\" uid=\"810152795\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_glossiness\" uid=\"810152794\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_roughness\" uid=\"1055181633\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_metallic\" uid=\"1055181632\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_height\" uid=\"1055181638\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_ambientocclusion\" uid=\"889685027\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"luminosity\" uid=\"1205752385\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"contrast\" uid=\"945527651\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"hue_shift\" uid=\"1205752371\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"saturation\" uid=\"1205752404\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_intensity\" uid=\"1205841184\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_format\" uid=\"1055185005\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"height_range\" uid=\"1073717505\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"height_position\" uid=\"1073717616\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"ambientocclusion_intensity\" uid=\"900513162\" type=\"0\" value=\"0.5\" />\n </sbspreset>\n <sbspreset pkgurl=\"pkg://cerused_pine_wood\" label=\"Live Cut Beige Cerused\" >\n  <presetinput identifier=\"wood_color\" uid=\"716267893\" type=\"2\" value=\"0.446154,0.305177,0.184339\" />\n  <presetinput identifier=\"wood_color_variation\" uid=\"716267883\" type=\"0\" value=\"0.67\" />\n  <presetinput identifier=\"veins_contrast\" uid=\"716267881\" type=\"0\" value=\"0.13\" />\n  <presetinput identifier=\"\" uid=\"716267887\" type=\"65535\" value=\"0.76\" />\n  <presetinput identifier=\"cut\" uid=\"716267885\" type=\"4\" value=\"4\" />\n  <presetinput identifier=\"knots_amount\" uid=\"716267875\" type=\"0\" value=\"0.89\" />\n  <presetinput identifier=\"fibers\" uid=\"716267873\" type=\"0\" value=\"0.68\" />\n  <presetinput identifier=\"rotate_90\" uid=\"716267879\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"cerused_color_1\" uid=\"716267869\" type=\"3\" value=\"0.748718,0.693125,0.632151,1\" />\n  <presetinput identifier=\"cerused_color_2\" uid=\"716267859\" type=\"3\" value=\"0.502564,0.410894,0.322002,1\" />\n  <presetinput identifier=\"cerused_color_details\" uid=\"716267857\" type=\"0\" value=\"0.69\" />\n  <presetinput identifier=\"cerused_color_blend_intensity\" uid=\"716267863\" type=\"0\" value=\"0.2\" />\n  <presetinput identifier=\"cerused_roughness\" uid=\"716267861\" type=\"0\" value=\"0.42\" />\n  <presetinput identifier=\"fibers_roughness_intensity\" uid=\"716267851\" type=\"0\" value=\"0.43\" />\n  <presetinput identifier=\"invert_mask\" uid=\"716267849\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"mask_spread\" uid=\"716267855\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"mask_variations\" uid=\"716267853\" type=\"0\" value=\"0.81\" />\n  <presetinput identifier=\"normal_fibers_intensity\" uid=\"716267843\" type=\"0\" value=\"0.71\" />\n  <presetinput identifier=\"normal_fibers_orientation_variations\" uid=\"716267841\" type=\"0\" value=\"0.2\" />\n  <presetinput identifier=\"fibers_rotation_varnish\" uid=\"716267847\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"scratches_intensity\" uid=\"716267845\" type=\"0\" value=\"0.08\" />\n  <presetinput identifier=\"scratches_color\" uid=\"716267963\" type=\"2\" value=\"0.584615,0.537228,0.479595\" />\n  <presetinput identifier=\"scratches_color_opacity\" uid=\"716267961\" type=\"0\" value=\"0.28\" />\n  <presetinput identifier=\"scratches_roughness\" uid=\"716267967\" type=\"0\" value=\"0.75\" />\n  <presetinput identifier=\"scratches_scale\" uid=\"716267965\" type=\"0\" value=\"0.55\" />\n  <presetinput identifier=\"scratches_density\" uid=\"716267955\" type=\"0\" value=\"0.4\" />\n  <presetinput identifier=\"normal_blend_intensity\" uid=\"716267953\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"normal_blend_format\" uid=\"716267959\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_diffuse\" uid=\"810152804\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_basecolor\" uid=\"1055181646\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_normal\" uid=\"1055181645\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_specular\" uid=\"810152795\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_glossiness\" uid=\"810152794\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_roughness\" uid=\"1055181633\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_metallic\" uid=\"1055181632\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_height\" uid=\"1055181638\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_ambientocclusion\" uid=\"889685027\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"luminosity\" uid=\"1205752385\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"contrast\" uid=\"945527651\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"hue_shift\" uid=\"1205752371\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"saturation\" uid=\"1205752404\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_intensity\" uid=\"1205841184\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_format\" uid=\"1055185005\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"height_range\" uid=\"1073717505\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"height_position\" uid=\"1073717616\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"ambientocclusion_intensity\" uid=\"900513162\" type=\"0\" value=\"0.5\" />\n </sbspreset>\n</sbspresets>\n"  ;
createNode place2dTexture -n "place2dTexture5";
	rename -uid "FC7F75B8-4491-1772-18E0-84948DFCCB8E";
createNode substanceOutputNode -n "Cerused_Pine_Wood_diffuse";
	rename -uid "8DCE811C-40A5-0BAF-3BA2-978A13F77A7D";
	setAttr ".cpth" -type "string" "C:/Users/hunte/Documents/maya\\2024\\substance/baked_images/Cerused_Pine_Wood_diffuse.exr";
createNode file -n "file25";
	rename -uid "CA82F797-42CA-ACBD-05D4-B09127279DF7";
	setAttr ".cs" -type "string" "sRGB";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Cerused_Pine_Wood_basecolor";
	rename -uid "BA329969-4183-B339-C041-9BA382F58208";
	setAttr ".cpth" -type "string" "C:/Users/hunte/Documents/maya\\2024\\substance/baked_images/Cerused_Pine_Wood_basecolor.png";
createNode file -n "file26";
	rename -uid "CDB00E05-44FE-CFFF-A8EE-3AB32DF675B5";
	setAttr ".cs" -type "string" "sRGB";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Cerused_Pine_Wood_specular";
	rename -uid "D5EA1135-4D51-7B03-FF91-E393EF9DC2F7";
	setAttr ".cpth" -type "string" "C:/Users/hunte/Documents/maya\\2024\\substance/baked_images/Cerused_Pine_Wood_specular.exr";
createNode file -n "file27";
	rename -uid "20275330-48EA-7894-3780-9B9EA355E5A6";
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Cerused_Pine_Wood_glossiness";
	rename -uid "D94680D6-4C90-5D8B-E60D-67AFCC8BEA72";
	setAttr ".cpth" -type "string" "C:/Users/hunte/Documents/maya\\2024\\substance/baked_images/Cerused_Pine_Wood_glossiness.exr";
createNode file -n "file28";
	rename -uid "67C1B56F-42A5-8B61-8071-758487563240";
	setAttr ".ail" yes;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Cerused_Pine_Wood_roughness";
	rename -uid "5472D024-40AD-11DA-60F5-FF9753B1452F";
	setAttr ".cpth" -type "string" "C:/Users/hunte/Documents/maya\\2024\\substance/baked_images/Cerused_Pine_Wood_roughness.png";
createNode file -n "file29";
	rename -uid "66D47746-48BF-A476-3945-D39CA9929041";
	setAttr ".ail" yes;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Cerused_Pine_Wood_metallic";
	rename -uid "CA279357-4B2C-D42F-E9C8-C78297DE9D5B";
	setAttr ".cpth" -type "string" "C:/Users/hunte/Documents/maya\\2024\\substance/baked_images/Cerused_Pine_Wood_metallic.png";
createNode file -n "file30";
	rename -uid "91D3E4DC-4041-A783-F6DB-6DA507D2825D";
	setAttr ".ail" yes;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Cerused_Pine_Wood_height";
	rename -uid "BAC21F31-4986-62E6-9DA3-20B7DE6F727A";
	setAttr ".cpth" -type "string" "C:/Users/hunte/Documents/maya\\2024\\substance/baked_images/Cerused_Pine_Wood_height.exr";
createNode file -n "file31";
	rename -uid "0E202DE8-4BAC-A396-36BD-FE973C60B080";
	setAttr ".ail" yes;
	setAttr ".ao" -0.5;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Cerused_Pine_Wood_ambientocclusion";
	rename -uid "0E7014F3-456C-EE9A-B415-7E9CFDD1828D";
	setAttr ".cpth" -type "string" "C:/Users/hunte/Documents/maya\\2024\\substance/baked_images/Cerused_Pine_Wood_ambientocclusion.exr";
createNode file -n "file32";
	rename -uid "E6932542-4369-93F7-D146-98BAD66DD04F";
	setAttr ".ail" yes;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Cerused_Pine_Wood_normal";
	rename -uid "C6DF56F9-4DAD-7F5A-142B-06AFE2C282A0";
	setAttr ".cpth" -type "string" "C:/Users/hunte/Documents/maya\\2024\\substance/baked_images/Cerused_Pine_Wood_normal.exr";
createNode file -n "file33";
	rename -uid "2D1B2139-4556-0C3E-C4B5-84AD08C22FD1";
	setAttr ".ail" yes;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode multiplyDivide -n "multiplyDivide3";
	rename -uid "C2AB774D-4DBD-7778-35D5-0EA35835BCA0";
createNode aiStandardSurface -n "Wood";
	rename -uid "4682AF4A-4ACE-5152-6785-9692BB2E944F";
	setAttr ".emission" 1;
	setAttr ".emission_color" -type "float3" 0 0 0 ;
createNode shadingEngine -n "set3";
	rename -uid "E1EFBEF7-477C-B434-843E-8BB9E88A73E7";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo6";
	rename -uid "F1872B96-494A-5CCD-3E1E-9C8155ECC10B";
createNode bump2d -n "bump2d3";
	rename -uid "1E255D36-4E49-29E6-6BBA-07BD22290E53";
	setAttr ".bi" 1;
	setAttr ".vc1" -type "float3" 0 9.9999997e-06 0 ;
	setAttr ".vc2" -type "float3" 9.9999997e-06 9.9999997e-06 0 ;
createNode displacementShader -n "displacementShader3";
	rename -uid "0B302C02-4FC2-98EC-841C-52B992735132";
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "87D513CD-4974-430E-700A-319B3E6D209D";
	setAttr -s 2 ".tgi";
	setAttr ".tgi[0].tn" -type "string" "Untitled_2";
	setAttr ".tgi[0].vl" -type "double2" -2999.9788104165004 -3565.7921044101336 ;
	setAttr ".tgi[0].vh" -type "double2" 2706.4158216602382 3658.9336936293735 ;
	setAttr -s 25 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 121.42857360839844;
	setAttr ".tgi[0].ni[0].y" -567.14288330078125;
	setAttr ".tgi[0].ni[0].nvs" 1923;
	setAttr ".tgi[0].ni[1].x" -374.28570556640625;
	setAttr ".tgi[0].ni[1].y" 325.71429443359375;
	setAttr ".tgi[0].ni[1].nvs" 1923;
	setAttr ".tgi[0].ni[2].x" 618.5714111328125;
	setAttr ".tgi[0].ni[2].y" 1634.2857666015625;
	setAttr ".tgi[0].ni[2].nvs" 1922;
	setAttr ".tgi[0].ni[3].x" -374.28570556640625;
	setAttr ".tgi[0].ni[3].y" 114.28571319580078;
	setAttr ".tgi[0].ni[3].nvs" 1923;
	setAttr ".tgi[0].ni[4].x" -875.62554931640625;
	setAttr ".tgi[0].ni[4].y" 90;
	setAttr ".tgi[0].ni[4].nvs" 1922;
	setAttr ".tgi[0].ni[5].x" -374.28570556640625;
	setAttr ".tgi[0].ni[5].y" -707.14288330078125;
	setAttr ".tgi[0].ni[5].nvs" 1922;
	setAttr ".tgi[0].ni[6].x" 1115.7142333984375;
	setAttr ".tgi[0].ni[6].y" 1384.2857666015625;
	setAttr ".tgi[0].ni[6].nvs" 1923;
	setAttr ".tgi[0].ni[7].x" -1492.857177734375;
	setAttr ".tgi[0].ni[7].y" -270;
	setAttr ".tgi[0].ni[7].nvs" 1923;
	setAttr ".tgi[0].ni[8].x" -874.28570556640625;
	setAttr ".tgi[0].ni[8].y" 560;
	setAttr ".tgi[0].ni[8].nvs" 1922;
	setAttr ".tgi[0].ni[9].x" -874.28570556640625;
	setAttr ".tgi[0].ni[9].y" 1030;
	setAttr ".tgi[0].ni[9].nvs" 1922;
	setAttr ".tgi[0].ni[10].x" 121.42857360839844;
	setAttr ".tgi[0].ni[10].y" -1314.2857666015625;
	setAttr ".tgi[0].ni[10].nvs" 1923;
	setAttr ".tgi[0].ni[11].x" 121.42857360839844;
	setAttr ".tgi[0].ni[11].y" -742.85711669921875;
	setAttr ".tgi[0].ni[11].nvs" 1923;
	setAttr ".tgi[0].ni[12].x" -374.28570556640625;
	setAttr ".tgi[0].ni[12].y" -61.428569793701172;
	setAttr ".tgi[0].ni[12].nvs" 1923;
	setAttr ".tgi[0].ni[13].x" -1185.7142333984375;
	setAttr ".tgi[0].ni[13].y" -185.71427917480469;
	setAttr ".tgi[0].ni[13].nvs" 1970;
	setAttr ".tgi[0].ni[14].x" 121.42857360839844;
	setAttr ".tgi[0].ni[14].y" -414.28570556640625;
	setAttr ".tgi[0].ni[14].nvs" 1923;
	setAttr ".tgi[0].ni[15].x" 121.42857360839844;
	setAttr ".tgi[0].ni[15].y" -120;
	setAttr ".tgi[0].ni[15].nvs" 1923;
	setAttr ".tgi[0].ni[16].x" 1115.7142333984375;
	setAttr ".tgi[0].ni[16].y" -2081.428466796875;
	setAttr ".tgi[0].ni[16].nvs" 1923;
	setAttr ".tgi[0].ni[17].x" 618.5714111328125;
	setAttr ".tgi[0].ni[17].y" -1127.142822265625;
	setAttr ".tgi[0].ni[17].nvs" 1923;
	setAttr ".tgi[0].ni[18].x" 1115.7142333984375;
	setAttr ".tgi[0].ni[18].y" 1971.4285888671875;
	setAttr ".tgi[0].ni[18].nvs" 1923;
	setAttr ".tgi[0].ni[19].x" 1115.7142333984375;
	setAttr ".tgi[0].ni[19].y" -758.5714111328125;
	setAttr ".tgi[0].ni[19].nvs" 1923;
	setAttr ".tgi[0].ni[20].x" 618.5714111328125;
	setAttr ".tgi[0].ni[20].y" -1831.4285888671875;
	setAttr ".tgi[0].ni[20].nvs" 1922;
	setAttr ".tgi[0].ni[21].x" -374.28570556640625;
	setAttr ".tgi[0].ni[21].y" -1250;
	setAttr ".tgi[0].ni[21].nvs" 1922;
	setAttr ".tgi[0].ni[22].x" 618.5714111328125;
	setAttr ".tgi[0].ni[22].y" 2221.428466796875;
	setAttr ".tgi[0].ni[22].nvs" 1922;
	setAttr ".tgi[0].ni[23].x" 618.5714111328125;
	setAttr ".tgi[0].ni[23].y" -432.85714721679688;
	setAttr ".tgi[0].ni[23].nvs" 2387;
	setAttr ".tgi[0].ni[24].x" -374.28570556640625;
	setAttr ".tgi[0].ni[24].y" -237.14285278320312;
	setAttr ".tgi[0].ni[24].nvs" 1922;
	setAttr ".tgi[1].tn" -type "string" "Untitled_3";
	setAttr ".tgi[1].vl" -type "double2" -645.23806959863794 -135.71428032148447 ;
	setAttr ".tgi[1].vh" -type "double2" -108.33332902855375 544.04759742910983 ;
	setAttr -s 25 ".tgi[1].ni";
	setAttr ".tgi[1].ni[0].x" 565.71429443359375;
	setAttr ".tgi[1].ni[0].y" -2.8571429252624512;
	setAttr ".tgi[1].ni[0].nvs" 1923;
	setAttr ".tgi[1].ni[1].x" 217.14285278320312;
	setAttr ".tgi[1].ni[1].y" -372.85714721679688;
	setAttr ".tgi[1].ni[1].nvs" 1923;
	setAttr ".tgi[1].ni[2].x" -147.14285278320312;
	setAttr ".tgi[1].ni[2].y" 632.85711669921875;
	setAttr ".tgi[1].ni[2].nvs" 1923;
	setAttr ".tgi[1].ni[3].x" -937.14288330078125;
	setAttr ".tgi[1].ni[3].y" 845.71429443359375;
	setAttr ".tgi[1].ni[3].nvs" 1922;
	setAttr ".tgi[1].ni[4].x" -554.28570556640625;
	setAttr ".tgi[1].ni[4].y" 868.5714111328125;
	setAttr ".tgi[1].ni[4].nvs" 1923;
	setAttr ".tgi[1].ni[5].x" 217.14285278320312;
	setAttr ".tgi[1].ni[5].y" 321.42855834960938;
	setAttr ".tgi[1].ni[5].nvs" 2387;
	setAttr ".tgi[1].ni[6].x" -147.14285278320312;
	setAttr ".tgi[1].ni[6].y" 341.42855834960938;
	setAttr ".tgi[1].ni[6].nvs" 1923;
	setAttr ".tgi[1].ni[7].x" -937.14288330078125;
	setAttr ".tgi[1].ni[7].y" 1315.7142333984375;
	setAttr ".tgi[1].ni[7].nvs" 1922;
	setAttr ".tgi[1].ni[8].x" -554.28570556640625;
	setAttr ".tgi[1].ni[8].y" 692.85711669921875;
	setAttr ".tgi[1].ni[8].nvs" 1923;
	setAttr ".tgi[1].ni[9].x" -937.14288330078125;
	setAttr ".tgi[1].ni[9].y" 1785.7142333984375;
	setAttr ".tgi[1].ni[9].nvs" 1922;
	setAttr ".tgi[1].ni[10].x" 565.71429443359375;
	setAttr ".tgi[1].ni[10].y" -1842.857177734375;
	setAttr ".tgi[1].ni[10].nvs" 1923;
	setAttr ".tgi[1].ni[11].x" -554.28570556640625;
	setAttr ".tgi[1].ni[11].y" 1087.142822265625;
	setAttr ".tgi[1].ni[11].nvs" 1923;
	setAttr ".tgi[1].ni[12].x" 217.14285278320312;
	setAttr ".tgi[1].ni[12].y" -1592.857177734375;
	setAttr ".tgi[1].ni[12].nvs" 1922;
	setAttr ".tgi[1].ni[13].x" -147.14285278320312;
	setAttr ".tgi[1].ni[13].y" 188.57142639160156;
	setAttr ".tgi[1].ni[13].nvs" 1923;
	setAttr ".tgi[1].ni[14].x" -554.28570556640625;
	setAttr ".tgi[1].ni[14].y" 517.14288330078125;
	setAttr ".tgi[1].ni[14].nvs" 1922;
	setAttr ".tgi[1].ni[15].x" -147.14285278320312;
	setAttr ".tgi[1].ni[15].y" -558.5714111328125;
	setAttr ".tgi[1].ni[15].nvs" 1923;
	setAttr ".tgi[1].ni[16].x" 217.14285278320312;
	setAttr ".tgi[1].ni[16].y" 2391.428466796875;
	setAttr ".tgi[1].ni[16].nvs" 1922;
	setAttr ".tgi[1].ni[17].x" -554.28570556640625;
	setAttr ".tgi[1].ni[17].y" -494.28570556640625;
	setAttr ".tgi[1].ni[17].nvs" 1922;
	setAttr ".tgi[1].ni[18].x" 565.71429443359375;
	setAttr ".tgi[1].ni[18].y" -1257.142822265625;
	setAttr ".tgi[1].ni[18].nvs" 1923;
	setAttr ".tgi[1].ni[19].x" 217.14285278320312;
	setAttr ".tgi[1].ni[19].y" -1007.1428833007812;
	setAttr ".tgi[1].ni[19].nvs" 1922;
	setAttr ".tgi[1].ni[20].x" -1555.7142333984375;
	setAttr ".tgi[1].ni[20].y" -77.142860412597656;
	setAttr ".tgi[1].ni[20].nvs" 1923;
	setAttr ".tgi[1].ni[21].x" 565.71429443359375;
	setAttr ".tgi[1].ni[21].y" 2141.428466796875;
	setAttr ".tgi[1].ni[21].nvs" 1923;
	setAttr ".tgi[1].ni[22].x" -1248.5714111328125;
	setAttr ".tgi[1].ni[22].y" 132.85714721679688;
	setAttr ".tgi[1].ni[22].nvs" 1970;
	setAttr ".tgi[1].ni[23].x" -147.14285278320312;
	setAttr ".tgi[1].ni[23].y" 12.857142448425293;
	setAttr ".tgi[1].ni[23].nvs" 1923;
	setAttr ".tgi[1].ni[24].x" -554.28570556640625;
	setAttr ".tgi[1].ni[24].y" 47.142856597900391;
	setAttr ".tgi[1].ni[24].nvs" 1922;
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
	setAttr -s 38 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 44 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 65 ".u";
select -ne :defaultRenderingList1;
	setAttr -s 17 ".r";
select -ne :lightList1;
	setAttr -s 2 ".l";
select -ne :defaultTextureList1;
	setAttr -s 108 ".tx";
select -ne :standardSurface1;
	setAttr ".bc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
	setAttr ".sr" 0.5;
select -ne :initialShadingGroup;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
	setAttr ".outf" 51;
	setAttr ".imfkey" -type "string" "exr";
	setAttr ".dss" -type "string" "standardSurface1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultLightSet;
	setAttr -s 2 ".dsm";
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
	setAttr -s 4 ".sol";
connectAttr "PALbot_MAIN_global_scale1.o" "PALBotRN.phl[1]";
connectAttr "PALbot_MAIN_Mesh_lock1.o" "PALBotRN.phl[2]";
connectAttr "PALbot_MAIN_translateX1.o" "PALBotRN.phl[3]";
connectAttr "PALbot_MAIN_translateZ1.o" "PALBotRN.phl[4]";
connectAttr "PALbot_MAIN_translateY1.o" "PALBotRN.phl[5]";
connectAttr "PALbot_MAIN_rotateY1.o" "PALBotRN.phl[6]";
connectAttr "PALbot_MAIN_rotateX1.o" "PALBotRN.phl[7]";
connectAttr "PALbot_MAIN_rotateZ1.o" "PALBotRN.phl[8]";
connectAttr "PALbot_root_rotateX1.o" "PALBotRN.phl[9]";
connectAttr "PALbot_root_rotateY1.o" "PALBotRN.phl[10]";
connectAttr "PALbot_root_rotateZ1.o" "PALBotRN.phl[11]";
connectAttr "PALbot_root_translateX1.o" "PALBotRN.phl[12]";
connectAttr "PALbot_root_translateY1.o" "PALBotRN.phl[13]";
connectAttr "PALbot_root_translateZ1.o" "PALBotRN.phl[14]";
connectAttr "PALbot_L_knee_aim_ctrl_space_switch1.o" "PALBotRN.phl[15]";
connectAttr "PALbot_L_knee_aim_ctrl_translateX1.o" "PALBotRN.phl[16]";
connectAttr "PALbot_L_knee_aim_ctrl_translateY1.o" "PALBotRN.phl[17]";
connectAttr "PALbot_L_knee_aim_ctrl_translateZ1.o" "PALBotRN.phl[18]";
connectAttr "PALbot_L_knee_aim_ctrl_rotateX1.o" "PALBotRN.phl[19]";
connectAttr "PALbot_L_knee_aim_ctrl_rotateY1.o" "PALBotRN.phl[20]";
connectAttr "PALbot_L_knee_aim_ctrl_rotateZ1.o" "PALBotRN.phl[21]";
connectAttr "PALbot_L_foot_secondary_rotateX1.o" "PALBotRN.phl[22]";
connectAttr "PALbot_L_foot_secondary_rotateY1.o" "PALBotRN.phl[23]";
connectAttr "PALbot_L_foot_secondary_rotateZ1.o" "PALBotRN.phl[24]";
connectAttr "PALbot_L_foot_secondary_translateX1.o" "PALBotRN.phl[25]";
connectAttr "PALbot_L_foot_secondary_translateY1.o" "PALBotRN.phl[26]";
connectAttr "PALbot_L_foot_secondary_translateZ1.o" "PALBotRN.phl[27]";
connectAttr "PALbot_L_footSec_reshape01_translateX1.o" "PALBotRN.phl[28]";
connectAttr "PALbot_L_footSec_reshape01_translateY1.o" "PALBotRN.phl[29]";
connectAttr "PALbot_L_footSec_reshape01_translateZ1.o" "PALBotRN.phl[30]";
connectAttr "PALbot_L_footSec_reshape01_rotateX1.o" "PALBotRN.phl[31]";
connectAttr "PALbot_L_footSec_reshape01_rotateY1.o" "PALBotRN.phl[32]";
connectAttr "PALbot_L_footSec_reshape01_rotateZ1.o" "PALBotRN.phl[33]";
connectAttr "PALbot_L_footSec_reshape02_translateX1.o" "PALBotRN.phl[34]";
connectAttr "PALbot_L_footSec_reshape02_translateY1.o" "PALBotRN.phl[35]";
connectAttr "PALbot_L_footSec_reshape02_translateZ1.o" "PALBotRN.phl[36]";
connectAttr "PALbot_L_footSec_reshape02_rotateX1.o" "PALBotRN.phl[37]";
connectAttr "PALbot_L_footSec_reshape02_rotateY1.o" "PALBotRN.phl[38]";
connectAttr "PALbot_L_footSec_reshape02_rotateZ1.o" "PALBotRN.phl[39]";
connectAttr "PALbot_L_Engine_ctrl_on_off1.o" "PALBotRN.phl[40]";
connectAttr "PALbot_L_Engine_ctrl_translateX1.o" "PALBotRN.phl[41]";
connectAttr "PALbot_L_Engine_ctrl_translateY1.o" "PALBotRN.phl[42]";
connectAttr "PALbot_L_Engine_ctrl_translateZ1.o" "PALBotRN.phl[43]";
connectAttr "PALbot_L_Engine_ctrl_rotateX1.o" "PALBotRN.phl[44]";
connectAttr "PALbot_L_Engine_ctrl_rotateY1.o" "PALBotRN.phl[45]";
connectAttr "PALbot_L_Engine_ctrl_rotateZ1.o" "PALBotRN.phl[46]";
connectAttr "PALbot_L_Engine_ctrl_scaleX1.o" "PALBotRN.phl[47]";
connectAttr "PALbot_L_Engine_ctrl_scaleY1.o" "PALBotRN.phl[48]";
connectAttr "PALbot_L_Engine_ctrl_scaleZ1.o" "PALBotRN.phl[49]";
connectAttr "PALbot_L_IK_Foot_ctrl_Heel_Peel1.o" "PALBotRN.phl[50]";
connectAttr "PALbot_L_IK_Foot_ctrl_follow_hip1.o" "PALBotRN.phl[51]";
connectAttr "PALbot_L_IK_Foot_ctrl_translateX1.o" "PALBotRN.phl[52]";
connectAttr "PALbot_L_IK_Foot_ctrl_translateZ1.o" "PALBotRN.phl[53]";
connectAttr "PALbot_L_IK_Foot_ctrl_translateY1.o" "PALBotRN.phl[54]";
connectAttr "PALbot_L_IK_Foot_ctrl_rotateX1.o" "PALBotRN.phl[55]";
connectAttr "PALbot_L_IK_Foot_ctrl_rotateY1.o" "PALBotRN.phl[56]";
connectAttr "PALbot_L_IK_Foot_ctrl_rotateZ1.o" "PALBotRN.phl[57]";
connectAttr "PALbot_L_IK_heel_lift_tip_rotateX1.o" "PALBotRN.phl[58]";
connectAttr "PALbot_L_IK_heel_lift_tip_rotateY1.o" "PALBotRN.phl[59]";
connectAttr "PALbot_L_IK_heel_lift_tip_rotateZ1.o" "PALBotRN.phl[60]";
connectAttr "PALbot_L_IK_heel_lift_tip_translateX1.o" "PALBotRN.phl[61]";
connectAttr "PALbot_L_IK_heel_lift_tip_translateY1.o" "PALBotRN.phl[62]";
connectAttr "PALbot_L_IK_heel_lift_tip_translateZ1.o" "PALBotRN.phl[63]";
connectAttr "PALbot_L_IK_foot_tip_translateX1.o" "PALBotRN.phl[64]";
connectAttr "PALbot_L_IK_foot_tip_translateY1.o" "PALBotRN.phl[65]";
connectAttr "PALbot_L_IK_foot_tip_translateZ1.o" "PALBotRN.phl[66]";
connectAttr "PALbot_L_IK_foot_tip_rotateX1.o" "PALBotRN.phl[67]";
connectAttr "PALbot_L_IK_foot_tip_rotateY1.o" "PALBotRN.phl[68]";
connectAttr "PALbot_L_IK_foot_tip_rotateZ1.o" "PALBotRN.phl[69]";
connectAttr "PALbot_L_IK_footBall_ctrl_translateX1.o" "PALBotRN.phl[70]";
connectAttr "PALbot_L_IK_footBall_ctrl_translateY1.o" "PALBotRN.phl[71]";
connectAttr "PALbot_L_IK_footBall_ctrl_translateZ1.o" "PALBotRN.phl[72]";
connectAttr "PALbot_L_IK_footBall_ctrl_rotateX1.o" "PALBotRN.phl[73]";
connectAttr "PALbot_L_IK_footBall_ctrl_rotateY1.o" "PALBotRN.phl[74]";
connectAttr "PALbot_L_IK_footBall_ctrl_rotateZ1.o" "PALBotRN.phl[75]";
connectAttr "PALbot_R_HandVIS_Hand_Vis1.o" "PALBotRN.phl[76]";
connectAttr "PALbot_R_HandVIS_canon_light1.o" "PALBotRN.phl[77]";
connectAttr "PALbot_cog_ctrl_secondary_vis1.o" "PALBotRN.phl[78]";
connectAttr "PALbot_cog_ctrl_translateY1.o" "PALBotRN.phl[79]";
connectAttr "PALbot_cog_ctrl_translateX1.o" "PALBotRN.phl[80]";
connectAttr "PALbot_cog_ctrl_translateZ1.o" "PALBotRN.phl[81]";
connectAttr "PALbot_cog_ctrl_rotateX1.o" "PALBotRN.phl[82]";
connectAttr "PALbot_cog_ctrl_rotateY1.o" "PALBotRN.phl[83]";
connectAttr "PALbot_cog_ctrl_rotateZ1.o" "PALBotRN.phl[84]";
connectAttr "PALbot_chestUp_ctrl_secondary_vis1.o" "PALBotRN.phl[85]";
connectAttr "PALbot_chestUp_ctrl_rotateY1.o" "PALBotRN.phl[86]";
connectAttr "PALbot_chestUp_ctrl_rotateX1.o" "PALBotRN.phl[87]";
connectAttr "PALbot_chestUp_ctrl_rotateZ1.o" "PALBotRN.phl[88]";
connectAttr "PALbot_chestUp_ctrl_translateX1.o" "PALBotRN.phl[89]";
connectAttr "PALbot_chestUp_ctrl_translateY1.o" "PALBotRN.phl[90]";
connectAttr "PALbot_chestUp_ctrl_translateZ1.o" "PALBotRN.phl[91]";
connectAttr "PALbot_Neck_ctrl_translateX1.o" "PALBotRN.phl[92]";
connectAttr "PALbot_Neck_ctrl_translateY1.o" "PALBotRN.phl[93]";
connectAttr "PALbot_Neck_ctrl_translateZ1.o" "PALBotRN.phl[94]";
connectAttr "PALbot_Neck_ctrl_rotateX1.o" "PALBotRN.phl[95]";
connectAttr "PALbot_Neck_ctrl_rotateY1.o" "PALBotRN.phl[96]";
connectAttr "PALbot_Neck_ctrl_rotateZ1.o" "PALBotRN.phl[97]";
connectAttr "PALbot_head_ctrl_Space_switch1.o" "PALBotRN.phl[98]";
connectAttr "PALbot_head_ctrl_FaceLight1.o" "PALBotRN.phl[99]";
connectAttr "PALbot_head_ctrl_Led_color1.o" "PALBotRN.phl[100]";
connectAttr "PALbot_head_ctrl_Face_Drawing1.o" "PALBotRN.phl[101]";
connectAttr "PALbot_head_ctrl_rotateY1.o" "PALBotRN.phl[102]";
connectAttr "PALbot_head_ctrl_rotateX1.o" "PALBotRN.phl[103]";
connectAttr "PALbot_head_ctrl_rotateZ1.o" "PALBotRN.phl[104]";
connectAttr "PALbot_head_ctrl_translateX1.o" "PALBotRN.phl[105]";
connectAttr "PALbot_head_ctrl_translateY1.o" "PALBotRN.phl[106]";
connectAttr "PALbot_head_ctrl_translateZ1.o" "PALBotRN.phl[107]";
connectAttr "PALbot_R_Clavicle_ctrl_translateX1.o" "PALBotRN.phl[108]";
connectAttr "PALbot_R_Clavicle_ctrl_translateY1.o" "PALBotRN.phl[109]";
connectAttr "PALbot_R_Clavicle_ctrl_translateZ1.o" "PALBotRN.phl[110]";
connectAttr "PALbot_R_Clavicle_ctrl_rotateX1.o" "PALBotRN.phl[111]";
connectAttr "PALbot_R_Clavicle_ctrl_rotateY1.o" "PALBotRN.phl[112]";
connectAttr "PALbot_R_Clavicle_ctrl_rotateZ1.o" "PALBotRN.phl[113]";
connectAttr "PALbot_L_ShoulderRotate_ctrl_rotateZ3.o" "PALBotRN.phl[114]";
connectAttr "PALbot_L_ShoulderRotate_ctrl_translateX3.o" "PALBotRN.phl[115]";
connectAttr "PALbot_L_ShoulderRotate_ctrl_translateY3.o" "PALBotRN.phl[116]";
connectAttr "PALbot_L_ShoulderRotate_ctrl_translateZ3.o" "PALBotRN.phl[117]";
connectAttr "PALbot_L_Arm_ctrl_rotateZ2.o" "PALBotRN.phl[118]";
connectAttr "PALbot_L_Arm_ctrl_rotateY2.o" "PALBotRN.phl[119]";
connectAttr "PALbot_L_Arm_ctrl_translateX2.o" "PALBotRN.phl[120]";
connectAttr "PALbot_L_Arm_ctrl_translateY2.o" "PALBotRN.phl[121]";
connectAttr "PALbot_L_Arm_ctrl_translateZ2.o" "PALBotRN.phl[122]";
connectAttr "PALbot_R_FK_Elbow_ctrl_rotateX1.o" "PALBotRN.phl[123]";
connectAttr "PALbot_R_FK_Elbow_ctrl_translateX1.o" "PALBotRN.phl[124]";
connectAttr "PALbot_R_FK_Elbow_ctrl_translateY1.o" "PALBotRN.phl[125]";
connectAttr "PALbot_R_FK_Elbow_ctrl_translateZ1.o" "PALBotRN.phl[126]";
connectAttr "PALbot_R_FK_Wrist_ctrl_translateX1.o" "PALBotRN.phl[127]";
connectAttr "PALbot_R_FK_Wrist_ctrl_translateY1.o" "PALBotRN.phl[128]";
connectAttr "PALbot_R_FK_Wrist_ctrl_translateZ1.o" "PALBotRN.phl[129]";
connectAttr "PALbot_R_FK_Wrist_ctrl_rotateY1.o" "PALBotRN.phl[130]";
connectAttr "PALbot_R_FK_Wrist_ctrl_rotateX1.o" "PALBotRN.phl[131]";
connectAttr "PALbot_R_FK_Wrist_ctrl_rotateZ1.o" "PALBotRN.phl[132]";
connectAttr "PALbot_R_arm_IK_FK_switch_IK_FK1.o" "PALBotRN.phl[133]";
connectAttr "PALbot_L_Clavicle_ctrl_translateX1.o" "PALBotRN.phl[134]";
connectAttr "PALbot_L_Clavicle_ctrl_translateY1.o" "PALBotRN.phl[135]";
connectAttr "PALbot_L_Clavicle_ctrl_translateZ1.o" "PALBotRN.phl[136]";
connectAttr "PALbot_L_Clavicle_ctrl_rotateX1.o" "PALBotRN.phl[137]";
connectAttr "PALbot_L_Clavicle_ctrl_rotateY1.o" "PALBotRN.phl[138]";
connectAttr "PALbot_L_Clavicle_ctrl_rotateZ1.o" "PALBotRN.phl[139]";
connectAttr "PALbot_L_ShoulderRotate_ctrl_rotateZ2.o" "PALBotRN.phl[140]";
connectAttr "PALbot_L_ShoulderRotate_ctrl_translateX2.o" "PALBotRN.phl[141]";
connectAttr "PALbot_L_ShoulderRotate_ctrl_translateY2.o" "PALBotRN.phl[142]";
connectAttr "PALbot_L_ShoulderRotate_ctrl_translateZ2.o" "PALBotRN.phl[143]";
connectAttr "PALbot_L_Arm_ctrl_rotateZ3.o" "PALBotRN.phl[144]";
connectAttr "PALbot_L_Arm_ctrl_rotateY3.o" "PALBotRN.phl[145]";
connectAttr "PALbot_L_Arm_ctrl_translateX3.o" "PALBotRN.phl[146]";
connectAttr "PALbot_L_Arm_ctrl_translateY3.o" "PALBotRN.phl[147]";
connectAttr "PALbot_L_Arm_ctrl_translateZ3.o" "PALBotRN.phl[148]";
connectAttr "PALbot_L_FK_Elbow_ctrl_rotateX1.o" "PALBotRN.phl[149]";
connectAttr "PALbot_L_FK_Elbow_ctrl_translateX1.o" "PALBotRN.phl[150]";
connectAttr "PALbot_L_FK_Elbow_ctrl_translateY1.o" "PALBotRN.phl[151]";
connectAttr "PALbot_L_FK_Elbow_ctrl_translateZ1.o" "PALBotRN.phl[152]";
connectAttr "PALbot_L_FK_Wrist_ctrl_translateX1.o" "PALBotRN.phl[153]";
connectAttr "PALbot_L_FK_Wrist_ctrl_translateY1.o" "PALBotRN.phl[154]";
connectAttr "PALbot_L_FK_Wrist_ctrl_translateZ1.o" "PALBotRN.phl[155]";
connectAttr "PALbot_L_FK_Wrist_ctrl_rotateY1.o" "PALBotRN.phl[156]";
connectAttr "PALbot_L_FK_Wrist_ctrl_rotateX1.o" "PALBotRN.phl[157]";
connectAttr "PALbot_L_FK_Wrist_ctrl_rotateZ1.o" "PALBotRN.phl[158]";
connectAttr "PALbot_L_arm_IK_FK_switch_IK_FK1.o" "PALBotRN.phl[159]";
connectAttr "PALbot_hipMain_ctrl_translateX1.o" "PALBotRN.phl[160]";
connectAttr "PALbot_hipMain_ctrl_translateY1.o" "PALBotRN.phl[161]";
connectAttr "PALbot_hipMain_ctrl_translateZ1.o" "PALBotRN.phl[162]";
connectAttr "PALbot_hipMain_ctrl_rotateX1.o" "PALBotRN.phl[163]";
connectAttr "PALbot_hipMain_ctrl_rotateY1.o" "PALBotRN.phl[164]";
connectAttr "PALbot_hipMain_ctrl_rotateZ1.o" "PALBotRN.phl[165]";
connectAttr "PALbot_R_hip_translateX1.o" "PALBotRN.phl[166]";
connectAttr "PALbot_R_hip_translateY1.o" "PALBotRN.phl[167]";
connectAttr "PALbot_R_hip_translateZ1.o" "PALBotRN.phl[168]";
connectAttr "PALbot_R_hip_rotateX1.o" "PALBotRN.phl[169]";
connectAttr "PALbot_R_hip_rotateY1.o" "PALBotRN.phl[170]";
connectAttr "PALbot_R_hip_rotateZ1.o" "PALBotRN.phl[171]";
connectAttr "PALbot_R_leg_IK_FK_switch_IK_FK1.o" "PALBotRN.phl[172]";
connectAttr "PALbot_L_hip_translateX1.o" "PALBotRN.phl[173]";
connectAttr "PALbot_L_hip_translateY1.o" "PALBotRN.phl[174]";
connectAttr "PALbot_L_hip_translateZ1.o" "PALBotRN.phl[175]";
connectAttr "PALbot_L_hip_rotateX1.o" "PALBotRN.phl[176]";
connectAttr "PALbot_L_hip_rotateY1.o" "PALBotRN.phl[177]";
connectAttr "PALbot_L_hip_rotateZ1.o" "PALBotRN.phl[178]";
connectAttr "PALbot_L_leg_IK_FK_switch_IK_FK1.o" "PALBotRN.phl[179]";
connectAttr "PALbot_L_Thumb01_ctrl_translateX1.o" "PALBotRN.phl[180]";
connectAttr "PALbot_L_Thumb01_ctrl_translateY1.o" "PALBotRN.phl[181]";
connectAttr "PALbot_L_Thumb01_ctrl_translateZ1.o" "PALBotRN.phl[182]";
connectAttr "PALbot_L_Thumb01_ctrl_rotateX1.o" "PALBotRN.phl[183]";
connectAttr "PALbot_L_Thumb01_ctrl_rotateY1.o" "PALBotRN.phl[184]";
connectAttr "PALbot_L_Thumb01_ctrl_rotateZ1.o" "PALBotRN.phl[185]";
connectAttr "PALbot_L_Thumb02_ctrl_translateX1.o" "PALBotRN.phl[186]";
connectAttr "PALbot_L_Thumb02_ctrl_translateY1.o" "PALBotRN.phl[187]";
connectAttr "PALbot_L_Thumb02_ctrl_translateZ1.o" "PALBotRN.phl[188]";
connectAttr "PALbot_L_Thumb02_ctrl_rotateX1.o" "PALBotRN.phl[189]";
connectAttr "PALbot_L_Thumb02_ctrl_rotateY1.o" "PALBotRN.phl[190]";
connectAttr "PALbot_L_Thumb02_ctrl_rotateZ1.o" "PALBotRN.phl[191]";
connectAttr "PALbot_L_Thumb03_ctrl_translateX1.o" "PALBotRN.phl[192]";
connectAttr "PALbot_L_Thumb03_ctrl_translateY1.o" "PALBotRN.phl[193]";
connectAttr "PALbot_L_Thumb03_ctrl_translateZ1.o" "PALBotRN.phl[194]";
connectAttr "PALbot_L_Thumb03_ctrl_rotateX1.o" "PALBotRN.phl[195]";
connectAttr "PALbot_L_Thumb03_ctrl_rotateY1.o" "PALBotRN.phl[196]";
connectAttr "PALbot_L_Thumb03_ctrl_rotateZ1.o" "PALBotRN.phl[197]";
connectAttr "PALbot_L_Index01_ctrl_translateX1.o" "PALBotRN.phl[198]";
connectAttr "PALbot_L_Index01_ctrl_translateY1.o" "PALBotRN.phl[199]";
connectAttr "PALbot_L_Index01_ctrl_translateZ1.o" "PALBotRN.phl[200]";
connectAttr "PALbot_L_Index01_ctrl_rotateX1.o" "PALBotRN.phl[201]";
connectAttr "PALbot_L_Index01_ctrl_rotateY1.o" "PALBotRN.phl[202]";
connectAttr "PALbot_L_Index01_ctrl_rotateZ1.o" "PALBotRN.phl[203]";
connectAttr "PALbot_L_Index02_ctrl_translateX1.o" "PALBotRN.phl[204]";
connectAttr "PALbot_L_Index02_ctrl_translateY1.o" "PALBotRN.phl[205]";
connectAttr "PALbot_L_Index02_ctrl_translateZ1.o" "PALBotRN.phl[206]";
connectAttr "PALbot_L_Index02_ctrl_rotateX1.o" "PALBotRN.phl[207]";
connectAttr "PALbot_L_Index02_ctrl_rotateY1.o" "PALBotRN.phl[208]";
connectAttr "PALbot_L_Index02_ctrl_rotateZ1.o" "PALBotRN.phl[209]";
connectAttr "PALbot_L_Middle01_ctrl_translateX1.o" "PALBotRN.phl[210]";
connectAttr "PALbot_L_Middle01_ctrl_translateY1.o" "PALBotRN.phl[211]";
connectAttr "PALbot_L_Middle01_ctrl_translateZ1.o" "PALBotRN.phl[212]";
connectAttr "PALbot_L_Middle01_ctrl_rotateX1.o" "PALBotRN.phl[213]";
connectAttr "PALbot_L_Middle01_ctrl_rotateY1.o" "PALBotRN.phl[214]";
connectAttr "PALbot_L_Middle01_ctrl_rotateZ1.o" "PALBotRN.phl[215]";
connectAttr "PALbot_L_Middle02_ctrl_translateX1.o" "PALBotRN.phl[216]";
connectAttr "PALbot_L_Middle02_ctrl_translateY1.o" "PALBotRN.phl[217]";
connectAttr "PALbot_L_Middle02_ctrl_translateZ1.o" "PALBotRN.phl[218]";
connectAttr "PALbot_L_Middle02_ctrl_rotateX1.o" "PALBotRN.phl[219]";
connectAttr "PALbot_L_Middle02_ctrl_rotateY1.o" "PALBotRN.phl[220]";
connectAttr "PALbot_L_Middle02_ctrl_rotateZ1.o" "PALBotRN.phl[221]";
connectAttr "PALbot_L_Ring01_ctrl_translateX1.o" "PALBotRN.phl[222]";
connectAttr "PALbot_L_Ring01_ctrl_translateY1.o" "PALBotRN.phl[223]";
connectAttr "PALbot_L_Ring01_ctrl_translateZ1.o" "PALBotRN.phl[224]";
connectAttr "PALbot_L_Ring01_ctrl_rotateX1.o" "PALBotRN.phl[225]";
connectAttr "PALbot_L_Ring01_ctrl_rotateY1.o" "PALBotRN.phl[226]";
connectAttr "PALbot_L_Ring01_ctrl_rotateZ1.o" "PALBotRN.phl[227]";
connectAttr "PALbot_L_Ring02_ctrl_translateX1.o" "PALBotRN.phl[228]";
connectAttr "PALbot_L_Ring02_ctrl_translateY1.o" "PALBotRN.phl[229]";
connectAttr "PALbot_L_Ring02_ctrl_translateZ1.o" "PALBotRN.phl[230]";
connectAttr "PALbot_L_Ring02_ctrl_rotateX1.o" "PALBotRN.phl[231]";
connectAttr "PALbot_L_Ring02_ctrl_rotateY1.o" "PALBotRN.phl[232]";
connectAttr "PALbot_L_Ring02_ctrl_rotateZ1.o" "PALBotRN.phl[233]";
connectAttr "PALbot_L_Pinky01_ctrl_translateX1.o" "PALBotRN.phl[234]";
connectAttr "PALbot_L_Pinky01_ctrl_translateY1.o" "PALBotRN.phl[235]";
connectAttr "PALbot_L_Pinky01_ctrl_translateZ1.o" "PALBotRN.phl[236]";
connectAttr "PALbot_L_Pinky01_ctrl_rotateX1.o" "PALBotRN.phl[237]";
connectAttr "PALbot_L_Pinky01_ctrl_rotateY1.o" "PALBotRN.phl[238]";
connectAttr "PALbot_L_Pinky01_ctrl_rotateZ1.o" "PALBotRN.phl[239]";
connectAttr "PALbot_L_Pinky02_ctrl_translateX1.o" "PALBotRN.phl[240]";
connectAttr "PALbot_L_Pinky02_ctrl_translateY1.o" "PALBotRN.phl[241]";
connectAttr "PALbot_L_Pinky02_ctrl_translateZ1.o" "PALBotRN.phl[242]";
connectAttr "PALbot_L_Pinky02_ctrl_rotateX1.o" "PALBotRN.phl[243]";
connectAttr "PALbot_L_Pinky02_ctrl_rotateY1.o" "PALBotRN.phl[244]";
connectAttr "PALbot_L_Pinky02_ctrl_rotateZ1.o" "PALBotRN.phl[245]";
connectAttr "PALbot_R_Thumb01_ctrl_translateX1.o" "PALBotRN.phl[246]";
connectAttr "PALbot_R_Thumb01_ctrl_translateY1.o" "PALBotRN.phl[247]";
connectAttr "PALbot_R_Thumb01_ctrl_translateZ1.o" "PALBotRN.phl[248]";
connectAttr "PALbot_R_Thumb01_ctrl_rotateX1.o" "PALBotRN.phl[249]";
connectAttr "PALbot_R_Thumb01_ctrl_rotateY1.o" "PALBotRN.phl[250]";
connectAttr "PALbot_R_Thumb01_ctrl_rotateZ1.o" "PALBotRN.phl[251]";
connectAttr "PALbot_R_Thumb02_ctrl_translateX1.o" "PALBotRN.phl[252]";
connectAttr "PALbot_R_Thumb02_ctrl_translateY1.o" "PALBotRN.phl[253]";
connectAttr "PALbot_R_Thumb02_ctrl_translateZ1.o" "PALBotRN.phl[254]";
connectAttr "PALbot_R_Thumb02_ctrl_rotateX1.o" "PALBotRN.phl[255]";
connectAttr "PALbot_R_Thumb02_ctrl_rotateY1.o" "PALBotRN.phl[256]";
connectAttr "PALbot_R_Thumb02_ctrl_rotateZ1.o" "PALBotRN.phl[257]";
connectAttr "PALbot_R_Thumb03_ctrl_translateX1.o" "PALBotRN.phl[258]";
connectAttr "PALbot_R_Thumb03_ctrl_translateY1.o" "PALBotRN.phl[259]";
connectAttr "PALbot_R_Thumb03_ctrl_translateZ1.o" "PALBotRN.phl[260]";
connectAttr "PALbot_R_Thumb03_ctrl_rotateX1.o" "PALBotRN.phl[261]";
connectAttr "PALbot_R_Thumb03_ctrl_rotateY1.o" "PALBotRN.phl[262]";
connectAttr "PALbot_R_Thumb03_ctrl_rotateZ1.o" "PALBotRN.phl[263]";
connectAttr "PALbot_R_Index01_ctrl_translateX1.o" "PALBotRN.phl[264]";
connectAttr "PALbot_R_Index01_ctrl_translateY1.o" "PALBotRN.phl[265]";
connectAttr "PALbot_R_Index01_ctrl_translateZ1.o" "PALBotRN.phl[266]";
connectAttr "PALbot_R_Index01_ctrl_rotateX1.o" "PALBotRN.phl[267]";
connectAttr "PALbot_R_Index01_ctrl_rotateY1.o" "PALBotRN.phl[268]";
connectAttr "PALbot_R_Index01_ctrl_rotateZ1.o" "PALBotRN.phl[269]";
connectAttr "PALbot_R_Index02_ctrl_translateX1.o" "PALBotRN.phl[270]";
connectAttr "PALbot_R_Index02_ctrl_translateY1.o" "PALBotRN.phl[271]";
connectAttr "PALbot_R_Index02_ctrl_translateZ1.o" "PALBotRN.phl[272]";
connectAttr "PALbot_R_Index02_ctrl_rotateX1.o" "PALBotRN.phl[273]";
connectAttr "PALbot_R_Index02_ctrl_rotateY1.o" "PALBotRN.phl[274]";
connectAttr "PALbot_R_Index02_ctrl_rotateZ1.o" "PALBotRN.phl[275]";
connectAttr "PALbot_R_Middle01_ctrl_translateX1.o" "PALBotRN.phl[276]";
connectAttr "PALbot_R_Middle01_ctrl_translateY1.o" "PALBotRN.phl[277]";
connectAttr "PALbot_R_Middle01_ctrl_translateZ1.o" "PALBotRN.phl[278]";
connectAttr "PALbot_R_Middle01_ctrl_rotateX1.o" "PALBotRN.phl[279]";
connectAttr "PALbot_R_Middle01_ctrl_rotateY1.o" "PALBotRN.phl[280]";
connectAttr "PALbot_R_Middle01_ctrl_rotateZ1.o" "PALBotRN.phl[281]";
connectAttr "PALbot_R_Middle02_ctrl_translateX1.o" "PALBotRN.phl[282]";
connectAttr "PALbot_R_Middle02_ctrl_translateY1.o" "PALBotRN.phl[283]";
connectAttr "PALbot_R_Middle02_ctrl_translateZ1.o" "PALBotRN.phl[284]";
connectAttr "PALbot_R_Middle02_ctrl_rotateX1.o" "PALBotRN.phl[285]";
connectAttr "PALbot_R_Middle02_ctrl_rotateY1.o" "PALBotRN.phl[286]";
connectAttr "PALbot_R_Middle02_ctrl_rotateZ1.o" "PALBotRN.phl[287]";
connectAttr "PALbot_R_Ring01_ctrl_translateX1.o" "PALBotRN.phl[288]";
connectAttr "PALbot_R_Ring01_ctrl_translateY1.o" "PALBotRN.phl[289]";
connectAttr "PALbot_R_Ring01_ctrl_translateZ1.o" "PALBotRN.phl[290]";
connectAttr "PALbot_R_Ring01_ctrl_rotateX1.o" "PALBotRN.phl[291]";
connectAttr "PALbot_R_Ring01_ctrl_rotateY1.o" "PALBotRN.phl[292]";
connectAttr "PALbot_R_Ring01_ctrl_rotateZ1.o" "PALBotRN.phl[293]";
connectAttr "PALbot_R_Ring02_ctrl_translateX1.o" "PALBotRN.phl[294]";
connectAttr "PALbot_R_Ring02_ctrl_translateY1.o" "PALBotRN.phl[295]";
connectAttr "PALbot_R_Ring02_ctrl_translateZ1.o" "PALBotRN.phl[296]";
connectAttr "PALbot_R_Ring02_ctrl_rotateX1.o" "PALBotRN.phl[297]";
connectAttr "PALbot_R_Ring02_ctrl_rotateY1.o" "PALBotRN.phl[298]";
connectAttr "PALbot_R_Ring02_ctrl_rotateZ1.o" "PALBotRN.phl[299]";
connectAttr "PALbot_R_Pinky01_ctrl_translateX1.o" "PALBotRN.phl[300]";
connectAttr "PALbot_R_Pinky01_ctrl_translateY1.o" "PALBotRN.phl[301]";
connectAttr "PALbot_R_Pinky01_ctrl_translateZ1.o" "PALBotRN.phl[302]";
connectAttr "PALbot_R_Pinky01_ctrl_rotateX1.o" "PALBotRN.phl[303]";
connectAttr "PALbot_R_Pinky01_ctrl_rotateY1.o" "PALBotRN.phl[304]";
connectAttr "PALbot_R_Pinky01_ctrl_rotateZ1.o" "PALBotRN.phl[305]";
connectAttr "PALbot_R_Pinky02_ctrl_translateX1.o" "PALBotRN.phl[306]";
connectAttr "PALbot_R_Pinky02_ctrl_translateY1.o" "PALBotRN.phl[307]";
connectAttr "PALbot_R_Pinky02_ctrl_translateZ1.o" "PALBotRN.phl[308]";
connectAttr "PALbot_R_Pinky02_ctrl_rotateX1.o" "PALBotRN.phl[309]";
connectAttr "PALbot_R_Pinky02_ctrl_rotateY1.o" "PALBotRN.phl[310]";
connectAttr "PALbot_R_Pinky02_ctrl_rotateZ1.o" "PALBotRN.phl[311]";
connectAttr "PALbot_R_knee_aim_ctrl_space_switch1.o" "PALBotRN.phl[312]";
connectAttr "PALbot_R_knee_aim_ctrl_translateX1.o" "PALBotRN.phl[313]";
connectAttr "PALbot_R_knee_aim_ctrl_translateY1.o" "PALBotRN.phl[314]";
connectAttr "PALbot_R_knee_aim_ctrl_translateZ1.o" "PALBotRN.phl[315]";
connectAttr "PALbot_R_knee_aim_ctrl_rotateX1.o" "PALBotRN.phl[316]";
connectAttr "PALbot_R_knee_aim_ctrl_rotateY1.o" "PALBotRN.phl[317]";
connectAttr "PALbot_R_knee_aim_ctrl_rotateZ1.o" "PALBotRN.phl[318]";
connectAttr "PALbot_R_foot_secondary_rotateX1.o" "PALBotRN.phl[319]";
connectAttr "PALbot_R_foot_secondary_rotateY1.o" "PALBotRN.phl[320]";
connectAttr "PALbot_R_foot_secondary_rotateZ1.o" "PALBotRN.phl[321]";
connectAttr "PALbot_R_foot_secondary_translateX1.o" "PALBotRN.phl[322]";
connectAttr "PALbot_R_foot_secondary_translateY1.o" "PALBotRN.phl[323]";
connectAttr "PALbot_R_foot_secondary_translateZ1.o" "PALBotRN.phl[324]";
connectAttr "PALbot_R_footSec_reshape01_translateX1.o" "PALBotRN.phl[325]";
connectAttr "PALbot_R_footSec_reshape01_translateY1.o" "PALBotRN.phl[326]";
connectAttr "PALbot_R_footSec_reshape01_translateZ1.o" "PALBotRN.phl[327]";
connectAttr "PALbot_R_footSec_reshape01_rotateX1.o" "PALBotRN.phl[328]";
connectAttr "PALbot_R_footSec_reshape01_rotateY1.o" "PALBotRN.phl[329]";
connectAttr "PALbot_R_footSec_reshape01_rotateZ1.o" "PALBotRN.phl[330]";
connectAttr "PALbot_R_footSec_reshape02_translateX1.o" "PALBotRN.phl[331]";
connectAttr "PALbot_R_footSec_reshape02_translateY1.o" "PALBotRN.phl[332]";
connectAttr "PALbot_R_footSec_reshape02_translateZ1.o" "PALBotRN.phl[333]";
connectAttr "PALbot_R_footSec_reshape02_rotateX1.o" "PALBotRN.phl[334]";
connectAttr "PALbot_R_footSec_reshape02_rotateY1.o" "PALBotRN.phl[335]";
connectAttr "PALbot_R_footSec_reshape02_rotateZ1.o" "PALBotRN.phl[336]";
connectAttr "PALbot_R_Engine_ctrl_on_off1.o" "PALBotRN.phl[337]";
connectAttr "PALbot_R_Engine_ctrl_translateX1.o" "PALBotRN.phl[338]";
connectAttr "PALbot_R_Engine_ctrl_translateY1.o" "PALBotRN.phl[339]";
connectAttr "PALbot_R_Engine_ctrl_translateZ1.o" "PALBotRN.phl[340]";
connectAttr "PALbot_R_Engine_ctrl_rotateX1.o" "PALBotRN.phl[341]";
connectAttr "PALbot_R_Engine_ctrl_rotateY1.o" "PALBotRN.phl[342]";
connectAttr "PALbot_R_Engine_ctrl_rotateZ1.o" "PALBotRN.phl[343]";
connectAttr "PALbot_R_Engine_ctrl_scaleX1.o" "PALBotRN.phl[344]";
connectAttr "PALbot_R_Engine_ctrl_scaleY1.o" "PALBotRN.phl[345]";
connectAttr "PALbot_R_Engine_ctrl_scaleZ1.o" "PALBotRN.phl[346]";
connectAttr "PALbot_R_IK_Foot_ctrl_Heel_Peel1.o" "PALBotRN.phl[347]";
connectAttr "PALbot_R_IK_Foot_ctrl_follow_hip1.o" "PALBotRN.phl[348]";
connectAttr "PALbot_R_IK_Foot_ctrl_translateZ1.o" "PALBotRN.phl[349]";
connectAttr "PALbot_R_IK_Foot_ctrl_translateX1.o" "PALBotRN.phl[350]";
connectAttr "PALbot_R_IK_Foot_ctrl_translateY1.o" "PALBotRN.phl[351]";
connectAttr "PALbot_R_IK_Foot_ctrl_rotateX1.o" "PALBotRN.phl[352]";
connectAttr "PALbot_R_IK_Foot_ctrl_rotateY1.o" "PALBotRN.phl[353]";
connectAttr "PALbot_R_IK_Foot_ctrl_rotateZ1.o" "PALBotRN.phl[354]";
connectAttr "PALbot_R_IK_heel_lift_tip_rotateX1.o" "PALBotRN.phl[355]";
connectAttr "PALbot_R_IK_heel_lift_tip_rotateY1.o" "PALBotRN.phl[356]";
connectAttr "PALbot_R_IK_heel_lift_tip_rotateZ1.o" "PALBotRN.phl[357]";
connectAttr "PALbot_R_IK_heel_lift_tip_translateX1.o" "PALBotRN.phl[358]";
connectAttr "PALbot_R_IK_heel_lift_tip_translateY1.o" "PALBotRN.phl[359]";
connectAttr "PALbot_R_IK_heel_lift_tip_translateZ1.o" "PALBotRN.phl[360]";
connectAttr "PALbot_R_IK_foot_tip_translateX1.o" "PALBotRN.phl[361]";
connectAttr "PALbot_R_IK_foot_tip_translateY1.o" "PALBotRN.phl[362]";
connectAttr "PALbot_R_IK_foot_tip_translateZ1.o" "PALBotRN.phl[363]";
connectAttr "PALbot_R_IK_foot_tip_rotateX1.o" "PALBotRN.phl[364]";
connectAttr "PALbot_R_IK_foot_tip_rotateY1.o" "PALBotRN.phl[365]";
connectAttr "PALbot_R_IK_foot_tip_rotateZ1.o" "PALBotRN.phl[366]";
connectAttr "PALbot_R_IK_footBall_ctrl_translateX1.o" "PALBotRN.phl[367]";
connectAttr "PALbot_R_IK_footBall_ctrl_translateY1.o" "PALBotRN.phl[368]";
connectAttr "PALbot_R_IK_footBall_ctrl_translateZ1.o" "PALBotRN.phl[369]";
connectAttr "PALbot_R_IK_footBall_ctrl_rotateX1.o" "PALBotRN.phl[370]";
connectAttr "PALbot_R_IK_footBall_ctrl_rotateY1.o" "PALBotRN.phl[371]";
connectAttr "PALbot_R_IK_footBall_ctrl_rotateZ1.o" "PALBotRN.phl[372]";
connectAttr "PALbot_L_HandVIS_Hand_Vis1.o" "PALBotRN.phl[373]";
connectAttr "PALbot_L_HandVIS_canon_light1.o" "PALBotRN.phl[374]";
connectAttr "PALbot_MAIN_global_scale.o" "PALBotRN1.phl[1]";
connectAttr "PALbot_MAIN_Mesh_lock.o" "PALBotRN1.phl[2]";
connectAttr "PALbot_MAIN_translateZ.o" "PALBotRN1.phl[3]";
connectAttr "PALbot_MAIN_translateY.o" "PALBotRN1.phl[4]";
connectAttr "PALbot_MAIN_translateX.o" "PALBotRN1.phl[5]";
connectAttr "PALbot_MAIN_rotateY.o" "PALBotRN1.phl[6]";
connectAttr "PALbot_MAIN_rotateX.o" "PALBotRN1.phl[7]";
connectAttr "PALbot_MAIN_rotateZ.o" "PALBotRN1.phl[8]";
connectAttr "PALbot_root_rotateX.o" "PALBotRN1.phl[9]";
connectAttr "PALbot_root_rotateY.o" "PALBotRN1.phl[10]";
connectAttr "PALbot_root_rotateZ.o" "PALBotRN1.phl[11]";
connectAttr "PALbot_root_translateX.o" "PALBotRN1.phl[12]";
connectAttr "PALbot_root_translateY.o" "PALBotRN1.phl[13]";
connectAttr "PALbot_root_translateZ.o" "PALBotRN1.phl[14]";
connectAttr "PALbot_L_knee_aim_ctrl_space_switch.o" "PALBotRN1.phl[15]";
connectAttr "PALbot_L_knee_aim_ctrl_translateX.o" "PALBotRN1.phl[16]";
connectAttr "PALbot_L_knee_aim_ctrl_translateZ.o" "PALBotRN1.phl[17]";
connectAttr "PALbot_L_knee_aim_ctrl_translateY.o" "PALBotRN1.phl[18]";
connectAttr "PALbot_L_knee_aim_ctrl_rotateX.o" "PALBotRN1.phl[19]";
connectAttr "PALbot_L_knee_aim_ctrl_rotateY.o" "PALBotRN1.phl[20]";
connectAttr "PALbot_L_knee_aim_ctrl_rotateZ.o" "PALBotRN1.phl[21]";
connectAttr "PALbot_L_foot_secondary_rotateX.o" "PALBotRN1.phl[22]";
connectAttr "PALbot_L_foot_secondary_rotateY.o" "PALBotRN1.phl[23]";
connectAttr "PALbot_L_foot_secondary_rotateZ.o" "PALBotRN1.phl[24]";
connectAttr "PALbot_L_foot_secondary_translateX.o" "PALBotRN1.phl[25]";
connectAttr "PALbot_L_foot_secondary_translateY.o" "PALBotRN1.phl[26]";
connectAttr "PALbot_L_foot_secondary_translateZ.o" "PALBotRN1.phl[27]";
connectAttr "PALbot_L_footSec_reshape01_translateX.o" "PALBotRN1.phl[28]";
connectAttr "PALbot_L_footSec_reshape01_translateY.o" "PALBotRN1.phl[29]";
connectAttr "PALbot_L_footSec_reshape01_translateZ.o" "PALBotRN1.phl[30]";
connectAttr "PALbot_L_footSec_reshape01_rotateX.o" "PALBotRN1.phl[31]";
connectAttr "PALbot_L_footSec_reshape01_rotateY.o" "PALBotRN1.phl[32]";
connectAttr "PALbot_L_footSec_reshape01_rotateZ.o" "PALBotRN1.phl[33]";
connectAttr "PALbot_L_footSec_reshape02_translateX.o" "PALBotRN1.phl[34]";
connectAttr "PALbot_L_footSec_reshape02_translateY.o" "PALBotRN1.phl[35]";
connectAttr "PALbot_L_footSec_reshape02_translateZ.o" "PALBotRN1.phl[36]";
connectAttr "PALbot_L_footSec_reshape02_rotateX.o" "PALBotRN1.phl[37]";
connectAttr "PALbot_L_footSec_reshape02_rotateY.o" "PALBotRN1.phl[38]";
connectAttr "PALbot_L_footSec_reshape02_rotateZ.o" "PALBotRN1.phl[39]";
connectAttr "PALbot_L_Engine_ctrl_on_off.o" "PALBotRN1.phl[40]";
connectAttr "PALbot_L_Engine_ctrl_translateX.o" "PALBotRN1.phl[41]";
connectAttr "PALbot_L_Engine_ctrl_translateY.o" "PALBotRN1.phl[42]";
connectAttr "PALbot_L_Engine_ctrl_translateZ.o" "PALBotRN1.phl[43]";
connectAttr "PALbot_L_Engine_ctrl_rotateX.o" "PALBotRN1.phl[44]";
connectAttr "PALbot_L_Engine_ctrl_rotateY.o" "PALBotRN1.phl[45]";
connectAttr "PALbot_L_Engine_ctrl_rotateZ.o" "PALBotRN1.phl[46]";
connectAttr "PALbot_L_Engine_ctrl_scaleX.o" "PALBotRN1.phl[47]";
connectAttr "PALbot_L_Engine_ctrl_scaleY.o" "PALBotRN1.phl[48]";
connectAttr "PALbot_L_Engine_ctrl_scaleZ.o" "PALBotRN1.phl[49]";
connectAttr "PALbot_L_IK_Foot_ctrl_Heel_Peel.o" "PALBotRN1.phl[50]";
connectAttr "PALbot_L_IK_Foot_ctrl_follow_hip.o" "PALBotRN1.phl[51]";
connectAttr "PALbot_L_IK_Foot_ctrl_translateX.o" "PALBotRN1.phl[52]";
connectAttr "PALbot_L_IK_Foot_ctrl_translateZ.o" "PALBotRN1.phl[53]";
connectAttr "PALbot_L_IK_Foot_ctrl_translateY.o" "PALBotRN1.phl[54]";
connectAttr "PALbot_L_IK_Foot_ctrl_rotateX.o" "PALBotRN1.phl[55]";
connectAttr "PALbot_L_IK_Foot_ctrl_rotateY.o" "PALBotRN1.phl[56]";
connectAttr "PALbot_L_IK_Foot_ctrl_rotateZ.o" "PALBotRN1.phl[57]";
connectAttr "PALbot_L_IK_heel_lift_tip_rotateX.o" "PALBotRN1.phl[58]";
connectAttr "PALbot_L_IK_heel_lift_tip_rotateY.o" "PALBotRN1.phl[59]";
connectAttr "PALbot_L_IK_heel_lift_tip_rotateZ.o" "PALBotRN1.phl[60]";
connectAttr "PALbot_L_IK_heel_lift_tip_translateX.o" "PALBotRN1.phl[61]";
connectAttr "PALbot_L_IK_heel_lift_tip_translateY.o" "PALBotRN1.phl[62]";
connectAttr "PALbot_L_IK_heel_lift_tip_translateZ.o" "PALBotRN1.phl[63]";
connectAttr "PALbot_L_IK_foot_tip_translateX.o" "PALBotRN1.phl[64]";
connectAttr "PALbot_L_IK_foot_tip_translateY.o" "PALBotRN1.phl[65]";
connectAttr "PALbot_L_IK_foot_tip_translateZ.o" "PALBotRN1.phl[66]";
connectAttr "PALbot_L_IK_foot_tip_rotateX.o" "PALBotRN1.phl[67]";
connectAttr "PALbot_L_IK_foot_tip_rotateY.o" "PALBotRN1.phl[68]";
connectAttr "PALbot_L_IK_foot_tip_rotateZ.o" "PALBotRN1.phl[69]";
connectAttr "PALbot_L_IK_footBall_ctrl_translateX.o" "PALBotRN1.phl[70]";
connectAttr "PALbot_L_IK_footBall_ctrl_translateY.o" "PALBotRN1.phl[71]";
connectAttr "PALbot_L_IK_footBall_ctrl_translateZ.o" "PALBotRN1.phl[72]";
connectAttr "PALbot_L_IK_footBall_ctrl_rotateX.o" "PALBotRN1.phl[73]";
connectAttr "PALbot_L_IK_footBall_ctrl_rotateY.o" "PALBotRN1.phl[74]";
connectAttr "PALbot_L_IK_footBall_ctrl_rotateZ.o" "PALBotRN1.phl[75]";
connectAttr "PALbot_R_HandVIS_Hand_Vis.o" "PALBotRN1.phl[76]";
connectAttr "PALbot_R_HandVIS_canon_light.o" "PALBotRN1.phl[77]";
connectAttr "PALbot_cog_ctrl_secondary_vis.o" "PALBotRN1.phl[78]";
connectAttr "PALbot_cog_ctrl_translateY.o" "PALBotRN1.phl[79]";
connectAttr "PALbot_cog_ctrl_translateZ.o" "PALBotRN1.phl[80]";
connectAttr "PALbot_cog_ctrl_translateX.o" "PALBotRN1.phl[81]";
connectAttr "PALbot_cog_ctrl_rotateX.o" "PALBotRN1.phl[82]";
connectAttr "PALbot_cog_ctrl_rotateY.o" "PALBotRN1.phl[83]";
connectAttr "PALbot_cog_ctrl_rotateZ.o" "PALBotRN1.phl[84]";
connectAttr "PALbot_chestUp_ctrl_secondary_vis.o" "PALBotRN1.phl[85]";
connectAttr "PALbot_chestUp_ctrl_rotateY.o" "PALBotRN1.phl[86]";
connectAttr "PALbot_chestUp_ctrl_rotateX.o" "PALBotRN1.phl[87]";
connectAttr "PALbot_chestUp_ctrl_rotateZ.o" "PALBotRN1.phl[88]";
connectAttr "PALbot_chestUp_ctrl_translateX.o" "PALBotRN1.phl[89]";
connectAttr "PALbot_chestUp_ctrl_translateY.o" "PALBotRN1.phl[90]";
connectAttr "PALbot_chestUp_ctrl_translateZ.o" "PALBotRN1.phl[91]";
connectAttr "PALbot_Neck_ctrl_translateX.o" "PALBotRN1.phl[92]";
connectAttr "PALbot_Neck_ctrl_translateY.o" "PALBotRN1.phl[93]";
connectAttr "PALbot_Neck_ctrl_translateZ.o" "PALBotRN1.phl[94]";
connectAttr "PALbot_Neck_ctrl_rotateY.o" "PALBotRN1.phl[95]";
connectAttr "PALbot_Neck_ctrl_rotateX.o" "PALBotRN1.phl[96]";
connectAttr "PALbot_Neck_ctrl_rotateZ.o" "PALBotRN1.phl[97]";
connectAttr "PALbot_head_ctrl_Space_switch.o" "PALBotRN1.phl[98]";
connectAttr "PALbot_head_ctrl_FaceLight.o" "PALBotRN1.phl[99]";
connectAttr "PALbot_head_ctrl_Led_color.o" "PALBotRN1.phl[100]";
connectAttr "PALbot_head_ctrl_Face_Drawing.o" "PALBotRN1.phl[101]";
connectAttr "PALbot_head_ctrl_rotateY.o" "PALBotRN1.phl[102]";
connectAttr "PALbot_head_ctrl_rotateX.o" "PALBotRN1.phl[103]";
connectAttr "PALbot_head_ctrl_rotateZ.o" "PALBotRN1.phl[104]";
connectAttr "PALbot_head_ctrl_translateX.o" "PALBotRN1.phl[105]";
connectAttr "PALbot_head_ctrl_translateY.o" "PALBotRN1.phl[106]";
connectAttr "PALbot_head_ctrl_translateZ.o" "PALBotRN1.phl[107]";
connectAttr "PALbot_R_Clavicle_ctrl_translateX.o" "PALBotRN1.phl[108]";
connectAttr "PALbot_R_Clavicle_ctrl_translateY.o" "PALBotRN1.phl[109]";
connectAttr "PALbot_R_Clavicle_ctrl_translateZ.o" "PALBotRN1.phl[110]";
connectAttr "PALbot_R_Clavicle_ctrl_rotateX.o" "PALBotRN1.phl[111]";
connectAttr "PALbot_R_Clavicle_ctrl_rotateY.o" "PALBotRN1.phl[112]";
connectAttr "PALbot_R_Clavicle_ctrl_rotateZ.o" "PALBotRN1.phl[113]";
connectAttr "PALbot_L_ShoulderRotate_ctrl_rotateZ.o" "PALBotRN1.phl[114]";
connectAttr "PALbot_L_ShoulderRotate_ctrl_translateX.o" "PALBotRN1.phl[115]";
connectAttr "PALbot_L_ShoulderRotate_ctrl_translateY.o" "PALBotRN1.phl[116]";
connectAttr "PALbot_L_ShoulderRotate_ctrl_translateZ.o" "PALBotRN1.phl[117]";
connectAttr "PALbot_L_Arm_ctrl_rotateZ.o" "PALBotRN1.phl[118]";
connectAttr "PALbot_L_Arm_ctrl_rotateY.o" "PALBotRN1.phl[119]";
connectAttr "PALbot_L_Arm_ctrl_translateX.o" "PALBotRN1.phl[120]";
connectAttr "PALbot_L_Arm_ctrl_translateY.o" "PALBotRN1.phl[121]";
connectAttr "PALbot_L_Arm_ctrl_translateZ.o" "PALBotRN1.phl[122]";
connectAttr "PALbot_R_FK_Elbow_ctrl_rotateX.o" "PALBotRN1.phl[123]";
connectAttr "PALbot_R_FK_Elbow_ctrl_translateX.o" "PALBotRN1.phl[124]";
connectAttr "PALbot_R_FK_Elbow_ctrl_translateY.o" "PALBotRN1.phl[125]";
connectAttr "PALbot_R_FK_Elbow_ctrl_translateZ.o" "PALBotRN1.phl[126]";
connectAttr "PALbot_R_FK_Wrist_ctrl_translateX.o" "PALBotRN1.phl[127]";
connectAttr "PALbot_R_FK_Wrist_ctrl_translateY.o" "PALBotRN1.phl[128]";
connectAttr "PALbot_R_FK_Wrist_ctrl_translateZ.o" "PALBotRN1.phl[129]";
connectAttr "PALbot_R_FK_Wrist_ctrl_rotateY.o" "PALBotRN1.phl[130]";
connectAttr "PALbot_R_FK_Wrist_ctrl_rotateX.o" "PALBotRN1.phl[131]";
connectAttr "PALbot_R_FK_Wrist_ctrl_rotateZ.o" "PALBotRN1.phl[132]";
connectAttr "PALbot_R_arm_IK_FK_switch_IK_FK.o" "PALBotRN1.phl[133]";
connectAttr "PALbot_L_Clavicle_ctrl_translateX.o" "PALBotRN1.phl[134]";
connectAttr "PALbot_L_Clavicle_ctrl_translateY.o" "PALBotRN1.phl[135]";
connectAttr "PALbot_L_Clavicle_ctrl_translateZ.o" "PALBotRN1.phl[136]";
connectAttr "PALbot_L_Clavicle_ctrl_rotateX.o" "PALBotRN1.phl[137]";
connectAttr "PALbot_L_Clavicle_ctrl_rotateY.o" "PALBotRN1.phl[138]";
connectAttr "PALbot_L_Clavicle_ctrl_rotateZ.o" "PALBotRN1.phl[139]";
connectAttr "PALbot_L_ShoulderRotate_ctrl_rotateZ1.o" "PALBotRN1.phl[140]";
connectAttr "PALbot_L_ShoulderRotate_ctrl_translateX1.o" "PALBotRN1.phl[141]";
connectAttr "PALbot_L_ShoulderRotate_ctrl_translateY1.o" "PALBotRN1.phl[142]";
connectAttr "PALbot_L_ShoulderRotate_ctrl_translateZ1.o" "PALBotRN1.phl[143]";
connectAttr "PALbot_L_Arm_ctrl_rotateZ1.o" "PALBotRN1.phl[144]";
connectAttr "PALbot_L_Arm_ctrl_rotateY1.o" "PALBotRN1.phl[145]";
connectAttr "PALbot_L_Arm_ctrl_translateX1.o" "PALBotRN1.phl[146]";
connectAttr "PALbot_L_Arm_ctrl_translateY1.o" "PALBotRN1.phl[147]";
connectAttr "PALbot_L_Arm_ctrl_translateZ1.o" "PALBotRN1.phl[148]";
connectAttr "PALbot_L_FK_Elbow_ctrl_rotateX.o" "PALBotRN1.phl[149]";
connectAttr "PALbot_L_FK_Elbow_ctrl_translateX.o" "PALBotRN1.phl[150]";
connectAttr "PALbot_L_FK_Elbow_ctrl_translateY.o" "PALBotRN1.phl[151]";
connectAttr "PALbot_L_FK_Elbow_ctrl_translateZ.o" "PALBotRN1.phl[152]";
connectAttr "PALbot_L_FK_Wrist_ctrl_translateX.o" "PALBotRN1.phl[153]";
connectAttr "PALbot_L_FK_Wrist_ctrl_translateY.o" "PALBotRN1.phl[154]";
connectAttr "PALbot_L_FK_Wrist_ctrl_translateZ.o" "PALBotRN1.phl[155]";
connectAttr "PALbot_L_FK_Wrist_ctrl_rotateY.o" "PALBotRN1.phl[156]";
connectAttr "PALbot_L_FK_Wrist_ctrl_rotateX.o" "PALBotRN1.phl[157]";
connectAttr "PALbot_L_FK_Wrist_ctrl_rotateZ.o" "PALBotRN1.phl[158]";
connectAttr "PALbot_L_arm_IK_FK_switch_IK_FK.o" "PALBotRN1.phl[159]";
connectAttr "PALbot_hipMain_ctrl_translateX.o" "PALBotRN1.phl[160]";
connectAttr "PALbot_hipMain_ctrl_translateY.o" "PALBotRN1.phl[161]";
connectAttr "PALbot_hipMain_ctrl_translateZ.o" "PALBotRN1.phl[162]";
connectAttr "PALbot_hipMain_ctrl_rotateX.o" "PALBotRN1.phl[163]";
connectAttr "PALbot_hipMain_ctrl_rotateY.o" "PALBotRN1.phl[164]";
connectAttr "PALbot_hipMain_ctrl_rotateZ.o" "PALBotRN1.phl[165]";
connectAttr "PALbot_R_hip_translateX.o" "PALBotRN1.phl[166]";
connectAttr "PALbot_R_hip_translateY.o" "PALBotRN1.phl[167]";
connectAttr "PALbot_R_hip_translateZ.o" "PALBotRN1.phl[168]";
connectAttr "PALbot_R_hip_rotateX.o" "PALBotRN1.phl[169]";
connectAttr "PALbot_R_hip_rotateY.o" "PALBotRN1.phl[170]";
connectAttr "PALbot_R_hip_rotateZ.o" "PALBotRN1.phl[171]";
connectAttr "PALbot_R_leg_IK_FK_switch_IK_FK.o" "PALBotRN1.phl[172]";
connectAttr "PALbot_L_hip_translateX.o" "PALBotRN1.phl[173]";
connectAttr "PALbot_L_hip_translateY.o" "PALBotRN1.phl[174]";
connectAttr "PALbot_L_hip_translateZ.o" "PALBotRN1.phl[175]";
connectAttr "PALbot_L_hip_rotateX.o" "PALBotRN1.phl[176]";
connectAttr "PALbot_L_hip_rotateY.o" "PALBotRN1.phl[177]";
connectAttr "PALbot_L_hip_rotateZ.o" "PALBotRN1.phl[178]";
connectAttr "PALbot_L_leg_IK_FK_switch_IK_FK.o" "PALBotRN1.phl[179]";
connectAttr "PALbot_L_Thumb01_ctrl_translateX.o" "PALBotRN1.phl[180]";
connectAttr "PALbot_L_Thumb01_ctrl_translateY.o" "PALBotRN1.phl[181]";
connectAttr "PALbot_L_Thumb01_ctrl_translateZ.o" "PALBotRN1.phl[182]";
connectAttr "PALbot_L_Thumb01_ctrl_rotateX.o" "PALBotRN1.phl[183]";
connectAttr "PALbot_L_Thumb01_ctrl_rotateY.o" "PALBotRN1.phl[184]";
connectAttr "PALbot_L_Thumb01_ctrl_rotateZ.o" "PALBotRN1.phl[185]";
connectAttr "PALbot_L_Thumb02_ctrl_translateX.o" "PALBotRN1.phl[186]";
connectAttr "PALbot_L_Thumb02_ctrl_translateY.o" "PALBotRN1.phl[187]";
connectAttr "PALbot_L_Thumb02_ctrl_translateZ.o" "PALBotRN1.phl[188]";
connectAttr "PALbot_L_Thumb02_ctrl_rotateX.o" "PALBotRN1.phl[189]";
connectAttr "PALbot_L_Thumb02_ctrl_rotateY.o" "PALBotRN1.phl[190]";
connectAttr "PALbot_L_Thumb02_ctrl_rotateZ.o" "PALBotRN1.phl[191]";
connectAttr "PALbot_L_Thumb03_ctrl_translateX.o" "PALBotRN1.phl[192]";
connectAttr "PALbot_L_Thumb03_ctrl_translateY.o" "PALBotRN1.phl[193]";
connectAttr "PALbot_L_Thumb03_ctrl_translateZ.o" "PALBotRN1.phl[194]";
connectAttr "PALbot_L_Thumb03_ctrl_rotateX.o" "PALBotRN1.phl[195]";
connectAttr "PALbot_L_Thumb03_ctrl_rotateY.o" "PALBotRN1.phl[196]";
connectAttr "PALbot_L_Thumb03_ctrl_rotateZ.o" "PALBotRN1.phl[197]";
connectAttr "PALbot_L_Index01_ctrl_translateX.o" "PALBotRN1.phl[198]";
connectAttr "PALbot_L_Index01_ctrl_translateY.o" "PALBotRN1.phl[199]";
connectAttr "PALbot_L_Index01_ctrl_translateZ.o" "PALBotRN1.phl[200]";
connectAttr "PALbot_L_Index01_ctrl_rotateX.o" "PALBotRN1.phl[201]";
connectAttr "PALbot_L_Index01_ctrl_rotateY.o" "PALBotRN1.phl[202]";
connectAttr "PALbot_L_Index01_ctrl_rotateZ.o" "PALBotRN1.phl[203]";
connectAttr "PALbot_L_Index02_ctrl_translateX.o" "PALBotRN1.phl[204]";
connectAttr "PALbot_L_Index02_ctrl_translateY.o" "PALBotRN1.phl[205]";
connectAttr "PALbot_L_Index02_ctrl_translateZ.o" "PALBotRN1.phl[206]";
connectAttr "PALbot_L_Index02_ctrl_rotateX.o" "PALBotRN1.phl[207]";
connectAttr "PALbot_L_Index02_ctrl_rotateY.o" "PALBotRN1.phl[208]";
connectAttr "PALbot_L_Index02_ctrl_rotateZ.o" "PALBotRN1.phl[209]";
connectAttr "PALbot_L_Middle01_ctrl_translateX.o" "PALBotRN1.phl[210]";
connectAttr "PALbot_L_Middle01_ctrl_translateY.o" "PALBotRN1.phl[211]";
connectAttr "PALbot_L_Middle01_ctrl_translateZ.o" "PALBotRN1.phl[212]";
connectAttr "PALbot_L_Middle01_ctrl_rotateX.o" "PALBotRN1.phl[213]";
connectAttr "PALbot_L_Middle01_ctrl_rotateY.o" "PALBotRN1.phl[214]";
connectAttr "PALbot_L_Middle01_ctrl_rotateZ.o" "PALBotRN1.phl[215]";
connectAttr "PALbot_L_Middle02_ctrl_translateX.o" "PALBotRN1.phl[216]";
connectAttr "PALbot_L_Middle02_ctrl_translateY.o" "PALBotRN1.phl[217]";
connectAttr "PALbot_L_Middle02_ctrl_translateZ.o" "PALBotRN1.phl[218]";
connectAttr "PALbot_L_Middle02_ctrl_rotateX.o" "PALBotRN1.phl[219]";
connectAttr "PALbot_L_Middle02_ctrl_rotateY.o" "PALBotRN1.phl[220]";
connectAttr "PALbot_L_Middle02_ctrl_rotateZ.o" "PALBotRN1.phl[221]";
connectAttr "PALbot_L_Ring01_ctrl_translateX.o" "PALBotRN1.phl[222]";
connectAttr "PALbot_L_Ring01_ctrl_translateY.o" "PALBotRN1.phl[223]";
connectAttr "PALbot_L_Ring01_ctrl_translateZ.o" "PALBotRN1.phl[224]";
connectAttr "PALbot_L_Ring01_ctrl_rotateX.o" "PALBotRN1.phl[225]";
connectAttr "PALbot_L_Ring01_ctrl_rotateY.o" "PALBotRN1.phl[226]";
connectAttr "PALbot_L_Ring01_ctrl_rotateZ.o" "PALBotRN1.phl[227]";
connectAttr "PALbot_L_Ring02_ctrl_translateX.o" "PALBotRN1.phl[228]";
connectAttr "PALbot_L_Ring02_ctrl_translateY.o" "PALBotRN1.phl[229]";
connectAttr "PALbot_L_Ring02_ctrl_translateZ.o" "PALBotRN1.phl[230]";
connectAttr "PALbot_L_Ring02_ctrl_rotateX.o" "PALBotRN1.phl[231]";
connectAttr "PALbot_L_Ring02_ctrl_rotateY.o" "PALBotRN1.phl[232]";
connectAttr "PALbot_L_Ring02_ctrl_rotateZ.o" "PALBotRN1.phl[233]";
connectAttr "PALbot_L_Pinky01_ctrl_translateX.o" "PALBotRN1.phl[234]";
connectAttr "PALbot_L_Pinky01_ctrl_translateY.o" "PALBotRN1.phl[235]";
connectAttr "PALbot_L_Pinky01_ctrl_translateZ.o" "PALBotRN1.phl[236]";
connectAttr "PALbot_L_Pinky01_ctrl_rotateX.o" "PALBotRN1.phl[237]";
connectAttr "PALbot_L_Pinky01_ctrl_rotateY.o" "PALBotRN1.phl[238]";
connectAttr "PALbot_L_Pinky01_ctrl_rotateZ.o" "PALBotRN1.phl[239]";
connectAttr "PALbot_L_Pinky02_ctrl_translateX.o" "PALBotRN1.phl[240]";
connectAttr "PALbot_L_Pinky02_ctrl_translateY.o" "PALBotRN1.phl[241]";
connectAttr "PALbot_L_Pinky02_ctrl_translateZ.o" "PALBotRN1.phl[242]";
connectAttr "PALbot_L_Pinky02_ctrl_rotateX.o" "PALBotRN1.phl[243]";
connectAttr "PALbot_L_Pinky02_ctrl_rotateY.o" "PALBotRN1.phl[244]";
connectAttr "PALbot_L_Pinky02_ctrl_rotateZ.o" "PALBotRN1.phl[245]";
connectAttr "PALbot_R_Thumb01_ctrl_translateX.o" "PALBotRN1.phl[246]";
connectAttr "PALbot_R_Thumb01_ctrl_translateY.o" "PALBotRN1.phl[247]";
connectAttr "PALbot_R_Thumb01_ctrl_translateZ.o" "PALBotRN1.phl[248]";
connectAttr "PALbot_R_Thumb01_ctrl_rotateX.o" "PALBotRN1.phl[249]";
connectAttr "PALbot_R_Thumb01_ctrl_rotateY.o" "PALBotRN1.phl[250]";
connectAttr "PALbot_R_Thumb01_ctrl_rotateZ.o" "PALBotRN1.phl[251]";
connectAttr "PALbot_R_Thumb02_ctrl_translateX.o" "PALBotRN1.phl[252]";
connectAttr "PALbot_R_Thumb02_ctrl_translateY.o" "PALBotRN1.phl[253]";
connectAttr "PALbot_R_Thumb02_ctrl_translateZ.o" "PALBotRN1.phl[254]";
connectAttr "PALbot_R_Thumb02_ctrl_rotateX.o" "PALBotRN1.phl[255]";
connectAttr "PALbot_R_Thumb02_ctrl_rotateY.o" "PALBotRN1.phl[256]";
connectAttr "PALbot_R_Thumb02_ctrl_rotateZ.o" "PALBotRN1.phl[257]";
connectAttr "PALbot_R_Thumb03_ctrl_translateX.o" "PALBotRN1.phl[258]";
connectAttr "PALbot_R_Thumb03_ctrl_translateY.o" "PALBotRN1.phl[259]";
connectAttr "PALbot_R_Thumb03_ctrl_translateZ.o" "PALBotRN1.phl[260]";
connectAttr "PALbot_R_Thumb03_ctrl_rotateX.o" "PALBotRN1.phl[261]";
connectAttr "PALbot_R_Thumb03_ctrl_rotateY.o" "PALBotRN1.phl[262]";
connectAttr "PALbot_R_Thumb03_ctrl_rotateZ.o" "PALBotRN1.phl[263]";
connectAttr "PALbot_R_Index01_ctrl_translateX.o" "PALBotRN1.phl[264]";
connectAttr "PALbot_R_Index01_ctrl_translateY.o" "PALBotRN1.phl[265]";
connectAttr "PALbot_R_Index01_ctrl_translateZ.o" "PALBotRN1.phl[266]";
connectAttr "PALbot_R_Index01_ctrl_rotateX.o" "PALBotRN1.phl[267]";
connectAttr "PALbot_R_Index01_ctrl_rotateY.o" "PALBotRN1.phl[268]";
connectAttr "PALbot_R_Index01_ctrl_rotateZ.o" "PALBotRN1.phl[269]";
connectAttr "PALbot_R_Index02_ctrl_translateX.o" "PALBotRN1.phl[270]";
connectAttr "PALbot_R_Index02_ctrl_translateY.o" "PALBotRN1.phl[271]";
connectAttr "PALbot_R_Index02_ctrl_translateZ.o" "PALBotRN1.phl[272]";
connectAttr "PALbot_R_Index02_ctrl_rotateX.o" "PALBotRN1.phl[273]";
connectAttr "PALbot_R_Index02_ctrl_rotateY.o" "PALBotRN1.phl[274]";
connectAttr "PALbot_R_Index02_ctrl_rotateZ.o" "PALBotRN1.phl[275]";
connectAttr "PALbot_R_Middle01_ctrl_translateX.o" "PALBotRN1.phl[276]";
connectAttr "PALbot_R_Middle01_ctrl_translateY.o" "PALBotRN1.phl[277]";
connectAttr "PALbot_R_Middle01_ctrl_translateZ.o" "PALBotRN1.phl[278]";
connectAttr "PALbot_R_Middle01_ctrl_rotateX.o" "PALBotRN1.phl[279]";
connectAttr "PALbot_R_Middle01_ctrl_rotateY.o" "PALBotRN1.phl[280]";
connectAttr "PALbot_R_Middle01_ctrl_rotateZ.o" "PALBotRN1.phl[281]";
connectAttr "PALbot_R_Middle02_ctrl_translateX.o" "PALBotRN1.phl[282]";
connectAttr "PALbot_R_Middle02_ctrl_translateY.o" "PALBotRN1.phl[283]";
connectAttr "PALbot_R_Middle02_ctrl_translateZ.o" "PALBotRN1.phl[284]";
connectAttr "PALbot_R_Middle02_ctrl_rotateX.o" "PALBotRN1.phl[285]";
connectAttr "PALbot_R_Middle02_ctrl_rotateY.o" "PALBotRN1.phl[286]";
connectAttr "PALbot_R_Middle02_ctrl_rotateZ.o" "PALBotRN1.phl[287]";
connectAttr "PALbot_R_Ring01_ctrl_translateX.o" "PALBotRN1.phl[288]";
connectAttr "PALbot_R_Ring01_ctrl_translateY.o" "PALBotRN1.phl[289]";
connectAttr "PALbot_R_Ring01_ctrl_translateZ.o" "PALBotRN1.phl[290]";
connectAttr "PALbot_R_Ring01_ctrl_rotateX.o" "PALBotRN1.phl[291]";
connectAttr "PALbot_R_Ring01_ctrl_rotateY.o" "PALBotRN1.phl[292]";
connectAttr "PALbot_R_Ring01_ctrl_rotateZ.o" "PALBotRN1.phl[293]";
connectAttr "PALbot_R_Ring02_ctrl_translateX.o" "PALBotRN1.phl[294]";
connectAttr "PALbot_R_Ring02_ctrl_translateY.o" "PALBotRN1.phl[295]";
connectAttr "PALbot_R_Ring02_ctrl_translateZ.o" "PALBotRN1.phl[296]";
connectAttr "PALbot_R_Ring02_ctrl_rotateX.o" "PALBotRN1.phl[297]";
connectAttr "PALbot_R_Ring02_ctrl_rotateY.o" "PALBotRN1.phl[298]";
connectAttr "PALbot_R_Ring02_ctrl_rotateZ.o" "PALBotRN1.phl[299]";
connectAttr "PALbot_R_Pinky01_ctrl_translateX.o" "PALBotRN1.phl[300]";
connectAttr "PALbot_R_Pinky01_ctrl_translateY.o" "PALBotRN1.phl[301]";
connectAttr "PALbot_R_Pinky01_ctrl_translateZ.o" "PALBotRN1.phl[302]";
connectAttr "PALbot_R_Pinky01_ctrl_rotateX.o" "PALBotRN1.phl[303]";
connectAttr "PALbot_R_Pinky01_ctrl_rotateY.o" "PALBotRN1.phl[304]";
connectAttr "PALbot_R_Pinky01_ctrl_rotateZ.o" "PALBotRN1.phl[305]";
connectAttr "PALbot_R_Pinky02_ctrl_translateX.o" "PALBotRN1.phl[306]";
connectAttr "PALbot_R_Pinky02_ctrl_translateY.o" "PALBotRN1.phl[307]";
connectAttr "PALbot_R_Pinky02_ctrl_translateZ.o" "PALBotRN1.phl[308]";
connectAttr "PALbot_R_Pinky02_ctrl_rotateX.o" "PALBotRN1.phl[309]";
connectAttr "PALbot_R_Pinky02_ctrl_rotateY.o" "PALBotRN1.phl[310]";
connectAttr "PALbot_R_Pinky02_ctrl_rotateZ.o" "PALBotRN1.phl[311]";
connectAttr "PALbot_R_knee_aim_ctrl_space_switch.o" "PALBotRN1.phl[312]";
connectAttr "PALbot_R_knee_aim_ctrl_translateX.o" "PALBotRN1.phl[313]";
connectAttr "PALbot_R_knee_aim_ctrl_translateZ.o" "PALBotRN1.phl[314]";
connectAttr "PALbot_R_knee_aim_ctrl_translateY.o" "PALBotRN1.phl[315]";
connectAttr "PALbot_R_knee_aim_ctrl_rotateX.o" "PALBotRN1.phl[316]";
connectAttr "PALbot_R_knee_aim_ctrl_rotateY.o" "PALBotRN1.phl[317]";
connectAttr "PALbot_R_knee_aim_ctrl_rotateZ.o" "PALBotRN1.phl[318]";
connectAttr "PALbot_R_foot_secondary_rotateX.o" "PALBotRN1.phl[319]";
connectAttr "PALbot_R_foot_secondary_rotateY.o" "PALBotRN1.phl[320]";
connectAttr "PALbot_R_foot_secondary_rotateZ.o" "PALBotRN1.phl[321]";
connectAttr "PALbot_R_foot_secondary_translateX.o" "PALBotRN1.phl[322]";
connectAttr "PALbot_R_foot_secondary_translateY.o" "PALBotRN1.phl[323]";
connectAttr "PALbot_R_foot_secondary_translateZ.o" "PALBotRN1.phl[324]";
connectAttr "PALbot_R_footSec_reshape01_translateX.o" "PALBotRN1.phl[325]";
connectAttr "PALbot_R_footSec_reshape01_translateY.o" "PALBotRN1.phl[326]";
connectAttr "PALbot_R_footSec_reshape01_translateZ.o" "PALBotRN1.phl[327]";
connectAttr "PALbot_R_footSec_reshape01_rotateX.o" "PALBotRN1.phl[328]";
connectAttr "PALbot_R_footSec_reshape01_rotateY.o" "PALBotRN1.phl[329]";
connectAttr "PALbot_R_footSec_reshape01_rotateZ.o" "PALBotRN1.phl[330]";
connectAttr "PALbot_R_footSec_reshape02_translateX.o" "PALBotRN1.phl[331]";
connectAttr "PALbot_R_footSec_reshape02_translateY.o" "PALBotRN1.phl[332]";
connectAttr "PALbot_R_footSec_reshape02_translateZ.o" "PALBotRN1.phl[333]";
connectAttr "PALbot_R_footSec_reshape02_rotateX.o" "PALBotRN1.phl[334]";
connectAttr "PALbot_R_footSec_reshape02_rotateY.o" "PALBotRN1.phl[335]";
connectAttr "PALbot_R_footSec_reshape02_rotateZ.o" "PALBotRN1.phl[336]";
connectAttr "PALbot_R_Engine_ctrl_on_off.o" "PALBotRN1.phl[337]";
connectAttr "PALbot_R_Engine_ctrl_translateX.o" "PALBotRN1.phl[338]";
connectAttr "PALbot_R_Engine_ctrl_translateY.o" "PALBotRN1.phl[339]";
connectAttr "PALbot_R_Engine_ctrl_translateZ.o" "PALBotRN1.phl[340]";
connectAttr "PALbot_R_Engine_ctrl_rotateX.o" "PALBotRN1.phl[341]";
connectAttr "PALbot_R_Engine_ctrl_rotateY.o" "PALBotRN1.phl[342]";
connectAttr "PALbot_R_Engine_ctrl_rotateZ.o" "PALBotRN1.phl[343]";
connectAttr "PALbot_R_Engine_ctrl_scaleX.o" "PALBotRN1.phl[344]";
connectAttr "PALbot_R_Engine_ctrl_scaleY.o" "PALBotRN1.phl[345]";
connectAttr "PALbot_R_Engine_ctrl_scaleZ.o" "PALBotRN1.phl[346]";
connectAttr "PALbot_R_IK_Foot_ctrl_Heel_Peel.o" "PALBotRN1.phl[347]";
connectAttr "PALbot_R_IK_Foot_ctrl_follow_hip.o" "PALBotRN1.phl[348]";
connectAttr "PALbot_R_IK_Foot_ctrl_translateX.o" "PALBotRN1.phl[349]";
connectAttr "PALbot_R_IK_Foot_ctrl_translateZ.o" "PALBotRN1.phl[350]";
connectAttr "PALbot_R_IK_Foot_ctrl_translateY.o" "PALBotRN1.phl[351]";
connectAttr "PALbot_R_IK_Foot_ctrl_rotateX.o" "PALBotRN1.phl[352]";
connectAttr "PALbot_R_IK_Foot_ctrl_rotateY.o" "PALBotRN1.phl[353]";
connectAttr "PALbot_R_IK_Foot_ctrl_rotateZ.o" "PALBotRN1.phl[354]";
connectAttr "PALbot_R_IK_heel_lift_tip_rotateX.o" "PALBotRN1.phl[355]";
connectAttr "PALbot_R_IK_heel_lift_tip_rotateY.o" "PALBotRN1.phl[356]";
connectAttr "PALbot_R_IK_heel_lift_tip_rotateZ.o" "PALBotRN1.phl[357]";
connectAttr "PALbot_R_IK_heel_lift_tip_translateX.o" "PALBotRN1.phl[358]";
connectAttr "PALbot_R_IK_heel_lift_tip_translateY.o" "PALBotRN1.phl[359]";
connectAttr "PALbot_R_IK_heel_lift_tip_translateZ.o" "PALBotRN1.phl[360]";
connectAttr "PALbot_R_IK_foot_tip_translateX.o" "PALBotRN1.phl[361]";
connectAttr "PALbot_R_IK_foot_tip_translateY.o" "PALBotRN1.phl[362]";
connectAttr "PALbot_R_IK_foot_tip_translateZ.o" "PALBotRN1.phl[363]";
connectAttr "PALbot_R_IK_foot_tip_rotateX.o" "PALBotRN1.phl[364]";
connectAttr "PALbot_R_IK_foot_tip_rotateY.o" "PALBotRN1.phl[365]";
connectAttr "PALbot_R_IK_foot_tip_rotateZ.o" "PALBotRN1.phl[366]";
connectAttr "PALbot_R_IK_footBall_ctrl_translateX.o" "PALBotRN1.phl[367]";
connectAttr "PALbot_R_IK_footBall_ctrl_translateY.o" "PALBotRN1.phl[368]";
connectAttr "PALbot_R_IK_footBall_ctrl_translateZ.o" "PALBotRN1.phl[369]";
connectAttr "PALbot_R_IK_footBall_ctrl_rotateX.o" "PALBotRN1.phl[370]";
connectAttr "PALbot_R_IK_footBall_ctrl_rotateY.o" "PALBotRN1.phl[371]";
connectAttr "PALbot_R_IK_footBall_ctrl_rotateZ.o" "PALBotRN1.phl[372]";
connectAttr "PALbot_L_HandVIS_Hand_Vis.o" "PALBotRN1.phl[373]";
connectAttr "PALbot_L_HandVIS_canon_light.o" "PALBotRN1.phl[374]";
connectAttr "pCylinder1_translateX.o" "pCylinder1.tx";
connectAttr "pCylinder1_translateY.o" "pCylinder1.ty";
connectAttr "pCylinder1_translateZ.o" "pCylinder1.tz";
connectAttr "pCylinder1_visibility.o" "pCylinder1.v";
connectAttr "pCylinder1_rotateX.o" "pCylinder1.rx";
connectAttr "pCylinder1_rotateY.o" "pCylinder1.ry";
connectAttr "pCylinder1_rotateZ.o" "pCylinder1.rz";
connectAttr "pCylinder1_scaleX.o" "pCylinder1.sx";
connectAttr "pCylinder1_scaleY.o" "pCylinder1.sy";
connectAttr "pCylinder1_scaleZ.o" "pCylinder1.sz";
connectAttr "polyCylinder1.out" "pCylinderShape1.i";
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
connectAttr "pCylinder2_translateX.o" "pCylinder2.tx";
connectAttr "pCylinder2_translateY.o" "pCylinder2.ty";
connectAttr "pCylinder2_translateZ.o" "pCylinder2.tz";
connectAttr "polyCylinder2.out" "pCylinderShape2.i";
connectAttr ":time1.o" "hunte__dev__Hair_Ribbon__1_01.inTime";
connectAttr "hunte__dev__Hair_Ribbon__1_01.outputObjects[0].outputObjectTranslate" "|hunte__dev__Hair_Ribbon__1_01|geo1.t"
		;
connectAttr "hunte__dev__Hair_Ribbon__1_01.outputObjects[0].outputObjectRotate" "|hunte__dev__Hair_Ribbon__1_01|geo1.r"
		;
connectAttr "hunte__dev__Hair_Ribbon__1_01.outputObjects[0].outputObjectScale" "|hunte__dev__Hair_Ribbon__1_01|geo1.s"
		;
connectAttr "hunte__dev__Hair_Ribbon__1_01.outputObjects[0].outputGeos[0].outputParts[0].outputPartMeshData" "|hunte__dev__Hair_Ribbon__1_01|geo1|uvunwrap1_0|uvunwrap1_0Shape.i"
		;
connectAttr ":time1.o" "hunte__dev__Basic_Chair__1_01.inTime";
connectAttr "hunte__dev__Basic_Chair__1_01.outputObjects[0].outputObjectTranslate" "|hunte__dev__Basic_Chair__1_01|geo1.t"
		;
connectAttr "hunte__dev__Basic_Chair__1_01.outputObjects[0].outputObjectRotate" "|hunte__dev__Basic_Chair__1_01|geo1.r"
		;
connectAttr "hunte__dev__Basic_Chair__1_01.outputObjects[0].outputObjectScale" "|hunte__dev__Basic_Chair__1_01|geo1.s"
		;
connectAttr "uvunwrap1_0_scaleX.o" "|hunte__dev__Basic_Chair__1_01|geo1|uvunwrap1_0.sx"
		;
connectAttr "uvunwrap1_0_scaleY.o" "|hunte__dev__Basic_Chair__1_01|geo1|uvunwrap1_0.sy"
		;
connectAttr "uvunwrap1_0_scaleZ.o" "|hunte__dev__Basic_Chair__1_01|geo1|uvunwrap1_0.sz"
		;
connectAttr "uvunwrap1_0_visibility.o" "|hunte__dev__Basic_Chair__1_01|geo1|uvunwrap1_0.v"
		;
connectAttr "uvunwrap1_0_translateX.o" "|hunte__dev__Basic_Chair__1_01|geo1|uvunwrap1_0.tx"
		;
connectAttr "uvunwrap1_0_translateY.o" "|hunte__dev__Basic_Chair__1_01|geo1|uvunwrap1_0.ty"
		;
connectAttr "uvunwrap1_0_translateZ.o" "|hunte__dev__Basic_Chair__1_01|geo1|uvunwrap1_0.tz"
		;
connectAttr "uvunwrap1_0_rotateX.o" "|hunte__dev__Basic_Chair__1_01|geo1|uvunwrap1_0.rx"
		;
connectAttr "uvunwrap1_0_rotateY.o" "|hunte__dev__Basic_Chair__1_01|geo1|uvunwrap1_0.ry"
		;
connectAttr "uvunwrap1_0_rotateZ.o" "|hunte__dev__Basic_Chair__1_01|geo1|uvunwrap1_0.rz"
		;
connectAttr "groupParts1.og" "|hunte__dev__Basic_Chair__1_01|geo1|uvunwrap1_0|uvunwrap1_0Shape.i"
		;
connectAttr "groupId5.id" "|hunte__dev__Basic_Chair__1_01|geo1|uvunwrap1_0|uvunwrap1_0Shape.iog.og[0].gid"
		;
connectAttr "group1.mwc" "|hunte__dev__Basic_Chair__1_01|geo1|uvunwrap1_0|uvunwrap1_0Shape.iog.og[0].gco"
		;
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "v_layered1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "set1.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "v_layered2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "set2.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "v_layered3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "set3.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "v_layered1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "set1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "v_layered2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "set2.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "v_layered3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "set3.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "file1.oc" "v_layered1.c";
connectAttr "hunte__dev__Wallsubnet__1_01.outputMaterials[0].outputMaterialSpecularColor" "v_layered1.sc"
		;
connectAttr "hunte__dev__Wallsubnet__1_01.outputMaterials[0].outputMaterialAmbientColor" "v_layered1.ambc"
		;
connectAttr "hunte__dev__Wallsubnet__1_01.outputMaterials[0].outputMaterialAlphaColor" "v_layered1.it"
		;
connectAttr "v_layered1.oc" "v_layered1SG.ss";
connectAttr "v_layered1SG.msg" "materialInfo1.sg";
connectAttr "v_layered1.msg" "materialInfo1.m";
connectAttr "file1.msg" "materialInfo1.t" -na;
connectAttr ":defaultColorMgtGlobals.cme" "file1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file1.ws";
connectAttr "hunte__dev__Wallsubnet__1_01.outputMaterials[0].outputMaterialTexturePath" "file1.ftn"
		;
connectAttr "place2dTexture1.o" "substanceNode1.uv";
connectAttr "place2dTexture1.ofs" "substanceNode1.fs";
connectAttr "substanceNode1.output_diffuse" "Heavy_Cracked_Concrete_Sidewalk_01_diffuse.sbs"
		;
connectAttr "substanceNode1.rsw" "Heavy_Cracked_Concrete_Sidewalk_01_diffuse.rsw"
		;
connectAttr "substanceNode1.cext" "Heavy_Cracked_Concrete_Sidewalk_01_diffuse.cext"
		;
connectAttr "substanceNode1.hext" "Heavy_Cracked_Concrete_Sidewalk_01_diffuse.hext"
		;
connectAttr "substanceNode1.cfld" "Heavy_Cracked_Concrete_Sidewalk_01_diffuse.cprx"
		;
connectAttr "place2dTexture1.o" "Heavy_Cracked_Concrete_Sidewalk_01_diffuse.uv";
connectAttr "place2dTexture1.ofs" "Heavy_Cracked_Concrete_Sidewalk_01_diffuse.fs"
		;
connectAttr ":defaultColorMgtGlobals.cme" "file2.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file2.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file2.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file2.ws";
connectAttr "Heavy_Cracked_Concrete_Sidewalk_01_diffuse.cpth" "file2.ftn";
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
connectAttr "substanceNode1.output_basecolor" "Heavy_Cracked_Concrete_Sidewalk_01_basecolor.sbs"
		;
connectAttr "substanceNode1.rsw" "Heavy_Cracked_Concrete_Sidewalk_01_basecolor.rsw"
		;
connectAttr "substanceNode1.cext" "Heavy_Cracked_Concrete_Sidewalk_01_basecolor.cext"
		;
connectAttr "substanceNode1.hext" "Heavy_Cracked_Concrete_Sidewalk_01_basecolor.hext"
		;
connectAttr "substanceNode1.cfld" "Heavy_Cracked_Concrete_Sidewalk_01_basecolor.cprx"
		;
connectAttr "place2dTexture1.o" "Heavy_Cracked_Concrete_Sidewalk_01_basecolor.uv"
		;
connectAttr "place2dTexture1.ofs" "Heavy_Cracked_Concrete_Sidewalk_01_basecolor.fs"
		;
connectAttr ":defaultColorMgtGlobals.cme" "file3.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file3.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file3.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file3.ws";
connectAttr "Heavy_Cracked_Concrete_Sidewalk_01_basecolor.cpth" "file3.ftn";
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
connectAttr "substanceNode1.output_specular" "Heavy_Cracked_Concrete_Sidewalk_01_specular.sbs"
		;
connectAttr "substanceNode1.rsw" "Heavy_Cracked_Concrete_Sidewalk_01_specular.rsw"
		;
connectAttr "substanceNode1.cext" "Heavy_Cracked_Concrete_Sidewalk_01_specular.cext"
		;
connectAttr "substanceNode1.hext" "Heavy_Cracked_Concrete_Sidewalk_01_specular.hext"
		;
connectAttr "substanceNode1.cfld" "Heavy_Cracked_Concrete_Sidewalk_01_specular.cprx"
		;
connectAttr "place2dTexture1.o" "Heavy_Cracked_Concrete_Sidewalk_01_specular.uv"
		;
connectAttr "place2dTexture1.ofs" "Heavy_Cracked_Concrete_Sidewalk_01_specular.fs"
		;
connectAttr ":defaultColorMgtGlobals.cme" "file4.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file4.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file4.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file4.ws";
connectAttr "Heavy_Cracked_Concrete_Sidewalk_01_specular.cpth" "file4.ftn";
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
connectAttr "substanceNode1.output_glossiness" "Heavy_Cracked_Concrete_Sidewalk_01_glossiness.sbs"
		;
connectAttr "substanceNode1.rsw" "Heavy_Cracked_Concrete_Sidewalk_01_glossiness.rsw"
		;
connectAttr "substanceNode1.cext" "Heavy_Cracked_Concrete_Sidewalk_01_glossiness.cext"
		;
connectAttr "substanceNode1.hext" "Heavy_Cracked_Concrete_Sidewalk_01_glossiness.hext"
		;
connectAttr "substanceNode1.cfld" "Heavy_Cracked_Concrete_Sidewalk_01_glossiness.cprx"
		;
connectAttr "place2dTexture1.o" "Heavy_Cracked_Concrete_Sidewalk_01_glossiness.uv"
		;
connectAttr "place2dTexture1.ofs" "Heavy_Cracked_Concrete_Sidewalk_01_glossiness.fs"
		;
connectAttr ":defaultColorMgtGlobals.cme" "file5.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file5.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file5.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file5.ws";
connectAttr "Heavy_Cracked_Concrete_Sidewalk_01_glossiness.cpth" "file5.ftn";
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
connectAttr "substanceNode1.output_roughness" "Heavy_Cracked_Concrete_Sidewalk_01_roughness.sbs"
		;
connectAttr "substanceNode1.rsw" "Heavy_Cracked_Concrete_Sidewalk_01_roughness.rsw"
		;
connectAttr "substanceNode1.cext" "Heavy_Cracked_Concrete_Sidewalk_01_roughness.cext"
		;
connectAttr "substanceNode1.hext" "Heavy_Cracked_Concrete_Sidewalk_01_roughness.hext"
		;
connectAttr "substanceNode1.cfld" "Heavy_Cracked_Concrete_Sidewalk_01_roughness.cprx"
		;
connectAttr "place2dTexture1.o" "Heavy_Cracked_Concrete_Sidewalk_01_roughness.uv"
		;
connectAttr "place2dTexture1.ofs" "Heavy_Cracked_Concrete_Sidewalk_01_roughness.fs"
		;
connectAttr ":defaultColorMgtGlobals.cme" "file6.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file6.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file6.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file6.ws";
connectAttr "Heavy_Cracked_Concrete_Sidewalk_01_roughness.cpth" "file6.ftn";
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
connectAttr "substanceNode1.output_ambientocclusion" "Heavy_Cracked_Concrete_Sidewalk_01_ambientocclusion.sbs"
		;
connectAttr "substanceNode1.rsw" "Heavy_Cracked_Concrete_Sidewalk_01_ambientocclusion.rsw"
		;
connectAttr "substanceNode1.cext" "Heavy_Cracked_Concrete_Sidewalk_01_ambientocclusion.cext"
		;
connectAttr "substanceNode1.hext" "Heavy_Cracked_Concrete_Sidewalk_01_ambientocclusion.hext"
		;
connectAttr "substanceNode1.cfld" "Heavy_Cracked_Concrete_Sidewalk_01_ambientocclusion.cprx"
		;
connectAttr "place2dTexture1.o" "Heavy_Cracked_Concrete_Sidewalk_01_ambientocclusion.uv"
		;
connectAttr "place2dTexture1.ofs" "Heavy_Cracked_Concrete_Sidewalk_01_ambientocclusion.fs"
		;
connectAttr ":defaultColorMgtGlobals.cme" "file7.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file7.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file7.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file7.ws";
connectAttr "Heavy_Cracked_Concrete_Sidewalk_01_ambientocclusion.cpth" "file7.ftn"
		;
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
connectAttr "substanceNode1.output_metallic" "Heavy_Cracked_Concrete_Sidewalk_01_metallic.sbs"
		;
connectAttr "substanceNode1.rsw" "Heavy_Cracked_Concrete_Sidewalk_01_metallic.rsw"
		;
connectAttr "substanceNode1.cext" "Heavy_Cracked_Concrete_Sidewalk_01_metallic.cext"
		;
connectAttr "substanceNode1.hext" "Heavy_Cracked_Concrete_Sidewalk_01_metallic.hext"
		;
connectAttr "substanceNode1.cfld" "Heavy_Cracked_Concrete_Sidewalk_01_metallic.cprx"
		;
connectAttr "place2dTexture1.o" "Heavy_Cracked_Concrete_Sidewalk_01_metallic.uv"
		;
connectAttr "place2dTexture1.ofs" "Heavy_Cracked_Concrete_Sidewalk_01_metallic.fs"
		;
connectAttr ":defaultColorMgtGlobals.cme" "file8.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file8.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file8.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file8.ws";
connectAttr "Heavy_Cracked_Concrete_Sidewalk_01_metallic.cpth" "file8.ftn";
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
connectAttr "substanceNode1.output_normal" "Heavy_Cracked_Concrete_Sidewalk_01_normal.sbs"
		;
connectAttr "substanceNode1.rsw" "Heavy_Cracked_Concrete_Sidewalk_01_normal.rsw"
		;
connectAttr "substanceNode1.cext" "Heavy_Cracked_Concrete_Sidewalk_01_normal.cext"
		;
connectAttr "substanceNode1.hext" "Heavy_Cracked_Concrete_Sidewalk_01_normal.hext"
		;
connectAttr "substanceNode1.cfld" "Heavy_Cracked_Concrete_Sidewalk_01_normal.cprx"
		;
connectAttr "place2dTexture1.o" "Heavy_Cracked_Concrete_Sidewalk_01_normal.uv";
connectAttr "place2dTexture1.ofs" "Heavy_Cracked_Concrete_Sidewalk_01_normal.fs"
		;
connectAttr ":defaultColorMgtGlobals.cme" "file9.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file9.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file9.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file9.ws";
connectAttr "Heavy_Cracked_Concrete_Sidewalk_01_normal.cpth" "file9.ftn";
connectAttr "place2dTexture1.o" "file9.uv";
connectAttr "place2dTexture1.ofs" "file9.fs";
connectAttr "place2dTexture1.c" "file9.c";
connectAttr "place2dTexture1.tf" "file9.tf";
connectAttr "place2dTexture1.rf" "file9.rf";
connectAttr "place2dTexture1.mu" "file9.mu";
connectAttr "place2dTexture1.mv" "file9.mv";
connectAttr "place2dTexture1.s" "file9.s";
connectAttr "place2dTexture1.wu" "file9.wu";
connectAttr "place2dTexture1.wv" "file9.wv";
connectAttr "place2dTexture1.re" "file9.re";
connectAttr "place2dTexture1.of" "file9.of";
connectAttr "place2dTexture1.r" "file9.ro";
connectAttr "place2dTexture1.n" "file9.n";
connectAttr "place2dTexture1.vt1" "file9.vt1";
connectAttr "place2dTexture1.vt2" "file9.vt2";
connectAttr "place2dTexture1.vt3" "file9.vt3";
connectAttr "place2dTexture1.vc1" "file9.vc1";
connectAttr "substanceNode1.output_height" "Heavy_Cracked_Concrete_Sidewalk_01_height.sbs"
		;
connectAttr "substanceNode1.rsw" "Heavy_Cracked_Concrete_Sidewalk_01_height.rsw"
		;
connectAttr "substanceNode1.cext" "Heavy_Cracked_Concrete_Sidewalk_01_height.cext"
		;
connectAttr "substanceNode1.hext" "Heavy_Cracked_Concrete_Sidewalk_01_height.hext"
		;
connectAttr "substanceNode1.cfld" "Heavy_Cracked_Concrete_Sidewalk_01_height.cprx"
		;
connectAttr "place2dTexture1.o" "Heavy_Cracked_Concrete_Sidewalk_01_height.uv";
connectAttr "place2dTexture1.ofs" "Heavy_Cracked_Concrete_Sidewalk_01_height.fs"
		;
connectAttr ":defaultColorMgtGlobals.cme" "file10.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file10.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file10.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file10.ws";
connectAttr "Heavy_Cracked_Concrete_Sidewalk_01_height.cpth" "file10.ftn";
connectAttr "place2dTexture1.o" "file10.uv";
connectAttr "place2dTexture1.ofs" "file10.fs";
connectAttr "place2dTexture1.c" "file10.c";
connectAttr "place2dTexture1.tf" "file10.tf";
connectAttr "place2dTexture1.rf" "file10.rf";
connectAttr "place2dTexture1.mu" "file10.mu";
connectAttr "place2dTexture1.mv" "file10.mv";
connectAttr "place2dTexture1.s" "file10.s";
connectAttr "place2dTexture1.wu" "file10.wu";
connectAttr "place2dTexture1.wv" "file10.wv";
connectAttr "place2dTexture1.re" "file10.re";
connectAttr "place2dTexture1.of" "file10.of";
connectAttr "place2dTexture1.r" "file10.ro";
connectAttr "place2dTexture1.n" "file10.n";
connectAttr "place2dTexture1.vt1" "file10.vt1";
connectAttr "place2dTexture1.vt2" "file10.vt2";
connectAttr "place2dTexture1.vt3" "file10.vt3";
connectAttr "place2dTexture1.vc1" "file10.vc1";
connectAttr "file3.oc" "multiplyDivide1.i1";
connectAttr "file7.oc" "multiplyDivide1.i2";
connectAttr "multiplyDivide1.o" "WallCement.base_color";
connectAttr "bump2d1.o" "WallCement.n";
connectAttr "file6.oa" "WallCement.specular_roughness";
connectAttr "file8.oa" "WallCement.metalness";
connectAttr "WallCement.out" "set1.ss";
connectAttr "displacementShader1.d" "set1.ds";
connectAttr "|hunte__dev__Wallsubnet__1_01|WallTool|uvunwrap1_0|uvunwrap1_0Shape.iog" "set1.dsm"
		 -na;
connectAttr "set1.msg" "materialInfo2.sg";
connectAttr "WallCement.msg" "materialInfo2.m";
connectAttr "file3.msg" "materialInfo2.t" -na;
connectAttr "file9.oa" "bump2d1.bv";
connectAttr "file10.oa" "displacementShader1.d";
connectAttr "file11.oc" "v_layered2.c";
connectAttr "hunte__dev__Hair_Ribbon__1_01.outputMaterials[0].outputMaterialSpecularColor" "v_layered2.sc"
		;
connectAttr "hunte__dev__Hair_Ribbon__1_01.outputMaterials[0].outputMaterialAmbientColor" "v_layered2.ambc"
		;
connectAttr "hunte__dev__Hair_Ribbon__1_01.outputMaterials[0].outputMaterialAlphaColor" "v_layered2.it"
		;
connectAttr "v_layered2.oc" "v_layered2SG.ss";
connectAttr "v_layered2SG.msg" "materialInfo3.sg";
connectAttr "v_layered2.msg" "materialInfo3.m";
connectAttr "file11.msg" "materialInfo3.t" -na;
connectAttr ":defaultColorMgtGlobals.cme" "file11.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file11.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file11.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file11.ws";
connectAttr "hunte__dev__Hair_Ribbon__1_01.outputMaterials[0].outputMaterialTexturePath" "file11.ftn"
		;
connectAttr "place2dTexture2.o" "substanceNode2.uv";
connectAttr "place2dTexture2.ofs" "substanceNode2.fs";
connectAttr "substanceNode2.output_diffuse" "Cotton_Rich_Tricotine_Weave_Front_Side_Scan_diffuse.sbs"
		;
connectAttr "substanceNode2.rsw" "Cotton_Rich_Tricotine_Weave_Front_Side_Scan_diffuse.rsw"
		;
connectAttr "substanceNode2.cext" "Cotton_Rich_Tricotine_Weave_Front_Side_Scan_diffuse.cext"
		;
connectAttr "substanceNode2.hext" "Cotton_Rich_Tricotine_Weave_Front_Side_Scan_diffuse.hext"
		;
connectAttr "substanceNode2.cfld" "Cotton_Rich_Tricotine_Weave_Front_Side_Scan_diffuse.cprx"
		;
connectAttr "place2dTexture2.o" "Cotton_Rich_Tricotine_Weave_Front_Side_Scan_diffuse.uv"
		;
connectAttr "place2dTexture2.ofs" "Cotton_Rich_Tricotine_Weave_Front_Side_Scan_diffuse.fs"
		;
connectAttr ":defaultColorMgtGlobals.cme" "file12.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file12.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file12.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file12.ws";
connectAttr "Cotton_Rich_Tricotine_Weave_Front_Side_Scan_diffuse.cpth" "file12.ftn"
		;
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
connectAttr "substanceNode2.output_basecolor" "Cotton_Rich_Tricotine_Weave_Front_Side_Scan_basecolor.sbs"
		;
connectAttr "substanceNode2.rsw" "Cotton_Rich_Tricotine_Weave_Front_Side_Scan_basecolor.rsw"
		;
connectAttr "substanceNode2.cext" "Cotton_Rich_Tricotine_Weave_Front_Side_Scan_basecolor.cext"
		;
connectAttr "substanceNode2.hext" "Cotton_Rich_Tricotine_Weave_Front_Side_Scan_basecolor.hext"
		;
connectAttr "substanceNode2.cfld" "Cotton_Rich_Tricotine_Weave_Front_Side_Scan_basecolor.cprx"
		;
connectAttr "place2dTexture2.o" "Cotton_Rich_Tricotine_Weave_Front_Side_Scan_basecolor.uv"
		;
connectAttr "place2dTexture2.ofs" "Cotton_Rich_Tricotine_Weave_Front_Side_Scan_basecolor.fs"
		;
connectAttr ":defaultColorMgtGlobals.cme" "file13.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file13.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file13.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file13.ws";
connectAttr "Cotton_Rich_Tricotine_Weave_Front_Side_Scan_basecolor.cpth" "file13.ftn"
		;
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
connectAttr "substanceNode2.output_normal" "Cotton_Rich_Tricotine_Weave_Front_Side_Scan_normal.sbs"
		;
connectAttr "substanceNode2.rsw" "Cotton_Rich_Tricotine_Weave_Front_Side_Scan_normal.rsw"
		;
connectAttr "substanceNode2.cext" "Cotton_Rich_Tricotine_Weave_Front_Side_Scan_normal.cext"
		;
connectAttr "substanceNode2.hext" "Cotton_Rich_Tricotine_Weave_Front_Side_Scan_normal.hext"
		;
connectAttr "substanceNode2.cfld" "Cotton_Rich_Tricotine_Weave_Front_Side_Scan_normal.cprx"
		;
connectAttr "place2dTexture2.o" "Cotton_Rich_Tricotine_Weave_Front_Side_Scan_normal.uv"
		;
connectAttr "place2dTexture2.ofs" "Cotton_Rich_Tricotine_Weave_Front_Side_Scan_normal.fs"
		;
connectAttr ":defaultColorMgtGlobals.cme" "file14.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file14.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file14.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file14.ws";
connectAttr "Cotton_Rich_Tricotine_Weave_Front_Side_Scan_normal.cpth" "file14.ftn"
		;
connectAttr "place2dTexture2.o" "file14.uv";
connectAttr "place2dTexture2.ofs" "file14.fs";
connectAttr "place2dTexture2.c" "file14.c";
connectAttr "place2dTexture2.tf" "file14.tf";
connectAttr "place2dTexture2.rf" "file14.rf";
connectAttr "place2dTexture2.mu" "file14.mu";
connectAttr "place2dTexture2.mv" "file14.mv";
connectAttr "place2dTexture2.s" "file14.s";
connectAttr "place2dTexture2.wu" "file14.wu";
connectAttr "place2dTexture2.wv" "file14.wv";
connectAttr "place2dTexture2.re" "file14.re";
connectAttr "place2dTexture2.of" "file14.of";
connectAttr "place2dTexture2.r" "file14.ro";
connectAttr "place2dTexture2.n" "file14.n";
connectAttr "place2dTexture2.vt1" "file14.vt1";
connectAttr "place2dTexture2.vt2" "file14.vt2";
connectAttr "place2dTexture2.vt3" "file14.vt3";
connectAttr "place2dTexture2.vc1" "file14.vc1";
connectAttr "substanceNode2.output_specular" "Cotton_Rich_Tricotine_Weave_Front_Side_Scan_specular.sbs"
		;
connectAttr "substanceNode2.rsw" "Cotton_Rich_Tricotine_Weave_Front_Side_Scan_specular.rsw"
		;
connectAttr "substanceNode2.cext" "Cotton_Rich_Tricotine_Weave_Front_Side_Scan_specular.cext"
		;
connectAttr "substanceNode2.hext" "Cotton_Rich_Tricotine_Weave_Front_Side_Scan_specular.hext"
		;
connectAttr "substanceNode2.cfld" "Cotton_Rich_Tricotine_Weave_Front_Side_Scan_specular.cprx"
		;
connectAttr "place2dTexture2.o" "Cotton_Rich_Tricotine_Weave_Front_Side_Scan_specular.uv"
		;
connectAttr "place2dTexture2.ofs" "Cotton_Rich_Tricotine_Weave_Front_Side_Scan_specular.fs"
		;
connectAttr ":defaultColorMgtGlobals.cme" "file15.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file15.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file15.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file15.ws";
connectAttr "Cotton_Rich_Tricotine_Weave_Front_Side_Scan_specular.cpth" "file15.ftn"
		;
connectAttr "place2dTexture2.o" "file15.uv";
connectAttr "place2dTexture2.ofs" "file15.fs";
connectAttr "place2dTexture2.c" "file15.c";
connectAttr "place2dTexture2.tf" "file15.tf";
connectAttr "place2dTexture2.rf" "file15.rf";
connectAttr "place2dTexture2.mu" "file15.mu";
connectAttr "place2dTexture2.mv" "file15.mv";
connectAttr "place2dTexture2.s" "file15.s";
connectAttr "place2dTexture2.wu" "file15.wu";
connectAttr "place2dTexture2.wv" "file15.wv";
connectAttr "place2dTexture2.re" "file15.re";
connectAttr "place2dTexture2.of" "file15.of";
connectAttr "place2dTexture2.r" "file15.ro";
connectAttr "place2dTexture2.n" "file15.n";
connectAttr "place2dTexture2.vt1" "file15.vt1";
connectAttr "place2dTexture2.vt2" "file15.vt2";
connectAttr "place2dTexture2.vt3" "file15.vt3";
connectAttr "place2dTexture2.vc1" "file15.vc1";
connectAttr "substanceNode2.output_glossiness" "Cotton_Rich_Tricotine_Weave_Front_Side_Scan_glossiness.sbs"
		;
connectAttr "substanceNode2.rsw" "Cotton_Rich_Tricotine_Weave_Front_Side_Scan_glossiness.rsw"
		;
connectAttr "substanceNode2.cext" "Cotton_Rich_Tricotine_Weave_Front_Side_Scan_glossiness.cext"
		;
connectAttr "substanceNode2.hext" "Cotton_Rich_Tricotine_Weave_Front_Side_Scan_glossiness.hext"
		;
connectAttr "substanceNode2.cfld" "Cotton_Rich_Tricotine_Weave_Front_Side_Scan_glossiness.cprx"
		;
connectAttr "place2dTexture2.o" "Cotton_Rich_Tricotine_Weave_Front_Side_Scan_glossiness.uv"
		;
connectAttr "place2dTexture2.ofs" "Cotton_Rich_Tricotine_Weave_Front_Side_Scan_glossiness.fs"
		;
connectAttr ":defaultColorMgtGlobals.cme" "file16.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file16.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file16.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file16.ws";
connectAttr "Cotton_Rich_Tricotine_Weave_Front_Side_Scan_glossiness.cpth" "file16.ftn"
		;
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
connectAttr "substanceNode2.output_roughness" "Cotton_Rich_Tricotine_Weave_Front_Side_Scan_roughness.sbs"
		;
connectAttr "substanceNode2.rsw" "Cotton_Rich_Tricotine_Weave_Front_Side_Scan_roughness.rsw"
		;
connectAttr "substanceNode2.cext" "Cotton_Rich_Tricotine_Weave_Front_Side_Scan_roughness.cext"
		;
connectAttr "substanceNode2.hext" "Cotton_Rich_Tricotine_Weave_Front_Side_Scan_roughness.hext"
		;
connectAttr "substanceNode2.cfld" "Cotton_Rich_Tricotine_Weave_Front_Side_Scan_roughness.cprx"
		;
connectAttr "place2dTexture2.o" "Cotton_Rich_Tricotine_Weave_Front_Side_Scan_roughness.uv"
		;
connectAttr "place2dTexture2.ofs" "Cotton_Rich_Tricotine_Weave_Front_Side_Scan_roughness.fs"
		;
connectAttr ":defaultColorMgtGlobals.cme" "file17.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file17.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file17.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file17.ws";
connectAttr "Cotton_Rich_Tricotine_Weave_Front_Side_Scan_roughness.cpth" "file17.ftn"
		;
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
connectAttr "substanceNode2.output_metallic" "Cotton_Rich_Tricotine_Weave_Front_Side_Scan_metallic.sbs"
		;
connectAttr "substanceNode2.rsw" "Cotton_Rich_Tricotine_Weave_Front_Side_Scan_metallic.rsw"
		;
connectAttr "substanceNode2.cext" "Cotton_Rich_Tricotine_Weave_Front_Side_Scan_metallic.cext"
		;
connectAttr "substanceNode2.hext" "Cotton_Rich_Tricotine_Weave_Front_Side_Scan_metallic.hext"
		;
connectAttr "substanceNode2.cfld" "Cotton_Rich_Tricotine_Weave_Front_Side_Scan_metallic.cprx"
		;
connectAttr "place2dTexture2.o" "Cotton_Rich_Tricotine_Weave_Front_Side_Scan_metallic.uv"
		;
connectAttr "place2dTexture2.ofs" "Cotton_Rich_Tricotine_Weave_Front_Side_Scan_metallic.fs"
		;
connectAttr ":defaultColorMgtGlobals.cme" "file18.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file18.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file18.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file18.ws";
connectAttr "Cotton_Rich_Tricotine_Weave_Front_Side_Scan_metallic.cpth" "file18.ftn"
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
connectAttr "substanceNode2.output_height" "Cotton_Rich_Tricotine_Weave_Front_Side_Scan_height.sbs"
		;
connectAttr "substanceNode2.rsw" "Cotton_Rich_Tricotine_Weave_Front_Side_Scan_height.rsw"
		;
connectAttr "substanceNode2.cext" "Cotton_Rich_Tricotine_Weave_Front_Side_Scan_height.cext"
		;
connectAttr "substanceNode2.hext" "Cotton_Rich_Tricotine_Weave_Front_Side_Scan_height.hext"
		;
connectAttr "substanceNode2.cfld" "Cotton_Rich_Tricotine_Weave_Front_Side_Scan_height.cprx"
		;
connectAttr "place2dTexture2.o" "Cotton_Rich_Tricotine_Weave_Front_Side_Scan_height.uv"
		;
connectAttr "place2dTexture2.ofs" "Cotton_Rich_Tricotine_Weave_Front_Side_Scan_height.fs"
		;
connectAttr ":defaultColorMgtGlobals.cme" "file19.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file19.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file19.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file19.ws";
connectAttr "Cotton_Rich_Tricotine_Weave_Front_Side_Scan_height.cpth" "file19.ftn"
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
connectAttr "substanceNode2.output_ambientocclusion" "Cotton_Rich_Tricotine_Weave_Front_Side_Scan_ambientocclusion.sbs"
		;
connectAttr "substanceNode2.rsw" "Cotton_Rich_Tricotine_Weave_Front_Side_Scan_ambientocclusion.rsw"
		;
connectAttr "substanceNode2.cext" "Cotton_Rich_Tricotine_Weave_Front_Side_Scan_ambientocclusion.cext"
		;
connectAttr "substanceNode2.hext" "Cotton_Rich_Tricotine_Weave_Front_Side_Scan_ambientocclusion.hext"
		;
connectAttr "substanceNode2.cfld" "Cotton_Rich_Tricotine_Weave_Front_Side_Scan_ambientocclusion.cprx"
		;
connectAttr "place2dTexture2.o" "Cotton_Rich_Tricotine_Weave_Front_Side_Scan_ambientocclusion.uv"
		;
connectAttr "place2dTexture2.ofs" "Cotton_Rich_Tricotine_Weave_Front_Side_Scan_ambientocclusion.fs"
		;
connectAttr ":defaultColorMgtGlobals.cme" "file20.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file20.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file20.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file20.ws";
connectAttr "Cotton_Rich_Tricotine_Weave_Front_Side_Scan_ambientocclusion.cpth" "file20.ftn"
		;
connectAttr "place2dTexture2.o" "file20.uv";
connectAttr "place2dTexture2.ofs" "file20.fs";
connectAttr "place2dTexture2.c" "file20.c";
connectAttr "place2dTexture2.tf" "file20.tf";
connectAttr "place2dTexture2.rf" "file20.rf";
connectAttr "place2dTexture2.mu" "file20.mu";
connectAttr "place2dTexture2.mv" "file20.mv";
connectAttr "place2dTexture2.s" "file20.s";
connectAttr "place2dTexture2.wu" "file20.wu";
connectAttr "place2dTexture2.wv" "file20.wv";
connectAttr "place2dTexture2.re" "file20.re";
connectAttr "place2dTexture2.of" "file20.of";
connectAttr "place2dTexture2.r" "file20.ro";
connectAttr "place2dTexture2.n" "file20.n";
connectAttr "place2dTexture2.vt1" "file20.vt1";
connectAttr "place2dTexture2.vt2" "file20.vt2";
connectAttr "place2dTexture2.vt3" "file20.vt3";
connectAttr "place2dTexture2.vc1" "file20.vc1";
connectAttr "file13.oc" "multiplyDivide2.i1";
connectAttr "file20.oc" "multiplyDivide2.i2";
connectAttr "multiplyDivide2.o" "RibbonFull.base_color";
connectAttr "bump2d2.o" "RibbonFull.n";
connectAttr "file17.oa" "RibbonFull.specular_roughness";
connectAttr "file18.oa" "RibbonFull.metalness";
connectAttr "RibbonFull.out" "set2.ss";
connectAttr "displacementShader2.d" "set2.ds";
connectAttr "|hunte__dev__Hair_Ribbon__1_01|geo1|uvunwrap1_0|uvunwrap1_0Shape.iog" "set2.dsm"
		 -na;
connectAttr "set2.msg" "materialInfo4.sg";
connectAttr "RibbonFull.msg" "materialInfo4.m";
connectAttr "file13.msg" "materialInfo4.t" -na;
connectAttr "file14.oa" "bump2d2.bv";
connectAttr "file19.oa" "displacementShader2.d";
connectAttr "groupId5.msg" "group1.gn" -na;
connectAttr "|hunte__dev__Basic_Chair__1_01|geo1|uvunwrap1_0|uvunwrap1_0Shape.iog.og[0]" "group1.dsm"
		 -na;
connectAttr "hunte__dev__Basic_Chair__1_01.outputObjects[0].outputGeos[0].outputParts[0].outputPartMeshData" "groupParts1.ig"
		;
connectAttr "groupId5.id" "groupParts1.gi";
connectAttr "file21.oc" "v_layered3.c";
connectAttr "hunte__dev__Basic_Chair__1_01.outputMaterials[0].outputMaterialSpecularColor" "v_layered3.sc"
		;
connectAttr "hunte__dev__Basic_Chair__1_01.outputMaterials[0].outputMaterialAmbientColor" "v_layered3.ambc"
		;
connectAttr "hunte__dev__Basic_Chair__1_01.outputMaterials[0].outputMaterialAlphaColor" "v_layered3.it"
		;
connectAttr "v_layered3.oc" "v_layered3SG.ss";
connectAttr "v_layered3SG.msg" "materialInfo5.sg";
connectAttr "v_layered3.msg" "materialInfo5.m";
connectAttr "file21.msg" "materialInfo5.t" -na;
connectAttr ":defaultColorMgtGlobals.cme" "file21.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file21.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file21.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file21.ws";
connectAttr "hunte__dev__Basic_Chair__1_01.outputMaterials[0].outputMaterialTexturePath" "file21.ftn"
		;
connectAttr "place2dTexture3.o" "substanceNode3.uv";
connectAttr "place2dTexture3.ofs" "substanceNode3.fs";
connectAttr "substanceNode3.output_diffuse" "Walnut_Bark_diffuse.sbs";
connectAttr "substanceNode3.rsw" "Walnut_Bark_diffuse.rsw";
connectAttr "substanceNode3.cext" "Walnut_Bark_diffuse.cext";
connectAttr "substanceNode3.hext" "Walnut_Bark_diffuse.hext";
connectAttr "substanceNode3.cfld" "Walnut_Bark_diffuse.cprx";
connectAttr "place2dTexture3.o" "Walnut_Bark_diffuse.uv";
connectAttr "place2dTexture3.ofs" "Walnut_Bark_diffuse.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file22.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file22.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file22.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file22.ws";
connectAttr "Walnut_Bark_diffuse.cpth" "file22.ftn";
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
connectAttr "substanceNode3.output_basecolor" "Walnut_Bark_basecolor.sbs";
connectAttr "substanceNode3.rsw" "Walnut_Bark_basecolor.rsw";
connectAttr "substanceNode3.cext" "Walnut_Bark_basecolor.cext";
connectAttr "substanceNode3.hext" "Walnut_Bark_basecolor.hext";
connectAttr "substanceNode3.cfld" "Walnut_Bark_basecolor.cprx";
connectAttr "place2dTexture3.o" "Walnut_Bark_basecolor.uv";
connectAttr "place2dTexture3.ofs" "Walnut_Bark_basecolor.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file23.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file23.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file23.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file23.ws";
connectAttr "Walnut_Bark_basecolor.cpth" "file23.ftn";
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
connectAttr "place2dTexture4.o" "substanceNode4.uv";
connectAttr "place2dTexture4.ofs" "substanceNode4.fs";
connectAttr "substanceNode4.output_basecolor" "Pine_Wood_Outdoor_Panelling_01_basecolor.sbs"
		;
connectAttr "substanceNode4.rsw" "Pine_Wood_Outdoor_Panelling_01_basecolor.rsw";
connectAttr "substanceNode4.cext" "Pine_Wood_Outdoor_Panelling_01_basecolor.cext"
		;
connectAttr "substanceNode4.hext" "Pine_Wood_Outdoor_Panelling_01_basecolor.hext"
		;
connectAttr "substanceNode4.cfld" "Pine_Wood_Outdoor_Panelling_01_basecolor.cprx"
		;
connectAttr "place2dTexture4.o" "Pine_Wood_Outdoor_Panelling_01_basecolor.uv";
connectAttr "place2dTexture4.ofs" "Pine_Wood_Outdoor_Panelling_01_basecolor.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file24.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file24.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file24.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file24.ws";
connectAttr "Pine_Wood_Outdoor_Panelling_01_basecolor.cpth" "file24.ftn";
connectAttr "place2dTexture4.o" "file24.uv";
connectAttr "place2dTexture4.ofs" "file24.fs";
connectAttr "place2dTexture4.c" "file24.c";
connectAttr "place2dTexture4.tf" "file24.tf";
connectAttr "place2dTexture4.rf" "file24.rf";
connectAttr "place2dTexture4.mu" "file24.mu";
connectAttr "place2dTexture4.mv" "file24.mv";
connectAttr "place2dTexture4.s" "file24.s";
connectAttr "place2dTexture4.wu" "file24.wu";
connectAttr "place2dTexture4.wv" "file24.wv";
connectAttr "place2dTexture4.re" "file24.re";
connectAttr "place2dTexture4.of" "file24.of";
connectAttr "place2dTexture4.r" "file24.ro";
connectAttr "place2dTexture4.n" "file24.n";
connectAttr "place2dTexture4.vt1" "file24.vt1";
connectAttr "place2dTexture4.vt2" "file24.vt2";
connectAttr "place2dTexture4.vt3" "file24.vt3";
connectAttr "place2dTexture4.vc1" "file24.vc1";
connectAttr "place2dTexture5.o" "substanceNode5.uv";
connectAttr "place2dTexture5.ofs" "substanceNode5.fs";
connectAttr "substanceNode5.output_diffuse" "Cerused_Pine_Wood_diffuse.sbs";
connectAttr "substanceNode5.rsw" "Cerused_Pine_Wood_diffuse.rsw";
connectAttr "substanceNode5.cext" "Cerused_Pine_Wood_diffuse.cext";
connectAttr "substanceNode5.hext" "Cerused_Pine_Wood_diffuse.hext";
connectAttr "substanceNode5.cfld" "Cerused_Pine_Wood_diffuse.cprx";
connectAttr "place2dTexture5.o" "Cerused_Pine_Wood_diffuse.uv";
connectAttr "place2dTexture5.ofs" "Cerused_Pine_Wood_diffuse.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file25.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file25.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file25.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file25.ws";
connectAttr "Cerused_Pine_Wood_diffuse.cpth" "file25.ftn";
connectAttr "place2dTexture5.o" "file25.uv";
connectAttr "place2dTexture5.ofs" "file25.fs";
connectAttr "place2dTexture5.c" "file25.c";
connectAttr "place2dTexture5.tf" "file25.tf";
connectAttr "place2dTexture5.rf" "file25.rf";
connectAttr "place2dTexture5.mu" "file25.mu";
connectAttr "place2dTexture5.mv" "file25.mv";
connectAttr "place2dTexture5.s" "file25.s";
connectAttr "place2dTexture5.wu" "file25.wu";
connectAttr "place2dTexture5.wv" "file25.wv";
connectAttr "place2dTexture5.re" "file25.re";
connectAttr "place2dTexture5.of" "file25.of";
connectAttr "place2dTexture5.r" "file25.ro";
connectAttr "place2dTexture5.n" "file25.n";
connectAttr "place2dTexture5.vt1" "file25.vt1";
connectAttr "place2dTexture5.vt2" "file25.vt2";
connectAttr "place2dTexture5.vt3" "file25.vt3";
connectAttr "place2dTexture5.vc1" "file25.vc1";
connectAttr "substanceNode5.output_basecolor" "Cerused_Pine_Wood_basecolor.sbs";
connectAttr "substanceNode5.rsw" "Cerused_Pine_Wood_basecolor.rsw";
connectAttr "substanceNode5.cext" "Cerused_Pine_Wood_basecolor.cext";
connectAttr "substanceNode5.hext" "Cerused_Pine_Wood_basecolor.hext";
connectAttr "substanceNode5.cfld" "Cerused_Pine_Wood_basecolor.cprx";
connectAttr "place2dTexture5.o" "Cerused_Pine_Wood_basecolor.uv";
connectAttr "place2dTexture5.ofs" "Cerused_Pine_Wood_basecolor.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file26.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file26.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file26.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file26.ws";
connectAttr "Cerused_Pine_Wood_basecolor.cpth" "file26.ftn";
connectAttr "place2dTexture5.o" "file26.uv";
connectAttr "place2dTexture5.ofs" "file26.fs";
connectAttr "place2dTexture5.c" "file26.c";
connectAttr "place2dTexture5.tf" "file26.tf";
connectAttr "place2dTexture5.rf" "file26.rf";
connectAttr "place2dTexture5.mu" "file26.mu";
connectAttr "place2dTexture5.mv" "file26.mv";
connectAttr "place2dTexture5.s" "file26.s";
connectAttr "place2dTexture5.wu" "file26.wu";
connectAttr "place2dTexture5.wv" "file26.wv";
connectAttr "place2dTexture5.re" "file26.re";
connectAttr "place2dTexture5.of" "file26.of";
connectAttr "place2dTexture5.r" "file26.ro";
connectAttr "place2dTexture5.n" "file26.n";
connectAttr "place2dTexture5.vt1" "file26.vt1";
connectAttr "place2dTexture5.vt2" "file26.vt2";
connectAttr "place2dTexture5.vt3" "file26.vt3";
connectAttr "place2dTexture5.vc1" "file26.vc1";
connectAttr "substanceNode5.output_specular" "Cerused_Pine_Wood_specular.sbs";
connectAttr "substanceNode5.rsw" "Cerused_Pine_Wood_specular.rsw";
connectAttr "substanceNode5.cext" "Cerused_Pine_Wood_specular.cext";
connectAttr "substanceNode5.hext" "Cerused_Pine_Wood_specular.hext";
connectAttr "substanceNode5.cfld" "Cerused_Pine_Wood_specular.cprx";
connectAttr "place2dTexture5.o" "Cerused_Pine_Wood_specular.uv";
connectAttr "place2dTexture5.ofs" "Cerused_Pine_Wood_specular.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file27.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file27.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file27.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file27.ws";
connectAttr "Cerused_Pine_Wood_specular.cpth" "file27.ftn";
connectAttr "place2dTexture5.o" "file27.uv";
connectAttr "place2dTexture5.ofs" "file27.fs";
connectAttr "place2dTexture5.c" "file27.c";
connectAttr "place2dTexture5.tf" "file27.tf";
connectAttr "place2dTexture5.rf" "file27.rf";
connectAttr "place2dTexture5.mu" "file27.mu";
connectAttr "place2dTexture5.mv" "file27.mv";
connectAttr "place2dTexture5.s" "file27.s";
connectAttr "place2dTexture5.wu" "file27.wu";
connectAttr "place2dTexture5.wv" "file27.wv";
connectAttr "place2dTexture5.re" "file27.re";
connectAttr "place2dTexture5.of" "file27.of";
connectAttr "place2dTexture5.r" "file27.ro";
connectAttr "place2dTexture5.n" "file27.n";
connectAttr "place2dTexture5.vt1" "file27.vt1";
connectAttr "place2dTexture5.vt2" "file27.vt2";
connectAttr "place2dTexture5.vt3" "file27.vt3";
connectAttr "place2dTexture5.vc1" "file27.vc1";
connectAttr "substanceNode5.output_glossiness" "Cerused_Pine_Wood_glossiness.sbs"
		;
connectAttr "substanceNode5.rsw" "Cerused_Pine_Wood_glossiness.rsw";
connectAttr "substanceNode5.cext" "Cerused_Pine_Wood_glossiness.cext";
connectAttr "substanceNode5.hext" "Cerused_Pine_Wood_glossiness.hext";
connectAttr "substanceNode5.cfld" "Cerused_Pine_Wood_glossiness.cprx";
connectAttr "place2dTexture5.o" "Cerused_Pine_Wood_glossiness.uv";
connectAttr "place2dTexture5.ofs" "Cerused_Pine_Wood_glossiness.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file28.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file28.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file28.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file28.ws";
connectAttr "Cerused_Pine_Wood_glossiness.cpth" "file28.ftn";
connectAttr "place2dTexture5.o" "file28.uv";
connectAttr "place2dTexture5.ofs" "file28.fs";
connectAttr "place2dTexture5.c" "file28.c";
connectAttr "place2dTexture5.tf" "file28.tf";
connectAttr "place2dTexture5.rf" "file28.rf";
connectAttr "place2dTexture5.mu" "file28.mu";
connectAttr "place2dTexture5.mv" "file28.mv";
connectAttr "place2dTexture5.s" "file28.s";
connectAttr "place2dTexture5.wu" "file28.wu";
connectAttr "place2dTexture5.wv" "file28.wv";
connectAttr "place2dTexture5.re" "file28.re";
connectAttr "place2dTexture5.of" "file28.of";
connectAttr "place2dTexture5.r" "file28.ro";
connectAttr "place2dTexture5.n" "file28.n";
connectAttr "place2dTexture5.vt1" "file28.vt1";
connectAttr "place2dTexture5.vt2" "file28.vt2";
connectAttr "place2dTexture5.vt3" "file28.vt3";
connectAttr "place2dTexture5.vc1" "file28.vc1";
connectAttr "substanceNode5.output_roughness" "Cerused_Pine_Wood_roughness.sbs";
connectAttr "substanceNode5.rsw" "Cerused_Pine_Wood_roughness.rsw";
connectAttr "substanceNode5.cext" "Cerused_Pine_Wood_roughness.cext";
connectAttr "substanceNode5.hext" "Cerused_Pine_Wood_roughness.hext";
connectAttr "substanceNode5.cfld" "Cerused_Pine_Wood_roughness.cprx";
connectAttr "place2dTexture5.o" "Cerused_Pine_Wood_roughness.uv";
connectAttr "place2dTexture5.ofs" "Cerused_Pine_Wood_roughness.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file29.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file29.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file29.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file29.ws";
connectAttr "Cerused_Pine_Wood_roughness.cpth" "file29.ftn";
connectAttr "place2dTexture5.o" "file29.uv";
connectAttr "place2dTexture5.ofs" "file29.fs";
connectAttr "place2dTexture5.c" "file29.c";
connectAttr "place2dTexture5.tf" "file29.tf";
connectAttr "place2dTexture5.rf" "file29.rf";
connectAttr "place2dTexture5.mu" "file29.mu";
connectAttr "place2dTexture5.mv" "file29.mv";
connectAttr "place2dTexture5.s" "file29.s";
connectAttr "place2dTexture5.wu" "file29.wu";
connectAttr "place2dTexture5.wv" "file29.wv";
connectAttr "place2dTexture5.re" "file29.re";
connectAttr "place2dTexture5.of" "file29.of";
connectAttr "place2dTexture5.r" "file29.ro";
connectAttr "place2dTexture5.n" "file29.n";
connectAttr "place2dTexture5.vt1" "file29.vt1";
connectAttr "place2dTexture5.vt2" "file29.vt2";
connectAttr "place2dTexture5.vt3" "file29.vt3";
connectAttr "place2dTexture5.vc1" "file29.vc1";
connectAttr "substanceNode5.output_metallic" "Cerused_Pine_Wood_metallic.sbs";
connectAttr "substanceNode5.rsw" "Cerused_Pine_Wood_metallic.rsw";
connectAttr "substanceNode5.cext" "Cerused_Pine_Wood_metallic.cext";
connectAttr "substanceNode5.hext" "Cerused_Pine_Wood_metallic.hext";
connectAttr "substanceNode5.cfld" "Cerused_Pine_Wood_metallic.cprx";
connectAttr "place2dTexture5.o" "Cerused_Pine_Wood_metallic.uv";
connectAttr "place2dTexture5.ofs" "Cerused_Pine_Wood_metallic.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file30.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file30.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file30.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file30.ws";
connectAttr "Cerused_Pine_Wood_metallic.cpth" "file30.ftn";
connectAttr "place2dTexture5.o" "file30.uv";
connectAttr "place2dTexture5.ofs" "file30.fs";
connectAttr "place2dTexture5.c" "file30.c";
connectAttr "place2dTexture5.tf" "file30.tf";
connectAttr "place2dTexture5.rf" "file30.rf";
connectAttr "place2dTexture5.mu" "file30.mu";
connectAttr "place2dTexture5.mv" "file30.mv";
connectAttr "place2dTexture5.s" "file30.s";
connectAttr "place2dTexture5.wu" "file30.wu";
connectAttr "place2dTexture5.wv" "file30.wv";
connectAttr "place2dTexture5.re" "file30.re";
connectAttr "place2dTexture5.of" "file30.of";
connectAttr "place2dTexture5.r" "file30.ro";
connectAttr "place2dTexture5.n" "file30.n";
connectAttr "place2dTexture5.vt1" "file30.vt1";
connectAttr "place2dTexture5.vt2" "file30.vt2";
connectAttr "place2dTexture5.vt3" "file30.vt3";
connectAttr "place2dTexture5.vc1" "file30.vc1";
connectAttr "substanceNode5.output_height" "Cerused_Pine_Wood_height.sbs";
connectAttr "substanceNode5.rsw" "Cerused_Pine_Wood_height.rsw";
connectAttr "substanceNode5.cext" "Cerused_Pine_Wood_height.cext";
connectAttr "substanceNode5.hext" "Cerused_Pine_Wood_height.hext";
connectAttr "substanceNode5.cfld" "Cerused_Pine_Wood_height.cprx";
connectAttr "place2dTexture5.o" "Cerused_Pine_Wood_height.uv";
connectAttr "place2dTexture5.ofs" "Cerused_Pine_Wood_height.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file31.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file31.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file31.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file31.ws";
connectAttr "Cerused_Pine_Wood_height.cpth" "file31.ftn";
connectAttr "place2dTexture5.o" "file31.uv";
connectAttr "place2dTexture5.ofs" "file31.fs";
connectAttr "place2dTexture5.c" "file31.c";
connectAttr "place2dTexture5.tf" "file31.tf";
connectAttr "place2dTexture5.rf" "file31.rf";
connectAttr "place2dTexture5.mu" "file31.mu";
connectAttr "place2dTexture5.mv" "file31.mv";
connectAttr "place2dTexture5.s" "file31.s";
connectAttr "place2dTexture5.wu" "file31.wu";
connectAttr "place2dTexture5.wv" "file31.wv";
connectAttr "place2dTexture5.re" "file31.re";
connectAttr "place2dTexture5.of" "file31.of";
connectAttr "place2dTexture5.r" "file31.ro";
connectAttr "place2dTexture5.n" "file31.n";
connectAttr "place2dTexture5.vt1" "file31.vt1";
connectAttr "place2dTexture5.vt2" "file31.vt2";
connectAttr "place2dTexture5.vt3" "file31.vt3";
connectAttr "place2dTexture5.vc1" "file31.vc1";
connectAttr "substanceNode5.output_ambientocclusion" "Cerused_Pine_Wood_ambientocclusion.sbs"
		;
connectAttr "substanceNode5.rsw" "Cerused_Pine_Wood_ambientocclusion.rsw";
connectAttr "substanceNode5.cext" "Cerused_Pine_Wood_ambientocclusion.cext";
connectAttr "substanceNode5.hext" "Cerused_Pine_Wood_ambientocclusion.hext";
connectAttr "substanceNode5.cfld" "Cerused_Pine_Wood_ambientocclusion.cprx";
connectAttr "place2dTexture5.o" "Cerused_Pine_Wood_ambientocclusion.uv";
connectAttr "place2dTexture5.ofs" "Cerused_Pine_Wood_ambientocclusion.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file32.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file32.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file32.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file32.ws";
connectAttr "Cerused_Pine_Wood_ambientocclusion.cpth" "file32.ftn";
connectAttr "place2dTexture5.o" "file32.uv";
connectAttr "place2dTexture5.ofs" "file32.fs";
connectAttr "place2dTexture5.c" "file32.c";
connectAttr "place2dTexture5.tf" "file32.tf";
connectAttr "place2dTexture5.rf" "file32.rf";
connectAttr "place2dTexture5.mu" "file32.mu";
connectAttr "place2dTexture5.mv" "file32.mv";
connectAttr "place2dTexture5.s" "file32.s";
connectAttr "place2dTexture5.wu" "file32.wu";
connectAttr "place2dTexture5.wv" "file32.wv";
connectAttr "place2dTexture5.re" "file32.re";
connectAttr "place2dTexture5.of" "file32.of";
connectAttr "place2dTexture5.r" "file32.ro";
connectAttr "place2dTexture5.n" "file32.n";
connectAttr "place2dTexture5.vt1" "file32.vt1";
connectAttr "place2dTexture5.vt2" "file32.vt2";
connectAttr "place2dTexture5.vt3" "file32.vt3";
connectAttr "place2dTexture5.vc1" "file32.vc1";
connectAttr "substanceNode5.output_normal" "Cerused_Pine_Wood_normal.sbs";
connectAttr "substanceNode5.rsw" "Cerused_Pine_Wood_normal.rsw";
connectAttr "substanceNode5.cext" "Cerused_Pine_Wood_normal.cext";
connectAttr "substanceNode5.hext" "Cerused_Pine_Wood_normal.hext";
connectAttr "substanceNode5.cfld" "Cerused_Pine_Wood_normal.cprx";
connectAttr "place2dTexture5.o" "Cerused_Pine_Wood_normal.uv";
connectAttr "place2dTexture5.ofs" "Cerused_Pine_Wood_normal.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file33.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file33.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file33.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file33.ws";
connectAttr "Cerused_Pine_Wood_normal.cpth" "file33.ftn";
connectAttr "place2dTexture5.o" "file33.uv";
connectAttr "place2dTexture5.ofs" "file33.fs";
connectAttr "place2dTexture5.c" "file33.c";
connectAttr "place2dTexture5.tf" "file33.tf";
connectAttr "place2dTexture5.rf" "file33.rf";
connectAttr "place2dTexture5.mu" "file33.mu";
connectAttr "place2dTexture5.mv" "file33.mv";
connectAttr "place2dTexture5.s" "file33.s";
connectAttr "place2dTexture5.wu" "file33.wu";
connectAttr "place2dTexture5.wv" "file33.wv";
connectAttr "place2dTexture5.re" "file33.re";
connectAttr "place2dTexture5.of" "file33.of";
connectAttr "place2dTexture5.r" "file33.ro";
connectAttr "place2dTexture5.n" "file33.n";
connectAttr "place2dTexture5.vt1" "file33.vt1";
connectAttr "place2dTexture5.vt2" "file33.vt2";
connectAttr "place2dTexture5.vt3" "file33.vt3";
connectAttr "place2dTexture5.vc1" "file33.vc1";
connectAttr "file26.oc" "multiplyDivide3.i1";
connectAttr "file32.oc" "multiplyDivide3.i2";
connectAttr "multiplyDivide3.o" "Wood.base_color";
connectAttr "bump2d3.o" "Wood.n";
connectAttr "file29.oa" "Wood.specular_roughness";
connectAttr "file30.oa" "Wood.metalness";
connectAttr "Wood.out" "set3.ss";
connectAttr "displacementShader3.d" "set3.ds";
connectAttr "|hunte__dev__Basic_Chair__1_01|geo1|uvunwrap1_0|uvunwrap1_0Shape.iog" "set3.dsm"
		 -na;
connectAttr "set3.msg" "materialInfo6.sg";
connectAttr "Wood.msg" "materialInfo6.m";
connectAttr "Wood.msg" "materialInfo6.t" -na;
connectAttr "file33.oa" "bump2d3.bv";
connectAttr "file31.oa" "displacementShader3.d";
connectAttr "file17.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "file13.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "Cotton_Rich_Tricotine_Weave_Front_Side_Scan_specular.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "file20.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "Cotton_Rich_Tricotine_Weave_Front_Side_Scan_normal.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "Cotton_Rich_Tricotine_Weave_Front_Side_Scan_metallic.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "file15.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[6].dn"
		;
connectAttr "place2dTexture2.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[7].dn"
		;
connectAttr "Cotton_Rich_Tricotine_Weave_Front_Side_Scan_ambientocclusion.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[8].dn"
		;
connectAttr "Cotton_Rich_Tricotine_Weave_Front_Side_Scan_basecolor.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[9].dn"
		;
connectAttr "file19.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[10].dn"
		;
connectAttr "file18.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[11].dn"
		;
connectAttr "file14.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[12].dn"
		;
connectAttr "substanceNode2.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[13].dn"
		;
connectAttr "bump2d2.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[14].dn"
		;
connectAttr "multiplyDivide2.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[15].dn"
		;
connectAttr "file16.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[16].dn"
		;
connectAttr "displacementShader2.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[17].dn"
		;
connectAttr "file12.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[18].dn"
		;
connectAttr "set2.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[19].dn"
		;
connectAttr "Cotton_Rich_Tricotine_Weave_Front_Side_Scan_glossiness.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[20].dn"
		;
connectAttr "Cotton_Rich_Tricotine_Weave_Front_Side_Scan_height.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[21].dn"
		;
connectAttr "Cotton_Rich_Tricotine_Weave_Front_Side_Scan_diffuse.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[22].dn"
		;
connectAttr "RibbonFull.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[23].dn"
		;
connectAttr "Cotton_Rich_Tricotine_Weave_Front_Side_Scan_roughness.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[24].dn"
		;
connectAttr "set3.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[0].dn"
		;
connectAttr "displacementShader3.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[1].dn"
		;
connectAttr "multiplyDivide3.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[2].dn"
		;
connectAttr "Cerused_Pine_Wood_normal.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[3].dn"
		;
connectAttr "file32.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[4].dn"
		;
connectAttr "Wood.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[5].dn"
		;
connectAttr "bump2d3.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[6].dn"
		;
connectAttr "Cerused_Pine_Wood_ambientocclusion.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[7].dn"
		;
connectAttr "file33.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[8].dn"
		;
connectAttr "Cerused_Pine_Wood_basecolor.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[9].dn"
		;
connectAttr "file25.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[10].dn"
		;
connectAttr "file26.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[11].dn"
		;
connectAttr "Cerused_Pine_Wood_diffuse.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[12].dn"
		;
connectAttr "file29.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[13].dn"
		;
connectAttr "Cerused_Pine_Wood_roughness.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[14].dn"
		;
connectAttr "file31.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[15].dn"
		;
connectAttr "Cerused_Pine_Wood_glossiness.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[16].dn"
		;
connectAttr "Cerused_Pine_Wood_height.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[17].dn"
		;
connectAttr "file27.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[18].dn"
		;
connectAttr "Cerused_Pine_Wood_specular.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[19].dn"
		;
connectAttr "place2dTexture5.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[20].dn"
		;
connectAttr "file28.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[21].dn"
		;
connectAttr "substanceNode5.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[22].dn"
		;
connectAttr "file30.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[23].dn"
		;
connectAttr "Cerused_Pine_Wood_metallic.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[24].dn"
		;
connectAttr "v_layered1SG.pa" ":renderPartition.st" -na;
connectAttr "set1.pa" ":renderPartition.st" -na;
connectAttr "v_layered2SG.pa" ":renderPartition.st" -na;
connectAttr "set2.pa" ":renderPartition.st" -na;
connectAttr "v_layered3SG.pa" ":renderPartition.st" -na;
connectAttr "set3.pa" ":renderPartition.st" -na;
connectAttr "v_layered1.msg" ":defaultShaderList1.s" -na;
connectAttr "WallCement.msg" ":defaultShaderList1.s" -na;
connectAttr "displacementShader1.msg" ":defaultShaderList1.s" -na;
connectAttr "v_layered2.msg" ":defaultShaderList1.s" -na;
connectAttr "RibbonFull.msg" ":defaultShaderList1.s" -na;
connectAttr "displacementShader2.msg" ":defaultShaderList1.s" -na;
connectAttr "v_layered3.msg" ":defaultShaderList1.s" -na;
connectAttr "Wood.msg" ":defaultShaderList1.s" -na;
connectAttr "displacementShader3.msg" ":defaultShaderList1.s" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multiplyDivide1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "bump2d1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multiplyDivide2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "bump2d2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture4.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture5.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multiplyDivide3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "bump2d3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "directionalLightShape1.ltd" ":lightList1.l" -na;
connectAttr "directionalLightShape2.ltd" ":lightList1.l" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "substanceNode1.msg" ":defaultTextureList1.tx" -na;
connectAttr "Heavy_Cracked_Concrete_Sidewalk_01_diffuse.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "file2.msg" ":defaultTextureList1.tx" -na;
connectAttr "Heavy_Cracked_Concrete_Sidewalk_01_basecolor.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "file3.msg" ":defaultTextureList1.tx" -na;
connectAttr "Heavy_Cracked_Concrete_Sidewalk_01_specular.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "file4.msg" ":defaultTextureList1.tx" -na;
connectAttr "Heavy_Cracked_Concrete_Sidewalk_01_glossiness.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "file5.msg" ":defaultTextureList1.tx" -na;
connectAttr "Heavy_Cracked_Concrete_Sidewalk_01_roughness.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "file6.msg" ":defaultTextureList1.tx" -na;
connectAttr "Heavy_Cracked_Concrete_Sidewalk_01_ambientocclusion.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "file7.msg" ":defaultTextureList1.tx" -na;
connectAttr "Heavy_Cracked_Concrete_Sidewalk_01_metallic.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "file8.msg" ":defaultTextureList1.tx" -na;
connectAttr "Heavy_Cracked_Concrete_Sidewalk_01_normal.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "file9.msg" ":defaultTextureList1.tx" -na;
connectAttr "Heavy_Cracked_Concrete_Sidewalk_01_height.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "file10.msg" ":defaultTextureList1.tx" -na;
connectAttr "file11.msg" ":defaultTextureList1.tx" -na;
connectAttr "substanceNode2.msg" ":defaultTextureList1.tx" -na;
connectAttr "Cotton_Rich_Tricotine_Weave_Front_Side_Scan_diffuse.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "file12.msg" ":defaultTextureList1.tx" -na;
connectAttr "Cotton_Rich_Tricotine_Weave_Front_Side_Scan_basecolor.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "file13.msg" ":defaultTextureList1.tx" -na;
connectAttr "Cotton_Rich_Tricotine_Weave_Front_Side_Scan_normal.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "file14.msg" ":defaultTextureList1.tx" -na;
connectAttr "Cotton_Rich_Tricotine_Weave_Front_Side_Scan_specular.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "file15.msg" ":defaultTextureList1.tx" -na;
connectAttr "Cotton_Rich_Tricotine_Weave_Front_Side_Scan_glossiness.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "file16.msg" ":defaultTextureList1.tx" -na;
connectAttr "Cotton_Rich_Tricotine_Weave_Front_Side_Scan_roughness.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "file17.msg" ":defaultTextureList1.tx" -na;
connectAttr "Cotton_Rich_Tricotine_Weave_Front_Side_Scan_metallic.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "file18.msg" ":defaultTextureList1.tx" -na;
connectAttr "Cotton_Rich_Tricotine_Weave_Front_Side_Scan_height.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "file19.msg" ":defaultTextureList1.tx" -na;
connectAttr "Cotton_Rich_Tricotine_Weave_Front_Side_Scan_ambientocclusion.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "file20.msg" ":defaultTextureList1.tx" -na;
connectAttr "file21.msg" ":defaultTextureList1.tx" -na;
connectAttr "substanceNode3.msg" ":defaultTextureList1.tx" -na;
connectAttr "Walnut_Bark_diffuse.msg" ":defaultTextureList1.tx" -na;
connectAttr "file22.msg" ":defaultTextureList1.tx" -na;
connectAttr "Walnut_Bark_basecolor.msg" ":defaultTextureList1.tx" -na;
connectAttr "file23.msg" ":defaultTextureList1.tx" -na;
connectAttr "substanceNode4.msg" ":defaultTextureList1.tx" -na;
connectAttr "Pine_Wood_Outdoor_Panelling_01_basecolor.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "file24.msg" ":defaultTextureList1.tx" -na;
connectAttr "substanceNode5.msg" ":defaultTextureList1.tx" -na;
connectAttr "Cerused_Pine_Wood_diffuse.msg" ":defaultTextureList1.tx" -na;
connectAttr "file25.msg" ":defaultTextureList1.tx" -na;
connectAttr "Cerused_Pine_Wood_basecolor.msg" ":defaultTextureList1.tx" -na;
connectAttr "file26.msg" ":defaultTextureList1.tx" -na;
connectAttr "Cerused_Pine_Wood_specular.msg" ":defaultTextureList1.tx" -na;
connectAttr "file27.msg" ":defaultTextureList1.tx" -na;
connectAttr "Cerused_Pine_Wood_glossiness.msg" ":defaultTextureList1.tx" -na;
connectAttr "file28.msg" ":defaultTextureList1.tx" -na;
connectAttr "Cerused_Pine_Wood_roughness.msg" ":defaultTextureList1.tx" -na;
connectAttr "file29.msg" ":defaultTextureList1.tx" -na;
connectAttr "Cerused_Pine_Wood_metallic.msg" ":defaultTextureList1.tx" -na;
connectAttr "file30.msg" ":defaultTextureList1.tx" -na;
connectAttr "Cerused_Pine_Wood_height.msg" ":defaultTextureList1.tx" -na;
connectAttr "file31.msg" ":defaultTextureList1.tx" -na;
connectAttr "Cerused_Pine_Wood_ambientocclusion.msg" ":defaultTextureList1.tx" -na
		;
connectAttr "file32.msg" ":defaultTextureList1.tx" -na;
connectAttr "Cerused_Pine_Wood_normal.msg" ":defaultTextureList1.tx" -na;
connectAttr "file33.msg" ":defaultTextureList1.tx" -na;
connectAttr "pCylinderShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "directionalLight1.iog" ":defaultLightSet.dsm" -na;
connectAttr "directionalLight2.iog" ":defaultLightSet.dsm" -na;
// End of Saga Jeune animation.ma
