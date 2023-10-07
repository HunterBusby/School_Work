//Maya ASCII 2024 scene
//Name: walk cycle 1.ma
//Last modified: Tue, Oct 03, 2023 06:31:48 PM
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
fileInfo "UUID" "14C90AF1-4AC5-1225-88EF-16A3749945F3";
createNode transform -s -n "persp";
	rename -uid "04C1C0C8-454E-A89A-BBF1-1D8D024FA5CE";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 10.73859956782305 1.0079199738873443 -3.4295334059580744 ;
	setAttr ".r" -type "double3" 1.4616472783946222 1181.3999999991322 0 ;
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
	setAttr ".t" -type "double3" 1000.1 1.3087014409142146 -2.2152738703808463 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "0B7954AA-412F-C41D-C319-ABB0E677C86F";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 17.740613349709086;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "803B50D6-47E9-3371-0B16-6192A67C84F0";
	setAttr -s 4 ".lnk";
	setAttr -s 4 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "6583A65B-4D01-632A-B164-73BAF209F8E1";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "D8D728EA-4B96-5564-6E49-0F92E09E6C8A";
createNode displayLayerManager -n "layerManager";
	rename -uid "8BD889E4-46A3-A6D6-6437-9799037DA138";
createNode displayLayer -n "defaultLayer";
	rename -uid "75E8A904-4FFD-C41B-4F50-7F80DDF36A76";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "B3FC1DEC-4010-D75C-84A7-89931B6A551C";
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
	setAttr ".b" -type "string" "playbackOptions -min 102 -max 131 -ast -1 -aet 200 ";
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
		"Ultimate_Walker_RigRN" 98
		2 "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:CTRL_Root" "translate" 
		" -type \"double3\" 0 0 0"
		2 "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:CTRL_Root" "translateX" 
		" -k 0 -cb 1"
		2 "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:CTRL_Root" "translateY" 
		" -k 0 -cb 1"
		2 "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:CTRL_Root" "translateZ" 
		" -k 0 -cb 1"
		2 "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl" 
		"pvControl" " -k 1"
		2 "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl" 
		"footRoll" " -k 1"
		2 "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl" 
		"footBreak" " -k 1"
		2 "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl" 
		"toeRoll" " -k 1"
		2 "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl" 
		"legTwist" " -k 1"
		2 "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl" 
		"heelTwist" " -k 1"
		2 "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl" 
		"ballTwist" " -k 1"
		2 "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl" 
		"toeTwist" " -k 1"
		2 "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl" 
		"pvControl" " -k 1"
		2 "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl" 
		"footRoll" " -k 1"
		2 "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl" 
		"footBreak" " -k 1"
		2 "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl" 
		"toeRoll" " -k 1"
		2 "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl" 
		"legTwist" " -k 1"
		2 "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl" 
		"heelTwist" " -k 1"
		2 "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl" 
		"ballTwist" " -k 1"
		2 "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl" 
		"toeTwist" " -k 1"
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
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 36 ".ktv[0:35]"  1 -0.13441104219708588 4 -0.25042991905451384
		 7 -0.098536672764713895 10 0.024843030562707646 13 -0.134 16 -0.25 19 -0.029 22 -0.010085326558387474
		 25 -0.134 26 0 29 -0.38427397818152143 32 -0.088678610349581355 39 0.44339305174790988
		 43 0.88083694168524995 50 0 51 -0.28890126858226983 57 -0.12576447436530502 63 -0.27760325410607578
		 69 -0.12576447436530502 75 -0.28890126858226983 76 0 77 -0.13599566416181474 79 -0.31304063209731936
		 81 -0.23530950126187972 83 -0.084298198371095617 85 0.0095451694896135919 87 0.10231139688061736
		 89 -0.20972045888912172 91 -0.313 93 -0.235 95 -0.084 97 0.01 99 0.102 101 -0.21
		 102 0 126 -2.0175072042883713;
	setAttr -s 36 ".kit[0:35]"  9 9 9 9 9 9 9 9 
		9 18 18 18 18 9 18 18 18 10 2 1 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 36 ".kot[0:35]"  9 9 9 9 9 9 9 9 
		9 18 18 18 18 9 5 18 18 10 2 1 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 36 ".kix[19:35]"  1 1 0.37083754376410416 1 0.58888448084299605 
		0.56269201916538547 0.66612908391087178 1 0.37243475088055411 1 0.58845157454608532 
		0.56246385846399616 0.66734087322208513 1 1 1 1;
	setAttr -s 36 ".kiy[19:35]"  0 0 -0.92869775284265987 0 0.80821721598978269 
		0.82666661452340118 0.74583647240401352 0 -0.92805837981052663 0 0.80853246342631968 
		0.82682187194207291 0.74475241451584773 0 0 0 0;
	setAttr -s 36 ".kox[19:35]"  1 1 0.37083754376410405 1 0.58888448084299605 
		0.56269201916538536 0.66612908391087178 1 0.37243475088055411 1 0.58845157454608532 
		0.56246385846399616 0.66734087322208513 1 1 1 1;
	setAttr -s 36 ".koy[19:35]"  0 0 -0.92869775284265976 0 0.80821721598978269 
		0.82666661452340118 0.74583647240401352 0 -0.92805837981052663 0 0.80853246342631968 
		0.82682187194207291 0.74475241451584762 0 0 0 0;
