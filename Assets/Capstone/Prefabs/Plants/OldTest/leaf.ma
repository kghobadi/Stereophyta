//Maya ASCII 2016 scene
//Name: leaf.ma
//Last modified: Thu, Oct 05, 2017 02:46:18 PM
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
	rename -uid "C33E2DF7-3344-252D-71EC-DE8B0E772A96";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.86982781698845035 1.742540147313872 -0.094493539929254244 ;
	setAttr ".r" -type "double3" -63.338352728182116 456.19999999998453 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "43BB4AB0-0E48-16E3-8E2A-6EA3EA0F230B";
	setAttr -k off ".v" no;
	setAttr ".pze" yes;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 1.9498655403121123;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "1A34FE05-6B4C-2A9D-6F35-A2ADBF633623";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "153C2F69-8E44-7AB4-1927-A29AD366A665";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 2.8996227749977508;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "388FAE33-924D-1C1D-5A23-9B90A2366448";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "7285E314-7F45-714F-E72B-4AB4E6E3FEC3";
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
	rename -uid "C39900EE-0747-1EBE-FECB-4DBEAD590D8E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "0C8EB602-B040-86CC-6B2C-E484D2F39A80";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "group";
	rename -uid "2DA698E3-F647-6E1D-7118-DF86FE6890D6";
	setAttr ".t" -type "double3" -0.30000000000000004 0 0 ;
	setAttr ".s" -type "double3" -1 1 1 ;
	setAttr ".rp" -type "double3" 0.15000000596046448 -5.5511151231257827e-17 0.25 ;
	setAttr ".sp" -type "double3" 0.15000000596046448 -5.5511151231257827e-17 0.25 ;
createNode transform -n "group1";
	rename -uid "2C6A9931-1345-2313-2541-4AB37044E094";
	setAttr ".t" -type "double3" -0.30000000000000004 0 -0.85067564121074779 ;
	setAttr ".r" -type "double3" 0 179.99999999999991 0 ;
	setAttr ".rp" -type "double3" 0.15000000596046448 -5.5511151231257827e-17 0.25 ;
	setAttr ".sp" -type "double3" 0.15000000596046448 -5.5511151231257827e-17 0.25 ;
createNode transform -n "group2";
	rename -uid "39A4DC3F-B74D-2CAF-FDDB-8CBF95421E3C";
	setAttr ".t" -type "double3" -0.3000000059604645 0 -0.5 ;
	setAttr ".r" -type "double3" 0 179.99999999999991 0 ;
	setAttr ".rp" -type "double3" 0.15000000596046448 -5.5511151231257827e-17 0.25 ;
	setAttr ".sp" -type "double3" 0.15000000596046448 -5.5511151231257827e-17 0.25 ;
createNode transform -n "group3";
	rename -uid "275F124C-8A43-6D96-D423-B7B0E066E9AD";
	setAttr ".t" -type "double3" 0.30000000000000004 0 0 ;
	setAttr ".s" -type "double3" -1 1 1 ;
	setAttr ".rp" -type "double3" -0.15000000000000002 -5.5511151231257827e-17 -0.25 ;
	setAttr ".sp" -type "double3" -0.15000000000000002 -5.5511151231257827e-17 -0.25 ;
createNode transform -n "pasted__group2" -p "group3";
	rename -uid "B633F445-8443-1CCE-2DCE-40B3AB2C916E";
	setAttr ".t" -type "double3" -0.3000000059604645 0 -0.5 ;
	setAttr ".r" -type "double3" 0 179.99999999999991 0 ;
	setAttr ".rp" -type "double3" 0.15000000596046448 -5.5511151231257827e-17 0.25 ;
	setAttr ".sp" -type "double3" 0.15000000596046448 -5.5511151231257827e-17 0.25 ;
createNode transform -n "group4";
	rename -uid "19CB361D-4D48-82A4-A0CA-F6A482A75E77";
createNode transform -n "pasted__pPlane1" -p "group4";
	rename -uid "040F805E-9C44-9076-C9DA-51B903CC633F";
	setAttr ".t" -type "double3" 1.1920928910669204e-08 0 0 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
createNode transform -n "transform4" -p "pasted__pPlane1";
	rename -uid "9C4FC1C2-FA41-5D49-E26B-85B82CAAFCB1";
	setAttr ".v" no;
createNode mesh -n "pasted__pPlaneShape1" -p "transform4";
	rename -uid "A080E471-E843-DD6B-DE2E-92B572D60A73";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.65000000596046448 0.25 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".pt[5]" -type "float3"  0 0 1.1920929e-07;
createNode transform -n "pPlane1" -p "group4";
	rename -uid "24157868-BE42-A7A7-D62C-C2A0B5DFD98C";
createNode transform -n "transform3" -p "pPlane1";
	rename -uid "AF6F04F1-0449-A3CD-0399-BBABD0E51864";
	setAttr ".v" no;
createNode mesh -n "pPlaneShape1" -p "transform3";
	rename -uid "55C1138B-9249-D1ED-BF57-57B2FF52D0F3";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.65000000596046448 0.25 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".pt";
	setAttr ".pt[5]" -type "float3" 0 0 1.1920929e-07 ;
createNode transform -n "pasted__pasted__pPlane1" -p "group4";
	rename -uid "AFC89FC0-7948-A07D-E462-54B2E042ADE4";
	setAttr ".t" -type "double3" -5.960464091651525e-09 0 2.2204460492503131e-16 ;
	setAttr ".r" -type "double3" 0 8.335002165365928e-14 0 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
createNode transform -n "transform2" -p "pasted__pasted__pPlane1";
	rename -uid "ED052416-B94B-58C8-5C13-A499B84AE02C";
	setAttr ".v" no;
createNode mesh -n "pasted__pasted__pPlaneShape1" -p "transform2";
	rename -uid "814020BA-C040-F8F1-3036-6884EE131E80";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.65000000596046448 0.25 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".pt[5]" -type "float3"  0 0 1.1920929e-07;
createNode transform -n "pasted__pPlane2" -p "group4";
	rename -uid "43540787-4F49-B66B-BB56-45B33F55DEAC";
	setAttr ".t" -type "double3" 5.960464091651525e-09 0 2.2204460492503131e-16 ;
	setAttr ".r" -type "double3" 0 179.99999999999991 0 ;
createNode transform -n "transform1" -p "pasted__pPlane2";
	rename -uid "66768DAE-C742-73F8-A621-02B288179173";
	setAttr ".v" no;
createNode mesh -n "pasted__pPlaneShape2" -p "transform1";
	rename -uid "3D9C23B5-284C-4DEB-DD46-3E8A8A842BE4";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 2 ".pt";
	setAttr ".pt[5]" -type "float3" 0 0 1.1920929e-07 ;
createNode transform -n "group5";
	rename -uid "DADF67BA-5B4D-011A-0367-D2811578E293";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "group5Shape" -p "group5";
	rename -uid "3BDBBFFB-4C47-1951-B28D-70AB8C9289EB";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.80000001192092896 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 27 ".pt";
	setAttr ".pt[1]" -type "float3" -5.9604646e-09 0 0 ;
	setAttr ".pt[5]" -type "float3" -5.9604646e-09 0 0 ;
	setAttr ".pt[8]" -type "float3" -5.9604646e-09 0 0 ;
	setAttr ".pt[11]" -type "float3" -8.9406971e-09 0 1.110223e-16 ;
	setAttr ".pt[12]" -type "float3" -7.4505806e-09 0 4.4408908e-17 ;
	setAttr ".pt[13]" -type "float3" -1.4901161e-08 0 -4.4408905e-17 ;
	setAttr ".pt[14]" -type "float3" 0 0 -8.881785e-17 ;
	setAttr ".pt[19]" -type "float3" 5.9604646e-09 0 0 ;
	setAttr ".pt[22]" -type "float3" 5.9604646e-09 0 0 ;
	setAttr ".pt[24]" -type "float3" 5.9604646e-09 0 0 ;
	setAttr ".pt[26]" -type "float3" 2.9802323e-09 0 1.6653345e-16 ;
	setAttr ".pt[27]" -type "float3" 0 0 8.3266727e-17 ;
	setAttr ".pt[28]" -type "float3" 0 0 4.1633363e-17 ;
	setAttr ".pt[33]" -type "float3" 5.9604646e-09 0 0 ;
	setAttr ".pt[34]" -type "float3" 5.9604641e-09 0 0 ;
	setAttr ".pt[36]" -type "float3" 5.9604641e-09 0 0 ;
	setAttr ".pt[38]" -type "float3" 5.9604641e-09 0 0 ;
	setAttr ".pt[41]" -type "float3" 5.9604641e-09 0 0 ;
	setAttr ".pt[44]" -type "float3" 7.4505806e-09 0 -1.8041124e-16 ;
	setAttr ".pt[45]" -type "float3" 8.9406962e-09 0 -1.110223e-16 ;
	setAttr ".pt[51]" -type "float3" -5.9604646e-09 0 0 ;
	setAttr ".pt[52]" -type "float3" -5.9604641e-09 0 0 ;
	setAttr ".pt[54]" -type "float3" 1.4901165e-09 0 8.8817837e-17 ;
	setAttr ".pt[56]" -type "float3" -5.9604641e-09 0 0 ;
	setAttr ".pt[59]" -type "float3" -5.9604641e-09 0 0 ;
	setAttr ".pt[64]" -type "float3" -2.9802318e-09 0 -1.110223e-16 ;
	setAttr ".vcs" 2;
