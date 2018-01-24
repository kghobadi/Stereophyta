//Maya ASCII 2016 scene
//Name: tree2_seed.ma
//Last modified: Tue, Nov 07, 2017 10:20:53 AM
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
createNode transform -n "group";
	rename -uid "8B4C74C7-6346-BC72-9788-3E880B0A59FF";
	setAttr ".t" -type "double3" 0 0 -7.2641187252423727 ;
	setAttr ".rp" -type "double3" -7.9664492607116699 9.9383148319867214 8.0076255798339844 ;
	setAttr ".sp" -type "double3" -7.9664492607116699 9.9383148319867214 8.0076255798339844 ;
createNode transform -n "pasted__polySurface1" -p "group";
	rename -uid "4C537650-5C47-A903-8D08-5EB635FF2EE7";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "pasted__polySurfaceShape1" -p "pasted__polySurface1";
	rename -uid "B7ACC441-9148-2DF1-5EC7-44B14DABC096";
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
	rename -uid "16DCE346-6B4C-D52F-FB12-F99D0DF3B6BB";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface3" -p "pasted__polySurface1";
	rename -uid "88EE5A86-6D46-29AB-565D-E9918A2974DB";
	setAttr ".t" -type "double3" -9.1579210529076569 -11.72450748208175 -4.4408920985006262e-15 ;
	setAttr ".s" -type "double3" 0.10844395813440717 0.10844395813440717 0.10844395813440717 ;
	setAttr ".rp" -type "double3" 0 16.276506423950195 -1.1920928955078125e-07 ;
	setAttr ".sp" -type "double3" 0 16.276506423950195 -1.1920928955078125e-07 ;
createNode mesh -n "polySurfaceShape3" -p "polySurface3";
	rename -uid "694B1769-654D-50DC-4EE0-7486FFFB23C4";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "transform1" -p "pasted__polySurface1";
	rename -uid "FF1C1A38-6247-0806-33F0-85A5175B689F";
	setAttr ".v" no;
createNode mesh -n "pasted__polySurface1Shape" -p "transform1";
	rename -uid "3F8612FA-3348-EA61-904F-45B6175E90F1";
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
createNode groupParts -n "groupParts10";
	rename -uid "669BE54B-264D-532D-1724-C2A4BB423F5A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 26 "vtx[0]" "vtx[1]" "vtx[2]" "vtx[3]" "vtx[4]" "vtx[5]" "vtx[6]" "vtx[7]" "vtx[8]" "vtx[9]" "vtx[10]" "vtx[11]" "vtx[12]" "vtx[13]" "vtx[14]" "vtx[15]" "vtx[16]" "vtx[17]" "vtx[18]" "vtx[19]" "vtx[20]" "vtx[21]" "vtx[22]" "vtx[23]" "vtx[24]" "vtx[25]";
createNode groupParts -n "groupParts8";
	rename -uid "CE3AD4FE-734C-494D-B004-C9B7401FDBDF";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 30 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]" "f[12]" "f[13]" "f[14]" "f[15]" "f[16]" "f[17]" "f[18]" "f[19]" "f[20]" "f[21]" "f[22]" "f[23]" "f[24]" "f[25]" "f[26]" "f[27]" "f[28]" "f[29]";
createNode polySeparate -n "polySeparate1";
	rename -uid "C5E46064-3A4A-9C4F-CF16-20B1132FEBE6";
	setAttr ".ic" 2;
createNode tweak -n "pasted__tweak1";
	rename -uid "66040347-7B41-BCE1-BCD2-DCABBEC92C07";
createNode objectSet -n "pasted__tweakSet1";
	rename -uid "7FA0F133-F046-A95D-5AD1-03B62D4F3D66";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".vo" yes;
	setAttr -s 2 ".gn";
createNode groupId -n "pasted__groupId4";
	rename -uid "BF73830F-0B46-4CAF-943B-2BBEB88F434F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId10";
	rename -uid "90611DF9-2C41-1951-A604-569906660A27";
	setAttr ".ihi" 0;
