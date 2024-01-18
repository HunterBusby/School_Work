//Maya ASCII 2024 scene
//Name: Simple boxman.ma
//Last modified: Wed, Jan 17, 2024 05:46:53 PM
//Codeset: 1252
requires maya "2024";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "5.3.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2024";
fileInfo "version" "2024";
fileInfo "cutIdentifier" "202302170737-4500172811";
fileInfo "osv" "Windows 11 Home v2009 (Build: 22621)";
fileInfo "UUID" "6C9BA706-47B3-F70B-2B15-D994712BE769";
createNode transform -s -n "persp";
	rename -uid "E1263623-407A-D287-52AD-38AC5A2C7DB5";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -5.4246970868853737 19.628797426848671 -91.275932193569517 ;
	setAttr ".r" -type "double3" -365.73835272967028 901.39999999987754 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "4203EAA7-4B04-65CE-9161-FBBC7835DD46";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 94.849798419227099;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0 10.095233725895133 -0.22706086852292495 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "82C3A8C1-4B38-00A2-A295-94866BC2192B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.088967651922356644 1000.1 -15.22648314830584 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "3EC8B7F2-448A-F6C3-18A3-60A69D4A6076";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 11.833127592612726;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "CD9E9521-41D6-D3C9-BC64-369D92A04603";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.76407927608287152 8.8039167039839867 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "9B2C9446-4D70-3343-CEDC-50BDCA7A0721";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 43.860941238255762;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "A345C771-4CF8-9EFA-2833-63912343AF21";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "F151BE4E-43D1-0A84-CF95-D48F8168CBB1";
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
createNode transform -n "Hip";
	rename -uid "66C350A7-4B1B-B16F-D9BD-DC9B9A87B14D";
	setAttr ".rp" -type "double3" 0 16.287599563598633 -0.81953857338803671 ;
	setAttr ".sp" -type "double3" 0 16.287599563598633 -0.81953857338803671 ;
createNode mesh -n "HipShape" -p "Hip";
	rename -uid "C4352FF6-43A4-8577-4A25-B3A516A587DA";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "RThigh" -p "Hip";
	rename -uid "965831D8-4816-8534-AD2B-7E95EBA870E3";
	setAttr ".rp" -type "double3" 0 14.041473388671875 -2.279559105131264 ;
	setAttr ".sp" -type "double3" 0 14.041473388671875 -2.279559105131264 ;
createNode mesh -n "RThighShape" -p "RThigh";
	rename -uid "B363A25A-4023-1CC9-1C38-F88FC831DCA1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0 7.5802078 -2.2795591 0 
		7.5802078 -2.2795591 0 13.801447 -2.2795591 0 13.801447 -2.2795591 0 13.801447 -2.2795591 
		0 13.801447 -2.2795591 0 7.5802078 -2.2795591 0 7.5802078 -2.2795591;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "RShin" -p "RThigh";
	rename -uid "D494266E-439B-246B-5B1E-3EB7A6272AC0";
	setAttr ".rp" -type "double3" 0 6.9617390632629395 -2.279559105131264 ;
	setAttr ".sp" -type "double3" 0 6.9617390632629395 -2.279559105131264 ;
createNode mesh -n "RShinShape" -p "RShin";
	rename -uid "A1C03794-4EE2-50D6-EDCC-9A804866E29B";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Rfoot" -p "RShin";
	rename -uid "5FAE8E67-4621-641F-1CDF-25A9A9365D41";
	setAttr ".rp" -type "double3" -0.024035811960051834 0.5 -2.261562063826057 ;
	setAttr ".sp" -type "double3" -0.024035811960051834 0.5 -2.261562063826057 ;
createNode mesh -n "RfootShape" -p "Rfoot";
	rename -uid "FDE19890-4AF8-5577-2C5B-8D95D1112499";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "LowTorso" -p "Hip";
	rename -uid "8A2A53F6-445D-0CB7-5E03-0BBA602462B6";
	setAttr ".rp" -type "double3" 0 16.331148147583008 -0.81953857338803671 ;
	setAttr ".sp" -type "double3" 0 16.331148147583008 -0.81953857338803671 ;
createNode mesh -n "LowTorsoShape" -p "LowTorso";
	rename -uid "93C5923A-40D3-BD3E-DE66-B2A4B0D4CE15";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.29336575 16.831148 0.91676497 
		0.29336575 16.831148 0.91676497 -0.29336575 19.364399 0.91676497 0.29336575 19.364399 
		0.91676497 -0.29336575 19.364399 -2.5558422 0.29336575 19.364399 -2.5558422 -0.29336575 
		16.831148 -2.5558422 0.29336575 16.831148 -2.5558422;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "UpTorso" -p "LowTorso";
	rename -uid "7A90D9DE-4E80-D11B-C106-60972B1A93CC";
	setAttr ".rp" -type "double3" 0 19.962001800537109 -0.81953857338803671 ;
	setAttr ".sp" -type "double3" 0 19.962001800537109 -0.81953857338803671 ;
createNode mesh -n "UpTorsoShape" -p "UpTorso";
	rename -uid "D2306DEA-471F-AB90-6B80-BD9F6A677D2C";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.29336575 20.462002 0.91676497 
		0.29336575 20.462002 0.91676497 -0.29336575 21.708128 0.91676497 0.29336575 21.708128 
		0.91676497 -0.29336575 21.708128 -2.5558422 0.29336575 21.708128 -2.5558422 -0.29336575 
		20.462002 -2.5558422 0.29336575 20.462002 -2.5558422;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "RBicep" -p "UpTorso";
	rename -uid "C4FE32C5-4531-ED7A-8A3E-2DA099503821";
	setAttr ".rp" -type "double3" 0 21.418044558063187 -3.2046875953674316 ;
	setAttr ".sp" -type "double3" 0 21.418044558063187 -3.2046875953674316 ;
createNode mesh -n "RBicepShape" -p "RBicep";
	rename -uid "750EA247-4256-8F6D-62B7-3E8AEEE37EFA";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "RForearm" -p "RBicep";
	rename -uid "6601BB77-4AB2-F903-51F9-9C8F9868990A";
	setAttr ".rp" -type "double3" 0 21.418044558063187 -8.9760417938232422 ;
	setAttr ".sp" -type "double3" 0 21.418044558063187 -8.9760417938232422 ;
createNode mesh -n "RForearmShape" -p "RForearm";
	rename -uid "F86F7C62-45CA-FE53-EE29-DAAF718CFE38";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0 21.418045 -9.4760418 0 
		21.418045 -9.4760418 0 21.418045 -9.4760418 0 21.418045 -9.4760418 0 21.418045 -12.680573 
		0 21.418045 -12.680573 0 21.418045 -12.680573 0 21.418045 -12.680573;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "RPalm" -p "RForearm";
	rename -uid "43E6C907-4100-E49A-AD1D-0C8B69C66FB4";
	setAttr ".rp" -type "double3" 0 21.464876844696931 -13.180572509765625 ;
	setAttr ".sp" -type "double3" 0 21.464876844696931 -13.180572509765625 ;
createNode mesh -n "RPalmShape" -p "RPalm";
	rename -uid "C758B6B4-4EC2-F9B8-679A-979BE5228BA1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.44999998807907104 0.625 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 1;
createNode transform -n "RThumbMeta" -p "RPalm";
	rename -uid "08151C9E-4399-1632-CC90-81BCE9CFF35D";
	setAttr ".rp" -type "double3" -0.093656251936168999 21.423943328828578 -13.663564979131021 ;
	setAttr ".sp" -type "double3" -0.093656251936168999 21.423943328828578 -13.663564979131021 ;
createNode mesh -n "RThumbMetaShape" -p "RThumbMeta";
	rename -uid "8F77AAFE-4C32-BAF3-1774-E7B836AE1748";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".pv" -type "double2" 0.25 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.40832871 21.501013 -13.840218 
		-0.34646666 21.501013 -14.486912 0.40832871 21.346874 -13.840218 -0.34646666 21.346874 
		-14.486912 -0.69044948 21.148289 -13.730271 -1.4282038 21.148289 -14.073313 -0.69044948 
		21.699596 -13.730271 -1.4282038 21.699596 -14.073313;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "RThumbProximal" -p "RThumbMeta";
	rename -uid "0680FDD4-48ED-8228-8986-309E70044332";
	setAttr ".rp" -type "double3" -1.0856536626815796 21.423943328828578 -14.426996231079102 ;
	setAttr ".sp" -type "double3" -1.0856536626815796 21.423943328828578 -14.426996231079102 ;
createNode mesh -n "RThumbProximalShape" -p "RThumbProximal";
	rename -uid "66671519-4DD1-140F-61C2-1ABD344D0E28";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape2" -p "RThumbProximal";
	rename -uid "F2E443E4-4DF5-A4B6-912A-61A7CBDE453E";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.72362268 21.739376 -14.828222 
		-1.4476846 21.739376 -15.02577 -0.72362268 21.108511 -14.828222 -1.4476846 21.108511 
		-15.02577 -1.0621136 21.108511 -14.301033 -1.7861757 21.108511 -14.498581 -1.0621136 
		21.739376 -14.301033 -1.7861757 21.739376 -14.498581;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "RThumbDistal" -p "RThumbProximal";
	rename -uid "64C240BE-4352-ADEA-825B-4BBEB71855F9";
	setAttr ".rp" -type "double3" -1.4508824348449707 21.239376068115234 -15.000690460205078 ;
	setAttr ".sp" -type "double3" -1.4508824348449707 21.239376068115234 -15.000690460205078 ;
createNode mesh -n "RThumbDistalShape" -p "RThumbDistal";
	rename -uid "52CC5C7E-4C36-2737-DE2A-1493FED22E10";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape1" -p "RThumbDistal";
	rename -uid "B3259881-4E69-2603-4A3C-B7BD3A947B57";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -1.0851341 21.739376 -15.46826 
		-1.8166308 21.739376 -15.533121 -1.0851341 21.108511 -15.46826 -1.8166308 21.108511 
		-15.533121 -1.1591514 21.108511 -14.774666 -1.8906481 21.108511 -14.839527 -1.1591514 
		21.739376 -14.774666 -1.8906481 21.739376 -14.839527;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "RIndexProximal" -p "RPalm";
	rename -uid "66F01F5E-406C-5A5D-8887-AF8C2662704A";
	setAttr ".rp" -type "double3" -0.78089323395462773 21.423943328828578 -15.045870780944824 ;
	setAttr ".sp" -type "double3" -0.78089323395462773 21.423943328828578 -15.045870780944824 ;
createNode mesh -n "RIndexProximalShape" -p "RIndexProximal";
	rename -uid "73D15326-42E9-0795-67D4-B286742E8B09";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "RIndexIntermidiate" -p "RIndexProximal";
	rename -uid "E5EFA781-482B-2DC1-11CA-639BA443FC43";
	setAttr ".rp" -type "double3" -0.78089323395462773 21.423943328828578 -15.601426124572754 ;
	setAttr ".sp" -type "double3" -0.78089323395462773 21.423943328828578 -15.601426124572754 ;
createNode mesh -n "RIndexIntermidiateShape" -p "RIndexIntermidiate";
	rename -uid "34F5D565-4D9F-16A3-C077-628293A882EB";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.45851165 21.739376 -16.188053 
		-1.1032748 21.739376 -16.188053 -0.45851165 21.108511 -16.188053 -1.1032748 21.108511 
		-16.188053 -0.45851165 21.108511 -15.772221 -1.1032748 21.108511 -15.772221 -0.45851165 
		21.739376 -15.772221 -1.1032748 21.739376 -15.772221;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "RIndexDistal" -p "RIndexIntermidiate";
	rename -uid "01159DE6-4B8A-69E6-F931-6DB3BEBA78DE";
	setAttr ".rp" -type "double3" -0.78089323395462773 21.423943328828578 -16.272220611572266 ;
	setAttr ".sp" -type "double3" -0.78089323395462773 21.423943328828578 -16.272220611572266 ;
createNode mesh -n "RIndexDistalShape" -p "RIndexDistal";
	rename -uid "6C63BCDF-4052-8D4F-DB22-A4BD62C99938";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.45851165 21.739376 -16.845453 
		-1.1032748 21.739376 -16.845453 -0.45851165 21.108511 -16.845453 -1.1032748 21.108511 
		-16.845453 -0.45851165 21.108511 -16.321386 -1.1032748 21.108511 -16.321386 -0.45851165 
		21.739376 -16.321386 -1.1032748 21.739376 -16.321386;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "RMiddleProximal" -p "RPalm";
	rename -uid "F1F90531-460E-88EF-CC1E-DBA17E120C75";
	setAttr ".rp" -type "double3" -0.24318427294061251 21.423943328828578 -15.130582809448242 ;
	setAttr ".sp" -type "double3" -0.24318427294061251 21.423943328828578 -15.130582809448242 ;
createNode mesh -n "RMiddleProximalShape" -p "RMiddleProximal";
	rename -uid "4CFB5E89-4D9B-3BC2-116B-E2A3BFD9A0C1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.079197302 21.739376 -15.635279 
		-0.56556582 21.739376 -15.635279 0.079197302 21.108511 -15.635279 -0.56556582 21.108511 
		-15.635279 0.079197302 21.108511 -15.368612 -0.56556582 21.108511 -15.368612 0.079197302 
		21.739376 -15.368612 -0.56556582 21.739376 -15.368612;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "RmiddleIntermidiate" -p "RMiddleProximal";
	rename -uid "CDBEA36B-4908-B870-F127-CAAE10365A5A";
	setAttr ".rp" -type "double3" -0.24318427294061251 21.423943328828578 -15.868612289428711 ;
	setAttr ".sp" -type "double3" -0.24318427294061251 21.423943328828578 -15.868612289428711 ;
createNode mesh -n "RmiddleIntermidiateShape" -p "RmiddleIntermidiate";
	rename -uid "61E9B902-4E90-F1FD-6C08-8899C8098925";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.079197302 21.739376 -16.425415 
		-0.56556582 21.739376 -16.425415 0.079197302 21.108511 -16.425415 -0.56556582 21.108511 
		-16.425415 0.079197302 21.108511 -16.198576 -0.56556582 21.108511 -16.198576 0.079197302 
		21.739376 -16.198576 -0.56556582 21.739376 -16.198576;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "RMiddleDistal" -p "RmiddleIntermidiate";
	rename -uid "AA47DEE8-4DE9-1095-BED6-84875D2FD279";
	setAttr ".rp" -type "double3" -0.24318427294061251 21.423943328828578 -16.698575973510742 ;
	setAttr ".sp" -type "double3" -0.24318427294061251 21.423943328828578 -16.698575973510742 ;
createNode mesh -n "RMiddleDistalShape" -p "RMiddleDistal";
	rename -uid "98EED8A9-4F5D-272E-9428-C49E76500C82";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.079197302 21.739376 -17.267641 
		-0.56556582 21.739376 -17.267641 0.079197302 21.108511 -17.267641 -0.56556582 21.108511 
		-17.267641 0.079197302 21.108511 -16.743574 -0.56556582 21.108511 -16.743574 0.079197302 
		21.739376 -16.743574 -0.56556582 21.739376 -16.743574;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "RRingProximal" -p "RPalm";
	rename -uid "39D77517-4CC0-02DB-108C-A285CF79AC16";
	setAttr ".rp" -type "double3" 0.24828949625430657 21.423943328828578 -15.038302421569824 ;
	setAttr ".sp" -type "double3" 0.24828949625430657 21.423943328828578 -15.038302421569824 ;
createNode mesh -n "RRingProximalShape" -p "RRingProximal";
	rename -uid "625367C5-4AF2-C018-EFE8-7DA0E7B9FF50";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".pv" -type "double2" 0.5 0.625 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.57067108 21.739376 -15.538302 
		-0.074092075 21.739376 -15.538302 0.57067108 21.108511 -15.538302 -0.074092075 21.108511 
		-15.538302 0.57067108 21.108511 -15.159024 -0.074092075 21.108511 -15.159024 0.57067108 
		21.739376 -15.159024 -0.074092075 21.739376 -15.159024;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "RRingIntermidiate" -p "RRingProximal";
	rename -uid "AF00750A-4493-B9E6-0923-DFBFB24E014E";
	setAttr ".rp" -type "double3" 0.24828949625430657 21.423943328828578 -15.659024238586426 ;
	setAttr ".sp" -type "double3" 0.24828949625430657 21.423943328828578 -15.659024238586426 ;
createNode mesh -n "RRingIntermidiateShape" -p "RRingIntermidiate";
	rename -uid "281C0CA0-4FBA-4FA2-C586-52A6A55B2300";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.57067108 21.739376 -16.210722 
		-0.074092075 21.739376 -16.210722 0.57067108 21.108511 -16.210722 -0.074092075 21.108511 
		-16.210722 0.57067108 21.108511 -15.883518 -0.074092075 21.108511 -15.883518 0.57067108 
		21.739376 -15.883518 -0.074092075 21.739376 -15.883518;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "RRingDistal" -p "RRingIntermidiate";
	rename -uid "D1389BED-4E91-6A2E-2A0A-70B48031F2AD";
	setAttr ".rp" -type "double3" 0.24828949625430657 21.423943328828578 -16.383518218994141 ;
	setAttr ".sp" -type "double3" 0.24828949625430657 21.423943328828578 -16.383518218994141 ;
createNode mesh -n "RRingDistalShape" -p "RRingDistal";
	rename -uid "4730CED2-4866-1379-93FE-889627362364";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.57067108 21.739376 -16.946655 
		-0.074092075 21.739376 -16.946655 0.57067108 21.108511 -16.946655 -0.074092075 21.108511 
		-16.946655 0.57067108 21.108511 -16.422588 -0.074092075 21.108511 -16.422588 0.57067108 
		21.739376 -16.422588 -0.074092075 21.739376 -16.422588;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "RPinkProximal" -p "RPalm";
	rename -uid "BDE22793-4E21-DD3E-7245-94AC6CF6513B";
	setAttr ".rp" -type "double3" 0.74508221136922459 21.423943328828578 -14.785260288656524 ;
	setAttr ".sp" -type "double3" 0.74508221136922459 21.423943328828578 -14.785260288656524 ;
createNode mesh -n "RPinkProximalShape" -p "RPinkProximal";
	rename -uid "1E22203F-4603-5DCA-0437-89B0E2B5B7F4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".pv" -type "double2" 0.5 0.625 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  1.0674638 21.739376 -15.454515 
		0.42270064 21.739376 -15.454515 1.0674638 21.108511 -15.454515 0.42270064 21.108511 
		-15.454515 1.0674638 21.108511 -14.932326 0.42270064 21.108511 -14.932326 1.0674638 
		21.739376 -14.932326 0.42270064 21.739376 -14.932326;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "RPinkIntermidiate" -p "RPinkProximal";
	rename -uid "8A4FECC3-410A-5C03-E881-AF91AB688BA9";
	setAttr ".rp" -type "double3" 0.74508221136922459 21.423943328828578 -15.432326316833496 ;
	setAttr ".sp" -type "double3" 0.74508221136922459 21.423943328828578 -15.432326316833496 ;