createNode mesh -n "group5ShapeOrig" -p "group5";
	rename -uid "10ABA251-9D49-210C-30E1-8BB0AEFFDDFC";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode joint -n "joint1";
	rename -uid "3983131D-C841-2AE8-1345-898BD75B9E76";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" -0.0016543787904569733 0 0.5012767735084267 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 89.999999999999986 0 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-16 0 -1.0000000000000002 0 0 1 0 0
		 1.0000000000000002 0 2.2204460492503131e-16 0 -0.0016543787904569733 0 0.5012767735084267 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint2" -p "joint1";
	rename -uid "E9C79276-2B47-AEB9-7C21-149BF5BFA404";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 0.50293115229890561 0 -1.1167314901670122e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-16 0 -1.0000000000000002 0 0 1 0 0
		 1.0000000000000002 0 2.2204460492503131e-16 0 -0.0016543787904569733 0 -0.0016543787904790275 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint3" -p "joint2";
	rename -uid "52947D07-8F46-EE5A-24F3-7790A85B3823";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0.78748430425749727 0 -1.7485664122351908e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 -89.999999999999986 0 ;
	setAttr ".bps" -type "matrix" 1.0000000000000004 0 0 0 0 1 0 0 0 0 1.0000000000000004 0
		 -0.0016543787904569733 0 -0.78913868304797652 1;
	setAttr ".radi" 0.5;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "440492E5-5A41-1342-7B27-0D83E0F919B3";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "9542ACE8-BA45-303E-1C8A-FF9749388B33";
createNode displayLayer -n "defaultLayer";
	rename -uid "0974A29F-A646-1F23-56F5-FCBCEFFE63B7";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "692FD4E2-864F-0FD5-1C0E-789628300338";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "CF3511A6-8A42-4DAE-9CCF-43895F567A94";
	setAttr ".g" yes;
createNode polyPlane -n "polyPlane1";
	rename -uid "7AA4A399-9D47-F292-6669-1C843B9F3D1E";
	setAttr ".cuv" 2;
createNode polySplit -n "polySplit1";
	rename -uid "C8B2C4C4-BF4F-B0F1-A03D-8B9F6EBC5743";
	setAttr -s 6 ".e[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".d[0:5]"  -2147483637 -2147483635 -2147483612 -2147483589 -2147483566 -2147483544;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode deleteComponent -n "deleteComponent1";
	rename -uid "DC191EA0-F74E-A3C2-DB93-4D8C54CBE60A";
	setAttr ".dc" -type "componentList" 4 "f[6:9]" "f[17:19]" "f[28:29]" "f[101]";
createNode deleteComponent -n "deleteComponent2";
	rename -uid "8FEBF632-0B44-76CA-CC96-C288E1495EF5";
	setAttr ".dc" -type "componentList" 1 "f[91]";
createNode deleteComponent -n "deleteComponent3";
	rename -uid "63B75337-C940-D2BF-33E0-A390AE8C86B5";
	setAttr ".dc" -type "componentList" 1 "f[91]";
createNode deleteComponent -n "deleteComponent4";
	rename -uid "771F0024-7343-6B51-BC0C-B989DFB75E1C";
	setAttr ".dc" -type "componentList" 2 "f[30]" "f[91:92]";
createNode deleteComponent -n "deleteComponent5";
	rename -uid "6841BBE8-E641-25F5-BA17-6BA9526F0984";
	setAttr ".dc" -type "componentList" 1 "f[39]";
createNode deleteComponent -n "deleteComponent6";
	rename -uid "FE12279A-E54F-58AF-331B-0C910F5B9317";
	setAttr ".dc" -type "componentList" 1 "f[29]";
createNode deleteComponent -n "deleteComponent7";
	rename -uid "3000F2E5-5B4D-C6AB-607A-8CA24A23B13E";
	setAttr ".dc" -type "componentList" 6 "f[37]" "f[46:47]" "f[57]" "f[67]" "f[77]" "f[87]";
createNode deleteComponent -n "deleteComponent8";
	rename -uid "DB603B4E-0543-6E15-0C32-9CA92D189D84";
	setAttr ".dc" -type "componentList" 4 "f[53]" "f[62]" "f[71]" "f[80]";
createNode deleteComponent -n "deleteComponent9";
	rename -uid "B88B0394-1940-90F0-7FE5-1B92F1D7CF71";
	setAttr ".dc" -type "componentList" 1 "f[37:76]";
createNode deleteComponent -n "deleteComponent10";
	rename -uid "F85CF6AC-1D43-365E-0B4F-BF9A192F98B8";
	setAttr ".dc" -type "componentList" 5 "f[0:4]" "f[6:10]" "f[13:17]" "f[21:25]" "f[29:33]";
createNode polySplit -n "polySplit2";
	rename -uid "B36ECD15-3143-8534-BFD0-FB8BD7752A91";
	setAttr -s 3 ".e[0:2]"  0 0.5 1;
	setAttr -s 3 ".d[0:2]"  -2147483640 -2147483635 -2147483633;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode deleteComponent -n "deleteComponent11";
	rename -uid "2930A116-AE43-86AF-129C-B4B85BF534DA";
	setAttr ".dc" -type "componentList" 1 "f[12]";
createNode deleteComponent -n "deleteComponent12";
	rename -uid "99C3EF36-874D-6232-2176-C89C6BD27502";
	setAttr ".dc" -type "componentList" 1 "f[12]";
createNode polySplit -n "polySplit3";
	rename -uid "C6EF301B-2D48-A9C0-1234-FC8B04166810";
	setAttr -s 3 ".e[0:2]"  1 0.75 1;
	setAttr -s 3 ".d[0:2]"  -2147483635 -2147483629 -2147483627;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit4";
	rename -uid "22319113-574A-9421-27A5-0C9475896708";
	setAttr -s 4 ".e[0:3]"  0 0.74999899 0.333334 1;
	setAttr -s 4 ".d[0:3]"  -2147483645 -2147483642 -2147483640 -2147483621;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode deleteComponent -n "deleteComponent13";
	rename -uid "DE0AB6BB-F845-7C21-3AD9-5DA798CDCF80";
	setAttr ".dc" -type "componentList" 1 "f[14:16]";
createNode deleteComponent -n "deleteComponent14";
	rename -uid "DC203903-1442-A651-6151-ABB121B4D494";
	setAttr ".dc" -type "componentList" 1 "f[12:13]";
createNode polySplit -n "polySplit5";
	rename -uid "0BC1C56F-E54D-EFFC-0C91-81A87218C02F";
	setAttr -s 3 ".e[0:2]"  0 0.60000002 1;
	setAttr -s 3 ".d[0:2]"  -2147483622 -2147483636 -2147483624;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode deleteComponent -n "deleteComponent15";
	rename -uid "82CD05A0-5045-21D6-04D0-18845DFAA9C4";
	setAttr ".dc" -type "componentList" 1 "f[12]";
createNode deleteComponent -n "deleteComponent16";
	rename -uid "78B8DB25-8B4F-518B-4181-B2A67A0AECFF";
	setAttr ".dc" -type "componentList" 1 "f[12]";
createNode deleteComponent -n "pasted__deleteComponent16";
	rename -uid "B6F1436D-4341-DDDF-10B1-EEA6AD13438E";
	setAttr ".dc" -type "componentList" 1 "f[12]";
createNode deleteComponent -n "pasted__deleteComponent15";
	rename -uid "4C3504B3-AC4B-3018-5ECF-52A86526B977";
	setAttr ".dc" -type "componentList" 1 "f[12]";
createNode polySplit -n "pasted__polySplit5";
	rename -uid "42DB89AE-8D43-A91F-E8B0-618041AC3775";
	setAttr -s 3 ".e[0:2]"  0 0.60000002 1;
	setAttr -s 3 ".d[0:2]"  -2147483622 -2147483636 -2147483624;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode deleteComponent -n "pasted__deleteComponent14";
	rename -uid "694D6E9E-3941-A4C6-16BE-CEBAFD13D0BE";
	setAttr ".dc" -type "componentList" 1 "f[12:13]";
