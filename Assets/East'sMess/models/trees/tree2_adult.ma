//Maya ASCII 2016 scene
//Name: tree2_adult.ma
//Last modified: Tue, Nov 07, 2017 01:07:26 PM
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
createNode transform -n "polySurface1";
	rename -uid "A6E4E332-594D-F251-3D0D-3F959205BEF6";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 6.5326788425445557 8.3897259570658207 11.829299211502075 ;
	setAttr ".sp" -type "double3" 6.5326788425445557 8.3897259570658207 11.829299211502075 ;
createNode mesh -n "polySurfaceShape1" -p "polySurface1";
	rename -uid "6D975E96-5948-2223-1976-64B1CFFFD3A8";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[18:47]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 68 ".uvst[0].uvsp[0:67]" -type "float2" 0.375 0.3125 0.41666666
		 0.3125 0.41666666 0.68843985 0.375 0.68843985 0.45833331 0.3125 0.45833331 0.68843985
		 0.49999997 0.3125 0.49999997 0.68843985 0.54166663 0.3125 0.54166663 0.68843985 0.58333331
		 0.3125 0.58333331 0.68843985 0.625 0.3125 0.625 0.68843985 0.42187503 0.020933509
		 0.57812506 0.020933539 0.5 0.15000001 0.34375 0.15624997 0.421875 0.29156646 0.578125
		 0.29156649 0.65625 0.15625 0.578125 0.97906649 0.421875 0.97906649 0.5 0.83749998
		 0.34375 0.84375 0.42187503 0.70843351 0.57812506 0.70843351 0.65625 0.84375 0 0.2
		 0.16666667 0.2 0.16666667 0.40000001 0 0.40000001 0.33333334 0.2 0.33333334 0.40000001
		 0.5 0.2 0.5 0.40000001 0.66666669 0.2 0.66666669 0.40000001 0.83333337 0.2 0.83333337
		 0.40000001 1 0.2 1 0.40000001 0.16666667 0.60000002 0 0.60000002 0.33333334 0.60000002
		 0.5 0.60000002 0.66666669 0.60000002 0.83333337 0.60000002 1 0.60000002 0.16666667
		 0.80000001 0 0.80000001 0.33333334 0.80000001 0.5 0.80000001 0.66666669 0.80000001
		 0.83333337 0.80000001 1 0.80000001 0.083333336 0 0.25 0 0.41666669 0 0.58333337 0
		 0.75 0 0.91666669 0 0.083333336 1 0.25 1 0.41666669 1 0.58333337 1 0.75 1 0.91666669
		 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 40 ".vt[0:39]"  0.092766732 -0.048919678 -0.16067651 -0.092766732 -0.048919678 -0.16067651
		 -0.18553346 -0.048919678 -2.7646594e-08 -0.092766732 -0.048919678 0.16067651 0.092766732 -0.048919678 0.16067651
		 0.18553346 -0.048919678 0 0.092766739 13.29823494 -0.16067651 -0.092766739 13.29823494 -0.16067651
		 -0.18553348 13.29823494 -2.7646589e-08 -0.092766739 13.29823494 0.16067651 0.092766739 13.29823494 0.16067651
		 0.18553348 13.29823494 0 0 -0.048919678 0 0 13.29823494 0 0.82448709 13.53107548 -1.42805266
		 -0.82448643 13.53107548 -1.42805302 -1.64897335 13.53107548 -2.4571617e-07 -0.82448685 13.53107548 1.42805278
		 0.82448661 13.53107548 1.42805278 1.64897335 13.53107548 0 1.33404815 15.22784519 -2.31063795
		 -1.33404708 15.22784519 -2.31063843 -2.66809511 15.22784519 -3.9757717e-07 -1.33404791 15.22784519 2.31063795
		 1.33404744 15.22784519 2.31063819 2.66809511 15.22784519 0 1.33404815 17.32516861 -2.31063795
		 -1.33404708 17.32516861 -2.31063843 -2.66809511 17.32516861 -3.9757717e-07 -1.33404791 17.32516861 2.31063795
		 1.33404744 17.32516861 2.31063819 2.66809511 17.32516861 0 0.82448709 19.021938324 -1.42805266
		 -0.82448643 19.021938324 -1.42805302 -1.64897335 19.021938324 -2.4571617e-07 -0.82448685 19.021938324 1.42805278
		 0.82448661 19.021938324 1.42805278 1.64897335 19.021938324 0 0 12.882967 0 0 19.67004585 0;
	setAttr -s 84 ".ed[0:83]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 6 0 0 6 0 1 7 0 2 8 0 3 9 0 4 10 0 5 11 0 12 0 1 12 1 1
		 12 2 1 12 3 1 12 4 1 12 5 1 6 13 1 7 13 1 8 13 1 9 13 1 10 13 1 11 13 1 14 15 0 15 16 0
		 16 17 0 17 18 0 18 19 0 19 14 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 20 0 26 27 0
		 27 28 0 28 29 0 29 30 0 30 31 0 31 26 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 32 0
		 14 20 0 15 21 0 16 22 0 17 23 0 18 24 0 19 25 0 20 26 0 21 27 0 22 28 0 23 29 0 24 30 0
		 25 31 0 26 32 0 27 33 0 28 34 0 29 35 0 30 36 0 31 37 0 38 14 0 38 15 0 38 16 0 38 17 0
		 38 18 0 38 19 0 32 39 0 33 39 0 34 39 0 35 39 0 36 39 0 37 39 0;
	setAttr -s 48 -ch 168 ".fc[0:47]" -type "polyFaces" 
		f 4 0 13 -7 -13
		mu 0 4 0 1 2 3
		f 4 1 14 -8 -14
		mu 0 4 1 4 5 2
		f 4 2 15 -9 -15
		mu 0 4 4 6 7 5
		f 4 3 16 -10 -16
		mu 0 4 6 8 9 7
		f 4 4 17 -11 -17
		mu 0 4 8 10 11 9
		f 4 5 12 -12 -18
		mu 0 4 10 12 13 11
		f 3 -1 -19 19
		mu 0 3 14 15 16
		f 3 -2 -20 20
		mu 0 3 17 14 16
		f 3 -3 -21 21
		mu 0 3 18 17 16
		f 3 -4 -22 22
		mu 0 3 19 18 16
		f 3 -5 -23 23
		mu 0 3 20 19 16
		f 3 -6 -24 18
		mu 0 3 15 20 16
		f 3 6 25 -25
		mu 0 3 21 22 23
		f 3 7 26 -26
		mu 0 3 22 24 23
		f 3 8 27 -27
		mu 0 3 24 25 23
		f 3 9 28 -28
		mu 0 3 25 26 23
		f 3 10 29 -29
		mu 0 3 26 27 23
		f 3 11 24 -30
		mu 0 3 27 21 23
		f 4 30 55 -37 -55
		mu 0 4 28 29 30 31
		f 4 31 56 -38 -56
		mu 0 4 29 32 33 30
		f 4 32 57 -39 -57
		mu 0 4 32 34 35 33
		f 4 33 58 -40 -58
		mu 0 4 34 36 37 35
		f 4 34 59 -41 -59
		mu 0 4 36 38 39 37
		f 4 35 54 -42 -60
		mu 0 4 38 40 41 39
		f 4 36 61 -43 -61
		mu 0 4 31 30 42 43
		f 4 37 62 -44 -62
		mu 0 4 30 33 44 42
		f 4 38 63 -45 -63
		mu 0 4 33 35 45 44
		f 4 39 64 -46 -64
		mu 0 4 35 37 46 45
		f 4 40 65 -47 -65
		mu 0 4 37 39 47 46
		f 4 41 60 -48 -66
		mu 0 4 39 41 48 47
		f 4 42 67 -49 -67
		mu 0 4 43 42 49 50
		f 4 43 68 -50 -68
		mu 0 4 42 44 51 49
		f 4 44 69 -51 -69
		mu 0 4 44 45 52 51
		f 4 45 70 -52 -70
		mu 0 4 45 46 53 52
		f 4 46 71 -53 -71
		mu 0 4 46 47 54 53
		f 4 47 66 -54 -72
		mu 0 4 47 48 55 54
		f 3 -31 -73 73
		mu 0 3 29 28 56
		f 3 -32 -74 74
		mu 0 3 32 29 57
		f 3 -33 -75 75
		mu 0 3 34 32 58
		f 3 -34 -76 76
		mu 0 3 36 34 59
		f 3 -35 -77 77
		mu 0 3 38 36 60
		f 3 -36 -78 72
		mu 0 3 40 38 61
		f 3 48 79 -79
		mu 0 3 50 49 62
		f 3 49 80 -80
		mu 0 3 49 51 63
		f 3 50 81 -81
		mu 0 3 51 52 64
		f 3 51 82 -82
		mu 0 3 52 53 65
		f 3 52 83 -83
		mu 0 3 53 54 66
		f 3 53 78 -84
		mu 0 3 54 55 67;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurface1ShapeOrig" -p "polySurface1";
	rename -uid "9DD7BA5A-F247-3961-4CA6-87981A80AA43";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "transform2" -p "polySurface1";
	rename -uid "7364025C-5241-178B-9536-96B4784A9C8D";
	setAttr ".v" no;
createNode mesh -n "polySurface1Shape" -p "transform2";
	rename -uid "67DC1906-904D-AF15-59BC-8A861CA5E8A1";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.30203323066234589 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
createNode transform -n "group4";
	rename -uid "15658B55-E24D-4C9D-F69E-03B6873A7F93";
	setAttr ".rp" -type "double3" 6.5326787170261547 9.9383148319867214 8.0849781630248643 ;
	setAttr ".sp" -type "double3" 6.5326787170261547 9.9383148319867214 8.0849781630248643 ;
createNode transform -n "group5";
	rename -uid "53BE47F0-8940-D2D9-5FD1-0CA347F6F6FE";
	setAttr ".rp" -type "double3" 6.5326788425445557 9.9383148319867214 8.0076255798339844 ;
	setAttr ".sp" -type "double3" 6.5326788425445557 9.9383148319867214 8.0076255798339844 ;
createNode transform -n "pasted__polySurface1" -p "group5";
	rename -uid "BC15FAC9-DE4C-04A0-4C45-2B9372D62745";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 6.5326788425445557 9.8105630874633789 8.0076255798339844 ;
	setAttr ".sp" -type "double3" 6.5326788425445557 9.8105630874633789 8.0076255798339844 ;
createNode mesh -n "pasted__polySurfaceShape1" -p "|group5|pasted__polySurface1";
	rename -uid "AD156271-ED41-E60E-783F-FD8C73121C63";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[18:47]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 68 ".uvst[0].uvsp[0:67]" -type "float2" 0.375 0.3125 0.41666666
		 0.3125 0.41666666 0.68843985 0.375 0.68843985 0.45833331 0.3125 0.45833331 0.68843985
		 0.49999997 0.3125 0.49999997 0.68843985 0.54166663 0.3125 0.54166663 0.68843985 0.58333331
		 0.3125 0.58333331 0.68843985 0.625 0.3125 0.625 0.68843985 0.42187503 0.020933509
		 0.57812506 0.020933539 0.5 0.15000001 0.34375 0.15624997 0.421875 0.29156646 0.578125
		 0.29156649 0.65625 0.15625 0.578125 0.97906649 0.421875 0.97906649 0.5 0.83749998
		 0.34375 0.84375 0.42187503 0.70843351 0.57812506 0.70843351 0.65625 0.84375 0 0.2
		 0.16666667 0.2 0.16666667 0.40000001 0 0.40000001 0.33333334 0.2 0.33333334 0.40000001
		 0.5 0.2 0.5 0.40000001 0.66666669 0.2 0.66666669 0.40000001 0.83333337 0.2 0.83333337
		 0.40000001 1 0.2 1 0.40000001 0.16666667 0.60000002 0 0.60000002 0.33333334 0.60000002
		 0.5 0.60000002 0.66666669 0.60000002 0.83333337 0.60000002 1 0.60000002 0.16666667
		 0.80000001 0 0.80000001 0.33333334 0.80000001 0.5 0.80000001 0.66666669 0.80000001
		 0.83333337 0.80000001 1 0.80000001 0.083333336 0 0.25 0 0.41666669 0 0.58333337 0
		 0.75 0 0.91666669 0 0.083333336 1 0.25 1 0.41666669 1 0.58333337 1 0.75 1 0.91666669
		 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 40 ".vt[0:39]"  0.092766732 -0.048919678 -0.16067651 -0.092766732 -0.048919678 -0.16067651
		 -0.18553346 -0.048919678 -2.7646594e-08 -0.092766732 -0.048919678 0.16067651 0.092766732 -0.048919678 0.16067651
		 0.18553346 -0.048919678 0 0.092766739 13.29823494 -0.16067651 -0.092766739 13.29823494 -0.16067651
		 -0.18553348 13.29823494 -2.7646589e-08 -0.092766739 13.29823494 0.16067651 0.092766739 13.29823494 0.16067651
		 0.18553348 13.29823494 0 0 -0.048919678 0 0 13.29823494 0 0.82448709 13.53107548 -1.42805266
		 -0.82448643 13.53107548 -1.42805302 -1.64897335 13.53107548 -2.4571617e-07 -0.82448685 13.53107548 1.42805278
		 0.82448661 13.53107548 1.42805278 1.64897335 13.53107548 0 1.33404815 15.22784519 -2.31063795
		 -1.33404708 15.22784519 -2.31063843 -2.66809511 15.22784519 -3.9757717e-07 -1.33404791 15.22784519 2.31063795
		 1.33404744 15.22784519 2.31063819 2.66809511 15.22784519 0 1.33404815 17.32516861 -2.31063795
		 -1.33404708 17.32516861 -2.31063843 -2.66809511 17.32516861 -3.9757717e-07 -1.33404791 17.32516861 2.31063795
		 1.33404744 17.32516861 2.31063819 2.66809511 17.32516861 0 0.82448709 19.021938324 -1.42805266
		 -0.82448643 19.021938324 -1.42805302 -1.64897335 19.021938324 -2.4571617e-07 -0.82448685 19.021938324 1.42805278
		 0.82448661 19.021938324 1.42805278 1.64897335 19.021938324 0 0 12.882967 0 0 19.67004585 0;
	setAttr -s 84 ".ed[0:83]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 6 0 0 6 0 1 7 0 2 8 0 3 9 0 4 10 0 5 11 0 12 0 1 12 1 1
		 12 2 1 12 3 1 12 4 1 12 5 1 6 13 1 7 13 1 8 13 1 9 13 1 10 13 1 11 13 1 14 15 0 15 16 0
		 16 17 0 17 18 0 18 19 0 19 14 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 20 0 26 27 0
		 27 28 0 28 29 0 29 30 0 30 31 0 31 26 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 32 0
		 14 20 0 15 21 0 16 22 0 17 23 0 18 24 0 19 25 0 20 26 0 21 27 0 22 28 0 23 29 0 24 30 0
		 25 31 0 26 32 0 27 33 0 28 34 0 29 35 0 30 36 0 31 37 0 38 14 0 38 15 0 38 16 0 38 17 0
		 38 18 0 38 19 0 32 39 0 33 39 0 34 39 0 35 39 0 36 39 0 37 39 0;
	setAttr -s 48 -ch 168 ".fc[0:47]" -type "polyFaces" 
		f 4 0 13 -7 -13
		mu 0 4 0 1 2 3
		f 4 1 14 -8 -14
		mu 0 4 1 4 5 2
		f 4 2 15 -9 -15
		mu 0 4 4 6 7 5
		f 4 3 16 -10 -16
		mu 0 4 6 8 9 7
		f 4 4 17 -11 -17
		mu 0 4 8 10 11 9
		f 4 5 12 -12 -18
		mu 0 4 10 12 13 11
		f 3 -1 -19 19
		mu 0 3 14 15 16
		f 3 -2 -20 20
		mu 0 3 17 14 16
		f 3 -3 -21 21
		mu 0 3 18 17 16
		f 3 -4 -22 22
		mu 0 3 19 18 16
		f 3 -5 -23 23
		mu 0 3 20 19 16
		f 3 -6 -24 18
		mu 0 3 15 20 16
		f 3 6 25 -25
		mu 0 3 21 22 23
		f 3 7 26 -26
		mu 0 3 22 24 23
		f 3 8 27 -27
		mu 0 3 24 25 23
		f 3 9 28 -28
		mu 0 3 25 26 23
		f 3 10 29 -29
		mu 0 3 26 27 23
		f 3 11 24 -30
		mu 0 3 27 21 23
		f 4 30 55 -37 -55
		mu 0 4 28 29 30 31
		f 4 31 56 -38 -56
		mu 0 4 29 32 33 30
		f 4 32 57 -39 -57
		mu 0 4 32 34 35 33
		f 4 33 58 -40 -58
		mu 0 4 34 36 37 35
		f 4 34 59 -41 -59
		mu 0 4 36 38 39 37
		f 4 35 54 -42 -60
		mu 0 4 38 40 41 39
		f 4 36 61 -43 -61
		mu 0 4 31 30 42 43
		f 4 37 62 -44 -62
		mu 0 4 30 33 44 42
		f 4 38 63 -45 -63
		mu 0 4 33 35 45 44
		f 4 39 64 -46 -64
		mu 0 4 35 37 46 45
		f 4 40 65 -47 -65
		mu 0 4 37 39 47 46
		f 4 41 60 -48 -66
		mu 0 4 39 41 48 47
		f 4 42 67 -49 -67
		mu 0 4 43 42 49 50
		f 4 43 68 -50 -68
		mu 0 4 42 44 51 49
		f 4 44 69 -51 -69
		mu 0 4 44 45 52 51
		f 4 45 70 -52 -70
		mu 0 4 45 46 53 52
		f 4 46 71 -53 -71
		mu 0 4 46 47 54 53
		f 4 47 66 -54 -72
		mu 0 4 47 48 55 54
		f 3 -31 -73 73
		mu 0 3 29 28 56
		f 3 -32 -74 74
		mu 0 3 32 29 57
		f 3 -33 -75 75
		mu 0 3 34 32 58
		f 3 -34 -76 76
		mu 0 3 36 34 59
		f 3 -35 -77 77
		mu 0 3 38 36 60
		f 3 -36 -78 72
		mu 0 3 40 38 61
		f 3 48 79 -79
		mu 0 3 50 49 62
		f 3 49 80 -80
		mu 0 3 49 51 63
		f 3 50 81 -81
		mu 0 3 51 52 64
		f 3 51 82 -82
		mu 0 3 52 53 65
		f 3 52 83 -83
		mu 0 3 53 54 66
		f 3 53 78 -84
		mu 0 3 54 55 67;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "pasted__polySurface1ShapeOrig" -p "|group5|pasted__polySurface1";
	rename -uid "9982922B-3743-833F-2BAB-9AB342C4FD22";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "transform3" -p "|group5|pasted__polySurface1";
	rename -uid "2B3902EF-B246-2A6A-AC9E-8FA2CC0C51CC";
	setAttr ".v" no;
createNode mesh -n "pasted__polySurface1Shape" -p "transform3";
	rename -uid "8E9E29AD-7E40-7BB2-62C6-CD97375CF3F3";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.30203323066234589 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
createNode joint -n "pasted__joint1" -p "group5";
	rename -uid "E75115F8-C141-F19E-3421-8F954F43A8A4";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 0 -0.10910105556967677 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 89.999999999999986 1.0609116902641673 90 ;
	setAttr ".bps" -type "matrix" 0 0.99982857632513145 -0.018515344006019788 0 -3.3306690738754706e-16 0.018515344006019618 0.99982857632513145 0
		 1.0000000000000002 -1.1102230246251568e-16 2.2204460492503131e-16 0 0 -0.10910105556967677 0 1;
	setAttr ".radi" 1.1555221341283088;