createNode mesh -n "RPinkIntermidiateShape" -p "RPinkIntermidiate";
	rename -uid "4F5F03BD-48C5-A4EE-1C8C-95BA63E91027";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".pv" -type "double2" 0.5 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  1.0674638 21.739376 -15.989681 
		0.42270064 21.739376 -15.989681 1.0674638 21.108511 -15.989681 0.42270064 21.108511 
		-15.989681 1.0674638 21.108511 -15.617387 0.42270064 21.108511 -15.617387 1.0674638 
		21.739376 -15.617387 0.42270064 21.739376 -15.617387;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "RPinkDistal" -p "RPinkIntermidiate";
	rename -uid "C1FA6348-4B97-8587-FDA2-ADB41B21F085";
	setAttr ".rp" -type "double3" 0.74508221136922459 21.423943328828578 -16.117385864257812 ;
	setAttr ".sp" -type "double3" 0.74508221136922459 21.423943328828578 -16.117385864257812 ;
createNode mesh -n "RPinkDistalShape" -p "RPinkDistal";
	rename -uid "252835A9-483C-997F-E11C-8CAB88BD34A5";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  1.0674638 21.739376 -16.686451 
		0.42270064 21.739376 -16.686451 1.0674638 21.108511 -16.686451 0.42270064 21.108511 
		-16.686451 1.0674638 21.108511 -16.162384 0.42270064 21.108511 -16.162384 1.0674638 
		21.739376 -16.162384 0.42270064 21.739376 -16.162384;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Neck" -p "UpTorso";
	rename -uid "BFBE8A1E-4A51-0085-5615-16B9440D031B";
	setAttr ".rp" -type "double3" 0 22.168346405029297 -0.77543380571733189 ;
	setAttr ".sp" -type "double3" 0 22.168346405029297 -0.77543380571733189 ;
createNode mesh -n "NeckShape" -p "Neck";
	rename -uid "74E9AFE3-4B92-8072-3E34-31A82E19BB1E";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Head" -p "Neck";
	rename -uid "99A15F03-4AF4-69D9-2F48-3BA8014DA94B";
	setAttr ".rp" -type "double3" 0 23.539421081542969 -0.7916891491431769 ;
	setAttr ".sp" -type "double3" 0 23.539421081542969 -0.7916891491431769 ;
createNode mesh -n "HeadShape" -p "Head";
	rename -uid "3FCAF31B-4E4C-9378-4B05-4396710D8CE3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.71048945 23.973967 0.20407811 
		0.71048945 23.973967 0.20407811 -0.71048945 27.075579 0.20407811 0.71048945 27.075579 
		0.20407811 -0.71048945 27.075579 -1.7874564 0.71048945 27.075579 -1.7874564 -0.71048945 
		23.973967 -1.7874564 0.71048945 23.973967 -1.7874564;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "LBicep1" -p "UpTorso";
	rename -uid "95C88E9C-4BD4-C17B-9512-ED9DFC9BC81F";
	setAttr ".rp" -type "double3" 0 21.418044558063187 -3.2046875953674316 ;
	setAttr ".sp" -type "double3" 0 21.418044558063187 -3.2046875953674316 ;
createNode mesh -n "LBicep1Shape" -p "LBicep1";
	rename -uid "AAF01E06-4E53-07D6-1189-199E40FB9281";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 20.91804504 -3.2046876 0.5 20.91804504 -3.2046876
		 -0.5 21.91804504 -3.2046876 0.5 21.91804504 -3.2046876 -0.5 21.91804504 -8.71697998
		 0.5 21.91804504 -8.71697998 -0.5 20.91804504 -8.71697998 0.5 20.91804504 -8.71697998;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "LForearm" -p "LBicep1";
	rename -uid "9BA310FF-4E13-768F-757E-FDA351020AC2";
	setAttr ".rp" -type "double3" 0 21.418044558063187 -8.9760417938232422 ;
	setAttr ".sp" -type "double3" 0 21.418044558063187 -8.9760417938232422 ;
createNode mesh -n "LForearmShape" -p "LForearm";
	rename -uid "D6FAE2EE-4AA6-5CCB-205A-999DF84E0E1D";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0 21.418045 -9.4760418 0 
		21.418045 -9.4760418 0 21.418045 -9.4760418 0 21.418045 -9.4760418 0 21.418045 -12.680573 
		0 21.418045 -12.680573 0 21.418045 -12.680573 0 21.418045 -12.680573;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "LPalm" -p "LForearm";
	rename -uid "7E1C1D77-4177-2FA5-A52F-8082C1363C5E";
	setAttr ".rp" -type "double3" 0 21.464876844696931 -13.180572509765625 ;
	setAttr ".sp" -type "double3" 0 21.464876844696931 -13.180572509765625 ;
createNode mesh -n "LPalmShape" -p "LPalm";
	rename -uid "BC6E47B8-49BC-E96F-7389-B99B1DA1A4A4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 2 "f[2]" "f[8]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 2 "f[3]" "f[9]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "f[0]" "f[6]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 2 "f[1]" "f[7]";
	setAttr ".pv" -type "double2" 0.44999998807907104 0.625 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 19 ".uvst[0].uvsp[0:18]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.44999999 0 0.44999999 1 0.44999999 0.25 0.44999999
		 0.5 0.44999999 0.75;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".vt[0:11]"  -0.5 20.96487617 -13.30089569 0.5 20.96487617 -13.30089569
		 -0.5 21.96487617 -13.30089569 0.5 21.96487617 -13.30089569 -0.97347122 21.96487617 -14.84813881
		 0.97347122 21.96487617 -14.84813881 -0.97347122 20.96487617 -14.84813881 0.97347122 20.96487617 -14.84813881
		 -0.19999999 20.96487617 -13.30089569 -0.19999999 21.96487617 -13.30089569 -0.38938847 21.96487617 -15.13058281
		 -0.38938847 20.96487617 -15.13058281;
	setAttr -s 20 ".ed[0:19]"  0 8 0 2 9 0 4 10 0 6 11 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 8 1 0 9 3 0 10 5 0 11 7 0 8 9 1 9 10 1 10 11 1 11 8 1;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 0 16 -2 -5
		mu 0 4 0 14 16 2
		f 4 1 17 -3 -7
		mu 0 4 2 16 17 4
		f 4 2 18 -4 -9
		mu 0 4 4 17 18 6
		f 4 3 19 -1 -11
		mu 0 4 6 18 15 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 -17 12 5 -14
		mu 0 4 16 14 1 3
		f 4 -18 13 7 -15
		mu 0 4 17 16 3 5
		f 4 -19 14 9 -16
		mu 0 4 18 17 5 7
		f 4 -20 15 11 -13
		mu 0 4 15 18 7 9;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
createNode transform -n "LThumbMeta" -p "LPalm";
	rename -uid "C3241AB6-4148-5592-7E49-E0AED4139A0E";
	setAttr ".rp" -type "double3" -0.093656251936168999 21.423943328828578 -13.663564979131021 ;
	setAttr ".sp" -type "double3" -0.093656251936168999 21.423943328828578 -13.663564979131021 ;
createNode mesh -n "LThumbMetaShape" -p "LThumbMeta";
	rename -uid "3F2CAD28-4771-CE13-AE7F-21BA1382824B";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".pv" -type "double2" 0.25 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.40832871 21.501013 -13.840218 
		-0.34646666 21.501013 -14.486912 0.40832871 21.346874 -13.840218 -0.34646666 21.346874 
		-14.486912 -0.69044948 21.148289 -13.730271 -1.4282038 21.148289 -14.073313 -0.69044948 
		21.699596 -13.730271 -1.4282038 21.699596 -14.073313;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "LThumbProximal" -p "LThumbMeta";
	rename -uid "81A12A89-4093-58C7-6DFC-04938503DB27";
	setAttr ".rp" -type "double3" -1.0856536626815796 21.423943328828578 -14.426996231079102 ;
	setAttr ".sp" -type "double3" -1.0856536626815796 21.423943328828578 -14.426996231079102 ;
createNode mesh -n "LThumbProximalShape" -p "LThumbProximal";
	rename -uid "CBFDD4DC-4FF1-B058-9717-ECB4E7015011";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 2 "f[2]" "f[8]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 2 "f[3]" "f[9]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "f[0]" "f[6]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 2 "f[1]" "f[7]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 19 ".uvst[0].uvsp[0:18]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.5 0 0.5 1 0.5 0.25 0.5 0.5 0.5 0.75;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".vt[0:11]"  -1.22362268 21.23937607 -14.32822227 -0.94768465 21.23937607 -14.52577019
		 -1.22362268 21.60851097 -14.32822227 -0.94768465 21.60851097 -14.52577019 -1.56211364 21.60851097 -14.80103302
		 -1.28617573 21.60851097 -14.99858093 -1.56211364 21.23937607 -14.80103302 -1.28617573 21.23937607 -14.99858093
		 -1.085653663 21.23937607 -14.42699623 -1.085653663 21.60851097 -14.42699623 -1.42414474 21.60851097 -14.89980698
		 -1.42414474 21.23937607 -14.89980698;
	setAttr -s 20 ".ed[0:19]"  0 8 0 2 9 0 4 10 0 6 11 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 8 1 0 9 3 0 10 5 0 11 7 0 8 9 1 9 10 1 10 11 1 11 8 1;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 0 16 -2 -5
		mu 0 4 0 14 16 2
		f 4 1 17 -3 -7
		mu 0 4 2 16 17 4
		f 4 2 18 -4 -9
		mu 0 4 4 17 18 6
		f 4 3 19 -1 -11
		mu 0 4 6 18 15 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 -17 12 5 -14
		mu 0 4 16 14 1 3
		f 4 -18 13 7 -15
		mu 0 4 17 16 3 5
		f 4 -19 14 9 -16
		mu 0 4 18 17 5 7
		f 4 -20 15 11 -13
		mu 0 4 15 18 7 9;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape2" -p "LThumbProximal";
	rename -uid "D5AECA3C-429E-02E9-34EE-FDBDB196F04D";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.72362268 21.739376 -14.828222 
		-1.4476846 21.739376 -15.02577 -0.72362268 21.108511 -14.828222 -1.4476846 21.108511 
		-15.02577 -1.0621136 21.108511 -14.301033 -1.7861757 21.108511 -14.498581 -1.0621136 
		21.739376 -14.301033 -1.7861757 21.739376 -14.498581;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "LThumbDistal" -p "LThumbProximal";
	rename -uid "F1C829C4-48AD-4DDC-C4E8-47A2B4AA4DEC";
	setAttr ".rp" -type "double3" -1.4508824348449707 21.239376068115234 -15.000690460205078 ;
	setAttr ".sp" -type "double3" -1.4508824348449707 21.239376068115234 -15.000690460205078 ;
createNode mesh -n "LThumbDistalShape" -p "LThumbDistal";
	rename -uid "F8ECBD07-4FA0-5D6C-7E6A-F3820B430B3F";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 2 "f[2]" "f[8]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 2 "f[3]" "f[9]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "f[0]" "f[6]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 2 "f[1]" "f[7]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 19 ".uvst[0].uvsp[0:18]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.5 0 0.5 1 0.5 0.25 0.5 0.5 0.5 0.75;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".vt[0:11]"  -1.58513415 21.23937607 -14.96825981 -1.31663084 21.23937607 -15.033121109
		 -1.58513415 21.60851097 -14.96825981 -1.31663084 21.60851097 -15.033121109 -1.65915143 21.60851097 -15.27466583
		 -1.39064813 21.60851097 -15.33952713 -1.65915143 21.23937607 -15.27466583 -1.39064813 21.23937607 -15.33952713
		 -1.45088243 21.23937607 -15.00069046021 -1.45088243 21.60851097 -15.00069046021 -1.52489972 21.60851097 -15.30709648
		 -1.52489972 21.23937607 -15.30709648;
	setAttr -s 20 ".ed[0:19]"  0 8 0 2 9 0 4 10 0 6 11 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 8 1 0 9 3 0 10 5 0 11 7 0 8 9 1 9 10 1 10 11 1 11 8 1;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 0 16 -2 -5
		mu 0 4 0 14 16 2
		f 4 1 17 -3 -7
		mu 0 4 2 16 17 4
		f 4 2 18 -4 -9
		mu 0 4 4 17 18 6
		f 4 3 19 -1 -11
		mu 0 4 6 18 15 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 -17 12 5 -14
		mu 0 4 16 14 1 3
		f 4 -18 13 7 -15
		mu 0 4 17 16 3 5
		f 4 -19 14 9 -16
		mu 0 4 18 17 5 7
		f 4 -20 15 11 -13
		mu 0 4 15 18 7 9;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape1" -p "LThumbDistal";
	rename -uid "2EF2F385-42C2-D150-A6D7-3DA19C7D208F";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -1.0851341 21.739376 -15.46826 
		-1.8166308 21.739376 -15.533121 -1.0851341 21.108511 -15.46826 -1.8166308 21.108511 
		-15.533121 -1.1591514 21.108511 -14.774666 -1.8906481 21.108511 -14.839527 -1.1591514 
		21.739376 -14.774666 -1.8906481 21.739376 -14.839527;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "LIndexProximal" -p "LPalm";
	rename -uid "CD52568C-45A8-B81E-6283-ABA9B0642BC7";
	setAttr ".rp" -type "double3" -0.78089323395462773 21.423943328828578 -15.045870780944824 ;
	setAttr ".sp" -type "double3" -0.78089323395462773 21.423943328828578 -15.045870780944824 ;
createNode mesh -n "LIndexProximalShape" -p "LIndexProximal";
	rename -uid "5DDAE66A-416F-621C-DAB4-C496B9CFA61D";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.95851165 21.23937607 -15.045870781 -0.60327476 21.23937607 -15.045870781
		 -0.95851165 21.60850906 -15.045870781 -0.60327476 21.60850906 -15.045870781 -0.95851165 21.60850906 -15.60142612
		 -0.60327476 21.60850906 -15.60142612 -0.95851165 21.23937607 -15.60142612 -0.60327476 21.23937607 -15.60142612;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "LIndexIntermidiate" -p "LIndexProximal";
	rename -uid "95D68E6C-47C7-2EA5-E0A3-3FA6499F562E";
	setAttr ".rp" -type "double3" -0.78089323395462773 21.423943328828578 -15.601426124572754 ;
	setAttr ".sp" -type "double3" -0.78089323395462773 21.423943328828578 -15.601426124572754 ;
createNode mesh -n "LIndexIntermidiateShape" -p "LIndexIntermidiate";
	rename -uid "968CBD58-4832-8246-6B86-209C1C5C4C63";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.45851165 21.739376 -16.188053 
		-1.1032748 21.739376 -16.188053 -0.45851165 21.108511 -16.188053 -1.1032748 21.108511 
		-16.188053 -0.45851165 21.108511 -15.772221 -1.1032748 21.108511 -15.772221 -0.45851165 
		21.739376 -15.772221 -1.1032748 21.739376 -15.772221;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "LIndexDistal" -p "LIndexIntermidiate";
	rename -uid "39ECF2C7-4F5C-FB49-258E-73B3B8E2C0A1";
	setAttr ".rp" -type "double3" -0.78089323395462773 21.423943328828578 -16.272220611572266 ;
	setAttr ".sp" -type "double3" -0.78089323395462773 21.423943328828578 -16.272220611572266 ;
createNode mesh -n "LIndexDistalShape" -p "LIndexDistal";
	rename -uid "C81FBE3A-4AE9-881A-CCE2-BEAE090FDBFB";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.45851165 21.739376 -16.845453 
		-1.1032748 21.739376 -16.845453 -0.45851165 21.108511 -16.845453 -1.1032748 21.108511 
		-16.845453 -0.45851165 21.108511 -16.321386 -1.1032748 21.108511 -16.321386 -0.45851165 
		21.739376 -16.321386 -1.1032748 21.739376 -16.321386;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "LMiddleProximal" -p "LPalm";
	rename -uid "455FE87F-4EA7-6815-2B78-98B413D6A53B";
	setAttr ".rp" -type "double3" -0.24318427294061251 21.423943328828578 -15.130582809448242 ;
	setAttr ".sp" -type "double3" -0.24318427294061251 21.423943328828578 -15.130582809448242 ;
createNode mesh -n "LMiddleProximalShape" -p "LMiddleProximal";
	rename -uid "8EE362D6-48B5-D9C3-81F3-88BE58D087E6";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.079197302 21.739376 -15.635279 
		-0.56556582 21.739376 -15.635279 0.079197302 21.108511 -15.635279 -0.56556582 21.108511 
		-15.635279 0.079197302 21.108511 -15.368612 -0.56556582 21.108511 -15.368612 0.079197302 
		21.739376 -15.368612 -0.56556582 21.739376 -15.368612;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "LmiddleIntermidiate" -p "LMiddleProximal";
	rename -uid "D54D8CF7-4815-AE78-B9C3-4DB221269BC0";
	setAttr ".rp" -type "double3" -0.24318427294061251 21.423943328828578 -15.868612289428711 ;
	setAttr ".sp" -type "double3" -0.24318427294061251 21.423943328828578 -15.868612289428711 ;
createNode mesh -n "LmiddleIntermidiateShape" -p "LmiddleIntermidiate";
	rename -uid "14F29F59-4F99-4B2C-0B19-07B8A1A073D2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.079197302 21.739376 -16.425415 
		-0.56556582 21.739376 -16.425415 0.079197302 21.108511 -16.425415 -0.56556582 21.108511 
		-16.425415 0.079197302 21.108511 -16.198576 -0.56556582 21.108511 -16.198576 0.079197302 
		21.739376 -16.198576 -0.56556582 21.739376 -16.198576;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "LMiddleDistal" -p "LmiddleIntermidiate";
	rename -uid "7BEE3C77-4B00-25B6-D2A1-BB94CBED8AA8";
	setAttr ".rp" -type "double3" -0.24318427294061251 21.423943328828578 -16.698575973510742 ;
	setAttr ".sp" -type "double3" -0.24318427294061251 21.423943328828578 -16.698575973510742 ;
createNode mesh -n "LMiddleDistalShape" -p "LMiddleDistal";
	rename -uid "F3DE070C-4AAF-5249-63A3-2FA0F64BAF9D";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.079197302 21.739376 -17.267641 
		-0.56556582 21.739376 -17.267641 0.079197302 21.108511 -17.267641 -0.56556582 21.108511 
		-17.267641 0.079197302 21.108511 -16.743574 -0.56556582 21.108511 -16.743574 0.079197302 
		21.739376 -16.743574 -0.56556582 21.739376 -16.743574;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "LRingProximal" -p "LPalm";
	rename -uid "BAF35E9C-4C51-9BAD-4FE3-4DAB9B8862EA";
	setAttr ".rp" -type "double3" 0.24828949625430657 21.423943328828578 -15.038302421569824 ;
	setAttr ".sp" -type "double3" 0.24828949625430657 21.423943328828578 -15.038302421569824 ;
createNode mesh -n "LRingProximalShape" -p "LRingProximal";
	rename -uid "0EA2882F-460B-FE87-C834-C2BE4F86A457";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".pv" -type "double2" 0.5 0.625 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.57067108 21.739376 -15.538302 
		-0.074092075 21.739376 -15.538302 0.57067108 21.108511 -15.538302 -0.074092075 21.108511 
		-15.538302 0.57067108 21.108511 -15.159024 -0.074092075 21.108511 -15.159024 0.57067108 
		21.739376 -15.159024 -0.074092075 21.739376 -15.159024;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "LRingIntermidiate" -p "LRingProximal";
	rename -uid "09FBD3D9-4F98-8A88-8D02-58A7D16834DC";
	setAttr ".rp" -type "double3" 0.24828949625430657 21.423943328828578 -15.659024238586426 ;
	setAttr ".sp" -type "double3" 0.24828949625430657 21.423943328828578 -15.659024238586426 ;
