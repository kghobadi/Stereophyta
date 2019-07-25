//Maya ASCII 2018 scene
//Name: MC_Cloak.ma
//Last modified: Mon, Apr 09, 2018 03:04:54 PM
//Codeset: UTF-8
requires maya "2018";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2018";
fileInfo "version" "2018";
fileInfo "cutIdentifier" "201706261615-f9658c4cfc";
fileInfo "osv" "Mac OS X 10.12.6";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "FAFCAA31-FC44-FBEA-56DF-D29D6D689804";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.055373389137761304 2.1834151628298271 1.2654773203849092 ;
	setAttr ".r" -type "double3" 318.86164726980331 -722.59999999995284 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "60E4F9D6-5148-1D8E-466C-2CB05A969F7C";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 1.6208140675950726;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -2.9802322387695312e-08 1.117114782333374 0.046061258763074875 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "C1D9F6DA-EE40-649E-42C8-FCA178F8E4DC";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "72849A5A-9C43-0D1D-D965-04B630067499";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "A4519E51-8C47-49E6-1C29-B39525FAD511";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.039953151766669137 1.096874475479126 1000.1013642210239 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "8A16C394-D943-A290-4A7A-6988EDBA5F7A";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 999.87295905833184;
	setAttr ".ow" 0.62490353499873097;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".tp" -type "double3" -0.039953151766669137 1.096874475479126 0.22840516269207001 ;
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "C123BEEA-8749-E379-6EDA-FA9C7A3C3723";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "CC8FABFD-2B4E-AB4C-95D0-968BDB642BDC";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "pCone1";
	rename -uid "FEAC7480-B840-D6A4-7CBD-81AD2258801E";
	setAttr ".t" -type "double3" 0 1.02 0 ;
createNode transform -n "transform2" -p "pCone1";
	rename -uid "FBB2BCD5-DF4C-E87F-15BE-A68EBDCBA0F7";
	setAttr ".v" no;
createNode mesh -n "pConeShape1" -p "transform2";
	rename -uid "A69BF112-E74F-0B8D-42F9-0CBC8871DD75";
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
createNode transform -n "pCone2";
	rename -uid "864AD637-2343-149A-17C7-959E540E6380";
	setAttr ".t" -type "double3" 0 0.95000000000000007 0 ;
createNode transform -n "transform1" -p "pCone2";
	rename -uid "CE446552-0E43-AA41-77B1-AC84C25E329A";
	setAttr ".v" no;
createNode mesh -n "pConeShape2" -p "transform1";
	rename -uid "51C0F777-E74C-E78A-A85F-F792F49E1388";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:41]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 82 ".uvst[0].uvsp[0:81]" -type "float2" 0.7377643 0.1727457
		 0.70225441 0.1030536 0.64694643 0.04774563 0.5772543 0.012235746 0.5 -1.1920929e-07
		 0.4227457 0.012235761 0.35305363 0.047745675 0.2977457 0.10305364 0.26223582 0.17274573
		 0.24999994 0.25 0.26223582 0.32725427 0.2977457 0.39694634 0.35305366 0.4522543 0.42274573
		 0.48776418 0.5 0.5 0.57725424 0.48776415 0.64694631 0.45225427 0.70225424 0.39694631
		 0.73776412 0.32725424 0.75 0.25 0.53089637 0.75 0.5571909 0.75 0.56545436 0.75 0.50705463
		 0.75 0.49044147 0.75 0.48268321 0.75 0.48453912 0.75 0.49338555 0.75 0.49044666 0.75
		 0.4914678 0.75 0.49634898 0.75 0.50461239 0.75 0.51544923 0.75 0.52779865 0.75 0.53454757
		 0.75 0.54187614 0.75 0.54999995 0.75 0.55812377 0.75 0.56545234 0.75 0.57033551 0.74999994
		 0.74999982 0.5 0.63422376 0.73155218 0.62080145 0.73155218 0.25 0.5 0.27500001 0.5
		 0.36577609 0.73155218 0.30000001 0.5 0.37919849 0.73155218 0.32500002 0.5 0.39262089
		 0.73155212 0.35000002 0.5 0.40604332 0.73155218 0.37500003 0.5 0.41946569 0.73155224
		 0.39999995 0.5 0.43288806 0.73155224 0.42500004 0.5 0.44631046 0.73155218 0.45000005
		 0.5 0.45973286 0.73155212 0.47500005 0.5 0.47315526 0.73155218 0.50000006 0.5 0.48657763
		 0.73155218 0.52500004 0.5 0.5 0.73155218 0.55000001 0.5 0.51342243 0.73155218 0.57499999
		 0.5 0.52684474 0.73155218 0.59999996 0.5 0.54026717 0.73155224 0.62499994 0.5 0.55368954
		 0.73155212 0.64999992 0.5 0.56711197 0.73155218 0.67499989 0.5 0.58053428 0.73155218
		 0.69999987 0.5 0.59395671 0.73155218 0.72499985 0.5 0.60737896 0.73155224;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 60 ".vt[0:59]"  0.95105714 -1 -0.30901718 0.80901754 -1 -0.5877856
		 0.5877856 -1 -0.80901748 0.30901715 -1 -0.95105702 0 -1 -1.000000476837 -0.30901715 -1 -0.95105696
		 -0.58778548 -1 -0.8090173 -0.80901724 -1 -0.58778542 -0.95105678 -1 -0.30901706 -1.000000238419 -1 0
		 -0.95105678 -1 0.30901706 -0.80901718 -1 0.58778536 -0.58778536 -1 0.80901712 -0.30901706 -1 0.95105666
		 -2.9802322e-08 -1 1.000000119209 0.30901697 -1 0.9510566 0.58778524 -1 0.80901706
		 0.809017 -1 0.5877853 0.95105654 -1 0.309017 1 -1 0 0.1188944 0.5 -0.038631264 0.29039899 0.38931328 -0.094356343
		 0.30534339 0.38931325 0 0.12501287 0.5 -1.23178e-07 0.10113768 0.5 -0.0734808 0.24702814 0.38931328 -0.17947644
		 0.073480822 0.5 -0.10113765 0.17947644 0.38931328 -0.24702813 0.038631164 0.5 -0.11889442
		 0.094356336 0.38931325 -0.29039896 1.1759062e-08 0.5 -0.12501299 0 0.38931325 -0.30534351
		 -0.038631119 0.5 -0.11889441 -0.094356336 0.38931325 -0.29039893 -0.073480748 0.5 -0.10113763
		 -0.1794764 0.38931325 -0.24702807 -0.10113758 0.5 -0.073480777 -0.24702805 0.38931325 -0.17947638
		 -0.11889436 0.5 -0.03863113 -0.2903989 0.38931325 -0.094356313 -0.12501292 0.5 4.1629078e-16
		 -0.30534345 0.38931325 0 -0.11889436 0.5 0.038631111 -0.2903989 0.38931325 0.094356313
		 -0.10113759 0.5 0.073480733 -0.24702804 0.38931325 0.17947637 -0.073480755 0.5 0.10113756
		 -0.17947637 0.38931325 0.24702802 -0.038631123 0.5 0.11889433 -0.094356313 0.38931325 0.29039884
		 -2.0140876e-08 0.5 0.12501289 -9.0999421e-09 0.38931325 0.30534342 0.038631085 0.5 0.11889432
		 0.094356284 0.38931325 0.29039884 0.07348071 0.5 0.10113755 0.17947634 0.38931325 0.24702801
		 0.10113753 0.5 0.073480733 0.24702798 0.38931325 0.17947635 0.1188943 0.5 0.038631108
		 0.29039881 0.38931325 0.094356298;
	setAttr -s 100 ".ed[0:99]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 0 0 20 21 1 21 25 0 25 24 1 24 20 0 20 23 0 23 22 1 22 21 0 23 58 0 58 59 1
		 59 22 0 25 27 0 27 26 1 26 24 0 27 29 0 29 28 1 28 26 0 29 31 0 31 30 1 30 28 0 31 33 0
		 33 32 1 32 30 0 33 35 0 35 34 1 34 32 0 35 37 0 37 36 1 36 34 0 37 39 0 39 38 1 38 36 0
		 39 41 0 41 40 1 40 38 0 41 43 0 43 42 1 42 40 0 43 45 0 45 44 1 44 42 0 45 47 0 47 46 1
		 46 44 0 47 49 0 49 48 1 48 46 0 49 51 0 51 50 1 50 48 0 51 53 0 53 52 1 52 50 0 53 55 0
		 55 54 1 54 52 0 55 57 0 57 56 1 56 54 0 57 59 0 58 56 0 0 21 1 22 19 1 1 25 1 2 27 1
		 3 29 1 4 31 1 5 33 1 6 35 1 7 37 1 8 39 1 9 41 1 10 43 1 11 45 1 12 47 1 13 49 1
		 14 51 1 15 53 1 16 55 1 17 57 1 18 59 1;
	setAttr -s 42 -ch 200 ".fc[0:41]" -type "polyFaces" 
		f 20 -20 -19 -18 -17 -16 -15 -14 -13 -12 -11 -10 -9 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 20 0 19 18 17 16 15 14 13 12 11 10 9 8 7 6 5 4 3 2 1
		f 4 20 21 22 23
		mu 0 4 20 45 47 23
		f 4 -21 24 25 26
		mu 0 4 45 20 21 42
		f 4 -26 27 28 29
		mu 0 4 42 21 22 81
		f 4 -23 30 31 32
		mu 0 4 23 47 49 24
		f 4 -32 33 34 35
		mu 0 4 24 49 51 25
		f 4 -35 36 37 38
		mu 0 4 25 51 53 26
		f 4 -38 39 40 41
		mu 0 4 26 53 55 27
		f 4 -41 42 43 44
		mu 0 4 27 55 57 28
		f 4 -44 45 46 47
		mu 0 4 28 57 59 29
		f 4 -47 48 49 50
		mu 0 4 29 59 61 30
		f 4 -50 51 52 53
		mu 0 4 30 61 63 31
		f 4 -53 54 55 56
		mu 0 4 31 63 65 32
		f 4 -56 57 58 59
		mu 0 4 32 65 67 33
		f 4 -59 60 61 62
		mu 0 4 33 67 69 34
		f 4 -62 63 64 65
		mu 0 4 34 69 71 35
		f 4 -65 66 67 68
		mu 0 4 35 71 73 36
		f 4 -68 69 70 71
		mu 0 4 36 73 75 37
		f 4 -71 72 73 74
		mu 0 4 37 75 77 38
		f 4 -74 75 76 77
		mu 0 4 38 77 79 39
		f 4 -77 78 -29 79
		mu 0 4 39 79 81 22
		f 20 -25 -24 -33 -36 -39 -42 -45 -48 -51 -54 -57 -60 -63 -66 -69 -72 -75 -78 -80 -28
		mu 0 20 21 20 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 22
		f 4 19 80 -27 81
		mu 0 4 80 40 41 42
		f 4 0 82 -22 -81
		mu 0 4 43 44 47 45
		f 4 1 83 -31 -83
		mu 0 4 44 46 49 47
		f 4 2 84 -34 -84
		mu 0 4 46 48 51 49
		f 4 3 85 -37 -85
		mu 0 4 48 50 53 51
		f 4 4 86 -40 -86
		mu 0 4 50 52 55 53
		f 4 5 87 -43 -87
		mu 0 4 52 54 57 55
		f 4 6 88 -46 -88
		mu 0 4 54 56 59 57
		f 4 7 89 -49 -89
		mu 0 4 56 58 61 59
		f 4 8 90 -52 -90
		mu 0 4 58 60 63 61
		f 4 9 91 -55 -91
		mu 0 4 60 62 65 63
		f 4 10 92 -58 -92
		mu 0 4 62 64 67 65
		f 4 11 93 -61 -93
		mu 0 4 64 66 69 67
		f 4 12 94 -64 -94
		mu 0 4 66 68 71 69
		f 4 13 95 -67 -95
		mu 0 4 68 70 73 71
		f 4 14 96 -70 -96
		mu 0 4 70 72 75 73
		f 4 15 97 -73 -97
		mu 0 4 72 74 77 75
		f 4 16 98 -76 -98
		mu 0 4 74 76 79 77
		f 4 17 99 -79 -99
		mu 0 4 76 78 81 79
		f 4 18 -82 -30 -100
		mu 0 4 78 80 42 81;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCone3";
	rename -uid "4DA514C4-5A48-2904-5D79-A98D23F29BD4";
	setAttr ".s" -type "double3" 1 0.5 1 ;
	setAttr ".rp" -type "double3" -1.1920928955078125e-07 0.76999998092651367 -1.7881393432617188e-07 ;
	setAttr ".sp" -type "double3" -1.1920928955078125e-07 0.76999998092651367 -1.7881393432617188e-07 ;