createNode deleteComponent -n "pasted__deleteComponent13";
	rename -uid "4BF2AE50-BA4B-EA1C-8666-D28BDA315D75";
	setAttr ".dc" -type "componentList" 1 "f[14:16]";
createNode polySplit -n "pasted__polySplit4";
	rename -uid "FFEDC666-774A-D4F6-AA50-73AB327AD700";
	setAttr -s 4 ".e[0:3]"  0 0.74999899 0.333334 1;
	setAttr -s 4 ".d[0:3]"  -2147483645 -2147483642 -2147483640 -2147483621;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "pasted__polySplit3";
	rename -uid "219CEC4E-6C46-771B-C3FE-CA8756A20A07";
	setAttr -s 3 ".e[0:2]"  1 0.75 1;
	setAttr -s 3 ".d[0:2]"  -2147483635 -2147483629 -2147483627;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode deleteComponent -n "pasted__deleteComponent12";
	rename -uid "1D051BD0-B249-27FB-E8F4-3097CBDF2FCB";
	setAttr ".dc" -type "componentList" 1 "f[12]";
createNode deleteComponent -n "pasted__deleteComponent11";
	rename -uid "1DC129AB-3A4A-8702-E71F-7096A38F1285";
	setAttr ".dc" -type "componentList" 1 "f[12]";
createNode polySplit -n "pasted__polySplit2";
	rename -uid "C116EF41-AC4C-BAE3-E216-31A8495765B0";
	setAttr -s 3 ".e[0:2]"  0 0.5 1;
	setAttr -s 3 ".d[0:2]"  -2147483640 -2147483635 -2147483633;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode deleteComponent -n "pasted__deleteComponent10";
	rename -uid "B3547F66-B448-53D1-646B-1E9674D525F0";
	setAttr ".dc" -type "componentList" 5 "f[0:4]" "f[6:10]" "f[13:17]" "f[21:25]" "f[29:33]";
createNode deleteComponent -n "pasted__deleteComponent9";
	rename -uid "65F531C6-874A-8EDE-1AF6-1C840904E99C";
	setAttr ".dc" -type "componentList" 1 "f[37:76]";
createNode deleteComponent -n "pasted__deleteComponent8";
	rename -uid "856EF704-764F-759E-C6B6-D6879180538F";
	setAttr ".dc" -type "componentList" 4 "f[53]" "f[62]" "f[71]" "f[80]";
createNode deleteComponent -n "pasted__deleteComponent7";
	rename -uid "27937BD2-E448-B24B-76D5-04BEA43A6E79";
	setAttr ".dc" -type "componentList" 6 "f[37]" "f[46:47]" "f[57]" "f[67]" "f[77]" "f[87]";
createNode deleteComponent -n "pasted__deleteComponent6";
	rename -uid "70CD08D9-594B-B46F-5F7D-5989FD93FCEC";
	setAttr ".dc" -type "componentList" 1 "f[29]";
createNode deleteComponent -n "pasted__deleteComponent5";
	rename -uid "2BF78F09-1B43-3670-ED52-E5855B695802";
	setAttr ".dc" -type "componentList" 1 "f[39]";
createNode deleteComponent -n "pasted__deleteComponent4";
	rename -uid "F7983D48-B246-0A7E-EA8E-4884D7FD63A5";
	setAttr ".dc" -type "componentList" 2 "f[30]" "f[91:92]";
createNode deleteComponent -n "pasted__deleteComponent3";
	rename -uid "1C13319D-104B-CD2A-A4FA-BB805BAC46B4";
	setAttr ".dc" -type "componentList" 1 "f[91]";
createNode deleteComponent -n "pasted__deleteComponent2";
	rename -uid "D8DB0A80-CC42-6D16-2623-5686177112E4";
	setAttr ".dc" -type "componentList" 1 "f[91]";
createNode deleteComponent -n "pasted__deleteComponent1";
	rename -uid "A28BAB1F-3046-919B-6919-7280D83F15D7";
	setAttr ".dc" -type "componentList" 4 "f[6:9]" "f[17:19]" "f[28:29]" "f[101]";
createNode polySplit -n "pasted__polySplit1";
	rename -uid "6047C607-C34C-96C5-BE5C-DA92B3820E34";
	setAttr -s 6 ".e[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".d[0:5]"  -2147483637 -2147483635 -2147483612 -2147483589 -2147483566 -2147483544;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyPlane -n "pasted__polyPlane1";
	rename -uid "8658F75A-9449-491A-1644-0896C935DB0B";
	setAttr ".cuv" 2;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "678D5E41-C743-E2F3-1E7E-2F9B4425E633";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 793\n                -height 515\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n"
		+ "            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n"
		+ "            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 793\n            -height 515\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n"
		+ "                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n"
		+ "                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n"
		+ "                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 393\n                -height 235\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n"
		+ "            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n"
		+ "            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n"
		+ "            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 393\n            -height 235\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n"
		+ "                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n"
		+ "                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n"
		+ "                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 394\n                -height 235\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n"
		+ "            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n"
		+ "            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 394\n            -height 235\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n"
		+ "                -width 393\n                -height 235\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 393\n            -height 235\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n"
		+ "                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n"
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
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Top View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Top View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera top` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 793\\n    -height 515\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Top View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera top` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 793\\n    -height 515\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "ECD1D03C-D548-A137-FD9B-2994B51EB4ED";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode deleteComponent -n "pasted__deleteComponent32";
	rename -uid "A9DD6FF5-3A45-FB80-2B14-1C923EE253D1";
	setAttr ".dc" -type "componentList" 1 "f[12]";
createNode deleteComponent -n "pasted__deleteComponent31";
	rename -uid "376D99E1-E04A-F357-CDD7-86B1FCB2DD5D";
	setAttr ".dc" -type "componentList" 1 "f[12]";
createNode polySplit -n "pasted__polySplit10";
	rename -uid "C3A046E2-3843-1E3C-E52D-BC97D2DBF94E";
	setAttr -s 3 ".e[0:2]"  0 0.60000002 1;
	setAttr -s 3 ".d[0:2]"  -2147483622 -2147483636 -2147483624;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode deleteComponent -n "pasted__deleteComponent30";
	rename -uid "8CF6EE39-C944-E7C7-142B-A2AD85F1D546";
	setAttr ".dc" -type "componentList" 1 "f[12:13]";
createNode deleteComponent -n "pasted__deleteComponent29";
	rename -uid "366FE513-5449-9D01-0807-AEBDFE509546";
	setAttr ".dc" -type "componentList" 1 "f[14:16]";
createNode polySplit -n "pasted__polySplit9";
	rename -uid "7D6B7A54-054F-442E-0F6A-B0948A21FE90";
	setAttr -s 4 ".e[0:3]"  0 0.74999899 0.333334 1;
	setAttr -s 4 ".d[0:3]"  -2147483645 -2147483642 -2147483640 -2147483621;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "pasted__polySplit8";
	rename -uid "DD8266F5-0349-F3AC-7230-BFA2E8594836";
	setAttr -s 3 ".e[0:2]"  1 0.75 1;
	setAttr -s 3 ".d[0:2]"  -2147483635 -2147483629 -2147483627;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode deleteComponent -n "pasted__deleteComponent28";
	rename -uid "DA47493F-BB4F-75B7-EDEF-C087CE8F5B5E";
	setAttr ".dc" -type "componentList" 1 "f[12]";
createNode deleteComponent -n "pasted__deleteComponent27";
	rename -uid "E29142BB-D74E-3D8F-3660-4C9F824BF715";
	setAttr ".dc" -type "componentList" 1 "f[12]";
createNode polySplit -n "pasted__polySplit7";
	rename -uid "5FA2A130-AA41-459E-C179-29A091629970";
	setAttr -s 3 ".e[0:2]"  0 0.5 1;
	setAttr -s 3 ".d[0:2]"  -2147483640 -2147483635 -2147483633;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode deleteComponent -n "pasted__deleteComponent26";
	rename -uid "35E9E929-7947-FBBA-472B-03B3B97EC6CC";
	setAttr ".dc" -type "componentList" 5 "f[0:4]" "f[6:10]" "f[13:17]" "f[21:25]" "f[29:33]";
createNode deleteComponent -n "pasted__deleteComponent25";
	rename -uid "264C0258-224B-1829-3B2D-D3A09D21821D";
	setAttr ".dc" -type "componentList" 1 "f[37:76]";
