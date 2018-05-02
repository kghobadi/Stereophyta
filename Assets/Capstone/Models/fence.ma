//Maya ASCII 2016 scene
//Name: fence.ma
//Last modified: Sat, Nov 18, 2017 03:13:41 PM
//Codeset: UTF-8
requires maya "2016";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2016";
fileInfo "version" "2016";
fileInfo "cutIdentifier" "201502261600-953408";
fileInfo "osv" "Mac OS X 10.9.6";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "047985FB-584C-83A2-1C61-0891D83892F2";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 8.6529108376152486 9.7826791572573928 18.55622717382407 ;
	setAttr ".r" -type "double3" -25.53835272962203 24.999999999997801 2.632015354184673e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "7B6F3E00-B24F-EEF5-EDC2-9C94F6425218";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 22.691567693394642;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "F07B3555-5344-150B-EE8D-6182757F4953";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "F70A701C-6046-B21C-03EA-54A2E090B219";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "3432C5AC-CD42-CA9A-5BC5-CDB317AB42A9";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "CAD36B13-7C43-3756-763D-118A2D459D74";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "0512DAC2-C443-B655-BCBF-DFB4F4DD2919";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "60824F11-664F-7F7E-BCCD-3A8855A63A58";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "pCube1";
	rename -uid "CE4A6E21-E645-E5A0-91DA-388E1601CEEC";
	setAttr ".t" -type "double3" 0 1.407390667894997 0 ;
createNode transform -n "transform49" -p "pCube1";
	rename -uid "F27A216A-F944-554B-A935-4B805AC029F1";
	setAttr ".v" no;
createNode mesh -n "pCubeShape1" -p "transform49";
	rename -uid "E441FCD2-6841-785C-88A6-FCA338B8B15D";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -6.5462341 -0.77255303 -0.30458263 
		6.5462341 -0.77255303 -0.30458263 -6.5462341 0.77255303 -0.30458263 6.5462341 0.77255303 
		-0.30458263 -6.5462341 0.77255303 0.30458263 6.5462341 0.77255303 0.30458263 -6.5462341 
		-0.77255303 0.30458263 6.5462341 -0.77255303 0.30458263;
createNode transform -n "pCube2";
	rename -uid "4B3E1DE6-0448-F914-6169-B5B175761184";
createNode transform -n "transform47" -p "pCube2";
	rename -uid "995E2322-4945-5DCE-4CA9-CAABD8AB0A05";
	setAttr ".v" no;
createNode mesh -n "pCubeShape2" -p "transform47";
	rename -uid "C47D331F-0049-0895-4A82-FC860CCA8E4A";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.25 9.6857548e-08 -9.6857548e-08 
		-0.25 9.6857548e-08 -9.6857548e-08 0.25 -9.6857548e-08 -9.6857548e-08 -0.25 -9.6857548e-08 
		-9.6857548e-08 0.25 -9.6857548e-08 9.6857548e-08 -0.25 -9.6857548e-08 9.6857548e-08 
		0.25 9.6857548e-08 9.6857548e-08 -0.25 9.6857548e-08 9.6857548e-08;
createNode transform -n "group";
	rename -uid "34B6DC53-EB46-6F15-C93D-0285E8F709A0";
	setAttr ".t" -type "double3" 1.5 0 0 ;
createNode transform -n "group1";
	rename -uid "0756A3B3-F141-5BEF-4358-ED90530CFB53";
	setAttr ".t" -type "double3" 0.99999999999999989 0 0 ;
createNode transform -n "pasted__pCube2" -p "group1";
	rename -uid "F30AD850-0C41-0C11-17FB-AAB973DD999D";
createNode transform -n "transform46" -p "|group1|pasted__pCube2";
	rename -uid "2F5AD47B-CB41-D2CB-7F79-62820E8CBD8C";
	setAttr ".v" no;
createNode mesh -n "pasted__pCubeShape2" -p "transform46";
	rename -uid "9BFC27A3-4C43-EDAD-1419-6692C4770411";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.25 9.6857548e-08 -9.6857548e-08 
		-0.25 9.6857548e-08 -9.6857548e-08 0.25 -9.6857548e-08 -9.6857548e-08 -0.25 -9.6857548e-08 
		-9.6857548e-08 0.25 -9.6857548e-08 9.6857548e-08 -0.25 -9.6857548e-08 9.6857548e-08 
		0.25 9.6857548e-08 9.6857548e-08 -0.25 9.6857548e-08 9.6857548e-08;
createNode transform -n "group2";
	rename -uid "C5F558A3-204E-2600-FEF4-E5A19894FD7B";
	setAttr ".t" -type "double3" 2 0 0 ;
	setAttr ".rp" -type "double3" 0.5 0 0 ;
	setAttr ".sp" -type "double3" 0.5 0 0 ;
createNode transform -n "pasted__pCube2" -p "group2";
	rename -uid "ED9379B7-F741-16DA-D8FB-F6A17F596E5F";
createNode transform -n "transform45" -p "|group2|pasted__pCube2";
	rename -uid "15CBE7C5-A34D-E040-58B6-358F76FC8783";
	setAttr ".v" no;
createNode mesh -n "pasted__pCubeShape2" -p "transform45";
	rename -uid "F68EC936-0040-7CA2-8402-C3AD9100C19C";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.25 9.6857548e-08 -9.6857548e-08 
		-0.25 9.6857548e-08 -9.6857548e-08 0.25 -9.6857548e-08 -9.6857548e-08 -0.25 -9.6857548e-08 
		-9.6857548e-08 0.25 -9.6857548e-08 9.6857548e-08 -0.25 -9.6857548e-08 9.6857548e-08 
		0.25 9.6857548e-08 9.6857548e-08 -0.25 9.6857548e-08 9.6857548e-08;
createNode transform -n "pasted__group1" -p "group2";
	rename -uid "99DD9108-A04E-7896-BC57-36A60B6FF841";
	setAttr ".t" -type "double3" 0.99999999999999989 0 0 ;
createNode transform -n "pasted__pasted__pCube2" -p "|group2|pasted__group1";
	rename -uid "D15856F3-9F4B-B9C8-1742-1F93D9477088";
createNode transform -n "transform44" -p "|group2|pasted__group1|pasted__pasted__pCube2";
	rename -uid "B31C3035-2649-CF7A-FA91-FC863571991D";
	setAttr ".v" no;
createNode mesh -n "pasted__pasted__pCubeShape2" -p "transform44";
	rename -uid "E614AC71-A54B-774B-B6DD-93A667CDC979";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.25 9.6857548e-08 -9.6857548e-08 
		-0.25 9.6857548e-08 -9.6857548e-08 0.25 -9.6857548e-08 -9.6857548e-08 -0.25 -9.6857548e-08 
		-9.6857548e-08 0.25 -9.6857548e-08 9.6857548e-08 -0.25 -9.6857548e-08 9.6857548e-08 
		0.25 9.6857548e-08 9.6857548e-08 -0.25 9.6857548e-08 9.6857548e-08;
createNode transform -n "group3";
	rename -uid "B8971B8D-AB49-BA1D-8FE1-32A5E6029FE9";
	setAttr ".t" -type "double3" 4 0 0 ;
	setAttr ".rp" -type "double3" 1.5 0 0 ;
	setAttr ".sp" -type "double3" 1.5 0 0 ;
createNode transform -n "pasted__pCube2" -p "group3";
	rename -uid "70B9F617-C145-A6AF-BD8E-48A9F6FC2835";
createNode transform -n "transform43" -p "|group3|pasted__pCube2";
	rename -uid "EE43E427-8C4E-630F-DF1C-C991E4C7D7EC";
	setAttr ".v" no;
createNode mesh -n "pasted__pCubeShape2" -p "transform43";
	rename -uid "886A4157-B549-AA7D-A72C-15A1BD9767B3";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.25 9.6857548e-08 -9.6857548e-08 
		-0.25 9.6857548e-08 -9.6857548e-08 0.25 -9.6857548e-08 -9.6857548e-08 -0.25 -9.6857548e-08 
		-9.6857548e-08 0.25 -9.6857548e-08 9.6857548e-08 -0.25 -9.6857548e-08 9.6857548e-08 
		0.25 9.6857548e-08 9.6857548e-08 -0.25 9.6857548e-08 9.6857548e-08;
createNode transform -n "pasted__group1" -p "group3";
	rename -uid "0E69987D-9B4B-313E-2C1B-87AF5083CC23";
	setAttr ".t" -type "double3" 0.99999999999999989 0 0 ;
createNode transform -n "pasted__pasted__pCube2" -p "|group3|pasted__group1";
	rename -uid "03BB7F7A-FE4E-D7B7-A846-EB8E0CDFE2E2";
createNode transform -n "transform42" -p "|group3|pasted__group1|pasted__pasted__pCube2";
	rename -uid "AB1C667E-764D-AF3E-9386-EA9FDE752A42";
	setAttr ".v" no;
createNode mesh -n "pasted__pasted__pCubeShape2" -p "transform42";
	rename -uid "E51809C0-DE48-1AAD-1293-BAB3705F936F";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.25 9.6857548e-08 -9.6857548e-08 
		-0.25 9.6857548e-08 -9.6857548e-08 0.25 -9.6857548e-08 -9.6857548e-08 -0.25 -9.6857548e-08 
		-9.6857548e-08 0.25 -9.6857548e-08 9.6857548e-08 -0.25 -9.6857548e-08 9.6857548e-08 
		0.25 9.6857548e-08 9.6857548e-08 -0.25 9.6857548e-08 9.6857548e-08;
createNode transform -n "pasted__group2" -p "group3";
	rename -uid "73A4ABE4-DA40-EA8A-7270-D28790AAC206";
	setAttr ".t" -type "double3" 2 0 0 ;
	setAttr ".rp" -type "double3" 0.5 0 0 ;
	setAttr ".sp" -type "double3" 0.5 0 0 ;
createNode transform -n "pasted__pasted__pCube2" -p "|group3|pasted__group2";
	rename -uid "35B62AE8-F24B-768C-CEA1-F6A90E725B98";
createNode transform -n "transform41" -p "|group3|pasted__group2|pasted__pasted__pCube2";
	rename -uid "195330B9-3245-0A78-9458-3FB7125D8EB0";
	setAttr ".v" no;
createNode mesh -n "pasted__pasted__pCubeShape2" -p "transform41";
	rename -uid "C2587B77-9245-591F-F153-5B91CF014C28";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.25 9.6857548e-08 -9.6857548e-08 
		-0.25 9.6857548e-08 -9.6857548e-08 0.25 -9.6857548e-08 -9.6857548e-08 -0.25 -9.6857548e-08 
		-9.6857548e-08 0.25 -9.6857548e-08 9.6857548e-08 -0.25 -9.6857548e-08 9.6857548e-08 
		0.25 9.6857548e-08 9.6857548e-08 -0.25 9.6857548e-08 9.6857548e-08;
createNode transform -n "pasted__pasted__group1" -p "|group3|pasted__group2";
	rename -uid "88201F35-0744-37D5-7BF7-96B052C4A15C";
	setAttr ".t" -type "double3" 0.99999999999999989 0 0 ;
createNode transform -n "pasted__pasted__pasted__pCube2" -p "|group3|pasted__group2|pasted__pasted__group1";
	rename -uid "F0B41F63-B043-4786-B946-0D93F8E61ABA";
createNode transform -n "transform40" -p "|group3|pasted__group2|pasted__pasted__group1|pasted__pasted__pasted__pCube2";
	rename -uid "957ED47B-5541-3347-03F7-B29E1C087F03";
	setAttr ".v" no;
createNode mesh -n "pasted__pasted__pasted__pCubeShape2" -p "transform40";
	rename -uid "8AD4527D-7049-A1EA-A8F8-5A81CDAFB394";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.25 9.6857548e-08 -9.6857548e-08 
		-0.25 9.6857548e-08 -9.6857548e-08 0.25 -9.6857548e-08 -9.6857548e-08 -0.25 -9.6857548e-08 
		-9.6857548e-08 0.25 -9.6857548e-08 9.6857548e-08 -0.25 -9.6857548e-08 9.6857548e-08 
		0.25 9.6857548e-08 9.6857548e-08 -0.25 9.6857548e-08 9.6857548e-08;
createNode transform -n "group4";
	rename -uid "E5E5F16C-BB4E-DCC8-5EF5-3AA910DAB282";
	setAttr ".t" -type "double3" -8 0 0 ;
	setAttr ".rp" -type "double3" 3.5 0 0 ;
	setAttr ".sp" -type "double3" 3.5 0 0 ;
createNode transform -n "pasted__group1" -p "group4";
	rename -uid "E84A17E5-134A-EB0B-5987-B7A7BF98FA92";
	setAttr ".t" -type "double3" 0.99999999999999989 0 0 ;
createNode transform -n "pasted__pasted__pCube2" -p "|group4|pasted__group1";
	rename -uid "612D34FB-7645-283C-B204-4EBC331A48D8";
createNode transform -n "transform39" -p "|group4|pasted__group1|pasted__pasted__pCube2";
	rename -uid "C91BAE5A-B64B-087F-75C5-83BB72AF8192";
	setAttr ".v" no;
createNode mesh -n "pasted__pasted__pCubeShape2" -p "transform39";
	rename -uid "F3D59FC6-F741-4D05-A15C-CF8383AEDA63";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.25 9.6857548e-08 -9.6857548e-08 
		-0.25 9.6857548e-08 -9.6857548e-08 0.25 -9.6857548e-08 -9.6857548e-08 -0.25 -9.6857548e-08 
		-9.6857548e-08 0.25 -9.6857548e-08 9.6857548e-08 -0.25 -9.6857548e-08 9.6857548e-08 
		0.25 9.6857548e-08 9.6857548e-08 -0.25 9.6857548e-08 9.6857548e-08;
createNode transform -n "pasted__group2" -p "group4";
	rename -uid "0473D92D-3848-B773-499F-F8B4DB22FEC5";
	setAttr ".t" -type "double3" 2 0 0 ;
	setAttr ".rp" -type "double3" 0.5 0 0 ;
	setAttr ".sp" -type "double3" 0.5 0 0 ;
createNode transform -n "pasted__pasted__pCube2" -p "|group4|pasted__group2";
	rename -uid "6B8F720F-0944-C405-12BC-79BE375EE92B";
createNode transform -n "transform38" -p "|group4|pasted__group2|pasted__pasted__pCube2";
	rename -uid "9B3A527C-AC41-480A-8E0B-C488AFA87040";
	setAttr ".v" no;
createNode mesh -n "pasted__pasted__pCubeShape2" -p "transform38";
	rename -uid "BF5350F5-474A-474F-4D53-5D804AEF6EBA";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.25 9.6857548e-08 -9.6857548e-08 
		-0.25 9.6857548e-08 -9.6857548e-08 0.25 -9.6857548e-08 -9.6857548e-08 -0.25 -9.6857548e-08 
		-9.6857548e-08 0.25 -9.6857548e-08 9.6857548e-08 -0.25 -9.6857548e-08 9.6857548e-08 
		0.25 9.6857548e-08 9.6857548e-08 -0.25 9.6857548e-08 9.6857548e-08;
createNode transform -n "pasted__pasted__group1" -p "|group4|pasted__group2";
	rename -uid "5E42CE01-D840-B743-2669-63994C898A97";
	setAttr ".t" -type "double3" 0.99999999999999989 0 0 ;
createNode transform -n "pasted__pasted__pasted__pCube2" -p "|group4|pasted__group2|pasted__pasted__group1";
	rename -uid "70C09703-7F40-2A0B-E566-E0A86C8834ED";
createNode transform -n "transform37" -p "|group4|pasted__group2|pasted__pasted__group1|pasted__pasted__pasted__pCube2";
	rename -uid "27984585-ED42-54F9-59EC-0A81A36C89F5";
	setAttr ".v" no;
createNode mesh -n "pasted__pasted__pasted__pCubeShape2" -p "transform37";
	rename -uid "87EB48BD-744F-756B-BFB1-E4A178D623EC";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.25 9.6857548e-08 -9.6857548e-08 
		-0.25 9.6857548e-08 -9.6857548e-08 0.25 -9.6857548e-08 -9.6857548e-08 -0.25 -9.6857548e-08 
		-9.6857548e-08 0.25 -9.6857548e-08 9.6857548e-08 -0.25 -9.6857548e-08 9.6857548e-08 
		0.25 9.6857548e-08 9.6857548e-08 -0.25 9.6857548e-08 9.6857548e-08;
createNode transform -n "pasted__group3" -p "group4";
	rename -uid "8FDE8D23-324B-C393-F62B-1597CC35BEC6";
	setAttr ".t" -type "double3" 4 0 0 ;
	setAttr ".rp" -type "double3" 1.5 0 0 ;
	setAttr ".sp" -type "double3" 1.5 0 0 ;
createNode transform -n "pasted__pasted__pCube2" -p "|group4|pasted__group3";
	rename -uid "A870892D-7045-DF2E-6750-48B3825E44CA";
createNode transform -n "transform36" -p "|group4|pasted__group3|pasted__pasted__pCube2";
	rename -uid "10D4E66E-6F4D-9931-5577-5D86ACC9733D";
	setAttr ".v" no;
createNode mesh -n "pasted__pasted__pCubeShape2" -p "transform36";
	rename -uid "46ED8A06-5743-4AA9-6609-ACA2A74F423F";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.25 9.6857548e-08 -9.6857548e-08 
		-0.25 9.6857548e-08 -9.6857548e-08 0.25 -9.6857548e-08 -9.6857548e-08 -0.25 -9.6857548e-08 
		-9.6857548e-08 0.25 -9.6857548e-08 9.6857548e-08 -0.25 -9.6857548e-08 9.6857548e-08 
		0.25 9.6857548e-08 9.6857548e-08 -0.25 9.6857548e-08 9.6857548e-08;
createNode transform -n "pasted__pasted__group1" -p "|group4|pasted__group3";
	rename -uid "12985D28-904B-9176-8312-FEB0EDBF2DFE";
	setAttr ".t" -type "double3" 0.99999999999999989 0 0 ;
createNode transform -n "pasted__pasted__pasted__pCube2" -p "|group4|pasted__group3|pasted__pasted__group1";
	rename -uid "F05ABE15-A447-111C-B2D3-628926390185";
createNode transform -n "transform35" -p "|group4|pasted__group3|pasted__pasted__group1|pasted__pasted__pasted__pCube2";
	rename -uid "52AD862C-904C-6E91-8D41-DCB0A22867F0";
	setAttr ".v" no;
createNode mesh -n "pasted__pasted__pasted__pCubeShape2" -p "transform35";
	rename -uid "DA25BE2E-7649-3576-24FD-8FA2EC902205";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.25 9.6857548e-08 -9.6857548e-08 
		-0.25 9.6857548e-08 -9.6857548e-08 0.25 -9.6857548e-08 -9.6857548e-08 -0.25 -9.6857548e-08 
		-9.6857548e-08 0.25 -9.6857548e-08 9.6857548e-08 -0.25 -9.6857548e-08 9.6857548e-08 
		0.25 9.6857548e-08 9.6857548e-08 -0.25 9.6857548e-08 9.6857548e-08;
createNode transform -n "pasted__pasted__group2" -p "|group4|pasted__group3";
	rename -uid "39F59D38-2A47-F563-D33C-4A93283BF5A3";
	setAttr ".t" -type "double3" 2 0 0 ;
	setAttr ".rp" -type "double3" 0.5 0 0 ;
	setAttr ".sp" -type "double3" 0.5 0 0 ;
createNode transform -n "pasted__pasted__pasted__pCube2" -p "|group4|pasted__group3|pasted__pasted__group2";
	rename -uid "88E78E2B-DE4C-CDF9-B7C9-4F8B5539A682";
createNode transform -n "transform34" -p "|group4|pasted__group3|pasted__pasted__group2|pasted__pasted__pasted__pCube2";
	rename -uid "D2ECE4FB-2D4D-7494-91E1-BB939EAF76F3";
	setAttr ".v" no;
createNode mesh -n "pasted__pasted__pasted__pCubeShape2" -p "transform34";
	rename -uid "AAF07ACA-7C44-D42D-6B18-81AD059B2C62";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.25 9.6857548e-08 -9.6857548e-08 
		-0.25 9.6857548e-08 -9.6857548e-08 0.25 -9.6857548e-08 -9.6857548e-08 -0.25 -9.6857548e-08 
		-9.6857548e-08 0.25 -9.6857548e-08 9.6857548e-08 -0.25 -9.6857548e-08 9.6857548e-08 
		0.25 9.6857548e-08 9.6857548e-08 -0.25 9.6857548e-08 9.6857548e-08;
createNode transform -n "pasted__pasted__pasted__group1" -p "|group4|pasted__group3|pasted__pasted__group2";
	rename -uid "2610B84E-7848-329A-0FC2-5D9C884A8551";
	setAttr ".t" -type "double3" 0.99999999999999989 0 0 ;
createNode transform -n "pasted__pasted__pasted__pasted__pCube2" -p "|group4|pasted__group3|pasted__pasted__group2|pasted__pasted__pasted__group1";
	rename -uid "84BCAA80-CB45-66E7-1BFC-958CAB534F39";
createNode transform -n "transform33" -p "|group4|pasted__group3|pasted__pasted__group2|pasted__pasted__pasted__group1|pasted__pasted__pasted__pasted__pCube2";
	rename -uid "5E7C4709-3F48-8BE0-78D5-FBA96AAB9164";
	setAttr ".v" no;
createNode mesh -n "pasted__pasted__pasted__pasted__pCubeShape2" -p "transform33";
	rename -uid "6127F96E-7449-3167-B3BE-3CBD3098C376";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.25 9.6857548e-08 -9.6857548e-08 
		-0.25 9.6857548e-08 -9.6857548e-08 0.25 -9.6857548e-08 -9.6857548e-08 -0.25 -9.6857548e-08 
		-9.6857548e-08 0.25 -9.6857548e-08 9.6857548e-08 -0.25 -9.6857548e-08 9.6857548e-08 
		0.25 9.6857548e-08 9.6857548e-08 -0.25 9.6857548e-08 9.6857548e-08;
createNode transform -n "group5";
	rename -uid "C11C841F-3946-00CD-7F6C-A5A2BCFB8D1E";
	setAttr ".t" -type "double3" 0 3 0 ;
createNode transform -n "pasted__pCube2" -p "group5";
	rename -uid "6820E464-4044-4BA8-6D03-05BD3AD38C8D";
createNode transform -n "transform31" -p "|group5|pasted__pCube2";
	rename -uid "F4B8311A-5B4C-2616-DC5A-8FB28A1E50AE";
	setAttr ".v" no;
createNode mesh -n "pasted__pCubeShape2" -p "transform31";
	rename -uid "D004775F-DF49-D2E2-1BF5-E2A8ADEF02DC";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.25 9.6857548e-08 -9.6857548e-08 
		-0.25 9.6857548e-08 -9.6857548e-08 0.25 -9.6857548e-08 -9.6857548e-08 -0.25 -9.6857548e-08 
		-9.6857548e-08 0.25 -9.6857548e-08 9.6857548e-08 -0.25 -9.6857548e-08 9.6857548e-08 
		0.25 9.6857548e-08 9.6857548e-08 -0.25 9.6857548e-08 9.6857548e-08;
