//Maya ASCII 2016 scene
//Name: tail.ma
//Last modified: Wed, Nov 01, 2017 05:20:54 PM
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
	rename -uid "C67515B7-C049-F3D2-4E57-49BF63DE4673";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -11.977483870142024 17.453622959698407 5.3827590253972675 ;
	setAttr ".r" -type "double3" -42.938352729610124 -65.80000000000463 -7.7589069627478181e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "1C652C3E-704C-FC64-8B17-FDB307F7FA47";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 17.936589849436089;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -0.0003018573080799114 5.2350194497695144 0 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "5520B53E-E949-0941-71FA-A285D9456946";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "3A8486B7-1342-5659-803E-838924797ED3";
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
	rename -uid "3A8825CF-1E48-C93D-D0CF-988F3764633D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.014444681789839597 1.0879019656180571 100.96472517247571 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "7E1C1D69-8749-5CA2-ADCB-7190A002D93A";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 130.0946472596093;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "889E8406-6341-2599-CA6A-E2B959B31E70";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "9B406E78-9144-7BED-8541-6FA4F24B72CA";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "pCone1";
	rename -uid "3D28CA07-C247-59E8-663D-C999AF46AA15";
	setAttr ".t" -type "double3" 0 5.4688592854394997 0 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" 0 0 179.99999999999997 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "pConeShape1" -p "pCone1";
	rename -uid "49FA1576-0D46-D241-99FE-4A8DAFCC4332";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999997019767761 0.24999994039535522 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