createNode deleteComponent -n "pasted__deleteComponent24";
	rename -uid "639EFB5C-C34D-C157-0124-41B45F518D25";
	setAttr ".dc" -type "componentList" 4 "f[53]" "f[62]" "f[71]" "f[80]";
createNode deleteComponent -n "pasted__deleteComponent23";
	rename -uid "D47DEDC5-A24A-B602-3D20-96BD0D234B6E";
	setAttr ".dc" -type "componentList" 6 "f[37]" "f[46:47]" "f[57]" "f[67]" "f[77]" "f[87]";
createNode deleteComponent -n "pasted__deleteComponent22";
	rename -uid "46C92627-E244-A9ED-D78C-51A7C1DF9F3F";
	setAttr ".dc" -type "componentList" 1 "f[29]";
createNode deleteComponent -n "pasted__deleteComponent21";
	rename -uid "07F5AE24-3B40-4FF4-071F-11944FB2760B";
	setAttr ".dc" -type "componentList" 1 "f[39]";
createNode deleteComponent -n "pasted__deleteComponent20";
	rename -uid "11ADE72E-D949-ADB6-D1D7-4D8543215579";
	setAttr ".dc" -type "componentList" 2 "f[30]" "f[91:92]";
createNode deleteComponent -n "pasted__deleteComponent19";
	rename -uid "D205103E-CC43-07BC-163A-D6AFDC526C90";
	setAttr ".dc" -type "componentList" 1 "f[91]";
createNode deleteComponent -n "pasted__deleteComponent18";
	rename -uid "7084ED51-0E4B-B953-0E37-6C852C75D93A";
	setAttr ".dc" -type "componentList" 1 "f[91]";
createNode deleteComponent -n "pasted__deleteComponent17";
	rename -uid "92F1A748-F64C-2DFF-D2A9-78A764798A6F";
	setAttr ".dc" -type "componentList" 4 "f[6:9]" "f[17:19]" "f[28:29]" "f[101]";
createNode polySplit -n "pasted__polySplit6";
	rename -uid "4D7616C5-5E4A-2295-AD48-EEBDBFF8F038";
	setAttr -s 6 ".e[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".d[0:5]"  -2147483637 -2147483635 -2147483612 -2147483589 -2147483566 -2147483544;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyPlane -n "pasted__polyPlane2";
	rename -uid "2A778433-F84F-635F-338C-C691D040A599";
	setAttr ".cuv" 2;
createNode deleteComponent -n "pasted__pasted__deleteComponent32";
	rename -uid "78B95E8A-3346-1F03-B33B-ECBD1B7092AF";
	setAttr ".dc" -type "componentList" 1 "f[12]";
createNode deleteComponent -n "pasted__pasted__deleteComponent31";
	rename -uid "974B8244-2445-39D2-79F8-038D26B28FD9";
	setAttr ".dc" -type "componentList" 1 "f[12]";
createNode polySplit -n "pasted__pasted__polySplit10";
	rename -uid "621C0BB8-CE4E-24F8-7E2F-9D96B66E827B";
	setAttr -s 3 ".e[0:2]"  0 0.60000002 1;
	setAttr -s 3 ".d[0:2]"  -2147483622 -2147483636 -2147483624;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode deleteComponent -n "pasted__pasted__deleteComponent30";
	rename -uid "15DCADC0-8744-E3F6-5311-0397C299CBD2";
	setAttr ".dc" -type "componentList" 1 "f[12:13]";
createNode deleteComponent -n "pasted__pasted__deleteComponent29";
	rename -uid "6D8B3325-5A4B-3BE9-F0A1-D692E49D1D4D";
	setAttr ".dc" -type "componentList" 1 "f[14:16]";
createNode polySplit -n "pasted__pasted__polySplit9";
	rename -uid "B15A046B-8A4E-DA02-9A33-F4A931EF952B";
	setAttr -s 4 ".e[0:3]"  0 0.74999899 0.333334 1;
	setAttr -s 4 ".d[0:3]"  -2147483645 -2147483642 -2147483640 -2147483621;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "pasted__pasted__polySplit8";
	rename -uid "20B5CE5D-CE48-D786-96B7-609B6983FC92";
	setAttr -s 3 ".e[0:2]"  1 0.75 1;
	setAttr -s 3 ".d[0:2]"  -2147483635 -2147483629 -2147483627;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode deleteComponent -n "pasted__pasted__deleteComponent28";
	rename -uid "16194520-3843-0684-4459-1C8028DCF91C";
	setAttr ".dc" -type "componentList" 1 "f[12]";
createNode deleteComponent -n "pasted__pasted__deleteComponent27";
	rename -uid "56534C43-414D-DF91-8EEE-2395F12612BB";
	setAttr ".dc" -type "componentList" 1 "f[12]";
createNode polySplit -n "pasted__pasted__polySplit7";
	rename -uid "28B03C00-B746-ADDF-C778-70897EDF9AB4";
	setAttr -s 3 ".e[0:2]"  0 0.5 1;
	setAttr -s 3 ".d[0:2]"  -2147483640 -2147483635 -2147483633;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode deleteComponent -n "pasted__pasted__deleteComponent26";
	rename -uid "C2EE21C4-904A-6120-12B2-D9A73885A939";
	setAttr ".dc" -type "componentList" 5 "f[0:4]" "f[6:10]" "f[13:17]" "f[21:25]" "f[29:33]";
createNode deleteComponent -n "pasted__pasted__deleteComponent25";
	rename -uid "F0313ED5-1743-3888-F5B9-21AAFE66C6E7";
	setAttr ".dc" -type "componentList" 1 "f[37:76]";
createNode deleteComponent -n "pasted__pasted__deleteComponent24";
	rename -uid "018C6736-4747-88DB-B7BA-E18338096BCB";
	setAttr ".dc" -type "componentList" 4 "f[53]" "f[62]" "f[71]" "f[80]";
createNode deleteComponent -n "pasted__pasted__deleteComponent23";
	rename -uid "136DF3FA-1041-6159-DD7B-77B0843ACEE5";
	setAttr ".dc" -type "componentList" 6 "f[37]" "f[46:47]" "f[57]" "f[67]" "f[77]" "f[87]";
createNode deleteComponent -n "pasted__pasted__deleteComponent22";
	rename -uid "B9D7F274-104C-1064-3A49-39984B4D5197";
	setAttr ".dc" -type "componentList" 1 "f[29]";
createNode deleteComponent -n "pasted__pasted__deleteComponent21";
	rename -uid "84C31FA3-AC45-E7FB-7F3A-6BA54304FEFB";
	setAttr ".dc" -type "componentList" 1 "f[39]";
createNode deleteComponent -n "pasted__pasted__deleteComponent20";
	rename -uid "01354428-6C49-DF18-50B5-D1B795392FA0";
	setAttr ".dc" -type "componentList" 2 "f[30]" "f[91:92]";
createNode deleteComponent -n "pasted__pasted__deleteComponent19";
	rename -uid "340C4285-2A42-DB01-27C8-F88519261374";
	setAttr ".dc" -type "componentList" 1 "f[91]";
createNode deleteComponent -n "pasted__pasted__deleteComponent18";
	rename -uid "9BAC9E14-BA44-72D9-FF4A-BEB476C9EC8E";
	setAttr ".dc" -type "componentList" 1 "f[91]";
createNode deleteComponent -n "pasted__pasted__deleteComponent17";
	rename -uid "AE0B72D9-7F4F-4BE3-60BF-66A58787EFBC";
	setAttr ".dc" -type "componentList" 4 "f[6:9]" "f[17:19]" "f[28:29]" "f[101]";
createNode polySplit -n "pasted__pasted__polySplit6";
	rename -uid "B6CCB788-0640-D014-B519-45AFDE8F8C0A";
	setAttr -s 6 ".e[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".d[0:5]"  -2147483637 -2147483635 -2147483612 -2147483589 -2147483566 -2147483544;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyPlane -n "pasted__pasted__polyPlane2";
	rename -uid "80498B91-8C43-5395-3EDC-C6A01BDA0DA3";
	setAttr ".cuv" 2;
createNode polyUnite -n "polyUnite1";
	rename -uid "13CD17DA-A145-B3C0-0045-909CF38F5EC1";
	setAttr -s 4 ".ip";
	setAttr -s 4 ".im";
createNode groupId -n "groupId1";
	rename -uid "5ADC63FF-794F-37BD-7AFA-588058124B96";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	rename -uid "5AFDA871-0440-B732-7C67-BCA5ABB101E5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:11]";
