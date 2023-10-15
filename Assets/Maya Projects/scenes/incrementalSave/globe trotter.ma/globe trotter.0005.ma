//Maya ASCII 2024 scene
//Name: globe trotter.ma
//Last modified: Fri, Oct 13, 2023 09:29:47 PM
//Codeset: 1252
file -rdi 1 -ns "Ultimate_Walker_Rig" -rfn "Ultimate_Walker_RigRN" -op "v=0;"
		 -typ "mayaAscii" "C:/Users/hunte/Documents/Education/Fall 2023/Modeling/Models to reference/Ultimate_Walker_Rig.ma";
file -r -ns "Ultimate_Walker_Rig" -dr 1 -rfn "Ultimate_Walker_RigRN" -op "v=0;" 
		-typ "mayaAscii" "C:/Users/hunte/Documents/Education/Fall 2023/Modeling/Models to reference/Ultimate_Walker_Rig.ma";
requires maya "2024";
requires -nodeType "houdiniAsset" "houdiniEngine" "5.0 (API: 8)";
requires "stereoCamera" "10.0";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "5.3.0";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2024";
fileInfo "version" "2024";
fileInfo "cutIdentifier" "202302170737-4500172811";
fileInfo "osv" "Windows 11 Home v2009 (Build: 22621)";
fileInfo "UUID" "B52C6D46-483A-8F5C-4D72-4DACEC30BA01";
createNode transform -s -n "persp";
	rename -uid "04C1C0C8-454E-A89A-BBF1-1D8D024FA5CE";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 13.944130335558913 8.8789081864383395 17.729473095382676 ;
	setAttr ".r" -type "double3" -22.03260445958017 4363.0985402209644 -2.1779260281243726e-15 ;
	setAttr ".rp" -type "double3" 3.5527136788005009e-15 -3.5527136788005009e-15 -1.4210854715202004e-14 ;
	setAttr ".rpt" -type "double3" -1.6185069545410493e-14 2.7925713086580747e-15 2.2398510639829639e-14 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "45E14E17-4A2A-BB26-4D8B-B9AE84D9D9DB";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999979;
	setAttr ".coi" 23.26990943564898;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0.24453176729885051 -23.587443413443747 6.7065561459855871e-07 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "B08C726C-43F3-A45A-C529-A5AABD0B4AD4";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "8B3E1395-40A4-FC0E-BE5E-378E60C830D3";
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
	rename -uid "E75605AF-43C7-CCAD-5CFE-E892EF09C20A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "64699234-47E3-05F1-9731-1493E23FCD21";
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
	rename -uid "92C985AA-438B-20CE-9B59-859A3C448594";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0.93678940029283964 -0.2404631542556479 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "0B7954AA-412F-C41D-C319-ABB0E677C86F";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 13.494514508516412;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode houdiniAsset -n "hunte__dev__Walking_Globe_subnet__1_01";
	rename -uid "9127DACC-4CE3-9252-371E-0CA56BE17416";
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
		-nn "Output Transform" -min 0 -max 6 -en "No Object:Input Object 1:Input Object 2:Input Object 3:Input Object 4:_separator_:Walking_Globe" 
		-at "enum" -p "houdiniAssetParm_stdswitcher3_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_visibleobjects" -ln "houdiniAssetParm_visibleobjects" 
		-nn "Visible Children" -dt "string" -p "houdiniAssetParm_stdswitcher3_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_picking" -ln "houdiniAssetParm_picking" 
		-nn "Viewport Selecting Enabled" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher3_1__folder";
	addAttr -is true -ci true -uaf -sn "houdiniAssetParm_pickscript" -ln "houdiniAssetParm_pickscript" 
		-nn "Select Script" -ct "hapiParmFile_read" -dt "string" -p "houdiniAssetParm_stdswitcher3_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_caching" -ln "houdiniAssetParm_caching" 
		-nn "Cache Object Transform" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher3_1__folder";
	setAttr ".otlFilePath" -type "string" "C:/Users/hunte/Documents/houdini19.5/otls/object_hunte.dev.Walking_Globe_subnet.1.0.hdanc";
	setAttr ".assetName" -type "string" "hunte::dev::Object/Walking_Globe_subnet::1.0";
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
createNode transform -n "Walking_Globe" -p "hunte__dev__Walking_Globe_subnet__1_01";
	rename -uid "7CA04DC7-44AD-0AF3-73C6-EE8A05060B30";
createNode transform -n "copytopoints1_0" -p "Walking_Globe";
	rename -uid "DDEE44F9-4B00-505E-0678-B4930D7D7B5D";
	setAttr ".t" -type "double3" 0 -23.643052526142672 0 ;
	setAttr ".s" -type "double3" 6 6 6 ;
createNode mesh -n "copytopoints1_0Shape" -p "copytopoints1_0";
	rename -uid "028B0D13-4C1D-6410-261E-41973342ADF8";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Globe_Core";
	rename -uid "F500F776-42D9-8D85-CF5D-DB98B2BA8EEF";
	setAttr ".t" -type "double3" 0 -23.587443413443747 0 ;
	setAttr ".s" -type "double3" 23.570168952870151 23.570168952870151 23.570168952870151 ;
createNode mesh -n "Globe_CoreShape" -p "Globe_Core";
	rename -uid "3A9E508F-4172-B4B3-55CF-BFB9E60F9D9B";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode houdiniAsset -n "hunte__dev__Tree_subnet__1_05" -p "Globe_Core";
	rename -uid "65F76B8F-4777-9194-A826-5BB1C1ED4E81";
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
	setAttr ".t" -type "double3" 0 1.0007328950678349 0 ;
	setAttr ".s" -type "double3" 0.042426509627468308 0.042426509627468308 0.042426509627468308 ;
	setAttr ".rp" -type "double3" -0.34565240847221079 0.02656164720964093 -0.01367818674086173 ;
	setAttr ".sp" -type "double3" -8.1470856666564941 0.62606251239776611 -0.32239717245101929 ;
	setAttr ".spt" -type "double3" 7.8014332581842831 -0.59950086518812518 0.30871898571015755 ;
	setAttr ".otlFilePath" -type "string" "C:/Users/hunte/Documents/houdini19.5/otls/object_hunte.dev.Tree_subnet.1.0.hdanc";
	setAttr ".assetName" -type "string" "hunte::dev::Object/Tree_subnet::1.0";
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
	setAttr -cb on ".houdiniAssetParm_bend" -24;
	setAttr -cb on ".houdiniAssetParm_selectamount1" 1;
	setAttr -cb on ".houdiniAssetParm_dist" 1.2000000476837158;
	setAttr -cb on ".houdiniAssetParm_selectamount2" 2;
	setAttr -cb on ".houdiniAssetParm_dist2" 1.2000000476837158;
	setAttr -cb on ".houdiniAssetParm_bend2" 51;
createNode transform -n "tube_object1" -p "hunte__dev__Tree_subnet__1_05";
	rename -uid "9DD4460A-4835-8ED5-E7BC-CEA9D7B8D0BE";
createNode transform -n "lineartaper2_0" -p "|Globe_Core|hunte__dev__Tree_subnet__1_05|tube_object1";
	rename -uid "B01A6AE4-4ABD-F1E4-86F9-919062840BF5";
	setAttr ".rp" -type "double3" -8.0509461680202516 -1.7666329853907601 -0.13604536719667415 ;
	setAttr ".sp" -type "double3" -8.0509461680202516 -1.7666329853907601 -0.13604536719667415 ;
createNode mesh -n "lineartaper2_0Shape" -p "|Globe_Core|hunte__dev__Tree_subnet__1_05|tube_object1|lineartaper2_0";
	rename -uid "22227B0C-454C-CC9B-281F-AB8BF3FFBAD7";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "lineartaper2_5" -p "|Globe_Core|hunte__dev__Tree_subnet__1_05|tube_object1";
	rename -uid "9729332E-4BE3-1726-ECCE-10BAB62016D0";
	setAttr ".t" -type "double3" 0.70021376572567817 -1.1432558535463739 8.334136259810105 ;
	setAttr ".r" -type "double3" 70.098867312125535 -54.229463565682607 -59.154582880403652 ;
	setAttr ".rp" -type "double3" -8.0509461680202516 -1.7666329853907601 -0.13604536719667415 ;
	setAttr ".sp" -type "double3" -8.0509461680202516 -1.7666329853907601 -0.13604536719667415 ;
createNode mesh -n "lineartaper2_5Shape" -p "lineartaper2_5";
	rename -uid "E1D9444F-408B-A895-ACE5-A2ADD6201355";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 2 "f[591:598]" "f[643:645]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[643:645]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 693 ".vt";
	setAttr ".vt[0:165]"  -8.42547131 2.7806406 -0.13604537 -8.42797089 2.78090525 -0.15594056
		 -8.43531132 2.7816844 -0.17458566 -8.44703293 2.78292751 -0.19080913 -8.46239758 2.78455734 -0.20359159
		 -8.48044109 2.78647041 -0.21212988 -8.50002956 2.78854752 -0.21588749 -8.51993179 2.790658 -0.21462834
		 -8.53889751 2.79266977 -0.20843151 -8.55573463 2.79445505 -0.1976864 -8.56938553 2.79590321 -0.18306817
		 -8.57899189 2.79692173 -0.16549531 -8.58395195 2.79744768 -0.146072 -8.58395195 2.79744768 -0.1260187
		 -8.57899189 2.79692173 -0.10659539 -8.56938553 2.79590321 -0.089022547 -8.55573463 2.79445505 -0.074404314
		 -8.53889751 2.79266977 -0.063659206 -8.51993179 2.790658 -0.057462394 -8.50002956 2.78854752 -0.056203246
		 -8.48044109 2.78647041 -0.059960864 -8.46239758 2.78455734 -0.068499155 -8.44703293 2.78292751 -0.081281632
		 -8.43531132 2.7816844 -0.097505108 -8.42797089 2.78090525 -0.11615022 -8.42692661 2.58557796 -0.13604537
		 -8.42997742 2.58584785 -0.16029263 -8.43893909 2.58664036 -0.18301633 -8.45324898 2.58790588 -0.2027887
		 -8.4720068 2.58956432 -0.21836731 -8.49403477 2.5915122 -0.22877336 -8.5179491 2.59362698 -0.23335293
		 -8.54224586 2.59577608 -0.23181835 -8.56539917 2.59782362 -0.22426596 -8.58595467 2.5996418 -0.21117038
		 -8.60261917 2.60111475 -0.1933544 -8.61434746 2.60215187 -0.17193748 -8.62040234 2.60268831 -0.14826533
		 -8.62040234 2.60268831 -0.12382537 -8.61434746 2.60215187 -0.10015321 -8.60261917 2.60111475 -0.078736313
		 -8.58595467 2.5996418 -0.060920343 -8.56539917 2.59782362 -0.047824748 -8.54224586 2.59577608 -0.040272385
		 -8.5179491 2.59362698 -0.038737796 -8.49403477 2.5915122 -0.043317392 -8.4720068 2.58956432 -0.053723432
		 -8.45324898 2.58790588 -0.069302075 -8.43893909 2.58664036 -0.089074433 -8.42997742 2.58584785 -0.11179817
		 -8.42495155 2.39082241 -0.13604537 -8.42855549 2.39107847 -0.16464469 -8.43914127 2.39182854 -0.19144702
		 -8.45604229 2.39302683 -0.21476826 -8.47819805 2.3945961 -0.23314303 -8.50421619 2.39644051 -0.24541682
		 -8.53246117 2.39844179 -0.25081837 -8.56115913 2.4004755 -0.24900836 -8.58850574 2.40241385 -0.24010043
		 -8.61278439 2.40413475 -0.22465435 -8.63246822 2.4055295 -0.20364064 -8.64632034 2.40651131 -0.17837965
		 -8.65347195 2.40701818 -0.15045865 -8.65347195 2.40701818 -0.12163204 -8.64632034 2.40651131 -0.093711033
		 -8.63246822 2.4055295 -0.068450078 -8.61278439 2.40413475 -0.047436371 -8.58850574 2.40241385 -0.03199029
		 -8.56115913 2.4004755 -0.023082368 -8.53246117 2.39844179 -0.021272346 -8.50421619 2.39644051 -0.02667392
		 -8.47819805 2.3945961 -0.038947709 -8.45604229 2.39302683 -0.057322517 -8.43914127 2.39182854 -0.080643758
		 -8.42855549 2.39107847 -0.1074461 -8.41955948 2.19643593 -0.13604537 -8.42371655 2.19665766 -0.16899677
		 -8.43592548 2.19730878 -0.19987771 -8.45542049 2.198349 -0.22674784 -8.48097515 2.19971228 -0.24791878
		 -8.51098537 2.2013135 -0.26206034 -8.54356384 2.20305133 -0.26828387 -8.57666397 2.20481706 -0.2661984
		 -8.60820675 2.20649981 -0.25593489 -8.63621044 2.20799398 -0.23813832 -8.65891361 2.20920515 -0.21392688
		 -8.67489147 2.2100575 -0.18482184 -8.6831398 2.21049738 -0.15265198 -8.6831398 2.21049738 -0.1194387
		 -8.67489147 2.2100575 -0.087268844 -8.65891361 2.20920515 -0.058163829 -8.63621044 2.20799398 -0.033952378
		 -8.60820675 2.20649981 -0.016155802 -8.57666397 2.20481706 -0.0058923364 -8.54356384 2.20305133 -0.0038068593
		 -8.51098442 2.20131302 -0.010030419 -8.48097515 2.19971228 -0.024171963 -8.45542049 2.198349 -0.045342937
		 -8.43592548 2.19730878 -0.072213076 -8.42371655 2.19665766 -0.10309404 -8.41076374 2.0024750233 -0.13604537
		 -8.41547298 2.0026438236 -0.17334886 -8.42930603 2.0031399727 -0.20830843 -8.45139217 2.0039319992 -0.23872745
		 -8.48034477 2.0049700737 -0.26269457 -8.51434422 2.0061895847 -0.27870387 -8.55125523 2.0075130463 -0.28574938
		 -8.58875656 2.0088579655 -0.28338844 -8.6244936 2.010139465 -0.2717694 -8.65621948 2.011277199 -0.25162235
		 -8.68194199 2.012199402 -0.22421315 -8.70004463 2.012848616 -0.19126403 -8.70938873 2.013183832 -0.15484531
		 -8.70938873 2.013183832 -0.11724536 -8.70004463 2.012848616 -0.080826648 -8.68194199 2.012199402 -0.047877558
		 -8.65621948 2.011277199 -0.020468362 -8.6244936 2.010139465 -0.00032128394 -8.58875656 2.0088579655 0.011297747
		 -8.55125523 2.0075130463 0.013658643 -8.51434422 2.0061895847 0.0066131055 -8.48034477 2.0049700737 -0.0093961954
		 -8.45139217 2.0039319992 -0.033363335 -8.42930603 2.0031399727 -0.063782372 -8.41547298 2.0026438236 -0.098741964
		 -8.39857388 1.80900264 -0.13604537 -8.4038353 1.8090992 -0.17770092 -8.41928864 1.80938363 -0.21673912
		 -8.443964 1.80983734 -0.25070703 -8.47630978 1.81043267 -0.27747029 -8.51429367 1.81113124 -0.29534733
		 -8.55552959 1.81188965 -0.30321485 -8.59742641 1.81266022 -0.30057847 -8.63735199 1.81339455 -0.28760388
		 -8.67279625 1.81404662 -0.26510632 -8.70153332 1.8145752 -0.23449938 -8.72175694 1.81494713 -0.19770619
		 -8.73219681 1.81513929 -0.15703863 -8.73219681 1.81513929 -0.11505203 -8.72175694 1.81494713 -0.074384466
		 -8.70153332 1.8145752 -0.037591323 -8.67279625 1.81404662 -0.0069843829 -8.63735199 1.81339455 0.015513182
		 -8.59742641 1.81266022 0.028487757 -8.55552959 1.81188965 0.0311241 -8.51429367 1.81113124 0.023256585
		 -8.47630978 1.81043267 0.0053795278 -8.443964 1.80983734 -0.021383777 -8.41928864 1.80938363 -0.055351697
		 -8.4038353 1.8090992 -0.094389901 -8.383008 1.61607647 -0.13604537 -8.38881969 1.61608171 -0.182053
		 -8.40589142 1.61609769 -0.22516981 -8.43314838 1.61612344 -0.26268661 -8.4688797 1.61615705 -0.29224604
		 -8.51083946 1.61619616 -0.31199083 -8.55639172 1.61623883 -0.32068032 -8.60267353 1.61628222 -0.31776851
		 -8.64677715 1.61632371 -0.30343837 -8.68593121 1.61636043 -0.27859029 -8.71767616 1.61639023 -0.24478564
		 -8.74001694 1.61641121 -0.20414838 -8.75154877 1.61642194 -0.15923196 -8.75154877 1.61642194 -0.11285869
		 -8.74001694 1.61641121 -0.067942284 -8.71767616 1.61639023 -0.027305074;
	setAttr ".vt[166:331]" -8.68593121 1.61636043 0.0064996034 -8.64677715 1.61632371 0.031347662
		 -8.60267353 1.61628246 0.045677796 -8.55639172 1.61623883 0.048589587 -8.51083946 1.61619639 0.039900079
		 -8.4688797 1.61615682 0.020155281 -8.43314838 1.61612344 -0.0094041973 -8.40589142 1.61609769 -0.046921007
		 -8.38881969 1.61608171 -0.090037838 -8.36407948 1.42375517 -0.13604537 -8.37044048 1.42365026 -0.18640506
		 -8.38912392 1.42334151 -0.23360048 -8.4189558 1.42284894 -0.27466616 -8.45806122 1.42220306 -0.30702177
		 -8.50398445 1.42144442 -0.32863432 -8.55383873 1.42062116 -0.33814576 -8.60449123 1.41978455 -0.33495852
		 -8.65276051 1.41898727 -0.31927282 -8.69561195 1.41827941 -0.29207426 -8.73035526 1.41770577 -0.25507185
		 -8.75480556 1.41730189 -0.21059054 -8.76742744 1.41709352 -0.16142529 -8.76742744 1.41709352 -0.11066536
		 -8.75480556 1.41730189 -0.061500102 -8.73035526 1.41770577 -0.01701884 -8.69561195 1.41827941 0.019983575
		 -8.65276051 1.41898727 0.047182128 -8.60449123 1.41978431 0.062867805 -8.55383873 1.42062116 0.06605503
		 -8.50398445 1.42144442 0.056543559 -8.45806122 1.42220306 0.034931004 -8.4189558 1.42284894 0.0025753528
		 -8.38912392 1.42334151 -0.038490333 -8.37044048 1.42365026 -0.085685775 -8.3418045 1.23209786 -0.13604537
		 -8.34871292 1.2318635 -0.19075714 -8.36900139 1.23117399 -0.24203116 -8.40139771 1.23007298 -0.28664571
		 -8.44386387 1.22863007 -0.32179749 -8.49373341 1.22693539 -0.34527779 -8.54787254 1.22509575 -0.35561121
		 -8.60287857 1.22322655 -0.35214853 -8.65529537 1.22144532 -0.33510727 -8.70182991 1.21986389 -0.30555823
		 -8.73955917 1.21858191 -0.26535809 -8.76611042 1.2176795 -0.21703273 -8.77981758 1.21721387 -0.16361861
		 -8.77981758 1.21721387 -0.10847203 -8.76611042 1.2176795 -0.055057928 -8.73955917 1.21858191 -0.0067325979
		 -8.70182991 1.21986389 0.033467546 -8.65529537 1.22144532 0.063016579 -8.60287857 1.22322655 0.080057815
		 -8.54787159 1.22509575 0.083520487 -8.49373341 1.22693539 0.073187023 -8.44386387 1.22863007 0.049706727
		 -8.40139771 1.23007298 0.014554918 -8.36900139 1.23117399 -0.030059658 -8.34871292 1.2318635 -0.081333712
		 -8.31620121 1.041162491 -0.13604537 -8.32365227 1.040779114 -0.19510922 -8.34553909 1.039652586 -0.25046188
		 -8.38048553 1.037853956 -0.29862529 -8.42629623 1.035496235 -0.33657324 -8.480093 1.03272748 -0.36192128
		 -8.53849411 1.029721737 -0.37307668 -8.59783173 1.026667833 -0.36933857 -8.65437603 1.023757696 -0.35094178
		 -8.70457554 1.021173954 -0.31904221 -8.74527454 1.019079447 -0.27564433 -8.7739172 1.017605066 -0.2234749
		 -8.78870296 1.016844034 -0.16581194 -8.78870296 1.016844034 -0.1062787 -8.7739172 1.017605066 -0.048615739
		 -8.74527454 1.019079447 0.0035536438 -8.70457554 1.021173954 0.046951547 -8.65437603 1.023757696 0.078851074
		 -8.59783173 1.026667595 0.097247854 -8.53849411 1.029721737 0.10098596 -8.480093 1.03272748 0.089830533
		 -8.42629623 1.035496235 0.064482465 -8.38048553 1.037853718 0.026534498 -8.34553909 1.039652348 -0.021628968
		 -8.32365227 1.040779114 -0.076981649 -8.28728771 0.85100698 -0.13604537 -8.29528046 0.85045552 -0.19946128
		 -8.31875515 0.84883595 -0.25889257 -8.35623741 0.84625077 -0.3106049 -8.40537167 0.84286118 -0.351349
		 -8.46307087 0.83888078 -0.37856477 -8.52571011 0.83455968 -0.39054218 -8.58935261 0.83016944 -0.38652861
		 -8.64999962 0.82598543 -0.36677623 -8.70384121 0.82227159 -0.33252621 -8.74749374 0.81926012 -0.28593057
		 -8.77821445 0.81714106 -0.22991708 -8.7940731 0.81604695 -0.16800527 -8.7940731 0.81604695 -0.10408536
		 -8.77821445 0.81714106 -0.04217355 -8.74749374 0.81926012 0.0138399 -8.70384121 0.82227159 0.060435534
		 -8.64999962 0.82598543 0.094685555 -8.58935261 0.83016944 0.11443791 -8.52571011 0.83455968 0.11845145
		 -8.46307087 0.83888078 0.10647403 -8.40537167 0.84286118 0.079258218 -8.35623741 0.84625077 0.038514078
		 -8.31875515 0.84883595 -0.013198279 -8.29528046 0.85045552 -0.072629586 -8.25508404 0.66168737 -0.13604537
		 -8.2636137 0.66094947 -0.20381337 -8.28866482 0.65878129 -0.26732326 -8.32866573 0.65531969 -0.32258448
		 -8.38110065 0.65078187 -0.36612475 -8.44267559 0.6454525 -0.39520827 -8.50952339 0.63966751 -0.40800765
		 -8.57744122 0.63378978 -0.40371865 -8.64216232 0.62818861 -0.38261074 -8.6996212 0.62321591 -0.34601021
		 -8.74620533 0.61918449 -0.29621685 -8.77898979 0.61634707 -0.23635927 -8.7959137 0.61488247 -0.1701986
		 -8.7959137 0.61488247 -0.10189202 -8.77898979 0.61634707 -0.03573136 -8.74620533 0.61918449 0.024126157
		 -8.69962025 0.62321591 0.073919535 -8.64216232 0.62818861 0.11052005 -8.57744026 0.63378978 0.13162795
		 -8.50952244 0.63966751 0.13591692 -8.44267559 0.6454525 0.12311754 -8.38110065 0.65078187 0.094033971
		 -8.32866573 0.65531945 0.050493643 -8.28866482 0.65878129 -0.0047675967 -8.2636137 0.66094947 -0.068277515
		 -8.21961021 0.47326255 -0.13604537 -8.22867298 0.47231841 -0.20816544 -8.25528908 0.46954632 -0.27575392
		 -8.29778671 0.46512008 -0.33456403 -8.35349655 0.45931721 -0.38090044 -8.41891766 0.45250368 -0.41185176
		 -8.48993874 0.44510627 -0.42547312 -8.5620985 0.4375906 -0.42090866 -8.63086224 0.4304285 -0.39844519
		 -8.69190884 0.42406988 -0.35949415 -8.74140263 0.41891479 -0.30650306 -8.77623463 0.41528678 -0.24280143
		 -8.7942152 0.413414 -0.17239192 -8.7942152 0.413414 -0.099698693 -8.77623463 0.41528678 -0.029289186
		 -8.74140263 0.41891479 0.034412384 -8.69190884 0.42406988 0.087403506 -8.63086224 0.4304285 0.12635452
		 -8.5620985 0.43759036 0.14881796 -8.48993874 0.44510627 0.15338239 -8.41891766 0.45250368 0.139761
		 -8.35349655 0.45931721 0.10880969 -8.29778671 0.46512008 0.062473208 -8.25528908 0.46954632 0.003663078
		 -8.22867298 0.47231841 -0.063925453 -8.18088722 0.28578758 -0.13604537 -8.19047642 0.28461909 -0.21251751
		 -8.21864319 0.28118753 -0.28418463 -8.26361752 0.2757082 -0.34654361 -8.32257271 0.26852584 -0.3956762
		 -8.3918047 0.26009107 -0.42849526 -8.46696377 0.25093436 -0.4429386;
	setAttr ".vt[332:497]" -8.54332638 0.24163079 -0.4380987 -8.61609554 0.2327652 -0.41427967
		 -8.68069935 0.22489452 -0.37297815 -8.7330761 0.21851313 -0.31678933 -8.76993752 0.21402216 -0.24924362
		 -8.78896523 0.21170378 -0.17458525 -8.78896523 0.21170378 -0.097505353 -8.76993752 0.21402216 -0.022846997
		 -8.7330761 0.21851313 0.044698641 -8.68069839 0.22489429 0.10088749 -8.61609554 0.2327652 0.142189
		 -8.54332638 0.24163079 0.166008 -8.46696281 0.25093436 0.17084786 -8.3918047 0.26009107 0.1564045
		 -8.32257271 0.26852584 0.12358543 -8.26361656 0.2757082 0.074452788 -8.21864319 0.28118753 0.012093768
		 -8.19047642 0.28461909 -0.05957339 -8.138937 0.099318624 -0.13604537 -8.14904976 0.097906947 -0.21686959
		 -8.17875099 0.093761086 -0.29261529 -8.22617626 0.087141395 -0.35852319 -8.28834534 0.078463674 -0.41045192
		 -8.36135006 0.068273187 -0.44513872 -8.44060516 0.057210445 -0.46040404 -8.52113056 0.04597044 -0.45528871
		 -8.59786606 0.035259485 -0.43011412 -8.66598988 0.025750399 -0.38646212 -8.72122288 0.018040895 -0.32707554
		 -8.76009274 0.012615204 -0.25568581 -8.78015804 0.0098143816 -0.17677858 -8.78015804 0.0098145008 -0.095312022
		 -8.76009274 0.012615204 -0.016404815 -8.72122192 0.018040895 0.054984868 -8.66598988 0.025750399 0.11437148
		 -8.59786606 0.035259366 0.15802345 -8.52113056 0.04597044 0.183198 -8.44060516 0.057210445 0.18831331
		 -8.36135006 0.068273306 0.17304799 -8.28834534 0.078463674 0.13836116 -8.22617626 0.087141395 0.086432338
		 -8.17875099 0.093761086 0.020524442 -8.14904976 0.097906947 -0.055221327 -8.093784332 -0.086089373 -0.13604537
		 -8.10441399 -0.087762594 -0.22122166 -8.13563442 -0.092677355 -0.30104601 -8.18548393 -0.10052478 -0.37050277
		 -8.2508297 -0.11081183 -0.42522767 -8.3275671 -0.1228919 -0.46178225 -8.41087341 -0.13600636 -0.47786951
		 -8.49551582 -0.14933085 -0.47247875 -8.57617378 -0.16202831 -0.4459486 -8.64777946 -0.17330086 -0.39994612
		 -8.70583534 -0.18244004 -0.33736181 -8.74669266 -0.18887186 -0.26212797 -8.76778316 -0.19219196 -0.17897192
		 -8.76778316 -0.19219196 -0.093118683 -8.74669266 -0.18887186 -0.0099626333 -8.70583534 -0.18244004 0.065271124
		 -8.64777946 -0.17330074 0.12785545 -8.57617283 -0.16202831 0.17385796 -8.49551487 -0.14933074 0.20038804
		 -8.41087341 -0.13600636 0.20577878 -8.3275671 -0.1228919 0.18969148 -8.2508297 -0.11081183 0.15313691
		 -8.18548393 -0.10052478 0.098411918 -8.13563442 -0.092677355 0.028955132 -8.10441399 -0.087762594 -0.050869264
		 -8.045452118 -0.27038026 -0.13604537 -8.056591988 -0.27233386 -0.22557373 -8.089312553 -0.27807164 -0.3094767
		 -8.14155674 -0.28723311 -0.38248235 -8.21004295 -0.29924285 -0.44000342 -8.29046726 -0.31334603 -0.47842574
		 -8.37777615 -0.32865655 -0.49533501 -8.46648502 -0.34421253 -0.48966879 -8.55101776 -0.35903621 -0.46178311
		 -8.62606525 -0.37219632 -0.41343009 -8.68690968 -0.38286602 -0.34764802 -8.72973061 -0.39037502 -0.26857015
		 -8.75183487 -0.39425111 -0.18116523 -8.75183487 -0.39425111 -0.090925351 -8.72972965 -0.39037502 -0.003520444
		 -8.68690968 -0.38286602 0.075557366 -8.62606525 -0.37219632 0.14133945 -8.55101776 -0.35903621 0.18969244
		 -8.46648502 -0.34421241 0.21757808 -8.37777615 -0.32865655 0.22324428 -8.29046726 -0.31334603 0.20633498
		 -8.21004295 -0.29924285 0.16791266 -8.14155674 -0.28723311 0.1103915 -8.089312553 -0.27807164 0.037385821
		 -8.056591988 -0.27233386 -0.046517193 -7.99396658 -0.45350087 -0.13604537 -8.005610466 -0.45575285 -0.22992581
		 -8.039811134 -0.46236765 -0.31790739 -8.094419479 -0.47292924 -0.39446193 -8.16600418 -0.48677421 -0.45477915
		 -8.25006676 -0.50303245 -0.49506921 -8.34132576 -0.52068257 -0.51280046 -8.4340477 -0.53861558 -0.50685883
		 -8.52240562 -0.55570459 -0.47761756 -8.60084724 -0.57087576 -0.42691407 -8.66444588 -0.58317614 -0.35793427
		 -8.70920277 -0.5918324 -0.27501231 -8.73230743 -0.59630108 -0.18335856 -8.73230743 -0.59630108 -0.088732019
		 -8.70920277 -0.5918324 0.0029217452 -8.66444588 -0.58317614 0.085843608 -8.60084724 -0.57087588 0.15482342
		 -8.52240562 -0.55570459 0.20552689 -8.4340477 -0.53861558 0.23476809 -8.34132576 -0.52068257 0.24070972
		 -8.25006676 -0.50303245 0.22297844 -8.16600323 -0.48677409 0.18268839 -8.094419479 -0.47292912 0.12237105
		 -8.039811134 -0.46236765 0.045816496 -8.005610466 -0.45575297 -0.042165138 -7.93935347 -0.63539708 -0.13604537
		 -7.95149422 -0.6379658 -0.23427787 -7.98715401 -0.64551067 -0.32633808 -8.044092178 -0.65755737 -0.40644151
		 -8.11873055 -0.67334914 -0.4695549 -8.20638084 -0.69189358 -0.51171267 -8.3015337 -0.71202576 -0.53026593
		 -8.39821148 -0.73248041 -0.52404881 -8.49033928 -0.75197256 -0.49345204 -8.5721283 -0.76927698 -0.44039807
		 -8.63843918 -0.7833069 -0.36822051 -8.68510628 -0.79318058 -0.2814545 -8.70919609 -0.7982775 -0.18555188
		 -8.70919609 -0.7982775 -0.086538687 -8.68510628 -0.79318058 0.0093639195 -8.63843918 -0.7833069 0.096129864
		 -8.5721283 -0.76927698 0.16830742 -8.49033833 -0.75197244 0.22136137 -8.39821053 -0.73248029 0.25195813
		 -8.3015337 -0.71202576 0.25817519 -8.20638084 -0.69189358 0.23962197 -8.11873055 -0.67334914 0.19746414
		 -8.044092178 -0.65755749 0.13435063 -7.98715401 -0.64551055 0.054247186 -7.95149422 -0.6379658 -0.037813067
		 -7.881639 -0.81601501 -0.13604537 -7.89426899 -0.81891835 -0.23862997 -7.93136549 -0.82744616 -0.33476877
		 -7.99059772 -0.84106243 -0.41842109 -8.068243027 -0.85891169 -0.48433065 -8.15942383 -0.87987232 -0.52835619
		 -8.25841045 -0.90262735 -0.5477314 -8.35898399 -0.92574704 -0.5412389 -8.45482254 -0.94777864 -0.50928652
		 -8.53990746 -0.96733779 -0.45388204 -8.60889053 -0.98319554 -0.37850678 -8.65743732 -0.99435562 -0.28789669
		 -8.68249798 -1.00011658669 -0.18774521 -8.68249798 -1.00011658669 -0.084345348 -8.65743732 -0.99435562 0.015806109
		 -8.60889053 -0.98319554 0.10641611 -8.53990746 -0.96733773 0.18179142 -8.45482254 -0.94777858 0.23719588
		 -8.35898304 -0.92574698 0.2691482 -8.25841045 -0.90262735 0.2756407 -8.15942383 -0.87987226 0.25626546
		 -8.068243027 -0.85891163 0.21223986 -7.99059725 -0.84106237 0.14633021;
	setAttr ".vt[498:663]" -7.93136549 -0.8274461 0.062677875 -7.89426899 -0.81891835 -0.033461004
		 -7.82085228 -0.9953022 -0.13604537 -7.83396339 -0.99855804 -0.24298203 -7.87247229 -1.0081211329 -0.34319946
		 -7.93396044 -1.023390532 -0.43040067 -8.014562607 -1.043406725 -0.49910638 -8.10921669 -1.066912174 -0.54499972
		 -8.21197319 -1.092429757 -0.56519687 -8.31637573 -1.11835635 -0.55842888 -8.41586494 -1.14306259 -0.52512097
		 -8.50418949 -1.16499639 -0.46736601 -8.57579994 -1.18277943 -0.38879299 -8.62619495 -1.19529438 -0.29433885
		 -8.65221024 -1.20175481 -0.18993855 -8.65221024 -1.20175481 -0.082152016 -8.62619495 -1.19529438 0.022248298
		 -8.57579899 -1.18277943 0.11670235 -8.50418949 -1.16499639 0.1952754 -8.41586494 -1.14306259 0.25303033
		 -8.31637573 -1.11835623 0.28633821 -8.21197319 -1.092429757 0.29310614 -8.10921669 -1.066912174 0.27290893
		 -8.014562607 -1.043406725 0.22701558 -7.93395996 -1.023390532 0.15830979 -7.87247229 -1.0081210136 0.07110855
		 -7.83396339 -0.99855804 -0.029108942 -7.75702143 -1.17320681 -0.13604537 -7.77060509 -1.17683268 -0.24733409
		 -7.81050158 -1.18748283 -0.35163015 -7.87420464 -1.20448804 -0.44238025 -7.9577117 -1.2267797 -0.51388216
		 -8.055775642 -1.25295711 -0.56164318 -8.16223431 -1.28137565 -0.58266234 -8.27039814 -1.31024933 -0.57561892
		 -8.37347221 -1.33776426 -0.54095542 -8.46497917 -1.36219144 -0.48085001 -8.53916836 -1.38199592 -0.39907926
		 -8.59138012 -1.39593363 -0.30078104 -8.61833286 -1.40312839 -0.19213188 -8.61833286 -1.40312839 -0.079958677
		 -8.59138012 -1.39593363 0.028690487 -8.53916836 -1.38199592 0.12698859 -8.46497822 -1.36219144 0.20875937
		 -8.37347221 -1.33776426 0.26886481 -8.27039814 -1.31024933 0.30352825 -8.16223335 -1.28137565 0.31057161
		 -8.055775642 -1.25295711 0.28955242 -7.9577117 -1.2267797 0.24179134 -7.87420464 -1.20448804 0.17028937
		 -7.81050158 -1.18748283 0.079539239 -7.77060509 -1.17683268 -0.024756879 -7.69017696 -1.34967685 -0.13604537
		 -7.70422363 -1.35369039 -0.25168616 -7.74548101 -1.36547899 -0.36006084 -7.81135702 -1.38430166 -0.4543598
		 -7.89771175 -1.40897584 -0.52865785 -7.99912024 -1.43795121 -0.57828665 -8.10921001 -1.46940708 -0.60012782
		 -8.22106361 -1.50136709 -0.59280896 -8.32765293 -1.5318228 -0.55678993 -8.42228031 -1.5588609 -0.49433398
		 -8.49900055 -1.58078218 -0.40936548 -8.55299282 -1.59620941 -0.3072232 -8.58086491 -1.6041733 -0.19432519
		 -8.58086491 -1.60417318 -0.077765346 -8.55299282 -1.59620941 0.035132661 -8.49900055 -1.58078218 0.13727483
		 -8.42228031 -1.55886078 0.22224334 -8.32765198 -1.5318228 0.28469926 -8.22106266 -1.50136697 0.32071826
		 -8.10921001 -1.46940708 0.32803705 -7.99912024 -1.43795121 0.30619591 -7.89771175 -1.40897584 0.25656706
		 -7.81135654 -1.38430154 0.18226892 -7.74548101 -1.36547887 0.087969914 -7.70422363 -1.35369039 -0.020404816
		 -7.62034845 -1.52466178 -0.13604537 -7.63484859 -1.52908015 -0.25603825 -7.67743874 -1.54205763 -0.36849153
		 -7.74544287 -1.56277871 -0.46633941 -7.8345871 -1.5899415 -0.54343361 -7.93927097 -1.62183917 -0.59493017
		 -8.052916527 -1.65646756 -0.61759329 -8.1683836 -1.69165075 -0.60999894 -8.27841568 -1.72517824 -0.57262444
		 -8.37610054 -1.75494313 -0.50781798 -8.45529842 -1.77907538 -0.41965172 -8.51103497 -1.79605854 -0.31366539
		 -8.53980732 -1.80482554 -0.19651853 -8.53980732 -1.80482554 -0.075572014 -8.51103497 -1.79605854 0.041574851
		 -8.45529842 -1.77907526 0.14756107 -8.37610054 -1.75494313 0.23572734 -8.27841568 -1.72517812 0.30053377
		 -8.1683836 -1.69165075 0.3379083 -8.052916527 -1.65646756 0.34550256 -7.93927097 -1.62183905 0.32283941
		 -7.8345871 -1.58994138 0.27134281 -7.74544239 -1.56277871 0.1942485 -7.67743874 -1.54205751 0.096400604
		 -7.63484859 -1.52908015 -0.016052753 -7.54756832 -1.69811118 -0.13604537 -7.5625124 -1.70295131 -0.26039031
		 -7.60640574 -1.71716762 -0.37692222 -7.67649078 -1.73986685 -0.47831896 -7.768363 -1.76962268 -0.5582093
		 -7.87625027 -1.80456555 -0.61157364 -7.99337339 -1.84249973 -0.63505876 -8.11237335 -1.88104177 -0.62718898
		 -8.22577286 -1.91776991 -0.5884589 -8.32644653 -1.95037627 -0.52130193 -8.40806866 -1.97681236 -0.42993796
		 -8.46551132 -1.99541676 -0.32010758 -8.49516392 -2.0050206184 -0.19871184 -8.49516296 -2.0050206184 -0.073378682
		 -8.46551037 -1.99541676 0.048017025 -8.40806866 -1.97681224 0.15784732 -8.32644653 -1.95037627 0.24921131
		 -8.22577286 -1.91776979 0.31636822 -8.11237335 -1.88104165 0.35509831 -7.99337339 -1.84249973 0.362968
		 -7.87625027 -1.80456543 0.33948287 -7.768363 -1.76962268 0.28611854 -7.67649031 -1.73986673 0.20622805
		 -7.60640574 -1.71716762 0.10483128 -7.5625124 -1.70295131 -0.01170069 -7.23489285 2.77174473 -0.2858609
		 -7.23739243 2.77200985 -0.30575609 -7.23939991 2.57695198 -0.31010818 -7.23634815 2.57668209 -0.2858609
		 -9.47600079 2.5633831 -1.042882919 -9.49568367 2.56477785 -1.021869183 -9.52213001 2.3684535 -1.032155514
		 -9.49942589 2.36724234 -1.05636692 -8.66096497 2.11675715 1.20425367 -8.62346363 2.11541224 1.20661449
		 -8.627738 1.91978884 1.22407997 -8.66963482 1.92055941 1.22144365 -7.42520237 1.55494356 -0.9361217
		 -7.45503426 1.55445099 -0.9771874 -7.43747616 1.36167479 -0.98916698 -7.40508032 1.36277604 -0.94455242
		 -9.93600178 1.051999331 -0.52075756 -9.95078754 1.051238298 -0.46309456 -9.95615768 0.85044098 -0.46528789
		 -9.94029903 0.85153508 -0.52719969 -7.94622421 0.80017686 1.20459628 -7.8846488 0.80550623 1.17551267
		 -7.8570447 0.61404157 1.19028842 -7.9224658 0.60722804 1.22123969 -7.80070591 0.25916576 -1.49191165
		 -7.87371159 0.24897528 -1.52659845 -7.83992815 0.057810187 -1.54324198 -7.76319122 0.069890261 -1.5066874
		 -9.90934372 -0.50278997 0.20638272 -9.88723946 -0.49891376 0.29378763 -9.86671162 -0.70037138 0.30022982
		 -9.88981628 -0.70483994 0.20857605 -7.12341642 -0.3430022 0.83678329 -7.066478252 -0.33095551 0.75667977
		 -7.010689735 -0.51289105 0.76511049 -7.06992197 -0.52650726 0.84876287 -8.26275444 -1.19947159 -1.77563643
		 -8.37091923 -1.22834539 -1.76859295 -8.32158375 -1.41946304 -1.78578293;
	setAttr ".vt[664:692]" -8.20973015 -1.38750315 -1.79310191 -9.31764889 -1.94209385 0.96596038
		 -9.23845005 -1.9179616 1.05412662 -9.188797 -2.11339474 1.067610621 -9.27041912 -2.13983083 0.97624671
		 -8.26547718 3.81292534 -1.86111104 -8.26660633 3.82219505 -1.84009731 -8.38439369 3.68490124 -1.85038352
		 -8.38224316 3.67394924 -1.87459505 -8.026987076 2.71092129 2.39720964 -8.0092048645 2.69496107 2.39957047
		 -8.078071594 2.51923132 2.41703606 -8.099778175 2.53709936 2.41439962 -7.47414017 1.081750631 2.28607512
		 -7.41337729 1.071414948 2.25699139 -7.43489695 0.8790369 2.27176714 -7.50290155 0.88933921 2.30271816
		 -7.47950363 0.54880929 -2.57337141 -7.56226301 0.55881691 -2.60805845 -7.58929586 0.36594534 -2.62470198
		 -7.4980278 0.35627818 -2.58814716 -9.52605915 -0.28533661 -2.96861076 -9.67472744 -0.22246385 -2.96156693
		 -9.76414299 -0.39890075 -2.9787569 -9.60333538 -0.46494997 -2.98607588 -11.82410431 0.58914161 1.78435993
		 -11.75550842 0.54277945 1.87252629 -11.87614059 0.38120103 1.88601029 -11.94805145 0.42799711 1.79464626;
	setAttr -s 1361 ".ed";
	setAttr ".ed[0:165]"  0 1 1 1 2 1 2 3 1 3 4 1 4 5 1 5 6 1 6 7 1 7 8 1 8 9 1
		 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 16 1 16 17 1 17 18 1 18 19 1 19 20 1
		 20 21 1 21 22 1 22 23 1 23 24 1 24 0 1 624 623 1 623 622 1 622 621 1 621 620 1 620 619 1
		 619 618 1 618 617 1 617 616 1 616 615 1 615 614 1 614 613 1 613 612 1 612 611 1 611 610 1
		 610 609 1 609 608 1 608 607 1 607 606 1 606 605 1 605 604 1 604 603 1 603 602 1 602 601 1
		 601 600 1 600 624 1 26 27 1 27 2 1 1 26 1 27 28 1 28 3 1 28 29 1 29 4 1 29 30 1 30 5 1
		 30 31 1 31 6 1 31 32 1 32 7 1 32 33 1 33 8 1 33 34 1 34 9 1 34 35 1 35 10 1 35 36 1
		 36 11 1 36 37 1 37 12 1 37 38 1 38 13 1 38 39 1 39 14 1 39 40 1 40 15 1 40 41 1 41 16 1
		 41 42 1 42 17 1 42 43 1 43 18 1 43 44 1 44 19 1 44 45 1 45 20 1 45 46 1 46 21 1 46 47 1
		 47 22 1 47 48 1 48 23 1 48 49 1 49 24 1 49 25 1 25 0 1 50 51 1 51 26 1 26 25 1 25 50 1
		 51 52 1 52 27 1 52 53 1 53 28 1 53 54 1 54 29 1 54 55 1 55 30 1 55 56 1 56 31 1 56 57 1
		 57 32 1 57 58 1 58 33 1 58 59 1 59 34 1 59 60 1 60 35 1 60 61 1 61 36 1 61 62 1 62 37 1
		 62 63 1 63 38 1 63 64 1 64 39 1 64 65 1 65 40 1 65 66 1 66 41 1 66 67 1 67 42 1 67 68 1
		 68 43 1 68 69 1 69 44 1 69 70 1 70 45 1 70 71 1 71 46 1 71 72 1 72 47 1 72 73 1 73 48 1
		 73 74 1 74 49 1 74 50 1 75 76 1 76 51 1 50 75 1 76 77 1 77 52 1 77 78 1 78 53 1 78 79 1
		 79 54 1 79 80 1 80 55 1 80 81 1 81 56 1 81 82 1 82 57 1 82 83 1;
	setAttr ".ed[166:331]" 83 58 1 83 84 1 84 59 1 85 86 1 86 61 1 60 85 1 86 87 1
		 87 62 1 87 88 1 88 63 1 88 89 1 89 64 1 89 90 1 90 65 1 90 91 1 91 66 1 91 92 1 92 67 1
		 92 93 1 93 68 1 93 94 1 94 69 1 94 95 1 95 70 1 95 96 1 96 71 1 96 97 1 97 72 1 97 98 1
		 98 73 1 98 99 1 99 74 1 99 75 1 100 101 1 101 76 1 75 100 1 101 102 1 102 77 1 102 103 1
		 103 78 1 103 104 1 104 79 1 104 105 1 105 80 1 105 106 1 106 81 1 106 107 1 107 82 1
		 107 108 1 108 83 1 108 109 1 109 84 1 109 110 1 110 85 1 85 84 1 110 111 1 111 86 1
		 111 112 1 112 87 1 112 113 1 113 88 1 113 114 1 114 89 1 114 115 1 115 90 1 115 116 1
		 116 91 1 116 117 1 117 92 1 117 118 1 118 93 1 118 119 1 119 94 1 119 120 1 120 95 1
		 120 121 1 121 96 1 121 122 1 122 97 1 122 123 1 123 98 1 123 124 1 124 99 1 124 100 1
		 125 126 1 126 101 1 100 125 1 126 127 1 127 102 1 127 128 1 128 103 1 128 129 1 129 104 1
		 129 130 1 130 105 1 130 131 1 131 106 1 131 132 1 132 107 1 132 133 1 133 108 1 133 134 1
		 134 109 1 134 135 1 135 110 1 135 136 1 136 111 1 136 137 1 137 112 1 137 138 1 138 113 1
		 138 139 1 139 114 1 139 140 1 140 115 1 140 141 1 141 116 1 141 142 1 142 117 1 142 143 1
		 143 118 1 144 145 1 145 120 1 119 144 1 145 146 1 146 121 1 146 147 1 147 122 1 147 148 1
		 148 123 1 148 149 1 149 124 1 149 125 1 150 151 1 151 126 1 125 150 1 151 152 1 152 127 1
		 152 153 1 153 128 1 153 154 1 154 129 1 154 155 1 155 130 1 155 156 1 156 131 1 156 157 1
		 157 132 1 157 158 1 158 133 1 158 159 1 159 134 1 159 160 1 160 135 1 160 161 1 161 136 1
		 161 162 1 162 137 1 162 163 1 163 138 1 163 164 1 164 139 1 164 165 1 165 140 1 165 166 1
		 166 141 1;
	setAttr ".ed[332:497]" 166 167 1 167 142 1 167 168 1 168 143 1 168 169 1 169 144 1
		 144 143 1 169 170 1 170 145 1 170 171 1 171 146 1 171 172 1 172 147 1 172 173 1 173 148 1
		 173 174 1 174 149 1 174 150 1 175 176 1 176 151 1 150 175 1 176 177 1 177 152 1 177 178 1
		 178 153 1 178 179 1 179 154 1 179 180 1 180 155 1 180 181 1 181 156 1 181 182 1 182 157 1
		 182 183 1 183 158 1 183 184 1 184 159 1 184 185 1 185 160 1 185 186 1 186 161 1 186 187 1
		 187 162 1 187 188 1 188 163 1 188 189 1 189 164 1 189 190 1 190 165 1 190 191 1 191 166 1
		 191 192 1 192 167 1 192 193 1 193 168 1 193 194 1 194 169 1 194 195 1 195 170 1 195 196 1
		 196 171 1 196 197 1 197 172 1 197 198 1 198 173 1 198 199 1 199 174 1 199 175 1 200 201 1
		 201 176 1 175 200 1 201 202 1 202 177 1 203 204 1 204 179 1 178 203 1 204 205 1 205 180 1
		 205 206 1 206 181 1 206 207 1 207 182 1 207 208 1 208 183 1 208 209 1 209 184 1 209 210 1
		 210 185 1 210 211 1 211 186 1 211 212 1 212 187 1 212 213 1 213 188 1 213 214 1 214 189 1
		 214 215 1 215 190 1 215 216 1 216 191 1 216 217 1 217 192 1 217 218 1 218 193 1 218 219 1
		 219 194 1 219 220 1 220 195 1 220 221 1 221 196 1 221 222 1 222 197 1 222 223 1 223 198 1
		 223 224 1 224 199 1 224 200 1 225 226 1 226 201 1 200 225 1 226 227 1 227 202 1 227 228 1
		 228 203 1 203 202 1 228 229 1 229 204 1 229 230 1 230 205 1 230 231 1 231 206 1 231 232 1
		 232 207 1 232 233 1 233 208 1 233 234 1 234 209 1 234 235 1 235 210 1 235 236 1 236 211 1
		 236 237 1 237 212 1 237 238 1 238 213 1 238 239 1 239 214 1 239 240 1 240 215 1 240 241 1
		 241 216 1 241 242 1 242 217 1 242 243 1 243 218 1 243 244 1 244 219 1 244 245 1 245 220 1
		 245 246 1 246 221 1 246 247 1 247 222 1 247 248 1 248 223 1 248 249 1;
	setAttr ".ed[498:663]" 249 224 1 249 225 1 250 251 1 251 226 1 225 250 1 251 252 1
		 252 227 1 252 253 1 253 228 1 253 254 1 254 229 1 254 255 1 255 230 1 255 256 1 256 231 1
		 256 257 1 257 232 1 257 258 1 258 233 1 258 259 1 259 234 1 259 260 1 260 235 1 260 261 1
		 261 236 1 262 263 1 263 238 1 237 262 1 263 264 1 264 239 1 264 265 1 265 240 1 265 266 1
		 266 241 1 266 267 1 267 242 1 267 268 1 268 243 1 268 269 1 269 244 1 269 270 1 270 245 1
		 270 271 1 271 246 1 271 272 1 272 247 1 272 273 1 273 248 1 273 274 1 274 249 1 274 250 1
		 275 276 1 276 251 1 250 275 1 276 277 1 277 252 1 277 278 1 278 253 1 278 279 1 279 254 1
		 279 280 1 280 255 1 280 281 1 281 256 1 281 282 1 282 257 1 282 283 1 283 258 1 283 284 1
		 284 259 1 284 285 1 285 260 1 285 286 1 286 261 1 286 287 1 287 262 1 262 261 1 287 288 1
		 288 263 1 288 289 1 289 264 1 289 290 1 290 265 1 290 291 1 291 266 1 291 292 1 292 267 1
		 292 293 1 293 268 1 293 294 1 294 269 1 294 295 1 295 270 1 295 296 1 296 271 1 296 297 1
		 297 272 1 297 298 1 298 273 1 298 299 1 299 274 1 299 275 1 300 301 1 301 276 1 275 300 1
		 301 302 1 302 277 1 302 303 1 303 278 1 303 304 1 304 279 1 304 305 1 305 280 1 305 306 1
		 306 281 1 306 307 1 307 282 1 307 308 1 308 283 1 308 309 1 309 284 1 309 310 1 310 285 1
		 310 311 1 311 286 1 311 312 1 312 287 1 312 313 1 313 288 1 313 314 1 314 289 1 314 315 1
		 315 290 1 315 316 1 316 291 1 316 317 1 317 292 1 317 318 1 318 293 1 318 319 1 319 294 1
		 319 320 1 320 295 1 321 322 1 322 297 1 296 321 1 322 323 1 323 298 1 323 324 1 324 299 1
		 324 300 1 325 326 1 326 301 1 300 325 1 326 327 1 327 302 1 327 328 1 328 303 1 328 329 1
		 329 304 1 329 330 1 330 305 1 330 331 1 331 306 1 331 332 1 332 307 1;
	setAttr ".ed[664:829]" 332 333 1 333 308 1 333 334 1 334 309 1 334 335 1 335 310 1
		 335 336 1 336 311 1 336 337 1 337 312 1 337 338 1 338 313 1 338 339 1 339 314 1 339 340 1
		 340 315 1 340 341 1 341 316 1 341 342 1 342 317 1 342 343 1 343 318 1 343 344 1 344 319 1
		 344 345 1 345 320 1 345 346 1 346 321 1 321 320 1 346 347 1 347 322 1 347 348 1 348 323 1
		 348 349 1 349 324 1 349 325 1 350 351 1 351 326 1 325 350 1 351 352 1 352 327 1 352 353 1
		 353 328 1 353 354 1 354 329 1 354 355 1 355 330 1 355 356 1 356 331 1 356 357 1 357 332 1
		 357 358 1 358 333 1 358 359 1 359 334 1 359 360 1 360 335 1 360 361 1 361 336 1 361 362 1
		 362 337 1 362 363 1 363 338 1 363 364 1 364 339 1 364 365 1 365 340 1 365 366 1 366 341 1
		 366 367 1 367 342 1 367 368 1 368 343 1 368 369 1 369 344 1 369 370 1 370 345 1 370 371 1
		 371 346 1 371 372 1 372 347 1 372 373 1 373 348 1 373 374 1 374 349 1 374 350 1 375 376 1
		 376 351 1 350 375 1 376 377 1 377 352 1 377 378 1 378 353 1 378 379 1 379 354 1 380 381 1
		 381 356 1 355 380 1 381 382 1 382 357 1 382 383 1 383 358 1 383 384 1 384 359 1 384 385 1
		 385 360 1 385 386 1 386 361 1 386 387 1 387 362 1 387 388 1 388 363 1 388 389 1 389 364 1
		 389 390 1 390 365 1 390 391 1 391 366 1 391 392 1 392 367 1 392 393 1 393 368 1 393 394 1
		 394 369 1 394 395 1 395 370 1 395 396 1 396 371 1 396 397 1 397 372 1 397 398 1 398 373 1
		 398 399 1 399 374 1 399 375 1 400 401 1 401 376 1 375 400 1 401 402 1 402 377 1 402 403 1
		 403 378 1 403 404 1 404 379 1 404 405 1 405 380 1 380 379 1 405 406 1 406 381 1 406 407 1
		 407 382 1 407 408 1 408 383 1 408 409 1 409 384 1 409 410 1 410 385 1 410 411 1 411 386 1
		 411 412 1 412 387 1 412 413 1 413 388 1 413 414 1 414 389 1 414 415 1;
	setAttr ".ed[830:995]" 415 390 1 415 416 1 416 391 1 416 417 1 417 392 1 417 418 1
		 418 393 1 418 419 1 419 394 1 419 420 1 420 395 1 420 421 1 421 396 1 421 422 1 422 397 1
		 422 423 1 423 398 1 423 424 1 424 399 1 424 400 1 425 426 1 426 401 1 400 425 1 426 427 1
		 427 402 1 427 428 1 428 403 1 428 429 1 429 404 1 429 430 1 430 405 1 430 431 1 431 406 1
		 431 432 1 432 407 1 432 433 1 433 408 1 433 434 1 434 409 1 434 435 1 435 410 1 435 436 1
		 436 411 1 436 437 1 437 412 1 437 438 1 438 413 1 439 440 1 440 415 1 414 439 1 440 441 1
		 441 416 1 441 442 1 442 417 1 442 443 1 443 418 1 443 444 1 444 419 1 444 445 1 445 420 1
		 445 446 1 446 421 1 446 447 1 447 422 1 447 448 1 448 423 1 448 449 1 449 424 1 449 425 1
		 450 451 1 451 426 1 425 450 1 451 452 1 452 427 1 452 453 1 453 428 1 453 454 1 454 429 1
		 454 455 1 455 430 1 455 456 1 456 431 1 456 457 1 457 432 1 457 458 1 458 433 1 458 459 1
		 459 434 1 459 460 1 460 435 1 460 461 1 461 436 1 461 462 1 462 437 1 462 463 1 463 438 1
		 463 464 1 464 439 1 439 438 1 464 465 1 465 440 1 465 466 1 466 441 1 466 467 1 467 442 1
		 467 468 1 468 443 1 468 469 1 469 444 1 469 470 1 470 445 1 470 471 1 471 446 1 471 472 1
		 472 447 1 472 473 1 473 448 1 473 474 1 474 449 1 474 450 1 475 476 1 476 451 1 450 475 1
		 476 477 1 477 452 1 477 478 1 478 453 1 478 479 1 479 454 1 479 480 1 480 455 1 480 481 1
		 481 456 1 481 482 1 482 457 1 482 483 1 483 458 1 483 484 1 484 459 1 484 485 1 485 460 1
		 485 486 1 486 461 1 486 487 1 487 462 1 487 488 1 488 463 1 488 489 1 489 464 1 489 490 1
		 490 465 1 490 491 1 491 466 1 491 492 1 492 467 1 492 493 1 493 468 1 493 494 1 494 469 1
		 494 495 1 495 470 1 495 496 1 496 471 1 496 497 1 497 472 1 498 499 1;
	setAttr ".ed[996:1161]" 499 474 1 473 498 1 499 475 1 500 501 1 501 476 1 475 500 1
		 501 502 1 502 477 1 502 503 1 503 478 1 503 504 1 504 479 1 504 505 1 505 480 1 505 506 1
		 506 481 1 506 507 1 507 482 1 507 508 1 508 483 1 508 509 1 509 484 1 509 510 1 510 485 1
		 510 511 1 511 486 1 511 512 1 512 487 1 512 513 1 513 488 1 513 514 1 514 489 1 514 515 1
		 515 490 1 515 516 1 516 491 1 516 517 1 517 492 1 517 518 1 518 493 1 518 519 1 519 494 1
		 519 520 1 520 495 1 520 521 1 521 496 1 521 522 1 522 497 1 522 523 1 523 498 1 498 497 1
		 523 524 1 524 499 1 524 500 1 525 526 1 526 501 1 500 525 1 526 527 1 527 502 1 527 528 1
		 528 503 1 528 529 1 529 504 1 529 530 1 530 505 1 530 531 1 531 506 1 531 532 1 532 507 1
		 532 533 1 533 508 1 533 534 1 534 509 1 534 535 1 535 510 1 535 536 1 536 511 1 536 537 1
		 537 512 1 537 538 1 538 513 1 538 539 1 539 514 1 539 540 1 540 515 1 540 541 1 541 516 1
		 541 542 1 542 517 1 542 543 1 543 518 1 543 544 1 544 519 1 544 545 1 545 520 1 545 546 1
		 546 521 1 546 547 1 547 522 1 547 548 1 548 523 1 548 549 1 549 524 1 549 525 1 550 551 1
		 551 526 1 525 550 1 551 552 1 552 527 1 552 553 1 553 528 1 553 554 1 554 529 1 554 555 1
		 555 530 1 555 556 1 556 531 1 557 558 1 558 533 1 532 557 1 558 559 1 559 534 1 559 560 1
		 560 535 1 560 561 1 561 536 1 561 562 1 562 537 1 562 563 1 563 538 1 563 564 1 564 539 1
		 564 565 1 565 540 1 565 566 1 566 541 1 566 567 1 567 542 1 567 568 1 568 543 1 568 569 1
		 569 544 1 569 570 1 570 545 1 570 571 1 571 546 1 571 572 1 572 547 1 572 573 1 573 548 1
		 573 574 1 574 549 1 574 550 1 575 576 1 576 551 1 550 575 1 576 577 1 577 552 1 577 578 1
		 578 553 1 578 579 1 579 554 1 579 580 1 580 555 1 580 581 1 581 556 1;
	setAttr ".ed[1162:1327]" 581 582 1 582 557 1 557 556 1 582 583 1 583 558 1 583 584 1
		 584 559 1 584 585 1 585 560 1 585 586 1 586 561 1 586 587 1 587 562 1 587 588 1 588 563 1
		 588 589 1 589 564 1 589 590 1 590 565 1 590 591 1 591 566 1 591 592 1 592 567 1 592 593 1
		 593 568 1 593 594 1 594 569 1 594 595 1 595 570 1 595 596 1 596 571 1 596 597 1 597 572 1
		 597 598 1 598 573 1 598 599 1 599 574 1 599 575 1 601 576 1 575 600 1 602 577 1 603 578 1
		 604 579 1 605 580 1 606 581 1 607 582 1 608 583 1 609 584 1 610 585 1 611 586 1 612 587 1
		 613 588 1 614 589 1 615 590 1 617 592 1 591 616 1 618 593 1 619 594 1 620 595 1 621 596 1
		 622 597 1 623 598 1 624 599 1 628 627 1 627 626 1 626 625 1 625 628 1 640 639 1 639 638 1
		 638 637 1 637 640 1 644 643 1 643 642 1 642 641 1 641 644 1 656 655 1 655 654 1 654 653 1
		 653 656 1 660 659 1 659 658 1 658 657 1 657 660 1 626 1 1 0 625 1 627 26 1 628 25 1
		 629 630 1 630 60 1 59 629 1 630 631 1 631 85 1 631 632 1 632 84 1 632 629 1 633 634 1
		 634 119 1 118 633 1 634 635 1 635 144 1 635 636 1 636 143 1 636 633 1 638 178 1 177 637 1
		 639 203 1 640 202 1 642 237 1 236 641 1 643 262 1 644 261 1 645 646 1 646 296 1 295 645 1
		 646 647 1 647 321 1 647 648 1 648 320 1 648 645 1 649 650 1 650 355 1 354 649 1 650 651 1
		 651 380 1 651 652 1 652 379 1 652 649 1 654 414 1 413 653 1 655 439 1 656 438 1 658 473 1
		 472 657 1 659 498 1 660 497 1 661 662 1 662 532 1 531 661 1 662 663 1 663 557 1 663 664 1
		 664 556 1 664 661 1 665 666 1 666 591 1 590 665 1 666 667 1 667 616 1 667 668 1 668 615 1
		 668 665 1 672 671 1 671 670 1 670 669 1 669 672 1 676 675 1 675 674 1 674 673 1 673 676 1
		 680 679 1 679 678 1 678 677 1 677 680 1 684 683 1 683 682 1 682 681 1;
	setAttr ".ed[1328:1360]" 681 684 1 688 687 1 687 686 1 686 685 1 685 688 1 692 691 1
		 691 690 1 690 689 1 689 692 1 670 630 1 629 669 1 671 631 1 672 632 1 674 634 1 633 673 1
		 675 635 1 676 636 1 678 646 1 645 677 1 679 647 1 680 648 1 682 650 1 649 681 1 683 651 1
		 684 652 1 686 662 1 661 685 1 687 663 1 688 664 1 690 666 1 665 689 1 691 667 1 692 668 1;
	setAttr -s 670 -ch 2722 ".fc";
	setAttr ".fc[0:499]" -type "polyFaces" 
		f 25 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24
		f 25 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49
		f 4 50 51 -2 52
		f 4 53 54 -3 -52
		f 4 55 56 -4 -55
		f 4 57 58 -5 -57
		f 4 59 60 -6 -59
		f 4 61 62 -7 -61
		f 4 63 64 -8 -63
		f 4 65 66 -9 -65
		f 4 67 68 -10 -67
		f 4 69 70 -11 -69
		f 4 71 72 -12 -71
		f 4 73 74 -13 -73
		f 4 75 76 -14 -75
		f 4 77 78 -15 -77
		f 4 79 80 -16 -79
		f 4 81 82 -17 -81
		f 4 83 84 -18 -83
		f 4 85 86 -19 -85
		f 4 87 88 -20 -87
		f 4 89 90 -21 -89
		f 4 91 92 -22 -91
		f 4 93 94 -23 -93
		f 4 95 96 -24 -95
		f 4 97 98 -25 -97
		f 4 99 100 101 102
		f 4 103 104 -51 -101
		f 4 105 106 -54 -105
		f 4 107 108 -56 -107
		f 4 109 110 -58 -109
		f 4 111 112 -60 -111
		f 4 113 114 -62 -113
		f 4 115 116 -64 -115
		f 4 117 118 -66 -117
		f 4 119 120 -68 -119
		f 4 121 122 -70 -121
		f 4 123 124 -72 -123
		f 4 125 126 -74 -125
		f 4 127 128 -76 -127
		f 4 129 130 -78 -129
		f 4 131 132 -80 -131
		f 4 133 134 -82 -133
		f 4 135 136 -84 -135
		f 4 137 138 -86 -137
		f 4 139 140 -88 -139
		f 4 141 142 -90 -141
		f 4 143 144 -92 -143
		f 4 145 146 -94 -145
		f 4 147 148 -96 -147
		f 4 149 -103 -98 -149
		f 4 150 151 -100 152
		f 4 153 154 -104 -152
		f 4 155 156 -106 -155
		f 4 157 158 -108 -157
		f 4 159 160 -110 -159
		f 4 161 162 -112 -161
		f 4 163 164 -114 -163
		f 4 165 166 -116 -165
		f 4 167 168 -118 -167
		f 4 169 170 -122 171
		f 4 172 173 -124 -171
		f 4 174 175 -126 -174
		f 4 176 177 -128 -176
		f 4 178 179 -130 -178
		f 4 180 181 -132 -180
		f 4 182 183 -134 -182
		f 4 184 185 -136 -184
		f 4 186 187 -138 -186
		f 4 188 189 -140 -188
		f 4 190 191 -142 -190
		f 4 192 193 -144 -192
		f 4 194 195 -146 -194
		f 4 196 197 -148 -196
		f 4 198 -153 -150 -198
		f 4 199 200 -151 201
		f 4 202 203 -154 -201
		f 4 204 205 -156 -204
		f 4 206 207 -158 -206
		f 4 208 209 -160 -208
		f 4 210 211 -162 -210
		f 4 212 213 -164 -212
		f 4 214 215 -166 -214
		f 4 216 217 -168 -216
		f 4 218 219 220 -218
		f 4 221 222 -170 -220
		f 4 223 224 -173 -223
		f 4 225 226 -175 -225
		f 4 227 228 -177 -227
		f 4 229 230 -179 -229
		f 4 231 232 -181 -231
		f 4 233 234 -183 -233
		f 4 235 236 -185 -235
		f 4 237 238 -187 -237
		f 4 239 240 -189 -239
		f 4 241 242 -191 -241
		f 4 243 244 -193 -243
		f 4 245 246 -195 -245
		f 4 247 248 -197 -247
		f 4 249 -202 -199 -249
		f 4 250 251 -200 252
		f 4 253 254 -203 -252
		f 4 255 256 -205 -255
		f 4 257 258 -207 -257
		f 4 259 260 -209 -259
		f 4 261 262 -211 -261
		f 4 263 264 -213 -263
		f 4 265 266 -215 -265
		f 4 267 268 -217 -267
		f 4 269 270 -219 -269
		f 4 271 272 -222 -271
		f 4 273 274 -224 -273
		f 4 275 276 -226 -275
		f 4 277 278 -228 -277
		f 4 279 280 -230 -279
		f 4 281 282 -232 -281
		f 4 283 284 -234 -283
		f 4 285 286 -236 -285
		f 4 287 288 -240 289
		f 4 290 291 -242 -289
		f 4 292 293 -244 -292
		f 4 294 295 -246 -294
		f 4 296 297 -248 -296
		f 4 298 -253 -250 -298
		f 4 299 300 -251 301
		f 4 302 303 -254 -301
		f 4 304 305 -256 -304
		f 4 306 307 -258 -306
		f 4 308 309 -260 -308
		f 4 310 311 -262 -310
		f 4 312 313 -264 -312
		f 4 314 315 -266 -314
		f 4 316 317 -268 -316
		f 4 318 319 -270 -318
		f 4 320 321 -272 -320
		f 4 322 323 -274 -322
		f 4 324 325 -276 -324
		f 4 326 327 -278 -326
		f 4 328 329 -280 -328
		f 4 330 331 -282 -330
		f 4 332 333 -284 -332
		f 4 334 335 -286 -334
		f 4 336 337 338 -336
		f 4 339 340 -288 -338
		f 4 341 342 -291 -341
		f 4 343 344 -293 -343
		f 4 345 346 -295 -345
		f 4 347 348 -297 -347
		f 4 349 -302 -299 -349
		f 4 350 351 -300 352
		f 4 353 354 -303 -352
		f 4 355 356 -305 -355
		f 4 357 358 -307 -357
		f 4 359 360 -309 -359
		f 4 361 362 -311 -361
		f 4 363 364 -313 -363
		f 4 365 366 -315 -365
		f 4 367 368 -317 -367
		f 4 369 370 -319 -369
		f 4 371 372 -321 -371
		f 4 373 374 -323 -373
		f 4 375 376 -325 -375
		f 4 377 378 -327 -377
		f 4 379 380 -329 -379
		f 4 381 382 -331 -381
		f 4 383 384 -333 -383
		f 4 385 386 -335 -385
		f 4 387 388 -337 -387
		f 4 389 390 -340 -389
		f 4 391 392 -342 -391
		f 4 393 394 -344 -393
		f 4 395 396 -346 -395
		f 4 397 398 -348 -397
		f 4 399 -353 -350 -399
		f 4 400 401 -351 402
		f 4 403 404 -354 -402
		f 4 405 406 -358 407
		f 4 408 409 -360 -407
		f 4 410 411 -362 -410
		f 4 412 413 -364 -412
		f 4 414 415 -366 -414
		f 4 416 417 -368 -416
		f 4 418 419 -370 -418
		f 4 420 421 -372 -420
		f 4 422 423 -374 -422
		f 4 424 425 -376 -424
		f 4 426 427 -378 -426
		f 4 428 429 -380 -428
		f 4 430 431 -382 -430
		f 4 432 433 -384 -432
		f 4 434 435 -386 -434
		f 4 436 437 -388 -436
		f 4 438 439 -390 -438
		f 4 440 441 -392 -440
		f 4 442 443 -394 -442
		f 4 444 445 -396 -444
		f 4 446 447 -398 -446
		f 4 448 -403 -400 -448
		f 4 449 450 -401 451
		f 4 452 453 -404 -451
		f 4 454 455 456 -454
		f 4 457 458 -406 -456
		f 4 459 460 -409 -459
		f 4 461 462 -411 -461
		f 4 463 464 -413 -463
		f 4 465 466 -415 -465
		f 4 467 468 -417 -467
		f 4 469 470 -419 -469
		f 4 471 472 -421 -471
		f 4 473 474 -423 -473
		f 4 475 476 -425 -475
		f 4 477 478 -427 -477
		f 4 479 480 -429 -479
		f 4 481 482 -431 -481
		f 4 483 484 -433 -483
		f 4 485 486 -435 -485
		f 4 487 488 -437 -487
		f 4 489 490 -439 -489
		f 4 491 492 -441 -491
		f 4 493 494 -443 -493
		f 4 495 496 -445 -495
		f 4 497 498 -447 -497
		f 4 499 -452 -449 -499
		f 4 500 501 -450 502
		f 4 503 504 -453 -502
		f 4 505 506 -455 -505
		f 4 507 508 -458 -507
		f 4 509 510 -460 -509
		f 4 511 512 -462 -511
		f 4 513 514 -464 -513
		f 4 515 516 -466 -515
		f 4 517 518 -468 -517
		f 4 519 520 -470 -519
		f 4 521 522 -472 -521
		f 4 523 524 -476 525
		f 4 526 527 -478 -525
		f 4 528 529 -480 -528
		f 4 530 531 -482 -530
		f 4 532 533 -484 -532
		f 4 534 535 -486 -534
		f 4 536 537 -488 -536
		f 4 538 539 -490 -538
		f 4 540 541 -492 -540
		f 4 542 543 -494 -542
		f 4 544 545 -496 -544
		f 4 546 547 -498 -546
		f 4 548 -503 -500 -548
		f 4 549 550 -501 551
		f 4 552 553 -504 -551
		f 4 554 555 -506 -554
		f 4 556 557 -508 -556
		f 4 558 559 -510 -558
		f 4 560 561 -512 -560
		f 4 562 563 -514 -562
		f 4 564 565 -516 -564
		f 4 566 567 -518 -566
		f 4 568 569 -520 -568
		f 4 570 571 -522 -570
		f 4 572 573 574 -572
		f 4 575 576 -524 -574
		f 4 577 578 -527 -577
		f 4 579 580 -529 -579
		f 4 581 582 -531 -581
		f 4 583 584 -533 -583
		f 4 585 586 -535 -585
		f 4 587 588 -537 -587
		f 4 589 590 -539 -589
		f 4 591 592 -541 -591
		f 4 593 594 -543 -593
		f 4 595 596 -545 -595
		f 4 597 598 -547 -597
		f 4 599 -552 -549 -599
		f 4 600 601 -550 602
		f 4 603 604 -553 -602
		f 4 605 606 -555 -605
		f 4 607 608 -557 -607
		f 4 609 610 -559 -609
		f 4 611 612 -561 -611
		f 4 613 614 -563 -613
		f 4 615 616 -565 -615
		f 4 617 618 -567 -617
		f 4 619 620 -569 -619
		f 4 621 622 -571 -621
		f 4 623 624 -573 -623
		f 4 625 626 -576 -625
		f 4 627 628 -578 -627
		f 4 629 630 -580 -629
		f 4 631 632 -582 -631
		f 4 633 634 -584 -633
		f 4 635 636 -586 -635
		f 4 637 638 -588 -637
		f 4 639 640 -590 -639
		f 4 641 642 -594 643
		f 4 644 645 -596 -643
		f 4 646 647 -598 -646
		f 4 648 -603 -600 -648
		f 4 649 650 -601 651
		f 4 652 653 -604 -651
		f 4 654 655 -606 -654
		f 4 656 657 -608 -656
		f 4 658 659 -610 -658
		f 4 660 661 -612 -660
		f 4 662 663 -614 -662
		f 4 664 665 -616 -664
		f 4 666 667 -618 -666
		f 4 668 669 -620 -668
		f 4 670 671 -622 -670
		f 4 672 673 -624 -672
		f 4 674 675 -626 -674
		f 4 676 677 -628 -676
		f 4 678 679 -630 -678
		f 4 680 681 -632 -680
		f 4 682 683 -634 -682
		f 4 684 685 -636 -684
		f 4 686 687 -638 -686
		f 4 688 689 -640 -688
		f 4 690 691 692 -690
		f 4 693 694 -642 -692
		f 4 695 696 -645 -695
		f 4 697 698 -647 -697
		f 4 699 -652 -649 -699
		f 4 700 701 -650 702
		f 4 703 704 -653 -702
		f 4 705 706 -655 -705
		f 4 707 708 -657 -707
		f 4 709 710 -659 -709
		f 4 711 712 -661 -711
		f 4 713 714 -663 -713
		f 4 715 716 -665 -715
		f 4 717 718 -667 -717
		f 4 719 720 -669 -719
		f 4 721 722 -671 -721
		f 4 723 724 -673 -723
		f 4 725 726 -675 -725
		f 4 727 728 -677 -727
		f 4 729 730 -679 -729
		f 4 731 732 -681 -731
		f 4 733 734 -683 -733
		f 4 735 736 -685 -735
		f 4 737 738 -687 -737
		f 4 739 740 -689 -739
		f 4 741 742 -691 -741
		f 4 743 744 -694 -743
		f 4 745 746 -696 -745
		f 4 747 748 -698 -747
		f 4 749 -703 -700 -749
		f 4 750 751 -701 752
		f 4 753 754 -704 -752
		f 4 755 756 -706 -755
		f 4 757 758 -708 -757
		f 4 759 760 -712 761
		f 4 762 763 -714 -761
		f 4 764 765 -716 -764
		f 4 766 767 -718 -766
		f 4 768 769 -720 -768
		f 4 770 771 -722 -770
		f 4 772 773 -724 -772
		f 4 774 775 -726 -774
		f 4 776 777 -728 -776
		f 4 778 779 -730 -778
		f 4 780 781 -732 -780
		f 4 782 783 -734 -782
		f 4 784 785 -736 -784
		f 4 786 787 -738 -786
		f 4 788 789 -740 -788
		f 4 790 791 -742 -790
		f 4 792 793 -744 -792
		f 4 794 795 -746 -794
		f 4 796 797 -748 -796
		f 4 798 -753 -750 -798
		f 4 799 800 -751 801
		f 4 802 803 -754 -801
		f 4 804 805 -756 -804
		f 4 806 807 -758 -806
		f 4 808 809 810 -808
		f 4 811 812 -760 -810
		f 4 813 814 -763 -813
		f 4 815 816 -765 -815
		f 4 817 818 -767 -817
		f 4 819 820 -769 -819
		f 4 821 822 -771 -821
		f 4 823 824 -773 -823
		f 4 825 826 -775 -825
		f 4 827 828 -777 -827
		f 4 829 830 -779 -829
		f 4 831 832 -781 -831
		f 4 833 834 -783 -833
		f 4 835 836 -785 -835
		f 4 837 838 -787 -837
		f 4 839 840 -789 -839
		f 4 841 842 -791 -841
		f 4 843 844 -793 -843
		f 4 845 846 -795 -845
		f 4 847 848 -797 -847
		f 4 849 -802 -799 -849
		f 4 850 851 -800 852
		f 4 853 854 -803 -852
		f 4 855 856 -805 -855
		f 4 857 858 -807 -857
		f 4 859 860 -809 -859
		f 4 861 862 -812 -861
		f 4 863 864 -814 -863
		f 4 865 866 -816 -865
		f 4 867 868 -818 -867
		f 4 869 870 -820 -869
		f 4 871 872 -822 -871
		f 4 873 874 -824 -873
		f 4 875 876 -826 -875
		f 4 877 878 -830 879
		f 4 880 881 -832 -879
		f 4 882 883 -834 -882
		f 4 884 885 -836 -884
		f 4 886 887 -838 -886
		f 4 888 889 -840 -888
		f 4 890 891 -842 -890
		f 4 892 893 -844 -892
		f 4 894 895 -846 -894
		f 4 896 897 -848 -896
		f 4 898 -853 -850 -898
		f 4 899 900 -851 901
		f 4 902 903 -854 -901
		f 4 904 905 -856 -904
		f 4 906 907 -858 -906
		f 4 908 909 -860 -908
		f 4 910 911 -862 -910
		f 4 912 913 -864 -912
		f 4 914 915 -866 -914
		f 4 916 917 -868 -916
		f 4 918 919 -870 -918
		f 4 920 921 -872 -920
		f 4 922 923 -874 -922
		f 4 924 925 -876 -924
		f 4 926 927 928 -926
		f 4 929 930 -878 -928
		f 4 931 932 -881 -931
		f 4 933 934 -883 -933
		f 4 935 936 -885 -935
		f 4 937 938 -887 -937
		f 4 939 940 -889 -939
		f 4 941 942 -891 -941
		f 4 943 944 -893 -943
		f 4 945 946 -895 -945
		f 4 947 948 -897 -947
		f 4 949 -902 -899 -949
		f 4 950 951 -900 952
		f 4 953 954 -903 -952
		f 4 955 956 -905 -955
		f 4 957 958 -907 -957
		f 4 959 960 -909 -959
		f 4 961 962 -911 -961
		f 4 963 964 -913 -963
		f 4 965 966 -915 -965
		f 4 967 968 -917 -967
		f 4 969 970 -919 -969
		f 4 971 972 -921 -971
		f 4 973 974 -923 -973
		f 4 975 976 -925 -975
		f 4 977 978 -927 -977
		f 4 979 980 -930 -979
		f 4 981 982 -932 -981
		f 4 983 984 -934 -983
		f 4 985 986 -936 -985
		f 4 987 988 -938 -987
		f 4 989 990 -940 -989
		f 4 991 992 -942 -991
		f 4 993 994 -944 -993
		f 4 995 996 -948 997
		f 4 998 -953 -950 -997
		f 4 999 1000 -951 1001
		f 4 1002 1003 -954 -1001
		f 4 1004 1005 -956 -1004
		f 4 1006 1007 -958 -1006
		f 4 1008 1009 -960 -1008
		f 4 1010 1011 -962 -1010
		f 4 1012 1013 -964 -1012
		f 4 1014 1015 -966 -1014
		f 4 1016 1017 -968 -1016
		f 4 1018 1019 -970 -1018
		f 4 1020 1021 -972 -1020
		f 4 1022 1023 -974 -1022
		f 4 1024 1025 -976 -1024
		f 4 1026 1027 -978 -1026
		f 4 1028 1029 -980 -1028
		f 4 1030 1031 -982 -1030
		f 4 1032 1033 -984 -1032
		f 4 1034 1035 -986 -1034
		f 4 1036 1037 -988 -1036
		f 4 1038 1039 -990 -1038
		f 4 1040 1041 -992 -1040
		f 4 1042 1043 -994 -1042
		f 4 1044 1045 1046 -1044
		f 4 1047 1048 -996 -1046
		f 4 1049 -1002 -999 -1049
		f 4 1050 1051 -1000 1052
		f 4 1053 1054 -1003 -1052
		f 4 1055 1056 -1005 -1055
		f 4 1057 1058 -1007 -1057
		f 4 1059 1060 -1009 -1059
		f 4 1061 1062 -1011 -1061
		f 4 1063 1064 -1013 -1063;
	setAttr ".fc[500:669]"
		f 4 1065 1066 -1015 -1065
		f 4 1067 1068 -1017 -1067
		f 4 1069 1070 -1019 -1069
		f 4 1071 1072 -1021 -1071
		f 4 1073 1074 -1023 -1073
		f 4 1075 1076 -1025 -1075
		f 4 1077 1078 -1027 -1077
		f 4 1079 1080 -1029 -1079
		f 4 1081 1082 -1031 -1081
		f 4 1083 1084 -1033 -1083
		f 4 1085 1086 -1035 -1085
		f 4 1087 1088 -1037 -1087
		f 4 1089 1090 -1039 -1089
		f 4 1091 1092 -1041 -1091
		f 4 1093 1094 -1043 -1093
		f 4 1095 1096 -1045 -1095
		f 4 1097 1098 -1048 -1097
		f 4 1099 -1053 -1050 -1099
		f 4 1100 1101 -1051 1102
		f 4 1103 1104 -1054 -1102
		f 4 1105 1106 -1056 -1105
		f 4 1107 1108 -1058 -1107
		f 4 1109 1110 -1060 -1109
		f 4 1111 1112 -1062 -1111
		f 4 1113 1114 -1066 1115
		f 4 1116 1117 -1068 -1115
		f 4 1118 1119 -1070 -1118
		f 4 1120 1121 -1072 -1120
		f 4 1122 1123 -1074 -1122
		f 4 1124 1125 -1076 -1124
		f 4 1126 1127 -1078 -1126
		f 4 1128 1129 -1080 -1128
		f 4 1130 1131 -1082 -1130
		f 4 1132 1133 -1084 -1132
		f 4 1134 1135 -1086 -1134
		f 4 1136 1137 -1088 -1136
		f 4 1138 1139 -1090 -1138
		f 4 1140 1141 -1092 -1140
		f 4 1142 1143 -1094 -1142
		f 4 1144 1145 -1096 -1144
		f 4 1146 1147 -1098 -1146
		f 4 1148 -1103 -1100 -1148
		f 4 1149 1150 -1101 1151
		f 4 1152 1153 -1104 -1151
		f 4 1154 1155 -1106 -1154
		f 4 1156 1157 -1108 -1156
		f 4 1158 1159 -1110 -1158
		f 4 1160 1161 -1112 -1160
		f 4 1162 1163 1164 -1162
		f 4 1165 1166 -1114 -1164
		f 4 1167 1168 -1117 -1167
		f 4 1169 1170 -1119 -1169
		f 4 1171 1172 -1121 -1171
		f 4 1173 1174 -1123 -1173
		f 4 1175 1176 -1125 -1175
		f 4 1177 1178 -1127 -1177
		f 4 1179 1180 -1129 -1179
		f 4 1181 1182 -1131 -1181
		f 4 1183 1184 -1133 -1183
		f 4 1185 1186 -1135 -1185
		f 4 1187 1188 -1137 -1187
		f 4 1189 1190 -1139 -1189
		f 4 1191 1192 -1141 -1191
		f 4 1193 1194 -1143 -1193
		f 4 1195 1196 -1145 -1195
		f 4 1197 1198 -1147 -1197
		f 4 1199 -1152 -1149 -1199
		f 4 -49 1200 -1150 1201
		f 4 -48 1202 -1153 -1201
		f 4 -47 1203 -1155 -1203
		f 4 -46 1204 -1157 -1204
		f 4 -45 1205 -1159 -1205
		f 4 -44 1206 -1161 -1206
		f 4 -43 1207 -1163 -1207
		f 4 -42 1208 -1166 -1208
		f 4 -41 1209 -1168 -1209
		f 4 -40 1210 -1170 -1210
		f 4 -39 1211 -1172 -1211
		f 4 -38 1212 -1174 -1212
		f 4 -37 1213 -1176 -1213
		f 4 -36 1214 -1178 -1214
		f 4 -35 1215 -1180 -1215
		f 4 -33 1216 -1184 1217
		f 4 -32 1218 -1186 -1217
		f 4 -31 1219 -1188 -1219
		f 4 -30 1220 -1190 -1220
		f 4 -29 1221 -1192 -1221
		f 4 -28 1222 -1194 -1222
		f 4 -27 1223 -1196 -1223
		f 4 -26 1224 -1198 -1224
		f 4 -50 -1202 -1200 -1225
		f 4 1225 1226 1227 1228
		f 4 1229 1230 1231 1232
		f 4 1233 1234 1235 1236
		f 4 1237 1238 1239 1240
		f 4 1241 1242 1243 1244
		f 4 -1228 1245 -1 1246
		f 4 -1227 1247 -53 -1246
		f 4 -1226 1248 -102 -1248
		f 4 -1229 -1247 -99 -1249
		f 4 1249 1250 -120 1251
		f 4 1252 1253 -172 -1251
		f 4 1254 1255 -221 -1254
		f 4 1256 -1252 -169 -1256
		f 4 1257 1258 -238 1259
		f 4 1260 1261 -290 -1259
		f 4 1262 1263 -339 -1262
		f 4 1264 -1260 -287 -1264
		f 4 -1232 1265 -356 1266
		f 4 -1231 1267 -408 -1266
		f 4 -1230 1268 -457 -1268
		f 4 -1233 -1267 -405 -1269
		f 4 -1236 1269 -474 1270
		f 4 -1235 1271 -526 -1270
		f 4 -1234 1272 -575 -1272
		f 4 -1237 -1271 -523 -1273
		f 4 1273 1274 -592 1275
		f 4 1276 1277 -644 -1275
		f 4 1278 1279 -693 -1278
		f 4 1280 -1276 -641 -1280
		f 4 1281 1282 -710 1283
		f 4 1284 1285 -762 -1283
		f 4 1286 1287 -811 -1286
		f 4 1288 -1284 -759 -1288
		f 4 -1240 1289 -828 1290
		f 4 -1239 1291 -880 -1290
		f 4 -1238 1292 -929 -1292
		f 4 -1241 -1291 -877 -1293
		f 4 -1244 1293 -946 1294
		f 4 -1243 1295 -998 -1294
		f 4 -1242 1296 -1047 -1296
		f 4 -1245 -1295 -995 -1297
		f 4 1297 1298 -1064 1299
		f 4 1300 1301 -1116 -1299
		f 4 1302 1303 -1165 -1302
		f 4 1304 -1300 -1113 -1304
		f 4 1305 1306 -1182 1307
		f 4 1308 1309 -1218 -1307
		f 4 1310 1311 -34 -1310
		f 4 1312 -1308 -1216 -1312
		f 4 1313 1314 1315 1316
		f 4 1317 1318 1319 1320
		f 4 1321 1322 1323 1324
		f 4 1325 1326 1327 1328
		f 4 1329 1330 1331 1332
		f 4 1333 1334 1335 1336
		f 4 -1316 1337 -1250 1338
		f 4 -1315 1339 -1253 -1338
		f 4 -1314 1340 -1255 -1340
		f 4 -1317 -1339 -1257 -1341
		f 4 -1320 1341 -1258 1342
		f 4 -1319 1343 -1261 -1342
		f 4 -1318 1344 -1263 -1344
		f 4 -1321 -1343 -1265 -1345
		f 4 -1324 1345 -1274 1346
		f 4 -1323 1347 -1277 -1346
		f 4 -1322 1348 -1279 -1348
		f 4 -1325 -1347 -1281 -1349
		f 4 -1328 1349 -1282 1350
		f 4 -1327 1351 -1285 -1350
		f 4 -1326 1352 -1287 -1352
		f 4 -1329 -1351 -1289 -1353
		f 4 -1332 1353 -1298 1354
		f 4 -1331 1355 -1301 -1354
		f 4 -1330 1356 -1303 -1356
		f 4 -1333 -1355 -1305 -1357
		f 4 -1336 1357 -1306 1358
		f 4 -1335 1359 -1309 -1358
		f 4 -1334 1360 -1311 -1360
		f 4 -1337 -1359 -1313 -1361;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode houdiniAsset -n "hunte__dev__Tree_subnet__1_04" -p "Globe_Core";
	rename -uid "3C47FE5D-4DD1-5854-67A0-2582CFB5A57D";
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
	setAttr ".t" -type "double3" 0 1.0007328950678349 0 ;
	setAttr ".r" -type "double3" 0 -22.911434005877947 0 ;
	setAttr ".s" -type "double3" 0.042426509627468308 0.042426509627468308 0.042426509627468308 ;
	setAttr ".otlFilePath" -type "string" "C:/Users/hunte/Documents/houdini19.5/otls/object_hunte.dev.Tree_subnet.1.0.hdanc";
	setAttr ".assetName" -type "string" "hunte::dev::Object/Tree_subnet::1.0";
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
	setAttr -cb on ".houdiniAssetParm_bend" 51;
	setAttr -cb on ".houdiniAssetParm_selectamount1" 1;
	setAttr -cb on ".houdiniAssetParm_dist" 0.98299998044967651;
	setAttr -cb on ".houdiniAssetParm_selectamount2" 1;
	setAttr -cb on ".houdiniAssetParm_dist2" 1;
	setAttr -cb on ".houdiniAssetParm_bend2" 16.100000381469727;
createNode transform -n "tube_object1" -p "hunte__dev__Tree_subnet__1_04";
	rename -uid "729AD761-4B1C-411D-A618-7B9D39C070D9";
createNode transform -n "lineartaper2_0" -p "|Globe_Core|hunte__dev__Tree_subnet__1_04|tube_object1";
	rename -uid "4793C9FB-49D8-6964-E577-088E567B65CF";
	setAttr ".rp" -type "double3" -5.9038305694706281 -1.6942923174747488 5.3716834376374916 ;
	setAttr ".sp" -type "double3" -5.9038305694706281 -1.6942923174747488 5.3716834376374916 ;
createNode mesh -n "lineartaper2_0Shape" -p "|Globe_Core|hunte__dev__Tree_subnet__1_04|tube_object1|lineartaper2_0";
	rename -uid "BD7F7CD8-4D67-6040-9FFE-1C98CB805475";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "lineartaper2_4" -p "|Globe_Core|hunte__dev__Tree_subnet__1_04|tube_object1";
	rename -uid "F2144BD3-4D31-68C4-C45E-BDA6E9084563";
	setAttr ".t" -type "double3" 4.8480381433228796 0 11.70082640200626 ;
	setAttr ".r" -type "double3" 0 -72.611420780657014 0 ;
	setAttr ".rp" -type "double3" -5.9038305694706281 -1.6942923174747488 5.3716834376374916 ;
	setAttr ".sp" -type "double3" -5.9038305694706281 -1.6942923174747488 5.3716834376374916 ;
createNode mesh -n "lineartaper2_4Shape" -p "lineartaper2_4";
	rename -uid "F6307583-46FB-446B-67E7-A09DA8A815B9";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 2 "f[591:598]" "f[643:645]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[643:645]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 681 ".vt";
	setAttr ".vt[0:165]"  -8.83180904 1.72128725 5.3716836 -8.83280945 1.7189815 5.35178852
		 -8.83574677 1.71220899 5.33314323 -8.84043789 1.70139551 5.3169198 -8.84658623 1.68722057 5.30413723
		 -8.85380745 1.67057443 5.29559898 -8.86164665 1.65250325 5.29184151 -8.86960983 1.63414264 5.29310083
		 -8.87719917 1.6166451 5.29929733 -8.88393784 1.60111213 5.31004238 -8.88940048 1.58851862 5.32466078
		 -8.89324474 1.57965541 5.34223366 -8.89522934 1.57508063 5.36165714 -8.89522934 1.57508063 5.38171005
		 -8.8932457 1.57965589 5.40113354 -8.88940048 1.58851862 5.41870642 -8.88393784 1.60111213 5.43332481
		 -8.87719917 1.6166451 5.44406986 -8.86960983 1.63414264 5.45026636 -8.86164665 1.65250325 5.45152569
		 -8.85380745 1.67057443 5.44776821 -8.84658623 1.68722057 5.43922997 -8.84043789 1.70139551 5.42644739
		 -8.83574677 1.71220899 5.41022396 -8.83280945 1.7189815 5.39157867 -8.64342308 1.65453982 5.3716836
		 -8.64474487 1.65177703 5.34743643 -8.64862919 1.64366174 5.32471275 -8.65483093 1.63070345 5.30494022
		 -8.66296005 1.61371708 5.28936148 -8.67250633 1.59377027 5.27895546 -8.68286896 1.57211518 5.27437592
		 -8.69339943 1.5501132 5.27591085 -8.70343304 1.52914691 5.283463 -8.71234131 1.51053333 5.29655838
		 -8.71956348 1.49544215 5.31437445 -8.72464561 1.48482156 5.33579159 -8.72727013 1.47933912 5.35946369
		 -8.72727013 1.47933912 5.3839035 -8.72464561 1.48482156 5.40757561 -8.71956348 1.49544215 5.42899275
		 -8.71234131 1.51053333 5.44680882 -8.70343304 1.52914691 5.45990419 -8.69339943 1.5501132 5.46745682
		 -8.68286896 1.57211518 5.46899128 -8.67250633 1.59377027 5.46441174 -8.66296005 1.61371756 5.45400572
		 -8.65483093 1.63070369 5.43842697 -8.64862919 1.64366174 5.41865444 -8.64474487 1.65177703 5.39593077
		 -8.45706272 1.58056378 5.3716836 -8.45874214 1.57736468 5.34308434 -8.46367455 1.56796908 5.3162818
		 -8.4715519 1.55296707 5.29296064 -8.48187637 1.53330159 5.27458572 -8.49400043 1.51020741 5.26231194
		 -8.50716305 1.48513675 5.2569108 -8.52053642 1.45966411 5.2587204 -8.53327942 1.43539023 5.26762867
		 -8.54459381 1.41384053 5.28307486 -8.55376625 1.39636874 5.30408812 -8.56022167 1.38407278 5.32934952
		 -8.56355476 1.3777256 5.35727024 -8.56355476 1.3777256 5.38609695 -8.56022167 1.38407278 5.41401815
		 -8.55376625 1.39636874 5.43927908 -8.54459381 1.41384053 5.46029282 -8.53327942 1.43539023 5.47573853
		 -8.52053642 1.45966411 5.4846468 -8.50716305 1.48513675 5.48645639 -8.49400043 1.51020741 5.48105526
		 -8.48187637 1.53330159 5.46878147 -8.4715519 1.55296731 5.45040655 -8.46367455 1.56796908 5.4270854
		 -8.45874214 1.57736468 5.40028286 -8.27300739 1.4994173 5.3716836 -8.27507782 1.49580574 5.33873224
		 -8.28115845 1.48519874 5.30785131 -8.29086781 1.46826196 5.28098106 -8.30359554 1.44606042 5.25980997
		 -8.31854248 1.41998839 5.24566841 -8.3347683 1.39168477 5.23944521 -8.35125446 1.3629272 5.24153042
		 -8.36696434 1.33552337 5.25179386 -8.38091087 1.31119442 5.26959085 -8.39221954 1.29146981 5.29380226
		 -8.400177 1.27758861 5.32290697 -8.40428543 1.27042246 5.35507679 -8.40428543 1.2704227 5.38829041
		 -8.400177 1.27758861 5.42046022 -8.39221954 1.29146981 5.44956493 -8.38091087 1.31119466 5.47377682
		 -8.36696434 1.33552337 5.49157333 -8.35125351 1.3629272 5.50183678 -8.3347683 1.39168477 5.50392199
		 -8.31854248 1.41998839 5.49769878 -8.30359554 1.44606042 5.48355722 -8.29086781 1.46826196 5.46238613
		 -8.28115845 1.48519874 5.43551588 -8.27507782 1.49580574 5.40463495 -8.091531754 1.41116905 5.3716836
		 -8.094026566 1.40717053 5.33438015 -8.10135078 1.39542603 5.29942036 -8.11304569 1.37667298 5.26900148
		 -8.12837696 1.3520906 5.24503422 -8.14638042 1.32322288 5.22902489 -8.16592407 1.29188418 5.22197962
		 -8.18578243 1.26004291 5.22434044 -8.20470524 1.22970033 5.23595953 -8.22150517 1.20276284 5.25610685
		 -8.23512554 1.18092322 5.28351593 -8.24471092 1.16555333 5.3164649 -8.24965858 1.157619 5.35288382
		 -8.24965858 1.157619 5.39048338 -8.24471092 1.16555333 5.42690229 -8.23512554 1.18092322 5.45985126
		 -8.22150517 1.20276308 5.48726082 -8.20470524 1.22970033 5.50740767 -8.18578243 1.26004291 5.51902676
		 -8.16592407 1.29188418 5.52138758 -8.14637947 1.32322288 5.51434231 -8.12837696 1.35209084 5.49833298
		 -8.11304569 1.37667322 5.47436571 -8.10135078 1.39542603 5.44394636 -8.094026566 1.40717053 5.40898705
		 -7.91291237 1.31590104 5.3716836 -7.91586065 1.31154227 5.33002806 -7.92452049 1.29873991 5.29098988
		 -7.93834782 1.2782979 5.2570219 -7.95647335 1.25150108 5.23025846 -7.97775841 1.22003317 5.21238184
		 -8.00086593628 1.1858716 5.20451403 -8.024343491 1.15116215 5.20715046 -8.046715736 1.11808634 5.2201252
		 -8.066577911 1.088722706 5.24262285 -8.082681656 1.064915657 5.2732296 -8.094014168 1.04816103 5.31002283
		 -8.099864006 1.039512396 5.35069036 -8.099864006 1.039512396 5.39267683 -8.094014168 1.048161268 5.43334436
		 -8.082681656 1.064915657 5.4701376 -8.066577911 1.088722706 5.50074482 -8.046715736 1.11808634 5.523242
		 -8.024343491 1.15116239 5.53621674 -8.00086593628 1.1858716 5.53885317 -7.97775841 1.22003341 5.53098536
		 -7.95647335 1.25150108 5.51310825 -7.93834782 1.27829814 5.48634529 -7.92452049 1.29873991 5.45237732
		 -7.91586065 1.31154227 5.41333914 -7.73741913 1.21370339 5.3716836 -7.74085188 1.20901322 5.32567596
		 -7.75093412 1.1952374 5.28255939 -7.76703262 1.17324185 5.24504232 -7.78813553 1.14440775 5.21548271
		 -7.81291676 1.11054778 5.19573832 -7.83981991 1.07378912 5.18704844 -7.86715412 1.036441565 5.18996048
		 -7.89320183 1.00085163116 5.20429039 -7.91632652 0.96925569 5.22913885 -7.93507481 0.94363856 5.26294327
		 -7.94826937 0.92561078 5.30358076 -7.95508051 0.91630435 5.34849691 -7.95508051 0.91630435 5.39487028
		 -7.94826937 0.92561078 5.43978691 -7.93507481 0.9436388 5.48042393;
	setAttr ".vt[166:331]" -7.91632652 0.96925569 5.51422834 -7.89320183 1.00085163116 5.53907681
		 -7.86715412 1.036441565 5.55340672 -7.83981991 1.073789358 5.55631876 -7.81291676 1.11054778 5.54762888
		 -7.78813553 1.14440799 5.52788448 -7.76703262 1.17324185 5.49832487 -7.75093412 1.19523764 5.4608078
		 -7.74085188 1.20901322 5.41769123 -7.56532192 1.1046772 5.3716836 -7.56926727 1.099686384 5.32132387
		 -7.58085442 1.085026979 5.27412844 -7.59935665 1.061620474 5.23306274 -7.62361002 1.030937433 5.20070744
		 -7.6520915 0.99490571 5.17909479 -7.68301105 0.95578957 5.16958332 -7.71442604 0.91604662 5.1727705
		 -7.74436283 0.87817383 5.18845606 -7.77093983 0.84455132 5.21565485 -7.79248714 0.81729174 5.25265694
		 -7.80765152 0.79810762 5.29713821 -7.81547928 0.78820443 5.34630346 -7.81547928 0.78820443 5.39706373
		 -7.80765152 0.79810762 5.44622898 -7.79248714 0.81729174 5.49071026 -7.77093983 0.84455132 5.52771235
		 -7.74436283 0.87817383 5.55491114 -7.71442604 0.91604662 5.57059669 -7.68301105 0.95578957 5.57378387
		 -7.6520915 0.99490571 5.5642724 -7.62361002 1.030937433 5.54265976 -7.59935665 1.061620474 5.51030445
		 -7.58085442 1.085026979 5.46923876 -7.56926727 1.099686384 5.42204332 -7.39688587 0.98893428 5.3716836
		 -7.40137005 0.98367476 5.31697178 -7.41454029 0.96822643 5.26569796 -7.43557024 0.94356012 5.22108316
		 -7.46313763 0.91122508 5.18593168 -7.49551105 0.87325358 5.16245127 -7.53065491 0.83203197 5.15211773
		 -7.56636238 0.79014945 5.15558052 -7.60038948 0.75023818 5.17262173 -7.63059807 0.71480584 5.20217085
		 -7.65508986 0.68607855 5.24237108 -7.67232609 0.66586185 5.29069614 -7.68122387 0.65542579 5.34411049
		 -7.68122387 0.65542579 5.39925671 -7.67232609 0.66586185 5.45267105 -7.65508986 0.68607855 5.50099659
		 -7.63059807 0.71480584 5.54119635 -7.60038948 0.75023818 5.57074547 -7.56636238 0.79014945 5.58778667
		 -7.53065491 0.83203197 5.59124947 -7.49551105 0.87325358 5.58091593 -7.46313763 0.91122508 5.55743551
		 -7.43557024 0.94356012 5.52228403 -7.41454029 0.96822643 5.47766924 -7.40137005 0.98367476 5.42639542
		 -7.23237228 0.8665967 5.3716836 -7.23742056 0.8611021 5.31261969 -7.25224781 0.84496379 5.257267
		 -7.27592182 0.81919527 5.20910358 -7.30695629 0.78541589 5.17115593 -7.3434 0.74574804 5.14580774
		 -7.38296413 0.70268464 5.13465214 -7.42316198 0.65893102 5.13839054 -7.46146774 0.61723685 5.1567874
		 -7.49547529 0.58022141 5.18868685 -7.52304697 0.55021095 5.23208475 -7.5424509 0.52909088 5.28425407
		 -7.55246735 0.51818848 5.34191704 -7.55246735 0.51818848 5.40145016 -7.5424509 0.52909088 5.45911312
		 -7.52304697 0.55021095 5.51128244 -7.49547529 0.58022165 5.55468035 -7.46146774 0.61723685 5.58658028
		 -7.42316198 0.65893126 5.60497665 -7.38296413 0.70268464 5.60871506 -7.3434 0.74574804 5.59755945
		 -7.30695629 0.78541589 5.57221127 -7.27592182 0.81919527 5.53426361 -7.25224781 0.84496379 5.4861002
		 -7.23742056 0.8611021 5.43074751 -7.072041512 0.73779774 5.3716836 -7.077676773 0.73210311 5.30826759
		 -7.094227791 0.71537757 5.24883652 -7.12065506 0.68867207 5.197124 -7.15529823 0.65366387 5.15638018
		 -7.19598007 0.61255383 5.12916422 -7.24014425 0.56792402 5.11718655 -7.28501606 0.52257943 5.12120056
		 -7.32777643 0.47936869 5.14095259 -7.36573792 0.4410069 5.17520285 -7.39651585 0.4099052 5.22179842
		 -7.4181757 0.3880167 5.277812 -7.42935753 0.37671781 5.33972359 -7.42935705 0.37671781 5.40364361
		 -7.4181757 0.3880167 5.46555519 -7.39651585 0.4099052 5.52156878 -7.36573792 0.4410069 5.56816435
		 -7.32777643 0.47936869 5.60241461 -7.28501606 0.52257943 5.62216663 -7.24014425 0.56792402 5.62618065
		 -7.19598007 0.61255383 5.61420298 -7.15529823 0.65366387 5.58698702 -7.12065506 0.68867207 5.54624319
		 -7.094227791 0.71537757 5.49453068 -7.077676773 0.73210311 5.4350996 -6.91614532 0.60267901 5.3716836
		 -6.92238855 0.59682107 5.3039155 -6.94072628 0.57961559 5.24040556 -6.97000599 0.55214429 5.18514442
		 -7.0083875656 0.51613235 5.14160442 -7.053460598 0.47384286 5.11252069 -7.10239172 0.42793322 5.099721432
		 -7.15210724 0.38128781 5.10401011 -7.19948292 0.33683753 5.12511826 -7.24154186 0.29737592 5.16171885
		 -7.27564144 0.26538205 5.21151209 -7.29963923 0.24286592 5.27136993 -7.31202745 0.23124278 5.33753014
		 -7.31202745 0.23124278 5.40583706 -7.29963923 0.24286592 5.47199774 -7.27564144 0.26538205 5.53185511
		 -7.24154186 0.29737592 5.58164835 -7.19948292 0.33683777 5.61824894 -7.15210724 0.38128805 5.63935709
		 -7.10239172 0.42793322 5.64364576 -7.053460598 0.47384286 5.6308465 -7.0083875656 0.51613235 5.60176277
		 -6.97000599 0.55214453 5.55822277 -6.94072628 0.57961607 5.50296116 -6.92238855 0.59682107 5.43945122
		 -6.76493311 0.46139312 5.3716836 -6.77180386 0.45540953 5.29956341 -6.79198503 0.43783569 5.23197508
		 -6.82420731 0.40977526 5.17316484 -6.86644745 0.37299156 5.12682867 -6.91605043 0.32979608 5.095877171
		 -6.96990013 0.28290236 5.08225584 -7.024612427 0.23525763 5.086820126 -7.076749802 0.18985462 5.10928392
		 -7.12303638 0.14954722 5.14823484 -7.16056347 0.11686778 5.20122576 -7.18697357 0.09386909 5.26492739
		 -7.20060635 0.081996799 5.33533716 -7.20060635 0.081996799 5.40803051 -7.18697309 0.093869209 5.47843981
		 -7.16056347 0.11686778 5.54214144 -7.12303591 0.14954746 5.59513235 -7.076749802 0.18985498 5.63408327
		 -7.024612427 0.23525763 5.65654707 -6.96990013 0.28290248 5.66111135 -6.91605043 0.32979608 5.64749002
		 -6.86644745 0.37299156 5.61653852 -6.82420731 0.40977526 5.57020235 -6.79198456 0.43783593 5.51139212
		 -6.77180386 0.45540953 5.44380331 -6.61864853 0.31410146 5.3716836 -6.62616396 0.30803156 5.29521132
		 -6.64823866 0.29020345 5.22354412 -6.68348551 0.26173699 5.16118526 -6.72969007 0.22442126 5.11205292
		 -6.78394842 0.18060076 5.079233646 -6.84285212 0.13302886 5.064790249;
	setAttr ".vt[332:497]" -6.90269947 0.084694624 5.069630146 -6.95973015 0.038635135 5.093449116
		 -7.010360718 -0.0022554398 5.13475084 -7.051409721 -0.035407901 5.19093943 -7.080298424 -0.058739066 5.25848532
		 -7.095211506 -0.070783138 5.33314371 -7.095211029 -0.070783138 5.41022348 -7.080298424 -0.058739066 5.48488188
		 -7.051409721 -0.035407901 5.55242777 -7.010360718 -0.0022554398 5.60861635 -6.95973015 0.038635373 5.64991808
		 -6.90269899 0.084694743 5.67373705 -6.84285164 0.13302886 5.67857695 -6.78394842 0.18060076 5.66413355
		 -6.72969007 0.2244215 5.63131428 -6.68348551 0.26173711 5.58218193 -6.64823866 0.29020369 5.5198226
		 -6.62616396 0.30803156 5.4481554 -6.47752857 0.16097736 5.3716836 -6.48570442 0.15486085 5.29085922
		 -6.50971842 0.13689613 5.21511364 -6.54806137 0.10821187 5.14920568 -6.59832382 0.070610404 5.097277164
		 -6.65734816 0.02645421 5.062590122 -6.72142506 -0.02148211 5.047325134 -6.78652954 -0.070186377 5.052440166
		 -6.84856892 -0.11659861 5.077614784 -6.90364695 -0.15780246 5.12126684 -6.94830179 -0.19120884 5.18065357
		 -6.97972775 -0.21471882 5.25204325 -6.9959507 -0.22685492 5.33095026 -6.9959507 -0.22685492 5.41241693
		 -6.97972775 -0.21471882 5.49132395 -6.94830179 -0.19120872 5.56271362 -6.90364695 -0.15780234 5.62210035
		 -6.84856892 -0.11659861 5.66575241 -6.78652906 -0.070186377 5.69092703 -6.72142506 -0.02148211 5.69604206
		 -6.65734816 0.02645421 5.68077707 -6.59832382 0.070610404 5.64609003 -6.54806137 0.10821199 5.59416151
		 -6.50971842 0.13689649 5.52825356 -6.48570442 0.15486085 5.4525075 -6.34180689 0.0022004843 5.3716836
		 -6.35065603 -0.0039212704 5.28650713 -6.37664747 -0.021901965 5.20668316 -6.41814804 -0.050611615 5.1372261
		 -6.47254992 -0.088246584 5.082501411 -6.53643513 -0.13244188 5.045946598 -6.60578966 -0.18042088 5.029859543
		 -6.67625523 -0.22916842 5.035250187 -6.74340439 -0.27562177 5.061780453 -6.80301809 -0.31686211 5.10778284
		 -6.85135031 -0.35029817 5.17036724 -6.88536453 -0.37382901 5.24560118 -6.90292311 -0.38597584 5.32875729
		 -6.90292311 -0.38597584 5.41461039 -6.88536453 -0.37382889 5.49776649 -6.85135031 -0.35029817 5.57299995
		 -6.80301809 -0.31686211 5.63558435 -6.74340439 -0.27562177 5.68158674 -6.67625523 -0.2291683 5.70811701
		 -6.60578966 -0.18042088 5.71350765 -6.53643513 -0.13244188 5.6974206 -6.47254992 -0.088246584 5.66086578
		 -6.41814804 -0.050611615 5.60614109 -6.37664747 -0.021901965 5.53668404 -6.35065603 -0.0039212704 5.45685959
		 -6.21170759 -0.16203761 5.3716836 -6.221241 -0.16812289 5.28215504 -6.24924231 -0.18599629 5.1982522
		 -6.29395247 -0.21453488 5.12524652 -6.35256147 -0.25194526 5.067725658 -6.4213872 -0.29587686 5.029303074
		 -6.49610519 -0.34356952 5.012393951 -6.57202005 -0.39202619 5.018060207 -6.64436197 -0.43820262 5.045945644
		 -6.70858574 -0.47919679 5.09429884 -6.76065588 -0.51243341 5.16008091 -6.79730082 -0.5358237 5.23915863
		 -6.81621742 -0.54789829 5.32656384 -6.81621742 -0.54789829 5.41680384 -6.79730034 -0.5358237 5.50420856
		 -6.76065588 -0.51243341 5.58328629 -6.70858574 -0.47919679 5.64906836 -6.64436197 -0.43820238 5.69742155
		 -6.57201958 -0.39202619 5.72530699 -6.49610472 -0.34356952 5.73097324 -6.4213872 -0.29587686 5.71406412
		 -6.35256147 -0.25194526 5.67564154 -6.29395247 -0.21453464 5.61812067 -6.24924231 -0.18599629 5.54511499
		 -6.221241 -0.16812289 5.46121168 -6.087450027 -0.33153796 5.3716836 -6.097676754 -0.3375442 5.27780294
		 -6.12771416 -0.35518467 5.18982172 -6.17567492 -0.38335145 5.11326694 -6.23854542 -0.42027462 5.052949905
		 -6.31237507 -0.46363401 5.01265955 -6.39252567 -0.51070547 4.99492836 -6.4739604 -0.55853105 5.00087022781
		 -6.55156231 -0.60410595 5.030111313 -6.62045574 -0.64456618 5.080814838 -6.67631197 -0.67736983 5.14979458
		 -6.71562099 -0.70045555 5.23271656 -6.7359128 -0.7123729 5.32437038 -6.7359128 -0.7123729 5.41899681
		 -6.71562099 -0.70045555 5.51065063 -6.67631149 -0.67736983 5.59357262 -6.62045574 -0.64456618 5.66255236
		 -6.55156231 -0.60410583 5.71325588 -6.47395992 -0.55853105 5.74249697 -6.39252567 -0.51070547 5.74843884
		 -6.31237507 -0.46363401 5.73070717 -6.23854542 -0.4202745 5.69041729 -6.17567492 -0.38335145 5.63010025
		 -6.12771416 -0.35518467 5.55354548 -6.097676754 -0.3375442 5.46556377 -5.96924591 -0.50609303 5.3716836
		 -5.98017263 -0.51197648 5.27345085 -6.012265205 -0.5292567 5.18139076 -6.063507557 -0.55684805 5.10128736
		 -6.13068008 -0.5930171 5.038174152 -6.20956135 -0.63549078 4.9960165 -6.29519606 -0.68160081 4.97746325
		 -6.38220263 -0.72844958 4.98368025 -6.46511459 -0.77309334 5.014276981 -6.53872204 -0.81272727 5.067330837
		 -6.59840012 -0.84486091 5.13950825 -6.64039898 -0.86747509 5.22627449 -6.66207933 -0.8791489 5.32217693
		 -6.66207933 -0.8791489 5.42119026 -6.64039898 -0.86747503 5.5170927 -6.59840012 -0.84486091 5.60385895
		 -6.53872204 -0.81272727 5.67603636 -6.46511459 -0.77309334 5.72909021 -6.38220263 -0.7284494 5.75968695
		 -6.29519606 -0.68160069 5.76590395 -6.20956135 -0.63549078 5.74735069 -6.13067961 -0.59301698 5.70519304
		 -6.063507557 -0.55684805 5.64207935 -6.012265205 -0.5292567 5.56197596 -5.98017263 -0.51197648 5.46991587
		 -5.8572998 -0.68548572 5.3716836 -5.86893034 -0.69120228 5.26909924 -5.90309048 -0.70799303 5.17296028
		 -5.95763493 -0.7348029 5.089307785 -6.029135704 -0.76994717 5.023398399 -6.11310005 -0.81121767 4.97937298
		 -6.20425272 -0.85602146 4.95999765 -6.29686546 -0.90154302 4.96649027 -6.38511992 -0.94492209 4.99844265
		 -6.46347046 -0.98343325 5.053846836 -6.52699375 -1.014656425 5.12922239 -6.57169867 -1.036630034 5.21983242
		 -6.59477615 -1.047973156 5.31998396 -6.59477615 -1.047973156 5.42338371 -6.57169867 -1.036630034 5.52353525
		 -6.52699375 -1.014656425 5.61414528 -6.46347046 -0.98343319 5.68952036 -6.38511992 -0.94492209 5.74492502
		 -6.29686546 -0.9015429 5.7768774 -6.20425272 -0.8560214 5.78336954 -6.11310005 -0.81121767 5.76399422
		 -6.029135704 -0.76994711 5.7199688 -5.95763493 -0.73480272 5.65405941;
	setAttr ".vt[498:663]" -5.90309048 -0.70799297 5.57040691 -5.86892986 -0.69120228 5.47426796
		 -5.75180769 -0.86949098 5.3716836 -5.76414442 -0.87499654 5.26474714 -5.8003788 -0.89116716 5.16452932
		 -5.85823393 -0.91698688 5.077328205 -5.93407536 -0.95083326 5.0086226463 -6.023137093 -0.99057966 4.96272945
		 -6.11982298 -1.0337286 4.94253206 -6.21805811 -1.077569008 4.94930029 -6.3116703 -1.11934614 4.98260784
		 -6.39477682 -1.15643501 5.040362835 -6.4621563 -1.18650508 5.11893606 -6.50957537 -1.20766711 5.21339035
		 -6.5340538 -1.21859133 5.31779051 -6.5340538 -1.21859133 5.42557716 -6.50957537 -1.20766711 5.52997732
		 -6.4621563 -1.18650508 5.62443113 -6.39477682 -1.15643489 5.70300436 -6.3116703 -1.11934614 5.76075935
		 -6.21805811 -1.077568889 5.79406738 -6.11982298 -1.0337286 5.80083513 -6.023137093 -0.99057961 5.78063774
		 -5.93407536 -0.9508332 5.73474455 -5.85823393 -0.91698682 5.66603851 -5.8003788 -0.89116704 5.57883739
		 -5.76414442 -0.87499654 5.47862005 -5.65295935 -1.057876825 5.3716836 -5.6660018 -1.063126445 5.26039505
		 -5.70430851 -1.078545332 5.15609884 -5.76547384 -1.10316479 5.065348625 -5.84565306 -1.13543773 4.99384689
		 -5.93980932 -1.17333651 4.94608593 -6.04202652 -1.21447968 4.92506647 -6.14588118 -1.25628209 4.93210983
		 -6.24484777 -1.29611719 4.96677351 -6.33270884 -1.33148193 5.026878834 -6.40394258 -1.36015427 5.10864973
		 -6.45407391 -1.38033247 5.2069478 -6.47995234 -1.39074898 5.31559706 -6.47995234 -1.39074886 5.42777014
		 -6.45407391 -1.38033247 5.53641939 -6.40394258 -1.36015415 5.63471746 -6.33270836 -1.33148193 5.71648836
		 -6.24484777 -1.29611707 5.77659369 -6.1458807 -1.25628209 5.81125736 -6.042026043 -1.21447968 5.81830072
		 -5.93980932 -1.17333651 5.79728127 -5.84565306 -1.13543773 5.7495203 -5.76547337 -1.10316467 5.67801857
		 -5.70430851 -1.078545332 5.58726835 -5.6660018 -1.063126326 5.48297215 -5.56093407 -1.25040221 5.3716836
		 -5.5746789 -1.25535071 5.25604296 -5.61505079 -1.26988566 5.14766788 -5.6795125 -1.29309368 5.053369045
		 -5.76401377 -1.32351637 4.97907114 -5.86324501 -1.3592422 4.92944241 -5.97097158 -1.39802659 4.90760136
		 -6.080423832 -1.43743241 4.91491985 -6.18472481 -1.47498369 4.95093918 -6.27732134 -1.50832081 5.013394833
		 -6.35239506 -1.53534937 5.0983634 -6.40522814 -1.55437064 5.20050573 -6.43250179 -1.56418991 5.31340361
		 -6.43250179 -1.56418991 5.42996359 -6.40522814 -1.55437064 5.54286146 -6.35239506 -1.53534925 5.6450038
		 -6.27732134 -1.50832081 5.72997236 -6.18472481 -1.47498357 5.79242802 -6.080423355 -1.43743229 5.82844734
		 -5.97097111 -1.39802659 5.83576584 -5.86324501 -1.3592422 5.81392479 -5.76401377 -1.32351637 5.76429605
		 -5.6795125 -1.29309356 5.68999767 -5.61505079 -1.26988566 5.59569883 -5.5746789 -1.25535071 5.48732424
		 -5.47590256 -1.44681978 5.3716836 -5.49034548 -1.45142221 5.25169086 -5.53276682 -1.46494055 5.1392374
		 -5.60050154 -1.48652518 5.041389465 -5.68929338 -1.51481986 4.96429539 -5.79356289 -1.54804683 4.91279888
		 -5.90675879 -1.58411837 4.89013577 -6.02176857 -1.62076783 4.89772987 -6.1313653 -1.65569246 4.93510437
		 -6.22866297 -1.68669784 4.99991083 -6.30754805 -1.71183574 5.088077068 -6.36306429 -1.72952664 5.19406366
		 -6.3917222 -1.73865902 5.31121063 -6.3917222 -1.73865902 5.43215704 -6.36306429 -1.72952664 5.54930401
		 -6.30754805 -1.71183574 5.65529013 -6.22866297 -1.68669784 5.74345636 -6.1313653 -1.65569246 5.80826283
		 -6.021768093 -1.62076783 5.84563732 -5.90675879 -1.58411837 5.85323143 -5.79356289 -1.54804683 5.83056831
		 -5.68929338 -1.51481986 5.77907181 -5.60050154 -1.48652506 5.70197725 -5.53276682 -1.46494043 5.60412979
		 -5.49034548 -1.45142221 5.49167633 -5.3980279 -1.64687455 5.3716836 -5.41316128 -1.65108573 5.24733877
		 -5.45761061 -1.66345453 5.13080692 -5.52858305 -1.68320405 5.029409885 -5.62161922 -1.70909309 4.94951963
		 -5.73087311 -1.73949492 4.89615536 -5.84947968 -1.77249956 4.87267017 -5.96998692 -1.80603302 4.88053989
		 -6.084822655 -1.83798814 4.91927004 -6.18677187 -1.86635745 4.98642683 -6.26942778 -1.88935792 5.077791214
		 -6.32759714 -1.90554476 5.18762159 -6.35762548 -1.91390061 5.30901718 -6.35762548 -1.91390061 5.43435049
		 -6.32759714 -1.90554476 5.55574608 -6.26942778 -1.88935792 5.66557646 -6.18677139 -1.86635733 5.75694036
		 -6.084822655 -1.83798814 5.82409716 -5.96998692 -1.8060329 5.8628273 -5.84947968 -1.77249956 5.87069702
		 -5.73087311 -1.73949492 5.84721184 -5.62161922 -1.70909297 5.79384756 -5.52858305 -1.68320394 5.71395683
		 -5.45761061 -1.66345453 5.61256027 -5.41316128 -1.65108573 5.49602842 -8.50610733 2.64060903 5.24898386
		 -8.50710678 2.63830304 5.22908878 -8.31904221 2.57109809 5.22473669 -8.31772041 2.57386136 5.24898386
		 -8.96562004 0.83083296 4.61290455 -8.97479248 0.81336141 4.63391829 -8.81324577 0.70846248 4.62363195
		 -8.80193806 0.72818708 4.59942055 -8.29219627 1.25595713 6.49624157 -8.27233791 1.28779817 6.49860239
		 -8.10727882 1.18178558 6.5160675 -8.13075638 1.14707661 6.51343155 -7.14282846 1.75069809 4.69853783
		 -7.16133022 1.72729158 4.65747213 -6.99754429 1.60923076 4.64549255 -6.97651434 1.63389707 4.69010735
		 -8.26267529 -0.094070911 5.040870667 -8.27269173 -0.10497332 5.09853363 -8.14958191 -0.24644399 5.096340179
		 -8.13840008 -0.23514485 5.034428596 -6.80091906 0.81643319 6.51692963 -6.75584602 0.85872269 6.48784637
		 -6.61390591 0.71558189 6.50262213 -6.66350889 0.67238641 6.53357315 -6.30909967 0.3827672 4.211164
		 -6.36812401 0.33861089 4.17647743 -6.24721098 0.1797148 4.15983391 -6.18332577 0.22391009 4.19638824
		 -7.67324209 -0.96333611 5.66013145 -7.65432549 -0.95126146 5.74753618 -7.57264566 -1.11589336 5.75397825
		 -7.59293795 -1.12781072 5.66232443 -5.39615297 -0.12156069 6.21779823 -5.34491062 -0.093969345 6.13769484
		 -5.23573637 -0.27270567 6.14612579 -5.29028034 -0.29951549 6.22977829 -6.13055706 -1.1547612 3.94788456
		 -6.23441172 -1.1965636 3.95492792 -6.16895437 -1.37771392 3.93773794;
	setAttr ".vt[664:680]" -6.059502125 -1.3383081 3.93041897 -7.01783371 -1.82636988 6.3251152
		 -6.93894815 -1.80123198 6.41328144 -6.89705706 -1.98089159 6.42676544 -6.97971249 -2.0038921833 6.33540154
		 -9.43202686 1.23997951 3.93114567 -9.44568443 1.22573638 3.9521594 -9.31956291 1.08015275 3.94187307
		 -9.30322933 1.095968008 3.91766167 -6.48783207 1.38986397 7.41833687 -6.43824768 1.42286777 7.38925314
		 -6.32811499 1.25630593 7.40402889 -6.38270855 1.22275305 7.43498039 -6.63574219 -0.88908154 2.95380306
		 -6.76226187 -0.90833813 2.96084642 -6.73601818 -1.099337697 2.94365644 -6.60200453 -1.083302498 2.93633747;
	setAttr -s 1337 ".ed";
	setAttr ".ed[0:165]"  0 1 1 1 2 1 2 3 1 3 4 1 4 5 1 5 6 1 6 7 1 7 8 1 8 9 1
		 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 16 1 16 17 1 17 18 1 18 19 1 19 20 1
		 20 21 1 21 22 1 22 23 1 23 24 1 24 0 1 624 623 1 623 622 1 622 621 1 621 620 1 620 619 1
		 619 618 1 618 617 1 617 616 1 616 615 1 615 614 1 614 613 1 613 612 1 612 611 1 611 610 1
		 610 609 1 609 608 1 608 607 1 607 606 1 606 605 1 605 604 1 604 603 1 603 602 1 602 601 1
		 601 600 1 600 624 1 26 27 1 27 2 1 1 26 1 27 28 1 28 3 1 28 29 1 29 4 1 29 30 1 30 5 1
		 30 31 1 31 6 1 31 32 1 32 7 1 32 33 1 33 8 1 33 34 1 34 9 1 34 35 1 35 10 1 35 36 1
		 36 11 1 36 37 1 37 12 1 37 38 1 38 13 1 38 39 1 39 14 1 39 40 1 40 15 1 40 41 1 41 16 1
		 41 42 1 42 17 1 42 43 1 43 18 1 43 44 1 44 19 1 44 45 1 45 20 1 45 46 1 46 21 1 46 47 1
		 47 22 1 47 48 1 48 23 1 48 49 1 49 24 1 49 25 1 25 0 1 50 51 1 51 26 1 26 25 1 25 50 1
		 51 52 1 52 27 1 52 53 1 53 28 1 53 54 1 54 29 1 54 55 1 55 30 1 55 56 1 56 31 1 56 57 1
		 57 32 1 57 58 1 58 33 1 58 59 1 59 34 1 59 60 1 60 35 1 60 61 1 61 36 1 61 62 1 62 37 1
		 62 63 1 63 38 1 63 64 1 64 39 1 64 65 1 65 40 1 65 66 1 66 41 1 66 67 1 67 42 1 67 68 1
		 68 43 1 68 69 1 69 44 1 69 70 1 70 45 1 70 71 1 71 46 1 71 72 1 72 47 1 72 73 1 73 48 1
		 73 74 1 74 49 1 74 50 1 75 76 1 76 51 1 50 75 1 76 77 1 77 52 1 77 78 1 78 53 1 78 79 1
		 79 54 1 79 80 1 80 55 1 80 81 1 81 56 1 81 82 1 82 57 1 82 83 1;
	setAttr ".ed[166:331]" 83 58 1 83 84 1 84 59 1 85 86 1 86 61 1 60 85 1 86 87 1
		 87 62 1 87 88 1 88 63 1 88 89 1 89 64 1 89 90 1 90 65 1 90 91 1 91 66 1 91 92 1 92 67 1
		 92 93 1 93 68 1 93 94 1 94 69 1 94 95 1 95 70 1 95 96 1 96 71 1 96 97 1 97 72 1 97 98 1
		 98 73 1 98 99 1 99 74 1 99 75 1 100 101 1 101 76 1 75 100 1 101 102 1 102 77 1 102 103 1
		 103 78 1 103 104 1 104 79 1 104 105 1 105 80 1 105 106 1 106 81 1 106 107 1 107 82 1
		 107 108 1 108 83 1 108 109 1 109 84 1 109 110 1 110 85 1 85 84 1 110 111 1 111 86 1
		 111 112 1 112 87 1 112 113 1 113 88 1 113 114 1 114 89 1 114 115 1 115 90 1 115 116 1
		 116 91 1 116 117 1 117 92 1 117 118 1 118 93 1 118 119 1 119 94 1 119 120 1 120 95 1
		 120 121 1 121 96 1 121 122 1 122 97 1 122 123 1 123 98 1 123 124 1 124 99 1 124 100 1
		 125 126 1 126 101 1 100 125 1 126 127 1 127 102 1 127 128 1 128 103 1 128 129 1 129 104 1
		 129 130 1 130 105 1 130 131 1 131 106 1 131 132 1 132 107 1 132 133 1 133 108 1 133 134 1
		 134 109 1 134 135 1 135 110 1 135 136 1 136 111 1 136 137 1 137 112 1 137 138 1 138 113 1
		 138 139 1 139 114 1 139 140 1 140 115 1 140 141 1 141 116 1 141 142 1 142 117 1 142 143 1
		 143 118 1 144 145 1 145 120 1 119 144 1 145 146 1 146 121 1 146 147 1 147 122 1 147 148 1
		 148 123 1 148 149 1 149 124 1 149 125 1 150 151 1 151 126 1 125 150 1 151 152 1 152 127 1
		 152 153 1 153 128 1 153 154 1 154 129 1 154 155 1 155 130 1 155 156 1 156 131 1 156 157 1
		 157 132 1 157 158 1 158 133 1 158 159 1 159 134 1 159 160 1 160 135 1 160 161 1 161 136 1
		 161 162 1 162 137 1 162 163 1 163 138 1 163 164 1 164 139 1 164 165 1 165 140 1 165 166 1
		 166 141 1;
	setAttr ".ed[332:497]" 166 167 1 167 142 1 167 168 1 168 143 1 168 169 1 169 144 1
		 144 143 1 169 170 1 170 145 1 170 171 1 171 146 1 171 172 1 172 147 1 172 173 1 173 148 1
		 173 174 1 174 149 1 174 150 1 175 176 1 176 151 1 150 175 1 176 177 1 177 152 1 177 178 1
		 178 153 1 178 179 1 179 154 1 179 180 1 180 155 1 180 181 1 181 156 1 181 182 1 182 157 1
		 182 183 1 183 158 1 183 184 1 184 159 1 184 185 1 185 160 1 185 186 1 186 161 1 186 187 1
		 187 162 1 187 188 1 188 163 1 188 189 1 189 164 1 189 190 1 190 165 1 190 191 1 191 166 1
		 191 192 1 192 167 1 192 193 1 193 168 1 193 194 1 194 169 1 194 195 1 195 170 1 195 196 1
		 196 171 1 196 197 1 197 172 1 197 198 1 198 173 1 198 199 1 199 174 1 199 175 1 200 201 1
		 201 176 1 175 200 1 201 202 1 202 177 1 203 204 1 204 179 1 178 203 1 204 205 1 205 180 1
		 205 206 1 206 181 1 206 207 1 207 182 1 207 208 1 208 183 1 208 209 1 209 184 1 209 210 1
		 210 185 1 210 211 1 211 186 1 211 212 1 212 187 1 212 213 1 213 188 1 213 214 1 214 189 1
		 214 215 1 215 190 1 215 216 1 216 191 1 216 217 1 217 192 1 217 218 1 218 193 1 218 219 1
		 219 194 1 219 220 1 220 195 1 220 221 1 221 196 1 221 222 1 222 197 1 222 223 1 223 198 1
		 223 224 1 224 199 1 224 200 1 225 226 1 226 201 1 200 225 1 226 227 1 227 202 1 227 228 1
		 228 203 1 203 202 1 228 229 1 229 204 1 229 230 1 230 205 1 230 231 1 231 206 1 231 232 1
		 232 207 1 232 233 1 233 208 1 233 234 1 234 209 1 234 235 1 235 210 1 235 236 1 236 211 1
		 236 237 1 237 212 1 237 238 1 238 213 1 238 239 1 239 214 1 239 240 1 240 215 1 240 241 1
		 241 216 1 241 242 1 242 217 1 242 243 1 243 218 1 243 244 1 244 219 1 244 245 1 245 220 1
		 245 246 1 246 221 1 246 247 1 247 222 1 247 248 1 248 223 1 248 249 1;
	setAttr ".ed[498:663]" 249 224 1 249 225 1 250 251 1 251 226 1 225 250 1 251 252 1
		 252 227 1 252 253 1 253 228 1 253 254 1 254 229 1 254 255 1 255 230 1 255 256 1 256 231 1
		 256 257 1 257 232 1 257 258 1 258 233 1 258 259 1 259 234 1 259 260 1 260 235 1 260 261 1
		 261 236 1 262 263 1 263 238 1 237 262 1 263 264 1 264 239 1 264 265 1 265 240 1 265 266 1
		 266 241 1 266 267 1 267 242 1 267 268 1 268 243 1 268 269 1 269 244 1 269 270 1 270 245 1
		 270 271 1 271 246 1 271 272 1 272 247 1 272 273 1 273 248 1 273 274 1 274 249 1 274 250 1
		 275 276 1 276 251 1 250 275 1 276 277 1 277 252 1 277 278 1 278 253 1 278 279 1 279 254 1
		 279 280 1 280 255 1 280 281 1 281 256 1 281 282 1 282 257 1 282 283 1 283 258 1 283 284 1
		 284 259 1 284 285 1 285 260 1 285 286 1 286 261 1 286 287 1 287 262 1 262 261 1 287 288 1
		 288 263 1 288 289 1 289 264 1 289 290 1 290 265 1 290 291 1 291 266 1 291 292 1 292 267 1
		 292 293 1 293 268 1 293 294 1 294 269 1 294 295 1 295 270 1 295 296 1 296 271 1 296 297 1
		 297 272 1 297 298 1 298 273 1 298 299 1 299 274 1 299 275 1 300 301 1 301 276 1 275 300 1
		 301 302 1 302 277 1 302 303 1 303 278 1 303 304 1 304 279 1 304 305 1 305 280 1 305 306 1
		 306 281 1 306 307 1 307 282 1 307 308 1 308 283 1 308 309 1 309 284 1 309 310 1 310 285 1
		 310 311 1 311 286 1 311 312 1 312 287 1 312 313 1 313 288 1 313 314 1 314 289 1 314 315 1
		 315 290 1 315 316 1 316 291 1 316 317 1 317 292 1 317 318 1 318 293 1 318 319 1 319 294 1
		 319 320 1 320 295 1 321 322 1 322 297 1 296 321 1 322 323 1 323 298 1 323 324 1 324 299 1
		 324 300 1 325 326 1 326 301 1 300 325 1 326 327 1 327 302 1 327 328 1 328 303 1 328 329 1
		 329 304 1 329 330 1 330 305 1 330 331 1 331 306 1 331 332 1 332 307 1;
	setAttr ".ed[664:829]" 332 333 1 333 308 1 333 334 1 334 309 1 334 335 1 335 310 1
		 335 336 1 336 311 1 336 337 1 337 312 1 337 338 1 338 313 1 338 339 1 339 314 1 339 340 1
		 340 315 1 340 341 1 341 316 1 341 342 1 342 317 1 342 343 1 343 318 1 343 344 1 344 319 1
		 344 345 1 345 320 1 345 346 1 346 321 1 321 320 1 346 347 1 347 322 1 347 348 1 348 323 1
		 348 349 1 349 324 1 349 325 1 350 351 1 351 326 1 325 350 1 351 352 1 352 327 1 352 353 1
		 353 328 1 353 354 1 354 329 1 354 355 1 355 330 1 355 356 1 356 331 1 356 357 1 357 332 1
		 357 358 1 358 333 1 358 359 1 359 334 1 359 360 1 360 335 1 360 361 1 361 336 1 361 362 1
		 362 337 1 362 363 1 363 338 1 363 364 1 364 339 1 364 365 1 365 340 1 365 366 1 366 341 1
		 366 367 1 367 342 1 367 368 1 368 343 1 368 369 1 369 344 1 369 370 1 370 345 1 370 371 1
		 371 346 1 371 372 1 372 347 1 372 373 1 373 348 1 373 374 1 374 349 1 374 350 1 375 376 1
		 376 351 1 350 375 1 376 377 1 377 352 1 377 378 1 378 353 1 378 379 1 379 354 1 380 381 1
		 381 356 1 355 380 1 381 382 1 382 357 1 382 383 1 383 358 1 383 384 1 384 359 1 384 385 1
		 385 360 1 385 386 1 386 361 1 386 387 1 387 362 1 387 388 1 388 363 1 388 389 1 389 364 1
		 389 390 1 390 365 1 390 391 1 391 366 1 391 392 1 392 367 1 392 393 1 393 368 1 393 394 1
		 394 369 1 394 395 1 395 370 1 395 396 1 396 371 1 396 397 1 397 372 1 397 398 1 398 373 1
		 398 399 1 399 374 1 399 375 1 400 401 1 401 376 1 375 400 1 401 402 1 402 377 1 402 403 1
		 403 378 1 403 404 1 404 379 1 404 405 1 405 380 1 380 379 1 405 406 1 406 381 1 406 407 1
		 407 382 1 407 408 1 408 383 1 408 409 1 409 384 1 409 410 1 410 385 1 410 411 1 411 386 1
		 411 412 1 412 387 1 412 413 1 413 388 1 413 414 1 414 389 1 414 415 1;
	setAttr ".ed[830:995]" 415 390 1 415 416 1 416 391 1 416 417 1 417 392 1 417 418 1
		 418 393 1 418 419 1 419 394 1 419 420 1 420 395 1 420 421 1 421 396 1 421 422 1 422 397 1
		 422 423 1 423 398 1 423 424 1 424 399 1 424 400 1 425 426 1 426 401 1 400 425 1 426 427 1
		 427 402 1 427 428 1 428 403 1 428 429 1 429 404 1 429 430 1 430 405 1 430 431 1 431 406 1
		 431 432 1 432 407 1 432 433 1 433 408 1 433 434 1 434 409 1 434 435 1 435 410 1 435 436 1
		 436 411 1 436 437 1 437 412 1 437 438 1 438 413 1 439 440 1 440 415 1 414 439 1 440 441 1
		 441 416 1 441 442 1 442 417 1 442 443 1 443 418 1 443 444 1 444 419 1 444 445 1 445 420 1
		 445 446 1 446 421 1 446 447 1 447 422 1 447 448 1 448 423 1 448 449 1 449 424 1 449 425 1
		 450 451 1 451 426 1 425 450 1 451 452 1 452 427 1 452 453 1 453 428 1 453 454 1 454 429 1
		 454 455 1 455 430 1 455 456 1 456 431 1 456 457 1 457 432 1 457 458 1 458 433 1 458 459 1
		 459 434 1 459 460 1 460 435 1 460 461 1 461 436 1 461 462 1 462 437 1 462 463 1 463 438 1
		 463 464 1 464 439 1 439 438 1 464 465 1 465 440 1 465 466 1 466 441 1 466 467 1 467 442 1
		 467 468 1 468 443 1 468 469 1 469 444 1 469 470 1 470 445 1 470 471 1 471 446 1 471 472 1
		 472 447 1 472 473 1 473 448 1 473 474 1 474 449 1 474 450 1 475 476 1 476 451 1 450 475 1
		 476 477 1 477 452 1 477 478 1 478 453 1 478 479 1 479 454 1 479 480 1 480 455 1 480 481 1
		 481 456 1 481 482 1 482 457 1 482 483 1 483 458 1 483 484 1 484 459 1 484 485 1 485 460 1
		 485 486 1 486 461 1 486 487 1 487 462 1 487 488 1 488 463 1 488 489 1 489 464 1 489 490 1
		 490 465 1 490 491 1 491 466 1 491 492 1 492 467 1 492 493 1 493 468 1 493 494 1 494 469 1
		 494 495 1 495 470 1 495 496 1 496 471 1 496 497 1 497 472 1 498 499 1;
	setAttr ".ed[996:1161]" 499 474 1 473 498 1 499 475 1 500 501 1 501 476 1 475 500 1
		 501 502 1 502 477 1 502 503 1 503 478 1 503 504 1 504 479 1 504 505 1 505 480 1 505 506 1
		 506 481 1 506 507 1 507 482 1 507 508 1 508 483 1 508 509 1 509 484 1 509 510 1 510 485 1
		 510 511 1 511 486 1 511 512 1 512 487 1 512 513 1 513 488 1 513 514 1 514 489 1 514 515 1
		 515 490 1 515 516 1 516 491 1 516 517 1 517 492 1 517 518 1 518 493 1 518 519 1 519 494 1
		 519 520 1 520 495 1 520 521 1 521 496 1 521 522 1 522 497 1 522 523 1 523 498 1 498 497 1
		 523 524 1 524 499 1 524 500 1 525 526 1 526 501 1 500 525 1 526 527 1 527 502 1 527 528 1
		 528 503 1 528 529 1 529 504 1 529 530 1 530 505 1 530 531 1 531 506 1 531 532 1 532 507 1
		 532 533 1 533 508 1 533 534 1 534 509 1 534 535 1 535 510 1 535 536 1 536 511 1 536 537 1
		 537 512 1 537 538 1 538 513 1 538 539 1 539 514 1 539 540 1 540 515 1 540 541 1 541 516 1
		 541 542 1 542 517 1 542 543 1 543 518 1 543 544 1 544 519 1 544 545 1 545 520 1 545 546 1
		 546 521 1 546 547 1 547 522 1 547 548 1 548 523 1 548 549 1 549 524 1 549 525 1 550 551 1
		 551 526 1 525 550 1 551 552 1 552 527 1 552 553 1 553 528 1 553 554 1 554 529 1 554 555 1
		 555 530 1 555 556 1 556 531 1 557 558 1 558 533 1 532 557 1 558 559 1 559 534 1 559 560 1
		 560 535 1 560 561 1 561 536 1 561 562 1 562 537 1 562 563 1 563 538 1 563 564 1 564 539 1
		 564 565 1 565 540 1 565 566 1 566 541 1 566 567 1 567 542 1 567 568 1 568 543 1 568 569 1
		 569 544 1 569 570 1 570 545 1 570 571 1 571 546 1 571 572 1 572 547 1 572 573 1 573 548 1
		 573 574 1 574 549 1 574 550 1 575 576 1 576 551 1 550 575 1 576 577 1 577 552 1 577 578 1
		 578 553 1 578 579 1 579 554 1 579 580 1 580 555 1 580 581 1 581 556 1;
	setAttr ".ed[1162:1327]" 581 582 1 582 557 1 557 556 1 582 583 1 583 558 1 583 584 1
		 584 559 1 584 585 1 585 560 1 585 586 1 586 561 1 586 587 1 587 562 1 587 588 1 588 563 1
		 588 589 1 589 564 1 589 590 1 590 565 1 590 591 1 591 566 1 591 592 1 592 567 1 592 593 1
		 593 568 1 593 594 1 594 569 1 594 595 1 595 570 1 595 596 1 596 571 1 596 597 1 597 572 1
		 597 598 1 598 573 1 598 599 1 599 574 1 599 575 1 601 576 1 575 600 1 602 577 1 603 578 1
		 604 579 1 605 580 1 606 581 1 607 582 1 608 583 1 609 584 1 610 585 1 611 586 1 612 587 1
		 613 588 1 614 589 1 615 590 1 617 592 1 591 616 1 618 593 1 619 594 1 620 595 1 621 596 1
		 622 597 1 623 598 1 624 599 1 628 627 1 627 626 1 626 625 1 625 628 1 636 635 1 635 634 1
		 634 633 1 633 636 1 640 639 1 639 638 1 638 637 1 637 640 1 644 643 1 643 642 1 642 641 1
		 641 644 1 652 651 1 651 650 1 650 649 1 649 652 1 656 655 1 655 654 1 654 653 1 653 656 1
		 660 659 1 659 658 1 658 657 1 657 660 1 668 667 1 667 666 1 666 665 1 665 668 1 626 1 1
		 0 625 1 627 26 1 628 25 1 629 630 1 630 60 1 59 629 1 630 631 1 631 85 1 631 632 1
		 632 84 1 632 629 1 634 119 1 118 633 1 635 144 1 636 143 1 638 178 1 177 637 1 639 203 1
		 640 202 1 642 237 1 236 641 1 643 262 1 644 261 1 645 646 1 646 296 1 295 645 1 646 647 1
		 647 321 1 647 648 1 648 320 1 648 645 1 650 355 1 354 649 1 651 380 1 652 379 1 654 414 1
		 413 653 1 655 439 1 656 438 1 658 473 1 472 657 1 659 498 1 660 497 1 661 662 1 662 532 1
		 531 661 1 662 663 1 663 557 1 663 664 1 664 556 1 664 661 1 666 591 1 590 665 1 667 616 1
		 668 615 1 672 671 1 671 670 1 670 669 1 669 672 1 676 675 1 675 674 1 674 673 1 673 676 1
		 680 679 1 679 678 1 678 677 1 677 680 1 670 630 1 629 669 1 671 631 1;
	setAttr ".ed[1328:1336]" 672 632 1 674 646 1 645 673 1 675 647 1 676 648 1 678 662 1
		 661 677 1 679 663 1 680 664 1;
	setAttr -s 658 -ch 2674 ".fc";
	setAttr ".fc[0:499]" -type "polyFaces" 
		f 25 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24
		f 25 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49
		f 4 50 51 -2 52
		f 4 53 54 -3 -52
		f 4 55 56 -4 -55
		f 4 57 58 -5 -57
		f 4 59 60 -6 -59
		f 4 61 62 -7 -61
		f 4 63 64 -8 -63
		f 4 65 66 -9 -65
		f 4 67 68 -10 -67
		f 4 69 70 -11 -69
		f 4 71 72 -12 -71
		f 4 73 74 -13 -73
		f 4 75 76 -14 -75
		f 4 77 78 -15 -77
		f 4 79 80 -16 -79
		f 4 81 82 -17 -81
		f 4 83 84 -18 -83
		f 4 85 86 -19 -85
		f 4 87 88 -20 -87
		f 4 89 90 -21 -89
		f 4 91 92 -22 -91
		f 4 93 94 -23 -93
		f 4 95 96 -24 -95
		f 4 97 98 -25 -97
		f 4 99 100 101 102
		f 4 103 104 -51 -101
		f 4 105 106 -54 -105
		f 4 107 108 -56 -107
		f 4 109 110 -58 -109
		f 4 111 112 -60 -111
		f 4 113 114 -62 -113
		f 4 115 116 -64 -115
		f 4 117 118 -66 -117
		f 4 119 120 -68 -119
		f 4 121 122 -70 -121
		f 4 123 124 -72 -123
		f 4 125 126 -74 -125
		f 4 127 128 -76 -127
		f 4 129 130 -78 -129
		f 4 131 132 -80 -131
		f 4 133 134 -82 -133
		f 4 135 136 -84 -135
		f 4 137 138 -86 -137
		f 4 139 140 -88 -139
		f 4 141 142 -90 -141
		f 4 143 144 -92 -143
		f 4 145 146 -94 -145
		f 4 147 148 -96 -147
		f 4 149 -103 -98 -149
		f 4 150 151 -100 152
		f 4 153 154 -104 -152
		f 4 155 156 -106 -155
		f 4 157 158 -108 -157
		f 4 159 160 -110 -159
		f 4 161 162 -112 -161
		f 4 163 164 -114 -163
		f 4 165 166 -116 -165
		f 4 167 168 -118 -167
		f 4 169 170 -122 171
		f 4 172 173 -124 -171
		f 4 174 175 -126 -174
		f 4 176 177 -128 -176
		f 4 178 179 -130 -178
		f 4 180 181 -132 -180
		f 4 182 183 -134 -182
		f 4 184 185 -136 -184
		f 4 186 187 -138 -186
		f 4 188 189 -140 -188
		f 4 190 191 -142 -190
		f 4 192 193 -144 -192
		f 4 194 195 -146 -194
		f 4 196 197 -148 -196
		f 4 198 -153 -150 -198
		f 4 199 200 -151 201
		f 4 202 203 -154 -201
		f 4 204 205 -156 -204
		f 4 206 207 -158 -206
		f 4 208 209 -160 -208
		f 4 210 211 -162 -210
		f 4 212 213 -164 -212
		f 4 214 215 -166 -214
		f 4 216 217 -168 -216
		f 4 218 219 220 -218
		f 4 221 222 -170 -220
		f 4 223 224 -173 -223
		f 4 225 226 -175 -225
		f 4 227 228 -177 -227
		f 4 229 230 -179 -229
		f 4 231 232 -181 -231
		f 4 233 234 -183 -233
		f 4 235 236 -185 -235
		f 4 237 238 -187 -237
		f 4 239 240 -189 -239
		f 4 241 242 -191 -241
		f 4 243 244 -193 -243
		f 4 245 246 -195 -245
		f 4 247 248 -197 -247
		f 4 249 -202 -199 -249
		f 4 250 251 -200 252
		f 4 253 254 -203 -252
		f 4 255 256 -205 -255
		f 4 257 258 -207 -257
		f 4 259 260 -209 -259
		f 4 261 262 -211 -261
		f 4 263 264 -213 -263
		f 4 265 266 -215 -265
		f 4 267 268 -217 -267
		f 4 269 270 -219 -269
		f 4 271 272 -222 -271
		f 4 273 274 -224 -273
		f 4 275 276 -226 -275
		f 4 277 278 -228 -277
		f 4 279 280 -230 -279
		f 4 281 282 -232 -281
		f 4 283 284 -234 -283
		f 4 285 286 -236 -285
		f 4 287 288 -240 289
		f 4 290 291 -242 -289
		f 4 292 293 -244 -292
		f 4 294 295 -246 -294
		f 4 296 297 -248 -296
		f 4 298 -253 -250 -298
		f 4 299 300 -251 301
		f 4 302 303 -254 -301
		f 4 304 305 -256 -304
		f 4 306 307 -258 -306
		f 4 308 309 -260 -308
		f 4 310 311 -262 -310
		f 4 312 313 -264 -312
		f 4 314 315 -266 -314
		f 4 316 317 -268 -316
		f 4 318 319 -270 -318
		f 4 320 321 -272 -320
		f 4 322 323 -274 -322
		f 4 324 325 -276 -324
		f 4 326 327 -278 -326
		f 4 328 329 -280 -328
		f 4 330 331 -282 -330
		f 4 332 333 -284 -332
		f 4 334 335 -286 -334
		f 4 336 337 338 -336
		f 4 339 340 -288 -338
		f 4 341 342 -291 -341
		f 4 343 344 -293 -343
		f 4 345 346 -295 -345
		f 4 347 348 -297 -347
		f 4 349 -302 -299 -349
		f 4 350 351 -300 352
		f 4 353 354 -303 -352
		f 4 355 356 -305 -355
		f 4 357 358 -307 -357
		f 4 359 360 -309 -359
		f 4 361 362 -311 -361
		f 4 363 364 -313 -363
		f 4 365 366 -315 -365
		f 4 367 368 -317 -367
		f 4 369 370 -319 -369
		f 4 371 372 -321 -371
		f 4 373 374 -323 -373
		f 4 375 376 -325 -375
		f 4 377 378 -327 -377
		f 4 379 380 -329 -379
		f 4 381 382 -331 -381
		f 4 383 384 -333 -383
		f 4 385 386 -335 -385
		f 4 387 388 -337 -387
		f 4 389 390 -340 -389
		f 4 391 392 -342 -391
		f 4 393 394 -344 -393
		f 4 395 396 -346 -395
		f 4 397 398 -348 -397
		f 4 399 -353 -350 -399
		f 4 400 401 -351 402
		f 4 403 404 -354 -402
		f 4 405 406 -358 407
		f 4 408 409 -360 -407
		f 4 410 411 -362 -410
		f 4 412 413 -364 -412
		f 4 414 415 -366 -414
		f 4 416 417 -368 -416
		f 4 418 419 -370 -418
		f 4 420 421 -372 -420
		f 4 422 423 -374 -422
		f 4 424 425 -376 -424
		f 4 426 427 -378 -426
		f 4 428 429 -380 -428
		f 4 430 431 -382 -430
		f 4 432 433 -384 -432
		f 4 434 435 -386 -434
		f 4 436 437 -388 -436
		f 4 438 439 -390 -438
		f 4 440 441 -392 -440
		f 4 442 443 -394 -442
		f 4 444 445 -396 -444
		f 4 446 447 -398 -446
		f 4 448 -403 -400 -448
		f 4 449 450 -401 451
		f 4 452 453 -404 -451
		f 4 454 455 456 -454
		f 4 457 458 -406 -456
		f 4 459 460 -409 -459
		f 4 461 462 -411 -461
		f 4 463 464 -413 -463
		f 4 465 466 -415 -465
		f 4 467 468 -417 -467
		f 4 469 470 -419 -469
		f 4 471 472 -421 -471
		f 4 473 474 -423 -473
		f 4 475 476 -425 -475
		f 4 477 478 -427 -477
		f 4 479 480 -429 -479
		f 4 481 482 -431 -481
		f 4 483 484 -433 -483
		f 4 485 486 -435 -485
		f 4 487 488 -437 -487
		f 4 489 490 -439 -489
		f 4 491 492 -441 -491
		f 4 493 494 -443 -493
		f 4 495 496 -445 -495
		f 4 497 498 -447 -497
		f 4 499 -452 -449 -499
		f 4 500 501 -450 502
		f 4 503 504 -453 -502
		f 4 505 506 -455 -505
		f 4 507 508 -458 -507
		f 4 509 510 -460 -509
		f 4 511 512 -462 -511
		f 4 513 514 -464 -513
		f 4 515 516 -466 -515
		f 4 517 518 -468 -517
		f 4 519 520 -470 -519
		f 4 521 522 -472 -521
		f 4 523 524 -476 525
		f 4 526 527 -478 -525
		f 4 528 529 -480 -528
		f 4 530 531 -482 -530
		f 4 532 533 -484 -532
		f 4 534 535 -486 -534
		f 4 536 537 -488 -536
		f 4 538 539 -490 -538
		f 4 540 541 -492 -540
		f 4 542 543 -494 -542
		f 4 544 545 -496 -544
		f 4 546 547 -498 -546
		f 4 548 -503 -500 -548
		f 4 549 550 -501 551
		f 4 552 553 -504 -551
		f 4 554 555 -506 -554
		f 4 556 557 -508 -556
		f 4 558 559 -510 -558
		f 4 560 561 -512 -560
		f 4 562 563 -514 -562
		f 4 564 565 -516 -564
		f 4 566 567 -518 -566
		f 4 568 569 -520 -568
		f 4 570 571 -522 -570
		f 4 572 573 574 -572
		f 4 575 576 -524 -574
		f 4 577 578 -527 -577
		f 4 579 580 -529 -579
		f 4 581 582 -531 -581
		f 4 583 584 -533 -583
		f 4 585 586 -535 -585
		f 4 587 588 -537 -587
		f 4 589 590 -539 -589
		f 4 591 592 -541 -591
		f 4 593 594 -543 -593
		f 4 595 596 -545 -595
		f 4 597 598 -547 -597
		f 4 599 -552 -549 -599
		f 4 600 601 -550 602
		f 4 603 604 -553 -602
		f 4 605 606 -555 -605
		f 4 607 608 -557 -607
		f 4 609 610 -559 -609
		f 4 611 612 -561 -611
		f 4 613 614 -563 -613
		f 4 615 616 -565 -615
		f 4 617 618 -567 -617
		f 4 619 620 -569 -619
		f 4 621 622 -571 -621
		f 4 623 624 -573 -623
		f 4 625 626 -576 -625
		f 4 627 628 -578 -627
		f 4 629 630 -580 -629
		f 4 631 632 -582 -631
		f 4 633 634 -584 -633
		f 4 635 636 -586 -635
		f 4 637 638 -588 -637
		f 4 639 640 -590 -639
		f 4 641 642 -594 643
		f 4 644 645 -596 -643
		f 4 646 647 -598 -646
		f 4 648 -603 -600 -648
		f 4 649 650 -601 651
		f 4 652 653 -604 -651
		f 4 654 655 -606 -654
		f 4 656 657 -608 -656
		f 4 658 659 -610 -658
		f 4 660 661 -612 -660
		f 4 662 663 -614 -662
		f 4 664 665 -616 -664
		f 4 666 667 -618 -666
		f 4 668 669 -620 -668
		f 4 670 671 -622 -670
		f 4 672 673 -624 -672
		f 4 674 675 -626 -674
		f 4 676 677 -628 -676
		f 4 678 679 -630 -678
		f 4 680 681 -632 -680
		f 4 682 683 -634 -682
		f 4 684 685 -636 -684
		f 4 686 687 -638 -686
		f 4 688 689 -640 -688
		f 4 690 691 692 -690
		f 4 693 694 -642 -692
		f 4 695 696 -645 -695
		f 4 697 698 -647 -697
		f 4 699 -652 -649 -699
		f 4 700 701 -650 702
		f 4 703 704 -653 -702
		f 4 705 706 -655 -705
		f 4 707 708 -657 -707
		f 4 709 710 -659 -709
		f 4 711 712 -661 -711
		f 4 713 714 -663 -713
		f 4 715 716 -665 -715
		f 4 717 718 -667 -717
		f 4 719 720 -669 -719
		f 4 721 722 -671 -721
		f 4 723 724 -673 -723
		f 4 725 726 -675 -725
		f 4 727 728 -677 -727
		f 4 729 730 -679 -729
		f 4 731 732 -681 -731
		f 4 733 734 -683 -733
		f 4 735 736 -685 -735
		f 4 737 738 -687 -737
		f 4 739 740 -689 -739
		f 4 741 742 -691 -741
		f 4 743 744 -694 -743
		f 4 745 746 -696 -745
		f 4 747 748 -698 -747
		f 4 749 -703 -700 -749
		f 4 750 751 -701 752
		f 4 753 754 -704 -752
		f 4 755 756 -706 -755
		f 4 757 758 -708 -757
		f 4 759 760 -712 761
		f 4 762 763 -714 -761
		f 4 764 765 -716 -764
		f 4 766 767 -718 -766
		f 4 768 769 -720 -768
		f 4 770 771 -722 -770
		f 4 772 773 -724 -772
		f 4 774 775 -726 -774
		f 4 776 777 -728 -776
		f 4 778 779 -730 -778
		f 4 780 781 -732 -780
		f 4 782 783 -734 -782
		f 4 784 785 -736 -784
		f 4 786 787 -738 -786
		f 4 788 789 -740 -788
		f 4 790 791 -742 -790
		f 4 792 793 -744 -792
		f 4 794 795 -746 -794
		f 4 796 797 -748 -796
		f 4 798 -753 -750 -798
		f 4 799 800 -751 801
		f 4 802 803 -754 -801
		f 4 804 805 -756 -804
		f 4 806 807 -758 -806
		f 4 808 809 810 -808
		f 4 811 812 -760 -810
		f 4 813 814 -763 -813
		f 4 815 816 -765 -815
		f 4 817 818 -767 -817
		f 4 819 820 -769 -819
		f 4 821 822 -771 -821
		f 4 823 824 -773 -823
		f 4 825 826 -775 -825
		f 4 827 828 -777 -827
		f 4 829 830 -779 -829
		f 4 831 832 -781 -831
		f 4 833 834 -783 -833
		f 4 835 836 -785 -835
		f 4 837 838 -787 -837
		f 4 839 840 -789 -839
		f 4 841 842 -791 -841
		f 4 843 844 -793 -843
		f 4 845 846 -795 -845
		f 4 847 848 -797 -847
		f 4 849 -802 -799 -849
		f 4 850 851 -800 852
		f 4 853 854 -803 -852
		f 4 855 856 -805 -855
		f 4 857 858 -807 -857
		f 4 859 860 -809 -859
		f 4 861 862 -812 -861
		f 4 863 864 -814 -863
		f 4 865 866 -816 -865
		f 4 867 868 -818 -867
		f 4 869 870 -820 -869
		f 4 871 872 -822 -871
		f 4 873 874 -824 -873
		f 4 875 876 -826 -875
		f 4 877 878 -830 879
		f 4 880 881 -832 -879
		f 4 882 883 -834 -882
		f 4 884 885 -836 -884
		f 4 886 887 -838 -886
		f 4 888 889 -840 -888
		f 4 890 891 -842 -890
		f 4 892 893 -844 -892
		f 4 894 895 -846 -894
		f 4 896 897 -848 -896
		f 4 898 -853 -850 -898
		f 4 899 900 -851 901
		f 4 902 903 -854 -901
		f 4 904 905 -856 -904
		f 4 906 907 -858 -906
		f 4 908 909 -860 -908
		f 4 910 911 -862 -910
		f 4 912 913 -864 -912
		f 4 914 915 -866 -914
		f 4 916 917 -868 -916
		f 4 918 919 -870 -918
		f 4 920 921 -872 -920
		f 4 922 923 -874 -922
		f 4 924 925 -876 -924
		f 4 926 927 928 -926
		f 4 929 930 -878 -928
		f 4 931 932 -881 -931
		f 4 933 934 -883 -933
		f 4 935 936 -885 -935
		f 4 937 938 -887 -937
		f 4 939 940 -889 -939
		f 4 941 942 -891 -941
		f 4 943 944 -893 -943
		f 4 945 946 -895 -945
		f 4 947 948 -897 -947
		f 4 949 -902 -899 -949
		f 4 950 951 -900 952
		f 4 953 954 -903 -952
		f 4 955 956 -905 -955
		f 4 957 958 -907 -957
		f 4 959 960 -909 -959
		f 4 961 962 -911 -961
		f 4 963 964 -913 -963
		f 4 965 966 -915 -965
		f 4 967 968 -917 -967
		f 4 969 970 -919 -969
		f 4 971 972 -921 -971
		f 4 973 974 -923 -973
		f 4 975 976 -925 -975
		f 4 977 978 -927 -977
		f 4 979 980 -930 -979
		f 4 981 982 -932 -981
		f 4 983 984 -934 -983
		f 4 985 986 -936 -985
		f 4 987 988 -938 -987
		f 4 989 990 -940 -989
		f 4 991 992 -942 -991
		f 4 993 994 -944 -993
		f 4 995 996 -948 997
		f 4 998 -953 -950 -997
		f 4 999 1000 -951 1001
		f 4 1002 1003 -954 -1001
		f 4 1004 1005 -956 -1004
		f 4 1006 1007 -958 -1006
		f 4 1008 1009 -960 -1008
		f 4 1010 1011 -962 -1010
		f 4 1012 1013 -964 -1012
		f 4 1014 1015 -966 -1014
		f 4 1016 1017 -968 -1016
		f 4 1018 1019 -970 -1018
		f 4 1020 1021 -972 -1020
		f 4 1022 1023 -974 -1022
		f 4 1024 1025 -976 -1024
		f 4 1026 1027 -978 -1026
		f 4 1028 1029 -980 -1028
		f 4 1030 1031 -982 -1030
		f 4 1032 1033 -984 -1032
		f 4 1034 1035 -986 -1034
		f 4 1036 1037 -988 -1036
		f 4 1038 1039 -990 -1038
		f 4 1040 1041 -992 -1040
		f 4 1042 1043 -994 -1042
		f 4 1044 1045 1046 -1044
		f 4 1047 1048 -996 -1046
		f 4 1049 -1002 -999 -1049
		f 4 1050 1051 -1000 1052
		f 4 1053 1054 -1003 -1052
		f 4 1055 1056 -1005 -1055
		f 4 1057 1058 -1007 -1057
		f 4 1059 1060 -1009 -1059
		f 4 1061 1062 -1011 -1061
		f 4 1063 1064 -1013 -1063;
	setAttr ".fc[500:657]"
		f 4 1065 1066 -1015 -1065
		f 4 1067 1068 -1017 -1067
		f 4 1069 1070 -1019 -1069
		f 4 1071 1072 -1021 -1071
		f 4 1073 1074 -1023 -1073
		f 4 1075 1076 -1025 -1075
		f 4 1077 1078 -1027 -1077
		f 4 1079 1080 -1029 -1079
		f 4 1081 1082 -1031 -1081
		f 4 1083 1084 -1033 -1083
		f 4 1085 1086 -1035 -1085
		f 4 1087 1088 -1037 -1087
		f 4 1089 1090 -1039 -1089
		f 4 1091 1092 -1041 -1091
		f 4 1093 1094 -1043 -1093
		f 4 1095 1096 -1045 -1095
		f 4 1097 1098 -1048 -1097
		f 4 1099 -1053 -1050 -1099
		f 4 1100 1101 -1051 1102
		f 4 1103 1104 -1054 -1102
		f 4 1105 1106 -1056 -1105
		f 4 1107 1108 -1058 -1107
		f 4 1109 1110 -1060 -1109
		f 4 1111 1112 -1062 -1111
		f 4 1113 1114 -1066 1115
		f 4 1116 1117 -1068 -1115
		f 4 1118 1119 -1070 -1118
		f 4 1120 1121 -1072 -1120
		f 4 1122 1123 -1074 -1122
		f 4 1124 1125 -1076 -1124
		f 4 1126 1127 -1078 -1126
		f 4 1128 1129 -1080 -1128
		f 4 1130 1131 -1082 -1130
		f 4 1132 1133 -1084 -1132
		f 4 1134 1135 -1086 -1134
		f 4 1136 1137 -1088 -1136
		f 4 1138 1139 -1090 -1138
		f 4 1140 1141 -1092 -1140
		f 4 1142 1143 -1094 -1142
		f 4 1144 1145 -1096 -1144
		f 4 1146 1147 -1098 -1146
		f 4 1148 -1103 -1100 -1148
		f 4 1149 1150 -1101 1151
		f 4 1152 1153 -1104 -1151
		f 4 1154 1155 -1106 -1154
		f 4 1156 1157 -1108 -1156
		f 4 1158 1159 -1110 -1158
		f 4 1160 1161 -1112 -1160
		f 4 1162 1163 1164 -1162
		f 4 1165 1166 -1114 -1164
		f 4 1167 1168 -1117 -1167
		f 4 1169 1170 -1119 -1169
		f 4 1171 1172 -1121 -1171
		f 4 1173 1174 -1123 -1173
		f 4 1175 1176 -1125 -1175
		f 4 1177 1178 -1127 -1177
		f 4 1179 1180 -1129 -1179
		f 4 1181 1182 -1131 -1181
		f 4 1183 1184 -1133 -1183
		f 4 1185 1186 -1135 -1185
		f 4 1187 1188 -1137 -1187
		f 4 1189 1190 -1139 -1189
		f 4 1191 1192 -1141 -1191
		f 4 1193 1194 -1143 -1193
		f 4 1195 1196 -1145 -1195
		f 4 1197 1198 -1147 -1197
		f 4 1199 -1152 -1149 -1199
		f 4 -49 1200 -1150 1201
		f 4 -48 1202 -1153 -1201
		f 4 -47 1203 -1155 -1203
		f 4 -46 1204 -1157 -1204
		f 4 -45 1205 -1159 -1205
		f 4 -44 1206 -1161 -1206
		f 4 -43 1207 -1163 -1207
		f 4 -42 1208 -1166 -1208
		f 4 -41 1209 -1168 -1209
		f 4 -40 1210 -1170 -1210
		f 4 -39 1211 -1172 -1211
		f 4 -38 1212 -1174 -1212
		f 4 -37 1213 -1176 -1213
		f 4 -36 1214 -1178 -1214
		f 4 -35 1215 -1180 -1215
		f 4 -33 1216 -1184 1217
		f 4 -32 1218 -1186 -1217
		f 4 -31 1219 -1188 -1219
		f 4 -30 1220 -1190 -1220
		f 4 -29 1221 -1192 -1221
		f 4 -28 1222 -1194 -1222
		f 4 -27 1223 -1196 -1223
		f 4 -26 1224 -1198 -1224
		f 4 -50 -1202 -1200 -1225
		f 4 1225 1226 1227 1228
		f 4 1229 1230 1231 1232
		f 4 1233 1234 1235 1236
		f 4 1237 1238 1239 1240
		f 4 1241 1242 1243 1244
		f 4 1245 1246 1247 1248
		f 4 1249 1250 1251 1252
		f 4 1253 1254 1255 1256
		f 4 -1228 1257 -1 1258
		f 4 -1227 1259 -53 -1258
		f 4 -1226 1260 -102 -1260
		f 4 -1229 -1259 -99 -1261
		f 4 1261 1262 -120 1263
		f 4 1264 1265 -172 -1263
		f 4 1266 1267 -221 -1266
		f 4 1268 -1264 -169 -1268
		f 4 -1232 1269 -238 1270
		f 4 -1231 1271 -290 -1270
		f 4 -1230 1272 -339 -1272
		f 4 -1233 -1271 -287 -1273
		f 4 -1236 1273 -356 1274
		f 4 -1235 1275 -408 -1274
		f 4 -1234 1276 -457 -1276
		f 4 -1237 -1275 -405 -1277
		f 4 -1240 1277 -474 1278
		f 4 -1239 1279 -526 -1278
		f 4 -1238 1280 -575 -1280
		f 4 -1241 -1279 -523 -1281
		f 4 1281 1282 -592 1283
		f 4 1284 1285 -644 -1283
		f 4 1286 1287 -693 -1286
		f 4 1288 -1284 -641 -1288
		f 4 -1244 1289 -710 1290
		f 4 -1243 1291 -762 -1290
		f 4 -1242 1292 -811 -1292
		f 4 -1245 -1291 -759 -1293
		f 4 -1248 1293 -828 1294
		f 4 -1247 1295 -880 -1294
		f 4 -1246 1296 -929 -1296
		f 4 -1249 -1295 -877 -1297
		f 4 -1252 1297 -946 1298
		f 4 -1251 1299 -998 -1298
		f 4 -1250 1300 -1047 -1300
		f 4 -1253 -1299 -995 -1301
		f 4 1301 1302 -1064 1303
		f 4 1304 1305 -1116 -1303
		f 4 1306 1307 -1165 -1306
		f 4 1308 -1304 -1113 -1308
		f 4 -1256 1309 -1182 1310
		f 4 -1255 1311 -1218 -1310
		f 4 -1254 1312 -34 -1312
		f 4 -1257 -1311 -1216 -1313
		f 4 1313 1314 1315 1316
		f 4 1317 1318 1319 1320
		f 4 1321 1322 1323 1324
		f 4 -1316 1325 -1262 1326
		f 4 -1315 1327 -1265 -1326
		f 4 -1314 1328 -1267 -1328
		f 4 -1317 -1327 -1269 -1329
		f 4 -1320 1329 -1282 1330
		f 4 -1319 1331 -1285 -1330
		f 4 -1318 1332 -1287 -1332
		f 4 -1321 -1331 -1289 -1333
		f 4 -1324 1333 -1302 1334
		f 4 -1323 1335 -1305 -1334
		f 4 -1322 1336 -1307 -1336
		f 4 -1325 -1335 -1309 -1337;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode houdiniAsset -n "hunte__dev__Tree_subnet__1_03" -p "Globe_Core";
	rename -uid "CD02F5A7-4BBC-769D-5A9C-6E903C510D3E";
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
	setAttr ".t" -type "double3" 0 1.0007328950678349 0 ;
	setAttr ".s" -type "double3" 0.042426509627468308 0.042426509627468308 0.042426509627468308 ;
	setAttr ".rp" -type "double3" -0.22325811408804494 0.073666508813681281 0.058475211986136109 ;
	setAttr ".sp" -type "double3" -5.2622314691543579 1.7363320589065552 1.3782706260681152 ;
	setAttr ".spt" -type "double3" 5.0389733550663127 -1.662665550092874 -1.3197954140819792 ;
	setAttr ".otlFilePath" -type "string" "C:/Users/hunte/Documents/houdini19.5/otls/object_hunte.dev.Tree_subnet.1.0.hdanc";
	setAttr ".assetName" -type "string" "hunte::dev::Object/Tree_subnet::1.0";
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
	setAttr -cb on ".houdiniAssetParm_bend" 7;
	setAttr -cb on ".houdiniAssetParm_selectamount1" 1;
	setAttr -cb on ".houdiniAssetParm_dist" 0.98299998044967651;
	setAttr -cb on ".houdiniAssetParm_selectamount2" 5;
	setAttr -cb on ".houdiniAssetParm_dist2" 0.56000000238418579;
	setAttr -cb on ".houdiniAssetParm_bend2" 36;
createNode transform -n "tube_object1" -p "hunte__dev__Tree_subnet__1_03";
	rename -uid "B914E32D-4C18-197D-292B-4CB6AF065004";
	setAttr ".rp" -type "double3" -3.9645986557006836 0 2.8804492950439453 ;
	setAttr ".sp" -type "double3" -3.9645986557006836 0 2.8804492950439453 ;
createNode transform -n "lineartaper2_0" -p "|Globe_Core|hunte__dev__Tree_subnet__1_03|tube_object1";
	rename -uid "D4FA81FE-4010-63FE-87D5-6DB62444292D";
	setAttr ".rp" -type "double3" -4.7934255599975586 -0.53233909606933594 1.018873691558789 ;
	setAttr ".sp" -type "double3" -4.7934255599975586 -0.53233909606933594 1.018873691558789 ;
createNode mesh -n "lineartaper2_0Shape" -p "|Globe_Core|hunte__dev__Tree_subnet__1_03|tube_object1|lineartaper2_0";
	rename -uid "502076F7-4405-81D0-980A-94A57A4BE2EC";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "lineartaper2_3" -p "|Globe_Core|hunte__dev__Tree_subnet__1_03|tube_object1";
	rename -uid "F0427E7C-4047-E0C6-FFEA-BD9600158DF4";
	setAttr ".t" -type "double3" -0.089657268737251883 0 12.665100627439283 ;
	setAttr ".r" -type "double3" 0 -72.611420780657014 0 ;
	setAttr ".rp" -type "double3" -4.7934255599975586 -0.53233909606933594 1.018873691558789 ;
	setAttr ".sp" -type "double3" -4.7934255599975586 -0.53233909606933594 1.018873691558789 ;
createNode mesh -n "lineartaper2_3Shape" -p "lineartaper2_3";
	rename -uid "6A84DEF7-4997-5397-E346-5B900946DD23";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 2 "f[591:598]" "f[643:645]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[643:645]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 709 ".vt";
	setAttr ".vt[0:165]"  -5.89078999 3.93988276 1.287256 -5.9091115 3.93480396 1.29363275
		 -5.92515659 3.92962599 1.30448985 -5.93791628 3.9246726 1.31914568 -5.94659042 3.92025757 1.3366785
		 -5.95063257 3.91665649 1.35598743 -5.94978905 3.91409683 1.37585878 -5.94411325 3.91273832 1.39504409
		 -5.93396187 3.91266727 1.41233778 -5.91997194 3.9138875 1.42665362 -5.90302372 3.91632318 1.43709147
		 -5.88418102 3.91981983 1.44299603 -5.86462784 3.92415905 1.44399571 -5.84559393 3.92906761 1.44002819
		 -5.82827425 3.93423748 1.43134284 -5.81375742 3.93934298 1.41848493 -5.80295515 3.94406366 1.40226281
		 -5.79654694 3.9481039 1.38369536 -5.79493427 3.95120859 1.36394954 -5.79822016 3.95318413 1.34426606
		 -5.80619669 3.95390415 1.32588148 -5.81836367 3.95332527 1.30995131 -5.83395529 3.9514823 1.29747605
		 -5.85199308 3.94849348 1.28924 -5.87134361 3.94454384 1.28576016 -5.85115004 3.75164127 1.24453855
		 -5.8734827 3.74546576 1.25231242 -5.89304733 3.73919868 1.26555061 -5.90861511 3.73323393 1.28342175
		 -5.91920757 3.72794485 1.30480266 -5.92415857 3.72366524 1.32835031 -5.92315817 3.7206645 1.35258448
		 -5.91626835 3.71912861 1.37598288 -5.90392208 3.71915579 1.3970753 -5.88689566 3.72074461 1.41453624
		 -5.86625862 3.72379541 1.42726874 -5.8433075 3.72811508 1.43447256 -5.81948471 3.73343277 1.43569517
		 -5.79628611 3.73941517 1.43085992 -5.77517128 3.74568653 1.4202702 -5.75746536 3.75185156 1.40459204
		 -5.74428129 3.75752211 1.38480997 -5.73644829 3.76234484 1.36216712 -5.73445702 3.7660141 1.33808637
		 -5.73843336 3.76830149 1.31408095 -5.74812794 3.76906013 1.29165864 -5.76293087 3.76824617 1.27222896
		 -5.7819128 3.76590872 1.25701213 -5.80387974 3.76219368 1.24696469 -5.82745266 3.75733614 1.24271798
		 -5.81124735 3.56314993 1.20277143 -5.8375926 3.55588484 1.21194267 -5.86068106 3.54854441 1.22756398
		 -5.87906265 3.5415926 1.24865365 -5.89158106 3.53546429 1.27388656 -5.89745045 3.53054428 1.30167711
		 -5.89630222 3.527143 1.33027935 -5.88820839 3.52547312 1.35789609 -5.87367821 3.52564144 1.38279176
		 -5.85362244 3.52763462 1.40340257 -5.82930374 3.53133011 1.41843295 -5.80224895 3.53649378 1.42693865
		 -5.774158 3.5428009 1.4283855 -5.74679661 3.54985714 1.42268229 -5.7218833 3.55721903 1.41018748
		 -5.70098352 3.56442165 1.39168608 -5.6854105 3.57101345 1.36834073 -5.67614412 3.57658195 1.3416183
		 -5.67376423 3.58077478 1.31319761 -5.67842197 3.58333063 1.2848649 -5.6898241 3.58408737 1.25839996
		 -5.70725441 3.58299828 1.23546588 -5.72961807 3.58013153 1.21750379 -5.7555089 3.57566643 1.20564198
		 -5.78330088 3.56988573 1.20062625 -5.77108335 3.37441397 1.16195536 -5.80144215 3.36606288 1.17252493
		 -5.82805824 3.35766578 1.19053102 -5.84925842 3.34975195 1.21484208 -5.86371136 3.34281659 1.24393058
		 -5.87050915 3.33729696 1.27596879 -5.86922312 3.33353853 1.30894363 -5.85993528 3.33177805 1.34078336
		 -5.84322929 3.33212662 1.36948705 -5.82015419 3.33456135 1.39325154 -5.79216099 3.33893108 1.41058326
		 -5.76100731 3.34495926 1.42039323 -5.72865105 3.35226703 1.42206538 -5.69712543 3.36039686 1.4154942
		 -5.66841221 3.36883783 1.40109289 -5.64431381 3.37705803 1.37976623 -5.62634516 3.38454103 1.35285425
		 -5.61563587 3.39081907 1.32204807 -5.6128583 3.39549494 1.28928304 -5.61818695 3.39827633 1.25661814
		 -5.6312871 3.39898777 1.22610581 -5.65133572 3.39758468 1.19966328 -5.67707253 3.3941555 1.17895198
		 -5.70688152 3.38891506 1.16527307 -5.73888874 3.38219428 1.15948641 -5.73065948 3.1854372 1.12208867
		 -5.76503372 3.17600632 1.13405681 -5.79518032 3.16656923 1.15444922 -5.81920671 3.15771842 1.18198419
		 -5.83560133 3.15000963 1.21493173 -5.84333515 3.14392781 1.25122166 -5.84192181 3.13985538 1.28857374
		 -5.83145094 3.13804722 1.32464099 -5.81257915 3.13861799 1.35715711 -5.7864933 3.14153099 1.38407898
		 -5.75483179 3.14660382 1.4037149 -5.71958399 3.15351748 1.41483164 -5.68296528 3.1618371 1.41672993
		 -5.6472764 3.17104053 1.40929079 -5.61475945 3.18054986 1.39298201 -5.58745766 3.18976665 1.36882782
		 -5.56708622 3.19811201 1.33834624 -5.55492592 3.20506191 1.30345225 -5.55174065 3.21017933 1.26633859
		 -5.5577302 3.21314335 1.22933733 -5.57251835 3.21376681 1.1947732 -5.59517574 3.21201086 1.16481781
		 -5.62427902 3.20798659 1.14135396 -5.65799952 3.20194578 1.12585545 -5.69421816 3.19426823 1.11929631
		 -5.68997478 2.99622488 1.083179593 -5.7283659 2.98572016 1.096547127 -5.76204777 2.97525764 1.11932755
		 -5.78890467 2.96549582 1.15008903 -5.80724955 2.95704722 1.18689871 -5.81592989 2.95044327 1.22744393
		 -5.81439924 2.94609833 1.2691772 -5.8027544 2.94428587 1.30947614 -5.78172731 2.9451201 1.34580827
		 -5.75263882 2.9485476 1.37589121 -5.71731663 2.95435357 1.39783442 -5.67798042 2.96217346 1.41025937
		 -5.63710117 2.97151542 1.41238523 -5.59724808 2.98179269 1.40407836 -5.56092548 2.99235964 1.3858608
		 -5.53041553 3.0025517941 1.35887718 -5.50763464 3.011729956 1.3248229 -5.49401474 3.019315958 1.28583801
		 -5.49041176 3.024833679 1.24437189 -5.49705172 3.027936697 1.20302987 -5.51351738 3.028429985 1.16440988
		 -5.53877449 3.026282072 1.13093829 -5.57123613 3.021628618 1.10471833 -5.60886192 3.014761448 1.087397575
		 -5.64928865 3.0061125755 1.080064535 -5.64903307 2.80678296 1.045222521 -5.69144154 2.79520965 1.05998981
		 -5.72866201 2.78373814 1.085159302 -5.75835705 2.7730906 1.11914968 -5.77865982 2.76393557 1.15982461
		 -5.78829527 2.7568481 1.20462871 -5.78665781 2.75227404 1.25074673 -5.77384996 2.7505002 1.29528093
		 -5.75067663 2.75163841 1.33543324 -5.71859455 2.75561738 1.36868024 -5.67961884 2.76218629 1.39293337
		 -5.63619804 2.77093315 1.40666866 -5.59106159 2.78130817 1.40902281 -5.54704523 2.79265928 1.39984798
		 -5.50691414 2.80427313 1.37972069 -5.47319031 2.81542039 1.34990597;
	setAttr ".vt[166:331]" -5.44799328 2.82540059 1.3122766 -5.43290472 2.83358622 1.26919734
		 -5.42887402 2.83946323 1.22337484 -5.43615437 2.84266233 1.1776886 -5.45428753 2.84298253 1.13500881
		 -5.48213482 2.84040403 1.098017454 -5.51794672 2.83508801 1.069038749 -5.55947208 2.82736921 1.049893618
		 -5.60410213 2.81773257 1.041785002 -5.60783291 2.61711502 1.0082222223 -5.65426064 2.60447764 1.024389982
		 -5.69502354 2.59201336 1.051949978 -5.72756243 2.58050585 1.089170933 -5.74983168 2.57067752 1.13371372
		 -5.76043177 2.56314611 1.18277979 -5.75869751 2.5583849 1.23328638 -5.74473667 2.55669332 1.28205943
		 -5.71942806 2.55817699 1.32603478 -5.6843605 2.56274319 1.36244917 -5.64173794 2.57010531 1.38901436
		 -5.59423876 2.57979989 1.40406132 -5.54484749 2.59121823 1.40664482 -5.49666691 2.60364318 1.39660215
		 -5.45272541 2.61629367 1.37456453 -5.41578293 2.62837505 1.34191668 -5.38816166 2.63912773 1.30070984
		 -5.37159634 2.64787626 1.25353336 -5.36712837 2.65407157 1.2033515 -5.37503815 2.65732384 1.15331721
		 -5.3948288 2.65742874 1.10657418 -5.42525673 2.65437961 1.066059947 -5.46441031 2.64836788 1.034319878
		 -5.50982952 2.6397717 1.01334846 -5.55866003 2.62913132 1.0044629574 -5.56637526 2.42722631 0.972188
		 -5.61682272 2.41353106 0.98975635 -5.66113281 2.40008974 1.019707918 -5.69652128 2.38774753 1.060161471
		 -5.72076416 2.37727928 1.10857463 -5.73233891 2.36934304 1.16190553 -5.73051786 2.36443734 1.21680331
		 -5.71541548 2.36287069 1.26981854 -5.68798018 2.36474133 1.31762004 -5.64993668 2.3699317 1.3572042
		 -5.60367537 2.37811613 1.38608372 -5.55210209 2.3887794 1.40244436 -5.49845839 2.40125227 1.4052577
		 -5.44611454 2.41475105 1.39434719 -5.3983593 2.42842698 1.3703984 -5.3581934 2.44142151 1.33491611
		 -5.32814074 2.4529171 1.29012954 -5.31008959 2.46219254 1.23885322 -5.30517387 2.46866465 1.18430853
		 -5.31370306 2.47192645 1.12992334 -5.33514071 2.47177339 1.079114199 -5.36814022 2.46821451 1.035074234
		 -5.41062737 2.46147418 1.00057029724 -5.45993376 2.45197535 0.97777057 -5.51296043 2.44031549 0.96810734
		 -5.52466154 2.23712182 0.93711352 -5.57913065 2.22237372 0.95608258 -5.62699127 2.20797133 0.98842716
		 -5.66523552 2.19481993 1.032114744 -5.69146061 2.18374515 1.084400415 -5.70401955 2.17544317 1.14199877
		 -5.70212221 2.17043567 1.20129085 -5.68588829 2.16903758 1.25855088 -5.65633774 2.17133594 1.31018114
		 -5.61532688 2.1771872 1.35293746 -5.5654335 2.18622327 1.38413334 -5.50979137 2.19787669 1.4018085
		 -5.45189762 2.21141505 1.40485263 -5.39539003 2.2259872 1.39307427 -5.34381866 2.24067807 1.36721361
		 -5.3004241 2.25456452 1.32889533 -5.26793337 2.26677418 1.28052723 -5.24838686 2.27653909 1.22514856
		 -5.24301386 2.28324676 1.16623878 -5.25215149 2.28647494 1.10749984 -5.27522612 2.28602123 1.052621841
		 -5.3107872 2.281914 1.0050535202 -5.35660076 2.2744112 0.96778345 -5.40978765 2.2639842 0.94315362
		 -5.46700668 2.25128865 0.9327116 -5.48269415 2.046806097 0.9029963 -5.54118633 2.031011105 0.92336679
		 -5.59260082 2.015663862 0.95810485 -5.633708 2.0017282963 1.0050281286 -5.66192341 1.99008036 1.061188221
		 -5.6754756 1.98145175 1.12305629 -5.67351246 1.97638559 1.18674493 -5.65615749 1.97519875 1.24825227
		 -5.62450123 1.97796655 1.30371368 -5.58053255 1.98451519 1.3496443 -5.52701378 1.99443293 1.38315821
		 -5.467309 2.0070962906 1.40214944 -5.40516806 2.021710634 1.40542495 -5.34449673 2.037356615 1.39277864
		 -5.28910637 2.053051472 1.36500525 -5.24247837 2.067809582 1.32385015 -5.20754147 2.080702782 1.27189875
		 -5.18649101 2.09092164 1.2124157 -5.18065071 2.09782362 1.14913845 -5.1903863 2.10097504 1.086042881
		 -5.21508694 2.10017776 1.027093649 -5.25320005 2.095482826 0.97599459 -5.30233097 2.087184191 0.93595672
		 -5.35939264 2.075803995 0.90949547 -5.42080021 2.062056541 0.89827371 -5.44047022 1.85628462 0.86985302
		 -5.50298691 1.83944774 0.89162493 -5.55795956 1.82317114 0.92875767 -5.60193539 1.8084774 0.97891784
		 -5.6321497 1.79628968 1.0389539 -5.64670515 1.78737402 1.10509324 -5.6446867 1.7822907 1.17318082
		 -5.62622213 1.78135872 1.23893762 -5.59247017 1.78463745 1.29823232 -5.54555225 1.79191947 1.34733903
		 -5.48841619 1.80274844 1.38317227 -5.42465258 1.81644392 1.40348053 -5.35826778 1.8321445 1.40698791
		 -5.29343224 1.84886432 1.39347374 -5.2342205 1.8655529 1.36378741 -5.18435335 1.88116097 1.31979394
		 -5.14696312 1.8947084 1.26425779 -5.12440014 1.90534401 1.20066869 -5.11808205 1.91239882 1.13302159
		 -5.12840509 1.91543078 1.06556797 -5.15472126 1.91424799 1.0025451183 -5.1953764 1.90892577 0.94791365
		 -5.24781704 1.89979792 0.90510607 -5.30874729 1.88743854 0.87681222 -5.3743391 1.87262368 0.86480975
		 -5.39799452 1.66556215 0.83766985 -5.46453667 1.64768887 0.86084366 -5.52307177 1.63049889 0.90037131
		 -5.56992245 1.61507249 0.95376968 -5.60214424 1.60237861 1.017683029 -5.6177125 1.59321475 1.088095784
		 -5.61565018 1.58815718 1.16058362 -5.59608507 1.58752346 1.23059177 -5.5602479 1.59135342 1.29372132
		 -5.51039028 1.59940648 1.34600568 -5.44964457 1.61117649 1.38415968 -5.38182735 1.62592363 1.4057858
		 -5.31120062 1.64272189 1.40952551 -5.24220181 1.66051555 1.39514351 -5.17916584 1.67818642 1.36354351
		 -5.12605476 1.69462442 1.31671119 -5.086204052 1.7087965 1.2575891 -5.062119007 1.71981192 1.18989217
		 -5.055312157 1.72697926 1.11787391 -5.066212177 1.72984743 1.046059847 -5.094133377 1.72823644 0.97896194
		 -5.13732147 1.72224784 0.92079639 -5.19306278 1.71225762 0.87521768 -5.25785494 1.69889355 0.84508991
		 -5.32762718 1.68299532 0.83230639 -5.35526609 1.47464275 0.80645585 -5.42583513 1.45573866 0.83103132
		 -5.48793697 1.43765152 0.87295485 -5.5376687 1.42151773 0.92959189 -5.57190561 1.40835071 0.99738407
		 -5.58849716 1.39897835 1.072071314 -5.58640099 1.39398932 1.14896107;
	setAttr ".vt[332:497]" -5.56574726 1.3936969 1.22322202 -5.52783537 1.39811945 1.29018795
		 -5.47504663 1.40697944 1.34565127 -5.41069841 1.41972017 1.38612676 -5.33883333 1.43554056 1.40907168
		 -5.26396751 1.45344746 1.41304398 -5.19080496 1.47231483 1.39779401 -5.12394238 1.49095702 1.36428022
		 -5.067581177 1.50820374 1.31460822 -5.025262833 1.52297068 1.25189924 -4.99964666 1.53432989 1.18009305
		 -4.99234152 1.54156804 1.10370231 -5.0038070679 1.54422975 1.027526379 -5.033322334 1.54214787 0.95635176
		 -5.079032898 1.53545356 0.89465046 -5.13806725 1.5245676 0.84629989 -5.20671511 1.51017332 0.81433773
		 -5.28066349 1.49317575 0.80077219 -5.31228542 1.2835325 0.77621603 -5.38688278 1.26360297 0.80219364
		 -5.4525547 1.24463451 0.84651327 -5.50517416 1.22781861 0.90638995 -5.54143524 1.21421218 0.97806144
		 -5.55905962 1.20467019 1.05702424 -5.5569396 1.19979203 1.13831711 -5.5352087 1.19988418 1.21683192
		 -5.49523258 1.20494092 1.28763521 -5.43952227 1.21464467 1.34627831 -5.37157869 1.22838545 1.38907647
		 -5.29567099 1.24530017 1.41334033 -5.21656895 1.26432586 1.41754568 -5.13924265 1.28426695 1.40142787
		 -5.068550587 1.30387056 1.36599982 -5.0089349747 1.3219049 1.31348765 -4.96414089 1.33723688 1.24719071
		 -4.93698406 1.34890318 1.17127502 -4.92917061 1.35617065 1.09051013 -4.94119072 1.35858262 1.0099716187
		 -4.97228909 1.35598779 0.93471897 -5.020513058 1.34854865 0.86948133 -5.082831383 1.33673322 0.81835747
		 -5.15532875 1.3212837 0.78455997 -5.23344946 1.30317068 0.77021217 -5.26905489 1.092235804 0.74694419
		 -5.347682 1.071286201 0.77432418 -5.41692829 1.051452279 0.82104015 -5.47244167 1.033979893 0.88415694
		 -5.51073551 1.019967318 0.95970845 -5.52940226 1.010294914 1.04294765 -5.52727032 1.0055700541 1.12864423
		 -5.50447273 1.0060902834 1.21141374 -5.4624424 1.011822462 1.28605533 -5.40381956 1.022406459 1.34787893
		 -5.33228874 1.037177205 1.39300013 -5.25234365 1.055206656 1.41858363 -5.16900778 1.075362206 1.42302203
		 -5.087517738 1.096377015 1.40603638 -5.012993336 1.11693084 1.36869395 -4.95011759 1.13573229 1.31334114
		 -4.90284109 1.15159976 1.24345589 -4.87413406 1.16353643 1.1634295 -4.86580133 1.17079222 1.078290224
		 -4.87836552 1.17291105 0.99338782 -4.91103697 1.16976023 0.91405678 -4.96176338 1.16153729 0.84528184
		 -5.027357578 1.14875913 0.79138422 -5.10369778 1.13222861 0.75575089 -5.185987 1.11298442 0.74062085
		 -5.22557449 0.90075755 0.71864605 -5.30823278 0.87879336 0.74742794 -5.38105726 0.85811007 0.79654074
		 -5.43947172 0.84000683 0.86289763 -5.47980595 0.82562149 0.94232965 -5.49952602 0.81585765 1.029845476
		 -5.49739265 0.81132913 1.1199466 -5.47353935 0.81232023 1.20697117 -5.42946529 0.81876886 1.28545141
		 -5.36793995 0.83026969 1.350456 -5.29282904 0.84610009 1.39790046 -5.20885181 0.86526537 1.42480373
		 -5.12128496 0.88656139 1.42947543 -5.03563118 0.90864992 1.41162181 -4.95727205 0.93014336 1.372365
		 -4.89113092 0.94969082 1.31417131 -4.84136391 0.9660641 1.24069738 -4.8110981 0.97823465 1.15656006
		 -4.80223513 0.98543763 1.067045689 -4.81533194 0.98722029 0.97777903 -4.84956551 0.98347092 0.89436901
		 -4.90278482 0.97442496 0.82205629 -4.97164631 0.96065068 0.76538491 -5.051822186 0.94301379 0.72791553
		 -5.1382761 0.9226222 0.71200275 -5.18184471 0.70910299 0.69132614 -5.26853561 0.68612957 0.72151065
		 -5.34494209 0.66461265 0.77301979 -5.40626431 0.64590406 0.84261703 -5.44864845 0.63117933 0.92592955
		 -5.46943092 0.62136352 1.017722368 -5.46730709 0.61707342 1.11222768 -5.44240904 0.61857903 1.20350766
		 -5.39630222 0.62578535 1.28582668 -5.33188343 0.63823938 1.35401237 -5.25320005 0.65515912 1.40378022
		 -5.16519642 0.6754812 1.43200338 -5.073401451 0.69792843 1.43690836 -4.98358393 0.72109079 1.4181869
		 -4.90138674 0.74351287 1.37701559 -4.83197498 0.76378548 1.31598091 -4.77970982 0.780635 1.2389183
		 -4.74787569 0.79300284 1.15066981 -4.73847198 0.80011165 1.056780219 -4.75209045 0.80151498 0.96314943
		 -4.78787518 0.79712451 0.87565994 -4.84357738 0.78721619 0.79980969 -4.9156971 0.77241254 0.74036407
		 -4.99970341 0.75364363 0.70105863 -5.090316772 0.73208904 0.68436289 -5.13786697 0.51727664 0.66498232
		 -5.22859192 0.4932996 0.69656897 -5.30858564 0.47096515 0.75047445 -5.37282181 0.45167649 0.82331228
		 -5.41726351 0.43664551 0.91050506 -5.43911934 0.42681682 1.0065746307 -5.43701553 0.42280817 1.10548425
		 -5.41108465 0.42487109 1.20101953 -5.36295557 0.43287623 1.28717709 -5.29565239 0.44632035 1.35854363
		 -5.21340418 0.46435893 1.41063476 -5.1213789 0.48585856 1.44017768 -5.025359154 0.50946808 1.44531584
		 -4.93137789 0.53370416 1.42572665 -4.84534025 0.55704403 1.3826406 -4.77265263 0.57802093 1.31876516
		 -4.7178812 0.59531724 1.238114 -4.68446922 0.60784566 1.14575458 -4.67451429 0.61481917 1.047490001
		 -4.68864346 0.6157999 0.94949508 -4.72596788 0.61072576 0.85792661 -4.78414249 0.59991598 0.7785387
		 -4.85951233 0.58404958 0.71631908 -4.94734192 0.56412339 0.67517757 -5.042111397 0.54138958 0.65769935
		 -5.093643665 0.32528371 0.6396122 -5.18840408 0.30030829 0.67260122 -5.27198792 0.27717221 0.72890306
		 -5.33914471 0.25732887 0.80498075 -5.3856535 0.24202532 0.89605355 -5.4085927 0.23222303 0.99639928
		 -5.40652037 0.22853804 1.099712729 -5.37956715 0.23120165 1.19950247 -5.32942677 0.24004674 1.28949809
		 -5.25924873 0.2545175 1.36404514 -5.17344379 0.27370453 1.4184593 -5.077403069 0.29640239 1.44932151
		 -4.97716045 0.32118487 1.45469308 -4.87901545 0.34649473 1.43423581 -4.7891345 0.37074167 1.3892355
		 -4.71316528 0.39240217 1.32251966 -4.65588093 0.4101153 1.23828006 -4.6208806 0.42276806 1.14181018
		 -4.61036444 0.42956519 1.0391711 -4.62499237 0.43008006 0.93681264 -4.66384554 0.42427981 0.84116554
		 -4.72448301 0.41252929 0.75824046 -4.80309439 0.39556664 0.69324732;
	setAttr ".vt[498:663]" -4.8947401 0.37445772 0.65026999 -4.99366188 0.35052884 0.63200927
		 -5.049172878 0.13312966 0.61522865 -5.1479702 0.10716146 0.64961958 -5.23514938 0.083239555 0.70831776
		 -5.305233 0.062867105 0.78763485 -5.35381746 0.047324181 0.88258672 -5.37785006 0.037587285 0.98720789
		 -5.37582064 0.034268498 1.094924212 -5.34785652 0.037576079 1.1989677 -5.29571533 0.047302365 1.29280066
		 -5.22267246 0.062836111 1.37052739 -5.13331842 0.083201289 1.42726386 -5.033267021 0.10711837 1.45944524
		 -4.92880487 0.13308448 1.46504951 -4.82649612 0.15946805 1.44372451 -4.73276901 0.18461138 1.39681005
		 -4.65351248 0.20693457 1.32725406 -4.59370708 0.22503507 1.23942685 -4.55710983 0.23777539 1.13884699
		 -4.54602098 0.24435508 1.031834483 -4.56113672 0.2443608 0.9251132 -4.60150814 0.23779202 0.82538867
		 -4.66459751 0.22506166 0.73892689 -4.74644089 0.2069695 0.67116117 -4.84189653 0.18465239 0.62634873
		 -4.94496632 0.15951252 0.60730577 -5.0044584274 -0.059181303 0.59182167 -5.10729361 -0.086136997 0.6276145
		 -5.19807196 -0.1108287 0.68870807 -5.27108955 -0.13170484 0.77126384 -5.32175827 -0.14745378 0.8700943
		 -5.34689474 -0.15708607 0.97898984 -5.3449192 -0.15999624 1.091107965 -5.31595612 -0.15600154 1.19940388
		 -5.26182461 -0.14535296 1.29707301 -5.18592644 -0.12871966 1.37797844 -5.09303093 -0.10714668 1.43703651
		 -4.98897457 -0.081989586 1.47053647 -4.88029623 -0.054829001 1.4763732 -4.77382374 -0.027371645 1.45418036
		 -4.67624712 -0.0013427138 1.405352 -4.5936985 0.0216223 1.33295655 -4.53136349 0.040080428 1.24154234
		 -4.49315977 0.052871883 1.13685393 -4.48148727 0.059192836 1.025468707 -4.49707985 0.058646321 0.91438591
		 -4.5389576 0.051266491 0.81058502 -4.60448885 0.03751719 0.72058797 -4.68955612 0.018262208 0.65004992
		 -4.78881502 -0.0052886605 0.60340309 -4.89602804 -0.031655371 0.58357859 -4.95949936 -0.2516436 0.56939983
		 -5.066374302 -0.27958134 0.60659456 -5.16075611 -0.30502689 0.67008328 -5.23671436 -0.32638144 0.75587678
		 -5.28947639 -0.34230313 0.85858464 -5.31572676 -0.35179159 0.971753 -5.31381607 -0.35425061 1.08827126
		 -5.28386497 -0.34952572 1.20081818 -5.22775459 -0.33791375 1.30232203 -5.14901114 -0.32014433 1.38640487
		 -5.052581787 -0.29733402 1.44778347 -4.9445262 -0.27091601 1.48260105 -4.83163357 -0.24255034 1.48867011
		 -4.72099733 -0.21401924 1.46560931 -4.6195693 -0.1871154 1.41486764 -4.5337224 -0.16352943 1.33963323
		 -4.46885061 -0.14474317 1.24463344 -4.42903042 -0.13193715 1.13583732 -4.41676378 -0.12591588 1.020081162
		 -4.43282127 -0.12705785 0.90463841 -4.4761939 -0.13529119 0.79676247 -4.54415703 -0.15009865 0.70323181
		 -4.63243914 -0.17054981 0.62992287 -4.73549461 -0.19535959 0.58144236 -4.84684658 -0.22296914 0.56083655
		 -4.91429806 -0.44425291 0.54795766 -5.025214195 -0.4731673 0.58655381 -5.12320328 -0.49935082 0.65243673
		 -5.20210934 -0.52115828 0.74146724 -5.25697327 -0.53721941 0.84805083 -5.28434849 -0.546525 0.96549046
		 -5.28251457 -0.54849046 1.086407065 -5.25158691 -0.54299217 1.2032032 -5.19350863 -0.53037572 1.30853987
		 -5.11192894 -0.51143372 1.39579868 -5.011974335 -0.48735648 1.45949626 -4.89992476 -0.4596568 1.49563086
		 -4.7828207 -0.43007517 1.50193167 -4.6680212 -0.40047032 1.47800303 -4.56273794 -0.37270242 1.42534828
		 -4.47358751 -0.34851623 1.34727597 -4.40617085 -0.32943144 1.24869168 -4.36472464 -0.31664726 1.13578963
		 -4.35185242 -0.31096691 1.015664101 -4.36836338 -0.31274739 0.89586329 -4.41322041 -0.32187673 0.78391409
		 -4.48360443 -0.3377814 0.68685102 -4.57509279 -0.35946196 0.61077309 -4.68193769 -0.38555622 0.56046009
		 -4.79742479 -0.41442454 0.53907371 -4.86885405 -0.6370033 0.52750754 -4.98381233 -0.66688889 0.56750488
		 -5.085413933 -0.69379449 0.63578153 -5.16727352 -0.71602947 0.72804713 -5.22424889 -0.73219675 0.83850479
		 -5.25275898 -0.74128044 0.96021366 -5.2510128 -0.74270988 1.085526705 -5.21912003 -0.73639518 1.20656967
		 -5.15908527 -0.72273314 1.31573725 -5.074679375 -0.70258212 1.40616989 -4.97120714 -0.67720836 1.47218525
		 -4.8551693 -0.64820617 1.50963557 -4.73385715 -0.6173979 1.51616776 -4.61489344 -0.58671927 1.49137115
		 -4.50575304 -0.55809802 1.43680382 -4.41329336 -0.53333247 1.3558948 -4.34332418 -0.51397872 1.25372744
		 -4.30024147 -0.50125283 1.13672137 -4.28675318 -0.49595451 1.012228608 -4.30370617 -0.49841657 0.88807201
		 -4.35003567 -0.50848436 0.77205181 -4.4228301 -0.52552527 0.67145872 -4.51751566 -0.54846859 0.59261274
		 -4.62814331 -0.5758726 0.54046869 -4.74776173 -0.60601556 0.51830292 -6.24335766 4.071709633 0.37917709
		 -6.26167917 4.06663084 0.38555384 -6.2260499 3.87729263 0.34423351 -6.20371723 3.88346815 0.33646011
		 -6.35160303 3.39730692 2.24085045 -6.32728434 3.40100193 2.25588083 -6.29014111 3.20860314 2.24803114
		 -6.31813526 3.20423365 2.23069954 -4.63038731 3.52966976 1.14255166 -4.63637686 3.5326333 1.10555029
		 -4.57569838 3.34742689 1.079242706 -4.56905842 3.34432364 1.12058485 -6.43165588 2.57126045 0.40138674
		 -6.46419382 2.5597527 0.43860769 -6.43315268 2.36699438 0.40959835 -6.39776421 2.3793366 0.36914492
		 -5.55930614 2.18862295 2.38351703 -5.50141239 2.20216107 2.38656139 -5.45468235 2.012457132 2.3871336
		 -5.51682329 1.99784279 2.3838582 -4.42174673 2.22595668 0.42645884 -4.46240234 2.22063446 0.3718276
		 -4.40434647 2.033956766 0.34470987 -4.36115885 2.039945602 0.40287542 -6.48917341 1.085980773 0.75082135
		 -6.50679779 1.076438785 0.82978415 -6.47714043 0.88206315 0.81570745 -6.45847321 0.89173603 0.73246837
		 -4.63161087 1.051702261 2.29626441 -4.55325174 1.073195577 2.2570076 -4.49736643 0.88656497 2.26165819
		 -4.57956362 0.86414313 2.3028295 -4.49398708 0.80186272 -0.16981721 -4.58181667 0.78193665 -0.21095896
		 -4.52921486 0.59227097 -0.23586631 -4.43756866 0.61337984 -0.19288898 -6.28151417 -0.31356552 1.34702873
		 -6.2525506 -0.30957088 1.45532465 -6.22045994 -0.50309503 1.45673895;
	setAttr ".vt[664:708]" -6.25041103 -0.50782001 1.34419215 -3.71928287 -0.076028347 1.91566324
		 -3.65186644 -0.056943566 1.81707895 -3.58901954 -0.24149081 1.82211471 -3.65898848 -0.26084456 1.92428207
		 -7.14135075 4.20018816 1.37528217 -7.1204586 4.21537399 1.38808525 -7.068770409 4.059179306 1.49480939
		 -7.092805386 4.041586876 1.48011267 -4.39722586 4.15078974 0.21575713 -4.39750051 4.14125061 0.19070363
		 -4.32122326 3.97606277 0.26399922 -4.32087278 3.9875679 0.2932415 -6.92211246 2.64364195 -0.20476484
		 -6.9571085 2.63686895 -0.17347813 -6.91661167 2.44525599 -0.15570521 -6.87874937 2.45231915 -0.19082165
		 -6.071839809 3.55680943 2.31844378 -6.016562462 3.57888794 2.31950402 -5.95717621 3.43106508 2.4326117
		 -6.016501427 3.40729403 2.43151426 -4.093205929 2.66309929 -0.0076885223 -4.12830257 2.63968658 -0.058033228
		 -4.058850288 2.4581604 -0.024099588 -4.021269798 2.48398185 0.031701565 -7.078502655 1.26920581 0.70135164
		 -7.10168648 1.28319001 0.78274965 -7.061364651 1.09555006 0.82816935 -7.037209988 1.079754353 0.73974705
		 -4.80706406 2.80754447 2.92576981 -4.72467709 2.81622934 2.88998985 -4.6572628 2.67463732 3.0056734085
		 -4.7436924 2.66562414 3.043128252 -4.27227926 1.018938541 -0.49494457 -4.35958052 0.98764455 -0.5476172
		 -4.30156469 0.79734337 -0.5473361 -4.21006107 0.83048189 -0.49015641 -6.86370182 0.34738767 2.18552494
		 -6.84739399 0.41803026 2.31555915 -6.8031888 0.24999368 2.40662909 -6.82022429 0.17409992 2.26799536
		 -3.53962564 1.81375027 3.18578839 -3.45713758 1.78614998 3.10175276 -3.38311219 1.64759636 3.21732092
		 -3.46872973 1.67653179 3.30415845;
	setAttr -s 1393 ".ed";
	setAttr ".ed[0:165]"  0 1 1 1 2 1 2 3 1 3 4 1 4 5 1 5 6 1 6 7 1 7 8 1 8 9 1
		 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 16 1 16 17 1 17 18 1 18 19 1 19 20 1
		 20 21 1 21 22 1 22 23 1 23 24 1 24 0 1 624 623 1 623 622 1 622 621 1 621 620 1 620 619 1
		 619 618 1 618 617 1 617 616 1 616 615 1 615 614 1 614 613 1 613 612 1 612 611 1 611 610 1
		 610 609 1 609 608 1 608 607 1 607 606 1 606 605 1 605 604 1 604 603 1 603 602 1 602 601 1
		 601 600 1 600 624 1 26 27 1 27 2 1 1 26 1 27 28 1 28 3 1 28 29 1 29 4 1 29 30 1 30 5 1
		 30 31 1 31 6 1 31 32 1 32 7 1 32 33 1 33 8 1 33 34 1 34 9 1 34 35 1 35 10 1 35 36 1
		 36 11 1 36 37 1 37 12 1 37 38 1 38 13 1 38 39 1 39 14 1 39 40 1 40 15 1 40 41 1 41 16 1
		 41 42 1 42 17 1 42 43 1 43 18 1 43 44 1 44 19 1 44 45 1 45 20 1 45 46 1 46 21 1 46 47 1
		 47 22 1 47 48 1 48 23 1 48 49 1 49 24 1 49 25 1 25 0 1 50 51 1 51 26 1 26 25 1 25 50 1
		 51 52 1 52 27 1 52 53 1 53 28 1 53 54 1 54 29 1 54 55 1 55 30 1 55 56 1 56 31 1 56 57 1
		 57 32 1 57 58 1 58 33 1 58 59 1 59 34 1 59 60 1 60 35 1 60 61 1 61 36 1 61 62 1 62 37 1
		 62 63 1 63 38 1 63 64 1 64 39 1 64 65 1 65 40 1 65 66 1 66 41 1 66 67 1 67 42 1 67 68 1
		 68 43 1 68 69 1 69 44 1 69 70 1 70 45 1 70 71 1 71 46 1 71 72 1 72 47 1 72 73 1 73 48 1
		 73 74 1 74 49 1 74 50 1 75 76 1 76 51 1 50 75 1 76 77 1 77 52 1 77 78 1 78 53 1 78 79 1
		 79 54 1 79 80 1 80 55 1 80 81 1 81 56 1 81 82 1 82 57 1 82 83 1;
	setAttr ".ed[166:331]" 83 58 1 83 84 1 84 59 1 85 86 1 86 61 1 60 85 1 86 87 1
		 87 62 1 87 88 1 88 63 1 88 89 1 89 64 1 89 90 1 90 65 1 90 91 1 91 66 1 91 92 1 92 67 1
		 92 93 1 93 68 1 93 94 1 94 69 1 94 95 1 95 70 1 95 96 1 96 71 1 96 97 1 97 72 1 97 98 1
		 98 73 1 98 99 1 99 74 1 99 75 1 100 101 1 101 76 1 75 100 1 101 102 1 102 77 1 102 103 1
		 103 78 1 103 104 1 104 79 1 104 105 1 105 80 1 105 106 1 106 81 1 106 107 1 107 82 1
		 107 108 1 108 83 1 108 109 1 109 84 1 109 110 1 110 85 1 85 84 1 110 111 1 111 86 1
		 111 112 1 112 87 1 112 113 1 113 88 1 113 114 1 114 89 1 114 115 1 115 90 1 115 116 1
		 116 91 1 116 117 1 117 92 1 117 118 1 118 93 1 118 119 1 119 94 1 119 120 1 120 95 1
		 120 121 1 121 96 1 121 122 1 122 97 1 122 123 1 123 98 1 123 124 1 124 99 1 124 100 1
		 125 126 1 126 101 1 100 125 1 126 127 1 127 102 1 127 128 1 128 103 1 128 129 1 129 104 1
		 129 130 1 130 105 1 130 131 1 131 106 1 131 132 1 132 107 1 132 133 1 133 108 1 133 134 1
		 134 109 1 134 135 1 135 110 1 135 136 1 136 111 1 136 137 1 137 112 1 137 138 1 138 113 1
		 138 139 1 139 114 1 139 140 1 140 115 1 140 141 1 141 116 1 141 142 1 142 117 1 142 143 1
		 143 118 1 144 145 1 145 120 1 119 144 1 145 146 1 146 121 1 146 147 1 147 122 1 147 148 1
		 148 123 1 148 149 1 149 124 1 149 125 1 150 151 1 151 126 1 125 150 1 151 152 1 152 127 1
		 152 153 1 153 128 1 153 154 1 154 129 1 154 155 1 155 130 1 155 156 1 156 131 1 156 157 1
		 157 132 1 157 158 1 158 133 1 158 159 1 159 134 1 159 160 1 160 135 1 160 161 1 161 136 1
		 161 162 1 162 137 1 162 163 1 163 138 1 163 164 1 164 139 1 164 165 1 165 140 1 165 166 1
		 166 141 1;
	setAttr ".ed[332:497]" 166 167 1 167 142 1 167 168 1 168 143 1 168 169 1 169 144 1
		 144 143 1 169 170 1 170 145 1 170 171 1 171 146 1 171 172 1 172 147 1 172 173 1 173 148 1
		 173 174 1 174 149 1 174 150 1 175 176 1 176 151 1 150 175 1 176 177 1 177 152 1 177 178 1
		 178 153 1 178 179 1 179 154 1 179 180 1 180 155 1 180 181 1 181 156 1 181 182 1 182 157 1
		 182 183 1 183 158 1 183 184 1 184 159 1 184 185 1 185 160 1 185 186 1 186 161 1 186 187 1
		 187 162 1 187 188 1 188 163 1 188 189 1 189 164 1 189 190 1 190 165 1 190 191 1 191 166 1
		 191 192 1 192 167 1 192 193 1 193 168 1 193 194 1 194 169 1 194 195 1 195 170 1 195 196 1
		 196 171 1 196 197 1 197 172 1 197 198 1 198 173 1 198 199 1 199 174 1 199 175 1 200 201 1
		 201 176 1 175 200 1 201 202 1 202 177 1 203 204 1 204 179 1 178 203 1 204 205 1 205 180 1
		 205 206 1 206 181 1 206 207 1 207 182 1 207 208 1 208 183 1 208 209 1 209 184 1 209 210 1
		 210 185 1 210 211 1 211 186 1 211 212 1 212 187 1 212 213 1 213 188 1 213 214 1 214 189 1
		 214 215 1 215 190 1 215 216 1 216 191 1 216 217 1 217 192 1 217 218 1 218 193 1 218 219 1
		 219 194 1 219 220 1 220 195 1 220 221 1 221 196 1 221 222 1 222 197 1 222 223 1 223 198 1
		 223 224 1 224 199 1 224 200 1 225 226 1 226 201 1 200 225 1 226 227 1 227 202 1 227 228 1
		 228 203 1 203 202 1 228 229 1 229 204 1 229 230 1 230 205 1 230 231 1 231 206 1 231 232 1
		 232 207 1 232 233 1 233 208 1 233 234 1 234 209 1 234 235 1 235 210 1 235 236 1 236 211 1
		 236 237 1 237 212 1 237 238 1 238 213 1 238 239 1 239 214 1 239 240 1 240 215 1 240 241 1
		 241 216 1 241 242 1 242 217 1 242 243 1 243 218 1 243 244 1 244 219 1 244 245 1 245 220 1
		 245 246 1 246 221 1 246 247 1 247 222 1 247 248 1 248 223 1 248 249 1;
	setAttr ".ed[498:663]" 249 224 1 249 225 1 250 251 1 251 226 1 225 250 1 251 252 1
		 252 227 1 252 253 1 253 228 1 253 254 1 254 229 1 254 255 1 255 230 1 255 256 1 256 231 1
		 256 257 1 257 232 1 257 258 1 258 233 1 258 259 1 259 234 1 259 260 1 260 235 1 260 261 1
		 261 236 1 262 263 1 263 238 1 237 262 1 263 264 1 264 239 1 264 265 1 265 240 1 265 266 1
		 266 241 1 266 267 1 267 242 1 267 268 1 268 243 1 268 269 1 269 244 1 269 270 1 270 245 1
		 270 271 1 271 246 1 271 272 1 272 247 1 272 273 1 273 248 1 273 274 1 274 249 1 274 250 1
		 275 276 1 276 251 1 250 275 1 276 277 1 277 252 1 277 278 1 278 253 1 278 279 1 279 254 1
		 279 280 1 280 255 1 280 281 1 281 256 1 281 282 1 282 257 1 282 283 1 283 258 1 283 284 1
		 284 259 1 284 285 1 285 260 1 285 286 1 286 261 1 286 287 1 287 262 1 262 261 1 287 288 1
		 288 263 1 288 289 1 289 264 1 289 290 1 290 265 1 290 291 1 291 266 1 291 292 1 292 267 1
		 292 293 1 293 268 1 293 294 1 294 269 1 294 295 1 295 270 1 295 296 1 296 271 1 296 297 1
		 297 272 1 297 298 1 298 273 1 298 299 1 299 274 1 299 275 1 300 301 1 301 276 1 275 300 1
		 301 302 1 302 277 1 302 303 1 303 278 1 303 304 1 304 279 1 304 305 1 305 280 1 305 306 1
		 306 281 1 306 307 1 307 282 1 307 308 1 308 283 1 308 309 1 309 284 1 309 310 1 310 285 1
		 310 311 1 311 286 1 311 312 1 312 287 1 312 313 1 313 288 1 313 314 1 314 289 1 314 315 1
		 315 290 1 315 316 1 316 291 1 316 317 1 317 292 1 317 318 1 318 293 1 318 319 1 319 294 1
		 319 320 1 320 295 1 321 322 1 322 297 1 296 321 1 322 323 1 323 298 1 323 324 1 324 299 1
		 324 300 1 325 326 1 326 301 1 300 325 1 326 327 1 327 302 1 327 328 1 328 303 1 328 329 1
		 329 304 1 329 330 1 330 305 1 330 331 1 331 306 1 331 332 1 332 307 1;
	setAttr ".ed[664:829]" 332 333 1 333 308 1 333 334 1 334 309 1 334 335 1 335 310 1
		 335 336 1 336 311 1 336 337 1 337 312 1 337 338 1 338 313 1 338 339 1 339 314 1 339 340 1
		 340 315 1 340 341 1 341 316 1 341 342 1 342 317 1 342 343 1 343 318 1 343 344 1 344 319 1
		 344 345 1 345 320 1 345 346 1 346 321 1 321 320 1 346 347 1 347 322 1 347 348 1 348 323 1
		 348 349 1 349 324 1 349 325 1 350 351 1 351 326 1 325 350 1 351 352 1 352 327 1 352 353 1
		 353 328 1 353 354 1 354 329 1 354 355 1 355 330 1 355 356 1 356 331 1 356 357 1 357 332 1
		 357 358 1 358 333 1 358 359 1 359 334 1 359 360 1 360 335 1 360 361 1 361 336 1 361 362 1
		 362 337 1 362 363 1 363 338 1 363 364 1 364 339 1 364 365 1 365 340 1 365 366 1 366 341 1
		 366 367 1 367 342 1 367 368 1 368 343 1 368 369 1 369 344 1 369 370 1 370 345 1 370 371 1
		 371 346 1 371 372 1 372 347 1 372 373 1 373 348 1 373 374 1 374 349 1 374 350 1 375 376 1
		 376 351 1 350 375 1 376 377 1 377 352 1 377 378 1 378 353 1 378 379 1 379 354 1 380 381 1
		 381 356 1 355 380 1 381 382 1 382 357 1 382 383 1 383 358 1 383 384 1 384 359 1 384 385 1
		 385 360 1 385 386 1 386 361 1 386 387 1 387 362 1 387 388 1 388 363 1 388 389 1 389 364 1
		 389 390 1 390 365 1 390 391 1 391 366 1 391 392 1 392 367 1 392 393 1 393 368 1 393 394 1
		 394 369 1 394 395 1 395 370 1 395 396 1 396 371 1 396 397 1 397 372 1 397 398 1 398 373 1
		 398 399 1 399 374 1 399 375 1 400 401 1 401 376 1 375 400 1 401 402 1 402 377 1 402 403 1
		 403 378 1 403 404 1 404 379 1 404 405 1 405 380 1 380 379 1 405 406 1 406 381 1 406 407 1
		 407 382 1 407 408 1 408 383 1 408 409 1 409 384 1 409 410 1 410 385 1 410 411 1 411 386 1
		 411 412 1 412 387 1 412 413 1 413 388 1 413 414 1 414 389 1 414 415 1;
	setAttr ".ed[830:995]" 415 390 1 415 416 1 416 391 1 416 417 1 417 392 1 417 418 1
		 418 393 1 418 419 1 419 394 1 419 420 1 420 395 1 420 421 1 421 396 1 421 422 1 422 397 1
		 422 423 1 423 398 1 423 424 1 424 399 1 424 400 1 425 426 1 426 401 1 400 425 1 426 427 1
		 427 402 1 427 428 1 428 403 1 428 429 1 429 404 1 429 430 1 430 405 1 430 431 1 431 406 1
		 431 432 1 432 407 1 432 433 1 433 408 1 433 434 1 434 409 1 434 435 1 435 410 1 435 436 1
		 436 411 1 436 437 1 437 412 1 437 438 1 438 413 1 439 440 1 440 415 1 414 439 1 440 441 1
		 441 416 1 441 442 1 442 417 1 442 443 1 443 418 1 443 444 1 444 419 1 444 445 1 445 420 1
		 445 446 1 446 421 1 446 447 1 447 422 1 447 448 1 448 423 1 448 449 1 449 424 1 449 425 1
		 450 451 1 451 426 1 425 450 1 451 452 1 452 427 1 452 453 1 453 428 1 453 454 1 454 429 1
		 454 455 1 455 430 1 455 456 1 456 431 1 456 457 1 457 432 1 457 458 1 458 433 1 458 459 1
		 459 434 1 459 460 1 460 435 1 460 461 1 461 436 1 461 462 1 462 437 1 462 463 1 463 438 1
		 463 464 1 464 439 1 439 438 1 464 465 1 465 440 1 465 466 1 466 441 1 466 467 1 467 442 1
		 467 468 1 468 443 1 468 469 1 469 444 1 469 470 1 470 445 1 470 471 1 471 446 1 471 472 1
		 472 447 1 472 473 1 473 448 1 473 474 1 474 449 1 474 450 1 475 476 1 476 451 1 450 475 1
		 476 477 1 477 452 1 477 478 1 478 453 1 478 479 1 479 454 1 479 480 1 480 455 1 480 481 1
		 481 456 1 481 482 1 482 457 1 482 483 1 483 458 1 483 484 1 484 459 1 484 485 1 485 460 1
		 485 486 1 486 461 1 486 487 1 487 462 1 487 488 1 488 463 1 488 489 1 489 464 1 489 490 1
		 490 465 1 490 491 1 491 466 1 491 492 1 492 467 1 492 493 1 493 468 1 493 494 1 494 469 1
		 494 495 1 495 470 1 495 496 1 496 471 1 496 497 1 497 472 1 498 499 1;
	setAttr ".ed[996:1161]" 499 474 1 473 498 1 499 475 1 500 501 1 501 476 1 475 500 1
		 501 502 1 502 477 1 502 503 1 503 478 1 503 504 1 504 479 1 504 505 1 505 480 1 505 506 1
		 506 481 1 506 507 1 507 482 1 507 508 1 508 483 1 508 509 1 509 484 1 509 510 1 510 485 1
		 510 511 1 511 486 1 511 512 1 512 487 1 512 513 1 513 488 1 513 514 1 514 489 1 514 515 1
		 515 490 1 515 516 1 516 491 1 516 517 1 517 492 1 517 518 1 518 493 1 518 519 1 519 494 1
		 519 520 1 520 495 1 520 521 1 521 496 1 521 522 1 522 497 1 522 523 1 523 498 1 498 497 1
		 523 524 1 524 499 1 524 500 1 525 526 1 526 501 1 500 525 1 526 527 1 527 502 1 527 528 1
		 528 503 1 528 529 1 529 504 1 529 530 1 530 505 1 530 531 1 531 506 1 531 532 1 532 507 1
		 532 533 1 533 508 1 533 534 1 534 509 1 534 535 1 535 510 1 535 536 1 536 511 1 536 537 1
		 537 512 1 537 538 1 538 513 1 538 539 1 539 514 1 539 540 1 540 515 1 540 541 1 541 516 1
		 541 542 1 542 517 1 542 543 1 543 518 1 543 544 1 544 519 1 544 545 1 545 520 1 545 546 1
		 546 521 1 546 547 1 547 522 1 547 548 1 548 523 1 548 549 1 549 524 1 549 525 1 550 551 1
		 551 526 1 525 550 1 551 552 1 552 527 1 552 553 1 553 528 1 553 554 1 554 529 1 554 555 1
		 555 530 1 555 556 1 556 531 1 557 558 1 558 533 1 532 557 1 558 559 1 559 534 1 559 560 1
		 560 535 1 560 561 1 561 536 1 561 562 1 562 537 1 562 563 1 563 538 1 563 564 1 564 539 1
		 564 565 1 565 540 1 565 566 1 566 541 1 566 567 1 567 542 1 567 568 1 568 543 1 568 569 1
		 569 544 1 569 570 1 570 545 1 570 571 1 571 546 1 571 572 1 572 547 1 572 573 1 573 548 1
		 573 574 1 574 549 1 574 550 1 575 576 1 576 551 1 550 575 1 576 577 1 577 552 1 577 578 1
		 578 553 1 578 579 1 579 554 1 579 580 1 580 555 1 580 581 1 581 556 1;
	setAttr ".ed[1162:1327]" 581 582 1 582 557 1 557 556 1 582 583 1 583 558 1 583 584 1
		 584 559 1 584 585 1 585 560 1 585 586 1 586 561 1 586 587 1 587 562 1 587 588 1 588 563 1
		 588 589 1 589 564 1 589 590 1 590 565 1 590 591 1 591 566 1 591 592 1 592 567 1 592 593 1
		 593 568 1 593 594 1 594 569 1 594 595 1 595 570 1 595 596 1 596 571 1 596 597 1 597 572 1
		 597 598 1 598 573 1 598 599 1 599 574 1 599 575 1 601 576 1 575 600 1 602 577 1 603 578 1
		 604 579 1 605 580 1 606 581 1 607 582 1 608 583 1 609 584 1 610 585 1 611 586 1 612 587 1
		 613 588 1 614 589 1 615 590 1 617 592 1 591 616 1 618 593 1 619 594 1 620 595 1 621 596 1
		 622 597 1 623 598 1 624 599 1 628 627 1 627 626 1 626 625 1 625 628 1 626 1 1 0 625 1
		 627 26 1 628 25 1 629 630 1 630 60 1 59 629 1 630 631 1 631 85 1 631 632 1 632 84 1
		 632 629 1 633 634 1 634 119 1 118 633 1 634 635 1 635 144 1 635 636 1 636 143 1 636 633 1
		 637 638 1 638 178 1 177 637 1 638 639 1 639 203 1 639 640 1 640 202 1 640 637 1 641 642 1
		 642 237 1 236 641 1 642 643 1 643 262 1 643 644 1 644 261 1 644 641 1 645 646 1 646 296 1
		 295 645 1 646 647 1 647 321 1 647 648 1 648 320 1 648 645 1 649 650 1 650 355 1 354 649 1
		 650 651 1 651 380 1 651 652 1 652 379 1 652 649 1 653 654 1 654 414 1 413 653 1 654 655 1
		 655 439 1 655 656 1 656 438 1 656 653 1 657 658 1 658 473 1 472 657 1 658 659 1 659 498 1
		 659 660 1 660 497 1 660 657 1 661 662 1 662 532 1 531 661 1 662 663 1 663 557 1 663 664 1
		 664 556 1 664 661 1 665 666 1 666 591 1 590 665 1 666 667 1 667 616 1 667 668 1 668 615 1
		 668 665 1 672 671 1 671 670 1 670 669 1 669 672 1 676 675 1 675 674 1 674 673 1 673 676 1
		 680 679 1 679 678 1 678 677 1 677 680 1 684 683 1 683 682 1 682 681 1;
	setAttr ".ed[1328:1392]" 681 684 1 688 687 1 687 686 1 686 685 1 685 688 1 692 691 1
		 691 690 1 690 689 1 689 692 1 696 695 1 695 694 1 694 693 1 693 696 1 700 699 1 699 698 1
		 698 697 1 697 700 1 704 703 1 703 702 1 702 701 1 701 704 1 708 707 1 707 706 1 706 705 1
		 705 708 1 670 630 1 629 669 1 671 631 1 672 632 1 674 634 1 633 673 1 675 635 1 676 636 1
		 678 638 1 637 677 1 679 639 1 680 640 1 682 642 1 641 681 1 683 643 1 684 644 1 686 646 1
		 645 685 1 687 647 1 688 648 1 690 650 1 649 689 1 691 651 1 692 652 1 694 654 1 653 693 1
		 695 655 1 696 656 1 698 658 1 657 697 1 699 659 1 700 660 1 702 662 1 661 701 1 703 663 1
		 704 664 1 706 666 1 665 705 1 707 667 1 708 668 1;
	setAttr -s 686 -ch 2786 ".fc";
	setAttr ".fc[0:499]" -type "polyFaces" 
		f 25 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24
		f 25 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49
		f 4 50 51 -2 52
		f 4 53 54 -3 -52
		f 4 55 56 -4 -55
		f 4 57 58 -5 -57
		f 4 59 60 -6 -59
		f 4 61 62 -7 -61
		f 4 63 64 -8 -63
		f 4 65 66 -9 -65
		f 4 67 68 -10 -67
		f 4 69 70 -11 -69
		f 4 71 72 -12 -71
		f 4 73 74 -13 -73
		f 4 75 76 -14 -75
		f 4 77 78 -15 -77
		f 4 79 80 -16 -79
		f 4 81 82 -17 -81
		f 4 83 84 -18 -83
		f 4 85 86 -19 -85
		f 4 87 88 -20 -87
		f 4 89 90 -21 -89
		f 4 91 92 -22 -91
		f 4 93 94 -23 -93
		f 4 95 96 -24 -95
		f 4 97 98 -25 -97
		f 4 99 100 101 102
		f 4 103 104 -51 -101
		f 4 105 106 -54 -105
		f 4 107 108 -56 -107
		f 4 109 110 -58 -109
		f 4 111 112 -60 -111
		f 4 113 114 -62 -113
		f 4 115 116 -64 -115
		f 4 117 118 -66 -117
		f 4 119 120 -68 -119
		f 4 121 122 -70 -121
		f 4 123 124 -72 -123
		f 4 125 126 -74 -125
		f 4 127 128 -76 -127
		f 4 129 130 -78 -129
		f 4 131 132 -80 -131
		f 4 133 134 -82 -133
		f 4 135 136 -84 -135
		f 4 137 138 -86 -137
		f 4 139 140 -88 -139
		f 4 141 142 -90 -141
		f 4 143 144 -92 -143
		f 4 145 146 -94 -145
		f 4 147 148 -96 -147
		f 4 149 -103 -98 -149
		f 4 150 151 -100 152
		f 4 153 154 -104 -152
		f 4 155 156 -106 -155
		f 4 157 158 -108 -157
		f 4 159 160 -110 -159
		f 4 161 162 -112 -161
		f 4 163 164 -114 -163
		f 4 165 166 -116 -165
		f 4 167 168 -118 -167
		f 4 169 170 -122 171
		f 4 172 173 -124 -171
		f 4 174 175 -126 -174
		f 4 176 177 -128 -176
		f 4 178 179 -130 -178
		f 4 180 181 -132 -180
		f 4 182 183 -134 -182
		f 4 184 185 -136 -184
		f 4 186 187 -138 -186
		f 4 188 189 -140 -188
		f 4 190 191 -142 -190
		f 4 192 193 -144 -192
		f 4 194 195 -146 -194
		f 4 196 197 -148 -196
		f 4 198 -153 -150 -198
		f 4 199 200 -151 201
		f 4 202 203 -154 -201
		f 4 204 205 -156 -204
		f 4 206 207 -158 -206
		f 4 208 209 -160 -208
		f 4 210 211 -162 -210
		f 4 212 213 -164 -212
		f 4 214 215 -166 -214
		f 4 216 217 -168 -216
		f 4 218 219 220 -218
		f 4 221 222 -170 -220
		f 4 223 224 -173 -223
		f 4 225 226 -175 -225
		f 4 227 228 -177 -227
		f 4 229 230 -179 -229
		f 4 231 232 -181 -231
		f 4 233 234 -183 -233
		f 4 235 236 -185 -235
		f 4 237 238 -187 -237
		f 4 239 240 -189 -239
		f 4 241 242 -191 -241
		f 4 243 244 -193 -243
		f 4 245 246 -195 -245
		f 4 247 248 -197 -247
		f 4 249 -202 -199 -249
		f 4 250 251 -200 252
		f 4 253 254 -203 -252
		f 4 255 256 -205 -255
		f 4 257 258 -207 -257
		f 4 259 260 -209 -259
		f 4 261 262 -211 -261
		f 4 263 264 -213 -263
		f 4 265 266 -215 -265
		f 4 267 268 -217 -267
		f 4 269 270 -219 -269
		f 4 271 272 -222 -271
		f 4 273 274 -224 -273
		f 4 275 276 -226 -275
		f 4 277 278 -228 -277
		f 4 279 280 -230 -279
		f 4 281 282 -232 -281
		f 4 283 284 -234 -283
		f 4 285 286 -236 -285
		f 4 287 288 -240 289
		f 4 290 291 -242 -289
		f 4 292 293 -244 -292
		f 4 294 295 -246 -294
		f 4 296 297 -248 -296
		f 4 298 -253 -250 -298
		f 4 299 300 -251 301
		f 4 302 303 -254 -301
		f 4 304 305 -256 -304
		f 4 306 307 -258 -306
		f 4 308 309 -260 -308
		f 4 310 311 -262 -310
		f 4 312 313 -264 -312
		f 4 314 315 -266 -314
		f 4 316 317 -268 -316
		f 4 318 319 -270 -318
		f 4 320 321 -272 -320
		f 4 322 323 -274 -322
		f 4 324 325 -276 -324
		f 4 326 327 -278 -326
		f 4 328 329 -280 -328
		f 4 330 331 -282 -330
		f 4 332 333 -284 -332
		f 4 334 335 -286 -334
		f 4 336 337 338 -336
		f 4 339 340 -288 -338
		f 4 341 342 -291 -341
		f 4 343 344 -293 -343
		f 4 345 346 -295 -345
		f 4 347 348 -297 -347
		f 4 349 -302 -299 -349
		f 4 350 351 -300 352
		f 4 353 354 -303 -352
		f 4 355 356 -305 -355
		f 4 357 358 -307 -357
		f 4 359 360 -309 -359
		f 4 361 362 -311 -361
		f 4 363 364 -313 -363
		f 4 365 366 -315 -365
		f 4 367 368 -317 -367
		f 4 369 370 -319 -369
		f 4 371 372 -321 -371
		f 4 373 374 -323 -373
		f 4 375 376 -325 -375
		f 4 377 378 -327 -377
		f 4 379 380 -329 -379
		f 4 381 382 -331 -381
		f 4 383 384 -333 -383
		f 4 385 386 -335 -385
		f 4 387 388 -337 -387
		f 4 389 390 -340 -389
		f 4 391 392 -342 -391
		f 4 393 394 -344 -393
		f 4 395 396 -346 -395
		f 4 397 398 -348 -397
		f 4 399 -353 -350 -399
		f 4 400 401 -351 402
		f 4 403 404 -354 -402
		f 4 405 406 -358 407
		f 4 408 409 -360 -407
		f 4 410 411 -362 -410
		f 4 412 413 -364 -412
		f 4 414 415 -366 -414
		f 4 416 417 -368 -416
		f 4 418 419 -370 -418
		f 4 420 421 -372 -420
		f 4 422 423 -374 -422
		f 4 424 425 -376 -424
		f 4 426 427 -378 -426
		f 4 428 429 -380 -428
		f 4 430 431 -382 -430
		f 4 432 433 -384 -432
		f 4 434 435 -386 -434
		f 4 436 437 -388 -436
		f 4 438 439 -390 -438
		f 4 440 441 -392 -440
		f 4 442 443 -394 -442
		f 4 444 445 -396 -444
		f 4 446 447 -398 -446
		f 4 448 -403 -400 -448
		f 4 449 450 -401 451
		f 4 452 453 -404 -451
		f 4 454 455 456 -454
		f 4 457 458 -406 -456
		f 4 459 460 -409 -459
		f 4 461 462 -411 -461
		f 4 463 464 -413 -463
		f 4 465 466 -415 -465
		f 4 467 468 -417 -467
		f 4 469 470 -419 -469
		f 4 471 472 -421 -471
		f 4 473 474 -423 -473
		f 4 475 476 -425 -475
		f 4 477 478 -427 -477
		f 4 479 480 -429 -479
		f 4 481 482 -431 -481
		f 4 483 484 -433 -483
		f 4 485 486 -435 -485
		f 4 487 488 -437 -487
		f 4 489 490 -439 -489
		f 4 491 492 -441 -491
		f 4 493 494 -443 -493
		f 4 495 496 -445 -495
		f 4 497 498 -447 -497
		f 4 499 -452 -449 -499
		f 4 500 501 -450 502
		f 4 503 504 -453 -502
		f 4 505 506 -455 -505
		f 4 507 508 -458 -507
		f 4 509 510 -460 -509
		f 4 511 512 -462 -511
		f 4 513 514 -464 -513
		f 4 515 516 -466 -515
		f 4 517 518 -468 -517
		f 4 519 520 -470 -519
		f 4 521 522 -472 -521
		f 4 523 524 -476 525
		f 4 526 527 -478 -525
		f 4 528 529 -480 -528
		f 4 530 531 -482 -530
		f 4 532 533 -484 -532
		f 4 534 535 -486 -534
		f 4 536 537 -488 -536
		f 4 538 539 -490 -538
		f 4 540 541 -492 -540
		f 4 542 543 -494 -542
		f 4 544 545 -496 -544
		f 4 546 547 -498 -546
		f 4 548 -503 -500 -548
		f 4 549 550 -501 551
		f 4 552 553 -504 -551
		f 4 554 555 -506 -554
		f 4 556 557 -508 -556
		f 4 558 559 -510 -558
		f 4 560 561 -512 -560
		f 4 562 563 -514 -562
		f 4 564 565 -516 -564
		f 4 566 567 -518 -566
		f 4 568 569 -520 -568
		f 4 570 571 -522 -570
		f 4 572 573 574 -572
		f 4 575 576 -524 -574
		f 4 577 578 -527 -577
		f 4 579 580 -529 -579
		f 4 581 582 -531 -581
		f 4 583 584 -533 -583
		f 4 585 586 -535 -585
		f 4 587 588 -537 -587
		f 4 589 590 -539 -589
		f 4 591 592 -541 -591
		f 4 593 594 -543 -593
		f 4 595 596 -545 -595
		f 4 597 598 -547 -597
		f 4 599 -552 -549 -599
		f 4 600 601 -550 602
		f 4 603 604 -553 -602
		f 4 605 606 -555 -605
		f 4 607 608 -557 -607
		f 4 609 610 -559 -609
		f 4 611 612 -561 -611
		f 4 613 614 -563 -613
		f 4 615 616 -565 -615
		f 4 617 618 -567 -617
		f 4 619 620 -569 -619
		f 4 621 622 -571 -621
		f 4 623 624 -573 -623
		f 4 625 626 -576 -625
		f 4 627 628 -578 -627
		f 4 629 630 -580 -629
		f 4 631 632 -582 -631
		f 4 633 634 -584 -633
		f 4 635 636 -586 -635
		f 4 637 638 -588 -637
		f 4 639 640 -590 -639
		f 4 641 642 -594 643
		f 4 644 645 -596 -643
		f 4 646 647 -598 -646
		f 4 648 -603 -600 -648
		f 4 649 650 -601 651
		f 4 652 653 -604 -651
		f 4 654 655 -606 -654
		f 4 656 657 -608 -656
		f 4 658 659 -610 -658
		f 4 660 661 -612 -660
		f 4 662 663 -614 -662
		f 4 664 665 -616 -664
		f 4 666 667 -618 -666
		f 4 668 669 -620 -668
		f 4 670 671 -622 -670
		f 4 672 673 -624 -672
		f 4 674 675 -626 -674
		f 4 676 677 -628 -676
		f 4 678 679 -630 -678
		f 4 680 681 -632 -680
		f 4 682 683 -634 -682
		f 4 684 685 -636 -684
		f 4 686 687 -638 -686
		f 4 688 689 -640 -688
		f 4 690 691 692 -690
		f 4 693 694 -642 -692
		f 4 695 696 -645 -695
		f 4 697 698 -647 -697
		f 4 699 -652 -649 -699
		f 4 700 701 -650 702
		f 4 703 704 -653 -702
		f 4 705 706 -655 -705
		f 4 707 708 -657 -707
		f 4 709 710 -659 -709
		f 4 711 712 -661 -711
		f 4 713 714 -663 -713
		f 4 715 716 -665 -715
		f 4 717 718 -667 -717
		f 4 719 720 -669 -719
		f 4 721 722 -671 -721
		f 4 723 724 -673 -723
		f 4 725 726 -675 -725
		f 4 727 728 -677 -727
		f 4 729 730 -679 -729
		f 4 731 732 -681 -731
		f 4 733 734 -683 -733
		f 4 735 736 -685 -735
		f 4 737 738 -687 -737
		f 4 739 740 -689 -739
		f 4 741 742 -691 -741
		f 4 743 744 -694 -743
		f 4 745 746 -696 -745
		f 4 747 748 -698 -747
		f 4 749 -703 -700 -749
		f 4 750 751 -701 752
		f 4 753 754 -704 -752
		f 4 755 756 -706 -755
		f 4 757 758 -708 -757
		f 4 759 760 -712 761
		f 4 762 763 -714 -761
		f 4 764 765 -716 -764
		f 4 766 767 -718 -766
		f 4 768 769 -720 -768
		f 4 770 771 -722 -770
		f 4 772 773 -724 -772
		f 4 774 775 -726 -774
		f 4 776 777 -728 -776
		f 4 778 779 -730 -778
		f 4 780 781 -732 -780
		f 4 782 783 -734 -782
		f 4 784 785 -736 -784
		f 4 786 787 -738 -786
		f 4 788 789 -740 -788
		f 4 790 791 -742 -790
		f 4 792 793 -744 -792
		f 4 794 795 -746 -794
		f 4 796 797 -748 -796
		f 4 798 -753 -750 -798
		f 4 799 800 -751 801
		f 4 802 803 -754 -801
		f 4 804 805 -756 -804
		f 4 806 807 -758 -806
		f 4 808 809 810 -808
		f 4 811 812 -760 -810
		f 4 813 814 -763 -813
		f 4 815 816 -765 -815
		f 4 817 818 -767 -817
		f 4 819 820 -769 -819
		f 4 821 822 -771 -821
		f 4 823 824 -773 -823
		f 4 825 826 -775 -825
		f 4 827 828 -777 -827
		f 4 829 830 -779 -829
		f 4 831 832 -781 -831
		f 4 833 834 -783 -833
		f 4 835 836 -785 -835
		f 4 837 838 -787 -837
		f 4 839 840 -789 -839
		f 4 841 842 -791 -841
		f 4 843 844 -793 -843
		f 4 845 846 -795 -845
		f 4 847 848 -797 -847
		f 4 849 -802 -799 -849
		f 4 850 851 -800 852
		f 4 853 854 -803 -852
		f 4 855 856 -805 -855
		f 4 857 858 -807 -857
		f 4 859 860 -809 -859
		f 4 861 862 -812 -861
		f 4 863 864 -814 -863
		f 4 865 866 -816 -865
		f 4 867 868 -818 -867
		f 4 869 870 -820 -869
		f 4 871 872 -822 -871
		f 4 873 874 -824 -873
		f 4 875 876 -826 -875
		f 4 877 878 -830 879
		f 4 880 881 -832 -879
		f 4 882 883 -834 -882
		f 4 884 885 -836 -884
		f 4 886 887 -838 -886
		f 4 888 889 -840 -888
		f 4 890 891 -842 -890
		f 4 892 893 -844 -892
		f 4 894 895 -846 -894
		f 4 896 897 -848 -896
		f 4 898 -853 -850 -898
		f 4 899 900 -851 901
		f 4 902 903 -854 -901
		f 4 904 905 -856 -904
		f 4 906 907 -858 -906
		f 4 908 909 -860 -908
		f 4 910 911 -862 -910
		f 4 912 913 -864 -912
		f 4 914 915 -866 -914
		f 4 916 917 -868 -916
		f 4 918 919 -870 -918
		f 4 920 921 -872 -920
		f 4 922 923 -874 -922
		f 4 924 925 -876 -924
		f 4 926 927 928 -926
		f 4 929 930 -878 -928
		f 4 931 932 -881 -931
		f 4 933 934 -883 -933
		f 4 935 936 -885 -935
		f 4 937 938 -887 -937
		f 4 939 940 -889 -939
		f 4 941 942 -891 -941
		f 4 943 944 -893 -943
		f 4 945 946 -895 -945
		f 4 947 948 -897 -947
		f 4 949 -902 -899 -949
		f 4 950 951 -900 952
		f 4 953 954 -903 -952
		f 4 955 956 -905 -955
		f 4 957 958 -907 -957
		f 4 959 960 -909 -959
		f 4 961 962 -911 -961
		f 4 963 964 -913 -963
		f 4 965 966 -915 -965
		f 4 967 968 -917 -967
		f 4 969 970 -919 -969
		f 4 971 972 -921 -971
		f 4 973 974 -923 -973
		f 4 975 976 -925 -975
		f 4 977 978 -927 -977
		f 4 979 980 -930 -979
		f 4 981 982 -932 -981
		f 4 983 984 -934 -983
		f 4 985 986 -936 -985
		f 4 987 988 -938 -987
		f 4 989 990 -940 -989
		f 4 991 992 -942 -991
		f 4 993 994 -944 -993
		f 4 995 996 -948 997
		f 4 998 -953 -950 -997
		f 4 999 1000 -951 1001
		f 4 1002 1003 -954 -1001
		f 4 1004 1005 -956 -1004
		f 4 1006 1007 -958 -1006
		f 4 1008 1009 -960 -1008
		f 4 1010 1011 -962 -1010
		f 4 1012 1013 -964 -1012
		f 4 1014 1015 -966 -1014
		f 4 1016 1017 -968 -1016
		f 4 1018 1019 -970 -1018
		f 4 1020 1021 -972 -1020
		f 4 1022 1023 -974 -1022
		f 4 1024 1025 -976 -1024
		f 4 1026 1027 -978 -1026
		f 4 1028 1029 -980 -1028
		f 4 1030 1031 -982 -1030
		f 4 1032 1033 -984 -1032
		f 4 1034 1035 -986 -1034
		f 4 1036 1037 -988 -1036
		f 4 1038 1039 -990 -1038
		f 4 1040 1041 -992 -1040
		f 4 1042 1043 -994 -1042
		f 4 1044 1045 1046 -1044
		f 4 1047 1048 -996 -1046
		f 4 1049 -1002 -999 -1049
		f 4 1050 1051 -1000 1052
		f 4 1053 1054 -1003 -1052
		f 4 1055 1056 -1005 -1055
		f 4 1057 1058 -1007 -1057
		f 4 1059 1060 -1009 -1059
		f 4 1061 1062 -1011 -1061
		f 4 1063 1064 -1013 -1063;
	setAttr ".fc[500:685]"
		f 4 1065 1066 -1015 -1065
		f 4 1067 1068 -1017 -1067
		f 4 1069 1070 -1019 -1069
		f 4 1071 1072 -1021 -1071
		f 4 1073 1074 -1023 -1073
		f 4 1075 1076 -1025 -1075
		f 4 1077 1078 -1027 -1077
		f 4 1079 1080 -1029 -1079
		f 4 1081 1082 -1031 -1081
		f 4 1083 1084 -1033 -1083
		f 4 1085 1086 -1035 -1085
		f 4 1087 1088 -1037 -1087
		f 4 1089 1090 -1039 -1089
		f 4 1091 1092 -1041 -1091
		f 4 1093 1094 -1043 -1093
		f 4 1095 1096 -1045 -1095
		f 4 1097 1098 -1048 -1097
		f 4 1099 -1053 -1050 -1099
		f 4 1100 1101 -1051 1102
		f 4 1103 1104 -1054 -1102
		f 4 1105 1106 -1056 -1105
		f 4 1107 1108 -1058 -1107
		f 4 1109 1110 -1060 -1109
		f 4 1111 1112 -1062 -1111
		f 4 1113 1114 -1066 1115
		f 4 1116 1117 -1068 -1115
		f 4 1118 1119 -1070 -1118
		f 4 1120 1121 -1072 -1120
		f 4 1122 1123 -1074 -1122
		f 4 1124 1125 -1076 -1124
		f 4 1126 1127 -1078 -1126
		f 4 1128 1129 -1080 -1128
		f 4 1130 1131 -1082 -1130
		f 4 1132 1133 -1084 -1132
		f 4 1134 1135 -1086 -1134
		f 4 1136 1137 -1088 -1136
		f 4 1138 1139 -1090 -1138
		f 4 1140 1141 -1092 -1140
		f 4 1142 1143 -1094 -1142
		f 4 1144 1145 -1096 -1144
		f 4 1146 1147 -1098 -1146
		f 4 1148 -1103 -1100 -1148
		f 4 1149 1150 -1101 1151
		f 4 1152 1153 -1104 -1151
		f 4 1154 1155 -1106 -1154
		f 4 1156 1157 -1108 -1156
		f 4 1158 1159 -1110 -1158
		f 4 1160 1161 -1112 -1160
		f 4 1162 1163 1164 -1162
		f 4 1165 1166 -1114 -1164
		f 4 1167 1168 -1117 -1167
		f 4 1169 1170 -1119 -1169
		f 4 1171 1172 -1121 -1171
		f 4 1173 1174 -1123 -1173
		f 4 1175 1176 -1125 -1175
		f 4 1177 1178 -1127 -1177
		f 4 1179 1180 -1129 -1179
		f 4 1181 1182 -1131 -1181
		f 4 1183 1184 -1133 -1183
		f 4 1185 1186 -1135 -1185
		f 4 1187 1188 -1137 -1187
		f 4 1189 1190 -1139 -1189
		f 4 1191 1192 -1141 -1191
		f 4 1193 1194 -1143 -1193
		f 4 1195 1196 -1145 -1195
		f 4 1197 1198 -1147 -1197
		f 4 1199 -1152 -1149 -1199
		f 4 -49 1200 -1150 1201
		f 4 -48 1202 -1153 -1201
		f 4 -47 1203 -1155 -1203
		f 4 -46 1204 -1157 -1204
		f 4 -45 1205 -1159 -1205
		f 4 -44 1206 -1161 -1206
		f 4 -43 1207 -1163 -1207
		f 4 -42 1208 -1166 -1208
		f 4 -41 1209 -1168 -1209
		f 4 -40 1210 -1170 -1210
		f 4 -39 1211 -1172 -1211
		f 4 -38 1212 -1174 -1212
		f 4 -37 1213 -1176 -1213
		f 4 -36 1214 -1178 -1214
		f 4 -35 1215 -1180 -1215
		f 4 -33 1216 -1184 1217
		f 4 -32 1218 -1186 -1217
		f 4 -31 1219 -1188 -1219
		f 4 -30 1220 -1190 -1220
		f 4 -29 1221 -1192 -1221
		f 4 -28 1222 -1194 -1222
		f 4 -27 1223 -1196 -1223
		f 4 -26 1224 -1198 -1224
		f 4 -50 -1202 -1200 -1225
		f 4 1225 1226 1227 1228
		f 4 -1228 1229 -1 1230
		f 4 -1227 1231 -53 -1230
		f 4 -1226 1232 -102 -1232
		f 4 -1229 -1231 -99 -1233
		f 4 1233 1234 -120 1235
		f 4 1236 1237 -172 -1235
		f 4 1238 1239 -221 -1238
		f 4 1240 -1236 -169 -1240
		f 4 1241 1242 -238 1243
		f 4 1244 1245 -290 -1243
		f 4 1246 1247 -339 -1246
		f 4 1248 -1244 -287 -1248
		f 4 1249 1250 -356 1251
		f 4 1252 1253 -408 -1251
		f 4 1254 1255 -457 -1254
		f 4 1256 -1252 -405 -1256
		f 4 1257 1258 -474 1259
		f 4 1260 1261 -526 -1259
		f 4 1262 1263 -575 -1262
		f 4 1264 -1260 -523 -1264
		f 4 1265 1266 -592 1267
		f 4 1268 1269 -644 -1267
		f 4 1270 1271 -693 -1270
		f 4 1272 -1268 -641 -1272
		f 4 1273 1274 -710 1275
		f 4 1276 1277 -762 -1275
		f 4 1278 1279 -811 -1278
		f 4 1280 -1276 -759 -1280
		f 4 1281 1282 -828 1283
		f 4 1284 1285 -880 -1283
		f 4 1286 1287 -929 -1286
		f 4 1288 -1284 -877 -1288
		f 4 1289 1290 -946 1291
		f 4 1292 1293 -998 -1291
		f 4 1294 1295 -1047 -1294
		f 4 1296 -1292 -995 -1296
		f 4 1297 1298 -1064 1299
		f 4 1300 1301 -1116 -1299
		f 4 1302 1303 -1165 -1302
		f 4 1304 -1300 -1113 -1304
		f 4 1305 1306 -1182 1307
		f 4 1308 1309 -1218 -1307
		f 4 1310 1311 -34 -1310
		f 4 1312 -1308 -1216 -1312
		f 4 1313 1314 1315 1316
		f 4 1317 1318 1319 1320
		f 4 1321 1322 1323 1324
		f 4 1325 1326 1327 1328
		f 4 1329 1330 1331 1332
		f 4 1333 1334 1335 1336
		f 4 1337 1338 1339 1340
		f 4 1341 1342 1343 1344
		f 4 1345 1346 1347 1348
		f 4 1349 1350 1351 1352
		f 4 -1316 1353 -1234 1354
		f 4 -1315 1355 -1237 -1354
		f 4 -1314 1356 -1239 -1356
		f 4 -1317 -1355 -1241 -1357
		f 4 -1320 1357 -1242 1358
		f 4 -1319 1359 -1245 -1358
		f 4 -1318 1360 -1247 -1360
		f 4 -1321 -1359 -1249 -1361
		f 4 -1324 1361 -1250 1362
		f 4 -1323 1363 -1253 -1362
		f 4 -1322 1364 -1255 -1364
		f 4 -1325 -1363 -1257 -1365
		f 4 -1328 1365 -1258 1366
		f 4 -1327 1367 -1261 -1366
		f 4 -1326 1368 -1263 -1368
		f 4 -1329 -1367 -1265 -1369
		f 4 -1332 1369 -1266 1370
		f 4 -1331 1371 -1269 -1370
		f 4 -1330 1372 -1271 -1372
		f 4 -1333 -1371 -1273 -1373
		f 4 -1336 1373 -1274 1374
		f 4 -1335 1375 -1277 -1374
		f 4 -1334 1376 -1279 -1376
		f 4 -1337 -1375 -1281 -1377
		f 4 -1340 1377 -1282 1378
		f 4 -1339 1379 -1285 -1378
		f 4 -1338 1380 -1287 -1380
		f 4 -1341 -1379 -1289 -1381
		f 4 -1344 1381 -1290 1382
		f 4 -1343 1383 -1293 -1382
		f 4 -1342 1384 -1295 -1384
		f 4 -1345 -1383 -1297 -1385
		f 4 -1348 1385 -1298 1386
		f 4 -1347 1387 -1301 -1386
		f 4 -1346 1388 -1303 -1388
		f 4 -1349 -1387 -1305 -1389
		f 4 -1352 1389 -1306 1390
		f 4 -1351 1391 -1309 -1390
		f 4 -1350 1392 -1311 -1392
		f 4 -1353 -1391 -1313 -1393;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode houdiniAsset -n "hunte__dev__Tree_subnet__1_02" -p "Globe_Core";
	rename -uid "7F314226-49EF-6244-A19A-4899E68C179A";
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
	setAttr ".t" -type "double3" 0 1.0007328950678349 0 ;
	setAttr ".s" -type "double3" 0.042426509627468308 0.042426509627468308 0.042426509627468308 ;
	setAttr ".rp" -type "double3" -0.15605273785745691 0.083860018554376456 -0.087900891159761296 ;
	setAttr ".sp" -type "double3" -3.6781893968582153 1.9765948057174683 -2.0718388557434082 ;
	setAttr ".spt" -type "double3" 3.5221366590007586 -1.8927347871630917 1.983937964583647 ;
	setAttr ".otlFilePath" -type "string" "C:/Users/hunte/Documents/houdini19.5/otls/object_hunte.dev.Tree_subnet.1.0.hdanc";
	setAttr ".assetName" -type "string" "hunte::dev::Object/Tree_subnet::1.0";
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
createNode transform -n "tube_object1" -p "hunte__dev__Tree_subnet__1_02";
	rename -uid "E3706F37-45BC-67F8-F716-879358F7360D";
createNode transform -n "lineartaper2_0" -p "|Globe_Core|hunte__dev__Tree_subnet__1_02|tube_object1";
	rename -uid "3A1F294B-4CF4-6CEA-8672-76A7A12C11D3";
	setAttr ".rp" -type "double3" -3.9645981788635254 -0.53233909606933594 -2.7500910758972168 ;
	setAttr ".sp" -type "double3" -3.9645981788635254 -0.53233909606933594 -2.7500910758972168 ;
createNode mesh -n "lineartaper2_0Shape" -p "|Globe_Core|hunte__dev__Tree_subnet__1_02|tube_object1|lineartaper2_0";
	rename -uid "7A742EBC-464F-CA96-9F70-CBBF1DAA9F08";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "lineartaper2_1" -p "|Globe_Core|hunte__dev__Tree_subnet__1_02|tube_object1";
	rename -uid "9B67B806-420B-2205-5655-9BB453011250";
	setAttr ".t" -type "double3" -0.089657268737251883 -1.0397212648812899 9.3991688286842106 ;
	setAttr ".r" -type "double3" 0 -72.611420780657014 0 ;
	setAttr ".rp" -type "double3" -3.9645981788635254 -0.53233909606933594 -2.7500910758972168 ;
	setAttr ".sp" -type "double3" -3.9645981788635254 -0.53233909606933594 -2.7500910758972168 ;
createNode mesh -n "lineartaper2_1Shape" -p "lineartaper2_1";
	rename -uid "5EAFFDC1-4E35-1640-635F-F181CAE6EFD8";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 2 "f[591:598]" "f[643:645]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[643:645]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 681 ".vt";
	setAttr ".vt[0:165]"  -3.54610491 3.55288696 -0.98805058 -3.52715898 3.55466366 -0.99437702
		 -3.51022458 3.55988407 -1.0037641525 -3.49636626 3.56821823 -1.015622139 -3.48645449 3.57914448 -1.029205918
		 -3.481112 3.59197426 -1.043661952 -3.48067474 3.60590363 -1.058081985 -3.48516989 3.6200552 -1.071559787
		 -3.49431515 3.63354111 -1.083248734 -3.50753617 3.64551353 -1.09241426 -3.5240016 3.65522003 -1.098480344
		 -3.5426774 3.6620512 -1.10106587 -3.56239009 3.66557789 -1.10000861 -3.5819006 3.66557789 -1.095374703
		 -3.59998345 3.6620512 -1.087455511 -3.61550212 3.65522003 -1.07674849 -3.6274817 3.64551353 -1.063926458
		 -3.63516951 3.63354111 -1.049795151 -3.63808227 3.6200552 -1.035242438 -3.63603711 3.60590363 -1.021182656
		 -3.62916255 3.59197426 -1.0084992647 -3.6178906 3.57914448 -0.99798918 -3.60292935 3.56821823 -0.99031281
		 -3.58521914 3.55988407 -0.98595262 -3.56587243 3.55466366 -0.9851824 -3.57421541 3.40212846 -1.10640728
		 -3.55114079 3.40422273 -1.11418533 -3.53054953 3.41037297 -1.12582517 -3.51373506 3.42019296 -1.14059508
		 -3.50175405 3.43306613 -1.15756738 -3.49535942 3.44818282 -1.17567527 -3.49495268 3.46459413 -1.19378114
		 -3.50055933 3.48126793 -1.21074748 -3.51182771 3.4971571 -1.22550797 -3.52804899 3.51126289 -1.23713517
		 -3.54820442 3.52270031 -1.24489868 -3.57102752 3.53074837 -1.24831069 -3.59508395 3.53490353 -1.2471565
		 -3.61886263 3.53490353 -1.24150908 -3.6408689 3.53074837 -1.23172295 -3.65972042 3.52270031 -1.218413
		 -3.67423248 3.51126289 -1.20241594 -3.68349361 3.4971571 -1.18473637 -3.68692136 3.48126793 -1.16648555
		 -3.68430066 3.46459365 -1.14881015 -3.67579603 3.44818282 -1.13282061 -3.66194201 3.43306613 -1.11952198
		 -3.64360905 3.42019296 -1.10974944 -3.62194896 3.41037297 -1.10411739 -3.59832287 3.40422273 -1.10297942
		 -3.60108209 3.24789429 -1.21952844 -3.57388449 3.25027633 -1.22877991 -3.54965115 3.2572732 -1.24273562
		 -3.52990484 3.26844525 -1.26051915 -3.51588631 3.28309011 -1.28101242 -3.50847602 3.30028796 -1.30292809
		 -3.50814009 3.31895804 -1.3248893 -3.51489949 3.3379271 -1.34551585 -3.52832937 3.35600352 -1.36351192
		 -3.54758573 3.37205148 -1.37774646 -3.57145905 3.38506246 -1.38732541 -3.59844899 3.39421916 -1.3916465
		 -3.6268599 3.39894605 -1.39043868 -3.65490627 3.39894605 -1.3837775 -3.68082619 3.39421916 -1.37208164
		 -3.70299077 3.38506246 -1.3560859 -3.72000742 3.37205148 -1.33679545 -3.73080707 3.35600352 -1.31542242
		 -3.73471069 3.3379271 -1.29330945 -3.73147368 3.31895781 -1.27184641 -3.72129869 3.30028796 -1.25238168
		 -3.70482564 3.28309011 -1.23613846 -3.68308926 3.26844501 -1.22413695 -3.65745544 3.2572732 -1.21713161
		 -3.62953496 3.25027633 -1.2155627 -3.62668324 3.090372801 -1.32732093 -3.59536743 3.093013525 -1.33806586
		 -3.56750607 3.10077 -1.3543973 -3.54485035 3.11315489 -1.37528884 -3.52882361 3.12938976 -1.39942801
		 -3.52043295 3.1484549 -1.42529774 -3.5202055 3.16915202 -1.45127273 -3.52815557 3.19018054 -1.47572088
		 -3.54378366 3.21021962 -1.49710608 -3.56610775 3.22800994 -1.51408446 -3.5937252 3.24243355 -1.52558947
		 -3.62490058 3.25258422 -1.53089786 -3.65767527 3.25782418 -1.52967608 -3.68998957 3.25782418 -1.52200127
		 -3.71981335 3.25258422 -1.5083555 -3.74527264 3.24243355 -1.48959613 -3.76476741 3.22800994 -1.4669019
		 -3.77707314 3.21021962 -1.44169855 -3.78141642 3.19018054 -1.41557026 -3.77752447 3.16915202 -1.39015818
		 -3.76564169 3.1484549 -1.36705947 -3.7465148 3.12938976 -1.34772515 -3.72134566 3.11315489 -1.33337033
		 -3.69171572 3.10077 -1.32489705 -3.65948653 3.093013525 -1.32283735 -3.65099788 2.92975712 -1.42969537
		 -3.61556792 2.93262601 -1.44195294 -3.5840919 2.9410522 -1.46071529 -3.55854774 2.95450616 -1.48480344
		 -3.54054046 2.97214293 -1.51270413 -3.5312016 2.99285388 -1.54266405 -3.53111768 3.015337706 -1.57280076
		 -3.54029417 3.03818202 -1.60122073 -3.55815434 3.059951067 -1.62613797 -3.5835762 3.079277277 -1.64598727
		 -3.6149621 3.094946146 -1.6595211 -3.65034008 3.10597324 -1.66588902 -3.6874876 3.11166573 -1.66469121
		 -3.72406983 3.11166573 -1.65600276 -3.75778866 3.10597324 -1.64036942 -3.78652525 3.094946146 -1.61877394
		 -3.80847406 3.079277277 -1.59257293 -3.82225585 3.059951067 -1.56341267 -3.82700467 3.03818202 -1.5331254
		 -3.82242227 3.015337706 -1.50361454 -3.80879641 2.99285388 -1.4767338 -3.78698349 2.97214293 -1.45417273
		 -3.75835371 2.95450616 -1.43734848 -3.72470641 2.9410522 -1.42731845 -3.68815565 2.93262601 -1.42471302
		 -3.67400646 2.76624322 -1.52657187 -3.63446665 2.76930833 -1.54035926 -3.59938812 2.77831149 -1.56160355
		 -3.57097507 2.79268646 -1.58897018 -3.55101275 2.81153035 -1.62073946 -3.54075527 2.83365893 -1.65491521
		 -3.5408473 2.85768199 -1.68935025 -3.55128312 2.88209009 -1.72188044 -3.57140684 2.90534949 -1.75046217
		 -3.59995437 2.92599845 -1.77329946 -3.63513136 2.94273996 -1.78895724 -3.67472816 2.95452189 -1.79645181
		 -3.71625638 2.96060395 -1.79531217 -3.75710654 2.96060395 -1.78561008 -3.79471231 2.95452189 -1.76795506
		 -3.82671022 2.94273996 -1.74345636 -3.85109019 2.92599845 -1.71365333 -3.86632037 2.90534949 -1.68041885
		 -3.87144327 2.88209009 -1.64584076 -3.8661375 2.85768199 -1.61209202 -3.85073638 2.83365893 -1.58129323
		 -3.8262074 2.81153035 -1.55537939 -3.7940917 2.79268646 -1.53597879 -3.75640774 2.77831125 -1.52431059
		 -3.715523 2.76930833 -1.52110791 -3.69569159 2.60002804 -1.61787558 -3.65204573 2.60325718 -1.63320875
		 -3.6133759 2.61274123 -1.65698206 -3.5821116 2.62788486 -1.6877017 -3.56021714 2.64773607 -1.72343755
		 -3.54906869 2.67104769 -1.76194417 -3.54936647 2.69635487 -1.80080223 -3.56109166 2.72206759 -1.83756971
		 -3.58350778 2.74657035 -1.8699367 -3.61520624 2.76832342 -1.89586937 -3.65419531 2.78595972 -1.91373825
		 -3.69802499 2.79837132 -1.92242074 -3.74394155 2.80477858 -1.92137098 -3.78905964 2.80477858 -1.91065514
		 -3.83054471 2.79837132 -1.89094663 -3.86578965 2.78595972 -1.86348355;
	setAttr ".vt[166:331]" -3.89258027 2.76832318 -1.82999158 -3.90923309 2.74657035 -1.79257536
		 -3.91470146 2.72206759 -1.75358558 -3.90864229 2.69635487 -1.71547246 -3.89143586 2.67104769 -1.68063033
		 -3.86416364 2.64773607 -1.65124881 -3.82853889 2.62788486 -1.62917387 -3.78680038 2.61274123 -1.61579287
		 -3.74157047 2.60325718 -1.61194611 -3.7160368 2.43131089 -1.70353854 -3.66828847 2.43467045 -1.7204318
		 -3.62603712 2.44453788 -1.74677622 -3.59193778 2.46029329 -1.78091669 -3.56813264 2.48094654 -1.8207078
		 -3.55611777 2.50520015 -1.86364937 -3.55664778 2.53153014 -1.90704322 -3.56968999 2.5582819 -1.94816279
		 -3.59442425 2.58377481 -1.98442435 -3.62929678 2.60640669 -2.013549566 -3.67211628 2.62475586 -2.033708334
		 -3.72019243 2.63766909 -2.043633938 -3.770504 2.64433503 -2.042702675 -3.81989026 2.64433503 -2.030973196
		 -3.86524773 2.63766909 -2.0091824532 -3.90372658 2.62475586 -1.97869968 -3.93290901 2.60640669 -1.94144011
		 -3.95096135 2.58377481 -1.89974499 -3.9567492 2.5582819 -1.85623419 -3.94990921 2.53153014 -1.81364179
		 -3.93087101 2.50520015 -1.77464366 -3.90083051 2.48094654 -1.7416904 -3.86167574 2.46029329 -1.71685255
		 -3.81586671 2.44453788 -1.70169079 -3.76628184 2.43467045 -1.69715774 -3.73502779 2.26029229 -1.783499
		 -3.68318009 2.26374817 -1.80196536 -3.63735628 2.27389836 -1.83091879 -3.60043573 2.29010558 -1.86854005
		 -3.57473874 2.3113513 -1.91246533 -3.5618794 2.33630037 -1.95993471 -3.56266618 2.3633852 -2.0079653263
		 -3.57704926 2.39090419 -2.053539276 -3.60412502 2.41712785 -2.093792915 -3.64219213 2.44040895 -2.12619734
		 -3.68885875 2.45928407 -2.14871597 -3.74119282 2.47256756 -2.15993404 -3.79590583 2.47942472 -2.15914702
		 -3.84955978 2.47942472 -2.14640379 -3.89878392 2.47256756 -2.12250566 -3.94048476 2.45928407 -2.088953495
		 -3.97204232 2.44040871 -2.047856331 -3.99147367 2.41712785 -2.0017957687 -3.99755812 2.39090419 -1.95366621
		 -3.98991299 2.3633852 -1.90649199 -3.9690187 2.33630037 -1.86323714 -3.93618846 2.3113513 -1.82661927
		 -3.89348459 2.29010558 -1.79893947 -3.84359074 2.27389836 -1.78193712 -3.78964186 2.26374793 -1.77668011
		 -3.75265169 2.087174654 -1.85770357 -3.69670701 2.090692043 -1.87775421 -3.64731884 2.10102296 -1.90934968
		 -3.6075902 2.11751842 -1.95050478 -3.58001733 2.13914204 -1.99863362 -3.56633306 2.16453481 -2.05071187
		 -3.56739712 2.19210148 -2.10346746 -3.58314252 2.22010994 -2.15358567 -3.61257982 2.24680018 -2.19791698
		 -3.65385985 2.27049518 -2.23367643 -3.70438838 2.28970623 -2.25861669 -3.76099062 2.30322599 -2.27117062
		 -3.82011032 2.31020522 -2.27054977 -3.87803221 2.31020522 -2.25679302 -3.9311173 2.30322599 -2.23076487
		 -3.97602987 2.28970623 -2.19410038 -4.0099482536 2.27049518 -2.14910364 -4.030740738 2.24680018 -2.098601818
		 -4.037100792 2.22010994 -2.045768261 -4.028629303 2.19210148 -1.99392259 -4.0058584213 2.16453481 -1.94632244
		 -3.97021866 2.13914204 -1.90595889 -3.92394948 2.11751842 -1.87536788 -3.8699584 2.10102296 -1.85647154
		 -3.81163764 2.090692043 -1.85045767 -3.76889706 1.91216207 -1.92610359 -3.70885777 1.91570544 -1.94774818
		 -3.65591168 1.92611265 -1.98201406 -3.61338544 1.94272995 -2.02674818 -3.58395123 1.9645133 -2.079139709
		 -3.56945848 1.99009371 -2.13589668 -3.57081771 2.017863989 -2.19345307 -3.58794379 2.046079397 -2.24819207
		 -3.61976027 2.072966576 -2.29667425 -3.66426826 2.096836805 -2.33585358 -3.71867132 2.11618972 -2.36326814
		 -3.77955055 2.12980938 -2.37719512 -3.84308124 2.13684011 -2.37675977 -3.90527129 2.13684011 -2.3619895
		 -3.96221304 2.12980938 -2.333812 -4.01032877 2.11618972 -2.293998 -4.04659462 2.096836805 -2.24504924
		 -4.068732738 2.072966576 -2.19004107 -4.075351715 2.046079159 -2.13243008 -4.066035748 2.017863989 -2.07583642
		 -4.041369915 1.99009371 -2.023815632 -4.0029044151 1.9645133 -1.97963643 -3.95305562 1.94272995 -1.94607484
		 -3.89495635 1.92611265 -1.9252398 -3.83225703 1.91570544 -1.91844034 -3.78375411 1.73545814 -1.98865795
		 -3.71962214 1.7389915 -2.011904716 -3.66312361 1.74936914 -2.048864365 -3.61780882 1.765939 -2.097215176
		 -3.58652472 1.78766036 -2.1539185 -3.57123709 1.81316805 -2.2154119 -3.57290673 1.84085917 -2.27783155
		 -3.59142828 1.86899424 -2.337255 -3.62563848 1.89580512 -2.38994884 -3.67338753 1.91960716 -2.43260193
		 -3.73167515 1.938905 -2.46253443 -3.79683876 1.95248604 -2.47786522 -3.86478424 1.95949674 -2.47763109
		 -3.93124223 1.95949674 -2.46184707 -3.99203682 1.95248604 -2.43150473 -4.043348312 1.938905 -2.38851047
		 -4.081952095 1.91960716 -2.33556581 -4.10542297 1.89580512 -2.27599764 -4.11228609 1.86899424 -2.21354866
		 -4.10211039 1.84085917 -2.152143 -4.075534821 1.81316805 -2.095638752 -4.034229279 1.78766036 -2.047586441
		 -3.98078966 1.765939 -2.011005163 -3.91857338 1.74936914 -1.98819375 -3.85148978 1.7389915 -1.98058534
		 -3.79721475 1.55726933 -2.045333385 -3.72899175 1.56075597 -2.070188284 -3.66894531 1.57099652 -2.10986042
		 -3.62084889 1.58734798 -2.16185737 -3.58772421 1.60878253 -2.2229116 -3.57165265 1.63395333 -2.28918719
		 -3.57364416 1.6612792 -2.35651946 -3.59357357 1.68904281 -2.42067814 -3.63018847 1.71549964 -2.47763133
		 -3.68118858 1.73898768 -2.52380085 -3.7433691 1.75803065 -2.55628562 -3.81282306 1.7714324 -2.57304454
		 -3.88518643 1.77835059 -2.57302451 -3.95591211 1.77835059 -2.55622673 -4.02055645 1.7714324 -2.52370667
		 -4.075057983 1.75803065 -2.47750783 -4.11599112 1.73898768 -2.42053318 -4.14078474 1.71549964 -2.3563621
		 -4.14788055 1.68904281 -2.28902721 -4.13683319 1.6612792 -2.22275925 -4.10833645 1.63395333 -2.16172218
		 -4.064180374 1.60878229 -2.10975075 -4.0071406364 1.58734775 -2.070111275 -3.94080019 1.57099652 -2.045293808
		 -3.86932802 1.56075597 -2.036857843 -3.80927253 1.37779951 -2.096101999 -3.73695946 1.38120246 -2.1225698
		 -3.67336845 1.39119768 -2.16496801 -3.62249541 1.40715694 -2.22063279 -3.58753705 1.42807746 -2.28606629
		 -3.57068944 1.45264459 -2.35715723 -3.5730114 1.47931528 -2.42943859;
	setAttr ".vt[332:497]" -3.59435725 1.50641298 -2.49836898 -3.63338566 1.53223562 -2.55961704
		 -3.687644 1.55516028 -2.60933399 -3.75372338 1.57374668 -2.64439654 -3.82747173 1.58682704 -2.66260123
		 -3.90425515 1.59357929 -2.66280413 -3.979249 1.59357929 -2.64499283 -4.047740936 1.58682704 -2.610286
		 -4.10542774 1.57374668 -2.56086493 -4.1486845 1.55516028 -2.49983454 -4.17479372 1.53223562 -2.4310298
		 -4.18211412 1.50641298 -2.35877371 -4.17018604 1.47931528 -2.28760672 -4.13975906 1.45264459 -2.22200036
		 -4.092744827 1.42807746 -2.1660769 -4.032097816 1.40715671 -2.12335014 -3.9616282 1.39119768 -2.096504927
		 -3.88576412 1.38120246 -2.087227821 -3.81992269 1.19725609 -2.140944 -3.74352026 1.20053816 -2.16902757
		 -3.67638683 1.21017814 -2.21416044 -3.62274051 1.2255702 -2.27350664 -3.58595228 1.24574733 -2.3433373
		 -3.56833363 1.2694416 -2.41926455 -3.57099199 1.29516435 -2.49651814 -3.59375954 1.32129931 -2.57024336
		 -3.63520646 1.34620416 -2.63580775 -3.69272804 1.36831427 -2.68909216 -3.76271009 1.38624024 -2.72674823
		 -3.84075546 1.39885569 -2.74640989 -3.92196012 1.40536809 -2.74684167 -4.0012216568 1.40536809 -2.72801661
		 -4.073560238 1.39885569 -2.69111753 -4.13442993 1.38624024 -2.63846278 -4.1800065 1.36831427 -2.57336092
		 -4.20742607 1.34620416 -2.49990273 -4.21496582 1.3212992 -2.4227035 -4.20215178 1.29516435 -2.34661436
		 -4.16978931 1.2694416 -2.27641582 -4.11991215 1.24574733 -2.21651912 -4.055653572 1.2255702 -2.17068744
		 -3.98105145 1.21017814 -2.14180088 -3.90079355 1.20053816 -2.13167429 -3.82916164 1.015844226 -2.17984414
		 -3.7486701 1.018967748 -2.20954466 -3.67799473 1.028142095 -2.25741553 -3.62157655 1.04279089 -2.32044888
		 -3.58296061 1.06199348 -2.39468384 -3.56457305 1.084543467 -2.47545624 -3.56756926 1.10902393 -2.55769062
		 -3.59176111 1.13389659 -2.63622022 -3.6356287 1.15759873 -2.70611048 -3.69641519 1.17864096 -2.76296997
		 -3.77030134 1.19570124 -2.80322599 -3.85264492 1.20770741 -2.82434916 -3.93827176 1.21390522 -2.82501221
		 -4.021801472 1.21390522 -2.80517364 -4.097985744 1.20770741 -2.76607966 -4.16203737 1.19570124 -2.71018672
		 -4.20993185 1.17864096 -2.64100718 -4.23866034 1.15759873 -2.56288743 -4.24641705 1.13389659 -2.48073626
		 -4.23271513 1.10902393 -2.39971542 -4.1984148 1.084543467 -2.32491565 -4.14567184 1.06199348 -2.26103711
		 -4.077800274 1.042790771 -2.21209335 -3.99906468 1.028142095 -2.18115997 -3.91441202 1.018967748 -2.17018032
		 -3.83698797 0.83376956 -2.21279597 -3.75240707 0.83669686 -2.24411297 -3.67818975 0.84529471 -2.29472017
		 -3.618999 0.85902286 -2.3614378 -3.57855415 0.87701893 -2.44007397 -3.55939674 0.89815187 -2.52568698
		 -3.56273007 0.92109394 -2.61289835 -3.58834505 0.94440365 -2.69622755 -3.63463211 0.96661639 -2.77043915
		 -3.69868279 0.98633635 -2.83087015 -3.77647257 1.0023244619 -2.87372303 -3.86311364 1.013576269 -2.89630556
		 -3.95316195 1.019384623 -2.89719868 -4.040959358 1.019384623 -2.87634611 -4.1209898 1.013576269 -2.83505869
		 -4.18822384 1.0023244619 -2.77592993 -4.23843765 0.98633635 -2.70267558 -4.26847553 0.96661639 -2.61989808
		 -4.27645063 0.94440365 -2.53279901 -4.26186132 0.92109394 -2.44685125 -4.22562456 0.89815187 -2.36745453
		 -4.17001724 0.87701881 -2.29959846 -4.09853363 0.85902286 -2.24754596 -4.015664577 0.84529471 -2.21456814
		 -3.92661762 0.83669686 -2.20273733 -3.84340143 0.65123796 -2.23979974 -3.75473094 0.65393102 -2.27273083
		 -3.67696953 0.66184115 -2.32606745 -3.61500382 0.67447114 -2.39645863 -3.57272696 0.69102752 -2.47948122
		 -3.55279541 0.71046984 -2.56991863 -3.55646181 0.7315768 -2.66208839 -3.58349538 0.75302184 -2.75019908
		 -3.63219762 0.77345753 -2.82871437 -3.69950867 0.79159999 -2.89270067 -3.78119898 0.80630922 -2.93813801
		 -3.8721354 0.81666088 -2.96217084 -3.96660447 0.82200456 -2.9632895 -4.058670044 0.82200456 -2.94142342
		 -4.14254761 0.81666088 -2.8979466 -4.21296597 0.80630922 -2.83559108 -4.26550198 0.79159999 -2.75827456
		 -4.29685307 0.77345753 -2.67085528 -4.30505037 0.75302172 -2.57882595 -4.28957844 0.73157668 -2.4879694
		 -4.25140953 0.71046984 -2.40399432 -4.19294167 0.6910274 -2.33217716 -4.11784887 0.67447114 -2.27703047
		 -4.030849457 0.66184103 -2.24201918 -3.93740988 0.65393102 -2.22934365 -3.84840369 0.46845329 -2.26086092
		 -3.75564218 0.47087431 -2.29540205 -3.67433429 0.47798514 -2.3514564 -3.60958886 0.48933911 -2.42550182
		 -3.56547403 0.50422275 -2.51288605 -3.54476142 0.52170086 -2.60811806 -3.54875302 0.54067528 -2.70521426
		 -3.57719755 0.55995369 -2.79807353 -3.62830806 0.57832479 -2.88086152 -3.6988728 0.59463429 -2.94837618
		 -3.78445816 0.60785735 -2.99637532 -3.87968659 0.61716318 -3.021842957 -3.97857428 0.62196696 -3.023179054
		 -4.07490778 0.62196696 -3.00029921532 -4.1626339 0.61716318 -2.95464158 -4.23624134 0.60785735 -2.8890748
		 -4.29110384 0.59463429 -2.80771828 -4.32377529 0.57832479 -2.71568465 -4.33220243 0.55995369 -2.61875606
		 -4.3158555 0.54067528 -2.52302361 -4.2757616 0.52170086 -2.43450189 -4.21444035 0.50422275 -2.3587532
		 -4.13574457 0.48933911 -2.30053711 -4.044619083 0.47798514 -2.2635119 -3.94678974 0.47087431 -2.25000358
		 -3.85199761 0.28561944 -2.27599287 -3.75514388 0.28773046 -2.31213808 -3.67028522 0.29393095 -2.37089276
		 -3.60275364 0.30383122 -2.44856501 -3.55679202 0.3168093 -2.54027462 -3.53528857 0.33204961 -2.64025903
		 -3.53959441 0.34859467 -2.7422359 -3.56943893 0.36540478 -2.8397975 -3.62294698 0.38142383 -2.92681384
		 -3.69675636 0.39564514 -2.99781728 -3.78622913 0.40717518 -3.048346281 -3.88574386 0.41528952 -3.075226068
		 -3.98904753 0.4194783 -3.076767921 -4.089648724 0.4194783 -3.052874565 -4.18122721 0.41528952 -3.0050473213
		 -4.25802803 0.40717518 -2.93629169 -4.3152256 0.39564514 -2.85092759 -4.349226 0.38142383 -2.75431871
		 -4.35789347 0.36540478 -2.65253544 -4.34068251 0.34859467 -2.55197358 -4.29867506 0.33204961 -2.458951
		 -4.23451042 0.31680924 -2.37931323 -4.15222025 0.30383122 -2.31806397;
	setAttr ".vt[498:663]" -4.056975365 0.29393095 -2.27905178 -3.95476007 0.28773046 -2.26472807
		 -3.85418797 0.10293895 -2.28521538 -3.75324035 0.10470229 -2.32295704 -3.66482568 0.1098814 -2.38438964
		 -3.59449935 0.11815095 -2.46565318 -3.54667997 0.12899125 -2.56164145 -3.52437258 0.14172125 -2.66632318
		 -3.52897859 0.155541 -2.77312112 -3.56020856 0.16958225 -2.87532425 -3.61610031 0.1829626 -2.96651077
		 -3.69314194 0.19484144 -3.040951729 -3.78649259 0.2044723 -3.093969107 -3.89028668 0.21125013 -3.12223196
		 -3.99800253 0.21474892 -3.12396431 -4.10287189 0.21474892 -3.099057198 -4.19830561 0.21125007 -3.04907608
		 -4.27830696 0.2044723 -2.97716069 -4.33784914 0.19484144 -2.8878305 -4.37319136 0.1829626 -2.78669786
		 -4.3821125 0.16958219 -2.68011785 -4.36405182 0.155541 -2.5747869 -4.32014465 0.14172125 -2.47732353
		 -4.25314999 0.12899125 -2.39385128 -4.16727638 0.11815095 -2.32961583 -4.067920685 0.1098814 -2.28865266
		 -3.96132517 0.10470223 -2.27353597 -3.85498071 -0.079387307 -2.28855348 -3.74993706 -0.078009307 -2.32788229
		 -3.6579597 -0.073961794 -2.39196539 -3.58482838 -0.067499161 -2.47677612 -3.53513765 -0.059027433 -2.57698536
		 -3.51200986 -0.049078941 -2.6862967 -3.51689863 -0.038278818 -2.79784179 -3.54949617 -0.027305603 -2.90461183
		 -3.60775495 -0.016848803 -2.99989772 -3.68801379 -0.0075654984 -3.077712774 -3.78522992 -3.8981438e-05 -3.13316727
		 -3.89329481 0.0052578449 -3.16277695 -4.0054187775 0.0079921484 -3.16468143 -4.11455584 0.0079921484 -3.13876081
		 -4.21384954 0.0052578449 -3.086643696 -4.29706001 -3.8981438e-05 -3.011605263 -4.3589592 -0.007565558 -2.91835976
		 -4.39565754 -0.016848862 -2.81276679 -4.40484953 -0.027305603 -2.70146084 -4.38595772 -0.038278818 -2.59143591
		 -4.34016848 -0.049078941 -2.48960495 -4.27035904 -0.059027433 -2.40236664 -4.18091631 -0.067499161 -2.33520222
		 -4.077459812 -0.073961794 -2.29233217 -3.96649027 -0.078009307 -2.27644992 -3.85438395 -0.2611596 -2.28604078
		 -3.7452414 -0.26020414 -2.32694578 -3.64969397 -0.2573978 -2.39364648 -3.57374477 -0.25291687 -2.48195219
		 -3.52216625 -0.24704295 -2.58631372 -3.49819946 -0.24014512 -2.70017433 -3.50335002 -0.23265678 -2.81637931
		 -3.53729439 -0.22504842 -2.92762733 -3.59789968 -0.21779814 -3.026927948 -3.6813581 -0.21136153 -3.10804224
		 -3.78242517 -0.20614296 -3.16587305 -3.89475107 -0.20247036 -3.19678664 -4.011277199 -0.20057452 -3.19884086
		 -4.12468243 -0.20057452 -3.17190647 -4.22784138 -0.20247036 -3.11767602 -4.31427097 -0.20614296 -3.03955698
		 -4.37854147 -0.21136153 -2.94245768 -4.41661453 -0.21779817 -2.83247924 -4.42609739 -0.22504845 -2.71653199
		 -4.40639448 -0.23265678 -2.60190177 -4.35874367 -0.24014512 -2.49579072 -4.28613949 -0.24704295 -2.40486646
		 -4.19314337 -0.2529169 -2.33484173 -4.085598946 -0.2573978 -2.29011679 -3.97026324 -0.26020414 -2.27350187
		 -3.85240674 -0.44218057 -2.27771521 -3.73916221 -0.4416846 -2.32018328 -3.64003515 -0.44022787 -2.3894639
		 -3.56125426 -0.43790182 -2.48120403 -3.50776935 -0.43485272 -2.58963871 -3.48294091 -0.43127209 -2.70795536
		 -3.48832941 -0.42738491 -2.82871938 -3.52359605 -0.42343545 -2.94434261 -3.58652496 -0.41967189 -3.047560215
		 -3.67316198 -0.41633067 -3.13188648 -3.77806354 -0.41362172 -3.19202304 -3.8946383 -0.41171533 -3.22419119
		 -4.015561104 -0.4107312 -3.22636962 -4.1332345 -0.4107312 -3.19842172 -4.24026394 -0.41171533 -3.1421032
		 -4.32992506 -0.41362172 -3.06095314 -4.39658356 -0.41633067 -2.96007013 -4.43605137 -0.41967189 -2.84579325
		 -4.44584846 -0.42343545 -2.72530293 -4.42535973 -0.42738491 -2.60616994 -4.37587166 -0.43127209 -2.49587989
		 -4.30049419 -0.43485272 -2.40136266 -4.20396376 -0.43790185 -2.32855701 -4.092345238 -0.44022787 -2.28203797
		 -3.97265267 -0.4416846 -2.26472807 -3.84905982 -0.62225413 -2.26362324 -3.73170996 -0.62225413 -2.30763984
		 -3.62899351 -0.62225413 -2.37945724 -3.54736423 -0.62225413 -2.47456288 -3.49195123 -0.62225413 -2.58698106
		 -3.46623659 -0.62225413 -2.70964789 -3.47183561 -0.62225413 -2.83485603 -3.50839686 -0.62225413 -2.95473814
		 -3.57362294 -0.62225413 -3.061761379 -3.66341543 -0.62225413 -3.14920139 -3.77213216 -0.62225413 -3.21156359
		 -3.89294243 -0.62225413 -3.24492979 -4.018255234 -0.62225413 -3.24720359 -4.14019632 -0.62225413 -3.21824193
		 -4.25110388 -0.62225413 -3.15986466 -4.3440094 -0.62225413 -3.075739861 -4.41307497 -0.62225413 -2.97115326
		 -4.45396137 -0.62225413 -2.85267639 -4.46409893 -0.62225413 -2.72775388 -4.44285107 -0.62225413 -2.60423493
		 -4.39155293 -0.62225413 -2.48988056 -4.31342793 -0.62225413 -2.39187622 -4.21338415 -0.62225413 -2.31637979
		 -4.097708702 -0.62225413 -2.26813507 -3.97366881 -0.62225413 -2.25017333 -3.25132751 2.94040394 -0.27793813
		 -3.23238134 2.94218063 -0.2842648 -3.25636339 2.7917397 -0.404073 -3.27943778 2.78964543 -0.39629459
		 -3.0084531307 3.89934349 -2.0082921982 -3.032326221 3.91235447 -2.017871141 -3.054592371 3.7697258 -2.15613508
		 -3.026974916 3.75530195 -2.14463019 -4.77728462 3.14448285 -1.30518305 -4.77270222 3.12163854 -1.2756722
		 -4.81641722 2.96398282 -1.38414979 -4.82172298 2.98839092 -1.41789842 -2.89865923 2.11371803 -1.1742655
		 -2.86455965 2.12947321 -1.20840597 -2.87305784 1.95928574 -1.29602945 -2.90997815 1.94307852 -1.25840795
		 -3.7101953 2.81124258 -3.11118746 -3.76931477 2.81822205 -3.11056662 -3.79228592 2.64485693 -3.21677661
		 -3.72875524 2.63782597 -3.21721196 -4.84089565 1.72846222 -1.48462629 -4.79959011 1.70295453 -1.43657386
		 -4.82954168 1.52407646 -1.49873829 -4.87369728 1.5492475 -1.55070949 -2.62614059 1.20269954 -2.13549757
		 -2.60852218 1.22639382 -2.21142483 -2.60476136 1.041495681 -2.26761651 -2.62314892 1.018945694 -2.18684411
		 -4.48598576 1.32973504 -3.69605565 -4.5660162 1.32392669 -3.65476799 -4.58757353 1.1270113 -3.71765614
		 -4.50369644 1.13235497 -3.76113296 -4.5116272 0.43752587 -1.39372027 -4.42050171 0.4261719 -1.35669494
		 -4.43285751 0.2421177 -1.37223482 -4.5281024 0.25201797 -1.41124701 -2.57862329 0.052861333 -3.076448679
		 -2.61122084 0.063834548 -3.18321872 -2.59901905 -0.13390824 -3.20623422;
	setAttr ".vt[664:680]" -2.56507444 -0.1415166 -3.094986439 -5.1469574 -0.31975943 -3.59941173
		 -5.21361589 -0.32246834 -3.49852872 -5.23010731 -0.52839184 -3.50961161 -5.16104126 -0.52839184 -3.61419845
		 -2.36080313 4.56070852 -2.23209882 -2.38340521 4.57544374 -2.23632622 -2.40407753 4.45360088 -2.36788034
		 -2.37792492 4.4369545 -2.36254191 -5.62312794 1.68033957 -0.87835217 -5.5820694 1.65050673 -0.83134007
		 -5.61558914 1.47750759 -0.90852976 -5.65968943 1.50777841 -0.9602679 -1.7006166 0.43216932 -3.68195295
		 -1.73571086 0.46943498 -3.79923511 -1.73383784 0.28107715 -3.86573958 -1.69668937 0.24540675 -3.74099874;
	setAttr -s 1337 ".ed";
	setAttr ".ed[0:165]"  0 1 1 1 2 1 2 3 1 3 4 1 4 5 1 5 6 1 6 7 1 7 8 1 8 9 1
		 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 16 1 16 17 1 17 18 1 18 19 1 19 20 1
		 20 21 1 21 22 1 22 23 1 23 24 1 24 0 1 624 623 1 623 622 1 622 621 1 621 620 1 620 619 1
		 619 618 1 618 617 1 617 616 1 616 615 1 615 614 1 614 613 1 613 612 1 612 611 1 611 610 1
		 610 609 1 609 608 1 608 607 1 607 606 1 606 605 1 605 604 1 604 603 1 603 602 1 602 601 1
		 601 600 1 600 624 1 26 27 1 27 2 1 1 26 1 27 28 1 28 3 1 28 29 1 29 4 1 29 30 1 30 5 1
		 30 31 1 31 6 1 31 32 1 32 7 1 32 33 1 33 8 1 33 34 1 34 9 1 34 35 1 35 10 1 35 36 1
		 36 11 1 36 37 1 37 12 1 37 38 1 38 13 1 38 39 1 39 14 1 39 40 1 40 15 1 40 41 1 41 16 1
		 41 42 1 42 17 1 42 43 1 43 18 1 43 44 1 44 19 1 44 45 1 45 20 1 45 46 1 46 21 1 46 47 1
		 47 22 1 47 48 1 48 23 1 48 49 1 49 24 1 49 25 1 25 0 1 50 51 1 51 26 1 26 25 1 25 50 1
		 51 52 1 52 27 1 52 53 1 53 28 1 53 54 1 54 29 1 54 55 1 55 30 1 55 56 1 56 31 1 56 57 1
		 57 32 1 57 58 1 58 33 1 58 59 1 59 34 1 59 60 1 60 35 1 60 61 1 61 36 1 61 62 1 62 37 1
		 62 63 1 63 38 1 63 64 1 64 39 1 64 65 1 65 40 1 65 66 1 66 41 1 66 67 1 67 42 1 67 68 1
		 68 43 1 68 69 1 69 44 1 69 70 1 70 45 1 70 71 1 71 46 1 71 72 1 72 47 1 72 73 1 73 48 1
		 73 74 1 74 49 1 74 50 1 75 76 1 76 51 1 50 75 1 76 77 1 77 52 1 77 78 1 78 53 1 78 79 1
		 79 54 1 79 80 1 80 55 1 80 81 1 81 56 1 81 82 1 82 57 1 82 83 1;
	setAttr ".ed[166:331]" 83 58 1 83 84 1 84 59 1 85 86 1 86 61 1 60 85 1 86 87 1
		 87 62 1 87 88 1 88 63 1 88 89 1 89 64 1 89 90 1 90 65 1 90 91 1 91 66 1 91 92 1 92 67 1
		 92 93 1 93 68 1 93 94 1 94 69 1 94 95 1 95 70 1 95 96 1 96 71 1 96 97 1 97 72 1 97 98 1
		 98 73 1 98 99 1 99 74 1 99 75 1 100 101 1 101 76 1 75 100 1 101 102 1 102 77 1 102 103 1
		 103 78 1 103 104 1 104 79 1 104 105 1 105 80 1 105 106 1 106 81 1 106 107 1 107 82 1
		 107 108 1 108 83 1 108 109 1 109 84 1 109 110 1 110 85 1 85 84 1 110 111 1 111 86 1
		 111 112 1 112 87 1 112 113 1 113 88 1 113 114 1 114 89 1 114 115 1 115 90 1 115 116 1
		 116 91 1 116 117 1 117 92 1 117 118 1 118 93 1 118 119 1 119 94 1 119 120 1 120 95 1
		 120 121 1 121 96 1 121 122 1 122 97 1 122 123 1 123 98 1 123 124 1 124 99 1 124 100 1
		 125 126 1 126 101 1 100 125 1 126 127 1 127 102 1 127 128 1 128 103 1 128 129 1 129 104 1
		 129 130 1 130 105 1 130 131 1 131 106 1 131 132 1 132 107 1 132 133 1 133 108 1 133 134 1
		 134 109 1 134 135 1 135 110 1 135 136 1 136 111 1 136 137 1 137 112 1 137 138 1 138 113 1
		 138 139 1 139 114 1 139 140 1 140 115 1 140 141 1 141 116 1 141 142 1 142 117 1 142 143 1
		 143 118 1 144 145 1 145 120 1 119 144 1 145 146 1 146 121 1 146 147 1 147 122 1 147 148 1
		 148 123 1 148 149 1 149 124 1 149 125 1 150 151 1 151 126 1 125 150 1 151 152 1 152 127 1
		 152 153 1 153 128 1 153 154 1 154 129 1 154 155 1 155 130 1 155 156 1 156 131 1 156 157 1
		 157 132 1 157 158 1 158 133 1 158 159 1 159 134 1 159 160 1 160 135 1 160 161 1 161 136 1
		 161 162 1 162 137 1 162 163 1 163 138 1 163 164 1 164 139 1 164 165 1 165 140 1 165 166 1
		 166 141 1;
	setAttr ".ed[332:497]" 166 167 1 167 142 1 167 168 1 168 143 1 168 169 1 169 144 1
		 144 143 1 169 170 1 170 145 1 170 171 1 171 146 1 171 172 1 172 147 1 172 173 1 173 148 1
		 173 174 1 174 149 1 174 150 1 175 176 1 176 151 1 150 175 1 176 177 1 177 152 1 177 178 1
		 178 153 1 178 179 1 179 154 1 179 180 1 180 155 1 180 181 1 181 156 1 181 182 1 182 157 1
		 182 183 1 183 158 1 183 184 1 184 159 1 184 185 1 185 160 1 185 186 1 186 161 1 186 187 1
		 187 162 1 187 188 1 188 163 1 188 189 1 189 164 1 189 190 1 190 165 1 190 191 1 191 166 1
		 191 192 1 192 167 1 192 193 1 193 168 1 193 194 1 194 169 1 194 195 1 195 170 1 195 196 1
		 196 171 1 196 197 1 197 172 1 197 198 1 198 173 1 198 199 1 199 174 1 199 175 1 200 201 1
		 201 176 1 175 200 1 201 202 1 202 177 1 203 204 1 204 179 1 178 203 1 204 205 1 205 180 1
		 205 206 1 206 181 1 206 207 1 207 182 1 207 208 1 208 183 1 208 209 1 209 184 1 209 210 1
		 210 185 1 210 211 1 211 186 1 211 212 1 212 187 1 212 213 1 213 188 1 213 214 1 214 189 1
		 214 215 1 215 190 1 215 216 1 216 191 1 216 217 1 217 192 1 217 218 1 218 193 1 218 219 1
		 219 194 1 219 220 1 220 195 1 220 221 1 221 196 1 221 222 1 222 197 1 222 223 1 223 198 1
		 223 224 1 224 199 1 224 200 1 225 226 1 226 201 1 200 225 1 226 227 1 227 202 1 227 228 1
		 228 203 1 203 202 1 228 229 1 229 204 1 229 230 1 230 205 1 230 231 1 231 206 1 231 232 1
		 232 207 1 232 233 1 233 208 1 233 234 1 234 209 1 234 235 1 235 210 1 235 236 1 236 211 1
		 236 237 1 237 212 1 237 238 1 238 213 1 238 239 1 239 214 1 239 240 1 240 215 1 240 241 1
		 241 216 1 241 242 1 242 217 1 242 243 1 243 218 1 243 244 1 244 219 1 244 245 1 245 220 1
		 245 246 1 246 221 1 246 247 1 247 222 1 247 248 1 248 223 1 248 249 1;
	setAttr ".ed[498:663]" 249 224 1 249 225 1 250 251 1 251 226 1 225 250 1 251 252 1
		 252 227 1 252 253 1 253 228 1 253 254 1 254 229 1 254 255 1 255 230 1 255 256 1 256 231 1
		 256 257 1 257 232 1 257 258 1 258 233 1 258 259 1 259 234 1 259 260 1 260 235 1 260 261 1
		 261 236 1 262 263 1 263 238 1 237 262 1 263 264 1 264 239 1 264 265 1 265 240 1 265 266 1
		 266 241 1 266 267 1 267 242 1 267 268 1 268 243 1 268 269 1 269 244 1 269 270 1 270 245 1
		 270 271 1 271 246 1 271 272 1 272 247 1 272 273 1 273 248 1 273 274 1 274 249 1 274 250 1
		 275 276 1 276 251 1 250 275 1 276 277 1 277 252 1 277 278 1 278 253 1 278 279 1 279 254 1
		 279 280 1 280 255 1 280 281 1 281 256 1 281 282 1 282 257 1 282 283 1 283 258 1 283 284 1
		 284 259 1 284 285 1 285 260 1 285 286 1 286 261 1 286 287 1 287 262 1 262 261 1 287 288 1
		 288 263 1 288 289 1 289 264 1 289 290 1 290 265 1 290 291 1 291 266 1 291 292 1 292 267 1
		 292 293 1 293 268 1 293 294 1 294 269 1 294 295 1 295 270 1 295 296 1 296 271 1 296 297 1
		 297 272 1 297 298 1 298 273 1 298 299 1 299 274 1 299 275 1 300 301 1 301 276 1 275 300 1
		 301 302 1 302 277 1 302 303 1 303 278 1 303 304 1 304 279 1 304 305 1 305 280 1 305 306 1
		 306 281 1 306 307 1 307 282 1 307 308 1 308 283 1 308 309 1 309 284 1 309 310 1 310 285 1
		 310 311 1 311 286 1 311 312 1 312 287 1 312 313 1 313 288 1 313 314 1 314 289 1 314 315 1
		 315 290 1 315 316 1 316 291 1 316 317 1 317 292 1 317 318 1 318 293 1 318 319 1 319 294 1
		 319 320 1 320 295 1 321 322 1 322 297 1 296 321 1 322 323 1 323 298 1 323 324 1 324 299 1
		 324 300 1 325 326 1 326 301 1 300 325 1 326 327 1 327 302 1 327 328 1 328 303 1 328 329 1
		 329 304 1 329 330 1 330 305 1 330 331 1 331 306 1 331 332 1 332 307 1;
	setAttr ".ed[664:829]" 332 333 1 333 308 1 333 334 1 334 309 1 334 335 1 335 310 1
		 335 336 1 336 311 1 336 337 1 337 312 1 337 338 1 338 313 1 338 339 1 339 314 1 339 340 1
		 340 315 1 340 341 1 341 316 1 341 342 1 342 317 1 342 343 1 343 318 1 343 344 1 344 319 1
		 344 345 1 345 320 1 345 346 1 346 321 1 321 320 1 346 347 1 347 322 1 347 348 1 348 323 1
		 348 349 1 349 324 1 349 325 1 350 351 1 351 326 1 325 350 1 351 352 1 352 327 1 352 353 1
		 353 328 1 353 354 1 354 329 1 354 355 1 355 330 1 355 356 1 356 331 1 356 357 1 357 332 1
		 357 358 1 358 333 1 358 359 1 359 334 1 359 360 1 360 335 1 360 361 1 361 336 1 361 362 1
		 362 337 1 362 363 1 363 338 1 363 364 1 364 339 1 364 365 1 365 340 1 365 366 1 366 341 1
		 366 367 1 367 342 1 367 368 1 368 343 1 368 369 1 369 344 1 369 370 1 370 345 1 370 371 1
		 371 346 1 371 372 1 372 347 1 372 373 1 373 348 1 373 374 1 374 349 1 374 350 1 375 376 1
		 376 351 1 350 375 1 376 377 1 377 352 1 377 378 1 378 353 1 378 379 1 379 354 1 380 381 1
		 381 356 1 355 380 1 381 382 1 382 357 1 382 383 1 383 358 1 383 384 1 384 359 1 384 385 1
		 385 360 1 385 386 1 386 361 1 386 387 1 387 362 1 387 388 1 388 363 1 388 389 1 389 364 1
		 389 390 1 390 365 1 390 391 1 391 366 1 391 392 1 392 367 1 392 393 1 393 368 1 393 394 1
		 394 369 1 394 395 1 395 370 1 395 396 1 396 371 1 396 397 1 397 372 1 397 398 1 398 373 1
		 398 399 1 399 374 1 399 375 1 400 401 1 401 376 1 375 400 1 401 402 1 402 377 1 402 403 1
		 403 378 1 403 404 1 404 379 1 404 405 1 405 380 1 380 379 1 405 406 1 406 381 1 406 407 1
		 407 382 1 407 408 1 408 383 1 408 409 1 409 384 1 409 410 1 410 385 1 410 411 1 411 386 1
		 411 412 1 412 387 1 412 413 1 413 388 1 413 414 1 414 389 1 414 415 1;
	setAttr ".ed[830:995]" 415 390 1 415 416 1 416 391 1 416 417 1 417 392 1 417 418 1
		 418 393 1 418 419 1 419 394 1 419 420 1 420 395 1 420 421 1 421 396 1 421 422 1 422 397 1
		 422 423 1 423 398 1 423 424 1 424 399 1 424 400 1 425 426 1 426 401 1 400 425 1 426 427 1
		 427 402 1 427 428 1 428 403 1 428 429 1 429 404 1 429 430 1 430 405 1 430 431 1 431 406 1
		 431 432 1 432 407 1 432 433 1 433 408 1 433 434 1 434 409 1 434 435 1 435 410 1 435 436 1
		 436 411 1 436 437 1 437 412 1 437 438 1 438 413 1 439 440 1 440 415 1 414 439 1 440 441 1
		 441 416 1 441 442 1 442 417 1 442 443 1 443 418 1 443 444 1 444 419 1 444 445 1 445 420 1
		 445 446 1 446 421 1 446 447 1 447 422 1 447 448 1 448 423 1 448 449 1 449 424 1 449 425 1
		 450 451 1 451 426 1 425 450 1 451 452 1 452 427 1 452 453 1 453 428 1 453 454 1 454 429 1
		 454 455 1 455 430 1 455 456 1 456 431 1 456 457 1 457 432 1 457 458 1 458 433 1 458 459 1
		 459 434 1 459 460 1 460 435 1 460 461 1 461 436 1 461 462 1 462 437 1 462 463 1 463 438 1
		 463 464 1 464 439 1 439 438 1 464 465 1 465 440 1 465 466 1 466 441 1 466 467 1 467 442 1
		 467 468 1 468 443 1 468 469 1 469 444 1 469 470 1 470 445 1 470 471 1 471 446 1 471 472 1
		 472 447 1 472 473 1 473 448 1 473 474 1 474 449 1 474 450 1 475 476 1 476 451 1 450 475 1
		 476 477 1 477 452 1 477 478 1 478 453 1 478 479 1 479 454 1 479 480 1 480 455 1 480 481 1
		 481 456 1 481 482 1 482 457 1 482 483 1 483 458 1 483 484 1 484 459 1 484 485 1 485 460 1
		 485 486 1 486 461 1 486 487 1 487 462 1 487 488 1 488 463 1 488 489 1 489 464 1 489 490 1
		 490 465 1 490 491 1 491 466 1 491 492 1 492 467 1 492 493 1 493 468 1 493 494 1 494 469 1
		 494 495 1 495 470 1 495 496 1 496 471 1 496 497 1 497 472 1 498 499 1;
	setAttr ".ed[996:1161]" 499 474 1 473 498 1 499 475 1 500 501 1 501 476 1 475 500 1
		 501 502 1 502 477 1 502 503 1 503 478 1 503 504 1 504 479 1 504 505 1 505 480 1 505 506 1
		 506 481 1 506 507 1 507 482 1 507 508 1 508 483 1 508 509 1 509 484 1 509 510 1 510 485 1
		 510 511 1 511 486 1 511 512 1 512 487 1 512 513 1 513 488 1 513 514 1 514 489 1 514 515 1
		 515 490 1 515 516 1 516 491 1 516 517 1 517 492 1 517 518 1 518 493 1 518 519 1 519 494 1
		 519 520 1 520 495 1 520 521 1 521 496 1 521 522 1 522 497 1 522 523 1 523 498 1 498 497 1
		 523 524 1 524 499 1 524 500 1 525 526 1 526 501 1 500 525 1 526 527 1 527 502 1 527 528 1
		 528 503 1 528 529 1 529 504 1 529 530 1 530 505 1 530 531 1 531 506 1 531 532 1 532 507 1
		 532 533 1 533 508 1 533 534 1 534 509 1 534 535 1 535 510 1 535 536 1 536 511 1 536 537 1
		 537 512 1 537 538 1 538 513 1 538 539 1 539 514 1 539 540 1 540 515 1 540 541 1 541 516 1
		 541 542 1 542 517 1 542 543 1 543 518 1 543 544 1 544 519 1 544 545 1 545 520 1 545 546 1
		 546 521 1 546 547 1 547 522 1 547 548 1 548 523 1 548 549 1 549 524 1 549 525 1 550 551 1
		 551 526 1 525 550 1 551 552 1 552 527 1 552 553 1 553 528 1 553 554 1 554 529 1 554 555 1
		 555 530 1 555 556 1 556 531 1 557 558 1 558 533 1 532 557 1 558 559 1 559 534 1 559 560 1
		 560 535 1 560 561 1 561 536 1 561 562 1 562 537 1 562 563 1 563 538 1 563 564 1 564 539 1
		 564 565 1 565 540 1 565 566 1 566 541 1 566 567 1 567 542 1 567 568 1 568 543 1 568 569 1
		 569 544 1 569 570 1 570 545 1 570 571 1 571 546 1 571 572 1 572 547 1 572 573 1 573 548 1
		 573 574 1 574 549 1 574 550 1 575 576 1 576 551 1 550 575 1 576 577 1 577 552 1 577 578 1
		 578 553 1 578 579 1 579 554 1 579 580 1 580 555 1 580 581 1 581 556 1;
	setAttr ".ed[1162:1327]" 581 582 1 582 557 1 557 556 1 582 583 1 583 558 1 583 584 1
		 584 559 1 584 585 1 585 560 1 585 586 1 586 561 1 586 587 1 587 562 1 587 588 1 588 563 1
		 588 589 1 589 564 1 589 590 1 590 565 1 590 591 1 591 566 1 591 592 1 592 567 1 592 593 1
		 593 568 1 593 594 1 594 569 1 594 595 1 595 570 1 595 596 1 596 571 1 596 597 1 597 572 1
		 597 598 1 598 573 1 598 599 1 599 574 1 599 575 1 601 576 1 575 600 1 602 577 1 603 578 1
		 604 579 1 605 580 1 606 581 1 607 582 1 608 583 1 609 584 1 610 585 1 611 586 1 612 587 1
		 613 588 1 614 589 1 615 590 1 617 592 1 591 616 1 618 593 1 619 594 1 620 595 1 621 596 1
		 622 597 1 623 598 1 624 599 1 628 627 1 627 626 1 626 625 1 625 628 1 636 635 1 635 634 1
		 634 633 1 633 636 1 640 639 1 639 638 1 638 637 1 637 640 1 644 643 1 643 642 1 642 641 1
		 641 644 1 652 651 1 651 650 1 650 649 1 649 652 1 656 655 1 655 654 1 654 653 1 653 656 1
		 660 659 1 659 658 1 658 657 1 657 660 1 668 667 1 667 666 1 666 665 1 665 668 1 626 1 1
		 0 625 1 627 26 1 628 25 1 629 630 1 630 60 1 59 629 1 630 631 1 631 85 1 631 632 1
		 632 84 1 632 629 1 634 119 1 118 633 1 635 144 1 636 143 1 638 178 1 177 637 1 639 203 1
		 640 202 1 642 237 1 236 641 1 643 262 1 644 261 1 645 646 1 646 296 1 295 645 1 646 647 1
		 647 321 1 647 648 1 648 320 1 648 645 1 650 355 1 354 649 1 651 380 1 652 379 1 654 414 1
		 413 653 1 655 439 1 656 438 1 658 473 1 472 657 1 659 498 1 660 497 1 661 662 1 662 532 1
		 531 661 1 662 663 1 663 557 1 663 664 1 664 556 1 664 661 1 666 591 1 590 665 1 667 616 1
		 668 615 1 672 671 1 671 670 1 670 669 1 669 672 1 676 675 1 675 674 1 674 673 1 673 676 1
		 680 679 1 679 678 1 678 677 1 677 680 1 670 630 1 629 669 1 671 631 1;
	setAttr ".ed[1328:1336]" 672 632 1 674 646 1 645 673 1 675 647 1 676 648 1 678 662 1
		 661 677 1 679 663 1 680 664 1;
	setAttr -s 658 -ch 2674 ".fc";
	setAttr ".fc[0:499]" -type "polyFaces" 
		f 25 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24
		f 25 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49
		f 4 50 51 -2 52
		f 4 53 54 -3 -52
		f 4 55 56 -4 -55
		f 4 57 58 -5 -57
		f 4 59 60 -6 -59
		f 4 61 62 -7 -61
		f 4 63 64 -8 -63
		f 4 65 66 -9 -65
		f 4 67 68 -10 -67
		f 4 69 70 -11 -69
		f 4 71 72 -12 -71
		f 4 73 74 -13 -73
		f 4 75 76 -14 -75
		f 4 77 78 -15 -77
		f 4 79 80 -16 -79
		f 4 81 82 -17 -81
		f 4 83 84 -18 -83
		f 4 85 86 -19 -85
		f 4 87 88 -20 -87
		f 4 89 90 -21 -89
		f 4 91 92 -22 -91
		f 4 93 94 -23 -93
		f 4 95 96 -24 -95
		f 4 97 98 -25 -97
		f 4 99 100 101 102
		f 4 103 104 -51 -101
		f 4 105 106 -54 -105
		f 4 107 108 -56 -107
		f 4 109 110 -58 -109
		f 4 111 112 -60 -111
		f 4 113 114 -62 -113
		f 4 115 116 -64 -115
		f 4 117 118 -66 -117
		f 4 119 120 -68 -119
		f 4 121 122 -70 -121
		f 4 123 124 -72 -123
		f 4 125 126 -74 -125
		f 4 127 128 -76 -127
		f 4 129 130 -78 -129
		f 4 131 132 -80 -131
		f 4 133 134 -82 -133
		f 4 135 136 -84 -135
		f 4 137 138 -86 -137
		f 4 139 140 -88 -139
		f 4 141 142 -90 -141
		f 4 143 144 -92 -143
		f 4 145 146 -94 -145
		f 4 147 148 -96 -147
		f 4 149 -103 -98 -149
		f 4 150 151 -100 152
		f 4 153 154 -104 -152
		f 4 155 156 -106 -155
		f 4 157 158 -108 -157
		f 4 159 160 -110 -159
		f 4 161 162 -112 -161
		f 4 163 164 -114 -163
		f 4 165 166 -116 -165
		f 4 167 168 -118 -167
		f 4 169 170 -122 171
		f 4 172 173 -124 -171
		f 4 174 175 -126 -174
		f 4 176 177 -128 -176
		f 4 178 179 -130 -178
		f 4 180 181 -132 -180
		f 4 182 183 -134 -182
		f 4 184 185 -136 -184
		f 4 186 187 -138 -186
		f 4 188 189 -140 -188
		f 4 190 191 -142 -190
		f 4 192 193 -144 -192
		f 4 194 195 -146 -194
		f 4 196 197 -148 -196
		f 4 198 -153 -150 -198
		f 4 199 200 -151 201
		f 4 202 203 -154 -201
		f 4 204 205 -156 -204
		f 4 206 207 -158 -206
		f 4 208 209 -160 -208
		f 4 210 211 -162 -210
		f 4 212 213 -164 -212
		f 4 214 215 -166 -214
		f 4 216 217 -168 -216
		f 4 218 219 220 -218
		f 4 221 222 -170 -220
		f 4 223 224 -173 -223
		f 4 225 226 -175 -225
		f 4 227 228 -177 -227
		f 4 229 230 -179 -229
		f 4 231 232 -181 -231
		f 4 233 234 -183 -233
		f 4 235 236 -185 -235
		f 4 237 238 -187 -237
		f 4 239 240 -189 -239
		f 4 241 242 -191 -241
		f 4 243 244 -193 -243
		f 4 245 246 -195 -245
		f 4 247 248 -197 -247
		f 4 249 -202 -199 -249
		f 4 250 251 -200 252
		f 4 253 254 -203 -252
		f 4 255 256 -205 -255
		f 4 257 258 -207 -257
		f 4 259 260 -209 -259
		f 4 261 262 -211 -261
		f 4 263 264 -213 -263
		f 4 265 266 -215 -265
		f 4 267 268 -217 -267
		f 4 269 270 -219 -269
		f 4 271 272 -222 -271
		f 4 273 274 -224 -273
		f 4 275 276 -226 -275
		f 4 277 278 -228 -277
		f 4 279 280 -230 -279
		f 4 281 282 -232 -281
		f 4 283 284 -234 -283
		f 4 285 286 -236 -285
		f 4 287 288 -240 289
		f 4 290 291 -242 -289
		f 4 292 293 -244 -292
		f 4 294 295 -246 -294
		f 4 296 297 -248 -296
		f 4 298 -253 -250 -298
		f 4 299 300 -251 301
		f 4 302 303 -254 -301
		f 4 304 305 -256 -304
		f 4 306 307 -258 -306
		f 4 308 309 -260 -308
		f 4 310 311 -262 -310
		f 4 312 313 -264 -312
		f 4 314 315 -266 -314
		f 4 316 317 -268 -316
		f 4 318 319 -270 -318
		f 4 320 321 -272 -320
		f 4 322 323 -274 -322
		f 4 324 325 -276 -324
		f 4 326 327 -278 -326
		f 4 328 329 -280 -328
		f 4 330 331 -282 -330
		f 4 332 333 -284 -332
		f 4 334 335 -286 -334
		f 4 336 337 338 -336
		f 4 339 340 -288 -338
		f 4 341 342 -291 -341
		f 4 343 344 -293 -343
		f 4 345 346 -295 -345
		f 4 347 348 -297 -347
		f 4 349 -302 -299 -349
		f 4 350 351 -300 352
		f 4 353 354 -303 -352
		f 4 355 356 -305 -355
		f 4 357 358 -307 -357
		f 4 359 360 -309 -359
		f 4 361 362 -311 -361
		f 4 363 364 -313 -363
		f 4 365 366 -315 -365
		f 4 367 368 -317 -367
		f 4 369 370 -319 -369
		f 4 371 372 -321 -371
		f 4 373 374 -323 -373
		f 4 375 376 -325 -375
		f 4 377 378 -327 -377
		f 4 379 380 -329 -379
		f 4 381 382 -331 -381
		f 4 383 384 -333 -383
		f 4 385 386 -335 -385
		f 4 387 388 -337 -387
		f 4 389 390 -340 -389
		f 4 391 392 -342 -391
		f 4 393 394 -344 -393
		f 4 395 396 -346 -395
		f 4 397 398 -348 -397
		f 4 399 -353 -350 -399
		f 4 400 401 -351 402
		f 4 403 404 -354 -402
		f 4 405 406 -358 407
		f 4 408 409 -360 -407
		f 4 410 411 -362 -410
		f 4 412 413 -364 -412
		f 4 414 415 -366 -414
		f 4 416 417 -368 -416
		f 4 418 419 -370 -418
		f 4 420 421 -372 -420
		f 4 422 423 -374 -422
		f 4 424 425 -376 -424
		f 4 426 427 -378 -426
		f 4 428 429 -380 -428
		f 4 430 431 -382 -430
		f 4 432 433 -384 -432
		f 4 434 435 -386 -434
		f 4 436 437 -388 -436
		f 4 438 439 -390 -438
		f 4 440 441 -392 -440
		f 4 442 443 -394 -442
		f 4 444 445 -396 -444
		f 4 446 447 -398 -446
		f 4 448 -403 -400 -448
		f 4 449 450 -401 451
		f 4 452 453 -404 -451
		f 4 454 455 456 -454
		f 4 457 458 -406 -456
		f 4 459 460 -409 -459
		f 4 461 462 -411 -461
		f 4 463 464 -413 -463
		f 4 465 466 -415 -465
		f 4 467 468 -417 -467
		f 4 469 470 -419 -469
		f 4 471 472 -421 -471
		f 4 473 474 -423 -473
		f 4 475 476 -425 -475
		f 4 477 478 -427 -477
		f 4 479 480 -429 -479
		f 4 481 482 -431 -481
		f 4 483 484 -433 -483
		f 4 485 486 -435 -485
		f 4 487 488 -437 -487
		f 4 489 490 -439 -489
		f 4 491 492 -441 -491
		f 4 493 494 -443 -493
		f 4 495 496 -445 -495
		f 4 497 498 -447 -497
		f 4 499 -452 -449 -499
		f 4 500 501 -450 502
		f 4 503 504 -453 -502
		f 4 505 506 -455 -505
		f 4 507 508 -458 -507
		f 4 509 510 -460 -509
		f 4 511 512 -462 -511
		f 4 513 514 -464 -513
		f 4 515 516 -466 -515
		f 4 517 518 -468 -517
		f 4 519 520 -470 -519
		f 4 521 522 -472 -521
		f 4 523 524 -476 525
		f 4 526 527 -478 -525
		f 4 528 529 -480 -528
		f 4 530 531 -482 -530
		f 4 532 533 -484 -532
		f 4 534 535 -486 -534
		f 4 536 537 -488 -536
		f 4 538 539 -490 -538
		f 4 540 541 -492 -540
		f 4 542 543 -494 -542
		f 4 544 545 -496 -544
		f 4 546 547 -498 -546
		f 4 548 -503 -500 -548
		f 4 549 550 -501 551
		f 4 552 553 -504 -551
		f 4 554 555 -506 -554
		f 4 556 557 -508 -556
		f 4 558 559 -510 -558
		f 4 560 561 -512 -560
		f 4 562 563 -514 -562
		f 4 564 565 -516 -564
		f 4 566 567 -518 -566
		f 4 568 569 -520 -568
		f 4 570 571 -522 -570
		f 4 572 573 574 -572
		f 4 575 576 -524 -574
		f 4 577 578 -527 -577
		f 4 579 580 -529 -579
		f 4 581 582 -531 -581
		f 4 583 584 -533 -583
		f 4 585 586 -535 -585
		f 4 587 588 -537 -587
		f 4 589 590 -539 -589
		f 4 591 592 -541 -591
		f 4 593 594 -543 -593
		f 4 595 596 -545 -595
		f 4 597 598 -547 -597
		f 4 599 -552 -549 -599
		f 4 600 601 -550 602
		f 4 603 604 -553 -602
		f 4 605 606 -555 -605
		f 4 607 608 -557 -607
		f 4 609 610 -559 -609
		f 4 611 612 -561 -611
		f 4 613 614 -563 -613
		f 4 615 616 -565 -615
		f 4 617 618 -567 -617
		f 4 619 620 -569 -619
		f 4 621 622 -571 -621
		f 4 623 624 -573 -623
		f 4 625 626 -576 -625
		f 4 627 628 -578 -627
		f 4 629 630 -580 -629
		f 4 631 632 -582 -631
		f 4 633 634 -584 -633
		f 4 635 636 -586 -635
		f 4 637 638 -588 -637
		f 4 639 640 -590 -639
		f 4 641 642 -594 643
		f 4 644 645 -596 -643
		f 4 646 647 -598 -646
		f 4 648 -603 -600 -648
		f 4 649 650 -601 651
		f 4 652 653 -604 -651
		f 4 654 655 -606 -654
		f 4 656 657 -608 -656
		f 4 658 659 -610 -658
		f 4 660 661 -612 -660
		f 4 662 663 -614 -662
		f 4 664 665 -616 -664
		f 4 666 667 -618 -666
		f 4 668 669 -620 -668
		f 4 670 671 -622 -670
		f 4 672 673 -624 -672
		f 4 674 675 -626 -674
		f 4 676 677 -628 -676
		f 4 678 679 -630 -678
		f 4 680 681 -632 -680
		f 4 682 683 -634 -682
		f 4 684 685 -636 -684
		f 4 686 687 -638 -686
		f 4 688 689 -640 -688
		f 4 690 691 692 -690
		f 4 693 694 -642 -692
		f 4 695 696 -645 -695
		f 4 697 698 -647 -697
		f 4 699 -652 -649 -699
		f 4 700 701 -650 702
		f 4 703 704 -653 -702
		f 4 705 706 -655 -705
		f 4 707 708 -657 -707
		f 4 709 710 -659 -709
		f 4 711 712 -661 -711
		f 4 713 714 -663 -713
		f 4 715 716 -665 -715
		f 4 717 718 -667 -717
		f 4 719 720 -669 -719
		f 4 721 722 -671 -721
		f 4 723 724 -673 -723
		f 4 725 726 -675 -725
		f 4 727 728 -677 -727
		f 4 729 730 -679 -729
		f 4 731 732 -681 -731
		f 4 733 734 -683 -733
		f 4 735 736 -685 -735
		f 4 737 738 -687 -737
		f 4 739 740 -689 -739
		f 4 741 742 -691 -741
		f 4 743 744 -694 -743
		f 4 745 746 -696 -745
		f 4 747 748 -698 -747
		f 4 749 -703 -700 -749
		f 4 750 751 -701 752
		f 4 753 754 -704 -752
		f 4 755 756 -706 -755
		f 4 757 758 -708 -757
		f 4 759 760 -712 761
		f 4 762 763 -714 -761
		f 4 764 765 -716 -764
		f 4 766 767 -718 -766
		f 4 768 769 -720 -768
		f 4 770 771 -722 -770
		f 4 772 773 -724 -772
		f 4 774 775 -726 -774
		f 4 776 777 -728 -776
		f 4 778 779 -730 -778
		f 4 780 781 -732 -780
		f 4 782 783 -734 -782
		f 4 784 785 -736 -784
		f 4 786 787 -738 -786
		f 4 788 789 -740 -788
		f 4 790 791 -742 -790
		f 4 792 793 -744 -792
		f 4 794 795 -746 -794
		f 4 796 797 -748 -796
		f 4 798 -753 -750 -798
		f 4 799 800 -751 801
		f 4 802 803 -754 -801
		f 4 804 805 -756 -804
		f 4 806 807 -758 -806
		f 4 808 809 810 -808
		f 4 811 812 -760 -810
		f 4 813 814 -763 -813
		f 4 815 816 -765 -815
		f 4 817 818 -767 -817
		f 4 819 820 -769 -819
		f 4 821 822 -771 -821
		f 4 823 824 -773 -823
		f 4 825 826 -775 -825
		f 4 827 828 -777 -827
		f 4 829 830 -779 -829
		f 4 831 832 -781 -831
		f 4 833 834 -783 -833
		f 4 835 836 -785 -835
		f 4 837 838 -787 -837
		f 4 839 840 -789 -839
		f 4 841 842 -791 -841
		f 4 843 844 -793 -843
		f 4 845 846 -795 -845
		f 4 847 848 -797 -847
		f 4 849 -802 -799 -849
		f 4 850 851 -800 852
		f 4 853 854 -803 -852
		f 4 855 856 -805 -855
		f 4 857 858 -807 -857
		f 4 859 860 -809 -859
		f 4 861 862 -812 -861
		f 4 863 864 -814 -863
		f 4 865 866 -816 -865
		f 4 867 868 -818 -867
		f 4 869 870 -820 -869
		f 4 871 872 -822 -871
		f 4 873 874 -824 -873
		f 4 875 876 -826 -875
		f 4 877 878 -830 879
		f 4 880 881 -832 -879
		f 4 882 883 -834 -882
		f 4 884 885 -836 -884
		f 4 886 887 -838 -886
		f 4 888 889 -840 -888
		f 4 890 891 -842 -890
		f 4 892 893 -844 -892
		f 4 894 895 -846 -894
		f 4 896 897 -848 -896
		f 4 898 -853 -850 -898
		f 4 899 900 -851 901
		f 4 902 903 -854 -901
		f 4 904 905 -856 -904
		f 4 906 907 -858 -906
		f 4 908 909 -860 -908
		f 4 910 911 -862 -910
		f 4 912 913 -864 -912
		f 4 914 915 -866 -914
		f 4 916 917 -868 -916
		f 4 918 919 -870 -918
		f 4 920 921 -872 -920
		f 4 922 923 -874 -922
		f 4 924 925 -876 -924
		f 4 926 927 928 -926
		f 4 929 930 -878 -928
		f 4 931 932 -881 -931
		f 4 933 934 -883 -933
		f 4 935 936 -885 -935
		f 4 937 938 -887 -937
		f 4 939 940 -889 -939
		f 4 941 942 -891 -941
		f 4 943 944 -893 -943
		f 4 945 946 -895 -945
		f 4 947 948 -897 -947
		f 4 949 -902 -899 -949
		f 4 950 951 -900 952
		f 4 953 954 -903 -952
		f 4 955 956 -905 -955
		f 4 957 958 -907 -957
		f 4 959 960 -909 -959
		f 4 961 962 -911 -961
		f 4 963 964 -913 -963
		f 4 965 966 -915 -965
		f 4 967 968 -917 -967
		f 4 969 970 -919 -969
		f 4 971 972 -921 -971
		f 4 973 974 -923 -973
		f 4 975 976 -925 -975
		f 4 977 978 -927 -977
		f 4 979 980 -930 -979
		f 4 981 982 -932 -981
		f 4 983 984 -934 -983
		f 4 985 986 -936 -985
		f 4 987 988 -938 -987
		f 4 989 990 -940 -989
		f 4 991 992 -942 -991
		f 4 993 994 -944 -993
		f 4 995 996 -948 997
		f 4 998 -953 -950 -997
		f 4 999 1000 -951 1001
		f 4 1002 1003 -954 -1001
		f 4 1004 1005 -956 -1004
		f 4 1006 1007 -958 -1006
		f 4 1008 1009 -960 -1008
		f 4 1010 1011 -962 -1010
		f 4 1012 1013 -964 -1012
		f 4 1014 1015 -966 -1014
		f 4 1016 1017 -968 -1016
		f 4 1018 1019 -970 -1018
		f 4 1020 1021 -972 -1020
		f 4 1022 1023 -974 -1022
		f 4 1024 1025 -976 -1024
		f 4 1026 1027 -978 -1026
		f 4 1028 1029 -980 -1028
		f 4 1030 1031 -982 -1030
		f 4 1032 1033 -984 -1032
		f 4 1034 1035 -986 -1034
		f 4 1036 1037 -988 -1036
		f 4 1038 1039 -990 -1038
		f 4 1040 1041 -992 -1040
		f 4 1042 1043 -994 -1042
		f 4 1044 1045 1046 -1044
		f 4 1047 1048 -996 -1046
		f 4 1049 -1002 -999 -1049
		f 4 1050 1051 -1000 1052
		f 4 1053 1054 -1003 -1052
		f 4 1055 1056 -1005 -1055
		f 4 1057 1058 -1007 -1057
		f 4 1059 1060 -1009 -1059
		f 4 1061 1062 -1011 -1061
		f 4 1063 1064 -1013 -1063;
	setAttr ".fc[500:657]"
		f 4 1065 1066 -1015 -1065
		f 4 1067 1068 -1017 -1067
		f 4 1069 1070 -1019 -1069
		f 4 1071 1072 -1021 -1071
		f 4 1073 1074 -1023 -1073
		f 4 1075 1076 -1025 -1075
		f 4 1077 1078 -1027 -1077
		f 4 1079 1080 -1029 -1079
		f 4 1081 1082 -1031 -1081
		f 4 1083 1084 -1033 -1083
		f 4 1085 1086 -1035 -1085
		f 4 1087 1088 -1037 -1087
		f 4 1089 1090 -1039 -1089
		f 4 1091 1092 -1041 -1091
		f 4 1093 1094 -1043 -1093
		f 4 1095 1096 -1045 -1095
		f 4 1097 1098 -1048 -1097
		f 4 1099 -1053 -1050 -1099
		f 4 1100 1101 -1051 1102
		f 4 1103 1104 -1054 -1102
		f 4 1105 1106 -1056 -1105
		f 4 1107 1108 -1058 -1107
		f 4 1109 1110 -1060 -1109
		f 4 1111 1112 -1062 -1111
		f 4 1113 1114 -1066 1115
		f 4 1116 1117 -1068 -1115
		f 4 1118 1119 -1070 -1118
		f 4 1120 1121 -1072 -1120
		f 4 1122 1123 -1074 -1122
		f 4 1124 1125 -1076 -1124
		f 4 1126 1127 -1078 -1126
		f 4 1128 1129 -1080 -1128
		f 4 1130 1131 -1082 -1130
		f 4 1132 1133 -1084 -1132
		f 4 1134 1135 -1086 -1134
		f 4 1136 1137 -1088 -1136
		f 4 1138 1139 -1090 -1138
		f 4 1140 1141 -1092 -1140
		f 4 1142 1143 -1094 -1142
		f 4 1144 1145 -1096 -1144
		f 4 1146 1147 -1098 -1146
		f 4 1148 -1103 -1100 -1148
		f 4 1149 1150 -1101 1151
		f 4 1152 1153 -1104 -1151
		f 4 1154 1155 -1106 -1154
		f 4 1156 1157 -1108 -1156
		f 4 1158 1159 -1110 -1158
		f 4 1160 1161 -1112 -1160
		f 4 1162 1163 1164 -1162
		f 4 1165 1166 -1114 -1164
		f 4 1167 1168 -1117 -1167
		f 4 1169 1170 -1119 -1169
		f 4 1171 1172 -1121 -1171
		f 4 1173 1174 -1123 -1173
		f 4 1175 1176 -1125 -1175
		f 4 1177 1178 -1127 -1177
		f 4 1179 1180 -1129 -1179
		f 4 1181 1182 -1131 -1181
		f 4 1183 1184 -1133 -1183
		f 4 1185 1186 -1135 -1185
		f 4 1187 1188 -1137 -1187
		f 4 1189 1190 -1139 -1189
		f 4 1191 1192 -1141 -1191
		f 4 1193 1194 -1143 -1193
		f 4 1195 1196 -1145 -1195
		f 4 1197 1198 -1147 -1197
		f 4 1199 -1152 -1149 -1199
		f 4 -49 1200 -1150 1201
		f 4 -48 1202 -1153 -1201
		f 4 -47 1203 -1155 -1203
		f 4 -46 1204 -1157 -1204
		f 4 -45 1205 -1159 -1205
		f 4 -44 1206 -1161 -1206
		f 4 -43 1207 -1163 -1207
		f 4 -42 1208 -1166 -1208
		f 4 -41 1209 -1168 -1209
		f 4 -40 1210 -1170 -1210
		f 4 -39 1211 -1172 -1211
		f 4 -38 1212 -1174 -1212
		f 4 -37 1213 -1176 -1213
		f 4 -36 1214 -1178 -1214
		f 4 -35 1215 -1180 -1215
		f 4 -33 1216 -1184 1217
		f 4 -32 1218 -1186 -1217
		f 4 -31 1219 -1188 -1219
		f 4 -30 1220 -1190 -1220
		f 4 -29 1221 -1192 -1221
		f 4 -28 1222 -1194 -1222
		f 4 -27 1223 -1196 -1223
		f 4 -26 1224 -1198 -1224
		f 4 -50 -1202 -1200 -1225
		f 4 1225 1226 1227 1228
		f 4 1229 1230 1231 1232
		f 4 1233 1234 1235 1236
		f 4 1237 1238 1239 1240
		f 4 1241 1242 1243 1244
		f 4 1245 1246 1247 1248
		f 4 1249 1250 1251 1252
		f 4 1253 1254 1255 1256
		f 4 -1228 1257 -1 1258
		f 4 -1227 1259 -53 -1258
		f 4 -1226 1260 -102 -1260
		f 4 -1229 -1259 -99 -1261
		f 4 1261 1262 -120 1263
		f 4 1264 1265 -172 -1263
		f 4 1266 1267 -221 -1266
		f 4 1268 -1264 -169 -1268
		f 4 -1232 1269 -238 1270
		f 4 -1231 1271 -290 -1270
		f 4 -1230 1272 -339 -1272
		f 4 -1233 -1271 -287 -1273
		f 4 -1236 1273 -356 1274
		f 4 -1235 1275 -408 -1274
		f 4 -1234 1276 -457 -1276
		f 4 -1237 -1275 -405 -1277
		f 4 -1240 1277 -474 1278
		f 4 -1239 1279 -526 -1278
		f 4 -1238 1280 -575 -1280
		f 4 -1241 -1279 -523 -1281
		f 4 1281 1282 -592 1283
		f 4 1284 1285 -644 -1283
		f 4 1286 1287 -693 -1286
		f 4 1288 -1284 -641 -1288
		f 4 -1244 1289 -710 1290
		f 4 -1243 1291 -762 -1290
		f 4 -1242 1292 -811 -1292
		f 4 -1245 -1291 -759 -1293
		f 4 -1248 1293 -828 1294
		f 4 -1247 1295 -880 -1294
		f 4 -1246 1296 -929 -1296
		f 4 -1249 -1295 -877 -1297
		f 4 -1252 1297 -946 1298
		f 4 -1251 1299 -998 -1298
		f 4 -1250 1300 -1047 -1300
		f 4 -1253 -1299 -995 -1301
		f 4 1301 1302 -1064 1303
		f 4 1304 1305 -1116 -1303
		f 4 1306 1307 -1165 -1306
		f 4 1308 -1304 -1113 -1308
		f 4 -1256 1309 -1182 1310
		f 4 -1255 1311 -1218 -1310
		f 4 -1254 1312 -34 -1312
		f 4 -1257 -1311 -1216 -1313
		f 4 1313 1314 1315 1316
		f 4 1317 1318 1319 1320
		f 4 1321 1322 1323 1324
		f 4 -1316 1325 -1262 1326
		f 4 -1315 1327 -1265 -1326
		f 4 -1314 1328 -1267 -1328
		f 4 -1317 -1327 -1269 -1329
		f 4 -1320 1329 -1282 1330
		f 4 -1319 1331 -1285 -1330
		f 4 -1318 1332 -1287 -1332
		f 4 -1321 -1331 -1289 -1333
		f 4 -1324 1333 -1302 1334
		f 4 -1323 1335 -1305 -1334
		f 4 -1322 1336 -1307 -1336
		f 4 -1325 -1335 -1309 -1337;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode houdiniAsset -n "hunte__dev__Tree_subnet__1_01" -p "Globe_Core";
	rename -uid "B2191B85-42B5-8FF1-CBD6-C5BC88F03C5D";
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
	setAttr ".t" -type "double3" -0.03211222565575645 0.9748008423778648 -0.25715674412868228 ;
	setAttr ".s" -type "double3" 0.042426509627468308 0.042426509627468308 0.042426509627468308 ;
	setAttr ".rp" -type "double3" -0.21171423628097893 0.02676161088789843 -0.10978134400248239 ;
	setAttr ".sp" -type "double3" -4.9901403188705444 0.63077569007873535 -2.5875648260116577 ;
	setAttr ".spt" -type "double3" 4.7784260825895659 -0.60401407919083694 2.4777834820091753 ;
	setAttr ".otlFilePath" -type "string" "C:/Users/hunte/Documents/houdini19.5/otls/object_hunte.dev.Tree_subnet.1.0.hdanc";
	setAttr ".assetName" -type "string" "hunte::dev::Object/Tree_subnet::1.0";
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
	setAttr -cb on ".houdiniAssetParm_bend" 19;
	setAttr -cb on ".houdiniAssetParm_selectamount1" 1;
	setAttr -cb on ".houdiniAssetParm_dist" 0.80000001192092896;
	setAttr -cb on ".houdiniAssetParm_selectamount2" 2;
	setAttr -cb on ".houdiniAssetParm_dist2" 0.38999998569488525;
	setAttr -cb on ".houdiniAssetParm_bend2" -10;
createNode transform -n "tube_object1" -p "hunte__dev__Tree_subnet__1_01";
	rename -uid "0DA81BD0-4401-C86B-FE26-3BBC0D90FCB4";
createNode transform -n "lineartaper2_0" -p "|Globe_Core|hunte__dev__Tree_subnet__1_01|tube_object1";
	rename -uid "56C8BAAC-4DA4-20C3-4D34-5AA9AE1780F0";
	setAttr ".rp" -type "double3" -4.9901403188705444 0.63077569007873535 -2.5875648260116577 ;
	setAttr ".sp" -type "double3" -4.9901403188705444 0.63077569007873535 -2.5875648260116577 ;
createNode mesh -n "lineartaper2_0Shape" -p "|Globe_Core|hunte__dev__Tree_subnet__1_01|tube_object1|lineartaper2_0";
	rename -uid "3B595388-4E50-C397-8A80-3794A4E23F72";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "lineartaper2_2" -p "|Globe_Core|hunte__dev__Tree_subnet__1_01|tube_object1";
	rename -uid "CB78BB61-4A00-B376-CCF5-75BBA39CC4FD";
	setAttr ".t" -type "double3" -0.089657268737255436 0.88278438302299655 13.455918720094745 ;
	setAttr ".r" -type "double3" 88.303575555468697 -56.902337163976462 -61.286343914410359 ;
	setAttr ".rp" -type "double3" -4.9901403188705444 0.63077569007873535 -2.5875648260116577 ;
	setAttr ".sp" -type "double3" -4.9901403188705444 0.63077569007873535 -2.5875648260116577 ;
createNode mesh -n "lineartaper2_2Shape" -p "lineartaper2_2";
	rename -uid "075CDE31-461B-A934-4CB5-669AB408FE60";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 2 "f[591:598]" "f[643:645]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[643:645]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 693 ".vt";
	setAttr ".vt[0:165]"  -5.75921392 2.58276224 -3.65818167 -5.76133823 2.57489157 -3.67650294
		 -5.7675786 2.56498146 -3.69278145 -5.77754211 2.5536561 -3.70599461 -5.79060316 2.5416255 -3.715312
		 -5.8059411 2.52964687 -3.72014809 -5.82259178 2.51847124 -3.72019911 -5.83950996 2.50880337 -3.71546173
		 -5.85563135 2.50124788 -3.70623374 -5.86994362 2.49628162 -3.69309521 -5.88154793 2.49421597 -3.6768713
		 -5.88971424 2.49518013 -3.65858126 -5.89392948 2.49911356 -3.63937473 -5.89392948 2.50577021 -3.6204586
		 -5.88971424 2.51473188 -3.60302114 -5.88154793 2.52543402 -3.58815837 -5.86994362 2.53720474 -3.57680321
		 -5.85563135 2.54930496 -3.56967044 -5.83950996 2.56097412 -3.56720757 -5.82259178 2.57147789 -3.56956911
		 -5.8059411 2.58015871 -3.57660747 -5.79060316 2.58646917 -3.58787966 -5.77754211 2.5900135 -3.60267758
		 -5.7675786 2.59056854 -3.62007165 -5.76133823 2.58809996 -3.63896894 -5.64028645 2.43364334 -3.60570645
		 -5.64289856 2.42408562 -3.62804747 -5.65056896 2.41210747 -3.64792228 -5.662817 2.39846277 -3.66408157
		 -5.67887306 2.38400936 -3.67551041 -5.6977272 2.36965418 -3.68149042 -5.71819592 2.35630035 -3.68164587
		 -5.73899269 2.34478617 -3.67596745 -5.75881052 2.33583593 -3.66481137 -5.77640438 2.33001137 -3.64887905
		 -5.79066849 2.32767868 -3.62917113 -5.80070734 2.32898474 -3.60692644 -5.80588913 2.33384609 -3.58354211
		 -5.80588913 2.341959 -3.56048799 -5.80070734 2.35281324 -3.5392127 -5.79066849 2.36572599 -3.52105212
		 -5.77640438 2.37988663 -3.5071485 -5.75881004 2.39440536 -3.4983747 -5.73899269 2.40836954 -3.49528265
		 -5.71819592 2.42090225 -3.49806595 -5.6977272 2.43121576 -3.50655031 -5.67887306 2.43866253 -3.52020216
		 -5.662817 2.44277334 -3.5381639 -5.65056896 2.44329119 -3.5593071 -5.64289856 2.44018316 -3.58230305
		 -5.52343035 2.28279448 -3.55262232 -5.52653646 2.27156019 -3.5789876 -5.53565979 2.25755167 -3.60247135
		 -5.55022764 2.24164724 -3.62159777 -5.56932354 2.22484684 -3.63516474 -5.59174824 2.20820665 -3.64232063
		 -5.61609268 2.19277239 -3.6426158 -5.64082766 2.1795125 -3.63603067 -5.66439819 2.16926241 -3.62298012
		 -5.68532372 2.16266298 -3.60428333 -5.7022891 2.16013193 -3.58111572 -5.71422863 2.16182661 -3.55493259
		 -5.72039223 2.16764116 -3.52737951 -5.72039223 2.17721033 -3.5001874 -5.71422863 2.18993235 -3.47506499
		 -5.7022891 2.20500803 -3.45359087 -5.68532372 2.22148991 -3.437114 -5.66439819 2.23834419 -3.42667031
		 -5.64082718 2.25450802 -3.42291498 -5.61609268 2.26896954 -3.42608547 -5.59174824 2.28081799 -3.43598104
		 -5.56932354 2.2893095 -3.45198059 -5.55022717 2.29391098 -3.47307968 -5.53565979 2.2943325 -3.49795103
		 -5.52653646 2.29054737 -3.52503252 -5.40867376 2.13024092 -3.49893856 -5.41228199 2.1173439 -3.52933216
		 -5.42287874 2.10134029 -3.55643773 -5.43979931 2.083235264 -3.57855177 -5.46197987 2.064166546 -3.59428501
		 -5.48802662 2.045332432 -3.60264897 -5.51630306 2.027915955 -3.6031177 -5.54503345 2.013011932 -3.59566212
		 -5.57241106 2.0015568733 -3.5807507 -5.5967164 1.99426973 -3.55931997 -5.61642218 1.99160898 -3.53271675
		 -5.63029003 1.99374163 -3.50261259 -5.63744926 2.00053405762 -3.47089934 -5.63744926 2.01155901 -3.43956947
		 -5.63029003 2.026124001 -3.41059113 -5.61642218 2.043314457 -3.38578606 -5.59671593 2.062048912 -3.36671185
		 -5.57241058 2.081151009 -3.35456753 -5.54503345 2.099420071 -3.35011625 -5.51630306 2.11570835 -3.35363722
		 -5.48802662 2.12899303 -3.36490965 -5.46197987 2.1384387 -3.3832252 -5.43979931 2.14345217 -3.40743303
		 -5.42287874 2.14371824 -3.43601203 -5.41228199 2.13922024 -3.46716642 -5.2960434 1.97600758 -3.44466352
		 -5.30015993 1.96146095 -3.47909045 -5.31225109 1.9435004 -3.50983119 -5.33155632 1.92325509 -3.53495431
		 -5.3568635 1.90199649 -3.552881 -5.38658237 1.88106048 -3.56248546 -5.41884518 1.86176288 -3.56316376
		 -5.45162487 1.84531581 -3.55487299 -5.48286247 1.83275282 -3.53813457 -5.51059389 1.82486308 -3.51399994
		 -5.53307772 1.8221432 -3.48398638 -5.5489006 1.82476318 -3.44997835 -5.55706882 1.83255875 -3.414114
		 -5.55706882 1.84503996 -3.3786459 -5.5489006 1.86142242 -3.34580326 -5.53307772 1.88067734 -3.31764936
		 -5.51059389 1.90159452 -3.29595327 -5.48286247 1.92285955 -3.28207827 -5.45162487 1.9431361 -3.276896
		 -5.41884518 1.96115053 -3.28073263 -5.38658237 1.97577083 -3.29334664 -5.3568635 1.98607814 -3.31394529
		 -5.33155632 1.99142516 -3.34123468 -5.31225061 1.99147546 -3.37350011 -5.30015993 1.98622644 -3.40871382
		 -5.18556738 1.82012236 -3.38980746 -5.1901989 1.80393875 -3.42827201 -5.20380306 1.78405941 -3.46266127
		 -5.22552538 1.76173437 -3.49081469 -5.25399971 1.73836505 -3.51096296 -5.28743839 1.71542084 -3.52184057
		 -5.32373905 1.69434321 -3.52276349 -5.36062145 1.67645609 -3.51367426 -5.39576817 1.66288412 -3.49514389
		 -5.42697048 1.65447915 -3.46833611 -5.4522686 1.65177023 -3.43493629 -5.47007179 1.6549269 -3.39704227
		 -5.47926235 1.66375124 -3.3570354 -5.47926235 1.67768872 -3.31742954 -5.47007179 1.69586337 -3.28071308
		 -5.4522686 1.71713364 -3.24919343 -5.42697048 1.74016201 -3.22485018 -5.39576817 1.76350319 -3.20921421
		 -5.36062145 1.785689 -3.2032671 -5.32373905 1.8053261 -3.20738244 -5.28743792 1.82118094 -3.22130203
		 -5.25399971 1.83225667 -3.24415135 -5.2255249 1.8378576 -3.27449465 -5.20380306 1.83763158 -3.3104248
		 -5.1901989 1.83159363 -3.34968472 -5.077272415 1.66261113 -3.33437896 -5.082425594 1.64480364 -3.37688541
		 -5.097561836 1.62304413 -3.41493702 -5.12172937 1.59869993 -3.4461422 -5.15341043 1.57330096 -3.46854067
		 -5.19061375 1.54844272 -3.48072457 -5.23100233 1.5256871 -3.48192859 -5.27203798 1.5064646 -3.47207737
		 -5.31114197 1.49198186 -3.45178938 -5.3458581 1.48315012 -3.42233968 -5.37400436 1.48052347 -3.38557863
		 -5.39381218 1.48426735 -3.34381628 -5.40403748 1.49414647 -3.29967642 -5.40403748 1.50953996 -3.25593257
		 -5.39381218 1.52948058 -3.21533346 -5.37400436 1.55271566 -3.18042994;
	setAttr ".vt[166:331]" -5.3458581 1.57778513 -3.1534152 -5.31114197 1.60311353 -3.13598657
		 -5.27203751 1.62710965 -3.12923932 -5.23100233 1.64826524 -3.13359714 -5.19061375 1.66525209 -3.14878678
		 -5.15341043 1.67700207 -3.17385292 -5.12172937 1.68277633 -3.20722151 -5.097561836 1.68221343 -3.24679542
		 -5.082425594 1.67534792 -3.2900877 -4.97118473 1.50350177 -3.27838802 -4.97686577 1.48408353 -3.32494164
		 -4.99355125 1.46048248 -3.3666687 -5.020193577 1.43418157 -3.40094757 -5.055117607 1.40683305 -3.42562437
		 -5.096130371 1.38015616 -3.43914843 -5.14065361 1.3558265 -3.44066978 -5.1858902 1.33537281 -3.43009329
		 -5.22899818 1.3200804 -3.40808344 -5.26726818 1.31090987 -3.37602282 -5.29829597 1.30843818 -3.33592606
		 -5.32013178 1.3128196 -3.29031301 -5.33140421 1.3237797 -3.24204922 -5.33140421 1.34062922 -3.19416761
		 -5.32013178 1.36231005 -3.14967632 -5.29829597 1.38745916 -3.11137128 -5.26726818 1.41449702 -3.081659317
		 -5.22899818 1.44172442 -3.062407255 -5.1858902 1.46743047 -3.054824591 -5.14065361 1.48999989 -3.059388161
		 -5.096130371 1.50801528 -3.075810909 -5.055117607 1.52034366 -3.10306096 -5.020193577 1.52621114 -3.13942623
		 -4.99355125 1.52524889 -3.18262196 -4.97686577 1.51751697 -3.22993326 -4.86733103 1.34282124 -3.22184443
		 -4.87354517 1.32180536 -3.27244949 -4.89179707 1.2964021 -3.31786609 -4.9209404 1.26820672 -3.35524035
		 -4.95914364 1.23899138 -3.38222432 -5.0040063858 1.21059144 -3.39712214 -5.052709579 1.18479192 -3.39899778
		 -5.10219336 1.16321361 -3.38773346 -5.14934826 1.14721191 -3.3640368 -5.19121122 1.13779271 -3.3293972
		 -5.22515202 1.135548 -3.28599048 -5.24903822 1.14061868 -3.23654461 -5.26136875 1.15268576 -3.18416619
		 -5.26136875 1.17099154 -3.1321466 -5.24903822 1.19438589 -3.083754063 -5.22515202 1.22139823 -3.042029619
		 -5.19121122 1.25033152 -3.0095949173 -5.14934826 1.27936828 -2.98848748 -5.10219336 1.30668342 -2.98003411
		 -5.052709579 1.33056056 -2.98476577 -5.0040063858 1.34949982 -3.0023851395 -4.95914364 1.36231148 -3.03178525
		 -4.9209404 1.36818969 -3.071118593 -4.89179707 1.36676562 -3.11791372 -4.87354517 1.35812843 -3.1692307
		 -4.76573706 1.18059695 -3.16475749 -4.77249002 1.15799725 -3.21941876 -4.79232502 1.13083088 -3.26853895
		 -4.82399511 1.10080421 -3.30903101 -4.86551046 1.069803834 -3.33835101 -4.91426277 1.039778352 -3.3546567
		 -4.96718931 1.012614369 -3.35692358 -5.020963192 0.99001777 -3.34500909 -5.072206497 0.9734093 -3.31966162
		 -5.11769962 0.96383202 -3.28247452 -5.15458298 0.96188772 -3.23578358 -5.18054008 0.96769893 -3.18252325
		 -5.19393969 0.98089993 -3.12603974 -5.19393969 1.00066196918 -3.069882154 -5.18054008 1.025742888 -3.017579079
		 -5.15458298 1.054566741 -2.97241688 -5.11769962 1.085322976 -2.93723345 -5.072206497 1.11607802 -2.91423917
		 -5.020963192 1.1449002 -2.90487909 -4.96718931 1.16997826 -2.9097414 -4.91426325 1.18973672 -2.9285202
		 -4.86551046 1.20293343 -2.96003604 -4.82399464 1.20874012 -3.0023083687 -4.79232502 1.20679152 -3.052681208
		 -4.77249002 1.19720948 -3.10798931 -4.66642761 1.01685822 -3.10713744 -4.67372465 0.9926883 -3.16585994
		 -4.69515705 0.96379817 -3.21869731 -4.7293787 0.93200362 -3.26232958 -4.77423811 0.8993026 -3.29401517
		 -4.82691813 0.86774909 -3.31176329 -4.88410759 0.83932602 -3.31445837 -4.94221306 0.81581986 -3.30193186
		 -4.99758434 0.79870665 -3.27497005 -5.046741962 0.78906238 -3.23526716 -5.086596489 0.78749263 -3.18531847
		 -5.11464453 0.79409635 -3.1282618 -5.12912369 0.80845892 -3.067682505 -5.12912369 0.82967699 -3.0073869228
		 -5.11464453 0.85641754 -2.95116377 -5.086596489 0.88700092 -2.90254569 -5.046741486 0.919505 -2.86458731
		 -4.99758434 0.95188773 -2.839674 -4.94221306 0.98211443 -2.82937121 -4.88410759 1.0082851648 -2.83432579
		 -4.82691765 1.028756499 -2.85422707 -4.77423811 1.042241693 -2.8878243 -4.7293787 1.047892928 -2.93300653
		 -4.69515705 1.045356154 -2.98693442 -4.67372465 1.034789681 -3.046219826 -4.56942797 0.85163343 -3.048994541
		 -4.57727385 0.8259064 -3.11178303 -4.60031843 0.7953335 -3.16835165 -4.63711357 0.76183474 -3.21514654
		 -4.68534756 0.72751629 -3.24922729 -4.74198961 0.69453347 -3.26845217 -4.80348063 0.66495907 -3.2716136
		 -4.86595726 0.64065087 -3.25851297 -4.92549324 0.62313712 -3.22997332 -4.97834778 0.61351764 -3.18778753
		 -5.02120018 0.61239731 -3.1346066 -5.051358223 0.61984599 -3.073772192 -5.066926003 0.63539612 -3.009106636
		 -5.066926003 0.65807021 -2.9446733 -5.051358223 0.68644392 -2.88452029 -5.02120018 0.71873438 -2.83242774
		 -4.97834778 0.7529124 -2.79166865 -4.92549324 0.78683102 -2.76480389 -4.86595678 0.81835806 -2.75352168
		 -4.80348063 0.84551346 -2.75853109 -4.74198961 0.86659062 -2.7795167 -4.68534756 0.88026488 -2.81516051
		 -4.63711357 0.88567722 -2.86322284 -4.60031843 0.88248837 -2.92068362 -4.57727385 0.87089765 -2.98393226
		 -4.47476292 0.68495095 -2.9903388 -4.4831624 0.65768135 -3.057197809 -4.50783253 0.62546527 -3.11751223
		 -4.54722309 0.59032738 -3.16749263 -4.59885979 0.55447578 -3.20399809 -4.65949726 0.52016258 -3.22473502
		 -4.72532558 0.48954439 -3.22840047 -4.79220915 0.46454477 -3.21476436 -4.85594463 0.44673455 -3.18468308
		 -4.91252756 0.43723273 -3.14004707 -4.95840311 0.43663645 -3.083660603 -4.99068785 0.44498301 -3.019067049
		 -5.0073537827 0.46174824 -2.95032501 -5.0073537827 0.48587859 -2.88175368 -4.99068785 0.51585805 -2.81766152
		 -4.95840311 0.54980254 -2.7620759 -4.91252756 0.58557951 -2.71848941 -4.85594463 0.62094057 -2.68964052
		 -4.79220867 0.65366423 -2.67734241 -4.72532558 0.68169439 -2.68236732 -4.65949726 0.70326936 -2.70439982
		 -4.59885979 0.71703398 -2.74205542 -4.54722309 0.72212327 -2.79296827 -4.50783253 0.71821725 -2.85393906
		 -4.4831624 0.70556152 -2.92113662 -4.38245773 0.51684082 -2.93118072 -4.39141464 0.48804176 -3.0021152496
		 -4.4177227 0.45422375 -3.066189766 -4.45972919 0.41751158 -3.11937809 -4.51479435 0.38021207 -3.15833807
		 -4.57945776 0.34466887 -3.18062234 -4.64965773 0.31311512 -3.18483019;
	setAttr ".vt[332:497]" -4.72098207 0.28753388 -3.17069721 -4.78894997 0.26953232 -3.13911152
		 -4.84928989 0.26024139 -3.092057943 -4.89821148 0.26024485 -3.032492638 -4.93264008 0.26954269 -2.96415877
		 -4.95041275 0.28755081 -2.89134979 -4.95041275 0.31313729 -2.81864023 -4.93264008 0.34469473 -2.75059938
		 -4.89821148 0.38023996 -2.69150209 -4.84928989 0.41754007 -2.64506149 -4.78894949 0.45425093 -2.61419606
		 -4.72098207 0.48806608 -2.60084486 -4.64965725 0.51686037 -2.60584664 -4.57945776 0.53882504 -2.62888765
		 -4.51479387 0.55257988 -2.66851997 -4.45972919 0.55726063 -2.72225308 -4.4177227 0.55257273 -2.78671098
		 -4.39141464 0.53881121 -2.8578434 -4.29253387 0.34733236 -2.87153053 -4.3020525 0.31701803 -2.94654536
		 -4.33001041 0.28163874 -3.014394283 -4.37465096 0.24341762 -3.070813656 -4.43316936 0.20475602 -3.11225891
		 -4.50188828 0.16808319 -3.13612556 -4.5764904 0.13570356 -3.14091396 -4.65228748 0.10965168 -3.12632346
		 -4.72451735 0.091564298 -3.093270779 -4.78864193 0.082578182 -3.043832541 -4.84063101 0.083257675 -2.98111534
		 -4.87721872 0.093560338 -2.90905976 -4.89610624 0.11283863 -2.83219337 -4.89610624 0.13988125 -2.7553463
		 -4.87721872 0.17298913 -2.68334651 -4.84063101 0.21008193 -2.62071848 -4.78864193 0.24882901 -2.5713973
		 -4.72451735 0.28679538 -2.53848195 -4.65228748 0.32159603 -2.52404046 -4.5764904 0.35104394 -2.52898049
		 -4.50188828 0.37328899 -2.55299139 -4.43316936 0.38693333 -2.59456468 -4.37465096 0.39111972 -2.65108824
		 -4.33001041 0.38558483 -2.71901011 -4.3020525 0.37067688 -2.79406309 -4.20501566 0.17645574 -2.81139874
		 -4.21509981 0.14464021 -2.89049911 -4.24471855 0.10774088 -2.96213675 -4.29201078 0.068076372 -3.021810532
		 -4.35400486 0.028138995 -3.065771103 -4.4268055 -0.0095621347 -3.091255903 -4.50583839 -0.042657852 -3.096663713
		 -4.58613777 -0.06906867 -3.081655025 -4.66265774 -0.087135196 -3.047172546 -4.73059082 -0.095722079 -2.99538279
		 -4.78566837 -0.094289899 -2.92954063 -4.82442951 -0.082928658 -2.85378242 -4.84443855 -0.062352061 -2.77286863
		 -4.84443855 -0.033853292 -2.69188356 -4.82442951 0.00077712536 -2.61591554 -4.78566837 0.039363265 -2.54973793
		 -4.73059082 0.079480648 -2.49750876 -4.66265774 0.11860836 -2.46251035 -4.58613777 0.15428805 -2.44694114
		 -4.50583839 0.18427777 -2.45177984 -4.4268055 0.20669329 -2.47672224 -4.35400486 0.22012591 -2.52020097
		 -4.29201031 0.22373176 -2.57948446 -4.24471855 0.21728408 -2.65084743 -4.21509981 0.20118833 -2.72980595
		 -4.11992645 0.0042415857 -2.75079632 -4.13057899 -0.029061079 -2.833987 -4.1618681 -0.06743896 -2.90942812
		 -4.21182775 -0.10848057 -2.97237968 -4.27731848 -0.1496073 -3.018885851 -4.35422516 -0.18823469 -3.046024561
		 -4.43771553 -0.22193611 -3.052090645 -4.52254391 -0.24859345 -3.03670311 -4.6033802 -0.26653194 -3.00082874298
		 -4.67514467 -0.27462459 -2.94672132 -4.73332834 -0.27236295 -2.87778091 -4.77427578 -0.25988877 -2.79833937
		 -4.79541302 -0.23798609 -2.71338797 -4.79541302 -0.20803118 -2.6282649 -4.7742753 -0.17190611 -2.54831839
		 -4.73332834 -0.13188076 -2.47857237 -4.6751442 -0.090470076 -2.42340851 -4.60337973 -0.050276041 -2.38629341
		 -4.52254391 -0.013824224 -2.36955881 -4.43771553 0.016594887 -2.37425661 -4.35422516 0.039070249 -2.40009141
		 -4.277318 0.05218935 -2.44543982 -4.21182775 0.055127859 -2.50745296 -4.1618681 0.047701359 -2.58223343
		 -4.13057899 0.030376315 -2.66508341 -4.037289143 -0.16928017 -2.68973374 -4.048513412 -0.20405567 -2.77701974
		 -4.08148241 -0.24387038 -2.85627913 -4.13412333 -0.28622258 -2.9225316 -4.20312977 -0.32845116 -2.97161436
		 -4.28416443 -0.36790276 -3.00044298172 -4.37213659 -0.40209842 -3.0072066784 -4.46151829 -0.42888951 -2.99148011
		 -4.5466938 -0.44659263 -2.95425129 -4.62231064 -0.45409542 -2.89785981 -4.68361759 -0.4509266 -2.82584858
		 -4.72676229 -0.43728518 -2.74274254 -4.74903488 -0.41402805 -2.65376377 -4.74903488 -0.382617 -2.56450272
		 -4.72676229 -0.34502554 -2.48056817 -4.68361712 -0.30361545 -2.40723395 -4.62231016 -0.26098883 -2.34910822
		 -4.54669333 -0.21982419 -2.30984259 -4.46151829 -0.18270791 -2.29190516 -4.37213659 -0.15197229 -2.29642224
		 -4.28416443 -0.12954831 -2.32311034 -4.20312929 -0.11684513 -2.37029266 -4.13412333 -0.11466098 -2.43500423
		 -4.08148241 -0.12313294 -2.5131793 -4.048513412 -0.14172888 -2.59990549 -3.95712399 -0.34407747 -2.62822223
		 -3.96892333 -0.38031173 -2.71960878 -4.0035796165 -0.42152154 -2.802701 -4.058915615 -0.46511757 -2.87227774
		 -4.13145399 -0.50836051 -2.92396784 -4.21663713 -0.54853308 -2.95452285 -4.30911255 -0.58311152 -2.96202326
		 -4.4030695 -0.60992277 -2.94599748 -4.49260521 -0.62728226 -2.90745258 -4.57209253 -0.63409925 -2.84881067
		 -4.63653803 -0.62994552 -2.77375627 -4.68189144 -0.61508191 -2.68700504 -4.70530415 -0.59044224 -2.59400845
		 -4.70530415 -0.55757499 -2.50060964 -4.68189144 -0.51854521 -2.41267681 -4.63653755 -0.4758054 -2.33573556
		 -4.57209253 -0.43204069 -2.27462006 -4.49260473 -0.39000142 -2.23317075 -4.4030695 -0.35232878 -2.21399188
		 -4.30911255 -0.32139015 -2.21828842 -4.21663713 -0.29912913 -2.24579072 -4.13145399 -0.28694499 -2.29477024
		 -4.058915138 -0.28560269 -2.36214995 -4.0035796165 -0.295187 -2.44369578 -3.96892309 -0.31509566 -2.53428388
		 -3.87945437 -0.52011967 -2.56627274 -3.89183068 -0.55779827 -2.66176462 -3.92818189 -0.60036105 -2.74870443
		 -3.98622394 -0.64513373 -2.82162952 -4.062309742 -0.68930292 -2.87595797 -4.15165901 -0.73009348 -2.9082756
		 -4.24865675 -0.76494223 -2.91655207 -4.34720898 -0.79165953 -2.90026736 -4.44112301 -0.80856681 -2.86044455
		 -4.52449799 -0.81460148 -2.7995863 -4.5920949 -0.80938452 -2.72151589 -4.63966656 -0.79324365 -2.63113928
		 -4.66422415 -0.76719308 -2.53413486 -4.66422415 -0.73286968 -2.43659782 -4.63966656 -0.69243014 -2.34465694
		 -4.5920949 -0.64841539 -2.26408935 -4.52449799 -0.60359097 -2.19995689 -4.44112301 -0.56077349 -2.15628958
		 -4.34720898 -0.52265322 -2.13583112 -4.24865675 -0.49162555 -2.13986707 -4.15165901 -0.46963996 -2.16814375
		 -4.062309742 -0.45807773 -2.21888447 -3.98622394 -0.45766568 -2.28890109;
	setAttr ".vt[498:663]" -3.92818189 -0.46842945 -2.37379384 -3.89183068 -0.48969281 -2.46822929
		 -3.8043015 -0.69737476 -2.50389647 -3.81725693 -0.73648334 -2.6034987 -3.85530925 -0.78035688 -2.69430113
		 -3.9160676 -0.82623869 -2.77059817 -3.99571419 -0.87124574 -2.82759571 -4.089244366 -0.91255033 -2.86171269
		 -4.19078207 -0.94755679 -2.87080503 -4.29394627 -0.9740659 -2.85430169 -4.39225483 -0.99041164 -2.81323957
		 -4.47953176 -0.99556726 -2.7501986 -4.55029202 -0.98920846 -2.6691401 -4.60009003 -0.97173524 -2.57515717
		 -4.62579679 -0.9442451 -2.47415495 -4.62579679 -0.90846556 -2.37248039 -4.60009003 -0.8666448 -2.27652121
		 -4.55029202 -0.82141036 -2.19230747 -4.47953176 -0.77560472 -2.12513041 -4.39225483 -0.73210597 -2.079211235
		 -4.29394579 -0.69364721 -2.057434797 -4.19078159 -0.66264492 -2.061169863 -4.089244366 -0.64104724 -2.090181351
		 -3.99571419 -0.63021106 -2.14264655 -3.9160676 -0.63081747 -2.21526909 -3.85530925 -0.64282817 -2.30348539
		 -3.81725693 -0.6654886 -2.40175271 -3.73168445 -0.87581056 -2.44110465 -3.7452209 -0.91633469 -2.54482245
		 -3.78497982 -0.96147656 -2.63950229 -3.84846306 -1.0083998442 -2.71919513 -3.93168163 -1.054156184 -2.77889323
		 -4.029406548 -1.095870495 -2.81484604 -4.13549757 -1.1309216 -2.82479405 -4.24328852 -1.15710735 -2.80811238
		 -4.34600639 -1.17278218 -2.76584935 -4.43719673 -1.17696142 -2.70066023 -4.51113081 -1.16938221 -2.61664128
		 -4.56316185 -1.15052092 -2.51907158 -4.59002161 -1.1215626 -2.41408205 -4.59002161 -1.084326982 -2.30826926
		 -4.56316185 -1.04115355 -2.20828199 -4.51113081 -0.99475515 -2.12040257 -4.43719673 -0.94804698 -2.050153255
		 -4.34600592 -0.90396404 -2.0019476414 -4.24328804 -0.86527622 -1.97881484 -4.13549757 -0.83441448 -1.98220849
		 -4.029406548 -0.81331784 -2.011914968 -3.93168139 -0.80331194 -2.066068172 -3.84846282 -0.8050254 -2.14126515
		 -3.78497982 -0.81835067 -2.23278117 -3.7452209 -0.84245056 -2.33486581 -3.66162562 -1.055395126 -2.37790847
		 -3.67574477 -1.097320318 -2.4857471 -3.71721458 -1.14368796 -2.58431935 -3.78342986 -1.19158483 -2.66743159
		 -3.87022948 -1.23800135 -2.72986174 -3.97215986 -1.28002071 -2.76768708 -4.082816601 -1.31500316 -2.77853084
		 -4.19524622 -1.34075022 -2.7617116 -4.30238438 -1.35564435 -2.71828604 -4.39749956 -1.35874951 -2.65098333
		 -4.4746151 -1.34987068 -2.5640316 -4.52888536 -1.32956576 -2.46289492 -4.55690098 -1.29911065 -2.35392761
		 -4.55690098 -1.26041877 -2.24397707 -4.52888536 -1.2159214 -2.13995147 -4.4746151 -1.16841459 -2.048387051
		 -4.39749956 -1.12088311 -1.97503746 -4.30238438 -1.076313734 -1.92451131 -4.19524574 -1.0375067 -1.89998341
		 -4.082816601 -1.0069007874 -1.90299499 -3.97215986 -0.98641866 -1.93335676 -3.87022948 -0.97734749 -1.9891609
		 -3.78342962 -0.98025721 -2.066901207 -3.71721458 -0.99496508 -2.16169286 -3.67574477 -1.020546913 -2.26757979
		 -3.59414172 -1.23609531 -2.31431985 -3.60884428 -1.27940702 -2.42628407 -3.6520288 -1.32695794 -2.52876377
		 -3.7209816 -1.3757602 -2.61531973 -3.81137013 -1.42274749 -2.68051338 -3.9175148 -1.46496737 -2.72024798
		 -4.032746315 -1.49976707 -2.73202753 -4.14982414 -1.5249598 -2.71511126 -4.26139212 -1.53896284 -2.67056227
		 -4.36043978 -1.54089618 -2.60118008 -4.44074345 -1.53063846 -2.51132369 -4.49725771 -1.50883412 -2.40663958
		 -4.52643156 -1.47685313 -2.29370499 -4.52643156 -1.43670523 -2.17961645 -4.49725771 -1.39091277 -2.071542263
		 -4.44074345 -1.34235334 -1.9762733 -4.36043978 -1.29407787 -1.89979541 -4.26139212 -1.24911976 -1.84691429
		 -4.14982414 -1.2103039 -1.82095242 -4.032746315 -1.18006933 -1.8235414 -3.9175148 -1.16031563 -1.85451818
		 -3.8113699 -1.15228415 -1.91193652 -3.72098136 -1.15647936 -1.99218869 -3.6520288 -1.17263794 -2.090232134
		 -3.60884428 -1.19974434 -2.19990635 -3.52925587 -1.41787875 -2.25035 -3.54454327 -1.46256244 -2.36644506
		 -3.58944488 -1.51125371 -2.47284722 -3.66113949 -1.56089318 -2.56287098 -3.75512195 -1.60836172 -2.63085938
		 -3.86548734 -1.65067673 -2.67254066 -3.98530102 -1.68517959 -2.68529582 -4.10703421 -1.70970213 -2.66832352
		 -4.2230382 -1.72270358 -2.62268996 -4.32602453 -1.72336698 -2.55126286 -4.40952158 -1.71165073 -2.45852971
		 -4.4682827 -1.68829095 -2.35031772 -4.4986167 -1.65475547 -2.23342609 -4.4986167 -1.61315131 -2.11519957
		 -4.4682827 -1.56609273 -2.0030667782 -4.40952158 -1.51653671 -1.90407324 -4.32602453 -1.46759677 -1.82443941
		 -4.2230382 -1.42234802 -1.76916873 -4.10703421 -1.38363385 -1.74173415 -3.98530078 -1.35388672 -1.74385941
		 -3.86548734 -1.3349756 -1.77541113 -3.75512195 -1.32808888 -1.83440661 -3.66113925 -1.33365917 -1.91713929
		 -3.58944464 -1.3513366 -2.018410206 -3.54454327 -1.38001037 -2.13185668 -5.12492943 2.99974155 -3.91079092
		 -5.12705374 2.9918704 -3.9291122 -5.0086135864 2.84106445 -3.8806572 -5.0060019493 2.85062218 -3.85831571
		 -6.22273064 1.76308811 -4.041928768 -6.23969603 1.76055729 -4.018761158 -6.1538291 1.59203398 -3.97036219
		 -6.1341238 1.59469497 -3.99696541 -5.5294733 2.24295044 -2.53929806 -5.49669361 2.26096487 -2.54313469
		 -5.40158749 2.10514069 -2.46978426 -5.43846989 2.085503578 -2.46566868 -4.44671202 1.63384902 -3.92426252
		 -4.47335434 1.60754764 -3.95854139 -4.37410164 1.44157302 -3.91283441 -4.34495783 1.4697684 -3.87545991
		 -5.91144753 0.65864527 -3.28381944 -5.92484665 0.67184699 -3.22733593 -5.86003065 0.49940538 -3.16897869
		 -5.84555149 0.48504317 -3.22955799 -4.45761967 1.29266059 -2.16502666 -4.40097761 1.30633485 -2.20067072
		 -4.31448936 1.1431042 -2.12756562 -4.37512684 1.12933934 -2.08991003 -4.14080143 0.14073157 -3.85416317
		 -4.20952034 0.10405886 -3.87802982 -4.13443756 -0.073586345 -3.83316016 -4.061636925 -0.035885334 -3.80767536
		 -5.54796124 -0.31726229 -2.37979031 -5.526824 -0.28113723 -2.29984403 -5.47931099 -0.45425665 -2.23209357
		 -5.5015831 -0.49184811 -2.31602812 -3.4653275 0.11622894 -2.0069248676 -3.40999174 0.10664463 -2.088470697
		 -3.33459401 -0.066597819 -2.018568993 -3.39263606 -0.055834055 -1.933676 -4.20241356 -1.34290636 -3.59328914
		 -4.31020451 -1.36909199 -3.5766077 -4.26216221 -1.55273485 -3.53020668;
	setAttr ".vt[664:692]" -4.14973259 -1.52698779 -3.54702592 -5.022207737 -1.22438264 -1.43963337
		 -4.94190359 -1.17610717 -1.3631556 -4.90748882 -1.34962595 -1.2877996 -4.99098539 -1.39856589 -1.36743343
		 -6.63072872 1.12502635 -4.099293709 -6.64568663 1.11986101 -4.075199127 -6.53072977 0.96791184 -4.032632351
		 -6.51329279 0.9736377 -4.060314178 -5.72072411 2.10111809 -2.078373909 -5.6886816 2.12478447 -2.084199429
		 -5.56457233 1.98622572 -2.016925097 -5.60042143 1.96045864 -2.010652542 -4.31648493 1.39221847 -1.82740426
		 -4.26197672 1.41166604 -1.86507964 -4.15723896 1.2578429 -1.79528534 -4.21514559 1.23821294 -1.75556564
		 -3.94341373 0.034824848 -4.18955612 -4.0079402924 -0.0077637434 -4.2113409 -3.91560626 -0.1776557 -4.16919994
		 -3.84781003 -0.13403189 -4.14579916 -3.97395134 -1.52633464 -3.93974829 -4.067150116 -1.56206715 -3.9197073
		 -3.99469399 -1.73819017 -3.87595248 -3.89832664 -1.70288134 -3.89613652 -4.84419012 -1.3653971 -1.10816014
		 -4.76860523 -1.30425644 -1.036209583 -4.70194626 -1.46943402 -0.96378875 -4.78074884 -1.5317682 -1.038709402;
	setAttr -s 1361 ".ed";
	setAttr ".ed[0:165]"  0 1 1 1 2 1 2 3 1 3 4 1 4 5 1 5 6 1 6 7 1 7 8 1 8 9 1
		 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 16 1 16 17 1 17 18 1 18 19 1 19 20 1
		 20 21 1 21 22 1 22 23 1 23 24 1 24 0 1 624 623 1 623 622 1 622 621 1 621 620 1 620 619 1
		 619 618 1 618 617 1 617 616 1 616 615 1 615 614 1 614 613 1 613 612 1 612 611 1 611 610 1
		 610 609 1 609 608 1 608 607 1 607 606 1 606 605 1 605 604 1 604 603 1 603 602 1 602 601 1
		 601 600 1 600 624 1 26 27 1 27 2 1 1 26 1 27 28 1 28 3 1 28 29 1 29 4 1 29 30 1 30 5 1
		 30 31 1 31 6 1 31 32 1 32 7 1 32 33 1 33 8 1 33 34 1 34 9 1 34 35 1 35 10 1 35 36 1
		 36 11 1 36 37 1 37 12 1 37 38 1 38 13 1 38 39 1 39 14 1 39 40 1 40 15 1 40 41 1 41 16 1
		 41 42 1 42 17 1 42 43 1 43 18 1 43 44 1 44 19 1 44 45 1 45 20 1 45 46 1 46 21 1 46 47 1
		 47 22 1 47 48 1 48 23 1 48 49 1 49 24 1 49 25 1 25 0 1 50 51 1 51 26 1 26 25 1 25 50 1
		 51 52 1 52 27 1 52 53 1 53 28 1 53 54 1 54 29 1 54 55 1 55 30 1 55 56 1 56 31 1 56 57 1
		 57 32 1 57 58 1 58 33 1 58 59 1 59 34 1 59 60 1 60 35 1 60 61 1 61 36 1 61 62 1 62 37 1
		 62 63 1 63 38 1 63 64 1 64 39 1 64 65 1 65 40 1 65 66 1 66 41 1 66 67 1 67 42 1 67 68 1
		 68 43 1 68 69 1 69 44 1 69 70 1 70 45 1 70 71 1 71 46 1 71 72 1 72 47 1 72 73 1 73 48 1
		 73 74 1 74 49 1 74 50 1 75 76 1 76 51 1 50 75 1 76 77 1 77 52 1 77 78 1 78 53 1 78 79 1
		 79 54 1 79 80 1 80 55 1 80 81 1 81 56 1 81 82 1 82 57 1 82 83 1;
	setAttr ".ed[166:331]" 83 58 1 83 84 1 84 59 1 85 86 1 86 61 1 60 85 1 86 87 1
		 87 62 1 87 88 1 88 63 1 88 89 1 89 64 1 89 90 1 90 65 1 90 91 1 91 66 1 91 92 1 92 67 1
		 92 93 1 93 68 1 93 94 1 94 69 1 94 95 1 95 70 1 95 96 1 96 71 1 96 97 1 97 72 1 97 98 1
		 98 73 1 98 99 1 99 74 1 99 75 1 100 101 1 101 76 1 75 100 1 101 102 1 102 77 1 102 103 1
		 103 78 1 103 104 1 104 79 1 104 105 1 105 80 1 105 106 1 106 81 1 106 107 1 107 82 1
		 107 108 1 108 83 1 108 109 1 109 84 1 109 110 1 110 85 1 85 84 1 110 111 1 111 86 1
		 111 112 1 112 87 1 112 113 1 113 88 1 113 114 1 114 89 1 114 115 1 115 90 1 115 116 1
		 116 91 1 116 117 1 117 92 1 117 118 1 118 93 1 118 119 1 119 94 1 119 120 1 120 95 1
		 120 121 1 121 96 1 121 122 1 122 97 1 122 123 1 123 98 1 123 124 1 124 99 1 124 100 1
		 125 126 1 126 101 1 100 125 1 126 127 1 127 102 1 127 128 1 128 103 1 128 129 1 129 104 1
		 129 130 1 130 105 1 130 131 1 131 106 1 131 132 1 132 107 1 132 133 1 133 108 1 133 134 1
		 134 109 1 134 135 1 135 110 1 135 136 1 136 111 1 136 137 1 137 112 1 137 138 1 138 113 1
		 138 139 1 139 114 1 139 140 1 140 115 1 140 141 1 141 116 1 141 142 1 142 117 1 142 143 1
		 143 118 1 144 145 1 145 120 1 119 144 1 145 146 1 146 121 1 146 147 1 147 122 1 147 148 1
		 148 123 1 148 149 1 149 124 1 149 125 1 150 151 1 151 126 1 125 150 1 151 152 1 152 127 1
		 152 153 1 153 128 1 153 154 1 154 129 1 154 155 1 155 130 1 155 156 1 156 131 1 156 157 1
		 157 132 1 157 158 1 158 133 1 158 159 1 159 134 1 159 160 1 160 135 1 160 161 1 161 136 1
		 161 162 1 162 137 1 162 163 1 163 138 1 163 164 1 164 139 1 164 165 1 165 140 1 165 166 1
		 166 141 1;
	setAttr ".ed[332:497]" 166 167 1 167 142 1 167 168 1 168 143 1 168 169 1 169 144 1
		 144 143 1 169 170 1 170 145 1 170 171 1 171 146 1 171 172 1 172 147 1 172 173 1 173 148 1
		 173 174 1 174 149 1 174 150 1 175 176 1 176 151 1 150 175 1 176 177 1 177 152 1 177 178 1
		 178 153 1 178 179 1 179 154 1 179 180 1 180 155 1 180 181 1 181 156 1 181 182 1 182 157 1
		 182 183 1 183 158 1 183 184 1 184 159 1 184 185 1 185 160 1 185 186 1 186 161 1 186 187 1
		 187 162 1 187 188 1 188 163 1 188 189 1 189 164 1 189 190 1 190 165 1 190 191 1 191 166 1
		 191 192 1 192 167 1 192 193 1 193 168 1 193 194 1 194 169 1 194 195 1 195 170 1 195 196 1
		 196 171 1 196 197 1 197 172 1 197 198 1 198 173 1 198 199 1 199 174 1 199 175 1 200 201 1
		 201 176 1 175 200 1 201 202 1 202 177 1 203 204 1 204 179 1 178 203 1 204 205 1 205 180 1
		 205 206 1 206 181 1 206 207 1 207 182 1 207 208 1 208 183 1 208 209 1 209 184 1 209 210 1
		 210 185 1 210 211 1 211 186 1 211 212 1 212 187 1 212 213 1 213 188 1 213 214 1 214 189 1
		 214 215 1 215 190 1 215 216 1 216 191 1 216 217 1 217 192 1 217 218 1 218 193 1 218 219 1
		 219 194 1 219 220 1 220 195 1 220 221 1 221 196 1 221 222 1 222 197 1 222 223 1 223 198 1
		 223 224 1 224 199 1 224 200 1 225 226 1 226 201 1 200 225 1 226 227 1 227 202 1 227 228 1
		 228 203 1 203 202 1 228 229 1 229 204 1 229 230 1 230 205 1 230 231 1 231 206 1 231 232 1
		 232 207 1 232 233 1 233 208 1 233 234 1 234 209 1 234 235 1 235 210 1 235 236 1 236 211 1
		 236 237 1 237 212 1 237 238 1 238 213 1 238 239 1 239 214 1 239 240 1 240 215 1 240 241 1
		 241 216 1 241 242 1 242 217 1 242 243 1 243 218 1 243 244 1 244 219 1 244 245 1 245 220 1
		 245 246 1 246 221 1 246 247 1 247 222 1 247 248 1 248 223 1 248 249 1;
	setAttr ".ed[498:663]" 249 224 1 249 225 1 250 251 1 251 226 1 225 250 1 251 252 1
		 252 227 1 252 253 1 253 228 1 253 254 1 254 229 1 254 255 1 255 230 1 255 256 1 256 231 1
		 256 257 1 257 232 1 257 258 1 258 233 1 258 259 1 259 234 1 259 260 1 260 235 1 260 261 1
		 261 236 1 262 263 1 263 238 1 237 262 1 263 264 1 264 239 1 264 265 1 265 240 1 265 266 1
		 266 241 1 266 267 1 267 242 1 267 268 1 268 243 1 268 269 1 269 244 1 269 270 1 270 245 1
		 270 271 1 271 246 1 271 272 1 272 247 1 272 273 1 273 248 1 273 274 1 274 249 1 274 250 1
		 275 276 1 276 251 1 250 275 1 276 277 1 277 252 1 277 278 1 278 253 1 278 279 1 279 254 1
		 279 280 1 280 255 1 280 281 1 281 256 1 281 282 1 282 257 1 282 283 1 283 258 1 283 284 1
		 284 259 1 284 285 1 285 260 1 285 286 1 286 261 1 286 287 1 287 262 1 262 261 1 287 288 1
		 288 263 1 288 289 1 289 264 1 289 290 1 290 265 1 290 291 1 291 266 1 291 292 1 292 267 1
		 292 293 1 293 268 1 293 294 1 294 269 1 294 295 1 295 270 1 295 296 1 296 271 1 296 297 1
		 297 272 1 297 298 1 298 273 1 298 299 1 299 274 1 299 275 1 300 301 1 301 276 1 275 300 1
		 301 302 1 302 277 1 302 303 1 303 278 1 303 304 1 304 279 1 304 305 1 305 280 1 305 306 1
		 306 281 1 306 307 1 307 282 1 307 308 1 308 283 1 308 309 1 309 284 1 309 310 1 310 285 1
		 310 311 1 311 286 1 311 312 1 312 287 1 312 313 1 313 288 1 313 314 1 314 289 1 314 315 1
		 315 290 1 315 316 1 316 291 1 316 317 1 317 292 1 317 318 1 318 293 1 318 319 1 319 294 1
		 319 320 1 320 295 1 321 322 1 322 297 1 296 321 1 322 323 1 323 298 1 323 324 1 324 299 1
		 324 300 1 325 326 1 326 301 1 300 325 1 326 327 1 327 302 1 327 328 1 328 303 1 328 329 1
		 329 304 1 329 330 1 330 305 1 330 331 1 331 306 1 331 332 1 332 307 1;
	setAttr ".ed[664:829]" 332 333 1 333 308 1 333 334 1 334 309 1 334 335 1 335 310 1
		 335 336 1 336 311 1 336 337 1 337 312 1 337 338 1 338 313 1 338 339 1 339 314 1 339 340 1
		 340 315 1 340 341 1 341 316 1 341 342 1 342 317 1 342 343 1 343 318 1 343 344 1 344 319 1
		 344 345 1 345 320 1 345 346 1 346 321 1 321 320 1 346 347 1 347 322 1 347 348 1 348 323 1
		 348 349 1 349 324 1 349 325 1 350 351 1 351 326 1 325 350 1 351 352 1 352 327 1 352 353 1
		 353 328 1 353 354 1 354 329 1 354 355 1 355 330 1 355 356 1 356 331 1 356 357 1 357 332 1
		 357 358 1 358 333 1 358 359 1 359 334 1 359 360 1 360 335 1 360 361 1 361 336 1 361 362 1
		 362 337 1 362 363 1 363 338 1 363 364 1 364 339 1 364 365 1 365 340 1 365 366 1 366 341 1
		 366 367 1 367 342 1 367 368 1 368 343 1 368 369 1 369 344 1 369 370 1 370 345 1 370 371 1
		 371 346 1 371 372 1 372 347 1 372 373 1 373 348 1 373 374 1 374 349 1 374 350 1 375 376 1
		 376 351 1 350 375 1 376 377 1 377 352 1 377 378 1 378 353 1 378 379 1 379 354 1 380 381 1
		 381 356 1 355 380 1 381 382 1 382 357 1 382 383 1 383 358 1 383 384 1 384 359 1 384 385 1
		 385 360 1 385 386 1 386 361 1 386 387 1 387 362 1 387 388 1 388 363 1 388 389 1 389 364 1
		 389 390 1 390 365 1 390 391 1 391 366 1 391 392 1 392 367 1 392 393 1 393 368 1 393 394 1
		 394 369 1 394 395 1 395 370 1 395 396 1 396 371 1 396 397 1 397 372 1 397 398 1 398 373 1
		 398 399 1 399 374 1 399 375 1 400 401 1 401 376 1 375 400 1 401 402 1 402 377 1 402 403 1
		 403 378 1 403 404 1 404 379 1 404 405 1 405 380 1 380 379 1 405 406 1 406 381 1 406 407 1
		 407 382 1 407 408 1 408 383 1 408 409 1 409 384 1 409 410 1 410 385 1 410 411 1 411 386 1
		 411 412 1 412 387 1 412 413 1 413 388 1 413 414 1 414 389 1 414 415 1;
	setAttr ".ed[830:995]" 415 390 1 415 416 1 416 391 1 416 417 1 417 392 1 417 418 1
		 418 393 1 418 419 1 419 394 1 419 420 1 420 395 1 420 421 1 421 396 1 421 422 1 422 397 1
		 422 423 1 423 398 1 423 424 1 424 399 1 424 400 1 425 426 1 426 401 1 400 425 1 426 427 1
		 427 402 1 427 428 1 428 403 1 428 429 1 429 404 1 429 430 1 430 405 1 430 431 1 431 406 1
		 431 432 1 432 407 1 432 433 1 433 408 1 433 434 1 434 409 1 434 435 1 435 410 1 435 436 1
		 436 411 1 436 437 1 437 412 1 437 438 1 438 413 1 439 440 1 440 415 1 414 439 1 440 441 1
		 441 416 1 441 442 1 442 417 1 442 443 1 443 418 1 443 444 1 444 419 1 444 445 1 445 420 1
		 445 446 1 446 421 1 446 447 1 447 422 1 447 448 1 448 423 1 448 449 1 449 424 1 449 425 1
		 450 451 1 451 426 1 425 450 1 451 452 1 452 427 1 452 453 1 453 428 1 453 454 1 454 429 1
		 454 455 1 455 430 1 455 456 1 456 431 1 456 457 1 457 432 1 457 458 1 458 433 1 458 459 1
		 459 434 1 459 460 1 460 435 1 460 461 1 461 436 1 461 462 1 462 437 1 462 463 1 463 438 1
		 463 464 1 464 439 1 439 438 1 464 465 1 465 440 1 465 466 1 466 441 1 466 467 1 467 442 1
		 467 468 1 468 443 1 468 469 1 469 444 1 469 470 1 470 445 1 470 471 1 471 446 1 471 472 1
		 472 447 1 472 473 1 473 448 1 473 474 1 474 449 1 474 450 1 475 476 1 476 451 1 450 475 1
		 476 477 1 477 452 1 477 478 1 478 453 1 478 479 1 479 454 1 479 480 1 480 455 1 480 481 1
		 481 456 1 481 482 1 482 457 1 482 483 1 483 458 1 483 484 1 484 459 1 484 485 1 485 460 1
		 485 486 1 486 461 1 486 487 1 487 462 1 487 488 1 488 463 1 488 489 1 489 464 1 489 490 1
		 490 465 1 490 491 1 491 466 1 491 492 1 492 467 1 492 493 1 493 468 1 493 494 1 494 469 1
		 494 495 1 495 470 1 495 496 1 496 471 1 496 497 1 497 472 1 498 499 1;
	setAttr ".ed[996:1161]" 499 474 1 473 498 1 499 475 1 500 501 1 501 476 1 475 500 1
		 501 502 1 502 477 1 502 503 1 503 478 1 503 504 1 504 479 1 504 505 1 505 480 1 505 506 1
		 506 481 1 506 507 1 507 482 1 507 508 1 508 483 1 508 509 1 509 484 1 509 510 1 510 485 1
		 510 511 1 511 486 1 511 512 1 512 487 1 512 513 1 513 488 1 513 514 1 514 489 1 514 515 1
		 515 490 1 515 516 1 516 491 1 516 517 1 517 492 1 517 518 1 518 493 1 518 519 1 519 494 1
		 519 520 1 520 495 1 520 521 1 521 496 1 521 522 1 522 497 1 522 523 1 523 498 1 498 497 1
		 523 524 1 524 499 1 524 500 1 525 526 1 526 501 1 500 525 1 526 527 1 527 502 1 527 528 1
		 528 503 1 528 529 1 529 504 1 529 530 1 530 505 1 530 531 1 531 506 1 531 532 1 532 507 1
		 532 533 1 533 508 1 533 534 1 534 509 1 534 535 1 535 510 1 535 536 1 536 511 1 536 537 1
		 537 512 1 537 538 1 538 513 1 538 539 1 539 514 1 539 540 1 540 515 1 540 541 1 541 516 1
		 541 542 1 542 517 1 542 543 1 543 518 1 543 544 1 544 519 1 544 545 1 545 520 1 545 546 1
		 546 521 1 546 547 1 547 522 1 547 548 1 548 523 1 548 549 1 549 524 1 549 525 1 550 551 1
		 551 526 1 525 550 1 551 552 1 552 527 1 552 553 1 553 528 1 553 554 1 554 529 1 554 555 1
		 555 530 1 555 556 1 556 531 1 557 558 1 558 533 1 532 557 1 558 559 1 559 534 1 559 560 1
		 560 535 1 560 561 1 561 536 1 561 562 1 562 537 1 562 563 1 563 538 1 563 564 1 564 539 1
		 564 565 1 565 540 1 565 566 1 566 541 1 566 567 1 567 542 1 567 568 1 568 543 1 568 569 1
		 569 544 1 569 570 1 570 545 1 570 571 1 571 546 1 571 572 1 572 547 1 572 573 1 573 548 1
		 573 574 1 574 549 1 574 550 1 575 576 1 576 551 1 550 575 1 576 577 1 577 552 1 577 578 1
		 578 553 1 578 579 1 579 554 1 579 580 1 580 555 1 580 581 1 581 556 1;
	setAttr ".ed[1162:1327]" 581 582 1 582 557 1 557 556 1 582 583 1 583 558 1 583 584 1
		 584 559 1 584 585 1 585 560 1 585 586 1 586 561 1 586 587 1 587 562 1 587 588 1 588 563 1
		 588 589 1 589 564 1 589 590 1 590 565 1 590 591 1 591 566 1 591 592 1 592 567 1 592 593 1
		 593 568 1 593 594 1 594 569 1 594 595 1 595 570 1 595 596 1 596 571 1 596 597 1 597 572 1
		 597 598 1 598 573 1 598 599 1 599 574 1 599 575 1 601 576 1 575 600 1 602 577 1 603 578 1
		 604 579 1 605 580 1 606 581 1 607 582 1 608 583 1 609 584 1 610 585 1 611 586 1 612 587 1
		 613 588 1 614 589 1 615 590 1 617 592 1 591 616 1 618 593 1 619 594 1 620 595 1 621 596 1
		 622 597 1 623 598 1 624 599 1 628 627 1 627 626 1 626 625 1 625 628 1 640 639 1 639 638 1
		 638 637 1 637 640 1 644 643 1 643 642 1 642 641 1 641 644 1 656 655 1 655 654 1 654 653 1
		 653 656 1 660 659 1 659 658 1 658 657 1 657 660 1 626 1 1 0 625 1 627 26 1 628 25 1
		 629 630 1 630 60 1 59 629 1 630 631 1 631 85 1 631 632 1 632 84 1 632 629 1 633 634 1
		 634 119 1 118 633 1 634 635 1 635 144 1 635 636 1 636 143 1 636 633 1 638 178 1 177 637 1
		 639 203 1 640 202 1 642 237 1 236 641 1 643 262 1 644 261 1 645 646 1 646 296 1 295 645 1
		 646 647 1 647 321 1 647 648 1 648 320 1 648 645 1 649 650 1 650 355 1 354 649 1 650 651 1
		 651 380 1 651 652 1 652 379 1 652 649 1 654 414 1 413 653 1 655 439 1 656 438 1 658 473 1
		 472 657 1 659 498 1 660 497 1 661 662 1 662 532 1 531 661 1 662 663 1 663 557 1 663 664 1
		 664 556 1 664 661 1 665 666 1 666 591 1 590 665 1 666 667 1 667 616 1 667 668 1 668 615 1
		 668 665 1 672 671 1 671 670 1 670 669 1 669 672 1 676 675 1 675 674 1 674 673 1 673 676 1
		 680 679 1 679 678 1 678 677 1 677 680 1 684 683 1 683 682 1 682 681 1;
	setAttr ".ed[1328:1360]" 681 684 1 688 687 1 687 686 1 686 685 1 685 688 1 692 691 1
		 691 690 1 690 689 1 689 692 1 670 630 1 629 669 1 671 631 1 672 632 1 674 634 1 633 673 1
		 675 635 1 676 636 1 678 646 1 645 677 1 679 647 1 680 648 1 682 650 1 649 681 1 683 651 1
		 684 652 1 686 662 1 661 685 1 687 663 1 688 664 1 690 666 1 665 689 1 691 667 1 692 668 1;
	setAttr -s 670 -ch 2722 ".fc";
	setAttr ".fc[0:499]" -type "polyFaces" 
		f 25 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24
		f 25 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49
		f 4 50 51 -2 52
		f 4 53 54 -3 -52
		f 4 55 56 -4 -55
		f 4 57 58 -5 -57
		f 4 59 60 -6 -59
		f 4 61 62 -7 -61
		f 4 63 64 -8 -63
		f 4 65 66 -9 -65
		f 4 67 68 -10 -67
		f 4 69 70 -11 -69
		f 4 71 72 -12 -71
		f 4 73 74 -13 -73
		f 4 75 76 -14 -75
		f 4 77 78 -15 -77
		f 4 79 80 -16 -79
		f 4 81 82 -17 -81
		f 4 83 84 -18 -83
		f 4 85 86 -19 -85
		f 4 87 88 -20 -87
		f 4 89 90 -21 -89
		f 4 91 92 -22 -91
		f 4 93 94 -23 -93
		f 4 95 96 -24 -95
		f 4 97 98 -25 -97
		f 4 99 100 101 102
		f 4 103 104 -51 -101
		f 4 105 106 -54 -105
		f 4 107 108 -56 -107
		f 4 109 110 -58 -109
		f 4 111 112 -60 -111
		f 4 113 114 -62 -113
		f 4 115 116 -64 -115
		f 4 117 118 -66 -117
		f 4 119 120 -68 -119
		f 4 121 122 -70 -121
		f 4 123 124 -72 -123
		f 4 125 126 -74 -125
		f 4 127 128 -76 -127
		f 4 129 130 -78 -129
		f 4 131 132 -80 -131
		f 4 133 134 -82 -133
		f 4 135 136 -84 -135
		f 4 137 138 -86 -137
		f 4 139 140 -88 -139
		f 4 141 142 -90 -141
		f 4 143 144 -92 -143
		f 4 145 146 -94 -145
		f 4 147 148 -96 -147
		f 4 149 -103 -98 -149
		f 4 150 151 -100 152
		f 4 153 154 -104 -152
		f 4 155 156 -106 -155
		f 4 157 158 -108 -157
		f 4 159 160 -110 -159
		f 4 161 162 -112 -161
		f 4 163 164 -114 -163
		f 4 165 166 -116 -165
		f 4 167 168 -118 -167
		f 4 169 170 -122 171
		f 4 172 173 -124 -171
		f 4 174 175 -126 -174
		f 4 176 177 -128 -176
		f 4 178 179 -130 -178
		f 4 180 181 -132 -180
		f 4 182 183 -134 -182
		f 4 184 185 -136 -184
		f 4 186 187 -138 -186
		f 4 188 189 -140 -188
		f 4 190 191 -142 -190
		f 4 192 193 -144 -192
		f 4 194 195 -146 -194
		f 4 196 197 -148 -196
		f 4 198 -153 -150 -198
		f 4 199 200 -151 201
		f 4 202 203 -154 -201
		f 4 204 205 -156 -204
		f 4 206 207 -158 -206
		f 4 208 209 -160 -208
		f 4 210 211 -162 -210
		f 4 212 213 -164 -212
		f 4 214 215 -166 -214
		f 4 216 217 -168 -216
		f 4 218 219 220 -218
		f 4 221 222 -170 -220
		f 4 223 224 -173 -223
		f 4 225 226 -175 -225
		f 4 227 228 -177 -227
		f 4 229 230 -179 -229
		f 4 231 232 -181 -231
		f 4 233 234 -183 -233
		f 4 235 236 -185 -235
		f 4 237 238 -187 -237
		f 4 239 240 -189 -239
		f 4 241 242 -191 -241
		f 4 243 244 -193 -243
		f 4 245 246 -195 -245
		f 4 247 248 -197 -247
		f 4 249 -202 -199 -249
		f 4 250 251 -200 252
		f 4 253 254 -203 -252
		f 4 255 256 -205 -255
		f 4 257 258 -207 -257
		f 4 259 260 -209 -259
		f 4 261 262 -211 -261
		f 4 263 264 -213 -263
		f 4 265 266 -215 -265
		f 4 267 268 -217 -267
		f 4 269 270 -219 -269
		f 4 271 272 -222 -271
		f 4 273 274 -224 -273
		f 4 275 276 -226 -275
		f 4 277 278 -228 -277
		f 4 279 280 -230 -279
		f 4 281 282 -232 -281
		f 4 283 284 -234 -283
		f 4 285 286 -236 -285
		f 4 287 288 -240 289
		f 4 290 291 -242 -289
		f 4 292 293 -244 -292
		f 4 294 295 -246 -294
		f 4 296 297 -248 -296
		f 4 298 -253 -250 -298
		f 4 299 300 -251 301
		f 4 302 303 -254 -301
		f 4 304 305 -256 -304
		f 4 306 307 -258 -306
		f 4 308 309 -260 -308
		f 4 310 311 -262 -310
		f 4 312 313 -264 -312
		f 4 314 315 -266 -314
		f 4 316 317 -268 -316
		f 4 318 319 -270 -318
		f 4 320 321 -272 -320
		f 4 322 323 -274 -322
		f 4 324 325 -276 -324
		f 4 326 327 -278 -326
		f 4 328 329 -280 -328
		f 4 330 331 -282 -330
		f 4 332 333 -284 -332
		f 4 334 335 -286 -334
		f 4 336 337 338 -336
		f 4 339 340 -288 -338
		f 4 341 342 -291 -341
		f 4 343 344 -293 -343
		f 4 345 346 -295 -345
		f 4 347 348 -297 -347
		f 4 349 -302 -299 -349
		f 4 350 351 -300 352
		f 4 353 354 -303 -352
		f 4 355 356 -305 -355
		f 4 357 358 -307 -357
		f 4 359 360 -309 -359
		f 4 361 362 -311 -361
		f 4 363 364 -313 -363
		f 4 365 366 -315 -365
		f 4 367 368 -317 -367
		f 4 369 370 -319 -369
		f 4 371 372 -321 -371
		f 4 373 374 -323 -373
		f 4 375 376 -325 -375
		f 4 377 378 -327 -377
		f 4 379 380 -329 -379
		f 4 381 382 -331 -381
		f 4 383 384 -333 -383
		f 4 385 386 -335 -385
		f 4 387 388 -337 -387
		f 4 389 390 -340 -389
		f 4 391 392 -342 -391
		f 4 393 394 -344 -393
		f 4 395 396 -346 -395
		f 4 397 398 -348 -397
		f 4 399 -353 -350 -399
		f 4 400 401 -351 402
		f 4 403 404 -354 -402
		f 4 405 406 -358 407
		f 4 408 409 -360 -407
		f 4 410 411 -362 -410
		f 4 412 413 -364 -412
		f 4 414 415 -366 -414
		f 4 416 417 -368 -416
		f 4 418 419 -370 -418
		f 4 420 421 -372 -420
		f 4 422 423 -374 -422
		f 4 424 425 -376 -424
		f 4 426 427 -378 -426
		f 4 428 429 -380 -428
		f 4 430 431 -382 -430
		f 4 432 433 -384 -432
		f 4 434 435 -386 -434
		f 4 436 437 -388 -436
		f 4 438 439 -390 -438
		f 4 440 441 -392 -440
		f 4 442 443 -394 -442
		f 4 444 445 -396 -444
		f 4 446 447 -398 -446
		f 4 448 -403 -400 -448
		f 4 449 450 -401 451
		f 4 452 453 -404 -451
		f 4 454 455 456 -454
		f 4 457 458 -406 -456
		f 4 459 460 -409 -459
		f 4 461 462 -411 -461
		f 4 463 464 -413 -463
		f 4 465 466 -415 -465
		f 4 467 468 -417 -467
		f 4 469 470 -419 -469
		f 4 471 472 -421 -471
		f 4 473 474 -423 -473
		f 4 475 476 -425 -475
		f 4 477 478 -427 -477
		f 4 479 480 -429 -479
		f 4 481 482 -431 -481
		f 4 483 484 -433 -483
		f 4 485 486 -435 -485
		f 4 487 488 -437 -487
		f 4 489 490 -439 -489
		f 4 491 492 -441 -491
		f 4 493 494 -443 -493
		f 4 495 496 -445 -495
		f 4 497 498 -447 -497
		f 4 499 -452 -449 -499
		f 4 500 501 -450 502
		f 4 503 504 -453 -502
		f 4 505 506 -455 -505
		f 4 507 508 -458 -507
		f 4 509 510 -460 -509
		f 4 511 512 -462 -511
		f 4 513 514 -464 -513
		f 4 515 516 -466 -515
		f 4 517 518 -468 -517
		f 4 519 520 -470 -519
		f 4 521 522 -472 -521
		f 4 523 524 -476 525
		f 4 526 527 -478 -525
		f 4 528 529 -480 -528
		f 4 530 531 -482 -530
		f 4 532 533 -484 -532
		f 4 534 535 -486 -534
		f 4 536 537 -488 -536
		f 4 538 539 -490 -538
		f 4 540 541 -492 -540
		f 4 542 543 -494 -542
		f 4 544 545 -496 -544
		f 4 546 547 -498 -546
		f 4 548 -503 -500 -548
		f 4 549 550 -501 551
		f 4 552 553 -504 -551
		f 4 554 555 -506 -554
		f 4 556 557 -508 -556
		f 4 558 559 -510 -558
		f 4 560 561 -512 -560
		f 4 562 563 -514 -562
		f 4 564 565 -516 -564
		f 4 566 567 -518 -566
		f 4 568 569 -520 -568
		f 4 570 571 -522 -570
		f 4 572 573 574 -572
		f 4 575 576 -524 -574
		f 4 577 578 -527 -577
		f 4 579 580 -529 -579
		f 4 581 582 -531 -581
		f 4 583 584 -533 -583
		f 4 585 586 -535 -585
		f 4 587 588 -537 -587
		f 4 589 590 -539 -589
		f 4 591 592 -541 -591
		f 4 593 594 -543 -593
		f 4 595 596 -545 -595
		f 4 597 598 -547 -597
		f 4 599 -552 -549 -599
		f 4 600 601 -550 602
		f 4 603 604 -553 -602
		f 4 605 606 -555 -605
		f 4 607 608 -557 -607
		f 4 609 610 -559 -609
		f 4 611 612 -561 -611
		f 4 613 614 -563 -613
		f 4 615 616 -565 -615
		f 4 617 618 -567 -617
		f 4 619 620 -569 -619
		f 4 621 622 -571 -621
		f 4 623 624 -573 -623
		f 4 625 626 -576 -625
		f 4 627 628 -578 -627
		f 4 629 630 -580 -629
		f 4 631 632 -582 -631
		f 4 633 634 -584 -633
		f 4 635 636 -586 -635
		f 4 637 638 -588 -637
		f 4 639 640 -590 -639
		f 4 641 642 -594 643
		f 4 644 645 -596 -643
		f 4 646 647 -598 -646
		f 4 648 -603 -600 -648
		f 4 649 650 -601 651
		f 4 652 653 -604 -651
		f 4 654 655 -606 -654
		f 4 656 657 -608 -656
		f 4 658 659 -610 -658
		f 4 660 661 -612 -660
		f 4 662 663 -614 -662
		f 4 664 665 -616 -664
		f 4 666 667 -618 -666
		f 4 668 669 -620 -668
		f 4 670 671 -622 -670
		f 4 672 673 -624 -672
		f 4 674 675 -626 -674
		f 4 676 677 -628 -676
		f 4 678 679 -630 -678
		f 4 680 681 -632 -680
		f 4 682 683 -634 -682
		f 4 684 685 -636 -684
		f 4 686 687 -638 -686
		f 4 688 689 -640 -688
		f 4 690 691 692 -690
		f 4 693 694 -642 -692
		f 4 695 696 -645 -695
		f 4 697 698 -647 -697
		f 4 699 -652 -649 -699
		f 4 700 701 -650 702
		f 4 703 704 -653 -702
		f 4 705 706 -655 -705
		f 4 707 708 -657 -707
		f 4 709 710 -659 -709
		f 4 711 712 -661 -711
		f 4 713 714 -663 -713
		f 4 715 716 -665 -715
		f 4 717 718 -667 -717
		f 4 719 720 -669 -719
		f 4 721 722 -671 -721
		f 4 723 724 -673 -723
		f 4 725 726 -675 -725
		f 4 727 728 -677 -727
		f 4 729 730 -679 -729
		f 4 731 732 -681 -731
		f 4 733 734 -683 -733
		f 4 735 736 -685 -735
		f 4 737 738 -687 -737
		f 4 739 740 -689 -739
		f 4 741 742 -691 -741
		f 4 743 744 -694 -743
		f 4 745 746 -696 -745
		f 4 747 748 -698 -747
		f 4 749 -703 -700 -749
		f 4 750 751 -701 752
		f 4 753 754 -704 -752
		f 4 755 756 -706 -755
		f 4 757 758 -708 -757
		f 4 759 760 -712 761
		f 4 762 763 -714 -761
		f 4 764 765 -716 -764
		f 4 766 767 -718 -766
		f 4 768 769 -720 -768
		f 4 770 771 -722 -770
		f 4 772 773 -724 -772
		f 4 774 775 -726 -774
		f 4 776 777 -728 -776
		f 4 778 779 -730 -778
		f 4 780 781 -732 -780
		f 4 782 783 -734 -782
		f 4 784 785 -736 -784
		f 4 786 787 -738 -786
		f 4 788 789 -740 -788
		f 4 790 791 -742 -790
		f 4 792 793 -744 -792
		f 4 794 795 -746 -794
		f 4 796 797 -748 -796
		f 4 798 -753 -750 -798
		f 4 799 800 -751 801
		f 4 802 803 -754 -801
		f 4 804 805 -756 -804
		f 4 806 807 -758 -806
		f 4 808 809 810 -808
		f 4 811 812 -760 -810
		f 4 813 814 -763 -813
		f 4 815 816 -765 -815
		f 4 817 818 -767 -817
		f 4 819 820 -769 -819
		f 4 821 822 -771 -821
		f 4 823 824 -773 -823
		f 4 825 826 -775 -825
		f 4 827 828 -777 -827
		f 4 829 830 -779 -829
		f 4 831 832 -781 -831
		f 4 833 834 -783 -833
		f 4 835 836 -785 -835
		f 4 837 838 -787 -837
		f 4 839 840 -789 -839
		f 4 841 842 -791 -841
		f 4 843 844 -793 -843
		f 4 845 846 -795 -845
		f 4 847 848 -797 -847
		f 4 849 -802 -799 -849
		f 4 850 851 -800 852
		f 4 853 854 -803 -852
		f 4 855 856 -805 -855
		f 4 857 858 -807 -857
		f 4 859 860 -809 -859
		f 4 861 862 -812 -861
		f 4 863 864 -814 -863
		f 4 865 866 -816 -865
		f 4 867 868 -818 -867
		f 4 869 870 -820 -869
		f 4 871 872 -822 -871
		f 4 873 874 -824 -873
		f 4 875 876 -826 -875
		f 4 877 878 -830 879
		f 4 880 881 -832 -879
		f 4 882 883 -834 -882
		f 4 884 885 -836 -884
		f 4 886 887 -838 -886
		f 4 888 889 -840 -888
		f 4 890 891 -842 -890
		f 4 892 893 -844 -892
		f 4 894 895 -846 -894
		f 4 896 897 -848 -896
		f 4 898 -853 -850 -898
		f 4 899 900 -851 901
		f 4 902 903 -854 -901
		f 4 904 905 -856 -904
		f 4 906 907 -858 -906
		f 4 908 909 -860 -908
		f 4 910 911 -862 -910
		f 4 912 913 -864 -912
		f 4 914 915 -866 -914
		f 4 916 917 -868 -916
		f 4 918 919 -870 -918
		f 4 920 921 -872 -920
		f 4 922 923 -874 -922
		f 4 924 925 -876 -924
		f 4 926 927 928 -926
		f 4 929 930 -878 -928
		f 4 931 932 -881 -931
		f 4 933 934 -883 -933
		f 4 935 936 -885 -935
		f 4 937 938 -887 -937
		f 4 939 940 -889 -939
		f 4 941 942 -891 -941
		f 4 943 944 -893 -943
		f 4 945 946 -895 -945
		f 4 947 948 -897 -947
		f 4 949 -902 -899 -949
		f 4 950 951 -900 952
		f 4 953 954 -903 -952
		f 4 955 956 -905 -955
		f 4 957 958 -907 -957
		f 4 959 960 -909 -959
		f 4 961 962 -911 -961
		f 4 963 964 -913 -963
		f 4 965 966 -915 -965
		f 4 967 968 -917 -967
		f 4 969 970 -919 -969
		f 4 971 972 -921 -971
		f 4 973 974 -923 -973
		f 4 975 976 -925 -975
		f 4 977 978 -927 -977
		f 4 979 980 -930 -979
		f 4 981 982 -932 -981
		f 4 983 984 -934 -983
		f 4 985 986 -936 -985
		f 4 987 988 -938 -987
		f 4 989 990 -940 -989
		f 4 991 992 -942 -991
		f 4 993 994 -944 -993
		f 4 995 996 -948 997
		f 4 998 -953 -950 -997
		f 4 999 1000 -951 1001
		f 4 1002 1003 -954 -1001
		f 4 1004 1005 -956 -1004
		f 4 1006 1007 -958 -1006
		f 4 1008 1009 -960 -1008
		f 4 1010 1011 -962 -1010
		f 4 1012 1013 -964 -1012
		f 4 1014 1015 -966 -1014
		f 4 1016 1017 -968 -1016
		f 4 1018 1019 -970 -1018
		f 4 1020 1021 -972 -1020
		f 4 1022 1023 -974 -1022
		f 4 1024 1025 -976 -1024
		f 4 1026 1027 -978 -1026
		f 4 1028 1029 -980 -1028
		f 4 1030 1031 -982 -1030
		f 4 1032 1033 -984 -1032
		f 4 1034 1035 -986 -1034
		f 4 1036 1037 -988 -1036
		f 4 1038 1039 -990 -1038
		f 4 1040 1041 -992 -1040
		f 4 1042 1043 -994 -1042
		f 4 1044 1045 1046 -1044
		f 4 1047 1048 -996 -1046
		f 4 1049 -1002 -999 -1049
		f 4 1050 1051 -1000 1052
		f 4 1053 1054 -1003 -1052
		f 4 1055 1056 -1005 -1055
		f 4 1057 1058 -1007 -1057
		f 4 1059 1060 -1009 -1059
		f 4 1061 1062 -1011 -1061
		f 4 1063 1064 -1013 -1063;
	setAttr ".fc[500:669]"
		f 4 1065 1066 -1015 -1065
		f 4 1067 1068 -1017 -1067
		f 4 1069 1070 -1019 -1069
		f 4 1071 1072 -1021 -1071
		f 4 1073 1074 -1023 -1073
		f 4 1075 1076 -1025 -1075
		f 4 1077 1078 -1027 -1077
		f 4 1079 1080 -1029 -1079
		f 4 1081 1082 -1031 -1081
		f 4 1083 1084 -1033 -1083
		f 4 1085 1086 -1035 -1085
		f 4 1087 1088 -1037 -1087
		f 4 1089 1090 -1039 -1089
		f 4 1091 1092 -1041 -1091
		f 4 1093 1094 -1043 -1093
		f 4 1095 1096 -1045 -1095
		f 4 1097 1098 -1048 -1097
		f 4 1099 -1053 -1050 -1099
		f 4 1100 1101 -1051 1102
		f 4 1103 1104 -1054 -1102
		f 4 1105 1106 -1056 -1105
		f 4 1107 1108 -1058 -1107
		f 4 1109 1110 -1060 -1109
		f 4 1111 1112 -1062 -1111
		f 4 1113 1114 -1066 1115
		f 4 1116 1117 -1068 -1115
		f 4 1118 1119 -1070 -1118
		f 4 1120 1121 -1072 -1120
		f 4 1122 1123 -1074 -1122
		f 4 1124 1125 -1076 -1124
		f 4 1126 1127 -1078 -1126
		f 4 1128 1129 -1080 -1128
		f 4 1130 1131 -1082 -1130
		f 4 1132 1133 -1084 -1132
		f 4 1134 1135 -1086 -1134
		f 4 1136 1137 -1088 -1136
		f 4 1138 1139 -1090 -1138
		f 4 1140 1141 -1092 -1140
		f 4 1142 1143 -1094 -1142
		f 4 1144 1145 -1096 -1144
		f 4 1146 1147 -1098 -1146
		f 4 1148 -1103 -1100 -1148
		f 4 1149 1150 -1101 1151
		f 4 1152 1153 -1104 -1151
		f 4 1154 1155 -1106 -1154
		f 4 1156 1157 -1108 -1156
		f 4 1158 1159 -1110 -1158
		f 4 1160 1161 -1112 -1160
		f 4 1162 1163 1164 -1162
		f 4 1165 1166 -1114 -1164
		f 4 1167 1168 -1117 -1167
		f 4 1169 1170 -1119 -1169
		f 4 1171 1172 -1121 -1171
		f 4 1173 1174 -1123 -1173
		f 4 1175 1176 -1125 -1175
		f 4 1177 1178 -1127 -1177
		f 4 1179 1180 -1129 -1179
		f 4 1181 1182 -1131 -1181
		f 4 1183 1184 -1133 -1183
		f 4 1185 1186 -1135 -1185
		f 4 1187 1188 -1137 -1187
		f 4 1189 1190 -1139 -1189
		f 4 1191 1192 -1141 -1191
		f 4 1193 1194 -1143 -1193
		f 4 1195 1196 -1145 -1195
		f 4 1197 1198 -1147 -1197
		f 4 1199 -1152 -1149 -1199
		f 4 -49 1200 -1150 1201
		f 4 -48 1202 -1153 -1201
		f 4 -47 1203 -1155 -1203
		f 4 -46 1204 -1157 -1204
		f 4 -45 1205 -1159 -1205
		f 4 -44 1206 -1161 -1206
		f 4 -43 1207 -1163 -1207
		f 4 -42 1208 -1166 -1208
		f 4 -41 1209 -1168 -1209
		f 4 -40 1210 -1170 -1210
		f 4 -39 1211 -1172 -1211
		f 4 -38 1212 -1174 -1212
		f 4 -37 1213 -1176 -1213
		f 4 -36 1214 -1178 -1214
		f 4 -35 1215 -1180 -1215
		f 4 -33 1216 -1184 1217
		f 4 -32 1218 -1186 -1217
		f 4 -31 1219 -1188 -1219
		f 4 -30 1220 -1190 -1220
		f 4 -29 1221 -1192 -1221
		f 4 -28 1222 -1194 -1222
		f 4 -27 1223 -1196 -1223
		f 4 -26 1224 -1198 -1224
		f 4 -50 -1202 -1200 -1225
		f 4 1225 1226 1227 1228
		f 4 1229 1230 1231 1232
		f 4 1233 1234 1235 1236
		f 4 1237 1238 1239 1240
		f 4 1241 1242 1243 1244
		f 4 -1228 1245 -1 1246
		f 4 -1227 1247 -53 -1246
		f 4 -1226 1248 -102 -1248
		f 4 -1229 -1247 -99 -1249
		f 4 1249 1250 -120 1251
		f 4 1252 1253 -172 -1251
		f 4 1254 1255 -221 -1254
		f 4 1256 -1252 -169 -1256
		f 4 1257 1258 -238 1259
		f 4 1260 1261 -290 -1259
		f 4 1262 1263 -339 -1262
		f 4 1264 -1260 -287 -1264
		f 4 -1232 1265 -356 1266
		f 4 -1231 1267 -408 -1266
		f 4 -1230 1268 -457 -1268
		f 4 -1233 -1267 -405 -1269
		f 4 -1236 1269 -474 1270
		f 4 -1235 1271 -526 -1270
		f 4 -1234 1272 -575 -1272
		f 4 -1237 -1271 -523 -1273
		f 4 1273 1274 -592 1275
		f 4 1276 1277 -644 -1275
		f 4 1278 1279 -693 -1278
		f 4 1280 -1276 -641 -1280
		f 4 1281 1282 -710 1283
		f 4 1284 1285 -762 -1283
		f 4 1286 1287 -811 -1286
		f 4 1288 -1284 -759 -1288
		f 4 -1240 1289 -828 1290
		f 4 -1239 1291 -880 -1290
		f 4 -1238 1292 -929 -1292
		f 4 -1241 -1291 -877 -1293
		f 4 -1244 1293 -946 1294
		f 4 -1243 1295 -998 -1294
		f 4 -1242 1296 -1047 -1296
		f 4 -1245 -1295 -995 -1297
		f 4 1297 1298 -1064 1299
		f 4 1300 1301 -1116 -1299
		f 4 1302 1303 -1165 -1302
		f 4 1304 -1300 -1113 -1304
		f 4 1305 1306 -1182 1307
		f 4 1308 1309 -1218 -1307
		f 4 1310 1311 -34 -1310
		f 4 1312 -1308 -1216 -1312
		f 4 1313 1314 1315 1316
		f 4 1317 1318 1319 1320
		f 4 1321 1322 1323 1324
		f 4 1325 1326 1327 1328
		f 4 1329 1330 1331 1332
		f 4 1333 1334 1335 1336
		f 4 -1316 1337 -1250 1338
		f 4 -1315 1339 -1253 -1338
		f 4 -1314 1340 -1255 -1340
		f 4 -1317 -1339 -1257 -1341
		f 4 -1320 1341 -1258 1342
		f 4 -1319 1343 -1261 -1342
		f 4 -1318 1344 -1263 -1344
		f 4 -1321 -1343 -1265 -1345
		f 4 -1324 1345 -1274 1346
		f 4 -1323 1347 -1277 -1346
		f 4 -1322 1348 -1279 -1348
		f 4 -1325 -1347 -1281 -1349
		f 4 -1328 1349 -1282 1350
		f 4 -1327 1351 -1285 -1350
		f 4 -1326 1352 -1287 -1352
		f 4 -1329 -1351 -1289 -1353
		f 4 -1332 1353 -1298 1354
		f 4 -1331 1355 -1301 -1354
		f 4 -1330 1356 -1303 -1356
		f 4 -1333 -1355 -1305 -1357
		f 4 -1336 1357 -1306 1358
		f 4 -1335 1359 -1309 -1358
		f 4 -1334 1360 -1311 -1360
		f 4 -1337 -1359 -1313 -1361;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode houdiniAsset -n "hunte__dev__Tree_subnet__1_06" -p "Globe_Core";
	rename -uid "3FA78B4D-4391-6904-DF6E-5A9023A868E8";
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
	setAttr ".t" -type "double3" 0 1.0007328950678349 0 ;
	setAttr ".s" -type "double3" 0.042426509627468308 0.042426509627468308 0.042426509627468308 ;
	setAttr ".otlFilePath" -type "string" "C:/Users/hunte/Documents/houdini19.5/otls/object_hunte.dev.Tree_subnet.1.0.hdanc";
	setAttr ".assetName" -type "string" "hunte::dev::Object/Tree_subnet::1.0";
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
	setAttr -cb on ".houdiniAssetParm_bend" -17;
	setAttr -cb on ".houdiniAssetParm_selectamount1" 1;
	setAttr -cb on ".houdiniAssetParm_dist" 1.2999999523162842;
	setAttr -cb on ".houdiniAssetParm_selectamount2" 4;
	setAttr -cb on ".houdiniAssetParm_dist2" 1;
	setAttr -cb on ".houdiniAssetParm_bend2" 36;
createNode transform -n "tube_object1" -p "hunte__dev__Tree_subnet__1_06";
	rename -uid "C449C94B-405B-BAC9-3160-A5ABFB9C21B9";
createNode transform -n "lineartaper2_0" -p "|Globe_Core|hunte__dev__Tree_subnet__1_06|tube_object1";
	rename -uid "4BE98D13-4C78-A2EA-9FDA-968B257F37EA";
	setAttr ".rp" -type "double3" -7.9812617301940918 0.44794023036956787 -5.807985782623291 ;
	setAttr ".sp" -type "double3" -7.9812617301940918 0.44794023036956787 -5.807985782623291 ;
createNode mesh -n "lineartaper2_0Shape" -p "|Globe_Core|hunte__dev__Tree_subnet__1_06|tube_object1|lineartaper2_0";
	rename -uid "A421D8A1-423A-3B77-2CDD-8488D8E9A6C1";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "lineartaper2_7" -p "|Globe_Core|hunte__dev__Tree_subnet__1_06|tube_object1";
	rename -uid "CBCE0E88-4D6F-A79F-65AB-DA87B3A5700F";
	setAttr ".t" -type "double3" -0.77497041153181456 -0.037476918638562839 11.339755354783135 ;
	setAttr ".r" -type "double3" 53.099546516551044 -61.258641399101883 -40.997944886400866 ;
	setAttr ".rp" -type "double3" -7.9812617301940918 0.44794023036956787 -5.807985782623291 ;
	setAttr ".sp" -type "double3" -7.9812617301940918 0.44794023036956787 -5.807985782623291 ;
createNode mesh -n "lineartaper2_7Shape" -p "lineartaper2_7";
	rename -uid "09A28A07-400D-6239-5BED-31983E280BC5";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 2 "f[591:598]" "f[643:645]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[643:645]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 709 ".vt";
	setAttr ".vt[0:165]"  -7.46077204 2.51989722 -6.023382187 -7.46256065 2.51699901 -6.043144226
		 -7.46924782 2.51459765 -6.061896324 -7.48041487 2.51284289 -6.078460693 -7.49535847 2.5118463 -6.091795444
		 -7.51314068 2.51166987 -6.10106373 -7.5326438 2.51232314 -6.10568237 -7.55264235 2.51376796 -6.10536194
		 -7.57187986 2.51591182 -6.10012245 -7.58914804 2.51862073 -6.090292931 -7.60336065 2.52172303 -6.076490402
		 -7.61362553 2.52502561 -6.059583187 -7.61929798 2.52832007 -6.040633202 -7.62002087 2.53139949 -6.020830631
		 -7.61574888 2.53407025 -6.0014204979 -7.60675097 2.53616452 -5.98362207 -7.59359217 2.53755212 -5.96855402
		 -7.57709885 2.53814292 -5.95716238 -7.55830812 2.53790259 -5.95016384 -7.53840017 2.53684402 -5.94799709
		 -7.51862621 2.5350368 -5.95079947 -7.5002284 2.53259063 -5.95839405 -7.48436308 2.52966189 -5.97030401
		 -7.47202682 2.52643371 -5.98578072 -7.46399498 2.5231092 -6.0038518906 -7.45558691 2.32679772 -5.99316502
		 -7.45776939 2.3232286 -6.017244339 -7.46592712 2.32019258 -6.040081501 -7.4795475 2.31787896 -6.060242176
		 -7.4977746 2.31643414 -6.076458931 -7.51946402 2.31594872 -6.087713242 -7.54325151 2.31645274 -6.093297482
		 -7.56764412 2.31791615 -6.092861652 -7.59110785 2.32024646 -6.086432457 -7.61216927 2.32329583 -6.074413776
		 -7.62950373 2.32687259 -6.057560921 -7.64202356 2.33075356 -6.036933422 -7.64894104 2.33469462 -6.01382637
		 -7.64982224 2.33844733 -5.98969221 -7.64461136 2.34177709 -5.96604776 -7.63363552 2.3444736 -5.9443779
		 -7.61758518 2.34636807 -5.92604446 -7.59746838 2.34734035 -5.91219997 -7.57454872 2.34733033 -5.90371323
		 -7.55026722 2.34633803 -5.90111876 -7.52614927 2.34442735 -5.90457869 -7.50370979 2.341717 -5.91387606
		 -7.48435926 2.33837628 -5.92842627 -7.46931362 2.33461785 -5.94731569 -7.45951748 2.33067584 -5.96935654
		 -7.44797707 2.1340034 -5.96290636 -7.45055294 2.12975001 -5.99130058 -7.46018124 2.12603831 -6.018217087
		 -7.47625732 2.12310243 -6.041964531 -7.49776983 2.12112832 -6.061050415 -7.52336836 2.12023711 -6.07427597
		 -7.5514431 2.1204865 -6.080809593 -7.58023167 2.12186217 -6.080241203 -7.60792398 2.12427402 -6.072606564
		 -7.63278008 2.12757373 -6.058385372 -7.65323925 2.13155293 -6.038470745 -7.66801453 2.13596177 -6.01411438
		 -7.67617798 2.14052176 -5.98684692 -7.67721748 2.14494872 -5.95838118 -7.67106676 2.14896321 -5.93050575
		 -7.65811253 2.15231252 -5.90497255 -7.63916874 2.15478683 -5.88338566 -7.61542606 2.15623164 -5.86710167
		 -7.58837605 2.15655494 -5.8571434 -7.55971813 2.15573525 -5.85413694 -7.53125381 2.15382743 -5.85827112
		 -7.50477028 2.15094876 -5.86928606 -7.48193264 2.14727998 -5.88648987 -7.4641757 2.14305282 -5.90880108
		 -7.45261478 2.13853335 -5.93481827 -7.4379487 1.94154286 -5.93261147 -7.44091845 1.93659067 -5.96531868
		 -7.45201778 1.93216562 -5.99630833 -7.47054911 1.92854524 -6.023632526 -7.4953475 1.92595696 -6.045574665
		 -7.52485514 1.92456388 -6.060756207 -7.55721807 1.92445302 -6.068223 -7.5904026 1.92563272 -6.067505836
		 -7.62232399 1.92802644 -6.05864954 -7.65097618 1.93148613 -6.042211533 -7.67455864 1.93579316 -6.01922369
		 -7.69159031 1.94067693 -5.99113083 -7.70099974 1.94583058 -5.9596982 -7.70219707 1.95093083 -5.92690086
		 -7.69510651 1.95565724 -5.89479923 -7.68017387 1.95971227 -5.8654108 -7.65833664 1.96284103 -5.84058189
		 -7.63096762 1.96484685 -5.82187223 -7.59978676 1.96560502 -5.81045818 -7.56675243 1.96506619 -5.80705643
		 -7.53394079 1.96326542 -5.81188107 -7.5034132 1.96031547 -5.82462883 -7.47708845 1.95640159 -5.84449863
		 -7.45662022 1.95176983 -5.87024212 -7.44329453 1.94671059 -5.9002409 -7.4255085 1.74944544 -5.9022851
		 -7.42887259 1.74378157 -5.9393034 -7.44144201 1.73860264 -5.97435951 -7.46242762 1.73423409 -6.0052509308
		 -7.49051046 1.73095036 -6.030036449 -7.52392626 1.72895765 -6.047158718 -7.56057549 1.72838163 -6.055541992
		 -7.59815502 1.72925782 -6.054659367 -7.63430309 1.73153162 -6.044566154 -7.66674995 1.73505998 -6.025897026
		 -7.69345522 1.7396214 -5.99982452 -7.71274185 1.74492908 -5.96798706 -7.72339725 1.75064945 -5.93238497
		 -7.7247529 1.75642347 -5.89525604 -7.71672249 1.76188779 -5.85893202 -7.69981194 1.76669955 -5.82569599
		 -7.67508268 1.77055573 -5.79763651 -7.64408875 1.77321529 -5.77651596 -7.608778 1.77450991 -5.76366186
		 -7.57136869 1.77435875 -5.75988197 -7.53421164 1.77277088 -5.76541376 -7.4996419 1.76984692 -5.77990913
		 -7.46983051 1.76576972 -5.80245781 -7.44665194 1.76079607 -5.83164263 -7.43156195 1.75523806 -5.86563015
		 -7.4106636 1.55774069 -5.87193155 -7.4144206 1.55135179 -5.91325903 -7.42845964 1.54537988 -5.95237589
		 -7.45189762 1.54020047 -5.98682451 -7.48326206 1.5361383 -6.014440536 -7.52058268 1.53344965 -6.033488274
		 -7.5615139 1.5323019 -6.042771339 -7.60348463 1.53276849 -6.041706562 -7.643857 1.53482008 -6.030360222
		 -7.68009472 1.53832674 -6.0094456673 -7.70992041 1.54306912 -5.98027706 -7.73146009 1.54874921 -5.94468689
		 -7.743361 1.5550096 -5.90491199 -7.74487448 1.56145692 -5.863451 -7.73590565 1.56768632 -5.82290888
		 -7.7170186 1.57330632 -5.78583384 -7.68939972 1.57796407 -5.75455475 -7.6547842 1.5813663 -5.73103762
		 -7.61534691 1.58329988 -5.71675968 -7.57356644 1.58364296 -5.71261787 -7.53206778 1.5823741 -5.71887302
		 -7.49345827 1.57957244 -5.73513126 -7.46016407 1.57541537 -5.76037216 -7.43427706 1.57016253 -5.7930088
		 -7.4174242 1.56414485 -5.83099079 -7.39342165 1.36645913 -5.84155703 -7.39757156 1.35933185 -5.88719082
		 -7.41307688 1.35252738 -5.93036222 -7.43896389 1.34647393 -5.96835804 -7.47360611 1.34155059 -5.99879169
		 -7.5148263 1.33806801 -6.019749641 -7.56003475 1.33624434 -6.029916286 -7.60639048 1.33619452 -6.028652191
		 -7.65098143 1.33792138 -6.01603651 -7.69100571 1.34131646 -5.9928627 -7.723948 1.34616661 -5.96058607
		 -7.74773836 1.35216713 -5.92123556 -7.76088238 1.35894012 -5.87728262 -7.76255417 1.36606121 -5.83149004
		 -7.75264835 1.37308288 -5.78673458 -7.73178768 1.37956285 -5.74582815;
	setAttr ".vt[166:331]" -7.70128298 1.38509488 -5.71134138 -7.66305017 1.3893311 -5.68544149
		 -7.61949253 1.39200497 -5.66975546 -7.57334614 1.39294934 -5.6652689 -7.5275116 1.39210415 -5.6722641
		 -7.48486757 1.38952279 -5.69030094 -7.44809437 1.38536763 -5.71824646 -7.41950274 1.37989926 -5.75434494
		 -7.40088844 1.37346148 -5.79632759 -7.37379169 1.17562866 -5.81116486 -7.37833357 1.16774964 -5.86110353
		 -7.39530277 1.16007328 -5.90832329 -7.42363453 1.15308237 -5.94985628 -7.46154785 1.14721608 -5.98309422
		 -7.50666094 1.14284301 -6.0059475899 -7.55613852 1.14023805 -6.016980648 -7.60687256 1.13956451 -6.015500069
		 -7.65567446 1.14086509 -6.0015993118 -7.69947863 1.14405799 -5.97615194 -7.73553228 1.14894223 -5.94075584
		 -7.76156998 1.15521145 -5.89763641 -7.7759552 1.16247153 -5.84950209 -7.7777853 1.17026639 -5.79937744
		 -7.76694441 1.17810583 -5.75041199 -7.74411392 1.18549752 -5.70568323 -7.71072769 1.19197726 -5.6680007
		 -7.66888475 1.19713759 -5.63973188 -7.62121344 1.20065451 -5.62265396 -7.57070971 1.20230699 -5.61783981
		 -7.52054596 1.20199084 -5.62559128 -7.47387505 1.19972634 -5.64542198 -7.43362856 1.19565535 -5.67608547
		 -7.4023366 1.19003439 -5.71565533 -7.38196421 1.18321586 -5.76164532 -7.35177994 0.98527884 -5.78076077
		 -7.35671186 0.97663426 -5.83500195 -7.3751421 0.96804667 -5.88626337 -7.4059124 0.96005583 -5.93132401
		 -7.44708967 0.95316386 -5.96735287 -7.4960866 0.9478035 -5.99208593 -7.54982424 0.94431162 -6.0039691925
		 -7.60492659 0.94290805 -6.0022559166 -7.65793085 0.94368076 -5.98705387 -7.7055068 0.94658065 -5.95931768
		 -7.74466467 0.95142651 -5.92079115 -7.77294445 0.95791292 -5.87389421 -7.78856945 0.96563292 -5.82157373
		 -7.79055738 0.97410107 -5.7671175 -7.7787838 0.9827857 -5.7139473 -7.75398779 0.99114084 -5.66540337
		 -7.71772814 0.99864125 -5.62453604 -7.6722827 1.0048165321 -5.59391356 -7.62050724 1.0092775822 -5.57545996
		 -7.56565475 1.011744499 -5.57033491 -7.51117182 1.01206255 -5.57885981 -7.46048212 1.010211706 -5.60049915
		 -7.41677046 1.0063080788 -5.63389397 -7.38278341 1.00059700012 -5.67694521 -7.36065674 0.99343705 -5.72694826
		 -7.32739735 0.79543805 -5.75034904 -7.33271837 0.7860148 -5.80889082 -7.35260439 0.77647686 -5.86418772
		 -7.38580704 0.76742339 -5.91276598 -7.4302392 0.75942326 -5.9515729 -7.48310947 0.7529788 -5.97817039
		 -7.54109573 0.74849558 -5.99088669 -7.60055447 0.74625516 -5.98892355 -7.65774965 0.74639821 -5.97240353
		 -7.70908737 0.74891543 -5.94236517 -7.7513423 0.753649 -5.9006958 -7.78185892 0.76030159 -5.85001373
		 -7.79871988 0.76845503 -5.79350328 -7.80086613 0.77759695 -5.73471546 -7.78816223 0.78715277 -5.67734337
		 -7.7614069 0.79652238 -5.62499332 -7.72228098 0.80511737 -5.58095312 -7.67324305 0.81239676 -5.54799128
		 -7.61737442 0.81790376 -5.52817822 -7.5581851 0.8212924 -5.52275848 -7.49939489 0.82234955 -5.53207397
		 -7.4446969 0.82100916 -5.5555377 -7.39752865 0.81735492 -5.59167671 -7.36085367 0.81161642 -5.63821936
		 -7.33697653 0.8041544 -5.69224215 -7.30064964 0.60613656 -5.71993542 -7.30635786 0.59592104 -5.78277493
		 -7.32769537 0.58539343 -5.84210157 -7.36332178 0.57521462 -5.89418697 -7.41099882 0.56602383 -5.93575907
		 -7.46773005 0.55839968 -5.96420527 -7.5299511 0.55282021 -5.97773838 -7.59375286 0.54963613 -5.97550774
		 -7.65512609 0.54904819 -5.957654 -7.71021414 0.55109262 -5.92529869 -7.75555611 0.55564141 -5.88047504
		 -7.78830338 0.56240845 -5.82599926 -7.80639744 0.57096863 -5.76529408 -7.80870152 0.58078432 -5.70217466
		 -7.79507113 0.59123826 -5.64060593 -7.76636267 0.60167384 -5.5844574 -7.72438002 0.61143565 -5.53725624
		 -7.67176104 0.61991 -5.50196886 -7.61181211 0.62656426 -5.48081255 -7.54829979 0.63098097 -5.47511625
		 -7.48521519 0.63288188 -5.48523808 -7.42652178 0.63214779 -5.51054239 -7.37590742 0.62882495 -5.54943848
		 -7.33655262 0.62312222 -5.59948301 -7.31093025 0.61539745 -5.65753078 -7.27155066 0.41740155 -5.6895237
		 -7.27764368 0.40638065 -5.75665903 -7.30042696 0.39482403 -5.82000875 -7.33846807 0.38345695 -5.87559175
		 -7.38937712 0.37299418 -5.9199152 -7.44995546 0.36409307 -5.95019484 -7.51639605 0.35731292 -5.96452761
		 -7.58452511 0.35307956 -5.96201324 -7.65006113 0.35165906 -5.9428091 -7.70888662 0.35314131 -5.90812254
		 -7.75730515 0.35743213 -5.86013269 -7.79227495 0.36426234 -5.80185509 -7.81159782 0.37320328 -5.73695135
		 -7.81406021 0.38369226 -5.66949987 -7.79950714 0.39507079 -5.60373878 -7.76885319 0.40662384 -5.54379988
		 -7.72402477 0.41762543 -5.49344969 -7.6678381 0.42738414 -5.45585155 -7.60382366 0.43528724 -5.43336821
		 -7.53600407 0.44083762 -5.42741203 -7.46864033 0.44368672 -5.43835783 -7.40596533 0.44365573 -5.46551704
		 -7.35191679 0.44074655 -5.50718403 -7.3098917 0.43514204 -5.56073999 -7.28252983 0.42719364 -5.6228199
		 -7.24010706 0.22926235 -5.65911865 -7.24658394 0.21742272 -5.73054838 -7.27080584 0.20479774 -5.79791451
		 -7.31125116 0.1921804 -5.85698509 -7.36537886 0.18036389 -5.90404701 -7.42978811 0.17008996 -5.93614435
		 -7.50043106 0.16200495 -5.95126009 -7.57286978 0.15661645 -5.94844437 -7.64255238 0.15426278 -5.92787361
		 -7.70510006 0.15509248 -5.89084148 -7.75658321 0.15905261 -5.839674 -7.7937665 0.16589522 -5.77758598
		 -7.81431389 0.17518997 -5.7084794 -7.81693459 0.18635273 -5.63669634 -7.80146313 0.19868207 -5.56674671
		 -7.76887274 0.21140361 -5.50302601 -7.72121 0.22371793 -5.44953823 -7.66147041 0.23485065 -5.40964365
		 -7.59340763 0.24410319 -5.38584948 -7.52129841 0.25089359 -5.37965107 -7.44967318 0.25479531 -5.39143705
		 -7.38303232 0.2555635 -5.42046738 -7.32556391 0.25314927 -5.46491766 -7.28087807 0.24770498 -5.52199554
		 -7.25178337 0.23957205 -5.58811426 -7.2063303 0.041746616 -5.62872601 -7.21318722 0.029075384 -5.70444727
		 -7.23884058 0.015343189 -5.77582407 -7.28167915 0.0014133453 -5.83837128 -7.33901072 -0.011839151 -5.8881588
		 -7.40723276 -0.023581028 -5.92205858 -7.482059 -0.033075452 -5.93794012;
	setAttr ".vt[332:497]" -7.55878735 -0.039724827 -5.93480587 -7.63259745 -0.043112278 -5.91285229
		 -7.69885063 -0.043024182 -5.87345982 -7.75338459 -0.0394665 -5.81910276 -7.79277277 -0.032662749 -5.75319672
		 -7.81453991 -0.023040652 -5.679883 -7.81731892 -0.011204362 -5.60376787 -7.80093431 0.0021026134 -5.529634
		 -7.76641607 0.016043425 -5.46214008 -7.71593285 0.029742479 -5.40552616 -7.65265751 0.042338848 -5.36334991
		 -7.5805645 0.053041458 -5.3382616 -7.5041852 0.061177254 -5.33183718 -7.42831755 0.066236019 -5.34448051
		 -7.35772943 0.067898512 -5.37539768 -7.29685545 0.066061497 -5.42264509 -7.24952126 0.060839653 -5.48325443
		 -7.21870041 0.052561522 -5.55341768 -7.17022991 -0.14511704 -5.59834957 -7.17746496 -0.15863371 -5.67836046
		 -7.20454216 -0.17351174 -5.75374126 -7.24976063 -0.18881607 -5.81975555 -7.31027889 -0.20358527 -5.87225533
		 -7.38229465 -0.21689141 -5.90794182 -7.46128225 -0.22789812 -5.92457247 -7.54227924 -0.23591399 -5.92110252
		 -7.62019634 -0.2404356 -5.8977499 -7.69013691 -0.24117851 -5.8559823 -7.74770737 -0.23809612 -5.79842377
		 -7.78928947 -0.23138201 -5.7286911 -7.81227112 -0.2214582 -5.65116596 -7.81520748 -0.20894814 -5.57071924
		 -7.79791546 -0.19463813 -5.49240589 -7.76147985 -0.17942703 -5.42114639 -7.70819139 -0.16427064 -5.36141825
		 -7.64139748 -0.15012145 -5.31697512 -7.5652957 -0.13786829 -5.29060841 -7.48466778 -0.12828135 -5.2839756
		 -7.40457916 -0.1219629 -5.29749346 -7.33006287 -0.11930978 -5.33031225 -7.26580048 -0.12048876 -5.38037014
		 -7.21583033 -0.12542605 -5.44452143 -7.18329191 -0.133811 -5.51873589 -7.13181639 -0.3313005 -5.56799459
		 -7.13942623 -0.34567559 -5.65229321 -7.16791916 -0.36173809 -5.73167181 -7.21550369 -0.37847877 -5.80114269
		 -7.27919054 -0.39484596 -5.85634136 -7.35497808 -0.40981114 -5.89379883 -7.43810463 -0.42243397 -5.91116142
		 -7.52334595 -0.43192136 -5.9073391 -7.60534763 -0.43767703 -5.88257074 -7.67895555 -0.4393394 -5.83841372
		 -7.73954582 -0.43680406 -5.77764225 -7.78331089 -0.43023038 -5.70407486 -7.80750084 -0.42003131 -5.62233353
		 -7.81059551 -0.40684772 -5.53755522 -7.79240131 -0.39150798 -5.4550662 -7.75406027 -0.37497592 -5.38004971
		 -7.69798231 -0.35829043 -5.31721973 -7.62769079 -0.34249985 -5.27052355 -7.54760218 -0.32859623 -5.24289513
		 -7.462749 -0.31745327 -5.23607159 -7.37846279 -0.30977118 -5.25048018 -7.30003977 -0.30603266 -5.28521681
		 -7.23240709 -0.30647242 -5.33809805 -7.17981482 -0.31106329 -5.40580177 -7.14556742 -0.3195163 -5.48407316
		 -7.091103077 -0.5167762 -5.53766584 -7.099084377 -0.53202271 -5.62624931 -7.12898254 -0.54930854 -5.70961952
		 -7.17891836 -0.56754732 -5.78253746 -7.24575424 -0.5855931 -5.8404212 -7.32529068 -0.60231209 -5.87963438
		 -7.41253042 -0.61665392 -5.89771223 -7.50199127 -0.62771702 -5.89351988 -7.58805275 -0.63480651 -5.86732006
		 -7.66530657 -0.63747728 -5.82075882 -7.72889948 -0.63556075 -5.7567625 -7.77483463 -0.62917793 -5.67935133
		 -7.80022669 -0.61872959 -5.59339046 -7.80347967 -0.60487247 -5.50428009 -7.7843895 -0.58847702 -5.41761971
		 -7.74415541 -0.57057357 -5.33885479 -7.6853056 -0.5522871 -5.27293396 -7.61153746 -0.53476632 -5.22399998
		 -7.5274868 -0.51911259 -5.19512653 -7.43843412 -0.50630927 -5.18812847 -7.34997559 -0.49716067 -5.20344543
		 -7.26766872 -0.49224174 -5.24011517 -7.19668579 -0.49186182 -5.29583359 -7.14148664 -0.4960444 -5.36709929
		 -7.10553932 -0.50452685 -5.44943428 -7.048099041 -0.70151627 -5.50736761 -7.056448936 -0.71764731 -5.60023451
		 -7.087742329 -0.73619473 -5.68758965 -7.14001274 -0.75599277 -5.76394415 -7.20997667 -0.77579772 -5.82450008
		 -7.29323673 -0.79436517 -5.86545324 -7.38456249 -0.8105284 -5.88422966 -7.47821522 -0.82327163 -5.87965012
		 -7.56831026 -0.83179438 -5.85200167 -7.64918709 -0.83556116 -5.80302191 -7.71576309 -0.83433485 -5.73578882
		 -7.76385593 -0.82819319 -5.65452671 -7.79044294 -0.81752169 -5.56434107 -7.79385424 -0.80299079 -5.47089911
		 -7.77387476 -0.78551376 -5.38007164 -7.73176098 -0.76618874 -5.29756641 -7.67015791 -0.74622977 -5.22856712
		 -7.59293699 -0.72689104 -5.17740917 -7.50495005 -0.70938754 -5.14730692 -7.411726 -0.69481969 -5.14015198
		 -7.31912184 -0.68410206 -5.15639448 -7.23295641 -0.67790854 -5.19501257 -7.1586442 -0.67662823 -5.25358105
		 -7.10085392 -0.68034136 -5.32841873 -7.063217163 -0.68881488 -5.41482401 -7.0028181076 -0.8854934 -5.47710466
		 -7.011532307 -0.90252221 -5.57425261 -7.044210434 -0.92236936 -5.66558647 -7.098798752 -0.94378805 -5.74536753
		 -7.17186689 -0.96543217 -5.80858278 -7.25882483 -0.98594201 -5.85126019 -7.35420752 -1.0040287971 -5.870718
		 -7.45202255 -1.01855588 -5.86573362 -7.54612303 -1.028610468 -5.83662081 -7.63059711 -1.03356111 -5.78520823
		 -7.70013666 -1.033096552 -5.71472645 -7.75037193 -1.027245879 -5.62960434 -7.77814722 -1.016376972 -5.53519011
		 -7.78171635 -1.0011725426 -5.43741608 -7.76085567 -0.98258793 -5.3424263 -7.71687603 -0.96179104 -5.25618887
		 -7.65254021 -0.94008863 -5.18412256 -7.57189131 -0.91884398 -5.13075542 -7.47999668 -0.89939249 -5.099441051
		 -7.38262987 -0.88295615 -5.092146873 -7.28590918 -0.87056744 -5.10933065 -7.19591236 -0.86300516 -5.14991379
		 -7.11829329 -0.86074412 -5.2113452 -7.057929993 -0.86392689 -5.28976583 -7.018614769 -0.8723532 -5.38024712
		 -6.95527029 -1.068680048 -5.44688225 -6.96434546 -1.086619496 -5.54830933 -6.9983964 -1.10780454 -5.64361525
		 -7.055283546 -1.13090444 -5.72681284 -7.13143253 -1.15446758 -5.79267359 -7.22205877 -1.1770134 -5.8370595
		 -7.32146788 -1.1971252 -5.85718203 -7.42341328 -1.21353936 -5.85177612 -7.52148962 -1.22522449 -5.82118177
		 -7.60953474 -1.23144639 -5.76732159 -7.6820159 -1.23181403 -5.69357967 -7.73437881 -1.22630453 -5.60458946
		 -7.76333427 -1.21526372 -5.50594234 -7.76706123 -1.19938564 -5.40383673 -7.745327 -1.17966795 -5.30468845
		 -7.69949675 -1.15734947 -5.2147274 -7.6324501 -1.13383269 -5.139606 -7.54839945 -1.11059487 -5.084044456
		 -7.45262671 -1.089096546 -5.051533699 -7.35114908 -1.070688486 -5.044116974 -7.25034332 -1.056527138 -5.062260151
		 -7.15654278 -1.047502518 -5.10482311 -7.075642109 -1.044181466 -5.16913128;
	setAttr ".vt[498:663]" -7.012723446 -1.046772957 -5.25114393 -6.9717412 -1.055113792 -5.34570837
		 -6.90547037 -1.25104928 -5.41670513 -6.91490173 -1.26991224 -5.52240801 -6.95031309 -1.2924732 -5.62168026
		 -7.0094795227 -1.31731486 -5.7082839 -7.088683128 -1.34287608 -5.77677727 -7.18294764 -1.36755097 -5.82285643
		 -7.28635025 -1.38978899 -5.84362602 -7.39239311 -1.40819287 -5.83778191 -7.49441338 -1.4216063 -5.80569029
		 -7.58600092 -1.42918634 -5.74936771 -7.66140079 -1.43045688 -5.67235374 -7.71587563 -1.42533791 -5.57948685
		 -7.7460022 -1.41415119 -5.47660255 -7.74988794 -1.39759946 -5.37016535 -7.72728825 -1.37672293 -5.26686287
		 -7.6796236 -1.35283327 -5.1731863 -7.60988855 -1.32743144 -5.095021725 -7.52246475 -1.30211377 -5.037280083
		 -7.42284584 -1.27847087 -5.0035896301 -7.31729126 -1.25798833 -4.996068 -7.21243238 -1.24195325 -5.015186787
		 -7.1148591 -1.23137307 -5.059745312 -7.030701637 -1.22691262 -5.12694311 -6.96524811 -1.22885227 -5.21255875
		 -6.92261124 -1.23706996 -5.31121254 -6.85342932 -1.43257403 -5.38657665 -6.86321259 -1.45237303 -5.49655485
		 -6.89997149 -1.47634768 -5.59978676 -6.96139669 -1.5029912 -5.68978643 -7.043627739 -1.53062963 -5.76089859
		 -7.14149857 -1.55752623 -5.80865526 -7.24885941 -1.58199108 -5.83005571 -7.35896444 -1.60248697 -5.82375526
		 -7.46489477 -1.61772609 -5.79014969 -7.55999517 -1.62675083 -5.7313509 -7.63828945 -1.62899411 -5.65105295
		 -7.69485855 -1.62431502 -5.55430126 -7.72614813 -1.61300755 -5.44717503 -7.73019218 -1.59578228 -5.33640623
		 -7.70673561 -1.57372153 -5.22895432 -7.65725374 -1.54821134 -5.13157034 -7.5848546 -1.52085471 -5.050374031
		 -7.4940877 -1.49337041 -4.99046707 -7.39065647 -1.46748555 -4.95561361 -7.28105974 -1.4448266 -4.94800377
		 -7.17218351 -1.42681706 -4.96811533 -7.070868969 -1.41458869 -5.014685154 -6.98348236 -1.40890992 -5.084786415
		 -6.91551447 -1.41013741 -5.17401505 -6.87123632 -1.41819429 -5.27676392 -6.79916191 -1.61322761 -5.35650301
		 -6.80929279 -1.63397586 -5.47075319 -6.84738541 -1.65940142 -5.57793856 -6.91104698 -1.68790674 -5.67132425
		 -6.99627686 -1.7177006 -5.74504232 -7.097720146 -1.74691117 -5.79446125 -7.20900297 -1.77370286 -5.81647539
		 -7.32313204 -1.79639232 -5.80970192 -7.43293715 -1.81355393 -5.77456617 -7.53151894 -1.8241092 -5.71327591
		 -7.61268234 -1.82739508 -5.62968206 -7.67132807 -1.82320499 -5.52903748 -7.70377111 -1.81180227 -5.41766548
		 -7.707973 -1.79390335 -5.3025651 -7.68366957 -1.77063298 -5.19096708 -7.63238811 -1.74345326 -5.089884758
		 -7.55735064 -1.71407187 -5.0056686401 -7.46327209 -1.68433511 -4.94361115 -7.35606384 -1.65611148 -4.90761042
		 -7.24246216 -1.63117433 -4.89992952 -7.12960482 -1.61109042 -4.92105103 -7.02458334 -1.59712183 -4.96964741
		 -6.93399668 -1.5901463 -5.042665005 -6.86353636 -1.59060192 -5.13551617 -6.81763029 -1.59846044 -5.24236727
		 -6.74268103 -1.79298365 -5.32648802 -6.75315428 -1.81469369 -5.44500828 -6.7925663 -1.84160745 -5.5561409
		 -6.85844135 -1.87203407 -5.65290213 -6.94663954 -1.90406156 -5.72921324 -7.05161953 -1.93567753 -5.78027821
		 -7.16678524 -1.96489549 -5.80288935 -7.28490019 -1.98987949 -5.79562569 -7.39854288 -2.0090596676 -5.75894308
		 -7.5005722 -2.021231174 -5.69514704 -7.58457756 -2.025628805 -5.60824585 -7.64528084 -2.021976471 -5.50370026
		 -7.67886782 -2.010503531 -5.38807821 -7.68322754 -1.99193108 -5.26864576 -7.65808678 -1.96742582 -5.15290689
		 -7.60502481 -1.93852782 -5.04813385 -7.52737617 -1.90705264 -4.96090984 -7.4300189 -1.87497795 -4.89671564
		 -7.31907129 -1.84431922 -4.85958481 -7.20150375 -1.81700289 -4.85185003 -7.084704399 -1.79474521 -4.87399769
		 -6.97601128 -1.77894485 -4.92463636 -6.8822546 -1.77059448 -5.00058364868 -6.80932522 -1.77021885 -5.09706831
		 -6.76180553 -1.77784157 -5.20802689 -6.68400002 -1.97181523 -5.29653645 -6.69480991 -1.99449968 -5.41932487
		 -6.73552656 -2.022938728 -5.5343976 -6.80359077 -2.055345774 -5.6345253 -6.8947258 -2.089684248 -5.71341562
		 -7.0032052994 -2.1237967 -5.76611185 -7.12221384 -2.15553951 -5.78930283 -7.24427271 -2.18291855 -5.78153181
		 -7.36171341 -2.20421314 -5.74328613 -7.46715593 -2.21808553 -5.67697001 -7.55397511 -2.22366381 -5.58675003
		 -7.61671638 -2.22059774 -5.47829437 -7.65143681 -2.20907974 -5.35841846 -7.65595484 -2.1898334 -5.23465395
		 -7.62998676 -2.16406846 -5.11477804 -7.57516432 -2.13340378 -5.0063228607 -7.49493217 -2.099765778 -4.91610241
		 -7.39433098 -2.065268278 -4.84978628 -7.27968311 -2.032078981 -4.81154108 -7.15819168 -2.0022830963 -4.80377007
		 -7.037489891 -1.9777528 -4.82696104 -6.92516279 -1.9600296 -4.87965727 -6.82826757 -1.9502269 -4.95854759
		 -6.75289297 -1.9489609 -5.058675289 -6.70377493 -1.95631099 -5.17374849 -6.16638422 2.53592706 -6.14297867
		 -6.16817284 2.53302884 -6.16274071 -6.16338158 2.33925796 -6.13684034 -6.16119909 2.34282756 -6.1127615
		 -8.53919029 2.13474441 -6.99024868 -8.55964947 2.13872409 -6.97033405 -8.58096886 1.94296432 -6.951087
		 -8.5573864 1.93865752 -6.97407484 -7.73513222 2.086974859 -4.50811434 -7.69772339 2.086823225 -4.50433445
		 -7.69992113 1.89610791 -4.45707035 -7.7417016 1.89576483 -4.46121168 -6.32404757 1.18788266 -6.64428377
		 -6.35237885 1.18089151 -6.68581724 -6.33465719 0.98786473 -6.66728497 -6.30388641 0.99585605 -6.62222385
		 -9.027812004 0.75580931 -6.22093296 -9.044672966 0.76396251 -6.16442204 -9.052350044 0.56647635 -6.1362133
		 -9.034255981 0.55791593 -6.19691849 -6.96984196 0.78025889 -4.28600407 -6.90716648 0.78022766 -4.31316328
		 -6.88423395 0.59213567 -4.26811361 -6.95087433 0.59136724 -4.23908329 -6.73316431 -0.20698559 -7.037127495
		 -6.8051796 -0.22029173 -7.072813511 -6.7778635 -0.41321158 -7.058670998 -6.70207596 -0.39824641 -7.021213531
		 -9.072443962 -0.61892843 -5.22226667 -9.053354263 -0.60253298 -5.13560629 -9.04283905 -0.79956973 -5.098058224
		 -9.062818527 -0.81704676 -5.18888569 -6.13084793 -0.45962095 -4.46699905 -6.070484161 -0.46280384 -4.54541969
		 -6.025278091 -0.64564991 -4.50679779 -6.088196278 -0.64305842 -4.42478514 -7.30437851 -1.68566716 -7.12472534
		 -7.41448355 -1.70616305 -7.11842489 -7.37865162 -1.9000684 -7.10437107;
	setAttr ".vt[664:708]" -7.26452208 -1.87737894 -7.11114502 -8.58214378 -1.90412796 -4.19136429
		 -8.50449562 -1.87265277 -4.10414028 -8.47205162 -2.065365791 -4.059332848 -8.55228329 -2.099003792 -4.14955282
		 -7.75377798 3.10425496 -7.80284691 -7.76996183 3.11954427 -7.78453493 -7.90250063 2.97283578 -7.77697563
		 -7.88368034 2.95544076 -7.79810238 -7.25122309 2.73279071 -3.58414555 -7.22773218 2.72058988 -3.579
		 -7.28908825 2.54185367 -3.5357585 -7.31678534 2.55545211 -3.54155397 -5.4978776 1.2098043 -7.21041298
		 -5.52290869 1.20375228 -7.25197172 -5.50483227 1.011105537 -7.23348522 -5.4765358 1.018187761 -7.18837357
		 -9.28123188 2.4204967 -6.73992491 -9.29563808 2.4373734 -6.68468142 -9.41900635 2.28139758 -6.66715097
		 -9.40343094 2.26343989 -6.72648621 -6.58433867 1.15515161 -3.41754961 -6.52315044 1.1427083 -3.44283295
		 -6.5388751 0.95357919 -3.39903331 -6.60641241 0.96623325 -3.37212276 -6.40123272 -0.10898638 -7.95291758
		 -6.47936249 -0.10677195 -7.9912405 -6.4971981 -0.30106533 -7.97853231 -6.41197634 -0.30265164 -7.93815708
		 -10.27809715 1.34404469 -5.32064819 -10.26156044 1.3469553 -5.23198414 -10.37085342 1.18083954 -5.20361805
		 -10.38833141 1.17753339 -5.2965579 -5.41866207 -0.15729153 -3.89518666 -5.34476852 -0.1596806 -3.97323656
		 -5.30410862 -0.34359932 -3.93461394 -5.38333416 -0.34228444 -3.85299802 -8.16795731 -1.19336951 -8.23954868
		 -8.30958748 -1.15309429 -8.2438488 -8.37196159 -1.34062898 -8.23437119 -8.22030354 -1.38234043 -8.22976017
		 -10.56561756 -0.075364113 -3.85754871 -10.49300861 -0.09423244 -3.76267982 -10.58275414 -0.26952589 -3.72504187
		 -10.65841484 -0.25093842 -3.82321668;
	setAttr -s 1393 ".ed";
	setAttr ".ed[0:165]"  0 1 1 1 2 1 2 3 1 3 4 1 4 5 1 5 6 1 6 7 1 7 8 1 8 9 1
		 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 16 1 16 17 1 17 18 1 18 19 1 19 20 1
		 20 21 1 21 22 1 22 23 1 23 24 1 24 0 1 624 623 1 623 622 1 622 621 1 621 620 1 620 619 1
		 619 618 1 618 617 1 617 616 1 616 615 1 615 614 1 614 613 1 613 612 1 612 611 1 611 610 1
		 610 609 1 609 608 1 608 607 1 607 606 1 606 605 1 605 604 1 604 603 1 603 602 1 602 601 1
		 601 600 1 600 624 1 26 27 1 27 2 1 1 26 1 27 28 1 28 3 1 28 29 1 29 4 1 29 30 1 30 5 1
		 30 31 1 31 6 1 31 32 1 32 7 1 32 33 1 33 8 1 33 34 1 34 9 1 34 35 1 35 10 1 35 36 1
		 36 11 1 36 37 1 37 12 1 37 38 1 38 13 1 38 39 1 39 14 1 39 40 1 40 15 1 40 41 1 41 16 1
		 41 42 1 42 17 1 42 43 1 43 18 1 43 44 1 44 19 1 44 45 1 45 20 1 45 46 1 46 21 1 46 47 1
		 47 22 1 47 48 1 48 23 1 48 49 1 49 24 1 49 25 1 25 0 1 50 51 1 51 26 1 26 25 1 25 50 1
		 51 52 1 52 27 1 52 53 1 53 28 1 53 54 1 54 29 1 54 55 1 55 30 1 55 56 1 56 31 1 56 57 1
		 57 32 1 57 58 1 58 33 1 58 59 1 59 34 1 59 60 1 60 35 1 60 61 1 61 36 1 61 62 1 62 37 1
		 62 63 1 63 38 1 63 64 1 64 39 1 64 65 1 65 40 1 65 66 1 66 41 1 66 67 1 67 42 1 67 68 1
		 68 43 1 68 69 1 69 44 1 69 70 1 70 45 1 70 71 1 71 46 1 71 72 1 72 47 1 72 73 1 73 48 1
		 73 74 1 74 49 1 74 50 1 75 76 1 76 51 1 50 75 1 76 77 1 77 52 1 77 78 1 78 53 1 78 79 1
		 79 54 1 79 80 1 80 55 1 80 81 1 81 56 1 81 82 1 82 57 1 82 83 1;
	setAttr ".ed[166:331]" 83 58 1 83 84 1 84 59 1 85 86 1 86 61 1 60 85 1 86 87 1
		 87 62 1 87 88 1 88 63 1 88 89 1 89 64 1 89 90 1 90 65 1 90 91 1 91 66 1 91 92 1 92 67 1
		 92 93 1 93 68 1 93 94 1 94 69 1 94 95 1 95 70 1 95 96 1 96 71 1 96 97 1 97 72 1 97 98 1
		 98 73 1 98 99 1 99 74 1 99 75 1 100 101 1 101 76 1 75 100 1 101 102 1 102 77 1 102 103 1
		 103 78 1 103 104 1 104 79 1 104 105 1 105 80 1 105 106 1 106 81 1 106 107 1 107 82 1
		 107 108 1 108 83 1 108 109 1 109 84 1 109 110 1 110 85 1 85 84 1 110 111 1 111 86 1
		 111 112 1 112 87 1 112 113 1 113 88 1 113 114 1 114 89 1 114 115 1 115 90 1 115 116 1
		 116 91 1 116 117 1 117 92 1 117 118 1 118 93 1 118 119 1 119 94 1 119 120 1 120 95 1
		 120 121 1 121 96 1 121 122 1 122 97 1 122 123 1 123 98 1 123 124 1 124 99 1 124 100 1
		 125 126 1 126 101 1 100 125 1 126 127 1 127 102 1 127 128 1 128 103 1 128 129 1 129 104 1
		 129 130 1 130 105 1 130 131 1 131 106 1 131 132 1 132 107 1 132 133 1 133 108 1 133 134 1
		 134 109 1 134 135 1 135 110 1 135 136 1 136 111 1 136 137 1 137 112 1 137 138 1 138 113 1
		 138 139 1 139 114 1 139 140 1 140 115 1 140 141 1 141 116 1 141 142 1 142 117 1 142 143 1
		 143 118 1 144 145 1 145 120 1 119 144 1 145 146 1 146 121 1 146 147 1 147 122 1 147 148 1
		 148 123 1 148 149 1 149 124 1 149 125 1 150 151 1 151 126 1 125 150 1 151 152 1 152 127 1
		 152 153 1 153 128 1 153 154 1 154 129 1 154 155 1 155 130 1 155 156 1 156 131 1 156 157 1
		 157 132 1 157 158 1 158 133 1 158 159 1 159 134 1 159 160 1 160 135 1 160 161 1 161 136 1
		 161 162 1 162 137 1 162 163 1 163 138 1 163 164 1 164 139 1 164 165 1 165 140 1 165 166 1
		 166 141 1;
	setAttr ".ed[332:497]" 166 167 1 167 142 1 167 168 1 168 143 1 168 169 1 169 144 1
		 144 143 1 169 170 1 170 145 1 170 171 1 171 146 1 171 172 1 172 147 1 172 173 1 173 148 1
		 173 174 1 174 149 1 174 150 1 175 176 1 176 151 1 150 175 1 176 177 1 177 152 1 177 178 1
		 178 153 1 178 179 1 179 154 1 179 180 1 180 155 1 180 181 1 181 156 1 181 182 1 182 157 1
		 182 183 1 183 158 1 183 184 1 184 159 1 184 185 1 185 160 1 185 186 1 186 161 1 186 187 1
		 187 162 1 187 188 1 188 163 1 188 189 1 189 164 1 189 190 1 190 165 1 190 191 1 191 166 1
		 191 192 1 192 167 1 192 193 1 193 168 1 193 194 1 194 169 1 194 195 1 195 170 1 195 196 1
		 196 171 1 196 197 1 197 172 1 197 198 1 198 173 1 198 199 1 199 174 1 199 175 1 200 201 1
		 201 176 1 175 200 1 201 202 1 202 177 1 203 204 1 204 179 1 178 203 1 204 205 1 205 180 1
		 205 206 1 206 181 1 206 207 1 207 182 1 207 208 1 208 183 1 208 209 1 209 184 1 209 210 1
		 210 185 1 210 211 1 211 186 1 211 212 1 212 187 1 212 213 1 213 188 1 213 214 1 214 189 1
		 214 215 1 215 190 1 215 216 1 216 191 1 216 217 1 217 192 1 217 218 1 218 193 1 218 219 1
		 219 194 1 219 220 1 220 195 1 220 221 1 221 196 1 221 222 1 222 197 1 222 223 1 223 198 1
		 223 224 1 224 199 1 224 200 1 225 226 1 226 201 1 200 225 1 226 227 1 227 202 1 227 228 1
		 228 203 1 203 202 1 228 229 1 229 204 1 229 230 1 230 205 1 230 231 1 231 206 1 231 232 1
		 232 207 1 232 233 1 233 208 1 233 234 1 234 209 1 234 235 1 235 210 1 235 236 1 236 211 1
		 236 237 1 237 212 1 237 238 1 238 213 1 238 239 1 239 214 1 239 240 1 240 215 1 240 241 1
		 241 216 1 241 242 1 242 217 1 242 243 1 243 218 1 243 244 1 244 219 1 244 245 1 245 220 1
		 245 246 1 246 221 1 246 247 1 247 222 1 247 248 1 248 223 1 248 249 1;
	setAttr ".ed[498:663]" 249 224 1 249 225 1 250 251 1 251 226 1 225 250 1 251 252 1
		 252 227 1 252 253 1 253 228 1 253 254 1 254 229 1 254 255 1 255 230 1 255 256 1 256 231 1
		 256 257 1 257 232 1 257 258 1 258 233 1 258 259 1 259 234 1 259 260 1 260 235 1 260 261 1
		 261 236 1 262 263 1 263 238 1 237 262 1 263 264 1 264 239 1 264 265 1 265 240 1 265 266 1
		 266 241 1 266 267 1 267 242 1 267 268 1 268 243 1 268 269 1 269 244 1 269 270 1 270 245 1
		 270 271 1 271 246 1 271 272 1 272 247 1 272 273 1 273 248 1 273 274 1 274 249 1 274 250 1
		 275 276 1 276 251 1 250 275 1 276 277 1 277 252 1 277 278 1 278 253 1 278 279 1 279 254 1
		 279 280 1 280 255 1 280 281 1 281 256 1 281 282 1 282 257 1 282 283 1 283 258 1 283 284 1
		 284 259 1 284 285 1 285 260 1 285 286 1 286 261 1 286 287 1 287 262 1 262 261 1 287 288 1
		 288 263 1 288 289 1 289 264 1 289 290 1 290 265 1 290 291 1 291 266 1 291 292 1 292 267 1
		 292 293 1 293 268 1 293 294 1 294 269 1 294 295 1 295 270 1 295 296 1 296 271 1 296 297 1
		 297 272 1 297 298 1 298 273 1 298 299 1 299 274 1 299 275 1 300 301 1 301 276 1 275 300 1
		 301 302 1 302 277 1 302 303 1 303 278 1 303 304 1 304 279 1 304 305 1 305 280 1 305 306 1
		 306 281 1 306 307 1 307 282 1 307 308 1 308 283 1 308 309 1 309 284 1 309 310 1 310 285 1
		 310 311 1 311 286 1 311 312 1 312 287 1 312 313 1 313 288 1 313 314 1 314 289 1 314 315 1
		 315 290 1 315 316 1 316 291 1 316 317 1 317 292 1 317 318 1 318 293 1 318 319 1 319 294 1
		 319 320 1 320 295 1 321 322 1 322 297 1 296 321 1 322 323 1 323 298 1 323 324 1 324 299 1
		 324 300 1 325 326 1 326 301 1 300 325 1 326 327 1 327 302 1 327 328 1 328 303 1 328 329 1
		 329 304 1 329 330 1 330 305 1 330 331 1 331 306 1 331 332 1 332 307 1;
	setAttr ".ed[664:829]" 332 333 1 333 308 1 333 334 1 334 309 1 334 335 1 335 310 1
		 335 336 1 336 311 1 336 337 1 337 312 1 337 338 1 338 313 1 338 339 1 339 314 1 339 340 1
		 340 315 1 340 341 1 341 316 1 341 342 1 342 317 1 342 343 1 343 318 1 343 344 1 344 319 1
		 344 345 1 345 320 1 345 346 1 346 321 1 321 320 1 346 347 1 347 322 1 347 348 1 348 323 1
		 348 349 1 349 324 1 349 325 1 350 351 1 351 326 1 325 350 1 351 352 1 352 327 1 352 353 1
		 353 328 1 353 354 1 354 329 1 354 355 1 355 330 1 355 356 1 356 331 1 356 357 1 357 332 1
		 357 358 1 358 333 1 358 359 1 359 334 1 359 360 1 360 335 1 360 361 1 361 336 1 361 362 1
		 362 337 1 362 363 1 363 338 1 363 364 1 364 339 1 364 365 1 365 340 1 365 366 1 366 341 1
		 366 367 1 367 342 1 367 368 1 368 343 1 368 369 1 369 344 1 369 370 1 370 345 1 370 371 1
		 371 346 1 371 372 1 372 347 1 372 373 1 373 348 1 373 374 1 374 349 1 374 350 1 375 376 1
		 376 351 1 350 375 1 376 377 1 377 352 1 377 378 1 378 353 1 378 379 1 379 354 1 380 381 1
		 381 356 1 355 380 1 381 382 1 382 357 1 382 383 1 383 358 1 383 384 1 384 359 1 384 385 1
		 385 360 1 385 386 1 386 361 1 386 387 1 387 362 1 387 388 1 388 363 1 388 389 1 389 364 1
		 389 390 1 390 365 1 390 391 1 391 366 1 391 392 1 392 367 1 392 393 1 393 368 1 393 394 1
		 394 369 1 394 395 1 395 370 1 395 396 1 396 371 1 396 397 1 397 372 1 397 398 1 398 373 1
		 398 399 1 399 374 1 399 375 1 400 401 1 401 376 1 375 400 1 401 402 1 402 377 1 402 403 1
		 403 378 1 403 404 1 404 379 1 404 405 1 405 380 1 380 379 1 405 406 1 406 381 1 406 407 1
		 407 382 1 407 408 1 408 383 1 408 409 1 409 384 1 409 410 1 410 385 1 410 411 1 411 386 1
		 411 412 1 412 387 1 412 413 1 413 388 1 413 414 1 414 389 1 414 415 1;
	setAttr ".ed[830:995]" 415 390 1 415 416 1 416 391 1 416 417 1 417 392 1 417 418 1
		 418 393 1 418 419 1 419 394 1 419 420 1 420 395 1 420 421 1 421 396 1 421 422 1 422 397 1
		 422 423 1 423 398 1 423 424 1 424 399 1 424 400 1 425 426 1 426 401 1 400 425 1 426 427 1
		 427 402 1 427 428 1 428 403 1 428 429 1 429 404 1 429 430 1 430 405 1 430 431 1 431 406 1
		 431 432 1 432 407 1 432 433 1 433 408 1 433 434 1 434 409 1 434 435 1 435 410 1 435 436 1
		 436 411 1 436 437 1 437 412 1 437 438 1 438 413 1 439 440 1 440 415 1 414 439 1 440 441 1
		 441 416 1 441 442 1 442 417 1 442 443 1 443 418 1 443 444 1 444 419 1 444 445 1 445 420 1
		 445 446 1 446 421 1 446 447 1 447 422 1 447 448 1 448 423 1 448 449 1 449 424 1 449 425 1
		 450 451 1 451 426 1 425 450 1 451 452 1 452 427 1 452 453 1 453 428 1 453 454 1 454 429 1
		 454 455 1 455 430 1 455 456 1 456 431 1 456 457 1 457 432 1 457 458 1 458 433 1 458 459 1
		 459 434 1 459 460 1 460 435 1 460 461 1 461 436 1 461 462 1 462 437 1 462 463 1 463 438 1
		 463 464 1 464 439 1 439 438 1 464 465 1 465 440 1 465 466 1 466 441 1 466 467 1 467 442 1
		 467 468 1 468 443 1 468 469 1 469 444 1 469 470 1 470 445 1 470 471 1 471 446 1 471 472 1
		 472 447 1 472 473 1 473 448 1 473 474 1 474 449 1 474 450 1 475 476 1 476 451 1 450 475 1
		 476 477 1 477 452 1 477 478 1 478 453 1 478 479 1 479 454 1 479 480 1 480 455 1 480 481 1
		 481 456 1 481 482 1 482 457 1 482 483 1 483 458 1 483 484 1 484 459 1 484 485 1 485 460 1
		 485 486 1 486 461 1 486 487 1 487 462 1 487 488 1 488 463 1 488 489 1 489 464 1 489 490 1
		 490 465 1 490 491 1 491 466 1 491 492 1 492 467 1 492 493 1 493 468 1 493 494 1 494 469 1
		 494 495 1 495 470 1 495 496 1 496 471 1 496 497 1 497 472 1 498 499 1;
	setAttr ".ed[996:1161]" 499 474 1 473 498 1 499 475 1 500 501 1 501 476 1 475 500 1
		 501 502 1 502 477 1 502 503 1 503 478 1 503 504 1 504 479 1 504 505 1 505 480 1 505 506 1
		 506 481 1 506 507 1 507 482 1 507 508 1 508 483 1 508 509 1 509 484 1 509 510 1 510 485 1
		 510 511 1 511 486 1 511 512 1 512 487 1 512 513 1 513 488 1 513 514 1 514 489 1 514 515 1
		 515 490 1 515 516 1 516 491 1 516 517 1 517 492 1 517 518 1 518 493 1 518 519 1 519 494 1
		 519 520 1 520 495 1 520 521 1 521 496 1 521 522 1 522 497 1 522 523 1 523 498 1 498 497 1
		 523 524 1 524 499 1 524 500 1 525 526 1 526 501 1 500 525 1 526 527 1 527 502 1 527 528 1
		 528 503 1 528 529 1 529 504 1 529 530 1 530 505 1 530 531 1 531 506 1 531 532 1 532 507 1
		 532 533 1 533 508 1 533 534 1 534 509 1 534 535 1 535 510 1 535 536 1 536 511 1 536 537 1
		 537 512 1 537 538 1 538 513 1 538 539 1 539 514 1 539 540 1 540 515 1 540 541 1 541 516 1
		 541 542 1 542 517 1 542 543 1 543 518 1 543 544 1 544 519 1 544 545 1 545 520 1 545 546 1
		 546 521 1 546 547 1 547 522 1 547 548 1 548 523 1 548 549 1 549 524 1 549 525 1 550 551 1
		 551 526 1 525 550 1 551 552 1 552 527 1 552 553 1 553 528 1 553 554 1 554 529 1 554 555 1
		 555 530 1 555 556 1 556 531 1 557 558 1 558 533 1 532 557 1 558 559 1 559 534 1 559 560 1
		 560 535 1 560 561 1 561 536 1 561 562 1 562 537 1 562 563 1 563 538 1 563 564 1 564 539 1
		 564 565 1 565 540 1 565 566 1 566 541 1 566 567 1 567 542 1 567 568 1 568 543 1 568 569 1
		 569 544 1 569 570 1 570 545 1 570 571 1 571 546 1 571 572 1 572 547 1 572 573 1 573 548 1
		 573 574 1 574 549 1 574 550 1 575 576 1 576 551 1 550 575 1 576 577 1 577 552 1 577 578 1
		 578 553 1 578 579 1 579 554 1 579 580 1 580 555 1 580 581 1 581 556 1;
	setAttr ".ed[1162:1327]" 581 582 1 582 557 1 557 556 1 582 583 1 583 558 1 583 584 1
		 584 559 1 584 585 1 585 560 1 585 586 1 586 561 1 586 587 1 587 562 1 587 588 1 588 563 1
		 588 589 1 589 564 1 589 590 1 590 565 1 590 591 1 591 566 1 591 592 1 592 567 1 592 593 1
		 593 568 1 593 594 1 594 569 1 594 595 1 595 570 1 595 596 1 596 571 1 596 597 1 597 572 1
		 597 598 1 598 573 1 598 599 1 599 574 1 599 575 1 601 576 1 575 600 1 602 577 1 603 578 1
		 604 579 1 605 580 1 606 581 1 607 582 1 608 583 1 609 584 1 610 585 1 611 586 1 612 587 1
		 613 588 1 614 589 1 615 590 1 617 592 1 591 616 1 618 593 1 619 594 1 620 595 1 621 596 1
		 622 597 1 623 598 1 624 599 1 628 627 1 627 626 1 626 625 1 625 628 1 626 1 1 0 625 1
		 627 26 1 628 25 1 629 630 1 630 60 1 59 629 1 630 631 1 631 85 1 631 632 1 632 84 1
		 632 629 1 633 634 1 634 119 1 118 633 1 634 635 1 635 144 1 635 636 1 636 143 1 636 633 1
		 637 638 1 638 178 1 177 637 1 638 639 1 639 203 1 639 640 1 640 202 1 640 637 1 641 642 1
		 642 237 1 236 641 1 642 643 1 643 262 1 643 644 1 644 261 1 644 641 1 645 646 1 646 296 1
		 295 645 1 646 647 1 647 321 1 647 648 1 648 320 1 648 645 1 649 650 1 650 355 1 354 649 1
		 650 651 1 651 380 1 651 652 1 652 379 1 652 649 1 653 654 1 654 414 1 413 653 1 654 655 1
		 655 439 1 655 656 1 656 438 1 656 653 1 657 658 1 658 473 1 472 657 1 658 659 1 659 498 1
		 659 660 1 660 497 1 660 657 1 661 662 1 662 532 1 531 661 1 662 663 1 663 557 1 663 664 1
		 664 556 1 664 661 1 665 666 1 666 591 1 590 665 1 666 667 1 667 616 1 667 668 1 668 615 1
		 668 665 1 672 671 1 671 670 1 670 669 1 669 672 1 676 675 1 675 674 1 674 673 1 673 676 1
		 680 679 1 679 678 1 678 677 1 677 680 1 684 683 1 683 682 1 682 681 1;
	setAttr ".ed[1328:1392]" 681 684 1 688 687 1 687 686 1 686 685 1 685 688 1 692 691 1
		 691 690 1 690 689 1 689 692 1 696 695 1 695 694 1 694 693 1 693 696 1 700 699 1 699 698 1
		 698 697 1 697 700 1 704 703 1 703 702 1 702 701 1 701 704 1 708 707 1 707 706 1 706 705 1
		 705 708 1 670 630 1 629 669 1 671 631 1 672 632 1 674 634 1 633 673 1 675 635 1 676 636 1
		 678 638 1 637 677 1 679 639 1 680 640 1 682 642 1 641 681 1 683 643 1 684 644 1 686 646 1
		 645 685 1 687 647 1 688 648 1 690 650 1 649 689 1 691 651 1 692 652 1 694 654 1 653 693 1
		 695 655 1 696 656 1 698 658 1 657 697 1 699 659 1 700 660 1 702 662 1 661 701 1 703 663 1
		 704 664 1 706 666 1 665 705 1 707 667 1 708 668 1;
	setAttr -s 686 -ch 2786 ".fc";
	setAttr ".fc[0:499]" -type "polyFaces" 
		f 25 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24
		f 25 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49
		f 4 50 51 -2 52
		f 4 53 54 -3 -52
		f 4 55 56 -4 -55
		f 4 57 58 -5 -57
		f 4 59 60 -6 -59
		f 4 61 62 -7 -61
		f 4 63 64 -8 -63
		f 4 65 66 -9 -65
		f 4 67 68 -10 -67
		f 4 69 70 -11 -69
		f 4 71 72 -12 -71
		f 4 73 74 -13 -73
		f 4 75 76 -14 -75
		f 4 77 78 -15 -77
		f 4 79 80 -16 -79
		f 4 81 82 -17 -81
		f 4 83 84 -18 -83
		f 4 85 86 -19 -85
		f 4 87 88 -20 -87
		f 4 89 90 -21 -89
		f 4 91 92 -22 -91
		f 4 93 94 -23 -93
		f 4 95 96 -24 -95
		f 4 97 98 -25 -97
		f 4 99 100 101 102
		f 4 103 104 -51 -101
		f 4 105 106 -54 -105
		f 4 107 108 -56 -107
		f 4 109 110 -58 -109
		f 4 111 112 -60 -111
		f 4 113 114 -62 -113
		f 4 115 116 -64 -115
		f 4 117 118 -66 -117
		f 4 119 120 -68 -119
		f 4 121 122 -70 -121
		f 4 123 124 -72 -123
		f 4 125 126 -74 -125
		f 4 127 128 -76 -127
		f 4 129 130 -78 -129
		f 4 131 132 -80 -131
		f 4 133 134 -82 -133
		f 4 135 136 -84 -135
		f 4 137 138 -86 -137
		f 4 139 140 -88 -139
		f 4 141 142 -90 -141
		f 4 143 144 -92 -143
		f 4 145 146 -94 -145
		f 4 147 148 -96 -147
		f 4 149 -103 -98 -149
		f 4 150 151 -100 152
		f 4 153 154 -104 -152
		f 4 155 156 -106 -155
		f 4 157 158 -108 -157
		f 4 159 160 -110 -159
		f 4 161 162 -112 -161
		f 4 163 164 -114 -163
		f 4 165 166 -116 -165
		f 4 167 168 -118 -167
		f 4 169 170 -122 171
		f 4 172 173 -124 -171
		f 4 174 175 -126 -174
		f 4 176 177 -128 -176
		f 4 178 179 -130 -178
		f 4 180 181 -132 -180
		f 4 182 183 -134 -182
		f 4 184 185 -136 -184
		f 4 186 187 -138 -186
		f 4 188 189 -140 -188
		f 4 190 191 -142 -190
		f 4 192 193 -144 -192
		f 4 194 195 -146 -194
		f 4 196 197 -148 -196
		f 4 198 -153 -150 -198
		f 4 199 200 -151 201
		f 4 202 203 -154 -201
		f 4 204 205 -156 -204
		f 4 206 207 -158 -206
		f 4 208 209 -160 -208
		f 4 210 211 -162 -210
		f 4 212 213 -164 -212
		f 4 214 215 -166 -214
		f 4 216 217 -168 -216
		f 4 218 219 220 -218
		f 4 221 222 -170 -220
		f 4 223 224 -173 -223
		f 4 225 226 -175 -225
		f 4 227 228 -177 -227
		f 4 229 230 -179 -229
		f 4 231 232 -181 -231
		f 4 233 234 -183 -233
		f 4 235 236 -185 -235
		f 4 237 238 -187 -237
		f 4 239 240 -189 -239
		f 4 241 242 -191 -241
		f 4 243 244 -193 -243
		f 4 245 246 -195 -245
		f 4 247 248 -197 -247
		f 4 249 -202 -199 -249
		f 4 250 251 -200 252
		f 4 253 254 -203 -252
		f 4 255 256 -205 -255
		f 4 257 258 -207 -257
		f 4 259 260 -209 -259
		f 4 261 262 -211 -261
		f 4 263 264 -213 -263
		f 4 265 266 -215 -265
		f 4 267 268 -217 -267
		f 4 269 270 -219 -269
		f 4 271 272 -222 -271
		f 4 273 274 -224 -273
		f 4 275 276 -226 -275
		f 4 277 278 -228 -277
		f 4 279 280 -230 -279
		f 4 281 282 -232 -281
		f 4 283 284 -234 -283
		f 4 285 286 -236 -285
		f 4 287 288 -240 289
		f 4 290 291 -242 -289
		f 4 292 293 -244 -292
		f 4 294 295 -246 -294
		f 4 296 297 -248 -296
		f 4 298 -253 -250 -298
		f 4 299 300 -251 301
		f 4 302 303 -254 -301
		f 4 304 305 -256 -304
		f 4 306 307 -258 -306
		f 4 308 309 -260 -308
		f 4 310 311 -262 -310
		f 4 312 313 -264 -312
		f 4 314 315 -266 -314
		f 4 316 317 -268 -316
		f 4 318 319 -270 -318
		f 4 320 321 -272 -320
		f 4 322 323 -274 -322
		f 4 324 325 -276 -324
		f 4 326 327 -278 -326
		f 4 328 329 -280 -328
		f 4 330 331 -282 -330
		f 4 332 333 -284 -332
		f 4 334 335 -286 -334
		f 4 336 337 338 -336
		f 4 339 340 -288 -338
		f 4 341 342 -291 -341
		f 4 343 344 -293 -343
		f 4 345 346 -295 -345
		f 4 347 348 -297 -347
		f 4 349 -302 -299 -349
		f 4 350 351 -300 352
		f 4 353 354 -303 -352
		f 4 355 356 -305 -355
		f 4 357 358 -307 -357
		f 4 359 360 -309 -359
		f 4 361 362 -311 -361
		f 4 363 364 -313 -363
		f 4 365 366 -315 -365
		f 4 367 368 -317 -367
		f 4 369 370 -319 -369
		f 4 371 372 -321 -371
		f 4 373 374 -323 -373
		f 4 375 376 -325 -375
		f 4 377 378 -327 -377
		f 4 379 380 -329 -379
		f 4 381 382 -331 -381
		f 4 383 384 -333 -383
		f 4 385 386 -335 -385
		f 4 387 388 -337 -387
		f 4 389 390 -340 -389
		f 4 391 392 -342 -391
		f 4 393 394 -344 -393
		f 4 395 396 -346 -395
		f 4 397 398 -348 -397
		f 4 399 -353 -350 -399
		f 4 400 401 -351 402
		f 4 403 404 -354 -402
		f 4 405 406 -358 407
		f 4 408 409 -360 -407
		f 4 410 411 -362 -410
		f 4 412 413 -364 -412
		f 4 414 415 -366 -414
		f 4 416 417 -368 -416
		f 4 418 419 -370 -418
		f 4 420 421 -372 -420
		f 4 422 423 -374 -422
		f 4 424 425 -376 -424
		f 4 426 427 -378 -426
		f 4 428 429 -380 -428
		f 4 430 431 -382 -430
		f 4 432 433 -384 -432
		f 4 434 435 -386 -434
		f 4 436 437 -388 -436
		f 4 438 439 -390 -438
		f 4 440 441 -392 -440
		f 4 442 443 -394 -442
		f 4 444 445 -396 -444
		f 4 446 447 -398 -446
		f 4 448 -403 -400 -448
		f 4 449 450 -401 451
		f 4 452 453 -404 -451
		f 4 454 455 456 -454
		f 4 457 458 -406 -456
		f 4 459 460 -409 -459
		f 4 461 462 -411 -461
		f 4 463 464 -413 -463
		f 4 465 466 -415 -465
		f 4 467 468 -417 -467
		f 4 469 470 -419 -469
		f 4 471 472 -421 -471
		f 4 473 474 -423 -473
		f 4 475 476 -425 -475
		f 4 477 478 -427 -477
		f 4 479 480 -429 -479
		f 4 481 482 -431 -481
		f 4 483 484 -433 -483
		f 4 485 486 -435 -485
		f 4 487 488 -437 -487
		f 4 489 490 -439 -489
		f 4 491 492 -441 -491
		f 4 493 494 -443 -493
		f 4 495 496 -445 -495
		f 4 497 498 -447 -497
		f 4 499 -452 -449 -499
		f 4 500 501 -450 502
		f 4 503 504 -453 -502
		f 4 505 506 -455 -505
		f 4 507 508 -458 -507
		f 4 509 510 -460 -509
		f 4 511 512 -462 -511
		f 4 513 514 -464 -513
		f 4 515 516 -466 -515
		f 4 517 518 -468 -517
		f 4 519 520 -470 -519
		f 4 521 522 -472 -521
		f 4 523 524 -476 525
		f 4 526 527 -478 -525
		f 4 528 529 -480 -528
		f 4 530 531 -482 -530
		f 4 532 533 -484 -532
		f 4 534 535 -486 -534
		f 4 536 537 -488 -536
		f 4 538 539 -490 -538
		f 4 540 541 -492 -540
		f 4 542 543 -494 -542
		f 4 544 545 -496 -544
		f 4 546 547 -498 -546
		f 4 548 -503 -500 -548
		f 4 549 550 -501 551
		f 4 552 553 -504 -551
		f 4 554 555 -506 -554
		f 4 556 557 -508 -556
		f 4 558 559 -510 -558
		f 4 560 561 -512 -560
		f 4 562 563 -514 -562
		f 4 564 565 -516 -564
		f 4 566 567 -518 -566
		f 4 568 569 -520 -568
		f 4 570 571 -522 -570
		f 4 572 573 574 -572
		f 4 575 576 -524 -574
		f 4 577 578 -527 -577
		f 4 579 580 -529 -579
		f 4 581 582 -531 -581
		f 4 583 584 -533 -583
		f 4 585 586 -535 -585
		f 4 587 588 -537 -587
		f 4 589 590 -539 -589
		f 4 591 592 -541 -591
		f 4 593 594 -543 -593
		f 4 595 596 -545 -595
		f 4 597 598 -547 -597
		f 4 599 -552 -549 -599
		f 4 600 601 -550 602
		f 4 603 604 -553 -602
		f 4 605 606 -555 -605
		f 4 607 608 -557 -607
		f 4 609 610 -559 -609
		f 4 611 612 -561 -611
		f 4 613 614 -563 -613
		f 4 615 616 -565 -615
		f 4 617 618 -567 -617
		f 4 619 620 -569 -619
		f 4 621 622 -571 -621
		f 4 623 624 -573 -623
		f 4 625 626 -576 -625
		f 4 627 628 -578 -627
		f 4 629 630 -580 -629
		f 4 631 632 -582 -631
		f 4 633 634 -584 -633
		f 4 635 636 -586 -635
		f 4 637 638 -588 -637
		f 4 639 640 -590 -639
		f 4 641 642 -594 643
		f 4 644 645 -596 -643
		f 4 646 647 -598 -646
		f 4 648 -603 -600 -648
		f 4 649 650 -601 651
		f 4 652 653 -604 -651
		f 4 654 655 -606 -654
		f 4 656 657 -608 -656
		f 4 658 659 -610 -658
		f 4 660 661 -612 -660
		f 4 662 663 -614 -662
		f 4 664 665 -616 -664
		f 4 666 667 -618 -666
		f 4 668 669 -620 -668
		f 4 670 671 -622 -670
		f 4 672 673 -624 -672
		f 4 674 675 -626 -674
		f 4 676 677 -628 -676
		f 4 678 679 -630 -678
		f 4 680 681 -632 -680
		f 4 682 683 -634 -682
		f 4 684 685 -636 -684
		f 4 686 687 -638 -686
		f 4 688 689 -640 -688
		f 4 690 691 692 -690
		f 4 693 694 -642 -692
		f 4 695 696 -645 -695
		f 4 697 698 -647 -697
		f 4 699 -652 -649 -699
		f 4 700 701 -650 702
		f 4 703 704 -653 -702
		f 4 705 706 -655 -705
		f 4 707 708 -657 -707
		f 4 709 710 -659 -709
		f 4 711 712 -661 -711
		f 4 713 714 -663 -713
		f 4 715 716 -665 -715
		f 4 717 718 -667 -717
		f 4 719 720 -669 -719
		f 4 721 722 -671 -721
		f 4 723 724 -673 -723
		f 4 725 726 -675 -725
		f 4 727 728 -677 -727
		f 4 729 730 -679 -729
		f 4 731 732 -681 -731
		f 4 733 734 -683 -733
		f 4 735 736 -685 -735
		f 4 737 738 -687 -737
		f 4 739 740 -689 -739
		f 4 741 742 -691 -741
		f 4 743 744 -694 -743
		f 4 745 746 -696 -745
		f 4 747 748 -698 -747
		f 4 749 -703 -700 -749
		f 4 750 751 -701 752
		f 4 753 754 -704 -752
		f 4 755 756 -706 -755
		f 4 757 758 -708 -757
		f 4 759 760 -712 761
		f 4 762 763 -714 -761
		f 4 764 765 -716 -764
		f 4 766 767 -718 -766
		f 4 768 769 -720 -768
		f 4 770 771 -722 -770
		f 4 772 773 -724 -772
		f 4 774 775 -726 -774
		f 4 776 777 -728 -776
		f 4 778 779 -730 -778
		f 4 780 781 -732 -780
		f 4 782 783 -734 -782
		f 4 784 785 -736 -784
		f 4 786 787 -738 -786
		f 4 788 789 -740 -788
		f 4 790 791 -742 -790
		f 4 792 793 -744 -792
		f 4 794 795 -746 -794
		f 4 796 797 -748 -796
		f 4 798 -753 -750 -798
		f 4 799 800 -751 801
		f 4 802 803 -754 -801
		f 4 804 805 -756 -804
		f 4 806 807 -758 -806
		f 4 808 809 810 -808
		f 4 811 812 -760 -810
		f 4 813 814 -763 -813
		f 4 815 816 -765 -815
		f 4 817 818 -767 -817
		f 4 819 820 -769 -819
		f 4 821 822 -771 -821
		f 4 823 824 -773 -823
		f 4 825 826 -775 -825
		f 4 827 828 -777 -827
		f 4 829 830 -779 -829
		f 4 831 832 -781 -831
		f 4 833 834 -783 -833
		f 4 835 836 -785 -835
		f 4 837 838 -787 -837
		f 4 839 840 -789 -839
		f 4 841 842 -791 -841
		f 4 843 844 -793 -843
		f 4 845 846 -795 -845
		f 4 847 848 -797 -847
		f 4 849 -802 -799 -849
		f 4 850 851 -800 852
		f 4 853 854 -803 -852
		f 4 855 856 -805 -855
		f 4 857 858 -807 -857
		f 4 859 860 -809 -859
		f 4 861 862 -812 -861
		f 4 863 864 -814 -863
		f 4 865 866 -816 -865
		f 4 867 868 -818 -867
		f 4 869 870 -820 -869
		f 4 871 872 -822 -871
		f 4 873 874 -824 -873
		f 4 875 876 -826 -875
		f 4 877 878 -830 879
		f 4 880 881 -832 -879
		f 4 882 883 -834 -882
		f 4 884 885 -836 -884
		f 4 886 887 -838 -886
		f 4 888 889 -840 -888
		f 4 890 891 -842 -890
		f 4 892 893 -844 -892
		f 4 894 895 -846 -894
		f 4 896 897 -848 -896
		f 4 898 -853 -850 -898
		f 4 899 900 -851 901
		f 4 902 903 -854 -901
		f 4 904 905 -856 -904
		f 4 906 907 -858 -906
		f 4 908 909 -860 -908
		f 4 910 911 -862 -910
		f 4 912 913 -864 -912
		f 4 914 915 -866 -914
		f 4 916 917 -868 -916
		f 4 918 919 -870 -918
		f 4 920 921 -872 -920
		f 4 922 923 -874 -922
		f 4 924 925 -876 -924
		f 4 926 927 928 -926
		f 4 929 930 -878 -928
		f 4 931 932 -881 -931
		f 4 933 934 -883 -933
		f 4 935 936 -885 -935
		f 4 937 938 -887 -937
		f 4 939 940 -889 -939
		f 4 941 942 -891 -941
		f 4 943 944 -893 -943
		f 4 945 946 -895 -945
		f 4 947 948 -897 -947
		f 4 949 -902 -899 -949
		f 4 950 951 -900 952
		f 4 953 954 -903 -952
		f 4 955 956 -905 -955
		f 4 957 958 -907 -957
		f 4 959 960 -909 -959
		f 4 961 962 -911 -961
		f 4 963 964 -913 -963
		f 4 965 966 -915 -965
		f 4 967 968 -917 -967
		f 4 969 970 -919 -969
		f 4 971 972 -921 -971
		f 4 973 974 -923 -973
		f 4 975 976 -925 -975
		f 4 977 978 -927 -977
		f 4 979 980 -930 -979
		f 4 981 982 -932 -981
		f 4 983 984 -934 -983
		f 4 985 986 -936 -985
		f 4 987 988 -938 -987
		f 4 989 990 -940 -989
		f 4 991 992 -942 -991
		f 4 993 994 -944 -993
		f 4 995 996 -948 997
		f 4 998 -953 -950 -997
		f 4 999 1000 -951 1001
		f 4 1002 1003 -954 -1001
		f 4 1004 1005 -956 -1004
		f 4 1006 1007 -958 -1006
		f 4 1008 1009 -960 -1008
		f 4 1010 1011 -962 -1010
		f 4 1012 1013 -964 -1012
		f 4 1014 1015 -966 -1014
		f 4 1016 1017 -968 -1016
		f 4 1018 1019 -970 -1018
		f 4 1020 1021 -972 -1020
		f 4 1022 1023 -974 -1022
		f 4 1024 1025 -976 -1024
		f 4 1026 1027 -978 -1026
		f 4 1028 1029 -980 -1028
		f 4 1030 1031 -982 -1030
		f 4 1032 1033 -984 -1032
		f 4 1034 1035 -986 -1034
		f 4 1036 1037 -988 -1036
		f 4 1038 1039 -990 -1038
		f 4 1040 1041 -992 -1040
		f 4 1042 1043 -994 -1042
		f 4 1044 1045 1046 -1044
		f 4 1047 1048 -996 -1046
		f 4 1049 -1002 -999 -1049
		f 4 1050 1051 -1000 1052
		f 4 1053 1054 -1003 -1052
		f 4 1055 1056 -1005 -1055
		f 4 1057 1058 -1007 -1057
		f 4 1059 1060 -1009 -1059
		f 4 1061 1062 -1011 -1061
		f 4 1063 1064 -1013 -1063;
	setAttr ".fc[500:685]"
		f 4 1065 1066 -1015 -1065
		f 4 1067 1068 -1017 -1067
		f 4 1069 1070 -1019 -1069
		f 4 1071 1072 -1021 -1071
		f 4 1073 1074 -1023 -1073
		f 4 1075 1076 -1025 -1075
		f 4 1077 1078 -1027 -1077
		f 4 1079 1080 -1029 -1079
		f 4 1081 1082 -1031 -1081
		f 4 1083 1084 -1033 -1083
		f 4 1085 1086 -1035 -1085
		f 4 1087 1088 -1037 -1087
		f 4 1089 1090 -1039 -1089
		f 4 1091 1092 -1041 -1091
		f 4 1093 1094 -1043 -1093
		f 4 1095 1096 -1045 -1095
		f 4 1097 1098 -1048 -1097
		f 4 1099 -1053 -1050 -1099
		f 4 1100 1101 -1051 1102
		f 4 1103 1104 -1054 -1102
		f 4 1105 1106 -1056 -1105
		f 4 1107 1108 -1058 -1107
		f 4 1109 1110 -1060 -1109
		f 4 1111 1112 -1062 -1111
		f 4 1113 1114 -1066 1115
		f 4 1116 1117 -1068 -1115
		f 4 1118 1119 -1070 -1118
		f 4 1120 1121 -1072 -1120
		f 4 1122 1123 -1074 -1122
		f 4 1124 1125 -1076 -1124
		f 4 1126 1127 -1078 -1126
		f 4 1128 1129 -1080 -1128
		f 4 1130 1131 -1082 -1130
		f 4 1132 1133 -1084 -1132
		f 4 1134 1135 -1086 -1134
		f 4 1136 1137 -1088 -1136
		f 4 1138 1139 -1090 -1138
		f 4 1140 1141 -1092 -1140
		f 4 1142 1143 -1094 -1142
		f 4 1144 1145 -1096 -1144
		f 4 1146 1147 -1098 -1146
		f 4 1148 -1103 -1100 -1148
		f 4 1149 1150 -1101 1151
		f 4 1152 1153 -1104 -1151
		f 4 1154 1155 -1106 -1154
		f 4 1156 1157 -1108 -1156
		f 4 1158 1159 -1110 -1158
		f 4 1160 1161 -1112 -1160
		f 4 1162 1163 1164 -1162
		f 4 1165 1166 -1114 -1164
		f 4 1167 1168 -1117 -1167
		f 4 1169 1170 -1119 -1169
		f 4 1171 1172 -1121 -1171
		f 4 1173 1174 -1123 -1173
		f 4 1175 1176 -1125 -1175
		f 4 1177 1178 -1127 -1177
		f 4 1179 1180 -1129 -1179
		f 4 1181 1182 -1131 -1181
		f 4 1183 1184 -1133 -1183
		f 4 1185 1186 -1135 -1185
		f 4 1187 1188 -1137 -1187
		f 4 1189 1190 -1139 -1189
		f 4 1191 1192 -1141 -1191
		f 4 1193 1194 -1143 -1193
		f 4 1195 1196 -1145 -1195
		f 4 1197 1198 -1147 -1197
		f 4 1199 -1152 -1149 -1199
		f 4 -49 1200 -1150 1201
		f 4 -48 1202 -1153 -1201
		f 4 -47 1203 -1155 -1203
		f 4 -46 1204 -1157 -1204
		f 4 -45 1205 -1159 -1205
		f 4 -44 1206 -1161 -1206
		f 4 -43 1207 -1163 -1207
		f 4 -42 1208 -1166 -1208
		f 4 -41 1209 -1168 -1209
		f 4 -40 1210 -1170 -1210
		f 4 -39 1211 -1172 -1211
		f 4 -38 1212 -1174 -1212
		f 4 -37 1213 -1176 -1213
		f 4 -36 1214 -1178 -1214
		f 4 -35 1215 -1180 -1215
		f 4 -33 1216 -1184 1217
		f 4 -32 1218 -1186 -1217
		f 4 -31 1219 -1188 -1219
		f 4 -30 1220 -1190 -1220
		f 4 -29 1221 -1192 -1221
		f 4 -28 1222 -1194 -1222
		f 4 -27 1223 -1196 -1223
		f 4 -26 1224 -1198 -1224
		f 4 -50 -1202 -1200 -1225
		f 4 1225 1226 1227 1228
		f 4 -1228 1229 -1 1230
		f 4 -1227 1231 -53 -1230
		f 4 -1226 1232 -102 -1232
		f 4 -1229 -1231 -99 -1233
		f 4 1233 1234 -120 1235
		f 4 1236 1237 -172 -1235
		f 4 1238 1239 -221 -1238
		f 4 1240 -1236 -169 -1240
		f 4 1241 1242 -238 1243
		f 4 1244 1245 -290 -1243
		f 4 1246 1247 -339 -1246
		f 4 1248 -1244 -287 -1248
		f 4 1249 1250 -356 1251
		f 4 1252 1253 -408 -1251
		f 4 1254 1255 -457 -1254
		f 4 1256 -1252 -405 -1256
		f 4 1257 1258 -474 1259
		f 4 1260 1261 -526 -1259
		f 4 1262 1263 -575 -1262
		f 4 1264 -1260 -523 -1264
		f 4 1265 1266 -592 1267
		f 4 1268 1269 -644 -1267
		f 4 1270 1271 -693 -1270
		f 4 1272 -1268 -641 -1272
		f 4 1273 1274 -710 1275
		f 4 1276 1277 -762 -1275
		f 4 1278 1279 -811 -1278
		f 4 1280 -1276 -759 -1280
		f 4 1281 1282 -828 1283
		f 4 1284 1285 -880 -1283
		f 4 1286 1287 -929 -1286
		f 4 1288 -1284 -877 -1288
		f 4 1289 1290 -946 1291
		f 4 1292 1293 -998 -1291
		f 4 1294 1295 -1047 -1294
		f 4 1296 -1292 -995 -1296
		f 4 1297 1298 -1064 1299
		f 4 1300 1301 -1116 -1299
		f 4 1302 1303 -1165 -1302
		f 4 1304 -1300 -1113 -1304
		f 4 1305 1306 -1182 1307
		f 4 1308 1309 -1218 -1307
		f 4 1310 1311 -34 -1310
		f 4 1312 -1308 -1216 -1312
		f 4 1313 1314 1315 1316
		f 4 1317 1318 1319 1320
		f 4 1321 1322 1323 1324
		f 4 1325 1326 1327 1328
		f 4 1329 1330 1331 1332
		f 4 1333 1334 1335 1336
		f 4 1337 1338 1339 1340
		f 4 1341 1342 1343 1344
		f 4 1345 1346 1347 1348
		f 4 1349 1350 1351 1352
		f 4 -1316 1353 -1234 1354
		f 4 -1315 1355 -1237 -1354
		f 4 -1314 1356 -1239 -1356
		f 4 -1317 -1355 -1241 -1357
		f 4 -1320 1357 -1242 1358
		f 4 -1319 1359 -1245 -1358
		f 4 -1318 1360 -1247 -1360
		f 4 -1321 -1359 -1249 -1361
		f 4 -1324 1361 -1250 1362
		f 4 -1323 1363 -1253 -1362
		f 4 -1322 1364 -1255 -1364
		f 4 -1325 -1363 -1257 -1365
		f 4 -1328 1365 -1258 1366
		f 4 -1327 1367 -1261 -1366
		f 4 -1326 1368 -1263 -1368
		f 4 -1329 -1367 -1265 -1369
		f 4 -1332 1369 -1266 1370
		f 4 -1331 1371 -1269 -1370
		f 4 -1330 1372 -1271 -1372
		f 4 -1333 -1371 -1273 -1373
		f 4 -1336 1373 -1274 1374
		f 4 -1335 1375 -1277 -1374
		f 4 -1334 1376 -1279 -1376
		f 4 -1337 -1375 -1281 -1377
		f 4 -1340 1377 -1282 1378
		f 4 -1339 1379 -1285 -1378
		f 4 -1338 1380 -1287 -1380
		f 4 -1341 -1379 -1289 -1381
		f 4 -1344 1381 -1290 1382
		f 4 -1343 1383 -1293 -1382
		f 4 -1342 1384 -1295 -1384
		f 4 -1345 -1383 -1297 -1385
		f 4 -1348 1385 -1298 1386
		f 4 -1347 1387 -1301 -1386
		f 4 -1346 1388 -1303 -1388
		f 4 -1349 -1387 -1305 -1389
		f 4 -1352 1389 -1306 1390
		f 4 -1351 1391 -1309 -1390
		f 4 -1350 1392 -1311 -1392
		f 4 -1353 -1391 -1313 -1393;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode houdiniAsset -n "hunte__dev__Tree_subnet__1_07" -p "Globe_Core";
	rename -uid "2EE52FB5-46C6-9FD1-A46C-CE9BC7542A13";
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
	setAttr ".t" -type "double3" -0.133842893553998 0.95305603217744506 0.17920004166933781 ;
	setAttr ".r" -type "double3" 0 244.53790332234294 0 ;
	setAttr ".s" -type "double3" 0.042426509627468315 0.042426509627468308 0.042426509627468315 ;
	setAttr ".otlFilePath" -type "string" "C:/Users/hunte/Documents/houdini19.5/otls/object_hunte.dev.Tree_subnet.1.0.hdanc";
	setAttr ".assetName" -type "string" "hunte::dev::Object/Tree_subnet::1.0";
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
	setAttr -cb on ".houdiniAssetParm_bend" 29;
	setAttr -cb on ".houdiniAssetParm_selectamount1" 1;
	setAttr -cb on ".houdiniAssetParm_dist" 1;
	setAttr -cb on ".houdiniAssetParm_selectamount2" 3;
	setAttr -cb on ".houdiniAssetParm_dist2" 0.5;
	setAttr -cb on ".houdiniAssetParm_bend2" -15;
createNode transform -n "tube_object1" -p "hunte__dev__Tree_subnet__1_07";
	rename -uid "E8E020AF-42A3-9FAC-E693-74A8ED2C0322";
createNode transform -n "lineartaper2_0" -p "|Globe_Core|hunte__dev__Tree_subnet__1_07|tube_object1";
	rename -uid "11F18D5F-4855-498D-816C-B7A78E33885C";
	setAttr ".rp" -type "double3" -0.62817871570587158 2.2690098285675049 -0.14844250679016113 ;
	setAttr ".sp" -type "double3" -0.62817871570587158 2.2690098285675049 -0.14844250679016113 ;
createNode mesh -n "lineartaper2_0Shape" -p "|Globe_Core|hunte__dev__Tree_subnet__1_07|tube_object1|lineartaper2_0";
	rename -uid "8F81EA3E-4CDB-EF85-36E0-E49B077B8610";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "lineartaper2_6" -p "|Globe_Core|hunte__dev__Tree_subnet__1_07|tube_object1";
	rename -uid "F0778E20-4642-4A47-7A83-AA973791AB49";
	setAttr ".t" -type "double3" 11.473482868783426 0 -5.3639540628843454 ;
	setAttr ".r" -type "double3" 0 -72.611420780657014 0 ;
	setAttr ".rp" -type "double3" -0.62817871570587158 2.2690098285675049 -0.14844250679016113 ;
	setAttr ".sp" -type "double3" -0.62817871570587158 2.2690098285675049 -0.14844250679016113 ;
createNode mesh -n "lineartaper2_6Shape" -p "lineartaper2_6";
	rename -uid "A382165C-4C6C-CA9C-2C80-9BA068162124";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 2 "f[591:598]" "f[643:645]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[643:645]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 701 ".vt";
	setAttr ".vt[0:165]"  -1.09259963 4.4505949 0 -1.09479785 4.44937611 -0.019895189
		 -1.10125434 4.44579697 -0.038540289 -1.11156356 4.44008255 -0.054763764 -1.12507761 4.43259144 -0.067546219
		 -1.14094734 4.42379475 -0.076084509 -1.15817571 4.41424561 -0.07984212 -1.17568016 4.40454197 -0.078582965
		 -1.19236076 4.3952961 -0.072386146 -1.20716941 4.38708782 -0.061641037 -1.2191757 4.38043213 -0.047022805
		 -1.22762525 4.37574863 -0.029449945 -1.231987 4.37333107 -0.010026636 -1.231987 4.37333107 0.010026667
		 -1.22762525 4.37574863 0.029449977 -1.2191757 4.38043213 0.04702282 -1.20716941 4.38708782 0.061641056
		 -1.19236076 4.3952961 0.07238616 -1.17568016 4.40454197 0.078582972 -1.15817571 4.41424561 0.07984212
		 -1.14094734 4.42379475 0.076084502 -1.12507761 4.43259144 0.067546211 -1.11156356 4.44008255 0.054763734
		 -1.10125434 4.44579697 0.038540255 -1.09479785 4.44937611 0.019895144 -0.98325104 4.28497601 0
		 -0.98596084 4.2835474 -0.024247257 -0.99392003 4.27935219 -0.046970971 -1.0066283941 4.27265453 -0.066743329
		 -1.023287416 4.26387405 -0.082321942 -1.042850494 4.25356388 -0.092727982 -1.064088345 4.24236965 -0.09730757
		 -1.085666418 4.23099709 -0.095772974 -1.10622907 4.22015953 -0.088220604 -1.12448406 4.21053791 -0.075125001
		 -1.13928449 4.20273781 -0.057309035 -1.1497004 4.19724751 -0.035892118 -1.15507734 4.19441414 -0.01221996
		 -1.15507734 4.19441414 0.012219999 -1.1497004 4.19724751 0.035892155 -1.13928449 4.20273781 0.057309054
		 -1.12448406 4.21053791 0.075125024 -1.10622907 4.22015953 0.088220619 -1.085666418 4.23099709 0.095772982
		 -1.064088345 4.24236965 0.09730757 -1.042850494 4.25356388 0.092727974 -1.023287416 4.26387405 0.082321934
		 -1.0066282749 4.27265453 0.066743292 -0.99391997 4.27935219 0.04697093 -0.98596084 4.2835474 0.024247203
		 -0.87725234 4.11676121 0 -0.88048333 4.11514378 -0.028599327 -0.88997328 4.11039543 -0.055401653
		 -0.90512592 4.10281277 -0.078722894 -0.92498916 4.092873573 -0.097097673 -0.94831491 4.081201553 -0.10937145
		 -0.97363746 4.068530083 -0.11477302 -0.99936587 4.055655479 -0.11296298 -1.023883224 4.043387413 -0.10405506
		 -1.045649409 4.032495499 -0.088608973 -1.063296437 4.023664474 -0.067595266 -1.075715661 4.017450333 -0.042334288
		 -1.082126737 4.014242172 -0.014413285 -1.082126617 4.014242172 0.014413331 -1.075715661 4.017450333 0.042334333
		 -1.063296437 4.023664474 0.067595288 -1.04564929 4.032495499 0.088608995 -1.023883224 4.043387413 0.10405508
		 -0.99936575 4.055655479 0.112963 -0.97363746 4.068530083 0.11477302 -0.94831485 4.081201553 0.10937145
		 -0.92498916 4.092873573 0.097097658 -0.90512592 4.10281277 0.078722849 -0.88997328 4.11039543 0.055401605
		 -0.88048333 4.11514378 0.028599264 -0.77466279 3.9460175 0 -0.77842391 3.94423366 -0.032951403
		 -0.78947097 3.93899417 -0.06383235 -0.80710977 3.93062806 -0.090702474 -0.83023208 3.91966128 -0.11187342
		 -0.85738498 3.90678239 -0.12601496 -0.88686246 3.89280128 -0.13223851 -0.91681218 3.87859607 -0.13015302
		 -0.94535238 3.86505961 -0.11988954 -0.97068977 3.85304189 -0.10209296 -0.99123234 3.84329867 -0.077881515
		 -1.0056891441 3.83644176 -0.04877647 -1.013152122 3.83290195 -0.016606614 -1.013152122 3.83290195 0.016606666
		 -1.0056891441 3.83644176 0.048776519 -0.99123234 3.84329867 0.077881537 -0.97068977 3.85304189 0.10209299
		 -0.94535232 3.86505961 0.11988956 -0.91681212 3.87859607 0.13015303 -0.8868624 3.89280128 0.13223851
		 -0.85738498 3.90678239 0.12601495 -0.83023208 3.91966128 0.1118734 -0.80710977 3.93062806 0.090702429
		 -0.78947091 3.93899417 0.06383229 -0.77842391 3.94423366 0.032951329 -0.675542 3.77281451 0
		 -0.67984152 3.77088523 -0.037303489 -0.69246989 3.7652185 -0.072263062 -0.71263367 3.75617075 -0.10268208
		 -0.73906589 3.74431014 -0.1266492 -0.77010566 3.73038197 -0.14265849 -0.80380267 3.71526146 -0.14970401
		 -0.83803964 3.69989872 -0.14734308 -0.87066531 3.6852591 -0.13572405 -0.89962971 3.67226219 -0.11557698
		 -0.92311281 3.66172481 -0.088167779 -0.93963921 3.65430903 -0.055218663 -0.94817042 3.65048099 -0.018799946
		 -0.94817042 3.65048099 0.018800005 -0.93963915 3.65430903 0.055218719 -0.92311281 3.66172481 0.088167809
		 -0.89962965 3.67226219 0.115577 -0.87066525 3.6852591 0.13572408 -0.83803958 3.69989872 0.14734311
		 -0.80380267 3.71526146 0.14970401 -0.7701056 3.73038197 0.14265847 -0.73906583 3.74431014 0.12664917
		 -0.71263361 3.75617075 0.10268203 -0.69246989 3.76521873 0.072262995 -0.67984152 3.77088523 0.037303403
		 -0.5799498 3.59722304 0 -0.5847953 3.59517026 -0.041655555 -0.59902734 3.58914137 -0.080693744
		 -0.62175161 3.57951498 -0.11466165 -0.65154022 3.56689596 -0.14142492 -0.68652159 3.55207729 -0.15930197
		 -0.72449762 3.53599 -0.16716947 -0.76308215 3.51964498 -0.16453309 -0.79985076 3.50406933 -0.15155852
		 -0.83249325 3.49024129 -0.12906094 -0.8589583 3.47903037 -0.098454013 -0.87758332 3.47114038 -0.061660834
		 -0.88719791 3.46706748 -0.02099327 -0.88719785 3.46706748 0.020993337 -0.87758332 3.47114038 0.061660897
		 -0.8589583 3.47903037 0.098454043 -0.83249313 3.49024129 0.12906098 -0.79985076 3.50406933 0.15155855
		 -0.76308209 3.51964498 0.16453312 -0.72449762 3.53599 0.16716947 -0.68652159 3.55207729 0.15930195
		 -0.65154022 3.5668962 0.14142489 -0.62175155 3.57951498 0.11466159 -0.59902728 3.58914137 0.08069367
		 -0.5847953 3.59517026 0.041655462 -0.48794144 3.4193151 0 -0.49333984 3.41716146 -0.046007633
		 -0.50919569 3.4108355 -0.089124434 -0.53451276 3.40073514 -0.12664123 -0.56770027 3.38749456 -0.15620066
		 -0.60667294 3.3719461 -0.17594546 -0.64898199 3.35506654 -0.18463495 -0.69196898 3.33791637 -0.18172313
		 -0.73293287 3.3215735 -0.167393 -0.76929969 3.30706453 -0.14254493 -0.79878449 3.29530144 -0.10874026
		 -0.81953454 3.28702283 -0.068103015 -0.83024615 3.28274941 -0.0231866 -0.83024609 3.28274941 0.023186674
		 -0.81953454 3.28702283 0.068103082 -0.79878443 3.29530144 0.10874029;
	setAttr ".vt[166:331]" -0.76929969 3.30706453 0.14254497 -0.73293275 3.3215735 0.16739303
		 -0.69196886 3.33791637 0.18172316 -0.64898199 3.35506654 0.18463495 -0.60667294 3.3719461 0.17594545
		 -0.56770021 3.38749456 0.15620065 -0.5345127 3.40073514 0.12664117 -0.50919563 3.4108355 0.089124359
		 -0.49333984 3.41716146 0.046007533 -0.39957255 3.23916364 0 -0.40552998 3.23693132 -0.050359704
		 -0.42302781 3.23037457 -0.097555116 -0.45096678 3.21990538 -0.13862079 -0.48759115 3.20618176 -0.1709764
		 -0.53059983 3.19006586 -0.19258894 -0.57729048 3.17257023 -0.2021004 -0.62472916 3.15479422 -0.19891316
		 -0.66993523 3.13785505 -0.18322745 -0.71006829 3.12281656 -0.1560289 -0.74260646 3.11062407 -0.11902649
		 -0.76550543 3.10204339 -0.074545182 -0.77732629 3.09761405 -0.025379924 -0.77732629 3.09761405 0.025380006
		 -0.76550543 3.10204363 0.074545264 -0.74260646 3.11062407 0.11902653 -0.71006823 3.12281656 0.15602894
		 -0.66993517 3.13785505 0.18322749 -0.62472904 3.15479445 0.19891317 -0.57729042 3.17257023 0.2021004
		 -0.53059983 3.19006586 0.19258893 -0.48759109 3.20618176 0.17097637 -0.45096666 3.21990561 0.13862072
		 -0.42302775 3.23037457 0.097555034 -0.40552992 3.23693132 0.050359592 -0.31489676 3.056842804 0
		 -0.32141876 3.054554701 -0.05471177 -0.3405748 3.047833681 -0.1059858 -0.37116128 3.037102461 -0.15060036
		 -0.41125631 3.023035288 -0.18575212 -0.45834064 3.0065157413 -0.2092324 -0.50945574 2.98858213 -0.21956585
		 -0.56138986 2.97036123 -0.21610317 -0.61087984 2.95299768 -0.19906192 -0.65481597 2.93758273 -0.16951287
		 -0.69043761 2.92508507 -0.12931272 -0.71550655 2.91628957 -0.080987357 -0.72844762 2.91174936 -0.027573248
		 -0.72844756 2.91174936 0.027573338 -0.71550649 2.91628957 0.080987439 -0.69043761 2.92508507 0.12931277
		 -0.65481591 2.93758273 0.16951291 -0.61087978 2.95299768 0.19906195 -0.5613898 2.97036123 0.21610318
		 -0.50945574 2.98858213 0.21956585 -0.45834059 3.0065159798 0.20923239 -0.41125625 3.023035288 0.18575209
		 -0.37116116 3.037102699 0.15060028 -0.34057474 3.04783392 0.10598571 -0.3214187 3.054554701 0.054711651
		 -0.2339672 2.87242866 0 -0.24105845 2.87010741 -0.059063848 -0.26188666 2.86328959 -0.11441649
		 -0.29514313 2.85240364 -0.16257994 -0.3387382 2.83813357 -0.20052786 -0.38993263 2.82137585 -0.22587591
		 -0.44550973 2.80318379 -0.23703133 -0.50197732 2.78469992 -0.23329321 -0.55578738 2.76708603 -0.2148964
		 -0.60355884 2.75144887 -0.18299685 -0.64228994 2.73877096 -0.13959897 -0.6695472 2.72984862 -0.087429538
		 -0.68361789 2.72524285 -0.029766576 -0.68361789 2.72524285 0.029766673 -0.6695472 2.72984862 0.087429628
		 -0.64228994 2.73877096 0.13959901 -0.60355872 2.75144887 0.18299691 -0.55578727 2.76708627 0.21489644
		 -0.50197721 2.78469992 0.23329322 -0.44550967 2.80318379 0.23703133 -0.38993257 2.82137585 0.2258759
		 -0.33873814 2.83813357 0.20052783 -0.29514307 2.85240364 0.16257986 -0.2618866 2.86328959 0.1144164
		 -0.24105842 2.87010741 0.059063718 -0.15683338 2.68599868 0 -0.16449805 2.68366766 -0.063415922
		 -0.18701035 2.67682076 -0.12284719 -0.22295584 2.66588831 -0.17455953 -0.27007586 2.65155721 -0.21530361
		 -0.32540971 2.63472772 -0.24251941 -0.38548058 2.6164577 -0.25449681 -0.44651395 2.59789515 -0.25048324
		 -0.50467497 2.58020592 -0.23073088 -0.55630904 2.56450176 -0.19648084 -0.59817189 2.55176973 -0.14988522
		 -0.62763304 2.54280925 -0.09387172 -0.64284146 2.53818393 -0.031959906 -0.64284146 2.53818393 0.031960007
		 -0.62763304 2.54280925 0.093871817 -0.59817183 2.55176973 0.14988527 -0.55630898 2.564502 0.1964809
		 -0.50467485 2.58020592 0.23073092 -0.44651383 2.59789515 0.25048327 -0.38548052 2.6164577 0.25449681
		 -0.32540965 2.63472795 0.24251939 -0.2700758 2.65155721 0.21530358 -0.22295575 2.66588831 0.17455944
		 -0.18701029 2.67682076 0.12284709 -0.16449802 2.68366766 0.063415781 -0.083544776 2.49763083 0
		 -0.091786131 2.49531293 -0.067768 -0.11599234 2.48850513 -0.13127789 -0.15464249 2.47763515 -0.18653911
		 -0.20530799 2.46338558 -0.23007937 -0.26480538 2.44665241 -0.2591629 -0.32939619 2.42848659 -0.27196229
		 -0.39502198 2.41002965 -0.26767328 -0.45755917 2.39244151 -0.24656537 -0.51307845 2.376827 -0.20996483
		 -0.55809116 2.36416745 -0.16017146 -0.58976912 2.35525823 -0.1003139 -0.60612184 2.35065913 -0.034153234
		 -0.60612184 2.35065913 0.034153342 -0.58976912 2.35525823 0.10031401 -0.5580911 2.36416745 0.16017152
		 -0.51307833 2.376827 0.2099649 -0.45755911 2.39244151 0.24656542 -0.39502186 2.41002965 0.26767331
		 -0.32939613 2.42848659 0.27196229 -0.26480532 2.44665241 0.2591629 -0.20530792 2.46338558 0.23007934
		 -0.1546424 2.47763515 0.18653901 -0.11599228 2.48850513 0.13127777 -0.091786072 2.49531317 0.067767851
		 -0.014149174 2.30740476 0 -0.022969887 2.30512357 -0.07212007 -0.048877671 2.29842329 -0.13970856
		 -0.09024474 2.28772497 -0.19851868 -0.14447178 2.27370095 -0.24485509 -0.20815152 2.25723219 -0.2758064
		 -0.27728277 2.23935366 -0.28942776 -0.34752172 2.22118855 -0.28486329 -0.414455 2.2038784 -0.26239982
		 -0.47387701 2.18851089 -0.2234488 -0.5220539 2.17605162 -0.17045771 -0.55595869 2.1672833 -0.10675607
		 -0.57346094 2.16275668 -0.036346558 -0.57346088 2.16275668 0.036346678 -0.55595863 2.1672833 0.10675618
		 -0.5220539 2.17605162 0.17045775 -0.47387689 2.18851089 0.22344887 -0.41445494 2.20387864 0.26239988
		 -0.3475216 2.22118878 0.28486332 -0.27728271 2.23935366 0.28942776 -0.20815147 2.25723219 0.27580637
		 -0.14447172 2.27370095 0.24485506 -0.090244651 2.28772497 0.19851857 -0.048877612 2.29842329 0.13970844
		 -0.022969857 2.30512357 0.072119914 0.051307365 2.11540008 0 0.041905448 2.11317897 -0.076472148
		 0.014290556 2.10665536 -0.14813927 -0.029802278 2.096238852 -0.21049826 -0.087602437 2.082584381 -0.25963083
		 -0.15547816 2.066549778 -0.29244989 -0.22916462 2.049142361 -0.30689323;
	setAttr ".vt[332:497]" -0.30403173 2.031455994 -0.30205333 -0.37537539 2.014601946 -0.2782343
		 -0.43871278 1.99963927 -0.23693278 -0.49006414 1.9875083 -0.18074395 -0.52620298 1.978971 -0.11319825
		 -0.54485852 1.97456384 -0.038539886 -0.54485846 1.97456384 0.038540013 -0.52620298 1.978971 0.11319837
		 -0.49006408 1.9875083 0.18074401 -0.43871266 1.99963951 0.23693286 -0.37537527 2.014601946 0.27823436
		 -0.30403155 2.031455994 0.30205336 -0.22916456 2.049142361 0.30689323 -0.1554781 2.066549778 0.29244986
		 -0.087602362 2.082584381 0.2596308 -0.029802173 2.096238852 0.21049815 0.014290616 2.10665536 0.14813913
		 0.041905478 2.11317897 0.076471977 0.11278151 1.92169929 0 0.10279725 1.91956186 -0.080824219
		 0.073471859 1.91328406 -0.15656994 0.026647881 1.90325999 -0.22247782 -0.034732461 1.89011991 -0.27440655
		 -0.10681244 1.87468922 -0.30909336 -0.18506309 1.85793757 -0.32435867 -0.26456755 1.84091747 -0.31924334
		 -0.34033024 1.82469845 -0.29406875 -0.40759081 1.8102994 -0.25041676 -0.46212292 1.79862535 -0.19103017
		 -0.50050026 1.79040968 -0.11964042 -0.5203113 1.78616858 -0.040733211 -0.52031124 1.78616858 0.040733345
		 -0.5005002 1.79040968 0.11964055 -0.46212286 1.79862535 0.19103023 -0.40759075 1.81029952 0.25041685
		 -0.34033012 1.82469845 0.29406881 -0.26456738 1.84091747 0.31924337 -0.18506303 1.85793757 0.32435867
		 -0.10681239 1.87468922 0.30909336 -0.034732386 1.89011991 0.27440652 0.026648 1.90326011 0.2224777
		 0.073471919 1.91328406 0.15656981 0.10279728 1.91956186 0.08082404 0.170231 1.72638512 0
		 0.15966396 1.72435498 -0.085176289 0.12862684 1.71839213 -0.16500065 0.079069808 1.70887148 -0.23445742
		 0.014106736 1.69639087 -0.28918231 -0.062180512 1.6817348 -0.32573688 -0.1449986 1.66582406 -0.34182414
		 -0.22914366 1.64965832 -0.33643338 -0.30932862 1.63425338 -0.30990323 -0.38051516 1.62057734 -0.26390076
		 -0.43823022 1.6094892 -0.20131643 -0.47884756 1.60168588 -0.1260826 -0.49981499 1.59765768 -0.042926542
		 -0.49981493 1.59765768 0.04292668 -0.4788475 1.60168588 0.12608273 -0.43823022 1.6094892 0.20131649
		 -0.38051504 1.62057734 0.26390082 -0.3093285 1.6342535 0.30990332 -0.22914349 1.64965832 0.33643341
		 -0.14499854 1.66582406 0.34182414 -0.062180467 1.6817348 0.32573685 0.01410681 1.69639087 0.28918228
		 0.079069927 1.70887148 0.23445728 0.12862693 1.71839225 0.1650005 0.15966399 1.72435498 0.085176103
		 0.2236142 1.52954102 0 0.21246473 1.52764189 -0.089528367 0.17971684 1.52206373 -0.17343134
		 0.12742825 1.51315725 -0.246437 0.058884427 1.50148189 -0.30395806 -0.021607734 1.48777127 -0.34238037
		 -0.10899072 1.47288692 -0.35928965 -0.19777383 1.45776415 -0.35362342 -0.28237849 1.44335306 -0.32573774
		 -0.35748881 1.43055916 -0.27738473 -0.41838515 1.4201864 -0.21160267 -0.4612413 1.4128865 -0.13252479
		 -0.4833644 1.40911818 -0.04511987 -0.48336434 1.40911818 0.045120016 -0.46124125 1.4128865 0.13252492
		 -0.41838509 1.4201864 0.21160273 -0.35748869 1.43055916 0.27738482 -0.28237838 1.44335306 0.3257378
		 -0.19777364 1.45776415 0.35362345 -0.10899066 1.47288692 0.35928965 -0.021607682 1.48777127 0.34238034
		 0.058884516 1.50148189 0.30395803 0.12742837 1.51315725 0.24643686 0.17971693 1.52206373 0.17343119
		 0.21246476 1.52764189 0.089528173 0.2728914 1.3312521 0 0.26116049 1.32950759 -0.093880437
		 0.22670503 1.32438385 -0.18186203 0.17168985 1.31620264 -0.25841656 0.099571869 1.3054781 -0.31873378
		 0.014882483 1.29288423 -0.35902384 -0.077057049 1.27921212 -0.37675509 -0.17046969 1.2653209 -0.37081343
		 -0.25948608 1.25208354 -0.3415722 -0.33851296 1.24033165 -0.2908687 -0.40258467 1.23080361 -0.2218889
		 -0.44767553 1.22409832 -0.13896696 -0.47095227 1.22063684 -0.047313195 -0.47095221 1.22063684 0.047313347
		 -0.44767547 1.22409832 0.13896711 -0.40258461 1.23080361 0.22188897 -0.33851284 1.24033165 0.29086879
		 -0.2594859 1.25208354 0.34157225 -0.17046949 1.2653209 0.37081346 -0.077056982 1.27921212 0.37675509
		 0.014882535 1.29288423 0.35902381 0.099571958 1.3054781 0.31873375 0.17168997 1.31620264 0.25841641
		 0.22670512 1.32438385 0.18186186 0.26116055 1.32950759 0.093880229 0.31802773 1.13160384 0
		 0.30571723 1.13003767 -0.098232515 0.2695595 1.12543786 -0.19029272 0.21182619 1.11809325 -0.27039614
		 0.13614513 1.10846543 -0.33350953 0.047271557 1.097159266 -0.37566733 -0.049210351 1.08488524 -0.39422056
		 -0.14723817 1.072414517 -0.38800347 -0.24065249 1.060530663 -0.35740668 -0.32358384 1.049980521 -0.3043527
		 -0.39082104 1.041426897 -0.23217516 -0.43813974 1.035407186 -0.14540914 -0.46256644 1.032299638 -0.049506523
		 -0.46256638 1.032299638 0.049506683 -0.43813968 1.035407186 0.14540929 -0.39082104 1.041426897 0.23217523
		 -0.32358366 1.049980521 0.30435279 -0.24065234 1.060530663 0.35740674 -0.14723796 1.072414517 0.3880035
		 -0.04921028 1.08488524 0.39422056 0.047271617 1.097159266 0.37566733 0.13614522 1.10846543 0.3335095
		 0.21182634 1.11809325 0.27039599 0.26955956 1.12543786 0.19029255 0.30571729 1.13003767 0.098232299
		 0.3589853 0.9306829 0 0.34609783 0.9293189 -0.10258459 0.30824518 0.92531264 -0.19872342
		 0.24780579 0.91891575 -0.28237572 0.1685773 0.91053021 -0.34828529 0.075537935 0.90068305 -0.39231086
		 -0.025466386 0.88999277 -0.41168606 -0.12808909 0.87913126 -0.40519351 -0.22588202 0.86878085 -0.37324116
		 -0.31270057 0.85959202 -0.31783667 -0.38308948 0.8521421 -0.2424614 -0.43262607 0.84689921 -0.15185133
		 -0.45819783 0.84419268 -0.051699851 -0.45819777 0.84419268 0.051700018 -0.43262607 0.84689921 0.15185148
		 -0.38308942 0.8521421 0.24246147 -0.31270045 0.85959208 0.31783679 -0.22588187 0.86878091 0.37324125
		 -0.12808886 0.87913126 0.40519357 -0.025466312 0.88999277 0.41168606 0.075537995 0.90068305 0.39231083
		 0.1685774 0.91053033 0.34828523 0.24780594 0.91891575 0.28237557;
	setAttr ".vt[498:663]" 0.3082453 0.92531264 0.19872324 0.34609789 0.9293189 0.10258436
		 0.39573199 0.72857738 0 0.38227075 0.72743911 -0.10693666 0.34273297 0.72409582 -0.2071541
		 0.27960289 0.71875769 -0.2943553 0.19684722 0.71175998 -0.36306101 0.099665835 0.70354253 -0.40895432
		 -0.0058351085 0.69462156 -0.42915151 -0.11302645 0.6855576 -0.42238352 -0.21517304 0.67692029 -0.38907561
		 -0.3058567 0.66925228 -0.33132064 -0.37937921 0.66303533 -0.25274763 -0.43112117 0.65866011 -0.15829349
		 -0.45783126 0.65640152 -0.053893175 -0.45783126 0.65640152 0.05389335 -0.43112111 0.65866011 0.15829366
		 -0.37937915 0.66303533 0.25274771 -0.30585653 0.66925228 0.33132076 -0.21517289 0.67692029 0.3890757
		 -0.11302623 0.68555766 0.42238358 -0.0058350321 0.69462156 0.42915151 0.099665895 0.70354253 0.40895429
		 0.19684732 0.71175998 0.36306095 0.279603 0.71875769 0.29435515 0.34273309 0.72409588 0.20715392
		 0.38227081 0.72743911 0.10693642 0.42823666 0.52537507 0 0.41420579 0.52448618 -0.11128873
		 0.37299466 0.52187532 -0.2155848 0.30719274 0.51770657 -0.30633488 0.22093472 0.5122419 -0.37783676
		 0.11964042 0.50582463 -0.42559782 0.0096744671 0.49885798 -0.44661698 -0.10205344 0.49177974 -0.43957356
		 -0.20852306 0.48503458 -0.40491009 -0.30304468 0.4790464 -0.34480464 -0.37967885 0.47419143 -0.2630339
		 -0.43361056 0.47077465 -0.16473567 -0.46145111 0.46901089 -0.056086507 -0.46145105 0.46901089 0.056086686
		 -0.4336105 0.47077471 0.16473585 -0.37967879 0.47419143 0.26303396 -0.3030445 0.4790464 0.34480473
		 -0.20852292 0.48503458 0.40491018 -0.1020532 0.49177974 0.43957362 0.0096745472 0.49885798 0.44661698
		 0.11964048 0.50582463 0.42559779 0.22093482 0.5122419 0.3778367 0.30719292 0.51770657 0.30633473
		 0.37299478 0.52187532 0.21558461 0.41420579 0.52448618 0.11128849 0.45646721 0.32116553 0
		 0.44187135 0.32054952 -0.1156408 0.399001 0.31874022 -0.22401547 0.33054966 0.31585133 -0.31831443
		 0.24081862 0.31206432 -0.39261249 0.13544589 0.30761719 -0.44224128 0.021052361 0.30278936 -0.46408242
		 -0.095174067 0.29788414 -0.45676357 -0.20593052 0.29320979 -0.42074457 -0.30425781 0.28906003 -0.35828862
		 -0.38397753 0.28569555 -0.27332011 -0.44008076 0.28332776 -0.17117785 -0.46904224 0.28210548 -0.058279831
		 -0.46904218 0.28210548 0.058280017 -0.4400807 0.28332776 0.17117803 -0.38397747 0.28569555 0.2733202
		 -0.30425763 0.28906003 0.35828871 -0.20593034 0.29320982 0.42074463 -0.095173828 0.29788417 0.45676363
		 0.021052442 0.30278936 0.46408242 0.13544597 0.30761719 0.44224128 0.24081874 0.31206432 0.39261243
		 0.33054984 0.31585133 0.31831428 0.39900112 0.31874022 0.22401528 0.4418714 0.32054952 0.11564055
		 0.48039746 0.11603843 0 0.46524215 0.11571877 -0.11999288 0.42072868 0.11477986 -0.23244618
		 0.34965384 0.11328071 -0.33029404 0.25648361 0.11131552 -0.40738824 0.14707224 0.10900776 -0.45888481
		 0.028294336 0.10650244 -0.48154792 -0.092386723 0.10395697 -0.4739536 -0.20738816 0.1015313 -0.43657905
		 -0.30948406 0.099377841 -0.37177259 -0.39225918 0.097631902 -0.28360635 -0.45051271 0.096403196 -0.17762002
		 -0.4805842 0.095768914 -0.060473159 -0.48058414 0.095768914 0.060473353 -0.45051265 0.096403196 0.17762022
		 -0.39225918 0.097631902 0.28360644 -0.30948389 0.099377841 0.37177271 -0.20738798 0.10153131 0.43657914
		 -0.092386477 0.10395698 0.47395366 0.028294422 0.10650244 0.48154792 0.14707232 0.10900776 0.45888478
		 0.25648373 0.11131552 0.40738818 0.34965402 0.11328071 0.33029386 0.4207288 0.11477986 0.23244597
		 0.46524221 0.11571877 0.11999261 0.5 -0.089915037 0 0.48429155 -0.089915037 -0.12434495
		 0.43815333 -0.089915037 -0.24087685 0.36448425 -0.089915037 -0.34227359 0.26791334 -0.089915037 -0.42216396
		 0.15450849 -0.089915037 -0.47552827 0.031395189 -0.089915037 -0.49901336 -0.093690716 -0.089915037 -0.49114361
		 -0.21288969 -0.089915037 -0.4524135 -0.31871212 -0.089915037 -0.38525656 -0.40450853 -0.089915037 -0.29389259
		 -0.46488827 -0.089915037 -0.1840622 -0.49605739 -0.089915037 -0.062666483 -0.49605733 -0.089915037 0.062666684
		 -0.46488822 -0.089915037 0.18406239 -0.40450847 -0.089915037 0.29389268 -0.31871194 -0.089915037 0.38525668
		 -0.21288951 -0.089915037 0.45241359 -0.093690455 -0.089915037 0.49114367 0.031395279 -0.089915037 0.49901336
		 0.15450856 -0.089915037 0.47552824 0.26791346 -0.089915037 0.4221639 0.36448443 -0.089915037 0.34227341
		 0.43815345 -0.089915037 0.24087664 0.48429161 -0.089915037 0.12434468 -0.26461935 4.99727774 -0.12484664
		 -0.26681757 4.99605894 -0.14474183 -0.15798056 4.83023024 -0.1490939 -0.15527076 4.83165884 -0.12484664
		 -1.73749256 3.79484749 -0.77042735 -1.75513959 3.78601646 -0.74941361 -1.68307555 3.60565066 -0.75969988
		 -1.66253304 3.61539388 -0.78391135 -0.93067646 3.7559762 1.14146268 -0.89643955 3.77133894 1.1438235
		 -0.8171345 3.59206748 1.16128898 -0.85571897 3.57572246 1.15865266 0.30519331 3.58650804 -0.68310016
		 0.27725434 3.57603884 -0.72416586 0.35705984 3.39323592 -0.73614544 0.38764632 3.40396714 -0.69153088
		 -1.61675 2.526196 -0.33508372 -1.63082063 2.52159023 -0.27742076 -1.59004426 2.33453131 -0.27961409
		 -1.57483578 2.33915663 -0.34152588 0.12205744 2.6412499 1.16053355 0.18155484 2.65798306 1.13144994
		 0.24239103 2.46829844 1.14622569 0.17871128 2.45182967 1.17717695 0.36370355 2.059672594 -1.17579472
		 0.29162356 2.044241905 -1.21048152 0.33625549 1.85128748 -1.22712505 0.41254276 1.86594355 -1.19057047
		 -1.45030379 1.34820497 0.2927444 -1.42818069 1.3519733 0.3801493 -1.41461492 1.16318512 0.38659149
		 -1.43789172 1.15972364 0.29493773 1.0026669502 1.29590595 0.85601866 1.060400128 1.30325055 0.77591521
		 1.099085808 1.10312533 0.78434592 1.03864646 1.096728444 0.86799824 -0.057437949 0.58405995 -1.44071782
		 -0.16916585 0.57698172 -1.43367445 -0.16228649 0.38308612 -1.45086443;
	setAttr ".vt[664:700]" -0.046060055 0.38799134 -1.45818329 -1.1190722 0.18205091 0.96523416
		 -1.036296844 0.18379685 1.053400517 -1.045524836 -0.0054960176 1.066884398 -1.13132143 -0.0054960176 0.97552043
		 -2.34068322 2.90368223 -1.11133611 -2.35544324 2.89058495 -1.090322375 -2.23915267 2.73501635 -1.10060859
		 -2.22183204 2.74974442 -1.12482011 -1.29991364 3.29435682 1.63852251 -1.26938105 3.31843567 1.64088333
		 -1.13909221 3.16737747 1.6583488 -1.17585015 3.14085817 1.65571249 0.48908114 3.63553095 -0.97587264
		 0.45985353 3.62096357 -1.016938329 0.57124805 3.45152593 -1.028917909 0.6030072 3.46649027 -0.98430336
		 0.26760197 2.564955 1.61121893 0.32532144 2.59123397 1.5821352 0.41609561 2.41346598 1.59691095
		 0.35489774 2.38719177 1.62786222 0.60368574 2.015662909 -1.6264888 0.53600657 1.99011028 -1.66117561
		 0.60722613 1.80560267 -1.67781913 0.67805243 1.83056426 -1.64126456 -1.58577418 0.66449356 0.41655672
		 -1.56538057 0.67385924 0.50396162 -1.50341487 0.49501503 0.51040381 -1.52500272 0.48564708 0.41875005
		 0.26430678 0.41867638 -1.93776822 0.17124104 0.39272249 -1.93072486 0.21603942 0.20398188 -1.94791484
		 0.31162095 0.22815347 -1.95523381 -0.86684155 -0.27493119 1.30604804 -0.7873385 -0.2518208 1.39421439
		 -0.74725962 -0.43705225 1.40769827 -0.83013272 -0.45925808 1.31633437;
	setAttr -s 1377 ".ed";
	setAttr ".ed[0:165]"  0 1 1 1 2 1 2 3 1 3 4 1 4 5 1 5 6 1 6 7 1 7 8 1 8 9 1
		 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 16 1 16 17 1 17 18 1 18 19 1 19 20 1
		 20 21 1 21 22 1 22 23 1 23 24 1 24 0 1 624 623 1 623 622 1 622 621 1 621 620 1 620 619 1
		 619 618 1 618 617 1 617 616 1 616 615 1 615 614 1 614 613 1 613 612 1 612 611 1 611 610 1
		 610 609 1 609 608 1 608 607 1 607 606 1 606 605 1 605 604 1 604 603 1 603 602 1 602 601 1
		 601 600 1 600 624 1 26 27 1 27 2 1 1 26 1 27 28 1 28 3 1 28 29 1 29 4 1 29 30 1 30 5 1
		 30 31 1 31 6 1 31 32 1 32 7 1 32 33 1 33 8 1 33 34 1 34 9 1 34 35 1 35 10 1 35 36 1
		 36 11 1 36 37 1 37 12 1 37 38 1 38 13 1 38 39 1 39 14 1 39 40 1 40 15 1 40 41 1 41 16 1
		 41 42 1 42 17 1 42 43 1 43 18 1 43 44 1 44 19 1 44 45 1 45 20 1 45 46 1 46 21 1 46 47 1
		 47 22 1 47 48 1 48 23 1 48 49 1 49 24 1 49 25 1 25 0 1 50 51 1 51 26 1 26 25 1 25 50 1
		 51 52 1 52 27 1 52 53 1 53 28 1 53 54 1 54 29 1 54 55 1 55 30 1 55 56 1 56 31 1 56 57 1
		 57 32 1 57 58 1 58 33 1 58 59 1 59 34 1 59 60 1 60 35 1 60 61 1 61 36 1 61 62 1 62 37 1
		 62 63 1 63 38 1 63 64 1 64 39 1 64 65 1 65 40 1 65 66 1 66 41 1 66 67 1 67 42 1 67 68 1
		 68 43 1 68 69 1 69 44 1 69 70 1 70 45 1 70 71 1 71 46 1 71 72 1 72 47 1 72 73 1 73 48 1
		 73 74 1 74 49 1 74 50 1 75 76 1 76 51 1 50 75 1 76 77 1 77 52 1 77 78 1 78 53 1 78 79 1
		 79 54 1 79 80 1 80 55 1 80 81 1 81 56 1 81 82 1 82 57 1 82 83 1;
	setAttr ".ed[166:331]" 83 58 1 83 84 1 84 59 1 85 86 1 86 61 1 60 85 1 86 87 1
		 87 62 1 87 88 1 88 63 1 88 89 1 89 64 1 89 90 1 90 65 1 90 91 1 91 66 1 91 92 1 92 67 1
		 92 93 1 93 68 1 93 94 1 94 69 1 94 95 1 95 70 1 95 96 1 96 71 1 96 97 1 97 72 1 97 98 1
		 98 73 1 98 99 1 99 74 1 99 75 1 100 101 1 101 76 1 75 100 1 101 102 1 102 77 1 102 103 1
		 103 78 1 103 104 1 104 79 1 104 105 1 105 80 1 105 106 1 106 81 1 106 107 1 107 82 1
		 107 108 1 108 83 1 108 109 1 109 84 1 109 110 1 110 85 1 85 84 1 110 111 1 111 86 1
		 111 112 1 112 87 1 112 113 1 113 88 1 113 114 1 114 89 1 114 115 1 115 90 1 115 116 1
		 116 91 1 116 117 1 117 92 1 117 118 1 118 93 1 118 119 1 119 94 1 119 120 1 120 95 1
		 120 121 1 121 96 1 121 122 1 122 97 1 122 123 1 123 98 1 123 124 1 124 99 1 124 100 1
		 125 126 1 126 101 1 100 125 1 126 127 1 127 102 1 127 128 1 128 103 1 128 129 1 129 104 1
		 129 130 1 130 105 1 130 131 1 131 106 1 131 132 1 132 107 1 132 133 1 133 108 1 133 134 1
		 134 109 1 134 135 1 135 110 1 135 136 1 136 111 1 136 137 1 137 112 1 137 138 1 138 113 1
		 138 139 1 139 114 1 139 140 1 140 115 1 140 141 1 141 116 1 141 142 1 142 117 1 142 143 1
		 143 118 1 144 145 1 145 120 1 119 144 1 145 146 1 146 121 1 146 147 1 147 122 1 147 148 1
		 148 123 1 148 149 1 149 124 1 149 125 1 150 151 1 151 126 1 125 150 1 151 152 1 152 127 1
		 152 153 1 153 128 1 153 154 1 154 129 1 154 155 1 155 130 1 155 156 1 156 131 1 156 157 1
		 157 132 1 157 158 1 158 133 1 158 159 1 159 134 1 159 160 1 160 135 1 160 161 1 161 136 1
		 161 162 1 162 137 1 162 163 1 163 138 1 163 164 1 164 139 1 164 165 1 165 140 1 165 166 1
		 166 141 1;
	setAttr ".ed[332:497]" 166 167 1 167 142 1 167 168 1 168 143 1 168 169 1 169 144 1
		 144 143 1 169 170 1 170 145 1 170 171 1 171 146 1 171 172 1 172 147 1 172 173 1 173 148 1
		 173 174 1 174 149 1 174 150 1 175 176 1 176 151 1 150 175 1 176 177 1 177 152 1 177 178 1
		 178 153 1 178 179 1 179 154 1 179 180 1 180 155 1 180 181 1 181 156 1 181 182 1 182 157 1
		 182 183 1 183 158 1 183 184 1 184 159 1 184 185 1 185 160 1 185 186 1 186 161 1 186 187 1
		 187 162 1 187 188 1 188 163 1 188 189 1 189 164 1 189 190 1 190 165 1 190 191 1 191 166 1
		 191 192 1 192 167 1 192 193 1 193 168 1 193 194 1 194 169 1 194 195 1 195 170 1 195 196 1
		 196 171 1 196 197 1 197 172 1 197 198 1 198 173 1 198 199 1 199 174 1 199 175 1 200 201 1
		 201 176 1 175 200 1 201 202 1 202 177 1 203 204 1 204 179 1 178 203 1 204 205 1 205 180 1
		 205 206 1 206 181 1 206 207 1 207 182 1 207 208 1 208 183 1 208 209 1 209 184 1 209 210 1
		 210 185 1 210 211 1 211 186 1 211 212 1 212 187 1 212 213 1 213 188 1 213 214 1 214 189 1
		 214 215 1 215 190 1 215 216 1 216 191 1 216 217 1 217 192 1 217 218 1 218 193 1 218 219 1
		 219 194 1 219 220 1 220 195 1 220 221 1 221 196 1 221 222 1 222 197 1 222 223 1 223 198 1
		 223 224 1 224 199 1 224 200 1 225 226 1 226 201 1 200 225 1 226 227 1 227 202 1 227 228 1
		 228 203 1 203 202 1 228 229 1 229 204 1 229 230 1 230 205 1 230 231 1 231 206 1 231 232 1
		 232 207 1 232 233 1 233 208 1 233 234 1 234 209 1 234 235 1 235 210 1 235 236 1 236 211 1
		 236 237 1 237 212 1 237 238 1 238 213 1 238 239 1 239 214 1 239 240 1 240 215 1 240 241 1
		 241 216 1 241 242 1 242 217 1 242 243 1 243 218 1 243 244 1 244 219 1 244 245 1 245 220 1
		 245 246 1 246 221 1 246 247 1 247 222 1 247 248 1 248 223 1 248 249 1;
	setAttr ".ed[498:663]" 249 224 1 249 225 1 250 251 1 251 226 1 225 250 1 251 252 1
		 252 227 1 252 253 1 253 228 1 253 254 1 254 229 1 254 255 1 255 230 1 255 256 1 256 231 1
		 256 257 1 257 232 1 257 258 1 258 233 1 258 259 1 259 234 1 259 260 1 260 235 1 260 261 1
		 261 236 1 262 263 1 263 238 1 237 262 1 263 264 1 264 239 1 264 265 1 265 240 1 265 266 1
		 266 241 1 266 267 1 267 242 1 267 268 1 268 243 1 268 269 1 269 244 1 269 270 1 270 245 1
		 270 271 1 271 246 1 271 272 1 272 247 1 272 273 1 273 248 1 273 274 1 274 249 1 274 250 1
		 275 276 1 276 251 1 250 275 1 276 277 1 277 252 1 277 278 1 278 253 1 278 279 1 279 254 1
		 279 280 1 280 255 1 280 281 1 281 256 1 281 282 1 282 257 1 282 283 1 283 258 1 283 284 1
		 284 259 1 284 285 1 285 260 1 285 286 1 286 261 1 286 287 1 287 262 1 262 261 1 287 288 1
		 288 263 1 288 289 1 289 264 1 289 290 1 290 265 1 290 291 1 291 266 1 291 292 1 292 267 1
		 292 293 1 293 268 1 293 294 1 294 269 1 294 295 1 295 270 1 295 296 1 296 271 1 296 297 1
		 297 272 1 297 298 1 298 273 1 298 299 1 299 274 1 299 275 1 300 301 1 301 276 1 275 300 1
		 301 302 1 302 277 1 302 303 1 303 278 1 303 304 1 304 279 1 304 305 1 305 280 1 305 306 1
		 306 281 1 306 307 1 307 282 1 307 308 1 308 283 1 308 309 1 309 284 1 309 310 1 310 285 1
		 310 311 1 311 286 1 311 312 1 312 287 1 312 313 1 313 288 1 313 314 1 314 289 1 314 315 1
		 315 290 1 315 316 1 316 291 1 316 317 1 317 292 1 317 318 1 318 293 1 318 319 1 319 294 1
		 319 320 1 320 295 1 321 322 1 322 297 1 296 321 1 322 323 1 323 298 1 323 324 1 324 299 1
		 324 300 1 325 326 1 326 301 1 300 325 1 326 327 1 327 302 1 327 328 1 328 303 1 328 329 1
		 329 304 1 329 330 1 330 305 1 330 331 1 331 306 1 331 332 1 332 307 1;
	setAttr ".ed[664:829]" 332 333 1 333 308 1 333 334 1 334 309 1 334 335 1 335 310 1
		 335 336 1 336 311 1 336 337 1 337 312 1 337 338 1 338 313 1 338 339 1 339 314 1 339 340 1
		 340 315 1 340 341 1 341 316 1 341 342 1 342 317 1 342 343 1 343 318 1 343 344 1 344 319 1
		 344 345 1 345 320 1 345 346 1 346 321 1 321 320 1 346 347 1 347 322 1 347 348 1 348 323 1
		 348 349 1 349 324 1 349 325 1 350 351 1 351 326 1 325 350 1 351 352 1 352 327 1 352 353 1
		 353 328 1 353 354 1 354 329 1 354 355 1 355 330 1 355 356 1 356 331 1 356 357 1 357 332 1
		 357 358 1 358 333 1 358 359 1 359 334 1 359 360 1 360 335 1 360 361 1 361 336 1 361 362 1
		 362 337 1 362 363 1 363 338 1 363 364 1 364 339 1 364 365 1 365 340 1 365 366 1 366 341 1
		 366 367 1 367 342 1 367 368 1 368 343 1 368 369 1 369 344 1 369 370 1 370 345 1 370 371 1
		 371 346 1 371 372 1 372 347 1 372 373 1 373 348 1 373 374 1 374 349 1 374 350 1 375 376 1
		 376 351 1 350 375 1 376 377 1 377 352 1 377 378 1 378 353 1 378 379 1 379 354 1 380 381 1
		 381 356 1 355 380 1 381 382 1 382 357 1 382 383 1 383 358 1 383 384 1 384 359 1 384 385 1
		 385 360 1 385 386 1 386 361 1 386 387 1 387 362 1 387 388 1 388 363 1 388 389 1 389 364 1
		 389 390 1 390 365 1 390 391 1 391 366 1 391 392 1 392 367 1 392 393 1 393 368 1 393 394 1
		 394 369 1 394 395 1 395 370 1 395 396 1 396 371 1 396 397 1 397 372 1 397 398 1 398 373 1
		 398 399 1 399 374 1 399 375 1 400 401 1 401 376 1 375 400 1 401 402 1 402 377 1 402 403 1
		 403 378 1 403 404 1 404 379 1 404 405 1 405 380 1 380 379 1 405 406 1 406 381 1 406 407 1
		 407 382 1 407 408 1 408 383 1 408 409 1 409 384 1 409 410 1 410 385 1 410 411 1 411 386 1
		 411 412 1 412 387 1 412 413 1 413 388 1 413 414 1 414 389 1 414 415 1;
	setAttr ".ed[830:995]" 415 390 1 415 416 1 416 391 1 416 417 1 417 392 1 417 418 1
		 418 393 1 418 419 1 419 394 1 419 420 1 420 395 1 420 421 1 421 396 1 421 422 1 422 397 1
		 422 423 1 423 398 1 423 424 1 424 399 1 424 400 1 425 426 1 426 401 1 400 425 1 426 427 1
		 427 402 1 427 428 1 428 403 1 428 429 1 429 404 1 429 430 1 430 405 1 430 431 1 431 406 1
		 431 432 1 432 407 1 432 433 1 433 408 1 433 434 1 434 409 1 434 435 1 435 410 1 435 436 1
		 436 411 1 436 437 1 437 412 1 437 438 1 438 413 1 439 440 1 440 415 1 414 439 1 440 441 1
		 441 416 1 441 442 1 442 417 1 442 443 1 443 418 1 443 444 1 444 419 1 444 445 1 445 420 1
		 445 446 1 446 421 1 446 447 1 447 422 1 447 448 1 448 423 1 448 449 1 449 424 1 449 425 1
		 450 451 1 451 426 1 425 450 1 451 452 1 452 427 1 452 453 1 453 428 1 453 454 1 454 429 1
		 454 455 1 455 430 1 455 456 1 456 431 1 456 457 1 457 432 1 457 458 1 458 433 1 458 459 1
		 459 434 1 459 460 1 460 435 1 460 461 1 461 436 1 461 462 1 462 437 1 462 463 1 463 438 1
		 463 464 1 464 439 1 439 438 1 464 465 1 465 440 1 465 466 1 466 441 1 466 467 1 467 442 1
		 467 468 1 468 443 1 468 469 1 469 444 1 469 470 1 470 445 1 470 471 1 471 446 1 471 472 1
		 472 447 1 472 473 1 473 448 1 473 474 1 474 449 1 474 450 1 475 476 1 476 451 1 450 475 1
		 476 477 1 477 452 1 477 478 1 478 453 1 478 479 1 479 454 1 479 480 1 480 455 1 480 481 1
		 481 456 1 481 482 1 482 457 1 482 483 1 483 458 1 483 484 1 484 459 1 484 485 1 485 460 1
		 485 486 1 486 461 1 486 487 1 487 462 1 487 488 1 488 463 1 488 489 1 489 464 1 489 490 1
		 490 465 1 490 491 1 491 466 1 491 492 1 492 467 1 492 493 1 493 468 1 493 494 1 494 469 1
		 494 495 1 495 470 1 495 496 1 496 471 1 496 497 1 497 472 1 498 499 1;
	setAttr ".ed[996:1161]" 499 474 1 473 498 1 499 475 1 500 501 1 501 476 1 475 500 1
		 501 502 1 502 477 1 502 503 1 503 478 1 503 504 1 504 479 1 504 505 1 505 480 1 505 506 1
		 506 481 1 506 507 1 507 482 1 507 508 1 508 483 1 508 509 1 509 484 1 509 510 1 510 485 1
		 510 511 1 511 486 1 511 512 1 512 487 1 512 513 1 513 488 1 513 514 1 514 489 1 514 515 1
		 515 490 1 515 516 1 516 491 1 516 517 1 517 492 1 517 518 1 518 493 1 518 519 1 519 494 1
		 519 520 1 520 495 1 520 521 1 521 496 1 521 522 1 522 497 1 522 523 1 523 498 1 498 497 1
		 523 524 1 524 499 1 524 500 1 525 526 1 526 501 1 500 525 1 526 527 1 527 502 1 527 528 1
		 528 503 1 528 529 1 529 504 1 529 530 1 530 505 1 530 531 1 531 506 1 531 532 1 532 507 1
		 532 533 1 533 508 1 533 534 1 534 509 1 534 535 1 535 510 1 535 536 1 536 511 1 536 537 1
		 537 512 1 537 538 1 538 513 1 538 539 1 539 514 1 539 540 1 540 515 1 540 541 1 541 516 1
		 541 542 1 542 517 1 542 543 1 543 518 1 543 544 1 544 519 1 544 545 1 545 520 1 545 546 1
		 546 521 1 546 547 1 547 522 1 547 548 1 548 523 1 548 549 1 549 524 1 549 525 1 550 551 1
		 551 526 1 525 550 1 551 552 1 552 527 1 552 553 1 553 528 1 553 554 1 554 529 1 554 555 1
		 555 530 1 555 556 1 556 531 1 557 558 1 558 533 1 532 557 1 558 559 1 559 534 1 559 560 1
		 560 535 1 560 561 1 561 536 1 561 562 1 562 537 1 562 563 1 563 538 1 563 564 1 564 539 1
		 564 565 1 565 540 1 565 566 1 566 541 1 566 567 1 567 542 1 567 568 1 568 543 1 568 569 1
		 569 544 1 569 570 1 570 545 1 570 571 1 571 546 1 571 572 1 572 547 1 572 573 1 573 548 1
		 573 574 1 574 549 1 574 550 1 575 576 1 576 551 1 550 575 1 576 577 1 577 552 1 577 578 1
		 578 553 1 578 579 1 579 554 1 579 580 1 580 555 1 580 581 1 581 556 1;
	setAttr ".ed[1162:1327]" 581 582 1 582 557 1 557 556 1 582 583 1 583 558 1 583 584 1
		 584 559 1 584 585 1 585 560 1 585 586 1 586 561 1 586 587 1 587 562 1 587 588 1 588 563 1
		 588 589 1 589 564 1 589 590 1 590 565 1 590 591 1 591 566 1 591 592 1 592 567 1 592 593 1
		 593 568 1 593 594 1 594 569 1 594 595 1 595 570 1 595 596 1 596 571 1 596 597 1 597 572 1
		 597 598 1 598 573 1 598 599 1 599 574 1 599 575 1 601 576 1 575 600 1 602 577 1 603 578 1
		 604 579 1 605 580 1 606 581 1 607 582 1 608 583 1 609 584 1 610 585 1 611 586 1 612 587 1
		 613 588 1 614 589 1 615 590 1 617 592 1 591 616 1 618 593 1 619 594 1 620 595 1 621 596 1
		 622 597 1 623 598 1 624 599 1 628 627 1 627 626 1 626 625 1 625 628 1 644 643 1 643 642 1
		 642 641 1 641 644 1 660 659 1 659 658 1 658 657 1 657 660 1 626 1 1 0 625 1 627 26 1
		 628 25 1 629 630 1 630 60 1 59 629 1 630 631 1 631 85 1 631 632 1 632 84 1 632 629 1
		 633 634 1 634 119 1 118 633 1 634 635 1 635 144 1 635 636 1 636 143 1 636 633 1 637 638 1
		 638 178 1 177 637 1 638 639 1 639 203 1 639 640 1 640 202 1 640 637 1 642 237 1 236 641 1
		 643 262 1 644 261 1 645 646 1 646 296 1 295 645 1 646 647 1 647 321 1 647 648 1 648 320 1
		 648 645 1 649 650 1 650 355 1 354 649 1 650 651 1 651 380 1 651 652 1 652 379 1 652 649 1
		 653 654 1 654 414 1 413 653 1 654 655 1 655 439 1 655 656 1 656 438 1 656 653 1 658 473 1
		 472 657 1 659 498 1 660 497 1 661 662 1 662 532 1 531 661 1 662 663 1 663 557 1 663 664 1
		 664 556 1 664 661 1 665 666 1 666 591 1 590 665 1 666 667 1 667 616 1 667 668 1 668 615 1
		 668 665 1 672 671 1 671 670 1 670 669 1 669 672 1 676 675 1 675 674 1 674 673 1 673 676 1
		 680 679 1 679 678 1 678 677 1 677 680 1 684 683 1 683 682 1 682 681 1;
	setAttr ".ed[1328:1376]" 681 684 1 688 687 1 687 686 1 686 685 1 685 688 1 692 691 1
		 691 690 1 690 689 1 689 692 1 696 695 1 695 694 1 694 693 1 693 696 1 700 699 1 699 698 1
		 698 697 1 697 700 1 670 630 1 629 669 1 671 631 1 672 632 1 674 634 1 633 673 1 675 635 1
		 676 636 1 678 638 1 637 677 1 679 639 1 680 640 1 682 646 1 645 681 1 683 647 1 684 648 1
		 686 650 1 649 685 1 687 651 1 688 652 1 690 654 1 653 689 1 691 655 1 692 656 1 694 662 1
		 661 693 1 695 663 1 696 664 1 698 666 1 665 697 1 699 667 1 700 668 1;
	setAttr -s 678 -ch 2754 ".fc";
	setAttr ".fc[0:499]" -type "polyFaces" 
		f 25 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24
		f 25 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49
		f 4 50 51 -2 52
		f 4 53 54 -3 -52
		f 4 55 56 -4 -55
		f 4 57 58 -5 -57
		f 4 59 60 -6 -59
		f 4 61 62 -7 -61
		f 4 63 64 -8 -63
		f 4 65 66 -9 -65
		f 4 67 68 -10 -67
		f 4 69 70 -11 -69
		f 4 71 72 -12 -71
		f 4 73 74 -13 -73
		f 4 75 76 -14 -75
		f 4 77 78 -15 -77
		f 4 79 80 -16 -79
		f 4 81 82 -17 -81
		f 4 83 84 -18 -83
		f 4 85 86 -19 -85
		f 4 87 88 -20 -87
		f 4 89 90 -21 -89
		f 4 91 92 -22 -91
		f 4 93 94 -23 -93
		f 4 95 96 -24 -95
		f 4 97 98 -25 -97
		f 4 99 100 101 102
		f 4 103 104 -51 -101
		f 4 105 106 -54 -105
		f 4 107 108 -56 -107
		f 4 109 110 -58 -109
		f 4 111 112 -60 -111
		f 4 113 114 -62 -113
		f 4 115 116 -64 -115
		f 4 117 118 -66 -117
		f 4 119 120 -68 -119
		f 4 121 122 -70 -121
		f 4 123 124 -72 -123
		f 4 125 126 -74 -125
		f 4 127 128 -76 -127
		f 4 129 130 -78 -129
		f 4 131 132 -80 -131
		f 4 133 134 -82 -133
		f 4 135 136 -84 -135
		f 4 137 138 -86 -137
		f 4 139 140 -88 -139
		f 4 141 142 -90 -141
		f 4 143 144 -92 -143
		f 4 145 146 -94 -145
		f 4 147 148 -96 -147
		f 4 149 -103 -98 -149
		f 4 150 151 -100 152
		f 4 153 154 -104 -152
		f 4 155 156 -106 -155
		f 4 157 158 -108 -157
		f 4 159 160 -110 -159
		f 4 161 162 -112 -161
		f 4 163 164 -114 -163
		f 4 165 166 -116 -165
		f 4 167 168 -118 -167
		f 4 169 170 -122 171
		f 4 172 173 -124 -171
		f 4 174 175 -126 -174
		f 4 176 177 -128 -176
		f 4 178 179 -130 -178
		f 4 180 181 -132 -180
		f 4 182 183 -134 -182
		f 4 184 185 -136 -184
		f 4 186 187 -138 -186
		f 4 188 189 -140 -188
		f 4 190 191 -142 -190
		f 4 192 193 -144 -192
		f 4 194 195 -146 -194
		f 4 196 197 -148 -196
		f 4 198 -153 -150 -198
		f 4 199 200 -151 201
		f 4 202 203 -154 -201
		f 4 204 205 -156 -204
		f 4 206 207 -158 -206
		f 4 208 209 -160 -208
		f 4 210 211 -162 -210
		f 4 212 213 -164 -212
		f 4 214 215 -166 -214
		f 4 216 217 -168 -216
		f 4 218 219 220 -218
		f 4 221 222 -170 -220
		f 4 223 224 -173 -223
		f 4 225 226 -175 -225
		f 4 227 228 -177 -227
		f 4 229 230 -179 -229
		f 4 231 232 -181 -231
		f 4 233 234 -183 -233
		f 4 235 236 -185 -235
		f 4 237 238 -187 -237
		f 4 239 240 -189 -239
		f 4 241 242 -191 -241
		f 4 243 244 -193 -243
		f 4 245 246 -195 -245
		f 4 247 248 -197 -247
		f 4 249 -202 -199 -249
		f 4 250 251 -200 252
		f 4 253 254 -203 -252
		f 4 255 256 -205 -255
		f 4 257 258 -207 -257
		f 4 259 260 -209 -259
		f 4 261 262 -211 -261
		f 4 263 264 -213 -263
		f 4 265 266 -215 -265
		f 4 267 268 -217 -267
		f 4 269 270 -219 -269
		f 4 271 272 -222 -271
		f 4 273 274 -224 -273
		f 4 275 276 -226 -275
		f 4 277 278 -228 -277
		f 4 279 280 -230 -279
		f 4 281 282 -232 -281
		f 4 283 284 -234 -283
		f 4 285 286 -236 -285
		f 4 287 288 -240 289
		f 4 290 291 -242 -289
		f 4 292 293 -244 -292
		f 4 294 295 -246 -294
		f 4 296 297 -248 -296
		f 4 298 -253 -250 -298
		f 4 299 300 -251 301
		f 4 302 303 -254 -301
		f 4 304 305 -256 -304
		f 4 306 307 -258 -306
		f 4 308 309 -260 -308
		f 4 310 311 -262 -310
		f 4 312 313 -264 -312
		f 4 314 315 -266 -314
		f 4 316 317 -268 -316
		f 4 318 319 -270 -318
		f 4 320 321 -272 -320
		f 4 322 323 -274 -322
		f 4 324 325 -276 -324
		f 4 326 327 -278 -326
		f 4 328 329 -280 -328
		f 4 330 331 -282 -330
		f 4 332 333 -284 -332
		f 4 334 335 -286 -334
		f 4 336 337 338 -336
		f 4 339 340 -288 -338
		f 4 341 342 -291 -341
		f 4 343 344 -293 -343
		f 4 345 346 -295 -345
		f 4 347 348 -297 -347
		f 4 349 -302 -299 -349
		f 4 350 351 -300 352
		f 4 353 354 -303 -352
		f 4 355 356 -305 -355
		f 4 357 358 -307 -357
		f 4 359 360 -309 -359
		f 4 361 362 -311 -361
		f 4 363 364 -313 -363
		f 4 365 366 -315 -365
		f 4 367 368 -317 -367
		f 4 369 370 -319 -369
		f 4 371 372 -321 -371
		f 4 373 374 -323 -373
		f 4 375 376 -325 -375
		f 4 377 378 -327 -377
		f 4 379 380 -329 -379
		f 4 381 382 -331 -381
		f 4 383 384 -333 -383
		f 4 385 386 -335 -385
		f 4 387 388 -337 -387
		f 4 389 390 -340 -389
		f 4 391 392 -342 -391
		f 4 393 394 -344 -393
		f 4 395 396 -346 -395
		f 4 397 398 -348 -397
		f 4 399 -353 -350 -399
		f 4 400 401 -351 402
		f 4 403 404 -354 -402
		f 4 405 406 -358 407
		f 4 408 409 -360 -407
		f 4 410 411 -362 -410
		f 4 412 413 -364 -412
		f 4 414 415 -366 -414
		f 4 416 417 -368 -416
		f 4 418 419 -370 -418
		f 4 420 421 -372 -420
		f 4 422 423 -374 -422
		f 4 424 425 -376 -424
		f 4 426 427 -378 -426
		f 4 428 429 -380 -428
		f 4 430 431 -382 -430
		f 4 432 433 -384 -432
		f 4 434 435 -386 -434
		f 4 436 437 -388 -436
		f 4 438 439 -390 -438
		f 4 440 441 -392 -440
		f 4 442 443 -394 -442
		f 4 444 445 -396 -444
		f 4 446 447 -398 -446
		f 4 448 -403 -400 -448
		f 4 449 450 -401 451
		f 4 452 453 -404 -451
		f 4 454 455 456 -454
		f 4 457 458 -406 -456
		f 4 459 460 -409 -459
		f 4 461 462 -411 -461
		f 4 463 464 -413 -463
		f 4 465 466 -415 -465
		f 4 467 468 -417 -467
		f 4 469 470 -419 -469
		f 4 471 472 -421 -471
		f 4 473 474 -423 -473
		f 4 475 476 -425 -475
		f 4 477 478 -427 -477
		f 4 479 480 -429 -479
		f 4 481 482 -431 -481
		f 4 483 484 -433 -483
		f 4 485 486 -435 -485
		f 4 487 488 -437 -487
		f 4 489 490 -439 -489
		f 4 491 492 -441 -491
		f 4 493 494 -443 -493
		f 4 495 496 -445 -495
		f 4 497 498 -447 -497
		f 4 499 -452 -449 -499
		f 4 500 501 -450 502
		f 4 503 504 -453 -502
		f 4 505 506 -455 -505
		f 4 507 508 -458 -507
		f 4 509 510 -460 -509
		f 4 511 512 -462 -511
		f 4 513 514 -464 -513
		f 4 515 516 -466 -515
		f 4 517 518 -468 -517
		f 4 519 520 -470 -519
		f 4 521 522 -472 -521
		f 4 523 524 -476 525
		f 4 526 527 -478 -525
		f 4 528 529 -480 -528
		f 4 530 531 -482 -530
		f 4 532 533 -484 -532
		f 4 534 535 -486 -534
		f 4 536 537 -488 -536
		f 4 538 539 -490 -538
		f 4 540 541 -492 -540
		f 4 542 543 -494 -542
		f 4 544 545 -496 -544
		f 4 546 547 -498 -546
		f 4 548 -503 -500 -548
		f 4 549 550 -501 551
		f 4 552 553 -504 -551
		f 4 554 555 -506 -554
		f 4 556 557 -508 -556
		f 4 558 559 -510 -558
		f 4 560 561 -512 -560
		f 4 562 563 -514 -562
		f 4 564 565 -516 -564
		f 4 566 567 -518 -566
		f 4 568 569 -520 -568
		f 4 570 571 -522 -570
		f 4 572 573 574 -572
		f 4 575 576 -524 -574
		f 4 577 578 -527 -577
		f 4 579 580 -529 -579
		f 4 581 582 -531 -581
		f 4 583 584 -533 -583
		f 4 585 586 -535 -585
		f 4 587 588 -537 -587
		f 4 589 590 -539 -589
		f 4 591 592 -541 -591
		f 4 593 594 -543 -593
		f 4 595 596 -545 -595
		f 4 597 598 -547 -597
		f 4 599 -552 -549 -599
		f 4 600 601 -550 602
		f 4 603 604 -553 -602
		f 4 605 606 -555 -605
		f 4 607 608 -557 -607
		f 4 609 610 -559 -609
		f 4 611 612 -561 -611
		f 4 613 614 -563 -613
		f 4 615 616 -565 -615
		f 4 617 618 -567 -617
		f 4 619 620 -569 -619
		f 4 621 622 -571 -621
		f 4 623 624 -573 -623
		f 4 625 626 -576 -625
		f 4 627 628 -578 -627
		f 4 629 630 -580 -629
		f 4 631 632 -582 -631
		f 4 633 634 -584 -633
		f 4 635 636 -586 -635
		f 4 637 638 -588 -637
		f 4 639 640 -590 -639
		f 4 641 642 -594 643
		f 4 644 645 -596 -643
		f 4 646 647 -598 -646
		f 4 648 -603 -600 -648
		f 4 649 650 -601 651
		f 4 652 653 -604 -651
		f 4 654 655 -606 -654
		f 4 656 657 -608 -656
		f 4 658 659 -610 -658
		f 4 660 661 -612 -660
		f 4 662 663 -614 -662
		f 4 664 665 -616 -664
		f 4 666 667 -618 -666
		f 4 668 669 -620 -668
		f 4 670 671 -622 -670
		f 4 672 673 -624 -672
		f 4 674 675 -626 -674
		f 4 676 677 -628 -676
		f 4 678 679 -630 -678
		f 4 680 681 -632 -680
		f 4 682 683 -634 -682
		f 4 684 685 -636 -684
		f 4 686 687 -638 -686
		f 4 688 689 -640 -688
		f 4 690 691 692 -690
		f 4 693 694 -642 -692
		f 4 695 696 -645 -695
		f 4 697 698 -647 -697
		f 4 699 -652 -649 -699
		f 4 700 701 -650 702
		f 4 703 704 -653 -702
		f 4 705 706 -655 -705
		f 4 707 708 -657 -707
		f 4 709 710 -659 -709
		f 4 711 712 -661 -711
		f 4 713 714 -663 -713
		f 4 715 716 -665 -715
		f 4 717 718 -667 -717
		f 4 719 720 -669 -719
		f 4 721 722 -671 -721
		f 4 723 724 -673 -723
		f 4 725 726 -675 -725
		f 4 727 728 -677 -727
		f 4 729 730 -679 -729
		f 4 731 732 -681 -731
		f 4 733 734 -683 -733
		f 4 735 736 -685 -735
		f 4 737 738 -687 -737
		f 4 739 740 -689 -739
		f 4 741 742 -691 -741
		f 4 743 744 -694 -743
		f 4 745 746 -696 -745
		f 4 747 748 -698 -747
		f 4 749 -703 -700 -749
		f 4 750 751 -701 752
		f 4 753 754 -704 -752
		f 4 755 756 -706 -755
		f 4 757 758 -708 -757
		f 4 759 760 -712 761
		f 4 762 763 -714 -761
		f 4 764 765 -716 -764
		f 4 766 767 -718 -766
		f 4 768 769 -720 -768
		f 4 770 771 -722 -770
		f 4 772 773 -724 -772
		f 4 774 775 -726 -774
		f 4 776 777 -728 -776
		f 4 778 779 -730 -778
		f 4 780 781 -732 -780
		f 4 782 783 -734 -782
		f 4 784 785 -736 -784
		f 4 786 787 -738 -786
		f 4 788 789 -740 -788
		f 4 790 791 -742 -790
		f 4 792 793 -744 -792
		f 4 794 795 -746 -794
		f 4 796 797 -748 -796
		f 4 798 -753 -750 -798
		f 4 799 800 -751 801
		f 4 802 803 -754 -801
		f 4 804 805 -756 -804
		f 4 806 807 -758 -806
		f 4 808 809 810 -808
		f 4 811 812 -760 -810
		f 4 813 814 -763 -813
		f 4 815 816 -765 -815
		f 4 817 818 -767 -817
		f 4 819 820 -769 -819
		f 4 821 822 -771 -821
		f 4 823 824 -773 -823
		f 4 825 826 -775 -825
		f 4 827 828 -777 -827
		f 4 829 830 -779 -829
		f 4 831 832 -781 -831
		f 4 833 834 -783 -833
		f 4 835 836 -785 -835
		f 4 837 838 -787 -837
		f 4 839 840 -789 -839
		f 4 841 842 -791 -841
		f 4 843 844 -793 -843
		f 4 845 846 -795 -845
		f 4 847 848 -797 -847
		f 4 849 -802 -799 -849
		f 4 850 851 -800 852
		f 4 853 854 -803 -852
		f 4 855 856 -805 -855
		f 4 857 858 -807 -857
		f 4 859 860 -809 -859
		f 4 861 862 -812 -861
		f 4 863 864 -814 -863
		f 4 865 866 -816 -865
		f 4 867 868 -818 -867
		f 4 869 870 -820 -869
		f 4 871 872 -822 -871
		f 4 873 874 -824 -873
		f 4 875 876 -826 -875
		f 4 877 878 -830 879
		f 4 880 881 -832 -879
		f 4 882 883 -834 -882
		f 4 884 885 -836 -884
		f 4 886 887 -838 -886
		f 4 888 889 -840 -888
		f 4 890 891 -842 -890
		f 4 892 893 -844 -892
		f 4 894 895 -846 -894
		f 4 896 897 -848 -896
		f 4 898 -853 -850 -898
		f 4 899 900 -851 901
		f 4 902 903 -854 -901
		f 4 904 905 -856 -904
		f 4 906 907 -858 -906
		f 4 908 909 -860 -908
		f 4 910 911 -862 -910
		f 4 912 913 -864 -912
		f 4 914 915 -866 -914
		f 4 916 917 -868 -916
		f 4 918 919 -870 -918
		f 4 920 921 -872 -920
		f 4 922 923 -874 -922
		f 4 924 925 -876 -924
		f 4 926 927 928 -926
		f 4 929 930 -878 -928
		f 4 931 932 -881 -931
		f 4 933 934 -883 -933
		f 4 935 936 -885 -935
		f 4 937 938 -887 -937
		f 4 939 940 -889 -939
		f 4 941 942 -891 -941
		f 4 943 944 -893 -943
		f 4 945 946 -895 -945
		f 4 947 948 -897 -947
		f 4 949 -902 -899 -949
		f 4 950 951 -900 952
		f 4 953 954 -903 -952
		f 4 955 956 -905 -955
		f 4 957 958 -907 -957
		f 4 959 960 -909 -959
		f 4 961 962 -911 -961
		f 4 963 964 -913 -963
		f 4 965 966 -915 -965
		f 4 967 968 -917 -967
		f 4 969 970 -919 -969
		f 4 971 972 -921 -971
		f 4 973 974 -923 -973
		f 4 975 976 -925 -975
		f 4 977 978 -927 -977
		f 4 979 980 -930 -979
		f 4 981 982 -932 -981
		f 4 983 984 -934 -983
		f 4 985 986 -936 -985
		f 4 987 988 -938 -987
		f 4 989 990 -940 -989
		f 4 991 992 -942 -991
		f 4 993 994 -944 -993
		f 4 995 996 -948 997
		f 4 998 -953 -950 -997
		f 4 999 1000 -951 1001
		f 4 1002 1003 -954 -1001
		f 4 1004 1005 -956 -1004
		f 4 1006 1007 -958 -1006
		f 4 1008 1009 -960 -1008
		f 4 1010 1011 -962 -1010
		f 4 1012 1013 -964 -1012
		f 4 1014 1015 -966 -1014
		f 4 1016 1017 -968 -1016
		f 4 1018 1019 -970 -1018
		f 4 1020 1021 -972 -1020
		f 4 1022 1023 -974 -1022
		f 4 1024 1025 -976 -1024
		f 4 1026 1027 -978 -1026
		f 4 1028 1029 -980 -1028
		f 4 1030 1031 -982 -1030
		f 4 1032 1033 -984 -1032
		f 4 1034 1035 -986 -1034
		f 4 1036 1037 -988 -1036
		f 4 1038 1039 -990 -1038
		f 4 1040 1041 -992 -1040
		f 4 1042 1043 -994 -1042
		f 4 1044 1045 1046 -1044
		f 4 1047 1048 -996 -1046
		f 4 1049 -1002 -999 -1049
		f 4 1050 1051 -1000 1052
		f 4 1053 1054 -1003 -1052
		f 4 1055 1056 -1005 -1055
		f 4 1057 1058 -1007 -1057
		f 4 1059 1060 -1009 -1059
		f 4 1061 1062 -1011 -1061
		f 4 1063 1064 -1013 -1063;
	setAttr ".fc[500:677]"
		f 4 1065 1066 -1015 -1065
		f 4 1067 1068 -1017 -1067
		f 4 1069 1070 -1019 -1069
		f 4 1071 1072 -1021 -1071
		f 4 1073 1074 -1023 -1073
		f 4 1075 1076 -1025 -1075
		f 4 1077 1078 -1027 -1077
		f 4 1079 1080 -1029 -1079
		f 4 1081 1082 -1031 -1081
		f 4 1083 1084 -1033 -1083
		f 4 1085 1086 -1035 -1085
		f 4 1087 1088 -1037 -1087
		f 4 1089 1090 -1039 -1089
		f 4 1091 1092 -1041 -1091
		f 4 1093 1094 -1043 -1093
		f 4 1095 1096 -1045 -1095
		f 4 1097 1098 -1048 -1097
		f 4 1099 -1053 -1050 -1099
		f 4 1100 1101 -1051 1102
		f 4 1103 1104 -1054 -1102
		f 4 1105 1106 -1056 -1105
		f 4 1107 1108 -1058 -1107
		f 4 1109 1110 -1060 -1109
		f 4 1111 1112 -1062 -1111
		f 4 1113 1114 -1066 1115
		f 4 1116 1117 -1068 -1115
		f 4 1118 1119 -1070 -1118
		f 4 1120 1121 -1072 -1120
		f 4 1122 1123 -1074 -1122
		f 4 1124 1125 -1076 -1124
		f 4 1126 1127 -1078 -1126
		f 4 1128 1129 -1080 -1128
		f 4 1130 1131 -1082 -1130
		f 4 1132 1133 -1084 -1132
		f 4 1134 1135 -1086 -1134
		f 4 1136 1137 -1088 -1136
		f 4 1138 1139 -1090 -1138
		f 4 1140 1141 -1092 -1140
		f 4 1142 1143 -1094 -1142
		f 4 1144 1145 -1096 -1144
		f 4 1146 1147 -1098 -1146
		f 4 1148 -1103 -1100 -1148
		f 4 1149 1150 -1101 1151
		f 4 1152 1153 -1104 -1151
		f 4 1154 1155 -1106 -1154
		f 4 1156 1157 -1108 -1156
		f 4 1158 1159 -1110 -1158
		f 4 1160 1161 -1112 -1160
		f 4 1162 1163 1164 -1162
		f 4 1165 1166 -1114 -1164
		f 4 1167 1168 -1117 -1167
		f 4 1169 1170 -1119 -1169
		f 4 1171 1172 -1121 -1171
		f 4 1173 1174 -1123 -1173
		f 4 1175 1176 -1125 -1175
		f 4 1177 1178 -1127 -1177
		f 4 1179 1180 -1129 -1179
		f 4 1181 1182 -1131 -1181
		f 4 1183 1184 -1133 -1183
		f 4 1185 1186 -1135 -1185
		f 4 1187 1188 -1137 -1187
		f 4 1189 1190 -1139 -1189
		f 4 1191 1192 -1141 -1191
		f 4 1193 1194 -1143 -1193
		f 4 1195 1196 -1145 -1195
		f 4 1197 1198 -1147 -1197
		f 4 1199 -1152 -1149 -1199
		f 4 -49 1200 -1150 1201
		f 4 -48 1202 -1153 -1201
		f 4 -47 1203 -1155 -1203
		f 4 -46 1204 -1157 -1204
		f 4 -45 1205 -1159 -1205
		f 4 -44 1206 -1161 -1206
		f 4 -43 1207 -1163 -1207
		f 4 -42 1208 -1166 -1208
		f 4 -41 1209 -1168 -1209
		f 4 -40 1210 -1170 -1210
		f 4 -39 1211 -1172 -1211
		f 4 -38 1212 -1174 -1212
		f 4 -37 1213 -1176 -1213
		f 4 -36 1214 -1178 -1214
		f 4 -35 1215 -1180 -1215
		f 4 -33 1216 -1184 1217
		f 4 -32 1218 -1186 -1217
		f 4 -31 1219 -1188 -1219
		f 4 -30 1220 -1190 -1220
		f 4 -29 1221 -1192 -1221
		f 4 -28 1222 -1194 -1222
		f 4 -27 1223 -1196 -1223
		f 4 -26 1224 -1198 -1224
		f 4 -50 -1202 -1200 -1225
		f 4 1225 1226 1227 1228
		f 4 1229 1230 1231 1232
		f 4 1233 1234 1235 1236
		f 4 -1228 1237 -1 1238
		f 4 -1227 1239 -53 -1238
		f 4 -1226 1240 -102 -1240
		f 4 -1229 -1239 -99 -1241
		f 4 1241 1242 -120 1243
		f 4 1244 1245 -172 -1243
		f 4 1246 1247 -221 -1246
		f 4 1248 -1244 -169 -1248
		f 4 1249 1250 -238 1251
		f 4 1252 1253 -290 -1251
		f 4 1254 1255 -339 -1254
		f 4 1256 -1252 -287 -1256
		f 4 1257 1258 -356 1259
		f 4 1260 1261 -408 -1259
		f 4 1262 1263 -457 -1262
		f 4 1264 -1260 -405 -1264
		f 4 -1232 1265 -474 1266
		f 4 -1231 1267 -526 -1266
		f 4 -1230 1268 -575 -1268
		f 4 -1233 -1267 -523 -1269
		f 4 1269 1270 -592 1271
		f 4 1272 1273 -644 -1271
		f 4 1274 1275 -693 -1274
		f 4 1276 -1272 -641 -1276
		f 4 1277 1278 -710 1279
		f 4 1280 1281 -762 -1279
		f 4 1282 1283 -811 -1282
		f 4 1284 -1280 -759 -1284
		f 4 1285 1286 -828 1287
		f 4 1288 1289 -880 -1287
		f 4 1290 1291 -929 -1290
		f 4 1292 -1288 -877 -1292
		f 4 -1236 1293 -946 1294
		f 4 -1235 1295 -998 -1294
		f 4 -1234 1296 -1047 -1296
		f 4 -1237 -1295 -995 -1297
		f 4 1297 1298 -1064 1299
		f 4 1300 1301 -1116 -1299
		f 4 1302 1303 -1165 -1302
		f 4 1304 -1300 -1113 -1304
		f 4 1305 1306 -1182 1307
		f 4 1308 1309 -1218 -1307
		f 4 1310 1311 -34 -1310
		f 4 1312 -1308 -1216 -1312
		f 4 1313 1314 1315 1316
		f 4 1317 1318 1319 1320
		f 4 1321 1322 1323 1324
		f 4 1325 1326 1327 1328
		f 4 1329 1330 1331 1332
		f 4 1333 1334 1335 1336
		f 4 1337 1338 1339 1340
		f 4 1341 1342 1343 1344
		f 4 -1316 1345 -1242 1346
		f 4 -1315 1347 -1245 -1346
		f 4 -1314 1348 -1247 -1348
		f 4 -1317 -1347 -1249 -1349
		f 4 -1320 1349 -1250 1350
		f 4 -1319 1351 -1253 -1350
		f 4 -1318 1352 -1255 -1352
		f 4 -1321 -1351 -1257 -1353
		f 4 -1324 1353 -1258 1354
		f 4 -1323 1355 -1261 -1354
		f 4 -1322 1356 -1263 -1356
		f 4 -1325 -1355 -1265 -1357
		f 4 -1328 1357 -1270 1358
		f 4 -1327 1359 -1273 -1358
		f 4 -1326 1360 -1275 -1360
		f 4 -1329 -1359 -1277 -1361
		f 4 -1332 1361 -1278 1362
		f 4 -1331 1363 -1281 -1362
		f 4 -1330 1364 -1283 -1364
		f 4 -1333 -1363 -1285 -1365
		f 4 -1336 1365 -1286 1366
		f 4 -1335 1367 -1289 -1366
		f 4 -1334 1368 -1291 -1368
		f 4 -1337 -1367 -1293 -1369
		f 4 -1340 1369 -1298 1370
		f 4 -1339 1371 -1301 -1370
		f 4 -1338 1372 -1303 -1372
		f 4 -1341 -1371 -1305 -1373
		f 4 -1344 1373 -1306 1374
		f 4 -1343 1375 -1309 -1374
		f 4 -1342 1376 -1311 -1376
		f 4 -1345 -1375 -1313 -1377;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "7E25DE0E-4C36-8E3A-F012-84BF7AE16A81";
	setAttr -s 4 ".lnk";
	setAttr -s 4 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "17FD22A2-4775-082B-632E-768C197707FA";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "B56176D5-4F7B-10A1-8484-13B348808EFA";
createNode displayLayerManager -n "layerManager";
	rename -uid "848E7815-48AD-0504-0025-AFAAAAFAA707";
createNode displayLayer -n "defaultLayer";
	rename -uid "75E8A904-4FFD-C41B-4F50-7F80DDF36A76";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "0968ECCD-4CC7-AD2C-0A3E-2BB0021B6A0E";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "C54C52CA-4594-CE46-8949-408EE1546436";
	setAttr ".g" yes;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "6EC871A0-40A0-CA9A-E223-A898D42D36B4";
	setAttr ".version" -type "string" "5.3.0";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "773B281B-4BD4-05A4-6BEE-64A8C8FFA3DF";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "F7CDE8B1-4C73-6C5D-9E59-92A513A426B4";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "97382041-4FA9-531B-2024-32960ADBB320";
	setAttr ".output_mode" 0;
	setAttr ".ai_translator" -type "string" "maya";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "239C115B-4FA1-D6EF-4309-22BC8F17465D";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 562\n            -height 386\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n"
		+ "            -shadows 0\n            -captureSequenceNumber -1\n            -width 562\n            -height 386\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n"
		+ "            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n"
		+ "            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n"
		+ "            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 562\n            -height 386\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n"
		+ "        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 0\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
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
		+ "                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n"
		+ "                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n"
		+ "                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -bluePencil 1\n                -greasePencils 0\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n"
		+ "                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 0\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1319\\n    -height 517\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 0\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1319\\n    -height 517\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "7BC12E70-4340-A40B-D3B5-A1AA7952E915";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 24 -ast 0 -aet 200 ";
	setAttr ".st" 6;
createNode reference -n "Ultimate_Walker_RigRN";
	rename -uid "5332C5F8-40CE-D231-070A-639A70A3FB42";
	setAttr -s 45 ".phl";
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
	setAttr ".ed" -type "dataReferenceEdits" 
		"Ultimate_Walker_RigRN"
		"Ultimate_Walker_RigRN" 0
		"Ultimate_Walker_RigRN" 82
		2 "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:CTRL_Root" "translate" 
		" -type \"double3\" 0 0 0"
		2 "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:CTRL_Root" "translateX" 
		" -k 0 -cb 1"
		2 "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:CTRL_Root" "translateY" 
		" -k 0 -cb 1"
		2 "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:CTRL_Root" "translateZ" 
		" -k 0 -cb 1"
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
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl.pvControl" 
		"Ultimate_Walker_RigRN.placeHolderList[1]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl.legTwist" 
		"Ultimate_Walker_RigRN.placeHolderList[2]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl.heelTwist" 
		"Ultimate_Walker_RigRN.placeHolderList[3]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl.ballTwist" 
		"Ultimate_Walker_RigRN.placeHolderList[4]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl.toeTwist" 
		"Ultimate_Walker_RigRN.placeHolderList[5]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl.translateX" 
		"Ultimate_Walker_RigRN.placeHolderList[6]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl.translateY" 
		"Ultimate_Walker_RigRN.placeHolderList[7]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl.translateZ" 
		"Ultimate_Walker_RigRN.placeHolderList[8]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl.rotateX" 
		"Ultimate_Walker_RigRN.placeHolderList[9]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl.rotateY" 
		"Ultimate_Walker_RigRN.placeHolderList[10]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl.rotateZ" 
		"Ultimate_Walker_RigRN.placeHolderList[11]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl.footRoll" 
		"Ultimate_Walker_RigRN.placeHolderList[12]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl.footBreak" 
		"Ultimate_Walker_RigRN.placeHolderList[13]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl.toeRoll" 
		"Ultimate_Walker_RigRN.placeHolderList[14]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_foot_ctrl.ikFkBlend" 
		"Ultimate_Walker_RigRN.placeHolderList[15]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_knee_pv_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_legPvCtrlGrp_space_grp|Ultimate_Walker_Rig:walker_lf_knee_pv_ctrl.translateX" 
		"Ultimate_Walker_RigRN.placeHolderList[16]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_knee_pv_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_legPvCtrlGrp_space_grp|Ultimate_Walker_Rig:walker_lf_knee_pv_ctrl.translateY" 
		"Ultimate_Walker_RigRN.placeHolderList[17]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_knee_pv_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_legPvCtrlGrp_space_grp|Ultimate_Walker_Rig:walker_lf_knee_pv_ctrl.translateZ" 
		"Ultimate_Walker_RigRN.placeHolderList[18]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_knee_pv_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_legPvCtrlGrp_space_grp|Ultimate_Walker_Rig:walker_lf_knee_pv_ctrl.lfLegIkCtrl" 
		"Ultimate_Walker_RigRN.placeHolderList[19]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl.pvControl" 
		"Ultimate_Walker_RigRN.placeHolderList[20]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl.legTwist" 
		"Ultimate_Walker_RigRN.placeHolderList[21]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl.heelTwist" 
		"Ultimate_Walker_RigRN.placeHolderList[22]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl.ballTwist" 
		"Ultimate_Walker_RigRN.placeHolderList[23]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl.toeTwist" 
		"Ultimate_Walker_RigRN.placeHolderList[24]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl.translateX" 
		"Ultimate_Walker_RigRN.placeHolderList[25]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl.translateY" 
		"Ultimate_Walker_RigRN.placeHolderList[26]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl.translateZ" 
		"Ultimate_Walker_RigRN.placeHolderList[27]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl.rotateX" 
		"Ultimate_Walker_RigRN.placeHolderList[28]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl.rotateY" 
		"Ultimate_Walker_RigRN.placeHolderList[29]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl.rotateZ" 
		"Ultimate_Walker_RigRN.placeHolderList[30]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl.footRoll" 
		"Ultimate_Walker_RigRN.placeHolderList[31]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl.footBreak" 
		"Ultimate_Walker_RigRN.placeHolderList[32]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl.toeRoll" 
		"Ultimate_Walker_RigRN.placeHolderList[33]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_foot_ctrl.ikFkBlend" 
		"Ultimate_Walker_RigRN.placeHolderList[34]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_knee_pv_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_legPvCtrlGrp_space_grp|Ultimate_Walker_Rig:walker_rt_knee_pv_ctrl.translateX" 
		"Ultimate_Walker_RigRN.placeHolderList[35]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_knee_pv_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_legPvCtrlGrp_space_grp|Ultimate_Walker_Rig:walker_rt_knee_pv_ctrl.translateY" 
		"Ultimate_Walker_RigRN.placeHolderList[36]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_knee_pv_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_legPvCtrlGrp_space_grp|Ultimate_Walker_Rig:walker_rt_knee_pv_ctrl.translateZ" 
		"Ultimate_Walker_RigRN.placeHolderList[37]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_knee_pv_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_legPvCtrlGrp_space_grp|Ultimate_Walker_Rig:walker_rt_knee_pv_ctrl.rtLegIkCtrl" 
		"Ultimate_Walker_RigRN.placeHolderList[38]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Body_Rig_Grp|Ultimate_Walker_Rig:CNT_Grp|Ultimate_Walker_Rig:CTRL_Top_Grp|Ultimate_Walker_Rig:CTRL_Top.translateY" 
		"Ultimate_Walker_RigRN.placeHolderList[39]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Body_Rig_Grp|Ultimate_Walker_Rig:CNT_Grp|Ultimate_Walker_Rig:CTRL_Main_Grp|Ultimate_Walker_Rig:CTRL_Main.translateX" 
		"Ultimate_Walker_RigRN.placeHolderList[40]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Body_Rig_Grp|Ultimate_Walker_Rig:CNT_Grp|Ultimate_Walker_Rig:CTRL_Main_Grp|Ultimate_Walker_Rig:CTRL_Main.translateY" 
		"Ultimate_Walker_RigRN.placeHolderList[41]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Body_Rig_Grp|Ultimate_Walker_Rig:CNT_Grp|Ultimate_Walker_Rig:CTRL_Main_Grp|Ultimate_Walker_Rig:CTRL_Main.translateZ" 
		"Ultimate_Walker_RigRN.placeHolderList[42]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Body_Rig_Grp|Ultimate_Walker_Rig:CNT_Grp|Ultimate_Walker_Rig:CTRL_Main_Grp|Ultimate_Walker_Rig:CTRL_Main.rotateX" 
		"Ultimate_Walker_RigRN.placeHolderList[43]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Body_Rig_Grp|Ultimate_Walker_Rig:CNT_Grp|Ultimate_Walker_Rig:CTRL_Main_Grp|Ultimate_Walker_Rig:CTRL_Main.rotateY" 
		"Ultimate_Walker_RigRN.placeHolderList[44]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Body_Rig_Grp|Ultimate_Walker_Rig:CNT_Grp|Ultimate_Walker_Rig:CTRL_Main_Grp|Ultimate_Walker_Rig:CTRL_Main.rotateZ" 
		"Ultimate_Walker_RigRN.placeHolderList[45]" "";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode animCurveTL -n "CTRL_Main_translateY";
	rename -uid "0B37EFC8-4C55-765A-6B26-6F963D8EAD25";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 -0.13441104219708588 4 -0.25042991905451384
		 7 -0.098536672764713895 10 0.024843030562707646 13 -0.134 16 -0.25 19 -0.029 22 -0.010085326558387474
		 25 -0.134;
createNode animCurveTU -n "walker_rt_heel_ik_ctrl_footRoll";
	rename -uid "48AE718E-42BA-A96F-A161-338F31FFFC8A";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 -22.1 4 0 7 0 10 23.900000000000002 13 30.8
		 16 51.8 19 51.8 22 -5.6 23 -14.129629629629834 25 -22.1;
	setAttr -s 10 ".kit[8:9]"  18 9;
	setAttr -s 10 ".kot[8:9]"  18 9;
createNode animCurveTU -n "walker_rt_heel_ik_ctrl_footBreak";
	rename -uid "18B282E0-47D5-2747-2F0E-93AB47478A34";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  1 55 4 55 7 55 10 55 13 55 16 55 17 0 19 0
		 20 -18.1 22 0 23 1.6088888888889041 25 0;
	setAttr -s 12 ".kit[6:11]"  18 9 18 9 18 9;
	setAttr -s 12 ".kot[6:11]"  18 9 18 9 18 9;
createNode animCurveTL -n "walker_rt_heel_ik_ctrl_translateY";
	rename -uid "73F84650-4604-19A4-ACE8-7DADE9EE1128";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  1 -0.032844329404068111 4 -0.032844329404068111
		 7 -0.032844329404068111 10 -0.032844329404068111 13 0.014 16 0.014 17 0.044866278916252972
		 19 0.424 20 0.34651464858356495 22 0.561 23 0.41726536457034968 25 -0.033;
	setAttr -s 12 ".kit[6:11]"  18 9 18 9 18 9;
	setAttr -s 12 ".kot[6:11]"  18 9 18 9 18 9;
createNode animCurveTL -n "walker_rt_heel_ik_ctrl_translateZ";
	rename -uid "382DB072-4054-C6D7-19EF-C0BE0DC2FF33";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  1 0.93162235471218269 4 0.61918437823016181
		 7 0.083354264633682618 10 -0.60649351910422 13 -1.048 16 -1.182 17 -1.3389538407884312
		 19 -0.674 20 0.065355093640077133 22 1.2469971625518974 23 1.3032964725313483 25 0.932;
	setAttr -s 12 ".kit[6:11]"  18 9 18 9 18 9;
	setAttr -s 12 ".kot[6:11]"  18 9 18 9 18 9;
createNode animCurveTL -n "CTRL_Main_translateX";
	rename -uid "C7066CC4-4330-BCC2-3DFA-04B1569F5066";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 4 0 7 0 10 0 13 0 16 0 19 0 22 0 25 0;
createNode animCurveTL -n "CTRL_Main_translateZ";
	rename -uid "CDE1AEBB-4EFA-9CE4-A0EE-C19D62F27567";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 4 -0.17789193708877143 7 0 10 0.077341376934980999
		 13 0 16 -0.178 19 0 22 0.077 25 0;
createNode animCurveTL -n "walker_lf_heel_ik_ctrl_translateX";
	rename -uid "6C08E794-44CF-8039-514E-FA8D32038BE7";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 4 0 7 0 10 0 13 0 16 -1.4411479270790191e-17
		 19 0 22 0 25 0;
createNode animCurveTL -n "walker_lf_heel_ik_ctrl_translateY";
	rename -uid "13D4F3E5-4F30-23A0-B6ED-2DB871DE2E28";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 0.01384857339934753 4 0.01384857339934753
		 5 -0.12826695488449441 7 0.42437690689486068 10 0.56052138375433547 13 -0.033 16 -0.033
		 19 -0.033 22 -0.033 25 0.014;
	setAttr -s 10 ".kit[2:9]"  18 9 9 9 9 9 9 9;
	setAttr -s 10 ".kot[2:9]"  18 9 9 9 9 9 9 9;
createNode animCurveTL -n "walker_lf_heel_ik_ctrl_translateZ";
	rename -uid "E4001EFD-400A-2C59-7AEA-66BA9EE83B26";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 -1.0483909399442253 4 -1.1822588747797187
		 5 -1.3924710652937988 7 -0.67356072240484344 10 1.1035140832048467 13 0.932 16 0.66232134129755604
		 19 -0.203 22 -0.606 25 -1.048;
	setAttr -s 10 ".kit[2:9]"  18 9 9 9 9 9 9 9;
	setAttr -s 10 ".kot[2:9]"  18 9 9 9 9 9 9 9;
createNode animCurveTL -n "walker_lf_knee_pv_ctrl_translateX";
	rename -uid "EE1AEF97-44B6-7C14-FFCA-858E56CACD29";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 7 0 10 0 13 0 16 0 19 0 22 0 25 0;
createNode animCurveTL -n "walker_lf_knee_pv_ctrl_translateY";
	rename -uid "47E92640-4F4E-9745-5528-DB8CCB931C7B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 7 0 10 0 13 0 16 0 19 0 22 0 25 0;
createNode animCurveTL -n "walker_lf_knee_pv_ctrl_translateZ";
	rename -uid "4A437AF7-479A-F5DA-5F6A-DF9DFA35253B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 7 0 10 0 13 0 16 0 19 0 22 0 25 0;
createNode animCurveTL -n "walker_rt_heel_ik_ctrl_translateX";
	rename -uid "2632AB96-48E3-8E56-0292-7A95ED0833ED";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 0 4 -1.307049462830552e-16 7 -7.5901357066490771e-17
		 10 0 13 0 16 0 19 0 22 1.751210174063348e-17 23 1.2989572881585577e-16 25 0;
	setAttr -s 10 ".kit[8:9]"  18 9;
	setAttr -s 10 ".kot[8:9]"  18 9;
createNode animCurveTL -n "walker_rt_knee_pv_ctrl_translateX";
	rename -uid "9E6BBA20-4D4F-D09F-A56B-A5A5E6D854B9";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 7 0 10 0 13 0 16 0 19 0 22 0 25 0;
createNode animCurveTL -n "walker_rt_knee_pv_ctrl_translateY";
	rename -uid "E654CE8C-4BDF-386A-FFE4-63B33D62F856";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 7 0 10 0 13 0 16 0 19 0 22 0 25 0;
createNode animCurveTL -n "walker_rt_knee_pv_ctrl_translateZ";
	rename -uid "A5ABA8C6-4FA4-D1AD-20B9-01BC9278EFB4";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 7 0 10 0 13 0 16 0 19 0 22 0 25 0;
createNode animCurveTA -n "walker_rt_heel_ik_ctrl_rotateX";
	rename -uid "73DC0B27-425E-CEFD-3F27-33A359985121";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 0 4 0 7 0 10 0 13 0 16 0 19 0 22 0 23 0
		 25 0;
	setAttr -s 10 ".kit[8:9]"  18 9;
	setAttr -s 10 ".kot[8:9]"  18 9;
createNode animCurveTA -n "walker_rt_heel_ik_ctrl_rotateY";
	rename -uid "4508D4E9-4998-3E3B-2AF2-3FBBDA8C957D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 0 4 0 7 0 10 0 13 0 16 0 19 0 22 0 23 0
		 25 0;
	setAttr -s 10 ".kit[8:9]"  18 9;
	setAttr -s 10 ".kot[8:9]"  18 9;
createNode animCurveTA -n "walker_rt_heel_ik_ctrl_rotateZ";
	rename -uid "44E85017-4BF2-A93B-B48C-2D959AFDD086";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 0 4 0 7 0 10 0 13 0 16 0 19 0 22 0 23 0
		 25 0;
	setAttr -s 10 ".kit[8:9]"  18 9;
	setAttr -s 10 ".kot[8:9]"  18 9;
createNode animCurveTU -n "walker_rt_heel_ik_ctrl_pvControl";
	rename -uid "11CA90B1-46B5-5BE6-FC2E-3FA8FC028C58";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 1 4 1 7 1 10 1 13 1 16 1 19 1 22 1 23 1
		 25 1;
	setAttr -s 10 ".kot[8:9]"  5 9;
createNode animCurveTU -n "walker_rt_heel_ik_ctrl_toeRoll";
	rename -uid "DD71F9DE-4D71-BB1D-4829-4DAD4233D80D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 0 4 0 7 0 10 0 13 0 16 0 19 0 22 0 23 0
		 25 0;
	setAttr -s 10 ".kit[8:9]"  18 9;
	setAttr -s 10 ".kot[8:9]"  18 9;
createNode animCurveTU -n "walker_rt_heel_ik_ctrl_legTwist";
	rename -uid "23CF9780-4021-2E27-7894-9D9486EE532B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 0 4 0 7 0 10 0 13 0 16 0 19 0 22 0 23 0
		 25 0;
	setAttr -s 10 ".kit[8:9]"  18 9;
	setAttr -s 10 ".kot[8:9]"  18 9;
createNode animCurveTU -n "walker_rt_heel_ik_ctrl_heelTwist";
	rename -uid "58426B22-4578-BC28-2B75-1F8E241BFBCC";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 0 4 0 7 0 10 0 13 0 16 0 19 0 22 0 23 0
		 25 0;
	setAttr -s 10 ".kit[8:9]"  18 9;
	setAttr -s 10 ".kot[8:9]"  18 9;
createNode animCurveTU -n "walker_rt_heel_ik_ctrl_ballTwist";
	rename -uid "C8C9E653-4CF2-8FAB-B23E-ABBBC5B4E139";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 0 4 0 7 0 10 0 13 0 16 0 19 0 22 0 23 0
		 25 0;
	setAttr -s 10 ".kit[8:9]"  18 9;
	setAttr -s 10 ".kot[8:9]"  18 9;
createNode animCurveTU -n "walker_rt_heel_ik_ctrl_toeTwist";
	rename -uid "FE0BD51B-4E82-99DF-B31F-10AA54079681";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 0 4 0 7 0 10 0 13 0 16 0 19 0 22 0 23 0
		 25 0;
	setAttr -s 10 ".kit[8:9]"  18 9;
	setAttr -s 10 ".kot[8:9]"  18 9;
createNode animCurveTU -n "walker_lf_foot_ctrl_ikFkBlend";
	rename -uid "1794548D-4C81-2D6A-6E86-8F8A6AC1EEB6";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 7 1 10 1 13 1 16 1 19 1 22 1 25 1;
createNode animCurveTA -n "walker_lf_heel_ik_ctrl_rotateX";
	rename -uid "C0DFBEBF-43EA-FA82-83F0-CC9C21627630";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 4 0 7 0 10 0 13 0 16 0 19 0 22 0 25 0;
createNode animCurveTA -n "walker_lf_heel_ik_ctrl_rotateY";
	rename -uid "837B7F18-466F-9257-9037-3BA267F704E9";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 4 0 7 0 10 0 13 0 16 0 19 0 22 0 25 0;
createNode animCurveTA -n "walker_lf_heel_ik_ctrl_rotateZ";
	rename -uid "371726A7-44FD-2A3E-E6E0-D1915C86EAF9";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 4 0 7 0 10 0 13 0 16 0 19 0 22 0 25 0;
createNode animCurveTU -n "walker_lf_heel_ik_ctrl_pvControl";
	rename -uid "A59DE08B-4814-99DC-20BC-81A4D6EFCDC6";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 1 4 1 7 1 10 1 13 1 16 1 19 1 22 1 25 1;
createNode animCurveTU -n "walker_lf_heel_ik_ctrl_footRoll";
	rename -uid "05212895-441D-C69F-6A8A-22B2467A03AD";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 30.800000000000004 4 51.800000000000004
		 7 51.800000000000004 10 -5.6 13 -22.1 16 0 19 0 22 23.9 25 30.8;
createNode animCurveTU -n "walker_lf_heel_ik_ctrl_footBreak";
	rename -uid "82F4CAC7-4ADA-5DCD-75D6-9DABFD0F757F";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 55 4 55 5 0 6 -11.8 7 0 10 0 13 0 16 0
		 19 55 22 55 25 55;
	setAttr -s 11 ".kit[2:10]"  18 18 9 9 9 9 9 9 
		9;
	setAttr -s 11 ".kot[2:10]"  18 18 9 9 9 9 9 9 
		9;
createNode animCurveTU -n "walker_lf_heel_ik_ctrl_toeRoll";
	rename -uid "2B0E5906-4A35-D7AC-5B38-4C94062E95EA";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 4 0 7 0 10 0 13 0 16 0 19 0 22 0 25 0;
createNode animCurveTU -n "walker_lf_heel_ik_ctrl_legTwist";
	rename -uid "D53A5C83-4D7C-E90C-8E02-B19653C93399";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 4 0 7 0 10 0 13 0 16 0 19 0 22 0 25 0;
createNode animCurveTU -n "walker_lf_heel_ik_ctrl_heelTwist";
	rename -uid "09624902-4849-651A-770E-0E9944DFEFD6";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 4 0 7 0 10 0 13 0 16 0 19 0 22 0 25 0;
createNode animCurveTU -n "walker_lf_heel_ik_ctrl_ballTwist";
	rename -uid "B098035A-4F23-08A0-9190-DA8F262BA85C";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 4 0 7 0 10 0 13 0 16 0 19 0 22 0 25 0;
createNode animCurveTU -n "walker_lf_heel_ik_ctrl_toeTwist";
	rename -uid "B577B619-43A2-BEBD-9D92-E185046C7392";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 4 0 7 0 10 0 13 0 16 0 19 0 22 0 25 0;
createNode animCurveTU -n "walker_rt_knee_pv_ctrl_rtLegIkCtrl";
	rename -uid "308251A5-4ED2-E7AB-7B3E-A4B9FC743745";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 7 0 10 0 13 0 16 0 19 0 22 0 25 0;
createNode animCurveTU -n "walker_rt_foot_ctrl_ikFkBlend";
	rename -uid "A6B9781B-4319-C8B6-1D29-718D29EF243E";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 7 1 10 1 13 1 16 1 19 1 22 1 25 1;
createNode animCurveTU -n "walker_lf_knee_pv_ctrl_lfLegIkCtrl";
	rename -uid "C2D7F5DC-4340-E953-A42D-39AC77C44337";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 7 0 10 0 13 0 16 0 19 0 22 0 25 0;
createNode animCurveTL -n "CTRL_Top_translateY";
	rename -uid "C13EA19F-432D-88CB-CA5B-07912CCD0853";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 6 0 9 0 12 0 15 0 18 0;
createNode animCurveTA -n "CTRL_Main_rotateX";
	rename -uid "C0368E92-4F3E-3868-A0BB-35B33579ABF7";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 4 0 7 0 10 0 13 0 16 0 19 0 22 0 25 0;
createNode animCurveTA -n "CTRL_Main_rotateY";
	rename -uid "CA84F21F-4AFE-0E2E-224F-09856CC1DD59";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 4 0 7 0 10 0 13 0 16 0 19 0 22 0 25 0;
createNode animCurveTA -n "CTRL_Main_rotateZ";
	rename -uid "7BB4060E-4ADD-0F78-A819-6DB2E0F03D20";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 0 3 0 4 0 7 0 10 0 13 0 16 0 19 0 22 0
		 25 0;
	setAttr -s 10 ".kit[2:9]"  18 9 9 9 9 9 9 9;
	setAttr -s 10 ".kot[2:9]"  18 9 9 9 9 9 9 9;
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "9C182D3D-4162-3EC2-720A-3FBD95F01244";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -785.71425449280639 -85.714282308306153 ;
	setAttr ".tgi[0].vh" -type "double2" 757.14282705670462 86.904758451477079 ;
createNode animCurveTA -n "copytopoints1_0_rotateX";
	rename -uid "3AB0E86F-434C-1744-7A06-3FA9FBB33F64";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 35 25;
createNode polySphere -n "polySphere1";
	rename -uid "D7F5411A-4C59-EABA-5866-FD881A29888C";
	setAttr ".sa" 15;
	setAttr ".sh" 15;
createNode animCurveTA -n "Globe_Core_rotateX";
	rename -uid "CF00318C-41B9-03A1-FCEE-1F8E23A3E258";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 35 25;
createNode objectSet -n "group1";
	rename -uid "07CAC088-4E6D-4535-114C-E2B9A3FCB2C3";
	setAttr ".ihi" 0;
	setAttr -s 14 ".dsm";
	setAttr -s 14 ".gn";
createNode groupId -n "groupId1";
	rename -uid "6A437608-4CCE-CD50-70B6-87A0725FA0F0";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	rename -uid "B9A66182-4F00-9AE8-51C9-EBAB22D1602F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[591:598]" "f[643:645]";
createNode objectSet -n "group2";
	rename -uid "589D45C6-43B9-2B54-ADE0-E2B15124DA3D";
	setAttr ".ihi" 0;
	setAttr -s 14 ".dsm";
	setAttr -s 14 ".gn";
createNode groupId -n "groupId2";
	rename -uid "C5BEE8F9-455E-C072-40E2-90910C43DF6D";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "9C49A0FB-443B-2C85-6AF5-2AA21BF61E1A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[643:645]";
createNode groupId -n "groupId3";
	rename -uid "3F46E5DD-4612-3C9E-1124-1294ED7D40F7";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	rename -uid "79E73C9E-4612-B5D2-3E31-38B34A9E03C9";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[591:598]" "f[643:645]";
createNode groupId -n "groupId4";
	rename -uid "3297B5B8-4453-3E86-C84A-CE9A91448DD6";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	rename -uid "45E27703-427C-AC50-0FA1-89B80D0EBAA2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[643:645]";
createNode groupId -n "groupId5";
	rename -uid "A443F239-4ABC-114A-B0F6-E8B4A90D2B11";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts5";
	rename -uid "F5CB655C-48A6-4C2C-F8A1-05BE980AFD9F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[591:598]" "f[643:645]";
createNode groupId -n "groupId6";
	rename -uid "0FA13C39-4D7A-0DE7-F00D-96980B514614";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts6";
	rename -uid "616F9858-4EE9-E039-5E8B-AE99BF96211E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[643:645]";
createNode groupId -n "groupId7";
	rename -uid "DAB5E5DB-4213-5249-F4EE-DCB66CAEA75A";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts7";
	rename -uid "1DEC3483-4BCE-DBCB-038E-D58ADDD1E143";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[591:598]" "f[643:645]";
createNode groupId -n "groupId8";
	rename -uid "64A39A14-4C48-4167-C68F-35A71AB9AF52";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts8";
	rename -uid "6B374524-4308-4BE5-B00D-F0B2F2111698";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[643:645]";
createNode groupId -n "groupId9";
	rename -uid "EEC7DCFD-4AA8-D962-E403-E9A6BDCBA072";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts9";
	rename -uid "6105B600-461F-F22D-500E-2FB3FCF8E863";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[591:598]" "f[643:645]";
createNode groupId -n "groupId10";
	rename -uid "60B7EFC3-44C3-D780-A017-FB965783E43C";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts10";
	rename -uid "A9C50D89-475D-4D14-3EA0-CBB3F8D5C8B6";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[643:645]";
createNode transformGeometry -n "transformGeometry1";
	rename -uid "1630CF1C-4251-678E-21E6-978DCC856C14";
	setAttr ".txf" -type "matrix" 0.95134606566976809 0.30812442833156417 0 0 -0.30812442833156417 0.95134606566976809 0 0
		 0 0 1 0 -8.0509461680202516 -1.7666329853907601 -0.13604536719667415 1;
createNode transformGeometry -n "transformGeometry2";
	rename -uid "FAD61E02-4D1B-926F-BDC7-FDA9D588B563";
	setAttr ".txf" -type "matrix" 0.96339579562490574 0.26808308594958924 0 0 -0.26808308594958924 0.96339579562490574 0 0
		 0 0 1 0 -5.9038305694706281 -1.6942923174747488 5.3716834376374916 1;
createNode transformGeometry -n "transformGeometry3";
	rename -uid "812D1806-48B8-E42E-4EBD-009C0980690A";
	setAttr ".txf" -type "matrix" 0.83484600124122621 -0.035082983673331257 -0.54936448599095966 0
		 -0.10622285982313982 0.96894464510245515 -0.22330019878690419 0 0.54013781413869566 0.24477634482084684 0.80519294753097392 0
		 1.4134810172798975 -0.53233909606933594 -1.4678178288080721 1;
createNode transformGeometry -n "transformGeometry4";
	rename -uid "02A82F03-4D5D-08B4-169F-8F86B8434F3B";
	setAttr ".txf" -type "matrix" 0.23107691247758866 0 0.97293548630925419 0 0 1 0 0
		 -0.97293548630925419 0 0.23107691247758866 0 -3.9645981788635254 -0.53233909606933594 -2.7500910758972168 1;
createNode transformGeometry -n "transformGeometry5";
	rename -uid "88E904D6-4ECA-4E7E-9F0F-AEA2F993F265";
	setAttr ".txf" -type "matrix" 0.97319777190960777 0.21692996328346922 -0.076337983861297851 0
		 -0.22996977355768969 0.91801524027219705 -0.32305095863935362 0 -6.2450045135165068e-17 0.33194790202351498 0.94329772094614273 0
		 -4.0365325916528967 -1.4438003301620483 -2.241227995616569 1;
createNode transformGeometry -n "transformGeometry6";
	rename -uid "B5B40884-44AC-977C-8072-8A8EDB05E530";
	setAttr ".txf" -type "matrix" 0.3759069662680764 0 -0.9266574084909327 0 0 1 0 0
		 0.9266574084909327 0 0.3759069662680764 0 -3.9645986557006836 0 2.8804492950439453 1;
createNode groupParts -n "groupParts11";
	rename -uid "96AD525F-478F-B7DB-4D47-C28C9D80962A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[591:598]" "f[643:645]";
createNode groupId -n "groupId11";
	rename -uid "60F94404-4119-C602-B951-1981C744BF22";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts12";
	rename -uid "E97D8AFD-48A1-7B4E-5763-B59548D04D8A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[643:645]";
createNode groupId -n "groupId12";
	rename -uid "51C9FC4D-481F-23E4-0222-31A5E0D273B5";
	setAttr ".ihi" 0;
createNode transformGeometry -n "transformGeometry7";
	rename -uid "7EB14239-4253-9FDA-00CA-F8B2563BCEB8";
	setAttr ".txf" -type "matrix" 0.97353396437343231 0.22854238165239432 0 0 -0.2256814009041459 0.96134689469427481 -0.15773412233127349 0
		 -0.036048931985439354 0.15355952543012863 0.98748161838708814 0 -7.1910591125488281 -1.9996469284961829 -5.3107191946462819 1;
createNode groupId -n "groupId13";
	rename -uid "7759CCE0-4402-3317-3118-A986FE31F491";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts13";
	rename -uid "55BAE7FC-4B6F-5E43-B635-688A96B4DD0E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[591:598]" "f[643:645]";
createNode groupId -n "groupId14";
	rename -uid "38FFF8F9-4074-5BE1-6382-D8A2CF236289";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts14";
	rename -uid "B267E323-497B-DB7C-CF93-CAA0C6368381";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[643:645]";
createNode groupId -n "groupId15";
	rename -uid "19C91549-4B68-D896-4E68-25A38B77D291";
	setAttr ".ihi" 0;
createNode groupId -n "groupId16";
	rename -uid "C7BA0CAA-434B-BF6A-B1E5-4CB1BEBE5137";
	setAttr ".ihi" 0;
createNode groupId -n "groupId17";
	rename -uid "590343E0-4B81-FCA9-7A90-B0B41273FD9D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId18";
	rename -uid "023AE9BE-4383-E723-71F2-42954860756C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId19";
	rename -uid "FB40D41D-49A7-26D5-4446-F2B849A349D5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId20";
	rename -uid "58112424-4157-C2B4-0C21-26A098F40756";
	setAttr ".ihi" 0;
createNode groupId -n "groupId21";
	rename -uid "5B2E8726-4F8F-2D64-0F95-35A151BFB895";
	setAttr ".ihi" 0;
createNode groupId -n "groupId22";
	rename -uid "46DA7342-4B96-C755-2E4C-FCA78FF64927";
	setAttr ".ihi" 0;
createNode groupId -n "groupId23";
	rename -uid "778A9A87-4E69-379F-6F66-3DBA007F87C2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId24";
	rename -uid "1DABD436-48B0-D665-6F34-2CBD6F9DF6E5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId25";
	rename -uid "2A7809BD-49F2-D5D1-53DA-BFB7FB79FEFB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId26";
	rename -uid "912C6CC8-4605-50BB-3038-9D99E644D387";
	setAttr ".ihi" 0;
createNode groupId -n "groupId27";
	rename -uid "D421095E-4D1E-71C4-1F76-B2A34A0DC493";
	setAttr ".ihi" 0;
createNode groupId -n "groupId28";
	rename -uid "EF046B32-4621-1B7C-5FA3-C4B88CDAAF5A";
	setAttr ".ihi" 0;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
	setAttr ".rtfm" 1;
select -ne :renderPartition;
	setAttr -s 4 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 7 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 2 ".u";
select -ne :defaultRenderingList1;
	setAttr -s 2 ".r";
select -ne :standardSurface1;
	setAttr ".bc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
	setAttr ".sr" 0.5;
select -ne :initialShadingGroup;
	setAttr -s 17 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
	setAttr ".dss" -type "string" "standardSurface1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
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
connectAttr "walker_lf_heel_ik_ctrl_pvControl.o" "Ultimate_Walker_RigRN.phl[1]";
connectAttr "walker_lf_heel_ik_ctrl_legTwist.o" "Ultimate_Walker_RigRN.phl[2]";
connectAttr "walker_lf_heel_ik_ctrl_heelTwist.o" "Ultimate_Walker_RigRN.phl[3]";
connectAttr "walker_lf_heel_ik_ctrl_ballTwist.o" "Ultimate_Walker_RigRN.phl[4]";
connectAttr "walker_lf_heel_ik_ctrl_toeTwist.o" "Ultimate_Walker_RigRN.phl[5]";
connectAttr "walker_lf_heel_ik_ctrl_translateX.o" "Ultimate_Walker_RigRN.phl[6]"
		;
connectAttr "walker_lf_heel_ik_ctrl_translateY.o" "Ultimate_Walker_RigRN.phl[7]"
		;
connectAttr "walker_lf_heel_ik_ctrl_translateZ.o" "Ultimate_Walker_RigRN.phl[8]"
		;
connectAttr "walker_lf_heel_ik_ctrl_rotateX.o" "Ultimate_Walker_RigRN.phl[9]";
connectAttr "walker_lf_heel_ik_ctrl_rotateY.o" "Ultimate_Walker_RigRN.phl[10]";
connectAttr "walker_lf_heel_ik_ctrl_rotateZ.o" "Ultimate_Walker_RigRN.phl[11]";
connectAttr "walker_lf_heel_ik_ctrl_footRoll.o" "Ultimate_Walker_RigRN.phl[12]";
connectAttr "walker_lf_heel_ik_ctrl_footBreak.o" "Ultimate_Walker_RigRN.phl[13]"
		;
connectAttr "walker_lf_heel_ik_ctrl_toeRoll.o" "Ultimate_Walker_RigRN.phl[14]";
connectAttr "walker_lf_foot_ctrl_ikFkBlend.o" "Ultimate_Walker_RigRN.phl[15]";
connectAttr "walker_lf_knee_pv_ctrl_translateX.o" "Ultimate_Walker_RigRN.phl[16]"
		;
connectAttr "walker_lf_knee_pv_ctrl_translateY.o" "Ultimate_Walker_RigRN.phl[17]"
		;
connectAttr "walker_lf_knee_pv_ctrl_translateZ.o" "Ultimate_Walker_RigRN.phl[18]"
		;
connectAttr "walker_lf_knee_pv_ctrl_lfLegIkCtrl.o" "Ultimate_Walker_RigRN.phl[19]"
		;
connectAttr "walker_rt_heel_ik_ctrl_pvControl.o" "Ultimate_Walker_RigRN.phl[20]"
		;
connectAttr "walker_rt_heel_ik_ctrl_legTwist.o" "Ultimate_Walker_RigRN.phl[21]";
connectAttr "walker_rt_heel_ik_ctrl_heelTwist.o" "Ultimate_Walker_RigRN.phl[22]"
		;
connectAttr "walker_rt_heel_ik_ctrl_ballTwist.o" "Ultimate_Walker_RigRN.phl[23]"
		;
connectAttr "walker_rt_heel_ik_ctrl_toeTwist.o" "Ultimate_Walker_RigRN.phl[24]";
connectAttr "walker_rt_heel_ik_ctrl_translateX.o" "Ultimate_Walker_RigRN.phl[25]"
		;
connectAttr "walker_rt_heel_ik_ctrl_translateY.o" "Ultimate_Walker_RigRN.phl[26]"
		;
connectAttr "walker_rt_heel_ik_ctrl_translateZ.o" "Ultimate_Walker_RigRN.phl[27]"
		;
connectAttr "walker_rt_heel_ik_ctrl_rotateX.o" "Ultimate_Walker_RigRN.phl[28]";
connectAttr "walker_rt_heel_ik_ctrl_rotateY.o" "Ultimate_Walker_RigRN.phl[29]";
connectAttr "walker_rt_heel_ik_ctrl_rotateZ.o" "Ultimate_Walker_RigRN.phl[30]";
connectAttr "walker_rt_heel_ik_ctrl_footRoll.o" "Ultimate_Walker_RigRN.phl[31]";
connectAttr "walker_rt_heel_ik_ctrl_footBreak.o" "Ultimate_Walker_RigRN.phl[32]"
		;
connectAttr "walker_rt_heel_ik_ctrl_toeRoll.o" "Ultimate_Walker_RigRN.phl[33]";
connectAttr "walker_rt_foot_ctrl_ikFkBlend.o" "Ultimate_Walker_RigRN.phl[34]";
connectAttr "walker_rt_knee_pv_ctrl_translateX.o" "Ultimate_Walker_RigRN.phl[35]"
		;
connectAttr "walker_rt_knee_pv_ctrl_translateY.o" "Ultimate_Walker_RigRN.phl[36]"
		;
connectAttr "walker_rt_knee_pv_ctrl_translateZ.o" "Ultimate_Walker_RigRN.phl[37]"
		;
connectAttr "walker_rt_knee_pv_ctrl_rtLegIkCtrl.o" "Ultimate_Walker_RigRN.phl[38]"
		;
connectAttr "CTRL_Top_translateY.o" "Ultimate_Walker_RigRN.phl[39]";
connectAttr "CTRL_Main_translateX.o" "Ultimate_Walker_RigRN.phl[40]";
connectAttr "CTRL_Main_translateY.o" "Ultimate_Walker_RigRN.phl[41]";
connectAttr "CTRL_Main_translateZ.o" "Ultimate_Walker_RigRN.phl[42]";
connectAttr "CTRL_Main_rotateX.o" "Ultimate_Walker_RigRN.phl[43]";
connectAttr "CTRL_Main_rotateY.o" "Ultimate_Walker_RigRN.phl[44]";
connectAttr "CTRL_Main_rotateZ.o" "Ultimate_Walker_RigRN.phl[45]";
connectAttr ":time1.o" "hunte__dev__Walking_Globe_subnet__1_01.inTime";
connectAttr "hunte__dev__Walking_Globe_subnet__1_01.outputObjects[0].outputObjectTranslate" "Walking_Globe.t"
		;
connectAttr "hunte__dev__Walking_Globe_subnet__1_01.outputObjects[0].outputObjectRotate" "Walking_Globe.r"
		;
connectAttr "hunte__dev__Walking_Globe_subnet__1_01.outputObjects[0].outputObjectScale" "Walking_Globe.s"
		;
connectAttr "copytopoints1_0_rotateX.o" "copytopoints1_0.rx";
connectAttr "hunte__dev__Walking_Globe_subnet__1_01.outputObjects[0].outputGeos[0].outputParts[0].outputPartMeshData" "copytopoints1_0Shape.i"
		;
connectAttr "Globe_Core_rotateX.o" "Globe_Core.rx";
connectAttr "polySphere1.out" "Globe_CoreShape.i";
connectAttr ":time1.o" "hunte__dev__Tree_subnet__1_05.inTime";
connectAttr "hunte__dev__Tree_subnet__1_05.outputObjects[0].outputObjectTranslate" "|Globe_Core|hunte__dev__Tree_subnet__1_05|tube_object1.t"
		;
connectAttr "hunte__dev__Tree_subnet__1_05.outputObjects[0].outputObjectRotate" "|Globe_Core|hunte__dev__Tree_subnet__1_05|tube_object1.r"
		;
connectAttr "hunte__dev__Tree_subnet__1_05.outputObjects[0].outputObjectScale" "|Globe_Core|hunte__dev__Tree_subnet__1_05|tube_object1.s"
		;
connectAttr "transformGeometry1.og" "|Globe_Core|hunte__dev__Tree_subnet__1_05|tube_object1|lineartaper2_0|lineartaper2_0Shape.i"
		;
connectAttr "groupId9.id" "|Globe_Core|hunte__dev__Tree_subnet__1_05|tube_object1|lineartaper2_0|lineartaper2_0Shape.iog.og[0].gid"
		;
connectAttr "group1.mwc" "|Globe_Core|hunte__dev__Tree_subnet__1_05|tube_object1|lineartaper2_0|lineartaper2_0Shape.iog.og[0].gco"
		;
connectAttr "groupId10.id" "|Globe_Core|hunte__dev__Tree_subnet__1_05|tube_object1|lineartaper2_0|lineartaper2_0Shape.iog.og[1].gid"
		;
connectAttr "group2.mwc" "|Globe_Core|hunte__dev__Tree_subnet__1_05|tube_object1|lineartaper2_0|lineartaper2_0Shape.iog.og[1].gco"
		;
connectAttr "groupId23.id" "lineartaper2_5Shape.iog.og[0].gid";
connectAttr "group1.mwc" "lineartaper2_5Shape.iog.og[0].gco";
connectAttr "groupId24.id" "lineartaper2_5Shape.iog.og[1].gid";
connectAttr "group2.mwc" "lineartaper2_5Shape.iog.og[1].gco";
connectAttr ":time1.o" "hunte__dev__Tree_subnet__1_04.inTime";
connectAttr "hunte__dev__Tree_subnet__1_04.outputObjects[0].outputObjectTranslate" "|Globe_Core|hunte__dev__Tree_subnet__1_04|tube_object1.t"
		;
connectAttr "hunte__dev__Tree_subnet__1_04.outputObjects[0].outputObjectRotate" "|Globe_Core|hunte__dev__Tree_subnet__1_04|tube_object1.r"
		;
connectAttr "hunte__dev__Tree_subnet__1_04.outputObjects[0].outputObjectScale" "|Globe_Core|hunte__dev__Tree_subnet__1_04|tube_object1.s"
		;
connectAttr "transformGeometry2.og" "|Globe_Core|hunte__dev__Tree_subnet__1_04|tube_object1|lineartaper2_0|lineartaper2_0Shape.i"
		;
connectAttr "groupId7.id" "|Globe_Core|hunte__dev__Tree_subnet__1_04|tube_object1|lineartaper2_0|lineartaper2_0Shape.iog.og[0].gid"
		;
connectAttr "group1.mwc" "|Globe_Core|hunte__dev__Tree_subnet__1_04|tube_object1|lineartaper2_0|lineartaper2_0Shape.iog.og[0].gco"
		;
connectAttr "groupId8.id" "|Globe_Core|hunte__dev__Tree_subnet__1_04|tube_object1|lineartaper2_0|lineartaper2_0Shape.iog.og[1].gid"
		;
connectAttr "group2.mwc" "|Globe_Core|hunte__dev__Tree_subnet__1_04|tube_object1|lineartaper2_0|lineartaper2_0Shape.iog.og[1].gco"
		;
connectAttr "groupId21.id" "lineartaper2_4Shape.iog.og[0].gid";
connectAttr "group1.mwc" "lineartaper2_4Shape.iog.og[0].gco";
connectAttr "groupId22.id" "lineartaper2_4Shape.iog.og[1].gid";
connectAttr "group2.mwc" "lineartaper2_4Shape.iog.og[1].gco";
connectAttr ":time1.o" "hunte__dev__Tree_subnet__1_03.inTime";
connectAttr "hunte__dev__Tree_subnet__1_03.outputObjects[0].outputObjectTranslate" "|Globe_Core|hunte__dev__Tree_subnet__1_03|tube_object1.t"
		;
connectAttr "hunte__dev__Tree_subnet__1_03.outputObjects[0].outputObjectRotate" "|Globe_Core|hunte__dev__Tree_subnet__1_03|tube_object1.r"
		;
connectAttr "hunte__dev__Tree_subnet__1_03.outputObjects[0].outputObjectScale" "|Globe_Core|hunte__dev__Tree_subnet__1_03|tube_object1.s"
		;
connectAttr "transformGeometry6.og" "|Globe_Core|hunte__dev__Tree_subnet__1_03|tube_object1|lineartaper2_0|lineartaper2_0Shape.i"
		;
connectAttr "groupId5.id" "|Globe_Core|hunte__dev__Tree_subnet__1_03|tube_object1|lineartaper2_0|lineartaper2_0Shape.iog.og[0].gid"
		;
connectAttr "group1.mwc" "|Globe_Core|hunte__dev__Tree_subnet__1_03|tube_object1|lineartaper2_0|lineartaper2_0Shape.iog.og[0].gco"
		;
connectAttr "groupId6.id" "|Globe_Core|hunte__dev__Tree_subnet__1_03|tube_object1|lineartaper2_0|lineartaper2_0Shape.iog.og[1].gid"
		;
connectAttr "group2.mwc" "|Globe_Core|hunte__dev__Tree_subnet__1_03|tube_object1|lineartaper2_0|lineartaper2_0Shape.iog.og[1].gco"
		;
connectAttr "groupId19.id" "lineartaper2_3Shape.iog.og[0].gid";
connectAttr "group1.mwc" "lineartaper2_3Shape.iog.og[0].gco";
connectAttr "groupId20.id" "lineartaper2_3Shape.iog.og[1].gid";
connectAttr "group2.mwc" "lineartaper2_3Shape.iog.og[1].gco";
connectAttr ":time1.o" "hunte__dev__Tree_subnet__1_02.inTime";
connectAttr "hunte__dev__Tree_subnet__1_02.outputObjects[0].outputObjectTranslate" "|Globe_Core|hunte__dev__Tree_subnet__1_02|tube_object1.t"
		;
connectAttr "hunte__dev__Tree_subnet__1_02.outputObjects[0].outputObjectRotate" "|Globe_Core|hunte__dev__Tree_subnet__1_02|tube_object1.r"
		;
connectAttr "hunte__dev__Tree_subnet__1_02.outputObjects[0].outputObjectScale" "|Globe_Core|hunte__dev__Tree_subnet__1_02|tube_object1.s"
		;
connectAttr "transformGeometry4.og" "|Globe_Core|hunte__dev__Tree_subnet__1_02|tube_object1|lineartaper2_0|lineartaper2_0Shape.i"
		;
connectAttr "groupId3.id" "|Globe_Core|hunte__dev__Tree_subnet__1_02|tube_object1|lineartaper2_0|lineartaper2_0Shape.iog.og[0].gid"
		;
connectAttr "group1.mwc" "|Globe_Core|hunte__dev__Tree_subnet__1_02|tube_object1|lineartaper2_0|lineartaper2_0Shape.iog.og[0].gco"
		;
connectAttr "groupId4.id" "|Globe_Core|hunte__dev__Tree_subnet__1_02|tube_object1|lineartaper2_0|lineartaper2_0Shape.iog.og[1].gid"
		;
connectAttr "group2.mwc" "|Globe_Core|hunte__dev__Tree_subnet__1_02|tube_object1|lineartaper2_0|lineartaper2_0Shape.iog.og[1].gco"
		;
connectAttr "groupId15.id" "lineartaper2_1Shape.iog.og[0].gid";
connectAttr "group1.mwc" "lineartaper2_1Shape.iog.og[0].gco";
connectAttr "groupId16.id" "lineartaper2_1Shape.iog.og[1].gid";
connectAttr "group2.mwc" "lineartaper2_1Shape.iog.og[1].gco";
connectAttr ":time1.o" "hunte__dev__Tree_subnet__1_01.inTime";
connectAttr "hunte__dev__Tree_subnet__1_01.outputObjects[0].outputObjectTranslate" "|Globe_Core|hunte__dev__Tree_subnet__1_01|tube_object1.t"
		;
connectAttr "hunte__dev__Tree_subnet__1_01.outputObjects[0].outputObjectRotate" "|Globe_Core|hunte__dev__Tree_subnet__1_01|tube_object1.r"
		;
connectAttr "hunte__dev__Tree_subnet__1_01.outputObjects[0].outputObjectScale" "|Globe_Core|hunte__dev__Tree_subnet__1_01|tube_object1.s"
		;
connectAttr "transformGeometry5.og" "|Globe_Core|hunte__dev__Tree_subnet__1_01|tube_object1|lineartaper2_0|lineartaper2_0Shape.i"
		;
connectAttr "groupId1.id" "|Globe_Core|hunte__dev__Tree_subnet__1_01|tube_object1|lineartaper2_0|lineartaper2_0Shape.iog.og[0].gid"
		;
connectAttr "group1.mwc" "|Globe_Core|hunte__dev__Tree_subnet__1_01|tube_object1|lineartaper2_0|lineartaper2_0Shape.iog.og[0].gco"
		;
connectAttr "groupId2.id" "|Globe_Core|hunte__dev__Tree_subnet__1_01|tube_object1|lineartaper2_0|lineartaper2_0Shape.iog.og[1].gid"
		;
connectAttr "group2.mwc" "|Globe_Core|hunte__dev__Tree_subnet__1_01|tube_object1|lineartaper2_0|lineartaper2_0Shape.iog.og[1].gco"
		;
connectAttr "groupId17.id" "lineartaper2_2Shape.iog.og[0].gid";
connectAttr "group1.mwc" "lineartaper2_2Shape.iog.og[0].gco";
connectAttr "groupId18.id" "lineartaper2_2Shape.iog.og[1].gid";
connectAttr "group2.mwc" "lineartaper2_2Shape.iog.og[1].gco";
connectAttr ":time1.o" "hunte__dev__Tree_subnet__1_06.inTime";
connectAttr "hunte__dev__Tree_subnet__1_06.outputObjects[0].outputObjectTranslate" "|Globe_Core|hunte__dev__Tree_subnet__1_06|tube_object1.t"
		;
connectAttr "hunte__dev__Tree_subnet__1_06.outputObjects[0].outputObjectRotate" "|Globe_Core|hunte__dev__Tree_subnet__1_06|tube_object1.r"
		;
connectAttr "hunte__dev__Tree_subnet__1_06.outputObjects[0].outputObjectScale" "|Globe_Core|hunte__dev__Tree_subnet__1_06|tube_object1.s"
		;
connectAttr "transformGeometry7.og" "|Globe_Core|hunte__dev__Tree_subnet__1_06|tube_object1|lineartaper2_0|lineartaper2_0Shape.i"
		;
connectAttr "groupId11.id" "|Globe_Core|hunte__dev__Tree_subnet__1_06|tube_object1|lineartaper2_0|lineartaper2_0Shape.iog.og[0].gid"
		;
connectAttr "group1.mwc" "|Globe_Core|hunte__dev__Tree_subnet__1_06|tube_object1|lineartaper2_0|lineartaper2_0Shape.iog.og[0].gco"
		;
connectAttr "groupId12.id" "|Globe_Core|hunte__dev__Tree_subnet__1_06|tube_object1|lineartaper2_0|lineartaper2_0Shape.iog.og[1].gid"
		;
connectAttr "group2.mwc" "|Globe_Core|hunte__dev__Tree_subnet__1_06|tube_object1|lineartaper2_0|lineartaper2_0Shape.iog.og[1].gco"
		;
connectAttr "groupId27.id" "lineartaper2_7Shape.iog.og[0].gid";
connectAttr "group1.mwc" "lineartaper2_7Shape.iog.og[0].gco";
connectAttr "groupId28.id" "lineartaper2_7Shape.iog.og[1].gid";
connectAttr "group2.mwc" "lineartaper2_7Shape.iog.og[1].gco";
connectAttr ":time1.o" "hunte__dev__Tree_subnet__1_07.inTime";
connectAttr "hunte__dev__Tree_subnet__1_07.outputObjects[0].outputObjectTranslate" "|Globe_Core|hunte__dev__Tree_subnet__1_07|tube_object1.t"
		;
connectAttr "hunte__dev__Tree_subnet__1_07.outputObjects[0].outputObjectRotate" "|Globe_Core|hunte__dev__Tree_subnet__1_07|tube_object1.r"
		;
connectAttr "hunte__dev__Tree_subnet__1_07.outputObjects[0].outputObjectScale" "|Globe_Core|hunte__dev__Tree_subnet__1_07|tube_object1.s"
		;
connectAttr "groupParts14.og" "|Globe_Core|hunte__dev__Tree_subnet__1_07|tube_object1|lineartaper2_0|lineartaper2_0Shape.i"
		;
connectAttr "groupId13.id" "|Globe_Core|hunte__dev__Tree_subnet__1_07|tube_object1|lineartaper2_0|lineartaper2_0Shape.iog.og[0].gid"
		;
connectAttr "group1.mwc" "|Globe_Core|hunte__dev__Tree_subnet__1_07|tube_object1|lineartaper2_0|lineartaper2_0Shape.iog.og[0].gco"
		;
connectAttr "groupId14.id" "|Globe_Core|hunte__dev__Tree_subnet__1_07|tube_object1|lineartaper2_0|lineartaper2_0Shape.iog.og[1].gid"
		;
connectAttr "group2.mwc" "|Globe_Core|hunte__dev__Tree_subnet__1_07|tube_object1|lineartaper2_0|lineartaper2_0Shape.iog.og[1].gco"
		;
connectAttr "groupId25.id" "lineartaper2_6Shape.iog.og[0].gid";
connectAttr "group1.mwc" "lineartaper2_6Shape.iog.og[0].gco";
connectAttr "groupId26.id" "lineartaper2_6Shape.iog.og[1].gid";
connectAttr "group2.mwc" "lineartaper2_6Shape.iog.og[1].gco";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "groupId1.msg" "group1.gn" -na;
connectAttr "groupId3.msg" "group1.gn" -na;
connectAttr "groupId5.msg" "group1.gn" -na;
connectAttr "groupId7.msg" "group1.gn" -na;
connectAttr "groupId9.msg" "group1.gn" -na;
connectAttr "groupId11.msg" "group1.gn" -na;
connectAttr "groupId13.msg" "group1.gn" -na;
connectAttr "groupId15.msg" "group1.gn" -na;
connectAttr "groupId17.msg" "group1.gn" -na;
connectAttr "groupId19.msg" "group1.gn" -na;
connectAttr "groupId21.msg" "group1.gn" -na;
connectAttr "groupId23.msg" "group1.gn" -na;
connectAttr "groupId25.msg" "group1.gn" -na;
connectAttr "groupId27.msg" "group1.gn" -na;
connectAttr "|Globe_Core|hunte__dev__Tree_subnet__1_01|tube_object1|lineartaper2_0|lineartaper2_0Shape.iog.og[0]" "group1.dsm"
		 -na;
connectAttr "|Globe_Core|hunte__dev__Tree_subnet__1_02|tube_object1|lineartaper2_0|lineartaper2_0Shape.iog.og[0]" "group1.dsm"
		 -na;
connectAttr "|Globe_Core|hunte__dev__Tree_subnet__1_03|tube_object1|lineartaper2_0|lineartaper2_0Shape.iog.og[0]" "group1.dsm"
		 -na;
connectAttr "|Globe_Core|hunte__dev__Tree_subnet__1_04|tube_object1|lineartaper2_0|lineartaper2_0Shape.iog.og[0]" "group1.dsm"
		 -na;
connectAttr "|Globe_Core|hunte__dev__Tree_subnet__1_05|tube_object1|lineartaper2_0|lineartaper2_0Shape.iog.og[0]" "group1.dsm"
		 -na;
connectAttr "|Globe_Core|hunte__dev__Tree_subnet__1_06|tube_object1|lineartaper2_0|lineartaper2_0Shape.iog.og[0]" "group1.dsm"
		 -na;
connectAttr "|Globe_Core|hunte__dev__Tree_subnet__1_07|tube_object1|lineartaper2_0|lineartaper2_0Shape.iog.og[0]" "group1.dsm"
		 -na;
connectAttr "lineartaper2_1Shape.iog.og[0]" "group1.dsm" -na;
connectAttr "lineartaper2_2Shape.iog.og[0]" "group1.dsm" -na;
connectAttr "lineartaper2_3Shape.iog.og[0]" "group1.dsm" -na;
connectAttr "lineartaper2_4Shape.iog.og[0]" "group1.dsm" -na;
connectAttr "lineartaper2_5Shape.iog.og[0]" "group1.dsm" -na;
connectAttr "lineartaper2_6Shape.iog.og[0]" "group1.dsm" -na;
connectAttr "lineartaper2_7Shape.iog.og[0]" "group1.dsm" -na;
connectAttr "hunte__dev__Tree_subnet__1_01.outputObjects[0].outputGeos[0].outputParts[0].outputPartMeshData" "groupParts1.ig"
		;
connectAttr "groupId1.id" "groupParts1.gi";
connectAttr "groupId2.msg" "group2.gn" -na;
connectAttr "groupId4.msg" "group2.gn" -na;
connectAttr "groupId6.msg" "group2.gn" -na;
connectAttr "groupId8.msg" "group2.gn" -na;
connectAttr "groupId10.msg" "group2.gn" -na;
connectAttr "groupId12.msg" "group2.gn" -na;
connectAttr "groupId14.msg" "group2.gn" -na;
connectAttr "groupId16.msg" "group2.gn" -na;
connectAttr "groupId18.msg" "group2.gn" -na;
connectAttr "groupId20.msg" "group2.gn" -na;
connectAttr "groupId22.msg" "group2.gn" -na;
connectAttr "groupId24.msg" "group2.gn" -na;
connectAttr "groupId26.msg" "group2.gn" -na;
connectAttr "groupId28.msg" "group2.gn" -na;
connectAttr "|Globe_Core|hunte__dev__Tree_subnet__1_01|tube_object1|lineartaper2_0|lineartaper2_0Shape.iog.og[1]" "group2.dsm"
		 -na;
connectAttr "|Globe_Core|hunte__dev__Tree_subnet__1_02|tube_object1|lineartaper2_0|lineartaper2_0Shape.iog.og[1]" "group2.dsm"
		 -na;
connectAttr "|Globe_Core|hunte__dev__Tree_subnet__1_03|tube_object1|lineartaper2_0|lineartaper2_0Shape.iog.og[1]" "group2.dsm"
		 -na;
connectAttr "|Globe_Core|hunte__dev__Tree_subnet__1_04|tube_object1|lineartaper2_0|lineartaper2_0Shape.iog.og[1]" "group2.dsm"
		 -na;
connectAttr "|Globe_Core|hunte__dev__Tree_subnet__1_05|tube_object1|lineartaper2_0|lineartaper2_0Shape.iog.og[1]" "group2.dsm"
		 -na;
connectAttr "|Globe_Core|hunte__dev__Tree_subnet__1_06|tube_object1|lineartaper2_0|lineartaper2_0Shape.iog.og[1]" "group2.dsm"
		 -na;
connectAttr "|Globe_Core|hunte__dev__Tree_subnet__1_07|tube_object1|lineartaper2_0|lineartaper2_0Shape.iog.og[1]" "group2.dsm"
		 -na;
connectAttr "lineartaper2_1Shape.iog.og[1]" "group2.dsm" -na;
connectAttr "lineartaper2_2Shape.iog.og[1]" "group2.dsm" -na;
connectAttr "lineartaper2_3Shape.iog.og[1]" "group2.dsm" -na;
connectAttr "lineartaper2_4Shape.iog.og[1]" "group2.dsm" -na;
connectAttr "lineartaper2_5Shape.iog.og[1]" "group2.dsm" -na;
connectAttr "lineartaper2_6Shape.iog.og[1]" "group2.dsm" -na;
connectAttr "lineartaper2_7Shape.iog.og[1]" "group2.dsm" -na;
connectAttr "groupParts1.og" "groupParts2.ig";
connectAttr "groupId2.id" "groupParts2.gi";
connectAttr "hunte__dev__Tree_subnet__1_02.outputObjects[0].outputGeos[0].outputParts[0].outputPartMeshData" "groupParts3.ig"
		;
connectAttr "groupId3.id" "groupParts3.gi";
connectAttr "groupParts3.og" "groupParts4.ig";
connectAttr "groupId4.id" "groupParts4.gi";
connectAttr "hunte__dev__Tree_subnet__1_03.outputObjects[0].outputGeos[0].outputParts[0].outputPartMeshData" "groupParts5.ig"
		;
connectAttr "groupId5.id" "groupParts5.gi";
connectAttr "groupParts5.og" "groupParts6.ig";
connectAttr "groupId6.id" "groupParts6.gi";
connectAttr "hunte__dev__Tree_subnet__1_04.outputObjects[0].outputGeos[0].outputParts[0].outputPartMeshData" "groupParts7.ig"
		;
connectAttr "groupId7.id" "groupParts7.gi";
connectAttr "groupParts7.og" "groupParts8.ig";
connectAttr "groupId8.id" "groupParts8.gi";
connectAttr "hunte__dev__Tree_subnet__1_05.outputObjects[0].outputGeos[0].outputParts[0].outputPartMeshData" "groupParts9.ig"
		;
connectAttr "groupId9.id" "groupParts9.gi";
connectAttr "groupParts9.og" "groupParts10.ig";
connectAttr "groupId10.id" "groupParts10.gi";
connectAttr "groupParts10.og" "transformGeometry1.ig";
connectAttr "groupParts8.og" "transformGeometry2.ig";
connectAttr "groupParts6.og" "transformGeometry3.ig";
connectAttr "groupParts4.og" "transformGeometry4.ig";
connectAttr "groupParts2.og" "transformGeometry5.ig";
connectAttr "transformGeometry3.og" "transformGeometry6.ig";
connectAttr "hunte__dev__Tree_subnet__1_06.outputObjects[0].outputGeos[0].outputParts[0].outputPartMeshData" "groupParts11.ig"
		;
connectAttr "groupId11.id" "groupParts11.gi";
connectAttr "groupParts11.og" "groupParts12.ig";
connectAttr "groupId12.id" "groupParts12.gi";
connectAttr "groupParts12.og" "transformGeometry7.ig";
connectAttr "hunte__dev__Tree_subnet__1_07.outputObjects[0].outputGeos[0].outputParts[0].outputPartMeshData" "groupParts13.ig"
		;
connectAttr "groupId13.id" "groupParts13.gi";
connectAttr "groupParts13.og" "groupParts14.ig";
connectAttr "groupId14.id" "groupParts14.gi";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "copytopoints1_0Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Globe_CoreShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|Globe_Core|hunte__dev__Tree_subnet__1_01|tube_object1|lineartaper2_0|lineartaper2_0Shape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Globe_Core|hunte__dev__Tree_subnet__1_02|tube_object1|lineartaper2_0|lineartaper2_0Shape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Globe_Core|hunte__dev__Tree_subnet__1_03|tube_object1|lineartaper2_0|lineartaper2_0Shape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Globe_Core|hunte__dev__Tree_subnet__1_04|tube_object1|lineartaper2_0|lineartaper2_0Shape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Globe_Core|hunte__dev__Tree_subnet__1_05|tube_object1|lineartaper2_0|lineartaper2_0Shape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Globe_Core|hunte__dev__Tree_subnet__1_06|tube_object1|lineartaper2_0|lineartaper2_0Shape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Globe_Core|hunte__dev__Tree_subnet__1_07|tube_object1|lineartaper2_0|lineartaper2_0Shape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "lineartaper2_1Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "lineartaper2_2Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "lineartaper2_3Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "lineartaper2_4Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "lineartaper2_5Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "lineartaper2_6Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "lineartaper2_7Shape.iog" ":initialShadingGroup.dsm" -na;
// End of globe trotter.ma