createNode mesh -n "pConeShape1Orig" -p "pCone1";
	rename -uid "5B529719-634C-2B43-6773-D592C4128057";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 142 ".uvst[0].uvsp[0:141]" -type "float2" 0.7377643 0.1727457
		 0.70225441 0.1030536 0.64694643 0.04774563 0.5772543 0.012235746 0.5 -1.1920929e-07
		 0.4227457 0.012235761 0.35305363 0.047745675 0.2977457 0.10305364 0.26223582 0.17274573
		 0.24999994 0.25 0.26223582 0.32725427 0.2977457 0.39694634 0.35305366 0.4522543 0.42274573
		 0.48776418 0.5 0.5 0.57725424 0.48776415 0.64694631 0.45225427 0.70225424 0.39694631
		 0.73776412 0.32725424 0.75 0.25 0.25 0.5 0.27500001 0.5 0.30000001 0.5 0.32500002
		 0.5 0.35000002 0.5 0.37500003 0.5 0.40000004 0.5 0.42500004 0.5 0.45000005 0.5 0.47500005
		 0.5 0.50000006 0.5 0.52500004 0.5 0.55000001 0.5 0.57499999 0.5 0.59999996 0.5 0.62499994
		 0.5 0.64999992 0.5 0.67499989 0.5 0.69999987 0.5 0.72499985 0.5 0.74999982 0.5 0.5
		 1 0.7377643 0.1727457 0.7377643 0.1727457 0.75 0.25 0.75 0.25 0.73776412 0.32725424
		 0.73776412 0.32725424 0.70225424 0.39694631 0.70225424 0.39694631 0.64694631 0.45225427
		 0.64694631 0.45225427 0.57725424 0.48776415 0.57725424 0.48776415 0.5 0.5 0.5 0.5
		 0.42274573 0.48776418 0.42274573 0.48776418 0.35305366 0.4522543 0.35305366 0.4522543
		 0.2977457 0.39694634 0.2977457 0.39694634 0.26223582 0.32725427 0.26223582 0.32725427
		 0.24999994 0.25 0.24999994 0.25 0.26223582 0.17274573 0.26223582 0.17274573 0.2977457
		 0.10305364 0.2977457 0.10305364 0.35305363 0.047745675 0.35305363 0.047745675 0.4227457
		 0.012235761 0.4227457 0.012235761 0.5 -1.1920929e-07 0.5 -1.1920929e-07 0.5772543
		 0.012235746 0.5772543 0.012235746 0.64694643 0.04774563 0.64694643 0.04774563 0.70225441
		 0.1030536 0.70225441 0.1030536 0.7377643 0.1727457 0.7377643 0.1727457 0.75 0.25
		 0.75 0.25 0.73776412 0.32725424 0.73776412 0.32725424 0.70225424 0.39694631 0.70225424
		 0.39694631 0.64694631 0.45225427 0.64694631 0.45225427 0.57725424 0.48776415 0.57725424
		 0.48776415 0.5 0.5 0.5 0.5 0.42274573 0.48776418 0.42274573 0.48776418 0.35305366
		 0.4522543 0.35305366 0.4522543 0.2977457 0.39694634 0.2977457 0.39694634 0.26223582
		 0.32725427 0.26223582 0.32725427 0.24999994 0.25 0.24999994 0.25 0.26223582 0.17274573
		 0.26223582 0.17274573 0.2977457 0.10305364 0.2977457 0.10305364 0.35305363 0.047745675
		 0.35305363 0.047745675 0.4227457 0.012235761 0.4227457 0.012235761 0.5 -1.1920929e-07
		 0.5 -1.1920929e-07 0.5772543 0.012235746 0.5772543 0.012235746 0.64694643 0.04774563
		 0.64694643 0.04774563 0.70225441 0.1030536 0.70225441 0.1030536 0.7377643 0.1727457
		 0.75 0.25 0.73776412 0.32725424 0.70225424 0.39694631 0.64694631 0.45225427 0.57725424
		 0.48776415 0.5 0.5 0.42274573 0.48776418 0.35305366 0.4522543 0.2977457 0.39694634
		 0.26223582 0.32725427 0.24999994 0.25 0.26223582 0.17274573 0.2977457 0.10305364
		 0.35305363 0.047745675 0.4227457 0.012235761 0.5 -1.1920929e-07 0.5772543 0.012235746
		 0.64694643 0.04774563 0.70225441 0.1030536;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 80 ".pt";
	setAttr ".pt[0]" -type "float3" -0.2744551 0 0.08917582 ;
	setAttr ".pt[1]" -type "float3" -0.23346545 0 0.1696225 ;
	setAttr ".pt[2]" -type "float3" -0.16962254 0 0.23346537 ;
	setAttr ".pt[3]" -type "float3" -0.08917585 0 0.27445501 ;
	setAttr ".pt[4]" -type "float3" -3.4401296e-08 0 0.28857911 ;
	setAttr ".pt[5]" -type "float3" 0.08917582 0 0.27445501 ;
	setAttr ".pt[6]" -type "float3" 0.16962245 0 0.23346534 ;
	setAttr ".pt[7]" -type "float3" 0.23346536 0 0.16962242 ;
	setAttr ".pt[8]" -type "float3" 0.27445498 0 0.089175783 ;
	setAttr ".pt[9]" -type "float3" 0.28857905 2.220446e-16 -5.1601948e-08 ;
	setAttr ".pt[10]" -type "float3" 0.27445498 0 -0.08917585 ;
	setAttr ".pt[11]" -type "float3" 0.23346536 0 -0.16962251 ;
	setAttr ".pt[12]" -type "float3" 0.16962242 0 -0.23346537 ;
	setAttr ".pt[13]" -type "float3" 0.089175798 0 -0.27445501 ;
	setAttr ".pt[14]" -type "float3" -2.5800974e-08 0 -0.28857911 ;
	setAttr ".pt[15]" -type "float3" -0.089175835 0 -0.27445501 ;
	setAttr ".pt[16]" -type "float3" -0.16962245 0 -0.23346539 ;
	setAttr ".pt[17]" -type "float3" -0.23346536 0 -0.16962251 ;
	setAttr ".pt[18]" -type "float3" -0.27445498 0 -0.089175843 ;
	setAttr ".pt[19]" -type "float3" -0.28857905 -2.220446e-16 -5.1601948e-08 ;
	setAttr ".pt[21]" -type "float3" -0.16183174 0 -3.7602281e-09 ;
	setAttr ".pt[22]" -type "float3" -0.11604083 0 -2.3194861e-08 ;
	setAttr ".pt[23]" -type "float3" -0.15391119 0 0.050008789 ;
	setAttr ".pt[24]" -type "float3" -0.11036144 0 0.035858579 ;
	setAttr ".pt[25]" -type "float3" -0.15391111 0 -0.050008763 ;
	setAttr ".pt[26]" -type "float3" -0.11036137 0 -0.035858601 ;
	setAttr ".pt[27]" -type "float3" -0.13092461 0 -0.095122322 ;
	setAttr ".pt[28]" -type "float3" -0.093878984 0 -0.0682071 ;
	setAttr ".pt[29]" -type "float3" -0.095122285 0 -0.13092467 ;
	setAttr ".pt[30]" -type "float3" -0.068207085 0 -0.093878992 ;
	setAttr ".pt[31]" -type "float3" -0.050008751 0 -0.15391113 ;
	setAttr ".pt[32]" -type "float3" -0.03585859 0 -0.11036139 ;
	setAttr ".pt[33]" -type "float3" -1.446888e-08 0 -0.16183178 ;
	setAttr ".pt[34]" -type "float3" -1.0374856e-08 0 -0.11604084 ;
	setAttr ".pt[35]" -type "float3" 0.050008737 0 -0.15391113 ;
	setAttr ".pt[36]" -type "float3" 0.035858568 0 -0.11036139 ;
	setAttr ".pt[37]" -type "float3" 0.095122278 0 -0.13092467 ;
	setAttr ".pt[38]" -type "float3" 0.068207078 0 -0.093879014 ;
	setAttr ".pt[39]" -type "float3" 0.13092461 0 -0.095122322 ;
	setAttr ".pt[40]" -type "float3" 0.093878984 0 -0.0682071 ;
	setAttr ".pt[41]" -type "float3" 0.15391111 0 -0.050008774 ;
	setAttr ".pt[42]" -type "float3" 0.11036137 0 -0.035858613 ;
	setAttr ".pt[43]" -type "float3" 0.16183174 0 -3.7602281e-09 ;
	setAttr ".pt[44]" -type "float3" 0.11604083 0 -2.3194861e-08 ;
	setAttr ".pt[45]" -type "float3" 0.15391111 0 0.050008781 ;
	setAttr ".pt[46]" -type "float3" 0.11036137 0 0.03585856 ;
	setAttr ".pt[47]" -type "float3" 0.13092461 0 0.095122322 ;
	setAttr ".pt[48]" -type "float3" 0.093878984 0 0.068207078 ;
	setAttr ".pt[49]" -type "float3" 0.095122285 0 0.13092464 ;
	setAttr ".pt[50]" -type "float3" 0.068207085 0 0.093878984 ;
	setAttr ".pt[51]" -type "float3" 0.050008744 0 0.15391114 ;
	setAttr ".pt[52]" -type "float3" 0.035858583 0 0.11036139 ;
	setAttr ".pt[53]" -type "float3" -1.9291843e-08 0 0.16183178 ;
	setAttr ".pt[54]" -type "float3" -1.383314e-08 0 0.11604084 ;
	setAttr ".pt[55]" -type "float3" -0.050008811 0 0.15391114 ;
	setAttr ".pt[56]" -type "float3" -0.035858605 0 0.11036139 ;
	setAttr ".pt[57]" -type "float3" -0.09512236 0 0.13092467 ;
	setAttr ".pt[58]" -type "float3" -0.068207115 0 0.093879014 ;
	setAttr ".pt[59]" -type "float3" -0.13092473 0 0.095122337 ;
	setAttr ".pt[60]" -type "float3" -0.093879044 0 0.0682071 ;
	setAttr ".pt[61]" -type "float3" -0.035052642 0 -1.0687915e-08 ;
	setAttr ".pt[63]" -type "float3" -0.033337064 0 0.010831855 ;
	setAttr ".pt[65]" -type "float3" -0.033337049 0 -0.010831872 ;
	setAttr ".pt[67]" -type "float3" -0.028358186 0 -0.020603437 ;
	setAttr ".pt[69]" -type "float3" -0.020603426 0 -0.028358195 ;
	setAttr ".pt[71]" -type "float3" -0.010831865 0 -0.033337053 ;
	setAttr ".pt[73]" -type "float3" -3.1339502e-09 0 -0.03505265 ;
	setAttr ".pt[75]" -type "float3" 0.010831858 0 -0.033337053 ;
	setAttr ".pt[77]" -type "float3" 0.020603424 0 -0.028358199 ;
	setAttr ".pt[79]" -type "float3" 0.028358186 0 -0.020603437 ;
	setAttr ".pt[81]" -type "float3" 0.033337049 0 -0.010831875 ;
	setAttr ".pt[83]" -type "float3" 0.035052642 0 -1.0687915e-08 ;
	setAttr ".pt[85]" -type "float3" 0.033337049 0 0.010831854 ;
	setAttr ".pt[87]" -type "float3" 0.028358186 0 0.02060342 ;
	setAttr ".pt[89]" -type "float3" 0.020603426 0 0.028358178 ;
	setAttr ".pt[91]" -type "float3" 0.01083186 0 0.033337049 ;
	setAttr ".pt[93]" -type "float3" -4.1786001e-09 0 0.035052642 ;
	setAttr ".pt[95]" -type "float3" -0.010831871 0 0.033337049 ;
	setAttr ".pt[97]" -type "float3" -0.020603435 0 0.028358188 ;
	setAttr ".pt[99]" -type "float3" -0.028358202 0 0.020603426 ;
	setAttr -s 121 ".vt[0:120]"  0.73755544 1.21640444 -0.23964635 0.62740213 1.21640444 -0.45583439
		 0.4558343 1.21640444 -0.62740219 0.23964624 1.21640444 -0.73755544 -2.676116e-08 1.21640444 -0.77551162
		 -0.23964629 1.21640444 -0.73755544 -0.45583427 1.21640444 -0.62740201 -0.62740195 1.21640444 -0.45583424
		 -0.73755527 1.21640444 -0.23964626 -0.77551138 1.21640444 -4.0141714e-08 -0.73755527 1.21640444 0.23964617
		 -0.62740195 1.21640444 0.45583409 -0.45583418 1.21640444 0.62740183 -0.23964623 1.21640444 0.73755509
		 -4.9873183e-08 1.21640444 0.77551126 0.23964611 1.21640444 0.73755509 0.45583403 1.21640444 0.62740177
		 0.62740171 1.21640444 0.45583409 0.73755503 1.21640444 0.23964611 0.77551115 1.21640444 -4.0141714e-08
		 5.3574834e-20 4.42861652 0 0.77551115 0.086697102 -3.2999438e-07 0.77551115 -1.043011189 -6.1984701e-07
		 0.73755544 0.086697102 -0.23964664 0.73755544 -1.043011189 -0.23964691 0.73755503 0.086697102 0.23964581
		 0.73755503 -1.043011189 0.23964554 0.62740171 0.086697102 0.45583379 0.62740171 -1.043011189 0.45583349
		 0.45583403 0.086697102 0.62740153 0.45583403 -1.043011189 0.62740117 0.23964611 0.086697102 0.73755485
		 0.23964611 -1.043011189 0.73755449 -4.9873183e-08 0.086697102 0.77551103 -4.9873183e-08 -1.043011189 0.77551067
		 -0.23964623 0.086697102 0.73755485 -0.23964623 -1.043011189 0.73755449 -0.45583418 0.086697102 0.62740159
		 -0.45583418 -1.043011189 0.62740123 -0.62740195 0.086697102 0.45583379 -0.62740195 -1.043011189 0.45583349
		 -0.73755527 0.086697102 0.23964587 -0.73755527 -1.043011189 0.2396456 -0.77551138 0.086697102 -3.2999438e-07
		 -0.77551138 -1.043011189 -6.1984701e-07 -0.73755527 0.086697102 -0.23964655 -0.73755527 -1.043011189 -0.23964682
		 -0.62740195 0.086697102 -0.45583454 -0.62740195 -1.043011189 -0.45583484 -0.45583427 0.086697102 -0.62740225
		 -0.45583427 -1.043011189 -0.6274026 -0.23964629 0.086697102 -0.73755568 -0.23964629 -1.043011189 -0.73755604
		 -2.6761155e-08 0.086697102 -0.77551186 -2.6761155e-08 -1.043011189 -0.77551222 0.23964624 0.086697102 -0.73755568
		 0.23964624 -1.043011189 -0.73755604 0.4558343 0.086697102 -0.62740242 0.4558343 -1.043011189 -0.62740278
		 0.62740213 0.086697102 -0.45583469 0.62740213 -1.043011189 -0.45583498 0.77551115 -2.31279421 -5.3839892e-07
		 0.77551115 -3.58257818 -4.5695083e-07 0.73755544 -2.31279421 -0.23964682 0.73755544 -3.58257818 -0.23964676
		 0.73755503 -2.31279421 0.23964563 0.73755503 -3.58257818 0.23964569 0.62740171 -2.31279421 0.45583355
		 0.62740171 -3.58257818 0.45583367 0.45583403 -2.31279421 0.62740129 0.45583403 -3.58257818 0.62740129
		 0.23964611 -2.31279421 0.73755461 0.23964611 -3.58257818 0.73755461 -4.9873183e-08 -2.31279421 0.77551079
		 -4.9873186e-08 -3.58257818 0.77551079 -0.23964623 -2.31279421 0.73755461 -0.23964623 -3.58257818 0.73755461
		 -0.45583418 -2.31279421 0.62740135 -0.45583418 -3.58257818 0.62740135 -0.62740195 -2.31279421 0.45583355
		 -0.62740195 -3.58257818 0.45583367 -0.73755527 -2.31279421 0.23964569 -0.73755527 -3.58257818 0.23964575
		 -0.77551138 -2.31279421 -5.3839892e-07 -0.77551138 -3.58257818 -4.5695083e-07 -0.73755527 -2.31279421 -0.23964673
		 -0.73755527 -3.58257818 -0.23964667 -0.62740195 -2.31279421 -0.45583478 -0.62740195 -3.58257818 -0.45583466
		 -0.45583427 -2.31279421 -0.62740248 -0.45583427 -3.58257818 -0.62740248 -0.23964629 -2.31279421 -0.73755592
		 -0.23964629 -3.58257818 -0.73755592 -2.6761157e-08 -2.31279421 -0.7755121 -2.6761153e-08 -3.58257818 -0.7755121
		 0.23964624 -2.31279421 -0.73755592 0.23964624 -3.58257818 -0.73755592 0.4558343 -2.31279421 -0.62740266
		 0.4558343 -3.58257818 -0.62740266 0.62740213 -2.31279421 -0.45583493 0.62740213 -3.58257818 -0.45583481
		 0.77551115 -5.1001544 -8.463204e-07 0.73755544 -5.1001544 -0.23964715 0.73755503 -5.1001544 0.2396453
		 0.62740171 -5.1001544 0.45583326 0.45583403 -5.1001544 0.62740093 0.23964611 -5.1001544 0.73755425
		 -4.9873183e-08 -5.1001544 0.77551043 -0.23964623 -5.1001544 0.73755425 -0.45583418 -5.1001544 0.62740099
		 -0.62740195 -5.1001544 0.45583326 -0.73755527 -5.1001544 0.23964536 -0.77551138 -5.1001544 -8.463204e-07
		 -0.73755527 -5.1001544 -0.23964706 -0.62740195 -5.1001544 -0.45583507 -0.45583427 -5.1001544 -0.62740284
		 -0.23964629 -5.1001544 -0.73755628 -2.6761153e-08 -5.1001544 -0.77551246 0.23964624 -5.1001544 -0.73755628
		 0.4558343 -5.1001544 -0.62740302 0.62740213 -5.1001544 -0.45583522;
	setAttr -s 240 ".ed";
	setAttr ".ed[0:165]"  0 1 1 1 2 1 2 3 1 3 4 1 4 5 1 5 6 1 6 7 1 7 8 1 8 9 1
		 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 16 1 16 17 1 17 18 1 18 19 1 19 0 1
		 0 20 1 1 20 1 2 20 1 3 20 1 4 20 1 5 20 1 6 20 1 7 20 1 8 20 1 9 20 1 10 20 1 11 20 1
		 12 20 1 13 20 1 14 20 1 15 20 1 16 20 1 17 20 1 18 20 1 19 20 1 19 21 1 21 22 1 0 23 1
		 23 24 1 21 23 1 22 24 1 18 25 1 25 26 1 25 21 1 26 22 1 17 27 1 27 28 1 27 25 1 28 26 1
		 16 29 1 29 30 1 29 27 1 30 28 1 15 31 1 31 32 1 31 29 1 32 30 1 14 33 1 33 34 1 33 31 1
		 34 32 1 13 35 1 35 36 1 35 33 1 36 34 1 12 37 1 37 38 1 37 35 1 38 36 1 11 39 1 39 40 1
		 39 37 1 40 38 1 10 41 1 41 42 1 41 39 1 42 40 1 9 43 1 43 44 1 43 41 1 44 42 1 8 45 1
		 45 46 1 45 43 1 46 44 1 7 47 1 47 48 1 47 45 1 48 46 1 6 49 1 49 50 1 49 47 1 50 48 1
		 5 51 1 51 52 1 51 49 1 52 50 1 4 53 1 53 54 1 53 51 1 54 52 1 3 55 1 55 56 1 55 53 1
		 56 54 1 2 57 1 57 58 1 57 55 1 58 56 1 1 59 1 59 60 1 59 57 1 60 58 1 23 59 1 24 60 1
		 22 61 1 61 62 1 24 63 1 63 64 1 61 63 1 62 64 1 26 65 1 65 66 1 65 61 1 66 62 1 28 67 1
		 67 68 1 67 65 1 68 66 1 30 69 1 69 70 1 69 67 1 70 68 1 32 71 1 71 72 1 71 69 1 72 70 1
		 34 73 1 73 74 1 73 71 1 74 72 1 36 75 1 75 76 1 75 73 1 76 74 1 38 77 1 77 78 1 77 75 1
		 78 76 1 40 79 1 79 80 1 79 77 1 80 78 1 42 81 1 81 82 1 81 79 1 82 80 1 44 83 1 83 84 1
		 83 81 1 84 82 1;
	setAttr ".ed[166:239]" 46 85 1 85 86 1 85 83 1 86 84 1 48 87 1 87 88 1 87 85 1
		 88 86 1 50 89 1 89 90 1 89 87 1 90 88 1 52 91 1 91 92 1 91 89 1 92 90 1 54 93 1 93 94 1
		 93 91 1 94 92 1 56 95 1 95 96 1 95 93 1 96 94 1 58 97 1 97 98 1 97 95 1 98 96 1 60 99 1
		 99 100 1 99 97 1 100 98 1 63 99 1 64 100 1 62 101 1 64 102 1 101 102 0 66 103 1 103 101 0
		 68 104 1 104 103 0 70 105 1 105 104 0 72 106 1 106 105 0 74 107 1 107 106 0 76 108 1
		 108 107 0 78 109 1 109 108 0 80 110 1 110 109 0 82 111 1 111 110 0 84 112 1 112 111 0
		 86 113 1 113 112 0 88 114 1 114 113 0 90 115 1 115 114 0 92 116 1 116 115 0 94 117 1
		 117 116 0 96 118 1 118 117 0 98 119 1 119 118 0 100 120 1 120 119 0 102 120 0;
	setAttr -s 121 -ch 480 ".fc[0:120]" -type "polyFaces" 
		f 20 -203 -205 -207 -209 -211 -213 -215 -217 -219 -221 -223 -225 -227 -229 -231 -233
		 -235 -237 -239 -240
		mu 0 20 122 123 124 125 126 127 128 129 130 131 132 133 134 135 136 137 138 139 140 141
		f 3 0 21 -21
		mu 0 3 20 21 41
		f 3 1 22 -22
		mu 0 3 21 22 41
		f 3 2 23 -23
		mu 0 3 22 23 41
		f 3 3 24 -24
		mu 0 3 23 24 41
		f 3 4 25 -25
		mu 0 3 24 25 41
		f 3 5 26 -26
		mu 0 3 25 26 41
		f 3 6 27 -27
		mu 0 3 26 27 41
		f 3 7 28 -28
		mu 0 3 27 28 41
		f 3 8 29 -29
		mu 0 3 28 29 41
		f 3 9 30 -30
		mu 0 3 29 30 41
		f 3 10 31 -31
		mu 0 3 30 31 41
		f 3 11 32 -32
		mu 0 3 31 32 41
		f 3 12 33 -33
		mu 0 3 32 33 41
		f 3 13 34 -34
		mu 0 3 33 34 41
		f 3 14 35 -35
		mu 0 3 34 35 41
		f 3 15 36 -36
		mu 0 3 35 36 41
		f 3 16 37 -37
		mu 0 3 36 37 41
		f 3 17 38 -38
		mu 0 3 37 38 41
		f 3 18 39 -39
		mu 0 3 38 39 41
		f 3 19 20 -40
		mu 0 3 39 40 41
		f 4 -20 40 44 -43
		mu 0 4 0 19 44 42
		f 4 -45 41 45 -44
		mu 0 4 42 44 45 43
		f 4 -19 46 48 -41
		mu 0 4 19 18 46 44
		f 4 -49 47 49 -42
		mu 0 4 44 46 47 45
		f 4 -18 50 52 -47
		mu 0 4 18 17 48 46
		f 4 -53 51 53 -48
		mu 0 4 46 48 49 47
		f 4 -17 54 56 -51
		mu 0 4 17 16 50 48
		f 4 -57 55 57 -52
		mu 0 4 48 50 51 49
		f 4 -16 58 60 -55
		mu 0 4 16 15 52 50
		f 4 -61 59 61 -56
		mu 0 4 50 52 53 51
		f 4 -15 62 64 -59
		mu 0 4 15 14 54 52
		f 4 -65 63 65 -60
		mu 0 4 52 54 55 53
		f 4 -14 66 68 -63
		mu 0 4 14 13 56 54
		f 4 -69 67 69 -64
		mu 0 4 54 56 57 55
		f 4 -13 70 72 -67
		mu 0 4 13 12 58 56
		f 4 -73 71 73 -68
		mu 0 4 56 58 59 57
		f 4 -12 74 76 -71
		mu 0 4 12 11 60 58
		f 4 -77 75 77 -72
		mu 0 4 58 60 61 59
		f 4 -11 78 80 -75
		mu 0 4 11 10 62 60
		f 4 -81 79 81 -76
		mu 0 4 60 62 63 61
		f 4 -10 82 84 -79
		mu 0 4 10 9 64 62
		f 4 -85 83 85 -80
		mu 0 4 62 64 65 63
		f 4 -9 86 88 -83
		mu 0 4 9 8 66 64
		f 4 -89 87 89 -84
		mu 0 4 64 66 67 65
		f 4 -8 90 92 -87
		mu 0 4 8 7 68 66
		f 4 -93 91 93 -88
		mu 0 4 66 68 69 67
		f 4 -7 94 96 -91
		mu 0 4 7 6 70 68
		f 4 -97 95 97 -92
		mu 0 4 68 70 71 69
		f 4 -6 98 100 -95
		mu 0 4 6 5 72 70
		f 4 -101 99 101 -96
		mu 0 4 70 72 73 71
		f 4 -5 102 104 -99
		mu 0 4 5 4 74 72
		f 4 -105 103 105 -100
		mu 0 4 72 74 75 73
		f 4 -4 106 108 -103
		mu 0 4 4 3 76 74
		f 4 -109 107 109 -104
		mu 0 4 74 76 77 75
		f 4 -3 110 112 -107
		mu 0 4 3 2 78 76
		f 4 -113 111 113 -108
		mu 0 4 76 78 79 77
		f 4 -2 114 116 -111
		mu 0 4 2 1 80 78
		f 4 -117 115 117 -112
		mu 0 4 78 80 81 79
		f 4 -1 42 118 -115
		mu 0 4 1 0 42 80
		f 4 -119 43 119 -116
		mu 0 4 80 42 43 81
		f 4 -46 120 124 -123
		mu 0 4 43 45 84 82
		f 4 -125 121 125 -124
		mu 0 4 82 84 85 83
		f 4 -50 126 128 -121
		mu 0 4 45 47 86 84
		f 4 -129 127 129 -122
		mu 0 4 84 86 87 85
		f 4 -54 130 132 -127
		mu 0 4 47 49 88 86
		f 4 -133 131 133 -128
		mu 0 4 86 88 89 87
		f 4 -58 134 136 -131
		mu 0 4 49 51 90 88
		f 4 -137 135 137 -132
		mu 0 4 88 90 91 89
		f 4 -62 138 140 -135
		mu 0 4 51 53 92 90
		f 4 -141 139 141 -136
		mu 0 4 90 92 93 91
		f 4 -66 142 144 -139
		mu 0 4 53 55 94 92
		f 4 -145 143 145 -140
		mu 0 4 92 94 95 93
		f 4 -70 146 148 -143
		mu 0 4 55 57 96 94
		f 4 -149 147 149 -144
		mu 0 4 94 96 97 95
		f 4 -74 150 152 -147
		mu 0 4 57 59 98 96
		f 4 -153 151 153 -148
		mu 0 4 96 98 99 97
		f 4 -78 154 156 -151
		mu 0 4 59 61 100 98
		f 4 -157 155 157 -152
		mu 0 4 98 100 101 99
		f 4 -82 158 160 -155
		mu 0 4 61 63 102 100
		f 4 -161 159 161 -156
		mu 0 4 100 102 103 101
		f 4 -86 162 164 -159
		mu 0 4 63 65 104 102
		f 4 -165 163 165 -160
		mu 0 4 102 104 105 103
		f 4 -90 166 168 -163
		mu 0 4 65 67 106 104
		f 4 -169 167 169 -164
		mu 0 4 104 106 107 105
		f 4 -94 170 172 -167
		mu 0 4 67 69 108 106
		f 4 -173 171 173 -168
		mu 0 4 106 108 109 107
		f 4 -98 174 176 -171
		mu 0 4 69 71 110 108
		f 4 -177 175 177 -172
		mu 0 4 108 110 111 109
		f 4 -102 178 180 -175
		mu 0 4 71 73 112 110
		f 4 -181 179 181 -176
		mu 0 4 110 112 113 111
		f 4 -106 182 184 -179
		mu 0 4 73 75 114 112
		f 4 -185 183 185 -180
		mu 0 4 112 114 115 113
		f 4 -110 186 188 -183
		mu 0 4 75 77 116 114
		f 4 -189 187 189 -184
		mu 0 4 114 116 117 115
		f 4 -114 190 192 -187
		mu 0 4 77 79 118 116
		f 4 -193 191 193 -188
		mu 0 4 116 118 119 117
		f 4 -118 194 196 -191
		mu 0 4 79 81 120 118
		f 4 -197 195 197 -192
		mu 0 4 118 120 121 119
		f 4 -120 122 198 -195
		mu 0 4 81 43 82 120
		f 4 -199 123 199 -196
		mu 0 4 120 82 83 121
		f 4 -126 200 202 -202
		mu 0 4 83 85 123 122
		f 4 -130 203 204 -201
		mu 0 4 85 87 124 123
		f 4 -134 205 206 -204
		mu 0 4 87 89 125 124
		f 4 -138 207 208 -206
		mu 0 4 89 91 126 125
		f 4 -142 209 210 -208
		mu 0 4 91 93 127 126
		f 4 -146 211 212 -210
		mu 0 4 93 95 128 127
		f 4 -150 213 214 -212
		mu 0 4 95 97 129 128
		f 4 -154 215 216 -214
		mu 0 4 97 99 130 129
		f 4 -158 217 218 -216
		mu 0 4 99 101 131 130
		f 4 -162 219 220 -218
		mu 0 4 101 103 132 131
		f 4 -166 221 222 -220
		mu 0 4 103 105 133 132
		f 4 -170 223 224 -222
		mu 0 4 105 107 134 133
		f 4 -174 225 226 -224
		mu 0 4 107 109 135 134
		f 4 -178 227 228 -226
		mu 0 4 109 111 136 135
		f 4 -182 229 230 -228
		mu 0 4 111 113 137 136
		f 4 -186 231 232 -230
		mu 0 4 113 115 138 137
		f 4 -190 233 234 -232
		mu 0 4 115 117 139 138
		f 4 -194 235 236 -234
		mu 0 4 117 119 140 139
		f 4 -198 237 238 -236
		mu 0 4 119 121 141 140
		f 4 -200 201 239 -238
		mu 0 4 121 83 122 141;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vcs" 2;