createNode animCurveTU -n "walker_rt_heel_ik_ctrl_footRoll";
	rename -uid "48AE718E-42BA-A96F-A161-338F31FFFC8A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  1 -22.1 4 0 7 0 10 23.900000000000002 13 30.8
		 16 51.8 19 51.8 22 -5.6 23 -14.129629629629834 25 -22.1 26 0 35 27 39 52.1 43 50
		 50 0 51 0 76 0 77 92.300000000000011 79 92.300000000000011 81 53.000000000000007
		 83 30.600000000000009 85 0.40000000000000924 87 -24.399999999999991 89 -24.399999999999991
		 91 -19.999999999999716 93 19.9 95 50.7 97 50.7 99 70.9 101 128.1 102 0 126 0;
	setAttr -s 32 ".kit[0:31]"  9 9 9 9 9 9 9 9 
		18 9 9 18 18 9 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 32 ".kot[0:31]"  9 9 9 9 9 9 9 9 
		18 5 9 18 18 9 18 5 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18;
createNode animCurveTU -n "walker_rt_heel_ik_ctrl_footBreak";
	rename -uid "18B282E0-47D5-2747-2F0E-93AB47478A34";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  1 55 4 55 7 55 10 55 13 55 16 55 17 0 19 0
		 20 -18.1 22 0 23 1.6088888888889041 25 0 26 0 35 18 39 20 43 -10 50 0 51 0 76 0 77 0
		 79 0 81 -32 83 -15.400000000000002 85 2.2999999999999972 87 2.2999999999999972 89 2.2999999999999972
		 91 1.7037037037037015 93 19.7 95 54.7 97 25.3 99 -2.5 101 -2.5 102 0 126 0;
	setAttr -s 34 ".kit[0:33]"  9 9 9 9 9 9 18 9 
		18 9 18 9 9 18 18 9 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18;
	setAttr -s 34 ".kot[0:33]"  9 9 9 9 9 9 18 9 
		18 9 18 5 9 18 18 9 18 5 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18;
createNode animCurveTL -n "walker_rt_heel_ik_ctrl_translateY";
	rename -uid "73F84650-4604-19A4-ACE8-7DADE9EE1128";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  1 -0.032844329404068111 4 -0.032844329404068111
		 7 -0.032844329404068111 10 -0.032844329404068111 13 0.014 16 0.014 17 0.044866278916252972
		 19 0.424 20 0.34651464858356495 22 0.561 23 0.41726536457034968 25 -0.033 26 0 35 -0.021666382258401375
		 39 0.0075924476607645008 43 0.029164570402022694 50 0 51 0 76 0 77 0.7917061537077188
		 79 0.34305436932731759 81 0.0075559783555587678 83 0.015989271754740964 85 0.64005298329422022
		 87 0.6569195700925845 89 -0.1442433028297192 91 -0.070531188602557748 93 0 95 0 97 0
		 99 0.143 101 0.455 102 0 126 0;
	setAttr -s 34 ".kit[0:33]"  9 9 9 9 9 9 18 9 
		18 9 18 9 9 18 18 9 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18;
	setAttr -s 34 ".kot[0:33]"  9 9 9 9 9 9 18 9 
		18 9 18 5 9 18 18 9 18 5 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18;