createNode mesh -n "LRingIntermidiateShape" -p "LRingIntermidiate";
	rename -uid "06F7A85F-4BED-6314-81AC-069F272CC629";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.57067108 21.739376 -16.210722 
		-0.074092075 21.739376 -16.210722 0.57067108 21.108511 -16.210722 -0.074092075 21.108511 
		-16.210722 0.57067108 21.108511 -15.883518 -0.074092075 21.108511 -15.883518 0.57067108 
		21.739376 -15.883518 -0.074092075 21.739376 -15.883518;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "LRingDistal" -p "LRingIntermidiate";
	rename -uid "1E79046B-432D-11C6-4EB0-58A59434BF72";
	setAttr ".rp" -type "double3" 0.24828949625430657 21.423943328828578 -16.383518218994141 ;
	setAttr ".sp" -type "double3" 0.24828949625430657 21.423943328828578 -16.383518218994141 ;
createNode mesh -n "LRingDistalShape" -p "LRingDistal";
	rename -uid "88665097-473D-F854-C740-49BAC36B2448";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.57067108 21.739376 -16.946655 
		-0.074092075 21.739376 -16.946655 0.57067108 21.108511 -16.946655 -0.074092075 21.108511 
		-16.946655 0.57067108 21.108511 -16.422588 -0.074092075 21.108511 -16.422588 0.57067108 
		21.739376 -16.422588 -0.074092075 21.739376 -16.422588;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "LPinkProximal" -p "LPalm";
	rename -uid "0C449D6A-43BA-1A11-97A5-BCBC0F0BCED3";
	setAttr ".rp" -type "double3" 0.74508221136922459 21.423943328828578 -14.785260288656524 ;
	setAttr ".sp" -type "double3" 0.74508221136922459 21.423943328828578 -14.785260288656524 ;
createNode mesh -n "LPinkProximalShape" -p "LPinkProximal";
	rename -uid "5E81B5E4-4A5E-3697-4DB3-089D93489366";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".pv" -type "double2" 0.5 0.625 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  1.0674638 21.739376 -15.454515 
		0.42270064 21.739376 -15.454515 1.0674638 21.108511 -15.454515 0.42270064 21.108511 
		-15.454515 1.0674638 21.108511 -14.932326 0.42270064 21.108511 -14.932326 1.0674638 
		21.739376 -14.932326 0.42270064 21.739376 -14.932326;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "LPinkIntermidiate" -p "LPinkProximal";
	rename -uid "E07E0C0B-4350-CAC8-0855-5589EC561EB9";
	setAttr ".rp" -type "double3" 0.74508221136922459 21.423943328828578 -15.432326316833496 ;
	setAttr ".sp" -type "double3" 0.74508221136922459 21.423943328828578 -15.432326316833496 ;
createNode mesh -n "LPinkIntermidiateShape" -p "LPinkIntermidiate";
	rename -uid "7FBA29A2-4BE6-2B18-7492-FBB020C0F470";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".pv" -type "double2" 0.5 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  1.0674638 21.739376 -15.989681 
		0.42270064 21.739376 -15.989681 1.0674638 21.108511 -15.989681 0.42270064 21.108511 
		-15.989681 1.0674638 21.108511 -15.617387 0.42270064 21.108511 -15.617387 1.0674638 
		21.739376 -15.617387 0.42270064 21.739376 -15.617387;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "LPinkDistal" -p "LPinkIntermidiate";
	rename -uid "6BCDB149-4870-1A10-E156-F1A8F7B4255C";
	setAttr ".rp" -type "double3" 0.74508221136922459 21.423943328828578 -16.117385864257812 ;
	setAttr ".sp" -type "double3" 0.74508221136922459 21.423943328828578 -16.117385864257812 ;
createNode mesh -n "LPinkDistalShape" -p "LPinkDistal";
	rename -uid "CDDCBB32-49D8-76A5-A971-7C96DAE14FBB";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  1.0674638 21.739376 -16.686451 
		0.42270064 21.739376 -16.686451 1.0674638 21.108511 -16.686451 0.42270064 21.108511 
		-16.686451 1.0674638 21.108511 -16.162384 0.42270064 21.108511 -16.162384 1.0674638 
		21.739376 -16.162384 0.42270064 21.739376 -16.162384;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "LThigh1" -p "Hip";
	rename -uid "AA01DE4E-4A97-8910-2D87-8AAC4C5B2ECD";
	setAttr ".rp" -type "double3" 0 14.041473388671875 -2.279559105131264 ;
	setAttr ".sp" -type "double3" 0 14.041473388671875 -2.279559105131264 ;
createNode mesh -n "LThigh1Shape" -p "LThigh1";
	rename -uid "8F7F2E04-4527-9105-8465-9293968DC456";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0 7.5802078 -2.2795591 0 
		7.5802078 -2.2795591 0 13.801447 -2.2795591 0 13.801447 -2.2795591 0 13.801447 -2.2795591 
		0 13.801447 -2.2795591 0 7.5802078 -2.2795591 0 7.5802078 -2.2795591;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "LShin" -p "LThigh1";
	rename -uid "4A5ECCFA-4734-C49D-7714-D4AE31E876E8";
	setAttr ".rp" -type "double3" 0 6.9617390632629395 -2.279559105131264 ;
	setAttr ".sp" -type "double3" 0 6.9617390632629395 -2.279559105131264 ;
createNode mesh -n "LShinShape" -p "LShin";
	rename -uid "FDBB363E-48B7-DAA6-A2E0-259E1822F858";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 0.53794956 -1.77955914 0.5 0.53794956 -1.77955914
		 -0.5 6.96173906 -1.77955914 0.5 6.96173906 -1.77955914 -0.5 6.96173906 -2.77955914
		 0.5 6.96173906 -2.77955914 -0.5 0.53794956 -2.77955914 0.5 0.53794956 -2.77955914;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Lfoot" -p "LShin";
	rename -uid "6994524A-48CB-47F1-F1AD-5DBF5B9CF6AF";
	setAttr ".rp" -type "double3" -0.024035811960051834 0.5 -2.261562063826057 ;
	setAttr ".sp" -type "double3" -0.024035811960051834 0.5 -2.261562063826057 ;
createNode mesh -n "LfootShape" -p "Lfoot";
	rename -uid "23F5367D-49A2-7750-F436-41B5D487705A";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -3.50043035 -0.5 -1.76156211 0.30629516 -0.5 -1.76156211
		 -3.50043035 0.5 -1.76156211 0.30629516 0.5 -1.76156211 -3.50043035 0.5 -2.76156211
		 0.30629516 0.5 -2.76156211 -3.50043035 -0.5 -2.76156211 0.30629516 -0.5 -2.76156211;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "42C45DBD-4146-B8C3-2D26-B5B93F0D7C50";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "B9D3780F-4025-6445-4DE0-B984338A48E9";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "81A85E28-49FC-D542-A2F7-E393A83E2742";
createNode displayLayerManager -n "layerManager";
	rename -uid "D1D5653A-472F-6792-34F1-65AA4EFAC02F";
createNode displayLayer -n "defaultLayer";
	rename -uid "7BEF299A-474B-60C1-B4B8-F0BF83092FA8";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "C3243BB7-4644-9240-D6A4-459C56ACD7A5";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "8F9AE26F-4A31-1AE0-5916-62A1DEB2B15B";
	setAttr ".g" yes;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "9E38655B-4154-C4B2-E51F-D3981A5905C2";
	setAttr ".version" -type "string" "5.3.0";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "E6FC0AC0-4190-63BC-2DB1-39BCC9A2954B";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "40C1AC1A-41F0-2D03-535C-6E9903B87238";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "DA33A3D5-490E-2A4F-231A-7AB9AF2E00B3";
	setAttr ".output_mode" 0;
	setAttr ".ai_translator" -type "string" "maya";
createNode polyCube -n "polyCube1";
	rename -uid "E78E9102-4E3F-43B4-3C97-FE89C6EBE04B";
	setAttr ".cuv" 4;
createNode polyCube -n "polyCube2";
	rename -uid "F99EC5AA-4932-10D2-423F-74BF8EFAF1F2";
	setAttr ".cuv" 4;
createNode polyCube -n "polyCube3";
	rename -uid "CBBED779-49AE-9F26-B10E-72AA713D4DAF";
	setAttr ".cuv" 4;
createNode polyCube -n "polyCube4";
	rename -uid "308583A2-4975-7ABC-5D6C-CFA19E1DD630";
	setAttr ".cuv" 4;
createNode polyCube -n "polyCube5";
	rename -uid "86B0197D-4E8C-8BC0-D610-12ACD9600618";
	setAttr ".cuv" 4;
createNode polyTweak -n "polyTweak1";
	rename -uid "0819DB60-411F-8C4C-D6A0-49ABB74C3426";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[4:7]" -type "float3"  -0.47347122 0 -0.54724282
		 0.47347122 0 -0.54724282 -0.47347122 0 -0.54724282 0.47347122 0 -0.54724282;
createNode polySplit -n "polySplit1";
	rename -uid "263903AE-4C48-37ED-D568-95B2EE4D5883";
	setAttr -s 5 ".e[0:4]"  0.30000001 0.30000001 0.30000001 0.30000001
		 0.30000001;
	setAttr -s 5 ".d[0:4]"  -2147483648 -2147483647 -2147483646 -2147483645 -2147483648;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyCube -n "polyCube6";
	rename -uid "B73BFAAF-4DBE-C143-AF7F-57A2D4419620";
	setAttr ".cuv" 4;
createNode transformGeometry -n "transformGeometry1";
	rename -uid "82AC9CC5-4857-13C7-C962-9C8B011B2FA9";
	setAttr ".txf" -type "matrix" 1.5867314854011099 0 0 0 0 2.2461258157943838 0 0
		 0 0 4.4726070806494027 0 0 15.164536496451365 -0.81953857338803671 1;
createNode polyTweak -n "polyTweak2";
	rename -uid "82B2D66A-4DE2-85FC-07FA-E8950D0F54C5";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk[10:11]" -type "float3"  0 0 -0.28244382 0 0 -0.28244382;
createNode transformGeometry -n "transformGeometry2";
	rename -uid "9E6E6D90-42CD-323E-6BE5-A4B55ACD49D5";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 21.464876844696931 -13.800895683925086 1;
createNode transformGeometry -n "transformGeometry3";
	rename -uid "3DBAD0CB-402F-B3CB-31AE-3EAE7E6576A6";
	setAttr ".txf" -type "matrix" 3.8067255217568183 0 0 0 0 1 0 0 0 0 1 0 -1.5970675948440169 0 -2.261562063826057 1;
createNode transformGeometry -n "transformGeometry4";
	rename -uid "5DA39A36-40A7-B938-5AFE-DC9880CAA24C";
	setAttr ".txf" -type "matrix" 0.35523685502298386 0 0 0 0 0.36913469155427975 0 0
		 0 0 0.55555553527752932 0 -0.78089323395462773 21.423943328828578 -15.323648085419949 1;
createNode transformGeometry -n "transformGeometry5";
	rename -uid "82926FEF-4A38-740A-41CA-548B90075665";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 6.4237894253750767 0 0 0 0 1 0 0 3.7498443514749908 -2.279559105131264 1;
createNode transformGeometry -n "transformGeometry6";
	rename -uid "A8602ECE-433E-3A58-358B-C695DAE1C88B";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 5.5122930215951351 0 0 21.418044558063187 -5.9608340608917585 1;
createNode polyCube -n "polyCube7";
	rename -uid "76350A63-4D48-2EA9-B769-5B99BB419159";
	setAttr ".cuv" 4;
createNode transformGeometry -n "transformGeometry7";
	rename -uid "1A767AFC-41CD-E9BC-E1CE-ADBBB1A1904D";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1.3710735392515869 0 0 0 0 1 0 0 22.853884399996172 -0.77543380571733189 1;
createNode polySplit -n "polySplit2";
	rename -uid "9EA976B1-4E00-4028-CA83-309160103546";
	setAttr -s 5 ".e[0:4]"  0.5 0.5 0.5 0.5 0.5;
	setAttr -s 5 ".d[0:4]"  -2147483648 -2147483647 -2147483646 -2147483645 -2147483648;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit3";
	rename -uid "718E21E7-454D-18D9-5553-41BC52049106";
	setAttr -s 5 ".e[0:4]"  0.5 0.5 0.5 0.5 0.5;
	setAttr -s 5 ".d[0:4]"  -2147483648 -2147483647 -2147483646 -2147483645 -2147483648;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "F7BBD02B-421E-F692-07EF-C696926A5EF0";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 564\n            -height 245\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n"
		+ "            -shadows 0\n            -captureSequenceNumber -1\n            -width 563\n            -height 244\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n"
		+ "            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n"
		+ "            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n"
		+ "            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 564\n            -height 244\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n"
		+ "        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1134\n            -height 534\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 1\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n"
		+ "            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n"
		+ "            -longNames 0\n            -niceNames 1\n            -selectCommand \"print(\\\"\\\")\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n"
		+ "            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n"
		+ "            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n"
		+ "            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n"
		+ "                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -isSet 0\n                -isSetMember 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n"
		+ "                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                -selectionOrder \"display\" \n                -expandAttribute 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -outliner \"graphEditor1OutlineEd\" \n                -highlightAffectedCurves 0\n"
		+ "                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n"
		+ "                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n"
		+ "                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
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
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1134\\n    -height 534\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1134\\n    -height 534\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "50DE8BB2-4F83-2669-8243-6A994A8414B1";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 16 -ast 0 -aet 239 ";
	setAttr ".st" 6;