createNode mesh -n "pCone3Shape" -p "pCone3";
	rename -uid "4E411572-A040-5722-17B5-81A3818865D7";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.55368956923484802 0.73234322667121887 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 373 ".pt";
	setAttr ".pt[3]" -type "float3" 4.6566129e-10 0 1.8626451e-09 ;
	setAttr ".pt[4]" -type "float3" -1.8189894e-12 0 1.8189894e-12 ;
	setAttr ".pt[6]" -type "float3" 9.3132257e-10 0 -3.7252903e-09 ;
	setAttr ".pt[7]" -type "float3" 0 0 3.7252903e-09 ;
	setAttr ".pt[10]" -type "float3" 4.6566129e-10 0 1.8626451e-09 ;
	setAttr ".pt[14]" -type "float3" 0 0 3.7252903e-09 ;
	setAttr ".pt[15]" -type "float3" 0 0 2.7939677e-09 ;
	setAttr ".pt[17]" -type "float3" 4.6566129e-10 0 9.3132257e-10 ;
	setAttr ".pt[18]" -type "float3" 0 0 -2.910383e-11 ;
	setAttr ".pt[19]" -type "float3" 1.8626451e-09 0 0 ;
	setAttr ".pt[21]" -type "float3" 4.6566129e-10 0 9.3132257e-10 ;
	setAttr ".pt[22]" -type "float3" -7.2759576e-12 0 0 ;
	setAttr ".pt[23]" -type "float3" 1.8626451e-09 0 -1.8626451e-09 ;
	setAttr ".pt[24]" -type "float3" 5.8207661e-11 0 2.3283064e-10 ;
	setAttr ".pt[25]" -type "float3" -0.020044582 0 0.029098609 ;
	setAttr ".pt[27]" -type "float3" -4.6566129e-10 0 0 ;
	setAttr ".pt[28]" -type "float3" -5.8207661e-11 0 5.8207661e-11 ;
	setAttr ".pt[29]" -type "float3" -0.019980157 0 0.02900508 ;
	setAttr ".pt[32]" -type "float3" -1.1641532e-10 0 -2.3283064e-10 ;
	setAttr ".pt[33]" -type "float3" -0.076756686 0 0.047647275 ;
	setAttr ".pt[35]" -type "float3" -4.6566129e-10 0 -1.8626451e-09 ;
	setAttr ".pt[36]" -type "float3" 5.8207661e-11 0 5.8207661e-11 ;
	setAttr ".pt[37]" -type "float3" -0.078619562 0 0.047647275 ;
	setAttr ".pt[39]" -type "float3" 0 0 -4.6566129e-10 ;
	setAttr ".pt[40]" -type "float3" -9.3132257e-10 0 0 ;
	setAttr ".pt[41]" -type "float3" 1.8626451e-09 0 3.7252903e-09 ;
	setAttr ".pt[42]" -type "float3" -9.3132257e-10 0 -9.3132257e-10 ;
	setAttr ".pt[43]" -type "float3" 9.3132257e-10 0 9.3132257e-10 ;
	setAttr ".pt[44]" -type "float3" -9.3132257e-10 0 -1.8626451e-09 ;
	setAttr ".pt[45]" -type "float3" 0 0 9.3132257e-10 ;
	setAttr ".pt[46]" -type "float3" -1.8626451e-09 0 0 ;
	setAttr ".pt[47]" -type "float3" 9.3132257e-10 0 -1.8626451e-09 ;
	setAttr ".pt[48]" -type "float3" -9.3132257e-10 0 -9.3132257e-10 ;
	setAttr ".pt[49]" -type "float3" 0 0 -1.8626451e-09 ;
	setAttr ".pt[50]" -type "float3" 0 0.15999998 5.5879354e-09 ;
	setAttr ".pt[51]" -type "float3" 9.3132257e-10 0 9.3132257e-10 ;
	setAttr ".pt[52]" -type "float3" 0 0 -9.3132257e-10 ;
	setAttr ".pt[53]" -type "float3" -1.8626451e-09 0.15999998 -1.8626451e-09 ;
	setAttr ".pt[54]" -type "float3" 1.8626451e-09 0.15999998 1.8626451e-09 ;
	setAttr ".pt[55]" -type "float3" 0 0 9.3132257e-10 ;
	setAttr ".pt[56]" -type "float3" -9.3132257e-10 0 -9.3132257e-10 ;
	setAttr ".pt[57]" -type "float3" 1.8626451e-09 0.15999998 -1.8626451e-09 ;
	setAttr ".pt[58]" -type "float3" -1.1641532e-10 0 3.4924597e-10 ;
	setAttr ".pt[59]" -type "float3" 0 -0.29999998 -1.8626451e-09 ;
	setAttr ".pt[61]" -type "float3" -9.3132257e-10 0 9.3132257e-10 ;
	setAttr ".pt[62]" -type "float3" 9.3132257e-10 0 0 ;
	setAttr ".pt[63]" -type "float3" 0 0 3.7252903e-09 ;
	setAttr ".pt[64]" -type "float3" 0 0.15999998 -3.7252903e-09 ;
	setAttr ".pt[65]" -type "float3" -1.8626451e-09 0.15999998 0 ;
	setAttr ".pt[66]" -type "float3" 5.8207661e-11 0 -5.8207661e-11 ;
	setAttr ".pt[67]" -type "float3" 1.8626451e-09 -0.29999998 -1.8626451e-09 ;
	setAttr ".pt[69]" -type "float3" 4.6566129e-10 0 -4.6566129e-10 ;
	setAttr ".pt[70]" -type "float3" 0 0.15999998 -3.7252903e-09 ;
	setAttr ".pt[71]" -type "float3" -1.8626451e-09 0.15999998 -1.8626451e-09 ;
	setAttr ".pt[72]" -type "float3" -9.3132257e-10 0 0 ;
	setAttr ".pt[73]" -type "float3" 1.8626451e-09 0 1.8626451e-09 ;
	setAttr ".pt[74]" -type "float3" 0 0.15999998 -3.7252903e-09 ;
	setAttr ".pt[75]" -type "float3" -1.8626451e-09 0.15999998 -3.7252903e-09 ;
	setAttr ".pt[76]" -type "float3" 0 0 -3.7252903e-09 ;
	setAttr ".pt[77]" -type "float3" 1.8626451e-09 0 9.3132257e-10 ;
	setAttr ".pt[79]" -type "float3" 0 0 -9.3132257e-10 ;
	setAttr ".pt[80]" -type "float3" -2.910383e-11 0 5.8207661e-11 ;
	setAttr ".pt[81]" -type "float3" 0.07097543 0 0.056156006 ;
	setAttr ".pt[83]" -type "float3" 0 0 -1.8626451e-09 ;
	setAttr ".pt[84]" -type "float3" 0 0 -5.8207661e-11 ;
	setAttr ".pt[85]" -type "float3" 0.072838359 0 0.056156006 ;
	setAttr ".pt[86]" -type "float3" 0 0.15999998 -5.5879354e-09 ;
	setAttr ".pt[87]" -type "float3" 9.3132257e-10 0.15999998 -1.8626451e-09 ;
	setAttr ".pt[88]" -type "float3" -0.0066064536 0 0.0095905522 ;
	setAttr ".pt[89]" -type "float3" -9.3132257e-10 0 2.7939677e-09 ;
	setAttr ".pt[91]" -type "float3" -9.3132257e-10 0 -1.8626451e-09 ;
	setAttr ".pt[93]" -type "float3" 0.016513919 0 0.034294963 ;
	setAttr ".pt[94]" -type "float3" 0 0.15999998 -5.5879354e-09 ;
	setAttr ".pt[95]" -type "float3" 1.8626451e-09 0.15999998 1.8626451e-09 ;
	setAttr ".pt[96]" -type "float3" -1.8626451e-09 0 -3.7252903e-09 ;
	setAttr ".pt[97]" -type "float3" -1.8626451e-09 0 1.8626451e-09 ;
	setAttr ".pt[99]" -type "float3" -9.3132257e-10 0 -1.8626451e-09 ;
	setAttr ".pt[101]" -type "float3" 0.016460842 0 0.034184717 ;
	setAttr ".pt[102]" -type "float3" -9.3132257e-10 0 -1.8626451e-09 ;
	setAttr ".pt[103]" -type "float3" 0.005442779 0 0.011303178 ;
	setAttr ".pt[104]" -type "float3" -9.3132257e-10 0.15999998 1.8626451e-09 ;
	setAttr ".pt[105]" -type "float3" 0 0.15999998 3.7252903e-09 ;
	setAttr ".pt[106]" -type "float3" 1.8626451e-09 0 -3.7252903e-09 ;
	setAttr ".pt[107]" -type "float3" -9.3132257e-10 0 0 ;
	setAttr ".pt[108]" -type "float3" 1.8626451e-09 0.15999998 1.8626451e-09 ;
	setAttr ".pt[109]" -type "float3" -1.8626451e-09 0.15999998 -1.8626451e-09 ;
	setAttr ".pt[110]" -type "float3" 9.3132257e-10 0.15999998 1.8626451e-09 ;
	setAttr ".pt[111]" -type "float3" 1.8626451e-09 0.15999998 -1.8626451e-09 ;
	setAttr ".pt[120]" -type "float3" 1.8626451e-09 0 1.8626451e-09 ;
	setAttr ".pt[121]" -type "float3" 0 0 1.8626451e-09 ;
	setAttr ".pt[122]" -type "float3" 0 0 -1.8626451e-09 ;
	setAttr ".pt[123]" -type "float3" 0 0.054475307 1.8626451e-09 ;
	setAttr ".pt[124]" -type "float3" 0 0.063894063 3.7252903e-09 ;
	setAttr ".pt[125]" -type "float3" 1.8626451e-09 0.065014809 1.8626451e-09 ;
	setAttr ".pt[126]" -type "float3" 9.3132257e-10 0.065014809 3.7252903e-09 ;
	setAttr ".pt[127]" -type "float3" -9.3132257e-10 0.065014809 -1.8626451e-09 ;
	setAttr ".pt[128]" -type "float3" 9.3132257e-10 0.065014809 0 ;
	setAttr ".pt[129]" -type "float3" 1.8626451e-09 0.065014809 3.7252903e-09 ;
	setAttr ".pt[130]" -type "float3" 1.8626451e-09 0.065014809 0 ;
	setAttr ".pt[131]" -type "float3" 0 0.065014809 -1.8626451e-09 ;
	setAttr ".pt[132]" -type "float3" -9.3132257e-10 0.065014809 0 ;
	setAttr ".pt[133]" -type "float3" 9.3132257e-10 0.065014809 3.7252903e-09 ;
	setAttr ".pt[134]" -type "float3" 1.8626451e-09 0.065014809 0 ;
	setAttr ".pt[135]" -type "float3" 9.3132257e-10 0.065014809 -5.5879354e-09 ;
	setAttr ".pt[136]" -type "float3" 9.3132257e-10 0.065014809 1.8626451e-09 ;
	setAttr ".pt[137]" -type "float3" 1.8626451e-09 0.065014809 0 ;
	setAttr ".pt[138]" -type "float3" 1.8626451e-09 0.063894063 -1.8626451e-09 ;
	setAttr ".pt[139]" -type "float3" 0 0.054475307 1.8626451e-09 ;
	setAttr ".pt[140]" -type "float3" -9.3132257e-10 0 -1.8626451e-09 ;
	setAttr ".pt[141]" -type "float3" -9.3132257e-10 0 9.3132257e-10 ;
	setAttr ".pt[142]" -type "float3" 9.3132257e-10 0 3.7252903e-09 ;
	setAttr ".pt[143]" -type "float3" 0 0 1.8626451e-09 ;
	setAttr ".pt[144]" -type "float3" 0 0 -5.5879354e-09 ;
	setAttr ".pt[145]" -type "float3" 1.8626451e-09 0.00048355103 -5.5879354e-09 ;
	setAttr ".pt[146]" -type "float3" 9.3132257e-10 0.00048355103 -3.7252903e-09 ;
	setAttr ".pt[147]" -type "float3" -1.8626451e-09 0.00048355103 0 ;
	setAttr ".pt[148]" -type "float3" -9.3132257e-10 0.00048355103 1.8626451e-09 ;
	setAttr ".pt[149]" -type "float3" 0 0.00048355103 0 ;
	setAttr ".pt[150]" -type "float3" 9.3132257e-10 0.00048355103 1.8626451e-09 ;
	setAttr ".pt[151]" -type "float3" 0 0.00048355103 9.3132257e-10 ;
	setAttr ".pt[152]" -type "float3" -9.3132257e-10 0.00048355103 -2.7939677e-09 ;
	setAttr ".pt[153]" -type "float3" 0 0.00048355103 0 ;
	setAttr ".pt[154]" -type "float3" 1.8626451e-09 0.00048355103 0 ;
	setAttr ".pt[155]" -type "float3" -9.3132257e-10 0.00048355103 -1.8626451e-09 ;
	setAttr ".pt[156]" -type "float3" -9.3132257e-10 0.00048355103 -1.8626451e-09 ;
	setAttr ".pt[157]" -type "float3" 0 0.00048355103 -7.4505806e-09 ;
	setAttr ".pt[158]" -type "float3" -9.3132257e-10 0 1.8626451e-09 ;
	setAttr ".pt[159]" -type "float3" 1.8626451e-09 0 1.8626451e-09 ;
	setAttr ".pt[160]" -type "float3" 0.0021018283 0 0.0043649347 ;
	setAttr ".pt[161]" -type "float3" -0.0025511982 0 0.0037035618 ;
	setAttr ".pt[162]" -type "float3" 1.8626451e-09 0 -3.7252903e-09 ;
	setAttr ".pt[163]" -type "float3" 9.3132257e-10 0 -3.7252903e-09 ;
	setAttr ".pt[164]" -type "float3" -9.3132257e-10 0 3.7252903e-09 ;
	setAttr ".pt[165]" -type "float3" 1.8626451e-09 0 1.8626451e-09 ;
	setAttr ".pt[167]" -type "float3" -9.3132257e-10 0 0 ;
	setAttr ".pt[168]" -type "float3" 0 0 9.3132257e-10 ;
	setAttr ".pt[169]" -type "float3" -9.3132257e-10 0 0 ;
	setAttr ".pt[170]" -type "float3" 9.3132257e-10 0 -1.8626451e-09 ;
	setAttr ".pt[171]" -type "float3" 0 0 9.3132257e-10 ;
	setAttr ".pt[172]" -type "float3" 0 0 2.7939677e-09 ;
	setAttr ".pt[173]" -type "float3" 9.3132257e-10 0 0 ;
	setAttr ".pt[174]" -type "float3" 0 0 -2.7939677e-09 ;
	setAttr ".pt[175]" -type "float3" -9.3132257e-10 0 -1.8626451e-09 ;
	setAttr ".pt[176]" -type "float3" 0 0 -3.7252903e-09 ;
	setAttr ".pt[177]" -type "float3" 0.012303356 0 0.025550755 ;
	setAttr ".pt[178]" -type "float3" 0.030073682 0 0.056156006 ;
	setAttr ".pt[179]" -type "float3" -0.035855003 0 0.047647275 ;
	setAttr ".pt[180]" -type "float3" -0.014933808 0 0.021679329 ;
	setAttr ".pt[181]" -type "float3" 0 0 -3.7252903e-09 ;
	setAttr ".pt[182]" -type "float3" -1.8626451e-09 0 5.5879354e-09 ;
	setAttr ".pt[183]" -type "float3" 9.3132257e-10 0 -1.8626451e-09 ;
	setAttr ".pt[184]" -type "float3" 9.3132257e-10 0 1.8626451e-09 ;
	setAttr ".pt[185]" -type "float3" 9.3132257e-10 0 -1.8626451e-09 ;
	setAttr ".pt[187]" -type "float3" 0 0 1.8626451e-09 ;
	setAttr ".pt[188]" -type "float3" -9.3132257e-10 0 -9.3132257e-10 ;
	setAttr ".pt[189]" -type "float3" 0 0 -1.8626451e-09 ;
	setAttr ".pt[190]" -type "float3" 9.3132257e-10 0 0 ;
	setAttr ".pt[191]" -type "float3" 9.3132257e-10 0 9.3132257e-10 ;
	setAttr ".pt[192]" -type "float3" 9.3132257e-10 0 -9.3132257e-10 ;
	setAttr ".pt[193]" -type "float3" -9.3132257e-10 0 9.3132257e-10 ;
	setAttr ".pt[194]" -type "float3" -9.3132257e-10 0 -9.3132257e-10 ;
	setAttr ".pt[195]" -type "float3" -9.3132257e-10 0 3.7252903e-09 ;
	setAttr ".pt[196]" -type "float3" 0.018829975 0 0.039104775 ;
	setAttr ".pt[197]" -type "float3" -0.022855818 0 0.033179663 ;
	setAttr ".pt[198]" -type "float3" 0 0 -3.7252903e-09 ;
	setAttr ".pt[199]" -type "float3" 0 0 -1.8626451e-09 ;
	setAttr ".pt[200]" -type "float3" 9.3132257e-10 0 3.7252903e-09 ;
	setAttr ".pt[201]" -type "float3" -1.8626451e-09 0 -1.8626451e-09 ;
	setAttr ".pt[202]" -type "float3" -9.3132257e-10 0 9.3132257e-10 ;
	setAttr ".pt[203]" -type "float3" -9.3132257e-10 0 -1.8626451e-09 ;
	setAttr ".pt[204]" -type "float3" 9.3132257e-10 0 -9.3132257e-10 ;
	setAttr ".pt[205]" -type "float3" 9.3132257e-10 0 9.3132257e-10 ;
	setAttr ".pt[206]" -type "float3" 0 0 -1.8626451e-09 ;
	setAttr ".pt[208]" -type "float3" 0 0 9.3132257e-10 ;
	setAttr ".pt[209]" -type "float3" 0 0 9.3132257e-10 ;
	setAttr ".pt[210]" -type "float3" 0 0 9.3132257e-10 ;
	setAttr ".pt[211]" -type "float3" 0 0 9.3132257e-10 ;
	setAttr ".pt[212]" -type "float3" -9.3132257e-10 0 1.8626451e-09 ;
	setAttr ".pt[213]" -type "float3" 0 0 -9.3132257e-10 ;
	setAttr ".pt[214]" -type "float3" 9.3132257e-10 0 0 ;
	setAttr ".pt[215]" -type "float3" -4.6566129e-10 0 -9.3132257e-10 ;
	setAttr ".pt[216]" -type "float3" 0 0 -4.6566129e-10 ;
	setAttr ".pt[217]" -type "float3" -2.3283064e-10 0 0 ;
	setAttr ".pt[218]" -type "float3" 1.1641532e-10 0 1.1641532e-10 ;
	setAttr ".pt[219]" -type "float3" 5.8207661e-11 0 1.1641532e-10 ;
	setAttr ".pt[230]" -type "float3" 1.1641532e-10 0 1.1641532e-10 ;
	setAttr ".pt[231]" -type "float3" -2.3283064e-10 0 2.3283064e-10 ;
	setAttr ".pt[232]" -type "float3" 4.6566129e-10 0 4.6566129e-10 ;
	setAttr ".pt[233]" -type "float3" -1.8626451e-09 0 -1.8626451e-09 ;
	setAttr ".pt[234]" -type "float3" 1.8626451e-09 0 1.8626451e-09 ;
	setAttr ".pt[235]" -type "float3" -1.8626451e-09 0 -3.7252903e-09 ;
	setAttr ".pt[236]" -type "float3" -9.3132257e-10 0 -1.8626451e-09 ;
	setAttr ".pt[237]" -type "float3" 0 0 -9.3132257e-10 ;
	setAttr ".pt[238]" -type "float3" 0 0 -1.8626451e-09 ;
	setAttr ".pt[239]" -type "float3" 4.6566129e-10 0 -1.3969839e-09 ;
	setAttr ".pt[240]" -type "float3" -4.6566129e-10 0 0 ;
	setAttr ".pt[241]" -type "float3" 0 0 -6.9849193e-10 ;
	setAttr ".pt[242]" -type "float3" 0 0 -2.3283064e-10 ;
	setAttr ".pt[243]" -type "float3" -1.1641532e-10 0 -2.3283064e-10 ;
	setAttr ".pt[244]" -type "float3" 0 0 -2.3283064e-10 ;
	setAttr ".pt[245]" -type "float3" 5.8207661e-11 0 2.3283064e-10 ;
	setAttr ".pt[246]" -type "float3" 1.1641532e-10 0 0 ;
	setAttr ".pt[247]" -type "float3" -1.1641532e-10 0 -2.3283064e-10 ;
	setAttr ".pt[248]" -type "float3" 0 0 2.3283064e-10 ;
	setAttr ".pt[250]" -type "float3" 4.6566129e-10 0 -2.7939677e-09 ;
	setAttr ".pt[251]" -type "float3" -9.3132257e-10 0 -9.3132257e-10 ;
	setAttr ".pt[252]" -type "float3" 0 0 5.5879354e-09 ;
	setAttr ".pt[253]" -type "float3" -0.004471147 0 -3.7252903e-09 ;
	setAttr ".pt[254]" -type "float3" 0 0 3.7252903e-09 ;
	setAttr ".pt[255]" -type "float3" 0 0 -3.7252903e-09 ;
	setAttr ".pt[256]" -type "float3" 0 0 -3.7252903e-09 ;
	setAttr ".pt[257]" -type "float3" -9.3132257e-10 0 1.8626451e-09 ;
	setAttr ".pt[258]" -type "float3" 9.3132257e-10 0 9.3132257e-10 ;
	setAttr ".pt[259]" -type "float3" 0 0 -9.3132257e-10 ;
	setAttr ".pt[260]" -type "float3" 9.3132257e-10 0 -4.6566129e-10 ;
	setAttr ".pt[261]" -type "float3" 4.6566129e-10 0 -4.6566129e-10 ;
	setAttr ".pt[262]" -type "float3" 4.6566129e-10 0 4.6566129e-10 ;
	setAttr ".pt[263]" -type "float3" 0 0 -4.6566129e-10 ;
	setAttr ".pt[264]" -type "float3" -2.3283064e-10 0 -1.3969839e-09 ;
	setAttr ".pt[265]" -type "float3" 0 0 -1.3969839e-09 ;
	setAttr ".pt[266]" -type "float3" -4.6566129e-10 0 0 ;
	setAttr ".pt[267]" -type "float3" 0 0 2.7939677e-09 ;
	setAttr ".pt[268]" -type "float3" 0 0 -1.8626451e-09 ;
	setAttr ".pt[269]" -type "float3" 9.3132257e-10 0 9.3132257e-10 ;
	setAttr ".pt[270]" -type "float3" -9.3132257e-10 0 0 ;
	setAttr ".pt[271]" -type "float3" 0.0055884672 0 1.8626451e-09 ;
	setAttr ".pt[272]" -type "float3" 0 -0.29999998 -1.8626451e-09 ;
	setAttr ".pt[273]" -type "float3" 0 0 1.8626451e-09 ;
	setAttr ".pt[274]" -type "float3" 0 0 9.3132257e-10 ;
	setAttr ".pt[275]" -type "float3" -9.3132257e-10 0 1.8626451e-09 ;
	setAttr ".pt[277]" -type "float3" -4.6566129e-10 0 0 ;
	setAttr ".pt[279]" -type "float3" 0 0 9.3132257e-10 ;
	setAttr ".pt[280]" -type "float3" 1.1641532e-10 0 1.1641532e-10 ;
	setAttr ".pt[281]" -type "float3" 5.8207661e-11 0 5.8207661e-11 ;
	setAttr ".pt[282]" -type "float3" -7.2759576e-12 0 0 ;
	setAttr ".pt[287]" -type "float3" -7.2759576e-12 0 0 ;
	setAttr ".pt[288]" -type "float3" 5.8207661e-11 0 -1.7462298e-10 ;
	setAttr ".pt[289]" -type "float3" -2.3283064e-10 0 0 ;
	setAttr ".pt[290]" -type "float3" 6.9849193e-10 0 0 ;
	setAttr ".pt[291]" -type "float3" -4.6566129e-10 0 4.6566129e-10 ;
	setAttr ".pt[292]" -type "float3" 0 0 2.7939677e-09 ;
	setAttr ".pt[293]" -type "float3" -2.3283064e-10 0 2.3283064e-10 ;
	setAttr ".pt[294]" -type "float3" 2.3283064e-10 0 0 ;
	setAttr ".pt[295]" -type "float3" 0 0 -6.9849193e-10 ;
	setAttr ".pt[296]" -type "float3" 0 0 -2.3283064e-10 ;
	setAttr ".pt[297]" -type "float3" -5.8207661e-11 0 5.8207661e-11 ;
	setAttr ".pt[298]" -type "float3" 0 0 7.2759576e-12 ;
	setAttr ".pt[311]" -type "float3" 5.8207661e-11 0 5.8207661e-11 ;
	setAttr ".pt[312]" -type "float3" 1.1641532e-10 0 1.1641532e-10 ;
	setAttr ".pt[313]" -type "float3" 0 -0.29999998 0 ;
	setAttr ".pt[314]" -type "float3" -0.017602652 0 0.0040510627 ;
	setAttr ".pt[315]" -type "float3" 1.8626451e-09 0 -1.8626451e-09 ;
	setAttr ".pt[316]" -type "float3" 0 0 -5.5879354e-09 ;
	setAttr ".pt[317]" -type "float3" 0 0 3.7252903e-09 ;
	setAttr ".pt[318]" -type "float3" 9.3132257e-10 0 -1.8626451e-09 ;
	setAttr ".pt[319]" -type "float3" 1.8626451e-09 0 -1.8626451e-09 ;
	setAttr ".pt[320]" -type "float3" 9.3132257e-10 0 -9.3132257e-10 ;
	setAttr ".pt[321]" -type "float3" 4.6566129e-10 0 0 ;
	setAttr ".pt[322]" -type "float3" 0 0 -4.6566129e-10 ;
	setAttr ".pt[323]" -type "float3" 0 0 4.6566129e-10 ;
	setAttr ".pt[324]" -type "float3" 0 0 4.6566129e-10 ;
	setAttr ".pt[325]" -type "float3" -4.6566129e-10 0 -9.3132257e-10 ;
	setAttr ".pt[326]" -type "float3" 4.6566129e-10 0 1.3969839e-09 ;
	setAttr ".pt[327]" -type "float3" 0 0 -9.3132257e-10 ;
	setAttr ".pt[328]" -type "float3" 4.6566129e-10 0 9.3132257e-10 ;
	setAttr ".pt[329]" -type "float3" 0 0 9.3132257e-10 ;
	setAttr ".pt[331]" -type "float3" 1.8626451e-09 0 -5.5879354e-09 ;
	setAttr ".pt[332]" -type "float3" 0.017538231 0 0.0047744918 ;
	setAttr ".pt[333]" -type "float3" 0 0 1.8626451e-09 ;
	setAttr ".pt[334]" -type "float3" 9.3132257e-10 0 -1.8626451e-09 ;
	setAttr ".pt[335]" -type "float3" 9.3132257e-10 0 -1.8626451e-09 ;
	setAttr ".pt[336]" -type "float3" 9.3132257e-10 0 -1.8626451e-09 ;
	setAttr ".pt[337]" -type "float3" 9.3132257e-10 0 1.8626451e-09 ;
	setAttr ".pt[338]" -type "float3" -9.3132257e-10 0 0 ;
	setAttr ".pt[339]" -type "float3" 1.8626451e-09 0 -1.8626451e-09 ;
	setAttr ".pt[340]" -type "float3" 0 0 -9.3132257e-10 ;
	setAttr ".pt[341]" -type "float3" -4.6566129e-10 0 4.6566129e-10 ;
	setAttr ".pt[342]" -type "float3" -4.6566129e-10 0 -9.3132257e-10 ;
	setAttr ".pt[343]" -type "float3" 0 0 4.6566129e-10 ;
	setAttr ".pt[345]" -type "float3" 0 0 -1.1641532e-10 ;
	setAttr ".pt[346]" -type "float3" 0 0 -1.1641532e-10 ;
	setAttr ".pt[347]" -type "float3" 0 0 -2.3283064e-10 ;
	setAttr ".pt[348]" -type "float3" 1.1641532e-10 0 -3.4924597e-10 ;
	setAttr ".pt[349]" -type "float3" -3.4924597e-10 0 -4.6566129e-10 ;
	setAttr ".pt[350]" -type "float3" -2.3283064e-10 0 2.3283064e-10 ;
	setAttr ".pt[352]" -type "float3" 9.3132257e-10 0 -1.8626451e-09 ;
	setAttr ".pt[353]" -type "float3" -9.3132257e-10 0 -4.6566129e-10 ;
	setAttr ".pt[354]" -type "float3" -9.3132257e-10 0 -9.3132257e-10 ;
	setAttr ".pt[355]" -type "float3" -9.3132257e-10 0 1.8626451e-09 ;
	setAttr ".pt[356]" -type "float3" 9.3132257e-10 0 -9.3132257e-10 ;
	setAttr ".pt[357]" -type "float3" 0 0 1.8626451e-09 ;
	setAttr ".pt[358]" -type "float3" 0 0 9.3132257e-10 ;
	setAttr ".pt[359]" -type "float3" 4.6566129e-10 0 -9.3132257e-10 ;
	setAttr ".pt[360]" -type "float3" 4.6566129e-10 0 1.3969839e-09 ;
	setAttr ".pt[361]" -type "float3" 0 0 9.3132257e-10 ;
	setAttr ".pt[362]" -type "float3" 1.1641532e-10 0 0 ;
	setAttr ".pt[363]" -type "float3" -5.8207661e-11 0 1.1641532e-10 ;
	setAttr ".pt[370]" -type "float3" -5.8207661e-11 0 -5.8207661e-11 ;
	setAttr ".pt[371]" -type "float3" -1.1641532e-10 0 -2.3283064e-10 ;
	setAttr ".pt[372]" -type "float3" 6.9849193e-10 0 0 ;
	setAttr ".pt[373]" -type "float3" 0 0 -5.8207661e-11 ;
	setAttr ".pt[382]" -type "float3" -3.6379788e-12 0 -7.2759576e-12 ;
	setAttr ".pt[383]" -type "float3" -5.8207661e-11 0 5.8207661e-11 ;
	setAttr ".pt[384]" -type "float3" 0 0 -1.1641532e-10 ;
	setAttr ".pt[385]" -type "float3" 2.3283064e-10 0 -4.6566129e-10 ;
	setAttr ".pt[386]" -type "float3" 0 0 -9.3132257e-10 ;
	setAttr ".pt[387]" -type "float3" 4.6566129e-10 0 -9.3132257e-10 ;
	setAttr ".pt[389]" -type "float3" 4.6566129e-10 0 4.6566129e-10 ;
	setAttr ".pt[390]" -type "float3" -4.6566129e-10 0 -1.8626451e-09 ;
	setAttr ".pt[391]" -type "float3" 0 0 -6.9849193e-10 ;
	setAttr ".pt[392]" -type "float3" -1.1641532e-10 0 0 ;
	setAttr ".pt[402]" -type "float3" 0 0 -5.8207661e-11 ;
	setAttr ".pt[403]" -type "float3" 0 0 -1.1641532e-10 ;
	setAttr ".pt[404]" -type "float3" -2.3283064e-10 0 0 ;
	setAttr ".pt[405]" -type "float3" 0 0 9.3132257e-10 ;
	setAttr ".pt[406]" -type "float3" -2.3283064e-10 0 4.6566129e-10 ;
	setAttr ".pt[407]" -type "float3" 2.3283064e-10 0 -4.6566129e-10 ;
	setAttr ".pt[408]" -type "float3" -5.8207661e-11 0 -1.7462298e-10 ;
	setAttr ".pt[409]" -type "float3" 3.6379788e-12 0 3.6379788e-12 ;
	setAttr ".pt[413]" -type "float3" 0 0 -7.4505806e-09 ;
	setAttr ".pt[414]" -type "float3" 0 0 -1.8626451e-09 ;
	setAttr ".pt[415]" -type "float3" -9.3132257e-10 0 -2.7939677e-09 ;
	setAttr ".pt[416]" -type "float3" -9.3132257e-10 0 1.8626451e-09 ;
	setAttr ".pt[417]" -type "float3" 0 0 -1.8626451e-09 ;
	setAttr ".pt[418]" -type "float3" 9.3132257e-10 0 1.8626451e-09 ;
	setAttr ".pt[419]" -type "float3" -9.3132257e-10 0 2.7939677e-09 ;
	setAttr ".pt[421]" -type "float3" 9.3132257e-10 0 -9.3132257e-10 ;
	setAttr ".pt[422]" -type "float3" 0 0 -9.3132257e-10 ;
	setAttr ".pt[423]" -type "float3" -9.3132257e-10 0 1.8626451e-09 ;
	setAttr ".pt[424]" -type "float3" 0 0 -5.5879354e-09 ;
	setAttr ".pt[425]" -type "float3" 9.3132257e-10 0 -1.8626451e-09 ;
	setAttr ".pt[426]" -type "float3" -1.8626451e-09 0 -3.7252903e-09 ;
	setAttr ".pt[427]" -type "float3" 1.8626451e-09 0 0 ;
	setAttr ".pt[428]" -type "float3" -0.021127742 0 0.03067103 ;
	setAttr ".pt[429]" -type "float3" 0.017406283 0 0.036148161 ;
	setAttr ".pt[430]" -type "float3" 9.3132257e-10 0 -9.3132257e-10 ;
	setAttr ".pt[431]" -type "float3" 0 0 9.3132257e-10 ;
	setAttr ".pt[432]" -type "float3" 0 0 1.8626451e-09 ;
	setAttr ".pt[433]" -type "float3" 0 0 -3.7252903e-09 ;
	setAttr ".pt[434]" -type "float3" 1.8626451e-09 0 -1.8626451e-09 ;
	setAttr ".pt[435]" -type "float3" 0 0 1.8626451e-09 ;
	setAttr ".pt[436]" -type "float3" 0 0 -3.7252903e-09 ;
	setAttr ".pt[437]" -type "float3" -9.3132257e-10 0 9.3132257e-10 ;
	setAttr ".pt[438]" -type "float3" 9.3132257e-10 0 3.7252903e-09 ;
	setAttr ".pt[439]" -type "float3" 0.051200133 -0.28758428 -3.7252903e-09 ;
	setAttr ".pt[440]" -type "float3" 0.051200137 -0.28758428 0 ;
	setAttr ".pt[441]" -type "float3" -0.051200137 -0.28758428 9.3132257e-10 ;
	setAttr ".pt[442]" -type "float3" -0.051200129 -0.28758428 0 ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "794A1E58-2547-02EA-25BD-4F8EAF32D542";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "B3B89A54-B747-5972-6F99-65BDBA61E93C";