createNode animCurveTL -n "walker_rt_heel_ik_ctrl_translateZ";
	rename -uid "382DB072-4054-C6D7-19EF-C0BE0DC2FF33";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  1 0.93162235471218269 4 0.61918437823016181
		 7 0.083354264633682618 10 -0.60649351910422 13 -1.048 16 -1.182 17 -1.3389538407884312
		 19 -0.674 20 0.065355093640077133 22 1.2469971625518974 23 1.3032964725313483 25 0.932
		 26 0 35 -0.15559340228506593 43 -0.24076444278650344 50 0 51 0.3095097969773008 76 0
		 77 -2.6150153509022762 79 -2.2189708712574845 81 -0.9868663401479203 83 0.5564263519024133
		 85 1.3069894644296274 87 1.5937214400018196 89 1.2563897040345338 91 1.1402496631378356
		 93 -0.192 95 -1.052 97 -1.457 99 -2.166 101 -2.638 102 0 126 2.002348222942202;
	setAttr -s 33 ".kit[0:32]"  9 9 9 9 9 9 18 9 
		18 9 18 9 9 18 9 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18;
	setAttr -s 33 ".kot[0:32]"  9 9 9 9 9 9 18 9 
		18 9 18 5 9 18 9 18 5 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18;
createNode animCurveTL -n "CTRL_Main_translateX";
	rename -uid "C7066CC4-4330-BCC2-3DFA-04B1569F5066";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  1 0 4 0 7 0 10 0 13 0 16 0 19 0 22 0 25 0
		 26 0 50 0 77 0 79 0 81 0 83 0 85 0 87 0 89 0 91 0 93 0 95 0 97 0 99 0 101 0 102 0
		 126 0;
	setAttr -s 26 ".kit[0:25]"  9 9 9 9 9 9 9 9 
		9 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18;
	setAttr -s 26 ".kot[0:25]"  9 9 9 9 9 9 9 9 
		9 18 5 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18;
createNode animCurveTL -n "CTRL_Main_translateZ";
	rename -uid "CDE1AEBB-4EFA-9CE4-A0EE-C19D62F27567";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 36 ".ktv[0:35]"  1 0 4 -0.17789193708877143 7 0 10 0.077341376934980999
		 13 0 16 -0.178 19 0 22 0.077 25 0 26 0 29 -0.20691675748235738 32 -0.38427397818152098
		 39 -0.384 43 -0.384 50 0 51 0.31025855742687075 57 0.15885788621776969 63 -0.043595762190537624
		 69 0.1891489825884945 75 0.31025855742687075 76 0 77 0 79 0 81 0 83 0 85 0 87 0 89 0
		 91 0 93 0 95 0 97 0 99 0 101 0 102 0 126 0;
	setAttr -s 36 ".kit[0:35]"  9 9 9 9 9 9 9 9 
		9 18 18 18 18 9 18 18 18 10 2 1 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 36 ".kot[0:35]"  9 9 9 9 9 9 9 9 
		9 18 18 18 18 9 5 18 18 10 2 1 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 36 ".kix[19:35]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 36 ".kiy[19:35]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 36 ".kox[19:35]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 36 ".koy[19:35]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "walker_lf_heel_ik_ctrl_translateX";
	rename -uid "6C08E794-44CF-8039-514E-FA8D32038BE7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 25 ".ktv[0:24]"  1 0 4 0 7 0 10 0 13 0 16 -1.4411479270790191e-17
		 19 0 22 0 25 0 26 0 76 0 77 1.368320874953467e-16 79 0 81 0 83 0 85 0 87 0 89 0 93 0
		 95 0 97 0 99 0 101 0 102 0 126 -1.9074864421851055e-16;
	setAttr -s 25 ".kit[0:24]"  9 9 9 9 9 9 9 9 
		9 9 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 25 ".kot[0:24]"  9 9 9 9 9 9 9 9 
		5 9 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
