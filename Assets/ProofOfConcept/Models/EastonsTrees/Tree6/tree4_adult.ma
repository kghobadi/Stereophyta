//Maya ASCII 2016 scene
//Name: tree4_adult.ma
//Last modified: Thu, Nov 30, 2017 11:50:01 AM
//Codeset: UTF-8
requires maya "2016";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2016";
fileInfo "version" "2016";
fileInfo "cutIdentifier" "201502261600-953408";
fileInfo "osv" "Mac OS X 10.9.6";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "043ED502-0B43-491A-246E-FF97FB6C5528";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -3.1120096570952436 0.9731902403502547 -3.909679120765658 ;
	setAttr ".r" -type "double3" 360.26164727803598 -1941.3999999999435 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "1724BCAB-F14D-8403-B480-1C84DD230844";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 5.0179915712520273;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0.018580257892608643 0.99610535353422158 0.011943131685256958 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "3666552C-9946-37AE-8FAE-958904B5E3C6";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "ADEBDC07-2C45-F83E-5868-4092FEE3B532";
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
	rename -uid "D5731E72-B84E-81C9-5D51-4A82B32989DB";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 9.5242110934035118e-09 1.9275812599686564 100.11855756808298 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "463CF1CA-214C-57C2-94B3-6DBC413BEF24";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 8.1166417107343687;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "58D593D4-E642-6364-DA0E-7AA3D8F2C8B1";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "58EB6EC4-034E-4432-F5FF-36AC8E9B7E87";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "pCylinder1";
	rename -uid "CF9F8C0C-F64D-B66F-1E56-1BAB124D1C66";
	setAttr -av ".v";
	setAttr ".t" -type "double3" 0 0.59254851677481146 0 ;
createNode transform -n "transform6" -p "pCylinder1";
	rename -uid "15AE7148-F640-31B8-4933-6EB2E499E3C0";
	setAttr ".v" no;
createNode mesh -n "pCylinderShape1" -p "transform6";
	rename -uid "14B79EC1-3147-8A1B-78F9-7AA55DD0B1C1";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr -av ".iog[0].og[0].gid";
	setAttr -av ".iog[0].og[1].gid";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.41145835816860199 0.76609492301940918 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt";
	setAttr ".pt[47]" -type "float3" 0 -0.081604563 0 ;
	setAttr ".pt[102]" -type "float3" 0 -0.081604563 0 ;
	setAttr ".pt[157]" -type "float3" 0 -0.081604563 0 ;
	setAttr ".pt[212]" -type "float3" 0 -0.081604563 0 ;
createNode transform -n "pPyramid1";
	rename -uid "3EB85D91-ED45-A660-4281-86B71615C3F4";
	setAttr ".t" -type "double3" 0 1 -0.26479318737983704 ;
	setAttr ".s" -type "double3" 0.17758964219035492 0.17758964219035492 0.17758964219035492 ;
createNode transform -n "transform4" -p "pPyramid1";
	rename -uid "B5B3808F-1A42-1CB2-4740-A6AE1F6F28F5";
	setAttr ".v" no;
createNode mesh -n "pPyramidShape1" -p "transform4";
	rename -uid "09E4C9A5-C84D-C36A-C483-FD80DAA7AAD7";
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
createNode transform -n "group";
	rename -uid "39FFFD9E-584C-DA41-BA91-41B8E2BAE38E";
createNode transform -n "pasted__pPyramid1" -p "group";
	rename -uid "7A5296E3-C64B-434F-9BC3-B6BB83375E72";
	setAttr ".t" -type "double3" 0.26479318737983704 1 0 ;
	setAttr ".s" -type "double3" 0.17758964219035492 0.17758964219035492 0.17758964219035492 ;
createNode transform -n "transform1" -p "|group|pasted__pPyramid1";
	rename -uid "3F2113AC-CB4F-3CAA-788D-D18A390B8982";
	setAttr ".v" no;
createNode mesh -n "pasted__pPyramidShape1" -p "transform1";
	rename -uid "5C04F4A7-B745-9B9B-1A39-30A51A14F0E6";
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
createNode transform -n "group1";
	rename -uid "5B8BC803-C24A-0086-8F2B-0683B9FE0AF7";
createNode transform -n "pasted__pPyramid1" -p "group1";
	rename -uid "B6E959BE-F641-0A26-5326-13AD0CA0638F";
	setAttr ".t" -type "double3" 0 1 0.26479318737983704 ;
	setAttr ".s" -type "double3" 0.17758964219035492 0.17758964219035492 0.17758964219035492 ;
createNode transform -n "transform2" -p "|group1|pasted__pPyramid1";
	rename -uid "A016D081-F348-334E-1638-3AB153336827";
	setAttr ".v" no;
createNode mesh -n "pasted__pPyramidShape1" -p "transform2";
	rename -uid "A6C2BC73-5E42-D210-A042-11A614924984";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 1 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "group2";
	rename -uid "0B340949-EC48-FE3F-ACA1-F7BB60D8DDF1";
createNode transform -n "group3";
	rename -uid "5F4DD425-D548-87A9-F918-67871F3A676B";
	setAttr ".t" -type "double3" -0.25 0 0 ;
createNode transform -n "pasted__pPyramid1" -p "group3";
	rename -uid "1B122170-C54D-D5EE-A666-148BF6AFA5A8";
	setAttr ".t" -type "double3" -0.014793187379837036 1 0 ;
	setAttr ".s" -type "double3" 0.17758964219035492 0.17758964219035492 0.17758964219035492 ;
createNode transform -n "transform3" -p "|group3|pasted__pPyramid1";
	rename -uid "F3A4B976-654C-7ADC-A6B2-F48276D45B84";
	setAttr ".v" no;
createNode mesh -n "pasted__pPyramidShape1" -p "transform3";
	rename -uid "EA2F2BE2-674D-2EE9-619A-03A0929DFB83";
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
createNode transform -n "pPyramid2";
	rename -uid "CE8AA6CE-B44E-7CC5-7BB3-7F9F24A0D289";
createNode transform -n "transform5" -p "pPyramid2";
	rename -uid "D73C7BB1-7149-D9D8-7B87-F68D23E105E5";
	setAttr ".v" no;
createNode mesh -n "pPyramid2Shape" -p "transform5";
	rename -uid "60CEC357-7F4F-0F84-53EB-5DB1ADBC3E0A";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 1 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt";
	setAttr ".pt[4]" -type "float3" 0 0.0109905 0 ;
	setAttr ".pt[9]" -type "float3" 0 0.0109905 0 ;
	setAttr ".pt[14]" -type "float3" 0 0.0109905 0 ;
	setAttr ".pt[19]" -type "float3" 0 0.0109905 0 ;
createNode transform -n "group4";
	rename -uid "21DE4079-DA4A-2360-2595-8C8B14D5249F";
	setAttr ".t" -type "double3" 0 0.10000000000000009 0 ;
	setAttr ".s" -type "double3" 1 1.1 1 ;
	setAttr ".rp" -type "double3" 0.018580228090286255 1.2020639032125473 0 ;
	setAttr ".sp" -type "double3" 0.018580228090286255 1.2020639032125473 0 ;
createNode transform -n "pasted__group4_pasted__pPyramid4" -p "group4";
	rename -uid "D75874D9-9842-B4B3-9BBE-30BD46BE1088";
	setAttr ".t" -type "double3" -0.5 0 0 ;
	setAttr ".r" -type "double3" 0 -90 0 ;
	setAttr ".s" -type "double3" 1 0.9 1 ;
createNode transform -n "pasted__transform8" -p "pasted__group4_pasted__pPyramid4";
	rename -uid "6C7940A1-7C47-8FCE-2EFC-CFBF14F91C8F";
	setAttr ".v" no;
createNode mesh -n "pasted__group4_pasted__pPyramid4Shape" -p "pasted__transform8";
	rename -uid "2289DB7E-1942-61C9-3273-ABB24F0C0FB6";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:41]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 64 ".uvst[0].uvsp[0:63]" -type "float2" 0.375 0.033493623
		 0.375 0.46650636 0.75 0.25 0.25 0.5 0.41666669 0.5 0.58333337 0.5 0.75000006 0.5
		 0.5 1 0.375 0.033493623 0.75 0.25 0.375 0.46650636 0.25 0.5 0.41666669 0.5 0.5 1
		 0.58333337 0.5 0.75000006 0.5 0.4375 0.14174682 0.4375 0.35825318 0.375 0.46650636
		 0.375 0.033493623 0.625 0.25 0.75 0.25 0.25 0.5 0.41666669 0.5 0.42708334 0.5625
		 0.28125 0.5625 0.58333337 0.5 0.57291669 0.5625 0.75000006 0.5 0.71875 0.5625 0.4375
		 0.625 0.3125 0.625 0.5625 0.625 0.6875 0.625 0.44791669 0.6875 0.34375 0.6875 0.55208337
		 0.6875 0.65625006 0.6875 0.45833334 0.75 0.375 0.75 0.54166669 0.75 0.625 0.75 0.46875
		 0.8125 0.40625 0.8125 0.53125 0.8125 0.59375 0.8125 0.47916669 0.875 0.4375 0.875
		 0.52083337 0.875 0.56250006 0.875 0.48958334 0.9375 0.46875 0.9375 0.51041669 0.9375
		 0.53125 0.9375 0.5 0.25 0.5 1 0.375 0.033493623 0.75 0.25 0.375 0.46650636 0.25 0.5
		 0.41666669 0.5 0.5 1 0.58333337 0.5 0.75000006 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 41 ".vt[0:40]"  -0.10396932 -0.01655145 0.20000003 -0.10396932 -0.016551472 -0.19999999
		 -0.043815829 0.32459596 9.2517868e-18 -0.11608185 0.10283566 -9.2517868e-18 0.21471757 0.98344857 -0.027291484
		 -0.13169259 0.98344857 0.17270854 0.011435729 1.32459593 0.020614088 0.047568738 1.10283566 0.083198294
		 -0.028867511 0.025255084 -0.050000008 -0.028867517 0.025255084 0.049999997 0.057735026 0.025255084 0
		 -0.057735022 0.025255084 -0.10000002 -0.057735033 0.025255084 0.099999994 0.11547005 0.025255084 0
		 -0.050518144 0.33144128 -0.087500013 -0.050518155 0.33144128 0.087499999 0.1010363 0.33144128 0
		 -0.043301266 0.63762754 -0.07500001 -0.043301281 0.63762754 0.075000003 0.086602546 0.63762754 0
		 -0.036084395 0.9438138 -0.062500015 -0.036084399 0.9438138 0.062500007 0.07216879 0.9438138 0
		 -0.028867517 1.25 -0.050000019 -0.028867522 1.25 0.050000008 0.057735037 1.25 0 -0.021650638 1.5561862 -0.037500016
		 -0.021650644 1.5561862 0.037500009 0.043301281 1.5561862 0 -0.014433761 1.8623724 -0.025000012
		 -0.014433764 1.8623724 0.02500001 0.028867526 1.8623724 0 -0.0072168834 2.1685586 -0.012500012
		 -0.0072168852 2.1685586 0.01250001 0.014433769 2.1685586 0 0 0.025255084 0 0 2.4747448 0
		 -0.14039665 1.8834486 -0.15606943 0.2060135 1.88344848 0.043930575 0.0027317014 2.22459602 -0.0039749667
		 0.038864709 2.0028357506 -0.066559173;
	setAttr -s 75 ".ed[0:74]"  0 1 0 1 2 0 2 0 0 0 3 0 1 3 0 2 3 0 4 5 0
		 5 6 0 6 4 0 4 7 0 5 7 0 6 7 0 8 9 1 9 10 1 10 8 1 11 12 0 12 13 0 13 11 0 14 15 1
		 15 16 1 16 14 1 17 18 1 18 19 1 19 17 1 20 21 1 21 22 1 22 20 1 23 24 1 24 25 1 25 23 1
		 26 27 1 27 28 1 28 26 1 29 30 1 30 31 1 31 29 1 32 33 1 33 34 1 34 32 1 8 11 1 9 12 1
		 10 13 1 11 14 0 12 15 0 13 16 0 14 17 0 15 18 0 16 19 0 17 20 0 18 21 0 19 22 0 20 23 0
		 21 24 0 22 25 0 23 26 0 24 27 0 25 28 0 26 29 0 27 30 0 28 31 0 29 32 0 30 33 0 31 34 0
		 35 8 1 35 9 1 35 10 1 32 36 0 33 36 0 34 36 0 37 38 0 38 39 0 39 37 0 37 40 0 38 40 0
		 39 40 0;
	setAttr -s 42 -ch 150 ".fc[0:41]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 -5 -1
		mu 0 3 3 7 4
		f 3 4 -6 -2
		mu 0 3 4 7 5
		f 3 5 -4 -3
		mu 0 3 5 7 6
		f 3 6 7 8
		mu 0 3 8 10 9
		f 3 9 -11 -7
		mu 0 3 11 13 12
		f 3 10 -12 -8
		mu 0 3 12 13 14
		f 3 11 -10 -9
		mu 0 3 14 13 15
		f 4 12 40 -16 -40
		mu 0 4 16 17 18 19
		f 4 13 41 -17 -41
		mu 0 4 17 20 21 18
		f 4 14 39 -18 -42
		mu 0 4 20 16 19 21
		f 4 15 43 -19 -43
		mu 0 4 22 23 24 25
		f 4 16 44 -20 -44
		mu 0 4 23 26 27 24
		f 4 17 42 -21 -45
		mu 0 4 26 28 29 27
		f 4 18 46 -22 -46
		mu 0 4 25 24 30 31
		f 4 19 47 -23 -47
		mu 0 4 24 27 32 30
		f 4 20 45 -24 -48
		mu 0 4 27 29 33 32
		f 4 21 49 -25 -49
		mu 0 4 31 30 34 35
		f 4 22 50 -26 -50
		mu 0 4 30 32 36 34
		f 4 23 48 -27 -51
		mu 0 4 32 33 37 36
		f 4 24 52 -28 -52
		mu 0 4 35 34 38 39
		f 4 25 53 -29 -53
		mu 0 4 34 36 40 38
		f 4 26 51 -30 -54
		mu 0 4 36 37 41 40
		f 4 27 55 -31 -55
		mu 0 4 39 38 42 43
		f 4 28 56 -32 -56
		mu 0 4 38 40 44 42
		f 4 29 54 -33 -57
		mu 0 4 40 41 45 44
		f 4 30 58 -34 -58
		mu 0 4 43 42 46 47
		f 4 31 59 -35 -59
		mu 0 4 42 44 48 46
		f 4 32 57 -36 -60
		mu 0 4 44 45 49 48
		f 4 33 61 -37 -61
		mu 0 4 47 46 50 51
		f 4 34 62 -38 -62
		mu 0 4 46 48 52 50
		f 4 35 60 -39 -63
		mu 0 4 48 49 53 52
		f 3 -13 -64 64
		mu 0 3 17 16 54
		f 3 -14 -65 65
		mu 0 3 20 17 54
		f 3 -15 -66 63
		mu 0 3 16 20 54
		f 3 36 67 -67
		mu 0 3 51 50 55
		f 3 37 68 -68
		mu 0 3 50 52 55
		f 3 38 66 -69
		mu 0 3 52 53 55
		f 3 69 70 71
		mu 0 3 56 58 57
		f 3 72 -74 -70
		mu 0 3 59 61 60
		f 3 73 -75 -71
		mu 0 3 60 61 62
		f 3 74 -73 -72
		mu 0 3 62 61 63;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pasted__group" -p "group4";
	rename -uid "B15ED6DA-6748-900C-3E7A-E1A824B2F1FB";
	setAttr ".t" -type "double3" 0.5 -0.10000000000000009 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
	setAttr ".s" -type "double3" 1 0.9 1 ;
	setAttr ".rp" -type "double3" 0.03716045618057251 1.2290966622531414 2.2351741790771484e-08 ;
	setAttr ".sp" -type "double3" 0.03716045618057251 1.2290966622531414 2.2351741790771484e-08 ;
createNode transform -n "pasted__pasted__group4_pasted__pPyramid4" -p "pasted__group";
	rename -uid "A474850A-FD4C-1205-9587-28A9EDB1F9CE";
createNode transform -n "pasted__transform10" -p "|group4|pasted__group|pasted__pasted__group4_pasted__pPyramid4";
	rename -uid "EB190F24-624F-6DD8-C7A4-06922A5ACE3A";
	setAttr ".v" no;
createNode mesh -n "pasted__pasted__group4_pasted__pPyramid4Shape" -p "pasted__transform10";
	rename -uid "A0A47577-2D44-88ED-8DCE-BB97AADF3E39";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:41]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 64 ".uvst[0].uvsp[0:63]" -type "float2" 0.375 0.033493623
		 0.375 0.46650636 0.75 0.25 0.25 0.5 0.41666669 0.5 0.58333337 0.5 0.75000006 0.5
		 0.5 1 0.375 0.033493623 0.75 0.25 0.375 0.46650636 0.25 0.5 0.41666669 0.5 0.5 1
		 0.58333337 0.5 0.75000006 0.5 0.4375 0.14174682 0.4375 0.35825318 0.375 0.46650636
		 0.375 0.033493623 0.625 0.25 0.75 0.25 0.25 0.5 0.41666669 0.5 0.42708334 0.5625
		 0.28125 0.5625 0.58333337 0.5 0.57291669 0.5625 0.75000006 0.5 0.71875 0.5625 0.4375
		 0.625 0.3125 0.625 0.5625 0.625 0.6875 0.625 0.44791669 0.6875 0.34375 0.6875 0.55208337
		 0.6875 0.65625006 0.6875 0.45833334 0.75 0.375 0.75 0.54166669 0.75 0.625 0.75 0.46875
		 0.8125 0.40625 0.8125 0.53125 0.8125 0.59375 0.8125 0.47916669 0.875 0.4375 0.875
		 0.52083337 0.875 0.56250006 0.875 0.48958334 0.9375 0.46875 0.9375 0.51041669 0.9375
		 0.53125 0.9375 0.5 0.25 0.5 1 0.375 0.033493623 0.75 0.25 0.375 0.46650636 0.25 0.5
		 0.41666669 0.5 0.5 1 0.58333337 0.5 0.75000006 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 41 ".vt[0:40]"  -0.10396932 -0.01655145 0.20000003 -0.10396932 -0.016551472 -0.19999999
		 -0.043815829 0.32459596 9.2517868e-18 -0.11608185 0.10283566 -9.2517868e-18 0.21471757 0.98344857 -0.027291484
		 -0.13169259 0.98344857 0.17270854 0.011435729 1.32459593 0.020614088 0.047568738 1.10283566 0.083198294
		 -0.028867511 0.025255084 -0.050000008 -0.028867517 0.025255084 0.049999997 0.057735026 0.025255084 0
		 -0.057735022 0.025255084 -0.10000002 -0.057735033 0.025255084 0.099999994 0.11547005 0.025255084 0
		 -0.050518144 0.33144128 -0.087500013 -0.050518155 0.33144128 0.087499999 0.1010363 0.33144128 0
		 -0.043301266 0.63762754 -0.07500001 -0.043301281 0.63762754 0.075000003 0.086602546 0.63762754 0
		 -0.036084395 0.9438138 -0.062500015 -0.036084399 0.9438138 0.062500007 0.07216879 0.9438138 0
		 -0.028867517 1.25 -0.050000019 -0.028867522 1.25 0.050000008 0.057735037 1.25 0 -0.021650638 1.5561862 -0.037500016
		 -0.021650644 1.5561862 0.037500009 0.043301281 1.5561862 0 -0.014433761 1.8623724 -0.025000012
		 -0.014433764 1.8623724 0.02500001 0.028867526 1.8623724 0 -0.0072168834 2.1685586 -0.012500012
		 -0.0072168852 2.1685586 0.01250001 0.014433769 2.1685586 0 0 0.025255084 0 0 2.4747448 0
		 -0.14039665 1.8834486 -0.15606943 0.2060135 1.88344848 0.043930575 0.0027317014 2.22459602 -0.0039749667
		 0.038864709 2.0028357506 -0.066559173;
	setAttr -s 75 ".ed[0:74]"  0 1 0 1 2 0 2 0 0 0 3 0 1 3 0 2 3 0 4 5 0
		 5 6 0 6 4 0 4 7 0 5 7 0 6 7 0 8 9 1 9 10 1 10 8 1 11 12 0 12 13 0 13 11 0 14 15 1
		 15 16 1 16 14 1 17 18 1 18 19 1 19 17 1 20 21 1 21 22 1 22 20 1 23 24 1 24 25 1 25 23 1
		 26 27 1 27 28 1 28 26 1 29 30 1 30 31 1 31 29 1 32 33 1 33 34 1 34 32 1 8 11 1 9 12 1
		 10 13 1 11 14 0 12 15 0 13 16 0 14 17 0 15 18 0 16 19 0 17 20 0 18 21 0 19 22 0 20 23 0
		 21 24 0 22 25 0 23 26 0 24 27 0 25 28 0 26 29 0 27 30 0 28 31 0 29 32 0 30 33 0 31 34 0
		 35 8 1 35 9 1 35 10 1 32 36 0 33 36 0 34 36 0 37 38 0 38 39 0 39 37 0 37 40 0 38 40 0
		 39 40 0;
	setAttr -s 42 -ch 150 ".fc[0:41]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 -5 -1
		mu 0 3 3 7 4
		f 3 4 -6 -2
		mu 0 3 4 7 5
		f 3 5 -4 -3
		mu 0 3 5 7 6
		f 3 6 7 8
		mu 0 3 8 10 9
		f 3 9 -11 -7
		mu 0 3 11 13 12
		f 3 10 -12 -8
		mu 0 3 12 13 14
		f 3 11 -10 -9
		mu 0 3 14 13 15
		f 4 12 40 -16 -40
		mu 0 4 16 17 18 19
		f 4 13 41 -17 -41
		mu 0 4 17 20 21 18
		f 4 14 39 -18 -42
		mu 0 4 20 16 19 21
		f 4 15 43 -19 -43
		mu 0 4 22 23 24 25
		f 4 16 44 -20 -44
		mu 0 4 23 26 27 24
		f 4 17 42 -21 -45
		mu 0 4 26 28 29 27
		f 4 18 46 -22 -46
		mu 0 4 25 24 30 31
		f 4 19 47 -23 -47
		mu 0 4 24 27 32 30
		f 4 20 45 -24 -48
		mu 0 4 27 29 33 32
		f 4 21 49 -25 -49
		mu 0 4 31 30 34 35
		f 4 22 50 -26 -50
		mu 0 4 30 32 36 34
		f 4 23 48 -27 -51
		mu 0 4 32 33 37 36
		f 4 24 52 -28 -52
		mu 0 4 35 34 38 39
		f 4 25 53 -29 -53
		mu 0 4 34 36 40 38
		f 4 26 51 -30 -54
		mu 0 4 36 37 41 40
		f 4 27 55 -31 -55
		mu 0 4 39 38 42 43
		f 4 28 56 -32 -56
		mu 0 4 38 40 44 42
		f 4 29 54 -33 -57
		mu 0 4 40 41 45 44
		f 4 30 58 -34 -58
		mu 0 4 43 42 46 47
		f 4 31 59 -35 -59
		mu 0 4 42 44 48 46
		f 4 32 57 -36 -60
		mu 0 4 44 45 49 48
		f 4 33 61 -37 -61
		mu 0 4 47 46 50 51
		f 4 34 62 -38 -62
		mu 0 4 46 48 52 50
		f 4 35 60 -39 -63
		mu 0 4 48 49 53 52
		f 3 -13 -64 64
		mu 0 3 17 16 54
		f 3 -14 -65 65
		mu 0 3 20 17 54
		f 3 -15 -66 63
		mu 0 3 16 20 54
		f 3 36 67 -67
		mu 0 3 51 50 55
		f 3 37 68 -68
		mu 0 3 50 52 55
		f 3 38 66 -69
		mu 0 3 52 53 55
		f 3 69 70 71
		mu 0 3 56 58 57
		f 3 72 -74 -70
		mu 0 3 59 61 60
		f 3 73 -75 -71
		mu 0 3 60 61 62
		f 3 74 -73 -72
		mu 0 3 62 61 63;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pasted__group5" -p "group4";
	rename -uid "98B268B2-D946-6729-CF8D-0DB2F6CA34F1";
	setAttr ".rp" -type "double3" 0.03716045618057251 1.2290966622531414 2.2351741790771484e-08 ;
	setAttr ".sp" -type "double3" 0.03716045618057251 1.2290966622531414 2.2351741790771484e-08 ;
createNode transform -n "pasted__pasted__group4_pasted__pPyramid4" -p "pasted__group5";
	rename -uid "E0777C6D-2E45-A60B-3FB0-799F505EB046";
createNode transform -n "pasted__transform14" -p "|group4|pasted__group5|pasted__pasted__group4_pasted__pPyramid4";
	rename -uid "84AC4170-1343-C5FF-BD27-FAA025E6DF0C";
	setAttr ".v" no;
createNode mesh -n "pasted__pasted__group4_pasted__pPyramid4Shape" -p "pasted__transform14";
	rename -uid "803413B8-AD4B-A664-1361-DCBCAD12E699";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:41]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 64 ".uvst[0].uvsp[0:63]" -type "float2" 0.375 0.033493623
		 0.375 0.46650636 0.75 0.25 0.25 0.5 0.41666669 0.5 0.58333337 0.5 0.75000006 0.5
		 0.5 1 0.375 0.033493623 0.75 0.25 0.375 0.46650636 0.25 0.5 0.41666669 0.5 0.5 1
		 0.58333337 0.5 0.75000006 0.5 0.4375 0.14174682 0.4375 0.35825318 0.375 0.46650636
		 0.375 0.033493623 0.625 0.25 0.75 0.25 0.25 0.5 0.41666669 0.5 0.42708334 0.5625
		 0.28125 0.5625 0.58333337 0.5 0.57291669 0.5625 0.75000006 0.5 0.71875 0.5625 0.4375
		 0.625 0.3125 0.625 0.5625 0.625 0.6875 0.625 0.44791669 0.6875 0.34375 0.6875 0.55208337
		 0.6875 0.65625006 0.6875 0.45833334 0.75 0.375 0.75 0.54166669 0.75 0.625 0.75 0.46875
		 0.8125 0.40625 0.8125 0.53125 0.8125 0.59375 0.8125 0.47916669 0.875 0.4375 0.875
		 0.52083337 0.875 0.56250006 0.875 0.48958334 0.9375 0.46875 0.9375 0.51041669 0.9375
		 0.53125 0.9375 0.5 0.25 0.5 1 0.375 0.033493623 0.75 0.25 0.375 0.46650636 0.25 0.5
		 0.41666669 0.5 0.5 1 0.58333337 0.5 0.75000006 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 41 ".vt[0:40]"  -0.10396932 -0.01655145 0.20000003 -0.10396932 -0.016551472 -0.19999999
		 -0.043815829 0.32459596 9.2517868e-18 -0.11608185 0.10283566 -9.2517868e-18 0.21471757 0.98344857 -0.027291484
		 -0.13169259 0.98344857 0.17270854 0.011435729 1.32459593 0.020614088 0.047568738 1.10283566 0.083198294
		 -0.028867511 0.025255084 -0.050000008 -0.028867517 0.025255084 0.049999997 0.057735026 0.025255084 0
		 -0.057735022 0.025255084 -0.10000002 -0.057735033 0.025255084 0.099999994 0.11547005 0.025255084 0
		 -0.050518144 0.33144128 -0.087500013 -0.050518155 0.33144128 0.087499999 0.1010363 0.33144128 0
		 -0.043301266 0.63762754 -0.07500001 -0.043301281 0.63762754 0.075000003 0.086602546 0.63762754 0
		 -0.036084395 0.9438138 -0.062500015 -0.036084399 0.9438138 0.062500007 0.07216879 0.9438138 0
		 -0.028867517 1.25 -0.050000019 -0.028867522 1.25 0.050000008 0.057735037 1.25 0 -0.021650638 1.5561862 -0.037500016
		 -0.021650644 1.5561862 0.037500009 0.043301281 1.5561862 0 -0.014433761 1.8623724 -0.025000012
		 -0.014433764 1.8623724 0.02500001 0.028867526 1.8623724 0 -0.0072168834 2.1685586 -0.012500012
		 -0.0072168852 2.1685586 0.01250001 0.014433769 2.1685586 0 0 0.025255084 0 0 2.4747448 0
		 -0.14039665 1.8834486 -0.15606943 0.2060135 1.88344848 0.043930575 0.0027317014 2.22459602 -0.0039749667
		 0.038864709 2.0028357506 -0.066559173;
	setAttr -s 75 ".ed[0:74]"  0 1 0 1 2 0 2 0 0 0 3 0 1 3 0 2 3 0 4 5 0
		 5 6 0 6 4 0 4 7 0 5 7 0 6 7 0 8 9 1 9 10 1 10 8 1 11 12 0 12 13 0 13 11 0 14 15 1
		 15 16 1 16 14 1 17 18 1 18 19 1 19 17 1 20 21 1 21 22 1 22 20 1 23 24 1 24 25 1 25 23 1
		 26 27 1 27 28 1 28 26 1 29 30 1 30 31 1 31 29 1 32 33 1 33 34 1 34 32 1 8 11 1 9 12 1
		 10 13 1 11 14 0 12 15 0 13 16 0 14 17 0 15 18 0 16 19 0 17 20 0 18 21 0 19 22 0 20 23 0
		 21 24 0 22 25 0 23 26 0 24 27 0 25 28 0 26 29 0 27 30 0 28 31 0 29 32 0 30 33 0 31 34 0
		 35 8 1 35 9 1 35 10 1 32 36 0 33 36 0 34 36 0 37 38 0 38 39 0 39 37 0 37 40 0 38 40 0
		 39 40 0;
	setAttr -s 42 -ch 150 ".fc[0:41]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 -5 -1
		mu 0 3 3 7 4
		f 3 4 -6 -2
		mu 0 3 4 7 5
		f 3 5 -4 -3
		mu 0 3 5 7 6
		f 3 6 7 8
		mu 0 3 8 10 9
		f 3 9 -11 -7
		mu 0 3 11 13 12
		f 3 10 -12 -8
		mu 0 3 12 13 14
		f 3 11 -10 -9
		mu 0 3 14 13 15
		f 4 12 40 -16 -40
		mu 0 4 16 17 18 19
		f 4 13 41 -17 -41
		mu 0 4 17 20 21 18
		f 4 14 39 -18 -42
		mu 0 4 20 16 19 21
		f 4 15 43 -19 -43
		mu 0 4 22 23 24 25
		f 4 16 44 -20 -44
		mu 0 4 23 26 27 24
		f 4 17 42 -21 -45
		mu 0 4 26 28 29 27
		f 4 18 46 -22 -46
		mu 0 4 25 24 30 31
		f 4 19 47 -23 -47
		mu 0 4 24 27 32 30
		f 4 20 45 -24 -48
		mu 0 4 27 29 33 32
		f 4 21 49 -25 -49
		mu 0 4 31 30 34 35
		f 4 22 50 -26 -50
		mu 0 4 30 32 36 34
		f 4 23 48 -27 -51
		mu 0 4 32 33 37 36
		f 4 24 52 -28 -52
		mu 0 4 35 34 38 39
		f 4 25 53 -29 -53
		mu 0 4 34 36 40 38
		f 4 26 51 -30 -54
		mu 0 4 36 37 41 40
		f 4 27 55 -31 -55
		mu 0 4 39 38 42 43
		f 4 28 56 -32 -56
		mu 0 4 38 40 44 42
		f 4 29 54 -33 -57
		mu 0 4 40 41 45 44
		f 4 30 58 -34 -58
		mu 0 4 43 42 46 47
		f 4 31 59 -35 -59
		mu 0 4 42 44 48 46
		f 4 32 57 -36 -60
		mu 0 4 44 45 49 48
		f 4 33 61 -37 -61
		mu 0 4 47 46 50 51
		f 4 34 62 -38 -62
		mu 0 4 46 48 52 50
		f 4 35 60 -39 -63
		mu 0 4 48 49 53 52
		f 3 -13 -64 64
		mu 0 3 17 16 54
		f 3 -14 -65 65
		mu 0 3 20 17 54
		f 3 -15 -66 63
		mu 0 3 16 20 54
		f 3 36 67 -67
		mu 0 3 51 50 55
		f 3 37 68 -68
		mu 0 3 50 52 55
		f 3 38 66 -69
		mu 0 3 52 53 55
		f 3 69 70 71
		mu 0 3 56 58 57
		f 3 72 -74 -70
		mu 0 3 59 61 60
		f 3 73 -75 -71
		mu 0 3 60 61 62
		f 3 74 -73 -72
		mu 0 3 62 61 63;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pasted__group6" -p "group4";
	rename -uid "B6541CDF-B246-E1FD-F2C5-658B7FDE6FA4";
	setAttr ".t" -type "double3" 0 0 0.5 ;
	setAttr ".rp" -type "double3" 0.03716045618057251 1.2290966622531414 2.2351741790771484e-08 ;
	setAttr ".sp" -type "double3" 0.03716045618057251 1.2290966622531414 2.2351741790771484e-08 ;
createNode transform -n "pasted__pasted__group5" -p "pasted__group6";
	rename -uid "4C09D563-C644-BD01-99A7-EB85058A792B";
	setAttr ".rp" -type "double3" 0.03716045618057251 1.2290966622531414 2.2351741790771484e-08 ;
	setAttr ".sp" -type "double3" 0.03716045618057251 1.2290966622531414 2.2351741790771484e-08 ;
createNode transform -n "pasted__pasted__pasted__group4_pasted__pPyramid4" -p "|group4|pasted__group6|pasted__pasted__group5";
	rename -uid "554ADBD2-694A-92C1-7D98-B580A69BB00A";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 0.9 1 ;
createNode transform -n "pasted__transform9" -p "|group4|pasted__group6|pasted__pasted__group5|pasted__pasted__pasted__group4_pasted__pPyramid4";
	rename -uid "950ECB29-1A4A-16D9-0DB7-C1A99AB6F344";
	setAttr ".v" no;
createNode mesh -n "pasted__pasted__pasted__group4_pasted__pPyramid4Shape" -p "pasted__transform9";
	rename -uid "9EE9B08A-314E-80D1-B564-E8864B11AC8C";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:41]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 64 ".uvst[0].uvsp[0:63]" -type "float2" 0.375 0.033493623
		 0.375 0.46650636 0.75 0.25 0.25 0.5 0.41666669 0.5 0.58333337 0.5 0.75000006 0.5
		 0.5 1 0.375 0.033493623 0.75 0.25 0.375 0.46650636 0.25 0.5 0.41666669 0.5 0.5 1
		 0.58333337 0.5 0.75000006 0.5 0.4375 0.14174682 0.4375 0.35825318 0.375 0.46650636
		 0.375 0.033493623 0.625 0.25 0.75 0.25 0.25 0.5 0.41666669 0.5 0.42708334 0.5625
		 0.28125 0.5625 0.58333337 0.5 0.57291669 0.5625 0.75000006 0.5 0.71875 0.5625 0.4375
		 0.625 0.3125 0.625 0.5625 0.625 0.6875 0.625 0.44791669 0.6875 0.34375 0.6875 0.55208337
		 0.6875 0.65625006 0.6875 0.45833334 0.75 0.375 0.75 0.54166669 0.75 0.625 0.75 0.46875
		 0.8125 0.40625 0.8125 0.53125 0.8125 0.59375 0.8125 0.47916669 0.875 0.4375 0.875
		 0.52083337 0.875 0.56250006 0.875 0.48958334 0.9375 0.46875 0.9375 0.51041669 0.9375
		 0.53125 0.9375 0.5 0.25 0.5 1 0.375 0.033493623 0.75 0.25 0.375 0.46650636 0.25 0.5
		 0.41666669 0.5 0.5 1 0.58333337 0.5 0.75000006 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 41 ".vt[0:40]"  -0.10396932 -0.01655145 0.20000003 -0.10396932 -0.016551472 -0.19999999
		 -0.043815829 0.32459596 9.2517868e-18 -0.11608185 0.10283566 -9.2517868e-18 0.21471757 0.98344857 -0.027291484
		 -0.13169259 0.98344857 0.17270854 0.011435729 1.32459593 0.020614088 0.047568738 1.10283566 0.083198294
		 -0.028867511 0.025255084 -0.050000008 -0.028867517 0.025255084 0.049999997 0.057735026 0.025255084 0
		 -0.057735022 0.025255084 -0.10000002 -0.057735033 0.025255084 0.099999994 0.11547005 0.025255084 0
		 -0.050518144 0.33144128 -0.087500013 -0.050518155 0.33144128 0.087499999 0.1010363 0.33144128 0
		 -0.043301266 0.63762754 -0.07500001 -0.043301281 0.63762754 0.075000003 0.086602546 0.63762754 0
		 -0.036084395 0.9438138 -0.062500015 -0.036084399 0.9438138 0.062500007 0.07216879 0.9438138 0
		 -0.028867517 1.25 -0.050000019 -0.028867522 1.25 0.050000008 0.057735037 1.25 0 -0.021650638 1.5561862 -0.037500016
		 -0.021650644 1.5561862 0.037500009 0.043301281 1.5561862 0 -0.014433761 1.8623724 -0.025000012
		 -0.014433764 1.8623724 0.02500001 0.028867526 1.8623724 0 -0.0072168834 2.1685586 -0.012500012
		 -0.0072168852 2.1685586 0.01250001 0.014433769 2.1685586 0 0 0.025255084 0 0 2.4747448 0
		 -0.14039665 1.8834486 -0.15606943 0.2060135 1.88344848 0.043930575 0.0027317014 2.22459602 -0.0039749667
		 0.038864709 2.0028357506 -0.066559173;
	setAttr -s 75 ".ed[0:74]"  0 1 0 1 2 0 2 0 0 0 3 0 1 3 0 2 3 0 4 5 0
		 5 6 0 6 4 0 4 7 0 5 7 0 6 7 0 8 9 1 9 10 1 10 8 1 11 12 0 12 13 0 13 11 0 14 15 1
		 15 16 1 16 14 1 17 18 1 18 19 1 19 17 1 20 21 1 21 22 1 22 20 1 23 24 1 24 25 1 25 23 1
		 26 27 1 27 28 1 28 26 1 29 30 1 30 31 1 31 29 1 32 33 1 33 34 1 34 32 1 8 11 1 9 12 1
		 10 13 1 11 14 0 12 15 0 13 16 0 14 17 0 15 18 0 16 19 0 17 20 0 18 21 0 19 22 0 20 23 0
		 21 24 0 22 25 0 23 26 0 24 27 0 25 28 0 26 29 0 27 30 0 28 31 0 29 32 0 30 33 0 31 34 0
		 35 8 1 35 9 1 35 10 1 32 36 0 33 36 0 34 36 0 37 38 0 38 39 0 39 37 0 37 40 0 38 40 0
		 39 40 0;
	setAttr -s 42 -ch 150 ".fc[0:41]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 -5 -1
		mu 0 3 3 7 4
		f 3 4 -6 -2
		mu 0 3 4 7 5
		f 3 5 -4 -3
		mu 0 3 5 7 6
		f 3 6 7 8
		mu 0 3 8 10 9
		f 3 9 -11 -7
		mu 0 3 11 13 12
		f 3 10 -12 -8
		mu 0 3 12 13 14
		f 3 11 -10 -9
		mu 0 3 14 13 15
		f 4 12 40 -16 -40
		mu 0 4 16 17 18 19
		f 4 13 41 -17 -41
		mu 0 4 17 20 21 18
		f 4 14 39 -18 -42
		mu 0 4 20 16 19 21
		f 4 15 43 -19 -43
		mu 0 4 22 23 24 25
		f 4 16 44 -20 -44
		mu 0 4 23 26 27 24
		f 4 17 42 -21 -45
		mu 0 4 26 28 29 27
		f 4 18 46 -22 -46
		mu 0 4 25 24 30 31
		f 4 19 47 -23 -47
		mu 0 4 24 27 32 30
		f 4 20 45 -24 -48
		mu 0 4 27 29 33 32
		f 4 21 49 -25 -49
		mu 0 4 31 30 34 35
		f 4 22 50 -26 -50
		mu 0 4 30 32 36 34
		f 4 23 48 -27 -51
		mu 0 4 32 33 37 36
		f 4 24 52 -28 -52
		mu 0 4 35 34 38 39
		f 4 25 53 -29 -53
		mu 0 4 34 36 40 38
		f 4 26 51 -30 -54
		mu 0 4 36 37 41 40
		f 4 27 55 -31 -55
		mu 0 4 39 38 42 43
		f 4 28 56 -32 -56
		mu 0 4 38 40 44 42
		f 4 29 54 -33 -57
		mu 0 4 40 41 45 44
		f 4 30 58 -34 -58
		mu 0 4 43 42 46 47
		f 4 31 59 -35 -59
		mu 0 4 42 44 48 46
		f 4 32 57 -36 -60
		mu 0 4 44 45 49 48
		f 4 33 61 -37 -61
		mu 0 4 47 46 50 51
		f 4 34 62 -38 -62
		mu 0 4 46 48 52 50
		f 4 35 60 -39 -63
		mu 0 4 48 49 53 52
		f 3 -13 -64 64
		mu 0 3 17 16 54
		f 3 -14 -65 65
		mu 0 3 20 17 54
		f 3 -15 -66 63
		mu 0 3 16 20 54
		f 3 36 67 -67
		mu 0 3 51 50 55
		f 3 37 68 -68
		mu 0 3 50 52 55
		f 3 38 66 -69
		mu 0 3 52 53 55
		f 3 69 70 71
		mu 0 3 56 58 57
		f 3 72 -74 -70
		mu 0 3 59 61 60
		f 3 73 -75 -71
		mu 0 3 60 61 62
		f 3 74 -73 -72
		mu 0 3 62 61 63;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pasted__group7" -p "group4";
	rename -uid "33E35B0B-7E47-A951-CCE5-3492F1EEE75B";
	setAttr ".t" -type "double3" 0 0 -0.5 ;
	setAttr ".rp" -type "double3" 0.03716045618057251 1.2290966622531414 2.2351741790771484e-08 ;
	setAttr ".sp" -type "double3" 0.03716045618057251 1.2290966622531414 2.2351741790771484e-08 ;
createNode transform -n "pasted__pasted__group5" -p "pasted__group7";
	rename -uid "32F9BD9F-C24A-B437-B8D5-11BEDA08D06A";
	setAttr ".rp" -type "double3" 0.03716045618057251 1.2290966622531414 2.2351741790771484e-08 ;
	setAttr ".sp" -type "double3" 0.03716045618057251 1.2290966622531414 2.2351741790771484e-08 ;
createNode transform -n "pasted__pasted__pasted__group4_pasted__pPyramid4" -p "|group4|pasted__group7|pasted__pasted__group5";
	rename -uid "D1F8EB92-2945-929F-FE48-66A8E30F6BB3";
	setAttr ".s" -type "double3" 1 0.9 1 ;
createNode transform -n "pasted__transform7" -p "|group4|pasted__group7|pasted__pasted__group5|pasted__pasted__pasted__group4_pasted__pPyramid4";
	rename -uid "F8EEC98B-234F-0234-B36E-319B88AE5672";
	setAttr ".v" no;
createNode mesh -n "pasted__pasted__pasted__group4_pasted__pPyramid4Shape" -p "pasted__transform7";
	rename -uid "9287DFFC-EE43-B772-C764-8E96F70D4AF0";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:41]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 64 ".uvst[0].uvsp[0:63]" -type "float2" 0.375 0.033493623
		 0.375 0.46650636 0.75 0.25 0.25 0.5 0.41666669 0.5 0.58333337 0.5 0.75000006 0.5
		 0.5 1 0.375 0.033493623 0.75 0.25 0.375 0.46650636 0.25 0.5 0.41666669 0.5 0.5 1
		 0.58333337 0.5 0.75000006 0.5 0.4375 0.14174682 0.4375 0.35825318 0.375 0.46650636
		 0.375 0.033493623 0.625 0.25 0.75 0.25 0.25 0.5 0.41666669 0.5 0.42708334 0.5625
		 0.28125 0.5625 0.58333337 0.5 0.57291669 0.5625 0.75000006 0.5 0.71875 0.5625 0.4375
		 0.625 0.3125 0.625 0.5625 0.625 0.6875 0.625 0.44791669 0.6875 0.34375 0.6875 0.55208337
		 0.6875 0.65625006 0.6875 0.45833334 0.75 0.375 0.75 0.54166669 0.75 0.625 0.75 0.46875
		 0.8125 0.40625 0.8125 0.53125 0.8125 0.59375 0.8125 0.47916669 0.875 0.4375 0.875
		 0.52083337 0.875 0.56250006 0.875 0.48958334 0.9375 0.46875 0.9375 0.51041669 0.9375
		 0.53125 0.9375 0.5 0.25 0.5 1 0.375 0.033493623 0.75 0.25 0.375 0.46650636 0.25 0.5
		 0.41666669 0.5 0.5 1 0.58333337 0.5 0.75000006 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 41 ".vt[0:40]"  -0.10396932 -0.01655145 0.20000003 -0.10396932 -0.016551472 -0.19999999
		 -0.043815829 0.32459596 9.2517868e-18 -0.11608185 0.10283566 -9.2517868e-18 0.21471757 0.98344857 -0.027291484
		 -0.13169259 0.98344857 0.17270854 0.011435729 1.32459593 0.020614088 0.047568738 1.10283566 0.083198294
		 -0.028867511 0.025255084 -0.050000008 -0.028867517 0.025255084 0.049999997 0.057735026 0.025255084 0
		 -0.057735022 0.025255084 -0.10000002 -0.057735033 0.025255084 0.099999994 0.11547005 0.025255084 0
		 -0.050518144 0.33144128 -0.087500013 -0.050518155 0.33144128 0.087499999 0.1010363 0.33144128 0
		 -0.043301266 0.63762754 -0.07500001 -0.043301281 0.63762754 0.075000003 0.086602546 0.63762754 0
		 -0.036084395 0.9438138 -0.062500015 -0.036084399 0.9438138 0.062500007 0.07216879 0.9438138 0
		 -0.028867517 1.25 -0.050000019 -0.028867522 1.25 0.050000008 0.057735037 1.25 0 -0.021650638 1.5561862 -0.037500016
		 -0.021650644 1.5561862 0.037500009 0.043301281 1.5561862 0 -0.014433761 1.8623724 -0.025000012
		 -0.014433764 1.8623724 0.02500001 0.028867526 1.8623724 0 -0.0072168834 2.1685586 -0.012500012
		 -0.0072168852 2.1685586 0.01250001 0.014433769 2.1685586 0 0 0.025255084 0 0 2.4747448 0
		 -0.14039665 1.8834486 -0.15606943 0.2060135 1.88344848 0.043930575 0.0027317014 2.22459602 -0.0039749667
		 0.038864709 2.0028357506 -0.066559173;
	setAttr -s 75 ".ed[0:74]"  0 1 0 1 2 0 2 0 0 0 3 0 1 3 0 2 3 0 4 5 0
		 5 6 0 6 4 0 4 7 0 5 7 0 6 7 0 8 9 1 9 10 1 10 8 1 11 12 0 12 13 0 13 11 0 14 15 1
		 15 16 1 16 14 1 17 18 1 18 19 1 19 17 1 20 21 1 21 22 1 22 20 1 23 24 1 24 25 1 25 23 1
		 26 27 1 27 28 1 28 26 1 29 30 1 30 31 1 31 29 1 32 33 1 33 34 1 34 32 1 8 11 1 9 12 1
		 10 13 1 11 14 0 12 15 0 13 16 0 14 17 0 15 18 0 16 19 0 17 20 0 18 21 0 19 22 0 20 23 0
		 21 24 0 22 25 0 23 26 0 24 27 0 25 28 0 26 29 0 27 30 0 28 31 0 29 32 0 30 33 0 31 34 0
		 35 8 1 35 9 1 35 10 1 32 36 0 33 36 0 34 36 0 37 38 0 38 39 0 39 37 0 37 40 0 38 40 0
		 39 40 0;
	setAttr -s 42 -ch 150 ".fc[0:41]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 -5 -1
		mu 0 3 3 7 4
		f 3 4 -6 -2
		mu 0 3 4 7 5
		f 3 5 -4 -3
		mu 0 3 5 7 6
		f 3 6 7 8
		mu 0 3 8 10 9
		f 3 9 -11 -7
		mu 0 3 11 13 12
		f 3 10 -12 -8
		mu 0 3 12 13 14
		f 3 11 -10 -9
		mu 0 3 14 13 15
		f 4 12 40 -16 -40
		mu 0 4 16 17 18 19
		f 4 13 41 -17 -41
		mu 0 4 17 20 21 18
		f 4 14 39 -18 -42
		mu 0 4 20 16 19 21
		f 4 15 43 -19 -43
		mu 0 4 22 23 24 25
		f 4 16 44 -20 -44
		mu 0 4 23 26 27 24
		f 4 17 42 -21 -45
		mu 0 4 26 28 29 27
		f 4 18 46 -22 -46
		mu 0 4 25 24 30 31
		f 4 19 47 -23 -47
		mu 0 4 24 27 32 30
		f 4 20 45 -24 -48
		mu 0 4 27 29 33 32
		f 4 21 49 -25 -49
		mu 0 4 31 30 34 35
		f 4 22 50 -26 -50
		mu 0 4 30 32 36 34
		f 4 23 48 -27 -51
		mu 0 4 32 33 37 36
		f 4 24 52 -28 -52
		mu 0 4 35 34 38 39
		f 4 25 53 -29 -53
		mu 0 4 34 36 40 38
		f 4 26 51 -30 -54
		mu 0 4 36 37 41 40
		f 4 27 55 -31 -55
		mu 0 4 39 38 42 43
		f 4 28 56 -32 -56
		mu 0 4 38 40 44 42
		f 4 29 54 -33 -57
		mu 0 4 40 41 45 44
		f 4 30 58 -34 -58
		mu 0 4 43 42 46 47
		f 4 31 59 -35 -59
		mu 0 4 42 44 48 46
		f 4 32 57 -36 -60
		mu 0 4 44 45 49 48
		f 4 33 61 -37 -61
		mu 0 4 47 46 50 51
		f 4 34 62 -38 -62
		mu 0 4 46 48 52 50
		f 4 35 60 -39 -63
		mu 0 4 48 49 53 52
		f 3 -13 -64 64
		mu 0 3 17 16 54
		f 3 -14 -65 65
		mu 0 3 20 17 54
		f 3 -15 -66 63
		mu 0 3 16 20 54
		f 3 36 67 -67
		mu 0 3 51 50 55
		f 3 37 68 -68
		mu 0 3 50 52 55
		f 3 38 66 -69
		mu 0 3 52 53 55
		f 3 69 70 71
		mu 0 3 56 58 57
		f 3 72 -74 -70
		mu 0 3 59 61 60
		f 3 73 -75 -71
		mu 0 3 60 61 62
		f 3 74 -73 -72
		mu 0 3 62 61 63;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pasted__group_pasted__group4_pasted__pPyramid4" -p "group4";
	rename -uid "54A09832-FE44-F163-2A67-248B7E0B4F7A";
createNode transform -n "pasted__transform13" -p "pasted__group_pasted__group4_pasted__pPyramid4";
	rename -uid "37457998-9047-0F7C-FB94-9A9993CDCB7C";
	setAttr ".v" no;
createNode mesh -n "pasted__group_pasted__group4_pasted__pPyramid4Shape" -p "pasted__transform13";
	rename -uid "C8E7B545-C444-67FC-81C6-13A65D27E56E";
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
createNode transform -n "pasted__group8" -p "group4";
	rename -uid "816627E8-DB4F-16DD-3271-F496803DFDBE";
	setAttr ".t" -type "double3" 0 -0.19999999999999996 0 ;
	setAttr ".r" -type "double3" 0 20 0 ;
	setAttr ".s" -type "double3" 1 0.85 1 ;
	setAttr ".rp" -type "double3" 0.018580228090286255 1.117641840595752 0 ;
	setAttr ".sp" -type "double3" 0.018580228090286255 1.117641840595752 0 ;
createNode transform -n "pasted__pasted__group4_pasted__pPyramid4" -p "pasted__group8";
	rename -uid "099D73FF-0A4F-BB78-3F16-E0ABC6082F16";
	setAttr ".t" -type "double3" -0.5 0 0 ;
	setAttr ".r" -type "double3" 0 -90 0 ;
	setAttr ".s" -type "double3" 1 0.9 1 ;
createNode transform -n "pasted__pasted__transform8" -p "|group4|pasted__group8|pasted__pasted__group4_pasted__pPyramid4";
	rename -uid "95CF2863-ED48-EF1D-18AB-B6AFD95CCDA6";
	setAttr ".v" no;
createNode mesh -n "pasted__pasted__group4_pasted__pPyramid4Shape" -p "pasted__pasted__transform8";
	rename -uid "17F987D3-FB49-A4AF-2C73-AA9E4068AFC3";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:41]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 64 ".uvst[0].uvsp[0:63]" -type "float2" 0.375 0.033493623
		 0.375 0.46650636 0.75 0.25 0.25 0.5 0.41666669 0.5 0.58333337 0.5 0.75000006 0.5
		 0.5 1 0.375 0.033493623 0.75 0.25 0.375 0.46650636 0.25 0.5 0.41666669 0.5 0.5 1
		 0.58333337 0.5 0.75000006 0.5 0.4375 0.14174682 0.4375 0.35825318 0.375 0.46650636
		 0.375 0.033493623 0.625 0.25 0.75 0.25 0.25 0.5 0.41666669 0.5 0.42708334 0.5625
		 0.28125 0.5625 0.58333337 0.5 0.57291669 0.5625 0.75000006 0.5 0.71875 0.5625 0.4375
		 0.625 0.3125 0.625 0.5625 0.625 0.6875 0.625 0.44791669 0.6875 0.34375 0.6875 0.55208337
		 0.6875 0.65625006 0.6875 0.45833334 0.75 0.375 0.75 0.54166669 0.75 0.625 0.75 0.46875
		 0.8125 0.40625 0.8125 0.53125 0.8125 0.59375 0.8125 0.47916669 0.875 0.4375 0.875
		 0.52083337 0.875 0.56250006 0.875 0.48958334 0.9375 0.46875 0.9375 0.51041669 0.9375
		 0.53125 0.9375 0.5 0.25 0.5 1 0.375 0.033493623 0.75 0.25 0.375 0.46650636 0.25 0.5
		 0.41666669 0.5 0.5 1 0.58333337 0.5 0.75000006 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 41 ".vt[0:40]"  -0.10396932 -0.01655145 0.20000003 -0.10396932 -0.016551472 -0.19999999
		 -0.043815829 0.32459596 9.2517868e-18 -0.11608185 0.10283566 -9.2517868e-18 0.21471757 0.98344857 -0.027291484
		 -0.13169259 0.98344857 0.17270854 0.011435729 1.32459593 0.020614088 0.047568738 1.10283566 0.083198294
		 -0.028867511 0.025255084 -0.050000008 -0.028867517 0.025255084 0.049999997 0.057735026 0.025255084 0
		 -0.057735022 0.025255084 -0.10000002 -0.057735033 0.025255084 0.099999994 0.11547005 0.025255084 0
		 -0.050518144 0.33144128 -0.087500013 -0.050518155 0.33144128 0.087499999 0.1010363 0.33144128 0
		 -0.043301266 0.63762754 -0.07500001 -0.043301281 0.63762754 0.075000003 0.086602546 0.63762754 0
		 -0.036084395 0.9438138 -0.062500015 -0.036084399 0.9438138 0.062500007 0.07216879 0.9438138 0
		 -0.028867517 1.25 -0.050000019 -0.028867522 1.25 0.050000008 0.057735037 1.25 0 -0.021650638 1.5561862 -0.037500016
		 -0.021650644 1.5561862 0.037500009 0.043301281 1.5561862 0 -0.014433761 1.8623724 -0.025000012
		 -0.014433764 1.8623724 0.02500001 0.028867526 1.8623724 0 -0.0072168834 2.1685586 -0.012500012
		 -0.0072168852 2.1685586 0.01250001 0.014433769 2.1685586 0 0 0.025255084 0 0 2.4747448 0
		 -0.14039665 1.8834486 -0.15606943 0.2060135 1.88344848 0.043930575 0.0027317014 2.22459602 -0.0039749667
		 0.038864709 2.0028357506 -0.066559173;
	setAttr -s 75 ".ed[0:74]"  0 1 0 1 2 0 2 0 0 0 3 0 1 3 0 2 3 0 4 5 0
		 5 6 0 6 4 0 4 7 0 5 7 0 6 7 0 8 9 1 9 10 1 10 8 1 11 12 0 12 13 0 13 11 0 14 15 1
		 15 16 1 16 14 1 17 18 1 18 19 1 19 17 1 20 21 1 21 22 1 22 20 1 23 24 1 24 25 1 25 23 1
		 26 27 1 27 28 1 28 26 1 29 30 1 30 31 1 31 29 1 32 33 1 33 34 1 34 32 1 8 11 1 9 12 1
		 10 13 1 11 14 0 12 15 0 13 16 0 14 17 0 15 18 0 16 19 0 17 20 0 18 21 0 19 22 0 20 23 0
		 21 24 0 22 25 0 23 26 0 24 27 0 25 28 0 26 29 0 27 30 0 28 31 0 29 32 0 30 33 0 31 34 0
		 35 8 1 35 9 1 35 10 1 32 36 0 33 36 0 34 36 0 37 38 0 38 39 0 39 37 0 37 40 0 38 40 0
		 39 40 0;
	setAttr -s 42 -ch 150 ".fc[0:41]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 -5 -1
		mu 0 3 3 7 4
		f 3 4 -6 -2
		mu 0 3 4 7 5
		f 3 5 -4 -3
		mu 0 3 5 7 6
		f 3 6 7 8
		mu 0 3 8 10 9
		f 3 9 -11 -7
		mu 0 3 11 13 12
		f 3 10 -12 -8
		mu 0 3 12 13 14
		f 3 11 -10 -9
		mu 0 3 14 13 15
		f 4 12 40 -16 -40
		mu 0 4 16 17 18 19
		f 4 13 41 -17 -41
		mu 0 4 17 20 21 18
		f 4 14 39 -18 -42
		mu 0 4 20 16 19 21
		f 4 15 43 -19 -43
		mu 0 4 22 23 24 25
		f 4 16 44 -20 -44
		mu 0 4 23 26 27 24
		f 4 17 42 -21 -45
		mu 0 4 26 28 29 27
		f 4 18 46 -22 -46
		mu 0 4 25 24 30 31
		f 4 19 47 -23 -47
		mu 0 4 24 27 32 30
		f 4 20 45 -24 -48
		mu 0 4 27 29 33 32
		f 4 21 49 -25 -49
		mu 0 4 31 30 34 35
		f 4 22 50 -26 -50
		mu 0 4 30 32 36 34
		f 4 23 48 -27 -51
		mu 0 4 32 33 37 36
		f 4 24 52 -28 -52
		mu 0 4 35 34 38 39
		f 4 25 53 -29 -53
		mu 0 4 34 36 40 38
		f 4 26 51 -30 -54
		mu 0 4 36 37 41 40
		f 4 27 55 -31 -55
		mu 0 4 39 38 42 43
		f 4 28 56 -32 -56
		mu 0 4 38 40 44 42
		f 4 29 54 -33 -57
		mu 0 4 40 41 45 44
		f 4 30 58 -34 -58
		mu 0 4 43 42 46 47
		f 4 31 59 -35 -59
		mu 0 4 42 44 48 46
		f 4 32 57 -36 -60
		mu 0 4 44 45 49 48
		f 4 33 61 -37 -61
		mu 0 4 47 46 50 51
		f 4 34 62 -38 -62
		mu 0 4 46 48 52 50
		f 4 35 60 -39 -63
		mu 0 4 48 49 53 52
		f 3 -13 -64 64
		mu 0 3 17 16 54
		f 3 -14 -65 65
		mu 0 3 20 17 54
		f 3 -15 -66 63
		mu 0 3 16 20 54
		f 3 36 67 -67
		mu 0 3 51 50 55
		f 3 37 68 -68
		mu 0 3 50 52 55
		f 3 38 66 -69
		mu 0 3 52 53 55
		f 3 69 70 71
		mu 0 3 56 58 57
		f 3 72 -74 -70
		mu 0 3 59 61 60
		f 3 73 -75 -71
		mu 0 3 60 61 62
		f 3 74 -73 -72
		mu 0 3 62 61 63;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pasted__pasted__group" -p "pasted__group8";
	rename -uid "C655828E-5543-E5CC-F98E-C4B06CB2B451";
	setAttr ".t" -type "double3" 0.5 -0.10000000000000009 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
	setAttr ".s" -type "double3" 1 0.9 1 ;
	setAttr ".rp" -type "double3" 0.03716045618057251 1.2290966622531414 2.2351741790771484e-08 ;
	setAttr ".sp" -type "double3" 0.03716045618057251 1.2290966622531414 2.2351741790771484e-08 ;
createNode transform -n "pasted__pasted__pasted__group4_pasted__pPyramid4" -p "pasted__pasted__group";
	rename -uid "694CFA32-924E-759B-0CB1-7B823D2A6E85";
createNode transform -n "pasted__pasted__transform10" -p "|group4|pasted__group8|pasted__pasted__group|pasted__pasted__pasted__group4_pasted__pPyramid4";
	rename -uid "0A80338B-444A-DB65-9221-11980FC66479";
	setAttr ".v" no;
createNode mesh -n "pasted__pasted__pasted__group4_pasted__pPyramid4Shape" -p "pasted__pasted__transform10";
	rename -uid "82C2837E-AF43-CEC4-1490-C4A9D3BC430D";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:41]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 64 ".uvst[0].uvsp[0:63]" -type "float2" 0.375 0.033493623
		 0.375 0.46650636 0.75 0.25 0.25 0.5 0.41666669 0.5 0.58333337 0.5 0.75000006 0.5
		 0.5 1 0.375 0.033493623 0.75 0.25 0.375 0.46650636 0.25 0.5 0.41666669 0.5 0.5 1
		 0.58333337 0.5 0.75000006 0.5 0.4375 0.14174682 0.4375 0.35825318 0.375 0.46650636
		 0.375 0.033493623 0.625 0.25 0.75 0.25 0.25 0.5 0.41666669 0.5 0.42708334 0.5625
		 0.28125 0.5625 0.58333337 0.5 0.57291669 0.5625 0.75000006 0.5 0.71875 0.5625 0.4375
		 0.625 0.3125 0.625 0.5625 0.625 0.6875 0.625 0.44791669 0.6875 0.34375 0.6875 0.55208337
		 0.6875 0.65625006 0.6875 0.45833334 0.75 0.375 0.75 0.54166669 0.75 0.625 0.75 0.46875
		 0.8125 0.40625 0.8125 0.53125 0.8125 0.59375 0.8125 0.47916669 0.875 0.4375 0.875
		 0.52083337 0.875 0.56250006 0.875 0.48958334 0.9375 0.46875 0.9375 0.51041669 0.9375
		 0.53125 0.9375 0.5 0.25 0.5 1 0.375 0.033493623 0.75 0.25 0.375 0.46650636 0.25 0.5
		 0.41666669 0.5 0.5 1 0.58333337 0.5 0.75000006 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 41 ".vt[0:40]"  -0.10396932 -0.01655145 0.20000003 -0.10396932 -0.016551472 -0.19999999
		 -0.043815829 0.32459596 9.2517868e-18 -0.11608185 0.10283566 -9.2517868e-18 0.21471757 0.98344857 -0.027291484
		 -0.13169259 0.98344857 0.17270854 0.011435729 1.32459593 0.020614088 0.047568738 1.10283566 0.083198294
		 -0.028867511 0.025255084 -0.050000008 -0.028867517 0.025255084 0.049999997 0.057735026 0.025255084 0
		 -0.057735022 0.025255084 -0.10000002 -0.057735033 0.025255084 0.099999994 0.11547005 0.025255084 0
		 -0.050518144 0.33144128 -0.087500013 -0.050518155 0.33144128 0.087499999 0.1010363 0.33144128 0
		 -0.043301266 0.63762754 -0.07500001 -0.043301281 0.63762754 0.075000003 0.086602546 0.63762754 0
		 -0.036084395 0.9438138 -0.062500015 -0.036084399 0.9438138 0.062500007 0.07216879 0.9438138 0
		 -0.028867517 1.25 -0.050000019 -0.028867522 1.25 0.050000008 0.057735037 1.25 0 -0.021650638 1.5561862 -0.037500016
		 -0.021650644 1.5561862 0.037500009 0.043301281 1.5561862 0 -0.014433761 1.8623724 -0.025000012
		 -0.014433764 1.8623724 0.02500001 0.028867526 1.8623724 0 -0.0072168834 2.1685586 -0.012500012
		 -0.0072168852 2.1685586 0.01250001 0.014433769 2.1685586 0 0 0.025255084 0 0 2.4747448 0
		 -0.14039665 1.8834486 -0.15606943 0.2060135 1.88344848 0.043930575 0.0027317014 2.22459602 -0.0039749667
		 0.038864709 2.0028357506 -0.066559173;
	setAttr -s 75 ".ed[0:74]"  0 1 0 1 2 0 2 0 0 0 3 0 1 3 0 2 3 0 4 5 0
		 5 6 0 6 4 0 4 7 0 5 7 0 6 7 0 8 9 1 9 10 1 10 8 1 11 12 0 12 13 0 13 11 0 14 15 1
		 15 16 1 16 14 1 17 18 1 18 19 1 19 17 1 20 21 1 21 22 1 22 20 1 23 24 1 24 25 1 25 23 1
		 26 27 1 27 28 1 28 26 1 29 30 1 30 31 1 31 29 1 32 33 1 33 34 1 34 32 1 8 11 1 9 12 1
		 10 13 1 11 14 0 12 15 0 13 16 0 14 17 0 15 18 0 16 19 0 17 20 0 18 21 0 19 22 0 20 23 0
		 21 24 0 22 25 0 23 26 0 24 27 0 25 28 0 26 29 0 27 30 0 28 31 0 29 32 0 30 33 0 31 34 0
		 35 8 1 35 9 1 35 10 1 32 36 0 33 36 0 34 36 0 37 38 0 38 39 0 39 37 0 37 40 0 38 40 0
		 39 40 0;
	setAttr -s 42 -ch 150 ".fc[0:41]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 -5 -1
		mu 0 3 3 7 4
		f 3 4 -6 -2
		mu 0 3 4 7 5
		f 3 5 -4 -3
		mu 0 3 5 7 6
		f 3 6 7 8
		mu 0 3 8 10 9
		f 3 9 -11 -7
		mu 0 3 11 13 12
		f 3 10 -12 -8
		mu 0 3 12 13 14
		f 3 11 -10 -9
		mu 0 3 14 13 15
		f 4 12 40 -16 -40
		mu 0 4 16 17 18 19
		f 4 13 41 -17 -41
		mu 0 4 17 20 21 18
		f 4 14 39 -18 -42
		mu 0 4 20 16 19 21
		f 4 15 43 -19 -43
		mu 0 4 22 23 24 25
		f 4 16 44 -20 -44
		mu 0 4 23 26 27 24
		f 4 17 42 -21 -45
		mu 0 4 26 28 29 27
		f 4 18 46 -22 -46
		mu 0 4 25 24 30 31
		f 4 19 47 -23 -47
		mu 0 4 24 27 32 30
		f 4 20 45 -24 -48
		mu 0 4 27 29 33 32
		f 4 21 49 -25 -49
		mu 0 4 31 30 34 35
		f 4 22 50 -26 -50
		mu 0 4 30 32 36 34
		f 4 23 48 -27 -51
		mu 0 4 32 33 37 36
		f 4 24 52 -28 -52
		mu 0 4 35 34 38 39
		f 4 25 53 -29 -53
		mu 0 4 34 36 40 38
		f 4 26 51 -30 -54
		mu 0 4 36 37 41 40
		f 4 27 55 -31 -55
		mu 0 4 39 38 42 43
		f 4 28 56 -32 -56
		mu 0 4 38 40 44 42
		f 4 29 54 -33 -57
		mu 0 4 40 41 45 44
		f 4 30 58 -34 -58
		mu 0 4 43 42 46 47
		f 4 31 59 -35 -59
		mu 0 4 42 44 48 46
		f 4 32 57 -36 -60
		mu 0 4 44 45 49 48
		f 4 33 61 -37 -61
		mu 0 4 47 46 50 51
		f 4 34 62 -38 -62
		mu 0 4 46 48 52 50
		f 4 35 60 -39 -63
		mu 0 4 48 49 53 52
		f 3 -13 -64 64
		mu 0 3 17 16 54
		f 3 -14 -65 65
		mu 0 3 20 17 54
		f 3 -15 -66 63
		mu 0 3 16 20 54
		f 3 36 67 -67
		mu 0 3 51 50 55
		f 3 37 68 -68
		mu 0 3 50 52 55
		f 3 38 66 -69
		mu 0 3 52 53 55
		f 3 69 70 71
		mu 0 3 56 58 57
		f 3 72 -74 -70
		mu 0 3 59 61 60
		f 3 73 -75 -71
		mu 0 3 60 61 62
		f 3 74 -73 -72
		mu 0 3 62 61 63;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pasted__pasted__group6" -p "pasted__group8";
	rename -uid "D3020AC4-3643-0538-EEF4-F2B0213689FA";
	setAttr ".t" -type "double3" 0 0 0.5 ;
	setAttr ".rp" -type "double3" 0.03716045618057251 1.2290966622531414 2.2351741790771484e-08 ;
	setAttr ".sp" -type "double3" 0.03716045618057251 1.2290966622531414 2.2351741790771484e-08 ;
createNode transform -n "pasted__pasted__pasted__group5" -p "pasted__pasted__group6";
	rename -uid "FE049E24-5B4E-9D16-8582-53A7F9A54853";
	setAttr ".rp" -type "double3" 0.03716045618057251 1.2290966622531414 2.2351741790771484e-08 ;
	setAttr ".sp" -type "double3" 0.03716045618057251 1.2290966622531414 2.2351741790771484e-08 ;
createNode transform -n "pasted__pasted__pasted__pasted__group4_pasted__pPyramid4" 
		-p "|group4|pasted__group8|pasted__pasted__group6|pasted__pasted__pasted__group5";
	rename -uid "9A7736A2-6B42-5303-C646-A3942FE94E34";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 0.9 1 ;
createNode transform -n "pasted__pasted__transform9" -p "|group4|pasted__group8|pasted__pasted__group6|pasted__pasted__pasted__group5|pasted__pasted__pasted__pasted__group4_pasted__pPyramid4";
	rename -uid "E8BF999B-1F4F-F04E-D5F7-1C9F9A5496E2";
	setAttr ".v" no;
createNode mesh -n "pasted__pasted__pasted__pasted__group4_pasted__pPyramid4Shape" 
		-p "pasted__pasted__transform9";
	rename -uid "A4E3696B-CE49-0D55-7412-539D27BF1864";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:41]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 64 ".uvst[0].uvsp[0:63]" -type "float2" 0.375 0.033493623
		 0.375 0.46650636 0.75 0.25 0.25 0.5 0.41666669 0.5 0.58333337 0.5 0.75000006 0.5
		 0.5 1 0.375 0.033493623 0.75 0.25 0.375 0.46650636 0.25 0.5 0.41666669 0.5 0.5 1
		 0.58333337 0.5 0.75000006 0.5 0.4375 0.14174682 0.4375 0.35825318 0.375 0.46650636
		 0.375 0.033493623 0.625 0.25 0.75 0.25 0.25 0.5 0.41666669 0.5 0.42708334 0.5625
		 0.28125 0.5625 0.58333337 0.5 0.57291669 0.5625 0.75000006 0.5 0.71875 0.5625 0.4375
		 0.625 0.3125 0.625 0.5625 0.625 0.6875 0.625 0.44791669 0.6875 0.34375 0.6875 0.55208337
		 0.6875 0.65625006 0.6875 0.45833334 0.75 0.375 0.75 0.54166669 0.75 0.625 0.75 0.46875
		 0.8125 0.40625 0.8125 0.53125 0.8125 0.59375 0.8125 0.47916669 0.875 0.4375 0.875
		 0.52083337 0.875 0.56250006 0.875 0.48958334 0.9375 0.46875 0.9375 0.51041669 0.9375
		 0.53125 0.9375 0.5 0.25 0.5 1 0.375 0.033493623 0.75 0.25 0.375 0.46650636 0.25 0.5
		 0.41666669 0.5 0.5 1 0.58333337 0.5 0.75000006 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 41 ".vt[0:40]"  -0.10396932 -0.01655145 0.20000003 -0.10396932 -0.016551472 -0.19999999
		 -0.043815829 0.32459596 9.2517868e-18 -0.11608185 0.10283566 -9.2517868e-18 0.21471757 0.98344857 -0.027291484
		 -0.13169259 0.98344857 0.17270854 0.011435729 1.32459593 0.020614088 0.047568738 1.10283566 0.083198294
		 -0.028867511 0.025255084 -0.050000008 -0.028867517 0.025255084 0.049999997 0.057735026 0.025255084 0
		 -0.057735022 0.025255084 -0.10000002 -0.057735033 0.025255084 0.099999994 0.11547005 0.025255084 0
		 -0.050518144 0.33144128 -0.087500013 -0.050518155 0.33144128 0.087499999 0.1010363 0.33144128 0
		 -0.043301266 0.63762754 -0.07500001 -0.043301281 0.63762754 0.075000003 0.086602546 0.63762754 0
		 -0.036084395 0.9438138 -0.062500015 -0.036084399 0.9438138 0.062500007 0.07216879 0.9438138 0
		 -0.028867517 1.25 -0.050000019 -0.028867522 1.25 0.050000008 0.057735037 1.25 0 -0.021650638 1.5561862 -0.037500016
		 -0.021650644 1.5561862 0.037500009 0.043301281 1.5561862 0 -0.014433761 1.8623724 -0.025000012
		 -0.014433764 1.8623724 0.02500001 0.028867526 1.8623724 0 -0.0072168834 2.1685586 -0.012500012
		 -0.0072168852 2.1685586 0.01250001 0.014433769 2.1685586 0 0 0.025255084 0 0 2.4747448 0
		 -0.14039665 1.8834486 -0.15606943 0.2060135 1.88344848 0.043930575 0.0027317014 2.22459602 -0.0039749667
		 0.038864709 2.0028357506 -0.066559173;
	setAttr -s 75 ".ed[0:74]"  0 1 0 1 2 0 2 0 0 0 3 0 1 3 0 2 3 0 4 5 0
		 5 6 0 6 4 0 4 7 0 5 7 0 6 7 0 8 9 1 9 10 1 10 8 1 11 12 0 12 13 0 13 11 0 14 15 1
		 15 16 1 16 14 1 17 18 1 18 19 1 19 17 1 20 21 1 21 22 1 22 20 1 23 24 1 24 25 1 25 23 1
		 26 27 1 27 28 1 28 26 1 29 30 1 30 31 1 31 29 1 32 33 1 33 34 1 34 32 1 8 11 1 9 12 1
		 10 13 1 11 14 0 12 15 0 13 16 0 14 17 0 15 18 0 16 19 0 17 20 0 18 21 0 19 22 0 20 23 0
		 21 24 0 22 25 0 23 26 0 24 27 0 25 28 0 26 29 0 27 30 0 28 31 0 29 32 0 30 33 0 31 34 0
		 35 8 1 35 9 1 35 10 1 32 36 0 33 36 0 34 36 0 37 38 0 38 39 0 39 37 0 37 40 0 38 40 0
		 39 40 0;
	setAttr -s 42 -ch 150 ".fc[0:41]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 -5 -1
		mu 0 3 3 7 4
		f 3 4 -6 -2
		mu 0 3 4 7 5
		f 3 5 -4 -3
		mu 0 3 5 7 6
		f 3 6 7 8
		mu 0 3 8 10 9
		f 3 9 -11 -7
		mu 0 3 11 13 12
		f 3 10 -12 -8
		mu 0 3 12 13 14
		f 3 11 -10 -9
		mu 0 3 14 13 15
		f 4 12 40 -16 -40
		mu 0 4 16 17 18 19
		f 4 13 41 -17 -41
		mu 0 4 17 20 21 18
		f 4 14 39 -18 -42
		mu 0 4 20 16 19 21
		f 4 15 43 -19 -43
		mu 0 4 22 23 24 25
		f 4 16 44 -20 -44
		mu 0 4 23 26 27 24
		f 4 17 42 -21 -45
		mu 0 4 26 28 29 27
		f 4 18 46 -22 -46
		mu 0 4 25 24 30 31
		f 4 19 47 -23 -47
		mu 0 4 24 27 32 30
		f 4 20 45 -24 -48
		mu 0 4 27 29 33 32
		f 4 21 49 -25 -49
		mu 0 4 31 30 34 35
		f 4 22 50 -26 -50
		mu 0 4 30 32 36 34
		f 4 23 48 -27 -51
		mu 0 4 32 33 37 36
		f 4 24 52 -28 -52
		mu 0 4 35 34 38 39
		f 4 25 53 -29 -53
		mu 0 4 34 36 40 38
		f 4 26 51 -30 -54
		mu 0 4 36 37 41 40
		f 4 27 55 -31 -55
		mu 0 4 39 38 42 43
		f 4 28 56 -32 -56
		mu 0 4 38 40 44 42
		f 4 29 54 -33 -57
		mu 0 4 40 41 45 44
		f 4 30 58 -34 -58
		mu 0 4 43 42 46 47
		f 4 31 59 -35 -59
		mu 0 4 42 44 48 46
		f 4 32 57 -36 -60
		mu 0 4 44 45 49 48
		f 4 33 61 -37 -61
		mu 0 4 47 46 50 51
		f 4 34 62 -38 -62
		mu 0 4 46 48 52 50
		f 4 35 60 -39 -63
		mu 0 4 48 49 53 52
		f 3 -13 -64 64
		mu 0 3 17 16 54
		f 3 -14 -65 65
		mu 0 3 20 17 54
		f 3 -15 -66 63
		mu 0 3 16 20 54
		f 3 36 67 -67
		mu 0 3 51 50 55
		f 3 37 68 -68
		mu 0 3 50 52 55
		f 3 38 66 -69
		mu 0 3 52 53 55
		f 3 69 70 71
		mu 0 3 56 58 57
		f 3 72 -74 -70
		mu 0 3 59 61 60
		f 3 73 -75 -71
		mu 0 3 60 61 62
		f 3 74 -73 -72
		mu 0 3 62 61 63;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pasted__pasted__group7" -p "pasted__group8";
	rename -uid "9BFD27DF-1F4A-56D3-0373-0686A6418AFF";
	setAttr ".t" -type "double3" 0 0 -0.5 ;
	setAttr ".rp" -type "double3" 0.03716045618057251 1.2290966622531414 2.2351741790771484e-08 ;
	setAttr ".sp" -type "double3" 0.03716045618057251 1.2290966622531414 2.2351741790771484e-08 ;
createNode transform -n "pasted__pasted__pasted__group5" -p "pasted__pasted__group7";
	rename -uid "2FCDD36D-D143-3DF4-4539-F8BEBBBF1139";
	setAttr ".rp" -type "double3" 0.03716045618057251 1.2290966622531414 2.2351741790771484e-08 ;
	setAttr ".sp" -type "double3" 0.03716045618057251 1.2290966622531414 2.2351741790771484e-08 ;
createNode transform -n "pasted__pasted__pasted__pasted__group4_pasted__pPyramid4" 
		-p "|group4|pasted__group8|pasted__pasted__group7|pasted__pasted__pasted__group5";
	rename -uid "1C9050A7-4547-E5AA-52CE-6D8107D674B3";
	setAttr ".s" -type "double3" 1 0.9 1 ;
createNode transform -n "pasted__pasted__transform7" -p "|group4|pasted__group8|pasted__pasted__group7|pasted__pasted__pasted__group5|pasted__pasted__pasted__pasted__group4_pasted__pPyramid4";
	rename -uid "24F8B10A-4049-B47A-4DED-35969BD7A79D";
	setAttr ".v" no;
createNode mesh -n "pasted__pasted__pasted__pasted__group4_pasted__pPyramid4Shape" 
		-p "pasted__pasted__transform7";
	rename -uid "E04E2B65-B446-E967-2257-C786D3136671";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:41]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 64 ".uvst[0].uvsp[0:63]" -type "float2" 0.375 0.033493623
		 0.375 0.46650636 0.75 0.25 0.25 0.5 0.41666669 0.5 0.58333337 0.5 0.75000006 0.5
		 0.5 1 0.375 0.033493623 0.75 0.25 0.375 0.46650636 0.25 0.5 0.41666669 0.5 0.5 1
		 0.58333337 0.5 0.75000006 0.5 0.4375 0.14174682 0.4375 0.35825318 0.375 0.46650636
		 0.375 0.033493623 0.625 0.25 0.75 0.25 0.25 0.5 0.41666669 0.5 0.42708334 0.5625
		 0.28125 0.5625 0.58333337 0.5 0.57291669 0.5625 0.75000006 0.5 0.71875 0.5625 0.4375
		 0.625 0.3125 0.625 0.5625 0.625 0.6875 0.625 0.44791669 0.6875 0.34375 0.6875 0.55208337
		 0.6875 0.65625006 0.6875 0.45833334 0.75 0.375 0.75 0.54166669 0.75 0.625 0.75 0.46875
		 0.8125 0.40625 0.8125 0.53125 0.8125 0.59375 0.8125 0.47916669 0.875 0.4375 0.875
		 0.52083337 0.875 0.56250006 0.875 0.48958334 0.9375 0.46875 0.9375 0.51041669 0.9375
		 0.53125 0.9375 0.5 0.25 0.5 1 0.375 0.033493623 0.75 0.25 0.375 0.46650636 0.25 0.5
		 0.41666669 0.5 0.5 1 0.58333337 0.5 0.75000006 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 41 ".vt[0:40]"  -0.10396932 -0.01655145 0.20000003 -0.10396932 -0.016551472 -0.19999999
		 -0.043815829 0.32459596 9.2517868e-18 -0.11608185 0.10283566 -9.2517868e-18 0.21471757 0.98344857 -0.027291484
		 -0.13169259 0.98344857 0.17270854 0.011435729 1.32459593 0.020614088 0.047568738 1.10283566 0.083198294
		 -0.028867511 0.025255084 -0.050000008 -0.028867517 0.025255084 0.049999997 0.057735026 0.025255084 0
		 -0.057735022 0.025255084 -0.10000002 -0.057735033 0.025255084 0.099999994 0.11547005 0.025255084 0
		 -0.050518144 0.33144128 -0.087500013 -0.050518155 0.33144128 0.087499999 0.1010363 0.33144128 0
		 -0.043301266 0.63762754 -0.07500001 -0.043301281 0.63762754 0.075000003 0.086602546 0.63762754 0
		 -0.036084395 0.9438138 -0.062500015 -0.036084399 0.9438138 0.062500007 0.07216879 0.9438138 0
		 -0.028867517 1.25 -0.050000019 -0.028867522 1.25 0.050000008 0.057735037 1.25 0 -0.021650638 1.5561862 -0.037500016
		 -0.021650644 1.5561862 0.037500009 0.043301281 1.5561862 0 -0.014433761 1.8623724 -0.025000012
		 -0.014433764 1.8623724 0.02500001 0.028867526 1.8623724 0 -0.0072168834 2.1685586 -0.012500012
		 -0.0072168852 2.1685586 0.01250001 0.014433769 2.1685586 0 0 0.025255084 0 0 2.4747448 0
		 -0.14039665 1.8834486 -0.15606943 0.2060135 1.88344848 0.043930575 0.0027317014 2.22459602 -0.0039749667
		 0.038864709 2.0028357506 -0.066559173;
	setAttr -s 75 ".ed[0:74]"  0 1 0 1 2 0 2 0 0 0 3 0 1 3 0 2 3 0 4 5 0
		 5 6 0 6 4 0 4 7 0 5 7 0 6 7 0 8 9 1 9 10 1 10 8 1 11 12 0 12 13 0 13 11 0 14 15 1
		 15 16 1 16 14 1 17 18 1 18 19 1 19 17 1 20 21 1 21 22 1 22 20 1 23 24 1 24 25 1 25 23 1
		 26 27 1 27 28 1 28 26 1 29 30 1 30 31 1 31 29 1 32 33 1 33 34 1 34 32 1 8 11 1 9 12 1
		 10 13 1 11 14 0 12 15 0 13 16 0 14 17 0 15 18 0 16 19 0 17 20 0 18 21 0 19 22 0 20 23 0
		 21 24 0 22 25 0 23 26 0 24 27 0 25 28 0 26 29 0 27 30 0 28 31 0 29 32 0 30 33 0 31 34 0
		 35 8 1 35 9 1 35 10 1 32 36 0 33 36 0 34 36 0 37 38 0 38 39 0 39 37 0 37 40 0 38 40 0
		 39 40 0;
	setAttr -s 42 -ch 150 ".fc[0:41]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 -5 -1
		mu 0 3 3 7 4
		f 3 4 -6 -2
		mu 0 3 4 7 5
		f 3 5 -4 -3
		mu 0 3 5 7 6
		f 3 6 7 8
		mu 0 3 8 10 9
		f 3 9 -11 -7
		mu 0 3 11 13 12
		f 3 10 -12 -8
		mu 0 3 12 13 14
		f 3 11 -10 -9
		mu 0 3 14 13 15
		f 4 12 40 -16 -40
		mu 0 4 16 17 18 19
		f 4 13 41 -17 -41
		mu 0 4 17 20 21 18
		f 4 14 39 -18 -42
		mu 0 4 20 16 19 21
		f 4 15 43 -19 -43
		mu 0 4 22 23 24 25
		f 4 16 44 -20 -44
		mu 0 4 23 26 27 24
		f 4 17 42 -21 -45
		mu 0 4 26 28 29 27
		f 4 18 46 -22 -46
		mu 0 4 25 24 30 31
		f 4 19 47 -23 -47
		mu 0 4 24 27 32 30
		f 4 20 45 -24 -48
		mu 0 4 27 29 33 32
		f 4 21 49 -25 -49
		mu 0 4 31 30 34 35
		f 4 22 50 -26 -50
		mu 0 4 30 32 36 34
		f 4 23 48 -27 -51
		mu 0 4 32 33 37 36
		f 4 24 52 -28 -52
		mu 0 4 35 34 38 39
		f 4 25 53 -29 -53
		mu 0 4 34 36 40 38
		f 4 26 51 -30 -54
		mu 0 4 36 37 41 40
		f 4 27 55 -31 -55
		mu 0 4 39 38 42 43
		f 4 28 56 -32 -56
		mu 0 4 38 40 44 42
		f 4 29 54 -33 -57
		mu 0 4 40 41 45 44
		f 4 30 58 -34 -58
		mu 0 4 43 42 46 47
		f 4 31 59 -35 -59
		mu 0 4 42 44 48 46
		f 4 32 57 -36 -60
		mu 0 4 44 45 49 48
		f 4 33 61 -37 -61
		mu 0 4 47 46 50 51
		f 4 34 62 -38 -62
		mu 0 4 46 48 52 50
		f 4 35 60 -39 -63
		mu 0 4 48 49 53 52
		f 3 -13 -64 64
		mu 0 3 17 16 54
		f 3 -14 -65 65
		mu 0 3 20 17 54
		f 3 -15 -66 63
		mu 0 3 16 20 54
		f 3 36 67 -67
		mu 0 3 51 50 55
		f 3 37 68 -68
		mu 0 3 50 52 55
		f 3 38 66 -69
		mu 0 3 52 53 55
		f 3 69 70 71
		mu 0 3 56 58 57
		f 3 72 -74 -70
		mu 0 3 59 61 60
		f 3 73 -75 -71
		mu 0 3 60 61 62
		f 3 74 -73 -72
		mu 0 3 62 61 63;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pasted__pasted__group_pasted__group4_pasted__pPyramid4" 
		-p "pasted__group8";
	rename -uid "D9E1B435-8A4A-1ABC-FC38-69A99C6143D2";
createNode transform -n "pasted__transform12" -p "pasted__pasted__group_pasted__group4_pasted__pPyramid4";
	rename -uid "94273B54-EC4A-8B67-AB88-8994B1A6F831";
	setAttr ".v" no;
createNode mesh -n "pasted__pasted__group_pasted__group4_pasted__pPyramid4Shape" 
		-p "pasted__transform12";
	rename -uid "9F41E81E-294B-A3B6-B557-0F8CFBDED583";
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
createNode transform -n "pasted__group9" -p "group4";
	rename -uid "E0834EBB-E841-1BD2-44A5-AB8F0E45352F";
	setAttr ".t" -type "double3" 0 -0.15000000000000002 0 ;
	setAttr ".r" -type "double3" 0 20 0 ;
	setAttr ".s" -type "double3" 0.76464711917821693 0.76464711917821693 0.76464711917821693 ;
	setAttr ".rp" -type "double3" 0.026725295657207326 0.74764180916827172 0.0037980841306942681 ;
	setAttr ".sp" -type "double3" 0.026725295657207326 0.74764180916827172 0.0037980841306942681 ;
createNode transform -n "pasted__pasted__group8" -p "pasted__group9";
	rename -uid "DFA5534A-C74D-248F-073C-DD9FEC0CB356";
	setAttr ".t" -type "double3" 0 -0.19999999999999996 0 ;
	setAttr ".r" -type "double3" 0 20 0 ;
	setAttr ".s" -type "double3" 1 0.85 1 ;
	setAttr ".rp" -type "double3" 0.018580228090286255 1.117641840595752 0 ;
	setAttr ".sp" -type "double3" 0.018580228090286255 1.117641840595752 0 ;
createNode transform -n "pasted__pasted__pasted__group4_pasted__pPyramid4" -p "pasted__pasted__group8";
	rename -uid "91BD567A-E942-2F17-E245-1B9112D87D68";
	setAttr ".t" -type "double3" -0.5 0 0 ;
	setAttr ".r" -type "double3" 0 -90 0 ;
	setAttr ".s" -type "double3" 1 0.9 1 ;
createNode transform -n "pasted__pasted__pasted__transform8" -p "|group4|pasted__group9|pasted__pasted__group8|pasted__pasted__pasted__group4_pasted__pPyramid4";
	rename -uid "3FF32DD0-634A-A1FE-8D09-B2881CEDD890";
	setAttr ".v" no;
createNode mesh -n "pasted__pasted__pasted__group4_pasted__pPyramid4Shape" -p "pasted__pasted__pasted__transform8";
	rename -uid "F1C36062-C24C-0320-A749-1282832AA483";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:41]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 64 ".uvst[0].uvsp[0:63]" -type "float2" 0.375 0.033493623
		 0.375 0.46650636 0.75 0.25 0.25 0.5 0.41666669 0.5 0.58333337 0.5 0.75000006 0.5
		 0.5 1 0.375 0.033493623 0.75 0.25 0.375 0.46650636 0.25 0.5 0.41666669 0.5 0.5 1
		 0.58333337 0.5 0.75000006 0.5 0.4375 0.14174682 0.4375 0.35825318 0.375 0.46650636
		 0.375 0.033493623 0.625 0.25 0.75 0.25 0.25 0.5 0.41666669 0.5 0.42708334 0.5625
		 0.28125 0.5625 0.58333337 0.5 0.57291669 0.5625 0.75000006 0.5 0.71875 0.5625 0.4375
		 0.625 0.3125 0.625 0.5625 0.625 0.6875 0.625 0.44791669 0.6875 0.34375 0.6875 0.55208337
		 0.6875 0.65625006 0.6875 0.45833334 0.75 0.375 0.75 0.54166669 0.75 0.625 0.75 0.46875
		 0.8125 0.40625 0.8125 0.53125 0.8125 0.59375 0.8125 0.47916669 0.875 0.4375 0.875
		 0.52083337 0.875 0.56250006 0.875 0.48958334 0.9375 0.46875 0.9375 0.51041669 0.9375
		 0.53125 0.9375 0.5 0.25 0.5 1 0.375 0.033493623 0.75 0.25 0.375 0.46650636 0.25 0.5
		 0.41666669 0.5 0.5 1 0.58333337 0.5 0.75000006 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 41 ".vt[0:40]"  -0.10396932 -0.01655145 0.20000003 -0.10396932 -0.016551472 -0.19999999
		 -0.043815829 0.32459596 9.2517868e-18 -0.11608185 0.10283566 -9.2517868e-18 0.21471757 0.98344857 -0.027291484
		 -0.13169259 0.98344857 0.17270854 0.011435729 1.32459593 0.020614088 0.047568738 1.10283566 0.083198294
		 -0.028867511 0.025255084 -0.050000008 -0.028867517 0.025255084 0.049999997 0.057735026 0.025255084 0
		 -0.057735022 0.025255084 -0.10000002 -0.057735033 0.025255084 0.099999994 0.11547005 0.025255084 0
		 -0.050518144 0.33144128 -0.087500013 -0.050518155 0.33144128 0.087499999 0.1010363 0.33144128 0
		 -0.043301266 0.63762754 -0.07500001 -0.043301281 0.63762754 0.075000003 0.086602546 0.63762754 0
		 -0.036084395 0.9438138 -0.062500015 -0.036084399 0.9438138 0.062500007 0.07216879 0.9438138 0
		 -0.028867517 1.25 -0.050000019 -0.028867522 1.25 0.050000008 0.057735037 1.25 0 -0.021650638 1.5561862 -0.037500016
		 -0.021650644 1.5561862 0.037500009 0.043301281 1.5561862 0 -0.014433761 1.8623724 -0.025000012
		 -0.014433764 1.8623724 0.02500001 0.028867526 1.8623724 0 -0.0072168834 2.1685586 -0.012500012
		 -0.0072168852 2.1685586 0.01250001 0.014433769 2.1685586 0 0 0.025255084 0 0 2.4747448 0
		 -0.14039665 1.8834486 -0.15606943 0.2060135 1.88344848 0.043930575 0.0027317014 2.22459602 -0.0039749667
		 0.038864709 2.0028357506 -0.066559173;
	setAttr -s 75 ".ed[0:74]"  0 1 0 1 2 0 2 0 0 0 3 0 1 3 0 2 3 0 4 5 0
		 5 6 0 6 4 0 4 7 0 5 7 0 6 7 0 8 9 1 9 10 1 10 8 1 11 12 0 12 13 0 13 11 0 14 15 1
		 15 16 1 16 14 1 17 18 1 18 19 1 19 17 1 20 21 1 21 22 1 22 20 1 23 24 1 24 25 1 25 23 1
		 26 27 1 27 28 1 28 26 1 29 30 1 30 31 1 31 29 1 32 33 1 33 34 1 34 32 1 8 11 1 9 12 1
		 10 13 1 11 14 0 12 15 0 13 16 0 14 17 0 15 18 0 16 19 0 17 20 0 18 21 0 19 22 0 20 23 0
		 21 24 0 22 25 0 23 26 0 24 27 0 25 28 0 26 29 0 27 30 0 28 31 0 29 32 0 30 33 0 31 34 0
		 35 8 1 35 9 1 35 10 1 32 36 0 33 36 0 34 36 0 37 38 0 38 39 0 39 37 0 37 40 0 38 40 0
		 39 40 0;
	setAttr -s 42 -ch 150 ".fc[0:41]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 -5 -1
		mu 0 3 3 7 4
		f 3 4 -6 -2
		mu 0 3 4 7 5
		f 3 5 -4 -3
		mu 0 3 5 7 6
		f 3 6 7 8
		mu 0 3 8 10 9
		f 3 9 -11 -7
		mu 0 3 11 13 12
		f 3 10 -12 -8
		mu 0 3 12 13 14
		f 3 11 -10 -9
		mu 0 3 14 13 15
		f 4 12 40 -16 -40
		mu 0 4 16 17 18 19
		f 4 13 41 -17 -41
		mu 0 4 17 20 21 18
		f 4 14 39 -18 -42
		mu 0 4 20 16 19 21
		f 4 15 43 -19 -43
		mu 0 4 22 23 24 25
		f 4 16 44 -20 -44
		mu 0 4 23 26 27 24
		f 4 17 42 -21 -45
		mu 0 4 26 28 29 27
		f 4 18 46 -22 -46
		mu 0 4 25 24 30 31
		f 4 19 47 -23 -47
		mu 0 4 24 27 32 30
		f 4 20 45 -24 -48
		mu 0 4 27 29 33 32
		f 4 21 49 -25 -49
		mu 0 4 31 30 34 35
		f 4 22 50 -26 -50
		mu 0 4 30 32 36 34
		f 4 23 48 -27 -51
		mu 0 4 32 33 37 36
		f 4 24 52 -28 -52
		mu 0 4 35 34 38 39
		f 4 25 53 -29 -53
		mu 0 4 34 36 40 38
		f 4 26 51 -30 -54
		mu 0 4 36 37 41 40
		f 4 27 55 -31 -55
		mu 0 4 39 38 42 43
		f 4 28 56 -32 -56
		mu 0 4 38 40 44 42
		f 4 29 54 -33 -57
		mu 0 4 40 41 45 44
		f 4 30 58 -34 -58
		mu 0 4 43 42 46 47
		f 4 31 59 -35 -59
		mu 0 4 42 44 48 46
		f 4 32 57 -36 -60
		mu 0 4 44 45 49 48
		f 4 33 61 -37 -61
		mu 0 4 47 46 50 51
		f 4 34 62 -38 -62
		mu 0 4 46 48 52 50
		f 4 35 60 -39 -63
		mu 0 4 48 49 53 52
		f 3 -13 -64 64
		mu 0 3 17 16 54
		f 3 -14 -65 65
		mu 0 3 20 17 54
		f 3 -15 -66 63
		mu 0 3 16 20 54
		f 3 36 67 -67
		mu 0 3 51 50 55
		f 3 37 68 -68
		mu 0 3 50 52 55
		f 3 38 66 -69
		mu 0 3 52 53 55
		f 3 69 70 71
		mu 0 3 56 58 57
		f 3 72 -74 -70
		mu 0 3 59 61 60
		f 3 73 -75 -71
		mu 0 3 60 61 62
		f 3 74 -73 -72
		mu 0 3 62 61 63;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pasted__pasted__pasted__group" -p "pasted__pasted__group8";
	rename -uid "4CE45C06-5940-1ED5-ED8F-50B424D5E7AB";
	setAttr ".t" -type "double3" 0.5 -0.10000000000000009 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
	setAttr ".s" -type "double3" 1 0.9 1 ;
	setAttr ".rp" -type "double3" 0.03716045618057251 1.2290966622531414 2.2351741790771484e-08 ;
	setAttr ".sp" -type "double3" 0.03716045618057251 1.2290966622531414 2.2351741790771484e-08 ;
createNode transform -n "pasted__pasted__pasted__pasted__group4_pasted__pPyramid4" 
		-p "pasted__pasted__pasted__group";
	rename -uid "E28CE72A-2744-C5F3-E451-249874A53F67";
createNode transform -n "pasted__pasted__pasted__transform10" -p "|group4|pasted__group9|pasted__pasted__group8|pasted__pasted__pasted__group|pasted__pasted__pasted__pasted__group4_pasted__pPyramid4";
	rename -uid "95EE754D-1D46-0E0B-7D94-E8B3CC90C5C9";
	setAttr ".v" no;
createNode mesh -n "pasted__pasted__pasted__pasted__group4_pasted__pPyramid4Shape" 
		-p "pasted__pasted__pasted__transform10";
	rename -uid "A09D7901-6E49-8F7A-8504-FFB83DF4265C";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:41]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 64 ".uvst[0].uvsp[0:63]" -type "float2" 0.375 0.033493623
		 0.375 0.46650636 0.75 0.25 0.25 0.5 0.41666669 0.5 0.58333337 0.5 0.75000006 0.5
		 0.5 1 0.375 0.033493623 0.75 0.25 0.375 0.46650636 0.25 0.5 0.41666669 0.5 0.5 1
		 0.58333337 0.5 0.75000006 0.5 0.4375 0.14174682 0.4375 0.35825318 0.375 0.46650636
		 0.375 0.033493623 0.625 0.25 0.75 0.25 0.25 0.5 0.41666669 0.5 0.42708334 0.5625
		 0.28125 0.5625 0.58333337 0.5 0.57291669 0.5625 0.75000006 0.5 0.71875 0.5625 0.4375
		 0.625 0.3125 0.625 0.5625 0.625 0.6875 0.625 0.44791669 0.6875 0.34375 0.6875 0.55208337
		 0.6875 0.65625006 0.6875 0.45833334 0.75 0.375 0.75 0.54166669 0.75 0.625 0.75 0.46875
		 0.8125 0.40625 0.8125 0.53125 0.8125 0.59375 0.8125 0.47916669 0.875 0.4375 0.875
		 0.52083337 0.875 0.56250006 0.875 0.48958334 0.9375 0.46875 0.9375 0.51041669 0.9375
		 0.53125 0.9375 0.5 0.25 0.5 1 0.375 0.033493623 0.75 0.25 0.375 0.46650636 0.25 0.5
		 0.41666669 0.5 0.5 1 0.58333337 0.5 0.75000006 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 41 ".vt[0:40]"  -0.10396932 -0.01655145 0.20000003 -0.10396932 -0.016551472 -0.19999999
		 -0.043815829 0.32459596 9.2517868e-18 -0.11608185 0.10283566 -9.2517868e-18 0.21471757 0.98344857 -0.027291484
		 -0.13169259 0.98344857 0.17270854 0.011435729 1.32459593 0.020614088 0.047568738 1.10283566 0.083198294
		 -0.028867511 0.025255084 -0.050000008 -0.028867517 0.025255084 0.049999997 0.057735026 0.025255084 0
		 -0.057735022 0.025255084 -0.10000002 -0.057735033 0.025255084 0.099999994 0.11547005 0.025255084 0
		 -0.050518144 0.33144128 -0.087500013 -0.050518155 0.33144128 0.087499999 0.1010363 0.33144128 0
		 -0.043301266 0.63762754 -0.07500001 -0.043301281 0.63762754 0.075000003 0.086602546 0.63762754 0
		 -0.036084395 0.9438138 -0.062500015 -0.036084399 0.9438138 0.062500007 0.07216879 0.9438138 0
		 -0.028867517 1.25 -0.050000019 -0.028867522 1.25 0.050000008 0.057735037 1.25 0 -0.021650638 1.5561862 -0.037500016
		 -0.021650644 1.5561862 0.037500009 0.043301281 1.5561862 0 -0.014433761 1.8623724 -0.025000012
		 -0.014433764 1.8623724 0.02500001 0.028867526 1.8623724 0 -0.0072168834 2.1685586 -0.012500012
		 -0.0072168852 2.1685586 0.01250001 0.014433769 2.1685586 0 0 0.025255084 0 0 2.4747448 0
		 -0.14039665 1.8834486 -0.15606943 0.2060135 1.88344848 0.043930575 0.0027317014 2.22459602 -0.0039749667
		 0.038864709 2.0028357506 -0.066559173;
	setAttr -s 75 ".ed[0:74]"  0 1 0 1 2 0 2 0 0 0 3 0 1 3 0 2 3 0 4 5 0
		 5 6 0 6 4 0 4 7 0 5 7 0 6 7 0 8 9 1 9 10 1 10 8 1 11 12 0 12 13 0 13 11 0 14 15 1
		 15 16 1 16 14 1 17 18 1 18 19 1 19 17 1 20 21 1 21 22 1 22 20 1 23 24 1 24 25 1 25 23 1
		 26 27 1 27 28 1 28 26 1 29 30 1 30 31 1 31 29 1 32 33 1 33 34 1 34 32 1 8 11 1 9 12 1
		 10 13 1 11 14 0 12 15 0 13 16 0 14 17 0 15 18 0 16 19 0 17 20 0 18 21 0 19 22 0 20 23 0
		 21 24 0 22 25 0 23 26 0 24 27 0 25 28 0 26 29 0 27 30 0 28 31 0 29 32 0 30 33 0 31 34 0
		 35 8 1 35 9 1 35 10 1 32 36 0 33 36 0 34 36 0 37 38 0 38 39 0 39 37 0 37 40 0 38 40 0
		 39 40 0;
	setAttr -s 42 -ch 150 ".fc[0:41]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 -5 -1
		mu 0 3 3 7 4
		f 3 4 -6 -2
		mu 0 3 4 7 5
		f 3 5 -4 -3
		mu 0 3 5 7 6
		f 3 6 7 8
		mu 0 3 8 10 9
		f 3 9 -11 -7
		mu 0 3 11 13 12
		f 3 10 -12 -8
		mu 0 3 12 13 14
		f 3 11 -10 -9
		mu 0 3 14 13 15
		f 4 12 40 -16 -40
		mu 0 4 16 17 18 19
		f 4 13 41 -17 -41
		mu 0 4 17 20 21 18
		f 4 14 39 -18 -42
		mu 0 4 20 16 19 21
		f 4 15 43 -19 -43
		mu 0 4 22 23 24 25
		f 4 16 44 -20 -44
		mu 0 4 23 26 27 24
		f 4 17 42 -21 -45
		mu 0 4 26 28 29 27
		f 4 18 46 -22 -46
		mu 0 4 25 24 30 31
		f 4 19 47 -23 -47
		mu 0 4 24 27 32 30
		f 4 20 45 -24 -48
		mu 0 4 27 29 33 32
		f 4 21 49 -25 -49
		mu 0 4 31 30 34 35
		f 4 22 50 -26 -50
		mu 0 4 30 32 36 34
		f 4 23 48 -27 -51
		mu 0 4 32 33 37 36
		f 4 24 52 -28 -52
		mu 0 4 35 34 38 39
		f 4 25 53 -29 -53
		mu 0 4 34 36 40 38
		f 4 26 51 -30 -54
		mu 0 4 36 37 41 40
		f 4 27 55 -31 -55
		mu 0 4 39 38 42 43
		f 4 28 56 -32 -56
		mu 0 4 38 40 44 42
		f 4 29 54 -33 -57
		mu 0 4 40 41 45 44
		f 4 30 58 -34 -58
		mu 0 4 43 42 46 47
		f 4 31 59 -35 -59
		mu 0 4 42 44 48 46
		f 4 32 57 -36 -60
		mu 0 4 44 45 49 48
		f 4 33 61 -37 -61
		mu 0 4 47 46 50 51
		f 4 34 62 -38 -62
		mu 0 4 46 48 52 50
		f 4 35 60 -39 -63
		mu 0 4 48 49 53 52
		f 3 -13 -64 64
		mu 0 3 17 16 54
		f 3 -14 -65 65
		mu 0 3 20 17 54
		f 3 -15 -66 63
		mu 0 3 16 20 54
		f 3 36 67 -67
		mu 0 3 51 50 55
		f 3 37 68 -68
		mu 0 3 50 52 55
		f 3 38 66 -69
		mu 0 3 52 53 55
		f 3 69 70 71
		mu 0 3 56 58 57
		f 3 72 -74 -70
		mu 0 3 59 61 60
		f 3 73 -75 -71
		mu 0 3 60 61 62
		f 3 74 -73 -72
		mu 0 3 62 61 63;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pasted__pasted__pasted__group6" -p "pasted__pasted__group8";
	rename -uid "138A2493-3E4B-A69C-5CF2-D9A6E9F993C9";
	setAttr ".t" -type "double3" 0 0 0.5 ;
	setAttr ".rp" -type "double3" 0.03716045618057251 1.2290966622531414 2.2351741790771484e-08 ;
	setAttr ".sp" -type "double3" 0.03716045618057251 1.2290966622531414 2.2351741790771484e-08 ;
createNode transform -n "pasted__pasted__pasted__pasted__group5" -p "pasted__pasted__pasted__group6";
	rename -uid "76DC2805-F34B-1EC3-7353-36A4FDF69897";
	setAttr ".rp" -type "double3" 0.03716045618057251 1.2290966622531414 2.2351741790771484e-08 ;
	setAttr ".sp" -type "double3" 0.03716045618057251 1.2290966622531414 2.2351741790771484e-08 ;
createNode transform -n "pasted__pasted__pasted__pasted__pasted__group4_pasted__pPyramid4" 
		-p "|group4|pasted__group9|pasted__pasted__group8|pasted__pasted__pasted__group6|pasted__pasted__pasted__pasted__group5";
	rename -uid "9E672962-B34E-F7D5-437B-BFB610CB5A4E";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 0.9 1 ;
createNode transform -n "pasted__pasted__pasted__transform9" -p "|group4|pasted__group9|pasted__pasted__group8|pasted__pasted__pasted__group6|pasted__pasted__pasted__pasted__group5|pasted__pasted__pasted__pasted__pasted__group4_pasted__pPyramid4";
	rename -uid "7034932E-994D-9222-EF35-C1A1F553E5A7";
	setAttr ".v" no;
createNode mesh -n "pasted__pasted__pasted__pasted__pasted__group4_pasted__pPyramid4Shape" 
		-p "pasted__pasted__pasted__transform9";
	rename -uid "ED9495D3-274A-E36C-1A80-909DED56A080";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:41]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 64 ".uvst[0].uvsp[0:63]" -type "float2" 0.375 0.033493623
		 0.375 0.46650636 0.75 0.25 0.25 0.5 0.41666669 0.5 0.58333337 0.5 0.75000006 0.5
		 0.5 1 0.375 0.033493623 0.75 0.25 0.375 0.46650636 0.25 0.5 0.41666669 0.5 0.5 1
		 0.58333337 0.5 0.75000006 0.5 0.4375 0.14174682 0.4375 0.35825318 0.375 0.46650636
		 0.375 0.033493623 0.625 0.25 0.75 0.25 0.25 0.5 0.41666669 0.5 0.42708334 0.5625
		 0.28125 0.5625 0.58333337 0.5 0.57291669 0.5625 0.75000006 0.5 0.71875 0.5625 0.4375
		 0.625 0.3125 0.625 0.5625 0.625 0.6875 0.625 0.44791669 0.6875 0.34375 0.6875 0.55208337
		 0.6875 0.65625006 0.6875 0.45833334 0.75 0.375 0.75 0.54166669 0.75 0.625 0.75 0.46875
		 0.8125 0.40625 0.8125 0.53125 0.8125 0.59375 0.8125 0.47916669 0.875 0.4375 0.875
		 0.52083337 0.875 0.56250006 0.875 0.48958334 0.9375 0.46875 0.9375 0.51041669 0.9375
		 0.53125 0.9375 0.5 0.25 0.5 1 0.375 0.033493623 0.75 0.25 0.375 0.46650636 0.25 0.5
		 0.41666669 0.5 0.5 1 0.58333337 0.5 0.75000006 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 41 ".vt[0:40]"  -0.10396932 -0.01655145 0.20000003 -0.10396932 -0.016551472 -0.19999999
		 -0.043815829 0.32459596 9.2517868e-18 -0.11608185 0.10283566 -9.2517868e-18 0.21471757 0.98344857 -0.027291484
		 -0.13169259 0.98344857 0.17270854 0.011435729 1.32459593 0.020614088 0.047568738 1.10283566 0.083198294
		 -0.028867511 0.025255084 -0.050000008 -0.028867517 0.025255084 0.049999997 0.057735026 0.025255084 0
		 -0.057735022 0.025255084 -0.10000002 -0.057735033 0.025255084 0.099999994 0.11547005 0.025255084 0
		 -0.050518144 0.33144128 -0.087500013 -0.050518155 0.33144128 0.087499999 0.1010363 0.33144128 0
		 -0.043301266 0.63762754 -0.07500001 -0.043301281 0.63762754 0.075000003 0.086602546 0.63762754 0
		 -0.036084395 0.9438138 -0.062500015 -0.036084399 0.9438138 0.062500007 0.07216879 0.9438138 0
		 -0.028867517 1.25 -0.050000019 -0.028867522 1.25 0.050000008 0.057735037 1.25 0 -0.021650638 1.5561862 -0.037500016
		 -0.021650644 1.5561862 0.037500009 0.043301281 1.5561862 0 -0.014433761 1.8623724 -0.025000012
		 -0.014433764 1.8623724 0.02500001 0.028867526 1.8623724 0 -0.0072168834 2.1685586 -0.012500012
		 -0.0072168852 2.1685586 0.01250001 0.014433769 2.1685586 0 0 0.025255084 0 0 2.4747448 0
		 -0.14039665 1.8834486 -0.15606943 0.2060135 1.88344848 0.043930575 0.0027317014 2.22459602 -0.0039749667
		 0.038864709 2.0028357506 -0.066559173;
	setAttr -s 75 ".ed[0:74]"  0 1 0 1 2 0 2 0 0 0 3 0 1 3 0 2 3 0 4 5 0
		 5 6 0 6 4 0 4 7 0 5 7 0 6 7 0 8 9 1 9 10 1 10 8 1 11 12 0 12 13 0 13 11 0 14 15 1
		 15 16 1 16 14 1 17 18 1 18 19 1 19 17 1 20 21 1 21 22 1 22 20 1 23 24 1 24 25 1 25 23 1
		 26 27 1 27 28 1 28 26 1 29 30 1 30 31 1 31 29 1 32 33 1 33 34 1 34 32 1 8 11 1 9 12 1
		 10 13 1 11 14 0 12 15 0 13 16 0 14 17 0 15 18 0 16 19 0 17 20 0 18 21 0 19 22 0 20 23 0
		 21 24 0 22 25 0 23 26 0 24 27 0 25 28 0 26 29 0 27 30 0 28 31 0 29 32 0 30 33 0 31 34 0
		 35 8 1 35 9 1 35 10 1 32 36 0 33 36 0 34 36 0 37 38 0 38 39 0 39 37 0 37 40 0 38 40 0
		 39 40 0;
	setAttr -s 42 -ch 150 ".fc[0:41]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 -5 -1
		mu 0 3 3 7 4
		f 3 4 -6 -2
		mu 0 3 4 7 5
		f 3 5 -4 -3
		mu 0 3 5 7 6
		f 3 6 7 8
		mu 0 3 8 10 9
		f 3 9 -11 -7
		mu 0 3 11 13 12
		f 3 10 -12 -8
		mu 0 3 12 13 14
		f 3 11 -10 -9
		mu 0 3 14 13 15
		f 4 12 40 -16 -40
		mu 0 4 16 17 18 19
		f 4 13 41 -17 -41
		mu 0 4 17 20 21 18
		f 4 14 39 -18 -42
		mu 0 4 20 16 19 21
		f 4 15 43 -19 -43
		mu 0 4 22 23 24 25
		f 4 16 44 -20 -44
		mu 0 4 23 26 27 24
		f 4 17 42 -21 -45
		mu 0 4 26 28 29 27
		f 4 18 46 -22 -46
		mu 0 4 25 24 30 31
		f 4 19 47 -23 -47
		mu 0 4 24 27 32 30
		f 4 20 45 -24 -48
		mu 0 4 27 29 33 32
		f 4 21 49 -25 -49
		mu 0 4 31 30 34 35
		f 4 22 50 -26 -50
		mu 0 4 30 32 36 34
		f 4 23 48 -27 -51
		mu 0 4 32 33 37 36
		f 4 24 52 -28 -52
		mu 0 4 35 34 38 39
		f 4 25 53 -29 -53
		mu 0 4 34 36 40 38
		f 4 26 51 -30 -54
		mu 0 4 36 37 41 40
		f 4 27 55 -31 -55
		mu 0 4 39 38 42 43
		f 4 28 56 -32 -56
		mu 0 4 38 40 44 42
		f 4 29 54 -33 -57
		mu 0 4 40 41 45 44
		f 4 30 58 -34 -58
		mu 0 4 43 42 46 47
		f 4 31 59 -35 -59
		mu 0 4 42 44 48 46
		f 4 32 57 -36 -60
		mu 0 4 44 45 49 48
		f 4 33 61 -37 -61
		mu 0 4 47 46 50 51
		f 4 34 62 -38 -62
		mu 0 4 46 48 52 50
		f 4 35 60 -39 -63
		mu 0 4 48 49 53 52
		f 3 -13 -64 64
		mu 0 3 17 16 54
		f 3 -14 -65 65
		mu 0 3 20 17 54
		f 3 -15 -66 63
		mu 0 3 16 20 54
		f 3 36 67 -67
		mu 0 3 51 50 55
		f 3 37 68 -68
		mu 0 3 50 52 55
		f 3 38 66 -69
		mu 0 3 52 53 55
		f 3 69 70 71
		mu 0 3 56 58 57
		f 3 72 -74 -70
		mu 0 3 59 61 60
		f 3 73 -75 -71
		mu 0 3 60 61 62
		f 3 74 -73 -72
		mu 0 3 62 61 63;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pasted__pasted__pasted__group7" -p "pasted__pasted__group8";
	rename -uid "58D96793-4848-44D9-E477-5D9D94C1728D";
	setAttr ".t" -type "double3" 0 0 -0.5 ;
	setAttr ".rp" -type "double3" 0.03716045618057251 1.2290966622531414 2.2351741790771484e-08 ;
	setAttr ".sp" -type "double3" 0.03716045618057251 1.2290966622531414 2.2351741790771484e-08 ;
createNode transform -n "pasted__pasted__pasted__pasted__group5" -p "pasted__pasted__pasted__group7";
	rename -uid "ECAE75F5-3144-CEE4-80BC-98BB2DBA1A2E";
	setAttr ".rp" -type "double3" 0.03716045618057251 1.2290966622531414 2.2351741790771484e-08 ;
	setAttr ".sp" -type "double3" 0.03716045618057251 1.2290966622531414 2.2351741790771484e-08 ;
createNode transform -n "pasted__pasted__pasted__pasted__pasted__group4_pasted__pPyramid4" 
		-p "|group4|pasted__group9|pasted__pasted__group8|pasted__pasted__pasted__group7|pasted__pasted__pasted__pasted__group5";
	rename -uid "3F75CFB0-3F49-0F55-D827-A88D00BFA772";
	setAttr ".s" -type "double3" 1 0.9 1 ;
createNode transform -n "pasted__pasted__pasted__transform7" -p "|group4|pasted__group9|pasted__pasted__group8|pasted__pasted__pasted__group7|pasted__pasted__pasted__pasted__group5|pasted__pasted__pasted__pasted__pasted__group4_pasted__pPyramid4";
	rename -uid "A76B571D-EB45-F6FA-E233-C48408109DA9";
	setAttr ".v" no;
createNode mesh -n "pasted__pasted__pasted__pasted__pasted__group4_pasted__pPyramid4Shape" 
		-p "pasted__pasted__pasted__transform7";
	rename -uid "02004CCF-C249-348B-A9F1-3D9851DED775";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:41]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 64 ".uvst[0].uvsp[0:63]" -type "float2" 0.375 0.033493623
		 0.375 0.46650636 0.75 0.25 0.25 0.5 0.41666669 0.5 0.58333337 0.5 0.75000006 0.5
		 0.5 1 0.375 0.033493623 0.75 0.25 0.375 0.46650636 0.25 0.5 0.41666669 0.5 0.5 1
		 0.58333337 0.5 0.75000006 0.5 0.4375 0.14174682 0.4375 0.35825318 0.375 0.46650636
		 0.375 0.033493623 0.625 0.25 0.75 0.25 0.25 0.5 0.41666669 0.5 0.42708334 0.5625
		 0.28125 0.5625 0.58333337 0.5 0.57291669 0.5625 0.75000006 0.5 0.71875 0.5625 0.4375
		 0.625 0.3125 0.625 0.5625 0.625 0.6875 0.625 0.44791669 0.6875 0.34375 0.6875 0.55208337
		 0.6875 0.65625006 0.6875 0.45833334 0.75 0.375 0.75 0.54166669 0.75 0.625 0.75 0.46875
		 0.8125 0.40625 0.8125 0.53125 0.8125 0.59375 0.8125 0.47916669 0.875 0.4375 0.875
		 0.52083337 0.875 0.56250006 0.875 0.48958334 0.9375 0.46875 0.9375 0.51041669 0.9375
		 0.53125 0.9375 0.5 0.25 0.5 1 0.375 0.033493623 0.75 0.25 0.375 0.46650636 0.25 0.5
		 0.41666669 0.5 0.5 1 0.58333337 0.5 0.75000006 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 41 ".vt[0:40]"  -0.10396932 -0.01655145 0.20000003 -0.10396932 -0.016551472 -0.19999999
		 -0.043815829 0.32459596 9.2517868e-18 -0.11608185 0.10283566 -9.2517868e-18 0.21471757 0.98344857 -0.027291484
		 -0.13169259 0.98344857 0.17270854 0.011435729 1.32459593 0.020614088 0.047568738 1.10283566 0.083198294
		 -0.028867511 0.025255084 -0.050000008 -0.028867517 0.025255084 0.049999997 0.057735026 0.025255084 0
		 -0.057735022 0.025255084 -0.10000002 -0.057735033 0.025255084 0.099999994 0.11547005 0.025255084 0
		 -0.050518144 0.33144128 -0.087500013 -0.050518155 0.33144128 0.087499999 0.1010363 0.33144128 0
		 -0.043301266 0.63762754 -0.07500001 -0.043301281 0.63762754 0.075000003 0.086602546 0.63762754 0
		 -0.036084395 0.9438138 -0.062500015 -0.036084399 0.9438138 0.062500007 0.07216879 0.9438138 0
		 -0.028867517 1.25 -0.050000019 -0.028867522 1.25 0.050000008 0.057735037 1.25 0 -0.021650638 1.5561862 -0.037500016
		 -0.021650644 1.5561862 0.037500009 0.043301281 1.5561862 0 -0.014433761 1.8623724 -0.025000012
		 -0.014433764 1.8623724 0.02500001 0.028867526 1.8623724 0 -0.0072168834 2.1685586 -0.012500012
		 -0.0072168852 2.1685586 0.01250001 0.014433769 2.1685586 0 0 0.025255084 0 0 2.4747448 0
		 -0.14039665 1.8834486 -0.15606943 0.2060135 1.88344848 0.043930575 0.0027317014 2.22459602 -0.0039749667
		 0.038864709 2.0028357506 -0.066559173;
	setAttr -s 75 ".ed[0:74]"  0 1 0 1 2 0 2 0 0 0 3 0 1 3 0 2 3 0 4 5 0
		 5 6 0 6 4 0 4 7 0 5 7 0 6 7 0 8 9 1 9 10 1 10 8 1 11 12 0 12 13 0 13 11 0 14 15 1
		 15 16 1 16 14 1 17 18 1 18 19 1 19 17 1 20 21 1 21 22 1 22 20 1 23 24 1 24 25 1 25 23 1
		 26 27 1 27 28 1 28 26 1 29 30 1 30 31 1 31 29 1 32 33 1 33 34 1 34 32 1 8 11 1 9 12 1
		 10 13 1 11 14 0 12 15 0 13 16 0 14 17 0 15 18 0 16 19 0 17 20 0 18 21 0 19 22 0 20 23 0
		 21 24 0 22 25 0 23 26 0 24 27 0 25 28 0 26 29 0 27 30 0 28 31 0 29 32 0 30 33 0 31 34 0
		 35 8 1 35 9 1 35 10 1 32 36 0 33 36 0 34 36 0 37 38 0 38 39 0 39 37 0 37 40 0 38 40 0
		 39 40 0;
	setAttr -s 42 -ch 150 ".fc[0:41]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 -5 -1
		mu 0 3 3 7 4
		f 3 4 -6 -2
		mu 0 3 4 7 5
		f 3 5 -4 -3
		mu 0 3 5 7 6
		f 3 6 7 8
		mu 0 3 8 10 9
		f 3 9 -11 -7
		mu 0 3 11 13 12
		f 3 10 -12 -8
		mu 0 3 12 13 14
		f 3 11 -10 -9
		mu 0 3 14 13 15
		f 4 12 40 -16 -40
		mu 0 4 16 17 18 19
		f 4 13 41 -17 -41
		mu 0 4 17 20 21 18
		f 4 14 39 -18 -42
		mu 0 4 20 16 19 21
		f 4 15 43 -19 -43
		mu 0 4 22 23 24 25
		f 4 16 44 -20 -44
		mu 0 4 23 26 27 24
		f 4 17 42 -21 -45
		mu 0 4 26 28 29 27
		f 4 18 46 -22 -46
		mu 0 4 25 24 30 31
		f 4 19 47 -23 -47
		mu 0 4 24 27 32 30
		f 4 20 45 -24 -48
		mu 0 4 27 29 33 32
		f 4 21 49 -25 -49
		mu 0 4 31 30 34 35
		f 4 22 50 -26 -50
		mu 0 4 30 32 36 34
		f 4 23 48 -27 -51
		mu 0 4 32 33 37 36
		f 4 24 52 -28 -52
		mu 0 4 35 34 38 39
		f 4 25 53 -29 -53
		mu 0 4 34 36 40 38
		f 4 26 51 -30 -54
		mu 0 4 36 37 41 40
		f 4 27 55 -31 -55
		mu 0 4 39 38 42 43
		f 4 28 56 -32 -56
		mu 0 4 38 40 44 42
		f 4 29 54 -33 -57
		mu 0 4 40 41 45 44
		f 4 30 58 -34 -58
		mu 0 4 43 42 46 47
		f 4 31 59 -35 -59
		mu 0 4 42 44 48 46
		f 4 32 57 -36 -60
		mu 0 4 44 45 49 48
		f 4 33 61 -37 -61
		mu 0 4 47 46 50 51
		f 4 34 62 -38 -62
		mu 0 4 46 48 52 50
		f 4 35 60 -39 -63
		mu 0 4 48 49 53 52
		f 3 -13 -64 64
		mu 0 3 17 16 54
		f 3 -14 -65 65
		mu 0 3 20 17 54
		f 3 -15 -66 63
		mu 0 3 16 20 54
		f 3 36 67 -67
		mu 0 3 51 50 55
		f 3 37 68 -68
		mu 0 3 50 52 55
		f 3 38 66 -69
		mu 0 3 52 53 55
		f 3 69 70 71
		mu 0 3 56 58 57
		f 3 72 -74 -70
		mu 0 3 59 61 60
		f 3 73 -75 -71
		mu 0 3 60 61 62
		f 3 74 -73 -72
		mu 0 3 62 61 63;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pasted__pasted__pasted__group_pasted__group4_pasted__pPyramid4" 
		-p "pasted__pasted__group8";
	rename -uid "049EA01F-3B4D-2020-7568-2A832630B7B8";
createNode transform -n "pasted__transform11" -p "pasted__pasted__pasted__group_pasted__group4_pasted__pPyramid4";
	rename -uid "2B3C687A-8F47-1762-EF2C-1A9CC84B1734";
	setAttr ".v" no;
createNode mesh -n "pasted__pasted__pasted__group_pasted__group4_pasted__pPyramid4Shape" 
		-p "pasted__transform11";
	rename -uid "5248D011-0245-F902-F084-BCA8C295FD05";
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
createNode transform -n "pasted__group5_pasted__group4_pasted__pPyramid4" -p "group4";
	rename -uid "2119B6C1-9F40-9DAB-5E7E-5BB3E2D56D53";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "pasted__group5_pasted__group4_pasted__pPyramid4Shape" -p "pasted__group5_pasted__group4_pasted__pPyramid4";
	rename -uid "B7AFA6B1-B64C-3A3D-1532-BBB481136903";
	setAttr -k off ".v";
	setAttr -s 14 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
createNode mesh -n "pasted__group5_pasted__group4_pasted__pPyramid4ShapeOrig" -p "pasted__group5_pasted__group4_pasted__pPyramid4";
	rename -uid "0844D62C-CB4D-7506-50B7-F69093CB18DF";
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
	rename -uid "2D8016D4-E24F-4292-53EE-50B0A7C44B26";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 0.0086716352835426534 -0.019198723001285566 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 89.999999999999986 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-16 1.0000000000000002 0 0 -1.0000000000000002 2.2204460492503131e-16 0 0
		 0 0 1 0 0.0086716352835426534 -0.019198723001285566 0 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint2" -p "joint1";
	rename -uid "BB0F7E74-E146-AD8B-3DBE-F587E81A21B7";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 0.36420828189192672 8.0870484063117278e-17 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -1.1691393279074449 ;
	setAttr ".bps" -type "matrix" 0.020403914662519992 0.99979181846344645 0 0 -0.99979181846344645 0.020403914662519992 0 0
		 0 0 1 0 0.0086716352835426534 0.34500955889064122 0 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint3" -p "joint2";
	rename -uid "B14373DB-6147-9D80-A132-6C8F963E7AB3";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0.42499813897285194 -5.7939764097625357e-16 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 1.1691393279074447 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-16 1.0000000000000002 0 0 -1.0000000000000002 2.2204460492503131e-16 0 0
		 0 0 1 0 0.017343261042875115 0.76991922109788935 0 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint4" -p "joint3";
	rename -uid "B294C5C1-2040-0780-FCE6-92B4B193A0A4";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 0.35553665613259494 7.9025963830660989e-17 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 1.2601702480933206e-29 1.101706115206601 ;
	setAttr ".bps" -type "matrix" -0.019227214231346938 0.99981514002984684 0 0 0.99981514002984717 0.019227214231346938 1.2246467991473537e-16 0
		 1.2244204109766149e-16 2.3546546364939463e-18 -1 0 0.017343261042875115 1.1254558772304843 0 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint5" -p "joint4";
	rename -uid "F1C9E7B1-114A-6B80-A9E1-E0B1F235C3CF";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 0.45100791279454105 8.1532003370909933e-16 9.9955764113697541e-32 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -1.2971086715021683e-18 -1.3491177288203529e-16 1.1017061152067258 ;
	setAttr ".bps" -type "matrix" 2.4043267377038546e-15 1.0000000000000002 2.3546546364942406e-18 0
		 1.0000000000000004 -2.3973878437999474e-15 1.2244204109766149e-16 0 1.2244204109766149e-16 2.3546546364939463e-18 -1 0
		 0.0086716352835426516 1.5763804167157274 -1.0785715744144442e-34 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint6" -p "joint5";
	rename -uid "A16CD574-E34C-4E31-0D57-F7A984488EFC";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 0.34686503037326349 -8.3155747036897284e-16 8.1674735200604606e-19 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -9.3555392841110047e-19 6.5502065405632144e-17 -1.6365788381228095 ;
	setAttr ".bps" -type "matrix" -0.028559805241030811 0.9995920855652044 -1.1432267081847397e-18 0
		 0.99959208556520462 0.028559805241030811 1.2245934369950005e-16 0 1.2244204109766149e-16 2.3546546364939463e-18 -1 0
		 0.0086716352835426534 1.9232454470889908 -2.7456062367740194e-32 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint7" -p "joint6";
	rename -uid "84207C9C-564E-2510-F36C-6A82C80EB0F5";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" 0.30363075694521119 -6.609296443471635e-16 -3.471187907662084e-19 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -1.9269199883551539e-18 -1.3491177288201621e-16 1.6365788381225859 ;
	setAttr ".bps" -type "matrix" -1.4988010832439613e-15 1.0000000000000002 2.3546546364937626e-18 0
		 1.0000000000000004 1.5057399771478686e-15 1.2244204109766149e-16 0 1.2244204109766149e-16 2.3546546364939463e-18 -1 0
		 -1.7347234759768071e-18 2.2267523486655962 -1.4552331740345713e-32 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint8" -p "joint7";
	rename -uid "DD33D2D3-1B46-7356-325A-34AE23BD28B1";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" 0.2341338955019534 3.5265485967843292e-16 5.5130446260410389e-19 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -8.3230320922561045e-19 5.993745440707725e-17 -1.5911385245130965 ;
	setAttr ".bps" -type "matrix" -0.027767036766766312 0.99961442149920665 -1.0461059246673568e-18 0
		 0.99961442149920687 0.027767036766766312 1.2246021186088551e-16 0 1.2244204109766149e-16 2.3546546364939463e-18 -1 0
		 4.9303806576313238e-32 2.4608862441675496 -5.4611674583600219e-32 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint9" -p "joint8";
	rename -uid "91460B58-7B4B-319D-BF27-C298B15BC40A";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 0.31229894309421469 -6.9562411386669964e-16 -3.2669777463827609e-19 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 0 91.591138524513127 ;
	setAttr ".bps" -type "matrix" 1.0000000000000007 1.0234868508263162e-15 1.2244204109766152e-16 0
		 -1.1275702593849246e-15 1.0000000000000004 -1.2011002527824151e-16 0 -1.2244204109766162e-16 1.2011002527824144e-16 1 0
		 -0.0086716162351200155 2.7730647715034866 -7.5411717982982366e-32 1;
	setAttr ".radi" 0.5;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "784B6353-CC43-D7DE-DA6B-FB83328643F5";
	setAttr -s 8 ".lnk";
	setAttr -s 8 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "A1AF259E-B540-74FA-EB36-ED90BDB8FC31";
createNode displayLayer -n "defaultLayer";
	rename -uid "519C68C2-9140-F030-7B88-28B4F09FD83F";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "B2FB4F52-DB4B-982B-FB1D-D6BC77AFF725";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "7B324D7C-AB48-9865-0F55-AFA975EC4A78";
	setAttr ".g" yes;
createNode polyCylinder -n "polyCylinder1";
	rename -uid "DA021801-124B-3FD2-3B3E-3D9E10ED9F6A";
	setAttr ".r" 0.25;
	setAttr ".sa" 12;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyPyramid -n "polyPyramid1";
	rename -uid "52A72198-2342-A3A7-76AB-BDB61E684318";
	setAttr ".cuv" 3;
createNode polyPyramid -n "pasted__polyPyramid1";
	rename -uid "86A1EC5A-5842-BCF6-B4D8-9BB04FF0E1C1";
	setAttr ".cuv" 3;
createNode polyPyramid -n "pasted__polyPyramid2";
	rename -uid "6807AF11-B749-B350-8F63-E58E6756BA3C";
	setAttr ".cuv" 3;
createNode polyPyramid -n "pasted__polyPyramid4";
	rename -uid "F532E980-1C46-E5D6-E538-DA9CE724CFFF";
	setAttr ".cuv" 3;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	rename -uid "7CCA8E36-FD48-7D58-EDC8-6EA0E0AD625E";
	setAttr ".ics" -type "componentList" 4 "f[25:26]" "f[28:29]" "f[31:32]" "f[34:35]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.59254851677481146 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1.1810986 0 ;
	setAttr ".rs" 1501611852;
	setAttr ".lt" -type "double3" 0 -5.1105969181501879e-18 0.10198391762377801 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.080690085887908936 1.1810986075646064 -0.080690085887908936 ;
	setAttr ".cbx" -type "double3" 0.080690085887908936 1.1810986075646064 0.080690085887908936 ;
createNode polyTweak -n "polyTweak1";
	rename -uid "02A00EA7-D54B-20BF-FD60-9B9CC6CEE94F";
	setAttr ".uopa" yes;
	setAttr -s 26 ".tk[0:25]" -type "float3"  -0.14662659 0.41144994 0.084654957
		 -0.084654957 0.41144994 0.14662659 0 0.41144994 0.16930991 0.084654957 0.41144994
		 0.14662659 0.14662659 0.41144994 0.084654957 0.16930991 0.41144994 0 0.14662659 0.41144994
		 -0.084654957 0.084654957 0.41144994 -0.14662659 0 0.41144994 -0.16930991 -0.084654957
		 0.41144994 -0.14662659 -0.14662659 0.41144994 -0.084654957 -0.16930991 0.41144994
		 0 -0.14662659 -0.41144994 0.084654957 -0.084654957 -0.41144994 0.14662659 0 -0.41144994
		 0.16930991 0.084654957 -0.41144994 0.14662659 0.14662659 -0.41144994 0.084654957
		 0.16930991 -0.41144994 0 0.14662659 -0.41144994 -0.084654957 0.084654957 -0.41144994
		 -0.14662659 0 -0.41144994 -0.16930991 -0.084654957 -0.41144994 -0.14662659 -0.14662659
		 -0.41144994 -0.084654957 -0.16930991 -0.41144994 0 0 0.41144994 0 0 -0.41144994 0;
createNode polyMergeVert -n "polyMergeVert1";
	rename -uid "59F3E29E-4E42-268F-E3DE-5CB7CC1170CE";
	setAttr ".ics" -type "componentList" 5 "vtx[25]" "vtx[28]" "vtx[32]" "vtx[36]" "vtx[40]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.59254851677481146 0 1;
createNode polyTweak -n "polyTweak2";
	rename -uid "CCDBD524-C747-9876-0B3C-388539E68E51";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[25]" -type "float3" 0 -0.069881916 4.8572257e-18 ;
	setAttr ".tk[28]" -type "float3" 0 -0.17186593 -9.0205617e-18 ;
	setAttr ".tk[32]" -type "float3" -6.9388939e-18 -0.17186595 -3.4694478e-19 ;
	setAttr ".tk[36]" -type "float3" 0 -0.17186593 4.8572257e-18 ;
	setAttr ".tk[40]" -type "float3" 6.9388939e-18 -0.17186593 -3.4694478e-19 ;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	rename -uid "7964CAF4-3540-1C64-33F3-138D84861D96";
	setAttr ".ics" -type "componentList" 8 "f[36]" "f[38]" "f[40]" "f[42]" "f[44]" "f[46]" "f[48]" "f[50]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.59254851677481146 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1.2320906 0 ;
	setAttr ".rs" 47275921;
	setAttr ".lt" -type "double3" -5.5511151231257827e-17 -2.3370467311040173e-17 0.19083434772631264 ;
	setAttr ".ls" -type "double3" -0.27603111311813489 1 1 ;
	setAttr ".off" 0.039999999105930328;
	setAttr ".d" 10;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.080690085887908936 1.1810986075646064 -0.080690085887908936 ;
	setAttr ".cbx" -type "double3" 0.080690085887908936 1.2830826316124579 0.080690085887908936 ;
createNode polyTweak -n "polyTweak3";
	rename -uid "7BA6F0A7-0145-755D-E290-2586FEA5887E";
	setAttr ".uopa" yes;
	setAttr ".tk[25]" -type "float3"  0 0.11503879 0;
createNode polyMergeVert -n "polyMergeVert2";
	rename -uid "46F3F041-9C40-8A06-B67E-E08D9F993F2A";
	setAttr ".ics" -type "componentList" 6 "vtx[227]" "vtx[237]" "vtx[247]" "vtx[257]" "vtx[267]" "vtx[277]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.59254851677481146 0 1;
createNode polyTweak -n "polyTweak4";
	rename -uid "7A9FDD1F-C24E-304B-96A4-669B5D1C8BB7";
	setAttr ".uopa" yes;
	setAttr -s 265 ".tk";
	setAttr ".tk[12]" -type "float3" -0.0053235893 0.011600192 2.910383e-11 ;
	setAttr ".tk[13]" -type "float3" 9.3132257e-10 0.011600199 0.0053235893 ;
	setAttr ".tk[14]" -type "float3" 0 0.024127787 0.011867993 ;
	setAttr ".tk[15]" -type "float3" 9.3132257e-10 0.011600199 0.0053235893 ;
	setAttr ".tk[16]" -type "float3" 0.0053235902 0.011600192 0 ;
	setAttr ".tk[17]" -type "float3" 0.011867998 0.024127753 0 ;
	setAttr ".tk[18]" -type "float3" 0.0053235912 0.011600195 0 ;
	setAttr ".tk[19]" -type "float3" 7.4214768e-10 0.011600192 -0.0053235907 ;
	setAttr ".tk[20]" -type "float3" -4.6202331e-10 0.024127757 -0.011867997 ;
	setAttr ".tk[21]" -type "float3" 3.5652192e-10 0.011600192 -0.0053235907 ;
	setAttr ".tk[22]" -type "float3" -0.0053235893 0.011600195 0 ;
	setAttr ".tk[23]" -type "float3" -0.011867994 0.024127753 0 ;
	setAttr ".tk[25]" -type "float3" 0 -1.1175871e-08 0 ;
	setAttr ".tk[26]" -type "float3" -0.00050622202 0.029502412 -0.00072674517 ;
	setAttr ".tk[27]" -type "float3" -9.3132257e-10 0.035907321 -0.0035247761 ;
	setAttr ".tk[28]" -type "float3" -0.00055096817 0.030255347 0.00050761527 ;
	setAttr ".tk[29]" -type "float3" -0.00072673877 0.029502412 0.00050622132 ;
	setAttr ".tk[30]" -type "float3" -0.0035247654 0.035907291 0 ;
	setAttr ".tk[31]" -type "float3" 0.00050762098 0.030255347 0.000550967 ;
	setAttr ".tk[32]" -type "float3" 0.00050622091 0.029502412 0.00072673912 ;
	setAttr ".tk[33]" -type "float3" -2.3646862e-10 0.035907298 0.0035247663 ;
	setAttr ".tk[34]" -type "float3" -0.00050622132 0.029502412 0.00072673912 ;
	setAttr ".tk[35]" -type "float3" -0.00050761551 0.030255347 0.000550967 ;
	setAttr ".tk[36]" -type "float3" 0.0035247745 0.035907283 0 ;
	setAttr ".tk[37]" -type "float3" -0.00050761551 0.03025534 -0.00055096787 ;
	setAttr ".tk[38]" -type "float3" 0 0.025999315 0.014803422 ;
	setAttr ".tk[39]" -type "float3" 0 0.043225296 0.023068007 ;
	setAttr ".tk[40]" -type "float3" 0 0.058582056 0.024554042 ;
	setAttr ".tk[41]" -type "float3" -3.7252903e-09 0.066141024 0.017434746 ;
	setAttr ".tk[42]" -type "float3" 3.7252903e-09 0.060181789 0.0051972987 ;
	setAttr ".tk[43]" -type "float3" 0 0.041135635 -0.0057433597 ;
	setAttr ".tk[44]" -type "float3" 0 0.014550813 -0.010166062 ;
	setAttr ".tk[45]" -type "float3" 3.7252903e-09 -0.014480265 -0.0062945597 ;
	setAttr ".tk[46]" -type "float3" 0 -0.043857019 0.0032171737 ;
	setAttr ".tk[47]" -type "float3" 0 -0.070161596 0.017660409 ;
	setAttr ".tk[48]" -type "float3" 0 0.040854666 0.020553552 ;
	setAttr ".tk[49]" -type "float3" 0 0.058126979 0.025226993 ;
	setAttr ".tk[50]" -type "float3" 3.7252903e-09 0.068830878 0.02270373 ;
	setAttr ".tk[51]" -type "float3" -3.7252903e-09 0.07068222 0.013177009 ;
	setAttr ".tk[52]" -type "float3" 0 0.062063824 0.00027937524 ;
	setAttr ".tk[53]" -type "float3" -3.7252903e-09 0.043964718 -0.010973187 ;
	setAttr ".tk[54]" -type "float3" 0 0.019574238 -0.016711248 ;
	setAttr ".tk[55]" -type "float3" -1.8626451e-09 -0.0072609326 -0.015459862 ;
	setAttr ".tk[56]" -type "float3" -1.8626451e-09 -0.033378668 -0.0078513743 ;
	setAttr ".tk[57]" -type "float3" 9.3132257e-10 -0.056824941 0.0043237498 ;
	setAttr ".tk[58]" -type "float3" -4.6566129e-10 0.04588398 -0.011239817 ;
	setAttr ".tk[59]" -type "float3" -9.3132257e-10 0.050851051 -0.022883238 ;
	setAttr ".tk[60]" -type "float3" 1.3969839e-09 0.049002454 -0.036751628 ;
	setAttr ".tk[61]" -type "float3" -1.3969839e-09 0.040170949 -0.050481644 ;
	setAttr ".tk[62]" -type "float3" -1.3969839e-09 0.025012881 -0.061221182 ;
	setAttr ".tk[63]" -type "float3" -1.8626451e-09 0.0050211013 -0.065932639 ;
	setAttr ".tk[64]" -type "float3" 9.3132257e-10 -0.018086812 -0.063373931 ;
	setAttr ".tk[65]" -type "float3" -9.3132257e-10 -0.042236749 -0.053650685 ;
	setAttr ".tk[66]" -type "float3" 9.3132257e-10 -0.062732562 -0.037828751 ;
	setAttr ".tk[67]" -type "float3" 0 -0.07880909 -0.017660409 ;
	setAttr ".tk[68]" -type "float3" -0.00017369911 0.039920088 -0.0048726024 ;
	setAttr ".tk[69]" -type "float3" 9.3132257e-10 0.047164071 -0.013815459 ;
	setAttr ".tk[70]" -type "float3" -9.3132257e-10 0.048561182 -0.027741786 ;
	setAttr ".tk[71]" -type "float3" 9.3132257e-10 0.040788867 -0.042506218 ;
	setAttr ".tk[72]" -type "float3" 0 0.025052924 -0.054794937 ;
	setAttr ".tk[73]" -type "float3" -9.3132257e-10 0.0029754399 -0.060177166 ;
	setAttr ".tk[74]" -type "float3" -9.3132257e-10 -0.022642046 -0.056621999 ;
	setAttr ".tk[75]" -type "float3" -9.3132257e-10 -0.049052462 -0.044409543 ;
	setAttr ".tk[76]" -type "float3" 1.8626451e-09 -0.073050365 -0.02677436 ;
	setAttr ".tk[77]" -type "float3" -1.8626451e-09 -0.092145681 -0.0043236911 ;
	setAttr ".tk[78]" -type "float3" 0.0002364439 0.026465354 0.014803422 ;
	setAttr ".tk[79]" -type "float3" 0.00028429282 0.044360261 0.023068007 ;
	setAttr ".tk[80]" -type "float3" 0 0.058582049 0.024554042 ;
	setAttr ".tk[81]" -type "float3" 0 0.066141024 0.017434746 ;
	setAttr ".tk[82]" -type "float3" 0 0.060181789 0.0051972987 ;
	setAttr ".tk[83]" -type "float3" 0 0.041135635 -0.0057433597 ;
	setAttr ".tk[84]" -type "float3" 0 0.014550813 -0.010166062 ;
	setAttr ".tk[85]" -type "float3" -1.7462298e-09 -0.014480265 -0.0062945597 ;
	setAttr ".tk[86]" -type "float3" 9.3132257e-10 -0.043857012 0.0032171737 ;
	setAttr ".tk[87]" -type "float3" 9.3132257e-10 -0.070161648 0.01766035 ;
	setAttr ".tk[88]" -type "float3" -0.00023263197 0.03923199 -0.0040543661 ;
	setAttr ".tk[89]" -type "float3" -1.6298145e-09 0.047164071 -0.013815459 ;
	setAttr ".tk[90]" -type "float3" 1.3969839e-09 0.048561182 -0.027741786 ;
	setAttr ".tk[91]" -type "float3" -9.3132257e-10 0.040788867 -0.042506218 ;
	setAttr ".tk[92]" -type "float3" 1.8626451e-09 0.025052939 -0.054794937 ;
	setAttr ".tk[93]" -type "float3" 1.8626451e-09 0.0029754399 -0.060177166 ;
	setAttr ".tk[94]" -type "float3" 3.7252903e-09 -0.022642046 -0.056621999 ;
	setAttr ".tk[95]" -type "float3" 0 -0.049052462 -0.044409543 ;
	setAttr ".tk[96]" -type "float3" 0 -0.073050365 -0.02677436 ;
	setAttr ".tk[97]" -type "float3" 0 -0.092145681 -0.0043236911 ;
	setAttr ".tk[98]" -type "float3" 0.014803427 0.025999319 0 ;
	setAttr ".tk[99]" -type "float3" 0.023068033 0.043225259 0 ;
	setAttr ".tk[100]" -type "float3" 0.024554055 0.058582049 0 ;
	setAttr ".tk[101]" -type "float3" 0.017434768 0.066141039 0 ;
	setAttr ".tk[102]" -type "float3" 0.0051973239 0.060181819 0 ;
	setAttr ".tk[103]" -type "float3" -0.0057433876 0.041135605 0 ;
	setAttr ".tk[104]" -type "float3" -0.010166088 0.014550813 0 ;
	setAttr ".tk[105]" -type "float3" -0.0062944605 -0.014480265 0 ;
	setAttr ".tk[106]" -type "float3" 0.0032172329 -0.043856915 0 ;
	setAttr ".tk[107]" -type "float3" 0.017660376 -0.070161574 0 ;
	setAttr ".tk[108]" -type "float3" 0.020553559 0.040854696 0 ;
	setAttr ".tk[109]" -type "float3" 0.025227005 0.058127008 0 ;
	setAttr ".tk[110]" -type "float3" 0.022703748 0.068830863 0 ;
	setAttr ".tk[111]" -type "float3" 0.013177026 0.070682265 0 ;
	setAttr ".tk[112]" -type "float3" 0.00027939695 0.062063824 0 ;
	setAttr ".tk[113]" -type "float3" -0.010973252 0.043964777 0 ;
	setAttr ".tk[114]" -type "float3" -0.016711149 0.019574208 0 ;
	setAttr ".tk[115]" -type "float3" -0.01545993 -0.0072608879 0 ;
	setAttr ".tk[116]" -type "float3" -0.0078514256 -0.033378609 0 ;
	setAttr ".tk[117]" -type "float3" 0.0043237205 -0.056824964 0 ;
	setAttr ".tk[118]" -type "float3" -0.01123983 0.045884017 0 ;
	setAttr ".tk[119]" -type "float3" -0.022883199 0.050851043 0 ;
	setAttr ".tk[120]" -type "float3" -0.036751606 0.049002454 0 ;
	setAttr ".tk[121]" -type "float3" -0.050481584 0.040170979 0 ;
	setAttr ".tk[122]" -type "float3" -0.0612211 0.025012895 0 ;
	setAttr ".tk[123]" -type "float3" -0.065932609 0.0050211609 0 ;
	setAttr ".tk[124]" -type "float3" -0.063373722 -0.018086782 0 ;
	setAttr ".tk[125]" -type "float3" -0.053650752 -0.042236734 0 ;
	setAttr ".tk[126]" -type "float3" -0.037828811 -0.062732488 0 ;
	setAttr ".tk[127]" -type "float3" -0.017660318 -0.078809015 0 ;
	setAttr ".tk[128]" -type "float3" -0.0048726131 0.039920103 0.00017369865 ;
	setAttr ".tk[129]" -type "float3" -0.013815413 0.047164042 0 ;
	setAttr ".tk[130]" -type "float3" -0.027741766 0.048561182 0 ;
	setAttr ".tk[131]" -type "float3" -0.042506199 0.040788881 0 ;
	setAttr ".tk[132]" -type "float3" -0.054794915 0.025052968 0 ;
	setAttr ".tk[133]" -type "float3" -0.060177203 0.0029754697 0 ;
	setAttr ".tk[134]" -type "float3" -0.056622032 -0.022642046 0 ;
	setAttr ".tk[135]" -type "float3" -0.044409443 -0.049052455 0 ;
	setAttr ".tk[136]" -type "float3" -0.026774298 -0.073050283 0 ;
	setAttr ".tk[137]" -type "float3" -0.0043237181 -0.092145704 0 ;
	setAttr ".tk[138]" -type "float3" 0.014803426 0.026465369 -0.00023644372 ;
	setAttr ".tk[139]" -type "float3" 0.023068035 0.044360254 -0.00028429891 ;
	setAttr ".tk[140]" -type "float3" 0.024554087 0.058582056 0 ;
	setAttr ".tk[141]" -type "float3" 0.017434729 0.066141039 0 ;
	setAttr ".tk[142]" -type "float3" 0.0051973262 0.060181804 0 ;
	setAttr ".tk[143]" -type "float3" -0.0057433313 0.041135635 0 ;
	setAttr ".tk[144]" -type "float3" -0.010166082 0.014550813 0 ;
	setAttr ".tk[145]" -type "float3" -0.0062944605 -0.014480265 0 ;
	setAttr ".tk[146]" -type "float3" 0.0032172319 -0.043856908 0 ;
	setAttr ".tk[147]" -type "float3" 0.017660376 -0.070161588 0 ;
	setAttr ".tk[148]" -type "float3" -0.0040543573 0.039231997 0.00023263266 ;
	setAttr ".tk[149]" -type "float3" -0.013815414 0.047164042 0 ;
	setAttr ".tk[150]" -type "float3" -0.027741764 0.048561182 0 ;
	setAttr ".tk[151]" -type "float3" -0.042506199 0.040788881 0 ;
	setAttr ".tk[152]" -type "float3" -0.054794911 0.025052968 0 ;
	setAttr ".tk[153]" -type "float3" -0.060177147 0.0029754697 0 ;
	setAttr ".tk[154]" -type "float3" -0.056622032 -0.022642046 0 ;
	setAttr ".tk[155]" -type "float3" -0.044409458 -0.049052432 0 ;
	setAttr ".tk[156]" -type "float3" -0.02677436 -0.073050298 0 ;
	setAttr ".tk[157]" -type "float3" -0.0043237153 -0.092145696 0 ;
	setAttr ".tk[158]" -type "float3" -8.4401108e-10 0.025999311 -0.014803426 ;
	setAttr ".tk[159]" -type "float3" -3.4124241e-09 0.043225281 -0.023068035 ;
	setAttr ".tk[160]" -type "float3" -1.1859811e-09 0.058582049 -0.024554087 ;
	setAttr ".tk[161]" -type "float3" -2.910383e-11 0.066141039 -0.017434768 ;
	setAttr ".tk[162]" -type "float3" -8.7311491e-10 0.060181804 -0.0051973243 ;
	setAttr ".tk[163]" -type "float3" -2.233719e-09 0.041135605 0.0057433732 ;
	setAttr ".tk[164]" -type "float3" -4.0745363e-10 0.014550813 0.01016609 ;
	setAttr ".tk[165]" -type "float3" -1.0841177e-09 -0.014480265 0.0062944707 ;
	setAttr ".tk[166]" -type "float3" -1.2369128e-10 -0.043856945 -0.0032172631 ;
	setAttr ".tk[167]" -type "float3" -4.9476512e-10 -0.070161611 -0.017660379 ;
	setAttr ".tk[168]" -type "float3" -1.0404619e-09 0.040854696 -0.020553559 ;
	setAttr ".tk[169]" -type "float3" 1.0550139e-09 0.058127001 -0.025227005 ;
	setAttr ".tk[170]" -type "float3" 3.6525307e-09 0.068830848 -0.022703748 ;
	setAttr ".tk[171]" -type "float3" -1.3533281e-09 0.07068225 -0.013176987 ;
	setAttr ".tk[172]" -type "float3" 8.2945917e-10 0.062063795 -0.00027949249 ;
	setAttr ".tk[173]" -type "float3" 9.6042641e-10 0.043964747 0.010973159 ;
	setAttr ".tk[174]" -type "float3" -1.8480932e-09 0.019574253 0.016711088 ;
	setAttr ".tk[175]" -type "float3" -7.1304385e-10 -0.0072609028 0.015459833 ;
	setAttr ".tk[176]" -type "float3" -8.7311491e-11 -0.033378623 0.0078514041 ;
	setAttr ".tk[177]" -type "float3" 1.7826096e-10 -0.056824956 -0.0043237209 ;
	setAttr ".tk[178]" -type "float3" 1.2732926e-09 0.045884017 0.011239804 ;
	setAttr ".tk[179]" -type "float3" -1.0477379e-09 0.050851081 0.022883222 ;
	setAttr ".tk[180]" -type "float3" -3.6525307e-09 0.049002424 0.036751606 ;
	setAttr ".tk[181]" -type "float3" 1.3533281e-09 0.040170979 0.050481666 ;
	setAttr ".tk[182]" -type "float3" -8.2945917e-10 0.025012895 0.0612211 ;
	setAttr ".tk[183]" -type "float3" 4.3655746e-10 0.0050211311 0.065932609 ;
	setAttr ".tk[184]" -type "float3" 1.8480932e-09 -0.018086782 0.063373782 ;
	setAttr ".tk[185]" -type "float3" 7.1304385e-10 -0.042236704 0.053650655 ;
	setAttr ".tk[186]" -type "float3" 8.7311491e-11 -0.062732518 0.037828781 ;
	setAttr ".tk[187]" -type "float3" -1.7826096e-10 -0.078809053 0.017660379 ;
	setAttr ".tk[188]" -type "float3" 0.00017369982 0.039920088 0.0048725926 ;
	setAttr ".tk[189]" -type "float3" -6.4028427e-10 0.047164056 0.013815414 ;
	setAttr ".tk[190]" -type "float3" 1.6007107e-10 0.048561182 0.027741726 ;
	setAttr ".tk[191]" -type "float3" 1.0622898e-09 0.040788881 0.042506196 ;
	setAttr ".tk[192]" -type "float3" 1.1641532e-09 0.025052954 0.054794911 ;
	setAttr ".tk[193]" -type "float3" 4.6784407e-09 0.0029754548 0.060177196 ;
	setAttr ".tk[194]" -type "float3" 1.4042598e-09 -0.022642031 0.056622028 ;
	setAttr ".tk[195]" -type "float3" 1.5279511e-10 -0.049052455 0.04440945 ;
	setAttr ".tk[196]" -type "float3" 1.2296368e-09 -0.073050305 0.02677427 ;
	setAttr ".tk[197]" -type "float3" -9.3859853e-10 -0.092145696 0.0043237209 ;
	setAttr ".tk[198]" -type "float3" -4.4383341e-10 0.025999311 -0.014803426 ;
	setAttr ".tk[199]" -type "float3" 2.750312e-09 0.043225281 -0.023068035 ;
	setAttr ".tk[200]" -type "float3" -1.0913936e-09 0.058582049 -0.024554087 ;
	setAttr ".tk[201]" -type "float3" -1.0622898e-09 0.066141039 -0.017434768 ;
	setAttr ".tk[202]" -type "float3" -1.1641532e-09 0.060181804 -0.0051973243 ;
	setAttr ".tk[203]" -type "float3" -4.6784407e-09 0.041135605 0.0057433732 ;
	setAttr ".tk[204]" -type "float3" -1.4042598e-09 0.014550813 0.01016609 ;
	setAttr ".tk[205]" -type "float3" -1.5279511e-10 -0.01448025 0.0062944707 ;
	setAttr ".tk[206]" -type "float3" -1.2296368e-09 -0.043856952 -0.0032172631 ;
	setAttr ".tk[207]" -type "float3" 9.3859853e-10 -0.070161618 -0.017660379 ;
	setAttr ".tk[208]" -type "float3" -0.00017369929 0.039920088 0.0048725926 ;
	setAttr ".tk[209]" -type "float3" 1.4551915e-10 0.047164056 0.013815414 ;
	setAttr ".tk[210]" -type "float3" 1.1859811e-09 0.048561197 0.027741726 ;
	setAttr ".tk[211]" -type "float3" 1.193257e-09 0.040788881 0.042506196 ;
	setAttr ".tk[212]" -type "float3" 8.7311491e-10 0.025052954 0.054794911 ;
	setAttr ".tk[213]" -type "float3" 2.233719e-09 0.0029754548 0.060177196 ;
	setAttr ".tk[214]" -type "float3" 4.0745363e-10 -0.022642031 0.056622028 ;
	setAttr ".tk[215]" -type "float3" 1.0841177e-09 -0.049052447 0.04440945 ;
	setAttr ".tk[216]" -type "float3" 1.2369128e-10 -0.073050313 0.02677427 ;
	setAttr ".tk[217]" -type "float3" 4.9476512e-10 -0.092145704 0.0043237209 ;
	setAttr ".tk[218]" -type "float3" -0.014803422 0.026465369 -0.00023644372 ;
	setAttr ".tk[219]" -type "float3" -0.023068026 0.044360261 -0.00028429891 ;
	setAttr ".tk[220]" -type "float3" -0.024554072 0.058582056 0 ;
	setAttr ".tk[221]" -type "float3" -0.017434707 0.066141024 0 ;
	setAttr ".tk[222]" -type "float3" -0.0051972992 0.060181804 0 ;
	setAttr ".tk[223]" -type "float3" 0.0057434086 0.041135605 0 ;
	setAttr ".tk[224]" -type "float3" 0.010166123 0.014550784 0 ;
	setAttr ".tk[225]" -type "float3" 0.0062945536 -0.014480295 0 ;
	setAttr ".tk[226]" -type "float3" -0.0032172024 -0.043856982 0 ;
	setAttr ".tk[227]" -type "float3" -0.006668333 -0.065716021 -0.025358398 ;
	setAttr ".tk[228]" -type "float3" -0.020553552 0.040854696 0 ;
	setAttr ".tk[229]" -type "float3" -0.025226992 0.058127016 0 ;
	setAttr ".tk[230]" -type "float3" -0.02270373 0.068830848 0 ;
	setAttr ".tk[231]" -type "float3" -0.013177005 0.070682265 0 ;
	setAttr ".tk[232]" -type "float3" -0.00027946683 0.062063765 0 ;
	setAttr ".tk[233]" -type "float3" 0.010973188 0.043964732 0 ;
	setAttr ".tk[234]" -type "float3" 0.016711175 0.019574208 0 ;
	setAttr ".tk[235]" -type "float3" 0.01545989 -0.0072609028 0 ;
	setAttr ".tk[236]" -type "float3" 0.0078514647 -0.033378623 0 ;
	setAttr ".tk[237]" -type "float3" 0.0066683274 -0.065716013 -5.1028901e-19 ;
	setAttr ".tk[238]" -type "float3" 0.011239817 0.045884017 0 ;
	setAttr ".tk[239]" -type "float3" 0.022883212 0.050851036 0 ;
	setAttr ".tk[240]" -type "float3" 0.036751632 0.049002424 0 ;
	setAttr ".tk[241]" -type "float3" 0.050481614 0.040170979 0 ;
	setAttr ".tk[242]" -type "float3" 0.061221134 0.025012881 0 ;
	setAttr ".tk[243]" -type "float3" 0.065932631 0.0050211311 0 ;
	setAttr ".tk[244]" -type "float3" 0.063373819 -0.018086797 0 ;
	setAttr ".tk[245]" -type "float3" 0.053650714 -0.042236734 0 ;
	setAttr ".tk[246]" -type "float3" 0.037828892 -0.062732555 0 ;
	setAttr ".tk[247]" -type "float3" 0.0066683292 -0.087700151 5.1028901e-19 ;
	setAttr ".tk[248]" -type "float3" 0.0040543666 0.039232004 0.00023263266 ;
	setAttr ".tk[249]" -type "float3" 0.013815429 0.047164042 0 ;
	setAttr ".tk[250]" -type "float3" 0.027741786 0.048561182 0 ;
	setAttr ".tk[251]" -type "float3" 0.042506266 0.040788867 0 ;
	setAttr ".tk[252]" -type "float3" 0.054794937 0.025052939 0 ;
	setAttr ".tk[253]" -type "float3" 0.060177237 0.0029754548 0 ;
	setAttr ".tk[254]" -type "float3" 0.056622062 -0.022642076 0 ;
	setAttr ".tk[255]" -type "float3" 0.044409536 -0.049052507 0 ;
	setAttr ".tk[256]" -type "float3" 0.02677433 -0.073050305 0 ;
	setAttr ".tk[257]" -type "float3" -0.0066683255 -0.087700151 -0.025358398 ;
	setAttr ".tk[258]" -type "float3" -0.014803422 0.026465362 0.00023644381 ;
	setAttr ".tk[259]" -type "float3" -0.023068026 0.044360232 0.00028429451 ;
	setAttr ".tk[260]" -type "float3" -0.024554042 0.058582049 0 ;
	setAttr ".tk[261]" -type "float3" -0.017434748 0.066141024 0 ;
	setAttr ".tk[262]" -type "float3" -0.0051972992 0.060181804 0 ;
	setAttr ".tk[263]" -type "float3" 0.0057434104 0.041135605 0 ;
	setAttr ".tk[264]" -type "float3" 0.010166123 0.014550784 0 ;
	setAttr ".tk[265]" -type "float3" 0.0062945536 -0.014480295 0 ;
	setAttr ".tk[266]" -type "float3" -0.0032172024 -0.043856982 0 ;
	setAttr ".tk[267]" -type "float3" -0.006668333 -0.065716021 0.025358398 ;
	setAttr ".tk[268]" -type "float3" 0.0040543666 0.039231997 -0.00023263282 ;
	setAttr ".tk[269]" -type "float3" 0.013815429 0.047164042 0 ;
	setAttr ".tk[270]" -type "float3" 0.027741786 0.048561167 0 ;
	setAttr ".tk[271]" -type "float3" 0.042506214 0.040788867 0 ;
	setAttr ".tk[272]" -type "float3" 0.054794934 0.025052939 0 ;
	setAttr ".tk[273]" -type "float3" 0.060177237 0.0029754548 0 ;
	setAttr ".tk[274]" -type "float3" 0.056622062 -0.022642076 0 ;
	setAttr ".tk[275]" -type "float3" 0.044409536 -0.049052507 0 ;
	setAttr ".tk[276]" -type "float3" 0.02677433 -0.073050313 0 ;
	setAttr ".tk[277]" -type "float3" -0.0066683255 -0.087700143 0.025358398 ;
createNode polyMergeVert -n "polyMergeVert3";
	rename -uid "72674B5B-5044-2E21-9AB9-D9AAAC032CE6";
	setAttr ".ics" -type "componentList" 6 "vtx[47]" "vtx[57]" "vtx[67]" "vtx[77]" "vtx[87]" "vtx[97]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.59254851677481146 0 1;
createNode polyTweak -n "polyTweak5";
	rename -uid "F043154D-974D-DD77-433D-489F37834C1C";
	setAttr ".uopa" yes;
	setAttr -s 41 ".tk";
	setAttr ".tk[12]" -type "float3" 0 2.3283064e-10 0 ;
	setAttr ".tk[13]" -type "float3" 0 -2.910383e-11 0 ;
	setAttr ".tk[21]" -type "float3" 0 -2.910383e-11 0 ;
	setAttr ".tk[22]" -type "float3" 0 2.3283064e-10 0 ;
	setAttr ".tk[23]" -type "float3" 0 -2.3283064e-10 0 ;
	setAttr ".tk[38]" -type "float3" 0 -7.2759576e-12 0 ;
	setAttr ".tk[47]" -type "float3" -0.025358383 0.0044455528 -0.01099208 ;
	setAttr ".tk[57]" -type "float3" -1.086543e-09 -0.0088911057 -0.01099208 ;
	setAttr ".tk[67]" -type "float3" -1.5522043e-10 -0.008891046 0.01099208 ;
	setAttr ".tk[77]" -type "float3" -0.025358381 0.0044455528 0.01099202 ;
	setAttr ".tk[87]" -type "float3" 0.025358383 0.0044456124 -0.01099202 ;
	setAttr ".tk[97]" -type "float3" 0.025358383 0.0044455528 0.01099202 ;
	setAttr ".tk[198]" -type "float3" 0 -7.2759576e-12 0 ;
	setAttr ".tk[218]" -type "float3" 0 -2.3283064e-10 0 ;
	setAttr ".tk[221]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[222]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[226]" -type "float3" 0 3.7252903e-09 0 ;
	setAttr ".tk[227]" -type "float3" 0 -7.4505806e-09 0 ;
	setAttr ".tk[229]" -type "float3" 0 -4.6566129e-10 0 ;
	setAttr ".tk[231]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[234]" -type "float3" 0 -1.8626451e-09 0 ;
	setAttr ".tk[235]" -type "float3" 0 -3.7252903e-09 0 ;
	setAttr ".tk[237]" -type "float3" 0 5.8207661e-11 0 ;
	setAttr ".tk[239]" -type "float3" 0 4.6566129e-10 0 ;
	setAttr ".tk[241]" -type "float3" 0 1.8626451e-09 0 ;
	setAttr ".tk[242]" -type "float3" 0 -1.8626451e-09 0 ;
	setAttr ".tk[244]" -type "float3" 0 -3.7252903e-09 0 ;
	setAttr ".tk[247]" -type "float3" 0 -2.3283064e-10 0 ;
	setAttr ".tk[248]" -type "float3" 0 -4.6566129e-10 0 ;
	setAttr ".tk[251]" -type "float3" 0 -1.8626451e-09 0 ;
	setAttr ".tk[252]" -type "float3" 0 -3.7252903e-09 0 ;
	setAttr ".tk[254]" -type "float3" 0 -3.7252903e-09 0 ;
	setAttr ".tk[255]" -type "float3" 0 -2.3283064e-10 0 ;
	setAttr ".tk[258]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[259]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[263]" -type "float3" 0 3.7252903e-09 0 ;
	setAttr ".tk[265]" -type "float3" 0 -2.3283064e-10 0 ;
	setAttr ".tk[266]" -type "float3" 0 -4.6566129e-10 0 ;
	setAttr ".tk[269]" -type "float3" 0 -1.8626451e-09 0 ;
	setAttr ".tk[270]" -type "float3" 0 -3.7252903e-09 0 ;
	setAttr ".tk[272]" -type "float3" 0 -3.7252903e-09 0 ;
createNode polyMergeVert -n "polyMergeVert4";
	rename -uid "D1BCC3D0-5840-C866-FE08-E497762E3177";
	setAttr ".ics" -type "componentList" 6 "vtx[102]" "vtx[112]" "vtx[122]" "vtx[132]" "vtx[142]" "vtx[152]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.59254851677481146 0 1;
createNode polyTweak -n "polyTweak6";
	rename -uid "31328A76-BE41-0C98-8557-AA829429FEDE";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk";
	setAttr ".tk[102]" -type "float3" -0.01099205 0.0044455528 0.025358398 ;
	setAttr ".tk[112]" -type "float3" -0.01099205 -0.008891046 -5.1028901e-19 ;
	setAttr ".tk[122]" -type "float3" 0.010991991 -0.0088911057 5.1028901e-19 ;
	setAttr ".tk[132]" -type "float3" 0.01099205 0.0044455528 0.025358398 ;
	setAttr ".tk[142]" -type "float3" -0.01099205 0.0044455528 -0.025358398 ;
	setAttr ".tk[152]" -type "float3" 0.01099205 0.0044455528 -0.025358398 ;
createNode polyMergeVert -n "polyMergeVert5";
	rename -uid "FB9F65FA-8245-E19E-6CAF-C988C5B0EA19";
	setAttr ".ics" -type "componentList" 6 "vtx[157]" "vtx[167]" "vtx[177]" "vtx[187]" "vtx[197]" "vtx[207]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.59254851677481146 0 1;
createNode polyTweak -n "polyTweak7";
	rename -uid "16584325-7E4B-A09E-8BC4-2983E5827913";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk";
	setAttr ".tk[157]" -type "float3" 0.025358383 0.0044455528 0.01099205 ;
	setAttr ".tk[167]" -type "float3" -1.7826096e-10 -0.008891046 0.01099205 ;
	setAttr ".tk[177]" -type "float3" 1.7826096e-10 -0.0088911057 -0.01099205 ;
	setAttr ".tk[187]" -type "float3" 0.025358384 0.0044455528 -0.01099205 ;
	setAttr ".tk[197]" -type "float3" -0.025358384 0.0044456124 0.01099205 ;
	setAttr ".tk[207]" -type "float3" -0.025358383 0.0044455528 -0.01099205 ;
createNode lambert -n "lambert2";
	rename -uid "133B641A-5E4D-4F52-1FF8-F59C77CB8303";
	setAttr ".c" -type "float3" 0.88919997 1 0 ;
createNode shadingEngine -n "lambert2SG";
	rename -uid "7E0A0E97-DC4B-E3DA-DD8C-42AF875381C4";
	setAttr ".ihi" 0;
	setAttr -s 9 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 9 ".gn";
createNode materialInfo -n "materialInfo1";
	rename -uid "97EF4802-D048-D7B1-690C-B3895FABA461";
createNode polyUnite -n "polyUnite1";
	rename -uid "E45D3C58-0F4F-560F-9A3A-C5BD61D4798C";
	setAttr -s 4 ".ip";
	setAttr -s 4 ".im";
createNode groupId -n "groupId1";
	rename -uid "604CE6DE-6E49-A374-885D-87871CA5BE89";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	rename -uid "AD026E9F-9348-D5EE-5544-EE951EE50CDE";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:4]";
createNode groupId -n "groupId2";
	rename -uid "51A81E58-4A4C-EF6B-9DDD-54B9DE9E6BED";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3";
	rename -uid "BD9DCB98-7742-BC33-0A03-B0A66C322F6F";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "4D506036-0245-E588-CA4F-B0A9277844B4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:4]";
createNode groupId -n "groupId4";
	rename -uid "46CFA7D1-F645-7BB1-72CD-7EA14C13D356";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5";
	rename -uid "F4E7BCA8-DE45-D4C5-0C39-4588E7E4EC6A";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	rename -uid "F85333CD-A54A-F66E-EB0E-40A7099FDA5C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:4]";
createNode groupId -n "groupId6";
	rename -uid "7D7E93DA-B24B-A2D6-040C-5E9F629E744A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7";
	rename -uid "8909D006-BC4A-64EF-2458-55A0D9F7D51A";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	rename -uid "B010D6AC-2649-1E86-ECC7-8D94DAFD701F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:4]";
createNode groupId -n "groupId8";
	rename -uid "6F583A60-B847-20B5-E9EB-FA8EB0838B66";
	setAttr ".ihi" 0;
createNode groupId -n "groupId9";
	rename -uid "45DEFA88-DC4F-19AB-85DF-4888F30AD858";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts5";
	rename -uid "7B64AF2B-804F-298F-0311-19BEEA770F77";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:19]";
createNode groupId -n "groupId10";
	rename -uid "8C381081-8841-A6F0-8BAA-E9A93811D67C";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts6";
	rename -uid "2E555AD4-9D42-7967-9DAE-D49160F83276";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:283]";
createNode groupId -n "groupId11";
	rename -uid "7C095DB6-354D-F9C3-F5D9-F0953F56C102";
	setAttr ".ihi" 0;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "4149041C-2C45-F080-B3BF-A9A426BAAA1C";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 465\n                -height 235\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n"
		+ "            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n"
		+ "            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 465\n            -height 235\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n"
		+ "                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n"
		+ "                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n"
		+ "                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 465\n                -height 235\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n"
		+ "            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n"
		+ "            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n"
		+ "            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 465\n            -height 235\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n"
		+ "                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n"
		+ "                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n"
		+ "                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 465\n                -height 235\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n"
		+ "            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n"
		+ "            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 465\n            -height 235\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n"
		+ "                -width 936\n                -height 515\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 936\n            -height 515\n"
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
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"Stereo\" -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels `;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n"
		+ "                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n"
		+ "                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n"
		+ "                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n"
		+ "                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n"
		+ "                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n"
		+ "                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n"
		+ "                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n"
		+ "                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n"
		+ "        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 936\\n    -height 515\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 936\\n    -height 515\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "5C7C74B2-414E-4808-4952-08B484370F61";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polyUnite -n "pasted__polyUnite2";
	rename -uid "EB9ABA65-8242-9C3C-9735-A0932A99119C";
	setAttr -s 4 ".ip";
	setAttr -s 4 ".im";
createNode groupId -n "pasted__pasted__groupId13";
	rename -uid "B8559D91-0346-A3B5-3D4B-E18FBFE38422";
	setAttr ".ihi" 0;
createNode groupParts -n "pasted__groupParts1";
	rename -uid "D1F7A640-D44E-DA35-CB0E-9FB8F50CE91B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:167]";
createNode polyUnite -n "pasted__polyUnite1";
	rename -uid "BF480514-E743-46C6-DCBF-079B76E0BA13";
	setAttr -s 4 ".ip";
	setAttr -s 4 ".im";
createNode groupId -n "pasted__pasted__groupId12";
	rename -uid "79A157E1-844F-11C3-EF10-4E8C82BF241B";
	setAttr ".ihi" 0;
createNode groupId -n "pasted__pasted__pasted__groupId13";
	rename -uid "EA3A5BD2-B043-37B7-BD4F-BCAD215AC15E";
	setAttr ".ihi" 0;
createNode groupId -n "pasted__groupId12";
	rename -uid "08D9D5B9-1240-A28A-A0B1-649AAF4CFD01";
	setAttr ".ihi" 0;
createNode groupId -n "pasted__pasted__pasted__groupId14";
	rename -uid "3D7B8E60-954B-E8BD-1D13-7B9B8E4F3528";
	setAttr ".ihi" 0;
createNode groupId -n "pasted__groupId15";
	rename -uid "50B090CD-9245-2CDA-2875-BE802B111DAD";
	setAttr ".ihi" 0;
createNode groupParts -n "pasted__pasted__groupParts1";
	rename -uid "ABE3119B-F948-BF8A-2817-498C1EA262A3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:167]";
createNode polyUnite -n "pasted__pasted__polyUnite1";
	rename -uid "F07AE72C-4645-D5B1-EFEA-979806BC8123";
	setAttr -s 4 ".ip";
	setAttr -s 4 ".im";
createNode groupId -n "pasted__pasted__pasted__groupId12";
	rename -uid "F8C10081-D749-9902-A0F2-4B853A790E08";
	setAttr ".ihi" 0;
createNode groupId -n "pasted__pasted__pasted__pasted__groupId13";
	rename -uid "2EF7147C-7C47-5323-B91B-FB8BE75D9A9F";
	setAttr ".ihi" 0;
createNode groupId -n "pasted__pasted__groupId14";
	rename -uid "6B070D42-494C-6492-6FB3-A399D0F787E7";
	setAttr ".ihi" 0;
createNode groupId -n "pasted__pasted__pasted__pasted__groupId14";
	rename -uid "44368D8D-C64C-5027-7708-AEBE45919464";
	setAttr ".ihi" 0;
createNode groupId -n "pasted__pasted__groupId15";
	rename -uid "74CB57D0-7E4A-EDE3-8EDE-418C794A30E6";
	setAttr ".ihi" 0;
createNode groupParts -n "pasted__pasted__pasted__groupParts1";
	rename -uid "5DA495C0-1044-D3A2-D446-9BB3E0675D44";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:167]";
createNode polyUnite -n "pasted__pasted__pasted__polyUnite1";
	rename -uid "B38A0C37-9441-AD6E-DCAE-10AE0C4991C9";
	setAttr -s 4 ".ip";
	setAttr -s 4 ".im";
createNode groupId -n "pasted__pasted__pasted__pasted__groupId12";
	rename -uid "B472AE13-A44D-9A7B-D428-DE887573AE54";
	setAttr ".ihi" 0;
createNode groupId -n "pasted__pasted__pasted__pasted__pasted__groupId13";
	rename -uid "E0A05F18-D349-AD12-40FE-179643B845ED";
	setAttr ".ihi" 0;
createNode groupId -n "pasted__pasted__pasted__groupId15";
	rename -uid "4B016C3B-E543-E22C-B920-ABB803215DBE";
	setAttr ".ihi" 0;
createNode groupId -n "pasted__pasted__pasted__pasted__pasted__groupId14";
	rename -uid "9D80D8D5-A34E-7C6A-6CB8-D5BA4735E295";
	setAttr ".ihi" 0;
createNode groupId -n "pasted__pasted__pasted__groupId16";
	rename -uid "F1B68F3D-A04E-1C05-5887-ECA53B4F3D33";
	setAttr ".ihi" 0;
createNode lambert -n "lambert3";
	rename -uid "8553ECE4-BC4F-089E-C212-09A1A6F57FE7";
	setAttr ".c" -type "float3" 0.11151802 0.81400001 0.21289788 ;
createNode shadingEngine -n "lambert3SG";
	rename -uid "64D24119-F14A-6206-98E4-2D91A27B716D";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 2 ".gn";
createNode materialInfo -n "materialInfo2";
	rename -uid "657D60C9-F843-CA41-5B01-F6816FE86575";
createNode lambert -n "lambert4";
	rename -uid "5A3FF89A-D142-6AED-4582-D8B360E27119";
	setAttr ".c" -type "float3" 0 0.068000004 0.03390028 ;
createNode shadingEngine -n "lambert4SG";
	rename -uid "21E38B49-D34C-A156-31EE-EC9301C57653";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
	rename -uid "DBF44F3E-2042-F428-9730-3B89B3329140";
createNode groupId -n "groupId12";
	rename -uid "CAAFBF88-FF4F-AEC4-6995-8DA3CE1F8E05";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts7";
	rename -uid "854B7484-034F-7739-8F1A-DFB26C0D7A5C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 38 "f[0]" "f[4]" "f[8:38]" "f[42]" "f[46]" "f[50:80]" "f[84]" "f[88:122]" "f[126]" "f[130]" "f[134:164]" "f[168]" "f[172]" "f[176:206]" "f[210]" "f[214]" "f[218:248]" "f[252]" "f[256]" "f[260:290]" "f[294]" "f[298]" "f[302:332]" "f[336]" "f[340]" "f[344:374]" "f[378]" "f[382]" "f[386:416]" "f[420]" "f[424]" "f[428:458]" "f[462]" "f[466]" "f[470:500]" "f[504]" "f[508]" "f[512:542]";
	setAttr ".irc" -type "componentList" 38 "f[1:3]" "f[5:7]" "f[39:41]" "f[43:45]" "f[47:49]" "f[81:83]" "f[85:87]" "f[123:125]" "f[127:129]" "f[131:133]" "f[165:167]" "f[169:171]" "f[173:175]" "f[207:209]" "f[211:213]" "f[215:217]" "f[249:251]" "f[253:255]" "f[257:259]" "f[291:293]" "f[295:297]" "f[299:301]" "f[333:335]" "f[337:339]" "f[341:343]" "f[375:377]" "f[379:381]" "f[383:385]" "f[417:419]" "f[421:423]" "f[425:427]" "f[459:461]" "f[463:465]" "f[467:469]" "f[501:503]" "f[505:507]" "f[509:511]" "f[543:545]";
createNode groupId -n "groupId13";
	rename -uid "DB7A3038-664A-335B-3BC1-8680D941509F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId14";
	rename -uid "3E8C1795-0F4C-80A1-610F-CB8BA2B7F3DD";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts8";
	rename -uid "F95119FB-BB4F-43AF-3B00-B881803798B5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 13 "f[1:3]" "f[43:45]" "f[85:87]" "f[127:129]" "f[169:171]" "f[211:213]" "f[253:255]" "f[295:297]" "f[337:339]" "f[379:381]" "f[421:423]" "f[463:465]" "f[505:507]";
createNode lambert -n "lambert5";
	rename -uid "96F99EDB-904B-1873-61F9-BDBEA3D1A244";
	setAttr ".c" -type "float3" 0 0.42500001 0.21182708 ;
createNode shadingEngine -n "lambert5SG";
	rename -uid "E5F81A4C-2741-9DE8-BB9C-CBBBE2D544C5";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo4";
	rename -uid "29EDD15E-4747-A0FD-A772-B69CD15DB8AB";
createNode groupId -n "groupId15";
	rename -uid "80D2FCAF-5E4E-68A4-E6B9-B3972789AAF3";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts9";
	rename -uid "C93BBD44-0E49-ACCB-923C-F8A1452EBC77";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 11 "f[47:49]" "f[131:133]" "f[173:175]" "f[215:217]" "f[257:259]" "f[299:301]" "f[341:343]" "f[383:385]" "f[425:427]" "f[467:469]" "f[509:511]";
createNode lambert -n "lambert6";
	rename -uid "DC459B80-0C45-C4DB-05F7-EF819167B8B6";
	setAttr ".c" -type "float3" 0.069579989 0.70999998 0.32794675 ;
createNode shadingEngine -n "lambert6SG";
	rename -uid "DFDD47D8-FF4E-6E82-4530-EF83BEA726D8";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo5";
	rename -uid "683909FA-D240-F6A5-F016-A18340E85185";
createNode groupId -n "groupId16";
	rename -uid "592AB20E-1348-C880-7DEF-E68EB4FAC0A9";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts10";
	rename -uid "5C00FF79-834B-A8AB-AAC0-2782FDC4DBE9";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 13 "f[39:41]" "f[81:83]" "f[123:125]" "f[165:167]" "f[207:209]" "f[249:251]" "f[291:293]" "f[333:335]" "f[375:377]" "f[417:419]" "f[459:461]" "f[501:503]" "f[543:545]";
createNode lambert -n "lambert7";
	rename -uid "479C6676-5F46-EDBC-99B6-04A1F08B68CA";
	setAttr ".c" -type "float3" 0.56060028 1 0.15700001 ;
createNode shadingEngine -n "lambert7SG";
	rename -uid "E5F362ED-D647-B393-AD48-5A9B4F2AC41E";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo6";
	rename -uid "EB2CE6C4-7A4D-B333-770B-6389835F7597";
createNode groupId -n "groupId17";
	rename -uid "3E86EF25-FE4F-A35D-4062-3BBEC4012CBF";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts11";
	rename -uid "2CBE70BA-984C-6E1D-F97D-41AE0CEB9A22";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[5:7]";
createNode skinCluster -n "skinCluster1";
	rename -uid "4FFE76DF-D543-B58D-18DB-1BA00A239075";
	setAttr -s 533 ".wl";
	setAttr -s 9 ".wl[0].w[0:8]"  0.40057693103975534 0.20006783138862219 
		0.10821679932992749 0.077281383120079997 0.056541336663477014 0.046808438329694509 
		0.040676171243967836 0.03693334338107436 0.032897765503401316;
	setAttr -s 9 ".wl[1].w[0:8]"  0.40057696830872314 0.20006781925476402 
		0.10821679196401271 0.077281378078739568 0.056541333158560435 0.046808435516289611 
		0.040676168851905233 0.036933341239982445 0.032897763627022653;
	setAttr -s 9 ".wl[2].w[0:8]"  0.42609289828437863 0.42747972748893043 
		0.053013443331614896 0.028910567783580809 0.018317704903096279 0.014283351630157136 
		0.011976455530848574 0.010648460690661428 0.0092773903567319009;
	setAttr -s 9 ".wl[3].w[0:8]"  0.4919424410488541 0.21082698414477602 
		0.08758088299335709 0.058340512048538552 0.040925788790664115 0.033255246595406893 
		0.028572891359780698 0.025767746997016922 0.022787506021605602;
	setAttr -s 9 ".wl[4].w[0:8]"  0.062962265650575222 0.12224960643542523 
		0.26036625014136305 0.26145601336465402 0.10952826995267403 0.064995931496153181 
		0.047420755158303692 0.039213932105360685 0.031806975695490708;
	setAttr -s 9 ".wl[5].w[0:8]"  0.067463477502897357 0.12735200666672158 
		0.24514588754528038 0.24661094160311414 0.11628815265346616 0.069621677737106286 
		0.051037582243370863 0.042206593698304387 0.034273680349738919;
	setAttr -s 9 ".wl[6].w[0:8]"  0.0084989610728322378 0.013064958498629108 
		0.023726339020469649 0.49761935843745497 0.39319724915223542 0.028418378217461612 
		0.015491621866234649 0.011467236627311778 0.0085158971073705479;
	setAttr -s 9 ".wl[7].w[0:8]"  0.039073583182097305 0.070205392126929861 
		0.19710972245676797 0.41462934511778704 0.12439834303243665 0.058279035579575221 
		0.039563298463640789 0.031698070247460741 0.025043209793304377;
	setAttr -s 9 ".wl[8].w[0:8]"  0.68757531029042274 0.11865103922380894 
		0.054781079175366787 0.037731151159202871 0.027046248704083141 0.022203889258875838 
		0.01919717943255822 0.017380532597059937 0.01543357015862136;
	setAttr -s 9 ".wl[9].w[0:8]"  0.68757532922225384 0.11865103221261351 
		0.054781075819392587 0.037731148838054569 0.02704624703772382 0.022203887889861378 
		0.019197178248661205 0.017380531524947795 0.015433569206491237;
	setAttr -s 9 ".wl[10].w[0:8]"  0.73661439482297242 0.10032392571235954 
		0.04616645936117289 0.031756841871472048 0.022744183864525605 0.018670255635961149 
		0.016138813873712715 0.014611582997978172 0.012973541859845244;
	setAttr -s 9 ".wl[11].w[0:8]"  0.53829079702430216 0.17161090167647658 
		0.08161477407610182 0.056474273934592853 0.040568547770708757 0.033327650734540887 
		0.028826234622037036 0.026103065160116116 0.023183755001123817;
	setAttr -s 9 ".wl[12].w[0:8]"  0.53829082164088815 0.17161089355080497 
		0.08161476953399488 0.056474270726074527 0.040568545446467118 0.033327648818766008 
		0.028826232962689342 0.026103063656037609 0.023183753664277183;
	setAttr -s 9 ".wl[13].w[0:8]"  0.56590436022581625 0.16223943395682414 
		0.076704573328328821 0.052943259097127653 0.037967144831384136 0.031184551561013987 
		0.026961815009041719 0.02441477436104518 0.021680087629418109;
	setAttr -s 9 ".wl[14].w[0:8]"  0.37022879755885318 0.37275960141856729 
		0.092577210910166366 0.050895241406359266 0.032260635819991008 0.025145801306297531 
		0.02107764264524517 0.018735938755988508 0.016319130178531753;
	setAttr -s 9 ".wl[15].w[0:8]"  0.37022880274283121 0.37275960683341375 
		0.092577207242872647 0.050895239283467821 0.03226063445892529 0.02514580024116175 
		0.021077641751376379 0.018735937960597155 0.016319129485354033;
	setAttr -s 9 ".wl[16].w[0:8]"  0.38075003792115303 0.38609631774027997 
		0.084688905141820064 0.046081328957357628 0.029106712938065143 0.022679610498631295 
		0.019000277201065965 0.016889366423449993 0.014707443178176965;
	setAttr -s 9 ".wl[17].w[0:8]"  0.088265933700499427 0.36326951258182194 
		0.3327016879364515 0.085420605088889545 0.04088944516844132 0.029095214513519034 
		0.023227763996461672 0.020095870191778057 0.017033966822137602;
	setAttr -s 9 ".wl[18].w[0:8]"  0.088265935686944783 0.36326950814825104 
		0.33270168542406287 0.085420606952466699 0.040889446133107729 0.029095215204200799 
		0.023227764550458236 0.020095870671271141 0.017033967229236682;
	setAttr -s 9 ".wl[19].w[0:8]"  0.071899555730303766 0.4021008242868086 
		0.35049788821954742 0.070031712499692603 0.033117458887232137 0.023546913958845676 
		0.018783585063459 0.016250917962906723 0.013771143391204098;
	setAttr -s 9 ".wl[20].w[0:8]"  0.039332589237251796 0.087805342755172835 
		0.36282504008781913 0.34609345897375443 0.061771410654611135 0.03606300056864483 
		0.026412960563809051 0.021884185510712754 0.01781201164822405;
	setAttr -s 9 ".wl[21].w[0:8]"  0.03933258819337377 0.087805340582017957 
		0.36282504457891201 0.34609346202792113 0.061771409062281207 0.036062999608554996 
		0.026412959855948329 0.02188418492244059 0.017812011168550135;
	setAttr -s 9 ".wl[22].w[0:8]"  0.029640945637114832 0.067163197193641069 
		0.40939457067149265 0.37023457340848404 0.046662947012857975 0.027169904735991464 
		0.019872237894240145 0.01646493733544277 0.013396686110735091;
	setAttr -s 9 ".wl[23].w[0:8]"  0.02593153408804174 0.041537386507693029 
		0.083181901687642792 0.4582192396926969 0.23690921883902136 0.063871672848235375 
		0.038503158328340857 0.029440266669504007 0.022405621338823952;
	setAttr -s 9 ".wl[24].w[0:8]"  0.025931532957440193 0.04153738471049595 
		0.083181898240711094 0.45821925764139759 0.2369092138805389 0.063871670152427187 
		0.03850315666561295 0.029440265389710014 0.02240562036166607;
	setAttr -s 9 ".wl[25].w[0:8]"  0.022037994251174566 0.035387363257623414 
		0.071526581115755022 0.52791861242702132 0.21195471429294033 0.054445146116932061 
		0.032702667614271853 0.025005098200718324 0.019021822723563134;
	setAttr -s 9 ".wl[26].w[0:8]"  0.015486413667696311 0.021616281812344519 
		0.032312573953782793 0.086292003234695963 0.48050644608503079 0.24206675423314264 
		0.059627942719798675 0.037264391866115174 0.024827192427393091;
	setAttr -s 9 ".wl[27].w[0:8]"  0.01548641326822868 0.021616281254853945 
		0.032312573122566364 0.086292001136159785 0.48050645638509659 0.24206675088177923 
		0.059627941241329668 0.037264390918326749 0.024827191791659101;
	setAttr -s 9 ".wl[28].w[0:8]"  0.012846301591868933 0.017944241467621039 
		0.02685609619083143 0.072128582675079808 0.55493894918570463 0.21435565673299231 
		0.049450171812298091 0.03090380942974735 0.020576190913856495;
	setAttr -s 9 ".wl[29].w[0:8]"  0.0068935106036452417 0.0089240167768109852 
		0.011843154534384422 0.020242678947566334 0.04439511459390006 0.44224644293366833 
		0.39143416905956191 0.05115328200068734 0.022867630549775416;
	setAttr -s 9 ".wl[30].w[0:8]"  0.006893510569976633 0.0089240167330899983 
		0.011843154476178732 0.020242678847902078 0.044395114367789416 0.44224644339820351 
		0.39143416941029446 0.051153281756158568 0.022867630440406732;
	setAttr -s 9 ".wl[31].w[0:8]"  0.0068201797951248444 0.0088313258081323155 
		0.011723370612563384 0.020043825729338126 0.044115806774348218 0.44803819818107793 
		0.38722847269842858 0.050603674883382986 0.022595145517603648;
	setAttr -s 9 ".wl[32].w[0:8]"  0.004614755378925718 0.0056967150575197223 
		0.0070872673719920305 0.010266503139443786 0.015671998623942703 0.02906909797413337 
		0.08495192673602546 0.78887197739691195 0.053769758321105136;
	setAttr -s 9 ".wl[33].w[0:8]"  0.004614755036344809 0.0056967146345866752 
		0.0070872668457956358 0.010266502377248661 0.015671997460308177 0.029069095818465972 
		0.084951920486275145 0.78887199297352228 0.053769754367452689;
	setAttr -s 9 ".wl[34].w[0:8]"  0.0058310521918866895 0.0071987339624905279 
		0.0089564862630061894 0.0129743370384993 0.019810452595985441 0.036729371713382829 
		0.10733841487340133 0.73356556212201218 0.067595589239335591;
	setAttr -s 9 ".wl[35].w[0:8]"  0.94034537011843444 0.022841927729025782 
		0.010427716849439902 0.0071688775903353454 0.0051340682740484544 0.0042138210101585879 
		0.0036425593306998669 0.0032976628357930171 0.0029279962620644912;
	setAttr -s 9 ".wl[36].w[0:8]"  0.021711881065276176 0.02593907609860777 
		0.030987675755785857 0.041146336280348035 0.055018676051940316 0.078045820125857451 
		0.11525285514463017 0.31594883973877719 0.31594883973877719;
	setAttr -s 9 ".wl[37].w[0:8]"  0.02541314086474274 0.032617281061962843 
		0.042701257950229464 0.069659697545905341 0.12717383435124319 0.23021983640241594 
		0.23046990019357338 0.15746838668401805 0.084276664945909019;
	setAttr -s 9 ".wl[38].w[0:8]"  0.025415803618745944 0.032682125830740906 
		0.042868128438538072 0.070027505366107051 0.12966852472431478 0.22927860371863515 
		0.229525934588344 0.1571091875529457 0.083424186161628444;
	setAttr -s 9 ".wl[39].w[0:8]"  0.003287504894795222 0.0040306553116616732 
		0.0049709690778855188 0.0070602962961814515 0.010432877196757326 0.017925799364637521 
		0.040187629264137006 0.85117129443877704 0.060932974155167158;
	setAttr -s 9 ".wl[40].w[0:8]"  0.013795488440430383 0.017428751705082523 
		0.022350527446475772 0.034787104815587284 0.060631051680591734 0.1629965008471195 
		0.36465083739906473 0.25318494640552136 0.07017479126012667;
	setAttr -s 9 ".wl[41].w[0:8]"  0.21282090958389904 0.18743927249977282 
		0.14311945406455956 0.1136851451727811 0.088169882575956288 0.074795915140807287 
		0.065794752339818671 0.060197751117213691 0.053976917505191555;
	setAttr -s 9 ".wl[42].w[0:8]"  0.31469574009997381 0.21047833763825052 
		0.12609346211367609 0.091789989636318028 0.06767984222443986 0.056233114295206103 
		0.048923124858144339 0.044471115419629559 0.03963527371436168;
	setAttr -s 9 ".wl[43].w[0:8]"  0.20720443326193422 0.20732476628220384 
		0.16496884070767182 0.1184900072917744 0.082953183544539386 0.066771462878279578 
		0.056775347218904156 0.050885941482867458 0.044626017331825078;
	setAttr -s 9 ".wl[44].w[0:8]"  0.23178226339259606 0.20982830437029937 
		0.14626474995152627 0.10886522994266387 0.080316451782511872 0.066527058157590233 
		0.057667114965348286 0.052293654060066898 0.046455173377397067;
	setAttr -s 9 ".wl[45].w[0:8]"  0.09455694360629574 0.1410459989383131 
		0.17290460148064624 0.17291897655995639 0.13187086676295801 0.095810426020989839 
		0.074728188868521395 0.063538431415163452 0.052625566347155706;
	setAttr -s 9 ".wl[46].w[0:8]"  0.10232581493688681 0.13678303097078401 
		0.15422849760328597 0.15422978084754907 0.13058211929578745 0.1033989644807337 0.084096960047271824 
		0.072942367865067706 0.06141246395263348;
	setAttr -s 9 ".wl[47].w[0:8]"  0.067255984221875328 0.093824780631169308 
		0.12951545362859332 0.16226160056718819 0.16190254627056883 0.13413333182683879 0.10158305648583695 
		0.08341678020511463 0.066106466162814723;
	setAttr -s 9 ".wl[48].w[0:8]"  0.086840454938300365 0.122802043906686 
		0.15610299801538149 0.16066680477712778 0.14367029199865439 0.11011108355499022 0.086322236154043996 
		0.073223602879146227 0.060260483775669657;
	setAttr -s 9 ".wl[49].w[0:8]"  0.26023693493077976 0.21049255303353379 
		0.13819479852324931 0.10244322704522785 0.075970664727266421 0.063200134408933101 
		0.054978200362639382 0.049969763364210211 0.044513723604159984;
	setAttr -s 9 ".wl[50].w[0:8]"  0.2358942157253974 0.2020015937496851 
		0.14232283955529973 0.10826051229278393 0.081452820269055537 0.068151945232053437 
		0.059464700548753913 0.05414243311588926 0.048308939511081568;
	setAttr -s 9 ".wl[51].w[0:8]"  0.24803604247360483 0.20663882216379684 
		0.14040997579559342 0.10533057795505353 0.0786209210469829 0.065573416160345635 0.05711866785976083 
		0.051955745178615058 0.046315831366246923;
	setAttr -s 9 ".wl[52].w[0:8]"  0.27393503095153277 0.2138954256548741 
		0.13547370090059713 0.09930105322081198 0.073205960085708038 0.060759145958593802 
		0.052792471984776768 0.047949742936377868 0.042687468306727684;
	setAttr -s 9 ".wl[53].w[0:8]"  0.22549331256416169 0.19737592505926801 
		0.14365412441638967 0.11078722991678031 0.084043014554977702 0.070556022466715898 
		0.061673428663133793 0.056212112359003079 0.050204829999569975;
	setAttr -s 9 ".wl[54].w[0:8]"  0.24672461206433766 0.2061780743715467 
		0.14062655367828014 0.10564323153983417 0.078918399496239716 0.065842035187821724 
		0.057362509235607366 0.052182415216936562 0.04652216920939603;
	setAttr -s 9 ".wl[55].w[0:8]"  0.22177887907091329 0.22211193451773364 
		0.16581313039984732 0.11300923633909027 0.076975298830821451 0.061363128787844792 
		0.051925830785572426 0.046415743720574186 0.040606817547602522;
	setAttr -s 9 ".wl[56].w[0:8]"  0.19400334040878869 0.19420276664598649 
		0.1637056461716869 0.12314275501412653 0.088413382654281669 0.071790855120172303 
		0.061297755345886655 0.055061904900682024 0.048381593738388629;
	setAttr -s 9 ".wl[57].w[0:8]"  0.20679097000308613 0.20704577808950533 
		0.16568852784390486 0.118809027972264 0.082980316173855248 0.066713243173095516 0.056682132042179076 
		0.050779291794104606 0.044510712908005054;
	setAttr -s 9 ".wl[58].w[0:8]"  0.14879077301742047 0.19671403614955965 
		0.19618070211838534 0.14788580659603814 0.092221681494244701 0.069508499692194414 
		0.056697328129555698 0.049599549570769515 0.042401623231831991;
	setAttr -s 9 ".wl[59].w[0:8]"  0.14741413819315949 0.17635768736483232 
		0.17613322225782191 0.14715844374328885 0.10145091102498285 0.078982675123634508 
		0.065363622667290025 0.057596709113344732 0.049542590511645404;
	setAttr -s 9 ".wl[60].w[0:8]"  0.14860000615353386 0.18590847394464216 
		0.18556393307946295 0.14806497585924078 0.097095050920795137 0.07430449862136175 
		0.061010466726098708 0.053548553870203304 0.045904040824661353;
	setAttr -s 9 ".wl[61].w[0:8]"  0.09558008185027364 0.14966615607729472 
		0.18270621536000559 0.18229168538599724 0.12544780890299717 0.088714200612491828 
		0.068786566156501472 0.058414098138856133 0.048393187515582338;
	setAttr -s 9 ".wl[62].w[0:8]"  0.1020987599463318 0.14572303388406621 
		0.16648773410578824 0.16625220689009923 0.12752185050213177 0.095725728291075937 
		0.076123992205361202 0.065392471099221666 0.054674223075924115;
	setAttr -s 9 ".wl[63].w[0:8]"  0.098974356171207617 0.1479769109507344 
		0.17430049288840538 0.17398775569167557 0.1267841048642889 0.092306263532995009 0.072417904773258296 
		0.061822675287272075 0.051429535840162834;
	setAttr -s 9 ".wl[64].w[0:8]"  0.068334399501451398 0.099130825196917807 
		0.14300016251295997 0.17285146413307667 0.16732486107719044 0.12428800275589731 0.091315323148021793 
		0.074577850675599092 0.059177110998885472;
	setAttr -s 9 ".wl[65].w[0:8]"  0.073868355706761646 0.10352777933085507 
		0.13991439925362203 0.16032949825733267 0.15664635821335968 0.12506902649258256 0.096131620852591373 
		0.080056946883754448 0.064456015009140513;
	setAttr -s 9 ".wl[66].w[0:8]"  0.07100192626965085 0.10137071815600843 
		0.14164548369549881 0.16651866868561818 0.16197923837802014 0.12483010118461525 0.093719122632042615 
		0.077238781035432094 0.061695959963113473;
	setAttr -s 9 ".wl[67].w[0:8]"  0.0524214783931891 0.070386490552226955 
		0.095944066530593675 0.14770637749045237 0.165696873738889 0.16269190152761639 0.12760489419227752 
		0.10132186591372017 0.07622605166103491;
	setAttr -s 9 ".wl[68].w[0:8]"  0.056389025571365957 0.074810150163249323 
		0.099673865450778554 0.14396111354820143 0.15738336987622562 0.15521355972109738 
		0.12756345205867542 0.10449421527591329 0.080511248334493024;
	setAttr -s 9 ".wl[69].w[0:8]"  0.054270411908235928 0.072478538588059277 
		0.097769787937149216 0.14596689012989678 0.16163674837906522 0.15906201509261725 
		0.12766675880915615 0.10288756333611071 0.078261285819709508;
	setAttr -s 9 ".wl[70].w[0:8]"  0.043756245320173109 0.055602698644633887 
		0.071154873241092403 0.105020558680692 0.14611012816462374 0.16335545984171218 0.16268095190822496 
		0.1447683851919804 0.10755069900686723;
	setAttr -s 9 ".wl[71].w[0:8]"  0.046236866734133603 0.058511560347654028 
		0.07435016609930771 0.10741078329466501 0.14436088846151618 0.15850039759540671 0.15792231051226191 
		0.14305668419168321 0.10965034276337177;
	setAttr -s 9 ".wl[72].w[0:8]"  0.044887383338352356 0.056935797039631503 
		0.072631910931101801 0.10616223812046688 0.14533271898180927 0.1610645261387873 0.16043505601056249 
		0.14399782911480691 0.10855254032448144;
	setAttr -s 9 ".wl[73].w[0:8]"  0.04051609042519462 0.049514721457419607 
		0.060528563098268658 0.082867715028586295 0.11221114324916075 0.14781891007439915 
		0.17203479191294954 0.17428368015425627 0.16022438459976504;
	setAttr -s 9 ".wl[74].w[0:8]"  0.041665134459569611 0.05085847442673589 
		0.062057232634718892 0.084537726928534951 0.11348851221146287 0.1473970402949743 
		0.16961405098910964 0.17160515918426014 0.1587766688706338;
	setAttr -s 9 ".wl[75].w[0:8]"  0.04103117140548565 0.05011813222507721 
		0.061216703758031454 0.083624281193957831 0.1128000181531302 0.14764042870984304 
		0.17093635704565074 0.17306329288621627 0.15956961462260766;
	setAttr -s 9 ".wl[76].w[0:8]"  0.24781359489704718 0.20656133134656324 
		0.14044695014708602 0.10538356518638101 0.078671220104347836 0.065618801508949165 
		0.057159850725874262 0.051994020041674152 0.046350666042077132;
	setAttr -s 9 ".wl[77].w[0:8]"  0.042219622436794592 0.050142649785779848 
		0.059328182259314896 0.076680228131447439 0.098002236072576257 0.12590685239583754 
		0.15616299346626217 0.19577861772599373 0.19577861772599361;
	setAttr -s 9 ".wl[78].w[0:8]"  0.038388570403044227 0.048954817984329331 
		0.063157933996457472 0.096414230708904106 0.14503595733357885 0.17541483082199524 
		0.17525686761737355 0.15205369548089825 0.10532309565341899;
	setAttr -s 9 ".wl[79].w[0:8]"  0.047751128249985841 0.060041060919642036 
		0.075611090240606971 0.10705465279786906 0.14097642854621545 0.15536339456038922 
		0.15524568282941109 0.14423004345057505 0.1137265184053053;
	setAttr -s 9 ".wl[80].w[0:8]"  0.040725324441141401 0.049466636065614043 
		0.060038029921176586 0.08113931640972602 0.10849352250916065 0.14275561527549441 
		0.17041710692721201 0.17713027050947833 0.16983417794099637;
	setAttr -s 9 ".wl[81].w[0:8]"  0.039142092035254393 0.048923972563341425 
		0.061486320378393799 0.088836557189614015 0.12706683642404024 0.16539671425524108 
		0.17217010276323666 0.16854850465409152 0.12842889973678695;
	setAttr -s 9 ".wl[82].w[0:8]"  0.34055525099173578 0.20519876562470207 
		0.12024484941679547 0.087586318168657015 0.064772608771374585 0.05388925447024067 
		0.04694999558416408 0.042704389625131324 0.038098567347199006;
	setAttr -s 9 ".wl[83].w[0:8]"  0.22069117065305777 0.18917016205677684 
		0.14114311955958789 0.1116758164725065 0.086677509562010757 0.073513072581346442 
		0.064737896562565928 0.059234318416186933 0.053156934135961023;
	setAttr -s 9 ".wl[84].w[0:8]"  0.21611721607721798 0.2158888781277106 
		0.16123520652205758 0.11441883827479764 0.080189655449777242 0.064559617016007639 
		0.054992443474169164 0.049305162354461127 0.043292982703801094;
	setAttr -s 9 ".wl[85].w[0:8]"  0.24443403978117068 0.21285759506689467 
		0.1425496154450796 0.10554187558798339 0.077943223389263613 0.064578191229403961 
		0.056048145963399743 0.050840800536644977 0.045206513000159342;
	setAttr -s 9 ".wl[86].w[0:8]"  0.10030608293367339 0.1432914898663378 
		0.1665462772589156 0.16649523724501211 0.13004553879926475 0.096558476221299108 0.076607673110284963 
		0.065498961517229309 0.054650263047982886;
	setAttr -s 9 ".wl[87].w[0:8]"  0.084699863587986521 0.14663240682719578 
		0.20575455167224171 0.20558058019566752 0.12257844745037595 0.0806820260869551 0.060967862611945832 
		0.051133575878512798 0.041970685689118895;
	setAttr -s 9 ".wl[88].w[0:8]"  0.064951978452084683 0.092559663155078256 
		0.13263857347581137 0.17177464785671931 0.17061128365922129 0.13149330240755921 0.096496234997725541 
		0.078043258233646759 0.061431057762153504;
	setAttr -s 9 ".wl[89].w[0:8]"  0.07854006405328208 0.12250643283643356 
		0.17839384204401806 0.18668437138215613 0.14850646935143391 0.099560512101147622 
		0.074283028336287069 0.061586460636128201 0.049938819259113483;
	setAttr -s 9 ".wl[90].w[0:8]"  0.24678799124516171 0.20290294580155988 
		0.13919234554961257 0.10569404976089315 0.079734372606834525 0.066755354682880061 
		0.058337497308573932 0.053134619048252875 0.047460823996231305;
	setAttr -s 9 ".wl[91].w[0:8]"  0.27487499530298548 0.20988089137282298 
		0.13415156457401797 0.099429022563207639 0.073988728973613582 0.061617342015427783 
		0.053690754912650837 0.048824253840518847 0.043542446444754843;
	setAttr -s 9 ".wl[92].w[0:8]"  0.25860232158198521 0.2063463207652099 
		0.13710600511658649 0.1029852221029513 0.077225956187409128 0.064491717111451685 
		0.056288478904379449 0.051227764269692166 0.045726213960334786;
	setAttr -s 9 ".wl[93].w[0:8]"  0.2353773639346361 0.19887916917285056 
		0.14090356033043727 0.10833871602899856 0.082336162745099556 0.069141467141001403 
		0.060521262086644864 0.055175063632158711 0.049327234928172904;
	setAttr -s 9 ".wl[94].w[0:8]"  0.29209112037381579 0.21228145052552508 
		0.13073982770170844 0.09581647802941276 0.070866565544483534 0.058885171745583456 
		0.05124526510698002 0.046569939291229344 0.04150418168126159;
	setAttr -s 9 ".wl[95].w[0:8]"  0.25570420948859868 0.20558590009658251 
		0.13755819345917042 0.10362045695924149 0.077842336846782045 0.065044230274132517 
		0.056794115319868499 0.051696182406647195 0.046154375148976398;
	setAttr -s 9 ".wl[96].w[0:8]"  0.20128119054488189 0.20121716663453945 
		0.16138103215151212 0.11983127301474325 0.086006952812854379 0.069798753711870276 
		0.059689382426685436 0.053623576391402264 0.047170672311510897;
	setAttr -s 9 ".wl[97].w[0:8]"  0.23321850299142774 0.2330688759007527 
		0.16012903728971042 0.10785617033542003 0.073623443499931746 0.058740398671744527 
		0.049802446743659412 0.04454237296553866 0.039018751601814783;
	setAttr -s 9 ".wl[98].w[0:8]"  0.21356659921488924 0.21347667883274243 
		0.1616444045570985 0.11546027227271752 0.081144742539042844 0.065333452480901583 
		0.055663633171260225 0.049897872768310418 0.043812344163037337;
	setAttr -s 9 ".wl[99].w[0:8]"  0.15368038560279804 0.18021176319710364 
		0.17880147801705318 0.14456722848102774 0.098676473129128764 0.076568034947475536 
		0.063453766027581279 0.055899895806880241 0.04814097479095155;
	setAttr -s 9 ".wl[100].w[0:8]"  0.15629326452004694 0.20289731576883682 
		0.20002416337619072 0.14304161667378404 0.088411520929393514 0.066555230712272415 
		0.054402974703190436 0.047610675785432315 0.040763237530852661;
	setAttr -s 9 ".wl[101].w[0:8]"  0.1556208157014263 0.18868050742944426 
		0.18667081283497997 0.14445054996196247 0.094771583851532129 0.072528404289460308 
		0.059747211802003444 0.052465280800512028 0.045064833328678944;
	setAttr -s 9 ".wl[102].w[0:8]"  0.10437992928524659 0.15011647286754809 
		0.16933855302533415 0.16832860916702888 0.12514400383733387 0.092746227144982249 
		0.073741605679208483 0.063259376932511199 0.05294522206080652;
	setAttr -s 9 ".wl[103].w[0:8]"  0.097352214258377659 0.15541606134777453 
		0.18715344128074687 0.1853203035520215 0.12149945819926267 0.084939413729793745 0.065926095235654597 
		0.055960290687030012 0.046432721709338216;
	setAttr -s 9 ".wl[104].w[0:8]"  0.10175447403466141 0.15246745648344212 
		0.17613347575269497 0.17484644823455661 0.12414406538471914 0.089676318158668292 
		0.070556392465251194 0.060218637420520589 0.050202732065485714;
	setAttr -s 9 ".wl[105].w[0:8]"  0.074159464887264978 0.10499085269191172 
		0.14348236915416582 0.16401776395938844 0.15851478946087261 0.12217658408441008 0.093221558045450612 
		0.077249714377490772 0.062186903339044787;
	setAttr -s 9 ".wl[106].w[0:8]"  0.068294350142528784 0.10040680920573596 
		0.14760432055173014 0.17822698299526724 0.16951202275227081 0.12022140900056066 0.087710737180485693 
		0.071360318381830309 0.056663049789590435;
	setAttr -s 9 ".wl[107].w[0:8]"  0.071614360542750805 0.10304433611560274 
		0.1451640723306952 0.16981851310128179 0.16325327222487737 0.12156330720540273 0.090996376607279134 
		0.074748858284588091 0.059796903587522203;
	setAttr -s 9 ".wl[108].w[0:8]"  0.055752808171186628 0.074463470947764593 
		0.10034861584610402 0.14853563995805893 0.16058284812550983 0.15634868413825906 0.12542781699434352 
		0.10106824132866925 0.077471874490104134;
	setAttr -s 9 ".wl[109].w[0:8]"  0.051612421406408496 0.06982266148774105 
		0.09644854364523045 0.15343459468088466 0.17002370711827433 0.16405188078340463 0.12456595013287185 
		0.097219113264841409 0.072821127480343056;
	setAttr -s 9 ".wl[110].w[0:8]"  0.053851933328839759 0.072331619621562579 
		0.098564543734727242 0.15072326741472972 0.16463279316633986 0.15969485777887416 
		0.12528914893780072 0.099468579729392478 0.075443256287733504;
	setAttr -s 9 ".wl[111].w[0:8]"  0.044934012404619271 0.057107322895017611 
		0.07310278903167762 0.10795489731257131 0.14728241240097537 0.16199776887338524 0.16084137206405569 
		0.14101886276736264 0.10576056225033531;
	setAttr -s 9 ".wl[112].w[0:8]"  0.042358629588077769 0.054070028551813386 
		0.069729893851367061 0.10538675929995819 0.14952780688037304 0.16759588927545294 
		0.16613804517371566 0.1421297345759257 0.10306321280331635;
	setAttr -s 9 ".wl[113].w[0:8]"  0.043699342902057424 0.055645370402192355 
		0.071476022339266684 0.10673751716334279 0.14823868859858963 0.16460220113204427 
		0.16336175512454315 0.14163034543269759 0.10460875690526611;
	setAttr -s 9 ".wl[114].w[0:8]"  0.039891460055411505 0.048833218743695131 
		0.059868876120718909 0.08267017672218778 0.11267275935146663 0.15027812466754781 
		0.1731299630691209 0.17472411602393423 0.15793130524591703;
	setAttr -s 9 ".wl[115].w[0:8]"  0.03869159033096143 0.047423356897595914 
		0.058250219174818811 0.080850239301289151 0.11123529476679504 0.15080019255505447 
		0.17592468238999506 0.17771405288321071 0.15911037170027942;
	setAttr -s 9 ".wl[116].w[0:8]"  0.039297922785080909 0.048132883364065487 
		0.059062369401787072 0.081765579174323505 0.11194201925329327 0.15053673073724819 
		0.17447239324078187 0.17618841156992629 0.15860169047349332;
	setAttr -s 9 ".wl[117].w[0:8]"  0.25977577627972809 0.20663383737925015 
		0.13695503857253266 0.10273930546875885 0.076971892960631047 0.064264770854038339 
		0.056078096558433065 0.051033578205876673 0.045547703720751113;
	setAttr -s 9 ".wl[118].w[0:8]"  0.040095656949312879 0.047715979070694144 
		0.056637624904510846 0.073825735478391427 0.095227966199970496 0.124650180294931 
		0.15709857432428398 0.20237414138895266 0.20237414138895266;
	setAttr -s 9 ".wl[119].w[0:8]"  0.051393812475716269 0.064284917830257846 
		0.080284832197732497 0.1111160840990643 0.140021353977619 0.15033994609241297 0.15005369853843931 
		0.13930675501335371 0.11319859977540422;
	setAttr -s 9 ".wl[120].w[0:8]"  0.043228409242539012 0.054826142141530837 
		0.070111529991271612 0.10414900707278428 0.14500565970429513 0.16502019962386294 
		0.16469368396795636 0.14515627376814419 0.10780909448761566;
	setAttr -s 9 ".wl[121].w[0:8]"  0.039239163364096677 0.047770744751289798 
		0.058201350550642558 0.079521517311286441 0.10755878787133807 0.144727439476843 0.17344721135050509 
		0.17975031991722665 0.16978346540677161;
	setAttr -s 9 ".wl[122].w[0:8]"  0.04429878086516028 0.055064791479540194 
		0.068619795384907437 0.096806465848766385 0.13073194569325153 0.15852518143211899 
		0.16124065537832674 0.15726054675372556 0.12745183716420277;
	setAttr -s 9 ".wl[123].w[0:8]"  0.21934273559563972 0.18868971715990618 
		0.14062581098193574 0.11173014634030534 0.087146402497255179 0.073954901512380544 
		0.065226940674760731 0.059681787329326559 0.053601557908489972;
	setAttr -s 9 ".wl[124].w[0:8]"  0.33459206556849658 0.20579852359756146 
		0.12105131195020359 0.088518818961033252 0.065674029485212934 0.054659741424485347 
		0.047661555474661992 0.043351604464417846 0.038692349073927067;
	setAttr -s 9 ".wl[125].w[0:8]"  0.21488174931545884 0.21466291873527674 
		0.15998619421042315 0.11468003997889951 0.081004969451925604 0.065275086536649929 
		0.055694942112218856 0.049935009060929035 0.043879090598218394;
	setAttr -s 9 ".wl[126].w[0:8]"  0.24225970265911603 0.21197191306242957 
		0.14217671588283742 0.10591472178972297 0.078648896085041123 0.065205162743054726 
		0.056672932808157418 0.051407539414555191 0.04574241555508541;
	setAttr -s 9 ".wl[127].w[0:8]"  0.09844067302514839 0.14426020790392352 
		0.17110872049630446 0.17104792711895406 0.13022144548303075 0.094562102462331793 
		0.074401221299546363 0.063306250788421087 0.052651451422339506;
	setAttr -s 9 ".wl[128].w[0:8]"  0.10504260625203918 0.13903567966746988 
		0.15457319962650201 0.15454133800613748 0.12997174046954976 0.10165544423748295 0.082934114441468892 
		0.071732921783866102 0.060512955515483642;
	setAttr -s 9 ".wl[129].w[0:8]"  0.067883020788005399 0.094772651954171339 
		0.13111936309099256 0.16492328216462204 0.16429733979662814 0.13142598819518356 0.099630089179541637 
		0.081333629892906475 0.06461463493794882;
	setAttr -s 9 ".wl[130].w[0:8]"  0.08901314340247457 0.12505480072511635 
		0.15690962498960093 0.1611427301905031 0.1430837743349449 0.10805696881247316 0.085163181977080296 
		0.072077239594709672 0.059498535973097094;
	setAttr -s 9 ".wl[131].w[0:8]"  0.27211076082309527 0.2094923452111209 
		0.13418911048986332 0.099887625172946373 0.074616024084137769 0.0621678797200352 
		0.054226066179954041 0.049311044782965933 0.043999143535881122;
	setAttr -s 9 ".wl[132].w[0:8]"  0.24487979930049211 0.20238770310301477 
		0.13892832600827704 0.10595737131657013 0.080278390541975386 0.067245461041729529 
		0.058836942244042803 0.053589520571662171 0.047896485872236133;
	setAttr -s 9 ".wl[133].w[0:8]"  0.25672876937179445 0.20594793221645574 
		0.1369921730774373 0.10327502507337141 0.077707974515829642 0.064920565539608316 
		0.056715814311864912 0.051616679336236183 0.046095066557402142;
	setAttr -s 9 ".wl[134].w[0:8]"  0.28852162333892861 0.21202703442803467 
		0.13098088767789107 0.096422007434647086 0.071585132607120211 0.059508633055893295 
		0.051839156883480099 0.047109647748587315 0.042005876825417669;
	setAttr -s 9 ".wl[135].w[0:8]"  0.23370223632034789 0.19833069592131386 
		0.14050894031851152 0.10852540989128343 0.08286647077071102 0.06962614954424827 0.061028156013344978 
		0.055637180642991529 0.049774760577247584;
	setAttr -s 9 ".wl[136].w[0:8]"  0.25416449937515473 0.20523829410297514 
		0.1374404174344129 0.10385386276254777 0.078247623406730749 0.065405789973377162 
		0.057156169765335052 0.052025738251448406 0.046467604928017943;
	setAttr -s 9 ".wl[137].w[0:8]"  0.23147926540743943 0.23133737582764913 
		0.15913792642555241 0.10844553463828112 0.07458825206046979 0.059560342467981219 
		0.050572393317649858 0.045230998718631552 0.039647911136345519;
	setAttr -s 9 ".wl[138].w[0:8]"  0.20038050971053736 0.20031874155964391 
		0.1599542220473586 0.11983548744916189 0.086724744285789718 0.07045093991771631 0.060362541343061946 
		0.054228326878918084 0.047744486807812264;
	setAttr -s 9 ".wl[139].w[0:8]"  0.21271793156126623 0.21263067124980517 
		0.16070108790765147 0.11562099295185559 0.081726812300649376 0.065846095879273786 
		0.056169676613052097 0.050351499127841794 0.044235232408604545;
	setAttr -s 9 ".wl[140].w[0:8]"  0.15765898739017009 0.1994122027545612 
		0.19607976475253711 0.14304695685822633 0.089979434416254112 0.067859599583077551 
		0.055602649733672314 0.048660569398156821 0.041699835113344574;
	setAttr -s 9 ".wl[141].w[0:8]"  0.15434912043493043 0.17796249874221143 
		0.17615540337204957 0.14392813062555815 0.099782326823878498 0.077574563945349409 
		0.064475401279889377 0.056799910225672316 0.048972644550460916;
	setAttr -s 9 ".wl[142].w[0:8]"  0.15629799041838169 0.18666578766326691 
		0.1843293885387545 0.14412445270285892 0.095739099522043708 0.073373736736925405 
		0.06056636172482828 0.053184593542019432 0.04571858915092121;
	setAttr -s 9 ".wl[143].w[0:8]"  0.098890304836086948 0.15429173743949592 
		0.1835100629612256 0.18185252559661969 0.12302670924852201 0.086399638987135555 0.067354626782595239 
		0.057172876389929725 0.047501517758389213;
	setAttr -s 9 ".wl[144].w[0:8]"  0.10545826847832215 0.14882376032827446 
		0.16677090219216401 0.16583694436454874 0.12609810464824528 0.093825908559073842 
		0.074965859981009075 0.06430960581926129 0.053910645629101334;
	setAttr -s 9 ".wl[145].w[0:8]"  0.10275231166947883 0.1514700707785312 
		0.1737843556681947 0.1725828445231809 0.12507138470399898 0.090651990101815599 0.07158939972683738 
		0.061100290911646288 0.050997351916316075;
	setAttr -s 9 ".wl[146].w[0:8]"  0.069064860553782095 0.10054600237213607 
		0.1456816994055869 0.17610260050175991 0.16884022216697722 0.12082228603291598 0.088966587940812636 
		0.07238206227048459 0.057593678755544629;
	setAttr -s 9 ".wl[147].w[0:8]"  0.074804754269872445 0.10484786992837264 
		0.14167045215202934 0.16250797661653427 0.1580071484191459 0.12253464979768786 0.09435085315125108 
		0.078185525005343925 0.063090770659762499;
	setAttr -s 9 ".wl[148].w[0:8]"  0.072196013946866103 0.10302328415673803 
		0.14360922141705887 0.16836477750604065 0.16277043423531604 0.12194129967625164 0.09198069091965555 
		0.07555742202950351 0.060556856112569467;
	setAttr -s 9 ".wl[149].w[0:8]"  0.052041388569206468 0.070068130036768095 
		0.096218871667242634 0.15257154625840164 0.16847407761207792 0.16276880593713661 
		0.12582803876821522 0.098204126716819051 0.073825014434132363;
	setAttr -s 9 ".wl[150].w[0:8]"  0.056132792004840171 0.074586315225153341 
		0.0999359084291781 0.14774476051123478 0.15935302878941032 0.15528249100395342 0.12653774206360888 
		0.10196260574152916 0.078464356231091686;
	setAttr -s 9 ".wl[151].w[0:8]"  0.054202523447041843 0.072487242960241852 
		0.098274486601315367 0.15000109991079436 0.16344055204360303 0.15868091621086253 
		0.12631609542234623 0.10028388503828675 0.07631319836550797;
	setAttr -s 9 ".wl[152].w[0:8]"  0.042456971094919242 0.054049509890561884 
		0.069524657411772481 0.10498078103281898 0.1478587174379451 0.16760550274421285 0.16672359376094001 
		0.14263066658148341 0.1041696000453461;
	setAttr -s 9 ".wl[153].w[0:8]"  0.04502633033499067 0.057059242357275081 
		0.072847014607425584 0.10751097608434924 0.14574819187669347 0.16204173501897343 
		0.1613820119256518 0.14149287277007139 0.10689162502456925;
	setAttr -s 9 ".wl[154].w[0:8]"  0.043786039603503087 0.055613142225534762 
		0.071263750139529555 0.1063463573687107 0.14677760984592944 0.16463203205658394 0.16387357686463752 
		0.14207408142092975 0.10563341047464117;
	setAttr -s 9 ".wl[155].w[0:8]"  0.038593434588675243 0.047222289442117482 
		0.057927948412788303 0.080414305375108824 0.11027112780476019 0.15054623633440806 
		0.17562841508216231 0.17820513889768105 0.1611911040622985;
	setAttr -s 9 ".wl[156].w[0:8]"  0.039796643125885933 0.048630543748732553 
		0.059540617674485451 0.082232219200126772 0.11171139098130857 0.15005492004744747 
		0.1728728171402501 0.17520653583561516 0.15995431224614803;
	setAttr -s 9 ".wl[157].w[0:8]"  0.039205400049539964 0.047939458917668674 
		0.058750798986268872 0.081346988254298647 0.1110201390489597 0.15030801542473979 
		0.17420731170387907 0.17665598300361346 0.16056590461103187;
	setAttr -s 9 ".wl[158].w[0:8]"  0.25761263281901581 0.20618463134680839 
		0.13683555708275474 0.10307621964650475 0.077523751147431513 0.064755262993979351 
		0.05656595817601294 0.051477554117014546 0.045968432670477948;
	setAttr -s 9 ".wl[159].w[0:8]"  0.0398303904506912 0.047344804195344391 
		0.056155536075316183 0.073225385384660654 0.094318229675120824 0.12390484111043584 
		0.15615921167759414 0.20453080071541827 0.20453080071541849;
	setAttr -s 9 ".wl[160].w[0:8]"  0.036301341234759803 0.046456026728834969 
		0.060369155670825306 0.094815127079170225 0.14747424443971072 0.18357542769558283 
		0.1830726416384908 0.14853804442813509 0.099397991084490364;
	setAttr -s 9 ".wl[161].w[0:8]"  0.04729881597741295 0.059463854946539871 
		0.075048002363603705 0.10767305334874186 0.1415543417286643 0.15724492265197298 0.15713385286187104 
		0.1426723025123505 0.11191085360884277;
	setAttr -s 9 ".wl[162].w[0:8]"  0.03872014037952299 0.047081620968616317 
		0.057326492533960917 0.078455832197608516 0.10609685502080465 0.14429265042853182 
		0.17371271834624924 0.18168760518622648 0.17262608493847911;
	setAttr -s 9 ".wl[163].w[0:8]"  0.037647889174313713 0.047129815418440982 
		0.059478468312914659 0.087453550841841921 0.12700993295559909 0.171194513803239 0.17615907805366179 
		0.16894003216328599 0.12498671927670289;
	setAttr -s 9 ".wl[164].w[0:8]"  0.33742374239034967 0.20552482042714404 
		0.12067192128639602 0.088075395199568959 0.065242988979632141 0.054291105431300841 
		0.047320702579571813 0.043041574235516959 0.038407749470519552;
	setAttr -s 9 ".wl[165].w[0:8]"  0.22033785235232139 0.18904565089094688 
		0.1410083889664201 0.11169090141039667 0.086800097275533991 0.073628443996526682 
		0.064865249292745161 0.059350844478526898 0.053272571336582392;
	setAttr -s 9 ".wl[166].w[0:8]"  0.21591528815713584 0.21568853311077738 
		0.16102976527599061 0.11446324757677301 0.080323246135199478 0.064676637933066841 
		0.055106991019340655 0.049407863470381501 0.043388427321334591;
	setAttr -s 9 ".wl[167].w[0:8]"  0.24360136649098038 0.21252221721437056 
		0.14240969050744762 0.10568600524941943 0.07821217183761027 0.064816906399117524 
		0.056285547012879446 0.051056145026571007 0.04540995026160384;
	setAttr -s 9 ".wl[168].w[0:8]"  0.099543824924111082 0.14403547438928593 
		0.16842964227758453 0.16837560074168464 0.12941937205452381 0.095795877796420723 
		0.075715453257657217 0.064736120519460802 0.053948634039271123;
	setAttr -s 9 ".wl[169].w[0:8]"  0.086048263655273807 0.1466420406927948 
		0.20215986000321892 0.2020009882840321 0.12409608968418832 0.081990764371655478 0.06213758389102738 
		0.052114617844200933 0.0428097915736083;
	setAttr -s 9 ".wl[170].w[0:8]"  0.064923473977975418 0.092553954065834027 
		0.13270040723627533 0.17184470993257051 0.17066048148855298 0.13148579093639137 0.096442007913525432 
		0.077999400995739113 0.061389773453135885;
	setAttr -s 9 ".wl[171].w[0:8]"  0.078279995726752691 0.12249134338288667 
		0.17918335431908572 0.18741101791256731 0.14832960741543511 0.099280468421642842 
		0.073976165136931851 0.061332046959531573 0.049716000725166375;
	setAttr -s 9 ".wl[172].w[0:8]"  0.24659393228446672 0.20285159838090913 
		0.1391662337579512 0.1057211585313097 0.079789366857986294 0.066804839495447008 0.058387794886000474 
		0.05318043079436658 0.047504645011562853;
	setAttr -s 9 ".wl[173].w[0:8]"  0.2745338020968438 0.20983499984179235 
		0.13415738002857452 0.099485844601164539 0.074065506937907769 0.061684655497516519 
		0.053756062908361033 0.048883642354715706 0.043598105733123768;
	setAttr -s 9 ".wl[174].w[0:8]"  0.25910390891194246 0.20644957398438193 
		0.13713424859115644 0.10290693363409389 0.077098002821528511 0.064378028810123208 
		0.056175512174139429 0.05112495401189706 0.045628837060737198;
	setAttr -s 9 ".wl[175].w[0:8]"  0.23507832471315265 0.1987826906382178 
		0.14083412519841773 0.10837267782363046 0.082430416040523133 0.069227506223041427 
		0.060611007156572194 0.055256880993085913 0.049406371213358703;
	setAttr -s 9 ".wl[176].w[0:8]"  0.29116921886000569 0.21222101514981201 
		0.13080461357370671 0.095973026378436938 0.071050565466443449 0.059044679334012175 
		0.051396927778629566 0.046707765125415593 0.041632188333537885;
	setAttr -s 9 ".wl[177].w[0:8]"  0.25665390972663887 0.20579339970038762 
		0.13762622485796427 0.10347492077623735 0.077594569947312966 0.064823517201058292 
		0.05657378763064036 0.051495631692063067 0.045964038467697282;
	setAttr -s 9 ".wl[178].w[0:8]"  0.20113722404393203 0.20107356731636178 
		0.1611499636386938 0.11983326509912748 0.086122522049261352 0.069903539033159684 
		0.059797143560436458 0.053720386530036544 0.04726238872899096;
	setAttr -s 9 ".wl[179].w[0:8]"  0.23283193496378063 0.23268406174822781 
		0.15990972938764095 0.10798962357247616 0.073837576824719878 0.058922111424881768 
		0.04997265934224436 0.044694607916737517 0.039157694819290739;
	setAttr -s 9 ".wl[180].w[0:8]"  0.21400398598630607 0.21391266078808038 
		0.16213568808550605 0.1153723245662408 0.080843433755791824 0.065068720633604665 
		0.055403378180649575 0.049664575556666805 0.043595232447153791;
	setAttr -s 9 ".wl[181].w[0:8]"  0.15378100050040633 0.17988325315032599 
		0.17841886183826708 0.14447928664257381 0.098836542785025364 0.076712955881825515 
		0.063599868656410985 0.05602860560993813 0.048259624935226689;
	setAttr -s 9 ".wl[182].w[0:8]"  0.15656333342487158 0.20222227590311231 
		0.1992641883118107 0.14305282888687018 0.088711898858819915 0.066804076947412985 
		0.054630706688281176 0.047809975065798538 0.040940715913022674;
	setAttr -s 9 ".wl[183].w[0:8]"  0.15531087535084581 0.18957282590847277 
		0.18769757529044812 0.14457679890633265 0.094348462075694306 0.072160985003861949 
		0.059393873363967301 0.052155006901361489 0.044783597199015854;
	setAttr -s 9 ".wl[184].w[0:8]"  0.10451491036917686 0.1499584500348827 
		0.16901822195050975 0.1680180224086954 0.12526477266250027 0.092880818762906575 0.073892372174036186 
		0.063388712257356011 0.053063719379936335;
	setAttr -s 9 ".wl[185].w[0:8]"  0.097596209477101473 0.15524588869241435 
		0.18657425538593164 0.18476999929223303 0.12174414729884611 0.085170225513308315 
		0.066149664126864419 0.056150063493927767 0.046599546719372914;
	setAttr -s 9 ".wl[186].w[0:8]"  0.10140150823983124 0.15280737236905281 
		0.17696343514000787 0.17564504009915408 0.12381171305838633 0.089332851706584046 
		0.070197715430162039 0.059912512892714855 0.04992785106410684;
	setAttr -s 9 ".wl[187].w[0:8]"  0.074225541603419473 0.10497776797518876 
		0.1432965760454048 0.16386132413221627 0.15846511299198218 0.1222146987942398 0.093336152038340864 
		0.077344674742944347 0.062278151676263452;
	setAttr -s 9 ".wl[188].w[0:8]"  0.068389720083855327 0.10042621533284281 
		0.14736580333795185 0.17796024628061471 0.16943230924703503 0.12029787289548127 0.087865053693566272 
		0.071485868295774635 0.056776910832878155;
	setAttr -s 9 ".wl[189].w[0:8]"  0.071457727502151208 0.1030457210678611 
		0.14558386363129736 0.17021597734293828 0.16337678332668837 0.12145746459684351 0.090733870445814005 
		0.074533222930810508 0.059595369155595657;
	setAttr -s 9 ".wl[190].w[0:8]"  0.055782774575950905 0.07447356852672897 
		0.10031655326232468 0.14847382757473773 0.16048598671481037 0.15626491271711909 0.1255148808788048 
		0.10113839637000382 0.077549099379519745;
	setAttr -s 9 ".wl[191].w[0:8]"  0.05165151019481401 0.069845525487944662 
		0.096428396415094 0.15335670967786724 0.16988225739564608 0.16393517565554833 0.12468043784963474 
		0.097308466690007214 0.072911520633443624;
	setAttr -s 9 ".wl[192].w[0:8]"  0.053784054016658554 0.072300470785869597 
		0.098619322168522178 0.15086165717340885 0.16486366266562838 0.15989056071697369 
		0.12509142935128931 0.099311607744015387 0.075277235377634005;
	setAttr -s 9 ".wl[193].w[0:8]"  0.044939246888533117 0.057105082541545324 
		0.07308939619864975 0.10793151506551779 0.14719945645085381 0.16199760511740849 0.16087134216809279 
		0.14104513927777843 0.10582121629162052;
	setAttr -s 9 ".wl[194].w[0:8]"  0.042364750548864794 0.054069194026993637 
		0.069718153147869652 0.10536327245925209 0.14942818739502209 0.16759362837944317 
		0.16617382031316166 0.14216033991420665 0.10312865381518632;
	setAttr -s 9 ".wl[195].w[0:8]"  0.043688051872974899 0.055648552234453585 
		0.071501323386365598 0.10678455589796218 0.14841990827826601 0.16460433124116625 
		0.16329657794678812 0.14157383853368236 0.10448286060834114;
	setAttr -s 9 ".wl[196].w[0:8]"  0.039888965968527965 0.048827744340199729 
		0.05985992390473114 0.082658245990583051 0.1126461993974658 0.15027246040441194 0.17312343747752404 
		0.17473616793835292 0.15798685457820347;
	setAttr -s 9 ".wl[197].w[0:8]"  0.038688872713986945 0.047417654086623705 
		0.058240993192007144 0.080837769827806147 0.11120732201953064 0.1507933636607332 
		0.17591671574854595 0.17772695534448113 0.15917035340628527;
	setAttr -s 9 ".wl[198].w[0:8]"  0.039303125831318564 0.048144051302767797 
		0.05908053740566916 0.081789962953884535 0.11199651719790098 0.15054916639711555 
		0.17448680619719431 0.17616350267885353 0.15848633003529572;
	setAttr -s 9 ".wl[199].w[0:8]"  0.25977577627972809 0.20663383737925015 
		0.13695503857253266 0.10273930546875885 0.076971892960631047 0.064264770854038339 
		0.056078096558433065 0.051033578205876673 0.045547703720751113;
	setAttr -s 9 ".wl[200].w[0:8]"  0.040095656949312879 0.047715979070694144 
		0.056637624904510846 0.073825735478391427 0.095227966199970496 0.124650180294931 
		0.15709857432428398 0.20237414138895266 0.20237414138895266;
	setAttr -s 9 ".wl[201].w[0:8]"  0.051419813362222913 0.064231097066260998 
		0.080129235201901877 0.11091511075913026 0.13952716034786733 0.15041077184060594 
		0.15022455263324647 0.13946537242672077 0.11367688636204333;
	setAttr -s 9 ".wl[202].w[0:8]"  0.043165508106656168 0.054865624269816865 
		0.070303499812853346 0.1044902808541671 0.14627069240545204 0.16490881117320011 0.16429322116675313 
		0.14480331737901683 0.10689904483208444;
	setAttr -s 9 ".wl[203].w[0:8]"  0.039240649543885807 0.04777338820205472 
		0.058205314080565437 0.079526725621354363 0.10756909007532561 0.14473163450406898 
		0.17345223884063768 0.17974082086535129 0.16976013826675615;
	setAttr -s 9 ".wl[204].w[0:8]"  0.044298118103487348 0.055082139951497328 
		0.068659942864576162 0.096862746929027924 0.13088932372560683 0.15849779949304738 
		0.16121280439741939 0.1572333832540804 0.12726374128125728;
	setAttr -s 9 ".wl[205].w[0:8]"  0.21800913349124065 0.18547961559727696 
		0.14061697324198663 0.11228502853692066 0.087769525811931773 0.074806641481166544 
		0.06603941368558551 0.060554560551050553 0.054439107602840722;
	setAttr -s 9 ".wl[206].w[0:8]"  0.31963152546041745 0.20123265409581484 
		0.1240337514034503 0.091912077724147792 0.068716840703588508 0.057490598935934605 
		0.050242779941401923 0.045797813518123405 0.040941958217121224;
	setAttr -s 9 ".wl[207].w[0:8]"  0.22634374465317136 0.21433680985700121 
		0.15046770167648421 0.11016063463482663 0.079964263353230022 0.065671279273446806 
		0.056612492990584698 0.051161057574103795 0.045282015987151279;
	setAttr -s 9 ".wl[208].w[0:8]"  0.24571611394171269 0.20337849769296773 
		0.14010076591586362 0.10603384379448816 0.079675333198577045 0.06665598779052799 
		0.058175876787118386 0.052977686581143831 0.047285894297600509;
	setAttr -s 9 ".wl[209].w[0:8]"  0.14798425843903076 0.18534912099605952 
		0.18503896072047493 0.14851512726236293 0.097618841190875327 0.074574182750974438 
		0.061219920055664227 0.053689028034071842 0.046010560550485809;
	setAttr -s 9 ".wl[210].w[0:8]"  0.14411923945878671 0.16546857164913475 
		0.16538523787897835 0.14516036010029237 0.10648700251210759 0.084889593177782607 
		0.071065010069728235 0.062978813366061634 0.054446171787127823;
	setAttr -s 9 ".wl[211].w[0:8]"  0.10682170284985361 0.15611139270442417 
		0.17316146626638237 0.17049718497083916 0.12098472014692076 0.089334297414868952 
		0.070967910298655054 0.061000926414688871 0.051120398933366985;
	setAttr -s 9 ".wl[212].w[0:8]"  0.13220128087514885 0.17076856190485942 
		0.1718399457198764 0.15506174817546925 0.10815907697823736 0.083199718290454819 0.068163785519342254 
		0.05965922335989645 0.050946659176715217;
	setAttr -s 9 ".wl[213].w[0:8]"  0.27103087145774307 0.20255254299557895 
		0.13396133509371977 0.1009213463762209 0.075971523963712498 0.063686924205243994 
		0.055694221087644852 0.050781389634590578 0.045399845185545233;
	setAttr -s 9 ".wl[214].w[0:8]"  0.24510464835736748 0.19700529368995787 
		0.13831305500627641 0.10644379374961507 0.081122246572838647 0.068347053802743002 
		0.059931004232874001 0.054730234735477175 0.049002669852850261;
	setAttr -s 9 ".wl[215].w[0:8]"  0.25836455286630444 0.20026088093935082 
		0.13614421833912574 0.10356842561629806 0.078407246330810323 0.065872663465917816 
		0.057677513947471608 0.052624758178780026 0.047079740315941282;
	setAttr -s 9 ".wl[216].w[0:8]"  0.2853367580694392 0.20428947637236733 
		0.13129817920300213 0.098016321781757745 0.073412277813453303 0.061419014449883291 
		0.053653276913760484 0.048890657848679436 0.043684037547657137;
	setAttr -s 9 ".wl[217].w[0:8]"  0.23390772180260058 0.19355211585424931 
		0.13987803480320607 0.10890334310731387 0.083582904824319279 0.07062932687693009 
		0.062031373638035459 0.056701992908132007 0.050813186185213341;
	setAttr -s 9 ".wl[218].w[0:8]"  0.25714585580443816 0.20000739458316541 
		0.13631294737144592 0.10381679948508024 0.078656930943872841 0.066098155057054173 
		0.057885944087739893 0.052818302522713328 0.047257670144490019;
	setAttr -s 9 ".wl[219].w[0:8]"  0.24468806378526292 0.22794415185922026 
		0.14742434626968431 0.10431177927701682 0.07436022552335779 0.060656305595909482 
		0.052104796263961112 0.046994027053605524 0.04151630437198172;
	setAttr -s 9 ".wl[220].w[0:8]"  0.21043624603376906 0.20253587368502871 
		0.15225342868008263 0.11505626600329413 0.084979305364621324 0.070240087858779429 
		0.060747508739225548 0.054996225312493777 0.048755058322705512;
	setAttr -s 9 ".wl[221].w[0:8]"  0.22653272394116605 0.21507128729280303 
		0.15060181929907726 0.11005819186922816 0.079789545162106346 0.065468799679066908 
		0.056416227587905633 0.050965096774210288 0.045096308394436395;
	setAttr -s 9 ".wl[222].w[0:8]"  0.20931337100016645 0.21406388699942525 
		0.17420288675485107 0.11874270959954336 0.079639578886094561 0.062911750153264029 
		0.052920624903685112 0.047132409270660362 0.041072782432309975;
	setAttr -s 9 ".wl[223].w[0:8]"  0.18856853395304077 0.1911423833518332 
		0.16848149612841815 0.12656641763272236 0.089547723593807249 0.072028712340885689 
		0.061121208651453013 0.054688492331397831 0.047855032016441847;
	setAttr -s 9 ".wl[224].w[0:8]"  0.19882572377428545 0.20220876317274167 
		0.17171557340745422 0.12302221666756397 0.084664972579162542 0.067425648735880167 
		0.056947518204538923 0.050819908959383306 0.04436967449898984;
	setAttr -s 9 ".wl[225].w[0:8]"  0.15442807165204225 0.19607421241104883 
		0.19435500089368715 0.14472130360288857 0.091487304096415242 0.069434975964348847 
		0.056882621527905512 0.049875243967208174 0.042741265884455398;
	setAttr -s 9 ".wl[226].w[0:8]"  0.15199470955094585 0.17892278212238755 
		0.17800048484728298 0.14511352192105986 0.099335882610451912 0.077340067097190462 
		0.064093173315382099 0.056521662872106457 0.048677715663192817;
	setAttr -s 9 ".wl[227].w[0:8]"  0.15372688222388237 0.18723334308555176 
		0.18591146914966877 0.1452439019803263 0.09550096958256897 0.073323463569168704 0.060388677206715667 
		0.053080856946395055 0.045590436255722379;
	setAttr -s 9 ".wl[228].w[0:8]"  0.1112093238826793 0.17025187135115882 
		0.18408122181733191 0.17436243463145012 0.11215962085218348 0.081396529145700267 
		0.064510684098889395 0.055469261012718103 0.046559053207888543;
	setAttr -s 9 ".wl[229].w[0:8]"  0.1154703796479214 0.16193603309258814 
		0.17104278676455245 0.16470977861872602 0.11631159495800261 0.087530993054770606 
		0.07045538191265234 0.061019663424054453 0.051523388526732022;
	setAttr -s 9 ".wl[230].w[0:8]"  0.1134834989120074 0.16620420113990594 
		0.17750999095936729 0.16960815630729542 0.11438634066082397 0.084407375706535531 
		0.067376344731663762 0.058114332092846471 0.048909759489554325;
	setAttr -s 9 ".wl[231].w[0:8]"  0.084761984999909279 0.12835137458417945 
		0.17282681831842547 0.17618991028364836 0.14249295343439219 0.10092583094609522 0.076980925230285283 
		0.064617147678485573 0.052853054524579134;
	setAttr -s 9 ".wl[232].w[0:8]"  0.088926634187809078 0.12896206151708398 
		0.1640394509818375 0.16639260152932023 0.14060576763497898 0.10433947035720048 0.08124269438043577 
		0.068810772811363857 0.056680546599970176;
	setAttr -s 9 ".wl[233].w[0:8]"  0.086749996450329964 0.12870373792774462 
		0.16852646039069671 0.17141353643382756 0.14176476750398759 0.10261154923804382 0.079014456450156409 
		0.06658309777118733 0.054632397834025972;
	setAttr -s 9 ".wl[234].w[0:8]"  0.06770217917607764 0.096699733998545034 
		0.13722683515689313 0.16896800202031348 0.16635378966130962 0.12845665665897116 0.095198123097748777 
		0.077769068834398783 0.061625611395742456;
	setAttr -s 9 ".wl[235].w[0:8]"  0.070480808388218699 0.099059258214116472 
		0.13629112740688873 0.16273764400116333 0.16060998590871353 0.12844530559894773 0.097539535467908722 
		0.080524991225141049 0.064311343788901854;
	setAttr -s 9 ".wl[236].w[0:8]"  0.06895609089823701 0.097767499443731018 
		0.13677883720664083 0.16607804022627115 0.16372301466914377 0.12850274902276096 0.096309311724675162 
		0.079036596905807027 0.062847859902733089;
	setAttr -s 9 ".wl[237].w[0:8]"  0.056054640202760582 0.075839973687620008 
		0.10378973896752178 0.1541078035867284 0.16355971995863436 0.15593905915844872 0.12038154744665325 
		0.096508506201363115 0.073819010790269854;
	setAttr -s 9 ".wl[238].w[0:8]"  0.057398518634861992 0.077301235578215013 
		0.10485410523608774 0.15218468346296549 0.16070198172126382 0.15384494280497329 0.12075316873936735 
		0.097707480570741023 0.075253883251524156;
	setAttr -s 9 ".wl[239].w[0:8]"  0.056640939712300671 0.076474084286005717 
		0.10424561577238213 0.1532551752143026 0.16228395260616127 0.15500925508603769 0.12057800916472569 
		0.097052609337056103 0.074460358821028153;
	setAttr -s 9 ".wl[240].w[0:8]"  0.25792830993338878 0.2001606341801129 
		0.13625037940404433 0.10367166483671011 0.078487166281273738 0.065945151977457886 
		0.05774033158419066 0.052683889196487178 0.047132472606334588;
	setAttr -s 9 ".wl[241].w[0:8]"  0.048391972485898119 0.062712474702804319 
		0.081983264000922207 0.12300485632397828 0.1584885775752409 0.16072160687087858 0.1490085344950047 
		0.12346329096378469 0.092225422581488165;
	setAttr -s 9 ".wl[242].w[0:8]"  0.060998234003495466 0.089304325340543736 
		0.13483566859061183 0.1834402375114291 0.18078059624046317 0.12981916671028887 0.091185274057188306 
		0.07286348870833273 0.056773008837646785;
	setAttr -s 9 ".wl[243].w[0:8]"  0.071512671495540178 0.098848456266446866 
		0.13300898981261935 0.15821676251352815 0.15713480155300596 0.12995986130922524 0.10063793673617025 
		0.083606555996292423 0.06707396431717165;
	setAttr -s 9 ".wl[244].w[0:8]"  0.054678205001590617 0.073267486561380352 
		0.099234784417645452 0.14835083385354542 0.16225547768211948 0.15849134101246098 
		0.12574122799839965 0.10103646648081924 0.076944176992038926;
	setAttr -s 9 ".wl[245].w[0:8]"  0.058843798386808921 0.082860474562502798 
		0.11908848187658964 0.17243213005794533 0.17308721666385543 0.14396835257219615 0.10358087598903667 
		0.082473969427691807 0.063664700463373219;
	setAttr -s 9 ".wl[246].w[0:8]"  0.3375615450769735 0.19782822153894433 
		0.12020047389392988 0.089004092987445466 0.066610992908338065 0.055767835465941953 
		0.048771710472944957 0.044474311076463942 0.039780816579017796;
	setAttr -s 9 ".wl[247].w[0:8]"  0.22365702182786448 0.18649586843044427 
		0.1395063283357709 0.11100184466023438 0.086677923981654692 0.073857979549822331 
		0.065216878130487363 0.059805149201713613 0.053781005882008036;
	setAttr -s 9 ".wl[248].w[0:8]"  0.2344023268378421 0.2176264989807622 
		0.14800901785241813 0.10774200805424847 0.078173767585760709 0.064219131713043567 
		0.055397503287529737 0.050079528973973157 0.044350216714421957;
	setAttr -s 9 ".wl[249].w[0:8]"  0.25650858966074591 0.20421523581583728 
		0.13760151800307643 0.10370355682536257 0.077868932867659002 0.065146958046720382 
		0.05688220674998095 0.05181023690534875 0.046262765125268918;
	setAttr -s 9 ".wl[250].w[0:8]"  0.1509792101318293 0.17941157123610471 
		0.17861954084960618 0.14593513092387533 0.099540104650098493 0.077143588576283131 
		0.063830308864196383 0.056194757313227151 0.048345787454779375;
	setAttr -s 9 ".wl[251].w[0:8]"  0.14990734620627175 0.21976022480579543 
		0.21738487307893928 0.14178717058505508 0.081935555581426706 0.06065458624477537 
		0.049151552047696286 0.042861498318632146 0.036557193131407914;
	setAttr -s 9 ".wl[252].w[0:8]"  0.10640446109165665 0.16297799197289045 
		0.18176247903602516 0.17652866690825991 0.11682971288374969 0.084327619637004372 
		0.06650998901742014 0.056988569082919806 0.047670510370073797;
	setAttr -s 9 ".wl[253].w[0:8]"  0.13165207770409634 0.19681319394233138 
		0.19795528506672458 0.15963397298678339 0.095883525702779693 0.070471299683049535 
		0.056691192831932351 0.049183979748580818 0.041715472333722026;
	setAttr -s 9 ".wl[254].w[0:8]"  0.25232031762422957 0.19711983578206757 
		0.13657722905435013 0.10492206584980925 0.080000741277762633 0.0674310973991437 0.059164997299442704 
		0.054047383982893937 0.048416331730300605;
	setAttr -s 9 ".wl[255].w[0:8]"  0.28052279602813657 0.201670822151549 
		0.13168047577673478 0.099126428223387478 0.074704381267955144 0.062668936968262132 
		0.05484596755423788 0.050027725297493039 0.04475246673224393;
	setAttr -s 9 ".wl[256].w[0:8]"  0.26414893802318962 0.19948257526352509 
		0.1345565263906052 0.10242798205370174 0.077696754703394239 0.065341942510119072 
		0.057267899481456441 0.052276505817621853 0.046800875756386841;
	setAttr -s 9 ".wl[257].w[0:8]"  0.24073781822572798 0.19414802313322807 
		0.13832231767265249 0.10739958521845279 0.082414031105941574 0.069652341119711955 
		0.061202346109688437 0.055956597463416587 0.05016693995117999;
	setAttr -s 9 ".wl[258].w[0:8]"  0.29756729755182187 0.20279963235938367 
		0.12847257259081529 0.095816795776492325 0.071839382729723025 0.060144490822177668 
		0.052578838888234662 0.047930327877002597 0.042850661404348948;
	setAttr -s 9 ".wl[259].w[0:8]"  0.26119639680923334 0.19896853958589056 
		0.13501693154599162 0.10302581776489485 0.078270211621202179 0.065858813749448838 
		0.05774174945560568 0.05271705453295919 0.047204484934773853;
	setAttr -s 9 ".wl[260].w[0:8]"  0.21678658338041182 0.20579362848041363 
		0.15059390868936795 0.11304277375467169 0.0833769162218094 0.068907896416065345 0.059623132052067464 
		0.053989728008411952 0.04788543299678083;
	setAttr -s 9 ".wl[261].w[0:8]"  0.25556105262606399 0.23142060462773761 
		0.14383487668882011 0.10125913557605144 0.072203242608505441 0.0589315377774772 0.050664214679749998 
		0.04571386008836658 0.040411475327227622;
	setAttr -s 9 ".wl[262].w[0:8]"  0.23134504814758522 0.21625104714778873 
		0.14860959792261227 0.10860062033952422 0.078947866671438119 0.064868936768959662 
		0.055971563492992808 0.050595748483191851 0.04480957102590713;
	setAttr -s 9 ".wl[263].w[0:8]"  0.1942174632496361 0.19587032584161385 
		0.16792609946472456 0.12422648195609765 0.08750746541556044 0.070335238602182382 
		0.059706551305039296 0.053431605999812573 0.046778768165333211;
	setAttr -s 9 ".wl[264].w[0:8]"  0.21803200506045653 0.22121633490708767 
		0.17162645723687558 0.11495616444908431 0.076910923402100845 0.060766922486576211 
		0.051158565407671885 0.045582255551824234 0.039750371498322806;
	setAttr -s 9 ".wl[265].w[0:8]"  0.2037348246405267 0.20577040611227135 
		0.16987676155964199 0.12080989264335307 0.083266826029638821 0.06639849252409824 
		0.05616027287159911 0.050152018684189621 0.043830504934681047;
	setAttr -s 9 ".wl[266].w[0:8]"  0.15635638395877338 0.1825955774221259 
		0.18059336154608474 0.14329701871407671 0.096950865691200511 0.075312320439799602 
		0.062417403119437186 0.055046117027104421 0.047430952081397672;
	setAttr -s 9 ".wl[267].w[0:8]"  0.15956324654045723 0.20144951506992442 
		0.19770900119645402 0.14140554353718104 0.088401672709883181 0.067017671777843305 
		0.054938606564891121 0.048187867274252394 0.041326875329113076;
	setAttr -s 9 ".wl[268].w[0:8]"  0.15827128826043149 0.18993545769178702 
		0.18723681613108822 0.14286462503898506 0.093561771282245534 0.071873280430713074 
		0.059280218150581314 0.052142613901662596 0.044833929112505742;
	setAttr -s 9 ".wl[269].w[0:8]"  0.11748060606470308 0.16620302265193782 
		0.17420224299731649 0.1653585886849899 0.11380048252813499 0.08512683587680317 0.068467867066133503 
		0.059282308573727342 0.05007804555625385;
	setAttr -s 9 ".wl[270].w[0:8]"  0.11292513977042348 0.17591281023468536 
		0.18840986624262923 0.17463942891453704 0.10878920086744555 0.078556309137236768 
		0.062257585928769822 0.053538042878888324 0.04497161602538445;
	setAttr -s 9 ".wl[271].w[0:8]"  0.11582356130743501 0.17022230904597913 
		0.1798766448819582 0.16921670193566546 0.1119237881059453 0.082398720884115331 0.065841330844978271 
		0.056821056397444371 0.047875886596478921;
	setAttr -s 9 ".wl[272].w[0:8]"  0.089585534756309537 0.13167741916810524 
		0.16779754539542774 0.1694426451558875 0.13907913148959686 0.1016810551291525 0.078932094655619095 
		0.066784395549413594 0.055020178700487921;
	setAttr -s 9 ".wl[273].w[0:8]"  0.085151819984068317 0.13116886598289482 
		0.17770743480315762 0.18011138198680499 0.1402102586612386 0.097764755378449059 0.074398008352613551 
		0.062411557835209401 0.051075917015563639;
	setAttr -s 9 ".wl[274].w[0:8]"  0.087696865160996007 0.13152467068902104 
		0.17189347749190328 0.17388386360026942 0.13978259783797081 0.10006385214045814 0.076993121453795263 
		0.064876684880278465 0.053284866745307587;
	setAttr -s 9 ".wl[275].w[0:8]"  0.070500120758224691 0.10012842926078154 
		0.13947242558073489 0.16582945902777005 0.16236410759024864 0.12618986868241613 0.094964073392885456 
		0.078164796225339714 0.062386719481598879;
	setAttr -s 9 ".wl[276].w[0:8]"  0.067599229298789212 0.097658187072948641 
		0.1407068296914874 0.17268260919165632 0.16836015044036631 0.12575333257068017 0.092363312181145518 
		0.075256773741105495 0.059619575811820764;
	setAttr -s 9 ".wl[277].w[0:8]"  0.069177716416324239 0.098999162094437806 
		0.13998617797871957 0.16886186114652119 0.16507615335598239 0.12605461447999636 0.093841155361424886 
		0.076865485068730172 0.061137674097863359;
	setAttr -s 9 ".wl[278].w[0:8]"  0.057047621768440394 0.07738933777176879 
		0.10610548737740834 0.15603432459640734 0.16341770611071191 0.15389288038573321 0.11826850689958815 
		0.094934964251271556 0.072909170838670309;
	setAttr -s 9 ".wl[279].w[0:8]"  0.055657917897902205 0.075865565205668631 
		0.10500491586860601 0.15829597822155234 0.16654456899060174 0.15592433557001772 0.1176920824323504 
		0.093603968095026954 0.07141066771827409;
	setAttr -s 9 ".wl[280].w[0:8]"  0.056390463455089787 0.076662927673898484 
		0.10556981100562712 0.15708539985268641 0.1648624975874137 0.15483874500690534 0.11804019092964575 
		0.094330764799412117 0.072219199689321181;
	setAttr -s 9 ".wl[281].w[0:8]"  0.26539295572494076 0.19968148549519713 
		0.13438241011588511 0.1021843499849749 0.077453263165116706 0.065123130031656554 
		0.057065432703016686 0.052088792557369062 0.04662818022184298;
	setAttr -s 9 ".wl[282].w[0:8]"  0.047789912305790133 0.062246812474172221 
		0.081988767678311064 0.12511561984517397 0.16158129102084992 0.16313300475232634 
		0.14826250328267557 0.12060105759360347 0.089281031047097281;
	setAttr -s 9 ".wl[283].w[0:8]"  0.076625071921240087 0.10366021043881316 
		0.13379615331427788 0.15130198689853042 0.14980914326648345 0.12717007186098761 0.10161939549368754 
		0.085977827113353014 0.070040139692626888;
	setAttr -s 9 ".wl[284].w[0:8]"  0.068341228945615021 0.097167603779363357 
		0.13688663769898088 0.16801478751699064 0.16558495345960439 0.12816783112349647 0.095611816993801751 
		0.078161614745982058 0.06206352573616538;
	setAttr -s 9 ".wl[285].w[0:8]"  0.054739377615436159 0.073741849393046913 
		0.1006183761282807 0.1516265792246605 0.16395332662043452 0.15836153681818721 0.12339337665819522 
		0.098564231634590549 0.075001345907168296;
	setAttr -s 9 ".wl[286].w[0:8]"  0.066397279936214679 0.091100935508683853 
		0.12370236511874774 0.1587230264915406 0.15880138004670863 0.13786087133874478 0.10642775568420404 
		0.087585066800042813 0.06940131907511278;
	setAttr -s 9 ".wl[287].w[0:8]"  0.22309419699844421 0.18642287612025521 
		0.13875188866973207 0.11080164777795233 0.08697648636581605 0.074133899424406291 
		0.065575772763452084 0.060124795221666263 0.054118436658275544;
	setAttr -s 9 ".wl[288].w[0:8]"  0.33490709226037901 0.19823805206038445 
		0.12023113424310973 0.089311952042861825 0.067062766397739254 0.056156187831721119 
		0.049158247546143875 0.044822770847566099 0.040111796770094708;
	setAttr -s 9 ".wl[289].w[0:8]"  0.23375990691253029 0.21731734117335236 
		0.14696765869972392 0.10768418717962519 0.078631338334101339 0.064617782337153692 
		0.055832260608908543 0.050464271606206659 0.044725253148398071;
	setAttr -s 9 ".wl[290].w[0:8]"  0.25540323384741792 0.20411294737539659 
		0.13693943340814541 0.10369310354526727 0.078274924397529547 0.065505797363913557 
		0.057283777009301991 0.052168366791005151 0.046618416262022518;
	setAttr -s 9 ".wl[291].w[0:8]"  0.15269815416229202 0.184432528701095 
		0.1831849278580347 0.14587221042390522 0.097252220996763394 0.074609028611759803 
		0.061523413010539672 0.054022769516617157 0.04640474671899316;
	setAttr -s 9 ".wl[292].w[0:8]"  0.14869854742690633 0.16663315202424889 
		0.16580446721184641 0.14339882537317855 0.10540058640770471 0.083713499170659733 
		0.070277200831775549 0.062210211101394991 0.053863510452284859;
	setAttr -s 9 ".wl[293].w[0:8]"  0.10980331351194818 0.15852364172362515 
		0.17326611795690142 0.16924816703320994 0.11977179436330737 0.088082009403468831 
		0.070258915306438699 0.060357909427712471 0.050688131273387955;
	setAttr -s 9 ".wl[294].w[0:8]"  0.13639576328186898 0.17144527374857321 
		0.17193513772788746 0.15290606281238261 0.10718682681983126 0.082371128262944515 
		0.067745516239278589 0.059284835565593656 0.050729455541639795;
	setAttr -s 9 ".wl[295].w[0:8]"  0.27921113570040007 0.20169888529333399 
		0.13132225382688248 0.099201796412677887 0.075051413757669466 0.062973460138183043 
		0.055175540237667034 0.050322950806847309 0.045042563826338734;
	setAttr -s 9 ".wl[296].w[0:8]"  0.25144188728717948 0.19706699456771759 
		0.13602599678565627 0.10487675390528395 0.080319385767021287 0.067716154644503229 
		0.059495674334664031 0.054342641267344706 0.048714511440629528;
	setAttr -s 9 ".wl[297].w[0:8]"  0.26327528079019852 0.19946116605920131 
		0.13416582749972333 0.10243416280059836 0.077971249280356397 0.065585312851487915 
		0.057541315515941695 0.052520978091104092 0.047044707111388417;
	setAttr -s 9 ".wl[298].w[0:8]"  0.29586208991118934 0.20291027701097844 
		0.12821747513454565 0.095967453139677986 0.072226311968268536 0.060481019594625596 
		0.052931344217515226 0.048246658619380683 0.043157370403818458;
	setAttr -s 9 ".wl[299].w[0:8]"  0.23998399979533669 0.19407568293276656 
		0.13766903697175098 0.10729591194628096 0.082733735464898414 0.069941264548964183 
		0.06154981059662018 0.056266410765738142 0.050484146977644029;
	setAttr -s 9 ".wl[300].w[0:8]"  0.26048243603729843 0.19894494267116947 
		0.1346699275517082 0.10302219661122636 0.07850214561021801 0.066064872905079119 0.057974965911605399 
		0.052925512092863315 0.047413000608831607;
	setAttr -s 9 ".wl[301].w[0:8]"  0.25454794642043671 0.23099438767232694 
		0.14300453367604773 0.1013709307208223 0.072710913261692572 0.059364979057484786 
		0.051109567661638954 0.046108995353268595 0.040787746176281378;
	setAttr -s 9 ".wl[302].w[0:8]"  0.2163796565511093 0.20557374030380762 
		0.14938663149519002 0.11283905380333502 0.083807014224862586 0.06929033061408113 
		0.060066620820730304 0.054381161876319632 0.04827579031056442;
	setAttr -s 9 ".wl[303].w[0:8]"  0.2309158571670856 0.21603432604963749 
		0.14783133191199008 0.1085438225811968 0.079276428276682229 0.065155775898043236 
		0.05628648494093641 0.050874279387227161 0.045081693787200984;
	setAttr -s 9 ".wl[304].w[0:8]"  0.21811857446113475 0.22018814011183446 
		0.16935947250965028 0.11498534329652194 0.0776959351304643 0.061419483826923631 0.051806201020487032 
		0.046149563080903969 0.040277286562079601;
	setAttr -s 9 ".wl[305].w[0:8]"  0.19438880254645935 0.19533877651062995 
		0.16575338802487 0.12383999872035228 0.088161157422178504 0.070902880460161369 0.060331986060612436 
		0.053977390696154939 0.047305619558581161;
	setAttr -s 9 ".wl[306].w[0:8]"  0.20384658078827361 0.20524762977091598 
		0.16818386590673723 0.12064012792205293 0.083799897741182156 0.066852221199396308 
		0.05663640228295163 0.050568162157698791 0.04422511223079139;
	setAttr -s 9 ".wl[307].w[0:8]"  0.16135083462186325 0.19838225906342613 
		0.19379271354616046 0.14116310623681691 0.089828581104488936 0.068162293787041653 
		0.056024321245642696 0.049124464861687887 0.042171425532871995;
	setAttr -s 9 ".wl[308].w[0:8]"  0.15753780347111859 0.18040777773981803 
		0.17770144136589916 0.14254748784249777 0.098063077318245859 0.076249884831201889 
		0.063393255634859397 0.055885972057435784 0.048213299738923611;
	setAttr -s 9 ".wl[309].w[0:8]"  0.15938579778858566 0.18794679001762674 
		0.18463888270138035 0.14241192116657161 0.094542738960264189 0.072681676883448551 
		0.060085523107114909 0.052836351554649233 0.04547031782035868;
	setAttr -s 9 ".wl[310].w[0:8]"  0.11468343630917967 0.17345338172470626 
		0.18489826204763604 0.1722781690759155 0.11051392725195665 0.079939641625476981 0.0635979846124822 
		0.054662795471126714 0.045972401881519964;
	setAttr -s 9 ".wl[311].w[0:8]"  0.11882367576599356 0.16404812168509908 
		0.17147742910897554 0.16326034313631638 0.11512971478193346 0.086263091872769412 
		0.069683756828671839 0.060301150264940838 0.051012716555299924;
	setAttr -s 9 ".wl[312].w[0:8]"  0.11708301014504602 0.16831970884031883 
		0.17735553574489407 0.16737408204473925 0.11316542298510922 0.083430054047655758 
		0.066894299789723957 0.057703835747820127 0.048674050654692755;
	setAttr -s 9 ".wl[313].w[0:8]"  0.086267817873731847 0.13060232441437405 
		0.17415654365339667 0.17718341408450208 0.14148995404344272 0.098973379378060944 
		0.075768552885825111 0.063506227833832377 0.052051785832834187;
	setAttr -s 9 ".wl[314].w[0:8]"  0.09053092043815783 0.13086327825977345 
		0.16483660945484574 0.16703660393469372 0.14005964158847092 0.10268097317335062 0.080217499617845509 
		0.067810558787922859 0.055963914744939169;
	setAttr -s 9 ".wl[315].w[0:8]"  0.088585801494804578 0.13090066186618127 
		0.1690954426966654 0.17159727021059362 0.14074634138223582 0.10101432486972577 0.078145295461347089 
		0.065796469050261555 0.054118392968184964;
	setAttr -s 9 ".wl[316].w[0:8]"  0.068063790575375219 0.097369772508068289 
		0.13863341616108557 0.1714545193035614 0.16821007204389454 0.12615298780077158 0.093570674279070801 
		0.076121426432394695 0.060423340895777986;
	setAttr -s 9 ".wl[317].w[0:8]"  0.070927907824706274 0.099728827388478936 
		0.13743577215919128 0.16477668985149069 0.16223706173895122 0.1265107248688456 0.096154381995698326 
		0.079021562796756067 0.063207071375881455;
	setAttr -s 9 ".wl[318].w[0:8]"  0.069584076295534758 0.098680020920632786 
		0.13810720669318508 0.16783065397314476 0.1649509404191975 0.12637973151239634 0.094936084213345595 
		0.077651486866307837 0.061879799106255219;
	setAttr -s 9 ".wl[319].w[0:8]"  0.055834623320551828 0.075651843927375048 
		0.10404551511579668 0.1576356944671839 0.1657024300307226 0.15531240346859157 0.11910920018032252 
		0.094460210336485578 0.072248079152970213;
	setAttr -s 9 ".wl[320].w[0:8]"  0.057213755803359162 0.077138794992346785 
		0.10509974923682965 0.15540018274686296 0.16262754487113054 0.15330088307005735 0.11966437388613624 
		0.095790070682889847 0.073764644710387559;
	setAttr -s 9 ".wl[321].w[0:8]"  0.056554111961506455 0.076439965126782347 
		0.10462849035538072 0.15646706682947939 0.16408372921891862 0.15426343367725023 0.11938501010589571 
		0.09514910714404147 0.073029085580745057;
	setAttr -s 9 ".wl[322].w[0:8]"  0.26438028660033264 0.19966019536603113 
		0.13394477431067764 0.10219620678235802 0.077767211541325237 0.065401251929085899 
		0.057376967181242786 0.052367386615768154 0.046905719673178532;
	setAttr -s 9 ".wl[323].w[0:8]"  0.04773521008750739 0.061929697987023261 
		0.081290299684187522 0.12441456581773748 0.16011925046441147 0.16263778110387811 
		0.15004308216198536 0.12153781876009902 0.090292293933170384;
	setAttr -s 9 ".wl[324].w[0:8]"  0.060066444015410475 0.088569832726545422 
		0.13609182234718839 0.19039838076685695 0.18649270898947359 0.12610941351562976 0.088007750458975187 
		0.0698363678280709 0.054427279351849267;
	setAttr -s 9 ".wl[325].w[0:8]"  0.072895185673328922 0.10041667806035383 
		0.13418594647448617 0.15817580953823795 0.15677565090925388 0.12808930852052039 0.099793689436622507 
		0.082902381673078687 0.066765349714117697;
	setAttr -s 9 ".wl[326].w[0:8]"  0.054440333265396115 0.073039452767585486 
		0.099374858217727 0.15155654544985872 0.16403857272912503 0.15837178136701907 0.12476544559406802 
		0.099031854565389738 0.075381156043830749;
	setAttr -s 9 ".wl[327].w[0:8]"  0.059104739297000594 0.083371113224818008 
		0.12030067847327203 0.17541420523128357 0.17555769010092898 0.14139030674743047 0.10175435858886142 
		0.080678551243885108 0.062428357092519912;
	setAttr -s 9 ".wl[328].w[0:8]"  0.3402851538943365 0.1977330482650563 
		0.11921589186675115 0.088408291585800353 0.066319678514379143 0.055515691407826723 
		0.048587040805745538 0.044297800080597173 0.039637403579507166;
	setAttr -s 9 ".wl[329].w[0:8]"  0.2254400310717877 0.18724556875533713 
		0.13857121769782513 0.11033405347062851 0.086423437942299883 0.073602788816069409 
		0.065068763350094969 0.059644927924341298 0.053669210971616012;
	setAttr -s 9 ".wl[330].w[0:8]"  0.23722367191184121 0.2195827531939076 
		0.14644186690689687 0.10665932872327152 0.07761729169965001 0.063713405577097412 
		0.055012715182030762 0.049708782012215159 0.044040184793089417;
	setAttr -s 9 ".wl[331].w[0:8]"  0.25884759040363048 0.20498144488924191 
		0.13638544118176307 0.10294335296354622 0.0775549538564064 0.064858703256365877 0.056692223574306928 
		0.051619507027710398 0.046116782847028727;
	setAttr -s 9 ".wl[332].w[0:8]"  0.15201484306841398 0.18105656860349228 
		0.17997982639278531 0.14577565879441626 0.0988061619721054 0.076246860065469671 0.063033977732082469 
		0.055424484337556444 0.047661619033678264;
	setAttr -s 9 ".wl[333].w[0:8]"  0.1527086529454881 0.21679888170215944 
		0.21337910399479587 0.14173737861226407 0.083179203537453089 0.061534497788622015 
		0.049962325314942213 0.043539665641077877 0.037160290463197257;
	setAttr -s 9 ".wl[334].w[0:8]"  0.10675139261858695 0.16262248840381718 
		0.18154679036160795 0.17626829012310488 0.1174425156367371 0.084302246956623306 0.066541796571498543 
		0.056913443692827463 0.047611035635196745;
	setAttr -s 9 ".wl[335].w[0:8]"  0.13238720598731832 0.19734567102726086 
		0.19852157416366761 0.15934274310812885 0.095691713000764636 0.070057428512315445 
		0.056372608388028982 0.048849550115456455 0.041431505697058967;
	setAttr -s 9 ".wl[336].w[0:8]"  0.25541317633307137 0.19794013417815953 
		0.13544802436538486 0.10406018992412132 0.079509317326820553 0.066977855612685294 
		0.058814136703614732 0.053707071790530893 0.048130093765611358;
	setAttr -s 9 ".wl[337].w[0:8]"  0.28456311565748754 0.20219496278466464 
		0.1303788844513015 0.098159600422339635 0.07411145947626771 0.062140940630690117 
		0.054420613066577216 0.049624352057873099 0.044406071452798644;
	setAttr -s 9 ".wl[338].w[0:8]"  0.26865053899852281 0.20032463147912777 
		0.13329467534357098 0.10135120232633926 0.076947037055439149 0.064665020637126217 
		0.056699337201039667 0.051738782729894357 0.046328774228939759;
	setAttr -s 9 ".wl[339].w[0:8]"  0.24324386869804665 0.19498777471868828 
		0.1372653508683539 0.10661869754046104 0.082022855686769994 0.069282625950964086 
		0.060935530416398029 0.055691028600572311 0.049952267519745693;
	setAttr -s 9 ".wl[340].w[0:8]"  0.30156097520641822 0.20307757712086738 
		0.12716223573106955 0.094901485085817652 0.071301420491333492 0.059671553824895376 
		0.052202747238596636 0.047574601690605699 0.042547403610396044;
	setAttr -s 9 ".wl[341].w[0:8]"  0.26613467136587671 0.19992081784502494 
		0.13377172350121189 0.1018777353704514 0.077409749570466688 0.065080610378565232 
		0.057072963606900527 0.05208692692818398 0.046644801433318533;
	setAttr -s 9 ".wl[342].w[0:8]"  0.21904939377647067 0.20755915030858338 
		0.14923089597237496 0.11207598595452972 0.082938604951294861 0.068487593183843648 
		0.059324096885181095 0.053690730900776862 0.047643548066944638;
	setAttr -s 9 ".wl[343].w[0:8]"  0.25894957252845258 0.23345918179941824 
		0.14200332233242718 0.1000710391939835 0.071561117739420366 0.058370901870493402 
		0.050224804533341591 0.045299715083298359 0.040060344919164707;
	setAttr -s 9 ".wl[344].w[0:8]"  0.23527394338354823 0.21898255395587668 
		0.14721461468634378 0.10724307382656438 0.077972654047413062 0.063989787853623026 
		0.055228507558852544 0.049898461632451319 0.044196403055326773;
	setAttr -s 9 ".wl[345].w[0:8]"  0.19643830105971843 0.19749975355922458 
		0.16644509002125515 0.12320504635560155 0.087180056487326005 0.06997818298225976 
		0.059477706173382883 0.053187625143720184 0.04658823821751145;
	setAttr -s 9 ".wl[346].w[0:8]"  0.22113358771415803 0.22345930037264611 
		0.16950305105130573 0.11370553962663996 0.076389557900535546 0.060289046997545351 
		0.050807226940772721 0.04524289717665244 0.039469792219744178;
	setAttr -s 9 ".wl[347].w[0:8]"  0.20693424913158151 0.20854786320928945 
		0.16886388676244363 0.11949505598131964 0.082369320073022612 0.065559732453316519 
		0.055468601788127708 0.049498355750915567 0.043262934849983392;
	setAttr -s 9 ".wl[348].w[0:8]"  0.15803881552508145 0.18246016126672296 
		0.17963500292126056 0.14259767754221231 0.097096438345999264 0.075255615459477676 
		0.062459049750967562 0.055023525919157504 0.047433713269120645;
	setAttr -s 9 ".wl[349].w[0:8]"  0.16153270247851323 0.20136183685713346 
		0.19646013870177995 0.14070866087348713 0.088517124185036086 0.066968571578874161 
		0.05496261664467085 0.0481653271423442 0.04132302153816083;
	setAttr -s 9 ".wl[350].w[0:8]"  0.15985729937495277 0.19093380538636764 
		0.18740454740871967 0.14223310096255984 0.093162974669561013 0.071346689542607311 
		0.058865407206880362 0.051722079760282112 0.044474095688069239;
	setAttr -s 9 ".wl[351].w[0:8]"  0.11821771138464197 0.1655700889981026 
		0.1735314969072527 0.16472958821078226 0.11444581895986156 0.085267653245523517 0.068688471727883157 
		0.05937461915101188 0.050174551414940344;
	setAttr -s 9 ".wl[352].w[0:8]"  0.11368928102887768 0.17527387635666344 
		0.18768983432525099 0.17400836610612652 0.10945319674680458 0.078716207351647971 
		0.06246494810266226 0.053636762309093276 0.045067527672873316;
	setAttr -s 9 ".wl[353].w[0:8]"  0.11616161093808758 0.17028978156699642 
		0.18016000754138439 0.16926366796972506 0.1121564866706483 0.082127288907777304 0.065641193276663276 
		0.056553340668169277 0.047646622460548418;
	setAttr -s 9 ".wl[354].w[0:8]"  0.089613805260049889 0.13093475450168546 
		0.16687089166750704 0.1691791988391452 0.14035539002769512 0.10189538930533269 0.079223384816369771 
		0.066848386901819754 0.055078798680394919;
	setAttr -s 9 ".wl[355].w[0:8]"  0.085163495290000932 0.13043917831331844 
		0.17670867311984656 0.17993296947762683 0.1416123723919081 0.097955311993730754 0.074633464677914998 
		0.062447496509719078 0.051107038225934244;
	setAttr -s 9 ".wl[356].w[0:8]"  0.087444372421879579 0.13086878417210354 
		0.17167656862842287 0.1743393297327458 0.14099690718179178 0.099999435120654998 0.076940790207619722 
		0.064652092488025226 0.053081720046756514;
	setAttr -s 9 ".wl[357].w[0:8]"  0.069980231823678962 0.099023786001639039 
		0.13798864892106 0.16691879605287729 0.16411173233220477 0.12641575230894081 0.095267352474575767 
		0.078039722407110795 0.062253977677912603;
	setAttr -s 9 ".wl[358].w[0:8]"  0.067039865058932807 0.096513143500014609 
		0.13910825505091834 0.17401239863946677 0.1704080010512164 0.12590870031377979 0.092547363774032165 
		0.075046178901134561 0.059416093710504596;
	setAttr -s 9 ".wl[359].w[0:8]"  0.068512316415145533 0.09783482103852767 
		0.13867819641700346 0.1703721733436328 0.16715325987386409 0.1262022164986536 0.093899437982032458 
		0.076533664047820985 0.060813914383319366;
	setAttr -s 9 ".wl[360].w[0:8]"  0.056284420720266813 0.076169113413804321 
		0.10447544775772975 0.15692433117126439 0.16470989961840291 0.15467565788708124 0.11920798922644034 
		0.094853725136438874 0.072699415068571402;
	setAttr -s 9 ".wl[361].w[0:8]"  0.054878931045087662 0.074629272523925594 
		0.10333573680400365 0.15925758389767233 0.16797827262671872 0.15676218219874327 0.11856849297480042 
		0.093450123041596583 0.071139404887451782;
	setAttr -s 9 ".wl[362].w[0:8]"  0.055570473720054359 0.075400653322729688 
		0.10393404840686248 0.15810827678766542 0.16635492234825922 0.15573740623203525 0.11886537425096644 
		0.094133946825950623 0.071894898105476557;
	setAttr -s 9 ".wl[363].w[0:8]"  0.26927447545853561 0.20042771984549476 
		0.13314656116202786 0.10121186254198143 0.076838948155728712 0.064567893332910783 
		0.056614896776740788 0.051659595046535833 0.046258047680044281;
	setAttr -s 9 ".wl[364].w[0:8]"  0.046843471290106381 0.060911958560059119 
		0.080257060573165853 0.12419508282967247 0.16201957431114458 0.16464182681067907 
		0.15090520989870701 0.12106581566960656 0.089160000056858979;
	setAttr -s 9 ".wl[365].w[0:8]"  0.076389034235706518 0.10261851660358279 
		0.13209930904988332 0.1515723515200437 0.1506273918931261 0.12745032669498804 0.10248709671294022 
		0.086349815249179895 0.070406158040549532;
	setAttr -s 9 ".wl[366].w[0:8]"  0.06719324897181303 0.095894953129563781 
		0.13650887462594072 0.17071645321861584 0.16834992911633065 0.12817973898724636 0.094894864054705444 
		0.077159894004223864 0.061102043891560459;
	setAttr -s 9 ".wl[367].w[0:8]"  0.053929070294407973 0.072499169377340689 
		0.0989823171872318 0.15223978818992359 0.16523846019409716 0.15932361036066933 0.12453787584563361 
		0.098497101377438487 0.074752607173257421;
	setAttr -s 9 ".wl[368].w[0:8]"  0.065654012341631027 0.089899427147789868 
		0.12230543890425533 0.16023045830334895 0.16031361365980976 0.13830233038116971 0.10681797126592536 
		0.087356023950719439 0.069120724045350496;
	setAttr -s 9 ".wl[369].w[0:8]"  0.2841359260887753 0.20932773881004962 
		0.13218390412156245 0.097709916271894251 0.072641214145261368 0.060513941918403133 
		0.052733638289515807 0.047967467083764752 0.042786253270773261;
	setAttr -s 9 ".wl[370].w[0:8]"  0.42023800865728705 0.19764715881429473 
		0.10458143456433347 0.074084706239895687 0.05391194640784315 0.044556184624073535 
		0.038664308595988184 0.035087951881342144 0.031228300214942183;
	setAttr -s 9 ".wl[371].w[0:8]"  0.3034599750328989 0.24537990007448077 
		0.13020606246482702 0.088906889484522231 0.06272547187240006 0.051031576019553125 
		0.043831393783931999 0.039525044604609871 0.034933686662776159;
	setAttr -s 9 ".wl[372].w[0:8]"  0.32273748063109353 0.22208591064695601 
		0.12488474371431472 0.088643859372112846 0.064282037783706059 0.052980740284118436 
		0.045875082480694412 0.041572712142973513 0.036937432944030568;
	setAttr -s 9 ".wl[373].w[0:8]"  0.23884623138491715 0.25417095760793978 
		0.17476397490117163 0.1035245926363213 0.065536444844863082 0.050763002680389524 
		0.042337042343688132 0.037509490671695046 0.032548262929014297;
	setAttr -s 9 ".wl[374].w[0:8]"  0.21326471590743631 0.2210212807784826 
		0.17701018010942088 0.11685302218949646 0.076952691194382541 0.060326583111106231 
		0.050565958360658997 0.044929698447228127 0.039075869901787789;
	setAttr -s 9 ".wl[375].w[0:8]"  0.17478635057246217 0.23597455898771696 
		0.21516813442012669 0.12567129273912223 0.073904107001260266 0.055409048130760877 
		0.045316770775763779 0.039709776405835923 0.03405996096695104;
	setAttr -s 9 ".wl[376].w[0:8]"  0.20939953813359657 0.23328744664266685 
		0.18880353506444317 0.11594939632672008 0.072916032632446615 0.05615638713090864 
		0.046629291364807708 0.041207533378791274 0.03565083932561916;
	setAttr -s 9 ".wl[377].w[0:8]"  0.35749773185441275 0.21252973066192279 
		0.11719586203237231 0.083451777766544069 0.060795594471633956 0.050235253328813373 
		0.043579951619291915 0.039537627839182764 0.035176470425825966;
	setAttr -s 9 ".wl[378].w[0:8]"  0.32233780241375981 0.21467376651236 
		0.12458862406631593 0.089755362265308211 0.065760831901517602 0.054451097712102783 
		0.047288958489796036 0.042928418645314069 0.038215137993525487;
	setAttr -s 9 ".wl[379].w[0:8]"  0.34153456801724585 0.2139652429102665 
		0.1204843630944101 0.086224190363205139 0.062977659404466313 0.052081538694094764 
		0.045205039628648379 0.041021219640028965 0.036506178247633976;
	setAttr -s 9 ".wl[380].w[0:8]"  0.37593121734187951 0.21010919764371691 
		0.1133996399127037 0.080377433806448864 0.058424497861593989 0.04823847731027886 
		0.041829589265704528 0.037941309410443991 0.033748637447229543;
	setAttr -s 9 ".wl[381].w[0:8]"  0.30667127064570299 0.21435278665742583 
		0.12791071230087711 0.092782655182850185 0.068209886546779466 0.056551815837388782 
		0.04914560803184731 0.044630843360767544 0.039744421436360713;
	setAttr -s 9 ".wl[382].w[0:8]"  0.34053024689351441 0.21404473946455357 
		0.12065887969918757 0.08639449481224605 0.063125120619103775 0.052206572270963147 
		0.045317512915959424 0.041123579255795538 0.036598854068676384;
	setAttr -s 9 ".wl[383].w[0:8]"  0.32997084786047715 0.25116344337502944 
		0.12293673758424048 0.082582786738040967 0.057837849940058923 0.046934613415498587 
		0.040258119717916985 0.03627618117693944 0.032039420191797868;
	setAttr -s 9 ".wl[384].w[0:8]"  0.28051897240368845 0.23900500452657428 
		0.13648680579577752 0.094668466615486224 0.067235718662416413 0.054819538020715694 
		0.047134102874100192 0.042526540978685835 0.037604850122555378;
	setAttr -s 9 ".wl[385].w[0:8]"  0.30537806584847677 0.24677558939724151 
		0.1295597105463149 0.088274341448854057 0.062219077124770185 0.050586144253418071 
		0.043439004679341239 0.039161313700648508 0.034606753000934867;
	setAttr -s 9 ".wl[386].w[0:8]"  0.28858910228326057 0.28018749440628948 
		0.13743507710045164 0.08624062916756213 0.057682525791104562 0.045855592452713263 
		0.038839135293739502 0.034735653568145432 0.030434789936733243;
	setAttr -s 9 ".wl[387].w[0:8]"  0.2568216354812613 0.25248073418145789 
		0.14977364136509586 0.098427249202905076 0.067003221026860516 0.053554596328309285 
		0.045478957822043947 0.040729259986008765 0.035730704606057533;
	setAttr -s 9 ".wl[388].w[0:8]"  0.27361033953272978 0.26742006715334626 
		0.1434936481952257 0.091927474144524346 0.061978832112314072 0.049378652153537067 
		0.041873868919509755 0.037468891427347308 0.032848226361465747;
	setAttr -s 9 ".wl[389].w[0:8]"  0.25281939316775892 0.26701540212041502 
		0.16809348807776717 0.097326768752586473 0.06144561872786572 0.047652532964880936 
		0.039768745450314613 0.035261189623839104 0.030616861114572076;
	setAttr -s 9 ".wl[390].w[0:8]"  0.23352677150199164 0.24183512492254808 
		0.17324030063103676 0.10740744528571569 0.069364173652989192 0.054128854610418851 
		0.045302026890327723 0.040224476773182881 0.03497082573178923;
	setAttr -s 9 ".wl[391].w[0:8]"  0.24430904887576063 0.25513820546947263 
		0.17068678605641602 0.10196538389557463 0.06503576825605395 0.05056324592577479 0.042252715531011051 
		0.037483648453835811 0.03256519753610037;
	setAttr -s 9 ".wl[392].w[0:8]"  0.18864711278905533 0.2532758287283815 
		0.21254023813753853 0.11584250031121343 0.068024180287629882 0.051184689689699199 
		0.041975016896908683 0.036846280665045701 0.031664152494527691;
	setAttr -s 9 ".wl[393].w[0:8]"  0.18682601915030234 0.23254437069935113 
		0.20503353067871433 0.12286246790932603 0.074320325344967117 0.056319946628432933 
		0.046326369211511488 0.040725190804661089 0.035041779572733495;
	setAttr -s 9 ".wl[394].w[0:8]"  0.18843383321227702 0.24344911407083389 
		0.20902696066897075 0.11908789668961986 0.070870272330901846 0.053478819014723615 
		0.043916327040650426 0.038571475976453114 0.033165300995569524;
	setAttr -s 9 ".wl[395].w[0:8]"  0.13650625466327906 0.23817412284397527 
		0.23734050929203526 0.14135268272075047 0.076098140326141595 0.055163302759027644 
		0.0442980514927164 0.038431411787784059 0.032635524114290153;
	setAttr -s 9 ".wl[396].w[0:8]"  0.14089064433065521 0.22428671194109717 
		0.22370497455425253 0.14541120055347262 0.081371962054954214 0.059454686220988907 
		0.047893210415610517 0.041609737966709803 0.035376871962258867;
	setAttr -s 9 ".wl[397].w[0:8]"  0.1387893166635496 0.23170435281184881 
		0.23095068285582293 0.14332181848206366 0.078511852951088312 0.0570947629066915 0.045912711139956784 
		0.039853563593657854 0.033860938595320536;
	setAttr -s 9 ".wl[398].w[0:8]"  0.10529028589881323 0.20904312556205337 
		0.22932678968820086 0.18026086159161966 0.089473721170676063 0.061921821315126427 
		0.048474637884522595 0.041473663156871406 0.034735093732116328;
	setAttr -s 9 ".wl[399].w[0:8]"  0.10873791470100037 0.20347218149640089 
		0.21988610324549876 0.17893042006370341 0.092960994979183476 0.064869038737730186 
		0.050931870732863892 0.043631524005921664 0.036579952037697275;
	setAttr -s 9 ".wl[400].w[0:8]"  0.10688625340769775 0.20656292834946496 
		0.22502838891087393 0.17972256511345572 0.091052106767142968 0.063224170755124126 
		0.049558259971350938 0.042421030273828139 0.035544296451061524;
	setAttr -s 9 ".wl[401].w[0:8]"  0.084995212691451466 0.15972243533869632 
		0.22225060856038178 0.21604288580323625 0.10887166669604444 0.071193325755218459 
		0.05401793470024286 0.045452009926455754 0.037453920528272747;
	setAttr -s 9 ".wl[402].w[0:8]"  0.086689048354266468 0.15998184704063992 
		0.21760432768649726 0.21206433735279573 0.11052299608344937 0.072771595509023942 
		0.055336139350565444 0.046602079971529008 0.038427628651232899;
	setAttr -s 9 ".wl[403].w[0:8]"  0.085738893852513709 0.15984397272710335 
		0.22020837380013711 0.21429933641403745 0.10961807216309932 0.07187929637883432 0.054589879334788552 
		0.045948354663606875 0.037873820665879299;
	setAttr -s 9 ".wl[404].w[0:8]"  0.34020602130585192 0.21403801997078051 
		0.12079990659201216 0.086470308146177413 0.063157875127165253 0.0522345268955813 
		0.045337139427875345 0.041142392936651069 0.036613809597905035;
	setAttr -s 9 ".wl[405].w[0:8]"  0.071709468789708825 0.12333130992361489 
		0.2102669888719661 0.21798740637624262 0.13797380680724333 0.084694172884194271 0.061834215490160764 
		0.050988193372910925 0.041214437483958352;
	setAttr -s 9 ".wl[406].w[0:8]"  0.096046992299288536 0.21533581155245174 
		0.25066569607915246 0.18497433555439868 0.083294618104636634 0.05666467585795678 
		0.044051876214346843 0.037578587484136471 0.03138740685363188;
	setAttr -s 9 ".wl[407].w[0:8]"  0.10954564497819735 0.1968556263071744 
		0.21309117526877183 0.17980038584311475 0.096560900606888711 0.067536931328817079 
		0.053066573680294722 0.045446241095690128 0.038096520891050874;
	setAttr -s 9 ".wl[408].w[0:8]"  0.082456384441997793 0.15193375365534853 
		0.22012021515049149 0.21790741115421045 0.1136629832800625 0.073600122712139407 0.055512880878982852 
		0.046559452237049562 0.038246796489717287;
	setAttr -s 9 ".wl[409].w[0:8]"  0.091214457807311675 0.18805909748895705 
		0.23728476801706627 0.20402818651739241 0.093730305755276175 0.062625998795716814 
		0.048207594845316143 0.040886255437736732 0.033963335335226705;
	setAttr -s 9 ".wl[410].w[0:8]"  0.43435246160730073 0.19212289100300656 
		0.10192652529846327 0.072348294982847144 0.052732499225563681 0.043626440197609105 
		0.037879255622464664 0.034390888223553108 0.030620743839191854;
	setAttr -s 9 ".wl[411].w[0:8]"  0.28667876751290394 0.20792251037432824 
		0.13168981189869769 0.097426151581680998 0.072466224343655988 0.060430050610170871 
		0.052675330331301583 0.047938620873905699 0.042772532473355086;
	setAttr -s 9 ".wl[412].w[0:8]"  0.30657056927915943 0.2427610733851685 
		0.1296002157421729 0.088724678047523847 0.062702152567595162 0.051088463523526757 
		0.043905500208023425 0.039616935147218979 0.035030412099610948;
	setAttr -s 9 ".wl[413].w[0:8]"  0.32952818482058061 0.21945046429928777 
		0.12349547145896801 0.087759006886991967 0.063704101539776112 0.052559935858087853 
		0.045530699865879744 0.041280816577445249 0.03669131869298279;
	setAttr -s 9 ".wl[414].w[0:8]"  0.22927094038073867 0.23900614059006622 
		0.17565530872607971 0.10907249742479945 0.070273488460978042 0.054817319628610507 
		0.045840987324491579 0.040697512929551448 0.03536580453468436;
	setAttr -s 9 ".wl[415].w[0:8]"  0.26621217645795558 0.29466785849586791 
		0.16206415246509032 0.087985571969887558 0.054413426566415603 0.041975095811704194 
		0.034929730564490474 0.03093149779138718 0.026820489877201207;
	setAttr -s 9 ".wl[416].w[0:8]"  0.17785520991059103 0.24536545338425442 
		0.21796906030780794 0.12130883097732213 0.070638254622700264 0.052974524648568333 
		0.043320526566238665 0.037981870948766067 0.032586268633751199;
	setAttr -s 9 ".wl[417].w[0:8]"  0.22671815126640771 0.26786077811705489 
		0.18764873736326132 0.10272835338427412 0.062500396951066003 0.047818517284172364 
		0.039582168488963246 0.034944036615493661 0.030198860529306728;
	setAttr -s 9 ".wl[418].w[0:8]"  0.3238435455666161 0.21241867052040853 
		0.12437594895675498 0.089821395442508958 0.065901555201387588 0.054639281114061189 
		0.047475000918042062 0.043122244956380486 0.038402357323840029;
	setAttr -s 9 ".wl[419].w[0:8]"  0.35965823720336892 0.2098592369859508 
		0.11689071130937898 0.083472081127863335 0.060914593101839352 0.050400100977448584 
		0.043747151956180175 0.039711741493252475 0.035346145844717347;
	setAttr -s 9 ".wl[420].w[0:8]"  0.33836934593982126 0.2118168161741284 
		0.12131391166357711 0.087168517038673551 0.063801603255497344 0.052847748951733775 
		0.045897649625890387 0.041677531899597393 0.037106875451080754;
	setAttr -s 9 ".wl[421].w[0:8]"  0.30901510647691505 0.21233459153316375 
		0.12748951814230253 0.092643945699981731 0.068180587574027729 0.056595960424571871 
		0.049204078666391989 0.044708649599437093 0.039827561883208303;
	setAttr -s 9 ".wl[422].w[0:8]"  0.38129183325499622 0.20678398286358285 
		0.11244858853223172 0.079906222675956151 0.058178990897970302 0.048094512559031639 
		0.041728146960450394 0.037869156285984973 0.033698565969795855;
	setAttr -s 9 ".wl[423].w[0:8]"  0.3343428315398782 0.21205329187874095 
		0.12214451116400131 0.087888793603226573 0.064374922071230203 0.053335821720451634 
		0.04632813686831809 0.042071376311348392 0.037460314842804841;
	setAttr -s 9 ".wl[424].w[0:8]"  0.28293032027076026 0.23710507628813723 
		0.13595638958053666 0.094479610238261458 0.067186037728457895 0.054858298652519795 
		0.047190498550117956 0.042604628412751276 0.037689140278457468;
	setAttr -s 9 ".wl[425].w[0:8]"  0.33509331651894464 0.24770458358219596 
		0.12196268109883693 0.082174056394559963 0.057665553863541517 0.046863607109098267 
		0.040223136823299914 0.036266788975355069 0.032046275634167565;
	setAttr -s 9 ".wl[426].w[0:8]"  0.30182660783095416 0.24256863914305513 
		0.13086471203576552 0.089720336456370633 0.063428554929427977 0.051678786796450771 
		0.044411305387138486 0.040071060448640339 0.035429996972197057;
	setAttr -s 9 ".wl[427].w[0:8]"  0.25845407008182636 0.25226193778921635 
		0.14893912941487494 0.098026858672825665 0.066828461054074306 0.053508763063311669 
		0.045466967220523187 0.04074890672000616 0.035764905983341214;
	setAttr -s 9 ".wl[428].w[0:8]"  0.29170319178965004 0.27961311778511971 
		0.13604825614560648 0.085639679675209412 0.057415414150270419 0.045725270878926388 
		0.038757866443044568 0.034687871115945262 0.030409332016227742;
	setAttr -s 9 ".wl[429].w[0:8]"  0.27126987139310504 0.26319033020719462 
		0.14432164057717758 0.093178218526933365 0.063055276901883547 0.050363531174855855 
		0.042747656963967644 0.038287051201710685 0.033586423053171728;
	setAttr -s 9 ".wl[430].w[0:8]"  0.23595014035299805 0.24293600505388616 
		0.17182669865722086 0.10647410037776231 0.068873178674316735 0.053862472157841929 
		0.045111944568742013 0.040091036867052128 0.034874423290179847;
	setAttr -s 9 ".wl[431].w[0:8]"  0.25679409679628518 0.26857569155899619 
		0.16559337370315386 0.096040105872598036 0.060800167436975201 0.047257458983387679 
		0.039474144329330996 0.03502993040429301 0.030435030914979917;
	setAttr -s 9 ".wl[432].w[0:8]"  0.24444062316579521 0.25300831716683442 
		0.16979961120901135 0.10230935821546795 0.06555337652334696 0.051122239194104233 
		0.042765740619235638 0.037980330350819796 0.033020403555384478;
	setAttr -s 9 ".wl[433].w[0:8]"  0.18997201546358444 0.23414114731612576 
		0.20397355451413585 0.1213066746181759 0.073489732180103282 0.055843319384320494 
		0.045976219073337453 0.040460131946889875 0.034837205503326966;
	setAttr -s 9 ".wl[434].w[0:8]"  0.19271759965160851 0.25553005650077215 
		0.21043675528337835 0.11398018603607696 0.06712886160600369 0.050654660726894077 
		0.041584962060170275 0.036541632093641641 0.03142528604145424;
	setAttr -s 9 ".wl[435].w[0:8]"  0.19148334853593241 0.24262917942932788 
		0.20683425125775112 0.11834501189195275 0.0708104356204656 0.053635765175760616 0.044102043131056409 
		0.038784079130291395 0.033375885827461801;
	setAttr -s 9 ".wl[436].w[0:8]"  0.14302540926406077 0.22635683967957143 
		0.2252512300712976 0.14302738663069706 0.080060834485216684 0.058704229385926801 
		0.047343773414653963 0.041185433611344427 0.035044863457231228;
	setAttr -s 9 ".wl[437].w[0:8]"  0.1387259043974885 0.24069249830539541 
		0.23903122740655505 0.13850317762073461 0.074720186761926474 0.054364704244941657 
		0.043714479866432482 0.037973302448338887 0.032274518948186857;
	setAttr -s 9 ".wl[438].w[0:8]"  0.14139842228353031 0.2322930500815823 
		0.23096309157130904 0.14125955159827278 0.077802683893283625 0.056846375827398543 
		0.04578448483173285 0.039802146784120682 0.033850193128770079;
	setAttr -s 9 ".wl[439].w[0:8]"  0.11005753883395637 0.20768896239471066 
		0.2216945932510796 0.17616224029273658 0.091082493580332602 0.06385691945049389 0.050213570654186648 
		0.043085159439685494 0.036158522102818169;
	setAttr -s 9 ".wl[440].w[0:8]"  0.10654315498233571 0.21390600362637427 
		0.2313415728298219 0.17689158114745371 0.087523757053577109 0.060869602867856185 
		0.047730330382944344 0.04090180652701008 0.034292190582626746;
	setAttr -s 9 ".wl[441].w[0:8]"  0.10856536141184818 0.21039688904498163 
		0.22580393073439911 0.17655683948250389 0.089546177426539003 0.06254873057444299 
		0.049122565503698534 0.042123747750111649 0.035335758071475099;
	setAttr -s 9 ".wl[442].w[0:8]"  0.087624525971488745 0.16379310343534351 
		0.21921940286444785 0.21139019155712027 0.10795929878233064 0.071533676384209696 
		0.05450611589947537 0.045996761019512021 0.037976924086071825;
	setAttr -s 9 ".wl[443].w[0:8]"  0.085905089891044534 0.1636652482445379 
		0.22397633803017755 0.21520111760301566 0.10627071551556988 0.069948393219361568 
		0.053187483409334137 0.044844366830521197 0.037001247256437733;
	setAttr -s 9 ".wl[444].w[0:8]"  0.086861138347651232 0.16375503000407376 
		0.22132170742683627 0.21308358093010338 0.10721793755577774 0.070825876539453575 
		0.053915877061854099 0.045479889784188557 0.037538962350061288;
	setAttr -s 9 ".wl[445].w[0:8]"  0.34033207195031662 0.21168351197395227 
		0.12091260902598201 0.086821077372438812 0.063524712009112583 0.052612289495225888 
		0.045689865786013951 0.041487531133910516 0.036936331253047239;
	setAttr -s 9 ".wl[446].w[0:8]"  0.072409605164331411 0.12590350508027912 
		0.21374580507288288 0.21878941890554904 0.13422875196747219 0.083081689518476845 
		0.060828667172386053 0.050293111067889154 0.040719446050733285;
	setAttr -s 9 ".wl[447].w[0:8]"  0.11578689943558344 0.19084767851020057 
		0.20052550694347662 0.17364103352373023 0.10026353462867696 0.071844102732867926 
		0.056905474111694138 0.048983534566431036 0.041202235547339129;
	setAttr -s 9 ".wl[448].w[0:8]"  0.10739376037442765 0.20661041771167535 
		0.22403822110106422 0.17914087994819891 0.091131574265213344 0.063489065219207788 
		0.049790032408566859 0.042655244590723236 0.035750804380922499;
	setAttr -s 9 ".wl[449].w[0:8]"  0.083931305037298801 0.15572928578437586 
		0.2199982599608821 0.21634000907552589 0.11147952137023144 0.072879981704514721 0.05513754522165136 
		0.046360065409332477 0.038144026436187424;
	setAttr -s 9 ".wl[450].w[0:8]"  0.10195545827107948 0.1853306115618111 
		0.21188768336731778 0.18989504295688564 0.10120886481290021 0.069977253803055431 
		0.054481035481108067 0.046483562926807921 0.038780486819034406;
	setAttr -s 9 ".wl[451].w[0:8]"  0.28742870235791163 0.20815488426894332 
		0.13099625351033822 0.097120798344041651 0.072441810568061427 0.06040599842317735 
		0.052698396439937699 0.047951571721778753 0.042801584365809844;
	setAttr -s 9 ".wl[452].w[0:8]"  0.4361614589492363 0.19179937369699368 
		0.1013229782574203 0.072021272692627064 0.052575075859620478 0.043494744643233531 
		0.037781185863545674 0.034298813935521741 0.030545096101801218;
	setAttr -s 9 ".wl[453].w[0:8]"  0.30750615905032064 0.24312322368547487 
		0.12877158880108358 0.088405331119220817 0.062643124469983019 0.051037392957457885 
		0.043890871931052657 0.039597977481417232 0.03502433050398919;
	setAttr -s 9 ".wl[454].w[0:8]"  0.33060856730983845 0.21960858378624035 
		0.12277061204082819 0.08744154494976196 0.063631863379081915 0.052497479249285127 
		0.045507728822177511 0.041254109555227854 0.036679510907558693;
	setAttr -s 9 ".wl[455].w[0:8]"  0.2368756471891908 0.24782433467900802 
		0.17368626104450993 0.10535118428069684 0.067399005391317185 0.05242814354165546 
		0.043809759419432479 0.038864802552265293 0.033760861901923914;
	setAttr -s 9 ".wl[456].w[0:8]"  0.21774103648943083 0.22336100568424216 
		0.17410081142461453 0.11506396689720175 0.076202494317352099 0.059812112848388457 
		0.050219645206830886 0.044639146028015254 0.038859781103924032;
	setAttr -s 9 ".wl[457].w[0:8]"  0.17976671931734406 0.23517402365854453 
		0.21114304644622894 0.12438645284546695 0.073959794789322672 0.055632295349614821 
		0.045599363491436201 0.039994392087536031 0.034343912014505866;
	setAttr -s 9 ".wl[458].w[0:8]"  0.21257169640433321 0.23222722278874988 
		0.18558971531748103 0.11529157483084476 0.073164271876352341 0.056518480820735142 
		0.047021996701870718 0.041592413108779334 0.036022628150853511;
	setAttr -s 9 ".wl[459].w[0:8]"  0.36073248433350147 0.20986766391277278 
		0.11632758522028808 0.083206497784207342 0.060832733929322154 0.050330351576736439 
		0.043709171605913109 0.03967304951801072 0.035320462119247713;
	setAttr -s 9 ".wl[460].w[0:8]"  0.32471957679981234 0.21254669212548197 
		0.12377432687097091 0.089552342915042105 0.065847215895789207 0.054591637740826343 
		0.047463025944612255 0.043105900845178569 0.038399280862286278;
	setAttr -s 9 ".wl[461].w[0:8]"  0.33915679336931587 0.21188461325400579 
		0.12083069383468115 0.086948188613337196 0.063747350679971906 0.052800876994486753 
		0.045878735524083412 0.041656297492888149 0.03709645023722969;
	setAttr -s 9 ".wl[462].w[0:8]"  0.38257711990908616 0.20670805312761942 
		0.11186668289898508 0.079621451662304679 0.058074829035206818 0.048006546714249747 
		0.041672443972836724 0.037814743846248063 0.033658128833463377;
	setAttr -s 9 ".wl[463].w[0:8]"  0.3098530569351669 0.21251363897560394 
		0.12684047173817703 0.092358433004957941 0.06813639149345134 0.056556263363203844 
		0.04920409130135376 0.044702265537131643 0.03983538765095361;
	setAttr -s 9 ".wl[464].w[0:8]"  0.33499721261725357 0.21212036599221426 
		0.12173009414629839 0.087700974375223312 0.064331003007373197 0.053297741310489366 
		0.046314172898240163 0.04205513780556968 0.037453297847338071;
	setAttr -s 9 ".wl[465].w[0:8]"  0.33622667151513685 0.24796666824649918 
		0.12116869171060531 0.081853297219897772 0.057574983005829618 0.046787614793261378 
		0.040180930464206462 0.036224176395765015 0.032016966648798488;
	setAttr -s 9 ".wl[466].w[0:8]"  0.28375240012442371 0.2375398987596809 
		0.13506557990947068 0.094146173825994203 0.067153814484781402 0.054828308087345075 
		0.047201472995629525 0.042607332615191486 0.037705019197483133;
	setAttr -s 9 ".wl[467].w[0:8]"  0.3024785354403024 0.24284298400725068 
		0.13026076729082597 0.089490133647652167 0.063389853789873246 0.051645040654136304 
		0.04440406698937046 0.040060245989428908 0.035428372191159602;
	setAttr -s 9 ".wl[468].w[0:8]"  0.29269126818881186 0.28044856960053727 
		0.13482337838281164 0.085254874365426517 0.057340100629685989 0.045662146913609668 
		0.038730286342364251 0.03465774184101459 0.030391633735738187;
	setAttr -s 9 ".wl[469].w[0:8]"  0.25930718446570061 0.25305107324447235 
		0.14762385261347138 0.097631121210021446 0.066822795180382102 0.053499592154337389 
		0.045498867895435724 0.040769246890507531 0.035796266345671415;
	setAttr -s 9 ".wl[470].w[0:8]"  0.27194451114906387 0.26379774536373191 
		0.14336157568695612 0.092888598376319104 0.063030800227441508 0.050340999942499222 
		0.042753618453302548 0.038287152212813313 0.033594998587872543;
	setAttr -s 9 ".wl[471].w[0:8]"  0.25840771313457983 0.26843681037218448 
		0.16381715229928345 0.095811948635762118 0.060932756872560091 0.047355985361925951 
		0.039587733503023512 0.035123734424946838 0.030526165395733575;
	setAttr -s 9 ".wl[472].w[0:8]"  0.2373088144122783 0.2430081476822181 
		0.1699787561498951 0.10617619362142619 0.069049256566121819 0.053993966696487601 
		0.045266734618380836 0.040218713705658792 0.034999416547533344;
	setAttr -s 9 ".wl[473].w[0:8]"  0.24559089093836878 0.25300497188342169 
		0.16835525856021014 0.10210075059852503 0.065679184082216666 0.051216044193909384 
		0.042874617818094311 0.038070263577937649 0.033108018347316255;
	setAttr -s 9 ".wl[474].w[0:8]"  0.19492788627864424 0.25369651705342716 
		0.20765881046873078 0.11423066314794986 0.067741593760917151 0.051109995326858199 
		0.041998439956959212 0.036895482926419754 0.031740611080093677;
	setAttr -s 9 ".wl[475].w[0:8]"  0.19185974643330084 0.23279371999483231 
		0.20136398292898819 0.12132196258928542 0.074062276963347773 0.056269502140990746 
		0.04637943509060316 0.04080258102275832 0.035146792835893254;
	setAttr -s 9 ".wl[476].w[0:8]"  0.19315813111799096 0.24135995962325482 
		0.20459834585820016 0.11844028499123078 0.07129903376438157 0.053999189313574947 
		0.044439388884595872 0.039071588733824665 0.033634077712946249;
	setAttr -s 9 ".wl[477].w[0:8]"  0.14107952462605 0.23751034672017912 
		0.23527196875586898 0.13914632048672454 0.075906519002364545 0.05521648794586765 
		0.044450273307047518 0.038599405051368822 0.032819154104528944;
	setAttr -s 9 ".wl[478].w[0:8]"  0.14508592481329272 0.22365383430457175 
		0.22205299753225874 0.14326548325610416 0.081127233245194497 0.059472727086239505 
		0.048026374288585492 0.041763258341178729 0.035552167132574433;
	setAttr -s 9 ".wl[479].w[0:8]"  0.14329843969898809 0.22976597732055454 
		0.22797736765320109 0.14161347350112327 0.078774536233762182 0.057545589801453849 
		0.046397446148974515 0.040322294480793143 0.034304875161149183;
	setAttr -s 9 ".wl[480].w[0:8]"  0.10829616794176308 0.2116114365384755 
		0.2278760794787715 0.17642225934761502 0.088936976915110558 0.061832449872814547 
		0.048553770963840399 0.041588486326659457 0.034882372614949815;
	setAttr -s 9 ".wl[481].w[0:8]"  0.11169881028694786 0.20550836411637086 
		0.21864276952453748 0.1754881605257522 0.092412332492714133 0.064767222768885233 
		0.051007957082218773 0.043745158948655195 0.036729224253918343;
	setAttr -s 9 ".wl[482].w[0:8]"  0.11010812425828163 0.2083593149783782 
		0.2228588152525309 0.17601989469387808 0.090793367025438554 0.06340065913501497 0.049858963082297314 
		0.042736645481971314 0.035864216092208988;
	setAttr -s 9 ".wl[483].w[0:8]"  0.087209980206119905 0.16343661322479755 
		0.2206775731040832 0.21249661005985349 0.1079203323894118 0.070996119560960858 0.054079789714975721 
		0.045567938542014547 0.037615043197783068;
	setAttr -s 9 ".wl[484].w[0:8]"  0.088886582476198836 0.16344482360112575 
		0.21611138994890947 0.20879158647492163 0.10955051703248275 0.072548509595080371 
		0.055381746496987475 0.046705034871982777 0.038579809502310956;
	setAttr -s 9 ".wl[485].w[0:8]"  0.08808600845135256 0.16347333194355895 
		0.21826935657841673 0.21055378205694353 0.10876412999122652 0.071810152179881889 
		0.054759935476177628 0.046163441310318382 0.038119862012123917;
	setAttr -s 9 ".wl[486].w[0:8]"  0.34124225677006692 0.21175463783676013 
		0.12036268242535707 0.086569531980121434 0.063461235380517136 0.052557538046793396 
		0.045666852673888952 0.041462063070413634 0.036923201816081226;
	setAttr -s 9 ".wl[487].w[0:8]"  0.073260325330456094 0.12613233081347813 
		0.21046703021099172 0.21618818499292247 0.13595094451345735 0.084069449616022224 
		0.061691775195360031 0.050960711605831155 0.041279247721480838;
	setAttr -s 9 ".wl[488].w[0:8]"  0.097394896999625877 0.2218357056427637 
		0.25393417632009996 0.17975641524876007 0.081183077189909705 0.055287921101068539 
		0.043086374269908682 0.036771335396902444 0.030750097830961002;
	setAttr -s 9 ".wl[489].w[0:8]"  0.11307487580703175 0.19695039543679535 
		0.20921174129131603 0.17606948134778821 0.096929458912941482 0.068462277973598315 
		0.054007703951223368 0.046359381790831856 0.038934683488473773;
	setAttr -s 9 ".wl[490].w[0:8]"  0.084598884548359038 0.15552196246429248 
		0.21833082456516051 0.21478886996568691 0.11261429612690904 0.073407677846676553 
		0.055599228507571569 0.046703135470732182 0.038435120504611724;
	setAttr -s 9 ".wl[491].w[0:8]"  0.094255666351625814 0.19208912663431918 
		0.23418161699767887 0.1987746443796744 0.093491940092815709 0.062923162411993611 
		0.048617900749050938 0.041300430364942443 0.034365512017899051;
	setAttr -s 9 ".wl[492].w[0:8]"  0.45555975531892795 0.18688218200754608 
		0.097528839714531815 0.069217205302545493 0.050505884209936847 0.041767955979727149 
		0.036279856667670578 0.032931586681791365 0.029326734117322676;
	setAttr -s 9 ".wl[493].w[0:8]"  0.29636750466194817 0.2089919954766096 
		0.12894255980564118 0.095253763785273851 0.070972137756617093 0.059121158140330442 
		0.051572717612969832 0.046909584481578788 0.041868578279031073;
	setAttr -s 9 ".wl[494].w[0:8]"  0.3209775032487065 0.24551601481598934 
		0.12486398368685976 0.085263797673862482 0.060325012167881331 0.049095591679233601 
		0.042214875649190846 0.038071819515909287 0.033671401562366796;
	setAttr -s 9 ".wl[495].w[0:8]"  0.34305842232274114 0.21921047298911661 
		0.11986237958088482 0.085097537954704316 0.061868508320555994 0.051004462865599919 
		0.044209783922844095 0.040066697557033244 0.035621734486519653;
	setAttr -s 9 ".wl[496].w[0:8]"  0.23955862996879362 0.24932138609488799 
		0.17163093402324678 0.10445871329107863 0.067055920910080238 0.052132073557400981 
		0.043592226799565259 0.038659108608557397 0.033591006746389047;
	setAttr -s 9 ".wl[497].w[0:8]"  0.27410699597757504 0.3021086353354438 
		0.15621779890286749 0.084845399613918696 0.05261511743633332 0.040545617057294765 
		0.03376095027694552 0.029882662674191304 0.025916822725430225;
	setAttr -s 9 ".wl[498].w[0:8]"  0.18115037974725834 0.25263830975591584 
		0.21735552991870485 0.11828481560266463 0.068760449348218566 0.051384223572422873 
		0.042032093809991421 0.036811212764026907 0.031582985480796577;
	setAttr -s 9 ".wl[499].w[0:8]"  0.23465350267547391 0.28048981215723218 
		0.18242035023299288 0.098007623450329567 0.059534371011808328 0.045430876428311708 
		0.037613125157294133 0.033177474713063988 0.028672864173493302;
	setAttr -s 9 ".wl[500].w[0:8]"  0.33935545163215763 0.2119904466367061 
		0.12047006245783373 0.086832058805209333 0.063775990940190791 0.052824516422290614 
		0.045922169996858116 0.041692056932930419 0.037137246175823264;
	setAttr -s 9 ".wl[501].w[0:8]"  0.38003427742499535 0.20720910390398323 
		0.11218666719638402 0.079981501326067031 0.058419452087086349 0.048296021233702878 
		0.041938976535396133 0.038055539482262625 0.033878460810122336;
	setAttr -s 9 ".wl[502].w[0:8]"  0.35873656891072431 0.21019664134334165 
		0.11650723656264578 0.083485551805018751 0.061133735713901523 0.050584336570947852 
		0.043948054264429472 0.039888437465663888 0.035519437363326772;
	setAttr -s 9 ".wl[503].w[0:8]"  0.32199501702076749 0.21269695266884589 
		0.12404604652506426 0.0899825410989573 0.066309212365144019 0.054986207641991823 
		0.047833432175159118 0.04344146494462716 0.038709125559442885;
	setAttr -s 9 ".wl[504].w[0:8]"  0.40291170567868723 0.20301650996616033 
		0.10762717877458972 0.076393872015368167 0.055676786678211167 0.045994828887786297 
		0.039923401867348433 0.036219239757076777 0.032236476374771887;
	setAttr -s 9 ".wl[505].w[0:8]"  0.3556004732543363 0.21054684139218299 
		0.11715804697439892 0.084018989469892696 0.061547285439677829 0.050934097617115565 
		0.044255003145469332 0.040168827087358056 0.035770435619568421;
	setAttr -s 9 ".wl[506].w[0:8]"  0.29428228655184846 0.24088118495213559 
		0.13189743506744558 0.091403312804719139 0.065086255855515793 0.053073790556085666 
		0.045683521655338351 0.041219315470930162 0.036472897085981289;
	setAttr -s 9 ".wl[507].w[0:8]"  0.35323146887989337 0.24865255136593914 
		0.11652166121258999 0.078348179009159399 0.055038678607165832 0.044687100119667429 
		0.038372405324889329 0.034583433534036881 0.030564521946658617;
	setAttr -s 9 ".wl[508].w[0:8]"  0.3194347761237738 0.24623498485192696 
		0.12527861580382857 0.085457832332631226 0.06041126416631655 0.049147915756915711 
		0.042248941881585317 0.038097313607749421 0.033688355475272387;
	setAttr -s 9 ".wl[509].w[0:8]"  0.26789702097112666 0.26044548796955674 
		0.14403058724157497 0.094354357203339831 0.064407694287961267 0.051480897752071958 
		0.043770697240004888 0.039199991402040744 0.034413265932322794;
	setAttr -s 9 ".wl[510].w[0:8]"  0.30463904859199797 0.28937652212301812 
		0.12917757161082036 0.080997631312733576 0.054359157574070373 0.043234559690226666 
		0.036663889190264823 0.032795889847113714 0.028755730059754424;
	setAttr -s 9 ".wl[511].w[0:8]"  0.28454302904985912 0.2741262051880608 
		0.13770795746197009 0.088191369698134736 0.059656111168574895 0.047556947829623192 
		0.040377169340756885 0.036137651678780754 0.031703558584239656;
	setAttr -s 9 ".wl[512].w[0:8]"  0.24473405169706755 0.25064569992061903 
		0.16735712733031016 0.10285544418435774 0.066599058988681958 0.051961143382790932 
		0.043544986996544431 0.038663549268213949 0.0336389382314142;
	setAttr -s 9 ".wl[513].w[0:8]"  0.26756081531206416 0.27876388270205027 
		0.15914360212629794 0.091566637068440732 0.058013198415873497 0.045005971928120579 
		0.037610965600183531 0.033352771135020394 0.028982155711948759;
	setAttr -s 9 ".wl[514].w[0:8]"  0.25562011815843272 0.26370706961363527 
		0.16412018360996108 0.097537198201411934 0.062427030369407034 0.048558460887854371 
		0.040631546993324962 0.036052496718509575 0.03134589544746301;
	setAttr -s 9 ".wl[515].w[0:8]"  0.19473188176709796 0.23982765031670664 
		0.20231849511341787 0.11861769455721552 0.071874290207498817 0.054434578955793525 
		0.044839301169409596 0.039414820656164168 0.033941287256695971;
	setAttr -s 9 ".wl[516].w[0:8]"  0.1970564632459964 0.26340885927533086 
		0.20802708920947732 0.11086044554197858 0.065288053695403636 0.049126634417431841 
		0.040347406872427216 0.035420714483443416 0.030464333258510581;
	setAttr -s 9 ".wl[517].w[0:8]"  0.19620267305607772 0.25097606081694268 
		0.20549289004731608 0.1148864689690134 0.068569444326841839 0.051751929968610805 
		0.042561029776713555 0.037386456448104496 0.032173046590379485;
	setAttr -s 9 ".wl[518].w[0:8]"  0.14453448064937519 0.22924743081408558 
		0.22690536530230176 0.14139048175422972 0.079000491337316292 0.057644426829668118 
		0.046505399845094164 0.040397113126721951 0.034374810341207096;
	setAttr -s 9 ".wl[519].w[0:8]"  0.13963679581963875 0.24445806983236798 
		0.24121926236112415 0.13649399333259496 0.073467186093169809 0.053219019526186434 
		0.042805624224005252 0.037136391234555886 0.031563657576356791;
	setAttr -s 9 ".wl[520].w[0:8]"  0.14220655031287868 0.23681280880927069 
		0.2340692962223225 0.13908278190345566 0.07619314920748442 0.055380701200916357 0.044605894577678683 
		0.038720982384433077 0.032927835381559918;
	setAttr -s 9 ".wl[521].w[0:8]"  0.1100020581680492 0.20916688816279619 
		0.22421934475480224 0.17592976466779259 0.090405203830832573 0.062903399548854808 
		0.049465284750413265 0.04236156770870822 0.035546488407751028;
	setAttr -s 9 ".wl[522].w[0:8]"  0.10622955251958748 0.2155822240909453 
		0.23444247826010534 0.17648509254564493 0.086677191145817831 0.05985100636886196 
		0.046931548584128006 0.040146392124653034 0.033654514360256176;
	setAttr -s 9 ".wl[523].w[0:8]"  0.10806183689255117 0.2125178246310262 
		0.22944307882508003 0.17631370487833947 0.088471076258259715 0.061306995517782022 
		0.048135716344988817 0.041198083458995484 0.034551683192977162;
	setAttr -s 9 ".wl[524].w[0:8]"  0.086842603396851584 0.16316403674127788 
		0.22191955024281743 0.21344036987107853 0.10782100715166107 0.070549877466151711 
		0.053723922006755305 0.045218447364503832 0.037320185758902641;
	setAttr -s 9 ".wl[525].w[0:8]"  0.08503476094749704 0.16292608226565705 
		0.22697067439648289 0.21742937279133345 0.10599493230920891 0.068910910600095104 
		0.052366369719369046 0.044041483796549458 0.036325413173807032;
	setAttr -s 9 ".wl[526].w[0:8]"  0.085882532078981846 0.16306310320619613 
		0.22458568418633043 0.21555773672923079 0.10685514350852421 0.069677493843909324 
		0.052999487033300888 0.044590094621435004 0.0367887247920912;
	setAttr -s 9 ".wl[527].w[0:8]"  0.35907921165523382 0.2101591336786717 
		0.11643075961960421 0.083426154554395518 0.061089743937660208 0.050547139127987042 
		0.043915795524766876 0.0398589087443669 0.035493153157313766;
	setAttr -s 9 ".wl[528].w[0:8]"  0.071152240661367758 0.12396322941950567 
		0.21550264666804589 0.22309764462614254 0.13532928608197803 0.08190580353339777 0.059854228648326124 
		0.049305671868651473 0.039889248492584753;
	setAttr -s 9 ".wl[529].w[0:8]"  0.11666933208903904 0.19081604130008142 
		0.20072889516783923 0.17327455226132851 0.10054276322779632 0.071546310469944502 
		0.056717952507170995 0.048719577617345841 0.040984575359454184;
	setAttr -s 9 ".wl[530].w[0:8]"  0.10553315505474661 0.21045836090661274 
		0.23095857692481209 0.17950451752218269 0.088860579655332783 0.061285422349582182 
		0.047997542916412651 0.04103174348072651 0.034370101189591745;
	setAttr -s 9 ".wl[531].w[0:8]"  0.082978577906035064 0.15475647044958371 
		0.22291411342986592 0.21892080001753386 0.11139709271949085 0.071808924452825468 
		0.054280537987734835 0.045513287999862588 0.037430195037067765;
	setAttr -s 9 ".wl[532].w[0:8]"  0.101421842116987 0.1860939649154667 
		0.21479522993824796 0.19096974922733934 0.10064852679613848 0.068855495144149459 
		0.053580553121931843 0.04560253606704015 0.038032102672699082;
	setAttr -s 9 ".pm";
	setAttr ".pm[0]" -type "matrix" 2.2204460492503121e-16 -0.99999999999999978 0 -0
		 0.99999999999999978 2.2204460492503121e-16 -0 0 -0 -0 1 -0 0.019198723001285559 0.0086716352835426551 -0 1;
	setAttr ".pm[1]" -type "matrix" 0.020403914662519982 -0.999791818463446 0 -0 0.999791818463446 0.020403914662519982 -0 0
		 0 -0 1 -0 -0.34511466957685544 0.0016302844118265844 -0 1;
	setAttr ".pm[2]" -type "matrix" 2.2204460492503121e-16 -0.99999999999999978 0 -0
		 0.99999999999999978 2.2204460492503121e-16 -0 0 0 -0 1 -0 -0.76991922109788924 0.017343261042874942 -0 1;
	setAttr ".pm[3]" -type "matrix" -0.019227214231346924 0.99981514002984617 1.2244204109766144e-16 -0
		 0.99981514002984651 0.019227214231346924 2.3546546364939459e-18 -0 3.8518598887744691e-34 1.224646799147353e-16 -1 -0
		 -1.1249143628950689 -0.038979436227595365 -4.7736041808693066e-18 1;
	setAttr ".pm[4]" -type "matrix" 2.3973878437999458e-15 0.99999999999999956 1.2244204109766144e-16 -0
		 0.99999999999999978 -2.4043267377038531e-15 2.3546546364939459e-18 0 2.3546546364942395e-18 1.2244204109766144e-16 -1 -0
		 -1.5763804167157269 -0.0086716352835388578 -4.773604180869406e-18 1;
	setAttr ".pm[5]" -type "matrix" -0.028559805241030793 0.99959208556520374 1.2244204109766144e-16 -0
		 0.99959208556520396 0.028559805241030793 2.3546546364939463e-18 0 -1.1432267081847389e-18 1.2245934369950003e-16 -1 0
		 -1.9222132672946481 -0.063595613397897974 -5.5903515328754521e-18 1;
	setAttr ".pm[6]" -type "matrix" -1.5057399771478676e-15 0.99999999999999956 1.2244204109766144e-16 -0
		 0.99999999999999978 1.4988010832439603e-15 2.3546546364939456e-18 -0 2.3546546364937614e-18 1.2244204109766144e-16 -1 -0
		 -2.2267523486655958 -3.3357241088200516e-15 -5.2432327421092429e-18 1;
	setAttr ".pm[7]" -type "matrix" -0.027767036766766295 0.99961442149920599 1.2244204109766144e-16 -0
		 0.99961442149920621 0.027767036766766295 2.3546546364939456e-18 0 -1.0461059246673561e-18 1.2246021186088546e-16 -1 0
		 -2.4599373793388994 -0.068331518820629766 -5.7945372047133453e-18 1;
	setAttr ".pm[8]" -type "matrix" 0.99999999999999933 -1.023486850826315e-15 -1.2244204109766154e-16 -0
		 1.1275702593849234e-15 0.99999999999999956 1.2011002527824131e-16 -0 1.224420410976614e-16 -1.2011002527824151e-16 1 -0
		 0.0086716162351168826 -2.7730647715034853 -3.3413465019492789e-16 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1.1000000000000001 0 0 0 0 1 0 0 -0.020206390321254819 0 1;
	setAttr -s 9 ".ma";
	setAttr -s 9 ".dpf[0:8]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".lw";
	setAttr -s 9 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 20;
	setAttr ".ucm" yes;
	setAttr -s 9 ".ifcl";
	setAttr -s 9 ".ifcl";
createNode tweak -n "tweak1";
	rename -uid "78248918-004B-1032-85D7-5F98E8D3D92D";
createNode objectSet -n "skinCluster1Set";
	rename -uid "8485F17C-F947-74A2-5DA2-8C989FE170B7";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster1GroupId";
	rename -uid "9C7E47F8-F34C-F983-8EC5-85A49A360354";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster1GroupParts";
	rename -uid "D69C5AAD-444A-2DED-38A1-94A6B58FC0B2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet1";
	rename -uid "4911AF6A-C048-63DF-2CF3-989D34500854";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId19";
	rename -uid "0B70E18C-6746-9685-1E82-25A682640E2A";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts13";
	rename -uid "D52477DC-3947-9065-CCC5-07ABC462F4D5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose1";
	rename -uid "5E1847A9-BF48-893D-3911-4A923EA28CAE";
	setAttr -s 9 ".wm";
	setAttr -s 9 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.0086716352835426534
		 -0.019198723001285566 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.70710678118654746 0.70710678118654768 1
		 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.36420828189192672 8.0870484063117278e-17
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.010202488337503148 0.99994795326143004 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.42499813897285194 -5.7939764097625357e-16
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.010202488337503146 0.99994795326143004 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.35553665613259494 7.9025963830660989e-17
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.99995378393949952 0.009614051439256548 5.8869086609617677e-19 6.1229510039839609e-17 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.45100791279454105 8.1532003370909933e-16
		 9.9955764113697541e-32 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.0096140514392576357 0.99995378393949952 1
		 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.34686503037326349 -8.3155747036897284e-16
		 8.1674735200604606e-19 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.014281359087914761 0.99989801619095231 1
		 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.30363075694521119 -6.609296443471635e-16
		 -3.471187907662084e-19 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.014281359087912811 0.99989801619095242 1
		 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.2341338955019534 3.5265485967843292e-16
		 5.5130446260410389e-19 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.013884856873471383 0.99990360072839179 1
		 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.31229894309421469 -6.9562411386669964e-16
		 -3.2669777463827609e-19 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.69722054015685553 0.71685669305892841 4.3894812730098664e-17 4.2692445140144086e-17 1
		 1 1 yes;
	setAttr -s 9 ".m";
	setAttr -s 9 ".p";
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
	setAttr -s 8 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 10 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr -s 18 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 18 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "groupId10.id" "pCylinderShape1.iog.og[2].gid";
connectAttr ":initialShadingGroup.mwc" "pCylinderShape1.iog.og[2].gco";
connectAttr "groupParts6.og" "pCylinderShape1.i";
connectAttr "groupId11.id" "pCylinderShape1.ciog.cog[0].cgid";
connectAttr "groupId1.id" "pPyramidShape1.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "pPyramidShape1.iog.og[0].gco";
connectAttr "groupParts1.og" "pPyramidShape1.i";
connectAttr "groupId2.id" "pPyramidShape1.ciog.cog[0].cgid";
connectAttr "groupParts4.og" "|group|pasted__pPyramid1|transform1|pasted__pPyramidShape1.i"
		;
connectAttr "groupId7.id" "|group|pasted__pPyramid1|transform1|pasted__pPyramidShape1.iog.og[0].gid"
		;
connectAttr "lambert2SG.mwc" "|group|pasted__pPyramid1|transform1|pasted__pPyramidShape1.iog.og[0].gco"
		;
connectAttr "groupId8.id" "|group|pasted__pPyramid1|transform1|pasted__pPyramidShape1.ciog.cog[0].cgid"
		;
connectAttr "groupParts3.og" "|group1|pasted__pPyramid1|transform2|pasted__pPyramidShape1.i"
		;
connectAttr "groupId5.id" "|group1|pasted__pPyramid1|transform2|pasted__pPyramidShape1.iog.og[0].gid"
		;
connectAttr "lambert2SG.mwc" "|group1|pasted__pPyramid1|transform2|pasted__pPyramidShape1.iog.og[0].gco"
		;
connectAttr "groupId6.id" "|group1|pasted__pPyramid1|transform2|pasted__pPyramidShape1.ciog.cog[0].cgid"
		;
connectAttr "groupParts2.og" "|group3|pasted__pPyramid1|transform3|pasted__pPyramidShape1.i"
		;
connectAttr "groupId3.id" "|group3|pasted__pPyramid1|transform3|pasted__pPyramidShape1.iog.og[0].gid"
		;
connectAttr "lambert2SG.mwc" "|group3|pasted__pPyramid1|transform3|pasted__pPyramidShape1.iog.og[0].gco"
		;
connectAttr "groupId4.id" "|group3|pasted__pPyramid1|transform3|pasted__pPyramidShape1.ciog.cog[0].cgid"
		;
connectAttr "groupParts5.og" "pPyramid2Shape.i";
connectAttr "groupId9.id" "pPyramid2Shape.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "pPyramid2Shape.iog.og[0].gco";
connectAttr "pasted__groupId12.id" "pasted__group4_pasted__pPyramid4Shape.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "pasted__group4_pasted__pPyramid4Shape.iog.og[0].gco"
		;
connectAttr "pasted__pasted__groupId12.id" "|group4|pasted__group|pasted__pasted__group4_pasted__pPyramid4|pasted__transform10|pasted__pasted__group4_pasted__pPyramid4Shape.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group4|pasted__group|pasted__pasted__group4_pasted__pPyramid4|pasted__transform10|pasted__pasted__group4_pasted__pPyramid4Shape.iog.og[0].gco"
		;
connectAttr "pasted__pasted__groupId13.id" "|group4|pasted__group5|pasted__pasted__group4_pasted__pPyramid4|pasted__transform14|pasted__pasted__group4_pasted__pPyramid4Shape.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group4|pasted__group5|pasted__pasted__group4_pasted__pPyramid4|pasted__transform14|pasted__pasted__group4_pasted__pPyramid4Shape.iog.og[0].gco"
		;
connectAttr "pasted__pasted__pasted__groupId13.id" "|group4|pasted__group6|pasted__pasted__group5|pasted__pasted__pasted__group4_pasted__pPyramid4|pasted__transform9|pasted__pasted__pasted__group4_pasted__pPyramid4Shape.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group4|pasted__group6|pasted__pasted__group5|pasted__pasted__pasted__group4_pasted__pPyramid4|pasted__transform9|pasted__pasted__pasted__group4_pasted__pPyramid4Shape.iog.og[0].gco"
		;
connectAttr "pasted__pasted__pasted__groupId14.id" "|group4|pasted__group7|pasted__pasted__group5|pasted__pasted__pasted__group4_pasted__pPyramid4|pasted__transform7|pasted__pasted__pasted__group4_pasted__pPyramid4Shape.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group4|pasted__group7|pasted__pasted__group5|pasted__pasted__pasted__group4_pasted__pPyramid4|pasted__transform7|pasted__pasted__pasted__group4_pasted__pPyramid4Shape.iog.og[0].gco"
		;
connectAttr "pasted__groupParts1.og" "pasted__group_pasted__group4_pasted__pPyramid4Shape.i"
		;
connectAttr "pasted__groupId15.id" "pasted__group_pasted__group4_pasted__pPyramid4Shape.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "pasted__group_pasted__group4_pasted__pPyramid4Shape.iog.og[0].gco"
		;
connectAttr "pasted__pasted__groupId14.id" "|group4|pasted__group8|pasted__pasted__group4_pasted__pPyramid4|pasted__pasted__transform8|pasted__pasted__group4_pasted__pPyramid4Shape.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group4|pasted__group8|pasted__pasted__group4_pasted__pPyramid4|pasted__pasted__transform8|pasted__pasted__group4_pasted__pPyramid4Shape.iog.og[0].gco"
		;
connectAttr "pasted__pasted__pasted__groupId12.id" "|group4|pasted__group8|pasted__pasted__group|pasted__pasted__pasted__group4_pasted__pPyramid4|pasted__pasted__transform10|pasted__pasted__pasted__group4_pasted__pPyramid4Shape.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group4|pasted__group8|pasted__pasted__group|pasted__pasted__pasted__group4_pasted__pPyramid4|pasted__pasted__transform10|pasted__pasted__pasted__group4_pasted__pPyramid4Shape.iog.og[0].gco"
		;
connectAttr "pasted__pasted__pasted__pasted__groupId13.id" "|group4|pasted__group8|pasted__pasted__group6|pasted__pasted__pasted__group5|pasted__pasted__pasted__pasted__group4_pasted__pPyramid4|pasted__pasted__transform9|pasted__pasted__pasted__pasted__group4_pasted__pPyramid4Shape.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group4|pasted__group8|pasted__pasted__group6|pasted__pasted__pasted__group5|pasted__pasted__pasted__pasted__group4_pasted__pPyramid4|pasted__pasted__transform9|pasted__pasted__pasted__pasted__group4_pasted__pPyramid4Shape.iog.og[0].gco"
		;
connectAttr "pasted__pasted__pasted__pasted__groupId14.id" "|group4|pasted__group8|pasted__pasted__group7|pasted__pasted__pasted__group5|pasted__pasted__pasted__pasted__group4_pasted__pPyramid4|pasted__pasted__transform7|pasted__pasted__pasted__pasted__group4_pasted__pPyramid4Shape.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group4|pasted__group8|pasted__pasted__group7|pasted__pasted__pasted__group5|pasted__pasted__pasted__pasted__group4_pasted__pPyramid4|pasted__pasted__transform7|pasted__pasted__pasted__pasted__group4_pasted__pPyramid4Shape.iog.og[0].gco"
		;
connectAttr "pasted__pasted__groupParts1.og" "pasted__pasted__group_pasted__group4_pasted__pPyramid4Shape.i"
		;
connectAttr "pasted__pasted__groupId15.id" "pasted__pasted__group_pasted__group4_pasted__pPyramid4Shape.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "pasted__pasted__group_pasted__group4_pasted__pPyramid4Shape.iog.og[0].gco"
		;
connectAttr "pasted__pasted__pasted__groupId15.id" "|group4|pasted__group9|pasted__pasted__group8|pasted__pasted__pasted__group4_pasted__pPyramid4|pasted__pasted__pasted__transform8|pasted__pasted__pasted__group4_pasted__pPyramid4Shape.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group4|pasted__group9|pasted__pasted__group8|pasted__pasted__pasted__group4_pasted__pPyramid4|pasted__pasted__pasted__transform8|pasted__pasted__pasted__group4_pasted__pPyramid4Shape.iog.og[0].gco"
		;
connectAttr "pasted__pasted__pasted__pasted__groupId12.id" "|group4|pasted__group9|pasted__pasted__group8|pasted__pasted__pasted__group|pasted__pasted__pasted__pasted__group4_pasted__pPyramid4|pasted__pasted__pasted__transform10|pasted__pasted__pasted__pasted__group4_pasted__pPyramid4Shape.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group4|pasted__group9|pasted__pasted__group8|pasted__pasted__pasted__group|pasted__pasted__pasted__pasted__group4_pasted__pPyramid4|pasted__pasted__pasted__transform10|pasted__pasted__pasted__pasted__group4_pasted__pPyramid4Shape.iog.og[0].gco"
		;
connectAttr "pasted__pasted__pasted__pasted__pasted__groupId13.id" "|group4|pasted__group9|pasted__pasted__group8|pasted__pasted__pasted__group6|pasted__pasted__pasted__pasted__group5|pasted__pasted__pasted__pasted__pasted__group4_pasted__pPyramid4|pasted__pasted__pasted__transform9|pasted__pasted__pasted__pasted__pasted__group4_pasted__pPyramid4Shape.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group4|pasted__group9|pasted__pasted__group8|pasted__pasted__pasted__group6|pasted__pasted__pasted__pasted__group5|pasted__pasted__pasted__pasted__pasted__group4_pasted__pPyramid4|pasted__pasted__pasted__transform9|pasted__pasted__pasted__pasted__pasted__group4_pasted__pPyramid4Shape.iog.og[0].gco"
		;
connectAttr "pasted__pasted__pasted__pasted__pasted__groupId14.id" "|group4|pasted__group9|pasted__pasted__group8|pasted__pasted__pasted__group7|pasted__pasted__pasted__pasted__group5|pasted__pasted__pasted__pasted__pasted__group4_pasted__pPyramid4|pasted__pasted__pasted__transform7|pasted__pasted__pasted__pasted__pasted__group4_pasted__pPyramid4Shape.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group4|pasted__group9|pasted__pasted__group8|pasted__pasted__pasted__group7|pasted__pasted__pasted__pasted__group5|pasted__pasted__pasted__pasted__pasted__group4_pasted__pPyramid4|pasted__pasted__pasted__transform7|pasted__pasted__pasted__pasted__pasted__group4_pasted__pPyramid4Shape.iog.og[0].gco"
		;
connectAttr "pasted__pasted__pasted__groupParts1.og" "pasted__pasted__pasted__group_pasted__group4_pasted__pPyramid4Shape.i"
		;
connectAttr "pasted__pasted__pasted__groupId16.id" "pasted__pasted__pasted__group_pasted__group4_pasted__pPyramid4Shape.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "pasted__pasted__pasted__group_pasted__group4_pasted__pPyramid4Shape.iog.og[0].gco"
		;
connectAttr "skinCluster1.og[0]" "pasted__group5_pasted__group4_pasted__pPyramid4Shape.i"
		;
connectAttr "groupId12.id" "pasted__group5_pasted__group4_pasted__pPyramid4Shape.iog.og[1].gid"
		;
connectAttr "lambert3SG.mwc" "pasted__group5_pasted__group4_pasted__pPyramid4Shape.iog.og[1].gco"
		;
connectAttr "groupId14.id" "pasted__group5_pasted__group4_pasted__pPyramid4Shape.iog.og[2].gid"
		;
connectAttr "lambert4SG.mwc" "pasted__group5_pasted__group4_pasted__pPyramid4Shape.iog.og[2].gco"
		;
connectAttr "groupId15.id" "pasted__group5_pasted__group4_pasted__pPyramid4Shape.iog.og[3].gid"
		;
connectAttr "lambert5SG.mwc" "pasted__group5_pasted__group4_pasted__pPyramid4Shape.iog.og[3].gco"
		;
connectAttr "groupId16.id" "pasted__group5_pasted__group4_pasted__pPyramid4Shape.iog.og[4].gid"
		;
connectAttr "lambert6SG.mwc" "pasted__group5_pasted__group4_pasted__pPyramid4Shape.iog.og[4].gco"
		;
connectAttr "groupId17.id" "pasted__group5_pasted__group4_pasted__pPyramid4Shape.iog.og[5].gid"
		;
connectAttr "lambert7SG.mwc" "pasted__group5_pasted__group4_pasted__pPyramid4Shape.iog.og[5].gco"
		;
connectAttr "skinCluster1GroupId.id" "pasted__group5_pasted__group4_pasted__pPyramid4Shape.iog.og[6].gid"
		;
connectAttr "skinCluster1Set.mwc" "pasted__group5_pasted__group4_pasted__pPyramid4Shape.iog.og[6].gco"
		;
connectAttr "groupId19.id" "pasted__group5_pasted__group4_pasted__pPyramid4Shape.iog.og[7].gid"
		;
connectAttr "tweakSet1.mwc" "pasted__group5_pasted__group4_pasted__pPyramid4Shape.iog.og[7].gco"
		;
connectAttr "groupId13.id" "pasted__group5_pasted__group4_pasted__pPyramid4Shape.ciog.cog[0].cgid"
		;
connectAttr "tweak1.vl[0].vt[0]" "pasted__group5_pasted__group4_pasted__pPyramid4Shape.twl"
		;
connectAttr "groupParts11.og" "pasted__group5_pasted__group4_pasted__pPyramid4ShapeOrig.i"
		;
connectAttr "joint1.s" "joint2.is";
connectAttr "joint2.s" "joint3.is";
connectAttr "joint3.s" "joint4.is";
connectAttr "joint4.s" "joint5.is";
connectAttr "joint5.s" "joint6.is";
connectAttr "joint6.s" "joint7.is";
connectAttr "joint7.s" "joint8.is";
connectAttr "joint8.s" "joint9.is";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert4SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert5SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert6SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert7SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert5SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert6SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert7SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyTweak1.out" "polyExtrudeFace1.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace1.mp";
connectAttr "polyCylinder1.out" "polyTweak1.ip";
connectAttr "polyTweak2.out" "polyMergeVert1.ip";
connectAttr "pCylinderShape1.wm" "polyMergeVert1.mp";
connectAttr "polyExtrudeFace1.out" "polyTweak2.ip";
connectAttr "polyTweak3.out" "polyExtrudeFace2.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace2.mp";
connectAttr "polyMergeVert1.out" "polyTweak3.ip";
connectAttr "polyTweak4.out" "polyMergeVert2.ip";
connectAttr "pCylinderShape1.wm" "polyMergeVert2.mp";
connectAttr "polyExtrudeFace2.out" "polyTweak4.ip";
connectAttr "polyTweak5.out" "polyMergeVert3.ip";
connectAttr "pCylinderShape1.wm" "polyMergeVert3.mp";
connectAttr "polyMergeVert2.out" "polyTweak5.ip";
connectAttr "polyTweak6.out" "polyMergeVert4.ip";
connectAttr "pCylinderShape1.wm" "polyMergeVert4.mp";
connectAttr "polyMergeVert3.out" "polyTweak6.ip";
connectAttr "polyTweak7.out" "polyMergeVert5.ip";
connectAttr "pCylinderShape1.wm" "polyMergeVert5.mp";
connectAttr "polyMergeVert4.out" "polyTweak7.ip";
connectAttr "lambert2.oc" "lambert2SG.ss";
connectAttr "pPyramidShape1.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "pPyramidShape1.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "|group3|pasted__pPyramid1|transform3|pasted__pPyramidShape1.iog.og[0]" "lambert2SG.dsm"
		 -na;
connectAttr "|group3|pasted__pPyramid1|transform3|pasted__pPyramidShape1.ciog.cog[0]" "lambert2SG.dsm"
		 -na;
connectAttr "|group1|pasted__pPyramid1|transform2|pasted__pPyramidShape1.iog.og[0]" "lambert2SG.dsm"
		 -na;
connectAttr "|group1|pasted__pPyramid1|transform2|pasted__pPyramidShape1.ciog.cog[0]" "lambert2SG.dsm"
		 -na;
connectAttr "|group|pasted__pPyramid1|transform1|pasted__pPyramidShape1.iog.og[0]" "lambert2SG.dsm"
		 -na;
connectAttr "|group|pasted__pPyramid1|transform1|pasted__pPyramidShape1.ciog.cog[0]" "lambert2SG.dsm"
		 -na;
connectAttr "pPyramid2Shape.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "groupId1.msg" "lambert2SG.gn" -na;
connectAttr "groupId2.msg" "lambert2SG.gn" -na;
connectAttr "groupId3.msg" "lambert2SG.gn" -na;
connectAttr "groupId4.msg" "lambert2SG.gn" -na;
connectAttr "groupId5.msg" "lambert2SG.gn" -na;
connectAttr "groupId6.msg" "lambert2SG.gn" -na;
connectAttr "groupId7.msg" "lambert2SG.gn" -na;
connectAttr "groupId8.msg" "lambert2SG.gn" -na;
connectAttr "groupId9.msg" "lambert2SG.gn" -na;
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "lambert2.msg" "materialInfo1.m";
connectAttr "pPyramidShape1.o" "polyUnite1.ip[0]";
connectAttr "|group3|pasted__pPyramid1|transform3|pasted__pPyramidShape1.o" "polyUnite1.ip[1]"
		;
connectAttr "|group1|pasted__pPyramid1|transform2|pasted__pPyramidShape1.o" "polyUnite1.ip[2]"
		;
connectAttr "|group|pasted__pPyramid1|transform1|pasted__pPyramidShape1.o" "polyUnite1.ip[3]"
		;
connectAttr "pPyramidShape1.wm" "polyUnite1.im[0]";
connectAttr "|group3|pasted__pPyramid1|transform3|pasted__pPyramidShape1.wm" "polyUnite1.im[1]"
		;
connectAttr "|group1|pasted__pPyramid1|transform2|pasted__pPyramidShape1.wm" "polyUnite1.im[2]"
		;
connectAttr "|group|pasted__pPyramid1|transform1|pasted__pPyramidShape1.wm" "polyUnite1.im[3]"
		;
connectAttr "polyPyramid1.out" "groupParts1.ig";
connectAttr "groupId1.id" "groupParts1.gi";
connectAttr "pasted__polyPyramid4.out" "groupParts2.ig";
connectAttr "groupId3.id" "groupParts2.gi";
connectAttr "pasted__polyPyramid2.out" "groupParts3.ig";
connectAttr "groupId5.id" "groupParts3.gi";
connectAttr "pasted__polyPyramid1.out" "groupParts4.ig";
connectAttr "groupId7.id" "groupParts4.gi";
connectAttr "polyUnite1.out" "groupParts5.ig";
connectAttr "groupId9.id" "groupParts5.gi";
connectAttr "polyMergeVert5.out" "groupParts6.ig";
connectAttr "groupId10.id" "groupParts6.gi";
connectAttr "|group4|pasted__group5|pasted__pasted__group4_pasted__pPyramid4|pasted__transform14|pasted__pasted__group4_pasted__pPyramid4Shape.o" "pasted__polyUnite2.ip[0]"
		;
connectAttr "pasted__group_pasted__group4_pasted__pPyramid4Shape.o" "pasted__polyUnite2.ip[1]"
		;
connectAttr "pasted__pasted__group_pasted__group4_pasted__pPyramid4Shape.o" "pasted__polyUnite2.ip[2]"
		;
connectAttr "pasted__pasted__pasted__group_pasted__group4_pasted__pPyramid4Shape.o" "pasted__polyUnite2.ip[3]"
		;
connectAttr "|group4|pasted__group5|pasted__pasted__group4_pasted__pPyramid4|pasted__transform14|pasted__pasted__group4_pasted__pPyramid4Shape.wm" "pasted__polyUnite2.im[0]"
		;
connectAttr "pasted__group_pasted__group4_pasted__pPyramid4Shape.wm" "pasted__polyUnite2.im[1]"
		;
connectAttr "pasted__pasted__group_pasted__group4_pasted__pPyramid4Shape.wm" "pasted__polyUnite2.im[2]"
		;
connectAttr "pasted__pasted__pasted__group_pasted__group4_pasted__pPyramid4Shape.wm" "pasted__polyUnite2.im[3]"
		;
connectAttr "pasted__polyUnite1.out" "pasted__groupParts1.ig";
connectAttr "pasted__groupId15.id" "pasted__groupParts1.gi";
connectAttr "|group4|pasted__group|pasted__pasted__group4_pasted__pPyramid4|pasted__transform10|pasted__pasted__group4_pasted__pPyramid4Shape.o" "pasted__polyUnite1.ip[0]"
		;
connectAttr "|group4|pasted__group6|pasted__pasted__group5|pasted__pasted__pasted__group4_pasted__pPyramid4|pasted__transform9|pasted__pasted__pasted__group4_pasted__pPyramid4Shape.o" "pasted__polyUnite1.ip[1]"
		;
connectAttr "pasted__group4_pasted__pPyramid4Shape.o" "pasted__polyUnite1.ip[2]"
		;
connectAttr "|group4|pasted__group7|pasted__pasted__group5|pasted__pasted__pasted__group4_pasted__pPyramid4|pasted__transform7|pasted__pasted__pasted__group4_pasted__pPyramid4Shape.o" "pasted__polyUnite1.ip[3]"
		;
connectAttr "|group4|pasted__group|pasted__pasted__group4_pasted__pPyramid4|pasted__transform10|pasted__pasted__group4_pasted__pPyramid4Shape.wm" "pasted__polyUnite1.im[0]"
		;
connectAttr "|group4|pasted__group6|pasted__pasted__group5|pasted__pasted__pasted__group4_pasted__pPyramid4|pasted__transform9|pasted__pasted__pasted__group4_pasted__pPyramid4Shape.wm" "pasted__polyUnite1.im[1]"
		;
connectAttr "pasted__group4_pasted__pPyramid4Shape.wm" "pasted__polyUnite1.im[2]"
		;
connectAttr "|group4|pasted__group7|pasted__pasted__group5|pasted__pasted__pasted__group4_pasted__pPyramid4|pasted__transform7|pasted__pasted__pasted__group4_pasted__pPyramid4Shape.wm" "pasted__polyUnite1.im[3]"
		;
connectAttr "pasted__pasted__polyUnite1.out" "pasted__pasted__groupParts1.ig";
connectAttr "pasted__pasted__groupId15.id" "pasted__pasted__groupParts1.gi";
connectAttr "|group4|pasted__group8|pasted__pasted__group|pasted__pasted__pasted__group4_pasted__pPyramid4|pasted__pasted__transform10|pasted__pasted__pasted__group4_pasted__pPyramid4Shape.o" "pasted__pasted__polyUnite1.ip[0]"
		;
connectAttr "|group4|pasted__group8|pasted__pasted__group6|pasted__pasted__pasted__group5|pasted__pasted__pasted__pasted__group4_pasted__pPyramid4|pasted__pasted__transform9|pasted__pasted__pasted__pasted__group4_pasted__pPyramid4Shape.o" "pasted__pasted__polyUnite1.ip[1]"
		;
connectAttr "|group4|pasted__group8|pasted__pasted__group4_pasted__pPyramid4|pasted__pasted__transform8|pasted__pasted__group4_pasted__pPyramid4Shape.o" "pasted__pasted__polyUnite1.ip[2]"
		;
connectAttr "|group4|pasted__group8|pasted__pasted__group7|pasted__pasted__pasted__group5|pasted__pasted__pasted__pasted__group4_pasted__pPyramid4|pasted__pasted__transform7|pasted__pasted__pasted__pasted__group4_pasted__pPyramid4Shape.o" "pasted__pasted__polyUnite1.ip[3]"
		;
connectAttr "|group4|pasted__group8|pasted__pasted__group|pasted__pasted__pasted__group4_pasted__pPyramid4|pasted__pasted__transform10|pasted__pasted__pasted__group4_pasted__pPyramid4Shape.wm" "pasted__pasted__polyUnite1.im[0]"
		;
connectAttr "|group4|pasted__group8|pasted__pasted__group6|pasted__pasted__pasted__group5|pasted__pasted__pasted__pasted__group4_pasted__pPyramid4|pasted__pasted__transform9|pasted__pasted__pasted__pasted__group4_pasted__pPyramid4Shape.wm" "pasted__pasted__polyUnite1.im[1]"
		;
connectAttr "|group4|pasted__group8|pasted__pasted__group4_pasted__pPyramid4|pasted__pasted__transform8|pasted__pasted__group4_pasted__pPyramid4Shape.wm" "pasted__pasted__polyUnite1.im[2]"
		;
connectAttr "|group4|pasted__group8|pasted__pasted__group7|pasted__pasted__pasted__group5|pasted__pasted__pasted__pasted__group4_pasted__pPyramid4|pasted__pasted__transform7|pasted__pasted__pasted__pasted__group4_pasted__pPyramid4Shape.wm" "pasted__pasted__polyUnite1.im[3]"
		;
connectAttr "pasted__pasted__pasted__polyUnite1.out" "pasted__pasted__pasted__groupParts1.ig"
		;
connectAttr "pasted__pasted__pasted__groupId16.id" "pasted__pasted__pasted__groupParts1.gi"
		;
connectAttr "|group4|pasted__group9|pasted__pasted__group8|pasted__pasted__pasted__group|pasted__pasted__pasted__pasted__group4_pasted__pPyramid4|pasted__pasted__pasted__transform10|pasted__pasted__pasted__pasted__group4_pasted__pPyramid4Shape.o" "pasted__pasted__pasted__polyUnite1.ip[0]"
		;
connectAttr "|group4|pasted__group9|pasted__pasted__group8|pasted__pasted__pasted__group6|pasted__pasted__pasted__pasted__group5|pasted__pasted__pasted__pasted__pasted__group4_pasted__pPyramid4|pasted__pasted__pasted__transform9|pasted__pasted__pasted__pasted__pasted__group4_pasted__pPyramid4Shape.o" "pasted__pasted__pasted__polyUnite1.ip[1]"
		;
connectAttr "|group4|pasted__group9|pasted__pasted__group8|pasted__pasted__pasted__group4_pasted__pPyramid4|pasted__pasted__pasted__transform8|pasted__pasted__pasted__group4_pasted__pPyramid4Shape.o" "pasted__pasted__pasted__polyUnite1.ip[2]"
		;
connectAttr "|group4|pasted__group9|pasted__pasted__group8|pasted__pasted__pasted__group7|pasted__pasted__pasted__pasted__group5|pasted__pasted__pasted__pasted__pasted__group4_pasted__pPyramid4|pasted__pasted__pasted__transform7|pasted__pasted__pasted__pasted__pasted__group4_pasted__pPyramid4Shape.o" "pasted__pasted__pasted__polyUnite1.ip[3]"
		;
connectAttr "|group4|pasted__group9|pasted__pasted__group8|pasted__pasted__pasted__group|pasted__pasted__pasted__pasted__group4_pasted__pPyramid4|pasted__pasted__pasted__transform10|pasted__pasted__pasted__pasted__group4_pasted__pPyramid4Shape.wm" "pasted__pasted__pasted__polyUnite1.im[0]"
		;
connectAttr "|group4|pasted__group9|pasted__pasted__group8|pasted__pasted__pasted__group6|pasted__pasted__pasted__pasted__group5|pasted__pasted__pasted__pasted__pasted__group4_pasted__pPyramid4|pasted__pasted__pasted__transform9|pasted__pasted__pasted__pasted__pasted__group4_pasted__pPyramid4Shape.wm" "pasted__pasted__pasted__polyUnite1.im[1]"
		;
connectAttr "|group4|pasted__group9|pasted__pasted__group8|pasted__pasted__pasted__group4_pasted__pPyramid4|pasted__pasted__pasted__transform8|pasted__pasted__pasted__group4_pasted__pPyramid4Shape.wm" "pasted__pasted__pasted__polyUnite1.im[2]"
		;
connectAttr "|group4|pasted__group9|pasted__pasted__group8|pasted__pasted__pasted__group7|pasted__pasted__pasted__pasted__group5|pasted__pasted__pasted__pasted__pasted__group4_pasted__pPyramid4|pasted__pasted__pasted__transform7|pasted__pasted__pasted__pasted__pasted__group4_pasted__pPyramid4Shape.wm" "pasted__pasted__pasted__polyUnite1.im[3]"
		;
connectAttr "lambert3.oc" "lambert3SG.ss";
connectAttr "pasted__group5_pasted__group4_pasted__pPyramid4Shape.iog.og[1]" "lambert3SG.dsm"
		 -na;
connectAttr "pasted__group5_pasted__group4_pasted__pPyramid4Shape.ciog.cog[0]" "lambert3SG.dsm"
		 -na;
connectAttr "groupId12.msg" "lambert3SG.gn" -na;
connectAttr "groupId13.msg" "lambert3SG.gn" -na;
connectAttr "lambert3SG.msg" "materialInfo2.sg";
connectAttr "lambert3.msg" "materialInfo2.m";
connectAttr "lambert4.oc" "lambert4SG.ss";
connectAttr "groupId14.msg" "lambert4SG.gn" -na;
connectAttr "pasted__group5_pasted__group4_pasted__pPyramid4Shape.iog.og[2]" "lambert4SG.dsm"
		 -na;
connectAttr "lambert4SG.msg" "materialInfo3.sg";
connectAttr "lambert4.msg" "materialInfo3.m";
connectAttr "pasted__polyUnite2.out" "groupParts7.ig";
connectAttr "groupId12.id" "groupParts7.gi";
connectAttr "groupParts7.og" "groupParts8.ig";
connectAttr "groupId14.id" "groupParts8.gi";
connectAttr "lambert5.oc" "lambert5SG.ss";
connectAttr "groupId15.msg" "lambert5SG.gn" -na;
connectAttr "pasted__group5_pasted__group4_pasted__pPyramid4Shape.iog.og[3]" "lambert5SG.dsm"
		 -na;
connectAttr "lambert5SG.msg" "materialInfo4.sg";
connectAttr "lambert5.msg" "materialInfo4.m";
connectAttr "groupParts8.og" "groupParts9.ig";
connectAttr "groupId15.id" "groupParts9.gi";
connectAttr "lambert6.oc" "lambert6SG.ss";
connectAttr "groupId16.msg" "lambert6SG.gn" -na;
connectAttr "pasted__group5_pasted__group4_pasted__pPyramid4Shape.iog.og[4]" "lambert6SG.dsm"
		 -na;
connectAttr "lambert6SG.msg" "materialInfo5.sg";
connectAttr "lambert6.msg" "materialInfo5.m";
connectAttr "groupParts9.og" "groupParts10.ig";
connectAttr "groupId16.id" "groupParts10.gi";
connectAttr "lambert7.oc" "lambert7SG.ss";
connectAttr "groupId17.msg" "lambert7SG.gn" -na;
connectAttr "pasted__group5_pasted__group4_pasted__pPyramid4Shape.iog.og[5]" "lambert7SG.dsm"
		 -na;
connectAttr "lambert7SG.msg" "materialInfo6.sg";
connectAttr "lambert7.msg" "materialInfo6.m";
connectAttr "groupParts10.og" "groupParts11.ig";
connectAttr "groupId17.id" "groupParts11.gi";
connectAttr "skinCluster1GroupParts.og" "skinCluster1.ip[0].ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1.ip[0].gi";
connectAttr "bindPose1.msg" "skinCluster1.bp";
connectAttr "joint1.wm" "skinCluster1.ma[0]";
connectAttr "joint2.wm" "skinCluster1.ma[1]";
connectAttr "joint3.wm" "skinCluster1.ma[2]";
connectAttr "joint4.wm" "skinCluster1.ma[3]";
connectAttr "joint5.wm" "skinCluster1.ma[4]";
connectAttr "joint6.wm" "skinCluster1.ma[5]";
connectAttr "joint7.wm" "skinCluster1.ma[6]";
connectAttr "joint8.wm" "skinCluster1.ma[7]";
connectAttr "joint9.wm" "skinCluster1.ma[8]";
connectAttr "joint1.liw" "skinCluster1.lw[0]";
connectAttr "joint2.liw" "skinCluster1.lw[1]";
connectAttr "joint3.liw" "skinCluster1.lw[2]";
connectAttr "joint4.liw" "skinCluster1.lw[3]";
connectAttr "joint5.liw" "skinCluster1.lw[4]";
connectAttr "joint6.liw" "skinCluster1.lw[5]";
connectAttr "joint7.liw" "skinCluster1.lw[6]";
connectAttr "joint8.liw" "skinCluster1.lw[7]";
connectAttr "joint9.liw" "skinCluster1.lw[8]";
connectAttr "joint1.obcc" "skinCluster1.ifcl[0]";
connectAttr "joint2.obcc" "skinCluster1.ifcl[1]";
connectAttr "joint3.obcc" "skinCluster1.ifcl[2]";
connectAttr "joint4.obcc" "skinCluster1.ifcl[3]";
connectAttr "joint5.obcc" "skinCluster1.ifcl[4]";
connectAttr "joint6.obcc" "skinCluster1.ifcl[5]";
connectAttr "joint7.obcc" "skinCluster1.ifcl[6]";
connectAttr "joint8.obcc" "skinCluster1.ifcl[7]";
connectAttr "joint9.obcc" "skinCluster1.ifcl[8]";
connectAttr "groupParts13.og" "tweak1.ip[0].ig";
connectAttr "groupId19.id" "tweak1.ip[0].gi";
connectAttr "skinCluster1GroupId.msg" "skinCluster1Set.gn" -na;
connectAttr "pasted__group5_pasted__group4_pasted__pPyramid4Shape.iog.og[6]" "skinCluster1Set.dsm"
		 -na;
connectAttr "skinCluster1.msg" "skinCluster1Set.ub[0]";
connectAttr "tweak1.og[0]" "skinCluster1GroupParts.ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1GroupParts.gi";
connectAttr "groupId19.msg" "tweakSet1.gn" -na;
connectAttr "pasted__group5_pasted__group4_pasted__pPyramid4Shape.iog.og[7]" "tweakSet1.dsm"
		 -na;
connectAttr "tweak1.msg" "tweakSet1.ub[0]";
connectAttr "pasted__group5_pasted__group4_pasted__pPyramid4ShapeOrig.w" "groupParts13.ig"
		;
connectAttr "groupId19.id" "groupParts13.gi";
connectAttr "joint1.msg" "bindPose1.m[0]";
connectAttr "joint2.msg" "bindPose1.m[1]";
connectAttr "joint3.msg" "bindPose1.m[2]";
connectAttr "joint4.msg" "bindPose1.m[3]";
connectAttr "joint5.msg" "bindPose1.m[4]";
connectAttr "joint6.msg" "bindPose1.m[5]";
connectAttr "joint7.msg" "bindPose1.m[6]";
connectAttr "joint8.msg" "bindPose1.m[7]";
connectAttr "joint9.msg" "bindPose1.m[8]";
connectAttr "bindPose1.w" "bindPose1.p[0]";
connectAttr "bindPose1.m[0]" "bindPose1.p[1]";
connectAttr "bindPose1.m[1]" "bindPose1.p[2]";
connectAttr "bindPose1.m[2]" "bindPose1.p[3]";
connectAttr "bindPose1.m[3]" "bindPose1.p[4]";
connectAttr "bindPose1.m[4]" "bindPose1.p[5]";
connectAttr "bindPose1.m[5]" "bindPose1.p[6]";
connectAttr "bindPose1.m[6]" "bindPose1.p[7]";
connectAttr "bindPose1.m[7]" "bindPose1.p[8]";
connectAttr "joint1.bps" "bindPose1.wm[0]";
connectAttr "joint2.bps" "bindPose1.wm[1]";
connectAttr "joint3.bps" "bindPose1.wm[2]";
connectAttr "joint4.bps" "bindPose1.wm[3]";
connectAttr "joint5.bps" "bindPose1.wm[4]";
connectAttr "joint6.bps" "bindPose1.wm[5]";
connectAttr "joint7.bps" "bindPose1.wm[6]";
connectAttr "joint8.bps" "bindPose1.wm[7]";
connectAttr "joint9.bps" "bindPose1.wm[8]";
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert3SG.pa" ":renderPartition.st" -na;
connectAttr "lambert4SG.pa" ":renderPartition.st" -na;
connectAttr "lambert5SG.pa" ":renderPartition.st" -na;
connectAttr "lambert6SG.pa" ":renderPartition.st" -na;
connectAttr "lambert7SG.pa" ":renderPartition.st" -na;
connectAttr "lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert3.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert4.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert5.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert6.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert7.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pCylinderShape1.iog.og[2]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape1.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pasted__group4_pasted__pPyramid4Shape.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group4|pasted__group|pasted__pasted__group4_pasted__pPyramid4|pasted__transform10|pasted__pasted__group4_pasted__pPyramid4Shape.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group4|pasted__group5|pasted__pasted__group4_pasted__pPyramid4|pasted__transform14|pasted__pasted__group4_pasted__pPyramid4Shape.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group4|pasted__group6|pasted__pasted__group5|pasted__pasted__pasted__group4_pasted__pPyramid4|pasted__transform9|pasted__pasted__pasted__group4_pasted__pPyramid4Shape.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group4|pasted__group7|pasted__pasted__group5|pasted__pasted__pasted__group4_pasted__pPyramid4|pasted__transform7|pasted__pasted__pasted__group4_pasted__pPyramid4Shape.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "pasted__group_pasted__group4_pasted__pPyramid4Shape.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group4|pasted__group8|pasted__pasted__group4_pasted__pPyramid4|pasted__pasted__transform8|pasted__pasted__group4_pasted__pPyramid4Shape.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group4|pasted__group8|pasted__pasted__group|pasted__pasted__pasted__group4_pasted__pPyramid4|pasted__pasted__transform10|pasted__pasted__pasted__group4_pasted__pPyramid4Shape.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group4|pasted__group8|pasted__pasted__group6|pasted__pasted__pasted__group5|pasted__pasted__pasted__pasted__group4_pasted__pPyramid4|pasted__pasted__transform9|pasted__pasted__pasted__pasted__group4_pasted__pPyramid4Shape.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group4|pasted__group8|pasted__pasted__group7|pasted__pasted__pasted__group5|pasted__pasted__pasted__pasted__group4_pasted__pPyramid4|pasted__pasted__transform7|pasted__pasted__pasted__pasted__group4_pasted__pPyramid4Shape.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "pasted__pasted__group_pasted__group4_pasted__pPyramid4Shape.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group4|pasted__group9|pasted__pasted__group8|pasted__pasted__pasted__group4_pasted__pPyramid4|pasted__pasted__pasted__transform8|pasted__pasted__pasted__group4_pasted__pPyramid4Shape.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group4|pasted__group9|pasted__pasted__group8|pasted__pasted__pasted__group|pasted__pasted__pasted__pasted__group4_pasted__pPyramid4|pasted__pasted__pasted__transform10|pasted__pasted__pasted__pasted__group4_pasted__pPyramid4Shape.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group4|pasted__group9|pasted__pasted__group8|pasted__pasted__pasted__group6|pasted__pasted__pasted__pasted__group5|pasted__pasted__pasted__pasted__pasted__group4_pasted__pPyramid4|pasted__pasted__pasted__transform9|pasted__pasted__pasted__pasted__pasted__group4_pasted__pPyramid4Shape.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group4|pasted__group9|pasted__pasted__group8|pasted__pasted__pasted__group7|pasted__pasted__pasted__pasted__group5|pasted__pasted__pasted__pasted__pasted__group4_pasted__pPyramid4|pasted__pasted__pasted__transform7|pasted__pasted__pasted__pasted__pasted__group4_pasted__pPyramid4Shape.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "pasted__pasted__pasted__group_pasted__group4_pasted__pPyramid4Shape.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "groupId10.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId11.msg" ":initialShadingGroup.gn" -na;
connectAttr "pasted__groupId12.msg" ":initialShadingGroup.gn" -na;
connectAttr "pasted__pasted__groupId12.msg" ":initialShadingGroup.gn" -na;
connectAttr "pasted__pasted__groupId13.msg" ":initialShadingGroup.gn" -na;
connectAttr "pasted__pasted__pasted__groupId13.msg" ":initialShadingGroup.gn" -na
		;
connectAttr "pasted__pasted__pasted__groupId14.msg" ":initialShadingGroup.gn" -na
		;
connectAttr "pasted__groupId15.msg" ":initialShadingGroup.gn" -na;
connectAttr "pasted__pasted__groupId14.msg" ":initialShadingGroup.gn" -na;
connectAttr "pasted__pasted__pasted__groupId12.msg" ":initialShadingGroup.gn" -na
		;
connectAttr "pasted__pasted__pasted__pasted__groupId13.msg" ":initialShadingGroup.gn"
		 -na;
connectAttr "pasted__pasted__pasted__pasted__groupId14.msg" ":initialShadingGroup.gn"
		 -na;
connectAttr "pasted__pasted__groupId15.msg" ":initialShadingGroup.gn" -na;
connectAttr "pasted__pasted__pasted__groupId15.msg" ":initialShadingGroup.gn" -na
		;
connectAttr "pasted__pasted__pasted__pasted__groupId12.msg" ":initialShadingGroup.gn"
		 -na;
connectAttr "pasted__pasted__pasted__pasted__pasted__groupId13.msg" ":initialShadingGroup.gn"
		 -na;
connectAttr "pasted__pasted__pasted__pasted__pasted__groupId14.msg" ":initialShadingGroup.gn"
		 -na;
connectAttr "pasted__pasted__pasted__groupId16.msg" ":initialShadingGroup.gn" -na
		;
// End of tree4_adult.ma