createNode joint -n "joint1";
	rename -uid "660EEB6C-3B45-8CB6-361D-DFB6F57AC81E";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 0.014444681789839597 9.8974758091821755 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -89.999999999999986 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-16 -1.0000000000000002 -0 0 1.0000000000000002 2.2204460492503131e-16 0 0
		 0 -0 1 0 0.014444681789839597 9.8974758091821755 0 1;
	setAttr ".radi" 0.59855313453300407;
createNode joint -n "joint2" -p "joint1";
	rename -uid "3D6CE127-A948-D098-9ADB-159120A7988B";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 2.9053606009714108 -6.4685437028342505e-16 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-16 -1.0000000000000002 0 0 1.0000000000000002 2.2204460492503131e-16 0 0
		 0 0 1 0 0.014444681789839596 6.9921152082107643 0 1;
	setAttr ".radi" 0.60686253163784998;
createNode joint -n "joint3" -p "joint2";
	rename -uid "90CCDCB6-4047-AAF2-C8A8-4582790C89CB";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 3.0660089449984338 -6.8079074488878908e-16 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-16 -1.0000000000000002 0 0 1.0000000000000002 2.2204460492503131e-16 0 0
		 0 0 1 0 0.014444681789839596 3.9261062632123296 0 1;
	setAttr ".radi" 0.59507953263418645;
