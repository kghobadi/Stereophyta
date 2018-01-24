//Maya ASCII 2016 scene
//Name: tree2_young.ma
//Last modified: Tue, Nov 07, 2017 01:11:05 PM
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
createNode transform -n "group7";
	rename -uid "D923109B-5645-343A-066B-F1BF470DAAD8";
	setAttr ".rp" -type "double3" 4.6003870964050293 9.7181783312047578 9.4443098541432384 ;
	setAttr ".sp" -type "double3" 4.6003870964050293 9.7181783312047578 9.4443098541432384 ;
createNode transform -n "pasted__polySurface1" -p "group7";
	rename -uid "36CD40DE-6E4D-6D17-31EB-359C07AD21BC";
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
createNode mesh -n "pasted__polySurfaceShape1" -p "pasted__polySurface1";
	rename -uid "B646A2D3-7B44-2F89-9F3C-749998CC2A18";
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
createNode mesh -n "pasted__polySurface1ShapeOrig" -p "pasted__polySurface1";
	rename -uid "4B003003-2746-A234-F86A-2190902B9CE2";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pasted__transform2" -p "pasted__polySurface1";
	rename -uid "446D282A-1E4E-191D-93B2-42BA6B5AB573";
	setAttr ".v" no;
createNode mesh -n "pasted__polySurface1Shape" -p "pasted__transform2";
	rename -uid "2BD34679-A14E-C2A7-E93E-EBB7E9BB0008";
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
createNode transform -n "pasted__group5" -p "group7";
	rename -uid "32103C90-7A48-FCD6-A582-C283FA602C29";
	setAttr ".rp" -type "double3" 6.5326788425445557 9.9383148319867214 8.0076255798339844 ;
	setAttr ".sp" -type "double3" 6.5326788425445557 9.9383148319867214 8.0076255798339844 ;
createNode transform -n "pasted__pasted__polySurface1" -p "pasted__group5";
	rename -uid "83D58A84-B94B-6CA4-3BFE-BE859627E9E5";
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
createNode mesh -n "pasted__pasted__polySurfaceShape1" -p "|group7|pasted__group5|pasted__pasted__polySurface1";
	rename -uid "617BCF30-FB4F-8029-D6E1-71A5480D1CF1";
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
createNode mesh -n "pasted__pasted__polySurface1ShapeOrig" -p "|group7|pasted__group5|pasted__pasted__polySurface1";
	rename -uid "69CAAE36-AB48-71CD-C402-28B5CB5A056D";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pasted__transform3" -p "|group7|pasted__group5|pasted__pasted__polySurface1";
	rename -uid "18CFD7F2-8347-79BF-4FBF-F0BDF5075518";
	setAttr ".v" no;
createNode mesh -n "pasted__pasted__polySurface1Shape" -p "pasted__transform3";
	rename -uid "997D29C6-1040-284C-C9E2-D4A8109B24A3";
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
createNode joint -n "pasted__pasted__joint1" -p "pasted__group5";
	rename -uid "87D796C2-CE44-9720-9370-1EBE37F98064";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 0 -0.10910105556967677 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 89.999999999999986 1.0609116902641673 90 ;
	setAttr ".bps" -type "matrix" 0 0.99982857632513145 -0.018515344006019788 0 -3.3306690738754706e-16 0.018515344006019618 0.99982857632513145 0
		 1.0000000000000002 -1.1102230246251568e-16 2.2204460492503131e-16 0 0 -0.10910105556967677 0 1;
	setAttr ".radi" 1.1555221341283088;
createNode joint -n "pasted__pasted__joint2" -p "pasted__pasted__joint1";
	rename -uid "21E6EBF6-3645-8588-FE8F-44A310C61C7B";
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
createNode joint -n "pasted__pasted__joint3" -p "pasted__pasted__joint2";
	rename -uid "329BC6A4-A544-1B2D-DE9F-578EB0347AF8";
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
createNode joint -n "pasted__pasted__joint4" -p "pasted__pasted__joint3";
	rename -uid "9D3AFFB6-CE4F-41D3-9F10-4AB97A82709A";
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
createNode joint -n "pasted__pasted__joint5" -p "pasted__pasted__joint4";
	rename -uid "B7AFD48B-0548-61B0-D9A1-4F9E7D337423";
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
createNode joint -n "pasted__pasted__joint6" -p "pasted__pasted__joint5";
	rename -uid "56055B32-5E4B-3B10-2DB7-7584B339C910";
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
createNode joint -n "pasted__pasted__joint7" -p "pasted__pasted__joint6";
	rename -uid "83DA20B2-7E44-7F21-F03A-75889A3F1EDD";
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
createNode joint -n "pasted__pasted__joint8" -p "pasted__pasted__joint7";
	rename -uid "419DC2E2-C640-1BF7-1CD4-AC8181695001";
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
createNode transform -n "pasted__group6" -p "group7";
	rename -uid "867FF70C-A348-5CCF-69F6-AA9859DADDD6";
	setAttr ".rp" -type "double3" 6.5326788425445557 7.171691327228908 5.851685683901712 ;
	setAttr ".sp" -type "double3" 6.5326788425445557 7.171691327228908 5.851685683901712 ;
createNode transform -n "pasted__pasted__polySurface1" -p "pasted__group6";
	rename -uid "37BD0D9E-0F4D-2750-8036-088BB5C0640A";
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
createNode mesh -n "pasted__pasted__polySurfaceShape1" -p "|group7|pasted__group6|pasted__pasted__polySurface1";
	rename -uid "D6296DBE-AE44-E1F3-96EF-71B437C67BCB";
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
createNode mesh -n "pasted__pasted__polySurface1ShapeOrig" -p "|group7|pasted__group6|pasted__pasted__polySurface1";
	rename -uid "958A24E5-4940-8534-C0F7-E2B6AED9D7D3";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pasted__transform4" -p "|group7|pasted__group6|pasted__pasted__polySurface1";
	rename -uid "77C4B4B8-A84E-BD11-39D1-6CBBDDCB1F0F";
	setAttr ".v" no;
createNode mesh -n "pasted__pasted__polySurface1Shape" -p "pasted__transform4";
	rename -uid "20F5E3F4-B24D-6D26-CF6A-0DA7F2FB5628";
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
createNode transform -n "pasted__group6_pasted__polySurface1" -p "group7";
	rename -uid "FD135E93-F747-BF8E-5C25-A0BEB1A38FB7";
	setAttr ".rp" -type "double3" 6.5326788425445557 9.7797562070190907 8.7703984379768372 ;
	setAttr ".sp" -type "double3" 6.5326788425445557 9.7797562070190907 8.7703984379768372 ;
createNode transform -n "polySurface4" -p "pasted__group6_pasted__polySurface1";
	rename -uid "940EA573-9F40-612F-62EB-3E985F3430B5";
createNode transform -n "transform9" -p "|group7|pasted__group6_pasted__polySurface1|polySurface4";
	rename -uid "D9C4C8FD-7747-C689-07A0-91A2E0F59302";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape4" -p "transform9";
	rename -uid "D16CA999-6D41-4E04-5F2F-439886D749B8";
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
createNode transform -n "polySurface5" -p "pasted__group6_pasted__polySurface1";
	rename -uid "3F1BC5EC-5A48-8156-BFC9-00A257ABE7D5";
createNode transform -n "transform8" -p "polySurface5";
	rename -uid "FB05C276-2F40-E95A-0CD4-0FA8D82B7BFE";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape5" -p "transform8";
	rename -uid "D795FF2C-364E-C4FF-9FB6-36907C4CBC1B";
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
createNode transform -n "polySurface6" -p "pasted__group6_pasted__polySurface1";
	rename -uid "4BD2C1C4-324F-0098-3A12-A989FB7E2353";
createNode transform -n "transform7" -p "polySurface6";
	rename -uid "004F630E-2744-F3F5-F56F-51B08DF34B62";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape6" -p "transform7";
	rename -uid "08E5439E-F942-06B0-4804-3094F5FF1184";
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
createNode transform -n "polySurface7" -p "pasted__group6_pasted__polySurface1";
	rename -uid "56DB9CF1-4B4D-FE86-61FD-4BB75065C1B3";
createNode transform -n "transform6" -p "polySurface7";
	rename -uid "D4FD5F0C-5B41-575C-31DE-FC9DC3DB0DAE";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape7" -p "transform6";
	rename -uid "ED7687DB-614A-1955-1FAD-C4BE9816A45A";
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
createNode transform -n "transform5" -p "pasted__group6_pasted__polySurface1";
	rename -uid "C9FCB24B-4E4D-AB6F-890D-EEB589E6D308";
	setAttr ".v" no;
createNode mesh -n "pasted__group6_pasted__polySurface1Shape" -p "transform5";
	rename -uid "951FE5E9-6546-8D66-9348-D98D6BBBB8BE";
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
createNode transform -n "polySurface4";
	rename -uid "0AA20C3B-084E-5D7A-15AE-99AC15559C1F";
createNode transform -n "polySurface8" -p "|polySurface4";
	rename -uid "D1AB6D1D-E045-A2D4-7E44-02B1D21E9151";
	setAttr ".t" -type "double3" 3.7416664860345037 0 -4.0496161978876213 ;
createNode transform -n "transform12" -p "|polySurface4|polySurface8";
	rename -uid "51AB4804-4643-A12D-0887-46B731921FD4";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape8" -p "transform12";
	rename -uid "BD9568F0-4E4D-DE61-53A1-BCA4BC381249";
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
createNode transform -n "polySurface9" -p "|polySurface4";
	rename -uid "156C56D4-4A46-564C-929B-469B82E2A0D0";
	setAttr ".t" -type "double3" 3.7416664860345037 0 -4.0496161978876213 ;
createNode transform -n "transform11" -p "polySurface9";
	rename -uid "1DAD8B3E-0F4F-D7F7-6D9C-AF863C115B1D";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape9" -p "transform11";
	rename -uid "F7C80168-6341-10C7-36ED-A9BD3A0DEEBD";
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
createNode transform -n "polySurface10" -p "|polySurface4";
	rename -uid "BB933A83-DF4C-4661-875B-47A50882AC17";
	setAttr ".rp" -type "double3" 7.925915002822876 6.6246576309204102 10.280797481536865 ;
	setAttr ".sp" -type "double3" 7.925915002822876 6.6246576309204102 10.280797481536865 ;
createNode transform -n "transform13" -p "polySurface10";
	rename -uid "6F08A0E6-BD4A-031C-9AA9-0F88587F1101";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape10" -p "transform13";
	rename -uid "A4884D36-A24A-23AE-A490-85A1378BFAFC";
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
createNode transform -n "polySurface11" -p "|polySurface4";
	rename -uid "28AFF5E4-5A43-3376-3669-C28CC5DDA24A";
	setAttr ".rp" -type "double3" 7.9259152412414551 16.276506423950195 10.280797243118286 ;
	setAttr ".sp" -type "double3" 7.9259152412414551 16.276506423950195 10.280797243118286 ;
createNode transform -n "transform14" -p "|polySurface4|polySurface11";
	rename -uid "7C31A0E4-8F46-1EA6-08DF-2FA54E35AB7B";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape11" -p "transform14";
	rename -uid "0B41F744-3643-C471-2544-70BCB12ED03D";
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
createNode transform -n "transform10" -p "|polySurface4";
	rename -uid "F276168E-734A-89F3-1D39-52A90EA07B7D";
	setAttr ".v" no;
createNode mesh -n "polySurface4Shape" -p "transform10";
	rename -uid "FA0C7CDC-4047-0E98-743B-3095236F8987";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 12 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -s -n "persp";
	rename -uid "177B2880-9F4D-7C62-5C2A-079B0913951D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 34.588704099609174 14.254191918590102 -4.3391362584355999 ;
	setAttr ".r" -type "double3" -11.738352729568232 93.399999999984345 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "E9D7AE51-2F4E-1F63-3E92-068D7C5CA803";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 35.389805869323524;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 2.2204460492503131e-16 7.0543934312379282 -2.284188590102799 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "3A1C2C60-A04E-E74F-08F8-089C9B68F824";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "7E049E3F-0A49-21CB-1080-D1A5690F36FC";
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
	rename -uid "C6424CD6-2743-8A8C-7FC3-14B3E39A1D45";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "7C8D492B-424B-1768-EB83-3AA32A091C73";
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
	rename -uid "97A395D3-4F46-C906-F0B0-81B02AD37DFD";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "7D734674-F846-34B6-3BAC-67BEFF151D61";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "polySurface8";
	rename -uid "C077E203-8F4A-B35F-02C2-919AC3C4EC5E";
	setAttr ".t" -type "double3" -3.7416664361953735 -2.7561696562254507 1.7654278659290004 ;
	setAttr ".r" -type "double3" -22.630435576009138 0 0 ;
	setAttr ".s" -type "double3" 0.61496060076106784 0.61496060076106784 0.61496060076106784 ;
	setAttr ".rp" -type "double3" 3.7416664361953735 9.8105630874633789 -4.0496164560317993 ;
	setAttr ".sp" -type "double3" 3.7416664361953735 9.8105630874633789 -4.0496164560317993 ;
createNode transform -n "transform16" -p "|polySurface8";
	rename -uid "C359EBEC-A646-16A2-45E2-E18D57C0B6C2";
	setAttr ".v" no;
createNode mesh -n "polySurface8Shape" -p "transform16";
	rename -uid "E50DE45C-FE45-E425-50AF-1296D42066EF";
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
createNode transform -n "polySurface11";
	rename -uid "FE3F8B50-A842-F190-C459-C1A1BA6A0787";
createNode transform -n "transform15" -p "|polySurface11";
	rename -uid "66DC031E-A34B-14DA-2D80-D2BD5109EEF1";
	setAttr ".v" no;
createNode mesh -n "polySurface11Shape" -p "transform15";
	rename -uid "D2429C7D-CD4E-48AB-7EC8-E6BDDFA34258";
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
	setAttr -s 88 ".pt[0:87]" -type "float3"  0 -0.87275141 0.092109092 
		0 -0.87275141 0.092109106 0 -0.87275141 1.5848636e-08 0 -0.87275141 -0.092109099 
		0 -0.87275141 -0.092109099 0 -0.87275141 0 0 -0.9821927 0.14903563 0 -0.9821927 0.14903565 
		0 -0.9821927 2.5643637e-08 0 -0.9821927 -0.14903563 0 -0.9821927 -0.14903565 0 -0.9821927 
		0 0 -1.1174697 0.14903563 0 -1.1174697 0.14903565 0 -1.1174697 2.5643637e-08 0 -1.1174697 
		-0.14903563 0 -1.1174697 -0.14903565 0 -1.1174697 0 0 -1.2269106 0.092109092 0 -1.2269106 
		0.092109106 0 -1.2269106 1.5848636e-08 0 -1.2269106 -0.092109099 0 -1.2269106 -0.092109099 
		0 -1.2269106 0 0 -0.83094847 0 0 -1.2687135 0 0 0.0031553081 0.010363598 0 0.0031553081 
		0.010363598 0 0.0031553081 1.7831995e-09 0 0.0031553081 -0.010363598 0 0.0031553081 
		-0.010363598 0 0.0031553081 0 0 -0.85773325 0.010363598 0 -0.85773325 0.010363598 
		0 -0.85773325 1.7831991e-09 0 -0.85773325 -0.010363598 0 -0.85773325 -0.010363598 
		0 -0.85773325 0 0 0.0031553081 0 0 -0.85773325 0 0 -0.0994654 -0.010363598 0 -0.0994654 
		1.7831995e-09 0 -0.0994654 0.010363598 0 -0.0994654 0.010363598 0 -0.0994654 0 0 
		-0.0994654 -0.010363598 0 -0.22118683 -0.010363598 0 -0.22118683 1.7831995e-09 0 
		-0.22118683 0.010363598 0 -0.22118683 0.010363598 0 -0.22118683 0 0 -0.22118683 -0.010363598 
		0 -0.324422 -0.010363598 0 -0.324422 1.7831995e-09 0 -0.324422 0.010363598 0 -0.324422 
		0.010363598 0 -0.324422 0 0 -0.324422 -0.010363598 0 -0.42365524 -0.010363598 0 -0.42365524 
		1.7831991e-09 0 -0.42365524 0.010363598 0 -0.42365524 0.010363598 0 -0.42365524 0 
		0 -0.42365524 -0.010363598 0 -0.52607346 -0.010363598 0 -0.52607346 1.7831991e-09 
		0 -0.52607346 0.010363598 0 -0.52607346 0.010363598 0 -0.52607346 0 0 -0.52607346 
		-0.010363598 0 -0.63034612 -0.010363598 0 -0.63034612 1.7831991e-09 0 -0.63034612 
		0.010363598 0 -0.63034612 0.010363598 0 -0.63034612 0 0 -0.63034612 -0.010363598 
		0 -0.71896648 -0.010363598 0 -0.71896648 1.7831991e-09 0 -0.71896648 0.010363598 
		0 -0.71896648 0.010363598 0 -0.71896648 0 0 -0.71896648 -0.010363598 0 -0.80852407 
		-0.010363598 0 -0.80852407 1.7831991e-09 0 -0.80852407 0.010363598 0 -0.80852407 
		0.010363598 0 -0.80852407 0 0 -0.80852407 -0.010363598;
