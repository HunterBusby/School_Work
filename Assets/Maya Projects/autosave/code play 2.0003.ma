//Maya ASCII 2024 scene
//Name: code play 2.0003.ma
//Last modified: Tue, Oct 10, 2023 06:24:09 PM
//Codeset: 1252
requires maya "2024";
requires -nodeType "houdiniAsset" "houdiniEngine" "5.0 (API: 8)";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "5.3.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2024";
fileInfo "version" "2024";
fileInfo "cutIdentifier" "202302170737-4500172811";
fileInfo "osv" "Windows 11 Home v2009 (Build: 22621)";
fileInfo "UUID" "3F1D5D59-497C-230A-4106-D8AA054B3A97";
fileInfo "exportedFrom" "C:/Users/hunte/Documents/Education/Fall 2023/Modeling/code play 2.ma";
createNode transform -s -n "persp";
	rename -uid "B509DAE1-4C2D-21B4-0404-EF9268EF1267";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -20.273456180322349 0.82155114361848236 46.5203533431024 ;
	setAttr ".r" -type "double3" -0.93835272960251292 -24.200000000000003 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "ABD53430-46F8-315D-282C-0B93022B3DAD";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 50.749356097555008;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "B37BDA73-4399-A666-7DC2-E8AB03B3D033";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "EF6FE257-4B35-22CF-A914-A3AA7C651A7F";
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
	rename -uid "C8C816D8-4E7E-360A-9966-8F95A229DCE2";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "28326D8F-4A60-ECB5-C8EB-29AB90D7AAE8";
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
	rename -uid "F6ECBC2E-4736-3DBE-BE94-42AFD0A269FC";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "402B318F-4083-B8DD-535A-0E874B82CD39";
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
	rename -uid "325E36F0-4815-F1F9-7AB7-9FB28367EA1E";
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
		-nn "Resolution" -min 1 -smn 1 -smx 10 -at "long" -p "houdiniAssetParm";
	addAttr -is true -ci true -sn "houdiniAssetParm_amplitude" -ln "houdiniAssetParm_amplitude" 
		-nn "Amplitude" -min 0 -smn 0 -smx 10 -at "float" -p "houdiniAssetParm";
	addAttr -is true -ci true -sn "houdiniAssetParm_offset" -ln "houdiniAssetParm_offset" 
		-nn "Variation" -smn 0 -smx 50 -at "float" -p "houdiniAssetParm";
	setAttr ".otlFilePath" -type "string" "C:/Users/hunte/Documents/houdini19.5/otls/object_hunte.dev.NewRockGeo.1.0.hdanc";
	setAttr ".assetName" -type "string" "hunte::dev::Object/NewRockGeo::1.0";
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
	setAttr -cb on ".houdiniAssetParm_amplitude" 0.37999999523162842;
	setAttr -cb on ".houdiniAssetParm_offset" 6;
createNode transform -n "RockGeo" -p "hunte__dev__NewRockGeo__1_01";
	rename -uid "DB068968-4DFE-CA08-5F76-80A3B44A9DA7";
createNode transform -n "mountain1_0" -p "RockGeo";
	rename -uid "6D24EDB1-4E9D-FBCB-52D5-EE83073C2C39";
createNode mesh -n "mountain1_0Shape" -p "mountain1_0";
	rename -uid "8BAE1376-49C5-CC18-3B7A-55905C5083A9";
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
createNode transform -n "mountain1_1" -p "RockGeo";
	rename -uid "276576F6-415E-6D90-8069-61A64F74CCCA";
	setAttr ".t" -type "double3" -2.9322162854478506 12.856125761863328 22.017997901104991 ;
createNode mesh -n "mountain1_1Shape" -p "mountain1_1";
	rename -uid "D5812250-47A8-34C5-2D96-C4BE6AC56A67";
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
	setAttr -s 42 ".vt[0:41]"  -5.5569727e-10 6.6683672e-09 -0.58796507
		 2.7279394e-09 0.20855996 -0.33745706 0.3180064 0.10332671 -0.5410248 1.7477885e-09 0.38534856 -0.19267403
		 0.32514933 0.44752994 -0.34188196 0.61184579 0.19880104 -0.32166609 0.1726813 -0.23767541 -0.47535083
		 0.46169487 -0.15001363 -0.30002725 0.31028333 -0.42706838 -0.26394254 -0.13379738 -0.1841563 -0.3683126
		 3.1932318e-10 -0.47675335 -0.29464948 -0.28017479 -0.38562754 -0.23833069 -0.21158117 0.068747006 -0.35996342
		 -0.46846321 -0.15221278 -0.3044256 -0.41250825 0.13403228 -0.21686822 -0.15008704 0.20657724 -0.15781069
		 -0.16087875 0.49513397 1.0343861e-09 -0.3010985 0.21876101 -1.3840189e-08 -0.24613315 0.33877322 0.20937316
		 -0.59643972 2.0375091e-09 -7.6406592e-10 -0.5086782 -0.36957651 -1.156157e-08 -0.55562407 -0.18053347 0.29210863
		 -0.17064804 -0.52520072 -1.6551754e-09 0.17039311 -0.52441615 -1.0860212e-09 1.3611232e-09 -0.38297549 0.19148749
		 0.3338415 -0.24255018 6.9204353e-09 0.54276943 -6.7770095e-10 -3.3885048e-10 0.24765544 -0.080468304 0.13020003
		 0.54090124 0.39298791 1.7364094e-08 0.19088985 0.58749866 5.9075029e-09 0.3165668 0.43571684 0.26928759
		 5.3478327e-10 0.51145375 0.3160955 -0.31606323 0.10269506 0.2053901 -0.25411391 -0.34975803 0.26719096
		 0.1834399 -0.25248355 0.19287992 0.36031693 0.11707396 0.23414792 9.582789e-10 1.1978486e-08 0.34830755
		 0.11188844 0.15400124 0.30800247 -0.10745908 0.14790475 0.29580954 0.13755703 -0.044695061 0.23402604
		 1.5500679e-09 -0.23200808 0.37539691 -0.23098241 -0.075050861 0.39297077;
	setAttr -s 120 ".ed[0:119]"  0 1 1 1 2 1 2 0 1 1 3 1 3 4 1 4 1 1 2 4 1
		 4 5 1 5 2 1 2 6 1 6 0 1 5 7 1 7 2 1 6 7 1 7 8 1 8 6 1 6 9 1 9 0 1 8 10 1 10 6 1 9 10 1
		 10 11 1 11 9 1 9 12 1 12 0 1 11 13 1 13 9 1 12 13 1 13 14 1 14 12 1 12 1 1 14 15 1
		 15 12 1 1 15 1 15 3 1 15 16 1 16 3 1 14 17 1 17 15 1 16 17 1 17 18 1 18 16 1 13 19 1
		 19 14 1 11 20 1 20 13 1 19 20 1 20 21 1 21 19 1 10 22 1 22 11 1 8 23 1 23 10 1 22 23 1
		 23 24 1 24 22 1 7 25 1 25 8 1 5 26 1 26 7 1 25 26 1 26 27 1 27 25 1 4 28 1 28 5 1
		 3 29 1 29 4 1 28 29 1 29 30 1 30 28 1 16 29 1 18 31 1 31 16 1 29 31 1 31 30 1 19 17 1
		 21 32 1 32 19 1 17 32 1 32 18 1 22 20 1 24 33 1 33 22 1 20 33 1 33 21 1 25 23 1 27 34 1
		 34 25 1 23 34 1 34 24 1 28 26 1 30 35 1 35 28 1 26 35 1 35 27 1 36 37 1 37 38 1 38 36 1
		 37 30 1 31 37 1 38 31 1 18 38 1 36 39 1 39 37 1 39 27 1 35 39 1 37 35 1 36 40 1 40 39 1
		 40 24 1 34 40 1 39 34 1 36 41 1 41 40 1 41 21 1 33 41 1 40 33 1 38 41 1 32 38 1 41 32 1;
	setAttr -s 80 -ch 240 ".fc[0:79]" -type "polyFaces" 
		f 3 0 1 2
		f 3 3 4 5
		f 3 6 7 8
		f 3 -6 -7 -2
		f 3 -3 9 10
		f 3 -9 11 12
		f 3 13 14 15
		f 3 -13 -14 -10
		f 3 -11 16 17
		f 3 -16 18 19
		f 3 20 21 22
		f 3 -20 -21 -17
		f 3 -18 23 24
		f 3 -23 25 26
		f 3 27 28 29
		f 3 -27 -28 -24
		f 3 -25 30 -1
		f 3 -30 31 32
		f 3 33 34 -4
		f 3 -33 -34 -31
		f 3 -35 35 36
		f 3 -32 37 38
		f 3 39 40 41
		f 3 -39 -40 -36
		f 3 -29 42 43
		f 3 -26 44 45
		f 3 46 47 48
		f 3 -46 -47 -43
		f 3 -22 49 50
		f 3 -19 51 52
		f 3 53 54 55
		f 3 -53 -54 -50
		f 3 -15 56 57
		f 3 -12 58 59
		f 3 60 61 62
		f 3 -60 -61 -57
		f 3 -8 63 64
		f 3 -5 65 66
		f 3 67 68 69
		f 3 -67 -68 -64
		f 3 -37 70 -66
		f 3 -42 71 72
		f 3 73 74 -69
		f 3 -73 -74 -71
		f 3 -44 75 -38
		f 3 -49 76 77
		f 3 78 79 -41
		f 3 -78 -79 -76
		f 3 -51 80 -45
		f 3 -56 81 82
		f 3 83 84 -48
		f 3 -83 -84 -81
		f 3 -58 85 -52
		f 3 -63 86 87
		f 3 88 89 -55
		f 3 -88 -89 -86
		f 3 -65 90 -59
		f 3 -70 91 92
		f 3 93 94 -62
		f 3 -93 -94 -91
		f 3 95 96 97
		f 3 98 -75 99
		f 3 100 -72 101
		f 3 -100 -101 -97
		f 3 102 103 -96
		f 3 104 -95 105
		f 3 106 -92 -99
		f 3 -106 -107 -104
		f 3 107 108 -103
		f 3 109 -90 110
		f 3 111 -87 -105
		f 3 -111 -112 -109
		f 3 112 113 -108
		f 3 114 -85 115
		f 3 116 -82 -110
		f 3 -116 -117 -114
		f 3 -98 117 -113
		f 3 -102 -80 118
		f 3 119 -77 -115
		f 3 -119 -120 -118;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "mountain1_2" -p "RockGeo";
	rename -uid "077660BF-4539-7DEB-D1E4-598D2B067D21";
	setAttr ".t" -type "double3" -5.7859973275533605 2.3270240656777119 8.8816278111245595 ;
createNode mesh -n "mountain1_2Shape" -p "mountain1_2";
	rename -uid "78AE0F5E-4FC3-9EF2-AEFA-BFBE22F160B0";
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
	setAttr -s 42 ".vt[0:41]"  -5.5569727e-10 6.6683672e-09 -0.58796507
		 2.7279394e-09 0.20855996 -0.33745706 0.3180064 0.10332671 -0.5410248 1.7477885e-09 0.38534856 -0.19267403
		 0.32514933 0.44752994 -0.34188196 0.61184579 0.19880104 -0.32166609 0.1726813 -0.23767541 -0.47535083
		 0.46169487 -0.15001363 -0.30002725 0.31028333 -0.42706838 -0.26394254 -0.13379738 -0.1841563 -0.3683126
		 3.1932318e-10 -0.47675335 -0.29464948 -0.28017479 -0.38562754 -0.23833069 -0.21158117 0.068747006 -0.35996342
		 -0.46846321 -0.15221278 -0.3044256 -0.41250825 0.13403228 -0.21686822 -0.15008704 0.20657724 -0.15781069
		 -0.16087875 0.49513397 1.0343861e-09 -0.3010985 0.21876101 -1.3840189e-08 -0.24613315 0.33877322 0.20937316
		 -0.59643972 2.0375091e-09 -7.6406592e-10 -0.5086782 -0.36957651 -1.156157e-08 -0.55562407 -0.18053347 0.29210863
		 -0.17064804 -0.52520072 -1.6551754e-09 0.17039311 -0.52441615 -1.0860212e-09 1.3611232e-09 -0.38297549 0.19148749
		 0.3338415 -0.24255018 6.9204353e-09 0.54276943 -6.7770095e-10 -3.3885048e-10 0.24765544 -0.080468304 0.13020003
		 0.54090124 0.39298791 1.7364094e-08 0.19088985 0.58749866 5.9075029e-09 0.3165668 0.43571684 0.26928759
		 5.3478327e-10 0.51145375 0.3160955 -0.31606323 0.10269506 0.2053901 -0.25411391 -0.34975803 0.26719096
		 0.1834399 -0.25248355 0.19287992 0.36031693 0.11707396 0.23414792 9.582789e-10 1.1978486e-08 0.34830755
		 0.11188844 0.15400124 0.30800247 -0.10745908 0.14790475 0.29580954 0.13755703 -0.044695061 0.23402604
		 1.5500679e-09 -0.23200808 0.37539691 -0.23098241 -0.075050861 0.39297077;
	setAttr -s 120 ".ed[0:119]"  0 1 1 1 2 1 2 0 1 1 3 1 3 4 1 4 1 1 2 4 1
		 4 5 1 5 2 1 2 6 1 6 0 1 5 7 1 7 2 1 6 7 1 7 8 1 8 6 1 6 9 1 9 0 1 8 10 1 10 6 1 9 10 1
		 10 11 1 11 9 1 9 12 1 12 0 1 11 13 1 13 9 1 12 13 1 13 14 1 14 12 1 12 1 1 14 15 1
		 15 12 1 1 15 1 15 3 1 15 16 1 16 3 1 14 17 1 17 15 1 16 17 1 17 18 1 18 16 1 13 19 1
		 19 14 1 11 20 1 20 13 1 19 20 1 20 21 1 21 19 1 10 22 1 22 11 1 8 23 1 23 10 1 22 23 1
		 23 24 1 24 22 1 7 25 1 25 8 1 5 26 1 26 7 1 25 26 1 26 27 1 27 25 1 4 28 1 28 5 1
		 3 29 1 29 4 1 28 29 1 29 30 1 30 28 1 16 29 1 18 31 1 31 16 1 29 31 1 31 30 1 19 17 1
		 21 32 1 32 19 1 17 32 1 32 18 1 22 20 1 24 33 1 33 22 1 20 33 1 33 21 1 25 23 1 27 34 1
		 34 25 1 23 34 1 34 24 1 28 26 1 30 35 1 35 28 1 26 35 1 35 27 1 36 37 1 37 38 1 38 36 1
		 37 30 1 31 37 1 38 31 1 18 38 1 36 39 1 39 37 1 39 27 1 35 39 1 37 35 1 36 40 1 40 39 1
		 40 24 1 34 40 1 39 34 1 36 41 1 41 40 1 41 21 1 33 41 1 40 33 1 38 41 1 32 38 1 41 32 1;
	setAttr -s 80 -ch 240 ".fc[0:79]" -type "polyFaces" 
		f 3 0 1 2
		f 3 3 4 5
		f 3 6 7 8
		f 3 -6 -7 -2
		f 3 -3 9 10
		f 3 -9 11 12
		f 3 13 14 15
		f 3 -13 -14 -10
		f 3 -11 16 17
		f 3 -16 18 19
		f 3 20 21 22
		f 3 -20 -21 -17
		f 3 -18 23 24
		f 3 -23 25 26
		f 3 27 28 29
		f 3 -27 -28 -24
		f 3 -25 30 -1
		f 3 -30 31 32
		f 3 33 34 -4
		f 3 -33 -34 -31
		f 3 -35 35 36
		f 3 -32 37 38
		f 3 39 40 41
		f 3 -39 -40 -36
		f 3 -29 42 43
		f 3 -26 44 45
		f 3 46 47 48
		f 3 -46 -47 -43
		f 3 -22 49 50
		f 3 -19 51 52
		f 3 53 54 55
		f 3 -53 -54 -50
		f 3 -15 56 57
		f 3 -12 58 59
		f 3 60 61 62
		f 3 -60 -61 -57
		f 3 -8 63 64
		f 3 -5 65 66
		f 3 67 68 69
		f 3 -67 -68 -64
		f 3 -37 70 -66
		f 3 -42 71 72
		f 3 73 74 -69
		f 3 -73 -74 -71
		f 3 -44 75 -38
		f 3 -49 76 77
		f 3 78 79 -41
		f 3 -78 -79 -76
		f 3 -51 80 -45
		f 3 -56 81 82
		f 3 83 84 -48
		f 3 -83 -84 -81
		f 3 -58 85 -52
		f 3 -63 86 87
		f 3 88 89 -55
		f 3 -88 -89 -86
		f 3 -65 90 -59
		f 3 -70 91 92
		f 3 93 94 -62
		f 3 -93 -94 -91
		f 3 95 96 97
		f 3 98 -75 99
		f 3 100 -72 101
		f 3 -100 -101 -97
		f 3 102 103 -96
		f 3 104 -95 105
		f 3 106 -92 -99
		f 3 -106 -107 -104
		f 3 107 108 -103
		f 3 109 -90 110
		f 3 111 -87 -105
		f 3 -111 -112 -109
		f 3 112 113 -108
		f 3 114 -85 115
		f 3 116 -82 -110
		f 3 -116 -117 -114
		f 3 -98 117 -113
		f 3 -102 -80 118
		f 3 119 -77 -115
		f 3 -119 -120 -118;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "mountain1_3" -p "RockGeo";
	rename -uid "7E7396CE-4053-340E-4433-B7A81833780B";
	setAttr ".t" -type "double3" 26.812158087016655 8.4621814942319951 22.201961225060529 ;
createNode mesh -n "mountain1_3Shape" -p "mountain1_3";
	rename -uid "3BFCCA41-4727-A4DC-D02D-A6975120990B";
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
	setAttr -s 42 ".vt[0:41]"  -5.5569727e-10 6.6683672e-09 -0.58796507
		 2.7279394e-09 0.20855996 -0.33745706 0.3180064 0.10332671 -0.5410248 1.7477885e-09 0.38534856 -0.19267403
		 0.32514933 0.44752994 -0.34188196 0.61184579 0.19880104 -0.32166609 0.1726813 -0.23767541 -0.47535083
		 0.46169487 -0.15001363 -0.30002725 0.31028333 -0.42706838 -0.26394254 -0.13379738 -0.1841563 -0.3683126
		 3.1932318e-10 -0.47675335 -0.29464948 -0.28017479 -0.38562754 -0.23833069 -0.21158117 0.068747006 -0.35996342
		 -0.46846321 -0.15221278 -0.3044256 -0.41250825 0.13403228 -0.21686822 -0.15008704 0.20657724 -0.15781069
		 -0.16087875 0.49513397 1.0343861e-09 -0.3010985 0.21876101 -1.3840189e-08 -0.24613315 0.33877322 0.20937316
		 -0.59643972 2.0375091e-09 -7.6406592e-10 -0.5086782 -0.36957651 -1.156157e-08 -0.55562407 -0.18053347 0.29210863
		 -0.17064804 -0.52520072 -1.6551754e-09 0.17039311 -0.52441615 -1.0860212e-09 1.3611232e-09 -0.38297549 0.19148749
		 0.3338415 -0.24255018 6.9204353e-09 0.54276943 -6.7770095e-10 -3.3885048e-10 0.24765544 -0.080468304 0.13020003
		 0.54090124 0.39298791 1.7364094e-08 0.19088985 0.58749866 5.9075029e-09 0.3165668 0.43571684 0.26928759
		 5.3478327e-10 0.51145375 0.3160955 -0.31606323 0.10269506 0.2053901 -0.25411391 -0.34975803 0.26719096
		 0.1834399 -0.25248355 0.19287992 0.36031693 0.11707396 0.23414792 9.582789e-10 1.1978486e-08 0.34830755
		 0.11188844 0.15400124 0.30800247 -0.10745908 0.14790475 0.29580954 0.13755703 -0.044695061 0.23402604
		 1.5500679e-09 -0.23200808 0.37539691 -0.23098241 -0.075050861 0.39297077;
	setAttr -s 120 ".ed[0:119]"  0 1 1 1 2 1 2 0 1 1 3 1 3 4 1 4 1 1 2 4 1
		 4 5 1 5 2 1 2 6 1 6 0 1 5 7 1 7 2 1 6 7 1 7 8 1 8 6 1 6 9 1 9 0 1 8 10 1 10 6 1 9 10 1
		 10 11 1 11 9 1 9 12 1 12 0 1 11 13 1 13 9 1 12 13 1 13 14 1 14 12 1 12 1 1 14 15 1
		 15 12 1 1 15 1 15 3 1 15 16 1 16 3 1 14 17 1 17 15 1 16 17 1 17 18 1 18 16 1 13 19 1
		 19 14 1 11 20 1 20 13 1 19 20 1 20 21 1 21 19 1 10 22 1 22 11 1 8 23 1 23 10 1 22 23 1
		 23 24 1 24 22 1 7 25 1 25 8 1 5 26 1 26 7 1 25 26 1 26 27 1 27 25 1 4 28 1 28 5 1
		 3 29 1 29 4 1 28 29 1 29 30 1 30 28 1 16 29 1 18 31 1 31 16 1 29 31 1 31 30 1 19 17 1
		 21 32 1 32 19 1 17 32 1 32 18 1 22 20 1 24 33 1 33 22 1 20 33 1 33 21 1 25 23 1 27 34 1
		 34 25 1 23 34 1 34 24 1 28 26 1 30 35 1 35 28 1 26 35 1 35 27 1 36 37 1 37 38 1 38 36 1
		 37 30 1 31 37 1 38 31 1 18 38 1 36 39 1 39 37 1 39 27 1 35 39 1 37 35 1 36 40 1 40 39 1
		 40 24 1 34 40 1 39 34 1 36 41 1 41 40 1 41 21 1 33 41 1 40 33 1 38 41 1 32 38 1 41 32 1;
	setAttr -s 80 -ch 240 ".fc[0:79]" -type "polyFaces" 
		f 3 0 1 2
		f 3 3 4 5
		f 3 6 7 8
		f 3 -6 -7 -2
		f 3 -3 9 10
		f 3 -9 11 12
		f 3 13 14 15
		f 3 -13 -14 -10
		f 3 -11 16 17
		f 3 -16 18 19
		f 3 20 21 22
		f 3 -20 -21 -17
		f 3 -18 23 24
		f 3 -23 25 26
		f 3 27 28 29
		f 3 -27 -28 -24
		f 3 -25 30 -1
		f 3 -30 31 32
		f 3 33 34 -4
		f 3 -33 -34 -31
		f 3 -35 35 36
		f 3 -32 37 38
		f 3 39 40 41
		f 3 -39 -40 -36
		f 3 -29 42 43
		f 3 -26 44 45
		f 3 46 47 48
		f 3 -46 -47 -43
		f 3 -22 49 50
		f 3 -19 51 52
		f 3 53 54 55
		f 3 -53 -54 -50
		f 3 -15 56 57
		f 3 -12 58 59
		f 3 60 61 62
		f 3 -60 -61 -57
		f 3 -8 63 64
		f 3 -5 65 66
		f 3 67 68 69
		f 3 -67 -68 -64
		f 3 -37 70 -66
		f 3 -42 71 72
		f 3 73 74 -69
		f 3 -73 -74 -71
		f 3 -44 75 -38
		f 3 -49 76 77
		f 3 78 79 -41
		f 3 -78 -79 -76
		f 3 -51 80 -45
		f 3 -56 81 82
		f 3 83 84 -48
		f 3 -83 -84 -81
		f 3 -58 85 -52
		f 3 -63 86 87
		f 3 88 89 -55
		f 3 -88 -89 -86
		f 3 -65 90 -59
		f 3 -70 91 92
		f 3 93 94 -62
		f 3 -93 -94 -91
		f 3 95 96 97
		f 3 98 -75 99
		f 3 100 -72 101
		f 3 -100 -101 -97
		f 3 102 103 -96
		f 3 104 -95 105
		f 3 106 -92 -99
		f 3 -106 -107 -104
		f 3 107 108 -103
		f 3 109 -90 110
		f 3 111 -87 -105
		f 3 -111 -112 -109
		f 3 112 113 -108
		f 3 114 -85 115
		f 3 116 -82 -110
		f 3 -116 -117 -114
		f 3 -98 117 -113
		f 3 -102 -80 118
		f 3 119 -77 -115
		f 3 -119 -120 -118;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "mountain1_4" -p "RockGeo";
	rename -uid "FCC80AA9-44F5-7DBE-60C8-6F99E89C59C5";
	setAttr ".t" -type "double3" 21.772171051866422 12.062915697245984 99.428362922574109 ;
createNode mesh -n "mountain1_4Shape" -p "mountain1_4";
	rename -uid "D142387B-48F8-FD26-3795-43B99FC888E3";
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
	setAttr -s 42 ".vt[0:41]"  -5.5569727e-10 6.6683672e-09 -0.58796507
		 2.7279394e-09 0.20855996 -0.33745706 0.3180064 0.10332671 -0.5410248 1.7477885e-09 0.38534856 -0.19267403
		 0.32514933 0.44752994 -0.34188196 0.61184579 0.19880104 -0.32166609 0.1726813 -0.23767541 -0.47535083
		 0.46169487 -0.15001363 -0.30002725 0.31028333 -0.42706838 -0.26394254 -0.13379738 -0.1841563 -0.3683126
		 3.1932318e-10 -0.47675335 -0.29464948 -0.28017479 -0.38562754 -0.23833069 -0.21158117 0.068747006 -0.35996342
		 -0.46846321 -0.15221278 -0.3044256 -0.41250825 0.13403228 -0.21686822 -0.15008704 0.20657724 -0.15781069
		 -0.16087875 0.49513397 1.0343861e-09 -0.3010985 0.21876101 -1.3840189e-08 -0.24613315 0.33877322 0.20937316
		 -0.59643972 2.0375091e-09 -7.6406592e-10 -0.5086782 -0.36957651 -1.156157e-08 -0.55562407 -0.18053347 0.29210863
		 -0.17064804 -0.52520072 -1.6551754e-09 0.17039311 -0.52441615 -1.0860212e-09 1.3611232e-09 -0.38297549 0.19148749
		 0.3338415 -0.24255018 6.9204353e-09 0.54276943 -6.7770095e-10 -3.3885048e-10 0.24765544 -0.080468304 0.13020003
		 0.54090124 0.39298791 1.7364094e-08 0.19088985 0.58749866 5.9075029e-09 0.3165668 0.43571684 0.26928759
		 5.3478327e-10 0.51145375 0.3160955 -0.31606323 0.10269506 0.2053901 -0.25411391 -0.34975803 0.26719096
		 0.1834399 -0.25248355 0.19287992 0.36031693 0.11707396 0.23414792 9.582789e-10 1.1978486e-08 0.34830755
		 0.11188844 0.15400124 0.30800247 -0.10745908 0.14790475 0.29580954 0.13755703 -0.044695061 0.23402604
		 1.5500679e-09 -0.23200808 0.37539691 -0.23098241 -0.075050861 0.39297077;
	setAttr -s 120 ".ed[0:119]"  0 1 1 1 2 1 2 0 1 1 3 1 3 4 1 4 1 1 2 4 1
		 4 5 1 5 2 1 2 6 1 6 0 1 5 7 1 7 2 1 6 7 1 7 8 1 8 6 1 6 9 1 9 0 1 8 10 1 10 6 1 9 10 1
		 10 11 1 11 9 1 9 12 1 12 0 1 11 13 1 13 9 1 12 13 1 13 14 1 14 12 1 12 1 1 14 15 1
		 15 12 1 1 15 1 15 3 1 15 16 1 16 3 1 14 17 1 17 15 1 16 17 1 17 18 1 18 16 1 13 19 1
		 19 14 1 11 20 1 20 13 1 19 20 1 20 21 1 21 19 1 10 22 1 22 11 1 8 23 1 23 10 1 22 23 1
		 23 24 1 24 22 1 7 25 1 25 8 1 5 26 1 26 7 1 25 26 1 26 27 1 27 25 1 4 28 1 28 5 1
		 3 29 1 29 4 1 28 29 1 29 30 1 30 28 1 16 29 1 18 31 1 31 16 1 29 31 1 31 30 1 19 17 1
		 21 32 1 32 19 1 17 32 1 32 18 1 22 20 1 24 33 1 33 22 1 20 33 1 33 21 1 25 23 1 27 34 1
		 34 25 1 23 34 1 34 24 1 28 26 1 30 35 1 35 28 1 26 35 1 35 27 1 36 37 1 37 38 1 38 36 1
		 37 30 1 31 37 1 38 31 1 18 38 1 36 39 1 39 37 1 39 27 1 35 39 1 37 35 1 36 40 1 40 39 1
		 40 24 1 34 40 1 39 34 1 36 41 1 41 40 1 41 21 1 33 41 1 40 33 1 38 41 1 32 38 1 41 32 1;
	setAttr -s 80 -ch 240 ".fc[0:79]" -type "polyFaces" 
		f 3 0 1 2
		f 3 3 4 5
		f 3 6 7 8
		f 3 -6 -7 -2
		f 3 -3 9 10
		f 3 -9 11 12
		f 3 13 14 15
		f 3 -13 -14 -10
		f 3 -11 16 17
		f 3 -16 18 19
		f 3 20 21 22
		f 3 -20 -21 -17
		f 3 -18 23 24
		f 3 -23 25 26
		f 3 27 28 29
		f 3 -27 -28 -24
		f 3 -25 30 -1
		f 3 -30 31 32
		f 3 33 34 -4
		f 3 -33 -34 -31
		f 3 -35 35 36
		f 3 -32 37 38
		f 3 39 40 41
		f 3 -39 -40 -36
		f 3 -29 42 43
		f 3 -26 44 45
		f 3 46 47 48
		f 3 -46 -47 -43
		f 3 -22 49 50
		f 3 -19 51 52
		f 3 53 54 55
		f 3 -53 -54 -50
		f 3 -15 56 57
		f 3 -12 58 59
		f 3 60 61 62
		f 3 -60 -61 -57
		f 3 -8 63 64
		f 3 -5 65 66
		f 3 67 68 69
		f 3 -67 -68 -64
		f 3 -37 70 -66
		f 3 -42 71 72
		f 3 73 74 -69
		f 3 -73 -74 -71
		f 3 -44 75 -38
		f 3 -49 76 77
		f 3 78 79 -41
		f 3 -78 -79 -76
		f 3 -51 80 -45
		f 3 -56 81 82
		f 3 83 84 -48
		f 3 -83 -84 -81
		f 3 -58 85 -52
		f 3 -63 86 87
		f 3 88 89 -55
		f 3 -88 -89 -86
		f 3 -65 90 -59
		f 3 -70 91 92
		f 3 93 94 -62
		f 3 -93 -94 -91
		f 3 95 96 97
		f 3 98 -75 99
		f 3 100 -72 101
		f 3 -100 -101 -97
		f 3 102 103 -96
		f 3 104 -95 105
		f 3 106 -92 -99
		f 3 -106 -107 -104
		f 3 107 108 -103
		f 3 109 -90 110
		f 3 111 -87 -105
		f 3 -111 -112 -109
		f 3 112 113 -108
		f 3 114 -85 115
		f 3 116 -82 -110
		f 3 -116 -117 -114
		f 3 -98 117 -113
		f 3 -102 -80 118
		f 3 119 -77 -115
		f 3 -119 -120 -118;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "mountain1_5" -p "RockGeo";
	rename -uid "9FD6DA94-4E54-49B8-7A50-C098FE93D04A";
	setAttr ".t" -type "double3" -6.5377039233200662 11.056621580138586 98.585265987978232 ;
createNode mesh -n "mountain1_5Shape" -p "mountain1_5";
	rename -uid "951F0863-4643-7E67-092A-9F8421618BEA";
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
	setAttr -s 42 ".vt[0:41]"  -5.5569727e-10 6.6683672e-09 -0.58796507
		 2.7279394e-09 0.20855996 -0.33745706 0.3180064 0.10332671 -0.5410248 1.7477885e-09 0.38534856 -0.19267403
		 0.32514933 0.44752994 -0.34188196 0.61184579 0.19880104 -0.32166609 0.1726813 -0.23767541 -0.47535083
		 0.46169487 -0.15001363 -0.30002725 0.31028333 -0.42706838 -0.26394254 -0.13379738 -0.1841563 -0.3683126
		 3.1932318e-10 -0.47675335 -0.29464948 -0.28017479 -0.38562754 -0.23833069 -0.21158117 0.068747006 -0.35996342
		 -0.46846321 -0.15221278 -0.3044256 -0.41250825 0.13403228 -0.21686822 -0.15008704 0.20657724 -0.15781069
		 -0.16087875 0.49513397 1.0343861e-09 -0.3010985 0.21876101 -1.3840189e-08 -0.24613315 0.33877322 0.20937316
		 -0.59643972 2.0375091e-09 -7.6406592e-10 -0.5086782 -0.36957651 -1.156157e-08 -0.55562407 -0.18053347 0.29210863
		 -0.17064804 -0.52520072 -1.6551754e-09 0.17039311 -0.52441615 -1.0860212e-09 1.3611232e-09 -0.38297549 0.19148749
		 0.3338415 -0.24255018 6.9204353e-09 0.54276943 -6.7770095e-10 -3.3885048e-10 0.24765544 -0.080468304 0.13020003
		 0.54090124 0.39298791 1.7364094e-08 0.19088985 0.58749866 5.9075029e-09 0.3165668 0.43571684 0.26928759
		 5.3478327e-10 0.51145375 0.3160955 -0.31606323 0.10269506 0.2053901 -0.25411391 -0.34975803 0.26719096
		 0.1834399 -0.25248355 0.19287992 0.36031693 0.11707396 0.23414792 9.582789e-10 1.1978486e-08 0.34830755
		 0.11188844 0.15400124 0.30800247 -0.10745908 0.14790475 0.29580954 0.13755703 -0.044695061 0.23402604
		 1.5500679e-09 -0.23200808 0.37539691 -0.23098241 -0.075050861 0.39297077;
	setAttr -s 120 ".ed[0:119]"  0 1 1 1 2 1 2 0 1 1 3 1 3 4 1 4 1 1 2 4 1
		 4 5 1 5 2 1 2 6 1 6 0 1 5 7 1 7 2 1 6 7 1 7 8 1 8 6 1 6 9 1 9 0 1 8 10 1 10 6 1 9 10 1
		 10 11 1 11 9 1 9 12 1 12 0 1 11 13 1 13 9 1 12 13 1 13 14 1 14 12 1 12 1 1 14 15 1
		 15 12 1 1 15 1 15 3 1 15 16 1 16 3 1 14 17 1 17 15 1 16 17 1 17 18 1 18 16 1 13 19 1
		 19 14 1 11 20 1 20 13 1 19 20 1 20 21 1 21 19 1 10 22 1 22 11 1 8 23 1 23 10 1 22 23 1
		 23 24 1 24 22 1 7 25 1 25 8 1 5 26 1 26 7 1 25 26 1 26 27 1 27 25 1 4 28 1 28 5 1
		 3 29 1 29 4 1 28 29 1 29 30 1 30 28 1 16 29 1 18 31 1 31 16 1 29 31 1 31 30 1 19 17 1
		 21 32 1 32 19 1 17 32 1 32 18 1 22 20 1 24 33 1 33 22 1 20 33 1 33 21 1 25 23 1 27 34 1
		 34 25 1 23 34 1 34 24 1 28 26 1 30 35 1 35 28 1 26 35 1 35 27 1 36 37 1 37 38 1 38 36 1
		 37 30 1 31 37 1 38 31 1 18 38 1 36 39 1 39 37 1 39 27 1 35 39 1 37 35 1 36 40 1 40 39 1
		 40 24 1 34 40 1 39 34 1 36 41 1 41 40 1 41 21 1 33 41 1 40 33 1 38 41 1 32 38 1 41 32 1;
	setAttr -s 80 -ch 240 ".fc[0:79]" -type "polyFaces" 
		f 3 0 1 2
		f 3 3 4 5
		f 3 6 7 8
		f 3 -6 -7 -2
		f 3 -3 9 10
		f 3 -9 11 12
		f 3 13 14 15
		f 3 -13 -14 -10
		f 3 -11 16 17
		f 3 -16 18 19
		f 3 20 21 22
		f 3 -20 -21 -17
		f 3 -18 23 24
		f 3 -23 25 26
		f 3 27 28 29
		f 3 -27 -28 -24
		f 3 -25 30 -1
		f 3 -30 31 32
		f 3 33 34 -4
		f 3 -33 -34 -31
		f 3 -35 35 36
		f 3 -32 37 38
		f 3 39 40 41
		f 3 -39 -40 -36
		f 3 -29 42 43
		f 3 -26 44 45
		f 3 46 47 48
		f 3 -46 -47 -43
		f 3 -22 49 50
		f 3 -19 51 52
		f 3 53 54 55
		f 3 -53 -54 -50
		f 3 -15 56 57
		f 3 -12 58 59
		f 3 60 61 62
		f 3 -60 -61 -57
		f 3 -8 63 64
		f 3 -5 65 66
		f 3 67 68 69
		f 3 -67 -68 -64
		f 3 -37 70 -66
		f 3 -42 71 72
		f 3 73 74 -69
		f 3 -73 -74 -71
		f 3 -44 75 -38
		f 3 -49 76 77
		f 3 78 79 -41
		f 3 -78 -79 -76
		f 3 -51 80 -45
		f 3 -56 81 82
		f 3 83 84 -48
		f 3 -83 -84 -81
		f 3 -58 85 -52
		f 3 -63 86 87
		f 3 88 89 -55
		f 3 -88 -89 -86
		f 3 -65 90 -59
		f 3 -70 91 92
		f 3 93 94 -62
		f 3 -93 -94 -91
		f 3 95 96 97
		f 3 98 -75 99
		f 3 100 -72 101
		f 3 -100 -101 -97
		f 3 102 103 -96
		f 3 104 -95 105
		f 3 106 -92 -99
		f 3 -106 -107 -104
		f 3 107 108 -103
		f 3 109 -90 110
		f 3 111 -87 -105
		f 3 -111 -112 -109
		f 3 112 113 -108
		f 3 114 -85 115
		f 3 116 -82 -110
		f 3 -116 -117 -114
		f 3 -98 117 -113
		f 3 -102 -80 118
		f 3 119 -77 -115
		f 3 -119 -120 -118;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "mountain1_6" -p "RockGeo";
	rename -uid "E6CEEC21-4512-2DCB-7496-6E9273A70ACF";
	setAttr ".t" -type "double3" -6.2481592927828444 10.231191317751858 48.46165452432345 ;
createNode mesh -n "mountain1_6Shape" -p "mountain1_6";
	rename -uid "AAFA341C-4E59-E197-C288-A4B1982E93CE";
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
	setAttr -s 42 ".vt[0:41]"  -5.5569727e-10 6.6683672e-09 -0.58796507
		 2.7279394e-09 0.20855996 -0.33745706 0.3180064 0.10332671 -0.5410248 1.7477885e-09 0.38534856 -0.19267403
		 0.32514933 0.44752994 -0.34188196 0.61184579 0.19880104 -0.32166609 0.1726813 -0.23767541 -0.47535083
		 0.46169487 -0.15001363 -0.30002725 0.31028333 -0.42706838 -0.26394254 -0.13379738 -0.1841563 -0.3683126
		 3.1932318e-10 -0.47675335 -0.29464948 -0.28017479 -0.38562754 -0.23833069 -0.21158117 0.068747006 -0.35996342
		 -0.46846321 -0.15221278 -0.3044256 -0.41250825 0.13403228 -0.21686822 -0.15008704 0.20657724 -0.15781069
		 -0.16087875 0.49513397 1.0343861e-09 -0.3010985 0.21876101 -1.3840189e-08 -0.24613315 0.33877322 0.20937316
		 -0.59643972 2.0375091e-09 -7.6406592e-10 -0.5086782 -0.36957651 -1.156157e-08 -0.55562407 -0.18053347 0.29210863
		 -0.17064804 -0.52520072 -1.6551754e-09 0.17039311 -0.52441615 -1.0860212e-09 1.3611232e-09 -0.38297549 0.19148749
		 0.3338415 -0.24255018 6.9204353e-09 0.54276943 -6.7770095e-10 -3.3885048e-10 0.24765544 -0.080468304 0.13020003
		 0.54090124 0.39298791 1.7364094e-08 0.19088985 0.58749866 5.9075029e-09 0.3165668 0.43571684 0.26928759
		 5.3478327e-10 0.51145375 0.3160955 -0.31606323 0.10269506 0.2053901 -0.25411391 -0.34975803 0.26719096
		 0.1834399 -0.25248355 0.19287992 0.36031693 0.11707396 0.23414792 9.582789e-10 1.1978486e-08 0.34830755
		 0.11188844 0.15400124 0.30800247 -0.10745908 0.14790475 0.29580954 0.13755703 -0.044695061 0.23402604
		 1.5500679e-09 -0.23200808 0.37539691 -0.23098241 -0.075050861 0.39297077;
	setAttr -s 120 ".ed[0:119]"  0 1 1 1 2 1 2 0 1 1 3 1 3 4 1 4 1 1 2 4 1
		 4 5 1 5 2 1 2 6 1 6 0 1 5 7 1 7 2 1 6 7 1 7 8 1 8 6 1 6 9 1 9 0 1 8 10 1 10 6 1 9 10 1
		 10 11 1 11 9 1 9 12 1 12 0 1 11 13 1 13 9 1 12 13 1 13 14 1 14 12 1 12 1 1 14 15 1
		 15 12 1 1 15 1 15 3 1 15 16 1 16 3 1 14 17 1 17 15 1 16 17 1 17 18 1 18 16 1 13 19 1
		 19 14 1 11 20 1 20 13 1 19 20 1 20 21 1 21 19 1 10 22 1 22 11 1 8 23 1 23 10 1 22 23 1
		 23 24 1 24 22 1 7 25 1 25 8 1 5 26 1 26 7 1 25 26 1 26 27 1 27 25 1 4 28 1 28 5 1
		 3 29 1 29 4 1 28 29 1 29 30 1 30 28 1 16 29 1 18 31 1 31 16 1 29 31 1 31 30 1 19 17 1
		 21 32 1 32 19 1 17 32 1 32 18 1 22 20 1 24 33 1 33 22 1 20 33 1 33 21 1 25 23 1 27 34 1
		 34 25 1 23 34 1 34 24 1 28 26 1 30 35 1 35 28 1 26 35 1 35 27 1 36 37 1 37 38 1 38 36 1
		 37 30 1 31 37 1 38 31 1 18 38 1 36 39 1 39 37 1 39 27 1 35 39 1 37 35 1 36 40 1 40 39 1
		 40 24 1 34 40 1 39 34 1 36 41 1 41 40 1 41 21 1 33 41 1 40 33 1 38 41 1 32 38 1 41 32 1;
	setAttr -s 80 -ch 240 ".fc[0:79]" -type "polyFaces" 
		f 3 0 1 2
		f 3 3 4 5
		f 3 6 7 8
		f 3 -6 -7 -2
		f 3 -3 9 10
		f 3 -9 11 12
		f 3 13 14 15
		f 3 -13 -14 -10
		f 3 -11 16 17
		f 3 -16 18 19
		f 3 20 21 22
		f 3 -20 -21 -17
		f 3 -18 23 24
		f 3 -23 25 26
		f 3 27 28 29
		f 3 -27 -28 -24
		f 3 -25 30 -1
		f 3 -30 31 32
		f 3 33 34 -4
		f 3 -33 -34 -31
		f 3 -35 35 36
		f 3 -32 37 38
		f 3 39 40 41
		f 3 -39 -40 -36
		f 3 -29 42 43
		f 3 -26 44 45
		f 3 46 47 48
		f 3 -46 -47 -43
		f 3 -22 49 50
		f 3 -19 51 52
		f 3 53 54 55
		f 3 -53 -54 -50
		f 3 -15 56 57
		f 3 -12 58 59
		f 3 60 61 62
		f 3 -60 -61 -57
		f 3 -8 63 64
		f 3 -5 65 66
		f 3 67 68 69
		f 3 -67 -68 -64
		f 3 -37 70 -66
		f 3 -42 71 72
		f 3 73 74 -69
		f 3 -73 -74 -71
		f 3 -44 75 -38
		f 3 -49 76 77
		f 3 78 79 -41
		f 3 -78 -79 -76
		f 3 -51 80 -45
		f 3 -56 81 82
		f 3 83 84 -48
		f 3 -83 -84 -81
		f 3 -58 85 -52
		f 3 -63 86 87
		f 3 88 89 -55
		f 3 -88 -89 -86
		f 3 -65 90 -59
		f 3 -70 91 92
		f 3 93 94 -62
		f 3 -93 -94 -91
		f 3 95 96 97
		f 3 98 -75 99
		f 3 100 -72 101
		f 3 -100 -101 -97
		f 3 102 103 -96
		f 3 104 -95 105
		f 3 106 -92 -99
		f 3 -106 -107 -104
		f 3 107 108 -103
		f 3 109 -90 110
		f 3 111 -87 -105
		f 3 -111 -112 -109
		f 3 112 113 -108
		f 3 114 -85 115
		f 3 116 -82 -110
		f 3 -116 -117 -114
		f 3 -98 117 -113
		f 3 -102 -80 118
		f 3 119 -77 -115
		f 3 -119 -120 -118;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "mountain1_7" -p "RockGeo";
	rename -uid "74AB357F-41D8-8EE3-6FB2-8DB77A969796";
	setAttr ".t" -type "double3" 27.932825113989566 13.507167895226484 -68.616668343683784 ;
createNode mesh -n "mountain1_7Shape" -p "mountain1_7";
	rename -uid "5B2C5148-402E-5408-B33A-0AAA6A250B02";
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
	setAttr -s 42 ".vt[0:41]"  -5.5569727e-10 6.6683672e-09 -0.58796507
		 2.7279394e-09 0.20855996 -0.33745706 0.3180064 0.10332671 -0.5410248 1.7477885e-09 0.38534856 -0.19267403
		 0.32514933 0.44752994 -0.34188196 0.61184579 0.19880104 -0.32166609 0.1726813 -0.23767541 -0.47535083
		 0.46169487 -0.15001363 -0.30002725 0.31028333 -0.42706838 -0.26394254 -0.13379738 -0.1841563 -0.3683126
		 3.1932318e-10 -0.47675335 -0.29464948 -0.28017479 -0.38562754 -0.23833069 -0.21158117 0.068747006 -0.35996342
		 -0.46846321 -0.15221278 -0.3044256 -0.41250825 0.13403228 -0.21686822 -0.15008704 0.20657724 -0.15781069
		 -0.16087875 0.49513397 1.0343861e-09 -0.3010985 0.21876101 -1.3840189e-08 -0.24613315 0.33877322 0.20937316
		 -0.59643972 2.0375091e-09 -7.6406592e-10 -0.5086782 -0.36957651 -1.156157e-08 -0.55562407 -0.18053347 0.29210863
		 -0.17064804 -0.52520072 -1.6551754e-09 0.17039311 -0.52441615 -1.0860212e-09 1.3611232e-09 -0.38297549 0.19148749
		 0.3338415 -0.24255018 6.9204353e-09 0.54276943 -6.7770095e-10 -3.3885048e-10 0.24765544 -0.080468304 0.13020003
		 0.54090124 0.39298791 1.7364094e-08 0.19088985 0.58749866 5.9075029e-09 0.3165668 0.43571684 0.26928759
		 5.3478327e-10 0.51145375 0.3160955 -0.31606323 0.10269506 0.2053901 -0.25411391 -0.34975803 0.26719096
		 0.1834399 -0.25248355 0.19287992 0.36031693 0.11707396 0.23414792 9.582789e-10 1.1978486e-08 0.34830755
		 0.11188844 0.15400124 0.30800247 -0.10745908 0.14790475 0.29580954 0.13755703 -0.044695061 0.23402604
		 1.5500679e-09 -0.23200808 0.37539691 -0.23098241 -0.075050861 0.39297077;
	setAttr -s 120 ".ed[0:119]"  0 1 1 1 2 1 2 0 1 1 3 1 3 4 1 4 1 1 2 4 1
		 4 5 1 5 2 1 2 6 1 6 0 1 5 7 1 7 2 1 6 7 1 7 8 1 8 6 1 6 9 1 9 0 1 8 10 1 10 6 1 9 10 1
		 10 11 1 11 9 1 9 12 1 12 0 1 11 13 1 13 9 1 12 13 1 13 14 1 14 12 1 12 1 1 14 15 1
		 15 12 1 1 15 1 15 3 1 15 16 1 16 3 1 14 17 1 17 15 1 16 17 1 17 18 1 18 16 1 13 19 1
		 19 14 1 11 20 1 20 13 1 19 20 1 20 21 1 21 19 1 10 22 1 22 11 1 8 23 1 23 10 1 22 23 1
		 23 24 1 24 22 1 7 25 1 25 8 1 5 26 1 26 7 1 25 26 1 26 27 1 27 25 1 4 28 1 28 5 1
		 3 29 1 29 4 1 28 29 1 29 30 1 30 28 1 16 29 1 18 31 1 31 16 1 29 31 1 31 30 1 19 17 1
		 21 32 1 32 19 1 17 32 1 32 18 1 22 20 1 24 33 1 33 22 1 20 33 1 33 21 1 25 23 1 27 34 1
		 34 25 1 23 34 1 34 24 1 28 26 1 30 35 1 35 28 1 26 35 1 35 27 1 36 37 1 37 38 1 38 36 1
		 37 30 1 31 37 1 38 31 1 18 38 1 36 39 1 39 37 1 39 27 1 35 39 1 37 35 1 36 40 1 40 39 1
		 40 24 1 34 40 1 39 34 1 36 41 1 41 40 1 41 21 1 33 41 1 40 33 1 38 41 1 32 38 1 41 32 1;
	setAttr -s 80 -ch 240 ".fc[0:79]" -type "polyFaces" 
		f 3 0 1 2
		f 3 3 4 5
		f 3 6 7 8
		f 3 -6 -7 -2
		f 3 -3 9 10
		f 3 -9 11 12
		f 3 13 14 15
		f 3 -13 -14 -10
		f 3 -11 16 17
		f 3 -16 18 19
		f 3 20 21 22
		f 3 -20 -21 -17
		f 3 -18 23 24
		f 3 -23 25 26
		f 3 27 28 29
		f 3 -27 -28 -24
		f 3 -25 30 -1
		f 3 -30 31 32
		f 3 33 34 -4
		f 3 -33 -34 -31
		f 3 -35 35 36
		f 3 -32 37 38
		f 3 39 40 41
		f 3 -39 -40 -36
		f 3 -29 42 43
		f 3 -26 44 45
		f 3 46 47 48
		f 3 -46 -47 -43
		f 3 -22 49 50
		f 3 -19 51 52
		f 3 53 54 55
		f 3 -53 -54 -50
		f 3 -15 56 57
		f 3 -12 58 59
		f 3 60 61 62
		f 3 -60 -61 -57
		f 3 -8 63 64
		f 3 -5 65 66
		f 3 67 68 69
		f 3 -67 -68 -64
		f 3 -37 70 -66
		f 3 -42 71 72
		f 3 73 74 -69
		f 3 -73 -74 -71
		f 3 -44 75 -38
		f 3 -49 76 77
		f 3 78 79 -41
		f 3 -78 -79 -76
		f 3 -51 80 -45
		f 3 -56 81 82
		f 3 83 84 -48
		f 3 -83 -84 -81
		f 3 -58 85 -52
		f 3 -63 86 87
		f 3 88 89 -55
		f 3 -88 -89 -86
		f 3 -65 90 -59
		f 3 -70 91 92
		f 3 93 94 -62
		f 3 -93 -94 -91
		f 3 95 96 97
		f 3 98 -75 99
		f 3 100 -72 101
		f 3 -100 -101 -97
		f 3 102 103 -96
		f 3 104 -95 105
		f 3 106 -92 -99
		f 3 -106 -107 -104
		f 3 107 108 -103
		f 3 109 -90 110
		f 3 111 -87 -105
		f 3 -111 -112 -109
		f 3 112 113 -108
		f 3 114 -85 115
		f 3 116 -82 -110
		f 3 -116 -117 -114
		f 3 -98 117 -113
		f 3 -102 -80 118
		f 3 119 -77 -115
		f 3 -119 -120 -118;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "mountain1_8" -p "RockGeo";
	rename -uid "F66225FA-4076-42BB-A502-48A0D61B33A9";
	setAttr ".t" -type "double3" 11.871568935107035 2.9786888480985141 7.547526612483324 ;
createNode mesh -n "mountain1_8Shape" -p "mountain1_8";
	rename -uid "2BAED3B9-4323-99D9-395B-30B8DCA91DE5";
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
	setAttr -s 42 ".vt[0:41]"  -5.5569727e-10 6.6683672e-09 -0.58796507
		 2.7279394e-09 0.20855996 -0.33745706 0.3180064 0.10332671 -0.5410248 1.7477885e-09 0.38534856 -0.19267403
		 0.32514933 0.44752994 -0.34188196 0.61184579 0.19880104 -0.32166609 0.1726813 -0.23767541 -0.47535083
		 0.46169487 -0.15001363 -0.30002725 0.31028333 -0.42706838 -0.26394254 -0.13379738 -0.1841563 -0.3683126
		 3.1932318e-10 -0.47675335 -0.29464948 -0.28017479 -0.38562754 -0.23833069 -0.21158117 0.068747006 -0.35996342
		 -0.46846321 -0.15221278 -0.3044256 -0.41250825 0.13403228 -0.21686822 -0.15008704 0.20657724 -0.15781069
		 -0.16087875 0.49513397 1.0343861e-09 -0.3010985 0.21876101 -1.3840189e-08 -0.24613315 0.33877322 0.20937316
		 -0.59643972 2.0375091e-09 -7.6406592e-10 -0.5086782 -0.36957651 -1.156157e-08 -0.55562407 -0.18053347 0.29210863
		 -0.17064804 -0.52520072 -1.6551754e-09 0.17039311 -0.52441615 -1.0860212e-09 1.3611232e-09 -0.38297549 0.19148749
		 0.3338415 -0.24255018 6.9204353e-09 0.54276943 -6.7770095e-10 -3.3885048e-10 0.24765544 -0.080468304 0.13020003
		 0.54090124 0.39298791 1.7364094e-08 0.19088985 0.58749866 5.9075029e-09 0.3165668 0.43571684 0.26928759
		 5.3478327e-10 0.51145375 0.3160955 -0.31606323 0.10269506 0.2053901 -0.25411391 -0.34975803 0.26719096
		 0.1834399 -0.25248355 0.19287992 0.36031693 0.11707396 0.23414792 9.582789e-10 1.1978486e-08 0.34830755
		 0.11188844 0.15400124 0.30800247 -0.10745908 0.14790475 0.29580954 0.13755703 -0.044695061 0.23402604
		 1.5500679e-09 -0.23200808 0.37539691 -0.23098241 -0.075050861 0.39297077;
	setAttr -s 120 ".ed[0:119]"  0 1 1 1 2 1 2 0 1 1 3 1 3 4 1 4 1 1 2 4 1
		 4 5 1 5 2 1 2 6 1 6 0 1 5 7 1 7 2 1 6 7 1 7 8 1 8 6 1 6 9 1 9 0 1 8 10 1 10 6 1 9 10 1
		 10 11 1 11 9 1 9 12 1 12 0 1 11 13 1 13 9 1 12 13 1 13 14 1 14 12 1 12 1 1 14 15 1
		 15 12 1 1 15 1 15 3 1 15 16 1 16 3 1 14 17 1 17 15 1 16 17 1 17 18 1 18 16 1 13 19 1
		 19 14 1 11 20 1 20 13 1 19 20 1 20 21 1 21 19 1 10 22 1 22 11 1 8 23 1 23 10 1 22 23 1
		 23 24 1 24 22 1 7 25 1 25 8 1 5 26 1 26 7 1 25 26 1 26 27 1 27 25 1 4 28 1 28 5 1
		 3 29 1 29 4 1 28 29 1 29 30 1 30 28 1 16 29 1 18 31 1 31 16 1 29 31 1 31 30 1 19 17 1
		 21 32 1 32 19 1 17 32 1 32 18 1 22 20 1 24 33 1 33 22 1 20 33 1 33 21 1 25 23 1 27 34 1
		 34 25 1 23 34 1 34 24 1 28 26 1 30 35 1 35 28 1 26 35 1 35 27 1 36 37 1 37 38 1 38 36 1
		 37 30 1 31 37 1 38 31 1 18 38 1 36 39 1 39 37 1 39 27 1 35 39 1 37 35 1 36 40 1 40 39 1
		 40 24 1 34 40 1 39 34 1 36 41 1 41 40 1 41 21 1 33 41 1 40 33 1 38 41 1 32 38 1 41 32 1;
	setAttr -s 80 -ch 240 ".fc[0:79]" -type "polyFaces" 
		f 3 0 1 2
		f 3 3 4 5
		f 3 6 7 8
		f 3 -6 -7 -2
		f 3 -3 9 10
		f 3 -9 11 12
		f 3 13 14 15
		f 3 -13 -14 -10
		f 3 -11 16 17
		f 3 -16 18 19
		f 3 20 21 22
		f 3 -20 -21 -17
		f 3 -18 23 24
		f 3 -23 25 26
		f 3 27 28 29
		f 3 -27 -28 -24
		f 3 -25 30 -1
		f 3 -30 31 32
		f 3 33 34 -4
		f 3 -33 -34 -31
		f 3 -35 35 36
		f 3 -32 37 38
		f 3 39 40 41
		f 3 -39 -40 -36
		f 3 -29 42 43
		f 3 -26 44 45
		f 3 46 47 48
		f 3 -46 -47 -43
		f 3 -22 49 50
		f 3 -19 51 52
		f 3 53 54 55
		f 3 -53 -54 -50
		f 3 -15 56 57
		f 3 -12 58 59
		f 3 60 61 62
		f 3 -60 -61 -57
		f 3 -8 63 64
		f 3 -5 65 66
		f 3 67 68 69
		f 3 -67 -68 -64
		f 3 -37 70 -66
		f 3 -42 71 72
		f 3 73 74 -69
		f 3 -73 -74 -71
		f 3 -44 75 -38
		f 3 -49 76 77
		f 3 78 79 -41
		f 3 -78 -79 -76
		f 3 -51 80 -45
		f 3 -56 81 82
		f 3 83 84 -48
		f 3 -83 -84 -81
		f 3 -58 85 -52
		f 3 -63 86 87
		f 3 88 89 -55
		f 3 -88 -89 -86
		f 3 -65 90 -59
		f 3 -70 91 92
		f 3 93 94 -62
		f 3 -93 -94 -91
		f 3 95 96 97
		f 3 98 -75 99
		f 3 100 -72 101
		f 3 -100 -101 -97
		f 3 102 103 -96
		f 3 104 -95 105
		f 3 106 -92 -99
		f 3 -106 -107 -104
		f 3 107 108 -103
		f 3 109 -90 110
		f 3 111 -87 -105
		f 3 -111 -112 -109
		f 3 112 113 -108
		f 3 114 -85 115
		f 3 116 -82 -110
		f 3 -116 -117 -114
		f 3 -98 117 -113
		f 3 -102 -80 118
		f 3 119 -77 -115
		f 3 -119 -120 -118;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "mountain1_9" -p "RockGeo";
	rename -uid "7868A3AD-4AF6-BDF6-385E-E48CD8AF9AF3";
	setAttr ".t" -type "double3" -1.0464984365901842 -3.6951316187471228 -39.019021550683419 ;
createNode mesh -n "mountain1_9Shape" -p "mountain1_9";
	rename -uid "A27DEDE0-4A8A-CBB2-4E3A-67BC9B3F5B23";
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
	setAttr -s 42 ".vt[0:41]"  -5.5569727e-10 6.6683672e-09 -0.58796507
		 2.7279394e-09 0.20855996 -0.33745706 0.3180064 0.10332671 -0.5410248 1.7477885e-09 0.38534856 -0.19267403
		 0.32514933 0.44752994 -0.34188196 0.61184579 0.19880104 -0.32166609 0.1726813 -0.23767541 -0.47535083
		 0.46169487 -0.15001363 -0.30002725 0.31028333 -0.42706838 -0.26394254 -0.13379738 -0.1841563 -0.3683126
		 3.1932318e-10 -0.47675335 -0.29464948 -0.28017479 -0.38562754 -0.23833069 -0.21158117 0.068747006 -0.35996342
		 -0.46846321 -0.15221278 -0.3044256 -0.41250825 0.13403228 -0.21686822 -0.15008704 0.20657724 -0.15781069
		 -0.16087875 0.49513397 1.0343861e-09 -0.3010985 0.21876101 -1.3840189e-08 -0.24613315 0.33877322 0.20937316
		 -0.59643972 2.0375091e-09 -7.6406592e-10 -0.5086782 -0.36957651 -1.156157e-08 -0.55562407 -0.18053347 0.29210863
		 -0.17064804 -0.52520072 -1.6551754e-09 0.17039311 -0.52441615 -1.0860212e-09 1.3611232e-09 -0.38297549 0.19148749
		 0.3338415 -0.24255018 6.9204353e-09 0.54276943 -6.7770095e-10 -3.3885048e-10 0.24765544 -0.080468304 0.13020003
		 0.54090124 0.39298791 1.7364094e-08 0.19088985 0.58749866 5.9075029e-09 0.3165668 0.43571684 0.26928759
		 5.3478327e-10 0.51145375 0.3160955 -0.31606323 0.10269506 0.2053901 -0.25411391 -0.34975803 0.26719096
		 0.1834399 -0.25248355 0.19287992 0.36031693 0.11707396 0.23414792 9.582789e-10 1.1978486e-08 0.34830755
		 0.11188844 0.15400124 0.30800247 -0.10745908 0.14790475 0.29580954 0.13755703 -0.044695061 0.23402604
		 1.5500679e-09 -0.23200808 0.37539691 -0.23098241 -0.075050861 0.39297077;
	setAttr -s 120 ".ed[0:119]"  0 1 1 1 2 1 2 0 1 1 3 1 3 4 1 4 1 1 2 4 1
		 4 5 1 5 2 1 2 6 1 6 0 1 5 7 1 7 2 1 6 7 1 7 8 1 8 6 1 6 9 1 9 0 1 8 10 1 10 6 1 9 10 1
		 10 11 1 11 9 1 9 12 1 12 0 1 11 13 1 13 9 1 12 13 1 13 14 1 14 12 1 12 1 1 14 15 1
		 15 12 1 1 15 1 15 3 1 15 16 1 16 3 1 14 17 1 17 15 1 16 17 1 17 18 1 18 16 1 13 19 1
		 19 14 1 11 20 1 20 13 1 19 20 1 20 21 1 21 19 1 10 22 1 22 11 1 8 23 1 23 10 1 22 23 1
		 23 24 1 24 22 1 7 25 1 25 8 1 5 26 1 26 7 1 25 26 1 26 27 1 27 25 1 4 28 1 28 5 1
		 3 29 1 29 4 1 28 29 1 29 30 1 30 28 1 16 29 1 18 31 1 31 16 1 29 31 1 31 30 1 19 17 1
		 21 32 1 32 19 1 17 32 1 32 18 1 22 20 1 24 33 1 33 22 1 20 33 1 33 21 1 25 23 1 27 34 1
		 34 25 1 23 34 1 34 24 1 28 26 1 30 35 1 35 28 1 26 35 1 35 27 1 36 37 1 37 38 1 38 36 1
		 37 30 1 31 37 1 38 31 1 18 38 1 36 39 1 39 37 1 39 27 1 35 39 1 37 35 1 36 40 1 40 39 1
		 40 24 1 34 40 1 39 34 1 36 41 1 41 40 1 41 21 1 33 41 1 40 33 1 38 41 1 32 38 1 41 32 1;
	setAttr -s 80 -ch 240 ".fc[0:79]" -type "polyFaces" 
		f 3 0 1 2
		f 3 3 4 5
		f 3 6 7 8
		f 3 -6 -7 -2
		f 3 -3 9 10
		f 3 -9 11 12
		f 3 13 14 15
		f 3 -13 -14 -10
		f 3 -11 16 17
		f 3 -16 18 19
		f 3 20 21 22
		f 3 -20 -21 -17
		f 3 -18 23 24
		f 3 -23 25 26
		f 3 27 28 29
		f 3 -27 -28 -24
		f 3 -25 30 -1
		f 3 -30 31 32
		f 3 33 34 -4
		f 3 -33 -34 -31
		f 3 -35 35 36
		f 3 -32 37 38
		f 3 39 40 41
		f 3 -39 -40 -36
		f 3 -29 42 43
		f 3 -26 44 45
		f 3 46 47 48
		f 3 -46 -47 -43
		f 3 -22 49 50
		f 3 -19 51 52
		f 3 53 54 55
		f 3 -53 -54 -50
		f 3 -15 56 57
		f 3 -12 58 59
		f 3 60 61 62
		f 3 -60 -61 -57
		f 3 -8 63 64
		f 3 -5 65 66
		f 3 67 68 69
		f 3 -67 -68 -64
		f 3 -37 70 -66
		f 3 -42 71 72
		f 3 73 74 -69
		f 3 -73 -74 -71
		f 3 -44 75 -38
		f 3 -49 76 77
		f 3 78 79 -41
		f 3 -78 -79 -76
		f 3 -51 80 -45
		f 3 -56 81 82
		f 3 83 84 -48
		f 3 -83 -84 -81
		f 3 -58 85 -52
		f 3 -63 86 87
		f 3 88 89 -55
		f 3 -88 -89 -86
		f 3 -65 90 -59
		f 3 -70 91 92
		f 3 93 94 -62
		f 3 -93 -94 -91
		f 3 95 96 97
		f 3 98 -75 99
		f 3 100 -72 101
		f 3 -100 -101 -97
		f 3 102 103 -96
		f 3 104 -95 105
		f 3 106 -92 -99
		f 3 -106 -107 -104
		f 3 107 108 -103
		f 3 109 -90 110
		f 3 111 -87 -105
		f 3 -111 -112 -109
		f 3 112 113 -108
		f 3 114 -85 115
		f 3 116 -82 -110
		f 3 -116 -117 -114
		f 3 -98 117 -113
		f 3 -102 -80 118
		f 3 119 -77 -115
		f 3 -119 -120 -118;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "mountain1_10" -p "RockGeo";
	rename -uid "595E9DFE-4B3E-4D32-1E8F-E1B2FB306CDD";
	setAttr ".t" -type "double3" 22.833047515626248 0.50712484900675037 -86.973252954472713 ;
createNode mesh -n "mountain1_10Shape" -p "mountain1_10";
	rename -uid "FEE048E5-4207-B610-AA32-979E4E3D5107";
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
	setAttr -s 42 ".vt[0:41]"  -5.5569727e-10 6.6683672e-09 -0.58796507
		 2.7279394e-09 0.20855996 -0.33745706 0.3180064 0.10332671 -0.5410248 1.7477885e-09 0.38534856 -0.19267403
		 0.32514933 0.44752994 -0.34188196 0.61184579 0.19880104 -0.32166609 0.1726813 -0.23767541 -0.47535083
		 0.46169487 -0.15001363 -0.30002725 0.31028333 -0.42706838 -0.26394254 -0.13379738 -0.1841563 -0.3683126
		 3.1932318e-10 -0.47675335 -0.29464948 -0.28017479 -0.38562754 -0.23833069 -0.21158117 0.068747006 -0.35996342
		 -0.46846321 -0.15221278 -0.3044256 -0.41250825 0.13403228 -0.21686822 -0.15008704 0.20657724 -0.15781069
		 -0.16087875 0.49513397 1.0343861e-09 -0.3010985 0.21876101 -1.3840189e-08 -0.24613315 0.33877322 0.20937316
		 -0.59643972 2.0375091e-09 -7.6406592e-10 -0.5086782 -0.36957651 -1.156157e-08 -0.55562407 -0.18053347 0.29210863
		 -0.17064804 -0.52520072 -1.6551754e-09 0.17039311 -0.52441615 -1.0860212e-09 1.3611232e-09 -0.38297549 0.19148749
		 0.3338415 -0.24255018 6.9204353e-09 0.54276943 -6.7770095e-10 -3.3885048e-10 0.24765544 -0.080468304 0.13020003
		 0.54090124 0.39298791 1.7364094e-08 0.19088985 0.58749866 5.9075029e-09 0.3165668 0.43571684 0.26928759
		 5.3478327e-10 0.51145375 0.3160955 -0.31606323 0.10269506 0.2053901 -0.25411391 -0.34975803 0.26719096
		 0.1834399 -0.25248355 0.19287992 0.36031693 0.11707396 0.23414792 9.582789e-10 1.1978486e-08 0.34830755
		 0.11188844 0.15400124 0.30800247 -0.10745908 0.14790475 0.29580954 0.13755703 -0.044695061 0.23402604
		 1.5500679e-09 -0.23200808 0.37539691 -0.23098241 -0.075050861 0.39297077;
	setAttr -s 120 ".ed[0:119]"  0 1 1 1 2 1 2 0 1 1 3 1 3 4 1 4 1 1 2 4 1
		 4 5 1 5 2 1 2 6 1 6 0 1 5 7 1 7 2 1 6 7 1 7 8 1 8 6 1 6 9 1 9 0 1 8 10 1 10 6 1 9 10 1
		 10 11 1 11 9 1 9 12 1 12 0 1 11 13 1 13 9 1 12 13 1 13 14 1 14 12 1 12 1 1 14 15 1
		 15 12 1 1 15 1 15 3 1 15 16 1 16 3 1 14 17 1 17 15 1 16 17 1 17 18 1 18 16 1 13 19 1
		 19 14 1 11 20 1 20 13 1 19 20 1 20 21 1 21 19 1 10 22 1 22 11 1 8 23 1 23 10 1 22 23 1
		 23 24 1 24 22 1 7 25 1 25 8 1 5 26 1 26 7 1 25 26 1 26 27 1 27 25 1 4 28 1 28 5 1
		 3 29 1 29 4 1 28 29 1 29 30 1 30 28 1 16 29 1 18 31 1 31 16 1 29 31 1 31 30 1 19 17 1
		 21 32 1 32 19 1 17 32 1 32 18 1 22 20 1 24 33 1 33 22 1 20 33 1 33 21 1 25 23 1 27 34 1
		 34 25 1 23 34 1 34 24 1 28 26 1 30 35 1 35 28 1 26 35 1 35 27 1 36 37 1 37 38 1 38 36 1
		 37 30 1 31 37 1 38 31 1 18 38 1 36 39 1 39 37 1 39 27 1 35 39 1 37 35 1 36 40 1 40 39 1
		 40 24 1 34 40 1 39 34 1 36 41 1 41 40 1 41 21 1 33 41 1 40 33 1 38 41 1 32 38 1 41 32 1;
	setAttr -s 80 -ch 240 ".fc[0:79]" -type "polyFaces" 
		f 3 0 1 2
		f 3 3 4 5
		f 3 6 7 8
		f 3 -6 -7 -2
		f 3 -3 9 10
		f 3 -9 11 12
		f 3 13 14 15
		f 3 -13 -14 -10
		f 3 -11 16 17
		f 3 -16 18 19
		f 3 20 21 22
		f 3 -20 -21 -17
		f 3 -18 23 24
		f 3 -23 25 26
		f 3 27 28 29
		f 3 -27 -28 -24
		f 3 -25 30 -1
		f 3 -30 31 32
		f 3 33 34 -4
		f 3 -33 -34 -31
		f 3 -35 35 36
		f 3 -32 37 38
		f 3 39 40 41
		f 3 -39 -40 -36
		f 3 -29 42 43
		f 3 -26 44 45
		f 3 46 47 48
		f 3 -46 -47 -43
		f 3 -22 49 50
		f 3 -19 51 52
		f 3 53 54 55
		f 3 -53 -54 -50
		f 3 -15 56 57
		f 3 -12 58 59
		f 3 60 61 62
		f 3 -60 -61 -57
		f 3 -8 63 64
		f 3 -5 65 66
		f 3 67 68 69
		f 3 -67 -68 -64
		f 3 -37 70 -66
		f 3 -42 71 72
		f 3 73 74 -69
		f 3 -73 -74 -71
		f 3 -44 75 -38
		f 3 -49 76 77
		f 3 78 79 -41
		f 3 -78 -79 -76
		f 3 -51 80 -45
		f 3 -56 81 82
		f 3 83 84 -48
		f 3 -83 -84 -81
		f 3 -58 85 -52
		f 3 -63 86 87
		f 3 88 89 -55
		f 3 -88 -89 -86
		f 3 -65 90 -59
		f 3 -70 91 92
		f 3 93 94 -62
		f 3 -93 -94 -91
		f 3 95 96 97
		f 3 98 -75 99
		f 3 100 -72 101
		f 3 -100 -101 -97
		f 3 102 103 -96
		f 3 104 -95 105
		f 3 106 -92 -99
		f 3 -106 -107 -104
		f 3 107 108 -103
		f 3 109 -90 110
		f 3 111 -87 -105
		f 3 -111 -112 -109
		f 3 112 113 -108
		f 3 114 -85 115
		f 3 116 -82 -110
		f 3 -116 -117 -114
		f 3 -98 117 -113
		f 3 -102 -80 118
		f 3 119 -77 -115
		f 3 -119 -120 -118;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "mountain1_11" -p "RockGeo";
	rename -uid "BA857343-449F-AF2F-FE31-6A982AA27AFA";
	setAttr ".t" -type "double3" 10.806833905314193 7.1720268556607003 25.025486213603187 ;
createNode mesh -n "mountain1_11Shape" -p "mountain1_11";
	rename -uid "C87CB22E-47C1-5AAA-EAF4-40861A891ED5";
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
	setAttr -s 42 ".vt[0:41]"  -5.5569727e-10 6.6683672e-09 -0.58796507
		 2.7279394e-09 0.20855996 -0.33745706 0.3180064 0.10332671 -0.5410248 1.7477885e-09 0.38534856 -0.19267403
		 0.32514933 0.44752994 -0.34188196 0.61184579 0.19880104 -0.32166609 0.1726813 -0.23767541 -0.47535083
		 0.46169487 -0.15001363 -0.30002725 0.31028333 -0.42706838 -0.26394254 -0.13379738 -0.1841563 -0.3683126
		 3.1932318e-10 -0.47675335 -0.29464948 -0.28017479 -0.38562754 -0.23833069 -0.21158117 0.068747006 -0.35996342
		 -0.46846321 -0.15221278 -0.3044256 -0.41250825 0.13403228 -0.21686822 -0.15008704 0.20657724 -0.15781069
		 -0.16087875 0.49513397 1.0343861e-09 -0.3010985 0.21876101 -1.3840189e-08 -0.24613315 0.33877322 0.20937316
		 -0.59643972 2.0375091e-09 -7.6406592e-10 -0.5086782 -0.36957651 -1.156157e-08 -0.55562407 -0.18053347 0.29210863
		 -0.17064804 -0.52520072 -1.6551754e-09 0.17039311 -0.52441615 -1.0860212e-09 1.3611232e-09 -0.38297549 0.19148749
		 0.3338415 -0.24255018 6.9204353e-09 0.54276943 -6.7770095e-10 -3.3885048e-10 0.24765544 -0.080468304 0.13020003
		 0.54090124 0.39298791 1.7364094e-08 0.19088985 0.58749866 5.9075029e-09 0.3165668 0.43571684 0.26928759
		 5.3478327e-10 0.51145375 0.3160955 -0.31606323 0.10269506 0.2053901 -0.25411391 -0.34975803 0.26719096
		 0.1834399 -0.25248355 0.19287992 0.36031693 0.11707396 0.23414792 9.582789e-10 1.1978486e-08 0.34830755
		 0.11188844 0.15400124 0.30800247 -0.10745908 0.14790475 0.29580954 0.13755703 -0.044695061 0.23402604
		 1.5500679e-09 -0.23200808 0.37539691 -0.23098241 -0.075050861 0.39297077;
	setAttr -s 120 ".ed[0:119]"  0 1 1 1 2 1 2 0 1 1 3 1 3 4 1 4 1 1 2 4 1
		 4 5 1 5 2 1 2 6 1 6 0 1 5 7 1 7 2 1 6 7 1 7 8 1 8 6 1 6 9 1 9 0 1 8 10 1 10 6 1 9 10 1
		 10 11 1 11 9 1 9 12 1 12 0 1 11 13 1 13 9 1 12 13 1 13 14 1 14 12 1 12 1 1 14 15 1
		 15 12 1 1 15 1 15 3 1 15 16 1 16 3 1 14 17 1 17 15 1 16 17 1 17 18 1 18 16 1 13 19 1
		 19 14 1 11 20 1 20 13 1 19 20 1 20 21 1 21 19 1 10 22 1 22 11 1 8 23 1 23 10 1 22 23 1
		 23 24 1 24 22 1 7 25 1 25 8 1 5 26 1 26 7 1 25 26 1 26 27 1 27 25 1 4 28 1 28 5 1
		 3 29 1 29 4 1 28 29 1 29 30 1 30 28 1 16 29 1 18 31 1 31 16 1 29 31 1 31 30 1 19 17 1
		 21 32 1 32 19 1 17 32 1 32 18 1 22 20 1 24 33 1 33 22 1 20 33 1 33 21 1 25 23 1 27 34 1
		 34 25 1 23 34 1 34 24 1 28 26 1 30 35 1 35 28 1 26 35 1 35 27 1 36 37 1 37 38 1 38 36 1
		 37 30 1 31 37 1 38 31 1 18 38 1 36 39 1 39 37 1 39 27 1 35 39 1 37 35 1 36 40 1 40 39 1
		 40 24 1 34 40 1 39 34 1 36 41 1 41 40 1 41 21 1 33 41 1 40 33 1 38 41 1 32 38 1 41 32 1;
	setAttr -s 80 -ch 240 ".fc[0:79]" -type "polyFaces" 
		f 3 0 1 2
		f 3 3 4 5
		f 3 6 7 8
		f 3 -6 -7 -2
		f 3 -3 9 10
		f 3 -9 11 12
		f 3 13 14 15
		f 3 -13 -14 -10
		f 3 -11 16 17
		f 3 -16 18 19
		f 3 20 21 22
		f 3 -20 -21 -17
		f 3 -18 23 24
		f 3 -23 25 26
		f 3 27 28 29
		f 3 -27 -28 -24
		f 3 -25 30 -1
		f 3 -30 31 32
		f 3 33 34 -4
		f 3 -33 -34 -31
		f 3 -35 35 36
		f 3 -32 37 38
		f 3 39 40 41
		f 3 -39 -40 -36
		f 3 -29 42 43
		f 3 -26 44 45
		f 3 46 47 48
		f 3 -46 -47 -43
		f 3 -22 49 50
		f 3 -19 51 52
		f 3 53 54 55
		f 3 -53 -54 -50
		f 3 -15 56 57
		f 3 -12 58 59
		f 3 60 61 62
		f 3 -60 -61 -57
		f 3 -8 63 64
		f 3 -5 65 66
		f 3 67 68 69
		f 3 -67 -68 -64
		f 3 -37 70 -66
		f 3 -42 71 72
		f 3 73 74 -69
		f 3 -73 -74 -71
		f 3 -44 75 -38
		f 3 -49 76 77
		f 3 78 79 -41
		f 3 -78 -79 -76
		f 3 -51 80 -45
		f 3 -56 81 82
		f 3 83 84 -48
		f 3 -83 -84 -81
		f 3 -58 85 -52
		f 3 -63 86 87
		f 3 88 89 -55
		f 3 -88 -89 -86
		f 3 -65 90 -59
		f 3 -70 91 92
		f 3 93 94 -62
		f 3 -93 -94 -91
		f 3 95 96 97
		f 3 98 -75 99
		f 3 100 -72 101
		f 3 -100 -101 -97
		f 3 102 103 -96
		f 3 104 -95 105
		f 3 106 -92 -99
		f 3 -106 -107 -104
		f 3 107 108 -103
		f 3 109 -90 110
		f 3 111 -87 -105
		f 3 -111 -112 -109
		f 3 112 113 -108
		f 3 114 -85 115
		f 3 116 -82 -110
		f 3 -116 -117 -114
		f 3 -98 117 -113
		f 3 -102 -80 118
		f 3 119 -77 -115
		f 3 -119 -120 -118;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "mountain1_12" -p "RockGeo";
	rename -uid "5F55B712-4EC3-B089-9D62-458EC9C2E939";
	setAttr ".t" -type "double3" 0.44250213335899957 11.071684172179346 -13.02489918917118 ;
createNode mesh -n "mountain1_12Shape" -p "mountain1_12";
	rename -uid "F310B94D-4084-A0B8-25FE-ACB22BD4ADA5";
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
	setAttr -s 42 ".vt[0:41]"  -5.5569727e-10 6.6683672e-09 -0.58796507
		 2.7279394e-09 0.20855996 -0.33745706 0.3180064 0.10332671 -0.5410248 1.7477885e-09 0.38534856 -0.19267403
		 0.32514933 0.44752994 -0.34188196 0.61184579 0.19880104 -0.32166609 0.1726813 -0.23767541 -0.47535083
		 0.46169487 -0.15001363 -0.30002725 0.31028333 -0.42706838 -0.26394254 -0.13379738 -0.1841563 -0.3683126
		 3.1932318e-10 -0.47675335 -0.29464948 -0.28017479 -0.38562754 -0.23833069 -0.21158117 0.068747006 -0.35996342
		 -0.46846321 -0.15221278 -0.3044256 -0.41250825 0.13403228 -0.21686822 -0.15008704 0.20657724 -0.15781069
		 -0.16087875 0.49513397 1.0343861e-09 -0.3010985 0.21876101 -1.3840189e-08 -0.24613315 0.33877322 0.20937316
		 -0.59643972 2.0375091e-09 -7.6406592e-10 -0.5086782 -0.36957651 -1.156157e-08 -0.55562407 -0.18053347 0.29210863
		 -0.17064804 -0.52520072 -1.6551754e-09 0.17039311 -0.52441615 -1.0860212e-09 1.3611232e-09 -0.38297549 0.19148749
		 0.3338415 -0.24255018 6.9204353e-09 0.54276943 -6.7770095e-10 -3.3885048e-10 0.24765544 -0.080468304 0.13020003
		 0.54090124 0.39298791 1.7364094e-08 0.19088985 0.58749866 5.9075029e-09 0.3165668 0.43571684 0.26928759
		 5.3478327e-10 0.51145375 0.3160955 -0.31606323 0.10269506 0.2053901 -0.25411391 -0.34975803 0.26719096
		 0.1834399 -0.25248355 0.19287992 0.36031693 0.11707396 0.23414792 9.582789e-10 1.1978486e-08 0.34830755
		 0.11188844 0.15400124 0.30800247 -0.10745908 0.14790475 0.29580954 0.13755703 -0.044695061 0.23402604
		 1.5500679e-09 -0.23200808 0.37539691 -0.23098241 -0.075050861 0.39297077;
	setAttr -s 120 ".ed[0:119]"  0 1 1 1 2 1 2 0 1 1 3 1 3 4 1 4 1 1 2 4 1
		 4 5 1 5 2 1 2 6 1 6 0 1 5 7 1 7 2 1 6 7 1 7 8 1 8 6 1 6 9 1 9 0 1 8 10 1 10 6 1 9 10 1
		 10 11 1 11 9 1 9 12 1 12 0 1 11 13 1 13 9 1 12 13 1 13 14 1 14 12 1 12 1 1 14 15 1
		 15 12 1 1 15 1 15 3 1 15 16 1 16 3 1 14 17 1 17 15 1 16 17 1 17 18 1 18 16 1 13 19 1
		 19 14 1 11 20 1 20 13 1 19 20 1 20 21 1 21 19 1 10 22 1 22 11 1 8 23 1 23 10 1 22 23 1
		 23 24 1 24 22 1 7 25 1 25 8 1 5 26 1 26 7 1 25 26 1 26 27 1 27 25 1 4 28 1 28 5 1
		 3 29 1 29 4 1 28 29 1 29 30 1 30 28 1 16 29 1 18 31 1 31 16 1 29 31 1 31 30 1 19 17 1
		 21 32 1 32 19 1 17 32 1 32 18 1 22 20 1 24 33 1 33 22 1 20 33 1 33 21 1 25 23 1 27 34 1
		 34 25 1 23 34 1 34 24 1 28 26 1 30 35 1 35 28 1 26 35 1 35 27 1 36 37 1 37 38 1 38 36 1
		 37 30 1 31 37 1 38 31 1 18 38 1 36 39 1 39 37 1 39 27 1 35 39 1 37 35 1 36 40 1 40 39 1
		 40 24 1 34 40 1 39 34 1 36 41 1 41 40 1 41 21 1 33 41 1 40 33 1 38 41 1 32 38 1 41 32 1;
	setAttr -s 80 -ch 240 ".fc[0:79]" -type "polyFaces" 
		f 3 0 1 2
		f 3 3 4 5
		f 3 6 7 8
		f 3 -6 -7 -2
		f 3 -3 9 10
		f 3 -9 11 12
		f 3 13 14 15
		f 3 -13 -14 -10
		f 3 -11 16 17
		f 3 -16 18 19
		f 3 20 21 22
		f 3 -20 -21 -17
		f 3 -18 23 24
		f 3 -23 25 26
		f 3 27 28 29
		f 3 -27 -28 -24
		f 3 -25 30 -1
		f 3 -30 31 32
		f 3 33 34 -4
		f 3 -33 -34 -31
		f 3 -35 35 36
		f 3 -32 37 38
		f 3 39 40 41
		f 3 -39 -40 -36
		f 3 -29 42 43
		f 3 -26 44 45
		f 3 46 47 48
		f 3 -46 -47 -43
		f 3 -22 49 50
		f 3 -19 51 52
		f 3 53 54 55
		f 3 -53 -54 -50
		f 3 -15 56 57
		f 3 -12 58 59
		f 3 60 61 62
		f 3 -60 -61 -57
		f 3 -8 63 64
		f 3 -5 65 66
		f 3 67 68 69
		f 3 -67 -68 -64
		f 3 -37 70 -66
		f 3 -42 71 72
		f 3 73 74 -69
		f 3 -73 -74 -71
		f 3 -44 75 -38
		f 3 -49 76 77
		f 3 78 79 -41
		f 3 -78 -79 -76
		f 3 -51 80 -45
		f 3 -56 81 82
		f 3 83 84 -48
		f 3 -83 -84 -81
		f 3 -58 85 -52
		f 3 -63 86 87
		f 3 88 89 -55
		f 3 -88 -89 -86
		f 3 -65 90 -59
		f 3 -70 91 92
		f 3 93 94 -62
		f 3 -93 -94 -91
		f 3 95 96 97
		f 3 98 -75 99
		f 3 100 -72 101
		f 3 -100 -101 -97
		f 3 102 103 -96
		f 3 104 -95 105
		f 3 106 -92 -99
		f 3 -106 -107 -104
		f 3 107 108 -103
		f 3 109 -90 110
		f 3 111 -87 -105
		f 3 -111 -112 -109
		f 3 112 113 -108
		f 3 114 -85 115
		f 3 116 -82 -110
		f 3 -116 -117 -114
		f 3 -98 117 -113
		f 3 -102 -80 118
		f 3 119 -77 -115
		f 3 -119 -120 -118;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "mountain1_13" -p "RockGeo";
	rename -uid "5B0F5DFB-47CA-243C-163B-BCA695BF54AE";
	setAttr ".t" -type "double3" 13.287499832091783 3.3424561181613122 -90.189721053647531 ;
createNode mesh -n "mountain1_13Shape" -p "mountain1_13";
	rename -uid "466E0CAC-42E6-DEE9-B91C-54BB9C2F41E2";
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
	setAttr -s 42 ".vt[0:41]"  -5.5569727e-10 6.6683672e-09 -0.58796507
		 2.7279394e-09 0.20855996 -0.33745706 0.3180064 0.10332671 -0.5410248 1.7477885e-09 0.38534856 -0.19267403
		 0.32514933 0.44752994 -0.34188196 0.61184579 0.19880104 -0.32166609 0.1726813 -0.23767541 -0.47535083
		 0.46169487 -0.15001363 -0.30002725 0.31028333 -0.42706838 -0.26394254 -0.13379738 -0.1841563 -0.3683126
		 3.1932318e-10 -0.47675335 -0.29464948 -0.28017479 -0.38562754 -0.23833069 -0.21158117 0.068747006 -0.35996342
		 -0.46846321 -0.15221278 -0.3044256 -0.41250825 0.13403228 -0.21686822 -0.15008704 0.20657724 -0.15781069
		 -0.16087875 0.49513397 1.0343861e-09 -0.3010985 0.21876101 -1.3840189e-08 -0.24613315 0.33877322 0.20937316
		 -0.59643972 2.0375091e-09 -7.6406592e-10 -0.5086782 -0.36957651 -1.156157e-08 -0.55562407 -0.18053347 0.29210863
		 -0.17064804 -0.52520072 -1.6551754e-09 0.17039311 -0.52441615 -1.0860212e-09 1.3611232e-09 -0.38297549 0.19148749
		 0.3338415 -0.24255018 6.9204353e-09 0.54276943 -6.7770095e-10 -3.3885048e-10 0.24765544 -0.080468304 0.13020003
		 0.54090124 0.39298791 1.7364094e-08 0.19088985 0.58749866 5.9075029e-09 0.3165668 0.43571684 0.26928759
		 5.3478327e-10 0.51145375 0.3160955 -0.31606323 0.10269506 0.2053901 -0.25411391 -0.34975803 0.26719096
		 0.1834399 -0.25248355 0.19287992 0.36031693 0.11707396 0.23414792 9.582789e-10 1.1978486e-08 0.34830755
		 0.11188844 0.15400124 0.30800247 -0.10745908 0.14790475 0.29580954 0.13755703 -0.044695061 0.23402604
		 1.5500679e-09 -0.23200808 0.37539691 -0.23098241 -0.075050861 0.39297077;
	setAttr -s 120 ".ed[0:119]"  0 1 1 1 2 1 2 0 1 1 3 1 3 4 1 4 1 1 2 4 1
		 4 5 1 5 2 1 2 6 1 6 0 1 5 7 1 7 2 1 6 7 1 7 8 1 8 6 1 6 9 1 9 0 1 8 10 1 10 6 1 9 10 1
		 10 11 1 11 9 1 9 12 1 12 0 1 11 13 1 13 9 1 12 13 1 13 14 1 14 12 1 12 1 1 14 15 1
		 15 12 1 1 15 1 15 3 1 15 16 1 16 3 1 14 17 1 17 15 1 16 17 1 17 18 1 18 16 1 13 19 1
		 19 14 1 11 20 1 20 13 1 19 20 1 20 21 1 21 19 1 10 22 1 22 11 1 8 23 1 23 10 1 22 23 1
		 23 24 1 24 22 1 7 25 1 25 8 1 5 26 1 26 7 1 25 26 1 26 27 1 27 25 1 4 28 1 28 5 1
		 3 29 1 29 4 1 28 29 1 29 30 1 30 28 1 16 29 1 18 31 1 31 16 1 29 31 1 31 30 1 19 17 1
		 21 32 1 32 19 1 17 32 1 32 18 1 22 20 1 24 33 1 33 22 1 20 33 1 33 21 1 25 23 1 27 34 1
		 34 25 1 23 34 1 34 24 1 28 26 1 30 35 1 35 28 1 26 35 1 35 27 1 36 37 1 37 38 1 38 36 1
		 37 30 1 31 37 1 38 31 1 18 38 1 36 39 1 39 37 1 39 27 1 35 39 1 37 35 1 36 40 1 40 39 1
		 40 24 1 34 40 1 39 34 1 36 41 1 41 40 1 41 21 1 33 41 1 40 33 1 38 41 1 32 38 1 41 32 1;
	setAttr -s 80 -ch 240 ".fc[0:79]" -type "polyFaces" 
		f 3 0 1 2
		f 3 3 4 5
		f 3 6 7 8
		f 3 -6 -7 -2
		f 3 -3 9 10
		f 3 -9 11 12
		f 3 13 14 15
		f 3 -13 -14 -10
		f 3 -11 16 17
		f 3 -16 18 19
		f 3 20 21 22
		f 3 -20 -21 -17
		f 3 -18 23 24
		f 3 -23 25 26
		f 3 27 28 29
		f 3 -27 -28 -24
		f 3 -25 30 -1
		f 3 -30 31 32
		f 3 33 34 -4
		f 3 -33 -34 -31
		f 3 -35 35 36
		f 3 -32 37 38
		f 3 39 40 41
		f 3 -39 -40 -36
		f 3 -29 42 43
		f 3 -26 44 45
		f 3 46 47 48
		f 3 -46 -47 -43
		f 3 -22 49 50
		f 3 -19 51 52
		f 3 53 54 55
		f 3 -53 -54 -50
		f 3 -15 56 57
		f 3 -12 58 59
		f 3 60 61 62
		f 3 -60 -61 -57
		f 3 -8 63 64
		f 3 -5 65 66
		f 3 67 68 69
		f 3 -67 -68 -64
		f 3 -37 70 -66
		f 3 -42 71 72
		f 3 73 74 -69
		f 3 -73 -74 -71
		f 3 -44 75 -38
		f 3 -49 76 77
		f 3 78 79 -41
		f 3 -78 -79 -76
		f 3 -51 80 -45
		f 3 -56 81 82
		f 3 83 84 -48
		f 3 -83 -84 -81
		f 3 -58 85 -52
		f 3 -63 86 87
		f 3 88 89 -55
		f 3 -88 -89 -86
		f 3 -65 90 -59
		f 3 -70 91 92
		f 3 93 94 -62
		f 3 -93 -94 -91
		f 3 95 96 97
		f 3 98 -75 99
		f 3 100 -72 101
		f 3 -100 -101 -97
		f 3 102 103 -96
		f 3 104 -95 105
		f 3 106 -92 -99
		f 3 -106 -107 -104
		f 3 107 108 -103
		f 3 109 -90 110
		f 3 111 -87 -105
		f 3 -111 -112 -109
		f 3 112 113 -108
		f 3 114 -85 115
		f 3 116 -82 -110
		f 3 -116 -117 -114
		f 3 -98 117 -113
		f 3 -102 -80 118
		f 3 119 -77 -115
		f 3 -119 -120 -118;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "mountain1_14" -p "RockGeo";
	rename -uid "D4319D43-4F7D-9A00-8D79-9296E6B1EEA5";
	setAttr ".t" -type "double3" -3.750900997831792 12.182462386109698 85.780747311947181 ;
createNode mesh -n "mountain1_14Shape" -p "mountain1_14";
	rename -uid "B055F97A-4069-4924-1B35-D89B25F7FB1A";
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
	setAttr -s 42 ".vt[0:41]"  -5.5569727e-10 6.6683672e-09 -0.58796507
		 2.7279394e-09 0.20855996 -0.33745706 0.3180064 0.10332671 -0.5410248 1.7477885e-09 0.38534856 -0.19267403
		 0.32514933 0.44752994 -0.34188196 0.61184579 0.19880104 -0.32166609 0.1726813 -0.23767541 -0.47535083
		 0.46169487 -0.15001363 -0.30002725 0.31028333 -0.42706838 -0.26394254 -0.13379738 -0.1841563 -0.3683126
		 3.1932318e-10 -0.47675335 -0.29464948 -0.28017479 -0.38562754 -0.23833069 -0.21158117 0.068747006 -0.35996342
		 -0.46846321 -0.15221278 -0.3044256 -0.41250825 0.13403228 -0.21686822 -0.15008704 0.20657724 -0.15781069
		 -0.16087875 0.49513397 1.0343861e-09 -0.3010985 0.21876101 -1.3840189e-08 -0.24613315 0.33877322 0.20937316
		 -0.59643972 2.0375091e-09 -7.6406592e-10 -0.5086782 -0.36957651 -1.156157e-08 -0.55562407 -0.18053347 0.29210863
		 -0.17064804 -0.52520072 -1.6551754e-09 0.17039311 -0.52441615 -1.0860212e-09 1.3611232e-09 -0.38297549 0.19148749
		 0.3338415 -0.24255018 6.9204353e-09 0.54276943 -6.7770095e-10 -3.3885048e-10 0.24765544 -0.080468304 0.13020003
		 0.54090124 0.39298791 1.7364094e-08 0.19088985 0.58749866 5.9075029e-09 0.3165668 0.43571684 0.26928759
		 5.3478327e-10 0.51145375 0.3160955 -0.31606323 0.10269506 0.2053901 -0.25411391 -0.34975803 0.26719096
		 0.1834399 -0.25248355 0.19287992 0.36031693 0.11707396 0.23414792 9.582789e-10 1.1978486e-08 0.34830755
		 0.11188844 0.15400124 0.30800247 -0.10745908 0.14790475 0.29580954 0.13755703 -0.044695061 0.23402604
		 1.5500679e-09 -0.23200808 0.37539691 -0.23098241 -0.075050861 0.39297077;
	setAttr -s 120 ".ed[0:119]"  0 1 1 1 2 1 2 0 1 1 3 1 3 4 1 4 1 1 2 4 1
		 4 5 1 5 2 1 2 6 1 6 0 1 5 7 1 7 2 1 6 7 1 7 8 1 8 6 1 6 9 1 9 0 1 8 10 1 10 6 1 9 10 1
		 10 11 1 11 9 1 9 12 1 12 0 1 11 13 1 13 9 1 12 13 1 13 14 1 14 12 1 12 1 1 14 15 1
		 15 12 1 1 15 1 15 3 1 15 16 1 16 3 1 14 17 1 17 15 1 16 17 1 17 18 1 18 16 1 13 19 1
		 19 14 1 11 20 1 20 13 1 19 20 1 20 21 1 21 19 1 10 22 1 22 11 1 8 23 1 23 10 1 22 23 1
		 23 24 1 24 22 1 7 25 1 25 8 1 5 26 1 26 7 1 25 26 1 26 27 1 27 25 1 4 28 1 28 5 1
		 3 29 1 29 4 1 28 29 1 29 30 1 30 28 1 16 29 1 18 31 1 31 16 1 29 31 1 31 30 1 19 17 1
		 21 32 1 32 19 1 17 32 1 32 18 1 22 20 1 24 33 1 33 22 1 20 33 1 33 21 1 25 23 1 27 34 1
		 34 25 1 23 34 1 34 24 1 28 26 1 30 35 1 35 28 1 26 35 1 35 27 1 36 37 1 37 38 1 38 36 1
		 37 30 1 31 37 1 38 31 1 18 38 1 36 39 1 39 37 1 39 27 1 35 39 1 37 35 1 36 40 1 40 39 1
		 40 24 1 34 40 1 39 34 1 36 41 1 41 40 1 41 21 1 33 41 1 40 33 1 38 41 1 32 38 1 41 32 1;
	setAttr -s 80 -ch 240 ".fc[0:79]" -type "polyFaces" 
		f 3 0 1 2
		f 3 3 4 5
		f 3 6 7 8
		f 3 -6 -7 -2
		f 3 -3 9 10
		f 3 -9 11 12
		f 3 13 14 15
		f 3 -13 -14 -10
		f 3 -11 16 17
		f 3 -16 18 19
		f 3 20 21 22
		f 3 -20 -21 -17
		f 3 -18 23 24
		f 3 -23 25 26
		f 3 27 28 29
		f 3 -27 -28 -24
		f 3 -25 30 -1
		f 3 -30 31 32
		f 3 33 34 -4
		f 3 -33 -34 -31
		f 3 -35 35 36
		f 3 -32 37 38
		f 3 39 40 41
		f 3 -39 -40 -36
		f 3 -29 42 43
		f 3 -26 44 45
		f 3 46 47 48
		f 3 -46 -47 -43
		f 3 -22 49 50
		f 3 -19 51 52
		f 3 53 54 55
		f 3 -53 -54 -50
		f 3 -15 56 57
		f 3 -12 58 59
		f 3 60 61 62
		f 3 -60 -61 -57
		f 3 -8 63 64
		f 3 -5 65 66
		f 3 67 68 69
		f 3 -67 -68 -64
		f 3 -37 70 -66
		f 3 -42 71 72
		f 3 73 74 -69
		f 3 -73 -74 -71
		f 3 -44 75 -38
		f 3 -49 76 77
		f 3 78 79 -41
		f 3 -78 -79 -76
		f 3 -51 80 -45
		f 3 -56 81 82
		f 3 83 84 -48
		f 3 -83 -84 -81
		f 3 -58 85 -52
		f 3 -63 86 87
		f 3 88 89 -55
		f 3 -88 -89 -86
		f 3 -65 90 -59
		f 3 -70 91 92
		f 3 93 94 -62
		f 3 -93 -94 -91
		f 3 95 96 97
		f 3 98 -75 99
		f 3 100 -72 101
		f 3 -100 -101 -97
		f 3 102 103 -96
		f 3 104 -95 105
		f 3 106 -92 -99
		f 3 -106 -107 -104
		f 3 107 108 -103
		f 3 109 -90 110
		f 3 111 -87 -105
		f 3 -111 -112 -109
		f 3 112 113 -108
		f 3 114 -85 115
		f 3 116 -82 -110
		f 3 -116 -117 -114
		f 3 -98 117 -113
		f 3 -102 -80 118
		f 3 119 -77 -115
		f 3 -119 -120 -118;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "mountain1_15" -p "RockGeo";
	rename -uid "7D2E1D63-4E43-D516-52BD-E084878DB160";
	setAttr ".t" -type "double3" 9.8408381774231657 17.794075937989344 -74.37626994688884 ;
createNode mesh -n "mountain1_15Shape" -p "mountain1_15";
	rename -uid "894A74AD-495C-30F3-15F9-6DA09E7D85F8";
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
	setAttr -s 42 ".vt[0:41]"  -5.5569727e-10 6.6683672e-09 -0.58796507
		 2.7279394e-09 0.20855996 -0.33745706 0.3180064 0.10332671 -0.5410248 1.7477885e-09 0.38534856 -0.19267403
		 0.32514933 0.44752994 -0.34188196 0.61184579 0.19880104 -0.32166609 0.1726813 -0.23767541 -0.47535083
		 0.46169487 -0.15001363 -0.30002725 0.31028333 -0.42706838 -0.26394254 -0.13379738 -0.1841563 -0.3683126
		 3.1932318e-10 -0.47675335 -0.29464948 -0.28017479 -0.38562754 -0.23833069 -0.21158117 0.068747006 -0.35996342
		 -0.46846321 -0.15221278 -0.3044256 -0.41250825 0.13403228 -0.21686822 -0.15008704 0.20657724 -0.15781069
		 -0.16087875 0.49513397 1.0343861e-09 -0.3010985 0.21876101 -1.3840189e-08 -0.24613315 0.33877322 0.20937316
		 -0.59643972 2.0375091e-09 -7.6406592e-10 -0.5086782 -0.36957651 -1.156157e-08 -0.55562407 -0.18053347 0.29210863
		 -0.17064804 -0.52520072 -1.6551754e-09 0.17039311 -0.52441615 -1.0860212e-09 1.3611232e-09 -0.38297549 0.19148749
		 0.3338415 -0.24255018 6.9204353e-09 0.54276943 -6.7770095e-10 -3.3885048e-10 0.24765544 -0.080468304 0.13020003
		 0.54090124 0.39298791 1.7364094e-08 0.19088985 0.58749866 5.9075029e-09 0.3165668 0.43571684 0.26928759
		 5.3478327e-10 0.51145375 0.3160955 -0.31606323 0.10269506 0.2053901 -0.25411391 -0.34975803 0.26719096
		 0.1834399 -0.25248355 0.19287992 0.36031693 0.11707396 0.23414792 9.582789e-10 1.1978486e-08 0.34830755
		 0.11188844 0.15400124 0.30800247 -0.10745908 0.14790475 0.29580954 0.13755703 -0.044695061 0.23402604
		 1.5500679e-09 -0.23200808 0.37539691 -0.23098241 -0.075050861 0.39297077;
	setAttr -s 120 ".ed[0:119]"  0 1 1 1 2 1 2 0 1 1 3 1 3 4 1 4 1 1 2 4 1
		 4 5 1 5 2 1 2 6 1 6 0 1 5 7 1 7 2 1 6 7 1 7 8 1 8 6 1 6 9 1 9 0 1 8 10 1 10 6 1 9 10 1
		 10 11 1 11 9 1 9 12 1 12 0 1 11 13 1 13 9 1 12 13 1 13 14 1 14 12 1 12 1 1 14 15 1
		 15 12 1 1 15 1 15 3 1 15 16 1 16 3 1 14 17 1 17 15 1 16 17 1 17 18 1 18 16 1 13 19 1
		 19 14 1 11 20 1 20 13 1 19 20 1 20 21 1 21 19 1 10 22 1 22 11 1 8 23 1 23 10 1 22 23 1
		 23 24 1 24 22 1 7 25 1 25 8 1 5 26 1 26 7 1 25 26 1 26 27 1 27 25 1 4 28 1 28 5 1
		 3 29 1 29 4 1 28 29 1 29 30 1 30 28 1 16 29 1 18 31 1 31 16 1 29 31 1 31 30 1 19 17 1
		 21 32 1 32 19 1 17 32 1 32 18 1 22 20 1 24 33 1 33 22 1 20 33 1 33 21 1 25 23 1 27 34 1
		 34 25 1 23 34 1 34 24 1 28 26 1 30 35 1 35 28 1 26 35 1 35 27 1 36 37 1 37 38 1 38 36 1
		 37 30 1 31 37 1 38 31 1 18 38 1 36 39 1 39 37 1 39 27 1 35 39 1 37 35 1 36 40 1 40 39 1
		 40 24 1 34 40 1 39 34 1 36 41 1 41 40 1 41 21 1 33 41 1 40 33 1 38 41 1 32 38 1 41 32 1;
	setAttr -s 80 -ch 240 ".fc[0:79]" -type "polyFaces" 
		f 3 0 1 2
		f 3 3 4 5
		f 3 6 7 8
		f 3 -6 -7 -2
		f 3 -3 9 10
		f 3 -9 11 12
		f 3 13 14 15
		f 3 -13 -14 -10
		f 3 -11 16 17
		f 3 -16 18 19
		f 3 20 21 22
		f 3 -20 -21 -17
		f 3 -18 23 24
		f 3 -23 25 26
		f 3 27 28 29
		f 3 -27 -28 -24
		f 3 -25 30 -1
		f 3 -30 31 32
		f 3 33 34 -4
		f 3 -33 -34 -31
		f 3 -35 35 36
		f 3 -32 37 38
		f 3 39 40 41
		f 3 -39 -40 -36
		f 3 -29 42 43
		f 3 -26 44 45
		f 3 46 47 48
		f 3 -46 -47 -43
		f 3 -22 49 50
		f 3 -19 51 52
		f 3 53 54 55
		f 3 -53 -54 -50
		f 3 -15 56 57
		f 3 -12 58 59
		f 3 60 61 62
		f 3 -60 -61 -57
		f 3 -8 63 64
		f 3 -5 65 66
		f 3 67 68 69
		f 3 -67 -68 -64
		f 3 -37 70 -66
		f 3 -42 71 72
		f 3 73 74 -69
		f 3 -73 -74 -71
		f 3 -44 75 -38
		f 3 -49 76 77
		f 3 78 79 -41
		f 3 -78 -79 -76
		f 3 -51 80 -45
		f 3 -56 81 82
		f 3 83 84 -48
		f 3 -83 -84 -81
		f 3 -58 85 -52
		f 3 -63 86 87
		f 3 88 89 -55
		f 3 -88 -89 -86
		f 3 -65 90 -59
		f 3 -70 91 92
		f 3 93 94 -62
		f 3 -93 -94 -91
		f 3 95 96 97
		f 3 98 -75 99
		f 3 100 -72 101
		f 3 -100 -101 -97
		f 3 102 103 -96
		f 3 104 -95 105
		f 3 106 -92 -99
		f 3 -106 -107 -104
		f 3 107 108 -103
		f 3 109 -90 110
		f 3 111 -87 -105
		f 3 -111 -112 -109
		f 3 112 113 -108
		f 3 114 -85 115
		f 3 116 -82 -110
		f 3 -116 -117 -114
		f 3 -98 117 -113
		f 3 -102 -80 118
		f 3 119 -77 -115
		f 3 -119 -120 -118;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "mountain1_16" -p "RockGeo";
	rename -uid "B5ADA8B0-4C9B-D782-1F52-0CB0E3A7723E";
	setAttr ".t" -type "double3" 6.8686414261203765 1.2194677748944827 -29.262679526193125 ;
createNode mesh -n "mountain1_16Shape" -p "mountain1_16";
	rename -uid "DB9BEA77-42DF-2EA2-8B06-23BD29D51D28";
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
	setAttr -s 42 ".vt[0:41]"  -5.5569727e-10 6.6683672e-09 -0.58796507
		 2.7279394e-09 0.20855996 -0.33745706 0.3180064 0.10332671 -0.5410248 1.7477885e-09 0.38534856 -0.19267403
		 0.32514933 0.44752994 -0.34188196 0.61184579 0.19880104 -0.32166609 0.1726813 -0.23767541 -0.47535083
		 0.46169487 -0.15001363 -0.30002725 0.31028333 -0.42706838 -0.26394254 -0.13379738 -0.1841563 -0.3683126
		 3.1932318e-10 -0.47675335 -0.29464948 -0.28017479 -0.38562754 -0.23833069 -0.21158117 0.068747006 -0.35996342
		 -0.46846321 -0.15221278 -0.3044256 -0.41250825 0.13403228 -0.21686822 -0.15008704 0.20657724 -0.15781069
		 -0.16087875 0.49513397 1.0343861e-09 -0.3010985 0.21876101 -1.3840189e-08 -0.24613315 0.33877322 0.20937316
		 -0.59643972 2.0375091e-09 -7.6406592e-10 -0.5086782 -0.36957651 -1.156157e-08 -0.55562407 -0.18053347 0.29210863
		 -0.17064804 -0.52520072 -1.6551754e-09 0.17039311 -0.52441615 -1.0860212e-09 1.3611232e-09 -0.38297549 0.19148749
		 0.3338415 -0.24255018 6.9204353e-09 0.54276943 -6.7770095e-10 -3.3885048e-10 0.24765544 -0.080468304 0.13020003
		 0.54090124 0.39298791 1.7364094e-08 0.19088985 0.58749866 5.9075029e-09 0.3165668 0.43571684 0.26928759
		 5.3478327e-10 0.51145375 0.3160955 -0.31606323 0.10269506 0.2053901 -0.25411391 -0.34975803 0.26719096
		 0.1834399 -0.25248355 0.19287992 0.36031693 0.11707396 0.23414792 9.582789e-10 1.1978486e-08 0.34830755
		 0.11188844 0.15400124 0.30800247 -0.10745908 0.14790475 0.29580954 0.13755703 -0.044695061 0.23402604
		 1.5500679e-09 -0.23200808 0.37539691 -0.23098241 -0.075050861 0.39297077;
	setAttr -s 120 ".ed[0:119]"  0 1 1 1 2 1 2 0 1 1 3 1 3 4 1 4 1 1 2 4 1
		 4 5 1 5 2 1 2 6 1 6 0 1 5 7 1 7 2 1 6 7 1 7 8 1 8 6 1 6 9 1 9 0 1 8 10 1 10 6 1 9 10 1
		 10 11 1 11 9 1 9 12 1 12 0 1 11 13 1 13 9 1 12 13 1 13 14 1 14 12 1 12 1 1 14 15 1
		 15 12 1 1 15 1 15 3 1 15 16 1 16 3 1 14 17 1 17 15 1 16 17 1 17 18 1 18 16 1 13 19 1
		 19 14 1 11 20 1 20 13 1 19 20 1 20 21 1 21 19 1 10 22 1 22 11 1 8 23 1 23 10 1 22 23 1
		 23 24 1 24 22 1 7 25 1 25 8 1 5 26 1 26 7 1 25 26 1 26 27 1 27 25 1 4 28 1 28 5 1
		 3 29 1 29 4 1 28 29 1 29 30 1 30 28 1 16 29 1 18 31 1 31 16 1 29 31 1 31 30 1 19 17 1
		 21 32 1 32 19 1 17 32 1 32 18 1 22 20 1 24 33 1 33 22 1 20 33 1 33 21 1 25 23 1 27 34 1
		 34 25 1 23 34 1 34 24 1 28 26 1 30 35 1 35 28 1 26 35 1 35 27 1 36 37 1 37 38 1 38 36 1
		 37 30 1 31 37 1 38 31 1 18 38 1 36 39 1 39 37 1 39 27 1 35 39 1 37 35 1 36 40 1 40 39 1
		 40 24 1 34 40 1 39 34 1 36 41 1 41 40 1 41 21 1 33 41 1 40 33 1 38 41 1 32 38 1 41 32 1;
	setAttr -s 80 -ch 240 ".fc[0:79]" -type "polyFaces" 
		f 3 0 1 2
		f 3 3 4 5
		f 3 6 7 8
		f 3 -6 -7 -2
		f 3 -3 9 10
		f 3 -9 11 12
		f 3 13 14 15
		f 3 -13 -14 -10
		f 3 -11 16 17
		f 3 -16 18 19
		f 3 20 21 22
		f 3 -20 -21 -17
		f 3 -18 23 24
		f 3 -23 25 26
		f 3 27 28 29
		f 3 -27 -28 -24
		f 3 -25 30 -1
		f 3 -30 31 32
		f 3 33 34 -4
		f 3 -33 -34 -31
		f 3 -35 35 36
		f 3 -32 37 38
		f 3 39 40 41
		f 3 -39 -40 -36
		f 3 -29 42 43
		f 3 -26 44 45
		f 3 46 47 48
		f 3 -46 -47 -43
		f 3 -22 49 50
		f 3 -19 51 52
		f 3 53 54 55
		f 3 -53 -54 -50
		f 3 -15 56 57
		f 3 -12 58 59
		f 3 60 61 62
		f 3 -60 -61 -57
		f 3 -8 63 64
		f 3 -5 65 66
		f 3 67 68 69
		f 3 -67 -68 -64
		f 3 -37 70 -66
		f 3 -42 71 72
		f 3 73 74 -69
		f 3 -73 -74 -71
		f 3 -44 75 -38
		f 3 -49 76 77
		f 3 78 79 -41
		f 3 -78 -79 -76
		f 3 -51 80 -45
		f 3 -56 81 82
		f 3 83 84 -48
		f 3 -83 -84 -81
		f 3 -58 85 -52
		f 3 -63 86 87
		f 3 88 89 -55
		f 3 -88 -89 -86
		f 3 -65 90 -59
		f 3 -70 91 92
		f 3 93 94 -62
		f 3 -93 -94 -91
		f 3 95 96 97
		f 3 98 -75 99
		f 3 100 -72 101
		f 3 -100 -101 -97
		f 3 102 103 -96
		f 3 104 -95 105
		f 3 106 -92 -99
		f 3 -106 -107 -104
		f 3 107 108 -103
		f 3 109 -90 110
		f 3 111 -87 -105
		f 3 -111 -112 -109
		f 3 112 113 -108
		f 3 114 -85 115
		f 3 116 -82 -110
		f 3 -116 -117 -114
		f 3 -98 117 -113
		f 3 -102 -80 118
		f 3 119 -77 -115
		f 3 -119 -120 -118;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "mountain1_17" -p "RockGeo";
	rename -uid "71B0AEF5-4B2C-7348-D2AF-D9B42E1FFFFF";
	setAttr ".t" -type "double3" 8.6154538847071649 16.397223970721146 -1.896566959521806 ;
createNode mesh -n "mountain1_17Shape" -p "mountain1_17";
	rename -uid "4FB0B406-4267-F83E-9AFF-AF8365CCB41E";
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
	setAttr -s 42 ".vt[0:41]"  -5.5569727e-10 6.6683672e-09 -0.58796507
		 2.7279394e-09 0.20855996 -0.33745706 0.3180064 0.10332671 -0.5410248 1.7477885e-09 0.38534856 -0.19267403
		 0.32514933 0.44752994 -0.34188196 0.61184579 0.19880104 -0.32166609 0.1726813 -0.23767541 -0.47535083
		 0.46169487 -0.15001363 -0.30002725 0.31028333 -0.42706838 -0.26394254 -0.13379738 -0.1841563 -0.3683126
		 3.1932318e-10 -0.47675335 -0.29464948 -0.28017479 -0.38562754 -0.23833069 -0.21158117 0.068747006 -0.35996342
		 -0.46846321 -0.15221278 -0.3044256 -0.41250825 0.13403228 -0.21686822 -0.15008704 0.20657724 -0.15781069
		 -0.16087875 0.49513397 1.0343861e-09 -0.3010985 0.21876101 -1.3840189e-08 -0.24613315 0.33877322 0.20937316
		 -0.59643972 2.0375091e-09 -7.6406592e-10 -0.5086782 -0.36957651 -1.156157e-08 -0.55562407 -0.18053347 0.29210863
		 -0.17064804 -0.52520072 -1.6551754e-09 0.17039311 -0.52441615 -1.0860212e-09 1.3611232e-09 -0.38297549 0.19148749
		 0.3338415 -0.24255018 6.9204353e-09 0.54276943 -6.7770095e-10 -3.3885048e-10 0.24765544 -0.080468304 0.13020003
		 0.54090124 0.39298791 1.7364094e-08 0.19088985 0.58749866 5.9075029e-09 0.3165668 0.43571684 0.26928759
		 5.3478327e-10 0.51145375 0.3160955 -0.31606323 0.10269506 0.2053901 -0.25411391 -0.34975803 0.26719096
		 0.1834399 -0.25248355 0.19287992 0.36031693 0.11707396 0.23414792 9.582789e-10 1.1978486e-08 0.34830755
		 0.11188844 0.15400124 0.30800247 -0.10745908 0.14790475 0.29580954 0.13755703 -0.044695061 0.23402604
		 1.5500679e-09 -0.23200808 0.37539691 -0.23098241 -0.075050861 0.39297077;
	setAttr -s 120 ".ed[0:119]"  0 1 1 1 2 1 2 0 1 1 3 1 3 4 1 4 1 1 2 4 1
		 4 5 1 5 2 1 2 6 1 6 0 1 5 7 1 7 2 1 6 7 1 7 8 1 8 6 1 6 9 1 9 0 1 8 10 1 10 6 1 9 10 1
		 10 11 1 11 9 1 9 12 1 12 0 1 11 13 1 13 9 1 12 13 1 13 14 1 14 12 1 12 1 1 14 15 1
		 15 12 1 1 15 1 15 3 1 15 16 1 16 3 1 14 17 1 17 15 1 16 17 1 17 18 1 18 16 1 13 19 1
		 19 14 1 11 20 1 20 13 1 19 20 1 20 21 1 21 19 1 10 22 1 22 11 1 8 23 1 23 10 1 22 23 1
		 23 24 1 24 22 1 7 25 1 25 8 1 5 26 1 26 7 1 25 26 1 26 27 1 27 25 1 4 28 1 28 5 1
		 3 29 1 29 4 1 28 29 1 29 30 1 30 28 1 16 29 1 18 31 1 31 16 1 29 31 1 31 30 1 19 17 1
		 21 32 1 32 19 1 17 32 1 32 18 1 22 20 1 24 33 1 33 22 1 20 33 1 33 21 1 25 23 1 27 34 1
		 34 25 1 23 34 1 34 24 1 28 26 1 30 35 1 35 28 1 26 35 1 35 27 1 36 37 1 37 38 1 38 36 1
		 37 30 1 31 37 1 38 31 1 18 38 1 36 39 1 39 37 1 39 27 1 35 39 1 37 35 1 36 40 1 40 39 1
		 40 24 1 34 40 1 39 34 1 36 41 1 41 40 1 41 21 1 33 41 1 40 33 1 38 41 1 32 38 1 41 32 1;
	setAttr -s 80 -ch 240 ".fc[0:79]" -type "polyFaces" 
		f 3 0 1 2
		f 3 3 4 5
		f 3 6 7 8
		f 3 -6 -7 -2
		f 3 -3 9 10
		f 3 -9 11 12
		f 3 13 14 15
		f 3 -13 -14 -10
		f 3 -11 16 17
		f 3 -16 18 19
		f 3 20 21 22
		f 3 -20 -21 -17
		f 3 -18 23 24
		f 3 -23 25 26
		f 3 27 28 29
		f 3 -27 -28 -24
		f 3 -25 30 -1
		f 3 -30 31 32
		f 3 33 34 -4
		f 3 -33 -34 -31
		f 3 -35 35 36
		f 3 -32 37 38
		f 3 39 40 41
		f 3 -39 -40 -36
		f 3 -29 42 43
		f 3 -26 44 45
		f 3 46 47 48
		f 3 -46 -47 -43
		f 3 -22 49 50
		f 3 -19 51 52
		f 3 53 54 55
		f 3 -53 -54 -50
		f 3 -15 56 57
		f 3 -12 58 59
		f 3 60 61 62
		f 3 -60 -61 -57
		f 3 -8 63 64
		f 3 -5 65 66
		f 3 67 68 69
		f 3 -67 -68 -64
		f 3 -37 70 -66
		f 3 -42 71 72
		f 3 73 74 -69
		f 3 -73 -74 -71
		f 3 -44 75 -38
		f 3 -49 76 77
		f 3 78 79 -41
		f 3 -78 -79 -76
		f 3 -51 80 -45
		f 3 -56 81 82
		f 3 83 84 -48
		f 3 -83 -84 -81
		f 3 -58 85 -52
		f 3 -63 86 87
		f 3 88 89 -55
		f 3 -88 -89 -86
		f 3 -65 90 -59
		f 3 -70 91 92
		f 3 93 94 -62
		f 3 -93 -94 -91
		f 3 95 96 97
		f 3 98 -75 99
		f 3 100 -72 101
		f 3 -100 -101 -97
		f 3 102 103 -96
		f 3 104 -95 105
		f 3 106 -92 -99
		f 3 -106 -107 -104
		f 3 107 108 -103
		f 3 109 -90 110
		f 3 111 -87 -105
		f 3 -111 -112 -109
		f 3 112 113 -108
		f 3 114 -85 115
		f 3 116 -82 -110
		f 3 -116 -117 -114
		f 3 -98 117 -113
		f 3 -102 -80 118
		f 3 119 -77 -115
		f 3 -119 -120 -118;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "mountain1_18" -p "RockGeo";
	rename -uid "50111A5D-4DAC-BA80-CE9A-E5829DA6831C";
	setAttr ".t" -type "double3" -1.2998332304125881 18.139292419920743 -94.656425119321597 ;
createNode mesh -n "mountain1_18Shape" -p "mountain1_18";
	rename -uid "BA483CD7-43D1-3D5B-F74E-ADAE6A624834";
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
	setAttr -s 42 ".vt[0:41]"  -5.5569727e-10 6.6683672e-09 -0.58796507
		 2.7279394e-09 0.20855996 -0.33745706 0.3180064 0.10332671 -0.5410248 1.7477885e-09 0.38534856 -0.19267403
		 0.32514933 0.44752994 -0.34188196 0.61184579 0.19880104 -0.32166609 0.1726813 -0.23767541 -0.47535083
		 0.46169487 -0.15001363 -0.30002725 0.31028333 -0.42706838 -0.26394254 -0.13379738 -0.1841563 -0.3683126
		 3.1932318e-10 -0.47675335 -0.29464948 -0.28017479 -0.38562754 -0.23833069 -0.21158117 0.068747006 -0.35996342
		 -0.46846321 -0.15221278 -0.3044256 -0.41250825 0.13403228 -0.21686822 -0.15008704 0.20657724 -0.15781069
		 -0.16087875 0.49513397 1.0343861e-09 -0.3010985 0.21876101 -1.3840189e-08 -0.24613315 0.33877322 0.20937316
		 -0.59643972 2.0375091e-09 -7.6406592e-10 -0.5086782 -0.36957651 -1.156157e-08 -0.55562407 -0.18053347 0.29210863
		 -0.17064804 -0.52520072 -1.6551754e-09 0.17039311 -0.52441615 -1.0860212e-09 1.3611232e-09 -0.38297549 0.19148749
		 0.3338415 -0.24255018 6.9204353e-09 0.54276943 -6.7770095e-10 -3.3885048e-10 0.24765544 -0.080468304 0.13020003
		 0.54090124 0.39298791 1.7364094e-08 0.19088985 0.58749866 5.9075029e-09 0.3165668 0.43571684 0.26928759
		 5.3478327e-10 0.51145375 0.3160955 -0.31606323 0.10269506 0.2053901 -0.25411391 -0.34975803 0.26719096
		 0.1834399 -0.25248355 0.19287992 0.36031693 0.11707396 0.23414792 9.582789e-10 1.1978486e-08 0.34830755
		 0.11188844 0.15400124 0.30800247 -0.10745908 0.14790475 0.29580954 0.13755703 -0.044695061 0.23402604
		 1.5500679e-09 -0.23200808 0.37539691 -0.23098241 -0.075050861 0.39297077;
	setAttr -s 120 ".ed[0:119]"  0 1 1 1 2 1 2 0 1 1 3 1 3 4 1 4 1 1 2 4 1
		 4 5 1 5 2 1 2 6 1 6 0 1 5 7 1 7 2 1 6 7 1 7 8 1 8 6 1 6 9 1 9 0 1 8 10 1 10 6 1 9 10 1
		 10 11 1 11 9 1 9 12 1 12 0 1 11 13 1 13 9 1 12 13 1 13 14 1 14 12 1 12 1 1 14 15 1
		 15 12 1 1 15 1 15 3 1 15 16 1 16 3 1 14 17 1 17 15 1 16 17 1 17 18 1 18 16 1 13 19 1
		 19 14 1 11 20 1 20 13 1 19 20 1 20 21 1 21 19 1 10 22 1 22 11 1 8 23 1 23 10 1 22 23 1
		 23 24 1 24 22 1 7 25 1 25 8 1 5 26 1 26 7 1 25 26 1 26 27 1 27 25 1 4 28 1 28 5 1
		 3 29 1 29 4 1 28 29 1 29 30 1 30 28 1 16 29 1 18 31 1 31 16 1 29 31 1 31 30 1 19 17 1
		 21 32 1 32 19 1 17 32 1 32 18 1 22 20 1 24 33 1 33 22 1 20 33 1 33 21 1 25 23 1 27 34 1
		 34 25 1 23 34 1 34 24 1 28 26 1 30 35 1 35 28 1 26 35 1 35 27 1 36 37 1 37 38 1 38 36 1
		 37 30 1 31 37 1 38 31 1 18 38 1 36 39 1 39 37 1 39 27 1 35 39 1 37 35 1 36 40 1 40 39 1
		 40 24 1 34 40 1 39 34 1 36 41 1 41 40 1 41 21 1 33 41 1 40 33 1 38 41 1 32 38 1 41 32 1;
	setAttr -s 80 -ch 240 ".fc[0:79]" -type "polyFaces" 
		f 3 0 1 2
		f 3 3 4 5
		f 3 6 7 8
		f 3 -6 -7 -2
		f 3 -3 9 10
		f 3 -9 11 12
		f 3 13 14 15
		f 3 -13 -14 -10
		f 3 -11 16 17
		f 3 -16 18 19
		f 3 20 21 22
		f 3 -20 -21 -17
		f 3 -18 23 24
		f 3 -23 25 26
		f 3 27 28 29
		f 3 -27 -28 -24
		f 3 -25 30 -1
		f 3 -30 31 32
		f 3 33 34 -4
		f 3 -33 -34 -31
		f 3 -35 35 36
		f 3 -32 37 38
		f 3 39 40 41
		f 3 -39 -40 -36
		f 3 -29 42 43
		f 3 -26 44 45
		f 3 46 47 48
		f 3 -46 -47 -43
		f 3 -22 49 50
		f 3 -19 51 52
		f 3 53 54 55
		f 3 -53 -54 -50
		f 3 -15 56 57
		f 3 -12 58 59
		f 3 60 61 62
		f 3 -60 -61 -57
		f 3 -8 63 64
		f 3 -5 65 66
		f 3 67 68 69
		f 3 -67 -68 -64
		f 3 -37 70 -66
		f 3 -42 71 72
		f 3 73 74 -69
		f 3 -73 -74 -71
		f 3 -44 75 -38
		f 3 -49 76 77
		f 3 78 79 -41
		f 3 -78 -79 -76
		f 3 -51 80 -45
		f 3 -56 81 82
		f 3 83 84 -48
		f 3 -83 -84 -81
		f 3 -58 85 -52
		f 3 -63 86 87
		f 3 88 89 -55
		f 3 -88 -89 -86
		f 3 -65 90 -59
		f 3 -70 91 92
		f 3 93 94 -62
		f 3 -93 -94 -91
		f 3 95 96 97
		f 3 98 -75 99
		f 3 100 -72 101
		f 3 -100 -101 -97
		f 3 102 103 -96
		f 3 104 -95 105
		f 3 106 -92 -99
		f 3 -106 -107 -104
		f 3 107 108 -103
		f 3 109 -90 110
		f 3 111 -87 -105
		f 3 -111 -112 -109
		f 3 112 113 -108
		f 3 114 -85 115
		f 3 116 -82 -110
		f 3 -116 -117 -114
		f 3 -98 117 -113
		f 3 -102 -80 118
		f 3 119 -77 -115
		f 3 -119 -120 -118;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "mountain1_19" -p "RockGeo";
	rename -uid "057F36B1-4E6E-46BE-6C05-9C9FB6E659DC";
	setAttr ".t" -type "double3" 27.920136102066522 3.2314068207664626 -1.0816473770105972 ;
createNode mesh -n "mountain1_19Shape" -p "mountain1_19";
	rename -uid "E508711A-47A8-48AA-0D9C-6ABE6634F3DF";
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
	setAttr -s 42 ".vt[0:41]"  -5.5569727e-10 6.6683672e-09 -0.58796507
		 2.7279394e-09 0.20855996 -0.33745706 0.3180064 0.10332671 -0.5410248 1.7477885e-09 0.38534856 -0.19267403
		 0.32514933 0.44752994 -0.34188196 0.61184579 0.19880104 -0.32166609 0.1726813 -0.23767541 -0.47535083
		 0.46169487 -0.15001363 -0.30002725 0.31028333 -0.42706838 -0.26394254 -0.13379738 -0.1841563 -0.3683126
		 3.1932318e-10 -0.47675335 -0.29464948 -0.28017479 -0.38562754 -0.23833069 -0.21158117 0.068747006 -0.35996342
		 -0.46846321 -0.15221278 -0.3044256 -0.41250825 0.13403228 -0.21686822 -0.15008704 0.20657724 -0.15781069
		 -0.16087875 0.49513397 1.0343861e-09 -0.3010985 0.21876101 -1.3840189e-08 -0.24613315 0.33877322 0.20937316
		 -0.59643972 2.0375091e-09 -7.6406592e-10 -0.5086782 -0.36957651 -1.156157e-08 -0.55562407 -0.18053347 0.29210863
		 -0.17064804 -0.52520072 -1.6551754e-09 0.17039311 -0.52441615 -1.0860212e-09 1.3611232e-09 -0.38297549 0.19148749
		 0.3338415 -0.24255018 6.9204353e-09 0.54276943 -6.7770095e-10 -3.3885048e-10 0.24765544 -0.080468304 0.13020003
		 0.54090124 0.39298791 1.7364094e-08 0.19088985 0.58749866 5.9075029e-09 0.3165668 0.43571684 0.26928759
		 5.3478327e-10 0.51145375 0.3160955 -0.31606323 0.10269506 0.2053901 -0.25411391 -0.34975803 0.26719096
		 0.1834399 -0.25248355 0.19287992 0.36031693 0.11707396 0.23414792 9.582789e-10 1.1978486e-08 0.34830755
		 0.11188844 0.15400124 0.30800247 -0.10745908 0.14790475 0.29580954 0.13755703 -0.044695061 0.23402604
		 1.5500679e-09 -0.23200808 0.37539691 -0.23098241 -0.075050861 0.39297077;
	setAttr -s 120 ".ed[0:119]"  0 1 1 1 2 1 2 0 1 1 3 1 3 4 1 4 1 1 2 4 1
		 4 5 1 5 2 1 2 6 1 6 0 1 5 7 1 7 2 1 6 7 1 7 8 1 8 6 1 6 9 1 9 0 1 8 10 1 10 6 1 9 10 1
		 10 11 1 11 9 1 9 12 1 12 0 1 11 13 1 13 9 1 12 13 1 13 14 1 14 12 1 12 1 1 14 15 1
		 15 12 1 1 15 1 15 3 1 15 16 1 16 3 1 14 17 1 17 15 1 16 17 1 17 18 1 18 16 1 13 19 1
		 19 14 1 11 20 1 20 13 1 19 20 1 20 21 1 21 19 1 10 22 1 22 11 1 8 23 1 23 10 1 22 23 1
		 23 24 1 24 22 1 7 25 1 25 8 1 5 26 1 26 7 1 25 26 1 26 27 1 27 25 1 4 28 1 28 5 1
		 3 29 1 29 4 1 28 29 1 29 30 1 30 28 1 16 29 1 18 31 1 31 16 1 29 31 1 31 30 1 19 17 1
		 21 32 1 32 19 1 17 32 1 32 18 1 22 20 1 24 33 1 33 22 1 20 33 1 33 21 1 25 23 1 27 34 1
		 34 25 1 23 34 1 34 24 1 28 26 1 30 35 1 35 28 1 26 35 1 35 27 1 36 37 1 37 38 1 38 36 1
		 37 30 1 31 37 1 38 31 1 18 38 1 36 39 1 39 37 1 39 27 1 35 39 1 37 35 1 36 40 1 40 39 1
		 40 24 1 34 40 1 39 34 1 36 41 1 41 40 1 41 21 1 33 41 1 40 33 1 38 41 1 32 38 1 41 32 1;
	setAttr -s 80 -ch 240 ".fc[0:79]" -type "polyFaces" 
		f 3 0 1 2
		f 3 3 4 5
		f 3 6 7 8
		f 3 -6 -7 -2
		f 3 -3 9 10
		f 3 -9 11 12
		f 3 13 14 15
		f 3 -13 -14 -10
		f 3 -11 16 17
		f 3 -16 18 19
		f 3 20 21 22
		f 3 -20 -21 -17
		f 3 -18 23 24
		f 3 -23 25 26
		f 3 27 28 29
		f 3 -27 -28 -24
		f 3 -25 30 -1
		f 3 -30 31 32
		f 3 33 34 -4
		f 3 -33 -34 -31
		f 3 -35 35 36
		f 3 -32 37 38
		f 3 39 40 41
		f 3 -39 -40 -36
		f 3 -29 42 43
		f 3 -26 44 45
		f 3 46 47 48
		f 3 -46 -47 -43
		f 3 -22 49 50
		f 3 -19 51 52
		f 3 53 54 55
		f 3 -53 -54 -50
		f 3 -15 56 57
		f 3 -12 58 59
		f 3 60 61 62
		f 3 -60 -61 -57
		f 3 -8 63 64
		f 3 -5 65 66
		f 3 67 68 69
		f 3 -67 -68 -64
		f 3 -37 70 -66
		f 3 -42 71 72
		f 3 73 74 -69
		f 3 -73 -74 -71
		f 3 -44 75 -38
		f 3 -49 76 77
		f 3 78 79 -41
		f 3 -78 -79 -76
		f 3 -51 80 -45
		f 3 -56 81 82
		f 3 83 84 -48
		f 3 -83 -84 -81
		f 3 -58 85 -52
		f 3 -63 86 87
		f 3 88 89 -55
		f 3 -88 -89 -86
		f 3 -65 90 -59
		f 3 -70 91 92
		f 3 93 94 -62
		f 3 -93 -94 -91
		f 3 95 96 97
		f 3 98 -75 99
		f 3 100 -72 101
		f 3 -100 -101 -97
		f 3 102 103 -96
		f 3 104 -95 105
		f 3 106 -92 -99
		f 3 -106 -107 -104
		f 3 107 108 -103
		f 3 109 -90 110
		f 3 111 -87 -105
		f 3 -111 -112 -109
		f 3 112 113 -108
		f 3 114 -85 115
		f 3 116 -82 -110
		f 3 -116 -117 -114
		f 3 -98 117 -113
		f 3 -102 -80 118
		f 3 119 -77 -115
		f 3 -119 -120 -118;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "mountain1_20" -p "RockGeo";
	rename -uid "940A2109-42EC-CE54-CCED-4CB7D3DB1D87";
	setAttr ".t" -type "double3" -6.679456671997599 -0.1150263933861595 -77.208448121846374 ;
createNode mesh -n "mountain1_20Shape" -p "mountain1_20";
	rename -uid "26263728-4EF0-9CF6-39FC-859750CAC9F2";
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
	setAttr -s 42 ".vt[0:41]"  -5.5569727e-10 6.6683672e-09 -0.58796507
		 2.7279394e-09 0.20855996 -0.33745706 0.3180064 0.10332671 -0.5410248 1.7477885e-09 0.38534856 -0.19267403
		 0.32514933 0.44752994 -0.34188196 0.61184579 0.19880104 -0.32166609 0.1726813 -0.23767541 -0.47535083
		 0.46169487 -0.15001363 -0.30002725 0.31028333 -0.42706838 -0.26394254 -0.13379738 -0.1841563 -0.3683126
		 3.1932318e-10 -0.47675335 -0.29464948 -0.28017479 -0.38562754 -0.23833069 -0.21158117 0.068747006 -0.35996342
		 -0.46846321 -0.15221278 -0.3044256 -0.41250825 0.13403228 -0.21686822 -0.15008704 0.20657724 -0.15781069
		 -0.16087875 0.49513397 1.0343861e-09 -0.3010985 0.21876101 -1.3840189e-08 -0.24613315 0.33877322 0.20937316
		 -0.59643972 2.0375091e-09 -7.6406592e-10 -0.5086782 -0.36957651 -1.156157e-08 -0.55562407 -0.18053347 0.29210863
		 -0.17064804 -0.52520072 -1.6551754e-09 0.17039311 -0.52441615 -1.0860212e-09 1.3611232e-09 -0.38297549 0.19148749
		 0.3338415 -0.24255018 6.9204353e-09 0.54276943 -6.7770095e-10 -3.3885048e-10 0.24765544 -0.080468304 0.13020003
		 0.54090124 0.39298791 1.7364094e-08 0.19088985 0.58749866 5.9075029e-09 0.3165668 0.43571684 0.26928759
		 5.3478327e-10 0.51145375 0.3160955 -0.31606323 0.10269506 0.2053901 -0.25411391 -0.34975803 0.26719096
		 0.1834399 -0.25248355 0.19287992 0.36031693 0.11707396 0.23414792 9.582789e-10 1.1978486e-08 0.34830755
		 0.11188844 0.15400124 0.30800247 -0.10745908 0.14790475 0.29580954 0.13755703 -0.044695061 0.23402604
		 1.5500679e-09 -0.23200808 0.37539691 -0.23098241 -0.075050861 0.39297077;
	setAttr -s 120 ".ed[0:119]"  0 1 1 1 2 1 2 0 1 1 3 1 3 4 1 4 1 1 2 4 1
		 4 5 1 5 2 1 2 6 1 6 0 1 5 7 1 7 2 1 6 7 1 7 8 1 8 6 1 6 9 1 9 0 1 8 10 1 10 6 1 9 10 1
		 10 11 1 11 9 1 9 12 1 12 0 1 11 13 1 13 9 1 12 13 1 13 14 1 14 12 1 12 1 1 14 15 1
		 15 12 1 1 15 1 15 3 1 15 16 1 16 3 1 14 17 1 17 15 1 16 17 1 17 18 1 18 16 1 13 19 1
		 19 14 1 11 20 1 20 13 1 19 20 1 20 21 1 21 19 1 10 22 1 22 11 1 8 23 1 23 10 1 22 23 1
		 23 24 1 24 22 1 7 25 1 25 8 1 5 26 1 26 7 1 25 26 1 26 27 1 27 25 1 4 28 1 28 5 1
		 3 29 1 29 4 1 28 29 1 29 30 1 30 28 1 16 29 1 18 31 1 31 16 1 29 31 1 31 30 1 19 17 1
		 21 32 1 32 19 1 17 32 1 32 18 1 22 20 1 24 33 1 33 22 1 20 33 1 33 21 1 25 23 1 27 34 1
		 34 25 1 23 34 1 34 24 1 28 26 1 30 35 1 35 28 1 26 35 1 35 27 1 36 37 1 37 38 1 38 36 1
		 37 30 1 31 37 1 38 31 1 18 38 1 36 39 1 39 37 1 39 27 1 35 39 1 37 35 1 36 40 1 40 39 1
		 40 24 1 34 40 1 39 34 1 36 41 1 41 40 1 41 21 1 33 41 1 40 33 1 38 41 1 32 38 1 41 32 1;
	setAttr -s 80 -ch 240 ".fc[0:79]" -type "polyFaces" 
		f 3 0 1 2
		f 3 3 4 5
		f 3 6 7 8
		f 3 -6 -7 -2
		f 3 -3 9 10
		f 3 -9 11 12
		f 3 13 14 15
		f 3 -13 -14 -10
		f 3 -11 16 17
		f 3 -16 18 19
		f 3 20 21 22
		f 3 -20 -21 -17
		f 3 -18 23 24
		f 3 -23 25 26
		f 3 27 28 29
		f 3 -27 -28 -24
		f 3 -25 30 -1
		f 3 -30 31 32
		f 3 33 34 -4
		f 3 -33 -34 -31
		f 3 -35 35 36
		f 3 -32 37 38
		f 3 39 40 41
		f 3 -39 -40 -36
		f 3 -29 42 43
		f 3 -26 44 45
		f 3 46 47 48
		f 3 -46 -47 -43
		f 3 -22 49 50
		f 3 -19 51 52
		f 3 53 54 55
		f 3 -53 -54 -50
		f 3 -15 56 57
		f 3 -12 58 59
		f 3 60 61 62
		f 3 -60 -61 -57
		f 3 -8 63 64
		f 3 -5 65 66
		f 3 67 68 69
		f 3 -67 -68 -64
		f 3 -37 70 -66
		f 3 -42 71 72
		f 3 73 74 -69
		f 3 -73 -74 -71
		f 3 -44 75 -38
		f 3 -49 76 77
		f 3 78 79 -41
		f 3 -78 -79 -76
		f 3 -51 80 -45
		f 3 -56 81 82
		f 3 83 84 -48
		f 3 -83 -84 -81
		f 3 -58 85 -52
		f 3 -63 86 87
		f 3 88 89 -55
		f 3 -88 -89 -86
		f 3 -65 90 -59
		f 3 -70 91 92
		f 3 93 94 -62
		f 3 -93 -94 -91
		f 3 95 96 97
		f 3 98 -75 99
		f 3 100 -72 101
		f 3 -100 -101 -97
		f 3 102 103 -96
		f 3 104 -95 105
		f 3 106 -92 -99
		f 3 -106 -107 -104
		f 3 107 108 -103
		f 3 109 -90 110
		f 3 111 -87 -105
		f 3 -111 -112 -109
		f 3 112 113 -108
		f 3 114 -85 115
		f 3 116 -82 -110
		f 3 -116 -117 -114
		f 3 -98 117 -113
		f 3 -102 -80 118
		f 3 119 -77 -115
		f 3 -119 -120 -118;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "mountain1_21" -p "RockGeo";
	rename -uid "650CDF32-44B9-2ED2-B73B-4081BEB6706B";
	setAttr ".t" -type "double3" 15.392916086857724 9.100713328318637 -22.274343777181116 ;
createNode mesh -n "mountain1_21Shape" -p "mountain1_21";
	rename -uid "6AB231AB-4B48-250E-7BE9-0F91896460E0";
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
	setAttr -s 42 ".vt[0:41]"  -5.5569727e-10 6.6683672e-09 -0.58796507
		 2.7279394e-09 0.20855996 -0.33745706 0.3180064 0.10332671 -0.5410248 1.7477885e-09 0.38534856 -0.19267403
		 0.32514933 0.44752994 -0.34188196 0.61184579 0.19880104 -0.32166609 0.1726813 -0.23767541 -0.47535083
		 0.46169487 -0.15001363 -0.30002725 0.31028333 -0.42706838 -0.26394254 -0.13379738 -0.1841563 -0.3683126
		 3.1932318e-10 -0.47675335 -0.29464948 -0.28017479 -0.38562754 -0.23833069 -0.21158117 0.068747006 -0.35996342
		 -0.46846321 -0.15221278 -0.3044256 -0.41250825 0.13403228 -0.21686822 -0.15008704 0.20657724 -0.15781069
		 -0.16087875 0.49513397 1.0343861e-09 -0.3010985 0.21876101 -1.3840189e-08 -0.24613315 0.33877322 0.20937316
		 -0.59643972 2.0375091e-09 -7.6406592e-10 -0.5086782 -0.36957651 -1.156157e-08 -0.55562407 -0.18053347 0.29210863
		 -0.17064804 -0.52520072 -1.6551754e-09 0.17039311 -0.52441615 -1.0860212e-09 1.3611232e-09 -0.38297549 0.19148749
		 0.3338415 -0.24255018 6.9204353e-09 0.54276943 -6.7770095e-10 -3.3885048e-10 0.24765544 -0.080468304 0.13020003
		 0.54090124 0.39298791 1.7364094e-08 0.19088985 0.58749866 5.9075029e-09 0.3165668 0.43571684 0.26928759
		 5.3478327e-10 0.51145375 0.3160955 -0.31606323 0.10269506 0.2053901 -0.25411391 -0.34975803 0.26719096
		 0.1834399 -0.25248355 0.19287992 0.36031693 0.11707396 0.23414792 9.582789e-10 1.1978486e-08 0.34830755
		 0.11188844 0.15400124 0.30800247 -0.10745908 0.14790475 0.29580954 0.13755703 -0.044695061 0.23402604
		 1.5500679e-09 -0.23200808 0.37539691 -0.23098241 -0.075050861 0.39297077;
	setAttr -s 120 ".ed[0:119]"  0 1 1 1 2 1 2 0 1 1 3 1 3 4 1 4 1 1 2 4 1
		 4 5 1 5 2 1 2 6 1 6 0 1 5 7 1 7 2 1 6 7 1 7 8 1 8 6 1 6 9 1 9 0 1 8 10 1 10 6 1 9 10 1
		 10 11 1 11 9 1 9 12 1 12 0 1 11 13 1 13 9 1 12 13 1 13 14 1 14 12 1 12 1 1 14 15 1
		 15 12 1 1 15 1 15 3 1 15 16 1 16 3 1 14 17 1 17 15 1 16 17 1 17 18 1 18 16 1 13 19 1
		 19 14 1 11 20 1 20 13 1 19 20 1 20 21 1 21 19 1 10 22 1 22 11 1 8 23 1 23 10 1 22 23 1
		 23 24 1 24 22 1 7 25 1 25 8 1 5 26 1 26 7 1 25 26 1 26 27 1 27 25 1 4 28 1 28 5 1
		 3 29 1 29 4 1 28 29 1 29 30 1 30 28 1 16 29 1 18 31 1 31 16 1 29 31 1 31 30 1 19 17 1
		 21 32 1 32 19 1 17 32 1 32 18 1 22 20 1 24 33 1 33 22 1 20 33 1 33 21 1 25 23 1 27 34 1
		 34 25 1 23 34 1 34 24 1 28 26 1 30 35 1 35 28 1 26 35 1 35 27 1 36 37 1 37 38 1 38 36 1
		 37 30 1 31 37 1 38 31 1 18 38 1 36 39 1 39 37 1 39 27 1 35 39 1 37 35 1 36 40 1 40 39 1
		 40 24 1 34 40 1 39 34 1 36 41 1 41 40 1 41 21 1 33 41 1 40 33 1 38 41 1 32 38 1 41 32 1;
	setAttr -s 80 -ch 240 ".fc[0:79]" -type "polyFaces" 
		f 3 0 1 2
		f 3 3 4 5
		f 3 6 7 8
		f 3 -6 -7 -2
		f 3 -3 9 10
		f 3 -9 11 12
		f 3 13 14 15
		f 3 -13 -14 -10
		f 3 -11 16 17
		f 3 -16 18 19
		f 3 20 21 22
		f 3 -20 -21 -17
		f 3 -18 23 24
		f 3 -23 25 26
		f 3 27 28 29
		f 3 -27 -28 -24
		f 3 -25 30 -1
		f 3 -30 31 32
		f 3 33 34 -4
		f 3 -33 -34 -31
		f 3 -35 35 36
		f 3 -32 37 38
		f 3 39 40 41
		f 3 -39 -40 -36
		f 3 -29 42 43
		f 3 -26 44 45
		f 3 46 47 48
		f 3 -46 -47 -43
		f 3 -22 49 50
		f 3 -19 51 52
		f 3 53 54 55
		f 3 -53 -54 -50
		f 3 -15 56 57
		f 3 -12 58 59
		f 3 60 61 62
		f 3 -60 -61 -57
		f 3 -8 63 64
		f 3 -5 65 66
		f 3 67 68 69
		f 3 -67 -68 -64
		f 3 -37 70 -66
		f 3 -42 71 72
		f 3 73 74 -69
		f 3 -73 -74 -71
		f 3 -44 75 -38
		f 3 -49 76 77
		f 3 78 79 -41
		f 3 -78 -79 -76
		f 3 -51 80 -45
		f 3 -56 81 82
		f 3 83 84 -48
		f 3 -83 -84 -81
		f 3 -58 85 -52
		f 3 -63 86 87
		f 3 88 89 -55
		f 3 -88 -89 -86
		f 3 -65 90 -59
		f 3 -70 91 92
		f 3 93 94 -62
		f 3 -93 -94 -91
		f 3 95 96 97
		f 3 98 -75 99
		f 3 100 -72 101
		f 3 -100 -101 -97
		f 3 102 103 -96
		f 3 104 -95 105
		f 3 106 -92 -99
		f 3 -106 -107 -104
		f 3 107 108 -103
		f 3 109 -90 110
		f 3 111 -87 -105
		f 3 -111 -112 -109
		f 3 112 113 -108
		f 3 114 -85 115
		f 3 116 -82 -110
		f 3 -116 -117 -114
		f 3 -98 117 -113
		f 3 -102 -80 118
		f 3 119 -77 -115
		f 3 -119 -120 -118;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "mountain1_22" -p "RockGeo";
	rename -uid "2BA2C396-4819-8AB3-2C6A-5896CC4F19F5";
	setAttr ".t" -type "double3" 18.830261039789633 7.7025696819861977 -57.766226928065834 ;
createNode mesh -n "mountain1_22Shape" -p "mountain1_22";
	rename -uid "BCDF6EE2-4FE0-E65A-A375-A0888B79BDC1";
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
	setAttr -s 42 ".vt[0:41]"  -5.5569727e-10 6.6683672e-09 -0.58796507
		 2.7279394e-09 0.20855996 -0.33745706 0.3180064 0.10332671 -0.5410248 1.7477885e-09 0.38534856 -0.19267403
		 0.32514933 0.44752994 -0.34188196 0.61184579 0.19880104 -0.32166609 0.1726813 -0.23767541 -0.47535083
		 0.46169487 -0.15001363 -0.30002725 0.31028333 -0.42706838 -0.26394254 -0.13379738 -0.1841563 -0.3683126
		 3.1932318e-10 -0.47675335 -0.29464948 -0.28017479 -0.38562754 -0.23833069 -0.21158117 0.068747006 -0.35996342
		 -0.46846321 -0.15221278 -0.3044256 -0.41250825 0.13403228 -0.21686822 -0.15008704 0.20657724 -0.15781069
		 -0.16087875 0.49513397 1.0343861e-09 -0.3010985 0.21876101 -1.3840189e-08 -0.24613315 0.33877322 0.20937316
		 -0.59643972 2.0375091e-09 -7.6406592e-10 -0.5086782 -0.36957651 -1.156157e-08 -0.55562407 -0.18053347 0.29210863
		 -0.17064804 -0.52520072 -1.6551754e-09 0.17039311 -0.52441615 -1.0860212e-09 1.3611232e-09 -0.38297549 0.19148749
		 0.3338415 -0.24255018 6.9204353e-09 0.54276943 -6.7770095e-10 -3.3885048e-10 0.24765544 -0.080468304 0.13020003
		 0.54090124 0.39298791 1.7364094e-08 0.19088985 0.58749866 5.9075029e-09 0.3165668 0.43571684 0.26928759
		 5.3478327e-10 0.51145375 0.3160955 -0.31606323 0.10269506 0.2053901 -0.25411391 -0.34975803 0.26719096
		 0.1834399 -0.25248355 0.19287992 0.36031693 0.11707396 0.23414792 9.582789e-10 1.1978486e-08 0.34830755
		 0.11188844 0.15400124 0.30800247 -0.10745908 0.14790475 0.29580954 0.13755703 -0.044695061 0.23402604
		 1.5500679e-09 -0.23200808 0.37539691 -0.23098241 -0.075050861 0.39297077;
	setAttr -s 120 ".ed[0:119]"  0 1 1 1 2 1 2 0 1 1 3 1 3 4 1 4 1 1 2 4 1
		 4 5 1 5 2 1 2 6 1 6 0 1 5 7 1 7 2 1 6 7 1 7 8 1 8 6 1 6 9 1 9 0 1 8 10 1 10 6 1 9 10 1
		 10 11 1 11 9 1 9 12 1 12 0 1 11 13 1 13 9 1 12 13 1 13 14 1 14 12 1 12 1 1 14 15 1
		 15 12 1 1 15 1 15 3 1 15 16 1 16 3 1 14 17 1 17 15 1 16 17 1 17 18 1 18 16 1 13 19 1
		 19 14 1 11 20 1 20 13 1 19 20 1 20 21 1 21 19 1 10 22 1 22 11 1 8 23 1 23 10 1 22 23 1
		 23 24 1 24 22 1 7 25 1 25 8 1 5 26 1 26 7 1 25 26 1 26 27 1 27 25 1 4 28 1 28 5 1
		 3 29 1 29 4 1 28 29 1 29 30 1 30 28 1 16 29 1 18 31 1 31 16 1 29 31 1 31 30 1 19 17 1
		 21 32 1 32 19 1 17 32 1 32 18 1 22 20 1 24 33 1 33 22 1 20 33 1 33 21 1 25 23 1 27 34 1
		 34 25 1 23 34 1 34 24 1 28 26 1 30 35 1 35 28 1 26 35 1 35 27 1 36 37 1 37 38 1 38 36 1
		 37 30 1 31 37 1 38 31 1 18 38 1 36 39 1 39 37 1 39 27 1 35 39 1 37 35 1 36 40 1 40 39 1
		 40 24 1 34 40 1 39 34 1 36 41 1 41 40 1 41 21 1 33 41 1 40 33 1 38 41 1 32 38 1 41 32 1;
	setAttr -s 80 -ch 240 ".fc[0:79]" -type "polyFaces" 
		f 3 0 1 2
		f 3 3 4 5
		f 3 6 7 8
		f 3 -6 -7 -2
		f 3 -3 9 10
		f 3 -9 11 12
		f 3 13 14 15
		f 3 -13 -14 -10
		f 3 -11 16 17
		f 3 -16 18 19
		f 3 20 21 22
		f 3 -20 -21 -17
		f 3 -18 23 24
		f 3 -23 25 26
		f 3 27 28 29
		f 3 -27 -28 -24
		f 3 -25 30 -1
		f 3 -30 31 32
		f 3 33 34 -4
		f 3 -33 -34 -31
		f 3 -35 35 36
		f 3 -32 37 38
		f 3 39 40 41
		f 3 -39 -40 -36
		f 3 -29 42 43
		f 3 -26 44 45
		f 3 46 47 48
		f 3 -46 -47 -43
		f 3 -22 49 50
		f 3 -19 51 52
		f 3 53 54 55
		f 3 -53 -54 -50
		f 3 -15 56 57
		f 3 -12 58 59
		f 3 60 61 62
		f 3 -60 -61 -57
		f 3 -8 63 64
		f 3 -5 65 66
		f 3 67 68 69
		f 3 -67 -68 -64
		f 3 -37 70 -66
		f 3 -42 71 72
		f 3 73 74 -69
		f 3 -73 -74 -71
		f 3 -44 75 -38
		f 3 -49 76 77
		f 3 78 79 -41
		f 3 -78 -79 -76
		f 3 -51 80 -45
		f 3 -56 81 82
		f 3 83 84 -48
		f 3 -83 -84 -81
		f 3 -58 85 -52
		f 3 -63 86 87
		f 3 88 89 -55
		f 3 -88 -89 -86
		f 3 -65 90 -59
		f 3 -70 91 92
		f 3 93 94 -62
		f 3 -93 -94 -91
		f 3 95 96 97
		f 3 98 -75 99
		f 3 100 -72 101
		f 3 -100 -101 -97
		f 3 102 103 -96
		f 3 104 -95 105
		f 3 106 -92 -99
		f 3 -106 -107 -104
		f 3 107 108 -103
		f 3 109 -90 110
		f 3 111 -87 -105
		f 3 -111 -112 -109
		f 3 112 113 -108
		f 3 114 -85 115
		f 3 116 -82 -110
		f 3 -116 -117 -114
		f 3 -98 117 -113
		f 3 -102 -80 118
		f 3 119 -77 -115
		f 3 -119 -120 -118;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "mountain1_23" -p "RockGeo";
	rename -uid "F478DDA2-43E1-DD89-6A9C-8A960E2515B1";
	setAttr ".t" -type "double3" 2.2403870747552901 18.027084888397109 96.286192174109431 ;
createNode mesh -n "mountain1_23Shape" -p "mountain1_23";
	rename -uid "E74D6D35-43DE-C32B-C37D-50AD3D38D153";
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
	setAttr -s 42 ".vt[0:41]"  -5.5569727e-10 6.6683672e-09 -0.58796507
		 2.7279394e-09 0.20855996 -0.33745706 0.3180064 0.10332671 -0.5410248 1.7477885e-09 0.38534856 -0.19267403
		 0.32514933 0.44752994 -0.34188196 0.61184579 0.19880104 -0.32166609 0.1726813 -0.23767541 -0.47535083
		 0.46169487 -0.15001363 -0.30002725 0.31028333 -0.42706838 -0.26394254 -0.13379738 -0.1841563 -0.3683126
		 3.1932318e-10 -0.47675335 -0.29464948 -0.28017479 -0.38562754 -0.23833069 -0.21158117 0.068747006 -0.35996342
		 -0.46846321 -0.15221278 -0.3044256 -0.41250825 0.13403228 -0.21686822 -0.15008704 0.20657724 -0.15781069
		 -0.16087875 0.49513397 1.0343861e-09 -0.3010985 0.21876101 -1.3840189e-08 -0.24613315 0.33877322 0.20937316
		 -0.59643972 2.0375091e-09 -7.6406592e-10 -0.5086782 -0.36957651 -1.156157e-08 -0.55562407 -0.18053347 0.29210863
		 -0.17064804 -0.52520072 -1.6551754e-09 0.17039311 -0.52441615 -1.0860212e-09 1.3611232e-09 -0.38297549 0.19148749
		 0.3338415 -0.24255018 6.9204353e-09 0.54276943 -6.7770095e-10 -3.3885048e-10 0.24765544 -0.080468304 0.13020003
		 0.54090124 0.39298791 1.7364094e-08 0.19088985 0.58749866 5.9075029e-09 0.3165668 0.43571684 0.26928759
		 5.3478327e-10 0.51145375 0.3160955 -0.31606323 0.10269506 0.2053901 -0.25411391 -0.34975803 0.26719096
		 0.1834399 -0.25248355 0.19287992 0.36031693 0.11707396 0.23414792 9.582789e-10 1.1978486e-08 0.34830755
		 0.11188844 0.15400124 0.30800247 -0.10745908 0.14790475 0.29580954 0.13755703 -0.044695061 0.23402604
		 1.5500679e-09 -0.23200808 0.37539691 -0.23098241 -0.075050861 0.39297077;
	setAttr -s 120 ".ed[0:119]"  0 1 1 1 2 1 2 0 1 1 3 1 3 4 1 4 1 1 2 4 1
		 4 5 1 5 2 1 2 6 1 6 0 1 5 7 1 7 2 1 6 7 1 7 8 1 8 6 1 6 9 1 9 0 1 8 10 1 10 6 1 9 10 1
		 10 11 1 11 9 1 9 12 1 12 0 1 11 13 1 13 9 1 12 13 1 13 14 1 14 12 1 12 1 1 14 15 1
		 15 12 1 1 15 1 15 3 1 15 16 1 16 3 1 14 17 1 17 15 1 16 17 1 17 18 1 18 16 1 13 19 1
		 19 14 1 11 20 1 20 13 1 19 20 1 20 21 1 21 19 1 10 22 1 22 11 1 8 23 1 23 10 1 22 23 1
		 23 24 1 24 22 1 7 25 1 25 8 1 5 26 1 26 7 1 25 26 1 26 27 1 27 25 1 4 28 1 28 5 1
		 3 29 1 29 4 1 28 29 1 29 30 1 30 28 1 16 29 1 18 31 1 31 16 1 29 31 1 31 30 1 19 17 1
		 21 32 1 32 19 1 17 32 1 32 18 1 22 20 1 24 33 1 33 22 1 20 33 1 33 21 1 25 23 1 27 34 1
		 34 25 1 23 34 1 34 24 1 28 26 1 30 35 1 35 28 1 26 35 1 35 27 1 36 37 1 37 38 1 38 36 1
		 37 30 1 31 37 1 38 31 1 18 38 1 36 39 1 39 37 1 39 27 1 35 39 1 37 35 1 36 40 1 40 39 1
		 40 24 1 34 40 1 39 34 1 36 41 1 41 40 1 41 21 1 33 41 1 40 33 1 38 41 1 32 38 1 41 32 1;
	setAttr -s 80 -ch 240 ".fc[0:79]" -type "polyFaces" 
		f 3 0 1 2
		f 3 3 4 5
		f 3 6 7 8
		f 3 -6 -7 -2
		f 3 -3 9 10
		f 3 -9 11 12
		f 3 13 14 15
		f 3 -13 -14 -10
		f 3 -11 16 17
		f 3 -16 18 19
		f 3 20 21 22
		f 3 -20 -21 -17
		f 3 -18 23 24
		f 3 -23 25 26
		f 3 27 28 29
		f 3 -27 -28 -24
		f 3 -25 30 -1
		f 3 -30 31 32
		f 3 33 34 -4
		f 3 -33 -34 -31
		f 3 -35 35 36
		f 3 -32 37 38
		f 3 39 40 41
		f 3 -39 -40 -36
		f 3 -29 42 43
		f 3 -26 44 45
		f 3 46 47 48
		f 3 -46 -47 -43
		f 3 -22 49 50
		f 3 -19 51 52
		f 3 53 54 55
		f 3 -53 -54 -50
		f 3 -15 56 57
		f 3 -12 58 59
		f 3 60 61 62
		f 3 -60 -61 -57
		f 3 -8 63 64
		f 3 -5 65 66
		f 3 67 68 69
		f 3 -67 -68 -64
		f 3 -37 70 -66
		f 3 -42 71 72
		f 3 73 74 -69
		f 3 -73 -74 -71
		f 3 -44 75 -38
		f 3 -49 76 77
		f 3 78 79 -41
		f 3 -78 -79 -76
		f 3 -51 80 -45
		f 3 -56 81 82
		f 3 83 84 -48
		f 3 -83 -84 -81
		f 3 -58 85 -52
		f 3 -63 86 87
		f 3 88 89 -55
		f 3 -88 -89 -86
		f 3 -65 90 -59
		f 3 -70 91 92
		f 3 93 94 -62
		f 3 -93 -94 -91
		f 3 95 96 97
		f 3 98 -75 99
		f 3 100 -72 101
		f 3 -100 -101 -97
		f 3 102 103 -96
		f 3 104 -95 105
		f 3 106 -92 -99
		f 3 -106 -107 -104
		f 3 107 108 -103
		f 3 109 -90 110
		f 3 111 -87 -105
		f 3 -111 -112 -109
		f 3 112 113 -108
		f 3 114 -85 115
		f 3 116 -82 -110
		f 3 -116 -117 -114
		f 3 -98 117 -113
		f 3 -102 -80 118
		f 3 119 -77 -115
		f 3 -119 -120 -118;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "mountain1_24" -p "RockGeo";
	rename -uid "4DC9B514-442E-918D-FA2E-31A2D1B196C3";
	setAttr ".t" -type "double3" 10.793325789811234 10.605259235492852 82.63313453550083 ;
createNode mesh -n "mountain1_24Shape" -p "mountain1_24";
	rename -uid "BA342751-495D-9839-D342-609F28A08F36";
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
	setAttr -s 42 ".vt[0:41]"  -5.5569727e-10 6.6683672e-09 -0.58796507
		 2.7279394e-09 0.20855996 -0.33745706 0.3180064 0.10332671 -0.5410248 1.7477885e-09 0.38534856 -0.19267403
		 0.32514933 0.44752994 -0.34188196 0.61184579 0.19880104 -0.32166609 0.1726813 -0.23767541 -0.47535083
		 0.46169487 -0.15001363 -0.30002725 0.31028333 -0.42706838 -0.26394254 -0.13379738 -0.1841563 -0.3683126
		 3.1932318e-10 -0.47675335 -0.29464948 -0.28017479 -0.38562754 -0.23833069 -0.21158117 0.068747006 -0.35996342
		 -0.46846321 -0.15221278 -0.3044256 -0.41250825 0.13403228 -0.21686822 -0.15008704 0.20657724 -0.15781069
		 -0.16087875 0.49513397 1.0343861e-09 -0.3010985 0.21876101 -1.3840189e-08 -0.24613315 0.33877322 0.20937316
		 -0.59643972 2.0375091e-09 -7.6406592e-10 -0.5086782 -0.36957651 -1.156157e-08 -0.55562407 -0.18053347 0.29210863
		 -0.17064804 -0.52520072 -1.6551754e-09 0.17039311 -0.52441615 -1.0860212e-09 1.3611232e-09 -0.38297549 0.19148749
		 0.3338415 -0.24255018 6.9204353e-09 0.54276943 -6.7770095e-10 -3.3885048e-10 0.24765544 -0.080468304 0.13020003
		 0.54090124 0.39298791 1.7364094e-08 0.19088985 0.58749866 5.9075029e-09 0.3165668 0.43571684 0.26928759
		 5.3478327e-10 0.51145375 0.3160955 -0.31606323 0.10269506 0.2053901 -0.25411391 -0.34975803 0.26719096
		 0.1834399 -0.25248355 0.19287992 0.36031693 0.11707396 0.23414792 9.582789e-10 1.1978486e-08 0.34830755
		 0.11188844 0.15400124 0.30800247 -0.10745908 0.14790475 0.29580954 0.13755703 -0.044695061 0.23402604
		 1.5500679e-09 -0.23200808 0.37539691 -0.23098241 -0.075050861 0.39297077;
	setAttr -s 120 ".ed[0:119]"  0 1 1 1 2 1 2 0 1 1 3 1 3 4 1 4 1 1 2 4 1
		 4 5 1 5 2 1 2 6 1 6 0 1 5 7 1 7 2 1 6 7 1 7 8 1 8 6 1 6 9 1 9 0 1 8 10 1 10 6 1 9 10 1
		 10 11 1 11 9 1 9 12 1 12 0 1 11 13 1 13 9 1 12 13 1 13 14 1 14 12 1 12 1 1 14 15 1
		 15 12 1 1 15 1 15 3 1 15 16 1 16 3 1 14 17 1 17 15 1 16 17 1 17 18 1 18 16 1 13 19 1
		 19 14 1 11 20 1 20 13 1 19 20 1 20 21 1 21 19 1 10 22 1 22 11 1 8 23 1 23 10 1 22 23 1
		 23 24 1 24 22 1 7 25 1 25 8 1 5 26 1 26 7 1 25 26 1 26 27 1 27 25 1 4 28 1 28 5 1
		 3 29 1 29 4 1 28 29 1 29 30 1 30 28 1 16 29 1 18 31 1 31 16 1 29 31 1 31 30 1 19 17 1
		 21 32 1 32 19 1 17 32 1 32 18 1 22 20 1 24 33 1 33 22 1 20 33 1 33 21 1 25 23 1 27 34 1
		 34 25 1 23 34 1 34 24 1 28 26 1 30 35 1 35 28 1 26 35 1 35 27 1 36 37 1 37 38 1 38 36 1
		 37 30 1 31 37 1 38 31 1 18 38 1 36 39 1 39 37 1 39 27 1 35 39 1 37 35 1 36 40 1 40 39 1
		 40 24 1 34 40 1 39 34 1 36 41 1 41 40 1 41 21 1 33 41 1 40 33 1 38 41 1 32 38 1 41 32 1;
	setAttr -s 80 -ch 240 ".fc[0:79]" -type "polyFaces" 
		f 3 0 1 2
		f 3 3 4 5
		f 3 6 7 8
		f 3 -6 -7 -2
		f 3 -3 9 10
		f 3 -9 11 12
		f 3 13 14 15
		f 3 -13 -14 -10
		f 3 -11 16 17
		f 3 -16 18 19
		f 3 20 21 22
		f 3 -20 -21 -17
		f 3 -18 23 24
		f 3 -23 25 26
		f 3 27 28 29
		f 3 -27 -28 -24
		f 3 -25 30 -1
		f 3 -30 31 32
		f 3 33 34 -4
		f 3 -33 -34 -31
		f 3 -35 35 36
		f 3 -32 37 38
		f 3 39 40 41
		f 3 -39 -40 -36
		f 3 -29 42 43
		f 3 -26 44 45
		f 3 46 47 48
		f 3 -46 -47 -43
		f 3 -22 49 50
		f 3 -19 51 52
		f 3 53 54 55
		f 3 -53 -54 -50
		f 3 -15 56 57
		f 3 -12 58 59
		f 3 60 61 62
		f 3 -60 -61 -57
		f 3 -8 63 64
		f 3 -5 65 66
		f 3 67 68 69
		f 3 -67 -68 -64
		f 3 -37 70 -66
		f 3 -42 71 72
		f 3 73 74 -69
		f 3 -73 -74 -71
		f 3 -44 75 -38
		f 3 -49 76 77
		f 3 78 79 -41
		f 3 -78 -79 -76
		f 3 -51 80 -45
		f 3 -56 81 82
		f 3 83 84 -48
		f 3 -83 -84 -81
		f 3 -58 85 -52
		f 3 -63 86 87
		f 3 88 89 -55
		f 3 -88 -89 -86
		f 3 -65 90 -59
		f 3 -70 91 92
		f 3 93 94 -62
		f 3 -93 -94 -91
		f 3 95 96 97
		f 3 98 -75 99
		f 3 100 -72 101
		f 3 -100 -101 -97
		f 3 102 103 -96
		f 3 104 -95 105
		f 3 106 -92 -99
		f 3 -106 -107 -104
		f 3 107 108 -103
		f 3 109 -90 110
		f 3 111 -87 -105
		f 3 -111 -112 -109
		f 3 112 113 -108
		f 3 114 -85 115
		f 3 116 -82 -110
		f 3 -116 -117 -114
		f 3 -98 117 -113
		f 3 -102 -80 118
		f 3 119 -77 -115
		f 3 -119 -120 -118;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "mountain1_25" -p "RockGeo";
	rename -uid "22AC8137-425B-C43E-B527-499D3B6020A5";
	setAttr ".t" -type "double3" 24.637568479090248 19.230271134629877 40.407387314479593 ;
createNode mesh -n "mountain1_25Shape" -p "mountain1_25";
	rename -uid "FB3D492D-44BF-A62F-D391-BA8EE5C53F9E";
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
	setAttr -s 42 ".vt[0:41]"  -5.5569727e-10 6.6683672e-09 -0.58796507
		 2.7279394e-09 0.20855996 -0.33745706 0.3180064 0.10332671 -0.5410248 1.7477885e-09 0.38534856 -0.19267403
		 0.32514933 0.44752994 -0.34188196 0.61184579 0.19880104 -0.32166609 0.1726813 -0.23767541 -0.47535083
		 0.46169487 -0.15001363 -0.30002725 0.31028333 -0.42706838 -0.26394254 -0.13379738 -0.1841563 -0.3683126
		 3.1932318e-10 -0.47675335 -0.29464948 -0.28017479 -0.38562754 -0.23833069 -0.21158117 0.068747006 -0.35996342
		 -0.46846321 -0.15221278 -0.3044256 -0.41250825 0.13403228 -0.21686822 -0.15008704 0.20657724 -0.15781069
		 -0.16087875 0.49513397 1.0343861e-09 -0.3010985 0.21876101 -1.3840189e-08 -0.24613315 0.33877322 0.20937316
		 -0.59643972 2.0375091e-09 -7.6406592e-10 -0.5086782 -0.36957651 -1.156157e-08 -0.55562407 -0.18053347 0.29210863
		 -0.17064804 -0.52520072 -1.6551754e-09 0.17039311 -0.52441615 -1.0860212e-09 1.3611232e-09 -0.38297549 0.19148749
		 0.3338415 -0.24255018 6.9204353e-09 0.54276943 -6.7770095e-10 -3.3885048e-10 0.24765544 -0.080468304 0.13020003
		 0.54090124 0.39298791 1.7364094e-08 0.19088985 0.58749866 5.9075029e-09 0.3165668 0.43571684 0.26928759
		 5.3478327e-10 0.51145375 0.3160955 -0.31606323 0.10269506 0.2053901 -0.25411391 -0.34975803 0.26719096
		 0.1834399 -0.25248355 0.19287992 0.36031693 0.11707396 0.23414792 9.582789e-10 1.1978486e-08 0.34830755
		 0.11188844 0.15400124 0.30800247 -0.10745908 0.14790475 0.29580954 0.13755703 -0.044695061 0.23402604
		 1.5500679e-09 -0.23200808 0.37539691 -0.23098241 -0.075050861 0.39297077;
	setAttr -s 120 ".ed[0:119]"  0 1 1 1 2 1 2 0 1 1 3 1 3 4 1 4 1 1 2 4 1
		 4 5 1 5 2 1 2 6 1 6 0 1 5 7 1 7 2 1 6 7 1 7 8 1 8 6 1 6 9 1 9 0 1 8 10 1 10 6 1 9 10 1
		 10 11 1 11 9 1 9 12 1 12 0 1 11 13 1 13 9 1 12 13 1 13 14 1 14 12 1 12 1 1 14 15 1
		 15 12 1 1 15 1 15 3 1 15 16 1 16 3 1 14 17 1 17 15 1 16 17 1 17 18 1 18 16 1 13 19 1
		 19 14 1 11 20 1 20 13 1 19 20 1 20 21 1 21 19 1 10 22 1 22 11 1 8 23 1 23 10 1 22 23 1
		 23 24 1 24 22 1 7 25 1 25 8 1 5 26 1 26 7 1 25 26 1 26 27 1 27 25 1 4 28 1 28 5 1
		 3 29 1 29 4 1 28 29 1 29 30 1 30 28 1 16 29 1 18 31 1 31 16 1 29 31 1 31 30 1 19 17 1
		 21 32 1 32 19 1 17 32 1 32 18 1 22 20 1 24 33 1 33 22 1 20 33 1 33 21 1 25 23 1 27 34 1
		 34 25 1 23 34 1 34 24 1 28 26 1 30 35 1 35 28 1 26 35 1 35 27 1 36 37 1 37 38 1 38 36 1
		 37 30 1 31 37 1 38 31 1 18 38 1 36 39 1 39 37 1 39 27 1 35 39 1 37 35 1 36 40 1 40 39 1
		 40 24 1 34 40 1 39 34 1 36 41 1 41 40 1 41 21 1 33 41 1 40 33 1 38 41 1 32 38 1 41 32 1;
	setAttr -s 80 -ch 240 ".fc[0:79]" -type "polyFaces" 
		f 3 0 1 2
		f 3 3 4 5
		f 3 6 7 8
		f 3 -6 -7 -2
		f 3 -3 9 10
		f 3 -9 11 12
		f 3 13 14 15
		f 3 -13 -14 -10
		f 3 -11 16 17
		f 3 -16 18 19
		f 3 20 21 22
		f 3 -20 -21 -17
		f 3 -18 23 24
		f 3 -23 25 26
		f 3 27 28 29
		f 3 -27 -28 -24
		f 3 -25 30 -1
		f 3 -30 31 32
		f 3 33 34 -4
		f 3 -33 -34 -31
		f 3 -35 35 36
		f 3 -32 37 38
		f 3 39 40 41
		f 3 -39 -40 -36
		f 3 -29 42 43
		f 3 -26 44 45
		f 3 46 47 48
		f 3 -46 -47 -43
		f 3 -22 49 50
		f 3 -19 51 52
		f 3 53 54 55
		f 3 -53 -54 -50
		f 3 -15 56 57
		f 3 -12 58 59
		f 3 60 61 62
		f 3 -60 -61 -57
		f 3 -8 63 64
		f 3 -5 65 66
		f 3 67 68 69
		f 3 -67 -68 -64
		f 3 -37 70 -66
		f 3 -42 71 72
		f 3 73 74 -69
		f 3 -73 -74 -71
		f 3 -44 75 -38
		f 3 -49 76 77
		f 3 78 79 -41
		f 3 -78 -79 -76
		f 3 -51 80 -45
		f 3 -56 81 82
		f 3 83 84 -48
		f 3 -83 -84 -81
		f 3 -58 85 -52
		f 3 -63 86 87
		f 3 88 89 -55
		f 3 -88 -89 -86
		f 3 -65 90 -59
		f 3 -70 91 92
		f 3 93 94 -62
		f 3 -93 -94 -91
		f 3 95 96 97
		f 3 98 -75 99
		f 3 100 -72 101
		f 3 -100 -101 -97
		f 3 102 103 -96
		f 3 104 -95 105
		f 3 106 -92 -99
		f 3 -106 -107 -104
		f 3 107 108 -103
		f 3 109 -90 110
		f 3 111 -87 -105
		f 3 -111 -112 -109
		f 3 112 113 -108
		f 3 114 -85 115
		f 3 116 -82 -110
		f 3 -116 -117 -114
		f 3 -98 117 -113
		f 3 -102 -80 118
		f 3 119 -77 -115
		f 3 -119 -120 -118;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "mountain1_26" -p "RockGeo";
	rename -uid "5C8D957A-470A-AFB9-2B6E-589BFD05D4F9";
	setAttr ".t" -type "double3" 24.32151771404321 -1.7418552731471593 -17.803288850389976 ;
createNode mesh -n "mountain1_26Shape" -p "mountain1_26";
	rename -uid "2AEFAFFF-49C3-656F-0261-DD8C09C36289";
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
	setAttr -s 42 ".vt[0:41]"  -5.5569727e-10 6.6683672e-09 -0.58796507
		 2.7279394e-09 0.20855996 -0.33745706 0.3180064 0.10332671 -0.5410248 1.7477885e-09 0.38534856 -0.19267403
		 0.32514933 0.44752994 -0.34188196 0.61184579 0.19880104 -0.32166609 0.1726813 -0.23767541 -0.47535083
		 0.46169487 -0.15001363 -0.30002725 0.31028333 -0.42706838 -0.26394254 -0.13379738 -0.1841563 -0.3683126
		 3.1932318e-10 -0.47675335 -0.29464948 -0.28017479 -0.38562754 -0.23833069 -0.21158117 0.068747006 -0.35996342
		 -0.46846321 -0.15221278 -0.3044256 -0.41250825 0.13403228 -0.21686822 -0.15008704 0.20657724 -0.15781069
		 -0.16087875 0.49513397 1.0343861e-09 -0.3010985 0.21876101 -1.3840189e-08 -0.24613315 0.33877322 0.20937316
		 -0.59643972 2.0375091e-09 -7.6406592e-10 -0.5086782 -0.36957651 -1.156157e-08 -0.55562407 -0.18053347 0.29210863
		 -0.17064804 -0.52520072 -1.6551754e-09 0.17039311 -0.52441615 -1.0860212e-09 1.3611232e-09 -0.38297549 0.19148749
		 0.3338415 -0.24255018 6.9204353e-09 0.54276943 -6.7770095e-10 -3.3885048e-10 0.24765544 -0.080468304 0.13020003
		 0.54090124 0.39298791 1.7364094e-08 0.19088985 0.58749866 5.9075029e-09 0.3165668 0.43571684 0.26928759
		 5.3478327e-10 0.51145375 0.3160955 -0.31606323 0.10269506 0.2053901 -0.25411391 -0.34975803 0.26719096
		 0.1834399 -0.25248355 0.19287992 0.36031693 0.11707396 0.23414792 9.582789e-10 1.1978486e-08 0.34830755
		 0.11188844 0.15400124 0.30800247 -0.10745908 0.14790475 0.29580954 0.13755703 -0.044695061 0.23402604
		 1.5500679e-09 -0.23200808 0.37539691 -0.23098241 -0.075050861 0.39297077;
	setAttr -s 120 ".ed[0:119]"  0 1 1 1 2 1 2 0 1 1 3 1 3 4 1 4 1 1 2 4 1
		 4 5 1 5 2 1 2 6 1 6 0 1 5 7 1 7 2 1 6 7 1 7 8 1 8 6 1 6 9 1 9 0 1 8 10 1 10 6 1 9 10 1
		 10 11 1 11 9 1 9 12 1 12 0 1 11 13 1 13 9 1 12 13 1 13 14 1 14 12 1 12 1 1 14 15 1
		 15 12 1 1 15 1 15 3 1 15 16 1 16 3 1 14 17 1 17 15 1 16 17 1 17 18 1 18 16 1 13 19 1
		 19 14 1 11 20 1 20 13 1 19 20 1 20 21 1 21 19 1 10 22 1 22 11 1 8 23 1 23 10 1 22 23 1
		 23 24 1 24 22 1 7 25 1 25 8 1 5 26 1 26 7 1 25 26 1 26 27 1 27 25 1 4 28 1 28 5 1
		 3 29 1 29 4 1 28 29 1 29 30 1 30 28 1 16 29 1 18 31 1 31 16 1 29 31 1 31 30 1 19 17 1
		 21 32 1 32 19 1 17 32 1 32 18 1 22 20 1 24 33 1 33 22 1 20 33 1 33 21 1 25 23 1 27 34 1
		 34 25 1 23 34 1 34 24 1 28 26 1 30 35 1 35 28 1 26 35 1 35 27 1 36 37 1 37 38 1 38 36 1
		 37 30 1 31 37 1 38 31 1 18 38 1 36 39 1 39 37 1 39 27 1 35 39 1 37 35 1 36 40 1 40 39 1
		 40 24 1 34 40 1 39 34 1 36 41 1 41 40 1 41 21 1 33 41 1 40 33 1 38 41 1 32 38 1 41 32 1;
	setAttr -s 80 -ch 240 ".fc[0:79]" -type "polyFaces" 
		f 3 0 1 2
		f 3 3 4 5
		f 3 6 7 8
		f 3 -6 -7 -2
		f 3 -3 9 10
		f 3 -9 11 12
		f 3 13 14 15
		f 3 -13 -14 -10
		f 3 -11 16 17
		f 3 -16 18 19
		f 3 20 21 22
		f 3 -20 -21 -17
		f 3 -18 23 24
		f 3 -23 25 26
		f 3 27 28 29
		f 3 -27 -28 -24
		f 3 -25 30 -1
		f 3 -30 31 32
		f 3 33 34 -4
		f 3 -33 -34 -31
		f 3 -35 35 36
		f 3 -32 37 38
		f 3 39 40 41
		f 3 -39 -40 -36
		f 3 -29 42 43
		f 3 -26 44 45
		f 3 46 47 48
		f 3 -46 -47 -43
		f 3 -22 49 50
		f 3 -19 51 52
		f 3 53 54 55
		f 3 -53 -54 -50
		f 3 -15 56 57
		f 3 -12 58 59
		f 3 60 61 62
		f 3 -60 -61 -57
		f 3 -8 63 64
		f 3 -5 65 66
		f 3 67 68 69
		f 3 -67 -68 -64
		f 3 -37 70 -66
		f 3 -42 71 72
		f 3 73 74 -69
		f 3 -73 -74 -71
		f 3 -44 75 -38
		f 3 -49 76 77
		f 3 78 79 -41
		f 3 -78 -79 -76
		f 3 -51 80 -45
		f 3 -56 81 82
		f 3 83 84 -48
		f 3 -83 -84 -81
		f 3 -58 85 -52
		f 3 -63 86 87
		f 3 88 89 -55
		f 3 -88 -89 -86
		f 3 -65 90 -59
		f 3 -70 91 92
		f 3 93 94 -62
		f 3 -93 -94 -91
		f 3 95 96 97
		f 3 98 -75 99
		f 3 100 -72 101
		f 3 -100 -101 -97
		f 3 102 103 -96
		f 3 104 -95 105
		f 3 106 -92 -99
		f 3 -106 -107 -104
		f 3 107 108 -103
		f 3 109 -90 110
		f 3 111 -87 -105
		f 3 -111 -112 -109
		f 3 112 113 -108
		f 3 114 -85 115
		f 3 116 -82 -110
		f 3 -116 -117 -114
		f 3 -98 117 -113
		f 3 -102 -80 118
		f 3 119 -77 -115
		f 3 -119 -120 -118;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "mountain1_27" -p "RockGeo";
	rename -uid "7C32F1D9-4644-BF0B-5A52-588207C6DEBF";
	setAttr ".t" -type "double3" 16.163875702481505 4.0012662566542723 42.973897129233762 ;
createNode mesh -n "mountain1_27Shape" -p "mountain1_27";
	rename -uid "D0C44D9E-496E-93F0-4A86-E58599B069D8";
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
	setAttr -s 42 ".vt[0:41]"  -5.5569727e-10 6.6683672e-09 -0.58796507
		 2.7279394e-09 0.20855996 -0.33745706 0.3180064 0.10332671 -0.5410248 1.7477885e-09 0.38534856 -0.19267403
		 0.32514933 0.44752994 -0.34188196 0.61184579 0.19880104 -0.32166609 0.1726813 -0.23767541 -0.47535083
		 0.46169487 -0.15001363 -0.30002725 0.31028333 -0.42706838 -0.26394254 -0.13379738 -0.1841563 -0.3683126
		 3.1932318e-10 -0.47675335 -0.29464948 -0.28017479 -0.38562754 -0.23833069 -0.21158117 0.068747006 -0.35996342
		 -0.46846321 -0.15221278 -0.3044256 -0.41250825 0.13403228 -0.21686822 -0.15008704 0.20657724 -0.15781069
		 -0.16087875 0.49513397 1.0343861e-09 -0.3010985 0.21876101 -1.3840189e-08 -0.24613315 0.33877322 0.20937316
		 -0.59643972 2.0375091e-09 -7.6406592e-10 -0.5086782 -0.36957651 -1.156157e-08 -0.55562407 -0.18053347 0.29210863
		 -0.17064804 -0.52520072 -1.6551754e-09 0.17039311 -0.52441615 -1.0860212e-09 1.3611232e-09 -0.38297549 0.19148749
		 0.3338415 -0.24255018 6.9204353e-09 0.54276943 -6.7770095e-10 -3.3885048e-10 0.24765544 -0.080468304 0.13020003
		 0.54090124 0.39298791 1.7364094e-08 0.19088985 0.58749866 5.9075029e-09 0.3165668 0.43571684 0.26928759
		 5.3478327e-10 0.51145375 0.3160955 -0.31606323 0.10269506 0.2053901 -0.25411391 -0.34975803 0.26719096
		 0.1834399 -0.25248355 0.19287992 0.36031693 0.11707396 0.23414792 9.582789e-10 1.1978486e-08 0.34830755
		 0.11188844 0.15400124 0.30800247 -0.10745908 0.14790475 0.29580954 0.13755703 -0.044695061 0.23402604
		 1.5500679e-09 -0.23200808 0.37539691 -0.23098241 -0.075050861 0.39297077;
	setAttr -s 120 ".ed[0:119]"  0 1 1 1 2 1 2 0 1 1 3 1 3 4 1 4 1 1 2 4 1
		 4 5 1 5 2 1 2 6 1 6 0 1 5 7 1 7 2 1 6 7 1 7 8 1 8 6 1 6 9 1 9 0 1 8 10 1 10 6 1 9 10 1
		 10 11 1 11 9 1 9 12 1 12 0 1 11 13 1 13 9 1 12 13 1 13 14 1 14 12 1 12 1 1 14 15 1
		 15 12 1 1 15 1 15 3 1 15 16 1 16 3 1 14 17 1 17 15 1 16 17 1 17 18 1 18 16 1 13 19 1
		 19 14 1 11 20 1 20 13 1 19 20 1 20 21 1 21 19 1 10 22 1 22 11 1 8 23 1 23 10 1 22 23 1
		 23 24 1 24 22 1 7 25 1 25 8 1 5 26 1 26 7 1 25 26 1 26 27 1 27 25 1 4 28 1 28 5 1
		 3 29 1 29 4 1 28 29 1 29 30 1 30 28 1 16 29 1 18 31 1 31 16 1 29 31 1 31 30 1 19 17 1
		 21 32 1 32 19 1 17 32 1 32 18 1 22 20 1 24 33 1 33 22 1 20 33 1 33 21 1 25 23 1 27 34 1
		 34 25 1 23 34 1 34 24 1 28 26 1 30 35 1 35 28 1 26 35 1 35 27 1 36 37 1 37 38 1 38 36 1
		 37 30 1 31 37 1 38 31 1 18 38 1 36 39 1 39 37 1 39 27 1 35 39 1 37 35 1 36 40 1 40 39 1
		 40 24 1 34 40 1 39 34 1 36 41 1 41 40 1 41 21 1 33 41 1 40 33 1 38 41 1 32 38 1 41 32 1;
	setAttr -s 80 -ch 240 ".fc[0:79]" -type "polyFaces" 
		f 3 0 1 2
		f 3 3 4 5
		f 3 6 7 8
		f 3 -6 -7 -2
		f 3 -3 9 10
		f 3 -9 11 12
		f 3 13 14 15
		f 3 -13 -14 -10
		f 3 -11 16 17
		f 3 -16 18 19
		f 3 20 21 22
		f 3 -20 -21 -17
		f 3 -18 23 24
		f 3 -23 25 26
		f 3 27 28 29
		f 3 -27 -28 -24
		f 3 -25 30 -1
		f 3 -30 31 32
		f 3 33 34 -4
		f 3 -33 -34 -31
		f 3 -35 35 36
		f 3 -32 37 38
		f 3 39 40 41
		f 3 -39 -40 -36
		f 3 -29 42 43
		f 3 -26 44 45
		f 3 46 47 48
		f 3 -46 -47 -43
		f 3 -22 49 50
		f 3 -19 51 52
		f 3 53 54 55
		f 3 -53 -54 -50
		f 3 -15 56 57
		f 3 -12 58 59
		f 3 60 61 62
		f 3 -60 -61 -57
		f 3 -8 63 64
		f 3 -5 65 66
		f 3 67 68 69
		f 3 -67 -68 -64
		f 3 -37 70 -66
		f 3 -42 71 72
		f 3 73 74 -69
		f 3 -73 -74 -71
		f 3 -44 75 -38
		f 3 -49 76 77
		f 3 78 79 -41
		f 3 -78 -79 -76
		f 3 -51 80 -45
		f 3 -56 81 82
		f 3 83 84 -48
		f 3 -83 -84 -81
		f 3 -58 85 -52
		f 3 -63 86 87
		f 3 88 89 -55
		f 3 -88 -89 -86
		f 3 -65 90 -59
		f 3 -70 91 92
		f 3 93 94 -62
		f 3 -93 -94 -91
		f 3 95 96 97
		f 3 98 -75 99
		f 3 100 -72 101
		f 3 -100 -101 -97
		f 3 102 103 -96
		f 3 104 -95 105
		f 3 106 -92 -99
		f 3 -106 -107 -104
		f 3 107 108 -103
		f 3 109 -90 110
		f 3 111 -87 -105
		f 3 -111 -112 -109
		f 3 112 113 -108
		f 3 114 -85 115
		f 3 116 -82 -110
		f 3 -116 -117 -114
		f 3 -98 117 -113
		f 3 -102 -80 118
		f 3 119 -77 -115
		f 3 -119 -120 -118;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "mountain1_28" -p "RockGeo";
	rename -uid "3440604D-4148-21E8-54BD-89AD3B351E2C";
	setAttr ".t" -type "double3" 20.534290002725726 15.339277576815107 24.684046861042219 ;
createNode mesh -n "mountain1_28Shape" -p "mountain1_28";
	rename -uid "28169DD8-4A3A-3FA5-8F96-22B14EE76DA3";
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
	setAttr -s 42 ".vt[0:41]"  -5.5569727e-10 6.6683672e-09 -0.58796507
		 2.7279394e-09 0.20855996 -0.33745706 0.3180064 0.10332671 -0.5410248 1.7477885e-09 0.38534856 -0.19267403
		 0.32514933 0.44752994 -0.34188196 0.61184579 0.19880104 -0.32166609 0.1726813 -0.23767541 -0.47535083
		 0.46169487 -0.15001363 -0.30002725 0.31028333 -0.42706838 -0.26394254 -0.13379738 -0.1841563 -0.3683126
		 3.1932318e-10 -0.47675335 -0.29464948 -0.28017479 -0.38562754 -0.23833069 -0.21158117 0.068747006 -0.35996342
		 -0.46846321 -0.15221278 -0.3044256 -0.41250825 0.13403228 -0.21686822 -0.15008704 0.20657724 -0.15781069
		 -0.16087875 0.49513397 1.0343861e-09 -0.3010985 0.21876101 -1.3840189e-08 -0.24613315 0.33877322 0.20937316
		 -0.59643972 2.0375091e-09 -7.6406592e-10 -0.5086782 -0.36957651 -1.156157e-08 -0.55562407 -0.18053347 0.29210863
		 -0.17064804 -0.52520072 -1.6551754e-09 0.17039311 -0.52441615 -1.0860212e-09 1.3611232e-09 -0.38297549 0.19148749
		 0.3338415 -0.24255018 6.9204353e-09 0.54276943 -6.7770095e-10 -3.3885048e-10 0.24765544 -0.080468304 0.13020003
		 0.54090124 0.39298791 1.7364094e-08 0.19088985 0.58749866 5.9075029e-09 0.3165668 0.43571684 0.26928759
		 5.3478327e-10 0.51145375 0.3160955 -0.31606323 0.10269506 0.2053901 -0.25411391 -0.34975803 0.26719096
		 0.1834399 -0.25248355 0.19287992 0.36031693 0.11707396 0.23414792 9.582789e-10 1.1978486e-08 0.34830755
		 0.11188844 0.15400124 0.30800247 -0.10745908 0.14790475 0.29580954 0.13755703 -0.044695061 0.23402604
		 1.5500679e-09 -0.23200808 0.37539691 -0.23098241 -0.075050861 0.39297077;
	setAttr -s 120 ".ed[0:119]"  0 1 1 1 2 1 2 0 1 1 3 1 3 4 1 4 1 1 2 4 1
		 4 5 1 5 2 1 2 6 1 6 0 1 5 7 1 7 2 1 6 7 1 7 8 1 8 6 1 6 9 1 9 0 1 8 10 1 10 6 1 9 10 1
		 10 11 1 11 9 1 9 12 1 12 0 1 11 13 1 13 9 1 12 13 1 13 14 1 14 12 1 12 1 1 14 15 1
		 15 12 1 1 15 1 15 3 1 15 16 1 16 3 1 14 17 1 17 15 1 16 17 1 17 18 1 18 16 1 13 19 1
		 19 14 1 11 20 1 20 13 1 19 20 1 20 21 1 21 19 1 10 22 1 22 11 1 8 23 1 23 10 1 22 23 1
		 23 24 1 24 22 1 7 25 1 25 8 1 5 26 1 26 7 1 25 26 1 26 27 1 27 25 1 4 28 1 28 5 1
		 3 29 1 29 4 1 28 29 1 29 30 1 30 28 1 16 29 1 18 31 1 31 16 1 29 31 1 31 30 1 19 17 1
		 21 32 1 32 19 1 17 32 1 32 18 1 22 20 1 24 33 1 33 22 1 20 33 1 33 21 1 25 23 1 27 34 1
		 34 25 1 23 34 1 34 24 1 28 26 1 30 35 1 35 28 1 26 35 1 35 27 1 36 37 1 37 38 1 38 36 1
		 37 30 1 31 37 1 38 31 1 18 38 1 36 39 1 39 37 1 39 27 1 35 39 1 37 35 1 36 40 1 40 39 1
		 40 24 1 34 40 1 39 34 1 36 41 1 41 40 1 41 21 1 33 41 1 40 33 1 38 41 1 32 38 1 41 32 1;
	setAttr -s 80 -ch 240 ".fc[0:79]" -type "polyFaces" 
		f 3 0 1 2
		f 3 3 4 5
		f 3 6 7 8
		f 3 -6 -7 -2
		f 3 -3 9 10
		f 3 -9 11 12
		f 3 13 14 15
		f 3 -13 -14 -10
		f 3 -11 16 17
		f 3 -16 18 19
		f 3 20 21 22
		f 3 -20 -21 -17
		f 3 -18 23 24
		f 3 -23 25 26
		f 3 27 28 29
		f 3 -27 -28 -24
		f 3 -25 30 -1
		f 3 -30 31 32
		f 3 33 34 -4
		f 3 -33 -34 -31
		f 3 -35 35 36
		f 3 -32 37 38
		f 3 39 40 41
		f 3 -39 -40 -36
		f 3 -29 42 43
		f 3 -26 44 45
		f 3 46 47 48
		f 3 -46 -47 -43
		f 3 -22 49 50
		f 3 -19 51 52
		f 3 53 54 55
		f 3 -53 -54 -50
		f 3 -15 56 57
		f 3 -12 58 59
		f 3 60 61 62
		f 3 -60 -61 -57
		f 3 -8 63 64
		f 3 -5 65 66
		f 3 67 68 69
		f 3 -67 -68 -64
		f 3 -37 70 -66
		f 3 -42 71 72
		f 3 73 74 -69
		f 3 -73 -74 -71
		f 3 -44 75 -38
		f 3 -49 76 77
		f 3 78 79 -41
		f 3 -78 -79 -76
		f 3 -51 80 -45
		f 3 -56 81 82
		f 3 83 84 -48
		f 3 -83 -84 -81
		f 3 -58 85 -52
		f 3 -63 86 87
		f 3 88 89 -55
		f 3 -88 -89 -86
		f 3 -65 90 -59
		f 3 -70 91 92
		f 3 93 94 -62
		f 3 -93 -94 -91
		f 3 95 96 97
		f 3 98 -75 99
		f 3 100 -72 101
		f 3 -100 -101 -97
		f 3 102 103 -96
		f 3 104 -95 105
		f 3 106 -92 -99
		f 3 -106 -107 -104
		f 3 107 108 -103
		f 3 109 -90 110
		f 3 111 -87 -105
		f 3 -111 -112 -109
		f 3 112 113 -108
		f 3 114 -85 115
		f 3 116 -82 -110
		f 3 -116 -117 -114
		f 3 -98 117 -113
		f 3 -102 -80 118
		f 3 119 -77 -115
		f 3 -119 -120 -118;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "mountain1_29" -p "RockGeo";
	rename -uid "FDC22C27-4530-9A1E-5FD8-BE9E74C39235";
	setAttr ".t" -type "double3" 26.781001693911151 -3.1350586128971081 -6.9110173139250719 ;
createNode mesh -n "mountain1_29Shape" -p "mountain1_29";
	rename -uid "17F7F25E-4B58-8D14-7563-9C80630A42A9";
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
	setAttr -s 42 ".vt[0:41]"  -5.5569727e-10 6.6683672e-09 -0.58796507
		 2.7279394e-09 0.20855996 -0.33745706 0.3180064 0.10332671 -0.5410248 1.7477885e-09 0.38534856 -0.19267403
		 0.32514933 0.44752994 -0.34188196 0.61184579 0.19880104 -0.32166609 0.1726813 -0.23767541 -0.47535083
		 0.46169487 -0.15001363 -0.30002725 0.31028333 -0.42706838 -0.26394254 -0.13379738 -0.1841563 -0.3683126
		 3.1932318e-10 -0.47675335 -0.29464948 -0.28017479 -0.38562754 -0.23833069 -0.21158117 0.068747006 -0.35996342
		 -0.46846321 -0.15221278 -0.3044256 -0.41250825 0.13403228 -0.21686822 -0.15008704 0.20657724 -0.15781069
		 -0.16087875 0.49513397 1.0343861e-09 -0.3010985 0.21876101 -1.3840189e-08 -0.24613315 0.33877322 0.20937316
		 -0.59643972 2.0375091e-09 -7.6406592e-10 -0.5086782 -0.36957651 -1.156157e-08 -0.55562407 -0.18053347 0.29210863
		 -0.17064804 -0.52520072 -1.6551754e-09 0.17039311 -0.52441615 -1.0860212e-09 1.3611232e-09 -0.38297549 0.19148749
		 0.3338415 -0.24255018 6.9204353e-09 0.54276943 -6.7770095e-10 -3.3885048e-10 0.24765544 -0.080468304 0.13020003
		 0.54090124 0.39298791 1.7364094e-08 0.19088985 0.58749866 5.9075029e-09 0.3165668 0.43571684 0.26928759
		 5.3478327e-10 0.51145375 0.3160955 -0.31606323 0.10269506 0.2053901 -0.25411391 -0.34975803 0.26719096
		 0.1834399 -0.25248355 0.19287992 0.36031693 0.11707396 0.23414792 9.582789e-10 1.1978486e-08 0.34830755
		 0.11188844 0.15400124 0.30800247 -0.10745908 0.14790475 0.29580954 0.13755703 -0.044695061 0.23402604
		 1.5500679e-09 -0.23200808 0.37539691 -0.23098241 -0.075050861 0.39297077;
	setAttr -s 120 ".ed[0:119]"  0 1 1 1 2 1 2 0 1 1 3 1 3 4 1 4 1 1 2 4 1
		 4 5 1 5 2 1 2 6 1 6 0 1 5 7 1 7 2 1 6 7 1 7 8 1 8 6 1 6 9 1 9 0 1 8 10 1 10 6 1 9 10 1
		 10 11 1 11 9 1 9 12 1 12 0 1 11 13 1 13 9 1 12 13 1 13 14 1 14 12 1 12 1 1 14 15 1
		 15 12 1 1 15 1 15 3 1 15 16 1 16 3 1 14 17 1 17 15 1 16 17 1 17 18 1 18 16 1 13 19 1
		 19 14 1 11 20 1 20 13 1 19 20 1 20 21 1 21 19 1 10 22 1 22 11 1 8 23 1 23 10 1 22 23 1
		 23 24 1 24 22 1 7 25 1 25 8 1 5 26 1 26 7 1 25 26 1 26 27 1 27 25 1 4 28 1 28 5 1
		 3 29 1 29 4 1 28 29 1 29 30 1 30 28 1 16 29 1 18 31 1 31 16 1 29 31 1 31 30 1 19 17 1
		 21 32 1 32 19 1 17 32 1 32 18 1 22 20 1 24 33 1 33 22 1 20 33 1 33 21 1 25 23 1 27 34 1
		 34 25 1 23 34 1 34 24 1 28 26 1 30 35 1 35 28 1 26 35 1 35 27 1 36 37 1 37 38 1 38 36 1
		 37 30 1 31 37 1 38 31 1 18 38 1 36 39 1 39 37 1 39 27 1 35 39 1 37 35 1 36 40 1 40 39 1
		 40 24 1 34 40 1 39 34 1 36 41 1 41 40 1 41 21 1 33 41 1 40 33 1 38 41 1 32 38 1 41 32 1;
	setAttr -s 80 -ch 240 ".fc[0:79]" -type "polyFaces" 
		f 3 0 1 2
		f 3 3 4 5
		f 3 6 7 8
		f 3 -6 -7 -2
		f 3 -3 9 10
		f 3 -9 11 12
		f 3 13 14 15
		f 3 -13 -14 -10
		f 3 -11 16 17
		f 3 -16 18 19
		f 3 20 21 22
		f 3 -20 -21 -17
		f 3 -18 23 24
		f 3 -23 25 26
		f 3 27 28 29
		f 3 -27 -28 -24
		f 3 -25 30 -1
		f 3 -30 31 32
		f 3 33 34 -4
		f 3 -33 -34 -31
		f 3 -35 35 36
		f 3 -32 37 38
		f 3 39 40 41
		f 3 -39 -40 -36
		f 3 -29 42 43
		f 3 -26 44 45
		f 3 46 47 48
		f 3 -46 -47 -43
		f 3 -22 49 50
		f 3 -19 51 52
		f 3 53 54 55
		f 3 -53 -54 -50
		f 3 -15 56 57
		f 3 -12 58 59
		f 3 60 61 62
		f 3 -60 -61 -57
		f 3 -8 63 64
		f 3 -5 65 66
		f 3 67 68 69
		f 3 -67 -68 -64
		f 3 -37 70 -66
		f 3 -42 71 72
		f 3 73 74 -69
		f 3 -73 -74 -71
		f 3 -44 75 -38
		f 3 -49 76 77
		f 3 78 79 -41
		f 3 -78 -79 -76
		f 3 -51 80 -45
		f 3 -56 81 82
		f 3 83 84 -48
		f 3 -83 -84 -81
		f 3 -58 85 -52
		f 3 -63 86 87
		f 3 88 89 -55
		f 3 -88 -89 -86
		f 3 -65 90 -59
		f 3 -70 91 92
		f 3 93 94 -62
		f 3 -93 -94 -91
		f 3 95 96 97
		f 3 98 -75 99
		f 3 100 -72 101
		f 3 -100 -101 -97
		f 3 102 103 -96
		f 3 104 -95 105
		f 3 106 -92 -99
		f 3 -106 -107 -104
		f 3 107 108 -103
		f 3 109 -90 110
		f 3 111 -87 -105
		f 3 -111 -112 -109
		f 3 112 113 -108
		f 3 114 -85 115
		f 3 116 -82 -110
		f 3 -116 -117 -114
		f 3 -98 117 -113
		f 3 -102 -80 118
		f 3 119 -77 -115
		f 3 -119 -120 -118;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "mountain1_30" -p "RockGeo";
	rename -uid "6CA8239F-4FBD-D47D-3966-CB99C7F9C7B4";
	setAttr ".t" -type "double3" 22.131177164633158 11.455978937875493 -70.349891887700977 ;
createNode mesh -n "mountain1_30Shape" -p "mountain1_30";
	rename -uid "7A70E683-4819-2A74-1430-4C8D69BAE92A";
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
	setAttr -s 42 ".vt[0:41]"  -5.5569727e-10 6.6683672e-09 -0.58796507
		 2.7279394e-09 0.20855996 -0.33745706 0.3180064 0.10332671 -0.5410248 1.7477885e-09 0.38534856 -0.19267403
		 0.32514933 0.44752994 -0.34188196 0.61184579 0.19880104 -0.32166609 0.1726813 -0.23767541 -0.47535083
		 0.46169487 -0.15001363 -0.30002725 0.31028333 -0.42706838 -0.26394254 -0.13379738 -0.1841563 -0.3683126
		 3.1932318e-10 -0.47675335 -0.29464948 -0.28017479 -0.38562754 -0.23833069 -0.21158117 0.068747006 -0.35996342
		 -0.46846321 -0.15221278 -0.3044256 -0.41250825 0.13403228 -0.21686822 -0.15008704 0.20657724 -0.15781069
		 -0.16087875 0.49513397 1.0343861e-09 -0.3010985 0.21876101 -1.3840189e-08 -0.24613315 0.33877322 0.20937316
		 -0.59643972 2.0375091e-09 -7.6406592e-10 -0.5086782 -0.36957651 -1.156157e-08 -0.55562407 -0.18053347 0.29210863
		 -0.17064804 -0.52520072 -1.6551754e-09 0.17039311 -0.52441615 -1.0860212e-09 1.3611232e-09 -0.38297549 0.19148749
		 0.3338415 -0.24255018 6.9204353e-09 0.54276943 -6.7770095e-10 -3.3885048e-10 0.24765544 -0.080468304 0.13020003
		 0.54090124 0.39298791 1.7364094e-08 0.19088985 0.58749866 5.9075029e-09 0.3165668 0.43571684 0.26928759
		 5.3478327e-10 0.51145375 0.3160955 -0.31606323 0.10269506 0.2053901 -0.25411391 -0.34975803 0.26719096
		 0.1834399 -0.25248355 0.19287992 0.36031693 0.11707396 0.23414792 9.582789e-10 1.1978486e-08 0.34830755
		 0.11188844 0.15400124 0.30800247 -0.10745908 0.14790475 0.29580954 0.13755703 -0.044695061 0.23402604
		 1.5500679e-09 -0.23200808 0.37539691 -0.23098241 -0.075050861 0.39297077;
	setAttr -s 120 ".ed[0:119]"  0 1 1 1 2 1 2 0 1 1 3 1 3 4 1 4 1 1 2 4 1
		 4 5 1 5 2 1 2 6 1 6 0 1 5 7 1 7 2 1 6 7 1 7 8 1 8 6 1 6 9 1 9 0 1 8 10 1 10 6 1 9 10 1
		 10 11 1 11 9 1 9 12 1 12 0 1 11 13 1 13 9 1 12 13 1 13 14 1 14 12 1 12 1 1 14 15 1
		 15 12 1 1 15 1 15 3 1 15 16 1 16 3 1 14 17 1 17 15 1 16 17 1 17 18 1 18 16 1 13 19 1
		 19 14 1 11 20 1 20 13 1 19 20 1 20 21 1 21 19 1 10 22 1 22 11 1 8 23 1 23 10 1 22 23 1
		 23 24 1 24 22 1 7 25 1 25 8 1 5 26 1 26 7 1 25 26 1 26 27 1 27 25 1 4 28 1 28 5 1
		 3 29 1 29 4 1 28 29 1 29 30 1 30 28 1 16 29 1 18 31 1 31 16 1 29 31 1 31 30 1 19 17 1
		 21 32 1 32 19 1 17 32 1 32 18 1 22 20 1 24 33 1 33 22 1 20 33 1 33 21 1 25 23 1 27 34 1
		 34 25 1 23 34 1 34 24 1 28 26 1 30 35 1 35 28 1 26 35 1 35 27 1 36 37 1 37 38 1 38 36 1
		 37 30 1 31 37 1 38 31 1 18 38 1 36 39 1 39 37 1 39 27 1 35 39 1 37 35 1 36 40 1 40 39 1
		 40 24 1 34 40 1 39 34 1 36 41 1 41 40 1 41 21 1 33 41 1 40 33 1 38 41 1 32 38 1 41 32 1;
	setAttr -s 80 -ch 240 ".fc[0:79]" -type "polyFaces" 
		f 3 0 1 2
		f 3 3 4 5
		f 3 6 7 8
		f 3 -6 -7 -2
		f 3 -3 9 10
		f 3 -9 11 12
		f 3 13 14 15
		f 3 -13 -14 -10
		f 3 -11 16 17
		f 3 -16 18 19
		f 3 20 21 22
		f 3 -20 -21 -17
		f 3 -18 23 24
		f 3 -23 25 26
		f 3 27 28 29
		f 3 -27 -28 -24
		f 3 -25 30 -1
		f 3 -30 31 32
		f 3 33 34 -4
		f 3 -33 -34 -31
		f 3 -35 35 36
		f 3 -32 37 38
		f 3 39 40 41
		f 3 -39 -40 -36
		f 3 -29 42 43
		f 3 -26 44 45
		f 3 46 47 48
		f 3 -46 -47 -43
		f 3 -22 49 50
		f 3 -19 51 52
		f 3 53 54 55
		f 3 -53 -54 -50
		f 3 -15 56 57
		f 3 -12 58 59
		f 3 60 61 62
		f 3 -60 -61 -57
		f 3 -8 63 64
		f 3 -5 65 66
		f 3 67 68 69
		f 3 -67 -68 -64
		f 3 -37 70 -66
		f 3 -42 71 72
		f 3 73 74 -69
		f 3 -73 -74 -71
		f 3 -44 75 -38
		f 3 -49 76 77
		f 3 78 79 -41
		f 3 -78 -79 -76
		f 3 -51 80 -45
		f 3 -56 81 82
		f 3 83 84 -48
		f 3 -83 -84 -81
		f 3 -58 85 -52
		f 3 -63 86 87
		f 3 88 89 -55
		f 3 -88 -89 -86
		f 3 -65 90 -59
		f 3 -70 91 92
		f 3 93 94 -62
		f 3 -93 -94 -91
		f 3 95 96 97
		f 3 98 -75 99
		f 3 100 -72 101
		f 3 -100 -101 -97
		f 3 102 103 -96
		f 3 104 -95 105
		f 3 106 -92 -99
		f 3 -106 -107 -104
		f 3 107 108 -103
		f 3 109 -90 110
		f 3 111 -87 -105
		f 3 -111 -112 -109
		f 3 112 113 -108
		f 3 114 -85 115
		f 3 116 -82 -110
		f 3 -116 -117 -114
		f 3 -98 117 -113
		f 3 -102 -80 118
		f 3 119 -77 -115
		f 3 -119 -120 -118;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "mountain1_31" -p "RockGeo";
	rename -uid "EDAA7642-4B8C-968E-0A4B-13BC0350F3FC";
	setAttr ".t" -type "double3" 26.056421567233201 0.39482627960010674 12.186149920331957 ;
createNode mesh -n "mountain1_31Shape" -p "mountain1_31";
	rename -uid "8E2A21C9-453E-9D17-2999-FAB1658DB846";
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
	setAttr -s 42 ".vt[0:41]"  -5.5569727e-10 6.6683672e-09 -0.58796507
		 2.7279394e-09 0.20855996 -0.33745706 0.3180064 0.10332671 -0.5410248 1.7477885e-09 0.38534856 -0.19267403
		 0.32514933 0.44752994 -0.34188196 0.61184579 0.19880104 -0.32166609 0.1726813 -0.23767541 -0.47535083
		 0.46169487 -0.15001363 -0.30002725 0.31028333 -0.42706838 -0.26394254 -0.13379738 -0.1841563 -0.3683126
		 3.1932318e-10 -0.47675335 -0.29464948 -0.28017479 -0.38562754 -0.23833069 -0.21158117 0.068747006 -0.35996342
		 -0.46846321 -0.15221278 -0.3044256 -0.41250825 0.13403228 -0.21686822 -0.15008704 0.20657724 -0.15781069
		 -0.16087875 0.49513397 1.0343861e-09 -0.3010985 0.21876101 -1.3840189e-08 -0.24613315 0.33877322 0.20937316
		 -0.59643972 2.0375091e-09 -7.6406592e-10 -0.5086782 -0.36957651 -1.156157e-08 -0.55562407 -0.18053347 0.29210863
		 -0.17064804 -0.52520072 -1.6551754e-09 0.17039311 -0.52441615 -1.0860212e-09 1.3611232e-09 -0.38297549 0.19148749
		 0.3338415 -0.24255018 6.9204353e-09 0.54276943 -6.7770095e-10 -3.3885048e-10 0.24765544 -0.080468304 0.13020003
		 0.54090124 0.39298791 1.7364094e-08 0.19088985 0.58749866 5.9075029e-09 0.3165668 0.43571684 0.26928759
		 5.3478327e-10 0.51145375 0.3160955 -0.31606323 0.10269506 0.2053901 -0.25411391 -0.34975803 0.26719096
		 0.1834399 -0.25248355 0.19287992 0.36031693 0.11707396 0.23414792 9.582789e-10 1.1978486e-08 0.34830755
		 0.11188844 0.15400124 0.30800247 -0.10745908 0.14790475 0.29580954 0.13755703 -0.044695061 0.23402604
		 1.5500679e-09 -0.23200808 0.37539691 -0.23098241 -0.075050861 0.39297077;
	setAttr -s 120 ".ed[0:119]"  0 1 1 1 2 1 2 0 1 1 3 1 3 4 1 4 1 1 2 4 1
		 4 5 1 5 2 1 2 6 1 6 0 1 5 7 1 7 2 1 6 7 1 7 8 1 8 6 1 6 9 1 9 0 1 8 10 1 10 6 1 9 10 1
		 10 11 1 11 9 1 9 12 1 12 0 1 11 13 1 13 9 1 12 13 1 13 14 1 14 12 1 12 1 1 14 15 1
		 15 12 1 1 15 1 15 3 1 15 16 1 16 3 1 14 17 1 17 15 1 16 17 1 17 18 1 18 16 1 13 19 1
		 19 14 1 11 20 1 20 13 1 19 20 1 20 21 1 21 19 1 10 22 1 22 11 1 8 23 1 23 10 1 22 23 1
		 23 24 1 24 22 1 7 25 1 25 8 1 5 26 1 26 7 1 25 26 1 26 27 1 27 25 1 4 28 1 28 5 1
		 3 29 1 29 4 1 28 29 1 29 30 1 30 28 1 16 29 1 18 31 1 31 16 1 29 31 1 31 30 1 19 17 1
		 21 32 1 32 19 1 17 32 1 32 18 1 22 20 1 24 33 1 33 22 1 20 33 1 33 21 1 25 23 1 27 34 1
		 34 25 1 23 34 1 34 24 1 28 26 1 30 35 1 35 28 1 26 35 1 35 27 1 36 37 1 37 38 1 38 36 1
		 37 30 1 31 37 1 38 31 1 18 38 1 36 39 1 39 37 1 39 27 1 35 39 1 37 35 1 36 40 1 40 39 1
		 40 24 1 34 40 1 39 34 1 36 41 1 41 40 1 41 21 1 33 41 1 40 33 1 38 41 1 32 38 1 41 32 1;
	setAttr -s 80 -ch 240 ".fc[0:79]" -type "polyFaces" 
		f 3 0 1 2
		f 3 3 4 5
		f 3 6 7 8
		f 3 -6 -7 -2
		f 3 -3 9 10
		f 3 -9 11 12
		f 3 13 14 15
		f 3 -13 -14 -10
		f 3 -11 16 17
		f 3 -16 18 19
		f 3 20 21 22
		f 3 -20 -21 -17
		f 3 -18 23 24
		f 3 -23 25 26
		f 3 27 28 29
		f 3 -27 -28 -24
		f 3 -25 30 -1
		f 3 -30 31 32
		f 3 33 34 -4
		f 3 -33 -34 -31
		f 3 -35 35 36
		f 3 -32 37 38
		f 3 39 40 41
		f 3 -39 -40 -36
		f 3 -29 42 43
		f 3 -26 44 45
		f 3 46 47 48
		f 3 -46 -47 -43
		f 3 -22 49 50
		f 3 -19 51 52
		f 3 53 54 55
		f 3 -53 -54 -50
		f 3 -15 56 57
		f 3 -12 58 59
		f 3 60 61 62
		f 3 -60 -61 -57
		f 3 -8 63 64
		f 3 -5 65 66
		f 3 67 68 69
		f 3 -67 -68 -64
		f 3 -37 70 -66
		f 3 -42 71 72
		f 3 73 74 -69
		f 3 -73 -74 -71
		f 3 -44 75 -38
		f 3 -49 76 77
		f 3 78 79 -41
		f 3 -78 -79 -76
		f 3 -51 80 -45
		f 3 -56 81 82
		f 3 83 84 -48
		f 3 -83 -84 -81
		f 3 -58 85 -52
		f 3 -63 86 87
		f 3 88 89 -55
		f 3 -88 -89 -86
		f 3 -65 90 -59
		f 3 -70 91 92
		f 3 93 94 -62
		f 3 -93 -94 -91
		f 3 95 96 97
		f 3 98 -75 99
		f 3 100 -72 101
		f 3 -100 -101 -97
		f 3 102 103 -96
		f 3 104 -95 105
		f 3 106 -92 -99
		f 3 -106 -107 -104
		f 3 107 108 -103
		f 3 109 -90 110
		f 3 111 -87 -105
		f 3 -111 -112 -109
		f 3 112 113 -108
		f 3 114 -85 115
		f 3 116 -82 -110
		f 3 -116 -117 -114
		f 3 -98 117 -113
		f 3 -102 -80 118
		f 3 119 -77 -115
		f 3 -119 -120 -118;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "mountain1_32" -p "RockGeo";
	rename -uid "1C8F1E2B-4C54-3D41-7154-698413E21C44";
	setAttr ".t" -type "double3" 1.8654989104295794 16.093770823896918 74.22970533466966 ;
createNode mesh -n "mountain1_32Shape" -p "mountain1_32";
	rename -uid "D0125178-448D-D06F-DD70-55AB1ACE254D";
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
	setAttr -s 42 ".vt[0:41]"  -5.5569727e-10 6.6683672e-09 -0.58796507
		 2.7279394e-09 0.20855996 -0.33745706 0.3180064 0.10332671 -0.5410248 1.7477885e-09 0.38534856 -0.19267403
		 0.32514933 0.44752994 -0.34188196 0.61184579 0.19880104 -0.32166609 0.1726813 -0.23767541 -0.47535083
		 0.46169487 -0.15001363 -0.30002725 0.31028333 -0.42706838 -0.26394254 -0.13379738 -0.1841563 -0.3683126
		 3.1932318e-10 -0.47675335 -0.29464948 -0.28017479 -0.38562754 -0.23833069 -0.21158117 0.068747006 -0.35996342
		 -0.46846321 -0.15221278 -0.3044256 -0.41250825 0.13403228 -0.21686822 -0.15008704 0.20657724 -0.15781069
		 -0.16087875 0.49513397 1.0343861e-09 -0.3010985 0.21876101 -1.3840189e-08 -0.24613315 0.33877322 0.20937316
		 -0.59643972 2.0375091e-09 -7.6406592e-10 -0.5086782 -0.36957651 -1.156157e-08 -0.55562407 -0.18053347 0.29210863
		 -0.17064804 -0.52520072 -1.6551754e-09 0.17039311 -0.52441615 -1.0860212e-09 1.3611232e-09 -0.38297549 0.19148749
		 0.3338415 -0.24255018 6.9204353e-09 0.54276943 -6.7770095e-10 -3.3885048e-10 0.24765544 -0.080468304 0.13020003
		 0.54090124 0.39298791 1.7364094e-08 0.19088985 0.58749866 5.9075029e-09 0.3165668 0.43571684 0.26928759
		 5.3478327e-10 0.51145375 0.3160955 -0.31606323 0.10269506 0.2053901 -0.25411391 -0.34975803 0.26719096
		 0.1834399 -0.25248355 0.19287992 0.36031693 0.11707396 0.23414792 9.582789e-10 1.1978486e-08 0.34830755
		 0.11188844 0.15400124 0.30800247 -0.10745908 0.14790475 0.29580954 0.13755703 -0.044695061 0.23402604
		 1.5500679e-09 -0.23200808 0.37539691 -0.23098241 -0.075050861 0.39297077;
	setAttr -s 120 ".ed[0:119]"  0 1 1 1 2 1 2 0 1 1 3 1 3 4 1 4 1 1 2 4 1
		 4 5 1 5 2 1 2 6 1 6 0 1 5 7 1 7 2 1 6 7 1 7 8 1 8 6 1 6 9 1 9 0 1 8 10 1 10 6 1 9 10 1
		 10 11 1 11 9 1 9 12 1 12 0 1 11 13 1 13 9 1 12 13 1 13 14 1 14 12 1 12 1 1 14 15 1
		 15 12 1 1 15 1 15 3 1 15 16 1 16 3 1 14 17 1 17 15 1 16 17 1 17 18 1 18 16 1 13 19 1
		 19 14 1 11 20 1 20 13 1 19 20 1 20 21 1 21 19 1 10 22 1 22 11 1 8 23 1 23 10 1 22 23 1
		 23 24 1 24 22 1 7 25 1 25 8 1 5 26 1 26 7 1 25 26 1 26 27 1 27 25 1 4 28 1 28 5 1
		 3 29 1 29 4 1 28 29 1 29 30 1 30 28 1 16 29 1 18 31 1 31 16 1 29 31 1 31 30 1 19 17 1
		 21 32 1 32 19 1 17 32 1 32 18 1 22 20 1 24 33 1 33 22 1 20 33 1 33 21 1 25 23 1 27 34 1
		 34 25 1 23 34 1 34 24 1 28 26 1 30 35 1 35 28 1 26 35 1 35 27 1 36 37 1 37 38 1 38 36 1
		 37 30 1 31 37 1 38 31 1 18 38 1 36 39 1 39 37 1 39 27 1 35 39 1 37 35 1 36 40 1 40 39 1
		 40 24 1 34 40 1 39 34 1 36 41 1 41 40 1 41 21 1 33 41 1 40 33 1 38 41 1 32 38 1 41 32 1;
	setAttr -s 80 -ch 240 ".fc[0:79]" -type "polyFaces" 
		f 3 0 1 2
		f 3 3 4 5
		f 3 6 7 8
		f 3 -6 -7 -2
		f 3 -3 9 10
		f 3 -9 11 12
		f 3 13 14 15
		f 3 -13 -14 -10
		f 3 -11 16 17
		f 3 -16 18 19
		f 3 20 21 22
		f 3 -20 -21 -17
		f 3 -18 23 24
		f 3 -23 25 26
		f 3 27 28 29
		f 3 -27 -28 -24
		f 3 -25 30 -1
		f 3 -30 31 32
		f 3 33 34 -4
		f 3 -33 -34 -31
		f 3 -35 35 36
		f 3 -32 37 38
		f 3 39 40 41
		f 3 -39 -40 -36
		f 3 -29 42 43
		f 3 -26 44 45
		f 3 46 47 48
		f 3 -46 -47 -43
		f 3 -22 49 50
		f 3 -19 51 52
		f 3 53 54 55
		f 3 -53 -54 -50
		f 3 -15 56 57
		f 3 -12 58 59
		f 3 60 61 62
		f 3 -60 -61 -57
		f 3 -8 63 64
		f 3 -5 65 66
		f 3 67 68 69
		f 3 -67 -68 -64
		f 3 -37 70 -66
		f 3 -42 71 72
		f 3 73 74 -69
		f 3 -73 -74 -71
		f 3 -44 75 -38
		f 3 -49 76 77
		f 3 78 79 -41
		f 3 -78 -79 -76
		f 3 -51 80 -45
		f 3 -56 81 82
		f 3 83 84 -48
		f 3 -83 -84 -81
		f 3 -58 85 -52
		f 3 -63 86 87
		f 3 88 89 -55
		f 3 -88 -89 -86
		f 3 -65 90 -59
		f 3 -70 91 92
		f 3 93 94 -62
		f 3 -93 -94 -91
		f 3 95 96 97
		f 3 98 -75 99
		f 3 100 -72 101
		f 3 -100 -101 -97
		f 3 102 103 -96
		f 3 104 -95 105
		f 3 106 -92 -99
		f 3 -106 -107 -104
		f 3 107 108 -103
		f 3 109 -90 110
		f 3 111 -87 -105
		f 3 -111 -112 -109
		f 3 112 113 -108
		f 3 114 -85 115
		f 3 116 -82 -110
		f 3 -116 -117 -114
		f 3 -98 117 -113
		f 3 -102 -80 118
		f 3 119 -77 -115
		f 3 -119 -120 -118;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "mountain1_33" -p "RockGeo";
	rename -uid "36C4049E-4796-6698-58D5-CA87B5D8E04F";
	setAttr ".t" -type "double3" 10.183561332861188 14.357076315437727 -37.610684221647261 ;
createNode mesh -n "mountain1_33Shape" -p "mountain1_33";
	rename -uid "77810543-46D3-53F5-6EBB-BDA0CC28F771";
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
	setAttr -s 42 ".vt[0:41]"  -5.5569727e-10 6.6683672e-09 -0.58796507
		 2.7279394e-09 0.20855996 -0.33745706 0.3180064 0.10332671 -0.5410248 1.7477885e-09 0.38534856 -0.19267403
		 0.32514933 0.44752994 -0.34188196 0.61184579 0.19880104 -0.32166609 0.1726813 -0.23767541 -0.47535083
		 0.46169487 -0.15001363 -0.30002725 0.31028333 -0.42706838 -0.26394254 -0.13379738 -0.1841563 -0.3683126
		 3.1932318e-10 -0.47675335 -0.29464948 -0.28017479 -0.38562754 -0.23833069 -0.21158117 0.068747006 -0.35996342
		 -0.46846321 -0.15221278 -0.3044256 -0.41250825 0.13403228 -0.21686822 -0.15008704 0.20657724 -0.15781069
		 -0.16087875 0.49513397 1.0343861e-09 -0.3010985 0.21876101 -1.3840189e-08 -0.24613315 0.33877322 0.20937316
		 -0.59643972 2.0375091e-09 -7.6406592e-10 -0.5086782 -0.36957651 -1.156157e-08 -0.55562407 -0.18053347 0.29210863
		 -0.17064804 -0.52520072 -1.6551754e-09 0.17039311 -0.52441615 -1.0860212e-09 1.3611232e-09 -0.38297549 0.19148749
		 0.3338415 -0.24255018 6.9204353e-09 0.54276943 -6.7770095e-10 -3.3885048e-10 0.24765544 -0.080468304 0.13020003
		 0.54090124 0.39298791 1.7364094e-08 0.19088985 0.58749866 5.9075029e-09 0.3165668 0.43571684 0.26928759
		 5.3478327e-10 0.51145375 0.3160955 -0.31606323 0.10269506 0.2053901 -0.25411391 -0.34975803 0.26719096
		 0.1834399 -0.25248355 0.19287992 0.36031693 0.11707396 0.23414792 9.582789e-10 1.1978486e-08 0.34830755
		 0.11188844 0.15400124 0.30800247 -0.10745908 0.14790475 0.29580954 0.13755703 -0.044695061 0.23402604
		 1.5500679e-09 -0.23200808 0.37539691 -0.23098241 -0.075050861 0.39297077;
	setAttr -s 120 ".ed[0:119]"  0 1 1 1 2 1 2 0 1 1 3 1 3 4 1 4 1 1 2 4 1
		 4 5 1 5 2 1 2 6 1 6 0 1 5 7 1 7 2 1 6 7 1 7 8 1 8 6 1 6 9 1 9 0 1 8 10 1 10 6 1 9 10 1
		 10 11 1 11 9 1 9 12 1 12 0 1 11 13 1 13 9 1 12 13 1 13 14 1 14 12 1 12 1 1 14 15 1
		 15 12 1 1 15 1 15 3 1 15 16 1 16 3 1 14 17 1 17 15 1 16 17 1 17 18 1 18 16 1 13 19 1
		 19 14 1 11 20 1 20 13 1 19 20 1 20 21 1 21 19 1 10 22 1 22 11 1 8 23 1 23 10 1 22 23 1
		 23 24 1 24 22 1 7 25 1 25 8 1 5 26 1 26 7 1 25 26 1 26 27 1 27 25 1 4 28 1 28 5 1
		 3 29 1 29 4 1 28 29 1 29 30 1 30 28 1 16 29 1 18 31 1 31 16 1 29 31 1 31 30 1 19 17 1
		 21 32 1 32 19 1 17 32 1 32 18 1 22 20 1 24 33 1 33 22 1 20 33 1 33 21 1 25 23 1 27 34 1
		 34 25 1 23 34 1 34 24 1 28 26 1 30 35 1 35 28 1 26 35 1 35 27 1 36 37 1 37 38 1 38 36 1
		 37 30 1 31 37 1 38 31 1 18 38 1 36 39 1 39 37 1 39 27 1 35 39 1 37 35 1 36 40 1 40 39 1
		 40 24 1 34 40 1 39 34 1 36 41 1 41 40 1 41 21 1 33 41 1 40 33 1 38 41 1 32 38 1 41 32 1;
	setAttr -s 80 -ch 240 ".fc[0:79]" -type "polyFaces" 
		f 3 0 1 2
		f 3 3 4 5
		f 3 6 7 8
		f 3 -6 -7 -2
		f 3 -3 9 10
		f 3 -9 11 12
		f 3 13 14 15
		f 3 -13 -14 -10
		f 3 -11 16 17
		f 3 -16 18 19
		f 3 20 21 22
		f 3 -20 -21 -17
		f 3 -18 23 24
		f 3 -23 25 26
		f 3 27 28 29
		f 3 -27 -28 -24
		f 3 -25 30 -1
		f 3 -30 31 32
		f 3 33 34 -4
		f 3 -33 -34 -31
		f 3 -35 35 36
		f 3 -32 37 38
		f 3 39 40 41
		f 3 -39 -40 -36
		f 3 -29 42 43
		f 3 -26 44 45
		f 3 46 47 48
		f 3 -46 -47 -43
		f 3 -22 49 50
		f 3 -19 51 52
		f 3 53 54 55
		f 3 -53 -54 -50
		f 3 -15 56 57
		f 3 -12 58 59
		f 3 60 61 62
		f 3 -60 -61 -57
		f 3 -8 63 64
		f 3 -5 65 66
		f 3 67 68 69
		f 3 -67 -68 -64
		f 3 -37 70 -66
		f 3 -42 71 72
		f 3 73 74 -69
		f 3 -73 -74 -71
		f 3 -44 75 -38
		f 3 -49 76 77
		f 3 78 79 -41
		f 3 -78 -79 -76
		f 3 -51 80 -45
		f 3 -56 81 82
		f 3 83 84 -48
		f 3 -83 -84 -81
		f 3 -58 85 -52
		f 3 -63 86 87
		f 3 88 89 -55
		f 3 -88 -89 -86
		f 3 -65 90 -59
		f 3 -70 91 92
		f 3 93 94 -62
		f 3 -93 -94 -91
		f 3 95 96 97
		f 3 98 -75 99
		f 3 100 -72 101
		f 3 -100 -101 -97
		f 3 102 103 -96
		f 3 104 -95 105
		f 3 106 -92 -99
		f 3 -106 -107 -104
		f 3 107 108 -103
		f 3 109 -90 110
		f 3 111 -87 -105
		f 3 -111 -112 -109
		f 3 112 113 -108
		f 3 114 -85 115
		f 3 116 -82 -110
		f 3 -116 -117 -114
		f 3 -98 117 -113
		f 3 -102 -80 118
		f 3 119 -77 -115
		f 3 -119 -120 -118;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "mountain1_34" -p "RockGeo";
	rename -uid "FA461830-41C2-0A1C-6392-BEB5783E2846";
	setAttr ".t" -type "double3" 29.707274273959428 9.9080629599817271 96.206928677643333 ;
createNode mesh -n "mountain1_34Shape" -p "mountain1_34";
	rename -uid "D1CEC78A-4657-C187-B132-A0B2EE71BD75";
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
	setAttr -s 42 ".vt[0:41]"  -5.5569727e-10 6.6683672e-09 -0.58796507
		 2.7279394e-09 0.20855996 -0.33745706 0.3180064 0.10332671 -0.5410248 1.7477885e-09 0.38534856 -0.19267403
		 0.32514933 0.44752994 -0.34188196 0.61184579 0.19880104 -0.32166609 0.1726813 -0.23767541 -0.47535083
		 0.46169487 -0.15001363 -0.30002725 0.31028333 -0.42706838 -0.26394254 -0.13379738 -0.1841563 -0.3683126
		 3.1932318e-10 -0.47675335 -0.29464948 -0.28017479 -0.38562754 -0.23833069 -0.21158117 0.068747006 -0.35996342
		 -0.46846321 -0.15221278 -0.3044256 -0.41250825 0.13403228 -0.21686822 -0.15008704 0.20657724 -0.15781069
		 -0.16087875 0.49513397 1.0343861e-09 -0.3010985 0.21876101 -1.3840189e-08 -0.24613315 0.33877322 0.20937316
		 -0.59643972 2.0375091e-09 -7.6406592e-10 -0.5086782 -0.36957651 -1.156157e-08 -0.55562407 -0.18053347 0.29210863
		 -0.17064804 -0.52520072 -1.6551754e-09 0.17039311 -0.52441615 -1.0860212e-09 1.3611232e-09 -0.38297549 0.19148749
		 0.3338415 -0.24255018 6.9204353e-09 0.54276943 -6.7770095e-10 -3.3885048e-10 0.24765544 -0.080468304 0.13020003
		 0.54090124 0.39298791 1.7364094e-08 0.19088985 0.58749866 5.9075029e-09 0.3165668 0.43571684 0.26928759
		 5.3478327e-10 0.51145375 0.3160955 -0.31606323 0.10269506 0.2053901 -0.25411391 -0.34975803 0.26719096
		 0.1834399 -0.25248355 0.19287992 0.36031693 0.11707396 0.23414792 9.582789e-10 1.1978486e-08 0.34830755
		 0.11188844 0.15400124 0.30800247 -0.10745908 0.14790475 0.29580954 0.13755703 -0.044695061 0.23402604
		 1.5500679e-09 -0.23200808 0.37539691 -0.23098241 -0.075050861 0.39297077;
	setAttr -s 120 ".ed[0:119]"  0 1 1 1 2 1 2 0 1 1 3 1 3 4 1 4 1 1 2 4 1
		 4 5 1 5 2 1 2 6 1 6 0 1 5 7 1 7 2 1 6 7 1 7 8 1 8 6 1 6 9 1 9 0 1 8 10 1 10 6 1 9 10 1
		 10 11 1 11 9 1 9 12 1 12 0 1 11 13 1 13 9 1 12 13 1 13 14 1 14 12 1 12 1 1 14 15 1
		 15 12 1 1 15 1 15 3 1 15 16 1 16 3 1 14 17 1 17 15 1 16 17 1 17 18 1 18 16 1 13 19 1
		 19 14 1 11 20 1 20 13 1 19 20 1 20 21 1 21 19 1 10 22 1 22 11 1 8 23 1 23 10 1 22 23 1
		 23 24 1 24 22 1 7 25 1 25 8 1 5 26 1 26 7 1 25 26 1 26 27 1 27 25 1 4 28 1 28 5 1
		 3 29 1 29 4 1 28 29 1 29 30 1 30 28 1 16 29 1 18 31 1 31 16 1 29 31 1 31 30 1 19 17 1
		 21 32 1 32 19 1 17 32 1 32 18 1 22 20 1 24 33 1 33 22 1 20 33 1 33 21 1 25 23 1 27 34 1
		 34 25 1 23 34 1 34 24 1 28 26 1 30 35 1 35 28 1 26 35 1 35 27 1 36 37 1 37 38 1 38 36 1
		 37 30 1 31 37 1 38 31 1 18 38 1 36 39 1 39 37 1 39 27 1 35 39 1 37 35 1 36 40 1 40 39 1
		 40 24 1 34 40 1 39 34 1 36 41 1 41 40 1 41 21 1 33 41 1 40 33 1 38 41 1 32 38 1 41 32 1;
	setAttr -s 80 -ch 240 ".fc[0:79]" -type "polyFaces" 
		f 3 0 1 2
		f 3 3 4 5
		f 3 6 7 8
		f 3 -6 -7 -2
		f 3 -3 9 10
		f 3 -9 11 12
		f 3 13 14 15
		f 3 -13 -14 -10
		f 3 -11 16 17
		f 3 -16 18 19
		f 3 20 21 22
		f 3 -20 -21 -17
		f 3 -18 23 24
		f 3 -23 25 26
		f 3 27 28 29
		f 3 -27 -28 -24
		f 3 -25 30 -1
		f 3 -30 31 32
		f 3 33 34 -4
		f 3 -33 -34 -31
		f 3 -35 35 36
		f 3 -32 37 38
		f 3 39 40 41
		f 3 -39 -40 -36
		f 3 -29 42 43
		f 3 -26 44 45
		f 3 46 47 48
		f 3 -46 -47 -43
		f 3 -22 49 50
		f 3 -19 51 52
		f 3 53 54 55
		f 3 -53 -54 -50
		f 3 -15 56 57
		f 3 -12 58 59
		f 3 60 61 62
		f 3 -60 -61 -57
		f 3 -8 63 64
		f 3 -5 65 66
		f 3 67 68 69
		f 3 -67 -68 -64
		f 3 -37 70 -66
		f 3 -42 71 72
		f 3 73 74 -69
		f 3 -73 -74 -71
		f 3 -44 75 -38
		f 3 -49 76 77
		f 3 78 79 -41
		f 3 -78 -79 -76
		f 3 -51 80 -45
		f 3 -56 81 82
		f 3 83 84 -48
		f 3 -83 -84 -81
		f 3 -58 85 -52
		f 3 -63 86 87
		f 3 88 89 -55
		f 3 -88 -89 -86
		f 3 -65 90 -59
		f 3 -70 91 92
		f 3 93 94 -62
		f 3 -93 -94 -91
		f 3 95 96 97
		f 3 98 -75 99
		f 3 100 -72 101
		f 3 -100 -101 -97
		f 3 102 103 -96
		f 3 104 -95 105
		f 3 106 -92 -99
		f 3 -106 -107 -104
		f 3 107 108 -103
		f 3 109 -90 110
		f 3 111 -87 -105
		f 3 -111 -112 -109
		f 3 112 113 -108
		f 3 114 -85 115
		f 3 116 -82 -110
		f 3 -116 -117 -114
		f 3 -98 117 -113
		f 3 -102 -80 118
		f 3 119 -77 -115
		f 3 -119 -120 -118;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "mountain1_35" -p "RockGeo";
	rename -uid "CB677BA9-49E5-B3C6-FF9E-9AA51383E903";
	setAttr ".t" -type "double3" 1.2897015347135721 0.88134996172433588 -2.9539443286367373 ;
createNode mesh -n "mountain1_35Shape" -p "mountain1_35";
	rename -uid "82CEF112-4436-33B0-0E4F-E0A4585E9CFB";
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
	setAttr -s 42 ".vt[0:41]"  -5.5569727e-10 6.6683672e-09 -0.58796507
		 2.7279394e-09 0.20855996 -0.33745706 0.3180064 0.10332671 -0.5410248 1.7477885e-09 0.38534856 -0.19267403
		 0.32514933 0.44752994 -0.34188196 0.61184579 0.19880104 -0.32166609 0.1726813 -0.23767541 -0.47535083
		 0.46169487 -0.15001363 -0.30002725 0.31028333 -0.42706838 -0.26394254 -0.13379738 -0.1841563 -0.3683126
		 3.1932318e-10 -0.47675335 -0.29464948 -0.28017479 -0.38562754 -0.23833069 -0.21158117 0.068747006 -0.35996342
		 -0.46846321 -0.15221278 -0.3044256 -0.41250825 0.13403228 -0.21686822 -0.15008704 0.20657724 -0.15781069
		 -0.16087875 0.49513397 1.0343861e-09 -0.3010985 0.21876101 -1.3840189e-08 -0.24613315 0.33877322 0.20937316
		 -0.59643972 2.0375091e-09 -7.6406592e-10 -0.5086782 -0.36957651 -1.156157e-08 -0.55562407 -0.18053347 0.29210863
		 -0.17064804 -0.52520072 -1.6551754e-09 0.17039311 -0.52441615 -1.0860212e-09 1.3611232e-09 -0.38297549 0.19148749
		 0.3338415 -0.24255018 6.9204353e-09 0.54276943 -6.7770095e-10 -3.3885048e-10 0.24765544 -0.080468304 0.13020003
		 0.54090124 0.39298791 1.7364094e-08 0.19088985 0.58749866 5.9075029e-09 0.3165668 0.43571684 0.26928759
		 5.3478327e-10 0.51145375 0.3160955 -0.31606323 0.10269506 0.2053901 -0.25411391 -0.34975803 0.26719096
		 0.1834399 -0.25248355 0.19287992 0.36031693 0.11707396 0.23414792 9.582789e-10 1.1978486e-08 0.34830755
		 0.11188844 0.15400124 0.30800247 -0.10745908 0.14790475 0.29580954 0.13755703 -0.044695061 0.23402604
		 1.5500679e-09 -0.23200808 0.37539691 -0.23098241 -0.075050861 0.39297077;
	setAttr -s 120 ".ed[0:119]"  0 1 1 1 2 1 2 0 1 1 3 1 3 4 1 4 1 1 2 4 1
		 4 5 1 5 2 1 2 6 1 6 0 1 5 7 1 7 2 1 6 7 1 7 8 1 8 6 1 6 9 1 9 0 1 8 10 1 10 6 1 9 10 1
		 10 11 1 11 9 1 9 12 1 12 0 1 11 13 1 13 9 1 12 13 1 13 14 1 14 12 1 12 1 1 14 15 1
		 15 12 1 1 15 1 15 3 1 15 16 1 16 3 1 14 17 1 17 15 1 16 17 1 17 18 1 18 16 1 13 19 1
		 19 14 1 11 20 1 20 13 1 19 20 1 20 21 1 21 19 1 10 22 1 22 11 1 8 23 1 23 10 1 22 23 1
		 23 24 1 24 22 1 7 25 1 25 8 1 5 26 1 26 7 1 25 26 1 26 27 1 27 25 1 4 28 1 28 5 1
		 3 29 1 29 4 1 28 29 1 29 30 1 30 28 1 16 29 1 18 31 1 31 16 1 29 31 1 31 30 1 19 17 1
		 21 32 1 32 19 1 17 32 1 32 18 1 22 20 1 24 33 1 33 22 1 20 33 1 33 21 1 25 23 1 27 34 1
		 34 25 1 23 34 1 34 24 1 28 26 1 30 35 1 35 28 1 26 35 1 35 27 1 36 37 1 37 38 1 38 36 1
		 37 30 1 31 37 1 38 31 1 18 38 1 36 39 1 39 37 1 39 27 1 35 39 1 37 35 1 36 40 1 40 39 1
		 40 24 1 34 40 1 39 34 1 36 41 1 41 40 1 41 21 1 33 41 1 40 33 1 38 41 1 32 38 1 41 32 1;
	setAttr -s 80 -ch 240 ".fc[0:79]" -type "polyFaces" 
		f 3 0 1 2
		f 3 3 4 5
		f 3 6 7 8
		f 3 -6 -7 -2
		f 3 -3 9 10
		f 3 -9 11 12
		f 3 13 14 15
		f 3 -13 -14 -10
		f 3 -11 16 17
		f 3 -16 18 19
		f 3 20 21 22
		f 3 -20 -21 -17
		f 3 -18 23 24
		f 3 -23 25 26
		f 3 27 28 29
		f 3 -27 -28 -24
		f 3 -25 30 -1
		f 3 -30 31 32
		f 3 33 34 -4
		f 3 -33 -34 -31
		f 3 -35 35 36
		f 3 -32 37 38
		f 3 39 40 41
		f 3 -39 -40 -36
		f 3 -29 42 43
		f 3 -26 44 45
		f 3 46 47 48
		f 3 -46 -47 -43
		f 3 -22 49 50
		f 3 -19 51 52
		f 3 53 54 55
		f 3 -53 -54 -50
		f 3 -15 56 57
		f 3 -12 58 59
		f 3 60 61 62
		f 3 -60 -61 -57
		f 3 -8 63 64
		f 3 -5 65 66
		f 3 67 68 69
		f 3 -67 -68 -64
		f 3 -37 70 -66
		f 3 -42 71 72
		f 3 73 74 -69
		f 3 -73 -74 -71
		f 3 -44 75 -38
		f 3 -49 76 77
		f 3 78 79 -41
		f 3 -78 -79 -76
		f 3 -51 80 -45
		f 3 -56 81 82
		f 3 83 84 -48
		f 3 -83 -84 -81
		f 3 -58 85 -52
		f 3 -63 86 87
		f 3 88 89 -55
		f 3 -88 -89 -86
		f 3 -65 90 -59
		f 3 -70 91 92
		f 3 93 94 -62
		f 3 -93 -94 -91
		f 3 95 96 97
		f 3 98 -75 99
		f 3 100 -72 101
		f 3 -100 -101 -97
		f 3 102 103 -96
		f 3 104 -95 105
		f 3 106 -92 -99
		f 3 -106 -107 -104
		f 3 107 108 -103
		f 3 109 -90 110
		f 3 111 -87 -105
		f 3 -111 -112 -109
		f 3 112 113 -108
		f 3 114 -85 115
		f 3 116 -82 -110
		f 3 -116 -117 -114
		f 3 -98 117 -113
		f 3 -102 -80 118
		f 3 119 -77 -115
		f 3 -119 -120 -118;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "mountain1_36" -p "RockGeo";
	rename -uid "61114524-435E-C2D5-649F-139386EA1057";
	setAttr ".t" -type "double3" 5.451519567259453 7.5578285250576016 23.914011824378889 ;
createNode mesh -n "mountain1_36Shape" -p "mountain1_36";
	rename -uid "650F7C09-428C-3F89-5AB0-5CB777B371BC";
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
	setAttr -s 42 ".vt[0:41]"  -5.5569727e-10 6.6683672e-09 -0.58796507
		 2.7279394e-09 0.20855996 -0.33745706 0.3180064 0.10332671 -0.5410248 1.7477885e-09 0.38534856 -0.19267403
		 0.32514933 0.44752994 -0.34188196 0.61184579 0.19880104 -0.32166609 0.1726813 -0.23767541 -0.47535083
		 0.46169487 -0.15001363 -0.30002725 0.31028333 -0.42706838 -0.26394254 -0.13379738 -0.1841563 -0.3683126
		 3.1932318e-10 -0.47675335 -0.29464948 -0.28017479 -0.38562754 -0.23833069 -0.21158117 0.068747006 -0.35996342
		 -0.46846321 -0.15221278 -0.3044256 -0.41250825 0.13403228 -0.21686822 -0.15008704 0.20657724 -0.15781069
		 -0.16087875 0.49513397 1.0343861e-09 -0.3010985 0.21876101 -1.3840189e-08 -0.24613315 0.33877322 0.20937316
		 -0.59643972 2.0375091e-09 -7.6406592e-10 -0.5086782 -0.36957651 -1.156157e-08 -0.55562407 -0.18053347 0.29210863
		 -0.17064804 -0.52520072 -1.6551754e-09 0.17039311 -0.52441615 -1.0860212e-09 1.3611232e-09 -0.38297549 0.19148749
		 0.3338415 -0.24255018 6.9204353e-09 0.54276943 -6.7770095e-10 -3.3885048e-10 0.24765544 -0.080468304 0.13020003
		 0.54090124 0.39298791 1.7364094e-08 0.19088985 0.58749866 5.9075029e-09 0.3165668 0.43571684 0.26928759
		 5.3478327e-10 0.51145375 0.3160955 -0.31606323 0.10269506 0.2053901 -0.25411391 -0.34975803 0.26719096
		 0.1834399 -0.25248355 0.19287992 0.36031693 0.11707396 0.23414792 9.582789e-10 1.1978486e-08 0.34830755
		 0.11188844 0.15400124 0.30800247 -0.10745908 0.14790475 0.29580954 0.13755703 -0.044695061 0.23402604
		 1.5500679e-09 -0.23200808 0.37539691 -0.23098241 -0.075050861 0.39297077;
	setAttr -s 120 ".ed[0:119]"  0 1 1 1 2 1 2 0 1 1 3 1 3 4 1 4 1 1 2 4 1
		 4 5 1 5 2 1 2 6 1 6 0 1 5 7 1 7 2 1 6 7 1 7 8 1 8 6 1 6 9 1 9 0 1 8 10 1 10 6 1 9 10 1
		 10 11 1 11 9 1 9 12 1 12 0 1 11 13 1 13 9 1 12 13 1 13 14 1 14 12 1 12 1 1 14 15 1
		 15 12 1 1 15 1 15 3 1 15 16 1 16 3 1 14 17 1 17 15 1 16 17 1 17 18 1 18 16 1 13 19 1
		 19 14 1 11 20 1 20 13 1 19 20 1 20 21 1 21 19 1 10 22 1 22 11 1 8 23 1 23 10 1 22 23 1
		 23 24 1 24 22 1 7 25 1 25 8 1 5 26 1 26 7 1 25 26 1 26 27 1 27 25 1 4 28 1 28 5 1
		 3 29 1 29 4 1 28 29 1 29 30 1 30 28 1 16 29 1 18 31 1 31 16 1 29 31 1 31 30 1 19 17 1
		 21 32 1 32 19 1 17 32 1 32 18 1 22 20 1 24 33 1 33 22 1 20 33 1 33 21 1 25 23 1 27 34 1
		 34 25 1 23 34 1 34 24 1 28 26 1 30 35 1 35 28 1 26 35 1 35 27 1 36 37 1 37 38 1 38 36 1
		 37 30 1 31 37 1 38 31 1 18 38 1 36 39 1 39 37 1 39 27 1 35 39 1 37 35 1 36 40 1 40 39 1
		 40 24 1 34 40 1 39 34 1 36 41 1 41 40 1 41 21 1 33 41 1 40 33 1 38 41 1 32 38 1 41 32 1;
	setAttr -s 80 -ch 240 ".fc[0:79]" -type "polyFaces" 
		f 3 0 1 2
		f 3 3 4 5
		f 3 6 7 8
		f 3 -6 -7 -2
		f 3 -3 9 10
		f 3 -9 11 12
		f 3 13 14 15
		f 3 -13 -14 -10
		f 3 -11 16 17
		f 3 -16 18 19
		f 3 20 21 22
		f 3 -20 -21 -17
		f 3 -18 23 24
		f 3 -23 25 26
		f 3 27 28 29
		f 3 -27 -28 -24
		f 3 -25 30 -1
		f 3 -30 31 32
		f 3 33 34 -4
		f 3 -33 -34 -31
		f 3 -35 35 36
		f 3 -32 37 38
		f 3 39 40 41
		f 3 -39 -40 -36
		f 3 -29 42 43
		f 3 -26 44 45
		f 3 46 47 48
		f 3 -46 -47 -43
		f 3 -22 49 50
		f 3 -19 51 52
		f 3 53 54 55
		f 3 -53 -54 -50
		f 3 -15 56 57
		f 3 -12 58 59
		f 3 60 61 62
		f 3 -60 -61 -57
		f 3 -8 63 64
		f 3 -5 65 66
		f 3 67 68 69
		f 3 -67 -68 -64
		f 3 -37 70 -66
		f 3 -42 71 72
		f 3 73 74 -69
		f 3 -73 -74 -71
		f 3 -44 75 -38
		f 3 -49 76 77
		f 3 78 79 -41
		f 3 -78 -79 -76
		f 3 -51 80 -45
		f 3 -56 81 82
		f 3 83 84 -48
		f 3 -83 -84 -81
		f 3 -58 85 -52
		f 3 -63 86 87
		f 3 88 89 -55
		f 3 -88 -89 -86
		f 3 -65 90 -59
		f 3 -70 91 92
		f 3 93 94 -62
		f 3 -93 -94 -91
		f 3 95 96 97
		f 3 98 -75 99
		f 3 100 -72 101
		f 3 -100 -101 -97
		f 3 102 103 -96
		f 3 104 -95 105
		f 3 106 -92 -99
		f 3 -106 -107 -104
		f 3 107 108 -103
		f 3 109 -90 110
		f 3 111 -87 -105
		f 3 -111 -112 -109
		f 3 112 113 -108
		f 3 114 -85 115
		f 3 116 -82 -110
		f 3 -116 -117 -114
		f 3 -98 117 -113
		f 3 -102 -80 118
		f 3 119 -77 -115
		f 3 -119 -120 -118;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "mountain1_37" -p "RockGeo";
	rename -uid "CF516CCF-4FA0-5505-7F2C-5FAD470DF179";
	setAttr ".t" -type "double3" 14.343113167786044 -1.0108833838755338 14.292709032676498 ;
createNode mesh -n "mountain1_37Shape" -p "mountain1_37";
	rename -uid "0DDFE67B-48B0-85E8-F81F-87BFFD1C862B";
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
	setAttr -s 42 ".vt[0:41]"  -5.5569727e-10 6.6683672e-09 -0.58796507
		 2.7279394e-09 0.20855996 -0.33745706 0.3180064 0.10332671 -0.5410248 1.7477885e-09 0.38534856 -0.19267403
		 0.32514933 0.44752994 -0.34188196 0.61184579 0.19880104 -0.32166609 0.1726813 -0.23767541 -0.47535083
		 0.46169487 -0.15001363 -0.30002725 0.31028333 -0.42706838 -0.26394254 -0.13379738 -0.1841563 -0.3683126
		 3.1932318e-10 -0.47675335 -0.29464948 -0.28017479 -0.38562754 -0.23833069 -0.21158117 0.068747006 -0.35996342
		 -0.46846321 -0.15221278 -0.3044256 -0.41250825 0.13403228 -0.21686822 -0.15008704 0.20657724 -0.15781069
		 -0.16087875 0.49513397 1.0343861e-09 -0.3010985 0.21876101 -1.3840189e-08 -0.24613315 0.33877322 0.20937316
		 -0.59643972 2.0375091e-09 -7.6406592e-10 -0.5086782 -0.36957651 -1.156157e-08 -0.55562407 -0.18053347 0.29210863
		 -0.17064804 -0.52520072 -1.6551754e-09 0.17039311 -0.52441615 -1.0860212e-09 1.3611232e-09 -0.38297549 0.19148749
		 0.3338415 -0.24255018 6.9204353e-09 0.54276943 -6.7770095e-10 -3.3885048e-10 0.24765544 -0.080468304 0.13020003
		 0.54090124 0.39298791 1.7364094e-08 0.19088985 0.58749866 5.9075029e-09 0.3165668 0.43571684 0.26928759
		 5.3478327e-10 0.51145375 0.3160955 -0.31606323 0.10269506 0.2053901 -0.25411391 -0.34975803 0.26719096
		 0.1834399 -0.25248355 0.19287992 0.36031693 0.11707396 0.23414792 9.582789e-10 1.1978486e-08 0.34830755
		 0.11188844 0.15400124 0.30800247 -0.10745908 0.14790475 0.29580954 0.13755703 -0.044695061 0.23402604
		 1.5500679e-09 -0.23200808 0.37539691 -0.23098241 -0.075050861 0.39297077;
	setAttr -s 120 ".ed[0:119]"  0 1 1 1 2 1 2 0 1 1 3 1 3 4 1 4 1 1 2 4 1
		 4 5 1 5 2 1 2 6 1 6 0 1 5 7 1 7 2 1 6 7 1 7 8 1 8 6 1 6 9 1 9 0 1 8 10 1 10 6 1 9 10 1
		 10 11 1 11 9 1 9 12 1 12 0 1 11 13 1 13 9 1 12 13 1 13 14 1 14 12 1 12 1 1 14 15 1
		 15 12 1 1 15 1 15 3 1 15 16 1 16 3 1 14 17 1 17 15 1 16 17 1 17 18 1 18 16 1 13 19 1
		 19 14 1 11 20 1 20 13 1 19 20 1 20 21 1 21 19 1 10 22 1 22 11 1 8 23 1 23 10 1 22 23 1
		 23 24 1 24 22 1 7 25 1 25 8 1 5 26 1 26 7 1 25 26 1 26 27 1 27 25 1 4 28 1 28 5 1
		 3 29 1 29 4 1 28 29 1 29 30 1 30 28 1 16 29 1 18 31 1 31 16 1 29 31 1 31 30 1 19 17 1
		 21 32 1 32 19 1 17 32 1 32 18 1 22 20 1 24 33 1 33 22 1 20 33 1 33 21 1 25 23 1 27 34 1
		 34 25 1 23 34 1 34 24 1 28 26 1 30 35 1 35 28 1 26 35 1 35 27 1 36 37 1 37 38 1 38 36 1
		 37 30 1 31 37 1 38 31 1 18 38 1 36 39 1 39 37 1 39 27 1 35 39 1 37 35 1 36 40 1 40 39 1
		 40 24 1 34 40 1 39 34 1 36 41 1 41 40 1 41 21 1 33 41 1 40 33 1 38 41 1 32 38 1 41 32 1;
	setAttr -s 80 -ch 240 ".fc[0:79]" -type "polyFaces" 
		f 3 0 1 2
		f 3 3 4 5
		f 3 6 7 8
		f 3 -6 -7 -2
		f 3 -3 9 10
		f 3 -9 11 12
		f 3 13 14 15
		f 3 -13 -14 -10
		f 3 -11 16 17
		f 3 -16 18 19
		f 3 20 21 22
		f 3 -20 -21 -17
		f 3 -18 23 24
		f 3 -23 25 26
		f 3 27 28 29
		f 3 -27 -28 -24
		f 3 -25 30 -1
		f 3 -30 31 32
		f 3 33 34 -4
		f 3 -33 -34 -31
		f 3 -35 35 36
		f 3 -32 37 38
		f 3 39 40 41
		f 3 -39 -40 -36
		f 3 -29 42 43
		f 3 -26 44 45
		f 3 46 47 48
		f 3 -46 -47 -43
		f 3 -22 49 50
		f 3 -19 51 52
		f 3 53 54 55
		f 3 -53 -54 -50
		f 3 -15 56 57
		f 3 -12 58 59
		f 3 60 61 62
		f 3 -60 -61 -57
		f 3 -8 63 64
		f 3 -5 65 66
		f 3 67 68 69
		f 3 -67 -68 -64
		f 3 -37 70 -66
		f 3 -42 71 72
		f 3 73 74 -69
		f 3 -73 -74 -71
		f 3 -44 75 -38
		f 3 -49 76 77
		f 3 78 79 -41
		f 3 -78 -79 -76
		f 3 -51 80 -45
		f 3 -56 81 82
		f 3 83 84 -48
		f 3 -83 -84 -81
		f 3 -58 85 -52
		f 3 -63 86 87
		f 3 88 89 -55
		f 3 -88 -89 -86
		f 3 -65 90 -59
		f 3 -70 91 92
		f 3 93 94 -62
		f 3 -93 -94 -91
		f 3 95 96 97
		f 3 98 -75 99
		f 3 100 -72 101
		f 3 -100 -101 -97
		f 3 102 103 -96
		f 3 104 -95 105
		f 3 106 -92 -99
		f 3 -106 -107 -104
		f 3 107 108 -103
		f 3 109 -90 110
		f 3 111 -87 -105
		f 3 -111 -112 -109
		f 3 112 113 -108
		f 3 114 -85 115
		f 3 116 -82 -110
		f 3 -116 -117 -114
		f 3 -98 117 -113
		f 3 -102 -80 118
		f 3 119 -77 -115
		f 3 -119 -120 -118;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "mountain1_38" -p "RockGeo";
	rename -uid "E97E57BB-418C-198B-D9C6-5AA3F446108F";
	setAttr ".t" -type "double3" 4.515183504648661 -0.4129308333827808 75.091567521423741 ;
createNode mesh -n "mountain1_38Shape" -p "mountain1_38";
	rename -uid "99AA9041-4D6A-8FEA-2668-379A242AD224";
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
	setAttr -s 42 ".vt[0:41]"  -5.5569727e-10 6.6683672e-09 -0.58796507
		 2.7279394e-09 0.20855996 -0.33745706 0.3180064 0.10332671 -0.5410248 1.7477885e-09 0.38534856 -0.19267403
		 0.32514933 0.44752994 -0.34188196 0.61184579 0.19880104 -0.32166609 0.1726813 -0.23767541 -0.47535083
		 0.46169487 -0.15001363 -0.30002725 0.31028333 -0.42706838 -0.26394254 -0.13379738 -0.1841563 -0.3683126
		 3.1932318e-10 -0.47675335 -0.29464948 -0.28017479 -0.38562754 -0.23833069 -0.21158117 0.068747006 -0.35996342
		 -0.46846321 -0.15221278 -0.3044256 -0.41250825 0.13403228 -0.21686822 -0.15008704 0.20657724 -0.15781069
		 -0.16087875 0.49513397 1.0343861e-09 -0.3010985 0.21876101 -1.3840189e-08 -0.24613315 0.33877322 0.20937316
		 -0.59643972 2.0375091e-09 -7.6406592e-10 -0.5086782 -0.36957651 -1.156157e-08 -0.55562407 -0.18053347 0.29210863
		 -0.17064804 -0.52520072 -1.6551754e-09 0.17039311 -0.52441615 -1.0860212e-09 1.3611232e-09 -0.38297549 0.19148749
		 0.3338415 -0.24255018 6.9204353e-09 0.54276943 -6.7770095e-10 -3.3885048e-10 0.24765544 -0.080468304 0.13020003
		 0.54090124 0.39298791 1.7364094e-08 0.19088985 0.58749866 5.9075029e-09 0.3165668 0.43571684 0.26928759
		 5.3478327e-10 0.51145375 0.3160955 -0.31606323 0.10269506 0.2053901 -0.25411391 -0.34975803 0.26719096
		 0.1834399 -0.25248355 0.19287992 0.36031693 0.11707396 0.23414792 9.582789e-10 1.1978486e-08 0.34830755
		 0.11188844 0.15400124 0.30800247 -0.10745908 0.14790475 0.29580954 0.13755703 -0.044695061 0.23402604
		 1.5500679e-09 -0.23200808 0.37539691 -0.23098241 -0.075050861 0.39297077;
	setAttr -s 120 ".ed[0:119]"  0 1 1 1 2 1 2 0 1 1 3 1 3 4 1 4 1 1 2 4 1
		 4 5 1 5 2 1 2 6 1 6 0 1 5 7 1 7 2 1 6 7 1 7 8 1 8 6 1 6 9 1 9 0 1 8 10 1 10 6 1 9 10 1
		 10 11 1 11 9 1 9 12 1 12 0 1 11 13 1 13 9 1 12 13 1 13 14 1 14 12 1 12 1 1 14 15 1
		 15 12 1 1 15 1 15 3 1 15 16 1 16 3 1 14 17 1 17 15 1 16 17 1 17 18 1 18 16 1 13 19 1
		 19 14 1 11 20 1 20 13 1 19 20 1 20 21 1 21 19 1 10 22 1 22 11 1 8 23 1 23 10 1 22 23 1
		 23 24 1 24 22 1 7 25 1 25 8 1 5 26 1 26 7 1 25 26 1 26 27 1 27 25 1 4 28 1 28 5 1
		 3 29 1 29 4 1 28 29 1 29 30 1 30 28 1 16 29 1 18 31 1 31 16 1 29 31 1 31 30 1 19 17 1
		 21 32 1 32 19 1 17 32 1 32 18 1 22 20 1 24 33 1 33 22 1 20 33 1 33 21 1 25 23 1 27 34 1
		 34 25 1 23 34 1 34 24 1 28 26 1 30 35 1 35 28 1 26 35 1 35 27 1 36 37 1 37 38 1 38 36 1
		 37 30 1 31 37 1 38 31 1 18 38 1 36 39 1 39 37 1 39 27 1 35 39 1 37 35 1 36 40 1 40 39 1
		 40 24 1 34 40 1 39 34 1 36 41 1 41 40 1 41 21 1 33 41 1 40 33 1 38 41 1 32 38 1 41 32 1;
	setAttr -s 80 -ch 240 ".fc[0:79]" -type "polyFaces" 
		f 3 0 1 2
		f 3 3 4 5
		f 3 6 7 8
		f 3 -6 -7 -2
		f 3 -3 9 10
		f 3 -9 11 12
		f 3 13 14 15
		f 3 -13 -14 -10
		f 3 -11 16 17
		f 3 -16 18 19
		f 3 20 21 22
		f 3 -20 -21 -17
		f 3 -18 23 24
		f 3 -23 25 26
		f 3 27 28 29
		f 3 -27 -28 -24
		f 3 -25 30 -1
		f 3 -30 31 32
		f 3 33 34 -4
		f 3 -33 -34 -31
		f 3 -35 35 36
		f 3 -32 37 38
		f 3 39 40 41
		f 3 -39 -40 -36
		f 3 -29 42 43
		f 3 -26 44 45
		f 3 46 47 48
		f 3 -46 -47 -43
		f 3 -22 49 50
		f 3 -19 51 52
		f 3 53 54 55
		f 3 -53 -54 -50
		f 3 -15 56 57
		f 3 -12 58 59
		f 3 60 61 62
		f 3 -60 -61 -57
		f 3 -8 63 64
		f 3 -5 65 66
		f 3 67 68 69
		f 3 -67 -68 -64
		f 3 -37 70 -66
		f 3 -42 71 72
		f 3 73 74 -69
		f 3 -73 -74 -71
		f 3 -44 75 -38
		f 3 -49 76 77
		f 3 78 79 -41
		f 3 -78 -79 -76
		f 3 -51 80 -45
		f 3 -56 81 82
		f 3 83 84 -48
		f 3 -83 -84 -81
		f 3 -58 85 -52
		f 3 -63 86 87
		f 3 88 89 -55
		f 3 -88 -89 -86
		f 3 -65 90 -59
		f 3 -70 91 92
		f 3 93 94 -62
		f 3 -93 -94 -91
		f 3 95 96 97
		f 3 98 -75 99
		f 3 100 -72 101
		f 3 -100 -101 -97
		f 3 102 103 -96
		f 3 104 -95 105
		f 3 106 -92 -99
		f 3 -106 -107 -104
		f 3 107 108 -103
		f 3 109 -90 110
		f 3 111 -87 -105
		f 3 -111 -112 -109
		f 3 112 113 -108
		f 3 114 -85 115
		f 3 116 -82 -110
		f 3 -116 -117 -114
		f 3 -98 117 -113
		f 3 -102 -80 118
		f 3 119 -77 -115
		f 3 -119 -120 -118;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "mountain1_39" -p "RockGeo";
	rename -uid "1CB248AC-4EF3-CBB6-8122-E28A7016C29E";
	setAttr ".t" -type "double3" 15.923493809314095 16.749522229630269 -13.737200284826656 ;
createNode mesh -n "mountain1_39Shape" -p "mountain1_39";
	rename -uid "9BC8FB29-4F8C-9DE1-997C-669C06B25E3D";
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
	setAttr -s 42 ".vt[0:41]"  -5.5569727e-10 6.6683672e-09 -0.58796507
		 2.7279394e-09 0.20855996 -0.33745706 0.3180064 0.10332671 -0.5410248 1.7477885e-09 0.38534856 -0.19267403
		 0.32514933 0.44752994 -0.34188196 0.61184579 0.19880104 -0.32166609 0.1726813 -0.23767541 -0.47535083
		 0.46169487 -0.15001363 -0.30002725 0.31028333 -0.42706838 -0.26394254 -0.13379738 -0.1841563 -0.3683126
		 3.1932318e-10 -0.47675335 -0.29464948 -0.28017479 -0.38562754 -0.23833069 -0.21158117 0.068747006 -0.35996342
		 -0.46846321 -0.15221278 -0.3044256 -0.41250825 0.13403228 -0.21686822 -0.15008704 0.20657724 -0.15781069
		 -0.16087875 0.49513397 1.0343861e-09 -0.3010985 0.21876101 -1.3840189e-08 -0.24613315 0.33877322 0.20937316
		 -0.59643972 2.0375091e-09 -7.6406592e-10 -0.5086782 -0.36957651 -1.156157e-08 -0.55562407 -0.18053347 0.29210863
		 -0.17064804 -0.52520072 -1.6551754e-09 0.17039311 -0.52441615 -1.0860212e-09 1.3611232e-09 -0.38297549 0.19148749
		 0.3338415 -0.24255018 6.9204353e-09 0.54276943 -6.7770095e-10 -3.3885048e-10 0.24765544 -0.080468304 0.13020003
		 0.54090124 0.39298791 1.7364094e-08 0.19088985 0.58749866 5.9075029e-09 0.3165668 0.43571684 0.26928759
		 5.3478327e-10 0.51145375 0.3160955 -0.31606323 0.10269506 0.2053901 -0.25411391 -0.34975803 0.26719096
		 0.1834399 -0.25248355 0.19287992 0.36031693 0.11707396 0.23414792 9.582789e-10 1.1978486e-08 0.34830755
		 0.11188844 0.15400124 0.30800247 -0.10745908 0.14790475 0.29580954 0.13755703 -0.044695061 0.23402604
		 1.5500679e-09 -0.23200808 0.37539691 -0.23098241 -0.075050861 0.39297077;
	setAttr -s 120 ".ed[0:119]"  0 1 1 1 2 1 2 0 1 1 3 1 3 4 1 4 1 1 2 4 1
		 4 5 1 5 2 1 2 6 1 6 0 1 5 7 1 7 2 1 6 7 1 7 8 1 8 6 1 6 9 1 9 0 1 8 10 1 10 6 1 9 10 1
		 10 11 1 11 9 1 9 12 1 12 0 1 11 13 1 13 9 1 12 13 1 13 14 1 14 12 1 12 1 1 14 15 1
		 15 12 1 1 15 1 15 3 1 15 16 1 16 3 1 14 17 1 17 15 1 16 17 1 17 18 1 18 16 1 13 19 1
		 19 14 1 11 20 1 20 13 1 19 20 1 20 21 1 21 19 1 10 22 1 22 11 1 8 23 1 23 10 1 22 23 1
		 23 24 1 24 22 1 7 25 1 25 8 1 5 26 1 26 7 1 25 26 1 26 27 1 27 25 1 4 28 1 28 5 1
		 3 29 1 29 4 1 28 29 1 29 30 1 30 28 1 16 29 1 18 31 1 31 16 1 29 31 1 31 30 1 19 17 1
		 21 32 1 32 19 1 17 32 1 32 18 1 22 20 1 24 33 1 33 22 1 20 33 1 33 21 1 25 23 1 27 34 1
		 34 25 1 23 34 1 34 24 1 28 26 1 30 35 1 35 28 1 26 35 1 35 27 1 36 37 1 37 38 1 38 36 1
		 37 30 1 31 37 1 38 31 1 18 38 1 36 39 1 39 37 1 39 27 1 35 39 1 37 35 1 36 40 1 40 39 1
		 40 24 1 34 40 1 39 34 1 36 41 1 41 40 1 41 21 1 33 41 1 40 33 1 38 41 1 32 38 1 41 32 1;
	setAttr -s 80 -ch 240 ".fc[0:79]" -type "polyFaces" 
		f 3 0 1 2
		f 3 3 4 5
		f 3 6 7 8
		f 3 -6 -7 -2
		f 3 -3 9 10
		f 3 -9 11 12
		f 3 13 14 15
		f 3 -13 -14 -10
		f 3 -11 16 17
		f 3 -16 18 19
		f 3 20 21 22
		f 3 -20 -21 -17
		f 3 -18 23 24
		f 3 -23 25 26
		f 3 27 28 29
		f 3 -27 -28 -24
		f 3 -25 30 -1
		f 3 -30 31 32
		f 3 33 34 -4
		f 3 -33 -34 -31
		f 3 -35 35 36
		f 3 -32 37 38
		f 3 39 40 41
		f 3 -39 -40 -36
		f 3 -29 42 43
		f 3 -26 44 45
		f 3 46 47 48
		f 3 -46 -47 -43
		f 3 -22 49 50
		f 3 -19 51 52
		f 3 53 54 55
		f 3 -53 -54 -50
		f 3 -15 56 57
		f 3 -12 58 59
		f 3 60 61 62
		f 3 -60 -61 -57
		f 3 -8 63 64
		f 3 -5 65 66
		f 3 67 68 69
		f 3 -67 -68 -64
		f 3 -37 70 -66
		f 3 -42 71 72
		f 3 73 74 -69
		f 3 -73 -74 -71
		f 3 -44 75 -38
		f 3 -49 76 77
		f 3 78 79 -41
		f 3 -78 -79 -76
		f 3 -51 80 -45
		f 3 -56 81 82
		f 3 83 84 -48
		f 3 -83 -84 -81
		f 3 -58 85 -52
		f 3 -63 86 87
		f 3 88 89 -55
		f 3 -88 -89 -86
		f 3 -65 90 -59
		f 3 -70 91 92
		f 3 93 94 -62
		f 3 -93 -94 -91
		f 3 95 96 97
		f 3 98 -75 99
		f 3 100 -72 101
		f 3 -100 -101 -97
		f 3 102 103 -96
		f 3 104 -95 105
		f 3 106 -92 -99
		f 3 -106 -107 -104
		f 3 107 108 -103
		f 3 109 -90 110
		f 3 111 -87 -105
		f 3 -111 -112 -109
		f 3 112 113 -108
		f 3 114 -85 115
		f 3 116 -82 -110
		f 3 -116 -117 -114
		f 3 -98 117 -113
		f 3 -102 -80 118
		f 3 119 -77 -115
		f 3 -119 -120 -118;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "mountain1_40" -p "RockGeo";
	rename -uid "88FA2E2D-4CDD-CED9-11E7-43B1FF9E7B7C";
	setAttr ".t" -type "double3" -4.0978333926163657 12.065126024840893 82.874205392135281 ;
createNode mesh -n "mountain1_40Shape" -p "mountain1_40";
	rename -uid "14986C49-48C4-3A93-166D-47895FCEB334";
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
	setAttr -s 42 ".vt[0:41]"  -5.5569727e-10 6.6683672e-09 -0.58796507
		 2.7279394e-09 0.20855996 -0.33745706 0.3180064 0.10332671 -0.5410248 1.7477885e-09 0.38534856 -0.19267403
		 0.32514933 0.44752994 -0.34188196 0.61184579 0.19880104 -0.32166609 0.1726813 -0.23767541 -0.47535083
		 0.46169487 -0.15001363 -0.30002725 0.31028333 -0.42706838 -0.26394254 -0.13379738 -0.1841563 -0.3683126
		 3.1932318e-10 -0.47675335 -0.29464948 -0.28017479 -0.38562754 -0.23833069 -0.21158117 0.068747006 -0.35996342
		 -0.46846321 -0.15221278 -0.3044256 -0.41250825 0.13403228 -0.21686822 -0.15008704 0.20657724 -0.15781069
		 -0.16087875 0.49513397 1.0343861e-09 -0.3010985 0.21876101 -1.3840189e-08 -0.24613315 0.33877322 0.20937316
		 -0.59643972 2.0375091e-09 -7.6406592e-10 -0.5086782 -0.36957651 -1.156157e-08 -0.55562407 -0.18053347 0.29210863
		 -0.17064804 -0.52520072 -1.6551754e-09 0.17039311 -0.52441615 -1.0860212e-09 1.3611232e-09 -0.38297549 0.19148749
		 0.3338415 -0.24255018 6.9204353e-09 0.54276943 -6.7770095e-10 -3.3885048e-10 0.24765544 -0.080468304 0.13020003
		 0.54090124 0.39298791 1.7364094e-08 0.19088985 0.58749866 5.9075029e-09 0.3165668 0.43571684 0.26928759
		 5.3478327e-10 0.51145375 0.3160955 -0.31606323 0.10269506 0.2053901 -0.25411391 -0.34975803 0.26719096
		 0.1834399 -0.25248355 0.19287992 0.36031693 0.11707396 0.23414792 9.582789e-10 1.1978486e-08 0.34830755
		 0.11188844 0.15400124 0.30800247 -0.10745908 0.14790475 0.29580954 0.13755703 -0.044695061 0.23402604
		 1.5500679e-09 -0.23200808 0.37539691 -0.23098241 -0.075050861 0.39297077;
	setAttr -s 120 ".ed[0:119]"  0 1 1 1 2 1 2 0 1 1 3 1 3 4 1 4 1 1 2 4 1
		 4 5 1 5 2 1 2 6 1 6 0 1 5 7 1 7 2 1 6 7 1 7 8 1 8 6 1 6 9 1 9 0 1 8 10 1 10 6 1 9 10 1
		 10 11 1 11 9 1 9 12 1 12 0 1 11 13 1 13 9 1 12 13 1 13 14 1 14 12 1 12 1 1 14 15 1
		 15 12 1 1 15 1 15 3 1 15 16 1 16 3 1 14 17 1 17 15 1 16 17 1 17 18 1 18 16 1 13 19 1
		 19 14 1 11 20 1 20 13 1 19 20 1 20 21 1 21 19 1 10 22 1 22 11 1 8 23 1 23 10 1 22 23 1
		 23 24 1 24 22 1 7 25 1 25 8 1 5 26 1 26 7 1 25 26 1 26 27 1 27 25 1 4 28 1 28 5 1
		 3 29 1 29 4 1 28 29 1 29 30 1 30 28 1 16 29 1 18 31 1 31 16 1 29 31 1 31 30 1 19 17 1
		 21 32 1 32 19 1 17 32 1 32 18 1 22 20 1 24 33 1 33 22 1 20 33 1 33 21 1 25 23 1 27 34 1
		 34 25 1 23 34 1 34 24 1 28 26 1 30 35 1 35 28 1 26 35 1 35 27 1 36 37 1 37 38 1 38 36 1
		 37 30 1 31 37 1 38 31 1 18 38 1 36 39 1 39 37 1 39 27 1 35 39 1 37 35 1 36 40 1 40 39 1
		 40 24 1 34 40 1 39 34 1 36 41 1 41 40 1 41 21 1 33 41 1 40 33 1 38 41 1 32 38 1 41 32 1;
	setAttr -s 80 -ch 240 ".fc[0:79]" -type "polyFaces" 
		f 3 0 1 2
		f 3 3 4 5
		f 3 6 7 8
		f 3 -6 -7 -2
		f 3 -3 9 10
		f 3 -9 11 12
		f 3 13 14 15
		f 3 -13 -14 -10
		f 3 -11 16 17
		f 3 -16 18 19
		f 3 20 21 22
		f 3 -20 -21 -17
		f 3 -18 23 24
		f 3 -23 25 26
		f 3 27 28 29
		f 3 -27 -28 -24
		f 3 -25 30 -1
		f 3 -30 31 32
		f 3 33 34 -4
		f 3 -33 -34 -31
		f 3 -35 35 36
		f 3 -32 37 38
		f 3 39 40 41
		f 3 -39 -40 -36
		f 3 -29 42 43
		f 3 -26 44 45
		f 3 46 47 48
		f 3 -46 -47 -43
		f 3 -22 49 50
		f 3 -19 51 52
		f 3 53 54 55
		f 3 -53 -54 -50
		f 3 -15 56 57
		f 3 -12 58 59
		f 3 60 61 62
		f 3 -60 -61 -57
		f 3 -8 63 64
		f 3 -5 65 66
		f 3 67 68 69
		f 3 -67 -68 -64
		f 3 -37 70 -66
		f 3 -42 71 72
		f 3 73 74 -69
		f 3 -73 -74 -71
		f 3 -44 75 -38
		f 3 -49 76 77
		f 3 78 79 -41
		f 3 -78 -79 -76
		f 3 -51 80 -45
		f 3 -56 81 82
		f 3 83 84 -48
		f 3 -83 -84 -81
		f 3 -58 85 -52
		f 3 -63 86 87
		f 3 88 89 -55
		f 3 -88 -89 -86
		f 3 -65 90 -59
		f 3 -70 91 92
		f 3 93 94 -62
		f 3 -93 -94 -91
		f 3 95 96 97
		f 3 98 -75 99
		f 3 100 -72 101
		f 3 -100 -101 -97
		f 3 102 103 -96
		f 3 104 -95 105
		f 3 106 -92 -99
		f 3 -106 -107 -104
		f 3 107 108 -103
		f 3 109 -90 110
		f 3 111 -87 -105
		f 3 -111 -112 -109
		f 3 112 113 -108
		f 3 114 -85 115
		f 3 116 -82 -110
		f 3 -116 -117 -114
		f 3 -98 117 -113
		f 3 -102 -80 118
		f 3 119 -77 -115
		f 3 -119 -120 -118;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "mountain1_41" -p "RockGeo";
	rename -uid "D8BAF645-4C20-1BAC-7F7B-3E8C2FECAB3A";
	setAttr ".t" -type "double3" 2.0828815089541308 0.48398990647607221 88.735814060834173 ;
createNode mesh -n "mountain1_41Shape" -p "mountain1_41";
	rename -uid "85563085-4F81-3B3A-9F57-7F9B144866EB";
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
	setAttr -s 42 ".vt[0:41]"  -5.5569727e-10 6.6683672e-09 -0.58796507
		 2.7279394e-09 0.20855996 -0.33745706 0.3180064 0.10332671 -0.5410248 1.7477885e-09 0.38534856 -0.19267403
		 0.32514933 0.44752994 -0.34188196 0.61184579 0.19880104 -0.32166609 0.1726813 -0.23767541 -0.47535083
		 0.46169487 -0.15001363 -0.30002725 0.31028333 -0.42706838 -0.26394254 -0.13379738 -0.1841563 -0.3683126
		 3.1932318e-10 -0.47675335 -0.29464948 -0.28017479 -0.38562754 -0.23833069 -0.21158117 0.068747006 -0.35996342
		 -0.46846321 -0.15221278 -0.3044256 -0.41250825 0.13403228 -0.21686822 -0.15008704 0.20657724 -0.15781069
		 -0.16087875 0.49513397 1.0343861e-09 -0.3010985 0.21876101 -1.3840189e-08 -0.24613315 0.33877322 0.20937316
		 -0.59643972 2.0375091e-09 -7.6406592e-10 -0.5086782 -0.36957651 -1.156157e-08 -0.55562407 -0.18053347 0.29210863
		 -0.17064804 -0.52520072 -1.6551754e-09 0.17039311 -0.52441615 -1.0860212e-09 1.3611232e-09 -0.38297549 0.19148749
		 0.3338415 -0.24255018 6.9204353e-09 0.54276943 -6.7770095e-10 -3.3885048e-10 0.24765544 -0.080468304 0.13020003
		 0.54090124 0.39298791 1.7364094e-08 0.19088985 0.58749866 5.9075029e-09 0.3165668 0.43571684 0.26928759
		 5.3478327e-10 0.51145375 0.3160955 -0.31606323 0.10269506 0.2053901 -0.25411391 -0.34975803 0.26719096
		 0.1834399 -0.25248355 0.19287992 0.36031693 0.11707396 0.23414792 9.582789e-10 1.1978486e-08 0.34830755
		 0.11188844 0.15400124 0.30800247 -0.10745908 0.14790475 0.29580954 0.13755703 -0.044695061 0.23402604
		 1.5500679e-09 -0.23200808 0.37539691 -0.23098241 -0.075050861 0.39297077;
	setAttr -s 120 ".ed[0:119]"  0 1 1 1 2 1 2 0 1 1 3 1 3 4 1 4 1 1 2 4 1
		 4 5 1 5 2 1 2 6 1 6 0 1 5 7 1 7 2 1 6 7 1 7 8 1 8 6 1 6 9 1 9 0 1 8 10 1 10 6 1 9 10 1
		 10 11 1 11 9 1 9 12 1 12 0 1 11 13 1 13 9 1 12 13 1 13 14 1 14 12 1 12 1 1 14 15 1
		 15 12 1 1 15 1 15 3 1 15 16 1 16 3 1 14 17 1 17 15 1 16 17 1 17 18 1 18 16 1 13 19 1
		 19 14 1 11 20 1 20 13 1 19 20 1 20 21 1 21 19 1 10 22 1 22 11 1 8 23 1 23 10 1 22 23 1
		 23 24 1 24 22 1 7 25 1 25 8 1 5 26 1 26 7 1 25 26 1 26 27 1 27 25 1 4 28 1 28 5 1
		 3 29 1 29 4 1 28 29 1 29 30 1 30 28 1 16 29 1 18 31 1 31 16 1 29 31 1 31 30 1 19 17 1
		 21 32 1 32 19 1 17 32 1 32 18 1 22 20 1 24 33 1 33 22 1 20 33 1 33 21 1 25 23 1 27 34 1
		 34 25 1 23 34 1 34 24 1 28 26 1 30 35 1 35 28 1 26 35 1 35 27 1 36 37 1 37 38 1 38 36 1
		 37 30 1 31 37 1 38 31 1 18 38 1 36 39 1 39 37 1 39 27 1 35 39 1 37 35 1 36 40 1 40 39 1
		 40 24 1 34 40 1 39 34 1 36 41 1 41 40 1 41 21 1 33 41 1 40 33 1 38 41 1 32 38 1 41 32 1;
	setAttr -s 80 -ch 240 ".fc[0:79]" -type "polyFaces" 
		f 3 0 1 2
		f 3 3 4 5
		f 3 6 7 8
		f 3 -6 -7 -2
		f 3 -3 9 10
		f 3 -9 11 12
		f 3 13 14 15
		f 3 -13 -14 -10
		f 3 -11 16 17
		f 3 -16 18 19
		f 3 20 21 22
		f 3 -20 -21 -17
		f 3 -18 23 24
		f 3 -23 25 26
		f 3 27 28 29
		f 3 -27 -28 -24
		f 3 -25 30 -1
		f 3 -30 31 32
		f 3 33 34 -4
		f 3 -33 -34 -31
		f 3 -35 35 36
		f 3 -32 37 38
		f 3 39 40 41
		f 3 -39 -40 -36
		f 3 -29 42 43
		f 3 -26 44 45
		f 3 46 47 48
		f 3 -46 -47 -43
		f 3 -22 49 50
		f 3 -19 51 52
		f 3 53 54 55
		f 3 -53 -54 -50
		f 3 -15 56 57
		f 3 -12 58 59
		f 3 60 61 62
		f 3 -60 -61 -57
		f 3 -8 63 64
		f 3 -5 65 66
		f 3 67 68 69
		f 3 -67 -68 -64
		f 3 -37 70 -66
		f 3 -42 71 72
		f 3 73 74 -69
		f 3 -73 -74 -71
		f 3 -44 75 -38
		f 3 -49 76 77
		f 3 78 79 -41
		f 3 -78 -79 -76
		f 3 -51 80 -45
		f 3 -56 81 82
		f 3 83 84 -48
		f 3 -83 -84 -81
		f 3 -58 85 -52
		f 3 -63 86 87
		f 3 88 89 -55
		f 3 -88 -89 -86
		f 3 -65 90 -59
		f 3 -70 91 92
		f 3 93 94 -62
		f 3 -93 -94 -91
		f 3 95 96 97
		f 3 98 -75 99
		f 3 100 -72 101
		f 3 -100 -101 -97
		f 3 102 103 -96
		f 3 104 -95 105
		f 3 106 -92 -99
		f 3 -106 -107 -104
		f 3 107 108 -103
		f 3 109 -90 110
		f 3 111 -87 -105
		f 3 -111 -112 -109
		f 3 112 113 -108
		f 3 114 -85 115
		f 3 116 -82 -110
		f 3 -116 -117 -114
		f 3 -98 117 -113
		f 3 -102 -80 118
		f 3 119 -77 -115
		f 3 -119 -120 -118;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "mountain1_42" -p "RockGeo";
	rename -uid "7DAA98EC-44B5-E81C-D6EF-0FB00CED22B7";
	setAttr ".t" -type "double3" -1.8577481044231092 4.3640113523237645 -87.672353719946017 ;
createNode mesh -n "mountain1_42Shape" -p "mountain1_42";
	rename -uid "FE2741FE-4CE3-FF17-76F4-FF94A952B25B";
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
	setAttr -s 42 ".vt[0:41]"  -5.5569727e-10 6.6683672e-09 -0.58796507
		 2.7279394e-09 0.20855996 -0.33745706 0.3180064 0.10332671 -0.5410248 1.7477885e-09 0.38534856 -0.19267403
		 0.32514933 0.44752994 -0.34188196 0.61184579 0.19880104 -0.32166609 0.1726813 -0.23767541 -0.47535083
		 0.46169487 -0.15001363 -0.30002725 0.31028333 -0.42706838 -0.26394254 -0.13379738 -0.1841563 -0.3683126
		 3.1932318e-10 -0.47675335 -0.29464948 -0.28017479 -0.38562754 -0.23833069 -0.21158117 0.068747006 -0.35996342
		 -0.46846321 -0.15221278 -0.3044256 -0.41250825 0.13403228 -0.21686822 -0.15008704 0.20657724 -0.15781069
		 -0.16087875 0.49513397 1.0343861e-09 -0.3010985 0.21876101 -1.3840189e-08 -0.24613315 0.33877322 0.20937316
		 -0.59643972 2.0375091e-09 -7.6406592e-10 -0.5086782 -0.36957651 -1.156157e-08 -0.55562407 -0.18053347 0.29210863
		 -0.17064804 -0.52520072 -1.6551754e-09 0.17039311 -0.52441615 -1.0860212e-09 1.3611232e-09 -0.38297549 0.19148749
		 0.3338415 -0.24255018 6.9204353e-09 0.54276943 -6.7770095e-10 -3.3885048e-10 0.24765544 -0.080468304 0.13020003
		 0.54090124 0.39298791 1.7364094e-08 0.19088985 0.58749866 5.9075029e-09 0.3165668 0.43571684 0.26928759
		 5.3478327e-10 0.51145375 0.3160955 -0.31606323 0.10269506 0.2053901 -0.25411391 -0.34975803 0.26719096
		 0.1834399 -0.25248355 0.19287992 0.36031693 0.11707396 0.23414792 9.582789e-10 1.1978486e-08 0.34830755
		 0.11188844 0.15400124 0.30800247 -0.10745908 0.14790475 0.29580954 0.13755703 -0.044695061 0.23402604
		 1.5500679e-09 -0.23200808 0.37539691 -0.23098241 -0.075050861 0.39297077;
	setAttr -s 120 ".ed[0:119]"  0 1 1 1 2 1 2 0 1 1 3 1 3 4 1 4 1 1 2 4 1
		 4 5 1 5 2 1 2 6 1 6 0 1 5 7 1 7 2 1 6 7 1 7 8 1 8 6 1 6 9 1 9 0 1 8 10 1 10 6 1 9 10 1
		 10 11 1 11 9 1 9 12 1 12 0 1 11 13 1 13 9 1 12 13 1 13 14 1 14 12 1 12 1 1 14 15 1
		 15 12 1 1 15 1 15 3 1 15 16 1 16 3 1 14 17 1 17 15 1 16 17 1 17 18 1 18 16 1 13 19 1
		 19 14 1 11 20 1 20 13 1 19 20 1 20 21 1 21 19 1 10 22 1 22 11 1 8 23 1 23 10 1 22 23 1
		 23 24 1 24 22 1 7 25 1 25 8 1 5 26 1 26 7 1 25 26 1 26 27 1 27 25 1 4 28 1 28 5 1
		 3 29 1 29 4 1 28 29 1 29 30 1 30 28 1 16 29 1 18 31 1 31 16 1 29 31 1 31 30 1 19 17 1
		 21 32 1 32 19 1 17 32 1 32 18 1 22 20 1 24 33 1 33 22 1 20 33 1 33 21 1 25 23 1 27 34 1
		 34 25 1 23 34 1 34 24 1 28 26 1 30 35 1 35 28 1 26 35 1 35 27 1 36 37 1 37 38 1 38 36 1
		 37 30 1 31 37 1 38 31 1 18 38 1 36 39 1 39 37 1 39 27 1 35 39 1 37 35 1 36 40 1 40 39 1
		 40 24 1 34 40 1 39 34 1 36 41 1 41 40 1 41 21 1 33 41 1 40 33 1 38 41 1 32 38 1 41 32 1;
	setAttr -s 80 -ch 240 ".fc[0:79]" -type "polyFaces" 
		f 3 0 1 2
		f 3 3 4 5
		f 3 6 7 8
		f 3 -6 -7 -2
		f 3 -3 9 10
		f 3 -9 11 12
		f 3 13 14 15
		f 3 -13 -14 -10
		f 3 -11 16 17
		f 3 -16 18 19
		f 3 20 21 22
		f 3 -20 -21 -17
		f 3 -18 23 24
		f 3 -23 25 26
		f 3 27 28 29
		f 3 -27 -28 -24
		f 3 -25 30 -1
		f 3 -30 31 32
		f 3 33 34 -4
		f 3 -33 -34 -31
		f 3 -35 35 36
		f 3 -32 37 38
		f 3 39 40 41
		f 3 -39 -40 -36
		f 3 -29 42 43
		f 3 -26 44 45
		f 3 46 47 48
		f 3 -46 -47 -43
		f 3 -22 49 50
		f 3 -19 51 52
		f 3 53 54 55
		f 3 -53 -54 -50
		f 3 -15 56 57
		f 3 -12 58 59
		f 3 60 61 62
		f 3 -60 -61 -57
		f 3 -8 63 64
		f 3 -5 65 66
		f 3 67 68 69
		f 3 -67 -68 -64
		f 3 -37 70 -66
		f 3 -42 71 72
		f 3 73 74 -69
		f 3 -73 -74 -71
		f 3 -44 75 -38
		f 3 -49 76 77
		f 3 78 79 -41
		f 3 -78 -79 -76
		f 3 -51 80 -45
		f 3 -56 81 82
		f 3 83 84 -48
		f 3 -83 -84 -81
		f 3 -58 85 -52
		f 3 -63 86 87
		f 3 88 89 -55
		f 3 -88 -89 -86
		f 3 -65 90 -59
		f 3 -70 91 92
		f 3 93 94 -62
		f 3 -93 -94 -91
		f 3 95 96 97
		f 3 98 -75 99
		f 3 100 -72 101
		f 3 -100 -101 -97
		f 3 102 103 -96
		f 3 104 -95 105
		f 3 106 -92 -99
		f 3 -106 -107 -104
		f 3 107 108 -103
		f 3 109 -90 110
		f 3 111 -87 -105
		f 3 -111 -112 -109
		f 3 112 113 -108
		f 3 114 -85 115
		f 3 116 -82 -110
		f 3 -116 -117 -114
		f 3 -98 117 -113
		f 3 -102 -80 118
		f 3 119 -77 -115
		f 3 -119 -120 -118;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "mountain1_43" -p "RockGeo";
	rename -uid "4A232457-4935-874D-64FC-5E94CD2F339F";
	setAttr ".t" -type "double3" 4.8647320867820554 -4.9022299870397923 -37.956143111769336 ;
createNode mesh -n "mountain1_43Shape" -p "mountain1_43";
	rename -uid "FB670BB2-47AE-1747-C1CD-3FAFEEC6652D";
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
	setAttr -s 42 ".vt[0:41]"  -5.5569727e-10 6.6683672e-09 -0.58796507
		 2.7279394e-09 0.20855996 -0.33745706 0.3180064 0.10332671 -0.5410248 1.7477885e-09 0.38534856 -0.19267403
		 0.32514933 0.44752994 -0.34188196 0.61184579 0.19880104 -0.32166609 0.1726813 -0.23767541 -0.47535083
		 0.46169487 -0.15001363 -0.30002725 0.31028333 -0.42706838 -0.26394254 -0.13379738 -0.1841563 -0.3683126
		 3.1932318e-10 -0.47675335 -0.29464948 -0.28017479 -0.38562754 -0.23833069 -0.21158117 0.068747006 -0.35996342
		 -0.46846321 -0.15221278 -0.3044256 -0.41250825 0.13403228 -0.21686822 -0.15008704 0.20657724 -0.15781069
		 -0.16087875 0.49513397 1.0343861e-09 -0.3010985 0.21876101 -1.3840189e-08 -0.24613315 0.33877322 0.20937316
		 -0.59643972 2.0375091e-09 -7.6406592e-10 -0.5086782 -0.36957651 -1.156157e-08 -0.55562407 -0.18053347 0.29210863
		 -0.17064804 -0.52520072 -1.6551754e-09 0.17039311 -0.52441615 -1.0860212e-09 1.3611232e-09 -0.38297549 0.19148749
		 0.3338415 -0.24255018 6.9204353e-09 0.54276943 -6.7770095e-10 -3.3885048e-10 0.24765544 -0.080468304 0.13020003
		 0.54090124 0.39298791 1.7364094e-08 0.19088985 0.58749866 5.9075029e-09 0.3165668 0.43571684 0.26928759
		 5.3478327e-10 0.51145375 0.3160955 -0.31606323 0.10269506 0.2053901 -0.25411391 -0.34975803 0.26719096
		 0.1834399 -0.25248355 0.19287992 0.36031693 0.11707396 0.23414792 9.582789e-10 1.1978486e-08 0.34830755
		 0.11188844 0.15400124 0.30800247 -0.10745908 0.14790475 0.29580954 0.13755703 -0.044695061 0.23402604
		 1.5500679e-09 -0.23200808 0.37539691 -0.23098241 -0.075050861 0.39297077;
	setAttr -s 120 ".ed[0:119]"  0 1 1 1 2 1 2 0 1 1 3 1 3 4 1 4 1 1 2 4 1
		 4 5 1 5 2 1 2 6 1 6 0 1 5 7 1 7 2 1 6 7 1 7 8 1 8 6 1 6 9 1 9 0 1 8 10 1 10 6 1 9 10 1
		 10 11 1 11 9 1 9 12 1 12 0 1 11 13 1 13 9 1 12 13 1 13 14 1 14 12 1 12 1 1 14 15 1
		 15 12 1 1 15 1 15 3 1 15 16 1 16 3 1 14 17 1 17 15 1 16 17 1 17 18 1 18 16 1 13 19 1
		 19 14 1 11 20 1 20 13 1 19 20 1 20 21 1 21 19 1 10 22 1 22 11 1 8 23 1 23 10 1 22 23 1
		 23 24 1 24 22 1 7 25 1 25 8 1 5 26 1 26 7 1 25 26 1 26 27 1 27 25 1 4 28 1 28 5 1
		 3 29 1 29 4 1 28 29 1 29 30 1 30 28 1 16 29 1 18 31 1 31 16 1 29 31 1 31 30 1 19 17 1
		 21 32 1 32 19 1 17 32 1 32 18 1 22 20 1 24 33 1 33 22 1 20 33 1 33 21 1 25 23 1 27 34 1
		 34 25 1 23 34 1 34 24 1 28 26 1 30 35 1 35 28 1 26 35 1 35 27 1 36 37 1 37 38 1 38 36 1
		 37 30 1 31 37 1 38 31 1 18 38 1 36 39 1 39 37 1 39 27 1 35 39 1 37 35 1 36 40 1 40 39 1
		 40 24 1 34 40 1 39 34 1 36 41 1 41 40 1 41 21 1 33 41 1 40 33 1 38 41 1 32 38 1 41 32 1;
	setAttr -s 80 -ch 240 ".fc[0:79]" -type "polyFaces" 
		f 3 0 1 2
		f 3 3 4 5
		f 3 6 7 8
		f 3 -6 -7 -2
		f 3 -3 9 10
		f 3 -9 11 12
		f 3 13 14 15
		f 3 -13 -14 -10
		f 3 -11 16 17
		f 3 -16 18 19
		f 3 20 21 22
		f 3 -20 -21 -17
		f 3 -18 23 24
		f 3 -23 25 26
		f 3 27 28 29
		f 3 -27 -28 -24
		f 3 -25 30 -1
		f 3 -30 31 32
		f 3 33 34 -4
		f 3 -33 -34 -31
		f 3 -35 35 36
		f 3 -32 37 38
		f 3 39 40 41
		f 3 -39 -40 -36
		f 3 -29 42 43
		f 3 -26 44 45
		f 3 46 47 48
		f 3 -46 -47 -43
		f 3 -22 49 50
		f 3 -19 51 52
		f 3 53 54 55
		f 3 -53 -54 -50
		f 3 -15 56 57
		f 3 -12 58 59
		f 3 60 61 62
		f 3 -60 -61 -57
		f 3 -8 63 64
		f 3 -5 65 66
		f 3 67 68 69
		f 3 -67 -68 -64
		f 3 -37 70 -66
		f 3 -42 71 72
		f 3 73 74 -69
		f 3 -73 -74 -71
		f 3 -44 75 -38
		f 3 -49 76 77
		f 3 78 79 -41
		f 3 -78 -79 -76
		f 3 -51 80 -45
		f 3 -56 81 82
		f 3 83 84 -48
		f 3 -83 -84 -81
		f 3 -58 85 -52
		f 3 -63 86 87
		f 3 88 89 -55
		f 3 -88 -89 -86
		f 3 -65 90 -59
		f 3 -70 91 92
		f 3 93 94 -62
		f 3 -93 -94 -91
		f 3 95 96 97
		f 3 98 -75 99
		f 3 100 -72 101
		f 3 -100 -101 -97
		f 3 102 103 -96
		f 3 104 -95 105
		f 3 106 -92 -99
		f 3 -106 -107 -104
		f 3 107 108 -103
		f 3 109 -90 110
		f 3 111 -87 -105
		f 3 -111 -112 -109
		f 3 112 113 -108
		f 3 114 -85 115
		f 3 116 -82 -110
		f 3 -116 -117 -114
		f 3 -98 117 -113
		f 3 -102 -80 118
		f 3 119 -77 -115
		f 3 -119 -120 -118;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "mountain1_44" -p "RockGeo";
	rename -uid "512B49B0-4C4D-7BD7-94CA-8E8E5DEDC4EA";
	setAttr ".t" -type "double3" 5.3669603107290698 2.116223898073315 34.222715771530687 ;
createNode mesh -n "mountain1_44Shape" -p "mountain1_44";
	rename -uid "CAB36B0D-430F-F35B-DE0E-AB979316CF3E";
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
	setAttr -s 42 ".vt[0:41]"  -5.5569727e-10 6.6683672e-09 -0.58796507
		 2.7279394e-09 0.20855996 -0.33745706 0.3180064 0.10332671 -0.5410248 1.7477885e-09 0.38534856 -0.19267403
		 0.32514933 0.44752994 -0.34188196 0.61184579 0.19880104 -0.32166609 0.1726813 -0.23767541 -0.47535083
		 0.46169487 -0.15001363 -0.30002725 0.31028333 -0.42706838 -0.26394254 -0.13379738 -0.1841563 -0.3683126
		 3.1932318e-10 -0.47675335 -0.29464948 -0.28017479 -0.38562754 -0.23833069 -0.21158117 0.068747006 -0.35996342
		 -0.46846321 -0.15221278 -0.3044256 -0.41250825 0.13403228 -0.21686822 -0.15008704 0.20657724 -0.15781069
		 -0.16087875 0.49513397 1.0343861e-09 -0.3010985 0.21876101 -1.3840189e-08 -0.24613315 0.33877322 0.20937316
		 -0.59643972 2.0375091e-09 -7.6406592e-10 -0.5086782 -0.36957651 -1.156157e-08 -0.55562407 -0.18053347 0.29210863
		 -0.17064804 -0.52520072 -1.6551754e-09 0.17039311 -0.52441615 -1.0860212e-09 1.3611232e-09 -0.38297549 0.19148749
		 0.3338415 -0.24255018 6.9204353e-09 0.54276943 -6.7770095e-10 -3.3885048e-10 0.24765544 -0.080468304 0.13020003
		 0.54090124 0.39298791 1.7364094e-08 0.19088985 0.58749866 5.9075029e-09 0.3165668 0.43571684 0.26928759
		 5.3478327e-10 0.51145375 0.3160955 -0.31606323 0.10269506 0.2053901 -0.25411391 -0.34975803 0.26719096
		 0.1834399 -0.25248355 0.19287992 0.36031693 0.11707396 0.23414792 9.582789e-10 1.1978486e-08 0.34830755
		 0.11188844 0.15400124 0.30800247 -0.10745908 0.14790475 0.29580954 0.13755703 -0.044695061 0.23402604
		 1.5500679e-09 -0.23200808 0.37539691 -0.23098241 -0.075050861 0.39297077;
	setAttr -s 120 ".ed[0:119]"  0 1 1 1 2 1 2 0 1 1 3 1 3 4 1 4 1 1 2 4 1
		 4 5 1 5 2 1 2 6 1 6 0 1 5 7 1 7 2 1 6 7 1 7 8 1 8 6 1 6 9 1 9 0 1 8 10 1 10 6 1 9 10 1
		 10 11 1 11 9 1 9 12 1 12 0 1 11 13 1 13 9 1 12 13 1 13 14 1 14 12 1 12 1 1 14 15 1
		 15 12 1 1 15 1 15 3 1 15 16 1 16 3 1 14 17 1 17 15 1 16 17 1 17 18 1 18 16 1 13 19 1
		 19 14 1 11 20 1 20 13 1 19 20 1 20 21 1 21 19 1 10 22 1 22 11 1 8 23 1 23 10 1 22 23 1
		 23 24 1 24 22 1 7 25 1 25 8 1 5 26 1 26 7 1 25 26 1 26 27 1 27 25 1 4 28 1 28 5 1
		 3 29 1 29 4 1 28 29 1 29 30 1 30 28 1 16 29 1 18 31 1 31 16 1 29 31 1 31 30 1 19 17 1
		 21 32 1 32 19 1 17 32 1 32 18 1 22 20 1 24 33 1 33 22 1 20 33 1 33 21 1 25 23 1 27 34 1
		 34 25 1 23 34 1 34 24 1 28 26 1 30 35 1 35 28 1 26 35 1 35 27 1 36 37 1 37 38 1 38 36 1
		 37 30 1 31 37 1 38 31 1 18 38 1 36 39 1 39 37 1 39 27 1 35 39 1 37 35 1 36 40 1 40 39 1
		 40 24 1 34 40 1 39 34 1 36 41 1 41 40 1 41 21 1 33 41 1 40 33 1 38 41 1 32 38 1 41 32 1;
	setAttr -s 80 -ch 240 ".fc[0:79]" -type "polyFaces" 
		f 3 0 1 2
		f 3 3 4 5
		f 3 6 7 8
		f 3 -6 -7 -2
		f 3 -3 9 10
		f 3 -9 11 12
		f 3 13 14 15
		f 3 -13 -14 -10
		f 3 -11 16 17
		f 3 -16 18 19
		f 3 20 21 22
		f 3 -20 -21 -17
		f 3 -18 23 24
		f 3 -23 25 26
		f 3 27 28 29
		f 3 -27 -28 -24
		f 3 -25 30 -1
		f 3 -30 31 32
		f 3 33 34 -4
		f 3 -33 -34 -31
		f 3 -35 35 36
		f 3 -32 37 38
		f 3 39 40 41
		f 3 -39 -40 -36
		f 3 -29 42 43
		f 3 -26 44 45
		f 3 46 47 48
		f 3 -46 -47 -43
		f 3 -22 49 50
		f 3 -19 51 52
		f 3 53 54 55
		f 3 -53 -54 -50
		f 3 -15 56 57
		f 3 -12 58 59
		f 3 60 61 62
		f 3 -60 -61 -57
		f 3 -8 63 64
		f 3 -5 65 66
		f 3 67 68 69
		f 3 -67 -68 -64
		f 3 -37 70 -66
		f 3 -42 71 72
		f 3 73 74 -69
		f 3 -73 -74 -71
		f 3 -44 75 -38
		f 3 -49 76 77
		f 3 78 79 -41
		f 3 -78 -79 -76
		f 3 -51 80 -45
		f 3 -56 81 82
		f 3 83 84 -48
		f 3 -83 -84 -81
		f 3 -58 85 -52
		f 3 -63 86 87
		f 3 88 89 -55
		f 3 -88 -89 -86
		f 3 -65 90 -59
		f 3 -70 91 92
		f 3 93 94 -62
		f 3 -93 -94 -91
		f 3 95 96 97
		f 3 98 -75 99
		f 3 100 -72 101
		f 3 -100 -101 -97
		f 3 102 103 -96
		f 3 104 -95 105
		f 3 106 -92 -99
		f 3 -106 -107 -104
		f 3 107 108 -103
		f 3 109 -90 110
		f 3 111 -87 -105
		f 3 -111 -112 -109
		f 3 112 113 -108
		f 3 114 -85 115
		f 3 116 -82 -110
		f 3 -116 -117 -114
		f 3 -98 117 -113
		f 3 -102 -80 118
		f 3 119 -77 -115
		f 3 -119 -120 -118;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "mountain1_45" -p "RockGeo";
	rename -uid "5E5C077C-41A4-0AB0-16A8-A4AEDFAEC426";
	setAttr ".t" -type "double3" 1.5893610299386296 13.329191094063635 5.1733031980944588 ;
createNode mesh -n "mountain1_45Shape" -p "mountain1_45";
	rename -uid "5BC8BD72-4504-18AB-BECA-6693A4898798";
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
	setAttr -s 42 ".vt[0:41]"  -5.5569727e-10 6.6683672e-09 -0.58796507
		 2.7279394e-09 0.20855996 -0.33745706 0.3180064 0.10332671 -0.5410248 1.7477885e-09 0.38534856 -0.19267403
		 0.32514933 0.44752994 -0.34188196 0.61184579 0.19880104 -0.32166609 0.1726813 -0.23767541 -0.47535083
		 0.46169487 -0.15001363 -0.30002725 0.31028333 -0.42706838 -0.26394254 -0.13379738 -0.1841563 -0.3683126
		 3.1932318e-10 -0.47675335 -0.29464948 -0.28017479 -0.38562754 -0.23833069 -0.21158117 0.068747006 -0.35996342
		 -0.46846321 -0.15221278 -0.3044256 -0.41250825 0.13403228 -0.21686822 -0.15008704 0.20657724 -0.15781069
		 -0.16087875 0.49513397 1.0343861e-09 -0.3010985 0.21876101 -1.3840189e-08 -0.24613315 0.33877322 0.20937316
		 -0.59643972 2.0375091e-09 -7.6406592e-10 -0.5086782 -0.36957651 -1.156157e-08 -0.55562407 -0.18053347 0.29210863
		 -0.17064804 -0.52520072 -1.6551754e-09 0.17039311 -0.52441615 -1.0860212e-09 1.3611232e-09 -0.38297549 0.19148749
		 0.3338415 -0.24255018 6.9204353e-09 0.54276943 -6.7770095e-10 -3.3885048e-10 0.24765544 -0.080468304 0.13020003
		 0.54090124 0.39298791 1.7364094e-08 0.19088985 0.58749866 5.9075029e-09 0.3165668 0.43571684 0.26928759
		 5.3478327e-10 0.51145375 0.3160955 -0.31606323 0.10269506 0.2053901 -0.25411391 -0.34975803 0.26719096
		 0.1834399 -0.25248355 0.19287992 0.36031693 0.11707396 0.23414792 9.582789e-10 1.1978486e-08 0.34830755
		 0.11188844 0.15400124 0.30800247 -0.10745908 0.14790475 0.29580954 0.13755703 -0.044695061 0.23402604
		 1.5500679e-09 -0.23200808 0.37539691 -0.23098241 -0.075050861 0.39297077;
	setAttr -s 120 ".ed[0:119]"  0 1 1 1 2 1 2 0 1 1 3 1 3 4 1 4 1 1 2 4 1
		 4 5 1 5 2 1 2 6 1 6 0 1 5 7 1 7 2 1 6 7 1 7 8 1 8 6 1 6 9 1 9 0 1 8 10 1 10 6 1 9 10 1
		 10 11 1 11 9 1 9 12 1 12 0 1 11 13 1 13 9 1 12 13 1 13 14 1 14 12 1 12 1 1 14 15 1
		 15 12 1 1 15 1 15 3 1 15 16 1 16 3 1 14 17 1 17 15 1 16 17 1 17 18 1 18 16 1 13 19 1
		 19 14 1 11 20 1 20 13 1 19 20 1 20 21 1 21 19 1 10 22 1 22 11 1 8 23 1 23 10 1 22 23 1
		 23 24 1 24 22 1 7 25 1 25 8 1 5 26 1 26 7 1 25 26 1 26 27 1 27 25 1 4 28 1 28 5 1
		 3 29 1 29 4 1 28 29 1 29 30 1 30 28 1 16 29 1 18 31 1 31 16 1 29 31 1 31 30 1 19 17 1
		 21 32 1 32 19 1 17 32 1 32 18 1 22 20 1 24 33 1 33 22 1 20 33 1 33 21 1 25 23 1 27 34 1
		 34 25 1 23 34 1 34 24 1 28 26 1 30 35 1 35 28 1 26 35 1 35 27 1 36 37 1 37 38 1 38 36 1
		 37 30 1 31 37 1 38 31 1 18 38 1 36 39 1 39 37 1 39 27 1 35 39 1 37 35 1 36 40 1 40 39 1
		 40 24 1 34 40 1 39 34 1 36 41 1 41 40 1 41 21 1 33 41 1 40 33 1 38 41 1 32 38 1 41 32 1;
	setAttr -s 80 -ch 240 ".fc[0:79]" -type "polyFaces" 
		f 3 0 1 2
		f 3 3 4 5
		f 3 6 7 8
		f 3 -6 -7 -2
		f 3 -3 9 10
		f 3 -9 11 12
		f 3 13 14 15
		f 3 -13 -14 -10
		f 3 -11 16 17
		f 3 -16 18 19
		f 3 20 21 22
		f 3 -20 -21 -17
		f 3 -18 23 24
		f 3 -23 25 26
		f 3 27 28 29
		f 3 -27 -28 -24
		f 3 -25 30 -1
		f 3 -30 31 32
		f 3 33 34 -4
		f 3 -33 -34 -31
		f 3 -35 35 36
		f 3 -32 37 38
		f 3 39 40 41
		f 3 -39 -40 -36
		f 3 -29 42 43
		f 3 -26 44 45
		f 3 46 47 48
		f 3 -46 -47 -43
		f 3 -22 49 50
		f 3 -19 51 52
		f 3 53 54 55
		f 3 -53 -54 -50
		f 3 -15 56 57
		f 3 -12 58 59
		f 3 60 61 62
		f 3 -60 -61 -57
		f 3 -8 63 64
		f 3 -5 65 66
		f 3 67 68 69
		f 3 -67 -68 -64
		f 3 -37 70 -66
		f 3 -42 71 72
		f 3 73 74 -69
		f 3 -73 -74 -71
		f 3 -44 75 -38
		f 3 -49 76 77
		f 3 78 79 -41
		f 3 -78 -79 -76
		f 3 -51 80 -45
		f 3 -56 81 82
		f 3 83 84 -48
		f 3 -83 -84 -81
		f 3 -58 85 -52
		f 3 -63 86 87
		f 3 88 89 -55
		f 3 -88 -89 -86
		f 3 -65 90 -59
		f 3 -70 91 92
		f 3 93 94 -62
		f 3 -93 -94 -91
		f 3 95 96 97
		f 3 98 -75 99
		f 3 100 -72 101
		f 3 -100 -101 -97
		f 3 102 103 -96
		f 3 104 -95 105
		f 3 106 -92 -99
		f 3 -106 -107 -104
		f 3 107 108 -103
		f 3 109 -90 110
		f 3 111 -87 -105
		f 3 -111 -112 -109
		f 3 112 113 -108
		f 3 114 -85 115
		f 3 116 -82 -110
		f 3 -116 -117 -114
		f 3 -98 117 -113
		f 3 -102 -80 118
		f 3 119 -77 -115
		f 3 -119 -120 -118;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "mountain1_46" -p "RockGeo";
	rename -uid "2DAA977B-49CE-D66A-C2AE-DFAE601FC282";
	setAttr ".t" -type "double3" 24.692119333778777 18.956196469599256 81.758761741162544 ;
createNode mesh -n "mountain1_46Shape" -p "mountain1_46";
	rename -uid "62CFD1C7-464B-FDA0-762A-56AA62DAEEEB";
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
	setAttr -s 42 ".vt[0:41]"  -5.5569727e-10 6.6683672e-09 -0.58796507
		 2.7279394e-09 0.20855996 -0.33745706 0.3180064 0.10332671 -0.5410248 1.7477885e-09 0.38534856 -0.19267403
		 0.32514933 0.44752994 -0.34188196 0.61184579 0.19880104 -0.32166609 0.1726813 -0.23767541 -0.47535083
		 0.46169487 -0.15001363 -0.30002725 0.31028333 -0.42706838 -0.26394254 -0.13379738 -0.1841563 -0.3683126
		 3.1932318e-10 -0.47675335 -0.29464948 -0.28017479 -0.38562754 -0.23833069 -0.21158117 0.068747006 -0.35996342
		 -0.46846321 -0.15221278 -0.3044256 -0.41250825 0.13403228 -0.21686822 -0.15008704 0.20657724 -0.15781069
		 -0.16087875 0.49513397 1.0343861e-09 -0.3010985 0.21876101 -1.3840189e-08 -0.24613315 0.33877322 0.20937316
		 -0.59643972 2.0375091e-09 -7.6406592e-10 -0.5086782 -0.36957651 -1.156157e-08 -0.55562407 -0.18053347 0.29210863
		 -0.17064804 -0.52520072 -1.6551754e-09 0.17039311 -0.52441615 -1.0860212e-09 1.3611232e-09 -0.38297549 0.19148749
		 0.3338415 -0.24255018 6.9204353e-09 0.54276943 -6.7770095e-10 -3.3885048e-10 0.24765544 -0.080468304 0.13020003
		 0.54090124 0.39298791 1.7364094e-08 0.19088985 0.58749866 5.9075029e-09 0.3165668 0.43571684 0.26928759
		 5.3478327e-10 0.51145375 0.3160955 -0.31606323 0.10269506 0.2053901 -0.25411391 -0.34975803 0.26719096
		 0.1834399 -0.25248355 0.19287992 0.36031693 0.11707396 0.23414792 9.582789e-10 1.1978486e-08 0.34830755
		 0.11188844 0.15400124 0.30800247 -0.10745908 0.14790475 0.29580954 0.13755703 -0.044695061 0.23402604
		 1.5500679e-09 -0.23200808 0.37539691 -0.23098241 -0.075050861 0.39297077;
	setAttr -s 120 ".ed[0:119]"  0 1 1 1 2 1 2 0 1 1 3 1 3 4 1 4 1 1 2 4 1
		 4 5 1 5 2 1 2 6 1 6 0 1 5 7 1 7 2 1 6 7 1 7 8 1 8 6 1 6 9 1 9 0 1 8 10 1 10 6 1 9 10 1
		 10 11 1 11 9 1 9 12 1 12 0 1 11 13 1 13 9 1 12 13 1 13 14 1 14 12 1 12 1 1 14 15 1
		 15 12 1 1 15 1 15 3 1 15 16 1 16 3 1 14 17 1 17 15 1 16 17 1 17 18 1 18 16 1 13 19 1
		 19 14 1 11 20 1 20 13 1 19 20 1 20 21 1 21 19 1 10 22 1 22 11 1 8 23 1 23 10 1 22 23 1
		 23 24 1 24 22 1 7 25 1 25 8 1 5 26 1 26 7 1 25 26 1 26 27 1 27 25 1 4 28 1 28 5 1
		 3 29 1 29 4 1 28 29 1 29 30 1 30 28 1 16 29 1 18 31 1 31 16 1 29 31 1 31 30 1 19 17 1
		 21 32 1 32 19 1 17 32 1 32 18 1 22 20 1 24 33 1 33 22 1 20 33 1 33 21 1 25 23 1 27 34 1
		 34 25 1 23 34 1 34 24 1 28 26 1 30 35 1 35 28 1 26 35 1 35 27 1 36 37 1 37 38 1 38 36 1
		 37 30 1 31 37 1 38 31 1 18 38 1 36 39 1 39 37 1 39 27 1 35 39 1 37 35 1 36 40 1 40 39 1
		 40 24 1 34 40 1 39 34 1 36 41 1 41 40 1 41 21 1 33 41 1 40 33 1 38 41 1 32 38 1 41 32 1;
	setAttr -s 80 -ch 240 ".fc[0:79]" -type "polyFaces" 
		f 3 0 1 2
		f 3 3 4 5
		f 3 6 7 8
		f 3 -6 -7 -2
		f 3 -3 9 10
		f 3 -9 11 12
		f 3 13 14 15
		f 3 -13 -14 -10
		f 3 -11 16 17
		f 3 -16 18 19
		f 3 20 21 22
		f 3 -20 -21 -17
		f 3 -18 23 24
		f 3 -23 25 26
		f 3 27 28 29
		f 3 -27 -28 -24
		f 3 -25 30 -1
		f 3 -30 31 32
		f 3 33 34 -4
		f 3 -33 -34 -31
		f 3 -35 35 36
		f 3 -32 37 38
		f 3 39 40 41
		f 3 -39 -40 -36
		f 3 -29 42 43
		f 3 -26 44 45
		f 3 46 47 48
		f 3 -46 -47 -43
		f 3 -22 49 50
		f 3 -19 51 52
		f 3 53 54 55
		f 3 -53 -54 -50
		f 3 -15 56 57
		f 3 -12 58 59
		f 3 60 61 62
		f 3 -60 -61 -57
		f 3 -8 63 64
		f 3 -5 65 66
		f 3 67 68 69
		f 3 -67 -68 -64
		f 3 -37 70 -66
		f 3 -42 71 72
		f 3 73 74 -69
		f 3 -73 -74 -71
		f 3 -44 75 -38
		f 3 -49 76 77
		f 3 78 79 -41
		f 3 -78 -79 -76
		f 3 -51 80 -45
		f 3 -56 81 82
		f 3 83 84 -48
		f 3 -83 -84 -81
		f 3 -58 85 -52
		f 3 -63 86 87
		f 3 88 89 -55
		f 3 -88 -89 -86
		f 3 -65 90 -59
		f 3 -70 91 92
		f 3 93 94 -62
		f 3 -93 -94 -91
		f 3 95 96 97
		f 3 98 -75 99
		f 3 100 -72 101
		f 3 -100 -101 -97
		f 3 102 103 -96
		f 3 104 -95 105
		f 3 106 -92 -99
		f 3 -106 -107 -104
		f 3 107 108 -103
		f 3 109 -90 110
		f 3 111 -87 -105
		f 3 -111 -112 -109
		f 3 112 113 -108
		f 3 114 -85 115
		f 3 116 -82 -110
		f 3 -116 -117 -114
		f 3 -98 117 -113
		f 3 -102 -80 118
		f 3 119 -77 -115
		f 3 -119 -120 -118;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "mountain1_47" -p "RockGeo";
	rename -uid "05AFBB58-4658-9D36-FE29-20AF81390055";
	setAttr ".t" -type "double3" 25.261836525163517 19.349518856957086 -73.179195654243756 ;
createNode mesh -n "mountain1_47Shape" -p "mountain1_47";
	rename -uid "CD73EBFF-4A23-35CD-C199-7D813E437B31";
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
	setAttr -s 42 ".vt[0:41]"  -5.5569727e-10 6.6683672e-09 -0.58796507
		 2.7279394e-09 0.20855996 -0.33745706 0.3180064 0.10332671 -0.5410248 1.7477885e-09 0.38534856 -0.19267403
		 0.32514933 0.44752994 -0.34188196 0.61184579 0.19880104 -0.32166609 0.1726813 -0.23767541 -0.47535083
		 0.46169487 -0.15001363 -0.30002725 0.31028333 -0.42706838 -0.26394254 -0.13379738 -0.1841563 -0.3683126
		 3.1932318e-10 -0.47675335 -0.29464948 -0.28017479 -0.38562754 -0.23833069 -0.21158117 0.068747006 -0.35996342
		 -0.46846321 -0.15221278 -0.3044256 -0.41250825 0.13403228 -0.21686822 -0.15008704 0.20657724 -0.15781069
		 -0.16087875 0.49513397 1.0343861e-09 -0.3010985 0.21876101 -1.3840189e-08 -0.24613315 0.33877322 0.20937316
		 -0.59643972 2.0375091e-09 -7.6406592e-10 -0.5086782 -0.36957651 -1.156157e-08 -0.55562407 -0.18053347 0.29210863
		 -0.17064804 -0.52520072 -1.6551754e-09 0.17039311 -0.52441615 -1.0860212e-09 1.3611232e-09 -0.38297549 0.19148749
		 0.3338415 -0.24255018 6.9204353e-09 0.54276943 -6.7770095e-10 -3.3885048e-10 0.24765544 -0.080468304 0.13020003
		 0.54090124 0.39298791 1.7364094e-08 0.19088985 0.58749866 5.9075029e-09 0.3165668 0.43571684 0.26928759
		 5.3478327e-10 0.51145375 0.3160955 -0.31606323 0.10269506 0.2053901 -0.25411391 -0.34975803 0.26719096
		 0.1834399 -0.25248355 0.19287992 0.36031693 0.11707396 0.23414792 9.582789e-10 1.1978486e-08 0.34830755
		 0.11188844 0.15400124 0.30800247 -0.10745908 0.14790475 0.29580954 0.13755703 -0.044695061 0.23402604
		 1.5500679e-09 -0.23200808 0.37539691 -0.23098241 -0.075050861 0.39297077;
	setAttr -s 120 ".ed[0:119]"  0 1 1 1 2 1 2 0 1 1 3 1 3 4 1 4 1 1 2 4 1
		 4 5 1 5 2 1 2 6 1 6 0 1 5 7 1 7 2 1 6 7 1 7 8 1 8 6 1 6 9 1 9 0 1 8 10 1 10 6 1 9 10 1
		 10 11 1 11 9 1 9 12 1 12 0 1 11 13 1 13 9 1 12 13 1 13 14 1 14 12 1 12 1 1 14 15 1
		 15 12 1 1 15 1 15 3 1 15 16 1 16 3 1 14 17 1 17 15 1 16 17 1 17 18 1 18 16 1 13 19 1
		 19 14 1 11 20 1 20 13 1 19 20 1 20 21 1 21 19 1 10 22 1 22 11 1 8 23 1 23 10 1 22 23 1
		 23 24 1 24 22 1 7 25 1 25 8 1 5 26 1 26 7 1 25 26 1 26 27 1 27 25 1 4 28 1 28 5 1
		 3 29 1 29 4 1 28 29 1 29 30 1 30 28 1 16 29 1 18 31 1 31 16 1 29 31 1 31 30 1 19 17 1
		 21 32 1 32 19 1 17 32 1 32 18 1 22 20 1 24 33 1 33 22 1 20 33 1 33 21 1 25 23 1 27 34 1
		 34 25 1 23 34 1 34 24 1 28 26 1 30 35 1 35 28 1 26 35 1 35 27 1 36 37 1 37 38 1 38 36 1
		 37 30 1 31 37 1 38 31 1 18 38 1 36 39 1 39 37 1 39 27 1 35 39 1 37 35 1 36 40 1 40 39 1
		 40 24 1 34 40 1 39 34 1 36 41 1 41 40 1 41 21 1 33 41 1 40 33 1 38 41 1 32 38 1 41 32 1;
	setAttr -s 80 -ch 240 ".fc[0:79]" -type "polyFaces" 
		f 3 0 1 2
		f 3 3 4 5
		f 3 6 7 8
		f 3 -6 -7 -2
		f 3 -3 9 10
		f 3 -9 11 12
		f 3 13 14 15
		f 3 -13 -14 -10
		f 3 -11 16 17
		f 3 -16 18 19
		f 3 20 21 22
		f 3 -20 -21 -17
		f 3 -18 23 24
		f 3 -23 25 26
		f 3 27 28 29
		f 3 -27 -28 -24
		f 3 -25 30 -1
		f 3 -30 31 32
		f 3 33 34 -4
		f 3 -33 -34 -31
		f 3 -35 35 36
		f 3 -32 37 38
		f 3 39 40 41
		f 3 -39 -40 -36
		f 3 -29 42 43
		f 3 -26 44 45
		f 3 46 47 48
		f 3 -46 -47 -43
		f 3 -22 49 50
		f 3 -19 51 52
		f 3 53 54 55
		f 3 -53 -54 -50
		f 3 -15 56 57
		f 3 -12 58 59
		f 3 60 61 62
		f 3 -60 -61 -57
		f 3 -8 63 64
		f 3 -5 65 66
		f 3 67 68 69
		f 3 -67 -68 -64
		f 3 -37 70 -66
		f 3 -42 71 72
		f 3 73 74 -69
		f 3 -73 -74 -71
		f 3 -44 75 -38
		f 3 -49 76 77
		f 3 78 79 -41
		f 3 -78 -79 -76
		f 3 -51 80 -45
		f 3 -56 81 82
		f 3 83 84 -48
		f 3 -83 -84 -81
		f 3 -58 85 -52
		f 3 -63 86 87
		f 3 88 89 -55
		f 3 -88 -89 -86
		f 3 -65 90 -59
		f 3 -70 91 92
		f 3 93 94 -62
		f 3 -93 -94 -91
		f 3 95 96 97
		f 3 98 -75 99
		f 3 100 -72 101
		f 3 -100 -101 -97
		f 3 102 103 -96
		f 3 104 -95 105
		f 3 106 -92 -99
		f 3 -106 -107 -104
		f 3 107 108 -103
		f 3 109 -90 110
		f 3 111 -87 -105
		f 3 -111 -112 -109
		f 3 112 113 -108
		f 3 114 -85 115
		f 3 116 -82 -110
		f 3 -116 -117 -114
		f 3 -98 117 -113
		f 3 -102 -80 118
		f 3 119 -77 -115
		f 3 -119 -120 -118;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "mountain1_48" -p "RockGeo";
	rename -uid "220769D8-4FF7-4687-5946-E797375A1353";
	setAttr ".t" -type "double3" 20.979947565827644 11.276290114964453 92.364618294453038 ;
createNode mesh -n "mountain1_48Shape" -p "mountain1_48";
	rename -uid "BC1016E3-4DF7-69E2-3A7B-68B9B71C56FC";
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
	setAttr -s 42 ".vt[0:41]"  -5.5569727e-10 6.6683672e-09 -0.58796507
		 2.7279394e-09 0.20855996 -0.33745706 0.3180064 0.10332671 -0.5410248 1.7477885e-09 0.38534856 -0.19267403
		 0.32514933 0.44752994 -0.34188196 0.61184579 0.19880104 -0.32166609 0.1726813 -0.23767541 -0.47535083
		 0.46169487 -0.15001363 -0.30002725 0.31028333 -0.42706838 -0.26394254 -0.13379738 -0.1841563 -0.3683126
		 3.1932318e-10 -0.47675335 -0.29464948 -0.28017479 -0.38562754 -0.23833069 -0.21158117 0.068747006 -0.35996342
		 -0.46846321 -0.15221278 -0.3044256 -0.41250825 0.13403228 -0.21686822 -0.15008704 0.20657724 -0.15781069
		 -0.16087875 0.49513397 1.0343861e-09 -0.3010985 0.21876101 -1.3840189e-08 -0.24613315 0.33877322 0.20937316
		 -0.59643972 2.0375091e-09 -7.6406592e-10 -0.5086782 -0.36957651 -1.156157e-08 -0.55562407 -0.18053347 0.29210863
		 -0.17064804 -0.52520072 -1.6551754e-09 0.17039311 -0.52441615 -1.0860212e-09 1.3611232e-09 -0.38297549 0.19148749
		 0.3338415 -0.24255018 6.9204353e-09 0.54276943 -6.7770095e-10 -3.3885048e-10 0.24765544 -0.080468304 0.13020003
		 0.54090124 0.39298791 1.7364094e-08 0.19088985 0.58749866 5.9075029e-09 0.3165668 0.43571684 0.26928759
		 5.3478327e-10 0.51145375 0.3160955 -0.31606323 0.10269506 0.2053901 -0.25411391 -0.34975803 0.26719096
		 0.1834399 -0.25248355 0.19287992 0.36031693 0.11707396 0.23414792 9.582789e-10 1.1978486e-08 0.34830755
		 0.11188844 0.15400124 0.30800247 -0.10745908 0.14790475 0.29580954 0.13755703 -0.044695061 0.23402604
		 1.5500679e-09 -0.23200808 0.37539691 -0.23098241 -0.075050861 0.39297077;
	setAttr -s 120 ".ed[0:119]"  0 1 1 1 2 1 2 0 1 1 3 1 3 4 1 4 1 1 2 4 1
		 4 5 1 5 2 1 2 6 1 6 0 1 5 7 1 7 2 1 6 7 1 7 8 1 8 6 1 6 9 1 9 0 1 8 10 1 10 6 1 9 10 1
		 10 11 1 11 9 1 9 12 1 12 0 1 11 13 1 13 9 1 12 13 1 13 14 1 14 12 1 12 1 1 14 15 1
		 15 12 1 1 15 1 15 3 1 15 16 1 16 3 1 14 17 1 17 15 1 16 17 1 17 18 1 18 16 1 13 19 1
		 19 14 1 11 20 1 20 13 1 19 20 1 20 21 1 21 19 1 10 22 1 22 11 1 8 23 1 23 10 1 22 23 1
		 23 24 1 24 22 1 7 25 1 25 8 1 5 26 1 26 7 1 25 26 1 26 27 1 27 25 1 4 28 1 28 5 1
		 3 29 1 29 4 1 28 29 1 29 30 1 30 28 1 16 29 1 18 31 1 31 16 1 29 31 1 31 30 1 19 17 1
		 21 32 1 32 19 1 17 32 1 32 18 1 22 20 1 24 33 1 33 22 1 20 33 1 33 21 1 25 23 1 27 34 1
		 34 25 1 23 34 1 34 24 1 28 26 1 30 35 1 35 28 1 26 35 1 35 27 1 36 37 1 37 38 1 38 36 1
		 37 30 1 31 37 1 38 31 1 18 38 1 36 39 1 39 37 1 39 27 1 35 39 1 37 35 1 36 40 1 40 39 1
		 40 24 1 34 40 1 39 34 1 36 41 1 41 40 1 41 21 1 33 41 1 40 33 1 38 41 1 32 38 1 41 32 1;
	setAttr -s 80 -ch 240 ".fc[0:79]" -type "polyFaces" 
		f 3 0 1 2
		f 3 3 4 5
		f 3 6 7 8
		f 3 -6 -7 -2
		f 3 -3 9 10
		f 3 -9 11 12
		f 3 13 14 15
		f 3 -13 -14 -10
		f 3 -11 16 17
		f 3 -16 18 19
		f 3 20 21 22
		f 3 -20 -21 -17
		f 3 -18 23 24
		f 3 -23 25 26
		f 3 27 28 29
		f 3 -27 -28 -24
		f 3 -25 30 -1
		f 3 -30 31 32
		f 3 33 34 -4
		f 3 -33 -34 -31
		f 3 -35 35 36
		f 3 -32 37 38
		f 3 39 40 41
		f 3 -39 -40 -36
		f 3 -29 42 43
		f 3 -26 44 45
		f 3 46 47 48
		f 3 -46 -47 -43
		f 3 -22 49 50
		f 3 -19 51 52
		f 3 53 54 55
		f 3 -53 -54 -50
		f 3 -15 56 57
		f 3 -12 58 59
		f 3 60 61 62
		f 3 -60 -61 -57
		f 3 -8 63 64
		f 3 -5 65 66
		f 3 67 68 69
		f 3 -67 -68 -64
		f 3 -37 70 -66
		f 3 -42 71 72
		f 3 73 74 -69
		f 3 -73 -74 -71
		f 3 -44 75 -38
		f 3 -49 76 77
		f 3 78 79 -41
		f 3 -78 -79 -76
		f 3 -51 80 -45
		f 3 -56 81 82
		f 3 83 84 -48
		f 3 -83 -84 -81
		f 3 -58 85 -52
		f 3 -63 86 87
		f 3 88 89 -55
		f 3 -88 -89 -86
		f 3 -65 90 -59
		f 3 -70 91 92
		f 3 93 94 -62
		f 3 -93 -94 -91
		f 3 95 96 97
		f 3 98 -75 99
		f 3 100 -72 101
		f 3 -100 -101 -97
		f 3 102 103 -96
		f 3 104 -95 105
		f 3 106 -92 -99
		f 3 -106 -107 -104
		f 3 107 108 -103
		f 3 109 -90 110
		f 3 111 -87 -105
		f 3 -111 -112 -109
		f 3 112 113 -108
		f 3 114 -85 115
		f 3 116 -82 -110
		f 3 -116 -117 -114
		f 3 -98 117 -113
		f 3 -102 -80 118
		f 3 119 -77 -115
		f 3 -119 -120 -118;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "mountain1_49" -p "RockGeo";
	rename -uid "0F9F92F2-413F-5382-66E2-3FBA100F2B72";
	setAttr ".t" -type "double3" 15.002753755196352 18.554345448526082 -0.70864600836557656 ;
createNode mesh -n "mountain1_49Shape" -p "mountain1_49";
	rename -uid "973946C7-4B09-24CB-C397-5DB1725AAFF9";
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
	setAttr -s 42 ".vt[0:41]"  -5.5569727e-10 6.6683672e-09 -0.58796507
		 2.7279394e-09 0.20855996 -0.33745706 0.3180064 0.10332671 -0.5410248 1.7477885e-09 0.38534856 -0.19267403
		 0.32514933 0.44752994 -0.34188196 0.61184579 0.19880104 -0.32166609 0.1726813 -0.23767541 -0.47535083
		 0.46169487 -0.15001363 -0.30002725 0.31028333 -0.42706838 -0.26394254 -0.13379738 -0.1841563 -0.3683126
		 3.1932318e-10 -0.47675335 -0.29464948 -0.28017479 -0.38562754 -0.23833069 -0.21158117 0.068747006 -0.35996342
		 -0.46846321 -0.15221278 -0.3044256 -0.41250825 0.13403228 -0.21686822 -0.15008704 0.20657724 -0.15781069
		 -0.16087875 0.49513397 1.0343861e-09 -0.3010985 0.21876101 -1.3840189e-08 -0.24613315 0.33877322 0.20937316
		 -0.59643972 2.0375091e-09 -7.6406592e-10 -0.5086782 -0.36957651 -1.156157e-08 -0.55562407 -0.18053347 0.29210863
		 -0.17064804 -0.52520072 -1.6551754e-09 0.17039311 -0.52441615 -1.0860212e-09 1.3611232e-09 -0.38297549 0.19148749
		 0.3338415 -0.24255018 6.9204353e-09 0.54276943 -6.7770095e-10 -3.3885048e-10 0.24765544 -0.080468304 0.13020003
		 0.54090124 0.39298791 1.7364094e-08 0.19088985 0.58749866 5.9075029e-09 0.3165668 0.43571684 0.26928759
		 5.3478327e-10 0.51145375 0.3160955 -0.31606323 0.10269506 0.2053901 -0.25411391 -0.34975803 0.26719096
		 0.1834399 -0.25248355 0.19287992 0.36031693 0.11707396 0.23414792 9.582789e-10 1.1978486e-08 0.34830755
		 0.11188844 0.15400124 0.30800247 -0.10745908 0.14790475 0.29580954 0.13755703 -0.044695061 0.23402604
		 1.5500679e-09 -0.23200808 0.37539691 -0.23098241 -0.075050861 0.39297077;
	setAttr -s 120 ".ed[0:119]"  0 1 1 1 2 1 2 0 1 1 3 1 3 4 1 4 1 1 2 4 1
		 4 5 1 5 2 1 2 6 1 6 0 1 5 7 1 7 2 1 6 7 1 7 8 1 8 6 1 6 9 1 9 0 1 8 10 1 10 6 1 9 10 1
		 10 11 1 11 9 1 9 12 1 12 0 1 11 13 1 13 9 1 12 13 1 13 14 1 14 12 1 12 1 1 14 15 1
		 15 12 1 1 15 1 15 3 1 15 16 1 16 3 1 14 17 1 17 15 1 16 17 1 17 18 1 18 16 1 13 19 1
		 19 14 1 11 20 1 20 13 1 19 20 1 20 21 1 21 19 1 10 22 1 22 11 1 8 23 1 23 10 1 22 23 1
		 23 24 1 24 22 1 7 25 1 25 8 1 5 26 1 26 7 1 25 26 1 26 27 1 27 25 1 4 28 1 28 5 1
		 3 29 1 29 4 1 28 29 1 29 30 1 30 28 1 16 29 1 18 31 1 31 16 1 29 31 1 31 30 1 19 17 1
		 21 32 1 32 19 1 17 32 1 32 18 1 22 20 1 24 33 1 33 22 1 20 33 1 33 21 1 25 23 1 27 34 1
		 34 25 1 23 34 1 34 24 1 28 26 1 30 35 1 35 28 1 26 35 1 35 27 1 36 37 1 37 38 1 38 36 1
		 37 30 1 31 37 1 38 31 1 18 38 1 36 39 1 39 37 1 39 27 1 35 39 1 37 35 1 36 40 1 40 39 1
		 40 24 1 34 40 1 39 34 1 36 41 1 41 40 1 41 21 1 33 41 1 40 33 1 38 41 1 32 38 1 41 32 1;
	setAttr -s 80 -ch 240 ".fc[0:79]" -type "polyFaces" 
		f 3 0 1 2
		f 3 3 4 5
		f 3 6 7 8
		f 3 -6 -7 -2
		f 3 -3 9 10
		f 3 -9 11 12
		f 3 13 14 15
		f 3 -13 -14 -10
		f 3 -11 16 17
		f 3 -16 18 19
		f 3 20 21 22
		f 3 -20 -21 -17
		f 3 -18 23 24
		f 3 -23 25 26
		f 3 27 28 29
		f 3 -27 -28 -24
		f 3 -25 30 -1
		f 3 -30 31 32
		f 3 33 34 -4
		f 3 -33 -34 -31
		f 3 -35 35 36
		f 3 -32 37 38
		f 3 39 40 41
		f 3 -39 -40 -36
		f 3 -29 42 43
		f 3 -26 44 45
		f 3 46 47 48
		f 3 -46 -47 -43
		f 3 -22 49 50
		f 3 -19 51 52
		f 3 53 54 55
		f 3 -53 -54 -50
		f 3 -15 56 57
		f 3 -12 58 59
		f 3 60 61 62
		f 3 -60 -61 -57
		f 3 -8 63 64
		f 3 -5 65 66
		f 3 67 68 69
		f 3 -67 -68 -64
		f 3 -37 70 -66
		f 3 -42 71 72
		f 3 73 74 -69
		f 3 -73 -74 -71
		f 3 -44 75 -38
		f 3 -49 76 77
		f 3 78 79 -41
		f 3 -78 -79 -76
		f 3 -51 80 -45
		f 3 -56 81 82
		f 3 83 84 -48
		f 3 -83 -84 -81
		f 3 -58 85 -52
		f 3 -63 86 87
		f 3 88 89 -55
		f 3 -88 -89 -86
		f 3 -65 90 -59
		f 3 -70 91 92
		f 3 93 94 -62
		f 3 -93 -94 -91
		f 3 95 96 97
		f 3 98 -75 99
		f 3 100 -72 101
		f 3 -100 -101 -97
		f 3 102 103 -96
		f 3 104 -95 105
		f 3 106 -92 -99
		f 3 -106 -107 -104
		f 3 107 108 -103
		f 3 109 -90 110
		f 3 111 -87 -105
		f 3 -111 -112 -109
		f 3 112 113 -108
		f 3 114 -85 115
		f 3 116 -82 -110
		f 3 -116 -117 -114
		f 3 -98 117 -113
		f 3 -102 -80 118
		f 3 119 -77 -115
		f 3 -119 -120 -118;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "mountain1_50" -p "RockGeo";
	rename -uid "647588FA-4E87-2FE3-C21C-4C9AD25AC406";
	setAttr ".t" -type "double3" 7.5792817510470911 -3.4225520386450725 -62.943794468289838 ;
createNode mesh -n "mountain1_50Shape" -p "mountain1_50";
	rename -uid "C608FAEA-4079-B316-1A72-E0AC1A6A20C8";
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
	setAttr -s 42 ".vt[0:41]"  -5.5569727e-10 6.6683672e-09 -0.58796507
		 2.7279394e-09 0.20855996 -0.33745706 0.3180064 0.10332671 -0.5410248 1.7477885e-09 0.38534856 -0.19267403
		 0.32514933 0.44752994 -0.34188196 0.61184579 0.19880104 -0.32166609 0.1726813 -0.23767541 -0.47535083
		 0.46169487 -0.15001363 -0.30002725 0.31028333 -0.42706838 -0.26394254 -0.13379738 -0.1841563 -0.3683126
		 3.1932318e-10 -0.47675335 -0.29464948 -0.28017479 -0.38562754 -0.23833069 -0.21158117 0.068747006 -0.35996342
		 -0.46846321 -0.15221278 -0.3044256 -0.41250825 0.13403228 -0.21686822 -0.15008704 0.20657724 -0.15781069
		 -0.16087875 0.49513397 1.0343861e-09 -0.3010985 0.21876101 -1.3840189e-08 -0.24613315 0.33877322 0.20937316
		 -0.59643972 2.0375091e-09 -7.6406592e-10 -0.5086782 -0.36957651 -1.156157e-08 -0.55562407 -0.18053347 0.29210863
		 -0.17064804 -0.52520072 -1.6551754e-09 0.17039311 -0.52441615 -1.0860212e-09 1.3611232e-09 -0.38297549 0.19148749
		 0.3338415 -0.24255018 6.9204353e-09 0.54276943 -6.7770095e-10 -3.3885048e-10 0.24765544 -0.080468304 0.13020003
		 0.54090124 0.39298791 1.7364094e-08 0.19088985 0.58749866 5.9075029e-09 0.3165668 0.43571684 0.26928759
		 5.3478327e-10 0.51145375 0.3160955 -0.31606323 0.10269506 0.2053901 -0.25411391 -0.34975803 0.26719096
		 0.1834399 -0.25248355 0.19287992 0.36031693 0.11707396 0.23414792 9.582789e-10 1.1978486e-08 0.34830755
		 0.11188844 0.15400124 0.30800247 -0.10745908 0.14790475 0.29580954 0.13755703 -0.044695061 0.23402604
		 1.5500679e-09 -0.23200808 0.37539691 -0.23098241 -0.075050861 0.39297077;
	setAttr -s 120 ".ed[0:119]"  0 1 1 1 2 1 2 0 1 1 3 1 3 4 1 4 1 1 2 4 1
		 4 5 1 5 2 1 2 6 1 6 0 1 5 7 1 7 2 1 6 7 1 7 8 1 8 6 1 6 9 1 9 0 1 8 10 1 10 6 1 9 10 1
		 10 11 1 11 9 1 9 12 1 12 0 1 11 13 1 13 9 1 12 13 1 13 14 1 14 12 1 12 1 1 14 15 1
		 15 12 1 1 15 1 15 3 1 15 16 1 16 3 1 14 17 1 17 15 1 16 17 1 17 18 1 18 16 1 13 19 1
		 19 14 1 11 20 1 20 13 1 19 20 1 20 21 1 21 19 1 10 22 1 22 11 1 8 23 1 23 10 1 22 23 1
		 23 24 1 24 22 1 7 25 1 25 8 1 5 26 1 26 7 1 25 26 1 26 27 1 27 25 1 4 28 1 28 5 1
		 3 29 1 29 4 1 28 29 1 29 30 1 30 28 1 16 29 1 18 31 1 31 16 1 29 31 1 31 30 1 19 17 1
		 21 32 1 32 19 1 17 32 1 32 18 1 22 20 1 24 33 1 33 22 1 20 33 1 33 21 1 25 23 1 27 34 1
		 34 25 1 23 34 1 34 24 1 28 26 1 30 35 1 35 28 1 26 35 1 35 27 1 36 37 1 37 38 1 38 36 1
		 37 30 1 31 37 1 38 31 1 18 38 1 36 39 1 39 37 1 39 27 1 35 39 1 37 35 1 36 40 1 40 39 1
		 40 24 1 34 40 1 39 34 1 36 41 1 41 40 1 41 21 1 33 41 1 40 33 1 38 41 1 32 38 1 41 32 1;
	setAttr -s 80 -ch 240 ".fc[0:79]" -type "polyFaces" 
		f 3 0 1 2
		f 3 3 4 5
		f 3 6 7 8
		f 3 -6 -7 -2
		f 3 -3 9 10
		f 3 -9 11 12
		f 3 13 14 15
		f 3 -13 -14 -10
		f 3 -11 16 17
		f 3 -16 18 19
		f 3 20 21 22
		f 3 -20 -21 -17
		f 3 -18 23 24
		f 3 -23 25 26
		f 3 27 28 29
		f 3 -27 -28 -24
		f 3 -25 30 -1
		f 3 -30 31 32
		f 3 33 34 -4
		f 3 -33 -34 -31
		f 3 -35 35 36
		f 3 -32 37 38
		f 3 39 40 41
		f 3 -39 -40 -36
		f 3 -29 42 43
		f 3 -26 44 45
		f 3 46 47 48
		f 3 -46 -47 -43
		f 3 -22 49 50
		f 3 -19 51 52
		f 3 53 54 55
		f 3 -53 -54 -50
		f 3 -15 56 57
		f 3 -12 58 59
		f 3 60 61 62
		f 3 -60 -61 -57
		f 3 -8 63 64
		f 3 -5 65 66
		f 3 67 68 69
		f 3 -67 -68 -64
		f 3 -37 70 -66
		f 3 -42 71 72
		f 3 73 74 -69
		f 3 -73 -74 -71
		f 3 -44 75 -38
		f 3 -49 76 77
		f 3 78 79 -41
		f 3 -78 -79 -76
		f 3 -51 80 -45
		f 3 -56 81 82
		f 3 83 84 -48
		f 3 -83 -84 -81
		f 3 -58 85 -52
		f 3 -63 86 87
		f 3 88 89 -55
		f 3 -88 -89 -86
		f 3 -65 90 -59
		f 3 -70 91 92
		f 3 93 94 -62
		f 3 -93 -94 -91
		f 3 95 96 97
		f 3 98 -75 99
		f 3 100 -72 101
		f 3 -100 -101 -97
		f 3 102 103 -96
		f 3 104 -95 105
		f 3 106 -92 -99
		f 3 -106 -107 -104
		f 3 107 108 -103
		f 3 109 -90 110
		f 3 111 -87 -105
		f 3 -111 -112 -109
		f 3 112 113 -108
		f 3 114 -85 115
		f 3 116 -82 -110
		f 3 -116 -117 -114
		f 3 -98 117 -113
		f 3 -102 -80 118
		f 3 119 -77 -115
		f 3 -119 -120 -118;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "729E1A6C-4B07-ECFE-CFCC-98932ECC9FE6";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "18FA3F39-47BE-E06B-3A01-07B8CAC8C947";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "BDE0E86E-4D14-8EDD-2DB6-2EB307D9CB33";
createNode displayLayerManager -n "layerManager";
	rename -uid "B343EFD1-4885-5D49-ADBA-1383069559BA";
createNode displayLayer -n "defaultLayer";
	rename -uid "86D25C52-42B3-11B0-6395-51BBDA90A9D5";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "B041F7A9-4B63-853C-FE2E-239D9DB1BD37";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "84A90E9F-45F6-00C8-D89F-53BCC61DE014";
	setAttr ".g" yes;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "5C56E2FF-48B9-2C93-0E0A-62952123E76E";
	setAttr ".version" -type "string" "5.3.0";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "C0B1219A-4E51-2BFB-8285-96B88A80DB8A";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "4EF6B05E-46DA-2F93-0144-519631B58658";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "3F1DE629-42C3-1887-E26E-BE8B03B8AC4B";
	setAttr ".output_mode" 0;
	setAttr ".ai_translator" -type "string" "maya";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "299F1A2E-47CC-76A5-E135-1791DA191C8A";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n"
		+ "            -shadows 0\n            -captureSequenceNumber -1\n            -width 1319\n            -height 518\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n"
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
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n"
		+ "\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1319\\n    -height 517\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1319\\n    -height 517\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "9C750FF1-4F84-20A7-B417-EDA7FE45FC70";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 16 -ast 0 -aet 200 ";
	setAttr ".st" 6;
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
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 5 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :standardSurface1;
	setAttr ".bc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
	setAttr ".sr" 0.5;
select -ne :initialShadingGroup;
	setAttr -s 51 ".dsm";
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
connectAttr ":time1.o" "hunte__dev__NewRockGeo__1_01.inTime";
connectAttr "hunte__dev__NewRockGeo__1_01.outputObjects[0].outputObjectTranslate" "RockGeo.t"
		;
connectAttr "hunte__dev__NewRockGeo__1_01.outputObjects[0].outputObjectRotate" "RockGeo.r"
		;
connectAttr "hunte__dev__NewRockGeo__1_01.outputObjects[0].outputObjectScale" "RockGeo.s"
		;
connectAttr "hunte__dev__NewRockGeo__1_01.outputObjects[0].outputGeos[0].outputParts[0].outputPartMeshData" "mountain1_0Shape.i"
		;
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "mountain1_0Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "mountain1_1Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "mountain1_2Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "mountain1_3Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "mountain1_4Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "mountain1_5Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "mountain1_6Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "mountain1_7Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "mountain1_8Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "mountain1_9Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "mountain1_10Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "mountain1_11Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "mountain1_12Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "mountain1_13Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "mountain1_14Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "mountain1_15Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "mountain1_16Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "mountain1_17Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "mountain1_18Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "mountain1_19Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "mountain1_20Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "mountain1_21Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "mountain1_22Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "mountain1_23Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "mountain1_24Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "mountain1_25Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "mountain1_26Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "mountain1_27Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "mountain1_28Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "mountain1_29Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "mountain1_30Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "mountain1_31Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "mountain1_32Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "mountain1_33Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "mountain1_34Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "mountain1_35Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "mountain1_36Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "mountain1_37Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "mountain1_38Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "mountain1_39Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "mountain1_40Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "mountain1_41Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "mountain1_42Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "mountain1_43Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "mountain1_44Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "mountain1_45Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "mountain1_46Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "mountain1_47Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "mountain1_48Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "mountain1_49Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "mountain1_50Shape.iog" ":initialShadingGroup.dsm" -na;
// End of code play 2.0003.ma
