//Maya ASCII 2016 scene
//Name: tree2_young.ma
//Last modified: Thu, Nov 09, 2017 12:57:47 AM
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
	setAttr ".r" -type "double3" 0.027219879200716279 0.0019594140002089609 -0.0085873397414153035 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 1.0609116902641509 ;
	setAttr ".bps" -type "matrix" -3.4198225706659451e-05 0.99999998818363056 -0.00014987735182646691 0
		 0.00047507649589887123 0.00014989358177351636 0.99999987591711115 0 0.99999988656639593 3.4127018256007363e-05 -0.00047508161637984422 0
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
	setAttr ".bps" -type "matrix" -2.8105191732530385e-05 0.99991973709441084 0.012669592698387827 0
		 -0.00047547586037000348 0.012669577908970513 -0.99991962462905737 0 -0.99999988656639593 -3.4127018256005811e-05 0.00047508161637972176 0
		 -0.00010546918431480265 5.0309893724999055 -0.038536974069748181 1;
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
	setAttr ".bps" -type "matrix" -4.0208631036852789e-05 0.99991798520975295 -0.012807077626641437 0
		 0.00047460558528839871 0.012807095276269722 0.99991787315765279 0 0.99999988656639593 3.4127018256007376e-05 -0.0004750816163795993 0
		 -0.00018894368649583821 8.00082509072951 -0.00090734487529751245 1;
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
	setAttr ".bps" -type "matrix" -3.419822570666351e-05 0.99999998818363056 -0.0001498773518350538 0
		 0.00047507649589862615 0.0001498935817821085 0.99999987591711137 0 0.99999988656639593 3.4127018256007376e-05 -0.0004750816163795993 0
		 -0.00030989710946818544 11.008724138371221 -0.039432901136962864 1;
	setAttr ".radi" 0.56840824457288353;
createNode joint -n "pasted__pasted__joint6" -p "pasted__pasted__joint5";
	rename -uid "56055B32-5E4B-3B10-2DB7-7584B339C910";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 2.3225593950757482 2.0605192167005206e-14 9.5024333533621294e-18 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" -3.419822570666351e-05 0.99999998818363056 -0.0001498773518350538 0
		 0.00047507649589862615 0.0001498935817821085 0.99999987591711137 0 0.99999988656639593 3.4127018256007376e-05 -0.0004750816163795993 0
		 -0.00038932451987809844 13.33128350600275 -0.039781000188555835 1;
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
	setAttr ".bps" -type "matrix" -2.3632129009826802e-05 0.99975635670167995 0.022073211730653432 0
		 -0.00047571915882708326 0.022073197999619574 -0.99975624410220743 0 -0.99999988656639593 -3.4127018256004673e-05 0.00047508161637947684 0
		 -0.00045027444548236635 15.113537515519969 -0.040048119702940255 1;
	setAttr ".radi" 0.66663940330690774;
createNode joint -n "pasted__pasted__joint8" -p "pasted__pasted__joint7";
	rename -uid "419DC2E2-C640-1BF7-1CD4-AC8181695001";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" 3.0508709938626826 -0.026025716360186711 -5.7062220188626544e-17 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 88.726607922132885 89.999999999999943 0 ;
	setAttr ".bps" -type "matrix" 0.99999988656639593 3.4127018257113398e-05 -0.00047508161637939682 0
		 -3.4198225707711304e-05 0.99999998818363045 -0.0001498773518262201 0 0.00047507649589828191 0.00014989358177327355 0.99999987591711137 0
		 -0.00050999209050687046 18.163090714320656 0.05331377414582944 1;
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
	setAttr ".t" -type "double3" 35.795303302171867 8.0612770415367709 2.2062160194161589 ;
	setAttr ".r" -type "double3" 2.0616472704456688 86.599999999972255 3.3518263822899032e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "E9D7AE51-2F4E-1F63-3E92-068D7C5CA803";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 35.881646535575761;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0 9.352110976224985 0.07958314970001934 ;
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
	setAttr ".r" -type "double3" -0.011631351645940865 -3.0774187448706189e-05 -0.05417522887484702 ;
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
	rename -uid "ADECAC31-2744-89D7-6724-8A83840DB149";
	setAttr -s 8 ".lnk";
	setAttr -s 8 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "A3443A66-DE4C-DE54-A53B-E3904ECDAE85";
createNode displayLayer -n "defaultLayer";
	rename -uid "31A45DCF-7D4A-1B65-0B15-FDB14ADE42D3";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "B5602ED4-B742-4D08-DE27-49B335D77FE9";
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
	setAttr ".ic" -type "componentList" 1 "f[0:65]";
createNode groupId -n "groupId38";
	rename -uid "1765A376-374C-72B8-2BC7-29A5D58E6352";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts38";
	rename -uid "353DDB6B-5C46-7141-0F6D-84A1025C8F8A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[0:61]";
createNode groupId -n "groupId39";
	rename -uid "59DF63A3-C347-8624-CEE1-78AC3611EE95";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts39";
	rename -uid "A556B1F9-244E-C85C-52A0-A3A23235C88D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[0:25]";
createNode groupId -n "groupId40";
	rename -uid "A23E4481-5C40-BBF7-49AC-BAA8713C981F";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts40";
	rename -uid "500A2F59-9A4F-61B9-38D9-4F8750D299C7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:29]";
createNode groupId -n "groupId41";
	rename -uid "C6664D30-224E-C771-9C48-AAB68E0D1076";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts41";
	rename -uid "CE041994-5D41-C9A7-E5A3-B2AE1AC5D21A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:65]";
createNode groupId -n "groupId43";
	rename -uid "0556F792-1F45-EA96-E35A-1FADA291185B";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts43";
	rename -uid "92F97E88-6D48-7750-9DDE-4CB4B5F7303D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[0:61]";
createNode groupId -n "groupId45";
	rename -uid "3DDD5653-E447-76AA-E7F2-93B5679B8AE1";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts45";
	rename -uid "9DA5A447-4249-CB04-571D-37868C5DA145";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[0:25]";