createNode transform -n "polySurface12";
	rename -uid "D0866BB4-154B-19BD-24C4-7EBC3FB20E9D";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "polySurface8Shape" -p "polySurface12";
	rename -uid "B071BF51-1C46-F315-00CB-11B957D247F5";
	setAttr -k off ".v";
	setAttr -s 16 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
createNode mesh -n "polySurface8ShapeOrig" -p "polySurface12";
	rename -uid "B480D142-8E48-E855-1055-42A26D1B6809";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode groupParts -n "groupParts36";
	rename -uid "5F311EC3-EA45-17D7-1C89-82A3ACACD9B1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[162:191]";
createNode groupParts -n "groupParts35";
	rename -uid "4CF8C098-F44D-EDB0-4EB0-6C8A046884DF";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[88:175]";
createNode groupParts -n "groupParts33";
	rename -uid "5C89CC11-F741-5639-DBB2-2494CC0814CE";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[96:161]";
createNode groupParts -n "groupParts32";
	rename -uid "1D52FB0D-1F42-3763-64C1-3A9C81A5E8F1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[66:95]";
createNode groupParts -n "groupParts31";
	rename -uid "87448E13-624D-00D2-1E62-2AAAA5459EA5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[0:87]";
createNode groupParts -n "groupParts29";
	rename -uid "F49477D3-1A4D-09F4-8614-B882E13C670F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:65]";
createNode polyUnite -n "polyUnite1";
	rename -uid "7CCD9A6D-934A-EF29-6578-1D9F89A7B1F3";
	setAttr -s 4 ".ip";
	setAttr -s 4 ".im";
createNode groupParts -n "groupParts13";
	rename -uid "2D1CACF3-4B4B-A4F3-AA75-7BA0D910393C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[0:61]";
createNode groupParts -n "groupParts11";
	rename -uid "76B10C61-1849-74F8-0935-69A56742C483";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:65]";
createNode polySeparate -n "polySeparate2";
	rename -uid "C401444A-5148-4939-BDB7-BAA6A155DB3B";
	setAttr ".ic" 6;
	setAttr -s 4 ".out";
createNode groupParts -n "pasted__groupParts28";
	rename -uid "736A1212-5249-9460-5CA0-94B72A6C2621";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[176:263]";
createNode groupParts -n "pasted__groupParts26";
	rename -uid "863ED2A5-A040-B78E-527A-969E15154A4A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[210:239]";
createNode groupParts -n "pasted__groupParts25";
	rename -uid "E6A12BFA-5C4B-4AD7-DA39-6A87315D4ABA";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[192:209]" "f[240:287]";
createNode groupParts -n "pasted__groupParts24";
	rename -uid "271A98F6-2045-2EEF-6A11-F0A7637B7E4C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[88:175]";
createNode groupParts -n "pasted__groupParts22";
	rename -uid "3D651F70-7046-8556-37D3-FD83BEF8C1DF";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[114:143]";
createNode groupParts -n "pasted__groupParts21";
	rename -uid "18DB0D27-AA46-C761-5122-F1933BCAC42B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[96:113]" "f[144:191]";
createNode groupParts -n "pasted__groupParts20";
	rename -uid "8B7528A5-4041-46A3-CAF2-EFA19A9ACECB";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[0:87]";
createNode groupParts -n "pasted__groupParts18";
	rename -uid "84F989FE-DB43-B27F-AABD-2D82576AEFEC";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[18:47]";
createNode groupParts -n "pasted__groupParts17";
	rename -uid "B679CF01-2E44-02E8-3890-2297882328F6";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[0:17]" "f[48:95]";
createNode polyUnite -n "pasted__polyUnite1";
	rename -uid "A9D163F7-F841-607D-710E-968F80851B94";
	setAttr -s 3 ".ip";
	setAttr -s 3 ".im";
createNode groupParts -n "groupParts16";
	rename -uid "F2C65EA2-4844-DE65-76D0-04B854972E25";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[0:25]";
createNode groupParts -n "groupParts14";
	rename -uid "90F1E6E9-F643-C296-F517-B4A6CB514E88";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:29]";
createNode groupId -n "groupId14";
	rename -uid "37CF02A8-F945-31BD-C85D-B49320A6C11E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId16";
	rename -uid "8C9E7F03-8144-C8E0-A0CC-34BD622810E0";
	setAttr ".ihi" 0;
createNode shadingEngine -n "pasted__pasted__lambert3SG4";
	rename -uid "B53B5C68-5542-85BD-56AD-46B395F7294D";
	setAttr ".ihi" 0;
	setAttr -s 7 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 7 ".gn";
createNode materialInfo -n "pasted__pasted__materialInfo10";
	rename -uid "E09FC873-FD49-4B40-9EF0-8094C8E7B565";
createNode lambert -n "pasted__pasted__leaves4";
	rename -uid "98CF92F4-A742-6581-6801-5C9F9989C9D8";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 1 0.33610001 0 ;
	setAttr ".ambc" -type "float3" 0.41463339 0.41463339 0.41463339 ;
createNode objectSet -n "pasted__pasted__tweakSet4";
	rename -uid "1F36B648-BD40-BD9A-C256-87B0A0646D28";
	setAttr ".ihi" 0;
	setAttr -s 9 ".dsm";
	setAttr ".vo" yes;
	setAttr -s 9 ".gn";
createNode groupId -n "pasted__pasted__groupId13";
	rename -uid "52F6527E-E848-4C4B-64C4-50A8836EA89C";
	setAttr ".ihi" 0;
createNode groupId -n "pasted__groupId20";
	rename -uid "9C6A6BC9-E14B-722B-EF3E-46A655157C0B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId13";
	rename -uid "1F1F1839-2E44-F407-BAAA-7BA9862608FA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId31";
	rename -uid "9D00A58C-564A-E8CC-3376-3BB5BE060556";
	setAttr ".ihi" 0;
createNode tweak -n "pasted__pasted__tweak4";
	rename -uid "17B0435C-AD4C-E9D8-D451-3B922271B65A";
createNode groupParts -n "pasted__pasted__groupParts13";
	rename -uid "A6A0C341-254C-8D3F-09BB-3282A1E0AB7D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode polySplitRing -n "pasted__pasted__polySplitRing32";
	rename -uid "5D0A338C-AB4C-24E7-3353-3099A4156CBB";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[156:157]" "e[159]" "e[161]" "e[163]" "e[165]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.64538180828094482;
	setAttr ".re" 156;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "pasted__pasted__polySplitRing31";
	rename -uid "A0BAD1C0-994B-06ED-D390-E29055D602A6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[144:145]" "e[147]" "e[149]" "e[151]" "e[153]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.38973343372344971;
	setAttr ".re" 144;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "pasted__pasted__polySplitRing30";
	rename -uid "CD923795-734E-F319-13B1-41A0F053E2A4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[132:133]" "e[135]" "e[137]" "e[139]" "e[141]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.31439617276191711;
	setAttr ".re" 132;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "pasted__pasted__polySplitRing29";
	rename -uid "CCD67F22-184C-9628-3DD7-FDB09BB0237E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[120:121]" "e[123]" "e[125]" "e[127]" "e[129]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.23594433069229126;
	setAttr ".re" 120;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "pasted__pasted__polySplitRing28";
	rename -uid "896435A2-1E45-D47A-8030-36A962C05B01";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[108:109]" "e[111]" "e[113]" "e[115]" "e[117]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.18606995046138763;
	setAttr ".re" 108;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "pasted__pasted__polySplitRing27";
	rename -uid "93949ED7-1241-D396-56DB-F297DE379B1F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[96:97]" "e[99]" "e[101]" "e[103]" "e[105]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.16217997670173645;
	setAttr ".re" 96;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "pasted__pasted__polySplitRing26";
	rename -uid "4EF51EB9-614B-2992-497B-D9A5397FF1B1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[84:85]" "e[87]" "e[89]" "e[91]" "e[93]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.16052569448947906;
	setAttr ".re" 84;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "pasted__pasted__polySplitRing25";
	rename -uid "BA42A41A-DA4B-8B7B-B412-A0925C52EE34";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[12:17]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.11920327693223953;
	setAttr ".re" 15;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode groupParts -n "pasted__pasted__groupParts12";
	rename -uid "E923CB85-3C44-1010-EF4B-46B3FBD879AA";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[18:47]";
createNode groupParts -n "pasted__pasted__groupParts11";
	rename -uid "5E38D671-9A45-8F12-3D9D-64BC6EEFB09C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:17]";
createNode groupId -n "pasted__pasted__groupId11";
	rename -uid "52D5F9FE-5745-ADD8-8B94-1AB839827687";
	setAttr ".ihi" 0;
createNode groupId -n "pasted__pasted__groupId12";
	rename -uid "FEFCECEB-F046-F171-F058-DBBC5EF55E67";
	setAttr ".ihi" 0;
createNode shadingEngine -n "pasted__pasted__lambert2SG4";
	rename -uid "341FA5C3-C349-0803-9EDF-8E9C5C251A25";
	setAttr ".ihi" 0;
	setAttr -s 7 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 7 ".gn";
createNode materialInfo -n "pasted__pasted__materialInfo9";
	rename -uid "1DA68339-C545-5CBA-6DE3-1788827C9411";
createNode lambert -n "pasted__pasted__bark4";
	rename -uid "F363D177-4643-23C5-236B-97BD719CEA6B";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 1 1 1 ;
createNode groupParts -n "groupParts19";
	rename -uid "33EC9E50-A14E-26F6-B2DC-4A9C09D11C56";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[0:61]";
createNode groupParts -n "groupParts17";
	rename -uid "47610C8D-BA48-E865-F6D2-68A7A93F0A09";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:65]";
createNode groupId -n "groupId17";
	rename -uid "8FFC8D5B-9045-5321-935E-9593271BDEF0";
	setAttr ".ihi" 0;
createNode groupId -n "groupId19";
	rename -uid "18121A9C-434E-7933-B3AD-30AA68BCBBA9";
	setAttr ".ihi" 0;
createNode shadingEngine -n "pasted__pasted__lambert2SG2";
	rename -uid "54CD8B9F-234D-8E1D-3AAB-F4A609C52706";
	setAttr ".ihi" 0;
	setAttr -s 7 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 7 ".gn";
createNode materialInfo -n "pasted__pasted__materialInfo5";
	rename -uid "45541661-9149-AC6C-8DBA-4195B9478990";
createNode lambert -n "pasted__pasted__bark2";
	rename -uid "4C8A0599-2C44-7E91-E211-2A856111EEC1";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 1 1 1 ;
createNode objectSet -n "pasted__pasted__tweakSet3";
	rename -uid "88DFC72B-E045-F845-165D-F78540CA34D3";
	setAttr ".ihi" 0;
	setAttr -s 9 ".dsm";
	setAttr ".vo" yes;
	setAttr -s 9 ".gn";
createNode groupId -n "pasted__pasted__groupId10";
	rename -uid "2AECCB9B-3642-77B9-23D3-49995F1DE9C7";
	setAttr ".ihi" 0;
createNode groupId -n "pasted__groupId24";
	rename -uid "94D27D58-6440-8E44-8B93-608D2CB14770";
	setAttr ".ihi" 0;
createNode groupId -n "groupId22";
	rename -uid "C589FAB0-9546-BEF1-EC36-0A85966476B2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId35";
	rename -uid "DA219168-7C47-F613-BE15-C78591DF3345";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts22";
	rename -uid "9B7651CB-834B-4E0D-34C7-DEA4DCF2CAB6";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[0:25]";
createNode groupParts -n "groupParts20";
	rename -uid "6ED3AEB8-6F40-15D4-2446-6589BE6B7F56";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:29]";
createNode groupId -n "groupId20";
	rename -uid "0EE60093-4645-5908-2829-27BA28E44AC8";
	setAttr ".ihi" 0;
createNode shadingEngine -n "pasted__pasted__lambert3SG2";
	rename -uid "148A53B1-464B-834B-6FBC-59A9C01694DD";
	setAttr ".ihi" 0;
	setAttr -s 7 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 7 ".gn";
createNode materialInfo -n "pasted__pasted__materialInfo6";
	rename -uid "182C09EA-284D-7814-C49B-28A55E3BC6C3";
createNode lambert -n "pasted__pasted__leaves2";
	rename -uid "1874345C-AA44-060E-C29E-2A93485A946D";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 1 0.33610001 0 ;
	setAttr ".ambc" -type "float3" 0.41463339 0.41463339 0.41463339 ;
createNode tweak -n "pasted__pasted__tweak3";
	rename -uid "E5984E28-7246-8064-B463-B4984EAEF1B6";
createNode groupParts -n "pasted__pasted__groupParts10";
	rename -uid "3115200A-4E40-0587-C6EB-6F89257D3FB7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode polySplitRing -n "pasted__pasted__polySplitRing24";
	rename -uid "36006066-B942-5CC6-36E8-D8A4B4A987F7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[156:157]" "e[159]" "e[161]" "e[163]" "e[165]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.64538180828094482;
	setAttr ".re" 156;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "pasted__pasted__polySplitRing23";
	rename -uid "A3B73040-FD49-8669-829E-FFBDDFBD2E51";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[144:145]" "e[147]" "e[149]" "e[151]" "e[153]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.38973343372344971;
	setAttr ".re" 144;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "pasted__pasted__polySplitRing22";
	rename -uid "188FD468-9447-E7A7-5C6A-CD923177C40E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[132:133]" "e[135]" "e[137]" "e[139]" "e[141]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.31439617276191711;
	setAttr ".re" 132;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "pasted__pasted__polySplitRing21";
	rename -uid "0D692920-7547-8D85-A9B2-07B18C73E0D3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[120:121]" "e[123]" "e[125]" "e[127]" "e[129]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.23594433069229126;
	setAttr ".re" 120;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "pasted__pasted__polySplitRing20";
	rename -uid "CD54E075-1949-50CD-EC49-F1B03A303F23";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[108:109]" "e[111]" "e[113]" "e[115]" "e[117]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.18606995046138763;
	setAttr ".re" 108;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "pasted__pasted__polySplitRing19";
	rename -uid "18F81D65-D04B-1DF7-5EBE-E4AE322284DF";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[96:97]" "e[99]" "e[101]" "e[103]" "e[105]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.16217997670173645;
	setAttr ".re" 96;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "pasted__pasted__polySplitRing18";
	rename -uid "52A639E3-3643-6226-E723-CD88C209CB37";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[84:85]" "e[87]" "e[89]" "e[91]" "e[93]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.16052569448947906;
	setAttr ".re" 84;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "pasted__pasted__polySplitRing17";
	rename -uid "B13B9D07-8846-26B1-D78C-B1B839D0BE6C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[12:17]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.11920327693223953;
	setAttr ".re" 15;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode groupParts -n "pasted__pasted__groupParts9";
	rename -uid "90B117F3-4E45-1B1B-353E-6FBBB074D1B5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[18:47]";
createNode groupParts -n "pasted__pasted__groupParts8";
	rename -uid "F5E67435-1C43-05B9-BD45-B7BC5973D499";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:17]";
createNode groupId -n "pasted__pasted__groupId8";
	rename -uid "6870A357-014A-88BE-F7DC-8F82ED4B24DE";
	setAttr ".ihi" 0;
createNode groupId -n "pasted__pasted__groupId9";
	rename -uid "C1F6370A-3747-67D8-DC50-D39CA2F90EDD";
	setAttr ".ihi" 0;
createNode shadingEngine -n "pasted__lambert2SG5";
	rename -uid "DCCFFC6D-E345-58DB-8D31-259606C29989";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 2 ".gn";
createNode materialInfo -n "pasted__materialInfo11";
	rename -uid "1CADDD36-B441-894D-45F6-0FBD1BB1B602";
createNode lambert -n "pasted__bark5";
	rename -uid "B5132939-154D-EA7C-3747-79A7B752F771";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 1 1 1 ;
