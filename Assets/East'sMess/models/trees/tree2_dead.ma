//Maya ASCII 2016 scene
//Name: tree2_dead.ma
//Last modified: Tue, Nov 07, 2017 12:53:34 PM
//Codeset: UTF-8
requires maya "2016";
requires "stereoCamera" "10.0";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2016";
fileInfo "version" "2016";
fileInfo "cutIdentifier" "201502261600-953408";
fileInfo "osv" "Mac OS X 10.9.6";
fileInfo "license" "student";
createNode transform -n "group12";
	rename -uid "7EC3CC0D-B846-5B53-12F1-9990B8AA56C3";
	setAttr ".t" -type "double3" -2.6840620094673824 0 0 ;
	setAttr ".rp" -type "double3" 9.0785555839538574 5.8770972230419041 -7.1312248706817627 ;
	setAttr ".sp" -type "double3" 9.0785555839538574 5.8770972230419041 -7.1312248706817627 ;
createNode transform -n "pasted__group3" -p "group12";
	rename -uid "D35DA910-D148-D0A2-246D-B1B9E38713A1";
	setAttr ".rp" -type "double3" -7.9664492607116699 9.9383148319867214 8.0076255798339844 ;
	setAttr ".sp" -type "double3" -7.9664492607116699 9.9383148319867214 8.0076255798339844 ;
createNode transform -n "pasted__pasted__polySurface1" -p "|group12|pasted__group3";
	rename -uid "8C2A000C-1844-53BE-C6D6-99872579B1EF";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" -1.7881393432617188e-07 11.353415489196777 -1.1920928955078125e-07 ;
	setAttr ".sp" -type "double3" -1.7881393432617188e-07 11.353415489196777 -1.1920928955078125e-07 ;