createNode displayLayer -n "defaultLayer";
	rename -uid "B492992A-4040-90DE-0636-1D9E696E7CC6";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "A33E0DD0-5E42-45B6-DC7C-A7A77FA120B7";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "70EA3057-D945-2F1E-D75F-8E971C266AF1";
	setAttr ".g" yes;
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "E57319DA-3D49-89C3-B385-58BE19E47642";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "434C8CDB-D54C-7412-2A75-2AAE10263B42";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "36E73415-3142-B52B-A72C-539E99594D35";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n"
		+ "            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n"
		+ "            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n"
		+ "            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n"
		+ "            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n"
		+ "            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n"
		+ "            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n"
		+ "            -width 727\n            -height 479\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n"
		+ "            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n"
		+ "            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 1\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n"
		+ "            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n"
		+ "            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n"
		+ "                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n"
		+ "                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n"
		+ "                -classicMode 1\n                -valueLinesToggle 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n"
		+ "                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n"
		+ "                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n"
		+ "                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n"
		+ "                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n"
		+ "                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n"
		+ "                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n"
		+ "                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -highlightConnections 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n"
		+ "                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 727\\n    -height 479\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 727\\n    -height 479\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "3456D5B6-5547-8BF5-7286-2C8D419C97AF";
	setAttr ".b" -type "string" "playbackOptions -min 4 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polyCone -n "polyCone1";
	rename -uid "CC3EA6C5-754F-CF9C-2A29-1089A2987A52";
	setAttr ".cuv" 3;