createNode groupParts -n "pasted__groupParts4";
	rename -uid "9926E789-7643-8E6D-00EF-4BBE119A630C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode polySplitRing -n "pasted__polySplitRing8";
	rename -uid "F38417D3-7047-FD8D-9177-7F8092576028";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[156:157]" "e[159]" "e[161]" "e[163]" "e[165]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.64538180828094482;
	setAttr ".re" 156;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "pasted__polySplitRing7";
	rename -uid "4A76FED9-1247-ABD6-917A-B7B98F972B88";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[144:145]" "e[147]" "e[149]" "e[151]" "e[153]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.38973343372344971;
	setAttr ".re" 144;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "pasted__polySplitRing6";
	rename -uid "9F44EDBA-DB4E-EA24-977A-7DB66027D607";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[132:133]" "e[135]" "e[137]" "e[139]" "e[141]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.31439617276191711;
	setAttr ".re" 132;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "pasted__polySplitRing5";
	rename -uid "F537B92C-1540-8582-802C-69B1D7EF5C29";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[120:121]" "e[123]" "e[125]" "e[127]" "e[129]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.23594433069229126;
	setAttr ".re" 120;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "pasted__polySplitRing4";
	rename -uid "BB9580BF-4B44-2FFC-C481-9E8AA6BC739B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[108:109]" "e[111]" "e[113]" "e[115]" "e[117]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.18606995046138763;
	setAttr ".re" 108;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "pasted__polySplitRing3";
	rename -uid "EF729C12-1E4C-C7C5-E3D2-C5B3419EBA5A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[96:97]" "e[99]" "e[101]" "e[103]" "e[105]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.16217997670173645;
	setAttr ".re" 96;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "pasted__polySplitRing2";
	rename -uid "60A0C522-F142-C8CB-0BCE-809DA0D8B9DB";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[84:85]" "e[87]" "e[89]" "e[91]" "e[93]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.16052569448947906;
	setAttr ".re" 84;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "pasted__polySplitRing1";
	rename -uid "1C62F3A7-2F4A-34F8-2BEA-EBB1990FA1BC";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[12:17]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.11920327693223953;
	setAttr ".re" 15;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode groupParts -n "pasted__groupParts2";
	rename -uid "C4C095E3-864B-EEC3-0B38-4ABEAA258EC0";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[18:47]";
createNode groupParts -n "pasted__groupParts1";
	rename -uid "A923CD2C-9A47-5DC6-2B40-1C85D4A3C391";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:17]";
createNode groupId -n "pasted__groupId1";
	rename -uid "E91A05F0-DB4C-E4CB-FD51-DB825BBF79E1";
	setAttr ".ihi" 0;
createNode groupId -n "pasted__groupId2";
	rename -uid "8FAFF408-C741-C562-AE72-BCB8599BABD0";
	setAttr ".ihi" 0;
createNode shadingEngine -n "pasted__lambert2SG";
	rename -uid "391E0890-0A43-49D9-A9BC-ABAA9681B2B0";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "pasted__materialInfo1";
	rename -uid "BC310C10-3F4B-FC86-EE31-43BB8AC3888C";
createNode lambert -n "pasted__bark";
	rename -uid "DC5521F4-9848-22C8-5C68-B7ADA144BE0D";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 1 1 1 ;
createNode shadingEngine -n "pasted__lambert3SG";
	rename -uid "A7FE3E5E-1C48-D126-7A7C-14A9FF741CDB";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 2 ".gn";
createNode materialInfo -n "pasted__materialInfo2";
	rename -uid "9327B8BD-AD44-F197-2C92-7BA0E77A7082";
createNode lambert -n "pasted__leaves";
	rename -uid "AD3DC033-8F45-09DD-EF42-3E87896231BD";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 1 0.33610001 0 ;
	setAttr ".ambc" -type "float3" 0.41463339 0.41463339 0.41463339 ;