createNode mesh -n "pasted__pasted__polySurfaceShape1" -p "|group12|pasted__group3|pasted__pasted__polySurface1";
	rename -uid "2F255EFC-AA48-8724-01C1-C198E853651F";
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
	setAttr -s 40 ".pt[0:39]" -type "float3"  -3.7252903e-09 0 0 3.7252903e-09 
		0 0 7.4505806e-09 0 0 3.7252903e-09 0 0 -3.7252903e-09 0 0 -7.4505806e-09 0 0 0 4.7683716e-07 
		0 0 4.7683716e-07 0 0 4.7683716e-07 0 0 4.7683716e-07 0 0 4.7683716e-07 0 0 4.7683716e-07 
		0 0 0 0 0 4.7683716e-07 0 -2.9802322e-08 1.9073486e-06 0 -5.9604645e-08 1.9073486e-06 
		0 -5.9604645e-08 1.9073486e-06 0 8.9406967e-08 1.9073486e-06 0 5.9604645e-08 1.9073486e-06 
		0 5.9604645e-08 1.9073486e-06 0 -5.9604645e-08 4.7683716e-07 0 5.9604645e-08 4.7683716e-07 
		0 5.9604645e-08 4.7683716e-07 0 0 4.7683716e-07 0 0 4.7683716e-07 0 -5.9604645e-08 
		4.7683716e-07 0 -5.9604645e-08 0 0 5.9604645e-08 0 0 5.9604645e-08 0 0 0 0 0 0 0 
		0 -5.9604645e-08 0 0 -2.9802322e-08 0 0 -5.9604645e-08 0 0 -5.9604645e-08 0 0 8.9406967e-08 
		0 0 5.9604645e-08 0 0 5.9604645e-08 0 0 0 -4.7683716e-07 0 0 -4.7683716e-07 0;
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
createNode mesh -n "pasted__pasted__polySurface1ShapeOrig" -p "|group12|pasted__group3|pasted__pasted__polySurface1";
	rename -uid "414B681B-FF4D-9BB5-A019-7491344EB02F";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 88 ".pt[0:87]" -type "float3"  1.8626451e-09 0 0 -1.8626451e-09 
		0 0 -3.7252903e-09 0 0 -1.8626451e-09 0 0 1.8626451e-09 0 0 3.7252903e-09 0 0 1.8626451e-09 
		0 0 -1.8626451e-09 0 0 -3.7252903e-09 0 0 -1.8626451e-09 0 0 1.8626451e-09 0 0 3.7252903e-09 
		0 0 0 0 0 0 0 0 -1.4901161e-08 2.3841858e-07 0 -1.4901161e-08 2.3841858e-07 0 0 2.3841858e-07 
		0 0 2.3841858e-07 0 0 2.3841858e-07 0 0 2.3841858e-07 0 2.9802322e-08 4.7683716e-07 
		0 0 4.7683716e-07 0 -1.1920929e-07 4.7683716e-07 0 -5.9604645e-08 4.7683716e-07 0 
		2.9802322e-08 4.7683716e-07 0 1.1920929e-07 4.7683716e-07 0 2.9802322e-08 0 0 0 0 
		0 -1.1920929e-07 0 0 -5.9604645e-08 0 0 2.9802322e-08 0 0 1.1920929e-07 0 0 -1.4901161e-08 
		9.5367432e-07 0 -1.4901161e-08 9.5367432e-07 0 0 9.5367432e-07 0 0 9.5367432e-07 
		0 0 9.5367432e-07 0 0 9.5367432e-07 0 0 -7.1525574e-07 0 0 -4.7683716e-07 0 -1.8626451e-09 
		8.9406967e-08 0 -3.7252903e-09 8.9406967e-08 0 -1.8626451e-09 8.9406967e-08 0 1.8626451e-09 
		8.9406967e-08 0 3.7252903e-09 8.9406967e-08 0 1.8626451e-09 8.9406967e-08 0 -1.8626451e-09 
		0 0 -3.7252903e-09 0 0 -1.8626451e-09 0 0 1.8626451e-09 0 0 3.7252903e-09 0 0 1.8626451e-09 
		0 0 -3.7252903e-09 -2.3841858e-07 0 -7.4505806e-09 -2.3841858e-07 0 -3.7252903e-09 
		-2.3841858e-07 0 3.7252903e-09 -2.3841858e-07 0 7.4505806e-09 -2.3841858e-07 0 3.7252903e-09 
		-2.3841858e-07 0 -3.7252903e-09 0 0 -7.4505806e-09 0 0 -3.7252903e-09 0 0 3.7252903e-09 
		0 0 7.4505806e-09 0 0 3.7252903e-09 0 0 -3.7252903e-09 2.3841858e-07 0 -7.4505806e-09 
		2.3841858e-07 0 -3.7252903e-09 2.3841858e-07 0 3.7252903e-09 2.3841858e-07 0 7.4505806e-09 
		2.3841858e-07 0 3.7252903e-09 2.3841858e-07 0 -3.7252903e-09 4.7683716e-07 0 -7.4505806e-09 
		4.7683716e-07 0 -3.7252903e-09 4.7683716e-07 0 3.7252903e-09 4.7683716e-07 0 7.4505806e-09 
		4.7683716e-07 0 3.7252903e-09 4.7683716e-07 0 -3.7252903e-09 -7.1525574e-07 0 -7.4505806e-09 
		-7.1525574e-07 0 -3.7252903e-09 -7.1525574e-07 0 3.7252903e-09 -7.1525574e-07 0 7.4505806e-09 
		-7.1525574e-07 0 3.7252903e-09 -7.1525574e-07 0 -3.7252903e-09 2.3841858e-07 0 -7.4505806e-09 
		2.3841858e-07 0 -3.7252903e-09 2.3841858e-07 0 3.7252903e-09 2.3841858e-07 0 7.4505806e-09 
		2.3841858e-07 0 3.7252903e-09 2.3841858e-07 0;
createNode transform -n "polySurface10" -p "|group12|pasted__group3|pasted__pasted__polySurface1";
	rename -uid "580F09D2-9249-75AC-3884-A6A1583DBC2C";
	setAttr ".t" -type "double3" -2.3159379905326176 -5.1405369188404944 -5 ;