createNode groupId -n "groupId2";
	rename -uid "4AFB793B-8642-74A1-9919-6DAD56B51A76";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3";
	rename -uid "50F5C57B-EB4E-4B09-6475-A98C0E831ECE";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "FC41E017-5741-2BDF-4295-BF9B1986C5C2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:11]";
createNode groupId -n "groupId4";
	rename -uid "A74BDFC9-6648-F4FB-0195-97869AF0D546";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5";
	rename -uid "3EB6C7D2-B043-E3D3-0B04-A6B814CB7524";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	rename -uid "F7FAD7B3-3947-551A-E671-DD8DF3BB0963";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:11]";
createNode groupId -n "groupId6";
	rename -uid "B7034FFD-5045-1B84-21A1-80A4D0DCC625";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7";
	rename -uid "19E5A17F-F947-817A-A955-98895AF3695D";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	rename -uid "CFC6CB2E-B949-E4D5-592C-DDB5D66B0338";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:11]";
createNode groupId -n "groupId8";
	rename -uid "4E8FA0E0-7343-770E-F2AD-769CF2EE7EAE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId9";
	rename -uid "555D0D9F-3842-52C1-9DF7-75BD6E6E1C82";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts5";
	rename -uid "D271A412-DB40-B379-1D01-46AB4C1F544F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:47]";
createNode polyMergeVert -n "polyMergeVert1";
	rename -uid "08A10080-2242-03DC-47FD-21943B0467AC";
	setAttr ".ics" -type "componentList" 2 "vtx[0]" "vtx[19]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweak -n "polyTweak1";
	rename -uid "FFC8FD0D-5C43-A56D-1B5C-DEA5EB8B3096";
	setAttr ".uopa" yes;
	setAttr -s 33 ".tk";
	setAttr ".tk[0]" -type "float3" -5.9604646e-09 0 0 ;
	setAttr ".tk[19]" -type "float3" 5.9604646e-09 0 0 ;
	setAttr ".tk[38]" -type "float3" 0 0 -0.30000001 ;
	setAttr ".tk[39]" -type "float3" 0 0 -0.19999999 ;
	setAttr ".tk[40]" -type "float3" 0 0 -0.19999999 ;
	setAttr ".tk[41]" -type "float3" 0 0 -0.14999999 ;
	setAttr ".tk[42]" -type "float3" 0 0 -0.14999999 ;
	setAttr ".tk[43]" -type "float3" 0 0 -0.099999994 ;
	setAttr ".tk[44]" -type "float3" 0 0 -0.099999994 ;
	setAttr ".tk[45]" -type "float3" 0 0 -0.099999994 ;
	setAttr ".tk[46]" -type "float3" 0 0 -0.050000004 ;
	setAttr ".tk[47]" -type "float3" 0 0 -0.050000004 ;
	setAttr ".tk[48]" -type "float3" 0 0 -0.050000004 ;
	setAttr ".tk[53]" -type "float3" 0 0 -0.050000004 ;
	setAttr ".tk[54]" -type "float3" 0 0 -0.14999999 ;
	setAttr ".tk[55]" -type "float3" 0 0 -0.11666667 ;
	setAttr ".tk[56]" -type "float3" 0 0 -0.099999994 ;
	setAttr ".tk[57]" -type "float3" 0 0 -0.30000001 ;
	setAttr ".tk[58]" -type "float3" 0 0 -0.19999999 ;
	setAttr ".tk[59]" -type "float3" 0 0 -0.19999999 ;
	setAttr ".tk[60]" -type "float3" 0 0 -0.14999999 ;
	setAttr ".tk[61]" -type "float3" 0 0 -0.14999999 ;
	setAttr ".tk[62]" -type "float3" 0 0 -0.099999994 ;
	setAttr ".tk[63]" -type "float3" 0 0 -0.099999994 ;
	setAttr ".tk[64]" -type "float3" 0 0 -0.099999994 ;
	setAttr ".tk[65]" -type "float3" 0 0 -0.050000004 ;
	setAttr ".tk[66]" -type "float3" 0 0 -0.050000004 ;
	setAttr ".tk[67]" -type "float3" 0 0 -0.050000004 ;
	setAttr ".tk[72]" -type "float3" 0 0 -0.050000004 ;
	setAttr ".tk[73]" -type "float3" 0 0 -0.14999999 ;
	setAttr ".tk[74]" -type "float3" 0 0 -0.11666667 ;
	setAttr ".tk[75]" -type "float3" 0 0 -0.099999994 ;