createNode animCurveTL -n "walker_lf_heel_ik_ctrl_translateY";
	rename -uid "13D4F3E5-4F30-23A0-B6ED-2DB871DE2E28";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  1 0.01384857339934753 4 0.01384857339934753
		 5 -0.12826695488449441 7 0.42437690689486068 10 0.56052138375433547 13 -0.033 16 -0.033
		 19 -0.033 22 -0.033 25 0.014 26 0 35 -0.022 39 0.008 43 0.029 50 0 76 0 77 0 79 0
		 81 0 83 0 85 0 87 0.14336598778609644 89 0.45539784355583596 91 0.343 93 0.008 95 0.016
		 97 0.64 99 0.657 101 -0.144 102 0 126 0;
	setAttr -s 31 ".kit[0:30]"  9 9 18 9 9 9 9 9 
		9 9 9 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18;
	setAttr -s 31 ".kot[0:30]"  9 9 18 9 9 9 9 9 
		9 5 9 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18;
createNode animCurveTL -n "walker_lf_heel_ik_ctrl_translateZ";
	rename -uid "E4001EFD-400A-2C59-7AEA-66BA9EE83B26";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  1 -1.0483909399442253 4 -1.1822588747797187
		 5 -1.3924710652937988 7 -0.67356072240484344 10 1.1035140832048467 13 0.932 16 0.66232134129755604
		 19 -0.203 22 -0.606 25 -1.048 26 0 35 -0.156 43 -0.241 50 0 51 -0.57971942193949766
		 76 0 77 1.1173187860419396 79 0.82200334871733882 81 -0.19226046042110684 83 -1.0523774758326043
		 85 -1.4571755589933493 87 -2.165572204524651 89 -2.6378366348788509 91 -2.219 93 -0.987
		 95 0.556 97 1.307 99 1.594 101 1.256 102 0 126 2.7555509125431934;
	setAttr -s 31 ".kit[0:30]"  9 9 18 9 9 9 9 9 
		9 9 9 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18;
	setAttr -s 31 ".kot[0:30]"  9 9 18 9 9 9 9 9 
		9 5 9 18 18 18 5 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18;
createNode animCurveTL -n "walker_lf_knee_pv_ctrl_translateX";
	rename -uid "EE1AEF97-44B6-7C14-FFCA-858E56CACD29";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 7 0 10 0 13 0 16 0 19 0 22 0 25 0 76 4.187374421447822e-17;
	setAttr -s 9 ".kit[8]"  18;
	setAttr -s 9 ".kot[8]"  18;
createNode animCurveTL -n "walker_lf_knee_pv_ctrl_translateY";
	rename -uid "47E92640-4F4E-9745-5528-DB8CCB931C7B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 7 0 10 0 13 0 16 0 19 0 22 0 25 0 76 0.14531815461848874;
	setAttr -s 9 ".kit[8]"  18;
	setAttr -s 9 ".kot[8]"  18;
createNode animCurveTL -n "walker_lf_knee_pv_ctrl_translateZ";
	rename -uid "4A437AF7-479A-F5DA-5F6A-DF9DFA35253B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 7 0 10 0 13 0 16 0 19 0 22 0 25 0 76 0.3419250696905618;
	setAttr -s 9 ".kit[8]"  18;
	setAttr -s 9 ".kot[8]"  18;
createNode animCurveTL -n "walker_rt_heel_ik_ctrl_translateX";
	rename -uid "2632AB96-48E3-8E56-0292-7A95ED0833ED";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 29 ".ktv[0:28]"  1 0 4 -1.307049462830552e-16 7 -7.5901357066490771e-17
		 10 0 13 0 16 0 19 0 22 1.751210174063348e-17 23 1.2989572881585577e-16 25 0 26 0
		 50 0 51 0 76 0 77 -5.4229162284539839e-16 79 0 81 0 83 0 85 0 87 0 89 0 91 0 93 0
		 95 0 97 0 99 0 101 0 102 0 126 2.0087301593839708e-17;
	setAttr -s 29 ".kit[0:28]"  9 9 9 9 9 9 9 9 
		18 9 9 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 29 ".kot[0:28]"  9 9 9 9 9 9 9 9 
		18 5 9 18 5 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18;
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
	setAttr -s 29 ".ktv[0:28]"  1 0 4 0 7 0 10 0 13 0 16 0 19 0 22 0 23 0
		 25 0 26 0 50 0 51 0 76 0 77 0 79 0 81 0 83 0 85 0 87 0 89 0 91 0 93 0 95 0 97 0 99 0
		 101 0 102 0 126 0;
	setAttr -s 29 ".kit[0:28]"  9 9 9 9 9 9 9 9 
		18 9 9 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 29 ".kot[0:28]"  9 9 9 9 9 9 9 9 
		18 5 9 18 5 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18;