createNode groupId -n "groupId46";
	rename -uid "C947060D-664B-5913-2C7F-309CEA72030B";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts46";
	rename -uid "B290A826-2542-A640-A39B-D1A635AFBE84";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:29]";
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
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n"
		+ "                -width 1122\n                -height 633\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1122\n            -height 633\n"
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
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1122\\n    -height 633\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1122\\n    -height 633\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "7AF114F9-2C4E-2F29-1E9A-2283BC60A750";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode skinCluster -n "skinCluster1";
	rename -uid "59632856-4A44-83EA-AEB8-2E8FCADDCA29";
	setAttr -s 176 ".wl";
	setAttr -s 8 ".wl[0].w[0:7]"  0.99853834051295109 0.0014557857401167515 
		4.6071206916625891e-06 7.6132464721112387e-07 2.4614166789770655e-07 1.2841091443896739e-07 
		8.451528728151514e-08 4.6233723636637636e-08;
	setAttr -s 8 ".wl[1].w[0:7]"  0.99871713325653744 0.0012777224194314065 
		4.0350591948312109e-06 6.6674750920072116e-07 2.1555959947068348e-07 1.1245543564590844e-07 
		7.4013655886512831e-08 4.0488636199843404e-08;
	setAttr -s 8 ".wl[2].w[0:7]"  0.98088359523604873 0.019046576361661443 
		5.4953857225436875e-05 8.9655417095115575e-06 2.8829606311973424e-06 1.5006600787559734e-06 
		9.8648217013942217e-07 5.3890047479202373e-07;
	setAttr -s 8 ".wl[3].w[0:7]"  0.95326099718874868 0.046584627930104712 
		0.00012189976243443109 1.962915018114886e-05 6.2774606014114684e-06 3.2602296551314928e-06 
		2.1405548532210391e-06 1.167723420993121e-06;
	setAttr -s 8 ".wl[4].w[0:7]"  0.95270180963096951 0.04714157404507191 
		0.00012366756742763509 1.9915211132474231e-05 6.3690849059763634e-06 3.3078442385156919e-06 
		2.1718268186352406e-06 1.184789435425976e-06;
	setAttr -s 8 ".wl[5].w[0:7]"  0.98002707138173462 0.019899634217147143 
		5.7679596248000573e-05 9.411520543171869e-06 3.0265013708128148e-06 1.575404281653124e-06 
		1.0356257339862605e-06 5.6575294056147381e-07;
	setAttr -s 8 ".wl[6].w[0:7]"  0.022407125607641389 0.079184475628333251 
		0.27413689437185479 0.31860032387301612 0.19597290468432704 0.066842878247621612 
		0.031632129742709097 0.011223267844496673;
	setAttr -s 8 ".wl[7].w[0:7]"  0.022402215667756274 0.079171409895695863 
		0.27413864194027959 0.3186212284990898 0.19597902235458908 0.066837845418172365 0.031628228519110083 
		0.011221407705306819;
	setAttr -s 8 ".wl[8].w[0:7]"  0.020963930242943178 0.075169386818971937 
		0.27411054832058718 0.32480674007178229 0.19815099940589845 0.065521311742302676 
		0.030566337428425121 0.010710745969089075;
	setAttr -s 8 ".wl[9].w[0:7]"  0.019539585691725959 0.071091296553378341 
		0.2737706065544907 0.3315670552626328 0.2003445264464653 0.064061563475575886 0.029440613815903342 
		0.01018475219982754;
	setAttr -s 8 ".wl[10].w[0:7]"  0.019544449466609395 0.071105050630565311 
		0.27377085087671349 0.33154194423272337 0.20033835552698881 0.064067643754467898 
		0.029444979979302784 0.010186725532628968;
	setAttr -s 8 ".wl[11].w[0:7]"  0.020973707004987827 0.07519620443355314 
		0.27410883682105147 0.3247610477289179 0.19813866679834644 0.065532368974219976 0.030574590044092954 
		0.010714578194830317;
	setAttr -s 8 ".wl[12].w[0:7]"  0.99618906010172248 0.0037980036573777979 
		1.0183022523293376e-05 1.6596601761031222e-06 5.3356298948240544e-07 2.7771559794870347e-07 
		1.8255530543327168e-07 9.9724307542190397e-08;
	setAttr -s 8 ".wl[13].w[0:7]"  0.020942684710266252 0.0751221013593356 
		0.27417618519312753 0.3249333985589396 0.19812281937176976 0.065469544761900741 0.03053521904243716 
		0.010698047002223416;
	setAttr -s 8 ".wl[14].w[0:7]"  0.066601891596269433 0.93288210472180133 
		0.00044449005025440542 4.6391918044813113e-05 1.2802661878429913e-05 6.2556382027964788e-06 
		3.9770412772919942e-06 2.0863722716390977e-06;
	setAttr -s 8 ".wl[15].w[0:7]"  0.17746291293901226 0.82105609637118249 
		0.0012695178954901765 0.00013665742893161355 3.804714706954282e-05 1.8650300921721243e-05 
		1.1876324679858514e-05 6.2415927123784004e-06;
	setAttr -s 8 ".wl[16].w[0:7]"  0.26732338226262453 0.73028705579668207 
		0.0020384926370341232 0.00022600408836100504 6.3468298198844479e-05 3.1210082923768642e-05 
		1.9906359473283407e-05 1.0480474702454489e-05;
	setAttr -s 8 ".wl[17].w[0:7]"  0.26789219210504589 0.729708431973764 
		0.0020468180756015898 0.00022695902197248868 6.3738595303938704e-05 3.1343371935863396e-05 
		1.9991490504113033e-05 1.0525365872056788e-05;
	setAttr -s 8 ".wl[18].w[0:7]"  0.179091766912608 0.81940724277947397 
		0.0012866021679839093 0.00013853725302422361 3.8573146752655409e-05 1.8908596737141816e-05 
		1.2040947487816637e-05 6.3281959321271065e-06;
	setAttr -s 8 ".wl[19].w[0:7]"  0.067585757535200755 0.931889392912713 
		0.00045209933901388936 4.7193393464459121e-05 1.302429829687316e-05 6.3640122729931792e-06 
		4.0459647036760825e-06 2.1225443343778632e-06;
	setAttr -s 8 ".wl[20].w[0:7]"  0.053459924202914129 0.89271565937873709 
		0.050263677616239601 0.0025205712487884131 0.00055983172913554675 0.00025126042369912863 
		0.0001529165502138513 7.6158850272231067e-05;
	setAttr -s 8 ".wl[21].w[0:7]"  0.076898136069586509 0.85374761023695178 
		0.064320383296089995 0.0035435597479062122 0.00079972389922945838 0.00036070096172284956 
		0.00022003215592506528 0.00010985363258823601;
	setAttr -s 8 ".wl[22].w[0:7]"  0.10051647351108917 0.81748038237445753 
		0.075531636979674674 0.0045306259579914968 0.0010384536978136885 0.00047064968142785068 
		0.00028776115965916028 0.00014401663788654682;
	setAttr -s 8 ".wl[23].w[0:7]"  0.10063300558578868 0.81728821301928134 
		0.075598953065074137 0.0045363576388864381 0.0010398280096344404 0.00047128094052744258 
		0.00028814947602373656 0.00014421226478376361;
	setAttr -s 8 ".wl[24].w[0:7]"  0.077138070837610456 0.85332957778666918 
		0.064481504767735787 0.0035553602374086037 0.00080248373945246225 0.00036195889045694484 
		0.00022080317730662551 0.0001102405633598013;
	setAttr -s 8 ".wl[25].w[0:7]"  0.053579709373494315 0.89249260028462218 
		0.050358527061865402 0.0025264805747443565 0.00056117919211666717 0.00025186985509484947 
		0.0001532887427868967 7.6344915275521145e-05;
	setAttr -s 8 ".wl[26].w[0:7]"  0.03480093410560816 0.59316991704630972 
		0.35639048669246576 0.01189330236206336 0.0021188748969702938 0.00087440201533679079 
		0.00051020166546016153 0.0002418812157858141;
	setAttr -s 8 ".wl[27].w[0:7]"  0.044151837623987555 0.57917651355469169 
		0.35757882009957614 0.014411517119434862 0.002637878093074645 0.0010964276843243499 
		0.00064177542150454375 0.00030523040340607225;
	setAttr -s 8 ".wl[28].w[0:7]"  0.053869670201360353 0.56736447781350174 
		0.356317141931347 0.016820005187008213 0.0031593468977094666 0.0013224280878702738 
		0.00077647197511755239 0.00037045790608536855;
	setAttr -s 8 ".wl[29].w[0:7]"  0.053911085951182103 0.56729929843820803 
		0.35632492592061737 0.016831516426655195 0.0031618102761118111 0.0013234928392390679 
		0.00077710567303716305 0.00037076447494928708;
	setAttr -s 8 ".wl[30].w[0:7]"  0.044233162842823796 0.57902647205040869 
		0.35761473534968879 0.014435467226443909 0.0026427894348569525 0.0010985263388750585 
		0.00064301820426562078 0.00030582855263717893;
	setAttr -s 8 ".wl[31].w[0:7]"  0.034840334459141267 0.59307979219938078 
		0.35642455748973362 0.011905627190492108 0.0021212927876483778 0.00087542322245241918 
		0.0005108033430810719 0.000242169308070294;
	setAttr -s 8 ".wl[32].w[0:7]"  0.027348156962782907 0.452736288110001 
		0.46729138714151058 0.042417850726295968 0.0060685352794989577 0.0022876092027987274 
		0.0012759849722222504 0.00057418760488953309;
	setAttr -s 8 ".wl[33].w[0:7]"  0.032543279563850162 0.45017187948980536 
		0.45843572517017195 0.046972084466197786 0.0070249793741579917 0.0026758295145535463 
		0.0014989230507688829 0.00067729937049421194;
	setAttr -s 8 ".wl[34].w[0:7]"  0.037907648713446811 0.44662238975980334 
		0.45084873238477668 0.051085918594407073 0.0079647173128618177 0.0030645659992144057 
		0.001723895029876184 0.00078213220561382951;
	setAttr -s 8 ".wl[35].w[0:7]"  0.037929488625554758 0.44660307300199514 
		0.4508197644734781 0.051105016034037262 0.0079688941985250859 0.0030662837086021539 
		0.0017248865305372169 0.00078259342727025102;
	setAttr -s 8 ".wl[36].w[0:7]"  0.032586135040489503 0.45013800459207076 
		0.45837022966914931 0.047013786667428149 0.0070334764016612298 0.0026792654868591933 
		0.0015008927137971739 0.00067820942854476059;
	setAttr -s 8 ".wl[37].w[0:7]"  0.027369037115924044 0.45272333064472409 
		0.46725331963278804 0.042440574774776182 0.0060728309459424056 0.0022893164958298975 
		0.0012769568191874385 0.00057463357082803855;
	setAttr -s 8 ".wl[38].w[0:7]"  0.028692447903760555 0.29769903308004059 
		0.48368829673288183 0.15833129411481722 0.019752190589803924 0.0067435118071465794 
		0.0035758142182089996 0.0015174115533403171;
	setAttr -s 8 ".wl[39].w[0:7]"  0.03218571362146129 0.30716418441420928 
		0.46630102955257247 0.15999122620687298 0.021334686679864087 0.0073955253280777924 
		0.0039446306932796648 0.0016830035036624611;
	setAttr -s 8 ".wl[40].w[0:7]"  0.035718034568642171 0.31487812949666788 
		0.45139596381897873 0.16101071482185511 0.022818057880478651 0.0080264739393860959 
		0.0043057491665399791 0.0018468763074514342;
	setAttr -s 8 ".wl[41].w[0:7]"  0.035731373589858298 0.31489796762032818 
		0.4513427287958815 0.16101977844168938 0.022824290087438817 0.0080290810436263668 
		0.0043072329939357161 0.0018475474272418373;
	setAttr -s 8 ".wl[42].w[0:7]"  0.032212282092898149 0.30721541730805701 
		0.46617733017992274 0.16001419442037768 0.021347872113623233 0.0074008922077621201 
		0.0039476538709761946 0.0016843578063829114;
	setAttr -s 8 ".wl[43].w[0:7]"  0.028705670349747889 0.29773194643042539 
		0.4836155041757208 0.15834598079379544 0.019759175124549829 0.0067462745554349923 
		0.0035773539869648906 0.0015180945833608173;
	setAttr -s 8 ".wl[44].w[0:7]"  0.024988947136467286 0.16493765595096158 
		0.41750789910786418 0.31990518669783841 0.047492894581082905 0.01478148195992247 
		0.007428884208998756 0.0029570503568644986;
	setAttr -s 8 ".wl[45].w[0:7]"  0.027632891900571003 0.17488398184387319 
		0.40774249811748603 0.31268318597701494 0.049909101306916878 0.015878248191485037 
		0.0080448917638044747 0.0032252008988484467;
	setAttr -s 8 ".wl[46].w[0:7]"  0.030293366321535661 0.18402444102078183 
		0.39877971423668895 0.30577821945571715 0.052079159190524166 0.016918105496448833 
		0.0086392188449991563 0.0034877754333042196;
	setAttr -s 8 ".wl[47].w[0:7]"  0.030302855022810767 0.18405283772884568 
		0.39874668480557379 0.30575759657348495 0.052087660390110514 0.016922098261867097 
		0.008641489883531521 0.0034887773337758205;
	setAttr -s 8 ".wl[48].w[0:7]"  0.027651866359654012 0.17494669431218318 
		0.40767034373021876 0.31263980753075288 0.049927816851185171 0.01588663697292042 
		0.0080495891256226627 0.0032272451174628321;
	setAttr -s 8 ".wl[49].w[0:7]"  0.02499842262141927 0.16497226393637088 
		0.41746832846071874 0.3198824846211154 0.047503209044647082 0.014785887351171896 
		0.0074313117610258113 0.0029580922035307147;
	setAttr -s 8 ".wl[50].w[0:7]"  0.022150396977926493 0.11012894589888356 
		0.36807494789795864 0.36518112743034065 0.090037218860335388 0.026725074047158476 
		0.012862309291631301 0.0048399795957654104;
	setAttr -s 8 ".wl[51].w[0:7]"  0.024224473055158617 0.11732418414530664 
		0.36141986711383706 0.35752866969414254 0.092367416254765633 0.028207142164863877 
		0.013719069903866841 0.0052091776680588259;
	setAttr -s 8 ".wl[52].w[0:7]"  0.026314169765415455 0.12419388499289147 
		0.35518945234752491 0.35024690294021771 0.09435329696533816 0.029593096135062408 
		0.014539624095548495 0.0055695727580013944;
	setAttr -s 8 ".wl[53].w[0:7]"  0.02632146734876218 0.12421605120842842 
		0.35516736222245404 0.35022211104066925 0.094361136016949065 0.029598286250671825 
		0.01454267499417332 0.0055709109178920238;
	setAttr -s 8 ".wl[54].w[0:7]"  0.024239047540719299 0.11737109417762005 
		0.36137265636493854 0.35747618723725266 0.09238546020453417 0.028218202108968804 
		0.013725432883178361 0.0052119194827878858;
	setAttr -s 8 ".wl[55].w[0:7]"  0.022157665934640122 0.11015374400030095 
		0.36804967152166923 0.36515333415729562 0.090047610027350553 0.026730966227843142 
		0.012865625259231572 0.0048413828716688274;
	setAttr -s 8 ".wl[56].w[0:7]"  0.02045732780364394 0.081966846740859495 
		0.31703373081918668 0.34437151571150787 0.15814681314298365 0.047858665174062377 
		0.022246908310728477 0.0079181922970276413;
	setAttr -s 8 ".wl[57].w[0:7]"  0.022067525937179786 0.086871782981575732 
		0.31461288866743176 0.33728791584610901 0.15804201008777838 0.049441012307522764 
		0.023291958415878323 0.0083849057565242979;
	setAttr -s 8 ".wl[58].w[0:7]"  0.023693680929173955 0.091655798656161747 
		0.31206248169506406 0.3308103378615036 0.15775811892420594 0.050894798792653698 0.024285272009610493 
		0.0088395111316264818;
	setAttr -s 8 ".wl[59].w[0:7]"  0.023699275803192893 0.091671399806199191 
		0.31205220141067175 0.3307883812652132 0.15775836266836635 0.050900269591777299 0.024288931798700068 
		0.0088411776558793165;
	setAttr -s 8 ".wl[60].w[0:7]"  0.0220786697975432 0.086904033401058026 
		0.31459278655511902 0.3372399231387157 0.15804375347878069 0.049452855920463515 0.023299648721723788 
		0.0083883289865960987;
	setAttr -s 8 ".wl[61].w[0:7]"  0.020462872172750984 0.081983502284140128 
		0.31702406282204776 0.34434512617159613 0.15814845933436078 0.047865079736385888 
		0.022250948151821982 0.0079199493268964812;
	setAttr -s 8 ".wl[62].w[0:7]"  0.034992110864958459 0.10579311605060664 
		0.2557834048927598 0.27446096441201157 0.18862355381148582 0.08104202465804046 0.042682836113396704 
		0.01662198919674043;
	setAttr -s 8 ".wl[63].w[0:7]"  0.034949836438065228 0.10570772797006074 
		0.25581174906881371 0.2745552143620022 0.18867857675633781 0.081025755375967221 0.042662087277624369 
		0.016609052751128669;
	setAttr -s 8 ".wl[64].w[0:7]"  0.022482844194363496 0.076155025578658331 
		0.2572980846620142 0.31031904935133808 0.21009927613732637 0.07520520492472843 0.035789554039468277 
		0.012650961112102677;
	setAttr -s 8 ".wl[65].w[0:7]"  0.010654716023043099 0.040805785342921563 
		0.23161578696280052 0.38873636408931211 0.23942679688471841 0.058053898219318952 
		0.02344889238880505 0.0072577600890801099;
	setAttr -s 8 ".wl[66].w[0:7]"  0.010693851878220821 0.040935694381954442 
		0.23180801013827099 0.38827841803112956 0.23933628891366404 0.058158817300343578 
		0.023508684454079273 0.0072802349023373325;
	setAttr -s 8 ".wl[67].w[0:7]"  0.022565861398702217 0.076368835117262987 
		0.25731376942346279 0.30997690117505045 0.20994643715891592 0.075284654387577657 
		0.03585839428064954 0.012685147058378383;
	setAttr -s 8 ".wl[68].w[0:7]"  0.037804261665521512 0.094230169490246318 
		0.2017233917231574 0.23623893371587615 0.21141846940922762 0.1198761408297411 0.069859847139827499 
		0.028848786026402524;
	setAttr -s 8 ".wl[69].w[0:7]"  0.037750426771316077 0.094135897414704336 
		0.20169919720730953 0.23632538102704032 0.21152076548950485 0.11989308268750691 0.069845285640354249 
		0.028829963762263728;
	setAttr -s 8 ".wl[70].w[0:7]"  0.02159669103698186 0.060914680250714573 
		0.18067159789861278 0.27133174127162663 0.25373610728758184 0.12579770199323445 0.063630968329302498 
		0.022320511931945362;
	setAttr -s 8 ".wl[71].w[0:7]"  0.0064695890439104798 0.020880318929949657 
		0.10323003526343287 0.36199215901847165 0.35320444057599576 0.10673829225723538 0.037694132899513691 
		0.0097910320114905098;
	setAttr -s 8 ".wl[72].w[0:7]"  0.0065179455136364665 0.021025278321293465 
		0.10370623510678224 0.36141767292223087 0.3526049753705664 0.10700517317604845 0.037871237032235834 
		0.0098514825572063123;
	setAttr -s 8 ".wl[73].w[0:7]"  0.021702261615127921 0.061154756228734841 
		0.18090115286891137 0.2709783496218876 0.25334769299909471 0.12580529997330547 0.063724462841138987 
		0.02238602385179914;
	setAttr -s 8 ".wl[74].w[0:7]"  0.031155522086332765 0.07046614731973061 
		0.15174055914574291 0.21872048670785654 0.21839901314571308 0.16163486248463282 0.10370096626300458 
		0.044182442846986601;
	setAttr -s 8 ".wl[75].w[0:7]"  0.031112669280188607 0.070390384864947086 
		0.15167438054048563 0.21879029889895915 0.21847445753262615 0.16168832410002867 0.10370622755439139 
		0.044163257228373366;
	setAttr -s 8 ".wl[76].w[0:7]"  0.018249419654956033 0.045062335951915354 
		0.12130895556147255 0.24383366435185116 0.24572931719669838 0.18364846250914121 0.10500436459177004 
		0.037163480182195223;
	setAttr -s 8 ".wl[77].w[0:7]"  0.0064428921391064802 0.017461336684944713 
		0.06340790957566593 0.27307595037287841 0.3115761132762972 0.21838506406145441 0.088494016167266085 
		0.021156717722386809;
	setAttr -s 8 ".wl[78].w[0:7]"  0.0064792655860397954 0.017553735874200338 
		0.063666425913098984 0.27299413034923675 0.31115117816997873 0.21826136333688684 
		0.088654319871786499 0.021239580898772148;
	setAttr -s 8 ".wl[79].w[0:7]"  0.018332110398526051 0.045237136637817518 
		0.12157179953971251 0.24362261112686032 0.24547069539429045 0.18348590318972791 0.10503916297602561 
		0.037240580737039772;
	setAttr -s 8 ".wl[80].w[0:7]"  0.022071964049060807 0.048528779055635705 
		0.110377931979627 0.20839933986030162 0.218352897745101 0.19742808017514191 0.13727169083980922 
		0.057569316295322769;
	setAttr -s 8 ".wl[81].w[0:7]"  0.022049546344840788 0.048486864011366232 
		0.11032060350023937 0.20841635479856971 0.21840061817308132 0.19748239545520033 0.13728933893541917 
		0.057554278781283157;
	setAttr -s 8 ".wl[82].w[0:7]"  0.01530636438831154 0.035163637242835055 
		0.089452444739416256 0.21018000952490393 0.23553968337796607 0.21789538020379012 
		0.14392148178092176 0.052540998741855229;
	setAttr -s 8 ".wl[83].w[0:7]"  0.0089420740848683081 0.021489014046061489 
		0.062142771418905396 0.20207378507613538 0.26402543697769454 0.24971028252612268 
		0.14869428349266711 0.042922352377545096;
	setAttr -s 8 ".wl[84].w[0:7]"  0.0089623328036387701 0.021534155289975012 
		0.062244278612533246 0.20212637688596277 0.26389375039470719 0.24957309320974042 
		0.14869622363914975 0.042969789164292831;
	setAttr -s 8 ".wl[85].w[0:7]"  0.015349695792086194 0.03525203407281334 
		0.089605921463693824 0.21017649665852964 0.23539473433118308 0.21773754627781769 
		0.14389026911835978 0.052593302285516431;
	setAttr -s 8 ".wl[86].w[0:7]"  0.021546125056012482 0.081194248929660734 
		0.29678911561390225 0.33193165092122523 0.17643591093665043 0.056331701747917136 
		0.026391039153792609 0.0093802076408391055;
	setAttr -s 8 ".wl[87].w[0:7]"  0.014230227304657221 0.031959987618102911 
		0.079786210099895394 0.19496309149686064 0.23372199861820706 0.22618493281366167 
		0.15966978780009555 0.059483764248519554;
	setAttr -s 8 ".wl[88].w[0:7]"  0.0012643579137868435 0.0034005295423681484 
		0.013482113415528159 0.13888699142309882 0.43438310119487117 0.33453240291560471 
		0.065580214452656771 0.008470289142085417;
	setAttr -s 8 ".wl[89].w[0:7]"  0.00123828963517332 0.0033314825000457155 
		0.013224095178263619 0.13743785274623418 0.43650399089214698 0.33516384823915302 
		0.064783365098247753 0.0083170757107353561;
	setAttr -s 8 ".wl[90].w[0:7]"  0.0014456618294545985 0.0038736204419680194 
		0.015280128999424861 0.14637601207828524 0.41941496668176409 0.33218397304192221 
		0.07170432061640411 0.0097213163107770072;
	setAttr -s 8 ".wl[91].w[0:7]"  0.0013610391947330011 0.0036530134814006785 
		0.014575952208433484 0.14296234869635097 0.42589738588680365 0.3333226595243568 0.068933682533825688 
		0.0092939184740957453;
	setAttr -s 8 ".wl[92].w[0:7]"  0.0013874270891107445 0.0037226529421428068 
		0.014836126696497972 0.14429086218310067 0.42398161166086495 0.33265006376837258 
		0.06968178772410899 0.0094494679358011532;
	setAttr -s 8 ".wl[93].w[0:7]"  0.0014989534718103537 0.0040138649384861983 
		0.015796139735955592 0.14886574911338199 0.41586237732240533 0.33080515186430359 
		0.073129793414367136 0.010027970139289867;
	setAttr -s 8 ".wl[94].w[0:7]"  0.002566733228821021 0.0058267970948748344 
		0.01655313515690723 0.073721214748597858 0.2647111249133709 0.31866969756025493 0.26907848164096315 
		0.048872815656210149;
	setAttr -s 8 ".wl[95].w[0:7]"  0.0025294583278550743 0.0057440923287921056 
		0.01633350781879217 0.073016421725280098 0.26467588445507489 0.3196091240303674 0.26962278036982684 
		0.048468730944011378;
	setAttr -s 8 ".wl[96].w[0:7]"  0.002909499257524754 0.0065706891300064459 
		0.018540406009333415 0.078931588829218552 0.26179060256786268 0.31002199370549893 
		0.26644493461793434 0.054790285882620929;
	setAttr -s 8 ".wl[97].w[0:7]"  0.0026765915308612129 0.0060646890288752388 
		0.017340781659314925 0.075322500507542842 0.26292178976113517 0.31478282872779245 
		0.2676651643751019 0.053225654409376204;
	setAttr -s 8 ".wl[98].w[0:7]"  0.0027140605986418222 0.0061475466487117322 
		0.017561174114615035 0.076001587655411262 0.26293068370446238 0.31389771105084208 
		0.26712472466387266 0.053622511563443095;
	setAttr -s 8 ".wl[99].w[0:7]"  0.0029855799984772635 0.00673805974722362 
		0.018977610957492879 0.080224553281196154 0.261752054062172 0.308404254160281 0.26538849921630042 
		0.055529388576856742;
	setAttr -s 8 ".wl[100].w[0:7]"  0.0020103853918798467 0.0040602434585746165 
		0.0096211760386994954 0.031688980457265613 0.10938398501612849 0.29535021648833371 
		0.37035204749296874 0.17753296565614954;
	setAttr -s 8 ".wl[101].w[0:7]"  0.0019802533558141784 0.0040002931264181947 
		0.0094842780770677398 0.031292295515060471 0.1085089654802089 0.29552123682006909 
		0.37198551867402346 0.17722715895133792;
	setAttr -s 8 ".wl[102].w[0:7]"  0.0022112971295056979 0.0044518155177686895 
		0.01051568622756994 0.033921621425325572 0.11255746725889498 0.2855369938234506 0.36190481718374123 
		0.18890030143374323;
	setAttr -s 8 ".wl[103].w[0:7]"  0.0019979093917568721 0.0040304144746229108 
		0.0095923618424252777 0.031191839089124939 0.10619857565353015 0.28059890373855184 
		0.3737345658939335 0.19265542991605453;
	setAttr -s 8 ".wl[104].w[0:7]"  0.0020282021312216527 0.0040906010539912517 
		0.0097303003746886142 0.03158634466025996 0.10706572454032184 0.28060248679816174 
		0.37204619137589406 0.19285014906546094;
	setAttr -s 8 ".wl[105].w[0:7]"  0.0022726733405783023 0.0045733227201866615 
		0.010791068508446473 0.034693255097214409 0.11414482811191265 0.28529311374426491 
		0.35901879001451326 0.18921294846288333;
	setAttr -s 8 ".wl[106].w[0:7]"  0.00049596044621874288 0.00094211665243488444 
		0.0020509758828144054 0.0059389469248800619 0.018995099994917407 0.067500526477989917 
		0.47329854460161086 0.43077782901913386;
	setAttr -s 8 ".wl[107].w[0:7]"  0.00048135405946431051 0.00091447087936925885 
		0.0019912778373016981 0.0057701492597268438 0.018488256216609145 0.066011963436581292 
		0.47478175382474491 0.43156077448620261;
	setAttr -s 8 ".wl[108].w[0:7]"  0.0005048577458398011 0.00095810519908443373 
		0.0020852309479873379 0.0060018524225765538 0.019004598029269057 0.065936124006491542 
		0.4695864856882625 0.43592274596048869;
	setAttr -s 8 ".wl[109].w[0:7]"  0.0004149615391199937 0.00078784461485823627 
		0.0017187693814899349 0.0049496854786341433 0.015746598145927986 0.055248141665443971 
		0.47622523591600469 0.44490876325852097;
	setAttr -s 8 ".wl[110].w[0:7]"  0.00042919836410638994 0.00081478541177852919 
		0.0017771091126189667 0.0051141062505722533 0.016240942196146437 0.056720119532016888 
		0.47484856993672347 0.4440551691960371;
	setAttr -s 8 ".wl[111].w[0:7]"  0.00053456804988503981 0.0010142667583742826 
		0.0022063862441436704 0.0063417064672830724 0.020010511934550196 0.068801488540360237 
		0.46689531784751581 0.4341957541578878;
	setAttr -s 8 ".wl[112].w[0:7]"  5.7279532090667754e-08 1.707682563090465e-07 
		8.8894499253232084e-07 5.1941449834039338e-05 0.9999164311151344 2.8192256671366663e-05 
		2.0592348763274206e-06 2.5895070294284188e-07;
	setAttr -s 8 ".wl[113].w[0:7]"  1.6626442479450669e-06 3.0989588216510066e-06 
		6.5839076311713929e-06 1.8333172245199426e-05 5.6829377235257586e-05 0.00020837164212039546 
		0.49985256014884927 0.49985256014884916;
	setAttr -s 8 ".wl[114].w[0:7]"  0.99926154251376675 0.00067808294605267857 
		4.128865972265338e-05 1.0374966712497764e-05 4.0032357776053284e-06 2.2593542603973466e-06 
		1.5525510340420289e-06 8.9577267331284774e-07;
	setAttr -s 8 ".wl[115].w[0:7]"  0.99926082093016999 0.00067875482102366176 
		4.1323299348650195e-05 1.0383273256226674e-05 4.0063695452200781e-06 2.2611039086094186e-06 
		1.5537460073216294e-06 8.964567401804753e-07;
	setAttr -s 8 ".wl[116].w[0:7]"  0.99913233342846619 0.0007964279294736396 
		4.8707951848306811e-05 1.2248044245634072e-05 4.7253400495290638e-06 2.6670136350413653e-06 
		1.8327168447661787e-06 1.0575754368494445e-06;
	setAttr -s 8 ".wl[117].w[0:7]"  0.99924110769386687 0.00069642415249044829 
		4.2704450647763311e-05 1.0744499593644451e-05 4.1445690976441102e-06 2.3393055985535606e-06 
		1.6075503363682672e-06 9.2777836862320049e-07;
	setAttr -s 8 ".wl[118].w[0:7]"  0.99924190445128025 0.00069568347424146923 
		4.2665448404638824e-05 1.0735096705805757e-05 4.1410158319573905e-06 2.3373196652227414e-06 
		1.6061931902298363e-06 9.2700068055140829e-07;
	setAttr -s 8 ".wl[119].w[0:7]"  0.99913396524094289 0.00079490836153163838 
		4.8629689487675597e-05 1.2229299788218446e-05 4.7182764616656259e-06 2.6630716257263818e-06 
		1.8300252287160153e-06 1.0560349335390258e-06;
	setAttr -s 8 ".wl[120].w[0:7]"  3.1589750192888491e-06 8.9703777535416045e-06 
		4.1619858668833732e-05 0.0012229010891551828 0.99357391816881613 0.004939798448735452 
		0.0001901985993252744 1.9434482526195145e-05;
	setAttr -s 8 ".wl[121].w[0:7]"  2.3116050280808413e-06 6.5644074796309463e-06 
		3.0462037007266328e-05 0.00089744029792396967 0.99526273748401128 0.0036469212320696552 
		0.00013933746377554088 1.4225472704440641e-05;
	setAttr -s 8 ".wl[122].w[0:7]"  4.778056638756417e-06 1.3566129236939962e-05 
		6.2969300985045101e-05 0.0018387823117324471 0.99038690598399881 0.0073761996663089377 
		0.00028736585653729794 2.9432694561679915e-05;
	setAttr -s 8 ".wl[123].w[0:7]"  7.2425743304724137e-06 2.0560863752793986e-05 
		9.5474300045402845e-05 0.0027676836781697113 0.98565452736382242 0.010975184263011611 
		0.00043467287841366254 4.4654078453969825e-05;
	setAttr -s 8 ".wl[124].w[0:7]"  8.4282000733545796e-06 2.3925767493525953e-05 
		0.00011108040494477857 0.0032116254578888077 0.98342560953123059 0.012662124166321082 
		0.00050525754489080311 5.1948927156936984e-05;
	setAttr -s 8 ".wl[125].w[0:7]"  6.9391353507478495e-06 1.9700411783677562e-05 
		9.1411568821477452e-05 0.0026552661767951474 0.98624017734634362 0.010527390907461074 
		0.00041639443769159049 4.2720015752718572e-05;
	setAttr -s 2 ".wl[126].w[0:1]"  0.99999999979099807 2.0900195159720434e-10;
	setAttr -s 8 ".wl[127].w[0:7]"  5.1531474981263243e-08 1.4637421429972231e-07 
		6.8044389525422113e-07 2.0265101064872942e-05 0.99989142432848654 8.3997860337950881e-05 
		3.1166689765226277e-06 3.1769154947539019e-07;
	setAttr -s 8 ".wl[128].w[0:7]"  0.95241059647354698 0.047378159217240798 
		0.00016591676441670379 2.7286643474824334e-05 8.795237980793881e-06 4.5831121228217041e-06 
		3.0144916791554052e-06 1.6480595379051833e-06;
	setAttr -s 8 ".wl[129].w[0:7]"  0.95994401354964431 0.039885518461387812 
		0.00013391977454340801 2.1999989193975826e-05 7.092853800477766e-06 3.6958192082028594e-06 
		2.430825323097705e-06 1.3287268987724678e-06;
	setAttr -s 8 ".wl[130].w[0:7]"  0.97602270411172876 0.023882526299267376 
		7.4474875082348806e-05 1.2215879292004953e-05 3.9390173757093849e-06 2.0523165214367229e-06 
		1.3498102370611271e-06 7.3769049537385481e-07;
	setAttr -s 8 ".wl[131].w[0:7]"  0.97534136249066405 0.024560831151619757 
		7.6859227950414096e-05 1.2608358577890686e-05 4.065715217120141e-06 2.1183586356154663e-06 
		1.3932563178209408e-06 7.6144101727678967e-07;
	setAttr -s 8 ".wl[132].w[0:7]"  0.95853454894785317 0.04128780390343896 
		0.00013955211315761561 2.2930268802143419e-05 7.393297274884266e-06 3.8524769582484835e-06 
		2.5338995624571995e-06 1.3850929524866288e-06;
	setAttr -s 8 ".wl[133].w[0:7]"  0.95171412980755177 0.048070839057389271 
		0.00016888642971043592 2.7778067340533378e-05 8.9539517996341121e-06 4.6658817003198792e-06 
		3.068954762221227e-06 1.6778497457189321e-06;
	setAttr -s 8 ".wl[134].w[0:7]"  0.0042970891496790274 0.99413252854827872 
		0.0014534695836337201 8.1375047299809725e-05 1.8890448154651695e-05 8.6469858287861256e-06 
		5.3168566952230805e-06 2.6833804301124233e-06;
	setAttr -s 8 ".wl[135].w[0:7]"  0.0031061024154245792 0.99576338174938339 
		0.0010466642886531798 5.8357975281208797e-05 1.3552340509059314e-05 6.2029176554304729e-06 
		3.8139008426433367e-06 1.9244122505201442e-06;
	setAttr -s 8 ".wl[136].w[0:7]"  0.0014578622107735461 0.99801550071901657 
		0.00048779055264803296 2.7034999428205663e-05 6.2795553934401381e-06 2.8737813693034123e-06 
		1.7668693676072186e-06 8.9131200327331166e-07;
	setAttr -s 8 ".wl[137].w[0:7]"  0.0015785724764738433 0.99785125659337848 
		0.00052808772624086454 2.9286604435517791e-05 6.8031566842680651e-06 3.1134881994757907e-06 
		1.9142711325276383e-06 9.6568345504719047e-07;
	setAttr -s 8 ".wl[138].w[0:7]"  0.003411872115957434 0.99534663871911977 
		0.0011492956352300184 6.415957653266939e-05 1.4902304006054511e-05 6.8211713798482311e-06 
		4.1941442078916963e-06 2.1163335662377104e-06;
	setAttr -s 8 ".wl[139].w[0:7]"  0.0044640784623957014 0.99390472236672089 
		0.0015096858073709338 8.4574509949361987e-05 1.9634933524647279e-05 8.9880159385410238e-06 
		5.5266192904399354e-06 2.7892848095188187e-06;
	setAttr -s 8 ".wl[140].w[0:7]"  0.00036520527660078645 0.86497351761671537 
		0.13439324150422718 0.00021515292751742748 3.0821862775215205e-05 1.2035971305200483e-05 
		6.8531254846250089e-06 3.1717153742620666e-06;
	setAttr -s 8 ".wl[141].w[0:7]"  0.00026655698712823071 0.89206663542913833 
		0.10747152935224161 0.00015673330382431645 2.2467538925661625e-05 8.7721334549323045e-06 
		4.9944335480128759e-06 2.3108217389892217e-06;
	setAttr -s 8 ".wl[142].w[0:7]"  0.00013072757109162779 0.93851158007944901 
		0.061262165945696646 7.6669078371627595e-05 1.0993198435364269e-05 4.2911628480856787e-06 
		2.4429868014920241e-06 1.1299773060538135e-06;
	setAttr -s 8 ".wl[143].w[0:7]"  0.00014623986844919756 0.93264718866427887 
		0.067099732002100412 8.5744260892046611e-05 1.2297470907564659e-05 4.8005357431228636e-06 
		2.7330347280500653e-06 1.2641629007580676e-06;
	setAttr -s 8 ".wl[144].w[0:7]"  0.00030333398713983562 0.88172211638784914 
		0.11775242123902263 0.00017826439509350888 2.556657855486178e-05 9.9831652290874455e-06 
		5.6841809732671593e-06 2.6300661375460554e-06;
	setAttr -s 8 ".wl[145].w[0:7]"  0.0003847058149078434 0.86027779178639019 
		0.13905521357282319 0.00022658179353948825 3.2467107160933724e-05 1.2679111078513282e-05 
		7.2194757039186578e-06 3.3413383959876067e-06;
	setAttr -s 8 ".wl[146].w[0:7]"  9.7708380128927745e-05 0.0049900791824483036 
		0.9936957340795467 0.0011198644126197478 6.2868565530417047e-05 1.9520289746947229e-05 
		1.0046998154895807e-05 4.1780918240971655e-06;
	setAttr -s 8 ".wl[147].w[0:7]"  7.9613544270444874e-05 0.0041059540386755543 
		0.99482469580352584 0.0009110332440117611 5.1221305663440498e-05 1.5898644649533898e-05 
		8.1821221310686714e-06 3.4012970723937326e-06;
	setAttr -s 8 ".wl[148].w[0:7]"  4.9074890140900379e-05 0.0025689245143446131 
		0.99677224079101345 0.00056127558674165902 3.1560224206252084e-05 9.7917150241600198e-06 
		5.0385761214783496e-06 2.0937024076195317e-06;
	setAttr -s 8 ".wl[149].w[0:7]"  5.6055768228799441e-05 0.0029282346616357766 
		0.99631997808522677 0.00064035859264124158 3.6042661873968954e-05 1.1183665481791018e-05 
		5.7550584139895962e-06 2.3915064977553438e-06;
	setAttr -s 8 ".wl[150].w[0:7]"  9.6105027389103168e-05 0.0049360719905780807 
		0.99377569348389649 0.0010971512335512532 6.1807545131668199e-05 1.9188812684690803e-05 
		9.8761336556490483e-06 4.105773112970098e-06;
	setAttr -s 8 ".wl[151].w[0:7]"  0.00010636591190456865 0.0054211070704114723 
		0.99314971904041682 0.0012176489963489612 6.8425831179778267e-05 2.1248160500900375e-05 
		1.0936740208229156e-05 4.5482490293220629e-06;
	setAttr -s 8 ".wl[152].w[0:7]"  2.7604303069589395e-05 0.00028642484000181634 
		0.92512520741766291 0.07438604068334638 0.00013092947965625946 2.7347226898018275e-05 
		1.2101954807231563e-05 4.3440945577688502e-06;
	setAttr -s 8 ".wl[153].w[0:7]"  2.8439699834725886e-05 0.00029556133722975742 
		0.92424434446434156 0.075251522813777644 0.00013501481988548099 2.8177227011535615e-05 
		1.2466862523481547e-05 4.4727753958294786e-06;
	setAttr -s 8 ".wl[154].w[0:7]"  2.4669898636032412e-05 0.0002569861677229569 
		0.93340944309590523 0.066152542718791188 0.00011723154770146471 2.4439580570605342e-05 
		1.0810558512868722e-05 3.8764321596343922e-06;
	setAttr -s 8 ".wl[155].w[0:7]"  2.8070739070585507e-05 0.00029230521001262369 
		0.92612677661124021 0.073375007061199038 0.00013332702346779577 2.7803368887166711e-05 
		1.2299424174602085e-05 4.4105619479007584e-06;
	setAttr -s 8 ".wl[156].w[0:7]"  3.5558033940967069e-05 0.00036926805140344179 
		0.90988619048421071 0.089483948331667632 0.00016864331724960715 3.5216438933213292e-05 
		1.558368831019867e-05 5.5916542842444884e-06;
	setAttr -s 8 ".wl[157].w[0:7]"  3.1086263155857159e-05 0.00032243583536355625 
		0.91779721812768889 0.081652577575878182 0.00014737262167602153 3.0790892253392591e-05 
		1.3626911646639245e-05 4.891772337405098e-06;
	setAttr -s 8 ".wl[158].w[0:7]"  1.6663626259591318e-05 8.9095221801883134e-05 
		0.0040388142717503218 0.99479419327657281 0.00093934294415500583 8.4276443332316839e-05 
		2.9147936322304227e-05 8.4662798059748427e-06;
	setAttr -s 8 ".wl[159].w[0:7]"  1.4846056554378854e-05 7.9420793551628917e-05 
		0.0035893241258379942 0.99536752940747952 0.00084023518353154992 7.5131917777936178e-05 
		2.5973904156134776e-05 7.5386111108171928e-06;
	setAttr -s 8 ".wl[160].w[0:7]"  1.1016583125356637e-05 5.8981330935904904e-05 
		0.0026670785986647534 0.99655571083649397 0.00062656117364122887 5.5785962105383564e-05 
		1.9275526938841869e-05 5.5899880945941327e-06;
	setAttr -s 8 ".wl[161].w[0:7]"  1.3192621960809337e-05 7.0621659295879257e-05 
		0.0031836438305703038 0.99588693105816251 0.00074906046191059329 6.6778847042357252e-05 
		2.3078053291700278e-05 6.6934677659841136e-06;
	setAttr -s 8 ".wl[162].w[0:7]"  1.972736855908288e-05 0.00010550442572847901 
		0.0047389916996292388 0.99387874028029477 0.0011127647121179022 9.9756771168836103e-05 
		3.4499498188477318e-05 1.0015244313291597e-05;
	setAttr -s 8 ".wl[163].w[0:7]"  1.913376638704333e-05 0.00010228797941732451 
		0.0046226268159930166 0.99403925312207353 0.0010767850229610491 9.6731330121041864e-05 
		3.3461663833244996e-05 9.7202992137755149e-06;
	setAttr -s 8 ".wl[164].w[0:7]"  1.2331788503199097e-05 4.779313292390947e-05 
		0.0005227110746950077 0.96679469792724926 0.032227867906685949 0.00030535655010230952 
		7.2979771735770009e-05 1.6261848104491996e-05;
	setAttr -s 8 ".wl[165].w[0:7]"  8.9931431116161891e-06 3.486378706013827e-05 
		0.00038093480096348405 0.97483283208391802 0.024454218644907655 0.00022305467788285611 
		5.3250824683673083e-05 1.1852037472611527e-05;
	setAttr -s 8 ".wl[166].w[0:7]"  5.0287346556882023e-06 1.9502801986322286e-05 
		0.00021303052114044063 0.98521149737459979 0.014389572468486737 0.00012495430107999677 
		2.9791259179850382e-05 6.6225388712157518e-06;
	setAttr -s 8 ".wl[167].w[0:7]"  6.3933555661934492e-06 2.4793224236780509e-05 
		0.00027064601567910665 0.98150007804624151 0.017993080154080424 0.00015872884970701803 
		3.7861956405333533e-05 8.4183980837191425e-06;
	setAttr -s 8 ".wl[168].w[0:7]"  1.2282055653166625e-05 4.7606458199095762e-05 
		0.00051950516037486071 0.96667981593916952 0.032347818226205909 0.00030411734727383167 
		7.2673187631611312e-05 1.6181625492072138e-05;
	setAttr -s 8 ".wl[169].w[0:7]"  1.4084877820170056e-05 5.4583126056920377e-05 
		0.00059659328821166978 0.96264593023707845 0.036238439433286619 0.00034847349708463509 
		8.3324694908957814e-05 1.8570845552666035e-05;
	setAttr -s 8 ".wl[170].w[0:7]"  8.9131422916958507e-06 2.7751980819170198e-05 
		0.00016077634985993432 0.020043469904239674 0.97754231062226082 0.00197188784659007 
		0.00021361580286675727 3.1274351071823067e-05;
	setAttr -s 8 ".wl[171].w[0:7]"  5.9367978169845489e-06 1.8487915345728401e-05 
		0.00010705142260962792 0.01371408709058981 0.98467009327092325 0.0013210661334690074 
		0.00014246201472669891 2.0815354518881529e-05;
	setAttr -s 8 ".wl[172].w[0:7]"  2.8702462714750236e-06 8.9403717014887555e-06 
		5.175306237433667e-05 0.0068608906581151628 0.99235355516176238 0.00064297074593342774 
		6.8964712861089778e-05 1.0055040980570958e-05;
	setAttr -s 8 ".wl[173].w[0:7]"  3.849653815725125e-06 1.1990479136631975e-05 
		6.9391857266357511e-05 0.0091004625318015318 0.98984840996558277 0.00085998011045577689 
		9.2432357920177273e-05 1.3483044021083436e-05;
	setAttr -s 8 ".wl[174].w[0:7]"  8.4196404295630904e-06 2.6217189884885403e-05 
		0.00015173077334392098 0.019033602271994968 0.97868552633093764 0.0018632387911828271 
		0.00020175778786925448 2.9507214356996238e-05;
	setAttr -s 8 ".wl[175].w[0:7]"  1.027039734030935e-05 3.1976347280525863e-05 
		0.00018520320932660482 0.022850863642944707 0.97437377140501213 0.0022659148952283831 
		0.0002459715997386203 3.602850312873941e-05;
	setAttr -s 8 ".pm";
	setAttr ".pm[0]" -type "matrix" 1.151145028563028e-16 -2.1995092510043633e-16 0.99999999999999978 -0
		 0.999828576325131 0.018515344006019778 6.1668483673015637e-18 0 -0.018515344006019608 0.999828576325131 3.3300981183430537e-16 -0
		 0.10908235306579893 0.0020200435752924456 6.7280966641073824e-19 1;
	setAttr ".pm[1]" -type "matrix" -3.4198225706542256e-05 0.00047507649589898204 0.9999998865663956 -0
		 0.99999998818363012 0.00014989358177368466 3.412701825612447e-05 0 -0.00014987735182629851 0.99999987591711059 -0.00047508161637973298 0
		 -1.9469408137712092 0.037782906376991117 -8.4531701742046681e-05 1;
	setAttr ".pm[2]" -type "matrix" -2.810519173241177e-05 -0.00047547586037011282 -0.99999988656639549 0
		 0.99991973709441018 0.01266957790897034 -3.4127018256122912e-05 0 0.012669592698387988 -0.99991962462905704 0.00047508161637961052 -0
		 -5.0300973258738173 -0.10227443860830281 8.453170174204683e-05 1;
	setAttr ".pm[3]" -type "matrix" -4.0208631036737003e-05 0.00047460558528851076 0.9999998865663956 -0
		 0.99991798520975239 0.012807095276269876 3.4127018256124484e-05 0 -0.01280707762664126 0.9999178731576519 -0.00047508161637948811 0
		 -8.0001805327713065 -0.10155996919408654 -8.4531701742079966e-05 1;
	setAttr ".pm[4]" -type "matrix" -3.4198225706546322e-05 0.00047507649589873674 0.9999998865663956 -0
		 0.99999998818363012 0.00014989358178227151 3.4127018256124484e-05 0 -0.00014987735183489062 0.99999987591711037 -0.00047508161637948811 0
		 -11.00872992898479 0.037782906376893986 -8.4531701742074423e-05 1;
	setAttr ".pm[5]" -type "matrix" -3.4198225706546322e-05 0.00047507649589873674 0.9999998865663956 -0
		 0.99999998818363012 0.00014989358178227151 3.4127018256124484e-05 0 -0.00014987735183489062 0.99999987591711037 -0.00047508161637948811 0
		 -13.33128932406054 0.037782906376873378 -8.4531701742083937e-05 1;
	setAttr ".pm[6]" -type "matrix" -2.3632129009707173e-05 -0.00047571915882719119 -0.9999998865663956 0
		 0.9997563567016795 0.022073197999619404 -3.4127018256121787e-05 0 0.022073211730653571 -0.99975624410220643 0.00047508161637936565 -0
		 -15.108971223405723 -0.37364267799649575 8.4531701742045651e-05 1;
	setAttr ".pm[7]" -type "matrix" 0.99999988656639549 -3.4198225707648115e-05 0.00047507649589853437 -0
		 3.4127018257176526e-05 0.99999998818363012 0.0001498935817734383 -0 -0.00047508161637914366 -0.00014987735182605516 0.99999987591711026 -0
		 -8.4531701761271863e-05 -18.163082526612396 -0.056036055968492392 1;
	setAttr ".gm" -type "matrix" 0.99999955298061494 -0.00094553597599649722 5.3711089560581082e-07 0
		 0.0009455360655496579 0.99999953237507266 -0.00020300538128455184 0 -3.4516175311393748e-07 0.00020300579839493409 0.99999997939426311 0
		 0 0 0 1;
	setAttr -s 8 ".ma";
	setAttr -s 8 ".dpf[0:7]"  3 3 3 3 3 3 3 3;
	setAttr -s 8 ".lw";
	setAttr -s 8 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 12;
	setAttr ".ucm" yes;
	setAttr -s 8 ".ifcl";
	setAttr -s 8 ".ifcl";