createNode transform -n "pasted__group1" -p "group5";
	rename -uid "3FBCE51D-A54D-A2E3-D168-E1B3E7FCFAB6";
	setAttr ".t" -type "double3" 0.99999999999999989 0 0 ;
createNode transform -n "pasted__pasted__pCube2" -p "|group5|pasted__group1";
	rename -uid "D5BAE8F8-C04B-A012-5856-D8A3FF9047AA";
createNode transform -n "transform30" -p "|group5|pasted__group1|pasted__pasted__pCube2";
	rename -uid "2AA3CE4A-A741-0AC4-5611-6BBA1AEBAA3A";
	setAttr ".v" no;
createNode mesh -n "pasted__pasted__pCubeShape2" -p "transform30";
	rename -uid "AC668FAE-6C44-BADE-7466-0B918932E08C";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.25 9.6857548e-08 -9.6857548e-08 
		-0.25 9.6857548e-08 -9.6857548e-08 0.25 -9.6857548e-08 -9.6857548e-08 -0.25 -9.6857548e-08 
		-9.6857548e-08 0.25 -9.6857548e-08 9.6857548e-08 -0.25 -9.6857548e-08 9.6857548e-08 
		0.25 9.6857548e-08 9.6857548e-08 -0.25 9.6857548e-08 9.6857548e-08;
createNode transform -n "pasted__group2" -p "group5";
	rename -uid "9B0D7A69-774A-9F3A-FE9D-AC87E0BED867";
	setAttr ".t" -type "double3" 2 0 0 ;
	setAttr ".rp" -type "double3" 0.5 0 0 ;
	setAttr ".sp" -type "double3" 0.5 0 0 ;
createNode transform -n "pasted__pasted__pCube2" -p "|group5|pasted__group2";
	rename -uid "FD07794A-674B-A867-C391-B3AD73BA4B79";
createNode transform -n "transform29" -p "|group5|pasted__group2|pasted__pasted__pCube2";
	rename -uid "D4D481B4-D44A-F391-D247-EDBD67576E24";
	setAttr ".v" no;
createNode mesh -n "pasted__pasted__pCubeShape2" -p "transform29";
	rename -uid "A27AC91C-2C43-39E1-DD64-6786204201DF";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.25 9.6857548e-08 -9.6857548e-08 
		-0.25 9.6857548e-08 -9.6857548e-08 0.25 -9.6857548e-08 -9.6857548e-08 -0.25 -9.6857548e-08 
		-9.6857548e-08 0.25 -9.6857548e-08 9.6857548e-08 -0.25 -9.6857548e-08 9.6857548e-08 
		0.25 9.6857548e-08 9.6857548e-08 -0.25 9.6857548e-08 9.6857548e-08;
createNode transform -n "pasted__pasted__group1" -p "|group5|pasted__group2";
	rename -uid "1A473A39-1D4D-BCF4-7788-6997F3518902";
	setAttr ".t" -type "double3" 0.99999999999999989 0 0 ;
createNode transform -n "pasted__pasted__pasted__pCube2" -p "|group5|pasted__group2|pasted__pasted__group1";
	rename -uid "43F87989-214A-875D-9E62-4A92B909F0A9";
createNode transform -n "transform28" -p "|group5|pasted__group2|pasted__pasted__group1|pasted__pasted__pasted__pCube2";
	rename -uid "42FF5F97-CB4F-C36F-F13A-968164BD9A51";
	setAttr ".v" no;
createNode mesh -n "pasted__pasted__pasted__pCubeShape2" -p "transform28";
	rename -uid "089B3F81-4D4D-66C9-AA98-9894264122A4";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.25 9.6857548e-08 -9.6857548e-08 
		-0.25 9.6857548e-08 -9.6857548e-08 0.25 -9.6857548e-08 -9.6857548e-08 -0.25 -9.6857548e-08 
		-9.6857548e-08 0.25 -9.6857548e-08 9.6857548e-08 -0.25 -9.6857548e-08 9.6857548e-08 
		0.25 9.6857548e-08 9.6857548e-08 -0.25 9.6857548e-08 9.6857548e-08;
createNode transform -n "pasted__group3" -p "group5";
	rename -uid "904BBABF-0147-7225-F475-95AE30271FF8";
	setAttr ".t" -type "double3" 4 0 0 ;
	setAttr ".rp" -type "double3" 1.5 0 0 ;
	setAttr ".sp" -type "double3" 1.5 0 0 ;
createNode transform -n "pasted__pasted__pCube2" -p "|group5|pasted__group3";
	rename -uid "B253A7F1-5C4C-CDB1-A7F4-0186FA48783B";
createNode transform -n "transform27" -p "|group5|pasted__group3|pasted__pasted__pCube2";
	rename -uid "21FAFCE1-0948-5584-9D44-B7BE09244E2E";
	setAttr ".v" no;
createNode mesh -n "pasted__pasted__pCubeShape2" -p "transform27";
	rename -uid "2BF8D04C-0F47-E46C-15EB-CBB2F8CA26EC";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.25 9.6857548e-08 -9.6857548e-08 
		-0.25 9.6857548e-08 -9.6857548e-08 0.25 -9.6857548e-08 -9.6857548e-08 -0.25 -9.6857548e-08 
		-9.6857548e-08 0.25 -9.6857548e-08 9.6857548e-08 -0.25 -9.6857548e-08 9.6857548e-08 
		0.25 9.6857548e-08 9.6857548e-08 -0.25 9.6857548e-08 9.6857548e-08;
createNode transform -n "pasted__pasted__group1" -p "|group5|pasted__group3";
	rename -uid "470B5226-FF40-E779-D671-9A8C3AF254E3";
	setAttr ".t" -type "double3" 0.99999999999999989 0 0 ;
createNode transform -n "pasted__pasted__pasted__pCube2" -p "|group5|pasted__group3|pasted__pasted__group1";
	rename -uid "E5367490-CF48-3B19-A13F-618F6C33E58F";
createNode transform -n "transform26" -p "|group5|pasted__group3|pasted__pasted__group1|pasted__pasted__pasted__pCube2";
	rename -uid "21B9ABB4-C144-7328-CCB0-DD9AEBD8EBE0";
	setAttr ".v" no;
createNode mesh -n "pasted__pasted__pasted__pCubeShape2" -p "transform26";
	rename -uid "F30C68AF-5747-B046-CF44-3DAD29F20D87";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.25 9.6857548e-08 -9.6857548e-08 
		-0.25 9.6857548e-08 -9.6857548e-08 0.25 -9.6857548e-08 -9.6857548e-08 -0.25 -9.6857548e-08 
		-9.6857548e-08 0.25 -9.6857548e-08 9.6857548e-08 -0.25 -9.6857548e-08 9.6857548e-08 
		0.25 9.6857548e-08 9.6857548e-08 -0.25 9.6857548e-08 9.6857548e-08;
createNode transform -n "pasted__pasted__group2" -p "|group5|pasted__group3";
	rename -uid "A4DFE869-2942-8D11-1F1E-3688FBB96B7A";
	setAttr ".t" -type "double3" 2 0 0 ;
	setAttr ".rp" -type "double3" 0.5 0 0 ;
	setAttr ".sp" -type "double3" 0.5 0 0 ;
createNode transform -n "pasted__pasted__pasted__pCube2" -p "|group5|pasted__group3|pasted__pasted__group2";
	rename -uid "3CE245BB-BD46-C880-CA56-0D8345544C62";
createNode transform -n "transform25" -p "|group5|pasted__group3|pasted__pasted__group2|pasted__pasted__pasted__pCube2";
	rename -uid "F551B833-094D-BC3B-7BB0-2BB75CC2CBA4";
	setAttr ".v" no;
createNode mesh -n "pasted__pasted__pasted__pCubeShape2" -p "transform25";
	rename -uid "70D80F66-6A42-EFCE-6DB3-879BB89A740F";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.25 9.6857548e-08 -9.6857548e-08 
		-0.25 9.6857548e-08 -9.6857548e-08 0.25 -9.6857548e-08 -9.6857548e-08 -0.25 -9.6857548e-08 
		-9.6857548e-08 0.25 -9.6857548e-08 9.6857548e-08 -0.25 -9.6857548e-08 9.6857548e-08 
		0.25 9.6857548e-08 9.6857548e-08 -0.25 9.6857548e-08 9.6857548e-08;
createNode transform -n "pasted__pasted__pasted__group1" -p "|group5|pasted__group3|pasted__pasted__group2";
	rename -uid "ACDD589F-8844-58F4-A372-DB9675799111";
	setAttr ".t" -type "double3" 0.99999999999999989 0 0 ;
createNode transform -n "pasted__pasted__pasted__pasted__pCube2" -p "|group5|pasted__group3|pasted__pasted__group2|pasted__pasted__pasted__group1";
	rename -uid "BF47DCAE-0B41-60CA-14CD-21AA2BABF0C1";
createNode transform -n "transform24" -p "|group5|pasted__group3|pasted__pasted__group2|pasted__pasted__pasted__group1|pasted__pasted__pasted__pasted__pCube2";
	rename -uid "A2ED0A40-F24B-1C31-46D2-F89721DAD1F0";
	setAttr ".v" no;
createNode mesh -n "pasted__pasted__pasted__pasted__pCubeShape2" -p "transform24";
	rename -uid "D781D79E-774B-9F51-8A17-709077D367FD";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.25 9.6857548e-08 -9.6857548e-08 
		-0.25 9.6857548e-08 -9.6857548e-08 0.25 -9.6857548e-08 -9.6857548e-08 -0.25 -9.6857548e-08 
		-9.6857548e-08 0.25 -9.6857548e-08 9.6857548e-08 -0.25 -9.6857548e-08 9.6857548e-08 
		0.25 9.6857548e-08 9.6857548e-08 -0.25 9.6857548e-08 9.6857548e-08;
createNode transform -n "pasted__group4" -p "group5";
	rename -uid "ACF3DA22-6243-B334-95F6-48A768A4AF5A";
	setAttr ".t" -type "double3" -8 0 0 ;
	setAttr ".rp" -type "double3" 3.5 0 0 ;
	setAttr ".sp" -type "double3" 3.5 0 0 ;
createNode transform -n "pasted__pasted__group1" -p "pasted__group4";
	rename -uid "34CBB8C3-4B4E-856C-01A3-C38F10D79E97";
	setAttr ".t" -type "double3" 0.99999999999999989 0 0 ;
createNode transform -n "pasted__pasted__pasted__pCube2" -p "|group5|pasted__group4|pasted__pasted__group1";
	rename -uid "41626D6A-AE43-414C-5B1C-4F9964CC1EA6";
createNode transform -n "transform23" -p "|group5|pasted__group4|pasted__pasted__group1|pasted__pasted__pasted__pCube2";
	rename -uid "35BC2C6E-EC45-3356-8C39-3EA810D405FF";
	setAttr ".v" no;
createNode mesh -n "pasted__pasted__pasted__pCubeShape2" -p "transform23";
	rename -uid "2F4328DF-5644-43FC-4E41-B394537CA57A";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.25 9.6857548e-08 -9.6857548e-08 
		-0.25 9.6857548e-08 -9.6857548e-08 0.25 -9.6857548e-08 -9.6857548e-08 -0.25 -9.6857548e-08 
		-9.6857548e-08 0.25 -9.6857548e-08 9.6857548e-08 -0.25 -9.6857548e-08 9.6857548e-08 
		0.25 9.6857548e-08 9.6857548e-08 -0.25 9.6857548e-08 9.6857548e-08;
createNode transform -n "pasted__pasted__group2" -p "pasted__group4";
	rename -uid "293088A9-B242-2452-A964-3FB0B0A95061";
	setAttr ".t" -type "double3" 2 0 0 ;
	setAttr ".rp" -type "double3" 0.5 0 0 ;
	setAttr ".sp" -type "double3" 0.5 0 0 ;
createNode transform -n "pasted__pasted__pasted__pCube2" -p "|group5|pasted__group4|pasted__pasted__group2";
	rename -uid "4CBC65FA-0A4A-68D4-96C9-78871CA86761";
createNode transform -n "transform22" -p "|group5|pasted__group4|pasted__pasted__group2|pasted__pasted__pasted__pCube2";
	rename -uid "A6B6B59A-DE4C-57EE-E2F0-CB81682D13B8";
	setAttr ".v" no;
createNode mesh -n "pasted__pasted__pasted__pCubeShape2" -p "transform22";
	rename -uid "E95FF617-354E-5AED-8CDE-01A540D23756";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.25 9.6857548e-08 -9.6857548e-08 
		-0.25 9.6857548e-08 -9.6857548e-08 0.25 -9.6857548e-08 -9.6857548e-08 -0.25 -9.6857548e-08 
		-9.6857548e-08 0.25 -9.6857548e-08 9.6857548e-08 -0.25 -9.6857548e-08 9.6857548e-08 
		0.25 9.6857548e-08 9.6857548e-08 -0.25 9.6857548e-08 9.6857548e-08;
createNode transform -n "pasted__pasted__pasted__group1" -p "|group5|pasted__group4|pasted__pasted__group2";
	rename -uid "07E93872-894A-4A0F-85AE-F791C3458154";
	setAttr ".t" -type "double3" 0.99999999999999989 0 0 ;
createNode transform -n "pasted__pasted__pasted__pasted__pCube2" -p "|group5|pasted__group4|pasted__pasted__group2|pasted__pasted__pasted__group1";
	rename -uid "F6998008-4443-61A5-9307-DFA2C745F1AC";
createNode transform -n "transform21" -p "|group5|pasted__group4|pasted__pasted__group2|pasted__pasted__pasted__group1|pasted__pasted__pasted__pasted__pCube2";
	rename -uid "9C737211-2B44-F991-E864-51BAC7686288";
	setAttr ".v" no;
createNode mesh -n "pasted__pasted__pasted__pasted__pCubeShape2" -p "transform21";
	rename -uid "407D0729-BA48-B568-706B-FAAD6FB77382";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.25 9.6857548e-08 -9.6857548e-08 
		-0.25 9.6857548e-08 -9.6857548e-08 0.25 -9.6857548e-08 -9.6857548e-08 -0.25 -9.6857548e-08 
		-9.6857548e-08 0.25 -9.6857548e-08 9.6857548e-08 -0.25 -9.6857548e-08 9.6857548e-08 
		0.25 9.6857548e-08 9.6857548e-08 -0.25 9.6857548e-08 9.6857548e-08;
createNode transform -n "pasted__pasted__group3" -p "pasted__group4";
	rename -uid "755BFE4A-2E48-F393-C737-569A28D6FA47";
	setAttr ".t" -type "double3" 4 0 0 ;
	setAttr ".rp" -type "double3" 1.5 0 0 ;
	setAttr ".sp" -type "double3" 1.5 0 0 ;
createNode transform -n "pasted__pasted__pasted__pCube2" -p "|group5|pasted__group4|pasted__pasted__group3";
	rename -uid "BADF01E4-F449-3778-C6E7-7B8D48A0C8F4";
createNode transform -n "transform20" -p "|group5|pasted__group4|pasted__pasted__group3|pasted__pasted__pasted__pCube2";
	rename -uid "EC663554-1C42-D963-98D3-558F67283650";
	setAttr ".v" no;
createNode mesh -n "pasted__pasted__pasted__pCubeShape2" -p "transform20";
	rename -uid "7D1C34BD-B641-6E4B-EF6D-80A17A0C820A";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.25 9.6857548e-08 -9.6857548e-08 
		-0.25 9.6857548e-08 -9.6857548e-08 0.25 -9.6857548e-08 -9.6857548e-08 -0.25 -9.6857548e-08 
		-9.6857548e-08 0.25 -9.6857548e-08 9.6857548e-08 -0.25 -9.6857548e-08 9.6857548e-08 
		0.25 9.6857548e-08 9.6857548e-08 -0.25 9.6857548e-08 9.6857548e-08;
createNode transform -n "pasted__pasted__pasted__group1" -p "|group5|pasted__group4|pasted__pasted__group3";
	rename -uid "8C641406-D543-55B2-C4C1-7D8BE6E84C0D";
	setAttr ".t" -type "double3" 0.99999999999999989 0 0 ;
createNode transform -n "pasted__pasted__pasted__pasted__pCube2" -p "|group5|pasted__group4|pasted__pasted__group3|pasted__pasted__pasted__group1";
	rename -uid "5D2D1325-4A45-621F-7AA1-0096441AD5B9";
createNode transform -n "transform19" -p "|group5|pasted__group4|pasted__pasted__group3|pasted__pasted__pasted__group1|pasted__pasted__pasted__pasted__pCube2";
	rename -uid "B0A40E7B-F647-43B8-2884-C4AE9D996792";
	setAttr ".v" no;
createNode mesh -n "pasted__pasted__pasted__pasted__pCubeShape2" -p "transform19";
	rename -uid "09A505D8-EB45-4088-60A7-9AB9E4F80008";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.25 9.6857548e-08 -9.6857548e-08 
		-0.25 9.6857548e-08 -9.6857548e-08 0.25 -9.6857548e-08 -9.6857548e-08 -0.25 -9.6857548e-08 
		-9.6857548e-08 0.25 -9.6857548e-08 9.6857548e-08 -0.25 -9.6857548e-08 9.6857548e-08 
		0.25 9.6857548e-08 9.6857548e-08 -0.25 9.6857548e-08 9.6857548e-08;
createNode transform -n "pasted__pasted__pasted__group2" -p "|group5|pasted__group4|pasted__pasted__group3";
	rename -uid "036C3BBC-DC46-AD74-9D08-E2888731EE88";
	setAttr ".t" -type "double3" 2 0 0 ;
	setAttr ".rp" -type "double3" 0.5 0 0 ;
	setAttr ".sp" -type "double3" 0.5 0 0 ;
createNode transform -n "pasted__pasted__pasted__pasted__pCube2" -p "|group5|pasted__group4|pasted__pasted__group3|pasted__pasted__pasted__group2";
	rename -uid "185E3DBE-6942-417D-EF4D-53BED4DE93AE";
createNode transform -n "transform18" -p "|group5|pasted__group4|pasted__pasted__group3|pasted__pasted__pasted__group2|pasted__pasted__pasted__pasted__pCube2";
	rename -uid "66100253-0749-2795-8CEA-EE9AD54B06F8";
	setAttr ".v" no;
createNode mesh -n "pasted__pasted__pasted__pasted__pCubeShape2" -p "transform18";
	rename -uid "A493FBBC-CE4B-92B5-04FE-559791282D71";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.25 9.6857548e-08 -9.6857548e-08 
		-0.25 9.6857548e-08 -9.6857548e-08 0.25 -9.6857548e-08 -9.6857548e-08 -0.25 -9.6857548e-08 
		-9.6857548e-08 0.25 -9.6857548e-08 9.6857548e-08 -0.25 -9.6857548e-08 9.6857548e-08 
		0.25 9.6857548e-08 9.6857548e-08 -0.25 9.6857548e-08 9.6857548e-08;
createNode transform -n "pasted__pasted__pasted__pasted__group1" -p "|group5|pasted__group4|pasted__pasted__group3|pasted__pasted__pasted__group2";
	rename -uid "3A4611A2-D642-C446-0F1D-3DA83482A728";
	setAttr ".t" -type "double3" 0.99999999999999989 0 0 ;
createNode transform -n "pasted__pasted__pasted__pasted__pasted__pCube2" -p "|group5|pasted__group4|pasted__pasted__group3|pasted__pasted__pasted__group2|pasted__pasted__pasted__pasted__group1";
	rename -uid "FE86D643-E642-D7F4-6E5D-6BB4DB2AE5B8";
createNode transform -n "transform17" -p "|group5|pasted__group4|pasted__pasted__group3|pasted__pasted__pasted__group2|pasted__pasted__pasted__pasted__group1|pasted__pasted__pasted__pasted__pasted__pCube2";
	rename -uid "7024CE65-A345-5358-0059-4A84D5A1720F";
	setAttr ".v" no;
createNode mesh -n "pasted__pasted__pasted__pasted__pasted__pCubeShape2" -p "transform17";
	rename -uid "D0A232D1-3144-7372-128F-D0903DF77054";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.25 9.6857548e-08 -9.6857548e-08 
		-0.25 9.6857548e-08 -9.6857548e-08 0.25 -9.6857548e-08 -9.6857548e-08 -0.25 -9.6857548e-08 
		-9.6857548e-08 0.25 -9.6857548e-08 9.6857548e-08 -0.25 -9.6857548e-08 9.6857548e-08 
		0.25 9.6857548e-08 9.6857548e-08 -0.25 9.6857548e-08 9.6857548e-08;
createNode transform -n "group6";
	rename -uid "5039C41B-D546-67A5-FC34-CAA1D21C99CB";
	setAttr ".t" -type "double3" 0 -1.5 0 ;
	setAttr ".rp" -type "double3" 0 3 0 ;
	setAttr ".sp" -type "double3" 0 3 0 ;
createNode transform -n "pasted__group5" -p "group6";
	rename -uid "2E5443C5-6A44-4A85-1A9A-D1A4A295E7EF";
	setAttr ".t" -type "double3" 0 3 0 ;
createNode transform -n "pasted__pasted__pCube2" -p "pasted__group5";
	rename -uid "3803EE7F-4A4A-9461-C859-18AAE2540084";
createNode transform -n "transform15" -p "|group6|pasted__group5|pasted__pasted__pCube2";
	rename -uid "2A6AF611-7D43-E4B3-8361-96A401C41311";
	setAttr ".v" no;
createNode mesh -n "pasted__pasted__pCubeShape2" -p "transform15";
	rename -uid "E3CC6B4E-1A43-B5C4-EE63-B9B132A96BD4";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.25 -0.13327126 -9.6857548e-08 
		-0.25 -0.13327126 -9.6857548e-08 0.25 0.13327126 -9.6857548e-08 -0.25 0.13327126 
		-9.6857548e-08 0.25 0.13327126 9.6857548e-08 -0.25 0.13327126 9.6857548e-08 0.25 
		-0.13327126 9.6857548e-08 -0.25 -0.13327126 9.6857548e-08;
createNode transform -n "pasted__pasted__group1" -p "pasted__group5";
	rename -uid "8949D8F6-D143-3816-0588-989AE8147F13";
	setAttr ".t" -type "double3" 0.99999999999999989 0 0 ;
createNode transform -n "pasted__pasted__pasted__pCube2" -p "|group6|pasted__group5|pasted__pasted__group1";
	rename -uid "D8850BA6-4A42-B1AE-9E40-E39574269447";
createNode transform -n "transform14" -p "|group6|pasted__group5|pasted__pasted__group1|pasted__pasted__pasted__pCube2";
	rename -uid "C95454C3-B74A-7FFB-5970-E192E5596FE1";
	setAttr ".v" no;
createNode mesh -n "pasted__pasted__pasted__pCubeShape2" -p "transform14";
	rename -uid "B5DAC9BF-CA4D-0CCF-8331-4893D595979A";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.25 -0.13327126 -9.6857548e-08 
		-0.25 -0.13327126 -9.6857548e-08 0.25 0.13327126 -9.6857548e-08 -0.25 0.13327126 
		-9.6857548e-08 0.25 0.13327126 9.6857548e-08 -0.25 0.13327126 9.6857548e-08 0.25 
		-0.13327126 9.6857548e-08 -0.25 -0.13327126 9.6857548e-08;