createNode animCurveTA -n "walker_rt_heel_ik_ctrl_rotateY";
	rename -uid "4508D4E9-4998-3E3B-2AF2-3FBBDA8C957D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 29 ".ktv[0:28]"  1 0 4 0 7 0 10 0 13 0 16 0 19 0 22 0 23 0
		 25 0 26 0 50 0 51 0 76 0 77 0 79 0 81 0 83 0 85 0 87 0 89 0 91 0 93 0 95 0 97 0 99 0
		 101 0 102 0 126 0;
	setAttr -s 29 ".kit[0:28]"  9 9 9 9 9 9 9 9 
		18 9 9 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 29 ".kot[0:28]"  9 9 9 9 9 9 9 9 
		18 5 9 18 5 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18;
createNode animCurveTA -n "walker_rt_heel_ik_ctrl_rotateZ";
	rename -uid "44E85017-4BF2-A93B-B48C-2D959AFDD086";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 29 ".ktv[0:28]"  1 0 4 0 7 0 10 0 13 0 16 0 19 0 22 0 23 0
		 25 0 26 0 50 0 51 0 76 0 77 0 79 0 81 0 83 0 85 0 87 0 89 0 91 0 93 0 95 0 97 0 99 0
		 101 0 102 0 126 0;
	setAttr -s 29 ".kit[0:28]"  9 9 9 9 9 9 9 9 
		18 9 9 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 29 ".kot[0:28]"  9 9 9 9 9 9 9 9 
		18 5 9 18 5 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18;
createNode animCurveTU -n "walker_rt_heel_ik_ctrl_pvControl";
	rename -uid "11CA90B1-46B5-5BE6-FC2E-3FA8FC028C58";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 29 ".ktv[0:28]"  1 1 4 1 7 1 10 1 13 1 16 1 19 1 22 1 23 1
		 25 1 26 1 50 1 51 1 76 1 77 1 79 1 81 1 83 1 85 1 87 1 89 1 91 1 93 1 95 1 97 1 99 1
		 101 1 102 1 126 1;
	setAttr -s 29 ".kot[8:28]"  5 5 9 5 5 5 5 5 
		5 5 5 5 5 5 5 5 5 5 5 5 5;
createNode animCurveTU -n "walker_rt_heel_ik_ctrl_toeRoll";
	rename -uid "DD71F9DE-4D71-BB1D-4829-4DAD4233D80D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 29 ".ktv[0:28]"  1 0 4 0 7 0 10 0 13 0 16 0 19 0 22 0 23 0
		 25 0 26 0 50 0 51 0 76 0 77 0 79 0 81 0 83 0 85 0 87 0 89 0 91 0 93 0 95 0 97 0 99 0
		 101 0 102 0 126 0;
	setAttr -s 29 ".kit[0:28]"  9 9 9 9 9 9 9 9 
		18 9 9 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 29 ".kot[0:28]"  9 9 9 9 9 9 9 9 
		18 5 9 18 5 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18;
createNode animCurveTU -n "walker_rt_heel_ik_ctrl_legTwist";
	rename -uid "23CF9780-4021-2E27-7894-9D9486EE532B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 29 ".ktv[0:28]"  1 0 4 0 7 0 10 0 13 0 16 0 19 0 22 0 23 0
		 25 0 26 0 50 0 51 0 76 0 77 0 79 0 81 0 83 0 85 0 87 0 89 0 91 0 93 0 95 0 97 0 99 0
		 101 0 102 0 126 0;
	setAttr -s 29 ".kit[0:28]"  9 9 9 9 9 9 9 9 
		18 9 9 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 29 ".kot[0:28]"  9 9 9 9 9 9 9 9 
		18 5 9 18 5 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18;
createNode animCurveTU -n "walker_rt_heel_ik_ctrl_heelTwist";
	rename -uid "58426B22-4578-BC28-2B75-1F8E241BFBCC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 29 ".ktv[0:28]"  1 0 4 0 7 0 10 0 13 0 16 0 19 0 22 0 23 0
		 25 0 26 0 50 0 51 0 76 0 77 0 79 0 81 0 83 0 85 0 87 0 89 0 91 0 93 0 95 0 97 0 99 0
		 101 0 102 0 126 0;
	setAttr -s 29 ".kit[0:28]"  9 9 9 9 9 9 9 9 
		18 9 9 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 29 ".kot[0:28]"  9 9 9 9 9 9 9 9 
		18 5 9 18 5 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18;
