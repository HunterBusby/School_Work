//Maya ASCII 2024 scene
//Name: walk cycle 1.0011.ma
//Last modified: Tue, Oct 03, 2023 03:14:45 PM
//Codeset: 1252
file -rdi 1 -ns "Ultimate_Walker_Rig" -rfn "Ultimate_Walker_RigRN" -op "v=0;"
		 -typ "mayaAscii" "C:/Users/hunte/Documents/Education/Fall 2023/Modeling/Models to reference/Ultimate_Walker_Rig.ma";
file -r -ns "Ultimate_Walker_Rig" -dr 1 -rfn "Ultimate_Walker_RigRN" -op "v=0;" 
		-typ "mayaAscii" "C:/Users/hunte/Documents/Education/Fall 2023/Modeling/Models to reference/Ultimate_Walker_Rig.ma";
requires maya "2024";
requires "stereoCamera" "10.0";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "5.3.0";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2024";
fileInfo "version" "2024";
fileInfo "cutIdentifier" "202302170737-4500172811";
fileInfo "osv" "Windows 11 Home v2009 (Build: 22621)";
fileInfo "UUID" "AD4CD73A-41F9-78CE-432B-22B10675C562";
fileInfo "exportedFrom" "C:/Users/hunte/Documents/Education/Fall 2023/vid game/2D_Side_Sccroller/Assets/Maya Projects/scenes/walk cycle 1.ma";
createNode transform -s -n "persp";
	rename -uid "04C1C0C8-454E-A89A-BBF1-1D8D024FA5CE";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 10.440443833346986 3.5470112557709799 -3.6647921621669108 ;
	setAttr ".r" -type "double3" -12.33835272146572 1182.999999999221 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "45E14E17-4A2A-BB26-4D8B-B9AE84D9D9DB";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 10.615278694596777;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0 2.0187295072079388 -0.32044151377094798 ;
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
	setAttr ".t" -type "double3" 1000.1 1.9464107576178613 -1.4519427269267866 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "0B7954AA-412F-C41D-C319-ABB0E677C86F";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 11.123513993521257;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "group";
	rename -uid "FDA87B1B-401F-273A-0AB1-EE8ECA164A73";
	setAttr ".rp" -type "double3" 0 1.0272255106879886 0.61039872344516577 ;
	setAttr ".sp" -type "double3" 0 1.0272255106879886 0.61039872344516577 ;
createNode transform -n "Ultimate_Walker_Rig1:AniM_walker_Main" -p "group";
	rename -uid "22CF6677-466E-E208-B977-1C87D356060C";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
createNode transform -n "Ultimate_Walker_Rig1:CTRL_Root" -p "Ultimate_Walker_Rig1:AniM_walker_Main";
	rename -uid "C13A4092-4064-2E55-F9D3-1B9A270A1B18";
	addAttr -ci true -sn "Global_Scale" -ln "Global_Scale" -dv 1 -min 0.1 -max 100 
		-at "double";
	addAttr -ci true -sn "Version" -ln "Version" -nn "Version" -min 0 -max 0 -en "1.01" 
		-at "enum";
	addAttr -ci true -sn "Types" -ln "Types" -min 0 -max 2 -en "Simple:Fox:Beaver" -at "enum";
	setAttr -k off -cb on ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 12;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".rp" -type "double3" 0 -1.7763568394002503e-15 -8.8817841970012563e-16 ;
	setAttr ".sp" -type "double3" -1.7763568394002501e-15 -1.7763568394002499e-15 -8.8817841970012602e-16 ;
	setAttr -cb on ".Global_Scale";
	setAttr -cb on ".Version";
createNode nurbsCurve -n "Ultimate_Walker_Rig1:CTRL_RootShape" -p "Ultimate_Walker_Rig1:CTRL_Root";
	rename -uid "1C1266A0-47C0-EB1A-AB50-57B611D0DA56";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 22 1 no 3
		27 0 0 0 1 1 1 2 2 2 3 3 3 4 4 4 5 5 5 6 6 6 7 7 7 8 8 8
		25
		2.3978903315277118 -2.3087954507178729e-15 1.6889815122751055
		2.1314721219365604 -2.2496387246243715e-15 1.2424475274271511
		0.26652067691986764 -1.8355363178112744e-15 -1.8833305549690482
		0.00010246732871740809 -1.776379591717773e-15 -2.3298645398170019
		-0.2663385125522203 -1.717217809604272e-15 -1.8833305549690482
		-2.1314493516467752 -1.3030800101961278e-15 1.2424475274271523
		-2.3978903315277118 -1.2439182280826271e-15 1.6889815122751057
		-1.6833970336335933 -1.4025676101351099e-15 1.6889815122751057
		-1.1965075818662363 -1.5106787860949574e-15 1.688981512275106
		-0.85818551000757626 -1.5858013768782315e-15 1.688981512275106
		-0.76263353095821096 -1.6070181783160525e-15 1.5290466653523869
		-0.093761077848544178 -1.7555376979120252e-15 0.40948834261318812
		0.0017909012008211584 -1.7767544993498464e-15 0.249553495690469
		0.043915431301785247 -1.7861080239937674e-15 0.32000515179870803
		0.33879093325415216 -1.8515835383268506e-15 0.81317308526883647
		0.38091546335511683 -1.8609370629707724e-15 0.8836247413770747
		0.32646486938558505 -1.8488466023448747e-15 0.8836247413770747
		-0.054694189003604295 -1.7642122898112498e-15 0.88362474137707459
		-0.10914478297313608 -1.752121829185352e-15 0.88362474137707459
		-0.1625745089505154 -1.7402580467894522e-15 0.97310793219155478
		-0.53658739951559764 -1.6572105022670593e-15 1.599498321460626
		-0.59001712549297824 -1.6453467198711595e-15 1.688981512275106
		-0.25803072794340859 -1.7190625083555379e-15 1.6889815122751057
		2.0659039339781429 -2.2350796622334949e-15 1.6889815122751055
		2.3978903315277118 -2.3087954507178729e-15 1.6889815122751055
		;
createNode transform -n "Ultimate_Walker_Rig1:Rig_Leg_grp" -p "Ultimate_Walker_Rig1:AniM_walker_Main";
	rename -uid "9665B3A7-4BBF-37E2-6AEB-BBB9B8B69E75";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
createNode transform -n "Ultimate_Walker_Rig1:walker_lf_leg_rig_grp" -p "Ultimate_Walker_Rig1:Rig_Leg_grp";
	rename -uid "6EB68B64-4A4D-741D-1464-08A10CE1A8A3";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
createNode transform -n "Ultimate_Walker_Rig1:walker_lf_reverseFoot_rig_grp" -p "Ultimate_Walker_Rig1:walker_lf_leg_rig_grp";
	rename -uid "E1F37747-4B3D-42C6-EDD4-43AA6876AFE4";
createNode joint -n "Ultimate_Walker_Rig1:walker_lf_heel_rev_rig_jnt" -p "Ultimate_Walker_Rig1:walker_lf_reverseFoot_rig_grp";
	rename -uid "A4526259-4F9C-CBD5-4AD2-B3BC1B06791D";
	setAttr ".ove" yes;
	setAttr ".ovc" 28;
	setAttr ".t" -type "double3" 0.58301609754639938 1.5390000728584829e-09 -0.25085057272848399 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 -89.999999999999986 0 ;
createNode joint -n "Ultimate_Walker_Rig1:walker_lf_toe_rev_rig_jnt" -p "Ultimate_Walker_Rig1:walker_lf_heel_rev_rig_jnt";
	rename -uid "E7CBD5E8-4C7A-DF11-982A-43B178C6BFB9";
	setAttr ".ove" yes;
	setAttr ".ovc" 28;
	setAttr ".t" -type "double3" 1.1719712546574839 0 3.3306690738754696e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 89.999999999999986 0 ;
	setAttr ".radi" 0.5;
createNode joint -n "Ultimate_Walker_Rig1:walker_lf_ball_rev_rig_jnt" -p "Ultimate_Walker_Rig1:walker_lf_toe_rev_rig_jnt";
	rename -uid "76DBE618-4D2F-0B74-65F3-3EB49A049925";
	setAttr ".ove" yes;
	setAttr ".ovc" 28;
	setAttr ".t" -type "double3" -2.2204460492503131e-16 -1.4536119660842215e-16 -0.55929725629999982 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 -89.999999999999986 0 ;
	setAttr ".radi" 0.72241122832793025;
createNode joint -n "Ultimate_Walker_Rig1:walker_lf_ankle_rev_rig_jnt" -p "Ultimate_Walker_Rig1:walker_lf_ball_rev_rig_jnt";
	rename -uid "BFE76964-452E-596E-A4C7-EB801928D8AF";
	addAttr -ci true -h true -sn "createRot" -ln "createRot" -dt "float3";
	setAttr ".ove" yes;
	setAttr ".ovc" 28;
	setAttr ".t" -type "double3" -0.39888793324240007 -0.44379591941099972 3.3306690738754696e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 2.7234061534348701e-15 2.3456687885621215e-15 48.050499189664151 ;
	setAttr ".radi" 0.73729004431155587;
	setAttr ".createRot" -type "float3" 0 0 0 ;
createNode joint -n "Ultimate_Walker_Rig1:walker_lf__ik_jnt" -p "Ultimate_Walker_Rig1:walker_lf_toe_rev_rig_jnt";
	rename -uid "92326C21-4A73-9107-7B3E-BCACD9851456";
	setAttr ".t" -type "double3" 0 -1.4536119619483184e-16 -0.55929725629999971 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 -89.999999999999986 0 ;
	setAttr ".radi" 0.72241122832793025;
createNode joint -n "Ultimate_Walker_Rig1:walker_lf_ball_ik_jnt" -p "Ultimate_Walker_Rig1:walker_lf__ik_jnt";
	rename -uid "4FDA6898-4B1F-28AA-5E41-53988654FA16";
	setAttr ".ove" yes;
	setAttr ".ovc" 28;
	setAttr ".t" -type "double3" 1.1102230246251565e-16 2.0679515313825692e-25 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.72241122832793025;
createNode joint -n "Ultimate_Walker_Rig1:walker_lf_toe_ik_jnt" -p "Ultimate_Walker_Rig1:walker_lf_ball_ik_jnt";
	rename -uid "DF883340-4EA3-7722-598B-92A5490BFF39";
	setAttr ".ove" yes;
	setAttr ".ovc" 28;
	setAttr ".t" -type "double3" 0.55929725629999938 -1.4536119660842215e-16 1.1102230246251565e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 -89.999999999999972 0 ;
	setAttr ".radi" 0.5;
createNode parentConstraint -n "Ultimate_Walker_Rig1:walker_lf_reverseFoot_rig_grp_parentConstraint1" 
		-p "Ultimate_Walker_Rig1:walker_lf_reverseFoot_rig_grp";
	rename -uid "4A67D121-4C4E-678E-394F-22AF17A102CB";
	addAttr -ci true -k true -sn "w0" -ln "walker_lf_heel_ik_ctrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -0.58301609754639938 -1.5390000728584829e-09 
		0.25085057272848399 ;
	setAttr -k on ".w0";
createNode transform -n "Ultimate_Walker_Rig1:walker_lf_legFK_Grp" -p "Ultimate_Walker_Rig1:walker_lf_leg_rig_grp";
	rename -uid "7742BB3C-4E16-9D92-0FE0-A08B2D16D55A";
createNode joint -n "Ultimate_Walker_Rig1:walker_lf_upLeg_fk_jnt" -p "Ultimate_Walker_Rig1:walker_lf_legFK_Grp";
	rename -uid "15491334-4B7D-B59C-4C84-BA808A5C827D";
	addAttr -ci true -h true -sn "createRot" -ln "createRot" -dt "float3";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -179.73734255356067 ;
	setAttr ".radi" 0.89313380820640498;
	setAttr ".createRot" -type "float3" 0 0 0 ;
createNode joint -n "Ultimate_Walker_Rig1:walker_lf_knee_fk_jnt" -p "Ultimate_Walker_Rig1:walker_lf_upLeg_fk_jnt";
	rename -uid "1214A39F-4FDA-07A9-02EA-46987CAD866B";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".t" -type "double3" 0.98861312866210938 1.3433698597964394e-14 1.1102230246251565e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 4.4814151967256262 ;
	setAttr ".radi" 0.84979013353145527;
createNode joint -n "Ultimate_Walker_Rig1:walker_lf_ankle_fk_jnt" -p "Ultimate_Walker_Rig1:walker_lf_knee_fk_jnt";
	rename -uid "AC48FD64-4849-A23F-7F2B-048E001724CE";
	addAttr -ci true -h true -sn "createRot" -ln "createRot" -dt "float3";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".t" -type "double3" 0.87961685657501221 3.3306690738754696e-16 -2.2204460492503131e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -46.43091730301424 ;
	setAttr ".radi" 0.73729004431155587;
	setAttr ".createRot" -type "float3" 0 0 0 ;
createNode joint -n "Ultimate_Walker_Rig1:walker_lf_ball_fk_jnt" -p "Ultimate_Walker_Rig1:walker_lf_ankle_fk_jnt";
	rename -uid "3884C030-4032-8A2A-D672-A9ADDA71101C";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".t" -type "double3" 0.59671299748895001 -5.5511151231257827e-17 -2.2204460492503131e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -48.050499189664158 ;
	setAttr ".radi" 0.72241122832793025;
createNode joint -n "Ultimate_Walker_Rig1:walker_lf_toe_fk_jnt" -p "Ultimate_Walker_Rig1:walker_lf_ball_fk_jnt";
	rename -uid "4C2A55C2-4E9A-F9C9-668E-648E1D350BF9";
	setAttr ".t" -type "double3" 0.5592972562999996 -5.2219492896697226e-17 2.2204460492503131e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -180 -89.999999999999986 0 ;
	setAttr ".radi" 0.5;
createNode orientConstraint -n "Ultimate_Walker_Rig1:walker_lf_ballCtrl_fk_or_cons" 
		-p "Ultimate_Walker_Rig1:walker_lf_ball_fk_jnt";
	rename -uid "B77D2A68-4258-543F-8A35-3B81A609B08B";
	addAttr -ci true -k true -sn "w0" -ln "walker_lf_ball_fk_ctrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 0 0 3.8166656177562201e-14 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "Ultimate_Walker_Rig1:walker_lf_ankleCtrl_fk_or_cons" 
		-p "Ultimate_Walker_Rig1:walker_lf_ankle_fk_jnt";
	rename -uid "1E615481-4BB7-36DD-73B8-2CA77CF97BCA";
	addAttr -ci true -k true -sn "w0" -ln "walker_lf_ankle_fk_ctrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 0 0 3.8166656177562201e-14 ;
	setAttr ".rsrr" -type "double3" 0 0 1.9083328088781101e-14 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "Ultimate_Walker_Rig1:walker_lf_kneeCtrl_fk_or_cons" 
		-p "Ultimate_Walker_Rig1:walker_lf_knee_fk_jnt";
	rename -uid "B0F693EE-4826-21C1-B1F2-75945F9A2AED";
	addAttr -ci true -k true -sn "w0" -ln "walker_lf_knee_fk_ctrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 0 0 -7.9513867036587919e-15 ;
	setAttr ".rsrr" -type "double3" 0 0 -1.4312496066585827e-14 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ultimate_Walker_Rig1:walker_lf_upLeg_fk_jnt_parentConstraint1" 
		-p "Ultimate_Walker_Rig1:walker_lf_upLeg_fk_jnt";
	rename -uid "1BD2BFA7-459D-B66C-7419-99A407A7F76F";
	addAttr -ci true -k true -sn "w0" -ln "walker_lf_upLeg_fk_ctrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 0 0 2.5444437451708128e-14 ;
	setAttr ".rst" -type "double3" -0.72869950102630954 0.035533216670092176 0.58301609754639927 ;
	setAttr ".rsrr" -type "double3" 0 0 2.5444437451708128e-14 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ultimate_Walker_Rig1:walker_lf_legFK_Grp_parentConstraint1" 
		-p "Ultimate_Walker_Rig1:walker_lf_legFK_Grp";
	rename -uid "D1CE38CC-40D3-0FCD-EC77-34BD4EE0B790";
	addAttr -ci true -k true -sn "w0" -ln "walker_hip_jntW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 4.4408920985006262e-16 2.6020852139652106e-18 
		0 ;
	setAttr ".tg[0].tor" -type "double3" 3.8123586506410354e-16 6.8988129873577089e-15 
		-4.9696166897867449e-17 ;
	setAttr ".lr" -type "double3" 90 0.2626561504866004 90.000000000000014 ;
	setAttr ".rst" -type "double3" -5.7142390883069934e-32 3.037865615999999 -0.0072083119257999829 ;
	setAttr ".rsrr" -type "double3" 90.000000000000014 0.2626561504866004 90 ;
	setAttr -k on ".w0";
createNode transform -n "Ultimate_Walker_Rig1:walker_lf_ball_fk_ctrl_frzGrp" -p "Ultimate_Walker_Rig1:walker_lf_leg_rig_grp";
	rename -uid "CDF1E609-499F-BED2-42C3-15B25A98B855";
createNode transform -n "Ultimate_Walker_Rig1:walker_lf_ball_fk_ctrl_frzGrp" -p "|group|Ultimate_Walker_Rig1:AniM_walker_Main|Ultimate_Walker_Rig1:Rig_Leg_grp|Ultimate_Walker_Rig1:walker_lf_leg_rig_grp|Ultimate_Walker_Rig1:walker_lf_ball_fk_ctrl_frzGrp";
	rename -uid "79A734AB-4C8F-58A6-3D30-ED90627A903E";
	setAttr ".r" -type "double3" -4.7044035846079415e-46 0 0 ;
createNode transform -n "Ultimate_Walker_Rig1:walker_lf_ball_fk_ctrl" -p "|group|Ultimate_Walker_Rig1:AniM_walker_Main|Ultimate_Walker_Rig1:Rig_Leg_grp|Ultimate_Walker_Rig1:walker_lf_leg_rig_grp|Ultimate_Walker_Rig1:walker_lf_ball_fk_ctrl_frzGrp|Ultimate_Walker_Rig1:walker_lf_ball_fk_ctrl_frzGrp";
	rename -uid "77C4D6F6-4C12-BBA3-E2DD-34B938D89B09";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" -4.7044035846079415e-46 0 0 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
createNode nurbsCurve -n "Ultimate_Walker_Rig1:walker_lf_ball_fk_ctrlShape" -p "Ultimate_Walker_Rig1:walker_lf_ball_fk_ctrl";
	rename -uid "5B6EE43C-4459-0FC5-1EDE-56B5CC6196A6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		1 44 0 no 3
		45 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44
		45
		0.32955637201335691 -7.8434327866632497e-16 -1.5614484457949821e-08
		0.30447039369025364 -0.12611575044606527 -1.5614484446809412e-08
		0.23303154234502357 -0.23303152663811161 -1.5614484415084187e-08
		0.12611576606448768 -0.30447036249765408 -1.5614484367604043e-08
		1.1304571732318942e-16 -0.32955634082075747 -1.5614484311597394e-08
		-0.12611576606448746 -0.30447036249765413 -1.5614484255590745e-08
		-0.23303154234502343 -0.23303152663811177 -1.5614484208110601e-08
		-0.30447039369025364 -0.12611575044606554 -1.5614484176385375e-08
		-0.32955637201335702 -1.0770481363632547e-15 -1.5614484165244967e-08
		-0.30447039369025375 0.12611575825527635 -1.5614484176385375e-08
		-0.23303154234502363 0.23303154234502341 -1.5614484208110601e-08
		-0.12611576606448774 0.30447036249765408 -1.5614484255590745e-08
		-1.7965911266914682e-16 0.32955634082075747 -1.5614484311597394e-08
		0.12611576606448741 0.30447036249765413 -1.5614484367604043e-08
		0.23303154234502338 0.2330315423450236 -1.5614484415084187e-08
		0.30447039369025353 0.1261157582552766 -1.5614484446809412e-08
		0.32955637201335691 -7.8434327866632497e-16 -1.5614484457949821e-08
		0.30447039369025353 -7.9548369095814768e-16 -0.12611576606448771
		0.23303154234502338 -8.2720891400464705e-16 -0.2330315423450236
		0.12611576606448741 -8.7468905661357622e-16 -0.30447037798334181
		-1.7965911271019249e-16 -9.3069570751478986e-16 -0.32955635652766929
		-0.12611576606448774 -9.867023584160036e-16 -0.3044703779833417
		-0.23303154234502363 -1.0341825010249328e-15 -0.23303154234502341
		-0.30447039369025375 -1.065907724071432e-15 -0.12611576606448743
		-0.32955637201335702 -1.0770481363632547e-15 -1.5614484165244967e-08
		-0.30447039369025364 -1.065907724071432e-15 0.12611575044606554
		-0.23303154234502343 -1.0341825010249328e-15 0.2330315423450236
		-0.12611576606448746 -9.867023584160036e-16 0.30447037798334181
		1.1304573123268387e-16 -9.3069570751478986e-16 0.32955635652766929
		0.12611576606448768 -8.7468905661357622e-16 0.3044703779833417
		0.23303154234502357 -8.2720891400464705e-16 0.23303154234502341
		0.30447039369025364 -7.9548369095814768e-16 0.12611575044606527
		0.32955637201335691 -7.8434327866632497e-16 -1.5614484457949821e-08
		0.30447039369025353 -7.9548369095814768e-16 -0.12611576606448771
		0.23303154234502338 -8.2720891400464705e-16 -0.2330315423450236
		0.12611576606448741 -8.7468905661357622e-16 -0.30447037798334181
		-1.7965911271019249e-16 -9.3069570751478986e-16 -0.32955635652766929
		-2.4028027078377042e-16 0.23303152663811169 -0.23303154234502349
		-1.7965911266914682e-16 0.32955634082075747 -1.5614484311597394e-08
		-3.330669771402477e-17 0.23303154234502349 0.23303152663811169
		1.1304573123268387e-16 -9.3069570751478986e-16 0.32955635652766929
		1.7366687545396415e-16 -0.23303152663811169 0.23303151115242399
		1.1304571732318942e-16 -0.32955634082075747 -1.5614484311597394e-08
		-3.330669771402477e-17 -0.23303152663811169 -0.23303154234502349
		-1.7965911271019249e-16 -9.3069570751478986e-16 -0.32955635652766929
		;
createNode pointConstraint -n "Ultimate_Walker_Rig1:walker_lf_ball_fk_ctrl_frzGrp_pointConstraint1" 
		-p "|group|Ultimate_Walker_Rig1:AniM_walker_Main|Ultimate_Walker_Rig1:Rig_Leg_grp|Ultimate_Walker_Rig1:walker_lf_leg_rig_grp|Ultimate_Walker_Rig1:walker_lf_ball_fk_ctrl_frzGrp|Ultimate_Walker_Rig1:walker_lf_ball_fk_ctrl_frzGrp";
	rename -uid "B1A2B83F-4EA1-F2A7-78E3-65BB99514B08";
	addAttr -ci true -k true -sn "w0" -ln "walker_lf_ball_fk_jntW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 5.5511151231257827e-17 2.0679515313825692e-25 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ultimate_Walker_Rig1:walker_lf_ball_fk_ctrl_frzGrp_parentConstraint1" 
		-p "|group|Ultimate_Walker_Rig1:AniM_walker_Main|Ultimate_Walker_Rig1:Rig_Leg_grp|Ultimate_Walker_Rig1:walker_lf_leg_rig_grp|Ultimate_Walker_Rig1:walker_lf_ball_fk_ctrl_frzGrp";
	rename -uid "E63649D9-4D4D-89DB-E8E6-28A893656478";
	addAttr -ci true -k true -sn "w0" -ln "walker_lf_ankle_fk_jntW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0.59671299748895001 -1.1102230246251565e-16 
		-2.2204460492503131e-16 ;
	setAttr ".tg[0].tor" -type "double3" -3.8361546170713592e-15 -3.180554681463512e-15 
		-48.050499189664144 ;
	setAttr ".lr" -type "double3" 180.00000000000003 -89.999999999999972 0 ;
	setAttr ".rst" -type "double3" 0.58301609754639927 1.5390003715864964e-09 0.36182342562900016 ;
	setAttr ".rsrr" -type "double3" 180 -89.999999999999986 0 ;
	setAttr -k on ".w0";
createNode transform -n "Ultimate_Walker_Rig1:walker_lf_ankle_fk_ctrl_frzGrp" -p "Ultimate_Walker_Rig1:walker_lf_leg_rig_grp";
	rename -uid "6B85C2B5-4638-00BD-C3E5-C38B4931DE6B";
createNode transform -n "Ultimate_Walker_Rig1:walker_lf_ankle_fk_ctrl_frzGrp" -p
		 "|group|Ultimate_Walker_Rig1:AniM_walker_Main|Ultimate_Walker_Rig1:Rig_Leg_grp|Ultimate_Walker_Rig1:walker_lf_leg_rig_grp|Ultimate_Walker_Rig1:walker_lf_ankle_fk_ctrl_frzGrp";
	rename -uid "BB663832-4BE5-7373-1743-4993CC5953F4";
	setAttr ".r" -type "double3" -1.2722218725854061e-14 1.4124500153760508e-30 -3.1805546814635168e-15 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
createNode transform -n "Ultimate_Walker_Rig1:walker_lf_ankle_fk_ctrl" -p "|group|Ultimate_Walker_Rig1:AniM_walker_Main|Ultimate_Walker_Rig1:Rig_Leg_grp|Ultimate_Walker_Rig1:walker_lf_leg_rig_grp|Ultimate_Walker_Rig1:walker_lf_ankle_fk_ctrl_frzGrp|Ultimate_Walker_Rig1:walker_lf_ankle_fk_ctrl_frzGrp";
	rename -uid "E92EEBF5-445D-C294-0DDC-B18D2DEB5422";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 0 5.5511151231257827e-17 -1.1102230246251565e-16 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
createNode nurbsCurve -n "Ultimate_Walker_Rig1:walker_lf_ankle_fk_ctrlShape" -p "Ultimate_Walker_Rig1:walker_lf_ankle_fk_ctrl";
	rename -uid "524EDE65-4639-33A7-094C-238EDC0D51EE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		1 44 0 no 3
		45 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44
		45
		0.20794261269315409 -4.9490285870600552e-16 -9.8523863283430478e-09
		0.19211392808116753 -0.079576184460635233 -9.8523863213137e-09
		0.14703762958397779 -0.14703761967327178 -9.8523863012958018e-09
		0.079576194315506332 -0.19211390839934309 -9.8523862713369065e-09
		9.2345057449236125e-17 -0.20794259301132967 -9.8523862359979773e-09
		-0.079576194315506166 -0.19211390839934314 -9.852386200659048e-09
		-0.14703762958397767 -0.14703761967327189 -9.8523861707001528e-09
		-0.19211392808116748 -0.079576184460635399 -9.8523861506822546e-09
		-0.20794261269315409 -6.7959299983612629e-16 -9.8523861436529068e-09
		-0.19211392808116753 0.079576189388070692 -9.8523861506822546e-09
		-0.14703762958397779 0.14703762958397767 -9.8523861707001528e-09
		-0.079576194315506332 0.19211390839934309 -9.852386200659048e-09
		-9.2345066199912966e-17 0.20794259301132967 -9.8523862359979773e-09
		0.079576194315506166 0.19211390839934314 -9.8523862713369065e-09
		0.14703762958397767 0.14703762958397779 -9.8523863012958018e-09
		0.19211392808116748 0.079576189388070859 -9.8523863213137e-09
		0.20794261269315409 -4.9490285870600552e-16 -9.8523863283430478e-09
		0.19211392808116748 -5.019322067483085e-16 -0.079576194315506332
		0.14703762958397767 -5.2195010453089106e-16 -0.14703762958397779
		0.079576194315506166 -5.519090000146177e-16 -0.19211391817046161
		-9.2345066225811836e-17 -5.872479292710659e-16 -0.20794260292203556
		-0.079576194315506332 -6.2258685852751411e-16 -0.19211391817046156
		-0.14703762958397779 -6.5254575401124075e-16 -0.14703762958397767
		-0.19211392808116753 -6.7256365179382331e-16 -0.079576194315506166
		-0.20794261269315409 -6.7959299983612629e-16 -9.8523861436529068e-09
		-0.19211392808116748 -6.7256365179382331e-16 0.079576184460635399
		-0.14703762958397767 -6.5254575401124075e-16 0.14703762958397779
		-0.079576194315506166 -6.2258685852751411e-16 0.19211391817046161
		9.2345066225812354e-17 -5.872479292710659e-16 0.20794260292203556
		0.079576194315506332 -5.519090000146177e-16 0.19211391817046156
		0.14703762958397779 -5.2195010453089106e-16 0.14703762958397767
		0.19211392808116753 -5.019322067483085e-16 0.079576184460635233
		0.20794261269315409 -4.9490285870600552e-16 -9.8523863283430478e-09
		0.19211392808116748 -5.019322067483085e-16 -0.079576194315506332
		0.14703762958397767 -5.2195010453089106e-16 -0.14703762958397779
		0.079576194315506166 -5.519090000146177e-16 -0.19211391817046161
		-9.2345066225811836e-17 -5.872479292710659e-16 -0.20794260292203556
		-1.3059564507911219e-16 0.14703761967327184 -0.14703762958397773
		-9.2345066199912966e-17 0.20794259301132967 -9.8523862359979773e-09
		-4.4012375498978253e-24 0.14703762958397773 0.14703761967327184
		9.2345066225812354e-17 -5.872479292710659e-16 0.20794260292203556
		1.3059563633862634e-16 -0.14703761967327184 0.14703760990215334
		9.2345057449236125e-17 -0.20794259301132967 -9.8523862359979773e-09
		-4.4012375498978253e-24 -0.14703761967327184 -0.14703762958397773
		-9.2345066225811836e-17 -5.872479292710659e-16 -0.20794260292203556
		;
createNode pointConstraint -n "Ultimate_Walker_Rig1:walker_lf_ankle_fk_ctrl_frzGrp_pointConstraint1" 
		-p "|group|Ultimate_Walker_Rig1:AniM_walker_Main|Ultimate_Walker_Rig1:Rig_Leg_grp|Ultimate_Walker_Rig1:walker_lf_leg_rig_grp|Ultimate_Walker_Rig1:walker_lf_ankle_fk_ctrl_frzGrp|Ultimate_Walker_Rig1:walker_lf_ankle_fk_ctrl_frzGrp";
	rename -uid "FE74A967-47EA-0CFD-A5C9-CEA695B2E8F9";
	addAttr -ci true -k true -sn "w0" -ln "walker_lf_ankle_fk_jntW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 5.5511151231257827e-17 5.5511151231257827e-17 1.1102230246251565e-16 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ultimate_Walker_Rig1:walker_lf_ankle_fk_ctrl_frzGrp_parentConstraint1" 
		-p "|group|Ultimate_Walker_Rig1:AniM_walker_Main|Ultimate_Walker_Rig1:Rig_Leg_grp|Ultimate_Walker_Rig1:walker_lf_leg_rig_grp|Ultimate_Walker_Rig1:walker_lf_ankle_fk_ctrl_frzGrp";
	rename -uid "E57B5615-483A-1814-EFA1-E18A2C9583FE";
	addAttr -ci true -k true -sn "w0" -ln "walker_lf_knee_fk_jntW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0.87961684055132561 3.3306690738754696e-16 
		-3.3306690738754696e-16 ;
	setAttr ".tg[0].tor" -type "double3" -2.2973583064552912e-15 -6.2109688085132775e-15 
		-46.430917303014198 ;
	setAttr ".lr" -type "double3" -90 -41.949500810335842 -89.999999999999972 ;
	setAttr ".rst" -type "double3" 0.58301609754639927 0.4437959209500002 -0.037064507613399883 ;
	setAttr ".rsrr" -type "double3" -90.000000000000028 -41.949500810335842 -89.999999999999972 ;
	setAttr -k on ".w0";
createNode transform -n "Ultimate_Walker_Rig1:walker_lf_knee_fk_ctrl_frzGrp" -p "Ultimate_Walker_Rig1:walker_lf_leg_rig_grp";
	rename -uid "FDD188A5-4C4E-4FA8-D5A6-D4ADE2C78D5C";
createNode transform -n "Ultimate_Walker_Rig1:walker_lf_knee_fk_ctrl_frzGrp" -p "|group|Ultimate_Walker_Rig1:AniM_walker_Main|Ultimate_Walker_Rig1:Rig_Leg_grp|Ultimate_Walker_Rig1:walker_lf_leg_rig_grp|Ultimate_Walker_Rig1:walker_lf_knee_fk_ctrl_frzGrp";
	rename -uid "D338110E-4C92-6751-6B71-06AE057A8350";
	setAttr ".r" -type "double3" 0 -8.8278125961003194e-32 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
createNode transform -n "Ultimate_Walker_Rig1:walker_lf_knee_fk_ctrl" -p "|group|Ultimate_Walker_Rig1:AniM_walker_Main|Ultimate_Walker_Rig1:Rig_Leg_grp|Ultimate_Walker_Rig1:walker_lf_leg_rig_grp|Ultimate_Walker_Rig1:walker_lf_knee_fk_ctrl_frzGrp|Ultimate_Walker_Rig1:walker_lf_knee_fk_ctrl_frzGrp";
	rename -uid "AF14C3B0-4F11-2FEE-244D-64A297824A27";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -2.2204460492503131e-16 -1.3877787807814457e-17 -1.1102230246251565e-16 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 1.4124500153760504e-30 1.7655625192200632e-31 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
createNode nurbsCurve -n "Ultimate_Walker_Rig1:walker_lf_knee_fk_ctrlShape" -p "Ultimate_Walker_Rig1:walker_lf_knee_fk_ctrl";
	rename -uid "6BFF1AE7-474F-667F-C74D-9D9FD4C3AD2B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		1 44 0 no 3
		45 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44
		45
		0.22283705703516876 -5.3035159616405542e-16 -1.0558089781343681e-08
		0.2058746006632379 -0.085276040950116788 -1.0558089773810836e-08
		0.15756959204061974 -0.15756958142003291 -1.0558089752359103e-08
		0.085276051510869338 -0.20587457957165028 -1.0558089720254323e-08
		9.8959518528781275e-17 -0.2228370359435812 -1.0558089682384148e-08
		-0.085276051510869144 -0.20587457957165034 -1.0558089644513973e-08
		-0.15756959204061957 -0.15756958142003308 -1.0558089612409193e-08
		-0.20587460066323784 -0.085276040950116982 -1.055808959095746e-08
		-0.22283705703516876 -7.2827066133217828e-16 -1.0558089583424615e-08
		-0.2058746006632379 0.085276046230492966 -1.055808959095746e-08
		-0.15756959204061974 0.15756959204061957 -1.0558089612409193e-08
		-0.085276051510869338 0.20587457957165028 -1.0558089644513973e-08
		-9.8959527906248682e-17 0.2228370359435812 -1.0558089682384148e-08
		0.085276051510869144 0.20587457957165034 -1.0558089720254323e-08
		0.15756959204061957 0.15756959204061974 -1.0558089752359103e-08
		0.20587460066323784 0.08527604623049316 -1.0558089773810836e-08
		0.22283705703516876 -5.3035159616405542e-16 -1.0558089781343681e-08
		0.20587460066323784 -5.3788444001138234e-16 -0.085276051510869338
		0.15756959204061957 -5.5933617312240133e-16 -0.15756959204061974
		0.085276051510869144 -5.9144095441352168e-16 -0.20587459004265124
		-9.8959527934002621e-17 -6.2931112874811685e-16 -0.22283704656416783
		-0.085276051510869338 -6.6718130308271202e-16 -0.20587459004265118
		-0.15756959204061974 -6.9928608437383237e-16 -0.15756959204061957
		-0.2058746006632379 -7.2073781748485136e-16 -0.085276051510869144
		-0.22283705703516876 -7.2827066133217828e-16 -1.0558089583424615e-08
		-0.20587460066323784 -7.2073781748485136e-16 0.085276040950116982
		-0.15756959204061957 -6.9928608437383237e-16 0.15756959204061974
		-0.085276051510869144 -6.6718130308271202e-16 0.20587459004265124
		9.8959527934003188e-17 -6.2931112874811685e-16 0.22283704656416783
		0.085276051510869338 -5.9144095441352168e-16 0.20587459004265118
		0.15756959204061974 -5.5933617312240133e-16 0.15756959204061957
		0.2058746006632379 -5.3788444001138234e-16 0.085276040950116788
		0.22283705703516876 -5.3035159616405542e-16 -1.0558089781343681e-08
		0.20587460066323784 -5.3788444001138234e-16 -0.085276051510869338
		0.15756959204061957 -5.5933617312240133e-16 -0.15756959204061974
		0.085276051510869144 -5.9144095441352168e-16 -0.20587459004265124
		-9.8959527934002621e-17 -6.2931112874811685e-16 -0.22283704656416783
		-1.3994990653494307e-16 0.15756958142003299 -0.15756959204061965
		-9.8959527906248682e-17 0.2228370359435812 -1.0558089682384148e-08
		-4.7164879380395188e-24 0.15756959204061965 0.15756958142003299
		9.8959527934003188e-17 -6.2931112874811685e-16 0.22283704656416783
		1.399498971683966e-16 -0.15756958142003299 0.15756957094903207
		9.8959518528781275e-17 -0.2228370359435812 -1.0558089682384148e-08
		-4.7164879380395188e-24 -0.15756958142003299 -0.15756959204061965
		-9.8959527934002621e-17 -6.2931112874811685e-16 -0.22283704656416783
		;
createNode pointConstraint -n "Ultimate_Walker_Rig1:walker_lf_knee_fk_ctrl_frzGrp_pointConstraint1" 
		-p "|group|Ultimate_Walker_Rig1:AniM_walker_Main|Ultimate_Walker_Rig1:Rig_Leg_grp|Ultimate_Walker_Rig1:walker_lf_leg_rig_grp|Ultimate_Walker_Rig1:walker_lf_knee_fk_ctrl_frzGrp|Ultimate_Walker_Rig1:walker_lf_knee_fk_ctrl_frzGrp";
	rename -uid "E03A6996-484E-20DD-B790-7D9426F20903";
	addAttr -ci true -k true -sn "w0" -ln "walker_lf_knee_fk_jntW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 0 -1.3877787807814457e-17 -1.1102230246251565e-16 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ultimate_Walker_Rig1:walker_lf_knee_fk_ctrl_frzGrp_parentConstraint1" 
		-p "|group|Ultimate_Walker_Rig1:AniM_walker_Main|Ultimate_Walker_Rig1:Rig_Leg_grp|Ultimate_Walker_Rig1:walker_lf_leg_rig_grp|Ultimate_Walker_Rig1:walker_lf_knee_fk_ctrl_frzGrp";
	rename -uid "EDB5ED2C-4564-6DB2-D5CB-13A237A0E5AF";
	addAttr -ci true -k true -sn "w0" -ln "walker_lf_upLeg_fk_jntW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0.98861312866999751 1.3433698597964394e-14 
		2.2204460492503131e-16 ;
	setAttr ".tg[0].tor" -type "double3" -3.2689131964254025e-17 -7.8914437897177113e-16 
		4.4814151967256173 ;
	setAttr ".lr" -type "double3" -89.999999999999986 4.4814164926783526 -89.999999999999957 ;
	setAttr ".rst" -type "double3" 0.58301609754639971 1.3207235344300012 0.031665012228999992 ;
	setAttr ".rsrr" -type "double3" -90.000000000000014 4.4814164926783455 -90.000000000000014 ;
	setAttr -k on ".w0";
createNode transform -n "Ultimate_Walker_Rig1:walker_lf_upLegupJntFkCtrl_grp" -p "Ultimate_Walker_Rig1:walker_lf_leg_rig_grp";
	rename -uid "005C59EA-496E-B4BB-03E7-A3883EBBA069";
createNode parentConstraint -n "Ultimate_Walker_Rig1:walker_lf_upLegupJntFkCtrl_grp_parentConstraint1" 
		-p "Ultimate_Walker_Rig1:walker_lf_upLegupJntFkCtrl_grp";
	rename -uid "C400A3F9-4D22-0A84-046F-0C91EC4A49E0";
	addAttr -ci true -k true -sn "w0" -ln "walker_hip_jntW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -0.72869950102630821 0.035533216670092189 0.58301609754639949 ;
	setAttr ".tg[0].tor" -type "double3" 2.7675968776361132e-15 5.7814847994859863e-15 
		-179.73734255356067 ;
	setAttr ".lr" -type "double3" 270 1.2959527321330469e-06 -90.000000000000014 ;
	setAttr ".rst" -type "double3" 0.58301609754639938 2.3093366630999994 0.031665034590100033 ;
	setAttr ".rsrr" -type "double3" -90.000000000000014 1.2959527384941561e-06 -90.000000000000014 ;
	setAttr -k on ".w0";
createNode transform -n "Ultimate_Walker_Rig1:walker_lf_upLeg_fk_ctrl_frzGrp" -p "Ultimate_Walker_Rig1:walker_lf_leg_rig_grp";
	rename -uid "251530BB-4A59-1239-041D-AEA0DBBFB5E0";
createNode transform -n "Ultimate_Walker_Rig1:walker_lf_upLeg_fk_ctrl" -p "Ultimate_Walker_Rig1:walker_lf_upLeg_fk_ctrl_frzGrp";
	rename -uid "A11784FA-40AF-AF70-6C1F-728F1135DDFE";
	addAttr -ci true -sn "align" -ln "align" -min 0 -max 1 -at "bool";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 0 0 -1.1102230246251565e-16 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 6.3611093629270375e-15 -1.5270015454524042e-31 -6.361109362927032e-15 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
createNode nurbsCurve -n "Ultimate_Walker_Rig1:walker_lf_upLeg_fk_ctrlShape" -p "Ultimate_Walker_Rig1:walker_lf_upLeg_fk_ctrl";
	rename -uid "1977B835-4D20-EFB9-608D-87B6AED72B8E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		1 44 0 no 3
		45 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44
		45
		0.36572086548613625 -8.7041467582503908e-16 -1.7327969455547105e-08
		0.33788202975723713 -0.13995530149451693 -1.7327969443184176e-08
		0.2586037005788408 -0.25860368314830096 -1.7327969407977523e-08
		0.13995531882685661 -0.33788199514165851 -1.7327969355287058e-08
		1.6241266711185011e-16 -0.36572083087055768 -1.7327969293134414e-08
		-0.13995531882685627 -0.33788199514165856 -1.7327969230981767e-08
		-0.25860370057884052 -0.25860368314830123 -1.7327969178291301e-08
		-0.33788202975723708 -0.13995530149451724 -1.7327969143084648e-08
		-0.36572086548613625 -1.1952400561838775e-15 -1.7327969130721723e-08
		-0.33788202975723713 0.1399553101606866 -1.7327969143084648e-08
		-0.2586037005788408 0.25860370057884052 -1.7327969178291301e-08
		-0.13995531882685661 0.33788199514165851 -1.7327969230981767e-08
		-1.6241268250217856e-16 0.36572083087055768 -1.7327969293134414e-08
		0.13995531882685627 0.33788199514165856 -1.7327969355287058e-08
		0.25860370057884052 0.2586037005788408 -1.7327969407977523e-08
		0.33788202975723708 0.13995531016068691 -1.7327969443184176e-08
		0.36572086548613625 -8.7041467582503908e-16 -1.7327969455547105e-08
		0.33788202975723708 -8.8277760238703143e-16 -0.13995531882685655
		0.25860370057884052 -9.1798425295009879e-16 -0.25860370057884075
		0.13995531882685627 -9.7067471905232581e-16 -0.33788201232669751
		-1.6241268254772842e-16 -1.0328273660044583e-15 -0.36572084830109713
		-0.13995531882685661 -1.0949800129565906e-15 -0.3378820123266974
		-0.2586037005788408 -1.1476704790588178e-15 -0.25860370057884047
		-0.33788202975723713 -1.1828771296218851e-15 -0.13995531882685622
		-0.36572086548613625 -1.1952400561838775e-15 -1.7327969130721723e-08
		-0.33788202975723708 -1.1828771296218851e-15 0.13995530149451729
		-0.25860370057884052 -1.1476704790588178e-15 0.25860370057884086
		-0.13995531882685627 -1.0949800129565906e-15 0.33788201232669762
		1.6241268254772933e-16 -1.0328273660044583e-15 0.36572084830109725
		0.13995531882685661 -9.7067471905232581e-16 0.33788201232669751
		0.2586037005788408 -9.1798425295009879e-16 0.25860370057884058
		0.33788202975723713 -8.8277760238703143e-16 0.13995530149451699
		0.36572086548613625 -8.7041467582503908e-16 -1.7327969455547105e-08
		0.33788202975723708 -8.8277760238703143e-16 -0.13995531882685655
		0.25860370057884052 -9.1798425295009879e-16 -0.25860370057884075
		0.13995531882685627 -9.7067471905232581e-16 -0.33788201232669751
		-1.6241268254772842e-16 -1.0328273660044583e-15 -0.36572084830109713
		-2.2968621836800454e-16 0.25860368314830112 -0.25860370057884058
		-1.6241268250217856e-16 0.36572083087055768 -1.7327969293134414e-08
		-7.7407145338260733e-24 0.25860370057884063 0.25860368314830118
		1.6241268254772933e-16 -1.0328273660044583e-15 0.36572084830109725
		2.2968620299559953e-16 -0.25860368314830112 0.25860366596326212
		1.6241266711185011e-16 -0.36572083087055768 -1.7327969293134414e-08
		-7.7407145338260733e-24 -0.25860368314830112 -0.25860370057884058
		-1.6241268254772842e-16 -1.0328273660044583e-15 -0.36572084830109713
		;
createNode pointConstraint -n "Ultimate_Walker_Rig1:walker_lf_upLeg_fk_ctrl_frzGrp_pointConstraint1" 
		-p "Ultimate_Walker_Rig1:walker_lf_upLeg_fk_ctrl_frzGrp";
	rename -uid "9280DBD3-4B75-8098-3E07-D4BF4BFC0234";
	addAttr -ci true -k true -sn "w0" -ln "walker_lf_upLegupJntFkCtrl_grpW0" -dv 1 
		-min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 0.58301609754639938 2.3093366630999994 0.031665034590100033 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "Ultimate_Walker_Rig1:walker_lf_upLeg_fk_ctrl_frzGrp_orientConstraint1" 
		-p "Ultimate_Walker_Rig1:walker_lf_upLeg_fk_ctrl_frzGrp";
	rename -uid "70BA7799-4C71-2F6B-7A86-808BBB281D26";
	addAttr -ci true -k true -sn "w0" -ln "walker_lf_upLegupJntFkCtrl_grpW0" -dv 1 
		-min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 270 1.2959527384941565e-06 -90.000000000000014 ;
	setAttr ".rsrr" -type "double3" -90.000000000000014 1.2959527448552662e-06 -90.000000000000014 ;
	setAttr -k on ".w0";
createNode transform -n "Ultimate_Walker_Rig1:walker_lf_legIK_Grp" -p "Ultimate_Walker_Rig1:walker_lf_leg_rig_grp";
	rename -uid "B91A6E37-42B8-4F20-EA77-D7B32FDEF07A";
createNode joint -n "Ultimate_Walker_Rig1:walker_lf_upLeg_ik_jnt" -p "Ultimate_Walker_Rig1:walker_lf_legIK_Grp";
	rename -uid "1872423C-49FE-03F3-BB81-1E86E7D301BA";
	addAttr -ci true -h true -sn "createRot" -ln "createRot" -dt "float3";
	setAttr ".ove" yes;
	setAttr ".ovc" 28;
	setAttr ".t" -type "double3" -0.72869950102630909 0.035533216670092169 0.58301609754639938 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -179.73734255356067 ;
	setAttr ".radi" 0.89313380820640498;
	setAttr ".createRot" -type "float3" 0 0 0 ;
createNode joint -n "Ultimate_Walker_Rig1:walker_lf_knee_ik_jnt" -p "Ultimate_Walker_Rig1:walker_lf_upLeg_ik_jnt";
	rename -uid "4F7E5371-4B1E-CA50-A20F-BA811E1BABE6";
	setAttr ".ove" yes;
	setAttr ".ovc" 28;
	setAttr ".t" -type "double3" 0.98861312866210938 1.3433698597964394e-14 1.1102230246251565e-16 ;
	setAttr ".r" -type "double3" 7.6217791409360755e-22 1.4064257774658152e-20 3.0193237127840964e-06 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 4.4814151967256262 ;
	setAttr ".radi" 0.84979013353145527;
createNode joint -n "Ultimate_Walker_Rig1:walker_lf_ankle_ik_jnt" -p "Ultimate_Walker_Rig1:walker_lf_knee_ik_jnt";
	rename -uid "AFE598B3-4049-BA13-3653-F5A692A4722C";
	addAttr -ci true -h true -sn "createRot" -ln "createRot" -dt "float3";
	setAttr ".ove" yes;
	setAttr ".ovc" 28;
	setAttr ".t" -type "double3" 0.87961685657501221 3.3306690738754696e-16 -2.2204460492503131e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -46.43091730301424 ;
	setAttr ".radi" 0.73729004431155587;
	setAttr ".createRot" -type "float3" 0 0 0 ;
createNode ikEffector -n "Ultimate_Walker_Rig1:effector2" -p "Ultimate_Walker_Rig1:walker_lf_knee_ik_jnt";
	rename -uid "B4E7727A-4756-BCB2-CC5D-98ACCA2AF466";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode parentConstraint -n "Ultimate_Walker_Rig1:walker_lf_legIK_Grp_parentConstraint1" 
		-p "Ultimate_Walker_Rig1:walker_lf_legIK_Grp";
	rename -uid "8D14C780-4720-2AD5-EA49-6DB9F92AD6CE";
	addAttr -ci true -k true -sn "w0" -ln "walker_hip_jntW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 4.4408920985006262e-16 2.6020852139652106e-18 
		0 ;
	setAttr ".tg[0].tor" -type "double3" 3.8123586506410354e-16 6.8988129873577089e-15 
		-4.9696166897867449e-17 ;
	setAttr ".lr" -type "double3" 90 0.2626561504866004 90.000000000000014 ;
	setAttr ".rst" -type "double3" -5.7142390883069934e-32 3.037865615999999 -0.0072083119257999829 ;
	setAttr ".rsrr" -type "double3" 90.000000000000014 0.2626561504866004 90 ;
	setAttr -k on ".w0";
createNode transform -n "Ultimate_Walker_Rig1:walker_lf_heel_ik_ctrl_frzGrp" -p "Ultimate_Walker_Rig1:walker_lf_leg_rig_grp";
	rename -uid "71163551-4A46-842D-6232-51B0341BEB6B";
	setAttr ".t" -type "double3" 0.58301609754639938 1.5390000728584829e-09 -0.25085057272848399 ;
	setAttr ".r" -type "double3" -1.4033418597069752e-14 0 0 ;
createNode transform -n "Ultimate_Walker_Rig1:walker_lf_heel_ik_ctrl" -p "Ultimate_Walker_Rig1:walker_lf_heel_ik_ctrl_frzGrp";
	rename -uid "E1E16725-416C-970B-0331-36BB99BCA221";
	addAttr -ci true -sn "stretchyLeg" -ln "stretchyLeg" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "maxStretch" -ln "maxStretch" -dv 3 -min 1 -max 10 -at "double";
	addAttr -ci true -sn "stretchValue" -ln "stretchValue" -at "double";
	addAttr -ci true -sn "Extras" -ln "Extras" -min 0 -max 0 -en "------------" -at "enum";
	addAttr -ci true -sn "pvControl" -ln "pvControl" -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "footRoll" -ln "footRoll" -min -180 -max 180 -at "double";
	addAttr -ci true -k true -sn "footBreak" -ln "footBreak" -dv 40 -min -180 -max 180 
		-at "double";
	addAttr -ci true -k true -sn "toeRoll" -ln "toeRoll" -min -180 -max 180 -at "double";
	addAttr -ci true -sn "legTwist" -ln "legTwist" -min -180 -max 180 -at "double";
	addAttr -ci true -sn "heelTwist" -ln "heelTwist" -min -180 -max 180 -at "double";
	addAttr -ci true -sn "ballTwist" -ln "ballTwist" -min -180 -max 180 -at "double";
	addAttr -ci true -sn "toeTwist" -ln "toeTwist" -min -180 -max 180 -at "double";
	addAttr -ci true -sn "toeRaise" -ln "toeRaise" -min -180 -max 180 -at "double";
	addAttr -ci true -sn "ballRaise" -ln "ballRaise" -min -180 -max 180 -at "double";
	setAttr -k off ".v";
	setAttr ".ro" 3;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".stretchyLeg" 1;
	setAttr ".maxStretch" 1;
	setAttr -k on ".Extras";
	setAttr -k on ".pvControl";
	setAttr -k on ".footRoll";
	setAttr -k on ".footBreak";
	setAttr -k on ".toeRoll";
	setAttr -k on ".legTwist";
	setAttr -k on ".heelTwist";
	setAttr -k on ".ballTwist";
	setAttr -k on ".toeTwist";
createNode nurbsCurve -n "Ultimate_Walker_Rig1:walker_lf_heel_ik_ctrlShape" -p "Ultimate_Walker_Rig1:walker_lf_heel_ik_ctrl";
	rename -uid "3E935CEB-49B8-A53E-D008-BCA037783B3E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		0 0.36125625731540723 -0.44131651940000016
		-0.22065825970000003 0.18069724915367422 -0.44131653869055848
		-9.6452791435125698e-09 0.18069724915367422 -0.22065825970000014
		0 0.36125625731540723 -0.44131651940000016
		-9.6452791435125698e-09 0.18069724915367422 -0.22065825970000014
		0 5.5511151231257827e-17 -0.44131651940000016
		2.8935835664125535e-08 0.18069724915367422 -0.66197477910000013
		0 0.36125625731540723 -0.44131651940000016
		-0.22065825970000003 0.18069724915367422 -0.44131653869055848
		0 5.5511151231257827e-17 -0.44131651940000016
		0.22065825970000003 0.18069724915367422 -0.44131651940000016
		0 0.36125625731540723 -0.44131651940000016
		-9.6452791435125698e-09 0.18069724915367422 -0.22065825970000014
		-0.22065825970000003 0.18069724915367422 -0.44131653869055848
		2.8935835664125535e-08 0.18069724915367422 -0.66197477910000013
		0.22065825970000003 0.18069724915367422 -0.44131651940000016
		-9.6452791435125698e-09 0.18069724915367422 -0.22065825970000014
		;
createNode transform -n "Ultimate_Walker_Rig1:walker_lf_foot_ctrl" -p "Ultimate_Walker_Rig1:walker_lf_leg_rig_grp";
	rename -uid "0B63A414-4AA1-7EC5-0EFD-F68FC4FC9D53";
	addAttr -ci true -sn "ikFkBlend" -ln "ikFkBlend" -dv 1 -min 0 -max 1 -at "double";
	addAttr -ci true -sn "ikVis" -ln "ikVis" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "fkVis" -ln "fkVis" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "legStretch" -ln "legStretch" -min -9.9 -max 20 -at "double";
	addAttr -ci true -sn "kneeStretch" -ln "kneeStretch" -min -9.9 -max 20 -at "double";
	addAttr -ci true -sn "ankleStretch" -ln "ankleStretch" -min -9.9 -max 20 -at "double";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -k on ".ikFkBlend";
createNode nurbsCurve -n "Ultimate_Walker_Rig1:walker_lf_foot_ctrlShape" -p "Ultimate_Walker_Rig1:walker_lf_foot_ctrl";
	rename -uid "6CFBA210-466A-A6EE-0867-82A3CA153C57";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		0.45896918017600002 5.6205657410421576e-17 0.73435068828160033
		0.45896918017600002 1.47617603182389e-16 -0.73435068828159988
		-0.45896918017600002 -5.6205657410421576e-17 -0.73435068828159988
		-0.45896918017600002 -1.47617603182389e-16 0.73435068828160033
		0.45896918017600002 5.6205657410421576e-17 0.73435068828160033
		;
createNode parentConstraint -n "Ultimate_Walker_Rig1:walker_lf_foot_ctrl_parentConstraint1" 
		-p "Ultimate_Walker_Rig1:walker_lf_foot_ctrl";
	rename -uid "64E1C44E-471C-4842-45A4-6F831C156F9B";
	addAttr -ci true -sn "w0" -ln "walker_lf_ankle_jntW0" -dv 1 -min 0 -at "double";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0.5005290901854984 0.10701257906109451 1.1102230246251565e-16 ;
	setAttr ".tg[0].tor" -type "double3" 131.94950081033585 -89.999999999999986 0 ;
	setAttr ".lr" -type "double3" 87.500000000000014 4.0374095518611899e-14 -5.3800201176053829e-15 ;
	setAttr ".rst" -type "double3" 0.58301609754639949 -1.1102230246251565e-16 0.21793792913450968 ;
	setAttr ".rsrr" -type "double3" -6.3611093629270335e-15 -1.2722218725854067e-14 
		7.0622500768802555e-31 ;
	setAttr -k off ".int";
createNode transform -n "Ultimate_Walker_Rig1:walker_lf_knee_pv_ctrl_frzGrp" -p "Ultimate_Walker_Rig1:walker_lf_leg_rig_grp";
	rename -uid "8E31866D-4B1A-5C54-12F6-B1B31354ACAB";
	setAttr ".t" -type "double3" 0.58301609750000005 1.284326118089363 1.019607898379655 ;
createNode transform -n "Ultimate_Walker_Rig1:walker_lf_legPvCtrlGrp_space_grp" -p
		 "Ultimate_Walker_Rig1:walker_lf_knee_pv_ctrl_frzGrp";
	rename -uid "27A1D8CB-4D55-4FAE-6B2A-2CAEB80470D5";
createNode parentConstraint -n "Ultimate_Walker_Rig1:walker_lf_legPvCtrlGrp_lfLegIkCtrlSpcParCon" 
		-p "Ultimate_Walker_Rig1:walker_lf_legPvCtrlGrp_space_grp";
	rename -uid "1FF685A6-479E-0AFB-D518-86B3CD2BBC15";
	addAttr -ci true -k true -sn "w0" -ln "walker_lfLegIkCtrl_space_switch_grpW0" -dv 
		1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -0.58301609754639938 -1.5390000728584829e-09 
		0.25085057272848399 ;
	setAttr ".rst" -type "double3" -0.58301609750000005 -1.284326118089363 -1.019607898379655 ;
	setAttr -k on ".w0";
createNode transform -n "Ultimate_Walker_Rig1:walker_lf_knee_pv_ctrl" -p "Ultimate_Walker_Rig1:walker_lf_legPvCtrlGrp_space_grp";
	rename -uid "4D674272-4CE6-FC75-2C1C-DAB1B424B47F";
	addAttr -ci true -sn "snapKnee" -ln "snapKnee" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "________SPACES___" -ln "________SPACES___" -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "lfLegIkCtrl" -ln "lfLegIkCtrl" -min 0 -max 1 -at "double";
	setAttr -k off ".v";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".rp" -type "double3" 0.58301609750000005 1.284326118089363 1.019607898379655 ;
	setAttr ".sp" -type "double3" 0.58301609750000005 1.284326118089363 1.019607898379655 ;
	setAttr -k on ".lfLegIkCtrl";
createNode nurbsCurve -n "Ultimate_Walker_Rig1:walker_lf_knee_pv_ctrlShape" -p "Ultimate_Walker_Rig1:walker_lf_knee_pv_ctrl";
	rename -uid "E4D2E31E-4104-E96C-8F18-EA9AB9F78681";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		1 44 0 no 3
		45 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44
		45
		0.58301609749999983 1.2843261242677022 0.93134459449965512
		0.54923919694222789 1.2843261241157355 0.93806323663766678
		0.52060452183049266 1.2843261236829713 0.95719631850345033
		0.50147144411215716 1.2843261230352938 0.98583099363888538
		0.49475280197414556 1.284326122271306 1.0196078983796553
		0.50147144411215716 1.2843261215073183 1.0533848031204249
		0.52060452183049266 1.2843261208596408 1.0820194782558599
		0.54923919694222789 1.2843261204268765 1.1011525601216436
		0.58301609749999983 1.2843261202749099 1.1078712022596551
		0.61679300014927108 1.2843261204268765 1.1011525601216436
		0.64542767737620488 1.2843261208596408 1.0820194782558599
		0.66456075088784294 1.2843261215073183 1.0533848031204249
		0.6712793930258546 1.284326122271306 1.019607898379655
		0.66456075088784294 1.2843261230352938 0.98583099363888527
		0.64542767737620488 1.2843261236829713 0.95719631850345033
		0.61679300014927096 1.2843261241157355 0.93806323663766666
		0.58301609749999983 1.2843261242677022 0.93134459449965512
		0.58301609749999983 1.3181030246745624 0.93806323740165443
		0.58301609749999983 1.3467376993772331 0.95719631991511545
		0.58301609749999983 1.3658707763886417 0.98583099548331465
		0.58301609749999983 1.3725894178219149 1.019607900376051
		0.58301609749999983 1.3658707748606662 1.0533848049648542
		0.58301609749999983 1.3467376965539026 1.0820194796675251
		0.58301609749999983 1.3181030209857034 1.1011525608856312
		0.58301609749999983 1.2843261202749099 1.1078712022596551
		0.58301609749999983 1.2505492156871614 1.1011525593576559
		0.58301609749999983 1.221914536801493 1.0820194768441946
		0.58301609749999983 1.2027814597900843 1.0533848012759954
		0.58301609749999983 1.1960628183568112 1.0196078963832591
		0.58301609749999983 1.2027814613180599 0.98583099179445577
		0.58301609749999983 1.2219145396248234 0.95719631709178499
		0.58301609749999983 1.2505492193760204 0.93806323587367901
		0.58301609749999983 1.2843261242677022 0.93134459449965512
		0.58301609749999983 1.3181030246745624 0.93806323740165443
		0.58301609749999983 1.3467376993772331 0.95719631991511545
		0.58301609749999983 1.3658707763886417 0.98583099548331465
		0.58301609749999983 1.3725894178219149 1.019607900376051
		0.64542767316950755 1.3467376979655679 1.0196078997913203
		0.6712793930258546 1.284326122271306 1.019607898379655
		0.64542767737620488 1.2219145424198556 1.0196078969679898
		0.58301609749999983 1.1960628183568112 1.0196078963832591
		0.52060452183049255 1.2219145465673038 1.01960789696799
		0.49475280197414556 1.284326122271306 1.0196078983796553
		0.52060452183049266 1.3467376979655679 1.0196078997913203
		0.58301609749999983 1.3725894178219149 1.019607900376051
		;
createNode transform -n "Ultimate_Walker_Rig1:walker_lf_knee_pv_ctrl_annLoc" -p "Ultimate_Walker_Rig1:walker_lf_knee_pv_ctrl";
	rename -uid "2C8B8CFD-4A57-8A07-601B-C48D6BEBC8E8";
	setAttr ".v" no;
createNode locator -n "Ultimate_Walker_Rig1:walker_lf_knee_pv_ctrl_annLocShape" -p
		 "Ultimate_Walker_Rig1:walker_lf_knee_pv_ctrl_annLoc";
	rename -uid "73AE2B97-46A8-6CD8-11D5-0F92EEF676EE";
	setAttr -k off ".v";
createNode pointConstraint -n "Ultimate_Walker_Rig1:walker_lf_knee_pv_ctrl_annLoc_pointConstraint1" 
		-p "Ultimate_Walker_Rig1:walker_lf_knee_pv_ctrl_annLoc";
	rename -uid "C9541416-4079-32ED-381C-77A65CC66446";
	addAttr -ci true -k true -sn "w0" -ln "walker_lf_knee_pv_ctrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 0.58301609750000005 1.284326118089363 1.019607898379655 ;
	setAttr -k on ".w0";
createNode transform -n "Ultimate_Walker_Rig1:walker_lf_legStrDist_dist" -p "Ultimate_Walker_Rig1:walker_lf_leg_rig_grp";
	rename -uid "AF454737-4AF9-AFD4-3C01-0F89A1E03015";
	setAttr ".v" no;
createNode distanceDimShape -n "Ultimate_Walker_Rig1:walker_lf_legStrDist_distShape" 
		-p "Ultimate_Walker_Rig1:walker_lf_legStrDist_dist";
	rename -uid "C58E67B9-4CF6-FE00-194C-3D87332F53C1";
	setAttr -k off ".v";
createNode transform -n "Ultimate_Walker_Rig1:walker_lf_legStrDist_dist_sp" -p "Ultimate_Walker_Rig1:walker_lf_leg_rig_grp";
	rename -uid "2BA9D24A-417A-1DE6-ADCE-85ABA88C103F";
	setAttr ".v" no;
	setAttr ".r" -type "double3" -90.000000000000014 1.2959527384941561e-06 -90.000000000000014 ;
createNode locator -n "Ultimate_Walker_Rig1:walker_lf_legStrDist_dist_spShape" -p
		 "Ultimate_Walker_Rig1:walker_lf_legStrDist_dist_sp";
	rename -uid "D86B5B9D-4ED6-F6CE-BDA8-DFA3AEE3A0F6";
	setAttr -k off ".v";
createNode pointConstraint -n "Ultimate_Walker_Rig1:walker_lf_legStrDist_dist_sp_pointConstraint1" 
		-p "Ultimate_Walker_Rig1:walker_lf_legStrDist_dist_sp";
	rename -uid "74BE70F7-4185-932F-4237-6AA3E7AD9F63";
	addAttr -ci true -k true -sn "w0" -ln "walker_lf_upLeg_ik_jntW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 0.58301609754639949 2.309336663099999 0.031665034590100019 ;
	setAttr -k on ".w0";
createNode transform -n "Ultimate_Walker_Rig1:walker_lf_legStrDist_dist_ep" -p "Ultimate_Walker_Rig1:walker_lf_leg_rig_grp";
	rename -uid "24542ACF-4CA8-8466-2946-F3BC3FE10003";
	setAttr ".v" no;
	setAttr ".r" -type "double3" -90.000000000000028 -41.949500810335849 -90 ;
createNode locator -n "Ultimate_Walker_Rig1:walker_lf_legStrDist_dist_epShape" -p
		 "Ultimate_Walker_Rig1:walker_lf_legStrDist_dist_ep";
	rename -uid "F4DA9BD2-438B-933D-CE7B-94A5A5394BC1";
	setAttr -k off ".v";
createNode pointConstraint -n "Ultimate_Walker_Rig1:walker_lf_legStrDist_dist_ep_pointConstraint1" 
		-p "Ultimate_Walker_Rig1:walker_lf_legStrDist_dist_ep";
	rename -uid "EC7F249D-4E5C-71B0-8042-F4ADE1B82401";
	addAttr -ci true -k true -sn "w0" -ln "walker_lf_ankle_rev_rig_jntW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 0.58301609754639938 0.44379592094999964 -0.037064507613400299 ;
	setAttr -k on ".w0";
createNode transform -n "Ultimate_Walker_Rig1:walker_lf_upLegPvCtrl_dist" -p "Ultimate_Walker_Rig1:walker_lf_leg_rig_grp";
	rename -uid "25E5BA9E-43ED-0E94-6DB3-DB855A6E98F5";
	setAttr ".v" no;
createNode distanceDimShape -n "Ultimate_Walker_Rig1:walker_lf_upLegPvCtrl_distShape" 
		-p "Ultimate_Walker_Rig1:walker_lf_upLegPvCtrl_dist";
	rename -uid "E0C49DA1-42C8-80D4-BB22-92B0EB2C6B68";
	setAttr -k off ".v";
createNode transform -n "Ultimate_Walker_Rig1:walker_lf_upLegPvCtrl_dist_sp" -p "Ultimate_Walker_Rig1:walker_lf_leg_rig_grp";
	rename -uid "0CD5629C-4540-82B3-AD63-9E97403B2FBB";
	setAttr ".v" no;
	setAttr ".r" -type "double3" -90.000000000000014 1.2959527384941561e-06 -90.000000000000014 ;
createNode locator -n "Ultimate_Walker_Rig1:walker_lf_upLegPvCtrl_dist_spShape" -p
		 "Ultimate_Walker_Rig1:walker_lf_upLegPvCtrl_dist_sp";
	rename -uid "5B132CD3-4122-09FF-98DF-7AA9053474C7";
	setAttr -k off ".v";
createNode pointConstraint -n "Ultimate_Walker_Rig1:walker_lf_upLegPvCtrl_dist_sp_pointConstraint1" 
		-p "Ultimate_Walker_Rig1:walker_lf_upLegPvCtrl_dist_sp";
	rename -uid "F9E6046A-4A79-C62E-1545-2C94C440B083";
	addAttr -ci true -k true -sn "w0" -ln "walker_lf_upLeg_ik_jntW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 0.58301609754639949 2.309336663099999 0.031665034590100019 ;
	setAttr -k on ".w0";
createNode transform -n "Ultimate_Walker_Rig1:walker_lf_upLegPvCtrl_dist_ep" -p "Ultimate_Walker_Rig1:walker_lf_leg_rig_grp";
	rename -uid "1492FE93-494F-944E-E8BD-31AD7EB0BF6D";
	setAttr ".v" no;
createNode locator -n "Ultimate_Walker_Rig1:walker_lf_upLegPvCtrl_dist_epShape" -p
		 "Ultimate_Walker_Rig1:walker_lf_upLegPvCtrl_dist_ep";
	rename -uid "01E2C0C5-4BD2-A350-E749-3695585CA215";
	setAttr -k off ".v";
createNode pointConstraint -n "Ultimate_Walker_Rig1:walker_lf_upLegPvCtrl_dist_ep_pointConstraint1" 
		-p "Ultimate_Walker_Rig1:walker_lf_upLegPvCtrl_dist_ep";
	rename -uid "47B150DE-44A6-D2B2-F584-FFB0BB8B5CF4";
	addAttr -ci true -k true -sn "w0" -ln "walker_lf_knee_pv_ctrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 0.58301609750000005 1.284326118089363 1.019607898379655 ;
	setAttr -k on ".w0";
createNode transform -n "Ultimate_Walker_Rig1:walker_lf_legPvIkCtrl_dist" -p "Ultimate_Walker_Rig1:walker_lf_leg_rig_grp";
	rename -uid "15E56518-4B82-A677-C50A-DEB8BB2666AC";
	setAttr ".v" no;
createNode distanceDimShape -n "Ultimate_Walker_Rig1:walker_lf_legPvIkCtrl_distShape" 
		-p "Ultimate_Walker_Rig1:walker_lf_legPvIkCtrl_dist";
	rename -uid "CC01E8D7-4D07-388C-D11F-12BCB5C0878A";
	setAttr -k off ".v";
createNode transform -n "Ultimate_Walker_Rig1:walker_lf_legPvIkCtrl_dist_sp" -p "Ultimate_Walker_Rig1:walker_lf_leg_rig_grp";
	rename -uid "CC49CF8D-4F8D-29BF-7F12-E887A8C323E1";
	setAttr ".v" no;
createNode locator -n "Ultimate_Walker_Rig1:walker_lf_legPvIkCtrl_dist_spShape" -p
		 "Ultimate_Walker_Rig1:walker_lf_legPvIkCtrl_dist_sp";
	rename -uid "9F1DA40A-4439-4EF3-BD9B-CA8E3898978B";
	setAttr -k off ".v";
createNode pointConstraint -n "Ultimate_Walker_Rig1:walker_lf_legPvIkCtrl_dist_sp_pointConstraint1" 
		-p "Ultimate_Walker_Rig1:walker_lf_legPvIkCtrl_dist_sp";
	rename -uid "5D533AA7-4713-8E0A-9493-B5AF5CC2A5FE";
	addAttr -ci true -k true -sn "w0" -ln "walker_lf_knee_pv_ctrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 0.58301609750000005 1.284326118089363 1.019607898379655 ;
	setAttr -k on ".w0";
createNode transform -n "Ultimate_Walker_Rig1:walker_lf_legPvIkCtrl_dist_ep" -p "Ultimate_Walker_Rig1:walker_lf_leg_rig_grp";
	rename -uid "92FA51E0-4629-820A-1A25-C9BAD3931AEB";
	setAttr ".v" no;
	setAttr ".r" -type "double3" -90.000000000000057 -41.949500810335849 -90 ;
createNode locator -n "Ultimate_Walker_Rig1:walker_lf_legPvIkCtrl_dist_epShape" -p
		 "Ultimate_Walker_Rig1:walker_lf_legPvIkCtrl_dist_ep";
	rename -uid "0204C484-4361-267A-367F-D7AF4F32AB5E";
	setAttr -k off ".v";
createNode pointConstraint -n "Ultimate_Walker_Rig1:walker_lf_legPvIkCtrl_dist_ep_pointConstraint1" 
		-p "Ultimate_Walker_Rig1:walker_lf_legPvIkCtrl_dist_ep";
	rename -uid "CA9B3D4B-40A5-7A15-5CE2-DDB44838B5D7";
	addAttr -ci true -k true -sn "w0" -ln "walker_lf_ankle_rev_rig_jntW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 0.58301609754639938 0.44379592094999964 -0.037064507613400299 ;
	setAttr -k on ".w0";
createNode transform -n "Ultimate_Walker_Rig1:walker_lfLegIkCtrl_space_switch_grp" 
		-p "Ultimate_Walker_Rig1:Rig_Leg_grp";
	rename -uid "E37414F7-4D34-EEB7-4B3F-14B2733E871A";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
createNode parentConstraint -n "Ultimate_Walker_Rig1:walker_lfLegIkCtrlSpace_par_cons" 
		-p "Ultimate_Walker_Rig1:walker_lfLegIkCtrl_space_switch_grp";
	rename -uid "A9BB2A68-45FC-E19F-6FE0-A7BA838D0A03";
	addAttr -ci true -sn "w0" -ln "walker_lf_heel_ik_ctrlW0" -dv 1 -min 0 -at "double";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 0.58301609754639938 1.5390000728584829e-09 -0.25085057272848399 ;
	setAttr -k off ".int";
createNode transform -n "Ultimate_Walker_Rig1:walker_rt_leg_rig_grp" -p "Ultimate_Walker_Rig1:Rig_Leg_grp";
	rename -uid "0D028074-41E5-D3A1-2C46-2EA67CB5A52F";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
createNode transform -n "Ultimate_Walker_Rig1:walker_rt_reverseFoot_rig_grp" -p "Ultimate_Walker_Rig1:walker_rt_leg_rig_grp";
	rename -uid "F3830FED-44A9-E576-7706-CF9B3E031E00";
createNode joint -n "Ultimate_Walker_Rig1:walker_rt_heel_rev_rig_jnt" -p "Ultimate_Walker_Rig1:walker_rt_reverseFoot_rig_grp";
	rename -uid "513DBC9C-4D78-F5E6-E2A8-00A648544CB6";
	setAttr ".ove" yes;
	setAttr ".ovc" 28;
	setAttr ".t" -type "double3" -0.58301609754639927 1.5390000728584829e-09 -0.25085057272848399 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 -89.999995231115363 0 ;
createNode joint -n "Ultimate_Walker_Rig1:walker_rt_toe_rev_rig_jnt" -p "Ultimate_Walker_Rig1:walker_rt_heel_rev_rig_jnt";
	rename -uid "FBD43C51-4FAC-E4F7-B59F-FF96F860F850";
	setAttr ".ove" yes;
	setAttr ".ovc" 28;
	setAttr ".t" -type "double3" 1.1719715727284878 -7.285848297795272e-17 3.9968028886505635e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -180 89.999995231115363 8.4849425910024574e-24 ;
	setAttr ".radi" 0.5;
createNode joint -n "Ultimate_Walker_Rig1:walker_rt_ball_rev_rig_jnt" -p "Ultimate_Walker_Rig1:walker_rt_toe_rev_rig_jnt";
	rename -uid "76AFE52F-43E5-28A5-BD1B-E081EF25E337";
	setAttr ".ove" yes;
	setAttr ".ovc" 28;
	setAttr ".t" -type "double3" -1.1102230246251565e-16 8.5485812754784027e-17 0.55929799999999985 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -180 -89.999999999999986 0 ;
	setAttr ".radi" 0.72241122832793025;
createNode joint -n "Ultimate_Walker_Rig1:walker_rt_ankle_rev_rig_jnt" -p "Ultimate_Walker_Rig1:walker_rt_ball_rev_rig_jnt";
	rename -uid "7B03BEDE-4BB8-B4B3-BDF8-37A1B39B3B46";
	addAttr -ci true -h true -sn "createRot" -ln "createRot" -dt "float3";
	setAttr ".ove" yes;
	setAttr ".ovc" 28;
	setAttr ".t" -type "double3" 0.39888749999999995 0.44379599846099993 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.6200494549742942e-14 1.4663310587348521e-14 48.050499189664137 ;
	setAttr ".radi" 0.73729004431155587;
	setAttr ".createRot" -type "float3" 0 0 0 ;
createNode joint -n "Ultimate_Walker_Rig1:walker_rt__ik_jnt" -p "Ultimate_Walker_Rig1:walker_rt_toe_rev_rig_jnt";
	rename -uid "8BBC09E5-47EA-487F-543B-C2854838FF4F";
	setAttr ".t" -type "double3" -1.1102230246251565e-16 8.5485812754784027e-17 0.55929799999999985 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -180 -89.999999999999986 0 ;
	setAttr ".radi" 0.72241122832793025;
createNode joint -n "Ultimate_Walker_Rig1:walker_rt_ball_ik_jnt" -p "Ultimate_Walker_Rig1:walker_rt__ik_jnt";
	rename -uid "4AD27E47-4291-90A1-F4B6-54B78B016D99";
	setAttr ".ove" yes;
	setAttr ".ovc" 28;
	setAttr ".t" -type "double3" -5.5511151231257827e-17 -2.0679515313825692e-25 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.72241122832793025;
createNode joint -n "Ultimate_Walker_Rig1:walker_rt_toe_ik_jnt" -p "Ultimate_Walker_Rig1:walker_rt_ball_ik_jnt";
	rename -uid "6EB5AAAB-455E-6C26-4413-FEBE6C18F611";
	setAttr ".ove" yes;
	setAttr ".ovc" 28;
	setAttr ".t" -type "double3" -0.55929799999999974 8.5485812754784027e-17 2.2204460492503131e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -180 -89.999999999999943 0 ;
	setAttr ".radi" 0.5;
createNode parentConstraint -n "Ultimate_Walker_Rig1:walker_rt_reverseFoot_rig_grp_parentConstraint1" 
		-p "Ultimate_Walker_Rig1:walker_rt_reverseFoot_rig_grp";
	rename -uid "49D663A6-4272-1458-6C85-EF93B982D6CE";
	addAttr -ci true -k true -sn "w0" -ln "walker_rt_heel_ik_ctrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0.58301609754639927 -1.5390000728584829e-09 
		0.25085057272848399 ;
	setAttr -k on ".w0";
createNode transform -n "Ultimate_Walker_Rig1:walker_rt_legFK_Grp" -p "Ultimate_Walker_Rig1:walker_rt_leg_rig_grp";
	rename -uid "28909A9C-40CC-CCD8-55CD-A781DA0051D3";
createNode joint -n "Ultimate_Walker_Rig1:walker_rt_upLeg_fk_jnt" -p "Ultimate_Walker_Rig1:walker_rt_legFK_Grp";
	rename -uid "3B5939E6-4FC3-D373-720F-F8912CC09748";
	addAttr -ci true -h true -sn "createRot" -ln "createRot" -dt "float3";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 0.26265744643934014 ;
	setAttr ".radi" 0.89313380820640498;
	setAttr ".createRot" -type "float3" 0 0 0 ;
createNode joint -n "Ultimate_Walker_Rig1:walker_rt_knee_fk_jnt" -p "Ultimate_Walker_Rig1:walker_rt_upLeg_fk_jnt";
	rename -uid "E00D4F1C-4DB0-96D0-50B4-FF80FBBAD254";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".t" -type "double3" -0.98861998319625854 2.236124210797108e-08 4.4408920985006262e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 4.4814151967255551 ;
	setAttr ".radi" 0.84979013353145527;
createNode joint -n "Ultimate_Walker_Rig1:walker_rt_ankle_fk_jnt" -p "Ultimate_Walker_Rig1:walker_rt_knee_fk_jnt";
	rename -uid "43FB5C85-4113-3CBF-0764-3BBAD8490C9D";
	addAttr -ci true -h true -sn "createRot" -ln "createRot" -dt "float3";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".t" -type "double3" -0.87961322069168091 -2.6256022818416103e-07 -2.2204460492503131e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -46.430917303014155 ;
	setAttr ".radi" 0.73729004431155587;
	setAttr ".createRot" -type "float3" 0 0 0 ;
createNode joint -n "Ultimate_Walker_Rig1:walker_rt_ball_fk_jnt" -p "Ultimate_Walker_Rig1:walker_rt_ankle_fk_jnt";
	rename -uid "FD6649D5-4ED9-458D-F2B4-A08AD4289C6B";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".t" -type "double3" -0.59671276666927886 -3.7506020700295295e-07 -2.2204460492503131e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -48.050499189664158 ;
	setAttr ".radi" 0.72241122832793025;
createNode joint -n "Ultimate_Walker_Rig1:walker_rt_toe_fk_jnt" -p "Ultimate_Walker_Rig1:walker_rt_ball_fk_jnt";
	rename -uid "C5AE1F99-4574-36EA-B3A4-40AA20766073";
	setAttr ".t" -type "double3" -0.55929799999999985 3.8247611433048484e-18 1.1102230246251565e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -179.99999999999997 -89.999999999999986 0 ;
	setAttr ".radi" 0.5;
createNode orientConstraint -n "Ultimate_Walker_Rig1:walker_rt_ballCtrl_fk_or_cons" 
		-p "Ultimate_Walker_Rig1:walker_rt_ball_fk_jnt";
	rename -uid "99A4F12F-4802-0686-92AF-299B7FED5748";
	addAttr -ci true -k true -sn "w0" -ln "walker_rt_ball_fk_ctrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 0 0 1.2722218725854067e-14 ;
	setAttr ".rsrr" -type "double3" 0 0 6.3611093629270335e-15 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "Ultimate_Walker_Rig1:walker_rt_ankleCtrl_fk_or_cons" 
		-p "Ultimate_Walker_Rig1:walker_rt_ankle_fk_jnt";
	rename -uid "3F1FC01B-4677-4C2F-E89B-06B7784CD122";
	addAttr -ci true -k true -sn "w0" -ln "walker_rt_ankle_fk_ctrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode orientConstraint -n "Ultimate_Walker_Rig1:walker_rt_kneeCtrl_fk_or_cons" 
		-p "Ultimate_Walker_Rig1:walker_rt_knee_fk_jnt";
	rename -uid "7EE9FB6F-468C-B7E4-3473-9E86AC313EBF";
	addAttr -ci true -k true -sn "w0" -ln "walker_rt_knee_fk_ctrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 0 0 -1.113194138512231e-14 ;
	setAttr ".rsrr" -type "double3" 0 0 -8.7465253740246687e-15 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ultimate_Walker_Rig1:walker_rt_upLeg_fk_jnt_parentConstraint1" 
		-p "Ultimate_Walker_Rig1:walker_rt_upLeg_fk_jnt";
	rename -uid "B71F99F8-4A47-5B79-40FA-B388982D161F";
	addAttr -ci true -k true -sn "w0" -ln "walker_rt_upLeg_fk_ctrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 0 0 2.102147859779793e-14 ;
	setAttr ".rst" -type "double3" -0.72869616400280179 0.035533197377367563 -0.583016 ;
	setAttr ".rsrr" -type "double3" 0 0 5.1684013573782151e-15 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ultimate_Walker_Rig1:walker_rt_legFK_Grp_parentConstraint1" 
		-p "Ultimate_Walker_Rig1:walker_rt_legFK_Grp";
	rename -uid "5BA97BF9-40A0-C222-A51B-718FED9CA0D1";
	addAttr -ci true -k true -sn "w0" -ln "walker_hip_jntW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 4.4408920985006262e-16 2.6020852139652106e-18 
		0 ;
	setAttr ".tg[0].tor" -type "double3" 3.8123586506410354e-16 6.8988129873577089e-15 
		-4.9696166897867449e-17 ;
	setAttr ".lr" -type "double3" 90 0.2626561504866004 90.000000000000014 ;
	setAttr ".rst" -type "double3" -5.7142390883069934e-32 3.037865615999999 -0.0072083119257999829 ;
	setAttr ".rsrr" -type "double3" 90.000000000000014 0.2626561504866004 90 ;
	setAttr -k on ".w0";
createNode transform -n "Ultimate_Walker_Rig1:walker_rt_ball_fk_ctrl_frzGrp" -p "Ultimate_Walker_Rig1:walker_rt_leg_rig_grp";
	rename -uid "2ECB7C8E-4A23-DF4B-308C-26B1E168D134";
createNode transform -n "Ultimate_Walker_Rig1:walker_rt_ball_fk_ctrl_frzGrp" -p "|group|Ultimate_Walker_Rig1:AniM_walker_Main|Ultimate_Walker_Rig1:Rig_Leg_grp|Ultimate_Walker_Rig1:walker_rt_leg_rig_grp|Ultimate_Walker_Rig1:walker_rt_ball_fk_ctrl_frzGrp";
	rename -uid "537DCF22-47C3-7173-5D9C-269329B7C5F9";
createNode transform -n "Ultimate_Walker_Rig1:walker_rt_ball_fk_ctrl" -p "|group|Ultimate_Walker_Rig1:AniM_walker_Main|Ultimate_Walker_Rig1:Rig_Leg_grp|Ultimate_Walker_Rig1:walker_rt_leg_rig_grp|Ultimate_Walker_Rig1:walker_rt_ball_fk_ctrl_frzGrp|Ultimate_Walker_Rig1:walker_rt_ball_fk_ctrl_frzGrp";
	rename -uid "387953E3-439D-B12B-4AB2-3E9DE5267484";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
createNode nurbsCurve -n "Ultimate_Walker_Rig1:walker_rt_ball_fk_ctrlShape" -p "Ultimate_Walker_Rig1:walker_rt_ball_fk_ctrl";
	rename -uid "BAF7BCD1-4949-4143-6D29-41849B557A42";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 44 0 no 3
		45 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44
		45
		0.32955637201335702 -7.8434327866632497e-16 -1.5614484457949821e-08
		0.30447039369025375 -0.12611575044606527 -1.5614484446809412e-08
		0.23303154234502363 -0.23303152663811161 -1.5614484415084187e-08
		0.12611576606448774 -0.30447036249765408 -1.5614484367604043e-08
		1.7965909880069882e-16 -0.32955634082075747 -1.5614484311597394e-08
		-0.12611576606448741 -0.30447036249765413 -1.5614484255590745e-08
		-0.23303154234502338 -0.23303152663811177 -1.5614484208110601e-08
		-0.30447039369025353 -0.12611575044606554 -1.5614484176385375e-08
		-0.32955637201335691 -1.0770481363632547e-15 -1.5614484165244967e-08
		-0.30447039369025364 0.12611575825527635 -1.5614484176385375e-08
		-0.23303154234502357 0.23303154234502341 -1.5614484208110601e-08
		-0.12611576606448768 0.30447036249765408 -1.5614484255590745e-08
		-1.1304573119163742e-16 0.32955634082075747 -1.5614484311597394e-08
		0.12611576606448746 0.30447036249765413 -1.5614484367604043e-08
		0.23303154234502343 0.2330315423450236 -1.5614484415084187e-08
		0.30447039369025364 0.1261157582552766 -1.5614484446809412e-08
		0.32955637201335702 -7.8434327866632497e-16 -1.5614484457949821e-08
		0.30447039369025364 -7.9548369095814768e-16 -0.12611576606448771
		0.23303154234502343 -8.2720891400464705e-16 -0.2330315423450236
		0.12611576606448746 -8.7468905661357622e-16 -0.30447037798334181
		-1.1304573123268304e-16 -9.3069570751478986e-16 -0.32955635652766929
		-0.12611576606448768 -9.867023584160036e-16 -0.3044703779833417
		-0.23303154234502357 -1.0341825010249328e-15 -0.23303154234502341
		-0.30447039369025364 -1.065907724071432e-15 -0.12611576606448743
		-0.32955637201335691 -1.0770481363632547e-15 -1.5614484165244967e-08
		-0.30447039369025353 -1.065907724071432e-15 0.12611575044606554
		-0.23303154234502338 -1.0341825010249328e-15 0.2330315423450236
		-0.12611576606448741 -9.867023584160036e-16 0.30447037798334181
		1.7965911271019333e-16 -9.3069570751478986e-16 0.32955635652766929
		0.12611576606448774 -8.7468905661357622e-16 0.3044703779833417
		0.23303154234502363 -8.2720891400464705e-16 0.23303154234502341
		0.30447039369025375 -7.9548369095814768e-16 0.12611575044606527
		0.32955637201335702 -7.8434327866632497e-16 -1.5614484457949821e-08
		0.30447039369025364 -7.9548369095814768e-16 -0.12611576606448771
		0.23303154234502343 -8.2720891400464705e-16 -0.2330315423450236
		0.12611576606448746 -8.7468905661357622e-16 -0.30447037798334181
		-1.1304573123268304e-16 -9.3069570751478986e-16 -0.32955635652766929
		-1.7366688930626102e-16 0.23303152663811169 -0.23303154234502349
		-1.1304573119163742e-16 0.32955634082075747 -1.5614484311597394e-08
		3.3306683763484657e-17 0.23303154234502349 0.23303152663811169
		1.7965911271019333e-16 -9.3069570751478986e-16 0.32955635652766929
		2.402802569314736e-16 -0.23303152663811169 0.23303151115242399
		1.7965909880069882e-16 -0.32955634082075747 -1.5614484311597394e-08
		3.3306683763484657e-17 -0.23303152663811169 -0.23303154234502349
		-1.1304573123268304e-16 -9.3069570751478986e-16 -0.32955635652766929
		;
createNode pointConstraint -n "Ultimate_Walker_Rig1:walker_rt_ball_fk_ctrl_frzGrp_pointConstraint1" 
		-p "|group|Ultimate_Walker_Rig1:AniM_walker_Main|Ultimate_Walker_Rig1:Rig_Leg_grp|Ultimate_Walker_Rig1:walker_rt_leg_rig_grp|Ultimate_Walker_Rig1:walker_rt_ball_fk_ctrl_frzGrp|Ultimate_Walker_Rig1:walker_rt_ball_fk_ctrl_frzGrp";
	rename -uid "EB59FBF2-49D1-3682-802F-D3B4EFEFEDBA";
	addAttr -ci true -k true -sn "w0" -ln "walker_rt_ball_fk_jntW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -5.5511151231257827e-17 -2.0679515313825692e-25 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ultimate_Walker_Rig1:walker_rt_ball_fk_ctrl_frzGrp_parentConstraint1" 
		-p "|group|Ultimate_Walker_Rig1:AniM_walker_Main|Ultimate_Walker_Rig1:Rig_Leg_grp|Ultimate_Walker_Rig1:walker_rt_leg_rig_grp|Ultimate_Walker_Rig1:walker_rt_ball_fk_ctrl_frzGrp";
	rename -uid "96B7BDC4-4262-DA87-9BFB-149F386514F4";
	addAttr -ci true -k true -sn "w0" -ln "walker_rt_ankle_fk_jntW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -0.59671276666927886 -3.7506020700295295e-07 
		-2.2204460492503131e-16 ;
	setAttr ".tg[0].tor" -type "double3" 0 -3.1805546814635168e-14 -48.050499189664151 ;
	setAttr ".lr" -type "double3" -2.6987901398369661e-14 90 0 ;
	setAttr ".rst" -type "double3" -0.583016 1.5390003160753452e-09 0.36182300000000012 ;
	setAttr ".rsrr" -type "double3" 4.497983566394945e-15 89.999999999999986 0 ;
	setAttr -k on ".w0";
createNode transform -n "Ultimate_Walker_Rig1:walker_rt_ankle_fk_ctrl_frzGrp" -p "Ultimate_Walker_Rig1:walker_rt_leg_rig_grp";
	rename -uid "9F717A08-44FB-FF7C-64D2-DDA793D35320";
createNode transform -n "Ultimate_Walker_Rig1:walker_rt_ankle_fk_ctrl_frzGrp" -p
		 "|group|Ultimate_Walker_Rig1:AniM_walker_Main|Ultimate_Walker_Rig1:Rig_Leg_grp|Ultimate_Walker_Rig1:walker_rt_leg_rig_grp|Ultimate_Walker_Rig1:walker_rt_ankle_fk_ctrl_frzGrp";
	rename -uid "9BC9F1C0-451E-A837-85B6-059D36EAAD2F";
createNode transform -n "Ultimate_Walker_Rig1:walker_rt_ankle_fk_ctrl" -p "|group|Ultimate_Walker_Rig1:AniM_walker_Main|Ultimate_Walker_Rig1:Rig_Leg_grp|Ultimate_Walker_Rig1:walker_rt_leg_rig_grp|Ultimate_Walker_Rig1:walker_rt_ankle_fk_ctrl_frzGrp|Ultimate_Walker_Rig1:walker_rt_ankle_fk_ctrl_frzGrp";
	rename -uid "8AC9E029-4B0E-305A-EC5A-E58D22F83A31";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
createNode nurbsCurve -n "Ultimate_Walker_Rig1:walker_rt_ankle_fk_ctrlShape" -p "Ultimate_Walker_Rig1:walker_rt_ankle_fk_ctrl";
	rename -uid "406898B3-4875-A4EB-23E2-5098672AFE44";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 44 0 no 3
		45 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44
		45
		0.20794261269315409 -4.9490285870600552e-16 -9.8523863283430478e-09
		0.19211392808116753 -0.079576184460635233 -9.8523863213137e-09
		0.14703762958397779 -0.14703761967327178 -9.8523863012958018e-09
		0.079576194315506332 -0.19211390839934309 -9.8523862713369065e-09
		9.2345057449236125e-17 -0.20794259301132967 -9.8523862359979773e-09
		-0.079576194315506166 -0.19211390839934314 -9.852386200659048e-09
		-0.14703762958397767 -0.14703761967327189 -9.8523861707001528e-09
		-0.19211392808116748 -0.079576184460635399 -9.8523861506822546e-09
		-0.20794261269315409 -6.7959299983612629e-16 -9.8523861436529068e-09
		-0.19211392808116753 0.079576189388070692 -9.8523861506822546e-09
		-0.14703762958397779 0.14703762958397767 -9.8523861707001528e-09
		-0.079576194315506332 0.19211390839934309 -9.852386200659048e-09
		-9.2345066199912966e-17 0.20794259301132967 -9.8523862359979773e-09
		0.079576194315506166 0.19211390839934314 -9.8523862713369065e-09
		0.14703762958397767 0.14703762958397779 -9.8523863012958018e-09
		0.19211392808116748 0.079576189388070859 -9.8523863213137e-09
		0.20794261269315409 -4.9490285870600552e-16 -9.8523863283430478e-09
		0.19211392808116748 -5.019322067483085e-16 -0.079576194315506332
		0.14703762958397767 -5.2195010453089106e-16 -0.14703762958397779
		0.079576194315506166 -5.519090000146177e-16 -0.19211391817046161
		-9.2345066225811836e-17 -5.872479292710659e-16 -0.20794260292203556
		-0.079576194315506332 -6.2258685852751411e-16 -0.19211391817046156
		-0.14703762958397779 -6.5254575401124075e-16 -0.14703762958397767
		-0.19211392808116753 -6.7256365179382331e-16 -0.079576194315506166
		-0.20794261269315409 -6.7959299983612629e-16 -9.8523861436529068e-09
		-0.19211392808116748 -6.7256365179382331e-16 0.079576184460635399
		-0.14703762958397767 -6.5254575401124075e-16 0.14703762958397779
		-0.079576194315506166 -6.2258685852751411e-16 0.19211391817046161
		9.2345066225812354e-17 -5.872479292710659e-16 0.20794260292203556
		0.079576194315506332 -5.519090000146177e-16 0.19211391817046156
		0.14703762958397779 -5.2195010453089106e-16 0.14703762958397767
		0.19211392808116753 -5.019322067483085e-16 0.079576184460635233
		0.20794261269315409 -4.9490285870600552e-16 -9.8523863283430478e-09
		0.19211392808116748 -5.019322067483085e-16 -0.079576194315506332
		0.14703762958397767 -5.2195010453089106e-16 -0.14703762958397779
		0.079576194315506166 -5.519090000146177e-16 -0.19211391817046161
		-9.2345066225811836e-17 -5.872479292710659e-16 -0.20794260292203556
		-1.3059564507911219e-16 0.14703761967327184 -0.14703762958397773
		-9.2345066199912966e-17 0.20794259301132967 -9.8523862359979773e-09
		-4.4012375498978253e-24 0.14703762958397773 0.14703761967327184
		9.2345066225812354e-17 -5.872479292710659e-16 0.20794260292203556
		1.3059563633862634e-16 -0.14703761967327184 0.14703760990215334
		9.2345057449236125e-17 -0.20794259301132967 -9.8523862359979773e-09
		-4.4012375498978253e-24 -0.14703761967327184 -0.14703762958397773
		-9.2345066225811836e-17 -5.872479292710659e-16 -0.20794260292203556
		;
createNode pointConstraint -n "Ultimate_Walker_Rig1:walker_rt_ankle_fk_ctrl_frzGrp_pointConstraint1" 
		-p "|group|Ultimate_Walker_Rig1:AniM_walker_Main|Ultimate_Walker_Rig1:Rig_Leg_grp|Ultimate_Walker_Rig1:walker_rt_leg_rig_grp|Ultimate_Walker_Rig1:walker_rt_ankle_fk_ctrl_frzGrp|Ultimate_Walker_Rig1:walker_rt_ankle_fk_ctrl_frzGrp";
	rename -uid "8EEF5C49-423C-6C08-92AC-4488197E82D0";
	addAttr -ci true -k true -sn "w0" -ln "walker_rt_ankle_fk_jntW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 0 0 -1.1102230246251565e-16 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ultimate_Walker_Rig1:walker_rt_ankle_fk_ctrl_frzGrp_parentConstraint1" 
		-p "|group|Ultimate_Walker_Rig1:AniM_walker_Main|Ultimate_Walker_Rig1:Rig_Leg_grp|Ultimate_Walker_Rig1:walker_rt_leg_rig_grp|Ultimate_Walker_Rig1:walker_rt_ankle_fk_ctrl_frzGrp";
	rename -uid "E1C4BE10-4BB1-C479-0D47-F38ABF6AD81B";
	addAttr -ci true -k true -sn "w0" -ln "walker_rt_knee_fk_jntW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -0.87961323656831136 -2.6256022818416103e-07 
		-2.2204460492503131e-16 ;
	setAttr ".tg[0].tor" -type "double3" -4.8224973674592765e-15 -8.610972202489417e-15 
		-46.430917303014155 ;
	setAttr ".lr" -type "double3" 90.000000000000028 41.949500810335863 90.000000000000043 ;
	setAttr ".rst" -type "double3" -0.58301599999999987 0.4437960000000003 -0.037064500000000007 ;
	setAttr ".rsrr" -type "double3" 90.000000000000028 41.94950081033587 90.000000000000028 ;
	setAttr -k on ".w0";
createNode transform -n "Ultimate_Walker_Rig1:walker_rt_knee_fk_ctrl_frzGrp" -p "Ultimate_Walker_Rig1:walker_rt_leg_rig_grp";
	rename -uid "625EAE67-422C-1E27-25A0-5FA587F6119D";
createNode transform -n "Ultimate_Walker_Rig1:walker_rt_knee_fk_ctrl_frzGrp" -p "|group|Ultimate_Walker_Rig1:AniM_walker_Main|Ultimate_Walker_Rig1:Rig_Leg_grp|Ultimate_Walker_Rig1:walker_rt_leg_rig_grp|Ultimate_Walker_Rig1:walker_rt_knee_fk_ctrl_frzGrp";
	rename -uid "AFE40F96-43F8-6DE6-602F-F694904C8AE1";
createNode transform -n "Ultimate_Walker_Rig1:walker_rt_knee_fk_ctrl" -p "|group|Ultimate_Walker_Rig1:AniM_walker_Main|Ultimate_Walker_Rig1:Rig_Leg_grp|Ultimate_Walker_Rig1:walker_rt_leg_rig_grp|Ultimate_Walker_Rig1:walker_rt_knee_fk_ctrl_frzGrp|Ultimate_Walker_Rig1:walker_rt_knee_fk_ctrl_frzGrp";
	rename -uid "CFA5A9A0-4110-E704-295D-0CAF4C76C251";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 0 1.3877787807814457e-17 0 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
createNode nurbsCurve -n "Ultimate_Walker_Rig1:walker_rt_knee_fk_ctrlShape" -p "Ultimate_Walker_Rig1:walker_rt_knee_fk_ctrl";
	rename -uid "78306A7B-4DA4-9139-BEDD-6BBE55B758D2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 44 0 no 3
		45 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44
		45
		0.22283705703516876 -5.3035159616405542e-16 -1.0558089781343681e-08
		0.2058746006632379 -0.085276040950116788 -1.0558089773810836e-08
		0.15756959204061974 -0.15756958142003291 -1.0558089752359103e-08
		0.085276051510869338 -0.20587457957165028 -1.0558089720254323e-08
		9.8959518528781275e-17 -0.2228370359435812 -1.0558089682384148e-08
		-0.085276051510869144 -0.20587457957165034 -1.0558089644513973e-08
		-0.15756959204061957 -0.15756958142003308 -1.0558089612409193e-08
		-0.20587460066323784 -0.085276040950116982 -1.055808959095746e-08
		-0.22283705703516876 -7.2827066133217828e-16 -1.0558089583424615e-08
		-0.2058746006632379 0.085276046230492966 -1.055808959095746e-08
		-0.15756959204061974 0.15756959204061957 -1.0558089612409193e-08
		-0.085276051510869338 0.20587457957165028 -1.0558089644513973e-08
		-9.8959527906248682e-17 0.2228370359435812 -1.0558089682384148e-08
		0.085276051510869144 0.20587457957165034 -1.0558089720254323e-08
		0.15756959204061957 0.15756959204061974 -1.0558089752359103e-08
		0.20587460066323784 0.08527604623049316 -1.0558089773810836e-08
		0.22283705703516876 -5.3035159616405542e-16 -1.0558089781343681e-08
		0.20587460066323784 -5.3788444001138234e-16 -0.085276051510869338
		0.15756959204061957 -5.5933617312240133e-16 -0.15756959204061974
		0.085276051510869144 -5.9144095441352168e-16 -0.20587459004265124
		-9.8959527934002621e-17 -6.2931112874811685e-16 -0.22283704656416783
		-0.085276051510869338 -6.6718130308271202e-16 -0.20587459004265118
		-0.15756959204061974 -6.9928608437383237e-16 -0.15756959204061957
		-0.2058746006632379 -7.2073781748485136e-16 -0.085276051510869144
		-0.22283705703516876 -7.2827066133217828e-16 -1.0558089583424615e-08
		-0.20587460066323784 -7.2073781748485136e-16 0.085276040950116982
		-0.15756959204061957 -6.9928608437383237e-16 0.15756959204061974
		-0.085276051510869144 -6.6718130308271202e-16 0.20587459004265124
		9.8959527934003188e-17 -6.2931112874811685e-16 0.22283704656416783
		0.085276051510869338 -5.9144095441352168e-16 0.20587459004265118
		0.15756959204061974 -5.5933617312240133e-16 0.15756959204061957
		0.2058746006632379 -5.3788444001138234e-16 0.085276040950116788
		0.22283705703516876 -5.3035159616405542e-16 -1.0558089781343681e-08
		0.20587460066323784 -5.3788444001138234e-16 -0.085276051510869338
		0.15756959204061957 -5.5933617312240133e-16 -0.15756959204061974
		0.085276051510869144 -5.9144095441352168e-16 -0.20587459004265124
		-9.8959527934002621e-17 -6.2931112874811685e-16 -0.22283704656416783
		-1.3994990653494307e-16 0.15756958142003299 -0.15756959204061965
		-9.8959527906248682e-17 0.2228370359435812 -1.0558089682384148e-08
		-4.7164879380395188e-24 0.15756959204061965 0.15756958142003299
		9.8959527934003188e-17 -6.2931112874811685e-16 0.22283704656416783
		1.399498971683966e-16 -0.15756958142003299 0.15756957094903207
		9.8959518528781275e-17 -0.2228370359435812 -1.0558089682384148e-08
		-4.7164879380395188e-24 -0.15756958142003299 -0.15756959204061965
		-9.8959527934002621e-17 -6.2931112874811685e-16 -0.22283704656416783
		;
createNode pointConstraint -n "Ultimate_Walker_Rig1:walker_rt_knee_fk_ctrl_frzGrp_pointConstraint1" 
		-p "|group|Ultimate_Walker_Rig1:AniM_walker_Main|Ultimate_Walker_Rig1:Rig_Leg_grp|Ultimate_Walker_Rig1:walker_rt_leg_rig_grp|Ultimate_Walker_Rig1:walker_rt_knee_fk_ctrl_frzGrp|Ultimate_Walker_Rig1:walker_rt_knee_fk_ctrl_frzGrp";
	rename -uid "D7B8BE54-4FC9-575B-A8D6-E09119C62869";
	addAttr -ci true -k true -sn "w0" -ln "walker_rt_knee_fk_jntW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 0 1.3877787807814457e-17 1.1102230246251565e-16 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ultimate_Walker_Rig1:walker_rt_knee_fk_ctrl_frzGrp_parentConstraint1" 
		-p "|group|Ultimate_Walker_Rig1:AniM_walker_Main|Ultimate_Walker_Rig1:Rig_Leg_grp|Ultimate_Walker_Rig1:walker_rt_leg_rig_grp|Ultimate_Walker_Rig1:walker_rt_knee_fk_ctrl_frzGrp";
	rename -uid "9CA5D8B4-4677-D20B-6168-878F927C5D54";
	addAttr -ci true -k true -sn "w0" -ln "walker_rt_upLeg_fk_jntW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -0.98862000000000094 2.236124210797108e-08 
		4.4408920985006262e-16 ;
	setAttr ".tg[0].tor" -type "double3" -3.147865549499269e-15 7.8914437897176067e-16 
		4.4814151967255489 ;
	setAttr ".lr" -type "double3" 90 -4.4814164926782825 90.000000000000028 ;
	setAttr ".rst" -type "double3" -0.58301599999999965 1.3207199999999997 0.031665000000000006 ;
	setAttr ".rsrr" -type "double3" 90.000000000000014 -4.4814164926782825 89.999999999999986 ;
	setAttr -k on ".w0";
createNode transform -n "Ultimate_Walker_Rig1:walker_rt_upLegupJntFkCtrl_grp" -p "Ultimate_Walker_Rig1:walker_rt_leg_rig_grp";
	rename -uid "B970EA0C-4826-3909-1AFA-C6B2D778DE52";
createNode parentConstraint -n "Ultimate_Walker_Rig1:walker_rt_upLegupJntFkCtrl_grp_parentConstraint1" 
		-p "Ultimate_Walker_Rig1:walker_rt_upLegupJntFkCtrl_grp";
	rename -uid "B0AC1239-4448-5662-3288-48B83AB3F511";
	addAttr -ci true -k true -sn "w0" -ln "walker_hip_jntW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -0.72869616400280046 0.035533197377367584 -0.58301600000000009 ;
	setAttr ".tg[0].tor" -type "double3" -2.767596877636116e-15 -1.8503703525340054e-14 
		0.26265744643934524 ;
	setAttr ".lr" -type "double3" 90.000000000000014 -1.2959527480358203e-06 90 ;
	setAttr ".rst" -type "double3" -0.5830160000000002 2.3093400000000019 0.031665000000000013 ;
	setAttr ".rsrr" -type "double3" 90.000000000000014 -1.2959527512163752e-06 90 ;
	setAttr -k on ".w0";
createNode transform -n "Ultimate_Walker_Rig1:walker_rt_upLeg_fk_ctrl_frzGrp" -p "Ultimate_Walker_Rig1:walker_rt_leg_rig_grp";
	rename -uid "D74B94D4-40A8-0360-5925-A7B8C1571C4C";
createNode transform -n "Ultimate_Walker_Rig1:walker_rt_upLeg_fk_ctrl" -p "Ultimate_Walker_Rig1:walker_rt_upLeg_fk_ctrl_frzGrp";
	rename -uid "0234D679-4536-3079-41DC-43A7DB9FE953";
	addAttr -ci true -sn "align" -ln "align" -min 0 -max 1 -at "bool";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 0 -6.9388939039072284e-18 0 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 1.2722218725854067e-14 1.2722218725854073e-14 -1.895758319773386e-22 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
createNode nurbsCurve -n "Ultimate_Walker_Rig1:walker_rt_upLeg_fk_ctrlShape" -p "Ultimate_Walker_Rig1:walker_rt_upLeg_fk_ctrl";
	rename -uid "09F8D228-435E-3B82-F108-B584CBA5C9C5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 44 0 no 3
		45 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44
		45
		0.36572086548613625 -8.7041467582503908e-16 -1.7327969588773867e-08
		0.33788202975723713 -0.13995530149451693 -1.7327969576410938e-08
		0.2586037005788408 -0.25860368314830096 -1.7327969541204285e-08
		0.13995531882685661 -0.33788199514165851 -1.732796948851382e-08
		1.6241266711185011e-16 -0.36572083087055768 -1.7327969426361176e-08
		-0.13995531882685627 -0.33788199514165856 -1.7327969364208528e-08
		-0.25860370057884052 -0.25860368314830123 -1.7327969311518063e-08
		-0.33788202975723708 -0.13995530149451724 -1.732796927631141e-08
		-0.36572086548613625 -1.1952400561838775e-15 -1.7327969263948484e-08
		-0.33788202975723713 0.1399553101606866 -1.732796927631141e-08
		-0.2586037005788408 0.25860370057884052 -1.7327969311518063e-08
		-0.13995531882685661 0.33788199514165851 -1.7327969364208528e-08
		-1.6241268250217856e-16 0.36572083087055768 -1.7327969426361176e-08
		0.13995531882685627 0.33788199514165856 -1.732796948851382e-08
		0.25860370057884052 0.2586037005788408 -1.7327969541204285e-08
		0.33788202975723708 0.13995531016068691 -1.7327969576410938e-08
		0.36572086548613625 -8.7041467582503908e-16 -1.7327969588773867e-08
		0.33788202975723708 -8.8277760238703143e-16 -0.13995531882685666
		0.25860370057884052 -9.1798425295009879e-16 -0.25860370057884086
		0.13995531882685627 -9.7067471905232581e-16 -0.33788201232669762
		-1.6241268254772842e-16 -1.0328273660044583e-15 -0.36572084830109725
		-0.13995531882685661 -1.0949800129565906e-15 -0.33788201232669751
		-0.2586037005788408 -1.1476704790588178e-15 -0.25860370057884058
		-0.33788202975723713 -1.1828771296218851e-15 -0.13995531882685633
		-0.36572086548613625 -1.1952400561838775e-15 -1.7327969263948484e-08
		-0.33788202975723708 -1.1828771296218851e-15 0.13995530149451718
		-0.25860370057884052 -1.1476704790588178e-15 0.25860370057884075
		-0.13995531882685627 -1.0949800129565906e-15 0.33788201232669751
		1.6241268254772933e-16 -1.0328273660044583e-15 0.36572084830109713
		0.13995531882685661 -9.7067471905232581e-16 0.3378820123266974
		0.2586037005788408 -9.1798425295009879e-16 0.25860370057884047
		0.33788202975723713 -8.8277760238703143e-16 0.13995530149451688
		0.36572086548613625 -8.7041467582503908e-16 -1.7327969588773867e-08
		0.33788202975723708 -8.8277760238703143e-16 -0.13995531882685666
		0.25860370057884052 -9.1798425295009879e-16 -0.25860370057884086
		0.13995531882685627 -9.7067471905232581e-16 -0.33788201232669762
		-1.6241268254772842e-16 -1.0328273660044583e-15 -0.36572084830109725
		-2.2968621836800454e-16 0.25860368314830112 -0.25860370057884069
		-1.6241268250217856e-16 0.36572083087055768 -1.7327969426361176e-08
		-7.7407145338260733e-24 0.25860370057884063 0.25860368314830107
		1.6241268254772933e-16 -1.0328273660044583e-15 0.36572084830109713
		2.2968620299559953e-16 -0.25860368314830112 0.25860366596326201
		1.6241266711185011e-16 -0.36572083087055768 -1.7327969426361176e-08
		-7.7407145338260733e-24 -0.25860368314830112 -0.25860370057884069
		-1.6241268254772842e-16 -1.0328273660044583e-15 -0.36572084830109725
		;
createNode pointConstraint -n "Ultimate_Walker_Rig1:walker_rt_upLeg_fk_ctrl_frzGrp_pointConstraint1" 
		-p "Ultimate_Walker_Rig1:walker_rt_upLeg_fk_ctrl_frzGrp";
	rename -uid "6C709D2C-4E71-7CF6-F15E-689831AEEE2A";
	addAttr -ci true -k true -sn "w0" -ln "walker_rt_upLegupJntFkCtrl_grpW0" -dv 1 
		-min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -0.5830160000000002 2.3093400000000019 0.031665000000000013 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "Ultimate_Walker_Rig1:walker_rt_upLeg_fk_ctrl_frzGrp_orientConstraint1" 
		-p "Ultimate_Walker_Rig1:walker_rt_upLeg_fk_ctrl_frzGrp";
	rename -uid "20018E84-4293-6254-1BD4-A2A280A523BC";
	addAttr -ci true -k true -sn "w0" -ln "walker_rt_upLegupJntFkCtrl_grpW0" -dv 1 
		-min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 90.000000000000014 -1.2959527575774844e-06 90 ;
	setAttr ".rsrr" -type "double3" 90.000000000000014 -1.2959527575774848e-06 89.999999999999986 ;
	setAttr -k on ".w0";
createNode transform -n "Ultimate_Walker_Rig1:walker_rt_legIK_Grp" -p "Ultimate_Walker_Rig1:walker_rt_leg_rig_grp";
	rename -uid "226813D9-4FC5-B06B-867C-F686CB117128";
createNode joint -n "Ultimate_Walker_Rig1:walker_rt_upLeg_ik_jnt" -p "Ultimate_Walker_Rig1:walker_rt_legIK_Grp";
	rename -uid "F3FB4F4A-411B-3F10-B5E7-A483006EC263";
	addAttr -ci true -h true -sn "createRot" -ln "createRot" -dt "float3";
	setAttr ".ove" yes;
	setAttr ".ovc" 28;
	setAttr ".t" -type "double3" -0.72869616400280179 0.03553319737736757 -0.583016 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 0.26265744643934014 ;
	setAttr ".radi" 0.89313380820640498;
	setAttr ".createRot" -type "float3" 0 0 0 ;
createNode joint -n "Ultimate_Walker_Rig1:walker_rt_knee_ik_jnt" -p "Ultimate_Walker_Rig1:walker_rt_upLeg_ik_jnt";
	rename -uid "6BB77DCA-4A4A-D863-B406-28B93A322B62";
	setAttr ".ove" yes;
	setAttr ".ovc" 28;
	setAttr ".t" -type "double3" -0.98861998319625854 2.236124210797108e-08 4.4408920985006262e-16 ;
	setAttr ".r" -type "double3" 2.5922717676963431e-20 9.2118862243020579e-19 -0.00010269201118437082 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 4.4814151967255551 ;
	setAttr ".radi" 0.84979013353145527;
createNode joint -n "Ultimate_Walker_Rig1:walker_rt_ankle_ik_jnt" -p "Ultimate_Walker_Rig1:walker_rt_knee_ik_jnt";
	rename -uid "3D8EEB29-4883-2DE7-F1BE-DAA9967A4BC2";
	addAttr -ci true -h true -sn "createRot" -ln "createRot" -dt "float3";
	setAttr ".ove" yes;
	setAttr ".ovc" 28;
	setAttr ".t" -type "double3" -0.87961322069168091 -2.6256022818416103e-07 -2.2204460492503131e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -46.430917303014155 ;
	setAttr ".radi" 0.73729004431155587;
	setAttr ".createRot" -type "float3" 0 0 0 ;
createNode ikEffector -n "Ultimate_Walker_Rig1:effector3" -p "Ultimate_Walker_Rig1:walker_rt_knee_ik_jnt";
	rename -uid "7AA6A131-4B94-3798-A4F9-30A69542F68E";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode parentConstraint -n "Ultimate_Walker_Rig1:walker_rt_legIK_Grp_parentConstraint1" 
		-p "Ultimate_Walker_Rig1:walker_rt_legIK_Grp";
	rename -uid "5BCC6542-40D8-10A8-A709-BC99F88DF260";
	addAttr -ci true -k true -sn "w0" -ln "walker_hip_jntW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 4.4408920985006262e-16 2.6020852139652106e-18 
		0 ;
	setAttr ".tg[0].tor" -type "double3" 3.8123586506410354e-16 6.8988129873577089e-15 
		-4.9696166897867449e-17 ;
	setAttr ".lr" -type "double3" 90 0.2626561504866004 90.000000000000014 ;
	setAttr ".rst" -type "double3" -5.7142390883069934e-32 3.037865615999999 -0.0072083119257999829 ;
	setAttr ".rsrr" -type "double3" 90.000000000000014 0.2626561504866004 90 ;
	setAttr -k on ".w0";
createNode transform -n "Ultimate_Walker_Rig1:walker_rt_heel_ik_ctrl_frzGrp" -p "Ultimate_Walker_Rig1:walker_rt_leg_rig_grp";
	rename -uid "AAFFB4EB-4EAE-95D3-D99F-50A7D16C0919";
	setAttr ".t" -type "double3" -0.58301609754639927 1.5390000728584829e-09 -0.25085057272848399 ;
	setAttr ".r" -type "double3" -7.0167092985348649e-15 -1.842772815317326e-14 -3.2461146750243012e-14 ;
createNode transform -n "Ultimate_Walker_Rig1:walker_rt_heel_ik_ctrl" -p "Ultimate_Walker_Rig1:walker_rt_heel_ik_ctrl_frzGrp";
	rename -uid "6F14513A-4019-8CD1-1C9E-BF9AAC0AFEFD";
	addAttr -ci true -sn "stretchyLeg" -ln "stretchyLeg" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "maxStretch" -ln "maxStretch" -dv 3 -min 1 -max 10 -at "double";
	addAttr -ci true -sn "stretchValue" -ln "stretchValue" -at "double";
	addAttr -ci true -sn "Extras" -ln "Extras" -min 0 -max 0 -en "------------" -at "enum";
	addAttr -ci true -sn "pvControl" -ln "pvControl" -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "footRoll" -ln "footRoll" -min -180 -max 180 -at "double";
	addAttr -ci true -k true -sn "footBreak" -ln "footBreak" -dv 40 -min -180 -max 180 
		-at "double";
	addAttr -ci true -k true -sn "toeRoll" -ln "toeRoll" -min -180 -max 180 -at "double";
	addAttr -ci true -sn "legTwist" -ln "legTwist" -min -180 -max 180 -at "double";
	addAttr -ci true -sn "heelTwist" -ln "heelTwist" -min -180 -max 180 -at "double";
	addAttr -ci true -sn "ballTwist" -ln "ballTwist" -min -180 -max 180 -at "double";
	addAttr -ci true -sn "toeTwist" -ln "toeTwist" -min -180 -max 180 -at "double";
	addAttr -ci true -sn "toeRaise" -ln "toeRaise" -min -180 -max 180 -at "double";
	addAttr -ci true -sn "ballRaise" -ln "ballRaise" -min -180 -max 180 -at "double";
	setAttr -k off ".v";
	setAttr ".ro" 3;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".stretchyLeg" 1;
	setAttr ".maxStretch" 1;
	setAttr -k on ".Extras";
	setAttr -k on ".pvControl";
	setAttr -k on ".footRoll";
	setAttr -k on ".footBreak";
	setAttr -k on ".toeRoll";
	setAttr -k on ".legTwist";
	setAttr -k on ".heelTwist";
	setAttr -k on ".ballTwist";
	setAttr -k on ".toeTwist";
createNode nurbsCurve -n "Ultimate_Walker_Rig1:walker_rt_heel_ik_ctrlShape" -p "Ultimate_Walker_Rig1:walker_rt_heel_ik_ctrl";
	rename -uid "C70488AA-406A-F819-D93F-3E91C4EA9C8C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		1.1102230246251565e-16 0.36125625731540734 -0.44131651940000016
		-0.22065825969999991 0.1806972491536743 -0.44131653869055848
		-9.6452790324902674e-09 0.1806972491536743 -0.22065825970000014
		1.1102230246251565e-16 0.36125625731540734 -0.44131651940000016
		-9.6452790324902674e-09 0.1806972491536743 -0.22065825970000014
		1.1102230246251565e-16 1.3877787807814457e-16 -0.44131651940000016
		2.8935835775147837e-08 0.1806972491536743 -0.66197477910000013
		1.1102230246251565e-16 0.36125625731540734 -0.44131651940000016
		-0.22065825969999991 0.1806972491536743 -0.44131653869055848
		1.1102230246251565e-16 1.3877787807814457e-16 -0.44131651940000016
		0.22065825970000014 0.1806972491536743 -0.44131651940000016
		1.1102230246251565e-16 0.36125625731540734 -0.44131651940000016
		-9.6452790324902674e-09 0.1806972491536743 -0.22065825970000014
		-0.22065825969999991 0.1806972491536743 -0.44131653869055848
		2.8935835775147837e-08 0.1806972491536743 -0.66197477910000013
		0.22065825970000014 0.1806972491536743 -0.44131651940000016
		-9.6452790324902674e-09 0.1806972491536743 -0.22065825970000014
		;
createNode transform -n "Ultimate_Walker_Rig1:walker_rt_foot_ctrl" -p "Ultimate_Walker_Rig1:walker_rt_leg_rig_grp";
	rename -uid "6A2174DE-4F6A-3BFD-2245-9D9FFE2AC12F";
	addAttr -ci true -sn "ikFkBlend" -ln "ikFkBlend" -dv 1 -min 0 -max 1 -at "double";
	addAttr -ci true -sn "ikVis" -ln "ikVis" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "fkVis" -ln "fkVis" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "legStretch" -ln "legStretch" -min -9.9 -max 20 -at "double";
	addAttr -ci true -sn "kneeStretch" -ln "kneeStretch" -min -9.9 -max 20 -at "double";
	addAttr -ci true -sn "ankleStretch" -ln "ankleStretch" -min -9.9 -max 20 -at "double";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -k on ".ikFkBlend";
createNode nurbsCurve -n "Ultimate_Walker_Rig1:walker_rt_foot_ctrlShape" -p "Ultimate_Walker_Rig1:walker_rt_foot_ctrl";
	rename -uid "E781A866-47B8-DC36-EA02-5AA54F7E817A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		0.45896918017600002 5.6205657410421576e-17 0.73435068828160011
		0.45896918017600002 1.47617603182389e-16 -0.73435068828160011
		-0.45896918017600002 -5.6205657410421576e-17 -0.73435068828160011
		-0.45896918017600002 -1.47617603182389e-16 0.73435068828160011
		0.45896918017600002 5.6205657410421576e-17 0.73435068828160011
		;
createNode parentConstraint -n "Ultimate_Walker_Rig1:walker_rt_foot_ctrl_parentConstraint1" 
		-p "Ultimate_Walker_Rig1:walker_rt_foot_ctrl";
	rename -uid "1B57F6EB-4B23-2552-BD7C-10942C163134";
	addAttr -ci true -sn "w0" -ln "walker_rt_ankle_jntW0" -dv 1 -min 0 -at "double";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -0.50052922893737428 -0.1070125429422942 -4.8773199590179672e-08 ;
	setAttr ".tg[0].tor" -type "double3" -48.050499189664123 -89.999999999999986 0 ;
	setAttr ".lr" -type "double3" -24.399999618530178 8.1383529625969561e-07 1.7940899089477627e-06 ;
	setAttr ".rst" -type "double3" -0.58301604877319946 5.5511151231257827e-17 0.21793805636290958 ;
	setAttr ".rsrr" -type "double3" 1.9083328088781101e-14 1.9083328088781101e-14 6.3611093629270367e-15 ;
	setAttr -k off ".int";
createNode transform -n "Ultimate_Walker_Rig1:walker_rt_knee_pv_ctrl_frzGrp" -p "Ultimate_Walker_Rig1:walker_rt_leg_rig_grp";
	rename -uid "DC0D97D3-491A-36A4-FD91-95A2412FF8A8";
	setAttr ".t" -type "double3" -0.583016 1.2843224169069354 1.019614755982047 ;
createNode transform -n "Ultimate_Walker_Rig1:walker_rt_legPvCtrlGrp_space_grp" -p
		 "Ultimate_Walker_Rig1:walker_rt_knee_pv_ctrl_frzGrp";
	rename -uid "4FE2E253-42D1-B980-E7D6-C781C541D53B";
createNode parentConstraint -n "Ultimate_Walker_Rig1:walker_rt_legPvCtrlGrp_rtLegIkCtrlSpcParCon" 
		-p "Ultimate_Walker_Rig1:walker_rt_legPvCtrlGrp_space_grp";
	rename -uid "CC9695A6-421E-B5FA-DE7D-8F8642E9E6DB";
	addAttr -ci true -k true -sn "w0" -ln "walker_rtLegIkCtrl_space_switch_grpW0" -dv 
		1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0.58301609754639927 -1.5390000728584829e-09 
		0.25085057272848399 ;
	setAttr ".rst" -type "double3" 0.583016 -1.2843224169069354 -1.019614755982047 ;
	setAttr -k on ".w0";
createNode transform -n "Ultimate_Walker_Rig1:walker_rt_knee_pv_ctrl" -p "Ultimate_Walker_Rig1:walker_rt_legPvCtrlGrp_space_grp";
	rename -uid "3687BB6B-495A-2763-DAB6-A2A6243162B7";
	addAttr -ci true -sn "snapKnee" -ln "snapKnee" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "________SPACES___" -ln "________SPACES___" -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "rtLegIkCtrl" -ln "rtLegIkCtrl" -min 0 -max 1 -at "double";
	setAttr -k off ".v";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".rp" -type "double3" -0.583016 1.2843224169069354 1.019614755982047 ;
	setAttr ".sp" -type "double3" -0.583016 1.2843224169069354 1.019614755982047 ;
	setAttr -k on ".rtLegIkCtrl";
createNode nurbsCurve -n "Ultimate_Walker_Rig1:walker_rt_knee_pv_ctrlShape" -p "Ultimate_Walker_Rig1:walker_rt_knee_pv_ctrl";
	rename -uid "CE298A40-4B37-91FD-7CBD-3C90DA230036";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 44 0 no 3
		45 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44
		45
		-0.5830160000000002 1.2843224107285962 1.1078780598620468
		-0.61679290055777214 1.2843224108805629 1.1011594177240354
		-0.64542757566950737 1.2843224113133271 1.0820263358582516
		-0.66456065338784287 1.2843224119610046 1.0533916607228166
		-0.67127929552585441 1.2843224127249924 1.019614755982047
		-0.66456065338784287 1.2843224134889801 0.9858378512412771
		-0.64542757566950737 1.2843224141366576 0.95720317610584205
		-0.61679290055777214 1.2843224145694219 0.93807009424005849
		-0.5830160000000002 1.2843224147213885 0.93135145210204695
		-0.54923909735072907 1.2843224145694219 0.93807009424005849
		-0.52060442012379515 1.2843224141366576 0.95720317610584205
		-0.50147134661215709 1.2843224134889801 0.9858378512412771
		-0.49475270447414549 1.2843224127249924 1.019614755982047
		-0.50147134661215709 1.2843224119610046 1.0533916607228166
		-0.52060442012379515 1.2843224113133271 1.0820263358582516
		-0.54923909735072896 1.2843224108805629 1.1011594177240354
		-0.5830160000000002 1.2843224107285962 1.1078780598620468
		-0.5830160000000002 1.250545510321736 1.1011594169600476
		-0.5830160000000002 1.2219108356190653 1.0820263344465866
		-0.58301600000000031 1.2027777586076567 1.0533916588783874
		-0.58301600000000031 1.1960591171743835 1.019614753985651
		-0.58301600000000031 1.2027777601356322 0.98583784939684771
		-0.58301600000000031 1.2219108384423958 0.95720317469417704
		-0.5830160000000002 1.2505455140105952 0.93807009347607084
		-0.5830160000000002 1.2843224147213885 0.93135145210204695
		-0.5830160000000002 1.318099319309137 0.93807009500404626
		-0.5830160000000002 1.3467339981948054 0.95720317751750739
		-0.5830160000000002 1.3658670752062141 0.98583785308570659
		-0.5830160000000002 1.3725857166394873 1.0196147579784429
		-0.5830160000000002 1.3658670736782386 1.0533916625672461
		-0.5830160000000002 1.346733995371475 1.082026337269917
		-0.5830160000000002 1.318099315620278 1.1011594184880229
		-0.5830160000000002 1.2843224107285962 1.1078780598620468
		-0.5830160000000002 1.250545510321736 1.1011594169600476
		-0.5830160000000002 1.2219108356190653 1.0820263344465866
		-0.58301600000000031 1.2027777586076567 1.0533916588783874
		-0.58301600000000031 1.1960591171743835 1.019614753985651
		-0.52060442433049259 1.2219108370307306 1.0196147545703818
		-0.49475270447414549 1.2843224127249924 1.019614755982047
		-0.52060442012379515 1.3467339925764428 1.019614757393712
		-0.5830160000000002 1.3725857166394873 1.0196147579784429
		-0.64542757566950737 1.3467339884289946 1.019614757393712
		-0.67127929552585441 1.2843224127249924 1.019614755982047
		-0.64542757566950748 1.2219108370307306 1.0196147545703818
		-0.58301600000000031 1.1960591171743835 1.019614753985651
		;
createNode transform -n "Ultimate_Walker_Rig1:walker_rt_knee_pv_ctrl_annLoc" -p "Ultimate_Walker_Rig1:walker_rt_knee_pv_ctrl";
	rename -uid "02B6C645-4874-7F65-9795-6E92362E448E";
	setAttr ".v" no;
createNode locator -n "Ultimate_Walker_Rig1:walker_rt_knee_pv_ctrl_annLocShape" -p
		 "Ultimate_Walker_Rig1:walker_rt_knee_pv_ctrl_annLoc";
	rename -uid "1F12B1C9-471C-7B75-C6C5-5790FD976CE3";
	setAttr -k off ".v";
createNode pointConstraint -n "Ultimate_Walker_Rig1:walker_rt_knee_pv_ctrl_annLoc_pointConstraint1" 
		-p "Ultimate_Walker_Rig1:walker_rt_knee_pv_ctrl_annLoc";
	rename -uid "5058E9A8-4357-8E3B-A7A7-8FB00D5B4750";
	addAttr -ci true -k true -sn "w0" -ln "walker_rt_knee_pv_ctrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -0.583016 1.2843224169069354 1.019614755982047 ;
	setAttr -k on ".w0";
createNode transform -n "Ultimate_Walker_Rig1:walker_rt_legStrDist_dist" -p "Ultimate_Walker_Rig1:walker_rt_leg_rig_grp";
	rename -uid "5FC002AC-43BE-4DDD-43B5-ABA9375E270E";
	setAttr ".v" no;
createNode distanceDimShape -n "Ultimate_Walker_Rig1:walker_rt_legStrDist_distShape" 
		-p "Ultimate_Walker_Rig1:walker_rt_legStrDist_dist";
	rename -uid "7D2FD3F2-467A-EFC2-CFDE-5EB0888F9AB9";
	setAttr -k off ".v";
createNode transform -n "Ultimate_Walker_Rig1:walker_rt_legStrDist_dist_sp" -p "Ultimate_Walker_Rig1:walker_rt_leg_rig_grp";
	rename -uid "B3131A9D-4987-7173-ECCC-29A174F00703";
	setAttr ".v" no;
	setAttr ".r" -type "double3" 90.000000000000014 -1.2959527384941561e-06 89.999999999999986 ;
createNode locator -n "Ultimate_Walker_Rig1:walker_rt_legStrDist_dist_spShape" -p
		 "Ultimate_Walker_Rig1:walker_rt_legStrDist_dist_sp";
	rename -uid "457E16F5-49C2-A858-9B9D-B4A0BE55A317";
	setAttr -k off ".v";
createNode pointConstraint -n "Ultimate_Walker_Rig1:walker_rt_legStrDist_dist_sp_pointConstraint1" 
		-p "Ultimate_Walker_Rig1:walker_rt_legStrDist_dist_sp";
	rename -uid "63561041-4F68-5A06-E7C1-4EBB3E4B5E28";
	addAttr -ci true -k true -sn "w0" -ln "walker_rt_upLeg_ik_jntW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -0.58301600000000009 2.3093400000000011 0.031665000000000006 ;
	setAttr -k on ".w0";
createNode transform -n "Ultimate_Walker_Rig1:walker_rt_legStrDist_dist_ep" -p "Ultimate_Walker_Rig1:walker_rt_leg_rig_grp";
	rename -uid "9CAFE363-4AA7-C79B-58BB-8390A1BD48EB";
	setAttr ".v" no;
	setAttr ".r" -type "double3" 90 41.94950081033587 90 ;
createNode locator -n "Ultimate_Walker_Rig1:walker_rt_legStrDist_dist_epShape" -p
		 "Ultimate_Walker_Rig1:walker_rt_legStrDist_dist_ep";
	rename -uid "0BC8119C-45EC-3699-1A1B-F2B500B7E1D3";
	setAttr -k off ".v";
createNode pointConstraint -n "Ultimate_Walker_Rig1:walker_rt_legStrDist_dist_ep_pointConstraint1" 
		-p "Ultimate_Walker_Rig1:walker_rt_legStrDist_dist_ep";
	rename -uid "BC25CABC-49A8-9845-A796-14809647D69F";
	addAttr -ci true -k true -sn "w0" -ln "walker_rt_ankle_rev_rig_jntW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -0.58301599999999987 0.44379599999999997 -0.0370645 ;
	setAttr -k on ".w0";
createNode transform -n "Ultimate_Walker_Rig1:walker_rt_upLegPvCtrl_dist" -p "Ultimate_Walker_Rig1:walker_rt_leg_rig_grp";
	rename -uid "FEA2936D-47AA-CA45-16EB-30AB838EAF5B";
	setAttr ".v" no;
createNode distanceDimShape -n "Ultimate_Walker_Rig1:walker_rt_upLegPvCtrl_distShape" 
		-p "Ultimate_Walker_Rig1:walker_rt_upLegPvCtrl_dist";
	rename -uid "D3BB6E25-443B-269D-D63C-1EA73A45C7A5";
	setAttr -k off ".v";
createNode transform -n "Ultimate_Walker_Rig1:walker_rt_upLegPvCtrl_dist_sp" -p "Ultimate_Walker_Rig1:walker_rt_leg_rig_grp";
	rename -uid "71EA44E4-4DC7-2CEB-1ED3-BDBCFD03F57E";
	setAttr ".v" no;
	setAttr ".r" -type "double3" 90.000000000000014 -1.2959527384941561e-06 89.999999999999986 ;
createNode locator -n "Ultimate_Walker_Rig1:walker_rt_upLegPvCtrl_dist_spShape" -p
		 "Ultimate_Walker_Rig1:walker_rt_upLegPvCtrl_dist_sp";
	rename -uid "9E3DA548-4F38-DCE4-4A42-B9AEC799543D";
	setAttr -k off ".v";
createNode pointConstraint -n "Ultimate_Walker_Rig1:walker_rt_upLegPvCtrl_dist_sp_pointConstraint1" 
		-p "Ultimate_Walker_Rig1:walker_rt_upLegPvCtrl_dist_sp";
	rename -uid "7DB185CC-45EC-AF49-E860-DC8A46847C47";
	addAttr -ci true -k true -sn "w0" -ln "walker_rt_upLeg_ik_jntW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -0.58301600000000009 2.3093400000000011 0.031665000000000006 ;
	setAttr -k on ".w0";
createNode transform -n "Ultimate_Walker_Rig1:walker_rt_upLegPvCtrl_dist_ep" -p "Ultimate_Walker_Rig1:walker_rt_leg_rig_grp";
	rename -uid "EB5EE6D5-49BD-1DDB-76CD-46A1376447E2";
	setAttr ".v" no;
createNode locator -n "Ultimate_Walker_Rig1:walker_rt_upLegPvCtrl_dist_epShape" -p
		 "Ultimate_Walker_Rig1:walker_rt_upLegPvCtrl_dist_ep";
	rename -uid "FB2BD428-4ED7-E8A6-A488-3287FEC644E1";
	setAttr -k off ".v";
createNode pointConstraint -n "Ultimate_Walker_Rig1:walker_rt_upLegPvCtrl_dist_ep_pointConstraint1" 
		-p "Ultimate_Walker_Rig1:walker_rt_upLegPvCtrl_dist_ep";
	rename -uid "30CF0569-4031-45FD-3C15-42861C482B37";
	addAttr -ci true -k true -sn "w0" -ln "walker_rt_knee_pv_ctrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -0.583016 1.2843224169069354 1.019614755982047 ;
	setAttr -k on ".w0";
createNode transform -n "Ultimate_Walker_Rig1:walker_rt_legPvIkCtrl_dist" -p "Ultimate_Walker_Rig1:walker_rt_leg_rig_grp";
	rename -uid "122CF9AA-4126-E915-33DA-A492906D287E";
	setAttr ".v" no;
createNode distanceDimShape -n "Ultimate_Walker_Rig1:walker_rt_legPvIkCtrl_distShape" 
		-p "Ultimate_Walker_Rig1:walker_rt_legPvIkCtrl_dist";
	rename -uid "0223E8DB-42D0-7867-C067-A891948DCDA1";
	setAttr -k off ".v";
createNode transform -n "Ultimate_Walker_Rig1:walker_rt_legPvIkCtrl_dist_sp" -p "Ultimate_Walker_Rig1:walker_rt_leg_rig_grp";
	rename -uid "3BC573B4-4FAA-EAE0-DC30-58BFB4FD8407";
	setAttr ".v" no;
createNode locator -n "Ultimate_Walker_Rig1:walker_rt_legPvIkCtrl_dist_spShape" -p
		 "Ultimate_Walker_Rig1:walker_rt_legPvIkCtrl_dist_sp";
	rename -uid "DC0BF837-4727-702D-300D-B4A64429C3E8";
	setAttr -k off ".v";
createNode pointConstraint -n "Ultimate_Walker_Rig1:walker_rt_legPvIkCtrl_dist_sp_pointConstraint1" 
		-p "Ultimate_Walker_Rig1:walker_rt_legPvIkCtrl_dist_sp";
	rename -uid "E2422218-4B15-DCC2-1C00-5EB25141AEF4";
	addAttr -ci true -k true -sn "w0" -ln "walker_rt_knee_pv_ctrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -0.583016 1.2843224169069354 1.019614755982047 ;
	setAttr -k on ".w0";
createNode transform -n "Ultimate_Walker_Rig1:walker_rt_legPvIkCtrl_dist_ep" -p "Ultimate_Walker_Rig1:walker_rt_leg_rig_grp";
	rename -uid "1E18F993-4D8E-256D-16D4-3DBC46D39C94";
	setAttr ".v" no;
	setAttr ".r" -type "double3" 89.999999999999986 41.94950081033587 89.999999999999986 ;
createNode locator -n "Ultimate_Walker_Rig1:walker_rt_legPvIkCtrl_dist_epShape" -p
		 "Ultimate_Walker_Rig1:walker_rt_legPvIkCtrl_dist_ep";
	rename -uid "2FD7BA1B-4423-D57B-997B-428752460380";
	setAttr -k off ".v";
createNode pointConstraint -n "Ultimate_Walker_Rig1:walker_rt_legPvIkCtrl_dist_ep_pointConstraint1" 
		-p "Ultimate_Walker_Rig1:walker_rt_legPvIkCtrl_dist_ep";
	rename -uid "87C3866D-42DC-D781-7F22-6D83DEBF30BD";
	addAttr -ci true -k true -sn "w0" -ln "walker_rt_ankle_rev_rig_jntW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -0.58301599999999987 0.44379599999999997 -0.0370645 ;
	setAttr -k on ".w0";
createNode transform -n "Ultimate_Walker_Rig1:walker_rtLegIkCtrl_space_switch_grp" 
		-p "Ultimate_Walker_Rig1:Rig_Leg_grp";
	rename -uid "865EAE5E-4271-38B2-060D-DF8E8C6B13E1";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
createNode parentConstraint -n "Ultimate_Walker_Rig1:walker_rtLegIkCtrlSpace_par_cons" 
		-p "Ultimate_Walker_Rig1:walker_rtLegIkCtrl_space_switch_grp";
	rename -uid "0E5A9857-4E70-1C87-F830-B5BEA9F73A6C";
	addAttr -ci true -sn "w0" -ln "walker_rt_heel_ik_ctrlW0" -dv 1 -min 0 -at "double";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -0.58301609754639927 1.5390000728584829e-09 -0.25085057272848399 ;
	setAttr -k off ".int";
createNode parentConstraint -n "Ultimate_Walker_Rig1:Rig_Leg_grp_parentConstraint1" 
		-p "Ultimate_Walker_Rig1:Rig_Leg_grp";
	rename -uid "C17DB540-4B11-DC10-7EB5-138B4F898EFA";
	addAttr -ci true -sn "w0" -ln "CTRL_RootW0" -dv 1 -min 0 -at "double";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -1.0877048587575133e-31 1.7763568394002503e-15 
		-8.8817841970012563e-16 ;
	setAttr ".tg[0].tor" -type "double3" 0 180 0 ;
	setAttr ".lr" -type "double3" 0 180 0 ;
	setAttr ".rsrr" -type "double3" 0 360 0 ;
	setAttr -k off ".int";
createNode transform -n "Ultimate_Walker_Rig1:Skeleton_grp" -p "Ultimate_Walker_Rig1:AniM_walker_Main";
	rename -uid "AA6E6220-4620-ACD9-3624-27B06B51C940";
	setAttr -k off ".v" no;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
createNode joint -n "Ultimate_Walker_Rig1:walker_hip_jnt" -p "Ultimate_Walker_Rig1:Skeleton_grp";
	rename -uid "F867AD45-46AF-36BB-F144-0485027EE8C5";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off ".v";
	setAttr ".uoc" 1;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 90.000000000000014 0.2626561504866004 90 ;
	setAttr ".bps" -type "matrix" 0 0.99998949250653002 -0.004584198570391885 0 1.6653345369377353e-16 0.0045841985703917176 0.99998949250653002 0
		 1.0000000000000002 -1.6653345369377353e-16 -2.2204460492503131e-16 0 -1.1097812077883228e-31 3.0378656159999986 -0.0072083119258000115 1;
createNode joint -n "Ultimate_Walker_Rig1:walker_lf_upLeg_jnt" -p "Ultimate_Walker_Rig1:walker_hip_jnt";
	rename -uid "F9D5CE6B-4100-BA36-3A88-F8A7FF64FDBB";
	addAttr -ci true -h true -sn "createRot" -ln "createRot" -dt "float3";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -0.72869950102630865 0.035533216670092169 0.5830160975463996 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -179.73734255356067 ;
	setAttr ".bps" -type "matrix" -7.6342618706643777e-19 -1.0000000000000002 -2.2618642162366975e-08 0
		 -1.6653170382732871e-16 2.2618642329767791e-08 -1.0000000000000002 0 1.0000000000000002 -1.6653345369377353e-16 -2.2204460492503131e-16 0
		 0.58301609754639971 2.309336663099999 0.031665034590099977 1;
	setAttr ".radi" 0.89313380820640498;
	setAttr ".createRot" -type "float3" 0 0 0 ;
createNode joint -n "Ultimate_Walker_Rig1:walker_lf_knee_jnt" -p "Ultimate_Walker_Rig1:walker_lf_upLeg_jnt";
	rename -uid "908FA541-4827-5561-1225-11BBCBC19E41";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0.98861312866210938 1.3412881916252672e-14 2.2204460492503131e-16 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 4.4814151967256262 ;
	setAttr ".bps" -type "matrix" -1.3773176432434755e-17 -0.99694272486701208 -0.078135800595744931 0
		 -1.6596291998557162e-16 0.078135800595745097 -0.99694272486701208 0 1.0000000000000002 -1.6653345369377353e-16 -2.2204460492503131e-16 0
		 0.58301609754639994 1.3207235344378894 0.031665012228999971 1;
	setAttr -cb off ".radi" 0.84979013353145527;
createNode joint -n "Ultimate_Walker_Rig1:walker_lf_ankle_jnt" -p "Ultimate_Walker_Rig1:walker_lf_knee_jnt";
	rename -uid "54DEC641-4304-A2EA-D4FD-02B5FEF56B3D";
	addAttr -ci true -h true -sn "createRot" -ln "createRot" -dt "float3";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 0.87961685657501221 3.4694469519536142e-16 -1.1102230246251565e-16 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -46.430917303014219 ;
	setAttr ".bps" -type "matrix" 1.1075455652730962e-16 -0.74373429316698947 0.66847535569189065 0
		 -1.2436566812273876e-16 -0.66847535569189054 -0.74373429316698936 0 1.0000000000000002 -1.6653345369377353e-16 -2.2204460492503131e-16 0
		 0.58301609754639983 0.44379590860504092 -0.037064555077001494 1;
	setAttr -cb off ".radi" 0.73729004431155587;
	setAttr ".createRot" -type "float3" 0 0 0 ;
createNode joint -n "Ultimate_Walker_Rig1:walker_lf_ball_jnt" -p "Ultimate_Walker_Rig1:walker_lf_ankle_jnt";
	rename -uid "4B09F7AC-4110-A330-F503-4E9417EF3D08";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 0.59671299748895001 -2.2204460492503131e-16 -2.2204460492503131e-16 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -48.050499189664158 ;
	setAttr ".bps" -type "matrix" 1.6653170384459631e-16 3.8857805861880479e-16 1.0000000000000004 0
		 -7.6342242034533623e-19 -1.0000000000000004 6.106226635438361e-16 0 1.0000000000000002 -1.6653345369377353e-16 -2.2204460492503131e-16 0
		 0.58301609754639971 -1.0805958683413053e-08 0.36182337816539878 1;
	setAttr -cb off ".radi" 0.72241122832793025;
createNode joint -n "Ultimate_Walker_Rig1:walker_lf_toe_jnt" -p "Ultimate_Walker_Rig1:walker_lf_ball_jnt";
	rename -uid "44A1CC32-487C-4F1B-524E-CA8A10E84C93";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 0.5592972562999996 -5.2219492896697226e-17 1.1102230246251565e-16 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -180 -89.999999999999986 0 ;
	setAttr ".bps" -type "matrix" 1.0000000000000004 -1.6653345369377348e-16 4.9303806576313238e-32 0
		 7.6342242034531967e-19 1.0000000000000004 -4.8815798362910075e-16 0 -2.775575060054664e-16 2.6611337870406959e-16 1.0000000000000007 0
		 0.58301609754639994 -1.0805958413862918e-08 0.9211206344653986 1;
	setAttr -cb off ".radi" 0.5;
createNode orientConstraint -n "Ultimate_Walker_Rig1:walker_lf_toe_ikFkCons" -p "Ultimate_Walker_Rig1:walker_lf_toe_jnt";
	rename -uid "46D1FCAB-4D12-E7EE-E6B4-A8A4C969D90A";
	addAttr -ci true -sn "w0" -ln "walker_lf_toe_ik_jntW0" -dv 1 -min 0 -at "double";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 2.4999999999999813 -1.2695968635131277e-14 -1.3418080088848244e-15 ;
	setAttr -k off ".ox";
	setAttr -k off ".oy";
	setAttr -k off ".oz";
	setAttr ".rsrr" -type "double3" -1.4033418597069752e-14 -1.2722218725854067e-14 
		1.4557242869091942e-31 ;
	setAttr -k off ".int";
createNode orientConstraint -n "Ultimate_Walker_Rig1:walker_lf_ball_ikFkCons" -p "Ultimate_Walker_Rig1:walker_lf_ball_jnt";
	rename -uid "6B99519E-42B2-DE9E-17B4-E7BEF09AFF84";
	addAttr -ci true -sn "w0" -ln "walker_lf_ball_ik_jntW0" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "w1" -ln "walker_lf_ball_fk_jntW1" -dv 1 -min 0 -at "double";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".lr" -type "double3" 0 0 2.4999999999999956 ;
	setAttr -k off ".ox";
	setAttr -k off ".oy";
	setAttr -k off ".oz";
	setAttr -k off ".int" 2;
createNode orientConstraint -n "Ultimate_Walker_Rig1:walker_lf_ankle_ikFkCons" -p
		 "Ultimate_Walker_Rig1:walker_lf_ankle_jnt";
	rename -uid "DFE022B5-493A-AC4F-0F5B-369DF5E47964";
	addAttr -ci true -sn "w0" -ln "walker_lf_ankle_rev_rig_jntW0" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "w1" -ln "walker_lf_ankle_fk_jntW1" -dv 1 -min 0 -at "double";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".lr" -type "double3" 0 0 87.4999969806763 ;
	setAttr -k off ".ox";
	setAttr -k off ".oy";
	setAttr -k off ".oz";
	setAttr ".rsrr" -type "double3" 0 0 -1.5096618822201364e-06 ;
	setAttr -k off ".int" 2;
createNode orientConstraint -n "Ultimate_Walker_Rig1:walker_lf_knee_ikFkCons" -p "Ultimate_Walker_Rig1:walker_lf_knee_jnt";
	rename -uid "E210764A-434C-A88C-DBAF-5D919B54DF3D";
	addAttr -ci true -sn "w0" -ln "walker_lf_knee_ik_jntW0" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "w1" -ln "walker_lf_knee_fk_jntW1" -dv 1 -min 0 -at "double";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".lr" -type "double3" 0 0 3.0193237127562591e-06 ;
	setAttr -k off ".ox";
	setAttr -k off ".oy";
	setAttr -k off ".oz";
	setAttr ".rsrr" -type "double3" 0 0 1.5096618854006907e-06 ;
	setAttr -k off ".int" 2;
createNode orientConstraint -n "Ultimate_Walker_Rig1:walker_lf_upLeg_ikFkCons" -p
		 "Ultimate_Walker_Rig1:walker_lf_upLeg_jnt";
	rename -uid "C3F936A6-4CC4-79DE-454A-38A32FB1920C";
	addAttr -ci true -sn "w0" -ln "walker_lf_upLeg_ik_jntW0" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "w1" -ln "walker_lf_upLeg_fk_jntW1" -dv 1 -min 0 -at "double";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr -k off ".ox";
	setAttr -k off ".oy";
	setAttr -k off ".oz";
	setAttr -k off ".int" 2;
createNode joint -n "Ultimate_Walker_Rig1:walker_rt_upLeg_jnt" -p "Ultimate_Walker_Rig1:walker_hip_jnt";
	rename -uid "9CD618FE-41E8-16E4-033F-31BF901D395D";
	addAttr -ci true -h true -sn "createRot" -ln "createRot" -dt "float3";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -0.72869616400280179 0.03553319737736757 -0.583016 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 0.26265744643934003 ;
	setAttr ".bps" -type "matrix" 7.6342618706645308e-19 0.99999999999999978 2.2618642256042043e-08 0
		 1.6653170382732866e-16 -2.2618642423442858e-08 0.99999999999999978 0 1.0000000000000002 -1.6653345369377353e-16 -2.2204460492503131e-16 0
		 -0.58301600000000009 2.3093400000000006 0.031664999999999971 1;
	setAttr ".radi" 0.89313380820640498;
	setAttr ".createRot" -type "float3" 0 0 0 ;
createNode joint -n "Ultimate_Walker_Rig1:walker_rt_knee_jnt" -p "Ultimate_Walker_Rig1:walker_rt_upLeg_jnt";
	rename -uid "9E21C4C0-48E6-D5AF-49C6-A78946EA037D";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -0.98861998319625854 2.236124210797108e-08 4.4408920985006262e-16 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 4.4814151967255516 ;
	setAttr ".bps" -type "matrix" 1.377287022724637e-17 0.99694286902755114 0.078133961214794032 0
		 1.6596294539709651e-16 -0.078133961214794198 0.99694286902755114 0 1.0000000000000002 -1.6653345369377353e-16 -2.2204460492503131e-16 0
		 -0.58301599999999965 1.3207200168037416 0.031665000000000353 1;
	setAttr -cb off ".radi" 0.84979013353145527;
createNode joint -n "Ultimate_Walker_Rig1:walker_rt_ankle_jnt" -p "Ultimate_Walker_Rig1:walker_rt_knee_jnt";
	rename -uid "C2F62F60-4DA9-DE7B-FA9D-E58C048306B7";
	addAttr -ci true -h true -sn "createRot" -ln "createRot" -dt "float3";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" -0.87961322069168091 -2.6256022818416103e-07 0 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -46.430917303014155 ;
	setAttr ".bps" -type "matrix" -1.1075455652730957e-16 0.74373429316698902 -0.66847535569189032 0
		 1.2436566812273871e-16 0.66847535569189021 0.74373429316698891 0 1.0000000000000002 -1.6653345369377353e-16 -2.2204460492503131e-16 0
		 -0.58301599999999965 0.44379590944768343 -0.037062927027090679 1;
	setAttr -cb off ".radi" 0.73729004431155587;
	setAttr ".createRot" -type "float3" 0 0 0 ;
createNode joint -n "Ultimate_Walker_Rig1:walker_rt_ball_jnt" -p "Ultimate_Walker_Rig1:walker_rt_ankle_jnt";
	rename -uid "2AF16018-4FF7-65DD-882D-A698F41250BE";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" -0.59671276666927886 -3.7506020711397525e-07 -1.1102230246251565e-16 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -48.050499189664158 ;
	setAttr ".bps" -type "matrix" -1.6653170384459626e-16 -4.9960036108132044e-16 -1 0
		 7.6342242034533623e-19 0.99999999999999989 -6.106226635438361e-16 0 1.0000000000000002 -1.6653345369377353e-16 -2.2204460492503131e-16 0
		 -0.58301599999999965 -8.901331649546762e-08 0.36182457297290943 1;
	setAttr -cb off ".radi" 0.72241122832793025;
createNode joint -n "Ultimate_Walker_Rig1:walker_rt_toe_jnt" -p "Ultimate_Walker_Rig1:walker_rt_ball_jnt";
	rename -uid "16E5A225-40B7-5FF1-E287-62AACD580C3F";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" -0.559298 -1.3824481704202125e-16 0 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -179.99999999999997 -89.999999999999986 0 ;
	setAttr ".bps" -type "matrix" 1.0000000000000004 -1.6653345369140838e-16 -4.4408920985006262e-16 0
		 -7.6342242211950482e-19 -1 -1.0652379319050904e-11 0 -6.1062091369465094e-16 1.0652490341353368e-11 -1 0
		 -0.58301599999999953 -8.9022791253391467e-08 0.92112257295884059 1;
	setAttr -cb off ".radi" 0.5;
createNode orientConstraint -n "Ultimate_Walker_Rig1:walker_rt_toe_ikFkCons" -p "Ultimate_Walker_Rig1:walker_rt_toe_jnt";
	rename -uid "069901FB-444A-5039-D018-E49FF18E04CE";
	addAttr -ci true -sn "w0" -ln "walker_rt_toe_ik_jntW0" -dv 1 -min 0 -at "double";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -2.5444437451708131e-14 -2.5444437451708134e-14 1.6949400184512609e-29 ;
	setAttr -k off ".ox";
	setAttr -k off ".oy";
	setAttr -k off ".oz";
	setAttr ".rsrr" -type "double3" -2.5444437451708131e-14 -2.5444437451708134e-14 
		1.6949400184512609e-29 ;
	setAttr -k off ".int";
createNode orientConstraint -n "Ultimate_Walker_Rig1:walker_rt_ball_ikFkCons" -p "Ultimate_Walker_Rig1:walker_rt_ball_jnt";
	rename -uid "44D8B8A1-4B27-016D-D285-A7B51B3063B1";
	addAttr -ci true -sn "w0" -ln "walker_rt_ball_ik_jntW0" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "w1" -ln "walker_rt_ball_fk_jntW1" -dv 1 -min 0 -at "double";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".lr" -type "double3" 0 0 1.9083328088781101e-14 ;
	setAttr -k off ".ox";
	setAttr -k off ".oy";
	setAttr -k off ".oz";
	setAttr ".rsrr" -type "double3" 0 0 6.361109362927032e-15 ;
	setAttr -k off ".int" 2;
createNode orientConstraint -n "Ultimate_Walker_Rig1:walker_rt_ankle_ikFkCons" -p
		 "Ultimate_Walker_Rig1:walker_rt_ankle_jnt";
	rename -uid "B0FD9359-443A-D4C2-9A15-07A27C21BBE0";
	addAttr -ci true -sn "w0" -ln "walker_rt_ankle_rev_rig_jntW0" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "w1" -ln "walker_rt_ankle_fk_jntW1" -dv 1 -min 0 -at "double";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".lr" -type "double3" -1.3169280757093593e-06 1.4651917429711547e-06 -24.399896926519034 ;
	setAttr -k off ".ox";
	setAttr -k off ".oy";
	setAttr -k off ".oz";
	setAttr ".rsrr" -type "double3" 0 0 5.1346007090426085e-05 ;
	setAttr -k off ".int" 2;
createNode orientConstraint -n "Ultimate_Walker_Rig1:walker_rt_knee_ikFkCons" -p "Ultimate_Walker_Rig1:walker_rt_knee_jnt";
	rename -uid "36A4B156-4A80-FEB5-5B15-91B85F4F92E1";
	addAttr -ci true -sn "w0" -ln "walker_rt_knee_ik_jntW0" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "w1" -ln "walker_rt_knee_fk_jntW1" -dv 1 -min 0 -at "double";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".lr" -type "double3" 0 0 -0.00010269201118159941 ;
	setAttr -k off ".ox";
	setAttr -k off ".oy";
	setAttr -k off ".oz";
	setAttr ".rsrr" -type "double3" 0 0 -5.1346007084860089e-05 ;
	setAttr -k off ".int" 2;
createNode orientConstraint -n "Ultimate_Walker_Rig1:walker_rt_upLeg_ikFkCons" -p
		 "Ultimate_Walker_Rig1:walker_rt_upLeg_jnt";
	rename -uid "03869B64-4F53-BEC0-993E-3AA21328F3C9";
	addAttr -ci true -sn "w0" -ln "walker_rt_upLeg_ik_jntW0" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "w1" -ln "walker_rt_upLeg_fk_jntW1" -dv 1 -min 0 -at "double";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".lr" -type "double3" 0 0 9.9392333795734899e-17 ;
	setAttr -k off ".ox";
	setAttr -k off ".oy";
	setAttr -k off ".oz";
	setAttr ".rsrr" -type "double3" 0 0 9.9392333795734899e-17 ;
	setAttr -k off ".int" 2;
createNode parentConstraint -n "Ultimate_Walker_Rig1:walker_hip_jnt_parentConstraint1" 
		-p "Ultimate_Walker_Rig1:walker_hip_jnt";
	rename -uid "FE126DA0-4A77-6DF3-ABC8-809F72A6E17F";
	addAttr -ci true -sn "w0" -ln "CTRL_MainW0" -dv 1 -min 0 -at "double";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 8.8276361271866991e-19 -8.1343953794998924e-10 
		0.0072083119257982352 ;
	setAttr ".tg[0].tor" -type "double3" -89.999999999999986 -0.2626561504866004 90 ;
	setAttr ".lr" -type "double3" 180 3.1222000849106963e-15 0.52531230097320392 ;
	setAttr ".rst" -type "double3" -1.1097812077883228e-31 3.0378656159999986 -0.0072083119258000115 ;
	setAttr ".rsrr" -type "double3" 3.1805546814635168e-15 2.2263882770244611e-14 3.1805546814635168e-15 ;
	setAttr -k off ".int";
createNode transform -n "Ultimate_Walker_Rig1:Body_Rig_Grp" -p "Ultimate_Walker_Rig1:AniM_walker_Main";
	rename -uid "8D8D87E5-4125-0EB7-B372-159DEFF9D2A7";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sz";
	setAttr -k off ".sy";
createNode transform -n "Ultimate_Walker_Rig1:CNT_Grp" -p "Ultimate_Walker_Rig1:Body_Rig_Grp";
	rename -uid "A7F6B549-464F-168B-7A10-B195115319D4";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
createNode transform -n "Ultimate_Walker_Rig1:CTRL_Main_Grp" -p "Ultimate_Walker_Rig1:CNT_Grp";
	rename -uid "C943D3F6-44D3-5CC5-4EAF-6E90815C5E94";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
createNode transform -n "Ultimate_Walker_Rig1:CTRL_Main" -p "Ultimate_Walker_Rig1:CTRL_Main_Grp";
	rename -uid "376FA573-41CA-5A2D-CE00-CBB5141FDFCC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".rp" -type "double3" 0 3.0378656168134381 0 ;
	setAttr ".sp" -type "double3" 0 3.0378656168134381 0 ;
createNode nurbsCurve -n "Ultimate_Walker_Rig1:CTRL_MainShape" -p "Ultimate_Walker_Rig1:CTRL_Main";
	rename -uid "C64B6C34-4DEE-06CC-9B17-05A3E77D3003";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.1360610831679188 3.0378656168134381 -1.136061083167917
		-1.8330086279573731e-16 3.0378656168134381 -1.6066329915003381
		-1.1360610831679177 3.0378656168134381 -1.1360610831679177
		-1.6066329915003381 3.0378656168134381 -4.6267498540226579e-16
		-1.1360610831679181 3.0378656168134381 1.1360610831679177
		-5.4100759477712592e-16 3.0378656168134381 1.6066329915003386
		1.1360610831679172 3.0378656168134381 1.1360610831679179
		1.6066329915003381 3.0378656168134381 9.0101571543032163e-16
		1.1360610831679188 3.0378656168134381 -1.136061083167917
		-1.8330086279573731e-16 3.0378656168134381 -1.6066329915003381
		-1.1360610831679177 3.0378656168134381 -1.1360610831679177
		;
createNode parentConstraint -n "Ultimate_Walker_Rig1:CTRL_Main_Grp_pConst" -p "Ultimate_Walker_Rig1:CTRL_Main_Grp";
	rename -uid "7142DF34-4BB1-55F6-139E-19AACBD91DD4";
	addAttr -ci true -sn "w0" -ln "AniM_ballW0" -dv 1 -min 0 -at "double";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0 1.7763568394002503e-15 8.8817841970012563e-16 ;
	setAttr -k off ".int";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "94C7E352-49A6-727C-5CCA-0D905C4A3F9C";
	setAttr -s 4 ".lnk";
	setAttr -s 4 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "C1C85B49-408C-7331-264F-AD85460280FB";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "0F2231AF-4C4F-628E-5EB9-278182511FEB";
createNode displayLayerManager -n "layerManager";
	rename -uid "E06E6903-4371-4552-4D6B-789F6BA48B13";
createNode displayLayer -n "defaultLayer";
	rename -uid "75E8A904-4FFD-C41B-4F50-7F80DDF36A76";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "9D32D473-4044-5F3A-A6CD-06A9F25C9BEB";
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
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 656\n            -height 236\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n"
		+ "            -shadows 0\n            -captureSequenceNumber -1\n            -width 1319\n            -height 517\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n"
		+ "            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n"
		+ "            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n"
		+ "            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 656\n            -height 236\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n"
		+ "        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 656\n            -height 236\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
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
		+ "                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Side View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Side View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera side` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1319\\n    -height 517\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Side View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera side` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1319\\n    -height 517\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "7BC12E70-4340-A40B-D3B5-A1AA7952E915";
	setAttr ".b" -type "string" "playbackOptions -min 76 -max 96 -ast 0 -aet 200 ";
	setAttr ".st" 6;
createNode animCurveTL -n "CTRL_Main_translateY";
	rename -uid "0B37EFC8-4C55-765A-6B26-6F963D8EAD25";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  1 -0.13441104219708588 4 -0.25042991905451384
		 7 -0.098536672764713895 10 0.024843030562707646 13 -0.134 16 -0.25 19 -0.029 22 -0.010085326558387474
		 25 -0.134 26 0 29 -0.38427397818152143 32 -0.088678610349581355 39 0.44339305174790988
		 43 0.88083694168524995 50 0 51 -0.28890126858226983 57 -0.12576447436530502 63 -0.27760325410607578
		 69 -0.12576447436530502 75 -0.28890126858226983 76 0 77 -0.13599566416181474 80 -0.31304063209731936
		 88 0.0095451694896135919 92 0.10231139688061736 95 -0.20972045888912172;
	setAttr -s 26 ".kit[0:25]"  9 9 9 9 9 9 9 9 
		9 18 18 18 18 9 18 18 18 10 2 1 18 18 18 18 18 
		18;
	setAttr -s 26 ".kot[0:25]"  9 9 9 9 9 9 9 9 
		9 18 18 18 18 9 5 18 18 10 2 1 18 18 18 18 18 
		18;
	setAttr -s 26 ".kix[19:25]"  1 1 0.46995512999591621 1 0.76921501370565959 
		1 1;
	setAttr -s 26 ".kiy[19:25]"  0 0 -0.88269030570779539 0 0.63899003332587423 
		0 0;
	setAttr -s 26 ".kox[19:25]"  1 1 0.46995512999591615 1 0.76921501370565959 
		1 1;
	setAttr -s 26 ".koy[19:25]"  0 0 -0.88269030570779539 0 0.63899003332587423 
		0 0;
createNode animCurveTU -n "walker_rt_heel_ik_ctrl_footRoll";
	rename -uid "48AE718E-42BA-A96F-A161-338F31FFFC8A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  1 -22.1 4 0 7 0 10 23.900000000000002 13 30.8
		 16 51.8 19 51.8 22 -5.6 23 -14.129629629629834 25 -22.1 26 0 35 27 39 52.1 43 50
		 50 0 51 0 76 0 77 92.300000000000011 80 92.300000000000011 83 53.000000000000007
		 86 30.600000000000009 89 0.40000000000000924 92 -24.399999999999991 95 -24.399999999999991;
	setAttr -s 24 ".kit[0:23]"  9 9 9 9 9 9 9 9 
		18 9 9 18 18 9 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 24 ".kot[0:23]"  9 9 9 9 9 9 9 9 
		18 5 9 18 18 9 18 5 18 18 18 18 18 18 18 18;
createNode animCurveTU -n "walker_rt_heel_ik_ctrl_footBreak";
	rename -uid "18B282E0-47D5-2747-2F0E-93AB47478A34";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  1 55 4 55 7 55 10 55 13 55 16 55 17 0 19 0
		 20 -18.1 22 0 23 1.6088888888889041 25 0 26 0 35 18 39 20 43 -10 50 0 51 0 76 0 77 0
		 80 0 83 -32 86 -15.400000000000002 89 2.2999999999999972 92 2.2999999999999972 95 2.2999999999999972;
	setAttr -s 26 ".kit[0:25]"  9 9 9 9 9 9 18 9 
		18 9 18 9 9 18 18 9 18 18 18 18 18 18 18 18 18 
		18;
	setAttr -s 26 ".kot[0:25]"  9 9 9 9 9 9 18 9 
		18 9 18 5 9 18 18 9 18 5 18 18 18 18 18 18 18 
		18;
createNode animCurveTL -n "walker_rt_heel_ik_ctrl_translateY";
	rename -uid "73F84650-4604-19A4-ACE8-7DADE9EE1128";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  1 -0.032844329404068111 4 -0.032844329404068111
		 7 -0.032844329404068111 10 -0.032844329404068111 13 0.014 16 0.014 17 0.044866278916252972
		 19 0.424 20 0.34651464858356495 22 0.561 23 0.41726536457034968 25 -0.033 26 0 35 -0.021666382258401375
		 39 0.0075924476607645008 43 0.029164570402022694 50 0 51 0 76 0 77 0.7917061537077188
		 80 0.34305436932731759 83 0.0075559783555587678 86 0.015989271754740964 89 0.64005298329422022
		 92 0.6569195700925845 95 -0.1442433028297192;
	setAttr -s 26 ".kit[0:25]"  9 9 9 9 9 9 18 9 
		18 9 18 9 9 18 18 9 18 18 18 18 18 18 18 18 18 
		18;
	setAttr -s 26 ".kot[0:25]"  9 9 9 9 9 9 18 9 
		18 9 18 5 9 18 18 9 18 5 18 18 18 18 18 18 18 
		18;
createNode animCurveTL -n "walker_rt_heel_ik_ctrl_translateZ";
	rename -uid "382DB072-4054-C6D7-19EF-C0BE0DC2FF33";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 25 ".ktv[0:24]"  1 0.93162235471218269 4 0.61918437823016181
		 7 0.083354264633682618 10 -0.60649351910422 13 -1.048 16 -1.182 17 -1.3389538407884312
		 19 -0.674 20 0.065355093640077133 22 1.2469971625518974 23 1.3032964725313483 25 0.932
		 26 0 35 -0.15559340228506593 43 -0.24076444278650344 50 0 51 0.3095097969773008 76 0
		 77 -2.6150153509022762 80 -2.2189708712574845 83 -0.9868663401479203 86 0.5564263519024133
		 89 1.3069894644296274 92 1.5937214400018196 95 1.2563897040345338;
	setAttr -s 25 ".kit[0:24]"  9 9 9 9 9 9 18 9 
		18 9 18 9 9 18 9 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 25 ".kot[0:24]"  9 9 9 9 9 9 18 9 
		18 9 18 5 9 18 9 18 5 18 18 18 18 18 18 18 18;
createNode animCurveTL -n "CTRL_Main_translateX";
	rename -uid "C7066CC4-4330-BCC2-3DFA-04B1569F5066";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  1 0 4 0 7 0 10 0 13 0 16 0 19 0 22 0 25 0
		 26 0 50 0 77 0 80 0 88 0 92 1.1102230246251565e-16 95 0;
	setAttr -s 16 ".kit[9:15]"  18 18 18 18 18 18 18;
	setAttr -s 16 ".kot[9:15]"  18 5 18 18 18 18 18;
createNode animCurveTL -n "CTRL_Main_translateZ";
	rename -uid "CDE1AEBB-4EFA-9CE4-A0EE-C19D62F27567";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  1 0 4 -0.17789193708877143 7 0 10 0.077341376934980999
		 13 0 16 -0.178 19 0 22 0.077 25 0 26 0 29 -0.20691675748235738 32 -0.38427397818152098
		 39 -0.384 43 -0.384 50 0 51 0.31025855742687075 57 0.15885788621776969 63 -0.043595762190537624
		 69 0.1891489825884945 75 0.31025855742687075 76 0 77 0 80 0 88 0 92 0 95 0;
	setAttr -s 26 ".kit[0:25]"  9 9 9 9 9 9 9 9 
		9 18 18 18 18 9 18 18 18 10 2 1 18 18 18 18 18 
		18;
	setAttr -s 26 ".kot[0:25]"  9 9 9 9 9 9 9 9 
		9 18 18 18 18 9 5 18 18 10 2 1 18 18 18 18 18 
		18;
	setAttr -s 26 ".kix[19:25]"  1 1 1 1 1 1 1;
	setAttr -s 26 ".kiy[19:25]"  0 0 0 0 0 0 0;
	setAttr -s 26 ".kox[19:25]"  1 1 1 1 1 1 1;
	setAttr -s 26 ".koy[19:25]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "walker_lf_heel_ik_ctrl_translateX";
	rename -uid "6C08E794-44CF-8039-514E-FA8D32038BE7";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 39 ".ktv[0:38]"  1 0 4 0 7 0 10 0 13 0 16 -1.4411479270790191e-17
		 19 0 22 0 25 0 26 0 76 0 77 1.368320874953467e-16 80 -1.0355925473006278e-17 83 -1.3456741820824616e-16
		 86 -3.509236756523483e-16 89 -4.0049714333672777e-16 92 -7.092953167094224e-16 95 -6.561087265453485e-16
		 99 0 102 -1.307049462830552e-16 105 -7.5901357066490771e-17 108 0 111 0 114 0 117 0
		 120 1.751210174063348e-17 121 1.2989572881585577e-16 123 0 124 0 148 0 149 0 174 0
		 175 -5.4229162284539839e-16 178 -4.9379016241370094e-16 181 -3.4290087538987291e-16
		 184 -1.5390202984317852e-16 187 -6.1984558511725898e-17 190 -1.3789232136447329e-16
		 193 -6.8181241972273345e-17;
	setAttr -s 39 ".kit[10:38]"  18 18 18 18 18 18 18 18 
		9 9 9 9 9 9 9 9 18 9 9 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 39 ".kot[8:38]"  5 9 18 18 18 18 18 18 
		18 18 9 9 9 9 9 9 9 9 18 5 9 18 5 18 18 
		18 18 18 18 18 18;
createNode animCurveTL -n "walker_lf_heel_ik_ctrl_translateY";
	rename -uid "13D4F3E5-4F30-23A0-B6ED-2DB871DE2E28";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  1 0.01384857339934753 4 0.01384857339934753
		 5 -0.12826695488449441 7 0.42437690689486068 10 0.56052138375433547 13 -0.033 16 -0.033
		 19 -0.033 22 -0.033 25 0.014 26 0 35 -0.022 39 0.008 43 0.029 50 0 76 0 77 0 80 0
		 83 0 86 0 89 0 92 0.14336598778609644 95 0.45539784355583596 99 -0.032844329404068111
		 102 -0.032844329404068111 105 -0.032844329404068111 108 -0.032844329404068111 111 0.014
		 114 0.014 115 0.044866278916252972 117 0.424 118 0.34651464858356495 120 0.561 121 0.41726536457034968
		 123 -0.033 124 0 133 -0.021666382258401375 137 0.0075924476607645008 141 0.029164570402022694
		 148 0 149 0 174 0 175 0.7917061537077188 178 0.34305436932731759 181 0.0075559783555587678
		 184 0.015989271754740964 187 0.64005298329422022 190 0.6569195700925845 193 -0.1442433028297192;
	setAttr -s 49 ".kit[0:48]"  9 9 18 9 9 9 9 9 
		9 9 9 18 18 18 18 18 18 18 18 18 18 18 18 9 9 
		9 9 9 9 18 9 18 9 18 9 9 18 18 9 18 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 49 ".kot[0:48]"  9 9 18 9 9 9 9 9 
		9 5 9 18 18 18 18 18 18 18 18 18 18 18 18 9 9 
		9 9 9 9 18 9 18 9 18 5 9 18 18 9 18 5 18 
		18 18 18 18 18 18 18;
createNode animCurveTL -n "walker_lf_heel_ik_ctrl_translateZ";
	rename -uid "E4001EFD-400A-2C59-7AEA-66BA9EE83B26";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 48 ".ktv[0:47]"  1 -1.0483909399442253 4 -1.1822588747797187
		 5 -1.3924710652937988 7 -0.67356072240484344 10 1.1035140832048467 13 0.932 16 0.66232134129755604
		 19 -0.203 22 -0.606 25 -1.048 26 0 35 -0.156 43 -0.241 50 0 51 -0.57971942193949766
		 76 0 77 1.1173187860419396 80 0.82200334871733882 83 -0.19226046042110684 86 -1.0523774758326043
		 89 -1.4571755589933493 92 -2.165572204524651 95 -2.6378366348788509 99 0.93162235471218269
		 102 0.61918437823016181 105 0.083354264633682618 108 -0.60649351910422 111 -1.048
		 114 -1.182 115 -1.3389538407884312 117 -0.674 118 0.065355093640077133 120 1.2469971625518974
		 121 1.3032964725313483 123 0.932 124 0 133 -0.15559340228506593 141 -0.24076444278650344
		 148 0 149 0.3095097969773008 174 0 175 -2.6150153509022762 178 -2.2189708712574845
		 181 -0.9868663401479203 184 0.5564263519024133 187 1.3069894644296274 190 1.5937214400018196
		 193 1.2563897040345338;
	setAttr -s 48 ".kit[0:47]"  9 9 18 9 9 9 9 9 
		9 9 9 18 18 18 18 18 18 18 18 18 18 18 18 9 9 
		9 9 9 9 18 9 18 9 18 9 9 18 9 18 18 18 18 
		18 18 18 18 18 18;
	setAttr -s 48 ".kot[0:47]"  9 9 18 9 9 9 9 9 
		9 5 9 18 18 18 5 18 18 18 18 18 18 18 18 9 9 
		9 9 9 9 18 9 18 9 18 5 9 18 9 18 5 18 18 
		18 18 18 18 18 18;
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
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  1 0 4 -1.307049462830552e-16 7 -7.5901357066490771e-17
		 10 0 13 0 16 0 19 0 22 1.751210174063348e-17 23 1.2989572881585577e-16 25 0 26 0
		 50 0 51 0 76 0 77 -5.4229162284539839e-16 80 -4.9379016241370094e-16 83 -3.4290087538987291e-16
		 86 -1.5390202984317852e-16 89 -6.1984558511725898e-17 92 -1.3789232136447329e-16
		 95 -6.8181241972273345e-17;
	setAttr -s 21 ".kit[0:20]"  9 9 9 9 9 9 9 9 
		18 9 9 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 21 ".kot[0:20]"  9 9 9 9 9 9 9 9 
		18 5 9 18 5 18 18 18 18 18 18 18 18;
createNode animCurveTL -n "walker_rt_knee_pv_ctrl_translateX";
	rename -uid "9E6BBA20-4D4F-D09F-A56B-A5A5E6D854B9";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 7 0 10 0 13 0 16 0 19 0 22 0 25 0 86 4.6475125954105111e-17;
	setAttr -s 9 ".kit[8]"  18;
	setAttr -s 9 ".kot[8]"  18;
createNode animCurveTL -n "walker_rt_knee_pv_ctrl_translateY";
	rename -uid "E654CE8C-4BDF-386A-FFE4-63B33D62F856";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 7 0 10 0 13 0 16 0 19 0 22 0 25 0 86 0.15179928118527863;
	setAttr -s 9 ".kit[8]"  18;
	setAttr -s 9 ".kot[8]"  18;
createNode animCurveTL -n "walker_rt_knee_pv_ctrl_translateZ";
	rename -uid "A5ABA8C6-4FA4-D1AD-20B9-01BC9278EFB4";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 7 0 10 0 13 0 16 0 19 0 22 0 25 0 86 0.37949820296319636;
	setAttr -s 9 ".kit[8]"  18;
	setAttr -s 9 ".kot[8]"  18;
createNode animCurveTA -n "walker_rt_heel_ik_ctrl_rotateX";
	rename -uid "73DC0B27-425E-CEFD-3F27-33A359985121";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  1 0 4 0 7 0 10 0 13 0 16 0 19 0 22 0 23 0
		 25 0 26 0 50 0 51 0 76 0 77 0 80 0 83 0 86 0 89 0 92 0 95 0;
	setAttr -s 21 ".kit[0:20]"  9 9 9 9 9 9 9 9 
		18 9 9 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 21 ".kot[0:20]"  9 9 9 9 9 9 9 9 
		18 5 9 18 5 18 18 18 18 18 18 18 18;
createNode animCurveTA -n "walker_rt_heel_ik_ctrl_rotateY";
	rename -uid "4508D4E9-4998-3E3B-2AF2-3FBBDA8C957D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  1 0 4 0 7 0 10 0 13 0 16 0 19 0 22 0 23 0
		 25 0 26 0 50 0 51 0 76 0 77 0 80 0 83 0 86 0 89 0 92 0 95 0;
	setAttr -s 21 ".kit[0:20]"  9 9 9 9 9 9 9 9 
		18 9 9 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 21 ".kot[0:20]"  9 9 9 9 9 9 9 9 
		18 5 9 18 5 18 18 18 18 18 18 18 18;
createNode animCurveTA -n "walker_rt_heel_ik_ctrl_rotateZ";
	rename -uid "44E85017-4BF2-A93B-B48C-2D959AFDD086";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  1 0 4 0 7 0 10 0 13 0 16 0 19 0 22 0 23 0
		 25 0 26 0 50 0 51 0 76 0 77 0 80 0 83 0 86 0 89 0 92 0 95 0;
	setAttr -s 21 ".kit[0:20]"  9 9 9 9 9 9 9 9 
		18 9 9 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 21 ".kot[0:20]"  9 9 9 9 9 9 9 9 
		18 5 9 18 5 18 18 18 18 18 18 18 18;
createNode animCurveTU -n "walker_rt_heel_ik_ctrl_pvControl";
	rename -uid "11CA90B1-46B5-5BE6-FC2E-3FA8FC028C58";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  1 1 4 1 7 1 10 1 13 1 16 1 19 1 22 1 23 1
		 25 1 26 1 50 1 51 1 76 1 77 1 80 1 83 1 86 1 89 1 92 1 95 1;
	setAttr -s 21 ".kot[8:20]"  5 5 9 5 5 5 5 5 
		5 5 5 5 5;
createNode animCurveTU -n "walker_rt_heel_ik_ctrl_toeRoll";
	rename -uid "DD71F9DE-4D71-BB1D-4829-4DAD4233D80D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  1 0 4 0 7 0 10 0 13 0 16 0 19 0 22 0 23 0
		 25 0 26 0 50 0 51 0 76 0 77 0 80 0 83 0 86 0 89 0 92 0 95 0;
	setAttr -s 21 ".kit[0:20]"  9 9 9 9 9 9 9 9 
		18 9 9 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 21 ".kot[0:20]"  9 9 9 9 9 9 9 9 
		18 5 9 18 5 18 18 18 18 18 18 18 18;
createNode animCurveTU -n "walker_rt_heel_ik_ctrl_legTwist";
	rename -uid "23CF9780-4021-2E27-7894-9D9486EE532B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  1 0 4 0 7 0 10 0 13 0 16 0 19 0 22 0 23 0
		 25 0 26 0 50 0 51 0 76 0 77 0 80 0 83 0 86 0 89 0 92 0 95 0;
	setAttr -s 21 ".kit[0:20]"  9 9 9 9 9 9 9 9 
		18 9 9 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 21 ".kot[0:20]"  9 9 9 9 9 9 9 9 
		18 5 9 18 5 18 18 18 18 18 18 18 18;
createNode animCurveTU -n "walker_rt_heel_ik_ctrl_heelTwist";
	rename -uid "58426B22-4578-BC28-2B75-1F8E241BFBCC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  1 0 4 0 7 0 10 0 13 0 16 0 19 0 22 0 23 0
		 25 0 26 0 50 0 51 0 76 0 77 0 80 0 83 0 86 0 89 0 92 0 95 0;
	setAttr -s 21 ".kit[0:20]"  9 9 9 9 9 9 9 9 
		18 9 9 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 21 ".kot[0:20]"  9 9 9 9 9 9 9 9 
		18 5 9 18 5 18 18 18 18 18 18 18 18;
createNode animCurveTU -n "walker_rt_heel_ik_ctrl_ballTwist";
	rename -uid "C8C9E653-4CF2-8FAB-B23E-ABBBC5B4E139";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  1 0 4 0 7 0 10 0 13 0 16 0 19 0 22 0 23 0
		 25 0 26 0 50 0 51 0 76 0 77 0 80 0 83 0 86 0 89 0 92 0 95 0;
	setAttr -s 21 ".kit[0:20]"  9 9 9 9 9 9 9 9 
		18 9 9 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 21 ".kot[0:20]"  9 9 9 9 9 9 9 9 
		18 5 9 18 5 18 18 18 18 18 18 18 18;
createNode animCurveTU -n "walker_rt_heel_ik_ctrl_toeTwist";
	rename -uid "FE0BD51B-4E82-99DF-B31F-10AA54079681";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  1 0 4 0 7 0 10 0 13 0 16 0 19 0 22 0 23 0
		 25 0 26 0 50 0 51 0 76 0 77 0 80 0 83 0 86 0 89 0 92 0 95 0;
	setAttr -s 21 ".kit[0:20]"  9 9 9 9 9 9 9 9 
		18 9 9 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 21 ".kot[0:20]"  9 9 9 9 9 9 9 9 
		18 5 9 18 5 18 18 18 18 18 18 18 18;
createNode animCurveTU -n "walker_lf_foot_ctrl_ikFkBlend";
	rename -uid "1794548D-4C81-2D6A-6E86-8F8A6AC1EEB6";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  1 1 7 1 10 1 13 1 16 1 19 1 22 1 25 1 26 1
		 99 1 105 1 108 1 111 1 114 1 117 1 120 1 123 1 124 1;
	setAttr -s 18 ".kot[7:17]"  5 9 9 9 9 9 9 9 
		9 5 9;
createNode animCurveTA -n "walker_lf_heel_ik_ctrl_rotateX";
	rename -uid "C0DFBEBF-43EA-FA82-83F0-CC9C21627630";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 39 ".ktv[0:38]"  1 0 4 0 7 0 10 0 13 0 16 0 19 0 22 0 25 0
		 26 0 76 0 77 0 80 0 83 0 86 0 89 0 92 0 95 0 99 0 102 0 105 0 108 0 111 0 114 0 117 0
		 120 0 121 0 123 0 124 0 148 0 149 0 174 0 175 0 178 0 181 0 184 0 187 0 190 0 193 0;
	setAttr -s 39 ".kit[10:38]"  18 18 18 18 18 18 18 18 
		9 9 9 9 9 9 9 9 18 9 9 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 39 ".kot[8:38]"  5 9 18 18 18 18 18 18 
		18 18 9 9 9 9 9 9 9 9 18 5 9 18 5 18 18 
		18 18 18 18 18 18;
createNode animCurveTA -n "walker_lf_heel_ik_ctrl_rotateY";
	rename -uid "837B7F18-466F-9257-9037-3BA267F704E9";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 39 ".ktv[0:38]"  1 0 4 0 7 0 10 0 13 0 16 0 19 0 22 0 25 0
		 26 0 76 0 77 0 80 0 83 0 86 0 89 0 92 0 95 0 99 0 102 0 105 0 108 0 111 0 114 0 117 0
		 120 0 121 0 123 0 124 0 148 0 149 0 174 0 175 0 178 0 181 0 184 0 187 0 190 0 193 0;
	setAttr -s 39 ".kit[10:38]"  18 18 18 18 18 18 18 18 
		9 9 9 9 9 9 9 9 18 9 9 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 39 ".kot[8:38]"  5 9 18 18 18 18 18 18 
		18 18 9 9 9 9 9 9 9 9 18 5 9 18 5 18 18 
		18 18 18 18 18 18;
createNode animCurveTA -n "walker_lf_heel_ik_ctrl_rotateZ";
	rename -uid "371726A7-44FD-2A3E-E6E0-D1915C86EAF9";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 39 ".ktv[0:38]"  1 0 4 0 7 0 10 0 13 0 16 0 19 0 22 0 25 0
		 26 0 76 0 77 0 80 0 83 0 86 0 89 0 92 0 95 0 99 0 102 0 105 0 108 0 111 0 114 0 117 0
		 120 0 121 0 123 0 124 0 148 0 149 0 174 0 175 0 178 0 181 0 184 0 187 0 190 0 193 0;
	setAttr -s 39 ".kit[10:38]"  18 18 18 18 18 18 18 18 
		9 9 9 9 9 9 9 9 18 9 9 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 39 ".kot[8:38]"  5 9 18 18 18 18 18 18 
		18 18 9 9 9 9 9 9 9 9 18 5 9 18 5 18 18 
		18 18 18 18 18 18;
createNode animCurveTU -n "walker_lf_heel_ik_ctrl_pvControl";
	rename -uid "A59DE08B-4814-99DC-20BC-81A4D6EFCDC6";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 39 ".ktv[0:38]"  1 1 4 1 7 1 10 1 13 1 16 1 19 1 22 1 25 1
		 26 1 76 1 77 1 80 1 83 1 86 1 89 1 92 1 95 1 99 1 102 1 105 1 108 1 111 1 114 1 117 1
		 120 1 121 1 123 1 124 1 148 1 149 1 174 1 175 1 178 1 181 1 184 1 187 1 190 1 193 1;
	setAttr -s 39 ".kot[8:38]"  5 9 5 5 5 5 5 5 
		5 5 9 9 9 9 9 9 9 9 5 5 9 5 5 5 5 
		5 5 5 5 5 5;
createNode animCurveTU -n "walker_lf_heel_ik_ctrl_footRoll";
	rename -uid "05212895-441D-C69F-6A8A-22B2467A03AD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 46 ".ktv[0:45]"  1 30.800000000000004 4 51.800000000000004
		 7 51.800000000000004 10 -5.6 13 -22.1 16 0 19 0 22 23.9 25 30.8 26 0 35 27 39 52.1
		 43 50 50 0 76 0 77 -29.6 80 -1.1000000000000014 83 19.9 86 50.7 89 50.7 92 70.9 95 128.10000000000002
		 99 -22.1 102 0 105 0 108 23.900000000000002 111 30.8 114 51.8 117 51.8 120 -5.6 121 -14.129629629629834
		 123 -22.1 124 0 133 27 137 52.1 141 50 148 0 149 0 174 0 175 92.300000000000011 178 92.300000000000011
		 181 53.000000000000007 184 30.600000000000009 187 0.40000000000000924 190 -24.399999999999991
		 193 -24.399999999999991;
	setAttr -s 46 ".kit[0:45]"  9 9 9 9 9 9 9 9 
		9 9 18 18 18 18 18 18 18 18 18 18 18 18 9 9 9 
		9 9 9 9 9 18 9 9 18 18 9 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 46 ".kot[0:45]"  9 9 9 9 9 9 9 9 
		5 9 18 18 18 18 18 18 18 18 18 18 18 18 9 9 9 
		9 9 9 9 9 18 5 9 18 18 9 18 5 18 18 18 18 
		18 18 18 18;
createNode animCurveTU -n "walker_lf_heel_ik_ctrl_footBreak";
	rename -uid "82F4CAC7-4ADA-5DCD-75D6-9DABFD0F757F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 50 ".ktv[0:49]"  1 55 4 55 5 0 6 -11.8 7 0 10 0 13 0 16 0
		 19 55 22 55 25 55 26 0 35 18 39 20 43 -10 50 0 76 0 77 0 80 0 83 19.700000000000003
		 86 54.7 89 25.3 92 -2.5 95 -2.5 99 55 102 55 105 55 108 55 111 55 114 55 115 0 117 0
		 118 -18.1 120 0 121 1.6088888888889041 123 0 124 0 133 18 137 20 141 -10 148 0 149 0
		 174 0 175 0 178 0 181 -32 184 -15.400000000000002 187 2.2999999999999972 190 2.2999999999999972
		 193 2.2999999999999972;
	setAttr -s 50 ".kit[0:49]"  9 9 18 18 9 9 9 9 
		9 9 9 9 18 18 18 18 18 18 18 18 18 18 18 18 9 
		9 9 9 9 9 18 9 18 9 18 9 9 18 18 9 18 18 
		18 18 18 18 18 18 18 18;
	setAttr -s 50 ".kot[0:49]"  9 9 18 18 9 9 9 9 
		9 9 5 9 18 18 18 18 18 18 18 18 18 18 18 18 9 
		9 9 9 9 9 18 9 18 9 18 5 9 18 18 9 18 5 
		18 18 18 18 18 18 18 18;
createNode animCurveTU -n "walker_lf_heel_ik_ctrl_toeRoll";
	rename -uid "2B0E5906-4A35-D7AC-5B38-4C94062E95EA";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 39 ".ktv[0:38]"  1 0 4 0 7 0 10 0 13 0 16 0 19 0 22 0 25 0
		 26 0 76 0 77 0 80 0 83 0 86 0 89 0 92 0 95 0 99 0 102 0 105 0 108 0 111 0 114 0 117 0
		 120 0 121 0 123 0 124 0 148 0 149 0 174 0 175 0 178 0 181 0 184 0 187 0 190 0 193 0;
	setAttr -s 39 ".kit[10:38]"  18 18 18 18 18 18 18 18 
		9 9 9 9 9 9 9 9 18 9 9 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 39 ".kot[8:38]"  5 9 18 18 18 18 18 18 
		18 18 9 9 9 9 9 9 9 9 18 5 9 18 5 18 18 
		18 18 18 18 18 18;
createNode animCurveTU -n "walker_lf_heel_ik_ctrl_legTwist";
	rename -uid "D53A5C83-4D7C-E90C-8E02-B19653C93399";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 39 ".ktv[0:38]"  1 0 4 0 7 0 10 0 13 0 16 0 19 0 22 0 25 0
		 26 0 76 0 77 0 80 0 83 0 86 0 89 0 92 0 95 0 99 0 102 0 105 0 108 0 111 0 114 0 117 0
		 120 0 121 0 123 0 124 0 148 0 149 0 174 0 175 0 178 0 181 0 184 0 187 0 190 0 193 0;
	setAttr -s 39 ".kit[10:38]"  18 18 18 18 18 18 18 18 
		9 9 9 9 9 9 9 9 18 9 9 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 39 ".kot[8:38]"  5 9 18 18 18 18 18 18 
		18 18 9 9 9 9 9 9 9 9 18 5 9 18 5 18 18 
		18 18 18 18 18 18;
createNode animCurveTU -n "walker_lf_heel_ik_ctrl_heelTwist";
	rename -uid "09624902-4849-651A-770E-0E9944DFEFD6";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 39 ".ktv[0:38]"  1 0 4 0 7 0 10 0 13 0 16 0 19 0 22 0 25 0
		 26 0 76 0 77 0 80 0 83 0 86 0 89 0 92 0 95 0 99 0 102 0 105 0 108 0 111 0 114 0 117 0
		 120 0 121 0 123 0 124 0 148 0 149 0 174 0 175 0 178 0 181 0 184 0 187 0 190 0 193 0;
	setAttr -s 39 ".kit[10:38]"  18 18 18 18 18 18 18 18 
		9 9 9 9 9 9 9 9 18 9 9 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 39 ".kot[8:38]"  5 9 18 18 18 18 18 18 
		18 18 9 9 9 9 9 9 9 9 18 5 9 18 5 18 18 
		18 18 18 18 18 18;
createNode animCurveTU -n "walker_lf_heel_ik_ctrl_ballTwist";
	rename -uid "B098035A-4F23-08A0-9190-DA8F262BA85C";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 39 ".ktv[0:38]"  1 0 4 0 7 0 10 0 13 0 16 0 19 0 22 0 25 0
		 26 0 76 0 77 0 80 0 83 0 86 0 89 0 92 0 95 0 99 0 102 0 105 0 108 0 111 0 114 0 117 0
		 120 0 121 0 123 0 124 0 148 0 149 0 174 0 175 0 178 0 181 0 184 0 187 0 190 0 193 0;
	setAttr -s 39 ".kit[10:38]"  18 18 18 18 18 18 18 18 
		9 9 9 9 9 9 9 9 18 9 9 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 39 ".kot[8:38]"  5 9 18 18 18 18 18 18 
		18 18 9 9 9 9 9 9 9 9 18 5 9 18 5 18 18 
		18 18 18 18 18 18;
createNode animCurveTU -n "walker_lf_heel_ik_ctrl_toeTwist";
	rename -uid "B577B619-43A2-BEBD-9D92-E185046C7392";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 39 ".ktv[0:38]"  1 0 4 0 7 0 10 0 13 0 16 0 19 0 22 0 25 0
		 26 0 76 0 77 0 80 0 83 0 86 0 89 0 92 0 95 0 99 0 102 0 105 0 108 0 111 0 114 0 117 0
		 120 0 121 0 123 0 124 0 148 0 149 0 174 0 175 0 178 0 181 0 184 0 187 0 190 0 193 0;
	setAttr -s 39 ".kit[10:38]"  18 18 18 18 18 18 18 18 
		9 9 9 9 9 9 9 9 18 9 9 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 39 ".kot[8:38]"  5 9 18 18 18 18 18 18 
		18 18 9 9 9 9 9 9 9 9 18 5 9 18 5 18 18 
		18 18 18 18 18 18;
createNode animCurveTU -n "walker_rt_knee_pv_ctrl_rtLegIkCtrl";
	rename -uid "308251A5-4ED2-E7AB-7B3E-A4B9FC743745";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 7 0 10 0 13 0 16 0 19 0 22 0 25 0 86 0;
	setAttr -s 9 ".kit[8]"  18;
	setAttr -s 9 ".kot[8]"  18;
createNode animCurveTU -n "walker_rt_foot_ctrl_ikFkBlend";
	rename -uid "A6B9781B-4319-C8B6-1D29-718D29EF243E";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 1 7 1 10 1 13 1 16 1 19 1 22 1 25 1 26 1;
	setAttr -s 9 ".kot[7:8]"  5 9;
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
	setAttr -s 16 ".ktv[0:15]"  1 0 4 0 7 0 10 0 13 0 16 0 19 0 22 0 25 0
		 26 0 50 0 77 0 80 0 88 0 92 0 95 0;
	setAttr -s 16 ".kit[9:15]"  18 18 18 18 18 18 18;
	setAttr -s 16 ".kot[9:15]"  18 5 18 18 18 18 18;
createNode animCurveTA -n "CTRL_Main_rotateY";
	rename -uid "CA84F21F-4AFE-0E2E-224F-09856CC1DD59";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  1 0 4 0 7 0 10 0 13 0 16 0 19 0 22 0 25 0
		 26 0 50 0 77 0 80 0 88 0 92 0 95 0;
	setAttr -s 16 ".kit[9:15]"  18 18 18 18 18 18 18;
	setAttr -s 16 ".kot[9:15]"  18 5 18 18 18 18 18;
createNode animCurveTA -n "CTRL_Main_rotateZ";
	rename -uid "7BB4060E-4ADD-0F78-A819-6DB2E0F03D20";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  1 0 3 0 4 0 7 0 10 0 13 0 16 0 19 0 22 0
		 25 0 26 0 50 0 77 0 80 0 88 0 92 0 95 0;
	setAttr -s 17 ".kit[2:16]"  18 9 9 9 9 9 9 9 
		18 18 18 18 18 18 18;
	setAttr -s 17 ".kot[2:16]"  18 9 9 9 9 9 9 9 
		18 5 18 18 18 18 18;
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "9C182D3D-4162-3EC2-720A-3FBD95F01244";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -785.71425449280639 -85.714282308306153 ;
	setAttr ".tgi[0].vh" -type "double2" 757.14282705670462 86.904758451477079 ;
createNode animCurveTL -n "pasted__walker_rt_heel_ik_ctrl_translateX";
	rename -uid "0BEE4C7F-4F9B-7952-BF28-68B396D569BB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  1 0 4 -1.307049462830552e-16 7 -7.5901357066490771e-17
		 10 0 13 0 16 0 19 0 22 1.751210174063348e-17 23 1.2989572881585577e-16 25 0 26 0
		 50 0 51 0 76 0 77 -5.4229162284539839e-16 80 -4.9379016241370094e-16 83 -3.4290087538987291e-16
		 86 -1.5390202984317852e-16 89 -6.1984558511725898e-17 92 -1.3789232136447329e-16
		 95 -6.8181241972273345e-17;
	setAttr -s 21 ".kit[0:20]"  9 9 9 9 9 9 9 9 
		18 9 9 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 21 ".kot[0:20]"  9 9 9 9 9 9 9 9 
		18 5 9 18 5 18 18 18 18 18 18 18 18;
createNode animCurveTL -n "pasted__walker_rt_heel_ik_ctrl_translateY";
	rename -uid "83E977BC-4D2E-1569-F468-7AB3BF12444A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  1 -0.032844329404068111 4 -0.032844329404068111
		 7 -0.032844329404068111 10 -0.032844329404068111 13 0.014 16 0.014 17 0.044866278916252972
		 19 0.424 20 0.34651464858356495 22 0.561 23 0.41726536457034968 25 -0.033 26 0 35 -0.021666382258401375
		 39 0.0075924476607645008 43 0.029164570402022694 50 0 51 0 76 0 77 0.7917061537077188
		 80 0.34305436932731759 83 0.0075559783555587678 86 0.015989271754740964 89 0.64005298329422022
		 92 0.6569195700925845 95 -0.1442433028297192;
	setAttr -s 26 ".kit[0:25]"  9 9 9 9 9 9 18 9 
		18 9 18 9 9 18 18 9 18 18 18 18 18 18 18 18 18 
		18;
	setAttr -s 26 ".kot[0:25]"  9 9 9 9 9 9 18 9 
		18 9 18 5 9 18 18 9 18 5 18 18 18 18 18 18 18 
		18;
createNode animCurveTL -n "pasted__walker_rt_heel_ik_ctrl_translateZ";
	rename -uid "3345D1F0-4789-7F15-DE3E-01A433B0B662";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 25 ".ktv[0:24]"  1 0.93162235471218269 4 0.61918437823016181
		 7 0.083354264633682618 10 -0.60649351910422 13 -1.048 16 -1.182 17 -1.3389538407884312
		 19 -0.674 20 0.065355093640077133 22 1.2469971625518974 23 1.3032964725313483 25 0.932
		 26 0 35 -0.15559340228506593 43 -0.24076444278650344 50 0 51 0.3095097969773008 76 0
		 77 -2.6150153509022762 80 -2.2189708712574845 83 -0.9868663401479203 86 0.5564263519024133
		 89 1.3069894644296274 92 1.5937214400018196 95 1.2563897040345338;
	setAttr -s 25 ".kit[0:24]"  9 9 9 9 9 9 18 9 
		18 9 18 9 9 18 9 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 25 ".kot[0:24]"  9 9 9 9 9 9 18 9 
		18 9 18 5 9 18 9 18 5 18 18 18 18 18 18 18 18;
createNode animCurveTA -n "pasted__walker_rt_heel_ik_ctrl_rotateX";
	rename -uid "D355DD79-4E87-4D3E-3EE7-7299D6041877";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  1 0 4 0 7 0 10 0 13 0 16 0 19 0 22 0 23 0
		 25 0 26 0 50 0 51 0 76 0 77 0 80 0 83 0 86 0 89 0 92 0 95 0;
	setAttr -s 21 ".kit[0:20]"  9 9 9 9 9 9 9 9 
		18 9 9 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 21 ".kot[0:20]"  9 9 9 9 9 9 9 9 
		18 5 9 18 5 18 18 18 18 18 18 18 18;
createNode animCurveTA -n "pasted__walker_rt_heel_ik_ctrl_rotateY";
	rename -uid "FA5C5374-4589-E7BC-1F89-FE99A8A5B25F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  1 0 4 0 7 0 10 0 13 0 16 0 19 0 22 0 23 0
		 25 0 26 0 50 0 51 0 76 0 77 0 80 0 83 0 86 0 89 0 92 0 95 0;
	setAttr -s 21 ".kit[0:20]"  9 9 9 9 9 9 9 9 
		18 9 9 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 21 ".kot[0:20]"  9 9 9 9 9 9 9 9 
		18 5 9 18 5 18 18 18 18 18 18 18 18;
createNode animCurveTA -n "pasted__walker_rt_heel_ik_ctrl_rotateZ";
	rename -uid "DE761D03-435E-69B4-176B-19B96B27C626";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  1 0 4 0 7 0 10 0 13 0 16 0 19 0 22 0 23 0
		 25 0 26 0 50 0 51 0 76 0 77 0 80 0 83 0 86 0 89 0 92 0 95 0;
	setAttr -s 21 ".kit[0:20]"  9 9 9 9 9 9 9 9 
		18 9 9 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 21 ".kot[0:20]"  9 9 9 9 9 9 9 9 
		18 5 9 18 5 18 18 18 18 18 18 18 18;
createNode animCurveTU -n "pasted__walker_rt_heel_ik_ctrl_pvControl";
	rename -uid "0AFF7418-4C4F-3796-6065-D48D273AA5DF";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  1 1 4 1 7 1 10 1 13 1 16 1 19 1 22 1 23 1
		 25 1 26 1 50 1 51 1 76 1 77 1 80 1 83 1 86 1 89 1 92 1 95 1;
	setAttr -s 21 ".kot[8:20]"  5 5 9 5 5 5 5 5 
		5 5 5 5 5;
createNode animCurveTU -n "pasted__walker_rt_heel_ik_ctrl_footRoll";
	rename -uid "30F164B7-47AB-C906-C0A3-0DB79F3C59C0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  1 -22.1 4 0 7 0 10 23.900000000000002 13 30.8
		 16 51.8 19 51.8 22 -5.6 23 -14.129629629629834 25 -22.1 26 0 35 27 39 52.1 43 50
		 50 0 51 0 76 0 77 92.300000000000011 80 92.300000000000011 83 53.000000000000007
		 86 30.600000000000009 89 0.40000000000000924 92 -24.399999999999991 95 -24.399999999999991;
	setAttr -s 24 ".kit[0:23]"  9 9 9 9 9 9 9 9 
		18 9 9 18 18 9 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 24 ".kot[0:23]"  9 9 9 9 9 9 9 9 
		18 5 9 18 18 9 18 5 18 18 18 18 18 18 18 18;
createNode animCurveTU -n "pasted__walker_rt_heel_ik_ctrl_footBreak";
	rename -uid "510411FA-4A6A-16CB-56D3-4A9BF45655B1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  1 55 4 55 7 55 10 55 13 55 16 55 17 0 19 0
		 20 -18.1 22 0 23 1.6088888888889041 25 0 26 0 35 18 39 20 43 -10 50 0 51 0 76 0 77 0
		 80 0 83 -32 86 -15.400000000000002 89 2.2999999999999972 92 2.2999999999999972 95 2.2999999999999972;
	setAttr -s 26 ".kit[0:25]"  9 9 9 9 9 9 18 9 
		18 9 18 9 9 18 18 9 18 18 18 18 18 18 18 18 18 
		18;
	setAttr -s 26 ".kot[0:25]"  9 9 9 9 9 9 18 9 
		18 9 18 5 9 18 18 9 18 5 18 18 18 18 18 18 18 
		18;
createNode animCurveTU -n "pasted__walker_rt_heel_ik_ctrl_toeRoll";
	rename -uid "6571A3D6-4C63-68A6-4B79-80A6D5DF33EE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  1 0 4 0 7 0 10 0 13 0 16 0 19 0 22 0 23 0
		 25 0 26 0 50 0 51 0 76 0 77 0 80 0 83 0 86 0 89 0 92 0 95 0;
	setAttr -s 21 ".kit[0:20]"  9 9 9 9 9 9 9 9 
		18 9 9 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 21 ".kot[0:20]"  9 9 9 9 9 9 9 9 
		18 5 9 18 5 18 18 18 18 18 18 18 18;
createNode animCurveTU -n "pasted__walker_rt_heel_ik_ctrl_legTwist";
	rename -uid "3C2A1C34-4519-0FB6-FCC6-E5825EF47CF7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  1 0 4 0 7 0 10 0 13 0 16 0 19 0 22 0 23 0
		 25 0 26 0 50 0 51 0 76 0 77 0 80 0 83 0 86 0 89 0 92 0 95 0;
	setAttr -s 21 ".kit[0:20]"  9 9 9 9 9 9 9 9 
		18 9 9 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 21 ".kot[0:20]"  9 9 9 9 9 9 9 9 
		18 5 9 18 5 18 18 18 18 18 18 18 18;
createNode animCurveTU -n "pasted__walker_rt_heel_ik_ctrl_heelTwist";
	rename -uid "F9534EF1-4ED9-502D-5B60-4F99340BB488";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  1 0 4 0 7 0 10 0 13 0 16 0 19 0 22 0 23 0
		 25 0 26 0 50 0 51 0 76 0 77 0 80 0 83 0 86 0 89 0 92 0 95 0;
	setAttr -s 21 ".kit[0:20]"  9 9 9 9 9 9 9 9 
		18 9 9 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 21 ".kot[0:20]"  9 9 9 9 9 9 9 9 
		18 5 9 18 5 18 18 18 18 18 18 18 18;
createNode animCurveTU -n "pasted__walker_rt_heel_ik_ctrl_ballTwist";
	rename -uid "3AD55D09-431A-45A1-F17C-8DA04D415476";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  1 0 4 0 7 0 10 0 13 0 16 0 19 0 22 0 23 0
		 25 0 26 0 50 0 51 0 76 0 77 0 80 0 83 0 86 0 89 0 92 0 95 0;
	setAttr -s 21 ".kit[0:20]"  9 9 9 9 9 9 9 9 
		18 9 9 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 21 ".kot[0:20]"  9 9 9 9 9 9 9 9 
		18 5 9 18 5 18 18 18 18 18 18 18 18;
createNode animCurveTU -n "pasted__walker_rt_heel_ik_ctrl_toeTwist";
	rename -uid "22A1AE02-4170-1C0C-3216-ACAFD0C3172F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  1 0 4 0 7 0 10 0 13 0 16 0 19 0 22 0 23 0
		 25 0 26 0 50 0 51 0 76 0 77 0 80 0 83 0 86 0 89 0 92 0 95 0;
	setAttr -s 21 ".kit[0:20]"  9 9 9 9 9 9 9 9 
		18 9 9 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 21 ".kot[0:20]"  9 9 9 9 9 9 9 9 
		18 5 9 18 5 18 18 18 18 18 18 18 18;
createNode condition -n "Ultimate_Walker_Rig1:walker_rt_legIkVis_cond";
	rename -uid "2B3C72B0-4483-6159-CFAF-719071BBE495";
	setAttr ".op" 2;
	setAttr ".ct" -type "float3" 1 0 0 ;
	setAttr ".cf" -type "float3" 0 1 1 ;
createNode blendColors -n "Ultimate_Walker_Rig1:walker_rt_legTrans_blend";
	rename -uid "76CFD9E6-409A-3B78-6990-388C7E2C4836";
createNode blendColors -n "Ultimate_Walker_Rig1:walker_rt_upLegSnapSplice_blend";
	rename -uid "9098CF32-4AF4-D460-D21A-EC9743D3434D";
createNode animCurveTL -n "pasted__walker_rt_knee_pv_ctrl_translateX";
	rename -uid "853FF6BE-4F41-23BB-3808-BFA9F806F15F";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 7 0 10 0 13 0 16 0 19 0 22 0 25 0 86 4.6475125954105111e-17;
	setAttr -s 9 ".kit[8]"  18;
	setAttr -s 9 ".kot[8]"  18;
createNode animCurveTL -n "pasted__walker_rt_knee_pv_ctrl_translateY";
	rename -uid "8B4210BD-4CAD-8DA8-DF30-0CB567D0E35E";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 7 0 10 0 13 0 16 0 19 0 22 0 25 0 86 0.15179928118527863;
	setAttr -s 9 ".kit[8]"  18;
	setAttr -s 9 ".kot[8]"  18;
createNode animCurveTL -n "pasted__walker_rt_knee_pv_ctrl_translateZ";
	rename -uid "9253AE23-412E-5C65-D050-1E91F95D6D68";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 7 0 10 0 13 0 16 0 19 0 22 0 25 0 86 0.37949820296319636;
	setAttr -s 9 ".kit[8]"  18;
	setAttr -s 9 ".kot[8]"  18;
createNode animCurveTU -n "pasted__walker_rt_knee_pv_ctrl_rtLegIkCtrl";
	rename -uid "5B56508D-43E2-2073-38AA-F495A54C5FC3";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 7 0 10 0 13 0 16 0 19 0 22 0 25 0 86 0;
	setAttr -s 9 ".kit[8]"  18;
	setAttr -s 9 ".kot[8]"  18;
createNode multiplyDivide -n "Ultimate_Walker_Rig1:walker_rt_armPvNegate_multDiv";
	rename -uid "9E5A0010-4EA4-CDF5-CE50-CC981E47519B";
	setAttr ".i2" -type "float3" -1 -1 0 ;
createNode animCurveTL -n "pasted__CTRL_Main_translateX";
	rename -uid "E880096B-419C-E686-3937-E8B5D32F62F2";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  1 0 4 0 7 0 10 0 13 0 16 0 19 0 22 0 25 0
		 26 0 50 0 77 0 80 0 88 0 92 1.1102230246251565e-16 95 0;
	setAttr -s 16 ".kit[9:15]"  18 18 18 18 18 18 18;
	setAttr -s 16 ".kot[9:15]"  18 5 18 18 18 18 18;
createNode animCurveTL -n "pasted__CTRL_Main_translateY";
	rename -uid "2795BB8D-4C92-8985-E0DE-61A5094171FD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  1 -0.13441104219708588 4 -0.25042991905451384
		 7 -0.098536672764713895 10 0.024843030562707646 13 -0.134 16 -0.25 19 -0.029 22 -0.010085326558387474
		 25 -0.134 26 0 29 -0.38427397818152143 32 -0.088678610349581355 39 0.44339305174790988
		 43 0.88083694168524995 50 0 51 -0.28890126858226983 57 -0.12576447436530502 63 -0.27760325410607578
		 69 -0.12576447436530502 75 -0.28890126858226983 76 0 77 -0.13599566416181474 80 -0.31304063209731936
		 88 0.0095451694896135919 92 0.10231139688061736 95 -0.20972045888912172;
	setAttr -s 26 ".kit[0:25]"  9 9 9 9 9 9 9 9 
		9 18 18 18 18 9 18 18 18 10 2 1 18 18 18 18 18 
		18;
	setAttr -s 26 ".kot[0:25]"  9 9 9 9 9 9 9 9 
		9 18 18 18 18 9 5 18 18 10 2 1 18 18 18 18 18 
		18;
	setAttr -s 26 ".kix[19:25]"  1 1 0.46995512999591621 1 0.76921501370565959 
		1 1;
	setAttr -s 26 ".kiy[19:25]"  0 0 -0.88269030570779539 0 0.63899003332587423 
		0 0;
	setAttr -s 26 ".kox[19:25]"  1 1 0.46995512999591615 1 0.76921501370565959 
		1 1;
	setAttr -s 26 ".koy[19:25]"  0 0 -0.88269030570779539 0 0.63899003332587423 
		0 0;
createNode animCurveTL -n "pasted__CTRL_Main_translateZ";
	rename -uid "1666528B-4A36-8BC9-5ED8-DAA2AFEC176C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  1 0 4 -0.17789193708877143 7 0 10 0.077341376934980999
		 13 0 16 -0.178 19 0 22 0.077 25 0 26 0 29 -0.20691675748235738 32 -0.38427397818152098
		 39 -0.384 43 -0.384 50 0 51 0.31025855742687075 57 0.15885788621776969 63 -0.043595762190537624
		 69 0.1891489825884945 75 0.31025855742687075 76 0 77 0 80 0 88 0 92 0 95 0;
	setAttr -s 26 ".kit[0:25]"  9 9 9 9 9 9 9 9 
		9 18 18 18 18 9 18 18 18 10 2 1 18 18 18 18 18 
		18;
	setAttr -s 26 ".kot[0:25]"  9 9 9 9 9 9 9 9 
		9 18 18 18 18 9 5 18 18 10 2 1 18 18 18 18 18 
		18;
	setAttr -s 26 ".kix[19:25]"  1 1 1 1 1 1 1;
	setAttr -s 26 ".kiy[19:25]"  0 0 0 0 0 0 0;
	setAttr -s 26 ".kox[19:25]"  1 1 1 1 1 1 1;
	setAttr -s 26 ".koy[19:25]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "pasted__CTRL_Main_rotateX";
	rename -uid "8C621D0B-41F6-51B4-FE2D-8CA5999459CB";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  1 0 4 0 7 0 10 0 13 0 16 0 19 0 22 0 25 0
		 26 0 50 0 77 0 80 0 88 0 92 0 95 0;
	setAttr -s 16 ".kit[9:15]"  18 18 18 18 18 18 18;
	setAttr -s 16 ".kot[9:15]"  18 5 18 18 18 18 18;
createNode animCurveTA -n "pasted__CTRL_Main_rotateY";
	rename -uid "3CC0DD78-4EA9-10B1-34F7-E9A7E2B7E992";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  1 0 4 0 7 0 10 0 13 0 16 0 19 0 22 0 25 0
		 26 0 50 0 77 0 80 0 88 0 92 0 95 0;
	setAttr -s 16 ".kit[9:15]"  18 18 18 18 18 18 18;
	setAttr -s 16 ".kot[9:15]"  18 5 18 18 18 18 18;
createNode animCurveTA -n "pasted__CTRL_Main_rotateZ";
	rename -uid "66160357-499E-3868-84CD-539A2986B8C7";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  1 0 3 0 4 0 7 0 10 0 13 0 16 0 19 0 22 0
		 25 0 26 0 50 0 77 0 80 0 88 0 92 0 95 0;
	setAttr -s 17 ".kit[2:16]"  18 9 9 9 9 9 9 9 
		18 18 18 18 18 18 18;
	setAttr -s 17 ".kot[2:16]"  18 9 9 9 9 9 9 9 
		18 5 18 18 18 18 18;
createNode animCurveUU -n "Ultimate_Walker_Rig1:CNT_Grp_visibility";
	rename -uid "D26665DE-4CA4-877C-58E2-39998301CA3E";
	setAttr ".tan" 9;
	setAttr -s 3 ".ktv[0:2]"  0 1 1 0 2 1;
	setAttr -s 3 ".kwl[0:2]" yes yes yes;
createNode blendColors -n "Ultimate_Walker_Rig1:walker_lf_legTrans_blend";
	rename -uid "D561675D-4243-58BD-2C5F-1CB1DC6659A2";
createNode animCurveTU -n "pasted__walker_lf_foot_ctrl_ikFkBlend";
	rename -uid "14AF8D31-42C2-B7A8-4C01-B4A3C47A1B3D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 1 7 1 10 1 13 1 16 1 19 1 22 1 25 1 26 1;
	setAttr -s 9 ".kot[7:8]"  5 9;
createNode blendColors -n "Ultimate_Walker_Rig1:walker_lf_upLegSnapSplice_blend";
	rename -uid "6C75EF69-456C-1A77-4BE2-7A925E773692";
createNode condition -n "Ultimate_Walker_Rig1:walker_lf_legIkVis_cond";
	rename -uid "0018E6CD-4FC9-832E-3461-12ADE9D6EE06";
	setAttr ".op" 2;
	setAttr ".ct" -type "float3" 1 0 0 ;
	setAttr ".cf" -type "float3" 0 1 1 ;
createNode animCurveTU -n "pasted__walker_lf_heel_ik_ctrl_pvControl";
	rename -uid "4696452B-4DBD-5ADC-5AA4-7DBB81C674EC";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  1 1 4 1 7 1 10 1 13 1 16 1 19 1 22 1 25 1
		 26 1 76 1 77 1 80 1 83 1 86 1 89 1 92 1 95 1;
	setAttr -s 18 ".kot[8:17]"  5 9 5 5 5 5 5 5 
		5 5;
createNode animCurveTU -n "pasted__walker_lf_heel_ik_ctrl_legTwist";
	rename -uid "C1844DE5-419B-1218-D26B-0584ED18F0C1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  1 0 4 0 7 0 10 0 13 0 16 0 19 0 22 0 25 0
		 26 0 76 0 77 0 80 0 83 0 86 0 89 0 92 0 95 0;
	setAttr -s 18 ".kit[10:17]"  18 18 18 18 18 18 18 18;
	setAttr -s 18 ".kot[8:17]"  5 9 18 18 18 18 18 18 
		18 18;
createNode animCurveTU -n "pasted__walker_lf_heel_ik_ctrl_heelTwist";
	rename -uid "7B314170-46F3-1D40-7AB9-02B03A1BAA73";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  1 0 4 0 7 0 10 0 13 0 16 0 19 0 22 0 25 0
		 26 0 76 0 77 0 80 0 83 0 86 0 89 0 92 0 95 0;
	setAttr -s 18 ".kit[10:17]"  18 18 18 18 18 18 18 18;
	setAttr -s 18 ".kot[8:17]"  5 9 18 18 18 18 18 18 
		18 18;
createNode animCurveTU -n "pasted__walker_lf_heel_ik_ctrl_ballTwist";
	rename -uid "434769B2-4933-9AEF-EAE5-A487441C18AF";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  1 0 4 0 7 0 10 0 13 0 16 0 19 0 22 0 25 0
		 26 0 76 0 77 0 80 0 83 0 86 0 89 0 92 0 95 0;
	setAttr -s 18 ".kit[10:17]"  18 18 18 18 18 18 18 18;
	setAttr -s 18 ".kot[8:17]"  5 9 18 18 18 18 18 18 
		18 18;
createNode animCurveTU -n "pasted__walker_lf_heel_ik_ctrl_toeTwist";
	rename -uid "BFF20C93-4CB5-110F-64CA-608809406564";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  1 0 4 0 7 0 10 0 13 0 16 0 19 0 22 0 25 0
		 26 0 76 0 77 0 80 0 83 0 86 0 89 0 92 0 95 0;
	setAttr -s 18 ".kit[10:17]"  18 18 18 18 18 18 18 18;
	setAttr -s 18 ".kot[8:17]"  5 9 18 18 18 18 18 18 
		18 18;
createNode animCurveTL -n "pasted__walker_lf_heel_ik_ctrl_translateX";
	rename -uid "8159DDBA-4852-D6E9-28A8-468BD3CD79D1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  1 0 4 0 7 0 10 0 13 0 16 -1.4411479270790191e-17
		 19 0 22 0 25 0 26 0 76 0 77 1.368320874953467e-16 80 -1.0355925473006278e-17 83 -1.3456741820824616e-16
		 86 -3.509236756523483e-16 89 -4.0049714333672777e-16 92 -7.092953167094224e-16 95 -6.561087265453485e-16;
	setAttr -s 18 ".kit[10:17]"  18 18 18 18 18 18 18 18;
	setAttr -s 18 ".kot[8:17]"  5 9 18 18 18 18 18 18 
		18 18;
createNode animCurveTL -n "pasted__walker_lf_heel_ik_ctrl_translateY";
	rename -uid "84E8EF63-4E5D-D612-A4EA-CDB456D426D5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  1 0.01384857339934753 4 0.01384857339934753
		 5 -0.12826695488449441 7 0.42437690689486068 10 0.56052138375433547 13 -0.033 16 -0.033
		 19 -0.033 22 -0.033 25 0.014 26 0 35 -0.022 39 0.008 43 0.029 50 0 76 0 77 0 80 0
		 83 0 86 0 89 0 92 0.14336598778609644 95 0.45539784355583596;
	setAttr -s 23 ".kit[0:22]"  9 9 18 9 9 9 9 9 
		9 9 9 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 23 ".kot[0:22]"  9 9 18 9 9 9 9 9 
		9 5 9 18 18 18 18 18 18 18 18 18 18 18 18;
createNode animCurveTL -n "pasted__walker_lf_heel_ik_ctrl_translateZ";
	rename -uid "6D66E507-49FE-C627-317E-91A0EB6DB3EA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  1 -1.0483909399442253 4 -1.1822588747797187
		 5 -1.3924710652937988 7 -0.67356072240484344 10 1.1035140832048467 13 0.932 16 0.66232134129755604
		 19 -0.203 22 -0.606 25 -1.048 26 0 35 -0.156 43 -0.241 50 0 51 -0.57971942193949766
		 76 0 77 1.1173187860419396 80 0.82200334871733882 83 -0.19226046042110684 86 -1.0523774758326043
		 89 -1.4571755589933493 92 -2.165572204524651 95 -2.6378366348788509;
	setAttr -s 23 ".kit[0:22]"  9 9 18 9 9 9 9 9 
		9 9 9 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 23 ".kot[0:22]"  9 9 18 9 9 9 9 9 
		9 5 9 18 18 18 5 18 18 18 18 18 18 18 18;
createNode animCurveTA -n "pasted__walker_lf_heel_ik_ctrl_rotateX";
	rename -uid "7CA4A16A-4396-364E-F3D1-859717181F92";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  1 0 4 0 7 0 10 0 13 0 16 0 19 0 22 0 25 0
		 26 0 76 0 77 0 80 0 83 0 86 0 89 0 92 0 95 0;
	setAttr -s 18 ".kit[10:17]"  18 18 18 18 18 18 18 18;
	setAttr -s 18 ".kot[8:17]"  5 9 18 18 18 18 18 18 
		18 18;
createNode animCurveTA -n "pasted__walker_lf_heel_ik_ctrl_rotateY";
	rename -uid "12F8F2E4-43D2-D334-0001-7491F3973F6D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  1 0 4 0 7 0 10 0 13 0 16 0 19 0 22 0 25 0
		 26 0 76 0 77 0 80 0 83 0 86 0 89 0 92 0 95 0;
	setAttr -s 18 ".kit[10:17]"  18 18 18 18 18 18 18 18;
	setAttr -s 18 ".kot[8:17]"  5 9 18 18 18 18 18 18 
		18 18;
createNode animCurveTA -n "pasted__walker_lf_heel_ik_ctrl_rotateZ";
	rename -uid "99C35DE1-49C6-AA1B-8C60-698EBDB9004E";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  1 0 4 0 7 0 10 0 13 0 16 0 19 0 22 0 25 0
		 26 0 76 0 77 0 80 0 83 0 86 0 89 0 92 0 95 0;
	setAttr -s 18 ".kit[10:17]"  18 18 18 18 18 18 18 18;
	setAttr -s 18 ".kot[8:17]"  5 9 18 18 18 18 18 18 
		18 18;
createNode clamp -n "Ultimate_Walker_Rig1:walker_lf_legStr_clamp";
	rename -uid "640DE799-4593-F495-5FCA-4EA6C8D9DCF7";
	setAttr ".mn" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "Ultimate_Walker_Rig1:walker_lf_legStrScalar_multDiv";
	rename -uid "9A79364C-4078-F360-A3B3-81B08B7BA698";
	setAttr ".op" 2;
createNode multiplyDivide -n "Ultimate_Walker_Rig1:walker_lf_legStrNum_multDiv";
	rename -uid "D4B738E0-4445-6362-086B-58AA3626DB2E";
createNode blendColors -n "Ultimate_Walker_Rig1:walker_lf_kneeSnapSplice_blend";
	rename -uid "80872306-4AD0-2E78-4151-7ABD1C90F936";
createNode unitConversion -n "Ultimate_Walker_Rig1:unitConversion4";
	rename -uid "C2EC2A1D-4B6D-CFB3-CE27-3CAC7F03C8C0";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "Ultimate_Walker_Rig1:unitConversion8";
	rename -uid "E2EFBFBB-4247-AB18-6BC4-AE950BA042D2";
	setAttr ".cf" 0.017453292519943295;
createNode plusMinusAverage -n "Ultimate_Walker_Rig1:walker_lf_ball_plsMns";
	rename -uid "5DC373E0-4A8B-ED97-91E1-F392F38C7267";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode clamp -n "Ultimate_Walker_Rig1:walker_lf_ball_clamp";
	rename -uid "8D215153-42AB-9F79-1401-A094D6B5E7AE";
createNode unitConversion -n "Ultimate_Walker_Rig1:unitConversion3";
	rename -uid "DB1948CE-4D0B-BF06-4E9B-86BC16FF2DCA";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "Ultimate_Walker_Rig1:unitConversion9";
	rename -uid "F3F4EB3A-4813-40C5-5CFB-24BF05799880";
	setAttr ".cf" 0.017453292519943295;
createNode plusMinusAverage -n "Ultimate_Walker_Rig1:walker_lf_toe2_plsMns";
	rename -uid "587C39FE-48CB-C30F-BAA8-9FB6148F5621";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode clamp -n "Ultimate_Walker_Rig1:walker_lf_toe_clamp";
	rename -uid "299BAAF4-458F-E983-C322-0D880CD890D9";
	setAttr ".mx" -type "float3" 90 0 0 ;
createNode plusMinusAverage -n "Ultimate_Walker_Rig1:walker_lf_toe_plsMns";
	rename -uid "5127045E-4367-38EF-E307-61AA0D0D4615";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode unitConversion -n "Ultimate_Walker_Rig1:unitConversion6";
	rename -uid "CE3A60A2-4D58-8A2F-9CF5-ECAD70F876EA";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "Ultimate_Walker_Rig1:unitConversion7";
	rename -uid "26B0DBC5-41A2-78F4-5F02-8B9C1D8754A7";
	setAttr ".cf" 0.017453292519943295;
createNode plusMinusAverage -n "Ultimate_Walker_Rig1:walker_lf_heel_plsMns";
	rename -uid "182FF168-4807-5C0E-6E66-9E9AB76B2F02";
	setAttr ".op" 2;
	setAttr -s 2 ".i1[0:1]"  0 0;
createNode clamp -n "Ultimate_Walker_Rig1:walker_lf_heel_clamp";
	rename -uid "53C945EC-4822-B48D-E1B7-E582B938CE25";
	setAttr ".mn" -type "float3" -50 0 0 ;
createNode multiplyDivide -n "Ultimate_Walker_Rig1:walker_lf_legStr_multDiv";
	rename -uid "1BFAD161-4EAA-9C4E-228D-D28342DAC0DC";
createNode plusMinusAverage -n "Ultimate_Walker_Rig1:walker_lf_legLowStr_plsMns";
	rename -uid "F6CACBEE-4642-A8D7-DD60-53A30EF8646B";
	setAttr -s 2 ".i1[1]"  0.87961686;
createNode multiplyDivide -n "Ultimate_Walker_Rig1:walker_lf_legRefStr_multDiv";
	rename -uid "352A3874-4C9B-27A2-953F-1A90F06A9CEE";
	setAttr ".i2" -type "float3" 0.98861313 0.87961686 1 ;
createNode plusMinusAverage -n "Ultimate_Walker_Rig1:walker_lf_legTotStrAmt_plsMns";
	rename -uid "5EC225B6-4779-BC87-5295-418EBF04BB1A";
	setAttr -s 2 ".i2";
	setAttr -s 2 ".i2";
createNode multiplyDivide -n "Ultimate_Walker_Rig1:walker_lf_legStrAtt_multDiv";
	rename -uid "F4DDFE11-4468-E093-0898-F5B1E899ED6E";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 10 10 10 ;
createNode plusMinusAverage -n "Ultimate_Walker_Rig1:walker_lf_legUpStr_plsMns";
	rename -uid "671EAFA8-481C-C64F-3221-ADB5E48CE376";
	setAttr -s 2 ".i1[1]"  0.98861313;
createNode plusMinusAverage -n "Ultimate_Walker_Rig1:walker_lf_legStrDenom_plsMns";
	rename -uid "8E171966-4AE0-8AA7-9980-5C8EBD940880";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode animCurveTU -n "pasted__walker_lf_heel_ik_ctrl_footRoll";
	rename -uid "90F462F2-40F2-7127-826B-B7B31950BBBF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  1 30.800000000000004 4 51.800000000000004
		 7 51.800000000000004 10 -5.6 13 -22.1 16 0 19 0 22 23.9 25 30.8 26 0 35 27 39 52.1
		 43 50 50 0 76 0 77 -29.6 80 -1.1000000000000014 83 19.9 86 50.7 89 50.7 92 70.9 95 128.10000000000002;
	setAttr -s 22 ".kit[0:21]"  9 9 9 9 9 9 9 9 
		9 9 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 22 ".kot[0:21]"  9 9 9 9 9 9 9 9 
		5 9 18 18 18 18 18 18 18 18 18 18 18 18;
createNode animCurveTU -n "pasted__walker_lf_heel_ik_ctrl_footBreak";
	rename -uid "F74BA4AD-4E60-BF9B-783E-8F9C39EA6225";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  1 55 4 55 5 0 6 -11.8 7 0 10 0 13 0 16 0
		 19 55 22 55 25 55 26 0 35 18 39 20 43 -10 50 0 76 0 77 0 80 0 83 19.700000000000003
		 86 54.7 89 25.3 92 -2.5 95 -2.5;
	setAttr -s 24 ".kit[0:23]"  9 9 18 18 9 9 9 9 
		9 9 9 9 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 24 ".kot[0:23]"  9 9 18 18 9 9 9 9 
		9 9 5 9 18 18 18 18 18 18 18 18 18 18 18 18;
createNode animCurveTU -n "pasted__walker_lf_heel_ik_ctrl_toeRoll";
	rename -uid "FDCFEEDF-432F-A7AD-D335-C2A8CBFB6852";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  1 0 4 0 7 0 10 0 13 0 16 0 19 0 22 0 25 0
		 26 0 76 0 77 0 80 0 83 0 86 0 89 0 92 0 95 0;
	setAttr -s 18 ".kit[10:17]"  18 18 18 18 18 18 18 18;
	setAttr -s 18 ".kot[8:17]"  5 9 18 18 18 18 18 18 
		18 18;
createNode animCurveTL -n "pasted__walker_lf_knee_pv_ctrl_translateX";
	rename -uid "60C5AE00-4266-24E0-EEAB-EBB55BD45F7B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 7 0 10 0 13 0 16 0 19 0 22 0 25 0;
createNode animCurveTL -n "pasted__walker_lf_knee_pv_ctrl_translateY";
	rename -uid "121381C8-4C35-569B-C272-0EB819DE41B6";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 7 0 10 0 13 0 16 0 19 0 22 0 25 0;
createNode animCurveTL -n "pasted__walker_lf_knee_pv_ctrl_translateZ";
	rename -uid "A9E9ECB1-4757-5EFA-2351-7C8D46BDAA5E";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 7 0 10 0 13 0 16 0 19 0 22 0 25 0;
createNode animCurveTU -n "pasted__walker_lf_knee_pv_ctrl_lfLegIkCtrl";
	rename -uid "594F6B46-47E4-27F6-79A3-C88E87423DF5";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 7 0 10 0 13 0 16 0 19 0 22 0 25 0;
createNode condition -n "Ultimate_Walker_Rig1:walker_lf_legFkVis_cond";
	rename -uid "349F670F-4078-9CCE-53D3-ED9091B0F0C5";
	setAttr ".op" 4;
	setAttr ".st" 1;
	setAttr ".ct" -type "float3" 1 0 0 ;
	setAttr ".cf" -type "float3" 0 1 1 ;
createNode plusMinusAverage -n "Ultimate_Walker_Rig1:walker_lf_upLeg_plsMns";
	rename -uid "7873A239-442F-A272-9609-CAB7BBFA19C7";
	setAttr ".op" 2;
	setAttr -s 2 ".i1[0:1]"  1 0;
createNode unitConversion -n "Ultimate_Walker_Rig1:unitConversion2";
	rename -uid "234C4FA4-4272-7A11-0D26-DF84FDCB5748";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "Ultimate_Walker_Rig1:unitConversion5";
	rename -uid "7AF29D7A-4AB5-7223-F1F0-E3ABDA10F083";
	setAttr ".cf" 0.017453292519943295;
createNode reverse -n "Ultimate_Walker_Rig1:walker_lf_legIkFkSwitch_reverse";
	rename -uid "55C2C1B9-43AF-5C3C-F4C0-7AB58C807C3F";
createNode unitConversion -n "Ultimate_Walker_Rig1:unitConversion11";
	rename -uid "0AD5B638-427C-7265-E8FB-1F861F5AEC82";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "Ultimate_Walker_Rig1:unitConversion14";
	rename -uid "592320B8-4235-C17B-3893-5DA60D862345";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "Ultimate_Walker_Rig1:unitConversion12";
	rename -uid "6E3E73C0-48C6-112A-CC10-D0BDDD064E71";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "Ultimate_Walker_Rig1:unitConversion18";
	rename -uid "A3AE043B-4F70-8031-8694-51B9C0140C4B";
	setAttr ".cf" 0.017453292519943295;
createNode plusMinusAverage -n "Ultimate_Walker_Rig1:walker_rt_toe2_plsMns";
	rename -uid "504F032A-4B64-561A-B072-A593063E3555";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode clamp -n "Ultimate_Walker_Rig1:walker_rt_toe_clamp";
	rename -uid "384E4F49-4C69-10BC-3669-30B61C1EF6A0";
	setAttr ".mx" -type "float3" 90 0 0 ;
createNode plusMinusAverage -n "Ultimate_Walker_Rig1:walker_rt_toe_plsMns";
	rename -uid "70B15652-4358-4BF1-41F3-B9987B17F88D";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode unitConversion -n "Ultimate_Walker_Rig1:unitConversion15";
	rename -uid "427BE690-4478-1483-5CD7-AAB6CACDFEAA";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "Ultimate_Walker_Rig1:unitConversion16";
	rename -uid "4CBB7840-4283-B378-6C0C-48BC34430957";
	setAttr ".cf" 0.017453292519943295;
createNode plusMinusAverage -n "Ultimate_Walker_Rig1:walker_rt_heel_plsMns";
	rename -uid "C32AA695-43E5-0561-D2E4-298AEF5FF590";
	setAttr ".op" 2;
	setAttr -s 2 ".i1[0:1]"  0 -24.39999962;
createNode clamp -n "Ultimate_Walker_Rig1:walker_rt_heel_clamp";
	rename -uid "7A8ED6CB-4AF3-25E1-CCEC-5ABF2572C2B5";
	setAttr ".mn" -type "float3" -50 0 0 ;
createNode condition -n "Ultimate_Walker_Rig1:walker_rt_legFkVis_cond";
	rename -uid "05F476BD-4E60-7B8C-2D10-BBA957CCBDF2";
	setAttr ".op" 4;
	setAttr ".st" 1;
	setAttr ".ct" -type "float3" 1 0 0 ;
	setAttr ".cf" -type "float3" 0 1 1 ;
createNode plusMinusAverage -n "Ultimate_Walker_Rig1:walker_rt_legLowStr_plsMns";
	rename -uid "122D1778-4111-2525-F1A6-F89BAE3D22A6";
	setAttr -s 2 ".i1[1]"  -0.87961322;
createNode multiplyDivide -n "Ultimate_Walker_Rig1:walker_rt_legRefStr_multDiv";
	rename -uid "A504824C-49ED-CF7E-E0C1-C0BCC7BBDC1A";
	setAttr ".i2" -type "float3" -0.98861998 -0.87961322 1 ;
createNode plusMinusAverage -n "Ultimate_Walker_Rig1:walker_rt_legTotStrAmt_plsMns";
	rename -uid "F26B0E00-40F5-40A6-EE9F-5FBF3D8423B9";
	setAttr -s 2 ".i2";
	setAttr -s 2 ".i2";
createNode multiplyDivide -n "Ultimate_Walker_Rig1:walker_rt_legStrAtt_multDiv";
	rename -uid "125B4D4B-4627-2393-0F7D-E18A3DCFFE46";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 10 10 10 ;
createNode plusMinusAverage -n "Ultimate_Walker_Rig1:walker_rt_legUpStr_plsMns";
	rename -uid "EEAD4E4F-476F-4ABC-B222-D0BB2D87445D";
	setAttr -s 2 ".i1[1]"  -0.98861998;
createNode plusMinusAverage -n "Ultimate_Walker_Rig1:walker_rt_upLeg_plsMns";
	rename -uid "8F28992E-4C68-43AB-AC19-8E80FB74B665";
	setAttr ".op" 2;
	setAttr -s 2 ".i1[0:1]"  1 0;
createNode reverse -n "Ultimate_Walker_Rig1:walker_rt_legIkFkSwitch_reverse";
	rename -uid "5B9D00BF-4550-5AC4-0E8A-4C87DC680729";
createNode unitConversion -n "Ultimate_Walker_Rig1:unitConversion13";
	rename -uid "ECACD6D1-459E-F712-E4DD-31956F975A89";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "Ultimate_Walker_Rig1:unitConversion17";
	rename -uid "AF0AB61F-444B-1A26-B0ED-E8B1B1A44D06";
	setAttr ".cf" 0.017453292519943295;
createNode plusMinusAverage -n "Ultimate_Walker_Rig1:walker_rt_ball_plsMns";
	rename -uid "3D36678B-4B2E-F081-452E-3C940B65756A";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode clamp -n "Ultimate_Walker_Rig1:walker_rt_ball_clamp";
	rename -uid "191B77B6-4D1A-888F-4A17-38A81AE2D167";
createNode blendColors -n "Ultimate_Walker_Rig1:walker_rt_kneeSnapSplice_blend";
	rename -uid "B79C00B1-4F56-663D-81F7-DAB3397B8FD3";
createNode multiplyDivide -n "Ultimate_Walker_Rig1:walker_rt_legStr_multDiv";
	rename -uid "B19F9D27-48CE-DE78-E70D-ABA2FA388417";
createNode clamp -n "Ultimate_Walker_Rig1:walker_rt_legStr_clamp";
	rename -uid "3855001A-4850-EBC0-00C3-8987B33EA654";
	setAttr ".mn" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "Ultimate_Walker_Rig1:walker_rt_legNegateTx_multDiv";
	rename -uid "66989E95-433E-C91F-1541-0D809D2F61B7";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode multiplyDivide -n "Ultimate_Walker_Rig1:walker_rt_legStrScalar_multDiv";
	rename -uid "7FFFF4F8-400B-D546-D5DE-3D94B21043A5";
	setAttr ".op" 2;
createNode multiplyDivide -n "Ultimate_Walker_Rig1:walker_rt_legStrNum_multDiv";
	rename -uid "D7D979F3-417C-E092-D51B-94BC67177518";
createNode plusMinusAverage -n "Ultimate_Walker_Rig1:walker_rt_legStrDenom_plsMns";
	rename -uid "8B933680-4399-4A24-8F1A-329FE55FE3B8";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode animCurveTU -n "pasted__walker_rt_foot_ctrl_ikFkBlend";
	rename -uid "784AD855-449B-C062-9705-7EB58AEE8E73";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 1 7 1 10 1 13 1 16 1 19 1 22 1 25 1 26 1;
	setAttr -s 9 ".kot[7:8]"  5 9;
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
select -ne :time1;
	setAttr ".o" 98;
	setAttr ".unw" 98;
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
connectAttr "Ultimate_Walker_Rig1:CTRL_Root.Global_Scale" "Ultimate_Walker_Rig1:CTRL_Root.sx"
		 -l on;
connectAttr "Ultimate_Walker_Rig1:CTRL_Root.Global_Scale" "Ultimate_Walker_Rig1:CTRL_Root.sy"
		 -l on;
connectAttr "Ultimate_Walker_Rig1:CTRL_Root.Global_Scale" "Ultimate_Walker_Rig1:CTRL_Root.sz"
		 -l on;
connectAttr "Ultimate_Walker_Rig1:Rig_Leg_grp_parentConstraint1.ctx" "Ultimate_Walker_Rig1:Rig_Leg_grp.tx"
		 -l on;
connectAttr "Ultimate_Walker_Rig1:Rig_Leg_grp_parentConstraint1.cty" "Ultimate_Walker_Rig1:Rig_Leg_grp.ty"
		 -l on;
connectAttr "Ultimate_Walker_Rig1:Rig_Leg_grp_parentConstraint1.ctz" "Ultimate_Walker_Rig1:Rig_Leg_grp.tz"
		 -l on;
connectAttr "Ultimate_Walker_Rig1:Rig_Leg_grp_parentConstraint1.crx" "Ultimate_Walker_Rig1:Rig_Leg_grp.rx"
		 -l on;
connectAttr "Ultimate_Walker_Rig1:Rig_Leg_grp_parentConstraint1.cry" "Ultimate_Walker_Rig1:Rig_Leg_grp.ry"
		 -l on;
connectAttr "Ultimate_Walker_Rig1:Rig_Leg_grp_parentConstraint1.crz" "Ultimate_Walker_Rig1:Rig_Leg_grp.rz"
		 -l on;
connectAttr "Ultimate_Walker_Rig1:CTRL_Root.Global_Scale" "Ultimate_Walker_Rig1:Rig_Leg_grp.sx"
		 -l on;
connectAttr "Ultimate_Walker_Rig1:CTRL_Root.Global_Scale" "Ultimate_Walker_Rig1:Rig_Leg_grp.sy"
		 -l on;
connectAttr "Ultimate_Walker_Rig1:CTRL_Root.Global_Scale" "Ultimate_Walker_Rig1:Rig_Leg_grp.sz"
		 -l on;
connectAttr "Ultimate_Walker_Rig1:walker_lf_reverseFoot_rig_grp_parentConstraint1.ctx" "Ultimate_Walker_Rig1:walker_lf_reverseFoot_rig_grp.tx"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_reverseFoot_rig_grp_parentConstraint1.cty" "Ultimate_Walker_Rig1:walker_lf_reverseFoot_rig_grp.ty"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_reverseFoot_rig_grp_parentConstraint1.ctz" "Ultimate_Walker_Rig1:walker_lf_reverseFoot_rig_grp.tz"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_reverseFoot_rig_grp_parentConstraint1.crx" "Ultimate_Walker_Rig1:walker_lf_reverseFoot_rig_grp.rx"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_reverseFoot_rig_grp_parentConstraint1.cry" "Ultimate_Walker_Rig1:walker_lf_reverseFoot_rig_grp.ry"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_reverseFoot_rig_grp_parentConstraint1.crz" "Ultimate_Walker_Rig1:walker_lf_reverseFoot_rig_grp.rz"
		;
connectAttr "Ultimate_Walker_Rig1:unitConversion6.o" "Ultimate_Walker_Rig1:walker_lf_heel_rev_rig_jnt.ry"
		;
connectAttr "Ultimate_Walker_Rig1:unitConversion7.o" "Ultimate_Walker_Rig1:walker_lf_heel_rev_rig_jnt.rz"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_foot_ctrl.ikVis" "Ultimate_Walker_Rig1:walker_lf_heel_rev_rig_jnt.v"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_heel_rev_rig_jnt.s" "Ultimate_Walker_Rig1:walker_lf_toe_rev_rig_jnt.is"
		;
connectAttr "Ultimate_Walker_Rig1:unitConversion3.o" "Ultimate_Walker_Rig1:walker_lf_toe_rev_rig_jnt.ry"
		;
connectAttr "Ultimate_Walker_Rig1:unitConversion9.o" "Ultimate_Walker_Rig1:walker_lf_toe_rev_rig_jnt.rx"
		;
connectAttr "Ultimate_Walker_Rig1:unitConversion4.o" "Ultimate_Walker_Rig1:walker_lf_ball_rev_rig_jnt.ry"
		;
connectAttr "Ultimate_Walker_Rig1:unitConversion8.o" "Ultimate_Walker_Rig1:walker_lf_ball_rev_rig_jnt.rz"
		;
connectAttr "Ultimate_Walker_Rig1:unitConversion2.o" "Ultimate_Walker_Rig1:walker_lf_ball_ik_jnt.rz"
		;
connectAttr "Ultimate_Walker_Rig1:unitConversion5.o" "Ultimate_Walker_Rig1:walker_lf_ball_ik_jnt.ry"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_reverseFoot_rig_grp.ro" "Ultimate_Walker_Rig1:walker_lf_reverseFoot_rig_grp_parentConstraint1.cro"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_reverseFoot_rig_grp.pim" "Ultimate_Walker_Rig1:walker_lf_reverseFoot_rig_grp_parentConstraint1.cpim"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_reverseFoot_rig_grp.rp" "Ultimate_Walker_Rig1:walker_lf_reverseFoot_rig_grp_parentConstraint1.crp"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_reverseFoot_rig_grp.rpt" "Ultimate_Walker_Rig1:walker_lf_reverseFoot_rig_grp_parentConstraint1.crt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_heel_ik_ctrl.t" "Ultimate_Walker_Rig1:walker_lf_reverseFoot_rig_grp_parentConstraint1.tg[0].tt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_heel_ik_ctrl.rp" "Ultimate_Walker_Rig1:walker_lf_reverseFoot_rig_grp_parentConstraint1.tg[0].trp"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_heel_ik_ctrl.rpt" "Ultimate_Walker_Rig1:walker_lf_reverseFoot_rig_grp_parentConstraint1.tg[0].trt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_heel_ik_ctrl.r" "Ultimate_Walker_Rig1:walker_lf_reverseFoot_rig_grp_parentConstraint1.tg[0].tr"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_heel_ik_ctrl.ro" "Ultimate_Walker_Rig1:walker_lf_reverseFoot_rig_grp_parentConstraint1.tg[0].tro"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_heel_ik_ctrl.s" "Ultimate_Walker_Rig1:walker_lf_reverseFoot_rig_grp_parentConstraint1.tg[0].ts"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_heel_ik_ctrl.pm" "Ultimate_Walker_Rig1:walker_lf_reverseFoot_rig_grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_reverseFoot_rig_grp_parentConstraint1.w0" "Ultimate_Walker_Rig1:walker_lf_reverseFoot_rig_grp_parentConstraint1.tg[0].tw"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_legFK_Grp_parentConstraint1.ctx" "Ultimate_Walker_Rig1:walker_lf_legFK_Grp.tx"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_legFK_Grp_parentConstraint1.cty" "Ultimate_Walker_Rig1:walker_lf_legFK_Grp.ty"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_legFK_Grp_parentConstraint1.ctz" "Ultimate_Walker_Rig1:walker_lf_legFK_Grp.tz"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_legFK_Grp_parentConstraint1.crx" "Ultimate_Walker_Rig1:walker_lf_legFK_Grp.rx"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_legFK_Grp_parentConstraint1.cry" "Ultimate_Walker_Rig1:walker_lf_legFK_Grp.ry"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_legFK_Grp_parentConstraint1.crz" "Ultimate_Walker_Rig1:walker_lf_legFK_Grp.rz"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_upLeg_fk_jnt_parentConstraint1.ctx" "Ultimate_Walker_Rig1:walker_lf_upLeg_fk_jnt.tx"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_upLeg_fk_jnt_parentConstraint1.cty" "Ultimate_Walker_Rig1:walker_lf_upLeg_fk_jnt.ty"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_upLeg_fk_jnt_parentConstraint1.ctz" "Ultimate_Walker_Rig1:walker_lf_upLeg_fk_jnt.tz"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_upLeg_fk_jnt_parentConstraint1.crx" "Ultimate_Walker_Rig1:walker_lf_upLeg_fk_jnt.rx"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_upLeg_fk_jnt_parentConstraint1.cry" "Ultimate_Walker_Rig1:walker_lf_upLeg_fk_jnt.ry"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_upLeg_fk_jnt_parentConstraint1.crz" "Ultimate_Walker_Rig1:walker_lf_upLeg_fk_jnt.rz"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_foot_ctrl.fkVis" "Ultimate_Walker_Rig1:walker_lf_upLeg_fk_jnt.v"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_legUpStr_plsMns.o1" "Ultimate_Walker_Rig1:walker_lf_knee_fk_jnt.tx"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_kneeCtrl_fk_or_cons.crx" "Ultimate_Walker_Rig1:walker_lf_knee_fk_jnt.rx"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_kneeCtrl_fk_or_cons.cry" "Ultimate_Walker_Rig1:walker_lf_knee_fk_jnt.ry"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_kneeCtrl_fk_or_cons.crz" "Ultimate_Walker_Rig1:walker_lf_knee_fk_jnt.rz"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_legLowStr_plsMns.o1" "Ultimate_Walker_Rig1:walker_lf_ankle_fk_jnt.tx"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_ankleCtrl_fk_or_cons.crx" "Ultimate_Walker_Rig1:walker_lf_ankle_fk_jnt.rx"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_ankleCtrl_fk_or_cons.cry" "Ultimate_Walker_Rig1:walker_lf_ankle_fk_jnt.ry"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_ankleCtrl_fk_or_cons.crz" "Ultimate_Walker_Rig1:walker_lf_ankle_fk_jnt.rz"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_ballCtrl_fk_or_cons.crx" "Ultimate_Walker_Rig1:walker_lf_ball_fk_jnt.rx"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_ballCtrl_fk_or_cons.cry" "Ultimate_Walker_Rig1:walker_lf_ball_fk_jnt.ry"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_ballCtrl_fk_or_cons.crz" "Ultimate_Walker_Rig1:walker_lf_ball_fk_jnt.rz"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_ball_fk_jnt.ro" "Ultimate_Walker_Rig1:walker_lf_ballCtrl_fk_or_cons.cro"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_ball_fk_jnt.pim" "Ultimate_Walker_Rig1:walker_lf_ballCtrl_fk_or_cons.cpim"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_ball_fk_jnt.jo" "Ultimate_Walker_Rig1:walker_lf_ballCtrl_fk_or_cons.cjo"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_ball_fk_ctrl.r" "Ultimate_Walker_Rig1:walker_lf_ballCtrl_fk_or_cons.tg[0].tr"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_ball_fk_ctrl.ro" "Ultimate_Walker_Rig1:walker_lf_ballCtrl_fk_or_cons.tg[0].tro"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_ball_fk_ctrl.pm" "Ultimate_Walker_Rig1:walker_lf_ballCtrl_fk_or_cons.tg[0].tpm"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_ballCtrl_fk_or_cons.w0" "Ultimate_Walker_Rig1:walker_lf_ballCtrl_fk_or_cons.tg[0].tw"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_ankle_fk_jnt.ro" "Ultimate_Walker_Rig1:walker_lf_ankleCtrl_fk_or_cons.cro"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_ankle_fk_jnt.pim" "Ultimate_Walker_Rig1:walker_lf_ankleCtrl_fk_or_cons.cpim"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_ankle_fk_jnt.jo" "Ultimate_Walker_Rig1:walker_lf_ankleCtrl_fk_or_cons.cjo"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_ankle_fk_ctrl.r" "Ultimate_Walker_Rig1:walker_lf_ankleCtrl_fk_or_cons.tg[0].tr"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_ankle_fk_ctrl.ro" "Ultimate_Walker_Rig1:walker_lf_ankleCtrl_fk_or_cons.tg[0].tro"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_ankle_fk_ctrl.pm" "Ultimate_Walker_Rig1:walker_lf_ankleCtrl_fk_or_cons.tg[0].tpm"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_ankleCtrl_fk_or_cons.w0" "Ultimate_Walker_Rig1:walker_lf_ankleCtrl_fk_or_cons.tg[0].tw"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_knee_fk_jnt.ro" "Ultimate_Walker_Rig1:walker_lf_kneeCtrl_fk_or_cons.cro"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_knee_fk_jnt.pim" "Ultimate_Walker_Rig1:walker_lf_kneeCtrl_fk_or_cons.cpim"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_knee_fk_jnt.jo" "Ultimate_Walker_Rig1:walker_lf_kneeCtrl_fk_or_cons.cjo"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_knee_fk_ctrl.r" "Ultimate_Walker_Rig1:walker_lf_kneeCtrl_fk_or_cons.tg[0].tr"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_knee_fk_ctrl.ro" "Ultimate_Walker_Rig1:walker_lf_kneeCtrl_fk_or_cons.tg[0].tro"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_knee_fk_ctrl.pm" "Ultimate_Walker_Rig1:walker_lf_kneeCtrl_fk_or_cons.tg[0].tpm"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_kneeCtrl_fk_or_cons.w0" "Ultimate_Walker_Rig1:walker_lf_kneeCtrl_fk_or_cons.tg[0].tw"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_upLeg_fk_jnt.ro" "Ultimate_Walker_Rig1:walker_lf_upLeg_fk_jnt_parentConstraint1.cro"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_upLeg_fk_jnt.pim" "Ultimate_Walker_Rig1:walker_lf_upLeg_fk_jnt_parentConstraint1.cpim"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_upLeg_fk_jnt.rp" "Ultimate_Walker_Rig1:walker_lf_upLeg_fk_jnt_parentConstraint1.crp"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_upLeg_fk_jnt.rpt" "Ultimate_Walker_Rig1:walker_lf_upLeg_fk_jnt_parentConstraint1.crt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_upLeg_fk_jnt.jo" "Ultimate_Walker_Rig1:walker_lf_upLeg_fk_jnt_parentConstraint1.cjo"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_upLeg_fk_ctrl.t" "Ultimate_Walker_Rig1:walker_lf_upLeg_fk_jnt_parentConstraint1.tg[0].tt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_upLeg_fk_ctrl.rp" "Ultimate_Walker_Rig1:walker_lf_upLeg_fk_jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_upLeg_fk_ctrl.rpt" "Ultimate_Walker_Rig1:walker_lf_upLeg_fk_jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_upLeg_fk_ctrl.r" "Ultimate_Walker_Rig1:walker_lf_upLeg_fk_jnt_parentConstraint1.tg[0].tr"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_upLeg_fk_ctrl.ro" "Ultimate_Walker_Rig1:walker_lf_upLeg_fk_jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_upLeg_fk_ctrl.s" "Ultimate_Walker_Rig1:walker_lf_upLeg_fk_jnt_parentConstraint1.tg[0].ts"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_upLeg_fk_ctrl.pm" "Ultimate_Walker_Rig1:walker_lf_upLeg_fk_jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_upLeg_fk_jnt_parentConstraint1.w0" "Ultimate_Walker_Rig1:walker_lf_upLeg_fk_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_legFK_Grp.ro" "Ultimate_Walker_Rig1:walker_lf_legFK_Grp_parentConstraint1.cro"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_legFK_Grp.pim" "Ultimate_Walker_Rig1:walker_lf_legFK_Grp_parentConstraint1.cpim"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_legFK_Grp.rp" "Ultimate_Walker_Rig1:walker_lf_legFK_Grp_parentConstraint1.crp"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_legFK_Grp.rpt" "Ultimate_Walker_Rig1:walker_lf_legFK_Grp_parentConstraint1.crt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_hip_jnt.t" "Ultimate_Walker_Rig1:walker_lf_legFK_Grp_parentConstraint1.tg[0].tt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_hip_jnt.rp" "Ultimate_Walker_Rig1:walker_lf_legFK_Grp_parentConstraint1.tg[0].trp"
		;
connectAttr "Ultimate_Walker_Rig1:walker_hip_jnt.rpt" "Ultimate_Walker_Rig1:walker_lf_legFK_Grp_parentConstraint1.tg[0].trt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_hip_jnt.r" "Ultimate_Walker_Rig1:walker_lf_legFK_Grp_parentConstraint1.tg[0].tr"
		;
connectAttr "Ultimate_Walker_Rig1:walker_hip_jnt.ro" "Ultimate_Walker_Rig1:walker_lf_legFK_Grp_parentConstraint1.tg[0].tro"
		;
connectAttr "Ultimate_Walker_Rig1:walker_hip_jnt.s" "Ultimate_Walker_Rig1:walker_lf_legFK_Grp_parentConstraint1.tg[0].ts"
		;
connectAttr "Ultimate_Walker_Rig1:walker_hip_jnt.pm" "Ultimate_Walker_Rig1:walker_lf_legFK_Grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ultimate_Walker_Rig1:walker_hip_jnt.jo" "Ultimate_Walker_Rig1:walker_lf_legFK_Grp_parentConstraint1.tg[0].tjo"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_legFK_Grp_parentConstraint1.w0" "Ultimate_Walker_Rig1:walker_lf_legFK_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_ball_fk_ctrl_frzGrp_parentConstraint1.ctx" "|group|Ultimate_Walker_Rig1:AniM_walker_Main|Ultimate_Walker_Rig1:Rig_Leg_grp|Ultimate_Walker_Rig1:walker_lf_leg_rig_grp|Ultimate_Walker_Rig1:walker_lf_ball_fk_ctrl_frzGrp.tx"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_ball_fk_ctrl_frzGrp_parentConstraint1.cty" "|group|Ultimate_Walker_Rig1:AniM_walker_Main|Ultimate_Walker_Rig1:Rig_Leg_grp|Ultimate_Walker_Rig1:walker_lf_leg_rig_grp|Ultimate_Walker_Rig1:walker_lf_ball_fk_ctrl_frzGrp.ty"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_ball_fk_ctrl_frzGrp_parentConstraint1.ctz" "|group|Ultimate_Walker_Rig1:AniM_walker_Main|Ultimate_Walker_Rig1:Rig_Leg_grp|Ultimate_Walker_Rig1:walker_lf_leg_rig_grp|Ultimate_Walker_Rig1:walker_lf_ball_fk_ctrl_frzGrp.tz"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_ball_fk_ctrl_frzGrp_parentConstraint1.crx" "|group|Ultimate_Walker_Rig1:AniM_walker_Main|Ultimate_Walker_Rig1:Rig_Leg_grp|Ultimate_Walker_Rig1:walker_lf_leg_rig_grp|Ultimate_Walker_Rig1:walker_lf_ball_fk_ctrl_frzGrp.rx"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_ball_fk_ctrl_frzGrp_parentConstraint1.cry" "|group|Ultimate_Walker_Rig1:AniM_walker_Main|Ultimate_Walker_Rig1:Rig_Leg_grp|Ultimate_Walker_Rig1:walker_lf_leg_rig_grp|Ultimate_Walker_Rig1:walker_lf_ball_fk_ctrl_frzGrp.ry"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_ball_fk_ctrl_frzGrp_parentConstraint1.crz" "|group|Ultimate_Walker_Rig1:AniM_walker_Main|Ultimate_Walker_Rig1:Rig_Leg_grp|Ultimate_Walker_Rig1:walker_lf_leg_rig_grp|Ultimate_Walker_Rig1:walker_lf_ball_fk_ctrl_frzGrp.rz"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_ball_fk_ctrl_frzGrp_pointConstraint1.ctx" "|group|Ultimate_Walker_Rig1:AniM_walker_Main|Ultimate_Walker_Rig1:Rig_Leg_grp|Ultimate_Walker_Rig1:walker_lf_leg_rig_grp|Ultimate_Walker_Rig1:walker_lf_ball_fk_ctrl_frzGrp|Ultimate_Walker_Rig1:walker_lf_ball_fk_ctrl_frzGrp.tx"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_ball_fk_ctrl_frzGrp_pointConstraint1.cty" "|group|Ultimate_Walker_Rig1:AniM_walker_Main|Ultimate_Walker_Rig1:Rig_Leg_grp|Ultimate_Walker_Rig1:walker_lf_leg_rig_grp|Ultimate_Walker_Rig1:walker_lf_ball_fk_ctrl_frzGrp|Ultimate_Walker_Rig1:walker_lf_ball_fk_ctrl_frzGrp.ty"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_ball_fk_ctrl_frzGrp_pointConstraint1.ctz" "|group|Ultimate_Walker_Rig1:AniM_walker_Main|Ultimate_Walker_Rig1:Rig_Leg_grp|Ultimate_Walker_Rig1:walker_lf_leg_rig_grp|Ultimate_Walker_Rig1:walker_lf_ball_fk_ctrl_frzGrp|Ultimate_Walker_Rig1:walker_lf_ball_fk_ctrl_frzGrp.tz"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_legFkVis_cond.ocr" "Ultimate_Walker_Rig1:walker_lf_ball_fk_ctrl.v"
		;
connectAttr "|group|Ultimate_Walker_Rig1:AniM_walker_Main|Ultimate_Walker_Rig1:Rig_Leg_grp|Ultimate_Walker_Rig1:walker_lf_leg_rig_grp|Ultimate_Walker_Rig1:walker_lf_ball_fk_ctrl_frzGrp|Ultimate_Walker_Rig1:walker_lf_ball_fk_ctrl_frzGrp.pim" "Ultimate_Walker_Rig1:walker_lf_ball_fk_ctrl_frzGrp_pointConstraint1.cpim"
		;
connectAttr "|group|Ultimate_Walker_Rig1:AniM_walker_Main|Ultimate_Walker_Rig1:Rig_Leg_grp|Ultimate_Walker_Rig1:walker_lf_leg_rig_grp|Ultimate_Walker_Rig1:walker_lf_ball_fk_ctrl_frzGrp|Ultimate_Walker_Rig1:walker_lf_ball_fk_ctrl_frzGrp.rp" "Ultimate_Walker_Rig1:walker_lf_ball_fk_ctrl_frzGrp_pointConstraint1.crp"
		;
connectAttr "|group|Ultimate_Walker_Rig1:AniM_walker_Main|Ultimate_Walker_Rig1:Rig_Leg_grp|Ultimate_Walker_Rig1:walker_lf_leg_rig_grp|Ultimate_Walker_Rig1:walker_lf_ball_fk_ctrl_frzGrp|Ultimate_Walker_Rig1:walker_lf_ball_fk_ctrl_frzGrp.rpt" "Ultimate_Walker_Rig1:walker_lf_ball_fk_ctrl_frzGrp_pointConstraint1.crt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_ball_fk_jnt.t" "Ultimate_Walker_Rig1:walker_lf_ball_fk_ctrl_frzGrp_pointConstraint1.tg[0].tt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_ball_fk_jnt.rp" "Ultimate_Walker_Rig1:walker_lf_ball_fk_ctrl_frzGrp_pointConstraint1.tg[0].trp"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_ball_fk_jnt.rpt" "Ultimate_Walker_Rig1:walker_lf_ball_fk_ctrl_frzGrp_pointConstraint1.tg[0].trt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_ball_fk_jnt.pm" "Ultimate_Walker_Rig1:walker_lf_ball_fk_ctrl_frzGrp_pointConstraint1.tg[0].tpm"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_ball_fk_ctrl_frzGrp_pointConstraint1.w0" "Ultimate_Walker_Rig1:walker_lf_ball_fk_ctrl_frzGrp_pointConstraint1.tg[0].tw"
		;
connectAttr "|group|Ultimate_Walker_Rig1:AniM_walker_Main|Ultimate_Walker_Rig1:Rig_Leg_grp|Ultimate_Walker_Rig1:walker_lf_leg_rig_grp|Ultimate_Walker_Rig1:walker_lf_ball_fk_ctrl_frzGrp.ro" "Ultimate_Walker_Rig1:walker_lf_ball_fk_ctrl_frzGrp_parentConstraint1.cro"
		;
connectAttr "|group|Ultimate_Walker_Rig1:AniM_walker_Main|Ultimate_Walker_Rig1:Rig_Leg_grp|Ultimate_Walker_Rig1:walker_lf_leg_rig_grp|Ultimate_Walker_Rig1:walker_lf_ball_fk_ctrl_frzGrp.pim" "Ultimate_Walker_Rig1:walker_lf_ball_fk_ctrl_frzGrp_parentConstraint1.cpim"
		;
connectAttr "|group|Ultimate_Walker_Rig1:AniM_walker_Main|Ultimate_Walker_Rig1:Rig_Leg_grp|Ultimate_Walker_Rig1:walker_lf_leg_rig_grp|Ultimate_Walker_Rig1:walker_lf_ball_fk_ctrl_frzGrp.rp" "Ultimate_Walker_Rig1:walker_lf_ball_fk_ctrl_frzGrp_parentConstraint1.crp"
		;
connectAttr "|group|Ultimate_Walker_Rig1:AniM_walker_Main|Ultimate_Walker_Rig1:Rig_Leg_grp|Ultimate_Walker_Rig1:walker_lf_leg_rig_grp|Ultimate_Walker_Rig1:walker_lf_ball_fk_ctrl_frzGrp.rpt" "Ultimate_Walker_Rig1:walker_lf_ball_fk_ctrl_frzGrp_parentConstraint1.crt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_ankle_fk_jnt.t" "Ultimate_Walker_Rig1:walker_lf_ball_fk_ctrl_frzGrp_parentConstraint1.tg[0].tt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_ankle_fk_jnt.rp" "Ultimate_Walker_Rig1:walker_lf_ball_fk_ctrl_frzGrp_parentConstraint1.tg[0].trp"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_ankle_fk_jnt.rpt" "Ultimate_Walker_Rig1:walker_lf_ball_fk_ctrl_frzGrp_parentConstraint1.tg[0].trt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_ankle_fk_jnt.r" "Ultimate_Walker_Rig1:walker_lf_ball_fk_ctrl_frzGrp_parentConstraint1.tg[0].tr"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_ankle_fk_jnt.ro" "Ultimate_Walker_Rig1:walker_lf_ball_fk_ctrl_frzGrp_parentConstraint1.tg[0].tro"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_ankle_fk_jnt.s" "Ultimate_Walker_Rig1:walker_lf_ball_fk_ctrl_frzGrp_parentConstraint1.tg[0].ts"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_ankle_fk_jnt.pm" "Ultimate_Walker_Rig1:walker_lf_ball_fk_ctrl_frzGrp_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_ankle_fk_jnt.jo" "Ultimate_Walker_Rig1:walker_lf_ball_fk_ctrl_frzGrp_parentConstraint1.tg[0].tjo"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_ball_fk_ctrl_frzGrp_parentConstraint1.w0" "Ultimate_Walker_Rig1:walker_lf_ball_fk_ctrl_frzGrp_parentConstraint1.tg[0].tw"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_ankle_fk_ctrl_frzGrp_parentConstraint1.ctx" "|group|Ultimate_Walker_Rig1:AniM_walker_Main|Ultimate_Walker_Rig1:Rig_Leg_grp|Ultimate_Walker_Rig1:walker_lf_leg_rig_grp|Ultimate_Walker_Rig1:walker_lf_ankle_fk_ctrl_frzGrp.tx"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_ankle_fk_ctrl_frzGrp_parentConstraint1.cty" "|group|Ultimate_Walker_Rig1:AniM_walker_Main|Ultimate_Walker_Rig1:Rig_Leg_grp|Ultimate_Walker_Rig1:walker_lf_leg_rig_grp|Ultimate_Walker_Rig1:walker_lf_ankle_fk_ctrl_frzGrp.ty"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_ankle_fk_ctrl_frzGrp_parentConstraint1.ctz" "|group|Ultimate_Walker_Rig1:AniM_walker_Main|Ultimate_Walker_Rig1:Rig_Leg_grp|Ultimate_Walker_Rig1:walker_lf_leg_rig_grp|Ultimate_Walker_Rig1:walker_lf_ankle_fk_ctrl_frzGrp.tz"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_ankle_fk_ctrl_frzGrp_parentConstraint1.crx" "|group|Ultimate_Walker_Rig1:AniM_walker_Main|Ultimate_Walker_Rig1:Rig_Leg_grp|Ultimate_Walker_Rig1:walker_lf_leg_rig_grp|Ultimate_Walker_Rig1:walker_lf_ankle_fk_ctrl_frzGrp.rx"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_ankle_fk_ctrl_frzGrp_parentConstraint1.cry" "|group|Ultimate_Walker_Rig1:AniM_walker_Main|Ultimate_Walker_Rig1:Rig_Leg_grp|Ultimate_Walker_Rig1:walker_lf_leg_rig_grp|Ultimate_Walker_Rig1:walker_lf_ankle_fk_ctrl_frzGrp.ry"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_ankle_fk_ctrl_frzGrp_parentConstraint1.crz" "|group|Ultimate_Walker_Rig1:AniM_walker_Main|Ultimate_Walker_Rig1:Rig_Leg_grp|Ultimate_Walker_Rig1:walker_lf_leg_rig_grp|Ultimate_Walker_Rig1:walker_lf_ankle_fk_ctrl_frzGrp.rz"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_ankle_fk_ctrl_frzGrp_pointConstraint1.ctx" "|group|Ultimate_Walker_Rig1:AniM_walker_Main|Ultimate_Walker_Rig1:Rig_Leg_grp|Ultimate_Walker_Rig1:walker_lf_leg_rig_grp|Ultimate_Walker_Rig1:walker_lf_ankle_fk_ctrl_frzGrp|Ultimate_Walker_Rig1:walker_lf_ankle_fk_ctrl_frzGrp.tx"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_ankle_fk_ctrl_frzGrp_pointConstraint1.cty" "|group|Ultimate_Walker_Rig1:AniM_walker_Main|Ultimate_Walker_Rig1:Rig_Leg_grp|Ultimate_Walker_Rig1:walker_lf_leg_rig_grp|Ultimate_Walker_Rig1:walker_lf_ankle_fk_ctrl_frzGrp|Ultimate_Walker_Rig1:walker_lf_ankle_fk_ctrl_frzGrp.ty"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_ankle_fk_ctrl_frzGrp_pointConstraint1.ctz" "|group|Ultimate_Walker_Rig1:AniM_walker_Main|Ultimate_Walker_Rig1:Rig_Leg_grp|Ultimate_Walker_Rig1:walker_lf_leg_rig_grp|Ultimate_Walker_Rig1:walker_lf_ankle_fk_ctrl_frzGrp|Ultimate_Walker_Rig1:walker_lf_ankle_fk_ctrl_frzGrp.tz"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_legFkVis_cond.ocr" "Ultimate_Walker_Rig1:walker_lf_ankle_fk_ctrl.v"
		;
connectAttr "|group|Ultimate_Walker_Rig1:AniM_walker_Main|Ultimate_Walker_Rig1:Rig_Leg_grp|Ultimate_Walker_Rig1:walker_lf_leg_rig_grp|Ultimate_Walker_Rig1:walker_lf_ankle_fk_ctrl_frzGrp|Ultimate_Walker_Rig1:walker_lf_ankle_fk_ctrl_frzGrp.pim" "Ultimate_Walker_Rig1:walker_lf_ankle_fk_ctrl_frzGrp_pointConstraint1.cpim"
		;
connectAttr "|group|Ultimate_Walker_Rig1:AniM_walker_Main|Ultimate_Walker_Rig1:Rig_Leg_grp|Ultimate_Walker_Rig1:walker_lf_leg_rig_grp|Ultimate_Walker_Rig1:walker_lf_ankle_fk_ctrl_frzGrp|Ultimate_Walker_Rig1:walker_lf_ankle_fk_ctrl_frzGrp.rp" "Ultimate_Walker_Rig1:walker_lf_ankle_fk_ctrl_frzGrp_pointConstraint1.crp"
		;
connectAttr "|group|Ultimate_Walker_Rig1:AniM_walker_Main|Ultimate_Walker_Rig1:Rig_Leg_grp|Ultimate_Walker_Rig1:walker_lf_leg_rig_grp|Ultimate_Walker_Rig1:walker_lf_ankle_fk_ctrl_frzGrp|Ultimate_Walker_Rig1:walker_lf_ankle_fk_ctrl_frzGrp.rpt" "Ultimate_Walker_Rig1:walker_lf_ankle_fk_ctrl_frzGrp_pointConstraint1.crt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_ankle_fk_jnt.t" "Ultimate_Walker_Rig1:walker_lf_ankle_fk_ctrl_frzGrp_pointConstraint1.tg[0].tt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_ankle_fk_jnt.rp" "Ultimate_Walker_Rig1:walker_lf_ankle_fk_ctrl_frzGrp_pointConstraint1.tg[0].trp"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_ankle_fk_jnt.rpt" "Ultimate_Walker_Rig1:walker_lf_ankle_fk_ctrl_frzGrp_pointConstraint1.tg[0].trt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_ankle_fk_jnt.pm" "Ultimate_Walker_Rig1:walker_lf_ankle_fk_ctrl_frzGrp_pointConstraint1.tg[0].tpm"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_ankle_fk_ctrl_frzGrp_pointConstraint1.w0" "Ultimate_Walker_Rig1:walker_lf_ankle_fk_ctrl_frzGrp_pointConstraint1.tg[0].tw"
		;
connectAttr "|group|Ultimate_Walker_Rig1:AniM_walker_Main|Ultimate_Walker_Rig1:Rig_Leg_grp|Ultimate_Walker_Rig1:walker_lf_leg_rig_grp|Ultimate_Walker_Rig1:walker_lf_ankle_fk_ctrl_frzGrp.ro" "Ultimate_Walker_Rig1:walker_lf_ankle_fk_ctrl_frzGrp_parentConstraint1.cro"
		;
connectAttr "|group|Ultimate_Walker_Rig1:AniM_walker_Main|Ultimate_Walker_Rig1:Rig_Leg_grp|Ultimate_Walker_Rig1:walker_lf_leg_rig_grp|Ultimate_Walker_Rig1:walker_lf_ankle_fk_ctrl_frzGrp.pim" "Ultimate_Walker_Rig1:walker_lf_ankle_fk_ctrl_frzGrp_parentConstraint1.cpim"
		;
connectAttr "|group|Ultimate_Walker_Rig1:AniM_walker_Main|Ultimate_Walker_Rig1:Rig_Leg_grp|Ultimate_Walker_Rig1:walker_lf_leg_rig_grp|Ultimate_Walker_Rig1:walker_lf_ankle_fk_ctrl_frzGrp.rp" "Ultimate_Walker_Rig1:walker_lf_ankle_fk_ctrl_frzGrp_parentConstraint1.crp"
		;
connectAttr "|group|Ultimate_Walker_Rig1:AniM_walker_Main|Ultimate_Walker_Rig1:Rig_Leg_grp|Ultimate_Walker_Rig1:walker_lf_leg_rig_grp|Ultimate_Walker_Rig1:walker_lf_ankle_fk_ctrl_frzGrp.rpt" "Ultimate_Walker_Rig1:walker_lf_ankle_fk_ctrl_frzGrp_parentConstraint1.crt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_knee_fk_jnt.t" "Ultimate_Walker_Rig1:walker_lf_ankle_fk_ctrl_frzGrp_parentConstraint1.tg[0].tt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_knee_fk_jnt.rp" "Ultimate_Walker_Rig1:walker_lf_ankle_fk_ctrl_frzGrp_parentConstraint1.tg[0].trp"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_knee_fk_jnt.rpt" "Ultimate_Walker_Rig1:walker_lf_ankle_fk_ctrl_frzGrp_parentConstraint1.tg[0].trt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_knee_fk_jnt.r" "Ultimate_Walker_Rig1:walker_lf_ankle_fk_ctrl_frzGrp_parentConstraint1.tg[0].tr"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_knee_fk_jnt.ro" "Ultimate_Walker_Rig1:walker_lf_ankle_fk_ctrl_frzGrp_parentConstraint1.tg[0].tro"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_knee_fk_jnt.s" "Ultimate_Walker_Rig1:walker_lf_ankle_fk_ctrl_frzGrp_parentConstraint1.tg[0].ts"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_knee_fk_jnt.pm" "Ultimate_Walker_Rig1:walker_lf_ankle_fk_ctrl_frzGrp_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_knee_fk_jnt.jo" "Ultimate_Walker_Rig1:walker_lf_ankle_fk_ctrl_frzGrp_parentConstraint1.tg[0].tjo"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_ankle_fk_ctrl_frzGrp_parentConstraint1.w0" "Ultimate_Walker_Rig1:walker_lf_ankle_fk_ctrl_frzGrp_parentConstraint1.tg[0].tw"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_knee_fk_ctrl_frzGrp_parentConstraint1.ctx" "|group|Ultimate_Walker_Rig1:AniM_walker_Main|Ultimate_Walker_Rig1:Rig_Leg_grp|Ultimate_Walker_Rig1:walker_lf_leg_rig_grp|Ultimate_Walker_Rig1:walker_lf_knee_fk_ctrl_frzGrp.tx"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_knee_fk_ctrl_frzGrp_parentConstraint1.cty" "|group|Ultimate_Walker_Rig1:AniM_walker_Main|Ultimate_Walker_Rig1:Rig_Leg_grp|Ultimate_Walker_Rig1:walker_lf_leg_rig_grp|Ultimate_Walker_Rig1:walker_lf_knee_fk_ctrl_frzGrp.ty"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_knee_fk_ctrl_frzGrp_parentConstraint1.ctz" "|group|Ultimate_Walker_Rig1:AniM_walker_Main|Ultimate_Walker_Rig1:Rig_Leg_grp|Ultimate_Walker_Rig1:walker_lf_leg_rig_grp|Ultimate_Walker_Rig1:walker_lf_knee_fk_ctrl_frzGrp.tz"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_knee_fk_ctrl_frzGrp_parentConstraint1.crx" "|group|Ultimate_Walker_Rig1:AniM_walker_Main|Ultimate_Walker_Rig1:Rig_Leg_grp|Ultimate_Walker_Rig1:walker_lf_leg_rig_grp|Ultimate_Walker_Rig1:walker_lf_knee_fk_ctrl_frzGrp.rx"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_knee_fk_ctrl_frzGrp_parentConstraint1.cry" "|group|Ultimate_Walker_Rig1:AniM_walker_Main|Ultimate_Walker_Rig1:Rig_Leg_grp|Ultimate_Walker_Rig1:walker_lf_leg_rig_grp|Ultimate_Walker_Rig1:walker_lf_knee_fk_ctrl_frzGrp.ry"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_knee_fk_ctrl_frzGrp_parentConstraint1.crz" "|group|Ultimate_Walker_Rig1:AniM_walker_Main|Ultimate_Walker_Rig1:Rig_Leg_grp|Ultimate_Walker_Rig1:walker_lf_leg_rig_grp|Ultimate_Walker_Rig1:walker_lf_knee_fk_ctrl_frzGrp.rz"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_knee_fk_ctrl_frzGrp_pointConstraint1.ctx" "|group|Ultimate_Walker_Rig1:AniM_walker_Main|Ultimate_Walker_Rig1:Rig_Leg_grp|Ultimate_Walker_Rig1:walker_lf_leg_rig_grp|Ultimate_Walker_Rig1:walker_lf_knee_fk_ctrl_frzGrp|Ultimate_Walker_Rig1:walker_lf_knee_fk_ctrl_frzGrp.tx"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_knee_fk_ctrl_frzGrp_pointConstraint1.cty" "|group|Ultimate_Walker_Rig1:AniM_walker_Main|Ultimate_Walker_Rig1:Rig_Leg_grp|Ultimate_Walker_Rig1:walker_lf_leg_rig_grp|Ultimate_Walker_Rig1:walker_lf_knee_fk_ctrl_frzGrp|Ultimate_Walker_Rig1:walker_lf_knee_fk_ctrl_frzGrp.ty"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_knee_fk_ctrl_frzGrp_pointConstraint1.ctz" "|group|Ultimate_Walker_Rig1:AniM_walker_Main|Ultimate_Walker_Rig1:Rig_Leg_grp|Ultimate_Walker_Rig1:walker_lf_leg_rig_grp|Ultimate_Walker_Rig1:walker_lf_knee_fk_ctrl_frzGrp|Ultimate_Walker_Rig1:walker_lf_knee_fk_ctrl_frzGrp.tz"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_legFkVis_cond.ocr" "Ultimate_Walker_Rig1:walker_lf_knee_fk_ctrl.v"
		;
connectAttr "|group|Ultimate_Walker_Rig1:AniM_walker_Main|Ultimate_Walker_Rig1:Rig_Leg_grp|Ultimate_Walker_Rig1:walker_lf_leg_rig_grp|Ultimate_Walker_Rig1:walker_lf_knee_fk_ctrl_frzGrp|Ultimate_Walker_Rig1:walker_lf_knee_fk_ctrl_frzGrp.pim" "Ultimate_Walker_Rig1:walker_lf_knee_fk_ctrl_frzGrp_pointConstraint1.cpim"
		;
connectAttr "|group|Ultimate_Walker_Rig1:AniM_walker_Main|Ultimate_Walker_Rig1:Rig_Leg_grp|Ultimate_Walker_Rig1:walker_lf_leg_rig_grp|Ultimate_Walker_Rig1:walker_lf_knee_fk_ctrl_frzGrp|Ultimate_Walker_Rig1:walker_lf_knee_fk_ctrl_frzGrp.rp" "Ultimate_Walker_Rig1:walker_lf_knee_fk_ctrl_frzGrp_pointConstraint1.crp"
		;
connectAttr "|group|Ultimate_Walker_Rig1:AniM_walker_Main|Ultimate_Walker_Rig1:Rig_Leg_grp|Ultimate_Walker_Rig1:walker_lf_leg_rig_grp|Ultimate_Walker_Rig1:walker_lf_knee_fk_ctrl_frzGrp|Ultimate_Walker_Rig1:walker_lf_knee_fk_ctrl_frzGrp.rpt" "Ultimate_Walker_Rig1:walker_lf_knee_fk_ctrl_frzGrp_pointConstraint1.crt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_knee_fk_jnt.t" "Ultimate_Walker_Rig1:walker_lf_knee_fk_ctrl_frzGrp_pointConstraint1.tg[0].tt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_knee_fk_jnt.rp" "Ultimate_Walker_Rig1:walker_lf_knee_fk_ctrl_frzGrp_pointConstraint1.tg[0].trp"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_knee_fk_jnt.rpt" "Ultimate_Walker_Rig1:walker_lf_knee_fk_ctrl_frzGrp_pointConstraint1.tg[0].trt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_knee_fk_jnt.pm" "Ultimate_Walker_Rig1:walker_lf_knee_fk_ctrl_frzGrp_pointConstraint1.tg[0].tpm"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_knee_fk_ctrl_frzGrp_pointConstraint1.w0" "Ultimate_Walker_Rig1:walker_lf_knee_fk_ctrl_frzGrp_pointConstraint1.tg[0].tw"
		;
connectAttr "|group|Ultimate_Walker_Rig1:AniM_walker_Main|Ultimate_Walker_Rig1:Rig_Leg_grp|Ultimate_Walker_Rig1:walker_lf_leg_rig_grp|Ultimate_Walker_Rig1:walker_lf_knee_fk_ctrl_frzGrp.ro" "Ultimate_Walker_Rig1:walker_lf_knee_fk_ctrl_frzGrp_parentConstraint1.cro"
		;
connectAttr "|group|Ultimate_Walker_Rig1:AniM_walker_Main|Ultimate_Walker_Rig1:Rig_Leg_grp|Ultimate_Walker_Rig1:walker_lf_leg_rig_grp|Ultimate_Walker_Rig1:walker_lf_knee_fk_ctrl_frzGrp.pim" "Ultimate_Walker_Rig1:walker_lf_knee_fk_ctrl_frzGrp_parentConstraint1.cpim"
		;
connectAttr "|group|Ultimate_Walker_Rig1:AniM_walker_Main|Ultimate_Walker_Rig1:Rig_Leg_grp|Ultimate_Walker_Rig1:walker_lf_leg_rig_grp|Ultimate_Walker_Rig1:walker_lf_knee_fk_ctrl_frzGrp.rp" "Ultimate_Walker_Rig1:walker_lf_knee_fk_ctrl_frzGrp_parentConstraint1.crp"
		;
connectAttr "|group|Ultimate_Walker_Rig1:AniM_walker_Main|Ultimate_Walker_Rig1:Rig_Leg_grp|Ultimate_Walker_Rig1:walker_lf_leg_rig_grp|Ultimate_Walker_Rig1:walker_lf_knee_fk_ctrl_frzGrp.rpt" "Ultimate_Walker_Rig1:walker_lf_knee_fk_ctrl_frzGrp_parentConstraint1.crt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_upLeg_fk_jnt.t" "Ultimate_Walker_Rig1:walker_lf_knee_fk_ctrl_frzGrp_parentConstraint1.tg[0].tt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_upLeg_fk_jnt.rp" "Ultimate_Walker_Rig1:walker_lf_knee_fk_ctrl_frzGrp_parentConstraint1.tg[0].trp"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_upLeg_fk_jnt.rpt" "Ultimate_Walker_Rig1:walker_lf_knee_fk_ctrl_frzGrp_parentConstraint1.tg[0].trt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_upLeg_fk_jnt.r" "Ultimate_Walker_Rig1:walker_lf_knee_fk_ctrl_frzGrp_parentConstraint1.tg[0].tr"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_upLeg_fk_jnt.ro" "Ultimate_Walker_Rig1:walker_lf_knee_fk_ctrl_frzGrp_parentConstraint1.tg[0].tro"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_upLeg_fk_jnt.s" "Ultimate_Walker_Rig1:walker_lf_knee_fk_ctrl_frzGrp_parentConstraint1.tg[0].ts"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_upLeg_fk_jnt.pm" "Ultimate_Walker_Rig1:walker_lf_knee_fk_ctrl_frzGrp_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_upLeg_fk_jnt.jo" "Ultimate_Walker_Rig1:walker_lf_knee_fk_ctrl_frzGrp_parentConstraint1.tg[0].tjo"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_knee_fk_ctrl_frzGrp_parentConstraint1.w0" "Ultimate_Walker_Rig1:walker_lf_knee_fk_ctrl_frzGrp_parentConstraint1.tg[0].tw"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_upLegupJntFkCtrl_grp_parentConstraint1.ctx" "Ultimate_Walker_Rig1:walker_lf_upLegupJntFkCtrl_grp.tx"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_upLegupJntFkCtrl_grp_parentConstraint1.cty" "Ultimate_Walker_Rig1:walker_lf_upLegupJntFkCtrl_grp.ty"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_upLegupJntFkCtrl_grp_parentConstraint1.ctz" "Ultimate_Walker_Rig1:walker_lf_upLegupJntFkCtrl_grp.tz"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_upLegupJntFkCtrl_grp_parentConstraint1.crx" "Ultimate_Walker_Rig1:walker_lf_upLegupJntFkCtrl_grp.rx"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_upLegupJntFkCtrl_grp_parentConstraint1.cry" "Ultimate_Walker_Rig1:walker_lf_upLegupJntFkCtrl_grp.ry"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_upLegupJntFkCtrl_grp_parentConstraint1.crz" "Ultimate_Walker_Rig1:walker_lf_upLegupJntFkCtrl_grp.rz"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_upLegupJntFkCtrl_grp.ro" "Ultimate_Walker_Rig1:walker_lf_upLegupJntFkCtrl_grp_parentConstraint1.cro"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_upLegupJntFkCtrl_grp.pim" "Ultimate_Walker_Rig1:walker_lf_upLegupJntFkCtrl_grp_parentConstraint1.cpim"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_upLegupJntFkCtrl_grp.rp" "Ultimate_Walker_Rig1:walker_lf_upLegupJntFkCtrl_grp_parentConstraint1.crp"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_upLegupJntFkCtrl_grp.rpt" "Ultimate_Walker_Rig1:walker_lf_upLegupJntFkCtrl_grp_parentConstraint1.crt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_hip_jnt.t" "Ultimate_Walker_Rig1:walker_lf_upLegupJntFkCtrl_grp_parentConstraint1.tg[0].tt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_hip_jnt.rp" "Ultimate_Walker_Rig1:walker_lf_upLegupJntFkCtrl_grp_parentConstraint1.tg[0].trp"
		;
connectAttr "Ultimate_Walker_Rig1:walker_hip_jnt.rpt" "Ultimate_Walker_Rig1:walker_lf_upLegupJntFkCtrl_grp_parentConstraint1.tg[0].trt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_hip_jnt.r" "Ultimate_Walker_Rig1:walker_lf_upLegupJntFkCtrl_grp_parentConstraint1.tg[0].tr"
		;
connectAttr "Ultimate_Walker_Rig1:walker_hip_jnt.ro" "Ultimate_Walker_Rig1:walker_lf_upLegupJntFkCtrl_grp_parentConstraint1.tg[0].tro"
		;
connectAttr "Ultimate_Walker_Rig1:walker_hip_jnt.s" "Ultimate_Walker_Rig1:walker_lf_upLegupJntFkCtrl_grp_parentConstraint1.tg[0].ts"
		;
connectAttr "Ultimate_Walker_Rig1:walker_hip_jnt.pm" "Ultimate_Walker_Rig1:walker_lf_upLegupJntFkCtrl_grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ultimate_Walker_Rig1:walker_hip_jnt.jo" "Ultimate_Walker_Rig1:walker_lf_upLegupJntFkCtrl_grp_parentConstraint1.tg[0].tjo"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_upLegupJntFkCtrl_grp_parentConstraint1.w0" "Ultimate_Walker_Rig1:walker_lf_upLegupJntFkCtrl_grp_parentConstraint1.tg[0].tw"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_upLeg_fk_ctrl_frzGrp_pointConstraint1.ctx" "Ultimate_Walker_Rig1:walker_lf_upLeg_fk_ctrl_frzGrp.tx"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_upLeg_fk_ctrl_frzGrp_pointConstraint1.cty" "Ultimate_Walker_Rig1:walker_lf_upLeg_fk_ctrl_frzGrp.ty"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_upLeg_fk_ctrl_frzGrp_pointConstraint1.ctz" "Ultimate_Walker_Rig1:walker_lf_upLeg_fk_ctrl_frzGrp.tz"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_upLeg_fk_ctrl_frzGrp_orientConstraint1.crx" "Ultimate_Walker_Rig1:walker_lf_upLeg_fk_ctrl_frzGrp.rx"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_upLeg_fk_ctrl_frzGrp_orientConstraint1.cry" "Ultimate_Walker_Rig1:walker_lf_upLeg_fk_ctrl_frzGrp.ry"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_upLeg_fk_ctrl_frzGrp_orientConstraint1.crz" "Ultimate_Walker_Rig1:walker_lf_upLeg_fk_ctrl_frzGrp.rz"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_legFkVis_cond.ocr" "Ultimate_Walker_Rig1:walker_lf_upLeg_fk_ctrl.v"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_upLeg_fk_ctrl_frzGrp.pim" "Ultimate_Walker_Rig1:walker_lf_upLeg_fk_ctrl_frzGrp_pointConstraint1.cpim"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_upLeg_fk_ctrl_frzGrp.rp" "Ultimate_Walker_Rig1:walker_lf_upLeg_fk_ctrl_frzGrp_pointConstraint1.crp"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_upLeg_fk_ctrl_frzGrp.rpt" "Ultimate_Walker_Rig1:walker_lf_upLeg_fk_ctrl_frzGrp_pointConstraint1.crt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_upLegupJntFkCtrl_grp.t" "Ultimate_Walker_Rig1:walker_lf_upLeg_fk_ctrl_frzGrp_pointConstraint1.tg[0].tt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_upLegupJntFkCtrl_grp.rp" "Ultimate_Walker_Rig1:walker_lf_upLeg_fk_ctrl_frzGrp_pointConstraint1.tg[0].trp"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_upLegupJntFkCtrl_grp.rpt" "Ultimate_Walker_Rig1:walker_lf_upLeg_fk_ctrl_frzGrp_pointConstraint1.tg[0].trt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_upLegupJntFkCtrl_grp.pm" "Ultimate_Walker_Rig1:walker_lf_upLeg_fk_ctrl_frzGrp_pointConstraint1.tg[0].tpm"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_upLeg_fk_ctrl_frzGrp_pointConstraint1.w0" "Ultimate_Walker_Rig1:walker_lf_upLeg_fk_ctrl_frzGrp_pointConstraint1.tg[0].tw"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_upLeg_fk_ctrl_frzGrp.ro" "Ultimate_Walker_Rig1:walker_lf_upLeg_fk_ctrl_frzGrp_orientConstraint1.cro"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_upLeg_fk_ctrl_frzGrp.pim" "Ultimate_Walker_Rig1:walker_lf_upLeg_fk_ctrl_frzGrp_orientConstraint1.cpim"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_upLegupJntFkCtrl_grp.r" "Ultimate_Walker_Rig1:walker_lf_upLeg_fk_ctrl_frzGrp_orientConstraint1.tg[0].tr"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_upLegupJntFkCtrl_grp.ro" "Ultimate_Walker_Rig1:walker_lf_upLeg_fk_ctrl_frzGrp_orientConstraint1.tg[0].tro"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_upLegupJntFkCtrl_grp.pm" "Ultimate_Walker_Rig1:walker_lf_upLeg_fk_ctrl_frzGrp_orientConstraint1.tg[0].tpm"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_upLeg_fk_ctrl_frzGrp_orientConstraint1.w0" "Ultimate_Walker_Rig1:walker_lf_upLeg_fk_ctrl_frzGrp_orientConstraint1.tg[0].tw"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_upLeg_plsMns.o1" "Ultimate_Walker_Rig1:walker_lf_upLeg_fk_ctrl_frzGrp_orientConstraint1.w0"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_legIK_Grp_parentConstraint1.ctx" "Ultimate_Walker_Rig1:walker_lf_legIK_Grp.tx"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_legIK_Grp_parentConstraint1.cty" "Ultimate_Walker_Rig1:walker_lf_legIK_Grp.ty"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_legIK_Grp_parentConstraint1.ctz" "Ultimate_Walker_Rig1:walker_lf_legIK_Grp.tz"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_legIK_Grp_parentConstraint1.crx" "Ultimate_Walker_Rig1:walker_lf_legIK_Grp.rx"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_legIK_Grp_parentConstraint1.cry" "Ultimate_Walker_Rig1:walker_lf_legIK_Grp.ry"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_legIK_Grp_parentConstraint1.crz" "Ultimate_Walker_Rig1:walker_lf_legIK_Grp.rz"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_foot_ctrl.ikVis" "Ultimate_Walker_Rig1:walker_lf_upLeg_ik_jnt.v"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_upLegSnapSplice_blend.opr" "Ultimate_Walker_Rig1:walker_lf_knee_ik_jnt.tx"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_kneeSnapSplice_blend.opr" "Ultimate_Walker_Rig1:walker_lf_ankle_ik_jnt.tx"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_ankle_ik_jnt.tx" "Ultimate_Walker_Rig1:effector2.tx"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_ankle_ik_jnt.ty" "Ultimate_Walker_Rig1:effector2.ty"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_ankle_ik_jnt.tz" "Ultimate_Walker_Rig1:effector2.tz"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_legIK_Grp.ro" "Ultimate_Walker_Rig1:walker_lf_legIK_Grp_parentConstraint1.cro"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_legIK_Grp.pim" "Ultimate_Walker_Rig1:walker_lf_legIK_Grp_parentConstraint1.cpim"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_legIK_Grp.rp" "Ultimate_Walker_Rig1:walker_lf_legIK_Grp_parentConstraint1.crp"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_legIK_Grp.rpt" "Ultimate_Walker_Rig1:walker_lf_legIK_Grp_parentConstraint1.crt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_hip_jnt.t" "Ultimate_Walker_Rig1:walker_lf_legIK_Grp_parentConstraint1.tg[0].tt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_hip_jnt.rp" "Ultimate_Walker_Rig1:walker_lf_legIK_Grp_parentConstraint1.tg[0].trp"
		;
connectAttr "Ultimate_Walker_Rig1:walker_hip_jnt.rpt" "Ultimate_Walker_Rig1:walker_lf_legIK_Grp_parentConstraint1.tg[0].trt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_hip_jnt.r" "Ultimate_Walker_Rig1:walker_lf_legIK_Grp_parentConstraint1.tg[0].tr"
		;
connectAttr "Ultimate_Walker_Rig1:walker_hip_jnt.ro" "Ultimate_Walker_Rig1:walker_lf_legIK_Grp_parentConstraint1.tg[0].tro"
		;
connectAttr "Ultimate_Walker_Rig1:walker_hip_jnt.s" "Ultimate_Walker_Rig1:walker_lf_legIK_Grp_parentConstraint1.tg[0].ts"
		;
connectAttr "Ultimate_Walker_Rig1:walker_hip_jnt.pm" "Ultimate_Walker_Rig1:walker_lf_legIK_Grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ultimate_Walker_Rig1:walker_hip_jnt.jo" "Ultimate_Walker_Rig1:walker_lf_legIK_Grp_parentConstraint1.tg[0].tjo"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_legIK_Grp_parentConstraint1.w0" "Ultimate_Walker_Rig1:walker_lf_legIK_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_legIkVis_cond.ocr" "Ultimate_Walker_Rig1:walker_lf_heel_ik_ctrl.v"
		;
connectAttr "pasted__walker_lf_heel_ik_ctrl_pvControl.o" "Ultimate_Walker_Rig1:walker_lf_heel_ik_ctrl.pvControl"
		;
connectAttr "pasted__walker_lf_heel_ik_ctrl_legTwist.o" "Ultimate_Walker_Rig1:walker_lf_heel_ik_ctrl.legTwist"
		;
connectAttr "pasted__walker_lf_heel_ik_ctrl_heelTwist.o" "Ultimate_Walker_Rig1:walker_lf_heel_ik_ctrl.heelTwist"
		;
connectAttr "pasted__walker_lf_heel_ik_ctrl_ballTwist.o" "Ultimate_Walker_Rig1:walker_lf_heel_ik_ctrl.ballTwist"
		;
connectAttr "pasted__walker_lf_heel_ik_ctrl_toeTwist.o" "Ultimate_Walker_Rig1:walker_lf_heel_ik_ctrl.toeTwist"
		;
connectAttr "pasted__walker_lf_heel_ik_ctrl_translateX.o" "Ultimate_Walker_Rig1:walker_lf_heel_ik_ctrl.tx"
		;
connectAttr "pasted__walker_lf_heel_ik_ctrl_translateY.o" "Ultimate_Walker_Rig1:walker_lf_heel_ik_ctrl.ty"
		;
connectAttr "pasted__walker_lf_heel_ik_ctrl_translateZ.o" "Ultimate_Walker_Rig1:walker_lf_heel_ik_ctrl.tz"
		;
connectAttr "pasted__walker_lf_heel_ik_ctrl_rotateX.o" "Ultimate_Walker_Rig1:walker_lf_heel_ik_ctrl.rx"
		;
connectAttr "pasted__walker_lf_heel_ik_ctrl_rotateY.o" "Ultimate_Walker_Rig1:walker_lf_heel_ik_ctrl.ry"
		;
connectAttr "pasted__walker_lf_heel_ik_ctrl_rotateZ.o" "Ultimate_Walker_Rig1:walker_lf_heel_ik_ctrl.rz"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_legStr_clamp.opr" "Ultimate_Walker_Rig1:walker_lf_heel_ik_ctrl.stretchValue"
		 -l on;
connectAttr "pasted__walker_lf_heel_ik_ctrl_footRoll.o" "Ultimate_Walker_Rig1:walker_lf_heel_ik_ctrl.footRoll"
		;
connectAttr "pasted__walker_lf_heel_ik_ctrl_footBreak.o" "Ultimate_Walker_Rig1:walker_lf_heel_ik_ctrl.footBreak"
		;
connectAttr "pasted__walker_lf_heel_ik_ctrl_toeRoll.o" "Ultimate_Walker_Rig1:walker_lf_heel_ik_ctrl.toeRoll"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_foot_ctrl_parentConstraint1.ctx" "Ultimate_Walker_Rig1:walker_lf_foot_ctrl.tx"
		 -l on;
connectAttr "Ultimate_Walker_Rig1:walker_lf_foot_ctrl_parentConstraint1.cty" "Ultimate_Walker_Rig1:walker_lf_foot_ctrl.ty"
		 -l on;
connectAttr "Ultimate_Walker_Rig1:walker_lf_foot_ctrl_parentConstraint1.ctz" "Ultimate_Walker_Rig1:walker_lf_foot_ctrl.tz"
		 -l on;
connectAttr "Ultimate_Walker_Rig1:walker_lf_foot_ctrl_parentConstraint1.crx" "Ultimate_Walker_Rig1:walker_lf_foot_ctrl.rx"
		 -l on;
connectAttr "Ultimate_Walker_Rig1:walker_lf_foot_ctrl_parentConstraint1.cry" "Ultimate_Walker_Rig1:walker_lf_foot_ctrl.ry"
		 -l on;
connectAttr "Ultimate_Walker_Rig1:walker_lf_foot_ctrl_parentConstraint1.crz" "Ultimate_Walker_Rig1:walker_lf_foot_ctrl.rz"
		 -l on;
connectAttr "pasted__walker_lf_foot_ctrl_ikFkBlend.o" "Ultimate_Walker_Rig1:walker_lf_foot_ctrl.ikFkBlend"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_foot_ctrl.ro" "Ultimate_Walker_Rig1:walker_lf_foot_ctrl_parentConstraint1.cro"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_foot_ctrl.pim" "Ultimate_Walker_Rig1:walker_lf_foot_ctrl_parentConstraint1.cpim"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_foot_ctrl.rp" "Ultimate_Walker_Rig1:walker_lf_foot_ctrl_parentConstraint1.crp"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_foot_ctrl.rpt" "Ultimate_Walker_Rig1:walker_lf_foot_ctrl_parentConstraint1.crt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_ankle_jnt.t" "Ultimate_Walker_Rig1:walker_lf_foot_ctrl_parentConstraint1.tg[0].tt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_ankle_jnt.rp" "Ultimate_Walker_Rig1:walker_lf_foot_ctrl_parentConstraint1.tg[0].trp"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_ankle_jnt.rpt" "Ultimate_Walker_Rig1:walker_lf_foot_ctrl_parentConstraint1.tg[0].trt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_ankle_jnt.r" "Ultimate_Walker_Rig1:walker_lf_foot_ctrl_parentConstraint1.tg[0].tr"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_ankle_jnt.ro" "Ultimate_Walker_Rig1:walker_lf_foot_ctrl_parentConstraint1.tg[0].tro"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_ankle_jnt.s" "Ultimate_Walker_Rig1:walker_lf_foot_ctrl_parentConstraint1.tg[0].ts"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_ankle_jnt.pm" "Ultimate_Walker_Rig1:walker_lf_foot_ctrl_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_ankle_jnt.jo" "Ultimate_Walker_Rig1:walker_lf_foot_ctrl_parentConstraint1.tg[0].tjo"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_foot_ctrl_parentConstraint1.w0" "Ultimate_Walker_Rig1:walker_lf_foot_ctrl_parentConstraint1.tg[0].tw"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_legIkVis_cond.ocr" "Ultimate_Walker_Rig1:walker_lf_knee_pv_ctrl_frzGrp.v"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_legPvCtrlGrp_lfLegIkCtrlSpcParCon.ctx" "Ultimate_Walker_Rig1:walker_lf_legPvCtrlGrp_space_grp.tx"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_legPvCtrlGrp_lfLegIkCtrlSpcParCon.cty" "Ultimate_Walker_Rig1:walker_lf_legPvCtrlGrp_space_grp.ty"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_legPvCtrlGrp_lfLegIkCtrlSpcParCon.ctz" "Ultimate_Walker_Rig1:walker_lf_legPvCtrlGrp_space_grp.tz"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_legPvCtrlGrp_lfLegIkCtrlSpcParCon.crx" "Ultimate_Walker_Rig1:walker_lf_legPvCtrlGrp_space_grp.rx"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_legPvCtrlGrp_lfLegIkCtrlSpcParCon.cry" "Ultimate_Walker_Rig1:walker_lf_legPvCtrlGrp_space_grp.ry"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_legPvCtrlGrp_lfLegIkCtrlSpcParCon.crz" "Ultimate_Walker_Rig1:walker_lf_legPvCtrlGrp_space_grp.rz"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_legPvCtrlGrp_space_grp.ro" "Ultimate_Walker_Rig1:walker_lf_legPvCtrlGrp_lfLegIkCtrlSpcParCon.cro"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_legPvCtrlGrp_space_grp.pim" "Ultimate_Walker_Rig1:walker_lf_legPvCtrlGrp_lfLegIkCtrlSpcParCon.cpim"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_legPvCtrlGrp_space_grp.rp" "Ultimate_Walker_Rig1:walker_lf_legPvCtrlGrp_lfLegIkCtrlSpcParCon.crp"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_legPvCtrlGrp_space_grp.rpt" "Ultimate_Walker_Rig1:walker_lf_legPvCtrlGrp_lfLegIkCtrlSpcParCon.crt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lfLegIkCtrl_space_switch_grp.t" "Ultimate_Walker_Rig1:walker_lf_legPvCtrlGrp_lfLegIkCtrlSpcParCon.tg[0].tt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lfLegIkCtrl_space_switch_grp.rp" "Ultimate_Walker_Rig1:walker_lf_legPvCtrlGrp_lfLegIkCtrlSpcParCon.tg[0].trp"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lfLegIkCtrl_space_switch_grp.rpt" "Ultimate_Walker_Rig1:walker_lf_legPvCtrlGrp_lfLegIkCtrlSpcParCon.tg[0].trt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lfLegIkCtrl_space_switch_grp.r" "Ultimate_Walker_Rig1:walker_lf_legPvCtrlGrp_lfLegIkCtrlSpcParCon.tg[0].tr"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lfLegIkCtrl_space_switch_grp.ro" "Ultimate_Walker_Rig1:walker_lf_legPvCtrlGrp_lfLegIkCtrlSpcParCon.tg[0].tro"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lfLegIkCtrl_space_switch_grp.s" "Ultimate_Walker_Rig1:walker_lf_legPvCtrlGrp_lfLegIkCtrlSpcParCon.tg[0].ts"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lfLegIkCtrl_space_switch_grp.pm" "Ultimate_Walker_Rig1:walker_lf_legPvCtrlGrp_lfLegIkCtrlSpcParCon.tg[0].tpm"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_legPvCtrlGrp_lfLegIkCtrlSpcParCon.w0" "Ultimate_Walker_Rig1:walker_lf_legPvCtrlGrp_lfLegIkCtrlSpcParCon.tg[0].tw"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_knee_pv_ctrl.lfLegIkCtrl" "Ultimate_Walker_Rig1:walker_lf_legPvCtrlGrp_lfLegIkCtrlSpcParCon.w0"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_heel_ik_ctrl.pvControl" "Ultimate_Walker_Rig1:walker_lf_knee_pv_ctrl.v"
		 -l on;
connectAttr "pasted__walker_lf_knee_pv_ctrl_lfLegIkCtrl.o" "Ultimate_Walker_Rig1:walker_lf_knee_pv_ctrl.lfLegIkCtrl"
		;
connectAttr "pasted__walker_lf_knee_pv_ctrl_translateX.o" "Ultimate_Walker_Rig1:walker_lf_knee_pv_ctrl.tx"
		;
connectAttr "pasted__walker_lf_knee_pv_ctrl_translateY.o" "Ultimate_Walker_Rig1:walker_lf_knee_pv_ctrl.ty"
		;
connectAttr "pasted__walker_lf_knee_pv_ctrl_translateZ.o" "Ultimate_Walker_Rig1:walker_lf_knee_pv_ctrl.tz"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_knee_pv_ctrl_annLoc_pointConstraint1.ctx" "Ultimate_Walker_Rig1:walker_lf_knee_pv_ctrl_annLoc.tx"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_knee_pv_ctrl_annLoc_pointConstraint1.cty" "Ultimate_Walker_Rig1:walker_lf_knee_pv_ctrl_annLoc.ty"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_knee_pv_ctrl_annLoc_pointConstraint1.ctz" "Ultimate_Walker_Rig1:walker_lf_knee_pv_ctrl_annLoc.tz"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_knee_pv_ctrl_annLoc.pim" "Ultimate_Walker_Rig1:walker_lf_knee_pv_ctrl_annLoc_pointConstraint1.cpim"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_knee_pv_ctrl_annLoc.rp" "Ultimate_Walker_Rig1:walker_lf_knee_pv_ctrl_annLoc_pointConstraint1.crp"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_knee_pv_ctrl_annLoc.rpt" "Ultimate_Walker_Rig1:walker_lf_knee_pv_ctrl_annLoc_pointConstraint1.crt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_knee_pv_ctrl.t" "Ultimate_Walker_Rig1:walker_lf_knee_pv_ctrl_annLoc_pointConstraint1.tg[0].tt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_knee_pv_ctrl.rp" "Ultimate_Walker_Rig1:walker_lf_knee_pv_ctrl_annLoc_pointConstraint1.tg[0].trp"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_knee_pv_ctrl.rpt" "Ultimate_Walker_Rig1:walker_lf_knee_pv_ctrl_annLoc_pointConstraint1.tg[0].trt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_knee_pv_ctrl.pm" "Ultimate_Walker_Rig1:walker_lf_knee_pv_ctrl_annLoc_pointConstraint1.tg[0].tpm"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_knee_pv_ctrl_annLoc_pointConstraint1.w0" "Ultimate_Walker_Rig1:walker_lf_knee_pv_ctrl_annLoc_pointConstraint1.tg[0].tw"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_legStrDist_dist_spShape.wp" "Ultimate_Walker_Rig1:walker_lf_legStrDist_distShape.sp"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_legStrDist_dist_epShape.wp" "Ultimate_Walker_Rig1:walker_lf_legStrDist_distShape.ep"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_legStrDist_dist_sp_pointConstraint1.ctx" "Ultimate_Walker_Rig1:walker_lf_legStrDist_dist_sp.tx"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_legStrDist_dist_sp_pointConstraint1.cty" "Ultimate_Walker_Rig1:walker_lf_legStrDist_dist_sp.ty"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_legStrDist_dist_sp_pointConstraint1.ctz" "Ultimate_Walker_Rig1:walker_lf_legStrDist_dist_sp.tz"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_legStrDist_dist_sp.pim" "Ultimate_Walker_Rig1:walker_lf_legStrDist_dist_sp_pointConstraint1.cpim"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_legStrDist_dist_sp.rp" "Ultimate_Walker_Rig1:walker_lf_legStrDist_dist_sp_pointConstraint1.crp"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_legStrDist_dist_sp.rpt" "Ultimate_Walker_Rig1:walker_lf_legStrDist_dist_sp_pointConstraint1.crt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_upLeg_ik_jnt.t" "Ultimate_Walker_Rig1:walker_lf_legStrDist_dist_sp_pointConstraint1.tg[0].tt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_upLeg_ik_jnt.rp" "Ultimate_Walker_Rig1:walker_lf_legStrDist_dist_sp_pointConstraint1.tg[0].trp"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_upLeg_ik_jnt.rpt" "Ultimate_Walker_Rig1:walker_lf_legStrDist_dist_sp_pointConstraint1.tg[0].trt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_upLeg_ik_jnt.pm" "Ultimate_Walker_Rig1:walker_lf_legStrDist_dist_sp_pointConstraint1.tg[0].tpm"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_legStrDist_dist_sp_pointConstraint1.w0" "Ultimate_Walker_Rig1:walker_lf_legStrDist_dist_sp_pointConstraint1.tg[0].tw"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_legStrDist_dist_ep_pointConstraint1.ctx" "Ultimate_Walker_Rig1:walker_lf_legStrDist_dist_ep.tx"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_legStrDist_dist_ep_pointConstraint1.cty" "Ultimate_Walker_Rig1:walker_lf_legStrDist_dist_ep.ty"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_legStrDist_dist_ep_pointConstraint1.ctz" "Ultimate_Walker_Rig1:walker_lf_legStrDist_dist_ep.tz"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_legStrDist_dist_ep.pim" "Ultimate_Walker_Rig1:walker_lf_legStrDist_dist_ep_pointConstraint1.cpim"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_legStrDist_dist_ep.rp" "Ultimate_Walker_Rig1:walker_lf_legStrDist_dist_ep_pointConstraint1.crp"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_legStrDist_dist_ep.rpt" "Ultimate_Walker_Rig1:walker_lf_legStrDist_dist_ep_pointConstraint1.crt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_ankle_rev_rig_jnt.t" "Ultimate_Walker_Rig1:walker_lf_legStrDist_dist_ep_pointConstraint1.tg[0].tt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_ankle_rev_rig_jnt.rp" "Ultimate_Walker_Rig1:walker_lf_legStrDist_dist_ep_pointConstraint1.tg[0].trp"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_ankle_rev_rig_jnt.rpt" "Ultimate_Walker_Rig1:walker_lf_legStrDist_dist_ep_pointConstraint1.tg[0].trt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_ankle_rev_rig_jnt.pm" "Ultimate_Walker_Rig1:walker_lf_legStrDist_dist_ep_pointConstraint1.tg[0].tpm"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_legStrDist_dist_ep_pointConstraint1.w0" "Ultimate_Walker_Rig1:walker_lf_legStrDist_dist_ep_pointConstraint1.tg[0].tw"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_upLegPvCtrl_dist_spShape.wp" "Ultimate_Walker_Rig1:walker_lf_upLegPvCtrl_distShape.sp"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_upLegPvCtrl_dist_epShape.wp" "Ultimate_Walker_Rig1:walker_lf_upLegPvCtrl_distShape.ep"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_upLegPvCtrl_dist_sp_pointConstraint1.ctx" "Ultimate_Walker_Rig1:walker_lf_upLegPvCtrl_dist_sp.tx"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_upLegPvCtrl_dist_sp_pointConstraint1.cty" "Ultimate_Walker_Rig1:walker_lf_upLegPvCtrl_dist_sp.ty"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_upLegPvCtrl_dist_sp_pointConstraint1.ctz" "Ultimate_Walker_Rig1:walker_lf_upLegPvCtrl_dist_sp.tz"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_upLegPvCtrl_dist_sp.pim" "Ultimate_Walker_Rig1:walker_lf_upLegPvCtrl_dist_sp_pointConstraint1.cpim"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_upLegPvCtrl_dist_sp.rp" "Ultimate_Walker_Rig1:walker_lf_upLegPvCtrl_dist_sp_pointConstraint1.crp"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_upLegPvCtrl_dist_sp.rpt" "Ultimate_Walker_Rig1:walker_lf_upLegPvCtrl_dist_sp_pointConstraint1.crt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_upLeg_ik_jnt.t" "Ultimate_Walker_Rig1:walker_lf_upLegPvCtrl_dist_sp_pointConstraint1.tg[0].tt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_upLeg_ik_jnt.rp" "Ultimate_Walker_Rig1:walker_lf_upLegPvCtrl_dist_sp_pointConstraint1.tg[0].trp"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_upLeg_ik_jnt.rpt" "Ultimate_Walker_Rig1:walker_lf_upLegPvCtrl_dist_sp_pointConstraint1.tg[0].trt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_upLeg_ik_jnt.pm" "Ultimate_Walker_Rig1:walker_lf_upLegPvCtrl_dist_sp_pointConstraint1.tg[0].tpm"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_upLegPvCtrl_dist_sp_pointConstraint1.w0" "Ultimate_Walker_Rig1:walker_lf_upLegPvCtrl_dist_sp_pointConstraint1.tg[0].tw"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_upLegPvCtrl_dist_ep_pointConstraint1.ctx" "Ultimate_Walker_Rig1:walker_lf_upLegPvCtrl_dist_ep.tx"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_upLegPvCtrl_dist_ep_pointConstraint1.cty" "Ultimate_Walker_Rig1:walker_lf_upLegPvCtrl_dist_ep.ty"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_upLegPvCtrl_dist_ep_pointConstraint1.ctz" "Ultimate_Walker_Rig1:walker_lf_upLegPvCtrl_dist_ep.tz"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_upLegPvCtrl_dist_ep.pim" "Ultimate_Walker_Rig1:walker_lf_upLegPvCtrl_dist_ep_pointConstraint1.cpim"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_upLegPvCtrl_dist_ep.rp" "Ultimate_Walker_Rig1:walker_lf_upLegPvCtrl_dist_ep_pointConstraint1.crp"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_upLegPvCtrl_dist_ep.rpt" "Ultimate_Walker_Rig1:walker_lf_upLegPvCtrl_dist_ep_pointConstraint1.crt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_knee_pv_ctrl.t" "Ultimate_Walker_Rig1:walker_lf_upLegPvCtrl_dist_ep_pointConstraint1.tg[0].tt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_knee_pv_ctrl.rp" "Ultimate_Walker_Rig1:walker_lf_upLegPvCtrl_dist_ep_pointConstraint1.tg[0].trp"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_knee_pv_ctrl.rpt" "Ultimate_Walker_Rig1:walker_lf_upLegPvCtrl_dist_ep_pointConstraint1.tg[0].trt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_knee_pv_ctrl.pm" "Ultimate_Walker_Rig1:walker_lf_upLegPvCtrl_dist_ep_pointConstraint1.tg[0].tpm"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_upLegPvCtrl_dist_ep_pointConstraint1.w0" "Ultimate_Walker_Rig1:walker_lf_upLegPvCtrl_dist_ep_pointConstraint1.tg[0].tw"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_legPvIkCtrl_dist_spShape.wp" "Ultimate_Walker_Rig1:walker_lf_legPvIkCtrl_distShape.sp"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_legPvIkCtrl_dist_epShape.wp" "Ultimate_Walker_Rig1:walker_lf_legPvIkCtrl_distShape.ep"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_legPvIkCtrl_dist_sp_pointConstraint1.ctx" "Ultimate_Walker_Rig1:walker_lf_legPvIkCtrl_dist_sp.tx"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_legPvIkCtrl_dist_sp_pointConstraint1.cty" "Ultimate_Walker_Rig1:walker_lf_legPvIkCtrl_dist_sp.ty"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_legPvIkCtrl_dist_sp_pointConstraint1.ctz" "Ultimate_Walker_Rig1:walker_lf_legPvIkCtrl_dist_sp.tz"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_legPvIkCtrl_dist_sp.pim" "Ultimate_Walker_Rig1:walker_lf_legPvIkCtrl_dist_sp_pointConstraint1.cpim"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_legPvIkCtrl_dist_sp.rp" "Ultimate_Walker_Rig1:walker_lf_legPvIkCtrl_dist_sp_pointConstraint1.crp"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_legPvIkCtrl_dist_sp.rpt" "Ultimate_Walker_Rig1:walker_lf_legPvIkCtrl_dist_sp_pointConstraint1.crt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_knee_pv_ctrl.t" "Ultimate_Walker_Rig1:walker_lf_legPvIkCtrl_dist_sp_pointConstraint1.tg[0].tt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_knee_pv_ctrl.rp" "Ultimate_Walker_Rig1:walker_lf_legPvIkCtrl_dist_sp_pointConstraint1.tg[0].trp"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_knee_pv_ctrl.rpt" "Ultimate_Walker_Rig1:walker_lf_legPvIkCtrl_dist_sp_pointConstraint1.tg[0].trt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_knee_pv_ctrl.pm" "Ultimate_Walker_Rig1:walker_lf_legPvIkCtrl_dist_sp_pointConstraint1.tg[0].tpm"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_legPvIkCtrl_dist_sp_pointConstraint1.w0" "Ultimate_Walker_Rig1:walker_lf_legPvIkCtrl_dist_sp_pointConstraint1.tg[0].tw"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_legPvIkCtrl_dist_ep_pointConstraint1.ctx" "Ultimate_Walker_Rig1:walker_lf_legPvIkCtrl_dist_ep.tx"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_legPvIkCtrl_dist_ep_pointConstraint1.cty" "Ultimate_Walker_Rig1:walker_lf_legPvIkCtrl_dist_ep.ty"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_legPvIkCtrl_dist_ep_pointConstraint1.ctz" "Ultimate_Walker_Rig1:walker_lf_legPvIkCtrl_dist_ep.tz"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_legPvIkCtrl_dist_ep.pim" "Ultimate_Walker_Rig1:walker_lf_legPvIkCtrl_dist_ep_pointConstraint1.cpim"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_legPvIkCtrl_dist_ep.rp" "Ultimate_Walker_Rig1:walker_lf_legPvIkCtrl_dist_ep_pointConstraint1.crp"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_legPvIkCtrl_dist_ep.rpt" "Ultimate_Walker_Rig1:walker_lf_legPvIkCtrl_dist_ep_pointConstraint1.crt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_ankle_rev_rig_jnt.t" "Ultimate_Walker_Rig1:walker_lf_legPvIkCtrl_dist_ep_pointConstraint1.tg[0].tt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_ankle_rev_rig_jnt.rp" "Ultimate_Walker_Rig1:walker_lf_legPvIkCtrl_dist_ep_pointConstraint1.tg[0].trp"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_ankle_rev_rig_jnt.rpt" "Ultimate_Walker_Rig1:walker_lf_legPvIkCtrl_dist_ep_pointConstraint1.tg[0].trt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_ankle_rev_rig_jnt.pm" "Ultimate_Walker_Rig1:walker_lf_legPvIkCtrl_dist_ep_pointConstraint1.tg[0].tpm"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_legPvIkCtrl_dist_ep_pointConstraint1.w0" "Ultimate_Walker_Rig1:walker_lf_legPvIkCtrl_dist_ep_pointConstraint1.tg[0].tw"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lfLegIkCtrlSpace_par_cons.ctx" "Ultimate_Walker_Rig1:walker_lfLegIkCtrl_space_switch_grp.tx"
		 -l on;
connectAttr "Ultimate_Walker_Rig1:walker_lfLegIkCtrlSpace_par_cons.cty" "Ultimate_Walker_Rig1:walker_lfLegIkCtrl_space_switch_grp.ty"
		 -l on;
connectAttr "Ultimate_Walker_Rig1:walker_lfLegIkCtrlSpace_par_cons.ctz" "Ultimate_Walker_Rig1:walker_lfLegIkCtrl_space_switch_grp.tz"
		 -l on;
connectAttr "Ultimate_Walker_Rig1:walker_lfLegIkCtrlSpace_par_cons.crx" "Ultimate_Walker_Rig1:walker_lfLegIkCtrl_space_switch_grp.rx"
		 -l on;
connectAttr "Ultimate_Walker_Rig1:walker_lfLegIkCtrlSpace_par_cons.cry" "Ultimate_Walker_Rig1:walker_lfLegIkCtrl_space_switch_grp.ry"
		 -l on;
connectAttr "Ultimate_Walker_Rig1:walker_lfLegIkCtrlSpace_par_cons.crz" "Ultimate_Walker_Rig1:walker_lfLegIkCtrl_space_switch_grp.rz"
		 -l on;
connectAttr "Ultimate_Walker_Rig1:walker_lfLegIkCtrl_space_switch_grp.ro" "Ultimate_Walker_Rig1:walker_lfLegIkCtrlSpace_par_cons.cro"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lfLegIkCtrl_space_switch_grp.pim" "Ultimate_Walker_Rig1:walker_lfLegIkCtrlSpace_par_cons.cpim"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lfLegIkCtrl_space_switch_grp.rp" "Ultimate_Walker_Rig1:walker_lfLegIkCtrlSpace_par_cons.crp"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lfLegIkCtrl_space_switch_grp.rpt" "Ultimate_Walker_Rig1:walker_lfLegIkCtrlSpace_par_cons.crt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_heel_ik_ctrl.t" "Ultimate_Walker_Rig1:walker_lfLegIkCtrlSpace_par_cons.tg[0].tt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_heel_ik_ctrl.rp" "Ultimate_Walker_Rig1:walker_lfLegIkCtrlSpace_par_cons.tg[0].trp"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_heel_ik_ctrl.rpt" "Ultimate_Walker_Rig1:walker_lfLegIkCtrlSpace_par_cons.tg[0].trt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_heel_ik_ctrl.r" "Ultimate_Walker_Rig1:walker_lfLegIkCtrlSpace_par_cons.tg[0].tr"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_heel_ik_ctrl.ro" "Ultimate_Walker_Rig1:walker_lfLegIkCtrlSpace_par_cons.tg[0].tro"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_heel_ik_ctrl.s" "Ultimate_Walker_Rig1:walker_lfLegIkCtrlSpace_par_cons.tg[0].ts"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_heel_ik_ctrl.pm" "Ultimate_Walker_Rig1:walker_lfLegIkCtrlSpace_par_cons.tg[0].tpm"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lfLegIkCtrlSpace_par_cons.w0" "Ultimate_Walker_Rig1:walker_lfLegIkCtrlSpace_par_cons.tg[0].tw"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_reverseFoot_rig_grp_parentConstraint1.ctx" "Ultimate_Walker_Rig1:walker_rt_reverseFoot_rig_grp.tx"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_reverseFoot_rig_grp_parentConstraint1.cty" "Ultimate_Walker_Rig1:walker_rt_reverseFoot_rig_grp.ty"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_reverseFoot_rig_grp_parentConstraint1.ctz" "Ultimate_Walker_Rig1:walker_rt_reverseFoot_rig_grp.tz"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_reverseFoot_rig_grp_parentConstraint1.crx" "Ultimate_Walker_Rig1:walker_rt_reverseFoot_rig_grp.rx"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_reverseFoot_rig_grp_parentConstraint1.cry" "Ultimate_Walker_Rig1:walker_rt_reverseFoot_rig_grp.ry"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_reverseFoot_rig_grp_parentConstraint1.crz" "Ultimate_Walker_Rig1:walker_rt_reverseFoot_rig_grp.rz"
		;
connectAttr "Ultimate_Walker_Rig1:unitConversion15.o" "Ultimate_Walker_Rig1:walker_rt_heel_rev_rig_jnt.ry"
		;
connectAttr "Ultimate_Walker_Rig1:unitConversion16.o" "Ultimate_Walker_Rig1:walker_rt_heel_rev_rig_jnt.rz"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_foot_ctrl.ikVis" "Ultimate_Walker_Rig1:walker_rt_heel_rev_rig_jnt.v"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_heel_rev_rig_jnt.s" "Ultimate_Walker_Rig1:walker_rt_toe_rev_rig_jnt.is"
		;
connectAttr "Ultimate_Walker_Rig1:unitConversion12.o" "Ultimate_Walker_Rig1:walker_rt_toe_rev_rig_jnt.ry"
		;
connectAttr "Ultimate_Walker_Rig1:unitConversion18.o" "Ultimate_Walker_Rig1:walker_rt_toe_rev_rig_jnt.rx"
		;
connectAttr "Ultimate_Walker_Rig1:unitConversion13.o" "Ultimate_Walker_Rig1:walker_rt_ball_rev_rig_jnt.ry"
		;
connectAttr "Ultimate_Walker_Rig1:unitConversion17.o" "Ultimate_Walker_Rig1:walker_rt_ball_rev_rig_jnt.rz"
		;
connectAttr "Ultimate_Walker_Rig1:unitConversion11.o" "Ultimate_Walker_Rig1:walker_rt_ball_ik_jnt.rz"
		;
connectAttr "Ultimate_Walker_Rig1:unitConversion14.o" "Ultimate_Walker_Rig1:walker_rt_ball_ik_jnt.ry"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_reverseFoot_rig_grp.ro" "Ultimate_Walker_Rig1:walker_rt_reverseFoot_rig_grp_parentConstraint1.cro"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_reverseFoot_rig_grp.pim" "Ultimate_Walker_Rig1:walker_rt_reverseFoot_rig_grp_parentConstraint1.cpim"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_reverseFoot_rig_grp.rp" "Ultimate_Walker_Rig1:walker_rt_reverseFoot_rig_grp_parentConstraint1.crp"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_reverseFoot_rig_grp.rpt" "Ultimate_Walker_Rig1:walker_rt_reverseFoot_rig_grp_parentConstraint1.crt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_heel_ik_ctrl.t" "Ultimate_Walker_Rig1:walker_rt_reverseFoot_rig_grp_parentConstraint1.tg[0].tt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_heel_ik_ctrl.rp" "Ultimate_Walker_Rig1:walker_rt_reverseFoot_rig_grp_parentConstraint1.tg[0].trp"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_heel_ik_ctrl.rpt" "Ultimate_Walker_Rig1:walker_rt_reverseFoot_rig_grp_parentConstraint1.tg[0].trt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_heel_ik_ctrl.r" "Ultimate_Walker_Rig1:walker_rt_reverseFoot_rig_grp_parentConstraint1.tg[0].tr"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_heel_ik_ctrl.ro" "Ultimate_Walker_Rig1:walker_rt_reverseFoot_rig_grp_parentConstraint1.tg[0].tro"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_heel_ik_ctrl.s" "Ultimate_Walker_Rig1:walker_rt_reverseFoot_rig_grp_parentConstraint1.tg[0].ts"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_heel_ik_ctrl.pm" "Ultimate_Walker_Rig1:walker_rt_reverseFoot_rig_grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_reverseFoot_rig_grp_parentConstraint1.w0" "Ultimate_Walker_Rig1:walker_rt_reverseFoot_rig_grp_parentConstraint1.tg[0].tw"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_legFK_Grp_parentConstraint1.ctx" "Ultimate_Walker_Rig1:walker_rt_legFK_Grp.tx"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_legFK_Grp_parentConstraint1.cty" "Ultimate_Walker_Rig1:walker_rt_legFK_Grp.ty"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_legFK_Grp_parentConstraint1.ctz" "Ultimate_Walker_Rig1:walker_rt_legFK_Grp.tz"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_legFK_Grp_parentConstraint1.crx" "Ultimate_Walker_Rig1:walker_rt_legFK_Grp.rx"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_legFK_Grp_parentConstraint1.cry" "Ultimate_Walker_Rig1:walker_rt_legFK_Grp.ry"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_legFK_Grp_parentConstraint1.crz" "Ultimate_Walker_Rig1:walker_rt_legFK_Grp.rz"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_upLeg_fk_jnt_parentConstraint1.ctx" "Ultimate_Walker_Rig1:walker_rt_upLeg_fk_jnt.tx"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_upLeg_fk_jnt_parentConstraint1.cty" "Ultimate_Walker_Rig1:walker_rt_upLeg_fk_jnt.ty"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_upLeg_fk_jnt_parentConstraint1.ctz" "Ultimate_Walker_Rig1:walker_rt_upLeg_fk_jnt.tz"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_upLeg_fk_jnt_parentConstraint1.crx" "Ultimate_Walker_Rig1:walker_rt_upLeg_fk_jnt.rx"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_upLeg_fk_jnt_parentConstraint1.cry" "Ultimate_Walker_Rig1:walker_rt_upLeg_fk_jnt.ry"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_upLeg_fk_jnt_parentConstraint1.crz" "Ultimate_Walker_Rig1:walker_rt_upLeg_fk_jnt.rz"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_foot_ctrl.fkVis" "Ultimate_Walker_Rig1:walker_rt_upLeg_fk_jnt.v"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_legUpStr_plsMns.o1" "Ultimate_Walker_Rig1:walker_rt_knee_fk_jnt.tx"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_kneeCtrl_fk_or_cons.crx" "Ultimate_Walker_Rig1:walker_rt_knee_fk_jnt.rx"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_kneeCtrl_fk_or_cons.cry" "Ultimate_Walker_Rig1:walker_rt_knee_fk_jnt.ry"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_kneeCtrl_fk_or_cons.crz" "Ultimate_Walker_Rig1:walker_rt_knee_fk_jnt.rz"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_legLowStr_plsMns.o1" "Ultimate_Walker_Rig1:walker_rt_ankle_fk_jnt.tx"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_ankleCtrl_fk_or_cons.crx" "Ultimate_Walker_Rig1:walker_rt_ankle_fk_jnt.rx"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_ankleCtrl_fk_or_cons.cry" "Ultimate_Walker_Rig1:walker_rt_ankle_fk_jnt.ry"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_ankleCtrl_fk_or_cons.crz" "Ultimate_Walker_Rig1:walker_rt_ankle_fk_jnt.rz"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_ballCtrl_fk_or_cons.crx" "Ultimate_Walker_Rig1:walker_rt_ball_fk_jnt.rx"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_ballCtrl_fk_or_cons.cry" "Ultimate_Walker_Rig1:walker_rt_ball_fk_jnt.ry"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_ballCtrl_fk_or_cons.crz" "Ultimate_Walker_Rig1:walker_rt_ball_fk_jnt.rz"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_ball_fk_jnt.ro" "Ultimate_Walker_Rig1:walker_rt_ballCtrl_fk_or_cons.cro"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_ball_fk_jnt.pim" "Ultimate_Walker_Rig1:walker_rt_ballCtrl_fk_or_cons.cpim"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_ball_fk_jnt.jo" "Ultimate_Walker_Rig1:walker_rt_ballCtrl_fk_or_cons.cjo"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_ball_fk_ctrl.r" "Ultimate_Walker_Rig1:walker_rt_ballCtrl_fk_or_cons.tg[0].tr"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_ball_fk_ctrl.ro" "Ultimate_Walker_Rig1:walker_rt_ballCtrl_fk_or_cons.tg[0].tro"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_ball_fk_ctrl.pm" "Ultimate_Walker_Rig1:walker_rt_ballCtrl_fk_or_cons.tg[0].tpm"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_ballCtrl_fk_or_cons.w0" "Ultimate_Walker_Rig1:walker_rt_ballCtrl_fk_or_cons.tg[0].tw"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_ankle_fk_jnt.ro" "Ultimate_Walker_Rig1:walker_rt_ankleCtrl_fk_or_cons.cro"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_ankle_fk_jnt.pim" "Ultimate_Walker_Rig1:walker_rt_ankleCtrl_fk_or_cons.cpim"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_ankle_fk_jnt.jo" "Ultimate_Walker_Rig1:walker_rt_ankleCtrl_fk_or_cons.cjo"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_ankle_fk_ctrl.r" "Ultimate_Walker_Rig1:walker_rt_ankleCtrl_fk_or_cons.tg[0].tr"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_ankle_fk_ctrl.ro" "Ultimate_Walker_Rig1:walker_rt_ankleCtrl_fk_or_cons.tg[0].tro"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_ankle_fk_ctrl.pm" "Ultimate_Walker_Rig1:walker_rt_ankleCtrl_fk_or_cons.tg[0].tpm"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_ankleCtrl_fk_or_cons.w0" "Ultimate_Walker_Rig1:walker_rt_ankleCtrl_fk_or_cons.tg[0].tw"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_knee_fk_jnt.ro" "Ultimate_Walker_Rig1:walker_rt_kneeCtrl_fk_or_cons.cro"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_knee_fk_jnt.pim" "Ultimate_Walker_Rig1:walker_rt_kneeCtrl_fk_or_cons.cpim"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_knee_fk_jnt.jo" "Ultimate_Walker_Rig1:walker_rt_kneeCtrl_fk_or_cons.cjo"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_knee_fk_ctrl.r" "Ultimate_Walker_Rig1:walker_rt_kneeCtrl_fk_or_cons.tg[0].tr"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_knee_fk_ctrl.ro" "Ultimate_Walker_Rig1:walker_rt_kneeCtrl_fk_or_cons.tg[0].tro"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_knee_fk_ctrl.pm" "Ultimate_Walker_Rig1:walker_rt_kneeCtrl_fk_or_cons.tg[0].tpm"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_kneeCtrl_fk_or_cons.w0" "Ultimate_Walker_Rig1:walker_rt_kneeCtrl_fk_or_cons.tg[0].tw"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_upLeg_fk_jnt.ro" "Ultimate_Walker_Rig1:walker_rt_upLeg_fk_jnt_parentConstraint1.cro"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_upLeg_fk_jnt.pim" "Ultimate_Walker_Rig1:walker_rt_upLeg_fk_jnt_parentConstraint1.cpim"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_upLeg_fk_jnt.rp" "Ultimate_Walker_Rig1:walker_rt_upLeg_fk_jnt_parentConstraint1.crp"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_upLeg_fk_jnt.rpt" "Ultimate_Walker_Rig1:walker_rt_upLeg_fk_jnt_parentConstraint1.crt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_upLeg_fk_jnt.jo" "Ultimate_Walker_Rig1:walker_rt_upLeg_fk_jnt_parentConstraint1.cjo"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_upLeg_fk_ctrl.t" "Ultimate_Walker_Rig1:walker_rt_upLeg_fk_jnt_parentConstraint1.tg[0].tt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_upLeg_fk_ctrl.rp" "Ultimate_Walker_Rig1:walker_rt_upLeg_fk_jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_upLeg_fk_ctrl.rpt" "Ultimate_Walker_Rig1:walker_rt_upLeg_fk_jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_upLeg_fk_ctrl.r" "Ultimate_Walker_Rig1:walker_rt_upLeg_fk_jnt_parentConstraint1.tg[0].tr"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_upLeg_fk_ctrl.ro" "Ultimate_Walker_Rig1:walker_rt_upLeg_fk_jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_upLeg_fk_ctrl.s" "Ultimate_Walker_Rig1:walker_rt_upLeg_fk_jnt_parentConstraint1.tg[0].ts"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_upLeg_fk_ctrl.pm" "Ultimate_Walker_Rig1:walker_rt_upLeg_fk_jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_upLeg_fk_jnt_parentConstraint1.w0" "Ultimate_Walker_Rig1:walker_rt_upLeg_fk_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_legFK_Grp.ro" "Ultimate_Walker_Rig1:walker_rt_legFK_Grp_parentConstraint1.cro"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_legFK_Grp.pim" "Ultimate_Walker_Rig1:walker_rt_legFK_Grp_parentConstraint1.cpim"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_legFK_Grp.rp" "Ultimate_Walker_Rig1:walker_rt_legFK_Grp_parentConstraint1.crp"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_legFK_Grp.rpt" "Ultimate_Walker_Rig1:walker_rt_legFK_Grp_parentConstraint1.crt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_hip_jnt.t" "Ultimate_Walker_Rig1:walker_rt_legFK_Grp_parentConstraint1.tg[0].tt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_hip_jnt.rp" "Ultimate_Walker_Rig1:walker_rt_legFK_Grp_parentConstraint1.tg[0].trp"
		;
connectAttr "Ultimate_Walker_Rig1:walker_hip_jnt.rpt" "Ultimate_Walker_Rig1:walker_rt_legFK_Grp_parentConstraint1.tg[0].trt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_hip_jnt.r" "Ultimate_Walker_Rig1:walker_rt_legFK_Grp_parentConstraint1.tg[0].tr"
		;
connectAttr "Ultimate_Walker_Rig1:walker_hip_jnt.ro" "Ultimate_Walker_Rig1:walker_rt_legFK_Grp_parentConstraint1.tg[0].tro"
		;
connectAttr "Ultimate_Walker_Rig1:walker_hip_jnt.s" "Ultimate_Walker_Rig1:walker_rt_legFK_Grp_parentConstraint1.tg[0].ts"
		;
connectAttr "Ultimate_Walker_Rig1:walker_hip_jnt.pm" "Ultimate_Walker_Rig1:walker_rt_legFK_Grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ultimate_Walker_Rig1:walker_hip_jnt.jo" "Ultimate_Walker_Rig1:walker_rt_legFK_Grp_parentConstraint1.tg[0].tjo"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_legFK_Grp_parentConstraint1.w0" "Ultimate_Walker_Rig1:walker_rt_legFK_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_ball_fk_ctrl_frzGrp_parentConstraint1.ctx" "|group|Ultimate_Walker_Rig1:AniM_walker_Main|Ultimate_Walker_Rig1:Rig_Leg_grp|Ultimate_Walker_Rig1:walker_rt_leg_rig_grp|Ultimate_Walker_Rig1:walker_rt_ball_fk_ctrl_frzGrp.tx"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_ball_fk_ctrl_frzGrp_parentConstraint1.cty" "|group|Ultimate_Walker_Rig1:AniM_walker_Main|Ultimate_Walker_Rig1:Rig_Leg_grp|Ultimate_Walker_Rig1:walker_rt_leg_rig_grp|Ultimate_Walker_Rig1:walker_rt_ball_fk_ctrl_frzGrp.ty"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_ball_fk_ctrl_frzGrp_parentConstraint1.ctz" "|group|Ultimate_Walker_Rig1:AniM_walker_Main|Ultimate_Walker_Rig1:Rig_Leg_grp|Ultimate_Walker_Rig1:walker_rt_leg_rig_grp|Ultimate_Walker_Rig1:walker_rt_ball_fk_ctrl_frzGrp.tz"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_ball_fk_ctrl_frzGrp_parentConstraint1.crx" "|group|Ultimate_Walker_Rig1:AniM_walker_Main|Ultimate_Walker_Rig1:Rig_Leg_grp|Ultimate_Walker_Rig1:walker_rt_leg_rig_grp|Ultimate_Walker_Rig1:walker_rt_ball_fk_ctrl_frzGrp.rx"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_ball_fk_ctrl_frzGrp_parentConstraint1.cry" "|group|Ultimate_Walker_Rig1:AniM_walker_Main|Ultimate_Walker_Rig1:Rig_Leg_grp|Ultimate_Walker_Rig1:walker_rt_leg_rig_grp|Ultimate_Walker_Rig1:walker_rt_ball_fk_ctrl_frzGrp.ry"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_ball_fk_ctrl_frzGrp_parentConstraint1.crz" "|group|Ultimate_Walker_Rig1:AniM_walker_Main|Ultimate_Walker_Rig1:Rig_Leg_grp|Ultimate_Walker_Rig1:walker_rt_leg_rig_grp|Ultimate_Walker_Rig1:walker_rt_ball_fk_ctrl_frzGrp.rz"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_ball_fk_ctrl_frzGrp_pointConstraint1.ctx" "|group|Ultimate_Walker_Rig1:AniM_walker_Main|Ultimate_Walker_Rig1:Rig_Leg_grp|Ultimate_Walker_Rig1:walker_rt_leg_rig_grp|Ultimate_Walker_Rig1:walker_rt_ball_fk_ctrl_frzGrp|Ultimate_Walker_Rig1:walker_rt_ball_fk_ctrl_frzGrp.tx"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_ball_fk_ctrl_frzGrp_pointConstraint1.cty" "|group|Ultimate_Walker_Rig1:AniM_walker_Main|Ultimate_Walker_Rig1:Rig_Leg_grp|Ultimate_Walker_Rig1:walker_rt_leg_rig_grp|Ultimate_Walker_Rig1:walker_rt_ball_fk_ctrl_frzGrp|Ultimate_Walker_Rig1:walker_rt_ball_fk_ctrl_frzGrp.ty"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_ball_fk_ctrl_frzGrp_pointConstraint1.ctz" "|group|Ultimate_Walker_Rig1:AniM_walker_Main|Ultimate_Walker_Rig1:Rig_Leg_grp|Ultimate_Walker_Rig1:walker_rt_leg_rig_grp|Ultimate_Walker_Rig1:walker_rt_ball_fk_ctrl_frzGrp|Ultimate_Walker_Rig1:walker_rt_ball_fk_ctrl_frzGrp.tz"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_legFkVis_cond.ocr" "Ultimate_Walker_Rig1:walker_rt_ball_fk_ctrl.v"
		;
connectAttr "|group|Ultimate_Walker_Rig1:AniM_walker_Main|Ultimate_Walker_Rig1:Rig_Leg_grp|Ultimate_Walker_Rig1:walker_rt_leg_rig_grp|Ultimate_Walker_Rig1:walker_rt_ball_fk_ctrl_frzGrp|Ultimate_Walker_Rig1:walker_rt_ball_fk_ctrl_frzGrp.pim" "Ultimate_Walker_Rig1:walker_rt_ball_fk_ctrl_frzGrp_pointConstraint1.cpim"
		;
connectAttr "|group|Ultimate_Walker_Rig1:AniM_walker_Main|Ultimate_Walker_Rig1:Rig_Leg_grp|Ultimate_Walker_Rig1:walker_rt_leg_rig_grp|Ultimate_Walker_Rig1:walker_rt_ball_fk_ctrl_frzGrp|Ultimate_Walker_Rig1:walker_rt_ball_fk_ctrl_frzGrp.rp" "Ultimate_Walker_Rig1:walker_rt_ball_fk_ctrl_frzGrp_pointConstraint1.crp"
		;
connectAttr "|group|Ultimate_Walker_Rig1:AniM_walker_Main|Ultimate_Walker_Rig1:Rig_Leg_grp|Ultimate_Walker_Rig1:walker_rt_leg_rig_grp|Ultimate_Walker_Rig1:walker_rt_ball_fk_ctrl_frzGrp|Ultimate_Walker_Rig1:walker_rt_ball_fk_ctrl_frzGrp.rpt" "Ultimate_Walker_Rig1:walker_rt_ball_fk_ctrl_frzGrp_pointConstraint1.crt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_ball_fk_jnt.t" "Ultimate_Walker_Rig1:walker_rt_ball_fk_ctrl_frzGrp_pointConstraint1.tg[0].tt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_ball_fk_jnt.rp" "Ultimate_Walker_Rig1:walker_rt_ball_fk_ctrl_frzGrp_pointConstraint1.tg[0].trp"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_ball_fk_jnt.rpt" "Ultimate_Walker_Rig1:walker_rt_ball_fk_ctrl_frzGrp_pointConstraint1.tg[0].trt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_ball_fk_jnt.pm" "Ultimate_Walker_Rig1:walker_rt_ball_fk_ctrl_frzGrp_pointConstraint1.tg[0].tpm"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_ball_fk_ctrl_frzGrp_pointConstraint1.w0" "Ultimate_Walker_Rig1:walker_rt_ball_fk_ctrl_frzGrp_pointConstraint1.tg[0].tw"
		;
connectAttr "|group|Ultimate_Walker_Rig1:AniM_walker_Main|Ultimate_Walker_Rig1:Rig_Leg_grp|Ultimate_Walker_Rig1:walker_rt_leg_rig_grp|Ultimate_Walker_Rig1:walker_rt_ball_fk_ctrl_frzGrp.ro" "Ultimate_Walker_Rig1:walker_rt_ball_fk_ctrl_frzGrp_parentConstraint1.cro"
		;
connectAttr "|group|Ultimate_Walker_Rig1:AniM_walker_Main|Ultimate_Walker_Rig1:Rig_Leg_grp|Ultimate_Walker_Rig1:walker_rt_leg_rig_grp|Ultimate_Walker_Rig1:walker_rt_ball_fk_ctrl_frzGrp.pim" "Ultimate_Walker_Rig1:walker_rt_ball_fk_ctrl_frzGrp_parentConstraint1.cpim"
		;
connectAttr "|group|Ultimate_Walker_Rig1:AniM_walker_Main|Ultimate_Walker_Rig1:Rig_Leg_grp|Ultimate_Walker_Rig1:walker_rt_leg_rig_grp|Ultimate_Walker_Rig1:walker_rt_ball_fk_ctrl_frzGrp.rp" "Ultimate_Walker_Rig1:walker_rt_ball_fk_ctrl_frzGrp_parentConstraint1.crp"
		;
connectAttr "|group|Ultimate_Walker_Rig1:AniM_walker_Main|Ultimate_Walker_Rig1:Rig_Leg_grp|Ultimate_Walker_Rig1:walker_rt_leg_rig_grp|Ultimate_Walker_Rig1:walker_rt_ball_fk_ctrl_frzGrp.rpt" "Ultimate_Walker_Rig1:walker_rt_ball_fk_ctrl_frzGrp_parentConstraint1.crt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_ankle_fk_jnt.t" "Ultimate_Walker_Rig1:walker_rt_ball_fk_ctrl_frzGrp_parentConstraint1.tg[0].tt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_ankle_fk_jnt.rp" "Ultimate_Walker_Rig1:walker_rt_ball_fk_ctrl_frzGrp_parentConstraint1.tg[0].trp"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_ankle_fk_jnt.rpt" "Ultimate_Walker_Rig1:walker_rt_ball_fk_ctrl_frzGrp_parentConstraint1.tg[0].trt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_ankle_fk_jnt.r" "Ultimate_Walker_Rig1:walker_rt_ball_fk_ctrl_frzGrp_parentConstraint1.tg[0].tr"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_ankle_fk_jnt.ro" "Ultimate_Walker_Rig1:walker_rt_ball_fk_ctrl_frzGrp_parentConstraint1.tg[0].tro"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_ankle_fk_jnt.s" "Ultimate_Walker_Rig1:walker_rt_ball_fk_ctrl_frzGrp_parentConstraint1.tg[0].ts"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_ankle_fk_jnt.pm" "Ultimate_Walker_Rig1:walker_rt_ball_fk_ctrl_frzGrp_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_ankle_fk_jnt.jo" "Ultimate_Walker_Rig1:walker_rt_ball_fk_ctrl_frzGrp_parentConstraint1.tg[0].tjo"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_ball_fk_ctrl_frzGrp_parentConstraint1.w0" "Ultimate_Walker_Rig1:walker_rt_ball_fk_ctrl_frzGrp_parentConstraint1.tg[0].tw"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_ankle_fk_ctrl_frzGrp_parentConstraint1.ctx" "|group|Ultimate_Walker_Rig1:AniM_walker_Main|Ultimate_Walker_Rig1:Rig_Leg_grp|Ultimate_Walker_Rig1:walker_rt_leg_rig_grp|Ultimate_Walker_Rig1:walker_rt_ankle_fk_ctrl_frzGrp.tx"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_ankle_fk_ctrl_frzGrp_parentConstraint1.cty" "|group|Ultimate_Walker_Rig1:AniM_walker_Main|Ultimate_Walker_Rig1:Rig_Leg_grp|Ultimate_Walker_Rig1:walker_rt_leg_rig_grp|Ultimate_Walker_Rig1:walker_rt_ankle_fk_ctrl_frzGrp.ty"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_ankle_fk_ctrl_frzGrp_parentConstraint1.ctz" "|group|Ultimate_Walker_Rig1:AniM_walker_Main|Ultimate_Walker_Rig1:Rig_Leg_grp|Ultimate_Walker_Rig1:walker_rt_leg_rig_grp|Ultimate_Walker_Rig1:walker_rt_ankle_fk_ctrl_frzGrp.tz"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_ankle_fk_ctrl_frzGrp_parentConstraint1.crx" "|group|Ultimate_Walker_Rig1:AniM_walker_Main|Ultimate_Walker_Rig1:Rig_Leg_grp|Ultimate_Walker_Rig1:walker_rt_leg_rig_grp|Ultimate_Walker_Rig1:walker_rt_ankle_fk_ctrl_frzGrp.rx"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_ankle_fk_ctrl_frzGrp_parentConstraint1.cry" "|group|Ultimate_Walker_Rig1:AniM_walker_Main|Ultimate_Walker_Rig1:Rig_Leg_grp|Ultimate_Walker_Rig1:walker_rt_leg_rig_grp|Ultimate_Walker_Rig1:walker_rt_ankle_fk_ctrl_frzGrp.ry"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_ankle_fk_ctrl_frzGrp_parentConstraint1.crz" "|group|Ultimate_Walker_Rig1:AniM_walker_Main|Ultimate_Walker_Rig1:Rig_Leg_grp|Ultimate_Walker_Rig1:walker_rt_leg_rig_grp|Ultimate_Walker_Rig1:walker_rt_ankle_fk_ctrl_frzGrp.rz"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_ankle_fk_ctrl_frzGrp_pointConstraint1.ctx" "|group|Ultimate_Walker_Rig1:AniM_walker_Main|Ultimate_Walker_Rig1:Rig_Leg_grp|Ultimate_Walker_Rig1:walker_rt_leg_rig_grp|Ultimate_Walker_Rig1:walker_rt_ankle_fk_ctrl_frzGrp|Ultimate_Walker_Rig1:walker_rt_ankle_fk_ctrl_frzGrp.tx"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_ankle_fk_ctrl_frzGrp_pointConstraint1.cty" "|group|Ultimate_Walker_Rig1:AniM_walker_Main|Ultimate_Walker_Rig1:Rig_Leg_grp|Ultimate_Walker_Rig1:walker_rt_leg_rig_grp|Ultimate_Walker_Rig1:walker_rt_ankle_fk_ctrl_frzGrp|Ultimate_Walker_Rig1:walker_rt_ankle_fk_ctrl_frzGrp.ty"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_ankle_fk_ctrl_frzGrp_pointConstraint1.ctz" "|group|Ultimate_Walker_Rig1:AniM_walker_Main|Ultimate_Walker_Rig1:Rig_Leg_grp|Ultimate_Walker_Rig1:walker_rt_leg_rig_grp|Ultimate_Walker_Rig1:walker_rt_ankle_fk_ctrl_frzGrp|Ultimate_Walker_Rig1:walker_rt_ankle_fk_ctrl_frzGrp.tz"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_legFkVis_cond.ocr" "Ultimate_Walker_Rig1:walker_rt_ankle_fk_ctrl.v"
		;
connectAttr "|group|Ultimate_Walker_Rig1:AniM_walker_Main|Ultimate_Walker_Rig1:Rig_Leg_grp|Ultimate_Walker_Rig1:walker_rt_leg_rig_grp|Ultimate_Walker_Rig1:walker_rt_ankle_fk_ctrl_frzGrp|Ultimate_Walker_Rig1:walker_rt_ankle_fk_ctrl_frzGrp.pim" "Ultimate_Walker_Rig1:walker_rt_ankle_fk_ctrl_frzGrp_pointConstraint1.cpim"
		;
connectAttr "|group|Ultimate_Walker_Rig1:AniM_walker_Main|Ultimate_Walker_Rig1:Rig_Leg_grp|Ultimate_Walker_Rig1:walker_rt_leg_rig_grp|Ultimate_Walker_Rig1:walker_rt_ankle_fk_ctrl_frzGrp|Ultimate_Walker_Rig1:walker_rt_ankle_fk_ctrl_frzGrp.rp" "Ultimate_Walker_Rig1:walker_rt_ankle_fk_ctrl_frzGrp_pointConstraint1.crp"
		;
connectAttr "|group|Ultimate_Walker_Rig1:AniM_walker_Main|Ultimate_Walker_Rig1:Rig_Leg_grp|Ultimate_Walker_Rig1:walker_rt_leg_rig_grp|Ultimate_Walker_Rig1:walker_rt_ankle_fk_ctrl_frzGrp|Ultimate_Walker_Rig1:walker_rt_ankle_fk_ctrl_frzGrp.rpt" "Ultimate_Walker_Rig1:walker_rt_ankle_fk_ctrl_frzGrp_pointConstraint1.crt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_ankle_fk_jnt.t" "Ultimate_Walker_Rig1:walker_rt_ankle_fk_ctrl_frzGrp_pointConstraint1.tg[0].tt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_ankle_fk_jnt.rp" "Ultimate_Walker_Rig1:walker_rt_ankle_fk_ctrl_frzGrp_pointConstraint1.tg[0].trp"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_ankle_fk_jnt.rpt" "Ultimate_Walker_Rig1:walker_rt_ankle_fk_ctrl_frzGrp_pointConstraint1.tg[0].trt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_ankle_fk_jnt.pm" "Ultimate_Walker_Rig1:walker_rt_ankle_fk_ctrl_frzGrp_pointConstraint1.tg[0].tpm"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_ankle_fk_ctrl_frzGrp_pointConstraint1.w0" "Ultimate_Walker_Rig1:walker_rt_ankle_fk_ctrl_frzGrp_pointConstraint1.tg[0].tw"
		;
connectAttr "|group|Ultimate_Walker_Rig1:AniM_walker_Main|Ultimate_Walker_Rig1:Rig_Leg_grp|Ultimate_Walker_Rig1:walker_rt_leg_rig_grp|Ultimate_Walker_Rig1:walker_rt_ankle_fk_ctrl_frzGrp.ro" "Ultimate_Walker_Rig1:walker_rt_ankle_fk_ctrl_frzGrp_parentConstraint1.cro"
		;
connectAttr "|group|Ultimate_Walker_Rig1:AniM_walker_Main|Ultimate_Walker_Rig1:Rig_Leg_grp|Ultimate_Walker_Rig1:walker_rt_leg_rig_grp|Ultimate_Walker_Rig1:walker_rt_ankle_fk_ctrl_frzGrp.pim" "Ultimate_Walker_Rig1:walker_rt_ankle_fk_ctrl_frzGrp_parentConstraint1.cpim"
		;
connectAttr "|group|Ultimate_Walker_Rig1:AniM_walker_Main|Ultimate_Walker_Rig1:Rig_Leg_grp|Ultimate_Walker_Rig1:walker_rt_leg_rig_grp|Ultimate_Walker_Rig1:walker_rt_ankle_fk_ctrl_frzGrp.rp" "Ultimate_Walker_Rig1:walker_rt_ankle_fk_ctrl_frzGrp_parentConstraint1.crp"
		;
connectAttr "|group|Ultimate_Walker_Rig1:AniM_walker_Main|Ultimate_Walker_Rig1:Rig_Leg_grp|Ultimate_Walker_Rig1:walker_rt_leg_rig_grp|Ultimate_Walker_Rig1:walker_rt_ankle_fk_ctrl_frzGrp.rpt" "Ultimate_Walker_Rig1:walker_rt_ankle_fk_ctrl_frzGrp_parentConstraint1.crt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_knee_fk_jnt.t" "Ultimate_Walker_Rig1:walker_rt_ankle_fk_ctrl_frzGrp_parentConstraint1.tg[0].tt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_knee_fk_jnt.rp" "Ultimate_Walker_Rig1:walker_rt_ankle_fk_ctrl_frzGrp_parentConstraint1.tg[0].trp"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_knee_fk_jnt.rpt" "Ultimate_Walker_Rig1:walker_rt_ankle_fk_ctrl_frzGrp_parentConstraint1.tg[0].trt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_knee_fk_jnt.r" "Ultimate_Walker_Rig1:walker_rt_ankle_fk_ctrl_frzGrp_parentConstraint1.tg[0].tr"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_knee_fk_jnt.ro" "Ultimate_Walker_Rig1:walker_rt_ankle_fk_ctrl_frzGrp_parentConstraint1.tg[0].tro"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_knee_fk_jnt.s" "Ultimate_Walker_Rig1:walker_rt_ankle_fk_ctrl_frzGrp_parentConstraint1.tg[0].ts"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_knee_fk_jnt.pm" "Ultimate_Walker_Rig1:walker_rt_ankle_fk_ctrl_frzGrp_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_knee_fk_jnt.jo" "Ultimate_Walker_Rig1:walker_rt_ankle_fk_ctrl_frzGrp_parentConstraint1.tg[0].tjo"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_ankle_fk_ctrl_frzGrp_parentConstraint1.w0" "Ultimate_Walker_Rig1:walker_rt_ankle_fk_ctrl_frzGrp_parentConstraint1.tg[0].tw"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_knee_fk_ctrl_frzGrp_parentConstraint1.ctx" "|group|Ultimate_Walker_Rig1:AniM_walker_Main|Ultimate_Walker_Rig1:Rig_Leg_grp|Ultimate_Walker_Rig1:walker_rt_leg_rig_grp|Ultimate_Walker_Rig1:walker_rt_knee_fk_ctrl_frzGrp.tx"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_knee_fk_ctrl_frzGrp_parentConstraint1.cty" "|group|Ultimate_Walker_Rig1:AniM_walker_Main|Ultimate_Walker_Rig1:Rig_Leg_grp|Ultimate_Walker_Rig1:walker_rt_leg_rig_grp|Ultimate_Walker_Rig1:walker_rt_knee_fk_ctrl_frzGrp.ty"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_knee_fk_ctrl_frzGrp_parentConstraint1.ctz" "|group|Ultimate_Walker_Rig1:AniM_walker_Main|Ultimate_Walker_Rig1:Rig_Leg_grp|Ultimate_Walker_Rig1:walker_rt_leg_rig_grp|Ultimate_Walker_Rig1:walker_rt_knee_fk_ctrl_frzGrp.tz"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_knee_fk_ctrl_frzGrp_parentConstraint1.crx" "|group|Ultimate_Walker_Rig1:AniM_walker_Main|Ultimate_Walker_Rig1:Rig_Leg_grp|Ultimate_Walker_Rig1:walker_rt_leg_rig_grp|Ultimate_Walker_Rig1:walker_rt_knee_fk_ctrl_frzGrp.rx"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_knee_fk_ctrl_frzGrp_parentConstraint1.cry" "|group|Ultimate_Walker_Rig1:AniM_walker_Main|Ultimate_Walker_Rig1:Rig_Leg_grp|Ultimate_Walker_Rig1:walker_rt_leg_rig_grp|Ultimate_Walker_Rig1:walker_rt_knee_fk_ctrl_frzGrp.ry"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_knee_fk_ctrl_frzGrp_parentConstraint1.crz" "|group|Ultimate_Walker_Rig1:AniM_walker_Main|Ultimate_Walker_Rig1:Rig_Leg_grp|Ultimate_Walker_Rig1:walker_rt_leg_rig_grp|Ultimate_Walker_Rig1:walker_rt_knee_fk_ctrl_frzGrp.rz"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_knee_fk_ctrl_frzGrp_pointConstraint1.ctx" "|group|Ultimate_Walker_Rig1:AniM_walker_Main|Ultimate_Walker_Rig1:Rig_Leg_grp|Ultimate_Walker_Rig1:walker_rt_leg_rig_grp|Ultimate_Walker_Rig1:walker_rt_knee_fk_ctrl_frzGrp|Ultimate_Walker_Rig1:walker_rt_knee_fk_ctrl_frzGrp.tx"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_knee_fk_ctrl_frzGrp_pointConstraint1.cty" "|group|Ultimate_Walker_Rig1:AniM_walker_Main|Ultimate_Walker_Rig1:Rig_Leg_grp|Ultimate_Walker_Rig1:walker_rt_leg_rig_grp|Ultimate_Walker_Rig1:walker_rt_knee_fk_ctrl_frzGrp|Ultimate_Walker_Rig1:walker_rt_knee_fk_ctrl_frzGrp.ty"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_knee_fk_ctrl_frzGrp_pointConstraint1.ctz" "|group|Ultimate_Walker_Rig1:AniM_walker_Main|Ultimate_Walker_Rig1:Rig_Leg_grp|Ultimate_Walker_Rig1:walker_rt_leg_rig_grp|Ultimate_Walker_Rig1:walker_rt_knee_fk_ctrl_frzGrp|Ultimate_Walker_Rig1:walker_rt_knee_fk_ctrl_frzGrp.tz"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_legFkVis_cond.ocr" "Ultimate_Walker_Rig1:walker_rt_knee_fk_ctrl.v"
		;
connectAttr "|group|Ultimate_Walker_Rig1:AniM_walker_Main|Ultimate_Walker_Rig1:Rig_Leg_grp|Ultimate_Walker_Rig1:walker_rt_leg_rig_grp|Ultimate_Walker_Rig1:walker_rt_knee_fk_ctrl_frzGrp|Ultimate_Walker_Rig1:walker_rt_knee_fk_ctrl_frzGrp.pim" "Ultimate_Walker_Rig1:walker_rt_knee_fk_ctrl_frzGrp_pointConstraint1.cpim"
		;
connectAttr "|group|Ultimate_Walker_Rig1:AniM_walker_Main|Ultimate_Walker_Rig1:Rig_Leg_grp|Ultimate_Walker_Rig1:walker_rt_leg_rig_grp|Ultimate_Walker_Rig1:walker_rt_knee_fk_ctrl_frzGrp|Ultimate_Walker_Rig1:walker_rt_knee_fk_ctrl_frzGrp.rp" "Ultimate_Walker_Rig1:walker_rt_knee_fk_ctrl_frzGrp_pointConstraint1.crp"
		;
connectAttr "|group|Ultimate_Walker_Rig1:AniM_walker_Main|Ultimate_Walker_Rig1:Rig_Leg_grp|Ultimate_Walker_Rig1:walker_rt_leg_rig_grp|Ultimate_Walker_Rig1:walker_rt_knee_fk_ctrl_frzGrp|Ultimate_Walker_Rig1:walker_rt_knee_fk_ctrl_frzGrp.rpt" "Ultimate_Walker_Rig1:walker_rt_knee_fk_ctrl_frzGrp_pointConstraint1.crt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_knee_fk_jnt.t" "Ultimate_Walker_Rig1:walker_rt_knee_fk_ctrl_frzGrp_pointConstraint1.tg[0].tt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_knee_fk_jnt.rp" "Ultimate_Walker_Rig1:walker_rt_knee_fk_ctrl_frzGrp_pointConstraint1.tg[0].trp"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_knee_fk_jnt.rpt" "Ultimate_Walker_Rig1:walker_rt_knee_fk_ctrl_frzGrp_pointConstraint1.tg[0].trt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_knee_fk_jnt.pm" "Ultimate_Walker_Rig1:walker_rt_knee_fk_ctrl_frzGrp_pointConstraint1.tg[0].tpm"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_knee_fk_ctrl_frzGrp_pointConstraint1.w0" "Ultimate_Walker_Rig1:walker_rt_knee_fk_ctrl_frzGrp_pointConstraint1.tg[0].tw"
		;
connectAttr "|group|Ultimate_Walker_Rig1:AniM_walker_Main|Ultimate_Walker_Rig1:Rig_Leg_grp|Ultimate_Walker_Rig1:walker_rt_leg_rig_grp|Ultimate_Walker_Rig1:walker_rt_knee_fk_ctrl_frzGrp.ro" "Ultimate_Walker_Rig1:walker_rt_knee_fk_ctrl_frzGrp_parentConstraint1.cro"
		;
connectAttr "|group|Ultimate_Walker_Rig1:AniM_walker_Main|Ultimate_Walker_Rig1:Rig_Leg_grp|Ultimate_Walker_Rig1:walker_rt_leg_rig_grp|Ultimate_Walker_Rig1:walker_rt_knee_fk_ctrl_frzGrp.pim" "Ultimate_Walker_Rig1:walker_rt_knee_fk_ctrl_frzGrp_parentConstraint1.cpim"
		;
connectAttr "|group|Ultimate_Walker_Rig1:AniM_walker_Main|Ultimate_Walker_Rig1:Rig_Leg_grp|Ultimate_Walker_Rig1:walker_rt_leg_rig_grp|Ultimate_Walker_Rig1:walker_rt_knee_fk_ctrl_frzGrp.rp" "Ultimate_Walker_Rig1:walker_rt_knee_fk_ctrl_frzGrp_parentConstraint1.crp"
		;
connectAttr "|group|Ultimate_Walker_Rig1:AniM_walker_Main|Ultimate_Walker_Rig1:Rig_Leg_grp|Ultimate_Walker_Rig1:walker_rt_leg_rig_grp|Ultimate_Walker_Rig1:walker_rt_knee_fk_ctrl_frzGrp.rpt" "Ultimate_Walker_Rig1:walker_rt_knee_fk_ctrl_frzGrp_parentConstraint1.crt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_upLeg_fk_jnt.t" "Ultimate_Walker_Rig1:walker_rt_knee_fk_ctrl_frzGrp_parentConstraint1.tg[0].tt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_upLeg_fk_jnt.rp" "Ultimate_Walker_Rig1:walker_rt_knee_fk_ctrl_frzGrp_parentConstraint1.tg[0].trp"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_upLeg_fk_jnt.rpt" "Ultimate_Walker_Rig1:walker_rt_knee_fk_ctrl_frzGrp_parentConstraint1.tg[0].trt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_upLeg_fk_jnt.r" "Ultimate_Walker_Rig1:walker_rt_knee_fk_ctrl_frzGrp_parentConstraint1.tg[0].tr"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_upLeg_fk_jnt.ro" "Ultimate_Walker_Rig1:walker_rt_knee_fk_ctrl_frzGrp_parentConstraint1.tg[0].tro"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_upLeg_fk_jnt.s" "Ultimate_Walker_Rig1:walker_rt_knee_fk_ctrl_frzGrp_parentConstraint1.tg[0].ts"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_upLeg_fk_jnt.pm" "Ultimate_Walker_Rig1:walker_rt_knee_fk_ctrl_frzGrp_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_upLeg_fk_jnt.jo" "Ultimate_Walker_Rig1:walker_rt_knee_fk_ctrl_frzGrp_parentConstraint1.tg[0].tjo"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_knee_fk_ctrl_frzGrp_parentConstraint1.w0" "Ultimate_Walker_Rig1:walker_rt_knee_fk_ctrl_frzGrp_parentConstraint1.tg[0].tw"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_upLegupJntFkCtrl_grp_parentConstraint1.ctx" "Ultimate_Walker_Rig1:walker_rt_upLegupJntFkCtrl_grp.tx"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_upLegupJntFkCtrl_grp_parentConstraint1.cty" "Ultimate_Walker_Rig1:walker_rt_upLegupJntFkCtrl_grp.ty"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_upLegupJntFkCtrl_grp_parentConstraint1.ctz" "Ultimate_Walker_Rig1:walker_rt_upLegupJntFkCtrl_grp.tz"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_upLegupJntFkCtrl_grp_parentConstraint1.crx" "Ultimate_Walker_Rig1:walker_rt_upLegupJntFkCtrl_grp.rx"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_upLegupJntFkCtrl_grp_parentConstraint1.cry" "Ultimate_Walker_Rig1:walker_rt_upLegupJntFkCtrl_grp.ry"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_upLegupJntFkCtrl_grp_parentConstraint1.crz" "Ultimate_Walker_Rig1:walker_rt_upLegupJntFkCtrl_grp.rz"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_upLegupJntFkCtrl_grp.ro" "Ultimate_Walker_Rig1:walker_rt_upLegupJntFkCtrl_grp_parentConstraint1.cro"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_upLegupJntFkCtrl_grp.pim" "Ultimate_Walker_Rig1:walker_rt_upLegupJntFkCtrl_grp_parentConstraint1.cpim"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_upLegupJntFkCtrl_grp.rp" "Ultimate_Walker_Rig1:walker_rt_upLegupJntFkCtrl_grp_parentConstraint1.crp"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_upLegupJntFkCtrl_grp.rpt" "Ultimate_Walker_Rig1:walker_rt_upLegupJntFkCtrl_grp_parentConstraint1.crt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_hip_jnt.t" "Ultimate_Walker_Rig1:walker_rt_upLegupJntFkCtrl_grp_parentConstraint1.tg[0].tt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_hip_jnt.rp" "Ultimate_Walker_Rig1:walker_rt_upLegupJntFkCtrl_grp_parentConstraint1.tg[0].trp"
		;
connectAttr "Ultimate_Walker_Rig1:walker_hip_jnt.rpt" "Ultimate_Walker_Rig1:walker_rt_upLegupJntFkCtrl_grp_parentConstraint1.tg[0].trt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_hip_jnt.r" "Ultimate_Walker_Rig1:walker_rt_upLegupJntFkCtrl_grp_parentConstraint1.tg[0].tr"
		;
connectAttr "Ultimate_Walker_Rig1:walker_hip_jnt.ro" "Ultimate_Walker_Rig1:walker_rt_upLegupJntFkCtrl_grp_parentConstraint1.tg[0].tro"
		;
connectAttr "Ultimate_Walker_Rig1:walker_hip_jnt.s" "Ultimate_Walker_Rig1:walker_rt_upLegupJntFkCtrl_grp_parentConstraint1.tg[0].ts"
		;
connectAttr "Ultimate_Walker_Rig1:walker_hip_jnt.pm" "Ultimate_Walker_Rig1:walker_rt_upLegupJntFkCtrl_grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ultimate_Walker_Rig1:walker_hip_jnt.jo" "Ultimate_Walker_Rig1:walker_rt_upLegupJntFkCtrl_grp_parentConstraint1.tg[0].tjo"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_upLegupJntFkCtrl_grp_parentConstraint1.w0" "Ultimate_Walker_Rig1:walker_rt_upLegupJntFkCtrl_grp_parentConstraint1.tg[0].tw"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_upLeg_fk_ctrl_frzGrp_pointConstraint1.ctx" "Ultimate_Walker_Rig1:walker_rt_upLeg_fk_ctrl_frzGrp.tx"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_upLeg_fk_ctrl_frzGrp_pointConstraint1.cty" "Ultimate_Walker_Rig1:walker_rt_upLeg_fk_ctrl_frzGrp.ty"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_upLeg_fk_ctrl_frzGrp_pointConstraint1.ctz" "Ultimate_Walker_Rig1:walker_rt_upLeg_fk_ctrl_frzGrp.tz"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_upLeg_fk_ctrl_frzGrp_orientConstraint1.crx" "Ultimate_Walker_Rig1:walker_rt_upLeg_fk_ctrl_frzGrp.rx"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_upLeg_fk_ctrl_frzGrp_orientConstraint1.cry" "Ultimate_Walker_Rig1:walker_rt_upLeg_fk_ctrl_frzGrp.ry"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_upLeg_fk_ctrl_frzGrp_orientConstraint1.crz" "Ultimate_Walker_Rig1:walker_rt_upLeg_fk_ctrl_frzGrp.rz"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_legFkVis_cond.ocr" "Ultimate_Walker_Rig1:walker_rt_upLeg_fk_ctrl.v"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_upLeg_fk_ctrl_frzGrp.pim" "Ultimate_Walker_Rig1:walker_rt_upLeg_fk_ctrl_frzGrp_pointConstraint1.cpim"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_upLeg_fk_ctrl_frzGrp.rp" "Ultimate_Walker_Rig1:walker_rt_upLeg_fk_ctrl_frzGrp_pointConstraint1.crp"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_upLeg_fk_ctrl_frzGrp.rpt" "Ultimate_Walker_Rig1:walker_rt_upLeg_fk_ctrl_frzGrp_pointConstraint1.crt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_upLegupJntFkCtrl_grp.t" "Ultimate_Walker_Rig1:walker_rt_upLeg_fk_ctrl_frzGrp_pointConstraint1.tg[0].tt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_upLegupJntFkCtrl_grp.rp" "Ultimate_Walker_Rig1:walker_rt_upLeg_fk_ctrl_frzGrp_pointConstraint1.tg[0].trp"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_upLegupJntFkCtrl_grp.rpt" "Ultimate_Walker_Rig1:walker_rt_upLeg_fk_ctrl_frzGrp_pointConstraint1.tg[0].trt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_upLegupJntFkCtrl_grp.pm" "Ultimate_Walker_Rig1:walker_rt_upLeg_fk_ctrl_frzGrp_pointConstraint1.tg[0].tpm"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_upLeg_fk_ctrl_frzGrp_pointConstraint1.w0" "Ultimate_Walker_Rig1:walker_rt_upLeg_fk_ctrl_frzGrp_pointConstraint1.tg[0].tw"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_upLeg_fk_ctrl_frzGrp.ro" "Ultimate_Walker_Rig1:walker_rt_upLeg_fk_ctrl_frzGrp_orientConstraint1.cro"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_upLeg_fk_ctrl_frzGrp.pim" "Ultimate_Walker_Rig1:walker_rt_upLeg_fk_ctrl_frzGrp_orientConstraint1.cpim"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_upLegupJntFkCtrl_grp.r" "Ultimate_Walker_Rig1:walker_rt_upLeg_fk_ctrl_frzGrp_orientConstraint1.tg[0].tr"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_upLegupJntFkCtrl_grp.ro" "Ultimate_Walker_Rig1:walker_rt_upLeg_fk_ctrl_frzGrp_orientConstraint1.tg[0].tro"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_upLegupJntFkCtrl_grp.pm" "Ultimate_Walker_Rig1:walker_rt_upLeg_fk_ctrl_frzGrp_orientConstraint1.tg[0].tpm"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_upLeg_fk_ctrl_frzGrp_orientConstraint1.w0" "Ultimate_Walker_Rig1:walker_rt_upLeg_fk_ctrl_frzGrp_orientConstraint1.tg[0].tw"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_upLeg_plsMns.o1" "Ultimate_Walker_Rig1:walker_rt_upLeg_fk_ctrl_frzGrp_orientConstraint1.w0"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_legIK_Grp_parentConstraint1.ctx" "Ultimate_Walker_Rig1:walker_rt_legIK_Grp.tx"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_legIK_Grp_parentConstraint1.cty" "Ultimate_Walker_Rig1:walker_rt_legIK_Grp.ty"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_legIK_Grp_parentConstraint1.ctz" "Ultimate_Walker_Rig1:walker_rt_legIK_Grp.tz"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_legIK_Grp_parentConstraint1.crx" "Ultimate_Walker_Rig1:walker_rt_legIK_Grp.rx"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_legIK_Grp_parentConstraint1.cry" "Ultimate_Walker_Rig1:walker_rt_legIK_Grp.ry"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_legIK_Grp_parentConstraint1.crz" "Ultimate_Walker_Rig1:walker_rt_legIK_Grp.rz"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_foot_ctrl.ikVis" "Ultimate_Walker_Rig1:walker_rt_upLeg_ik_jnt.v"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_upLegSnapSplice_blend.opr" "Ultimate_Walker_Rig1:walker_rt_knee_ik_jnt.tx"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_kneeSnapSplice_blend.opr" "Ultimate_Walker_Rig1:walker_rt_ankle_ik_jnt.tx"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_ankle_ik_jnt.tx" "Ultimate_Walker_Rig1:effector3.tx"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_ankle_ik_jnt.ty" "Ultimate_Walker_Rig1:effector3.ty"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_ankle_ik_jnt.tz" "Ultimate_Walker_Rig1:effector3.tz"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_legIK_Grp.ro" "Ultimate_Walker_Rig1:walker_rt_legIK_Grp_parentConstraint1.cro"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_legIK_Grp.pim" "Ultimate_Walker_Rig1:walker_rt_legIK_Grp_parentConstraint1.cpim"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_legIK_Grp.rp" "Ultimate_Walker_Rig1:walker_rt_legIK_Grp_parentConstraint1.crp"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_legIK_Grp.rpt" "Ultimate_Walker_Rig1:walker_rt_legIK_Grp_parentConstraint1.crt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_hip_jnt.t" "Ultimate_Walker_Rig1:walker_rt_legIK_Grp_parentConstraint1.tg[0].tt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_hip_jnt.rp" "Ultimate_Walker_Rig1:walker_rt_legIK_Grp_parentConstraint1.tg[0].trp"
		;
connectAttr "Ultimate_Walker_Rig1:walker_hip_jnt.rpt" "Ultimate_Walker_Rig1:walker_rt_legIK_Grp_parentConstraint1.tg[0].trt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_hip_jnt.r" "Ultimate_Walker_Rig1:walker_rt_legIK_Grp_parentConstraint1.tg[0].tr"
		;
connectAttr "Ultimate_Walker_Rig1:walker_hip_jnt.ro" "Ultimate_Walker_Rig1:walker_rt_legIK_Grp_parentConstraint1.tg[0].tro"
		;
connectAttr "Ultimate_Walker_Rig1:walker_hip_jnt.s" "Ultimate_Walker_Rig1:walker_rt_legIK_Grp_parentConstraint1.tg[0].ts"
		;
connectAttr "Ultimate_Walker_Rig1:walker_hip_jnt.pm" "Ultimate_Walker_Rig1:walker_rt_legIK_Grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ultimate_Walker_Rig1:walker_hip_jnt.jo" "Ultimate_Walker_Rig1:walker_rt_legIK_Grp_parentConstraint1.tg[0].tjo"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_legIK_Grp_parentConstraint1.w0" "Ultimate_Walker_Rig1:walker_rt_legIK_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_legIkVis_cond.ocr" "Ultimate_Walker_Rig1:walker_rt_heel_ik_ctrl.v"
		;
connectAttr "pasted__walker_rt_heel_ik_ctrl_pvControl.o" "Ultimate_Walker_Rig1:walker_rt_heel_ik_ctrl.pvControl"
		;
connectAttr "pasted__walker_rt_heel_ik_ctrl_legTwist.o" "Ultimate_Walker_Rig1:walker_rt_heel_ik_ctrl.legTwist"
		;
connectAttr "pasted__walker_rt_heel_ik_ctrl_heelTwist.o" "Ultimate_Walker_Rig1:walker_rt_heel_ik_ctrl.heelTwist"
		;
connectAttr "pasted__walker_rt_heel_ik_ctrl_ballTwist.o" "Ultimate_Walker_Rig1:walker_rt_heel_ik_ctrl.ballTwist"
		;
connectAttr "pasted__walker_rt_heel_ik_ctrl_toeTwist.o" "Ultimate_Walker_Rig1:walker_rt_heel_ik_ctrl.toeTwist"
		;
connectAttr "pasted__walker_rt_heel_ik_ctrl_translateX.o" "Ultimate_Walker_Rig1:walker_rt_heel_ik_ctrl.tx"
		;
connectAttr "pasted__walker_rt_heel_ik_ctrl_translateY.o" "Ultimate_Walker_Rig1:walker_rt_heel_ik_ctrl.ty"
		;
connectAttr "pasted__walker_rt_heel_ik_ctrl_translateZ.o" "Ultimate_Walker_Rig1:walker_rt_heel_ik_ctrl.tz"
		;
connectAttr "pasted__walker_rt_heel_ik_ctrl_rotateX.o" "Ultimate_Walker_Rig1:walker_rt_heel_ik_ctrl.rx"
		;
connectAttr "pasted__walker_rt_heel_ik_ctrl_rotateY.o" "Ultimate_Walker_Rig1:walker_rt_heel_ik_ctrl.ry"
		;
connectAttr "pasted__walker_rt_heel_ik_ctrl_rotateZ.o" "Ultimate_Walker_Rig1:walker_rt_heel_ik_ctrl.rz"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_legStr_clamp.opr" "Ultimate_Walker_Rig1:walker_rt_heel_ik_ctrl.stretchValue"
		 -l on;
connectAttr "pasted__walker_rt_heel_ik_ctrl_footRoll.o" "Ultimate_Walker_Rig1:walker_rt_heel_ik_ctrl.footRoll"
		;
connectAttr "pasted__walker_rt_heel_ik_ctrl_footBreak.o" "Ultimate_Walker_Rig1:walker_rt_heel_ik_ctrl.footBreak"
		;
connectAttr "pasted__walker_rt_heel_ik_ctrl_toeRoll.o" "Ultimate_Walker_Rig1:walker_rt_heel_ik_ctrl.toeRoll"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_foot_ctrl_parentConstraint1.ctx" "Ultimate_Walker_Rig1:walker_rt_foot_ctrl.tx"
		 -l on;
connectAttr "Ultimate_Walker_Rig1:walker_rt_foot_ctrl_parentConstraint1.cty" "Ultimate_Walker_Rig1:walker_rt_foot_ctrl.ty"
		 -l on;
connectAttr "Ultimate_Walker_Rig1:walker_rt_foot_ctrl_parentConstraint1.ctz" "Ultimate_Walker_Rig1:walker_rt_foot_ctrl.tz"
		 -l on;
connectAttr "Ultimate_Walker_Rig1:walker_rt_foot_ctrl_parentConstraint1.crx" "Ultimate_Walker_Rig1:walker_rt_foot_ctrl.rx"
		 -l on;
connectAttr "Ultimate_Walker_Rig1:walker_rt_foot_ctrl_parentConstraint1.cry" "Ultimate_Walker_Rig1:walker_rt_foot_ctrl.ry"
		 -l on;
connectAttr "Ultimate_Walker_Rig1:walker_rt_foot_ctrl_parentConstraint1.crz" "Ultimate_Walker_Rig1:walker_rt_foot_ctrl.rz"
		 -l on;
connectAttr "pasted__walker_rt_foot_ctrl_ikFkBlend.o" "Ultimate_Walker_Rig1:walker_rt_foot_ctrl.ikFkBlend"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_foot_ctrl.ro" "Ultimate_Walker_Rig1:walker_rt_foot_ctrl_parentConstraint1.cro"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_foot_ctrl.pim" "Ultimate_Walker_Rig1:walker_rt_foot_ctrl_parentConstraint1.cpim"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_foot_ctrl.rp" "Ultimate_Walker_Rig1:walker_rt_foot_ctrl_parentConstraint1.crp"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_foot_ctrl.rpt" "Ultimate_Walker_Rig1:walker_rt_foot_ctrl_parentConstraint1.crt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_ankle_jnt.t" "Ultimate_Walker_Rig1:walker_rt_foot_ctrl_parentConstraint1.tg[0].tt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_ankle_jnt.rp" "Ultimate_Walker_Rig1:walker_rt_foot_ctrl_parentConstraint1.tg[0].trp"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_ankle_jnt.rpt" "Ultimate_Walker_Rig1:walker_rt_foot_ctrl_parentConstraint1.tg[0].trt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_ankle_jnt.r" "Ultimate_Walker_Rig1:walker_rt_foot_ctrl_parentConstraint1.tg[0].tr"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_ankle_jnt.ro" "Ultimate_Walker_Rig1:walker_rt_foot_ctrl_parentConstraint1.tg[0].tro"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_ankle_jnt.s" "Ultimate_Walker_Rig1:walker_rt_foot_ctrl_parentConstraint1.tg[0].ts"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_ankle_jnt.pm" "Ultimate_Walker_Rig1:walker_rt_foot_ctrl_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_ankle_jnt.jo" "Ultimate_Walker_Rig1:walker_rt_foot_ctrl_parentConstraint1.tg[0].tjo"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_foot_ctrl_parentConstraint1.w0" "Ultimate_Walker_Rig1:walker_rt_foot_ctrl_parentConstraint1.tg[0].tw"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_legIkVis_cond.ocr" "Ultimate_Walker_Rig1:walker_rt_knee_pv_ctrl_frzGrp.v"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_legPvCtrlGrp_rtLegIkCtrlSpcParCon.ctx" "Ultimate_Walker_Rig1:walker_rt_legPvCtrlGrp_space_grp.tx"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_legPvCtrlGrp_rtLegIkCtrlSpcParCon.cty" "Ultimate_Walker_Rig1:walker_rt_legPvCtrlGrp_space_grp.ty"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_legPvCtrlGrp_rtLegIkCtrlSpcParCon.ctz" "Ultimate_Walker_Rig1:walker_rt_legPvCtrlGrp_space_grp.tz"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_legPvCtrlGrp_rtLegIkCtrlSpcParCon.crx" "Ultimate_Walker_Rig1:walker_rt_legPvCtrlGrp_space_grp.rx"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_legPvCtrlGrp_rtLegIkCtrlSpcParCon.cry" "Ultimate_Walker_Rig1:walker_rt_legPvCtrlGrp_space_grp.ry"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_legPvCtrlGrp_rtLegIkCtrlSpcParCon.crz" "Ultimate_Walker_Rig1:walker_rt_legPvCtrlGrp_space_grp.rz"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_legPvCtrlGrp_space_grp.ro" "Ultimate_Walker_Rig1:walker_rt_legPvCtrlGrp_rtLegIkCtrlSpcParCon.cro"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_legPvCtrlGrp_space_grp.pim" "Ultimate_Walker_Rig1:walker_rt_legPvCtrlGrp_rtLegIkCtrlSpcParCon.cpim"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_legPvCtrlGrp_space_grp.rp" "Ultimate_Walker_Rig1:walker_rt_legPvCtrlGrp_rtLegIkCtrlSpcParCon.crp"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_legPvCtrlGrp_space_grp.rpt" "Ultimate_Walker_Rig1:walker_rt_legPvCtrlGrp_rtLegIkCtrlSpcParCon.crt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rtLegIkCtrl_space_switch_grp.t" "Ultimate_Walker_Rig1:walker_rt_legPvCtrlGrp_rtLegIkCtrlSpcParCon.tg[0].tt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rtLegIkCtrl_space_switch_grp.rp" "Ultimate_Walker_Rig1:walker_rt_legPvCtrlGrp_rtLegIkCtrlSpcParCon.tg[0].trp"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rtLegIkCtrl_space_switch_grp.rpt" "Ultimate_Walker_Rig1:walker_rt_legPvCtrlGrp_rtLegIkCtrlSpcParCon.tg[0].trt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rtLegIkCtrl_space_switch_grp.r" "Ultimate_Walker_Rig1:walker_rt_legPvCtrlGrp_rtLegIkCtrlSpcParCon.tg[0].tr"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rtLegIkCtrl_space_switch_grp.ro" "Ultimate_Walker_Rig1:walker_rt_legPvCtrlGrp_rtLegIkCtrlSpcParCon.tg[0].tro"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rtLegIkCtrl_space_switch_grp.s" "Ultimate_Walker_Rig1:walker_rt_legPvCtrlGrp_rtLegIkCtrlSpcParCon.tg[0].ts"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rtLegIkCtrl_space_switch_grp.pm" "Ultimate_Walker_Rig1:walker_rt_legPvCtrlGrp_rtLegIkCtrlSpcParCon.tg[0].tpm"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_legPvCtrlGrp_rtLegIkCtrlSpcParCon.w0" "Ultimate_Walker_Rig1:walker_rt_legPvCtrlGrp_rtLegIkCtrlSpcParCon.tg[0].tw"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_knee_pv_ctrl.rtLegIkCtrl" "Ultimate_Walker_Rig1:walker_rt_legPvCtrlGrp_rtLegIkCtrlSpcParCon.w0"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_heel_ik_ctrl.pvControl" "Ultimate_Walker_Rig1:walker_rt_knee_pv_ctrl.v"
		 -l on;
connectAttr "pasted__walker_rt_knee_pv_ctrl_rtLegIkCtrl.o" "Ultimate_Walker_Rig1:walker_rt_knee_pv_ctrl.rtLegIkCtrl"
		;
connectAttr "pasted__walker_rt_knee_pv_ctrl_translateX.o" "Ultimate_Walker_Rig1:walker_rt_knee_pv_ctrl.tx"
		;
connectAttr "pasted__walker_rt_knee_pv_ctrl_translateY.o" "Ultimate_Walker_Rig1:walker_rt_knee_pv_ctrl.ty"
		;
connectAttr "pasted__walker_rt_knee_pv_ctrl_translateZ.o" "Ultimate_Walker_Rig1:walker_rt_knee_pv_ctrl.tz"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_knee_pv_ctrl_annLoc_pointConstraint1.ctx" "Ultimate_Walker_Rig1:walker_rt_knee_pv_ctrl_annLoc.tx"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_knee_pv_ctrl_annLoc_pointConstraint1.cty" "Ultimate_Walker_Rig1:walker_rt_knee_pv_ctrl_annLoc.ty"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_knee_pv_ctrl_annLoc_pointConstraint1.ctz" "Ultimate_Walker_Rig1:walker_rt_knee_pv_ctrl_annLoc.tz"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_knee_pv_ctrl_annLoc.pim" "Ultimate_Walker_Rig1:walker_rt_knee_pv_ctrl_annLoc_pointConstraint1.cpim"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_knee_pv_ctrl_annLoc.rp" "Ultimate_Walker_Rig1:walker_rt_knee_pv_ctrl_annLoc_pointConstraint1.crp"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_knee_pv_ctrl_annLoc.rpt" "Ultimate_Walker_Rig1:walker_rt_knee_pv_ctrl_annLoc_pointConstraint1.crt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_knee_pv_ctrl.t" "Ultimate_Walker_Rig1:walker_rt_knee_pv_ctrl_annLoc_pointConstraint1.tg[0].tt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_knee_pv_ctrl.rp" "Ultimate_Walker_Rig1:walker_rt_knee_pv_ctrl_annLoc_pointConstraint1.tg[0].trp"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_knee_pv_ctrl.rpt" "Ultimate_Walker_Rig1:walker_rt_knee_pv_ctrl_annLoc_pointConstraint1.tg[0].trt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_knee_pv_ctrl.pm" "Ultimate_Walker_Rig1:walker_rt_knee_pv_ctrl_annLoc_pointConstraint1.tg[0].tpm"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_knee_pv_ctrl_annLoc_pointConstraint1.w0" "Ultimate_Walker_Rig1:walker_rt_knee_pv_ctrl_annLoc_pointConstraint1.tg[0].tw"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_legStrDist_dist_spShape.wp" "Ultimate_Walker_Rig1:walker_rt_legStrDist_distShape.sp"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_legStrDist_dist_epShape.wp" "Ultimate_Walker_Rig1:walker_rt_legStrDist_distShape.ep"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_legStrDist_dist_sp_pointConstraint1.ctx" "Ultimate_Walker_Rig1:walker_rt_legStrDist_dist_sp.tx"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_legStrDist_dist_sp_pointConstraint1.cty" "Ultimate_Walker_Rig1:walker_rt_legStrDist_dist_sp.ty"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_legStrDist_dist_sp_pointConstraint1.ctz" "Ultimate_Walker_Rig1:walker_rt_legStrDist_dist_sp.tz"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_legStrDist_dist_sp.pim" "Ultimate_Walker_Rig1:walker_rt_legStrDist_dist_sp_pointConstraint1.cpim"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_legStrDist_dist_sp.rp" "Ultimate_Walker_Rig1:walker_rt_legStrDist_dist_sp_pointConstraint1.crp"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_legStrDist_dist_sp.rpt" "Ultimate_Walker_Rig1:walker_rt_legStrDist_dist_sp_pointConstraint1.crt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_upLeg_ik_jnt.t" "Ultimate_Walker_Rig1:walker_rt_legStrDist_dist_sp_pointConstraint1.tg[0].tt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_upLeg_ik_jnt.rp" "Ultimate_Walker_Rig1:walker_rt_legStrDist_dist_sp_pointConstraint1.tg[0].trp"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_upLeg_ik_jnt.rpt" "Ultimate_Walker_Rig1:walker_rt_legStrDist_dist_sp_pointConstraint1.tg[0].trt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_upLeg_ik_jnt.pm" "Ultimate_Walker_Rig1:walker_rt_legStrDist_dist_sp_pointConstraint1.tg[0].tpm"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_legStrDist_dist_sp_pointConstraint1.w0" "Ultimate_Walker_Rig1:walker_rt_legStrDist_dist_sp_pointConstraint1.tg[0].tw"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_legStrDist_dist_ep_pointConstraint1.ctx" "Ultimate_Walker_Rig1:walker_rt_legStrDist_dist_ep.tx"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_legStrDist_dist_ep_pointConstraint1.cty" "Ultimate_Walker_Rig1:walker_rt_legStrDist_dist_ep.ty"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_legStrDist_dist_ep_pointConstraint1.ctz" "Ultimate_Walker_Rig1:walker_rt_legStrDist_dist_ep.tz"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_legStrDist_dist_ep.pim" "Ultimate_Walker_Rig1:walker_rt_legStrDist_dist_ep_pointConstraint1.cpim"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_legStrDist_dist_ep.rp" "Ultimate_Walker_Rig1:walker_rt_legStrDist_dist_ep_pointConstraint1.crp"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_legStrDist_dist_ep.rpt" "Ultimate_Walker_Rig1:walker_rt_legStrDist_dist_ep_pointConstraint1.crt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_ankle_rev_rig_jnt.t" "Ultimate_Walker_Rig1:walker_rt_legStrDist_dist_ep_pointConstraint1.tg[0].tt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_ankle_rev_rig_jnt.rp" "Ultimate_Walker_Rig1:walker_rt_legStrDist_dist_ep_pointConstraint1.tg[0].trp"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_ankle_rev_rig_jnt.rpt" "Ultimate_Walker_Rig1:walker_rt_legStrDist_dist_ep_pointConstraint1.tg[0].trt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_ankle_rev_rig_jnt.pm" "Ultimate_Walker_Rig1:walker_rt_legStrDist_dist_ep_pointConstraint1.tg[0].tpm"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_legStrDist_dist_ep_pointConstraint1.w0" "Ultimate_Walker_Rig1:walker_rt_legStrDist_dist_ep_pointConstraint1.tg[0].tw"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_upLegPvCtrl_dist_spShape.wp" "Ultimate_Walker_Rig1:walker_rt_upLegPvCtrl_distShape.sp"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_upLegPvCtrl_dist_epShape.wp" "Ultimate_Walker_Rig1:walker_rt_upLegPvCtrl_distShape.ep"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_upLegPvCtrl_dist_sp_pointConstraint1.ctx" "Ultimate_Walker_Rig1:walker_rt_upLegPvCtrl_dist_sp.tx"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_upLegPvCtrl_dist_sp_pointConstraint1.cty" "Ultimate_Walker_Rig1:walker_rt_upLegPvCtrl_dist_sp.ty"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_upLegPvCtrl_dist_sp_pointConstraint1.ctz" "Ultimate_Walker_Rig1:walker_rt_upLegPvCtrl_dist_sp.tz"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_upLegPvCtrl_dist_sp.pim" "Ultimate_Walker_Rig1:walker_rt_upLegPvCtrl_dist_sp_pointConstraint1.cpim"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_upLegPvCtrl_dist_sp.rp" "Ultimate_Walker_Rig1:walker_rt_upLegPvCtrl_dist_sp_pointConstraint1.crp"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_upLegPvCtrl_dist_sp.rpt" "Ultimate_Walker_Rig1:walker_rt_upLegPvCtrl_dist_sp_pointConstraint1.crt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_upLeg_ik_jnt.t" "Ultimate_Walker_Rig1:walker_rt_upLegPvCtrl_dist_sp_pointConstraint1.tg[0].tt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_upLeg_ik_jnt.rp" "Ultimate_Walker_Rig1:walker_rt_upLegPvCtrl_dist_sp_pointConstraint1.tg[0].trp"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_upLeg_ik_jnt.rpt" "Ultimate_Walker_Rig1:walker_rt_upLegPvCtrl_dist_sp_pointConstraint1.tg[0].trt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_upLeg_ik_jnt.pm" "Ultimate_Walker_Rig1:walker_rt_upLegPvCtrl_dist_sp_pointConstraint1.tg[0].tpm"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_upLegPvCtrl_dist_sp_pointConstraint1.w0" "Ultimate_Walker_Rig1:walker_rt_upLegPvCtrl_dist_sp_pointConstraint1.tg[0].tw"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_upLegPvCtrl_dist_ep_pointConstraint1.ctx" "Ultimate_Walker_Rig1:walker_rt_upLegPvCtrl_dist_ep.tx"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_upLegPvCtrl_dist_ep_pointConstraint1.cty" "Ultimate_Walker_Rig1:walker_rt_upLegPvCtrl_dist_ep.ty"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_upLegPvCtrl_dist_ep_pointConstraint1.ctz" "Ultimate_Walker_Rig1:walker_rt_upLegPvCtrl_dist_ep.tz"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_upLegPvCtrl_dist_ep.pim" "Ultimate_Walker_Rig1:walker_rt_upLegPvCtrl_dist_ep_pointConstraint1.cpim"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_upLegPvCtrl_dist_ep.rp" "Ultimate_Walker_Rig1:walker_rt_upLegPvCtrl_dist_ep_pointConstraint1.crp"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_upLegPvCtrl_dist_ep.rpt" "Ultimate_Walker_Rig1:walker_rt_upLegPvCtrl_dist_ep_pointConstraint1.crt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_knee_pv_ctrl.t" "Ultimate_Walker_Rig1:walker_rt_upLegPvCtrl_dist_ep_pointConstraint1.tg[0].tt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_knee_pv_ctrl.rp" "Ultimate_Walker_Rig1:walker_rt_upLegPvCtrl_dist_ep_pointConstraint1.tg[0].trp"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_knee_pv_ctrl.rpt" "Ultimate_Walker_Rig1:walker_rt_upLegPvCtrl_dist_ep_pointConstraint1.tg[0].trt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_knee_pv_ctrl.pm" "Ultimate_Walker_Rig1:walker_rt_upLegPvCtrl_dist_ep_pointConstraint1.tg[0].tpm"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_upLegPvCtrl_dist_ep_pointConstraint1.w0" "Ultimate_Walker_Rig1:walker_rt_upLegPvCtrl_dist_ep_pointConstraint1.tg[0].tw"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_legPvIkCtrl_dist_spShape.wp" "Ultimate_Walker_Rig1:walker_rt_legPvIkCtrl_distShape.sp"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_legPvIkCtrl_dist_epShape.wp" "Ultimate_Walker_Rig1:walker_rt_legPvIkCtrl_distShape.ep"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_legPvIkCtrl_dist_sp_pointConstraint1.ctx" "Ultimate_Walker_Rig1:walker_rt_legPvIkCtrl_dist_sp.tx"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_legPvIkCtrl_dist_sp_pointConstraint1.cty" "Ultimate_Walker_Rig1:walker_rt_legPvIkCtrl_dist_sp.ty"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_legPvIkCtrl_dist_sp_pointConstraint1.ctz" "Ultimate_Walker_Rig1:walker_rt_legPvIkCtrl_dist_sp.tz"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_legPvIkCtrl_dist_sp.pim" "Ultimate_Walker_Rig1:walker_rt_legPvIkCtrl_dist_sp_pointConstraint1.cpim"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_legPvIkCtrl_dist_sp.rp" "Ultimate_Walker_Rig1:walker_rt_legPvIkCtrl_dist_sp_pointConstraint1.crp"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_legPvIkCtrl_dist_sp.rpt" "Ultimate_Walker_Rig1:walker_rt_legPvIkCtrl_dist_sp_pointConstraint1.crt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_knee_pv_ctrl.t" "Ultimate_Walker_Rig1:walker_rt_legPvIkCtrl_dist_sp_pointConstraint1.tg[0].tt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_knee_pv_ctrl.rp" "Ultimate_Walker_Rig1:walker_rt_legPvIkCtrl_dist_sp_pointConstraint1.tg[0].trp"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_knee_pv_ctrl.rpt" "Ultimate_Walker_Rig1:walker_rt_legPvIkCtrl_dist_sp_pointConstraint1.tg[0].trt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_knee_pv_ctrl.pm" "Ultimate_Walker_Rig1:walker_rt_legPvIkCtrl_dist_sp_pointConstraint1.tg[0].tpm"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_legPvIkCtrl_dist_sp_pointConstraint1.w0" "Ultimate_Walker_Rig1:walker_rt_legPvIkCtrl_dist_sp_pointConstraint1.tg[0].tw"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_legPvIkCtrl_dist_ep_pointConstraint1.ctx" "Ultimate_Walker_Rig1:walker_rt_legPvIkCtrl_dist_ep.tx"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_legPvIkCtrl_dist_ep_pointConstraint1.cty" "Ultimate_Walker_Rig1:walker_rt_legPvIkCtrl_dist_ep.ty"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_legPvIkCtrl_dist_ep_pointConstraint1.ctz" "Ultimate_Walker_Rig1:walker_rt_legPvIkCtrl_dist_ep.tz"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_legPvIkCtrl_dist_ep.pim" "Ultimate_Walker_Rig1:walker_rt_legPvIkCtrl_dist_ep_pointConstraint1.cpim"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_legPvIkCtrl_dist_ep.rp" "Ultimate_Walker_Rig1:walker_rt_legPvIkCtrl_dist_ep_pointConstraint1.crp"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_legPvIkCtrl_dist_ep.rpt" "Ultimate_Walker_Rig1:walker_rt_legPvIkCtrl_dist_ep_pointConstraint1.crt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_ankle_rev_rig_jnt.t" "Ultimate_Walker_Rig1:walker_rt_legPvIkCtrl_dist_ep_pointConstraint1.tg[0].tt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_ankle_rev_rig_jnt.rp" "Ultimate_Walker_Rig1:walker_rt_legPvIkCtrl_dist_ep_pointConstraint1.tg[0].trp"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_ankle_rev_rig_jnt.rpt" "Ultimate_Walker_Rig1:walker_rt_legPvIkCtrl_dist_ep_pointConstraint1.tg[0].trt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_ankle_rev_rig_jnt.pm" "Ultimate_Walker_Rig1:walker_rt_legPvIkCtrl_dist_ep_pointConstraint1.tg[0].tpm"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_legPvIkCtrl_dist_ep_pointConstraint1.w0" "Ultimate_Walker_Rig1:walker_rt_legPvIkCtrl_dist_ep_pointConstraint1.tg[0].tw"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rtLegIkCtrlSpace_par_cons.ctx" "Ultimate_Walker_Rig1:walker_rtLegIkCtrl_space_switch_grp.tx"
		 -l on;
connectAttr "Ultimate_Walker_Rig1:walker_rtLegIkCtrlSpace_par_cons.cty" "Ultimate_Walker_Rig1:walker_rtLegIkCtrl_space_switch_grp.ty"
		 -l on;
connectAttr "Ultimate_Walker_Rig1:walker_rtLegIkCtrlSpace_par_cons.ctz" "Ultimate_Walker_Rig1:walker_rtLegIkCtrl_space_switch_grp.tz"
		 -l on;
connectAttr "Ultimate_Walker_Rig1:walker_rtLegIkCtrlSpace_par_cons.crx" "Ultimate_Walker_Rig1:walker_rtLegIkCtrl_space_switch_grp.rx"
		 -l on;
connectAttr "Ultimate_Walker_Rig1:walker_rtLegIkCtrlSpace_par_cons.cry" "Ultimate_Walker_Rig1:walker_rtLegIkCtrl_space_switch_grp.ry"
		 -l on;
connectAttr "Ultimate_Walker_Rig1:walker_rtLegIkCtrlSpace_par_cons.crz" "Ultimate_Walker_Rig1:walker_rtLegIkCtrl_space_switch_grp.rz"
		 -l on;
connectAttr "Ultimate_Walker_Rig1:walker_rtLegIkCtrl_space_switch_grp.ro" "Ultimate_Walker_Rig1:walker_rtLegIkCtrlSpace_par_cons.cro"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rtLegIkCtrl_space_switch_grp.pim" "Ultimate_Walker_Rig1:walker_rtLegIkCtrlSpace_par_cons.cpim"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rtLegIkCtrl_space_switch_grp.rp" "Ultimate_Walker_Rig1:walker_rtLegIkCtrlSpace_par_cons.crp"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rtLegIkCtrl_space_switch_grp.rpt" "Ultimate_Walker_Rig1:walker_rtLegIkCtrlSpace_par_cons.crt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_heel_ik_ctrl.t" "Ultimate_Walker_Rig1:walker_rtLegIkCtrlSpace_par_cons.tg[0].tt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_heel_ik_ctrl.rp" "Ultimate_Walker_Rig1:walker_rtLegIkCtrlSpace_par_cons.tg[0].trp"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_heel_ik_ctrl.rpt" "Ultimate_Walker_Rig1:walker_rtLegIkCtrlSpace_par_cons.tg[0].trt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_heel_ik_ctrl.r" "Ultimate_Walker_Rig1:walker_rtLegIkCtrlSpace_par_cons.tg[0].tr"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_heel_ik_ctrl.ro" "Ultimate_Walker_Rig1:walker_rtLegIkCtrlSpace_par_cons.tg[0].tro"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_heel_ik_ctrl.s" "Ultimate_Walker_Rig1:walker_rtLegIkCtrlSpace_par_cons.tg[0].ts"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_heel_ik_ctrl.pm" "Ultimate_Walker_Rig1:walker_rtLegIkCtrlSpace_par_cons.tg[0].tpm"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rtLegIkCtrlSpace_par_cons.w0" "Ultimate_Walker_Rig1:walker_rtLegIkCtrlSpace_par_cons.tg[0].tw"
		;
connectAttr "Ultimate_Walker_Rig1:Rig_Leg_grp.ro" "Ultimate_Walker_Rig1:Rig_Leg_grp_parentConstraint1.cro"
		;
connectAttr "Ultimate_Walker_Rig1:Rig_Leg_grp.pim" "Ultimate_Walker_Rig1:Rig_Leg_grp_parentConstraint1.cpim"
		;
connectAttr "Ultimate_Walker_Rig1:Rig_Leg_grp.rp" "Ultimate_Walker_Rig1:Rig_Leg_grp_parentConstraint1.crp"
		;
connectAttr "Ultimate_Walker_Rig1:Rig_Leg_grp.rpt" "Ultimate_Walker_Rig1:Rig_Leg_grp_parentConstraint1.crt"
		;
connectAttr "Ultimate_Walker_Rig1:CTRL_Root.t" "Ultimate_Walker_Rig1:Rig_Leg_grp_parentConstraint1.tg[0].tt"
		;
connectAttr "Ultimate_Walker_Rig1:CTRL_Root.rp" "Ultimate_Walker_Rig1:Rig_Leg_grp_parentConstraint1.tg[0].trp"
		;
connectAttr "Ultimate_Walker_Rig1:CTRL_Root.rpt" "Ultimate_Walker_Rig1:Rig_Leg_grp_parentConstraint1.tg[0].trt"
		;
connectAttr "Ultimate_Walker_Rig1:CTRL_Root.r" "Ultimate_Walker_Rig1:Rig_Leg_grp_parentConstraint1.tg[0].tr"
		;
connectAttr "Ultimate_Walker_Rig1:CTRL_Root.ro" "Ultimate_Walker_Rig1:Rig_Leg_grp_parentConstraint1.tg[0].tro"
		;
connectAttr "Ultimate_Walker_Rig1:CTRL_Root.s" "Ultimate_Walker_Rig1:Rig_Leg_grp_parentConstraint1.tg[0].ts"
		;
connectAttr "Ultimate_Walker_Rig1:CTRL_Root.pm" "Ultimate_Walker_Rig1:Rig_Leg_grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ultimate_Walker_Rig1:Rig_Leg_grp_parentConstraint1.w0" "Ultimate_Walker_Rig1:Rig_Leg_grp_parentConstraint1.tg[0].tw"
		;
connectAttr "Ultimate_Walker_Rig1:CTRL_Root.Global_Scale" "Ultimate_Walker_Rig1:Skeleton_grp.sx"
		 -l on;
connectAttr "Ultimate_Walker_Rig1:CTRL_Root.Global_Scale" "Ultimate_Walker_Rig1:Skeleton_grp.sy"
		 -l on;
connectAttr "Ultimate_Walker_Rig1:CTRL_Root.Global_Scale" "Ultimate_Walker_Rig1:Skeleton_grp.sz"
		 -l on;
connectAttr "Ultimate_Walker_Rig1:walker_hip_jnt_parentConstraint1.ctx" "Ultimate_Walker_Rig1:walker_hip_jnt.tx"
		 -l on;
connectAttr "Ultimate_Walker_Rig1:walker_hip_jnt_parentConstraint1.cty" "Ultimate_Walker_Rig1:walker_hip_jnt.ty"
		 -l on;
connectAttr "Ultimate_Walker_Rig1:walker_hip_jnt_parentConstraint1.ctz" "Ultimate_Walker_Rig1:walker_hip_jnt.tz"
		 -l on;
connectAttr "Ultimate_Walker_Rig1:walker_hip_jnt_parentConstraint1.crx" "Ultimate_Walker_Rig1:walker_hip_jnt.rx"
		 -l on;
connectAttr "Ultimate_Walker_Rig1:walker_hip_jnt_parentConstraint1.cry" "Ultimate_Walker_Rig1:walker_hip_jnt.ry"
		 -l on;
connectAttr "Ultimate_Walker_Rig1:walker_hip_jnt_parentConstraint1.crz" "Ultimate_Walker_Rig1:walker_hip_jnt.rz"
		 -l on;
connectAttr "Ultimate_Walker_Rig1:walker_lf_upLeg_ikFkCons.crx" "Ultimate_Walker_Rig1:walker_lf_upLeg_jnt.rx"
		 -l on;
connectAttr "Ultimate_Walker_Rig1:walker_lf_upLeg_ikFkCons.cry" "Ultimate_Walker_Rig1:walker_lf_upLeg_jnt.ry"
		 -l on;
connectAttr "Ultimate_Walker_Rig1:walker_lf_upLeg_ikFkCons.crz" "Ultimate_Walker_Rig1:walker_lf_upLeg_jnt.rz"
		 -l on;
connectAttr "Ultimate_Walker_Rig1:walker_hip_jnt.s" "Ultimate_Walker_Rig1:walker_lf_upLeg_jnt.is"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_legTrans_blend.opr" "Ultimate_Walker_Rig1:walker_lf_knee_jnt.tx"
		 -l on;
connectAttr "Ultimate_Walker_Rig1:walker_lf_knee_ikFkCons.crx" "Ultimate_Walker_Rig1:walker_lf_knee_jnt.rx"
		 -l on;
connectAttr "Ultimate_Walker_Rig1:walker_lf_knee_ikFkCons.cry" "Ultimate_Walker_Rig1:walker_lf_knee_jnt.ry"
		 -l on;
connectAttr "Ultimate_Walker_Rig1:walker_lf_knee_ikFkCons.crz" "Ultimate_Walker_Rig1:walker_lf_knee_jnt.rz"
		 -l on;
connectAttr "Ultimate_Walker_Rig1:walker_lf_upLeg_jnt.s" "Ultimate_Walker_Rig1:walker_lf_knee_jnt.is"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_legTrans_blend.opg" "Ultimate_Walker_Rig1:walker_lf_ankle_jnt.tx"
		 -l on;
connectAttr "Ultimate_Walker_Rig1:walker_lf_ankle_ikFkCons.crx" "Ultimate_Walker_Rig1:walker_lf_ankle_jnt.rx"
		 -l on;
connectAttr "Ultimate_Walker_Rig1:walker_lf_ankle_ikFkCons.cry" "Ultimate_Walker_Rig1:walker_lf_ankle_jnt.ry"
		 -l on;
connectAttr "Ultimate_Walker_Rig1:walker_lf_ankle_ikFkCons.crz" "Ultimate_Walker_Rig1:walker_lf_ankle_jnt.rz"
		 -l on;
connectAttr "Ultimate_Walker_Rig1:walker_lf_knee_jnt.s" "Ultimate_Walker_Rig1:walker_lf_ankle_jnt.is"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_ball_ikFkCons.crx" "Ultimate_Walker_Rig1:walker_lf_ball_jnt.rx"
		 -l on;
connectAttr "Ultimate_Walker_Rig1:walker_lf_ball_ikFkCons.cry" "Ultimate_Walker_Rig1:walker_lf_ball_jnt.ry"
		 -l on;
connectAttr "Ultimate_Walker_Rig1:walker_lf_ball_ikFkCons.crz" "Ultimate_Walker_Rig1:walker_lf_ball_jnt.rz"
		 -l on;
connectAttr "Ultimate_Walker_Rig1:walker_lf_ankle_jnt.s" "Ultimate_Walker_Rig1:walker_lf_ball_jnt.is"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_toe_ikFkCons.crx" "Ultimate_Walker_Rig1:walker_lf_toe_jnt.rx"
		 -l on;
connectAttr "Ultimate_Walker_Rig1:walker_lf_toe_ikFkCons.cry" "Ultimate_Walker_Rig1:walker_lf_toe_jnt.ry"
		 -l on;
connectAttr "Ultimate_Walker_Rig1:walker_lf_toe_ikFkCons.crz" "Ultimate_Walker_Rig1:walker_lf_toe_jnt.rz"
		 -l on;
connectAttr "Ultimate_Walker_Rig1:walker_lf_ball_jnt.s" "Ultimate_Walker_Rig1:walker_lf_toe_jnt.is"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_toe_jnt.ro" "Ultimate_Walker_Rig1:walker_lf_toe_ikFkCons.cro"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_toe_jnt.pim" "Ultimate_Walker_Rig1:walker_lf_toe_ikFkCons.cpim"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_toe_jnt.jo" "Ultimate_Walker_Rig1:walker_lf_toe_ikFkCons.cjo"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_toe_ik_jnt.r" "Ultimate_Walker_Rig1:walker_lf_toe_ikFkCons.tg[0].tr"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_toe_ik_jnt.ro" "Ultimate_Walker_Rig1:walker_lf_toe_ikFkCons.tg[0].tro"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_toe_ik_jnt.pm" "Ultimate_Walker_Rig1:walker_lf_toe_ikFkCons.tg[0].tpm"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_toe_ik_jnt.jo" "Ultimate_Walker_Rig1:walker_lf_toe_ikFkCons.tg[0].tjo"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_toe_ikFkCons.w0" "Ultimate_Walker_Rig1:walker_lf_toe_ikFkCons.tg[0].tw"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_foot_ctrl.ikFkBlend" "Ultimate_Walker_Rig1:walker_lf_toe_ikFkCons.w0"
		 -l on;
connectAttr "Ultimate_Walker_Rig1:walker_lf_ball_jnt.ro" "Ultimate_Walker_Rig1:walker_lf_ball_ikFkCons.cro"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_ball_jnt.pim" "Ultimate_Walker_Rig1:walker_lf_ball_ikFkCons.cpim"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_ball_jnt.jo" "Ultimate_Walker_Rig1:walker_lf_ball_ikFkCons.cjo"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_ball_ik_jnt.r" "Ultimate_Walker_Rig1:walker_lf_ball_ikFkCons.tg[0].tr"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_ball_ik_jnt.ro" "Ultimate_Walker_Rig1:walker_lf_ball_ikFkCons.tg[0].tro"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_ball_ik_jnt.pm" "Ultimate_Walker_Rig1:walker_lf_ball_ikFkCons.tg[0].tpm"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_ball_ik_jnt.jo" "Ultimate_Walker_Rig1:walker_lf_ball_ikFkCons.tg[0].tjo"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_ball_ikFkCons.w0" "Ultimate_Walker_Rig1:walker_lf_ball_ikFkCons.tg[0].tw"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_ball_fk_jnt.r" "Ultimate_Walker_Rig1:walker_lf_ball_ikFkCons.tg[1].tr"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_ball_fk_jnt.ro" "Ultimate_Walker_Rig1:walker_lf_ball_ikFkCons.tg[1].tro"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_ball_fk_jnt.pm" "Ultimate_Walker_Rig1:walker_lf_ball_ikFkCons.tg[1].tpm"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_ball_fk_jnt.jo" "Ultimate_Walker_Rig1:walker_lf_ball_ikFkCons.tg[1].tjo"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_ball_ikFkCons.w1" "Ultimate_Walker_Rig1:walker_lf_ball_ikFkCons.tg[1].tw"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_foot_ctrl.ikFkBlend" "Ultimate_Walker_Rig1:walker_lf_ball_ikFkCons.w0"
		 -l on;
connectAttr "Ultimate_Walker_Rig1:walker_lf_legIkFkSwitch_reverse.ox" "Ultimate_Walker_Rig1:walker_lf_ball_ikFkCons.w1"
		 -l on;
connectAttr "Ultimate_Walker_Rig1:walker_lf_ankle_jnt.ro" "Ultimate_Walker_Rig1:walker_lf_ankle_ikFkCons.cro"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_ankle_jnt.pim" "Ultimate_Walker_Rig1:walker_lf_ankle_ikFkCons.cpim"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_ankle_jnt.jo" "Ultimate_Walker_Rig1:walker_lf_ankle_ikFkCons.cjo"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_ankle_rev_rig_jnt.r" "Ultimate_Walker_Rig1:walker_lf_ankle_ikFkCons.tg[0].tr"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_ankle_rev_rig_jnt.ro" "Ultimate_Walker_Rig1:walker_lf_ankle_ikFkCons.tg[0].tro"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_ankle_rev_rig_jnt.pm" "Ultimate_Walker_Rig1:walker_lf_ankle_ikFkCons.tg[0].tpm"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_ankle_rev_rig_jnt.jo" "Ultimate_Walker_Rig1:walker_lf_ankle_ikFkCons.tg[0].tjo"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_ankle_ikFkCons.w0" "Ultimate_Walker_Rig1:walker_lf_ankle_ikFkCons.tg[0].tw"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_ankle_fk_jnt.r" "Ultimate_Walker_Rig1:walker_lf_ankle_ikFkCons.tg[1].tr"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_ankle_fk_jnt.ro" "Ultimate_Walker_Rig1:walker_lf_ankle_ikFkCons.tg[1].tro"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_ankle_fk_jnt.pm" "Ultimate_Walker_Rig1:walker_lf_ankle_ikFkCons.tg[1].tpm"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_ankle_fk_jnt.jo" "Ultimate_Walker_Rig1:walker_lf_ankle_ikFkCons.tg[1].tjo"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_ankle_ikFkCons.w1" "Ultimate_Walker_Rig1:walker_lf_ankle_ikFkCons.tg[1].tw"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_foot_ctrl.ikFkBlend" "Ultimate_Walker_Rig1:walker_lf_ankle_ikFkCons.w0"
		 -l on;
connectAttr "Ultimate_Walker_Rig1:walker_lf_legIkFkSwitch_reverse.ox" "Ultimate_Walker_Rig1:walker_lf_ankle_ikFkCons.w1"
		 -l on;
connectAttr "Ultimate_Walker_Rig1:walker_lf_knee_jnt.ro" "Ultimate_Walker_Rig1:walker_lf_knee_ikFkCons.cro"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_knee_jnt.pim" "Ultimate_Walker_Rig1:walker_lf_knee_ikFkCons.cpim"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_knee_jnt.jo" "Ultimate_Walker_Rig1:walker_lf_knee_ikFkCons.cjo"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_knee_ik_jnt.r" "Ultimate_Walker_Rig1:walker_lf_knee_ikFkCons.tg[0].tr"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_knee_ik_jnt.ro" "Ultimate_Walker_Rig1:walker_lf_knee_ikFkCons.tg[0].tro"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_knee_ik_jnt.pm" "Ultimate_Walker_Rig1:walker_lf_knee_ikFkCons.tg[0].tpm"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_knee_ik_jnt.jo" "Ultimate_Walker_Rig1:walker_lf_knee_ikFkCons.tg[0].tjo"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_knee_ikFkCons.w0" "Ultimate_Walker_Rig1:walker_lf_knee_ikFkCons.tg[0].tw"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_knee_fk_jnt.r" "Ultimate_Walker_Rig1:walker_lf_knee_ikFkCons.tg[1].tr"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_knee_fk_jnt.ro" "Ultimate_Walker_Rig1:walker_lf_knee_ikFkCons.tg[1].tro"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_knee_fk_jnt.pm" "Ultimate_Walker_Rig1:walker_lf_knee_ikFkCons.tg[1].tpm"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_knee_fk_jnt.jo" "Ultimate_Walker_Rig1:walker_lf_knee_ikFkCons.tg[1].tjo"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_knee_ikFkCons.w1" "Ultimate_Walker_Rig1:walker_lf_knee_ikFkCons.tg[1].tw"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_foot_ctrl.ikFkBlend" "Ultimate_Walker_Rig1:walker_lf_knee_ikFkCons.w0"
		 -l on;
connectAttr "Ultimate_Walker_Rig1:walker_lf_legIkFkSwitch_reverse.ox" "Ultimate_Walker_Rig1:walker_lf_knee_ikFkCons.w1"
		 -l on;
connectAttr "Ultimate_Walker_Rig1:walker_lf_upLeg_jnt.ro" "Ultimate_Walker_Rig1:walker_lf_upLeg_ikFkCons.cro"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_upLeg_jnt.pim" "Ultimate_Walker_Rig1:walker_lf_upLeg_ikFkCons.cpim"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_upLeg_jnt.jo" "Ultimate_Walker_Rig1:walker_lf_upLeg_ikFkCons.cjo"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_upLeg_ik_jnt.r" "Ultimate_Walker_Rig1:walker_lf_upLeg_ikFkCons.tg[0].tr"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_upLeg_ik_jnt.ro" "Ultimate_Walker_Rig1:walker_lf_upLeg_ikFkCons.tg[0].tro"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_upLeg_ik_jnt.pm" "Ultimate_Walker_Rig1:walker_lf_upLeg_ikFkCons.tg[0].tpm"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_upLeg_ik_jnt.jo" "Ultimate_Walker_Rig1:walker_lf_upLeg_ikFkCons.tg[0].tjo"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_upLeg_ikFkCons.w0" "Ultimate_Walker_Rig1:walker_lf_upLeg_ikFkCons.tg[0].tw"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_upLeg_fk_jnt.r" "Ultimate_Walker_Rig1:walker_lf_upLeg_ikFkCons.tg[1].tr"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_upLeg_fk_jnt.ro" "Ultimate_Walker_Rig1:walker_lf_upLeg_ikFkCons.tg[1].tro"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_upLeg_fk_jnt.pm" "Ultimate_Walker_Rig1:walker_lf_upLeg_ikFkCons.tg[1].tpm"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_upLeg_fk_jnt.jo" "Ultimate_Walker_Rig1:walker_lf_upLeg_ikFkCons.tg[1].tjo"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_upLeg_ikFkCons.w1" "Ultimate_Walker_Rig1:walker_lf_upLeg_ikFkCons.tg[1].tw"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_foot_ctrl.ikFkBlend" "Ultimate_Walker_Rig1:walker_lf_upLeg_ikFkCons.w0"
		 -l on;
connectAttr "Ultimate_Walker_Rig1:walker_lf_legIkFkSwitch_reverse.ox" "Ultimate_Walker_Rig1:walker_lf_upLeg_ikFkCons.w1"
		 -l on;
connectAttr "Ultimate_Walker_Rig1:walker_rt_upLeg_ikFkCons.crx" "Ultimate_Walker_Rig1:walker_rt_upLeg_jnt.rx"
		 -l on;
connectAttr "Ultimate_Walker_Rig1:walker_rt_upLeg_ikFkCons.cry" "Ultimate_Walker_Rig1:walker_rt_upLeg_jnt.ry"
		 -l on;
connectAttr "Ultimate_Walker_Rig1:walker_rt_upLeg_ikFkCons.crz" "Ultimate_Walker_Rig1:walker_rt_upLeg_jnt.rz"
		 -l on;
connectAttr "Ultimate_Walker_Rig1:walker_hip_jnt.s" "Ultimate_Walker_Rig1:walker_rt_upLeg_jnt.is"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_legTrans_blend.opr" "Ultimate_Walker_Rig1:walker_rt_knee_jnt.tx"
		 -l on;
connectAttr "Ultimate_Walker_Rig1:walker_rt_knee_ikFkCons.crx" "Ultimate_Walker_Rig1:walker_rt_knee_jnt.rx"
		 -l on;
connectAttr "Ultimate_Walker_Rig1:walker_rt_knee_ikFkCons.cry" "Ultimate_Walker_Rig1:walker_rt_knee_jnt.ry"
		 -l on;
connectAttr "Ultimate_Walker_Rig1:walker_rt_knee_ikFkCons.crz" "Ultimate_Walker_Rig1:walker_rt_knee_jnt.rz"
		 -l on;
connectAttr "Ultimate_Walker_Rig1:walker_rt_upLeg_jnt.s" "Ultimate_Walker_Rig1:walker_rt_knee_jnt.is"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_legTrans_blend.opg" "Ultimate_Walker_Rig1:walker_rt_ankle_jnt.tx"
		 -l on;
connectAttr "Ultimate_Walker_Rig1:walker_rt_ankle_ikFkCons.crx" "Ultimate_Walker_Rig1:walker_rt_ankle_jnt.rx"
		 -l on;
connectAttr "Ultimate_Walker_Rig1:walker_rt_ankle_ikFkCons.cry" "Ultimate_Walker_Rig1:walker_rt_ankle_jnt.ry"
		 -l on;
connectAttr "Ultimate_Walker_Rig1:walker_rt_ankle_ikFkCons.crz" "Ultimate_Walker_Rig1:walker_rt_ankle_jnt.rz"
		 -l on;
connectAttr "Ultimate_Walker_Rig1:walker_rt_knee_jnt.s" "Ultimate_Walker_Rig1:walker_rt_ankle_jnt.is"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_ball_ikFkCons.crx" "Ultimate_Walker_Rig1:walker_rt_ball_jnt.rx"
		 -l on;
connectAttr "Ultimate_Walker_Rig1:walker_rt_ball_ikFkCons.cry" "Ultimate_Walker_Rig1:walker_rt_ball_jnt.ry"
		 -l on;
connectAttr "Ultimate_Walker_Rig1:walker_rt_ball_ikFkCons.crz" "Ultimate_Walker_Rig1:walker_rt_ball_jnt.rz"
		 -l on;
connectAttr "Ultimate_Walker_Rig1:walker_rt_ankle_jnt.s" "Ultimate_Walker_Rig1:walker_rt_ball_jnt.is"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_toe_ikFkCons.crx" "Ultimate_Walker_Rig1:walker_rt_toe_jnt.rx"
		 -l on;
connectAttr "Ultimate_Walker_Rig1:walker_rt_toe_ikFkCons.cry" "Ultimate_Walker_Rig1:walker_rt_toe_jnt.ry"
		 -l on;
connectAttr "Ultimate_Walker_Rig1:walker_rt_toe_ikFkCons.crz" "Ultimate_Walker_Rig1:walker_rt_toe_jnt.rz"
		 -l on;
connectAttr "Ultimate_Walker_Rig1:walker_rt_ball_jnt.s" "Ultimate_Walker_Rig1:walker_rt_toe_jnt.is"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_toe_jnt.ro" "Ultimate_Walker_Rig1:walker_rt_toe_ikFkCons.cro"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_toe_jnt.pim" "Ultimate_Walker_Rig1:walker_rt_toe_ikFkCons.cpim"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_toe_jnt.jo" "Ultimate_Walker_Rig1:walker_rt_toe_ikFkCons.cjo"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_toe_ik_jnt.r" "Ultimate_Walker_Rig1:walker_rt_toe_ikFkCons.tg[0].tr"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_toe_ik_jnt.ro" "Ultimate_Walker_Rig1:walker_rt_toe_ikFkCons.tg[0].tro"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_toe_ik_jnt.pm" "Ultimate_Walker_Rig1:walker_rt_toe_ikFkCons.tg[0].tpm"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_toe_ik_jnt.jo" "Ultimate_Walker_Rig1:walker_rt_toe_ikFkCons.tg[0].tjo"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_toe_ikFkCons.w0" "Ultimate_Walker_Rig1:walker_rt_toe_ikFkCons.tg[0].tw"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_foot_ctrl.ikFkBlend" "Ultimate_Walker_Rig1:walker_rt_toe_ikFkCons.w0"
		 -l on;
connectAttr "Ultimate_Walker_Rig1:walker_rt_ball_jnt.ro" "Ultimate_Walker_Rig1:walker_rt_ball_ikFkCons.cro"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_ball_jnt.pim" "Ultimate_Walker_Rig1:walker_rt_ball_ikFkCons.cpim"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_ball_jnt.jo" "Ultimate_Walker_Rig1:walker_rt_ball_ikFkCons.cjo"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_ball_ik_jnt.r" "Ultimate_Walker_Rig1:walker_rt_ball_ikFkCons.tg[0].tr"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_ball_ik_jnt.ro" "Ultimate_Walker_Rig1:walker_rt_ball_ikFkCons.tg[0].tro"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_ball_ik_jnt.pm" "Ultimate_Walker_Rig1:walker_rt_ball_ikFkCons.tg[0].tpm"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_ball_ik_jnt.jo" "Ultimate_Walker_Rig1:walker_rt_ball_ikFkCons.tg[0].tjo"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_ball_ikFkCons.w0" "Ultimate_Walker_Rig1:walker_rt_ball_ikFkCons.tg[0].tw"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_ball_fk_jnt.r" "Ultimate_Walker_Rig1:walker_rt_ball_ikFkCons.tg[1].tr"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_ball_fk_jnt.ro" "Ultimate_Walker_Rig1:walker_rt_ball_ikFkCons.tg[1].tro"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_ball_fk_jnt.pm" "Ultimate_Walker_Rig1:walker_rt_ball_ikFkCons.tg[1].tpm"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_ball_fk_jnt.jo" "Ultimate_Walker_Rig1:walker_rt_ball_ikFkCons.tg[1].tjo"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_ball_ikFkCons.w1" "Ultimate_Walker_Rig1:walker_rt_ball_ikFkCons.tg[1].tw"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_foot_ctrl.ikFkBlend" "Ultimate_Walker_Rig1:walker_rt_ball_ikFkCons.w0"
		 -l on;
connectAttr "Ultimate_Walker_Rig1:walker_rt_legIkFkSwitch_reverse.ox" "Ultimate_Walker_Rig1:walker_rt_ball_ikFkCons.w1"
		 -l on;
connectAttr "Ultimate_Walker_Rig1:walker_rt_ankle_jnt.ro" "Ultimate_Walker_Rig1:walker_rt_ankle_ikFkCons.cro"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_ankle_jnt.pim" "Ultimate_Walker_Rig1:walker_rt_ankle_ikFkCons.cpim"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_ankle_jnt.jo" "Ultimate_Walker_Rig1:walker_rt_ankle_ikFkCons.cjo"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_ankle_rev_rig_jnt.r" "Ultimate_Walker_Rig1:walker_rt_ankle_ikFkCons.tg[0].tr"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_ankle_rev_rig_jnt.ro" "Ultimate_Walker_Rig1:walker_rt_ankle_ikFkCons.tg[0].tro"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_ankle_rev_rig_jnt.pm" "Ultimate_Walker_Rig1:walker_rt_ankle_ikFkCons.tg[0].tpm"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_ankle_rev_rig_jnt.jo" "Ultimate_Walker_Rig1:walker_rt_ankle_ikFkCons.tg[0].tjo"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_ankle_ikFkCons.w0" "Ultimate_Walker_Rig1:walker_rt_ankle_ikFkCons.tg[0].tw"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_ankle_fk_jnt.r" "Ultimate_Walker_Rig1:walker_rt_ankle_ikFkCons.tg[1].tr"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_ankle_fk_jnt.ro" "Ultimate_Walker_Rig1:walker_rt_ankle_ikFkCons.tg[1].tro"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_ankle_fk_jnt.pm" "Ultimate_Walker_Rig1:walker_rt_ankle_ikFkCons.tg[1].tpm"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_ankle_fk_jnt.jo" "Ultimate_Walker_Rig1:walker_rt_ankle_ikFkCons.tg[1].tjo"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_ankle_ikFkCons.w1" "Ultimate_Walker_Rig1:walker_rt_ankle_ikFkCons.tg[1].tw"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_foot_ctrl.ikFkBlend" "Ultimate_Walker_Rig1:walker_rt_ankle_ikFkCons.w0"
		 -l on;
connectAttr "Ultimate_Walker_Rig1:walker_rt_legIkFkSwitch_reverse.ox" "Ultimate_Walker_Rig1:walker_rt_ankle_ikFkCons.w1"
		 -l on;
connectAttr "Ultimate_Walker_Rig1:walker_rt_knee_jnt.ro" "Ultimate_Walker_Rig1:walker_rt_knee_ikFkCons.cro"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_knee_jnt.pim" "Ultimate_Walker_Rig1:walker_rt_knee_ikFkCons.cpim"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_knee_jnt.jo" "Ultimate_Walker_Rig1:walker_rt_knee_ikFkCons.cjo"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_knee_ik_jnt.r" "Ultimate_Walker_Rig1:walker_rt_knee_ikFkCons.tg[0].tr"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_knee_ik_jnt.ro" "Ultimate_Walker_Rig1:walker_rt_knee_ikFkCons.tg[0].tro"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_knee_ik_jnt.pm" "Ultimate_Walker_Rig1:walker_rt_knee_ikFkCons.tg[0].tpm"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_knee_ik_jnt.jo" "Ultimate_Walker_Rig1:walker_rt_knee_ikFkCons.tg[0].tjo"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_knee_ikFkCons.w0" "Ultimate_Walker_Rig1:walker_rt_knee_ikFkCons.tg[0].tw"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_knee_fk_jnt.r" "Ultimate_Walker_Rig1:walker_rt_knee_ikFkCons.tg[1].tr"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_knee_fk_jnt.ro" "Ultimate_Walker_Rig1:walker_rt_knee_ikFkCons.tg[1].tro"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_knee_fk_jnt.pm" "Ultimate_Walker_Rig1:walker_rt_knee_ikFkCons.tg[1].tpm"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_knee_fk_jnt.jo" "Ultimate_Walker_Rig1:walker_rt_knee_ikFkCons.tg[1].tjo"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_knee_ikFkCons.w1" "Ultimate_Walker_Rig1:walker_rt_knee_ikFkCons.tg[1].tw"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_foot_ctrl.ikFkBlend" "Ultimate_Walker_Rig1:walker_rt_knee_ikFkCons.w0"
		 -l on;
connectAttr "Ultimate_Walker_Rig1:walker_rt_legIkFkSwitch_reverse.ox" "Ultimate_Walker_Rig1:walker_rt_knee_ikFkCons.w1"
		 -l on;
connectAttr "Ultimate_Walker_Rig1:walker_rt_upLeg_jnt.ro" "Ultimate_Walker_Rig1:walker_rt_upLeg_ikFkCons.cro"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_upLeg_jnt.pim" "Ultimate_Walker_Rig1:walker_rt_upLeg_ikFkCons.cpim"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_upLeg_jnt.jo" "Ultimate_Walker_Rig1:walker_rt_upLeg_ikFkCons.cjo"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_upLeg_ik_jnt.r" "Ultimate_Walker_Rig1:walker_rt_upLeg_ikFkCons.tg[0].tr"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_upLeg_ik_jnt.ro" "Ultimate_Walker_Rig1:walker_rt_upLeg_ikFkCons.tg[0].tro"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_upLeg_ik_jnt.pm" "Ultimate_Walker_Rig1:walker_rt_upLeg_ikFkCons.tg[0].tpm"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_upLeg_ik_jnt.jo" "Ultimate_Walker_Rig1:walker_rt_upLeg_ikFkCons.tg[0].tjo"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_upLeg_ikFkCons.w0" "Ultimate_Walker_Rig1:walker_rt_upLeg_ikFkCons.tg[0].tw"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_upLeg_fk_jnt.r" "Ultimate_Walker_Rig1:walker_rt_upLeg_ikFkCons.tg[1].tr"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_upLeg_fk_jnt.ro" "Ultimate_Walker_Rig1:walker_rt_upLeg_ikFkCons.tg[1].tro"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_upLeg_fk_jnt.pm" "Ultimate_Walker_Rig1:walker_rt_upLeg_ikFkCons.tg[1].tpm"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_upLeg_fk_jnt.jo" "Ultimate_Walker_Rig1:walker_rt_upLeg_ikFkCons.tg[1].tjo"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_upLeg_ikFkCons.w1" "Ultimate_Walker_Rig1:walker_rt_upLeg_ikFkCons.tg[1].tw"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_foot_ctrl.ikFkBlend" "Ultimate_Walker_Rig1:walker_rt_upLeg_ikFkCons.w0"
		 -l on;
connectAttr "Ultimate_Walker_Rig1:walker_rt_legIkFkSwitch_reverse.ox" "Ultimate_Walker_Rig1:walker_rt_upLeg_ikFkCons.w1"
		 -l on;
connectAttr "Ultimate_Walker_Rig1:walker_hip_jnt.ro" "Ultimate_Walker_Rig1:walker_hip_jnt_parentConstraint1.cro"
		;
connectAttr "Ultimate_Walker_Rig1:walker_hip_jnt.pim" "Ultimate_Walker_Rig1:walker_hip_jnt_parentConstraint1.cpim"
		;
connectAttr "Ultimate_Walker_Rig1:walker_hip_jnt.rp" "Ultimate_Walker_Rig1:walker_hip_jnt_parentConstraint1.crp"
		;
connectAttr "Ultimate_Walker_Rig1:walker_hip_jnt.rpt" "Ultimate_Walker_Rig1:walker_hip_jnt_parentConstraint1.crt"
		;
connectAttr "Ultimate_Walker_Rig1:walker_hip_jnt.jo" "Ultimate_Walker_Rig1:walker_hip_jnt_parentConstraint1.cjo"
		;
connectAttr "Ultimate_Walker_Rig1:CTRL_Main.t" "Ultimate_Walker_Rig1:walker_hip_jnt_parentConstraint1.tg[0].tt"
		;
connectAttr "Ultimate_Walker_Rig1:CTRL_Main.rp" "Ultimate_Walker_Rig1:walker_hip_jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "Ultimate_Walker_Rig1:CTRL_Main.rpt" "Ultimate_Walker_Rig1:walker_hip_jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "Ultimate_Walker_Rig1:CTRL_Main.r" "Ultimate_Walker_Rig1:walker_hip_jnt_parentConstraint1.tg[0].tr"
		;
connectAttr "Ultimate_Walker_Rig1:CTRL_Main.ro" "Ultimate_Walker_Rig1:walker_hip_jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "Ultimate_Walker_Rig1:CTRL_Main.s" "Ultimate_Walker_Rig1:walker_hip_jnt_parentConstraint1.tg[0].ts"
		;
connectAttr "Ultimate_Walker_Rig1:CTRL_Main.pm" "Ultimate_Walker_Rig1:walker_hip_jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ultimate_Walker_Rig1:walker_hip_jnt_parentConstraint1.w0" "Ultimate_Walker_Rig1:walker_hip_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "Ultimate_Walker_Rig1:CTRL_Root.Global_Scale" "Ultimate_Walker_Rig1:Body_Rig_Grp.sx"
		 -l on;
connectAttr "Ultimate_Walker_Rig1:CTRL_Root.Global_Scale" "Ultimate_Walker_Rig1:Body_Rig_Grp.sz"
		 -l on;
connectAttr "Ultimate_Walker_Rig1:CTRL_Root.Global_Scale" "Ultimate_Walker_Rig1:Body_Rig_Grp.sy"
		 -l on;
connectAttr "Ultimate_Walker_Rig1:CNT_Grp_visibility.o" "Ultimate_Walker_Rig1:CNT_Grp.v"
		 -l on;
connectAttr "Ultimate_Walker_Rig1:CTRL_Main_Grp_pConst.ctx" "Ultimate_Walker_Rig1:CTRL_Main_Grp.tx"
		 -l on;
connectAttr "Ultimate_Walker_Rig1:CTRL_Main_Grp_pConst.cty" "Ultimate_Walker_Rig1:CTRL_Main_Grp.ty"
		 -l on;
connectAttr "Ultimate_Walker_Rig1:CTRL_Main_Grp_pConst.ctz" "Ultimate_Walker_Rig1:CTRL_Main_Grp.tz"
		 -l on;
connectAttr "Ultimate_Walker_Rig1:CTRL_Main_Grp_pConst.crx" "Ultimate_Walker_Rig1:CTRL_Main_Grp.rx"
		 -l on;
connectAttr "Ultimate_Walker_Rig1:CTRL_Main_Grp_pConst.cry" "Ultimate_Walker_Rig1:CTRL_Main_Grp.ry"
		 -l on;
connectAttr "Ultimate_Walker_Rig1:CTRL_Main_Grp_pConst.crz" "Ultimate_Walker_Rig1:CTRL_Main_Grp.rz"
		 -l on;
connectAttr "pasted__CTRL_Main_translateX.o" "Ultimate_Walker_Rig1:CTRL_Main.tx"
		;
connectAttr "pasted__CTRL_Main_translateY.o" "Ultimate_Walker_Rig1:CTRL_Main.ty"
		;
connectAttr "pasted__CTRL_Main_translateZ.o" "Ultimate_Walker_Rig1:CTRL_Main.tz"
		;
connectAttr "pasted__CTRL_Main_rotateX.o" "Ultimate_Walker_Rig1:CTRL_Main.rx";
connectAttr "pasted__CTRL_Main_rotateY.o" "Ultimate_Walker_Rig1:CTRL_Main.ry";
connectAttr "pasted__CTRL_Main_rotateZ.o" "Ultimate_Walker_Rig1:CTRL_Main.rz";
connectAttr "Ultimate_Walker_Rig1:CTRL_Main_Grp.ro" "Ultimate_Walker_Rig1:CTRL_Main_Grp_pConst.cro"
		;
connectAttr "Ultimate_Walker_Rig1:CTRL_Main_Grp.pim" "Ultimate_Walker_Rig1:CTRL_Main_Grp_pConst.cpim"
		;
connectAttr "Ultimate_Walker_Rig1:CTRL_Main_Grp.rp" "Ultimate_Walker_Rig1:CTRL_Main_Grp_pConst.crp"
		;
connectAttr "Ultimate_Walker_Rig1:CTRL_Main_Grp.rpt" "Ultimate_Walker_Rig1:CTRL_Main_Grp_pConst.crt"
		;
connectAttr "Ultimate_Walker_Rig1:CTRL_Root.t" "Ultimate_Walker_Rig1:CTRL_Main_Grp_pConst.tg[0].tt"
		;
connectAttr "Ultimate_Walker_Rig1:CTRL_Root.rp" "Ultimate_Walker_Rig1:CTRL_Main_Grp_pConst.tg[0].trp"
		;
connectAttr "Ultimate_Walker_Rig1:CTRL_Root.rpt" "Ultimate_Walker_Rig1:CTRL_Main_Grp_pConst.tg[0].trt"
		;
connectAttr "Ultimate_Walker_Rig1:CTRL_Root.r" "Ultimate_Walker_Rig1:CTRL_Main_Grp_pConst.tg[0].tr"
		;
connectAttr "Ultimate_Walker_Rig1:CTRL_Root.ro" "Ultimate_Walker_Rig1:CTRL_Main_Grp_pConst.tg[0].tro"
		;
connectAttr "Ultimate_Walker_Rig1:CTRL_Root.s" "Ultimate_Walker_Rig1:CTRL_Main_Grp_pConst.tg[0].ts"
		;
connectAttr "Ultimate_Walker_Rig1:CTRL_Root.pm" "Ultimate_Walker_Rig1:CTRL_Main_Grp_pConst.tg[0].tpm"
		;
connectAttr "Ultimate_Walker_Rig1:CTRL_Main_Grp_pConst.w0" "Ultimate_Walker_Rig1:CTRL_Main_Grp_pConst.tg[0].tw"
		;
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "Ultimate_Walker_Rig1:walker_rt_foot_ctrl.ikFkBlend" "Ultimate_Walker_Rig1:walker_rt_legIkVis_cond.ft"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_foot_ctrl.ikFkBlend" "Ultimate_Walker_Rig1:walker_rt_legTrans_blend.b"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_knee_ik_jnt.tx" "Ultimate_Walker_Rig1:walker_rt_legTrans_blend.c1r"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_ankle_ik_jnt.tx" "Ultimate_Walker_Rig1:walker_rt_legTrans_blend.c1g"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_knee_fk_jnt.tx" "Ultimate_Walker_Rig1:walker_rt_legTrans_blend.c2r"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_ankle_fk_jnt.tx" "Ultimate_Walker_Rig1:walker_rt_legTrans_blend.c2g"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_knee_pv_ctrl.snapKnee" "Ultimate_Walker_Rig1:walker_rt_upLegSnapSplice_blend.b"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_armPvNegate_multDiv.ox" "Ultimate_Walker_Rig1:walker_rt_upLegSnapSplice_blend.c1r"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_legStr_multDiv.ox" "Ultimate_Walker_Rig1:walker_rt_upLegSnapSplice_blend.c2r"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_upLegPvCtrl_distShape.dist" "Ultimate_Walker_Rig1:walker_rt_armPvNegate_multDiv.i1x"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_legPvIkCtrl_distShape.dist" "Ultimate_Walker_Rig1:walker_rt_armPvNegate_multDiv.i1y"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_foot_ctrl.ikFkBlend" "Ultimate_Walker_Rig1:walker_lf_legTrans_blend.b"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_knee_ik_jnt.tx" "Ultimate_Walker_Rig1:walker_lf_legTrans_blend.c1r"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_ankle_ik_jnt.tx" "Ultimate_Walker_Rig1:walker_lf_legTrans_blend.c1g"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_knee_fk_jnt.tx" "Ultimate_Walker_Rig1:walker_lf_legTrans_blend.c2r"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_ankle_fk_jnt.tx" "Ultimate_Walker_Rig1:walker_lf_legTrans_blend.c2g"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_knee_pv_ctrl.snapKnee" "Ultimate_Walker_Rig1:walker_lf_upLegSnapSplice_blend.b"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_upLegPvCtrl_distShape.dist" "Ultimate_Walker_Rig1:walker_lf_upLegSnapSplice_blend.c1r"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_legStr_multDiv.ox" "Ultimate_Walker_Rig1:walker_lf_upLegSnapSplice_blend.c2r"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_foot_ctrl.ikFkBlend" "Ultimate_Walker_Rig1:walker_lf_legIkVis_cond.ft"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_heel_ik_ctrl.maxStretch" "Ultimate_Walker_Rig1:walker_lf_legStr_clamp.mxr"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_legStrScalar_multDiv.ox" "Ultimate_Walker_Rig1:walker_lf_legStr_clamp.ipr"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_legStrNum_multDiv.ox" "Ultimate_Walker_Rig1:walker_lf_legStrScalar_multDiv.i1x"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_legStrDenom_plsMns.o1" "Ultimate_Walker_Rig1:walker_lf_legStrScalar_multDiv.i2x"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_legStrDist_distShape.dist" "Ultimate_Walker_Rig1:walker_lf_legStrNum_multDiv.i1x"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_heel_ik_ctrl.stretchyLeg" "Ultimate_Walker_Rig1:walker_lf_legStrNum_multDiv.i2x"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_knee_pv_ctrl.snapKnee" "Ultimate_Walker_Rig1:walker_lf_kneeSnapSplice_blend.b"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_legPvIkCtrl_distShape.dist" "Ultimate_Walker_Rig1:walker_lf_kneeSnapSplice_blend.c1r"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_legStr_multDiv.oy" "Ultimate_Walker_Rig1:walker_lf_kneeSnapSplice_blend.c2r"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_heel_ik_ctrl.ballTwist" "Ultimate_Walker_Rig1:unitConversion4.i"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_ball_plsMns.o1" "Ultimate_Walker_Rig1:unitConversion8.i"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_ball_clamp.opr" "Ultimate_Walker_Rig1:walker_lf_ball_plsMns.i1[0]"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_heel_ik_ctrl.ballRaise" "Ultimate_Walker_Rig1:walker_lf_ball_plsMns.i1[1]"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_heel_ik_ctrl.footRoll" "Ultimate_Walker_Rig1:walker_lf_ball_clamp.ipr"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_heel_ik_ctrl.footBreak" "Ultimate_Walker_Rig1:walker_lf_ball_clamp.mxr"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_heel_ik_ctrl.toeTwist" "Ultimate_Walker_Rig1:unitConversion3.i"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_toe2_plsMns.o1" "Ultimate_Walker_Rig1:unitConversion9.i"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_toe_clamp.opr" "Ultimate_Walker_Rig1:walker_lf_toe2_plsMns.i1[0]"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_heel_ik_ctrl.toeRaise" "Ultimate_Walker_Rig1:walker_lf_toe2_plsMns.i1[1]"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_toe_plsMns.o1" "Ultimate_Walker_Rig1:walker_lf_toe_clamp.ipr"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_heel_ik_ctrl.footRoll" "Ultimate_Walker_Rig1:walker_lf_toe_plsMns.i1[0]"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_heel_ik_ctrl.footBreak" "Ultimate_Walker_Rig1:walker_lf_toe_plsMns.i1[1]"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_heel_ik_ctrl.heelTwist" "Ultimate_Walker_Rig1:unitConversion6.i"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_heel_plsMns.o1" "Ultimate_Walker_Rig1:unitConversion7.i"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_heel_clamp.opr" "Ultimate_Walker_Rig1:walker_lf_heel_plsMns.i1[1]"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_heel_ik_ctrl.footRoll" "Ultimate_Walker_Rig1:walker_lf_heel_clamp.ipr"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_legLowStr_plsMns.o1" "Ultimate_Walker_Rig1:walker_lf_legStr_multDiv.i1y"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_legUpStr_plsMns.o1" "Ultimate_Walker_Rig1:walker_lf_legStr_multDiv.i1x"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_legStr_clamp.opr" "Ultimate_Walker_Rig1:walker_lf_legStr_multDiv.i2x"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_legStr_clamp.opr" "Ultimate_Walker_Rig1:walker_lf_legStr_multDiv.i2y"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_legRefStr_multDiv.oy" "Ultimate_Walker_Rig1:walker_lf_legLowStr_plsMns.i1[0]"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_legTotStrAmt_plsMns.o2x" "Ultimate_Walker_Rig1:walker_lf_legRefStr_multDiv.i1x"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_legTotStrAmt_plsMns.o2y" "Ultimate_Walker_Rig1:walker_lf_legRefStr_multDiv.i1y"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_legStrAtt_multDiv.ox" "Ultimate_Walker_Rig1:walker_lf_legTotStrAmt_plsMns.i2[0].i2x"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_legStrAtt_multDiv.ox" "Ultimate_Walker_Rig1:walker_lf_legTotStrAmt_plsMns.i2[0].i2y"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_legStrAtt_multDiv.oy" "Ultimate_Walker_Rig1:walker_lf_legTotStrAmt_plsMns.i2[1].i2x"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_legStrAtt_multDiv.oz" "Ultimate_Walker_Rig1:walker_lf_legTotStrAmt_plsMns.i2[1].i2y"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_foot_ctrl.legStretch" "Ultimate_Walker_Rig1:walker_lf_legStrAtt_multDiv.i1x"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_foot_ctrl.kneeStretch" "Ultimate_Walker_Rig1:walker_lf_legStrAtt_multDiv.i1y"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_foot_ctrl.ankleStretch" "Ultimate_Walker_Rig1:walker_lf_legStrAtt_multDiv.i1z"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_legRefStr_multDiv.ox" "Ultimate_Walker_Rig1:walker_lf_legUpStr_plsMns.i1[0]"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_legLowStr_plsMns.o1" "Ultimate_Walker_Rig1:walker_lf_legStrDenom_plsMns.i1[0]"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_legUpStr_plsMns.o1" "Ultimate_Walker_Rig1:walker_lf_legStrDenom_plsMns.i1[1]"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_foot_ctrl.ikFkBlend" "Ultimate_Walker_Rig1:walker_lf_legFkVis_cond.ft"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_upLeg_fk_ctrl.align" "Ultimate_Walker_Rig1:walker_lf_upLeg_plsMns.i1[1]"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_heel_ik_ctrl.toeRoll" "Ultimate_Walker_Rig1:unitConversion2.i"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_heel_ik_ctrl.ballTwist" "Ultimate_Walker_Rig1:unitConversion5.i"
		;
connectAttr "Ultimate_Walker_Rig1:walker_lf_foot_ctrl.ikFkBlend" "Ultimate_Walker_Rig1:walker_lf_legIkFkSwitch_reverse.ix"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_heel_ik_ctrl.toeRoll" "Ultimate_Walker_Rig1:unitConversion11.i"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_heel_ik_ctrl.ballTwist" "Ultimate_Walker_Rig1:unitConversion14.i"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_heel_ik_ctrl.toeTwist" "Ultimate_Walker_Rig1:unitConversion12.i"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_toe2_plsMns.o1" "Ultimate_Walker_Rig1:unitConversion18.i"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_toe_clamp.opr" "Ultimate_Walker_Rig1:walker_rt_toe2_plsMns.i1[0]"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_heel_ik_ctrl.toeRaise" "Ultimate_Walker_Rig1:walker_rt_toe2_plsMns.i1[1]"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_toe_plsMns.o1" "Ultimate_Walker_Rig1:walker_rt_toe_clamp.ipr"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_heel_ik_ctrl.footRoll" "Ultimate_Walker_Rig1:walker_rt_toe_plsMns.i1[0]"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_heel_ik_ctrl.footBreak" "Ultimate_Walker_Rig1:walker_rt_toe_plsMns.i1[1]"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_heel_ik_ctrl.heelTwist" "Ultimate_Walker_Rig1:unitConversion15.i"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_heel_plsMns.o1" "Ultimate_Walker_Rig1:unitConversion16.i"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_heel_clamp.opr" "Ultimate_Walker_Rig1:walker_rt_heel_plsMns.i1[1]"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_heel_ik_ctrl.footRoll" "Ultimate_Walker_Rig1:walker_rt_heel_clamp.ipr"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_foot_ctrl.ikFkBlend" "Ultimate_Walker_Rig1:walker_rt_legFkVis_cond.ft"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_legRefStr_multDiv.oy" "Ultimate_Walker_Rig1:walker_rt_legLowStr_plsMns.i1[0]"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_legTotStrAmt_plsMns.o2x" "Ultimate_Walker_Rig1:walker_rt_legRefStr_multDiv.i1x"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_legTotStrAmt_plsMns.o2y" "Ultimate_Walker_Rig1:walker_rt_legRefStr_multDiv.i1y"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_legStrAtt_multDiv.ox" "Ultimate_Walker_Rig1:walker_rt_legTotStrAmt_plsMns.i2[0].i2x"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_legStrAtt_multDiv.ox" "Ultimate_Walker_Rig1:walker_rt_legTotStrAmt_plsMns.i2[0].i2y"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_legStrAtt_multDiv.oy" "Ultimate_Walker_Rig1:walker_rt_legTotStrAmt_plsMns.i2[1].i2x"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_legStrAtt_multDiv.oz" "Ultimate_Walker_Rig1:walker_rt_legTotStrAmt_plsMns.i2[1].i2y"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_foot_ctrl.legStretch" "Ultimate_Walker_Rig1:walker_rt_legStrAtt_multDiv.i1x"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_foot_ctrl.kneeStretch" "Ultimate_Walker_Rig1:walker_rt_legStrAtt_multDiv.i1y"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_foot_ctrl.ankleStretch" "Ultimate_Walker_Rig1:walker_rt_legStrAtt_multDiv.i1z"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_legRefStr_multDiv.ox" "Ultimate_Walker_Rig1:walker_rt_legUpStr_plsMns.i1[0]"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_upLeg_fk_ctrl.align" "Ultimate_Walker_Rig1:walker_rt_upLeg_plsMns.i1[1]"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_foot_ctrl.ikFkBlend" "Ultimate_Walker_Rig1:walker_rt_legIkFkSwitch_reverse.ix"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_heel_ik_ctrl.ballTwist" "Ultimate_Walker_Rig1:unitConversion13.i"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_ball_plsMns.o1" "Ultimate_Walker_Rig1:unitConversion17.i"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_ball_clamp.opr" "Ultimate_Walker_Rig1:walker_rt_ball_plsMns.i1[0]"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_heel_ik_ctrl.ballRaise" "Ultimate_Walker_Rig1:walker_rt_ball_plsMns.i1[1]"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_heel_ik_ctrl.footRoll" "Ultimate_Walker_Rig1:walker_rt_ball_clamp.ipr"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_heel_ik_ctrl.footBreak" "Ultimate_Walker_Rig1:walker_rt_ball_clamp.mxr"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_knee_pv_ctrl.snapKnee" "Ultimate_Walker_Rig1:walker_rt_kneeSnapSplice_blend.b"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_armPvNegate_multDiv.oy" "Ultimate_Walker_Rig1:walker_rt_kneeSnapSplice_blend.c1r"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_legStr_multDiv.oy" "Ultimate_Walker_Rig1:walker_rt_kneeSnapSplice_blend.c2r"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_legLowStr_plsMns.o1" "Ultimate_Walker_Rig1:walker_rt_legStr_multDiv.i1y"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_legUpStr_plsMns.o1" "Ultimate_Walker_Rig1:walker_rt_legStr_multDiv.i1x"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_legStr_clamp.opr" "Ultimate_Walker_Rig1:walker_rt_legStr_multDiv.i2x"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_legStr_clamp.opr" "Ultimate_Walker_Rig1:walker_rt_legStr_multDiv.i2y"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_heel_ik_ctrl.maxStretch" "Ultimate_Walker_Rig1:walker_rt_legStr_clamp.mxr"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_legNegateTx_multDiv.ox" "Ultimate_Walker_Rig1:walker_rt_legStr_clamp.ipr"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_legStrScalar_multDiv.ox" "Ultimate_Walker_Rig1:walker_rt_legNegateTx_multDiv.i1x"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_legStrNum_multDiv.ox" "Ultimate_Walker_Rig1:walker_rt_legStrScalar_multDiv.i1x"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_legStrDenom_plsMns.o1" "Ultimate_Walker_Rig1:walker_rt_legStrScalar_multDiv.i2x"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_legStrDist_distShape.dist" "Ultimate_Walker_Rig1:walker_rt_legStrNum_multDiv.i1x"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_heel_ik_ctrl.stretchyLeg" "Ultimate_Walker_Rig1:walker_rt_legStrNum_multDiv.i2x"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_legLowStr_plsMns.o1" "Ultimate_Walker_Rig1:walker_rt_legStrDenom_plsMns.i1[0]"
		;
connectAttr "Ultimate_Walker_Rig1:walker_rt_legUpStr_plsMns.o1" "Ultimate_Walker_Rig1:walker_rt_legStrDenom_plsMns.i1[1]"
		;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of walk cycle 1.0011.ma