createNode polyExtrudeVertex -n "polyChamfer1";
	rename -uid "880AF93C-A145-C217-48F4-878EF5436432";
	setAttr ".ics" -type "componentList" 1 "vtx[20]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -l on ".l";
	setAttr ".w" 0.25;
	setAttr -l on ".d";
createNode deleteComponent -n "deleteComponent3";
	rename -uid "444A4BB3-A24E-DDA1-D539-009676944E30";
	setAttr ".dc" -type "componentList" 1 "e[40:59]";
createNode polyBevel3 -n "polyBevel1";
	rename -uid "6F074667-A54D-CE6A-A8D6-BFA9A18C3663";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[40:59]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyCBoolOp -n "polyCBoolOp1";
	rename -uid "63EB3D74-D84E-9912-EFA9-DE8EB73E9C96";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
	setAttr ".op" 2;
	setAttr ".cls" 1;
	setAttr ".mg" -type "Int32Array" 2 4 -6 ;
createNode groupId -n "groupId1";
	rename -uid "F9EB444F-594F-94E3-A7C7-FD8C238C295F";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	rename -uid "520EAEB8-6046-B48E-51A4-29A0FB9794C7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:41]";
createNode groupId -n "groupId2";
	rename -uid "4D2BFB60-9941-3F1C-6BA9-A48582497506";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3";
	rename -uid "EAE9B135-8540-E1BD-5F3A-87B921CB9286";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4";
	rename -uid "EF8332F0-8747-6B18-0EE1-9E9DB3DE273A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5";
	rename -uid "2FA24E3D-0A43-3E0D-004C-81A57A81570F";
	setAttr ".ihi" 0;