createNode groupId -n "groupId8";
	rename -uid "EDB9F385-F44B-9B25-4B87-34A64FEE0C7C";
	setAttr ".ihi" 0;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "978DCA7D-5A40-79FF-E130-65AE1BB9C555";
	setAttr -s 6 ".lnk";
	setAttr -s 6 ".slnk";
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
	setAttr -s 6 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 8 ".s";
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
connectAttr "pasted__polySplitRing8.out" "pasted__polySurface1ShapeOrig.i";
connectAttr "groupParts10.og" "polySurfaceShape3.i";
connectAttr "groupId8.id" "polySurfaceShape3.iog.og[0].gid";
connectAttr "pasted__lambert3SG.mwc" "polySurfaceShape3.iog.og[0].gco";
connectAttr "groupId10.id" "polySurfaceShape3.iog.og[2].gid";
connectAttr "pasted__tweakSet1.mwc" "polySurfaceShape3.iog.og[2].gco";
connectAttr "pasted__tweak1.og[0]" "pasted__polySurface1Shape.i";
connectAttr "pasted__groupId1.id" "pasted__polySurface1Shape.iog.og[0].gid";
connectAttr "pasted__lambert2SG.mwc" "pasted__polySurface1Shape.iog.og[0].gco";
connectAttr "pasted__groupId2.id" "pasted__polySurface1Shape.iog.og[1].gid";
connectAttr "pasted__lambert3SG.mwc" "pasted__polySurface1Shape.iog.og[1].gco";
connectAttr "pasted__groupId4.id" "pasted__polySurface1Shape.iog.og[7].gid";
connectAttr "pasted__tweakSet1.mwc" "pasted__polySurface1Shape.iog.og[7].gco";
connectAttr "pasted__tweak1.vl[0].vt[0]" "pasted__polySurface1Shape.twl";
connectAttr "groupParts8.og" "groupParts10.ig";
connectAttr "groupId10.id" "groupParts10.gi";
connectAttr "polySeparate1.out[1]" "groupParts8.ig";
connectAttr "groupId8.id" "groupParts8.gi";
connectAttr "pasted__polySurface1Shape.o" "polySeparate1.ip";
connectAttr "pasted__groupParts4.og" "pasted__tweak1.ip[0].ig";
connectAttr "pasted__groupId4.id" "pasted__tweak1.ip[0].gi";
connectAttr "pasted__groupId4.msg" "pasted__tweakSet1.gn" -na;
connectAttr "groupId10.msg" "pasted__tweakSet1.gn" -na;
connectAttr "pasted__polySurface1Shape.iog.og[7]" "pasted__tweakSet1.dsm" -na;
connectAttr "polySurfaceShape3.iog.og[2]" "pasted__tweakSet1.dsm" -na;
connectAttr "pasted__tweak1.msg" "pasted__tweakSet1.ub[0]";
connectAttr "pasted__polySurface1ShapeOrig.w" "pasted__groupParts4.ig";
connectAttr "pasted__groupId4.id" "pasted__groupParts4.gi";
connectAttr "pasted__polySplitRing7.out" "pasted__polySplitRing8.ip";
connectAttr "pasted__polySurface1Shape.wm" "pasted__polySplitRing8.mp";
connectAttr "pasted__polySplitRing6.out" "pasted__polySplitRing7.ip";
connectAttr "pasted__polySurface1Shape.wm" "pasted__polySplitRing7.mp";
connectAttr "pasted__polySplitRing5.out" "pasted__polySplitRing6.ip";
connectAttr "pasted__polySurface1Shape.wm" "pasted__polySplitRing6.mp";
connectAttr "pasted__polySplitRing4.out" "pasted__polySplitRing5.ip";
connectAttr "pasted__polySurface1Shape.wm" "pasted__polySplitRing5.mp";
connectAttr "pasted__polySplitRing3.out" "pasted__polySplitRing4.ip";
connectAttr "pasted__polySurface1Shape.wm" "pasted__polySplitRing4.mp";
connectAttr "pasted__polySplitRing2.out" "pasted__polySplitRing3.ip";
connectAttr "pasted__polySurface1Shape.wm" "pasted__polySplitRing3.mp";
connectAttr "pasted__polySplitRing1.out" "pasted__polySplitRing2.ip";
connectAttr "pasted__polySurface1Shape.wm" "pasted__polySplitRing2.mp";
connectAttr "pasted__groupParts2.og" "pasted__polySplitRing1.ip";
connectAttr "pasted__polySurface1Shape.wm" "pasted__polySplitRing1.mp";
connectAttr "pasted__groupParts1.og" "pasted__groupParts2.ig";
connectAttr "pasted__groupId2.id" "pasted__groupParts2.gi";
connectAttr "pasted__polySurfaceShape1.o" "pasted__groupParts1.ig";
connectAttr "pasted__groupId1.id" "pasted__groupParts1.gi";
connectAttr "pasted__bark.oc" "pasted__lambert2SG.ss";
connectAttr "pasted__polySurface1Shape.iog.og[0]" "pasted__lambert2SG.dsm" -na;
connectAttr "pasted__groupId1.msg" "pasted__lambert2SG.gn" -na;
connectAttr "pasted__lambert2SG.msg" "pasted__materialInfo1.sg";
connectAttr "pasted__bark.msg" "pasted__materialInfo1.m";
connectAttr "pasted__leaves.oc" "pasted__lambert3SG.ss";
connectAttr "pasted__polySurface1Shape.iog.og[1]" "pasted__lambert3SG.dsm" -na;
connectAttr "polySurfaceShape3.iog.og[0]" "pasted__lambert3SG.dsm" -na;
connectAttr "pasted__groupId2.msg" "pasted__lambert3SG.gn" -na;
connectAttr "groupId8.msg" "pasted__lambert3SG.gn" -na;
connectAttr "pasted__lambert3SG.msg" "pasted__materialInfo2.sg";
connectAttr "pasted__leaves.msg" "pasted__materialInfo2.m";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__lambert3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__lambert3SG.message" ":defaultLightSet.message";
connectAttr "pasted__lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "pasted__lambert3SG.pa" ":renderPartition.st" -na;
connectAttr "pasted__bark.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__leaves.msg" ":defaultShaderList1.s" -na;
// End of tree2_seed.ma