createNode polyMergeVert -n "polyMergeVert2";
	rename -uid "AA36FBF7-8A43-67D3-A4D5-96AC2A353DCF";
	setAttr ".ics" -type "componentList" 2 "vtx[1]" "vtx[19]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyMergeVert -n "polyMergeVert3";
	rename -uid "C2DEA7B0-3641-F8B2-0184-2F87D71ED91F";
	setAttr ".ics" -type "componentList" 2 "vtx[5]" "vtx[22]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyMergeVert -n "polyMergeVert4";
	rename -uid "3EE05048-F448-0857-7D86-E88182C371DE";
	setAttr ".ics" -type "componentList" 2 "vtx[8]" "vtx[24]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyMergeVert -n "polyMergeVert5";
	rename -uid "E727C322-134D-CF97-678A-54A5027097D5";
	setAttr ".ics" -type "componentList" 4 "vtx[11]" "vtx[26]" "vtx[45]" "vtx[64]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyMergeVert -n "polyMergeVert6";
	rename -uid "4457A303-144D-E418-16F2-5E948A51027B";
	setAttr ".ics" -type "componentList" 2 "vtx[41]" "vtx[59]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyMergeVert -n "polyMergeVert7";
	rename -uid "18C7B54C-CB4E-A295-F849-7C90845E513B";
	setAttr ".ics" -type "componentList" 2 "vtx[38]" "vtx[56]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyMergeVert -n "polyMergeVert8";
	rename -uid "D58E49D6-C34B-8635-DBC7-6C99DF19059A";
	setAttr ".ics" -type "componentList" 2 "vtx[36]" "vtx[54]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyMergeVert -n "polyMergeVert9";
	rename -uid "D5B798B7-1545-A6E9-E79C-B7910285F026";
	setAttr ".ics" -type "componentList" 2 "vtx[34]" "vtx[52]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyMergeVert -n "polyMergeVert10";
	rename -uid "E15E7E4A-AD43-CAA0-02B4-26A50F844B10";
	setAttr ".ics" -type "componentList" 2 "vtx[33]" "vtx[51]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyMergeVert -n "polyMergeVert11";
	rename -uid "92626955-2444-11C8-940C-1EBEB4BF8C13";
	setAttr ".ics" -type "componentList" 2 "vtx[26]" "vtx[44]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyMergeVert -n "polyMergeVert12";
	rename -uid "004DDC16-E546-6118-AD91-53B9316EB240";
	setAttr ".ics" -type "componentList" 2 "vtx[27]" "vtx[44]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyMergeVert -n "polyMergeVert13";
	rename -uid "270DDF3A-2F4E-D3CF-E90B-0DA794AA2845";
	setAttr ".ics" -type "componentList" 2 "vtx[28]" "vtx[44]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyMergeVert -n "polyMergeVert14";
	rename -uid "8482F9D7-9749-AF65-33EE-94A466E3EC7D";
	setAttr ".ics" -type "componentList" 2 "vtx[12]" "vtx[54]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyMergeVert -n "polyMergeVert15";
	rename -uid "2316C314-8448-CD08-D2D1-DB93FB073436";
	setAttr ".ics" -type "componentList" 2 "vtx[13]" "vtx[54]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyMergeVert -n "polyMergeVert16";
	rename -uid "AC75385E-BC4D-AB4D-11C5-0186497F7780";
	setAttr ".ics" -type "componentList" 2 "vtx[14]" "vtx[54]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode skinCluster -n "skinCluster1";
	rename -uid "5CA23301-8142-4660-5706-7FB4158E3212";
	setAttr ".skm" 1;
	setAttr -s 58 ".wl";
	setAttr -s 2 ".wl[0].w[0:1]"  0.99999999988171817 1.1828187413608105e-10;
	setAttr -s 2 ".wl[1].w[0:1]"  0.99999999971217979 2.8782021139459115e-10;
	setAttr -s 3 ".wl[2].w[0:2]"  0.99676517576687029 0.0031888237581012709 
		4.6000475028454364e-05;
	setAttr -s 2 ".wl[3].w[0:1]"  0.99999999909533543 9.046646118851801e-10;
	setAttr -s 3 ".wl[4].w[0:2]"  0.99078931792821801 0.0091458760273453489 
		6.480604443659453e-05;
	setAttr -s 2 ".wl[5].w[0:1]"  0.9999999954704395 4.5295604512363608e-09;
	setAttr -s 3 ".wl[6].w[0:2]"  0.96430582503386719 0.035601777062529351 
		9.2397903603524866e-05;
	setAttr -s 3 ".wl[7].w[0:2]"  0.80431674399725794 0.19448141552721468 
		0.0012018404755273747;
	setAttr -s 2 ".wl[8].w[0:1]"  0.99999992988486808 7.0115131934808088e-08;
	setAttr -s 3 ".wl[9].w[0:2]"  0.81045129808439598 0.18943031402645208 
		0.00011838788915200458;
	setAttr -s 3 ".wl[10].w[0:2]"  0.6136965673608461 0.38492437176296207 
		0.0013790608761918763;
	setAttr -s 2 ".wl[11].w[0:1]"  0.79999942355315301 0.20000057644684702;
	setAttr -s 3 ".wl[12].w[0:2]"  0.50008297135896518 0.49980006186733272 
		0.00011696677370211058;
	setAttr -s 3 ".wl[13].w[0:2]"  0.49915352679986552 0.49908408138997107 
		0.0017623918101635427;
	setAttr -s 3 ".wl[14].w[0:2]"  0.49613559016020037 0.4961050802532273 
		0.0077593295865724067;
	setAttr -s 3 ".wl[15].w[0:2]"  0.56204355906419978 0.4337656139952466 
		0.0041908269405536852;
	setAttr -s 3 ".wl[16].w[0:2]"  0.94141012041896299 0.058015276572904097 
		0.00057460300813293641;
	setAttr -s 3 ".wl[17].w[0:2]"  0.88808505342772459 0.11088293720040428 
		0.0010320093718711408;
	setAttr -s 3 ".wl[18].w[0:2]"  0.75859992924582709 0.23945803975481025 
		0.0019420309993625946;
	setAttr -s 3 ".wl[19].w[0:2]"  0.99633700949237658 0.003610551243098727 
		5.2439264524592698e-05;
	setAttr -s 2 ".wl[20].w[0:1]"  0.99999999909536141 9.0463853823348353e-10;
	setAttr -s 3 ".wl[21].w[0:2]"  0.98963390275030039 0.010292287665470259 
		7.380958422934971e-05;
	setAttr -s 3 ".wl[22].w[0:2]"  0.96046058983890148 0.039434497032610503 
		0.00010491312848792989;
	setAttr -s 3 ".wl[23].w[0:2]"  0.79898220974996248 0.19974555243744682 
		0.0012722378125907159;
	setAttr -s 3 ".wl[24].w[0:2]"  0.79989337692390583 0.1999734614844795 
		0.00013316159161473162;
	setAttr -s 3 ".wl[25].w[0:2]"  0.61042745648204921 0.3881116451547687 
		0.0014608983631820814;
	setAttr -s 3 ".wl[26].w[0:2]"  0.50006577685110176 0.49980098651135879 
		0.00013323663753949736;
	setAttr -s 3 ".wl[27].w[0:2]"  0.49909596644607573 0.49902878878848522 
		0.0018752447654389818;
	setAttr -s 3 ".wl[28].w[0:2]"  0.49598401763417221 0.49595418245231582 
		0.008061799913511988;
	setAttr -s 3 ".wl[29].w[0:2]"  0.56052719434167708 0.43510560344193139 
		0.0043672022163915598;
	setAttr -s 3 ".wl[30].w[0:2]"  0.93819999576180058 0.061183545344397086 
		0.00061645889380240076;
	setAttr -s 3 ".wl[31].w[0:2]"  0.88376601558277079 0.1151392440773496 
		0.0010947403398795063;
	setAttr -s 3 ".wl[32].w[0:2]"  0.75394545551622094 0.2440161285586786 
		0.0020384159251004047;
	setAttr -s 3 ".wl[33].w[0:2]"  1.7933129909410056e-08 0.49999999103343507 
		0.49999999103343507;
	setAttr -s 2 ".wl[34].w[1:2]"  0.99999999414735563 5.8526443809310379e-09;
	setAttr -s 3 ".wl[35].w[0:2]"  0.0007488081558080042 0.95145867210036117 
		0.047792519743830843;
	setAttr -s 3 ".wl[36].w[0:2]"  1.8538573105716711e-10 0.99999999924836236 
		5.6625202306734524e-10;
	setAttr -s 3 ".wl[37].w[0:2]"  0.002368859233541294 0.99089682284769387 
		0.0067343179187648837;
	setAttr -s 3 ".wl[38].w[0:2]"  9.4543971992684434e-10 0.99999999892370173 
		1.3085857849688385e-10;
	setAttr -s 3 ".wl[39].w[0:2]"  0.01068597626181076 0.98762109122509389 
		0.001692932513095359;
	setAttr -s 3 ".wl[40].w[0:2]"  0.087845469108472504 0.89330252140359578 
		0.018852009487931764;
	setAttr -s 2 ".wl[41].w[0:1]"  1.5464389906326356e-08 0.99999998453561012;
	setAttr -s 3 ".wl[42].w[0:2]"  0.092589747618328819 0.9068582199330999 
		0.00055203244857131328;
	setAttr -s 3 ".wl[43].w[0:2]"  0.29457899940917376 0.69968609414645233 
		0.0057349064443739202;
	setAttr -s 3 ".wl[44].w[0:2]"  0.37050814215791977 0.61419821244715078 
		0.015293645394929457;
	setAttr -s 3 ".wl[45].w[0:2]"  0.016979075877355455 0.94019654693359267 
		0.042824377189051861;
	setAttr -s 3 ".wl[46].w[0:2]"  0.043816541806403528 0.92010002172875216 
		0.036083436464844375;
	setAttr -s 3 ".wl[47].w[0:2]"  0.1203987708987245 0.85103772369149189 
		0.028563505409783575;
	setAttr -s 3 ".wl[48].w[0:2]"  0.00066150376443327083 0.95603563506563283 
		0.043302861169933836;
	setAttr -s 3 ".wl[49].w[0:2]"  0.0020904335361427704 0.99194107620231076 
		0.0059684902615464233;
	setAttr -s 3 ".wl[50].w[0:2]"  0.0095004459443215269 0.98900651834566744 
		0.0014930357100110105;
	setAttr -s 3 ".wl[51].w[0:2]"  0.08434304638259095 0.89775528801723203 
		0.017901665600177037;
	setAttr -s 3 ".wl[52].w[0:2]"  0.085227148163302263 0.91428375435807596 
		0.00048909747862180199;
	setAttr -s 3 ".wl[53].w[0:2]"  0.28981975257366083 0.70474178516606922 
		0.0054384622602698532;
	setAttr -s 3 ".wl[54].w[0:2]"  0.36820647787357186 0.61704055166714933 
		0.014752970459278843;
	setAttr -s 3 ".wl[55].w[0:2]"  0.015957315556995633 0.94355704895830894 
		0.040485635484695401;
	setAttr -s 3 ".wl[56].w[0:2]"  0.041770349301032732 0.92387676616534109 
		0.034352884533626192;
	setAttr -s 3 ".wl[57].w[0:2]"  0.1167825670851823 0.85581578529312818 
		0.027401647621689486;
	setAttr -s 3 ".pm";
	setAttr ".pm[0]" -type "matrix" 2.2204460492503121e-16 -0 0.99999999999999978 -0
		 -0 1 -0 0 -0.99999999999999978 -0 2.2204460492503121e-16 -0 0.50127677350842659 0 0.0016543787904568618 1;
	setAttr ".pm[1]" -type "matrix" 2.2204460492503121e-16 -0 0.99999999999999978 -0
		 -0 1 -0 0 -0.99999999999999978 -0 2.2204460492503121e-16 -0 -0.0016543787904790268 0 0.0016543787904569735 1;
	setAttr ".pm[2]" -type "matrix" 0.99999999999999956 -0 0 -0 -0 1 -0 0 0 -0 0.99999999999999956 -0
		 0.0016543787904569724 0 0.78913868304797619 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 3 ".ma";
	setAttr -s 3 ".dpf[0:2]"  4 4 4;
	setAttr -s 3 ".lw";
	setAttr -s 3 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 4;
	setAttr ".bm" 1;
	setAttr ".ucm" yes;
	setAttr -s 3 ".ifcl";
	setAttr -s 3 ".ifcl";
createNode tweak -n "tweak1";
	rename -uid "72B9CFAA-8D44-7247-3244-0D8C2BA918E1";