createNode mesh -n "polySurfaceShape10" -p "polySurface10";
	rename -uid "3C6B4C98-9148-C8D4-31DA-C68D950E61A8";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 62 ".pt[0:61]" -type "float3"  -0.049330711 0 0.0854434 
		0.04933108 0 0.0854434 0.098661542 0 1.4701704e-08 0.04933108 0 -0.0854434 -0.049330711 
		0 -0.0854434 -0.098661542 0 0 -0.038524356 0 0.066726305 0.03852471 0 0.066726305 
		0.077048913 0 1.4701703e-08 0.03852471 0 -0.06672629 -0.038524356 0 -0.06672629 -0.077048898 
		0 0 0 0 0 -4.2396476e-08 0 0 0.04933108 0 -0.0854434 0.098661542 0 1.4701704e-08 
		0.04933108 0 0.0854434 -0.049330711 0 0.0854434 -0.098661542 0 0 -0.049330711 0 -0.0854434 
		0.04933108 0 -0.0854434 0.098661542 0 1.4701704e-08 0.04933108 0 0.0854434 -0.049330711 
		0 0.0854434 -0.098661542 0 0 -0.049330711 0 -0.0854434 0.04933108 0 -0.0854434 0.098661542 
		0 1.4701704e-08 0.04933108 0 0.0854434 -0.049330711 0 0.0854434 -0.098661542 0 0 
		-0.049330711 0 -0.0854434 0.04933108 0 -0.085443385 0.098661542 0 1.4701704e-08 0.04933108 
		0 0.085443385 -0.049330711 0 0.085443385 -0.098661542 0 0 -0.049330711 0 -0.085443385 
		0.04933108 0 -0.085443385 0.098661542 0 1.4701704e-08 0.04933108 0 0.085443385 -0.049330711 
		0 0.085443385 -0.098661542 0 0 -0.049330711 0 -0.085443385 0.04933108 0 -0.0854434 
		0.098661542 0 1.4701703e-08 0.04933108 0 0.0854434 -0.049330711 0 0.0854434 -0.098661542 
		0 0 -0.049330711 0 -0.0854434 0.047014698 0 -0.081431329 0.094028763 0 1.4701703e-08 
		0.047014698 0 0.081431329 -0.047014311 0 0.081431329 -0.094028763 0 0 -0.047014311 
		0 -0.081431329 0.041615497 0 -0.072079644 0.083230443 0 1.4701703e-08 0.041615497 
		0 0.072079659 -0.041615203 0 0.072079659 -0.083230443 0 0 -0.041615203 0 -0.072079644;
createNode transform -n "transform10" -p "|group12|pasted__group3|pasted__pasted__polySurface1";
	rename -uid "42D328AB-1C49-A527-9E84-46AAAF715257";
	setAttr ".v" no;
createNode mesh -n "pasted__pasted__polySurface1Shape" -p "transform10";
	rename -uid "5B2B7264-F74C-65D4-F036-0B978FDBCD9A";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.15625 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
createNode joint -n "joint1";
	rename -uid "2C526BEB-C441-D8CE-CE49-1E92BC4A2DF8";
	setAttr ".t" -type "double3" -5 -0.076573046406226197 -5 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 89.999999999999986 0.69945908143522717 89.999999999999986 ;
	setAttr ".radi" 0.55020912614356088;
createNode joint -n "joint2" -p "joint1";
	rename -uid "556E764A-4D46-FCE6-5BD2-9D9A0E4E4EB5";
	setAttr ".t" -type "double3" 1.9707097721088433 5.7245874707234634e-16 -4.3758547276980631e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 3.6390892632475523e-14 2.2068948402101407 ;
	setAttr ".radi" 0.55730174193378312;
createNode joint -n "joint3" -p "joint2";
	rename -uid "7D402BD3-3043-3125-4220-B5BE8060BD35";
	setAttr ".t" -type "double3" 2.1078336773864739 8.8817841970012523e-16 9.3574223789230712e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -6.7143876456395659e-16 -5.1038179298422467e-14 1.5074357587748821 ;
	setAttr ".radi" 0.54865968270374221;
createNode joint -n "joint4" -p "joint3";
	rename -uid "10DBD7F3-EE42-71E1-4E31-FC93D0822519";
	setAttr ".t" -type "double3" 1.9407538656056831 5.6560077701549772e-16 8.6186785069028232e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 -5.0324044791451516e-14 1.5481576989780728 ;
	setAttr ".radi" 0.55443465218238219;
createNode joint -n "joint5" -p "joint4";
	rename -uid "689851BE-984D-94B5-8EEE-A89A9FE27D5F";
	setAttr ".t" -type "double3" 2.0524032755260562 6.1547988927657116e-15 -1.799295861858422e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -88.451842301021955 -89.999999999999972 0 ;
	setAttr ".radi" 0.55443465218238219;