createNode transform -n "pasted__pasted__group2" -p "pasted__group5";
	rename -uid "C9F35011-3249-A9C4-B0DE-8993A8D9747C";
	setAttr ".t" -type "double3" 2 0 0 ;
	setAttr ".rp" -type "double3" 0.5 0 0 ;
	setAttr ".sp" -type "double3" 0.5 0 0 ;
createNode transform -n "pasted__pasted__pasted__pCube2" -p "|group6|pasted__group5|pasted__pasted__group2";
	rename -uid "D2B15B56-7645-914D-383F-6BB55B54947A";
createNode transform -n "transform13" -p "|group6|pasted__group5|pasted__pasted__group2|pasted__pasted__pasted__pCube2";
	rename -uid "B87DF2B5-DC4C-554F-F8C4-23AD9E9BFD17";
	setAttr ".v" no;
createNode mesh -n "pasted__pasted__pasted__pCubeShape2" -p "transform13";
	rename -uid "EC2A7EDD-1848-7C28-6F60-959128995CEE";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.25 -0.13327126 -9.6857548e-08 
		-0.25 -0.13327126 -9.6857548e-08 0.25 0.13327126 -9.6857548e-08 -0.25 0.13327126 
		-9.6857548e-08 0.25 0.13327126 9.6857548e-08 -0.25 0.13327126 9.6857548e-08 0.25 
		-0.13327126 9.6857548e-08 -0.25 -0.13327126 9.6857548e-08;
createNode transform -n "pasted__pasted__pasted__group1" -p "|group6|pasted__group5|pasted__pasted__group2";
	rename -uid "1F639510-7449-2DA6-3F63-E19BC74A52EB";
	setAttr ".t" -type "double3" 0.99999999999999989 0 0 ;
createNode transform -n "pasted__pasted__pasted__pasted__pCube2" -p "|group6|pasted__group5|pasted__pasted__group2|pasted__pasted__pasted__group1";
	rename -uid "522A19A8-824C-67D3-E0D5-E78890400736";
createNode transform -n "transform12" -p "|group6|pasted__group5|pasted__pasted__group2|pasted__pasted__pasted__group1|pasted__pasted__pasted__pasted__pCube2";
	rename -uid "31866FE5-1F40-8740-1C45-45AC53FFCF6C";
	setAttr ".v" no;
createNode mesh -n "pasted__pasted__pasted__pasted__pCubeShape2" -p "transform12";
	rename -uid "B2D80D38-F649-6101-325B-59B150F554D3";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.25 -0.13327126 -9.6857548e-08 
		-0.25 -0.13327126 -9.6857548e-08 0.25 0.13327126 -9.6857548e-08 -0.25 0.13327126 
		-9.6857548e-08 0.25 0.13327126 9.6857548e-08 -0.25 0.13327126 9.6857548e-08 0.25 
		-0.13327126 9.6857548e-08 -0.25 -0.13327126 9.6857548e-08;
createNode transform -n "pasted__pasted__group3" -p "pasted__group5";
	rename -uid "D58E2029-3947-E849-AE85-7BA1F10B9C8E";
	setAttr ".t" -type "double3" 4 0 0 ;
	setAttr ".rp" -type "double3" 1.5 0 0 ;
	setAttr ".sp" -type "double3" 1.5 0 0 ;
createNode transform -n "pasted__pasted__pasted__pCube2" -p "|group6|pasted__group5|pasted__pasted__group3";
	rename -uid "DFAF7EB7-8043-23A1-4080-EE9E2E48EA00";
createNode transform -n "transform11" -p "|group6|pasted__group5|pasted__pasted__group3|pasted__pasted__pasted__pCube2";
	rename -uid "3AF2F087-7F41-BBFD-29BA-E39982D214E6";
	setAttr ".v" no;
createNode mesh -n "pasted__pasted__pasted__pCubeShape2" -p "transform11";
	rename -uid "C73CA5E9-524F-7502-943E-CAABB53EC501";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.25 -0.13327126 -9.6857548e-08 
		-0.25 -0.13327126 -9.6857548e-08 0.25 0.13327126 -9.6857548e-08 -0.25 0.13327126 
		-9.6857548e-08 0.25 0.13327126 9.6857548e-08 -0.25 0.13327126 9.6857548e-08 0.25 
		-0.13327126 9.6857548e-08 -0.25 -0.13327126 9.6857548e-08;
createNode transform -n "pasted__pasted__pasted__group1" -p "|group6|pasted__group5|pasted__pasted__group3";
	rename -uid "67E9BC92-6F40-9CA3-D902-C192FD3B9F50";
	setAttr ".t" -type "double3" 0.99999999999999989 0 0 ;
createNode transform -n "pasted__pasted__pasted__pasted__pCube2" -p "|group6|pasted__group5|pasted__pasted__group3|pasted__pasted__pasted__group1";
	rename -uid "30C06089-FA46-4545-1109-408091FB91AA";
createNode transform -n "transform10" -p "|group6|pasted__group5|pasted__pasted__group3|pasted__pasted__pasted__group1|pasted__pasted__pasted__pasted__pCube2";
	rename -uid "2DC56D9A-6A42-BB52-39E0-D183D9F051D4";
	setAttr ".v" no;
createNode mesh -n "pasted__pasted__pasted__pasted__pCubeShape2" -p "transform10";
	rename -uid "0228E476-FA42-1BA4-CD99-4483EE8F2637";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.25 -0.13327126 -9.6857548e-08 
		-0.25 -0.13327126 -9.6857548e-08 0.25 0.13327126 -9.6857548e-08 -0.25 0.13327126 
		-9.6857548e-08 0.25 0.13327126 9.6857548e-08 -0.25 0.13327126 9.6857548e-08 0.25 
		-0.13327126 9.6857548e-08 -0.25 -0.13327126 9.6857548e-08;
createNode transform -n "pasted__pasted__pasted__group2" -p "|group6|pasted__group5|pasted__pasted__group3";
	rename -uid "5AF7F00C-9644-1734-3D37-4B9EA82BF1AD";
	setAttr ".t" -type "double3" 2 0 0 ;
	setAttr ".rp" -type "double3" 0.5 0 0 ;
	setAttr ".sp" -type "double3" 0.5 0 0 ;
createNode transform -n "pasted__pasted__pasted__pasted__pCube2" -p "|group6|pasted__group5|pasted__pasted__group3|pasted__pasted__pasted__group2";
	rename -uid "66A6F3BF-A54C-2DEA-1FBD-4685EC4BBD9E";
createNode transform -n "transform9" -p "|group6|pasted__group5|pasted__pasted__group3|pasted__pasted__pasted__group2|pasted__pasted__pasted__pasted__pCube2";
	rename -uid "6ECCAEE2-F244-843A-4FCD-70A067939546";
	setAttr ".v" no;
createNode mesh -n "pasted__pasted__pasted__pasted__pCubeShape2" -p "transform9";
	rename -uid "279629DD-E24C-7F30-44F6-A38837D902DD";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.25 -0.13327126 -9.6857548e-08 
		-0.25 -0.13327126 -9.6857548e-08 0.25 0.13327126 -9.6857548e-08 -0.25 0.13327126 
		-9.6857548e-08 0.25 0.13327126 9.6857548e-08 -0.25 0.13327126 9.6857548e-08 0.25 
		-0.13327126 9.6857548e-08 -0.25 -0.13327126 9.6857548e-08;
createNode transform -n "pasted__pasted__pasted__pasted__group1" -p "|group6|pasted__group5|pasted__pasted__group3|pasted__pasted__pasted__group2";
	rename -uid "99196684-8444-8DCD-5C89-53988FD5E5DC";
	setAttr ".t" -type "double3" 0.99999999999999989 0 0 ;
createNode transform -n "pasted__pasted__pasted__pasted__pasted__pCube2" -p "|group6|pasted__group5|pasted__pasted__group3|pasted__pasted__pasted__group2|pasted__pasted__pasted__pasted__group1";
	rename -uid "A54D5598-1B44-0122-793C-2BA855A638D0";
createNode transform -n "transform8" -p "|group6|pasted__group5|pasted__pasted__group3|pasted__pasted__pasted__group2|pasted__pasted__pasted__pasted__group1|pasted__pasted__pasted__pasted__pasted__pCube2";
	rename -uid "2B5965E0-2A4B-2F95-B4A7-FABD9FCCAADB";
	setAttr ".v" no;
createNode mesh -n "pasted__pasted__pasted__pasted__pasted__pCubeShape2" -p "transform8";
	rename -uid "CD2D3BAC-0740-76EE-E6BC-138E0C332D18";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.25 -0.13327126 -9.6857548e-08 
		-0.25 -0.13327126 -9.6857548e-08 0.25 0.13327126 -9.6857548e-08 -0.25 0.13327126 
		-9.6857548e-08 0.25 0.13327126 9.6857548e-08 -0.25 0.13327126 9.6857548e-08 0.25 
		-0.13327126 9.6857548e-08 -0.25 -0.13327126 9.6857548e-08;
createNode transform -n "pasted__pasted__group4" -p "pasted__group5";
	rename -uid "AD30A7CA-3F42-1F7D-9171-ED8DB7EC693F";
	setAttr ".t" -type "double3" -8 0 0 ;
	setAttr ".rp" -type "double3" 3.5 0 0 ;
	setAttr ".sp" -type "double3" 3.5 0 0 ;
createNode transform -n "pasted__pasted__pasted__group1" -p "pasted__pasted__group4";
	rename -uid "B99867C8-7640-8BCE-178C-C293916B9E67";
	setAttr ".t" -type "double3" 0.99999999999999989 0 0 ;
createNode transform -n "pasted__pasted__pasted__pasted__pCube2" -p "|group6|pasted__group5|pasted__pasted__group4|pasted__pasted__pasted__group1";
	rename -uid "6FF1CD25-104B-B25B-9C41-DC812D6BD0B4";
createNode transform -n "transform7" -p "|group6|pasted__group5|pasted__pasted__group4|pasted__pasted__pasted__group1|pasted__pasted__pasted__pasted__pCube2";
	rename -uid "740A861F-A641-A61B-3EA2-59BFF621DC01";
	setAttr ".v" no;
createNode mesh -n "pasted__pasted__pasted__pasted__pCubeShape2" -p "transform7";
	rename -uid "86C743E7-784B-0ADE-EDDA-6DB9D05313BD";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.25 -0.13327126 -9.6857548e-08 
		-0.25 -0.13327126 -9.6857548e-08 0.25 0.13327126 -9.6857548e-08 -0.25 0.13327126 
		-9.6857548e-08 0.25 0.13327126 9.6857548e-08 -0.25 0.13327126 9.6857548e-08 0.25 
		-0.13327126 9.6857548e-08 -0.25 -0.13327126 9.6857548e-08;
createNode transform -n "pasted__pasted__pasted__group2" -p "pasted__pasted__group4";
	rename -uid "57AA43A5-9B49-2EBF-8BAB-05A134907A6D";
	setAttr ".t" -type "double3" 2 0 0 ;
	setAttr ".rp" -type "double3" 0.5 0 0 ;
	setAttr ".sp" -type "double3" 0.5 0 0 ;
createNode transform -n "pasted__pasted__pasted__pasted__pCube2" -p "|group6|pasted__group5|pasted__pasted__group4|pasted__pasted__pasted__group2";
	rename -uid "4E23AAAE-1A4A-A4A1-709C-56AF230B309F";
createNode transform -n "transform6" -p "|group6|pasted__group5|pasted__pasted__group4|pasted__pasted__pasted__group2|pasted__pasted__pasted__pasted__pCube2";
	rename -uid "AA417EF6-0043-6EC4-C8B8-25B435405A07";
	setAttr ".v" no;
createNode mesh -n "pasted__pasted__pasted__pasted__pCubeShape2" -p "transform6";
	rename -uid "0F0ECF2B-E34E-11A2-3F0C-25A8BEBB025A";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.25 -0.13327126 -9.6857548e-08 
		-0.25 -0.13327126 -9.6857548e-08 0.25 0.13327126 -9.6857548e-08 -0.25 0.13327126 
		-9.6857548e-08 0.25 0.13327126 9.6857548e-08 -0.25 0.13327126 9.6857548e-08 0.25 
		-0.13327126 9.6857548e-08 -0.25 -0.13327126 9.6857548e-08;
createNode transform -n "pasted__pasted__pasted__pasted__group1" -p "|group6|pasted__group5|pasted__pasted__group4|pasted__pasted__pasted__group2";
	rename -uid "8C651B03-C041-0C0E-7EFE-1786030E6604";
	setAttr ".t" -type "double3" 0.99999999999999989 0 0 ;
createNode transform -n "pasted__pasted__pasted__pasted__pasted__pCube2" -p "|group6|pasted__group5|pasted__pasted__group4|pasted__pasted__pasted__group2|pasted__pasted__pasted__pasted__group1";
	rename -uid "4CB1ED29-E245-6B52-74FE-4197B866E830";
createNode transform -n "transform5" -p "|group6|pasted__group5|pasted__pasted__group4|pasted__pasted__pasted__group2|pasted__pasted__pasted__pasted__group1|pasted__pasted__pasted__pasted__pasted__pCube2";
	rename -uid "7C66A078-924C-0139-92E4-FEAFBE7BF095";
	setAttr ".v" no;
createNode mesh -n "pasted__pasted__pasted__pasted__pasted__pCubeShape2" -p "transform5";
	rename -uid "33324CB7-3C41-94C2-871B-B4A9B248DE3C";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.25 -0.13327126 -9.6857548e-08 
		-0.25 -0.13327126 -9.6857548e-08 0.25 0.13327126 -9.6857548e-08 -0.25 0.13327126 
		-9.6857548e-08 0.25 0.13327126 9.6857548e-08 -0.25 0.13327126 9.6857548e-08 0.25 
		-0.13327126 9.6857548e-08 -0.25 -0.13327126 9.6857548e-08;
createNode transform -n "pasted__pasted__pasted__group3" -p "pasted__pasted__group4";
	rename -uid "CBF0A42C-B449-529D-AB5C-4C86DBE0E191";
	setAttr ".t" -type "double3" 4 0 0 ;
	setAttr ".rp" -type "double3" 1.5 0 0 ;
	setAttr ".sp" -type "double3" 1.5 0 0 ;
createNode transform -n "pasted__pasted__pasted__pasted__pCube2" -p "pasted__pasted__pasted__group3";
	rename -uid "6474DB86-0B45-0211-F4DF-7D984B86B605";
createNode transform -n "transform4" -p "|group6|pasted__group5|pasted__pasted__group4|pasted__pasted__pasted__group3|pasted__pasted__pasted__pasted__pCube2";
	rename -uid "6FED9D02-D94B-C86C-109F-1FB579351603";
	setAttr ".v" no;
createNode mesh -n "pasted__pasted__pasted__pasted__pCubeShape2" -p "transform4";
	rename -uid "E81E422E-D049-66E4-27EC-AB9212934961";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.25 -0.13327126 -9.6857548e-08 
		-0.25 -0.13327126 -9.6857548e-08 0.25 0.13327126 -9.6857548e-08 -0.25 0.13327126 
		-9.6857548e-08 0.25 0.13327126 9.6857548e-08 -0.25 0.13327126 9.6857548e-08 0.25 
		-0.13327126 9.6857548e-08 -0.25 -0.13327126 9.6857548e-08;
createNode transform -n "pasted__pasted__pasted__pasted__group1" -p "pasted__pasted__pasted__group3";
	rename -uid "F96F7642-AD42-D54E-74AD-248AA80DEF4A";
	setAttr ".t" -type "double3" 0.99999999999999989 0 0 ;
createNode transform -n "pasted__pasted__pasted__pasted__pasted__pCube2" -p "|group6|pasted__group5|pasted__pasted__group4|pasted__pasted__pasted__group3|pasted__pasted__pasted__pasted__group1";
	rename -uid "305F51D6-BE4B-A904-25C0-A4B53D6A2C51";
createNode transform -n "transform3" -p "|group6|pasted__group5|pasted__pasted__group4|pasted__pasted__pasted__group3|pasted__pasted__pasted__pasted__group1|pasted__pasted__pasted__pasted__pasted__pCube2";
	rename -uid "00491955-D64C-0049-77E0-6184ED0BF575";
	setAttr ".v" no;
createNode mesh -n "pasted__pasted__pasted__pasted__pasted__pCubeShape2" -p "transform3";
	rename -uid "6B4D88E3-E748-97D2-67D1-C2B7E58B1457";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.25 -0.13327126 -9.6857548e-08 
		-0.25 -0.13327126 -9.6857548e-08 0.25 0.13327126 -9.6857548e-08 -0.25 0.13327126 
		-9.6857548e-08 0.25 0.13327126 9.6857548e-08 -0.25 0.13327126 9.6857548e-08 0.25 
		-0.13327126 9.6857548e-08 -0.25 -0.13327126 9.6857548e-08;
createNode transform -n "pasted__pasted__pasted__pasted__group2" -p "pasted__pasted__pasted__group3";
	rename -uid "2E5A1CF2-7C40-2833-9547-169758A459AD";
	setAttr ".t" -type "double3" 2 0 0 ;
	setAttr ".rp" -type "double3" 0.5 0 0 ;
	setAttr ".sp" -type "double3" 0.5 0 0 ;
createNode transform -n "pasted__pasted__pasted__pasted__pasted__pCube2" -p "pasted__pasted__pasted__pasted__group2";
	rename -uid "A2D37AD3-BD4B-6EA0-2EB5-D1939E9ABBDE";
createNode transform -n "transform2" -p "|group6|pasted__group5|pasted__pasted__group4|pasted__pasted__pasted__group3|pasted__pasted__pasted__pasted__group2|pasted__pasted__pasted__pasted__pasted__pCube2";
	rename -uid "44414658-804B-CE8A-B936-1493F547D948";
	setAttr ".v" no;
createNode mesh -n "pasted__pasted__pasted__pasted__pasted__pCubeShape2" -p "transform2";
	rename -uid "8006A482-684F-6B65-B478-5BB058AC870F";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.25 -0.13327126 -9.6857548e-08 
		-0.25 -0.13327126 -9.6857548e-08 0.25 0.13327126 -9.6857548e-08 -0.25 0.13327126 
		-9.6857548e-08 0.25 0.13327126 9.6857548e-08 -0.25 0.13327126 9.6857548e-08 0.25 
		-0.13327126 9.6857548e-08 -0.25 -0.13327126 9.6857548e-08;
createNode transform -n "pasted__pasted__pasted__pasted__pasted__group1" -p "pasted__pasted__pasted__pasted__group2";
	rename -uid "62EAB6CD-244E-A659-17BD-328962149A25";
	setAttr ".t" -type "double3" 0.99999999999999989 0 0 ;
createNode transform -n "pasted__pasted__pasted__pasted__pasted__pasted__pCube2" 
		-p "pasted__pasted__pasted__pasted__pasted__group1";
	rename -uid "414CBD82-B542-BCD3-95E7-9AB4FF5834D2";
createNode transform -n "transform1" -p "pasted__pasted__pasted__pasted__pasted__pasted__pCube2";
	rename -uid "F477FC8C-6141-CA0E-AC6A-F4A178D17998";
	setAttr ".v" no;
createNode mesh -n "pasted__pasted__pasted__pasted__pasted__pasted__pCubeShape2" 
		-p "transform1";
	rename -uid "6546118D-EB47-B54B-0831-4DA333D9E720";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.25 -0.13327126 -9.6857548e-08 
		-0.25 -0.13327126 -9.6857548e-08 0.25 0.13327126 -9.6857548e-08 -0.25 0.13327126 
		-9.6857548e-08 0.25 0.13327126 9.6857548e-08 -0.25 0.13327126 9.6857548e-08 0.25 
		-0.13327126 9.6857548e-08 -0.25 -0.13327126 9.6857548e-08;
createNode transform -n "group7";
	rename -uid "D3002FA8-834B-572C-5C26-5C9FFA71B91D";
createNode transform -n "transform16" -p "group7";
	rename -uid "D7DBDCD4-4D4E-62F0-D71B-80A2FCA1B891";
	setAttr ".v" no;
createNode mesh -n "group7Shape" -p "transform16";
	rename -uid "A2B61F81-BF48-DA61-D491-C48327AE12B0";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "group5_pasted__pCube2";
	rename -uid "208795BF-EE48-E7D0-476E-42936A4AEACB";
createNode transform -n "transform32" -p "group5_pasted__pCube2";
	rename -uid "627B5FCB-F740-4A93-0989-21878876D623";
	setAttr ".v" no;
createNode mesh -n "group5_pasted__pCube2Shape" -p "transform32";
	rename -uid "AEAD119A-5643-CD5F-21AB-E0B99950F813";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube3";
	rename -uid "99911D0D-3B44-E7CC-D29A-8D8E56FE41CE";
createNode transform -n "transform48" -p "pCube3";
	rename -uid "32C38178-4E46-56E9-E7CF-658B1730E8E5";
	setAttr ".v" no;
createNode mesh -n "pCube3Shape" -p "transform48";
	rename -uid "9D2D032E-9B4D-6500-0F14-F38217807952";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube4";
	rename -uid "4A6BA304-A44D-1135-2A42-EE836E529283";
	setAttr ".rp" -type "double3" 0 1.4073906540870667 0 ;
	setAttr ".sp" -type "double3" 0 1.4073906540870667 0 ;