createNode joint -n "joint4" -p "joint3";
	rename -uid "565B8EE2-7B44-F25D-8B05-C698453D5FF8";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 2.8382042975942703 -0.014746539097919583 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 89.999999999999986 ;
	setAttr ".bps" -type "matrix" 1.0000000000000004 0 0 0 0 1.0000000000000004 0 0 0 0 1 0
		 -0.00030185730807936149 1.0879019656180589 0 1;
	setAttr ".radi" 0.5;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "00FD4B9B-E840-6636-251A-51B14B067EA8";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "77CEE7A6-2E4F-9652-48EA-B28649FC173C";
createNode displayLayer -n "defaultLayer";
	rename -uid "C0835B1B-4141-27FD-6C91-09A92E37326C";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "52CD175C-2448-5219-018E-6BA5F135ECCB";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "37940831-4643-3659-BB18-A7B25FEF2A1D";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "EF167D28-F644-8471-721B-57A29DA473D9";
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
		+ "            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n"
		+ "                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n"
		+ "                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n"
		+ "                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n"
		+ "            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n"
		+ "            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n"
		+ "                -width 892\n                -height 515\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 892\n            -height 515\n"
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
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"profilerPanel\" -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n"
		+ "                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n"
		+ "                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n"
		+ "        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 892\\n    -height 515\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 892\\n    -height 515\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "5F6A74B7-3B4F-F6DE-68A7-F2B129F7CEB4";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode skinCluster -n "skinCluster1";
	rename -uid "217BCB34-B44F-9E29-6B23-FC93E4EC98C8";
	setAttr -s 121 ".wl";
	setAttr -s 4 ".wl[0].w[0:3]"  0.0036370277902308483 0.62593933138155455 
		0.36802990542269531 0.0023937354055193066;
	setAttr -s 4 ".wl[1].w[0:3]"  0.0036000230454624649 0.62681000765464945 
		0.36722151877732995 0.0023684505225580717;
	setAttr -s 4 ".wl[2].w[0:3]"  0.003542555279160137 0.62818743489092588 
		0.36594079234392046 0.0023292174859935086;
	setAttr -s 4 ".wl[3].w[0:3]"  0.0034704386677817415 0.62996108697693343 
		0.36428843199333399 0.0022800423619508525;
	setAttr -s 4 ".wl[4].w[0:3]"  0.0033908884186348589 0.63197853410708305 
		0.36240470311568346 0.0022258743585986725;
	setAttr -s 4 ".wl[5].w[0:3]"  0.0033117587745157958 0.6340521119186121 
		0.36046405715911306 0.0021720721477588522;
	setAttr -s 4 ".wl[6].w[0:3]"  0.003240734443380011 0.63597305484297173 
		0.3586623619191755 0.0021238487944728215;
	setAttr -s 4 ".wl[7].w[0:3]"  0.0031846164628799153 0.63753276522771829 
		0.35719682634512662 0.0020857919642751532;
	setAttr -s 4 ".wl[8].w[0:3]"  0.0031487037157823315 0.63855107931125077 
		0.35623875834276314 0.0020614586302037767;
	setAttr -s 4 ".wl[9].w[0:3]"  0.0031363478835616044 0.63890516327747704 
		0.3559053982549702 0.0020530905839910647;
	setAttr -s 4 ".wl[10].w[0:3]"  0.0031487029107662838 0.63855110230796186 
		0.35623873668252587 0.0020614580987458149;
	setAttr -s 4 ".wl[11].w[0:3]"  0.0031846140066646863 0.63753283429775753 
		0.35719676135359757 0.0020857903419801991;
	setAttr -s 4 ".wl[12].w[0:3]"  0.0032407308882906171 0.63597315241370045 
		0.35866227025275071 0.0021238464452582118;
	setAttr -s 4 ".wl[13].w[0:3]"  0.0033117526132812984 0.63405227598082392 
		0.36046390333382483 0.0021720680720698966;
	setAttr -s 4 ".wl[14].w[0:3]"  0.0033908820537920398 0.63197869808635476 
		0.36240454971624714 0.0022258701436061227;
	setAttr -s 4 ".wl[15].w[0:3]"  0.0034704318686630637 0.62996125654105251 
		0.36428827373641326 0.0022800378538712076;
	setAttr -s 4 ".wl[16].w[0:3]"  0.0035425472374833959 0.62818762972860076 
		0.36594061088504715 0.0023292121488687561;
	setAttr -s 4 ".wl[17].w[0:3]"  0.0036000141697815685 0.62681021788126146 
		0.36722132332288776 0.0023684446260693005;
	setAttr -s 4 ".wl[18].w[0:3]"  0.00363702101533158 0.62593948955210976 
		0.36802975853022613 0.0023937309023325222;
	setAttr -s 4 ".wl[19].w[0:3]"  0.0036497905215976531 0.62564193050450945 
		0.36830581884047803 0.0024024601334149101;
	setAttr -s 4 ".wl[20].w[0:3]"  2.5672650910346379e-07 2.2521210053575244e-06 
		0.49999874557624263 0.49999874557624285;
	setAttr -s 4 ".wl[21].w[0:3]"  0.043134192089890305 0.89831078055394553 
		0.055827678141826619 0.0027273492143374267;
	setAttr -s 4 ".wl[22].w[0:3]"  0.34665793797457012 0.64184182294576386 
		0.010295921690933197 0.0012043173887327969;
	setAttr -s 4 ".wl[23].w[0:3]"  0.043023191324840428 0.89856910293832493 
		0.055688563584999753 0.0027191421518348948;
	setAttr -s 4 ".wl[24].w[0:3]"  0.34643444321295258 0.64209416683507603 
		0.010270305243597571 0.0012010847083737948;
	setAttr -s 4 ".wl[25].w[0:3]"  0.04302309746299729 0.89856932122111854 
		0.055688445941021514 0.002719135374862651;
	setAttr -s 4 ".wl[26].w[0:3]"  0.34643421409169228 0.64209442541653161 
		0.010270279032314695 0.0012010814594614141;
	setAttr -s 4 ".wl[27].w[0:3]"  0.042700539934907175 0.89932006346417315 
		0.055284072556703007 0.0026953240442166653;
	setAttr -s 4 ".wl[28].w[0:3]"  0.34578067045004224 0.64283171736759515 
		0.010195909370640114 0.001191702811722577;
	setAttr -s 4 ".wl[29].w[0:3]"  0.042197827689435821 0.90049035614406436 
		0.054653492886449544 0.0026583232800502943;
	setAttr -s 4 ".wl[30].w[0:3]"  0.3447501189470405 0.64399250573018429 
		0.010080240730696615 0.0011771345920787379;
	setAttr -s 4 ".wl[31].w[0:3]"  0.041563817571889157 0.90196673379605496 
		0.053857600122162515 0.0026118485098932287;
	setAttr -s 4 ".wl[32].w[0:3]"  0.34342909144793382 0.64547729683293775 
		0.009934767059380515 0.0011588446597478113;
	setAttr -s 4 ".wl[33].w[0:3]"  0.040860289454800171 0.90360555632429473 
		0.05297362963480693 0.0025605245860981837;
	setAttr -s 4 ".wl[34].w[0:3]"  0.34193465220163688 0.64715282143400998 
		0.0097738690817819034 0.0011386572825712702;
	setAttr -s 4 ".wl[35].w[0:3]"  0.040156142696561155 0.9052464161596544 
		0.052088027240322368 0.0025094139034620611;
	setAttr -s 4 ".wl[36].w[0:3]"  0.34040773055804124 0.64886034563275474 
		0.0096133611654911615 0.0011185626437128901;
	setAttr -s 4 ".wl[37].w[0:3]"  0.039520395481215893 0.90672840092093177 
		0.051287714612479871 0.0024634889853724844;
	setAttr -s 4 ".wl[38].w[0:3]"  0.33900157805507802 0.65042900447033691 
		0.0094689027115048251 0.0011005147630802283;
	setAttr -s 4 ".wl[39].w[0:3]"  0.039015566286711767 0.90790555376610915 
		0.050651710032112489 0.0024271699150666005;
	setAttr -s 4 ".wl[40].w[0:3]"  0.33786577908536042 0.65169348236984215 
		0.009354492391312811 0.0010862461534845455;
	setAttr -s 4 ".wl[41].w[0:3]"  0.03869133805487468 0.90866174814203171 
		0.050243000823826579 0.0024039129792669742;
	setAttr -s 4 ".wl[42].w[0:3]"  0.33712713665519123 0.65251460128272687 
		0.0092811509171831542 0.0010771111448988084;
	setAttr -s 4 ".wl[43].w[0:3]"  0.038579583669411985 0.90892242160322922 
		0.050102085384371817 0.0023959093429871087;
	setAttr -s 4 ".wl[44].w[0:3]"  0.33687086087952567 0.65279927407664773 
		0.0092558972305979703 0.0010739678132286106;
	setAttr -s 4 ".wl[45].w[0:3]"  0.038691371537642155 0.90866167009466547 
		0.050243043040369667 0.0024039153273228003;
	setAttr -s 4 ".wl[46].w[0:3]"  0.33712727997449915 0.65251444208102138 
		0.0092811650669162027 0.0010771128775632481;
	setAttr -s 4 ".wl[47].w[0:3]"  0.039015638260636032 0.90790538602658288 
		0.050651800739484013 0.0024271749732970344;
	setAttr -s 4 ".wl[48].w[0:3]"  0.33786606150034193 0.65169316829973989 
		0.0093545205903009 0.0010862496096172695;
	setAttr -s 4 ".wl[49].w[0:3]"  0.039520491038345811 0.9067281782808928 
		0.05128783495770018 0.0024634957230613335;
	setAttr -s 4 ".wl[50].w[0:3]"  0.33900198705999612 0.65042854880548251 
		0.0094689442708427111 0.0011005198636786517;
	setAttr -s 4 ".wl[51].w[0:3]"  0.040156261696965956 0.90524613899380446 
		0.05208817697926358 0.0025094223299658752;
	setAttr -s 4 ".wl[52].w[0:3]"  0.34040824469946229 0.64885977152860941 
		0.0096134145630348521 0.0011185692088934488;
	setAttr -s 4 ".wl[53].w[0:3]"  0.040860421114177488 0.9036052497899848 
		0.052973795142587092 0.0025605339532505738;
	setAttr -s 4 ".wl[54].w[0:3]"  0.34193517682156754 0.64715223412737877 
		0.0097739248930270306 0.001138664158026564;
	setAttr -s 4 ".wl[55].w[0:3]"  0.041563936791797616 0.90196645632818828 
		0.053857749847949582 0.0026118570320645346;
	setAttr -s 4 ".wl[56].w[0:3]"  0.34342959273854051 0.64547673418604923 
		0.00993482167428969 0.0011588514011206075;
	setAttr -s 4 ".wl[57].w[0:3]"  0.042197958735089559 0.90049005125590531 
		0.054653657321136521 0.0026583326878685839;
	setAttr -s 4 ".wl[58].w[0:3]"  0.34475058926227303 0.64399197659872554 
		0.010080293074330742 0.0011771410646707631;
	setAttr -s 4 ".wl[59].w[0:3]"  0.042700661596120487 0.89931978048449601 
		0.055284225110944836 0.0026953328084386263;
	setAttr -s 4 ".wl[60].w[0:3]"  0.34578104590156006 0.64283129416070839 
		0.010195951863864306 0.0011917080738672245;
	setAttr -s 4 ".wl[61].w[0:3]"  0.74707674465250395 0.24657104351205134 
		0.0052999749022835619 0.0010522369331611994;
	setAttr -s 4 ".wl[62].w[0:3]"  0.95198328457153658 0.043735603099610221 
		0.0033649425309964709 0.00091616979785661442;
	setAttr -s 4 ".wl[63].w[0:3]"  0.74735459929635839 0.24630777554948863 
		0.0052878941830138684 0.0010497309711390865;
	setAttr -s 4 ".wl[64].w[0:3]"  0.9520893836473765 0.043640091487448317 
		0.0033566651073045077 0.00091385975787078397;
	setAttr -s 4 ".wl[65].w[0:3]"  0.74735490561563966 0.2463074852543021 
		0.0052878808781163357 0.001049728251941935;
	setAttr -s 4 ".wl[66].w[0:3]"  0.95208949419888256 0.043639991942928336 
		0.0033566564824656846 0.00091385737572342786;
	setAttr -s 4 ".wl[67].w[0:3]"  0.74816520679507847 0.24553953383479957 
		0.0052528044604925163 0.0010424549096295593;
	setAttr -s 4 ".wl[68].w[0:3]"  0.9523976467984161 0.043362562017428545 
		0.0033326359262715669 0.00090715525788389131;
	setAttr -s 4 ".wl[69].w[0:3]"  0.74943628719170452 0.24433432404441346 
		0.0051982403869372199 0.0010311483769448553;
	setAttr -s 4 ".wl[70].w[0:3]"  0.95287732855588181 0.042930623459966774 
		0.0032953046263513889 0.00089674335780009769;
	setAttr -s 4 ".wl[71].w[0:3]"  0.75105382793621978 0.24279963083434034 
		0.0051296023683060389 0.0010169388611338548;
	setAttr -s 4 ".wl[72].w[0:3]"  0.95348126490979812 0.042386657532793894 
		0.0032484070522447463 0.00088367050516319939;
	setAttr -s 4 ".wl[73].w[0:3]"  0.75286799904514379 0.24107709910352582 
		0.0050536660308758696 0.0010012358204545689;
	setAttr -s 4 ".wl[74].w[0:3]"  0.95415009304977949 0.041784061559013326 
		0.0031966054799668201 0.00086923991124038833;
	setAttr -s 4 ".wl[75].w[0:3]"  0.7547046496807237 0.23933187304476308 
		0.0049778925914290249 0.00098558468308427389;
	setAttr -s 4 ".wl[76].w[0:3]"  0.95481817847791173 0.041181943924431544 
		0.0031450031008065787 0.00085487449685024773;
	setAttr -s 4 ".wl[77].w[0:3]"  0.75638117601113009 0.23773763827343183 
		0.0049096757448422379 0.00097150997059587891;
	setAttr -s 4 ".wl[78].w[0:3]"  0.95542021062266413 0.04063919407305424 
		0.0030986238839586042 0.00084197142032299695;
	setAttr -s 4 ".wl[79].w[0:3]"  0.75772511042195334 0.23645888376902274 
		0.004855635158373151 0.00096037065065076709;
	setAttr -s 4 ".wl[80].w[0:3]"  0.95589750576185595 0.040208788361648574 
		0.0030619358130723529 0.00083177006342313536;
	setAttr -s 4 ".wl[81].w[0:3]"  0.75859426894995063 0.23563151155869869 
		0.0048209861188110506 0.00095323337253951058;
	setAttr -s 4 ".wl[82].w[0:3]"  0.95620371142961302 0.039932613106600102 
		0.0030384368525927991 0.000825238611194156;
	setAttr -s 4 ".wl[83].w[0:3]"  0.7588949310539832 0.23534523778158031 
		0.0048090546430948292 0.0009507765213417125;
	setAttr -s 4 ".wl[84].w[0:3]"  0.95630918611221283 0.039837473342362657 
		0.0030303493557165269 0.00082299118970794501;
	setAttr -s 4 ".wl[85].w[0:3]"  0.75859412809333826 0.23563164568170086 
		0.0048209917156537612 0.00095323450930722851;
	setAttr -s 4 ".wl[86].w[0:3]"  0.95620366883835517 0.039932651531490192 
		0.0030384401197487035 0.00082523951040593992;
	setAttr -s 4 ".wl[87].w[0:3]"  0.75772479963555672 0.23645917959631879 
		0.0048556475911271024 0.00096037317699741243;
	setAttr -s 4 ".wl[88].w[0:3]"  0.9558974194716674 0.040208866199583422 
		0.0030619424407438986 0.00083177188800534301;
	setAttr -s 4 ".wl[89].w[0:3]"  0.75638075097265123 0.23773804263510775 
		0.0049096929276929531 0.00097151346454801217;
	setAttr -s 4 ".wl[90].w[0:3]"  0.95542006613664843 0.040639324377353368 
		0.0030986350033685634 0.00084197448262956251;
	setAttr -s 4 ".wl[91].w[0:3]"  0.75470412623824956 0.23933237068192723 
		0.0049779140329115268 0.00098558904691170416;
	setAttr -s 4 ".wl[92].w[0:3]"  0.95481798936835027 0.041182114424197648 
		0.0031450176905280388 0.0008548785169241131;
	setAttr -s 4 ".wl[93].w[0:3]"  0.75286746267884153 0.24107760863635197 
		0.0050536883228731256 0.0010012403619334407;
	setAttr -s 4 ".wl[94].w[0:3]"  0.95414989664794148 0.041784238577918562 
		0.0031966206739589913 0.00086924410018097531;
	setAttr -s 4 ".wl[95].w[0:3]"  0.75105330841484752 0.24280012398296333 
		0.0051296242738210936 0.0010169433283679511;
	setAttr -s 4 ".wl[96].w[0:3]"  0.95348107140036664 0.042386831889938491 
		0.003248422063590153 0.00088367464610474868;
	setAttr -s 4 ".wl[97].w[0:3]"  0.74943576706967863 0.24433481741540836 
		0.005198262603217426 0.0010311529116956816;
	setAttr -s 4 ".wl[98].w[0:3]"  0.9528771377728098 0.042930795311751917 
		0.0032953194628128619 0.00089674745262548574;
	setAttr -s 4 ".wl[99].w[0:3]"  0.74816476345781457 0.24553995413332011 
		0.0052528235913668559 0.0010424588174986135;
	setAttr -s 4 ".wl[100].w[0:3]"  0.95239749503177018 0.043362698693426543 
		0.0033326477517084179 0.0009071585230948807;
	setAttr -s 4 ".wl[101].w[0:3]"  0.97305260731184406 0.022064901059394577 
		0.0036226191000418516 0.0012598725287195484;
	setAttr -s 4 ".wl[102].w[0:3]"  0.97308991826750724 0.022034730813926321 
		0.0036173556108122602 0.0012579953077541406;
	setAttr -s 4 ".wl[103].w[0:3]"  0.97308996977549334 0.022034689137200716 
		0.0036173483404483352 0.001257992746857583;
	setAttr -s 4 ".wl[104].w[0:3]"  0.97319833518007448 0.021947057685908787 
		0.0036020645742157625 0.0012525425598009846;
	setAttr -s 4 ".wl[105].w[0:3]"  0.97336694073147056 0.021810696230751575 
		0.0035782947908186069 0.0012440682469591869;
	setAttr -s 4 ".wl[106].w[0:3]"  0.97357910063981568 0.02163908233406996 
		0.0035484024411166562 0.0012334145849977748;
	setAttr -s 4 ".wl[107].w[0:3]"  0.97381390598999895 0.021449115117167475 
		0.0035153424388518397 0.0012216364539817249;
	setAttr -s 4 ".wl[108].w[0:3]"  0.97404830194774739 0.021259441697434451 
		0.0034823642043628538 0.00120989215045533;
	setAttr -s 4 ".wl[109].w[0:3]"  0.97425940387232968 0.021088585785827948 
		0.0034526839774901416 0.0011993263643523145;
	setAttr -s 4 ".wl[110].w[0:3]"  0.97442669255396663 0.020953168646457753 
		0.0034291776761249115 0.0011909611234506659;
	setAttr -s 4 ".wl[111].w[0:3]"  0.97453397785454754 0.020866313094409131 
		0.0034141091443978264 0.0011855999066454675;
	setAttr -s 4 ".wl[112].w[0:3]"  0.97457092335678042 0.020836401100444563 
		0.0034089212164518045 0.0011837543263233056;
	setAttr -s 4 ".wl[113].w[0:3]"  0.97453395042803648 0.020866335312477374 
		0.0034141129981739961 0.0011856012613121298;
	setAttr -s 4 ".wl[114].w[0:3]"  0.97442663667937857 0.020953213906159788 
		0.0034291855298822903 0.0011909638845794103;
	setAttr -s 4 ".wl[115].w[0:3]"  0.97425932294454565 0.021088651330213416 
		0.0034526953587488917 0.0011993303664920626;
	setAttr -s 4 ".wl[116].w[0:3]"  0.97404819997406356 0.021259524272791264 
		0.0034823785549380447 0.0012098971982069928;
	setAttr -s 4 ".wl[117].w[0:3]"  0.97381379951797453 0.021449201318520354 
		0.0035153574335007034 0.0012216417300044118;
	setAttr -s 4 ".wl[118].w[0:3]"  0.97357899691697891 0.021639166293418884 
		0.0035484170593361743 0.0012334197302660706;
	setAttr -s 4 ".wl[119].w[0:3]"  0.9733668432239424 0.021810775145282502 
		0.0035783085421886743 0.0012440730885864848;
	setAttr -s 4 ".wl[120].w[0:3]"  0.97319825596563247 0.021947121786586584 
		0.0036020757515964671 0.0012525464961845466;
	setAttr -s 4 ".pm";
	setAttr ".pm[0]" -type "matrix" 2.2204460492503121e-16 0.99999999999999978 0 -0 -0.99999999999999978 2.2204460492503121e-16 -0 0
		 0 -0 1 -0 9.8974758091821737 -0.014444681789841792 -0 1;
	setAttr ".pm[1]" -type "matrix" 2.2204460492503121e-16 0.99999999999999978 0 -0 -0.99999999999999978 2.2204460492503121e-16 -0 0
		 0 -0 1 -0 6.9921152082107634 -0.014444681789841145 -0 1;
	setAttr ".pm[2]" -type "matrix" 2.2204460492503121e-16 0.99999999999999978 0 -0 -0.99999999999999978 2.2204460492503121e-16 -0 0
		 0 -0 1 -0 3.9261062632123287 -0.014444681789840465 -0 1;
	setAttr ".pm[3]" -type "matrix" 0.99999999999999956 -0 0 -0 -0 0.99999999999999956 -0 0
		 0 -0 1 -0 0.00030185730807936133 -1.0879019656180584 -0 1;
	setAttr ".gm" -type "matrix" -1 5.6655388976479796e-16 0 0 -5.6655388976479796e-16 -1 0 0
		 0 0 1 0 0 5.4688592854394997 0 1;
	setAttr -s 4 ".ma";
	setAttr -s 4 ".dpf[0:3]"  3 3 3 3;
	setAttr -s 4 ".lw";
	setAttr -s 4 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 4;
	setAttr ".ucm" yes;
	setAttr -s 4 ".ifcl";
	setAttr -s 4 ".ifcl";