createNode animCurveTU -n "walker_rt_heel_ik_ctrl_ballTwist";
	rename -uid "C8C9E653-4CF2-8FAB-B23E-ABBBC5B4E139";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 29 ".ktv[0:28]"  1 0 4 0 7 0 10 0 13 0 16 0 19 0 22 0 23 0
		 25 0 26 0 50 0 51 0 76 0 77 0 79 0 81 0 83 0 85 0 87 0 89 0 91 0 93 0 95 0 97 0 99 0
		 101 0 102 0 126 0;
	setAttr -s 29 ".kit[0:28]"  9 9 9 9 9 9 9 9 
		18 9 9 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 29 ".kot[0:28]"  9 9 9 9 9 9 9 9 
		18 5 9 18 5 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18;
createNode animCurveTU -n "walker_rt_heel_ik_ctrl_toeTwist";
	rename -uid "FE0BD51B-4E82-99DF-B31F-10AA54079681";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 29 ".ktv[0:28]"  1 0 4 0 7 0 10 0 13 0 16 0 19 0 22 0 23 0
		 25 0 26 0 50 0 51 0 76 0 77 0 79 0 81 0 83 0 85 0 87 0 89 0 91 0 93 0 95 0 97 0 99 0
		 101 0 102 0 126 0;
	setAttr -s 29 ".kit[0:28]"  9 9 9 9 9 9 9 9 
		18 9 9 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 29 ".kot[0:28]"  9 9 9 9 9 9 9 9 
		18 5 9 18 5 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18;
createNode animCurveTU -n "walker_lf_foot_ctrl_ikFkBlend";
	rename -uid "1794548D-4C81-2D6A-6E86-8F8A6AC1EEB6";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 1 7 1 10 1 13 1 16 1 19 1 22 1 25 1 26 1;
	setAttr -s 9 ".kot[7:8]"  5 9;
createNode animCurveTA -n "walker_lf_heel_ik_ctrl_rotateX";
	rename -uid "C0DFBEBF-43EA-FA82-83F0-CC9C21627630";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 25 ".ktv[0:24]"  1 0 4 0 7 0 10 0 13 0 16 0 19 0 22 0 25 0
		 26 0 76 0 77 0 79 0 81 0 83 0 85 0 87 0 89 0 93 0 95 0 97 0 99 0 101 0 102 0 126 -61.682050179329046;
	setAttr -s 25 ".kit[0:24]"  9 9 9 9 9 9 9 9 
		9 9 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 25 ".kot[0:24]"  9 9 9 9 9 9 9 9 
		5 9 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
createNode animCurveTA -n "walker_lf_heel_ik_ctrl_rotateY";
	rename -uid "837B7F18-466F-9257-9037-3BA267F704E9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 25 ".ktv[0:24]"  1 0 4 0 7 0 10 0 13 0 16 0 19 0 22 0 25 0
		 26 0 76 0 77 0 79 0 81 0 83 0 85 0 87 0 89 0 93 0 95 0 97 0 99 0 101 0 102 0 126 0;
	setAttr -s 25 ".kit[0:24]"  9 9 9 9 9 9 9 9 
		9 9 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 25 ".kot[0:24]"  9 9 9 9 9 9 9 9 
		5 9 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
createNode animCurveTA -n "walker_lf_heel_ik_ctrl_rotateZ";
	rename -uid "371726A7-44FD-2A3E-E6E0-D1915C86EAF9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 25 ".ktv[0:24]"  1 0 4 0 7 0 10 0 13 0 16 0 19 0 22 0 25 0
		 26 0 76 0 77 0 79 0 81 0 83 0 85 0 87 0 89 0 93 0 95 0 97 0 99 0 101 0 102 0 126 0;
	setAttr -s 25 ".kit[0:24]"  9 9 9 9 9 9 9 9 
		9 9 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 25 ".kot[0:24]"  9 9 9 9 9 9 9 9 
		5 9 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