createNode mesh -n "pCube4Shape" -p "pCube4";
	rename -uid "B52C66CC-2240-B449-837A-AFBFECF5B466";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 352 ".pt";
	setAttr ".pt[0:165]" -type "float3"  0 0 -0.14620374 0 0 -0.14620374 0 0 
		-0.14620374 0 0 -0.14620374 0 0 -0.14620374 0 0 -0.14620374 0 0 -0.14620374 0 0 -0.14620374 
		0 0 -0.14620374 0 0 -0.14620374 0 0 -0.14620374 0 0 -0.14620374 0 0 -0.14620374 0 
		0 -0.14620374 0 0 -0.14620374 0 0 -0.14620374 0 0 -0.14620374 0 0 -0.14620374 0 0 
		-0.14620374 0 0 -0.14620374 0 0 -0.14620374 0 0 -0.14620374 0 0 -0.14620374 0 0 -0.14620374 
		0 0 -0.14620374 0 0 -0.14620374 0 0 -0.14620374 0 0 -0.14620374 0 0 -0.14620374 0 
		0 -0.14620374 0 0 -0.14620374 0 0 -0.14620374 0 0 -0.14620374 0 0 -0.14620374 0 0 
		-0.14620374 0 0 -0.14620374 0 0 -0.14620374 0 0 -0.14620374 0 0 -0.14620374 0 0 -0.14620374 
		0 0 -0.14620374 0 0 -0.14620374 0 0 -0.14620374 0 0 -0.14620374 0 0 -0.14620374 0 
		0 -0.14620374 0 0 -0.14620374 0 0 -0.14620374 0 0 -0.14620374 0 0 -0.14620374 0 0 
		-0.14620374 0 0 -0.14620374 0 0 -0.14620374 0 0 -0.14620374 0 0 -0.14620374 0 0 -0.14620374 
		0 0 -0.14620374 0 0 -0.14620374 0 0 -0.14620374 0 0 -0.14620374 0 0 -0.14620374 0 
		0 -0.14620374 0 0 -0.14620374 0 0 -0.14620374 0 0 -0.14620374 0 0 -0.14620374 0 0 
		-0.14620374 0 0 -0.14620374 0 0 -0.14620374 0 0 -0.14620374 0 0 -0.14620374 0 0 -0.14620374 
		0 0 -0.14620374 0 0 -0.14620374 0 0 -0.14620374 0 0 -0.14620374 0 0 -0.14620374 0 
		0 -0.14620374 0 0 -0.14620374 0 0 -0.14620374 0 0 -0.14620374 0 0 -0.14620374 0 0 
		-0.14620374 0 0 -0.14620374 0 0 -0.14620374 0 0 -0.14620374 0 0 -0.14620374 0 0 -0.14620374 
		0 0 -0.14620374 0 0 -0.14620374 0 0 -0.14620374 0 0 -0.14620374 0 0 -0.14620374 0 
		0 -0.14620374 0 0 -0.14620374 0 0 -0.14620374 0 0 -0.14620374 0 0 -0.14620374 0 0 
		-0.14620374 0 0 -0.14620374 0 0 -0.14620374 0 0 -0.14620374 0 0 -0.14620374 0 0 -0.14620374 
		0 0 -0.14620374 0 0 -0.14620374 0 0 -0.14620374 0 0 -0.14620374 0 0 -0.14620374 0 
		0 -0.14620374 0 0 -0.14620374 0 0 -0.14620374 0 0 -0.14620374 0 0 -0.14620374 0 0 
		-0.14620374 0 0 -0.14620374 0 0 -0.14620374 0 0 -0.14620374 0 0 -0.14620374 0 0 -0.14620374 
		0 0 -0.14620374 0 0 -0.14620374 0 0 -0.14620374 0 0 -0.14620374 0 0 -0.14620374 0 
		0 -0.14620374 0 0 -0.14620374 0 0 -0.14620374 0 0 -0.14620374 0 0 -0.14620374 0 0 
		-0.14620374 0 0 -0.14620374 0 0 -0.14620374 0 0 -0.14620374 0 0 -0.14620374 0 0 -0.14620374 
		0 0 -0.14620374 0 0 -0.14620374 0 0 -0.14620374 0 0 -0.14620374 0 0 -0.14620374 0 
		0 -0.14620374 0 0 -0.14620374 0 0 -0.14620374 0 0 -0.14620374 0 0 -0.14620374 0 0 
		-0.14620374 0 0 -0.14620374 0 0 -0.14620374 0 0 -0.14620374 0 0 -0.14620374 0 0 -0.14620374 
		0 0 -0.14620374 0 0 -0.14620374 0 0 -0.14620374 0 0 -0.14620374 0 0 -0.14620374 0 
		0 -0.14620374 0 0 -0.14620374 0 0 -0.14620374 0 0 -0.14620374 0 0 -0.14620374 0 0 
		-0.14620374 0 0 -0.14620374 0 0 -0.14620374 0 0 -0.14620374;
	setAttr ".pt[166:331]" 0 0 -0.14620374 0 0 -0.14620374 0 0 -0.14620374 0 0 
		-0.14620374 0 0 -0.14620374 0 0 -0.14620374 0 0 -0.14620374 0 0 -0.14620374 0 0 -0.14620374 
		0 0 -0.14620374 0 0 0.14620374 0 0 0.14620374 0 0 0.14620374 0 0 0.14620374 0 0 0.14620374 
		0 0 0.14620374 0 0 0.14620374 0 0 0.14620374 0 0 0.14620374 0 0 0.14620374 0 0 0.14620374 
		0 0 0.14620374 0 0 0.14620374 0 0 0.14620374 0 0 0.14620374 0 0 0.14620374 0 0 0.14620374 
		0 0 0.14620374 0 0 0.14620374 0 0 0.14620374 0 0 0.14620374 0 0 0.14620374 0 0 0.14620374 
		0 0 0.14620374 0 0 0.14620374 0 0 0.14620374 0 0 0.14620374 0 0 0.14620374 0 0 0.14620374 
		0 0 0.14620374 0 0 0.14620374 0 0 0.14620374 0 0 0.14620374 0 0 0.14620374 0 0 0.14620374 
		0 0 0.14620374 0 0 0.14620374 0 0 0.14620374 0 0 0.14620374 0 0 0.14620374 0 0 0.14620374 
		0 0 0.14620374 0 0 0.14620374 0 0 0.14620374 0 0 0.14620374 0 0 0.14620374 0 0 0.14620374 
		0 0 0.14620374 0 0 0.14620374 0 0 0.14620374 0 0 0.14620374 0 0 0.14620374 0 0 0.14620374 
		0 0 0.14620374 0 0 0.14620374 0 0 0.14620374 0 0 0.14620374 0 0 0.14620374 0 0 0.14620374 
		0 0 0.14620374 0 0 0.14620374 0 0 0.14620374 0 0 0.14620374 0 0 0.14620374 0 0 0.14620374 
		0 0 0.14620374 0 0 0.14620374 0 0 0.14620374 0 0 0.14620374 0 0 0.14620374 0 0 0.14620374 
		0 0 0.14620374 0 0 0.14620374 0 0 0.14620374 0 0 0.14620374 0 0 0.14620374 0 0 0.14620374 
		0 0 0.14620374 0 0 0.14620374 0 0 0.14620374 0 0 0.14620374 0 0 0.14620374 0 0 0.14620374 
		0 0 0.14620374 0 0 0.14620374 0 0 0.14620374 0 0 0.14620374 0 0 0.14620374 0 0 0.14620374 
		0 0 0.14620374 0 0 0.14620374 0 0 0.14620374 0 0 0.14620374 0 0 0.14620374 0 0 0.14620374 
		0 0 0.14620374 0 0 0.14620374 0 0 0.14620374 0 0 0.14620374 0 0 0.14620374 0 0 0.14620374 
		0 0 0.14620374 0 0 0.14620374 0 0 0.14620374 0 0 0.14620374 0 0 0.14620374 0 0 0.14620374 
		0 0 0.14620374 0 0 0.14620374 0 0 0.14620374 0 0 0.14620374 0 0 0.14620374 0 0 0.14620374 
		0 0 0.14620374 0 0 0.14620374 0 0 0.14620374 0 0 0.14620374 0 0 0.14620374 0 0 0.14620374 
		0 0 0.14620374 0 0 0.14620374 0 0 0.14620374 0 0 0.14620374 0 0 0.14620374 0 0 0.14620374 
		0 0 0.14620374 0 0 0.14620374 0 0 0.14620374 0 0 0.14620374 0 0 0.14620374 0 0 0.14620374 
		0 0 0.14620374 0 0 0.14620374 0 0 0.14620374 0 0 0.14620374 0 0 0.14620374 0 0 0.14620374 
		0 0 0.14620374 0 0 0.14620374 0 0 0.14620374 0 0 0.14620374 0 0 0.14620374 0 0 0.14620374 
		0 0 0.14620374 0 0 0.14620374 0 0 0.14620374 0 0 0.14620374 0 0 0.14620374 0 0 0.14620374 
		0 0 0.14620374 0 0 0.14620374 0 0 0.14620374 0 0 0.14620374 0 0 0.14620374 0 0 0.14620374 
		0 0 0.14620374;
	setAttr ".pt[332:351]" 0 0 0.14620374 0 0 0.14620374 0 0 0.14620374 0 0 0.14620374 
		0 0 0.14620374 0 0 0.14620374 0 0 0.14620374 0 0 0.14620374 0 0 0.14620374 0 0 0.14620374 
		0 0 0.14620374 0 0 0.14620374 0 0 0.14620374 0 0 0.14620374 0 0 0.14620374 0 0 0.14620374 
		0 0 0.14620374 0 0 0.14620374 0 0 0.14620374 0 0 0.14620374;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "FE29F7C9-F840-3C92-57F9-FE963E07341C";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "4DD593DD-5048-5BF0-A3F5-01B6C5A17EB8";
createNode displayLayer -n "defaultLayer";
	rename -uid "691118B3-BC42-AD05-9F19-1D97D39AEC2C";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "9DE338BF-2648-CFE2-C7BA-77809F557D9D";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "519E518D-7943-01A2-F1B0-7893B439B9B2";
	setAttr ".g" yes;
createNode polyCube -n "polyCube1";
	rename -uid "9F4DC3E5-E742-8BFD-18CF-0AAD01D7AE7C";
	setAttr ".cuv" 4;
createNode polyCube -n "polyCube2";
	rename -uid "35F29F1F-FA4B-C6FA-D9B0-6FACFD71B29E";
	setAttr ".cuv" 4;
createNode polyCube -n "pasted__polyCube2";
	rename -uid "FA602081-4540-0EAC-8342-BCB32A85D874";
	setAttr ".cuv" 4;
createNode polyCube -n "pasted__pasted__polyCube2";
	rename -uid "301C9B9C-7A48-C033-5737-7B9EA6C95E98";
	setAttr ".cuv" 4;
createNode polyCube -n "pasted__polyCube3";
	rename -uid "5F4C6664-964C-0A8D-06FC-B5A5E706C326";
	setAttr ".cuv" 4;
createNode polyCube -n "pasted__polyCube4";
	rename -uid "B1B74DD3-6746-769B-90E7-A086BF7AB6A0";
	setAttr ".cuv" 4;
createNode polyCube -n "pasted__pasted__polyCube3";
	rename -uid "35C62E38-894E-5571-793F-11AC4C6C51A5";
	setAttr ".cuv" 4;
createNode polyCube -n "pasted__pasted__polyCube4";
	rename -uid "ACE95D9F-2C4C-6D1D-779C-098F680E255F";
	setAttr ".cuv" 4;
createNode polyCube -n "pasted__pasted__pasted__polyCube2";
	rename -uid "F16A12D8-A640-D8BA-1E8F-21A5A12F65DE";
	setAttr ".cuv" 4;
createNode polyCube -n "pasted__pasted__polyCube5";
	rename -uid "B388B236-8748-9050-8D44-90809EC777EF";
	setAttr ".cuv" 4;
createNode polyCube -n "pasted__pasted__polyCube6";
	rename -uid "F95F95C4-E64B-910D-B819-3DA04ADC8DBE";
	setAttr ".cuv" 4;
createNode polyCube -n "pasted__pasted__pasted__polyCube3";
	rename -uid "1E61344E-CB46-6AFA-7053-22969460F672";
	setAttr ".cuv" 4;
createNode polyCube -n "pasted__pasted__polyCube7";
	rename -uid "3C55B6C9-EA4F-E55C-E3D9-22AD3C5120C4";
	setAttr ".cuv" 4;
createNode polyCube -n "pasted__pasted__pasted__polyCube4";
	rename -uid "97412147-6641-1564-C513-87A681A713AC";
	setAttr ".cuv" 4;
createNode polyCube -n "pasted__pasted__pasted__polyCube5";
	rename -uid "6DF09B73-E24E-9AD6-EAA3-75A3A4F5DC2E";
	setAttr ".cuv" 4;
createNode polyCube -n "pasted__pasted__pasted__pasted__polyCube2";
	rename -uid "07ADC0C2-BF47-B9CC-75FC-BEA070DD6F10";
	setAttr ".cuv" 4;
createNode polyCube -n "pasted__polyCube5";
	rename -uid "921C8400-DA45-049F-BC39-50B0D379A8A3";
	setAttr ".cuv" 4;
createNode polyCube -n "pasted__pasted__polyCube8";
	rename -uid "14E9E146-414F-ECCD-DDD4-C4BC9F98A346";
	setAttr ".cuv" 4;
createNode polyCube -n "pasted__pasted__polyCube9";
	rename -uid "33AF01C2-CB4F-BD27-9B25-FD98AF6BED60";
	setAttr ".cuv" 4;
createNode polyCube -n "pasted__pasted__pasted__polyCube6";
	rename -uid "8648E371-DD4E-8BE7-1FB8-F1997EA3751A";
	setAttr ".cuv" 4;
createNode polyCube -n "pasted__pasted__polyCube10";
	rename -uid "C689C2BA-3F49-066C-2707-6FB68FA26D0D";
	setAttr ".cuv" 4;
createNode polyCube -n "pasted__pasted__pasted__polyCube7";
	rename -uid "53D50BE7-D745-42EB-77A0-1BAB0B054EB7";
	setAttr ".cuv" 4;
createNode polyCube -n "pasted__pasted__pasted__polyCube8";
	rename -uid "59412C3B-E140-1C1B-07E0-BCA6F16D5DB4";
	setAttr ".cuv" 4;
createNode polyCube -n "pasted__pasted__pasted__pasted__polyCube3";
	rename -uid "7C289964-084F-8262-B75C-0BAA250A3F68";
	setAttr ".cuv" 4;
createNode polyCube -n "pasted__pasted__pasted__polyCube9";
	rename -uid "16727C74-D747-24CB-F0F5-9CA9AA6D4E33";
	setAttr ".cuv" 4;
createNode polyCube -n "pasted__pasted__pasted__polyCube10";
	rename -uid "ECC26004-5E4C-CBE4-88B7-6BA21AB01F59";
	setAttr ".cuv" 4;
createNode polyCube -n "pasted__pasted__pasted__pasted__polyCube4";
	rename -uid "3F5A98D5-A043-9131-C934-CF8BA3A1C674";
	setAttr ".cuv" 4;
createNode polyCube -n "pasted__pasted__pasted__polyCube11";
	rename -uid "E8090281-6A4A-BAFB-E1DD-7CBE8AC4CA91";
	setAttr ".cuv" 4;
createNode polyCube -n "pasted__pasted__pasted__pasted__polyCube5";
	rename -uid "A1815881-824E-C443-F207-C1917582CE5E";
	setAttr ".cuv" 4;
createNode polyCube -n "pasted__pasted__pasted__pasted__polyCube6";
	rename -uid "9E150EEE-5A48-F968-7648-E3912A458A61";
	setAttr ".cuv" 4;
createNode polyCube -n "pasted__pasted__pasted__pasted__pasted__polyCube2";
	rename -uid "4C8C2B3E-EA45-7080-9198-95819555BBB7";
	setAttr ".cuv" 4;
createNode polyCube -n "pasted__pasted__polyCube11";
	rename -uid "C3BA32A4-6247-7612-6914-5EAA1C2F9F82";
	setAttr ".cuv" 4;
createNode polyCube -n "pasted__pasted__pasted__polyCube12";
	rename -uid "6A26C577-6748-F437-4FD5-D5BEEA14EBB0";
	setAttr ".cuv" 4;
createNode polyCube -n "pasted__pasted__pasted__polyCube13";
	rename -uid "F7427C4D-C34D-48AF-7E20-E79B42107E5A";
	setAttr ".cuv" 4;
createNode polyCube -n "pasted__pasted__pasted__pasted__polyCube7";
	rename -uid "197FF7B2-CB47-12D4-476C-B297E40DC68D";
	setAttr ".cuv" 4;
createNode polyCube -n "pasted__pasted__pasted__polyCube14";
	rename -uid "7FD06B13-ED46-A7CE-9CBF-77B99C72B330";
	setAttr ".cuv" 4;
createNode polyCube -n "pasted__pasted__pasted__pasted__polyCube8";
	rename -uid "FACCEADB-E046-4A6B-2025-C8A73C9C0310";
	setAttr ".cuv" 4;
createNode polyCube -n "pasted__pasted__pasted__pasted__polyCube9";
	rename -uid "7006BDFD-B249-10C6-44B3-1390AAE5ECDC";
	setAttr ".cuv" 4;
createNode polyCube -n "pasted__pasted__pasted__pasted__pasted__polyCube3";
	rename -uid "1B1F0DD8-104F-8732-6380-56A1C91F285F";
	setAttr ".cuv" 4;
createNode polyCube -n "pasted__pasted__pasted__pasted__polyCube10";
	rename -uid "7AB3D062-CE42-27B6-DDBC-6E951CCE9ED1";
	setAttr ".cuv" 4;
createNode polyCube -n "pasted__pasted__pasted__pasted__polyCube11";
	rename -uid "625756B0-824E-4A05-C8A8-3FA2EDD10DCE";
	setAttr ".cuv" 4;
createNode polyCube -n "pasted__pasted__pasted__pasted__pasted__polyCube4";
	rename -uid "A36D1243-344F-B420-AC25-EE989BD9B5E9";
	setAttr ".cuv" 4;
createNode polyCube -n "pasted__pasted__pasted__pasted__polyCube12";
	rename -uid "7CBB481F-494A-6F31-188F-1C8BC21917A9";
	setAttr ".cuv" 4;
createNode polyCube -n "pasted__pasted__pasted__pasted__pasted__polyCube5";
	rename -uid "CF187D06-1640-6801-C55C-6A9415BD03BB";
	setAttr ".cuv" 4;
createNode polyCube -n "pasted__pasted__pasted__pasted__pasted__polyCube6";
	rename -uid "468FA523-A44B-48D4-E4AE-C1A6702E7F0E";
	setAttr ".cuv" 4;
createNode polyCube -n "pasted__pasted__pasted__pasted__pasted__pasted__polyCube2";
	rename -uid "6DAF9089-0049-8627-AEEC-58A204688324";
	setAttr ".cuv" 4;
createNode polyUnite -n "polyUnite1";
	rename -uid "BA239AEB-364E-4D92-51AD-E380609436AF";
	setAttr -s 15 ".ip";
	setAttr -s 15 ".im";
createNode groupId -n "groupId1";
	rename -uid "9EC6BB0C-2543-0C5F-A8D0-0BAB2F7DEB6D";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	rename -uid "FED106B9-654C-FCE6-8AD9-26B8ECE95048";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId2";
	rename -uid "86D7E6B9-8B42-A677-EEB3-08BCE13FE922";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3";
	rename -uid "14ACD53C-A546-F0E6-455E-F6887CDF5754";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "2C7C140D-504F-2A7F-A4E2-15A712E0C197";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId4";
	rename -uid "BC8B8F46-6243-BCE3-4878-71AD19F22F5C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5";
	rename -uid "C99978B8-A94D-90D5-1D49-849494FB15CA";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	rename -uid "193B2BAC-BD42-E428-2015-109891DD6328";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId6";
	rename -uid "CFCB457C-D24B-FEEE-6269-7FBEA0AAABDA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7";
	rename -uid "CEA9AEDF-5141-67EC-4AC7-B39824F6DD55";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	rename -uid "15A93916-3345-2965-89BE-C3A2321CEDD4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId8";
	rename -uid "AB2B497D-0342-48CC-0F0E-FBA867EED332";
	setAttr ".ihi" 0;
createNode groupId -n "groupId9";
	rename -uid "A066DD2E-3048-6075-40AA-3FB666C92DD8";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts5";
	rename -uid "EFBA33EF-1E43-2EF3-4783-559A87110567";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId10";
	rename -uid "2E2FA789-CC44-780C-0469-3D846B9D1862";
	setAttr ".ihi" 0;
createNode groupId -n "groupId11";
	rename -uid "72CDA14D-6740-0864-0662-209E4E3A030C";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts6";
	rename -uid "3647E557-FD41-DE28-369E-9F8880119222";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId12";
	rename -uid "83FA789C-FC42-E3CF-4399-3CB2294753FF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId13";
	rename -uid "3B5F1D15-2043-421D-9B2D-B69CE8F89DF0";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts7";
	rename -uid "4C748A5D-394B-ECFF-3C4A-CC8F1D0BA8E0";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId14";
	rename -uid "E3D7E0D7-3649-5A58-CA84-AABC658918EB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId15";
	rename -uid "115D5D97-B841-9457-367B-9FA3D58DD997";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts8";
	rename -uid "0B377286-F146-BC9C-FA9F-51B09D497AAF";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId16";
	rename -uid "B9AF3920-3844-0FCC-90D0-9B86A8A2DC2A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId17";
	rename -uid "A45BFAAE-F640-EC6F-4773-81BAF07CE2F4";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts9";
	rename -uid "7543756F-D643-B2AD-5A1E-AEB05ACA5DD8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId18";
	rename -uid "B3FEE995-A14C-9BEB-2896-3C91990238D2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId19";
	rename -uid "82CFFBF5-4C4F-B74D-2B85-7CB4689934A9";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts10";
	rename -uid "14435572-6845-2117-860B-2D8408620F4F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId20";
	rename -uid "4B8A9FAF-7941-B4FB-FF48-CEA694407C33";
	setAttr ".ihi" 0;
createNode groupId -n "groupId21";
	rename -uid "622D7CD8-424A-748E-110F-DFBC039A3867";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts11";
	rename -uid "64070715-9646-A6B9-BE8A-9C9144705602";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId22";
	rename -uid "55255E55-9B4C-90BB-BCDF-6DB730D8F67C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId23";
	rename -uid "56E01A9A-D64A-2D89-0945-B7BF2580DEF7";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts12";
	rename -uid "59626AF6-FB46-CC73-62C5-028BEB8830E0";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId24";
	rename -uid "E88C1DC6-1143-3A9A-21DF-EBBA476D6CF8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId25";
	rename -uid "3A2E364B-E942-307B-CD89-1999B45ACCC0";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts13";
	rename -uid "055CD148-D14A-CEA8-99F6-45A0F97C0702";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId26";
	rename -uid "9CD1CD15-D74F-62CC-C0DB-C089EBEBC446";
	setAttr ".ihi" 0;
createNode groupId -n "groupId27";
	rename -uid "3381F95F-DE45-A9FF-C935-478C500AA7ED";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts14";
	rename -uid "B8E36A90-AD40-17BC-72AC-389BC6DF8C82";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId28";
	rename -uid "2ABF1B60-7E4B-75E3-9220-09A6C09C08C5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId29";
	rename -uid "FB93D834-7849-79D7-D3F7-C6AA594FE0D3";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts15";
	rename -uid "6F09F5DB-9C40-FB30-3166-2FB841731B07";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId30";
	rename -uid "2189AD91-F14D-E267-41AC-2998C5173EF3";
	setAttr ".ihi" 0;
createNode groupId -n "groupId31";
	rename -uid "D4CE11AB-334E-B2A4-D67E-6286AEFBB6CB";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts16";
	rename -uid "DA97F19A-0742-DB8C-7C0E-FA8C3B919989";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:89]";
createNode polyUnite -n "polyUnite2";
	rename -uid "29AB5EA1-0344-1EF0-76A2-97A542F043E7";
	setAttr -s 16 ".ip";
	setAttr -s 16 ".im";
createNode groupId -n "groupId32";
	rename -uid "85CD0099-B247-0E0C-BEB4-FDA347F76775";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts17";
	rename -uid "2099D101-024E-491D-7882-9286EDE6993C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId33";
	rename -uid "D876547F-9843-F6CA-60FB-F1BF544A1BA5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId34";
	rename -uid "D3CA2949-6E40-A0CA-AEEA-91BD430A2C76";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts18";
	rename -uid "52087EE2-0B4D-BA0F-CBA2-53B912AC5151";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId35";
	rename -uid "C2205A9E-1C4B-F400-950E-00A75BE0FFFF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId36";
	rename -uid "998FEAB4-3646-C97E-3CFF-CE8DE04558AA";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts19";
	rename -uid "F0D9EBEC-CC43-8515-EA9D-FC83DCF6A49C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId37";
	rename -uid "FB17E41E-3D40-4FEF-27C2-44975615D058";
	setAttr ".ihi" 0;