createNode polySplitRing -n "polySplitRing1";
	rename -uid "D79EC4BA-844D-06F2-2B43-85B610E1CEB2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 18 "e[68]" "e[70]" "e[72]" "e[76]" "e[88]" "e[92]" "e[100]" "e[102]" "e[108]" "e[110]" "e[128]" "e[130]" "e[142]" "e[144]" "e[165:166]" "e[174:175]" "e[177]" "e[179]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.87410706281661987;
	setAttr ".dr" no;
	setAttr ".re" 175;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak1";
	rename -uid "1584E4C4-F441-4431-C41B-4F9518721CD6";
	setAttr ".uopa" yes;
	setAttr -s 40 ".tk";
	setAttr ".tk[10]" -type "float3" 0 -0.02 0 ;
	setAttr ".tk[11]" -type "float3" 0 -0.02 0 ;
	setAttr ".tk[14]" -type "float3" 0 -0.02 0 ;
	setAttr ".tk[15]" -type "float3" 0 -0.02 0 ;
	setAttr ".tk[21]" -type "float3" 0 -0.02 0 ;
	setAttr ".tk[23]" -type "float3" 0 -0.02 0 ;
	setAttr ".tk[29]" -type "float3" 0 -0.02 0 ;
	setAttr ".tk[31]" -type "float3" 0 -0.02 0 ;
	setAttr ".tk[37]" -type "float3" 0 -0.02 0 ;
	setAttr ".tk[39]" -type "float3" 0 -0.02 0 ;
	setAttr ".tk[50]" -type "float3" 0.054252699 0 0.074672446 ;
	setAttr ".tk[51]" -type "float3" 0 -0.02 0 ;
	setAttr ".tk[52]" -type "float3" 0 -0.02 0 ;
	setAttr ".tk[53]" -type "float3" 0.074672431 0 0.054252699 ;
	setAttr ".tk[54]" -type "float3" 0.028522324 0 0.087782755 ;
	setAttr ".tk[55]" -type "float3" 0 -0.02 0 ;
	setAttr ".tk[56]" -type "float3" 0 -0.02 0 ;
	setAttr ".tk[57]" -type "float3" 0.087782748 0 0.028522305 ;
	setAttr ".tk[64]" -type "float3" -2.5184875e-08 0 0.092300244 ;
	setAttr ".tk[65]" -type "float3" 0.092300229 0 -3.8506681e-08 ;
	setAttr ".tk[67]" -type "float3" 0 -0.02 0 ;
	setAttr ".tk[69]" -type "float3" 0 -0.02 0 ;
	setAttr ".tk[70]" -type "float3" -0.028522385 0 0.087782763 ;
	setAttr ".tk[71]" -type "float3" 0.087782748 0 -0.028522372 ;
	setAttr ".tk[74]" -type "float3" -0.054252781 0 0.074672461 ;
	setAttr ".tk[75]" -type "float3" 0.074672438 0 -0.05425274 ;
	setAttr ".tk[83]" -type "float3" 0 -0.02 0 ;
	setAttr ".tk[85]" -type "float3" 0 -0.02 0 ;
	setAttr ".tk[86]" -type "float3" 0.054252706 0 -0.074672475 ;
	setAttr ".tk[87]" -type "float3" -0.074672543 0 0.054252718 ;
	setAttr ".tk[94]" -type "float3" 0.028522328 0 -0.08778277 ;
	setAttr ".tk[95]" -type "float3" -0.087782785 0 0.028522409 ;
	setAttr ".tk[99]" -type "float3" 0 -0.02 0 ;
	setAttr ".tk[101]" -type "float3" 0 -0.02 0 ;
	setAttr ".tk[104]" -type "float3" -0.092300229 0 5.2438796e-08 ;
	setAttr ".tk[105]" -type "float3" -1.6323388e-09 0 -0.092300244 ;
	setAttr ".tk[108]" -type "float3" -0.087782733 0 -0.02852237 ;
	setAttr ".tk[109]" -type "float3" -0.028522335 0 -0.08778277 ;
	setAttr ".tk[110]" -type "float3" -0.074672431 0 -0.05425274 ;
	setAttr ".tk[111]" -type "float3" -0.054252706 0 -0.074672468 ;
createNode polySplitRing -n "polySplitRing2";
	rename -uid "E88B9038-094C-C08B-0ECC-45A8E136E1F4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 20 "e[70]" "e[76]" "e[92]" "e[102]" "e[110]" "e[128]" "e[142]" "e[166]" "e[175]" "e[179]" "e[219]" "e[221]" "e[223]" "e[225]" "e[227]" "e[229]" "e[231]" "e[233]" "e[235]" "e[237]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.83436030149459839;
	setAttr ".dr" no;
	setAttr ".re" 175;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing3";
	rename -uid "591E8163-6B46-9AB8-18CE-9AAD66BF5528";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 20 "e[70]" "e[76]" "e[92]" "e[102]" "e[110]" "e[128]" "e[142]" "e[166]" "e[175]" "e[179]" "e[259]" "e[261]" "e[263]" "e[265]" "e[267]" "e[269]" "e[271]" "e[273]" "e[275]" "e[277]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.78600794076919556;
	setAttr ".dr" no;
	setAttr ".re" 179;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing4";
	rename -uid "66E49FAA-B441-DB6F-674A-00B1B5DD177D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 20 "e[70]" "e[76]" "e[92]" "e[102]" "e[110]" "e[128]" "e[142]" "e[166]" "e[175]" "e[179]" "e[301]" "e[303]" "e[305]" "e[307]" "e[309]" "e[311]" "e[313]" "e[315]" "e[317]" "e[319]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.62010645866394043;
	setAttr ".re" 179;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing5";
	rename -uid "C21AE949-C648-566B-CE35-0495AEBA5AF0";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 20 "e[70]" "e[76]" "e[92]" "e[102]" "e[110]" "e[128]" "e[142]" "e[166]" "e[175]" "e[179]" "e[341]" "e[343]" "e[345]" "e[347]" "e[349]" "e[351]" "e[353]" "e[355]" "e[357]" "e[359]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.48250308632850647;
	setAttr ".re" 179;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing6";
	rename -uid "FB5E601F-1142-8FEA-A9B4-0F836FC2D866";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 20 "e[9]" "e[11]" "e[13]" "e[15]" "e[24]" "e[26]" "e[35]" "e[39]" "e[47]" "e[51]" "e[95]" "e[99]" "e[124]" "e[126]" "e[154]" "e[156]" "e[185]" "e[187]" "e[193]" "e[195]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.28267905116081238;
	setAttr ".re" 95;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing7";
	rename -uid "EB9458C9-164D-D5C8-0F4A-2F85A1482293";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 19 "e[11]" "e[15]" "e[24]" "e[39]" "e[51]" "e[99]" "e[124]" "e[154]" "e[185]" "e[193]" "e[402:403]" "e[405]" "e[407]" "e[409]" "e[417]" "e[419]" "e[421]" "e[437]" "e[439]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.49272593855857849;
	setAttr ".re" 402;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing8";
	rename -uid "60417589-4E41-8DE8-1EF5-3EA93F6AB595";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 19 "e[11]" "e[15]" "e[24]" "e[39]" "e[51]" "e[99]" "e[124]" "e[154]" "e[185]" "e[193]" "e[442:443]" "e[445]" "e[447]" "e[449]" "e[457]" "e[459]" "e[461]" "e[477]" "e[479]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.51604878902435303;
	setAttr ".dr" no;
	setAttr ".re" 443;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing9";
	rename -uid "1AF3E5AE-1047-D82A-D681-D3BFED10D844";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 19 "e[402:403]" "e[405]" "e[407]" "e[409]" "e[417]" "e[419]" "e[421]" "e[437]" "e[439]" "e[451]" "e[453]" "e[455]" "e[463]" "e[465]" "e[467]" "e[469]" "e[471]" "e[473]" "e[475]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.49745336174964905;
	setAttr ".dr" no;
	setAttr ".re" 402;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing10";
	rename -uid "7BB688B8-2C43-954F-CE8D-8E9CE32F284B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 20 "e[9]" "e[13]" "e[26]" "e[35]" "e[47]" "e[95]" "e[126]" "e[156]" "e[187]" "e[195]" "e[411]" "e[413]" "e[415]" "e[423]" "e[425]" "e[427]" "e[429]" "e[431]" "e[433]" "e[435]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.44698330760002136;
	setAttr ".re" 95;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing11";
	rename -uid "15542013-354E-E3E5-3517-BDAB23B4486D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 20 "e[1]" "e[3]" "e[5]" "e[7]" "e[17]" "e[21]" "e[30]" "e[32]" "e[42]" "e[44]" "e[80]" "e[82]" "e[117]" "e[121]" "e[137]" "e[141]" "e[189]" "e[191]" "e[197]" "e[199]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.5 0 0 0 0 1 0 0 0.38499999046325684 0 1;
	setAttr ".wt" 0.13820470869541168;
	setAttr ".re" 80;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak2";
	rename -uid "A23C7307-7F4C-E8B2-6933-23928925C8CB";
	setAttr ".uopa" yes;
	setAttr -s 320 ".tk";
	setAttr ".tk[0:165]" -type "float3"  -3.907985e-14 0.13999937 0 1.0803342e-07
		 0.13999937 0 0 -1.3411045e-07 0 0 -1.3411045e-07 0 -2.0861626e-07 0.13999937 0 5.9604645e-08
		 0.13999937 0 0 -1.3411045e-07 0 0 -1.3411045e-07 0 -1.1175871e-07 0.13999961 0 -3.907985e-14
		 0.13999961 0 0 -0.03000015 0 0 -0.03000015 0 7.4505806e-08 0.13999961 0 -4.61936e-07
		 0.13999961 0 0 -0.03000015 0 0 -0.03000015 0 -3.5762787e-07 0.13999937 0 0 -1.3411045e-07
		 0 9.5367432e-07 0.13999937 0 0 -1.3411045e-07 0 -4.991889e-07 0.13999961 0 0 -0.03000015
		 0 -2.8312206e-07 0.13999961 0 0 -0.03000015 0 2.2351742e-08 0.13999937 0 0 -1.3411045e-07
		 0 -5.5134296e-07 0.13999937 0 0 -1.3411045e-07 0 -2.4586916e-07 0.13999961 0 0 -0.03000015
		 0 -5.2154064e-07 0.13999961 0 0 -0.03000015 0 -2.1979213e-07 0.13999937 0 0 -1.3411045e-07
		 0 -3.4272671e-07 0.13999937 0 0 -1.3411045e-07 0 4.4703484e-08 0.13999961 0 0 -0.03000015
		 0 5.9604645e-07 0.13999961 0 0 -0.03000015 0 0 8.9406967e-08 0 0 8.9406967e-08 0
		 0 -1.3411045e-07 0 0 -1.3411045e-07 0 0 8.9406967e-08 0 0 -1.3411045e-07 0 0 8.9406967e-08
		 0 0 -1.3411045e-07 0 0 8.9406967e-08 0 0 8.9406967e-08 0 0.012383472 1.4901161e-07
		 0.017044401 0 -0.03000015 0 0 -0.03000015 0 0.017044397 1.4901161e-07 0.012383472
		 0.0065103765 1.4901161e-07 0.020036882 0 -0.03000015 0 0 -0.03000015 0 0.020036871
		 1.4901161e-07 0.0065103765 4.9737992e-14 0.13999937 0 0 -1.3411045e-07 0 -5.9604645e-08
		 0.13999937 0 0 -1.3411045e-07 0 0 8.9406967e-08 0 0 8.9406967e-08 0 -5.7485874e-09
		 1.4901161e-07 0.02106804 0.021068014 1.4901161e-07 -8.7893568e-09 8.8817842e-14 0.13999961
		 0 0 -0.03000015 0 -1.1920929e-07 0.13999961 0 0 -0.03000015 0 -0.006510396 1.4901161e-07
		 0.020036882 0.020036871 1.4901161e-07 -0.0065103876 0 8.9406967e-08 0 0 8.9406967e-08
		 0 -0.012383496 1.4901161e-07 0.017044401 0.017044397 1.4901161e-07 -0.012383481 0
		 8.9406967e-08 0 0 8.9406967e-08 0 2.2351742e-07 0.13999937 0 0 -1.3411045e-07 0 1.4156103e-07
		 0.13999937 0 0 -1.3411045e-07 0 4.9173832e-07 0.13999961 0 0 -0.03000015 0 1.2293458e-07
		 0.13999961 0 0 -0.03000015 0 0.012383472 1.4901161e-07 -0.017044401 -0.017044416
		 1.4901161e-07 0.012383473 0 8.9406967e-08 0 0 8.9406967e-08 0 -9.6857548e-07 0.13999937
		 0 0 -1.3411045e-07 0 -3.6507845e-07 0.13999937 0 0 -1.3411045e-07 0 0.0065103765
		 1.4901161e-07 -0.020036886 -0.020036904 1.4901161e-07 0.006510397 0 8.9406967e-08
		 0 0 8.9406967e-08 0 6.7055225e-07 0.13999961 0 0 -0.03000015 0 -1.937151e-07 0.13999961
		 0 0 -0.03000015 0 0 8.9406967e-08 0 0 8.9406967e-08 0 -0.021068014 1.4901161e-07
		 1.1886554e-08 -3.7259035e-10 1.4901161e-07 -0.02106804 0 8.9406967e-08 0 0 8.9406967e-08
		 0 -0.020036871 1.4901161e-07 -0.0065103867 -0.0065103765 1.4901161e-07 -0.020036882
		 -0.017044393 1.4901161e-07 -0.012383481 -0.012383472 1.4901161e-07 -0.017044401 -4.61936e-07
		 0.13999961 0 -1.6018748e-07 0.13999961 0 -2.0861626e-07 0.13999937 0 -1.3038516e-07
		 0.13999937 0 -6.7055225e-07 0.13999961 0 2.1606684e-07 0.13999961 0 9.8347664e-07
		 0.13999937 0 3.6507845e-07 0.13999937 0 0 -5.9604645e-08 0 0 -5.9604645e-08 0 0 -5.9604645e-08
		 0 0 -5.9604645e-08 0 0 -5.9604645e-08 0 0 -5.9604645e-08 0 0 -5.9604645e-08 0 0 -5.9604645e-08
		 0 0 -5.9604645e-08 0 0 -5.9604645e-08 0 0 -5.9604645e-08 0 0 -5.9604645e-08 0 0 -5.9604645e-08
		 0 0 -5.9604645e-08 0 0 -5.9604645e-08 0 0 -5.9604645e-08 0 0 -5.9604645e-08 0 0 -5.9604645e-08
		 0 0 -5.9604645e-08 0 0 -5.9604645e-08 0 0 -1.4901161e-07 0 0 -1.4901161e-07 0 0 -1.4901161e-07
		 0 0 -1.4901161e-07 0 0 -1.4901161e-07 0 0 -1.4901161e-07 0 0 -1.4901161e-07 0 0 -1.4901161e-07
		 0 0 -1.4901161e-07 0 0 -1.4901161e-07 0 0 -1.4901161e-07 0 0 -1.4901161e-07 0 0 -1.4901161e-07
		 0 0 -1.4901161e-07 0 0 -1.4901161e-07 0 0 -1.4901161e-07 0 0 -1.4901161e-07 0 0 -1.4901161e-07
		 0 0 -1.4901161e-07 0 0 -1.4901161e-07 0 0 8.9406967e-08 0 0 8.9406967e-08 0 0 8.9406967e-08
		 0 0 8.9406967e-08 0 0 8.9406967e-08 0 0 8.9406967e-08 0;
	setAttr ".tk[166:319]" 0 8.9406967e-08 0 0 8.9406967e-08 0 0 8.9406967e-08
		 0 0 8.9406967e-08 0 0 8.9406967e-08 0 0 8.9406967e-08 0 0 8.9406967e-08 0 0 8.9406967e-08
		 0 0 8.9406967e-08 0 0 8.9406967e-08 0 0 8.9406967e-08 0 0 8.9406967e-08 0 0 8.9406967e-08
		 0 0 8.9406967e-08 0 0 2.9802322e-08 0 0 2.9802322e-08 0 0 2.9802322e-08 0 0 2.9802322e-08
		 0 0 2.9802322e-08 0 0 2.9802322e-08 0 0 2.9802322e-08 0 0 2.9802322e-08 0 0 2.9802322e-08
		 0 0 2.9802322e-08 0 0 2.9802322e-08 0 0 2.9802322e-08 0 0 2.9802322e-08 0 0 2.9802322e-08
		 0 0 2.9802322e-08 0 0 2.9802322e-08 0 0 2.9802322e-08 0 0 2.9802322e-08 0 0 2.9802322e-08
		 0 0 2.9802322e-08 0 0 1.4947727e-07 0 0 1.4947727e-07 0 0 1.4947727e-07 0 0 1.4947727e-07
		 0 0 1.4947727e-07 0 0 1.4947727e-07 0 0 1.4947727e-07 0 0 1.4947727e-07 0 0 1.4947727e-07
		 0 0 1.4947727e-07 0 0 1.4947727e-07 0 0 1.4947727e-07 0 0 1.4947727e-07 0 0 1.4947727e-07
		 0 0 1.4947727e-07 0 0 1.4947727e-07 0 0 1.4947727e-07 0 0 1.4947727e-07 0 0 1.4947727e-07
		 0 0 1.4947727e-07 0 9.2370556e-14 0.087543607 0 4.8428774e-08 0.087543607 0 -7.4505806e-08
		 0.087543607 0 5.5879354e-07 0.087543607 0 1.937151e-07 0.087543607 0 -4.61936e-07
		 0.087543488 0 1.937151e-07 0.087543488 0 6.4820051e-07 0.087543488 0 1.4156103e-07
		 0.087543607 0 -2.9802322e-08 0.087543607 0 -3.907985e-14 0.087543607 0 5.2154064e-08
		 0.087543488 0 2.30968e-07 0.087543488 0 -6.92904e-07 0.087543488 0 1.3411045e-07
		 0.087543488 0 5.6624413e-07 0.087543488 0 -2.3841858e-07 0.087543488 0 -6.1094761e-07
		 0.087543488 0 -1.7881393e-07 0.087543607 0 1.8253922e-07 0.087543607 0 -4.4408921e-14
		 0.06051401 0 -1.4901161e-08 0.06051401 0 -6.3329935e-08 0.06051401 0 -1.4901161e-08
		 0.06051401 0 -9.6857548e-08 0.06051401 0 -6.1094761e-07 0.060513951 0 -9.6857548e-08
		 0.060513951 0 1.0430813e-07 0.060513951 0 9.6857548e-08 0.06051401 0 1.0430813e-07
		 0.06051401 0 -3.907985e-14 0.06051401 0 -5.9604645e-08 0.060513951 0 -6.3329935e-08
		 0.060513951 0 2.2351742e-07 0.060513951 0 5.0663948e-07 0.060513951 0 4.0233135e-07
		 0.060513951 0 1.3411045e-07 0.060513951 0 -4.0233135e-07 0.060513951 0 8.9406967e-08
		 0.06051401 0 1.4901161e-07 0.06051401 0 0 -5.9604645e-08 0 0 -5.9604645e-08 0 0 -5.9604645e-08
		 0 0 -5.9604645e-08 0 0 -5.9604645e-08 0 0 -5.9604645e-08 0 -1.1175871e-07 5.364418e-07
		 0 -2.2724271e-07 5.364418e-07 0 1.4901161e-07 5.364418e-07 0 -3.907985e-14 5.364418e-07
		 0 -1.8253922e-07 5.364418e-07 0 -1.8626451e-07 5.364418e-07 0 -1.6391277e-07 5.364418e-07
		 0 0 -5.9604645e-08 0 0 -5.9604645e-08 0 0 -5.9604645e-08 0 0 -5.9604645e-08 0 0 -5.9604645e-08
		 0 0 -5.9604645e-08 0 0 -5.9604645e-08 0 -6.3948846e-14 0.090859562 0 -1.7136335e-07
		 0.090859562 0 6.2584877e-07 0.090859562 0 -2.2351742e-08 0.090859562 0 4.3213367e-07
		 0.090859562 0 -2.2351742e-07 0.090859562 0 4.3213367e-07 0.090859562 0 7.4505806e-08
		 0.090859562 0 6.4820051e-07 0.090859562 0 -1.2293458e-07 0.090859562 0 -3.907985e-14
		 0.090859562 0 -2.2351742e-08 0.090859562 0 5.0663948e-07 0.090859562 0 2.6077032e-07
		 0.090859562 0 -3.8743019e-07 0.090859562 0 -1.1920929e-07 0.090859562 0 -5.0663948e-07
		 0.090859562 0 -7.4505806e-08 0.090859562 0 -5.364418e-07 0.090859562 0 2.4214387e-07
		 0.090859562 0 -3.375078e-14 0.12899828 0 -1.0803342e-07 0.12899828 0 -6.1094761e-07
		 0.12899828 0 -1.1920929e-07 0.12899828 0 1.4901161e-07 0.12899828 0 8.9406967e-08
		 0.12899816 0 1.4901161e-07 0.12899816 0 -1.1920929e-07 0.12899816 0 -5.8114529e-07
		 0.12899828 0 -1.0803342e-07 0.12899828 0 -3.907985e-14 0.12899828 0 1.5646219e-07
		 0.12899816 0 1.7136335e-07 0.12899816 0 -1.0430813e-07 0.12899816 0 3.2782555e-07
		 0.12899816 0 2.5331974e-07 0.12899816 0 4.61936e-07 0.12899816 0 3.4272671e-07 0.12899816
		 0 5.2154064e-07 0.12899828 0 1.3411045e-07 0.12899828 0;