createNode joint -n "pasted__joint2" -p "pasted__joint1";
	rename -uid "354D9889-F54B-2040-9007-ACB3C97C5D5C";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 2.0563886995125911 -5.5315513629609237e-17 -1.2282511370111768e-32 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 1.0609116902641509 ;
	setAttr ".bps" -type "matrix" -6.1668483673015059e-18 1.0000000000000002 -1.8041124150158794e-16 0
		 -3.3300981183430552e-16 1.0408340855860843e-17 1.0000000000000002 0 1.0000000000000002 -1.1102230246251568e-16 2.2204460492503131e-16 0
		 6.1412556850558851e-33 1.9469351302350857 -0.038074744181567338 1;
	setAttr ".radi" 0.60779591096761099;
createNode joint -n "pasted__joint3" -p "pasted__joint2";
	rename -uid "F37B0742-EF4D-BB10-84A9-6F96562F9FD3";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 3.0840542787071445 8.6955316791959908e-16 1.2679263395543176e-17 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 -3.9860090760518113e-16 0.7345210342551366 ;
	setAttr ".bps" -type "matrix" -1.0435347358720253e-17 0.9999178273551349 0.012819459325071258 0
		 4.5536807179022782e-16 0.012819459325071428 -0.99991782735513479 0 -1.0000000000000002 1.1259223344544051e-16 -3.4449922159311546e-16 0
		 -6.3396316977714832e-18 5.0309894089422311 -0.038074744181567026 1;
	setAttr ".radi" 0.6019003847417459;
createNode joint -n "pasted__joint4" -p "pasted__joint3";
	rename -uid "D7105778-024F-FC73-9EC0-C9A0D97E5DF9";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 2.970074105007086 1.7867651802561113e-14 -2.0662503311253732e-17 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 -1.0421075838392266e-16 1.4597453333143093 ;
	setAttr ".bps" -type "matrix" 1.1683615283488202e-18 0.99991989426029548 -0.012657213851394945 0
		 -5.7795080726856202e-16 0.012657213851394775 0.99991989426029571 0 1.0000000000000002 -1.110421718025171e-16 4.6695409138407852e-16 0
		 -1.6670883353398725e-17 8.0008194551046632 8.6736173798840355e-16 1;
	setAttr ".radi" 0.60386960828027192;
createNode joint -n "pasted__joint5" -p "pasted__joint4";
	rename -uid "E2CB0C12-654D-D5F0-B71D-F2B534910D8F";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 3.0081457600852568 -1.1587952819525071e-15 -5.4712782276798121e-18 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -1.4835977052031733e-18 -2.3441782690507386e-16 0.72522429905868091 ;
	setAttr ".bps" -type "matrix" -6.1469790272951142e-18 1.0000000000000002 -8.7672924475867831e-15 0
		 -5.7791929829335294e-16 8.5990242704170328e-15 1.0000000000000004 0 1.0000000000000002 -1.110421718025171e-16 4.6695409138407852e-16 0
		 -1.8627559803328634e-17 11.008724245448668 -0.038074744181566381 1;
	setAttr ".radi" 0.56840824457288353;
createNode joint -n "pasted__joint6" -p "pasted__joint5";
	rename -uid "EE010E24-F44D-8FDE-AE0B-80BBB2A17FFB";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 2.3225593950757482 2.0605192167005206e-14 9.5024333533621294e-18 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" -6.1469790272951142e-18 1.0000000000000002 -8.7672924475867831e-15 0
		 -5.7791929829335294e-16 8.5990242704170328e-15 1.0000000000000004 0 1.0000000000000002 -1.110421718025171e-16 4.6695409138407852e-16 0
		 -2.3401850341156261e-17 13.331283640524417 -0.038074744181566138 1;
	setAttr ".radi" 0.54046141537467196;
createNode joint -n "pasted__joint7" -p "pasted__joint6";
	rename -uid "691921A8-404E-877B-B79A-A5A6C55FC6A2";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" 1.7822540305769916 1.580900194168159e-14 7.2918480277489601e-18 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 -8.2887815906730481e-16 1.2733920778676246 ;
	setAttr ".bps" -type "matrix" -1.8988593204420946e-17 0.99975303742184563 0.02222305482588335 0
		 7.0010464911627919e-16 0.02222305482588351 -0.99975303742184596 0 -1.0000000000000002 1.1376371109849655e-16 -5.8938852710572926e-16 0
		 -2.706548046068539e-17 15.113537671101408 -0.038074744181565957 1;
	setAttr ".radi" 0.66663940330690774;
createNode joint -n "pasted__joint8" -p "pasted__joint7";
	rename -uid "DC39C5BB-9D49-4D25-E27E-F6908EB8930B";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" 4.2216951306002164 9.4230179215060161e-15 -6.1073798414697821e-17 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 88.726607922132885 89.999999999999943 0 ;
	setAttr ".bps" -type "matrix" 1.0000000000000002 9.9495150262891215e-16 6.6955851630516558e-16 0
		 -1.0581373131252196e-15 1 6.2450045135164439e-17 0 -9.2239833894003488e-16 -2.324529457808921e-16 1.0000000000000004 0
		 -4.6155733514033238e-17 19.33419020098799 0.055744218163917995 1;
	setAttr ".radi" 0.66663940330690774;
createNode transform -n "group6";
	rename -uid "B5A4F7A2-BC4B-D1BE-1260-0E881B65F80C";
	setAttr ".rp" -type "double3" 6.5326788425445557 7.171691327228908 5.851685683901712 ;
	setAttr ".sp" -type "double3" 6.5326788425445557 7.171691327228908 5.851685683901712 ;
createNode transform -n "pasted__polySurface1" -p "group6";
	rename -uid "FD40C72E-EE45-9B35-5119-07A8F429DB5F";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 6.5326788425445557 6.8629189915955067 4.9405797123908997 ;
	setAttr ".sp" -type "double3" 6.5326788425445557 6.8629189915955067 4.9405797123908997 ;
createNode mesh -n "pasted__polySurfaceShape1" -p "|group6|pasted__polySurface1";
	rename -uid "89248DBA-D54E-6F3F-5018-74A27D9C7682";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[18:47]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 68 ".uvst[0].uvsp[0:67]" -type "float2" 0.375 0.3125 0.41666666
		 0.3125 0.41666666 0.68843985 0.375 0.68843985 0.45833331 0.3125 0.45833331 0.68843985
		 0.49999997 0.3125 0.49999997 0.68843985 0.54166663 0.3125 0.54166663 0.68843985 0.58333331
		 0.3125 0.58333331 0.68843985 0.625 0.3125 0.625 0.68843985 0.42187503 0.020933509
		 0.57812506 0.020933539 0.5 0.15000001 0.34375 0.15624997 0.421875 0.29156646 0.578125
		 0.29156649 0.65625 0.15625 0.578125 0.97906649 0.421875 0.97906649 0.5 0.83749998
		 0.34375 0.84375 0.42187503 0.70843351 0.57812506 0.70843351 0.65625 0.84375 0 0.2
		 0.16666667 0.2 0.16666667 0.40000001 0 0.40000001 0.33333334 0.2 0.33333334 0.40000001
		 0.5 0.2 0.5 0.40000001 0.66666669 0.2 0.66666669 0.40000001 0.83333337 0.2 0.83333337
		 0.40000001 1 0.2 1 0.40000001 0.16666667 0.60000002 0 0.60000002 0.33333334 0.60000002
		 0.5 0.60000002 0.66666669 0.60000002 0.83333337 0.60000002 1 0.60000002 0.16666667
		 0.80000001 0 0.80000001 0.33333334 0.80000001 0.5 0.80000001 0.66666669 0.80000001
		 0.83333337 0.80000001 1 0.80000001 0.083333336 0 0.25 0 0.41666669 0 0.58333337 0
		 0.75 0 0.91666669 0 0.083333336 1 0.25 1 0.41666669 1 0.58333337 1 0.75 1 0.91666669
		 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 40 ".vt[0:39]"  0.092766732 -0.048919678 -0.16067651 -0.092766732 -0.048919678 -0.16067651
		 -0.18553346 -0.048919678 -2.7646594e-08 -0.092766732 -0.048919678 0.16067651 0.092766732 -0.048919678 0.16067651
		 0.18553346 -0.048919678 0 0.092766739 13.29823494 -0.16067651 -0.092766739 13.29823494 -0.16067651
		 -0.18553348 13.29823494 -2.7646589e-08 -0.092766739 13.29823494 0.16067651 0.092766739 13.29823494 0.16067651
		 0.18553348 13.29823494 0 0 -0.048919678 0 0 13.29823494 0 0.82448709 13.53107548 -1.42805266
		 -0.82448643 13.53107548 -1.42805302 -1.64897335 13.53107548 -2.4571617e-07 -0.82448685 13.53107548 1.42805278
		 0.82448661 13.53107548 1.42805278 1.64897335 13.53107548 0 1.33404815 15.22784519 -2.31063795
		 -1.33404708 15.22784519 -2.31063843 -2.66809511 15.22784519 -3.9757717e-07 -1.33404791 15.22784519 2.31063795
		 1.33404744 15.22784519 2.31063819 2.66809511 15.22784519 0 1.33404815 17.32516861 -2.31063795
		 -1.33404708 17.32516861 -2.31063843 -2.66809511 17.32516861 -3.9757717e-07 -1.33404791 17.32516861 2.31063795
		 1.33404744 17.32516861 2.31063819 2.66809511 17.32516861 0 0.82448709 19.021938324 -1.42805266
		 -0.82448643 19.021938324 -1.42805302 -1.64897335 19.021938324 -2.4571617e-07 -0.82448685 19.021938324 1.42805278
		 0.82448661 19.021938324 1.42805278 1.64897335 19.021938324 0 0 12.882967 0 0 19.67004585 0;
	setAttr -s 84 ".ed[0:83]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 6 0 0 6 0 1 7 0 2 8 0 3 9 0 4 10 0 5 11 0 12 0 1 12 1 1
		 12 2 1 12 3 1 12 4 1 12 5 1 6 13 1 7 13 1 8 13 1 9 13 1 10 13 1 11 13 1 14 15 0 15 16 0
		 16 17 0 17 18 0 18 19 0 19 14 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 20 0 26 27 0
		 27 28 0 28 29 0 29 30 0 30 31 0 31 26 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 32 0
		 14 20 0 15 21 0 16 22 0 17 23 0 18 24 0 19 25 0 20 26 0 21 27 0 22 28 0 23 29 0 24 30 0
		 25 31 0 26 32 0 27 33 0 28 34 0 29 35 0 30 36 0 31 37 0 38 14 0 38 15 0 38 16 0 38 17 0
		 38 18 0 38 19 0 32 39 0 33 39 0 34 39 0 35 39 0 36 39 0 37 39 0;
	setAttr -s 48 -ch 168 ".fc[0:47]" -type "polyFaces" 
		f 4 0 13 -7 -13
		mu 0 4 0 1 2 3
		f 4 1 14 -8 -14
		mu 0 4 1 4 5 2
		f 4 2 15 -9 -15
		mu 0 4 4 6 7 5
		f 4 3 16 -10 -16
		mu 0 4 6 8 9 7
		f 4 4 17 -11 -17
		mu 0 4 8 10 11 9
		f 4 5 12 -12 -18
		mu 0 4 10 12 13 11
		f 3 -1 -19 19
		mu 0 3 14 15 16
		f 3 -2 -20 20
		mu 0 3 17 14 16
		f 3 -3 -21 21
		mu 0 3 18 17 16
		f 3 -4 -22 22
		mu 0 3 19 18 16
		f 3 -5 -23 23
		mu 0 3 20 19 16
		f 3 -6 -24 18
		mu 0 3 15 20 16
		f 3 6 25 -25
		mu 0 3 21 22 23
		f 3 7 26 -26
		mu 0 3 22 24 23
		f 3 8 27 -27
		mu 0 3 24 25 23
		f 3 9 28 -28
		mu 0 3 25 26 23
		f 3 10 29 -29
		mu 0 3 26 27 23
		f 3 11 24 -30
		mu 0 3 27 21 23
		f 4 30 55 -37 -55
		mu 0 4 28 29 30 31
		f 4 31 56 -38 -56
		mu 0 4 29 32 33 30
		f 4 32 57 -39 -57
		mu 0 4 32 34 35 33
		f 4 33 58 -40 -58
		mu 0 4 34 36 37 35
		f 4 34 59 -41 -59
		mu 0 4 36 38 39 37
		f 4 35 54 -42 -60
		mu 0 4 38 40 41 39
		f 4 36 61 -43 -61
		mu 0 4 31 30 42 43
		f 4 37 62 -44 -62
		mu 0 4 30 33 44 42
		f 4 38 63 -45 -63
		mu 0 4 33 35 45 44
		f 4 39 64 -46 -64
		mu 0 4 35 37 46 45
		f 4 40 65 -47 -65
		mu 0 4 37 39 47 46
		f 4 41 60 -48 -66
		mu 0 4 39 41 48 47
		f 4 42 67 -49 -67
		mu 0 4 43 42 49 50
		f 4 43 68 -50 -68
		mu 0 4 42 44 51 49
		f 4 44 69 -51 -69
		mu 0 4 44 45 52 51
		f 4 45 70 -52 -70
		mu 0 4 45 46 53 52
		f 4 46 71 -53 -71
		mu 0 4 46 47 54 53
		f 4 47 66 -54 -72
		mu 0 4 47 48 55 54
		f 3 -31 -73 73
		mu 0 3 29 28 56
		f 3 -32 -74 74
		mu 0 3 32 29 57
		f 3 -33 -75 75
		mu 0 3 34 32 58
		f 3 -34 -76 76
		mu 0 3 36 34 59
		f 3 -35 -77 77
		mu 0 3 38 36 60
		f 3 -36 -78 72
		mu 0 3 40 38 61
		f 3 48 79 -79
		mu 0 3 50 49 62
		f 3 49 80 -80
		mu 0 3 49 51 63
		f 3 50 81 -81
		mu 0 3 51 52 64
		f 3 51 82 -82
		mu 0 3 52 53 65
		f 3 52 83 -83
		mu 0 3 53 54 66
		f 3 53 78 -84
		mu 0 3 54 55 67;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "pasted__polySurface1ShapeOrig" -p "|group6|pasted__polySurface1";
	rename -uid "2DBF52D8-954B-13E7-444D-44B4867A5A4B";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "transform4" -p "|group6|pasted__polySurface1";
	rename -uid "A36092A0-2346-5144-5844-259DD2E6BF39";
	setAttr ".v" no;
createNode mesh -n "pasted__polySurface1Shape" -p "transform4";
	rename -uid "4EC4A680-9B4F-C02D-03F2-8EB5D699F513";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.30203323066234589 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
createNode transform -n "group6_pasted__polySurface1";
	rename -uid "65BA7A5E-464A-2110-3EAF-1986B1C07D71";
	setAttr ".rp" -type "double3" 6.5326788425445557 9.7797562070190907 8.7703984379768372 ;
	setAttr ".sp" -type "double3" 6.5326788425445557 9.7797562070190907 8.7703984379768372 ;
createNode transform -n "polySurface2" -p "group6_pasted__polySurface1";
	rename -uid "F2049B99-064F-BA96-A789-5B87A22F05BE";
	setAttr ".t" -type "double3" 10.678307103392822 0 0 ;
createNode transform -n "transform9" -p "|group6_pasted__polySurface1|polySurface2";
	rename -uid "4765AF22-F241-5E8E-D758-8EB1C7DCABA4";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape2" -p "transform9";
	rename -uid "BC3D1016-B74C-C6E0-AB5B-D68EE57F866E";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface3" -p "group6_pasted__polySurface1";
	rename -uid "237EF33B-0E43-A36B-A964-5481BD84DC89";
	setAttr ".t" -type "double3" 10.678307103392822 0 0 ;
createNode transform -n "transform8" -p "polySurface3";
	rename -uid "E9F5D13D-DA41-C8BD-9B07-80BF57445CA6";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape3" -p "transform8";
	rename -uid "DF95F002-B841-3E92-909D-1C949EA97593";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface4" -p "group6_pasted__polySurface1";
	rename -uid "7FE6DD13-3D49-E52C-9199-E697A2AB910D";
createNode transform -n "transform10" -p "polySurface4";
	rename -uid "AC5F7671-7B4D-DEBB-4E71-7CA5C2EDD9C9";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape4" -p "transform10";
	rename -uid "59BFAD41-8A44-9D17-61A6-228DB61B422A";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface5" -p "group6_pasted__polySurface1";
	rename -uid "796ABA9B-474B-EE3E-5211-D196D3836243";
createNode transform -n "transform12" -p "polySurface5";
	rename -uid "57505C5B-4040-248C-F02D-DD81D0BD85E0";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape5" -p "transform12";
	rename -uid "06BC142B-564B-0F65-5BDD-A8937BA0B832";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface6" -p "group6_pasted__polySurface1";
	rename -uid "296FE6C7-2541-2E78-9CFC-32BBF8170748";
	setAttr ".t" -type "double3" 0 0 -5.2245787623590703 ;
createNode transform -n "transform7" -p "|group6_pasted__polySurface1|polySurface6";
	rename -uid "B6B85D17-514A-F54F-85A0-8F9B50344051";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape6" -p "transform7";
	rename -uid "C099399E-6148-B1EE-7F9D-8193D7C944FC";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface7" -p "group6_pasted__polySurface1";
	rename -uid "59D1A5F2-8849-B85C-771F-EFA8FE0CCAEF";
	setAttr ".t" -type "double3" 0 0 -5.2245787623590703 ;
createNode transform -n "transform6" -p "polySurface7";
	rename -uid "A5C1EA93-9048-67A4-A8C0-2BBED419E69E";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape7" -p "transform6";
	rename -uid "AF2D3CE5-DA43-8CD7-88AC-FCAF489E84AB";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "transform5" -p "group6_pasted__polySurface1";
	rename -uid "EBA1746E-A148-D6F2-43D5-0683A84CDCA4";
	setAttr ".v" no;
createNode mesh -n "group6_pasted__polySurface1Shape" -p "transform5";
	rename -uid "E3DF2034-0B4C-4E63-ECD0-4DBDD42D8157";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 18 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
createNode transform -s -n "persp";
	rename -uid "3EF3B52D-AB47-3B30-93D1-4FB4BADC26C9";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 6.6886085580235202 15.799668199487233 35.778124348525139 ;
	setAttr ".r" -type "double3" -13.538352729605172 5.399999999986969 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "96657956-7443-CC8F-A38B-9A958033B761";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 36.964739776067333;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 3.3065800597027692 7.146363163234736 0 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "4D7DF094-8C42-9F07-96AC-BC9BAE5755A4";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "70F00C60-E742-AD8B-5ABA-DEAA3A81E922";
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
	rename -uid "CCD1EDC5-A44B-966C-D356-B6A3F36AE5F4";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "07CDC3B5-CF44-36F7-AA11-FE896552564E";
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
	rename -uid "0F99DF76-2640-0C24-B34A-07A51A2CA2AB";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "CD19BB01-B148-C616-EB56-E585E934A2C4";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "polySurface6";
	rename -uid "8107E27D-CE4F-8425-FF5A-2F993825FFE6";
	setAttr ".t" -type "double3" -3.5893022215092341 2.6760140455202412 4.0565976591709276 ;
	setAttr ".r" -type "double3" 0 0 27.424661248676774 ;
	setAttr ".s" -type "double3" 0.77644489198374456 0.77644489198374456 0.77644489198374456 ;
	setAttr ".rp" -type "double3" 0 7.6173615967452157 -4.0565976591709276 ;
	setAttr ".sp" -type "double3" 0 9.8105630874633789 -5.2245789766311646 ;
	setAttr ".spt" -type "double3" 0 -2.1932014907181632 1.1679813174602369 ;