createNode groupId -n "groupId38";
	rename -uid "84943122-DE4F-7549-8A9C-CD9FADCDC1F4";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts20";
	rename -uid "0AB5C8E6-F344-F9D0-ECB6-53BAC7A64501";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId39";
	rename -uid "547AD1E7-2947-7B66-3E97-02A3E5680ED3";
	setAttr ".ihi" 0;
createNode groupId -n "groupId40";
	rename -uid "712FE475-1C4B-29CA-17FE-BDA1EE3250DA";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts21";
	rename -uid "7FEF6FE1-F040-7664-3775-339C9CF7D7F1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId41";
	rename -uid "E028A237-9149-7F8A-4A1F-AEA6DEE5C7D0";
	setAttr ".ihi" 0;
createNode groupId -n "groupId42";
	rename -uid "CA06BB80-C645-B486-9D44-94B0D4107D21";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts22";
	rename -uid "DEEF3946-5A42-DDE2-12B4-3383B6E0FC22";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId43";
	rename -uid "1EE47621-D245-CA07-710C-25B69F546007";
	setAttr ".ihi" 0;
createNode groupId -n "groupId44";
	rename -uid "37AB178E-9647-6760-597C-90BFF3460583";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts23";
	rename -uid "0AEA287E-FB45-4856-487D-BF9DFECD1323";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId45";
	rename -uid "1F6553DA-AB47-B112-A424-63A6F631BCB5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId46";
	rename -uid "4A9EB768-7C45-781B-82E4-9889854C8EF9";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts24";
	rename -uid "A134F696-AB47-813E-934C-ADA602EFA677";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId47";
	rename -uid "75515317-F346-2453-016F-30808B9BBFE4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId48";
	rename -uid "0C3873BA-6141-A876-9A65-1AB342D5A26A";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts25";
	rename -uid "F6B566D6-FF46-4A1D-EE5A-EC9C6B79EFD3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId49";
	rename -uid "F9F4932B-A442-4417-77BC-DAAC0D3D445E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId50";
	rename -uid "55E7780E-3241-2359-26FB-B2A8B7F3790F";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts26";
	rename -uid "6B4BBDAD-1B41-FB37-777A-248895C2CE4F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId51";
	rename -uid "95AA7F82-2840-0E4A-C4AF-239642C62113";
	setAttr ".ihi" 0;
createNode groupId -n "groupId52";
	rename -uid "4F23C9F8-C340-F73C-626C-1C843392C67A";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts27";
	rename -uid "D13A9F68-5B42-4107-D5C5-92A039D6DCCC";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId53";
	rename -uid "6999C041-424A-2B6F-5414-B8B24E66D97C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId54";
	rename -uid "611C31A7-A440-EBD1-A9AF-B9A4EEAC96E7";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts28";
	rename -uid "BFA08D3A-0F4C-674E-2CDD-25B5E3B7FBDB";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId55";
	rename -uid "A493C732-3E4D-A58E-CCEA-09B6DD36EA43";
	setAttr ".ihi" 0;
createNode groupId -n "groupId56";
	rename -uid "0C228100-4341-9813-79DD-8DA876B99CDB";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts29";
	rename -uid "B6716CEC-0A48-BDDB-E468-8DA8C7CD935A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId57";
	rename -uid "E8FFDB70-E241-1961-87B7-1F9AAE7EE55C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId58";
	rename -uid "09B3DF61-B243-7FB6-4B1A-FFB4B6DE7B2C";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts30";
	rename -uid "87E8C611-6046-B712-ABCB-788259E988D1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId59";
	rename -uid "C6882A82-B245-B203-EED3-B084A1D1F312";
	setAttr ".ihi" 0;
createNode groupId -n "groupId60";
	rename -uid "3E75EFAE-1246-7BF5-2DCC-9FA61F6D2A8A";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts31";
	rename -uid "4C24D87F-B84F-AD5F-E16B-498CA86F25DC";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId61";
	rename -uid "CC2AF1D4-D040-C1BF-AF92-A4894C64BC09";
	setAttr ".ihi" 0;
createNode groupId -n "groupId62";
	rename -uid "386574D7-F141-68B2-6DEB-E1BFAA967DBF";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts32";
	rename -uid "F60DEFCF-ED4D-74CD-83DF-C49F0247A4F0";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:179]";
createNode polyUnite -n "polyUnite3";
	rename -uid "24086FAC-B040-DB22-2D21-E8AE86B2103D";
	setAttr -s 16 ".ip";
	setAttr -s 16 ".im";
createNode groupId -n "groupId63";
	rename -uid "38A6AB98-0D4F-51AD-488E-FD9A4920139C";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts33";
	rename -uid "61A09FFB-614B-AEE9-86C0-62B63B492BDC";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId64";
	rename -uid "B563B004-C64B-3F4E-F08A-CA825996060B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId65";
	rename -uid "1D76F6C8-3E48-F902-E83F-B3BCE99DBE25";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts34";
	rename -uid "279E0F0D-534A-C0A0-6B00-AAB718C777ED";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId66";
	rename -uid "0E23938B-8D46-7B28-9041-249370E0643B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId67";
	rename -uid "739A0373-314B-6BFA-5C21-978BA821E102";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts35";
	rename -uid "F13C20EF-7546-B133-7595-2CB5A7DD2858";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId68";
	rename -uid "3387AE50-2C4A-C40D-8DB4-8FBA4B0CA645";
	setAttr ".ihi" 0;
createNode groupId -n "groupId69";
	rename -uid "2292FCE7-194B-9426-4522-938387E0689E";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts36";
	rename -uid "4909CC24-5D43-AEF5-DA8A-DFADE9896789";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId70";
	rename -uid "BA8F86D7-1E4A-D20A-BE91-CC8BB1290B13";
	setAttr ".ihi" 0;
createNode groupId -n "groupId71";
	rename -uid "428C69D1-494D-2DF5-F724-68AD0BFDA46F";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts37";
	rename -uid "05B14A77-FA41-800B-4DA2-0B96B2F66D58";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId72";
	rename -uid "A224B3A2-5144-689B-CF76-9CB1FF2B40C9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId73";
	rename -uid "79FCD8C0-7047-C86E-72C2-DD8019015E3F";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts38";
	rename -uid "70451B25-F540-2CB4-DEA2-279972691C20";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId74";
	rename -uid "28C08833-D44F-48AA-E7AF-5A982011F304";
	setAttr ".ihi" 0;
createNode groupId -n "groupId75";
	rename -uid "89A338AB-C345-AAB4-CA9A-4EAD609331A8";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts39";
	rename -uid "A5AE1B42-C14D-F351-523D-38A0C1393838";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId76";
	rename -uid "9E978E3D-C843-0CB4-FBA4-95B5E584AE3A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId77";
	rename -uid "49191831-5C4E-3867-1612-E59E10F74A45";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts40";
	rename -uid "CE6334AC-2B4B-ACCC-6CF4-D8A2DE125DD4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId78";
	rename -uid "47802DAB-A74A-1B8B-41DB-23B92DA5B1D5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId79";
	rename -uid "FB8FCEC7-D643-4610-6C36-DCA6557BBCFA";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts41";
	rename -uid "491E7A50-CB49-F294-8ABA-5BB391A5E39B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId80";
	rename -uid "7F13EC0F-B748-1942-D30C-E9B13EAE4902";
	setAttr ".ihi" 0;
createNode groupId -n "groupId81";
	rename -uid "3FE5FFAD-254B-693F-31E7-38B906C92C04";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts42";
	rename -uid "A95B6753-C244-2041-C455-ABBBB8CA6B2E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId82";
	rename -uid "9FBC820D-3048-B955-3B56-79AB1D65C2BE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId83";
	rename -uid "35D6BCF4-BB4C-AE13-8172-C58AD2BBE288";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts43";
	rename -uid "5FBEF26E-ED45-F55D-0C59-CF89D7BE462D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId84";
	rename -uid "E9AE08AF-A94D-3098-EC73-229160A54BD4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId85";
	rename -uid "F2C1178A-9349-2B73-A638-7B9BF46DD55D";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts44";
	rename -uid "B3B51135-C245-DCA8-ED42-4F94BF52B33F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId86";
	rename -uid "EA18ECC5-5F4F-5359-0E39-DA897E33909D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId87";
	rename -uid "E7D2F38A-564F-D81D-BE3B-35AE65E9BA7E";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts45";
	rename -uid "9B029D69-164D-40BB-F0A4-46AA5DCEEB84";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId88";
	rename -uid "198305E3-AD48-7A0B-EB90-43B8CF55CB27";
	setAttr ".ihi" 0;
createNode groupId -n "groupId89";
	rename -uid "A5AA9D9D-2E40-2C99-05C0-A59CBD27C325";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts46";
	rename -uid "2A28F374-164D-B40D-6C31-81BB25ACD9E4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId90";
	rename -uid "B5EC4125-974D-0CA9-DE35-AFA636C5DD3D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId91";
	rename -uid "E4DD9C1B-6343-941B-3D00-6B8F352B1B83";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts47";
	rename -uid "CF8C268B-5740-D5B9-47B0-CDB00202B25A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId92";
	rename -uid "53B93E7A-3F4E-412D-61E5-7BABE9DE48B7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId93";
	rename -uid "022F8CC0-CC4B-06A2-B172-7D8DA5A7D0C7";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts48";
	rename -uid "EEB489EB-2545-2914-3516-0CBCAD150388";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:269]";
createNode polyCBoolOp -n "polyCBoolOp1";
	rename -uid "6B69C658-464B-9621-FD11-FCAB11E837F7";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
	setAttr ".op" 2;
	setAttr ".mg" -type "Int32Array" 2 141 -140 ;
createNode groupId -n "groupId94";
	rename -uid "707664DD-0741-BB68-D5D2-328FFBB32DB8";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts49";
	rename -uid "8A6C55C9-1040-FC11-5139-D9908DBB815A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId95";
	rename -uid "62AFDE38-7A44-B4C3-EDEC-85999887DF4B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId96";
	rename -uid "FD2C35F7-7447-81B0-336D-CFA64E97E37C";
	setAttr ".ihi" 0;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "34EFB4FC-3747-82E9-3032-B8BF257AF4F3";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n"
		+ "            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n"
		+ "            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n"
		+ "                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n"
		+ "                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n"
		+ "                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n"
		+ "            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n"
		+ "            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n"
		+ "            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n"
		+ "                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n"
		+ "                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n"
		+ "                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n"
		+ "            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n"
		+ "            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n"
		+ "                -width 1122\n                -height 515\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1122\n            -height 515\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n"
		+ "                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n"
		+ "            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n"
		+ "            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n"
		+ "                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n"
		+ "                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n"
		+ "                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n"
		+ "                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n"
		+ "                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n"
		+ "                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n"
		+ "                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n"
		+ "                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n"
		+ "                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n"
		+ "                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n"
		+ "                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n"
		+ "                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n"
		+ "                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"profilerPanel\" -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1122\\n    -height 515\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1122\\n    -height 515\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "8FC5A0C1-6D48-B77F-171F-6C9B5B5E5671";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 4 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr -s 97 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 95 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "groupId94.id" "pCubeShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape1.iog.og[0].gco";
connectAttr "groupParts49.og" "pCubeShape1.i";
connectAttr "groupId95.id" "pCubeShape1.ciog.cog[0].cgid";
connectAttr "groupId63.id" "pCubeShape2.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape2.iog.og[0].gco";
connectAttr "groupParts33.og" "pCubeShape2.i";
connectAttr "groupId64.id" "pCubeShape2.ciog.cog[0].cgid";
connectAttr "groupParts34.og" "|group1|pasted__pCube2|transform46|pasted__pCubeShape2.i"
		;
connectAttr "groupId65.id" "|group1|pasted__pCube2|transform46|pasted__pCubeShape2.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group1|pasted__pCube2|transform46|pasted__pCubeShape2.iog.og[0].gco"
		;
connectAttr "groupId66.id" "|group1|pasted__pCube2|transform46|pasted__pCubeShape2.ciog.cog[0].cgid"
		;
connectAttr "groupParts35.og" "|group2|pasted__pCube2|transform45|pasted__pCubeShape2.i"
		;
connectAttr "groupId67.id" "|group2|pasted__pCube2|transform45|pasted__pCubeShape2.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group2|pasted__pCube2|transform45|pasted__pCubeShape2.iog.og[0].gco"
		;
connectAttr "groupId68.id" "|group2|pasted__pCube2|transform45|pasted__pCubeShape2.ciog.cog[0].cgid"
		;
connectAttr "groupParts36.og" "|group2|pasted__group1|pasted__pasted__pCube2|transform44|pasted__pasted__pCubeShape2.i"
		;
connectAttr "groupId69.id" "|group2|pasted__group1|pasted__pasted__pCube2|transform44|pasted__pasted__pCubeShape2.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group2|pasted__group1|pasted__pasted__pCube2|transform44|pasted__pasted__pCubeShape2.iog.og[0].gco"
		;
connectAttr "groupId70.id" "|group2|pasted__group1|pasted__pasted__pCube2|transform44|pasted__pasted__pCubeShape2.ciog.cog[0].cgid"
		;
connectAttr "groupParts37.og" "|group3|pasted__pCube2|transform43|pasted__pCubeShape2.i"
		;
connectAttr "groupId71.id" "|group3|pasted__pCube2|transform43|pasted__pCubeShape2.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group3|pasted__pCube2|transform43|pasted__pCubeShape2.iog.og[0].gco"
		;
connectAttr "groupId72.id" "|group3|pasted__pCube2|transform43|pasted__pCubeShape2.ciog.cog[0].cgid"
		;
connectAttr "groupParts38.og" "|group3|pasted__group1|pasted__pasted__pCube2|transform42|pasted__pasted__pCubeShape2.i"
		;
connectAttr "groupId73.id" "|group3|pasted__group1|pasted__pasted__pCube2|transform42|pasted__pasted__pCubeShape2.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group3|pasted__group1|pasted__pasted__pCube2|transform42|pasted__pasted__pCubeShape2.iog.og[0].gco"
		;
connectAttr "groupId74.id" "|group3|pasted__group1|pasted__pasted__pCube2|transform42|pasted__pasted__pCubeShape2.ciog.cog[0].cgid"
		;
connectAttr "groupParts39.og" "|group3|pasted__group2|pasted__pasted__pCube2|transform41|pasted__pasted__pCubeShape2.i"
		;
connectAttr "groupId75.id" "|group3|pasted__group2|pasted__pasted__pCube2|transform41|pasted__pasted__pCubeShape2.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group3|pasted__group2|pasted__pasted__pCube2|transform41|pasted__pasted__pCubeShape2.iog.og[0].gco"
		;
connectAttr "groupId76.id" "|group3|pasted__group2|pasted__pasted__pCube2|transform41|pasted__pasted__pCubeShape2.ciog.cog[0].cgid"
		;
connectAttr "groupParts40.og" "|group3|pasted__group2|pasted__pasted__group1|pasted__pasted__pasted__pCube2|transform40|pasted__pasted__pasted__pCubeShape2.i"
		;
connectAttr "groupId77.id" "|group3|pasted__group2|pasted__pasted__group1|pasted__pasted__pasted__pCube2|transform40|pasted__pasted__pasted__pCubeShape2.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group3|pasted__group2|pasted__pasted__group1|pasted__pasted__pasted__pCube2|transform40|pasted__pasted__pasted__pCubeShape2.iog.og[0].gco"
		;
connectAttr "groupId78.id" "|group3|pasted__group2|pasted__pasted__group1|pasted__pasted__pasted__pCube2|transform40|pasted__pasted__pasted__pCubeShape2.ciog.cog[0].cgid"
		;
connectAttr "groupParts41.og" "|group4|pasted__group1|pasted__pasted__pCube2|transform39|pasted__pasted__pCubeShape2.i"
		;
connectAttr "groupId79.id" "|group4|pasted__group1|pasted__pasted__pCube2|transform39|pasted__pasted__pCubeShape2.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group4|pasted__group1|pasted__pasted__pCube2|transform39|pasted__pasted__pCubeShape2.iog.og[0].gco"
		;
connectAttr "groupId80.id" "|group4|pasted__group1|pasted__pasted__pCube2|transform39|pasted__pasted__pCubeShape2.ciog.cog[0].cgid"
		;
connectAttr "groupParts42.og" "|group4|pasted__group2|pasted__pasted__pCube2|transform38|pasted__pasted__pCubeShape2.i"
		;
connectAttr "groupId81.id" "|group4|pasted__group2|pasted__pasted__pCube2|transform38|pasted__pasted__pCubeShape2.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group4|pasted__group2|pasted__pasted__pCube2|transform38|pasted__pasted__pCubeShape2.iog.og[0].gco"
		;
connectAttr "groupId82.id" "|group4|pasted__group2|pasted__pasted__pCube2|transform38|pasted__pasted__pCubeShape2.ciog.cog[0].cgid"
		;
connectAttr "groupParts43.og" "|group4|pasted__group2|pasted__pasted__group1|pasted__pasted__pasted__pCube2|transform37|pasted__pasted__pasted__pCubeShape2.i"
		;
connectAttr "groupId83.id" "|group4|pasted__group2|pasted__pasted__group1|pasted__pasted__pasted__pCube2|transform37|pasted__pasted__pasted__pCubeShape2.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group4|pasted__group2|pasted__pasted__group1|pasted__pasted__pasted__pCube2|transform37|pasted__pasted__pasted__pCubeShape2.iog.og[0].gco"
		;
connectAttr "groupId84.id" "|group4|pasted__group2|pasted__pasted__group1|pasted__pasted__pasted__pCube2|transform37|pasted__pasted__pasted__pCubeShape2.ciog.cog[0].cgid"
		;
connectAttr "groupParts44.og" "|group4|pasted__group3|pasted__pasted__pCube2|transform36|pasted__pasted__pCubeShape2.i"
		;
connectAttr "groupId85.id" "|group4|pasted__group3|pasted__pasted__pCube2|transform36|pasted__pasted__pCubeShape2.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group4|pasted__group3|pasted__pasted__pCube2|transform36|pasted__pasted__pCubeShape2.iog.og[0].gco"
		;
connectAttr "groupId86.id" "|group4|pasted__group3|pasted__pasted__pCube2|transform36|pasted__pasted__pCubeShape2.ciog.cog[0].cgid"
		;
connectAttr "groupParts45.og" "|group4|pasted__group3|pasted__pasted__group1|pasted__pasted__pasted__pCube2|transform35|pasted__pasted__pasted__pCubeShape2.i"
		;
connectAttr "groupId87.id" "|group4|pasted__group3|pasted__pasted__group1|pasted__pasted__pasted__pCube2|transform35|pasted__pasted__pasted__pCubeShape2.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group4|pasted__group3|pasted__pasted__group1|pasted__pasted__pasted__pCube2|transform35|pasted__pasted__pasted__pCubeShape2.iog.og[0].gco"
		;
connectAttr "groupId88.id" "|group4|pasted__group3|pasted__pasted__group1|pasted__pasted__pasted__pCube2|transform35|pasted__pasted__pasted__pCubeShape2.ciog.cog[0].cgid"
		;
connectAttr "groupParts46.og" "|group4|pasted__group3|pasted__pasted__group2|pasted__pasted__pasted__pCube2|transform34|pasted__pasted__pasted__pCubeShape2.i"
		;
connectAttr "groupId89.id" "|group4|pasted__group3|pasted__pasted__group2|pasted__pasted__pasted__pCube2|transform34|pasted__pasted__pasted__pCubeShape2.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group4|pasted__group3|pasted__pasted__group2|pasted__pasted__pasted__pCube2|transform34|pasted__pasted__pasted__pCubeShape2.iog.og[0].gco"
		;
connectAttr "groupId90.id" "|group4|pasted__group3|pasted__pasted__group2|pasted__pasted__pasted__pCube2|transform34|pasted__pasted__pasted__pCubeShape2.ciog.cog[0].cgid"
		;
connectAttr "groupParts47.og" "|group4|pasted__group3|pasted__pasted__group2|pasted__pasted__pasted__group1|pasted__pasted__pasted__pasted__pCube2|transform33|pasted__pasted__pasted__pasted__pCubeShape2.i"
		;
connectAttr "groupId91.id" "|group4|pasted__group3|pasted__pasted__group2|pasted__pasted__pasted__group1|pasted__pasted__pasted__pasted__pCube2|transform33|pasted__pasted__pasted__pasted__pCubeShape2.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group4|pasted__group3|pasted__pasted__group2|pasted__pasted__pasted__group1|pasted__pasted__pasted__pasted__pCube2|transform33|pasted__pasted__pasted__pasted__pCubeShape2.iog.og[0].gco"
		;
connectAttr "groupId92.id" "|group4|pasted__group3|pasted__pasted__group2|pasted__pasted__pasted__group1|pasted__pasted__pasted__pasted__pCube2|transform33|pasted__pasted__pasted__pasted__pCubeShape2.ciog.cog[0].cgid"
		;
connectAttr "groupParts17.og" "|group5|pasted__pCube2|transform31|pasted__pCubeShape2.i"
		;
connectAttr "groupId32.id" "|group5|pasted__pCube2|transform31|pasted__pCubeShape2.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group5|pasted__pCube2|transform31|pasted__pCubeShape2.iog.og[0].gco"
		;
connectAttr "groupId33.id" "|group5|pasted__pCube2|transform31|pasted__pCubeShape2.ciog.cog[0].cgid"
		;
connectAttr "groupParts18.og" "|group5|pasted__group1|pasted__pasted__pCube2|transform30|pasted__pasted__pCubeShape2.i"
		;
connectAttr "groupId34.id" "|group5|pasted__group1|pasted__pasted__pCube2|transform30|pasted__pasted__pCubeShape2.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group5|pasted__group1|pasted__pasted__pCube2|transform30|pasted__pasted__pCubeShape2.iog.og[0].gco"
		;
connectAttr "groupId35.id" "|group5|pasted__group1|pasted__pasted__pCube2|transform30|pasted__pasted__pCubeShape2.ciog.cog[0].cgid"
		;
connectAttr "groupParts19.og" "|group5|pasted__group2|pasted__pasted__pCube2|transform29|pasted__pasted__pCubeShape2.i"
		;
connectAttr "groupId36.id" "|group5|pasted__group2|pasted__pasted__pCube2|transform29|pasted__pasted__pCubeShape2.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group5|pasted__group2|pasted__pasted__pCube2|transform29|pasted__pasted__pCubeShape2.iog.og[0].gco"
		;
connectAttr "groupId37.id" "|group5|pasted__group2|pasted__pasted__pCube2|transform29|pasted__pasted__pCubeShape2.ciog.cog[0].cgid"
		;
connectAttr "groupParts20.og" "|group5|pasted__group2|pasted__pasted__group1|pasted__pasted__pasted__pCube2|transform28|pasted__pasted__pasted__pCubeShape2.i"
		;