createNode groupParts -n "groupParts38";
	rename -uid "D1EA01F8-BE49-35A7-F315-21847FDC7523";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 62 "vtx[0]" "vtx[1]" "vtx[2]" "vtx[3]" "vtx[4]" "vtx[5]" "vtx[6]" "vtx[7]" "vtx[8]" "vtx[9]" "vtx[10]" "vtx[11]" "vtx[12]" "vtx[13]" "vtx[14]" "vtx[15]" "vtx[16]" "vtx[17]" "vtx[18]" "vtx[19]" "vtx[20]" "vtx[21]" "vtx[22]" "vtx[23]" "vtx[24]" "vtx[25]" "vtx[26]" "vtx[27]" "vtx[28]" "vtx[29]" "vtx[30]" "vtx[31]" "vtx[32]" "vtx[33]" "vtx[34]" "vtx[35]" "vtx[36]" "vtx[37]" "vtx[38]" "vtx[39]" "vtx[40]" "vtx[41]" "vtx[42]" "vtx[43]" "vtx[44]" "vtx[45]" "vtx[46]" "vtx[47]" "vtx[48]" "vtx[49]" "vtx[50]" "vtx[51]" "vtx[52]" "vtx[53]" "vtx[54]" "vtx[55]" "vtx[56]" "vtx[57]" "vtx[58]" "vtx[59]" "vtx[60]" "vtx[61]";
createNode groupParts -n "groupParts37";
	rename -uid "7459472A-414A-D75E-983A-0584E651E16F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 66 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]" "f[12]" "f[13]" "f[14]" "f[15]" "f[16]" "f[17]" "f[18]" "f[19]" "f[20]" "f[21]" "f[22]" "f[23]" "f[24]" "f[25]" "f[26]" "f[27]" "f[28]" "f[29]" "f[30]" "f[31]" "f[32]" "f[33]" "f[34]" "f[35]" "f[36]" "f[37]" "f[38]" "f[39]" "f[40]" "f[41]" "f[42]" "f[43]" "f[44]" "f[45]" "f[46]" "f[47]" "f[48]" "f[49]" "f[50]" "f[51]" "f[52]" "f[53]" "f[54]" "f[55]" "f[56]" "f[57]" "f[58]" "f[59]" "f[60]" "f[61]" "f[62]" "f[63]" "f[64]" "f[65]";
createNode polySeparate -n "polySeparate3";
	rename -uid "D32823E9-9C4F-68F4-82AB-A99725292D60";
	setAttr ".ic" 2;