createNode objectSet -n "pasted__tweakSet5";
	rename -uid "49BD6FAA-8E4F-3FE9-AB3C-DB82DD81CDCE";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".vo" yes;
	setAttr -s 2 ".gn";
createNode groupId -n "pasted__groupId16";
	rename -uid "BE2E18E0-E848-4601-FC6F-39878CA830C0";
	setAttr ".ihi" 0;
createNode groupId -n "pasted__groupId28";
	rename -uid "3207DE76-EF4A-A913-3334-E2804607E609";
	setAttr ".ihi" 0;
createNode shadingEngine -n "pasted__lambert3SG5";
	rename -uid "CA70180E-8B4C-B559-EF1C-CF982CE856BB";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 2 ".gn";
createNode materialInfo -n "pasted__materialInfo12";
	rename -uid "A6B150BF-8E48-E541-47F4-25AB5B5ABD24";
createNode lambert -n "pasted__leaves5";
	rename -uid "CBB5A1BD-DA4B-CB92-3543-2BBF51C99304";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 1 0.33610001 0 ;
	setAttr ".ambc" -type "float3" 0.41463339 0.41463339 0.41463339 ;
createNode tweak -n "pasted__tweak5";
	rename -uid "84EA4606-CD4C-E27D-879B-44B100D8BD0A";
createNode groupParts -n "pasted__groupParts16";
	rename -uid "E7FD1056-C841-BC04-21E3-0E880052BD18";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode polySplitRing -n "pasted__polySplitRing40";
	rename -uid "BB3DE468-CF4D-2F9B-C0CB-51834D33CC2C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[156:157]" "e[159]" "e[161]" "e[163]" "e[165]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.64538180828094482;
	setAttr ".re" 156;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "pasted__polySplitRing39";
	rename -uid "4BA427E4-364F-4C51-7CC5-F4998222907F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[144:145]" "e[147]" "e[149]" "e[151]" "e[153]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.38973343372344971;
	setAttr ".re" 144;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "pasted__polySplitRing38";
	rename -uid "3AD86CEA-064C-1D77-BCA2-B487600DB3AA";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[132:133]" "e[135]" "e[137]" "e[139]" "e[141]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.31439617276191711;
	setAttr ".re" 132;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "pasted__polySplitRing37";
	rename -uid "7702C5E4-484F-D0A6-92FF-D68E61574ED3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[120:121]" "e[123]" "e[125]" "e[127]" "e[129]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.23594433069229126;
	setAttr ".re" 120;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "pasted__polySplitRing36";
	rename -uid "477ED663-BD4E-191F-8F35-46B690D2C33C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[108:109]" "e[111]" "e[113]" "e[115]" "e[117]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.18606995046138763;
	setAttr ".re" 108;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "pasted__polySplitRing35";
	rename -uid "3561D405-6848-2B4F-C4FE-4AAB0C613F71";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[96:97]" "e[99]" "e[101]" "e[103]" "e[105]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.16217997670173645;
	setAttr ".re" 96;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "pasted__polySplitRing34";
	rename -uid "B4825923-CD45-3C00-F9E7-99BF360A6742";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[84:85]" "e[87]" "e[89]" "e[91]" "e[93]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.16052569448947906;
	setAttr ".re" 84;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "pasted__polySplitRing33";
	rename -uid "0EC04E6B-DE4A-F73E-BFF8-FCAC6704E7F1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[12:17]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.11920327693223953;
	setAttr ".re" 15;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode groupParts -n "pasted__groupParts15";
	rename -uid "5A2810BC-7344-8C40-9DFB-168D23A60752";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[18:47]";
createNode groupParts -n "pasted__groupParts14";
	rename -uid "539C44A1-3644-0CB2-5267-F2B6678347A6";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:17]";
createNode groupId -n "pasted__groupId14";
	rename -uid "011AF556-1647-64A8-A7C7-E6AF5656871F";
	setAttr ".ihi" 0;
createNode groupId -n "pasted__groupId15";
	rename -uid "B2CD954C-994B-8F25-9288-2BB3A9BE3065";
	setAttr ".ihi" 0;
createNode groupId -n "pasted__groupId17";
	rename -uid "47F2A4EE-A444-6B62-89A8-80B160B4F52E";
	setAttr ".ihi" 0;
createNode groupId -n "pasted__groupId18";
	rename -uid "851D3A3F-414A-7232-35C4-B6916BB3D860";
	setAttr ".ihi" 0;
createNode groupId -n "pasted__groupId21";
	rename -uid "DA761E13-8B40-1F8F-A7E4-6EAE3475DE89";
	setAttr ".ihi" 0;
createNode groupId -n "pasted__groupId22";
	rename -uid "D03D43B1-0748-3373-B996-198BA4B7BA76";
	setAttr ".ihi" 0;
createNode groupId -n "pasted__groupId25";
	rename -uid "5BAB1982-8D47-1800-5A86-98824280CF6E";
	setAttr ".ihi" 0;
createNode groupId -n "pasted__groupId26";
	rename -uid "9F042A7D-B940-7496-F0FA-98A6E7FAF0BF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId11";
	rename -uid "A4696310-2D45-C479-C037-8FA624DF7C41";
	setAttr ".ihi" 0;
createNode groupId -n "groupId29";
	rename -uid "B0104178-244C-FCB2-0D1C-AEACFB9D8993";
	setAttr ".ihi" 0;
createNode groupId -n "groupId32";
	rename -uid "4687E3A0-E940-C972-B651-AB9BAABFF604";
	setAttr ".ihi" 0;
createNode groupId -n "groupId33";
	rename -uid "5EAA303D-584C-75D8-F8AE-CC9524E547AC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId36";
	rename -uid "6725B3AB-8045-8892-BF75-0C9996A408FC";
	setAttr ".ihi" 0;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "3B7CB272-DF4E-DE06-E2E3-1CBAA6BFFFF8";
	setAttr -s 8 ".lnk";
	setAttr -s 8 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "238047EF-3940-225C-7F67-ABB3C63C3EC8";
createNode displayLayer -n "defaultLayer";
	rename -uid "31A45DCF-7D4A-1B65-0B15-FDB14ADE42D3";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "0E2207C7-4146-3EF9-8E14-999AD68B8239";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "D306E7A6-F24B-C4DA-E9B3-90B375F4DE05";
	setAttr ".g" yes;
createNode polySeparate -n "polySeparate3";
	rename -uid "BBB13695-A24A-82AC-B909-07868EE655C5";
	setAttr ".ic" 4;
	setAttr -s 4 ".out";
createNode groupId -n "groupId37";
	rename -uid "D30D56ED-9C46-4B3A-7FA1-00837D80F00E";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts37";
	rename -uid "6D1C6FBE-5345-1C97-9D02-6EBBA5435948";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 66 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]" "f[12]" "f[13]" "f[14]" "f[15]" "f[16]" "f[17]" "f[18]" "f[19]" "f[20]" "f[21]" "f[22]" "f[23]" "f[24]" "f[25]" "f[26]" "f[27]" "f[28]" "f[29]" "f[30]" "f[31]" "f[32]" "f[33]" "f[34]" "f[35]" "f[36]" "f[37]" "f[38]" "f[39]" "f[40]" "f[41]" "f[42]" "f[43]" "f[44]" "f[45]" "f[46]" "f[47]" "f[48]" "f[49]" "f[50]" "f[51]" "f[52]" "f[53]" "f[54]" "f[55]" "f[56]" "f[57]" "f[58]" "f[59]" "f[60]" "f[61]" "f[62]" "f[63]" "f[64]" "f[65]";
createNode groupId -n "groupId38";
	rename -uid "1765A376-374C-72B8-2BC7-29A5D58E6352";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts38";
	rename -uid "353DDB6B-5C46-7141-0F6D-84A1025C8F8A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 62 "vtx[0]" "vtx[1]" "vtx[2]" "vtx[3]" "vtx[4]" "vtx[5]" "vtx[6]" "vtx[7]" "vtx[8]" "vtx[9]" "vtx[10]" "vtx[11]" "vtx[12]" "vtx[13]" "vtx[14]" "vtx[15]" "vtx[16]" "vtx[17]" "vtx[18]" "vtx[19]" "vtx[20]" "vtx[21]" "vtx[22]" "vtx[23]" "vtx[24]" "vtx[25]" "vtx[26]" "vtx[27]" "vtx[28]" "vtx[29]" "vtx[30]" "vtx[31]" "vtx[32]" "vtx[33]" "vtx[34]" "vtx[35]" "vtx[36]" "vtx[37]" "vtx[38]" "vtx[39]" "vtx[40]" "vtx[41]" "vtx[42]" "vtx[43]" "vtx[44]" "vtx[45]" "vtx[46]" "vtx[47]" "vtx[48]" "vtx[49]" "vtx[50]" "vtx[51]" "vtx[52]" "vtx[53]" "vtx[54]" "vtx[55]" "vtx[56]" "vtx[57]" "vtx[58]" "vtx[59]" "vtx[60]" "vtx[61]";
createNode groupId -n "groupId39";
	rename -uid "59DF63A3-C347-8624-CEE1-78AC3611EE95";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts39";
	rename -uid "A556B1F9-244E-C85C-52A0-A3A23235C88D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 26 "vtx[0]" "vtx[1]" "vtx[2]" "vtx[3]" "vtx[4]" "vtx[5]" "vtx[6]" "vtx[7]" "vtx[8]" "vtx[9]" "vtx[10]" "vtx[11]" "vtx[12]" "vtx[13]" "vtx[14]" "vtx[15]" "vtx[16]" "vtx[17]" "vtx[18]" "vtx[19]" "vtx[20]" "vtx[21]" "vtx[22]" "vtx[23]" "vtx[24]" "vtx[25]";
createNode groupId -n "groupId40";
	rename -uid "A23E4481-5C40-BBF7-49AC-BAA8713C981F";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts40";
	rename -uid "500A2F59-9A4F-61B9-38D9-4F8750D299C7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 30 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]" "f[12]" "f[13]" "f[14]" "f[15]" "f[16]" "f[17]" "f[18]" "f[19]" "f[20]" "f[21]" "f[22]" "f[23]" "f[24]" "f[25]" "f[26]" "f[27]" "f[28]" "f[29]";
createNode groupId -n "groupId41";
	rename -uid "C6664D30-224E-C771-9C48-AAB68E0D1076";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts41";
	rename -uid "CE041994-5D41-C9A7-E5A3-B2AE1AC5D21A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 66 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]" "f[12]" "f[13]" "f[14]" "f[15]" "f[16]" "f[17]" "f[18]" "f[19]" "f[20]" "f[21]" "f[22]" "f[23]" "f[24]" "f[25]" "f[26]" "f[27]" "f[28]" "f[29]" "f[30]" "f[31]" "f[32]" "f[33]" "f[34]" "f[35]" "f[36]" "f[37]" "f[38]" "f[39]" "f[40]" "f[41]" "f[42]" "f[43]" "f[44]" "f[45]" "f[46]" "f[47]" "f[48]" "f[49]" "f[50]" "f[51]" "f[52]" "f[53]" "f[54]" "f[55]" "f[56]" "f[57]" "f[58]" "f[59]" "f[60]" "f[61]" "f[62]" "f[63]" "f[64]" "f[65]";
createNode groupId -n "groupId43";
	rename -uid "0556F792-1F45-EA96-E35A-1FADA291185B";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts43";
	rename -uid "92F97E88-6D48-7750-9DDE-4CB4B5F7303D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 62 "vtx[0]" "vtx[1]" "vtx[2]" "vtx[3]" "vtx[4]" "vtx[5]" "vtx[6]" "vtx[7]" "vtx[8]" "vtx[9]" "vtx[10]" "vtx[11]" "vtx[12]" "vtx[13]" "vtx[14]" "vtx[15]" "vtx[16]" "vtx[17]" "vtx[18]" "vtx[19]" "vtx[20]" "vtx[21]" "vtx[22]" "vtx[23]" "vtx[24]" "vtx[25]" "vtx[26]" "vtx[27]" "vtx[28]" "vtx[29]" "vtx[30]" "vtx[31]" "vtx[32]" "vtx[33]" "vtx[34]" "vtx[35]" "vtx[36]" "vtx[37]" "vtx[38]" "vtx[39]" "vtx[40]" "vtx[41]" "vtx[42]" "vtx[43]" "vtx[44]" "vtx[45]" "vtx[46]" "vtx[47]" "vtx[48]" "vtx[49]" "vtx[50]" "vtx[51]" "vtx[52]" "vtx[53]" "vtx[54]" "vtx[55]" "vtx[56]" "vtx[57]" "vtx[58]" "vtx[59]" "vtx[60]" "vtx[61]";
createNode groupId -n "groupId45";
	rename -uid "3DDD5653-E447-76AA-E7F2-93B5679B8AE1";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts45";
	rename -uid "9DA5A447-4249-CB04-571D-37868C5DA145";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 26 "vtx[0]" "vtx[1]" "vtx[2]" "vtx[3]" "vtx[4]" "vtx[5]" "vtx[6]" "vtx[7]" "vtx[8]" "vtx[9]" "vtx[10]" "vtx[11]" "vtx[12]" "vtx[13]" "vtx[14]" "vtx[15]" "vtx[16]" "vtx[17]" "vtx[18]" "vtx[19]" "vtx[20]" "vtx[21]" "vtx[22]" "vtx[23]" "vtx[24]" "vtx[25]";
createNode groupId -n "groupId46";
	rename -uid "C947060D-664B-5913-2C7F-309CEA72030B";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts46";
	rename -uid "B290A826-2542-A640-A39B-D1A635AFBE84";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 30 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]" "f[12]" "f[13]" "f[14]" "f[15]" "f[16]" "f[17]" "f[18]" "f[19]" "f[20]" "f[21]" "f[22]" "f[23]" "f[24]" "f[25]" "f[26]" "f[27]" "f[28]" "f[29]";
createNode polyUnite -n "polyUnite2";
	rename -uid "4A287FCC-6A46-9DB8-472C-6DAECFF3E113";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
createNode groupId -n "groupId47";
	rename -uid "795D1C75-E141-E847-016E-FC8ACAB78307";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts47";
	rename -uid "39E8ED48-6D45-15E1-4959-79BBB8F2150F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:65]";
createNode groupId -n "groupId48";
	rename -uid "4C328920-E847-56CC-AD91-769FCDA892E9";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts48";
	rename -uid "7F3EDF5D-4949-5F28-0068-3C95F51FAACF";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[0:87]";
createNode groupId -n "groupId49";
	rename -uid "B9057D7B-0944-53CE-2083-DF979A23DC09";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts49";
	rename -uid "CB52D567-0C48-849A-5E80-3C84F6BB9550";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[66:95]";
createNode polyUnite -n "polyUnite3";
	rename -uid "AD85BB92-7B4E-63BD-8559-5E9F8FEBD081";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
createNode groupId -n "groupId51";
	rename -uid "0A4CDDE6-6B4E-1922-DFDD-53901B36EC86";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts51";
	rename -uid "0230A13B-DE41-1AA3-C61D-C7A4A3EFEA31";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[0:87]";
createNode groupId -n "groupId52";
	rename -uid "79D63696-8146-59ED-854A-579C57230625";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts52";
	rename -uid "70C09B90-2245-A3D3-3EAB-6891A435FFDC";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:29]";
createNode groupId -n "groupId53";
	rename -uid "EEA09A78-834A-2292-1F37-8287FC055664";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts53";
	rename -uid "86105097-D947-74D1-4802-D6A86C1727F3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[30:95]";
createNode polyUnite -n "polyUnite4";
	rename -uid "6B72C78C-7C4A-2B11-9B06-14AC284A943C";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
createNode groupId -n "groupId54";
	rename -uid "7185743D-684E-38DC-0B13-6FA400DB9ADB";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts54";
	rename -uid "D740ED0C-E642-7779-E806-B29CC112150B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:65]";
createNode groupId -n "groupId55";
	rename -uid "8009ECBE-2648-888D-A26B-83A0E227D375";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts55";
	rename -uid "20A3C1FA-D44C-7F25-13CD-F284CFB44319";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[0:87]";
createNode groupId -n "groupId56";
	rename -uid "554433CE-F940-84BA-648D-AFAB178749E1";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts56";
	rename -uid "FE5AB416-B44F-A04D-A16A-74B32D3C8699";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[66:95]";
createNode groupId -n "groupId57";
	rename -uid "C3C52040-8840-BEBD-63F0-EEB7F9ADF959";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts57";
	rename -uid "BE139EDE-F04C-B27B-8B81-F4A0CD322D56";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[88:175]";