createNode polySplitRing -n "polySplitRing12";
	rename -uid "B2ECF7A4-E54B-01F1-2B70-ECA095A8E75B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 19 "e[1]" "e[5]" "e[17]" "e[32]" "e[44]" "e[82]" "e[117]" "e[137]" "e[189]" "e[197]" "e[602:603]" "e[605]" "e[607]" "e[609]" "e[617]" "e[619]" "e[621]" "e[637]" "e[639]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.5 0 0 0 0 1 0 0 0.38499999046325684 0 1;
	setAttr ".wt" 0.26918819546699524;
	setAttr ".re" 637;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing13";
	rename -uid "4E0B6EEB-434E-2E27-E497-9C8C5811B9C8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 19 "e[1]" "e[5]" "e[17]" "e[32]" "e[44]" "e[82]" "e[117]" "e[137]" "e[189]" "e[197]" "e[642:643]" "e[645]" "e[647]" "e[649]" "e[651]" "e[653]" "e[661]" "e[663]" "e[665]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.5 0 0 0 0 1 0 0 0.38499999046325684 0 1;
	setAttr ".wt" 0.28768712282180786;
	setAttr ".re" 642;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing14";
	rename -uid "B2B85EC9-344E-1843-3056-0482C21E9ADD";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 19 "e[1]" "e[5]" "e[17]" "e[32]" "e[44]" "e[82]" "e[117]" "e[137]" "e[189]" "e[197]" "e[682:683]" "e[685]" "e[687]" "e[689]" "e[691]" "e[693]" "e[701]" "e[703]" "e[705]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.5 0 0 0 0 1 0 0 0.38499999046325684 0 1;
	setAttr ".wt" 0.61241227388381958;
	setAttr ".dr" no;
	setAttr ".re" 117;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing15";
	rename -uid "F9EEB522-3548-2D02-33FB-348721531A05";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 20 "e[1]" "e[5]" "e[17]" "e[32]" "e[44]" "e[82]" "e[117]" "e[137]" "e[189]" "e[197]" "e[733]" "e[735]" "e[737]" "e[745]" "e[747]" "e[749]" "e[751]" "e[753]" "e[755]" "e[757]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.5 0 0 0 0 1 0 0 0.38499999046325684 0 1;
	setAttr ".wt" 0.42885059118270874;
	setAttr ".re" 32;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing16";
	rename -uid "1B3D0FFA-D24E-067A-D7DA-C0B2D8F75679";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 20 "e[53]" "e[55]" "e[58]" "e[60]" "e[64]" "e[66]" "e[85]" "e[87]" "e[105]" "e[107]" "e[113]" "e[115]" "e[133]" "e[135]" "e[148]" "e[151]" "e[160]" "e[163]" "e[169]" "e[171]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.5 0 0 0 0 1 0 0 0.38499999046325684 0 1;
	setAttr ".wt" 0.48818784952163696;
	setAttr ".dr" no;
	setAttr ".re" 169;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode deleteComponent -n "deleteComponent4";
	rename -uid "D851802A-2247-D4E5-B5BF-B38A815FA61E";
	setAttr ".dc" -type "componentList" 2 "f[145:146]" "f[165:166]";
createNode deleteComponent -n "deleteComponent5";
	rename -uid "617AE4DB-0D47-2E53-71D1-DBABFF530D2E";
	setAttr ".dc" -type "componentList" 1 "f[396:397]";
createNode deleteComponent -n "deleteComponent6";
	rename -uid "4D8B5FB4-C34B-69B1-6681-05A7A5F1975C";
	setAttr ".dc" -type "componentList" 2 "f[54]" "f[59]";
createNode polyBridgeEdge -n "polyBridgeEdge1";
	rename -uid "6F71A5CD-6847-2640-B975-2E92F9CAACB7";
	setAttr ".ics" -type "componentList" 13 "e[79]" "e[120]" "e[133]" "e[150]" "e[161:162]" "e[285]" "e[287]" "e[322]" "e[324]" "e[359]" "e[361:363]" "e[828]" "e[830]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.5 0 0 0 0 1 0 0 0.38499999046325684 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 59;
	setAttr ".sv2" 201;
	setAttr ".d" 1;
	setAttr ".sd" 1;
	setAttr ".td" 1;
createNode polyMergeVert -n "polyMergeVert1";
	rename -uid "14EC440B-7C43-C9BC-3BFE-14BBDB5AF9F0";
	setAttr ".ics" -type "componentList" 2 "vtx[97]" "vtx[162]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.5 0 0 0 0 1 0 0 0.38499999046325684 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak3";
	rename -uid "C455D885-104B-4E13-09C1-0484247C2D66";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[97]" -type "float3" 1.8879813e-09 0.0071146488 0.012022272 ;
	setAttr ".tk[162]" -type "float3" -1.8879796e-09 -0.0071146488 -0.012022257 ;
createNode polyMergeVert -n "polyMergeVert2";
	rename -uid "8B088862-D442-0FC9-89BE-A3BDE799B2EC";
	setAttr ".ics" -type "componentList" 2 "vtx[88]" "vtx[162]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.5 0 0 0 0 1 0 0 0.38499999046325684 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak4";
	rename -uid "399AAB38-C64E-6A78-68F1-92A6EF0F6D12";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[88]" -type "float3" -0.0037150867 0.0071146488 0.011433847 ;
	setAttr ".tk[162]" -type "float3" 0.0037150905 -0.0071146488 -0.01143384 ;
createNode polyMergeVert -n "polyMergeVert3";
	rename -uid "40A0AADF-5944-B12A-DA3D-F2B6C98E69CA";
	setAttr ".ics" -type "componentList" 2 "vtx[180]" "vtx[433]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.5 0 0 0 0 1 0 0 0.38499999046325684 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak5";
	rename -uid "16FD4380-D04B-5D2F-E79B-2DB7EC659B5E";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[180]" -type "float3" -0.0013718382 -0.021210074 0.0042221248 ;
	setAttr ".tk[433]" -type "float3" 0.0013718456 0.021210074 -0.0042221099 ;