createNode tweak -n "pasted__pasted__tweak7";
	rename -uid "103D8E0D-4F49-6C50-037B-ED88CC402456";
	setAttr -s 88 ".vl[0].vt[0:87]" -type "float3"  -2.3841858e-07 3.0857048 
		0 -4.7683716e-07 3.0857048 0 2.3841858e-07 3.0857048 0 -4.7683716e-07 3.0857048 0 
		-2.3841858e-07 3.0857048 0 -2.3841858e-07 3.0857048 0 -0.020321639 -4.7683716e-07 
		0.035197597 0.020320937 -4.7683716e-07 0.035197597 0.04064291 -4.7683716e-07 0 0.020320937 
		-4.7683716e-07 -0.035197608 -0.020321639 -4.7683716e-07 -0.035197608 -0.040642917 
		-4.7683716e-07 0 0 3.0857048 0 7.9726611e-08 -5.364418e-07 0 -0.29486123 1.1920929e-07 
		0.51071441 0.29486141 1.1920929e-07 0.51071447 0.58972228 1.1920929e-07 0 0.29486132 
		1.1920929e-07 -0.51071465 -0.2948612 1.1920929e-07 -0.51071465 -0.58972275 1.1920929e-07 
		0 -0.63218474 3.5762787e-07 1.0949748 0.63218379 3.5762787e-07 1.0949749 1.2643681 
		3.5762787e-07 5.6765046e-08 0.63218457 3.5762787e-07 -1.0949749 -0.63218415 3.5762787e-07 
		-1.0949749 -1.2643684 3.5762787e-07 0 -0.63218474 -1.1920929e-07 1.0949748 0.63218379 
		-1.1920929e-07 1.0949749 1.2643681 -1.1920929e-07 5.6765046e-08 0.63218457 -1.1920929e-07 
		-1.0949749 -0.63218415 -1.1920929e-07 -1.0949749 -1.2643684 -1.1920929e-07 0 -0.29486123 
		3.5762787e-07 0.51071441 0.29486141 3.5762787e-07 0.51071447 0.58972228 3.5762787e-07 
		0 0.29486132 3.5762787e-07 -0.51071465 -0.2948612 3.5762787e-07 -0.51071465 -0.58972275 
		3.5762787e-07 0 6.9075249e-08 5.9604645e-08 0 6.9075249e-08 5.364418e-07 0 -4.7683716e-07 
		3.0161324 0 2.3841858e-07 3.0161324 0 -4.7683716e-07 3.0161324 0 -2.3841858e-07 3.0161324 
		0 -2.3841858e-07 3.0161324 0 -2.3841858e-07 3.0161324 0 -4.7683716e-07 2.144908 0 
		2.3841858e-07 2.144908 0 -4.7683716e-07 2.144908 0 -2.3841858e-07 2.144908 0 -2.3841858e-07 
		2.144908 0 -2.3841858e-07 2.144908 0 -4.7683716e-07 0.88875675 0 2.3841858e-07 0.88875675 
		0 -4.7683716e-07 0.88875675 0 -2.3841858e-07 0.88875675 0 -2.3841858e-07 0.88875675 
		0 -2.3841858e-07 0.88875675 0 -4.7683716e-07 0.08215484 0 2.3841858e-07 0.08215484 
		0 -4.7683716e-07 0.08215484 0 -2.3841858e-07 0.08215484 0 -2.3841858e-07 0.08215484 
		0 -2.3841858e-07 0.08215484 0 -4.7683716e-07 1.1920929e-07 0 2.3841858e-07 1.1920929e-07 
		0 -4.7683716e-07 1.1920929e-07 0 -2.3841858e-07 1.1920929e-07 0 -2.3841858e-07 1.1920929e-07 
		0 -2.3841858e-07 1.1920929e-07 0 -4.7683716e-07 2.3841858e-07 0 2.3841858e-07 2.3841858e-07 
		0 -4.7683716e-07 2.3841858e-07 0 -2.3841858e-07 2.3841858e-07 0 -2.3841858e-07 2.3841858e-07 
		0 -2.3841858e-07 2.3841858e-07 0 0.0043555 -2.3841858e-07 -0.0075447652 0.0087121604 
		-2.3841858e-07 0 0.0043555 -2.3841858e-07 0.0075447643 -0.0043562162 -2.3841858e-07 
		0.0075447643 -0.0087121604 -2.3841858e-07 0 -0.0043562162 -2.3841858e-07 -0.0075447652 
		0.014508745 -6.8545341e-07 -0.025130585 0.029018424 -6.8545341e-07 0 0.014508745 
		-6.8545341e-07 0.025130566 -0.014509285 -6.8545341e-07 0.025130566 -0.029018424 -6.8545341e-07 
		0 -0.014509285 -6.8545341e-07 -0.025130585;
createNode objectSet -n "pasted__pasted__tweakSet7";
	rename -uid "4CB4C76E-C74C-F0CD-FEA0-09A00EEEB7AC";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".vo" yes;
	setAttr -s 2 ".gn";
createNode groupId -n "pasted__pasted__groupId63";
	rename -uid "E0AD9DA6-A74B-0A11-4824-88A01822670B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId38";
	rename -uid "CA917658-2244-2CE2-E7E2-FCB9FAAD1159";
	setAttr ".ihi" 0;