createNode animCurveTA -n "Hip_rotateX";
	rename -uid "D0B1E4EB-4CED-1FF7-5843-62BFD15385D5";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "Hip_rotateY";
	rename -uid "23E65DFE-40AF-58C1-38AF-80A7AC224A2B";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "Hip_rotateZ";
	rename -uid "B63EFFD3-4A9B-4B34-A124-7CB0D08339A3";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "LThigh1_rotateX";
	rename -uid "271EA8B7-4425-F5AB-E5AC-F1A134AACBC0";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "LThigh1_rotateY";
	rename -uid "E328408B-4A35-E2F0-04B5-80976CA5D222";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "LThigh1_rotateZ";
	rename -uid "FF198679-4006-CAFB-A42D-6CBB2E562744";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 25.31630492490449 4 33.019719023135501
		 8 33.019719023135501;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "LShin_rotateX";
	rename -uid "EA2DA9AC-470F-76A9-31F6-6282EA86B8F7";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "LShin_rotateY";
	rename -uid "0D6824A9-4750-9509-6F9B-A78469E5E1C2";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "LShin_rotateZ";
	rename -uid "96AEA380-4A87-0BF8-6A70-B3B37EDCA6BD";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 38.019563275007414 4 40.542281437612928
		 8 40.542281437612928;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "Lfoot_rotateX";
	rename -uid "FE0F3E33-4CEC-3107-77A1-1E84B3DD233C";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "Lfoot_rotateY";
	rename -uid "84E7E917-470F-101E-70B4-B8A1592E426F";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "Lfoot_rotateZ";
	rename -uid "F4484BA9-4DBD-3BA5-AF29-7E9ABD23B5C7";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "LowTorso_rotateX";
	rename -uid "4EA31FA9-43C5-EDC9-E819-72981E473580";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "LowTorso_rotateY";
	rename -uid "C61735AC-4584-63A9-77FE-8090EF01A77D";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "LowTorso_rotateZ";
	rename -uid "0BC08243-486D-E0AA-F897-A68C0DB82803";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "UpTorso_rotateX";
	rename -uid "790EB4CF-431F-D5E2-6A99-818B91BD88AD";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "UpTorso_rotateY";
	rename -uid "8F7DA7ED-4AD9-F7A9-4383-9B843C2846D1";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "UpTorso_rotateZ";
	rename -uid "57186E61-40AC-E74D-A0FF-D7A3EA1C56C1";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "LBicep1_rotateX";
	rename -uid "53FC76C0-48E0-7AC2-408B-D6B83875C51B";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -75.17170749404977 4 -77.805360973797931
		 8 -77.805360973797931;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "LBicep1_rotateY";
	rename -uid "5ABC1D46-41DF-5C76-9628-4093ACAFBDE6";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 176.83275309370057 4 170.9323184334034
		 8 170.9323184334034;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "LBicep1_rotateZ";
	rename -uid "833A2010-4301-F9CD-0C8B-A5888CF90182";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -11.788329815606291 4 -36.101932308956741
		 8 -36.101932308956741;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "LForearm_rotateX";
	rename -uid "66B47039-403F-8E2D-ABDC-28AEE3A36330";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.070855397806623074 4 -0.074806486811411416
		 8 -0.074806486811411416;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "LForearm_rotateY";
	rename -uid "E0F98A4B-427E-4DFE-2419-FD9093B0FDF7";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -15.310085118542183 4 -23.996829980259886
		 8 -23.996829980259886;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "LForearm_rotateZ";
	rename -uid "BC8B6E20-4A40-5FFC-207C-62BA140262B9";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1.4725601936624109 4 -1.4608462893095422
		 8 -1.4608462893095422;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "LPalm_rotateX";
	rename -uid "D03A4E30-4B4A-AB76-4979-6BB72C777785";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "LPalm_rotateY";
	rename -uid "96AD5AA9-4C05-DE3D-F7C0-9EB17F685F47";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "LPalm_rotateZ";
	rename -uid "D95D1F1A-473E-ACCD-DB98-1A9457C413BE";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 134.70189731173267 4 134.70189731173267
		 8 134.70189731173267;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "LIndexProximal_rotateX";
	rename -uid "D2177B15-4FC7-7D30-53B7-9A9279C8130C";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 13.990658984880811 4 3.7680292641333186
		 8 3.7680292641333186;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "LIndexProximal_rotateY";
	rename -uid "448133F9-4225-6614-B297-37BE033A624B";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 13.769662879874494 4 13.769662879874499
		 8 13.769662879874499;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "LIndexProximal_rotateZ";
	rename -uid "6271F0E0-4CA3-0A93-5DB3-0681D14A926D";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "LIndexIntermidiate_rotateX";
	rename -uid "F5A4A40F-4BC5-C6CA-27A0-12B8BF845C86";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 13.990658984880813 4 3.7680292641333195
		 8 3.7680292641333195;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "LIndexIntermidiate_rotateY";
	rename -uid "B8B62D31-4A59-BEF8-9D70-6F811BC04E43";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "LIndexIntermidiate_rotateZ";
	rename -uid "CFCD2479-42C3-C543-8464-32AF03F7E1B3";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "LIndexDistal_rotateX";
	rename -uid "A9034E63-4A79-813A-199E-AFBEA85FBC6B";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 13.990658984880813 4 3.7680292641333195
		 8 3.7680292641333195;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "LIndexDistal_rotateY";
	rename -uid "D584A92C-46D9-135C-4D0E-E2905544463D";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "LIndexDistal_rotateZ";
	rename -uid "6F6CAA59-4FE1-23EA-D5D4-FAA6E1B639E0";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "LMiddleProximal_rotateX";
	rename -uid "F80D17B5-4C21-03D1-ED6A-FF837280F08B";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 20.696617149810496 4 8.6323495974331035
		 8 8.6323495974331035;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "LMiddleProximal_rotateY";
	rename -uid "1F3B2425-4C50-6D9C-30C2-4E9DE7388FF0";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "LMiddleProximal_rotateZ";
	rename -uid "0B89A759-4E98-309E-2AEB-B0AA264797E3";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "LmiddleIntermidiate_rotateX";
	rename -uid "E0B8FC04-4959-5094-C8C6-C3B401955928";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 20.696617149810496 4 8.6323495974331035
		 8 8.6323495974331035;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "LmiddleIntermidiate_rotateY";
	rename -uid "D03BFA61-40EC-63E1-81E2-EB80D3B2FE12";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "LmiddleIntermidiate_rotateZ";
	rename -uid "B29874A2-4849-4494-F49A-538737C2293B";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "LMiddleDistal_rotateX";
	rename -uid "35F6EE58-4A6D-4EDB-B1BD-3390EF42ADBB";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 20.696617149810496 4 8.6323495974331035
		 8 8.6323495974331035;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "LMiddleDistal_rotateY";
	rename -uid "41BA83BC-4F2F-2202-B75B-6C95C5A9C825";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "LMiddleDistal_rotateZ";
	rename -uid "711AD881-4DF4-EA63-94BB-A7B975379C3F";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "LPinkProximal_rotateX";
	rename -uid "14EBA9A0-423D-EB78-196F-8693664F52F5";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 12.103455424714918 4 6.7872591209604947
		 8 6.7872591209604947;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "LPinkProximal_rotateY";
	rename -uid "C20827CD-41BE-26D6-ACC9-4AAC95CB27EA";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -18.05318243714974 4 -18.05318243714974
		 8 -18.05318243714974;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "LPinkProximal_rotateZ";
	rename -uid "7FA99876-40BA-9A7F-4EB8-4BA4D6CE2AA1";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 4.1815543043995567e-16 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "LPinkIntermidiate_rotateX";
	rename -uid "A4A8F6C1-4906-CABD-7DB6-F0A89A7FEC1A";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 12.103455424714955 4 6.7872591209605373
		 8 6.7872591209605373;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "LPinkIntermidiate_rotateY";
	rename -uid "1BEF5093-4984-6F92-72F7-E3BD787F9567";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "LPinkIntermidiate_rotateZ";
	rename -uid "EAFFE9C6-47E7-9176-EEF5-4CBF0F70D928";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "LPinkDistal_rotateX";
	rename -uid "2E9B1040-4605-BB88-4A76-43AB0F7E172C";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 12.103455424714955 4 6.7872591209605373
		 8 6.7872591209605373;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "LPinkDistal_rotateY";
	rename -uid "9FA22764-47BE-182C-9110-8483C77A6343";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "LPinkDistal_rotateZ";
	rename -uid "B82E6BF3-49F2-3154-CB68-A380937407C9";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "LRingProximal_rotateX";
	rename -uid "CCEE4332-4D3B-6626-4C56-60B031D9FEC2";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 17.371554084188741 4 10.001335648915454
		 8 10.001335648915454;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "LRingProximal_rotateY";
	rename -uid "8BDB4755-4302-1154-2C28-37863AA2CDAF";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -10.062559026914819 4 -10.062559026914817
		 8 -10.062559026914817;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "LRingProximal_rotateZ";
	rename -uid "4CA21F80-46D8-7C9A-FCBF-9CAAF576B895";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 2.0189023066866584e-16 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "LRingIntermidiate_rotateX";
	rename -uid "077240F2-4064-1ADE-BD7D-7EADCDC10FCB";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 17.371554084188741 4 10.001335648915454
		 8 10.001335648915454;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "LRingIntermidiate_rotateY";
	rename -uid "CBC84ECD-463A-9FD1-05FE-8D969F5BF603";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "LRingIntermidiate_rotateZ";
	rename -uid "8226545C-4503-6F5E-0AF2-2BB78E3B7B73";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "LRingDistal_rotateX";
	rename -uid "E3EDDE19-4084-ABB5-FE09-7983F44216EF";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 17.371554084188741 4 10.001335648915454
		 8 10.001335648915454;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "LRingDistal_rotateY";
	rename -uid "B0898DEF-43DB-D4FC-156A-6D8EA891F5A7";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "LRingDistal_rotateZ";
	rename -uid "4E42783C-46B8-D325-30B7-3681F16D1E6C";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "LThumbMeta_rotateX";
	rename -uid "978FE5C0-4789-8983-6EA4-24B81CE2F5FE";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "LThumbMeta_rotateY";
	rename -uid "F54A6D62-47BF-813D-3C0D-DAAAEA799B86";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "LThumbMeta_rotateZ";
	rename -uid "CB8F120F-4A86-74C9-B154-E3BE7F88BF8C";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "LThumbProximal_rotateX";
	rename -uid "E03B818F-4B80-8641-61F1-E1B7CE3959F9";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "LThumbProximal_rotateY";
	rename -uid "AFD54A5C-43A3-A0E7-4C48-739E6CC9C443";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "LThumbProximal_rotateZ";
	rename -uid "46AD7366-46A9-E068-4F7D-E2911B704C83";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "LThumbDistal_rotateX";
	rename -uid "1072520D-4BDD-DCD8-538F-888194FEE528";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "LThumbDistal_rotateY";
	rename -uid "23566ED2-46C1-9A4C-3283-C5BB4AB8FD3C";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "LThumbDistal_rotateZ";
	rename -uid "B1A30525-4226-0E1C-67B1-4D8991826567";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "Neck_rotateX";
	rename -uid "7CB6D187-4B0C-6C6A-0C71-E1BAB3E3E544";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "Neck_rotateY";
	rename -uid "C5F7301E-4B9B-DEBA-6AFA-0F82E899787D";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "Neck_rotateZ";
	rename -uid "CB09F156-44B3-1790-6E3F-80872E5A38C5";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "Head_rotateX";
	rename -uid "8A9D1908-41AB-A579-03F5-0EBFBE3B44F0";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "Head_rotateY";
	rename -uid "D98DBE9A-447C-FABC-EAD0-E6918471465F";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "Head_rotateZ";
	rename -uid "683FF45F-40D4-3DFB-2608-92A783C63C0D";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "RBicep_rotateX";
	rename -uid "D3CBCB5B-4A1B-0292-0177-FDB2C6F510E5";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -86.786067478081378 4 -87.845528420245842
		 8 -87.845528420245842;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "RBicep_rotateY";
	rename -uid "F68F1E46-44EE-D422-16C6-39AECFAC77CF";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -3.436937726184448 4 -4.182823249975602
		 8 -4.182823249975602;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "RBicep_rotateZ";
	rename -uid "CED843D1-4360-D77B-839C-12B99D7896B4";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 46.873273007751962 4 62.716363647183705
		 8 62.716363647183705;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "RForearm_rotateX";
	rename -uid "A6A25F1E-4F22-6165-CA57-5785E3E3F730";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 3.5549508250624884 4 3.3326839936977914
		 8 3.3326839936977914;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "RForearm_rotateY";
	rename -uid "E866CA7B-496F-820C-EE03-ACB476E31D14";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 21.566258934532662 4 7.2794006576009052
		 8 7.2794006576009052;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "RForearm_rotateZ";
	rename -uid "A80C5E2F-4419-C2B0-1CEB-35815741B0D9";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.98980687566528192 4 0.10438375463153669
		 8 0.10438375463153669;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "RPalm_rotateX";
	rename -uid "229F1C15-43BD-0F2E-1D63-B98DAAD83C73";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "RPalm_rotateY";
	rename -uid "75D6B0BC-4ACE-6577-1C97-6BA1CFA726F3";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "RPalm_rotateZ";
	rename -uid "A5B27BCD-46EA-B212-FD76-8F98E9564047";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 56.366235671622491 4 56.366235671622491
		 8 56.366235671622491;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "RIndexProximal_rotateX";
	rename -uid "9FB020A1-4A43-A99F-EBF3-CFA94657A7A5";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -72.764749535973152 4 -72.764749535973152
		 8 -72.764749535973152;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "RIndexProximal_rotateY";
	rename -uid "EB8FF4A8-4A5A-F4FD-921C-4982B46EB711";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 13.769662879874474 4 13.769662879874474
		 8 13.769662879874474;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "RIndexProximal_rotateZ";
	rename -uid "E780AB91-41A7-6CB8-2D57-C385F4720DF4";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 2.456000373588238e-15 4 2.456000373588238e-15
		 8 2.456000373588238e-15;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "RIndexIntermidiate_rotateX";
	rename -uid "7D177BB8-42BF-E7E8-37A9-16BDD329765F";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -72.764749535973223 4 -72.764749535973223
		 8 -72.764749535973223;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "RIndexIntermidiate_rotateY";
	rename -uid "D61D1606-4FD4-9D25-9718-40B22A5F77D6";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "RIndexIntermidiate_rotateZ";
	rename -uid "847DEFE0-476A-72A8-3CD8-1B8E06CC989E";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "RIndexDistal_rotateX";
	rename -uid "1707586C-4826-BE0F-99E3-D6BB08000260";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -72.764749535973223 4 -72.764749535973223
		 8 -72.764749535973223;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "RIndexDistal_rotateY";
	rename -uid "C6EA76DF-4B36-30A7-BB03-A3881BF5B8F3";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "RIndexDistal_rotateZ";
	rename -uid "E219C075-4E94-F828-EB69-AC8A98243D61";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "RMiddleProximal_rotateX";
	rename -uid "8AA80410-4CC6-BD30-FAD8-409929E771D1";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -77.941326190915632 4 -77.941326190915632
		 8 -77.941326190915632;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "RMiddleProximal_rotateY";
	rename -uid "13A24623-478F-5240-D05D-0A9DD8E3A66C";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "RMiddleProximal_rotateZ";
	rename -uid "B28AE973-4322-EC60-BCCC-329539322CE5";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "RmiddleIntermidiate_rotateX";
	rename -uid "68D180F3-440A-C326-638F-B4BEF091A725";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -77.941326190915632 4 -77.941326190915632
		 8 -77.941326190915632;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "RmiddleIntermidiate_rotateY";
	rename -uid "02C878C6-480D-728C-BB0E-0A9183A9E8A1";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "RmiddleIntermidiate_rotateZ";
	rename -uid "F6923675-4A12-4842-0183-088AEB23C13A";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "RMiddleDistal_rotateX";
	rename -uid "15496F75-41CB-2A36-2166-D19D58FF93BC";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -77.941326190915632 4 -77.941326190915632
		 8 -77.941326190915632;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "RMiddleDistal_rotateY";
	rename -uid "8F040B66-401F-5FB8-D808-1A928AB2FBE9";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "RMiddleDistal_rotateZ";
	rename -uid "BA4B78A4-4974-FED2-D758-C7AA3EDA99C9";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "RPinkProximal_rotateX";
	rename -uid "4A8691C0-4486-A476-0205-2DB0A9E3BD3D";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -68.485962028247883 4 -68.485962028247883
		 8 -68.485962028247883;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "RPinkProximal_rotateY";
	rename -uid "AB91D70D-4974-F71C-153C-66A2075E21B1";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -18.053182437149704 4 -18.053182437149704
		 8 -18.053182437149704;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "RPinkProximal_rotateZ";
	rename -uid "8579B6DA-4AD7-0467-1F77-DE8AEE3AC1A5";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 3.3452434435196454e-15 4 3.3452434435196454e-15
		 8 3.3452434435196454e-15;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "RPinkIntermidiate_rotateX";
	rename -uid "88F61466-4050-015D-CBF9-6DACAFE81898";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -68.485962028247855 4 -68.485962028247855
		 8 -68.485962028247855;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "RPinkIntermidiate_rotateY";
	rename -uid "C1FDFCAD-444B-2566-C444-7F9949BDAF7A";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "RPinkIntermidiate_rotateZ";
	rename -uid "1A43DE52-4BF9-E021-E4DA-83BFF955D65D";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "RPinkDistal_rotateX";
	rename -uid "6976A1F7-40C2-C213-F665-C2B5B5062ECA";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -68.485962028247855 4 -68.485962028247855
		 8 -68.485962028247855;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "RPinkDistal_rotateY";
	rename -uid "CE321252-4AD4-7256-9BCB-C7A4F10B66F3";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "RPinkDistal_rotateZ";
	rename -uid "B1E7D09B-4418-E58E-8E13-03BBA1A86554";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "RRingProximal_rotateX";
	rename -uid "1E1C978A-4282-1B0F-F176-A99AD0B5908C";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -69.480137590887225 4 -69.480137590887225
		 8 -69.480137590887225;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "RRingProximal_rotateY";
	rename -uid "DC9BA317-4DBF-E7E9-3C89-B4A478C1762A";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -10.062559026914826 4 -10.062559026914826
		 8 -10.062559026914826;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "RRingProximal_rotateZ";
	rename -uid "67673146-4DBE-F7A5-6259-E38A9A55513F";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -8.0756092267466335e-16 4 -8.0756092267466335e-16
		 8 -8.0756092267466335e-16;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "RRingIntermidiate_rotateX";
	rename -uid "5C8C9979-483E-6675-C6B7-81A1C0D14E6E";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -69.480137590887239 4 -69.480137590887239
		 8 -69.480137590887239;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "RRingIntermidiate_rotateY";
	rename -uid "D44BFABC-4E7B-774A-83EE-518172B8B584";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "RRingIntermidiate_rotateZ";
	rename -uid "E0B11D4D-4838-62E7-985F-EB8D5F94D74B";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "RRingDistal_rotateX";
	rename -uid "A360FE22-41F0-B418-9FD6-6DBFE29EBDA2";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -69.480137590887239 4 -69.480137590887239
		 8 -69.480137590887239;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "RRingDistal_rotateY";
	rename -uid "5AEBA06B-48B9-B6F2-0044-3FA432BEE9B2";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "RRingDistal_rotateZ";
	rename -uid "FD94DC84-40A7-ECFA-FEDA-F9B2E5CCE2D7";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "RThumbMeta_rotateX";
	rename -uid "B8CA855D-49F8-2EBE-06E5-A3A85317B1E1";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "RThumbMeta_rotateY";
	rename -uid "1047E877-4318-E264-EA15-B08F7728DAF2";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "RThumbMeta_rotateZ";
	rename -uid "82842FB0-4CE5-53F1-E303-FF8FC1071863";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "RThumbProximal_rotateX";
	rename -uid "B6D60186-477D-7A70-F4B6-D9B2F1C23317";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "RThumbProximal_rotateY";
	rename -uid "CB7C33A6-46C1-2AC1-9132-E4988968DB89";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "RThumbProximal_rotateZ";
	rename -uid "CCE99673-4FA5-A55F-A150-9B8B43D3C710";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "RThumbDistal_rotateX";
	rename -uid "B5854637-412D-7495-980F-F0B296A68427";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "RThumbDistal_rotateY";
	rename -uid "48BCFA02-4D75-ACB6-E43F-24ACA6EF21C1";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "RThumbDistal_rotateZ";
	rename -uid "94AE4852-4D52-00C3-5E23-8EA7F0B6BBCB";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "RThigh_rotateX";
	rename -uid "7D92919D-4BBD-AD23-EEC0-81A644DCEDC5";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.97001900571949 4 -0.051078659031195454
		 8 -0.051078659031195454;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "RThigh_rotateY";
	rename -uid "7642F0CA-41EA-EE99-1293-CB823F4E7DC0";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 5.26829798118764 4 5.6233791800098167
		 8 5.6233791800098167;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "RThigh_rotateZ";
	rename -uid "CB0993E2-4E73-484D-DDCE-BF97E6C45467";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -43.213830181905536 4 -64.271713046867461
		 8 -64.271713046867461;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "RShin_rotateX";
	rename -uid "F6B54109-4FB6-7909-33C9-98B6D4DFB7C2";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -3.6174843143582844 4 -5.0031990746112589
		 8 -5.0031990746112589;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "RShin_rotateY";
	rename -uid "9F720043-4A8E-2C10-80C5-C0A5DC8E66F4";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -3.4647223935551907 4 0.20650064842799531
		 8 0.20650064842799531;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "RShin_rotateZ";
	rename -uid "00680683-4032-889F-56B9-23BDD9D7E5B5";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 16.08140240938679 4 62.147685075723899
		 8 62.147685075723899;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "Rfoot_rotateX";
	rename -uid "6E77A452-40B6-7299-7C17-DD833CE9767C";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "Rfoot_rotateY";
	rename -uid "AFC9A3F4-45C6-A0D4-A5AF-7C85BECF2E7D";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "Rfoot_rotateZ";
	rename -uid "4B4FAE28-45F2-237C-1181-2E8053B309B5";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "Hip_visibility";
	rename -uid "B573AB93-48FA-1337-4C9B-C1996D307C2E";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "Hip_translateX";
	rename -uid "895B057D-40F5-73DE-D909-22B5B64F3564";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "Hip_translateY";
	rename -uid "AFBD502E-41C1-870A-8D9D-3697EA8988C0";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -2.0768938178656651 4 -3.4306265721328177
		 8 -3.4306265721328177;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "Hip_translateZ";
	rename -uid "3D3DDC6D-40D6-BC9B-CB05-C28A71B1645F";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.89730760369670304 4 0.89730760369670304
		 8 0.89730760369670304;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "Hip_scaleX";
	rename -uid "9048ED3C-4E15-B3AC-4596-BF8D59645F90";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "Hip_scaleY";
	rename -uid "DF74FC6E-4FB6-B5F0-D1C7-39B38DD61BE5";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "Hip_scaleZ";
	rename -uid "09A8881A-404D-6B18-A503-20B8FF86FE0C";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "RMiddleProximal_visibility";
	rename -uid "F30264A1-4F5F-C28F-00A9-FE89DFEB0319";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "RMiddleProximal_translateX";
	rename -uid "1D9038D9-4EE8-D7DD-605D-9287F4E947DC";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "RMiddleProximal_translateY";
	rename -uid "CC37EBF5-4507-4D28-9CBD-788D359B6A34";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "RMiddleProximal_translateZ";
	rename -uid "782A6335-4B73-AFA8-B9E2-3CBD1ADBBCA6";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "RMiddleProximal_scaleX";
	rename -uid "F6C3831C-4E53-72E0-3DE6-679B18E8E7D7";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "RMiddleProximal_scaleY";
	rename -uid "98875497-4AE7-F0D0-C082-519168E1721E";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "RMiddleProximal_scaleZ";
	rename -uid "47874E64-4409-356F-5EA8-CE91737385DA";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "RBicep_visibility";
	rename -uid "57279A04-461A-58E9-D4E3-66A812DC9AFF";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "RBicep_translateX";
	rename -uid "B30EF86A-4D43-60A3-A9D5-F5A365AF0A23";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "RBicep_translateY";
	rename -uid "9924E026-46F1-8A1A-2CF6-3294FC261E7D";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "RBicep_translateZ";
	rename -uid "A1D3D462-467F-8236-7D9B-F2B0FEF88B89";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "RBicep_scaleX";
	rename -uid "F5CF9D36-410A-EE09-121C-33B8B8D141DC";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "RBicep_scaleY";
	rename -uid "44958DBE-409D-A0A2-B313-1AA033C07A45";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "RBicep_scaleZ";
	rename -uid "42E4C4EA-46D0-0BDC-13D6-B5885839B244";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "RThumbDistal_visibility";
	rename -uid "CE1FC1BD-44DC-1D71-2221-06A410481746";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "RThumbDistal_translateX";
	rename -uid "338B82A1-41A8-0BFB-E2E2-59BBB846543D";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "RThumbDistal_translateY";
	rename -uid "41910E11-4131-52EB-5C86-C3AA6DD6454F";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "RThumbDistal_translateZ";
	rename -uid "267E97C0-4C7F-30D0-73DF-68AF13E1D306";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "RThumbDistal_scaleX";
	rename -uid "8FDE28C6-46BB-5FE6-64A0-6E831D3FBD20";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "RThumbDistal_scaleY";
	rename -uid "85CF1EE9-4D4F-55FB-2928-81A41767B498";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "RThumbDistal_scaleZ";
	rename -uid "26683757-4D1F-6BDE-ED31-2B967FF890D2";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "Rfoot_visibility";
	rename -uid "431369D8-4BDF-792D-D3E0-6CA76C55723E";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "Rfoot_translateX";
	rename -uid "4485CCC0-4DA6-663A-F542-6391211A059B";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "Rfoot_translateY";
	rename -uid "EFE1DC6D-4155-26F6-25B1-F28FE2B549FA";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "Rfoot_translateZ";
	rename -uid "164DFEC0-4EEF-FBB1-55B9-74AF6D428EC5";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "Rfoot_scaleX";
	rename -uid "D75FCA61-4D6C-4970-28B8-49B614BB48DE";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "Rfoot_scaleY";
	rename -uid "CBDBB31B-48CD-0491-D583-58A968671867";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "Rfoot_scaleZ";
	rename -uid "EE5CF0BB-43A0-33AB-C208-50A1D123BCA5";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "UpTorso_visibility";
	rename -uid "E24C605A-4E1F-95F6-C96A-0984BB934345";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "UpTorso_translateX";
	rename -uid "EC1CEAA4-458C-5D0D-9CB3-418FCC6DB863";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "UpTorso_translateY";
	rename -uid "883A9772-4949-EF0A-40BD-67920D0C31FD";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "UpTorso_translateZ";
	rename -uid "61D324B1-45F9-724C-4CB2-23AD004AEF96";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "UpTorso_scaleX";
	rename -uid "00AD9993-4A4D-BFD3-E6A7-D5B9D4E951B2";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "UpTorso_scaleY";
	rename -uid "D705022A-4355-ECE3-9348-E694904B9B71";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "UpTorso_scaleZ";
	rename -uid "FBF027A6-45A3-0415-DD88-1AA1A49D2218";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "RThumbMeta_visibility";
	rename -uid "D39DE421-455F-D9F0-69B8-4D977A43FE2F";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "RThumbMeta_translateX";
	rename -uid "6D091EA9-4295-CDF3-F6D2-8EADA52158FF";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "RThumbMeta_translateY";
	rename -uid "36B1F2E2-43EF-6D7B-E2A5-4BB3AB2544CB";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "RThumbMeta_translateZ";
	rename -uid "ED8F4F8A-4F18-454A-197B-DAA250D819BA";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "RThumbMeta_scaleX";
	rename -uid "AC9A0FFF-44B7-13D6-11DD-46B5F154793F";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "RThumbMeta_scaleY";
	rename -uid "EC6F8EC4-493B-A799-8ACD-DFA0E3A780BF";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "RThumbMeta_scaleZ";
	rename -uid "CF290313-4B67-0431-AB6D-49B28F43DCDC";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "RRingIntermidiate_visibility";
	rename -uid "CA438A95-4D7F-E2FF-082B-A3B996AF0D0C";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "RRingIntermidiate_translateX";
	rename -uid "C06AF2BC-49D5-B40F-E3A1-9EA145A414B9";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "RRingIntermidiate_translateY";
	rename -uid "B3950B0C-4FD6-3C78-6DEB-5F9836704BC2";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "RRingIntermidiate_translateZ";
	rename -uid "BE9181D2-42D4-F114-2266-FDA6477C449C";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "RRingIntermidiate_scaleX";
	rename -uid "8D749C0D-49A4-8C8D-7FA9-1D832349E72D";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "RRingIntermidiate_scaleY";
	rename -uid "ACE3C4BD-4562-AC93-BF94-148A2F1FB752";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "RRingIntermidiate_scaleZ";
	rename -uid "C475D9A7-466F-15C1-91BA-38ABFE94BEBE";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "RPinkProximal_visibility";
	rename -uid "16405F91-4C00-B897-543C-41AA44CF7095";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "RPinkProximal_translateX";
	rename -uid "591CF663-4969-4D1F-D04F-47A03CABF85E";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "RPinkProximal_translateY";
	rename -uid "9949CFAD-4B72-F4DB-0CC1-5F81DC6BA4F3";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "RPinkProximal_translateZ";
	rename -uid "BCC3E28D-4663-C8C7-009F-6A9851A41FDB";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "RPinkProximal_scaleX";
	rename -uid "768E1450-41BD-150C-B00B-7782AC3973E7";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "RPinkProximal_scaleY";
	rename -uid "66556F1C-436A-7B11-6480-05B6E9D13560";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "RPinkProximal_scaleZ";
	rename -uid "65696908-4F03-2CAC-5871-8CB6096819E4";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "LThumbProximal_visibility";
	rename -uid "C531D0FE-4098-4856-9C58-18AFEAA7E115";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "LThumbProximal_translateX";
	rename -uid "88CDFE99-417F-C051-4A4A-558C8F97209D";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "LThumbProximal_translateY";
	rename -uid "44F33B24-4891-433B-43B4-37BF549238A8";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "LThumbProximal_translateZ";
	rename -uid "473709CC-43F1-60FD-8289-B0B96C66E532";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "LThumbProximal_scaleX";
	rename -uid "EC892DB3-4BB3-6878-40E5-1BBB789F9CCC";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "LThumbProximal_scaleY";
	rename -uid "D404E33B-4968-B47F-158E-A39CAAD0F1F8";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "LThumbProximal_scaleZ";
	rename -uid "F52767F9-46A5-0C3F-3205-32ACAF59BC0E";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "RIndexDistal_visibility";
	rename -uid "D94DA947-4381-1991-66D8-1C8AF9353324";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "RIndexDistal_translateX";
	rename -uid "62D9D8B6-42DA-D26A-7692-448778CED558";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "RIndexDistal_translateY";
	rename -uid "EF591A24-4C2F-64E8-D785-EA9B664CF4CB";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "RIndexDistal_translateZ";
	rename -uid "670E4C5E-4756-B7FD-1683-329058D12F26";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "RIndexDistal_scaleX";
	rename -uid "461CA481-4B92-1E16-7458-A4B9BD1CDCDC";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "RIndexDistal_scaleY";
	rename -uid "E5F1F6AC-4BB1-E001-E46B-0BB7EBA6D5B8";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "RIndexDistal_scaleZ";
	rename -uid "08C622D1-4057-5D4A-F647-1193D3EE3801";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "RThigh_visibility";
	rename -uid "8823D9A1-4AF7-94F2-058F-C2B23F64E26E";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "RThigh_translateX";
	rename -uid "286524E7-4951-3FBD-9DF3-98AFE49D79BE";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "RThigh_translateY";
	rename -uid "C0ECAB4A-426B-B762-DE8B-04A5167FC3D5";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "RThigh_translateZ";
	rename -uid "373093A8-42BB-630B-D567-DE9652188CEF";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "RThigh_scaleX";
	rename -uid "18C5D825-4646-8723-562A-F9A998817DA8";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "RThigh_scaleY";
	rename -uid "C4FAC88B-4124-18E9-4B33-8EBD18AFC768";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "RThigh_scaleZ";
	rename -uid "1F3A5764-4C43-B4DF-7756-4DAF5924E721";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "RPinkDistal_visibility";
	rename -uid "578E4844-485B-23F2-35D8-D9BB9223A373";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "RPinkDistal_translateX";
	rename -uid "C2D0EB8C-45D0-CF1C-9F4A-82828F618B1B";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "RPinkDistal_translateY";
	rename -uid "B784424B-4302-EE43-6952-34ABE311C19B";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "RPinkDistal_translateZ";
	rename -uid "EB40889C-4E65-4800-FAFD-E686A0A48699";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "RPinkDistal_scaleX";
	rename -uid "44A384EF-4C69-37C5-01A5-2CBBEFB82FC5";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "RPinkDistal_scaleY";
	rename -uid "B8A994E9-44F4-506C-28C5-8080976449C0";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "RPinkDistal_scaleZ";
	rename -uid "ECA45AE4-4213-618A-B205-09ABC87ED1E2";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "RShin_visibility";
	rename -uid "4F662FF9-4C33-087E-556E-00BC412B9C6B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "RShin_translateX";
	rename -uid "8D463129-48EB-0D23-675E-14A19044F617";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "RShin_translateY";
	rename -uid "5F1CE0DF-4400-1BCE-EA8B-52AC59DF0A95";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "RShin_translateZ";
	rename -uid "A932D3F2-438D-DCE2-766D-D58BBFC6CF07";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "RShin_scaleX";
	rename -uid "895FFA25-48F9-D411-E89D-8A863046AA1A";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "RShin_scaleY";
	rename -uid "623F0969-430A-D9FE-7811-00BB6D52DB6E";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "RShin_scaleZ";
	rename -uid "399C8A24-4B74-5AA0-866D-289785726710";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "RmiddleIntermidiate_visibility";
	rename -uid "F60322F2-4425-8DF5-8848-6882C9E1B957";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "RmiddleIntermidiate_translateX";
	rename -uid "482C22A1-44A5-9B87-7BE8-B6855F1CFA76";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "RmiddleIntermidiate_translateY";
	rename -uid "2579CE5E-4169-D98A-6822-32B0ADCBA83D";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "RmiddleIntermidiate_translateZ";
	rename -uid "20C5E564-42D1-21DD-2714-A0B55FC83A6C";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "RmiddleIntermidiate_scaleX";
	rename -uid "15F5C1C5-4132-76B0-FAA5-04B602349563";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "RmiddleIntermidiate_scaleY";
	rename -uid "23FE4EDC-43E1-96DF-7D6D-39B8D28A34B2";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "RmiddleIntermidiate_scaleZ";
	rename -uid "08383CAC-4272-C776-F106-139805B9DEA4";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "LBicep1_visibility";
	rename -uid "3EC6FCEC-4737-FDC0-EB4E-20950907E298";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "LBicep1_translateX";
	rename -uid "E6F6032A-4DCC-96CE-335C-8CB631ACE9F7";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "LBicep1_translateY";
	rename -uid "08399B40-4768-B6C0-98D2-B2BB6EA372D5";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "LBicep1_translateZ";
	rename -uid "15B952C2-45AA-46FF-570B-A1A2F1B63E92";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 4.7643751190339385 4 4.7643751190339385
		 8 4.7643751190339385;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "LBicep1_scaleX";
	rename -uid "03F326BD-40C8-F8B6-898F-8EA1A93A07A9";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "LBicep1_scaleY";
	rename -uid "3FB1ECF5-45BD-A192-904D-7F90934D3387";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "LBicep1_scaleZ";
	rename -uid "8627ACE4-4068-1DFA-7F04-AF8AEE630A28";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "RPalm_visibility";
	rename -uid "52C53AD7-4F28-5DB7-78D9-80ABFE6E63C3";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "RPalm_translateX";
	rename -uid "4E71BAA6-4492-011C-7382-4B82E20B0B4C";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "RPalm_translateY";
	rename -uid "80009608-4B1A-24AA-FF49-86B91CAF96C6";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "RPalm_translateZ";
	rename -uid "24B631CD-4CAC-B39A-7593-59A02B59D7FA";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "RPalm_scaleX";
	rename -uid "913C7067-47F4-2376-334F-81A936B95AED";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "RPalm_scaleY";
	rename -uid "88A4B985-4042-2F27-6381-D5AF99BE3977";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "RPalm_scaleZ";
	rename -uid "8CFE2721-4257-CC4C-8DD4-CC9062DE6D02";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "RForearm_visibility";
	rename -uid "ACCD56D0-4AF5-1599-09ED-2EA3A4A06222";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "RForearm_translateX";
	rename -uid "4210C4B8-4363-1044-1765-F8929B556A75";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "RForearm_translateY";
	rename -uid "0BF087F8-4D8E-810A-8BA8-CBBA0538A785";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "RForearm_translateZ";
	rename -uid "9087F3A0-400E-CB3F-8C5B-8E87FD474E67";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "RForearm_scaleX";
	rename -uid "B9B1ACFF-4ABB-1A51-C2B2-70942E6EFE1A";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "RForearm_scaleY";
	rename -uid "02358A6E-423F-9A2F-B303-1CB836AF457C";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "RForearm_scaleZ";
	rename -uid "94A2D5E0-4C4D-832E-AEEA-99A4672C2B2D";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "Head_visibility";
	rename -uid "C2030F26-4B85-E819-BB07-AAAE68AD6C59";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "Head_translateX";
	rename -uid "879D70C5-4A0F-F2CE-01A4-88973D59E68D";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "Head_translateY";
	rename -uid "5F676FBB-4543-B242-2857-0287F46CC949";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "Head_translateZ";
	rename -uid "C5C82662-4440-FED7-8E73-BAAB3D8B1F3F";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "Head_scaleX";
	rename -uid "AB2C5F3C-4641-2172-FD48-1DAED576CD35";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "Head_scaleY";
	rename -uid "862D6C2B-4AFE-11D3-598A-2FB3C560D9FC";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "Head_scaleZ";
	rename -uid "E9F8F990-4EF4-B4B7-C3AA-8CAC9B8BAD27";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "RRingProximal_visibility";
	rename -uid "AF566421-4831-12AC-EB24-A893FB18D1E5";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "RRingProximal_translateX";
	rename -uid "308ADC91-4342-114F-5EB7-4DA7D92828D9";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "RRingProximal_translateY";
	rename -uid "5967C588-48A8-4D60-50E1-3EBD556C545D";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "RRingProximal_translateZ";
	rename -uid "E00DE0B8-4BCE-8A78-4283-7085134A5BDB";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "RRingProximal_scaleX";
	rename -uid "14EEA3DA-478B-9BB0-2233-1A90632A0311";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "RRingProximal_scaleY";
	rename -uid "F0584D94-4441-5E40-467D-1EA6A6908342";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "RRingProximal_scaleZ";
	rename -uid "92EFF6B8-43CA-B607-0FE1-32A57D97F017";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "RPinkIntermidiate_visibility";
	rename -uid "09F050EE-4793-B014-A5F2-6A96EACD8B81";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "RPinkIntermidiate_translateX";
	rename -uid "F82A334E-45D9-EB56-7B82-C3B0A04E0504";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "RPinkIntermidiate_translateY";
	rename -uid "CB3EA126-4417-4030-A49F-8BB006486C87";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "RPinkIntermidiate_translateZ";
	rename -uid "4394F86C-45F4-AD7B-2BFE-81975E35454B";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "RPinkIntermidiate_scaleX";
	rename -uid "D654A9B8-4878-B683-17EF-07BFE8364920";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "RPinkIntermidiate_scaleY";
	rename -uid "01607156-406F-9C06-213F-10A305C32937";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "RPinkIntermidiate_scaleZ";
	rename -uid "AC37F72F-426D-731F-0597-CA9BCE933DC7";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "RRingDistal_visibility";
	rename -uid "0A1BE020-4ED6-0941-1DA1-46B9BA532BD3";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "RRingDistal_translateX";
	rename -uid "54141F77-4B1B-A96D-E47C-BEA4921DFD35";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "RRingDistal_translateY";
	rename -uid "4510A88C-4EF0-C234-12EA-5D84E435E83C";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "RRingDistal_translateZ";
	rename -uid "7B1B2A4F-412F-BB93-2BCB-87AF5E5E91E0";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "RRingDistal_scaleX";
	rename -uid "36EAEC56-4A07-C8CC-38F3-DAAA57F6BA79";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "RRingDistal_scaleY";
	rename -uid "7D4BAB21-4CFF-1302-F08A-8DBA8F57B746";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "RRingDistal_scaleZ";
	rename -uid "76F602BD-47B6-2A7C-7393-88B727E0D7DB";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "RIndexIntermidiate_visibility";
	rename -uid "DE6DF9D0-41C3-79EF-3A36-C7A1B4BC7CCD";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "RIndexIntermidiate_translateX";
	rename -uid "A0513950-4006-4D5A-F40E-02A1EA619B73";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "RIndexIntermidiate_translateY";
	rename -uid "F33B895F-4C93-301F-C4F6-13BADD2B9C9D";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "RIndexIntermidiate_translateZ";
	rename -uid "60F5FABD-4640-28A1-351B-9CAA739B245C";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "RIndexIntermidiate_scaleX";
	rename -uid "70700CF5-4A2F-FA1D-FA06-86B6C4EF67E6";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "RIndexIntermidiate_scaleY";
	rename -uid "0CF5640C-4DFA-85AD-9269-C0BB72E337B6";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "RIndexIntermidiate_scaleZ";
	rename -uid "578BE507-452A-C466-F93C-1997F88A2BC6";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "LowTorso_visibility";
	rename -uid "8A3E9A4E-4624-944D-0A7B-49B56E73BBE3";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "LowTorso_translateX";
	rename -uid "667558C9-4121-0AEA-44A2-6BA184E0E1BD";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "LowTorso_translateY";
	rename -uid "F6C2632A-4599-9D1A-7716-5194CCE486E2";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "LowTorso_translateZ";
	rename -uid "59633E90-4BD0-1EA5-5F80-48A2D6AE234D";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "LowTorso_scaleX";
	rename -uid "FD44D9B8-42D3-D55C-52DF-C2B33DB98FB5";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "LowTorso_scaleY";
	rename -uid "B48DBE46-4030-1481-BA4C-CCA7610AD5EF";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "LowTorso_scaleZ";
	rename -uid "A73E6360-456E-859E-EDBA-0D9953D0E293";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "RIndexProximal_visibility";
	rename -uid "8A9ED9FF-49D3-4647-6D9F-A5847EAFD827";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "RIndexProximal_translateX";
	rename -uid "719814BB-41CD-D568-0A12-B080B149029D";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "RIndexProximal_translateY";
	rename -uid "837798E1-4C9C-399F-113C-E7917D1309AF";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "RIndexProximal_translateZ";
	rename -uid "5B8E7D5A-4E79-3A17-8675-529C992DD090";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "RIndexProximal_scaleX";
	rename -uid "0AC82841-4987-A250-BFBA-689074051752";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "RIndexProximal_scaleY";
	rename -uid "E4106ABD-41AF-E967-F63F-56A8B57B365C";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "RIndexProximal_scaleZ";
	rename -uid "8204EA46-4DBB-D0F9-B41A-DD88286E5AD5";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "Neck_visibility";
	rename -uid "5D3EE66A-416C-70C1-F68A-D3BC0D4CD57B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "Neck_translateX";
	rename -uid "29720DE5-42C6-3BAE-7419-A78423832E48";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "Neck_translateY";
	rename -uid "D0327996-4130-A946-4B85-779D92297EB3";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "Neck_translateZ";
	rename -uid "F75A0F81-480D-CA37-B89E-8B8F1B884444";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "Neck_scaleX";
	rename -uid "09E79F95-4191-B9B5-3E24-748867FF8FBC";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "Neck_scaleY";
	rename -uid "D9E4BD31-4BEF-C18A-A31D-8999D5A86CE8";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "Neck_scaleZ";
	rename -uid "67F06FD1-4466-8250-24C9-F89B0882277B";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "RThumbProximal_visibility";
	rename -uid "1EEBEE7E-4D57-C830-BBF8-E38F4D6633C9";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "RThumbProximal_translateX";
	rename -uid "886BF99E-413B-4EC9-4930-6A8B7E75CAA2";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "RThumbProximal_translateY";
	rename -uid "844D7251-4274-25C4-E919-A088A8A58A8A";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "RThumbProximal_translateZ";
	rename -uid "CEA1ACF3-46D2-4235-B2CF-F5B983EA27C4";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "RThumbProximal_scaleX";
	rename -uid "666FEE0E-4B66-2F84-E975-6C91E2205C47";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "RThumbProximal_scaleY";
	rename -uid "796E3E41-41D6-177D-5C7A-40AC8DC7CAD6";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "RThumbProximal_scaleZ";
	rename -uid "97266036-4ADE-C9BD-519B-928BED3E754F";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "RMiddleDistal_visibility";
	rename -uid "D9EA195B-445A-92FC-B92F-3BA6B82111DD";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "RMiddleDistal_translateX";
	rename -uid "0A86350B-4261-294C-B132-41AF2A2C373A";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "RMiddleDistal_translateY";
	rename -uid "6110252D-4EA2-D38D-9ADE-AE8B9B4E4832";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "RMiddleDistal_translateZ";
	rename -uid "94D73673-47E5-9BBA-E5C2-F9B0180F066C";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "RMiddleDistal_scaleX";
	rename -uid "86A923C3-46D2-B3E4-4A14-34B3F16EAB79";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "RMiddleDistal_scaleY";
	rename -uid "BF7DAC30-45F6-A670-3989-6980F174D87E";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "RMiddleDistal_scaleZ";
	rename -uid "96289980-4215-8BA2-24AF-CFA4DC4320D1";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "LMiddleProximal_visibility";
	rename -uid "5AB333EC-4A36-17B8-88CE-379F0A291885";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "LMiddleProximal_translateX";
	rename -uid "00B8FD6A-4593-26A9-87C7-84A364222789";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "LMiddleProximal_translateY";
	rename -uid "17EDEA88-4921-8033-016E-A28D43BB205F";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "LMiddleProximal_translateZ";
	rename -uid "90CC5412-4C1C-3B16-30C0-EC9EFDE29214";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "LMiddleProximal_scaleX";
	rename -uid "EA801F48-4372-FDE1-FA9A-7CBE865281AC";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "LMiddleProximal_scaleY";
	rename -uid "14107921-47E6-3F3E-FAE6-E7858015B372";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "LMiddleProximal_scaleZ";
	rename -uid "4341D77B-49F0-DB5B-AD8A-5BB97DB75D51";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "LRingProximal_visibility";
	rename -uid "4AE9EC82-4750-C82A-E7ED-87A87E2D7843";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "LRingProximal_translateX";
	rename -uid "7153E15E-4A73-B288-F933-418B4F3F9477";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "LRingProximal_translateY";
	rename -uid "D44E3E6E-465F-7B6B-E9E8-A29D48869360";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "LRingProximal_translateZ";
	rename -uid "58BE1846-42A0-7C53-662D-9EB5F399D82C";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "LRingProximal_scaleX";
	rename -uid "678F4FFD-4285-7681-F1E3-43B73DCBD179";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "LRingProximal_scaleY";
	rename -uid "101E7FA8-445B-BB44-57E5-49BE89C60BE0";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "LRingProximal_scaleZ";
	rename -uid "993E0EBE-4564-84D0-AA59-919F50FC1B32";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "LPalm_visibility";
	rename -uid "9320159C-4FF3-2FAC-5687-70AF49D8B70F";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "LPalm_translateX";
	rename -uid "1A992C61-416B-3AB5-924B-879FDF018A6F";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "LPalm_translateY";
	rename -uid "7733B633-4C08-7AFA-93EC-5B8B92B0DE0E";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "LPalm_translateZ";
	rename -uid "19FF24FC-428B-BA2F-1922-A7A108631C05";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "LPalm_scaleX";
	rename -uid "D25A43DA-4637-9CFC-E2CA-2B84638D8057";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "LPalm_scaleY";
	rename -uid "018E764D-4773-1FA0-8022-509E43569DBB";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "LPalm_scaleZ";
	rename -uid "025C5606-4D37-8933-993B-0F84768379FA";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "LIndexIntermidiate_visibility";
	rename -uid "28364310-4C4E-3D59-9EBA-4C8F631D42FF";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "LIndexIntermidiate_translateX";
	rename -uid "960ED15A-45F8-F5DD-E324-BD811F085784";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "LIndexIntermidiate_translateY";
	rename -uid "B35C53FD-4EB2-DBB5-27EE-C9B6D2FD3D5B";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "LIndexIntermidiate_translateZ";
	rename -uid "0C9FF691-4F64-086B-AE63-58B2AF65B711";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "LIndexIntermidiate_scaleX";
	rename -uid "03D44D47-44DC-3F1C-CF93-D08AF9A8B25A";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "LIndexIntermidiate_scaleY";
	rename -uid "29668326-4DFC-B990-0EB2-AD9AA538D6F6";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "LIndexIntermidiate_scaleZ";
	rename -uid "9A80BD7E-4F92-0E8C-1C08-F985909B48FA";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "LIndexProximal_visibility";
	rename -uid "3A001858-4395-D8F6-8F06-CABD2E418704";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "LIndexProximal_translateX";
	rename -uid "136F74B7-46DA-5649-AA9C-AE903ADF02D3";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "LIndexProximal_translateY";
	rename -uid "6D5A7F2C-4523-513D-E756-46874C63D3DE";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "LIndexProximal_translateZ";
	rename -uid "1A6CB1DB-463D-9D1E-F1CC-F58BD8F3C74F";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "LIndexProximal_scaleX";
	rename -uid "F70CDC1F-47F2-1FAC-C01B-B7B2709F3FB1";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "LIndexProximal_scaleY";
	rename -uid "BAB4A36F-40C2-A4D0-A0C9-DA8581688216";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "LIndexProximal_scaleZ";
	rename -uid "B74264AF-4B69-3480-BEA2-1EB2CDC2086A";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "LForearm_visibility";
	rename -uid "87BC0188-4C1F-F0F2-FB1E-899C79D56992";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "LForearm_translateX";
	rename -uid "3EE5E4AB-43E8-340C-55F3-3C80DB0BA81B";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "LForearm_translateY";
	rename -uid "49BBAA9D-497A-5039-4ADF-21A3240C69CC";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "LForearm_translateZ";
	rename -uid "19BFD232-4749-49C1-0DAA-49B78587B6BC";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "LForearm_scaleX";
	rename -uid "CAFFB533-49BA-7BB3-7B54-B69DF589F778";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "LForearm_scaleY";
	rename -uid "24E44052-4AA8-52E1-DF6C-1C96C4C811E7";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "LForearm_scaleZ";
	rename -uid "3B582D05-499B-B2A7-1AA4-9C957EBCBEFE";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "LThigh1_visibility";
	rename -uid "8F681FEE-4994-8868-E19B-57B8DA1145D1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "LThigh1_translateX";
	rename -uid "1AE9C3E3-46A9-9EA6-A594-2B944C539B0D";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "LThigh1_translateY";
	rename -uid "EA4004E5-47A3-6444-E455-E4A2A7A066FB";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "LThigh1_translateZ";
	rename -uid "F6EC26EE-4610-94FA-8824-95AF362D5C72";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 2.8449830261775078 4 2.8449830261775078
		 8 2.8449830261775078;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "LThigh1_scaleX";
	rename -uid "D71D6D0E-41A5-B9A0-25F9-9BABE76128CD";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "LThigh1_scaleY";
	rename -uid "4F7DBE57-47C5-F8C2-4A7C-A5BF2E5EBD13";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "LThigh1_scaleZ";
	rename -uid "6C89797C-4E4A-8B2D-0AAD-CABBF9DB2EFA";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "LRingDistal_visibility";
	rename -uid "59890402-438C-77E7-4E42-F09A466C4F18";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "LRingDistal_translateX";
	rename -uid "10120521-428C-1D1F-79C2-5EB872DD5409";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "LRingDistal_translateY";
	rename -uid "9AB929CF-49E6-583A-FF8B-E9AD6F62B11C";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "LRingDistal_translateZ";
	rename -uid "B3926A3B-415D-0CBC-19D4-1CB9AA44A72D";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "LRingDistal_scaleX";
	rename -uid "FA69FAFA-4276-BBC0-88AF-01AE69057B56";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "LRingDistal_scaleY";
	rename -uid "41317686-48E3-8C25-8A83-788BB382E05F";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "LRingDistal_scaleZ";
	rename -uid "3D69E168-495C-97A2-A036-40B667AA971E";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "LRingIntermidiate_visibility";
	rename -uid "E1C0E9D1-4F96-183F-9393-02AFD9641DA6";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "LRingIntermidiate_translateX";
	rename -uid "25318E06-4584-3448-8ACF-7DA2204D4CEC";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "LRingIntermidiate_translateY";
	rename -uid "D36A29BC-4119-1531-0E9F-A9BB30DE5A38";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "LRingIntermidiate_translateZ";
	rename -uid "CEF6B485-4481-BCB5-8551-4BA85124EEF3";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "LRingIntermidiate_scaleX";
	rename -uid "448DFF2E-48A9-471A-70C6-B9998FF83EA7";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "LRingIntermidiate_scaleY";
	rename -uid "0F927F3F-45BF-4841-B366-268F23C8937C";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "LRingIntermidiate_scaleZ";
	rename -uid "6B6EFD14-492D-B7CF-5496-18BDAFE8A616";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "LIndexDistal_visibility";
	rename -uid "C00F8210-4445-DFB3-7D5A-43B10C0199BE";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "LIndexDistal_translateX";
	rename -uid "BA815068-4019-0F16-7B7E-4BA3219E6A1F";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "LIndexDistal_translateY";
	rename -uid "CCEC9D13-4B74-260F-F366-F99EFE39C0EA";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "LIndexDistal_translateZ";
	rename -uid "1DFDFFDE-4883-16E8-FC52-9FB4E864BA6E";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "LIndexDistal_scaleX";
	rename -uid "29C657BE-420A-627F-6793-6581D644280B";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "LIndexDistal_scaleY";
	rename -uid "56F9B0CF-4D85-A6D7-709A-B6A59DF04488";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "LIndexDistal_scaleZ";
	rename -uid "688ED996-478D-7746-E0AE-8095EF8E8F44";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "LThumbDistal_visibility";
	rename -uid "4C3F0AF2-4D6D-0982-C6D4-1E878FDACDA8";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "LThumbDistal_translateX";
	rename -uid "4657ED8C-445F-92FF-56B7-03BD67F742DE";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "LThumbDistal_translateY";
	rename -uid "8CE6378E-409A-5B14-B44C-91B8F6A32A4B";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "LThumbDistal_translateZ";
	rename -uid "EB3952CF-4620-B4F7-0F6F-EFAABB54A1EF";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "LThumbDistal_scaleX";
	rename -uid "69E666BB-4FCA-4E7D-D93C-53A32F33497F";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "LThumbDistal_scaleY";
	rename -uid "906C1A8A-4D0F-33CB-7951-22B00AD7B601";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "LThumbDistal_scaleZ";
	rename -uid "2AA359F1-48A0-7BA1-4D1F-2A8C56D73938";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "LThumbMeta_visibility";
	rename -uid "F438693C-46C5-7B1A-287B-14A7C90C549D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "LThumbMeta_translateX";
	rename -uid "3B10256E-421B-8C69-1D58-4F8F5BFADDF2";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "LThumbMeta_translateY";
	rename -uid "4119EC0C-4431-2AC3-F28A-C7897E371DCB";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "LThumbMeta_translateZ";
	rename -uid "22EF1BB2-4997-E775-6D7A-B1A76B31A786";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "LThumbMeta_scaleX";
	rename -uid "A17ED6C6-4516-FAC2-A70C-838A90A6BF56";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "LThumbMeta_scaleY";
	rename -uid "79FB8990-4816-9574-3468-DA9F8FCE1F54";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "LThumbMeta_scaleZ";
	rename -uid "8142C6DF-4FC8-19D5-51DF-E3AADD516D3E";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "LPinkProximal_visibility";
	rename -uid "FABD4270-4DB1-71B5-48D7-A9BEF6CFE12E";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "LPinkProximal_translateX";
	rename -uid "6005A35A-4D0B-0441-84A0-C8B356CBD385";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "LPinkProximal_translateY";
	rename -uid "D40E9512-40E8-2662-89E5-E58A2D7ADCF5";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "LPinkProximal_translateZ";
	rename -uid "AA58BF83-48EF-7ECB-A1CB-03A3112A57A5";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "LPinkProximal_scaleX";
	rename -uid "921449A3-4F9A-E396-A7C8-A1AC36432C55";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "LPinkProximal_scaleY";
	rename -uid "5A991421-45F1-9158-F6BF-98B3F5AC132D";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "LPinkProximal_scaleZ";
	rename -uid "329BA7EB-4714-9410-F5F9-569C060B0270";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "LmiddleIntermidiate_visibility";
	rename -uid "0B056D8B-4D5F-BA86-6FC3-CEBDD8C1260A";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "LmiddleIntermidiate_translateX";
	rename -uid "D20F6E91-4DB2-FD2B-4D1F-1AB869B435F2";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "LmiddleIntermidiate_translateY";
	rename -uid "2AEAB2C1-4A7D-CAF1-3C37-5995D893DD51";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "LmiddleIntermidiate_translateZ";
	rename -uid "8AC3159A-4A1E-F60F-119A-2E8B02DDF6BF";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "LmiddleIntermidiate_scaleX";
	rename -uid "C0A2FBB4-4306-E55C-92A2-32BF0E0DE126";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "LmiddleIntermidiate_scaleY";
	rename -uid "8BBAAA9D-4DF6-E5C0-9C1A-249682B9C4B0";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "LmiddleIntermidiate_scaleZ";
	rename -uid "37B7FE53-4512-DF2C-27FB-CCB5147F83F8";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "LShin_visibility";
	rename -uid "A94C48B0-47B8-7C5E-B1F2-8289FF10AA41";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "LShin_translateX";
	rename -uid "B58A05E5-47C1-7E5B-A24F-338ED6907211";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "LShin_translateY";
	rename -uid "1131E459-4BA1-82E5-C8C5-CCA0E6C598E1";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "LShin_translateZ";
	rename -uid "26120E3F-49CD-4AF6-152A-4A86B930EA03";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "LShin_scaleX";
	rename -uid "F8CE86BB-49FE-6087-B7B6-9D938DF74AB0";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "LShin_scaleY";
	rename -uid "35765F7C-40C6-FD9C-F943-6C88486776D8";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "LShin_scaleZ";
	rename -uid "C2B568AA-4C40-417D-CB8F-5DB76392DB0E";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "LMiddleDistal_visibility";
	rename -uid "EFB5AF28-4FF5-E1AD-25C6-088E6559B5A9";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "LMiddleDistal_translateX";
	rename -uid "F099EC00-4242-93AB-BEF7-99ADF81BCDE7";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "LMiddleDistal_translateY";
	rename -uid "8136905A-4B9C-E389-DBEA-E989874A9FAA";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "LMiddleDistal_translateZ";
	rename -uid "68B89D01-495C-A74C-30B6-DAA100F19590";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "LMiddleDistal_scaleX";
	rename -uid "9F442756-4C4E-41BC-7F04-B9BF62F3920B";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "LMiddleDistal_scaleY";
	rename -uid "CD31571B-4331-0B2C-8C7E-0F85ADB539D8";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "LMiddleDistal_scaleZ";
	rename -uid "4A9D6E33-4666-7FE1-D232-6AA89916E213";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "Lfoot_visibility";
	rename -uid "DD8B8C0C-4A0E-D177-72E4-73BEE2A9022A";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "Lfoot_translateX";
	rename -uid "4B2A7330-4ACA-6454-4B24-7DA9D97409CD";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "Lfoot_translateY";
	rename -uid "8EB858F1-4369-6A82-5658-6E9A408E3F98";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "Lfoot_translateZ";
	rename -uid "4E2C7896-420A-B796-4D62-D79AC6A134A9";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "Lfoot_scaleX";
	rename -uid "E743E288-4D9E-7E73-0527-94A246B9245A";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "Lfoot_scaleY";
	rename -uid "23F6C4BB-4DA2-1C32-03A7-589E74235E04";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "Lfoot_scaleZ";
	rename -uid "29F127B3-4F8F-7C87-3E41-FAAFB2EA4DD8";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "LPinkIntermidiate_visibility";
	rename -uid "C1409E89-4F4A-96D3-9D4F-82B32BE6EE95";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "LPinkIntermidiate_translateX";
	rename -uid "1A1F7075-42E8-2E72-DAAC-BB85CC68FC95";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "LPinkIntermidiate_translateY";
	rename -uid "7CFB65C6-4DD1-2E33-C530-D88F8351FBEE";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "LPinkIntermidiate_translateZ";
	rename -uid "440D373D-420D-84B0-971F-868866BA692E";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "LPinkIntermidiate_scaleX";
	rename -uid "3011E0FA-4858-3A52-B145-55987A122C25";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "LPinkIntermidiate_scaleY";
	rename -uid "1B28F77B-47A5-9E35-0466-C1AB48ACC05D";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "LPinkIntermidiate_scaleZ";
	rename -uid "29A106D4-455A-20DA-88C4-28897F567C31";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "LPinkDistal_visibility";
	rename -uid "7340BFAE-4285-9F33-C8F0-2695EC2C9CCC";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "LPinkDistal_translateX";
	rename -uid "54F18731-42C2-260B-43E5-4BA644A6EE8A";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "LPinkDistal_translateY";
	rename -uid "DB8B811E-4602-CD1E-1A92-8DBFD66D216B";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "LPinkDistal_translateZ";
	rename -uid "D014BDE8-4686-427D-581D-C48E2AC20998";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 8 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "LPinkDistal_scaleX";
	rename -uid "E347EDC4-4201-4FB9-4C72-AD8DEE810B5D";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "LPinkDistal_scaleY";
	rename -uid "226887CB-4878-4A42-6C15-3C94381E775B";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "LPinkDistal_scaleZ";
	rename -uid "FB10C882-4719-478D-1DC9-36AC69D9F300";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 4 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