createNode groupId -n "groupId58";
	rename -uid "8411C185-8247-2C17-90FD-23A50CE922F9";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts58";
	rename -uid "646D06B9-2A4E-9041-4009-B1B68094139B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[96:125]";
createNode groupId -n "groupId59";
	rename -uid "A45B6C2E-BD4A-B960-4780-9398E04F07F9";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts59";
	rename -uid "FB7DE101-AB4B-ACD0-6498-EE9DE79E265B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[126:191]";
createNode skinCluster -n "skinCluster1";
	rename -uid "D9A670B1-F846-F28B-E51F-9891E04F8E47";
	setAttr -s 176 ".wl";
	setAttr -s 3 ".wl[0].w[0:2]"  0.99863562464276545 0.0013600759680504589 
		4.2993891841929495e-06;
	setAttr -s 3 ".wl[1].w[0:2]"  0.99863564055252108 0.0013600601090383196 
		4.2993384406270189e-06;
	setAttr -s 3 ".wl[2].w[0:2]"  0.98041097081772555 0.019532524640015148 
		5.6504542259347661e-05;
	setAttr -s 3 ".wl[3].w[0:2]"  0.95283760521201122 0.04703905132492317 
		0.00012334346306567599;
	setAttr -s 3 ".wl[4].w[0:2]"  0.95283755570383855 0.047039100682951307 
		0.00012334361321020743;
	setAttr -s 3 ".wl[5].w[0:2]"  0.98041089468692799 0.019532600533861497 
		5.6504779210527882e-05;
	setAttr -s 3 ".wl[6].w[2:4]"  0.3475558057266776 0.40398676315422982 
		0.24845743111909255;
	setAttr -s 3 ".wl[7].w[2:4]"  0.34755580573575362 0.40398676331954148 
		0.2484574309447049;
	setAttr -s 3 ".wl[8].w[2:4]"  0.34389283145320076 0.4075210615045296 
		0.24858610704226972;
	setAttr -s 3 ".wl[9].w[2:4]"  0.33978644601937313 0.41156418898586106 
		0.24864936499476584;
	setAttr -s 3 ".wl[10].w[2:4]"  0.3397864460320193 0.4115641887781239 
		0.24864936518985675;
	setAttr -s 3 ".wl[11].w[2:4]"  0.3438928314544244 0.40752106113525072 
		0.24858610741032486;
	setAttr -s 3 ".wl[12].w[0:2]"  0.99615141338531898 0.0038382919527586447 
		1.0294661922469774e-05;
	setAttr -s 3 ".wl[13].w[2:4]"  0.34389252383838859 0.40760952702250763 
		0.24849794913910384;
	setAttr -s 3 ".wl[14].w[0:2]"  0.066780415858099046 0.93277377842845011 
		0.00044580571345084557;
	setAttr -s 3 ".wl[15].w[0:2]"  0.17794402456943598 0.82078183353999867 
		0.0012741418905653592;
	setAttr -s 3 ".wl[16].w[0:2]"  0.26737118742780053 0.73059092942792647 
		0.002037883144273086;
	setAttr -s 3 ".wl[17].w[0:2]"  0.26737121361289057 0.73059090276737104 
		0.0020378836197384956;
	setAttr -s 3 ".wl[18].w[0:2]"  0.17794410314422163 0.82078175402959075 
		0.0012741428261877346;
	setAttr -s 3 ".wl[19].w[0:2]"  0.066780465228168481 0.93277372865779107 
		0.00044580611404040828;
	setAttr -s 3 ".wl[20].w[0:2]"  0.053616367297444074 0.89597518084115213 
		0.050408451861403782;
	setAttr -s 3 ".wl[21].w[0:2]"  0.077301112747720502 0.85805418752793783 
		0.064644699724341739;
	setAttr -s 3 ".wl[22].w[0:2]"  0.10111449609892587 0.8229080729939946 
		0.075977430907079577;
	setAttr -s 3 ".wl[23].w[0:2]"  0.10111449979610901 0.82290806632544922 
		0.075977433878441775;
	setAttr -s 3 ".wl[24].w[0:2]"  0.077301120525680278 0.85805417303079723 
		0.06464470644352252;
	setAttr -s 3 ".wl[25].w[0:2]"  0.053616371256671305 0.89597517312933084 
		0.050408455613997906;
	setAttr -s 3 ".wl[26].w[0:2]"  0.03533140191207304 0.60266187320053666 
		0.36200672488739033;
	setAttr -s 3 ".wl[27].w[0:2]"  0.04500560855452785 0.5904816935625431 
		0.364512697882929;
	setAttr -s 3 ".wl[28].w[0:2]"  0.055075912083502536 0.58045718343234942 
		0.36446690448414809;
	setAttr -s 3 ".wl[29].w[0:2]"  0.055075913087255672 0.58045718114422795 
		0.36446690576851637;
	setAttr -s 3 ".wl[30].w[0:2]"  0.04500561055211643 0.59048168830004599 
		0.36451270114783757;
	setAttr -s 3 ".wl[31].w[0:2]"  0.035331402892453123 0.60266187005887273 
		0.36200672704867415;
	setAttr -s 3 ".wl[32].w[1:3]"  0.47040767580506054 0.48554434934703367 
		0.044047974847905791;
	setAttr -s 3 ".wl[33].w[1:3]"  0.47110507679913155 0.47975381078885621 
		0.049141112412012307;
	setAttr -s 3 ".wl[34].w[1:3]"  0.47085473593937338 0.47531585430880807 
		0.053829409751818637;
	setAttr -s 3 ".wl[35].w[1:3]"  0.47085473564493846 0.47531585396245352 
		0.053829410392607954;
	setAttr -s 3 ".wl[36].w[1:3]"  0.47110507624150599 0.47975381000712464 
		0.049141113751369321;
	setAttr -s 3 ".wl[37].w[1:3]"  0.47040767556628477 0.48554434888682935 
		0.044047975546885866;
	setAttr -s 3 ".wl[38].w[1:3]"  0.31676068445348138 0.51478567266801867 
		0.16845364287849993;
	setAttr -s 3 ".wl[39].w[1:3]"  0.32904936952668384 0.49957801994999584 
		0.17137261052332034;
	setAttr -s 3 ".wl[40].w[1:3]"  0.33954488294347274 0.48684921026339223 
		0.17360590679313498;
	setAttr -s 3 ".wl[41].w[1:3]"  0.33954488314089504 0.48684920944207022 
		0.17360590741703477;
	setAttr -s 3 ".wl[42].w[1:3]"  0.32904937010633351 0.49957801800283796 
		0.1713726118908285;
	setAttr -s 3 ".wl[43].w[1:3]"  0.31676068486408071 0.51478567149894894 
		0.16845364363697046;
	setAttr -s 3 ".wl[44].w[1:3]"  0.18273592363518082 0.46273229706621621 
		0.35453177929860302;
	setAttr -s 3 ".wl[45].w[1:3]"  0.19530487971332688 0.4554482806961126 
		0.34924683959056052;
	setAttr -s 3 ".wl[46].w[1:3]"  0.20705165343504098 0.44882110457544733 
		0.34412724198951167;
	setAttr -s 3 ".wl[47].w[1:3]"  0.20705165383703547 0.44882110411516468 
		0.34412724204779993;
	setAttr -s 3 ".wl[48].w[1:3]"  0.1953048806152376 0.45544827967579871 
		0.34924683970896375;
	setAttr -s 3 ".wl[49].w[1:3]"  0.18273592414011619 0.46273229649803366 
		0.35453177936185021;
	setAttr -s 3 ".wl[50].w[1:3]"  0.1305319247892385 0.43644866733335286 
		0.43301940787740878;
	setAttr -s 3 ".wl[51].w[1:3]"  0.1402626953426496 0.43219498172338905 
		0.42754232293396133;
	setAttr -s 3 ".wl[52].w[1:3]"  0.14965037622260494 0.4281525572726172 
		0.4221970665047779;
	setAttr -s 3 ".wl[53].w[1:3]"  0.14965037658106298 0.42815255708098354 
		0.42219706633795345;
	setAttr -s 3 ".wl[54].w[1:3]"  0.14026269610556796 0.43219498132121459 
		0.42754232257321745;
	setAttr -s 3 ".wl[55].w[1:3]"  0.13053192519438783 0.43644866712258157 
		0.43301940768303054;
	setAttr -s 3 ".wl[56].w[2:4]"  0.38683978896310106 0.42022070085867502 
		0.19293951017822386;
	setAttr -s 3 ".wl[57].w[2:4]"  0.38844314791588747 0.41645162866553859 
		0.19510522341857395;
	setAttr -s 3 ".wl[58].w[2:4]"  0.3897745509865202 0.41320883173522016 
		0.19701661727825973;
	setAttr -s 3 ".wl[59].w[2:4]"  0.38977455089284962 0.41320883156503169 
		0.19701661754211874;
	setAttr -s 3 ".wl[60].w[2:4]"  0.3884431477316112 0.41645162828760562 
		0.19510522398078306;
	setAttr -s 3 ".wl[61].w[2:4]"  0.3868397888740307 0.42022070064698269 
		0.19293951047898669;
	setAttr -s 3 ".wl[62].w[2:4]"  0.35578200843565416 0.3818287244935013 
		0.26238926707084459;
	setAttr -s 3 ".wl[63].w[2:4]"  0.35578200889477124 0.38182872578396149 
		0.26238926532126727;
	setAttr -s 3 ".wl[64].w[2:4]"  0.33092984721521052 0.39894290758604006 
		0.27012724519874942;
	setAttr -s 3 ".wl[65].w[2:4]"  0.26950167337188075 0.4520325203599464 
		0.27846580626817297;
	setAttr -s 3 ".wl[66].w[2:4]"  0.26950167337188075 0.4520325203599464 
		0.27846580626817297;
	setAttr -s 3 ".wl[67].w[2:4]"  0.33092984573789408 0.39894292278787874 
		0.27012723147422724;
	setAttr -s 3 ".wl[68].w[2:4]"  0.31056045947656641 0.36382170540636749 
		0.32561783511706605;
	setAttr -s 3 ".wl[69].w[2:4]"  0.3105604582718916 0.36382170707887934 
		0.32561783464922911;
	setAttr -s 3 ".wl[70].w[2:4]"  0.25622054276423945 0.38437268083268139 
		0.35940677640307916;
	setAttr -s 3 ".wl[71].w[3:5]"  0.44033637829448824 0.4296239600076463 
		0.13003966169786546;
	setAttr -s 3 ".wl[72].w[3:5]"  0.44033637829448824 0.4296239600076463 
		0.13003966169786546;
	setAttr -s 3 ".wl[73].w[2:4]"  0.25622054276423945 0.38437268083268139 
		0.35940677640307916;
	setAttr -s 3 ".wl[74].w[3:5]"  0.36529217059676211 0.36476169373911471 
		0.26994613566412312;
	setAttr -s 3 ".wl[75].w[3:5]"  0.36529217187365864 0.3647616949892884 
		0.26994613313705296;
	setAttr -s 3 ".wl[76].w[3:5]"  0.36220911960313246 0.36499593294143812 
		0.27279494745542948;
	setAttr -s 3 ".wl[77].w[3:5]"  0.34012073233031004 0.38791537309113544 
		0.27196389457855458;
	setAttr -s 3 ".wl[78].w[3:5]"  0.34012073233031004 0.38791537309113544 
		0.27196389457855458;
	setAttr -s 3 ".wl[79].w[3:5]"  0.36220911960313246 0.36499593294143812 
		0.27279494745542948;
	setAttr -s 3 ".wl[80].w[3:5]"  0.33384793393399248 0.34983284279406146 
		0.31631922327194611;
	setAttr -s 3 ".wl[81].w[3:5]"  0.33384793393477169 0.34983284307632201 
		0.31631922298890636;
	setAttr -s 3 ".wl[82].w[3:5]"  0.31677081162819765 0.35491617341612441 
		0.32831301495567783;
	setAttr -s 3 ".wl[83].w[3:5]"  0.28234117558268784 0.36883221843336034 
		0.34882660598395182;
	setAttr -s 3 ".wl[84].w[3:5]"  0.28234117558268784 0.36883221843336034 
		0.34882660598395182;
	setAttr -s 3 ".wl[85].w[3:5]"  0.31677081181352068 0.35491617316799867 
		0.3283130150184807;
	setAttr -s 3 ".wl[86].w[2:4]"  0.36860313496857278 0.41228909870667219 
		0.21910776632475504;
	setAttr -s 3 ".wl[87].w[3:5]"  0.29768508093842772 0.35691045089203738 
		0.34540446816953496;
	setAttr -s 3 ".wl[88].w[3:5]"  0.151974310020277 0.47942726979703693 
		0.36859842018268607;
	setAttr -s 3 ".wl[89].w[3:5]"  0.15197430420617827 0.47942727633252558 
		0.36859841946129607;
	setAttr -s 3 ".wl[90].w[3:5]"  0.16462520402282346 0.46570964468160148 
		0.36966515129557503;
	setAttr -s 3 ".wl[91].w[3:5]"  0.1594112629969355 0.47124579056493665 
		0.36934294643812776;
	setAttr -s 3 ".wl[92].w[3:5]"  0.15941124919013958 0.47124580543508077 
		0.36934294537477974;
	setAttr -s 3 ".wl[93].w[3:5]"  0.16462520460270866 0.46570964407448867 
		0.36966515132280264;
	setAttr -s 3 ".wl[94].w[4:6]"  0.31021258488335551 0.37408479785321214 
		0.31570261726343241;
	setAttr -s 3 ".wl[95].w[4:6]"  0.31021258196055929 0.37408480309580128 
		0.31570261494363944;
	setAttr -s 3 ".wl[96].w[4:6]"  0.31279011775482385 0.36946999352338189 
		0.31773988872179421;
	setAttr -s 3 ".wl[97].w[4:6]"  0.31130723330453458 0.3721228638971279 
		0.31656990279833758;
	setAttr -s 3 ".wl[98].w[4:6]"  0.31130723259700516 0.37212286516424142 
		0.31656990223875348;
	setAttr -s 3 ".wl[99].w[4:6]"  0.31279011783286753 0.36946999338391157 
		0.31773988878322096;
	setAttr -s 3 ".wl[100].w[4:6]"  0.13980013902617086 0.37929744743008326 
		0.48090241354374591;
	setAttr -s 3 ".wl[101].w[4:6]"  0.13980012763740599 0.37929744745641802 
		0.48090242490617602;
	setAttr -s 3 ".wl[102].w[4:6]"  0.14930339126347072 0.37593743261578699 
		0.4747591761207422;
	setAttr -s 3 ".wl[103].w[4:6]"  0.14103346288964275 0.37095548403303724 
		0.48801105307732007;
	setAttr -s 3 ".wl[104].w[4:6]"  0.1410334596378699 0.37095548303671105 
		0.48801105732541916;
	setAttr -s 3 ".wl[105].w[4:6]"  0.14930339135236392 0.37593743195689239 
		0.47475917669074374;
	setAttr -s 3 ".wl[106].w[5:7]"  0.090671763221749802 0.66877112078560408 
		0.24055711599264618;
	setAttr -s 3 ".wl[107].w[5:7]"  0.0906717606447804 0.66877112976622566 
		0.24055710958899384;
	setAttr -s 3 ".wl[108].w[5:7]"  0.093693981960508071 0.65182822846137045 
		0.25447778957812156;
	setAttr -s 3 ".wl[109].w[5:7]"  0.082182378501201997 0.67099451892727002 
		0.24682310257152795;
	setAttr -s 3 ".wl[110].w[5:7]"  0.082182366995252887 0.67099454885553445 
		0.24682308414921267;
	setAttr -s 3 ".wl[111].w[5:7]"  0.093693981222253864 0.65182822860915612 
		0.2544777901685899;
	setAttr -s 3 ".wl[112].w[3:5]"  4.850554577778335e-05 0.99992516634752615 
		2.6328106696151618e-05;
	setAttr -s 3 ".wl[113].w[5:7]"  1.2060379841679697e-06 0.99994626547896082 
		5.252848305498367e-05;
	setAttr -s 3 ".wl[114].w[0:2]"  0.99928013927724413 0.00067854823112552297 
		4.1312491630343884e-05;
	setAttr -s 3 ".wl[115].w[0:2]"  0.99928013927724413 0.00067854823112552297 
		4.1312491630343884e-05;
	setAttr -s 3 ".wl[116].w[0:2]"  0.99915564373869137 0.00079568623750634823 
		4.8670023802302129e-05;
	setAttr -s 3 ".wl[117].w[0:2]"  0.99926138228141148 0.0006959382953278994 
		4.2679423260648998e-05;
	setAttr -s 3 ".wl[118].w[0:2]"  0.99926138228141148 0.0006959382953278994 
		4.2679423260648998e-05;
	setAttr -s 3 ".wl[119].w[0:2]"  0.99915564373705357 0.00079568623902115517 
		4.8670023925273139e-05;
	setAttr -s 3 ".wl[120].w[3:5]"  0.0010303877369385848 0.99479286120214006 
		0.0041767510609213958;
	setAttr -s 3 ".wl[121].w[3:5]"  0.0010303877369385837 0.99479286120214006 
		0.0041767510609213932;
	setAttr -s 3 ".wl[122].w[3:5]"  0.0022302478733079415 0.98887439842328251 
		0.0088953537034095892;
	setAttr -s 3 ".wl[123].w[3:5]"  0.0030100776502628803 0.98509056071518641 
		0.011899361634550687;
	setAttr -s 3 ".wl[124].w[3:5]"  0.0030100776502628816 0.98509056071518641 
		0.011899361634550687;
	setAttr -s 3 ".wl[125].w[3:5]"  0.0022302480518528885 0.98887439755169715 
		0.0088953543964499192;
	setAttr -s 2 ".wl[126].w[0:1]"  0.99999999979629661 2.0370335166349628e-10;
	setAttr -s 3 ".wl[127].w[3:5]"  1.8783715638610064e-05 0.99990334696176297 
		7.7869322598457112e-05;
	setAttr -s 3 ".wl[128].w[0:2]"  0.95196425295534126 0.047867730997788481 
		0.00016801604687027564;
	setAttr -s 3 ".wl[129].w[0:2]"  0.95925419075032003 0.040608991886265718 
		0.00013681736341425096;
	setAttr -s 3 ".wl[130].w[0:2]"  0.97580073237236997 0.024123946779343014 
		7.5320848287039154e-05;
	setAttr -s 3 ".wl[131].w[0:2]"  0.97580073237236997 0.024123946779343014 
		7.5320848287039154e-05;
	setAttr -s 3 ".wl[132].w[0:2]"  0.95925418867540579 0.040608993952855742 
		0.00013681737173843904;
	setAttr -s 3 ".wl[133].w[0:2]"  0.95196425295534126 0.047867730997788481 
		0.00016801604687027564;
	setAttr -s 3 ".wl[134].w[0:2]"  0.0044046951297749644 0.99410545863211663 
		0.0014898462381083882;
	setAttr -s 3 ".wl[135].w[0:2]"  0.0032615069393751471 0.99563961050235406 
		0.0010988825582707968;
	setAttr -s 3 ".wl[136].w[0:2]"  0.0015059251945740875 0.99799024346713061 
		0.00050383133829537115;
	setAttr -s 3 ".wl[137].w[0:2]"  0.0015059251945740875 0.99799024346713061 
		0.00050383133829537115;
	setAttr -s 3 ".wl[138].w[0:2]"  0.003261507200899598 0.99563961015168601 
		0.0010988826474144565;
	setAttr -s 3 ".wl[139].w[0:2]"  0.0044046951297749644 0.99410545863211663 
		0.0014898462381083882;
	setAttr -s 3 ".wl[140].w[0:2]"  0.00037713832881146298 0.86232673786121528 
		0.13729612380997328;
	setAttr -s 3 ".wl[141].w[0:2]"  0.00028508864675595209 0.88695902153511608 
		0.11275588981812799;
	setAttr -s 3 ".wl[142].w[0:2]"  0.00013713157803233394 0.93616290154536141 
		0.063699966876606354;
	setAttr -s 3 ".wl[143].w[0:2]"  0.00013713157803233394 0.93616290154536141 
		0.063699966876606354;
	setAttr -s 3 ".wl[144].w[0:2]"  0.00028508866813927651 0.88695901536052912 
		0.11275589597133159;
	setAttr -s 3 ".wl[145].w[0:2]"  0.00037713832881146298 0.86232673786121528 
		0.13729612380997328;
	setAttr -s 3 ".wl[146].w[1:3]"  0.0052401480866048466 0.99358316001849978 
		0.0011766918948953676;
	setAttr -s 3 ".wl[147].w[1:3]"  0.0045148336085292723 0.99448246181942823 
		0.0010027045720424727;
	setAttr -s 3 ".wl[148].w[1:3]"  0.002715764221595007 0.99669063387822132 
		0.00059360190018363675;
	setAttr -s 3 ".wl[149].w[1:3]"  0.002715764221595007 0.99669063387822132 
		0.00059360190018363675;
	setAttr -s 3 ".wl[150].w[1:3]"  0.0045148338350240944 0.99448246154030984 
		0.0010027046246661893;
	setAttr -s 3 ".wl[151].w[1:3]"  0.0052401480866048475 0.99358316001849978 
		0.0011766918948953678;
	setAttr -s 3 ".wl[152].w[1:3]"  0.00030647320721099958 0.92120615346774448 
		0.078487373325044518;
	setAttr -s 3 ".wl[153].w[1:3]"  0.00033134672059108539 0.9173370454215336 
		0.082331607857875272;
	setAttr -s 3 ".wl[154].w[1:3]"  0.00027123500854584739 0.93061634494475876 
		0.069112420046695364;
	setAttr -s 3 ".wl[155].w[1:3]"  0.00027123500854584739 0.93061634494475876 
		0.069112420046695364;
	setAttr -s 3 ".wl[156].w[1:3]"  0.00033134672370034395 0.91733704461003496 
		0.082331608666264683;
	setAttr -s 3 ".wl[157].w[1:3]"  0.00030647320721099958 0.92120615346774448 
		0.078487373325044518;
	setAttr -s 3 ".wl[158].w[2:4]"  0.0043602559362847671 0.99462476460427551 
		0.0010149794594397272;
	setAttr -s 3 ".wl[159].w[2:4]"  0.0041435379433722355 0.99488503870332556 
		0.00097142335330231363;
	setAttr -s 3 ".wl[160].w[2:4]"  0.0028769564907741942 0.99644677255937186 
		0.00067627094985379477;
	setAttr -s 3 ".wl[161].w[2:4]"  0.0028769564907741942 0.99644677255937186 
		0.00067627094985379477;
	setAttr -s 3 ".wl[162].w[2:4]"  0.0041435380768276575 0.99488503853939803 
		0.00097142338377440907;
	setAttr -s 3 ".wl[163].w[2:4]"  0.0043602559362847671 0.99462476460427551 
		0.0010149794594397272;
	setAttr -s 3 ".wl[164].w[2:4]"  0.00056356800969471624 0.96497571434397811 
		0.034460717646327146;
	setAttr -s 3 ".wl[165].w[2:4]"  0.00044791143003508876 0.97123040547811601 
		0.028321683091848977;
	setAttr -s 3 ".wl[166].w[2:4]"  0.00023669534611718503 0.98388230445432723 
		0.015881000199555653;
	setAttr -s 3 ".wl[167].w[2:4]"  0.00023669534611718516 0.98388230445432723 
		0.015881000199555663;
	setAttr -s 3 ".wl[168].w[2:4]"  0.00044791145945165495 0.9712304038128059 
		0.028321684727742515;
	setAttr -s 3 ".wl[169].w[2:4]"  0.00056356800969471624 0.96497571434397811 
		0.034460717646327146;
	setAttr -s 3 ".wl[170].w[3:5]"  0.021589509529481042 0.97627707556404097 
		0.0021334149064779584;
	setAttr -s 3 ".wl[171].w[3:5]"  0.016293917210568973 0.98212387040538374 
		0.0015822123840473256;
	setAttr -s 3 ".wl[172].w[3:5]"  0.0077833564212265831 0.99148463836858092 
		0.00073200521019236285;
	setAttr -s 3 ".wl[173].w[3:5]"  0.0077833564212265883 0.99148463836858092 
		0.00073200521019236339;
	setAttr -s 3 ".wl[174].w[3:5]"  0.01629391844261224 0.98212386904701832 
		0.0015822125103695244;
	setAttr -s 3 ".wl[175].w[3:5]"  0.021589509529481028 0.97627707556404097 
		0.0021334149064779584;
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
createNode tweak -n "tweak1";
	rename -uid "072562DB-9740-868D-5EAA-FD9B87D9E609";