createNode animCurveTU -n "walker_lf_heel_ik_ctrl_pvControl";
	rename -uid "A59DE08B-4814-99DC-20BC-81A4D6EFCDC6";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 25 ".ktv[0:24]"  1 1 4 1 7 1 10 1 13 1 16 1 19 1 22 1 25 1
		 26 1 76 1 77 1 79 1 81 1 83 1 85 1 87 1 89 1 93 1 95 1 97 1 99 1 101 1 102 1 126 1;
	setAttr -s 25 ".kot[8:24]"  5 9 5 5 5 5 5 5 
		5 5 5 5 5 5 5 5 5;
createNode animCurveTU -n "walker_lf_heel_ik_ctrl_footRoll";
	rename -uid "05212895-441D-C69F-6A8A-22B2467A03AD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  1 30.800000000000004 4 51.800000000000004
		 7 51.800000000000004 10 -5.6 13 -22.1 16 0 19 0 22 23.9 25 30.8 26 0 35 27 39 52.1
		 43 50 50 0 76 0 77 -29.6 79 -1.1000000000000014 81 19.9 83 50.7 85 50.7 87 70.9 89 128.10000000000002
		 91 92.3 93 53 95 30.6 97 0.4 99 -24.4 101 -24.4 102 0 126 0;
	setAttr -s 30 ".kit[0:29]"  9 9 9 9 9 9 9 9 
		9 9 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18;
	setAttr -s 30 ".kot[0:29]"  9 9 9 9 9 9 9 9 
		5 9 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18;
createNode animCurveTU -n "walker_lf_heel_ik_ctrl_footBreak";
	rename -uid "82F4CAC7-4ADA-5DCD-75D6-9DABFD0F757F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  1 55 4 55 5 0 6 -11.8 7 0 10 0 13 0 16 0
		 19 55 22 55 25 55 26 0 35 18 39 20 43 -10 50 0 76 0 77 0 79 0 81 19.700000000000003
		 83 54.7 85 25.3 87 -2.5 89 -2.5 91 0 93 -32 95 -15.4 97 2.3 99 2.3 101 2.3 102 0
		 126 0;
	setAttr -s 32 ".kit[0:31]"  9 9 18 18 9 9 9 9 
		9 9 9 9 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 32 ".kot[0:31]"  9 9 18 18 9 9 9 9 
		9 9 5 9 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18;
createNode animCurveTU -n "walker_lf_heel_ik_ctrl_toeRoll";
	rename -uid "2B0E5906-4A35-D7AC-5B38-4C94062E95EA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 25 ".ktv[0:24]"  1 0 4 0 7 0 10 0 13 0 16 0 19 0 22 0 25 0
		 26 0 76 0 77 0 79 0 81 0 83 0 85 0 87 0 89 0 93 0 95 0 97 0 99 0 101 0 102 0 126 0;
	setAttr -s 25 ".kit[0:24]"  9 9 9 9 9 9 9 9 
		9 9 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 25 ".kot[0:24]"  9 9 9 9 9 9 9 9 
		5 9 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
createNode animCurveTU -n "walker_lf_heel_ik_ctrl_legTwist";
	rename -uid "D53A5C83-4D7C-E90C-8E02-B19653C93399";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 25 ".ktv[0:24]"  1 0 4 0 7 0 10 0 13 0 16 0 19 0 22 0 25 0
		 26 0 76 0 77 0 79 0 81 0 83 0 85 0 87 0 89 0 93 0 95 0 97 0 99 0 101 0 102 0 126 0;
	setAttr -s 25 ".kit[0:24]"  9 9 9 9 9 9 9 9 
		9 9 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 25 ".kot[0:24]"  9 9 9 9 9 9 9 9 
		5 9 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
createNode animCurveTU -n "walker_lf_heel_ik_ctrl_heelTwist";
	rename -uid "09624902-4849-651A-770E-0E9944DFEFD6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 25 ".ktv[0:24]"  1 0 4 0 7 0 10 0 13 0 16 0 19 0 22 0 25 0
		 26 0 76 0 77 0 79 0 81 0 83 0 85 0 87 0 89 0 93 0 95 0 97 0 99 0 101 0 102 0 126 0;
	setAttr -s 25 ".kit[0:24]"  9 9 9 9 9 9 9 9 
		9 9 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 25 ".kot[0:24]"  9 9 9 9 9 9 9 9 
		5 9 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