select -ne :time1;
	setAttr ".o" 8;
	setAttr ".unw" 8;
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
	setAttr -s 47 ".dsm";
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
connectAttr "Hip_rotateX.o" "Hip.rx";
connectAttr "Hip_rotateY.o" "Hip.ry";
connectAttr "Hip_rotateZ.o" "Hip.rz";
connectAttr "Hip_visibility.o" "Hip.v";
connectAttr "Hip_translateX.o" "Hip.tx";
connectAttr "Hip_translateY.o" "Hip.ty";
connectAttr "Hip_translateZ.o" "Hip.tz";
connectAttr "Hip_scaleX.o" "Hip.sx";
connectAttr "Hip_scaleY.o" "Hip.sy";
connectAttr "Hip_scaleZ.o" "Hip.sz";
connectAttr "transformGeometry1.og" "HipShape.i";
connectAttr "RThigh_rotateX.o" "RThigh.rx";
connectAttr "RThigh_rotateY.o" "RThigh.ry";
connectAttr "RThigh_rotateZ.o" "RThigh.rz";
connectAttr "RThigh_visibility.o" "RThigh.v";
connectAttr "RThigh_translateX.o" "RThigh.tx";
connectAttr "RThigh_translateY.o" "RThigh.ty";
connectAttr "RThigh_translateZ.o" "RThigh.tz";
connectAttr "RThigh_scaleX.o" "RThigh.sx";
connectAttr "RThigh_scaleY.o" "RThigh.sy";
connectAttr "RThigh_scaleZ.o" "RThigh.sz";
connectAttr "RShin_rotateX.o" "RShin.rx";
connectAttr "RShin_rotateY.o" "RShin.ry";
connectAttr "RShin_rotateZ.o" "RShin.rz";
connectAttr "RShin_visibility.o" "RShin.v";
connectAttr "RShin_translateX.o" "RShin.tx";
connectAttr "RShin_translateY.o" "RShin.ty";
connectAttr "RShin_translateZ.o" "RShin.tz";
connectAttr "RShin_scaleX.o" "RShin.sx";
connectAttr "RShin_scaleY.o" "RShin.sy";
connectAttr "RShin_scaleZ.o" "RShin.sz";
connectAttr "transformGeometry5.og" "RShinShape.i";
connectAttr "Rfoot_rotateX.o" "Rfoot.rx";
connectAttr "Rfoot_rotateY.o" "Rfoot.ry";
connectAttr "Rfoot_rotateZ.o" "Rfoot.rz";
connectAttr "Rfoot_visibility.o" "Rfoot.v";
connectAttr "Rfoot_translateX.o" "Rfoot.tx";
connectAttr "Rfoot_translateY.o" "Rfoot.ty";
connectAttr "Rfoot_translateZ.o" "Rfoot.tz";
connectAttr "Rfoot_scaleX.o" "Rfoot.sx";
connectAttr "Rfoot_scaleY.o" "Rfoot.sy";
connectAttr "Rfoot_scaleZ.o" "Rfoot.sz";
connectAttr "transformGeometry3.og" "RfootShape.i";
connectAttr "LowTorso_rotateX.o" "LowTorso.rx";
connectAttr "LowTorso_rotateY.o" "LowTorso.ry";
connectAttr "LowTorso_rotateZ.o" "LowTorso.rz";
connectAttr "LowTorso_visibility.o" "LowTorso.v";
connectAttr "LowTorso_translateX.o" "LowTorso.tx";
connectAttr "LowTorso_translateY.o" "LowTorso.ty";
connectAttr "LowTorso_translateZ.o" "LowTorso.tz";
connectAttr "LowTorso_scaleX.o" "LowTorso.sx";
connectAttr "LowTorso_scaleY.o" "LowTorso.sy";
connectAttr "LowTorso_scaleZ.o" "LowTorso.sz";
connectAttr "UpTorso_rotateX.o" "UpTorso.rx";
connectAttr "UpTorso_rotateY.o" "UpTorso.ry";
connectAttr "UpTorso_rotateZ.o" "UpTorso.rz";
connectAttr "UpTorso_visibility.o" "UpTorso.v";
connectAttr "UpTorso_translateX.o" "UpTorso.tx";
connectAttr "UpTorso_translateY.o" "UpTorso.ty";
connectAttr "UpTorso_translateZ.o" "UpTorso.tz";
connectAttr "UpTorso_scaleX.o" "UpTorso.sx";
connectAttr "UpTorso_scaleY.o" "UpTorso.sy";
connectAttr "UpTorso_scaleZ.o" "UpTorso.sz";
connectAttr "RBicep_rotateX.o" "RBicep.rx";
connectAttr "RBicep_rotateY.o" "RBicep.ry";
connectAttr "RBicep_rotateZ.o" "RBicep.rz";
connectAttr "RBicep_visibility.o" "RBicep.v";
connectAttr "RBicep_translateX.o" "RBicep.tx";
connectAttr "RBicep_translateY.o" "RBicep.ty";
connectAttr "RBicep_translateZ.o" "RBicep.tz";
connectAttr "RBicep_scaleX.o" "RBicep.sx";
connectAttr "RBicep_scaleY.o" "RBicep.sy";
connectAttr "RBicep_scaleZ.o" "RBicep.sz";
connectAttr "transformGeometry6.og" "RBicepShape.i";
connectAttr "RForearm_rotateX.o" "RForearm.rx";
connectAttr "RForearm_rotateY.o" "RForearm.ry";
connectAttr "RForearm_rotateZ.o" "RForearm.rz";
connectAttr "RForearm_visibility.o" "RForearm.v";
connectAttr "RForearm_translateX.o" "RForearm.tx";
connectAttr "RForearm_translateY.o" "RForearm.ty";
connectAttr "RForearm_translateZ.o" "RForearm.tz";
connectAttr "RForearm_scaleX.o" "RForearm.sx";
connectAttr "RForearm_scaleY.o" "RForearm.sy";
connectAttr "RForearm_scaleZ.o" "RForearm.sz";
connectAttr "RPalm_rotateX.o" "RPalm.rx";
connectAttr "RPalm_rotateY.o" "RPalm.ry";
connectAttr "RPalm_rotateZ.o" "RPalm.rz";
connectAttr "RPalm_visibility.o" "RPalm.v";
connectAttr "RPalm_translateX.o" "RPalm.tx";
connectAttr "RPalm_translateY.o" "RPalm.ty";
connectAttr "RPalm_translateZ.o" "RPalm.tz";
connectAttr "RPalm_scaleX.o" "RPalm.sx";
connectAttr "RPalm_scaleY.o" "RPalm.sy";
connectAttr "RPalm_scaleZ.o" "RPalm.sz";
connectAttr "transformGeometry2.og" "RPalmShape.i";
connectAttr "RThumbMeta_rotateX.o" "RThumbMeta.rx";
connectAttr "RThumbMeta_rotateY.o" "RThumbMeta.ry";
connectAttr "RThumbMeta_rotateZ.o" "RThumbMeta.rz";
connectAttr "RThumbMeta_visibility.o" "RThumbMeta.v";
connectAttr "RThumbMeta_translateX.o" "RThumbMeta.tx";
connectAttr "RThumbMeta_translateY.o" "RThumbMeta.ty";
connectAttr "RThumbMeta_translateZ.o" "RThumbMeta.tz";
connectAttr "RThumbMeta_scaleX.o" "RThumbMeta.sx";
connectAttr "RThumbMeta_scaleY.o" "RThumbMeta.sy";
connectAttr "RThumbMeta_scaleZ.o" "RThumbMeta.sz";
connectAttr "RThumbProximal_rotateX.o" "RThumbProximal.rx";
connectAttr "RThumbProximal_rotateY.o" "RThumbProximal.ry";
connectAttr "RThumbProximal_rotateZ.o" "RThumbProximal.rz";
connectAttr "RThumbProximal_visibility.o" "RThumbProximal.v";
connectAttr "RThumbProximal_translateX.o" "RThumbProximal.tx";
connectAttr "RThumbProximal_translateY.o" "RThumbProximal.ty";
connectAttr "RThumbProximal_translateZ.o" "RThumbProximal.tz";
connectAttr "RThumbProximal_scaleX.o" "RThumbProximal.sx";
connectAttr "RThumbProximal_scaleY.o" "RThumbProximal.sy";
connectAttr "RThumbProximal_scaleZ.o" "RThumbProximal.sz";
connectAttr "polySplit3.out" "RThumbProximalShape.i";
connectAttr "RThumbDistal_rotateX.o" "RThumbDistal.rx";
connectAttr "RThumbDistal_rotateY.o" "RThumbDistal.ry";
connectAttr "RThumbDistal_rotateZ.o" "RThumbDistal.rz";
connectAttr "RThumbDistal_visibility.o" "RThumbDistal.v";
connectAttr "RThumbDistal_translateX.o" "RThumbDistal.tx";
connectAttr "RThumbDistal_translateY.o" "RThumbDistal.ty";
connectAttr "RThumbDistal_translateZ.o" "RThumbDistal.tz";
connectAttr "RThumbDistal_scaleX.o" "RThumbDistal.sx";
connectAttr "RThumbDistal_scaleY.o" "RThumbDistal.sy";
connectAttr "RThumbDistal_scaleZ.o" "RThumbDistal.sz";
connectAttr "polySplit2.out" "RThumbDistalShape.i";
connectAttr "RIndexProximal_rotateX.o" "RIndexProximal.rx";
connectAttr "RIndexProximal_rotateY.o" "RIndexProximal.ry";
connectAttr "RIndexProximal_rotateZ.o" "RIndexProximal.rz";
connectAttr "RIndexProximal_visibility.o" "RIndexProximal.v";
connectAttr "RIndexProximal_translateX.o" "RIndexProximal.tx";
connectAttr "RIndexProximal_translateY.o" "RIndexProximal.ty";
connectAttr "RIndexProximal_translateZ.o" "RIndexProximal.tz";
connectAttr "RIndexProximal_scaleX.o" "RIndexProximal.sx";
connectAttr "RIndexProximal_scaleY.o" "RIndexProximal.sy";
connectAttr "RIndexProximal_scaleZ.o" "RIndexProximal.sz";
connectAttr "transformGeometry4.og" "RIndexProximalShape.i";
connectAttr "RIndexIntermidiate_rotateX.o" "RIndexIntermidiate.rx";
connectAttr "RIndexIntermidiate_rotateY.o" "RIndexIntermidiate.ry";
connectAttr "RIndexIntermidiate_rotateZ.o" "RIndexIntermidiate.rz";
connectAttr "RIndexIntermidiate_visibility.o" "RIndexIntermidiate.v";
connectAttr "RIndexIntermidiate_translateX.o" "RIndexIntermidiate.tx";
connectAttr "RIndexIntermidiate_translateY.o" "RIndexIntermidiate.ty";
connectAttr "RIndexIntermidiate_translateZ.o" "RIndexIntermidiate.tz";
connectAttr "RIndexIntermidiate_scaleX.o" "RIndexIntermidiate.sx";
connectAttr "RIndexIntermidiate_scaleY.o" "RIndexIntermidiate.sy";
connectAttr "RIndexIntermidiate_scaleZ.o" "RIndexIntermidiate.sz";
connectAttr "RIndexDistal_rotateX.o" "RIndexDistal.rx";
connectAttr "RIndexDistal_rotateY.o" "RIndexDistal.ry";
connectAttr "RIndexDistal_rotateZ.o" "RIndexDistal.rz";
connectAttr "RIndexDistal_visibility.o" "RIndexDistal.v";
connectAttr "RIndexDistal_translateX.o" "RIndexDistal.tx";
connectAttr "RIndexDistal_translateY.o" "RIndexDistal.ty";
connectAttr "RIndexDistal_translateZ.o" "RIndexDistal.tz";
connectAttr "RIndexDistal_scaleX.o" "RIndexDistal.sx";
connectAttr "RIndexDistal_scaleY.o" "RIndexDistal.sy";
connectAttr "RIndexDistal_scaleZ.o" "RIndexDistal.sz";
connectAttr "RMiddleProximal_rotateX.o" "RMiddleProximal.rx";
connectAttr "RMiddleProximal_rotateY.o" "RMiddleProximal.ry";
connectAttr "RMiddleProximal_rotateZ.o" "RMiddleProximal.rz";
connectAttr "RMiddleProximal_visibility.o" "RMiddleProximal.v";
connectAttr "RMiddleProximal_translateX.o" "RMiddleProximal.tx";
connectAttr "RMiddleProximal_translateY.o" "RMiddleProximal.ty";
connectAttr "RMiddleProximal_translateZ.o" "RMiddleProximal.tz";
connectAttr "RMiddleProximal_scaleX.o" "RMiddleProximal.sx";
connectAttr "RMiddleProximal_scaleY.o" "RMiddleProximal.sy";
connectAttr "RMiddleProximal_scaleZ.o" "RMiddleProximal.sz";
connectAttr "RmiddleIntermidiate_rotateX.o" "RmiddleIntermidiate.rx";
connectAttr "RmiddleIntermidiate_rotateY.o" "RmiddleIntermidiate.ry";
connectAttr "RmiddleIntermidiate_rotateZ.o" "RmiddleIntermidiate.rz";
connectAttr "RmiddleIntermidiate_visibility.o" "RmiddleIntermidiate.v";
connectAttr "RmiddleIntermidiate_translateX.o" "RmiddleIntermidiate.tx";
connectAttr "RmiddleIntermidiate_translateY.o" "RmiddleIntermidiate.ty";
connectAttr "RmiddleIntermidiate_translateZ.o" "RmiddleIntermidiate.tz";
connectAttr "RmiddleIntermidiate_scaleX.o" "RmiddleIntermidiate.sx";
connectAttr "RmiddleIntermidiate_scaleY.o" "RmiddleIntermidiate.sy";
connectAttr "RmiddleIntermidiate_scaleZ.o" "RmiddleIntermidiate.sz";
connectAttr "RMiddleDistal_rotateX.o" "RMiddleDistal.rx";
connectAttr "RMiddleDistal_rotateY.o" "RMiddleDistal.ry";
connectAttr "RMiddleDistal_rotateZ.o" "RMiddleDistal.rz";
connectAttr "RMiddleDistal_visibility.o" "RMiddleDistal.v";
connectAttr "RMiddleDistal_translateX.o" "RMiddleDistal.tx";
connectAttr "RMiddleDistal_translateY.o" "RMiddleDistal.ty";
connectAttr "RMiddleDistal_translateZ.o" "RMiddleDistal.tz";
connectAttr "RMiddleDistal_scaleX.o" "RMiddleDistal.sx";
connectAttr "RMiddleDistal_scaleY.o" "RMiddleDistal.sy";
connectAttr "RMiddleDistal_scaleZ.o" "RMiddleDistal.sz";
connectAttr "RRingProximal_rotateX.o" "RRingProximal.rx";
connectAttr "RRingProximal_rotateY.o" "RRingProximal.ry";
connectAttr "RRingProximal_rotateZ.o" "RRingProximal.rz";
connectAttr "RRingProximal_visibility.o" "RRingProximal.v";
connectAttr "RRingProximal_translateX.o" "RRingProximal.tx";
connectAttr "RRingProximal_translateY.o" "RRingProximal.ty";
connectAttr "RRingProximal_translateZ.o" "RRingProximal.tz";
connectAttr "RRingProximal_scaleX.o" "RRingProximal.sx";
connectAttr "RRingProximal_scaleY.o" "RRingProximal.sy";
connectAttr "RRingProximal_scaleZ.o" "RRingProximal.sz";
connectAttr "RRingIntermidiate_rotateX.o" "RRingIntermidiate.rx";
connectAttr "RRingIntermidiate_rotateY.o" "RRingIntermidiate.ry";
connectAttr "RRingIntermidiate_rotateZ.o" "RRingIntermidiate.rz";
connectAttr "RRingIntermidiate_visibility.o" "RRingIntermidiate.v";
connectAttr "RRingIntermidiate_translateX.o" "RRingIntermidiate.tx";
connectAttr "RRingIntermidiate_translateY.o" "RRingIntermidiate.ty";
connectAttr "RRingIntermidiate_translateZ.o" "RRingIntermidiate.tz";
connectAttr "RRingIntermidiate_scaleX.o" "RRingIntermidiate.sx";
connectAttr "RRingIntermidiate_scaleY.o" "RRingIntermidiate.sy";
connectAttr "RRingIntermidiate_scaleZ.o" "RRingIntermidiate.sz";
connectAttr "RRingDistal_rotateX.o" "RRingDistal.rx";
connectAttr "RRingDistal_rotateY.o" "RRingDistal.ry";
connectAttr "RRingDistal_rotateZ.o" "RRingDistal.rz";
connectAttr "RRingDistal_visibility.o" "RRingDistal.v";
connectAttr "RRingDistal_translateX.o" "RRingDistal.tx";
connectAttr "RRingDistal_translateY.o" "RRingDistal.ty";
connectAttr "RRingDistal_translateZ.o" "RRingDistal.tz";
connectAttr "RRingDistal_scaleX.o" "RRingDistal.sx";
connectAttr "RRingDistal_scaleY.o" "RRingDistal.sy";
connectAttr "RRingDistal_scaleZ.o" "RRingDistal.sz";
connectAttr "RPinkProximal_rotateX.o" "RPinkProximal.rx";
connectAttr "RPinkProximal_rotateY.o" "RPinkProximal.ry";
connectAttr "RPinkProximal_rotateZ.o" "RPinkProximal.rz";
connectAttr "RPinkProximal_visibility.o" "RPinkProximal.v";
connectAttr "RPinkProximal_translateX.o" "RPinkProximal.tx";
connectAttr "RPinkProximal_translateY.o" "RPinkProximal.ty";
connectAttr "RPinkProximal_translateZ.o" "RPinkProximal.tz";
connectAttr "RPinkProximal_scaleX.o" "RPinkProximal.sx";
connectAttr "RPinkProximal_scaleY.o" "RPinkProximal.sy";
connectAttr "RPinkProximal_scaleZ.o" "RPinkProximal.sz";
connectAttr "RPinkIntermidiate_rotateX.o" "RPinkIntermidiate.rx";
connectAttr "RPinkIntermidiate_rotateY.o" "RPinkIntermidiate.ry";
connectAttr "RPinkIntermidiate_rotateZ.o" "RPinkIntermidiate.rz";
connectAttr "RPinkIntermidiate_visibility.o" "RPinkIntermidiate.v";
connectAttr "RPinkIntermidiate_translateX.o" "RPinkIntermidiate.tx";
connectAttr "RPinkIntermidiate_translateY.o" "RPinkIntermidiate.ty";
connectAttr "RPinkIntermidiate_translateZ.o" "RPinkIntermidiate.tz";
connectAttr "RPinkIntermidiate_scaleX.o" "RPinkIntermidiate.sx";
connectAttr "RPinkIntermidiate_scaleY.o" "RPinkIntermidiate.sy";
connectAttr "RPinkIntermidiate_scaleZ.o" "RPinkIntermidiate.sz";
connectAttr "RPinkDistal_rotateX.o" "RPinkDistal.rx";
connectAttr "RPinkDistal_rotateY.o" "RPinkDistal.ry";
connectAttr "RPinkDistal_rotateZ.o" "RPinkDistal.rz";
connectAttr "RPinkDistal_visibility.o" "RPinkDistal.v";
connectAttr "RPinkDistal_translateX.o" "RPinkDistal.tx";
connectAttr "RPinkDistal_translateY.o" "RPinkDistal.ty";
connectAttr "RPinkDistal_translateZ.o" "RPinkDistal.tz";
connectAttr "RPinkDistal_scaleX.o" "RPinkDistal.sx";
connectAttr "RPinkDistal_scaleY.o" "RPinkDistal.sy";
connectAttr "RPinkDistal_scaleZ.o" "RPinkDistal.sz";
connectAttr "Neck_rotateX.o" "Neck.rx";
connectAttr "Neck_rotateY.o" "Neck.ry";
connectAttr "Neck_rotateZ.o" "Neck.rz";
connectAttr "Neck_visibility.o" "Neck.v";
connectAttr "Neck_translateX.o" "Neck.tx";
connectAttr "Neck_translateY.o" "Neck.ty";
connectAttr "Neck_translateZ.o" "Neck.tz";
connectAttr "Neck_scaleX.o" "Neck.sx";
connectAttr "Neck_scaleY.o" "Neck.sy";
connectAttr "Neck_scaleZ.o" "Neck.sz";
connectAttr "transformGeometry7.og" "NeckShape.i";
connectAttr "Head_rotateX.o" "Head.rx";
connectAttr "Head_rotateY.o" "Head.ry";
connectAttr "Head_rotateZ.o" "Head.rz";
connectAttr "Head_visibility.o" "Head.v";
connectAttr "Head_translateX.o" "Head.tx";
connectAttr "Head_translateY.o" "Head.ty";
connectAttr "Head_translateZ.o" "Head.tz";
connectAttr "Head_scaleX.o" "Head.sx";
connectAttr "Head_scaleY.o" "Head.sy";
connectAttr "Head_scaleZ.o" "Head.sz";
connectAttr "LBicep1_rotateX.o" "LBicep1.rx";
connectAttr "LBicep1_rotateY.o" "LBicep1.ry";
connectAttr "LBicep1_rotateZ.o" "LBicep1.rz";
connectAttr "LBicep1_visibility.o" "LBicep1.v";
connectAttr "LBicep1_translateX.o" "LBicep1.tx";
connectAttr "LBicep1_translateY.o" "LBicep1.ty";
connectAttr "LBicep1_translateZ.o" "LBicep1.tz";
connectAttr "LBicep1_scaleX.o" "LBicep1.sx";
connectAttr "LBicep1_scaleY.o" "LBicep1.sy";
connectAttr "LBicep1_scaleZ.o" "LBicep1.sz";
connectAttr "LForearm_rotateX.o" "LForearm.rx";
connectAttr "LForearm_rotateY.o" "LForearm.ry";
connectAttr "LForearm_rotateZ.o" "LForearm.rz";
connectAttr "LForearm_visibility.o" "LForearm.v";
connectAttr "LForearm_translateX.o" "LForearm.tx";
connectAttr "LForearm_translateY.o" "LForearm.ty";
connectAttr "LForearm_translateZ.o" "LForearm.tz";
connectAttr "LForearm_scaleX.o" "LForearm.sx";
connectAttr "LForearm_scaleY.o" "LForearm.sy";
connectAttr "LForearm_scaleZ.o" "LForearm.sz";
connectAttr "LPalm_rotateX.o" "LPalm.rx";
connectAttr "LPalm_rotateY.o" "LPalm.ry";
connectAttr "LPalm_rotateZ.o" "LPalm.rz";
connectAttr "LPalm_visibility.o" "LPalm.v";
connectAttr "LPalm_translateX.o" "LPalm.tx";
connectAttr "LPalm_translateY.o" "LPalm.ty";
connectAttr "LPalm_translateZ.o" "LPalm.tz";
connectAttr "LPalm_scaleX.o" "LPalm.sx";
connectAttr "LPalm_scaleY.o" "LPalm.sy";
connectAttr "LPalm_scaleZ.o" "LPalm.sz";
connectAttr "LThumbMeta_rotateX.o" "LThumbMeta.rx";
connectAttr "LThumbMeta_rotateY.o" "LThumbMeta.ry";
connectAttr "LThumbMeta_rotateZ.o" "LThumbMeta.rz";
connectAttr "LThumbMeta_visibility.o" "LThumbMeta.v";
connectAttr "LThumbMeta_translateX.o" "LThumbMeta.tx";
connectAttr "LThumbMeta_translateY.o" "LThumbMeta.ty";
connectAttr "LThumbMeta_translateZ.o" "LThumbMeta.tz";
connectAttr "LThumbMeta_scaleX.o" "LThumbMeta.sx";
connectAttr "LThumbMeta_scaleY.o" "LThumbMeta.sy";
connectAttr "LThumbMeta_scaleZ.o" "LThumbMeta.sz";
connectAttr "LThumbProximal_rotateX.o" "LThumbProximal.rx";
connectAttr "LThumbProximal_rotateY.o" "LThumbProximal.ry";
connectAttr "LThumbProximal_rotateZ.o" "LThumbProximal.rz";
connectAttr "LThumbProximal_visibility.o" "LThumbProximal.v";
connectAttr "LThumbProximal_translateX.o" "LThumbProximal.tx";
connectAttr "LThumbProximal_translateY.o" "LThumbProximal.ty";
connectAttr "LThumbProximal_translateZ.o" "LThumbProximal.tz";
connectAttr "LThumbProximal_scaleX.o" "LThumbProximal.sx";
connectAttr "LThumbProximal_scaleY.o" "LThumbProximal.sy";
connectAttr "LThumbProximal_scaleZ.o" "LThumbProximal.sz";
connectAttr "LThumbDistal_rotateX.o" "LThumbDistal.rx";
connectAttr "LThumbDistal_rotateY.o" "LThumbDistal.ry";
connectAttr "LThumbDistal_rotateZ.o" "LThumbDistal.rz";
connectAttr "LThumbDistal_visibility.o" "LThumbDistal.v";
connectAttr "LThumbDistal_translateX.o" "LThumbDistal.tx";
connectAttr "LThumbDistal_translateY.o" "LThumbDistal.ty";
connectAttr "LThumbDistal_translateZ.o" "LThumbDistal.tz";
connectAttr "LThumbDistal_scaleX.o" "LThumbDistal.sx";
connectAttr "LThumbDistal_scaleY.o" "LThumbDistal.sy";
connectAttr "LThumbDistal_scaleZ.o" "LThumbDistal.sz";
connectAttr "LIndexProximal_rotateX.o" "LIndexProximal.rx";
connectAttr "LIndexProximal_rotateY.o" "LIndexProximal.ry";
connectAttr "LIndexProximal_rotateZ.o" "LIndexProximal.rz";
connectAttr "LIndexProximal_visibility.o" "LIndexProximal.v";
connectAttr "LIndexProximal_translateX.o" "LIndexProximal.tx";
connectAttr "LIndexProximal_translateY.o" "LIndexProximal.ty";
connectAttr "LIndexProximal_translateZ.o" "LIndexProximal.tz";
connectAttr "LIndexProximal_scaleX.o" "LIndexProximal.sx";
connectAttr "LIndexProximal_scaleY.o" "LIndexProximal.sy";
connectAttr "LIndexProximal_scaleZ.o" "LIndexProximal.sz";
connectAttr "LIndexIntermidiate_rotateX.o" "LIndexIntermidiate.rx";
connectAttr "LIndexIntermidiate_rotateY.o" "LIndexIntermidiate.ry";
connectAttr "LIndexIntermidiate_rotateZ.o" "LIndexIntermidiate.rz";
connectAttr "LIndexIntermidiate_visibility.o" "LIndexIntermidiate.v";
connectAttr "LIndexIntermidiate_translateX.o" "LIndexIntermidiate.tx";
connectAttr "LIndexIntermidiate_translateY.o" "LIndexIntermidiate.ty";
connectAttr "LIndexIntermidiate_translateZ.o" "LIndexIntermidiate.tz";
connectAttr "LIndexIntermidiate_scaleX.o" "LIndexIntermidiate.sx";
connectAttr "LIndexIntermidiate_scaleY.o" "LIndexIntermidiate.sy";
connectAttr "LIndexIntermidiate_scaleZ.o" "LIndexIntermidiate.sz";
connectAttr "LIndexDistal_rotateX.o" "LIndexDistal.rx";
connectAttr "LIndexDistal_rotateY.o" "LIndexDistal.ry";
connectAttr "LIndexDistal_rotateZ.o" "LIndexDistal.rz";
connectAttr "LIndexDistal_visibility.o" "LIndexDistal.v";
connectAttr "LIndexDistal_translateX.o" "LIndexDistal.tx";
connectAttr "LIndexDistal_translateY.o" "LIndexDistal.ty";
connectAttr "LIndexDistal_translateZ.o" "LIndexDistal.tz";
connectAttr "LIndexDistal_scaleX.o" "LIndexDistal.sx";
connectAttr "LIndexDistal_scaleY.o" "LIndexDistal.sy";
connectAttr "LIndexDistal_scaleZ.o" "LIndexDistal.sz";
connectAttr "LMiddleProximal_rotateX.o" "LMiddleProximal.rx";
connectAttr "LMiddleProximal_rotateY.o" "LMiddleProximal.ry";
connectAttr "LMiddleProximal_rotateZ.o" "LMiddleProximal.rz";
connectAttr "LMiddleProximal_visibility.o" "LMiddleProximal.v";
connectAttr "LMiddleProximal_translateX.o" "LMiddleProximal.tx";
connectAttr "LMiddleProximal_translateY.o" "LMiddleProximal.ty";
connectAttr "LMiddleProximal_translateZ.o" "LMiddleProximal.tz";
connectAttr "LMiddleProximal_scaleX.o" "LMiddleProximal.sx";
connectAttr "LMiddleProximal_scaleY.o" "LMiddleProximal.sy";
connectAttr "LMiddleProximal_scaleZ.o" "LMiddleProximal.sz";
connectAttr "LmiddleIntermidiate_rotateX.o" "LmiddleIntermidiate.rx";
connectAttr "LmiddleIntermidiate_rotateY.o" "LmiddleIntermidiate.ry";
connectAttr "LmiddleIntermidiate_rotateZ.o" "LmiddleIntermidiate.rz";
connectAttr "LmiddleIntermidiate_visibility.o" "LmiddleIntermidiate.v";
connectAttr "LmiddleIntermidiate_translateX.o" "LmiddleIntermidiate.tx";
connectAttr "LmiddleIntermidiate_translateY.o" "LmiddleIntermidiate.ty";
connectAttr "LmiddleIntermidiate_translateZ.o" "LmiddleIntermidiate.tz";
connectAttr "LmiddleIntermidiate_scaleX.o" "LmiddleIntermidiate.sx";
connectAttr "LmiddleIntermidiate_scaleY.o" "LmiddleIntermidiate.sy";
connectAttr "LmiddleIntermidiate_scaleZ.o" "LmiddleIntermidiate.sz";
connectAttr "LMiddleDistal_rotateX.o" "LMiddleDistal.rx";
connectAttr "LMiddleDistal_rotateY.o" "LMiddleDistal.ry";
connectAttr "LMiddleDistal_rotateZ.o" "LMiddleDistal.rz";
connectAttr "LMiddleDistal_visibility.o" "LMiddleDistal.v";
connectAttr "LMiddleDistal_translateX.o" "LMiddleDistal.tx";
connectAttr "LMiddleDistal_translateY.o" "LMiddleDistal.ty";
connectAttr "LMiddleDistal_translateZ.o" "LMiddleDistal.tz";
connectAttr "LMiddleDistal_scaleX.o" "LMiddleDistal.sx";
connectAttr "LMiddleDistal_scaleY.o" "LMiddleDistal.sy";
connectAttr "LMiddleDistal_scaleZ.o" "LMiddleDistal.sz";
connectAttr "LRingProximal_rotateX.o" "LRingProximal.rx";
connectAttr "LRingProximal_rotateY.o" "LRingProximal.ry";
connectAttr "LRingProximal_rotateZ.o" "LRingProximal.rz";
connectAttr "LRingProximal_visibility.o" "LRingProximal.v";
connectAttr "LRingProximal_translateX.o" "LRingProximal.tx";
connectAttr "LRingProximal_translateY.o" "LRingProximal.ty";
connectAttr "LRingProximal_translateZ.o" "LRingProximal.tz";
connectAttr "LRingProximal_scaleX.o" "LRingProximal.sx";
connectAttr "LRingProximal_scaleY.o" "LRingProximal.sy";
connectAttr "LRingProximal_scaleZ.o" "LRingProximal.sz";
connectAttr "LRingIntermidiate_rotateX.o" "LRingIntermidiate.rx";
connectAttr "LRingIntermidiate_rotateY.o" "LRingIntermidiate.ry";
connectAttr "LRingIntermidiate_rotateZ.o" "LRingIntermidiate.rz";
connectAttr "LRingIntermidiate_visibility.o" "LRingIntermidiate.v";
connectAttr "LRingIntermidiate_translateX.o" "LRingIntermidiate.tx";
connectAttr "LRingIntermidiate_translateY.o" "LRingIntermidiate.ty";
connectAttr "LRingIntermidiate_translateZ.o" "LRingIntermidiate.tz";
connectAttr "LRingIntermidiate_scaleX.o" "LRingIntermidiate.sx";
connectAttr "LRingIntermidiate_scaleY.o" "LRingIntermidiate.sy";
connectAttr "LRingIntermidiate_scaleZ.o" "LRingIntermidiate.sz";
connectAttr "LRingDistal_rotateX.o" "LRingDistal.rx";
connectAttr "LRingDistal_rotateY.o" "LRingDistal.ry";
connectAttr "LRingDistal_rotateZ.o" "LRingDistal.rz";
connectAttr "LRingDistal_visibility.o" "LRingDistal.v";
connectAttr "LRingDistal_translateX.o" "LRingDistal.tx";
connectAttr "LRingDistal_translateY.o" "LRingDistal.ty";
connectAttr "LRingDistal_translateZ.o" "LRingDistal.tz";
connectAttr "LRingDistal_scaleX.o" "LRingDistal.sx";
connectAttr "LRingDistal_scaleY.o" "LRingDistal.sy";
connectAttr "LRingDistal_scaleZ.o" "LRingDistal.sz";
connectAttr "LPinkProximal_rotateX.o" "LPinkProximal.rx";
connectAttr "LPinkProximal_rotateY.o" "LPinkProximal.ry";
connectAttr "LPinkProximal_rotateZ.o" "LPinkProximal.rz";
connectAttr "LPinkProximal_visibility.o" "LPinkProximal.v";
connectAttr "LPinkProximal_translateX.o" "LPinkProximal.tx";
connectAttr "LPinkProximal_translateY.o" "LPinkProximal.ty";
connectAttr "LPinkProximal_translateZ.o" "LPinkProximal.tz";
connectAttr "LPinkProximal_scaleX.o" "LPinkProximal.sx";
connectAttr "LPinkProximal_scaleY.o" "LPinkProximal.sy";
connectAttr "LPinkProximal_scaleZ.o" "LPinkProximal.sz";
connectAttr "LPinkIntermidiate_rotateX.o" "LPinkIntermidiate.rx";
connectAttr "LPinkIntermidiate_rotateY.o" "LPinkIntermidiate.ry";
connectAttr "LPinkIntermidiate_rotateZ.o" "LPinkIntermidiate.rz";
connectAttr "LPinkIntermidiate_visibility.o" "LPinkIntermidiate.v";
connectAttr "LPinkIntermidiate_translateX.o" "LPinkIntermidiate.tx";
connectAttr "LPinkIntermidiate_translateY.o" "LPinkIntermidiate.ty";
connectAttr "LPinkIntermidiate_translateZ.o" "LPinkIntermidiate.tz";
connectAttr "LPinkIntermidiate_scaleX.o" "LPinkIntermidiate.sx";
connectAttr "LPinkIntermidiate_scaleY.o" "LPinkIntermidiate.sy";
connectAttr "LPinkIntermidiate_scaleZ.o" "LPinkIntermidiate.sz";
connectAttr "LPinkDistal_rotateX.o" "LPinkDistal.rx";
connectAttr "LPinkDistal_rotateY.o" "LPinkDistal.ry";
connectAttr "LPinkDistal_rotateZ.o" "LPinkDistal.rz";
connectAttr "LPinkDistal_visibility.o" "LPinkDistal.v";
connectAttr "LPinkDistal_translateX.o" "LPinkDistal.tx";
connectAttr "LPinkDistal_translateY.o" "LPinkDistal.ty";
connectAttr "LPinkDistal_translateZ.o" "LPinkDistal.tz";
connectAttr "LPinkDistal_scaleX.o" "LPinkDistal.sx";
connectAttr "LPinkDistal_scaleY.o" "LPinkDistal.sy";
connectAttr "LPinkDistal_scaleZ.o" "LPinkDistal.sz";
connectAttr "LThigh1_rotateX.o" "LThigh1.rx";
connectAttr "LThigh1_rotateY.o" "LThigh1.ry";
connectAttr "LThigh1_rotateZ.o" "LThigh1.rz";
connectAttr "LThigh1_visibility.o" "LThigh1.v";
connectAttr "LThigh1_translateX.o" "LThigh1.tx";
connectAttr "LThigh1_translateY.o" "LThigh1.ty";
connectAttr "LThigh1_translateZ.o" "LThigh1.tz";
connectAttr "LThigh1_scaleX.o" "LThigh1.sx";
connectAttr "LThigh1_scaleY.o" "LThigh1.sy";
connectAttr "LThigh1_scaleZ.o" "LThigh1.sz";
connectAttr "LShin_rotateX.o" "LShin.rx";
connectAttr "LShin_rotateY.o" "LShin.ry";
connectAttr "LShin_rotateZ.o" "LShin.rz";
connectAttr "LShin_visibility.o" "LShin.v";
connectAttr "LShin_translateX.o" "LShin.tx";
connectAttr "LShin_translateY.o" "LShin.ty";
connectAttr "LShin_translateZ.o" "LShin.tz";
connectAttr "LShin_scaleX.o" "LShin.sx";
connectAttr "LShin_scaleY.o" "LShin.sy";
connectAttr "LShin_scaleZ.o" "LShin.sz";
connectAttr "Lfoot_rotateX.o" "Lfoot.rx";
connectAttr "Lfoot_rotateY.o" "Lfoot.ry";
connectAttr "Lfoot_rotateZ.o" "Lfoot.rz";
connectAttr "Lfoot_visibility.o" "Lfoot.v";
connectAttr "Lfoot_translateX.o" "Lfoot.tx";
connectAttr "Lfoot_translateY.o" "Lfoot.ty";
connectAttr "Lfoot_translateZ.o" "Lfoot.tz";
connectAttr "Lfoot_scaleX.o" "Lfoot.sx";
connectAttr "Lfoot_scaleY.o" "Lfoot.sy";
connectAttr "Lfoot_scaleZ.o" "Lfoot.sz";
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
connectAttr "polyCube5.out" "polyTweak1.ip";
connectAttr "polyTweak1.out" "polySplit1.ip";
connectAttr "polyCube3.out" "transformGeometry1.ig";
connectAttr "polySplit1.out" "polyTweak2.ip";
connectAttr "polyTweak2.out" "transformGeometry2.ig";
connectAttr "polyCube1.out" "transformGeometry3.ig";
connectAttr "polyCube6.out" "transformGeometry4.ig";
connectAttr "polyCube2.out" "transformGeometry5.ig";
connectAttr "polyCube4.out" "transformGeometry6.ig";
connectAttr "polyCube7.out" "transformGeometry7.ig";
connectAttr "|Hip|LowTorso|UpTorso|RBicep|RForearm|RPalm|RThumbMeta|RThumbProximal|RThumbDistal|polySurfaceShape1.o" "polySplit2.ip"
		;