connectAttr "groupId38.id" "|group5|pasted__group2|pasted__pasted__group1|pasted__pasted__pasted__pCube2|transform28|pasted__pasted__pasted__pCubeShape2.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group5|pasted__group2|pasted__pasted__group1|pasted__pasted__pasted__pCube2|transform28|pasted__pasted__pasted__pCubeShape2.iog.og[0].gco"
		;
connectAttr "groupId39.id" "|group5|pasted__group2|pasted__pasted__group1|pasted__pasted__pasted__pCube2|transform28|pasted__pasted__pasted__pCubeShape2.ciog.cog[0].cgid"
		;
connectAttr "groupParts21.og" "|group5|pasted__group3|pasted__pasted__pCube2|transform27|pasted__pasted__pCubeShape2.i"
		;
connectAttr "groupId40.id" "|group5|pasted__group3|pasted__pasted__pCube2|transform27|pasted__pasted__pCubeShape2.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group5|pasted__group3|pasted__pasted__pCube2|transform27|pasted__pasted__pCubeShape2.iog.og[0].gco"
		;
connectAttr "groupId41.id" "|group5|pasted__group3|pasted__pasted__pCube2|transform27|pasted__pasted__pCubeShape2.ciog.cog[0].cgid"
		;
connectAttr "groupParts22.og" "|group5|pasted__group3|pasted__pasted__group1|pasted__pasted__pasted__pCube2|transform26|pasted__pasted__pasted__pCubeShape2.i"
		;
connectAttr "groupId42.id" "|group5|pasted__group3|pasted__pasted__group1|pasted__pasted__pasted__pCube2|transform26|pasted__pasted__pasted__pCubeShape2.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group5|pasted__group3|pasted__pasted__group1|pasted__pasted__pasted__pCube2|transform26|pasted__pasted__pasted__pCubeShape2.iog.og[0].gco"
		;
connectAttr "groupId43.id" "|group5|pasted__group3|pasted__pasted__group1|pasted__pasted__pasted__pCube2|transform26|pasted__pasted__pasted__pCubeShape2.ciog.cog[0].cgid"
		;
connectAttr "groupParts23.og" "|group5|pasted__group3|pasted__pasted__group2|pasted__pasted__pasted__pCube2|transform25|pasted__pasted__pasted__pCubeShape2.i"
		;
connectAttr "groupId44.id" "|group5|pasted__group3|pasted__pasted__group2|pasted__pasted__pasted__pCube2|transform25|pasted__pasted__pasted__pCubeShape2.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group5|pasted__group3|pasted__pasted__group2|pasted__pasted__pasted__pCube2|transform25|pasted__pasted__pasted__pCubeShape2.iog.og[0].gco"
		;
connectAttr "groupId45.id" "|group5|pasted__group3|pasted__pasted__group2|pasted__pasted__pasted__pCube2|transform25|pasted__pasted__pasted__pCubeShape2.ciog.cog[0].cgid"
		;
connectAttr "groupParts24.og" "|group5|pasted__group3|pasted__pasted__group2|pasted__pasted__pasted__group1|pasted__pasted__pasted__pasted__pCube2|transform24|pasted__pasted__pasted__pasted__pCubeShape2.i"
		;
connectAttr "groupId46.id" "|group5|pasted__group3|pasted__pasted__group2|pasted__pasted__pasted__group1|pasted__pasted__pasted__pasted__pCube2|transform24|pasted__pasted__pasted__pasted__pCubeShape2.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group5|pasted__group3|pasted__pasted__group2|pasted__pasted__pasted__group1|pasted__pasted__pasted__pasted__pCube2|transform24|pasted__pasted__pasted__pasted__pCubeShape2.iog.og[0].gco"
		;
connectAttr "groupId47.id" "|group5|pasted__group3|pasted__pasted__group2|pasted__pasted__pasted__group1|pasted__pasted__pasted__pasted__pCube2|transform24|pasted__pasted__pasted__pasted__pCubeShape2.ciog.cog[0].cgid"
		;
connectAttr "groupParts25.og" "|group5|pasted__group4|pasted__pasted__group1|pasted__pasted__pasted__pCube2|transform23|pasted__pasted__pasted__pCubeShape2.i"
		;
connectAttr "groupId48.id" "|group5|pasted__group4|pasted__pasted__group1|pasted__pasted__pasted__pCube2|transform23|pasted__pasted__pasted__pCubeShape2.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group5|pasted__group4|pasted__pasted__group1|pasted__pasted__pasted__pCube2|transform23|pasted__pasted__pasted__pCubeShape2.iog.og[0].gco"
		;
connectAttr "groupId49.id" "|group5|pasted__group4|pasted__pasted__group1|pasted__pasted__pasted__pCube2|transform23|pasted__pasted__pasted__pCubeShape2.ciog.cog[0].cgid"
		;
connectAttr "groupParts26.og" "|group5|pasted__group4|pasted__pasted__group2|pasted__pasted__pasted__pCube2|transform22|pasted__pasted__pasted__pCubeShape2.i"
		;
connectAttr "groupId50.id" "|group5|pasted__group4|pasted__pasted__group2|pasted__pasted__pasted__pCube2|transform22|pasted__pasted__pasted__pCubeShape2.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group5|pasted__group4|pasted__pasted__group2|pasted__pasted__pasted__pCube2|transform22|pasted__pasted__pasted__pCubeShape2.iog.og[0].gco"
		;
connectAttr "groupId51.id" "|group5|pasted__group4|pasted__pasted__group2|pasted__pasted__pasted__pCube2|transform22|pasted__pasted__pasted__pCubeShape2.ciog.cog[0].cgid"
		;
connectAttr "groupParts27.og" "|group5|pasted__group4|pasted__pasted__group2|pasted__pasted__pasted__group1|pasted__pasted__pasted__pasted__pCube2|transform21|pasted__pasted__pasted__pasted__pCubeShape2.i"
		;
connectAttr "groupId52.id" "|group5|pasted__group4|pasted__pasted__group2|pasted__pasted__pasted__group1|pasted__pasted__pasted__pasted__pCube2|transform21|pasted__pasted__pasted__pasted__pCubeShape2.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group5|pasted__group4|pasted__pasted__group2|pasted__pasted__pasted__group1|pasted__pasted__pasted__pasted__pCube2|transform21|pasted__pasted__pasted__pasted__pCubeShape2.iog.og[0].gco"
		;
connectAttr "groupId53.id" "|group5|pasted__group4|pasted__pasted__group2|pasted__pasted__pasted__group1|pasted__pasted__pasted__pasted__pCube2|transform21|pasted__pasted__pasted__pasted__pCubeShape2.ciog.cog[0].cgid"
		;
connectAttr "groupParts28.og" "|group5|pasted__group4|pasted__pasted__group3|pasted__pasted__pasted__pCube2|transform20|pasted__pasted__pasted__pCubeShape2.i"
		;
connectAttr "groupId54.id" "|group5|pasted__group4|pasted__pasted__group3|pasted__pasted__pasted__pCube2|transform20|pasted__pasted__pasted__pCubeShape2.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group5|pasted__group4|pasted__pasted__group3|pasted__pasted__pasted__pCube2|transform20|pasted__pasted__pasted__pCubeShape2.iog.og[0].gco"
		;
connectAttr "groupId55.id" "|group5|pasted__group4|pasted__pasted__group3|pasted__pasted__pasted__pCube2|transform20|pasted__pasted__pasted__pCubeShape2.ciog.cog[0].cgid"
		;
connectAttr "groupParts29.og" "|group5|pasted__group4|pasted__pasted__group3|pasted__pasted__pasted__group1|pasted__pasted__pasted__pasted__pCube2|transform19|pasted__pasted__pasted__pasted__pCubeShape2.i"
		;
connectAttr "groupId56.id" "|group5|pasted__group4|pasted__pasted__group3|pasted__pasted__pasted__group1|pasted__pasted__pasted__pasted__pCube2|transform19|pasted__pasted__pasted__pasted__pCubeShape2.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group5|pasted__group4|pasted__pasted__group3|pasted__pasted__pasted__group1|pasted__pasted__pasted__pasted__pCube2|transform19|pasted__pasted__pasted__pasted__pCubeShape2.iog.og[0].gco"
		;
connectAttr "groupId57.id" "|group5|pasted__group4|pasted__pasted__group3|pasted__pasted__pasted__group1|pasted__pasted__pasted__pasted__pCube2|transform19|pasted__pasted__pasted__pasted__pCubeShape2.ciog.cog[0].cgid"
		;
connectAttr "groupParts30.og" "|group5|pasted__group4|pasted__pasted__group3|pasted__pasted__pasted__group2|pasted__pasted__pasted__pasted__pCube2|transform18|pasted__pasted__pasted__pasted__pCubeShape2.i"
		;
connectAttr "groupId58.id" "|group5|pasted__group4|pasted__pasted__group3|pasted__pasted__pasted__group2|pasted__pasted__pasted__pasted__pCube2|transform18|pasted__pasted__pasted__pasted__pCubeShape2.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group5|pasted__group4|pasted__pasted__group3|pasted__pasted__pasted__group2|pasted__pasted__pasted__pasted__pCube2|transform18|pasted__pasted__pasted__pasted__pCubeShape2.iog.og[0].gco"
		;
connectAttr "groupId59.id" "|group5|pasted__group4|pasted__pasted__group3|pasted__pasted__pasted__group2|pasted__pasted__pasted__pasted__pCube2|transform18|pasted__pasted__pasted__pasted__pCubeShape2.ciog.cog[0].cgid"
		;
connectAttr "groupParts31.og" "|group5|pasted__group4|pasted__pasted__group3|pasted__pasted__pasted__group2|pasted__pasted__pasted__pasted__group1|pasted__pasted__pasted__pasted__pasted__pCube2|transform17|pasted__pasted__pasted__pasted__pasted__pCubeShape2.i"
		;
connectAttr "groupId60.id" "|group5|pasted__group4|pasted__pasted__group3|pasted__pasted__pasted__group2|pasted__pasted__pasted__pasted__group1|pasted__pasted__pasted__pasted__pasted__pCube2|transform17|pasted__pasted__pasted__pasted__pasted__pCubeShape2.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group5|pasted__group4|pasted__pasted__group3|pasted__pasted__pasted__group2|pasted__pasted__pasted__pasted__group1|pasted__pasted__pasted__pasted__pasted__pCube2|transform17|pasted__pasted__pasted__pasted__pasted__pCubeShape2.iog.og[0].gco"
		;
connectAttr "groupId61.id" "|group5|pasted__group4|pasted__pasted__group3|pasted__pasted__pasted__group2|pasted__pasted__pasted__pasted__group1|pasted__pasted__pasted__pasted__pasted__pCube2|transform17|pasted__pasted__pasted__pasted__pasted__pCubeShape2.ciog.cog[0].cgid"
		;
connectAttr "groupParts1.og" "|group6|pasted__group5|pasted__pasted__pCube2|transform15|pasted__pasted__pCubeShape2.i"
		;
connectAttr "groupId1.id" "|group6|pasted__group5|pasted__pasted__pCube2|transform15|pasted__pasted__pCubeShape2.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group6|pasted__group5|pasted__pasted__pCube2|transform15|pasted__pasted__pCubeShape2.iog.og[0].gco"
		;
connectAttr "groupId2.id" "|group6|pasted__group5|pasted__pasted__pCube2|transform15|pasted__pasted__pCubeShape2.ciog.cog[0].cgid"
		;
connectAttr "groupParts2.og" "|group6|pasted__group5|pasted__pasted__group1|pasted__pasted__pasted__pCube2|transform14|pasted__pasted__pasted__pCubeShape2.i"
		;
connectAttr "groupId3.id" "|group6|pasted__group5|pasted__pasted__group1|pasted__pasted__pasted__pCube2|transform14|pasted__pasted__pasted__pCubeShape2.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group6|pasted__group5|pasted__pasted__group1|pasted__pasted__pasted__pCube2|transform14|pasted__pasted__pasted__pCubeShape2.iog.og[0].gco"
		;
connectAttr "groupId4.id" "|group6|pasted__group5|pasted__pasted__group1|pasted__pasted__pasted__pCube2|transform14|pasted__pasted__pasted__pCubeShape2.ciog.cog[0].cgid"
		;
connectAttr "groupParts3.og" "|group6|pasted__group5|pasted__pasted__group2|pasted__pasted__pasted__pCube2|transform13|pasted__pasted__pasted__pCubeShape2.i"
		;
connectAttr "groupId5.id" "|group6|pasted__group5|pasted__pasted__group2|pasted__pasted__pasted__pCube2|transform13|pasted__pasted__pasted__pCubeShape2.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group6|pasted__group5|pasted__pasted__group2|pasted__pasted__pasted__pCube2|transform13|pasted__pasted__pasted__pCubeShape2.iog.og[0].gco"
		;
connectAttr "groupId6.id" "|group6|pasted__group5|pasted__pasted__group2|pasted__pasted__pasted__pCube2|transform13|pasted__pasted__pasted__pCubeShape2.ciog.cog[0].cgid"
		;
connectAttr "groupParts4.og" "|group6|pasted__group5|pasted__pasted__group2|pasted__pasted__pasted__group1|pasted__pasted__pasted__pasted__pCube2|transform12|pasted__pasted__pasted__pasted__pCubeShape2.i"
		;
connectAttr "groupId7.id" "|group6|pasted__group5|pasted__pasted__group2|pasted__pasted__pasted__group1|pasted__pasted__pasted__pasted__pCube2|transform12|pasted__pasted__pasted__pasted__pCubeShape2.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group6|pasted__group5|pasted__pasted__group2|pasted__pasted__pasted__group1|pasted__pasted__pasted__pasted__pCube2|transform12|pasted__pasted__pasted__pasted__pCubeShape2.iog.og[0].gco"
		;
connectAttr "groupId8.id" "|group6|pasted__group5|pasted__pasted__group2|pasted__pasted__pasted__group1|pasted__pasted__pasted__pasted__pCube2|transform12|pasted__pasted__pasted__pasted__pCubeShape2.ciog.cog[0].cgid"
		;
connectAttr "groupParts5.og" "|group6|pasted__group5|pasted__pasted__group3|pasted__pasted__pasted__pCube2|transform11|pasted__pasted__pasted__pCubeShape2.i"
		;
connectAttr "groupId9.id" "|group6|pasted__group5|pasted__pasted__group3|pasted__pasted__pasted__pCube2|transform11|pasted__pasted__pasted__pCubeShape2.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group6|pasted__group5|pasted__pasted__group3|pasted__pasted__pasted__pCube2|transform11|pasted__pasted__pasted__pCubeShape2.iog.og[0].gco"
		;
connectAttr "groupId10.id" "|group6|pasted__group5|pasted__pasted__group3|pasted__pasted__pasted__pCube2|transform11|pasted__pasted__pasted__pCubeShape2.ciog.cog[0].cgid"
		;
connectAttr "groupParts6.og" "|group6|pasted__group5|pasted__pasted__group3|pasted__pasted__pasted__group1|pasted__pasted__pasted__pasted__pCube2|transform10|pasted__pasted__pasted__pasted__pCubeShape2.i"
		;
connectAttr "groupId11.id" "|group6|pasted__group5|pasted__pasted__group3|pasted__pasted__pasted__group1|pasted__pasted__pasted__pasted__pCube2|transform10|pasted__pasted__pasted__pasted__pCubeShape2.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group6|pasted__group5|pasted__pasted__group3|pasted__pasted__pasted__group1|pasted__pasted__pasted__pasted__pCube2|transform10|pasted__pasted__pasted__pasted__pCubeShape2.iog.og[0].gco"
		;
connectAttr "groupId12.id" "|group6|pasted__group5|pasted__pasted__group3|pasted__pasted__pasted__group1|pasted__pasted__pasted__pasted__pCube2|transform10|pasted__pasted__pasted__pasted__pCubeShape2.ciog.cog[0].cgid"
		;
connectAttr "groupParts7.og" "|group6|pasted__group5|pasted__pasted__group3|pasted__pasted__pasted__group2|pasted__pasted__pasted__pasted__pCube2|transform9|pasted__pasted__pasted__pasted__pCubeShape2.i"
		;
connectAttr "groupId13.id" "|group6|pasted__group5|pasted__pasted__group3|pasted__pasted__pasted__group2|pasted__pasted__pasted__pasted__pCube2|transform9|pasted__pasted__pasted__pasted__pCubeShape2.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group6|pasted__group5|pasted__pasted__group3|pasted__pasted__pasted__group2|pasted__pasted__pasted__pasted__pCube2|transform9|pasted__pasted__pasted__pasted__pCubeShape2.iog.og[0].gco"
		;
connectAttr "groupId14.id" "|group6|pasted__group5|pasted__pasted__group3|pasted__pasted__pasted__group2|pasted__pasted__pasted__pasted__pCube2|transform9|pasted__pasted__pasted__pasted__pCubeShape2.ciog.cog[0].cgid"
		;
connectAttr "groupParts8.og" "|group6|pasted__group5|pasted__pasted__group3|pasted__pasted__pasted__group2|pasted__pasted__pasted__pasted__group1|pasted__pasted__pasted__pasted__pasted__pCube2|transform8|pasted__pasted__pasted__pasted__pasted__pCubeShape2.i"
		;
connectAttr "groupId15.id" "|group6|pasted__group5|pasted__pasted__group3|pasted__pasted__pasted__group2|pasted__pasted__pasted__pasted__group1|pasted__pasted__pasted__pasted__pasted__pCube2|transform8|pasted__pasted__pasted__pasted__pasted__pCubeShape2.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group6|pasted__group5|pasted__pasted__group3|pasted__pasted__pasted__group2|pasted__pasted__pasted__pasted__group1|pasted__pasted__pasted__pasted__pasted__pCube2|transform8|pasted__pasted__pasted__pasted__pasted__pCubeShape2.iog.og[0].gco"
		;
connectAttr "groupId16.id" "|group6|pasted__group5|pasted__pasted__group3|pasted__pasted__pasted__group2|pasted__pasted__pasted__pasted__group1|pasted__pasted__pasted__pasted__pasted__pCube2|transform8|pasted__pasted__pasted__pasted__pasted__pCubeShape2.ciog.cog[0].cgid"
		;
connectAttr "groupParts9.og" "|group6|pasted__group5|pasted__pasted__group4|pasted__pasted__pasted__group1|pasted__pasted__pasted__pasted__pCube2|transform7|pasted__pasted__pasted__pasted__pCubeShape2.i"
		;
connectAttr "groupId17.id" "|group6|pasted__group5|pasted__pasted__group4|pasted__pasted__pasted__group1|pasted__pasted__pasted__pasted__pCube2|transform7|pasted__pasted__pasted__pasted__pCubeShape2.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group6|pasted__group5|pasted__pasted__group4|pasted__pasted__pasted__group1|pasted__pasted__pasted__pasted__pCube2|transform7|pasted__pasted__pasted__pasted__pCubeShape2.iog.og[0].gco"
		;
connectAttr "groupId18.id" "|group6|pasted__group5|pasted__pasted__group4|pasted__pasted__pasted__group1|pasted__pasted__pasted__pasted__pCube2|transform7|pasted__pasted__pasted__pasted__pCubeShape2.ciog.cog[0].cgid"
		;
connectAttr "groupParts10.og" "|group6|pasted__group5|pasted__pasted__group4|pasted__pasted__pasted__group2|pasted__pasted__pasted__pasted__pCube2|transform6|pasted__pasted__pasted__pasted__pCubeShape2.i"
		;
connectAttr "groupId19.id" "|group6|pasted__group5|pasted__pasted__group4|pasted__pasted__pasted__group2|pasted__pasted__pasted__pasted__pCube2|transform6|pasted__pasted__pasted__pasted__pCubeShape2.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group6|pasted__group5|pasted__pasted__group4|pasted__pasted__pasted__group2|pasted__pasted__pasted__pasted__pCube2|transform6|pasted__pasted__pasted__pasted__pCubeShape2.iog.og[0].gco"
		;
connectAttr "groupId20.id" "|group6|pasted__group5|pasted__pasted__group4|pasted__pasted__pasted__group2|pasted__pasted__pasted__pasted__pCube2|transform6|pasted__pasted__pasted__pasted__pCubeShape2.ciog.cog[0].cgid"
		;
connectAttr "groupParts11.og" "|group6|pasted__group5|pasted__pasted__group4|pasted__pasted__pasted__group2|pasted__pasted__pasted__pasted__group1|pasted__pasted__pasted__pasted__pasted__pCube2|transform5|pasted__pasted__pasted__pasted__pasted__pCubeShape2.i"
		;
connectAttr "groupId21.id" "|group6|pasted__group5|pasted__pasted__group4|pasted__pasted__pasted__group2|pasted__pasted__pasted__pasted__group1|pasted__pasted__pasted__pasted__pasted__pCube2|transform5|pasted__pasted__pasted__pasted__pasted__pCubeShape2.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group6|pasted__group5|pasted__pasted__group4|pasted__pasted__pasted__group2|pasted__pasted__pasted__pasted__group1|pasted__pasted__pasted__pasted__pasted__pCube2|transform5|pasted__pasted__pasted__pasted__pasted__pCubeShape2.iog.og[0].gco"
		;
connectAttr "groupId22.id" "|group6|pasted__group5|pasted__pasted__group4|pasted__pasted__pasted__group2|pasted__pasted__pasted__pasted__group1|pasted__pasted__pasted__pasted__pasted__pCube2|transform5|pasted__pasted__pasted__pasted__pasted__pCubeShape2.ciog.cog[0].cgid"
		;
connectAttr "groupParts12.og" "|group6|pasted__group5|pasted__pasted__group4|pasted__pasted__pasted__group3|pasted__pasted__pasted__pasted__pCube2|transform4|pasted__pasted__pasted__pasted__pCubeShape2.i"
		;
connectAttr "groupId23.id" "|group6|pasted__group5|pasted__pasted__group4|pasted__pasted__pasted__group3|pasted__pasted__pasted__pasted__pCube2|transform4|pasted__pasted__pasted__pasted__pCubeShape2.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group6|pasted__group5|pasted__pasted__group4|pasted__pasted__pasted__group3|pasted__pasted__pasted__pasted__pCube2|transform4|pasted__pasted__pasted__pasted__pCubeShape2.iog.og[0].gco"
		;
connectAttr "groupId24.id" "|group6|pasted__group5|pasted__pasted__group4|pasted__pasted__pasted__group3|pasted__pasted__pasted__pasted__pCube2|transform4|pasted__pasted__pasted__pasted__pCubeShape2.ciog.cog[0].cgid"
		;
connectAttr "groupParts13.og" "|group6|pasted__group5|pasted__pasted__group4|pasted__pasted__pasted__group3|pasted__pasted__pasted__pasted__group1|pasted__pasted__pasted__pasted__pasted__pCube2|transform3|pasted__pasted__pasted__pasted__pasted__pCubeShape2.i"
		;
connectAttr "groupId25.id" "|group6|pasted__group5|pasted__pasted__group4|pasted__pasted__pasted__group3|pasted__pasted__pasted__pasted__group1|pasted__pasted__pasted__pasted__pasted__pCube2|transform3|pasted__pasted__pasted__pasted__pasted__pCubeShape2.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group6|pasted__group5|pasted__pasted__group4|pasted__pasted__pasted__group3|pasted__pasted__pasted__pasted__group1|pasted__pasted__pasted__pasted__pasted__pCube2|transform3|pasted__pasted__pasted__pasted__pasted__pCubeShape2.iog.og[0].gco"
		;