createNode animCurveTU -n "walker_lf_heel_ik_ctrl_ballTwist";
	rename -uid "B098035A-4F23-08A0-9190-DA8F262BA85C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 25 ".ktv[0:24]"  1 0 4 0 7 0 10 0 13 0 16 0 19 0 22 0 25 0
		 26 0 76 0 77 0 79 0 81 0 83 0 85 0 87 0 89 0 93 0 95 0 97 0 99 0 101 0 102 0 126 0;
	setAttr -s 25 ".kit[0:24]"  9 9 9 9 9 9 9 9 
		9 9 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 25 ".kot[0:24]"  9 9 9 9 9 9 9 9 
		5 9 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
createNode animCurveTU -n "walker_lf_heel_ik_ctrl_toeTwist";
	rename -uid "B577B619-43A2-BEBD-9D92-E185046C7392";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 25 ".ktv[0:24]"  1 0 4 0 7 0 10 0 13 0 16 0 19 0 22 0 25 0
		 26 0 76 0 77 0 79 0 81 0 83 0 85 0 87 0 89 0 93 0 95 0 97 0 99 0 101 0 102 0 126 0;
	setAttr -s 25 ".kit[0:24]"  9 9 9 9 9 9 9 9 
		9 9 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 25 ".kot[0:24]"  9 9 9 9 9 9 9 9 
		5 9 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
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
	setAttr -s 9 ".ktv[0:8]"  1 0 7 0 10 0 13 0 16 0 19 0 22 0 25 0 76 0;
	setAttr -s 9 ".kit[8]"  18;
	setAttr -s 9 ".kot[8]"  18;
createNode animCurveTL -n "CTRL_Top_translateY";
	rename -uid "C13EA19F-432D-88CB-CA5B-07912CCD0853";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 6 0 9 0 12 0 15 0 18 0;
createNode animCurveTA -n "CTRL_Main_rotateX";
	rename -uid "C0368E92-4F3E-3868-A0BB-35B33579ABF7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  1 0 4 0 7 0 10 0 13 0 16 0 19 0 22 0 25 0
		 26 0 50 0 77 0 79 0 81 0 83 0 85 0 87 0 89 0 91 0 93 0 95 0 97 0 99 0 101 0 102 0
		 126 52.309972296796865;
	setAttr -s 26 ".kit[0:25]"  9 9 9 9 9 9 9 9 
		9 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18;
	setAttr -s 26 ".kot[0:25]"  9 9 9 9 9 9 9 9 
		9 18 5 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18;
createNode animCurveTA -n "CTRL_Main_rotateY";
	rename -uid "CA84F21F-4AFE-0E2E-224F-09856CC1DD59";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  1 0 4 0 7 0 10 0 13 0 16 0 19 0 22 0 25 0
		 26 0 50 0 77 0 79 0 81 0 83 0 85 0 87 0 89 0 91 0 93 0 95 0 97 0 99 0 101 0 102 0
		 126 18.574214134834204;
	setAttr -s 26 ".kit[0:25]"  9 9 9 9 9 9 9 9 
		9 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18;
	setAttr -s 26 ".kot[0:25]"  9 9 9 9 9 9 9 9 
		9 18 5 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18;
createNode animCurveTA -n "CTRL_Main_rotateZ";
	rename -uid "7BB4060E-4ADD-0F78-A819-6DB2E0F03D20";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  1 0 3 0 4 0 7 0 10 0 13 0 16 0 19 0 22 0
		 25 0 26 0 50 0 77 0 79 0 81 0 83 0 85 0 87 0 89 0 91 0 93 0 95 0 97 0 99 0 101 0
		 102 0 126 22.405447202845348;
	setAttr -s 27 ".kit[0:26]"  9 9 18 9 9 9 9 9 
		9 9 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18;
	setAttr -s 27 ".kot[0:26]"  9 9 18 9 9 9 9 9 
		9 9 18 5 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18;
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "9C182D3D-4162-3EC2-720A-3FBD95F01244";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -785.71425449280639 -85.714282308306153 ;
	setAttr ".tgi[0].vh" -type "double2" 757.14282705670462 86.904758451477079 ;
select -ne :time1;
	setAttr ".o" 126;
	setAttr ".unw" 126;
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
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of walk cycle 1.ma