createNode transform -n "transform11" -p "|polySurface6";
	rename -uid "952DE3EC-3B4D-3F88-6911-408C3F8A1E82";
	setAttr ".v" no;
createNode mesh -n "polySurface6Shape" -p "transform11";
	rename -uid "430E483A-F041-397C-B1C0-0E99A67E97CC";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface2";
	rename -uid "460918C5-A845-33A8-3C2C-3587F5ACA777";
	setAttr ".t" -type "double3" -3.0138460720885032 5.7739291606088292 7.0559262924572581e-08 ;
	setAttr ".r" -type "double3" 0 0 -34.95831771141485 ;
	setAttr ".s" -type "double3" 0.59189399744317295 0.59189399744317295 0.59189399744317295 ;
	setAttr ".rp" -type "double3" 6.3204261317912724 5.806813403007137 -7.0559262924572581e-08 ;
	setAttr ".sp" -type "double3" 10.67830753326416 9.8105630874633789 -1.1920928955078125e-07 ;
	setAttr ".spt" -type "double3" -4.3578814014728877 -4.0037496844562419 4.8650026626208663e-08 ;
createNode transform -n "transform13" -p "|polySurface2";
	rename -uid "5D1680F9-D241-C0D2-ED5A-DF819A9C9A42";
	setAttr ".v" no;
createNode mesh -n "polySurface2Shape" -p "transform13";
	rename -uid "9FDA4975-F64D-E5D5-A836-8F97734DB474";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface8";
	rename -uid "194DF533-A14F-4E48-C3ED-76A33E6387BD";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "polySurface2Shape" -p "polySurface8";
	rename -uid "E07F894A-6549-FB1F-18D2-628EE8704D27";
	setAttr -k off ".v";
	setAttr -s 22 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
createNode mesh -n "polySurface2ShapeOrig" -p "polySurface8";
	rename -uid "80705B81-9848-B59A-57DF-96987CAD9ACA";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode groupParts -n "groupParts22";
	rename -uid "4FCD2688-3340-1D05-2593-E587E012E9D5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[176:263]";
createNode groupParts -n "groupParts20";
	rename -uid "BC656349-D045-066F-3432-C98F52622FF2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[210:239]";
createNode groupParts -n "groupParts19";
	rename -uid "4DFDBD37-974A-AE73-88BE-1D8C1BF80E1A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[192:209]" "f[240:287]";
createNode groupParts -n "groupParts18";
	rename -uid "0D2937BB-3241-AFB2-5A2E-0CA4B5080620";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[88:175]";
createNode groupParts -n "groupParts16";
	rename -uid "AC524651-584D-56D1-E375-688617FA35D1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[114:143]";
createNode groupParts -n "groupParts15";
	rename -uid "A217383F-9E49-B221-3FED-19B3C045F139";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[96:113]" "f[144:191]";
createNode groupParts -n "groupParts14";
	rename -uid "4AE5C5B5-8F44-9793-8F47-3A8B4A588693";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[0:87]";
createNode groupParts -n "groupParts12";
	rename -uid "8B3AAF21-1848-215B-D915-74ADB266221A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[18:47]";
createNode groupParts -n "groupParts11";
	rename -uid "E73E9DEE-ED4D-9647-9A91-7BAA2F4618C8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[0:17]" "f[48:95]";
createNode polyUnite -n "polyUnite1";
	rename -uid "788E9860-4544-586E-4CA5-19A621F28CF5";
	setAttr -s 3 ".ip";
	setAttr -s 3 ".im";
createNode tweak -n "pasted__tweak4";
	rename -uid "97AD5699-7947-8CEC-6CE8-85BAE8DF7FF0";
createNode objectSet -n "pasted__tweakSet4";
	rename -uid "C3484EC6-B949-ABD3-F224-7F84764CB021";
	setAttr ".ihi" 0;
	setAttr -s 6 ".dsm";
	setAttr ".vo" yes;
	setAttr -s 6 ".gn";
createNode groupId -n "pasted__groupId13";
	rename -uid "1AE742EB-044E-E5DC-2E36-9CA920549DE3";
	setAttr ".ihi" 0;
createNode groupId -n "groupId14";
	rename -uid "69FDFF9F-2F45-F090-2AC0-8B925278D6E2";
	setAttr ".ihi" 0;
createNode groupParts -n "pasted__groupParts13";
	rename -uid "A4A64328-064D-C036-7901-B59970B06BEA";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode polySplitRing -n "pasted__polySplitRing32";
	rename -uid "C883CA7B-F14B-0504-925F-7B8609E23187";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[156:157]" "e[159]" "e[161]" "e[163]" "e[165]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.64538180828094482;
	setAttr ".re" 156;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "pasted__polySplitRing31";
	rename -uid "4ADE925B-FB47-CCEE-11CA-D2BDF34271BE";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[144:145]" "e[147]" "e[149]" "e[151]" "e[153]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.38973343372344971;
	setAttr ".re" 144;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "pasted__polySplitRing30";
	rename -uid "CED58621-934F-C39A-2277-14B06BBE1DD7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[132:133]" "e[135]" "e[137]" "e[139]" "e[141]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.31439617276191711;
	setAttr ".re" 132;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "pasted__polySplitRing29";
	rename -uid "2917869E-1647-7BB7-33D5-FBAA09CC11B3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[120:121]" "e[123]" "e[125]" "e[127]" "e[129]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.23594433069229126;
	setAttr ".re" 120;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "pasted__polySplitRing28";
	rename -uid "B1314427-FF43-2C79-9524-64A2C3FB823C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[108:109]" "e[111]" "e[113]" "e[115]" "e[117]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.18606995046138763;
	setAttr ".re" 108;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "pasted__polySplitRing27";
	rename -uid "A66B5A51-4248-46BA-FA9B-51ACD319B2A8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[96:97]" "e[99]" "e[101]" "e[103]" "e[105]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.16217997670173645;
	setAttr ".re" 96;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "pasted__polySplitRing26";
	rename -uid "46D04221-BD46-AE78-6C6C-37AF5C79D84A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[84:85]" "e[87]" "e[89]" "e[91]" "e[93]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.16052569448947906;
	setAttr ".re" 84;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "pasted__polySplitRing25";
	rename -uid "5375BEF7-514A-F7FF-3C77-6D877232EBDD";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[12:17]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.11920327693223953;
	setAttr ".re" 15;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode groupParts -n "pasted__groupParts12";
	rename -uid "A29C84EC-E649-094D-6F8E-F68FB66D35DE";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[18:47]";
createNode groupParts -n "pasted__groupParts11";
	rename -uid "3E7FC68E-B54E-3701-AFF6-B98319F6568A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:17]";
createNode groupId -n "pasted__groupId11";
	rename -uid "A395DB5C-4047-94A0-8C2C-2AAAB50B2DEB";
	setAttr ".ihi" 0;
createNode groupId -n "pasted__groupId12";
	rename -uid "C5365869-0B46-017F-F53C-1CA4D583E73C";
	setAttr ".ihi" 0;
createNode shadingEngine -n "pasted__lambert2SG4";
	rename -uid "33D979F8-5E49-BDE4-BFF8-4CAE4887176F";
	setAttr ".ihi" 0;
	setAttr -s 5 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 5 ".gn";
createNode materialInfo -n "pasted__materialInfo9";
	rename -uid "54F9AE66-454B-32FE-8BE0-B1B59E025BDF";
createNode lambert -n "pasted__bark4";
	rename -uid "984CD130-CD48-67FE-71F1-F1AA20ABE9EF";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 1 1 1 ;
createNode shadingEngine -n "pasted__lambert3SG4";
	rename -uid "245F98F3-B64C-7135-617B-C68BE3071E0C";
	setAttr ".ihi" 0;
	setAttr -s 5 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 5 ".gn";
createNode materialInfo -n "pasted__materialInfo10";
	rename -uid "C123C8C4-C74C-A1CC-DA95-429A258F0647";
createNode lambert -n "pasted__leaves4";
	rename -uid "C49B6870-0D45-FFE6-E19F-C2B703D30E74";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 1 0.33610001 0 ;
	setAttr ".ambc" -type "float3" 0.41463339 0.41463339 0.41463339 ;
createNode tweak -n "pasted__tweak3";
	rename -uid "40AFCA15-3740-9CFD-9427-478BB1B3D582";
createNode objectSet -n "pasted__tweakSet3";
	rename -uid "12000547-5448-AD12-322F-40823915B620";
	setAttr ".ihi" 0;
	setAttr -s 5 ".dsm";
	setAttr ".vo" yes;
	setAttr -s 5 ".gn";
createNode groupId -n "pasted__groupId10";
	rename -uid "25994DCA-F242-0998-A06C-A196E60722AC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId18";
	rename -uid "CDE93CFD-4B40-D7AB-52A9-46B5EAA2640F";
	setAttr ".ihi" 0;
createNode groupParts -n "pasted__groupParts10";
	rename -uid "FD084DC2-0D4D-ACA3-DA3F-D5AAEE7C1EB5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode polySplitRing -n "pasted__polySplitRing24";
	rename -uid "ABCDC97F-9948-936E-D1EE-CAB8787DBA23";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[156:157]" "e[159]" "e[161]" "e[163]" "e[165]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.64538180828094482;
	setAttr ".re" 156;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "pasted__polySplitRing23";
	rename -uid "E6DAD87C-4B4D-BE00-8B57-5FBAE1867A7B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[144:145]" "e[147]" "e[149]" "e[151]" "e[153]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.38973343372344971;
	setAttr ".re" 144;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "pasted__polySplitRing22";
	rename -uid "0946AFBC-314A-CFF6-7E15-D8A02BA12FB7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[132:133]" "e[135]" "e[137]" "e[139]" "e[141]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.31439617276191711;
	setAttr ".re" 132;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "pasted__polySplitRing21";
	rename -uid "4C199B4D-514D-D08D-6AE4-B399BC8E0CF1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[120:121]" "e[123]" "e[125]" "e[127]" "e[129]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.23594433069229126;
	setAttr ".re" 120;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "pasted__polySplitRing20";
	rename -uid "721C58C6-A343-B7D3-86CD-3BA32B4A4B45";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[108:109]" "e[111]" "e[113]" "e[115]" "e[117]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.18606995046138763;
	setAttr ".re" 108;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "pasted__polySplitRing19";
	rename -uid "5AEAFC36-4148-D15D-D2F9-99A01BFDAD3C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[96:97]" "e[99]" "e[101]" "e[103]" "e[105]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.16217997670173645;
	setAttr ".re" 96;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "pasted__polySplitRing18";
	rename -uid "8C5BF43B-FC46-E011-414D-CC8C2FE092D8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[84:85]" "e[87]" "e[89]" "e[91]" "e[93]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.16052569448947906;
	setAttr ".re" 84;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "pasted__polySplitRing17";
	rename -uid "B2B473DA-6F4D-FEFD-294A-71848339BF48";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[12:17]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.11920327693223953;
	setAttr ".re" 15;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode groupParts -n "pasted__groupParts9";
	rename -uid "8F662440-AF4E-516E-E0B9-D8A194A42AC9";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[18:47]";
createNode groupParts -n "pasted__groupParts8";
	rename -uid "A2E2C05D-9B4D-E04E-150E-8980BEE72A90";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:17]";
createNode groupId -n "pasted__groupId8";
	rename -uid "58229B7B-0846-5938-B90F-FA8CED93E8CA";
	setAttr ".ihi" 0;
createNode groupId -n "pasted__groupId9";
	rename -uid "324D4EE2-3A4D-124C-C44D-08B33B5BE41B";
	setAttr ".ihi" 0;
createNode shadingEngine -n "pasted__lambert2SG2";
	rename -uid "883EC8A6-8B4C-B39C-CC2A-EA96B07CF309";
	setAttr ".ihi" 0;
	setAttr -s 4 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 4 ".gn";
createNode materialInfo -n "pasted__materialInfo5";
	rename -uid "23373819-C943-3345-2C5B-46BE7A44D92C";
createNode lambert -n "pasted__bark2";
	rename -uid "1DB9592E-B943-AC95-ABE1-1293FCFA43FF";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 1 1 1 ;
createNode shadingEngine -n "pasted__lambert3SG2";
	rename -uid "8D3149EE-874F-01EE-20F6-5487A99789B2";
	setAttr ".ihi" 0;
	setAttr -s 4 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 4 ".gn";
createNode materialInfo -n "pasted__materialInfo6";
	rename -uid "1033AF32-7A4F-8AD6-35EF-19B4F381F542";
createNode lambert -n "pasted__leaves2";
	rename -uid "0C5522B8-7848-62C5-792C-49AFDCDCC2BA";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 1 0.33610001 0 ;
	setAttr ".ambc" -type "float3" 0.41463339 0.41463339 0.41463339 ;
createNode tweak -n "tweak1";
	rename -uid "4998FE3F-D842-4071-9632-C09FE2B7AE0D";
createNode objectSet -n "tweakSet1";
	rename -uid "E3B2D8FD-2C4C-AB6B-E9D2-468A5FC36EF7";
	setAttr ".ihi" 0;
	setAttr -s 6 ".dsm";
	setAttr ".vo" yes;
	setAttr -s 6 ".gn";
createNode groupId -n "groupId4";
	rename -uid "C7D9C64F-8D4E-A836-C19D-BE951DF46BAC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId22";
	rename -uid "765966D9-E341-CB0A-5602-C7A820CB1AEC";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	rename -uid "366F12C9-0240-6F83-0836-11AA5E79B2F3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode polySplitRing -n "polySplitRing8";
	rename -uid "E91F7F36-2945-FA41-2F87-9BAFC37D4076";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[156:157]" "e[159]" "e[161]" "e[163]" "e[165]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.64538180828094482;
	setAttr ".re" 156;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing7";
	rename -uid "39FF3357-F24E-E5B1-295D-5482C45BE06E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[144:145]" "e[147]" "e[149]" "e[151]" "e[153]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.38973343372344971;
	setAttr ".re" 144;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing6";
	rename -uid "8BB8D17C-9B49-E1DD-5BA2-CD83E5417BDB";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[132:133]" "e[135]" "e[137]" "e[139]" "e[141]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.31439617276191711;
	setAttr ".re" 132;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing5";
	rename -uid "A2C22D9D-3542-A8AF-494E-B4B507A06F8F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[120:121]" "e[123]" "e[125]" "e[127]" "e[129]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.23594433069229126;
	setAttr ".re" 120;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing4";
	rename -uid "CE9A80B4-D942-DDFF-2790-29B2BD13D8DE";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[108:109]" "e[111]" "e[113]" "e[115]" "e[117]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.18606995046138763;
	setAttr ".re" 108;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing3";
	rename -uid "DE8427B1-014E-3B97-82C0-2DA220DF8F82";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[96:97]" "e[99]" "e[101]" "e[103]" "e[105]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.16217997670173645;
	setAttr ".re" 96;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing2";
	rename -uid "844295A9-704B-280C-E9A2-648B6DFE1468";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[84:85]" "e[87]" "e[89]" "e[91]" "e[93]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.16052569448947906;
	setAttr ".re" 84;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing1";
	rename -uid "339547CE-B248-2CD2-9A36-EA9ECC5A7924";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[12:17]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.11920327693223953;
	setAttr ".re" 15;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode groupParts -n "groupParts2";
	rename -uid "FE6B66C8-534A-9413-8FEF-DCA6E2FFC155";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[18:47]";
createNode groupParts -n "groupParts1";
	rename -uid "D07686C9-8E46-4FDE-6237-508C21C56320";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:17]";
createNode groupId -n "groupId1";
	rename -uid "6F504DE3-D942-EAC6-97FC-E690291AE2B0";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2";
	rename -uid "B6C2901D-6940-A55F-E546-1B95A5269D85";
	setAttr ".ihi" 0;
createNode shadingEngine -n "lambert2SG";
	rename -uid "A9583792-B845-7BAA-78A6-1D8A780BE8A7";
	setAttr ".ihi" 0;
	setAttr -s 5 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 5 ".gn";
createNode materialInfo -n "materialInfo1";
	rename -uid "F45B11C3-5542-A063-CBC1-DD94D0A77A8D";
createNode lambert -n "bark";
	rename -uid "49118E32-3A44-EF90-F4C2-01842B628167";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 1 1 1 ;
createNode shadingEngine -n "lambert3SG";
	rename -uid "93DB0F98-7742-D153-E99A-30B50CDE85CF";
	setAttr ".ihi" 0;
	setAttr -s 5 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 5 ".gn";
createNode materialInfo -n "materialInfo2";
	rename -uid "F4781A30-394C-36AB-FAAB-0CB864EF6091";
createNode lambert -n "leaves";
	rename -uid "AB7F7F5C-8C44-BB72-E4FF-9A8AF6002423";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 1 0.33610001 0 ;
	setAttr ".ambc" -type "float3" 0.41463339 0.41463339 0.41463339 ;
createNode groupId -n "groupId11";
	rename -uid "6D2232A3-D647-5FBF-CB01-B295D7262AF3";
	setAttr ".ihi" 0;
createNode groupId -n "groupId12";
	rename -uid "561F2077-AA4B-74F5-FA55-928A8291731C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId15";
	rename -uid "C31EB7EF-4E42-668C-A984-C98975D6F274";
	setAttr ".ihi" 0;
createNode groupId -n "groupId16";
	rename -uid "50301F41-EC4E-1811-2F58-B7AC617E0736";
	setAttr ".ihi" 0;
createNode groupId -n "groupId19";
	rename -uid "19E20AA8-8040-C54F-C914-FBAC3170323D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId20";
	rename -uid "4F46AA34-6C49-2B70-AF1D-27A41E6CFB1C";
	setAttr ".ihi" 0;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "9D8C123C-B840-DD0B-B8AE-84BB657866B0";
	setAttr -s 8 ".lnk";
	setAttr -s 8 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "FBD36088-9144-286A-9E53-3D8FAB385EF3";
createNode displayLayer -n "defaultLayer";
	rename -uid "AAE8FAC6-4246-7BDA-F72B-4D935D492A1E";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "E9A81A2A-1D40-AB42-2560-9F8C679767E6";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "DFB4E7A9-984A-DFFA-81F7-51B4AC754576";
	setAttr ".g" yes;
createNode polySeparate -n "polySeparate1";
	rename -uid "51A3C1F5-AE47-475A-6DE6-5F90103D7E51";
	setAttr ".ic" 6;
	setAttr -s 6 ".out";
createNode groupId -n "groupId23";
	rename -uid "0334E9DB-F142-D371-D44D-03913C50BBB5";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts23";
	rename -uid "6287F2E9-894D-A048-5AFC-6FB97E504D69";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 66 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]" "f[12]" "f[13]" "f[14]" "f[15]" "f[16]" "f[17]" "f[18]" "f[19]" "f[20]" "f[21]" "f[22]" "f[23]" "f[24]" "f[25]" "f[26]" "f[27]" "f[28]" "f[29]" "f[30]" "f[31]" "f[32]" "f[33]" "f[34]" "f[35]" "f[36]" "f[37]" "f[38]" "f[39]" "f[40]" "f[41]" "f[42]" "f[43]" "f[44]" "f[45]" "f[46]" "f[47]" "f[48]" "f[49]" "f[50]" "f[51]" "f[52]" "f[53]" "f[54]" "f[55]" "f[56]" "f[57]" "f[58]" "f[59]" "f[60]" "f[61]" "f[62]" "f[63]" "f[64]" "f[65]";