createNode groupParts -n "pasted__pasted__groupParts63";
	rename -uid "893F0CEA-7B4D-ED30-4168-ABB5745CAE86";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode polySplitRing -n "pasted__pasted__polySplitRing56";
	rename -uid "53419C61-4245-34C5-17C3-9B89D725A97C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[156:157]" "e[159]" "e[161]" "e[163]" "e[165]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.64538180828094482;
	setAttr ".re" 156;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "pasted__pasted__polySplitRing55";
	rename -uid "DC5A8E55-4844-2386-6522-AD8960E47781";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[144:145]" "e[147]" "e[149]" "e[151]" "e[153]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.38973343372344971;
	setAttr ".re" 144;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "pasted__pasted__polySplitRing54";
	rename -uid "D7E9CF31-7D40-E2FB-BC21-6F95B5182879";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[132:133]" "e[135]" "e[137]" "e[139]" "e[141]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.31439617276191711;
	setAttr ".re" 132;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "pasted__pasted__polySplitRing53";
	rename -uid "F89C0F21-9B48-D2A5-425B-8E9E6AD5218E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[120:121]" "e[123]" "e[125]" "e[127]" "e[129]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.23594433069229126;
	setAttr ".re" 120;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "pasted__pasted__polySplitRing52";
	rename -uid "2B808BC3-9D48-B098-3A4E-279047E3531D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[108:109]" "e[111]" "e[113]" "e[115]" "e[117]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.18606995046138763;
	setAttr ".re" 108;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "pasted__pasted__polySplitRing51";
	rename -uid "10D8313E-664D-DBFA-EE7E-E28D34D9D92C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[96:97]" "e[99]" "e[101]" "e[103]" "e[105]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.16217997670173645;
	setAttr ".re" 96;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "pasted__pasted__polySplitRing50";
	rename -uid "5C9E2CAE-824A-EFB8-D70E-099FA0007A5C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[84:85]" "e[87]" "e[89]" "e[91]" "e[93]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.16052569448947906;
	setAttr ".re" 84;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "pasted__pasted__polySplitRing49";
	rename -uid "14ECD979-3C4C-967B-7A52-C09CF9DCED7D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[12:17]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.11920327693223953;
	setAttr ".re" 15;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode groupParts -n "pasted__pasted__groupParts62";
	rename -uid "AFD6C9C6-8E43-9FBB-F0A8-138381EB5868";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[18:47]";
createNode groupParts -n "pasted__pasted__groupParts61";
	rename -uid "4A1F9CA5-C54F-8ED3-CCB1-1E9D2B387FB6";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:17]";
createNode groupId -n "pasted__pasted__groupId61";
	rename -uid "8417A90D-0B4A-1320-83FF-7A8576DA0C68";
	setAttr ".ihi" 0;
createNode groupId -n "pasted__pasted__groupId62";
	rename -uid "C01D643D-9B47-AC1F-7418-FEB9ECE920E2";
	setAttr ".ihi" 0;
createNode shadingEngine -n "pasted__pasted__lambert2SG7";
	rename -uid "EE1FD317-934B-3DE2-866E-008B375DF16C";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 2 ".gn";
createNode materialInfo -n "pasted__pasted__materialInfo15";
	rename -uid "080B3C50-CB4F-6DD9-2E32-46A4D53A4C52";
createNode lambert -n "pasted__pasted__bark7";
	rename -uid "D2FE12DC-AE4D-D59B-9CB9-3FB10994A883";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 1 1 1 ;
createNode shadingEngine -n "pasted__pasted__lambert3SG7";
	rename -uid "7DEF64D5-E343-34B2-60CF-4E9A1615F6A4";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "pasted__pasted__materialInfo16";
	rename -uid "56ABA9AB-7E41-F4C8-26A7-A4830C6A01F5";
createNode lambert -n "pasted__pasted__leaves7";
	rename -uid "DA3C8104-1F49-1ACB-E877-FAA90CC1B895";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 1 0.33610001 0 ;
	setAttr ".ambc" -type "float3" 0.41463339 0.41463339 0.41463339 ;
createNode groupId -n "groupId37";
	rename -uid "A83ED9FC-3A44-3754-812D-31BDD482AB6B";
	setAttr ".ihi" 0;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "9D7A156B-7D48-62A7-82D1-F2BFEA4F847A";
	setAttr -s 42 ".lnk";
	setAttr -s 42 ".slnk";
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
	setAttr -s 42 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 44 ".s";
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
connectAttr "pasted__pasted__polySplitRing56.out" "|group12|pasted__group3|pasted__pasted__polySurface1|pasted__pasted__polySurface1ShapeOrig.i"
		;
connectAttr "groupParts38.og" "polySurfaceShape10.i";
connectAttr "groupId37.id" "polySurfaceShape10.iog.og[0].gid";
connectAttr "pasted__pasted__lambert2SG7.mwc" "polySurfaceShape10.iog.og[0].gco"
		;
connectAttr "groupId38.id" "polySurfaceShape10.iog.og[1].gid";
connectAttr "pasted__pasted__tweakSet7.mwc" "polySurfaceShape10.iog.og[1].gco";
connectAttr "pasted__pasted__tweak7.og[0]" "|group12|pasted__group3|pasted__pasted__polySurface1|transform10|pasted__pasted__polySurface1Shape.i"
		;