createNode objectSet -n "skinCluster1Set";
	rename -uid "B76B024F-3C46-0BDB-6CF3-AAAA9ADF9A1A";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster1GroupId";
	rename -uid "CA4C2376-F247-ACEB-8908-6095E42A4734";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster1GroupParts";
	rename -uid "C6D6BC7F-574F-5BE2-3681-1F9F42C6D719";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet1";
	rename -uid "3BAC1E88-1B4B-1D08-6C28-E799634A1395";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId11";
	rename -uid "C514C82E-6341-561E-93E3-4ABF467974D5";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts7";
	rename -uid "A185C87D-AB40-ABF7-24A2-FDA9092C863A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose1";
	rename -uid "8F809983-EE4F-483D-CADB-1AA5D60AB224";
	setAttr -s 3 ".wm";
	setAttr -s 3 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.0016543787904569733
		 0 0.5012767735084267 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0.70710678118654746 0 0.70710678118654768 1
		 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.50293115229890561 0
		 -1.1167314901670122e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.78748430425749727 0
		 -1.7485664122351908e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 -0.70710678118654746 0 0.70710678118654768 1
		 1 1 yes;
	setAttr -s 3 ".m";
	setAttr -s 3 ".p";
	setAttr ".bp" yes;
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
	setAttr -s 9 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 9 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "groupParts1.og" "pasted__pPlaneShape1.i";
connectAttr "groupId1.id" "pasted__pPlaneShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pasted__pPlaneShape1.iog.og[0].gco";
connectAttr "groupId2.id" "pasted__pPlaneShape1.ciog.cog[0].cgid";
connectAttr "groupId3.id" "pPlaneShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pPlaneShape1.iog.og[0].gco";
connectAttr "groupParts2.og" "pPlaneShape1.i";
connectAttr "groupId4.id" "pPlaneShape1.ciog.cog[0].cgid";
connectAttr "groupParts3.og" "pasted__pasted__pPlaneShape1.i";
connectAttr "groupId5.id" "pasted__pasted__pPlaneShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pasted__pasted__pPlaneShape1.iog.og[0].gco"
		;
connectAttr "groupId6.id" "pasted__pasted__pPlaneShape1.ciog.cog[0].cgid";
connectAttr "groupParts4.og" "pasted__pPlaneShape2.i";
connectAttr "groupId7.id" "pasted__pPlaneShape2.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pasted__pPlaneShape2.iog.og[0].gco";
connectAttr "groupId8.id" "pasted__pPlaneShape2.ciog.cog[0].cgid";
connectAttr "skinCluster1.og[0]" "group5Shape.i";
connectAttr "groupId9.id" "group5Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "group5Shape.iog.og[0].gco";
connectAttr "skinCluster1GroupId.id" "group5Shape.iog.og[1].gid";
connectAttr "skinCluster1Set.mwc" "group5Shape.iog.og[1].gco";
connectAttr "groupId11.id" "group5Shape.iog.og[2].gid";
connectAttr "tweakSet1.mwc" "group5Shape.iog.og[2].gco";
connectAttr "tweak1.vl[0].vt[0]" "group5Shape.twl";
connectAttr "polyMergeVert16.out" "group5ShapeOrig.i";
connectAttr "joint1.s" "joint2.is";
connectAttr "joint2.s" "joint3.is";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyPlane1.out" "polySplit1.ip";
connectAttr "polySplit1.out" "deleteComponent1.ig";
connectAttr "deleteComponent1.og" "deleteComponent2.ig";
connectAttr "deleteComponent2.og" "deleteComponent3.ig";
connectAttr "deleteComponent3.og" "deleteComponent4.ig";
connectAttr "deleteComponent4.og" "deleteComponent5.ig";
connectAttr "deleteComponent5.og" "deleteComponent6.ig";
connectAttr "deleteComponent6.og" "deleteComponent7.ig";
connectAttr "deleteComponent7.og" "deleteComponent8.ig";
connectAttr "deleteComponent8.og" "deleteComponent9.ig";
connectAttr "deleteComponent9.og" "deleteComponent10.ig";
connectAttr "deleteComponent10.og" "polySplit2.ip";
connectAttr "polySplit2.out" "deleteComponent11.ig";
connectAttr "deleteComponent11.og" "deleteComponent12.ig";
connectAttr "deleteComponent12.og" "polySplit3.ip";
connectAttr "polySplit3.out" "polySplit4.ip";
connectAttr "polySplit4.out" "deleteComponent13.ig";
connectAttr "deleteComponent13.og" "deleteComponent14.ig";
connectAttr "deleteComponent14.og" "polySplit5.ip";
connectAttr "polySplit5.out" "deleteComponent15.ig";
connectAttr "deleteComponent15.og" "deleteComponent16.ig";
connectAttr "pasted__deleteComponent15.og" "pasted__deleteComponent16.ig";
connectAttr "pasted__polySplit5.out" "pasted__deleteComponent15.ig";
connectAttr "pasted__deleteComponent14.og" "pasted__polySplit5.ip";
connectAttr "pasted__deleteComponent13.og" "pasted__deleteComponent14.ig";
connectAttr "pasted__polySplit4.out" "pasted__deleteComponent13.ig";
connectAttr "pasted__polySplit3.out" "pasted__polySplit4.ip";
connectAttr "pasted__deleteComponent12.og" "pasted__polySplit3.ip";
connectAttr "pasted__deleteComponent11.og" "pasted__deleteComponent12.ig";
connectAttr "pasted__polySplit2.out" "pasted__deleteComponent11.ig";
connectAttr "pasted__deleteComponent10.og" "pasted__polySplit2.ip";
connectAttr "pasted__deleteComponent9.og" "pasted__deleteComponent10.ig";
connectAttr "pasted__deleteComponent8.og" "pasted__deleteComponent9.ig";
connectAttr "pasted__deleteComponent7.og" "pasted__deleteComponent8.ig";
connectAttr "pasted__deleteComponent6.og" "pasted__deleteComponent7.ig";
connectAttr "pasted__deleteComponent5.og" "pasted__deleteComponent6.ig";
connectAttr "pasted__deleteComponent4.og" "pasted__deleteComponent5.ig";
connectAttr "pasted__deleteComponent3.og" "pasted__deleteComponent4.ig";
connectAttr "pasted__deleteComponent2.og" "pasted__deleteComponent3.ig";
connectAttr "pasted__deleteComponent1.og" "pasted__deleteComponent2.ig";
connectAttr "pasted__polySplit1.out" "pasted__deleteComponent1.ig";
connectAttr "pasted__polyPlane1.out" "pasted__polySplit1.ip";
connectAttr "pasted__deleteComponent31.og" "pasted__deleteComponent32.ig";
connectAttr "pasted__polySplit10.out" "pasted__deleteComponent31.ig";
connectAttr "pasted__deleteComponent30.og" "pasted__polySplit10.ip";
connectAttr "pasted__deleteComponent29.og" "pasted__deleteComponent30.ig";
connectAttr "pasted__polySplit9.out" "pasted__deleteComponent29.ig";
connectAttr "pasted__polySplit8.out" "pasted__polySplit9.ip";
connectAttr "pasted__deleteComponent28.og" "pasted__polySplit8.ip";
connectAttr "pasted__deleteComponent27.og" "pasted__deleteComponent28.ig";
connectAttr "pasted__polySplit7.out" "pasted__deleteComponent27.ig";
connectAttr "pasted__deleteComponent26.og" "pasted__polySplit7.ip";
connectAttr "pasted__deleteComponent25.og" "pasted__deleteComponent26.ig";
connectAttr "pasted__deleteComponent24.og" "pasted__deleteComponent25.ig";
connectAttr "pasted__deleteComponent23.og" "pasted__deleteComponent24.ig";
connectAttr "pasted__deleteComponent22.og" "pasted__deleteComponent23.ig";
connectAttr "pasted__deleteComponent21.og" "pasted__deleteComponent22.ig";
connectAttr "pasted__deleteComponent20.og" "pasted__deleteComponent21.ig";
connectAttr "pasted__deleteComponent19.og" "pasted__deleteComponent20.ig";
connectAttr "pasted__deleteComponent18.og" "pasted__deleteComponent19.ig";
connectAttr "pasted__deleteComponent17.og" "pasted__deleteComponent18.ig";
connectAttr "pasted__polySplit6.out" "pasted__deleteComponent17.ig";
connectAttr "pasted__polyPlane2.out" "pasted__polySplit6.ip";
connectAttr "pasted__pasted__deleteComponent31.og" "pasted__pasted__deleteComponent32.ig"
		;
connectAttr "pasted__pasted__polySplit10.out" "pasted__pasted__deleteComponent31.ig"
		;
connectAttr "pasted__pasted__deleteComponent30.og" "pasted__pasted__polySplit10.ip"
		;
connectAttr "pasted__pasted__deleteComponent29.og" "pasted__pasted__deleteComponent30.ig"
		;