createNode groupId -n "groupId24";
	rename -uid "E5229329-5D4C-5A4E-4A53-62952BBCD2F9";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts24";
	rename -uid "01F05541-8847-DB68-2E15-1FB910C0B19F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 62 "vtx[0]" "vtx[1]" "vtx[2]" "vtx[3]" "vtx[4]" "vtx[5]" "vtx[6]" "vtx[7]" "vtx[8]" "vtx[9]" "vtx[10]" "vtx[11]" "vtx[12]" "vtx[13]" "vtx[14]" "vtx[15]" "vtx[16]" "vtx[17]" "vtx[18]" "vtx[19]" "vtx[20]" "vtx[21]" "vtx[22]" "vtx[23]" "vtx[24]" "vtx[25]" "vtx[26]" "vtx[27]" "vtx[28]" "vtx[29]" "vtx[30]" "vtx[31]" "vtx[32]" "vtx[33]" "vtx[34]" "vtx[35]" "vtx[36]" "vtx[37]" "vtx[38]" "vtx[39]" "vtx[40]" "vtx[41]" "vtx[42]" "vtx[43]" "vtx[44]" "vtx[45]" "vtx[46]" "vtx[47]" "vtx[48]" "vtx[49]" "vtx[50]" "vtx[51]" "vtx[52]" "vtx[53]" "vtx[54]" "vtx[55]" "vtx[56]" "vtx[57]" "vtx[58]" "vtx[59]" "vtx[60]" "vtx[61]";
createNode groupId -n "groupId25";
	rename -uid "9209A73E-9345-97FD-44C6-7C82969B18E1";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts25";
	rename -uid "9B6CEA10-3845-4BE7-7FFD-07BF9EB20EB0";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 30 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]" "f[12]" "f[13]" "f[14]" "f[15]" "f[16]" "f[17]" "f[18]" "f[19]" "f[20]" "f[21]" "f[22]" "f[23]" "f[24]" "f[25]" "f[26]" "f[27]" "f[28]" "f[29]";
createNode groupId -n "groupId26";
	rename -uid "15DC1F9B-C549-C7E0-8007-AEACEB13F218";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts26";
	rename -uid "9AC7060F-EC4F-65B5-75B9-8FBD2E519DDF";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 26 "vtx[0]" "vtx[1]" "vtx[2]" "vtx[3]" "vtx[4]" "vtx[5]" "vtx[6]" "vtx[7]" "vtx[8]" "vtx[9]" "vtx[10]" "vtx[11]" "vtx[12]" "vtx[13]" "vtx[14]" "vtx[15]" "vtx[16]" "vtx[17]" "vtx[18]" "vtx[19]" "vtx[20]" "vtx[21]" "vtx[22]" "vtx[23]" "vtx[24]" "vtx[25]";
createNode groupId -n "groupId27";
	rename -uid "168BC7FB-C847-95B7-6574-08BC995A151B";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts27";
	rename -uid "00DC15E5-5743-CCD7-548E-18A80C046714";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 66 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]" "f[12]" "f[13]" "f[14]" "f[15]" "f[16]" "f[17]" "f[18]" "f[19]" "f[20]" "f[21]" "f[22]" "f[23]" "f[24]" "f[25]" "f[26]" "f[27]" "f[28]" "f[29]" "f[30]" "f[31]" "f[32]" "f[33]" "f[34]" "f[35]" "f[36]" "f[37]" "f[38]" "f[39]" "f[40]" "f[41]" "f[42]" "f[43]" "f[44]" "f[45]" "f[46]" "f[47]" "f[48]" "f[49]" "f[50]" "f[51]" "f[52]" "f[53]" "f[54]" "f[55]" "f[56]" "f[57]" "f[58]" "f[59]" "f[60]" "f[61]" "f[62]" "f[63]" "f[64]" "f[65]";
createNode groupId -n "groupId29";
	rename -uid "C1609BF7-1A4C-91F3-6581-9D907F1BDEC3";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts29";
	rename -uid "3995416B-744D-0ABE-BAA4-9FB71BE75A9A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 62 "vtx[0]" "vtx[1]" "vtx[2]" "vtx[3]" "vtx[4]" "vtx[5]" "vtx[6]" "vtx[7]" "vtx[8]" "vtx[9]" "vtx[10]" "vtx[11]" "vtx[12]" "vtx[13]" "vtx[14]" "vtx[15]" "vtx[16]" "vtx[17]" "vtx[18]" "vtx[19]" "vtx[20]" "vtx[21]" "vtx[22]" "vtx[23]" "vtx[24]" "vtx[25]" "vtx[26]" "vtx[27]" "vtx[28]" "vtx[29]" "vtx[30]" "vtx[31]" "vtx[32]" "vtx[33]" "vtx[34]" "vtx[35]" "vtx[36]" "vtx[37]" "vtx[38]" "vtx[39]" "vtx[40]" "vtx[41]" "vtx[42]" "vtx[43]" "vtx[44]" "vtx[45]" "vtx[46]" "vtx[47]" "vtx[48]" "vtx[49]" "vtx[50]" "vtx[51]" "vtx[52]" "vtx[53]" "vtx[54]" "vtx[55]" "vtx[56]" "vtx[57]" "vtx[58]" "vtx[59]" "vtx[60]" "vtx[61]";
createNode groupId -n "groupId30";
	rename -uid "324EE2A3-FF4D-6864-BF73-2D94D3FCDAB4";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts30";
	rename -uid "24DF6ECC-804E-52F0-386F-A2BFAFDF73FB";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 30 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]" "f[12]" "f[13]" "f[14]" "f[15]" "f[16]" "f[17]" "f[18]" "f[19]" "f[20]" "f[21]" "f[22]" "f[23]" "f[24]" "f[25]" "f[26]" "f[27]" "f[28]" "f[29]";
createNode groupId -n "groupId32";
	rename -uid "E059DC29-D04C-C79A-7161-7FA789051718";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts32";
	rename -uid "83BEE465-2F42-E485-01AD-92B5D9A011DA";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 26 "vtx[0]" "vtx[1]" "vtx[2]" "vtx[3]" "vtx[4]" "vtx[5]" "vtx[6]" "vtx[7]" "vtx[8]" "vtx[9]" "vtx[10]" "vtx[11]" "vtx[12]" "vtx[13]" "vtx[14]" "vtx[15]" "vtx[16]" "vtx[17]" "vtx[18]" "vtx[19]" "vtx[20]" "vtx[21]" "vtx[22]" "vtx[23]" "vtx[24]" "vtx[25]";
createNode groupId -n "groupId33";
	rename -uid "EBB31CEB-904C-AF16-0C8B-E4AC3B80714D";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts33";
	rename -uid "A92D4A1F-A24D-7FB1-2D09-588FFE7DA2FE";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 66 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]" "f[12]" "f[13]" "f[14]" "f[15]" "f[16]" "f[17]" "f[18]" "f[19]" "f[20]" "f[21]" "f[22]" "f[23]" "f[24]" "f[25]" "f[26]" "f[27]" "f[28]" "f[29]" "f[30]" "f[31]" "f[32]" "f[33]" "f[34]" "f[35]" "f[36]" "f[37]" "f[38]" "f[39]" "f[40]" "f[41]" "f[42]" "f[43]" "f[44]" "f[45]" "f[46]" "f[47]" "f[48]" "f[49]" "f[50]" "f[51]" "f[52]" "f[53]" "f[54]" "f[55]" "f[56]" "f[57]" "f[58]" "f[59]" "f[60]" "f[61]" "f[62]" "f[63]" "f[64]" "f[65]";
createNode groupId -n "groupId34";
	rename -uid "531CD3A6-2241-C1C6-DD0F-70A067E98C35";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts34";
	rename -uid "F412BAC3-DE4A-050C-6465-D385DFB015DE";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 62 "vtx[0]" "vtx[1]" "vtx[2]" "vtx[3]" "vtx[4]" "vtx[5]" "vtx[6]" "vtx[7]" "vtx[8]" "vtx[9]" "vtx[10]" "vtx[11]" "vtx[12]" "vtx[13]" "vtx[14]" "vtx[15]" "vtx[16]" "vtx[17]" "vtx[18]" "vtx[19]" "vtx[20]" "vtx[21]" "vtx[22]" "vtx[23]" "vtx[24]" "vtx[25]" "vtx[26]" "vtx[27]" "vtx[28]" "vtx[29]" "vtx[30]" "vtx[31]" "vtx[32]" "vtx[33]" "vtx[34]" "vtx[35]" "vtx[36]" "vtx[37]" "vtx[38]" "vtx[39]" "vtx[40]" "vtx[41]" "vtx[42]" "vtx[43]" "vtx[44]" "vtx[45]" "vtx[46]" "vtx[47]" "vtx[48]" "vtx[49]" "vtx[50]" "vtx[51]" "vtx[52]" "vtx[53]" "vtx[54]" "vtx[55]" "vtx[56]" "vtx[57]" "vtx[58]" "vtx[59]" "vtx[60]" "vtx[61]";
createNode groupId -n "groupId35";
	rename -uid "3C45C324-0F4A-084A-1ABF-1F960D24E67B";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts35";
	rename -uid "3AB585E6-B64E-EAAC-D7CD-3FB05D3525EE";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 30 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]" "f[12]" "f[13]" "f[14]" "f[15]" "f[16]" "f[17]" "f[18]" "f[19]" "f[20]" "f[21]" "f[22]" "f[23]" "f[24]" "f[25]" "f[26]" "f[27]" "f[28]" "f[29]";
createNode groupId -n "groupId36";
	rename -uid "847BA494-7947-D291-B2D1-DA8F3982CF8B";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts36";
	rename -uid "4278D659-8A46-6FEE-95C0-FCBE7D81898F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 26 "vtx[0]" "vtx[1]" "vtx[2]" "vtx[3]" "vtx[4]" "vtx[5]" "vtx[6]" "vtx[7]" "vtx[8]" "vtx[9]" "vtx[10]" "vtx[11]" "vtx[12]" "vtx[13]" "vtx[14]" "vtx[15]" "vtx[16]" "vtx[17]" "vtx[18]" "vtx[19]" "vtx[20]" "vtx[21]" "vtx[22]" "vtx[23]" "vtx[24]" "vtx[25]";
createNode polyUnite -n "polyUnite2";
	rename -uid "8311ABB6-5945-F25E-2C72-1D8BD3B7C710";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
createNode groupId -n "groupId37";
	rename -uid "B74612BA-7147-220E-F2FC-42A793C32AF8";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts37";
	rename -uid "42603D7B-0441-ED7B-1DA3-F4BA6ABA5EA8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:65]";
createNode groupId -n "groupId38";
	rename -uid "8F3C1206-254C-301E-D537-EE9D89F5A11F";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts38";
	rename -uid "2DDEC442-094C-9388-B5CE-71AC34CF1F81";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[0:87]";
createNode groupId -n "groupId39";
	rename -uid "C23B2726-7F4A-DDD4-7882-D2A04B540094";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts39";
	rename -uid "C4BFEF1D-B240-BC5C-695C-D1B9AD6ABB96";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[66:95]";
createNode polyUnite -n "polyUnite3";
	rename -uid "54BAE948-B04B-5E2A-71A4-CC89A18C905D";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
createNode groupId -n "groupId40";
	rename -uid "2B9FEE5F-3842-5F05-7382-9F8B6189BBA4";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts40";
	rename -uid "519CE531-E340-380E-0121-809BBE7A9483";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:65]";
createNode groupId -n "groupId41";
	rename -uid "3234DD33-3E40-CB7F-E66E-9097B54529CE";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts41";
	rename -uid "B69DBED7-7B4B-EE23-4A87-F1A8048431EF";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[0:87]";
createNode groupId -n "groupId42";
	rename -uid "5A0E0BEF-564E-F7D6-8F7C-E4B69D3C206B";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts42";
	rename -uid "F0D78801-B246-E4AC-FC00-26A2B49887FD";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[66:95]";
createNode polyUnite -n "polyUnite4";
	rename -uid "CF7AA760-D84C-E93B-B2A4-59BE4A8580A9";
	setAttr -s 4 ".ip";
	setAttr -s 4 ".im";
createNode groupId -n "groupId43";
	rename -uid "189BDC8B-D642-D399-1C28-6E8803AD5A21";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts43";
	rename -uid "7D96EF95-5945-0B34-4BE7-5FB1B5483CE4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:65]";
createNode groupId -n "groupId44";
	rename -uid "4D887D68-BB41-4BA4-55EA-2F91F32FBE4E";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts44";
	rename -uid "D91E12DD-254C-DBBC-B853-E4B37F6FB324";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[0:87]";
createNode groupId -n "groupId45";
	rename -uid "1F38EFD7-2943-23AB-C578-4BAB2533BD06";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts45";
	rename -uid "DBD3A204-AE4F-ABC9-A37F-10BB40CC0104";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[66:95]";
createNode groupId -n "groupId46";
	rename -uid "8F5ADBF0-6740-6A19-09F2-559E209A511D";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts46";
	rename -uid "55071D10-BD48-A84F-58D7-4094E6C9E0FF";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[96:125]";
createNode groupId -n "groupId48";
	rename -uid "CC983959-194B-8D07-3494-FDA72803507F";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts48";
	rename -uid "DF5BE329-E942-4FAA-EA08-1ABF4CE344C4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "vtx[88:113]" "vtx[202:263]";
createNode groupId -n "groupId49";
	rename -uid "E4514FB1-C54C-0BBF-7F05-7BB154E9D97E";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts49";
	rename -uid "078CE865-E848-A65C-28F4-F5A994C7A19C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[126:191]";
createNode groupId -n "groupId50";
	rename -uid "5F17158F-B840-B6B0-9693-D3A3FBEF542F";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts50";
	rename -uid "9FE92155-D648-E3B6-EE0A-53938EDB89C4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[114:201]";
createNode groupId -n "groupId51";
	rename -uid "658C4169-DD4F-E699-DB5B-78BA45F1F26A";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts51";
	rename -uid "AAD8EF02-BA43-19D9-2238-368CC4AEEF4D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[192:221]";
createNode groupId -n "groupId52";
	rename -uid "E1674FD1-8B42-6234-0C1C-D2BAA5CE7156";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts52";
	rename -uid "E95F2A4E-6D4C-34B1-F903-E8B7115041E4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[222:287]";