connectAttr "pasted__pasted__groupId61.id" "|group12|pasted__group3|pasted__pasted__polySurface1|transform10|pasted__pasted__polySurface1Shape.iog.og[0].gid"
		;
connectAttr "pasted__pasted__lambert2SG7.mwc" "|group12|pasted__group3|pasted__pasted__polySurface1|transform10|pasted__pasted__polySurface1Shape.iog.og[0].gco"
		;
connectAttr "pasted__pasted__groupId62.id" "|group12|pasted__group3|pasted__pasted__polySurface1|transform10|pasted__pasted__polySurface1Shape.iog.og[1].gid"
		;
connectAttr "pasted__pasted__lambert3SG7.mwc" "|group12|pasted__group3|pasted__pasted__polySurface1|transform10|pasted__pasted__polySurface1Shape.iog.og[1].gco"
		;
connectAttr "pasted__pasted__groupId63.id" "|group12|pasted__group3|pasted__pasted__polySurface1|transform10|pasted__pasted__polySurface1Shape.iog.og[7].gid"
		;
connectAttr "pasted__pasted__tweakSet7.mwc" "|group12|pasted__group3|pasted__pasted__polySurface1|transform10|pasted__pasted__polySurface1Shape.iog.og[7].gco"
		;
connectAttr "pasted__pasted__tweak7.vl[0].vt[0]" "|group12|pasted__group3|pasted__pasted__polySurface1|transform10|pasted__pasted__polySurface1Shape.twl"
		;
connectAttr "joint1.s" "joint2.is";
connectAttr "joint2.s" "joint3.is";
connectAttr "joint3.s" "joint4.is";
connectAttr "joint4.s" "joint5.is";
connectAttr "groupParts37.og" "groupParts38.ig";
connectAttr "groupId38.id" "groupParts38.gi";
connectAttr "polySeparate3.out[0]" "groupParts37.ig";
connectAttr "groupId37.id" "groupParts37.gi";
connectAttr "|group12|pasted__group3|pasted__pasted__polySurface1|transform10|pasted__pasted__polySurface1Shape.o" "polySeparate3.ip"
		;
connectAttr "pasted__pasted__groupParts63.og" "pasted__pasted__tweak7.ip[0].ig";
connectAttr "pasted__pasted__groupId63.id" "pasted__pasted__tweak7.ip[0].gi";
connectAttr "pasted__pasted__groupId63.msg" "pasted__pasted__tweakSet7.gn" -na;
connectAttr "groupId38.msg" "pasted__pasted__tweakSet7.gn" -na;
connectAttr "|group12|pasted__group3|pasted__pasted__polySurface1|transform10|pasted__pasted__polySurface1Shape.iog.og[7]" "pasted__pasted__tweakSet7.dsm"
		 -na;
connectAttr "polySurfaceShape10.iog.og[1]" "pasted__pasted__tweakSet7.dsm" -na;
connectAttr "pasted__pasted__tweak7.msg" "pasted__pasted__tweakSet7.ub[0]";
connectAttr "|group12|pasted__group3|pasted__pasted__polySurface1|pasted__pasted__polySurface1ShapeOrig.w" "pasted__pasted__groupParts63.ig"
		;
connectAttr "pasted__pasted__groupId63.id" "pasted__pasted__groupParts63.gi";
connectAttr "pasted__pasted__polySplitRing55.out" "pasted__pasted__polySplitRing56.ip"
		;
connectAttr "|group12|pasted__group3|pasted__pasted__polySurface1|transform10|pasted__pasted__polySurface1Shape.wm" "pasted__pasted__polySplitRing56.mp"
		;
connectAttr "pasted__pasted__polySplitRing54.out" "pasted__pasted__polySplitRing55.ip"
		;
connectAttr "|group12|pasted__group3|pasted__pasted__polySurface1|transform10|pasted__pasted__polySurface1Shape.wm" "pasted__pasted__polySplitRing55.mp"
		;
connectAttr "pasted__pasted__polySplitRing53.out" "pasted__pasted__polySplitRing54.ip"
		;