connectAttr "pasted__pasted__polySplit9.out" "pasted__pasted__deleteComponent29.ig"
		;
connectAttr "pasted__pasted__polySplit8.out" "pasted__pasted__polySplit9.ip";
connectAttr "pasted__pasted__deleteComponent28.og" "pasted__pasted__polySplit8.ip"
		;
connectAttr "pasted__pasted__deleteComponent27.og" "pasted__pasted__deleteComponent28.ig"
		;
connectAttr "pasted__pasted__polySplit7.out" "pasted__pasted__deleteComponent27.ig"
		;
connectAttr "pasted__pasted__deleteComponent26.og" "pasted__pasted__polySplit7.ip"
		;
connectAttr "pasted__pasted__deleteComponent25.og" "pasted__pasted__deleteComponent26.ig"
		;
connectAttr "pasted__pasted__deleteComponent24.og" "pasted__pasted__deleteComponent25.ig"
		;
connectAttr "pasted__pasted__deleteComponent23.og" "pasted__pasted__deleteComponent24.ig"
		;
connectAttr "pasted__pasted__deleteComponent22.og" "pasted__pasted__deleteComponent23.ig"
		;
connectAttr "pasted__pasted__deleteComponent21.og" "pasted__pasted__deleteComponent22.ig"
		;
connectAttr "pasted__pasted__deleteComponent20.og" "pasted__pasted__deleteComponent21.ig"
		;
connectAttr "pasted__pasted__deleteComponent19.og" "pasted__pasted__deleteComponent20.ig"
		;
connectAttr "pasted__pasted__deleteComponent18.og" "pasted__pasted__deleteComponent19.ig"
		;
connectAttr "pasted__pasted__deleteComponent17.og" "pasted__pasted__deleteComponent18.ig"
		;
connectAttr "pasted__pasted__polySplit6.out" "pasted__pasted__deleteComponent17.ig"
		;
connectAttr "pasted__pasted__polyPlane2.out" "pasted__pasted__polySplit6.ip";
connectAttr "pasted__pPlaneShape1.o" "polyUnite1.ip[0]";
connectAttr "pPlaneShape1.o" "polyUnite1.ip[1]";
connectAttr "pasted__pasted__pPlaneShape1.o" "polyUnite1.ip[2]";
connectAttr "pasted__pPlaneShape2.o" "polyUnite1.ip[3]";
connectAttr "pasted__pPlaneShape1.wm" "polyUnite1.im[0]";
connectAttr "pPlaneShape1.wm" "polyUnite1.im[1]";
connectAttr "pasted__pasted__pPlaneShape1.wm" "polyUnite1.im[2]";
connectAttr "pasted__pPlaneShape2.wm" "polyUnite1.im[3]";
connectAttr "pasted__deleteComponent16.og" "groupParts1.ig";
connectAttr "groupId1.id" "groupParts1.gi";
connectAttr "deleteComponent16.og" "groupParts2.ig";
connectAttr "groupId3.id" "groupParts2.gi";
connectAttr "pasted__pasted__deleteComponent32.og" "groupParts3.ig";
connectAttr "groupId5.id" "groupParts3.gi";
connectAttr "pasted__deleteComponent32.og" "groupParts4.ig";
connectAttr "groupId7.id" "groupParts4.gi";
connectAttr "polyUnite1.out" "groupParts5.ig";
connectAttr "groupId9.id" "groupParts5.gi";
connectAttr "polyTweak1.out" "polyMergeVert1.ip";
connectAttr "group5Shape.wm" "polyMergeVert1.mp";
connectAttr "groupParts5.og" "polyTweak1.ip";
connectAttr "polyMergeVert1.out" "polyMergeVert2.ip";
connectAttr "group5Shape.wm" "polyMergeVert2.mp";
connectAttr "polyMergeVert2.out" "polyMergeVert3.ip";
connectAttr "group5Shape.wm" "polyMergeVert3.mp";
connectAttr "polyMergeVert3.out" "polyMergeVert4.ip";
connectAttr "group5Shape.wm" "polyMergeVert4.mp";
connectAttr "polyMergeVert4.out" "polyMergeVert5.ip";
connectAttr "group5Shape.wm" "polyMergeVert5.mp";
connectAttr "polyMergeVert5.out" "polyMergeVert6.ip";
connectAttr "group5Shape.wm" "polyMergeVert6.mp";
connectAttr "polyMergeVert6.out" "polyMergeVert7.ip";
connectAttr "group5Shape.wm" "polyMergeVert7.mp";
connectAttr "polyMergeVert7.out" "polyMergeVert8.ip";
connectAttr "group5Shape.wm" "polyMergeVert8.mp";
connectAttr "polyMergeVert8.out" "polyMergeVert9.ip";
connectAttr "group5Shape.wm" "polyMergeVert9.mp";
connectAttr "polyMergeVert9.out" "polyMergeVert10.ip";
connectAttr "group5Shape.wm" "polyMergeVert10.mp";
connectAttr "polyMergeVert10.out" "polyMergeVert11.ip";
connectAttr "group5Shape.wm" "polyMergeVert11.mp";
connectAttr "polyMergeVert11.out" "polyMergeVert12.ip";
connectAttr "group5Shape.wm" "polyMergeVert12.mp";
connectAttr "polyMergeVert12.out" "polyMergeVert13.ip";
connectAttr "group5Shape.wm" "polyMergeVert13.mp";
connectAttr "polyMergeVert13.out" "polyMergeVert14.ip";
connectAttr "group5Shape.wm" "polyMergeVert14.mp";
connectAttr "polyMergeVert14.out" "polyMergeVert15.ip";
connectAttr "group5Shape.wm" "polyMergeVert15.mp";
connectAttr "polyMergeVert15.out" "polyMergeVert16.ip";
connectAttr "group5Shape.wm" "polyMergeVert16.mp";
connectAttr "skinCluster1GroupParts.og" "skinCluster1.ip[0].ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1.ip[0].gi";
connectAttr "bindPose1.msg" "skinCluster1.bp";
connectAttr "joint1.wm" "skinCluster1.ma[0]";
connectAttr "joint2.wm" "skinCluster1.ma[1]";
connectAttr "joint3.wm" "skinCluster1.ma[2]";
connectAttr "joint1.liw" "skinCluster1.lw[0]";
connectAttr "joint2.liw" "skinCluster1.lw[1]";
connectAttr "joint3.liw" "skinCluster1.lw[2]";
connectAttr "joint1.obcc" "skinCluster1.ifcl[0]";
connectAttr "joint2.obcc" "skinCluster1.ifcl[1]";
connectAttr "joint3.obcc" "skinCluster1.ifcl[2]";
connectAttr "groupParts7.og" "tweak1.ip[0].ig";
connectAttr "groupId11.id" "tweak1.ip[0].gi";
connectAttr "skinCluster1GroupId.msg" "skinCluster1Set.gn" -na;
connectAttr "group5Shape.iog.og[1]" "skinCluster1Set.dsm" -na;
connectAttr "skinCluster1.msg" "skinCluster1Set.ub[0]";
connectAttr "tweak1.og[0]" "skinCluster1GroupParts.ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1GroupParts.gi";
connectAttr "groupId11.msg" "tweakSet1.gn" -na;
connectAttr "group5Shape.iog.og[2]" "tweakSet1.dsm" -na;
connectAttr "tweak1.msg" "tweakSet1.ub[0]";
connectAttr "group5ShapeOrig.w" "groupParts7.ig";
connectAttr "groupId11.id" "groupParts7.gi";
connectAttr "joint1.msg" "bindPose1.m[0]";
connectAttr "joint2.msg" "bindPose1.m[1]";
connectAttr "joint3.msg" "bindPose1.m[2]";
connectAttr "bindPose1.w" "bindPose1.p[0]";
connectAttr "bindPose1.m[0]" "bindPose1.p[1]";
connectAttr "bindPose1.m[1]" "bindPose1.p[2]";
connectAttr "joint1.bps" "bindPose1.wm[0]";
connectAttr "joint2.bps" "bindPose1.wm[1]";
connectAttr "joint3.bps" "bindPose1.wm[2]";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pasted__pPlaneShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pasted__pPlaneShape1.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pPlaneShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pPlaneShape1.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pasted__pasted__pPlaneShape1.iog.og[0]" ":initialShadingGroup.dsm" 
		-na;
connectAttr "pasted__pasted__pPlaneShape1.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "pasted__pPlaneShape2.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pasted__pPlaneShape2.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "group5Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId1.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId3.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId4.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId5.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId6.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId7.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId8.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId9.msg" ":initialShadingGroup.gn" -na;
// End of leaf.ma