createNode skinCluster -n "skinCluster1";
	rename -uid "124FCF04-F540-CC00-E149-FBB7EAAC5D30";
	setAttr -s 264 ".wl";
	setAttr -s 3 ".wl[0].w[1:3]"  9.6494866590877631e-05 0.99963726300419742 
		0.00026624212921173525;
	setAttr -s 3 ".wl[1].w[1:3]"  0.00025833092137950961 0.998818589596423 
		0.00092307948219750419;
	setAttr -s 3 ".wl[2].w[1:3]"  0.00033931508851574874 0.99827221248068043 
		0.0013884724308038789;
	setAttr -s 3 ".wl[3].w[1:3]"  0.00044016569615089871 0.99797647010232515 
		0.0015833642015239584;
	setAttr -s 3 ".wl[4].w[1:3]"  0.00026044439211534559 0.9990157708578945 
		0.00072378474999015266;
	setAttr -s 3 ".wl[5].w[1:3]"  3.3986956337406797e-05 0.99988313487587277 
		8.2878167789825262e-05;
	setAttr -s 3 ".wl[6].w[4:6]"  0.35854012648315803 0.35832773573659626 
		0.28313213778024565;
	setAttr -s 3 ".wl[7].w[4:6]"  0.35785101589376667 0.35783089141037044 
		0.28431809269586295;
	setAttr -s 3 ".wl[8].w[4:6]"  0.35752772809501399 0.35752822730412531 
		0.2849440446008607;
	setAttr -s 3 ".wl[9].w[4:6]"  0.35783511346142755 0.35781500461455901 
		0.28434988192401345;
	setAttr -s 3 ".wl[10].w[4:6]"  0.35852446108127173 0.3583122290252222 
		0.28316330989350602;
	setAttr -s 3 ".wl[11].w[4:6]"  0.35890454347391859 0.35852530845586211 
		0.28257014807021924;
	setAttr -s 3 ".wl[12].w[1:3]"  1.1821307911471769e-05 0.99995071438730154 
		3.7464304787050259e-05;
	setAttr -s 3 ".wl[13].w[4:6]"  0.35819126179054073 0.35809950205509183 
		0.28370923615436738;
	setAttr -s 3 ".wl[14].w[1:3]"  0.0039705232029280165 0.69081440153047391 
		0.30521507526659802;
	setAttr -s 3 ".wl[15].w[1:3]"  0.0027036086296887006 0.70470989178773258 
		0.29258649958257871;
	setAttr -s 3 ".wl[16].w[1:3]"  0.0039463759836129691 0.69365878990817298 
		0.30239483410821411;
	setAttr -s 3 ".wl[17].w[1:3]"  0.006900129852561541 0.68419184062173666 
		0.30890802952570184;
	setAttr -s 3 ".wl[18].w[1:3]"  0.0085959190143260426 0.68229051621008707 
		0.30911356477558694;
	setAttr -s 3 ".wl[19].w[1:3]"  0.0069292740638632931 0.68183458667638164 
		0.31123613925975502;
	setAttr -s 3 ".wl[20].w[2:4]"  0.41100834205360731 0.55249212627495237 
		0.036499531671440377;
	setAttr -s 3 ".wl[21].w[2:4]"  0.39699494866966234 0.56844588227947657 
		0.034559169050861115;
	setAttr -s 3 ".wl[22].w[2:4]"  0.41026747968683219 0.55319202013753699 
		0.036540500175630812;
	setAttr -s 3 ".wl[23].w[2:4]"  0.43134011957602203 0.52876565256116259 
		0.039894227862815324;
	setAttr -s 3 ".wl[24].w[2:4]"  0.43968755360210082 0.51901393494861303 
		0.041298511449286208;
	setAttr -s 3 ".wl[25].w[2:4]"  0.43191297211897239 0.52824885925236931 
		0.039838168628658362;
	setAttr -s 3 ".wl[26].w[2:4]"  0.26772043237478843 0.55028853353823326 
		0.18199103408697836;
	setAttr -s 3 ".wl[27].w[2:4]"  0.25594408614039227 0.56150322830327548 
		0.18255268555633228;
	setAttr -s 3 ".wl[28].w[2:4]"  0.26702416622466651 0.55075805297749292 
		0.18221778079784057;
	setAttr -s 3 ".wl[29].w[2:4]"  0.28794108111675487 0.531447994385844 
		0.18061092449740107;
	setAttr -s 3 ".wl[30].w[2:4]"  0.29779894247210764 0.52277167574096162 
		0.17942938178693077;
	setAttr -s 3 ".wl[31].w[2:4]"  0.28857710642342016 0.53104954512428737 
		0.18037334845229244;
	setAttr -s 3 ".wl[32].w[2:4]"  0.18002868662034704 0.46596596133145979 
		0.35400535204819322;
	setAttr -s 3 ".wl[33].w[2:4]"  0.17166121400637283 0.46953789494278253 
		0.35880089105084467;
	setAttr -s 3 ".wl[34].w[2:4]"  0.17951937925930284 0.46611049682406414 
		0.35437012391663303;
	setAttr -s 3 ".wl[35].w[2:4]"  0.19516105277720494 0.45945838567918673 
		0.3453805615436083;
	setAttr -s 3 ".wl[36].w[2:4]"  0.20292475198130305 0.45623686879078873 
		0.34083837922790816;
	setAttr -s 3 ".wl[37].w[2:4]"  0.19565151869346026 0.45932146798105228 
		0.34502701332548752;
	setAttr -s 3 ".wl[38].w[3:5]"  0.41966342612525026 0.41621785942699668 
		0.16411871444775303;
	setAttr -s 3 ".wl[39].w[3:5]"  0.41977777839704439 0.41726902754098966 
		0.16295319406196604;
	setAttr -s 3 ".wl[40].w[3:5]"  0.41971351097432735 0.41634295997747611 
		0.16394352904819656;
	setAttr -s 3 ".wl[41].w[3:5]"  0.4198054248087385 0.4143495181963992 
		0.16584505699486227;
	setAttr -s 3 ".wl[42].w[3:5]"  0.41996087125970344 0.41328453992845759 
		0.16675458881183891;
	setAttr -s 3 ".wl[43].w[3:5]"  0.41977083667106435 0.41422478325058903 
		0.1660043800783467;
	setAttr -s 3 ".wl[44].w[3:5]"  0.36118303473702962 0.37887232587501712 
		0.25994463938795315;
	setAttr -s 3 ".wl[45].w[3:5]"  0.35940724101206389 0.37956002510831777 
		0.26103273387961839;
	setAttr -s 3 ".wl[46].w[3:5]"  0.36121103712809211 0.37892616243164423 
		0.25986280044026372;
	setAttr -s 3 ".wl[47].w[3:5]"  0.36442003791904171 0.37787236937251667 
		0.25770759270844162;
	setAttr -s 3 ".wl[48].w[3:5]"  0.36584049398109386 0.37744416109079953 
		0.25671534492810655;
	setAttr -s 3 ".wl[49].w[3:5]"  0.36438963367790328 0.37782328803508042 
		0.25778707828701625;
	setAttr -s 3 ".wl[50].w[3:5]"  0.31082837667042751 0.36516693268646794 
		0.32400469064310461;
	setAttr -s 3 ".wl[51].w[3:5]"  0.30790143640083145 0.36605271339326417 
		0.32604585020590432;
	setAttr -s 3 ".wl[52].w[3:5]"  0.31080618688100453 0.36519939937064644 
		0.32399441374834903;
	setAttr -s 3 ".wl[53].w[3:5]"  0.31624693183145108 0.36365647079985192 
		0.32009659736869706;
	setAttr -s 3 ".wl[54].w[3:5]"  0.3187912429928238 0.36296305529045975 
		0.31824570171671651;
	setAttr -s 3 ".wl[55].w[3:5]"  0.3162633811415167 0.3636269129130279 
		0.32010970594545546;
	setAttr -s 3 ".wl[56].w[3:5]"  0.27407325140066174 0.36540273488653113 
		0.36052401371280723;
	setAttr -s 3 ".wl[57].w[3:5]"  0.27098073708539894 0.36663540707259673 
		0.36238385584200422;
	setAttr -s 3 ".wl[58].w[3:5]"  0.27403130945995541 0.36542585417077439 
		0.36054283636927015;
	setAttr -s 3 ".wl[59].w[3:5]"  0.27987632042477767 0.36317215992181123 
		0.35695151965341115;
	setAttr -s 3 ".wl[60].w[3:5]"  0.28267349483184184 0.3621242654222035 
		0.35520223974595466;
	setAttr -s 3 ".wl[61].w[3:5]"  0.27991311879879399 0.36315115424681615 
		0.35693572695438974;
	setAttr -s 3 ".wl[62].w[4:6]"  0.35735173221795929 0.3562800452738667 
		0.28636822250817401;
	setAttr -s 3 ".wl[63].w[4:6]"  0.34904493501840617 0.35228778011633083 
		0.29866728486526301;
	setAttr -s 3 ".wl[64].w[4:6]"  0.33941972852027652 0.35300157843391922 
		0.30757869304580432;
	setAttr -s 3 ".wl[65].w[4:6]"  0.34894414663428763 0.35216303396414972 
		0.29889281940156265;
	setAttr -s 3 ".wl[66].w[4:6]"  0.35724323672078445 0.35617727778384617 
		0.28657948549536938;
	setAttr -s 3 ".wl[67].w[3:5]"  0.29956987001442353 0.35252877364545909 
		0.34790135634011737;
	setAttr -s 3 ".wl[68].w[4:6]"  0.33998175203860104 0.34259355892930288 
		0.31742468903209603;
	setAttr -s 3 ".wl[69].w[4:6]"  0.30954371381667839 0.3476275424665497 
		0.34282874371677191;
	setAttr -s 3 ".wl[70].w[4:6]"  0.2720134973334466 0.36399323858756455 
		0.36399326407898885;
	setAttr -s 3 ".wl[71].w[4:6]"  0.30975394843176685 0.34749927978252215 
		0.342746771785711;
	setAttr -s 3 ".wl[72].w[4:6]"  0.33994469719833403 0.34254088282304485 
		0.31751441997862101;
	setAttr -s 3 ".wl[73].w[4:6]"  0.34576156629377652 0.34575210721898464 
		0.30848632648723878;
	setAttr -s 3 ".wl[74].w[4:6]"  0.31855771055571547 0.34139055930482304 
		0.34005173013946155;
	setAttr -s 3 ".wl[75].w[4:6]"  0.27971075941553952 0.35748211971937899 
		0.36280712086508154;
	setAttr -s 3 ".wl[76].w[4:6]"  0.24286068298093799 0.36477186751229707 
		0.39236744950676494;
	setAttr -s 3 ".wl[77].w[4:6]"  0.27968436840532451 0.35687579056595331 
		0.36343984102872229;
	setAttr -s 3 ".wl[78].w[4:6]"  0.31862483977381922 0.34135378249596193 
		0.34002137773021873;
	setAttr -s 3 ".wl[79].w[4:6]"  0.32904275281838635 0.33855001074578162 
		0.33240723643583209;
	setAttr -s 3 ".wl[80].w[4:6]"  0.29659361571739273 0.34944511022336305 
		0.3539612740592441;
	setAttr -s 3 ".wl[81].w[4:6]"  0.27105777206265519 0.35410566287092243 
		0.37483656506642243;
	setAttr -s 3 ".wl[82].w[5:7]"  0.34302719903792517 0.37994947627436887 
		0.27702332468770591;
	setAttr -s 3 ".wl[83].w[5:7]"  0.35322185465238698 0.37521027792469452 
		0.2715678674229185;
	setAttr -s 3 ".wl[84].w[4:6]"  0.29652056668277516 0.34921310451161341 
		0.35426632880561143;
	setAttr -s 3 ".wl[85].w[4:6]"  0.30593474995238729 0.34632548904878441 
		0.34773976099882831;
	setAttr -s 3 ".wl[86].w[4:6]"  0.36546589180499278 0.36351320464736459 
		0.27102090354764274;
	setAttr -s 3 ".wl[87].w[5:7]"  0.35022090990985738 0.36896009714765615 
		0.28081899294248641;
	setAttr -s 3 ".wl[88].w[4:6]"  0.41733175825311386 0.42693543052940391 
		0.15573281121748236;
	setAttr -s 3 ".wl[89].w[4:6]"  0.4173317596591149 0.42693543228872916 
		0.155732808052156;
	setAttr -s 3 ".wl[90].w[4:6]"  0.41560500275641277 0.42478526318269499 
		0.15960973406089229;
	setAttr -s 3 ".wl[91].w[4:6]"  0.41393957437396683 0.42273038471434443 
		0.16333004091168879;
	setAttr -s 3 ".wl[92].w[4:6]"  0.41393958028692629 0.42273039197867535 
		0.16333002773439823;
	setAttr -s 3 ".wl[93].w[4:6]"  0.41560500246464499 0.42478526282111412 
		0.15960973471424084;
	setAttr -s 3 ".wl[94].w[4:6]"  0.21134563899400025 0.39415423111170361 
		0.39450012989429611;
	setAttr -s 3 ".wl[95].w[4:6]"  0.21134563051628202 0.39415423538890498 
		0.39450013409481299;
	setAttr -s 3 ".wl[96].w[4:6]"  0.21329825383192449 0.39280221719356961 
		0.39389952897450581;
	setAttr -s 3 ".wl[97].w[4:6]"  0.21509362223692133 0.39133503905666706 
		0.3935713387064117;
	setAttr -s 3 ".wl[98].w[4:6]"  0.21509362046008346 0.39133503984790324 
		0.3935713396920133;
	setAttr -s 3 ".wl[99].w[4:6]"  0.21329825415415335 0.39280221695071865 
		0.39389952889512803;
	setAttr -s 3 ".wl[100].w[5:7]"  0.2393695089072172 0.50793247063211955 
		0.25269802046066325;
	setAttr -s 3 ".wl[101].w[5:7]"  0.23936950360977019 0.50793248367377586 
		0.25269801271645392;
	setAttr -s 3 ".wl[102].w[5:7]"  0.23209399797545952 0.50867947175356432 
		0.2592265302709762;
	setAttr -s 3 ".wl[103].w[5:7]"  0.22482381048658742 0.50938052182315907 
		0.26579566769025359;
	setAttr -s 3 ".wl[104].w[5:7]"  0.22482380784696301 0.50938052535892464 
		0.26579566679411237;
	setAttr -s 3 ".wl[105].w[5:7]"  0.23209399672392103 0.50867947187819951 
		0.25922653139787938;
	setAttr -s 3 ".wl[106].w[5:7]"  0.031890953941676375 0.4988662285721206 
		0.46924281748620306;
	setAttr -s 3 ".wl[107].w[5:7]"  0.031890953805716431 0.49886622943869152 
		0.46924281675559215;
	setAttr -s 3 ".wl[108].w[5:7]"  0.029301594735392757 0.49825305199812181 
		0.47244535326648546;
	setAttr -s 3 ".wl[109].w[5:7]"  0.026789011076443651 0.49765294008736893 
		0.47555804883618741;
	setAttr -s 3 ".wl[110].w[5:7]"  0.0267890060559332 0.49765294431149976 
		0.47555804963256709;
	setAttr -s 3 ".wl[111].w[5:7]"  0.029301594296396449 0.49825305189351482 
		0.47244535381008873;
	setAttr -s 3 ".wl[112].w[3:5]"  8.3733247699541135e-06 0.99938599610072354 
		0.0006056305745064781;
	setAttr -s 3 ".wl[113].w[5:7]"  0.00020849652880780168 0.49989575173559608 
		0.49989575173559608;
	setAttr -s 3 ".wl[114].w[0:2]"  0.00016290979754195347 0.99964492341096245 
		0.00019216679149555352;
	setAttr -s 3 ".wl[115].w[0:2]"  0.0010262400597027363 0.99803735783878056 
		0.00093640210151668928;
	setAttr -s 3 ".wl[116].w[0:2]"  0.0021981519292999774 0.99603462000324372 
		0.0017672280674562516;
	setAttr -s 3 ".wl[117].w[0:2]"  0.0024434082750382472 0.99532547710960539 
		0.0022311146153563589;
	setAttr -s 3 ".wl[118].w[0:2]"  0.0010656405462461586 0.99767898202652072 
		0.0012553774272331792;
	setAttr -s 3 ".wl[119].w[0:2]"  9.8823202715444758e-05 0.9997685415288674 
		0.00013263526841706186;
	setAttr -s 3 ".wl[120].w[3:5]"  0.29633222662229752 0.3559850147383295 
		0.34768275863937287;
	setAttr -s 3 ".wl[121].w[3:5]"  0.30122970999787291 0.35419950494835506 
		0.34457078505377209;
	setAttr -s 3 ".wl[122].w[3:5]"  0.30352009605675873 0.35338989819159894 
		0.34309000575164239;
	setAttr -s 3 ".wl[123].w[3:5]"  0.30125301466594323 0.35418392247345476 
		0.34456306286060201;
	setAttr -s 3 ".wl[124].w[3:5]"  0.29636021232423754 0.3559674256197069 
		0.34767236205605562;
	setAttr -s 3 ".wl[125].w[3:5]"  0.29371516881766635 0.35696694384238903 
		0.34931788733994457;
	setAttr -s 3 ".wl[126].w[0:2]"  0.00010788481752199969 0.99978022197159055 
		0.00011189321088746086;
	setAttr -s 3 ".wl[127].w[3:5]"  0.29882448494068564 0.35507061991093797 
		0.34610489514837639;
	setAttr -s 3 ".wl[128].w[0:2]"  0.011453413927584644 0.623942098574092 
		0.36460448749832347;
	setAttr -s 3 ".wl[129].w[0:2]"  0.014103553895077437 0.62348165548781087 
		0.36241479061711168;
	setAttr -s 3 ".wl[130].w[0:2]"  0.010938075494718298 0.62824748096385774 
		0.36081444354142411;
	setAttr -s 3 ".wl[131].w[0:2]"  0.0059167084757399862 0.64166454340484624 
		0.35241874811941382;
	setAttr -s 3 ".wl[132].w[0:2]"  0.0040150472298913992 0.65256944237321513 
		0.34341551039689344;
	setAttr -s 3 ".wl[133].w[0:2]"  0.0063451487610883626 0.63520420802727939 
		0.35845064321163217;
	setAttr -s 3 ".wl[134].w[1:3]"  0.35099964464825162 0.55968114690510851 
		0.089319208446639903;
	setAttr -s 3 ".wl[135].w[1:3]"  0.36366412754695948 0.54496085177363474 
		0.0913750206794057;
	setAttr -s 3 ".wl[136].w[1:3]"  0.35138104965922745 0.56018190405562518 
		0.088437046285147383;
	setAttr -s 3 ".wl[137].w[1:3]"  0.32014521044361288 0.59797900060945863 
		0.08187578894692854;
	setAttr -s 3 ".wl[138].w[1:3]"  0.30050335571191894 0.62143782193767971 
		0.07805882235040125;
	setAttr -s 3 ".wl[139].w[1:3]"  0.31996117079293379 0.59721955502963853 
		0.082819274177427724;
	setAttr -s 3 ".wl[140].w[1:3]"  0.17440723743087638 0.48870921718605598 
		0.33688354538306764;
	setAttr -s 3 ".wl[141].w[1:3]"  0.18481958899484069 0.48296291523375223 
		0.33221749577140713;
	setAttr -s 3 ".wl[142].w[1:3]"  0.17472863456525967 0.48904095787597612 
		0.33623040755876427;
	setAttr -s 3 ".wl[143].w[1:3]"  0.15303747994310934 0.50212114612705372 
		0.34484137392983705;
	setAttr -s 3 ".wl[144].w[1:3]"  0.14147380909907786 0.50914916514088959 
		0.34937702576003249;
	setAttr -s 3 ".wl[145].w[1:3]"  0.15274840062959125 0.50171829335546447 
		0.34553330601494425;
	setAttr -s 3 ".wl[146].w[2:4]"  0.44163528875641578 0.44169293344476002 
		0.11667177779882423;
	setAttr -s 3 ".wl[147].w[1:3]"  0.12250009672631519 0.43875341798949541 
		0.43874648528418936;
	setAttr -s 3 ".wl[148].w[2:4]"  0.44153081691744378 0.44160513849695165 
		0.1168640445856047;
	setAttr -s 3 ".wl[149].w[2:4]"  0.44371323734998724 0.44473471814025273 
		0.1115520445097601;
	setAttr -s 3 ".wl[150].w[2:4]"  0.44478949297420867 0.44673900310462522 
		0.10847150392116617;
	setAttr -s 3 ".wl[151].w[2:4]"  0.44384345152690519 0.4447967431926545 
		0.11135980528044034;
	setAttr -s 3 ".wl[152].w[2:4]"  0.33905327824109371 0.40887795967310719 
		0.25206876208579904;
	setAttr -s 3 ".wl[153].w[2:4]"  0.34249897018237024 0.40635258655536927 
		0.25114844326226049;
	setAttr -s 3 ".wl[154].w[2:4]"  0.33870879768614864 0.40892406899675371 
		0.2523671333170977;
	setAttr -s 3 ".wl[155].w[2:4]"  0.33056250590733099 0.41485608614605696 
		0.25458140794661205;
	setAttr -s 3 ".wl[156].w[2:4]"  0.32617784854509135 0.4182662030279104 
		0.25555594842699825;
	setAttr -s 3 ".wl[157].w[2:4]"  0.33094201195768091 0.41479171317860358 
		0.25426627486371556;
	setAttr -s 3 ".wl[158].w[2:4]"  0.24262483205752797 0.39130279265694667 
		0.36607237528552539;
	setAttr -s 3 ".wl[159].w[2:4]"  0.24746570764479089 0.38938603711577369 
		0.36314825523943545;
	setAttr -s 3 ".wl[160].w[2:4]"  0.24229096312974477 0.39138815993391457 
		0.36632087693634069;
	setAttr -s 3 ".wl[161].w[2:4]"  0.23159967321120709 0.39563686624304717 
		0.37276346054574572;
	setAttr -s 3 ".wl[162].w[2:4]"  0.22607859401721533 0.39788545490872917 
		0.37603595107405552;
	setAttr -s 3 ".wl[163].w[2:4]"  0.23195295742763336 0.39554195711239531 
		0.37250508545997141;
	setAttr -s 3 ".wl[164].w[3:5]"  0.36999489325489376 0.37096032871732287 
		0.25904477802778331;
	setAttr -s 3 ".wl[165].w[3:5]"  0.3702597015155405 0.37087151003263746 
		0.25886878845182204;
	setAttr -s 3 ".wl[166].w[3:5]"  0.37002827290929563 0.37099487042535623 
		0.25897685666534809;
	setAttr -s 3 ".wl[167].w[3:5]"  0.36940084487857328 0.37137245393451179 
		0.25922670118691499;
	setAttr -s 3 ".wl[168].w[3:5]"  0.36899476323612945 0.37163493852708013 
		0.25937029823679053;
	setAttr -s 3 ".wl[169].w[3:5]"  0.36936606964364538 0.3713351575569187 
		0.25929877279943597;
	setAttr -s 3 ".wl[170].w[3:5]"  0.32458947703522845 0.35397648961163092 
		0.32143403335314058;
	setAttr -s 3 ".wl[171].w[3:5]"  0.32639739513359328 0.35348344500926243 
		0.32011915985714434;
	setAttr -s 3 ".wl[172].w[3:5]"  0.32458174576237925 0.35399449689785234 
		0.32142375733976841;
	setAttr -s 3 ".wl[173].w[3:5]"  0.32062883084296467 0.35516597971194203 
		0.3242051894450933;
	setAttr -s 3 ".wl[174].w[3:5]"  0.31847868093579185 0.35583258556143038 
		0.32568873350277788;
	setAttr -s 3 ".wl[175].w[3:5]"  0.32064039780982823 0.35514587674084963 
		0.32421372544932214;
	setAttr -s 3 ".wl[176].w[4:6]"  0.36147081459631314 0.36060812064051828 
		0.27792106476316863;
	setAttr -s 3 ".wl[177].w[3:5]"  0.31199719399403941 0.34883089120603655 
		0.33917191479992403;
	setAttr -s 3 ".wl[178].w[3:5]"  0.32429628204148231 0.345545560977226 
		0.33015815698129164;
	setAttr -s 3 ".wl[179].w[3:5]"  0.31210542789655682 0.34875031684839808 
		0.33914425525504516;
	setAttr -s 3 ".wl[180].w[4:6]"  0.36126602030726507 0.36041099066996585 
		0.27832298902276909;
	setAttr -s 3 ".wl[181].w[4:6]"  0.36114277742835738 0.36165135667997866 
		0.27720586589166391;
	setAttr -s 3 ".wl[182].w[4:6]"  0.3176971115471357 0.34503255695126217 
		0.33727033150160213;
	setAttr -s 3 ".wl[183].w[4:6]"  0.34174005911529037 0.34228864851500562 
		0.315971292369704;
	setAttr -s 3 ".wl[184].w[4:6]"  0.34564540134736971 0.34500753239274751 
		0.30934706625988279;
	setAttr -s 3 ".wl[185].w[4:6]"  0.341691055619391 0.34223622806594006 
		0.31607271631466888;
	setAttr -s 3 ".wl[186].w[4:6]"  0.31786379281348354 0.34490546488251 
		0.33723074230400646;
	setAttr -s 3 ".wl[187].w[4:6]"  0.27571924645866114 0.36249069492742059 
		0.36179005861391822;
	setAttr -s 3 ".wl[188].w[4:6]"  0.27520453286629121 0.35703513965322503 
		0.36776032748048382;
	setAttr -s 3 ".wl[189].w[4:6]"  0.31717081898611799 0.34147987398449098 
		0.34134930702939109;
	setAttr -s 3 ".wl[190].w[4:6]"  0.32720034399165931 0.3377539835251796 
		0.33504567248316114;
	setAttr -s 3 ".wl[191].w[4:6]"  0.31724796369220815 0.34144097082609665 
		0.34131106548169521;
	setAttr -s 3 ".wl[192].w[4:6]"  0.27499498851326659 0.35605230618401135 
		0.36895270530272201;
	setAttr -s 3 ".wl[193].w[5:7]"  0.35741048611136833 0.40538766040938295 
		0.23720185347924871;
	setAttr -s 3 ".wl[194].w[5:7]"  0.329227563696463 0.36884538361889885 
		0.30192705268463815;
	setAttr -s 3 ".wl[195].w[4:6]"  0.28989194938497709 0.34827830983041919 
		0.36182974078460367;
	setAttr -s 3 ".wl[196].w[4:6]"  0.30018614132256805 0.34633317794228086 
		0.35348068073515115;
	setAttr -s 3 ".wl[197].w[5:7]"  0.34697127534197209 0.36159015241788373 
		0.29143857224014419;
	setAttr -s 3 ".wl[198].w[5:7]"  0.32713583203819824 0.3687431303355318 
		0.30412103762627002;
	setAttr -s 3 ".wl[199].w[5:7]"  0.31123220376032446 0.37676042171030039 
		0.31200737452937521;
	setAttr -s 3 ".wl[200].w[3:5]"  0.31137825458884799 0.35407528376813119 
		0.33454646164302088;
	setAttr -s 3 ".wl[201].w[5:7]"  0.32392872414046242 0.36208598356336807 
		0.31398529229616945;
	setAttr -s 3 ".wl[202].w[0:2]"  0.99916925880122676 0.00078290198047219683 
		4.7839218301143323e-05;
	setAttr -s 3 ".wl[203].w[0:2]"  0.99916925880122676 0.00078290198047219683 
		4.7839218301143323e-05;
	setAttr -s 3 ".wl[204].w[0:2]"  0.9991594701351092 0.00079195044775194937 
		4.8579417138917534e-05;
	setAttr -s 3 ".wl[205].w[0:2]"  0.99915035178548395 0.00080036339071332878 
		4.9284823802765903e-05;
	setAttr -s 3 ".wl[206].w[0:2]"  0.99915035178548395 0.00080036339071332878 
		4.9284823802765903e-05;
	setAttr -s 3 ".wl[207].w[0:2]"  0.9991594701334825 0.00079195044925419963 
		4.8579417263299315e-05;
	setAttr -s 3 ".wl[208].w[4:6]"  0.51677261381787365 0.48291680081788846 
		0.00031058536423784805;
	setAttr -s 3 ".wl[209].w[4:6]"  0.51677261381787365 0.48291680081788846 
		0.00031058536423784794;
	setAttr -s 3 ".wl[210].w[4:6]"  0.51095356233580758 0.48847545762128025 
		0.00057098004291217339;
	setAttr -s 3 ".wl[211].w[4:6]"  0.5079720772742603 0.49115117746205217 
		0.00087674526368752555;
	setAttr -s 3 ".wl[212].w[4:6]"  0.50797207727426019 0.49115117746205222 
		0.00087674526368752609;
	setAttr -s 3 ".wl[213].w[4:6]"  0.51095356166118877 0.48847545824692989 
		0.00057098009188144387;
	setAttr -s 2 ".wl[214].w[0:1]"  0.99999999982607668 1.7392334006722698e-10;
	setAttr -s 3 ".wl[215].w[4:6]"  0.69895515810448228 0.30103839684104494 
		6.4450544727507934e-06;
	setAttr -s 3 ".wl[216].w[0:2]"  0.91026448579784902 0.089530948352754686 
		0.00020456584939621762;
	setAttr -s 3 ".wl[217].w[0:2]"  0.93056002959127349 0.069294930615819872 
		0.0001450397929067502;
	setAttr -s 3 ".wl[218].w[0:2]"  0.95209482004898671 0.047814016993174141 
		9.1162957839124414e-05;
	setAttr -s 3 ".wl[219].w[0:2]"  0.95209482004898671 0.047814016993174141 
		9.1162957839124414e-05;
	setAttr -s 3 ".wl[220].w[0:2]"  0.93056002597733722 0.069294934219956889 
		0.00014503980270584308;
	setAttr -s 3 ".wl[221].w[0:2]"  0.91026448579784902 0.089530948352754686 
		0.00020456584939621762;
	setAttr -s 3 ".wl[222].w[0:2]"  0.0031184475810149817 0.99439831892192254 
		0.002483233497062498;
	setAttr -s 3 ".wl[223].w[0:2]"  0.0020284787389170363 0.99635810314722995 
		0.0016134181138530883;
	setAttr -s 3 ".wl[224].w[0:2]"  0.0010957819490772459 0.99803366985463615 
		0.00087054819628664781;
	setAttr -s 3 ".wl[225].w[0:2]"  0.0010957819490772459 0.99803366985463615 
		0.00087054819628664781;
	setAttr -s 3 ".wl[226].w[0:2]"  0.0020284789139788113 0.99635810283260395 
		0.0016134182534172379;
	setAttr -s 3 ".wl[227].w[0:2]"  0.0031184475810149817 0.99439831892192254 
		0.002483233497062498;
	setAttr -s 3 ".wl[228].w[1:3]"  0.49989603519426645 0.49990399850323608 
		0.00019996630249757431;
	setAttr -s 3 ".wl[229].w[1:3]"  0.49995001353532931 0.49992121453860189 
		0.0001287719260688366;
	setAttr -s 3 ".wl[230].w[1:3]"  0.49998741397922025 0.49994370515583914 
		6.8880864940710042e-05;
	setAttr -s 3 ".wl[231].w[1:3]"  0.49998741397922025 0.49994370515583914 
		6.8880864940710015e-05;
	setAttr -s 3 ".wl[232].w[1:3]"  0.49995001352881674 0.49992121453377997 
		0.00012877193740319206;
	setAttr -s 3 ".wl[233].w[1:3]"  0.49989603519426645 0.49990399850323608 
		0.00019996630249757423;
	setAttr -s 3 ".wl[234].w[1:3]"  0.002178399844391036 0.99511486489085799 
		0.0027067352647510306;
	setAttr -s 3 ".wl[235].w[1:3]"  0.0017370592715133871 0.99612099176328561 
		0.0021419489652010951;
	setAttr -s 3 ".wl[236].w[1:3]"  0.0013251370070600193 0.99705333434510846 
		0.0016215286478315414;
	setAttr -s 3 ".wl[237].w[1:3]"  0.0013251370070600193 0.99705333434510846 
		0.0016215286478315414;
	setAttr -s 3 ".wl[238].w[1:3]"  0.0017370593450432776 0.99612099159626755 
		0.0021419490586892485;
	setAttr -s 3 ".wl[239].w[1:3]"  0.002178399844391036 0.99511486489085799 
		0.0027067352647510306;
	setAttr -s 3 ".wl[240].w[2:4]"  0.31643627303685612 0.68337219401802474 
		0.00019153294511915032;
	setAttr -s 3 ".wl[241].w[2:4]"  0.31060358586345405 0.68920798895468016 
		0.00018842518186582379;
	setAttr -s 3 ".wl[242].w[2:4]"  0.30464648646609349 0.69516828667913477 
		0.00018522685477182399;
	setAttr -s 3 ".wl[243].w[2:4]"  0.30464648646609332 0.69516828667913488 
		0.00018522685477182391;
	setAttr -s 3 ".wl[244].w[2:4]"  0.31060358687771378 0.68920798793987792 
		0.00018842518240830608;
	setAttr -s 3 ".wl[245].w[2:4]"  0.31643627303685601 0.68337219401802474 
		0.00019153294511915024;
	setAttr -s 3 ".wl[246].w[2:4]"  0.0015198470119314684 0.99413330317350657 
		0.0043468498145620184;
	setAttr -s 3 ".wl[247].w[2:4]"  0.0011488459551900257 0.99552673790855051 
		0.0033244161362594522;
	setAttr -s 3 ".wl[248].w[2:4]"  0.00081313494780699313 0.99680599901158196 
		0.002380866040611098;
	setAttr -s 3 ".wl[249].w[2:4]"  0.00081313494780699313 0.99680599901158196 
		0.002380866040611098;
	setAttr -s 3 ".wl[250].w[2:4]"  0.0011488460161099196 0.99552673767806221 
		0.0033244163058278853;
	setAttr -s 3 ".wl[251].w[2:4]"  0.0015198470119314684 0.99413330317350657 
		0.0043468498145620184;
	setAttr -s 3 ".wl[252].w[3:5]"  0.37712688974837472 0.62225265429118826 
		0.00062045596043704251;
	setAttr -s 3 ".wl[253].w[3:5]"  0.34524243472414978 0.65433585114985537 
		0.00042171412599475202;
	setAttr -s 3 ".wl[254].w[3:5]"  0.29161726833887885 0.70813768994376081 
		0.00024504171736044875;
	setAttr -s 3 ".wl[255].w[3:5]"  0.29161726833887885 0.70813768994376081 
		0.00024504171736044875;
	setAttr -s 3 ".wl[256].w[3:5]"  0.34524244161751594 0.65433584422410551 
		0.00042171415837844334;
	setAttr -s 3 ".wl[257].w[3:5]"  0.37712688974837472 0.62225265429118826 
		0.00062045596043704251;
	setAttr -s 3 ".wl[258].w[3:5]"  0.0028155728310654774 0.978834211344357 
		0.018350215824577451;
	setAttr -s 3 ".wl[259].w[3:5]"  0.0018402688293039902 0.98593063250589996 
		0.012229098664796023;
	setAttr -s 3 ".wl[260].w[3:5]"  0.00099832313845571907 0.99223425284431743 
		0.0067674240172267445;
	setAttr -s 3 ".wl[261].w[3:5]"  0.00099832313845571951 0.99223425284431743 
		0.0067674240172267471;
	setAttr -s 3 ".wl[262].w[3:5]"  0.0018402689866817384 0.98593063134406855 
		0.012229099669249673;
	setAttr -s 3 ".wl[263].w[3:5]"  0.0028155728310654796 0.97883421134435711 
		0.018350215824577465;
	setAttr -s 8 ".pm";
	setAttr ".pm[0]" -type "matrix" 1.151145028563028e-16 -2.1995092510043633e-16 0.99999999999999978 -0
		 0.999828576325131 0.018515344006019778 6.1668483673015637e-18 0 -0.018515344006019608 0.999828576325131 3.3300981183430537e-16 -0
		 0.10908235306579893 0.0020200435752924456 6.7280966641073824e-19 1;
	setAttr ".pm[1]" -type "matrix" 1.1102230246251563e-16 -2.2204460492503121e-16 0.99999999999999978 -0
		 0.99999999999999978 1.8041124150158786e-16 6.1668483673015637e-18 -0 -1.0408340855860803e-17 0.99999999999999978 3.3300981183430537e-16 -0
		 -1.9469351302350852 0.03807474418156697 6.728096664107522e-19 1;
	setAttr ".pm[2]" -type "matrix" 1.0816668768509524e-16 3.4591428473789569e-16 -0.99999999999999978 -0
		 0.99991782735513435 0.012819459325071253 -4.5969173843767416e-18 -0 0.012819459325071423 -0.99991782735513446 -4.5546442850238948e-16 -0
		 -5.030087901601858 -0.10256617957193424 -5.5428062222177694e-19 1;
	setAttr ".pm[3]" -type "matrix" 1.1694361448063841e-16 -4.655112011661519e-16 0.99999999999999978 -0
		 0.99991989426029504 0.012657213851394938 6.1469790273001779e-18 0 -0.012657213851394768 0.99991989426029482 5.7791929829335254e-16 -0
		 -8.0001785435439654 -0.1012680828296617 -3.2509986038345377e-17 1;
	setAttr ".pm[4]" -type "matrix" 1.1104217180252107e-16 -4.6695409138407724e-16 0.99999999999999978 -0
		 0.99999999999999978 8.7672924475867767e-15 6.1469790273001786e-18 -0 -8.5990242704170265e-15 0.99999999999999956 5.7791929829335244e-16 -0
		 -11.008724245448665 0.03807474418146984 -2.7038707810665565e-17 1;
	setAttr ".pm[5]" -type "matrix" 1.1104217180252107e-16 -4.6695409138407724e-16 0.99999999999999978 -0
		 0.99999999999999978 8.7672924475867767e-15 6.1469790273001786e-18 -0 -8.5990242704170265e-15 0.99999999999999956 5.7791929829335244e-16 -0
		 -13.331283640524413 0.038074744181449238 -3.6541141164027691e-17 1;
	setAttr ".pm[6]" -type "matrix" 1.0063760216748585e-16 5.9177114738447797e-16 -0.99999999999999978 -0
		 0.99975303742184529 0.022223054825883333 -3.4254397313207634e-18 -0 0.022223054825883493 -0.99975303742184496 -7.0035373401500328e-16 -0
		 -15.108959055745686 -0.37393431742252004 -1.9607573005073284e-18 1;
	setAttr ".pm[7]" -type "matrix" 0.99999999999999978 -9.9495150262891215e-16 -6.6955851630516499e-16 -0
		 1.0581373131252192e-15 1 -6.2450045135165117e-17 0 9.2239833894003449e-16 2.3245294578089107e-16 0.99999999999999956 -0
		 -2.0463490711451251e-14 -19.334190200987987 -0.055744218163916767 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 8 ".ma";
	setAttr -s 8 ".dpf[0:7]"  3 3 3 3 3 3 3 3;
	setAttr -s 8 ".lw";
	setAttr -s 8 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 3;
	setAttr ".ucm" yes;
	setAttr -s 8 ".ifcl";
	setAttr -s 8 ".ifcl";