createNode objectSet -n "skinCluster1Set";
	rename -uid "DBC780BD-EC47-2A9B-D042-ECBC5B0C05C2";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster1GroupId";
	rename -uid "10B508D8-F541-0D96-A312-0990A70DE661";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster1GroupParts";
	rename -uid "0A88F121-2A49-FCF9-8D5B-4B986990B26C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet1";
	rename -uid "91B2BD11-4441-4C5A-4597-829E1EF95487";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId61";
	rename -uid "EC51A7AA-6B4D-8BC3-4983-C3AC7FE9BB36";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts61";
	rename -uid "6A71995A-494C-C75C-3E4B-DCAC50E13D40";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose1";
	rename -uid "5D36004C-8649-CECA-2611-96A6B3BB8CC5";
	setAttr -s 10 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 10 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 4.6003870964050293
		 9.7181783312047578 9.4443098541432384 0 0 0 4.6003870964050293 9.7181783312047578
		 9.4443098541432384 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 6.5326788425445557
		 9.9383148319867214 8.0076255798339844 0 0 0 6.5326788425445557 9.9383148319867214
		 8.0076255798339844 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -0.10910105556967677
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.49534953719418673 0.50460760596874166 0.49534953719418684 0.50460760596874188 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.0563886995125911 -5.5315513629609237e-17
		 -1.2282511370111768e-32 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.0092580687745548694 0.99995714316292861 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.0840542787071445 8.6955316791959908e-16
		 1.2679263395543176e-17 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.99997945662776855 0.0064098613427032323 3.9249080881599347e-19 6.1231082038615312e-17 1
		 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.970074105007086 1.7867651802561113e-14
		 -2.0662503311253732e-17 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.99991886409843111 0.012738336630154749 7.7999815902902473e-19 6.1227371816260052e-17 1
		 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.0081457600852568 -1.1587952819525071e-15
		 -5.4712782276798121e-18 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.0063287336689351933 0.99997997336454081 1
		 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.3225593950757482 2.0605192167005206e-14
		 9.5024333533621294e-18 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.7822540305769916 1.580900194168159e-14
		 7.2918480277489601e-18 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.99993825744939002 0.011112213509351042 6.8042683528343651e-19 6.1228559316518881e-17 1
		 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 0 0 0 0 4.2216951306002164 9.4230179215060161e-15
		 -6.1073798414697821e-17 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.49441302197002202 0.50552523547936812 -0.49441302197002152 0.50552523547936867 1
		 1 1 yes;
	setAttr -s 10 ".m";
	setAttr -s 10 ".p";
	setAttr -s 10 ".g[0:9]" yes yes no no no no no no no no;
	setAttr ".bp" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "82641998-944B-D567-1FD1-BAA404101B77";
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
	rename -uid "7AF114F9-2C4E-2F29-1E9A-2283BC60A750";
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
connectAttr "pasted__polySplitRing40.out" "pasted__polySurface1ShapeOrig.i";
connectAttr "pasted__tweak5.og[0]" "pasted__polySurface1Shape.i";
connectAttr "pasted__groupId14.id" "pasted__polySurface1Shape.iog.og[0].gid";
connectAttr "pasted__lambert2SG5.mwc" "pasted__polySurface1Shape.iog.og[0].gco";
connectAttr "pasted__groupId15.id" "pasted__polySurface1Shape.iog.og[1].gid";
connectAttr "pasted__lambert3SG5.mwc" "pasted__polySurface1Shape.iog.og[1].gco";
connectAttr "pasted__groupId16.id" "pasted__polySurface1Shape.iog.og[7].gid";
connectAttr "pasted__tweakSet5.mwc" "pasted__polySurface1Shape.iog.og[7].gco";
connectAttr "pasted__tweak5.vl[0].vt[0]" "pasted__polySurface1Shape.twl";
connectAttr "pasted__pasted__polySplitRing24.out" "|group7|pasted__group5|pasted__pasted__polySurface1|pasted__pasted__polySurface1ShapeOrig.i"
		;
connectAttr "pasted__pasted__groupId8.id" "|group7|pasted__group5|pasted__pasted__polySurface1|pasted__transform3|pasted__pasted__polySurface1Shape.iog.og[0].gid"
		;
connectAttr "pasted__pasted__lambert2SG2.mwc" "|group7|pasted__group5|pasted__pasted__polySurface1|pasted__transform3|pasted__pasted__polySurface1Shape.iog.og[0].gco"
		;
connectAttr "pasted__pasted__groupId9.id" "|group7|pasted__group5|pasted__pasted__polySurface1|pasted__transform3|pasted__pasted__polySurface1Shape.iog.og[1].gid"
		;
connectAttr "pasted__pasted__lambert3SG2.mwc" "|group7|pasted__group5|pasted__pasted__polySurface1|pasted__transform3|pasted__pasted__polySurface1Shape.iog.og[1].gco"
		;
connectAttr "pasted__pasted__groupId10.id" "|group7|pasted__group5|pasted__pasted__polySurface1|pasted__transform3|pasted__pasted__polySurface1Shape.iog.og[7].gid"
		;
connectAttr "pasted__pasted__tweakSet3.mwc" "|group7|pasted__group5|pasted__pasted__polySurface1|pasted__transform3|pasted__pasted__polySurface1Shape.iog.og[7].gco"
		;
connectAttr "pasted__pasted__tweak3.og[0]" "|group7|pasted__group5|pasted__pasted__polySurface1|pasted__transform3|pasted__pasted__polySurface1Shape.i"
		;
connectAttr "pasted__pasted__tweak3.vl[0].vt[0]" "|group7|pasted__group5|pasted__pasted__polySurface1|pasted__transform3|pasted__pasted__polySurface1Shape.twl"
		;
connectAttr "pasted__pasted__joint1.s" "pasted__pasted__joint2.is";
connectAttr "pasted__pasted__joint2.s" "pasted__pasted__joint3.is";
connectAttr "pasted__pasted__joint3.s" "pasted__pasted__joint4.is";
connectAttr "pasted__pasted__joint4.s" "pasted__pasted__joint5.is";
connectAttr "pasted__pasted__joint5.s" "pasted__pasted__joint6.is";
connectAttr "pasted__pasted__joint6.s" "pasted__pasted__joint7.is";
connectAttr "pasted__pasted__joint7.s" "pasted__pasted__joint8.is";
connectAttr "pasted__pasted__polySplitRing32.out" "|group7|pasted__group6|pasted__pasted__polySurface1|pasted__pasted__polySurface1ShapeOrig.i"
		;
connectAttr "pasted__pasted__tweak4.og[0]" "|group7|pasted__group6|pasted__pasted__polySurface1|pasted__transform4|pasted__pasted__polySurface1Shape.i"
		;
connectAttr "pasted__pasted__groupId11.id" "|group7|pasted__group6|pasted__pasted__polySurface1|pasted__transform4|pasted__pasted__polySurface1Shape.iog.og[0].gid"
		;
connectAttr "pasted__pasted__lambert2SG4.mwc" "|group7|pasted__group6|pasted__pasted__polySurface1|pasted__transform4|pasted__pasted__polySurface1Shape.iog.og[0].gco"
		;
connectAttr "pasted__pasted__groupId12.id" "|group7|pasted__group6|pasted__pasted__polySurface1|pasted__transform4|pasted__pasted__polySurface1Shape.iog.og[1].gid"
		;
connectAttr "pasted__pasted__lambert3SG4.mwc" "|group7|pasted__group6|pasted__pasted__polySurface1|pasted__transform4|pasted__pasted__polySurface1Shape.iog.og[1].gco"
		;
connectAttr "pasted__pasted__groupId13.id" "|group7|pasted__group6|pasted__pasted__polySurface1|pasted__transform4|pasted__pasted__polySurface1Shape.iog.og[7].gid"
		;
connectAttr "pasted__pasted__tweakSet4.mwc" "|group7|pasted__group6|pasted__pasted__polySurface1|pasted__transform4|pasted__pasted__polySurface1Shape.iog.og[7].gco"
		;
connectAttr "pasted__pasted__tweak4.vl[0].vt[0]" "|group7|pasted__group6|pasted__pasted__polySurface1|pasted__transform4|pasted__pasted__polySurface1Shape.twl"
		;