createNode tweak -n "tweak1";
	rename -uid "FA9E47B1-A346-7999-DF82-D8A143E91B19";
createNode objectSet -n "skinCluster1Set";
	rename -uid "DEF2B2B2-1F48-FCDB-EF47-4B8F4AF08715";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster1GroupId";
	rename -uid "B3ED2E90-7644-16F4-45A1-C7B2B49D42CA";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster1GroupParts";
	rename -uid "91C8BF71-8A43-567D-4A0F-4EA13C92923C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet1";
	rename -uid "5A922183-2947-5E0F-896B-A5A045B3CAC9";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId2";
	rename -uid "232C05C6-3445-ADAC-0794-09B7F2216876";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "79ACE80A-4746-78A5-85D7-A18E0EF11C86";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose1";
	rename -uid "6F25FD52-D044-2AD0-8EE3-B3BDCD53362F";
	setAttr -s 4 ".wm";
	setAttr -s 4 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.014444681789839597 9.8974758091821755
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.70710678118654746 0.70710678118654768 1
		 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.9053606009714108 -6.4685437028342505e-16
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.0660089449984338 -6.8079074488878908e-16
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.8382042975942703 -0.014746539097919583
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.70710678118654746 0.70710678118654768 1
		 1 1 yes;
	setAttr -s 4 ".m";
	setAttr -s 4 ".p";
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
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "skinCluster1GroupId.id" "pConeShape1.iog.og[2].gid";
connectAttr "skinCluster1Set.mwc" "pConeShape1.iog.og[2].gco";
connectAttr "groupId2.id" "pConeShape1.iog.og[3].gid";
connectAttr "tweakSet1.mwc" "pConeShape1.iog.og[3].gco";
connectAttr "skinCluster1.og[0]" "pConeShape1.i";
connectAttr "tweak1.vl[0].vt[0]" "pConeShape1.twl";
connectAttr "joint1.s" "joint2.is";
connectAttr "joint2.s" "joint3.is";
connectAttr "joint3.s" "joint4.is";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "skinCluster1GroupParts.og" "skinCluster1.ip[0].ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1.ip[0].gi";
connectAttr "bindPose1.msg" "skinCluster1.bp";
connectAttr "joint1.wm" "skinCluster1.ma[0]";
connectAttr "joint2.wm" "skinCluster1.ma[1]";
connectAttr "joint3.wm" "skinCluster1.ma[2]";
connectAttr "joint4.wm" "skinCluster1.ma[3]";
connectAttr "joint1.liw" "skinCluster1.lw[0]";
connectAttr "joint2.liw" "skinCluster1.lw[1]";
connectAttr "joint3.liw" "skinCluster1.lw[2]";
connectAttr "joint4.liw" "skinCluster1.lw[3]";
connectAttr "joint1.obcc" "skinCluster1.ifcl[0]";
connectAttr "joint2.obcc" "skinCluster1.ifcl[1]";
connectAttr "joint3.obcc" "skinCluster1.ifcl[2]";
connectAttr "joint4.obcc" "skinCluster1.ifcl[3]";
connectAttr "groupParts2.og" "tweak1.ip[0].ig";
connectAttr "groupId2.id" "tweak1.ip[0].gi";
connectAttr "skinCluster1GroupId.msg" "skinCluster1Set.gn" -na;
connectAttr "pConeShape1.iog.og[2]" "skinCluster1Set.dsm" -na;
connectAttr "skinCluster1.msg" "skinCluster1Set.ub[0]";
connectAttr "tweak1.og[0]" "skinCluster1GroupParts.ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1GroupParts.gi";
connectAttr "groupId2.msg" "tweakSet1.gn" -na;
connectAttr "pConeShape1.iog.og[3]" "tweakSet1.dsm" -na;
connectAttr "tweak1.msg" "tweakSet1.ub[0]";
connectAttr "pConeShape1Orig.w" "groupParts2.ig";
connectAttr "groupId2.id" "groupParts2.gi";
connectAttr "joint1.msg" "bindPose1.m[0]";
connectAttr "joint2.msg" "bindPose1.m[1]";
connectAttr "joint3.msg" "bindPose1.m[2]";
connectAttr "joint4.msg" "bindPose1.m[3]";
connectAttr "bindPose1.w" "bindPose1.p[0]";
connectAttr "bindPose1.m[0]" "bindPose1.p[1]";
connectAttr "bindPose1.m[1]" "bindPose1.p[2]";
connectAttr "bindPose1.m[2]" "bindPose1.p[3]";
connectAttr "joint1.bps" "bindPose1.wm[0]";
connectAttr "joint2.bps" "bindPose1.wm[1]";
connectAttr "joint3.bps" "bindPose1.wm[2]";
connectAttr "joint4.bps" "bindPose1.wm[3]";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pConeShape1.iog" ":initialShadingGroup.dsm" -na;
// End of tail.ma