createNode tweak -n "tweak2";
	rename -uid "D9839FF2-2642-7311-050F-9AA0EECC34A0";
createNode objectSet -n "skinCluster1Set";
	rename -uid "BE501AD7-3D4F-8721-1505-12A0FBDD6E21";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster1GroupId";
	rename -uid "2CD9DBD6-354F-F7C8-6057-64B298F9D005";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster1GroupParts";
	rename -uid "16227F98-A949-7457-855C-34988D1B26FD";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet2";
	rename -uid "EB5D1D07-5746-B700-B927-4A90BC34D0F0";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId54";
	rename -uid "96DDA19E-1C41-D5CC-3480-3BBFF88F5998";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts54";
	rename -uid "50FBB5FA-3146-7200-DCC1-FB8C070B6C97";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose1";
	rename -uid "6AF73A70-E04D-032F-657D-FFAFF8F1A464";
	setAttr -s 9 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 9 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 6.5326788425445557
		 9.9383148319867214 8.0076255798339844 0 0 0 6.5326788425445557 9.9383148319867214
		 8.0076255798339844 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -0.10910105556967677
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.49534953719418673 0.50460760596874166 0.49534953719418684 0.50460760596874188 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.0563886995125911 -5.5315513629609237e-17
		 -1.2282511370111768e-32 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.0092580687745548694 0.99995714316292861 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.0840542787071445 8.6955316791959908e-16
		 1.2679263395543176e-17 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.99997945662776855 0.0064098613427032323 3.9249080881599347e-19 6.1231082038615312e-17 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.970074105007086 1.7867651802561113e-14
		 -2.0662503311253732e-17 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.99991886409843111 0.012738336630154749 7.7999815902902473e-19 6.1227371816260052e-17 1
		 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.0081457600852568 -1.1587952819525071e-15
		 -5.4712782276798121e-18 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.0063287336689351933 0.99997997336454081 1
		 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.3225593950757482 2.0605192167005206e-14
		 9.5024333533621294e-18 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.7822540305769916 1.580900194168159e-14
		 7.2918480277489601e-18 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.99993825744939002 0.011112213509351042 6.8042683528343651e-19 6.1228559316518881e-17 1
		 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 0 0 0 0 4.2216951306002164 9.4230179215060161e-15
		 -6.1073798414697821e-17 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.49441302197002202 0.50552523547936812 -0.49441302197002152 0.50552523547936867 1
		 1 1 yes;
	setAttr -s 9 ".m";
	setAttr -s 9 ".p";
	setAttr -s 9 ".g[0:8]" yes no no no no no no no no;
	setAttr ".bp" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "28EF4FB8-7448-1725-D330-73968E60FE55";
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
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"profilerPanel\" -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"Stereo\" -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels `;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n"
		+ "                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n"
		+ "                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n"
		+ "                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n"
		+ "                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n"
		+ "                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n"
		+ "                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n"
		+ "                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n"
		+ "                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n"
		+ "        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1122\\n    -height 515\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1122\\n    -height 515\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "259C472D-CC43-F7CE-2A3D-37A4F0BDDADB";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
select -ne :time1;
	setAttr ".o" 37;
	setAttr ".unw" 37;
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
connectAttr "polySplitRing8.out" "polySurface1ShapeOrig.i";
connectAttr "tweak1.og[0]" "polySurface1Shape.i";
connectAttr "groupId1.id" "polySurface1Shape.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurface1Shape.iog.og[0].gco";
connectAttr "groupId2.id" "polySurface1Shape.iog.og[1].gid";
connectAttr "lambert3SG.mwc" "polySurface1Shape.iog.og[1].gco";
connectAttr "groupId4.id" "polySurface1Shape.iog.og[7].gid";
connectAttr "tweakSet1.mwc" "polySurface1Shape.iog.og[7].gco";
connectAttr "tweak1.vl[0].vt[0]" "polySurface1Shape.twl";
connectAttr "pasted__polySplitRing24.out" "|group5|pasted__polySurface1|pasted__polySurface1ShapeOrig.i"
		;
connectAttr "pasted__tweak3.og[0]" "|group5|pasted__polySurface1|transform3|pasted__polySurface1Shape.i"
		;
connectAttr "pasted__groupId8.id" "|group5|pasted__polySurface1|transform3|pasted__polySurface1Shape.iog.og[0].gid"
		;
connectAttr "pasted__lambert2SG2.mwc" "|group5|pasted__polySurface1|transform3|pasted__polySurface1Shape.iog.og[0].gco"
		;
connectAttr "pasted__groupId9.id" "|group5|pasted__polySurface1|transform3|pasted__polySurface1Shape.iog.og[1].gid"
		;
connectAttr "pasted__lambert3SG2.mwc" "|group5|pasted__polySurface1|transform3|pasted__polySurface1Shape.iog.og[1].gco"
		;
connectAttr "pasted__groupId10.id" "|group5|pasted__polySurface1|transform3|pasted__polySurface1Shape.iog.og[7].gid"
		;
connectAttr "pasted__tweakSet3.mwc" "|group5|pasted__polySurface1|transform3|pasted__polySurface1Shape.iog.og[7].gco"
		;
connectAttr "pasted__tweak3.vl[0].vt[0]" "|group5|pasted__polySurface1|transform3|pasted__polySurface1Shape.twl"
		;
connectAttr "pasted__joint1.s" "pasted__joint2.is";
connectAttr "pasted__joint2.s" "pasted__joint3.is";
connectAttr "pasted__joint3.s" "pasted__joint4.is";
connectAttr "pasted__joint4.s" "pasted__joint5.is";
connectAttr "pasted__joint5.s" "pasted__joint6.is";
connectAttr "pasted__joint6.s" "pasted__joint7.is";
connectAttr "pasted__joint7.s" "pasted__joint8.is";
connectAttr "pasted__polySplitRing32.out" "|group6|pasted__polySurface1|pasted__polySurface1ShapeOrig.i"
		;