connectAttr "groupParts13.og" "polySurfaceShape4.i";
connectAttr "groupId11.id" "polySurfaceShape4.iog.og[0].gid";
connectAttr "pasted__pasted__lambert2SG4.mwc" "polySurfaceShape4.iog.og[0].gco";
connectAttr "groupId13.id" "polySurfaceShape4.iog.og[2].gid";
connectAttr "pasted__pasted__tweakSet4.mwc" "polySurfaceShape4.iog.og[2].gco";
connectAttr "groupParts16.og" "polySurfaceShape5.i";
connectAttr "groupId14.id" "polySurfaceShape5.iog.og[0].gid";
connectAttr "pasted__pasted__lambert3SG4.mwc" "polySurfaceShape5.iog.og[0].gco";
connectAttr "groupId16.id" "polySurfaceShape5.iog.og[2].gid";
connectAttr "pasted__pasted__tweakSet4.mwc" "polySurfaceShape5.iog.og[2].gco";
connectAttr "groupParts19.og" "polySurfaceShape6.i";
connectAttr "groupId17.id" "polySurfaceShape6.iog.og[0].gid";
connectAttr "pasted__pasted__lambert2SG2.mwc" "polySurfaceShape6.iog.og[0].gco";
connectAttr "groupId19.id" "polySurfaceShape6.iog.og[2].gid";
connectAttr "pasted__pasted__tweakSet3.mwc" "polySurfaceShape6.iog.og[2].gco";
connectAttr "groupParts22.og" "polySurfaceShape7.i";
connectAttr "groupId20.id" "polySurfaceShape7.iog.og[0].gid";
connectAttr "pasted__pasted__lambert3SG2.mwc" "polySurfaceShape7.iog.og[0].gco";
connectAttr "groupId22.id" "polySurfaceShape7.iog.og[2].gid";
connectAttr "pasted__pasted__tweakSet3.mwc" "polySurfaceShape7.iog.og[2].gco";
connectAttr "pasted__groupParts28.og" "pasted__group6_pasted__polySurface1Shape.i"
		;
connectAttr "pasted__groupId17.id" "pasted__group6_pasted__polySurface1Shape.iog.og[0].gid"
		;
connectAttr "pasted__pasted__lambert2SG4.mwc" "pasted__group6_pasted__polySurface1Shape.iog.og[0].gco"
		;
connectAttr "pasted__groupId18.id" "pasted__group6_pasted__polySurface1Shape.iog.og[1].gid"
		;
connectAttr "pasted__pasted__lambert3SG4.mwc" "pasted__group6_pasted__polySurface1Shape.iog.og[1].gco"
		;
connectAttr "pasted__groupId20.id" "pasted__group6_pasted__polySurface1Shape.iog.og[3].gid"
		;
connectAttr "pasted__pasted__tweakSet4.mwc" "pasted__group6_pasted__polySurface1Shape.iog.og[3].gco"
		;
connectAttr "pasted__groupId21.id" "pasted__group6_pasted__polySurface1Shape.iog.og[4].gid"
		;
connectAttr "pasted__pasted__lambert2SG2.mwc" "pasted__group6_pasted__polySurface1Shape.iog.og[4].gco"
		;
connectAttr "pasted__groupId22.id" "pasted__group6_pasted__polySurface1Shape.iog.og[5].gid"
		;
connectAttr "pasted__pasted__lambert3SG2.mwc" "pasted__group6_pasted__polySurface1Shape.iog.og[5].gco"
		;
connectAttr "pasted__groupId24.id" "pasted__group6_pasted__polySurface1Shape.iog.og[7].gid"
		;
connectAttr "pasted__pasted__tweakSet3.mwc" "pasted__group6_pasted__polySurface1Shape.iog.og[7].gco"
		;
connectAttr "pasted__groupId25.id" "pasted__group6_pasted__polySurface1Shape.iog.og[8].gid"
		;
connectAttr "pasted__lambert2SG5.mwc" "pasted__group6_pasted__polySurface1Shape.iog.og[8].gco"
		;
connectAttr "pasted__groupId26.id" "pasted__group6_pasted__polySurface1Shape.iog.og[9].gid"
		;
connectAttr "pasted__lambert3SG5.mwc" "pasted__group6_pasted__polySurface1Shape.iog.og[9].gco"
		;
connectAttr "pasted__groupId28.id" "pasted__group6_pasted__polySurface1Shape.iog.og[11].gid"
		;
connectAttr "pasted__tweakSet5.mwc" "pasted__group6_pasted__polySurface1Shape.iog.og[11].gco"
		;
connectAttr "groupParts38.og" "polySurfaceShape8.i";
connectAttr "groupId37.id" "polySurfaceShape8.iog.og[0].gid";
connectAttr "pasted__pasted__lambert2SG4.mwc" "polySurfaceShape8.iog.og[0].gco";
connectAttr "groupId38.id" "polySurfaceShape8.iog.og[1].gid";
connectAttr "pasted__pasted__tweakSet4.mwc" "polySurfaceShape8.iog.og[1].gco";
connectAttr "groupParts40.og" "polySurfaceShape9.i";
connectAttr "groupId39.id" "polySurfaceShape9.iog.og[0].gid";
connectAttr "pasted__pasted__tweakSet4.mwc" "polySurfaceShape9.iog.og[0].gco";
connectAttr "groupId40.id" "polySurfaceShape9.iog.og[1].gid";
connectAttr "pasted__pasted__lambert3SG4.mwc" "polySurfaceShape9.iog.og[1].gco";
connectAttr "groupParts43.og" "polySurfaceShape10.i";
connectAttr "groupId41.id" "polySurfaceShape10.iog.og[0].gid";
connectAttr "pasted__pasted__lambert2SG2.mwc" "polySurfaceShape10.iog.og[0].gco"
		;
connectAttr "groupId43.id" "polySurfaceShape10.iog.og[2].gid";
connectAttr "pasted__pasted__tweakSet3.mwc" "polySurfaceShape10.iog.og[2].gco";
connectAttr "groupParts46.og" "polySurfaceShape11.i";
connectAttr "groupId45.id" "polySurfaceShape11.iog.og[1].gid";
connectAttr "pasted__pasted__tweakSet3.mwc" "polySurfaceShape11.iog.og[1].gco";
connectAttr "groupId46.id" "polySurfaceShape11.iog.og[2].gid";
connectAttr "pasted__pasted__lambert3SG2.mwc" "polySurfaceShape11.iog.og[2].gco"
		;
connectAttr "groupParts36.og" "polySurface4Shape.i";
connectAttr "groupId29.id" "polySurface4Shape.iog.og[0].gid";
connectAttr "pasted__pasted__lambert2SG4.mwc" "polySurface4Shape.iog.og[0].gco";
connectAttr "groupId31.id" "polySurface4Shape.iog.og[2].gid";
connectAttr "pasted__pasted__tweakSet4.mwc" "polySurface4Shape.iog.og[2].gco";
connectAttr "groupId32.id" "polySurface4Shape.iog.og[3].gid";
connectAttr "pasted__pasted__lambert3SG4.mwc" "polySurface4Shape.iog.og[3].gco";
connectAttr "groupId33.id" "polySurface4Shape.iog.og[4].gid";
connectAttr "pasted__pasted__lambert2SG2.mwc" "polySurface4Shape.iog.og[4].gco";
connectAttr "groupId35.id" "polySurface4Shape.iog.og[6].gid";
connectAttr "pasted__pasted__tweakSet3.mwc" "polySurface4Shape.iog.og[6].gco";
connectAttr "groupId36.id" "polySurface4Shape.iog.og[7].gid";
connectAttr "pasted__pasted__lambert3SG2.mwc" "polySurface4Shape.iog.og[7].gco";
connectAttr "groupParts49.og" "|polySurface8|transform16|polySurface8Shape.i";
connectAttr "groupId47.id" "|polySurface8|transform16|polySurface8Shape.iog.og[0].gid"
		;
connectAttr "pasted__pasted__lambert2SG4.mwc" "|polySurface8|transform16|polySurface8Shape.iog.og[0].gco"
		;
connectAttr "groupId48.id" "|polySurface8|transform16|polySurface8Shape.iog.og[1].gid"
		;
connectAttr "pasted__pasted__tweakSet4.mwc" "|polySurface8|transform16|polySurface8Shape.iog.og[1].gco"
		;
connectAttr "groupId49.id" "|polySurface8|transform16|polySurface8Shape.iog.og[2].gid"
		;
connectAttr "pasted__pasted__lambert3SG4.mwc" "|polySurface8|transform16|polySurface8Shape.iog.og[2].gco"
		;
connectAttr "groupParts53.og" "polySurface11Shape.i";
connectAttr "groupId51.id" "polySurface11Shape.iog.og[1].gid";
connectAttr "pasted__pasted__tweakSet3.mwc" "polySurface11Shape.iog.og[1].gco";
connectAttr "groupId52.id" "polySurface11Shape.iog.og[2].gid";
connectAttr "pasted__pasted__lambert3SG2.mwc" "polySurface11Shape.iog.og[2].gco"
		;
connectAttr "groupId53.id" "polySurface11Shape.iog.og[3].gid";
connectAttr "pasted__pasted__lambert2SG2.mwc" "polySurface11Shape.iog.og[3].gco"
		;
connectAttr "skinCluster1.og[0]" "|polySurface12|polySurface8Shape.i";
connectAttr "groupId54.id" "|polySurface12|polySurface8Shape.iog.og[0].gid";
connectAttr "pasted__pasted__lambert2SG4.mwc" "|polySurface12|polySurface8Shape.iog.og[0].gco"
		;
connectAttr "groupId55.id" "|polySurface12|polySurface8Shape.iog.og[1].gid";
connectAttr "pasted__pasted__tweakSet4.mwc" "|polySurface12|polySurface8Shape.iog.og[1].gco"
		;
connectAttr "groupId56.id" "|polySurface12|polySurface8Shape.iog.og[2].gid";
connectAttr "pasted__pasted__lambert3SG4.mwc" "|polySurface12|polySurface8Shape.iog.og[2].gco"
		;
connectAttr "groupId57.id" "|polySurface12|polySurface8Shape.iog.og[3].gid";
connectAttr "pasted__pasted__tweakSet3.mwc" "|polySurface12|polySurface8Shape.iog.og[3].gco"
		;
connectAttr "groupId58.id" "|polySurface12|polySurface8Shape.iog.og[4].gid";
connectAttr "pasted__pasted__lambert3SG2.mwc" "|polySurface12|polySurface8Shape.iog.og[4].gco"
		;
connectAttr "groupId59.id" "|polySurface12|polySurface8Shape.iog.og[5].gid";
connectAttr "pasted__pasted__lambert2SG2.mwc" "|polySurface12|polySurface8Shape.iog.og[5].gco"
		;
connectAttr "skinCluster1GroupId.id" "|polySurface12|polySurface8Shape.iog.og[6].gid"
		;
connectAttr "skinCluster1Set.mwc" "|polySurface12|polySurface8Shape.iog.og[6].gco"
		;
connectAttr "groupId61.id" "|polySurface12|polySurface8Shape.iog.og[7].gid";
connectAttr "tweakSet1.mwc" "|polySurface12|polySurface8Shape.iog.og[7].gco";
connectAttr "tweak1.vl[0].vt[0]" "|polySurface12|polySurface8Shape.twl";
connectAttr "groupParts59.og" "polySurface8ShapeOrig.i";
connectAttr "groupParts35.og" "groupParts36.ig";
connectAttr "groupId36.id" "groupParts36.gi";
connectAttr "groupParts33.og" "groupParts35.ig";
connectAttr "groupId35.id" "groupParts35.gi";
connectAttr "groupParts32.og" "groupParts33.ig";
connectAttr "groupId33.id" "groupParts33.gi";
connectAttr "groupParts31.og" "groupParts32.ig";
connectAttr "groupId32.id" "groupParts32.gi";
connectAttr "groupParts29.og" "groupParts31.ig";
connectAttr "groupId31.id" "groupParts31.gi";
connectAttr "polyUnite1.out" "groupParts29.ig";
connectAttr "groupId29.id" "groupParts29.gi";
connectAttr "polySurfaceShape4.o" "polyUnite1.ip[0]";
connectAttr "polySurfaceShape5.o" "polyUnite1.ip[1]";
connectAttr "polySurfaceShape6.o" "polyUnite1.ip[2]";
connectAttr "polySurfaceShape7.o" "polyUnite1.ip[3]";
connectAttr "polySurfaceShape4.wm" "polyUnite1.im[0]";
connectAttr "polySurfaceShape5.wm" "polyUnite1.im[1]";
connectAttr "polySurfaceShape6.wm" "polyUnite1.im[2]";
connectAttr "polySurfaceShape7.wm" "polyUnite1.im[3]";
connectAttr "groupParts11.og" "groupParts13.ig";
connectAttr "groupId13.id" "groupParts13.gi";
connectAttr "polySeparate2.out[0]" "groupParts11.ig";
connectAttr "groupId11.id" "groupParts11.gi";
connectAttr "pasted__group6_pasted__polySurface1Shape.o" "polySeparate2.ip";
connectAttr "pasted__groupParts26.og" "pasted__groupParts28.ig";
connectAttr "pasted__groupId28.id" "pasted__groupParts28.gi";
connectAttr "pasted__groupParts25.og" "pasted__groupParts26.ig";
connectAttr "pasted__groupId26.id" "pasted__groupParts26.gi";
connectAttr "pasted__groupParts24.og" "pasted__groupParts25.ig";
connectAttr "pasted__groupId25.id" "pasted__groupParts25.gi";
connectAttr "pasted__groupParts22.og" "pasted__groupParts24.ig";
connectAttr "pasted__groupId24.id" "pasted__groupParts24.gi";
connectAttr "pasted__groupParts21.og" "pasted__groupParts22.ig";
connectAttr "pasted__groupId22.id" "pasted__groupParts22.gi";
connectAttr "pasted__groupParts20.og" "pasted__groupParts21.ig";
connectAttr "pasted__groupId21.id" "pasted__groupParts21.gi";
connectAttr "pasted__groupParts18.og" "pasted__groupParts20.ig";
connectAttr "pasted__groupId20.id" "pasted__groupParts20.gi";
connectAttr "pasted__groupParts17.og" "pasted__groupParts18.ig";
connectAttr "pasted__groupId18.id" "pasted__groupParts18.gi";
connectAttr "pasted__polyUnite1.out" "pasted__groupParts17.ig";
connectAttr "pasted__groupId17.id" "pasted__groupParts17.gi";
connectAttr "|group7|pasted__group6|pasted__pasted__polySurface1|pasted__transform4|pasted__pasted__polySurface1Shape.o" "pasted__polyUnite1.ip[0]"
		;
connectAttr "|group7|pasted__group5|pasted__pasted__polySurface1|pasted__transform3|pasted__pasted__polySurface1Shape.o" "pasted__polyUnite1.ip[1]"
		;
connectAttr "pasted__polySurface1Shape.o" "pasted__polyUnite1.ip[2]";
connectAttr "|group7|pasted__group6|pasted__pasted__polySurface1|pasted__transform4|pasted__pasted__polySurface1Shape.wm" "pasted__polyUnite1.im[0]"
		;
connectAttr "|group7|pasted__group5|pasted__pasted__polySurface1|pasted__transform3|pasted__pasted__polySurface1Shape.wm" "pasted__polyUnite1.im[1]"
		;
connectAttr "pasted__polySurface1Shape.wm" "pasted__polyUnite1.im[2]";
connectAttr "groupParts14.og" "groupParts16.ig";
connectAttr "groupId16.id" "groupParts16.gi";
connectAttr "polySeparate2.out[1]" "groupParts14.ig";
connectAttr "groupId14.id" "groupParts14.gi";
connectAttr "pasted__pasted__leaves4.oc" "pasted__pasted__lambert3SG4.ss";
connectAttr "|group7|pasted__group6|pasted__pasted__polySurface1|pasted__transform4|pasted__pasted__polySurface1Shape.iog.og[1]" "pasted__pasted__lambert3SG4.dsm"
		 -na;
connectAttr "pasted__group6_pasted__polySurface1Shape.iog.og[1]" "pasted__pasted__lambert3SG4.dsm"
		 -na;
connectAttr "polySurfaceShape5.iog.og[0]" "pasted__pasted__lambert3SG4.dsm" -na;
connectAttr "polySurface4Shape.iog.og[3]" "pasted__pasted__lambert3SG4.dsm" -na;
connectAttr "polySurfaceShape9.iog.og[1]" "pasted__pasted__lambert3SG4.dsm" -na;
connectAttr "|polySurface8|transform16|polySurface8Shape.iog.og[2]" "pasted__pasted__lambert3SG4.dsm"
		 -na;
connectAttr "|polySurface12|polySurface8Shape.iog.og[2]" "pasted__pasted__lambert3SG4.dsm"
		 -na;