connectAttr "|Hip|LowTorso|UpTorso|RBicep|RForearm|RPalm|RThumbMeta|RThumbProximal|polySurfaceShape2.o" "polySplit3.ip"
		;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "RfootShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "RShinShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "RThighShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "HipShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "LowTorsoShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "UpTorsoShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "RBicepShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "RForearmShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "RPalmShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "RIndexProximalShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "RThumbMetaShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "RIndexIntermidiateShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "RIndexDistalShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "RMiddleProximalShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "RmiddleIntermidiateShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "RMiddleDistalShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "RRingProximalShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "RRingIntermidiateShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "RRingDistalShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "RPinkProximalShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "RPinkIntermidiateShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "RPinkDistalShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "RThumbProximalShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "RThumbDistalShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "NeckShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "HeadShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "LBicep1Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "LForearmShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "LPalmShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "LThumbMetaShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "LThumbProximalShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "LThumbDistalShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "LIndexProximalShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "LIndexIntermidiateShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "LIndexDistalShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "LMiddleProximalShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "LmiddleIntermidiateShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "LMiddleDistalShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "LRingProximalShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "LRingIntermidiateShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "LRingDistalShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "LPinkProximalShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "LPinkIntermidiateShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "LPinkDistalShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "LThigh1Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "LShinShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "LfootShape.iog" ":initialShadingGroup.dsm" -na;
// End of Simple boxman.ma