createNode polyMergeVert -n "polyMergeVert4";
	rename -uid "E6455E54-6C40-53C2-AE55-EB9A1756A471";
	setAttr ".ics" -type "componentList" 2 "vtx[33]" "vtx[200]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.5 0 0 0 0 1 0 0 0.38499999046325684 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak6";
	rename -uid "CA5B95DA-DF4E-8F1B-EE37-519D9FBA7CF2";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[33]" -type "float3" 0.0072250068 0.036207795 -0.022236317 ;
	setAttr ".tk[200]" -type "float3" -0.0072250143 -0.036207795 0.022236302 ;
createNode polyMergeVert -n "polyMergeVert5";
	rename -uid "8825E9F1-9548-F011-03AE-7887483F3098";
	setAttr ".ics" -type "componentList" 2 "vtx[59]" "vtx[199]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.5 0 0 0 0 1 0 0 0.38499999046325684 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak7";
	rename -uid "30D933D6-2541-DBBB-96A9-8CA1F4154FFC";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[59]" -type "float3" -1.0868515e-09 0.036207795 -0.023380637 ;
	setAttr ".tk[199]" -type "float3" 1.0868515e-09 -0.036207795 0.023380637 ;
createNode polyMergeVert -n "polyMergeVert6";
	rename -uid "068381D1-ED49-7DF7-3503-1E8DDE71ADDE";
	setAttr ".ics" -type "componentList" 2 "vtx[81]" "vtx[198]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.5 0 0 0 0 1 0 0 0.38499999046325684 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak8";
	rename -uid "688A36EF-7C43-AA6B-9778-7BB89E89D02E";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[81]" -type "float3" -0.0072250143 0.036207795 -0.022236317 ;
	setAttr ".tk[198]" -type "float3" 0.0072250143 -0.036207795 0.022236302 ;
createNode polyMergeVert -n "polyMergeVert7";
	rename -uid "C8C59454-CF42-1AC3-604C-92BE8086B6C6";
	setAttr ".ics" -type "componentList" 2 "vtx[179]" "vtx[430]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.5 0 0 0 0 1 0 0 0.38499999046325684 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak9";
	rename -uid "8759A7D6-D44A-4565-D17E-1E95CD098FBA";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[179]" -type "float3" 0.0013718456 -0.021210074 0.0042221248 ;
	setAttr ".tk[430]" -type "float3" -0.0013718456 0.021210074 -0.0042221099 ;
createNode polyMergeVert -n "polyMergeVert8";
	rename -uid "D98AEB5B-9B4B-EBAD-08F3-6AB44C6344E2";
	setAttr ".ics" -type "componentList" 2 "vtx[103]" "vtx[161]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.5 0 0 0 0 1 0 0 0.38499999046325684 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak10";
	rename -uid "366C6C46-C549-63B1-2A47-A0AA78631754";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[103]" -type "float3" 0.0037150867 0.0071146488 0.011433855 ;
	setAttr ".tk[161]" -type "float3" -0.0037150867 -0.0071146488 -0.01143384 ;
createNode polyExtrudeEdge -n "polyExtrudeEdge1";
	rename -uid "0854CFCC-DF44-D84D-1BFE-91A21D151D86";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[386]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.5 0 0 0 0 1 0 0 0.38499999046325684 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.25225416 1.0908642 0.039953124 ;
	setAttr ".rs" 982854283;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.24592620134353638 1.0908641815185547 -1.2133098081790195e-08 ;
	setAttr ".cbx" -type "double3" 0.25858211517333984 1.0908641815185547 0.079906262457370758 ;
createNode polyTweak -n "polyTweak11";
	rename -uid "3D77C57B-3D42-9905-26E3-18A2499C7C61";
	setAttr ".uopa" yes;
	setAttr -s 50 ".tk";
	setAttr ".tk[25]" -type "float3" -0.00093409698 -0.01300421 0.0088418191 ;
	setAttr ".tk[29]" -type "float3" -0.0016266704 -0.016841061 0.011450572 ;
	setAttr ".tk[33]" -type "float3" -0.0022942149 -0.072150417 0.048506234 ;
	setAttr ".tk[37]" -type "float3" -0.00012990412 -0.060847085 0.041190673 ;
	setAttr ".tk[59]" -type "float3" 0 -0.18508212 0.10103106 ;
	setAttr ".tk[67]" -type "float3" 0 -0.17508715 0.094235264 ;
	setAttr ".tk[73]" -type "float3" -0.0095042028 -0.0089713661 0.0076805353 ;
	setAttr ".tk[76]" -type "float3" -0.057670992 -0.034124963 0.035436843 ;
	setAttr ".tk[81]" -type "float3" 0.0022942147 -0.072150417 0.048506234 ;
	setAttr ".tk[85]" -type "float3" 0.00012990412 -0.060847085 0.041190673 ;
	setAttr ".tk[88]" -type "float3" -0.05440741 -0.069589086 0.067314982 ;
	setAttr ".tk[93]" -type "float3" 0.00093409698 -0.01300421 0.0088418191 ;
	setAttr ".tk[97]" -type "float3" 2.7087438e-10 -0.069589086 0.059535023 ;
	setAttr ".tk[101]" -type "float3" 0.0016266704 -0.016841061 0.011450572 ;
	setAttr ".tk[103]" -type "float3" 0.054407388 -0.069589086 0.067314982 ;
	setAttr ".tk[106]" -type "float3" 0.0095042028 -0.0089713661 0.0076805353 ;
	setAttr ".tk[107]" -type "float3" 0.057670999 -0.034124963 0.035436843 ;
	setAttr ".tk[120]" -type "float3" 0.0039482475 -0.0020616632 0.0046138102 ;
	setAttr ".tk[121]" -type "float3" -1.8243584e-10 -0.0045549083 0.0050788615 ;
	setAttr ".tk[122]" -type "float3" -0.0039482494 -0.0020616632 0.0046138102 ;
	setAttr ".tk[123]" -type "float3" -0.0046338025 0 0.0019818889 ;
	setAttr ".tk[124]" -type "float3" -0.00046317425 0 0.00014392853 ;
	setAttr ".tk[138]" -type "float3" 0.00046317416 0 0.00014392853 ;
	setAttr ".tk[139]" -type "float3" 0.0046338015 0 0.0019818889 ;
	setAttr ".tk[140]" -type "float3" 0.029263813 -0.034296423 0.038278095 ;
	setAttr ".tk[141]" -type "float3" 1.6568634e-10 -0.049942672 0.043801345 ;
	setAttr ".tk[142]" -type "float3" -0.029263798 -0.034296423 0.038278095 ;
	setAttr ".tk[143]" -type "float3" -0.037027683 -0.0281616 0.028991977 ;
	setAttr ".tk[144]" -type "float3" -0.0080823312 -0.002745325 0.003447328 ;
	setAttr ".tk[158]" -type "float3" 0.0080823302 -0.002745325 0.003447328 ;
	setAttr ".tk[159]" -type "float3" 0.037027676 -0.0281616 0.028991977 ;
	setAttr ".tk[160]" -type "float3" 0.065819517 -0.024246603 0.02748229 ;
	setAttr ".tk[161]" -type "float3" -0.065819494 -0.024246603 0.02748229 ;
	setAttr ".tk[162]" -type "float3" -0.0048539466 -0.015653875 0.011211932 ;
	setAttr ".tk[176]" -type "float3" 0.0048539462 -0.015653875 0.011211932 ;
	setAttr ".tk[177]" -type "float3" 0.025305344 -0.049080387 0.033370737 ;
	setAttr ".tk[178]" -type "float3" 0.073211811 -0.069589086 0.047314994 ;
	setAttr ".tk[179]" -type "float3" -0.073211811 -0.069589086 0.047314994 ;
	setAttr ".tk[180]" -type "float3" -0.025305348 -0.049080387 0.033370737 ;
	setAttr ".tk[181]" -type "float3" -0.0057982686 -0.0047423868 0.0032244422 ;
	setAttr ".tk[195]" -type "float3" 0.0057982714 -0.0047423868 0.0032244422 ;
	setAttr ".tk[196]" -type "float3" 0.022466609 -0.04948131 0.033643331 ;
	setAttr ".tk[197]" -type "float3" -0.022466609 -0.04948131 0.033643331 ;
	setAttr ".tk[198]" -type "float3" -0.0024524746 -0.0022569227 0.0015345261 ;
	setAttr ".tk[212]" -type "float3" 0.0024524736 -0.0022569227 0.0015345261 ;
	setAttr ".tk[313]" -type "float3" 0 -0.011218194 0.0052176015 ;
	setAttr ".tk[413]" -type "float3" 0.0050216713 -0.0031784172 0.0021610691 ;
	setAttr ".tk[427]" -type "float3" -0.0050216718 -0.0031784172 0.0021610691 ;
	setAttr ".tk[428]" -type "float3" -0.026155766 -0.053147193 0.03613583 ;
	setAttr ".tk[429]" -type "float3" 0.02615577 -0.053147193 0.03613583 ;
createNode polyExtrudeEdge -n "polyExtrudeEdge2";
	rename -uid "277EE1D7-CA47-6C50-80C5-2AB9E4C3F447";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[242]" "e[244]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.5 0 0 0 0 1 0 0 0.38499999046325684 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.4901161e-08 1.106253 0.14494154 ;
	setAttr ".rs" 2046036615;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.062176693230867386 1.1023414134979248 0.13957346975803375 ;
	setAttr ".cbx" -type "double3" 0.062176663428544998 1.1101646423339844 0.15030962228775024 ;
createNode polyExtrudeEdge -n "polyExtrudeEdge3";
	rename -uid "D86B2D6F-D144-AC2C-E292-768CF026F0E3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[242]" "e[833]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.5 0 0 0 0 1 0 0 0.38499999046325684 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.4901161e-08 1.106253 0.14494154 ;
	setAttr ".rs" 237338961;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.062176693230867386 1.1023414134979248 0.13957346975803375 ;
	setAttr ".cbx" -type "double3" 0.062176663428544998 1.1101646423339844 0.15030962228775024 ;
createNode polyTweak -n "polyTweak12";
	rename -uid "24ABBFA2-C74F-6D9B-B918-45AC420D2BA5";
	setAttr ".uopa" yes;
	setAttr -s 10 ".tk";
	setAttr ".tk[120]" -type "float3" 0.04534822 -7.4505806e-09 0.050033808 ;
	setAttr ".tk[121]" -type "float3" 0 0 0.059999995 ;
	setAttr ".tk[122]" -type "float3" -0.04534822 -7.4505806e-09 0.050033808 ;
	setAttr ".tk[140]" -type "float3" 0 0.50000012 0 ;
	setAttr ".tk[141]" -type "float3" 0 0.60000002 0 ;
	setAttr ".tk[142]" -type "float3" 0 0.50000006 0 ;
	setAttr ".tk[435]" -type "float3" 1.4901161e-08 -1.4901161e-08 0 ;
	setAttr ".tk[436]" -type "float3" 0 -1.4901161e-08 0 ;
	setAttr ".tk[437]" -type "float3" 0 0.60000002 0 ;
	setAttr ".tk[438]" -type "float3" 0 0.50000012 0 ;
createNode polySplit -n "polySplit1";
	rename -uid "933C07EB-6040-DAA1-D3FD-9898020C083B";
	setAttr -s 2 ".e[0:1]"  0 1;
	setAttr -s 2 ".d[0:1]"  -2147483366 -2147483369;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak13";
	rename -uid "1606085C-F346-8594-6568-049DC930D2F0";
	setAttr ".uopa" yes;
	setAttr -s 33 ".tk";
	setAttr ".tk[15]" -type "float3" -0.026712803 0.77615863 0 ;
	setAttr ".tk[31]" -type "float3" 0 0.48000002 0 ;
	setAttr ".tk[39]" -type "float3" 0 0.71999985 0 ;
	setAttr ".tk[52]" -type "float3" 0 0.48000002 0 ;
	setAttr ".tk[56]" -type "float3" 0 0.71999985 0 ;
	setAttr ".tk[69]" -type "float3" 0.026712803 0.77615863 0 ;
	setAttr ".tk[120]" -type "float3" 0 0 0.0099999998 ;
	setAttr ".tk[122]" -type "float3" 3.5527137e-15 0 0.0099999998 ;
	setAttr ".tk[140]" -type "float3" -2.1316282e-14 -0.039999995 0 ;
	setAttr ".tk[142]" -type "float3" 0 -0.039999999 0 ;
	setAttr ".tk[143]" -type "float3" 0 0 0.049999997 ;
	setAttr ".tk[159]" -type "float3" 0 0 0.049999997 ;
	setAttr ".tk[160]" -type "float3" -0.03707296 -4.4408921e-16 0.038787946 ;
	setAttr ".tk[161]" -type "float3" 0.03707296 -4.4408921e-16 0.038787946 ;
	setAttr ".tk[162]" -type "float3" 0 0.35999998 0 ;
	setAttr ".tk[163]" -type "float3" 0 0.50000006 0.0099999998 ;
	setAttr ".tk[164]" -type "float3" 0 0.35999998 0.02 ;
	setAttr ".tk[166]" -type "float3" 0 0.48000008 0 ;
	setAttr ".tk[168]" -type "float3" 0 0.48000008 0 ;
	setAttr ".tk[170]" -type "float3" 0 0.48000008 0 ;
	setAttr ".tk[172]" -type "float3" 0 0.48000008 0 ;
	setAttr ".tk[174]" -type "float3" 0 0.35999998 0.02 ;
	setAttr ".tk[175]" -type "float3" 0 0.50000006 0.0099999998 ;
	setAttr ".tk[176]" -type "float3" 0 0.35999998 0 ;
	setAttr ".tk[200]" -type "float3" 0.029999999 -1.1920929e-07 0 ;
	setAttr ".tk[257]" -type "float3" 0.099575788 0.17094713 0 ;
	setAttr ".tk[258]" -type "float3" 0.078510582 0.12780152 3.7252903e-09 ;
	setAttr ".tk[259]" -type "float3" 0.078510582 0.12780152 3.7252903e-09 ;
	setAttr ".tk[265]" -type "float3" -0.078510582 0.12780152 3.7252903e-09 ;
	setAttr ".tk[266]" -type "float3" -0.078510582 0.12780152 3.7252903e-09 ;
	setAttr ".tk[267]" -type "float3" -0.099575788 0.17094713 0 ;
	setAttr ".tk[430]" -type "float3" -0.029999999 -1.1920929e-07 0 ;
	setAttr ".tk[438]" -type "float3" 0 -0.039999995 0 ;