connectAttr "pasted__pasted__groupId12.msg" "pasted__pasted__lambert3SG4.gn" -na
		;
connectAttr "pasted__groupId18.msg" "pasted__pasted__lambert3SG4.gn" -na;
connectAttr "groupId14.msg" "pasted__pasted__lambert3SG4.gn" -na;
connectAttr "groupId32.msg" "pasted__pasted__lambert3SG4.gn" -na;
connectAttr "groupId40.msg" "pasted__pasted__lambert3SG4.gn" -na;
connectAttr "groupId49.msg" "pasted__pasted__lambert3SG4.gn" -na;
connectAttr "groupId56.msg" "pasted__pasted__lambert3SG4.gn" -na;
connectAttr "pasted__pasted__lambert3SG4.msg" "pasted__pasted__materialInfo10.sg"
		;
connectAttr "pasted__pasted__leaves4.msg" "pasted__pasted__materialInfo10.m";
connectAttr "pasted__pasted__groupId13.msg" "pasted__pasted__tweakSet4.gn" -na;
connectAttr "pasted__groupId20.msg" "pasted__pasted__tweakSet4.gn" -na;
connectAttr "groupId13.msg" "pasted__pasted__tweakSet4.gn" -na;
connectAttr "groupId16.msg" "pasted__pasted__tweakSet4.gn" -na;
connectAttr "groupId31.msg" "pasted__pasted__tweakSet4.gn" -na;
connectAttr "groupId38.msg" "pasted__pasted__tweakSet4.gn" -na;
connectAttr "groupId39.msg" "pasted__pasted__tweakSet4.gn" -na;
connectAttr "groupId48.msg" "pasted__pasted__tweakSet4.gn" -na;
connectAttr "groupId55.msg" "pasted__pasted__tweakSet4.gn" -na;
connectAttr "|group7|pasted__group6|pasted__pasted__polySurface1|pasted__transform4|pasted__pasted__polySurface1Shape.iog.og[7]" "pasted__pasted__tweakSet4.dsm"
		 -na;
connectAttr "pasted__group6_pasted__polySurface1Shape.iog.og[3]" "pasted__pasted__tweakSet4.dsm"
		 -na;
connectAttr "polySurfaceShape4.iog.og[2]" "pasted__pasted__tweakSet4.dsm" -na;
connectAttr "polySurfaceShape5.iog.og[2]" "pasted__pasted__tweakSet4.dsm" -na;
connectAttr "polySurface4Shape.iog.og[2]" "pasted__pasted__tweakSet4.dsm" -na;
connectAttr "polySurfaceShape8.iog.og[1]" "pasted__pasted__tweakSet4.dsm" -na;
connectAttr "polySurfaceShape9.iog.og[0]" "pasted__pasted__tweakSet4.dsm" -na;
connectAttr "|polySurface8|transform16|polySurface8Shape.iog.og[1]" "pasted__pasted__tweakSet4.dsm"
		 -na;
connectAttr "|polySurface12|polySurface8Shape.iog.og[1]" "pasted__pasted__tweakSet4.dsm"
		 -na;
connectAttr "pasted__pasted__tweak4.msg" "pasted__pasted__tweakSet4.ub[0]";
connectAttr "pasted__pasted__groupParts13.og" "pasted__pasted__tweak4.ip[0].ig";
connectAttr "pasted__pasted__groupId13.id" "pasted__pasted__tweak4.ip[0].gi";
connectAttr "|group7|pasted__group6|pasted__pasted__polySurface1|pasted__pasted__polySurface1ShapeOrig.w" "pasted__pasted__groupParts13.ig"
		;
connectAttr "pasted__pasted__groupId13.id" "pasted__pasted__groupParts13.gi";
connectAttr "pasted__pasted__polySplitRing31.out" "pasted__pasted__polySplitRing32.ip"
		;
connectAttr "|group7|pasted__group6|pasted__pasted__polySurface1|pasted__transform4|pasted__pasted__polySurface1Shape.wm" "pasted__pasted__polySplitRing32.mp"
		;
connectAttr "pasted__pasted__polySplitRing30.out" "pasted__pasted__polySplitRing31.ip"
		;
connectAttr "|group7|pasted__group6|pasted__pasted__polySurface1|pasted__transform4|pasted__pasted__polySurface1Shape.wm" "pasted__pasted__polySplitRing31.mp"
		;
connectAttr "pasted__pasted__polySplitRing29.out" "pasted__pasted__polySplitRing30.ip"
		;
connectAttr "|group7|pasted__group6|pasted__pasted__polySurface1|pasted__transform4|pasted__pasted__polySurface1Shape.wm" "pasted__pasted__polySplitRing30.mp"
		;
connectAttr "pasted__pasted__polySplitRing28.out" "pasted__pasted__polySplitRing29.ip"
		;
connectAttr "|group7|pasted__group6|pasted__pasted__polySurface1|pasted__transform4|pasted__pasted__polySurface1Shape.wm" "pasted__pasted__polySplitRing29.mp"
		;
connectAttr "pasted__pasted__polySplitRing27.out" "pasted__pasted__polySplitRing28.ip"
		;
connectAttr "|group7|pasted__group6|pasted__pasted__polySurface1|pasted__transform4|pasted__pasted__polySurface1Shape.wm" "pasted__pasted__polySplitRing28.mp"
		;
connectAttr "pasted__pasted__polySplitRing26.out" "pasted__pasted__polySplitRing27.ip"
		;
connectAttr "|group7|pasted__group6|pasted__pasted__polySurface1|pasted__transform4|pasted__pasted__polySurface1Shape.wm" "pasted__pasted__polySplitRing27.mp"
		;
connectAttr "pasted__pasted__polySplitRing25.out" "pasted__pasted__polySplitRing26.ip"
		;
connectAttr "|group7|pasted__group6|pasted__pasted__polySurface1|pasted__transform4|pasted__pasted__polySurface1Shape.wm" "pasted__pasted__polySplitRing26.mp"
		;
connectAttr "pasted__pasted__groupParts12.og" "pasted__pasted__polySplitRing25.ip"
		;
connectAttr "|group7|pasted__group6|pasted__pasted__polySurface1|pasted__transform4|pasted__pasted__polySurface1Shape.wm" "pasted__pasted__polySplitRing25.mp"
		;
connectAttr "pasted__pasted__groupParts11.og" "pasted__pasted__groupParts12.ig";
connectAttr "pasted__pasted__groupId12.id" "pasted__pasted__groupParts12.gi";
connectAttr "|group7|pasted__group6|pasted__pasted__polySurface1|pasted__pasted__polySurfaceShape1.o" "pasted__pasted__groupParts11.ig"
		;
connectAttr "pasted__pasted__groupId11.id" "pasted__pasted__groupParts11.gi";
connectAttr "pasted__pasted__bark4.oc" "pasted__pasted__lambert2SG4.ss";
connectAttr "|group7|pasted__group6|pasted__pasted__polySurface1|pasted__transform4|pasted__pasted__polySurface1Shape.iog.og[0]" "pasted__pasted__lambert2SG4.dsm"
		 -na;
connectAttr "pasted__group6_pasted__polySurface1Shape.iog.og[0]" "pasted__pasted__lambert2SG4.dsm"
		 -na;
connectAttr "polySurfaceShape4.iog.og[0]" "pasted__pasted__lambert2SG4.dsm" -na;
connectAttr "polySurface4Shape.iog.og[0]" "pasted__pasted__lambert2SG4.dsm" -na;
connectAttr "polySurfaceShape8.iog.og[0]" "pasted__pasted__lambert2SG4.dsm" -na;
connectAttr "|polySurface8|transform16|polySurface8Shape.iog.og[0]" "pasted__pasted__lambert2SG4.dsm"
		 -na;
connectAttr "|polySurface12|polySurface8Shape.iog.og[0]" "pasted__pasted__lambert2SG4.dsm"
		 -na;
connectAttr "pasted__pasted__groupId11.msg" "pasted__pasted__lambert2SG4.gn" -na
		;
connectAttr "pasted__groupId17.msg" "pasted__pasted__lambert2SG4.gn" -na;
connectAttr "groupId11.msg" "pasted__pasted__lambert2SG4.gn" -na;
connectAttr "groupId29.msg" "pasted__pasted__lambert2SG4.gn" -na;
connectAttr "groupId37.msg" "pasted__pasted__lambert2SG4.gn" -na;
connectAttr "groupId47.msg" "pasted__pasted__lambert2SG4.gn" -na;
connectAttr "groupId54.msg" "pasted__pasted__lambert2SG4.gn" -na;
connectAttr "pasted__pasted__lambert2SG4.msg" "pasted__pasted__materialInfo9.sg"
		;
connectAttr "pasted__pasted__bark4.msg" "pasted__pasted__materialInfo9.m";
connectAttr "groupParts17.og" "groupParts19.ig";
connectAttr "groupId19.id" "groupParts19.gi";
connectAttr "polySeparate2.out[2]" "groupParts17.ig";
connectAttr "groupId17.id" "groupParts17.gi";
connectAttr "pasted__pasted__bark2.oc" "pasted__pasted__lambert2SG2.ss";
connectAttr "|group7|pasted__group5|pasted__pasted__polySurface1|pasted__transform3|pasted__pasted__polySurface1Shape.iog.og[0]" "pasted__pasted__lambert2SG2.dsm"
		 -na;
connectAttr "pasted__group6_pasted__polySurface1Shape.iog.og[4]" "pasted__pasted__lambert2SG2.dsm"
		 -na;
connectAttr "polySurfaceShape6.iog.og[0]" "pasted__pasted__lambert2SG2.dsm" -na;
connectAttr "polySurface4Shape.iog.og[4]" "pasted__pasted__lambert2SG2.dsm" -na;
connectAttr "polySurfaceShape10.iog.og[0]" "pasted__pasted__lambert2SG2.dsm" -na
		;
connectAttr "polySurface11Shape.iog.og[3]" "pasted__pasted__lambert2SG2.dsm" -na
		;
connectAttr "|polySurface12|polySurface8Shape.iog.og[5]" "pasted__pasted__lambert2SG2.dsm"
		 -na;
connectAttr "pasted__pasted__groupId8.msg" "pasted__pasted__lambert2SG2.gn" -na;
connectAttr "pasted__groupId21.msg" "pasted__pasted__lambert2SG2.gn" -na;
connectAttr "groupId17.msg" "pasted__pasted__lambert2SG2.gn" -na;
connectAttr "groupId33.msg" "pasted__pasted__lambert2SG2.gn" -na;
connectAttr "groupId41.msg" "pasted__pasted__lambert2SG2.gn" -na;
connectAttr "groupId53.msg" "pasted__pasted__lambert2SG2.gn" -na;
connectAttr "groupId59.msg" "pasted__pasted__lambert2SG2.gn" -na;
connectAttr "pasted__pasted__lambert2SG2.msg" "pasted__pasted__materialInfo5.sg"
		;
connectAttr "pasted__pasted__bark2.msg" "pasted__pasted__materialInfo5.m";
connectAttr "pasted__pasted__groupId10.msg" "pasted__pasted__tweakSet3.gn" -na;
connectAttr "pasted__groupId24.msg" "pasted__pasted__tweakSet3.gn" -na;
connectAttr "groupId19.msg" "pasted__pasted__tweakSet3.gn" -na;
connectAttr "groupId22.msg" "pasted__pasted__tweakSet3.gn" -na;
connectAttr "groupId35.msg" "pasted__pasted__tweakSet3.gn" -na;
connectAttr "groupId43.msg" "pasted__pasted__tweakSet3.gn" -na;
connectAttr "groupId45.msg" "pasted__pasted__tweakSet3.gn" -na;
connectAttr "groupId51.msg" "pasted__pasted__tweakSet3.gn" -na;
connectAttr "groupId57.msg" "pasted__pasted__tweakSet3.gn" -na;
connectAttr "|group7|pasted__group5|pasted__pasted__polySurface1|pasted__transform3|pasted__pasted__polySurface1Shape.iog.og[7]" "pasted__pasted__tweakSet3.dsm"
		 -na;
connectAttr "pasted__group6_pasted__polySurface1Shape.iog.og[7]" "pasted__pasted__tweakSet3.dsm"
		 -na;
connectAttr "polySurfaceShape6.iog.og[2]" "pasted__pasted__tweakSet3.dsm" -na;
connectAttr "polySurfaceShape7.iog.og[2]" "pasted__pasted__tweakSet3.dsm" -na;
connectAttr "polySurface4Shape.iog.og[6]" "pasted__pasted__tweakSet3.dsm" -na;
connectAttr "polySurfaceShape10.iog.og[2]" "pasted__pasted__tweakSet3.dsm" -na;
connectAttr "polySurfaceShape11.iog.og[1]" "pasted__pasted__tweakSet3.dsm" -na;
connectAttr "polySurface11Shape.iog.og[1]" "pasted__pasted__tweakSet3.dsm" -na;
connectAttr "|polySurface12|polySurface8Shape.iog.og[3]" "pasted__pasted__tweakSet3.dsm"
		 -na;
connectAttr "pasted__pasted__tweak3.msg" "pasted__pasted__tweakSet3.ub[0]";
connectAttr "groupParts20.og" "groupParts22.ig";
connectAttr "groupId22.id" "groupParts22.gi";
connectAttr "polySeparate2.out[3]" "groupParts20.ig";
connectAttr "groupId20.id" "groupParts20.gi";
connectAttr "pasted__pasted__leaves2.oc" "pasted__pasted__lambert3SG2.ss";
connectAttr "|group7|pasted__group5|pasted__pasted__polySurface1|pasted__transform3|pasted__pasted__polySurface1Shape.iog.og[1]" "pasted__pasted__lambert3SG2.dsm"
		 -na;
connectAttr "pasted__group6_pasted__polySurface1Shape.iog.og[5]" "pasted__pasted__lambert3SG2.dsm"
		 -na;
connectAttr "polySurfaceShape7.iog.og[0]" "pasted__pasted__lambert3SG2.dsm" -na;
connectAttr "polySurface4Shape.iog.og[7]" "pasted__pasted__lambert3SG2.dsm" -na;
connectAttr "polySurfaceShape11.iog.og[2]" "pasted__pasted__lambert3SG2.dsm" -na
		;
connectAttr "polySurface11Shape.iog.og[2]" "pasted__pasted__lambert3SG2.dsm" -na
		;
connectAttr "|polySurface12|polySurface8Shape.iog.og[4]" "pasted__pasted__lambert3SG2.dsm"
		 -na;
connectAttr "pasted__pasted__groupId9.msg" "pasted__pasted__lambert3SG2.gn" -na;
connectAttr "pasted__groupId22.msg" "pasted__pasted__lambert3SG2.gn" -na;
connectAttr "groupId20.msg" "pasted__pasted__lambert3SG2.gn" -na;
connectAttr "groupId36.msg" "pasted__pasted__lambert3SG2.gn" -na;
connectAttr "groupId46.msg" "pasted__pasted__lambert3SG2.gn" -na;
connectAttr "groupId52.msg" "pasted__pasted__lambert3SG2.gn" -na;
connectAttr "groupId58.msg" "pasted__pasted__lambert3SG2.gn" -na;
connectAttr "pasted__pasted__lambert3SG2.msg" "pasted__pasted__materialInfo6.sg"
		;
connectAttr "pasted__pasted__leaves2.msg" "pasted__pasted__materialInfo6.m";
connectAttr "pasted__pasted__groupParts10.og" "pasted__pasted__tweak3.ip[0].ig";
connectAttr "pasted__pasted__groupId10.id" "pasted__pasted__tweak3.ip[0].gi";
connectAttr "|group7|pasted__group5|pasted__pasted__polySurface1|pasted__pasted__polySurface1ShapeOrig.w" "pasted__pasted__groupParts10.ig"
		;
connectAttr "pasted__pasted__groupId10.id" "pasted__pasted__groupParts10.gi";
connectAttr "pasted__pasted__polySplitRing23.out" "pasted__pasted__polySplitRing24.ip"
		;
connectAttr "|group7|pasted__group5|pasted__pasted__polySurface1|pasted__transform3|pasted__pasted__polySurface1Shape.wm" "pasted__pasted__polySplitRing24.mp"
		;
connectAttr "pasted__pasted__polySplitRing22.out" "pasted__pasted__polySplitRing23.ip"
		;
connectAttr "|group7|pasted__group5|pasted__pasted__polySurface1|pasted__transform3|pasted__pasted__polySurface1Shape.wm" "pasted__pasted__polySplitRing23.mp"
		;