connectAttr "pasted__tweak4.og[0]" "|group6|pasted__polySurface1|transform4|pasted__polySurface1Shape.i"
		;
connectAttr "pasted__groupId11.id" "|group6|pasted__polySurface1|transform4|pasted__polySurface1Shape.iog.og[0].gid"
		;
connectAttr "pasted__lambert2SG4.mwc" "|group6|pasted__polySurface1|transform4|pasted__polySurface1Shape.iog.og[0].gco"
		;
connectAttr "pasted__groupId12.id" "|group6|pasted__polySurface1|transform4|pasted__polySurface1Shape.iog.og[1].gid"
		;
connectAttr "pasted__lambert3SG4.mwc" "|group6|pasted__polySurface1|transform4|pasted__polySurface1Shape.iog.og[1].gco"
		;
connectAttr "pasted__groupId13.id" "|group6|pasted__polySurface1|transform4|pasted__polySurface1Shape.iog.og[7].gid"
		;
connectAttr "pasted__tweakSet4.mwc" "|group6|pasted__polySurface1|transform4|pasted__polySurface1Shape.iog.og[7].gco"
		;
connectAttr "pasted__tweak4.vl[0].vt[0]" "|group6|pasted__polySurface1|transform4|pasted__polySurface1Shape.twl"
		;
connectAttr "groupParts24.og" "polySurfaceShape2.i";
connectAttr "groupId23.id" "polySurfaceShape2.iog.og[0].gid";
connectAttr "pasted__lambert2SG4.mwc" "polySurfaceShape2.iog.og[0].gco";
connectAttr "groupId24.id" "polySurfaceShape2.iog.og[1].gid";
connectAttr "pasted__tweakSet4.mwc" "polySurfaceShape2.iog.og[1].gco";
connectAttr "groupParts26.og" "polySurfaceShape3.i";
connectAttr "groupId25.id" "polySurfaceShape3.iog.og[0].gid";
connectAttr "pasted__lambert3SG4.mwc" "polySurfaceShape3.iog.og[0].gco";
connectAttr "groupId26.id" "polySurfaceShape3.iog.og[1].gid";
connectAttr "pasted__tweakSet4.mwc" "polySurfaceShape3.iog.og[1].gco";
connectAttr "groupParts29.og" "polySurfaceShape4.i";
connectAttr "groupId27.id" "polySurfaceShape4.iog.og[0].gid";
connectAttr "pasted__lambert2SG2.mwc" "polySurfaceShape4.iog.og[0].gco";
connectAttr "groupId29.id" "polySurfaceShape4.iog.og[2].gid";
connectAttr "pasted__tweakSet3.mwc" "polySurfaceShape4.iog.og[2].gco";
connectAttr "groupParts32.og" "polySurfaceShape5.i";
connectAttr "groupId30.id" "polySurfaceShape5.iog.og[0].gid";
connectAttr "pasted__lambert3SG2.mwc" "polySurfaceShape5.iog.og[0].gco";
connectAttr "groupId32.id" "polySurfaceShape5.iog.og[2].gid";
connectAttr "pasted__tweakSet3.mwc" "polySurfaceShape5.iog.og[2].gco";
connectAttr "groupParts34.og" "polySurfaceShape6.i";
connectAttr "groupId33.id" "polySurfaceShape6.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape6.iog.og[0].gco";
connectAttr "groupId34.id" "polySurfaceShape6.iog.og[1].gid";
connectAttr "tweakSet1.mwc" "polySurfaceShape6.iog.og[1].gco";
connectAttr "groupParts36.og" "polySurfaceShape7.i";
connectAttr "groupId35.id" "polySurfaceShape7.iog.og[0].gid";
connectAttr "lambert3SG.mwc" "polySurfaceShape7.iog.og[0].gco";
connectAttr "groupId36.id" "polySurfaceShape7.iog.og[1].gid";
connectAttr "tweakSet1.mwc" "polySurfaceShape7.iog.og[1].gco";
connectAttr "groupParts22.og" "group6_pasted__polySurface1Shape.i";
connectAttr "groupId11.id" "group6_pasted__polySurface1Shape.iog.og[0].gid";
connectAttr "pasted__lambert2SG4.mwc" "group6_pasted__polySurface1Shape.iog.og[0].gco"
		;
connectAttr "groupId12.id" "group6_pasted__polySurface1Shape.iog.og[1].gid";
connectAttr "pasted__lambert3SG4.mwc" "group6_pasted__polySurface1Shape.iog.og[1].gco"
		;
connectAttr "groupId14.id" "group6_pasted__polySurface1Shape.iog.og[3].gid";
connectAttr "pasted__tweakSet4.mwc" "group6_pasted__polySurface1Shape.iog.og[3].gco"
		;
connectAttr "groupId15.id" "group6_pasted__polySurface1Shape.iog.og[4].gid";
connectAttr "pasted__lambert2SG2.mwc" "group6_pasted__polySurface1Shape.iog.og[4].gco"
		;
connectAttr "groupId16.id" "group6_pasted__polySurface1Shape.iog.og[5].gid";
connectAttr "pasted__lambert3SG2.mwc" "group6_pasted__polySurface1Shape.iog.og[5].gco"
		;
connectAttr "groupId18.id" "group6_pasted__polySurface1Shape.iog.og[7].gid";
connectAttr "pasted__tweakSet3.mwc" "group6_pasted__polySurface1Shape.iog.og[7].gco"
		;
connectAttr "groupId19.id" "group6_pasted__polySurface1Shape.iog.og[8].gid";
connectAttr "lambert2SG.mwc" "group6_pasted__polySurface1Shape.iog.og[8].gco";
connectAttr "groupId20.id" "group6_pasted__polySurface1Shape.iog.og[9].gid";
connectAttr "lambert3SG.mwc" "group6_pasted__polySurface1Shape.iog.og[9].gco";
connectAttr "groupId22.id" "group6_pasted__polySurface1Shape.iog.og[11].gid";
connectAttr "tweakSet1.mwc" "group6_pasted__polySurface1Shape.iog.og[11].gco";
connectAttr "groupParts39.og" "polySurface6Shape.i";
connectAttr "groupId37.id" "polySurface6Shape.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurface6Shape.iog.og[0].gco";
connectAttr "groupId38.id" "polySurface6Shape.iog.og[1].gid";
connectAttr "tweakSet1.mwc" "polySurface6Shape.iog.og[1].gco";
connectAttr "groupId39.id" "polySurface6Shape.iog.og[2].gid";
connectAttr "lambert3SG.mwc" "polySurface6Shape.iog.og[2].gco";
connectAttr "groupParts42.og" "|polySurface2|transform13|polySurface2Shape.i";
connectAttr "groupId40.id" "|polySurface2|transform13|polySurface2Shape.iog.og[0].gid"
		;
connectAttr "pasted__lambert2SG4.mwc" "|polySurface2|transform13|polySurface2Shape.iog.og[0].gco"
		;
connectAttr "groupId41.id" "|polySurface2|transform13|polySurface2Shape.iog.og[1].gid"
		;
connectAttr "pasted__tweakSet4.mwc" "|polySurface2|transform13|polySurface2Shape.iog.og[1].gco"
		;
connectAttr "groupId42.id" "|polySurface2|transform13|polySurface2Shape.iog.og[2].gid"
		;
connectAttr "pasted__lambert3SG4.mwc" "|polySurface2|transform13|polySurface2Shape.iog.og[2].gco"
		;
connectAttr "skinCluster1.og[0]" "|polySurface8|polySurface2Shape.i";
connectAttr "groupId43.id" "|polySurface8|polySurface2Shape.iog.og[0].gid";
connectAttr "pasted__lambert2SG4.mwc" "|polySurface8|polySurface2Shape.iog.og[0].gco"
		;
connectAttr "groupId44.id" "|polySurface8|polySurface2Shape.iog.og[1].gid";
connectAttr "pasted__tweakSet4.mwc" "|polySurface8|polySurface2Shape.iog.og[1].gco"
		;
connectAttr "groupId45.id" "|polySurface8|polySurface2Shape.iog.og[2].gid";
connectAttr "pasted__lambert3SG4.mwc" "|polySurface8|polySurface2Shape.iog.og[2].gco"
		;
connectAttr "groupId46.id" "|polySurface8|polySurface2Shape.iog.og[3].gid";
connectAttr "pasted__lambert3SG2.mwc" "|polySurface8|polySurface2Shape.iog.og[3].gco"
		;
connectAttr "groupId48.id" "|polySurface8|polySurface2Shape.iog.og[5].gid";
connectAttr "pasted__tweakSet3.mwc" "|polySurface8|polySurface2Shape.iog.og[5].gco"
		;
connectAttr "groupId49.id" "|polySurface8|polySurface2Shape.iog.og[6].gid";
connectAttr "lambert2SG.mwc" "|polySurface8|polySurface2Shape.iog.og[6].gco";
connectAttr "groupId50.id" "|polySurface8|polySurface2Shape.iog.og[7].gid";
connectAttr "tweakSet1.mwc" "|polySurface8|polySurface2Shape.iog.og[7].gco";
connectAttr "groupId51.id" "|polySurface8|polySurface2Shape.iog.og[8].gid";
connectAttr "lambert3SG.mwc" "|polySurface8|polySurface2Shape.iog.og[8].gco";
connectAttr "groupId52.id" "|polySurface8|polySurface2Shape.iog.og[9].gid";
connectAttr "pasted__lambert2SG2.mwc" "|polySurface8|polySurface2Shape.iog.og[9].gco"
		;
connectAttr "skinCluster1GroupId.id" "|polySurface8|polySurface2Shape.iog.og[12].gid"
		;
connectAttr "skinCluster1Set.mwc" "|polySurface8|polySurface2Shape.iog.og[12].gco"
		;
connectAttr "groupId54.id" "|polySurface8|polySurface2Shape.iog.og[13].gid";
connectAttr "tweakSet2.mwc" "|polySurface8|polySurface2Shape.iog.og[13].gco";
connectAttr "tweak2.vl[0].vt[0]" "|polySurface8|polySurface2Shape.twl";
connectAttr "groupParts52.og" "polySurface2ShapeOrig.i";
connectAttr "groupParts20.og" "groupParts22.ig";
connectAttr "groupId22.id" "groupParts22.gi";
connectAttr "groupParts19.og" "groupParts20.ig";
connectAttr "groupId20.id" "groupParts20.gi";
connectAttr "groupParts18.og" "groupParts19.ig";
connectAttr "groupId19.id" "groupParts19.gi";
connectAttr "groupParts16.og" "groupParts18.ig";
connectAttr "groupId18.id" "groupParts18.gi";
connectAttr "groupParts15.og" "groupParts16.ig";
connectAttr "groupId16.id" "groupParts16.gi";
connectAttr "groupParts14.og" "groupParts15.ig";
connectAttr "groupId15.id" "groupParts15.gi";
connectAttr "groupParts12.og" "groupParts14.ig";
connectAttr "groupId14.id" "groupParts14.gi";
connectAttr "groupParts11.og" "groupParts12.ig";
connectAttr "groupId12.id" "groupParts12.gi";
connectAttr "polyUnite1.out" "groupParts11.ig";
connectAttr "groupId11.id" "groupParts11.gi";
connectAttr "|group6|pasted__polySurface1|transform4|pasted__polySurface1Shape.o" "polyUnite1.ip[0]"
		;
connectAttr "|group5|pasted__polySurface1|transform3|pasted__polySurface1Shape.o" "polyUnite1.ip[1]"
		;
connectAttr "polySurface1Shape.o" "polyUnite1.ip[2]";
connectAttr "|group6|pasted__polySurface1|transform4|pasted__polySurface1Shape.wm" "polyUnite1.im[0]"
		;
connectAttr "|group5|pasted__polySurface1|transform3|pasted__polySurface1Shape.wm" "polyUnite1.im[1]"
		;
connectAttr "polySurface1Shape.wm" "polyUnite1.im[2]";
connectAttr "pasted__groupParts13.og" "pasted__tweak4.ip[0].ig";
connectAttr "pasted__groupId13.id" "pasted__tweak4.ip[0].gi";
connectAttr "pasted__groupId13.msg" "pasted__tweakSet4.gn" -na;
connectAttr "groupId14.msg" "pasted__tweakSet4.gn" -na;
connectAttr "groupId24.msg" "pasted__tweakSet4.gn" -na;
connectAttr "groupId26.msg" "pasted__tweakSet4.gn" -na;
connectAttr "groupId41.msg" "pasted__tweakSet4.gn" -na;
connectAttr "groupId44.msg" "pasted__tweakSet4.gn" -na;
connectAttr "|group6|pasted__polySurface1|transform4|pasted__polySurface1Shape.iog.og[7]" "pasted__tweakSet4.dsm"
		 -na;
connectAttr "group6_pasted__polySurface1Shape.iog.og[3]" "pasted__tweakSet4.dsm"
		 -na;
connectAttr "polySurfaceShape2.iog.og[1]" "pasted__tweakSet4.dsm" -na;
connectAttr "polySurfaceShape3.iog.og[1]" "pasted__tweakSet4.dsm" -na;
connectAttr "|polySurface2|transform13|polySurface2Shape.iog.og[1]" "pasted__tweakSet4.dsm"
		 -na;
connectAttr "|polySurface8|polySurface2Shape.iog.og[1]" "pasted__tweakSet4.dsm" 
		-na;
connectAttr "pasted__tweak4.msg" "pasted__tweakSet4.ub[0]";
connectAttr "|group6|pasted__polySurface1|pasted__polySurface1ShapeOrig.w" "pasted__groupParts13.ig"
		;
connectAttr "pasted__groupId13.id" "pasted__groupParts13.gi";
connectAttr "pasted__polySplitRing31.out" "pasted__polySplitRing32.ip";
connectAttr "|group6|pasted__polySurface1|transform4|pasted__polySurface1Shape.wm" "pasted__polySplitRing32.mp"
		;
connectAttr "pasted__polySplitRing30.out" "pasted__polySplitRing31.ip";
connectAttr "|group6|pasted__polySurface1|transform4|pasted__polySurface1Shape.wm" "pasted__polySplitRing31.mp"
		;
connectAttr "pasted__polySplitRing29.out" "pasted__polySplitRing30.ip";
connectAttr "|group6|pasted__polySurface1|transform4|pasted__polySurface1Shape.wm" "pasted__polySplitRing30.mp"
		;
connectAttr "pasted__polySplitRing28.out" "pasted__polySplitRing29.ip";
connectAttr "|group6|pasted__polySurface1|transform4|pasted__polySurface1Shape.wm" "pasted__polySplitRing29.mp"
		;
connectAttr "pasted__polySplitRing27.out" "pasted__polySplitRing28.ip";
connectAttr "|group6|pasted__polySurface1|transform4|pasted__polySurface1Shape.wm" "pasted__polySplitRing28.mp"
		;
connectAttr "pasted__polySplitRing26.out" "pasted__polySplitRing27.ip";
connectAttr "|group6|pasted__polySurface1|transform4|pasted__polySurface1Shape.wm" "pasted__polySplitRing27.mp"
		;
connectAttr "pasted__polySplitRing25.out" "pasted__polySplitRing26.ip";
connectAttr "|group6|pasted__polySurface1|transform4|pasted__polySurface1Shape.wm" "pasted__polySplitRing26.mp"
		;
connectAttr "pasted__groupParts12.og" "pasted__polySplitRing25.ip";
connectAttr "|group6|pasted__polySurface1|transform4|pasted__polySurface1Shape.wm" "pasted__polySplitRing25.mp"
		;
connectAttr "pasted__groupParts11.og" "pasted__groupParts12.ig";
connectAttr "pasted__groupId12.id" "pasted__groupParts12.gi";
connectAttr "|group6|pasted__polySurface1|pasted__polySurfaceShape1.o" "pasted__groupParts11.ig"
		;
connectAttr "pasted__groupId11.id" "pasted__groupParts11.gi";
connectAttr "pasted__bark4.oc" "pasted__lambert2SG4.ss";
connectAttr "|group6|pasted__polySurface1|transform4|pasted__polySurface1Shape.iog.og[0]" "pasted__lambert2SG4.dsm"
		 -na;
connectAttr "group6_pasted__polySurface1Shape.iog.og[0]" "pasted__lambert2SG4.dsm"
		 -na;
connectAttr "polySurfaceShape2.iog.og[0]" "pasted__lambert2SG4.dsm" -na;
connectAttr "|polySurface2|transform13|polySurface2Shape.iog.og[0]" "pasted__lambert2SG4.dsm"
		 -na;
connectAttr "|polySurface8|polySurface2Shape.iog.og[0]" "pasted__lambert2SG4.dsm"
		 -na;
connectAttr "pasted__groupId11.msg" "pasted__lambert2SG4.gn" -na;
connectAttr "groupId11.msg" "pasted__lambert2SG4.gn" -na;
connectAttr "groupId23.msg" "pasted__lambert2SG4.gn" -na;
connectAttr "groupId40.msg" "pasted__lambert2SG4.gn" -na;
connectAttr "groupId43.msg" "pasted__lambert2SG4.gn" -na;
connectAttr "pasted__lambert2SG4.msg" "pasted__materialInfo9.sg";
connectAttr "pasted__bark4.msg" "pasted__materialInfo9.m";
connectAttr "pasted__leaves4.oc" "pasted__lambert3SG4.ss";
connectAttr "|group6|pasted__polySurface1|transform4|pasted__polySurface1Shape.iog.og[1]" "pasted__lambert3SG4.dsm"
		 -na;
connectAttr "group6_pasted__polySurface1Shape.iog.og[1]" "pasted__lambert3SG4.dsm"
		 -na;
connectAttr "polySurfaceShape3.iog.og[0]" "pasted__lambert3SG4.dsm" -na;
connectAttr "|polySurface2|transform13|polySurface2Shape.iog.og[2]" "pasted__lambert3SG4.dsm"
		 -na;
connectAttr "|polySurface8|polySurface2Shape.iog.og[2]" "pasted__lambert3SG4.dsm"
		 -na;
connectAttr "pasted__groupId12.msg" "pasted__lambert3SG4.gn" -na;
connectAttr "groupId12.msg" "pasted__lambert3SG4.gn" -na;
connectAttr "groupId25.msg" "pasted__lambert3SG4.gn" -na;
connectAttr "groupId42.msg" "pasted__lambert3SG4.gn" -na;
connectAttr "groupId45.msg" "pasted__lambert3SG4.gn" -na;
connectAttr "pasted__lambert3SG4.msg" "pasted__materialInfo10.sg";
connectAttr "pasted__leaves4.msg" "pasted__materialInfo10.m";
connectAttr "pasted__groupParts10.og" "pasted__tweak3.ip[0].ig";
connectAttr "pasted__groupId10.id" "pasted__tweak3.ip[0].gi";
connectAttr "pasted__groupId10.msg" "pasted__tweakSet3.gn" -na;
connectAttr "groupId18.msg" "pasted__tweakSet3.gn" -na;
connectAttr "groupId29.msg" "pasted__tweakSet3.gn" -na;
connectAttr "groupId32.msg" "pasted__tweakSet3.gn" -na;
connectAttr "groupId48.msg" "pasted__tweakSet3.gn" -na;
connectAttr "|group5|pasted__polySurface1|transform3|pasted__polySurface1Shape.iog.og[7]" "pasted__tweakSet3.dsm"
		 -na;
connectAttr "group6_pasted__polySurface1Shape.iog.og[7]" "pasted__tweakSet3.dsm"
		 -na;
connectAttr "polySurfaceShape4.iog.og[2]" "pasted__tweakSet3.dsm" -na;
connectAttr "polySurfaceShape5.iog.og[2]" "pasted__tweakSet3.dsm" -na;
connectAttr "|polySurface8|polySurface2Shape.iog.og[5]" "pasted__tweakSet3.dsm" 
		-na;