createNode polySplit -n "polySplit2";
	rename -uid "3BA95A5B-EC48-D31B-D85C-FD92FE9E08BC";
	setAttr -s 2 ".e[0:1]"  1 0;
	setAttr -s 2 ".d[0:1]"  -2147483633 -2147483634;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit3";
	rename -uid "B7D5C111-C745-94CE-0E42-5ABE57B37021";
	setAttr -s 2 ".e[0:1]"  1 1;
	setAttr -s 2 ".d[0:1]"  -2147483549 -2147483525;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit4";
	rename -uid "CA8CDD3C-8748-F1F9-32B7-19A29BB693D0";
	setAttr -s 2 ".e[0:1]"  1 0;
	setAttr -s 2 ".d[0:1]"  -2147483609 -2147483624;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit5";
	rename -uid "16F13C15-214C-701E-DD54-CE80BAD82371";
	setAttr -s 2 ".e[0:1]"  1 0;
	setAttr -s 2 ".d[0:1]"  -2147483457 -2147483579;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit6";
	rename -uid "BAC019A3-9947-8AAC-9BF2-148C96801C55";
	setAttr -s 3 ".e[0:2]"  1 1 1;
	setAttr -s 3 ".d[0:2]"  -2147483349 -2147483346 -2147483345;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit7";
	rename -uid "6CE2AF76-8B4A-6B0C-6A65-09A21FF0C994";
	setAttr -s 2 ".e[0:1]"  0 1;
	setAttr -s 2 ".d[0:1]"  -2147483351 -2147483349;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit8";
	rename -uid "23E88858-CE41-D395-7CDF-DE9044B194FF";
	setAttr -s 2 ".e[0:1]"  1 0;
	setAttr -s 2 ".d[0:1]"  -2147483342 -2147483306;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit9";
	rename -uid "50F03FA2-DE44-E2FA-DD71-A5B38391ACC4";
	setAttr -s 2 ".e[0:1]"  1 0;
	setAttr -s 2 ".d[0:1]"  -2147483350 -2147483314;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit10";
	rename -uid "C92AE1E2-5A49-72BE-BB1D-E4A5FB6CE2AD";
	setAttr -s 2 ".e[0:1]"  0 1;
	setAttr -s 2 ".d[0:1]"  -2147483343 -2147483341;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit11";
	rename -uid "CE44A014-2343-86CB-E7CC-B0A330B2BDA6";
	setAttr -s 2 ".e[0:1]"  0 0;
	setAttr -s 2 ".d[0:1]"  -2147483317 -2147483352;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit12";
	rename -uid "05141C15-F640-777A-DAA8-B38B79F9468E";
	setAttr -s 2 ".e[0:1]"  0 1;
	setAttr -s 2 ".d[0:1]"  -2147483302 -2147483338;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit13";
	rename -uid "73A06C92-3743-4FF1-EF02-798F02D7BFF8";
	setAttr -s 2 ".e[0:1]"  1 0;
	setAttr -s 2 ".d[0:1]"  -2147483354 -2147483318;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit14";
	rename -uid "5E6115F9-E047-5309-571F-59803489507F";
	setAttr -s 2 ".e[0:1]"  0 1;
	setAttr -s 2 ".d[0:1]"  -2147483339 -2147483337;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit15";
	rename -uid "681DDFBF-C846-9FA6-C709-F4841B29BFF5";
	setAttr -s 2 ".e[0:1]"  0 1;
	setAttr -s 2 ".d[0:1]"  -2147483634 -2147483284;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit16";
	rename -uid "79278D99-5B42-8C36-2234-E5B3D8267F36";
	setAttr -s 4 ".e[0:3]"  1 0.5 0.5 1;
	setAttr -s 4 ".d[0:3]"  -2147483457 -2147483465 -2147483633 -2147482807;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit17";
	rename -uid "6476274D-D74D-19B6-4FAE-0A87A3EAF5CD";
	setAttr -s 4 ".e[0:3]"  0 0.5 0.5 1;
	setAttr -s 4 ".d[0:3]"  -2147483152 -2147483597 -2147483549 -2147483525;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
select -ne :time1;
	setAttr ".o" 87;
	setAttr ".unw" 87;
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
	setAttr -s 6 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 4 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "groupId1.id" "pConeShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pConeShape1.iog.og[0].gco";
connectAttr "groupParts1.og" "pConeShape1.i";
connectAttr "groupId2.id" "pConeShape1.ciog.cog[0].cgid";
connectAttr "groupId3.id" "pConeShape2.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pConeShape2.iog.og[0].gco";
connectAttr "groupId4.id" "pConeShape2.ciog.cog[0].cgid";
connectAttr "polySplit17.out" "pCone3Shape.i";
connectAttr "groupId5.id" "pCone3Shape.ciog.cog[0].cgid";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyCone1.out" "polyChamfer1.ip";
connectAttr "pConeShape1.wm" "polyChamfer1.mp";
connectAttr "polyChamfer1.out" "deleteComponent3.ig";
connectAttr "deleteComponent3.og" "polyBevel1.ip";
connectAttr "pConeShape1.wm" "polyBevel1.mp";
connectAttr "pConeShape1.o" "polyCBoolOp1.ip[0]";
connectAttr "pConeShape2.o" "polyCBoolOp1.ip[1]";
connectAttr "pConeShape1.wm" "polyCBoolOp1.im[0]";
connectAttr "pConeShape2.wm" "polyCBoolOp1.im[1]";
connectAttr "polyBevel1.out" "groupParts1.ig";
connectAttr "groupId1.id" "groupParts1.gi";
connectAttr "polyTweak1.out" "polySplitRing1.ip";
connectAttr "pCone3Shape.wm" "polySplitRing1.mp";
connectAttr "polyCBoolOp1.out" "polyTweak1.ip";
connectAttr "polySplitRing1.out" "polySplitRing2.ip";
connectAttr "pCone3Shape.wm" "polySplitRing2.mp";
connectAttr "polySplitRing2.out" "polySplitRing3.ip";
connectAttr "pCone3Shape.wm" "polySplitRing3.mp";
connectAttr "polySplitRing3.out" "polySplitRing4.ip";
connectAttr "pCone3Shape.wm" "polySplitRing4.mp";
connectAttr "polySplitRing4.out" "polySplitRing5.ip";
connectAttr "pCone3Shape.wm" "polySplitRing5.mp";
connectAttr "polySplitRing5.out" "polySplitRing6.ip";
connectAttr "pCone3Shape.wm" "polySplitRing6.mp";
connectAttr "polySplitRing6.out" "polySplitRing7.ip";
connectAttr "pCone3Shape.wm" "polySplitRing7.mp";
connectAttr "polySplitRing7.out" "polySplitRing8.ip";
connectAttr "pCone3Shape.wm" "polySplitRing8.mp";
connectAttr "polySplitRing8.out" "polySplitRing9.ip";
connectAttr "pCone3Shape.wm" "polySplitRing9.mp";
connectAttr "polySplitRing9.out" "polySplitRing10.ip";
connectAttr "pCone3Shape.wm" "polySplitRing10.mp";
connectAttr "polyTweak2.out" "polySplitRing11.ip";
connectAttr "pCone3Shape.wm" "polySplitRing11.mp";
connectAttr "polySplitRing10.out" "polyTweak2.ip";
connectAttr "polySplitRing11.out" "polySplitRing12.ip";
connectAttr "pCone3Shape.wm" "polySplitRing12.mp";
connectAttr "polySplitRing12.out" "polySplitRing13.ip";
connectAttr "pCone3Shape.wm" "polySplitRing13.mp";
connectAttr "polySplitRing13.out" "polySplitRing14.ip";
connectAttr "pCone3Shape.wm" "polySplitRing14.mp";
connectAttr "polySplitRing14.out" "polySplitRing15.ip";
connectAttr "pCone3Shape.wm" "polySplitRing15.mp";
connectAttr "polySplitRing15.out" "polySplitRing16.ip";
connectAttr "pCone3Shape.wm" "polySplitRing16.mp";
connectAttr "polySplitRing16.out" "deleteComponent4.ig";
connectAttr "deleteComponent4.og" "deleteComponent5.ig";
connectAttr "deleteComponent5.og" "deleteComponent6.ig";
connectAttr "deleteComponent6.og" "polyBridgeEdge1.ip";
connectAttr "pCone3Shape.wm" "polyBridgeEdge1.mp";
connectAttr "polyTweak3.out" "polyMergeVert1.ip";
connectAttr "pCone3Shape.wm" "polyMergeVert1.mp";
connectAttr "polyBridgeEdge1.out" "polyTweak3.ip";
connectAttr "polyTweak4.out" "polyMergeVert2.ip";
connectAttr "pCone3Shape.wm" "polyMergeVert2.mp";
connectAttr "polyMergeVert1.out" "polyTweak4.ip";
connectAttr "polyTweak5.out" "polyMergeVert3.ip";
connectAttr "pCone3Shape.wm" "polyMergeVert3.mp";
connectAttr "polyMergeVert2.out" "polyTweak5.ip";
connectAttr "polyTweak6.out" "polyMergeVert4.ip";
connectAttr "pCone3Shape.wm" "polyMergeVert4.mp";
connectAttr "polyMergeVert3.out" "polyTweak6.ip";
connectAttr "polyTweak7.out" "polyMergeVert5.ip";
connectAttr "pCone3Shape.wm" "polyMergeVert5.mp";
connectAttr "polyMergeVert4.out" "polyTweak7.ip";
connectAttr "polyTweak8.out" "polyMergeVert6.ip";
connectAttr "pCone3Shape.wm" "polyMergeVert6.mp";
connectAttr "polyMergeVert5.out" "polyTweak8.ip";
connectAttr "polyTweak9.out" "polyMergeVert7.ip";
connectAttr "pCone3Shape.wm" "polyMergeVert7.mp";
connectAttr "polyMergeVert6.out" "polyTweak9.ip";
connectAttr "polyTweak10.out" "polyMergeVert8.ip";
connectAttr "pCone3Shape.wm" "polyMergeVert8.mp";
connectAttr "polyMergeVert7.out" "polyTweak10.ip";
connectAttr "polyTweak11.out" "polyExtrudeEdge1.ip";
connectAttr "pCone3Shape.wm" "polyExtrudeEdge1.mp";
connectAttr "polyMergeVert8.out" "polyTweak11.ip";
connectAttr "polyExtrudeEdge1.out" "polyExtrudeEdge2.ip";
connectAttr "pCone3Shape.wm" "polyExtrudeEdge2.mp";
connectAttr "polyExtrudeEdge2.out" "polyExtrudeEdge3.ip";
connectAttr "pCone3Shape.wm" "polyExtrudeEdge3.mp";
connectAttr "polyExtrudeEdge3.out" "polyTweak12.ip";
connectAttr "polyTweak12.out" "polySplit1.ip";
connectAttr "polySplit1.out" "polyTweak13.ip";
connectAttr "polyTweak13.out" "polySplit2.ip";
connectAttr "polySplit2.out" "polySplit3.ip";
connectAttr "polySplit3.out" "polySplit4.ip";
connectAttr "polySplit4.out" "polySplit5.ip";
connectAttr "polySplit5.out" "polySplit6.ip";
connectAttr "polySplit6.out" "polySplit7.ip";
connectAttr "polySplit7.out" "polySplit8.ip";
connectAttr "polySplit8.out" "polySplit9.ip";
connectAttr "polySplit9.out" "polySplit10.ip";
connectAttr "polySplit10.out" "polySplit11.ip";
connectAttr "polySplit11.out" "polySplit12.ip";
connectAttr "polySplit12.out" "polySplit13.ip";
connectAttr "polySplit13.out" "polySplit14.ip";
connectAttr "polySplit14.out" "polySplit15.ip";
connectAttr "polySplit15.out" "polySplit16.ip";
connectAttr "polySplit16.out" "polySplit17.ip";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pConeShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pConeShape1.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pConeShape2.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pConeShape2.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCone3Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCone3Shape.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId1.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId3.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId4.msg" ":initialShadingGroup.gn" -na;
// End of MC_Cloak.ma