connectAttr "groupId26.id" "|group6|pasted__group5|pasted__pasted__group4|pasted__pasted__pasted__group3|pasted__pasted__pasted__pasted__group1|pasted__pasted__pasted__pasted__pasted__pCube2|transform3|pasted__pasted__pasted__pasted__pasted__pCubeShape2.ciog.cog[0].cgid"
		;
connectAttr "groupParts14.og" "|group6|pasted__group5|pasted__pasted__group4|pasted__pasted__pasted__group3|pasted__pasted__pasted__pasted__group2|pasted__pasted__pasted__pasted__pasted__pCube2|transform2|pasted__pasted__pasted__pasted__pasted__pCubeShape2.i"
		;
connectAttr "groupId27.id" "|group6|pasted__group5|pasted__pasted__group4|pasted__pasted__pasted__group3|pasted__pasted__pasted__pasted__group2|pasted__pasted__pasted__pasted__pasted__pCube2|transform2|pasted__pasted__pasted__pasted__pasted__pCubeShape2.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group6|pasted__group5|pasted__pasted__group4|pasted__pasted__pasted__group3|pasted__pasted__pasted__pasted__group2|pasted__pasted__pasted__pasted__pasted__pCube2|transform2|pasted__pasted__pasted__pasted__pasted__pCubeShape2.iog.og[0].gco"
		;
connectAttr "groupId28.id" "|group6|pasted__group5|pasted__pasted__group4|pasted__pasted__pasted__group3|pasted__pasted__pasted__pasted__group2|pasted__pasted__pasted__pasted__pasted__pCube2|transform2|pasted__pasted__pasted__pasted__pasted__pCubeShape2.ciog.cog[0].cgid"
		;
connectAttr "groupParts15.og" "pasted__pasted__pasted__pasted__pasted__pasted__pCubeShape2.i"
		;
connectAttr "groupId29.id" "pasted__pasted__pasted__pasted__pasted__pasted__pCubeShape2.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "pasted__pasted__pasted__pasted__pasted__pasted__pCubeShape2.iog.og[0].gco"
		;
connectAttr "groupId30.id" "pasted__pasted__pasted__pasted__pasted__pasted__pCubeShape2.ciog.cog[0].cgid"
		;
connectAttr "groupParts16.og" "group7Shape.i";
connectAttr "groupId31.id" "group7Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "group7Shape.iog.og[0].gco";
connectAttr "groupParts32.og" "group5_pasted__pCube2Shape.i";
connectAttr "groupId62.id" "group5_pasted__pCube2Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "group5_pasted__pCube2Shape.iog.og[0].gco"
		;
connectAttr "groupParts48.og" "pCube3Shape.i";
connectAttr "groupId93.id" "pCube3Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCube3Shape.iog.og[0].gco";
connectAttr "polyCBoolOp1.out" "pCube4Shape.i";
connectAttr "groupId96.id" "pCube4Shape.ciog.cog[0].cgid";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "|group6|pasted__group5|pasted__pasted__pCube2|transform15|pasted__pasted__pCubeShape2.o" "polyUnite1.ip[0]"
		;
connectAttr "|group6|pasted__group5|pasted__pasted__group1|pasted__pasted__pasted__pCube2|transform14|pasted__pasted__pasted__pCubeShape2.o" "polyUnite1.ip[1]"
		;
connectAttr "|group6|pasted__group5|pasted__pasted__group2|pasted__pasted__pasted__pCube2|transform13|pasted__pasted__pasted__pCubeShape2.o" "polyUnite1.ip[2]"
		;
connectAttr "|group6|pasted__group5|pasted__pasted__group2|pasted__pasted__pasted__group1|pasted__pasted__pasted__pasted__pCube2|transform12|pasted__pasted__pasted__pasted__pCubeShape2.o" "polyUnite1.ip[3]"
		;
connectAttr "|group6|pasted__group5|pasted__pasted__group3|pasted__pasted__pasted__pCube2|transform11|pasted__pasted__pasted__pCubeShape2.o" "polyUnite1.ip[4]"
		;
connectAttr "|group6|pasted__group5|pasted__pasted__group3|pasted__pasted__pasted__group1|pasted__pasted__pasted__pasted__pCube2|transform10|pasted__pasted__pasted__pasted__pCubeShape2.o" "polyUnite1.ip[5]"
		;
connectAttr "|group6|pasted__group5|pasted__pasted__group3|pasted__pasted__pasted__group2|pasted__pasted__pasted__pasted__pCube2|transform9|pasted__pasted__pasted__pasted__pCubeShape2.o" "polyUnite1.ip[6]"
		;
connectAttr "|group6|pasted__group5|pasted__pasted__group3|pasted__pasted__pasted__group2|pasted__pasted__pasted__pasted__group1|pasted__pasted__pasted__pasted__pasted__pCube2|transform8|pasted__pasted__pasted__pasted__pasted__pCubeShape2.o" "polyUnite1.ip[7]"
		;
connectAttr "|group6|pasted__group5|pasted__pasted__group4|pasted__pasted__pasted__group1|pasted__pasted__pasted__pasted__pCube2|transform7|pasted__pasted__pasted__pasted__pCubeShape2.o" "polyUnite1.ip[8]"
		;
connectAttr "|group6|pasted__group5|pasted__pasted__group4|pasted__pasted__pasted__group2|pasted__pasted__pasted__pasted__pCube2|transform6|pasted__pasted__pasted__pasted__pCubeShape2.o" "polyUnite1.ip[9]"
		;
connectAttr "|group6|pasted__group5|pasted__pasted__group4|pasted__pasted__pasted__group2|pasted__pasted__pasted__pasted__group1|pasted__pasted__pasted__pasted__pasted__pCube2|transform5|pasted__pasted__pasted__pasted__pasted__pCubeShape2.o" "polyUnite1.ip[10]"
		;
connectAttr "|group6|pasted__group5|pasted__pasted__group4|pasted__pasted__pasted__group3|pasted__pasted__pasted__pasted__pCube2|transform4|pasted__pasted__pasted__pasted__pCubeShape2.o" "polyUnite1.ip[11]"
		;
connectAttr "|group6|pasted__group5|pasted__pasted__group4|pasted__pasted__pasted__group3|pasted__pasted__pasted__pasted__group1|pasted__pasted__pasted__pasted__pasted__pCube2|transform3|pasted__pasted__pasted__pasted__pasted__pCubeShape2.o" "polyUnite1.ip[12]"
		;
connectAttr "|group6|pasted__group5|pasted__pasted__group4|pasted__pasted__pasted__group3|pasted__pasted__pasted__pasted__group2|pasted__pasted__pasted__pasted__pasted__pCube2|transform2|pasted__pasted__pasted__pasted__pasted__pCubeShape2.o" "polyUnite1.ip[13]"
		;
connectAttr "pasted__pasted__pasted__pasted__pasted__pasted__pCubeShape2.o" "polyUnite1.ip[14]"
		;
connectAttr "|group6|pasted__group5|pasted__pasted__pCube2|transform15|pasted__pasted__pCubeShape2.wm" "polyUnite1.im[0]"
		;
connectAttr "|group6|pasted__group5|pasted__pasted__group1|pasted__pasted__pasted__pCube2|transform14|pasted__pasted__pasted__pCubeShape2.wm" "polyUnite1.im[1]"
		;
connectAttr "|group6|pasted__group5|pasted__pasted__group2|pasted__pasted__pasted__pCube2|transform13|pasted__pasted__pasted__pCubeShape2.wm" "polyUnite1.im[2]"
		;
connectAttr "|group6|pasted__group5|pasted__pasted__group2|pasted__pasted__pasted__group1|pasted__pasted__pasted__pasted__pCube2|transform12|pasted__pasted__pasted__pasted__pCubeShape2.wm" "polyUnite1.im[3]"
		;
connectAttr "|group6|pasted__group5|pasted__pasted__group3|pasted__pasted__pasted__pCube2|transform11|pasted__pasted__pasted__pCubeShape2.wm" "polyUnite1.im[4]"
		;
connectAttr "|group6|pasted__group5|pasted__pasted__group3|pasted__pasted__pasted__group1|pasted__pasted__pasted__pasted__pCube2|transform10|pasted__pasted__pasted__pasted__pCubeShape2.wm" "polyUnite1.im[5]"
		;
connectAttr "|group6|pasted__group5|pasted__pasted__group3|pasted__pasted__pasted__group2|pasted__pasted__pasted__pasted__pCube2|transform9|pasted__pasted__pasted__pasted__pCubeShape2.wm" "polyUnite1.im[6]"
		;
connectAttr "|group6|pasted__group5|pasted__pasted__group3|pasted__pasted__pasted__group2|pasted__pasted__pasted__pasted__group1|pasted__pasted__pasted__pasted__pasted__pCube2|transform8|pasted__pasted__pasted__pasted__pasted__pCubeShape2.wm" "polyUnite1.im[7]"
		;
connectAttr "|group6|pasted__group5|pasted__pasted__group4|pasted__pasted__pasted__group1|pasted__pasted__pasted__pasted__pCube2|transform7|pasted__pasted__pasted__pasted__pCubeShape2.wm" "polyUnite1.im[8]"
		;
connectAttr "|group6|pasted__group5|pasted__pasted__group4|pasted__pasted__pasted__group2|pasted__pasted__pasted__pasted__pCube2|transform6|pasted__pasted__pasted__pasted__pCubeShape2.wm" "polyUnite1.im[9]"
		;
connectAttr "|group6|pasted__group5|pasted__pasted__group4|pasted__pasted__pasted__group2|pasted__pasted__pasted__pasted__group1|pasted__pasted__pasted__pasted__pasted__pCube2|transform5|pasted__pasted__pasted__pasted__pasted__pCubeShape2.wm" "polyUnite1.im[10]"
		;
connectAttr "|group6|pasted__group5|pasted__pasted__group4|pasted__pasted__pasted__group3|pasted__pasted__pasted__pasted__pCube2|transform4|pasted__pasted__pasted__pasted__pCubeShape2.wm" "polyUnite1.im[11]"
		;
connectAttr "|group6|pasted__group5|pasted__pasted__group4|pasted__pasted__pasted__group3|pasted__pasted__pasted__pasted__group1|pasted__pasted__pasted__pasted__pasted__pCube2|transform3|pasted__pasted__pasted__pasted__pasted__pCubeShape2.wm" "polyUnite1.im[12]"
		;
connectAttr "|group6|pasted__group5|pasted__pasted__group4|pasted__pasted__pasted__group3|pasted__pasted__pasted__pasted__group2|pasted__pasted__pasted__pasted__pasted__pCube2|transform2|pasted__pasted__pasted__pasted__pasted__pCubeShape2.wm" "polyUnite1.im[13]"
		;
connectAttr "pasted__pasted__pasted__pasted__pasted__pasted__pCubeShape2.wm" "polyUnite1.im[14]"
		;
connectAttr "pasted__pasted__polyCube11.out" "groupParts1.ig";
connectAttr "groupId1.id" "groupParts1.gi";
connectAttr "pasted__pasted__pasted__polyCube12.out" "groupParts2.ig";
connectAttr "groupId3.id" "groupParts2.gi";
connectAttr "pasted__pasted__pasted__polyCube13.out" "groupParts3.ig";
connectAttr "groupId5.id" "groupParts3.gi";
connectAttr "pasted__pasted__pasted__pasted__polyCube7.out" "groupParts4.ig";
connectAttr "groupId7.id" "groupParts4.gi";
connectAttr "pasted__pasted__pasted__polyCube14.out" "groupParts5.ig";
connectAttr "groupId9.id" "groupParts5.gi";
connectAttr "pasted__pasted__pasted__pasted__polyCube8.out" "groupParts6.ig";
connectAttr "groupId11.id" "groupParts6.gi";
connectAttr "pasted__pasted__pasted__pasted__polyCube9.out" "groupParts7.ig";
connectAttr "groupId13.id" "groupParts7.gi";
connectAttr "pasted__pasted__pasted__pasted__pasted__polyCube3.out" "groupParts8.ig"
		;
connectAttr "groupId15.id" "groupParts8.gi";
connectAttr "pasted__pasted__pasted__pasted__polyCube10.out" "groupParts9.ig";
connectAttr "groupId17.id" "groupParts9.gi";
connectAttr "pasted__pasted__pasted__pasted__polyCube11.out" "groupParts10.ig";
connectAttr "groupId19.id" "groupParts10.gi";
connectAttr "pasted__pasted__pasted__pasted__pasted__polyCube4.out" "groupParts11.ig"
		;
connectAttr "groupId21.id" "groupParts11.gi";
connectAttr "pasted__pasted__pasted__pasted__polyCube12.out" "groupParts12.ig";
connectAttr "groupId23.id" "groupParts12.gi";
connectAttr "pasted__pasted__pasted__pasted__pasted__polyCube5.out" "groupParts13.ig"
		;
connectAttr "groupId25.id" "groupParts13.gi";
connectAttr "pasted__pasted__pasted__pasted__pasted__polyCube6.out" "groupParts14.ig"
		;
connectAttr "groupId27.id" "groupParts14.gi";
connectAttr "pasted__pasted__pasted__pasted__pasted__pasted__polyCube2.out" "groupParts15.ig"
		;
connectAttr "groupId29.id" "groupParts15.gi";
connectAttr "polyUnite1.out" "groupParts16.ig";
connectAttr "groupId31.id" "groupParts16.gi";
connectAttr "|group5|pasted__pCube2|transform31|pasted__pCubeShape2.o" "polyUnite2.ip[0]"
		;
connectAttr "|group5|pasted__group1|pasted__pasted__pCube2|transform30|pasted__pasted__pCubeShape2.o" "polyUnite2.ip[1]"
		;
connectAttr "|group5|pasted__group2|pasted__pasted__pCube2|transform29|pasted__pasted__pCubeShape2.o" "polyUnite2.ip[2]"
		;
connectAttr "|group5|pasted__group2|pasted__pasted__group1|pasted__pasted__pasted__pCube2|transform28|pasted__pasted__pasted__pCubeShape2.o" "polyUnite2.ip[3]"
		;
connectAttr "|group5|pasted__group3|pasted__pasted__pCube2|transform27|pasted__pasted__pCubeShape2.o" "polyUnite2.ip[4]"
		;
connectAttr "|group5|pasted__group3|pasted__pasted__group1|pasted__pasted__pasted__pCube2|transform26|pasted__pasted__pasted__pCubeShape2.o" "polyUnite2.ip[5]"
		;
connectAttr "|group5|pasted__group3|pasted__pasted__group2|pasted__pasted__pasted__pCube2|transform25|pasted__pasted__pasted__pCubeShape2.o" "polyUnite2.ip[6]"
		;
connectAttr "|group5|pasted__group3|pasted__pasted__group2|pasted__pasted__pasted__group1|pasted__pasted__pasted__pasted__pCube2|transform24|pasted__pasted__pasted__pasted__pCubeShape2.o" "polyUnite2.ip[7]"
		;
connectAttr "|group5|pasted__group4|pasted__pasted__group1|pasted__pasted__pasted__pCube2|transform23|pasted__pasted__pasted__pCubeShape2.o" "polyUnite2.ip[8]"
		;
connectAttr "|group5|pasted__group4|pasted__pasted__group2|pasted__pasted__pasted__pCube2|transform22|pasted__pasted__pasted__pCubeShape2.o" "polyUnite2.ip[9]"
		;
connectAttr "|group5|pasted__group4|pasted__pasted__group2|pasted__pasted__pasted__group1|pasted__pasted__pasted__pasted__pCube2|transform21|pasted__pasted__pasted__pasted__pCubeShape2.o" "polyUnite2.ip[10]"
		;
connectAttr "|group5|pasted__group4|pasted__pasted__group3|pasted__pasted__pasted__pCube2|transform20|pasted__pasted__pasted__pCubeShape2.o" "polyUnite2.ip[11]"
		;
connectAttr "|group5|pasted__group4|pasted__pasted__group3|pasted__pasted__pasted__group1|pasted__pasted__pasted__pasted__pCube2|transform19|pasted__pasted__pasted__pasted__pCubeShape2.o" "polyUnite2.ip[12]"
		;
connectAttr "|group5|pasted__group4|pasted__pasted__group3|pasted__pasted__pasted__group2|pasted__pasted__pasted__pasted__pCube2|transform18|pasted__pasted__pasted__pasted__pCubeShape2.o" "polyUnite2.ip[13]"
		;
connectAttr "|group5|pasted__group4|pasted__pasted__group3|pasted__pasted__pasted__group2|pasted__pasted__pasted__pasted__group1|pasted__pasted__pasted__pasted__pasted__pCube2|transform17|pasted__pasted__pasted__pasted__pasted__pCubeShape2.o" "polyUnite2.ip[14]"
		;
connectAttr "group7Shape.o" "polyUnite2.ip[15]";
connectAttr "|group5|pasted__pCube2|transform31|pasted__pCubeShape2.wm" "polyUnite2.im[0]"
		;
connectAttr "|group5|pasted__group1|pasted__pasted__pCube2|transform30|pasted__pasted__pCubeShape2.wm" "polyUnite2.im[1]"
		;
connectAttr "|group5|pasted__group2|pasted__pasted__pCube2|transform29|pasted__pasted__pCubeShape2.wm" "polyUnite2.im[2]"
		;
connectAttr "|group5|pasted__group2|pasted__pasted__group1|pasted__pasted__pasted__pCube2|transform28|pasted__pasted__pasted__pCubeShape2.wm" "polyUnite2.im[3]"
		;
connectAttr "|group5|pasted__group3|pasted__pasted__pCube2|transform27|pasted__pasted__pCubeShape2.wm" "polyUnite2.im[4]"
		;
connectAttr "|group5|pasted__group3|pasted__pasted__group1|pasted__pasted__pasted__pCube2|transform26|pasted__pasted__pasted__pCubeShape2.wm" "polyUnite2.im[5]"
		;
connectAttr "|group5|pasted__group3|pasted__pasted__group2|pasted__pasted__pasted__pCube2|transform25|pasted__pasted__pasted__pCubeShape2.wm" "polyUnite2.im[6]"
		;
connectAttr "|group5|pasted__group3|pasted__pasted__group2|pasted__pasted__pasted__group1|pasted__pasted__pasted__pasted__pCube2|transform24|pasted__pasted__pasted__pasted__pCubeShape2.wm" "polyUnite2.im[7]"
		;
connectAttr "|group5|pasted__group4|pasted__pasted__group1|pasted__pasted__pasted__pCube2|transform23|pasted__pasted__pasted__pCubeShape2.wm" "polyUnite2.im[8]"
		;
connectAttr "|group5|pasted__group4|pasted__pasted__group2|pasted__pasted__pasted__pCube2|transform22|pasted__pasted__pasted__pCubeShape2.wm" "polyUnite2.im[9]"
		;
connectAttr "|group5|pasted__group4|pasted__pasted__group2|pasted__pasted__pasted__group1|pasted__pasted__pasted__pasted__pCube2|transform21|pasted__pasted__pasted__pasted__pCubeShape2.wm" "polyUnite2.im[10]"
		;
connectAttr "|group5|pasted__group4|pasted__pasted__group3|pasted__pasted__pasted__pCube2|transform20|pasted__pasted__pasted__pCubeShape2.wm" "polyUnite2.im[11]"
		;
connectAttr "|group5|pasted__group4|pasted__pasted__group3|pasted__pasted__pasted__group1|pasted__pasted__pasted__pasted__pCube2|transform19|pasted__pasted__pasted__pasted__pCubeShape2.wm" "polyUnite2.im[12]"
		;
connectAttr "|group5|pasted__group4|pasted__pasted__group3|pasted__pasted__pasted__group2|pasted__pasted__pasted__pasted__pCube2|transform18|pasted__pasted__pasted__pasted__pCubeShape2.wm" "polyUnite2.im[13]"
		;
connectAttr "|group5|pasted__group4|pasted__pasted__group3|pasted__pasted__pasted__group2|pasted__pasted__pasted__pasted__group1|pasted__pasted__pasted__pasted__pasted__pCube2|transform17|pasted__pasted__pasted__pasted__pasted__pCubeShape2.wm" "polyUnite2.im[14]"
		;
connectAttr "group7Shape.wm" "polyUnite2.im[15]";
connectAttr "pasted__polyCube5.out" "groupParts17.ig";
connectAttr "groupId32.id" "groupParts17.gi";
connectAttr "pasted__pasted__polyCube8.out" "groupParts18.ig";
connectAttr "groupId34.id" "groupParts18.gi";
connectAttr "pasted__pasted__polyCube9.out" "groupParts19.ig";
connectAttr "groupId36.id" "groupParts19.gi";
connectAttr "pasted__pasted__pasted__polyCube6.out" "groupParts20.ig";
connectAttr "groupId38.id" "groupParts20.gi";
connectAttr "pasted__pasted__polyCube10.out" "groupParts21.ig";
connectAttr "groupId40.id" "groupParts21.gi";
connectAttr "pasted__pasted__pasted__polyCube7.out" "groupParts22.ig";
connectAttr "groupId42.id" "groupParts22.gi";
connectAttr "pasted__pasted__pasted__polyCube8.out" "groupParts23.ig";
connectAttr "groupId44.id" "groupParts23.gi";
connectAttr "pasted__pasted__pasted__pasted__polyCube3.out" "groupParts24.ig";
connectAttr "groupId46.id" "groupParts24.gi";
connectAttr "pasted__pasted__pasted__polyCube9.out" "groupParts25.ig";
connectAttr "groupId48.id" "groupParts25.gi";
connectAttr "pasted__pasted__pasted__polyCube10.out" "groupParts26.ig";
connectAttr "groupId50.id" "groupParts26.gi";
connectAttr "pasted__pasted__pasted__pasted__polyCube4.out" "groupParts27.ig";
connectAttr "groupId52.id" "groupParts27.gi";
connectAttr "pasted__pasted__pasted__polyCube11.out" "groupParts28.ig";
connectAttr "groupId54.id" "groupParts28.gi";
connectAttr "pasted__pasted__pasted__pasted__polyCube5.out" "groupParts29.ig";
connectAttr "groupId56.id" "groupParts29.gi";
connectAttr "pasted__pasted__pasted__pasted__polyCube6.out" "groupParts30.ig";
connectAttr "groupId58.id" "groupParts30.gi";
connectAttr "pasted__pasted__pasted__pasted__pasted__polyCube2.out" "groupParts31.ig"
		;
connectAttr "groupId60.id" "groupParts31.gi";
connectAttr "polyUnite2.out" "groupParts32.ig";
connectAttr "groupId62.id" "groupParts32.gi";
connectAttr "pCubeShape2.o" "polyUnite3.ip[0]";
connectAttr "|group1|pasted__pCube2|transform46|pasted__pCubeShape2.o" "polyUnite3.ip[1]"
		;
connectAttr "|group2|pasted__pCube2|transform45|pasted__pCubeShape2.o" "polyUnite3.ip[2]"
		;
connectAttr "|group2|pasted__group1|pasted__pasted__pCube2|transform44|pasted__pasted__pCubeShape2.o" "polyUnite3.ip[3]"
		;