createNode tweak -n "tweak1";
	rename -uid "5436E1A5-1C42-C248-9895-9C8E1CCA22ED";
createNode objectSet -n "skinCluster1Set";
	rename -uid "54A491A5-4046-4661-E7A9-A3A43BAD2245";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster1GroupId";
	rename -uid "87E3B3C9-6B48-48C5-9ECA-88A29EF5488E";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster1GroupParts";
	rename -uid "0531E892-7540-0407-352D-F2841CC8C6CB";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet1";
	rename -uid "33BD4199-C148-2A8E-18BE-418B4B8D8756";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId61";
	rename -uid "F2A1C830-C044-FF9B-B109-539889AA0A31";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts61";
	rename -uid "E0F96208-F04B-4388-9DC5-EE8164630D3F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose1";
	rename -uid "5614F0C4-5D44-7649-CB1E-B5A8C63D53D4";
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
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0.00047507651404762153 3.4198225713319231e-05
		 -0.00014987735247505552 0 2.0563886995125911 -5.5315513629609237e-17 -1.2282511370111768e-32 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.0092580687745548694 0.99995714316292861 1
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
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.0508709938626826 -0.026025716360186711
		 -5.7062220188626544e-17 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.49441302197002202 0.50552523547936812 -0.49441302197002152 0.50552523547936867 1
		 1 1 yes;
	setAttr -s 10 ".m";
	setAttr -s 10 ".p";
	setAttr -s 10 ".g[0:9]" yes yes no no no no no no no no;
	setAttr ".bp" yes;
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
connectAttr "skinCluster1GroupId.id" "|polySurface12|polySurface8Shape.iog.og[8].gid"
		;
connectAttr "skinCluster1Set.mwc" "|polySurface12|polySurface8Shape.iog.og[8].gco"
		;
connectAttr "groupId61.id" "|polySurface12|polySurface8Shape.iog.og[9].gid";
connectAttr "tweakSet1.mwc" "|polySurface12|polySurface8Shape.iog.og[9].gco";
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
connectAttr "|polySurface12|polySurface8Shape.iog.og[8]" "skinCluster1Set.dsm" -na
		;
connectAttr "skinCluster1.msg" "skinCluster1Set.ub[0]";
connectAttr "tweak1.og[0]" "skinCluster1GroupParts.ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1GroupParts.gi";
connectAttr "groupId61.msg" "tweakSet1.gn" -na;
connectAttr "|polySurface12|polySurface8Shape.iog.og[9]" "tweakSet1.dsm" -na;
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