connectAttr "pasted__tweak3.msg" "pasted__tweakSet3.ub[0]";
connectAttr "|group5|pasted__polySurface1|pasted__polySurface1ShapeOrig.w" "pasted__groupParts10.ig"
		;
connectAttr "pasted__groupId10.id" "pasted__groupParts10.gi";
connectAttr "pasted__polySplitRing23.out" "pasted__polySplitRing24.ip";
connectAttr "|group5|pasted__polySurface1|transform3|pasted__polySurface1Shape.wm" "pasted__polySplitRing24.mp"
		;
connectAttr "pasted__polySplitRing22.out" "pasted__polySplitRing23.ip";
connectAttr "|group5|pasted__polySurface1|transform3|pasted__polySurface1Shape.wm" "pasted__polySplitRing23.mp"
		;
connectAttr "pasted__polySplitRing21.out" "pasted__polySplitRing22.ip";
connectAttr "|group5|pasted__polySurface1|transform3|pasted__polySurface1Shape.wm" "pasted__polySplitRing22.mp"
		;
connectAttr "pasted__polySplitRing20.out" "pasted__polySplitRing21.ip";
connectAttr "|group5|pasted__polySurface1|transform3|pasted__polySurface1Shape.wm" "pasted__polySplitRing21.mp"
		;
connectAttr "pasted__polySplitRing19.out" "pasted__polySplitRing20.ip";
connectAttr "|group5|pasted__polySurface1|transform3|pasted__polySurface1Shape.wm" "pasted__polySplitRing20.mp"
		;
connectAttr "pasted__polySplitRing18.out" "pasted__polySplitRing19.ip";
connectAttr "|group5|pasted__polySurface1|transform3|pasted__polySurface1Shape.wm" "pasted__polySplitRing19.mp"
		;
connectAttr "pasted__polySplitRing17.out" "pasted__polySplitRing18.ip";
connectAttr "|group5|pasted__polySurface1|transform3|pasted__polySurface1Shape.wm" "pasted__polySplitRing18.mp"
		;
connectAttr "pasted__groupParts9.og" "pasted__polySplitRing17.ip";
connectAttr "|group5|pasted__polySurface1|transform3|pasted__polySurface1Shape.wm" "pasted__polySplitRing17.mp"
		;
connectAttr "pasted__groupParts8.og" "pasted__groupParts9.ig";
connectAttr "pasted__groupId9.id" "pasted__groupParts9.gi";
connectAttr "|group5|pasted__polySurface1|pasted__polySurfaceShape1.o" "pasted__groupParts8.ig"
		;
connectAttr "pasted__groupId8.id" "pasted__groupParts8.gi";
connectAttr "pasted__bark2.oc" "pasted__lambert2SG2.ss";
connectAttr "|group5|pasted__polySurface1|transform3|pasted__polySurface1Shape.iog.og[0]" "pasted__lambert2SG2.dsm"
		 -na;
connectAttr "group6_pasted__polySurface1Shape.iog.og[4]" "pasted__lambert2SG2.dsm"
		 -na;
connectAttr "polySurfaceShape4.iog.og[0]" "pasted__lambert2SG2.dsm" -na;
connectAttr "|polySurface8|polySurface2Shape.iog.og[9]" "pasted__lambert2SG2.dsm"
		 -na;
connectAttr "pasted__groupId8.msg" "pasted__lambert2SG2.gn" -na;
connectAttr "groupId15.msg" "pasted__lambert2SG2.gn" -na;
connectAttr "groupId27.msg" "pasted__lambert2SG2.gn" -na;
connectAttr "groupId52.msg" "pasted__lambert2SG2.gn" -na;
connectAttr "pasted__lambert2SG2.msg" "pasted__materialInfo5.sg";
connectAttr "pasted__bark2.msg" "pasted__materialInfo5.m";
connectAttr "pasted__leaves2.oc" "pasted__lambert3SG2.ss";
connectAttr "|group5|pasted__polySurface1|transform3|pasted__polySurface1Shape.iog.og[1]" "pasted__lambert3SG2.dsm"
		 -na;
connectAttr "group6_pasted__polySurface1Shape.iog.og[5]" "pasted__lambert3SG2.dsm"
		 -na;
connectAttr "polySurfaceShape5.iog.og[0]" "pasted__lambert3SG2.dsm" -na;
connectAttr "|polySurface8|polySurface2Shape.iog.og[3]" "pasted__lambert3SG2.dsm"
		 -na;
connectAttr "pasted__groupId9.msg" "pasted__lambert3SG2.gn" -na;
connectAttr "groupId16.msg" "pasted__lambert3SG2.gn" -na;
connectAttr "groupId30.msg" "pasted__lambert3SG2.gn" -na;
connectAttr "groupId46.msg" "pasted__lambert3SG2.gn" -na;
connectAttr "pasted__lambert3SG2.msg" "pasted__materialInfo6.sg";
connectAttr "pasted__leaves2.msg" "pasted__materialInfo6.m";
connectAttr "groupParts4.og" "tweak1.ip[0].ig";
connectAttr "groupId4.id" "tweak1.ip[0].gi";
connectAttr "groupId4.msg" "tweakSet1.gn" -na;
connectAttr "groupId22.msg" "tweakSet1.gn" -na;
connectAttr "groupId34.msg" "tweakSet1.gn" -na;
connectAttr "groupId36.msg" "tweakSet1.gn" -na;
connectAttr "groupId38.msg" "tweakSet1.gn" -na;
connectAttr "groupId50.msg" "tweakSet1.gn" -na;
connectAttr "polySurface1Shape.iog.og[7]" "tweakSet1.dsm" -na;
connectAttr "group6_pasted__polySurface1Shape.iog.og[11]" "tweakSet1.dsm" -na;
connectAttr "polySurfaceShape6.iog.og[1]" "tweakSet1.dsm" -na;
connectAttr "polySurfaceShape7.iog.og[1]" "tweakSet1.dsm" -na;
connectAttr "polySurface6Shape.iog.og[1]" "tweakSet1.dsm" -na;
connectAttr "|polySurface8|polySurface2Shape.iog.og[7]" "tweakSet1.dsm" -na;
connectAttr "tweak1.msg" "tweakSet1.ub[0]";
connectAttr "polySurface1ShapeOrig.w" "groupParts4.ig";
connectAttr "groupId4.id" "groupParts4.gi";
connectAttr "polySplitRing7.out" "polySplitRing8.ip";
connectAttr "polySurface1Shape.wm" "polySplitRing8.mp";
connectAttr "polySplitRing6.out" "polySplitRing7.ip";
connectAttr "polySurface1Shape.wm" "polySplitRing7.mp";
connectAttr "polySplitRing5.out" "polySplitRing6.ip";
connectAttr "polySurface1Shape.wm" "polySplitRing6.mp";
connectAttr "polySplitRing4.out" "polySplitRing5.ip";
connectAttr "polySurface1Shape.wm" "polySplitRing5.mp";
connectAttr "polySplitRing3.out" "polySplitRing4.ip";
connectAttr "polySurface1Shape.wm" "polySplitRing4.mp";
connectAttr "polySplitRing2.out" "polySplitRing3.ip";
connectAttr "polySurface1Shape.wm" "polySplitRing3.mp";
connectAttr "polySplitRing1.out" "polySplitRing2.ip";
connectAttr "polySurface1Shape.wm" "polySplitRing2.mp";
connectAttr "groupParts2.og" "polySplitRing1.ip";
connectAttr "polySurface1Shape.wm" "polySplitRing1.mp";
connectAttr "groupParts1.og" "groupParts2.ig";
connectAttr "groupId2.id" "groupParts2.gi";
connectAttr "polySurfaceShape1.o" "groupParts1.ig";
connectAttr "groupId1.id" "groupParts1.gi";
connectAttr "bark.oc" "lambert2SG.ss";
connectAttr "polySurface1Shape.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "group6_pasted__polySurface1Shape.iog.og[8]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape6.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurface6Shape.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "|polySurface8|polySurface2Shape.iog.og[6]" "lambert2SG.dsm" -na;
connectAttr "groupId1.msg" "lambert2SG.gn" -na;
connectAttr "groupId19.msg" "lambert2SG.gn" -na;
connectAttr "groupId33.msg" "lambert2SG.gn" -na;
connectAttr "groupId37.msg" "lambert2SG.gn" -na;
connectAttr "groupId49.msg" "lambert2SG.gn" -na;
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "bark.msg" "materialInfo1.m";
connectAttr "leaves.oc" "lambert3SG.ss";
connectAttr "polySurface1Shape.iog.og[1]" "lambert3SG.dsm" -na;
connectAttr "group6_pasted__polySurface1Shape.iog.og[9]" "lambert3SG.dsm" -na;
connectAttr "polySurfaceShape7.iog.og[0]" "lambert3SG.dsm" -na;
connectAttr "polySurface6Shape.iog.og[2]" "lambert3SG.dsm" -na;
connectAttr "|polySurface8|polySurface2Shape.iog.og[8]" "lambert3SG.dsm" -na;
connectAttr "groupId2.msg" "lambert3SG.gn" -na;
connectAttr "groupId20.msg" "lambert3SG.gn" -na;
connectAttr "groupId35.msg" "lambert3SG.gn" -na;
connectAttr "groupId39.msg" "lambert3SG.gn" -na;
connectAttr "groupId51.msg" "lambert3SG.gn" -na;
connectAttr "lambert3SG.msg" "materialInfo2.sg";
connectAttr "leaves.msg" "materialInfo2.m";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__lambert2SG2.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__lambert3SG2.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__lambert2SG4.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__lambert3SG4.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__lambert2SG2.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__lambert3SG2.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__lambert2SG4.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__lambert3SG4.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "group6_pasted__polySurface1Shape.o" "polySeparate1.ip";
connectAttr "polySeparate1.out[0]" "groupParts23.ig";
connectAttr "groupId23.id" "groupParts23.gi";
connectAttr "groupParts23.og" "groupParts24.ig";
connectAttr "groupId24.id" "groupParts24.gi";
connectAttr "polySeparate1.out[1]" "groupParts25.ig";
connectAttr "groupId25.id" "groupParts25.gi";
connectAttr "groupParts25.og" "groupParts26.ig";
connectAttr "groupId26.id" "groupParts26.gi";
connectAttr "polySeparate1.out[2]" "groupParts27.ig";
connectAttr "groupId27.id" "groupParts27.gi";
connectAttr "groupParts27.og" "groupParts29.ig";
connectAttr "groupId29.id" "groupParts29.gi";
connectAttr "polySeparate1.out[3]" "groupParts30.ig";
connectAttr "groupId30.id" "groupParts30.gi";
connectAttr "groupParts30.og" "groupParts32.ig";
connectAttr "groupId32.id" "groupParts32.gi";
connectAttr "polySeparate1.out[4]" "groupParts33.ig";
connectAttr "groupId33.id" "groupParts33.gi";
connectAttr "groupParts33.og" "groupParts34.ig";
connectAttr "groupId34.id" "groupParts34.gi";
connectAttr "polySeparate1.out[5]" "groupParts35.ig";
connectAttr "groupId35.id" "groupParts35.gi";
connectAttr "groupParts35.og" "groupParts36.ig";
connectAttr "groupId36.id" "groupParts36.gi";
connectAttr "polySurfaceShape6.o" "polyUnite2.ip[0]";
connectAttr "polySurfaceShape7.o" "polyUnite2.ip[1]";
connectAttr "polySurfaceShape6.wm" "polyUnite2.im[0]";
connectAttr "polySurfaceShape7.wm" "polyUnite2.im[1]";
connectAttr "polyUnite2.out" "groupParts37.ig";
connectAttr "groupId37.id" "groupParts37.gi";
connectAttr "groupParts37.og" "groupParts38.ig";
connectAttr "groupId38.id" "groupParts38.gi";
connectAttr "groupParts38.og" "groupParts39.ig";
connectAttr "groupId39.id" "groupParts39.gi";
connectAttr "polySurfaceShape2.o" "polyUnite3.ip[0]";
connectAttr "polySurfaceShape3.o" "polyUnite3.ip[1]";
connectAttr "polySurfaceShape2.wm" "polyUnite3.im[0]";
connectAttr "polySurfaceShape3.wm" "polyUnite3.im[1]";
connectAttr "polyUnite3.out" "groupParts40.ig";
connectAttr "groupId40.id" "groupParts40.gi";
connectAttr "groupParts40.og" "groupParts41.ig";
connectAttr "groupId41.id" "groupParts41.gi";
connectAttr "groupParts41.og" "groupParts42.ig";
connectAttr "groupId42.id" "groupParts42.gi";
connectAttr "|polySurface2|transform13|polySurface2Shape.o" "polyUnite4.ip[0]";
connectAttr "polySurfaceShape5.o" "polyUnite4.ip[1]";
connectAttr "polySurface6Shape.o" "polyUnite4.ip[2]";
connectAttr "polySurfaceShape4.o" "polyUnite4.ip[3]";
connectAttr "|polySurface2|transform13|polySurface2Shape.wm" "polyUnite4.im[0]";
connectAttr "polySurfaceShape5.wm" "polyUnite4.im[1]";
connectAttr "polySurface6Shape.wm" "polyUnite4.im[2]";
connectAttr "polySurfaceShape4.wm" "polyUnite4.im[3]";
connectAttr "polyUnite4.out" "groupParts43.ig";
connectAttr "groupId43.id" "groupParts43.gi";
connectAttr "groupParts43.og" "groupParts44.ig";
connectAttr "groupId44.id" "groupParts44.gi";
connectAttr "groupParts44.og" "groupParts45.ig";
connectAttr "groupId45.id" "groupParts45.gi";
connectAttr "groupParts45.og" "groupParts46.ig";
connectAttr "groupId46.id" "groupParts46.gi";
connectAttr "groupParts46.og" "groupParts48.ig";
connectAttr "groupId48.id" "groupParts48.gi";
connectAttr "groupParts48.og" "groupParts49.ig";
connectAttr "groupId49.id" "groupParts49.gi";
connectAttr "groupParts49.og" "groupParts50.ig";
connectAttr "groupId50.id" "groupParts50.gi";
connectAttr "groupParts50.og" "groupParts51.ig";
connectAttr "groupId51.id" "groupParts51.gi";
connectAttr "groupParts51.og" "groupParts52.ig";
connectAttr "groupId52.id" "groupParts52.gi";
connectAttr "skinCluster1GroupParts.og" "skinCluster1.ip[0].ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1.ip[0].gi";
connectAttr "bindPose1.msg" "skinCluster1.bp";
connectAttr "pasted__joint1.wm" "skinCluster1.ma[0]";
connectAttr "pasted__joint2.wm" "skinCluster1.ma[1]";
connectAttr "pasted__joint3.wm" "skinCluster1.ma[2]";
connectAttr "pasted__joint4.wm" "skinCluster1.ma[3]";
connectAttr "pasted__joint5.wm" "skinCluster1.ma[4]";
connectAttr "pasted__joint6.wm" "skinCluster1.ma[5]";
connectAttr "pasted__joint7.wm" "skinCluster1.ma[6]";
connectAttr "pasted__joint8.wm" "skinCluster1.ma[7]";
connectAttr "pasted__joint1.liw" "skinCluster1.lw[0]";
connectAttr "pasted__joint2.liw" "skinCluster1.lw[1]";
connectAttr "pasted__joint3.liw" "skinCluster1.lw[2]";
connectAttr "pasted__joint4.liw" "skinCluster1.lw[3]";
connectAttr "pasted__joint5.liw" "skinCluster1.lw[4]";
connectAttr "pasted__joint6.liw" "skinCluster1.lw[5]";
connectAttr "pasted__joint7.liw" "skinCluster1.lw[6]";
connectAttr "pasted__joint8.liw" "skinCluster1.lw[7]";
connectAttr "pasted__joint1.obcc" "skinCluster1.ifcl[0]";
connectAttr "pasted__joint2.obcc" "skinCluster1.ifcl[1]";
connectAttr "pasted__joint3.obcc" "skinCluster1.ifcl[2]";
connectAttr "pasted__joint4.obcc" "skinCluster1.ifcl[3]";
connectAttr "pasted__joint5.obcc" "skinCluster1.ifcl[4]";
connectAttr "pasted__joint6.obcc" "skinCluster1.ifcl[5]";
connectAttr "pasted__joint7.obcc" "skinCluster1.ifcl[6]";
connectAttr "pasted__joint8.obcc" "skinCluster1.ifcl[7]";
connectAttr "groupParts54.og" "tweak2.ip[0].ig";
connectAttr "groupId54.id" "tweak2.ip[0].gi";
connectAttr "skinCluster1GroupId.msg" "skinCluster1Set.gn" -na;
connectAttr "|polySurface8|polySurface2Shape.iog.og[12]" "skinCluster1Set.dsm" -na
		;
connectAttr "skinCluster1.msg" "skinCluster1Set.ub[0]";
connectAttr "tweak2.og[0]" "skinCluster1GroupParts.ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1GroupParts.gi";
connectAttr "groupId54.msg" "tweakSet2.gn" -na;
connectAttr "|polySurface8|polySurface2Shape.iog.og[13]" "tweakSet2.dsm" -na;
connectAttr "tweak2.msg" "tweakSet2.ub[0]";
connectAttr "polySurface2ShapeOrig.w" "groupParts54.ig";
connectAttr "groupId54.id" "groupParts54.gi";
connectAttr "group5.msg" "bindPose1.m[0]";
connectAttr "pasted__joint1.msg" "bindPose1.m[1]";
connectAttr "pasted__joint2.msg" "bindPose1.m[2]";
connectAttr "pasted__joint3.msg" "bindPose1.m[3]";
connectAttr "pasted__joint4.msg" "bindPose1.m[4]";
connectAttr "pasted__joint5.msg" "bindPose1.m[5]";
connectAttr "pasted__joint6.msg" "bindPose1.m[6]";
connectAttr "pasted__joint7.msg" "bindPose1.m[7]";
connectAttr "pasted__joint8.msg" "bindPose1.m[8]";
connectAttr "bindPose1.w" "bindPose1.p[0]";
connectAttr "bindPose1.m[0]" "bindPose1.p[1]";
connectAttr "bindPose1.m[1]" "bindPose1.p[2]";
connectAttr "bindPose1.m[2]" "bindPose1.p[3]";
connectAttr "bindPose1.m[3]" "bindPose1.p[4]";
connectAttr "bindPose1.m[4]" "bindPose1.p[5]";
connectAttr "bindPose1.m[5]" "bindPose1.p[6]";
connectAttr "bindPose1.m[6]" "bindPose1.p[7]";
connectAttr "bindPose1.m[7]" "bindPose1.p[8]";
connectAttr "pasted__joint1.bps" "bindPose1.wm[1]";
connectAttr "pasted__joint2.bps" "bindPose1.wm[2]";
connectAttr "pasted__joint3.bps" "bindPose1.wm[3]";
connectAttr "pasted__joint4.bps" "bindPose1.wm[4]";
connectAttr "pasted__joint5.bps" "bindPose1.wm[5]";
connectAttr "pasted__joint6.bps" "bindPose1.wm[6]";
connectAttr "pasted__joint7.bps" "bindPose1.wm[7]";
connectAttr "pasted__joint8.bps" "bindPose1.wm[8]";
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert3SG.pa" ":renderPartition.st" -na;
connectAttr "pasted__lambert2SG2.pa" ":renderPartition.st" -na;
connectAttr "pasted__lambert3SG2.pa" ":renderPartition.st" -na;
connectAttr "pasted__lambert2SG4.pa" ":renderPartition.st" -na;
connectAttr "pasted__lambert3SG4.pa" ":renderPartition.st" -na;
connectAttr "bark.msg" ":defaultShaderList1.s" -na;
connectAttr "leaves.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__bark2.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__leaves2.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__bark4.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__leaves4.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of tree2_adult.ma