connectAttr "|group3|pasted__pCube2|transform43|pasted__pCubeShape2.o" "polyUnite3.ip[4]"
		;
connectAttr "|group3|pasted__group1|pasted__pasted__pCube2|transform42|pasted__pasted__pCubeShape2.o" "polyUnite3.ip[5]"
		;
connectAttr "|group3|pasted__group2|pasted__pasted__pCube2|transform41|pasted__pasted__pCubeShape2.o" "polyUnite3.ip[6]"
		;
connectAttr "|group3|pasted__group2|pasted__pasted__group1|pasted__pasted__pasted__pCube2|transform40|pasted__pasted__pasted__pCubeShape2.o" "polyUnite3.ip[7]"
		;
connectAttr "|group4|pasted__group1|pasted__pasted__pCube2|transform39|pasted__pasted__pCubeShape2.o" "polyUnite3.ip[8]"
		;
connectAttr "|group4|pasted__group2|pasted__pasted__pCube2|transform38|pasted__pasted__pCubeShape2.o" "polyUnite3.ip[9]"
		;
connectAttr "|group4|pasted__group2|pasted__pasted__group1|pasted__pasted__pasted__pCube2|transform37|pasted__pasted__pasted__pCubeShape2.o" "polyUnite3.ip[10]"
		;
connectAttr "|group4|pasted__group3|pasted__pasted__pCube2|transform36|pasted__pasted__pCubeShape2.o" "polyUnite3.ip[11]"
		;
connectAttr "|group4|pasted__group3|pasted__pasted__group1|pasted__pasted__pasted__pCube2|transform35|pasted__pasted__pasted__pCubeShape2.o" "polyUnite3.ip[12]"
		;
connectAttr "|group4|pasted__group3|pasted__pasted__group2|pasted__pasted__pasted__pCube2|transform34|pasted__pasted__pasted__pCubeShape2.o" "polyUnite3.ip[13]"
		;
connectAttr "|group4|pasted__group3|pasted__pasted__group2|pasted__pasted__pasted__group1|pasted__pasted__pasted__pasted__pCube2|transform33|pasted__pasted__pasted__pasted__pCubeShape2.o" "polyUnite3.ip[14]"
		;
connectAttr "group5_pasted__pCube2Shape.o" "polyUnite3.ip[15]";
connectAttr "pCubeShape2.wm" "polyUnite3.im[0]";
connectAttr "|group1|pasted__pCube2|transform46|pasted__pCubeShape2.wm" "polyUnite3.im[1]"
		;
connectAttr "|group2|pasted__pCube2|transform45|pasted__pCubeShape2.wm" "polyUnite3.im[2]"
		;
connectAttr "|group2|pasted__group1|pasted__pasted__pCube2|transform44|pasted__pasted__pCubeShape2.wm" "polyUnite3.im[3]"
		;
connectAttr "|group3|pasted__pCube2|transform43|pasted__pCubeShape2.wm" "polyUnite3.im[4]"
		;
connectAttr "|group3|pasted__group1|pasted__pasted__pCube2|transform42|pasted__pasted__pCubeShape2.wm" "polyUnite3.im[5]"
		;
connectAttr "|group3|pasted__group2|pasted__pasted__pCube2|transform41|pasted__pasted__pCubeShape2.wm" "polyUnite3.im[6]"
		;
connectAttr "|group3|pasted__group2|pasted__pasted__group1|pasted__pasted__pasted__pCube2|transform40|pasted__pasted__pasted__pCubeShape2.wm" "polyUnite3.im[7]"
		;
connectAttr "|group4|pasted__group1|pasted__pasted__pCube2|transform39|pasted__pasted__pCubeShape2.wm" "polyUnite3.im[8]"
		;
connectAttr "|group4|pasted__group2|pasted__pasted__pCube2|transform38|pasted__pasted__pCubeShape2.wm" "polyUnite3.im[9]"
		;
connectAttr "|group4|pasted__group2|pasted__pasted__group1|pasted__pasted__pasted__pCube2|transform37|pasted__pasted__pasted__pCubeShape2.wm" "polyUnite3.im[10]"
		;
connectAttr "|group4|pasted__group3|pasted__pasted__pCube2|transform36|pasted__pasted__pCubeShape2.wm" "polyUnite3.im[11]"
		;
connectAttr "|group4|pasted__group3|pasted__pasted__group1|pasted__pasted__pasted__pCube2|transform35|pasted__pasted__pasted__pCubeShape2.wm" "polyUnite3.im[12]"
		;
connectAttr "|group4|pasted__group3|pasted__pasted__group2|pasted__pasted__pasted__pCube2|transform34|pasted__pasted__pasted__pCubeShape2.wm" "polyUnite3.im[13]"
		;
connectAttr "|group4|pasted__group3|pasted__pasted__group2|pasted__pasted__pasted__group1|pasted__pasted__pasted__pasted__pCube2|transform33|pasted__pasted__pasted__pasted__pCubeShape2.wm" "polyUnite3.im[14]"
		;
connectAttr "group5_pasted__pCube2Shape.wm" "polyUnite3.im[15]";
connectAttr "polyCube2.out" "groupParts33.ig";
connectAttr "groupId63.id" "groupParts33.gi";
connectAttr "pasted__polyCube2.out" "groupParts34.ig";
connectAttr "groupId65.id" "groupParts34.gi";
connectAttr "pasted__polyCube3.out" "groupParts35.ig";
connectAttr "groupId67.id" "groupParts35.gi";
connectAttr "pasted__pasted__polyCube2.out" "groupParts36.ig";
connectAttr "groupId69.id" "groupParts36.gi";
connectAttr "pasted__polyCube4.out" "groupParts37.ig";
connectAttr "groupId71.id" "groupParts37.gi";
connectAttr "pasted__pasted__polyCube3.out" "groupParts38.ig";
connectAttr "groupId73.id" "groupParts38.gi";
connectAttr "pasted__pasted__polyCube4.out" "groupParts39.ig";
connectAttr "groupId75.id" "groupParts39.gi";
connectAttr "pasted__pasted__pasted__polyCube2.out" "groupParts40.ig";
connectAttr "groupId77.id" "groupParts40.gi";
connectAttr "pasted__pasted__polyCube5.out" "groupParts41.ig";
connectAttr "groupId79.id" "groupParts41.gi";
connectAttr "pasted__pasted__polyCube6.out" "groupParts42.ig";
connectAttr "groupId81.id" "groupParts42.gi";
connectAttr "pasted__pasted__pasted__polyCube3.out" "groupParts43.ig";
connectAttr "groupId83.id" "groupParts43.gi";
connectAttr "pasted__pasted__polyCube7.out" "groupParts44.ig";
connectAttr "groupId85.id" "groupParts44.gi";
connectAttr "pasted__pasted__pasted__polyCube4.out" "groupParts45.ig";
connectAttr "groupId87.id" "groupParts45.gi";
connectAttr "pasted__pasted__pasted__polyCube5.out" "groupParts46.ig";
connectAttr "groupId89.id" "groupParts46.gi";
connectAttr "pasted__pasted__pasted__pasted__polyCube2.out" "groupParts47.ig";
connectAttr "groupId91.id" "groupParts47.gi";
connectAttr "polyUnite3.out" "groupParts48.ig";
connectAttr "groupId93.id" "groupParts48.gi";
connectAttr "pCubeShape1.o" "polyCBoolOp1.ip[0]";
connectAttr "pCube3Shape.o" "polyCBoolOp1.ip[1]";
connectAttr "pCubeShape1.wm" "polyCBoolOp1.im[0]";
connectAttr "pCube3Shape.wm" "polyCBoolOp1.im[1]";
connectAttr "polyCube1.out" "groupParts49.ig";
connectAttr "groupId94.id" "groupParts49.gi";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "|group6|pasted__group5|pasted__pasted__pCube2|transform15|pasted__pasted__pCubeShape2.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group6|pasted__group5|pasted__pasted__pCube2|transform15|pasted__pasted__pCubeShape2.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group6|pasted__group5|pasted__pasted__group1|pasted__pasted__pasted__pCube2|transform14|pasted__pasted__pasted__pCubeShape2.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group6|pasted__group5|pasted__pasted__group1|pasted__pasted__pasted__pCube2|transform14|pasted__pasted__pasted__pCubeShape2.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group6|pasted__group5|pasted__pasted__group2|pasted__pasted__pasted__pCube2|transform13|pasted__pasted__pasted__pCubeShape2.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group6|pasted__group5|pasted__pasted__group2|pasted__pasted__pasted__pCube2|transform13|pasted__pasted__pasted__pCubeShape2.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group6|pasted__group5|pasted__pasted__group2|pasted__pasted__pasted__group1|pasted__pasted__pasted__pasted__pCube2|transform12|pasted__pasted__pasted__pasted__pCubeShape2.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group6|pasted__group5|pasted__pasted__group2|pasted__pasted__pasted__group1|pasted__pasted__pasted__pasted__pCube2|transform12|pasted__pasted__pasted__pasted__pCubeShape2.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group6|pasted__group5|pasted__pasted__group3|pasted__pasted__pasted__pCube2|transform11|pasted__pasted__pasted__pCubeShape2.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group6|pasted__group5|pasted__pasted__group3|pasted__pasted__pasted__pCube2|transform11|pasted__pasted__pasted__pCubeShape2.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group6|pasted__group5|pasted__pasted__group3|pasted__pasted__pasted__group1|pasted__pasted__pasted__pasted__pCube2|transform10|pasted__pasted__pasted__pasted__pCubeShape2.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group6|pasted__group5|pasted__pasted__group3|pasted__pasted__pasted__group1|pasted__pasted__pasted__pasted__pCube2|transform10|pasted__pasted__pasted__pasted__pCubeShape2.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group6|pasted__group5|pasted__pasted__group3|pasted__pasted__pasted__group2|pasted__pasted__pasted__pasted__pCube2|transform9|pasted__pasted__pasted__pasted__pCubeShape2.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group6|pasted__group5|pasted__pasted__group3|pasted__pasted__pasted__group2|pasted__pasted__pasted__pasted__pCube2|transform9|pasted__pasted__pasted__pasted__pCubeShape2.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group6|pasted__group5|pasted__pasted__group3|pasted__pasted__pasted__group2|pasted__pasted__pasted__pasted__group1|pasted__pasted__pasted__pasted__pasted__pCube2|transform8|pasted__pasted__pasted__pasted__pasted__pCubeShape2.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group6|pasted__group5|pasted__pasted__group3|pasted__pasted__pasted__group2|pasted__pasted__pasted__pasted__group1|pasted__pasted__pasted__pasted__pasted__pCube2|transform8|pasted__pasted__pasted__pasted__pasted__pCubeShape2.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group6|pasted__group5|pasted__pasted__group4|pasted__pasted__pasted__group1|pasted__pasted__pasted__pasted__pCube2|transform7|pasted__pasted__pasted__pasted__pCubeShape2.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group6|pasted__group5|pasted__pasted__group4|pasted__pasted__pasted__group1|pasted__pasted__pasted__pasted__pCube2|transform7|pasted__pasted__pasted__pasted__pCubeShape2.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group6|pasted__group5|pasted__pasted__group4|pasted__pasted__pasted__group2|pasted__pasted__pasted__pasted__pCube2|transform6|pasted__pasted__pasted__pasted__pCubeShape2.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group6|pasted__group5|pasted__pasted__group4|pasted__pasted__pasted__group2|pasted__pasted__pasted__pasted__pCube2|transform6|pasted__pasted__pasted__pasted__pCubeShape2.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group6|pasted__group5|pasted__pasted__group4|pasted__pasted__pasted__group2|pasted__pasted__pasted__pasted__group1|pasted__pasted__pasted__pasted__pasted__pCube2|transform5|pasted__pasted__pasted__pasted__pasted__pCubeShape2.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group6|pasted__group5|pasted__pasted__group4|pasted__pasted__pasted__group2|pasted__pasted__pasted__pasted__group1|pasted__pasted__pasted__pasted__pasted__pCube2|transform5|pasted__pasted__pasted__pasted__pasted__pCubeShape2.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group6|pasted__group5|pasted__pasted__group4|pasted__pasted__pasted__group3|pasted__pasted__pasted__pasted__pCube2|transform4|pasted__pasted__pasted__pasted__pCubeShape2.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group6|pasted__group5|pasted__pasted__group4|pasted__pasted__pasted__group3|pasted__pasted__pasted__pasted__pCube2|transform4|pasted__pasted__pasted__pasted__pCubeShape2.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group6|pasted__group5|pasted__pasted__group4|pasted__pasted__pasted__group3|pasted__pasted__pasted__pasted__group1|pasted__pasted__pasted__pasted__pasted__pCube2|transform3|pasted__pasted__pasted__pasted__pasted__pCubeShape2.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group6|pasted__group5|pasted__pasted__group4|pasted__pasted__pasted__group3|pasted__pasted__pasted__pasted__group1|pasted__pasted__pasted__pasted__pasted__pCube2|transform3|pasted__pasted__pasted__pasted__pasted__pCubeShape2.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group6|pasted__group5|pasted__pasted__group4|pasted__pasted__pasted__group3|pasted__pasted__pasted__pasted__group2|pasted__pasted__pasted__pasted__pasted__pCube2|transform2|pasted__pasted__pasted__pasted__pasted__pCubeShape2.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group6|pasted__group5|pasted__pasted__group4|pasted__pasted__pasted__group3|pasted__pasted__pasted__pasted__group2|pasted__pasted__pasted__pasted__pasted__pCube2|transform2|pasted__pasted__pasted__pasted__pasted__pCubeShape2.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "pasted__pasted__pasted__pasted__pasted__pasted__pCubeShape2.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "pasted__pasted__pasted__pasted__pasted__pasted__pCubeShape2.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "group7Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "|group5|pasted__pCube2|transform31|pasted__pCubeShape2.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group5|pasted__pCube2|transform31|pasted__pCubeShape2.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group5|pasted__group1|pasted__pasted__pCube2|transform30|pasted__pasted__pCubeShape2.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group5|pasted__group1|pasted__pasted__pCube2|transform30|pasted__pasted__pCubeShape2.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group5|pasted__group2|pasted__pasted__pCube2|transform29|pasted__pasted__pCubeShape2.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group5|pasted__group2|pasted__pasted__pCube2|transform29|pasted__pasted__pCubeShape2.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group5|pasted__group2|pasted__pasted__group1|pasted__pasted__pasted__pCube2|transform28|pasted__pasted__pasted__pCubeShape2.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group5|pasted__group2|pasted__pasted__group1|pasted__pasted__pasted__pCube2|transform28|pasted__pasted__pasted__pCubeShape2.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group5|pasted__group3|pasted__pasted__pCube2|transform27|pasted__pasted__pCubeShape2.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group5|pasted__group3|pasted__pasted__pCube2|transform27|pasted__pasted__pCubeShape2.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group5|pasted__group3|pasted__pasted__group1|pasted__pasted__pasted__pCube2|transform26|pasted__pasted__pasted__pCubeShape2.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group5|pasted__group3|pasted__pasted__group1|pasted__pasted__pasted__pCube2|transform26|pasted__pasted__pasted__pCubeShape2.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group5|pasted__group3|pasted__pasted__group2|pasted__pasted__pasted__pCube2|transform25|pasted__pasted__pasted__pCubeShape2.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group5|pasted__group3|pasted__pasted__group2|pasted__pasted__pasted__pCube2|transform25|pasted__pasted__pasted__pCubeShape2.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group5|pasted__group3|pasted__pasted__group2|pasted__pasted__pasted__group1|pasted__pasted__pasted__pasted__pCube2|transform24|pasted__pasted__pasted__pasted__pCubeShape2.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group5|pasted__group3|pasted__pasted__group2|pasted__pasted__pasted__group1|pasted__pasted__pasted__pasted__pCube2|transform24|pasted__pasted__pasted__pasted__pCubeShape2.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group5|pasted__group4|pasted__pasted__group1|pasted__pasted__pasted__pCube2|transform23|pasted__pasted__pasted__pCubeShape2.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group5|pasted__group4|pasted__pasted__group1|pasted__pasted__pasted__pCube2|transform23|pasted__pasted__pasted__pCubeShape2.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group5|pasted__group4|pasted__pasted__group2|pasted__pasted__pasted__pCube2|transform22|pasted__pasted__pasted__pCubeShape2.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group5|pasted__group4|pasted__pasted__group2|pasted__pasted__pasted__pCube2|transform22|pasted__pasted__pasted__pCubeShape2.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group5|pasted__group4|pasted__pasted__group2|pasted__pasted__pasted__group1|pasted__pasted__pasted__pasted__pCube2|transform21|pasted__pasted__pasted__pasted__pCubeShape2.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group5|pasted__group4|pasted__pasted__group2|pasted__pasted__pasted__group1|pasted__pasted__pasted__pasted__pCube2|transform21|pasted__pasted__pasted__pasted__pCubeShape2.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group5|pasted__group4|pasted__pasted__group3|pasted__pasted__pasted__pCube2|transform20|pasted__pasted__pasted__pCubeShape2.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group5|pasted__group4|pasted__pasted__group3|pasted__pasted__pasted__pCube2|transform20|pasted__pasted__pasted__pCubeShape2.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group5|pasted__group4|pasted__pasted__group3|pasted__pasted__pasted__group1|pasted__pasted__pasted__pasted__pCube2|transform19|pasted__pasted__pasted__pasted__pCubeShape2.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group5|pasted__group4|pasted__pasted__group3|pasted__pasted__pasted__group1|pasted__pasted__pasted__pasted__pCube2|transform19|pasted__pasted__pasted__pasted__pCubeShape2.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group5|pasted__group4|pasted__pasted__group3|pasted__pasted__pasted__group2|pasted__pasted__pasted__pasted__pCube2|transform18|pasted__pasted__pasted__pasted__pCubeShape2.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group5|pasted__group4|pasted__pasted__group3|pasted__pasted__pasted__group2|pasted__pasted__pasted__pasted__pCube2|transform18|pasted__pasted__pasted__pasted__pCubeShape2.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group5|pasted__group4|pasted__pasted__group3|pasted__pasted__pasted__group2|pasted__pasted__pasted__pasted__group1|pasted__pasted__pasted__pasted__pasted__pCube2|transform17|pasted__pasted__pasted__pasted__pasted__pCubeShape2.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group5|pasted__group4|pasted__pasted__group3|pasted__pasted__pasted__group2|pasted__pasted__pasted__pasted__group1|pasted__pasted__pasted__pasted__pasted__pCube2|transform17|pasted__pasted__pasted__pasted__pasted__pCubeShape2.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "group5_pasted__pCube2Shape.iog.og[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "pCubeShape2.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape2.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "|group1|pasted__pCube2|transform46|pasted__pCubeShape2.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group1|pasted__pCube2|transform46|pasted__pCubeShape2.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group2|pasted__pCube2|transform45|pasted__pCubeShape2.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group2|pasted__pCube2|transform45|pasted__pCubeShape2.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group2|pasted__group1|pasted__pasted__pCube2|transform44|pasted__pasted__pCubeShape2.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group2|pasted__group1|pasted__pasted__pCube2|transform44|pasted__pasted__pCubeShape2.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group3|pasted__pCube2|transform43|pasted__pCubeShape2.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group3|pasted__pCube2|transform43|pasted__pCubeShape2.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group3|pasted__group1|pasted__pasted__pCube2|transform42|pasted__pasted__pCubeShape2.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group3|pasted__group1|pasted__pasted__pCube2|transform42|pasted__pasted__pCubeShape2.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group3|pasted__group2|pasted__pasted__pCube2|transform41|pasted__pasted__pCubeShape2.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group3|pasted__group2|pasted__pasted__pCube2|transform41|pasted__pasted__pCubeShape2.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group3|pasted__group2|pasted__pasted__group1|pasted__pasted__pasted__pCube2|transform40|pasted__pasted__pasted__pCubeShape2.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group3|pasted__group2|pasted__pasted__group1|pasted__pasted__pasted__pCube2|transform40|pasted__pasted__pasted__pCubeShape2.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group4|pasted__group1|pasted__pasted__pCube2|transform39|pasted__pasted__pCubeShape2.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group4|pasted__group1|pasted__pasted__pCube2|transform39|pasted__pasted__pCubeShape2.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group4|pasted__group2|pasted__pasted__pCube2|transform38|pasted__pasted__pCubeShape2.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group4|pasted__group2|pasted__pasted__pCube2|transform38|pasted__pasted__pCubeShape2.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group4|pasted__group2|pasted__pasted__group1|pasted__pasted__pasted__pCube2|transform37|pasted__pasted__pasted__pCubeShape2.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group4|pasted__group2|pasted__pasted__group1|pasted__pasted__pasted__pCube2|transform37|pasted__pasted__pasted__pCubeShape2.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group4|pasted__group3|pasted__pasted__pCube2|transform36|pasted__pasted__pCubeShape2.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group4|pasted__group3|pasted__pasted__pCube2|transform36|pasted__pasted__pCubeShape2.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group4|pasted__group3|pasted__pasted__group1|pasted__pasted__pasted__pCube2|transform35|pasted__pasted__pasted__pCubeShape2.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group4|pasted__group3|pasted__pasted__group1|pasted__pasted__pasted__pCube2|transform35|pasted__pasted__pasted__pCubeShape2.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group4|pasted__group3|pasted__pasted__group2|pasted__pasted__pasted__pCube2|transform34|pasted__pasted__pasted__pCubeShape2.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group4|pasted__group3|pasted__pasted__group2|pasted__pasted__pasted__pCube2|transform34|pasted__pasted__pasted__pCubeShape2.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group4|pasted__group3|pasted__pasted__group2|pasted__pasted__pasted__group1|pasted__pasted__pasted__pasted__pCube2|transform33|pasted__pasted__pasted__pasted__pCubeShape2.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group4|pasted__group3|pasted__pasted__group2|pasted__pasted__pasted__group1|pasted__pasted__pasted__pasted__pCube2|transform33|pasted__pasted__pasted__pasted__pCubeShape2.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "pCube3Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape1.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCube4Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCube4Shape.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId1.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId3.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId4.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId5.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId6.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId7.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId8.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId9.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId10.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId11.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId12.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId13.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId14.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId15.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId16.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId17.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId18.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId19.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId20.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId21.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId22.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId23.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId24.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId25.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId26.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId27.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId28.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId29.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId30.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId31.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId32.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId33.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId34.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId35.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId36.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId37.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId38.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId39.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId40.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId41.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId42.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId43.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId44.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId45.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId46.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId47.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId48.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId49.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId50.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId51.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId52.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId53.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId54.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId55.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId56.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId57.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId58.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId59.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId60.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId61.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId62.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId63.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId64.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId65.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId66.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId67.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId68.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId69.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId70.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId71.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId72.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId73.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId74.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId75.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId76.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId77.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId78.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId79.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId80.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId81.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId82.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId83.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId84.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId85.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId86.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId87.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId88.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId89.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId90.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId91.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId92.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId93.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId94.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId95.msg" ":initialShadingGroup.gn" -na;
// End of fence.ma