connectAttr "|group12|pasted__group3|pasted__pasted__polySurface1|transform10|pasted__pasted__polySurface1Shape.wm" "pasted__pasted__polySplitRing54.mp"
		;
connectAttr "pasted__pasted__polySplitRing52.out" "pasted__pasted__polySplitRing53.ip"
		;
connectAttr "|group12|pasted__group3|pasted__pasted__polySurface1|transform10|pasted__pasted__polySurface1Shape.wm" "pasted__pasted__polySplitRing53.mp"
		;
connectAttr "pasted__pasted__polySplitRing51.out" "pasted__pasted__polySplitRing52.ip"
		;
connectAttr "|group12|pasted__group3|pasted__pasted__polySurface1|transform10|pasted__pasted__polySurface1Shape.wm" "pasted__pasted__polySplitRing52.mp"
		;
connectAttr "pasted__pasted__polySplitRing50.out" "pasted__pasted__polySplitRing51.ip"
		;
connectAttr "|group12|pasted__group3|pasted__pasted__polySurface1|transform10|pasted__pasted__polySurface1Shape.wm" "pasted__pasted__polySplitRing51.mp"
		;
connectAttr "pasted__pasted__polySplitRing49.out" "pasted__pasted__polySplitRing50.ip"
		;
connectAttr "|group12|pasted__group3|pasted__pasted__polySurface1|transform10|pasted__pasted__polySurface1Shape.wm" "pasted__pasted__polySplitRing50.mp"
		;
connectAttr "pasted__pasted__groupParts62.og" "pasted__pasted__polySplitRing49.ip"
		;
connectAttr "|group12|pasted__group3|pasted__pasted__polySurface1|transform10|pasted__pasted__polySurface1Shape.wm" "pasted__pasted__polySplitRing49.mp"
		;
connectAttr "pasted__pasted__groupParts61.og" "pasted__pasted__groupParts62.ig";
connectAttr "pasted__pasted__groupId62.id" "pasted__pasted__groupParts62.gi";
connectAttr "|group12|pasted__group3|pasted__pasted__polySurface1|pasted__pasted__polySurfaceShape1.o" "pasted__pasted__groupParts61.ig"
		;
connectAttr "pasted__pasted__groupId61.id" "pasted__pasted__groupParts61.gi";
connectAttr "pasted__pasted__bark7.oc" "pasted__pasted__lambert2SG7.ss";
connectAttr "|group12|pasted__group3|pasted__pasted__polySurface1|transform10|pasted__pasted__polySurface1Shape.iog.og[0]" "pasted__pasted__lambert2SG7.dsm"
		 -na;
connectAttr "polySurfaceShape10.iog.og[0]" "pasted__pasted__lambert2SG7.dsm" -na
		;
connectAttr "pasted__pasted__groupId61.msg" "pasted__pasted__lambert2SG7.gn" -na
		;
connectAttr "groupId37.msg" "pasted__pasted__lambert2SG7.gn" -na;
connectAttr "pasted__pasted__lambert2SG7.msg" "pasted__pasted__materialInfo15.sg"
		;
connectAttr "pasted__pasted__bark7.msg" "pasted__pasted__materialInfo15.m";
connectAttr "pasted__pasted__leaves7.oc" "pasted__pasted__lambert3SG7.ss";
connectAttr "|group12|pasted__group3|pasted__pasted__polySurface1|transform10|pasted__pasted__polySurface1Shape.iog.og[1]" "pasted__pasted__lambert3SG7.dsm"
		 -na;
connectAttr "pasted__pasted__groupId62.msg" "pasted__pasted__lambert3SG7.gn" -na
		;
connectAttr "pasted__pasted__lambert3SG7.msg" "pasted__pasted__materialInfo16.sg"
		;
connectAttr "pasted__pasted__leaves7.msg" "pasted__pasted__materialInfo16.m";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__pasted__lambert2SG7.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__pasted__lambert3SG7.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__pasted__lambert2SG7.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__pasted__lambert3SG7.message" ":defaultLightSet.message";
connectAttr "pasted__pasted__lambert2SG7.pa" ":renderPartition.st" -na;
connectAttr "pasted__pasted__lambert3SG7.pa" ":renderPartition.st" -na;
connectAttr "pasted__pasted__bark7.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__pasted__leaves7.msg" ":defaultShaderList1.s" -na;
// End of tree2_dead.ma