connectAttr "pasted__pasted__polySplitRing21.out" "pasted__pasted__polySplitRing22.ip"
		;
connectAttr "|group7|pasted__group5|pasted__pasted__polySurface1|pasted__transform3|pasted__pasted__polySurface1Shape.wm" "pasted__pasted__polySplitRing22.mp"
		;
connectAttr "pasted__pasted__polySplitRing20.out" "pasted__pasted__polySplitRing21.ip"
		;
connectAttr "|group7|pasted__group5|pasted__pasted__polySurface1|pasted__transform3|pasted__pasted__polySurface1Shape.wm" "pasted__pasted__polySplitRing21.mp"
		;
connectAttr "pasted__pasted__polySplitRing19.out" "pasted__pasted__polySplitRing20.ip"
		;
connectAttr "|group7|pasted__group5|pasted__pasted__polySurface1|pasted__transform3|pasted__pasted__polySurface1Shape.wm" "pasted__pasted__polySplitRing20.mp"
		;
connectAttr "pasted__pasted__polySplitRing18.out" "pasted__pasted__polySplitRing19.ip"
		;
connectAttr "|group7|pasted__group5|pasted__pasted__polySurface1|pasted__transform3|pasted__pasted__polySurface1Shape.wm" "pasted__pasted__polySplitRing19.mp"
		;
connectAttr "pasted__pasted__polySplitRing17.out" "pasted__pasted__polySplitRing18.ip"
		;
connectAttr "|group7|pasted__group5|pasted__pasted__polySurface1|pasted__transform3|pasted__pasted__polySurface1Shape.wm" "pasted__pasted__polySplitRing18.mp"
		;
connectAttr "pasted__pasted__groupParts9.og" "pasted__pasted__polySplitRing17.ip"
		;
connectAttr "|group7|pasted__group5|pasted__pasted__polySurface1|pasted__transform3|pasted__pasted__polySurface1Shape.wm" "pasted__pasted__polySplitRing17.mp"
		;
connectAttr "pasted__pasted__groupParts8.og" "pasted__pasted__groupParts9.ig";
connectAttr "pasted__pasted__groupId9.id" "pasted__pasted__groupParts9.gi";
connectAttr "|group7|pasted__group5|pasted__pasted__polySurface1|pasted__pasted__polySurfaceShape1.o" "pasted__pasted__groupParts8.ig"
		;
connectAttr "pasted__pasted__groupId8.id" "pasted__pasted__groupParts8.gi";
connectAttr "pasted__bark5.oc" "pasted__lambert2SG5.ss";
connectAttr "pasted__polySurface1Shape.iog.og[0]" "pasted__lambert2SG5.dsm" -na;
connectAttr "pasted__group6_pasted__polySurface1Shape.iog.og[8]" "pasted__lambert2SG5.dsm"
		 -na;
connectAttr "pasted__groupId14.msg" "pasted__lambert2SG5.gn" -na;
connectAttr "pasted__groupId25.msg" "pasted__lambert2SG5.gn" -na;
connectAttr "pasted__lambert2SG5.msg" "pasted__materialInfo11.sg";
connectAttr "pasted__bark5.msg" "pasted__materialInfo11.m";
connectAttr "pasted__groupId16.msg" "pasted__tweakSet5.gn" -na;
connectAttr "pasted__groupId28.msg" "pasted__tweakSet5.gn" -na;
connectAttr "pasted__polySurface1Shape.iog.og[7]" "pasted__tweakSet5.dsm" -na;
connectAttr "pasted__group6_pasted__polySurface1Shape.iog.og[11]" "pasted__tweakSet5.dsm"
		 -na;
connectAttr "pasted__tweak5.msg" "pasted__tweakSet5.ub[0]";
connectAttr "pasted__leaves5.oc" "pasted__lambert3SG5.ss";
connectAttr "pasted__polySurface1Shape.iog.og[1]" "pasted__lambert3SG5.dsm" -na;
connectAttr "pasted__group6_pasted__polySurface1Shape.iog.og[9]" "pasted__lambert3SG5.dsm"
		 -na;
connectAttr "pasted__groupId15.msg" "pasted__lambert3SG5.gn" -na;
connectAttr "pasted__groupId26.msg" "pasted__lambert3SG5.gn" -na;
connectAttr "pasted__lambert3SG5.msg" "pasted__materialInfo12.sg";
connectAttr "pasted__leaves5.msg" "pasted__materialInfo12.m";
connectAttr "pasted__groupParts16.og" "pasted__tweak5.ip[0].ig";
connectAttr "pasted__groupId16.id" "pasted__tweak5.ip[0].gi";
connectAttr "pasted__polySurface1ShapeOrig.w" "pasted__groupParts16.ig";
connectAttr "pasted__groupId16.id" "pasted__groupParts16.gi";
connectAttr "pasted__polySplitRing39.out" "pasted__polySplitRing40.ip";
connectAttr "pasted__polySurface1Shape.wm" "pasted__polySplitRing40.mp";
connectAttr "pasted__polySplitRing38.out" "pasted__polySplitRing39.ip";
connectAttr "pasted__polySurface1Shape.wm" "pasted__polySplitRing39.mp";
connectAttr "pasted__polySplitRing37.out" "pasted__polySplitRing38.ip";
connectAttr "pasted__polySurface1Shape.wm" "pasted__polySplitRing38.mp";
connectAttr "pasted__polySplitRing36.out" "pasted__polySplitRing37.ip";
connectAttr "pasted__polySurface1Shape.wm" "pasted__polySplitRing37.mp";
connectAttr "pasted__polySplitRing35.out" "pasted__polySplitRing36.ip";
connectAttr "pasted__polySurface1Shape.wm" "pasted__polySplitRing36.mp";
connectAttr "pasted__polySplitRing34.out" "pasted__polySplitRing35.ip";
connectAttr "pasted__polySurface1Shape.wm" "pasted__polySplitRing35.mp";
connectAttr "pasted__polySplitRing33.out" "pasted__polySplitRing34.ip";
connectAttr "pasted__polySurface1Shape.wm" "pasted__polySplitRing34.mp";
connectAttr "pasted__groupParts15.og" "pasted__polySplitRing33.ip";
connectAttr "pasted__polySurface1Shape.wm" "pasted__polySplitRing33.mp";
connectAttr "pasted__groupParts14.og" "pasted__groupParts15.ig";
connectAttr "pasted__groupId15.id" "pasted__groupParts15.gi";
connectAttr "pasted__polySurfaceShape1.o" "pasted__groupParts14.ig";
connectAttr "pasted__groupId14.id" "pasted__groupParts14.gi";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__lambert2SG5.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__lambert3SG5.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__pasted__lambert2SG2.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__pasted__lambert3SG2.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__pasted__lambert2SG4.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__pasted__lambert3SG4.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__lambert2SG5.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__lambert3SG5.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__pasted__lambert2SG2.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__pasted__lambert3SG2.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__pasted__lambert2SG4.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__pasted__lambert3SG4.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polySurface4Shape.o" "polySeparate3.ip";
connectAttr "polySeparate3.out[0]" "groupParts37.ig";
connectAttr "groupId37.id" "groupParts37.gi";
connectAttr "groupParts37.og" "groupParts38.ig";
connectAttr "groupId38.id" "groupParts38.gi";
connectAttr "polySeparate3.out[1]" "groupParts39.ig";
connectAttr "groupId39.id" "groupParts39.gi";
connectAttr "groupParts39.og" "groupParts40.ig";
connectAttr "groupId40.id" "groupParts40.gi";
connectAttr "polySeparate3.out[2]" "groupParts41.ig";
connectAttr "groupId41.id" "groupParts41.gi";
connectAttr "groupParts41.og" "groupParts43.ig";
connectAttr "groupId43.id" "groupParts43.gi";
connectAttr "polySeparate3.out[3]" "groupParts45.ig";
connectAttr "groupId45.id" "groupParts45.gi";
connectAttr "groupParts45.og" "groupParts46.ig";
connectAttr "groupId46.id" "groupParts46.gi";
connectAttr "polySurfaceShape8.o" "polyUnite2.ip[0]";
connectAttr "polySurfaceShape9.o" "polyUnite2.ip[1]";
connectAttr "polySurfaceShape8.wm" "polyUnite2.im[0]";
connectAttr "polySurfaceShape9.wm" "polyUnite2.im[1]";
connectAttr "polyUnite2.out" "groupParts47.ig";
connectAttr "groupId47.id" "groupParts47.gi";
connectAttr "groupParts47.og" "groupParts48.ig";
connectAttr "groupId48.id" "groupParts48.gi";
connectAttr "groupParts48.og" "groupParts49.ig";
connectAttr "groupId49.id" "groupParts49.gi";
connectAttr "polySurfaceShape11.o" "polyUnite3.ip[0]";
connectAttr "polySurfaceShape10.o" "polyUnite3.ip[1]";
connectAttr "polySurfaceShape11.wm" "polyUnite3.im[0]";
connectAttr "polySurfaceShape10.wm" "polyUnite3.im[1]";
connectAttr "polyUnite3.out" "groupParts51.ig";
connectAttr "groupId51.id" "groupParts51.gi";
connectAttr "groupParts51.og" "groupParts52.ig";
connectAttr "groupId52.id" "groupParts52.gi";
connectAttr "groupParts52.og" "groupParts53.ig";
connectAttr "groupId53.id" "groupParts53.gi";
connectAttr "|polySurface8|transform16|polySurface8Shape.o" "polyUnite4.ip[0]";
connectAttr "polySurface11Shape.o" "polyUnite4.ip[1]";
connectAttr "|polySurface8|transform16|polySurface8Shape.wm" "polyUnite4.im[0]";
connectAttr "polySurface11Shape.wm" "polyUnite4.im[1]";
connectAttr "polyUnite4.out" "groupParts54.ig";
connectAttr "groupId54.id" "groupParts54.gi";
connectAttr "groupParts54.og" "groupParts55.ig";
connectAttr "groupId55.id" "groupParts55.gi";
connectAttr "groupParts55.og" "groupParts56.ig";
connectAttr "groupId56.id" "groupParts56.gi";
connectAttr "groupParts56.og" "groupParts57.ig";
connectAttr "groupId57.id" "groupParts57.gi";
connectAttr "groupParts57.og" "groupParts58.ig";
connectAttr "groupId58.id" "groupParts58.gi";
connectAttr "groupParts58.og" "groupParts59.ig";
connectAttr "groupId59.id" "groupParts59.gi";
connectAttr "skinCluster1GroupParts.og" "skinCluster1.ip[0].ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1.ip[0].gi";
connectAttr "bindPose1.msg" "skinCluster1.bp";
connectAttr "pasted__pasted__joint1.wm" "skinCluster1.ma[0]";
connectAttr "pasted__pasted__joint2.wm" "skinCluster1.ma[1]";
connectAttr "pasted__pasted__joint3.wm" "skinCluster1.ma[2]";
connectAttr "pasted__pasted__joint4.wm" "skinCluster1.ma[3]";
connectAttr "pasted__pasted__joint5.wm" "skinCluster1.ma[4]";
connectAttr "pasted__pasted__joint6.wm" "skinCluster1.ma[5]";
connectAttr "pasted__pasted__joint7.wm" "skinCluster1.ma[6]";
connectAttr "pasted__pasted__joint8.wm" "skinCluster1.ma[7]";
connectAttr "pasted__pasted__joint1.liw" "skinCluster1.lw[0]";
connectAttr "pasted__pasted__joint2.liw" "skinCluster1.lw[1]";
connectAttr "pasted__pasted__joint3.liw" "skinCluster1.lw[2]";
connectAttr "pasted__pasted__joint4.liw" "skinCluster1.lw[3]";
connectAttr "pasted__pasted__joint5.liw" "skinCluster1.lw[4]";
connectAttr "pasted__pasted__joint6.liw" "skinCluster1.lw[5]";
connectAttr "pasted__pasted__joint7.liw" "skinCluster1.lw[6]";
connectAttr "pasted__pasted__joint8.liw" "skinCluster1.lw[7]";
connectAttr "pasted__pasted__joint1.obcc" "skinCluster1.ifcl[0]";
connectAttr "pasted__pasted__joint2.obcc" "skinCluster1.ifcl[1]";
connectAttr "pasted__pasted__joint3.obcc" "skinCluster1.ifcl[2]";
connectAttr "pasted__pasted__joint4.obcc" "skinCluster1.ifcl[3]";
connectAttr "pasted__pasted__joint5.obcc" "skinCluster1.ifcl[4]";
connectAttr "pasted__pasted__joint6.obcc" "skinCluster1.ifcl[5]";
connectAttr "pasted__pasted__joint7.obcc" "skinCluster1.ifcl[6]";
connectAttr "pasted__pasted__joint8.obcc" "skinCluster1.ifcl[7]";
connectAttr "groupParts61.og" "tweak1.ip[0].ig";
connectAttr "groupId61.id" "tweak1.ip[0].gi";
connectAttr "skinCluster1GroupId.msg" "skinCluster1Set.gn" -na;
connectAttr "|polySurface12|polySurface8Shape.iog.og[6]" "skinCluster1Set.dsm" -na
		;
connectAttr "skinCluster1.msg" "skinCluster1Set.ub[0]";
connectAttr "tweak1.og[0]" "skinCluster1GroupParts.ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1GroupParts.gi";
connectAttr "groupId61.msg" "tweakSet1.gn" -na;
connectAttr "|polySurface12|polySurface8Shape.iog.og[7]" "tweakSet1.dsm" -na;
connectAttr "tweak1.msg" "tweakSet1.ub[0]";
connectAttr "polySurface8ShapeOrig.w" "groupParts61.ig";
connectAttr "groupId61.id" "groupParts61.gi";
connectAttr "group7.msg" "bindPose1.m[0]";
connectAttr "pasted__group5.msg" "bindPose1.m[1]";
connectAttr "pasted__pasted__joint1.msg" "bindPose1.m[2]";
connectAttr "pasted__pasted__joint2.msg" "bindPose1.m[3]";
connectAttr "pasted__pasted__joint3.msg" "bindPose1.m[4]";
connectAttr "pasted__pasted__joint4.msg" "bindPose1.m[5]";
connectAttr "pasted__pasted__joint5.msg" "bindPose1.m[6]";
connectAttr "pasted__pasted__joint6.msg" "bindPose1.m[7]";
connectAttr "pasted__pasted__joint7.msg" "bindPose1.m[8]";
connectAttr "pasted__pasted__joint8.msg" "bindPose1.m[9]";
connectAttr "bindPose1.w" "bindPose1.p[0]";
connectAttr "bindPose1.m[0]" "bindPose1.p[1]";
connectAttr "bindPose1.m[1]" "bindPose1.p[2]";
connectAttr "bindPose1.m[2]" "bindPose1.p[3]";
connectAttr "bindPose1.m[3]" "bindPose1.p[4]";
connectAttr "bindPose1.m[4]" "bindPose1.p[5]";
connectAttr "bindPose1.m[5]" "bindPose1.p[6]";
connectAttr "bindPose1.m[6]" "bindPose1.p[7]";
connectAttr "bindPose1.m[7]" "bindPose1.p[8]";
connectAttr "bindPose1.m[8]" "bindPose1.p[9]";
connectAttr "pasted__pasted__joint1.bps" "bindPose1.wm[2]";
connectAttr "pasted__pasted__joint2.bps" "bindPose1.wm[3]";
connectAttr "pasted__pasted__joint3.bps" "bindPose1.wm[4]";
connectAttr "pasted__pasted__joint4.bps" "bindPose1.wm[5]";
connectAttr "pasted__pasted__joint5.bps" "bindPose1.wm[6]";
connectAttr "pasted__pasted__joint6.bps" "bindPose1.wm[7]";
connectAttr "pasted__pasted__joint7.bps" "bindPose1.wm[8]";
connectAttr "pasted__pasted__joint8.bps" "bindPose1.wm[9]";
connectAttr "pasted__lambert2SG5.pa" ":renderPartition.st" -na;
connectAttr "pasted__lambert3SG5.pa" ":renderPartition.st" -na;
connectAttr "pasted__pasted__lambert2SG2.pa" ":renderPartition.st" -na;
connectAttr "pasted__pasted__lambert3SG2.pa" ":renderPartition.st" -na;
connectAttr "pasted__pasted__lambert2SG4.pa" ":renderPartition.st" -na;
connectAttr "pasted__pasted__lambert3SG4.pa" ":renderPartition.st" -na;
connectAttr "pasted__bark5.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__leaves5.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__pasted__bark2.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__pasted__leaves2.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__pasted__bark4.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__pasted__leaves4.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of tree2_young.ma
