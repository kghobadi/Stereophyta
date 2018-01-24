//Maya ASCII 2016 scene
//Name: tree2_adult.ma
//Last modified: Thu, Nov 30, 2017 04:16:38 PM
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
createNode transform -n "group4";
	rename -uid "15658B55-E24D-4C9D-F69E-03B6873A7F93";
	setAttr ".rp" -type "double3" 6.5326787170261547 9.9383148319867214 8.0849781630248643 ;
	setAttr ".sp" -type "double3" 6.5326787170261547 9.9383148319867214 8.0849781630248643 ;
createNode transform -n "group5";
	rename -uid "53BE47F0-8940-D2D9-5FD1-0CA347F6F6FE";
	setAttr ".rp" -type "double3" 6.5326788425445557 9.9383148319867214 8.0076255798339844 ;
	setAttr ".sp" -type "double3" 6.5326788425445557 9.9383148319867214 8.0076255798339844 ;
createNode joint -n "pasted__joint1" -p "group5";
	rename -uid "E75115F8-C141-F19E-3421-8F954F43A8A4";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 89.999999999999986 1.0609116902641673 90 ;
	setAttr ".bps" -type "matrix" 0 0.99982857632513145 -0.018515344006019788 0 -3.3306690738754706e-16 0.018515344006019618 0.99982857632513145 0
		 1.0000000000000002 -1.1102230246251568e-16 2.2204460492503131e-16 0 0 0 0 1;
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
		 6.1412556850558851e-33 2.0560361858047624 -0.038074744181567338 1;
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
		 -6.3396316977714832e-18 5.1400904645119079 -0.038074744181567026 1;
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
		 -1.6670883353398725e-17 8.1099205106743408 8.6736173798840355e-16 1;
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
		 -1.8627559803328634e-17 11.117825301018346 -0.038074744181566381 1;
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
		 -2.3401850341156261e-17 13.440384696094094 -0.038074744181566138 1;
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
		 -2.706548046068539e-17 15.222638726671086 -0.038074744181565957 1;
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
		 -4.6155733514033238e-17 19.443291256557668 0.055744218163917995 1;
	setAttr ".radi" 0.66663940330690774;
createNode transform -s -n "persp";
	rename -uid "3EF3B52D-AB47-3B30-93D1-4FB4BADC26C9";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -2.6540884139041845 26.091337787893259 -39.366353022605928 ;
	setAttr ".r" -type "double3" -26.138352729842342 903.7999999997885 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "96657956-7443-CC8F-A38B-9A958033B761";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 43.984075039858823;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -0.037200450897216797 6.7145848274230957 0.032786551862955093 ;
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
createNode transform -n "group10";
	rename -uid "3A00C46A-4E4D-6C6A-26D2-55AED0B28852";
	setAttr ".t" -type "double3" 30.803166794774548 -3.5527136788005009e-15 -3.6120751136193263 ;
	setAttr ".rp" -type "double3" -19.825813951922569 9.8105630874633789 4.0738942200705424 ;
	setAttr ".sp" -type "double3" -19.825813951922569 9.8105630874633789 4.0738942200705424 ;
createNode transform -n "pasted__polySurface1" -p "group10";
	rename -uid "6256EB53-5C4E-327C-D690-C9B2EFE3E251";
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
	rename -uid "A9D6239A-D347-23BC-DC62-298108144EB2";
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
	rename -uid "50F1F483-3A43-339D-9762-5C8EEC34C43B";
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
	rename -uid "390C8991-A346-6C2E-140F-B3BDB827D581";
	setAttr ".v" no;
createNode mesh -n "pasted__polySurface1Shape" -p "pasted__transform2";
	rename -uid "E0F73051-694E-A71C-2CAF-AFB257186EA9";
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
createNode transform -n "pasted__group5" -p "group10";
	rename -uid "1571A44F-D342-5290-9141-85A81D25A49A";
	setAttr ".rp" -type "double3" 6.5326788425445557 9.9383148319867214 8.0076255798339844 ;
	setAttr ".sp" -type "double3" 6.5326788425445557 9.9383148319867214 8.0076255798339844 ;
createNode transform -n "pasted__pasted__polySurface1" -p "pasted__group5";
	rename -uid "CE0FFC24-8045-9ADE-E292-08BA43218BA5";
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
createNode mesh -n "pasted__pasted__polySurfaceShape1" -p "|group10|pasted__group5|pasted__pasted__polySurface1";
	rename -uid "93DFFA0F-6D4C-9C26-092F-C4BE50D3A472";
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
createNode mesh -n "pasted__pasted__polySurface1ShapeOrig" -p "|group10|pasted__group5|pasted__pasted__polySurface1";
	rename -uid "9F44868D-4042-68A6-7916-0895C6746C91";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pasted__transform3" -p "|group10|pasted__group5|pasted__pasted__polySurface1";
	rename -uid "EA4F8DBE-D04D-BCA6-7F47-879C5205C656";
	setAttr ".v" no;
createNode mesh -n "pasted__pasted__polySurface1Shape" -p "pasted__transform3";
	rename -uid "CA00FD9F-444F-FFF4-25D2-3F958FE2A01A";
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
createNode transform -n "pasted__group6" -p "group10";
	rename -uid "C3A40C86-F94C-0C28-AD14-BEBE28FD8FAD";
	setAttr ".rp" -type "double3" 6.5326788425445557 7.171691327228908 5.851685683901712 ;
	setAttr ".sp" -type "double3" 6.5326788425445557 7.171691327228908 5.851685683901712 ;
createNode transform -n "pasted__pasted__polySurface1" -p "pasted__group6";
	rename -uid "8638A7B9-1A4C-D2C5-3B22-579887F05226";
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
createNode mesh -n "pasted__pasted__polySurfaceShape1" -p "|group10|pasted__group6|pasted__pasted__polySurface1";
	rename -uid "C8768B5E-594B-D995-6ECE-92A5EF31B337";
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
createNode mesh -n "pasted__pasted__polySurface1ShapeOrig" -p "|group10|pasted__group6|pasted__pasted__polySurface1";
	rename -uid "87B74F92-F24F-F9B7-AA1D-40884B789A20";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pasted__transform4" -p "|group10|pasted__group6|pasted__pasted__polySurface1";
	rename -uid "A4132DFA-9242-1824-B796-5281EB04EFA9";
	setAttr ".v" no;
createNode mesh -n "pasted__pasted__polySurface1Shape" -p "pasted__transform4";
	rename -uid "739ADE3E-FA45-E9F4-7388-50A7C173E1A5";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 6 ".iog[0].og";
	setAttr -av ".iog[0].og[0].gco";
	setAttr -av ".iog[0].og[1].gco";
	setAttr -av ".iog[0].og[7].gco";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.30203323066234589 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
createNode transform -n "pasted__group6_pasted__polySurface1" -p "group10";
	rename -uid "D32E7AA1-7B4D-AFB3-D831-638B47C133CD";
	setAttr ".rp" -type "double3" 6.5326788425445557 9.7797562070190907 8.7703984379768372 ;
	setAttr ".sp" -type "double3" 6.5326788425445557 9.7797562070190907 8.7703984379768372 ;
createNode transform -n "pasted__polySurface2" -p "pasted__group6_pasted__polySurface1";
	rename -uid "505707CB-B142-F0F4-F7AC-94BAC73A356B";
	setAttr ".t" -type "double3" 10.678307103392822 0 0 ;
createNode transform -n "pasted__transform9" -p "|group10|pasted__group6_pasted__polySurface1|pasted__polySurface2";
	rename -uid "3956AADC-F945-6B8E-2431-5FAE26171F05";
	setAttr ".v" no;
createNode mesh -n "pasted__polySurfaceShape2" -p "pasted__transform9";
	rename -uid "A441F3E7-9946-7175-BFC4-9183F30026E0";
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
createNode transform -n "pasted__polySurface3" -p "pasted__group6_pasted__polySurface1";
	rename -uid "774AD1B0-0140-98BC-98CB-E4BFE0D77149";
	setAttr ".t" -type "double3" 10.678307103392822 0 0 ;
createNode transform -n "pasted__transform8" -p "pasted__polySurface3";
	rename -uid "84E5B737-6F4F-49CF-21AB-8393B7228100";
	setAttr ".v" no;
createNode mesh -n "pasted__polySurfaceShape3" -p "pasted__transform8";
	rename -uid "04682D5B-FA47-406B-B440-738B35D5E3D6";
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
createNode transform -n "pasted__polySurface4" -p "pasted__group6_pasted__polySurface1";
	rename -uid "68326CF7-DD4D-A210-5A31-DFA647D5AB98";
createNode transform -n "pasted__transform10" -p "pasted__polySurface4";
	rename -uid "C82A3A86-744B-6BAB-7A83-A088874187EA";
	setAttr ".v" no;
createNode mesh -n "pasted__polySurfaceShape4" -p "pasted__transform10";
	rename -uid "BC04E7FF-FB46-48DC-6FDF-9B895A5B1E8D";
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
createNode transform -n "pasted__polySurface5" -p "pasted__group6_pasted__polySurface1";
	rename -uid "879C2631-C443-F50C-8ECE-43B5F50DDB3B";
createNode transform -n "pasted__transform12" -p "pasted__polySurface5";
	rename -uid "6B1EAB1C-B145-28FB-A5FF-DDBBF1317E71";
	setAttr ".v" no;
createNode mesh -n "pasted__polySurfaceShape5" -p "pasted__transform12";
	rename -uid "5E97D3A4-B848-1C9A-0F21-0397A61F2C90";
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
createNode transform -n "pasted__polySurface6" -p "pasted__group6_pasted__polySurface1";
	rename -uid "0D717F0D-5F42-8A03-9F8F-7B98D37540B3";
	setAttr ".t" -type "double3" 0 0 -5.2245787623590703 ;
createNode transform -n "pasted__transform7" -p "|group10|pasted__group6_pasted__polySurface1|pasted__polySurface6";
	rename -uid "0386711A-7545-A77F-7287-D7AE93F72BDB";
	setAttr ".v" no;
createNode mesh -n "pasted__polySurfaceShape6" -p "pasted__transform7";
	rename -uid "DF2E7964-6B44-5050-3C69-90A17649A37C";
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
createNode transform -n "pasted__polySurface7" -p "pasted__group6_pasted__polySurface1";
	rename -uid "28F95605-1948-5D5D-A931-97BE7610F1CD";
	setAttr ".t" -type "double3" 0 0 -5.2245787623590703 ;
createNode transform -n "pasted__transform6" -p "pasted__polySurface7";
	rename -uid "7C784F74-9E46-1B11-9F25-4F84F39D02AF";
	setAttr ".v" no;
createNode mesh -n "pasted__polySurfaceShape7" -p "pasted__transform6";
	rename -uid "FD7BD856-8647-F8B7-A762-A5BAB808E3F9";
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
createNode transform -n "pasted__transform5" -p "pasted__group6_pasted__polySurface1";
	rename -uid "DD9FAADB-8B41-BD53-4FE7-EFB59B7034F7";
	setAttr ".v" no;
createNode mesh -n "pasted__group6_pasted__polySurface1Shape" -p "pasted__transform5";
	rename -uid "20221B9B-CA4D-7814-6B99-91B98F0E92BE";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 18 ".iog[0].og";
	setAttr -av ".iog[0].og[4].gco";
	setAttr -av ".iog[0].og[5].gco";
	setAttr -av ".iog[0].og[7].gco";
	setAttr -av ".iog[0].og[8].gco";
	setAttr -av ".iog[0].og[9].gco";
	setAttr -av ".iog[0].og[11].gco";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
createNode transform -n "pasted__polySurface6" -p "group10";
	rename -uid "BC217E61-D84E-BEF3-1CC7-068E11303CD0";
	setAttr ".t" -type "double3" -3.5893022215092341 2.6760140455202412 4.0565976591709276 ;
	setAttr ".r" -type "double3" 0 0 27.424661248676774 ;
	setAttr ".s" -type "double3" 0.77644489198374456 0.77644489198374456 0.77644489198374456 ;
	setAttr ".rp" -type "double3" 0 7.6173615967452157 -4.0565976591709276 ;
	setAttr ".sp" -type "double3" 0 9.8105630874633789 -5.2245789766311646 ;
	setAttr ".spt" -type "double3" 0 -2.1932014907181632 1.1679813174602369 ;
createNode transform -n "pasted__transform11" -p "|group10|pasted__polySurface6";
	rename -uid "C5E82C0A-B943-E095-7BCF-AB9913D58CDE";
	setAttr ".v" no;
createNode mesh -n "pasted__polySurface6Shape" -p "pasted__transform11";
	rename -uid "2E4DF9E0-BE4B-735C-F4EE-0A9A07E72AB1";
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
createNode transform -n "pasted__polySurface2" -p "group10";
	rename -uid "8E7C8243-1149-279B-54BF-9D9D0259D1E3";
	setAttr ".t" -type "double3" -3.0138460720885032 5.7739291606088292 7.0559262924572581e-08 ;
	setAttr ".r" -type "double3" 0 0 -34.95831771141485 ;
	setAttr ".s" -type "double3" 0.59189399744317295 0.59189399744317295 0.59189399744317295 ;
	setAttr ".rp" -type "double3" 6.3204261317912724 5.806813403007137 -7.0559262924572581e-08 ;
	setAttr ".sp" -type "double3" 10.67830753326416 9.8105630874633789 -1.1920928955078125e-07 ;
	setAttr ".spt" -type "double3" -4.3578814014728877 -4.0037496844562419 4.8650026626208663e-08 ;
createNode transform -n "pasted__transform13" -p "|group10|pasted__polySurface2";
	rename -uid "794D5018-0944-A211-257D-D9A8DB7C7EA0";
	setAttr ".v" no;
createNode mesh -n "pasted__polySurface2Shape" -p "pasted__transform13";
	rename -uid "939C3875-5149-E82D-6298-30A336FE58CC";
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
createNode transform -n "polySurface31";
	rename -uid "68A79C0B-5E4C-21A2-CD20-5BABB8D240CE";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "polySurface12Shape" -p "polySurface31";
	rename -uid "2F235531-5744-8F7B-1AB9-12869544CA88";
	setAttr -k off ".v";
	setAttr -s 64 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
createNode mesh -n "polySurface12ShapeOrig" -p "polySurface31";
	rename -uid "96617BB4-DF44-A427-29A1-2BB9877B3E04";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 1860 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.375 0.3125 0.41666666 0.3125
		 0.41666669 0.35731328 0.375 0.35731328 0.45833331 0.3125 0.45833331 0.35731328 0.49999997
		 0.3125 0.49999997 0.35731328 0.54166663 0.3125 0.54166663 0.35731328 0.58333331 0.3125
		 0.58333331 0.35731328 0.625 0.3125 0.625 0.35731328 0.42187503 0.020933509 0.57812506
		 0.020933539 0.5 0.15000001 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649
		 0.65625 0.15625 0.578125 0.97906649 0.421875 0.97906649 0.5 0.83749998 0.34375 0.84375
		 0.42187503 0.70843351 0.57812506 0.70843351 0.65625 0.84375 0.49999997 0.41046759
		 0.45833331 0.41046759 0.41666669 0.41046759 0.37500003 0.41046759 0.625 0.41046759
		 0.58333331 0.41046759 0.54166663 0.41046759 0.49999997 0.45554912 0.45833331 0.45554912
		 0.41666669 0.45554912 0.37500003 0.45554912 0.625 0.45554912 0.58333331 0.45554912
		 0.54166663 0.45554912 0.49999994 0.49888307 0.45833331 0.49888307 0.41666669 0.49888307
		 0.37500003 0.49888307 0.625 0.49888307 0.58333331 0.49888307 0.54166663 0.49888307
		 0.49999994 0.54360795 0.45833331 0.54360795 0.41666669 0.54360795 0.37500003 0.54360795
		 0.625 0.54360795 0.58333331 0.54360795 0.54166663 0.54360795 0.49999997 0.58914256
		 0.45833331 0.58914256 0.41666669 0.58914256 0.37500006 0.58914256 0.625 0.58914256
		 0.58333331 0.58914256 0.54166663 0.58914256 0.49999994 0.62784201 0.45833331 0.62784201
		 0.41666666 0.62784201 0.37500003 0.62784201 0.625 0.62784201 0.58333331 0.62784201
		 0.54166663 0.62784201 0.49999994 0.66695076 0.45833331 0.66695076 0.41666663 0.66695076
		 0.375 0.66695076 0.625 0.66695076 0.58333331 0.66695076 0.54166663 0.66695076 0.49999997
		 0.68843985 0.45833331 0.68843985 0.41666666 0.68843985 0.375 0.68843985 0.625 0.68843985
		 0.58333331 0.68843985 0.54166663 0.68843985 0.375 0.3125 0.41666666 0.3125 0.41666669
		 0.35731328 0.375 0.35731328 0.45833331 0.3125 0.45833331 0.35731328 0.49999997 0.3125
		 0.49999997 0.35731328 0.54166663 0.3125 0.54166663 0.35731328 0.58333331 0.3125 0.58333331
		 0.35731328 0.625 0.3125 0.625 0.35731328 0.42187503 0.020933509 0.57812506 0.020933539
		 0.5 0.15000001 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649 0.65625
		 0.15625 0.578125 0.97906649 0.421875 0.97906649 0.5 0.83749998 0.34375 0.84375 0.42187503
		 0.70843351 0.57812506 0.70843351 0.65625 0.84375 0.49999997 0.41046759 0.45833331
		 0.41046759 0.41666669 0.41046759 0.37500003 0.41046759 0.625 0.41046759 0.58333331
		 0.41046759 0.54166663 0.41046759 0.49999997 0.45554912 0.45833331 0.45554912 0.41666669
		 0.45554912 0.37500003 0.45554912 0.625 0.45554912 0.58333331 0.45554912 0.54166663
		 0.45554912 0.49999994 0.49888307 0.45833331 0.49888307 0.41666669 0.49888307 0.37500003
		 0.49888307 0.625 0.49888307 0.58333331 0.49888307 0.54166663 0.49888307 0.49999994
		 0.54360795 0.45833331 0.54360795 0.41666669 0.54360795 0.37500003 0.54360795 0.625
		 0.54360795 0.58333331 0.54360795 0.54166663 0.54360795 0.49999997 0.58914256 0.45833331
		 0.58914256 0.41666669 0.58914256 0.37500006 0.58914256 0.625 0.58914256 0.58333331
		 0.58914256 0.54166663 0.58914256 0.49999994 0.62784201 0.45833331 0.62784201 0.41666666
		 0.62784201 0.37500003 0.62784201 0.625 0.62784201 0.58333331 0.62784201 0.54166663
		 0.62784201 0.49999994 0.66695076 0.45833331 0.66695076 0.41666663 0.66695076 0.375
		 0.66695076 0.625 0.66695076 0.58333331 0.66695076 0.54166663 0.66695076 0.49999997
		 0.68843985 0.45833331 0.68843985 0.41666666 0.68843985 0.375 0.68843985 0.625 0.68843985
		 0.58333331 0.68843985 0.54166663 0.68843985 0.375 0.3125 0.41666666 0.3125 0.41666669
		 0.35731328 0.375 0.35731328 0.45833331 0.3125 0.45833331 0.35731328 0.49999997 0.3125
		 0.49999997 0.35731328 0.54166663 0.3125 0.54166663 0.35731328 0.58333331 0.3125 0.58333331
		 0.35731328 0.625 0.3125 0.625 0.35731328 0.42187503 0.020933509 0.57812506 0.020933539
		 0.5 0.15000001 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649 0.65625
		 0.15625 0.578125 0.97906649 0.421875 0.97906649 0.5 0.83749998 0.34375 0.84375 0.42187503
		 0.70843351 0.57812506 0.70843351 0.65625 0.84375 0.49999997 0.41046759 0.45833331
		 0.41046759 0.41666669 0.41046759 0.37500003 0.41046759 0.625 0.41046759 0.58333331
		 0.41046759 0.54166663 0.41046759 0.49999997 0.45554912 0.45833331 0.45554912 0.41666669
		 0.45554912 0.37500003 0.45554912 0.625 0.45554912 0.58333331 0.45554912 0.54166663
		 0.45554912 0.49999994 0.49888307 0.45833331 0.49888307 0.41666669 0.49888307 0.37500003
		 0.49888307 0.625 0.49888307 0.58333331 0.49888307 0.54166663 0.49888307 0.49999994
		 0.54360795 0.45833331 0.54360795 0.41666669 0.54360795 0.37500003 0.54360795 0.625
		 0.54360795 0.58333331 0.54360795 0.54166663 0.54360795 0.49999997 0.58914256 0.45833331
		 0.58914256 0.41666669 0.58914256 0.37500006 0.58914256 0.625 0.58914256 0.58333331
		 0.58914256 0.54166663 0.58914256 0.49999994 0.62784201 0.45833331 0.62784201 0.41666666
		 0.62784201 0.37500003 0.62784201 0.625 0.62784201 0.58333331 0.62784201 0.54166663
		 0.62784201 0.49999994 0.66695076 0.45833331 0.66695076 0.41666663 0.66695076 0.375
		 0.66695076 0.625 0.66695076 0.58333331 0.66695076 0.54166663 0.66695076 0.49999997
		 0.68843985 0.45833331 0.68843985 0.41666666 0.68843985 0.375 0.68843985 0.625 0.68843985;
	setAttr ".uvst[0].uvsp[250:499]" 0.58333331 0.68843985 0.54166663 0.68843985
		 0 0.2 0.16666667 0.2 0.16666667 0.40000001 0 0.40000001 0.33333334 0.2 0.33333334
		 0.40000001 0.5 0.2 0.5 0.40000001 0.66666669 0.2 0.66666669 0.40000001 0.83333337
		 0.2 0.83333337 0.40000001 1 0.2 1 0.40000001 0.16666667 0.60000002 0 0.60000002 0.33333334
		 0.60000002 0.5 0.60000002 0.66666669 0.60000002 0.83333337 0.60000002 1 0.60000002
		 0.16666667 0.80000001 0 0.80000001 0.33333334 0.80000001 0.5 0.80000001 0.66666669
		 0.80000001 0.83333337 0.80000001 1 0.80000001 0.083333336 0 0.25 0 0.41666669 0 0.58333337
		 0 0.75 0 0.91666669 0 0.083333336 1 0.25 1 0.41666669 1 0.58333337 1 0.75 1 0.91666669
		 1 0 0.2 0.16666667 0.2 0.16666667 0.40000001 0 0.40000001 0.33333334 0.2 0.33333334
		 0.40000001 0.5 0.2 0.5 0.40000001 0.66666669 0.2 0.66666669 0.40000001 0.83333337
		 0.2 0.83333337 0.40000001 1 0.2 1 0.40000001 0.16666667 0.60000002 0 0.60000002 0.33333334
		 0.60000002 0.5 0.60000002 0.66666669 0.60000002 0.83333337 0.60000002 1 0.60000002
		 0.16666667 0.80000001 0 0.80000001 0.33333334 0.80000001 0.5 0.80000001 0.66666669
		 0.80000001 0.83333337 0.80000001 1 0.80000001 0.083333336 0 0.25 0 0.41666669 0 0.58333337
		 0 0.75 0 0.91666669 0 0.083333336 1 0.25 1 0.41666669 1 0.58333337 1 0.75 1 0.91666669
		 1 0 0.2 0.16666667 0.2 0.16666667 0.40000001 0 0.40000001 0.33333334 0.2 0.33333334
		 0.40000001 0.5 0.2 0.5 0.40000001 0.66666669 0.2 0.66666669 0.40000001 0.83333337
		 0.2 0.83333337 0.40000001 1 0.2 1 0.40000001 0.16666667 0.60000002 0 0.60000002 0.33333334
		 0.60000002 0.5 0.60000002 0.66666669 0.60000002 0.83333337 0.60000002 1 0.60000002
		 0.16666667 0.80000001 0 0.80000001 0.33333334 0.80000001 0.5 0.80000001 0.66666669
		 0.80000001 0.83333337 0.80000001 1 0.80000001 0.083333336 0 0.25 0 0.41666669 0 0.58333337
		 0 0.75 0 0.91666669 0 0.083333336 1 0.25 1 0.41666669 1 0.58333337 1 0.75 1 0.91666669
		 1 0.375 0.3125 0.41666666 0.3125 0.41666669 0.35731328 0.375 0.35731328 0.45833331
		 0.3125 0.45833331 0.35731328 0.49999997 0.3125 0.49999997 0.35731328 0.54166663 0.3125
		 0.54166663 0.35731328 0.58333331 0.3125 0.58333331 0.35731328 0.625 0.3125 0.625
		 0.35731328 0.42187503 0.020933509 0.57812506 0.020933539 0.5 0.15000001 0.34375 0.15624997
		 0.421875 0.29156646 0.578125 0.29156649 0.65625 0.15625 0.578125 0.97906649 0.421875
		 0.97906649 0.5 0.83749998 0.34375 0.84375 0.42187503 0.70843351 0.57812506 0.70843351
		 0.65625 0.84375 0.49999997 0.41046759 0.45833331 0.41046759 0.41666669 0.41046759
		 0.37500003 0.41046759 0.625 0.41046759 0.58333331 0.41046759 0.54166663 0.41046759
		 0.49999997 0.45554912 0.45833331 0.45554912 0.41666669 0.45554912 0.37500003 0.45554912
		 0.625 0.45554912 0.58333331 0.45554912 0.54166663 0.45554912 0.49999994 0.49888307
		 0.45833331 0.49888307 0.41666669 0.49888307 0.37500003 0.49888307 0.625 0.49888307
		 0.58333331 0.49888307 0.54166663 0.49888307 0.49999994 0.54360795 0.45833331 0.54360795
		 0.41666669 0.54360795 0.37500003 0.54360795 0.625 0.54360795 0.58333331 0.54360795
		 0.54166663 0.54360795 0.49999997 0.58914256 0.45833331 0.58914256 0.41666669 0.58914256
		 0.37500006 0.58914256 0.625 0.58914256 0.58333331 0.58914256 0.54166663 0.58914256
		 0.49999994 0.62784201 0.45833331 0.62784201 0.41666666 0.62784201 0.37500003 0.62784201
		 0.625 0.62784201 0.58333331 0.62784201 0.54166663 0.62784201 0.49999994 0.66695076
		 0.45833331 0.66695076 0.41666663 0.66695076 0.375 0.66695076 0.625 0.66695076 0.58333331
		 0.66695076 0.54166663 0.66695076 0.49999997 0.68843985 0.45833331 0.68843985 0.41666666
		 0.68843985 0.375 0.68843985 0.625 0.68843985 0.58333331 0.68843985 0.54166663 0.68843985
		 0 0.2 0.16666667 0.2 0.16666667 0.40000001 0 0.40000001 0.33333334 0.2 0.33333334
		 0.40000001 0.5 0.2 0.5 0.40000001 0.66666669 0.2 0.66666669 0.40000001 0.83333337
		 0.2 0.83333337 0.40000001 1 0.2 1 0.40000001 0.16666667 0.60000002 0 0.60000002 0.33333334
		 0.60000002 0.5 0.60000002 0.66666669 0.60000002 0.83333337 0.60000002 1 0.60000002
		 0.16666667 0.80000001 0 0.80000001 0.33333334 0.80000001 0.5 0.80000001 0.66666669
		 0.80000001 0.83333337 0.80000001 1 0.80000001 0.083333336 0 0.25 0 0.41666669 0 0.58333337
		 0 0.75 0 0.91666669 0 0.083333336 1 0.25 1 0.41666669 1 0.58333337 1 0.75 1 0.91666669
		 1 0 0.2 0.16666667 0.2 0.16666667 0.40000001 0 0.40000001;
	setAttr ".uvst[0].uvsp[500:749]" 0.33333334 0.2 0.33333334 0.40000001 0.5 0.2
		 0.5 0.40000001 0.66666669 0.2 0.66666669 0.40000001 0.83333337 0.2 0.83333337 0.40000001
		 1 0.2 1 0.40000001 0.16666667 0.60000002 0 0.60000002 0.33333334 0.60000002 0.5 0.60000002
		 0.66666669 0.60000002 0.83333337 0.60000002 1 0.60000002 0.16666667 0.80000001 0
		 0.80000001 0.33333334 0.80000001 0.5 0.80000001 0.66666669 0.80000001 0.83333337
		 0.80000001 1 0.80000001 0.083333336 0 0.25 0 0.41666669 0 0.58333337 0 0.75 0 0.91666669
		 0 0.083333336 1 0.25 1 0.41666669 1 0.58333337 1 0.75 1 0.91666669 1 0.375 0.3125
		 0.41666666 0.3125 0.41666669 0.35731328 0.375 0.35731328 0.45833331 0.3125 0.45833331
		 0.35731328 0.49999997 0.3125 0.49999997 0.35731328 0.54166663 0.3125 0.54166663 0.35731328
		 0.58333331 0.3125 0.58333331 0.35731328 0.625 0.3125 0.625 0.35731328 0.42187503
		 0.020933509 0.57812506 0.020933539 0.5 0.15000001 0.34375 0.15624997 0.421875 0.29156646
		 0.578125 0.29156649 0.65625 0.15625 0.578125 0.97906649 0.421875 0.97906649 0.5 0.83749998
		 0.34375 0.84375 0.42187503 0.70843351 0.57812506 0.70843351 0.65625 0.84375 0.49999997
		 0.41046759 0.45833331 0.41046759 0.41666669 0.41046759 0.37500003 0.41046759 0.625
		 0.41046759 0.58333331 0.41046759 0.54166663 0.41046759 0.49999997 0.45554912 0.45833331
		 0.45554912 0.41666669 0.45554912 0.37500003 0.45554912 0.625 0.45554912 0.58333331
		 0.45554912 0.54166663 0.45554912 0.49999994 0.49888307 0.45833331 0.49888307 0.41666669
		 0.49888307 0.37500003 0.49888307 0.625 0.49888307 0.58333331 0.49888307 0.54166663
		 0.49888307 0.49999994 0.54360795 0.45833331 0.54360795 0.41666669 0.54360795 0.37500003
		 0.54360795 0.625 0.54360795 0.58333331 0.54360795 0.54166663 0.54360795 0.49999997
		 0.58914256 0.45833331 0.58914256 0.41666669 0.58914256 0.37500006 0.58914256 0.625
		 0.58914256 0.58333331 0.58914256 0.54166663 0.58914256 0.49999994 0.62784201 0.45833331
		 0.62784201 0.41666666 0.62784201 0.37500003 0.62784201 0.625 0.62784201 0.58333331
		 0.62784201 0.54166663 0.62784201 0.49999994 0.66695076 0.45833331 0.66695076 0.41666663
		 0.66695076 0.375 0.66695076 0.625 0.66695076 0.58333331 0.66695076 0.54166663 0.66695076
		 0.49999997 0.68843985 0.45833331 0.68843985 0.41666666 0.68843985 0.375 0.68843985
		 0.625 0.68843985 0.58333331 0.68843985 0.54166663 0.68843985 0 0.2 0.16666667 0.2
		 0.16666667 0.40000001 0 0.40000001 0.33333334 0.2 0.33333334 0.40000001 0.5 0.2 0.5
		 0.40000001 0.66666669 0.2 0.66666669 0.40000001 0.83333337 0.2 0.83333337 0.40000001
		 1 0.2 1 0.40000001 0.16666667 0.60000002 0 0.60000002 0.33333334 0.60000002 0.5 0.60000002
		 0.66666669 0.60000002 0.83333337 0.60000002 1 0.60000002 0.16666667 0.80000001 0
		 0.80000001 0.33333334 0.80000001 0.5 0.80000001 0.66666669 0.80000001 0.83333337
		 0.80000001 1 0.80000001 0.083333336 0 0.25 0 0.41666669 0 0.58333337 0 0.75 0 0.91666669
		 0 0.083333336 1 0.25 1 0.41666669 1 0.58333337 1 0.75 1 0.91666669 1 0.375 0.3125
		 0.41666666 0.3125 0.41666669 0.35731328 0.375 0.35731328 0.45833331 0.3125 0.45833331
		 0.35731328 0.49999997 0.3125 0.49999997 0.35731328 0.54166663 0.3125 0.54166663 0.35731328
		 0.58333331 0.3125 0.58333331 0.35731328 0.625 0.3125 0.625 0.35731328 0.42187503
		 0.020933509 0.57812506 0.020933539 0.5 0.15000001 0.34375 0.15624997 0.421875 0.29156646
		 0.578125 0.29156649 0.65625 0.15625 0.578125 0.97906649 0.421875 0.97906649 0.5 0.83749998
		 0.34375 0.84375 0.42187503 0.70843351 0.57812506 0.70843351 0.65625 0.84375 0.49999997
		 0.41046759 0.45833331 0.41046759 0.41666669 0.41046759 0.37500003 0.41046759 0.625
		 0.41046759 0.58333331 0.41046759 0.54166663 0.41046759 0.49999997 0.45554912 0.45833331
		 0.45554912 0.41666669 0.45554912 0.37500003 0.45554912 0.625 0.45554912 0.58333331
		 0.45554912 0.54166663 0.45554912 0.49999994 0.49888307 0.45833331 0.49888307 0.41666669
		 0.49888307 0.37500003 0.49888307 0.625 0.49888307 0.58333331 0.49888307 0.54166663
		 0.49888307 0.49999994 0.54360795 0.45833331 0.54360795 0.41666669 0.54360795 0.37500003
		 0.54360795 0.625 0.54360795 0.58333331 0.54360795 0.54166663 0.54360795 0.49999997
		 0.58914256 0.45833331 0.58914256 0.41666669 0.58914256 0.37500006 0.58914256 0.625
		 0.58914256 0.58333331 0.58914256 0.54166663 0.58914256 0.49999994 0.62784201 0.45833331
		 0.62784201 0.41666666 0.62784201 0.37500003 0.62784201 0.625 0.62784201 0.58333331
		 0.62784201 0.54166663 0.62784201 0.49999994 0.66695076 0.45833331 0.66695076 0.41666663
		 0.66695076 0.375 0.66695076 0.625 0.66695076 0.58333331 0.66695076 0.54166663 0.66695076
		 0.49999997 0.68843985 0.45833331 0.68843985 0.41666666 0.68843985 0.375 0.68843985
		 0.625 0.68843985 0.58333331 0.68843985 0.54166663 0.68843985 0.375 0.3125 0.41666666
		 0.3125 0.41666669 0.35731328 0.375 0.35731328 0.45833331 0.3125 0.45833331 0.35731328;
	setAttr ".uvst[0].uvsp[750:999]" 0.49999997 0.3125 0.49999997 0.35731328 0.54166663
		 0.3125 0.54166663 0.35731328 0.58333331 0.3125 0.58333331 0.35731328 0.625 0.3125
		 0.625 0.35731328 0.42187503 0.020933509 0.57812506 0.020933539 0.5 0.15000001 0.34375
		 0.15624997 0.421875 0.29156646 0.578125 0.29156649 0.65625 0.15625 0.578125 0.97906649
		 0.421875 0.97906649 0.5 0.83749998 0.34375 0.84375 0.42187503 0.70843351 0.57812506
		 0.70843351 0.65625 0.84375 0.49999997 0.41046759 0.45833331 0.41046759 0.41666669
		 0.41046759 0.37500003 0.41046759 0.625 0.41046759 0.58333331 0.41046759 0.54166663
		 0.41046759 0.49999997 0.45554912 0.45833331 0.45554912 0.41666669 0.45554912 0.37500003
		 0.45554912 0.625 0.45554912 0.58333331 0.45554912 0.54166663 0.45554912 0.49999994
		 0.49888307 0.45833331 0.49888307 0.41666669 0.49888307 0.37500003 0.49888307 0.625
		 0.49888307 0.58333331 0.49888307 0.54166663 0.49888307 0.49999994 0.54360795 0.45833331
		 0.54360795 0.41666669 0.54360795 0.37500003 0.54360795 0.625 0.54360795 0.58333331
		 0.54360795 0.54166663 0.54360795 0.49999997 0.58914256 0.45833331 0.58914256 0.41666669
		 0.58914256 0.37500006 0.58914256 0.625 0.58914256 0.58333331 0.58914256 0.54166663
		 0.58914256 0.49999994 0.62784201 0.45833331 0.62784201 0.41666666 0.62784201 0.37500003
		 0.62784201 0.625 0.62784201 0.58333331 0.62784201 0.54166663 0.62784201 0.49999994
		 0.66695076 0.45833331 0.66695076 0.41666663 0.66695076 0.375 0.66695076 0.625 0.66695076
		 0.58333331 0.66695076 0.54166663 0.66695076 0.49999997 0.68843985 0.45833331 0.68843985
		 0.41666666 0.68843985 0.375 0.68843985 0.625 0.68843985 0.58333331 0.68843985 0.54166663
		 0.68843985 0 0.2 0.16666667 0.2 0.16666667 0.40000001 0 0.40000001 0.33333334 0.2
		 0.33333334 0.40000001 0.5 0.2 0.5 0.40000001 0.66666669 0.2 0.66666669 0.40000001
		 0.83333337 0.2 0.83333337 0.40000001 1 0.2 1 0.40000001 0.16666667 0.60000002 0 0.60000002
		 0.33333334 0.60000002 0.5 0.60000002 0.66666669 0.60000002 0.83333337 0.60000002
		 1 0.60000002 0.16666667 0.80000001 0 0.80000001 0.33333334 0.80000001 0.5 0.80000001
		 0.66666669 0.80000001 0.83333337 0.80000001 1 0.80000001 0.083333336 0 0.25 0 0.41666669
		 0 0.58333337 0 0.75 0 0.91666669 0 0.083333336 1 0.25 1 0.41666669 1 0.58333337 1
		 0.75 1 0.91666669 1 0 0.2 0.16666667 0.2 0.16666667 0.40000001 0 0.40000001 0.33333334
		 0.2 0.33333334 0.40000001 0.5 0.2 0.5 0.40000001 0.66666669 0.2 0.66666669 0.40000001
		 0.83333337 0.2 0.83333337 0.40000001 1 0.2 1 0.40000001 0.16666667 0.60000002 0 0.60000002
		 0.33333334 0.60000002 0.5 0.60000002 0.66666669 0.60000002 0.83333337 0.60000002
		 1 0.60000002 0.16666667 0.80000001 0 0.80000001 0.33333334 0.80000001 0.5 0.80000001
		 0.66666669 0.80000001 0.83333337 0.80000001 1 0.80000001 0.083333336 0 0.25 0 0.41666669
		 0 0.58333337 0 0.75 0 0.91666669 0 0.083333336 1 0.25 1 0.41666669 1 0.58333337 1
		 0.75 1 0.91666669 1 0.375 0.3125 0.41666666 0.3125 0.41666669 0.35731328 0.375 0.35731328
		 0.45833331 0.3125 0.45833331 0.35731328 0.49999997 0.3125 0.49999997 0.35731328 0.54166663
		 0.3125 0.54166663 0.35731328 0.58333331 0.3125 0.58333331 0.35731328 0.625 0.3125
		 0.625 0.35731328 0.42187503 0.020933509 0.57812506 0.020933539 0.5 0.15000001 0.34375
		 0.15624997 0.421875 0.29156646 0.578125 0.29156649 0.65625 0.15625 0.578125 0.97906649
		 0.421875 0.97906649 0.5 0.83749998 0.34375 0.84375 0.42187503 0.70843351 0.57812506
		 0.70843351 0.65625 0.84375 0.49999997 0.41046759 0.45833331 0.41046759 0.41666669
		 0.41046759 0.37500003 0.41046759 0.625 0.41046759 0.58333331 0.41046759 0.54166663
		 0.41046759 0.49999997 0.45554912 0.45833331 0.45554912 0.41666669 0.45554912 0.37500003
		 0.45554912 0.625 0.45554912 0.58333331 0.45554912 0.54166663 0.45554912 0.49999994
		 0.49888307 0.45833331 0.49888307 0.41666669 0.49888307 0.37500003 0.49888307 0.625
		 0.49888307 0.58333331 0.49888307 0.54166663 0.49888307 0.49999994 0.54360795 0.45833331
		 0.54360795 0.41666669 0.54360795 0.37500003 0.54360795 0.625 0.54360795 0.58333331
		 0.54360795 0.54166663 0.54360795 0.49999997 0.58914256 0.45833331 0.58914256 0.41666669
		 0.58914256 0.37500006 0.58914256 0.625 0.58914256 0.58333331 0.58914256 0.54166663
		 0.58914256 0.49999994 0.62784201 0.45833331 0.62784201 0.41666666 0.62784201 0.37500003
		 0.62784201 0.625 0.62784201 0.58333331 0.62784201 0.54166663 0.62784201 0.49999994
		 0.66695076 0.45833331 0.66695076 0.41666663 0.66695076 0.375 0.66695076 0.625 0.66695076
		 0.58333331 0.66695076 0.54166663 0.66695076 0.49999997 0.68843985 0.45833331 0.68843985
		 0.41666666 0.68843985 0.375 0.68843985 0.625 0.68843985 0.58333331 0.68843985 0.54166663
		 0.68843985 0 0.2 0.16666667 0.2 0.16666667 0.40000001 0 0.40000001 0.33333334 0.2
		 0.33333334 0.40000001 0.5 0.2 0.5 0.40000001;
	setAttr ".uvst[0].uvsp[1000:1249]" 0.66666669 0.2 0.66666669 0.40000001 0.83333337
		 0.2 0.83333337 0.40000001 1 0.2 1 0.40000001 0.16666667 0.60000002 0 0.60000002 0.33333334
		 0.60000002 0.5 0.60000002 0.66666669 0.60000002 0.83333337 0.60000002 1 0.60000002
		 0.16666667 0.80000001 0 0.80000001 0.33333334 0.80000001 0.5 0.80000001 0.66666669
		 0.80000001 0.83333337 0.80000001 1 0.80000001 0.083333336 0 0.25 0 0.41666669 0 0.58333337
		 0 0.75 0 0.91666669 0 0.083333336 1 0.25 1 0.41666669 1 0.58333337 1 0.75 1 0.91666669
		 1 0.375 0.3125 0.41666666 0.3125 0.41666669 0.35731328 0.375 0.35731328 0.45833331
		 0.3125 0.45833331 0.35731328 0.49999997 0.3125 0.49999997 0.35731328 0.54166663 0.3125
		 0.54166663 0.35731328 0.58333331 0.3125 0.58333331 0.35731328 0.625 0.3125 0.625
		 0.35731328 0.42187503 0.020933509 0.57812506 0.020933539 0.5 0.15000001 0.34375 0.15624997
		 0.421875 0.29156646 0.578125 0.29156649 0.65625 0.15625 0.578125 0.97906649 0.421875
		 0.97906649 0.5 0.83749998 0.34375 0.84375 0.42187503 0.70843351 0.57812506 0.70843351
		 0.65625 0.84375 0.49999997 0.41046759 0.45833331 0.41046759 0.41666669 0.41046759
		 0.37500003 0.41046759 0.625 0.41046759 0.58333331 0.41046759 0.54166663 0.41046759
		 0.49999997 0.45554912 0.45833331 0.45554912 0.41666669 0.45554912 0.37500003 0.45554912
		 0.625 0.45554912 0.58333331 0.45554912 0.54166663 0.45554912 0.49999994 0.49888307
		 0.45833331 0.49888307 0.41666669 0.49888307 0.37500003 0.49888307 0.625 0.49888307
		 0.58333331 0.49888307 0.54166663 0.49888307 0.49999994 0.54360795 0.45833331 0.54360795
		 0.41666669 0.54360795 0.37500003 0.54360795 0.625 0.54360795 0.58333331 0.54360795
		 0.54166663 0.54360795 0.49999997 0.58914256 0.45833331 0.58914256 0.41666669 0.58914256
		 0.37500006 0.58914256 0.625 0.58914256 0.58333331 0.58914256 0.54166663 0.58914256
		 0.49999994 0.62784201 0.45833331 0.62784201 0.41666666 0.62784201 0.37500003 0.62784201
		 0.625 0.62784201 0.58333331 0.62784201 0.54166663 0.62784201 0.49999994 0.66695076
		 0.45833331 0.66695076 0.41666663 0.66695076 0.375 0.66695076 0.625 0.66695076 0.58333331
		 0.66695076 0.54166663 0.66695076 0.49999997 0.68843985 0.45833331 0.68843985 0.41666666
		 0.68843985 0.375 0.68843985 0.625 0.68843985 0.58333331 0.68843985 0.54166663 0.68843985
		 0.375 0.3125 0.41666666 0.3125 0.41666669 0.35731328 0.375 0.35731328 0.45833331
		 0.3125 0.45833331 0.35731328 0.49999997 0.3125 0.49999997 0.35731328 0.54166663 0.3125
		 0.54166663 0.35731328 0.58333331 0.3125 0.58333331 0.35731328 0.625 0.3125 0.625
		 0.35731328 0.42187503 0.020933509 0.57812506 0.020933539 0.5 0.15000001 0.34375 0.15624997
		 0.421875 0.29156646 0.578125 0.29156649 0.65625 0.15625 0.578125 0.97906649 0.421875
		 0.97906649 0.5 0.83749998 0.34375 0.84375 0.42187503 0.70843351 0.57812506 0.70843351
		 0.65625 0.84375 0.49999997 0.41046759 0.45833331 0.41046759 0.41666669 0.41046759
		 0.37500003 0.41046759 0.625 0.41046759 0.58333331 0.41046759 0.54166663 0.41046759
		 0.49999997 0.45554912 0.45833331 0.45554912 0.41666669 0.45554912 0.37500003 0.45554912
		 0.625 0.45554912 0.58333331 0.45554912 0.54166663 0.45554912 0.49999994 0.49888307
		 0.45833331 0.49888307 0.41666669 0.49888307 0.37500003 0.49888307 0.625 0.49888307
		 0.58333331 0.49888307 0.54166663 0.49888307 0.49999994 0.54360795 0.45833331 0.54360795
		 0.41666669 0.54360795 0.37500003 0.54360795 0.625 0.54360795 0.58333331 0.54360795
		 0.54166663 0.54360795 0.49999997 0.58914256 0.45833331 0.58914256 0.41666669 0.58914256
		 0.37500006 0.58914256 0.625 0.58914256 0.58333331 0.58914256 0.54166663 0.58914256
		 0.49999994 0.62784201 0.45833331 0.62784201 0.41666666 0.62784201 0.37500003 0.62784201
		 0.625 0.62784201 0.58333331 0.62784201 0.54166663 0.62784201 0.49999994 0.66695076
		 0.45833331 0.66695076 0.41666663 0.66695076 0.375 0.66695076 0.625 0.66695076 0.58333331
		 0.66695076 0.54166663 0.66695076 0.49999997 0.68843985 0.45833331 0.68843985 0.41666666
		 0.68843985 0.375 0.68843985 0.625 0.68843985 0.58333331 0.68843985 0.54166663 0.68843985
		 0 0.2 0.16666667 0.2 0.16666667 0.40000001 0 0.40000001 0.33333334 0.2 0.33333334
		 0.40000001 0.5 0.2 0.5 0.40000001 0.66666669 0.2 0.66666669 0.40000001 0.83333337
		 0.2 0.83333337 0.40000001 1 0.2 1 0.40000001 0.16666667 0.60000002 0 0.60000002 0.33333334
		 0.60000002 0.5 0.60000002 0.66666669 0.60000002 0.83333337 0.60000002 1 0.60000002
		 0.16666667 0.80000001 0 0.80000001 0.33333334 0.80000001 0.5 0.80000001 0.66666669
		 0.80000001 0.83333337 0.80000001 1 0.80000001 0.083333336 0 0.25 0 0.41666669 0 0.58333337
		 0 0.75 0 0.91666669 0 0.083333336 1 0.25 1 0.41666669 1 0.58333337 1 0.75 1 0.91666669
		 1 0 0.2 0.16666667 0.2 0.16666667 0.40000001 0 0.40000001 0.33333334 0.2 0.33333334
		 0.40000001 0.5 0.2 0.5 0.40000001 0.66666669 0.2 0.66666669 0.40000001;
	setAttr ".uvst[0].uvsp[1250:1499]" 0.83333337 0.2 0.83333337 0.40000001 1 0.2
		 1 0.40000001 0.16666667 0.60000002 0 0.60000002 0.33333334 0.60000002 0.5 0.60000002
		 0.66666669 0.60000002 0.83333337 0.60000002 1 0.60000002 0.16666667 0.80000001 0
		 0.80000001 0.33333334 0.80000001 0.5 0.80000001 0.66666669 0.80000001 0.83333337
		 0.80000001 1 0.80000001 0.083333336 0 0.25 0 0.41666669 0 0.58333337 0 0.75 0 0.91666669
		 0 0.083333336 1 0.25 1 0.41666669 1 0.58333337 1 0.75 1 0.91666669 1 0.375 0.3125
		 0.41666666 0.3125 0.41666669 0.35731328 0.375 0.35731328 0.45833331 0.3125 0.45833331
		 0.35731328 0.49999997 0.3125 0.49999997 0.35731328 0.54166663 0.3125 0.54166663 0.35731328
		 0.58333331 0.3125 0.58333331 0.35731328 0.625 0.3125 0.625 0.35731328 0.42187503
		 0.020933509 0.57812506 0.020933539 0.5 0.15000001 0.34375 0.15624997 0.421875 0.29156646
		 0.578125 0.29156649 0.65625 0.15625 0.578125 0.97906649 0.421875 0.97906649 0.5 0.83749998
		 0.34375 0.84375 0.42187503 0.70843351 0.57812506 0.70843351 0.65625 0.84375 0.49999997
		 0.41046759 0.45833331 0.41046759 0.41666669 0.41046759 0.37500003 0.41046759 0.625
		 0.41046759 0.58333331 0.41046759 0.54166663 0.41046759 0.49999997 0.45554912 0.45833331
		 0.45554912 0.41666669 0.45554912 0.37500003 0.45554912 0.625 0.45554912 0.58333331
		 0.45554912 0.54166663 0.45554912 0.49999994 0.49888307 0.45833331 0.49888307 0.41666669
		 0.49888307 0.37500003 0.49888307 0.625 0.49888307 0.58333331 0.49888307 0.54166663
		 0.49888307 0.49999994 0.54360795 0.45833331 0.54360795 0.41666669 0.54360795 0.37500003
		 0.54360795 0.625 0.54360795 0.58333331 0.54360795 0.54166663 0.54360795 0.49999997
		 0.58914256 0.45833331 0.58914256 0.41666669 0.58914256 0.37500006 0.58914256 0.625
		 0.58914256 0.58333331 0.58914256 0.54166663 0.58914256 0.49999994 0.62784201 0.45833331
		 0.62784201 0.41666666 0.62784201 0.37500003 0.62784201 0.625 0.62784201 0.58333331
		 0.62784201 0.54166663 0.62784201 0.49999994 0.66695076 0.45833331 0.66695076 0.41666663
		 0.66695076 0.375 0.66695076 0.625 0.66695076 0.58333331 0.66695076 0.54166663 0.66695076
		 0.49999997 0.68843985 0.45833331 0.68843985 0.41666666 0.68843985 0.375 0.68843985
		 0.625 0.68843985 0.58333331 0.68843985 0.54166663 0.68843985 0 0.2 0.16666667 0.2
		 0.16666667 0.40000001 0 0.40000001 0.33333334 0.2 0.33333334 0.40000001 0.5 0.2 0.5
		 0.40000001 0.66666669 0.2 0.66666669 0.40000001 0.83333337 0.2 0.83333337 0.40000001
		 1 0.2 1 0.40000001 0.16666667 0.60000002 0 0.60000002 0.33333334 0.60000002 0.5 0.60000002
		 0.66666669 0.60000002 0.83333337 0.60000002 1 0.60000002 0.16666667 0.80000001 0
		 0.80000001 0.33333334 0.80000001 0.5 0.80000001 0.66666669 0.80000001 0.83333337
		 0.80000001 1 0.80000001 0.083333336 0 0.25 0 0.41666669 0 0.58333337 0 0.75 0 0.91666669
		 0 0.083333336 1 0.25 1 0.41666669 1 0.58333337 1 0.75 1 0.91666669 1 0.375 0.3125
		 0.41666666 0.3125 0.41666669 0.35731328 0.375 0.35731328 0.45833331 0.3125 0.45833331
		 0.35731328 0.49999997 0.3125 0.49999997 0.35731328 0.54166663 0.3125 0.54166663 0.35731328
		 0.58333331 0.3125 0.58333331 0.35731328 0.625 0.3125 0.625 0.35731328 0.42187503
		 0.020933509 0.57812506 0.020933539 0.5 0.15000001 0.34375 0.15624997 0.421875 0.29156646
		 0.578125 0.29156649 0.65625 0.15625 0.578125 0.97906649 0.421875 0.97906649 0.5 0.83749998
		 0.34375 0.84375 0.42187503 0.70843351 0.57812506 0.70843351 0.65625 0.84375 0.49999997
		 0.41046759 0.45833331 0.41046759 0.41666669 0.41046759 0.37500003 0.41046759 0.625
		 0.41046759 0.58333331 0.41046759 0.54166663 0.41046759 0.49999997 0.45554912 0.45833331
		 0.45554912 0.41666669 0.45554912 0.37500003 0.45554912 0.625 0.45554912 0.58333331
		 0.45554912 0.54166663 0.45554912 0.49999994 0.49888307 0.45833331 0.49888307 0.41666669
		 0.49888307 0.37500003 0.49888307 0.625 0.49888307 0.58333331 0.49888307 0.54166663
		 0.49888307 0.49999994 0.54360795 0.45833331 0.54360795 0.41666669 0.54360795 0.37500003
		 0.54360795 0.625 0.54360795 0.58333331 0.54360795 0.54166663 0.54360795 0.49999997
		 0.58914256 0.45833331 0.58914256 0.41666669 0.58914256 0.37500006 0.58914256 0.625
		 0.58914256 0.58333331 0.58914256 0.54166663 0.58914256 0.49999994 0.62784201 0.45833331
		 0.62784201 0.41666666 0.62784201 0.37500003 0.62784201 0.625 0.62784201 0.58333331
		 0.62784201 0.54166663 0.62784201 0.49999994 0.66695076 0.45833331 0.66695076 0.41666663
		 0.66695076 0.375 0.66695076 0.625 0.66695076 0.58333331 0.66695076 0.54166663 0.66695076
		 0.49999997 0.68843985 0.45833331 0.68843985 0.41666666 0.68843985 0.375 0.68843985
		 0.625 0.68843985 0.58333331 0.68843985 0.54166663 0.68843985 0 0.2 0.16666667 0.2
		 0.16666667 0.40000001 0 0.40000001 0.33333334 0.2 0.33333334 0.40000001 0.5 0.2 0.5
		 0.40000001 0.66666669 0.2 0.66666669 0.40000001 0.83333337 0.2 0.83333337 0.40000001;
	setAttr ".uvst[0].uvsp[1500:1749]" 1 0.2 1 0.40000001 0.16666667 0.60000002 0
		 0.60000002 0.33333334 0.60000002 0.5 0.60000002 0.66666669 0.60000002 0.83333337
		 0.60000002 1 0.60000002 0.16666667 0.80000001 0 0.80000001 0.33333334 0.80000001
		 0.5 0.80000001 0.66666669 0.80000001 0.83333337 0.80000001 1 0.80000001 0.083333336
		 0 0.25 0 0.41666669 0 0.58333337 0 0.75 0 0.91666669 0 0.083333336 1 0.25 1 0.41666669
		 1 0.58333337 1 0.75 1 0.91666669 1 0.375 0.3125 0.41666666 0.3125 0.41666669 0.35731328
		 0.375 0.35731328 0.45833331 0.3125 0.45833331 0.35731328 0.49999997 0.3125 0.49999997
		 0.35731328 0.54166663 0.3125 0.54166663 0.35731328 0.58333331 0.3125 0.58333331 0.35731328
		 0.625 0.3125 0.625 0.35731328 0.42187503 0.020933509 0.57812506 0.020933539 0.5 0.15000001
		 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649 0.65625 0.15625 0.578125
		 0.97906649 0.421875 0.97906649 0.5 0.83749998 0.34375 0.84375 0.42187503 0.70843351
		 0.57812506 0.70843351 0.65625 0.84375 0.49999997 0.41046759 0.45833331 0.41046759
		 0.41666669 0.41046759 0.37500003 0.41046759 0.625 0.41046759 0.58333331 0.41046759
		 0.54166663 0.41046759 0.49999997 0.45554912 0.45833331 0.45554912 0.41666669 0.45554912
		 0.37500003 0.45554912 0.625 0.45554912 0.58333331 0.45554912 0.54166663 0.45554912
		 0.49999994 0.49888307 0.45833331 0.49888307 0.41666669 0.49888307 0.37500003 0.49888307
		 0.625 0.49888307 0.58333331 0.49888307 0.54166663 0.49888307 0.49999994 0.54360795
		 0.45833331 0.54360795 0.41666669 0.54360795 0.37500003 0.54360795 0.625 0.54360795
		 0.58333331 0.54360795 0.54166663 0.54360795 0.49999997 0.58914256 0.45833331 0.58914256
		 0.41666669 0.58914256 0.37500006 0.58914256 0.625 0.58914256 0.58333331 0.58914256
		 0.54166663 0.58914256 0.49999994 0.62784201 0.45833331 0.62784201 0.41666666 0.62784201
		 0.37500003 0.62784201 0.625 0.62784201 0.58333331 0.62784201 0.54166663 0.62784201
		 0.49999994 0.66695076 0.45833331 0.66695076 0.41666663 0.66695076 0.375 0.66695076
		 0.625 0.66695076 0.58333331 0.66695076 0.54166663 0.66695076 0.49999997 0.68843985
		 0.45833331 0.68843985 0.41666666 0.68843985 0.375 0.68843985 0.625 0.68843985 0.58333331
		 0.68843985 0.54166663 0.68843985 0 0.2 0.16666667 0.2 0.16666667 0.40000001 0 0.40000001
		 0.33333334 0.2 0.33333334 0.40000001 0.5 0.2 0.5 0.40000001 0.66666669 0.2 0.66666669
		 0.40000001 0.83333337 0.2 0.83333337 0.40000001 1 0.2 1 0.40000001 0.16666667 0.60000002
		 0 0.60000002 0.33333334 0.60000002 0.5 0.60000002 0.66666669 0.60000002 0.83333337
		 0.60000002 1 0.60000002 0.16666667 0.80000001 0 0.80000001 0.33333334 0.80000001
		 0.5 0.80000001 0.66666669 0.80000001 0.83333337 0.80000001 1 0.80000001 0.083333336
		 0 0.25 0 0.41666669 0 0.58333337 0 0.75 0 0.91666669 0 0.083333336 1 0.25 1 0.41666669
		 1 0.58333337 1 0.75 1 0.91666669 1 0.375 0.3125 0.41666666 0.3125 0.41666669 0.35731328
		 0.375 0.35731328 0.45833331 0.3125 0.45833331 0.35731328 0.49999997 0.3125 0.49999997
		 0.35731328 0.54166663 0.3125 0.54166663 0.35731328 0.58333331 0.3125 0.58333331 0.35731328
		 0.625 0.3125 0.625 0.35731328 0.42187503 0.020933509 0.57812506 0.020933539 0.5 0.15000001
		 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649 0.65625 0.15625 0.578125
		 0.97906649 0.421875 0.97906649 0.5 0.83749998 0.34375 0.84375 0.42187503 0.70843351
		 0.57812506 0.70843351 0.65625 0.84375 0.49999997 0.41046759 0.45833331 0.41046759
		 0.41666669 0.41046759 0.37500003 0.41046759 0.625 0.41046759 0.58333331 0.41046759
		 0.54166663 0.41046759 0.49999997 0.45554912 0.45833331 0.45554912 0.41666669 0.45554912
		 0.37500003 0.45554912 0.625 0.45554912 0.58333331 0.45554912 0.54166663 0.45554912
		 0.49999994 0.49888307 0.45833331 0.49888307 0.41666669 0.49888307 0.37500003 0.49888307
		 0.625 0.49888307 0.58333331 0.49888307 0.54166663 0.49888307 0.49999994 0.54360795
		 0.45833331 0.54360795 0.41666669 0.54360795 0.37500003 0.54360795 0.625 0.54360795
		 0.58333331 0.54360795 0.54166663 0.54360795 0.49999997 0.58914256 0.45833331 0.58914256
		 0.41666669 0.58914256 0.37500006 0.58914256 0.625 0.58914256 0.58333331 0.58914256
		 0.54166663 0.58914256 0.49999994 0.62784201 0.45833331 0.62784201 0.41666666 0.62784201
		 0.37500003 0.62784201 0.625 0.62784201 0.58333331 0.62784201 0.54166663 0.62784201
		 0.49999994 0.66695076 0.45833331 0.66695076 0.41666663 0.66695076 0.375 0.66695076
		 0.625 0.66695076 0.58333331 0.66695076 0.54166663 0.66695076 0.49999997 0.68843985
		 0.45833331 0.68843985 0.41666666 0.68843985 0.375 0.68843985 0.625 0.68843985 0.58333331
		 0.68843985 0.54166663 0.68843985 0.375 0.3125 0.41666666 0.3125 0.41666669 0.35731328
		 0.375 0.35731328 0.45833331 0.3125 0.45833331 0.35731328 0.49999997 0.3125 0.49999997
		 0.35731328 0.54166663 0.3125 0.54166663 0.35731328 0.58333331 0.3125 0.58333331 0.35731328
		 0.625 0.3125 0.625 0.35731328;
	setAttr ".uvst[0].uvsp[1750:1859]" 0.42187503 0.020933509 0.57812506 0.020933539
		 0.5 0.15000001 0.34375 0.15624997 0.421875 0.29156646 0.578125 0.29156649 0.65625
		 0.15625 0.578125 0.97906649 0.421875 0.97906649 0.5 0.83749998 0.34375 0.84375 0.42187503
		 0.70843351 0.57812506 0.70843351 0.65625 0.84375 0.49999997 0.41046759 0.45833331
		 0.41046759 0.41666669 0.41046759 0.37500003 0.41046759 0.625 0.41046759 0.58333331
		 0.41046759 0.54166663 0.41046759 0.49999997 0.45554912 0.45833331 0.45554912 0.41666669
		 0.45554912 0.37500003 0.45554912 0.625 0.45554912 0.58333331 0.45554912 0.54166663
		 0.45554912 0.49999994 0.49888307 0.45833331 0.49888307 0.41666669 0.49888307 0.37500003
		 0.49888307 0.625 0.49888307 0.58333331 0.49888307 0.54166663 0.49888307 0.49999994
		 0.54360795 0.45833331 0.54360795 0.41666669 0.54360795 0.37500003 0.54360795 0.625
		 0.54360795 0.58333331 0.54360795 0.54166663 0.54360795 0.49999997 0.58914256 0.45833331
		 0.58914256 0.41666669 0.58914256 0.37500006 0.58914256 0.625 0.58914256 0.58333331
		 0.58914256 0.54166663 0.58914256 0.49999994 0.62784201 0.45833331 0.62784201 0.41666666
		 0.62784201 0.37500003 0.62784201 0.625 0.62784201 0.58333331 0.62784201 0.54166663
		 0.62784201 0.49999994 0.66695076 0.45833331 0.66695076 0.41666663 0.66695076 0.375
		 0.66695076 0.625 0.66695076 0.58333331 0.66695076 0.54166663 0.66695076 0.49999997
		 0.68843985 0.45833331 0.68843985 0.41666666 0.68843985 0.375 0.68843985 0.625 0.68843985
		 0.58333331 0.68843985 0.54166663 0.68843985 0 0.2 0.16666667 0.2 0.16666667 0.40000001
		 0 0.40000001 0.33333334 0.2 0.33333334 0.40000001 0.5 0.2 0.5 0.40000001 0.66666669
		 0.2 0.66666669 0.40000001 0.83333337 0.2 0.83333337 0.40000001 1 0.2 1 0.40000001
		 0.16666667 0.60000002 0 0.60000002 0.33333334 0.60000002 0.5 0.60000002 0.66666669
		 0.60000002 0.83333337 0.60000002 1 0.60000002 0.16666667 0.80000001 0 0.80000001
		 0.33333334 0.80000001 0.5 0.80000001 0.66666669 0.80000001 0.83333337 0.80000001
		 1 0.80000001 0.083333336 0 0.25 0 0.41666669 0 0.58333337 0 0.75 0 0.91666669 0 0.083333336
		 1 0.25 1 0.41666669 1 0.58333337 1 0.75 1 0.91666669 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 1320 ".vt";
	setAttr ".vt[0:165]"  0.092766732 -0.048919678 -0.16067651 -0.092766732 -0.048919678 -0.16067651
		 -0.18553346 -0.048919678 -2.7646594e-08 -0.092766732 -0.048919678 0.16067651 0.092766732 -0.048919678 0.16067651
		 0.18553346 -0.048919678 7.4452061e-19 0.092766739 13.29823494 -0.16067651 -0.092766739 13.29823494 -0.16067651
		 -0.18553348 13.29823494 -2.7646589e-08 -0.092766739 13.29823494 0.16067651 0.092766739 13.29823494 0.16067651
		 0.18553348 13.29823494 -8.6889434e-18 8.1127753e-34 -0.048919678 4.5674752e-19 -3.1897517e-33 13.29823494 -1.2214482e-17
		 -0.092766732 1.54210484 0.16067651 -0.18553346 1.54210484 -2.7646594e-08 -0.092766732 1.54210484 -0.16067651
		 0.092766732 1.54210484 -0.16067651 0.18553346 1.54210484 -8.8216256e-18 0.092766732 1.54210484 0.16067651
		 -0.092766732 3.42926598 0.16067651 -0.18553346 3.42926598 -2.7646594e-08 -0.092766732 3.42926598 -0.16067651
		 0.092766732 3.42926598 -0.16067651 0.18553346 3.42926598 -9.5063939e-18 0.092766732 3.42926598 0.16067651
		 -0.092766732 5.029815674 0.16067651 -0.18553346 5.029815674 -2.7646594e-08 -0.092766732 5.029815674 -0.16067651
		 0.092766732 5.029815674 -0.16067651 0.18553346 5.029815674 3.1682715e-18 0.092766732 5.029815674 0.16067651
		 -0.092766672 6.5683198 0.16067649 -0.18553346 6.5683198 -2.7646593e-08 -0.092766732 6.5683198 -0.16067649
		 0.092766732 6.5683198 -0.16067649 0.18553346 6.5683198 1.3849233e-17 0.092766732 6.5683198 0.16067649
		 -0.092766732 8.15620518 0.16067649 -0.18553346 8.15620518 -2.7646591e-08 -0.092766732 8.15620518 -0.16067649
		 0.092766732 8.15620518 -0.16067649 0.18553346 8.15620518 2.3634846e-17 0.092766732 8.15620518 0.16067649
		 -0.092766732 9.7728405 0.16067651 -0.18553346 9.7728405 -2.7646589e-08 -0.092766732 9.7728405 -0.16067651
		 0.092766732 9.7728405 -0.16067651 0.18553346 9.7728405 3.1730595e-17 0.092766732 9.7728405 0.16067651
		 -0.092766732 11.14680481 0.16067651 -0.18553346 11.14680481 -2.7646589e-08 -0.092766732 11.14680481 -0.16067651
		 0.092766732 11.14680481 -0.16067651 0.18553346 11.14680481 1.6267943e-17 0.092766732 11.14680481 0.16067651
		 -0.092766739 12.53529835 0.16067651 -0.18553348 12.53529835 -2.7646589e-08 -0.092766739 12.53529835 -0.16067651
		 0.092766739 12.53529835 -0.16067651 0.18553348 12.53529835 -5.6409967e-18 0.092766739 12.53529835 0.16067651
		 0.00054447353 3.53153443 -0.12475634 -0.12732257 3.46518445 -0.12475634 -0.19125609 3.4320097 -9.4059535e-18
		 -0.12732257 3.46518445 0.12475657 0.00054447353 3.53153443 0.12475657 0.064477995 3.56470919 -1.1664743e-17
		 -4.77261782 12.73020363 -0.12475634 -4.90048456 12.6638546 -0.12475634 -4.96441841 12.63067913 1.6006632e-18
		 -4.90048456 12.6638546 0.12475657 -4.77261782 12.73020363 0.12475657 -4.70868397 12.7633791 1.8833453e-18
		 -0.063389048 3.49835944 -1.1765219e-17 -4.83655119 12.69702911 1.7415814e-18 -0.69629908 4.56169605 0.12475657
		 -0.76023269 4.52852106 1.041235e-18 -0.69629908 4.56169605 -0.12475634 -0.56843209 4.62804604 -0.12475634
		 -0.5044986 4.66122103 1.0723736e-18 -0.56843209 4.62804604 0.12475657 -1.37117898 5.86230087 0.12475657
		 -1.43511248 5.82912636 3.238104e-18 -1.37117898 5.86230087 -0.12475634 -1.243312 5.92865086 -0.12475634
		 -1.17937851 5.96182537 4.0945597e-18 -1.243312 5.92865086 0.12475657 -1.94356179 6.96537685 0.12475657
		 -2.0074954033 6.93220234 4.6570856e-18 -1.94356179 6.96537685 -0.12475634 -1.81569481 7.031726837 -0.12475634
		 -1.7517612 7.064901829 5.7260519e-18 -1.81569481 7.031726837 0.12475657 -2.49375629 8.025691986 0.12475657
		 -2.55768967 7.99251747 4.3734027e-18 -2.49375629 8.025691986 -0.12475634 -2.36588907 8.092041969 -0.12475634
		 -2.3019557 8.12521744 5.1661565e-18 -2.36588907 8.092041969 0.12475657 -3.061610222 9.12004089 0.12475657
		 -3.12554359 9.086865425 3.1053839e-18 -3.061610222 9.12004089 -0.12475634 -2.933743 9.18639088 -0.12475634
		 -2.86980963 9.21956539 3.5991571e-18 -2.933743 9.18639088 0.12475657 -3.63974571 10.23420238 0.12475657
		 -3.70367908 10.20102787 2.3079385e-18 -3.63974571 10.23420238 -0.12475634 -3.51187849 10.30055237 -0.12475634
		 -3.44794512 10.33372784 2.6871564e-18 -3.51187849 10.30055237 0.12475657 -4.13109779 11.18111992 0.12475657
		 -4.19503164 11.14794445 2.0759971e-18 -4.13109779 11.18111992 -0.12475634 -4.0032310486 11.2474699 -0.12475634
		 -3.93929744 11.28064442 2.4487332e-18 -4.0032310486 11.2474699 0.12475657 -4.62764597 12.13805008 0.12475657
		 -4.69157982 12.10487461 1.8312116e-18 -4.62764597 12.13805008 -0.12475634 -4.49977922 12.20439911 -0.12475634
		 -4.43584538 12.23757458 2.1410851e-18 -4.49977922 12.20439911 0.12475657 0.0078006387 6.76646614 -0.095103391
		 -0.082201421 6.82938862 -0.095103391 -0.12720245 6.86084986 5.3729746e-08 -0.082201421 6.82938862 0.095103525
		 0.0078006387 6.76646614 0.095103525 0.052801669 6.7350049 7.1024921e-08 4.53440285 13.24114418 -0.095103391
		 4.44440079 13.30406761 -0.095103391 4.39939976 13.33552837 5.4195411e-08 4.44440079 13.30406761 0.095103525
		 4.53440285 13.24114418 0.095103525 4.57940388 13.20968342 7.055926e-08 -0.037200391 6.79792738 7.055926e-08
		 4.48940182 13.2726059 7.055926e-08 0.45738411 7.60119152 0.095103525 0.41238308 7.63265276 5.4195407e-08
		 0.45738411 7.60119152 -0.095103391 0.54738617 7.53826904 -0.095103391 0.5923872 7.5068078 7.055926e-08
		 0.54738617 7.53826904 0.095103525 1.097402573 8.51664925 0.095103525 1.052401543 8.54811096 5.4195407e-08
		 1.097402573 8.51664925 -0.095103391 1.18740463 8.45372677 -0.095103391 1.23240566 8.42226601 7.055926e-08
		 1.18740463 8.45372677 0.095103525 1.64021921 9.29307365 0.095103525 1.59521818 9.32453442 5.4195407e-08
		 1.64021921 9.29307365 -0.095103391 1.73022127 9.23015022 -0.095103391 1.7752223 9.19868946 7.055926e-08
		 1.73022127 9.23015022 0.095103525 2.16199303 10.039398193 0.095103517 2.116992 10.070859909 5.4195411e-08
		 2.16199303 10.039398193 -0.095103383 2.25199509 9.97647572 -0.095103383 2.29699612 9.94501495 7.055926e-08
		 2.25199509 9.97647572 0.095103517 2.70051384 10.80967903 0.095103517 2.65551281 10.84113979 5.4195411e-08
		 2.70051384 10.80967903 -0.095103383 2.7905159 10.7467556 -0.095103383;
	setAttr ".vt[166:331]" 2.83551693 10.71529484 7.055926e-08 2.7905159 10.7467556 0.095103517
		 3.24878597 11.5939045 0.095103525 3.20378494 11.62536621 5.4195411e-08 3.24878597 11.5939045 -0.095103391
		 3.33878803 11.53098297 -0.095103391 3.38378906 11.49952126 7.055926e-08 3.33878803 11.53098297 0.095103525
		 3.71475697 12.26041222 0.095103525 3.66975594 12.29187393 5.4195411e-08 3.71475697 12.26041222 -0.095103391
		 3.80475903 12.19749069 -0.095103391 3.84976006 12.16602898 7.055926e-08 3.80475903 12.19749069 0.095103525
		 4.18565559 12.93396759 0.095103525 4.14065456 12.96542931 5.4195411e-08 4.18565559 12.93396759 -0.095103391
		 4.27565765 12.87104607 -0.095103391 4.32065868 12.83958435 7.055926e-08 4.27565765 12.87104607 0.095103525
		 4.96832466 13.105937 -0.84525567 4.16841125 13.66517544 -0.84525591 3.76845455 13.94479561 -7.4878663e-08
		 4.16841125 13.66517544 0.84525591 4.96832466 13.105937 0.84525591 5.36828232 12.82631683 7.055926e-08
		 5.79096127 13.75622177 -1.36765254 4.49667358 14.66108894 -1.36765289 3.84952927 15.11352348 -1.6476426e-07
		 4.49667263 14.6610899 1.36765277 5.79096031 13.75622177 1.36765289 6.43810463 13.30378819 7.055926e-08
		 6.50225449 14.77363014 -1.36765254 5.2079668 15.67849731 -1.36765289 4.56082249 16.13093185 -1.6476426e-07
		 5.20796585 15.67849731 1.36765277 6.50225449 14.77363014 1.36765289 7.1493988 14.3211956 7.055926e-08
		 6.83051682 15.76954365 -0.84525567 6.030602455 16.32878113 -0.84525591 5.63064575 16.60840225 -7.4878663e-08
		 6.030602455 16.32878113 0.84525591 6.83051682 15.76954365 0.84525591 7.23047352 15.48992348 7.055926e-08
		 4.34856606 13.071160316 7.055926e-08 6.65036106 16.36355972 7.055926e-08 0.82448709 13.53107548 -1.42805266
		 -0.82448643 13.53107548 -1.42805302 -1.64897335 13.53107548 -2.4571617e-07 -0.82448685 13.53107548 1.42805278
		 0.82448661 13.53107548 1.42805278 1.64897335 13.53107548 3.4508288e-18 1.33404815 15.22784519 -2.31063795
		 -1.33404708 15.22784519 -2.31063843 -2.66809511 15.22784519 -3.9757717e-07 -1.33404791 15.22784519 2.31063795
		 1.33404744 15.22784519 2.31063819 2.66809511 15.22784519 3.5351615e-18 1.33404815 17.32516861 -2.31063795
		 -1.33404708 17.32516861 -2.31063843 -2.66809511 17.32516861 -3.9757717e-07 -1.33404791 17.32516861 2.31063795
		 1.33404744 17.32516861 2.31063819 2.66809511 17.32516861 2.9631771e-18 0.82448709 19.021938324 -1.42805266
		 -0.82448643 19.021938324 -1.42805302 -1.64897335 19.021938324 -2.4571617e-07 -0.82448685 19.021938324 1.42805278
		 0.82448661 19.021938324 1.42805278 1.64897335 19.021938324 5.279429e-18 -4.3340267e-33 12.882967 -1.1851187e-17
		 -2.2763283e-30 19.67004585 1.2081817e-17 -4.35159397 13.15235043 -1.10880423 -5.48804331 12.56264973 -1.10880423
		 -6.056268215 12.26780033 -4.7683716e-07 -5.48804331 12.56264973 1.10880446 -4.35159445 13.15235043 1.10880446
		 -3.78336978 13.44719982 2.8591171e-18 -4.60720396 14.50396729 -1.79408312 -6.44601774 13.54981232 -1.7940836
		 -7.36542463 13.072734833 -4.7683716e-07 -6.44601822 13.54981232 1.79408312 -4.60720491 14.50396729 1.79408336
		 -3.68779802 14.98104477 2.470608e-18 -5.35724211 15.94941235 -1.79408312 -7.19605541 14.99525738 -1.7940836
		 -8.11546326 14.51817989 -4.7683716e-07 -7.19605589 14.99525738 1.79408312 -5.35724211 15.94941235 1.79408336
		 -4.43783569 16.42649078 8.8270801e-19 -6.31521654 16.93657494 -1.10880423 -7.45166588 16.34687424 -1.10880423
		 -8.019890785 16.052024841 -4.7683716e-07 -7.45166636 16.34687424 1.10880446 -6.31521702 16.93657494 1.10880446
		 -5.74699259 17.23142433 -6.1762831e-19 -4.68804455 12.41083241 1.8812387e-18 -7.11521578 17.088392258 -1.640558e-18
		 -2.22506213 4.83006096 2.30399203 -2.15385747 4.91206264 2.32027793 -2.12462544 4.97684002 2.23655772
		 -2.16659904 4.95961475 2.13655162 -2.2378037 4.87761307 2.1202662 -2.26703477 4.81283665 2.20398688
		 -8.21609306 9.69944763 3.97976184 -8.14488792 9.78144932 3.99604774 -8.11565781 9.84622574 3.91232753
		 -8.15762997 9.82900143 3.81232238 -8.22883511 9.74699974 3.79603648 -8.25806713 9.68222332 3.87975669
		 -2.19583058 4.89483786 2.2202723 -8.18686295 9.76422501 3.89604259 -2.88074946 5.54006195 2.33630919
		 -2.83877587 5.55728626 2.4363153 -2.8680079 5.49250984 2.52003503 -2.93921256 5.41050816 2.50374961
		 -2.9811852 5.39328289 2.40374398 -2.95195413 5.45806026 2.3200233 -3.72782397 6.22854614 2.57324672
		 -3.68585086 6.24577141 2.67325282 -3.71508241 6.18099451 2.75697303 -3.78628755 6.098992825 2.74068713
		 -3.82826018 6.081768036 2.64068198 -3.79902911 6.14654446 2.5569613 -4.44625092 6.81246948 2.7742002
		 -4.40427685 6.82969379 2.8742063 -4.43350887 6.76491737 2.95792651 -4.50471306 6.68291426 2.94164062
		 -4.54668713 6.66568947 2.84163499 -4.5174551 6.73046589 2.75791478 -5.13682652 7.3737545 2.96736312
		 -5.094854355 7.39097977 3.067369223 -5.12408447 7.32620239 3.15108943 -5.19528961 7.24420071 3.13480353
		 -5.23726368 7.22697639 3.034798384 -5.20803165 7.29175282 2.95107818 -5.84956837 7.95305634 3.16672683
		 -5.80759525 7.97028065 3.26673293 -5.83682632 7.90550518 3.35045266 -5.90803051 7.82350254 3.33416677
		 -5.95000458 7.80627823 3.23416162 -5.92077255 7.87105465 3.15044093 -6.57521534 8.54284573 3.36969924
		 -6.53324223 8.56007099 3.46970534 -6.5624733 8.49529362 3.55342507 -6.63367748 8.41329288 3.53713965
		 -6.6756506 8.39606762 3.4371345 -6.64641953 8.46084499 3.3534143 -7.19193554 9.044103622 3.54220414
		 -7.14996243 9.061328888 3.64221025 -7.1791935 8.99655247 3.72592998 -7.25039768 8.91455173 3.70964503
		 -7.2923727 8.89732552 3.60963893 -7.26313972 8.96210384 3.52591872 -7.81517696 9.55066204 3.71653342
		 -7.77320385 9.56788731 3.81653905 -7.80243492 9.50310993 3.90025878 -7.87364006 9.4211092 3.88397384
		 -7.91561413 9.40388393 3.78396821 -7.8863821 9.46866131 3.70024753 -8.55117798 9.27345181 4.66936016
		 -7.91833019 10.0022611618 4.81410122 -7.65852833 10.57798195 4.070017815 -8.031572342 10.42488956 3.18119216
		 -8.66442013 9.69608021 3.036451101 -8.9242239 9.12036037 3.78053451;
	setAttr ".vt[332:497]" -9.47336102 9.53666306 5.34226322 -8.44939137 10.71590137 5.57645988
		 -8.02902317 11.64743614 4.3725071 -8.63262177 11.39972878 2.9343574 -9.65659046 10.2204895 2.70016026
		 -10.076960564 9.28895664 3.90411258 -10.41476917 10.30182076 5.60558701 -9.39080048 11.48106003 5.83978367
		 -8.97043133 12.4125948 4.63583183 -9.57402992 12.16488647 3.19768167 -10.59799957 10.9856472 2.96348453
		 -11.018370628 10.054114342 4.16743755 -11.015818596 11.27665997 5.35875225 -10.38296986 12.0054693222 5.50349331
		 -10.12316895 12.58119011 4.7594099 -10.49621201 12.42809772 3.87058425 -11.12906075 11.69928837 3.72584319
		 -11.38886356 11.12356853 4.46992683 -8.00046443939 9.6127243 3.84390426 -11.046927452 12.088827133 4.69604015
		 -4.61578178 10.5969162 5.34233284 -3.022996187 11.023702621 5.34233284 -2.32226396 11.59410858 3.96293998
		 -3.21431899 11.73773003 2.5835464 -4.80710506 11.3109436 2.5835464 -5.5078373 10.74053764 3.96293902
		 -5.47305107 11.82749367 6.63400078 -2.89586854 12.51804829 6.63400173 -1.7620604 13.44098473 4.40209675
		 -3.20543504 13.6733675 2.17019057 -5.78261757 12.98281384 2.17019057 -6.9164257 12.059877396 4.40209579
		 -5.99738121 13.78432274 7.17682743 -3.42019963 14.47487736 7.17682838 -2.2863915 15.3978138 4.9449234
		 -3.72976565 15.63019657 2.71301818 -6.30694866 14.93964291 2.7130177 -7.4407568 14.016706467 4.94492245
		 -5.98849773 15.71996117 6.76347256 -4.3957119 16.14674759 6.76347256 -3.69497991 16.71715355 5.38407993
		 -4.58703518 16.86077499 4.0046863556 -6.17982006 16.43398857 4.0046863556 -6.88055325 15.86358261 5.38407993
		 -3.75302291 10.5626297 3.79519629 -5.44979382 16.89505959 5.55182171 -1.40733361 1.80629349 1.49537301
		 -1.26723647 1.77748263 1.4782002 -1.20554471 1.79426646 1.34910846 -1.28395057 1.83986092 1.23718905
		 -1.42404771 1.86867177 1.25436187 -1.48573947 1.85188782 1.38345361 0.90351963 11.62415409 3.87616372
		 1.043616533 11.59534454 3.85899138 1.10530877 11.6121273 3.72989917 1.026902199 11.65772247 3.61797976
		 0.8868053 11.68653202 3.63515258 0.82511306 11.66974926 3.76424479 -1.34564233 1.82307708 1.36628127
		 0.96521115 11.64093781 3.74707198 -1.0084888935 3.010181904 1.52098727 -0.93008304 2.96458745 1.63290668
		 -0.9917748 2.94780374 1.76199841 -1.13187289 2.97661471 1.77917075 -1.21027827 3.022209167 1.66725183
		 -1.14858699 3.038992882 1.53815961 -0.68175626 4.3983345 1.85760856 -0.60335088 4.35274029 1.96952796
		 -0.66504216 4.33595657 2.098619699 -0.80513978 4.36476755 2.11579204 -0.88354516 4.41036129 2.0038731098
		 -0.82185388 4.42714596 1.87478137 -0.4046464 5.57566166 2.14310527 -0.3262403 5.5300684 2.25502515
		 -0.38793206 5.51328373 2.38411689 -0.52802968 5.54209423 2.40128922 -0.60643554 5.5876894 2.2893703
		 -0.54474378 5.60447311 2.16027808 -0.13827801 6.70735073 2.41753554 -0.059872389 6.66175652 2.52945495
		 -0.12156367 6.6449728 2.65854621 -0.26166129 6.6737833 2.67571902 -0.34006715 6.71937847 2.5638001
		 -0.27837563 6.73616171 2.43470788 0.1366396 7.87536335 2.70077348 0.21504569 7.82976818 2.81269288
		 0.15335393 7.81298542 2.94178462 0.013256311 7.84179592 2.95895743 -0.065149546 7.88739014 2.84703803
		 -0.0034580231 7.9041748 2.71794629 0.41653514 9.064522743 2.9891398 0.494941 9.018928528 3.10105968
		 0.43324947 9.0021448135 3.23015094 0.29315162 9.030955315 3.24732375 0.21474576 9.076550484 3.13540483
		 0.27643728 9.093334198 3.0063121319 0.65441537 10.075180054 3.23422027 0.7328217 10.029584885 3.34613967
		 0.6711297 10.012802124 3.47523093 0.53103256 10.041612625 3.49240375 0.45262647 10.087206841 3.38048482
		 0.51431823 10.10399055 3.25139308 0.89481163 11.096524239 3.48189187 0.9732182 11.05092907 3.59381127
		 0.91152596 11.034146309 3.72290301 0.77142882 11.062955856 3.74007535 0.69302249 11.10855103 3.62815642
		 0.75471449 11.12533379 3.49906421 0.45722389 11.66304207 4.93594074 1.7023747 11.40697861 4.7833147
		 2.25067425 11.55614853 3.63597989 1.55382299 11.96138 2.64126945 0.30867267 12.21744347 2.79389548
		 -0.23962665 12.068273544 3.94123054 0.41212463 12.81895542 5.94769382 2.42682123 12.40463638 5.70074081
		 3.31398869 12.64599705 3.84431243 2.18646002 13.3016777 2.23483729 0.17176414 13.71599674 2.48179078
		 -0.71540332 13.47463512 4.33821964 0.77524471 14.3616972 6.32180214 2.78994083 13.94737911 6.074849129
		 3.67710924 14.18873978 4.21842098 2.54957962 14.84442043 2.60894608 0.53488326 15.25873852 2.85589957
		 -0.35228372 15.017377853 4.71232796 1.40788126 15.70199394 5.91536999 2.6530323 15.44593143 5.76274395
		 3.20133209 15.5951004 4.61540985 2.50448108 16.00033187866 3.62069869 1.25933003 16.25639534 3.77332473
		 0.7110312 16.10722542 4.92066002 0.89331365 11.33547688 3.67299914 2.068391323 16.32789612 4.88364124
		 -0.59889388 -1.56716466 0.60337996 -0.41968226 -1.51914525 0.60337996 -0.34083962 -1.45496631 0.44817805
		 -0.44120884 -1.43880677 0.29297614 -0.62042022 -1.48682618 0.29297614 -0.69926286 -1.5510056 0.44817805
		 -3.93568254 10.8859005 4.057877541 -3.75647092 10.93391991 4.057877541 -3.67762828 10.99809933 3.90267539
		 -3.77799773 11.014258385 3.74747443 -3.95720935 10.96623898 3.74747443 -4.03605175 10.90206051 3.90267539
		 -0.52005124 -1.50298572 0.44817805 -3.8568399 10.95007992 3.90267539 -0.83896518 0.045639277 0.70476365
		 -0.73859572 0.02947998 0.85996509 -0.81743836 -0.034698963 1.015166998 -0.99664998 -0.082718611 1.015166998
		 -1.097018957 -0.066559076 0.85996509 -1.018176794 -0.0023801327 0.70476365 -1.31075549 1.80638468 1.19319701
		 -1.21038604 1.79022539 1.34839845 -1.28922868 1.72604644 1.50360036 -1.46844029 1.67802691 1.50360036
		 -1.56880927 1.69418621 1.34839845 -1.48996711 1.75836515 1.19319701 -1.71089244 3.2997179 1.60744977
		 -1.61052346 3.28355861 1.76265121 -1.6893661 3.21937966 1.91785312 -1.86857772 3.17136002 1.91785312
		 -1.9689467 3.18751955 1.76265121 -1.89010406 3.25169849 1.60744977;
	setAttr ".vt[498:663]" -2.095518827 4.73516178 2.005644083 -1.99514937 4.71900272 2.16084552
		 -2.073992014 4.65482378 2.31604743 -2.25320363 4.60680389 2.31604743 -2.35357261 4.62296295 2.16084552
		 -2.27473044 4.68714237 2.005644083 -2.49249053 6.21667957 2.41661906 -2.3921206 6.20051956 2.5718205
		 -2.47096372 6.13634109 2.72702241 -2.65017533 6.088320732 2.72702241 -2.75054383 6.10448074 2.5718205
		 -2.67170215 6.16865921 2.41661906 -2.89664912 7.72502041 2.83503509 -2.79627967 7.70886135 2.99023604
		 -2.87512231 7.64468193 3.14543796 -3.054333925 7.59666252 3.14543796 -3.1547029 7.61282158 2.99023604
		 -3.075860739 7.677001 2.83503509 -3.24013972 9.0069465637 3.19064307 -3.13977075 8.99078751 3.34584451
		 -3.21861339 8.92660809 3.50104642 -3.397825 8.87858868 3.50104642 -3.49819398 8.89474773 3.34584451
		 -3.41935134 8.95892715 3.19064307 -3.58726382 10.30242825 3.5500114 -3.48689389 10.28626919 3.70521331
		 -3.56573701 10.22208977 3.86041522 -3.74494863 10.17407036 3.86041522 -3.84531713 10.19023037 3.70521331
		 -3.76647544 10.25440884 3.5500114 3.048698664 5.086227417 3.0033478737 3.1361692 5.1404767 2.96506548
		 3.12457871 5.21221447 2.88273144 3.025516748 5.2297039 2.83868027 2.93804622 5.17545414 2.87696266
		 2.94963765 5.1037159 2.95929623 1.74743962 10.86953354 8.22557831 1.83490968 10.92378235 8.18729687
		 1.8233192 10.99552059 8.10496235 1.72425771 11.013009071 8.060910225 1.6367867 10.95876026 8.099192619
		 1.64837813 10.88702202 8.18152714 3.037108183 5.15796566 2.92101383 1.73584819 10.94127083 8.14324379
		 2.87040305 5.91909218 3.46118736 2.96946454 5.9016037 3.50523853 2.98105454 5.82986546 3.5875721
		 2.89358449 5.77561665 3.62585449 2.79452348 5.79310513 3.58180332 2.78293252 5.86484337 3.49946976
		 2.68641686 6.73679686 4.19956017 2.78547835 6.71930838 4.24361229 2.79706979 6.64757013 4.32594585
		 2.7095983 6.59332085 4.36422825 2.61053777 6.6108098 4.32017708 2.59894681 6.68254757 4.23784351
		 2.53037381 7.43031311 4.82579517 2.6294353 7.41282463 4.86984634 2.64102674 7.34108639 4.95217991
		 2.55355573 7.28683662 4.9904623 2.45449376 7.30432606 4.94641113 2.44290328 7.37606335 4.86407661
		 2.38038039 8.096944809 5.42775249 2.47944093 8.079456329 5.47180462 2.49103189 8.0077180862 5.55413723
		 2.40356135 7.9534688 5.59241962 2.30450082 7.97095776 5.54836845 2.29290938 8.042695999 5.46603489
		 2.22557235 8.7849741 6.049031258 2.32463288 8.76748466 6.093083382 2.33622432 8.69574738 6.17541599
		 2.24875331 8.64149761 6.21369839 2.1496923 8.65898705 6.16964722 2.13810086 8.73072433 6.087313652
		 2.067959547 9.48545933 6.68155766 2.16702151 9.46797085 6.72561073 2.17861199 9.3962326 6.8079443
		 2.091141939 9.3419838 6.84622669 1.99208045 9.35947227 6.80217457 1.98048949 9.43121147 6.719841
		 1.93400788 10.080797195 7.21913815 2.033069372 10.063307762 7.26319027 2.044659853 9.99156952 7.34552383
		 1.9571898 9.93732166 7.38380623 1.85812783 9.95481014 7.3397541 1.84653783 10.026548386 7.25742054
		 1.79863906 10.68242931 7.76240253 1.89770055 10.66494179 7.8064537 1.90929151 10.59320259 7.88878822
		 1.82182145 10.53895378 7.92707062 1.72275949 10.55644226 7.88301945 1.71116853 10.62818146 7.80068493
		 1.81616664 10.40457058 8.96610737 2.59358048 10.88672352 8.62586594 2.49056268 11.52431488 7.89410305
		 1.61013007 11.67975044 7.5025835 0.83271575 11.1975975 7.84282494 0.93573308 10.56000614 8.57458878
		 1.71441007 10.74572563 10.082243919 2.97229314 11.52586651 9.53172016 2.80560708 12.55750942 8.34770393
		 1.38103795 12.80901146 7.71421051 0.12315416 12.028870583 8.26473331 0.28984118 10.99722767 9.44874954
		 1.50993514 11.65449429 10.90284634 2.76781869 12.43463516 10.35232258 2.60113263 13.46627808 9.1683073
		 1.17656302 13.71778011 8.53481197 -0.081321001 12.93763924 9.085335732 0.085365057 11.90599442 10.26935291
		 1.28084207 12.78375435 11.11447239 2.058257341 13.26590729 10.77423 1.95523953 13.9034977 10.042468071
		 1.074806452 14.058933258 9.65094757 0.29739189 13.57678223 9.99118996 0.40040994 12.93918991 10.72295284
		 1.776335 10.76133728 7.9807663 1.11463904 13.70217037 10.63628864 5.38803101 10.44614697 6.74533367
		 6.62010956 10.42209625 5.64965248 6.40538216 11.079977989 4.15292263 4.95857811 11.76190853 3.75187588
		 3.7264998 11.78595924 4.84755802 3.9412272 11.12807846 6.34428692 6.066070557 11.53783894 8.25069332
		 8.059615135 11.49892521 6.47784328 7.71217918 12.56339836 4.056083679 5.37120056 13.66678619 3.40717506
		 3.37765718 13.70570183 5.18002605 3.7250917 12.64122772 7.60178471 6.74013805 13.38982201 8.96802044
		 8.73368168 13.35090828 7.1951704 8.38624668 14.41538239 4.7734108 6.045267105 15.51876926 4.12450218
		 4.05172348 15.55768394 5.89735317 4.39915943 14.49320984 8.31911182 7.15276051 15.29470158 8.62331963
		 8.38483906 15.27065086 7.52763844 8.17011166 15.92853165 6.030908585 6.72330761 16.61046219 5.62986088
		 5.49122906 16.63451385 6.72554302 5.70595646 15.97663212 8.22227192 4.96500587 10.53173351 5.026938438
		 7.14633179 16.52487564 7.34825611 2.031683683 2.21569443 1.91181803 2.10589862 2.15524101 1.80416203
		 2.07043004 2.1835382 1.66743803 1.9607451 2.2722888 1.63836956 1.88653064 2.33274221 1.74602604
		 1.92199969 2.30444479 1.88274956 8.55448532 10.26870728 1.88635826 8.6286993 10.20825481 1.77870274
		 8.5932312 10.23655128 1.64197826 8.48354626 10.32530212 1.61291075 8.40933132 10.38575554 1.72056627
		 8.44480038 10.35745811 1.85729027 1.99621511 2.24399137 1.77509403 8.51901531 10.2970047 1.74963474
		 2.73828435 3.23223424 1.63533497 2.84796977 3.14348364 1.66440296 2.88343835 3.11518669 1.80112696
		 2.80922294 3.17564011 1.90878344 2.69953895 3.26439071 1.87971497 2.66406989 3.29268789 1.74299097
		 3.66054702 4.37085438 1.6317358 3.77023149 4.28210354 1.66080379;
	setAttr ".vt[664:829]" 3.80570054 4.25380659 1.79752779 3.73148561 4.31426001 1.90518284
		 3.62180114 4.40300989 1.87611485 3.58633256 4.43130779 1.73939133 4.44274139 5.33654642 1.62868214
		 4.55242538 5.24779654 1.65775061 4.58789444 5.21949863 1.79447412 4.5136795 5.27995205 1.9021306
		 4.40399551 5.36870289 1.87306213 4.36852551 5.39699984 1.73633814 5.19461346 6.26480389 1.62574768
		 5.30429745 6.176054 1.65481663 5.33976746 6.14775562 1.79154015 5.26555157 6.20820999 1.89919567
		 5.15586853 6.29696083 1.87012768 5.12039852 6.3252573 1.73340416 5.97061825 7.22285652 1.62271881
		 6.080302238 7.13410521 1.65178728 6.11577225 7.10580873 1.78851128 6.041556358 7.16626215 1.8961668
		 5.93187237 7.25501156 1.86709881 5.89640427 7.28330994 1.73037529 6.76067352 8.19825363 1.61963511
		 6.87035847 8.10950279 1.64870358 6.90582752 8.081205368 1.78542709 6.83161259 8.14165878 1.89308357
		 6.7219286 8.23040962 1.86401558 6.68645954 8.25870705 1.72729111 7.43213463 9.027236938 1.61701488
		 7.54181957 8.93848515 1.6460824 7.57728863 8.91018867 1.78280687 7.50307369 8.97064209 1.8904624
		 7.3933897 9.059392929 1.86139441 7.35791969 9.087690353 1.72467041 8.11069584 9.86498451 1.61436653
		 8.22038174 9.77623272 1.64343357 8.25584984 9.74793625 1.78015852 8.18163586 9.80838966 1.88781357
		 8.071950912 9.8971405 1.85874605 8.036481857 9.92543793 1.72202158 8.94804668 10.18599224 2.96435928
		 9.60765171 9.6486969 2.0075416565 9.29241085 9.90019608 0.79237318 8.31756496 10.68898773 0.53402233
		 7.65795994 11.22628212 1.49083996 7.9732008 10.97478294 2.70600796 9.97209454 11.054304123 3.71213818
		 11.039357185 10.18494415 2.16397476 10.52928638 10.59187794 0.1977911 8.95195103 11.86816978 -0.22022963
		 7.88468838 12.73752975 1.32793427 8.39476013 12.33059597 3.29411793 10.99706364 12.31972504 3.70813751
		 12.06432724 11.45036507 2.1599741 11.55425644 11.8572979 0.19378948 9.97692013 13.1335907 -0.22422981
		 8.90965652 14.0029506683 1.3239336 9.41973019 13.59601784 3.29011726 11.6314497 13.49890709 2.95388603
		 12.29105473 12.9616127 1.99706745 11.97581482 13.21311188 0.78189993 11.00096702576 14.0019035339 0.52354813
		 10.34136391 14.53919697 1.48036623 10.65660572 14.28769779 2.69553471 8.31607246 10.046453476 1.75042677
		 11.6329422 14.14144135 1.73748112 0.83293796 -0.9614315 0.77237654 0.97156501 -0.96413755 0.64909601
		 0.9474051 -0.89011621 0.48069286 0.78461862 -0.81338882 0.43556881 0.64599156 -0.81068325 0.55884933
		 0.67015147 -0.88470411 0.72725296 5.12263012 10.82440376 5.33737278 5.26125717 10.82169724 5.2140913
		 5.23709774 10.89571762 5.045687675 5.07431221 10.97244549 5.0005645752 4.93568516 10.97515106 5.1238451
		 4.95984364 10.90113068 5.29224873 0.80877852 -0.88741016 0.60397291 5.098470688 10.89842415 5.16896915
		 1.295964 0.59152079 0.97973108 1.45875049 0.5147934 1.024855137 1.48291039 0.44077253 1.19325829
		 1.34428334 0.44347858 1.31653881 1.18149686 0.5202055 1.27141523 1.15733695 0.59422684 1.10301161
		 1.90248609 2.25792599 1.62517834 2.06527257 2.18119884 1.67030239 2.089432478 2.10717773 1.83870554
		 1.95080543 2.10988379 1.96198606 1.78801894 2.18661094 1.91686249 1.76385903 2.26063204 1.74845886
		 2.41689277 3.67124701 2.17259884 2.57967925 3.59451962 2.21772289 2.60383916 3.52049875 2.38612556
		 2.46521211 3.5232048 2.50940609 2.30242562 3.59993172 2.46428299 2.27826571 3.67395306 2.29587936
		 2.91135859 5.029780388 2.69879818 3.074145079 4.953053 2.74392223 3.098304987 4.87903214 2.91232538
		 2.95967793 4.88173819 3.035605907 2.79689145 4.9584651 2.99048233 2.77273154 5.032485962 2.8220787
		 3.42169499 6.43191862 3.24188709 3.58448148 6.35519123 3.28701115 3.60864139 6.28117037 3.45541382
		 3.47001433 6.28387642 3.57869434 3.30722785 6.36060333 3.53357124 3.28306794 6.43462467 3.36516762
		 3.94127154 7.85944366 3.79480839 4.10405827 7.78271627 3.83993244 4.12821865 7.70869541 4.0083360672
		 3.98959136 7.71140146 4.13161659 3.82680488 7.78812838 4.086492538 3.80264449 7.86214924 3.91808891
		 4.38285542 9.072684288 4.26473236 4.54564095 8.99595642 4.30985641 4.56980133 8.92193604 4.47825909
		 4.43117523 8.92464256 4.60153961 4.26838875 9.0013694763 4.55641651 4.24422836 9.075389862 4.38801289
		 4.82910824 10.29875565 4.73962498 4.99189472 10.22202873 4.78474903 5.016054153 10.14800739 4.95315266
		 4.8774271 10.15071297 5.076432228 4.71464062 10.22743988 5.031309128 4.69048214 10.30146122 4.8629055
		 2.22506213 4.83006096 -2.30399203 2.15385747 4.91206264 -2.32027793 2.12462544 4.97684002 -2.23655772
		 2.16659904 4.95961475 -2.13655162 2.2378037 4.87761307 -2.1202662 2.26703477 4.81283665 -2.20398688
		 8.21609306 9.69944763 -3.97976184 8.14488792 9.78144932 -3.99604774 8.11565781 9.84622574 -3.91232753
		 8.15762997 9.82900143 -3.81232238 8.22883511 9.74699974 -3.79603648 8.25806713 9.68222332 -3.87975669
		 2.19583058 4.89483786 -2.2202723 8.18686295 9.76422501 -3.89604259 2.88074946 5.54006195 -2.33630919
		 2.83877587 5.55728626 -2.4363153 2.8680079 5.49250984 -2.52003503 2.93921256 5.41050816 -2.50374961
		 2.9811852 5.39328289 -2.40374398 2.95195413 5.45806026 -2.3200233 3.72782397 6.22854614 -2.57324672
		 3.68585086 6.24577141 -2.67325282 3.71508241 6.18099451 -2.75697303 3.78628755 6.098992825 -2.74068713
		 3.82826018 6.081768036 -2.64068198 3.79902911 6.14654446 -2.5569613 4.44625092 6.81246948 -2.7742002
		 4.40427685 6.82969379 -2.8742063 4.43350887 6.76491737 -2.95792651 4.50471306 6.68291426 -2.94164062
		 4.54668713 6.66568947 -2.84163499 4.5174551 6.73046589 -2.75791478 5.13682652 7.3737545 -2.96736312
		 5.094854355 7.39097977 -3.067369223 5.12408447 7.32620239 -3.15108943 5.19528961 7.24420071 -3.13480353
		 5.23726368 7.22697639 -3.034798384 5.20803165 7.29175282 -2.95107818;
	setAttr ".vt[830:995]" 5.84956837 7.95305634 -3.16672683 5.80759525 7.97028065 -3.26673293
		 5.83682632 7.90550518 -3.35045266 5.90803051 7.82350254 -3.33416677 5.95000458 7.80627823 -3.23416162
		 5.92077255 7.87105465 -3.15044093 6.57521534 8.54284573 -3.36969924 6.53324223 8.56007099 -3.46970534
		 6.5624733 8.49529362 -3.55342507 6.63367748 8.41329288 -3.53713965 6.6756506 8.39606762 -3.4371345
		 6.64641953 8.46084499 -3.3534143 7.19193554 9.044103622 -3.54220414 7.14996243 9.061328888 -3.64221025
		 7.1791935 8.99655247 -3.72592998 7.25039768 8.91455173 -3.70964503 7.2923727 8.89732552 -3.60963893
		 7.26313972 8.96210384 -3.52591872 7.81517696 9.55066204 -3.71653342 7.77320385 9.56788731 -3.81653905
		 7.80243492 9.50310993 -3.90025878 7.87364006 9.4211092 -3.88397384 7.91561413 9.40388393 -3.78396821
		 7.8863821 9.46866131 -3.70024753 8.55117798 9.27345181 -4.66936016 7.91833019 10.0022611618 -4.81410122
		 7.65852833 10.57798195 -4.070017815 8.031572342 10.42488956 -3.18119216 8.66442013 9.69608021 -3.036451101
		 8.9242239 9.12036037 -3.78053451 9.47336102 9.53666306 -5.34226322 8.44939137 10.71590137 -5.57645988
		 8.02902317 11.64743614 -4.3725071 8.63262177 11.39972878 -2.9343574 9.65659046 10.2204895 -2.70016026
		 10.076960564 9.28895664 -3.90411258 10.41476917 10.30182076 -5.60558701 9.39080048 11.48106003 -5.83978367
		 8.97043133 12.4125948 -4.63583183 9.57402992 12.16488647 -3.19768167 10.59799957 10.9856472 -2.96348453
		 11.018370628 10.054114342 -4.16743755 11.015818596 11.27665997 -5.35875225 10.38296986 12.0054693222 -5.50349331
		 10.12316895 12.58119011 -4.7594099 10.49621201 12.42809772 -3.87058425 11.12906075 11.69928837 -3.72584319
		 11.38886356 11.12356853 -4.46992683 8.00046443939 9.6127243 -3.84390426 11.046927452 12.088827133 -4.69604015
		 4.61578178 10.5969162 -5.34233284 3.022996187 11.023702621 -5.34233284 2.32226396 11.59410858 -3.96293998
		 3.21431899 11.73773003 -2.5835464 4.80710506 11.3109436 -2.5835464 5.5078373 10.74053764 -3.96293902
		 5.47305107 11.82749367 -6.63400078 2.89586854 12.51804829 -6.63400173 1.7620604 13.44098473 -4.40209675
		 3.20543504 13.6733675 -2.17019057 5.78261757 12.98281384 -2.17019057 6.9164257 12.059877396 -4.40209579
		 5.99738121 13.78432274 -7.17682743 3.42019963 14.47487736 -7.17682838 2.2863915 15.3978138 -4.9449234
		 3.72976565 15.63019657 -2.71301818 6.30694866 14.93964291 -2.7130177 7.4407568 14.016706467 -4.94492245
		 5.98849773 15.71996117 -6.76347256 4.3957119 16.14674759 -6.76347256 3.69497991 16.71715355 -5.38407993
		 4.58703518 16.86077499 -4.0046863556 6.17982006 16.43398857 -4.0046863556 6.88055325 15.86358261 -5.38407993
		 3.75302291 10.5626297 -3.79519629 5.44979382 16.89505959 -5.55182171 1.40733361 1.80629349 -1.49537301
		 1.26723647 1.77748263 -1.4782002 1.20554471 1.79426646 -1.34910846 1.28395057 1.83986092 -1.23718905
		 1.42404771 1.86867177 -1.25436187 1.48573947 1.85188782 -1.38345361 -0.90351963 11.62415409 -3.87616372
		 -1.043616533 11.59534454 -3.85899138 -1.10530877 11.6121273 -3.72989917 -1.026902199 11.65772247 -3.61797976
		 -0.8868053 11.68653202 -3.63515258 -0.82511306 11.66974926 -3.76424479 1.34564233 1.82307708 -1.36628127
		 -0.96521115 11.64093781 -3.74707198 1.0084888935 3.010181904 -1.52098727 0.93008304 2.96458745 -1.63290668
		 0.9917748 2.94780374 -1.76199841 1.13187289 2.97661471 -1.77917075 1.21027827 3.022209167 -1.66725183
		 1.14858699 3.038992882 -1.53815961 0.68175626 4.3983345 -1.85760856 0.60335088 4.35274029 -1.96952796
		 0.66504216 4.33595657 -2.098619699 0.80513978 4.36476755 -2.11579204 0.88354516 4.41036129 -2.0038731098
		 0.82185388 4.42714596 -1.87478137 0.4046464 5.57566166 -2.14310527 0.3262403 5.5300684 -2.25502515
		 0.38793206 5.51328373 -2.38411689 0.52802968 5.54209423 -2.40128922 0.60643554 5.5876894 -2.2893703
		 0.54474378 5.60447311 -2.16027808 0.13827801 6.70735073 -2.41753554 0.059872389 6.66175652 -2.52945495
		 0.12156367 6.6449728 -2.65854621 0.26166129 6.6737833 -2.67571902 0.34006715 6.71937847 -2.5638001
		 0.27837563 6.73616171 -2.43470788 -0.1366396 7.87536335 -2.70077348 -0.21504569 7.82976818 -2.81269288
		 -0.15335393 7.81298542 -2.94178462 -0.013256311 7.84179592 -2.95895743 0.065149546 7.88739014 -2.84703803
		 0.0034580231 7.9041748 -2.71794629 -0.41653514 9.064522743 -2.9891398 -0.494941 9.018928528 -3.10105968
		 -0.43324947 9.0021448135 -3.23015094 -0.29315162 9.030955315 -3.24732375 -0.21474576 9.076550484 -3.13540483
		 -0.27643728 9.093334198 -3.0063121319 -0.65441537 10.075180054 -3.23422027 -0.7328217 10.029584885 -3.34613967
		 -0.6711297 10.012802124 -3.47523093 -0.53103256 10.041612625 -3.49240375 -0.45262647 10.087206841 -3.38048482
		 -0.51431823 10.10399055 -3.25139308 -0.89481163 11.096524239 -3.48189187 -0.9732182 11.05092907 -3.59381127
		 -0.91152596 11.034146309 -3.72290301 -0.77142882 11.062955856 -3.74007535 -0.69302249 11.10855103 -3.62815642
		 -0.75471449 11.12533379 -3.49906421 -0.45722389 11.66304207 -4.93594074 -1.7023747 11.40697861 -4.7833147
		 -2.25067425 11.55614853 -3.63597989 -1.55382299 11.96138 -2.64126945 -0.30867267 12.21744347 -2.79389548
		 0.23962665 12.068273544 -3.94123054 -0.41212463 12.81895542 -5.94769382 -2.42682123 12.40463638 -5.70074081
		 -3.31398869 12.64599705 -3.84431243 -2.18646002 13.3016777 -2.23483729 -0.17176414 13.71599674 -2.48179078
		 0.71540332 13.47463512 -4.33821964 -0.77524471 14.3616972 -6.32180214 -2.78994083 13.94737911 -6.074849129
		 -3.67710924 14.18873978 -4.21842098 -2.54957962 14.84442043 -2.60894608 -0.53488326 15.25873852 -2.85589957
		 0.35228372 15.017377853 -4.71232796 -1.40788126 15.70199394 -5.91536999 -2.6530323 15.44593143 -5.76274395
		 -3.20133209 15.5951004 -4.61540985 -2.50448108 16.00033187866 -3.62069869 -1.25933003 16.25639534 -3.77332473
		 -0.7110312 16.10722542 -4.92066002 -0.89331365 11.33547688 -3.67299914 -2.068391323 16.32789612 -4.88364124
		 0.59889388 -1.56716466 -0.60337996 0.41968226 -1.51914525 -0.60337996;
	setAttr ".vt[996:1161]" 0.34083962 -1.45496631 -0.44817805 0.44120884 -1.43880677 -0.29297614
		 0.62042022 -1.48682618 -0.29297614 0.69926286 -1.5510056 -0.44817805 3.93568254 10.8859005 -4.057877541
		 3.75647092 10.93391991 -4.057877541 3.67762828 10.99809933 -3.90267539 3.77799773 11.014258385 -3.74747443
		 3.95720935 10.96623898 -3.74747443 4.03605175 10.90206051 -3.90267539 0.52005124 -1.50298572 -0.44817805
		 3.8568399 10.95007992 -3.90267539 0.83896518 0.045639277 -0.70476365 0.73859572 0.02947998 -0.85996509
		 0.81743836 -0.034698963 -1.015166998 0.99664998 -0.082718611 -1.015166998 1.097018957 -0.066559076 -0.85996509
		 1.018176794 -0.0023801327 -0.70476365 1.31075549 1.80638468 -1.19319701 1.21038604 1.79022539 -1.34839845
		 1.28922868 1.72604644 -1.50360036 1.46844029 1.67802691 -1.50360036 1.56880927 1.69418621 -1.34839845
		 1.48996711 1.75836515 -1.19319701 1.71089244 3.2997179 -1.60744977 1.61052346 3.28355861 -1.76265121
		 1.6893661 3.21937966 -1.91785312 1.86857772 3.17136002 -1.91785312 1.9689467 3.18751955 -1.76265121
		 1.89010406 3.25169849 -1.60744977 2.095518827 4.73516178 -2.005644083 1.99514937 4.71900272 -2.16084552
		 2.073992014 4.65482378 -2.31604743 2.25320363 4.60680389 -2.31604743 2.35357261 4.62296295 -2.16084552
		 2.27473044 4.68714237 -2.005644083 2.49249053 6.21667957 -2.41661906 2.3921206 6.20051956 -2.5718205
		 2.47096372 6.13634109 -2.72702241 2.65017533 6.088320732 -2.72702241 2.75054383 6.10448074 -2.5718205
		 2.67170215 6.16865921 -2.41661906 2.89664912 7.72502041 -2.83503509 2.79627967 7.70886135 -2.99023604
		 2.87512231 7.64468193 -3.14543796 3.054333925 7.59666252 -3.14543796 3.1547029 7.61282158 -2.99023604
		 3.075860739 7.677001 -2.83503509 3.24013972 9.0069465637 -3.19064307 3.13977075 8.99078751 -3.34584451
		 3.21861339 8.92660809 -3.50104642 3.397825 8.87858868 -3.50104642 3.49819398 8.89474773 -3.34584451
		 3.41935134 8.95892715 -3.19064307 3.58726382 10.30242825 -3.5500114 3.48689389 10.28626919 -3.70521331
		 3.56573701 10.22208977 -3.86041522 3.74494863 10.17407036 -3.86041522 3.84531713 10.19023037 -3.70521331
		 3.76647544 10.25440884 -3.5500114 -1.81616664 10.40457058 -8.96610737 -2.59358048 10.88672352 -8.62586594
		 -2.49056268 11.52431488 -7.89410305 -1.61013007 11.67975044 -7.5025835 -0.83271575 11.1975975 -7.84282494
		 -0.93573308 10.56000614 -8.57458878 -1.71441007 10.74572563 -10.082243919 -2.97229314 11.52586651 -9.53172016
		 -2.80560708 12.55750942 -8.34770393 -1.38103795 12.80901146 -7.71421051 -0.12315416 12.028870583 -8.26473331
		 -0.28984118 10.99722767 -9.44874954 -1.50993514 11.65449429 -10.90284634 -2.76781869 12.43463516 -10.35232258
		 -2.60113263 13.46627808 -9.1683073 -1.17656302 13.71778011 -8.53481197 0.081321001 12.93763924 -9.085335732
		 -0.085365057 11.90599442 -10.26935291 -1.28084207 12.78375435 -11.11447239 -2.058257341 13.26590729 -10.77423
		 -1.95523953 13.9034977 -10.042468071 -1.074806452 14.058933258 -9.65094757 -0.29739189 13.57678223 -9.99118996
		 -0.40040994 12.93918991 -10.72295284 -1.776335 10.76133728 -7.9807663 -1.11463904 13.70217037 -10.63628864
		 -3.048698664 5.086227417 -3.0033478737 -3.1361692 5.1404767 -2.96506548 -3.12457871 5.21221447 -2.88273144
		 -3.025516748 5.2297039 -2.83868027 -2.93804622 5.17545414 -2.87696266 -2.94963765 5.1037159 -2.95929623
		 -1.74743962 10.86953354 -8.22557831 -1.83490968 10.92378235 -8.18729687 -1.8233192 10.99552059 -8.10496235
		 -1.72425771 11.013009071 -8.060910225 -1.6367867 10.95876026 -8.099192619 -1.64837813 10.88702202 -8.18152714
		 -3.037108183 5.15796566 -2.92101383 -1.73584819 10.94127083 -8.14324379 -2.87040305 5.91909218 -3.46118736
		 -2.96946454 5.9016037 -3.50523853 -2.98105454 5.82986546 -3.5875721 -2.89358449 5.77561665 -3.62585449
		 -2.79452348 5.79310513 -3.58180332 -2.78293252 5.86484337 -3.49946976 -2.68641686 6.73679686 -4.19956017
		 -2.78547835 6.71930838 -4.24361229 -2.79706979 6.64757013 -4.32594585 -2.7095983 6.59332085 -4.36422825
		 -2.61053777 6.6108098 -4.32017708 -2.59894681 6.68254757 -4.23784351 -2.53037381 7.43031311 -4.82579517
		 -2.6294353 7.41282463 -4.86984634 -2.64102674 7.34108639 -4.95217991 -2.55355573 7.28683662 -4.9904623
		 -2.45449376 7.30432606 -4.94641113 -2.44290328 7.37606335 -4.86407661 -2.38038039 8.096944809 -5.42775249
		 -2.47944093 8.079456329 -5.47180462 -2.49103189 8.0077180862 -5.55413723 -2.40356135 7.9534688 -5.59241962
		 -2.30450082 7.97095776 -5.54836845 -2.29290938 8.042695999 -5.46603489 -2.22557235 8.7849741 -6.049031258
		 -2.32463288 8.76748466 -6.093083382 -2.33622432 8.69574738 -6.17541599 -2.24875331 8.64149761 -6.21369839
		 -2.1496923 8.65898705 -6.16964722 -2.13810086 8.73072433 -6.087313652 -2.067959547 9.48545933 -6.68155766
		 -2.16702151 9.46797085 -6.72561073 -2.17861199 9.3962326 -6.8079443 -2.091141939 9.3419838 -6.84622669
		 -1.99208045 9.35947227 -6.80217457 -1.98048949 9.43121147 -6.719841 -1.93400788 10.080797195 -7.21913815
		 -2.033069372 10.063307762 -7.26319027 -2.044659853 9.99156952 -7.34552383 -1.9571898 9.93732166 -7.38380623
		 -1.85812783 9.95481014 -7.3397541 -1.84653783 10.026548386 -7.25742054 -1.79863906 10.68242931 -7.76240253
		 -1.89770055 10.66494179 -7.8064537 -1.90929151 10.59320259 -7.88878822 -1.82182145 10.53895378 -7.92707062
		 -1.72275949 10.55644226 -7.88301945 -1.71116853 10.62818146 -7.80068493 -5.38803101 10.44614697 -6.74533367
		 -6.62010956 10.42209625 -5.64965248 -6.40538216 11.079977989 -4.15292263 -4.95857811 11.76190853 -3.75187588
		 -3.7264998 11.78595924 -4.84755802 -3.9412272 11.12807846 -6.34428692 -6.066070557 11.53783894 -8.25069332
		 -8.059615135 11.49892521 -6.47784328 -7.71217918 12.56339836 -4.056083679 -5.37120056 13.66678619 -3.40717506
		 -3.37765718 13.70570183 -5.18002605 -3.7250917 12.64122772 -7.60178471 -6.74013805 13.38982201 -8.96802044
		 -8.73368168 13.35090828 -7.1951704 -8.38624668 14.41538239 -4.7734108 -6.045267105 15.51876926 -4.12450218
		 -4.05172348 15.55768394 -5.89735317 -4.39915943 14.49320984 -8.31911182;
	setAttr ".vt[1162:1319]" -7.15276051 15.29470158 -8.62331963 -8.38483906 15.27065086 -7.52763844
		 -8.17011166 15.92853165 -6.030908585 -6.72330761 16.61046219 -5.62986088 -5.49122906 16.63451385 -6.72554302
		 -5.70595646 15.97663212 -8.22227192 -4.96500587 10.53173351 -5.026938438 -7.14633179 16.52487564 -7.34825611
		 -0.83293796 -0.9614315 -0.77237654 -0.97156501 -0.96413755 -0.64909601 -0.9474051 -0.89011621 -0.48069286
		 -0.78461862 -0.81338882 -0.43556881 -0.64599156 -0.81068325 -0.55884933 -0.67015147 -0.88470411 -0.72725296
		 -5.12263012 10.82440376 -5.33737278 -5.26125717 10.82169724 -5.2140913 -5.23709774 10.89571762 -5.045687675
		 -5.07431221 10.97244549 -5.0005645752 -4.93568516 10.97515106 -5.1238451 -4.95984364 10.90113068 -5.29224873
		 -0.80877852 -0.88741016 -0.60397291 -5.098470688 10.89842415 -5.16896915 -1.295964 0.59152079 -0.97973108
		 -1.45875049 0.5147934 -1.024855137 -1.48291039 0.44077253 -1.19325829 -1.34428334 0.44347858 -1.31653881
		 -1.18149686 0.5202055 -1.27141523 -1.15733695 0.59422684 -1.10301161 -1.90248609 2.25792599 -1.62517834
		 -2.06527257 2.18119884 -1.67030239 -2.089432478 2.10717773 -1.83870554 -1.95080543 2.10988379 -1.96198606
		 -1.78801894 2.18661094 -1.91686249 -1.76385903 2.26063204 -1.74845886 -2.41689277 3.67124701 -2.17259884
		 -2.57967925 3.59451962 -2.21772289 -2.60383916 3.52049875 -2.38612556 -2.46521211 3.5232048 -2.50940609
		 -2.30242562 3.59993172 -2.46428299 -2.27826571 3.67395306 -2.29587936 -2.91135859 5.029780388 -2.69879818
		 -3.074145079 4.953053 -2.74392223 -3.098304987 4.87903214 -2.91232538 -2.95967793 4.88173819 -3.035605907
		 -2.79689145 4.9584651 -2.99048233 -2.77273154 5.032485962 -2.8220787 -3.42169499 6.43191862 -3.24188709
		 -3.58448148 6.35519123 -3.28701115 -3.60864139 6.28117037 -3.45541382 -3.47001433 6.28387642 -3.57869434
		 -3.30722785 6.36060333 -3.53357124 -3.28306794 6.43462467 -3.36516762 -3.94127154 7.85944366 -3.79480839
		 -4.10405827 7.78271627 -3.83993244 -4.12821865 7.70869541 -4.0083360672 -3.98959136 7.71140146 -4.13161659
		 -3.82680488 7.78812838 -4.086492538 -3.80264449 7.86214924 -3.91808891 -4.38285542 9.072684288 -4.26473236
		 -4.54564095 8.99595642 -4.30985641 -4.56980133 8.92193604 -4.47825909 -4.43117523 8.92464256 -4.60153961
		 -4.26838875 9.0013694763 -4.55641651 -4.24422836 9.075389862 -4.38801289 -4.82910824 10.29875565 -4.73962498
		 -4.99189472 10.22202873 -4.78474903 -5.016054153 10.14800739 -4.95315266 -4.8774271 10.15071297 -5.076432228
		 -4.71464062 10.22743988 -5.031309128 -4.69048214 10.30146122 -4.8629055 -2.031683683 2.21569443 -1.91181803
		 -2.10589862 2.15524101 -1.80416203 -2.07043004 2.1835382 -1.66743803 -1.9607451 2.2722888 -1.63836956
		 -1.88653064 2.33274221 -1.74602604 -1.92199969 2.30444479 -1.88274956 -8.55448532 10.26870728 -1.88635826
		 -8.6286993 10.20825481 -1.77870274 -8.5932312 10.23655128 -1.64197826 -8.48354626 10.32530212 -1.61291075
		 -8.40933132 10.38575554 -1.72056627 -8.44480038 10.35745811 -1.85729027 -1.99621511 2.24399137 -1.77509403
		 -8.51901531 10.2970047 -1.74963474 -2.73828435 3.23223424 -1.63533497 -2.84796977 3.14348364 -1.66440296
		 -2.88343835 3.11518669 -1.80112696 -2.80922294 3.17564011 -1.90878344 -2.69953895 3.26439071 -1.87971497
		 -2.66406989 3.29268789 -1.74299097 -3.66054702 4.37085438 -1.6317358 -3.77023149 4.28210354 -1.66080379
		 -3.80570054 4.25380659 -1.79752779 -3.73148561 4.31426001 -1.90518284 -3.62180114 4.40300989 -1.87611485
		 -3.58633256 4.43130779 -1.73939133 -4.44274139 5.33654642 -1.62868214 -4.55242538 5.24779654 -1.65775061
		 -4.58789444 5.21949863 -1.79447412 -4.5136795 5.27995205 -1.9021306 -4.40399551 5.36870289 -1.87306213
		 -4.36852551 5.39699984 -1.73633814 -5.19461346 6.26480389 -1.62574768 -5.30429745 6.176054 -1.65481663
		 -5.33976746 6.14775562 -1.79154015 -5.26555157 6.20820999 -1.89919567 -5.15586853 6.29696083 -1.87012768
		 -5.12039852 6.3252573 -1.73340416 -5.97061825 7.22285652 -1.62271881 -6.080302238 7.13410521 -1.65178728
		 -6.11577225 7.10580873 -1.78851128 -6.041556358 7.16626215 -1.8961668 -5.93187237 7.25501156 -1.86709881
		 -5.89640427 7.28330994 -1.73037529 -6.76067352 8.19825363 -1.61963511 -6.87035847 8.10950279 -1.64870358
		 -6.90582752 8.081205368 -1.78542709 -6.83161259 8.14165878 -1.89308357 -6.7219286 8.23040962 -1.86401558
		 -6.68645954 8.25870705 -1.72729111 -7.43213463 9.027236938 -1.61701488 -7.54181957 8.93848515 -1.6460824
		 -7.57728863 8.91018867 -1.78280687 -7.50307369 8.97064209 -1.8904624 -7.3933897 9.059392929 -1.86139441
		 -7.35791969 9.087690353 -1.72467041 -8.11069584 9.86498451 -1.61436653 -8.22038174 9.77623272 -1.64343357
		 -8.25584984 9.74793625 -1.78015852 -8.18163586 9.80838966 -1.88781357 -8.071950912 9.8971405 -1.85874605
		 -8.036481857 9.92543793 -1.72202158 -8.94804668 10.18599224 -2.96435928 -9.60765171 9.6486969 -2.0075416565
		 -9.29241085 9.90019608 -0.79237318 -8.31756496 10.68898773 -0.53402233 -7.65795994 11.22628212 -1.49083996
		 -7.9732008 10.97478294 -2.70600796 -9.97209454 11.054304123 -3.71213818 -11.039357185 10.18494415 -2.16397476
		 -10.52928638 10.59187794 -0.1977911 -8.95195103 11.86816978 0.22022963 -7.88468838 12.73752975 -1.32793427
		 -8.39476013 12.33059597 -3.29411793 -10.99706364 12.31972504 -3.70813751 -12.06432724 11.45036507 -2.1599741
		 -11.55425644 11.8572979 -0.19378948 -9.97692013 13.1335907 0.22422981 -8.90965652 14.0029506683 -1.3239336
		 -9.41973019 13.59601784 -3.29011726 -11.6314497 13.49890709 -2.95388603 -12.29105473 12.9616127 -1.99706745
		 -11.97581482 13.21311188 -0.78189993 -11.00096702576 14.0019035339 -0.52354813 -10.34136391 14.53919697 -1.48036623
		 -10.65660572 14.28769779 -2.69553471 -8.31607246 10.046453476 -1.75042677 -11.6329422 14.14144135 -1.73748112;
	setAttr -s 2700 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 0 7 8 0 8 9 0
		 9 10 0 10 11 0 11 6 0 0 17 0 1 16 0 2 15 0 3 14 0 4 19 0 5 18 0 12 0 1 12 1 1 12 2 1
		 12 3 1 12 4 1 12 5 1 6 13 1 7 13 1 8 13 1 9 13 1 10 13 1 11 13 1 14 20 0 15 21 0
		 14 15 1 16 22 0 15 16 1 17 23 0 16 17 1 18 24 0 17 18 1 19 25 0 18 19 1 19 14 1 20 26 0
		 21 27 0 20 21 1 22 28 0 21 22 1 23 29 0 22 23 1 24 30 0 23 24 1 25 31 0 24 25 1 25 20 1
		 26 32 0 27 33 0 26 27 1 28 34 0 27 28 1 29 35 0 28 29 1 30 36 0 29 30 1 31 37 0 30 31 1
		 31 26 1 32 38 0 33 39 0 32 33 1 34 40 0 33 34 1 35 41 0 34 35 1 36 42 0 35 36 1 37 43 0
		 36 37 1 37 32 1 38 44 0 39 45 0 38 39 1 40 46 0 39 40 1 41 47 0 40 41 1 42 48 0 41 42 1
		 43 49 0 42 43 1 43 38 1 44 50 0 45 51 0 44 45 1 46 52 0 45 46 1 47 53 0 46 47 1 48 54 0
		 47 48 1 49 55 0 48 49 1 49 44 1 50 56 0 51 57 0 50 51 1 52 58 0 51 52 1 53 59 0 52 53 1
		 54 60 0 53 54 1 55 61 0 54 55 1 55 50 1 56 9 0 57 8 0 56 57 1 58 7 0 57 58 1 59 6 0
		 58 59 1 60 11 0 59 60 1 61 10 0 60 61 1 61 56 1 62 63 0 63 64 0 64 65 0 65 66 0 66 67 0
		 67 62 0 68 69 0 69 70 0 70 71 0 71 72 0 72 73 0 73 68 0 62 79 0 63 78 0 64 77 0 65 76 0
		 66 81 0 67 80 0 74 62 1 74 63 1 74 64 1 74 65 1 74 66 1 74 67 1 68 75 1 69 75 1 70 75 1
		 71 75 1 72 75 1 73 75 1 76 82 0 77 83 0 76 77 1 78 84 0 77 78 1 79 85 0 78 79 1 80 86 0
		 79 80 1 81 87 0;
	setAttr ".ed[166:331]" 80 81 1 81 76 1 82 88 0 83 89 0 82 83 1 84 90 0 83 84 1
		 85 91 0 84 85 1 86 92 0 85 86 1 87 93 0 86 87 1 87 82 1 88 94 0 89 95 0 88 89 1 90 96 0
		 89 90 1 91 97 0 90 91 1 92 98 0 91 92 1 93 99 0 92 93 1 93 88 1 94 100 0 95 101 0
		 94 95 1 96 102 0 95 96 1 97 103 0 96 97 1 98 104 0 97 98 1 99 105 0 98 99 1 99 94 1
		 100 106 0 101 107 0 100 101 1 102 108 0 101 102 1 103 109 0 102 103 1 104 110 0 103 104 1
		 105 111 0 104 105 1 105 100 1 106 112 0 107 113 0 106 107 1 108 114 0 107 108 1 109 115 0
		 108 109 1 110 116 0 109 110 1 111 117 0 110 111 1 111 106 1 112 118 0 113 119 0 112 113 1
		 114 120 0 113 114 1 115 121 0 114 115 1 116 122 0 115 116 1 117 123 0 116 117 1 117 112 1
		 118 71 0 119 70 0 118 119 1 120 69 0 119 120 1 121 68 0 120 121 1 122 73 0 121 122 1
		 123 72 0 122 123 1 123 118 1 124 125 0 125 126 0 126 127 0 127 128 0 128 129 0 129 124 0
		 130 131 0 131 132 0 132 133 0 133 134 0 134 135 0 135 130 0 124 141 0 125 140 0 126 139 0
		 127 138 0 128 143 0 129 142 0 136 124 1 136 125 1 136 126 1 136 127 1 136 128 1 136 129 1
		 130 137 1 131 137 1 132 137 1 133 137 1 134 137 1 135 137 1 138 144 0 139 145 0 138 139 1
		 140 146 0 139 140 1 141 147 0 140 141 1 142 148 0 141 142 1 143 149 0 142 143 1 143 138 1
		 144 150 0 145 151 0 144 145 1 146 152 0 145 146 1 147 153 0 146 147 1 148 154 0 147 148 1
		 149 155 0 148 149 1 149 144 1 150 156 0 151 157 0 150 151 1 152 158 0 151 152 1 153 159 0
		 152 153 1 154 160 0 153 154 1 155 161 0 154 155 1 155 150 1 156 162 0 157 163 0 156 157 1
		 158 164 0 157 158 1 159 165 0 158 159 1 160 166 0 159 160 1 161 167 0 160 161 1 161 156 1
		 162 168 0 163 169 0;
	setAttr ".ed[332:497]" 162 163 1 164 170 0 163 164 1 165 171 0 164 165 1 166 172 0
		 165 166 1 167 173 0 166 167 1 167 162 1 168 174 0 169 175 0 168 169 1 170 176 0 169 170 1
		 171 177 0 170 171 1 172 178 0 171 172 1 173 179 0 172 173 1 173 168 1 174 180 0 175 181 0
		 174 175 1 176 182 0 175 176 1 177 183 0 176 177 1 178 184 0 177 178 1 179 185 0 178 179 1
		 179 174 1 180 133 0 181 132 0 180 181 1 182 131 0 181 182 1 183 130 0 182 183 1 184 135 0
		 183 184 1 185 134 0 184 185 1 185 180 1 186 187 0 187 188 0 188 189 0 189 190 0 190 191 0
		 191 186 0 192 193 0 193 194 0 194 195 0 195 196 0 196 197 0 197 192 0 198 199 0 199 200 0
		 200 201 0 201 202 0 202 203 0 203 198 0 204 205 0 205 206 0 206 207 0 207 208 0 208 209 0
		 209 204 0 186 192 0 187 193 0 188 194 0 189 195 0 190 196 0 191 197 0 192 198 0 193 199 0
		 194 200 0 195 201 0 196 202 0 197 203 0 198 204 0 199 205 0 200 206 0 201 207 0 202 208 0
		 203 209 0 210 186 0 210 187 0 210 188 0 210 189 0 210 190 0 210 191 0 204 211 0 205 211 0
		 206 211 0 207 211 0 208 211 0 209 211 0 212 213 0 213 214 0 214 215 0 215 216 0 216 217 0
		 217 212 0 218 219 0 219 220 0 220 221 0 221 222 0 222 223 0 223 218 0 224 225 0 225 226 0
		 226 227 0 227 228 0 228 229 0 229 224 0 230 231 0 231 232 0 232 233 0 233 234 0 234 235 0
		 235 230 0 212 218 0 213 219 0 214 220 0 215 221 0 216 222 0 217 223 0 218 224 0 219 225 0
		 220 226 0 221 227 0 222 228 0 223 229 0 224 230 0 225 231 0 226 232 0 227 233 0 228 234 0
		 229 235 0 236 212 0 236 213 0 236 214 0 236 215 0 236 216 0 236 217 0 230 237 0 231 237 0
		 232 237 0 233 237 0 234 237 0 235 237 0 238 239 0 239 240 0 240 241 0 241 242 0 242 243 0
		 243 238 0 244 245 0 245 246 0 246 247 0 247 248 0 248 249 0 249 244 0;
	setAttr ".ed[498:663]" 250 251 0 251 252 0 252 253 0 253 254 0 254 255 0 255 250 0
		 256 257 0 257 258 0 258 259 0 259 260 0 260 261 0 261 256 0 238 244 0 239 245 0 240 246 0
		 241 247 0 242 248 0 243 249 0 244 250 0 245 251 0 246 252 0 247 253 0 248 254 0 249 255 0
		 250 256 0 251 257 0 252 258 0 253 259 0 254 260 0 255 261 0 262 238 0 262 239 0 262 240 0
		 262 241 0 262 242 0 262 243 0 256 263 0 257 263 0 258 263 0 259 263 0 260 263 0 261 263 0
		 264 265 0 265 266 0 266 267 0 267 268 0 268 269 0 269 264 0 270 271 0 271 272 0 272 273 0
		 273 274 0 274 275 0 275 270 0 264 281 0 265 280 0 266 279 0 267 278 0 268 283 0 269 282 0
		 276 264 1 276 265 1 276 266 1 276 267 1 276 268 1 276 269 1 270 277 1 271 277 1 272 277 1
		 273 277 1 274 277 1 275 277 1 278 284 0 279 285 0 278 279 1 280 286 0 279 280 1 281 287 0
		 280 281 1 282 288 0 281 282 1 283 289 0 282 283 1 283 278 1 284 290 0 285 291 0 284 285 1
		 286 292 0 285 286 1 287 293 0 286 287 1 288 294 0 287 288 1 289 295 0 288 289 1 289 284 1
		 290 296 0 291 297 0 290 291 1 292 298 0 291 292 1 293 299 0 292 293 1 294 300 0 293 294 1
		 295 301 0 294 295 1 295 290 1 296 302 0 297 303 0 296 297 1 298 304 0 297 298 1 299 305 0
		 298 299 1 300 306 0 299 300 1 301 307 0 300 301 1 301 296 1 302 308 0 303 309 0 302 303 1
		 304 310 0 303 304 1 305 311 0 304 305 1 306 312 0 305 306 1 307 313 0 306 307 1 307 302 1
		 308 314 0 309 315 0 308 309 1 310 316 0 309 310 1 311 317 0 310 311 1 312 318 0 311 312 1
		 313 319 0 312 313 1 313 308 1 314 320 0 315 321 0 314 315 1 316 322 0 315 316 1 317 323 0
		 316 317 1 318 324 0 317 318 1 319 325 0 318 319 1 319 314 1 320 273 0 321 272 0 320 321 1
		 322 271 0 321 322 1 323 270 0 322 323 1 324 275 0 323 324 1 325 274 0;
	setAttr ".ed[664:829]" 324 325 1 325 320 1 326 327 0 327 328 0 328 329 0 329 330 0
		 330 331 0 331 326 0 332 333 0 333 334 0 334 335 0 335 336 0 336 337 0 337 332 0 338 339 0
		 339 340 0 340 341 0 341 342 0 342 343 0 343 338 0 344 345 0 345 346 0 346 347 0 347 348 0
		 348 349 0 349 344 0 326 332 0 327 333 0 328 334 0 329 335 0 330 336 0 331 337 0 332 338 0
		 333 339 0 334 340 0 335 341 0 336 342 0 337 343 0 338 344 0 339 345 0 340 346 0 341 347 0
		 342 348 0 343 349 0 350 326 0 350 327 0 350 328 0 350 329 0 350 330 0 350 331 0 344 351 0
		 345 351 0 346 351 0 347 351 0 348 351 0 349 351 0 352 353 0 353 354 0 354 355 0 355 356 0
		 356 357 0 357 352 0 358 359 0 359 360 0 360 361 0 361 362 0 362 363 0 363 358 0 364 365 0
		 365 366 0 366 367 0 367 368 0 368 369 0 369 364 0 370 371 0 371 372 0 372 373 0 373 374 0
		 374 375 0 375 370 0 352 358 0 353 359 0 354 360 0 355 361 0 356 362 0 357 363 0 358 364 0
		 359 365 0 360 366 0 361 367 0 362 368 0 363 369 0 364 370 0 365 371 0 366 372 0 367 373 0
		 368 374 0 369 375 0 376 352 0 376 353 0 376 354 0 376 355 0 376 356 0 376 357 0 370 377 0
		 371 377 0 372 377 0 373 377 0 374 377 0 375 377 0 378 379 0 379 380 0 380 381 0 381 382 0
		 382 383 0 383 378 0 384 385 0 385 386 0 386 387 0 387 388 0 388 389 0 389 384 0 378 395 0
		 379 394 0 380 393 0 381 392 0 382 397 0 383 396 0 390 378 1 390 379 1 390 380 1 390 381 1
		 390 382 1 390 383 1 384 391 1 385 391 1 386 391 1 387 391 1 388 391 1 389 391 1 392 398 0
		 393 399 0 392 393 1 394 400 0 393 394 1 395 401 0 394 395 1 396 402 0 395 396 1 397 403 0
		 396 397 1 397 392 1 398 404 0 399 405 0 398 399 1 400 406 0 399 400 1 401 407 0 400 401 1
		 402 408 0 401 402 1 403 409 0 402 403 1 403 398 1 404 410 0 405 411 0;
	setAttr ".ed[830:995]" 404 405 1 406 412 0 405 406 1 407 413 0 406 407 1 408 414 0
		 407 408 1 409 415 0 408 409 1 409 404 1 410 416 0 411 417 0 410 411 1 412 418 0 411 412 1
		 413 419 0 412 413 1 414 420 0 413 414 1 415 421 0 414 415 1 415 410 1 416 422 0 417 423 0
		 416 417 1 418 424 0 417 418 1 419 425 0 418 419 1 420 426 0 419 420 1 421 427 0 420 421 1
		 421 416 1 422 428 0 423 429 0 422 423 1 424 430 0 423 424 1 425 431 0 424 425 1 426 432 0
		 425 426 1 427 433 0 426 427 1 427 422 1 428 434 0 429 435 0 428 429 1 430 436 0 429 430 1
		 431 437 0 430 431 1 432 438 0 431 432 1 433 439 0 432 433 1 433 428 1 434 387 0 435 386 0
		 434 435 1 436 385 0 435 436 1 437 384 0 436 437 1 438 389 0 437 438 1 439 388 0 438 439 1
		 439 434 1 440 441 0 441 442 0 442 443 0 443 444 0 444 445 0 445 440 0 446 447 0 447 448 0
		 448 449 0 449 450 0 450 451 0 451 446 0 452 453 0 453 454 0 454 455 0 455 456 0 456 457 0
		 457 452 0 458 459 0 459 460 0 460 461 0 461 462 0 462 463 0 463 458 0 440 446 0 441 447 0
		 442 448 0 443 449 0 444 450 0 445 451 0 446 452 0 447 453 0 448 454 0 449 455 0 450 456 0
		 451 457 0 452 458 0 453 459 0 454 460 0 455 461 0 456 462 0 457 463 0 464 440 0 464 441 0
		 464 442 0 464 443 0 464 444 0 464 445 0 458 465 0 459 465 0 460 465 0 461 465 0 462 465 0
		 463 465 0 466 467 0 467 468 0 468 469 0 469 470 0 470 471 0 471 466 0 472 473 0 473 474 0
		 474 475 0 475 476 0 476 477 0 477 472 0 466 483 0 467 482 0 468 481 0 469 480 0 470 485 0
		 471 484 0 478 466 1 478 467 1 478 468 1 478 469 1 478 470 1 478 471 1 472 479 1 473 479 1
		 474 479 1 475 479 1 476 479 1 477 479 1 480 486 0 481 487 0 480 481 1 482 488 0 481 482 1
		 483 489 0 482 483 1 484 490 0 483 484 1 485 491 0 484 485 1 485 480 1;
	setAttr ".ed[996:1161]" 486 492 0 487 493 0 486 487 1 488 494 0 487 488 1 489 495 0
		 488 489 1 490 496 0 489 490 1 491 497 0 490 491 1 491 486 1 492 498 0 493 499 0 492 493 1
		 494 500 0 493 494 1 495 501 0 494 495 1 496 502 0 495 496 1 497 503 0 496 497 1 497 492 1
		 498 504 0 499 505 0 498 499 1 500 506 0 499 500 1 501 507 0 500 501 1 502 508 0 501 502 1
		 503 509 0 502 503 1 503 498 1 504 510 0 505 511 0 504 505 1 506 512 0 505 506 1 507 513 0
		 506 507 1 508 514 0 507 508 1 509 515 0 508 509 1 509 504 1 510 516 0 511 517 0 510 511 1
		 512 518 0 511 512 1 513 519 0 512 513 1 514 520 0 513 514 1 515 521 0 514 515 1 515 510 1
		 516 522 0 517 523 0 516 517 1 518 524 0 517 518 1 519 525 0 518 519 1 520 526 0 519 520 1
		 521 527 0 520 521 1 521 516 1 522 475 0 523 474 0 522 523 1 524 473 0 523 524 1 525 472 0
		 524 525 1 526 477 0 525 526 1 527 476 0 526 527 1 527 522 1 528 529 0 529 530 0 530 531 0
		 531 532 0 532 533 0 533 528 0 534 535 0 535 536 0 536 537 0 537 538 0 538 539 0 539 534 0
		 528 545 0 529 544 0 530 543 0 531 542 0 532 547 0 533 546 0 540 528 1 540 529 1 540 530 1
		 540 531 1 540 532 1 540 533 1 534 541 1 535 541 1 536 541 1 537 541 1 538 541 1 539 541 1
		 542 548 0 543 549 0 542 543 1 544 550 0 543 544 1 545 551 0 544 545 1 546 552 0 545 546 1
		 547 553 0 546 547 1 547 542 1 548 554 0 549 555 0 548 549 1 550 556 0 549 550 1 551 557 0
		 550 551 1 552 558 0 551 552 1 553 559 0 552 553 1 553 548 1 554 560 0 555 561 0 554 555 1
		 556 562 0 555 556 1 557 563 0 556 557 1 558 564 0 557 558 1 559 565 0 558 559 1 559 554 1
		 560 566 0 561 567 0 560 561 1 562 568 0 561 562 1 563 569 0 562 563 1 564 570 0 563 564 1
		 565 571 0 564 565 1 565 560 1 566 572 0 567 573 0 566 567 1 568 574 0;
	setAttr ".ed[1162:1327]" 567 568 1 569 575 0 568 569 1 570 576 0 569 570 1 571 577 0
		 570 571 1 571 566 1 572 578 0 573 579 0 572 573 1 574 580 0 573 574 1 575 581 0 574 575 1
		 576 582 0 575 576 1 577 583 0 576 577 1 577 572 1 578 584 0 579 585 0 578 579 1 580 586 0
		 579 580 1 581 587 0 580 581 1 582 588 0 581 582 1 583 589 0 582 583 1 583 578 1 584 537 0
		 585 536 0 584 585 1 586 535 0 585 586 1 587 534 0 586 587 1 588 539 0 587 588 1 589 538 0
		 588 589 1 589 584 1 590 591 0 591 592 0 592 593 0 593 594 0 594 595 0 595 590 0 596 597 0
		 597 598 0 598 599 0 599 600 0 600 601 0 601 596 0 602 603 0 603 604 0 604 605 0 605 606 0
		 606 607 0 607 602 0 608 609 0 609 610 0 610 611 0 611 612 0 612 613 0 613 608 0 590 596 0
		 591 597 0 592 598 0 593 599 0 594 600 0 595 601 0 596 602 0 597 603 0 598 604 0 599 605 0
		 600 606 0 601 607 0 602 608 0 603 609 0 604 610 0 605 611 0 606 612 0 607 613 0 614 590 0
		 614 591 0 614 592 0 614 593 0 614 594 0 614 595 0 608 615 0 609 615 0 610 615 0 611 615 0
		 612 615 0 613 615 0 616 617 0 617 618 0 618 619 0 619 620 0 620 621 0 621 616 0 622 623 0
		 623 624 0 624 625 0 625 626 0 626 627 0 627 622 0 628 629 0 629 630 0 630 631 0 631 632 0
		 632 633 0 633 628 0 634 635 0 635 636 0 636 637 0 637 638 0 638 639 0 639 634 0 616 622 0
		 617 623 0 618 624 0 619 625 0 620 626 0 621 627 0 622 628 0 623 629 0 624 630 0 625 631 0
		 626 632 0 627 633 0 628 634 0 629 635 0 630 636 0 631 637 0 632 638 0 633 639 0 640 616 0
		 640 617 0 640 618 0 640 619 0 640 620 0 640 621 0 634 641 0 635 641 0 636 641 0 637 641 0
		 638 641 0 639 641 0 642 643 0 643 644 0 644 645 0 645 646 0 646 647 0 647 642 0 648 649 0
		 649 650 0 650 651 0 651 652 0 652 653 0 653 648 0 642 659 0 643 658 0;
	setAttr ".ed[1328:1493]" 644 657 0 645 656 0 646 661 0 647 660 0 654 642 1 654 643 1
		 654 644 1 654 645 1 654 646 1 654 647 1 648 655 1 649 655 1 650 655 1 651 655 1 652 655 1
		 653 655 1 656 662 0 657 663 0 656 657 1 658 664 0 657 658 1 659 665 0 658 659 1 660 666 0
		 659 660 1 661 667 0 660 661 1 661 656 1 662 668 0 663 669 0 662 663 1 664 670 0 663 664 1
		 665 671 0 664 665 1 666 672 0 665 666 1 667 673 0 666 667 1 667 662 1 668 674 0 669 675 0
		 668 669 1 670 676 0 669 670 1 671 677 0 670 671 1 672 678 0 671 672 1 673 679 0 672 673 1
		 673 668 1 674 680 0 675 681 0 674 675 1 676 682 0 675 676 1 677 683 0 676 677 1 678 684 0
		 677 678 1 679 685 0 678 679 1 679 674 1 680 686 0 681 687 0 680 681 1 682 688 0 681 682 1
		 683 689 0 682 683 1 684 690 0 683 684 1 685 691 0 684 685 1 685 680 1 686 692 0 687 693 0
		 686 687 1 688 694 0 687 688 1 689 695 0 688 689 1 690 696 0 689 690 1 691 697 0 690 691 1
		 691 686 1 692 698 0 693 699 0 692 693 1 694 700 0 693 694 1 695 701 0 694 695 1 696 702 0
		 695 696 1 697 703 0 696 697 1 697 692 1 698 651 0 699 650 0 698 699 1 700 649 0 699 700 1
		 701 648 0 700 701 1 702 653 0 701 702 1 703 652 0 702 703 1 703 698 1 704 705 0 705 706 0
		 706 707 0 707 708 0 708 709 0 709 704 0 710 711 0 711 712 0 712 713 0 713 714 0 714 715 0
		 715 710 0 716 717 0 717 718 0 718 719 0 719 720 0 720 721 0 721 716 0 722 723 0 723 724 0
		 724 725 0 725 726 0 726 727 0 727 722 0 704 710 0 705 711 0 706 712 0 707 713 0 708 714 0
		 709 715 0 710 716 0 711 717 0 712 718 0 713 719 0 714 720 0 715 721 0 716 722 0 717 723 0
		 718 724 0 719 725 0 720 726 0 721 727 0 728 704 0 728 705 0 728 706 0 728 707 0 728 708 0
		 728 709 0 722 729 0 723 729 0 724 729 0 725 729 0 726 729 0 727 729 0;
	setAttr ".ed[1494:1659]" 730 731 0 731 732 0 732 733 0 733 734 0 734 735 0 735 730 0
		 736 737 0 737 738 0 738 739 0 739 740 0 740 741 0 741 736 0 730 747 0 731 746 0 732 745 0
		 733 744 0 734 749 0 735 748 0 742 730 1 742 731 1 742 732 1 742 733 1 742 734 1 742 735 1
		 736 743 1 737 743 1 738 743 1 739 743 1 740 743 1 741 743 1 744 750 0 745 751 0 744 745 1
		 746 752 0 745 746 1 747 753 0 746 747 1 748 754 0 747 748 1 749 755 0 748 749 1 749 744 1
		 750 756 0 751 757 0 750 751 1 752 758 0 751 752 1 753 759 0 752 753 1 754 760 0 753 754 1
		 755 761 0 754 755 1 755 750 1 756 762 0 757 763 0 756 757 1 758 764 0 757 758 1 759 765 0
		 758 759 1 760 766 0 759 760 1 761 767 0 760 761 1 761 756 1 762 768 0 763 769 0 762 763 1
		 764 770 0 763 764 1 765 771 0 764 765 1 766 772 0 765 766 1 767 773 0 766 767 1 767 762 1
		 768 774 0 769 775 0 768 769 1 770 776 0 769 770 1 771 777 0 770 771 1 772 778 0 771 772 1
		 773 779 0 772 773 1 773 768 1 774 780 0 775 781 0 774 775 1 776 782 0 775 776 1 777 783 0
		 776 777 1 778 784 0 777 778 1 779 785 0 778 779 1 779 774 1 780 786 0 781 787 0 780 781 1
		 782 788 0 781 782 1 783 789 0 782 783 1 784 790 0 783 784 1 785 791 0 784 785 1 785 780 1
		 786 739 0 787 738 0 786 787 1 788 737 0 787 788 1 789 736 0 788 789 1 790 741 0 789 790 1
		 791 740 0 790 791 1 791 786 1 792 793 0 793 794 0 794 795 0 795 796 0 796 797 0 797 792 0
		 798 799 0 799 800 0 800 801 0 801 802 0 802 803 0 803 798 0 792 809 0 793 808 0 794 807 0
		 795 806 0 796 811 0 797 810 0 804 792 1 804 793 1 804 794 1 804 795 1 804 796 1 804 797 1
		 798 805 1 799 805 1 800 805 1 801 805 1 802 805 1 803 805 1 806 812 0 807 813 0 806 807 1
		 808 814 0 807 808 1 809 815 0 808 809 1 810 816 0 809 810 1 811 817 0;
	setAttr ".ed[1660:1825]" 810 811 1 811 806 1 812 818 0 813 819 0 812 813 1 814 820 0
		 813 814 1 815 821 0 814 815 1 816 822 0 815 816 1 817 823 0 816 817 1 817 812 1 818 824 0
		 819 825 0 818 819 1 820 826 0 819 820 1 821 827 0 820 821 1 822 828 0 821 822 1 823 829 0
		 822 823 1 823 818 1 824 830 0 825 831 0 824 825 1 826 832 0 825 826 1 827 833 0 826 827 1
		 828 834 0 827 828 1 829 835 0 828 829 1 829 824 1 830 836 0 831 837 0 830 831 1 832 838 0
		 831 832 1 833 839 0 832 833 1 834 840 0 833 834 1 835 841 0 834 835 1 835 830 1 836 842 0
		 837 843 0 836 837 1 838 844 0 837 838 1 839 845 0 838 839 1 840 846 0 839 840 1 841 847 0
		 840 841 1 841 836 1 842 848 0 843 849 0 842 843 1 844 850 0 843 844 1 845 851 0 844 845 1
		 846 852 0 845 846 1 847 853 0 846 847 1 847 842 1 848 801 0 849 800 0 848 849 1 850 799 0
		 849 850 1 851 798 0 850 851 1 852 803 0 851 852 1 853 802 0 852 853 1 853 848 1 854 855 0
		 855 856 0 856 857 0 857 858 0 858 859 0 859 854 0 860 861 0 861 862 0 862 863 0 863 864 0
		 864 865 0 865 860 0 866 867 0 867 868 0 868 869 0 869 870 0 870 871 0 871 866 0 872 873 0
		 873 874 0 874 875 0 875 876 0 876 877 0 877 872 0 854 860 0 855 861 0 856 862 0 857 863 0
		 858 864 0 859 865 0 860 866 0 861 867 0 862 868 0 863 869 0 864 870 0 865 871 0 866 872 0
		 867 873 0 868 874 0 869 875 0 870 876 0 871 877 0 878 854 0 878 855 0 878 856 0 878 857 0
		 878 858 0 878 859 0 872 879 0 873 879 0 874 879 0 875 879 0 876 879 0 877 879 0 880 881 0
		 881 882 0 882 883 0 883 884 0 884 885 0 885 880 0 886 887 0 887 888 0 888 889 0 889 890 0
		 890 891 0 891 886 0 892 893 0 893 894 0 894 895 0 895 896 0 896 897 0 897 892 0 898 899 0
		 899 900 0 900 901 0 901 902 0 902 903 0 903 898 0 880 886 0 881 887 0;
	setAttr ".ed[1826:1991]" 882 888 0 883 889 0 884 890 0 885 891 0 886 892 0 887 893 0
		 888 894 0 889 895 0 890 896 0 891 897 0 892 898 0 893 899 0 894 900 0 895 901 0 896 902 0
		 897 903 0 904 880 0 904 881 0 904 882 0 904 883 0 904 884 0 904 885 0 898 905 0 899 905 0
		 900 905 0 901 905 0 902 905 0 903 905 0 906 907 0 907 908 0 908 909 0 909 910 0 910 911 0
		 911 906 0 912 913 0 913 914 0 914 915 0 915 916 0 916 917 0 917 912 0 906 923 0 907 922 0
		 908 921 0 909 920 0 910 925 0 911 924 0 918 906 1 918 907 1 918 908 1 918 909 1 918 910 1
		 918 911 1 912 919 1 913 919 1 914 919 1 915 919 1 916 919 1 917 919 1 920 926 0 921 927 0
		 920 921 1 922 928 0 921 922 1 923 929 0 922 923 1 924 930 0 923 924 1 925 931 0 924 925 1
		 925 920 1 926 932 0 927 933 0 926 927 1 928 934 0 927 928 1 929 935 0 928 929 1 930 936 0
		 929 930 1 931 937 0 930 931 1 931 926 1 932 938 0 933 939 0 932 933 1 934 940 0 933 934 1
		 935 941 0 934 935 1 936 942 0 935 936 1 937 943 0 936 937 1 937 932 1 938 944 0 939 945 0
		 938 939 1 940 946 0 939 940 1 941 947 0 940 941 1 942 948 0 941 942 1 943 949 0 942 943 1
		 943 938 1 944 950 0 945 951 0 944 945 1 946 952 0 945 946 1 947 953 0 946 947 1 948 954 0
		 947 948 1 949 955 0 948 949 1 949 944 1 950 956 0 951 957 0 950 951 1 952 958 0 951 952 1
		 953 959 0 952 953 1 954 960 0 953 954 1 955 961 0 954 955 1 955 950 1 956 962 0 957 963 0
		 956 957 1 958 964 0 957 958 1 959 965 0 958 959 1 960 966 0 959 960 1 961 967 0 960 961 1
		 961 956 1 962 915 0 963 914 0 962 963 1 964 913 0 963 964 1 965 912 0 964 965 1 966 917 0
		 965 966 1 967 916 0 966 967 1 967 962 1 968 969 0 969 970 0 970 971 0 971 972 0 972 973 0
		 973 968 0 974 975 0 975 976 0 976 977 0 977 978 0 978 979 0 979 974 0;
	setAttr ".ed[1992:2157]" 980 981 0 981 982 0 982 983 0 983 984 0 984 985 0 985 980 0
		 986 987 0 987 988 0 988 989 0 989 990 0 990 991 0 991 986 0 968 974 0 969 975 0 970 976 0
		 971 977 0 972 978 0 973 979 0 974 980 0 975 981 0 976 982 0 977 983 0 978 984 0 979 985 0
		 980 986 0 981 987 0 982 988 0 983 989 0 984 990 0 985 991 0 992 968 0 992 969 0 992 970 0
		 992 971 0 992 972 0 992 973 0 986 993 0 987 993 0 988 993 0 989 993 0 990 993 0 991 993 0
		 994 995 0 995 996 0 996 997 0 997 998 0 998 999 0 999 994 0 1000 1001 0 1001 1002 0
		 1002 1003 0 1003 1004 0 1004 1005 0 1005 1000 0 994 1011 0 995 1010 0 996 1009 0
		 997 1008 0 998 1013 0 999 1012 0 1006 994 1 1006 995 1 1006 996 1 1006 997 1 1006 998 1
		 1006 999 1 1000 1007 1 1001 1007 1 1002 1007 1 1003 1007 1 1004 1007 1 1005 1007 1
		 1008 1014 0 1009 1015 0 1008 1009 1 1010 1016 0 1009 1010 1 1011 1017 0 1010 1011 1
		 1012 1018 0 1011 1012 1 1013 1019 0 1012 1013 1 1013 1008 1 1014 1020 0 1015 1021 0
		 1014 1015 1 1016 1022 0 1015 1016 1 1017 1023 0 1016 1017 1 1018 1024 0 1017 1018 1
		 1019 1025 0 1018 1019 1 1019 1014 1 1020 1026 0 1021 1027 0 1020 1021 1 1022 1028 0
		 1021 1022 1 1023 1029 0 1022 1023 1 1024 1030 0 1023 1024 1 1025 1031 0 1024 1025 1
		 1025 1020 1 1026 1032 0 1027 1033 0 1026 1027 1 1028 1034 0 1027 1028 1 1029 1035 0
		 1028 1029 1 1030 1036 0 1029 1030 1 1031 1037 0 1030 1031 1 1031 1026 1 1032 1038 0
		 1033 1039 0 1032 1033 1 1034 1040 0 1033 1034 1 1035 1041 0 1034 1035 1 1036 1042 0
		 1035 1036 1 1037 1043 0 1036 1037 1 1037 1032 1 1038 1044 0 1039 1045 0 1038 1039 1
		 1040 1046 0 1039 1040 1 1041 1047 0 1040 1041 1 1042 1048 0 1041 1042 1 1043 1049 0
		 1042 1043 1 1043 1038 1 1044 1050 0 1045 1051 0 1044 1045 1 1046 1052 0 1045 1046 1
		 1047 1053 0 1046 1047 1 1048 1054 0 1047 1048 1 1049 1055 0 1048 1049 1 1049 1044 1
		 1050 1003 0 1051 1002 0 1050 1051 1 1052 1001 0 1051 1052 1 1053 1000 0 1052 1053 1
		 1054 1005 0 1053 1054 1 1055 1004 0;
	setAttr ".ed[2158:2323]" 1054 1055 1 1055 1050 1 1056 1057 0 1057 1058 0 1058 1059 0
		 1059 1060 0 1060 1061 0 1061 1056 0 1062 1063 0 1063 1064 0 1064 1065 0 1065 1066 0
		 1066 1067 0 1067 1062 0 1068 1069 0 1069 1070 0 1070 1071 0 1071 1072 0 1072 1073 0
		 1073 1068 0 1074 1075 0 1075 1076 0 1076 1077 0 1077 1078 0 1078 1079 0 1079 1074 0
		 1056 1062 0 1057 1063 0 1058 1064 0 1059 1065 0 1060 1066 0 1061 1067 0 1062 1068 0
		 1063 1069 0 1064 1070 0 1065 1071 0 1066 1072 0 1067 1073 0 1068 1074 0 1069 1075 0
		 1070 1076 0 1071 1077 0 1072 1078 0 1073 1079 0 1080 1056 0 1080 1057 0 1080 1058 0
		 1080 1059 0 1080 1060 0 1080 1061 0 1074 1081 0 1075 1081 0 1076 1081 0 1077 1081 0
		 1078 1081 0 1079 1081 0 1082 1083 0 1083 1084 0 1084 1085 0 1085 1086 0 1086 1087 0
		 1087 1082 0 1088 1089 0 1089 1090 0 1090 1091 0 1091 1092 0 1092 1093 0 1093 1088 0
		 1082 1099 0 1083 1098 0 1084 1097 0 1085 1096 0 1086 1101 0 1087 1100 0 1094 1082 1
		 1094 1083 1 1094 1084 1 1094 1085 1 1094 1086 1 1094 1087 1 1088 1095 1 1089 1095 1
		 1090 1095 1 1091 1095 1 1092 1095 1 1093 1095 1 1096 1102 0 1097 1103 0 1096 1097 1
		 1098 1104 0 1097 1098 1 1099 1105 0 1098 1099 1 1100 1106 0 1099 1100 1 1101 1107 0
		 1100 1101 1 1101 1096 1 1102 1108 0 1103 1109 0 1102 1103 1 1104 1110 0 1103 1104 1
		 1105 1111 0 1104 1105 1 1106 1112 0 1105 1106 1 1107 1113 0 1106 1107 1 1107 1102 1
		 1108 1114 0 1109 1115 0 1108 1109 1 1110 1116 0 1109 1110 1 1111 1117 0 1110 1111 1
		 1112 1118 0 1111 1112 1 1113 1119 0 1112 1113 1 1113 1108 1 1114 1120 0 1115 1121 0
		 1114 1115 1 1116 1122 0 1115 1116 1 1117 1123 0 1116 1117 1 1118 1124 0 1117 1118 1
		 1119 1125 0 1118 1119 1 1119 1114 1 1120 1126 0 1121 1127 0 1120 1121 1 1122 1128 0
		 1121 1122 1 1123 1129 0 1122 1123 1 1124 1130 0 1123 1124 1 1125 1131 0 1124 1125 1
		 1125 1120 1 1126 1132 0 1127 1133 0 1126 1127 1 1128 1134 0 1127 1128 1 1129 1135 0
		 1128 1129 1 1130 1136 0 1129 1130 1 1131 1137 0 1130 1131 1 1131 1126 1 1132 1138 0
		 1133 1139 0 1132 1133 1 1134 1140 0 1133 1134 1 1135 1141 0 1134 1135 1 1136 1142 0;
	setAttr ".ed[2324:2489]" 1135 1136 1 1137 1143 0 1136 1137 1 1137 1132 1 1138 1091 0
		 1139 1090 0 1138 1139 1 1140 1089 0 1139 1140 1 1141 1088 0 1140 1141 1 1142 1093 0
		 1141 1142 1 1143 1092 0 1142 1143 1 1143 1138 1 1144 1145 0 1145 1146 0 1146 1147 0
		 1147 1148 0 1148 1149 0 1149 1144 0 1150 1151 0 1151 1152 0 1152 1153 0 1153 1154 0
		 1154 1155 0 1155 1150 0 1156 1157 0 1157 1158 0 1158 1159 0 1159 1160 0 1160 1161 0
		 1161 1156 0 1162 1163 0 1163 1164 0 1164 1165 0 1165 1166 0 1166 1167 0 1167 1162 0
		 1144 1150 0 1145 1151 0 1146 1152 0 1147 1153 0 1148 1154 0 1149 1155 0 1150 1156 0
		 1151 1157 0 1152 1158 0 1153 1159 0 1154 1160 0 1155 1161 0 1156 1162 0 1157 1163 0
		 1158 1164 0 1159 1165 0 1160 1166 0 1161 1167 0 1168 1144 0 1168 1145 0 1168 1146 0
		 1168 1147 0 1168 1148 0 1168 1149 0 1162 1169 0 1163 1169 0 1164 1169 0 1165 1169 0
		 1166 1169 0 1167 1169 0 1170 1171 0 1171 1172 0 1172 1173 0 1173 1174 0 1174 1175 0
		 1175 1170 0 1176 1177 0 1177 1178 0 1178 1179 0 1179 1180 0 1180 1181 0 1181 1176 0
		 1170 1187 0 1171 1186 0 1172 1185 0 1173 1184 0 1174 1189 0 1175 1188 0 1182 1170 1
		 1182 1171 1 1182 1172 1 1182 1173 1 1182 1174 1 1182 1175 1 1176 1183 1 1177 1183 1
		 1178 1183 1 1179 1183 1 1180 1183 1 1181 1183 1 1184 1190 0 1185 1191 0 1184 1185 1
		 1186 1192 0 1185 1186 1 1187 1193 0 1186 1187 1 1188 1194 0 1187 1188 1 1189 1195 0
		 1188 1189 1 1189 1184 1 1190 1196 0 1191 1197 0 1190 1191 1 1192 1198 0 1191 1192 1
		 1193 1199 0 1192 1193 1 1194 1200 0 1193 1194 1 1195 1201 0 1194 1195 1 1195 1190 1
		 1196 1202 0 1197 1203 0 1196 1197 1 1198 1204 0 1197 1198 1 1199 1205 0 1198 1199 1
		 1200 1206 0 1199 1200 1 1201 1207 0 1200 1201 1 1201 1196 1 1202 1208 0 1203 1209 0
		 1202 1203 1 1204 1210 0 1203 1204 1 1205 1211 0 1204 1205 1 1206 1212 0 1205 1206 1
		 1207 1213 0 1206 1207 1 1207 1202 1 1208 1214 0 1209 1215 0 1208 1209 1 1210 1216 0
		 1209 1210 1 1211 1217 0 1210 1211 1 1212 1218 0 1211 1212 1 1213 1219 0 1212 1213 1
		 1213 1208 1 1214 1220 0 1215 1221 0 1214 1215 1 1216 1222 0 1215 1216 1 1217 1223 0;
	setAttr ".ed[2490:2655]" 1216 1217 1 1218 1224 0 1217 1218 1 1219 1225 0 1218 1219 1
		 1219 1214 1 1220 1226 0 1221 1227 0 1220 1221 1 1222 1228 0 1221 1222 1 1223 1229 0
		 1222 1223 1 1224 1230 0 1223 1224 1 1225 1231 0 1224 1225 1 1225 1220 1 1226 1179 0
		 1227 1178 0 1226 1227 1 1228 1177 0 1227 1228 1 1229 1176 0 1228 1229 1 1230 1181 0
		 1229 1230 1 1231 1180 0 1230 1231 1 1231 1226 1 1232 1233 0 1233 1234 0 1234 1235 0
		 1235 1236 0 1236 1237 0 1237 1232 0 1238 1239 0 1239 1240 0 1240 1241 0 1241 1242 0
		 1242 1243 0 1243 1238 0 1232 1249 0 1233 1248 0 1234 1247 0 1235 1246 0 1236 1251 0
		 1237 1250 0 1244 1232 1 1244 1233 1 1244 1234 1 1244 1235 1 1244 1236 1 1244 1237 1
		 1238 1245 1 1239 1245 1 1240 1245 1 1241 1245 1 1242 1245 1 1243 1245 1 1246 1252 0
		 1247 1253 0 1246 1247 1 1248 1254 0 1247 1248 1 1249 1255 0 1248 1249 1 1250 1256 0
		 1249 1250 1 1251 1257 0 1250 1251 1 1251 1246 1 1252 1258 0 1253 1259 0 1252 1253 1
		 1254 1260 0 1253 1254 1 1255 1261 0 1254 1255 1 1256 1262 0 1255 1256 1 1257 1263 0
		 1256 1257 1 1257 1252 1 1258 1264 0 1259 1265 0 1258 1259 1 1260 1266 0 1259 1260 1
		 1261 1267 0 1260 1261 1 1262 1268 0 1261 1262 1 1263 1269 0 1262 1263 1 1263 1258 1
		 1264 1270 0 1265 1271 0 1264 1265 1 1266 1272 0 1265 1266 1 1267 1273 0 1266 1267 1
		 1268 1274 0 1267 1268 1 1269 1275 0 1268 1269 1 1269 1264 1 1270 1276 0 1271 1277 0
		 1270 1271 1 1272 1278 0 1271 1272 1 1273 1279 0 1272 1273 1 1274 1280 0 1273 1274 1
		 1275 1281 0 1274 1275 1 1275 1270 1 1276 1282 0 1277 1283 0 1276 1277 1 1278 1284 0
		 1277 1278 1 1279 1285 0 1278 1279 1 1280 1286 0 1279 1280 1 1281 1287 0 1280 1281 1
		 1281 1276 1 1282 1288 0 1283 1289 0 1282 1283 1 1284 1290 0 1283 1284 1 1285 1291 0
		 1284 1285 1 1286 1292 0 1285 1286 1 1287 1293 0 1286 1287 1 1287 1282 1 1288 1241 0
		 1289 1240 0 1288 1289 1 1290 1239 0 1289 1290 1 1291 1238 0 1290 1291 1 1292 1243 0
		 1291 1292 1 1293 1242 0 1292 1293 1 1293 1288 1 1294 1295 0 1295 1296 0 1296 1297 0
		 1297 1298 0 1298 1299 0 1299 1294 0 1300 1301 0 1301 1302 0 1302 1303 0 1303 1304 0;
	setAttr ".ed[2656:2699]" 1304 1305 0 1305 1300 0 1306 1307 0 1307 1308 0 1308 1309 0
		 1309 1310 0 1310 1311 0 1311 1306 0 1312 1313 0 1313 1314 0 1314 1315 0 1315 1316 0
		 1316 1317 0 1317 1312 0 1294 1300 0 1295 1301 0 1296 1302 0 1297 1303 0 1298 1304 0
		 1299 1305 0 1300 1306 0 1301 1307 0 1302 1308 0 1303 1309 0 1304 1310 0 1305 1311 0
		 1306 1312 0 1307 1313 0 1308 1314 0 1309 1315 0 1310 1316 0 1311 1317 0 1318 1294 0
		 1318 1295 0 1318 1296 0 1318 1297 0 1318 1298 0 1318 1299 0 1312 1319 0 1313 1319 0
		 1314 1319 0 1315 1319 0 1316 1319 0 1317 1319 0;
	setAttr -s 1440 -ch 5400 ".fc";
	setAttr ".fc[0:499]" -type "polyFaces" 
		f 4 0 13 36 -13
		mu 0 4 0 1 2 3
		f 4 1 14 34 -14
		mu 0 4 1 4 5 2
		f 4 2 15 32 -15
		mu 0 4 4 6 7 5
		f 4 3 16 41 -16
		mu 0 4 6 8 9 7
		f 4 4 17 40 -17
		mu 0 4 8 10 11 9
		f 4 5 12 38 -18
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
		f 4 -33 30 44 -32
		mu 0 4 5 7 28 29
		f 4 -35 31 46 -34
		mu 0 4 2 5 29 30
		f 4 -37 33 48 -36
		mu 0 4 3 2 30 31
		f 4 -39 35 50 -38
		mu 0 4 11 13 32 33
		f 4 -41 37 52 -40
		mu 0 4 9 11 33 34
		f 4 -42 39 53 -31
		mu 0 4 7 9 34 28
		f 4 -45 42 56 -44
		mu 0 4 29 28 35 36
		f 4 -47 43 58 -46
		mu 0 4 30 29 36 37
		f 4 -49 45 60 -48
		mu 0 4 31 30 37 38
		f 4 -51 47 62 -50
		mu 0 4 33 32 39 40
		f 4 -53 49 64 -52
		mu 0 4 34 33 40 41
		f 4 -54 51 65 -43
		mu 0 4 28 34 41 35
		f 4 -57 54 68 -56
		mu 0 4 36 35 42 43
		f 4 -59 55 70 -58
		mu 0 4 37 36 43 44
		f 4 -61 57 72 -60
		mu 0 4 38 37 44 45
		f 4 -63 59 74 -62
		mu 0 4 40 39 46 47
		f 4 -65 61 76 -64
		mu 0 4 41 40 47 48
		f 4 -66 63 77 -55
		mu 0 4 35 41 48 42
		f 4 -69 66 80 -68
		mu 0 4 43 42 49 50
		f 4 -71 67 82 -70
		mu 0 4 44 43 50 51
		f 4 -73 69 84 -72
		mu 0 4 45 44 51 52
		f 4 -75 71 86 -74
		mu 0 4 47 46 53 54
		f 4 -77 73 88 -76
		mu 0 4 48 47 54 55
		f 4 -78 75 89 -67
		mu 0 4 42 48 55 49
		f 4 -81 78 92 -80
		mu 0 4 50 49 56 57
		f 4 -83 79 94 -82
		mu 0 4 51 50 57 58
		f 4 -85 81 96 -84
		mu 0 4 52 51 58 59
		f 4 -87 83 98 -86
		mu 0 4 54 53 60 61
		f 4 -89 85 100 -88
		mu 0 4 55 54 61 62
		f 4 -90 87 101 -79
		mu 0 4 49 55 62 56
		f 4 -93 90 104 -92
		mu 0 4 57 56 63 64
		f 4 -95 91 106 -94
		mu 0 4 58 57 64 65
		f 4 -97 93 108 -96
		mu 0 4 59 58 65 66
		f 4 -99 95 110 -98
		mu 0 4 61 60 67 68
		f 4 -101 97 112 -100
		mu 0 4 62 61 68 69
		f 4 -102 99 113 -91
		mu 0 4 56 62 69 63
		f 4 -105 102 116 -104
		mu 0 4 64 63 70 71
		f 4 -107 103 118 -106
		mu 0 4 65 64 71 72
		f 4 -109 105 120 -108
		mu 0 4 66 65 72 73
		f 4 -111 107 122 -110
		mu 0 4 68 67 74 75
		f 4 -113 109 124 -112
		mu 0 4 69 68 75 76
		f 4 -114 111 125 -103
		mu 0 4 63 69 76 70
		f 4 -117 114 -9 -116
		mu 0 4 71 70 77 78
		f 4 -119 115 -8 -118
		mu 0 4 72 71 78 79
		f 4 -121 117 -7 -120
		mu 0 4 73 72 79 80
		f 4 -123 119 -12 -122
		mu 0 4 75 74 81 82
		f 4 -125 121 -11 -124
		mu 0 4 76 75 82 83
		f 4 -126 123 -10 -115
		mu 0 4 70 76 83 77
		f 4 126 139 162 -139
		mu 0 4 84 85 86 87
		f 4 127 140 160 -140
		mu 0 4 85 88 89 86
		f 4 128 141 158 -141
		mu 0 4 88 90 91 89
		f 4 129 142 167 -142
		mu 0 4 90 92 93 91
		f 4 130 143 166 -143
		mu 0 4 92 94 95 93
		f 4 131 138 164 -144
		mu 0 4 94 96 97 95
		f 3 -127 -145 145
		mu 0 3 98 99 100
		f 3 -128 -146 146
		mu 0 3 101 98 100
		f 3 -129 -147 147
		mu 0 3 102 101 100
		f 3 -130 -148 148
		mu 0 3 103 102 100
		f 3 -131 -149 149
		mu 0 3 104 103 100
		f 3 -132 -150 144
		mu 0 3 99 104 100
		f 3 132 151 -151
		mu 0 3 105 106 107
		f 3 133 152 -152
		mu 0 3 106 108 107
		f 3 134 153 -153
		mu 0 3 108 109 107
		f 3 135 154 -154
		mu 0 3 109 110 107
		f 3 136 155 -155
		mu 0 3 110 111 107
		f 3 137 150 -156
		mu 0 3 111 105 107
		f 4 -159 156 170 -158
		mu 0 4 89 91 112 113
		f 4 -161 157 172 -160
		mu 0 4 86 89 113 114
		f 4 -163 159 174 -162
		mu 0 4 87 86 114 115
		f 4 -165 161 176 -164
		mu 0 4 95 97 116 117
		f 4 -167 163 178 -166
		mu 0 4 93 95 117 118
		f 4 -168 165 179 -157
		mu 0 4 91 93 118 112
		f 4 -171 168 182 -170
		mu 0 4 113 112 119 120
		f 4 -173 169 184 -172
		mu 0 4 114 113 120 121
		f 4 -175 171 186 -174
		mu 0 4 115 114 121 122
		f 4 -177 173 188 -176
		mu 0 4 117 116 123 124
		f 4 -179 175 190 -178
		mu 0 4 118 117 124 125
		f 4 -180 177 191 -169
		mu 0 4 112 118 125 119
		f 4 -183 180 194 -182
		mu 0 4 120 119 126 127
		f 4 -185 181 196 -184
		mu 0 4 121 120 127 128
		f 4 -187 183 198 -186
		mu 0 4 122 121 128 129
		f 4 -189 185 200 -188
		mu 0 4 124 123 130 131
		f 4 -191 187 202 -190
		mu 0 4 125 124 131 132
		f 4 -192 189 203 -181
		mu 0 4 119 125 132 126
		f 4 -195 192 206 -194
		mu 0 4 127 126 133 134
		f 4 -197 193 208 -196
		mu 0 4 128 127 134 135
		f 4 -199 195 210 -198
		mu 0 4 129 128 135 136
		f 4 -201 197 212 -200
		mu 0 4 131 130 137 138
		f 4 -203 199 214 -202
		mu 0 4 132 131 138 139
		f 4 -204 201 215 -193
		mu 0 4 126 132 139 133
		f 4 -207 204 218 -206
		mu 0 4 134 133 140 141
		f 4 -209 205 220 -208
		mu 0 4 135 134 141 142
		f 4 -211 207 222 -210
		mu 0 4 136 135 142 143
		f 4 -213 209 224 -212
		mu 0 4 138 137 144 145
		f 4 -215 211 226 -214
		mu 0 4 139 138 145 146
		f 4 -216 213 227 -205
		mu 0 4 133 139 146 140
		f 4 -219 216 230 -218
		mu 0 4 141 140 147 148
		f 4 -221 217 232 -220
		mu 0 4 142 141 148 149
		f 4 -223 219 234 -222
		mu 0 4 143 142 149 150
		f 4 -225 221 236 -224
		mu 0 4 145 144 151 152
		f 4 -227 223 238 -226
		mu 0 4 146 145 152 153
		f 4 -228 225 239 -217
		mu 0 4 140 146 153 147
		f 4 -231 228 242 -230
		mu 0 4 148 147 154 155
		f 4 -233 229 244 -232
		mu 0 4 149 148 155 156
		f 4 -235 231 246 -234
		mu 0 4 150 149 156 157
		f 4 -237 233 248 -236
		mu 0 4 152 151 158 159
		f 4 -239 235 250 -238
		mu 0 4 153 152 159 160
		f 4 -240 237 251 -229
		mu 0 4 147 153 160 154
		f 4 -243 240 -135 -242
		mu 0 4 155 154 161 162
		f 4 -245 241 -134 -244
		mu 0 4 156 155 162 163
		f 4 -247 243 -133 -246
		mu 0 4 157 156 163 164
		f 4 -249 245 -138 -248
		mu 0 4 159 158 165 166
		f 4 -251 247 -137 -250
		mu 0 4 160 159 166 167
		f 4 -252 249 -136 -241
		mu 0 4 154 160 167 161
		f 4 252 265 288 -265
		mu 0 4 168 169 170 171
		f 4 253 266 286 -266
		mu 0 4 169 172 173 170
		f 4 254 267 284 -267
		mu 0 4 172 174 175 173
		f 4 255 268 293 -268
		mu 0 4 174 176 177 175
		f 4 256 269 292 -269
		mu 0 4 176 178 179 177
		f 4 257 264 290 -270
		mu 0 4 178 180 181 179
		f 3 -253 -271 271
		mu 0 3 182 183 184
		f 3 -254 -272 272
		mu 0 3 185 182 184
		f 3 -255 -273 273
		mu 0 3 186 185 184
		f 3 -256 -274 274
		mu 0 3 187 186 184
		f 3 -257 -275 275
		mu 0 3 188 187 184
		f 3 -258 -276 270
		mu 0 3 183 188 184
		f 3 258 277 -277
		mu 0 3 189 190 191
		f 3 259 278 -278
		mu 0 3 190 192 191
		f 3 260 279 -279
		mu 0 3 192 193 191
		f 3 261 280 -280
		mu 0 3 193 194 191
		f 3 262 281 -281
		mu 0 3 194 195 191
		f 3 263 276 -282
		mu 0 3 195 189 191
		f 4 -285 282 296 -284
		mu 0 4 173 175 196 197
		f 4 -287 283 298 -286
		mu 0 4 170 173 197 198
		f 4 -289 285 300 -288
		mu 0 4 171 170 198 199
		f 4 -291 287 302 -290
		mu 0 4 179 181 200 201
		f 4 -293 289 304 -292
		mu 0 4 177 179 201 202
		f 4 -294 291 305 -283
		mu 0 4 175 177 202 196
		f 4 -297 294 308 -296
		mu 0 4 197 196 203 204
		f 4 -299 295 310 -298
		mu 0 4 198 197 204 205
		f 4 -301 297 312 -300
		mu 0 4 199 198 205 206
		f 4 -303 299 314 -302
		mu 0 4 201 200 207 208
		f 4 -305 301 316 -304
		mu 0 4 202 201 208 209
		f 4 -306 303 317 -295
		mu 0 4 196 202 209 203
		f 4 -309 306 320 -308
		mu 0 4 204 203 210 211
		f 4 -311 307 322 -310
		mu 0 4 205 204 211 212
		f 4 -313 309 324 -312
		mu 0 4 206 205 212 213
		f 4 -315 311 326 -314
		mu 0 4 208 207 214 215
		f 4 -317 313 328 -316
		mu 0 4 209 208 215 216
		f 4 -318 315 329 -307
		mu 0 4 203 209 216 210
		f 4 -321 318 332 -320
		mu 0 4 211 210 217 218
		f 4 -323 319 334 -322
		mu 0 4 212 211 218 219
		f 4 -325 321 336 -324
		mu 0 4 213 212 219 220
		f 4 -327 323 338 -326
		mu 0 4 215 214 221 222
		f 4 -329 325 340 -328
		mu 0 4 216 215 222 223
		f 4 -330 327 341 -319
		mu 0 4 210 216 223 217
		f 4 -333 330 344 -332
		mu 0 4 218 217 224 225
		f 4 -335 331 346 -334
		mu 0 4 219 218 225 226
		f 4 -337 333 348 -336
		mu 0 4 220 219 226 227
		f 4 -339 335 350 -338
		mu 0 4 222 221 228 229
		f 4 -341 337 352 -340
		mu 0 4 223 222 229 230
		f 4 -342 339 353 -331
		mu 0 4 217 223 230 224
		f 4 -345 342 356 -344
		mu 0 4 225 224 231 232
		f 4 -347 343 358 -346
		mu 0 4 226 225 232 233
		f 4 -349 345 360 -348
		mu 0 4 227 226 233 234
		f 4 -351 347 362 -350
		mu 0 4 229 228 235 236
		f 4 -353 349 364 -352
		mu 0 4 230 229 236 237
		f 4 -354 351 365 -343
		mu 0 4 224 230 237 231
		f 4 -357 354 368 -356
		mu 0 4 232 231 238 239
		f 4 -359 355 370 -358
		mu 0 4 233 232 239 240
		f 4 -361 357 372 -360
		mu 0 4 234 233 240 241
		f 4 -363 359 374 -362
		mu 0 4 236 235 242 243
		f 4 -365 361 376 -364
		mu 0 4 237 236 243 244
		f 4 -366 363 377 -355
		mu 0 4 231 237 244 238
		f 4 -369 366 -261 -368
		mu 0 4 239 238 245 246
		f 4 -371 367 -260 -370
		mu 0 4 240 239 246 247
		f 4 -373 369 -259 -372
		mu 0 4 241 240 247 248
		f 4 -375 371 -264 -374
		mu 0 4 243 242 249 250
		f 4 -377 373 -263 -376
		mu 0 4 244 243 250 251
		f 4 -378 375 -262 -367
		mu 0 4 238 244 251 245
		f 4 378 403 -385 -403
		mu 0 4 252 253 254 255
		f 4 379 404 -386 -404
		mu 0 4 253 256 257 254
		f 4 380 405 -387 -405
		mu 0 4 256 258 259 257
		f 4 381 406 -388 -406
		mu 0 4 258 260 261 259
		f 4 382 407 -389 -407
		mu 0 4 260 262 263 261
		f 4 383 402 -390 -408
		mu 0 4 262 264 265 263
		f 4 384 409 -391 -409
		mu 0 4 255 254 266 267
		f 4 385 410 -392 -410
		mu 0 4 254 257 268 266
		f 4 386 411 -393 -411
		mu 0 4 257 259 269 268
		f 4 387 412 -394 -412
		mu 0 4 259 261 270 269
		f 4 388 413 -395 -413
		mu 0 4 261 263 271 270
		f 4 389 408 -396 -414
		mu 0 4 263 265 272 271
		f 4 390 415 -397 -415
		mu 0 4 267 266 273 274
		f 4 391 416 -398 -416
		mu 0 4 266 268 275 273
		f 4 392 417 -399 -417
		mu 0 4 268 269 276 275
		f 4 393 418 -400 -418
		mu 0 4 269 270 277 276
		f 4 394 419 -401 -419
		mu 0 4 270 271 278 277
		f 4 395 414 -402 -420
		mu 0 4 271 272 279 278
		f 3 -379 -421 421
		mu 0 3 253 252 280
		f 3 -380 -422 422
		mu 0 3 256 253 281
		f 3 -381 -423 423
		mu 0 3 258 256 282
		f 3 -382 -424 424
		mu 0 3 260 258 283
		f 3 -383 -425 425
		mu 0 3 262 260 284
		f 3 -384 -426 420
		mu 0 3 264 262 285
		f 3 396 427 -427
		mu 0 3 274 273 286
		f 3 397 428 -428
		mu 0 3 273 275 287
		f 3 398 429 -429
		mu 0 3 275 276 288
		f 3 399 430 -430
		mu 0 3 276 277 289
		f 3 400 431 -431
		mu 0 3 277 278 290
		f 3 401 426 -432
		mu 0 3 278 279 291
		f 4 432 457 -439 -457
		mu 0 4 292 293 294 295
		f 4 433 458 -440 -458
		mu 0 4 293 296 297 294
		f 4 434 459 -441 -459
		mu 0 4 296 298 299 297
		f 4 435 460 -442 -460
		mu 0 4 298 300 301 299
		f 4 436 461 -443 -461
		mu 0 4 300 302 303 301
		f 4 437 456 -444 -462
		mu 0 4 302 304 305 303
		f 4 438 463 -445 -463
		mu 0 4 295 294 306 307
		f 4 439 464 -446 -464
		mu 0 4 294 297 308 306
		f 4 440 465 -447 -465
		mu 0 4 297 299 309 308
		f 4 441 466 -448 -466
		mu 0 4 299 301 310 309
		f 4 442 467 -449 -467
		mu 0 4 301 303 311 310
		f 4 443 462 -450 -468
		mu 0 4 303 305 312 311
		f 4 444 469 -451 -469
		mu 0 4 307 306 313 314
		f 4 445 470 -452 -470
		mu 0 4 306 308 315 313
		f 4 446 471 -453 -471
		mu 0 4 308 309 316 315
		f 4 447 472 -454 -472
		mu 0 4 309 310 317 316
		f 4 448 473 -455 -473
		mu 0 4 310 311 318 317
		f 4 449 468 -456 -474
		mu 0 4 311 312 319 318
		f 3 -433 -475 475
		mu 0 3 293 292 320
		f 3 -434 -476 476
		mu 0 3 296 293 321
		f 3 -435 -477 477
		mu 0 3 298 296 322
		f 3 -436 -478 478
		mu 0 3 300 298 323
		f 3 -437 -479 479
		mu 0 3 302 300 324
		f 3 -438 -480 474
		mu 0 3 304 302 325
		f 3 450 481 -481
		mu 0 3 314 313 326
		f 3 451 482 -482
		mu 0 3 313 315 327
		f 3 452 483 -483
		mu 0 3 315 316 328
		f 3 453 484 -484
		mu 0 3 316 317 329
		f 3 454 485 -485
		mu 0 3 317 318 330
		f 3 455 480 -486
		mu 0 3 318 319 331
		f 4 486 511 -493 -511
		mu 0 4 332 333 334 335
		f 4 487 512 -494 -512
		mu 0 4 333 336 337 334
		f 4 488 513 -495 -513
		mu 0 4 336 338 339 337
		f 4 489 514 -496 -514
		mu 0 4 338 340 341 339
		f 4 490 515 -497 -515
		mu 0 4 340 342 343 341
		f 4 491 510 -498 -516
		mu 0 4 342 344 345 343
		f 4 492 517 -499 -517
		mu 0 4 335 334 346 347
		f 4 493 518 -500 -518
		mu 0 4 334 337 348 346
		f 4 494 519 -501 -519
		mu 0 4 337 339 349 348
		f 4 495 520 -502 -520
		mu 0 4 339 341 350 349
		f 4 496 521 -503 -521
		mu 0 4 341 343 351 350
		f 4 497 516 -504 -522
		mu 0 4 343 345 352 351
		f 4 498 523 -505 -523
		mu 0 4 347 346 353 354
		f 4 499 524 -506 -524
		mu 0 4 346 348 355 353
		f 4 500 525 -507 -525
		mu 0 4 348 349 356 355
		f 4 501 526 -508 -526
		mu 0 4 349 350 357 356
		f 4 502 527 -509 -527
		mu 0 4 350 351 358 357
		f 4 503 522 -510 -528
		mu 0 4 351 352 359 358
		f 3 -487 -529 529
		mu 0 3 333 332 360
		f 3 -488 -530 530
		mu 0 3 336 333 361
		f 3 -489 -531 531
		mu 0 3 338 336 362
		f 3 -490 -532 532
		mu 0 3 340 338 363
		f 3 -491 -533 533
		mu 0 3 342 340 364
		f 3 -492 -534 528
		mu 0 3 344 342 365
		f 3 504 535 -535
		mu 0 3 354 353 366
		f 3 505 536 -536
		mu 0 3 353 355 367
		f 3 506 537 -537
		mu 0 3 355 356 368
		f 3 507 538 -538
		mu 0 3 356 357 369
		f 3 508 539 -539
		mu 0 3 357 358 370
		f 3 509 534 -540
		mu 0 3 358 359 371
		f 4 540 553 576 -553
		mu 0 4 372 373 374 375
		f 4 541 554 574 -554
		mu 0 4 373 376 377 374
		f 4 542 555 572 -555
		mu 0 4 376 378 379 377
		f 4 543 556 581 -556
		mu 0 4 378 380 381 379
		f 4 544 557 580 -557
		mu 0 4 380 382 383 381
		f 4 545 552 578 -558
		mu 0 4 382 384 385 383
		f 3 -541 -559 559
		mu 0 3 386 387 388
		f 3 -542 -560 560
		mu 0 3 389 386 388
		f 3 -543 -561 561
		mu 0 3 390 389 388
		f 3 -544 -562 562
		mu 0 3 391 390 388
		f 3 -545 -563 563
		mu 0 3 392 391 388
		f 3 -546 -564 558
		mu 0 3 387 392 388
		f 3 546 565 -565
		mu 0 3 393 394 395
		f 3 547 566 -566
		mu 0 3 394 396 395
		f 3 548 567 -567
		mu 0 3 396 397 395
		f 3 549 568 -568
		mu 0 3 397 398 395
		f 3 550 569 -569
		mu 0 3 398 399 395
		f 3 551 564 -570
		mu 0 3 399 393 395
		f 4 -573 570 584 -572
		mu 0 4 377 379 400 401
		f 4 -575 571 586 -574
		mu 0 4 374 377 401 402
		f 4 -577 573 588 -576
		mu 0 4 375 374 402 403
		f 4 -579 575 590 -578
		mu 0 4 383 385 404 405
		f 4 -581 577 592 -580
		mu 0 4 381 383 405 406
		f 4 -582 579 593 -571
		mu 0 4 379 381 406 400
		f 4 -585 582 596 -584
		mu 0 4 401 400 407 408
		f 4 -587 583 598 -586
		mu 0 4 402 401 408 409
		f 4 -589 585 600 -588
		mu 0 4 403 402 409 410
		f 4 -591 587 602 -590
		mu 0 4 405 404 411 412
		f 4 -593 589 604 -592
		mu 0 4 406 405 412 413
		f 4 -594 591 605 -583
		mu 0 4 400 406 413 407
		f 4 -597 594 608 -596
		mu 0 4 408 407 414 415
		f 4 -599 595 610 -598
		mu 0 4 409 408 415 416
		f 4 -601 597 612 -600
		mu 0 4 410 409 416 417
		f 4 -603 599 614 -602
		mu 0 4 412 411 418 419
		f 4 -605 601 616 -604
		mu 0 4 413 412 419 420
		f 4 -606 603 617 -595
		mu 0 4 407 413 420 414
		f 4 -609 606 620 -608
		mu 0 4 415 414 421 422
		f 4 -611 607 622 -610
		mu 0 4 416 415 422 423
		f 4 -613 609 624 -612
		mu 0 4 417 416 423 424
		f 4 -615 611 626 -614
		mu 0 4 419 418 425 426
		f 4 -617 613 628 -616
		mu 0 4 420 419 426 427
		f 4 -618 615 629 -607
		mu 0 4 414 420 427 421
		f 4 -621 618 632 -620
		mu 0 4 422 421 428 429
		f 4 -623 619 634 -622
		mu 0 4 423 422 429 430
		f 4 -625 621 636 -624
		mu 0 4 424 423 430 431
		f 4 -627 623 638 -626
		mu 0 4 426 425 432 433
		f 4 -629 625 640 -628
		mu 0 4 427 426 433 434
		f 4 -630 627 641 -619
		mu 0 4 421 427 434 428
		f 4 -633 630 644 -632
		mu 0 4 429 428 435 436
		f 4 -635 631 646 -634
		mu 0 4 430 429 436 437
		f 4 -637 633 648 -636
		mu 0 4 431 430 437 438
		f 4 -639 635 650 -638
		mu 0 4 433 432 439 440
		f 4 -641 637 652 -640
		mu 0 4 434 433 440 441
		f 4 -642 639 653 -631
		mu 0 4 428 434 441 435
		f 4 -645 642 656 -644
		mu 0 4 436 435 442 443
		f 4 -647 643 658 -646
		mu 0 4 437 436 443 444
		f 4 -649 645 660 -648
		mu 0 4 438 437 444 445
		f 4 -651 647 662 -650
		mu 0 4 440 439 446 447
		f 4 -653 649 664 -652
		mu 0 4 441 440 447 448
		f 4 -654 651 665 -643
		mu 0 4 435 441 448 442
		f 4 -657 654 -549 -656
		mu 0 4 443 442 449 450
		f 4 -659 655 -548 -658
		mu 0 4 444 443 450 451
		f 4 -661 657 -547 -660
		mu 0 4 445 444 451 452
		f 4 -663 659 -552 -662
		mu 0 4 447 446 453 454
		f 4 -665 661 -551 -664
		mu 0 4 448 447 454 455
		f 4 -666 663 -550 -655
		mu 0 4 442 448 455 449
		f 4 666 691 -673 -691
		mu 0 4 456 457 458 459
		f 4 667 692 -674 -692
		mu 0 4 457 460 461 458
		f 4 668 693 -675 -693
		mu 0 4 460 462 463 461
		f 4 669 694 -676 -694
		mu 0 4 462 464 465 463
		f 4 670 695 -677 -695
		mu 0 4 464 466 467 465
		f 4 671 690 -678 -696
		mu 0 4 466 468 469 467
		f 4 672 697 -679 -697
		mu 0 4 459 458 470 471
		f 4 673 698 -680 -698
		mu 0 4 458 461 472 470
		f 4 674 699 -681 -699
		mu 0 4 461 463 473 472
		f 4 675 700 -682 -700
		mu 0 4 463 465 474 473
		f 4 676 701 -683 -701
		mu 0 4 465 467 475 474
		f 4 677 696 -684 -702
		mu 0 4 467 469 476 475
		f 4 678 703 -685 -703
		mu 0 4 471 470 477 478
		f 4 679 704 -686 -704
		mu 0 4 470 472 479 477
		f 4 680 705 -687 -705
		mu 0 4 472 473 480 479
		f 4 681 706 -688 -706
		mu 0 4 473 474 481 480
		f 4 682 707 -689 -707
		mu 0 4 474 475 482 481
		f 4 683 702 -690 -708
		mu 0 4 475 476 483 482
		f 3 -667 -709 709
		mu 0 3 457 456 484
		f 3 -668 -710 710
		mu 0 3 460 457 485
		f 3 -669 -711 711
		mu 0 3 462 460 486
		f 3 -670 -712 712
		mu 0 3 464 462 487
		f 3 -671 -713 713
		mu 0 3 466 464 488
		f 3 -672 -714 708
		mu 0 3 468 466 489
		f 3 684 715 -715
		mu 0 3 478 477 490
		f 3 685 716 -716
		mu 0 3 477 479 491
		f 3 686 717 -717
		mu 0 3 479 480 492
		f 3 687 718 -718
		mu 0 3 480 481 493
		f 3 688 719 -719
		mu 0 3 481 482 494
		f 3 689 714 -720
		mu 0 3 482 483 495
		f 4 720 745 -727 -745
		mu 0 4 496 497 498 499
		f 4 721 746 -728 -746
		mu 0 4 497 500 501 498
		f 4 722 747 -729 -747
		mu 0 4 500 502 503 501
		f 4 723 748 -730 -748
		mu 0 4 502 504 505 503
		f 4 724 749 -731 -749
		mu 0 4 504 506 507 505
		f 4 725 744 -732 -750
		mu 0 4 506 508 509 507
		f 4 726 751 -733 -751
		mu 0 4 499 498 510 511
		f 4 727 752 -734 -752
		mu 0 4 498 501 512 510
		f 4 728 753 -735 -753
		mu 0 4 501 503 513 512
		f 4 729 754 -736 -754
		mu 0 4 503 505 514 513
		f 4 730 755 -737 -755
		mu 0 4 505 507 515 514
		f 4 731 750 -738 -756
		mu 0 4 507 509 516 515
		f 4 732 757 -739 -757
		mu 0 4 511 510 517 518
		f 4 733 758 -740 -758
		mu 0 4 510 512 519 517
		f 4 734 759 -741 -759
		mu 0 4 512 513 520 519
		f 4 735 760 -742 -760
		mu 0 4 513 514 521 520
		f 4 736 761 -743 -761
		mu 0 4 514 515 522 521
		f 4 737 756 -744 -762
		mu 0 4 515 516 523 522
		f 3 -721 -763 763
		mu 0 3 497 496 524
		f 3 -722 -764 764
		mu 0 3 500 497 525
		f 3 -723 -765 765
		mu 0 3 502 500 526
		f 3 -724 -766 766
		mu 0 3 504 502 527
		f 3 -725 -767 767
		mu 0 3 506 504 528
		f 3 -726 -768 762
		mu 0 3 508 506 529
		f 3 738 769 -769
		mu 0 3 518 517 530
		f 3 739 770 -770
		mu 0 3 517 519 531
		f 3 740 771 -771
		mu 0 3 519 520 532
		f 3 741 772 -772
		mu 0 3 520 521 533
		f 3 742 773 -773
		mu 0 3 521 522 534
		f 3 743 768 -774
		mu 0 3 522 523 535
		f 4 774 787 810 -787
		mu 0 4 536 537 538 539
		f 4 775 788 808 -788
		mu 0 4 537 540 541 538
		f 4 776 789 806 -789
		mu 0 4 540 542 543 541
		f 4 777 790 815 -790
		mu 0 4 542 544 545 543
		f 4 778 791 814 -791
		mu 0 4 544 546 547 545
		f 4 779 786 812 -792
		mu 0 4 546 548 549 547
		f 3 -775 -793 793
		mu 0 3 550 551 552
		f 3 -776 -794 794
		mu 0 3 553 550 552
		f 3 -777 -795 795
		mu 0 3 554 553 552
		f 3 -778 -796 796
		mu 0 3 555 554 552
		f 3 -779 -797 797
		mu 0 3 556 555 552
		f 3 -780 -798 792
		mu 0 3 551 556 552
		f 3 780 799 -799
		mu 0 3 557 558 559
		f 3 781 800 -800
		mu 0 3 558 560 559
		f 3 782 801 -801
		mu 0 3 560 561 559
		f 3 783 802 -802
		mu 0 3 561 562 559
		f 3 784 803 -803
		mu 0 3 562 563 559
		f 3 785 798 -804
		mu 0 3 563 557 559
		f 4 -807 804 818 -806
		mu 0 4 541 543 564 565
		f 4 -809 805 820 -808
		mu 0 4 538 541 565 566
		f 4 -811 807 822 -810
		mu 0 4 539 538 566 567
		f 4 -813 809 824 -812
		mu 0 4 547 549 568 569
		f 4 -815 811 826 -814
		mu 0 4 545 547 569 570
		f 4 -816 813 827 -805
		mu 0 4 543 545 570 564
		f 4 -819 816 830 -818
		mu 0 4 565 564 571 572
		f 4 -821 817 832 -820
		mu 0 4 566 565 572 573
		f 4 -823 819 834 -822
		mu 0 4 567 566 573 574
		f 4 -825 821 836 -824
		mu 0 4 569 568 575 576
		f 4 -827 823 838 -826
		mu 0 4 570 569 576 577
		f 4 -828 825 839 -817
		mu 0 4 564 570 577 571
		f 4 -831 828 842 -830
		mu 0 4 572 571 578 579
		f 4 -833 829 844 -832
		mu 0 4 573 572 579 580
		f 4 -835 831 846 -834
		mu 0 4 574 573 580 581
		f 4 -837 833 848 -836
		mu 0 4 576 575 582 583
		f 4 -839 835 850 -838
		mu 0 4 577 576 583 584
		f 4 -840 837 851 -829
		mu 0 4 571 577 584 578
		f 4 -843 840 854 -842
		mu 0 4 579 578 585 586
		f 4 -845 841 856 -844
		mu 0 4 580 579 586 587
		f 4 -847 843 858 -846
		mu 0 4 581 580 587 588
		f 4 -849 845 860 -848
		mu 0 4 583 582 589 590
		f 4 -851 847 862 -850
		mu 0 4 584 583 590 591
		f 4 -852 849 863 -841
		mu 0 4 578 584 591 585
		f 4 -855 852 866 -854
		mu 0 4 586 585 592 593
		f 4 -857 853 868 -856
		mu 0 4 587 586 593 594
		f 4 -859 855 870 -858
		mu 0 4 588 587 594 595
		f 4 -861 857 872 -860
		mu 0 4 590 589 596 597
		f 4 -863 859 874 -862
		mu 0 4 591 590 597 598
		f 4 -864 861 875 -853
		mu 0 4 585 591 598 592
		f 4 -867 864 878 -866
		mu 0 4 593 592 599 600
		f 4 -869 865 880 -868
		mu 0 4 594 593 600 601
		f 4 -871 867 882 -870
		mu 0 4 595 594 601 602
		f 4 -873 869 884 -872
		mu 0 4 597 596 603 604
		f 4 -875 871 886 -874
		mu 0 4 598 597 604 605
		f 4 -876 873 887 -865
		mu 0 4 592 598 605 599
		f 4 -879 876 890 -878
		mu 0 4 600 599 606 607
		f 4 -881 877 892 -880
		mu 0 4 601 600 607 608
		f 4 -883 879 894 -882
		mu 0 4 602 601 608 609
		f 4 -885 881 896 -884
		mu 0 4 604 603 610 611
		f 4 -887 883 898 -886
		mu 0 4 605 604 611 612
		f 4 -888 885 899 -877
		mu 0 4 599 605 612 606
		f 4 -891 888 -783 -890
		mu 0 4 607 606 613 614
		f 4 -893 889 -782 -892
		mu 0 4 608 607 614 615
		f 4 -895 891 -781 -894
		mu 0 4 609 608 615 616
		f 4 -897 893 -786 -896
		mu 0 4 611 610 617 618
		f 4 -899 895 -785 -898
		mu 0 4 612 611 618 619
		f 4 -900 897 -784 -889
		mu 0 4 606 612 619 613
		f 4 900 925 -907 -925
		mu 0 4 620 621 622 623
		f 4 901 926 -908 -926
		mu 0 4 621 624 625 622
		f 4 902 927 -909 -927
		mu 0 4 624 626 627 625
		f 4 903 928 -910 -928
		mu 0 4 626 628 629 627
		f 4 904 929 -911 -929
		mu 0 4 628 630 631 629
		f 4 905 924 -912 -930
		mu 0 4 630 632 633 631
		f 4 906 931 -913 -931
		mu 0 4 623 622 634 635
		f 4 907 932 -914 -932
		mu 0 4 622 625 636 634
		f 4 908 933 -915 -933
		mu 0 4 625 627 637 636
		f 4 909 934 -916 -934
		mu 0 4 627 629 638 637
		f 4 910 935 -917 -935
		mu 0 4 629 631 639 638
		f 4 911 930 -918 -936
		mu 0 4 631 633 640 639
		f 4 912 937 -919 -937
		mu 0 4 635 634 641 642
		f 4 913 938 -920 -938
		mu 0 4 634 636 643 641
		f 4 914 939 -921 -939
		mu 0 4 636 637 644 643
		f 4 915 940 -922 -940
		mu 0 4 637 638 645 644
		f 4 916 941 -923 -941
		mu 0 4 638 639 646 645
		f 4 917 936 -924 -942
		mu 0 4 639 640 647 646
		f 3 -901 -943 943
		mu 0 3 621 620 648
		f 3 -902 -944 944
		mu 0 3 624 621 649;
	setAttr ".fc[500:999]"
		f 3 -903 -945 945
		mu 0 3 626 624 650
		f 3 -904 -946 946
		mu 0 3 628 626 651
		f 3 -905 -947 947
		mu 0 3 630 628 652
		f 3 -906 -948 942
		mu 0 3 632 630 653
		f 3 918 949 -949
		mu 0 3 642 641 654
		f 3 919 950 -950
		mu 0 3 641 643 655
		f 3 920 951 -951
		mu 0 3 643 644 656
		f 3 921 952 -952
		mu 0 3 644 645 657
		f 3 922 953 -953
		mu 0 3 645 646 658
		f 3 923 948 -954
		mu 0 3 646 647 659
		f 4 954 967 990 -967
		mu 0 4 660 661 662 663
		f 4 955 968 988 -968
		mu 0 4 661 664 665 662
		f 4 956 969 986 -969
		mu 0 4 664 666 667 665
		f 4 957 970 995 -970
		mu 0 4 666 668 669 667
		f 4 958 971 994 -971
		mu 0 4 668 670 671 669
		f 4 959 966 992 -972
		mu 0 4 670 672 673 671
		f 3 -955 -973 973
		mu 0 3 674 675 676
		f 3 -956 -974 974
		mu 0 3 677 674 676
		f 3 -957 -975 975
		mu 0 3 678 677 676
		f 3 -958 -976 976
		mu 0 3 679 678 676
		f 3 -959 -977 977
		mu 0 3 680 679 676
		f 3 -960 -978 972
		mu 0 3 675 680 676
		f 3 960 979 -979
		mu 0 3 681 682 683
		f 3 961 980 -980
		mu 0 3 682 684 683
		f 3 962 981 -981
		mu 0 3 684 685 683
		f 3 963 982 -982
		mu 0 3 685 686 683
		f 3 964 983 -983
		mu 0 3 686 687 683
		f 3 965 978 -984
		mu 0 3 687 681 683
		f 4 -987 984 998 -986
		mu 0 4 665 667 688 689
		f 4 -989 985 1000 -988
		mu 0 4 662 665 689 690
		f 4 -991 987 1002 -990
		mu 0 4 663 662 690 691
		f 4 -993 989 1004 -992
		mu 0 4 671 673 692 693
		f 4 -995 991 1006 -994
		mu 0 4 669 671 693 694
		f 4 -996 993 1007 -985
		mu 0 4 667 669 694 688
		f 4 -999 996 1010 -998
		mu 0 4 689 688 695 696
		f 4 -1001 997 1012 -1000
		mu 0 4 690 689 696 697
		f 4 -1003 999 1014 -1002
		mu 0 4 691 690 697 698
		f 4 -1005 1001 1016 -1004
		mu 0 4 693 692 699 700
		f 4 -1007 1003 1018 -1006
		mu 0 4 694 693 700 701
		f 4 -1008 1005 1019 -997
		mu 0 4 688 694 701 695
		f 4 -1011 1008 1022 -1010
		mu 0 4 696 695 702 703
		f 4 -1013 1009 1024 -1012
		mu 0 4 697 696 703 704
		f 4 -1015 1011 1026 -1014
		mu 0 4 698 697 704 705
		f 4 -1017 1013 1028 -1016
		mu 0 4 700 699 706 707
		f 4 -1019 1015 1030 -1018
		mu 0 4 701 700 707 708
		f 4 -1020 1017 1031 -1009
		mu 0 4 695 701 708 702
		f 4 -1023 1020 1034 -1022
		mu 0 4 703 702 709 710
		f 4 -1025 1021 1036 -1024
		mu 0 4 704 703 710 711
		f 4 -1027 1023 1038 -1026
		mu 0 4 705 704 711 712
		f 4 -1029 1025 1040 -1028
		mu 0 4 707 706 713 714
		f 4 -1031 1027 1042 -1030
		mu 0 4 708 707 714 715
		f 4 -1032 1029 1043 -1021
		mu 0 4 702 708 715 709
		f 4 -1035 1032 1046 -1034
		mu 0 4 710 709 716 717
		f 4 -1037 1033 1048 -1036
		mu 0 4 711 710 717 718
		f 4 -1039 1035 1050 -1038
		mu 0 4 712 711 718 719
		f 4 -1041 1037 1052 -1040
		mu 0 4 714 713 720 721
		f 4 -1043 1039 1054 -1042
		mu 0 4 715 714 721 722
		f 4 -1044 1041 1055 -1033
		mu 0 4 709 715 722 716
		f 4 -1047 1044 1058 -1046
		mu 0 4 717 716 723 724
		f 4 -1049 1045 1060 -1048
		mu 0 4 718 717 724 725
		f 4 -1051 1047 1062 -1050
		mu 0 4 719 718 725 726
		f 4 -1053 1049 1064 -1052
		mu 0 4 721 720 727 728
		f 4 -1055 1051 1066 -1054
		mu 0 4 722 721 728 729
		f 4 -1056 1053 1067 -1045
		mu 0 4 716 722 729 723
		f 4 -1059 1056 1070 -1058
		mu 0 4 724 723 730 731
		f 4 -1061 1057 1072 -1060
		mu 0 4 725 724 731 732
		f 4 -1063 1059 1074 -1062
		mu 0 4 726 725 732 733
		f 4 -1065 1061 1076 -1064
		mu 0 4 728 727 734 735
		f 4 -1067 1063 1078 -1066
		mu 0 4 729 728 735 736
		f 4 -1068 1065 1079 -1057
		mu 0 4 723 729 736 730
		f 4 -1071 1068 -963 -1070
		mu 0 4 731 730 737 738
		f 4 -1073 1069 -962 -1072
		mu 0 4 732 731 738 739
		f 4 -1075 1071 -961 -1074
		mu 0 4 733 732 739 740
		f 4 -1077 1073 -966 -1076
		mu 0 4 735 734 741 742
		f 4 -1079 1075 -965 -1078
		mu 0 4 736 735 742 743
		f 4 -1080 1077 -964 -1069
		mu 0 4 730 736 743 737
		f 4 1080 1093 1116 -1093
		mu 0 4 744 745 746 747
		f 4 1081 1094 1114 -1094
		mu 0 4 745 748 749 746
		f 4 1082 1095 1112 -1095
		mu 0 4 748 750 751 749
		f 4 1083 1096 1121 -1096
		mu 0 4 750 752 753 751
		f 4 1084 1097 1120 -1097
		mu 0 4 752 754 755 753
		f 4 1085 1092 1118 -1098
		mu 0 4 754 756 757 755
		f 3 -1081 -1099 1099
		mu 0 3 758 759 760
		f 3 -1082 -1100 1100
		mu 0 3 761 758 760
		f 3 -1083 -1101 1101
		mu 0 3 762 761 760
		f 3 -1084 -1102 1102
		mu 0 3 763 762 760
		f 3 -1085 -1103 1103
		mu 0 3 764 763 760
		f 3 -1086 -1104 1098
		mu 0 3 759 764 760
		f 3 1086 1105 -1105
		mu 0 3 765 766 767
		f 3 1087 1106 -1106
		mu 0 3 766 768 767
		f 3 1088 1107 -1107
		mu 0 3 768 769 767
		f 3 1089 1108 -1108
		mu 0 3 769 770 767
		f 3 1090 1109 -1109
		mu 0 3 770 771 767
		f 3 1091 1104 -1110
		mu 0 3 771 765 767
		f 4 -1113 1110 1124 -1112
		mu 0 4 749 751 772 773
		f 4 -1115 1111 1126 -1114
		mu 0 4 746 749 773 774
		f 4 -1117 1113 1128 -1116
		mu 0 4 747 746 774 775
		f 4 -1119 1115 1130 -1118
		mu 0 4 755 757 776 777
		f 4 -1121 1117 1132 -1120
		mu 0 4 753 755 777 778
		f 4 -1122 1119 1133 -1111
		mu 0 4 751 753 778 772
		f 4 -1125 1122 1136 -1124
		mu 0 4 773 772 779 780
		f 4 -1127 1123 1138 -1126
		mu 0 4 774 773 780 781
		f 4 -1129 1125 1140 -1128
		mu 0 4 775 774 781 782
		f 4 -1131 1127 1142 -1130
		mu 0 4 777 776 783 784
		f 4 -1133 1129 1144 -1132
		mu 0 4 778 777 784 785
		f 4 -1134 1131 1145 -1123
		mu 0 4 772 778 785 779
		f 4 -1137 1134 1148 -1136
		mu 0 4 780 779 786 787
		f 4 -1139 1135 1150 -1138
		mu 0 4 781 780 787 788
		f 4 -1141 1137 1152 -1140
		mu 0 4 782 781 788 789
		f 4 -1143 1139 1154 -1142
		mu 0 4 784 783 790 791
		f 4 -1145 1141 1156 -1144
		mu 0 4 785 784 791 792
		f 4 -1146 1143 1157 -1135
		mu 0 4 779 785 792 786
		f 4 -1149 1146 1160 -1148
		mu 0 4 787 786 793 794
		f 4 -1151 1147 1162 -1150
		mu 0 4 788 787 794 795
		f 4 -1153 1149 1164 -1152
		mu 0 4 789 788 795 796
		f 4 -1155 1151 1166 -1154
		mu 0 4 791 790 797 798
		f 4 -1157 1153 1168 -1156
		mu 0 4 792 791 798 799
		f 4 -1158 1155 1169 -1147
		mu 0 4 786 792 799 793
		f 4 -1161 1158 1172 -1160
		mu 0 4 794 793 800 801
		f 4 -1163 1159 1174 -1162
		mu 0 4 795 794 801 802
		f 4 -1165 1161 1176 -1164
		mu 0 4 796 795 802 803
		f 4 -1167 1163 1178 -1166
		mu 0 4 798 797 804 805
		f 4 -1169 1165 1180 -1168
		mu 0 4 799 798 805 806
		f 4 -1170 1167 1181 -1159
		mu 0 4 793 799 806 800
		f 4 -1173 1170 1184 -1172
		mu 0 4 801 800 807 808
		f 4 -1175 1171 1186 -1174
		mu 0 4 802 801 808 809
		f 4 -1177 1173 1188 -1176
		mu 0 4 803 802 809 810
		f 4 -1179 1175 1190 -1178
		mu 0 4 805 804 811 812
		f 4 -1181 1177 1192 -1180
		mu 0 4 806 805 812 813
		f 4 -1182 1179 1193 -1171
		mu 0 4 800 806 813 807
		f 4 -1185 1182 1196 -1184
		mu 0 4 808 807 814 815
		f 4 -1187 1183 1198 -1186
		mu 0 4 809 808 815 816
		f 4 -1189 1185 1200 -1188
		mu 0 4 810 809 816 817
		f 4 -1191 1187 1202 -1190
		mu 0 4 812 811 818 819
		f 4 -1193 1189 1204 -1192
		mu 0 4 813 812 819 820
		f 4 -1194 1191 1205 -1183
		mu 0 4 807 813 820 814
		f 4 -1197 1194 -1089 -1196
		mu 0 4 815 814 821 822
		f 4 -1199 1195 -1088 -1198
		mu 0 4 816 815 822 823
		f 4 -1201 1197 -1087 -1200
		mu 0 4 817 816 823 824
		f 4 -1203 1199 -1092 -1202
		mu 0 4 819 818 825 826
		f 4 -1205 1201 -1091 -1204
		mu 0 4 820 819 826 827
		f 4 -1206 1203 -1090 -1195
		mu 0 4 814 820 827 821
		f 4 1206 1231 -1213 -1231
		mu 0 4 828 829 830 831
		f 4 1207 1232 -1214 -1232
		mu 0 4 829 832 833 830
		f 4 1208 1233 -1215 -1233
		mu 0 4 832 834 835 833
		f 4 1209 1234 -1216 -1234
		mu 0 4 834 836 837 835
		f 4 1210 1235 -1217 -1235
		mu 0 4 836 838 839 837
		f 4 1211 1230 -1218 -1236
		mu 0 4 838 840 841 839
		f 4 1212 1237 -1219 -1237
		mu 0 4 831 830 842 843
		f 4 1213 1238 -1220 -1238
		mu 0 4 830 833 844 842
		f 4 1214 1239 -1221 -1239
		mu 0 4 833 835 845 844
		f 4 1215 1240 -1222 -1240
		mu 0 4 835 837 846 845
		f 4 1216 1241 -1223 -1241
		mu 0 4 837 839 847 846
		f 4 1217 1236 -1224 -1242
		mu 0 4 839 841 848 847
		f 4 1218 1243 -1225 -1243
		mu 0 4 843 842 849 850
		f 4 1219 1244 -1226 -1244
		mu 0 4 842 844 851 849
		f 4 1220 1245 -1227 -1245
		mu 0 4 844 845 852 851
		f 4 1221 1246 -1228 -1246
		mu 0 4 845 846 853 852
		f 4 1222 1247 -1229 -1247
		mu 0 4 846 847 854 853
		f 4 1223 1242 -1230 -1248
		mu 0 4 847 848 855 854
		f 3 -1207 -1249 1249
		mu 0 3 829 828 856
		f 3 -1208 -1250 1250
		mu 0 3 832 829 857
		f 3 -1209 -1251 1251
		mu 0 3 834 832 858
		f 3 -1210 -1252 1252
		mu 0 3 836 834 859
		f 3 -1211 -1253 1253
		mu 0 3 838 836 860
		f 3 -1212 -1254 1248
		mu 0 3 840 838 861
		f 3 1224 1255 -1255
		mu 0 3 850 849 862
		f 3 1225 1256 -1256
		mu 0 3 849 851 863
		f 3 1226 1257 -1257
		mu 0 3 851 852 864
		f 3 1227 1258 -1258
		mu 0 3 852 853 865
		f 3 1228 1259 -1259
		mu 0 3 853 854 866
		f 3 1229 1254 -1260
		mu 0 3 854 855 867
		f 4 1260 1285 -1267 -1285
		mu 0 4 868 869 870 871
		f 4 1261 1286 -1268 -1286
		mu 0 4 869 872 873 870
		f 4 1262 1287 -1269 -1287
		mu 0 4 872 874 875 873
		f 4 1263 1288 -1270 -1288
		mu 0 4 874 876 877 875
		f 4 1264 1289 -1271 -1289
		mu 0 4 876 878 879 877
		f 4 1265 1284 -1272 -1290
		mu 0 4 878 880 881 879
		f 4 1266 1291 -1273 -1291
		mu 0 4 871 870 882 883
		f 4 1267 1292 -1274 -1292
		mu 0 4 870 873 884 882
		f 4 1268 1293 -1275 -1293
		mu 0 4 873 875 885 884
		f 4 1269 1294 -1276 -1294
		mu 0 4 875 877 886 885
		f 4 1270 1295 -1277 -1295
		mu 0 4 877 879 887 886
		f 4 1271 1290 -1278 -1296
		mu 0 4 879 881 888 887
		f 4 1272 1297 -1279 -1297
		mu 0 4 883 882 889 890
		f 4 1273 1298 -1280 -1298
		mu 0 4 882 884 891 889
		f 4 1274 1299 -1281 -1299
		mu 0 4 884 885 892 891
		f 4 1275 1300 -1282 -1300
		mu 0 4 885 886 893 892
		f 4 1276 1301 -1283 -1301
		mu 0 4 886 887 894 893
		f 4 1277 1296 -1284 -1302
		mu 0 4 887 888 895 894
		f 3 -1261 -1303 1303
		mu 0 3 869 868 896
		f 3 -1262 -1304 1304
		mu 0 3 872 869 897
		f 3 -1263 -1305 1305
		mu 0 3 874 872 898
		f 3 -1264 -1306 1306
		mu 0 3 876 874 899
		f 3 -1265 -1307 1307
		mu 0 3 878 876 900
		f 3 -1266 -1308 1302
		mu 0 3 880 878 901
		f 3 1278 1309 -1309
		mu 0 3 890 889 902
		f 3 1279 1310 -1310
		mu 0 3 889 891 903
		f 3 1280 1311 -1311
		mu 0 3 891 892 904
		f 3 1281 1312 -1312
		mu 0 3 892 893 905
		f 3 1282 1313 -1313
		mu 0 3 893 894 906
		f 3 1283 1308 -1314
		mu 0 3 894 895 907
		f 4 1314 1327 1350 -1327
		mu 0 4 908 909 910 911
		f 4 1315 1328 1348 -1328
		mu 0 4 909 912 913 910
		f 4 1316 1329 1346 -1329
		mu 0 4 912 914 915 913
		f 4 1317 1330 1355 -1330
		mu 0 4 914 916 917 915
		f 4 1318 1331 1354 -1331
		mu 0 4 916 918 919 917
		f 4 1319 1326 1352 -1332
		mu 0 4 918 920 921 919
		f 3 -1315 -1333 1333
		mu 0 3 922 923 924
		f 3 -1316 -1334 1334
		mu 0 3 925 922 924
		f 3 -1317 -1335 1335
		mu 0 3 926 925 924
		f 3 -1318 -1336 1336
		mu 0 3 927 926 924
		f 3 -1319 -1337 1337
		mu 0 3 928 927 924
		f 3 -1320 -1338 1332
		mu 0 3 923 928 924
		f 3 1320 1339 -1339
		mu 0 3 929 930 931
		f 3 1321 1340 -1340
		mu 0 3 930 932 931
		f 3 1322 1341 -1341
		mu 0 3 932 933 931
		f 3 1323 1342 -1342
		mu 0 3 933 934 931
		f 3 1324 1343 -1343
		mu 0 3 934 935 931
		f 3 1325 1338 -1344
		mu 0 3 935 929 931
		f 4 -1347 1344 1358 -1346
		mu 0 4 913 915 936 937
		f 4 -1349 1345 1360 -1348
		mu 0 4 910 913 937 938
		f 4 -1351 1347 1362 -1350
		mu 0 4 911 910 938 939
		f 4 -1353 1349 1364 -1352
		mu 0 4 919 921 940 941
		f 4 -1355 1351 1366 -1354
		mu 0 4 917 919 941 942
		f 4 -1356 1353 1367 -1345
		mu 0 4 915 917 942 936
		f 4 -1359 1356 1370 -1358
		mu 0 4 937 936 943 944
		f 4 -1361 1357 1372 -1360
		mu 0 4 938 937 944 945
		f 4 -1363 1359 1374 -1362
		mu 0 4 939 938 945 946
		f 4 -1365 1361 1376 -1364
		mu 0 4 941 940 947 948
		f 4 -1367 1363 1378 -1366
		mu 0 4 942 941 948 949
		f 4 -1368 1365 1379 -1357
		mu 0 4 936 942 949 943
		f 4 -1371 1368 1382 -1370
		mu 0 4 944 943 950 951
		f 4 -1373 1369 1384 -1372
		mu 0 4 945 944 951 952
		f 4 -1375 1371 1386 -1374
		mu 0 4 946 945 952 953
		f 4 -1377 1373 1388 -1376
		mu 0 4 948 947 954 955
		f 4 -1379 1375 1390 -1378
		mu 0 4 949 948 955 956
		f 4 -1380 1377 1391 -1369
		mu 0 4 943 949 956 950
		f 4 -1383 1380 1394 -1382
		mu 0 4 951 950 957 958
		f 4 -1385 1381 1396 -1384
		mu 0 4 952 951 958 959
		f 4 -1387 1383 1398 -1386
		mu 0 4 953 952 959 960
		f 4 -1389 1385 1400 -1388
		mu 0 4 955 954 961 962
		f 4 -1391 1387 1402 -1390
		mu 0 4 956 955 962 963
		f 4 -1392 1389 1403 -1381
		mu 0 4 950 956 963 957
		f 4 -1395 1392 1406 -1394
		mu 0 4 958 957 964 965
		f 4 -1397 1393 1408 -1396
		mu 0 4 959 958 965 966
		f 4 -1399 1395 1410 -1398
		mu 0 4 960 959 966 967
		f 4 -1401 1397 1412 -1400
		mu 0 4 962 961 968 969
		f 4 -1403 1399 1414 -1402
		mu 0 4 963 962 969 970
		f 4 -1404 1401 1415 -1393
		mu 0 4 957 963 970 964
		f 4 -1407 1404 1418 -1406
		mu 0 4 965 964 971 972
		f 4 -1409 1405 1420 -1408
		mu 0 4 966 965 972 973
		f 4 -1411 1407 1422 -1410
		mu 0 4 967 966 973 974
		f 4 -1413 1409 1424 -1412
		mu 0 4 969 968 975 976
		f 4 -1415 1411 1426 -1414
		mu 0 4 970 969 976 977
		f 4 -1416 1413 1427 -1405
		mu 0 4 964 970 977 971
		f 4 -1419 1416 1430 -1418
		mu 0 4 972 971 978 979
		f 4 -1421 1417 1432 -1420
		mu 0 4 973 972 979 980
		f 4 -1423 1419 1434 -1422
		mu 0 4 974 973 980 981
		f 4 -1425 1421 1436 -1424
		mu 0 4 976 975 982 983
		f 4 -1427 1423 1438 -1426
		mu 0 4 977 976 983 984
		f 4 -1428 1425 1439 -1417
		mu 0 4 971 977 984 978
		f 4 -1431 1428 -1323 -1430
		mu 0 4 979 978 985 986
		f 4 -1433 1429 -1322 -1432
		mu 0 4 980 979 986 987
		f 4 -1435 1431 -1321 -1434
		mu 0 4 981 980 987 988
		f 4 -1437 1433 -1326 -1436
		mu 0 4 983 982 989 990
		f 4 -1439 1435 -1325 -1438
		mu 0 4 984 983 990 991
		f 4 -1440 1437 -1324 -1429
		mu 0 4 978 984 991 985
		f 4 1440 1465 -1447 -1465
		mu 0 4 992 993 994 995
		f 4 1441 1466 -1448 -1466
		mu 0 4 993 996 997 994
		f 4 1442 1467 -1449 -1467
		mu 0 4 996 998 999 997
		f 4 1443 1468 -1450 -1468
		mu 0 4 998 1000 1001 999
		f 4 1444 1469 -1451 -1469
		mu 0 4 1000 1002 1003 1001
		f 4 1445 1464 -1452 -1470
		mu 0 4 1002 1004 1005 1003
		f 4 1446 1471 -1453 -1471
		mu 0 4 995 994 1006 1007
		f 4 1447 1472 -1454 -1472
		mu 0 4 994 997 1008 1006
		f 4 1448 1473 -1455 -1473
		mu 0 4 997 999 1009 1008
		f 4 1449 1474 -1456 -1474
		mu 0 4 999 1001 1010 1009
		f 4 1450 1475 -1457 -1475
		mu 0 4 1001 1003 1011 1010
		f 4 1451 1470 -1458 -1476
		mu 0 4 1003 1005 1012 1011
		f 4 1452 1477 -1459 -1477
		mu 0 4 1007 1006 1013 1014
		f 4 1453 1478 -1460 -1478
		mu 0 4 1006 1008 1015 1013
		f 4 1454 1479 -1461 -1479
		mu 0 4 1008 1009 1016 1015
		f 4 1455 1480 -1462 -1480
		mu 0 4 1009 1010 1017 1016
		f 4 1456 1481 -1463 -1481
		mu 0 4 1010 1011 1018 1017
		f 4 1457 1476 -1464 -1482
		mu 0 4 1011 1012 1019 1018
		f 3 -1441 -1483 1483
		mu 0 3 993 992 1020
		f 3 -1442 -1484 1484
		mu 0 3 996 993 1021
		f 3 -1443 -1485 1485
		mu 0 3 998 996 1022
		f 3 -1444 -1486 1486
		mu 0 3 1000 998 1023
		f 3 -1445 -1487 1487
		mu 0 3 1002 1000 1024
		f 3 -1446 -1488 1482
		mu 0 3 1004 1002 1025
		f 3 1458 1489 -1489
		mu 0 3 1014 1013 1026
		f 3 1459 1490 -1490
		mu 0 3 1013 1015 1027
		f 3 1460 1491 -1491
		mu 0 3 1015 1016 1028
		f 3 1461 1492 -1492
		mu 0 3 1016 1017 1029
		f 3 1462 1493 -1493
		mu 0 3 1017 1018 1030
		f 3 1463 1488 -1494
		mu 0 3 1018 1019 1031
		f 4 1494 1507 1530 -1507
		mu 0 4 1032 1033 1034 1035
		f 4 1495 1508 1528 -1508
		mu 0 4 1033 1036 1037 1034
		f 4 1496 1509 1526 -1509
		mu 0 4 1036 1038 1039 1037
		f 4 1497 1510 1535 -1510
		mu 0 4 1038 1040 1041 1039
		f 4 1498 1511 1534 -1511
		mu 0 4 1040 1042 1043 1041
		f 4 1499 1506 1532 -1512
		mu 0 4 1042 1044 1045 1043
		f 3 -1495 -1513 1513
		mu 0 3 1046 1047 1048
		f 3 -1496 -1514 1514
		mu 0 3 1049 1046 1048
		f 3 -1497 -1515 1515
		mu 0 3 1050 1049 1048
		f 3 -1498 -1516 1516
		mu 0 3 1051 1050 1048
		f 3 -1499 -1517 1517
		mu 0 3 1052 1051 1048
		f 3 -1500 -1518 1512
		mu 0 3 1047 1052 1048
		f 3 1500 1519 -1519
		mu 0 3 1053 1054 1055
		f 3 1501 1520 -1520
		mu 0 3 1054 1056 1055
		f 3 1502 1521 -1521
		mu 0 3 1056 1057 1055
		f 3 1503 1522 -1522
		mu 0 3 1057 1058 1055
		f 3 1504 1523 -1523
		mu 0 3 1058 1059 1055
		f 3 1505 1518 -1524
		mu 0 3 1059 1053 1055
		f 4 -1527 1524 1538 -1526
		mu 0 4 1037 1039 1060 1061
		f 4 -1529 1525 1540 -1528
		mu 0 4 1034 1037 1061 1062
		f 4 -1531 1527 1542 -1530
		mu 0 4 1035 1034 1062 1063
		f 4 -1533 1529 1544 -1532
		mu 0 4 1043 1045 1064 1065
		f 4 -1535 1531 1546 -1534
		mu 0 4 1041 1043 1065 1066
		f 4 -1536 1533 1547 -1525
		mu 0 4 1039 1041 1066 1060
		f 4 -1539 1536 1550 -1538
		mu 0 4 1061 1060 1067 1068
		f 4 -1541 1537 1552 -1540
		mu 0 4 1062 1061 1068 1069
		f 4 -1543 1539 1554 -1542
		mu 0 4 1063 1062 1069 1070
		f 4 -1545 1541 1556 -1544
		mu 0 4 1065 1064 1071 1072
		f 4 -1547 1543 1558 -1546
		mu 0 4 1066 1065 1072 1073
		f 4 -1548 1545 1559 -1537
		mu 0 4 1060 1066 1073 1067
		f 4 -1551 1548 1562 -1550
		mu 0 4 1068 1067 1074 1075
		f 4 -1553 1549 1564 -1552
		mu 0 4 1069 1068 1075 1076
		f 4 -1555 1551 1566 -1554
		mu 0 4 1070 1069 1076 1077
		f 4 -1557 1553 1568 -1556
		mu 0 4 1072 1071 1078 1079
		f 4 -1559 1555 1570 -1558
		mu 0 4 1073 1072 1079 1080
		f 4 -1560 1557 1571 -1549
		mu 0 4 1067 1073 1080 1074
		f 4 -1563 1560 1574 -1562
		mu 0 4 1075 1074 1081 1082
		f 4 -1565 1561 1576 -1564
		mu 0 4 1076 1075 1082 1083
		f 4 -1567 1563 1578 -1566
		mu 0 4 1077 1076 1083 1084
		f 4 -1569 1565 1580 -1568
		mu 0 4 1079 1078 1085 1086
		f 4 -1571 1567 1582 -1570
		mu 0 4 1080 1079 1086 1087
		f 4 -1572 1569 1583 -1561
		mu 0 4 1074 1080 1087 1081
		f 4 -1575 1572 1586 -1574
		mu 0 4 1082 1081 1088 1089
		f 4 -1577 1573 1588 -1576
		mu 0 4 1083 1082 1089 1090
		f 4 -1579 1575 1590 -1578
		mu 0 4 1084 1083 1090 1091
		f 4 -1581 1577 1592 -1580
		mu 0 4 1086 1085 1092 1093
		f 4 -1583 1579 1594 -1582
		mu 0 4 1087 1086 1093 1094
		f 4 -1584 1581 1595 -1573
		mu 0 4 1081 1087 1094 1088
		f 4 -1587 1584 1598 -1586
		mu 0 4 1089 1088 1095 1096
		f 4 -1589 1585 1600 -1588
		mu 0 4 1090 1089 1096 1097
		f 4 -1591 1587 1602 -1590
		mu 0 4 1091 1090 1097 1098
		f 4 -1593 1589 1604 -1592
		mu 0 4 1093 1092 1099 1100
		f 4 -1595 1591 1606 -1594
		mu 0 4 1094 1093 1100 1101
		f 4 -1596 1593 1607 -1585
		mu 0 4 1088 1094 1101 1095
		f 4 -1599 1596 1610 -1598
		mu 0 4 1096 1095 1102 1103
		f 4 -1601 1597 1612 -1600
		mu 0 4 1097 1096 1103 1104
		f 4 -1603 1599 1614 -1602
		mu 0 4 1098 1097 1104 1105
		f 4 -1605 1601 1616 -1604
		mu 0 4 1100 1099 1106 1107
		f 4 -1607 1603 1618 -1606
		mu 0 4 1101 1100 1107 1108
		f 4 -1608 1605 1619 -1597
		mu 0 4 1095 1101 1108 1102
		f 4 -1611 1608 -1503 -1610
		mu 0 4 1103 1102 1109 1110
		f 4 -1613 1609 -1502 -1612
		mu 0 4 1104 1103 1110 1111
		f 4 -1615 1611 -1501 -1614
		mu 0 4 1105 1104 1111 1112
		f 4 -1617 1613 -1506 -1616
		mu 0 4 1107 1106 1113 1114
		f 4 -1619 1615 -1505 -1618
		mu 0 4 1108 1107 1114 1115
		f 4 -1620 1617 -1504 -1609
		mu 0 4 1102 1108 1115 1109
		f 4 1620 1633 1656 -1633
		mu 0 4 1116 1117 1118 1119
		f 4 1621 1634 1654 -1634
		mu 0 4 1117 1120 1121 1118
		f 4 1622 1635 1652 -1635
		mu 0 4 1120 1122 1123 1121
		f 4 1623 1636 1661 -1636
		mu 0 4 1122 1124 1125 1123
		f 4 1624 1637 1660 -1637
		mu 0 4 1124 1126 1127 1125
		f 4 1625 1632 1658 -1638
		mu 0 4 1126 1128 1129 1127
		f 3 -1621 -1639 1639
		mu 0 3 1130 1131 1132
		f 3 -1622 -1640 1640
		mu 0 3 1133 1130 1132
		f 3 -1623 -1641 1641
		mu 0 3 1134 1133 1132
		f 3 -1624 -1642 1642
		mu 0 3 1135 1134 1132
		f 3 -1625 -1643 1643
		mu 0 3 1136 1135 1132
		f 3 -1626 -1644 1638
		mu 0 3 1131 1136 1132
		f 3 1626 1645 -1645
		mu 0 3 1137 1138 1139
		f 3 1627 1646 -1646
		mu 0 3 1138 1140 1139
		f 3 1628 1647 -1647
		mu 0 3 1140 1141 1139
		f 3 1629 1648 -1648
		mu 0 3 1141 1142 1139
		f 3 1630 1649 -1649
		mu 0 3 1142 1143 1139
		f 3 1631 1644 -1650
		mu 0 3 1143 1137 1139
		f 4 -1653 1650 1664 -1652
		mu 0 4 1121 1123 1144 1145
		f 4 -1655 1651 1666 -1654
		mu 0 4 1118 1121 1145 1146
		f 4 -1657 1653 1668 -1656
		mu 0 4 1119 1118 1146 1147
		f 4 -1659 1655 1670 -1658
		mu 0 4 1127 1129 1148 1149
		f 4 -1661 1657 1672 -1660
		mu 0 4 1125 1127 1149 1150
		f 4 -1662 1659 1673 -1651
		mu 0 4 1123 1125 1150 1144
		f 4 -1665 1662 1676 -1664
		mu 0 4 1145 1144 1151 1152
		f 4 -1667 1663 1678 -1666
		mu 0 4 1146 1145 1152 1153
		f 4 -1669 1665 1680 -1668
		mu 0 4 1147 1146 1153 1154
		f 4 -1671 1667 1682 -1670
		mu 0 4 1149 1148 1155 1156
		f 4 -1673 1669 1684 -1672
		mu 0 4 1150 1149 1156 1157
		f 4 -1674 1671 1685 -1663
		mu 0 4 1144 1150 1157 1151
		f 4 -1677 1674 1688 -1676
		mu 0 4 1152 1151 1158 1159
		f 4 -1679 1675 1690 -1678
		mu 0 4 1153 1152 1159 1160
		f 4 -1681 1677 1692 -1680
		mu 0 4 1154 1153 1160 1161
		f 4 -1683 1679 1694 -1682
		mu 0 4 1156 1155 1162 1163
		f 4 -1685 1681 1696 -1684
		mu 0 4 1157 1156 1163 1164
		f 4 -1686 1683 1697 -1675
		mu 0 4 1151 1157 1164 1158
		f 4 -1689 1686 1700 -1688
		mu 0 4 1159 1158 1165 1166
		f 4 -1691 1687 1702 -1690
		mu 0 4 1160 1159 1166 1167
		f 4 -1693 1689 1704 -1692
		mu 0 4 1161 1160 1167 1168
		f 4 -1695 1691 1706 -1694
		mu 0 4 1163 1162 1169 1170
		f 4 -1697 1693 1708 -1696
		mu 0 4 1164 1163 1170 1171
		f 4 -1698 1695 1709 -1687
		mu 0 4 1158 1164 1171 1165
		f 4 -1701 1698 1712 -1700
		mu 0 4 1166 1165 1172 1173
		f 4 -1703 1699 1714 -1702
		mu 0 4 1167 1166 1173 1174
		f 4 -1705 1701 1716 -1704
		mu 0 4 1168 1167 1174 1175
		f 4 -1707 1703 1718 -1706
		mu 0 4 1170 1169 1176 1177
		f 4 -1709 1705 1720 -1708
		mu 0 4 1171 1170 1177 1178
		f 4 -1710 1707 1721 -1699
		mu 0 4 1165 1171 1178 1172
		f 4 -1713 1710 1724 -1712
		mu 0 4 1173 1172 1179 1180
		f 4 -1715 1711 1726 -1714
		mu 0 4 1174 1173 1180 1181
		f 4 -1717 1713 1728 -1716
		mu 0 4 1175 1174 1181 1182
		f 4 -1719 1715 1730 -1718
		mu 0 4 1177 1176 1183 1184
		f 4 -1721 1717 1732 -1720
		mu 0 4 1178 1177 1184 1185
		f 4 -1722 1719 1733 -1711
		mu 0 4 1172 1178 1185 1179
		f 4 -1725 1722 1736 -1724
		mu 0 4 1180 1179 1186 1187
		f 4 -1727 1723 1738 -1726
		mu 0 4 1181 1180 1187 1188
		f 4 -1729 1725 1740 -1728
		mu 0 4 1182 1181 1188 1189
		f 4 -1731 1727 1742 -1730
		mu 0 4 1184 1183 1190 1191
		f 4 -1733 1729 1744 -1732
		mu 0 4 1185 1184 1191 1192
		f 4 -1734 1731 1745 -1723
		mu 0 4 1179 1185 1192 1186
		f 4 -1737 1734 -1629 -1736
		mu 0 4 1187 1186 1193 1194
		f 4 -1739 1735 -1628 -1738
		mu 0 4 1188 1187 1194 1195
		f 4 -1741 1737 -1627 -1740
		mu 0 4 1189 1188 1195 1196
		f 4 -1743 1739 -1632 -1742
		mu 0 4 1191 1190 1197 1198
		f 4 -1745 1741 -1631 -1744
		mu 0 4 1192 1191 1198 1199
		f 4 -1746 1743 -1630 -1735
		mu 0 4 1186 1192 1199 1193
		f 4 1746 1771 -1753 -1771
		mu 0 4 1200 1201 1202 1203
		f 4 1747 1772 -1754 -1772
		mu 0 4 1201 1204 1205 1202
		f 4 1748 1773 -1755 -1773
		mu 0 4 1204 1206 1207 1205
		f 4 1749 1774 -1756 -1774
		mu 0 4 1206 1208 1209 1207
		f 4 1750 1775 -1757 -1775
		mu 0 4 1208 1210 1211 1209
		f 4 1751 1770 -1758 -1776
		mu 0 4 1210 1212 1213 1211
		f 4 1752 1777 -1759 -1777
		mu 0 4 1203 1202 1214 1215
		f 4 1753 1778 -1760 -1778
		mu 0 4 1202 1205 1216 1214
		f 4 1754 1779 -1761 -1779
		mu 0 4 1205 1207 1217 1216
		f 4 1755 1780 -1762 -1780
		mu 0 4 1207 1209 1218 1217
		f 4 1756 1781 -1763 -1781
		mu 0 4 1209 1211 1219 1218
		f 4 1757 1776 -1764 -1782
		mu 0 4 1211 1213 1220 1219
		f 4 1758 1783 -1765 -1783
		mu 0 4 1215 1214 1221 1222
		f 4 1759 1784 -1766 -1784
		mu 0 4 1214 1216 1223 1221
		f 4 1760 1785 -1767 -1785
		mu 0 4 1216 1217 1224 1223
		f 4 1761 1786 -1768 -1786
		mu 0 4 1217 1218 1225 1224
		f 4 1762 1787 -1769 -1787
		mu 0 4 1218 1219 1226 1225
		f 4 1763 1782 -1770 -1788
		mu 0 4 1219 1220 1227 1226
		f 3 -1747 -1789 1789
		mu 0 3 1201 1200 1228
		f 3 -1748 -1790 1790
		mu 0 3 1204 1201 1229
		f 3 -1749 -1791 1791
		mu 0 3 1206 1204 1230
		f 3 -1750 -1792 1792
		mu 0 3 1208 1206 1231
		f 3 -1751 -1793 1793
		mu 0 3 1210 1208 1232
		f 3 -1752 -1794 1788
		mu 0 3 1212 1210 1233
		f 3 1764 1795 -1795
		mu 0 3 1222 1221 1234
		f 3 1765 1796 -1796
		mu 0 3 1221 1223 1235
		f 3 1766 1797 -1797
		mu 0 3 1223 1224 1236
		f 3 1767 1798 -1798
		mu 0 3 1224 1225 1237
		f 3 1768 1799 -1799
		mu 0 3 1225 1226 1238
		f 3 1769 1794 -1800
		mu 0 3 1226 1227 1239
		f 4 1800 1825 -1807 -1825
		mu 0 4 1240 1241 1242 1243
		f 4 1801 1826 -1808 -1826
		mu 0 4 1241 1244 1245 1242
		f 4 1802 1827 -1809 -1827
		mu 0 4 1244 1246 1247 1245
		f 4 1803 1828 -1810 -1828
		mu 0 4 1246 1248 1249 1247
		f 4 1804 1829 -1811 -1829
		mu 0 4 1248 1250 1251 1249
		f 4 1805 1824 -1812 -1830
		mu 0 4 1250 1252 1253 1251
		f 4 1806 1831 -1813 -1831
		mu 0 4 1243 1242 1254 1255
		f 4 1807 1832 -1814 -1832
		mu 0 4 1242 1245 1256 1254
		f 4 1808 1833 -1815 -1833
		mu 0 4 1245 1247 1257 1256
		f 4 1809 1834 -1816 -1834
		mu 0 4 1247 1249 1258 1257
		f 4 1810 1835 -1817 -1835
		mu 0 4 1249 1251 1259 1258
		f 4 1811 1830 -1818 -1836
		mu 0 4 1251 1253 1260 1259
		f 4 1812 1837 -1819 -1837
		mu 0 4 1255 1254 1261 1262
		f 4 1813 1838 -1820 -1838
		mu 0 4 1254 1256 1263 1261
		f 4 1814 1839 -1821 -1839
		mu 0 4 1256 1257 1264 1263
		f 4 1815 1840 -1822 -1840
		mu 0 4 1257 1258 1265 1264
		f 4 1816 1841 -1823 -1841
		mu 0 4 1258 1259 1266 1265
		f 4 1817 1836 -1824 -1842
		mu 0 4 1259 1260 1267 1266
		f 3 -1801 -1843 1843
		mu 0 3 1241 1240 1268
		f 3 -1802 -1844 1844
		mu 0 3 1244 1241 1269
		f 3 -1803 -1845 1845
		mu 0 3 1246 1244 1270
		f 3 -1804 -1846 1846
		mu 0 3 1248 1246 1271
		f 3 -1805 -1847 1847
		mu 0 3 1250 1248 1272
		f 3 -1806 -1848 1842
		mu 0 3 1252 1250 1273
		f 3 1818 1849 -1849
		mu 0 3 1262 1261 1274
		f 3 1819 1850 -1850
		mu 0 3 1261 1263 1275
		f 3 1820 1851 -1851
		mu 0 3 1263 1264 1276
		f 3 1821 1852 -1852
		mu 0 3 1264 1265 1277
		f 3 1822 1853 -1853
		mu 0 3 1265 1266 1278
		f 3 1823 1848 -1854
		mu 0 3 1266 1267 1279
		f 4 1854 1867 1890 -1867
		mu 0 4 1280 1281 1282 1283
		f 4 1855 1868 1888 -1868
		mu 0 4 1281 1284 1285 1282
		f 4 1856 1869 1886 -1869
		mu 0 4 1284 1286 1287 1285
		f 4 1857 1870 1895 -1870
		mu 0 4 1286 1288 1289 1287
		f 4 1858 1871 1894 -1871
		mu 0 4 1288 1290 1291 1289
		f 4 1859 1866 1892 -1872
		mu 0 4 1290 1292 1293 1291
		f 3 -1855 -1873 1873
		mu 0 3 1294 1295 1296
		f 3 -1856 -1874 1874
		mu 0 3 1297 1294 1296
		f 3 -1857 -1875 1875
		mu 0 3 1298 1297 1296
		f 3 -1858 -1876 1876
		mu 0 3 1299 1298 1296;
	setAttr ".fc[1000:1439]"
		f 3 -1859 -1877 1877
		mu 0 3 1300 1299 1296
		f 3 -1860 -1878 1872
		mu 0 3 1295 1300 1296
		f 3 1860 1879 -1879
		mu 0 3 1301 1302 1303
		f 3 1861 1880 -1880
		mu 0 3 1302 1304 1303
		f 3 1862 1881 -1881
		mu 0 3 1304 1305 1303
		f 3 1863 1882 -1882
		mu 0 3 1305 1306 1303
		f 3 1864 1883 -1883
		mu 0 3 1306 1307 1303
		f 3 1865 1878 -1884
		mu 0 3 1307 1301 1303
		f 4 -1887 1884 1898 -1886
		mu 0 4 1285 1287 1308 1309
		f 4 -1889 1885 1900 -1888
		mu 0 4 1282 1285 1309 1310
		f 4 -1891 1887 1902 -1890
		mu 0 4 1283 1282 1310 1311
		f 4 -1893 1889 1904 -1892
		mu 0 4 1291 1293 1312 1313
		f 4 -1895 1891 1906 -1894
		mu 0 4 1289 1291 1313 1314
		f 4 -1896 1893 1907 -1885
		mu 0 4 1287 1289 1314 1308
		f 4 -1899 1896 1910 -1898
		mu 0 4 1309 1308 1315 1316
		f 4 -1901 1897 1912 -1900
		mu 0 4 1310 1309 1316 1317
		f 4 -1903 1899 1914 -1902
		mu 0 4 1311 1310 1317 1318
		f 4 -1905 1901 1916 -1904
		mu 0 4 1313 1312 1319 1320
		f 4 -1907 1903 1918 -1906
		mu 0 4 1314 1313 1320 1321
		f 4 -1908 1905 1919 -1897
		mu 0 4 1308 1314 1321 1315
		f 4 -1911 1908 1922 -1910
		mu 0 4 1316 1315 1322 1323
		f 4 -1913 1909 1924 -1912
		mu 0 4 1317 1316 1323 1324
		f 4 -1915 1911 1926 -1914
		mu 0 4 1318 1317 1324 1325
		f 4 -1917 1913 1928 -1916
		mu 0 4 1320 1319 1326 1327
		f 4 -1919 1915 1930 -1918
		mu 0 4 1321 1320 1327 1328
		f 4 -1920 1917 1931 -1909
		mu 0 4 1315 1321 1328 1322
		f 4 -1923 1920 1934 -1922
		mu 0 4 1323 1322 1329 1330
		f 4 -1925 1921 1936 -1924
		mu 0 4 1324 1323 1330 1331
		f 4 -1927 1923 1938 -1926
		mu 0 4 1325 1324 1331 1332
		f 4 -1929 1925 1940 -1928
		mu 0 4 1327 1326 1333 1334
		f 4 -1931 1927 1942 -1930
		mu 0 4 1328 1327 1334 1335
		f 4 -1932 1929 1943 -1921
		mu 0 4 1322 1328 1335 1329
		f 4 -1935 1932 1946 -1934
		mu 0 4 1330 1329 1336 1337
		f 4 -1937 1933 1948 -1936
		mu 0 4 1331 1330 1337 1338
		f 4 -1939 1935 1950 -1938
		mu 0 4 1332 1331 1338 1339
		f 4 -1941 1937 1952 -1940
		mu 0 4 1334 1333 1340 1341
		f 4 -1943 1939 1954 -1942
		mu 0 4 1335 1334 1341 1342
		f 4 -1944 1941 1955 -1933
		mu 0 4 1329 1335 1342 1336
		f 4 -1947 1944 1958 -1946
		mu 0 4 1337 1336 1343 1344
		f 4 -1949 1945 1960 -1948
		mu 0 4 1338 1337 1344 1345
		f 4 -1951 1947 1962 -1950
		mu 0 4 1339 1338 1345 1346
		f 4 -1953 1949 1964 -1952
		mu 0 4 1341 1340 1347 1348
		f 4 -1955 1951 1966 -1954
		mu 0 4 1342 1341 1348 1349
		f 4 -1956 1953 1967 -1945
		mu 0 4 1336 1342 1349 1343
		f 4 -1959 1956 1970 -1958
		mu 0 4 1344 1343 1350 1351
		f 4 -1961 1957 1972 -1960
		mu 0 4 1345 1344 1351 1352
		f 4 -1963 1959 1974 -1962
		mu 0 4 1346 1345 1352 1353
		f 4 -1965 1961 1976 -1964
		mu 0 4 1348 1347 1354 1355
		f 4 -1967 1963 1978 -1966
		mu 0 4 1349 1348 1355 1356
		f 4 -1968 1965 1979 -1957
		mu 0 4 1343 1349 1356 1350
		f 4 -1971 1968 -1863 -1970
		mu 0 4 1351 1350 1357 1358
		f 4 -1973 1969 -1862 -1972
		mu 0 4 1352 1351 1358 1359
		f 4 -1975 1971 -1861 -1974
		mu 0 4 1353 1352 1359 1360
		f 4 -1977 1973 -1866 -1976
		mu 0 4 1355 1354 1361 1362
		f 4 -1979 1975 -1865 -1978
		mu 0 4 1356 1355 1362 1363
		f 4 -1980 1977 -1864 -1969
		mu 0 4 1350 1356 1363 1357
		f 4 1980 2005 -1987 -2005
		mu 0 4 1364 1365 1366 1367
		f 4 1981 2006 -1988 -2006
		mu 0 4 1365 1368 1369 1366
		f 4 1982 2007 -1989 -2007
		mu 0 4 1368 1370 1371 1369
		f 4 1983 2008 -1990 -2008
		mu 0 4 1370 1372 1373 1371
		f 4 1984 2009 -1991 -2009
		mu 0 4 1372 1374 1375 1373
		f 4 1985 2004 -1992 -2010
		mu 0 4 1374 1376 1377 1375
		f 4 1986 2011 -1993 -2011
		mu 0 4 1367 1366 1378 1379
		f 4 1987 2012 -1994 -2012
		mu 0 4 1366 1369 1380 1378
		f 4 1988 2013 -1995 -2013
		mu 0 4 1369 1371 1381 1380
		f 4 1989 2014 -1996 -2014
		mu 0 4 1371 1373 1382 1381
		f 4 1990 2015 -1997 -2015
		mu 0 4 1373 1375 1383 1382
		f 4 1991 2010 -1998 -2016
		mu 0 4 1375 1377 1384 1383
		f 4 1992 2017 -1999 -2017
		mu 0 4 1379 1378 1385 1386
		f 4 1993 2018 -2000 -2018
		mu 0 4 1378 1380 1387 1385
		f 4 1994 2019 -2001 -2019
		mu 0 4 1380 1381 1388 1387
		f 4 1995 2020 -2002 -2020
		mu 0 4 1381 1382 1389 1388
		f 4 1996 2021 -2003 -2021
		mu 0 4 1382 1383 1390 1389
		f 4 1997 2016 -2004 -2022
		mu 0 4 1383 1384 1391 1390
		f 3 -1981 -2023 2023
		mu 0 3 1365 1364 1392
		f 3 -1982 -2024 2024
		mu 0 3 1368 1365 1393
		f 3 -1983 -2025 2025
		mu 0 3 1370 1368 1394
		f 3 -1984 -2026 2026
		mu 0 3 1372 1370 1395
		f 3 -1985 -2027 2027
		mu 0 3 1374 1372 1396
		f 3 -1986 -2028 2022
		mu 0 3 1376 1374 1397
		f 3 1998 2029 -2029
		mu 0 3 1386 1385 1398
		f 3 1999 2030 -2030
		mu 0 3 1385 1387 1399
		f 3 2000 2031 -2031
		mu 0 3 1387 1388 1400
		f 3 2001 2032 -2032
		mu 0 3 1388 1389 1401
		f 3 2002 2033 -2033
		mu 0 3 1389 1390 1402
		f 3 2003 2028 -2034
		mu 0 3 1390 1391 1403
		f 4 2034 2047 2070 -2047
		mu 0 4 1404 1405 1406 1407
		f 4 2035 2048 2068 -2048
		mu 0 4 1405 1408 1409 1406
		f 4 2036 2049 2066 -2049
		mu 0 4 1408 1410 1411 1409
		f 4 2037 2050 2075 -2050
		mu 0 4 1410 1412 1413 1411
		f 4 2038 2051 2074 -2051
		mu 0 4 1412 1414 1415 1413
		f 4 2039 2046 2072 -2052
		mu 0 4 1414 1416 1417 1415
		f 3 -2035 -2053 2053
		mu 0 3 1418 1419 1420
		f 3 -2036 -2054 2054
		mu 0 3 1421 1418 1420
		f 3 -2037 -2055 2055
		mu 0 3 1422 1421 1420
		f 3 -2038 -2056 2056
		mu 0 3 1423 1422 1420
		f 3 -2039 -2057 2057
		mu 0 3 1424 1423 1420
		f 3 -2040 -2058 2052
		mu 0 3 1419 1424 1420
		f 3 2040 2059 -2059
		mu 0 3 1425 1426 1427
		f 3 2041 2060 -2060
		mu 0 3 1426 1428 1427
		f 3 2042 2061 -2061
		mu 0 3 1428 1429 1427
		f 3 2043 2062 -2062
		mu 0 3 1429 1430 1427
		f 3 2044 2063 -2063
		mu 0 3 1430 1431 1427
		f 3 2045 2058 -2064
		mu 0 3 1431 1425 1427
		f 4 -2067 2064 2078 -2066
		mu 0 4 1409 1411 1432 1433
		f 4 -2069 2065 2080 -2068
		mu 0 4 1406 1409 1433 1434
		f 4 -2071 2067 2082 -2070
		mu 0 4 1407 1406 1434 1435
		f 4 -2073 2069 2084 -2072
		mu 0 4 1415 1417 1436 1437
		f 4 -2075 2071 2086 -2074
		mu 0 4 1413 1415 1437 1438
		f 4 -2076 2073 2087 -2065
		mu 0 4 1411 1413 1438 1432
		f 4 -2079 2076 2090 -2078
		mu 0 4 1433 1432 1439 1440
		f 4 -2081 2077 2092 -2080
		mu 0 4 1434 1433 1440 1441
		f 4 -2083 2079 2094 -2082
		mu 0 4 1435 1434 1441 1442
		f 4 -2085 2081 2096 -2084
		mu 0 4 1437 1436 1443 1444
		f 4 -2087 2083 2098 -2086
		mu 0 4 1438 1437 1444 1445
		f 4 -2088 2085 2099 -2077
		mu 0 4 1432 1438 1445 1439
		f 4 -2091 2088 2102 -2090
		mu 0 4 1440 1439 1446 1447
		f 4 -2093 2089 2104 -2092
		mu 0 4 1441 1440 1447 1448
		f 4 -2095 2091 2106 -2094
		mu 0 4 1442 1441 1448 1449
		f 4 -2097 2093 2108 -2096
		mu 0 4 1444 1443 1450 1451
		f 4 -2099 2095 2110 -2098
		mu 0 4 1445 1444 1451 1452
		f 4 -2100 2097 2111 -2089
		mu 0 4 1439 1445 1452 1446
		f 4 -2103 2100 2114 -2102
		mu 0 4 1447 1446 1453 1454
		f 4 -2105 2101 2116 -2104
		mu 0 4 1448 1447 1454 1455
		f 4 -2107 2103 2118 -2106
		mu 0 4 1449 1448 1455 1456
		f 4 -2109 2105 2120 -2108
		mu 0 4 1451 1450 1457 1458
		f 4 -2111 2107 2122 -2110
		mu 0 4 1452 1451 1458 1459
		f 4 -2112 2109 2123 -2101
		mu 0 4 1446 1452 1459 1453
		f 4 -2115 2112 2126 -2114
		mu 0 4 1454 1453 1460 1461
		f 4 -2117 2113 2128 -2116
		mu 0 4 1455 1454 1461 1462
		f 4 -2119 2115 2130 -2118
		mu 0 4 1456 1455 1462 1463
		f 4 -2121 2117 2132 -2120
		mu 0 4 1458 1457 1464 1465
		f 4 -2123 2119 2134 -2122
		mu 0 4 1459 1458 1465 1466
		f 4 -2124 2121 2135 -2113
		mu 0 4 1453 1459 1466 1460
		f 4 -2127 2124 2138 -2126
		mu 0 4 1461 1460 1467 1468
		f 4 -2129 2125 2140 -2128
		mu 0 4 1462 1461 1468 1469
		f 4 -2131 2127 2142 -2130
		mu 0 4 1463 1462 1469 1470
		f 4 -2133 2129 2144 -2132
		mu 0 4 1465 1464 1471 1472
		f 4 -2135 2131 2146 -2134
		mu 0 4 1466 1465 1472 1473
		f 4 -2136 2133 2147 -2125
		mu 0 4 1460 1466 1473 1467
		f 4 -2139 2136 2150 -2138
		mu 0 4 1468 1467 1474 1475
		f 4 -2141 2137 2152 -2140
		mu 0 4 1469 1468 1475 1476
		f 4 -2143 2139 2154 -2142
		mu 0 4 1470 1469 1476 1477
		f 4 -2145 2141 2156 -2144
		mu 0 4 1472 1471 1478 1479
		f 4 -2147 2143 2158 -2146
		mu 0 4 1473 1472 1479 1480
		f 4 -2148 2145 2159 -2137
		mu 0 4 1467 1473 1480 1474
		f 4 -2151 2148 -2043 -2150
		mu 0 4 1475 1474 1481 1482
		f 4 -2153 2149 -2042 -2152
		mu 0 4 1476 1475 1482 1483
		f 4 -2155 2151 -2041 -2154
		mu 0 4 1477 1476 1483 1484
		f 4 -2157 2153 -2046 -2156
		mu 0 4 1479 1478 1485 1486
		f 4 -2159 2155 -2045 -2158
		mu 0 4 1480 1479 1486 1487
		f 4 -2160 2157 -2044 -2149
		mu 0 4 1474 1480 1487 1481
		f 4 2160 2185 -2167 -2185
		mu 0 4 1488 1489 1490 1491
		f 4 2161 2186 -2168 -2186
		mu 0 4 1489 1492 1493 1490
		f 4 2162 2187 -2169 -2187
		mu 0 4 1492 1494 1495 1493
		f 4 2163 2188 -2170 -2188
		mu 0 4 1494 1496 1497 1495
		f 4 2164 2189 -2171 -2189
		mu 0 4 1496 1498 1499 1497
		f 4 2165 2184 -2172 -2190
		mu 0 4 1498 1500 1501 1499
		f 4 2166 2191 -2173 -2191
		mu 0 4 1491 1490 1502 1503
		f 4 2167 2192 -2174 -2192
		mu 0 4 1490 1493 1504 1502
		f 4 2168 2193 -2175 -2193
		mu 0 4 1493 1495 1505 1504
		f 4 2169 2194 -2176 -2194
		mu 0 4 1495 1497 1506 1505
		f 4 2170 2195 -2177 -2195
		mu 0 4 1497 1499 1507 1506
		f 4 2171 2190 -2178 -2196
		mu 0 4 1499 1501 1508 1507
		f 4 2172 2197 -2179 -2197
		mu 0 4 1503 1502 1509 1510
		f 4 2173 2198 -2180 -2198
		mu 0 4 1502 1504 1511 1509
		f 4 2174 2199 -2181 -2199
		mu 0 4 1504 1505 1512 1511
		f 4 2175 2200 -2182 -2200
		mu 0 4 1505 1506 1513 1512
		f 4 2176 2201 -2183 -2201
		mu 0 4 1506 1507 1514 1513
		f 4 2177 2196 -2184 -2202
		mu 0 4 1507 1508 1515 1514
		f 3 -2161 -2203 2203
		mu 0 3 1489 1488 1516
		f 3 -2162 -2204 2204
		mu 0 3 1492 1489 1517
		f 3 -2163 -2205 2205
		mu 0 3 1494 1492 1518
		f 3 -2164 -2206 2206
		mu 0 3 1496 1494 1519
		f 3 -2165 -2207 2207
		mu 0 3 1498 1496 1520
		f 3 -2166 -2208 2202
		mu 0 3 1500 1498 1521
		f 3 2178 2209 -2209
		mu 0 3 1510 1509 1522
		f 3 2179 2210 -2210
		mu 0 3 1509 1511 1523
		f 3 2180 2211 -2211
		mu 0 3 1511 1512 1524
		f 3 2181 2212 -2212
		mu 0 3 1512 1513 1525
		f 3 2182 2213 -2213
		mu 0 3 1513 1514 1526
		f 3 2183 2208 -2214
		mu 0 3 1514 1515 1527
		f 4 2214 2227 2250 -2227
		mu 0 4 1528 1529 1530 1531
		f 4 2215 2228 2248 -2228
		mu 0 4 1529 1532 1533 1530
		f 4 2216 2229 2246 -2229
		mu 0 4 1532 1534 1535 1533
		f 4 2217 2230 2255 -2230
		mu 0 4 1534 1536 1537 1535
		f 4 2218 2231 2254 -2231
		mu 0 4 1536 1538 1539 1537
		f 4 2219 2226 2252 -2232
		mu 0 4 1538 1540 1541 1539
		f 3 -2215 -2233 2233
		mu 0 3 1542 1543 1544
		f 3 -2216 -2234 2234
		mu 0 3 1545 1542 1544
		f 3 -2217 -2235 2235
		mu 0 3 1546 1545 1544
		f 3 -2218 -2236 2236
		mu 0 3 1547 1546 1544
		f 3 -2219 -2237 2237
		mu 0 3 1548 1547 1544
		f 3 -2220 -2238 2232
		mu 0 3 1543 1548 1544
		f 3 2220 2239 -2239
		mu 0 3 1549 1550 1551
		f 3 2221 2240 -2240
		mu 0 3 1550 1552 1551
		f 3 2222 2241 -2241
		mu 0 3 1552 1553 1551
		f 3 2223 2242 -2242
		mu 0 3 1553 1554 1551
		f 3 2224 2243 -2243
		mu 0 3 1554 1555 1551
		f 3 2225 2238 -2244
		mu 0 3 1555 1549 1551
		f 4 -2247 2244 2258 -2246
		mu 0 4 1533 1535 1556 1557
		f 4 -2249 2245 2260 -2248
		mu 0 4 1530 1533 1557 1558
		f 4 -2251 2247 2262 -2250
		mu 0 4 1531 1530 1558 1559
		f 4 -2253 2249 2264 -2252
		mu 0 4 1539 1541 1560 1561
		f 4 -2255 2251 2266 -2254
		mu 0 4 1537 1539 1561 1562
		f 4 -2256 2253 2267 -2245
		mu 0 4 1535 1537 1562 1556
		f 4 -2259 2256 2270 -2258
		mu 0 4 1557 1556 1563 1564
		f 4 -2261 2257 2272 -2260
		mu 0 4 1558 1557 1564 1565
		f 4 -2263 2259 2274 -2262
		mu 0 4 1559 1558 1565 1566
		f 4 -2265 2261 2276 -2264
		mu 0 4 1561 1560 1567 1568
		f 4 -2267 2263 2278 -2266
		mu 0 4 1562 1561 1568 1569
		f 4 -2268 2265 2279 -2257
		mu 0 4 1556 1562 1569 1563
		f 4 -2271 2268 2282 -2270
		mu 0 4 1564 1563 1570 1571
		f 4 -2273 2269 2284 -2272
		mu 0 4 1565 1564 1571 1572
		f 4 -2275 2271 2286 -2274
		mu 0 4 1566 1565 1572 1573
		f 4 -2277 2273 2288 -2276
		mu 0 4 1568 1567 1574 1575
		f 4 -2279 2275 2290 -2278
		mu 0 4 1569 1568 1575 1576
		f 4 -2280 2277 2291 -2269
		mu 0 4 1563 1569 1576 1570
		f 4 -2283 2280 2294 -2282
		mu 0 4 1571 1570 1577 1578
		f 4 -2285 2281 2296 -2284
		mu 0 4 1572 1571 1578 1579
		f 4 -2287 2283 2298 -2286
		mu 0 4 1573 1572 1579 1580
		f 4 -2289 2285 2300 -2288
		mu 0 4 1575 1574 1581 1582
		f 4 -2291 2287 2302 -2290
		mu 0 4 1576 1575 1582 1583
		f 4 -2292 2289 2303 -2281
		mu 0 4 1570 1576 1583 1577
		f 4 -2295 2292 2306 -2294
		mu 0 4 1578 1577 1584 1585
		f 4 -2297 2293 2308 -2296
		mu 0 4 1579 1578 1585 1586
		f 4 -2299 2295 2310 -2298
		mu 0 4 1580 1579 1586 1587
		f 4 -2301 2297 2312 -2300
		mu 0 4 1582 1581 1588 1589
		f 4 -2303 2299 2314 -2302
		mu 0 4 1583 1582 1589 1590
		f 4 -2304 2301 2315 -2293
		mu 0 4 1577 1583 1590 1584
		f 4 -2307 2304 2318 -2306
		mu 0 4 1585 1584 1591 1592
		f 4 -2309 2305 2320 -2308
		mu 0 4 1586 1585 1592 1593
		f 4 -2311 2307 2322 -2310
		mu 0 4 1587 1586 1593 1594
		f 4 -2313 2309 2324 -2312
		mu 0 4 1589 1588 1595 1596
		f 4 -2315 2311 2326 -2314
		mu 0 4 1590 1589 1596 1597
		f 4 -2316 2313 2327 -2305
		mu 0 4 1584 1590 1597 1591
		f 4 -2319 2316 2330 -2318
		mu 0 4 1592 1591 1598 1599
		f 4 -2321 2317 2332 -2320
		mu 0 4 1593 1592 1599 1600
		f 4 -2323 2319 2334 -2322
		mu 0 4 1594 1593 1600 1601
		f 4 -2325 2321 2336 -2324
		mu 0 4 1596 1595 1602 1603
		f 4 -2327 2323 2338 -2326
		mu 0 4 1597 1596 1603 1604
		f 4 -2328 2325 2339 -2317
		mu 0 4 1591 1597 1604 1598
		f 4 -2331 2328 -2223 -2330
		mu 0 4 1599 1598 1605 1606
		f 4 -2333 2329 -2222 -2332
		mu 0 4 1600 1599 1606 1607
		f 4 -2335 2331 -2221 -2334
		mu 0 4 1601 1600 1607 1608
		f 4 -2337 2333 -2226 -2336
		mu 0 4 1603 1602 1609 1610
		f 4 -2339 2335 -2225 -2338
		mu 0 4 1604 1603 1610 1611
		f 4 -2340 2337 -2224 -2329
		mu 0 4 1598 1604 1611 1605
		f 4 2340 2365 -2347 -2365
		mu 0 4 1612 1613 1614 1615
		f 4 2341 2366 -2348 -2366
		mu 0 4 1613 1616 1617 1614
		f 4 2342 2367 -2349 -2367
		mu 0 4 1616 1618 1619 1617
		f 4 2343 2368 -2350 -2368
		mu 0 4 1618 1620 1621 1619
		f 4 2344 2369 -2351 -2369
		mu 0 4 1620 1622 1623 1621
		f 4 2345 2364 -2352 -2370
		mu 0 4 1622 1624 1625 1623
		f 4 2346 2371 -2353 -2371
		mu 0 4 1615 1614 1626 1627
		f 4 2347 2372 -2354 -2372
		mu 0 4 1614 1617 1628 1626
		f 4 2348 2373 -2355 -2373
		mu 0 4 1617 1619 1629 1628
		f 4 2349 2374 -2356 -2374
		mu 0 4 1619 1621 1630 1629
		f 4 2350 2375 -2357 -2375
		mu 0 4 1621 1623 1631 1630
		f 4 2351 2370 -2358 -2376
		mu 0 4 1623 1625 1632 1631
		f 4 2352 2377 -2359 -2377
		mu 0 4 1627 1626 1633 1634
		f 4 2353 2378 -2360 -2378
		mu 0 4 1626 1628 1635 1633
		f 4 2354 2379 -2361 -2379
		mu 0 4 1628 1629 1636 1635
		f 4 2355 2380 -2362 -2380
		mu 0 4 1629 1630 1637 1636
		f 4 2356 2381 -2363 -2381
		mu 0 4 1630 1631 1638 1637
		f 4 2357 2376 -2364 -2382
		mu 0 4 1631 1632 1639 1638
		f 3 -2341 -2383 2383
		mu 0 3 1613 1612 1640
		f 3 -2342 -2384 2384
		mu 0 3 1616 1613 1641
		f 3 -2343 -2385 2385
		mu 0 3 1618 1616 1642
		f 3 -2344 -2386 2386
		mu 0 3 1620 1618 1643
		f 3 -2345 -2387 2387
		mu 0 3 1622 1620 1644
		f 3 -2346 -2388 2382
		mu 0 3 1624 1622 1645
		f 3 2358 2389 -2389
		mu 0 3 1634 1633 1646
		f 3 2359 2390 -2390
		mu 0 3 1633 1635 1647
		f 3 2360 2391 -2391
		mu 0 3 1635 1636 1648
		f 3 2361 2392 -2392
		mu 0 3 1636 1637 1649
		f 3 2362 2393 -2393
		mu 0 3 1637 1638 1650
		f 3 2363 2388 -2394
		mu 0 3 1638 1639 1651
		f 4 2394 2407 2430 -2407
		mu 0 4 1652 1653 1654 1655
		f 4 2395 2408 2428 -2408
		mu 0 4 1653 1656 1657 1654
		f 4 2396 2409 2426 -2409
		mu 0 4 1656 1658 1659 1657
		f 4 2397 2410 2435 -2410
		mu 0 4 1658 1660 1661 1659
		f 4 2398 2411 2434 -2411
		mu 0 4 1660 1662 1663 1661
		f 4 2399 2406 2432 -2412
		mu 0 4 1662 1664 1665 1663
		f 3 -2395 -2413 2413
		mu 0 3 1666 1667 1668
		f 3 -2396 -2414 2414
		mu 0 3 1669 1666 1668
		f 3 -2397 -2415 2415
		mu 0 3 1670 1669 1668
		f 3 -2398 -2416 2416
		mu 0 3 1671 1670 1668
		f 3 -2399 -2417 2417
		mu 0 3 1672 1671 1668
		f 3 -2400 -2418 2412
		mu 0 3 1667 1672 1668
		f 3 2400 2419 -2419
		mu 0 3 1673 1674 1675
		f 3 2401 2420 -2420
		mu 0 3 1674 1676 1675
		f 3 2402 2421 -2421
		mu 0 3 1676 1677 1675
		f 3 2403 2422 -2422
		mu 0 3 1677 1678 1675
		f 3 2404 2423 -2423
		mu 0 3 1678 1679 1675
		f 3 2405 2418 -2424
		mu 0 3 1679 1673 1675
		f 4 -2427 2424 2438 -2426
		mu 0 4 1657 1659 1680 1681
		f 4 -2429 2425 2440 -2428
		mu 0 4 1654 1657 1681 1682
		f 4 -2431 2427 2442 -2430
		mu 0 4 1655 1654 1682 1683
		f 4 -2433 2429 2444 -2432
		mu 0 4 1663 1665 1684 1685
		f 4 -2435 2431 2446 -2434
		mu 0 4 1661 1663 1685 1686
		f 4 -2436 2433 2447 -2425
		mu 0 4 1659 1661 1686 1680
		f 4 -2439 2436 2450 -2438
		mu 0 4 1681 1680 1687 1688
		f 4 -2441 2437 2452 -2440
		mu 0 4 1682 1681 1688 1689
		f 4 -2443 2439 2454 -2442
		mu 0 4 1683 1682 1689 1690
		f 4 -2445 2441 2456 -2444
		mu 0 4 1685 1684 1691 1692
		f 4 -2447 2443 2458 -2446
		mu 0 4 1686 1685 1692 1693
		f 4 -2448 2445 2459 -2437
		mu 0 4 1680 1686 1693 1687
		f 4 -2451 2448 2462 -2450
		mu 0 4 1688 1687 1694 1695
		f 4 -2453 2449 2464 -2452
		mu 0 4 1689 1688 1695 1696
		f 4 -2455 2451 2466 -2454
		mu 0 4 1690 1689 1696 1697
		f 4 -2457 2453 2468 -2456
		mu 0 4 1692 1691 1698 1699
		f 4 -2459 2455 2470 -2458
		mu 0 4 1693 1692 1699 1700
		f 4 -2460 2457 2471 -2449
		mu 0 4 1687 1693 1700 1694
		f 4 -2463 2460 2474 -2462
		mu 0 4 1695 1694 1701 1702
		f 4 -2465 2461 2476 -2464
		mu 0 4 1696 1695 1702 1703
		f 4 -2467 2463 2478 -2466
		mu 0 4 1697 1696 1703 1704
		f 4 -2469 2465 2480 -2468
		mu 0 4 1699 1698 1705 1706
		f 4 -2471 2467 2482 -2470
		mu 0 4 1700 1699 1706 1707
		f 4 -2472 2469 2483 -2461
		mu 0 4 1694 1700 1707 1701
		f 4 -2475 2472 2486 -2474
		mu 0 4 1702 1701 1708 1709
		f 4 -2477 2473 2488 -2476
		mu 0 4 1703 1702 1709 1710
		f 4 -2479 2475 2490 -2478
		mu 0 4 1704 1703 1710 1711
		f 4 -2481 2477 2492 -2480
		mu 0 4 1706 1705 1712 1713
		f 4 -2483 2479 2494 -2482
		mu 0 4 1707 1706 1713 1714
		f 4 -2484 2481 2495 -2473
		mu 0 4 1701 1707 1714 1708
		f 4 -2487 2484 2498 -2486
		mu 0 4 1709 1708 1715 1716
		f 4 -2489 2485 2500 -2488
		mu 0 4 1710 1709 1716 1717
		f 4 -2491 2487 2502 -2490
		mu 0 4 1711 1710 1717 1718
		f 4 -2493 2489 2504 -2492
		mu 0 4 1713 1712 1719 1720
		f 4 -2495 2491 2506 -2494
		mu 0 4 1714 1713 1720 1721
		f 4 -2496 2493 2507 -2485
		mu 0 4 1708 1714 1721 1715
		f 4 -2499 2496 2510 -2498
		mu 0 4 1716 1715 1722 1723
		f 4 -2501 2497 2512 -2500
		mu 0 4 1717 1716 1723 1724
		f 4 -2503 2499 2514 -2502
		mu 0 4 1718 1717 1724 1725
		f 4 -2505 2501 2516 -2504
		mu 0 4 1720 1719 1726 1727
		f 4 -2507 2503 2518 -2506
		mu 0 4 1721 1720 1727 1728
		f 4 -2508 2505 2519 -2497
		mu 0 4 1715 1721 1728 1722
		f 4 -2511 2508 -2403 -2510
		mu 0 4 1723 1722 1729 1730
		f 4 -2513 2509 -2402 -2512
		mu 0 4 1724 1723 1730 1731
		f 4 -2515 2511 -2401 -2514
		mu 0 4 1725 1724 1731 1732
		f 4 -2517 2513 -2406 -2516
		mu 0 4 1727 1726 1733 1734
		f 4 -2519 2515 -2405 -2518
		mu 0 4 1728 1727 1734 1735
		f 4 -2520 2517 -2404 -2509
		mu 0 4 1722 1728 1735 1729
		f 4 2520 2533 2556 -2533
		mu 0 4 1736 1737 1738 1739
		f 4 2521 2534 2554 -2534
		mu 0 4 1737 1740 1741 1738
		f 4 2522 2535 2552 -2535
		mu 0 4 1740 1742 1743 1741
		f 4 2523 2536 2561 -2536
		mu 0 4 1742 1744 1745 1743
		f 4 2524 2537 2560 -2537
		mu 0 4 1744 1746 1747 1745
		f 4 2525 2532 2558 -2538
		mu 0 4 1746 1748 1749 1747
		f 3 -2521 -2539 2539
		mu 0 3 1750 1751 1752
		f 3 -2522 -2540 2540
		mu 0 3 1753 1750 1752
		f 3 -2523 -2541 2541
		mu 0 3 1754 1753 1752
		f 3 -2524 -2542 2542
		mu 0 3 1755 1754 1752
		f 3 -2525 -2543 2543
		mu 0 3 1756 1755 1752
		f 3 -2526 -2544 2538
		mu 0 3 1751 1756 1752
		f 3 2526 2545 -2545
		mu 0 3 1757 1758 1759
		f 3 2527 2546 -2546
		mu 0 3 1758 1760 1759
		f 3 2528 2547 -2547
		mu 0 3 1760 1761 1759
		f 3 2529 2548 -2548
		mu 0 3 1761 1762 1759
		f 3 2530 2549 -2549
		mu 0 3 1762 1763 1759
		f 3 2531 2544 -2550
		mu 0 3 1763 1757 1759
		f 4 -2553 2550 2564 -2552
		mu 0 4 1741 1743 1764 1765
		f 4 -2555 2551 2566 -2554
		mu 0 4 1738 1741 1765 1766
		f 4 -2557 2553 2568 -2556
		mu 0 4 1739 1738 1766 1767
		f 4 -2559 2555 2570 -2558
		mu 0 4 1747 1749 1768 1769
		f 4 -2561 2557 2572 -2560
		mu 0 4 1745 1747 1769 1770
		f 4 -2562 2559 2573 -2551
		mu 0 4 1743 1745 1770 1764
		f 4 -2565 2562 2576 -2564
		mu 0 4 1765 1764 1771 1772
		f 4 -2567 2563 2578 -2566
		mu 0 4 1766 1765 1772 1773
		f 4 -2569 2565 2580 -2568
		mu 0 4 1767 1766 1773 1774
		f 4 -2571 2567 2582 -2570
		mu 0 4 1769 1768 1775 1776
		f 4 -2573 2569 2584 -2572
		mu 0 4 1770 1769 1776 1777
		f 4 -2574 2571 2585 -2563
		mu 0 4 1764 1770 1777 1771
		f 4 -2577 2574 2588 -2576
		mu 0 4 1772 1771 1778 1779
		f 4 -2579 2575 2590 -2578
		mu 0 4 1773 1772 1779 1780
		f 4 -2581 2577 2592 -2580
		mu 0 4 1774 1773 1780 1781
		f 4 -2583 2579 2594 -2582
		mu 0 4 1776 1775 1782 1783
		f 4 -2585 2581 2596 -2584
		mu 0 4 1777 1776 1783 1784
		f 4 -2586 2583 2597 -2575
		mu 0 4 1771 1777 1784 1778
		f 4 -2589 2586 2600 -2588
		mu 0 4 1779 1778 1785 1786
		f 4 -2591 2587 2602 -2590
		mu 0 4 1780 1779 1786 1787
		f 4 -2593 2589 2604 -2592
		mu 0 4 1781 1780 1787 1788
		f 4 -2595 2591 2606 -2594
		mu 0 4 1783 1782 1789 1790
		f 4 -2597 2593 2608 -2596
		mu 0 4 1784 1783 1790 1791
		f 4 -2598 2595 2609 -2587
		mu 0 4 1778 1784 1791 1785
		f 4 -2601 2598 2612 -2600
		mu 0 4 1786 1785 1792 1793
		f 4 -2603 2599 2614 -2602
		mu 0 4 1787 1786 1793 1794
		f 4 -2605 2601 2616 -2604
		mu 0 4 1788 1787 1794 1795
		f 4 -2607 2603 2618 -2606
		mu 0 4 1790 1789 1796 1797
		f 4 -2609 2605 2620 -2608
		mu 0 4 1791 1790 1797 1798
		f 4 -2610 2607 2621 -2599
		mu 0 4 1785 1791 1798 1792
		f 4 -2613 2610 2624 -2612
		mu 0 4 1793 1792 1799 1800
		f 4 -2615 2611 2626 -2614
		mu 0 4 1794 1793 1800 1801
		f 4 -2617 2613 2628 -2616
		mu 0 4 1795 1794 1801 1802
		f 4 -2619 2615 2630 -2618
		mu 0 4 1797 1796 1803 1804
		f 4 -2621 2617 2632 -2620
		mu 0 4 1798 1797 1804 1805
		f 4 -2622 2619 2633 -2611
		mu 0 4 1792 1798 1805 1799
		f 4 -2625 2622 2636 -2624
		mu 0 4 1800 1799 1806 1807
		f 4 -2627 2623 2638 -2626
		mu 0 4 1801 1800 1807 1808
		f 4 -2629 2625 2640 -2628
		mu 0 4 1802 1801 1808 1809
		f 4 -2631 2627 2642 -2630
		mu 0 4 1804 1803 1810 1811
		f 4 -2633 2629 2644 -2632
		mu 0 4 1805 1804 1811 1812
		f 4 -2634 2631 2645 -2623
		mu 0 4 1799 1805 1812 1806
		f 4 -2637 2634 -2529 -2636
		mu 0 4 1807 1806 1813 1814
		f 4 -2639 2635 -2528 -2638
		mu 0 4 1808 1807 1814 1815
		f 4 -2641 2637 -2527 -2640
		mu 0 4 1809 1808 1815 1816
		f 4 -2643 2639 -2532 -2642
		mu 0 4 1811 1810 1817 1818
		f 4 -2645 2641 -2531 -2644
		mu 0 4 1812 1811 1818 1819
		f 4 -2646 2643 -2530 -2635
		mu 0 4 1806 1812 1819 1813
		f 4 2646 2671 -2653 -2671
		mu 0 4 1820 1821 1822 1823
		f 4 2647 2672 -2654 -2672
		mu 0 4 1821 1824 1825 1822
		f 4 2648 2673 -2655 -2673
		mu 0 4 1824 1826 1827 1825
		f 4 2649 2674 -2656 -2674
		mu 0 4 1826 1828 1829 1827
		f 4 2650 2675 -2657 -2675
		mu 0 4 1828 1830 1831 1829
		f 4 2651 2670 -2658 -2676
		mu 0 4 1830 1832 1833 1831
		f 4 2652 2677 -2659 -2677
		mu 0 4 1823 1822 1834 1835
		f 4 2653 2678 -2660 -2678
		mu 0 4 1822 1825 1836 1834
		f 4 2654 2679 -2661 -2679
		mu 0 4 1825 1827 1837 1836
		f 4 2655 2680 -2662 -2680
		mu 0 4 1827 1829 1838 1837
		f 4 2656 2681 -2663 -2681
		mu 0 4 1829 1831 1839 1838
		f 4 2657 2676 -2664 -2682
		mu 0 4 1831 1833 1840 1839
		f 4 2658 2683 -2665 -2683
		mu 0 4 1835 1834 1841 1842
		f 4 2659 2684 -2666 -2684
		mu 0 4 1834 1836 1843 1841
		f 4 2660 2685 -2667 -2685
		mu 0 4 1836 1837 1844 1843
		f 4 2661 2686 -2668 -2686
		mu 0 4 1837 1838 1845 1844
		f 4 2662 2687 -2669 -2687
		mu 0 4 1838 1839 1846 1845
		f 4 2663 2682 -2670 -2688
		mu 0 4 1839 1840 1847 1846
		f 3 -2647 -2689 2689
		mu 0 3 1821 1820 1848
		f 3 -2648 -2690 2690
		mu 0 3 1824 1821 1849
		f 3 -2649 -2691 2691
		mu 0 3 1826 1824 1850
		f 3 -2650 -2692 2692
		mu 0 3 1828 1826 1851
		f 3 -2651 -2693 2693
		mu 0 3 1830 1828 1852
		f 3 -2652 -2694 2688
		mu 0 3 1832 1830 1853
		f 3 2664 2695 -2695
		mu 0 3 1842 1841 1854
		f 3 2665 2696 -2696
		mu 0 3 1841 1843 1855
		f 3 2666 2697 -2697
		mu 0 3 1843 1844 1856
		f 3 2667 2698 -2698
		mu 0 3 1844 1845 1857
		f 3 2668 2699 -2699
		mu 0 3 1845 1846 1858
		f 3 2669 2694 -2700
		mu 0 3 1846 1847 1859;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vcs" 2;
createNode shadingEngine -n "pasted__lambert2SG4";
	rename -uid "33D979F8-5E49-BDE4-BFF8-4CAE4887176F";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "pasted__materialInfo9";
	rename -uid "54F9AE66-454B-32FE-8BE0-B1B59E025BDF";
createNode lambert -n "pasted__bark4";
	rename -uid "984CD130-CD48-67FE-71F1-F1AA20ABE9EF";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 1 1 1 ;
createNode shadingEngine -n "pasted__lambert3SG4";
	rename -uid "245F98F3-B64C-7135-617B-C68BE3071E0C";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "pasted__materialInfo10";
	rename -uid "C123C8C4-C74C-A1CC-DA95-429A258F0647";
createNode lambert -n "pasted__leaves4";
	rename -uid "C49B6870-0D45-FFE6-E19F-C2B703D30E74";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 1 0.33610001 0 ;
	setAttr ".ambc" -type "float3" 0.41463339 0.41463339 0.41463339 ;
createNode shadingEngine -n "pasted__lambert2SG2";
	rename -uid "883EC8A6-8B4C-B39C-CC2A-EA96B07CF309";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "pasted__materialInfo5";
	rename -uid "23373819-C943-3345-2C5B-46BE7A44D92C";
createNode lambert -n "pasted__bark2";
	rename -uid "1DB9592E-B943-AC95-ABE1-1293FCFA43FF";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 1 1 1 ;
createNode shadingEngine -n "pasted__lambert3SG2";
	rename -uid "8D3149EE-874F-01EE-20F6-5487A99789B2";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "pasted__materialInfo6";
	rename -uid "1033AF32-7A4F-8AD6-35EF-19B4F381F542";
createNode lambert -n "pasted__leaves2";
	rename -uid "0C5522B8-7848-62C5-792C-49AFDCDCC2BA";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 1 0.33610001 0 ;
	setAttr ".ambc" -type "float3" 0.41463339 0.41463339 0.41463339 ;
createNode shadingEngine -n "lambert2SG";
	rename -uid "A9583792-B845-7BAA-78A6-1D8A780BE8A7";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "F45B11C3-5542-A063-CBC1-DD94D0A77A8D";
createNode lambert -n "bark";
	rename -uid "49118E32-3A44-EF90-F4C2-01842B628167";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 1 1 1 ;
createNode shadingEngine -n "lambert3SG";
	rename -uid "93DB0F98-7742-D153-E99A-30B50CDE85CF";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "F4781A30-394C-36AB-FAAB-0CB864EF6091";
createNode lambert -n "leaves";
	rename -uid "AB7F7F5C-8C44-BB72-E4FF-9A8AF6002423";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 1 0.33610001 0 ;
	setAttr ".ambc" -type "float3" 0.41463339 0.41463339 0.41463339 ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "B6664842-284B-576E-EECD-8F83E5290998";
	setAttr -s 56 ".lnk";
	setAttr -s 56 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "58DB9AF9-C443-298F-F9BF-7F8A9861B9CF";
createNode displayLayer -n "defaultLayer";
	rename -uid "AAE8FAC6-4246-7BDA-F72B-4D935D492A1E";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "680B3EA6-6241-EDAB-358B-36A3D3639544";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "DFB4E7A9-984A-DFFA-81F7-51B4AC754576";
	setAttr ".g" yes;
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
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 936\\n    -height 515\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 936\\n    -height 515\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "259C472D-CC43-F7CE-2A3D-37A4F0BDDADB";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode shadingEngine -n "pasted__pasted__lambert2SG4";
	rename -uid "272ECFE6-D943-6831-6098-37A62CF9EBE0";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "pasted__pasted__materialInfo9";
	rename -uid "1AF3B112-224B-DEC1-E959-339832DB517F";
createNode lambert -n "pasted__pasted__bark4";
	rename -uid "99AD715E-4F40-1F7C-25D9-918C80A1A6EB";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 1 1 1 ;
createNode shadingEngine -n "pasted__pasted__lambert3SG4";
	rename -uid "CB2B8243-8C49-4926-13C3-829A367E218B";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "pasted__pasted__materialInfo10";
	rename -uid "43EAE240-184D-DEE4-E173-6DBAEA96E94F";
createNode lambert -n "pasted__pasted__leaves4";
	rename -uid "ECB7641B-BA46-71B4-F550-3787B80AAACB";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 1 0.33610001 0 ;
	setAttr ".ambc" -type "float3" 0.41463339 0.41463339 0.41463339 ;
createNode shadingEngine -n "pasted__lambert2SG";
	rename -uid "FBBBC20F-5840-503D-D30C-C59924B586CB";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "pasted__materialInfo1";
	rename -uid "84DE66CA-BD46-BA9D-9744-72997499B00A";
createNode lambert -n "pasted__bark";
	rename -uid "4CCD65ED-AE49-20D9-07A4-689954B1BC2B";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 1 1 1 ;
createNode shadingEngine -n "pasted__lambert3SG";
	rename -uid "07679297-8E44-7649-2F8C-D396B5717A72";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "pasted__materialInfo2";
	rename -uid "D7B442FF-B048-1823-EDC7-408431FB6955";
createNode lambert -n "pasted__leaves";
	rename -uid "1034F6B4-5347-4E9D-0AF9-9A9C45912C9B";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 1 0.33610001 0 ;
	setAttr ".ambc" -type "float3" 0.41463339 0.41463339 0.41463339 ;
createNode shadingEngine -n "pasted__pasted__lambert2SG2";
	rename -uid "5A39192D-4F4C-E9F7-FD53-89AEC68ADC52";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "pasted__pasted__materialInfo5";
	rename -uid "2F1279F3-054C-5D6F-9EE2-EF801D1A9902";
createNode lambert -n "pasted__pasted__bark2";
	rename -uid "90EFBE50-5240-1FC1-C6C3-628A0C84795F";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 1 1 1 ;
createNode shadingEngine -n "pasted__pasted__lambert3SG2";
	rename -uid "252F0043-1E4A-5CEE-161A-08B6EFA72522";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "pasted__pasted__materialInfo6";
	rename -uid "189264C1-5741-A98A-1C7C-F89831DE2179";
createNode lambert -n "pasted__pasted__leaves2";
	rename -uid "BE5B8AFE-5541-83A7-2B6F-DBB9D5E2DE73";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 1 0.33610001 0 ;
	setAttr ".ambc" -type "float3" 0.41463339 0.41463339 0.41463339 ;
createNode shadingEngine -n "pasted__pasted__pasted__lambert2SG4";
	rename -uid "FB3A69E5-CE48-FC25-FFDE-78BFFC4F92CD";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "pasted__pasted__pasted__materialInfo9";
	rename -uid "B1895187-AD40-1AF9-006C-A5AE110FB100";
createNode lambert -n "pasted__pasted__pasted__bark4";
	rename -uid "5031C4BB-3F44-BF78-85E6-C2B32DDD0ABA";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 1 1 1 ;
createNode shadingEngine -n "pasted__pasted__pasted__lambert3SG4";
	rename -uid "BEBC6E6B-3340-57A2-193A-39A60339B6AC";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "pasted__pasted__pasted__materialInfo10";
	rename -uid "6AC63F32-4C4A-BD53-0C4C-F2BC62918F4D";
createNode lambert -n "pasted__pasted__pasted__leaves4";
	rename -uid "BCD9A980-3746-99BD-B540-7EAB6A74A465";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 1 0.33610001 0 ;
	setAttr ".ambc" -type "float3" 0.41463339 0.41463339 0.41463339 ;
createNode shadingEngine -n "pasted__pasted__lambert2SG";
	rename -uid "D82F5CAB-C74E-6102-B290-1F9FB79196A8";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "pasted__pasted__materialInfo1";
	rename -uid "7ABEBC12-D64B-4102-7A65-928D02B073E7";
createNode lambert -n "pasted__pasted__bark";
	rename -uid "26E557F6-4A40-E6A4-7C91-ACBF880B66B6";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 1 1 1 ;
createNode shadingEngine -n "pasted__pasted__lambert3SG";
	rename -uid "BA4E5710-9D42-2006-1BED-A99F94CF8700";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "pasted__pasted__materialInfo2";
	rename -uid "AEAB9DC5-0F41-C5F6-47E2-E4962C4C91F8";
createNode lambert -n "pasted__pasted__leaves";
	rename -uid "BE5E32D2-694B-2858-64B8-DE9A81A92CD4";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 1 0.33610001 0 ;
	setAttr ".ambc" -type "float3" 0.41463339 0.41463339 0.41463339 ;
createNode shadingEngine -n "pasted__pasted__pasted__lambert2SG2";
	rename -uid "E4C1A162-6B42-72FB-AFD1-F4BD16425F5B";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "pasted__pasted__pasted__materialInfo5";
	rename -uid "D766FA30-924C-7302-8FF5-A1A76797910E";
createNode lambert -n "pasted__pasted__pasted__bark2";
	rename -uid "1D5E4288-BC45-81C7-91F8-29B13242CEE9";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 1 1 1 ;
createNode shadingEngine -n "pasted__pasted__pasted__lambert3SG2";
	rename -uid "89D7220A-714C-7C3E-C3BB-EBBA18FD91E3";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "pasted__pasted__pasted__materialInfo6";
	rename -uid "A43B47CE-AE42-B9AD-3677-20B06A9EA263";
createNode lambert -n "pasted__pasted__pasted__leaves2";
	rename -uid "10B26936-644A-A970-C132-8B8E09CDFE89";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 1 0.33610001 0 ;
	setAttr ".ambc" -type "float3" 0.41463339 0.41463339 0.41463339 ;
createNode shadingEngine -n "pasted__pasted__pasted__lambert2SG6";
	rename -uid "108FBE28-5E4F-D017-DA3F-DE923043E243";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "pasted__pasted__pasted__materialInfo13";
	rename -uid "EF4E257E-9740-095A-9406-2AB88CFA0F03";
createNode lambert -n "pasted__pasted__pasted__bark6";
	rename -uid "03C0D2C1-C347-7234-C9F7-269588373821";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 1 1 1 ;
createNode shadingEngine -n "pasted__pasted__pasted__lambert3SG6";
	rename -uid "7CA9115A-BF4D-B1A8-6E0F-70B015D358D5";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "pasted__pasted__pasted__materialInfo14";
	rename -uid "43926106-7E4B-527B-1365-D8A70BF3CCC6";
createNode lambert -n "pasted__pasted__pasted__leaves6";
	rename -uid "727C20A5-8242-ED3F-700F-8D8F131D33DF";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 1 0.33610001 0 ;
	setAttr ".ambc" -type "float3" 0.41463339 0.41463339 0.41463339 ;
createNode shadingEngine -n "pasted__pasted__pasted__lambert2SG5";
	rename -uid "092ACB0A-D64F-390A-9E94-A39AE6EED68D";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "pasted__pasted__pasted__materialInfo11";
	rename -uid "184533BA-C643-25EC-E356-4EAEE0D14725";
createNode lambert -n "pasted__pasted__pasted__bark5";
	rename -uid "1281B4BD-454E-55F1-A996-AA9D7D59CF19";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 1 1 1 ;
createNode shadingEngine -n "pasted__pasted__pasted__lambert3SG5";
	rename -uid "B1D744E9-EF43-B349-CD46-1C83344F8F0E";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "pasted__pasted__pasted__materialInfo12";
	rename -uid "6ABD9CA1-CB42-55E4-E09C-BF9C65A32EEC";
createNode lambert -n "pasted__pasted__pasted__leaves5";
	rename -uid "3BCC95FE-EE43-BC25-84DA-2FA26BC62034";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 1 0.33610001 0 ;
	setAttr ".ambc" -type "float3" 0.41463339 0.41463339 0.41463339 ;
createNode shadingEngine -n "pasted__pasted__lambert2SG5";
	rename -uid "B50B9FCE-9B40-BC18-3580-80ADCD2AC1F1";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "pasted__pasted__materialInfo11";
	rename -uid "AA0FC2F6-F945-6522-A261-688BDB317F66";
createNode lambert -n "pasted__pasted__bark5";
	rename -uid "10F11A30-1F46-E6F2-C1A1-0EBF1A9BBCB0";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 1 1 1 ;
createNode shadingEngine -n "pasted__pasted__lambert3SG5";
	rename -uid "E3A8F981-FF45-12B6-72EF-96B3178B3A9D";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "pasted__pasted__materialInfo12";
	rename -uid "A5AA265B-204C-DEF2-99BE-6EABA7C42DA1";
createNode lambert -n "pasted__pasted__leaves5";
	rename -uid "CC4B6A2C-E542-C978-9847-2BACFA6C8599";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 1 0.33610001 0 ;
	setAttr ".ambc" -type "float3" 0.41463339 0.41463339 0.41463339 ;
createNode shadingEngine -n "pasted__pasted__lambert2SG7";
	rename -uid "4C7FB4C7-3A42-07EE-43A3-CFB68AD3BF9B";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "pasted__pasted__materialInfo15";
	rename -uid "C0835CFF-9741-FC64-A57C-D394CA8FAC4A";
createNode lambert -n "pasted__pasted__bark7";
	rename -uid "9B2C681A-B243-B1DA-AA5C-FAA2A39A1485";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 1 1 1 ;
createNode shadingEngine -n "pasted__pasted__lambert3SG7";
	rename -uid "A07587B2-CF47-0951-5C52-92AE46966EF2";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "pasted__pasted__materialInfo16";
	rename -uid "B8079283-9D48-627A-DD53-13B2CCDC22AE";
createNode lambert -n "pasted__pasted__leaves7";
	rename -uid "4240BE7D-104C-D8D8-8236-35AEFAE51494";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 1 0.33610001 0 ;
	setAttr ".ambc" -type "float3" 0.41463339 0.41463339 0.41463339 ;
createNode shadingEngine -n "pasted__pasted__lambert2SG6";
	rename -uid "FE6A9D1A-D645-7DE6-6541-A1AC0B05C8A5";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "pasted__pasted__materialInfo13";
	rename -uid "D33D3BE9-DF4E-E4ED-28A5-4C829F506A1E";
createNode lambert -n "pasted__pasted__bark6";
	rename -uid "A45B0092-094D-DB8A-D97C-2E9F87D52D9C";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 1 1 1 ;
createNode shadingEngine -n "pasted__pasted__lambert3SG6";
	rename -uid "21848CC8-5A4B-A806-1D95-E7BECF119C2F";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "pasted__pasted__materialInfo14";
	rename -uid "AFE7DBF2-F148-A6D1-73BF-7E968B35153B";
createNode lambert -n "pasted__pasted__leaves6";
	rename -uid "9E01A11D-2148-9ED5-DF86-43B7067302D6";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 1 0.33610001 0 ;
	setAttr ".ambc" -type "float3" 0.41463339 0.41463339 0.41463339 ;
createNode shadingEngine -n "pasted__lambert2SG5";
	rename -uid "AA8576A2-6043-E325-8286-7E92139D847B";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "pasted__materialInfo11";
	rename -uid "5BD97346-314E-8CC3-FC22-708B705949F7";
createNode lambert -n "pasted__bark5";
	rename -uid "8C6E6470-9848-6D25-7E6C-9F9C9BD83930";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 1 1 1 ;
createNode shadingEngine -n "pasted__lambert3SG5";
	rename -uid "CF6946D8-4D44-6663-470D-1BB9B28B4B62";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "pasted__materialInfo12";
	rename -uid "39487DCF-5846-8701-19F9-7C853AC5B48B";
createNode lambert -n "pasted__leaves5";
	rename -uid "A1206DE5-874A-CB63-2568-B18AFBA88825";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 1 0.33610001 0 ;
	setAttr ".ambc" -type "float3" 0.41463339 0.41463339 0.41463339 ;
createNode shadingEngine -n "pasted__pasted__pasted__lambert2SG8";
	rename -uid "9669281C-C642-B05E-5389-23B2692898C9";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "pasted__pasted__pasted__materialInfo17";
	rename -uid "157C0FF1-9046-49A7-8222-9DA7D4796888";
createNode lambert -n "pasted__pasted__pasted__bark8";
	rename -uid "1970D0D9-E54F-6EAD-9607-9DB44BBD8F38";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 1 1 1 ;
createNode shadingEngine -n "pasted__pasted__pasted__lambert3SG8";
	rename -uid "2E6514B6-5742-DE2B-A7D5-15BAEA983902";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "pasted__pasted__pasted__materialInfo18";
	rename -uid "018895CC-3C49-C811-3A77-1BB28AF2108A";
createNode lambert -n "pasted__pasted__pasted__leaves8";
	rename -uid "6CD18893-5241-2A01-2439-9C810EC4CC30";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 1 0.33610001 0 ;
	setAttr ".ambc" -type "float3" 0.41463339 0.41463339 0.41463339 ;
createNode shadingEngine -n "pasted__pasted__pasted__lambert2SG7";
	rename -uid "80DC7675-6242-4D08-F3FE-B7A9985ACDF3";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "pasted__pasted__pasted__materialInfo15";
	rename -uid "7220087C-8943-2E7A-5232-448489FB405F";
createNode lambert -n "pasted__pasted__pasted__bark7";
	rename -uid "7977E87D-3A40-567A-6962-24A8D646C9A6";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 1 1 1 ;
createNode shadingEngine -n "pasted__pasted__pasted__lambert3SG7";
	rename -uid "DA594C26-3144-2881-2717-FFB38079397C";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "pasted__pasted__pasted__materialInfo16";
	rename -uid "A6F9CF9E-CA47-31A9-0FAD-E3ADCA9D0458";
createNode lambert -n "pasted__pasted__pasted__leaves7";
	rename -uid "0BC8068B-3045-039E-172C-F3972CF985C8";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 1 0.33610001 0 ;
	setAttr ".ambc" -type "float3" 0.41463339 0.41463339 0.41463339 ;
createNode shadingEngine -n "pasted__pasted__lambert2SG8";
	rename -uid "DF61E6C6-C24B-1A4A-F617-C28A8CC42301";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "pasted__pasted__materialInfo17";
	rename -uid "9E4B6A6B-2B4F-A055-0BB5-D2A13CC25943";
createNode lambert -n "pasted__pasted__bark8";
	rename -uid "451E89B6-814D-C1FA-9E63-75A4F1A08230";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 1 1 1 ;
createNode shadingEngine -n "pasted__pasted__lambert3SG8";
	rename -uid "ACEDBF05-1E4E-87D0-ECC1-61BD0569FF51";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "pasted__pasted__materialInfo18";
	rename -uid "B4789F97-4046-4764-7F0C-A2905D3030F2";
createNode lambert -n "pasted__pasted__leaves8";
	rename -uid "E1FA6F63-CE40-4D85-EC65-2091E0091A4C";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 1 0.33610001 0 ;
	setAttr ".ambc" -type "float3" 0.41463339 0.41463339 0.41463339 ;
createNode shadingEngine -n "pasted__pasted__pasted__lambert2SG10";
	rename -uid "5003B685-6049-5DD2-F2EA-8D83BFD9BBB2";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "pasted__pasted__pasted__materialInfo21";
	rename -uid "565B16B5-7A46-8683-1055-C9B2416F8504";
createNode lambert -n "pasted__pasted__pasted__bark10";
	rename -uid "C70091CB-F443-6C62-B302-B1B8CF3C4B16";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 1 1 1 ;
createNode shadingEngine -n "pasted__pasted__pasted__lambert3SG10";
	rename -uid "EB3DE801-344E-E5DC-1F65-5F9F81582ECF";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "pasted__pasted__pasted__materialInfo22";
	rename -uid "B76EBBDD-BF46-14D1-91B6-11BA29292CAB";
createNode lambert -n "pasted__pasted__pasted__leaves10";
	rename -uid "739D53D1-244B-0995-F70E-1888EFA1437D";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 1 0.33610001 0 ;
	setAttr ".ambc" -type "float3" 0.41463339 0.41463339 0.41463339 ;
createNode shadingEngine -n "pasted__pasted__pasted__lambert2SG9";
	rename -uid "CA9473A5-3E46-8420-0007-E28B9D1DC23D";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "pasted__pasted__pasted__materialInfo19";
	rename -uid "57F7F786-A248-37F4-ABD1-66A82FE42EA4";
createNode lambert -n "pasted__pasted__pasted__bark9";
	rename -uid "0B64EB28-634E-CB9B-8D70-0C96764DFD55";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 1 1 1 ;
createNode shadingEngine -n "pasted__pasted__pasted__lambert3SG9";
	rename -uid "E17C0038-CC43-51F5-4C06-94A2AA8ECA58";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "pasted__pasted__pasted__materialInfo20";
	rename -uid "3679E440-4E4A-BFFE-1FC8-C38E730D1A3C";
createNode lambert -n "pasted__pasted__pasted__leaves9";
	rename -uid "C9B03749-1F4E-289A-3643-0B9A2FBABE88";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 1 0.33610001 0 ;
	setAttr ".ambc" -type "float3" 0.41463339 0.41463339 0.41463339 ;
createNode shadingEngine -n "pasted__pasted__lambert2SG9";
	rename -uid "C313D171-6948-90C3-A19E-7EA2B1A9F8BD";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "pasted__pasted__materialInfo19";
	rename -uid "B1B4A30A-744C-6B37-7AC4-A790E6733F5C";
createNode lambert -n "pasted__pasted__bark9";
	rename -uid "C89063C7-FA45-1AA3-9860-CCBBE34094BE";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 1 1 1 ;
createNode shadingEngine -n "pasted__pasted__lambert3SG9";
	rename -uid "599ABF3D-2348-5728-0521-6DB05321E49D";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "pasted__pasted__materialInfo20";
	rename -uid "5F9439DD-D54E-85A3-7F73-C29C935DD0D9";
createNode lambert -n "pasted__pasted__leaves9";
	rename -uid "E2DA851E-BB44-23AA-008B-27A9AE63A7DE";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 1 0.33610001 0 ;
	setAttr ".ambc" -type "float3" 0.41463339 0.41463339 0.41463339 ;
createNode shadingEngine -n "pasted__pasted__lambert2SG11";
	rename -uid "D1DAC3D0-F940-28B7-5BBF-DF8DFFB63BDD";
	setAttr ".ihi" 0;
	setAttr -s 4 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 4 ".gn";
createNode materialInfo -n "pasted__pasted__materialInfo23";
	rename -uid "D4C1200F-4F4B-DD63-3D12-B999AC243B4E";
createNode lambert -n "pasted__pasted__bark11";
	rename -uid "BEE57985-C04C-CB63-0A0D-FD88074BB2BB";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 1 1 1 ;
createNode shadingEngine -n "pasted__pasted__lambert3SG11";
	rename -uid "8A7E7062-3140-B8D5-14C4-60B1A8A977B5";
	setAttr ".ihi" 0;
	setAttr -s 4 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 4 ".gn";
createNode materialInfo -n "pasted__pasted__materialInfo24";
	rename -uid "AF9CF261-CE49-EB30-D95E-7C952F99F7B2";
createNode lambert -n "pasted__pasted__leaves11";
	rename -uid "330BB5A6-454E-823C-2CDD-ED99B75FC06C";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 1 0.33610001 0 ;
	setAttr ".ambc" -type "float3" 0.41463339 0.41463339 0.41463339 ;
createNode shadingEngine -n "pasted__pasted__lambert2SG10";
	rename -uid "FEDAB044-E946-82FA-0A14-FAAC2ABB0EE5";
	setAttr ".ihi" 0;
	setAttr -s 3 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 3 ".gn";
createNode materialInfo -n "pasted__pasted__materialInfo21";
	rename -uid "4731A91E-714E-5020-E736-358CBAEF119A";
createNode lambert -n "pasted__pasted__bark10";
	rename -uid "026322B9-D64D-5663-BE89-978A0859BCCB";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 1 1 1 ;
createNode shadingEngine -n "pasted__pasted__lambert3SG10";
	rename -uid "01F3E02F-CC46-CD02-E3D5-9382BBBCCCF0";
	setAttr ".ihi" 0;
	setAttr -s 3 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 3 ".gn";
createNode materialInfo -n "pasted__pasted__materialInfo22";
	rename -uid "D8E313FC-5545-A979-E81C-61BD84AF042E";
createNode lambert -n "pasted__pasted__leaves10";
	rename -uid "8B53C5CC-334E-BC86-A047-C7867016B5A6";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 1 0.33610001 0 ;
	setAttr ".ambc" -type "float3" 0.41463339 0.41463339 0.41463339 ;
createNode shadingEngine -n "pasted__lambert2SG6";
	rename -uid "62AD6322-8E49-F6CE-D095-35B70D7E830E";
	setAttr ".ihi" 0;
	setAttr -s 4 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 4 ".gn";
createNode materialInfo -n "pasted__materialInfo13";
	rename -uid "F2C3890A-2946-966F-18BB-1281FCBEE2AD";
createNode lambert -n "pasted__bark6";
	rename -uid "F3EE2CBE-A644-A618-33F3-7495AE6CDB72";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 1 1 1 ;
createNode shadingEngine -n "pasted__lambert3SG6";
	rename -uid "6916D4B5-3B4D-08EC-FBF3-C4B73CB4680A";
	setAttr ".ihi" 0;
	setAttr -s 4 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 4 ".gn";
createNode materialInfo -n "pasted__materialInfo14";
	rename -uid "27BA9962-8347-628E-D43E-BEBA49EF194C";
createNode lambert -n "pasted__leaves6";
	rename -uid "451064EC-3B45-18A4-8DDD-5192295D23B4";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 1 0.33610001 0 ;
	setAttr ".ambc" -type "float3" 0.41463339 0.41463339 0.41463339 ;
createNode shadingEngine -n "pasted__pasted__pasted__lambert2SG12";
	rename -uid "537AF1E5-434A-3D2B-73A9-B28368F24A69";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "pasted__pasted__pasted__materialInfo25";
	rename -uid "056C5E9B-E74A-44D3-9765-C2A483CF042B";
createNode lambert -n "pasted__pasted__pasted__bark12";
	rename -uid "E99DA1DB-AC4E-8A79-EB71-71B5388B7C31";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 1 1 1 ;
createNode shadingEngine -n "pasted__pasted__pasted__lambert3SG12";
	rename -uid "7FBACE04-0F46-0AFD-8D08-9B88CF17D981";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "pasted__pasted__pasted__materialInfo26";
	rename -uid "CFF0A1F6-2542-DF26-2C22-C1BB97FD9F7E";
createNode lambert -n "pasted__pasted__pasted__leaves12";
	rename -uid "8B881581-DE4F-6AF2-3667-3CB24B5C77D6";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 1 0.33610001 0 ;
	setAttr ".ambc" -type "float3" 0.41463339 0.41463339 0.41463339 ;
createNode shadingEngine -n "pasted__pasted__pasted__lambert2SG11";
	rename -uid "2DE22CEF-2342-3FAA-CC43-73AF02A10899";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "pasted__pasted__pasted__materialInfo23";
	rename -uid "F94914DE-F845-2A57-03A9-49BB38950F55";
createNode lambert -n "pasted__pasted__pasted__bark11";
	rename -uid "05DF0C1E-8348-6515-E43D-F192C1219E8D";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 1 1 1 ;
createNode shadingEngine -n "pasted__pasted__pasted__lambert3SG11";
	rename -uid "A2A1E269-5F4A-C226-4ED7-DC9043CE75E8";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "pasted__pasted__pasted__materialInfo24";
	rename -uid "E60753F7-754F-7836-5CA9-A38BAE15535D";
createNode lambert -n "pasted__pasted__pasted__leaves11";
	rename -uid "D6AA4D6B-BB4F-8032-9438-2683AE30F833";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 1 0.33610001 0 ;
	setAttr ".ambc" -type "float3" 0.41463339 0.41463339 0.41463339 ;
createNode shadingEngine -n "pasted__pasted__lambert2SG12";
	rename -uid "F95A1878-724C-2F17-D5C1-EEB3CBCF85D9";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "pasted__pasted__materialInfo25";
	rename -uid "D79B175C-154C-EF4E-2541-3B8680E47D9E";
createNode lambert -n "pasted__pasted__bark12";
	rename -uid "AEF239A5-4F4C-02CE-267A-E2BDF70E72C5";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 1 1 1 ;
createNode shadingEngine -n "pasted__pasted__lambert3SG12";
	rename -uid "205F2C2E-C444-9CBF-190C-3796E2A762B9";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "pasted__pasted__materialInfo26";
	rename -uid "2AE6D22C-C74D-A27B-1D33-978AE1F54D9D";
createNode lambert -n "pasted__pasted__leaves12";
	rename -uid "79AB0410-954E-5341-D508-A497143EA4B2";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 1 0.33610001 0 ;
	setAttr ".ambc" -type "float3" 0.41463339 0.41463339 0.41463339 ;
createNode objectSet -n "pasted__tweakSet5";
	rename -uid "5262A409-AD47-7DBB-1073-27B27C0BEE71";
	setAttr ".ihi" 0;
	setAttr -s 5 ".dsm";
	setAttr ".vo" yes;
	setAttr -s 5 ".gn";
createNode groupId -n "pasted__groupId80";
	rename -uid "A9AEC727-8C4F-B997-2FEF-8FBAF17F2AB3";
	setAttr ".ihi" 0;
createNode groupParts -n "pasted__groupParts80";
	rename -uid "5EFF9DDE-6247-9F3E-E461-6A8E2ED994D8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[0:87]";
createNode groupParts -n "pasted__groupParts81";
	rename -uid "66279F1D-214E-4AEF-7768-B7AE3A68C890";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[66:95]";
createNode groupParts -n "pasted__groupParts79";
	rename -uid "8024A5ED-FF48-36CF-4363-DCBB0DB7B5D0";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:65]";
createNode polyUnite -n "pasted__polyUnite6";
	rename -uid "EC0C6220-6D4E-1D21-56F5-B48347B4A3CC";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
createNode groupParts -n "pasted__groupParts76";
	rename -uid "54839F08-694A-2145-7C00-F5BDF6183CDE";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[0:61]";
createNode groupId -n "pasted__groupId76";
	rename -uid "3D33FE47-1B49-0A24-565D-FBA19AB71A45";
	setAttr ".ihi" 0;
createNode groupId -n "pasted__groupId75";
	rename -uid "D727174C-684E-9346-0B56-AB978973E7A1";
	setAttr ".ihi" 0;
createNode groupParts -n "pasted__groupParts75";
	rename -uid "83711819-8F41-3241-988C-3AAFE0425E9C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:65]";
createNode groupId -n "pasted__groupId78";
	rename -uid "F9DBB328-CD4C-C200-9ED6-B0BFDD2FEA2E";
	setAttr ".ihi" 0;
createNode groupParts -n "pasted__groupParts78";
	rename -uid "E71F8E43-B849-9118-72A0-92AAB0B7DD43";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[0:25]";
createNode groupParts -n "pasted__groupParts77";
	rename -uid "3BD7BFB3-DF48-D563-292D-2284AA56EEFA";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:29]";
createNode polySeparate -n "pasted__polySeparate2";
	rename -uid "7ACFEAFE-0E43-C5D6-759F-5BB5D0562349";
	setAttr ".ic" 6;
	setAttr -s 6 ".out";
createNode polyUnite -n "pasted__polyUnite5";
	rename -uid "9762A0D5-974A-1DEB-0D88-E3BD655D6A37";
	setAttr -s 3 ".ip";
	setAttr -s 3 ".im";
createNode groupId -n "pasted__groupId57";
	rename -uid "CE3D8F3D-5049-8EC4-15BB-BF8C21903415";
	setAttr ".ihi" 0;
createNode groupParts -n "pasted__groupParts57";
	rename -uid "7C0F132C-EC4C-1F9F-1803-95B146547090";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode tweak -n "pasted__tweak5";
	rename -uid "767F8260-FB4C-8007-BC47-A38ECE8A411D";
createNode groupId -n "pasted__groupId77";
	rename -uid "2F4D99ED-D04A-6728-0858-7AB8B3883FF8";
	setAttr ".ihi" 0;
createNode polySplitRing -n "pasted__polySplitRing40";
	rename -uid "D2D96697-4E44-5463-E32C-3291524EB10E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[156:157]" "e[159]" "e[161]" "e[163]" "e[165]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.64538180828094482;
	setAttr ".re" 156;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "pasted__polySplitRing39";
	rename -uid "0D7E4F79-DB4F-32DD-15C4-BD85ECB83FB8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[144:145]" "e[147]" "e[149]" "e[151]" "e[153]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.38973343372344971;
	setAttr ".re" 144;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "pasted__polySplitRing38";
	rename -uid "2C662B61-B545-F6EE-6D82-7FB09ACAF008";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[132:133]" "e[135]" "e[137]" "e[139]" "e[141]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.31439617276191711;
	setAttr ".re" 132;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "pasted__polySplitRing37";
	rename -uid "3AF84C21-6D41-092A-5CB3-6288D3FD3D52";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[120:121]" "e[123]" "e[125]" "e[127]" "e[129]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.23594433069229126;
	setAttr ".re" 120;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "pasted__polySplitRing36";
	rename -uid "A49DD0FC-3C45-CE04-7612-68B2B20FF9C6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[108:109]" "e[111]" "e[113]" "e[115]" "e[117]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.18606995046138763;
	setAttr ".re" 108;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "pasted__polySplitRing35";
	rename -uid "5A6CE081-D944-7BD2-C293-7DB54A9AB795";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[96:97]" "e[99]" "e[101]" "e[103]" "e[105]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.16217997670173645;
	setAttr ".re" 96;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "pasted__polySplitRing34";
	rename -uid "81B108EE-0449-952B-F884-679A5CECE294";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[84:85]" "e[87]" "e[89]" "e[91]" "e[93]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.16052569448947906;
	setAttr ".re" 84;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "pasted__polySplitRing33";
	rename -uid "8D8818CB-9342-6026-A7F8-03850FD9312B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[12:17]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.11920327693223953;
	setAttr ".re" 15;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode groupParts -n "pasted__groupParts56";
	rename -uid "53388AA5-8743-351D-D731-F78AC6187334";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[18:47]";
createNode groupId -n "pasted__groupId56";
	rename -uid "9D48782A-7246-595A-8CAD-C4A5AA06E118";
	setAttr ".ihi" 0;
createNode groupParts -n "pasted__groupParts55";
	rename -uid "67D0F257-1841-E3AA-B030-B190C065C0A9";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:17]";
createNode groupId -n "pasted__groupId55";
	rename -uid "D711C985-8E41-AA12-253E-8DA08CE5F8E5";
	setAttr ".ihi" 0;
createNode groupId -n "pasted__groupId81";
	rename -uid "A5C54B9B-9042-83B1-736D-ABB655E11FE0";
	setAttr ".ihi" 0;
createNode groupId -n "pasted__groupId79";
	rename -uid "E7DE1576-2142-32F4-58A2-FF917C71C437";
	setAttr ".ihi" 0;
createNode objectSet -n "pasted__pasted__tweakSet9";
	rename -uid "24F647D9-1944-CC6E-BFC8-64A4D1D03129";
	setAttr ".ihi" 0;
	setAttr -s 4 ".dsm";
	setAttr ".vo" yes;
	setAttr -s 4 ".gn";
createNode groupId -n "pasted__groupId74";
	rename -uid "ECB13BD6-3548-A017-AAB7-92BE372EBF7E";
	setAttr ".ihi" 0;
createNode groupParts -n "pasted__groupParts74";
	rename -uid "0A88FADE-BD46-A77F-1AA6-C7A07DD18BA9";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[0:25]";
createNode groupParts -n "pasted__groupParts73";
	rename -uid "23C50900-5445-CAE5-BD0B-C4A3B2A9AE91";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:29]";
createNode groupId -n "pasted__groupId73";
	rename -uid "8F485BE9-AB4C-FC00-F48A-19954CD036FF";
	setAttr ".ihi" 0;
createNode groupId -n "pasted__groupId72";
	rename -uid "35DA9FBF-5F47-F666-63BC-5CAA074DB51F";
	setAttr ".ihi" 0;
createNode groupParts -n "pasted__groupParts72";
	rename -uid "DF485374-9442-EE9A-42B3-28A203768C15";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[0:61]";
createNode groupParts -n "pasted__groupParts71";
	rename -uid "1422F7EF-B440-B9D0-F454-E09C27F7DE8C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:65]";
createNode groupId -n "pasted__groupId71";
	rename -uid "A42E4A2A-6F42-48A6-BD59-759F51FD4243";
	setAttr ".ihi" 0;
createNode polySplitRing -n "pasted__pasted__polySplitRing55";
	rename -uid "80CBDDD6-D843-151D-9A60-CDAB6852E190";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[144:145]" "e[147]" "e[149]" "e[151]" "e[153]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.38973343372344971;
	setAttr ".re" 144;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "pasted__pasted__polySplitRing54";
	rename -uid "095E0A2F-1848-F02D-8701-4483F127D736";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[132:133]" "e[135]" "e[137]" "e[139]" "e[141]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.31439617276191711;
	setAttr ".re" 132;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "pasted__pasted__polySplitRing53";
	rename -uid "F3CA475E-B64E-B132-49D1-7B8D9650706B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[120:121]" "e[123]" "e[125]" "e[127]" "e[129]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.23594433069229126;
	setAttr ".re" 120;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "pasted__pasted__polySplitRing52";
	rename -uid "7646EABE-5A47-AED3-E9C7-018DADAA8D2D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[108:109]" "e[111]" "e[113]" "e[115]" "e[117]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.18606995046138763;
	setAttr ".re" 108;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "pasted__pasted__polySplitRing51";
	rename -uid "B4958FFD-4A43-818E-C42E-608A161D3802";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[96:97]" "e[99]" "e[101]" "e[103]" "e[105]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.16217997670173645;
	setAttr ".re" 96;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "pasted__pasted__polySplitRing50";
	rename -uid "772732A3-AE4B-A805-D2FB-6AA30AB83A50";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[84:85]" "e[87]" "e[89]" "e[91]" "e[93]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.16052569448947906;
	setAttr ".re" 84;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "pasted__pasted__polySplitRing49";
	rename -uid "7B031727-E549-92B5-3D57-32A99D568E62";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[12:17]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.11920327693223953;
	setAttr ".re" 15;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode groupId -n "pasted__pasted__groupId136";
	rename -uid "DA1DC71D-4D43-0C58-534E-71824321FBC5";
	setAttr ".ihi" 0;
createNode groupParts -n "pasted__pasted__groupParts136";
	rename -uid "67E8D5B1-DC43-37E2-54E2-0DB03BBDF1E1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[18:47]";
createNode groupParts -n "pasted__pasted__groupParts135";
	rename -uid "0BCF44CC-A447-6BB5-5CAB-6EB303EA865D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:17]";
createNode groupId -n "pasted__pasted__groupId135";
	rename -uid "F7D13E2E-D14C-2563-B733-C9A3FAC55A14";
	setAttr ".ihi" 0;
createNode groupParts -n "pasted__pasted__groupParts137";
	rename -uid "2AB7695B-4A4B-2FD4-1F4C-1B8F6CC59613";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode groupId -n "pasted__pasted__groupId137";
	rename -uid "675CEFAB-2643-AEA8-EC88-E1B35A38D3C8";
	setAttr ".ihi" 0;
createNode tweak -n "pasted__pasted__tweak9";
	rename -uid "08CF7B08-3D4E-73FB-F0F0-DFB4825F121E";
createNode polySplitRing -n "pasted__pasted__polySplitRing56";
	rename -uid "2DA72152-9643-CFC7-1C86-36AE03C71811";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[156:157]" "e[159]" "e[161]" "e[163]" "e[165]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.64538180828094482;
	setAttr ".re" 156;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode objectSet -n "pasted__pasted__tweakSet10";
	rename -uid "5EF8B6A2-5B4A-423F-42D2-7CB5E7006117";
	setAttr ".ihi" 0;
	setAttr -s 5 ".dsm";
	setAttr ".vo" yes;
	setAttr -s 5 ".gn";
createNode groupParts -n "pasted__groupParts84";
	rename -uid "FF4B98C2-4346-CB74-7F8B-6183E2833A13";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[66:95]";
createNode groupId -n "pasted__groupId84";
	rename -uid "B934236F-F449-1959-75FE-D99E2C774366";
	setAttr ".ihi" 0;
createNode groupParts -n "pasted__groupParts83";
	rename -uid "8C78941D-9540-0CB9-6A03-CE9E4D633FC0";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[0:87]";
createNode groupId -n "pasted__groupId83";
	rename -uid "64605BEB-884B-76DF-21AF-DDA6B4A1B378";
	setAttr ".ihi" 0;
createNode groupParts -n "pasted__groupParts82";
	rename -uid "94EC0910-1845-A9CD-9240-3CBF1810C33B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:65]";
createNode groupId -n "pasted__groupId82";
	rename -uid "11301396-9645-BB7E-4EC0-0BBB5E7DF103";
	setAttr ".ihi" 0;
createNode polyUnite -n "pasted__polyUnite7";
	rename -uid "B1B240FE-1F47-FE75-F1C8-4D834C00D922";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
createNode groupId -n "pasted__groupId70";
	rename -uid "3B3B7CD8-E842-3DD6-5EE5-3F8A2463AA7D";
	setAttr ".ihi" 0;
createNode groupParts -n "pasted__groupParts70";
	rename -uid "2B3213D5-7843-6C75-D60A-B0A558A5510B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[0:25]";
createNode groupId -n "pasted__groupId69";
	rename -uid "EAE676CD-0846-AB7A-9DEC-6DA0B9F17B4B";
	setAttr ".ihi" 0;
createNode groupParts -n "pasted__groupParts69";
	rename -uid "8400A80B-8546-DAA3-F27B-958F13CB8593";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:29]";
createNode groupId -n "pasted__groupId68";
	rename -uid "340CFEBA-1045-B905-3EA1-A08FC357D79F";
	setAttr ".ihi" 0;
createNode groupParts -n "pasted__groupParts68";
	rename -uid "3A4CAB70-E342-EA62-DE6F-33BFB140F3B6";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[0:61]";
createNode groupParts -n "pasted__groupParts67";
	rename -uid "490E88F6-AF46-A068-092A-6586D01BB1A3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:65]";
createNode groupId -n "pasted__groupId67";
	rename -uid "F9DA430D-324B-1829-B6A2-169D71AD7C03";
	setAttr ".ihi" 0;
createNode groupId -n "pasted__groupId66";
	rename -uid "73F1B30A-CA48-71C0-4347-4982DE18C0E0";
	setAttr ".ihi" 0;
createNode groupParts -n "pasted__groupParts66";
	rename -uid "EFE0C8BF-4649-07BC-2860-6B8B7A1387CE";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[176:263]";
createNode groupId -n "pasted__groupId63";
	rename -uid "6A5600DF-0146-F617-00F7-47920BDC2EC5";
	setAttr ".ihi" 0;
createNode groupParts -n "pasted__groupParts63";
	rename -uid "CAB9B108-9A44-CF33-688B-B69E06A1A3BE";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[88:175]";
createNode groupId -n "pasted__groupId60";
	rename -uid "BA975197-0547-FE43-DCB1-AC91F295172C";
	setAttr ".ihi" 0;
createNode groupParts -n "pasted__groupParts60";
	rename -uid "91BA0D6E-FE4C-370F-2BD6-2587D5DE5433";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[0:87]";
createNode groupId -n "pasted__groupId65";
	rename -uid "CC6BD236-7E4A-6390-6966-3B9A43B1775F";
	setAttr ".ihi" 0;
createNode groupParts -n "pasted__groupParts65";
	rename -uid "2FBC0AB6-9F49-4266-F11A-D58A85F6A439";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[210:239]";
createNode groupId -n "pasted__groupId64";
	rename -uid "79012827-AE4C-960D-0DC1-24B3AEBFD590";
	setAttr ".ihi" 0;
createNode groupParts -n "pasted__groupParts64";
	rename -uid "5B2F4943-2F42-F7AF-5B83-1D8304ECE98D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[192:209]" "f[240:287]";
createNode groupId -n "pasted__groupId62";
	rename -uid "7D3DFBC6-4747-1429-C261-F68437B5413D";
	setAttr ".ihi" 0;
createNode groupParts -n "pasted__groupParts62";
	rename -uid "9B69B5B6-0349-CD86-0DE7-37AF5E692A28";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[114:143]";
createNode groupId -n "pasted__groupId61";
	rename -uid "0A0DA501-5148-9EA9-22A2-F2A5AE245E93";
	setAttr ".ihi" 0;
createNode groupParts -n "pasted__groupParts61";
	rename -uid "94AA894C-DA4C-1BF6-4F20-EC9BEB72D55B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[96:113]" "f[144:191]";
createNode groupId -n "pasted__groupId59";
	rename -uid "283C9D16-DD4C-C15B-364F-058F507D88F5";
	setAttr ".ihi" 0;
createNode groupParts -n "pasted__groupParts59";
	rename -uid "8A3BEFBD-A247-DCD7-D00F-ABBAFF2953F7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[18:47]";
createNode groupId -n "pasted__groupId58";
	rename -uid "ECC826A9-1549-4B81-5477-0ABBA1142C57";
	setAttr ".ihi" 0;
createNode groupParts -n "pasted__groupParts58";
	rename -uid "CD369188-A24F-2331-7D80-D3B5B217583D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[0:17]" "f[48:95]";
createNode groupParts -n "pasted__pasted__groupParts140";
	rename -uid "C5051118-BD45-4084-4E41-B4A1901C73EA";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode tweak -n "pasted__pasted__tweak10";
	rename -uid "74700D37-A340-0438-982F-C48CFD78C258";
createNode groupId -n "pasted__pasted__groupId140";
	rename -uid "93910DC9-674F-5A6E-96EB-4882EBCE3FF7";
	setAttr ".ihi" 0;
createNode polySplitRing -n "pasted__pasted__polySplitRing63";
	rename -uid "C7B4720E-7342-0D11-C842-87B49599DA5D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[144:145]" "e[147]" "e[149]" "e[151]" "e[153]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.38973343372344971;
	setAttr ".re" 144;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "pasted__pasted__polySplitRing62";
	rename -uid "81B6BE25-DB46-6168-846B-18B515A23C3C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[132:133]" "e[135]" "e[137]" "e[139]" "e[141]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.31439617276191711;
	setAttr ".re" 132;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "pasted__pasted__polySplitRing61";
	rename -uid "E461C078-D04F-B3E9-9981-1795E30A4C0A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[120:121]" "e[123]" "e[125]" "e[127]" "e[129]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.23594433069229126;
	setAttr ".re" 120;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "pasted__pasted__polySplitRing60";
	rename -uid "0566F0DD-F84E-EC6B-84A5-E8B5F9B1BA4E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[108:109]" "e[111]" "e[113]" "e[115]" "e[117]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.18606995046138763;
	setAttr ".re" 108;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "pasted__pasted__polySplitRing59";
	rename -uid "ED88620F-9348-D7FB-0D88-8C998F135B8B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[96:97]" "e[99]" "e[101]" "e[103]" "e[105]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.16217997670173645;
	setAttr ".re" 96;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "pasted__pasted__polySplitRing58";
	rename -uid "452E65D0-0A44-E7E5-A1A1-11BD9A8EC185";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[84:85]" "e[87]" "e[89]" "e[91]" "e[93]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.16052569448947906;
	setAttr ".re" 84;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "pasted__pasted__polySplitRing57";
	rename -uid "0F7366F6-0242-C5C4-0FAC-47AF233CC07D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[12:17]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.11920327693223953;
	setAttr ".re" 15;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode groupId -n "pasted__pasted__groupId139";
	rename -uid "B9174063-B34B-1380-F003-0CB243F32898";
	setAttr ".ihi" 0;
createNode groupParts -n "pasted__pasted__groupParts139";
	rename -uid "6491EF8B-704D-A298-B692-77B0EBB61045";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[18:47]";
createNode groupParts -n "pasted__pasted__groupParts138";
	rename -uid "721F884B-9045-B258-512F-158B1B8687EE";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:17]";
createNode groupId -n "pasted__pasted__groupId138";
	rename -uid "AFF421CA-054A-C336-A80F-CAA628DB60D7";
	setAttr ".ihi" 0;
createNode polySplitRing -n "pasted__pasted__polySplitRing64";
	rename -uid "EED21FE7-5C4F-62A7-FB12-978CFFC33FE9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[156:157]" "e[159]" "e[161]" "e[163]" "e[165]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.64538180828094482;
	setAttr ".re" 156;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode skinCluster -n "skinCluster1";
	rename -uid "755370EB-4F4C-0FD9-194E-C48B56BE974B";
	setAttr -s 1320 ".wl";
	setAttr -s 8 ".wl[0].w[0:7]"  0.82974176320967308 0.07543300605451482 
		0.03066794460485495 0.019508282746247333 0.014255812457026666 0.011801629302274274 
		0.010424479144287506 0.0081670824811213953;
	setAttr -s 8 ".wl[1].w[0:7]"  0.82974176320967308 0.07543300605451482 
		0.03066794460485495 0.019508282746247333 0.014255812457026666 0.011801629302274274 
		0.010424479144287506 0.0081670824811213953;
	setAttr -s 8 ".wl[2].w[0:7]"  0.82983419512759993 0.075338071906001614 
		0.030664425299647326 0.019510471588117952 0.014256712672889063 0.011802556700832748 
		0.010425375339258847 0.0081681913656527164;
	setAttr -s 8 ".wl[3].w[0:7]"  0.82992651749141011 0.075243408845124635 
		0.030660855976800974 0.019512626554075891 0.01425758807597948 0.01180346355158637 
		0.010426253386648911 0.0081692861183735657;
	setAttr -s 8 ".wl[4].w[0:7]"  0.82992651749141011 0.075243408845124635 
		0.030660855976800974 0.019512626554075891 0.01425758807597948 0.01180346355158637 
		0.010426253386648911 0.0081692861183735657;
	setAttr -s 8 ".wl[5].w[0:7]"  0.82983419514349599 0.075338071889689634 
		0.03066442529903721 0.019510471588491486 0.014256712673041697 0.011802556700990448 
		0.010425375339411395 0.008168191365842228;
	setAttr -s 8 ".wl[6].w[0:7]"  0.0069364751958718137 0.0095578939231570278 
		0.01502197076989812 0.035679246403580979 0.50726605998512786 0.37245904164098381 
		0.040397356027409806 0.012681956053970636;
	setAttr -s 8 ".wl[7].w[0:7]"  0.0069364751958718128 0.0095578939231570261 
		0.015021970769898118 0.035679246403580979 0.50726605998512786 0.37245904164098376 
		0.040397356027409799 0.012681956053970635;
	setAttr -s 8 ".wl[8].w[0:7]"  0.0080534706318230748 0.011096539477662223 
		0.017441834880827838 0.04137381340864859 0.47809699390286609 0.38238089380436036 
		0.046828094031674268 0.014728359862137538;
	setAttr -s 8 ".wl[9].w[0:7]"  0.0089608991130673762 0.012346310393478435 
		0.019408040713529199 0.045979168918629534 0.45938632114819594 0.38550474843910432 
		0.052021948934338383 0.01639256233965684;
	setAttr -s 8 ".wl[10].w[0:7]"  0.0089608991130673762 0.012346310393478435 
		0.019408040713529199 0.045979168918629534 0.45938632114819589 0.38550474843910432 
		0.052021948934338383 0.01639256233965684;
	setAttr -s 8 ".wl[11].w[0:7]"  0.0080534708027207164 0.011096539713051903 
		0.017441835251095286 0.041373814277868709 0.47809699002299166 0.38238089474427889 
		0.046828095012590991 0.014728360175401944;
	setAttr -s 8 ".wl[12].w[0:7]"  0.95022710237262498 0.022079893370765095 
		0.0089580769796538569 0.0056974769144980736 0.0041627648435694628 0.0034460352560203456 
		0.0030438713534483592 0.0023847789094197003;
	setAttr -s 8 ".wl[13].w[0:7]"  0.0025704753481603929 0.0035421836249244416 
		0.0055698167262501234 0.013251434537747487 0.75897976751549057 0.19637023996185249 
		0.015013640182364368 0.0047024421032100285;
	setAttr -s 8 ".wl[14].w[0:7]"  0.65167140556439396 0.24575073283765217 
		0.038095128733000874 0.020899705232600794 0.01433669261867024 0.011539217857504615 
		0.010036342529195118 0.0076707746269821658;
	setAttr -s 8 ".wl[15].w[0:7]"  0.67431948018872023 0.23110630457377901 
		0.035132616861868207 0.019265338427444722 0.013216437848168248 0.0106373051151062 
		0.0092517981618371083 0.0070707188230763199;
	setAttr -s 8 ".wl[16].w[0:7]"  0.70346818342560702 0.21167717264051836 
		0.031530831127003646 0.017282111186289872 0.011856691942402237 0.0095426837693036171 
		0.0082996637054091552 0.0063426622034661101;
	setAttr -s 8 ".wl[17].w[0:7]"  0.70346818342560702 0.21167717264051836 
		0.031530831127003646 0.017282111186289872 0.011856691942402237 0.0095426837693036171 
		0.0082996637054091552 0.0063426622034661101;
	setAttr -s 8 ".wl[18].w[0:7]"  0.67431947581881213 0.23110630744143004 
		0.035132617418231496 0.019265338734094549 0.013216438058384981 0.010637305284343011 
		0.0092517983090476038 0.0070707189356562141;
	setAttr -s 8 ".wl[19].w[0:7]"  0.65167140556439396 0.24575073283765217 
		0.038095128733000874 0.020899705232600794 0.01433669261867024 0.011539217857504615 
		0.010036342529195118 0.0076707746269821658;
	setAttr -s 8 ".wl[20].w[0:7]"  0.11151050665650872 0.70700381668125833 
		0.089904957085876536 0.033104091730579405 0.020160790798633272 0.015486110686694423 
		0.013146678932217354 0.0096830474282319483;
	setAttr -s 8 ".wl[21].w[0:7]"  0.10057215476520548 0.73609352283776508 
		0.080995757828482257 0.029762225980109448 0.018127428883338636 0.013923633765754289 
		0.011820038399958002 0.0087052375393866822;
	setAttr -s 8 ".wl[22].w[0:7]"  0.086144806991712883 0.77425198122915584 
		0.069298715520565768 0.025411465333951215 0.015479090215617591 0.011888947033679221 
		0.010092581958318301 0.007432411716999222;
	setAttr -s 8 ".wl[23].w[0:7]"  0.086144806991712883 0.77425198122915584 
		0.069298715520565768 0.025411465333951215 0.015479090215617591 0.011888947033679221 
		0.010092581958318301 0.007432411716999222;
	setAttr -s 8 ".wl[24].w[0:7]"  0.10057215689094742 0.73609351719952043 
		0.080995759556039423 0.029762226625481551 0.018127429276096074 0.013923634067531917 
		0.011820038656177456 0.0087052377282056982;
	setAttr -s 8 ".wl[25].w[0:7]"  0.11151050665650872 0.70700381668125833 
		0.089904957085876536 0.033104091730579405 0.020160790798633272 0.015486110686694423 
		0.013146678932217354 0.0096830474282319483;
	setAttr -s 8 ".wl[26].w[0:7]"  0.034422396355868516 0.46797269911506628 
		0.41810332658097882 0.033264114908684826 0.01684887621627023 0.012199862327409348 
		0.010067761678918688 0.0071209628168033261;
	setAttr -s 8 ".wl[27].w[0:7]"  0.030639867457913476 0.4820529949449352 
		0.41658668880236677 0.029588485382759672 0.014989574532597638 0.01085273580090851 
		0.0089558178665962232 0.0063338352119223671;
	setAttr -s 8 ".wl[28].w[0:7]"  0.026032505324496424 0.50420769186011849 
		0.40971199395527003 0.025121894446508027 0.012728891470452246 0.0092152352292196871 
		0.0076043214923705617 0.0053774662215644482;
	setAttr -s 8 ".wl[29].w[0:7]"  0.026032505324496424 0.50420769186011849 
		0.40971199395527003 0.025121894446508027 0.012728891470452246 0.0092152352292196871 
		0.0076043214923705617 0.0053774662215644482;
	setAttr -s 8 ".wl[30].w[0:7]"  0.030639868167548632 0.48205299202133833 
		0.41658668937065313 0.029588486071552005 0.014989574881115646 0.010852736053388655 
		0.0089558180749885995 0.0063338353594151187;
	setAttr -s 8 ".wl[31].w[0:7]"  0.034422396355868516 0.46797269911506628 
		0.41810332658097882 0.033264114908684819 0.01684887621627023 0.012199862327409348 
		0.010067761678918688 0.0071209628168033261;
	setAttr -s 8 ".wl[32].w[0:7]"  0.031421619246193043 0.098237591607883187 
		0.69968794195728223 0.091420339756551644 0.031165141074070177 0.020645674230740173 
		0.016397026045650676 0.011024666081628914;
	setAttr -s 8 ".wl[33].w[0:7]"  0.029612422105259915 0.092825880971226418 
		0.71677105412430853 0.08613069905834439 0.029370568234781711 0.019453619977079076 
		0.01544954480141464 0.010386210727585422;
	setAttr -s 8 ".wl[34].w[0:7]"  0.027521665984409679 0.086501442716757693 
		0.73657249647390566 0.080025512641866803 0.027296754698729043 0.018077032533237482 
		0.014355609463291421 0.0096494854878022753;
	setAttr -s 8 ".wl[35].w[0:7]"  0.027521665984409683 0.086501442716757707 
		0.73657249647390566 0.080025512641866817 0.02729675469872905 0.018077032533237485 
		0.014355609463291423 0.0096494854878022788;
	setAttr -s 8 ".wl[36].w[0:7]"  0.029612422438318232 0.092825881972979002 
		0.71677105097479166 0.086130700031523011 0.0293705685651445 0.01945362019644949 0.01544954497575983 
		0.010386210845034291;
	setAttr -s 8 ".wl[37].w[0:7]"  0.031421622206610746 0.098237600629892494 
		0.69968791407236397 0.091420348184909128 0.031165144010460815 0.020645676179070656 
		0.016397027593744735 0.011024667122947494;
	setAttr -s 8 ".wl[38].w[0:7]"  0.013818479355511653 0.027892631534160165 
		0.44111378896024744 0.45341966292644914 0.028403088856983665 0.01594892084759084 
		0.011930902177631224 0.0074725253414259308;
	setAttr -s 8 ".wl[39].w[0:7]"  0.013803422517247197 0.027876318653265824 
		0.44056040662606671 0.45406022385910894 0.028387179806990574 0.015932411743040675 
		0.011917403868405382 0.0074626329258746359;
	setAttr -s 8 ".wl[40].w[0:7]"  0.013787489573373619 0.027858235594657225 
		0.43997998137848682 0.45473451319595726 0.028369469215069738 0.015914890175875322 
		0.011903150008409897 0.0074522708581701552;
	setAttr -s 8 ".wl[41].w[0:7]"  0.013787489573373619 0.027858235594657225 
		0.43997998137848682 0.45473451319595726 0.028369469215069731 0.015914890175875322 
		0.011903150008409897 0.0074522708581701552;
	setAttr -s 8 ".wl[42].w[0:7]"  0.013803422519912768 0.027876318656223812 
		0.44056040672359792 0.45406022374600674 0.02838717980988175 0.015932411745967767 
		0.01191740387079249 0.0074626329276168855;
	setAttr -s 8 ".wl[43].w[0:7]"  0.013818479355511653 0.027892631534160165 
		0.44111378896024739 0.45341966292644914 0.028403088856983661 0.01594892084759084 
		0.011930902177631224 0.0074725253414259308;
	setAttr -s 8 ".wl[44].w[0:7]"  0.018149877606843962 0.030210748558730037 
		0.083739201841639049 0.6867689662250106 0.10281816582296108 0.038136069920922742 
		0.025689442265197482 0.014487527758694996;
	setAttr -s 8 ".wl[45].w[0:7]"  0.017060006031381431 0.028401804352447404 
		0.078702713649469902 0.70525855685482775 0.096954092687125945 0.035858633829329967 
		0.024149319647247102 0.013614872948170566;
	setAttr -s 8 ".wl[46].w[0:7]"  0.015787598769458976 0.026288261065915294 
		0.072825255505863343 0.72694307793626767 0.090012622892384944 0.033195799686809045 
		0.022350465514236174 0.012596918629064488;
	setAttr -s 8 ".wl[47].w[0:7]"  0.015787598769458979 0.026288261065915301 
		0.072825255505863357 0.72694307793626778 0.090012622892384958 0.033195799686809052 
		0.022350465514236181 0.012596918629064492;
	setAttr -s 8 ".wl[48].w[0:7]"  0.017060006232902689 0.028401804687054701 
		0.078702714580535807 0.70525855342843002 0.09695409377878865 0.035858634250744668 
		0.024149319932082611 0.013614873109461002;
	setAttr -s 8 ".wl[49].w[0:7]"  0.018149877606843962 0.030210748558730037 
		0.083739201841639049 0.6867689662250106 0.10281816582296108 0.038136069920922742 
		0.025689442265197482 0.014487527758694996;
	setAttr -s 8 ".wl[50].w[0:7]"  0.010489546466750883 0.015869285277265974 
		0.03135064415886301 0.43113993653375221 0.43488683892531055 0.041399301307463582 
		0.023368954355198271 0.011495492975395578;
	setAttr -s 8 ".wl[51].w[0:7]"  0.0092386695739836641 0.013978208354610193 
		0.027610041400487246 0.4384290208510534 0.44353138790728364 0.036501832174238406 
		0.02058824846864123 0.010122591269702249;
	setAttr -s 8 ".wl[52].w[0:7]"  0.0076902814934296654 0.011636590495320502 
		0.022980936546226953 0.44691894233687296 0.45478910737601075 0.030417082358689704 
		0.017142719303377296 0.0084243400900722125;
	setAttr -s 8 ".wl[53].w[0:7]"  0.0076902814934296662 0.011636590495320504 
		0.022980936546226953 0.44691894233687302 0.45478910737601075 0.030417082358689708 
		0.0171427193033773 0.0084243400900722142;
	setAttr -s 8 ".wl[54].w[0:7]"  0.0092386698103275339 0.013978208711971623 
		0.027610042107159522 0.43842901950159829 0.44353138624439908 0.036501833101239285 
		0.020588248994290674 0.010122591529014026;
	setAttr -s 8 ".wl[55].w[0:7]"  0.010489546466750883 0.015869285277265974 
		0.031350644158863003 0.43113993653375221 0.43488683892531055 0.041399301307463582 
		0.023368954355198271 0.011495492975395578;
	setAttr -s 8 ".wl[56].w[0:7]"  0.013065397253745864 0.018510029596952093 
		0.030918380081782292 0.095476316015131499 0.62436852974301227 0.14705049998247866 
		0.050790680588941241 0.019820166737956234;
	setAttr -s 8 ".wl[57].w[0:7]"  0.011877678247261356 0.016828306371299909 
		0.028106158021008524 0.087051383315277578 0.65728426354540659 0.13462834293341416 
		0.046209849634227494 0.018014017932104422;
	setAttr -s 8 ".wl[58].w[0:7]"  0.010295726406380728 0.014587813908664505 
		0.024361427519912087 0.075679801144517805 0.70184229250975627 0.11753507555567282 
		0.040086874405088367 0.0156109885500074;
	setAttr -s 8 ".wl[59].w[0:7]"  0.010295726406380729 0.014587813908664506 
		0.024361427519912091 0.075679801144517819 0.70184229250975627 0.11753507555567282 
		0.040086874405088381 0.015610988550007403;
	setAttr -s 8 ".wl[60].w[0:7]"  0.011877678478814706 0.016828306699202489 
		0.028106158569202695 0.087051384968357584 0.65728425707803895 0.13462834539352345 
		0.046209850528821407 0.018014018284038615;
	setAttr -s 8 ".wl[61].w[0:7]"  0.013065397253745866 0.018510029596952093 
		0.030918380081782295 0.095476316015131499 0.62436852974301227 0.14705049998247863 
		0.050790680588941248 0.019820166737956234;
	setAttr -s 8 ".wl[62].w[0:7]"  0.050366204344928736 0.85879717273849843 
		0.046212579625644255 0.016253709786096245 0.0098122420011523027 0.0075125297844642518 
		0.0063673484619429779 0.0046782132572728537;
	setAttr -s 8 ".wl[63].w[0:7]"  0.084122512225825993 0.77418950895473149 
		0.070897158220887352 0.025654723846878107 0.015579327110899033 0.011952935862023931 
		0.010141388426427837 0.007462445352326293;
	setAttr -s 8 ".wl[64].w[0:7]"  0.10250227576181269 0.73047758546899111 
		0.082859331750961634 0.030426172772157353 0.018528157406577095 0.014230361950428106 
		0.012079962118658773 0.0088961527704132064;
	setAttr -s 8 ".wl[65].w[0:7]"  0.10438772776679871 0.7192624685175909 
		0.088095986996960196 0.031985133527476867 0.01942044193438134 0.014900950202567135 
		0.012642949477297858 0.0093043415769270676;
	setAttr -s 8 ".wl[66].w[0:7]"  0.083861529094838294 0.7645215607454563 
		0.076998107203611443 0.027180440868957045 0.016405919586597033 0.012561693399582774 
		0.010647126940466732 0.007823622160490375;
	setAttr -s 8 ".wl[67].w[0:7]"  0.043402387264366356 0.87553586646370307 
		0.041568781599344726 0.014422655837697456 0.0086795160833959394 0.0066384046118985159 
		0.0056235767909027859 0.0041288113486913271;
	setAttr -s 8 ".wl[68].w[0:7]"  0.067349227720880839 0.087829155242417536 
		0.11853193288153197 0.1563017570798215 0.16497780559333922 0.1631816687523 0.14624215145729619 
		0.095586301272412716;
	setAttr -s 8 ".wl[69].w[0:7]"  0.068631576687097351 0.089314166495752287 
		0.11986154448647267 0.15604945767710962 0.16362882444477536 0.16161301748071064 0.14505129541869255 
		0.095850117309389485;
	setAttr -s 8 ".wl[70].w[0:7]"  0.069262059465654655 0.090038249445630672 
		0.12050607835625425 0.15590154280078791 0.16297943351208463 0.16085406492399973 0.14447418035333839 
		0.095984391142249811;
	setAttr -s 8 ".wl[71].w[0:7]"  0.068642204688174779 0.089323688020619477 
		0.1198884458971823 0.15602837013546456 0.16360086195497001 0.16158696304467363 0.14503878354355978 
		0.09589068271535546;
	setAttr -s 8 ".wl[72].w[0:7]"  0.067360518227522259 0.087839603372866198 
		0.11856004088991065 0.15628034613493952 0.16494816827956202 0.16315382602782627 0.14622893110306623 
		0.095628565964306911;
	setAttr -s 8 ".wl[73].w[0:7]"  0.066696992295564486 0.087067711169538695 
		0.1178457122100533 0.15640393041013426 0.16567914796882105 0.16399288636428325 0.1468569584694408 
		0.095456661112164193;
	setAttr -s 8 ".wl[74].w[0:7]"  0.044900491582067312 0.87695055615200257 
		0.039458595529706805 0.014060304128691577 0.0085101796037481709 0.006522240814447685 
		0.00553081218322647 0.0040668200061095231;
	setAttr -s 8 ".wl[75].w[0:7]"  0.067985054670085532 0.088568025441333464 
		0.11921225539648972 0.1561823750806017 0.16429651504243722 0.1623898194906829 0.14563669439519303 
		0.095729260483176412;
	setAttr -s 8 ".wl[76].w[0:7]"  0.10748475610153817 0.39166416710079538 
		0.30451970640279974 0.077409946590063616 0.042467422096867012 0.031442613098803064 
		0.026212055444891139 0.018799333164241903;
	setAttr -s 8 ".wl[77].w[0:7]"  0.11301394561836886 0.38409482223785651 
		0.29942408088393663 0.079855656568098066 0.044076882161847263 0.032687525293533158 
		0.027270096017829541 0.019576991218530067;
	setAttr -s 8 ".wl[78].w[0:7]"  0.10645072891626634 0.39475664590295484 
		0.30460836882139536 0.076557900164369627 0.042009162564402326 0.031100250212958359 
		0.025925698381520694 0.018591245036132315;
	setAttr -s 8 ".wl[79].w[0:7]"  0.091894262161652515 0.42119306421225255 
		0.31455075750236999 0.06860494055990754 0.037172656251317951 0.027424441133667758 
		0.022825934322680562 0.016333943856151119;
	setAttr -s 8 ".wl[80].w[0:7]"  0.083622754101275468 0.438640461626713 
		0.31856919582669385 0.06367203659914783 0.034266406736427051 0.02523648451463921 
		0.020988529778732459 0.015004130816371119;
	setAttr -s 8 ".wl[81].w[0:7]"  0.093324110062541002 0.41653010513929067 
		0.31487547804150123 0.069767642254154008 0.037794192780700439 0.027885827963619429 
		0.023210824718956368 0.016611819039236853;
	setAttr -s 8 ".wl[82].w[0:7]"  0.099359723294774771 0.25817341899496599 
		0.29157890771877981 0.15263101848686539 0.074036479930172025 0.052228187451482298 
		0.042519729865842376 0.029472534257117409;
	setAttr -s 8 ".wl[83].w[0:7]"  0.10179926063868976 0.25807531033546083 
		0.28630251138115981 0.1525056579631085 0.074991821402419376 0.053058337173445907 
		0.043247356886204499 0.030019744219511219;
	setAttr -s 8 ".wl[84].w[0:7]"  0.099197578098004349 0.25861649265344161 
		0.29203921900663155 0.15229361254419407 0.073896594229090368 0.052121077625870808 
		0.042430238584226954 0.029405187258540268;
	setAttr -s 8 ".wl[85].w[0:7]"  0.09372833379273568 0.25854136361978841 
		0.30576252596677467 0.15168437416537001 0.071449567765325364 0.050077087079116019 
		0.040663416860904363 0.02809333074998541;
	setAttr -s 8 ".wl[86].w[0:7]"  0.090826673776878086 0.25772247055088954 
		0.31413570787659451 0.15122495076638939 0.070063282432308055 0.048947566594619005 
		0.039695620582599428 0.027383727419721983;
	setAttr -s 8 ".wl[87].w[0:7]"  0.093916166558185923 0.25808340032195992 
		0.30518510310433877 0.15207556894001215 0.071609954422966984 0.050198011894262318 
		0.040763884287915095 0.028167910470358774;
	setAttr -s 8 ".wl[88].w[0:7]"  0.090903958300275117 0.17976804645589983 
		0.24644238074793562 0.21257709267625127 0.10467319636037549 0.071011586083682451 
		0.056598285350785676 0.038025454024794618;
	setAttr -s 8 ".wl[89].w[0:7]"  0.092622822516014836 0.18148588502386898 
		0.24329872085061405 0.20985770955337243 0.10521403789612326 0.071714040683465513 
		0.057260072917047926 0.038546710559492887;
	setAttr -s 8 ".wl[90].w[0:7]"  0.090882671100699086 0.17990443302332859 
		0.24653858800647649 0.21245494906447354 0.10466030474708626 0.07098553201296566 0.056573231082019122 
		0.038000290962951169;
	setAttr -s 8 ".wl[91].w[0:7]"  0.087192439635674607 0.17606036629639107 
		0.25391273798680908 0.21834779419787878 0.10328000712128986 0.06933720357899556 0.055050902647265074 
		0.036818548535696161;
	setAttr -s 8 ".wl[92].w[0:7]"  0.085221437824986174 0.17374054306981124 
		0.25814797830288477 0.22170296064654788 0.10241891422464652 0.068396150120816429 
		0.054199227904119705 0.036172787906187255;
	setAttr -s 8 ".wl[93].w[0:7]"  0.087215636779806108 0.17592415099341285 
		0.25380190146510473 0.21847981096268718 0.10329340014930247 0.069364278017581174 
		0.055076755337205678 0.036844066294899842;
	setAttr -s 8 ".wl[94].w[0:7]"  0.083376565900769486 0.14135081581040984 
		0.21609873544658187 0.21598052714438537 0.13571842483838917 0.090479802103109228 
		0.070825476320028752 0.046169652436326383;
	setAttr -s 8 ".wl[95].w[0:7]"  0.084691518952752037 0.14288732508710847 
		0.21404367019663542 0.21381856872627983 0.13555421080419966 0.090962251640562555 
		0.071383137357296692 0.046659317235165462;
	setAttr -s 8 ".wl[96].w[0:7]"  0.083376039805449401 0.14141007943060915 
		0.21605768552727794 0.21593016895261907 0.13576840469450183 0.090482879009548697 
		0.070820555082262315 0.046154187497731591;
	setAttr -s 8 ".wl[97].w[0:7]"  0.080612931795893752 0.13812477002890364 
		0.22061361722549444 0.22060616292698415 0.13604406824604273 0.089361945929809825 
		0.069565515103164818 0.045070988743706589;
	setAttr -s 8 ".wl[98].w[0:7]"  0.079155692692705198 0.13629716967355626 
		0.22320258483755795 0.22320751214106971 0.1360832329050187 0.08870540957136569 0.068862087937396774 
		0.044486310241329721;
	setAttr -s 8 ".wl[99].w[0:7]"  0.0806133692216639 0.13806515936200797 
		0.22066241598324196 0.22065720795419874 0.13598804977392487 0.089357811855936678 
		0.06956990478346857 0.04508608106555715;
	setAttr -s 8 ".wl[100].w[0:7]"  0.077924403859783969 0.11944194057463811 
		0.18598983784838302 0.19580044669582278 0.16398079046838057 0.11327032776674185 0.087864667891746018 
		0.055727584894503676;
	setAttr -s 8 ".wl[101].w[0:7]"  0.078938287576828331 0.12064020522970585 
		0.18547805357196345 0.19432591303144062 0.16293942301248249 0.11332878231668395 0.088203781822455612 
		0.056145553438439771;
	setAttr -s 8 ".wl[102].w[0:7]"  0.077914292423988618 0.1194522771646902 
		0.18593590939654614 0.19581018617302962 0.16404966760318856 0.11327583487022826 0.087857087883148832 
		0.055704744485179779;
	setAttr -s 8 ".wl[103].w[0:7]"  0.075800470251763355 0.11692695674357595 
		0.18688516528650131 0.19908453966577849 0.1663523235954231 0.11309079568858812 0.087080393289660385 
		0.054779355478709241;
	setAttr -s 8 ".wl[104].w[0:7]"  0.074708397762125012 0.11558541009147223 
		0.18737593433583297 0.200892832271056 0.16754636177910809 0.11295290986881988 0.086645823208071043 
		0.054292330683514731;
	setAttr -s 8 ".wl[105].w[0:7]"  0.075812223292224645 0.1169193260414926 
		0.18694400523838506 0.1990687241767346 0.16627678719207478 0.11308618822462249 0.087089447138920709 
		0.054803298695545101;
	setAttr -s 8 ".wl[106].w[0:7]"  0.0735455018189171 0.10513532755578588 
		0.15617456373635943 0.18075001308419117 0.17563444895335731 0.1356734343700067 0.10659303041431531 
		0.066493680067067087;
	setAttr -s 8 ".wl[107].w[0:7]"  0.074392603826453921 0.10613646776762076 
		0.156501137936983 0.17971816254333517 0.17444862989091378 0.13527576212557338 0.10667553900238542 
		0.066851696906734551;
	setAttr -s 8 ".wl[108].w[0:7]"  0.07353095929184976 0.10512754482716823 
		0.15612517554209965 0.18078426121514951 0.17569770526616513 0.1356852672360308 0.10658586095019874 
		0.066463225671338097;
	setAttr -s 8 ".wl[109].w[0:7]"  0.071765924797824704 0.10302415914802604 
		0.15531291943404915 0.18306514529851303 0.17831718651668829 0.13650251914437789 0.10635594178317259 
		0.065656203877348329;
	setAttr -s 8 ".wl[110].w[0:7]"  0.070861615490505556 0.10192816247485807 
		0.1548734169614322 0.18428548994009197 0.17969307125711964 0.13690903150067119 0.10621300000944366 
		0.065236212365877594;
	setAttr -s 8 ".wl[111].w[0:7]"  0.07178203480272044 0.10303436062606595 
		0.1553661587312527 0.18302534537655807 0.17824818608608431 0.13649091217645787 0.10636476982326139 
		0.065688232377599284;
	setAttr -s 8 ".wl[112].w[0:7]"  0.070903765052166792 0.097033357678553561 
		0.13794718946733367 0.17178900641169256 0.17180913755001861 0.15076621768615914 0.12285824600345037 
		0.07689308015062532;
	setAttr -s 8 ".wl[113].w[0:7]"  0.071648609278253395 0.097907064073216588 
		0.13851089347073148 0.17100656652140567 0.17101097365629739 0.15006737355342387 0.12267210283811368 
		0.077176416608557855;
	setAttr -s 8 ".wl[114].w[0:7]"  0.070889069050843537 0.097021264137224478 
		0.13790554156625714 0.17183265150333538 0.17185281016366838 0.15078524900451096 0.12285607562574849 
		0.076857338948411597;
	setAttr -s 8 ".wl[115].w[0:7]"  0.069340232632537982 0.095192482760741062 
		0.13663849551392926 0.17352520289272363 0.17361613196923226 0.15227557221696447 0.12321051522188721 
		0.07620136679198411;
	setAttr -s 8 ".wl[116].w[0:7]"  0.068550357406647097 0.094248621142373756 
		0.13597467103040967 0.1743921424164622 0.17454102511789213 0.15304989900037197 0.12337978610839115 
		0.075863497777451924;
	setAttr -s 8 ".wl[117].w[0:7]"  0.069356032004565332 0.095206213946335605 
		0.13668254544583078 0.17347849239336982 0.17356928942229782 0.15225527931036056 0.12321347297197513 
		0.076238674505264906;
	setAttr -s 8 ".wl[118].w[0:7]"  0.069207241868481706 0.09150269664838076 
		0.12512397443461812 0.1619341313466606 0.16581800748521536 0.15962482730499214 0.13800217151884045 
		0.088786949392810829;
	setAttr -s 8 ".wl[119].w[0:7]"  0.069868049916526037 0.092269517289072747 
		0.12574554337819702 0.16161381918578741 0.16515160686158406 0.15884173306190347 0.13755039854877221 
		0.088959331758157054;
	setAttr -s 8 ".wl[120].w[0:7]"  0.06919520753541987 0.091492069025403924 
		0.12509256097301105 0.16196192914809318 0.1658498769257877 0.15965031669522328 0.13800988506683484 
		0.088748154630226062;
	setAttr -s 8 ".wl[121].w[0:7]"  0.067825725697937447 0.089894683341098264 
		0.12374044399874774 0.16263168265573058 0.16730425050112155 0.16133107751983911 0.13895095810657945 
		0.088321178178945983;
	setAttr -s 8 ".wl[122].w[0:7]"  0.06712866435084551 0.089074140589720296 
		0.12303990173461085 0.16295129968849922 0.16806253991015827 0.16220555407416515 0.13943297512975136 
		0.0881049245222493;
	setAttr -s 8 ".wl[123].w[0:7]"  0.067838555159395145 0.089906444522615855 
		0.12377338963282934 0.16260293605875464 0.16727036093053843 0.16130369864130648 0.13894301047795468 
		0.08836160457660551;
	setAttr -s 8 ".wl[124].w[0:7]"  0.014224540495330616 0.041175466666104631 
		0.85619966922562274 0.049752573669040373 0.015398141053824322 0.010040010429994046 
		0.0079240520398152665 0.0052855464202680134;
	setAttr -s 8 ".wl[125].w[0:7]"  0.019130242943887779 0.053972526376615343 
		0.80268444966923647 0.070984972051669731 0.021292281667279797 0.013814104370056328 
		0.010881238811172474 0.0072401841100822005;
	setAttr -s 8 ".wl[126].w[0:7]"  0.020867828556213577 0.058117957725054618 
		0.78236625938195092 0.079889950667549434 0.023550887469099852 0.015241789805180829 
		0.011994043810882794 0.0079712825840678771;
	setAttr -s 8 ".wl[127].w[0:7]"  0.022329356439014937 0.062859494685573156 
		0.76979364302162523 0.082881970488307394 0.024851064521893212 0.016126660855641878 
		0.012703616118272488 0.0084541938696717257;
	setAttr -s 8 ".wl[128].w[0:7]"  0.019246260803130605 0.055578137623914725 
		0.80553888171937604 0.067338796910960563 0.02083301275130606 0.013586680785850069 
		0.010723909627798461 0.0071543197776634919;
	setAttr -s 8 ".wl[129].w[0:7]"  0.010629241463793638 0.031159867542978711 
		0.89352325375053598 0.036149174173551596 0.011347308681511962 0.0074173811484592777 
		0.0058599651717892052 0.0039138080673796682;
	setAttr -s 8 ".wl[130].w[0:7]"  0.063279854100183816 0.082265981200691313 
		0.11152400281032375 0.15252898163420239 0.16842134439579889 0.16825901942207996 0.15433122229140614 
		0.099389594145313745;
	setAttr -s 8 ".wl[131].w[0:7]"  0.062319780290513688 0.081084264563777236 
		0.11024557171012996 0.15216379362726329 0.16957458241088635 0.16949488812811303 0.15568972665603747 
		0.099427392613278903;
	setAttr -s 8 ".wl[132].w[0:7]"  0.061835883744854263 0.080486092947524387 
		0.10959791240016163 0.1519527323594089 0.17016602350682694 0.17011771454033431 0.15638687800444986 
		0.099456762496439741;
	setAttr -s 8 ".wl[133].w[0:7]"  0.062329701948091662 0.081094392106848795 
		0.11026858242797778 0.15215065048736848 0.16954783538690674 0.16946821200949932 0.15567412608332803 
		0.099466499549979215;
	setAttr -s 8 ".wl[134].w[0:7]"  0.063289382335516675 0.082275545842239409 
		0.11154634044891854 0.1525154853282846 0.16839578441362615 0.16823359814460997 0.15431650756955081 
		0.099427355917253921;
	setAttr -s 8 ".wl[135].w[0:7]"  0.06375608759353979 0.082849558597870077 
		0.11215501459815379 0.15268426853736239 0.16785891470886122 0.16764632567672658 0.15366916011571857 
		0.099380670171767646;
	setAttr -s 8 ".wl[136].w[0:7]"  0.0079127703675289443 0.022622570236949156 
		0.91911966667186551 0.028589163061996162 0.0086856246198417138 0.0056489117792312077 
		0.0044539343449919713 0.0029673589175954174;
	setAttr -s 8 ".wl[137].w[0:7]"  0.06279699026658557 0.081672682603258634 
		0.11089368475727801 0.15235185380603933 0.16899077127788772 0.16887289012808107 0.15500099832186609 
		0.099420128839003669;
	setAttr -s 8 ".wl[138].w[0:7]"  0.037211172306658005 0.08261659111826479 
		0.44201857610786804 0.29984845589224396 0.058359021417963688 0.035350085496070736 
		0.027120622089522765 0.017475475571407988;
	setAttr -s 8 ".wl[139].w[0:7]"  0.03401369256023181 0.075276533037133039 
		0.46117973465533385 0.30155204012712111 0.054193831307336092 0.032667126072772001 
		0.025022594972132346 0.016094447267939706;
	setAttr -s 8 ".wl[140].w[0:7]"  0.037120908887160957 0.08249204108286981 
		0.4433554325949709 0.29905117676671195 0.058237346259669545 0.035263532092126064 
		0.027051869103694112 0.017427693212796625;
	setAttr -s 8 ".wl[141].w[0:7]"  0.042161934575977285 0.094412394363333207 
		0.41903431199385388 0.29141420487209119 0.064143540091685131 0.039189325381254247 
		0.030153392314462735 0.019490896407342466;
	setAttr -s 8 ".wl[142].w[0:7]"  0.044300709502777244 0.099548464691629937 
		0.41000224569186022 0.28732728049411471 0.066375696625019506 0.040733319249171472 
		0.031388077437882876 0.020324206307544081;
	setAttr -s 8 ".wl[143].w[0:7]"  0.04223872298229988 0.09449393824563973 
		0.41800621390898091 0.292014581478104 0.0642402303946146 0.039261973437128048 0.030211829286764424 
		0.019532510266468319;
	setAttr -s 8 ".wl[144].w[0:7]"  0.051140211486551845 0.094344836507354604 
		0.28546791956892209 0.30418102230337896 0.11859858321367531 0.066424600000234105 
		0.04931937736140711 0.030523449558476034;
	setAttr -s 8 ".wl[145].w[0:7]"  0.049703771342392705 0.09164476138627578 
		0.28675733935619691 0.31061697254576143 0.11771100248970637 0.06532306534135246 0.048378536662375904 
		0.029864550875938416;
	setAttr -s 8 ".wl[146].w[0:7]"  0.051126340035700497 0.094357494947743842 
		0.28534237813113394 0.30429270025421473 0.11865404666721072 0.066414277916413869 
		0.0493054182870582 0.030507343760524344;
	setAttr -s 8 ".wl[147].w[0:7]"  0.053773475571091953 0.099395670721898449 
		0.28222804849441491 0.29383184754000502 0.11994494995388306 0.068257433574645837 
		0.050915140838493897 0.031653433305566851;
	setAttr -s 8 ".wl[148].w[0:7]"  0.055014310395576006 0.10174808881647301 
		0.28059641521174034 0.28946655525500936 0.12035135094518941 0.06903735373098667 0.051617606720111973 
		0.032168318924913356;
	setAttr -s 8 ".wl[149].w[0:7]"  0.053783877632883982 0.099373847289100162 
		0.28233091606409444 0.29376755093519186 0.1198866948082689 0.068263503755504246 0.050925891022198348 
		0.031667718492758103;
	setAttr -s 8 ".wl[150].w[0:7]"  0.057294948559837466 0.095190762561811387 
		0.2100263830199865 0.25867031871057794 0.17305564795315309 0.095303253187755038 0.069101772037561404 
		0.041356913969317233;
	setAttr -s 8 ".wl[151].w[0:7]"  0.05628047879622388 0.093519905617757568 
		0.20888630521165147 0.26253255657718588 0.17447549027508688 0.094876287717799088 
		0.068544450248406538 0.040884525555888646;
	setAttr -s 8 ".wl[152].w[0:7]"  0.057270018690442216 0.095171378357039385 
		0.20990739477980269 0.25879667190464284 0.17316543497130252 0.095283927912687083 
		0.069075834730809763 0.041329338653273338;
	setAttr -s 8 ".wl[153].w[0:7]"  0.059181762970661529 0.098340381903745111 
		0.21167144562432991 0.25215635505367778 0.17052429892390386 0.095944424646138518 
		0.070021758885884647 0.042159571991658741;
	setAttr -s 8 ".wl[154].w[0:7]"  0.060107282183652445 0.09986242904605401 
		0.21243283714276565 0.24919660454629525 0.1692032226391211 0.096206790137132875 0.070442528365147486 
		0.042548305939831055;
	setAttr -s 8 ".wl[155].w[0:7]"  0.059203533284258113 0.098353533764558673 
		0.21177746347221915 0.25205619226327841 0.17042167708229114 0.095958950650148367 
		0.070043793531425577 0.042184855951820699;
	setAttr -s 8 ".wl[156].w[0:7]"  0.058763372701542013 0.0907429673654295 
		0.16765595108265377 0.22449179304563724 0.20088872335022598 0.120552156537706 0.086529277724098519 
		0.050375758192706982;
	setAttr -s 8 ".wl[157].w[0:7]"  0.057880789820940075 0.089415870807599024 
		0.16627805665634546 0.22663582149551156 0.20313747188942397 0.12057128022996963 0.086144828878280982 
		0.049935880221929199;
	setAttr -s 8 ".wl[158].w[0:7]"  0.058736191604008732 0.090714291288087681 
		0.16756066464527869 0.22458680961204974 0.20102335202928642 0.12053734401903317 0.086499951875843625 
		0.050341394926411979;
	setAttr -s 8 ".wl[159].w[0:7]"  0.060408534975014271 0.093235384615998049 
		0.16997563885304606 0.22077659946653946 0.19697758477645316 0.12038685743684313 0.087126551916092185 
		0.051112847960013676;
	setAttr -s 8 ".wl[160].w[0:7]"  0.061226543524948121 0.09445925716082483 
		0.17111340852918513 0.21900447967297662 0.1950395210112697 0.12027500388626552 0.087401421143157854 
		0.051480365071372325;
	setAttr -s 8 ".wl[161].w[0:7]"  0.060433103366776424 0.093259541267787474 
		0.17006292864986744 0.22069472428254353 0.19685532244335818 0.12039762273017221 0.087151934813306714 
		0.051144822446188148;
	setAttr -s 8 ".wl[162].w[0:7]"  0.05943872189983259 0.086695384033003364 
		0.14256413344400767 0.20141982287000088 0.20011028793085672 0.1443530628216301 0.10522089870042793 
		0.060197688300240741;
	setAttr -s 8 ".wl[163].w[0:7]"  0.058678697107750394 0.085627938296485517 
		0.14137213025812384 0.20278315250390894 0.20168789370287593 0.14492111790434203 0.10511056444174031 
		0.05981850578477315;
	setAttr -s 8 ".wl[164].w[0:7]"  0.059414705765407971 0.086668787372345707 
		0.14249423468547598 0.2015003082309394 0.20020806134699781 0.1443557668928255 0.10519775648852495 
		0.060160379217482712;
	setAttr -s 8 ".wl[165].w[0:7]"  0.060866895019941157 0.088709816464356744 
		0.14466803735584033 0.19904993362748619 0.1973208621326247 0.14323333538763788 0.10532823955781186 
		0.060822880454301162;
	setAttr -s 8 ".wl[166].w[0:7]"  0.061583174512625682 0.089709906250490731 
		0.14572083148731396 0.1978806117281961 0.1959122745913956 0.14267625346586321 0.10537290060667866 
		0.061144047357436032;
	setAttr -s 8 ".wl[167].w[0:7]"  0.060889140230001179 0.088733569318975039 
		0.14473348812747155 0.19897793391204233 0.19723004851375983 0.14322921265515198 0.10534847529305771 
		0.06085813194954038;
	setAttr -s 8 ".wl[168].w[0:7]"  0.060153452819773634 0.083878533054763837 
		0.12722018159989007 0.18445669316156829 0.18642341212569954 0.16210785224309673 0.12440712565414148 
		0.07135274934106646;
	setAttr -s 8 ".wl[169].w[0:7]"  0.05949910213967901 0.08300654602693168 
		0.12623902084459793 0.18509264704464176 0.18740053154635783 0.16305545058348059 0.1246419291453876 
		0.071064772668923568;
	setAttr -s 8 ".wl[170].w[0:7]"  0.060134946136728692 0.083858376292251222 
		0.12717197047389717 0.18451057085274986 0.18648054891979396 0.16213041959433322 0.12439793485097816 
		0.071315232879267818;
	setAttr -s 8 ".wl[171].w[0:7]"  0.061394631970252619 0.085536773415773801 
		0.12900020365967457 0.1833071575791895 0.18470489008979687 0.16034300487469397 0.12390476144596886 
		0.071808576964649831;
	setAttr -s 8 ".wl[172].w[0:7]"  0.06201857584832772 0.086363363153641806 
		0.12989612948446164 0.18268859359123577 0.18384705138597685 0.159478642845785 0.12365592516801729 
		0.072051718522554001;
	setAttr -s 8 ".wl[173].w[0:7]"  0.061412188063390744 0.085555456581256212 
		0.129046350792341 0.18325554483589848 0.18465107793758251 0.16032191493933104 0.12391287558088969 
		0.071844591269310254;
	setAttr -s 8 ".wl[174].w[0:7]"  0.060869476745047939 0.08230151278728437 
		0.11866313158009469 0.1699917695880272 0.1778413191396554 0.16950583795559893 0.13908017192917149 
		0.081746780275119973;
	setAttr -s 8 ".wl[175].w[0:7]"  0.060285002924335154 0.081549494958198937 
		0.1178207795030187 0.17012753463863106 0.17862105665521796 0.17046838400476355 0.13957599363728387 
		0.08155175367855079;
	setAttr -s 8 ".wl[176].w[0:7]"  0.06085496698566463 0.082286079107405791 
		0.11862756072420806 0.1700222536974029 0.17788126748684821 0.16953577097679959 0.13908307247458959 
		0.08170902854708112;
	setAttr -s 8 ".wl[177].w[0:7]"  0.061985043661516179 0.083739313235573196 
		0.12021452214953501 0.16974589832592388 0.17644640522832519 0.16772591844356258 0.13811728402997017 
		0.082025614925593793;
	setAttr -s 8 ".wl[178].w[0:7]"  0.06254524732395382 0.084456013452431727 
		0.12099515311009137 0.16957723436143474 0.17575008421313879 0.16684729964510117 0.13764402216613547 
		0.082184945727712969;
	setAttr -s 8 ".wl[179].w[0:7]"  0.061998890218359602 0.083753754538838279 
		0.12024879793312647 0.16971575377666567 0.17640850294170807 0.16769796746019852 0.13811434344055676 
		0.082061989690546747;
	setAttr -s 8 ".wl[180].w[0:7]"  0.061762345043620381 0.081367250933922539 
		0.11270662257208026 0.15771579755961299 0.17190848102604964 0.17066515198470983 0.15085054788103866 
		0.093023802998965593;
	setAttr -s 8 ".wl[181].w[0:7]"  0.061238286318293783 0.080712471448340262 
		0.11198008078866133 0.15759309928422238 0.17256891067415836 0.1714448135054763 0.1515193960443634 
		0.09294294193648435;
	setAttr -s 8 ".wl[182].w[0:7]"  0.061750957303944039 0.081355438794482066 
		0.11267983512425167 0.15773314679338271 0.17193863952892124 0.17069407560469715 0.15086267317359092 
		0.092985233676730214;
	setAttr -s 8 ".wl[183].w[0:7]"  0.062767893224656229 0.082625096697206343 
		0.11405961027975228 0.15795061114787198 0.17071156116235295 0.16921820576839033 0.14958355670056303 
		0.093083465019206751;
	setAttr -s 8 ".wl[184].w[0:7]"  0.063272236250821248 0.083251844689500698 
		0.11473996056668029 0.15802959465483804 0.1701139662131658 0.16849292428801479 0.14896038359552463 
		0.0931390897414546;
	setAttr -s 8 ".wl[185].w[0:7]"  0.062778806176403926 0.08263621991996116 
		0.1140855492553703 0.15793298939508363 0.17068279339547113 0.16919085604205888 0.14957209580668546 
		0.093120690008965529;
	setAttr -s 8 ".wl[186].w[0:7]"  0.067636885872524005 0.087156998084175069 
		0.11573039998101405 0.15175319749432922 0.163161724057028 0.16280274004907372 0.15040395202742962 
		0.10135410243442644;
	setAttr -s 8 ".wl[187].w[0:7]"  0.059402213470285098 0.077099127140322354 
		0.10495005801556574 0.14829853583019281 0.17269964212866909 0.17294151443089262 0.1623626107143665 
		0.10224629826970581;
	setAttr -s 8 ".wl[188].w[0:7]"  0.054527058733291736 0.071006057287994667 
		0.097905092986743034 0.14435047651296254 0.17885433827310024 0.1804492456273048 0.17089269462246895 
		0.102015035956134;
	setAttr -s 8 ".wl[189].w[0:7]"  0.059497065360840463 0.077199996114916417 
		0.10516191036688508 0.14820928618902732 0.17243538619418164 0.17267517725329301 0.16218076928766886 
		0.10264040923318718;
	setAttr -s 8 ".wl[190].w[0:7]"  0.06770392665575832 0.087218263022024761 
		0.1158956732766205 0.15163703338216533 0.16298120232866356 0.16262442233236624 0.15029464252635544 
		0.1016448364760459;
	setAttr -s 8 ".wl[191].w[0:7]"  0.071266909130544148 0.091476812293911497 
		0.1200184319669544 0.1522316276248617 0.15975490467026102 0.15871993405499563 0.14588121889230224 
		0.10065016136616944;
	setAttr -s 8 ".wl[192].w[0:7]"  0.071313080442785878 0.089411755013581631 
		0.11408241551095796 0.14394493413245391 0.15727650700225776 0.15749855245555724 0.15291034756217917 
		0.11356240788022638;
	setAttr -s 8 ".wl[193].w[0:7]"  0.059818114739327279 0.075802092788991832 
		0.099778656286334561 0.13688155392894896 0.16603206425283426 0.17156584947725662 
		0.17034867259366029 0.11977299593264623;
	setAttr -s 8 ".wl[194].w[0:7]"  0.052373039846682096 0.066690412780046796 
		0.089211482161667355 0.12849635321365196 0.16985074296899644 0.18519875729534241 
		0.18512441095205157 0.12305480078156131;
	setAttr -s 8 ".wl[195].w[0:7]"  0.059929731866631218 0.075917088436237554 
		0.10002238103316623 0.1368040710301186 0.16570422563850509 0.17117609556139729 0.16997296372494453 
		0.12047344270899954;
	setAttr -s 8 ".wl[196].w[0:7]"  0.071382208070711495 0.089467520001828962 
		0.11426205076295055 0.14381764188723728 0.15706280476455417 0.15728324884208977 0.15272703378862137 
		0.11399749188200639;
	setAttr -s 8 ".wl[197].w[0:7]"  0.076156836843135331 0.094931234363827458 
		0.1193180942761064 0.14516353903570958 0.15330260079372113 0.15326810859336071 0.14691625015301074 
		0.11094333594112868;
	setAttr -s 8 ".wl[198].w[0:7]"  0.07222669070108613 0.088568230062721423 
		0.11010264102896859 0.13674217551789866 0.15305739565398732 0.15611520658278635 0.15575914958139891 
		0.12742851087115253;
	setAttr -s 8 ".wl[199].w[0:7]"  0.062226472023354178 0.077031089829611862 
		0.098107818265600832 0.12927487971719237 0.15651344397254968 0.16893326437080503 
		0.16946302287620055 0.13845000894468557;
	setAttr -s 8 ".wl[200].w[0:7]"  0.055947073297840801 0.069562001115331715 
		0.089710738353734124 0.12213476935023461 0.15631623681971218 0.17799254397563205 
		0.18149260921235336 0.1468440278751611;
	setAttr -s 8 ".wl[201].w[0:7]"  0.062283069064949875 0.077081245084191827 
		0.098244728477604015 0.12918481436696685 0.15625257467883805 0.16856679225132629 
		0.16925299370753946 0.1391337823685837;
	setAttr -s 8 ".wl[202].w[0:7]"  0.072272275075155018 0.088601567531620795 
		0.11022787295232801 0.1366500467326944 0.15288441616162635 0.15592453573351853 0.15557058168307325 
		0.12786870412998366;
	setAttr -s 8 ".wl[203].w[0:7]"  0.076499489097658802 0.093331264887502277 
		0.11467482139204321 0.13862666935024573 0.15076572073496894 0.15190557148292375 0.15071233025325342 
		0.12348413280140376;
	setAttr -s 8 ".wl[204].w[0:7]"  0.071020740602711921 0.086060077839511265 
		0.10580918056852889 0.13122126516084889 0.15004433439507553 0.15791562347936455 0.15838151162773798 
		0.13954726632622111;
	setAttr -s 8 ".wl[205].w[0:7]"  0.065362942628778592 0.079627564171746448 
		0.099143602050548854 0.12659565369140335 0.15057361500014035 0.16399104058895822 
		0.16658919369488534 0.14811638817353889;
	setAttr -s 8 ".wl[206].w[0:7]"  0.062156967790795492 0.075913971713884074 
		0.095137498546803201 0.12332232407531107 0.15011786255401238 0.16725588782658354 
		0.17225038682184104 0.15384510067076931;
	setAttr -s 8 ".wl[207].w[0:7]"  0.065376072255144468 0.079633257820922246 
		0.099190027739416625 0.12652809113206553 0.15043082562486693 0.16379239092046349 
		0.16656481107776744 0.14848452342935334;
	setAttr -s 8 ".wl[208].w[0:7]"  0.071037009531761425 0.086068774671996751 
		0.10586235668077831 0.1311648181618324 0.14993683846319167 0.1577818036608222 0.15831468370989282 
		0.13983371511972448;
	setAttr -s 8 ".wl[209].w[0:7]"  0.073582019310181573 0.088914491763450357 
		0.108653797862847 0.13285526175297468 0.14936978236003362 0.15514856059390564 0.15525514812075253 
		0.13622093823585457;
	setAttr -s 8 ".wl[210].w[0:7]"  0.06249623075303045 0.081824727840874092 
		0.11218443576571703 0.15524786830279344 0.17018995656743438 0.16957983139659935 0.15254230996776127 
		0.095934639405789904;
	setAttr -s 8 ".wl[211].w[0:7]"  0.068512255592675722 0.082858476169258163 
		0.10198213179672388 0.12761744767703104 0.14879953345474634 0.16019884281330526 0.16254152900654067 
		0.147489783489719;
	setAttr -s 8 ".wl[212].w[0:7]"  0.033831712196526628 0.045879734234754582 
		0.069188876181508444 0.13498493534800901 0.24220827565638686 0.24258934229273887 
		0.16758005446562943 0.063737069624446197;
	setAttr -s 8 ".wl[213].w[0:7]"  0.033831711862243999 0.045879733793892784 
		0.06918887553982174 0.134984934666322 0.24220827720431573 0.24258934385578124 0.16758005408685822 
		0.06373706899076427;
	setAttr -s 8 ".wl[214].w[0:7]"  0.03423529556656818 0.046411288453752336 
		0.070042583191842797 0.13577811454065844 0.24026148037456477 0.24062438610297876 
		0.16798715766321182 0.064659694106422902;
	setAttr -s 8 ".wl[215].w[0:7]"  0.034626527671986811 0.046925774755195396 
		0.070871666548779536 0.1365192906775102 0.23840152071803064 0.2387477866224437 0.16834369743192629 
		0.065563735574127535;
	setAttr -s 8 ".wl[216].w[0:7]"  0.034626526234570403 0.046925772864583444 
		0.070871663937072893 0.13651928791212767 0.23840152698860051 0.23874779295020132 
		0.16834369601269292 0.065563733100150928;
	setAttr -s 8 ".wl[217].w[0:7]"  0.034235295634922981 0.046411288543711224 
		0.070042583336566877 0.13577811467253806 0.24026148004727221 0.24062438577269779 
		0.16798715772875916 0.064659694263531645;
	setAttr -s 8 ".wl[218].w[0:7]"  0.041842924223496281 0.053908912912130132 
		0.073941309700930283 0.11512462019386642 0.17651702938207731 0.21329297064655064 
		0.21329297064655064 0.11207926229439838;
	setAttr -s 8 ".wl[219].w[0:7]"  0.041842923002342741 0.053908911407375477 
		0.073941307822165972 0.11512461829124068 0.17651702994256901 0.21329297468845368 
		0.21329297468845368 0.11207926015739876;
	setAttr -s 8 ".wl[220].w[0:7]"  0.042105626814683196 0.05422994156970426 
		0.074441804838238632 0.11547844849130824 0.17618964578436319 0.21206684723796312 
		0.2120673925564803 0.11342029270725906;
	setAttr -s 8 ".wl[221].w[0:7]"  0.042359448835547438 0.054539369589247863 
		0.074927026172473654 0.1158076295459468 0.17584465786224357 0.21085965374862095 0.21090728053426916 
		0.11475493371165058;
	setAttr -s 8 ".wl[222].w[0:7]"  0.04235944857052009 0.054539369263124519 
		0.074927025782634257 0.11580762913717561 0.17584465796429952 0.21085965454118635 
		0.21090728133680342 0.11475493340425627;
	setAttr -s 8 ".wl[223].w[0:7]"  0.042105626859220396 0.054229941624071611 
		0.074441804923218516 0.11547844855033557 0.17618964572693557 0.21206684702919576 
		0.21206739234930252 0.11342029293772012;
	setAttr -s 8 ".wl[224].w[0:7]"  0.041079123748626392 0.051056945309317148 
		0.066347044870485594 0.094388874395204658 0.13559529620354291 0.18881075815616427 
		0.23794042122635067 0.18478153609030828;
	setAttr -s 8 ".wl[225].w[0:7]"  0.041079122797553547 0.051056944167509742 
		0.0663470434758449 0.094388872794777506 0.13559529500702178 0.1888107592868474 0.23794042620890168 
		0.18478153626154345;
	setAttr -s 8 ".wl[226].w[0:7]"  0.041045451841804213 0.051004921352626582 
		0.066316948716861085 0.094164063711913437 0.13499589543783236 0.18728091650534739 
		0.238455934402482 0.18673586803113296;
	setAttr -s 8 ".wl[227].w[0:7]"  0.041003503084371402 0.050942651845620829 
		0.066273425909857756 0.093921438455706399 0.13437610801732444 0.18574738884108929 
		0.23901640554968343 0.18871907829634652;
	setAttr -s 8 ".wl[228].w[0:7]"  0.041003502830216886 0.050942651538629147 
		0.066273425539448955 0.093921437999863286 0.13437610759890725 0.1857473888380986 
		0.23901640695007131 0.18871907870476451;
	setAttr -s 8 ".wl[229].w[0:7]"  0.041045451835302824 0.051004921342798985 
		0.066316948710535062 0.094164063671707016 0.13499589533295347 0.18728091624183432 
		0.2384559344950295 0.18673586836983888;
	setAttr -s 8 ".wl[230].w[0:7]"  0.030514023612322545 0.037210653858457829 
		0.047122667012915294 0.064460158910392876 0.089495444770166008 0.12595643251543137 
		0.30790272668139085 0.29733789263892313;
	setAttr -s 8 ".wl[231].w[0:7]"  0.030514023527474031 0.037210653757701662 
		0.047122666886384723 0.064460158764564832 0.089495444623159476 0.12595643246761518 
		0.30790272724041173 0.29733789273268846;
	setAttr -s 8 ".wl[232].w[0:7]"  0.030063800216564497 0.036658282942546333 
		0.046436079477059009 0.063467962170527498 0.088049804123372474 0.12372719888437611 
		0.31065498347077874 0.3009418887147754;
	setAttr -s 8 ".wl[233].w[0:7]"  0.029587014603977599 0.036073629763359323 
		0.045708194735883861 0.062421065767901934 0.086530842567406355 0.1214036011633246 
		0.31356795325952053 0.3047076981386258;
	setAttr -s 8 ".wl[234].w[0:7]"  0.029587013207499836 0.036073628072589257 
		0.045708192621364899 0.062421062967369899 0.086530838925250458 0.12140359673343101 
		0.31356796206587711 0.30470770540661762;
	setAttr -s 8 ".wl[235].w[0:7]"  0.030063800136883496 0.036658282844812734 
		0.04643607935548013 0.063467961995248123 0.088049803868522611 0.12372719849295952 
		0.31065498395771601 0.30094188934837723;
	setAttr -s 8 ".wl[236].w[0:7]"  0.0031170486074805423 0.0043585701163391865 
		0.0070705949317669617 0.019114856288483268 0.88636914070697792 0.060403219650850964 
		0.014422455069236916 0.0051441146288643495;
	setAttr -s 8 ".wl[237].w[0:7]"  0.0061181087098001654 0.0074166991472393879 
		0.0093221028785045127 0.012600658403595252 0.017298318851760825 0.024230012165124323 
		0.46150704992198771 0.46150704992198771;
	setAttr -s 8 ".wl[238].w[0:7]"  0.063236840964668597 0.082432474367583622 
		0.11207647519131135 0.15376315240459518 0.16886743741713311 0.1685197121434498 0.15329930946737552 
		0.097804598043882557;
	setAttr -s 8 ".wl[239].w[0:7]"  0.074077105949591091 0.094873181720626948 
		0.12324522303711431 0.15266293366272121 0.15767711431767437 0.15576959514542318 0.14238651564541863 
		0.09930833052143026;
	setAttr -s 8 ".wl[240].w[0:7]"  0.078599732149058174 0.099771024495489316 
		0.12703033166217897 0.15137848094717957 0.15408319285957414 0.15127400186508186 0.1384805809582888 
		0.099382655063149125;
	setAttr -s 8 ".wl[241].w[0:7]"  0.074145040204866453 0.094924009697542458 
		0.1234317552657908 0.15250838909321227 0.15749100936967458 0.1555957931397412 0.14228900917019996 
		0.09961499405897245;
	setAttr -s 8 ".wl[242].w[0:7]"  0.063350716710400254 0.082546932247143046 
		0.11234447447749615 0.15359634167665639 0.16856400998884896 0.16821979505462617 0.15313619553698876 
		0.0982415343078403;
	setAttr -s 8 ".wl[243].w[0:7]"  0.056303475436159225 0.074036252912265482 
		0.10330083330107348 0.15210371080506149 0.17861850165271323 0.178618791415247 0.16170085083028746 
		0.095317583647192644;
	setAttr -s 8 ".wl[244].w[0:7]"  0.062000114459820961 0.078440724319809807 
		0.10270287337445541 0.13878427721060194 0.16457630195257683 0.16836186421690222 0.16660135760316877 
		0.1185324868626641;
	setAttr -s 8 ".wl[245].w[0:7]"  0.076638340132912888 0.094861802574335588 
		0.11815145271015226 0.14330390584679426 0.1524828034517107 0.15250325578805149 0.14793635422021656 
		0.11412208527582633;
	setAttr -s 8 ".wl[246].w[0:7]"  0.082375851087350363 0.10084689185429456 
		0.12291487083039257 0.14325160776907339 0.14821138009003884 0.14802708974684856 0.14227447763309214 
		0.11209783098890953;
	setAttr -s 8 ".wl[247].w[0:7]"  0.076703658001275141 0.094903684425226467 
		0.11834352140847113 0.14315049212991837 0.15226545822432153 0.15228575715225506 0.14775188961812655 
		0.1145955390404059;
	setAttr -s 8 ".wl[248].w[0:7]"  0.062133582078315257 0.078573676386099647 
		0.1030023676344767 0.13866048041093601 0.16417693367319416 0.16791180129160224 0.16617521521696302 
		0.11936594330841305;
	setAttr -s 8 ".wl[249].w[0:7]"  0.051321863551497517 0.06563804213042583 
		0.088457493316368485 0.12915502817647714 0.17258792741877865 0.18704225212919079 
		0.18664220948964813 0.11915518378761336;
	setAttr -s 8 ".wl[250].w[0:7]"  0.063381092766755062 0.077950886373244654 
		0.09834413767162363 0.12799162899205715 0.15400161466178067 0.16718081187137759 0.16841740608387101 
		0.14273242157929034;
	setAttr -s 8 ".wl[251].w[0:7]"  0.075859849483836339 0.091740919238498128 
		0.11176385494308613 0.13527877367144819 0.14943555440901732 0.15269239990966135 0.15262050786703654 
		0.13060814047741615;
	setAttr -s 8 ".wl[252].w[0:7]"  0.080849315840109695 0.096949009471851991 
		0.1162770451712499 0.13664609626449586 0.14686627767664978 0.14815579140063107 0.14760075960926386 
		0.1266557045657479;
	setAttr -s 8 ".wl[253].w[0:7]"  0.075900933291454892 0.091764553759780765 
		0.11189308758244952 0.13517126722534362 0.14925281190323036 0.15248972641513231 0.15241828532983248 
		0.13110933449277604;
	setAttr -s 8 ".wl[254].w[0:7]"  0.063434204300157893 0.077991945045569319 
		0.098486343396357548 0.12786023142036115 0.15367393713794253 0.16671912790694784 
		0.16824603898439613 0.14358817180826758;
	setAttr -s 8 ".wl[255].w[0:7]"  0.054694244155731465 0.067829505427907624 
		0.087265183660175702 0.11888486295699111 0.15378512836733746 0.17889107438536941 
		0.18536206713285266 0.15328793391363446;
	setAttr -s 8 ".wl[256].w[0:7]"  0.066207264358183499 0.0799054456603987 
		0.09831596178466237 0.12394675522615918 0.14698372305623481 0.1617624760979714 0.1672853929038462 
		0.15559298091254392;
	setAttr -s 8 ".wl[257].w[0:7]"  0.073232990003925122 0.087617883119582199 
		0.10596904820476208 0.12905131247931817 0.14658287871473674 0.15540491218548824 0.15705405469364173 
		0.14508692059854558;
	setAttr -s 8 ".wl[258].w[0:7]"  0.076274902711425258 0.090855977315212583 
		0.10900953375608749 0.1306658869014142 0.1458755673194311 0.15260138727988576 0.15341649596082724 
		0.14130024875571615;
	setAttr -s 8 ".wl[259].w[0:7]"  0.073239996892099188 0.087614041501482068 
		0.10601347774155771 0.12897586509292561 0.14645456586676842 0.15524398462954242 0.15703962973840457 
		0.14541843853721997;
	setAttr -s 8 ".wl[260].w[0:7]"  0.066208087972090532 0.079894711678868996 
		0.098348807601304239 0.12384860020855978 0.14680024389681712 0.1615066412727359 0.16734148418805014 
		0.15605142318157328;
	setAttr -s 8 ".wl[261].w[0:7]"  0.061987858478932699 0.075135468704480457 
		0.093302087463964345 0.11988002710878169 0.14610148988721047 0.16522296238679285 
		0.17502863331324281 0.16334147265659452;
	setAttr -s 8 ".wl[262].w[0:7]"  0.068238478935071414 0.089657577332206098 
		0.12191738215569772 0.15949123658310532 0.16544599155288617 0.1615952927934729 0.14188362802679616 
		0.091770412620764269;
	setAttr -s 8 ".wl[263].w[0:7]"  0.069756671731902947 0.083424728178654192 
		0.10126970750332233 0.12490157007936328 0.14509074112299664 0.15771665201305862 0.16305093803257117 
		0.15478899133813079;
	setAttr -s 8 ".wl[264].w[0:7]"  0.15872026487261665 0.20920747854153998 
		0.20825067132489725 0.14742294176039408 0.095605724003196585 0.073490278180607244 
		0.062100537207341211 0.045202104109407094;
	setAttr -s 8 ".wl[265].w[0:7]"  0.1562174482130177 0.20956569005997422 
		0.20903361892161762 0.14874327257365325 0.09590035190029518 0.073498051059637415 
		0.062009821966999862 0.045031745304804791;
	setAttr -s 8 ".wl[266].w[0:7]"  0.15403021937745842 0.21122845136936219 
		0.21093851495670554 0.14952922801771978 0.095495176398282824 0.072907401567722283 
		0.061398097035366174 0.04447291127738269;
	setAttr -s 8 ".wl[267].w[0:7]"  0.15436943830140845 0.21248585888257718 
		0.21211957541882348 0.14892409693883296 0.094794516733626738 0.072319994241288071 
		0.060890065835045859 0.044096453648397323;
	setAttr -s 8 ".wl[268].w[0:7]"  0.15698770852159569 0.21199863530376389 
		0.21124715588432916 0.14756300589684412 0.094539657805618946 0.0723527872787567 0.061017168818608046 
		0.04429388049048353;
	setAttr -s 8 ".wl[269].w[0:7]"  0.15914864883741386 0.2103872823792993 
		0.20928781646474715 0.14684618854794299 0.094943883831725626 0.072931180926367759 
		0.061614940908213754 0.04484005810428969;
	setAttr -s 8 ".wl[270].w[0:7]"  0.10798623211194595 0.12594909514490471 
		0.13889896953695152 0.14085521776959481 0.13906936506080353 0.1302566928668549 0.12046880354152179 
		0.096515623967422678;
	setAttr -s 8 ".wl[271].w[0:7]"  0.10731241987269349 0.12543078057687579 
		0.13876389074486567 0.1409565752876468 0.13934008329631201 0.13064931088629922 0.12083992129992258 
		0.096707018035384465;
	setAttr -s 8 ".wl[272].w[0:7]"  0.10672581206010662 0.12500774459807304 
		0.1386870040758833 0.14109137026238891 0.13960072757984276 0.13097718626107463 0.1211202878267568 
		0.096789867335874039;
	setAttr -s 8 ".wl[273].w[0:7]"  0.10681975847856519 0.12511339873452684 
		0.13875353178116367 0.14111687821508404 0.1395885647660263 0.1309052699970884 0.12102264601101995 
		0.096679952016525517;
	setAttr -s 8 ".wl[274].w[0:7]"  0.10750104859846708 0.12564110509943971 
		0.13889399349847359 0.1410087682095949 0.13931382253533839 0.13050592495186944 0.12064625370464056 
		0.096489083402176309;
	setAttr -s 8 ".wl[275].w[0:7]"  0.10808090570045471 0.12605375766730142 
		0.13896257052721339 0.14088190021906694 0.13905530347684023 0.13018522250063738 0.12037275630163621 
		0.096407583606849603;
	setAttr -s 8 ".wl[276].w[0:7]"  0.15659740687619911 0.210810058055167 
		0.21017395301223235 0.14815553449001134 0.095204379070993508 0.072909348875197927 
		0.061498537218500127 0.044650782401698293;
	setAttr -s 8 ".wl[277].w[0:7]"  0.10740474993870518 0.1255355895339029 
		0.13883048824576125 0.14098440923254535 0.1393286859183846 0.13057810147378482 0.12074240159027515 
		0.096595574066640599;
	setAttr -s 8 ".wl[278].w[0:7]"  0.14178100869200455 0.19283016702665912 
		0.19410966868663529 0.1604452896178056 0.10786782045696509 0.082855273676883473 0.069766012611885989 
		0.050344759231160795;
	setAttr -s 8 ".wl[279].w[0:7]"  0.14150231283322623 0.19203839955345509 
		0.19340050676323553 0.16066050755220077 0.10834327516502906 0.083284148009440159 
		0.07014352574253227 0.050627324380880967;
	setAttr -s 8 ".wl[280].w[0:7]"  0.14321725789463091 0.19132108639500589 
		0.19228121514522215 0.15950822588019584 0.10837774646396045 0.083634923622773749 
		0.070577297810803158 0.051082246787407942;
	setAttr -s 8 ".wl[281].w[0:7]"  0.14518632594137862 0.19133741992132786 
		0.19191885903632219 0.15820197729985258 0.10794375411039427 0.08354810293425928 0.070621340630060231 
		0.051242220126404878;
	setAttr -s 8 ".wl[282].w[0:7]"  0.14550597147533234 0.19207127571234919 
		0.19259450864250563 0.15797907024711852 0.10748900023051756 0.083135763653211112 
		0.07025684826545503 0.05096756177351059;
	setAttr -s 8 ".wl[283].w[0:7]"  0.14381654131565597 0.19284590912976468 
		0.19366418084219722 0.15906968373663166 0.10744835405810234 0.08279429657945403 0.069835738713811019 
		0.050525295624383196;
	setAttr -s 8 ".wl[284].w[0:7]"  0.13087984670134506 0.17268496164070121 
		0.17787135442038976 0.16476019550358301 0.12097964776059159 0.094762150032263098 
		0.080170340341014987 0.057891503600111333;
	setAttr -s 8 ".wl[285].w[0:7]"  0.13065622934418628 0.17219860525495476 
		0.17748508444553224 0.16475512467417125 0.12127796703520663 0.095069871408638498 
		0.080450744514508801 0.058106373322801545;
	setAttr -s 8 ".wl[286].w[0:7]"  0.13200526467927537 0.17221073584728508 
		0.17678410193148419 0.16368552726066996 0.12098609406353601 0.095173986412382047 
		0.080697963129081826 0.058456326676285482;
	setAttr -s 8 ".wl[287].w[0:7]"  0.13355724272155051 0.17266465410084667 
		0.176504784131471 0.16265751249764984 0.12041113620949415 0.094967715641898334 0.080656442529112804 
		0.058580512167976703;
	setAttr -s 8 ".wl[288].w[0:7]"  0.13379937010358553 0.17313155084544721 
		0.17687909642904692 0.16264446143693881 0.12012192630570527 0.094669637510144636 
		0.080383843291567794 0.058370114077563824;
	setAttr -s 8 ".wl[289].w[0:7]"  0.13247135310196245 0.17316404444807426 
		0.17754403933354657 0.16367683151106821 0.12039888324400408 0.094568482650322361 
		0.080145183382117263 0.058031182328904848;
	setAttr -s 8 ".wl[290].w[0:7]"  0.12399386079081873 0.15930170589629142 
		0.16752456502543436 0.16288526575463055 0.12936122525396987 0.10392328148723183 0.088649056788101754 
		0.064361039003521359;
	setAttr -s 8 ".wl[291].w[0:7]"  0.12380579242622779 0.1589625386696116 
		0.16728462829251739 0.16281189958782294 0.12955873842991594 0.10416125862536221 0.088875224779656009 
		0.064539919188886199;
	setAttr -s 8 ".wl[292].w[0:7]"  0.12494146310630827 0.1592516312380913 
		0.16679874655476512 0.1620151384471267 0.12910732125821339 0.10409381178026821 0.088982409552886832 
		0.064809478062340178;
	setAttr -s 8 ".wl[293].w[0:7]"  0.12624824266826429 0.15984587285774121 
		0.16657945178485958 0.16130807242310288 0.12847692160400312 0.10379107338078022 0.088859196625513087 
		0.064891168655735673;
	setAttr -s 8 ".wl[294].w[0:7]"  0.12644651934181086 0.16017651131401286 
		0.16681504073330974 0.16136560795621704 0.12828295862903713 0.10355945405463862 0.088638533931344604 
		0.064715374039629167;
	setAttr -s 8 ".wl[295].w[0:7]"  0.1253279940534994 0.15992158001336307 
		0.1672740356941321 0.16214556196111266 0.1287159272394032 0.10362436075179299 0.088535689063705736 
		0.064454851222990925;
	setAttr -s 8 ".wl[296].w[0:7]"  0.11885774824928816 0.14922827260302149 
		0.15978253446931562 0.15868934310032712 0.13491506492965977 0.11162202967654941 0.096304953677916263 
		0.070600053293922146;
	setAttr -s 8 ".wl[297].w[0:7]"  0.11869618449604737 0.14897546001839143 
		0.15962743651019365 0.158596941265012 0.13504496937493224 0.11181028899869026 0.09649331022878245 
		0.07075540910795057;
	setAttr -s 8 ".wl[298].w[0:7]"  0.11967770038908317 0.14938453489228309 
		0.1592751475852357 0.15807512013289365 0.13453643659412554 0.11161641664226389 0.096482885576844965 
		0.070951758187270092;
	setAttr -s 8 ".wl[299].w[0:7]"  0.12080668824292573 0.15001992233435854 
		0.15909829172010742 0.15764885115044175 0.13391576056857088 0.11124097143780115 0.096283695110721934 
		0.070985819435072608;
	setAttr -s 8 ".wl[300].w[0:7]"  0.12097423570906163 0.15026828090047048 
		0.15925239562223564 0.1577293881612124 0.13378632831150011 0.11105700717182931 0.096099505685332973 
		0.070832858438357377;
	setAttr -s 8 ".wl[301].w[0:7]"  0.12000688988950266 0.14988577219888419 
		0.15958423517678832 0.15824777389750905 0.13427710689498268 0.11124430124538001 0.096110434500007738 
		0.070643486196945326;
	setAttr -s 8 ".wl[302].w[0:7]"  0.11472371749027362 0.14109736242129156 
		0.15353206368815811 0.1535086258219894 0.13834853003516764 0.11825572324211502 0.10352709178768493 
		0.077006885513319759;
	setAttr -s 8 ".wl[303].w[0:7]"  0.11458369628014681 0.14090172246285279 
		0.15343258740863042 0.15341608378202873 0.13843032271538069 0.11840458617282064 0.10368574278571226 
		0.077145258392427682;
	setAttr -s 8 ".wl[304].w[0:7]"  0.11544071118065898 0.14135855574985925 
		0.15317025333462478 0.15312621530468984 0.1379375361342316 0.11812291967754029 0.1035745721059869 
		0.077269236512408482;
	setAttr -s 8 ".wl[305].w[0:7]"  0.11642604601345577 0.14199028161646063 
		0.15302311487743819 0.15292456104852706 0.13737714647344854 0.11770133858543282 0.10330751771517681 
		0.077249993670060177;
	setAttr -s 8 ".wl[306].w[0:7]"  0.11656962014714684 0.14218328135452482 
		0.15312325126854084 0.15300870831111368 0.13729414947109514 0.11755526384651992 0.1031520895152605 
		0.077113636085798312;
	setAttr -s 8 ".wl[307].w[0:7]"  0.11572435838391328 0.14174725390177384 
		0.15336983786840563 0.1533027614573558 0.13777270044740189 0.11782802741384082 0.10326054037874355 
		0.076994520148565282;
	setAttr -s 8 ".wl[308].w[0:7]"  0.11147910232827871 0.13466209212312316 
		0.14829187659883636 0.14849844707277535 0.13997663949022904 0.12361168651576841 0.11004598048410787 
		0.083434175386881138;
	setAttr -s 8 ".wl[309].w[0:7]"  0.11135726870850374 0.13450618606434145 
		0.14820716273818504 0.14843027617600857 0.14002648091029296 0.12373018910124585 0.11018158088302946 
		0.083560855418392949;
	setAttr -s 8 ".wl[310].w[0:7]"  0.11211063133104245 0.13496902363665511 
		0.14808555494882544 0.14823940391148407 0.13959304112232807 0.12339907445958513 0.10998999161823482 
		0.083613278971844854;
	setAttr -s 8 ".wl[311].w[0:7]"  0.1129760319306029 0.13557131885080995 
		0.14804104289007353 0.14812854798177483 0.13911957147879722 0.12295911877640314 0.10966800545819465 
		0.083536362633343866;
	setAttr -s 8 ".wl[312].w[0:7]"  0.11310008044561483 0.1357255552961156 
		0.14811999422208927 0.14819726829930591 0.13906795498630758 0.12284246244646725 0.10953506408953972 
		0.083411620214559723;
	setAttr -s 8 ".wl[313].w[0:7]"  0.11235651494481282 0.13527917058801667 
		0.14824913302397066 0.14837626699414627 0.13949154750669396 0.12316396437011302 0.10972151205270651 
		0.083361890519540016;
	setAttr -s 8 ".wl[314].w[0:7]"  0.10932494686675701 0.13032321124773144 
		0.14422549405359228 0.1451089520751232 0.14029749709855668 0.12710902563117554 0.11485723289630193 
		0.088753640130762035;
	setAttr -s 8 ".wl[315].w[0:7]"  0.10921544082690895 0.13019108875486096 
		0.14414812826370274 0.14506128390594186 0.14032850924815954 0.12720653735733017 0.11497632410465609 
		0.088872687538439701;
	setAttr -s 8 ".wl[316].w[0:7]"  0.10989648099247688 0.13064424728487994 
		0.14412724754005327 0.14490031638324263 0.1399625454097726 0.12686284176948598 0.1147373464762394 
		0.088868974143849297;
	setAttr -s 8 ".wl[317].w[0:7]"  0.11067857628956683 0.13121586717006128 
		0.14417516518972562 0.14479693683126296 0.13957182734191562 0.12643073163719026 0.11438564585507521 
		0.088745249685202088;
	setAttr -s 8 ".wl[318].w[0:7]"  0.11078953935405876 0.13134669122751441 
		0.14424818606621218 0.14484551610737892 0.13953884152611748 0.12633438871514838 0.11426874643554359 
		0.088628090568026147;
	setAttr -s 8 ".wl[319].w[0:7]"  0.1101169330508603 0.13090718376268937 
		0.14427757893589588 0.14499655640319498 0.13989851734037306 0.1266690230579057 0.11450140882761931 
		0.088632798621461367;
	setAttr -s 8 ".wl[320].w[0:7]"  0.10760207747626142 0.12677012051326753 
		0.14056503803498879 0.14237277270298629 0.13996193309076774 0.12976913230587178 0.11902363991291434 
		0.093935285962942122;
	setAttr -s 8 ".wl[321].w[0:7]"  0.1075030519586939 0.12665623664594125 
		0.14049484423358397 0.14234047522640372 0.13997961798698788 0.12984924613333218 0.11912837219503281 
		0.094048155620024401;
	setAttr -s 8 ".wl[322].w[0:7]"  0.10812090296960276 0.12709125781458427 
		0.14054385142882952 0.14219864855839454 0.13968297846705255 0.12951195766284757 0.1188584587478991 
		0.09399194435078953;
	setAttr -s 8 ".wl[323].w[0:7]"  0.1088304647718399 0.12762873210513112 
		0.14065448075964859 0.14209764218452736 0.13937201557690132 0.12910250452565006 0.11849068857265868 
		0.093823471503642938;
	setAttr -s 8 ".wl[324].w[0:7]"  0.10893042226596261 0.12774153526253243 
		0.14072133159625166 0.14213105166544118 0.13935237713015827 0.12902305649838278 0.11838774908389446 
		0.093712476497376643;
	setAttr -s 8 ".wl[325].w[0:7]"  0.10831987639524335 0.12731793642268854 
		0.14068085566655575 0.14226435395174108 0.1396456221762381 0.12935241464659397 0.11865082796330795 
		0.093768112777631335;
	setAttr -s 8 ".wl[326].w[0:7]"  0.11212685869056901 0.12841025563011518 
		0.13872444139977108 0.13961148097041981 0.13702366443960962 0.12825133218475171 0.11907557108222339 
		0.096776395602539977;
	setAttr -s 8 ".wl[327].w[0:7]"  0.10650823780677707 0.12418537962503437 
		0.13763609276761116 0.14029078420528973 0.13917584495700655 0.13145673956492784 0.12219350743215578 
		0.098553413641197532;
	setAttr -s 8 ".wl[328].w[0:7]"  0.10116948969719027 0.12011664324238781 
		0.13656342153847284 0.14174759200053252 0.14141984044529254 0.13458073416083677 0.12496547562006306 
		0.099436803295224155;
	setAttr -s 8 ".wl[329].w[0:7]"  0.10196596496569635 0.12106160243828204 
		0.13724478641057022 0.14191088825188228 0.14140316046715032 0.1339542932238213 0.124061059812408 
		0.098398244430189422;
	setAttr -s 8 ".wl[330].w[0:7]"  0.10815291761150431 0.12599986557514184 
		0.13876081301919602 0.14071558531948897 0.13897058406120283 0.13023579253828327 0.12052307819324463 
		0.09664136368193825;
	setAttr -s 8 ".wl[331].w[0:7]"  0.1129745702830013 0.12927913372054575 
		0.13918609039031568 0.13987007737340065 0.13685788093845425 0.12765412973762288 0.1182922176026077 
		0.095885899954051793;
	setAttr -s 8 ".wl[332].w[0:7]"  0.11285120465689412 0.12694587186652526 
		0.13596422635104793 0.13701991960515483 0.13547378490102074 0.12887000686787695 0.12135900856142812 
		0.10151597719005213;
	setAttr -s 8 ".wl[333].w[0:7]"  0.10495248614866248 0.12092907898289369 
		0.1339122178019255 0.13803284087733106 0.13788298659818707 0.13326879005652539 0.12610725224357835 
		0.10491434729089651;
	setAttr -s 8 ".wl[334].w[0:7]"  0.097068631352722423 0.11457466754657721 
		0.13133215843955207 0.14030562147593031 0.1405399034847383 0.13792302012320184 0.13092240167686667 
		0.10733359590041129;
	setAttr -s 8 ".wl[335].w[0:7]"  0.098224500879896093 0.11591733961294165 
		0.13238152733864061 0.14047824918402319 0.14054519627843357 0.13716088730962636 0.12963941214224811 
		0.10565288725419039;
	setAttr -s 8 ".wl[336].w[0:7]"  0.1073212258429297 0.12343152016522158 
		0.13551474882515391 0.13838531110625418 0.137792305624893 0.13172978264588889 0.12381806157042342 
		0.10200704421923541;
	setAttr -s 8 ".wl[337].w[0:7]"  0.11407157667730339 0.1281147339306328 
		0.13657412948173081 0.13731737276313144 0.13529037636018926 0.12810459257139312 0.12030768829404666 
		0.10021952992157224;
	setAttr -s 8 ".wl[338].w[0:7]"  0.110850044624196 0.12381798525047925 
		0.13300450439509851 0.13512113438517298 0.1347432645873563 0.13055763017103586 0.12472860387468827 
		0.10717683271197291;
	setAttr -s 8 ".wl[339].w[0:7]"  0.1038552327535635 0.118340464286977 
		0.13066537661925365 0.13628023523101127 0.13635346500966025 0.13426978474573728 0.12918489153733234 
		0.11105054981646473;
	setAttr -s 8 ".wl[340].w[0:7]"  0.096963285361199927 0.1126740100364544 
		0.12788812007443848 0.13765042049563048 0.13877354801005437 0.13806265700110174 0.13370974035610608 
		0.11427821866501453;
	setAttr -s 8 ".wl[341].w[0:7]"  0.098003178530222265 0.11382014745721897 
		0.12878026617431673 0.13787860097008536 0.13861665407505122 0.13752563694841782 0.13267658321423703 
		0.11269893263045058;
	setAttr -s 8 ".wl[342].w[0:7]"  0.10594398152285935 0.12047106259742189 
		0.13207731872595938 0.13639119522654927 0.13637492207362253 0.13311909848627881 0.12729212293116673 
		0.10833029843614206;
	setAttr -s 8 ".wl[343].w[0:7]"  0.1119081135079837 0.12481380170477402 
		0.13356335502697703 0.13527128142344283 0.13466827519882291 0.12996380977910896 0.12384421760948464 
		0.10596714574940604;
	setAttr -s 8 ".wl[344].w[0:7]"  0.10752445512379452 0.12030019792724141 
		0.13041011809135505 0.13450237310666729 0.1345136479589428 0.13246868026020278 0.12805145324136166 
		0.11222907429043449;
	setAttr -s 8 ".wl[345].w[0:7]"  0.10347771872425174 0.11704118021929286 
		0.12881192693090365 0.1351152024977329 0.13549894391156128 0.13450295958890607 0.13070366206253689 
		0.11484840606481467;
	setAttr -s 8 ".wl[346].w[0:7]"  0.099717419731453524 0.11397295768031722 
		0.12723615337330191 0.13567255461207164 0.13682521638002809 0.13642454903838125 0.13317320245834741 
		0.11697794672609892;
	setAttr -s 8 ".wl[347].w[0:7]"  0.1003086614386917 0.11458990303874969 
		0.1276923869479285 0.13578713634488743 0.13671313317562028 0.13615815901365655 0.13264666980805467 
		0.11610395023241102;
	setAttr -s 8 ".wl[348].w[0:7]"  0.10465746726417981 0.11822138047414492 
		0.12961260572426439 0.13523327246927985 0.13539880388449363 0.13393596693101356 0.12969201552361276 
		0.11324848772901112;
	setAttr -s 8 ".wl[349].w[0:7]"  0.10811495440729552 0.12086593095612537 
		0.13076151698415722 0.13451767393771855 0.13451650817860589 0.13217287871385866 0.12756285267286668 
		0.11148768414937213;
	setAttr -s 8 ".wl[350].w[0:7]"  0.10783398203567218 0.12642031329501927 
		0.13978477294143504 0.1416445902293009 0.13952584239213034 0.12998055424433549 0.11968435144898282 
		0.095125593413123974;
	setAttr -s 8 ".wl[351].w[0:7]"  0.10378517506763707 0.11703983810889523 
		0.12848717365530823 0.13475463932725848 0.13519371562401611 0.13434689141894463 0.13081968733338373 
		0.11557287946455649;
	setAttr -s 8 ".wl[352].w[0:7]"  0.094344570158934896 0.11705613562971799 
		0.13989724676844575 0.14783052478840628 0.14732218498590202 0.13710152197575964 0.12371177113410549 
		0.092736044558727984;
	setAttr -s 8 ".wl[353].w[0:7]"  0.086539792389894815 0.11048591774013346 
		0.13864706437026836 0.15268491152088373 0.15263217056409994 0.1421404458981512 0.12620817344885446 
		0.09066152406771405;
	setAttr -s 8 ".wl[354].w[0:7]"  0.072229712831550191 0.096425371692257095 
		0.13281253512916108 0.16464383382714523 0.16551412622836997 0.15372378605261533 0.13023266087130803 
		0.084417973367593116;
	setAttr -s 8 ".wl[355].w[0:7]"  0.0674729812306267 0.091192554001602338 
		0.12939090968365816 0.16945444611782295 0.17133644618942528 0.15850210481950061 0.13118215069227093 
		0.081468407265093037;
	setAttr -s 8 ".wl[356].w[0:7]"  0.080272060059748032 0.10463096308968584 
		0.13643251051988395 0.15754837245698167 0.15764633215068488 0.14692641113744756 0.12827522661681059 
		0.088268123968757634;
	setAttr -s 8 ".wl[357].w[0:7]"  0.091992271709231022 0.11515312659724854 
		0.13948681374229832 0.14917806281804472 0.1488839885373619 0.13860988020710216 0.12454277902019208 
		0.092153077368521269;
	setAttr -s 8 ".wl[358].w[0:7]"  0.094068669528395987 0.11232708320299141 
		0.13088783874780166 0.14162882755421377 0.14210692196958535 0.1396880719534547 0.13224052896919344 
		0.10705205807436365;
	setAttr -s 8 ".wl[359].w[0:7]"  0.084302925626499728 0.10368184779415804 
		0.12674520672158149 0.14502283691798751 0.14768573324019504 0.14651243021401389 0.13842548292186818 
		0.10762353656369605;
	setAttr -s 8 ".wl[360].w[0:7]"  0.064285790263467188 0.082873710522097646 
		0.1112464496510857 0.14941852018260063 0.16615086242383878 0.16615086373453808 0.15567590953547097 
		0.10419789368690098;
	setAttr -s 8 ".wl[361].w[0:7]"  0.056410516822146789 0.073689842494355923 
		0.10197442828575394 0.14842943231298814 0.17724311065025822 0.17756032308203565 0.16497310396888518 
		0.099719242383576184;
	setAttr -s 8 ".wl[362].w[0:7]"  0.075971552108328469 0.095491303339383674 
		0.12127116944051849 0.14757975210153457 0.15413278792351967 0.15371338028898496 0.14493593370814187 
		0.10690412108958838;
	setAttr -s 8 ".wl[363].w[0:7]"  0.091177947170403464 0.10987390037231221 
		0.12971884172539541 0.14269566309033502 0.14362993356005735 0.14164575304433388 0.13404759387097845 
		0.10721036716618428;
	setAttr -s 8 ".wl[364].w[0:7]"  0.088876452770678571 0.10463522149822896 
		0.12202051514132953 0.13685676863443863 0.14218133013410253 0.14227683578235084 0.14063382368561181 
		0.12251905235325911;
	setAttr -s 8 ".wl[365].w[0:7]"  0.080242972476209137 0.09644597401563694 
		0.11632951689431423 0.13677920934899138 0.14714711614171525 0.14837700975312595 0.14773058276878814 
		0.12694761860121898;
	setAttr -s 8 ".wl[366].w[0:7]"  0.063377939958673954 0.078599278391488156 
		0.10046988295068085 0.1314370046848812 0.15703682114222078 0.16666053156036281 0.16688732070493562 
		0.13553122060675665;
	setAttr -s 8 ".wl[367].w[0:7]"  0.057205005440536631 0.071547023055891015 
		0.09300963090677504 0.12684954199492429 0.16007366428088116 0.17636169318010669 0.17726309001643509 
		0.13769035112444997;
	setAttr -s 8 ".wl[368].w[0:7]"  0.073077476761719273 0.089140023995281426 
		0.11021749600934222 0.13560757008489313 0.15156500354124428 0.15512109025791909 0.15499006167369461 
		0.130281277675906;
	setAttr -s 8 ".wl[369].w[0:7]"  0.086299158393883482 0.10226354484933621 
		0.12039530739273091 0.13699081842110322 0.14369229737134617 0.14398955745864209 0.14270148372145511 
		0.12366783239150288;
	setAttr -s 8 ".wl[370].w[0:7]"  0.081731011002807691 0.096196230432682814 
		0.11345018984122522 0.13184584430802007 0.14340575677748263 0.14765110583605573 0.14802930566164668 
		0.13769055614007911;
	setAttr -s 8 ".wl[371].w[0:7]"  0.076309159782305278 0.090756951705770222 
		0.10891508651630868 0.13009733220542538 0.14524459045831525 0.15215307875965145 0.15349396839402299 
		0.14302983217820081;
	setAttr -s 8 ".wl[372].w[0:7]"  0.067226485564126609 0.081145620610973371 
		0.099946581678202376 0.12518425456720048 0.14723156493310036 0.16046048597922535 
		0.16528873807799266 0.15351626858917888;
	setAttr -s 8 ".wl[373].w[0:7]"  0.064496531692386783 0.078147494573944293 
		0.096903449572745687 0.1231552285261663 0.14745710848820537 0.16320546441827671 0.16964580045591404 
		0.15698892227236094;
	setAttr -s 8 ".wl[374].w[0:7]"  0.072206179846117352 0.086491206415609284 
		0.10501364527168301 0.1282645529813895 0.14646644820019925 0.15595913678109463 0.15837041209768901 
		0.14722841840621803;
	setAttr -s 8 ".wl[375].w[0:7]"  0.080069320412049505 0.09455577308963814 
		0.11208633583464349 0.13141440031865831 0.14404987196416408 0.14906084479499807 0.14962387271051747 
		0.13913958087533099;
	setAttr -s 8 ".wl[376].w[0:7]"  0.084662800584622791 0.11162423701340968 
		0.14495030156251226 0.15887009717000233 0.15787177022798601 0.13986224842777045 0.11982112419376788 
		0.082337420819928675;
	setAttr -s 8 ".wl[377].w[0:7]"  0.073417188083975876 0.087236350047556893 
		0.10490409588494769 0.12675110521868163 0.14419557989196818 0.15418485566006224 0.15824160352454114 
		0.15106922168826634;
	setAttr -s 8 ".wl[378].w[0:7]"  0.28596889363251382 0.28344141095886172 
		0.15118287065669389 0.089623653417156932 0.062273884297844688 0.050273673167710836 
		0.043763868193641274 0.033471745675576842;
	setAttr -s 8 ".wl[379].w[0:7]"  0.29233653637665635 0.28886626723623515 
		0.14780319463760883 0.087014598668363169 0.060381987172835563 0.048733299969578689 
		0.042420120735779561 0.032443995202942576;
	setAttr -s 8 ".wl[380].w[0:7]"  0.29986858884977186 0.2962528650268425 
		0.14406784650675228 0.083711205945511291 0.057872168206238507 0.046645140311713011 
		0.040576611576311788 0.031005573576858764;
	setAttr -s 8 ".wl[381].w[0:7]"  0.30035480301191098 0.29774461566734733 
		0.14417369005100336 0.083244803365239928 0.057405611894321792 0.046218542670084684 
		0.040182219824838668 0.030675713515253025;
	setAttr -s 8 ".wl[382].w[0:7]"  0.29303077551153334 0.29127396465110134 
		0.14830846515514431 0.086274338419590424 0.059574745038501062 0.047977850552037966 
		0.041714486314546544 0.031845374357545073;
	setAttr -s 8 ".wl[383].w[0:7]"  0.2862062135337437 0.28442102142328007 
		0.15154348270017762 0.089330992394900277 0.061921215703341345 0.049935462665632487 
		0.043444610045615312 0.033197001533309262;
	setAttr -s 8 ".wl[384].w[0:7]"  0.06700122972417015 0.091153625392070725 
		0.13095119025805343 0.17172012437833825 0.17307875861405683 0.15770902371420648 0.12891876724089357 
		0.079467280678210434;
	setAttr -s 8 ".wl[385].w[0:7]"  0.067325411314904049 0.091603854393062345 
		0.1314768956551374 0.17164424459805422 0.17284240024766159 0.15718470027563966 0.12853058166937778 
		0.079391911846162955;
	setAttr -s 8 ".wl[386].w[0:7]"  0.066283717134007963 0.090461651612559521 
		0.13082689162058142 0.17302946473056716 0.17439498718975352 0.15809890885402261 0.12837680086954897 
		0.078527577988958916;
	setAttr -s 8 ".wl[387].w[0:7]"  0.064860002262778632 0.088781852532793248 
		0.12953110958541186 0.17459684737110923 0.17635253452155369 0.15963846258185116 0.12857582763444833 
		0.077663363510053873;
	setAttr -s 8 ".wl[388].w[0:7]"  0.064519697049129063 0.088304957574803444 
		0.12895137338870943 0.17467189576592307 0.17663902393311362 0.16022243026480459 0.12897504624539477 
		0.077715575778121979;
	setAttr -s 8 ".wl[389].w[0:7]"  0.065620044720916468 0.089535701911335905 
		0.12972391293641566 0.17318052322852798 0.17491423868558398 0.15920393688367696 0.12916492095533377 
		0.078656720678209335;
	setAttr -s 8 ".wl[390].w[0:7]"  0.29291952112536918 0.29034945398415696 
		0.1479148387793601 0.086532475319444566 0.059894453986271745 0.048286093917414862 
		0.042006086735609766 0.032097076152372943;
	setAttr -s 8 ".wl[391].w[0:7]"  0.065929230449698784 0.089975190542195341 
		0.13026807971779053 0.17314496471894286 0.17469061331129482 0.15866523228150514 0.12875829801164129 
		0.078568390966931342;
	setAttr -s 8 ".wl[392].w[0:7]"  0.25050894618202085 0.2816478797130359 
		0.18507855442028651 0.09655151170365299 0.062874917353971507 0.049363392910668033 
		0.042335735691664086 0.031639062024700126;
	setAttr -s 8 ".wl[393].w[0:7]"  0.25159902428166953 0.27854950674767176 
		0.18390627176548993 0.097246832961526974 0.063609064047289221 0.050023381129018447 
		0.042937361960822269 0.032128557106511912;
	setAttr -s 8 ".wl[394].w[0:7]"  0.24813585302525998 0.27048795074870674 
		0.18499492942907358 0.10027257093402236 0.065986752165238707 0.051993155356170849 
		0.044666755224302745 0.033462033117224788;
	setAttr -s 8 ".wl[395].w[0:7]"  0.24407816497462481 0.26568600454656227 
		0.18688113169076762 0.10249696402098851 0.067570772480673086 0.053256765590328277 
		0.04575468331466425 0.034275513381391072;
	setAttr -s 8 ".wl[396].w[0:7]"  0.24314132064764268 0.26783879598707849 
		0.18818406795744175 0.10203854997654617 0.066985880575470891 0.052709654764618211 
		0.04524768086035335 0.033854049230848539;
	setAttr -s 8 ".wl[397].w[0:7]"  0.24612861371995315 0.27562145303617724 
		0.18751106803123044 0.099140254996607502 0.064680168824263612 0.050795479769544079 
		0.043566076615826947 0.032556885006397147;
	setAttr -s 8 ".wl[398].w[0:7]"  0.16763309316687064 0.25707785292734397 
		0.2412445630825083 0.12312938090502186 0.073827120580478175 0.055905635473248477 
		0.047037930067150222 0.03414442379737842;
	setAttr -s 8 ".wl[399].w[0:7]"  0.17078449720674241 0.25333332375737677 
		0.23715740768742691 0.1239415606271634 0.074983298877069574 0.056942685212618624 
		0.047972447048286064 0.034884779583316226;
	setAttr -s 8 ".wl[400].w[0:7]"  0.172797371796407 0.24668298215969325 
		0.23214959738821092 0.12634712872464224 0.077298103233159915 0.058880282353173684 
		0.049668182771824568 0.036176351572888399;
	setAttr -s 8 ".wl[401].w[0:7]"  0.17191960582006 0.2436231158918746 
		0.23085339165882243 0.12800990187356803 0.07852681625215073 0.059834662225249628 
		0.050474011007654494 0.036758495270620112;
	setAttr -s 8 ".wl[402].w[0:7]"  0.1693113364887861 0.24650480897931518 
		0.23422829435291309 0.12757097423508335 0.077608883055071562 0.058972579606521761 
		0.049683736956527259 0.036119386325781641;
	setAttr -s 8 ".wl[403].w[0:7]"  0.16708158911504298 0.25323109456305082 
		0.23957336063148524 0.12512607580152144 0.07523941996844756 0.056992332827380747 
		0.047952646849188832 0.034803480243882336;
	setAttr -s 8 ".wl[404].w[0:7]"  0.12677943387888937 0.23330935735710936 
		0.23837286408139768 0.15775453453366675 0.08835592384489295 0.064547281705766457 
		0.053284955275934645 0.037595649322342495;
	setAttr -s 8 ".wl[405].w[0:7]"  0.12970846407214293 0.23057798430159313 
		0.23434305439021583 0.15734550519290066 0.089535321329158174 0.065706217922254048 
		0.054345603572557355 0.038437849219177714;
	setAttr -s 8 ".wl[406].w[0:7]"  0.13223268731842319 0.22591076861896747 
		0.22896939699391353 0.15806096824786584 0.091624805553281341 0.067552492273242851 
		0.055974061229981026 0.039674819764324742;
	setAttr -s 8 ".wl[407].w[0:7]"  0.13200324268433211 0.22387123427455891 
		0.22723297126419664 0.159194518059914 0.092644629957124774 0.068324890788009851 0.056611593452324693 
		0.040116919519539024;
	setAttr -s 8 ".wl[408].w[0:7]"  0.12944009938628048 0.2260744764253623 
		0.23050583739991826 0.15985604691627167 0.091713409222570208 0.067343847684137662 
		0.055694415995575355 0.039371866969884137;
	setAttr -s 8 ".wl[409].w[0:7]"  0.12676119553736789 0.23080714297789984 
		0.23622985905581459 0.15915870783723099 0.089526734672413177 0.065421006254235123 
		0.054003074601381464 0.038092279063657079;
	setAttr -s 8 ".wl[410].w[0:7]"  0.10398123545500511 0.18759436504553165 
		0.22429206057379145 0.19550833644437701 0.10833932262756617 0.076323646548603366 
		0.061726214727751139 0.042234818577373955;
	setAttr -s 8 ".wl[411].w[0:7]"  0.10646862680259767 0.18807907804157289 
		0.22030423550205955 0.19258770426933225 0.10916363802768887 0.077453655269041743 
		0.062817234743176492 0.043125827344530417;
	setAttr -s 8 ".wl[412].w[0:7]"  0.10859189523869903 0.18707056924592022 
		0.21573550600617322 0.19031107434421587 0.11066479457653272 0.07906847114897006 0.064292467392378316 
		0.044265222047110468;
	setAttr -s 8 ".wl[413].w[0:7]"  0.10837220760142867 0.18578016588145549 
		0.21471659535747029 0.19066448224485008 0.11146583302039863 0.079661796098845189 
		0.0647658980993569 0.044573021696194835;
	setAttr -s 8 ".wl[414].w[0:7]"  0.10610428909666866 0.18538262005306486 
		0.21805493786327373 0.19335162662281105 0.11085275798777421 0.078689915242634079 
		0.063800272944459835 0.043763580189313804;
	setAttr -s 8 ".wl[415].w[0:7]"  0.10384289665873017 0.18618785723014877 
		0.22303588040680294 0.19592477495456859 0.10923352250420303 0.076970060033931725 
		0.06223847980003306 0.042566528411581692;
	setAttr -s 8 ".wl[416].w[0:7]"  0.08832697308762627 0.14670416315698215 
		0.20990492440047581 0.20933484707899958 0.13380492764996946 0.091588649716270384 
		0.072454650820159422 0.047880864089516924;
	setAttr -s 8 ".wl[417].w[0:7]"  0.090500453436662867 0.14854448060850245 
		0.20645193624265379 0.2056852917805238 0.13382076992568742 0.092595337041456935 0.073560893577429745 
		0.048840837387082815;
	setAttr -s 8 ".wl[418].w[0:7]"  0.09229799585382506 0.14939954903809624 
		0.20292126429768029 0.20214214022170204 0.1344142016323519 0.093960646663454231 0.074924069313675651 
		0.04994013297921452;
	setAttr -s 8 ".wl[419].w[0:7]"  0.092046873737764157 0.14864054858158793 
		0.20247625078523268 0.20186775396372442 0.1350797076917277 0.094447407904218628 0.075290182160872063 
		0.050151275174872563;
	setAttr -s 8 ".wl[420].w[0:7]"  0.090027407659852288 0.14700963928299024 
		0.20549783967615837 0.2050616505746822 0.13522361009904885 0.093598846270429553 0.07431023932553571 
		0.04927076711130287;
	setAttr -s 8 ".wl[421].w[0:7]"  0.088107468500538078 0.14593151847638627 
		0.2093896903904085 0.20897778007928078 0.1345470461213969 0.09210711114842772 0.072839015595882697 
		0.048100369687679077;
	setAttr -s 8 ".wl[422].w[0:7]"  0.078088694661961611 0.12003719129365489 
		0.18861506312804471 0.19705937134845988 0.16217250346656575 0.11186412203574582 0.086847584869735983 
		0.05531546919583142;
	setAttr -s 8 ".wl[423].w[0:7]"  0.079912747266444886 0.1219755582216337 
		0.18708958912353454 0.19408296598140398 0.16059909285363952 0.11232948836736258 0.087749100795130056 
		0.056261457390850748;
	setAttr -s 8 ".wl[424].w[0:7]"  0.081363274475010683 0.12319897684454453 
		0.18513900801360494 0.19130955859836443 0.1596986379411901 0.1131514022335425 0.088859730483794488 
		0.05727941140994839;
	setAttr -s 8 ".wl[425].w[0:7]"  0.081077916062903072 0.12263821928072224 
		0.18463292534630374 0.19119231715075077 0.16026895301797384 0.11360119145109164 0.089168514415341377 
		0.057419963274913444;
	setAttr -s 8 ".wl[426].w[0:7]"  0.079345607260735251 0.12083833915915844 
		0.18599245089042526 0.19385384971433814 0.16181175161130842 0.11325008671981064 0.088369857742597382 
		0.056538056901626436;
	setAttr -s 8 ".wl[427].w[0:7]"  0.077807146700394708 0.11946099382396411 
		0.18801781755524585 0.19694849470544237 0.16281995165932692 0.11233518787234523 0.087159182299425444 
		0.055451225383855426;
	setAttr -s 8 ".wl[428].w[0:7]"  0.07172728656438622 0.10457613131572506 
		0.16221362323920138 0.18743309068620898 0.1781966297697074 0.13145619007845816 0.10155746690347842 
		0.062839581442834344;
	setAttr -s 8 ".wl[429].w[0:7]"  0.073363034277635922 0.10644246895550297 
		0.16241248934368074 0.18491029663209418 0.17570430594936912 0.13121169137279737 0.1021757114236849 
		0.063780002045234943;
	setAttr -s 8 ".wl[430].w[0:7]"  0.074615331799692486 0.1076873429307724 
		0.16198094167309987 0.18269961464011805 0.17387527437006409 0.1313941260921368 0.10300265539488436 
		0.064744713099231743;
	setAttr -s 8 ".wl[431].w[0:7]"  0.074305600555501922 0.10718721277331168 
		0.16143627496588103 0.18275993048256561 0.17430868745259989 0.13185974826180111 0.10330180251441512 
		0.064840742993923728;
	setAttr -s 8 ".wl[432].w[0:7]"  0.072735142055266072 0.10541967371749233 
		0.16125357672007648 0.18506097950873976 0.17663248775170676 0.13216878619201158 0.10277088437120979 
		0.063958469683497249;
	setAttr -s 8 ".wl[433].w[0:7]"  0.071408537436765146 0.10405253213513697 
		0.16159529455163194 0.1875262466094271 0.17869640373256315 0.13194778282724065 0.10185217827608614 
		0.062921024431148956;
	setAttr -s 8 ".wl[434].w[0:7]"  0.066901225632017544 0.09342979221753038 
		0.13945984341645035 0.17949127842051688 0.17946177288633142 0.15079075552636473 0.1185767984278685 
		0.07188853347292018;
	setAttr -s 8 ".wl[435].w[0:7]"  0.068394395055966534 0.095181722028048019 
		0.14053304622185805 0.1773878559167113 0.17730795396628346 0.14967075162720594 0.11872712984254599 
		0.072797145341380834;
	setAttr -s 8 ".wl[436].w[0:7]"  0.069503387562245458 0.096371318072699677 
		0.14094773768997368 0.17564977641668689 0.17554873072430313 0.14911460868681228 0.11915824302449238 
		0.073706197822786632;
	setAttr -s 8 ".wl[437].w[0:7]"  0.069182400905149197 0.095907116800160216 
		0.14041246438877014 0.1758245502779047 0.17576221078268731 0.14962749532691172 0.1195021357138043 
		0.073781625804612436;
	setAttr -s 8 ".wl[438].w[0:7]"  0.067738678778745592 0.09422829126222923 
		0.13940592301556204 0.17777905587522702 0.17775926115821211 0.1507425476199479 0.11941774387229009 
		0.072928498417786064;
	setAttr -s 8 ".wl[439].w[0:7]"  0.066565686861598292 0.09293936998700901 
		0.13886509927127788 0.17971106833091943 0.17970191756341619 0.15135160810843487 0.11892222022283395 
		0.071943029654510465;
	setAttr -s 8 ".wl[440].w[0:7]"  0.074619844554941014 0.098345051693863109 
		0.13247841856445189 0.16080307197873853 0.16175816656894859 0.15239793775651611 0.13173086701087447 
		0.087866641871666318;
	setAttr -s 8 ".wl[441].w[0:7]"  0.077069251400375988 0.10155279387494862 
		0.13567818044641769 0.1603841299322159 0.16064038410160719 0.14926971677686723 0.12874363704674405 
		0.086661906420823165;
	setAttr -s 8 ".wl[442].w[0:7]"  0.069898066615982871 0.094344356927670681 
		0.13276374316153991 0.16835971953656353 0.16922868260847129 0.15505047540790295 0.12888052308493422 
		0.08147443265693452;
	setAttr -s 8 ".wl[443].w[0:7]"  0.056511831211753669 0.078287815973214936 
		0.11916231877217882 0.182702721719085 0.18935755856235714 0.17087553739190336 0.1304000344416282 
		0.072702181927878973;
	setAttr -s 8 ".wl[444].w[0:7]"  0.052683421956186846 0.072875204867621418 
		0.11170406108721974 0.18207257310123579 0.19516591378347245 0.17933898405998666 0.13426691705488455 
		0.071892924089392587;
	setAttr -s 8 ".wl[445].w[0:7]"  0.064197567555710905 0.086552764492711445 
		0.12374132349790404 0.16881300685030748 0.17354454474909034 0.16409662953442727 0.13609386602731563 
		0.082960297292532875;
	setAttr -s 8 ".wl[446].w[0:7]"  0.075450711090722183 0.095406060401401455 
		0.12237512694758075 0.14908008826031227 0.15495626854866482 0.15413176635566347 0.14384261294112005 
		0.10475736545453512;
	setAttr -s 8 ".wl[447].w[0:7]"  0.078904815109556686 0.099589968506333976 
		0.12643231549156958 0.14980961399915957 0.15297106531782795 0.15090042277517177 0.13937915141438464 
		0.1020126473859958;
	setAttr -s 8 ".wl[448].w[0:7]"  0.07016009330302686 0.090865796873252955 
		0.12116671437908047 0.15479607588075339 0.16158429874527491 0.15966238914195402 0.1442483599390072 
		0.097516271737650081;
	setAttr -s 8 ".wl[449].w[0:7]"  0.051094759579400392 0.068203298659992556 
		0.098467782607276289 0.15556333248723725 0.18921739134151144 0.18903465805036121 
		0.16160123674626348 0.086817540527957454;
	setAttr -s 8 ".wl[450].w[0:7]"  0.043543700437998538 0.058108160094462701 
		0.084700921586999461 0.14336785374083605 0.20446788105541636 0.2056816511416816 0.17664106145484665 
		0.083488770487758698;
	setAttr -s 8 ".wl[451].w[0:7]"  0.061512156631999784 0.079812011526267629 
		0.10862982085890611 0.15004389224627587 0.16991437010892774 0.16991943837262768 0.15808078677965168 
		0.10208752347534361;
	setAttr -s 8 ".wl[452].w[0:7]"  0.072001339602776618 0.08896029702636736 
		0.11192733408773328 0.13909950780532915 0.15432475779034419 0.15591216614977155 0.15452329825980429 
		0.12325129927787358;
	setAttr -s 8 ".wl[453].w[0:7]"  0.075259465739341683 0.092791406659288631 
		0.11582514884093008 0.14098765318941558 0.15254431456886652 0.15297790768331446 0.15029515815074032 
		0.11931894516810269;
	setAttr -s 8 ".wl[454].w[0:7]"  0.067649086101923994 0.08491132207971834 
		0.10949305050364555 0.14116815728988369 0.1594319174053819 0.16083676841826983 0.15818672864366867 
		0.11832296955750808;
	setAttr -s 8 ".wl[455].w[0:7]"  0.051434612381248385 0.065952842276930698 
		0.089357409986894815 0.13075878375020025 0.17395636766378125 0.18621839770495718 
		0.18524007225347683 0.1170815139825106;
	setAttr -s 8 ".wl[456].w[0:7]"  0.044493309112668945 0.057112589107744451 
		0.077992811584479557 0.11846976949189909 0.17397392572749024 0.20448726753618784 
		0.20460635698302682 0.11886397045650307;
	setAttr -s 8 ".wl[457].w[0:7]"  0.059361772480925799 0.074751929950156171 
		0.097945499916880632 0.13315734071221433 0.16336622997802863 0.17208611268392152 
		0.17192656843156437 0.12740454584630861;
	setAttr -s 8 ".wl[458].w[0:7]"  0.066639215042074637 0.081646826376636172 
		0.10245339533242764 0.13036064334306458 0.15279218034931116 0.16240102085604005 0.16321353631190236 
		0.14049318238854336;
	setAttr -s 8 ".wl[459].w[0:7]"  0.068797112755530423 0.08418808516205406 
		0.10520721484853458 0.13237036675068337 0.15260032091157627 0.15986732151049288 0.1601112023375911 
		0.13685837572353726;
	setAttr -s 8 ".wl[460].w[0:7]"  0.064007694551500224 0.07901860193798034 
		0.10033777736698296 0.13027848019984298 0.1553251302267363 0.16588309375515817 0.166472180251753 
		0.138677041710046;
	setAttr -s 8 ".wl[461].w[0:7]"  0.055126203595494548 0.068762795589991849 
		0.089272175771655832 0.12230230545765948 0.15754900764648599 0.17918755667440875 
		0.18254036022782785 0.14525959503647576;
	setAttr -s 8 ".wl[462].w[0:7]"  0.051746484635312645 0.064609744867611243 
		0.084229859436532883 0.11710852371325674 0.15573352507269936 0.18422322285807261 
		0.19131625746546679 0.15103238195104776;
	setAttr -s 8 ".wl[463].w[0:7]"  0.05884695995107439 0.072807725131169052 
		0.093221780045443708 0.12416031017717799 0.15468422488242498 0.17256827443858758 
		0.17596419266323771 0.1477465327108847;
	setAttr -s 8 ".wl[464].w[0:7]"  0.067027296140726764 0.092421787177337664 
		0.13534150180548588 0.17590710467772744 0.17619283908108321 0.15428873672237781 0.12344868800662992 
		0.075372046388631347;
	setAttr -s 8 ".wl[465].w[0:7]"  0.060615381199677056 0.074509184666657069 
		0.094434254301445877 0.12381802123011615 0.15217624577181382 0.16941624104310182 
		0.17378205447508174 0.15124861731210637;
	setAttr -s 8 ".wl[466].w[0:7]"  0.42105094502376489 0.20136814359775082 
		0.11097671587330912 0.077276697431541669 0.05903854282907945 0.049935747698002395 
		0.044650316248710492 0.035702891297841113;
	setAttr -s 8 ".wl[467].w[0:7]"  0.43193211901837425 0.1993553108580505 
		0.108743402738434 0.0754814237066775 0.057576492170003407 0.048662940669298327 0.043493987430582637 
		0.034754323408579368;
	setAttr -s 8 ".wl[468].w[0:7]"  0.44777175662686158 0.19618158104242212 
		0.10549739812637315 0.072909241782834325 0.05550064714189664 0.046861699602666694 
		0.041860538572423514 0.033417137104522092;
	setAttr -s 8 ".wl[469].w[0:7]"  0.45122051794090801 0.19553004762058088 
		0.10478762059637417 0.072338871954316986 0.05504177426774258 0.04646293834404136 
		0.041498622662044668 0.033119606613991333;
	setAttr -s 8 ".wl[470].w[0:7]"  0.43770090203884621 0.198432931264616 
		0.10755135674824182 0.074495110595710443 0.056774490256965016 0.047962174446889223 
		0.042856047873164646 0.034226986775566633;
	setAttr -s 8 ".wl[471].w[0:7]"  0.42350867646094903 0.20104420544432219 
		0.11046807628435396 0.076843376472969321 0.058682481721965475 0.049622948278582636 
		0.044364712232170804 0.035465523104686737;
	setAttr -s 8 ".wl[472].w[0:7]"  0.084436446582138142 0.10972182716488386 
		0.14076611839963368 0.15613135796098654 0.1559367650137426 0.14233627121822326 0.12404717192323315 
		0.086624041737158888;
	setAttr -s 8 ".wl[473].w[0:7]"  0.083300957732405784 0.10867502900700753 
		0.14051958072197204 0.15704402577857021 0.15690284762164505 0.14310829954643794 0.12428618477154248 
		0.086163074820418933;
	setAttr -s 8 ".wl[474].w[0:7]"  0.081734002763530128 0.10720164632536408 
		0.14011158956121983 0.15836064195910612 0.15828227638580469 0.14420907061020771 0.12461027526790396 
		0.085490497126863491;
	setAttr -s 8 ".wl[475].w[0:7]"  0.081337684366790661 0.1068231619410098 
		0.13998201619055106 0.15870654704787465 0.15864290577859808 0.14449999854032744 0.12469702998330251 
		0.085310656151545872;
	setAttr -s 8 ".wl[476].w[0:7]"  0.082540478727962038 0.10796265156905233 
		0.14029412836604266 0.1576788710601931 0.15757429877251528 0.14365397560044219 0.12446171072518253 
		0.085833885178609862;
	setAttr -s 8 ".wl[477].w[0:7]"  0.08407098649598635 0.10938592392606501 
		0.14066795183920755 0.15642364412344606 0.1562503710762049 0.14259283747787235 0.12413526571560651 
		0.086473019345611274;
	setAttr -s 8 ".wl[478].w[0:7]"  0.43615983023349364 0.19856302320499111 
		0.1078698958222167 0.074780792685156305 0.05701278988187744 0.048173540920664927 
		0.043050087660971882 0.034390039590628023;
	setAttr -s 8 ".wl[479].w[0:7]"  0.082901967727467246 0.10830653749509093 
		0.14041496262842851 0.15738232853573675 0.1572598349553255 0.14338742106681021 0.1243670914452762 
		0.085979856145864494;
	setAttr -s 8 ".wl[480].w[0:7]"  0.46957151073335013 0.22363885980314355 
		0.09867796500211494 0.063246934986144962 0.046252062071474906 0.038293796475191863 
		0.03382290130142554 0.026495969627154205;
	setAttr -s 8 ".wl[481].w[0:7]"  0.46311382762353864 0.22475642363426612 
		0.10019218273580287 0.064357412072584524 0.047100372218577428 0.039010500130753037 
		0.034462726502673457 0.027006555081803947;
	setAttr -s 8 ".wl[482].w[0:7]"  0.43626664262841636 0.22939372694488552 
		0.1064448451146465 0.068962242335645435 0.050642901439232314 0.042007441474848847 
		0.037140053213509064 0.029142146848815952;
	setAttr -s 8 ".wl[483].w[0:7]"  0.4197778717960543 0.23150310689699041 
		0.11036102371840126 0.071939851039836022 0.052965841998541284 0.043983065615039507 
		0.038909929698724269 0.030559309236412879;
	setAttr -s 8 ".wl[484].w[0:7]"  0.42330891879761995 0.23142958144317038 
		0.10947076168556806 0.071219677180142646 0.052397899786903075 0.043496165199615598 
		0.038471887784305651 0.030205108122674677;
	setAttr -s 8 ".wl[485].w[0:7]"  0.44547533872348027 0.2285491100525229 
		0.10418618449683129 0.067220725099580075 0.049290622503947917 0.040856362743596962 
		0.036108374164368649 0.028313282215672017;
	setAttr -s 8 ".wl[486].w[0:7]"  0.3018973187267745 0.29848001703346377 
		0.1430692740986266 0.082761549543538579 0.057143692012228672 0.04603423523975235 
		0.040034952047098171 0.030578961298517414;
	setAttr -s 8 ".wl[487].w[0:7]"  0.29981591722670886 0.29611099709348299 
		0.1440646923389757 0.0837559490427741 0.05791661582022993 0.046685515692524548 0.040613831584417427 
		0.031036481200886517;
	setAttr -s 8 ".wl[488].w[0:7]"  0.29178307491294048 0.28722749108484769 
		0.14765849045824572 0.087516960919488768 0.06090643224919997 0.049217150181547813 
		0.042869353099171538 0.032821047094557881;
	setAttr -s 8 ".wl[489].w[0:7]"  0.28658146902922027 0.28147250634585552 
		0.1497546956920757 0.089950515447215981 0.062897658170099707 0.05091863916330807 
		0.044392023483229189 0.03403249266899553;
	setAttr -s 8 ".wl[490].w[0:7]"  0.28799369049600082 0.28316465646159683 
		0.14921395357494271 0.089251487858573897 0.062324429909173314 0.050425529402639585 
		0.043949269148983033 0.033676983148089888;
	setAttr -s 8 ".wl[491].w[0:7]"  0.29517814172023898 0.29118936099139364 
		0.14620020164443506 0.085864505849034559 0.059586918405689041 0.048093689391607256 
		0.041865693806229475 0.032021488191371954;
	setAttr -s 8 ".wl[492].w[0:7]"  0.22262375053822145 0.25132766669902318 
		0.19862556763841294 0.11146232228756409 0.073018490198236946 0.057283914099455061 
		0.049074924715762108 0.036583363823324208;
	setAttr -s 8 ".wl[493].w[0:7]"  0.22257629981717802 0.24966025404051012 
		0.19795896220460324 0.11201189752771647 0.073569546717620116 0.057771497294264798 
		0.049515038127406395 0.036936504270700873;
	setAttr -s 8 ".wl[494].w[0:7]"  0.222034796734807 0.24349147995763123 
		0.19543230280450469 0.11404315777950384 0.075723415394020638 0.059690808840861732 
		0.051253015500350156 0.038331022988320765;
	setAttr -s 8 ".wl[495].w[0:7]"  0.22145640745724496 0.23954196813866083 
		0.19367754326566697 0.11534338590814706 0.077192109363857397 0.061018028022427298 
		0.052462413135610945 0.039308144708384556;
	setAttr -s 8 ".wl[496].w[0:7]"  0.22160204314625259 0.2407037962145831 
		0.19424765328206342 0.11495577515180727 0.076758464530466933 0.060621763178703186 
		0.052099551616882268 0.039010952879241084;
	setAttr -s 8 ".wl[497].w[0:7]"  0.22225013310203426 0.24625031802542996 
		0.19666597550818754 0.11312485164376482 0.074750206859851343 0.058815525090332388 
		0.050457182779275869 0.037685806991123776;
	setAttr -s 8 ".wl[498].w[0:7]"  0.16085987654761655 0.21806669675708087 
		0.21600958291389494 0.14343837993669878 0.090902778400240455 0.069500675156222089 
		0.058623060322544877 0.042598949965701675;
	setAttr -s 8 ".wl[499].w[0:7]"  0.16151803754247551 0.21696322427249626 
		0.21481368965537748 0.14351610691956146 0.091321926282579874 0.06992302690393605 
		0.059018187308986884 0.042925801114586576;
	setAttr -s 8 ".wl[500].w[0:7]"  0.1638987672798512 0.21282359629243636 
		0.21032267286049555 0.14365863204662985 0.092941204818971862 0.071574423549521662 
		0.06057080595143053 0.044209897200663061;
	setAttr -s 8 ".wl[501].w[0:7]"  0.16543286096105894 0.21008833982683942 
		0.20733031055248163 0.14364960125185441 0.094026884876010769 0.072710694676144896 
		0.061649916204513523 0.045111391651096296;
	setAttr -s 8 ".wl[502].w[0:7]"  0.16494573384310687 0.21091925879850537 
		0.20825231603840813 0.14364579396254767 0.093709238426965144 0.07237024930008007 
		0.061323890217036221 0.044833519413350599;
	setAttr -s 8 ".wl[503].w[0:7]"  0.16277149913545358 0.21472910878951737 
		0.2124116298390919 0.14358931934371308 0.092214543925563344 0.070818983026729065 
		0.059855636014333982 0.043609279925597592;
	setAttr -s 8 ".wl[504].w[0:7]"  0.12565212678298809 0.18661052277556259 
		0.1957965786828017 0.17272911268742605 0.11343097154991723 0.085100270690021768 0.070695996608488784 
		0.049984420222793709;
	setAttr -s 8 ".wl[505].w[0:7]"  0.1262809543604109 0.18624932849819778 
		0.19498484270865027 0.17217626356850063 0.11360019729465873 0.085409345401342832 
		0.071020762082470851 0.050278306085767804;
	setAttr -s 8 ".wl[506].w[0:7]"  0.12870898522600258 0.18481666137394515 
		0.19187105895445661 0.16994481205067974 0.11427261368259956 0.08663334515899368 0.072311466835929539 
		0.051441056717393102;
	setAttr -s 8 ".wl[507].w[0:7]"  0.13039306715498086 0.18378622468180886 
		0.1897774983767925 0.16838282668214888 0.11470794713451513 0.087475411184341045 0.073213054502775807 
		0.052263970282636907;
	setAttr -s 8 ".wl[508].w[0:7]"  0.12986311892669847 0.18411182138151311 
		0.19040777688038565 0.16883946269749975 0.11459636705886521 0.087228746390743087 
		0.072943396076625144 0.052009310587669597;
	setAttr -s 8 ".wl[509].w[0:7]"  0.12755732420315741 0.18550335295194104 
		0.19329560937363752 0.17094700113917471 0.11399787018460757 0.086082622807884368 
		0.071721081528593772 0.050895137811003417;
	setAttr -s 8 ".wl[510].w[0:7]"  0.10442278807907077 0.15100696729913279 
		0.1797974721228067 0.17913748524514023 0.13744826037512112 0.10386221697573071 0.085444643516944668 
		0.05888016638605293;
	setAttr -s 8 ".wl[511].w[0:7]"  0.10496163495575797 0.15119312163916046 
		0.17920754254788007 0.17850961354284692 0.13728273851977202 0.10401396166347873 0.085683148923273139 
		0.059148238207830717;
	setAttr -s 8 ".wl[512].w[0:7]"  0.1070877983023531 0.15188311930849369 
		0.17686481404647886 0.17599395994717595 0.13669031112950453 0.10463203615117815 0.086640166653402767 
		0.060207794461413014;
	setAttr -s 8 ".wl[513].w[0:7]"  0.10860137672548176 0.15232349524083372 
		0.17525363536706645 0.17424510785856673 0.13626530596252337 0.10504843708870498 0.087305014390666763 
		0.060957627366156099;
	setAttr -s 8 ".wl[514].w[0:7]"  0.1081249102775258 0.15219241102474909 
		0.17572538402317672 0.17475677552049337 0.13642516609187358 0.1049384695767089 0.08711195373928049 
		0.060724929746191904;
	setAttr -s 8 ".wl[515].w[0:7]"  0.10607612961663937 0.15157107664257519 
		0.17791666776235252 0.17712397276015415 0.13701689308193624 0.10437409395441524 0.086211968413384785 
		0.059709197768542624;
	setAttr -s 8 ".wl[516].w[0:7]"  0.092770649103335837 0.12887940871034162 
		0.16654537663808552 0.16946433401206756 0.15323114504393587 0.12118133854180152 0.10002621747359372 
		0.06790153047683832;
	setAttr -s 8 ".wl[517].w[0:7]"  0.093242628556045801 0.12921653406267647 
		0.16625671795903532 0.16900031044824182 0.15282813580392468 0.1211520217244825 0.100159893330474 
		0.068143758115119468;
	setAttr -s 8 ".wl[518].w[0:7]"  0.095111034284044868 0.13051323847180391 
		0.16501788238265722 0.1671730099687096 0.15133012512764496 0.12106520292722725 0.10070044385175211 
		0.069089062986160049;
	setAttr -s 8 ".wl[519].w[0:7]"  0.096455467567019976 0.13140866324205278 
		0.16411485670181639 0.16590855467500096 0.15029728803237127 0.12099147709593409 0.10106928564298739 
		0.069754407042817171;
	setAttr -s 8 ".wl[520].w[0:7]"  0.096028318700744048 0.13112793266042003 
		0.16436891230446904 0.16628559324170386 0.1506419015031116 0.12103387740347024 0.10096840551553511 
		0.069545058670546042;
	setAttr -s 8 ".wl[521].w[0:7]"  0.094214100132117076 0.12989897643654877 
		0.16555891782158624 0.16800752809209479 0.1520739880437442 0.12113869116769559 0.10046844761674734 
		0.068639350689466014;
	setAttr -s 8 ".wl[522].w[0:7]"  0.084642658414434371 0.11322189734461162 
		0.14893633877284096 0.16176302589865321 0.1594776988648646 0.13737373242122158 0.1159556306399864 
		0.078629017643387283;
	setAttr -s 8 ".wl[523].w[0:7]"  0.085063491553655196 0.11359997219634499 
		0.148958548010834 0.16138323785687159 0.15904605473305047 0.13715912591013496 0.11595310711026825 
		0.078836462628840628;
	setAttr -s 8 ".wl[524].w[0:7]"  0.086727911276801517 0.11506715811853147 
		0.14893286664050412 0.15992032129109049 0.15741391402056634 0.13635401491938309 0.11595657300691162 
		0.07962724072621126;
	setAttr -s 8 ".wl[525].w[0:7]"  0.08793169657644942 0.11610239955054638 
		0.14886821462187325 0.15890676849884819 0.15628333917131718 0.13578520188111712 0.11594622521262987 
		0.080176154487218654;
	setAttr -s 8 ".wl[526].w[0:7]"  0.087545640651439119 0.11577193452234526 
		0.14886538251661896 0.1592234340218425 0.15665149204196138 0.13597967600476735 0.11596298307755147 
		0.079999457163473967;
	setAttr -s 8 ".wl[527].w[0:7]"  0.085922559735231024 0.1143610693049134 
		0.14890974644645943 0.16061256238245786 0.15820947248699901 0.13676239834329754 0.1159773480387747 
		0.079244843261867037;
	setAttr -s 8 ".wl[528].w[0:7]"  0.15265041486114761 0.18665395199534968 
		0.18663935324853198 0.15339771163409693 0.1084584659375384 0.085521973233075033 0.072984895810804765 
		0.053693233279455563;
	setAttr -s 8 ".wl[529].w[0:7]"  0.15148173459529349 0.18581020512323518 
		0.18581765610392328 0.15400905121926123 0.10920610117795836 0.086133099260606749 
		0.07349783870855385 0.054044313811167866;
	setAttr -s 8 ".wl[530].w[0:7]"  0.14998240746251695 0.18636957976990484 
		0.18643073562590801 0.15495896136386886 0.10933458928133766 0.085970793286889932 
		0.073236601724813832 0.053716331484760002;
	setAttr -s 8 ".wl[531].w[0:7]"  0.14958489014761403 0.18785591574070087 
		0.18794215089210528 0.15532201489766828 0.10868020749439904 0.085163699385789909 
		0.072433557027782966 0.053017564413939573;
	setAttr -s 8 ".wl[532].w[0:7]"  0.15075921995094821 0.18877765635702282 
		0.18880680847783493 0.15466717432108068 0.10789533446334573 0.084530293529885447 
		0.071905096865975959 0.052658416033906003;
	setAttr -s 8 ".wl[533].w[0:7]"  0.15232790952112599 0.18812482948250994 
		0.18811781482289464 0.15369551818979674 0.10780384834071373 0.084727362061340142 
		0.072196045975737186 0.053006671605881628;
	setAttr -s 8 ".wl[534].w[0:7]"  0.09849314748460189 0.11780398373078484 
		0.13585182944960508 0.14241229554938808 0.14228807001158866 0.13618113577126609 0.12653331440994858 
		0.10043622359281683;
	setAttr -s 8 ".wl[535].w[0:7]"  0.098106378641191219 0.11742087266464216 
		0.13562013343161222 0.14246434261959842 0.14237521490233404 0.13645873364641153 0.12686160073848657 
		0.10069272335572367;
	setAttr -s 8 ".wl[536].w[0:7]"  0.0973663544815246 0.11680202150365723 
		0.13539185728151723 0.14272551394875568 0.14267346589017732 0.13693261019069458 0.12728872498632376 
		0.10081945171734942;
	setAttr -s 8 ".wl[537].w[0:7]"  0.097007663657113594 0.11656235413065487 
		0.13539761235801284 0.1429366845942292 0.14289188488358584 0.13713262554222885 0.12738682942146753 
		0.10068434541270731;
	setAttr -s 8 ".wl[538].w[0:7]"  0.097400511906065607 0.11695606455506584 
		0.13564144483019422 0.14287670805529123 0.14280551175935968 0.13684627739129482 0.12704852778285899 
		0.10042495371986965;
	setAttr -s 8 ".wl[539].w[0:7]"  0.098145901905266481 0.11757871312383522 
		0.13586717781883328 0.14261362417621581 0.14249991968372838 0.13636883014707099 0.12662229848610235 
		0.10030353465894738;
	setAttr -s 8 ".wl[540].w[0:7]"  0.1511435323426816 0.18726641795416799 
		0.18728263869521669 0.15434098499683641 0.10856350749778698 0.085340636625704014 
		0.072707875083040815 0.053354406804565553;
	setAttr -s 8 ".wl[541].w[0:7]"  0.097753464612633803 0.11718982641566163 
		0.13563240647983857 0.14267023710653959 0.14259024147230581 0.13665163233425223 0.12695421802248785 
		0.10055797355628047;
	setAttr -s 8 ".wl[542].w[0:7]"  0.13630378000693866 0.17660643409512081 
		0.17951822241982435 0.16215155133623096 0.11766776040622934 0.09239675470612585 0.07839365195867945 
		0.056961845070850621;
	setAttr -s 8 ".wl[543].w[0:7]"  0.13684124709717208 0.17562827125519026 
		0.17829194966038139 0.16143946485851687 0.11805970751578337 0.093050401488884035 
		0.079088868953584024 0.057600089170488027;
	setAttr -s 8 ".wl[544].w[0:7]"  0.13826565840414276 0.17552716973920418 
		0.17767946075721483 0.16039210007762414 0.11777404215015747 0.093131394719571631 
		0.079306592879604829 0.057923581272480047;
	setAttr -s 8 ".wl[545].w[0:7]"  0.13920507291539944 0.17635625375320726 
		0.17823565399975824 0.1600105868389847 0.1171216138518076 0.092588377313307421 0.078855445377905661 
		0.057626995949629667;
	setAttr -s 8 ".wl[546].w[0:7]"  0.13872351251845297 0.17735327567350656 
		0.17942143097834895 0.16065342927700987 0.11672336965992804 0.091946705639672985 
		0.078175539648925374 0.057002736604155183;
	setAttr -s 8 ".wl[547].w[0:7]"  0.13724587569070507 0.17750462057054034 
		0.18009219274820989 0.16174616533607786 0.11698302979285666 0.091835768362897682 
		0.077931319666389332 0.056661027832323164;
	setAttr -s 8 ".wl[548].w[0:7]"  0.12419883053961843 0.16185530026955042 
		0.17045029092165584 0.16481029461650357 0.12794396987510187 0.10177851205062334 0.086448326591494012 
		0.062514475135452538;
	setAttr -s 8 ".wl[549].w[0:7]"  0.12477310526831482 0.16141081734085727 
		0.16952143215846038 0.16396816608310164 0.12802473743091899 0.10222799478593074 0.086998715002466559 
		0.063075031929949579;
	setAttr -s 8 ".wl[550].w[0:7]"  0.12607378286455678 0.16172257835149134 
		0.16896278347669522 0.16302823461772778 0.12754387903688744 0.10217112985801055 0.08712727821978386 
		0.06337033357484699;
	setAttr -s 8 ".wl[551].w[0:7]"  0.12683636391829134 0.16246631979683432 
		0.16929353656009724 0.16287803763211908 0.12699189555423054 0.1016867161177565 0.086726793635776941 
		0.06312033678489401;
	setAttr -s 8 ".wl[552].w[0:7]"  0.1263033966992389 0.162942853395042 
		0.17018521963953018 0.1636644369673898 0.12689457513985339 0.10124486305816506 0.086190261392087922 
		0.062574393708692735;
	setAttr -s 8 ".wl[553].w[0:7]"  0.12496630831453261 0.16264469033699122 
		0.17078339444184812 0.16465666745201785 0.12736509258456119 0.10127960349386479 0.086040341094183501 
		0.062263902282000828;
	setAttr -s 8 ".wl[554].w[0:7]"  0.11639152815409946 0.15038968355432822 
		0.16377109713558557 0.16273166693449068 0.13524034204671193 0.10984250306576378 0.093786661052838907 
		0.067846518056181457;
	setAttr -s 8 ".wl[555].w[0:7]"  0.1169478655388233 0.15024912431331053 
		0.16304591373228955 0.16198731353927667 0.1351060945248706 0.11011678630738515 0.094207646787111882 
		0.068339255256932255;
	setAttr -s 8 ".wl[556].w[0:7]"  0.11813861621069557 0.15076940916706505 
		0.16254840743742005 0.16128365846748913 0.13450275877655701 0.10992673427309696 0.094236849757600175 
		0.068593565910076024;
	setAttr -s 8 ".wl[557].w[0:7]"  0.11879906337352034 0.15143093282109979 
		0.16274876328323667 0.16128174024861283 0.13403195197121046 0.10947744064216117 0.093862003230435115 
		0.068368104429723617;
	setAttr -s 8 ".wl[558].w[0:7]"  0.11827516635970928 0.15160419407298789 
		0.16344237059392769 0.16199063369131583 0.13414220139213168 0.10920470377473269 0.093451441916881345 
		0.067889288198313566;
	setAttr -s 8 ".wl[559].w[0:7]"  0.11705835254967573 0.15108388118847577 
		0.16396704835938639 0.16273716474344493 0.13474661845256067 0.10937951285133 0.093405302730120335 
		0.067622119125006222;
	setAttr -s 8 ".wl[560].w[0:7]"  0.11053090575365344 0.14097008312964077 
		0.15828249786262702 0.15828249786262702 0.14036483202004696 0.11717758839702222 0.10097282621463456 
		0.073418768759747996;
	setAttr -s 8 ".wl[561].w[0:7]"  0.11105336820745371 0.14101024187523398 
		0.15771498476907952 0.15771498476907941 0.14009499156029864 0.11729643439523259 0.1012697003294221 
		0.073845294094200042;
	setAttr -s 8 ".wl[562].w[0:7]"  0.11214342224476291 0.14163636017069822 
		0.15727803750091759 0.15727599945441006 0.13944232291439534 0.11698442695523158 0.10119228201681127 
		0.0740471487427731;
	setAttr -s 8 ".wl[563].w[0:7]"  0.11272999267537619 0.14222759633130391 
		0.15739016743740067 0.15737492282637261 0.13905056590996306 0.11656240947626113 0.100830836671296 
		0.073833508672026413;
	setAttr -s 8 ".wl[564].w[0:7]"  0.11223321507932207 0.14221661329271063 
		0.15793486934049769 0.15792481042511256 0.13929307368186716 0.11643847271805383 0.10053965271969068 
		0.073419292742745432;
	setAttr -s 8 ".wl[565].w[0:7]"  0.11112381429903463 0.14158510729461202 
		0.15839317879224521 0.15839317879224521 0.13995362458549382 0.11674098361744889 0.10060384259924153 
		0.073206270019678665;
	setAttr -s 8 ".wl[566].w[0:7]"  0.10585002264644328 0.13299393001107426 
		0.15259385031534992 0.15324861395312769 0.14356542757971438 0.12392592066342492 0.10825496935097956 
		0.079567265479885935;
	setAttr -s 8 ".wl[567].w[0:7]"  0.10633162538346315 0.13314118158547922 
		0.15221477210822565 0.15281504061852108 0.14323279306129608 0.12391032946016627 0.10842999580801978 
		0.079924261974828825;
	setAttr -s 8 ".wl[568].w[0:7]"  0.10732263556140854 0.13380822450626842 
		0.15201648244553065 0.15246421421648615 0.14259899245955363 0.12349327021323431 0.10823848496417068 
		0.080057695633347706;
	setAttr -s 8 ".wl[569].w[0:7]"  0.10784585197397846 0.1343343131270214 
		0.15217906360948796 0.15253541033504528 0.14228570474930424 0.12309529019859683 0.10788092046156163 
		0.079843445545004194;
	setAttr -s 8 ".wl[570].w[0:7]"  0.10738530858036938 0.13421252335924133 
		0.15255446873790016 0.15294952290317435 0.14259334732773016 0.12310079148587165 0.1077069861829867 
		0.079497051422726325;
	setAttr -s 8 ".wl[571].w[0:7]"  0.10638059400507072 0.13353950895480743 
		0.15277135509278725 0.15331168988833219 0.14323888841415411 0.1235140841625947 0.10788945420606823 
		0.079354425276185372;
	setAttr -s 8 ".wl[572].w[0:7]"  0.10217960262999574 0.1264548703948962 
		0.14662308013410599 0.14908804670304709 0.14480662951904216 0.12956557186210105 0.11517693887669234 
		0.086105259880119328;
	setAttr -s 8 ".wl[573].w[0:7]"  0.10262032113644549 0.12666059365453522 
		0.14640519997085372 0.14875096718230041 0.14447681436690835 0.12945142244013391 0.11524302061981893 
		0.086391660629003983;
	setAttr -s 8 ".wl[574].w[0:7]"  0.10352393538325518 0.12733425710008059 
		0.14640127673000281 0.14844159038114516 0.14392709732509562 0.12897192699514448 0.11495117835362061 
		0.086448737731655539;
	setAttr -s 8 ".wl[575].w[0:7]"  0.10399699357650853 0.12780809471592766 
		0.1466050232999197 0.14846213660163943 0.14369527923316128 0.12860624435826692 0.11459892085599847 
		0.086227307358578059;
	setAttr -s 8 ".wl[576].w[0:7]"  0.10357351394737634 0.12762383171935798 
		0.14682732586310318 0.14878387694490905 0.14400560124995762 0.12870720297169533 0.11452945637752271 
		0.085949190926077598;
	setAttr -s 8 ".wl[577].w[0:7]"  0.10265982593586839 0.1269444891309891 
		0.14684177942627064 0.14910020771213561 0.14456703024384088 0.12918677913178367 0.11481554079282875 
		0.085884347626282914;
	setAttr -s 8 ".wl[578].w[0:7]"  0.099762565292571062 0.12197041186614828 
		0.14186448589133788 0.14625368789383236 0.14462364295531049 0.13327006460365515 0.12046833338828351 
		0.091786808108861292;
	setAttr -s 8 ".wl[579].w[0:7]"  0.1001699106162411 0.12220018446686952 
		0.14175040829326224 0.14597719628908626 0.14432838875336029 0.1331032269456037 0.12045737799845507 
		0.092013306637121872;
	setAttr -s 8 ".wl[580].w[0:7]"  0.10100565880173153 0.12286002563416355 
		0.14186458363154095 0.14569293709965966 0.14387462850854438 0.13260494947387955 0.12009713260374506 
		0.092000084246735281;
	setAttr -s 8 ".wl[581].w[0:7]"  0.101441981356299 0.12329526555195186 
		0.14208689926664481 0.14568057507904036 0.1437057720368432 0.13227113365442253 0.11975119142913886 
		0.091767181625659555;
	setAttr -s 8 ".wl[582].w[0:7]"  0.10104928367887675 0.12308390931007061 
		0.1422088689326772 0.14594437852346209 0.14398701252234389 0.13242405537679838 0.1197557471346995 
		0.091546744521071574;
	setAttr -s 8 ".wl[583].w[0:7]"  0.10020570615594843 0.12241908009660002 
		0.14210090917249274 0.14623305916121984 0.14445103297609449 0.13292446873145938 0.12011250618043387 
		0.091553237525751188;
	setAttr -s 8 ".wl[584].w[0:7]"  0.097857977765277521 0.11828030047221054 
		0.13754144519610262 0.14396977877664996 0.14364993650270322 0.1360162785388227 0.12513683495331118 
		0.09754744779492229;
	setAttr -s 8 ".wl[585].w[0:7]"  0.098233362769170079 0.11851926757105612 
		0.13750385685164201 0.14373890854495111 0.14340321220752167 0.13582212593059653 0.12506485800363995 
		0.097714408121422638;
	setAttr -s 8 ".wl[586].w[0:7]"  0.099005949761018008 0.11915447482710533 
		0.13770005336046717 0.14347155681599863 0.14305129283670348 0.13533329736920419 0.12465553758408866 
		0.097627837445414437;
	setAttr -s 8 ".wl[587].w[0:7]"  0.099409338455686586 0.11955505938153202 
		0.13793053818361603 0.14343228792287843 0.14293772799478635 0.13503516926916143 0.12431972722627622 
		0.097380151566063042;
	setAttr -s 8 ".wl[588].w[0:7]"  0.099046421868410728 0.11933179848429461 
		0.13797747009928407 0.14365246132959911 0.14317551268858475 0.135216157565859 0.1243832686466201 
		0.097216909317347625;
	setAttr -s 8 ".wl[589].w[0:7]"  0.098267711111334866 0.11869237940668498 
		0.13778479715474182 0.14392245601799286 0.14353580159811599 0.13570825373582407 0.12479090922407621 
		0.097297691751229209;
	setAttr -s 8 ".wl[590].w[0:7]"  0.10377408884607703 0.12166619890527723 
		0.1365731717264326 0.14037793745464064 0.13981102846263424 0.13314839506942508 0.12418510246448131 
		0.10046407707103168;
	setAttr -s 8 ".wl[591].w[0:7]"  0.10058341096838963 0.1186528238007174 
		0.13488536951030267 0.14063425757229667 0.14053446763573962 0.13529039069985177 0.12676437386298164 
		0.10265490594972045;
	setAttr -s 8 ".wl[592].w[0:7]"  0.094305563366126499 0.11336050626676025 
		0.13270742066850208 0.14275611619598358 0.14292664030060606 0.13927578459084752 0.13058924035326752 
		0.10407872825790623;
	setAttr -s 8 ".wl[593].w[0:7]"  0.09076660120382124 0.11070755281295001 
		0.13225604361989807 0.14477941359674185 0.1451633655171074 0.14152091018587418 0.1319055535482507 
		0.10290055951535654;
	setAttr -s 8 ".wl[594].w[0:7]"  0.094441987312377337 0.11454862669765377 
		0.13490236049616869 0.14417302708242183 0.14417987288629025 0.13873107804064347 0.12854929501887649 
		0.10047375246556804;
	setAttr -s 8 ".wl[595].w[0:7]"  0.10111447372365959 0.12011818906097176 
		0.13689443229934517 0.14181435643265222 0.14139542980051767 0.13445168764453749 0.12476589263852894 
		0.099445538399787189;
	setAttr -s 8 ".wl[596].w[0:7]"  0.10507777171768225 0.12083107906078858 
		0.13380828172903297 0.13774866289457294 0.13758524666796643 0.13316340105239771 0.12619478506673787 
		0.10559077181082124;
	setAttr -s 8 ".wl[597].w[0:7]"  0.10054969657969846 0.11666926947442385 
		0.13137280388503642 0.13823050994087718 0.13834506157537207 0.13588720348327996 0.12979447011208214 
		0.10915098494922994;
	setAttr -s 8 ".wl[598].w[0:7]"  0.091492252798059726 0.10882781221428706 
		0.12731262551030806 0.14019917109273386 0.14204517990219725 0.14134243663470791 0.1360023018865282 
		0.11277821996117809;
	setAttr -s 8 ".wl[599].w[0:7]"  0.086005092767666297 0.10428440564566734 
		0.12544314720706437 0.14232400024216543 0.14556948236390679 0.14510379259031442 0.13917810951719783 
		0.11209196966601763;
	setAttr -s 8 ".wl[600].w[0:7]"  0.091656951084666538 0.11024493197101982 
		0.13002884142360244 0.14238927291663045 0.14324371096255539 0.14121798296726906 0.133695730962684 
		0.10752257771157241;
	setAttr -s 8 ".wl[601].w[0:7]"  0.10148340626841147 0.11864888367646478 
		0.13387831111635032 0.13945604501338768 0.1394112133283151 0.13502092093149423 0.1273705864970428 
		0.10473063316853365;
	setAttr -s 8 ".wl[602].w[0:7]"  0.10296391517406916 0.11749755852224897 
		0.13029147631823473 0.13625257301522817 0.13641333002991482 0.13466421322542174 0.12980731154461919 
		0.1121096221702631;
	setAttr -s 8 ".wl[603].w[0:7]"  0.098881347931009611 0.11372800189572414 
		0.1278784562886453 0.13640902990710094 0.13742809673917941 0.13683085580253779 0.13302919274125896 
		0.11581501869454369;
	setAttr -s 8 ".wl[604].w[0:7]"  0.090740701520842071 0.10653510797839459 
		0.12359236582168281 0.13716059747738996 0.14123230244597429 0.14123281975347834 0.13891121295911063 
		0.12059489204312715;
	setAttr -s 8 ".wl[605].w[0:7]"  0.085980890842529842 0.10247463434647822 
		0.12145838011207995 0.13818696052612905 0.14421561973332989 0.14428970146326014 0.14215605957550081 
		0.12123775340069209;
	setAttr -s 8 ".wl[606].w[0:7]"  0.091025263893365543 0.10769974575657096 
		0.12563318671782575 0.13893696369081665 0.14167372198039868 0.14145912724137027 0.13742931067094347 
		0.11614268004870874;
	setAttr -s 8 ".wl[607].w[0:7]"  0.099713475051021322 0.11530048809870888 
		0.12984481053884833 0.13751864464182176 0.13792007168613893 0.13641695200661738 0.13129111770742016 
		0.11199444026942325;
	setAttr -s 8 ".wl[608].w[0:7]"  0.098963003374334446 0.11314644384000841 
		0.12673350575878919 0.13540200156031107 0.13688485247529136 0.13665128325223944 0.13376439927497791 
		0.1184545104640483;
	setAttr -s 8 ".wl[609].w[0:7]"  0.096545175655920343 0.1108630227650302 
		0.12513779970289537 0.13525112202721698 0.13780287658346008 0.13778556531746836 0.13567549081383126 
		0.12093894713417755;
	setAttr -s 8 ".wl[610].w[0:7]"  0.091844081716649761 0.10666586236252054 
		0.12246955013243156 0.13533829896179975 0.14008766086201671 0.1402300629966228 0.13908704874498845 
		0.12427743422297047;
	setAttr -s 8 ".wl[611].w[0:7]"  0.08936841444601655 0.10458771187883702 
		0.12134664193891596 0.13571344721885228 0.1414709663200967 0.14175546282872514 0.1407561235512996 
		0.12500123181725684;
	setAttr -s 8 ".wl[612].w[0:7]"  0.09211055269056391 0.10734556179533654 
		0.12351688911499559 0.13621871390321641 0.14023673102545864 0.14024968803731377 0.13840008690262501 
		0.12192177653049016;
	setAttr -s 8 ".wl[613].w[0:7]"  0.096973647903398782 0.11166355733343294 
		0.12617320230309473 0.13594282303437855 0.13787362819788671 0.13772453733034723 0.13487465313714306 
		0.11877395076031794;
	setAttr -s 8 ".wl[614].w[0:7]"  0.098218270599288601 0.11810929994550928 
		0.1367621785250929 0.14321077578682251 0.14298840164531917 0.13606733002844712 0.12576688941657299 
		0.09887685405294748;
	setAttr -s 8 ".wl[615].w[0:7]"  0.09414087688530158 0.10859460560213882 
		0.12353979689218597 0.13505795758583838 0.13887706858536367 0.13891837655534361 0.13754492746240013 
		0.12332639043142786;
	setAttr -s 8 ".wl[616].w[0:7]"  0.10182104745024276 0.12087580749248927 
		0.1372983458423796 0.14186376140131013 0.14132364456230131 0.13397097072204037 0.12412956833538491 
		0.098716854193851719;
	setAttr -s 8 ".wl[617].w[0:7]"  0.10220815649633085 0.12112552661975064 
		0.13722242677396432 0.14167761733915579 0.14113200874078263 0.13380459503953088 0.12405316367030536 
		0.098776505320179481;
	setAttr -s 8 ".wl[618].w[0:7]"  0.093971939126567844 0.11476893964243888 
		0.13575302408396156 0.1452786739026089 0.14526843233957093 0.13882001071833677 0.12776006698407524 
		0.098378913202439661;
	setAttr -s 8 ".wl[619].w[0:7]"  0.082447277383746811 0.10455407849749941 
		0.13193169617696823 0.15163321586758163 0.1524385488508567 0.14720782229993032 0.13331455594643871 
		0.096472804976978216;
	setAttr -s 8 ".wl[620].w[0:7]"  0.081701436720266099 0.10387570259675169 
		0.13178465733323524 0.15211513999631965 0.15301174900876993 0.14774990477079722 0.13354350235990617 
		0.096217907213953874;
	setAttr -s 8 ".wl[621].w[0:7]"  0.092939660722807182 0.11398543710185612 
		0.13581194884722048 0.14585593255221468 0.14584962120523318 0.13937779867146849 0.12801918211057131 
		0.098160418788628634;
	setAttr -s 8 ".wl[622].w[0:7]"  0.10128588802341522 0.11700359179666586 
		0.13110748085676086 0.13772933379243091 0.13784443653671621 0.13553891049735137 0.12974791022338752 
		0.10974244827327215;
	setAttr -s 8 ".wl[623].w[0:7]"  0.10176365870957291 0.11734259068434605 
		0.13112334172723292 0.13757526753076257 0.1376682450764497 0.13531456618935409 0.12955962611881516 
		0.10965270396346664;
	setAttr -s 8 ".wl[624].w[0:7]"  0.091051557358279508 0.10853945622215606 
		0.1271148047116604 0.14055044935617636 0.14246362373277471 0.14175043102068 0.13628333753322963 
		0.11224634006504337;
	setAttr -s 8 ".wl[625].w[0:7]"  0.074322618740428656 0.092457655770711453 
		0.11658344783711813 0.14330043185706995 0.15421296979212962 0.15431000068039022 0.14991819410401275 
		0.11489468121813912;
	setAttr -s 8 ".wl[626].w[0:7]"  0.073131655289714589 0.091242339361293945 
		0.11578641625945832 0.14341859899254297 0.15521043582613908 0.15535176076914758 0.15092253666265523 
		0.11493625683904833;
	setAttr -s 8 ".wl[627].w[0:7]"  0.089657207422181473 0.10736588090632508 
		0.12675925192991638 0.14095160976037485 0.14319767543518788 0.14256889073215775 0.1370178517931436 
		0.11248163202071293;
	setAttr -s 8 ".wl[628].w[0:7]"  0.096891857544403451 0.11091334501045032 
		0.1247871169622037 0.13482094112179399 0.13754335905725243 0.13754196962215254 0.13575325124986007 
		0.12174815943188354;
	setAttr -s 8 ".wl[629].w[0:7]"  0.097321941323405145 0.1112581207934763 
		0.12490760195309158 0.13477184305215686 0.13736004217208292 0.13735576657899146 0.13552637134542744 
		0.12149831278136805;
	setAttr -s 8 ".wl[630].w[0:7]"  0.087957648913408959 0.10301529263418055 
		0.11973679545962186 0.13511183382190989 0.14203369216710893 0.14275405636458682 0.14225906063504423 
		0.12713162000413886;
	setAttr -s 8 ".wl[631].w[0:7]"  0.074014772779122245 0.089280087322344728 
		0.1089809210536398 0.13261263339735918 0.14877477153572852 0.1544987337732085 0.15471533331000642 
		0.13712274682859077;
	setAttr -s 8 ".wl[632].w[0:7]"  0.073067146919326129 0.088304188765904429 
		0.1082093654035841 0.13229790187315046 0.14917019233644577 0.15534089177153926 0.15566901471608693 
		0.13794129821396278;
	setAttr -s 8 ".wl[633].w[0:7]"  0.086763574633239249 0.10193782498008473 
		0.11915541911227236 0.13509840623563285 0.14258426380832381 0.14346748552784577 0.14304148477157905 
		0.12795154093102226;
	setAttr -s 8 ".wl[634].w[0:7]"  0.091119989753647504 0.10447610640102711 
		0.11886469937182227 0.13200712690099534 0.13895705267062175 0.14083474033461429 0.14087380538567559 
		0.13286647918159611;
	setAttr -s 8 ".wl[635].w[0:7]"  0.09139668321896062 0.10471992087235857 
		0.11899979723873498 0.13203397812777271 0.13886571231869957 0.1406762164090333 0.14070198443753379 
		0.13260570737690655;
	setAttr -s 8 ".wl[636].w[0:7]"  0.08578103031571635 0.09951149823870116 
		0.11516000835712809 0.13110689162268332 0.1408667946335119 0.14466776684292243 0.14516134337729197 
		0.13774466661204482;
	setAttr -s 8 ".wl[637].w[0:7]"  0.078563122708000144 0.092431645024266484 
		0.10938686825257431 0.12885123411976745 0.14291807941456147 0.15006377727410378 0.15228040698287143 
		0.14550486622385503;
	setAttr -s 8 ".wl[638].w[0:7]"  0.078128527890960392 0.091997694156790807 
		0.10904847695640744 0.128675373863474 0.1429958298042707 0.15034217055401597 0.15275301611074299 
		0.14605891066333762;
	setAttr -s 8 ".wl[639].w[0:7]"  0.085102871195993912 0.098876353308563925 
		0.11474100161231643 0.13095819863393771 0.14105743303635321 0.14508041706140215 0.14571337809579188 
		0.13847034705564079;
	setAttr -s 8 ".wl[640].w[0:7]"  0.09480666538298807 0.1176061950169187 
		0.14028411003566477 0.14784515446081931 0.14722693005509135 0.13668178612618806 0.12321779572411777 
		0.092331363198211946;
	setAttr -s 8 ".wl[641].w[0:7]"  0.08479978089184835 0.098124213119390694 
		0.11348192694876903 0.12959394601940546 0.1402542454643205 0.14527303327784982 0.14674992152848179 
		0.14172293274993439;
	setAttr -s 8 ".wl[642].w[0:7]"  0.24701802469381143 0.24741473125786811 
		0.17161428168744436 0.10684068476368508 0.074619853315121179 0.060204485275249138 
		0.052352228499325047 0.039935710507495566;
	setAttr -s 8 ".wl[643].w[0:7]"  0.24877955234577415 0.24893587691806113 
		0.17024696866460032 0.10603527751094997 0.074182843644647958 0.059905897432043512 
		0.052120391486820655 0.039793191997102205;
	setAttr -s 8 ".wl[644].w[0:7]"  0.25234830580268486 0.25263321151746065 
		0.1697543687909463 0.10433253179402463 0.072646994271075835 0.05856116794559052 0.05090624161983387 
		0.038817178258383489;
	setAttr -s 8 ".wl[645].w[0:7]"  0.25426450208080908 0.25515630791976679 
		0.17064322503202309 0.10329539330017405 0.071438099770710944 0.057426592185020435 
		0.049848067039274871 0.037927812672220708;
	setAttr -s 8 ".wl[646].w[0:7]"  0.25220759418243327 0.25363565921065373 
		0.17222002474041895 0.10415144311386433 0.071890774496048221 0.057733807081741653 
		0.050086232661277597 0.038074464513562174;
	setAttr -s 8 ".wl[647].w[0:7]"  0.24855180752439848 0.24958824861432671 
		0.17268459911184078 0.10599200876751511 0.073535776754035415 0.059166224274581257 
		0.051375561199770457 0.039105773753531692;
	setAttr -s 8 ".wl[648].w[0:7]"  0.103331391983241 0.12220879544740568 
		0.13759569884331829 0.14161704591689761 0.14091928145992919 0.13313621921078359 0.12326533281764898 
		0.097926234320775782;
	setAttr -s 8 ".wl[649].w[0:7]"  0.10386730394816374 0.12264081536205483 
		0.13772700381027073 0.14149324004161765 0.14070822554000625 0.13281390828771983 0.12296352857412982 
		0.097785974436037038;
	setAttr -s 8 ".wl[650].w[0:7]"  0.10349132712269309 0.12240608207643401 
		0.13773749144752689 0.14166634618518853 0.14091944078192181 0.13300710724411746 0.12307510304051744 
		0.097697102101600583;
	setAttr -s 8 ".wl[651].w[0:7]"  0.10256240145035141 0.12172036854815482 
		0.13760822592271363 0.14197795119394105 0.14135310390873185 0.13353707157566067 0.12349749636760764 
		0.097743381032838902;
	setAttr -s 8 ".wl[652].w[0:7]"  0.10201032341882726 0.12126751675690957 
		0.13746346278113061 0.14211726548179607 0.14157245028531606 0.13387523370523244 0.1238117403104356 
		0.097882007260352399;
	setAttr -s 8 ".wl[653].w[0:7]"  0.1024035743261696 0.12152157236675766 
		0.13746174704393843 0.14192913676063038 0.14134967142515412 0.13366723425308366 0.12369093436765728 
		0.097976129456608899;
	setAttr -s 8 ".wl[654].w[0:7]"  0.25059813921536589 0.25120606273110974 
		0.17118942035415219 0.1051021251436722 0.073042822142346697 0.058822980586530231 
		0.051104936457223721 0.038933513369599389;
	setAttr -s 8 ".wl[655].w[0:7]"  0.10294579772408696 0.12196615432762425 
		0.13760503629987109 0.14179855203965769 0.14113730268242816 0.1333358220602173 0.12337957875851717 
		0.097831756107597312;
	setAttr -s 8 ".wl[656].w[0:7]"  0.20963590841550372 0.22327299867714537 
		0.19191834833977497 0.12294520525317021 0.084161019387275812 0.066959361192832037 
		0.057725349552756405 0.043381809181541421;
	setAttr -s 8 ".wl[657].w[0:7]"  0.21028470451235939 0.22129029856314977 
		0.18960885688013163 0.12315272552771636 0.085011079884132229 0.067871052516374542 
		0.058615265857813154 0.044166016258322838;
	setAttr -s 8 ".wl[658].w[0:7]"  0.20919958887812459 0.21900168670323658 
		0.18844888889123163 0.1239659693278098 0.086064170472891249 0.068861740428999188 
		0.059533233177843543 0.044924722119863404;
	setAttr -s 8 ".wl[659].w[0:7]"  0.20759173119936075 0.21844559655713822 
		0.18939192544692651 0.12464116882483559 0.08635076887484168 0.069011524896668008 
		0.059622727311290299 0.044944556888938961;
	setAttr -s 8 ".wl[660].w[0:7]"  0.2068994551935287 0.2202441291049087 
		0.19163627019382043 0.12452888088326199 0.085570416517462305 0.068152770225168219 
		0.058776802274158789 0.044191275607690941;
	setAttr -s 8 ".wl[661].w[0:7]"  0.20784915332868378 0.22278849875400294 
		0.19301281374555812 0.12364519081957202 0.084431950781745396 0.067089833792051551 
		0.057796171025351749 0.043386387753034515;
	setAttr -s 8 ".wl[662].w[0:7]"  0.16974296499163039 0.19583161448294623 
		0.19234767137481398 0.14374991952467253 0.10030017915056898 0.079411335535482644 
		0.068078156870165524 0.050538158069719757;
	setAttr -s 8 ".wl[663].w[0:7]"  0.17127430109103989 0.19451316556770684 
		0.19045704356398005 0.14303479826006918 0.10068210304886188 0.080048062770617337 
		0.068773434990858431 0.051217090706866322;
	setAttr -s 8 ".wl[664].w[0:7]"  0.17140683049181099 0.19320802812326804 
		0.18909288853802017 0.1430130083311984 0.10128147661033812 0.080733739740369667 0.069450345063046301 
		0.051813683101948449;
	setAttr -s 8 ".wl[665].w[0:7]"  0.17012511719427803 0.1930832204459822 
		0.18946759432740495 0.14368968749604474 0.10155055094809889 0.080835593542282466 
		0.069480185998787095 0.051768050047121705;
	setAttr -s 8 ".wl[666].w[0:7]"  0.16861814707093964 0.1943308098561182 
		0.19125954315212984 0.14443591034096342 0.10120844291291513 0.080230120145621017 
		0.068810593448923096 0.051106433072389726;
	setAttr -s 8 ".wl[667].w[0:7]"  0.16836483445317829 0.1957782482655378 
		0.19277910760152051 0.14447549762547091 0.10055586970411956 0.0794900389002689 0.068084178444097976 
		0.050472225005806046;
	setAttr -s 8 ".wl[668].w[0:7]"  0.14745141496218153 0.17910524209597581 
		0.17929389829034306 0.15508563993391924 0.11372813410372837 0.090577597836001902 
		0.077567897396441682 0.057190175381408394;
	setAttr -s 8 ".wl[669].w[0:7]"  0.14901792304363962 0.17825907391950768 
		0.17832234940375583 0.15393307612211474 0.1136811245389909 0.09094297404172598 0.078071542755723033 
		0.057771936174542175;
	setAttr -s 8 ".wl[670].w[0:7]"  0.14943775474822676 0.17742618322745879 
		0.17746466736245298 0.15348507380536899 0.11394106308677127 0.091403082371269928 
		0.078577655185057577 0.058264520213393643;
	setAttr -s 8 ".wl[671].w[0:7]"  0.14837051787585431 0.17739053387946299 
		0.17749024061976615 0.15412690117492706 0.11426781267264501 0.091533056767593129 
		0.078616020054628533 0.0582049169551229;
	setAttr -s 8 ".wl[672].w[0:7]"  0.14682292673214653 0.17818245817988568 
		0.17843002423391824 0.15527654550355421 0.11433739804827212 0.091187723468517917 
		0.078128982423141841 0.05763394141056357;
	setAttr -s 8 ".wl[673].w[0:7]"  0.14632175050867013 0.1790641224049862 
		0.17937891881310808 0.1557898906262957 0.11405702271118827 0.090691302822074285 0.077585954815289973 
		0.057111037298387422;
	setAttr -s 8 ".wl[674].w[0:7]"  0.13248114821511442 0.16388666836350083 
		0.16747016178079371 0.15881126444735078 0.12501587034617598 0.10126449924307834 0.087027974331627844 
		0.064042413272358142;
	setAttr -s 8 ".wl[675].w[0:7]"  0.13393711464657423 0.1638067655316488 
		0.16673975320343171 0.1576841826041768 0.12461481523585398 0.10135930726797437 0.087332779440482858 
		0.064525282069857137;
	setAttr -s 8 ".wl[676].w[0:7]"  0.13442432798140283 0.16344398658750103 
		0.16615230696160421 0.15712642810161218 0.12460780961573831 0.10162229629958874 0.087689688357158568 
		0.064933156095394337;
	setAttr -s 8 ".wl[677].w[0:7]"  0.13351071302451986 0.16316479231648853 
		0.16623649138006052 0.15763316606234706 0.12499582674262383 0.10180965541858339 0.08776693221921851 
		0.064882422836158249;
	setAttr -s 8 ".wl[678].w[0:7]"  0.13206650013259721 0.16322006495302185 
		0.16695209731193211 0.15874495817867218 0.12540796202907981 0.1017280546070426 0.087473553892890202 
		0.064406808894764078;
	setAttr -s 8 ".wl[679].w[0:7]"  0.13152299207549289 0.16357806768493369 
		0.16760021823968979 0.15936743101111672 0.12542121731094025 0.10144526673706783 0.087090756553129756 
		0.063974050387628975;
	setAttr -s 8 ".wl[680].w[0:7]"  0.12140954929537873 0.14983458573553773 
		0.15825224261611584 0.15672531034993747 0.13383245275371877 0.11159007826454875 0.096804475628352676 
		0.071551305356409897;
	setAttr -s 8 ".wl[681].w[0:7]"  0.12272628394711849 0.15020516254101796 
		0.15769561578198502 0.15591822621501733 0.13320480413016816 0.11142645616595 0.096899075304713048 
		0.071924375914030017;
	setAttr -s 8 ".wl[682].w[0:7]"  0.12321108471337532 0.15014985641819656 
		0.15728695600890383 0.15545704524200557 0.13301428743825774 0.1115128193033552 0.097114520257645623 
		0.0722534306182602;
	setAttr -s 8 ".wl[683].w[0:7]"  0.12241861729245131 0.14974608038962536 
		0.15739549488128871 0.15576444131195574 0.13342919687039795 0.11176714740677572 0.097250014669938684 
		0.072229007177566459;
	setAttr -s 8 ".wl[684].w[0:7]"  0.12110878271771014 0.14936490894060214 
		0.15794606813128018 0.15655626196671896 0.13406010149345779 0.11193921105241764 0.097163520764445357 
		0.071861144933367788;
	setAttr -s 8 ".wl[685].w[0:7]"  0.12058378087632912 0.14939708796401008 
		0.15839535441520378 0.15705687475447974 0.1342735756354515 0.11184834760089392 0.096932978250476989 
		0.071512000503154968;
	setAttr -s 8 ".wl[686].w[0:7]"  0.11327523269915957 0.13830937444910782 
		0.15125125416233873 0.15125845206353714 0.13931124801067282 0.12067633428103257 0.10633592405848132 
		0.079582180275669989;
	setAttr -s 8 ".wl[687].w[0:7]"  0.11445512820495911 0.13889830894544306 
		0.15082940723095067 0.1508294072309509 0.13862470081004633 0.12030524792366565 0.10622582737925244 
		0.079831972274731725;
	setAttr -s 8 ".wl[688].w[0:7]"  0.11491158835877302 0.13901247688977519 
		0.15053834798783303 0.150538297799057 0.13835215088891517 0.12025082094588882 0.1063121580005195 
		0.080084159129238219;
	setAttr -s 8 ".wl[689].w[0:7]"  0.11421681272964256 0.13856202444557275 
		0.15065386514195192 0.1506539557397531 0.13873943987408935 0.12055974335913593 0.10651291310327222 
		0.08010124560658223;
	setAttr -s 8 ".wl[690].w[0:7]"  0.11304108325797299 0.13796848766060965 
		0.15106478408193913 0.15107935303694972 0.13942513189056216 0.12093619072936403 0.10662919614162791 
		0.079855773200974395;
	setAttr -s 8 ".wl[691].w[0:7]"  0.11255510760722738 0.13782880744954837 
		0.15137067395487674 0.15139622901977021 0.13972471809959183 0.12099817031299299 0.10653803665418679 
		0.07958825690180564;
	setAttr -s 8 ".wl[692].w[0:7]"  0.1081679176829598 0.13061907257555461 
		0.14575743895834173 0.14676640129893537 0.14142207290275366 0.1268841710802236 0.11375676434192185 
		0.086626161159309462;
	setAttr -s 8 ".wl[693].w[0:7]"  0.10924288213737421 0.13128609821691239 
		0.14560803647194065 0.14640240236796331 0.14079676056543711 0.12640286877028137 0.11349728999191477 
		0.086763661478176185;
	setAttr -s 8 ".wl[694].w[0:7]"  0.10966888285975025 0.1314746544859802 
		0.14545052440522505 0.14617409144888974 0.14052222630192032 0.126267272669355 0.11349081403429125 
		0.086951533794588073;
	setAttr -s 8 ".wl[695].w[0:7]"  0.10904338558391395 0.13101967660375982 
		0.14544150371035472 0.14628884010521062 0.14085119252498818 0.12660030645442977 0.11374186558495727 
		0.087013229432385666;
	setAttr -s 8 ".wl[696].w[0:7]"  0.10797095944280261 0.13034996104403093 
		0.14558303191008032 0.14665171542325742 0.14147383442056188 0.12708481967865382 0.11400612611272354 
		0.086879551967889476;
	setAttr -s 8 ".wl[697].w[0:7]"  0.10752112644033797 0.13013734804104637 
		0.14574123492504826 0.14690149936775729 0.14177073089393899 0.12723343283028604 0.11401457372273288 
		0.086680053778852142;
	setAttr -s 8 ".wl[698].w[0:7]"  0.10426903777704101 0.12449284890449924 
		0.14035187700609761 0.14340252385286931 0.14173316397381983 0.13159552876719935 0.12033869700212263 
		0.093816322716351083;
	setAttr -s 8 ".wl[699].w[0:7]"  0.10524736619948398 0.12518165280433913 
		0.14040171211139477 0.14307793030011745 0.14122586037532547 0.13106717460619571 0.11996284098064636 
		0.093835462622497076;
	setAttr -s 8 ".wl[700].w[0:7]"  0.10564108217927085 0.12540689639323854 
		0.14034806124709526 0.14288954746011315 0.1409871826509787 0.13088568368571779 0.11988251617493073 
		0.093959030208654953;
	setAttr -s 8 ".wl[701].w[0:7]"  0.10507549492432681 0.12496396058325687 
		0.14025091157377484 0.14300931407311807 0.1412406981220978 0.13121788673978127 0.1201709533733676 
		0.094070780610276836;
	setAttr -s 8 ".wl[702].w[0:7]"  0.10409868488131301 0.12427338146146562 
		0.14019548417170391 0.14333395495344953 0.14174475639310335 0.13174792620270678 0.12055052614491529 
		0.094055285791342272;
	setAttr -s 8 ".wl[703].w[0:7]"  0.1036856718536824 0.12402709012254402 
		0.14024247594003059 0.14353916260725333 0.14199883237876954 0.13194444900097269 0.12063811578577968 
		0.093924202310967708;
	setAttr -s 8 ".wl[704].w[0:7]"  0.10588427663725215 0.12324298856686128 
		0.13665342852652207 0.13980656111424908 0.1390737988708044 0.13211671723166074 0.1232932214912332 
		0.099929007561417163;
	setAttr -s 8 ".wl[705].w[0:7]"  0.11004754677666399 0.12640994099597413 
		0.13752081139083347 0.13914432057896584 0.13755926140583632 0.12975800075906435 0.1209707073796373 
		0.098589410713024503;
	setAttr -s 8 ".wl[706].w[0:7]"  0.10730173160276268 0.12487449001653339 
		0.13772470409896476 0.14021004833540507 0.13901057469917796 0.13107018693351039 0.12176731007569472 
		0.098040954237951047;
	setAttr -s 8 ".wl[707].w[0:7]"  0.099247008152813787 0.11893378732709603 
		0.13652398537708804 0.14287389785766616 0.1426788724932416 0.13567050410914075 0.12551073897261203 
		0.098561205710341673;
	setAttr -s 8 ".wl[708].w[0:7]"  0.093847878826352107 0.11417100009448282 
		0.13455026112115831 0.14473674275688506 0.14475070131025813 0.13926137728716681 0.12885730888847988 
		0.099824729715216845;
	setAttr -s 8 ".wl[709].w[0:7]"  0.097905098521891554 0.11718947177260523 
		0.13511101248720447 0.14252052511154684 0.14248886052821763 0.13678187160313582 0.12727193391445635 
		0.10073122606094211;
	setAttr -s 8 ".wl[710].w[0:7]"  0.10468904226379085 0.11980996475697679 
		0.13223490751290487 0.13703728562265385 0.13702985031575449 0.13371969668775963 0.12761278364150616 
		0.10786646919865342;
	setAttr -s 8 ".wl[711].w[0:7]"  0.11029255918327792 0.12414651595258806 
		0.13387456143380422 0.13607191535689145 0.13557888175483468 0.13068833495740528 0.12417597158048259 
		0.10517125978071579;
	setAttr -s 8 ".wl[712].w[0:7]"  0.10666386600823954 0.12192958763156569 
		0.13364576250292895 0.13729892167170202 0.13712612124751994 0.13253503055083304 0.12568446589587143 
		0.10511624449133927;
	setAttr -s 8 ".wl[713].w[0:7]"  0.095250576056298525 0.11296989275930375 
		0.13028576628883276 0.14081517573826649 0.14130876442327342 0.13917942859945104 0.13232709770532416 
		0.10786329842924983;
	setAttr -s 8 ".wl[714].w[0:7]"  0.087025338100861105 0.10526123722394755 
		0.12572444173204952 0.1422614625441907 0.1451463897130798 0.14458972839504078 0.13861584476168262 
		0.11137555752914789;
	setAttr -s 8 ".wl[715].w[0:7]"  0.093342652458297481 0.11060766132257856 
		0.12824702503971186 0.14012179013485593 0.14137935035416835 0.14032400941407153 0.13464518737391415 
		0.11133232390240214;
	setAttr -s 8 ".wl[716].w[0:7]"  0.10188681397337705 0.11565053111715305 
		0.12793882692893557 0.13523118678127422 0.13595294251337442 0.135324808290641 0.1318977224762771 
		0.11611716791896762;
	setAttr -s 8 ".wl[717].w[0:7]"  0.10684994449730649 0.1196837822945683 
		0.12993472604170156 0.13455058226180092 0.13460004459080144 0.13286198100592123 0.12865065417423058 
		0.11286828513366942;
	setAttr -s 8 ".wl[718].w[0:7]"  0.1035732163761167 0.11741381857940238 
		0.12919214876947124 0.1355298622961798 0.13580703244310741 0.13455047418928656 0.13039090163227562 
		0.1135425457141603;
	setAttr -s 8 ".wl[719].w[0:7]"  0.093653517412705181 0.10920974917884413 
		0.12497599420479727 0.13715850761854398 0.1399290467805929 0.13986295922626563 0.13695988502188775 
		0.11825034055636312;
	setAttr -s 8 ".wl[720].w[0:7]"  0.086642295650762272 0.10257691545146976 
		0.12046176163482636 0.137012869292683 0.14358181606531842 0.1438612247374178 0.14256182743991558 
		0.12330128972760687;
	setAttr -s 8 ".wl[721].w[0:7]"  0.091956976296024215 0.10723854694738547 
		0.12326828662084088 0.13636210803033777 0.14047778315021467 0.14049482784932943 0.13866880889103819 
		0.12153266221482943;
	setAttr -s 8 ".wl[722].w[0:7]"  0.098824321323667905 0.11203478285055521 
		0.12461742221983331 0.1338922530241049 0.13649663601037509 0.13649825647828306 0.13511374576041138 
		0.12252258233276926;
	setAttr -s 8 ".wl[723].w[0:7]"  0.10179178785021709 0.1145737257929408 
		0.1261142940931973 0.13382414832063849 0.13528176257068533 0.13518197850296612 0.13310743046741128 
		0.12012487240194375;
	setAttr -s 8 ".wl[724].w[0:7]"  0.099766409590887437 0.11302274986811107 
		0.12537078170613761 0.1341767974874789 0.13620551720448068 0.13618111092475471 0.13433613622812896 
		0.12094049699002056;
	setAttr -s 8 ".wl[725].w[0:7]"  0.094206472549137596 0.1082789090676987 
		0.12255712875874603 0.13443798623850678 0.13878941436866579 0.13896962523799608 0.13812402973332322 
		0.12463643404592582;
	setAttr -s 8 ".wl[726].w[0:7]"  0.090590140402919045 0.10492596940384338 
		0.12023811744797407 0.1341084179312732 0.14033696004886406 0.14111030767054988 0.14080961521155966 
		0.12788047188301663;
	setAttr -s 8 ".wl[727].w[0:7]"  0.093247839531810317 0.10721805596473266 
		0.12166112787313563 0.13398850749797239 0.13902760772643244 0.13943932796841382 0.13893852722470551 
		0.12647900621279717;
	setAttr -s 8 ".wl[728].w[0:7]"  0.10385051200966418 0.12342390020515737 
		0.13905184412110513 0.14253161748534576 0.14136662059152455 0.13233847958910305 0.12171883669073133 
		0.095718189307368695;
	setAttr -s 8 ".wl[729].w[0:7]"  0.096126699554756764 0.10944409908319415 
		0.12266941036011689 0.13345626282822587 0.13754734808066982 0.13779122068420799 0.13721328186465653 
		0.12575167754417196;
	setAttr -s 8 ".wl[730].w[0:7]"  0.44389308835033758 0.20429552765322359 
		0.10635538017173631 0.072257909594372269 0.054437100681314333 0.045720325424470035 
		0.040712840145620301 0.032327827978925701;
	setAttr -s 8 ".wl[731].w[0:7]"  0.43997393103344157 0.20531992115175809 
		0.10716950266511775 0.072849940141610919 0.054899426499972509 0.046113267302110197 
		0.041064913458899115 0.032609097747090067;
	setAttr -s 8 ".wl[732].w[0:7]"  0.45742231789537552 0.2020384795159722 
		0.10348692039419863 0.069956196768378637 0.052584379382350825 0.044114741305821693 
		0.039258329637634364 0.031138635100268198;
	setAttr -s 8 ".wl[733].w[0:7]"  0.48558744858250869 0.19524766041593541 
		0.097637790077130221 0.065578823327267208 0.04914876880602468 0.041176464062558767 
		0.036615913974559072 0.029007130754015883;
	setAttr -s 8 ".wl[734].w[0:7]"  0.49205881359465303 0.19324437104988001 
		0.09633000251499399 0.064662384689800109 0.048446708436768314 0.040584000015684824 
		0.036087087144764683 0.028586632553454897;
	setAttr -s 8 ".wl[735].w[0:7]"  0.46724460672663587 0.19924481648338399 
		0.10147073518703725 0.068516448069503244 0.051470702621887028 0.043171538281629188 
		0.038414823022044221 0.030466329607879098;
	setAttr -s 8 ".wl[736].w[0:7]"  0.094466581563712612 0.11607117035032666 
		0.13774105369273076 0.14623609656362599 0.14606302487762224 0.13787119389050692 0.12576978435698799 
		0.095781094704486786;
	setAttr -s 8 ".wl[737].w[0:7]"  0.094526128158625378 0.11611492886588816 
		0.13773314303004702 0.14620114586761973 0.1460274279990276 0.13784141483413281 0.12575886720546059 
		0.09579694403919875;
	setAttr -s 8 ".wl[738].w[0:7]"  0.093421992095541903 0.11521572468396163 
		0.13751886584560952 0.14677459015753744 0.14666162511099629 0.13855036078611874 0.12621701826155818 
		0.095639823058676396;
	setAttr -s 8 ".wl[739].w[0:7]"  0.092217955993753653 0.11422259288072775 
		0.13728273926790785 0.14742872497331475 0.14736568410606909 0.13933180700101724 0.12670582049280826 
		0.09544467528440137;
	setAttr -s 8 ".wl[740].w[0:7]"  0.092153747093498911 0.11417338401875497 
		0.13728865065498669 0.1474681708826987 0.14740564179457041 0.13936596855966657 0.12671818652754099 
		0.095426250468282903;
	setAttr -s 8 ".wl[741].w[0:7]"  0.093298378092596002 0.11512296641341782 
		0.13753284989237408 0.14684876309576672 0.14673699404170304 0.13861409171286759 0.12624026047086032 
		0.095605696280414501;
	setAttr -s 8 ".wl[742].w[0:7]"  0.46436214696665878 0.20007954024843791 
		0.10205753531282963 0.068934137665517786 0.051795582719199797 0.043446991533754593 
		0.038661338152057453 0.030662727401544045;
	setAttr -s 8 ".wl[743].w[0:7]"  0.093348892737979569 0.11516327986777596 
		0.13753021032409138 0.1468220803453322 0.14670963265876324 0.13858716118477998 0.12622696623264426 
		0.095611776648633406;
	setAttr -s 8 ".wl[744].w[0:7]"  0.36164778419631349 0.26757746394765286 
		0.12193416158672461 0.076690933722758009 0.05536633097536723 0.045537777582662184 
		0.040064936740940915 0.031180611247580564;
	setAttr -s 8 ".wl[745].w[0:7]"  0.34955481351646112 0.26335767346848782 
		0.12589401756103064 0.080120298430085016 0.058115321538112032 0.047893850511472678 
		0.042182154175151469 0.032881870799199242;
	setAttr -s 8 ".wl[746].w[0:7]"  0.34186068846637102 0.25942390456153297 
		0.12844460635593599 0.082563591286385976 0.060131258315144917 0.049643564973855664 
		0.043764825017414681 0.034167561023358779;
	setAttr -s 8 ".wl[747].w[0:7]"  0.34365920362223712 0.25957672249436808 
		0.1279303461868434 0.082157437652188817 0.059809268987564959 0.049370783461007289 
		0.043521260090800221 0.033974977504989907;
	setAttr -s 8 ".wl[748].w[0:7]"  0.35379330149078569 0.26360911899926798 
		0.12466885384613646 0.079184260737234308 0.057384188595396318 0.04727760667542974 
		0.041633355178938528 0.032449314476811132;
	setAttr -s 8 ".wl[749].w[0:7]"  0.36423049208786334 0.26763820693271317 
		0.12118576965134126 0.076139423391279937 0.054942222468075251 0.045182212877647149 
		0.039749147533221903 0.03093252505785804;
	setAttr -s 8 ".wl[750].w[0:7]"  0.25660163239552047 0.25741924421368978 
		0.16970690259992377 0.10220884944202911 0.070605534948761192 0.056741162480795922 
		0.04924826265314472 0.037468411266134982;
	setAttr -s 8 ".wl[751].w[0:7]"  0.25247246268770845 0.25274759175407302 
		0.16968267630864672 0.10427622546586811 0.072608902151955562 0.058531649843658475 
		0.050881293648034127 0.038799198140055502;
	setAttr -s 8 ".wl[752].w[0:7]"  0.24925600245200411 0.24929732229874066 
		0.16938471992953863 0.10581972297537101 0.074184356369847645 0.059966244945232582 
		0.052201421546410942 0.039890209482854426;
	setAttr -s 8 ".wl[753].w[0:7]"  0.24971669513462533 0.24976307054870994 
		0.16930418530511127 0.10561362697637101 0.073989317457212142 0.059796098939707214 
		0.052048063601800455 0.039768942036462709;
	setAttr -s 8 ".wl[754].w[0:7]"  0.25349582316271224 0.25380352734136452 
		0.16947325595756949 0.1038070288434022 0.072178114132345483 0.058159142313998206 
		0.050546975682457328 0.038536132566150641;
	setAttr -s 8 ".wl[755].w[0:7]"  0.25717490849868291 0.25802748327729003 
		0.16956895087744323 0.10193884343812762 0.070365414489079445 0.056535438537068231 
		0.049064450381211475 0.037324510501097197;
	setAttr -s 8 ".wl[756].w[0:7]"  0.19490812773541832 0.21731831907161397 
		0.19829263444702883 0.12939160113593684 0.08749867761158435 0.069083627824131591 
		0.059284032876878133 0.04422297929740799;
	setAttr -s 8 ".wl[757].w[0:7]"  0.19545678547026865 0.21425083789104044 
		0.1953055719924226 0.12986815525378587 0.088811717290124853 0.070426353798377403 
		0.060565377979279154 0.045315200324701002;
	setAttr -s 8 ".wl[758].w[0:7]"  0.19591719715014105 0.21186680901172872 
		0.19282561774634377 0.13015642405053951 0.089848539085026768 0.071522565651378059 
		0.061625782446844544 0.046237064857997626;
	setAttr -s 8 ".wl[759].w[0:7]"  0.19600168373115567 0.21212504021612555 
		0.19299798663508011 0.13009272445019732 0.089721851859771648 0.071401397228391728 
		0.061513118158741914 0.046146197720536214;
	setAttr -s 8 ".wl[760].w[0:7]"  0.19561219611211475 0.21483012558050932 
		0.19569306615722226 0.12971946514810914 0.08853490341793821 0.070164926948618617 
		0.060323733592652022 0.045121583042835693;
	setAttr -s 8 ".wl[761].w[0:7]"  0.19497579345420574 0.21764663592839548 
		0.19851236667615657 0.12930388439346258 0.087346449918744268 0.06894179983933986 
		0.059153755579572205 0.044119314210123217;
	setAttr -s 8 ".wl[762].w[0:7]"  0.15405569850110726 0.19203630877664749 
		0.19196317359691212 0.15271614118984059 0.10537170121550382 0.082407460925415385 
		0.070088910076047228 0.051360605718526166;
	setAttr -s 8 ".wl[763].w[0:7]"  0.15571587576047383 0.18996286681056654 
		0.1897698651853118 0.15172727142404166 0.106012723080729 0.083380134262958872 0.071115414714140318 
		0.05231584876177809;
	setAttr -s 8 ".wl[764].w[0:7]"  0.1571616336894712 0.18829102421733354 
		0.18794147395109978 0.15084600050962393 0.10648948785955389 0.0841698310479604 0.071968215698818158 
		0.053132333026139011;
	setAttr -s 8 ".wl[765].w[0:7]"  0.15711837718518851 0.18844646089888925 
		0.18810199422550583 0.15089780049309898 0.10641597838160029 0.084081345880758995 
		0.071880168121044127 0.053057874813913837;
	setAttr -s 8 ".wl[766].w[0:7]"  0.15560842782486009 0.1903064806686037 
		0.190122051387452 0.15183705331142394 0.10585137357351469 0.083189420159845193 0.070927168050524375 
		0.052158025023776027;
	setAttr -s 8 ".wl[767].w[0:7]"  0.15398956434312094 0.19222753352400826 
		0.19215744086579911 0.15277419373706008 0.10528256651767594 0.082304189930224619 
		0.069987854014211606 0.051276657067899474;
	setAttr -s 8 ".wl[768].w[0:7]"  0.12804761831390427 0.16813977533330879 
		0.17470145081341609 0.16509459686433922 0.1239326189572551 0.09763006440092023 0.082709006042431685 
		0.059744869274424635;
	setAttr -s 8 ".wl[769].w[0:7]"  0.12977052793045604 0.16770221733511573 
		0.17318500815583193 0.16341003685589703 0.12378285008069774 0.098145832873804323 
		0.083436441224820218 0.060567085543377024;
	setAttr -s 8 ".wl[770].w[0:7]"  0.13130525622081715 0.1673221801841549 
		0.1719407199656188 0.161982966079008 0.12359618143715934 0.098545180939719548 0.084033582829900214 
		0.061273932343622134;
	setAttr -s 8 ".wl[771].w[0:7]"  0.13123107719010302 0.16737988121402536 
		0.17205297510124187 0.16209302635094994 0.12357540363449809 0.098488307977214598 
		0.083967415694553141 0.061211912837413833;
	setAttr -s 8 ".wl[772].w[0:7]"  0.12960739978156624 0.16782053192517493 
		0.17343178719962876 0.16365009540198569 0.12373643372312797 0.098022932353891215 
		0.083294942817723594 0.060435876796901503;
	setAttr -s 8 ".wl[773].w[0:7]"  0.12795775182867453 0.16820019604438652 
		0.17483773112628959 0.16522614830943341 0.12390646328504948 0.097563359687614343 
		0.08263307705645033 0.059675272662101847;
	setAttr -s 8 ".wl[774].w[0:7]"  0.11124073246450744 0.14498460595774734 
		0.16247441866150994 0.16236408547243422 0.13914790097047414 0.11351282982323486 0.096772294523211025 
		0.069503132126881126;
	setAttr -s 8 ".wl[775].w[0:7]"  0.11281152810892181 0.1455276350170521 
		0.16134678160714463 0.16115002176785809 0.13834654930621842 0.11350301266829221 0.097136882490323678 
		0.070177589034188886;
	setAttr -s 8 ".wl[776].w[0:7]"  0.11422905683949605 0.14600149106738269 
		0.16041094648017992 0.16011568277241453 0.13761673235071009 0.11345097447613943 0.097418271401262149 
		0.07075684461241516;
	setAttr -s 8 ".wl[777].w[0:7]"  0.11415309865158538 0.14599292059294044 
		0.16049715867217476 0.16020785870211027 0.1376392578749526 0.11342737627133183 0.09737549844043776 
		0.070706830794467004;
	setAttr -s 8 ".wl[778].w[0:7]"  0.11264978652577856 0.14550437222465468 
		0.16153419436625011 0.16134771616392843 0.13839514364043201 0.11345178882351736 0.09704525661894732 
		0.07007174163649138;
	setAttr -s 8 ".wl[779].w[0:7]"  0.11115448663940664 0.1449693915418975 
		0.1625766417626808 0.16247044083253337 0.13917414180968002 0.11348487096498858 0.096723038677640982 
		0.069446987771172072;
	setAttr -s 8 ".wl[780].w[0:7]"  0.10168566726399365 0.13001739477072927 
		0.15317039430309864 0.15484767981322559 0.14647814207572732 0.12581609720752301 0.10909566424100486 
		0.078888960324697832;
	setAttr -s 8 ".wl[781].w[0:7]"  0.10310374740617083 0.13089070095516248 
		0.15264920702100465 0.15398476545292553 0.14547158564580298 0.12538525724687163 0.1091086863814766 
		0.07940604989058514;
	setAttr -s 8 ".wl[782].w[0:7]"  0.10439359486703295 0.13166839551703743 
		0.15220154338559463 0.15325598305422433 0.14457399477155236 0.12497418723658828 0.10908490055695223 
		0.079847400611017805;
	setAttr -s 8 ".wl[783].w[0:7]"  0.10432352191916351 0.13163584075697699 
		0.1522560816062192 0.15331733256546853 0.14461551884638574 0.12497788197423573 0.10906437384306635 
		0.07980944848848387;
	setAttr -s 8 ".wl[784].w[0:7]"  0.10295670012156208 0.13081906155564174 
		0.15276328085107002 0.15411580624694599 0.14556153536904123 0.12539321153235791 0.10906476389385891 
		0.079325640429522018;
	setAttr -s 8 ".wl[785].w[0:7]"  0.10160842563553972 0.1299779374742315 
		0.15323010086568672 0.1549178930582846 0.14652699252245727 0.12582033414742275 0.10907205416347968 
		0.078846262132897804;
	setAttr -s 8 ".wl[786].w[0:7]"  0.094962992213442815 0.1189144317517752 
		0.14262877440405294 0.14948221812485096 0.1482422686846934 0.1355246824014153 0.12089739507422308 
		0.089347237345546268;
	setAttr -s 8 ".wl[787].w[0:7]"  0.09624009322392589 0.11989873519773588 
		0.14265998541435107 0.14877391273575249 0.14737714116850836 0.13481280635319834 0.12056856503561911 
		0.089668760870908956;
	setAttr -s 8 ".wl[788].w[0:7]"  0.097408362058574241 0.12078576550445502 
		0.14269247080253492 0.14816081927845551 0.14660329539804773 0.1341629190541474 0.12024882092001228 
		0.089937546983772987;
	setAttr -s 8 ".wl[789].w[0:7]"  0.097345161476288924 0.12074383179586652 
		0.14271380452416191 0.14820306277764167 0.14664454444838962 0.13418649366573807 0.1202496989738422 
		0.08991340233807113;
	setAttr -s 8 ".wl[790].w[0:7]"  0.096108497172137389 0.11980908415506968 
		0.14270229638084986 0.14886373879054673 0.1474653273862945 0.13486343438933637 0.12057037577040261 
		0.089617245955362898;
	setAttr -s 8 ".wl[791].w[0:7]"  0.0948944167458909 0.11886644963815512 
		0.14264962741062573 0.1495300969736032 0.14828950830678503 0.1355519135177696 0.12089829604835464 
		0.089319691358815734;
	setAttr -s 8 ".wl[792].w[0:7]"  0.15880887333276414 0.21086410870790978 
		0.20986640903564224 0.14607094026282894 0.095063279887175792 0.072967834521631386 
		0.061622368074767654 0.044736186177280056;
	setAttr -s 8 ".wl[793].w[0:7]"  0.15625872576986086 0.21128561107653904 
		0.2107299991742386 0.14734363328965891 0.095344411474497098 0.072962062190653529 
		0.061519690728139835 0.044555866296412089;
	setAttr -s 8 ".wl[794].w[0:7]"  0.15401029537220315 0.21299541503102309 
		0.21269242206929678 0.14810566728973451 0.094927736865744419 0.07236502007294246 
		0.060904098767129634 0.04399934453192595;
	setAttr -s 8 ".wl[795].w[0:7]"  0.15433709838543505 0.214227816837087 
		0.21384535786787862 0.14752984323268201 0.094231398984477355 0.07178664244324244 
		0.06040570669957588 0.04363613554962175;
	setAttr -s 8 ".wl[796].w[0:7]"  0.15700474332472994 0.21366997674190716 
		0.21288653993161272 0.1462210357990909 0.093992631389937034 0.071834690630548897 
		0.060546100618888446 0.043844281563284765;
	setAttr -s 8 ".wl[797].w[0:7]"  0.15922538523274338 0.21202038251612018 
		0.21087485573818501 0.14552249276288093 0.094405980256087069 0.072417573068385269 
		0.061146174732772229 0.044387155692826065;
	setAttr -s 8 ".wl[798].w[0:7]"  0.10801737341418095 0.12608278991816996 
		0.13864232852284095 0.1408653515457706 0.13930614167285274 0.13042144717732138 0.12056672625800965 
		0.096097841490853764;
	setAttr -s 8 ".wl[799].w[0:7]"  0.10733940661121291 0.12556110853717692 
		0.13850164916403307 0.14097949735185572 0.13958091488467567 0.13081771967070485 0.12093994140768025 
		0.096279762372660657;
	setAttr -s 8 ".wl[800].w[0:7]"  0.10674863080539568 0.12513245980796006 
		0.13842563860461066 0.14112411528226299 0.13983996365889423 0.1311449473684056 0.12121966308187736 
		0.096364581390593243;
	setAttr -s 8 ".wl[801].w[0:7]"  0.10684264535955519 0.12523597824722874 
		0.13849882188510446 0.14114632441030137 0.13982203293969664 0.13106859903566237 0.12111921360825113 
		0.096266384514200068;
	setAttr -s 8 ".wl[802].w[0:7]"  0.10752799149599204 0.12576699666078225 
		0.13864483097154717 0.14102568416365413 0.13954326465474196 0.13066562519042707 0.12074075185093201 
		0.096084855011923306;
	setAttr -s 8 ".wl[803].w[0:7]"  0.10811193725005606 0.12618515487642928 
		0.13871235648391148 0.14088931746607672 0.13928645692948929 0.13034569765175572 0.12046796313670663 
		0.096001116205574902;
	setAttr -s 8 ".wl[804].w[0:7]"  0.15662583640884162 0.21250895312376028 
		0.21184520277231594 0.14678245021991163 0.094651571060653653 0.07238132040688984 
		0.061017129214271049 0.044187536793355978;
	setAttr -s 8 ".wl[805].w[0:7]"  0.10743172179476247 0.12566373398440045 
		0.13857474809156689 0.14100427268447691 0.13956387012798593 0.13074217119504597 0.12083965726082627 
		0.096179824860935209;
	setAttr -s 8 ".wl[806].w[0:7]"  0.14186228552737476 0.19408492783937764 
		0.19506159540293302 0.15943815740367931 0.10761657832053391 0.082527706903285217 
		0.069442903015146801 0.049965845587669352;
	setAttr -s 8 ".wl[807].w[0:7]"  0.14159152264117345 0.19332114934980185 
		0.1943615922750396 0.15962977708487064 0.10809375648200013 0.082951710611301605 0.069813991352755178 
		0.050236500203057539;
	setAttr -s 8 ".wl[808].w[0:7]"  0.1433286901800177 0.19258003001737664 
		0.19326565778158911 0.15847559211149215 0.10812409706796899 0.08329883460428765 0.070243663008714013 
		0.050683435228553675;
	setAttr -s 8 ".wl[809].w[0:7]"  0.14531172643359994 0.19254699704243081 
		0.19291919056256754 0.15718886423149825 0.10768401467391114 0.083212672413896627 
		0.070289513631398737 0.050847021010696908;
	setAttr -s 8 ".wl[810].w[0:7]"  0.14562332064436037 0.19325399874822849 
		0.1935846847307609 0.15698888577191772 0.10722823948590078 0.082805303771104566 0.069931423077982807 
		0.050584143769744301;
	setAttr -s 8 ".wl[811].w[0:7]"  0.14391198933806632 0.19405000426919283 
		0.19462925439682213 0.15808358190605618 0.10719199455024077 0.082468059202619667 
		0.069514936471750069 0.050150179865251998;
	setAttr -s 8 ".wl[812].w[0:7]"  0.13100954977761597 0.17352498478019127 
		0.17820490007124623 0.16407363735593236 0.12100810155702758 0.09462256722690647 0.079990678638967957 
		0.057565580592112219;
	setAttr -s 8 ".wl[813].w[0:7]"  0.13079108043693208 0.17305943922701433 
		0.17781859121778981 0.16405060573702018 0.12131342331333402 0.09492952514587541 0.080267836844234886 
		0.057769498077799339;
	setAttr -s 8 ".wl[814].w[0:7]"  0.13215135133438974 0.17307008322863349 
		0.17714012485105562 0.1629736621094125 0.12101365909468206 0.095028924123236047 0.080510698222763619 
		0.058111497035826964;
	setAttr -s 8 ".wl[815].w[0:7]"  0.13370934809399057 0.17350247354398776 
		0.17688317266566672 0.16195536896300808 0.12042449241271143 0.094818666294879922 
		0.080467919089475523 0.058238558936280063;
	setAttr -s 8 ".wl[816].w[0:7]"  0.13394613178050055 0.17394932752656742 
		0.17725625733481234 0.16195981405788043 0.12012923307517906 0.094521616680228668 
		0.080198641473033933 0.058038978071797663;
	setAttr -s 8 ".wl[817].w[0:7]"  0.13260694374002893 0.17398254099088903 
		0.17789883433061199 0.16300041811849719 0.12041343034938487 0.094425220891636533 
		0.079964489008866685 0.057708122570084834;
	setAttr -s 8 ".wl[818].w[0:7]"  0.12412174702279054 0.15990723703791657 
		0.16755359553599447 0.16236703929496987 0.12954318420361918 0.10389962046393679 0.088557325934825737 
		0.064050250505946912;
	setAttr -s 8 ".wl[819].w[0:7]"  0.12393767598209748 0.15958351030574855 
		0.1673075361462277 0.16227974701788175 0.12975052558216119 0.10413972028760003 0.088782592622162995 
		0.064218692056120324;
	setAttr -s 8 ".wl[820].w[0:7]"  0.12508101127020188 0.15987683032647595 
		0.16684109808842226 0.16147540330060323 0.12929073734136245 0.1040677842443725 0.088886081081425969 
		0.064481054347135802;
	setAttr -s 8 ".wl[821].w[0:7]"  0.12639141518119104 0.16046012853416425 
		0.16664658527231924 0.16077420410603596 0.1286430972641163 0.10375861434027572 0.088760061345346725 
		0.064565893956550838;
	setAttr -s 8 ".wl[822].w[0:7]"  0.12658553559951397 0.16077574243654366 
		0.16688692994631349 0.16084536470463279 0.12844032969755867 0.10352525377414708 0.088540454322434126 
		0.064400389518856044;
	setAttr -s 8 ".wl[823].w[0:7]"  0.12545938533806142 0.16051631395745927 
		0.1673272301837937 0.16163337291537266 0.12888074266742724 0.10359447898723473 0.088441320651201819 
		0.064147155299449296;
	setAttr -s 8 ".wl[824].w[0:7]"  0.1189737689690902 0.14968246786545325 
		0.15962394743806849 0.15827975330747893 0.13518614753615624 0.11168389354051782 0.096280875707065394 
		0.070289145636169892;
	setAttr -s 8 ".wl[825].w[0:7]"  0.11881546064321961 0.14944125214878404 
		0.1594588931666065 0.15817641587390369 0.13532710328089831 0.11187636242036116 0.096470191233905808 
		0.070434321232321073;
	setAttr -s 8 ".wl[826].w[0:7]"  0.11980284103390462 0.14985598746126563 
		0.1591228380819423 0.15764787768102365 0.13481106229713444 0.11167839555500059 0.096456707198405392 
		0.070624290691323394;
	setAttr -s 8 ".wl[827].w[0:7]"  0.12093439194753473 0.15048551211356787 
		0.1589712177306026 0.15722553359552582 0.13417278057183352 0.11129494492312322 0.096253568116010393 
		0.070662051001801854;
	setAttr -s 8 ".wl[828].w[0:7]"  0.12109855756109784 0.15072248516006934 
		0.15913392983588431 0.15731680964401296 0.13403326138676463 0.11110722185066604 0.096068634183910637 
		0.070519100377594221;
	setAttr -s 8 ".wl[829].w[0:7]"  0.12012539059910973 0.15033424000842024 
		0.15945045739707783 0.15784220281878647 0.13453062195395341 0.1112983229093963 0.096082556874201308 
		0.07033620743905461;
	setAttr -s 8 ".wl[830].w[0:7]"  0.11482719801114533 0.14144675391988171 
		0.15324642226340071 0.15317893132194949 0.1386662666092362 0.11838504798088562 0.10356163339975145 
		0.076687746493749501;
	setAttr -s 8 ".wl[831].w[0:7]"  0.11468990872568875 0.14125993346124982 
		0.153134619224603 0.15307782086658175 0.13875924265609119 0.11853960996577814 0.10372279548937914 
		0.076816069610628229;
	setAttr -s 8 ".wl[832].w[0:7]"  0.11555159871103395 0.14172237163644957 
		0.15288546551344809 0.15278226945720511 0.13826053745354627 0.11825427996108785 0.10360903928530972 
		0.076934437981919443;
	setAttr -s 8 ".wl[833].w[0:7]"  0.11653883140448877 0.14235088091289977 
		0.15276289125997961 0.15258330977955584 0.1376838510984455 0.11782369729978127 0.10333702216710644 
		0.076919516077742722;
	setAttr -s 8 ".wl[834].w[0:7]"  0.1166795759734584 0.14253516300394439 
		0.15287409472970442 0.15267590080998877 0.13759049980371865 0.11767240445858193 0.10317934538661097 
		0.076793015833992423;
	setAttr -s 8 ".wl[835].w[0:7]"  0.11582968247319306 0.14209353047692663 
		0.15310841614831316 0.15297582539298116 0.13807418486235593 0.11794848160507569 0.10329025283721059 
		0.076679626203943904;
	setAttr -s 8 ".wl[836].w[0:7]"  0.11155044221864456 0.13491324138419114 
		0.14799341173072328 0.14829985368215887 0.1402816648899633 0.12376641547888927 0.11010891718383888 
		0.083086053431590756;
	setAttr -s 8 ".wl[837].w[0:7]"  0.11142950210968319 0.134762434414332 
		0.14789999578746252 0.14822970362022611 0.1403402050673212 0.1238898254092542 0.11024672879743383 
		0.083201604794286968;
	setAttr -s 8 ".wl[838].w[0:7]"  0.11218987961078135 0.13523425185699997 
		0.14777808806037401 0.14802372063345012 0.13990692944360789 0.12355931493621433 0.11005622331951141 
		0.083251592139061095;
	setAttr -s 8 ".wl[839].w[0:7]"  0.11306128229437055 0.13584026903748772 
		0.14774164647969013 0.14790004053390679 0.13942530452067395 0.12311522554702496 0.10973311691264181 
		0.083183114674204139;
	setAttr -s 8 ".wl[840].w[0:7]"  0.11318416097560804 0.13598920030941017 
		0.14782892387971716 0.14797137484853651 0.13936535413721801 0.12299386281476062 0.10959801568680384 
		0.083069107347945537;
	setAttr -s 8 ".wl[841].w[0:7]"  0.11243369542430932 0.13553398826879204 
		0.14795868676020268 0.14816518923029315 0.13978841100184133 0.12331459546996883 0.10978337316067045 
		0.083022060683922302;
	setAttr -s 8 ".wl[842].w[0:7]"  0.10937197905667015 0.13051070167543513 
		0.14394384973851879 0.14501445301323543 0.14057540464263593 0.12727078836067407 0.1149351596902085 
		0.088377663822621993;
	setAttr -s 8 ".wl[843].w[0:7]"  0.10926285450567939 0.13038218392432177 
		0.14385862469546745 0.14496730248559109 0.14061388878378209 0.12737311010785893 0.11505677039906302 
		0.088485265098236288;
	setAttr -s 8 ".wl[844].w[0:7]"  0.10994958404855427 0.13084283038096944 
		0.14383717938134027 0.1447936467318004 0.14024878570008631 0.12702998115825162 0.11481867787275538 
		0.088479314726242458;
	setAttr -s 8 ".wl[845].w[0:7]"  0.1107368811705205 0.13141818988428192 
		0.14389212889769401 0.14467739052869324 0.13985170825248561 0.12659378915475811 0.11446537980198561 
		0.088364532309581162;
	setAttr -s 8 ".wl[846].w[0:7]"  0.11084722900384697 0.13154521469691366 
		0.14397269797946299 0.1447260709466055 0.13981151237339692 0.12649282370445036 0.11434603436107121 
		0.088258416934252473;
	setAttr -s 8 ".wl[847].w[0:7]"  0.11016903583967444 0.13109835797057312 
		0.14400291236719698 0.14488948158865048 0.14017008038151019 0.12682673385307985 0.11457777588019359 
		0.088265622119121534;
	setAttr -s 8 ".wl[848].w[0:7]"  0.10763200672969664 0.12691199176168083 
		0.14030084226538425 0.14236260394703032 0.14021096622029902 0.12993307713877075 0.11911438748666267 
		0.093534124450475556;
	setAttr -s 8 ".wl[849].w[0:7]"  0.10753303557943543 0.12680067175537019 
		0.14022358516955766 0.14233274670974336 0.14023498528964315 0.13001778140075865 0.11922185312515367 
		0.093635340970337946;
	setAttr -s 8 ".wl[850].w[0:7]"  0.10815553071953192 0.12724190826099516 
		0.14027181171374137 0.14218019010277536 0.13993973340864424 0.12968109776761411 0.11895265592197773 
		0.093577072104719938;
	setAttr -s 8 ".wl[851].w[0:7]"  0.10886959196348826 0.12778291170236777 
		0.1403885181712789 0.1420663485488648 0.13962398059527587 0.1292678018669044 0.11858292676227226 
		0.09341792038954784;
	setAttr -s 8 ".wl[852].w[0:7]"  0.10896929888919125 0.1278929767804842 
		0.14046217702607178 0.14209791396119628 0.1395981884013302 0.12918392973951084 0.11847734150514291 
		0.093318173697072598;
	setAttr -s 8 ".wl[853].w[0:7]"  0.10835419650254992 0.1274632811404473 
		0.14042268300510796 0.14224162138708099 0.13988989168096203 0.12951254339573282 0.11873964755983089 
		0.093376135328288173;
	setAttr -s 8 ".wl[854].w[0:7]"  0.11219003110041391 0.12857975365815005 
		0.13846730405209462 0.13955473640107863 0.13726515390717914 0.12841960881011652 0.11917958606177669 
		0.096343826009190461;
	setAttr -s 8 ".wl[855].w[0:7]"  0.10653280905376772 0.12432429422922181 
		0.13732959459451849 0.14035476566062949 0.13945147518868398 0.1316570960934309 0.12231712190940081 
		0.098032843270346864;
	setAttr -s 8 ".wl[856].w[0:7]"  0.10115535452210649 0.12020334552408969 
		0.1362583969209844 0.14190989760859113 0.14168431389355943 0.1347800009684367 0.12508624354823913 
		0.09892244701399304;
	setAttr -s 8 ".wl[857].w[0:7]"  0.10195926773411278 0.12113690944825524 
		0.13700615890631843 0.14201845932218571 0.14161331616389888 0.13410887117703979 0.12415298007634626 
		0.098004037171843042;
	setAttr -s 8 ".wl[858].w[0:7]"  0.10817724651766891 0.12610136617845646 
		0.1385672603832962 0.14072268920987163 0.13914899889349733 0.13036036697751338 0.12059754485273519 
		0.096324526986961007;
	setAttr -s 8 ".wl[859].w[0:7]"  0.11303157010308285 0.12942470866785166 
		0.13897788205392508 0.13980468643288504 0.13705548657654282 0.12778948134512197 0.11837477647795584 
		0.095541408342634887;
	setAttr -s 8 ".wl[860].w[0:7]"  0.11291593615167254 0.12709764756936517 
		0.13572496804253753 0.13700209187865225 0.13569163630187142 0.12903576905379119 0.12147310540431583 
		0.10105884559779418;
	setAttr -s 8 ".wl[861].w[0:7]"  0.10496325616739648 0.12103663089778688 
		0.1336059132268359 0.1382123002947773 0.13813786210492895 0.13347865266668921 0.12625463444111235 
		0.10431075020047292;
	setAttr -s 8 ".wl[862].w[0:7]"  0.097036676124743898 0.1146226161645346 
		0.13104018778709861 0.14055061138814579 0.14078717817335376 0.13814530803965699 0.1310834750564889 
		0.10673394726597746;
	setAttr -s 8 ".wl[863].w[0:7]"  0.098204925125571857 0.11595402916634787 
		0.13218173654484894 0.14064339690941344 0.14071078389932601 0.13730488198022439 0.12974000225884072 
		0.10526024411542678;
	setAttr -s 8 ".wl[864].w[0:7]"  0.1073358959596193 0.12349748067334314 
		0.13536670216536723 0.13843260536614022 0.13792130564481425 0.13183004478166285 0.12388549536646788 
		0.10173047004258513;
	setAttr -s 8 ".wl[865].w[0:7]"  0.114126284036704 0.12823521901006379 
		0.13639961769535194 0.13727880472592327 0.13545229718487944 0.1282250229771128 0.12038920460964732 
		0.099893549760317432;
	setAttr -s 8 ".wl[866].w[0:7]"  0.11089442537294281 0.12393072660317217 
		0.13278481888851731 0.1351982080917988 0.13492985914392122 0.13071407703271301 0.12484691091269676 
		0.10670097395423797;
	setAttr -s 8 ".wl[867].w[0:7]"  0.10386195627791969 0.11842273965020983 
		0.13039888138100297 0.13649720921174252 0.13657109081038105 0.13446920118008046 0.12934275479933915 
		0.11043616668932442;
	setAttr -s 8 ".wl[868].w[0:7]"  0.096944126361083349 0.11271850427458406 
		0.12764728907377704 0.13785999582251945 0.13899261750814768 0.13827569500325465 0.133887492127505 
		0.1136742798291287;
	setAttr -s 8 ".wl[869].w[0:7]"  0.097991425860534706 0.11385395287827253 
		0.12861127423319049 0.13802363337811166 0.13876599325045036 0.1376686296950613 0.13279284525887994 
		0.11229224544549904;
	setAttr -s 8 ".wl[870].w[0:7]"  0.10595189861311688 0.12051980002513628 
		0.13193885566025046 0.13649112702562724 0.13648601718754758 0.13321581001766267 0.12736520821834202 
		0.10803128325231665;
	setAttr -s 8 ".wl[871].w[0:7]"  0.11194680490792015 0.12490473332746417 
		0.13340056125293534 0.13530622830282713 0.13480957898690335 0.13007987769114501 0.12393069967424282 
		0.10562151585656186;
	setAttr -s 8 ".wl[872].w[0:7]"  0.10754587749038759 0.12037687275090272 
		0.13020988285356236 0.13466147433330414 0.13467282407799772 0.13261452607745303 0.12817021456890523 
		0.11174832784748723;
	setAttr -s 8 ".wl[873].w[0:7]"  0.10348725484726619 0.11710990776820118 
		0.1285962827038914 0.13529665546763459 0.1356832482485047 0.13467990458369342 0.13085375286045151 
		0.11429299352035706;
	setAttr -s 8 ".wl[874].w[0:7]"  0.099714626187581298 0.11402352527007327 
		0.12703727312050081 0.13584677869044498 0.13700759727462333 0.13660407535718921 0.1333303183035327 
		0.11643580579605441;
	setAttr -s 8 ".wl[875].w[0:7]"  0.10030731130356213 0.11463270633588957 
		0.12752905758769742 0.13592887526091435 0.13686020019220951 0.13630202207155284 0.13277099584716318 
		0.11566883140101114;
	setAttr -s 8 ".wl[876].w[0:7]"  0.10466591017666953 0.11827111377932947 
		0.12946376764781189 0.13535582351374909 0.13552218848033712 0.13405207212455514 0.12978809505258176 
		0.11288102922496598;
	setAttr -s 8 ".wl[877].w[0:7]"  0.10813425224875983 0.12093191482066304 
		0.13059303851487286 0.13464901442135319 0.13464902929057099 0.13229267662521424 0.12765922335064323 
		0.11109085072792277;
	setAttr -s 8 ".wl[878].w[0:7]"  0.10786485754045239 0.12655884759228644 
		0.13952392901796096 0.14164292675019466 0.13976935035517099 0.13014508268480365 0.11977858803941081 
		0.094716418019720194;
	setAttr -s 8 ".wl[879].w[0:7]"  0.10379502215610821 0.11709751201835213 
		0.12831174939836121 0.13490287567868894 0.13534461864339253 0.1344926704881739 0.13094496972267947 
		0.11511058189424359;
	setAttr -s 8 ".wl[880].w[0:7]"  0.094246858771298597 0.11714513264242188 
		0.13929012281058495 0.14818549763238886 0.14787834037968561 0.13746849818353302 0.12388025167571068 
		0.09190529790437639;
	setAttr -s 8 ".wl[881].w[0:7]"  0.086324394677381927 0.11045169833799716 
		0.13782638222167104 0.1533768881938247 0.15337539110818207 0.14262612633165017 0.12638730384589453 
		0.089631815283398392;
	setAttr -s 8 ".wl[882].w[0:7]"  0.071849843483965517 0.096121458235572194 
		0.13175879081558259 0.16566543941970782 0.16656647616745129 0.15439367461210657 0.13034229843332015 
		0.083302018832293961;
	setAttr -s 8 ".wl[883].w[0:7]"  0.067156837936274652 0.090899101270839153 
		0.12855606760380414 0.17027644876638895 0.17221159176245637 0.15904352689551499 0.13121830766351525 
		0.08063811810120658;
	setAttr -s 8 ".wl[884].w[0:7]"  0.080115018167893223 0.1045511013801208 
		0.13593373400987543 0.1580113948439423 0.15811094856660501 0.1472308765019219 0.12836518782541889 
		0.087681738704222301;
	setAttr -s 8 ".wl[885].w[0:7]"  0.091896294516176799 0.11519576140600596 
		0.13899551960647361 0.14950710687612734 0.14933217612111452 0.13890545458008133 0.12467173563816211 
		0.091495951255858327;
	setAttr -s 8 ".wl[886].w[0:7]"  0.093991610567440695 0.11237826570740503 
		0.13039129911623826 0.14205192832377203 0.1425380349425063 0.14007933628846914 0.13251961515496313 
		0.10604990989920546;
	setAttr -s 8 ".wl[887].w[0:7]"  0.084118756156987051 0.10362178038730958 
		0.12607419375979784 0.1456019777167824 0.14832708398458053 0.14712602001142908 0.138862504332873 
		0.10626768365024053;
	setAttr -s 8 ".wl[888].w[0:7]"  0.06388952766584173 0.082483547582279132 
		0.11031732089355703 0.14996284137740426 0.16723815582255355 0.16723815718176294 0.15640586408991239 
		0.10246458538668905;
	setAttr -s 8 ".wl[889].w[0:7]"  0.056116389471154014 0.073362824652512038 
		0.10133098931628962 0.14863006877410076 0.17807070692538463 0.17839650121832593 0.16549783311289029 
		0.098594686529342723;
	setAttr -s 8 ".wl[890].w[0:7]"  0.075869902955748567 0.09542165882229843 
		0.1209819370880673 0.14781341727598984 0.15443271510548981 0.15400884986411736 0.14514487268073012 
		0.10632664620755852;
	setAttr -s 8 ".wl[891].w[0:7]"  0.091108826929739914 0.10989041182984578 
		0.12936103495105253 0.1430042217093227 0.14394986713778485 0.14194174796027836 0.13425941754305393 
		0.10648447193892199;
	setAttr -s 8 ".wl[892].w[0:7]"  0.088809511397866359 0.10465481981488466 
		0.12163285004243946 0.13721248652530418 0.14261664875905875 0.14271365093077018 0.14104523454512338 
		0.12131479798455307;
	setAttr -s 8 ".wl[893].w[0:7]"  0.080106322958904241 0.096389783194524695 
		0.11583988767030715 0.1372066774741604 0.14777897703281526 0.1490356072534138 0.14837505995647152 
		0.12526768445940295;
	setAttr -s 8 ".wl[894].w[0:7]"  0.063141344267381577 0.078382496897496767 
		0.09991350148067267 0.13173859112594108 0.15793186282199148 0.16785154737126776 0.16786404359148024 
		0.1331766124437686;
	setAttr -s 8 ".wl[895].w[0:7]"  0.057037749095796356 0.071378371737017804 
		0.09264451778441142 0.12698012166002179 0.16071395981530226 0.17737042165218048 0.1778784631404787 
		0.13599639511479125;
	setAttr -s 8 ".wl[896].w[0:7]"  0.072997446870309401 0.089084587924915581 
		0.10999012182529823 0.1357813697615774 0.15188637266769459 0.15548101037784573 0.15534852302072025 
		0.12943056755163893;
	setAttr -s 8 ".wl[897].w[0:7]"  0.086240451065948631 0.10226395559589331 
		0.12011030502553158 0.13725110703598756 0.14402721311773337 0.1443279876909922 0.14302481218601523 
		0.12275416828189807;
	setAttr -s 8 ".wl[898].w[0:7]"  0.081688553402880101 0.096217583469409243 
		0.11317380365525161 0.13218532798591159 0.14390771831161275 0.14822109215561124 0.14833139059022027 
		0.13627453042910312;
	setAttr -s 8 ".wl[899].w[0:7]"  0.076266060914080183 0.09077938368159405 
		0.10864110906423699 0.13051186906397944 0.14591365597291095 0.15296074931738113 0.15366686931639242 
		0.14126030266942485;
	setAttr -s 8 ".wl[900].w[0:7]"  0.067201015797766106 0.081174033355172273 
		0.099749821973700428 0.1256319993763601 0.14807470145496565 0.16161444244253956 0.1651656370064597 
		0.15138834859303626;
	setAttr -s 8 ".wl[901].w[0:7]"  0.06448312290494794 0.078174859556581752 
		0.096768078813314673 0.1235196619938035 0.14817459244963888 0.16423221606305796 0.16946960129965305 
		0.15517786691900229;
	setAttr -s 8 ".wl[902].w[0:7]"  0.072182669162185215 0.086507063687357333 
		0.10485684363730709 0.12854737772968303 0.14695524478850669 0.15658125999476311 0.15839444373332745 
		0.14597509726686989;
	setAttr -s 8 ".wl[903].w[0:7]"  0.080035448650770252 0.094573185199352247 
		0.11186699633969649 0.13170234286596871 0.14448683084228761 0.14956607973714692 0.14983372963396194 
		0.13793538673081587;
	setAttr -s 8 ".wl[904].w[0:7]"  0.084467805902903911 0.11160420221510699 
		0.14420263240641473 0.15936332671949252 0.15864156766241608 0.14023871641376234 0.11989123481420741 
		0.081590513865696032;
	setAttr -s 8 ".wl[905].w[0:7]"  0.073426336708877174 0.087301472619444528 
		0.10475928075354475 0.12714730174004318 0.14483914803130779 0.15500346681801316 0.15804922501559585 
		0.14947376831317355;
	setAttr -s 8 ".wl[906].w[0:7]"  0.28828867150188603 0.28656753723659317 
		0.14994634814909968 0.088232875486574922 0.0613843492916753 0.04953392440653067 0.04311138213563781 
		0.032934911792002426;
	setAttr -s 8 ".wl[907].w[0:7]"  0.29481927259712121 0.29232046841379833 
		0.14636871867729798 0.085530090208645965 0.059425277196868229 0.047940468658866385 
		0.041721852264983088 0.031873851982418891;
	setAttr -s 8 ".wl[908].w[0:7]"  0.30253360901121268 0.29989024633766315 
		0.14243001033499064 0.082174007224393095 0.056874192580840352 0.04582246733913873 
		0.039853793034371497 0.03042167413738987;
	setAttr -s 8 ".wl[909].w[0:7]"  0.3029823888508964 0.30115834544316988 
		0.14258152569603605 0.081776172481934917 0.056452395728309124 0.045434203227538557 
		0.039493719628365606 0.030121248943749533;
	setAttr -s 8 ".wl[910].w[0:7]"  0.29545178495807378 0.2943168348163287 
		0.14695135218828373 0.08491595769800904 0.05869960651476102 0.047255258471501811 
		0.041079258060612786 0.031329947292429251;
	setAttr -s 8 ".wl[911].w[0:7]"  0.28850103345933509 0.28735753337814385 
		0.15033944214956507 0.087998313361045619 0.061068905588531806 0.049227956909459553 
		0.042821141890149454 0.032685673263769623;
	setAttr -s 8 ".wl[912].w[0:7]"  0.066492898890459007 0.090674950204456192 
		0.12960097565083828 0.17309462958943814 0.17451592777312605 0.15850865404088377 0.12890431745906081 
		0.078207646391737773;
	setAttr -s 8 ".wl[913].w[0:7]"  0.066824585133710965 0.091136366542123468 
		0.13014088397338872 0.17300842267213112 0.17426118003251784 0.15796398811969328 0.12851404533954441 
		0.078150528186890139;
	setAttr -s 8 ".wl[914].w[0:7]"  0.065771353837818097 0.08997025255618897 
		0.12946971954062861 0.17442658389769117 0.17585557109178188 0.15888258318853496 0.12833247671941908 
		0.077291459167937226;
	setAttr -s 8 ".wl[915].w[0:7]"  0.064326988953526426 0.08825276500100078 
		0.12813422616991571 0.17604194223111821 0.17788212130495631 0.16044862733471649 0.12850088214323321 
		0.076412446861532798;
	setAttr -s 8 ".wl[916].w[0:7]"  0.063978145610629047 0.087763232760568868 
		0.12753785493513498 0.17612828663873661 0.17819136122486118 0.1610558126400691 0.1289004688992024 
		0.07644483729079786;
	setAttr -s 8 ".wl[917].w[0:7]"  0.065091706968419663 0.089020575573667243 
		0.12833606463477265 0.17459921435544659 0.17641557691944409 0.16003099703509796 0.12912324342496478 
		0.077382621088186956;
	setAttr -s 8 ".wl[918].w[0:7]"  0.29539229611832485 0.2936207241214765 
		0.14650367818105575 0.08510169265677929 0.058972200896565116 0.04752335117608901 
		0.041334996066414199 0.031551060783295289;
	setAttr -s 8 ".wl[919].w[0:7]"  0.065408228091058507 0.089471037292805311 
		0.12889395769872342 0.17455518420242036 0.17617368479101997 0.15947086360105503 0.12871440416722543 
		0.077312640155691878;
	setAttr -s 8 ".wl[920].w[0:7]"  0.25244190031894925 0.28594834485801851 
		0.18417367915465807 0.094675433224901934 0.061756682360096113 0.048454247959244426 
		0.041544661918791068 0.031005050205340629;
	setAttr -s 8 ".wl[921].w[0:7]"  0.25374788042811242 0.28280943101412548 
		0.18299107426489233 0.095318024980792185 0.062458269419175677 0.049085062380276524 
		0.042119777082084565 0.031470480430540668;
	setAttr -s 8 ".wl[922].w[0:7]"  0.25030455354091985 0.27431454699421753 
		0.18431394934091602 0.098407815857363051 0.064882382529222807 0.051086241052925169 
		0.043874115383468186 0.032816395300967305;
	setAttr -s 8 ".wl[923].w[0:7]"  0.24608615962086852 0.26918172941913715 
		0.18640438003582779 0.10072925196022332 0.066532740424096487 0.05240054560058114 
		0.045005046354036689 0.033660146585228881;
	setAttr -s 8 ".wl[924].w[0:7]"  0.24498219712830632 0.27132602587332399 
		0.18772680313721521 0.10032110676134831 0.065978345951570053 0.051880850840942121 
		0.044523009693549838 0.033261660613744255;
	setAttr -s 8 ".wl[925].w[0:7]"  0.24792125942239437 0.27946816014238079 
		0.18686285021356941 0.097379268168765007 0.063639292283939372 0.049945484873961145 
		0.042825190995210934 0.031958493899779054;
	setAttr -s 8 ".wl[926].w[0:7]"  0.16682216379668027 0.26128581073755897 
		0.24410390765973622 0.12070409770119318 0.072581885686258132 0.054895020948658182 
		0.046165324178228009 0.033441789291687146;
	setAttr -s 8 ".wl[927].w[0:7]"  0.17016071093500923 0.25740220972134803 
		0.23988266497134217 0.12155837678464321 0.073762375084996681 0.055944322605646205 
		0.047107705914827214 0.034181633982187314;
	setAttr -s 8 ".wl[928].w[0:7]"  0.17241777023191227 0.25037805133017005 
		0.2347137662686479 0.12407978654738638 0.07614994687056939 0.057929072972405432 0.048840096166440944 
		0.035491509612467595;
	setAttr -s 8 ".wl[929].w[0:7]"  0.17159870800231589 0.24709788650122907 
		0.23337423503460139 0.12581717498280873 0.077427218866307143 0.058918129761555173 
		0.049674438938102285 0.036092207913080356;
	setAttr -s 8 ".wl[930].w[0:7]"  0.16884661444533883 0.25005774485879723 
		0.23684978409397717 0.12535707513464139 0.076496133042786824 0.058051663460458959 
		0.048882764701150432 0.035458220262849123;
	setAttr -s 8 ".wl[931].w[0:7]"  0.166376191252471 0.25713348408982606 
		0.2423699691836789 0.12279826055291568 0.074055323465523917 0.056025608389699812 
		0.047116227594312707 0.034124935471572006;
	setAttr -s 8 ".wl[932].w[0:7]"  0.1258857748254156 0.23716794169776356 
		0.24141627218712733 0.15515861939050535 0.087302707023131587 0.063640856661436623 
		0.052495634894561133 0.036932193320058822;
	setAttr -s 8 ".wl[933].w[0:7]"  0.12890484039532513 0.23429090781596121 
		0.23730776750266522 0.15482276192742692 0.088516205139745993 0.064816778427922425 
		0.053566976029515483 0.037773762761437693;
	setAttr -s 8 ".wl[934].w[0:7]"  0.13157367207734713 0.22936865467866902 
		0.23173479122321386 0.15567621125801923 0.090683347824382116 0.066709409715084475 
		0.055229618900149532 0.039024294323134694;
	setAttr -s 8 ".wl[935].w[0:7]"  0.13139957065245733 0.22721636728198402 
		0.22986677987918119 0.15688220617269055 0.091749635933425597 0.067512633448589543 
		0.055891660519883403 0.039481146111788518;
	setAttr -s 8 ".wl[936].w[0:7]"  0.12876608198735656 0.22952536428073025 
		0.23318033277749103 0.15749785482851481 0.090796758898857605 0.066522554146960899 
		0.054970075184850364 0.038740977895238414;
	setAttr -s 8 ".wl[937].w[0:7]"  0.12594383408962759 0.2345121745697851 
		0.23911087281810126 0.15665761679264836 0.088530762707876909 0.064552761817030763 
		0.053244229119514187 0.03744774808541599;
	setAttr -s 8 ".wl[938].w[0:7]"  0.10370595970564812 0.19000746278412364 
		0.22552510172433157 0.19368975239712322 0.10811488532402497 0.075886070103933362 
		0.061295856446878377 0.041774911513936551;
	setAttr -s 8 ".wl[939].w[0:7]"  0.10621825157916365 0.19049562401475489 
		0.22148439714453522 0.19079933550575329 0.10894616220294386 0.077017262899438679 
		0.062384516823011091 0.042654449830399302;
	setAttr -s 8 ".wl[940].w[0:7]"  0.10838318541802591 0.18943134263421488 
		0.21681302894017324 0.18858378189985572 0.11048295938466084 0.078649212001714139 
		0.063869041199658916 0.043787448521696526;
	setAttr -s 8 ".wl[941].w[0:7]"  0.10817957771529807 0.18808937781890336 
		0.21573178588165459 0.1889722234305391 0.11131404270695752 0.079258778964218096 0.064354124528112372 
		0.044100088954316934;
	setAttr -s 8 ".wl[942].w[0:7]"  0.10588967519451899 0.18769005421770429 
		0.21909897042081358 0.19164029734474389 0.11069858841163628 0.078287598218317309 
		0.063392061192194274 0.0433027550000714;
	setAttr -s 8 ".wl[943].w[0:7]"  0.10358755079791908 0.18854345033097944 
		0.22419338277187489 0.19414900435903135 0.10904262032396408 0.076550475374127666 
		0.061821099674923594 0.042112416367180008;
	setAttr -s 8 ".wl[944].w[0:7]"  0.088314404356489323 0.1479955339461469 
		0.20929383155518771 0.20826230959784614 0.1346640000483072 0.091610211128420424 0.07232568682037549 
		0.047534022547226669;
	setAttr -s 8 ".wl[945].w[0:7]"  0.090492411163207456 0.14986083325949887 
		0.20588774113735037 0.20460302882789302 0.13464438369419698 0.092609723654578646 
		0.073424574227788655 0.048477304035485967;
	setAttr -s 8 ".wl[946].w[0:7]"  0.092298129529801362 0.15072053048067355 
		0.20235915120618772 0.20106254931940196 0.13523314364472022 0.093979182738766182 
		0.074786949089175617 0.049560363991273428;
	setAttr -s 8 ".wl[947].w[0:7]"  0.092049528428294655 0.14994351613932067 
		0.20187313152997999 0.20079936672842613 0.13592731340121403 0.094476912978404881 
		0.07515904893476337 0.049771181859596253;
	setAttr -s 8 ".wl[948].w[0:7]"  0.090024884275620443 0.14828978946064891 
		0.20484689688202615 0.20400303998064881 0.13610733027299327 0.093635434339411405 
		0.074185925802975408 0.048906698985675623;
	setAttr -s 8 ".wl[949].w[0:7]"  0.088097913339359957 0.14720480456523208 
		0.2087324007227834 0.20791782376025703 0.1354377275101058 0.092139920484001853 0.072716081324671139 
		0.047753328293588776;
	setAttr -s 8 ".wl[950].w[0:7]"  0.077852884114517157 0.12032000573862163 
		0.18731183226528073 0.19725604350575351 0.16382681572383007 0.11198968315350989 0.08666593942177718 
		0.054776796076709794;
	setAttr -s 8 ".wl[951].w[0:7]"  0.079699095234747538 0.1223122160695644 
		0.18583571568369048 0.19418237588188988 0.16218510539902056 0.11247610458462692 0.087587759468627055 
		0.055721627677833098;
	setAttr -s 8 ".wl[952].w[0:7]"  0.081162689588871531 0.12356731019471481 
		0.1839125567584757 0.19135217734791954 0.16124647027549871 0.11331740291174008 0.08871244088275955 
		0.056728952040020118;
	setAttr -s 8 ".wl[953].w[0:7]"  0.080869383996143324 0.12298810337817558 
		0.18339147016697727 0.19126418765039285 0.16183987673760636 0.11376894423364571 0.089017336850119866 
		0.056860696986939026;
	setAttr -s 8 ".wl[954].w[0:7]"  0.079115477545398744 0.12113716294592566 
		0.18470613153911863 0.19401452963352814 0.16344797025965899 0.11339918247577614 0.088199507606496488 
		0.055980037994097023;
	setAttr -s 8 ".wl[955].w[0:7]"  0.077562746376045516 0.11972435036255594 
		0.18669693728825698 0.19717746970932773 0.1645017052174603 0.11246134929626271 0.086972316579005282 
		0.054903125171085546;
	setAttr -s 8 ".wl[956].w[0:7]"  0.071294601279179803 0.10433192197851984 
		0.16070787502154571 0.18845789238490848 0.18021088491164375 0.13168792105335328 0.10127976357721455 
		0.062029139793634579;
	setAttr -s 8 ".wl[957].w[0:7]"  0.0729572408015072 0.10625307733507246 
		0.16096860289464579 0.18582402316842944 0.17761137502970145 0.13147098649769662 0.10193626313879903 
		0.062978431134148;
	setAttr -s 8 ".wl[958].w[0:7]"  0.074225243465006113 0.10753289905705157 
		0.16057281506159199 0.18354797046104909 0.17571362320237718 0.13167953561066356 0.10279065149199997 
		0.063937261650260674;
	setAttr -s 8 ".wl[959].w[0:7]"  0.073906474767398006 0.10701708390881134 
		0.16001007311361179 0.18364164682576944 0.1761711602050626 0.13214923727938521 0.10308400498547755 
		0.064020318914484037;
	setAttr -s 8 ".wl[960].w[0:7]"  0.07231028580317278 0.10519746127720361 
		0.15977054149982198 0.18604586525313857 0.17859311552540247 0.13243511792437795 0.1025177347399065 
		0.063129877976976168;
	setAttr -s 8 ".wl[961].w[0:7]"  0.070965736488816614 0.10379105498685194 
		0.16006821049304476 0.18858927931155339 0.18074063902822723 0.13218226678724057 0.10156636561688022 
		0.062096447287385344;
	setAttr -s 8 ".wl[962].w[0:7]"  0.066357985145356346 0.092919510776651837 
		0.13794049205061246 0.18118579464520332 0.18118579464520354 0.15131059838289709 0.1183278885207215 
		0.070771935833353797;
	setAttr -s 8 ".wl[963].w[0:7]"  0.067877405482620515 0.094719545882009773 
		0.13906860443727848 0.17896063328703776 0.17895748078872439 0.15019657687133681 0.11852279094038035 
		0.071696962310612011;
	setAttr -s 8 ".wl[964].w[0:7]"  0.069001094150732786 0.095939308896504386 
		0.13951347653112522 0.17715500033246112 0.17714657352904489 0.14965448187850153 0.11898758095534803 
		0.072602483726282196;
	setAttr -s 8 ".wl[965].w[0:7]"  0.068670402497868724 0.095460333427062713 
		0.13895919170523674 0.17737326637192141 0.17737286873570687 0.15017771531183371 0.11932633153206013 
		0.072659890418309753;
	setAttr -s 8 ".wl[966].w[0:7]"  0.067201740561329423 0.093735773884192977 
		0.13790176710816043 0.17943839173618553 0.17943839173618553 0.15129085536641193 0.11920170564204818 
		0.071791373965486058;
	setAttr -s 8 ".wl[967].w[0:7]"  0.066012544446114735 0.092413998751441934 
		0.13732573255139294 0.1814438047254659 0.18144421233124269 0.15188454650800215 0.11866729014935143 
		0.070807870536988296;
	setAttr -s 8 ".wl[968].w[0:7]"  0.074223066271152133 0.098055564986033683 
		0.13135085880731304 0.16186238539977676 0.1628535473149087 0.15316279969873173 0.13193448525840684 
		0.086557292263677255;
	setAttr -s 8 ".wl[969].w[0:7]"  0.076714155408177193 0.10132596834538556 
		0.13461925259181173 0.16138953933201064 0.16165478502069647 0.14991919568592069 0.12889752596559984 
		0.085479577650397875;
	setAttr -s 8 ".wl[970].w[0:7]"  0.069490013517511051 0.093991343479388506 
		0.13165242358125309 0.16947088226517851 0.17037240306230197 0.15571453329995721 0.12892180572439974 
		0.080386595070010017;
	setAttr -s 8 ".wl[971].w[0:7]"  0.055938286630218041 0.077627117636542481 
		0.1177324614723943 0.18414028191356124 0.19113565951685824 0.17178348325514167 0.13013572980298743 
		0.071506979772296392;
	setAttr -s 8 ".wl[972].w[0:7]"  0.051982228679730319 0.072031552329653442 
		0.11000657483865862 0.18354246953603509 0.1974461072353472 0.18065813937942071 0.13389840433781805 
		0.070434523663336579;
	setAttr -s 8 ".wl[973].w[0:7]"  0.06366498456273062 0.086017628408883703 
		0.12239723419756912 0.17004554666724536 0.17499606191671185 0.16512622440889271 0.1362067490111552 
		0.081545570826811617;
	setAttr -s 8 ".wl[974].w[0:7]"  0.075142669167139242 0.09518777136280504 
		0.12151142795453751 0.14978241665676548 0.15583570876766942 0.15498529933437621 0.14440147000916495 
		0.10315323674754218;
	setAttr -s 8 ".wl[975].w[0:7]"  0.078642768401508661 0.099435865975009932 
		0.12563697665568543 0.15048984785884223 0.15373753253512265 0.15160989587704124 0.13980624859680491 
		0.10064086409998489;
	setAttr -s 8 ".wl[976].w[0:7]"  0.06985841877223431 0.090605735203609497 
		0.12038989722376155 0.15541451229326009 0.16238315810554269 0.16040815562003785 0.14462435986485347 
		0.096315762916700673;
	setAttr -s 8 ".wl[977].w[0:7]"  0.050637870278228532 0.067659613454177606 
		0.09746546133079656 0.15579201270188234 0.19058039274241526 0.19038983187319425 0.16199061564152062 
		0.085484201977784863;
	setAttr -s 8 ".wl[978].w[0:7]"  0.042816104304698482 0.057196686923450139 
		0.083174948460686321 0.14285620123382745 0.20693392369296437 0.20823945858447004 
		0.17737773592370187 0.08140494087620137;
	setAttr -s 8 ".wl[979].w[0:7]"  0.061052710639342755 0.079335886963217278 
		0.10758080393579347 0.1505806063037485 0.17117367293461327 0.17117895628013377 0.15888151875477338 
		0.10021584418837746;
	setAttr -s 8 ".wl[980].w[0:7]"  0.071750539601093455 0.088767992214403166 
		0.11125814827214266 0.13957690036431664 0.15519563368174863 0.15683014221470307 0.15539999990239281 
		0.12122064374919966;
	setAttr -s 8 ".wl[981].w[0:7]"  0.075042539848240442 0.092644118639613235 
		0.11520456111093291 0.14146875271010992 0.15329672043361406 0.15374155428368938 0.15099051587632262 
		0.11761123709747731;
	setAttr -s 8 ".wl[982].w[0:7]"  0.067407612825685331 0.084696136755092077 
		0.1089060721901912 0.14152267718734368 0.16018333446138383 0.16162393177634071 0.15890711020165349 
		0.11675312460230974;
	setAttr -s 8 ".wl[983].w[0:7]"  0.051084338263878946 0.065551206650750399 
		0.088649236174898435 0.13067362388978057 0.17483640008408449 0.18752134402777074 
		0.18650655600626961 0.11517729490256665;
	setAttr -s 8 ".wl[984].w[0:7]"  0.043951653517672017 0.056460893091063072 
		0.076951711800954198 0.11788594899370461 0.174858545231904 0.20702193652786582 0.20702193652786582 
		0.11584737430897037;
	setAttr -s 8 ".wl[985].w[0:7]"  0.059003219877294615 0.074382763378032221 
		0.097170519920658754 0.13337267747263343 0.16443416811368203 0.17349023943759806 
		0.17332414731668241 0.12482226448341857;
	setAttr -s 8 ".wl[986].w[0:7]"  0.066464541120108828 0.08151546967975129 
		0.10197881676265387 0.13076866311155638 0.15372085304346081 0.16361788227111931 0.16388908050350934 
		0.13804469350784024;
	setAttr -s 8 ".wl[987].w[0:7]"  0.068617768793480208 0.08405240997978064 
		0.1047234165005239 0.13274565164811911 0.15341177809500578 0.16087454702645512 0.16089315491108291 
		0.1346812730455525;
	setAttr -s 8 ".wl[988].w[0:7]"  0.063826229160970874 0.07886232066363856 
		0.099889782463176133 0.13058326687612676 0.15614050010771982 0.16698420474714529 
		0.16717969557250228 0.13653400040872027;
	setAttr -s 8 ".wl[989].w[0:7]"  0.054937874475593403 0.068577119113106891 
		0.088852549848814341 0.12250641212614162 0.15848431958754702 0.1808225613640769 0.18309865237011405 
		0.14272051111460582;
	setAttr -s 8 ".wl[990].w[0:7]"  0.05155642668984297 0.064420097703822801 
		0.083809688665904339 0.11731989489630937 0.15684245178381734 0.18644889553936556 
		0.1917372768945399 0.14786526782639778;
	setAttr -s 8 ".wl[991].w[0:7]"  0.058672536656692954 0.072657105191419449 
		0.092788831999760332 0.124520581567178 0.15578901102996329 0.1743093979279193 0.1764355649922689 
		0.14482697063479777;
	setAttr -s 8 ".wl[992].w[0:7]"  0.066499704520930403 0.09192605664248063 
		0.13390263238103087 0.17746580264898687 0.17776556860569859 0.15494633380492068 0.12330376325315311 
		0.074190138142798998;
	setAttr -s 8 ".wl[993].w[0:7]"  0.060501537294683924 0.07443038044125129 
		0.094105804838755996 0.12422033471248109 0.15320139650262771 0.17097979922120468 
		0.17399167979271773 0.14856906719627758;
	setAttr -s 8 ".wl[994].w[0:7]"  0.42071040769732376 0.20187380041077163 
		0.11099847477718099 0.077214197631338036 0.059007565229657361 0.049905507946752234 
		0.044621457714115034 0.035668588592860928;
	setAttr -s 8 ".wl[995].w[0:7]"  0.43157463301458265 0.19987842297642897 
		0.10876467814494944 0.075418951963240805 0.057545338017211144 0.048632624989225028 
		0.043465100738615009 0.03472025015574693;
	setAttr -s 8 ".wl[996].w[0:7]"  0.44748855991908465 0.19658734850302681 
		0.10551283317826966 0.072863129769439455 0.055477497590600292 0.046839255547552527 
		0.04183919110095171 0.033392184391074956;
	setAttr -s 8 ".wl[997].w[0:7]"  0.45103271197807038 0.19579792822487097 
		0.10479766154628145 0.07230876323594583 0.055026636665617135 0.046448274151395089 
		0.041484680654302608 0.033103343543516559;
	setAttr -s 8 ".wl[998].w[0:7]"  0.4375224434380951 0.19869209104992816 
		0.10756155407794937 0.07446473758725243 0.056759288389057173 0.047947409733989699 
		0.042841992059567145 0.034210483664160886;
	setAttr -s 8 ".wl[999].w[0:7]"  0.42325234109625554 0.20142359563899276 
		0.11048412345886045 0.076796865796736946 0.058659381726141303 0.049600421687037689 
		0.044343225133240592 0.035440045462734569;
	setAttr -s 8 ".wl[1000].w[0:7]"  0.084235609556451416 0.10967394931619073 
		0.14003708717862046 0.15671494909154546 0.15663392975764492 0.14274070791034796 0.12415819443825575 
		0.08580557275094336;
	setAttr -s 8 ".wl[1001].w[0:7]"  0.083082706328206635 0.10860647856310862 
		0.13975609248567572 0.15767958470906718 0.15763354959386766 0.14352893764949293 0.12439333861472669 
		0.08531931205585451;
	setAttr -s 8 ".wl[1002].w[0:7]"  0.081499820921805105 0.10710616502303166 
		0.13932876023241386 0.15904619772902165 0.15903219734229576 0.14463603858879198 0.12470677147393977 
		0.084644048688700069;
	setAttr -s 8 ".wl[1003].w[0:7]"  0.08110676591802031 0.10672395214377539 
		0.13921819231336294 0.15938379680466461 0.15937469039587843 0.14491555578060147 0.12478788435230805 
		0.084489162291388933;
	setAttr -s 8 ".wl[1004].w[0:7]"  0.082327928141109771 0.10788595504826541 
		0.13956730431178738 0.15829946616816826 0.15827003691576591 0.1440526503953182 0.12455798878438212 
		0.085038670235202785;
	setAttr -s 8 ".wl[1005].w[0:7]"  0.083872604354110994 0.10933365018141435 
		0.13995660542144453 0.15700056680032026 0.1569306822075571 0.14298669403250969 0.12424102701076177 
		0.085678169991881339;
	setAttr -s 8 ".wl[1006].w[0:7]"  0.43588964328386393 0.19895612272967506 
		0.10788559189774889 0.074734468395604756 0.056989645518484747 0.048151041982618929 
		0.043028659757038706 0.034364826434964947;
	setAttr -s 8 ".wl[1007].w[0:7]"  0.082686058040939384 0.10823340070901251 
		0.1396686809631113 0.15801168683553393 0.15797430247568958 0.14379753188269537 0.12446862660419122 
		0.0851597124888267;
	setAttr -s 8 ".wl[1008].w[0:7]"  0.46863368521704157 0.22526471918339297 
		0.098577860562497052 0.063058028556256404 0.046133911567751124 0.038190766083147427 
		0.03372969580483251 0.026411333025080756;
	setAttr -s 8 ".wl[1009].w[0:7]"  0.46189768154618127 0.22673900028361563 
		0.10009499770222519 0.064141531822982281 0.046967128804332944 0.038893701896322998 
		0.034356816336413569 0.026909141607926176;
	setAttr -s 8 ".wl[1010].w[0:7]"  0.43483979597237932 0.23157346707485441 
		0.10638509646579505 0.068736695536383827 0.050508228852330112 0.041887716612364248 
		0.037030789681125775 0.029038209804767262;
	setAttr -s 8 ".wl[1011].w[0:7]"  0.41849161935710721 0.23351317742009364 
		0.11031349895549188 0.071719418246507571 0.052835578616825071 0.043866632254188673 
		0.038803398145893161 0.030456677003892853;
	setAttr -s 8 ".wl[1012].w[0:7]"  0.42218826739230336 0.23317242673852268 
		0.10942732115717943 0.071031133004071864 0.052286129960030028 0.04339642528705516 
		0.038380700690559065 0.030117595770278453;
	setAttr -s 8 ".wl[1013].w[0:7]"  0.44443092471065748 0.23013476086455609 
		0.10413761496721222 0.067060637252919261 0.04919431948124315 0.040771066907245225 
		0.036030667280588548 0.028240008535578051;
	setAttr -s 8 ".wl[1014].w[0:7]"  0.30437979584788638 0.30182411344091575 
		0.14152710847781111 0.081349333981457481 0.056225443061386361 0.045278418464752959 
		0.039371337509902009 0.030044449215887989;
	setAttr -s 8 ".wl[1015].w[0:7]"  0.30246133082151694 0.29973729138153882 
		0.14243720305364621 0.082225670011403282 0.056923137649944978 0.04586640562192712 
		0.039894079814858971 0.030454881645163814;
	setAttr -s 8 ".wl[1016].w[0:7]"  0.2941009931460119 0.29064010936548007 
		0.14630103129577113 0.086077469483303873 0.059979129973251 0.048446902809244144 0.042190183946177261 
		0.03226417998076074;
	setAttr -s 8 ".wl[1017].w[0:7]"  0.28853569900336984 0.28451515551530887 
		0.14865433237992523 0.08866852409801515 0.062077178196147768 0.050233206641643699 
		0.043786016948553087 0.033529887217036293;
	setAttr -s 8 ".wl[1018].w[0:7]"  0.28983488917793926 0.28597783642143215 
		0.14816765586673605 0.088064133844061157 0.061563169958532414 0.049790621391467921 
		0.043388371073302463 0.033213322266528462;
	setAttr -s 8 ".wl[1019].w[0:7]"  0.29722401752191241 0.29409472309584994 
		0.14497918124494244 0.084635931757318081 0.058792848342984774 0.047436302459256167 
		0.041286947659259436 0.031550047918476702;
	setAttr -s 8 ".wl[1020].w[0:7]"  0.22372054627637142 0.2537981851152174 
		0.19888955327231969 0.11008574595160338 0.072249298431755246 0.056640404165086457 
		0.048509035872745937 0.036107230914900527;
	setAttr -s 8 ".wl[1021].w[0:7]"  0.22378493495015128 0.25225459196722577 
		0.1982494779428764 0.11054241965324646 0.072749821213464808 0.057083935570689678 
		0.048909717578858612 0.03642510112348691;
	setAttr -s 8 ".wl[1022].w[0:7]"  0.22334277967144878 0.24586751207361554 
		0.19575337260309716 0.11261008775112308 0.074930486827170892 0.05901833028602705 
		0.050658066185995408 0.037819364601521979;
	setAttr -s 8 ".wl[1023].w[0:7]"  0.22274032691537293 0.2416574031565609 
		0.19399643149976484 0.11401590110954248 0.076462348156814061 0.060394037053041041 
		0.051908342246643452 0.038825209862260283;
	setAttr -s 8 ".wl[1024].w[0:7]"  0.22278713820608839 0.24271260689044769 
		0.19454397883146496 0.11370874081182979 0.076071781372520159 0.060035979513494535 
		0.051579957602199224 0.038559816771955323;
	setAttr -s 8 ".wl[1025].w[0:7]"  0.22334850225640548 0.24839620051579084 
		0.19693847318936733 0.111864441613761 0.074050469998277996 0.058224991862824711 0.049935880911509141 
		0.037241039652063483;
	setAttr -s 8 ".wl[1026].w[0:7]"  0.16085077344998969 0.21988405078344758 
		0.21773423082213986 0.14203221679351635 0.090291752557667485 0.068944291460839691 
		0.058123289123989723 0.042139395008409609;
	setAttr -s 8 ".wl[1027].w[0:7]"  0.16153829982847157 0.2188579381009764 
		0.21660684360128346 0.14204161125555567 0.090684045979472577 0.069339185458801994 
		0.058492669910155927 0.042439405865282394;
	setAttr -s 8 ".wl[1028].w[0:7]"  0.16403302030900185 0.21460255275803855 
		0.21198870278142268 0.14224028390792653 0.092339660782982516 0.071011818190030232 
		0.060060016539648306 0.043723944730949239;
	setAttr -s 8 ".wl[1029].w[0:7]"  0.16563227925293217 0.21171003929199672 
		0.20883716114871453 0.14233388249999634 0.093477179006695763 0.072188479025324437 
		0.061172803382246635 0.044648176392093487;
	setAttr -s 8 ".wl[1030].w[0:7]"  0.16511420116702108 0.21247377998753583 
		0.20970088245786592 0.14239089064205507 0.093182779210887814 0.071872347087149457 
		0.060869824950783288 0.044395294496701508;
	setAttr -s 8 ".wl[1031].w[0:7]"  0.16284531056348703 0.21636392367193016 
		0.21395126217748819 0.14229986524209132 0.091662959413879044 0.070308032940735982 
		0.05939354513824923 0.043175100852139076;
	setAttr -s 8 ".wl[1032].w[0:7]"  0.12566115492637125 0.18805923850343603 
		0.19649043596301194 0.17166235775662794 0.11330696136159391 0.084817340593569421 
		0.070398309151665311 0.049604201743724166;
	setAttr -s 8 ".wl[1033].w[0:7]"  0.12629926241377457 0.18775614895437284 
		0.1957105817683959 0.17106236141973791 0.1134721764187393 0.08511381856852647 0.070708867292366639 
		0.049876783164086252;
	setAttr -s 8 ".wl[1034].w[0:7]"  0.12876331587398121 0.1862695954488745 
		0.19258873588707223 0.16885118994339532 0.1141535731803501 0.086343474713670376 0.072001543125446113 
		0.051028571827210142;
	setAttr -s 8 ".wl[1035].w[0:7]"  0.13046992472651603 0.18514191572893288 
		0.19046275195407886 0.16734702450430042 0.11459934541536489 0.087201208950891521 
		0.07291719593764813 0.051860632782267227;
	setAttr -s 8 ".wl[1036].w[0:7]"  0.12992937707576438 0.18541711204248598 
		0.19106187050793966 0.16784689002479308 0.11449159324522157 0.086966064819586228 
		0.072660646265336609 0.051626446018872542;
	setAttr -s 8 ".wl[1037].w[0:7]"  0.12759168021212144 0.18684817629064462 
		0.19395021563504605 0.16994361908848724 0.11388665682708969 0.085816818715395621 
		0.071438427339174757 0.050524405892040783;
	setAttr -s 8 ".wl[1038].w[0:7]"  0.1044861280968177 0.15184019605642596 
		0.17941387770712444 0.17845113361036635 0.1379836995363159 0.10392024865964181 0.085370601856567349 
		0.058534114476740499;
	setAttr -s 8 ".wl[1039].w[0:7]"  0.10503058956427164 0.15206198679236674 
		0.17881678623770081 0.17779391212512349 0.1378337037923909 0.10407350862559892 0.085605431169543209 
		0.05878408169300426;
	setAttr -s 8 ".wl[1040].w[0:7]"  0.1071693317316586 0.15275358985680607 
		0.1765075373625894 0.17527593902529184 0.13721578368362977 0.10468857388414325 0.0865605555317219 
		0.059828688924159289;
	setAttr -s 8 ".wl[1041].w[0:7]"  0.10868927490377615 0.15316268274735892 
		0.17493223556822007 0.17355144874537431 0.13675478401889424 0.10510085367281219 0.087227047145542941 
		0.060581673198021255;
	setAttr -s 8 ".wl[1042].w[0:7]"  0.10820659666952531 0.1529989198367217 
		0.1754089074112487 0.174090529174493 0.13690120475604511 0.10498973162963975 0.087037508277294034 
		0.060366602245032465;
	setAttr -s 8 ".wl[1043].w[0:7]"  0.10614580478588996 0.15237332927503938 
		0.17757141646270855 0.17646263922319513 0.13751348241494921 0.10442796964441234 0.086139543480724376 
		0.059365814713081055;
	setAttr -s 8 ".wl[1044].w[0:7]"  0.092704032183085094 0.12921220235724992 
		0.16584074610859256 0.16933963030711238 0.15406491807098374 0.12139770119598063 0.10001185291355821 
		0.067428916863437383;
	setAttr -s 8 ".wl[1045].w[0:7]"  0.09317824612171631 0.12956915368640184 
		0.1655308478638296 0.16885981633806765 0.15368417052214203 0.12137771316368706 0.10014774413011064 
		0.067652308174044856;
	setAttr -s 8 ".wl[1046].w[0:7]"  0.095065500535931019 0.13089450810654496 
		0.1643102982542505 0.16698975090513013 0.15215350633168545 0.12129594223274813 0.10069894268431773 
		0.068591550949392108;
	setAttr -s 8 ".wl[1047].w[0:7]"  0.096424877163157494 0.13179688554232646 
		0.16344224977119789 0.16570217162618642 0.15107250873676309 0.1212178251767299 0.10107490191313839 
		0.069268580070500421;
	setAttr -s 8 ".wl[1048].w[0:7]"  0.095994583401980041 0.13149666239914373 
		0.16371590717320314 0.16609549304922858 0.15139677517533287 0.12125160200903962 0.10097175728094651 
		0.069077219511125443;
	setAttr -s 8 ".wl[1049].w[0:7]"  0.094163162299562703 0.13024092688541716 
		0.1648921429240934 0.16785632715176035 0.15285480566149501 0.12135151677415743 0.10046246972916224 
		0.068178648574351658;
	setAttr -s 8 ".wl[1050].w[0:7]"  0.084452751270689297 0.11322737421086701 
		0.14817304151439845 0.16218372155953467 0.16030993230849949 0.13771978922603895 0.11599079796762712 
		0.077942591942345096;
	setAttr -s 8 ".wl[1051].w[0:7]"  0.084871582931895048 0.11361306858531214 
		0.14817527041868539 0.16180551696937129 0.15989816085974601 0.1375163542958987 0.11599277647880209 
		0.078127269460289347;
	setAttr -s 8 ".wl[1052].w[0:7]"  0.08655316566587376 0.11510930549068307 
		0.14817017708552249 0.16029493306252426 0.15823610379714953 0.13670993196829428 0.11600900374664234 
		0.078917379183310279;
	setAttr -s 8 ".wl[1053].w[0:7]"  0.087774263141373002 0.11616335980894088 
		0.14814174015598414 0.15923783825130555 0.15706147231296169 0.13612945755531197 0.11600540490408003 
		0.079486463870042587;
	setAttr -s 8 ".wl[1054].w[0:7]"  0.087389347823203081 0.11582476272015556 
		0.14815745006197648 0.15955430487732505 0.1574111928855611 0.13631365243773563 0.1160179105732751 
		0.07933137862076782;
	setAttr -s 8 ".wl[1055].w[0:7]"  0.085750937081442269 0.11438744524400916 
		0.14818555265815905 0.16098539936151224 0.1589933714272152 0.13709690695975318 0.11602104700952644 
		0.078579340258382563;
	setAttr -s 8 ".wl[1056].w[0:7]"  0.10378060749415434 0.12187811832366828 
		0.135975145672982 0.1406358120287656 0.14033218320821569 0.13354317981883415 0.12443351419100429 
		0.099421439262375497;
	setAttr -s 8 ".wl[1057].w[0:7]"  0.10054568864663289 0.1188013143270847 
		0.13427930374694297 0.14105265846754997 0.14103954026467896 0.13569557938365229 0.12702700730911512 
		0.10155890785434307;
	setAttr -s 8 ".wl[1058].w[0:7]"  0.094200610872537338 0.11342704900461065 
		0.13205688403341637 0.14330506110195923 0.14347926916952033 0.13975192939080916 0.13090292425567229 
		0.10287627217147477;
	setAttr -s 8 ".wl[1059].w[0:7]"  0.090616923336421157 0.11072958328622906 
		0.13154095367281118 0.14539307760232659 0.14578620234322121 0.14205916269963542 0.13224583252615091 
		0.10162826453320455;
	setAttr -s 8 ".wl[1060].w[0:7]"  0.094319337969123757 0.11462223323940371 
		0.13417631938242885 0.14477991544131816 0.14478739259661666 0.13921559748155152 0.12883509116574413 
		0.099264112723813289;
	setAttr -s 8 ".wl[1061].w[0:7]"  0.10108374193121156 0.12030302710676284 
		0.13624512882847911 0.14215431980447518 0.14196007652175638 0.13487472674351186 0.12502034153145558 
		0.098358637532347512;
	setAttr -s 8 ".wl[1062].w[0:7]"  0.1050984275323238 0.12102194293865623 
		0.13326527518414194 0.13807498145839722 0.13803513556403937 0.13353647616449929 0.1264592853161465 
		0.10450847584179569;
	setAttr -s 8 ".wl[1063].w[0:7]"  0.10052475107538174 0.11679606787261324 
		0.13083775206244982 0.13867187097718892 0.13878847334879549 0.13628754019614414 0.13009622381805674 
		0.10799732064936977;
	setAttr -s 8 ".wl[1064].w[0:7]"  0.09139424746038427 0.10886470240898952 
		0.12674659112516506 0.14069454098810294 0.14257748855999336 0.14186054120054398 0.13641811828956243 
		0.11144376996725837;
	setAttr -s 8 ".wl[1065].w[0:7]"  0.085844678196617438 0.10425323083305192 
		0.12479441636801165 0.14288790448442945 0.14620846184950675 0.14573173832672584 0.13967324023034819 
		0.11060632971130878;
	setAttr -s 8 ".wl[1066].w[0:7]"  0.091532957179693022 0.11028144349842878 
		0.12936675960037725 0.14295945888848466 0.14383322136862939 0.14176214748082397 0.13408539430973115 
		0.10617861767383187;
	setAttr -s 8 ".wl[1067].w[0:7]"  0.10145604236872804 0.11880306909852301 
		0.13327462335108128 0.13990433851880354 0.13990433680212436 0.13543039793257328 0.1276500174436892 
		0.10357717448447733;
	setAttr -s 8 ".wl[1068].w[0:7]"  0.10297062943808148 0.11764425015459497 
		0.12979373956089804 0.13666320310838512 0.13682666845040461 0.1350485102538003 0.13011581035392472 
		0.11093718867991087;
	setAttr -s 8 ".wl[1069].w[0:7]"  0.098862682620565759 0.11383725281268929 
		0.12740222307465005 0.13682323510783773 0.13785947444019225 0.13725213077643283 0.13338869322731503 
		0.11457430794031696;
	setAttr -s 8 ".wl[1070].w[0:7]"  0.090665468061384036 0.1065746551197735 
		0.12310042492511347 0.13760828566349242 0.14175564225142145 0.14175616952006745 0.13939075687846544 
		0.11914859758028222;
	setAttr -s 8 ".wl[1071].w[0:7]"  0.085860159106521602 0.1024644335548595 
		0.1209134421994815 0.13867538865601542 0.14482985412779514 0.14490556533992593 0.14272581264669712 
		0.1196253443687038;
	setAttr -s 8 ".wl[1072].w[0:7]"  0.090931122436726339 0.10773730950153147 
		0.12507192596667407 0.1394352812913357 0.14222782537874384 0.14200875821990919 0.13789804478294415 
		0.11468973242213532;
	setAttr -s 8 ".wl[1073].w[0:7]"  0.099688834571221158 0.11542292911148291 
		0.1293123585368923 0.13796799185569808 0.13837673859971056 0.13684648338142003 0.1316336170293548 
		0.11075104691422022;
	setAttr -s 8 ".wl[1074].w[0:7]"  0.09895335333336315 0.11325846996937722 
		0.12627552727137817 0.13580809520061821 0.13731553195027538 0.13707804605490728 0.13414410722575842 
		0.11716686899432228;
	setAttr -s 8 ".wl[1075].w[0:7]"  0.096522695179531021 0.11095557309230786 
		0.1246920676095865 0.13565731861119476 0.13825155102867995 0.13823394496498001 0.13608861608804712 
		0.11959823342567286;
	setAttr -s 8 ".wl[1076].w[0:7]"  0.091792085788933192 0.10672207667580455 
		0.12201881652844142 0.13576045751951266 0.14059341014576743 0.14073842887733501 0.13957459486074117 
		0.12280012960346449;
	setAttr -s 8 ".wl[1077].w[0:7]"  0.089295911447823839 0.1046225180127611 
		0.12087494698252862 0.13615443091162283 0.14201916440828208 0.14230924540754519 0.14129041041209947 
		0.12343337241733689;
	setAttr -s 8 ".wl[1078].w[0:7]"  0.092050645308486875 0.10740203291870838 
		0.12303352987450882 0.13666343226236274 0.1407555199682276 0.14076872448366798 0.13888435796485368 
		0.1204417572191839;
	setAttr -s 8 ".wl[1079].w[0:7]"  0.09694694509184594 0.1117606578707183 
		0.1256982854315557 0.13636789585685588 0.13833220858805237 0.1381804885837522 0.13528168889781012 
		0.11743182967940952;
	setAttr -s 8 ".wl[1080].w[0:7]"  0.09814735384574505 0.11824993902746482 
		0.13608236574564614 0.14364544707864471 0.14357454846947179 0.13650707955208424 0.12602148344681119 
		0.09777178283413214;
	setAttr -s 8 ".wl[1081].w[0:7]"  0.094105236251629434 0.1086703384708651 
		0.12309359157846164 0.13547356965441051 0.13935828270134157 0.13940032497835003 0.13800274667104609 
		0.12189590969389577;
	setAttr -s 8 ".wl[1082].w[0:7]"  0.15290092870111582 0.18774149786972705 
		0.18772644277325914 0.15237681339834666 0.10818807767726993 0.085173604381153872 
		0.072636253794534353 0.053256381404593357;
	setAttr -s 8 ".wl[1083].w[0:7]"  0.15171888072249606 0.18686527352807977 
		0.18686527352807977 0.15301751997015442 0.108954654807254 0.085799635120861542 0.073161861127178068 
		0.053616901195896328;
	setAttr -s 8 ".wl[1084].w[0:7]"  0.15019855601773222 0.18744473156369731 
		0.18745140154803966 0.15397194496831565 0.10908949825876002 0.085642091981885299 
		0.072905296322747254 0.053296479338822644;
	setAttr -s 8 ".wl[1085].w[0:7]"  0.14978689806464501 0.18898262805775629 
		0.18899865595422913 0.15430444164425267 0.10841897697757234 0.084822142235052689 
		0.072092006784472334 0.052594250282019472;
	setAttr -s 8 ".wl[1086].w[0:7]"  0.15096737758231463 0.18993486248079347 
		0.18993486248079347 0.15361228950400319 0.10760994506245271 0.084169870362137508 
		0.071547552601551684 0.05222323992595343;
	setAttr -s 8 ".wl[1087].w[0:7]"  0.15256283623292488 0.18926145621594861 
		0.18925419148786965 0.15264108751122948 0.10751509314468377 0.084364430521933736 
		0.071835684576079556 0.052565220309330349;
	setAttr -s 8 ".wl[1088].w[0:7]"  0.09842586636673023 0.11793896374520274 
		0.13518718726466789 0.14287192617360378 0.14285062020670833 0.13661711587136507 0.1267969598133436 
		0.099311360558378414;
	setAttr -s 8 ".wl[1089].w[0:7]"  0.098033862107078928 0.11754784354712033 
		0.13495415626900337 0.14294412260838921 0.14293566689663242 0.13689643825659206 0.12712727223383333 
		0.099560638081350433;
	setAttr -s 8 ".wl[1090].w[0:7]"  0.09728354168229654 0.11691649759221208 
		0.13471725494300613 0.14323797986488199 0.14323755310745467 0.13737630614482238 0.12755740863516093 
		0.099673458030165377;
	setAttr -s 8 ".wl[1091].w[0:7]"  0.096919624090883644 0.11667214920426351 
		0.13471551409592547 0.14346196238615319 0.14346195105967596 0.13758070891905494 0.12765646540158346 
		0.099531624842459851;
	setAttr -s 8 ".wl[1092].w[0:7]"  0.097317746849387168 0.11707404185060841 
		0.13496081957501016 0.14338123985913348 0.14337779605477624 0.13729248928850171 0.12731601345549415 
		0.099279853067088725;
	setAttr -s 8 ".wl[1093].w[0:7]"  0.098073597037423355 0.1177093771569406 
		0.13519537884948607 0.14308521080771411 0.14306831970471115 0.13680893389812854 0.12688680783925416 
		0.099172374706341937;
	setAttr -s 8 ".wl[1094].w[0:7]"  0.15136687314838831 0.18837056010334005 
		0.18837056010334005 0.1533183883385873 0.1082954044316769 0.084993849677160255 0.072361211998666922 
		0.052923152198840216;
	setAttr -s 8 ".wl[1095].w[0:7]"  0.097675837725692424 0.11731235851619976 
		0.13495909710181689 0.14316232204576446 0.14315662691813311 0.13709359421401104 0.12722081312394884 
		0.099419350354433486;
	setAttr -s 8 ".wl[1096].w[0:7]"  0.13650112563083397 0.17777633689241254 
		0.18015890039558391 0.16117300171423204 0.11761193558233134 0.092154922872433515 
		0.078113140739223541 0.056510636172948991;
	setAttr -s 8 ".wl[1097].w[0:7]"  0.13704856223172243 0.1767535330263528 
		0.17891371253714367 0.16048614527810856 0.11801273761362328 0.092818264770912706 
		0.078816416731636849 0.057150627810499774;
	setAttr -s 8 ".wl[1098].w[0:7]"  0.1384881785935205 0.17663768238798844 
		0.17833071380274113 0.15943572066870823 0.117716806899726 0.092894032837136639 0.079029769234315012 
		0.057467095575864019;
	setAttr -s 8 ".wl[1099].w[0:7]"  0.13943407210851969 0.17749355873355785 
		0.17893541842582802 0.15902704234037768 0.11704548948642493 0.092336328418381464 
		0.078566337834111211 0.057161752652799151;
	setAttr -s 8 ".wl[1100].w[0:7]"  0.13894278368469526 0.17853578951433013 
		0.18014172970659115 0.15964409935645232 0.11663758421668399 0.091684555971525097 
		0.077878035106348845 0.056535422443373222;
	setAttr -s 8 ".wl[1101].w[0:7]"  0.13744863964385312 0.17870513920714709 
		0.180782947853878 0.16073870546779487 0.116907240690278 0.09157858956588838 0.077638024169447498 
		0.056200713401712857;
	setAttr -s 8 ".wl[1102].w[0:7]"  0.12439206389531628 0.16289224698208102 
		0.17056369537524257 0.16394174463756572 0.12819707903686794 0.10170710486461386 0.086277117098218073 
		0.062028948110094476;
	setAttr -s 8 ".wl[1103].w[0:7]"  0.12497206377305739 0.16241897542730116 
		0.16963406533195957 0.16311646520178413 0.12827526749116913 0.10216129614483427 0.086832452266244392 
		0.062589414363649912;
	setAttr -s 8 ".wl[1104].w[0:7]"  0.12628365631288294 0.16272509072101984 
		0.16910777497578977 0.16217388067035113 0.12777707961479676 0.10209739925484784 0.086956464201953604 
		0.062878654248358187;
	setAttr -s 8 ".wl[1105].w[0:7]"  0.12705198502878118 0.16349058093694302 
		0.16947224245594036 0.16200475675286746 0.12721000525008347 0.10160129973930225 0.086546519130191082 
		0.062622610705891341;
	setAttr -s 8 ".wl[1106].w[0:7]"  0.12651342784005598 0.16399659482015908 
		0.17036606083518877 0.1627740274172246 0.12711413882112346 0.10115439669855456 0.086004828922702434 
		0.062076524644991152;
	setAttr -s 8 ".wl[1107].w[0:7]"  0.12516484727979324 0.16370553308778521 
		0.17093132508204792 0.16376830909741311 0.12760229778786364 0.10119610423022023 0.085859416609305045 
		0.061772166825571413;
	setAttr -s 8 ".wl[1108].w[0:7]"  0.11657290766598184 0.15126478208677255 
		0.16346277519836805 0.16196593495678335 0.13575148520339475 0.10993779414405808 0.093725523997007884 
		0.06731879674763365;
	setAttr -s 8 ".wl[1109].w[0:7]"  0.11713316611226683 0.15110683592662336 
		0.16274847721597188 0.16123296885598512 0.13560591186177964 0.11021266882984589 0.094149228261352094 
		0.067810742936175117;
	setAttr -s 8 ".wl[1110].w[0:7]"  0.11833267976122096 0.1516270381413774 
		0.16228777782081819 0.16052677945303467 0.13497926608185606 0.11001307995522235 0.094173186571903642 
		0.068060192214566648;
	setAttr -s 8 ".wl[1111].w[0:7]"  0.11899827095745162 0.15230527764612131 
		0.16251497804771811 0.16051122384793917 0.13449571273238106 0.10955359970819929 0.093790376746646656 
		0.067830560313542718;
	setAttr -s 8 ".wl[1112].w[0:7]"  0.11847057395872634 0.15249654967493581 
		0.16319925752259321 0.16120859565830811 0.13461582727270099 0.10927988282339908 0.093376940698317548 
		0.067352372391018794;
	setAttr -s 8 ".wl[1113].w[0:7]"  0.11724468805404269 0.15197693428468867 
		0.16368623557873233 0.16195736705908462 0.13524428841309655 0.10946427887681959 0.093336043884496414 
		0.067090163849039181;
	setAttr -s 8 ".wl[1114].w[0:7]"  0.11069540398081955 0.14169620047691617 
		0.15762117711438742 0.15761285225234006 0.14107633543014059 0.11743645543257032 0.10102611375293562 
		0.07283546155989043;
	setAttr -s 8 ".wl[1115].w[0:7]"  0.11122190045698362 0.14172763050764625 
		0.15706954446154447 0.15705079153740237 0.14079059526020149 0.11755315528482317 0.1013246031721079 
		0.073261779319290607;
	setAttr -s 8 ".wl[1116].w[0:7]"  0.11232019106799854 0.14235780286992925 
		0.15667089972146361 0.15660734231944512 0.14011198282162518 0.11722953321874456 0.10124145256110861 
		0.073460795419685185;
	setAttr -s 8 ".wl[1117].w[0:7]"  0.11291123948601134 0.14296172887559783 
		0.15680630695227596 0.15669621597361874 0.13970930522302089 0.11679799405026577 0.10087272663783273 
		0.07324448280137684;
	setAttr -s 8 ".wl[1118].w[0:7]"  0.11241137721662406 0.14296105604618639 
		0.15733427485394733 0.15723811180158087 0.13996714313331904 0.11667658270572763 0.10058052929558665 
		0.072830924947028003;
	setAttr -s 8 ".wl[1119].w[0:7]"  0.11129428180929299 0.14232665270628497 
		0.1577508768638495 0.15770857132933047 0.14065553665321673 0.11699162422980804 0.10065113246189605 
		0.072621323946321162;
	setAttr -s 8 ".wl[1120].w[0:7]"  0.10592108946317423 0.13349585731191996 
		0.15188833276109764 0.15292011443458844 0.14430948648792813 0.12425504115439658 0.10835421355140161 
		0.078855864835493367;
	setAttr -s 8 ".wl[1121].w[0:7]"  0.10640883405279374 0.13364267283659442 
		0.15152037805827476 0.15248113393786464 0.14396272681152242 0.12423741044868282 0.10853177171663578 
		0.079215072137631432;
	setAttr -s 8 ".wl[1122].w[0:7]"  0.1074151556303915 0.13432578766806197 
		0.15133370308713295 0.15209863291120024 0.14331465504435795 0.1238162671988319 0.10834180819447313 
		0.079353990265550359;
	setAttr -s 8 ".wl[1123].w[0:7]"  0.10794791341361192 0.13486867053622401 
		0.15149722352184014 0.1521430419547978 0.14300048768549084 0.12341622162164795 0.10798339902065499 
		0.079143042245732223;
	setAttr -s 8 ".wl[1124].w[0:7]"  0.10748158520664089 0.134748120290448 
		0.15186211135456787 0.15256157393514674 0.14332130334195273 0.12342358610910803 0.10780709255211934 
		0.078794627210016635;
	setAttr -s 8 ".wl[1125].w[0:7]"  0.10646118943073314 0.13405875782512963 
		0.15206694385209604 0.15295591815127696 0.14398183876480597 0.12384098084309868 0.10798787767353304 
		0.078646493459326519;
	setAttr -s 8 ".wl[1126].w[0:7]"  0.10217839992337199 0.1267847885515187 
		0.14590659279292664 0.14906682941747887 0.14552736551883144 0.12995254907511292 0.11532892988413362 
		0.085254544836625909;
	setAttr -s 8 ".wl[1127].w[0:7]"  0.10262531870550022 0.12699339665799916 
		0.14569902271410562 0.14872062346940337 0.14518533590554397 0.12983503741325986 0.11539661973150134 
		0.085544645402686539;
	setAttr -s 8 ".wl[1128].w[0:7]"  0.10354258321565153 0.12768262898127064 
		0.14570628438323363 0.14837932932183365 0.14462417763525925 0.12935005366501307 0.1151050395052695 
		0.085609903292468703;
	setAttr -s 8 ".wl[1129].w[0:7]"  0.10402338434878654 0.12816944536312458 
		0.14591127872249646 0.14837662824394041 0.1443925382039101 0.1289821727587222 0.11475155740858672 
		0.085392994950433107;
	setAttr -s 8 ".wl[1130].w[0:7]"  0.10359401400920326 0.127982935522164 
		0.14612381295263818 0.14870656653538497 0.14471439429346433 0.12908623915277059 0.11468058404335983 
		0.085111453491014857;
	setAttr -s 8 ".wl[1131].w[0:7]"  0.10266638504350756 0.12728773550407124 
		0.14612671653209627 0.14905525568738615 0.14528785445316375 0.12957137119810738 0.11496628736660618 
		0.085038394215061514;
	setAttr -s 8 ".wl[1132].w[0:7]"  0.099717639004798686 0.1221934459357026 
		0.14115384518533777 0.14646251342237634 0.1452954106032916 0.13369261408174268 0.12066825342089886 
		0.090816278345851473;
	setAttr -s 8 ".wl[1133].w[0:7]"  0.10013092840314396 0.12242739817614337 
		0.14104905984997815 0.14617496477473599 0.14499036581658448 0.13352167207503535 0.12065789738112026 
		0.091047713523258342;
	setAttr -s 8 ".wl[1134].w[0:7]"  0.10097897689939614 0.12310178963192005 
		0.1411735803109844 0.14585853327547635 0.14452831580758352 0.13301725451891966 0.12029657553352971 
		0.091044974022190112;
	setAttr -s 8 ".wl[1135].w[0:7]"  0.10142189252525262 0.12354766274215559 
		0.14139725179897505 0.14582467049005254 0.14436051401744654 0.13268129827330108 0.11994904827148059 
		0.090817661881336054;
	setAttr -s 8 ".wl[1136].w[0:7]"  0.10102351819003763 0.12333264469476166 
		0.14151039298499915 0.14609863638073611 0.14465111507483663 0.1328380367097961 0.11995302779348448 
		0.090592628171348208;
	setAttr -s 8 ".wl[1137].w[0:7]"  0.100167405953 0.12265300763544489 
		0.14139179178723774 0.14641985876211186 0.14512387115971173 0.13334468970823057 0.12031077392726013 
		0.090588601067003199;
	setAttr -s 8 ".wl[1138].w[0:7]"  0.097782230617677671 0.11842395799611642 
		0.13684715445779191 0.14438816321547698 0.14425768924379095 0.13645952661680455 0.12538329984645619 
		0.096457978005885431;
	setAttr -s 8 ".wl[1139].w[0:7]"  0.098163124988605244 0.11866757315374242 
		0.13681770425895484 0.14414497579347824 0.14400370821402619 0.13626097031550613 0.12531088597631757 
		0.096631057299369466;
	setAttr -s 8 ".wl[1140].w[0:7]"  0.098946700632835505 0.11931603459898114 
		0.1370231635220413 0.14384513272688118 0.14364662578899035 0.13576594632435782 0.12489917516810267 
		0.09655722123781002;
	setAttr -s 8 ".wl[1141].w[0:7]"  0.099355757212343951 0.11972544427719628 
		0.13725501045224422 0.14378537743356451 0.14353484596875779 0.13546590692421318 0.12456146435320907 
		0.096316193378471068;
	setAttr -s 8 ".wl[1142].w[0:7]"  0.098987556330750001 0.11949794956040857 
		0.13729418606229027 0.14401700035137507 0.14377966862918429 0.13565101763626569 0.12462538963691533 
		0.096147231792810775;
	setAttr -s 8 ".wl[1143].w[0:7]"  0.098197670300506718 0.11884506091367894 
		0.13709201806384405 0.14431978326831424 0.14414543187150639 0.13614942445734293 0.12503536627711725 
		0.096215244847689563;
	setAttr -s 8 ".wl[1144].w[0:7]"  0.10180511697964717 0.12103322741981981 
		0.13679118001797336 0.14209828595601703 0.14176946489337303 0.13429974725965224 0.12432533231974897 
		0.097877645153768358;
	setAttr -s 8 ".wl[1145].w[0:7]"  0.10219851714782437 0.12125938884573619 
		0.136805036051552 0.14186466170449169 0.14149906253591435 0.13407564710210951 0.12421559480772153 
		0.098082091804650412;
	setAttr -s 8 ".wl[1146].w[0:7]"  0.093899105683708045 0.11480810487183923 
		0.13534110389573004 0.14561567608192177 0.14561567608192155 0.13908598066871999 0.12790747515145962 
		0.097726877564699804;
	setAttr -s 8 ".wl[1147].w[0:7]"  0.082283877313691051 0.10448388343025858 
		0.13138740326561477 0.15211567432197856 0.15293556554560661 0.14761368564876323 0.13351568869126584 
		0.095664221782821413;
	setAttr -s 8 ".wl[1148].w[0:7]"  0.081478655518303078 0.10377193446584726 
		0.1310584534096475 0.15276017590351978 0.15367849089668717 0.14829379540870549 0.13380784910091117 
		0.09515064529637865;
	setAttr -s 8 ".wl[1149].w[0:7]"  0.092813756304201855 0.11403305028941668 
		0.13515428077049918 0.14640568713889568 0.14640582629607518 0.13980338003899612 0.12825045073258523 
		0.097133568429330103;
	setAttr -s 8 ".wl[1150].w[0:7]"  0.10127257138140458 0.11711503059120436 
		0.13066806990001234 0.13809118184529587 0.13820797751035363 0.13586921000904253 0.1300007888802503 
		0.10877516988243648;
	setAttr -s 8 ".wl[1151].w[0:7]"  0.10175627494555856 0.11743173507947702 
		0.13078441034065794 0.13785333016157053 0.13794735896353766 0.13556760820416747 0.12975356070927918 
		0.10890572159575171;
	setAttr -s 8 ".wl[1152].w[0:7]"  0.091001092983853865 0.10855521039057281 
		0.12683393903591275 0.14079618299688204 0.14272825188495411 0.1420079418095184 0.13648917507605846 
		0.1115882058222477;
	setAttr -s 8 ".wl[1153].w[0:7]"  0.074179021992204705 0.092354019116276387 
		0.11618608030548512 0.14360327699935416 0.15467480614009541 0.15477338344042496 0.15031396288905696 
		0.11391544911710241;
	setAttr -s 8 ".wl[1154].w[0:7]"  0.07289550204938354 0.091062973856650187 
		0.11515111718342641 0.14388917118518943 0.15595630759769008 0.15610127025934317 0.15156191594784557 
		0.11338174192047165;
	setAttr -s 8 ".wl[1155].w[0:7]"  0.089546570424206023 0.10738081781415489 
		0.12620453330677206 0.14143710751540167 0.14372732371540231 0.14308600341315092 0.13743016531527447 
		0.11118747849563769;
	setAttr -s 8 ".wl[1156].w[0:7]"  0.096878646708908611 0.11099101461888633 
		0.12443550187805374 0.13514364020058445 0.13790205307595119 0.13790064481737327 0.13608807806671455 
		0.12066042063352782;
	setAttr -s 8 ".wl[1157].w[0:7]"  0.097313535911501048 0.11132192230756698 
		0.12462939374487662 0.13502663150449223 0.13764179841358107 0.13763747722979719 0.1357888918495572 
		0.12064034903862762;
	setAttr -s 8 ".wl[1158].w[0:7]"  0.08792045820734759 0.10302844941162591 
		0.119509354614657 0.13532739589372503 0.14231276542960186 0.14304018788102432 0.14254033284634693 
		0.1263210557156714;
	setAttr -s 8 ".wl[1159].w[0:7]"  0.073936179352631581 0.089239690319256756 
		0.10871967495755464 0.1328657349438884 0.14922573187369842 0.15503340029520948 0.15509466483506162 
		0.13588492342269906;
	setAttr -s 8 ".wl[1160].w[0:7]"  0.072949261310739602 0.08824006849678101 
		0.10782719476110132 0.13266822538348044 0.14984710442447557 0.15615306061898399 0.15621745792686068 
		0.13609762707757739;
	setAttr -s 8 ".wl[1161].w[0:7]"  0.086689110824395871 0.10195164755790344 
		0.11874350146828461 0.13548736456832067 0.14309876283628292 0.14399790429883474 0.14356419525781783 
		0.12646751318815977;
	setAttr -s 8 ".wl[1162].w[0:7]"  0.091103854710737064 0.10452958982823618 
		0.11858448150442889 0.13230219561921808 0.13933715290677787 0.14123964544902501 0.1412396454490249 
		0.13166343453255205;
	setAttr -s 8 ".wl[1163].w[0:7]"  0.091383007619823625 0.10476667389240661 
		0.1187560655879331 0.13228831713955988 0.13919219211522688 0.14102330566840487 0.14102330566840454 
		0.13156713230824071;
	setAttr -s 8 ".wl[1164].w[0:7]"  0.085774101194205796 0.099557041413847983 
		0.11497192617207225 0.1313697089483078 0.14122881274384966 0.14507303213006906 0.14530406824486414 
		0.13672130915278322;
	setAttr -s 8 ".wl[1165].w[0:7]"  0.078566842626304839 0.09248887900763153 
		0.1092297415064164 0.12918237248536796 0.14341819051504567 0.15066543197722376 0.15222258270339714 
		0.14422595917861269;
	setAttr -s 8 ".wl[1166].w[0:7]"  0.078133197502695734 0.092066630775852337 
		0.10886118184917767 0.12907756199511761 0.14360697283327861 0.1510805878232809 0.15267277737887722 
		0.14450108984171989;
	setAttr -s 8 ".wl[1167].w[0:7]"  0.085092884870070828 0.098938671538155998 
		0.11448342269071161 0.13132687560077339 0.14156988687143815 0.14565728367657499 0.14589583734046502 
		0.13703513741181009;
	setAttr -s 8 ".wl[1168].w[0:7]"  0.094719846810078154 0.11769866948619406 
		0.13971570482348111 0.1481579318476284 0.14775132868860449 0.13702346867467269 0.1233733970158792 
		0.09155965265346179;
	setAttr -s 8 ".wl[1169].w[0:7]"  0.084819760746951883 0.098206696347396774 
		0.1133068326126285 0.12993422631022539 0.14072339930811895 0.14581111159089602 0.14671065141538189 
		0.14048732166840067;
	setAttr -s 8 ".wl[1170].w[0:7]"  0.44329083606804764 0.20517577908365225 
		0.10637337826364811 0.072159873621051709 0.054384969098902287 0.045671163372564549 
		0.040666688999621892 0.032277311492511347;
	setAttr -s 8 ".wl[1171].w[0:7]"  0.43947357608890031 0.20605523756387303 
		0.10718469007929489 0.072767092442717091 0.054855392054061737 0.046071727653287833 
		0.041025911516514621 0.032566372601350584;
	setAttr -s 8 ".wl[1172].w[0:7]"  0.4570206279663051 0.20261568888752179 
		0.10349703618313918 0.069894764042823798 0.052551437285988101 0.044083815435617284 
		0.03922936122315486 0.031107268975449884;
	setAttr -s 8 ".wl[1173].w[0:7]"  0.48518648685936422 0.19580351071788391 
		0.097646470938699909 0.065524673249706844 0.049119564440311334 0.041149154277023446 
		0.036590383746302142 0.028979755770708247;
	setAttr -s 8 ".wl[1174].w[0:7]"  0.49153820549396543 0.19396007487047473 
		0.096341453393474719 0.064593970588986874 0.04840985318348464 0.040549526716885276 
		0.036054857547656111 0.028552058205072065;
	setAttr -s 8 ".wl[1175].w[0:7]"  0.46662224723033335 0.20012733196083812 
		0.10148623545864677 0.068425185673971864 0.051421775148409961 0.043125616302025396 
		0.0383718142787682 0.030419793947006411;
	setAttr -s 8 ".wl[1176].w[0:7]"  0.094374643637398808 0.11614172672172733 
		0.13718271048977529 0.14662260809975214 0.14655357545420331 0.13822171133982183 0.12594914753788089 
		0.094953876719440361;
	setAttr -s 8 ".wl[1177].w[0:7]"  0.094437059746768887 0.1161844559931102 
		0.13718915617575883 0.14657679734002718 0.14650535563544642 0.13818300951286544 0.12593392626175531 
		0.094990239334267673;
	setAttr -s 8 ".wl[1178].w[0:7]"  0.093322874447706927 0.11527024157735273 
		0.13697071796616817 0.1471764399807087 0.14714116555935602 0.13889420331609159 0.12639026353218988 
		0.094834093620425886;
	setAttr -s 8 ".wl[1179].w[0:7]"  0.092105147665047293 0.11426195747353882 
		0.13671455328169876 0.14787048792608792 0.14786048848199376 0.13968773635867032 0.12688153269049782 
		0.094618096122465356;
	setAttr -s 8 ".wl[1180].w[0:7]"  0.092037292759942393 0.1142129570791222 
		0.13670476772996273 0.14792314340482612 0.14791412064327919 0.13973162898255351 0.12689838214803703 
		0.094577707252276724;
	setAttr -s 8 ".wl[1181].w[0:7]"  0.093192774023170416 0.11517876200187822 
		0.13695470578653499 0.14727457729069213 0.14724279242505639 0.13897655438122997 0.12642229437493804 
		0.094757539716499653;
	setAttr -s 8 ".wl[1182].w[0:7]"  0.46384904995592335 0.20080989215309861 
		0.1020703736973126 0.068857968881725171 0.051754748043615469 0.043408660877461237 
		0.038625436748170879 0.030623869642692661;
	setAttr -s 8 ".wl[1183].w[0:7]"  0.093246398520254639 0.11521836597493039 
		0.13696673440881768 0.14723617024195398 0.14720263614106563 0.13894048165967363 0.12640460932680933 
		0.094784603726494665;
	setAttr -s 8 ".wl[1184].w[0:7]"  0.36184704327505746 0.26972973460378502 
		0.12140106372056308 0.076111858041644553 0.054984420924134025 0.045214038410576515 
		0.039776106777914086 0.030935734246325255;
	setAttr -s 8 ".wl[1185].w[0:7]"  0.34949155270829707 0.26539918271308355 
		0.12549787072727178 0.079614932953684422 0.057787752606385252 0.047613576915691243 
		0.041930992401258686 0.032664138974328044;
	setAttr -s 8 ".wl[1186].w[0:7]"  0.34159057451117392 0.26161541494155172 
		0.12810703757420888 0.082056057862415613 0.059807805049593432 0.0493643760484355 
		0.043513591165826565 0.03394514284679441;
	setAttr -s 8 ".wl[1187].w[0:7]"  0.34337275326993155 0.26202378764864881 
		0.12754400437157187 0.081589182447714917 0.059446294977448078 0.049057812029634745 
		0.04323976368876932 0.033726401566280671;
	setAttr -s 8 ".wl[1188].w[0:7]"  0.35375962498868024 0.266204351673899 
		0.12414006060955922 0.078535599740139711 0.056961910502341895 0.046917039382157112 
		0.041310547708162594 0.03217086539506038;
	setAttr -s 8 ".wl[1189].w[0:7]"  0.36449261920038484 0.27008977243941845 
		0.12056218243569014 0.075474151514442228 0.054502550788370144 0.044809884749134637 
		0.039417123438805539 0.030651715433754088;
	setAttr -s 8 ".wl[1190].w[0:7]"  0.25862718723907424 0.25948442651457848 
		0.16915118051999645 0.10101242874109141 0.069881009162284305 0.056129846791034312 
		0.04870634099693423 0.037007580035006427;
	setAttr -s 8 ".wl[1191].w[0:7]"  0.25432697538606153 0.25461429393266277 
		0.16923810541066817 0.10316973868273928 0.071943641299855046 0.057965630221665176 
		0.050377547200526833 0.03836406786582125;
	setAttr -s 8 ".wl[1192].w[0:7]"  0.25111612016224355 0.25115928047261593 
		0.16898379592475626 0.10470059008673316 0.073515437410200168 0.059393081944400503 
		0.051689592471287155 0.039442101527763333;
	setAttr -s 8 ".wl[1193].w[0:7]"  0.25172717839452718 0.25177578776875115 
		0.16886173544000649 0.1044071024664163 0.073267235239207945 0.059177948811798449 
		0.051496289594471202 0.03928672228482117;
	setAttr -s 8 ".wl[1194].w[0:7]"  0.25568463377773015 0.25600845555026136 
		0.16892641302526928 0.10250812479496195 0.071395156313355676 0.057494235624393736 
		0.049955722067415199 0.03802725884661274;
	setAttr -s 8 ".wl[1195].w[0:7]"  0.2593879941373336 0.26028577283709037 
		0.16894911078721445 0.10063535257872563 0.069575039153904547 0.055869207634747599 
		0.048474102828358942 0.036823420042624969;
	setAttr -s 8 ".wl[1196].w[0:7]"  0.19564138347512899 0.21881376900801477 
		0.19912737214646509 0.12825719440569394 0.08694919133506275 0.0685849186015145 0.05883183024380817 
		0.043794340784311693;
	setAttr -s 8 ".wl[1197].w[0:7]"  0.19621722046902923 0.2156179428476489 
		0.19606170033496434 0.12880359497928939 0.088302173539334436 0.069957840200999225 
		0.060138057901760612 0.044901469726973939;
	setAttr -s 8 ".wl[1198].w[0:7]"  0.19673992576455354 0.21321167592478921 
		0.19355910665800788 0.12908851272740388 0.089342316294369839 0.071052075875587789 
		0.061194526251143681 0.045811860504144264;
	setAttr -s 8 ".wl[1199].w[0:7]"  0.19687009316773718 0.21355297926189498 
		0.19377455267567345 0.1289616019893777 0.089184686187337353 0.070902838402750482 
		0.061056398872703685 0.045696849442525285;
	setAttr -s 8 ".wl[1200].w[0:7]"  0.19646226529458141 0.21638136247023304 
		0.19654573435419478 0.12851824428017819 0.087957831165894285 0.06963584530505558 
		0.059841749797769572 0.044656967332093123;
	setAttr -s 8 ".wl[1201].w[0:7]"  0.19575213522351786 0.21924530434761741 
		0.19940169544005423 0.12809508298926392 0.08675984452652781 0.068410197735592052 
		0.058672026761145669 0.043663712976280862;
	setAttr -s 8 ".wl[1202].w[0:7]"  0.1542697819746908 0.19320663186987957 
		0.19313110788492438 0.15165628128024344 0.10504830422425553 0.082030211056657851 
		0.069722135979737143 0.050935545729611349;
	setAttr -s 8 ".wl[1203].w[0:7]"  0.15596864644697242 0.19104729927662953 
		0.19084836707396619 0.15072719740248647 0.10571492952880271 0.083025212484680921 
		0.070767333365041374 0.051901014421420533;
	setAttr -s 8 ".wl[1204].w[0:7]"  0.15745811706040366 0.189355383019536 
		0.18899515215346926 0.14984946891665854 0.10619834029020371 0.083816953590922699 
		0.071619652783428828 0.052706932185377454;
	setAttr -s 8 ".wl[1205].w[0:7]"  0.15742612745957851 0.1895639236803989 
		0.18920841190132065 0.14985304462357033 0.10610966747988336 0.083711048697373683 
		0.071514722077501508 0.052613054080373055;
	setAttr -s 8 ".wl[1206].w[0:7]"  0.1558802514680267 0.19150684116868374 
		0.19131614551713824 0.15073346808432248 0.1055203697295584 0.082797053812527346 0.070543076443096125 
		0.051702793776646917;
	setAttr -s 8 ".wl[1207].w[0:7]"  0.15421101209130003 0.19346160032152782 
		0.19338909494255871 0.15165845240388384 0.10494084626891773 0.081906702807022835 
		0.069601780113900294 0.05083051105088867;
	setAttr -s 8 ".wl[1208].w[0:7]"  0.1282064836373509 0.16908516478554761 
		0.17497238145552321 0.16431590006970229 0.12403929485122273 0.097506419256377388 
		0.082523397321519018 0.059350958622756633;
	setAttr -s 8 ".wl[1209].w[0:7]"  0.129941757635858 0.16859991856156284 
		0.1734675840855559 0.16265654921527459 0.12387946028297082 0.098024941134880542 0.083255198970024841 
		0.060174590113872488;
	setAttr -s 8 ".wl[1210].w[0:7]"  0.13149392945353683 0.16821275934839086 
		0.17224713034709746 0.16122184529881251 0.1236866360483254 0.098421336105207258 0.08384876192765689 
		0.060867601470972886;
	setAttr -s 8 ".wl[1211].w[0:7]"  0.13142602049948571 0.16830710562652737 
		0.17237133112618422 0.16130165065611418 0.12366908244545625 0.09835922431285217 0.083775130429188466 
		0.060790454904191459;
	setAttr -s 8 ".wl[1212].w[0:7]"  0.12979032095705967 0.16879621476960188 
		0.1737377367517296 0.1628333463594237 0.1238403079829325 0.097891201850937831 0.083098243675699526 
		0.060012627652615294;
	setAttr -s 8 ".wl[1213].w[0:7]"  0.12812197582434029 0.16918716608065934 
		0.17512010578862389 0.16441428328624608 0.12401721516334833 0.09743408619098938 0.082439445902767389 
		0.059265721763025338;
	setAttr -s 8 ".wl[1214].w[0:7]"  0.11136268172592355 0.14560853733880202 
		0.162047225164869 0.16180539949588332 0.13966078278082383 0.11365867527185183 0.096771042329471257 
		0.069085655892375197;
	setAttr -s 8 ".wl[1215].w[0:7]"  0.11294023669063921 0.14613712515108612 
		0.16096298159625286 0.16060282445816992 0.13882393157346862 0.11363888564305141 0.097133182717043604 
		0.069760832170288237;
	setAttr -s 8 ".wl[1216].w[0:7]"  0.11436822667969854 0.14661793381005936 
		0.16005388622012695 0.15956044097387459 0.13807849763677807 0.11358192805758099 0.097411841895649651 
		0.070327244726231933;
	setAttr -s 8 ".wl[1217].w[0:7]"  0.11429632890694828 0.14663033567720563 
		0.16012703428151717 0.15963397876287516 0.13811729298510875 0.11356269231599737 0.097368725983046481 
		0.070263611087301045;
	setAttr -s 8 ".wl[1218].w[0:7]"  0.11278625325924685 0.14615720378746011 
		0.16112109460471968 0.16076207466044887 0.13890781074690486 0.11359713352514801 0.097041021962856633 
		0.069627407453214968;
	setAttr -s 8 ".wl[1219].w[0:7]"  0.11128011809029731 0.14561572407955495 
		0.16213303384985583 0.16189190044060689 0.13970621370071587 0.11363585937266032 0.096721598097984307 
		0.069015552368324531;
	setAttr -s 8 ".wl[1220].w[0:7]"  0.10169112685513795 0.13033610685514888 
		0.15260547115440617 0.15470594942639859 0.14708218450218727 0.12607497068813842 0.10916358609564736 
		0.078340604422935403;
	setAttr -s 8 ".wl[1221].w[0:7]"  0.10312425480784226 0.13121959506750902 
		0.15210732938194163 0.15381662827073636 0.14604690015613922 0.12563719115706987 0.10917972993200592 
		0.07886837122675576;
	setAttr -s 8 ".wl[1222].w[0:7]"  0.10442855701238053 0.13201598608564666 
		0.15166418065512402 0.15305868092085123 0.14514116681630052 0.12522704600493656 0.10916043047561662 
		0.079303952029143865;
	setAttr -s 8 ".wl[1223].w[0:7]"  0.10435877049782502 0.13199319495638867 
		0.15170218114984774 0.15311523061436369 0.14520041709571885 0.12523820406046629 0.10914179469898924 
		0.079250206926400404;
	setAttr -s 8 ".wl[1224].w[0:7]"  0.10297689216820236 0.13116702989735859 
		0.15218661466846756 0.15393956610728401 0.14617441253959623 0.12566061884971597 0.10913942247303467 
		0.078755443296340696;
	setAttr -s 8 ".wl[1225].w[0:7]"  0.10161324472465677 0.13030591218147547 
		0.15264683806378587 0.15477294743260012 0.14715099646559074 0.12608723470204938 0.10914167788698208 
		0.078281148542859599;
	setAttr -s 8 ".wl[1226].w[0:7]"  0.094880141944891291 0.11902613513773472 
		0.14205281157543156 0.14973499315694241 0.14879516581329108 0.13585557630831752 0.12103135543168082 
		0.088623820631710593;
	setAttr -s 8 ".wl[1227].w[0:7]"  0.096171694591781279 0.12002525096344777 
		0.14210566340923342 0.14899088258727602 0.14790886432635567 0.1351327341596131 0.12070251246918295 
		0.088962397493109788;
	setAttr -s 8 ".wl[1228].w[0:7]"  0.09735139076694467 0.12092890408582328 
		0.14214275816266586 0.14835095454505709 0.1471304064562538 0.13448138517887984 0.12038590903595461 
		0.089228291768420911;
	setAttr -s 8 ".wl[1229].w[0:7]"  0.097286002564537788 0.12089006224000276 
		0.14214879383695028 0.14839953765980016 0.14718645996921931 0.13451365314700869 0.12039021356608222 
		0.08918527701639882;
	setAttr -s 8 ".wl[1230].w[0:7]"  0.09603490790194974 0.11994101278302707 
		0.14211592308041229 0.14909544728807825 0.14802809891846566 0.13520149286236399 0.12071121524087487 
		0.088871901924828176;
	setAttr -s 8 ".wl[1231].w[0:7]"  0.09480853014310725 0.11898042716683337 
		0.14205684261799637 0.1497913738395778 0.14885871924254876 0.13589227595254061 0.12103571137344367 
		0.088576119663952263;
	setAttr -s 8 ".wl[1232].w[0:7]"  0.24891310645808737 0.2493280813641707 
		0.17125614325470895 0.10567177534594502 0.073927020538952726 0.059610643543207449 
		0.051822074712342243 0.039471154782585602;
	setAttr -s 8 ".wl[1233].w[0:7]"  0.25060877200107085 0.25077197224271996 
		0.16986610247303321 0.10492607315233979 0.073521506075219262 0.059339576403201345 
		0.051614897826334785 0.039351099826080822;
	setAttr -s 8 ".wl[1234].w[0:7]"  0.25419558750635945 0.25449307203362798 
		0.16931377183570057 0.10322930051972967 0.071983926891240904 0.057996949880479272 
		0.050404077466333568 0.038383313866528629;
	setAttr -s 8 ".wl[1235].w[0:7]"  0.25621003624453043 0.25714360800198804 
		0.17015024870447609 0.10212971089775066 0.070735950221437388 0.056832530859721599 
		0.049320836735867006 0.037477078334228739;
	setAttr -s 8 ".wl[1236].w[0:7]"  0.25422448125866126 0.25572290060767738 
		0.1717472771651562 0.10291683355516069 0.071151401250465027 0.057107814317639005 
		0.049530616520106187 0.037598675325134209;
	setAttr -s 8 ".wl[1237].w[0:7]"  0.25053628017315821 0.25162311551172983 
		0.17228752084202645 0.10476074923378287 0.072804363921460571 0.058542832368029048 
		0.050820583816682356 0.038624554133130602;
	setAttr -s 8 ".wl[1238].w[0:7]"  0.10333178155833674 0.12225788155751688 
		0.13745920659877864 0.14166673137910968 0.14104080239987185 0.13322444519661822 0.12331783280893892 
		0.09770131850082904;
	setAttr -s 8 ".wl[1239].w[0:7]"  0.10386925649384213 0.12268863393544115 
		0.1376001748033728 0.14153510850767012 0.14082158548242268 0.13289584238125399 0.12301232401110743 
		0.097577074384889662;
	setAttr -s 8 ".wl[1240].w[0:7]"  0.10349213196163382 0.12244965401071999 
		0.13761856739361414 0.1417075785234411 0.14102564730456552 0.1330838248468601 0.12312056113955547 
		0.097502034819609895;
	setAttr -s 8 ".wl[1241].w[0:7]"  0.10256068178803748 0.12176110437671188 
		0.13748774220006896 0.14202579593687673 0.14146019160038253 0.13361473557063869 0.12354323127292538 
		0.097546517254358353;
	setAttr -s 8 ".wl[1242].w[0:7]"  0.10200685872946803 0.12130935338606771 
		0.13733296365480693 0.14217348193814647 0.14168796936206679 0.13395941302784017 0.12386126330893701 
		0.097668696592666721;
	setAttr -s 8 ".wl[1243].w[0:7]"  0.10240107242990165 0.12156751369646994 
		0.13732314697931097 0.1419865559921937 0.14147246770579339 0.13375675801279949 0.12374388608845618 
		0.097748599095074565;
	setAttr -s 8 ".wl[1244].w[0:7]"  0.25252335842636559 0.25315957427318708 
		0.1707641024706579 0.10393209494856977 0.072343460280637345 0.058227517760468202 
		0.050574940311516672 0.038474951528597534;
	setAttr -s 8 ".wl[1245].w[0:7]"  0.10294505153383532 0.12201103273406486 
		0.13747638283580083 0.14184751547842769 0.14125175082423894 0.13341886203833025 0.12342873213775382 
		0.097620672417548335;
	setAttr -s 8 ".wl[1246].w[0:7]"  0.21043511510308391 0.22445285571054691 
		0.19231119883705405 0.12209123156251718 0.083720403556588122 0.066566697617165119 
		0.057370781274246455 0.043051716338798125;
	setAttr -s 8 ".wl[1247].w[0:7]"  0.21109689998365008 0.22239875585191693 
		0.18996447961913779 0.12233643098347785 0.084591441938003359 0.067494314559111146 
		0.058273833535473364 0.043843843529229362;
	setAttr -s 8 ".wl[1248].w[0:7]"  0.21004574064495429 0.22011842135123014 
		0.18882226273204589 0.12312842126715925 0.085637918545403965 0.068475923040818842 
		0.059182313667330261 0.044588998751057346;
	setAttr -s 8 ".wl[1249].w[0:7]"  0.20846060036880326 0.21963096673547911 
		0.18981914863663427 0.12374843659330384 0.085899461420102699 0.068602481305390275 
		0.059250630656876885 0.044588274283409682;
	setAttr -s 8 ".wl[1250].w[0:7]"  0.20775515574403045 0.22150307818874324 
		0.19210722674582739 0.12359504116318419 0.085096572204351142 0.067726401306499498 
		0.058390346134290567 0.043826178513073459;
	setAttr -s 8 ".wl[1251].w[0:7]"  0.20866874854463413 0.22405130730563666 
		0.19346764069582906 0.12272840115750992 0.083961916182837021 0.066670570459744921 
		0.057417595281515396 0.043033820372292968;
	setAttr -s 8 ".wl[1252].w[0:7]"  0.17000330848776463 0.19651184231664823 
		0.19296275833866933 0.14313772031689576 0.10007473271129343 0.079173135254187066 
		0.067851197366877267 0.050285305207664312;
	setAttr -s 8 ".wl[1253].w[0:7]"  0.17155535278324727 0.19516065838224494 
		0.19103186212741993 0.1424456404309199 0.10046665858726767 0.079818380014234039 0.068553566176145525 
		0.050967881498520655;
	setAttr -s 8 ".wl[1254].w[0:7]"  0.17171294470365106 0.19387374263519591 
		0.1896821878662473 0.14240123444347288 0.10106137185425218 0.080496216723577263 0.069221864812025025 
		0.051550436961578343;
	setAttr -s 8 ".wl[1255].w[0:7]"  0.17043659931269051 0.19379693389185457 
		0.19010917745368502 0.14303384235593058 0.10131701451980618 0.080582483741429511 
		0.069236579564726106 0.051487369159877699;
	setAttr -s 8 ".wl[1256].w[0:7]"  0.16890796623193538 0.19508100719542468 
		0.19194576081461062 0.14375383156385657 0.10096390620392338 0.079967366200898046 
		0.068558862679626353 0.050821299109725077;
	setAttr -s 8 ".wl[1257].w[0:7]"  0.16862839970503293 0.19651355904037354 
		0.19345371667305308 0.14381420018591393 0.10031462800240398 0.07923425751816561 0.067840405556316097 
		0.050200833318740756;
	setAttr -s 8 ".wl[1258].w[0:7]"  0.14757765941039466 0.17957945846445475 
		0.17970434456822174 0.1546388533778312 0.11365275492426173 0.090443937833757274 0.077424326345282665 
		0.056978665075796006;
	setAttr -s 8 ".wl[1259].w[0:7]"  0.1491520432899853 0.17870965905236461 
		0.1787385749859273 0.15349490235926103 0.11360481306990351 0.090810555379509023 0.077929267930547053 
		0.057560183932502319;
	setAttr -s 8 ".wl[1260].w[0:7]"  0.14958466226662415 0.17789252560849955 
		0.17790445004144406 0.15302470805814297 0.11386244527938862 0.09126459800679787 0.078428117077569873 
		0.058038493661532867;
	setAttr -s 8 ".wl[1261].w[0:7]"  0.14852257037924915 0.17789578240429987 
		0.17794591056480419 0.15363632152134041 0.11418855581878246 0.091387723134371449 
		0.078458240263831705 0.057964895913320803;
	setAttr -s 8 ".wl[1262].w[0:7]"  0.14696671746108009 0.17871455552327858 
		0.17887949410950865 0.15477561785102581 0.11425941307446257 0.091040895305137232 
		0.077969551730294614 0.057393754945212566;
	setAttr -s 8 ".wl[1263].w[0:7]"  0.14645248205713243 0.17958110214387138 
		0.17980679760497084 0.1553104748762783 0.11398057243361946 0.090550050945261085 0.077433444819265576 
		0.056885075119600732;
	setAttr -s 8 ".wl[1264].w[0:7]"  0.1325725331896157 0.16422821735938342 
		0.16758244402882153 0.15850577620363643 0.12506619739611027 0.10122407599415655 0.086958495126305546 
		0.063862260701970625;
	setAttr -s 8 ".wl[1265].w[0:7]"  0.13403275670530415 0.16413874120420527 
		0.16686279342539007 0.15738176828515663 0.12465958253347388 0.10131743643185327 0.087262791282404967 
		0.064344130132211741;
	setAttr -s 8 ".wl[1266].w[0:7]"  0.13452854950307794 0.16379202953724945 
		0.16628545956349797 0.1568062440085167 0.12465491443272518 0.10157829704585021 0.087615715420154949 
		0.064738790488927681;
	setAttr -s 8 ".wl[1267].w[0:7]"  0.13361921191836384 0.16353859899185025 
		0.16636789487557924 0.15729226120242301 0.12505130120308341 0.10176529119820996 0.087689684866763831 
		0.064675755743726443;
	setAttr -s 8 ".wl[1268].w[0:7]"  0.1321704856402601 0.16360519459250222 
		0.16707133937461444 0.15839995934858778 0.12547006255021315 0.10168534743039616 0.087396779697007279 
		0.064200831366418923;
	setAttr -s 8 ".wl[1269].w[0:7]"  0.13161843523164091 0.16394705577757976 
		0.16771045570631782 0.15904004886756584 0.12548051165351684 0.10140436293829302 0.087017757607164292 
		0.063781372217921461;
	setAttr -s 8 ".wl[1270].w[0:7]"  0.12147593730610876 0.15006614697753604 
		0.15819037471451183 0.15651308808381881 0.13396054982039857 0.11161809246927971 0.096790259221036609 
		0.071385551407309719;
	setAttr -s 8 ".wl[1271].w[0:7]"  0.12279541592076434 0.1504339964274051 
		0.1576456844893816 0.15570669587911726 0.1333255304974334 0.11145155154347271 0.096883467977816218 
		0.071757657264609184;
	setAttr -s 8 ".wl[1272].w[0:7]"  0.12328632007305651 0.15039223321926556 
		0.15723727199393367 0.15523181170264799 0.13314099813520155 0.11153926686371768 0.097097924018471352 
		0.072074173993705665;
	setAttr -s 8 ".wl[1273].w[0:7]"  0.12249713260075189 0.15000491507955896 
		0.15733325506579224 0.15552480997401988 0.13356965864915027 0.11179816931007298 0.097234020819381942 
		0.072038038501271925;
	setAttr -s 8 ".wl[1274].w[0:7]"  0.12118436667160663 0.14962729869069527 
		0.15786997583725318 0.15631534681187087 0.13420936218001783 0.11197369909954728 0.097149115512303028 
		0.071670835196705918;
	setAttr -s 8 ".wl[1275].w[0:7]"  0.12065333894018558 0.14964576090821291 
		0.15831986562694617 0.15682965495038795 0.13441647363013989 0.1118811792262827 0.096919358306716302 
		0.071334368411128571;
	setAttr -s 8 ".wl[1276].w[0:7]"  0.11332198475612468 0.13846403677342428 
		0.15109697991362589 0.15111549328910753 0.13947137590307396 0.12074952907574045 0.10636168348452593 
		0.079418916804377349;
	setAttr -s 8 ".wl[1277].w[0:7]"  0.11450632802352212 0.13905595233027612 
		0.1506788900471564 0.15067882013411152 0.138780863691674 0.12037739586137218 0.10625195434198949 
		0.079669795569898186;
	setAttr -s 8 ".wl[1278].w[0:7]"  0.11496752136803048 0.13918092802176779 
		0.15038081369096531 0.15037687868470218 0.13851679670006664 0.12032722484134664 0.10633997870744967 
		0.079909857985671129;
	setAttr -s 8 ".wl[1279].w[0:7]"  0.11427420827242994 0.13873995933938765 
		0.15048085244204848 0.1504854970380553 0.13891847057413323 0.1206431094503302 0.10654346649552246 
		0.079914436388092855;
	setAttr -s 8 ".wl[1280].w[0:7]"  0.11309335297165542 0.13814314758103458 
		0.15088763971176877 0.15091982329281603 0.13960888004078711 0.12102077678293169 0.10665924194575951 
		0.079667137673246999;
	setAttr -s 8 ".wl[1281].w[0:7]"  0.11260219299346981 0.13799188491210959 
		0.1512030116932091 0.15124916764105906 0.13989893656860056 0.12107760324497148 0.10656565286802964 
		0.079411550078550774;
	setAttr -s 8 ".wl[1282].w[0:7]"  0.10818759996074251 0.13071221779308934 
		0.14561542519649806 0.14671859624865244 0.14156415014438517 0.126962554817801 0.11379143378842907 
		0.086448022050402348;
	setAttr -s 8 ".wl[1283].w[0:7]"  0.10926623654383132 0.13138266994665213 
		0.14546858503550555 0.14634695351705007 0.14093622618383886 0.1264801853338153 0.11353213193944875 
		0.086587011499858049;
	setAttr -s 8 ".wl[1284].w[0:7]"  0.10969543386145976 0.13157919528104994 
		0.14530224990606533 0.14611213669779408 0.14067037601234059 0.12634983791310728 0.11352846373195043 
		0.086762306596232713;
	setAttr -s 8 ".wl[1285].w[0:7]"  0.10906922279785403 0.13112862784375764 
		0.14528161353944699 0.14622858213816375 0.14101080929290549 0.12668932580497411 0.11378222559906841 
		0.086809592983829606;
	setAttr -s 8 ".wl[1286].w[0:7]"  0.10799265757085087 0.13045521834091653 
		0.14541983721215429 0.14660010650072972 0.14163679247678634 0.12717528275988513 0.11404639441333811 
		0.086673710725339081;
	setAttr -s 8 ".wl[1287].w[0:7]"  0.10753986376284362 0.13023476703447467 
		0.14558708770412776 0.14685584071907407 0.14192484167485506 0.12731850973418118 0.11405195665135608 
		0.086487132719087409;
	setAttr -s 8 ".wl[1288].w[0:7]"  0.10427283969121467 0.12454780860465268 
		0.14022368509031041 0.14342186876887453 0.14185275218954432 0.13167459588188024 0.12038110324221837 
		0.093625346531304776;
	setAttr -s 8 ".wl[1289].w[0:7]"  0.1052540593861763 0.12523971456074814 
		0.14027541093552517 0.14309029135361412 0.14134401988468789 0.13114520286668288 0.12000510402627577 
		0.093646196986289745;
	setAttr -s 8 ".wl[1290].w[0:7]"  0.10564949369726795 0.12547028506909469 
		0.14021350655846915 0.14290035098903958 0.14111307761742306 0.13096899331917108 0.11992795791622116 
		0.093756334833313401;
	setAttr -s 8 ".wl[1291].w[0:7]"  0.10508253030162706 0.12502943099765573 
		0.14010600160253281 0.14302610816045247 0.14137590244923426 0.13130765061993446 0.12021980329775786 
		0.093852572570805412;
	setAttr -s 8 ".wl[1292].w[0:7]"  0.10410242609887609 0.12433543838188905 
		0.14004806907351747 0.14335882758437599 0.14188189309724614 0.13183909934344135 0.12059966632247739 
		0.093834580098176537;
	setAttr -s 8 ".wl[1293].w[0:7]"  0.1036878963033106 0.12408396189844578 
		0.14010352196659795 0.14356503095834489 0.14212809241557273 0.13203020778271518 0.1206839894742294 
		0.093717299200783352;
	setAttr -s 8 ".wl[1294].w[0:7]"  0.10589581654874801 0.12332026289605749 
		0.13646936869344994 0.13986324619561968 0.13923633796862434 0.13223859455777942 0.12337072633864017 
		0.099605646801080958;
	setAttr -s 8 ".wl[1295].w[0:7]"  0.11006752858240935 0.12647305295159303 
		0.13740929851004999 0.1391443850413252 0.13766121031621273 0.12983192769451748 0.12101773400892285 
		0.098394862894969334;
	setAttr -s 8 ".wl[1296].w[0:7]"  0.10730673866742554 0.12489830796495256 
		0.13767518239250354 0.14021750788448575 0.13905540750150705 0.13110252823177546 0.1217872395747757 
		0.097957087782574434;
	setAttr -s 8 ".wl[1297].w[0:7]"  0.099243330436768085 0.11894403298393427 
		0.1364803779126165 0.14289995787223292 0.14271659773251741 0.13569878010556224 0.12552734046610337 
		0.09848958249026521;
	setAttr -s 8 ".wl[1298].w[0:7]"  0.093823047535175702 0.11418375650229551 
		0.13440935654787423 0.14485503865421179 0.14486906082223505 0.13935587398615293 0.12891268855689525 
		0.099591177395159644;
	setAttr -s 8 ".wl[1299].w[0:7]"  0.097880413605478112 0.11722952616621922 
		0.13489205522911188 0.14268395268641162 0.1426719072734742 0.13692626695668464 0.12736041463133441 
		0.10035546345128588;
	setAttr -s 8 ".wl[1300].w[0:7]"  0.10469382935964069 0.11986957947658332 
		0.13204859720405704 0.13717900466314789 0.13717882889716387 0.13384908835670561 0.1277091092238124 
		0.10747196281888925;
	setAttr -s 8 ".wl[1301].w[0:7]"  0.11030982348888842 0.1241943429386469 
		0.13378102540885828 0.13609902575058977 0.1356594802796546 0.13075403218616302 0.12422387389666029 
		0.10497839605053871;
	setAttr -s 8 ".wl[1302].w[0:7]"  0.10666465212284919 0.12193355186470839 
		0.13363579413082155 0.13730406372842924 0.13713446928719394 0.13254191676043836 0.12568939418626954 
		0.10509615791928978;
	setAttr -s 8 ".wl[1303].w[0:7]"  0.095252592048089071 0.11296791838399538 
		0.13030090635576788 0.14080229430553479 0.14129563180251767 0.13916736424247844 0.13231820516004497 
		0.10789508770157173;
	setAttr -s 8 ".wl[1304].w[0:7]"  0.087000056823893904 0.10525835973283533 
		0.1256165463591713 0.14235549631969902 0.14525138575876315 0.14469256695497673 0.13869679116174555 
		0.11112879688891507;
	setAttr -s 8 ".wl[1305].w[0:7]"  0.093310263645638408 0.11062938804038851 
		0.12803056672932764 0.1403097436555471 0.1415767481593882 0.1405134675644536 0.13479440396084652 
		0.11083541824441004;
	setAttr -s 8 ".wl[1306].w[0:7]"  0.10189009774702129 0.11569356679188453 
		0.12779252618275075 0.13535702235959746 0.13608247712444957 0.1354511209526163 0.13200709628118035 
		0.1157260925604998;
	setAttr -s 8 ".wl[1307].w[0:7]"  0.10685786445685111 0.11971369650880359 
		0.12985476029243731 0.13461498629712346 0.13466458077203267 0.13292194526842391 0.12870014264154803 
		0.11267202376277981;
	setAttr -s 8 ".wl[1308].w[0:7]"  0.1035735219994787 0.11741631685320539 
		0.12918422689231651 0.13553646750732284 0.13581371236768636 0.13455681839248726 0.13039618861419278 
		0.11352274737331017;
	setAttr -s 8 ".wl[1309].w[0:7]"  0.093654792670342213 0.10920821845918484 
		0.12498729582325958 0.13714831651439763 0.13991770942671616 0.13985164986682555 0.13694977395654948 
		0.11828224328272444;
	setAttr -s 8 ".wl[1310].w[0:7]"  0.086627197794845831 0.10257760533368306 
		0.12038654266866165 0.13708171230774147 0.14366987574371787 0.14395015075771489 0.14264675887913686 
		0.12306015651449842;
	setAttr -s 8 ".wl[1311].w[0:7]"  0.09193694600943994 0.10725680619584287 
		0.12310883363135162 0.13650890495970297 0.14064948881084602 0.14066664044728344 0.13882934342946224 
		0.12104303651607085;
	setAttr -s 8 ".wl[1312].w[0:7]"  0.098825252376522399 0.11206201075858081 
		0.12451668985213482 0.13398521396500832 0.13659948075525022 0.13660110751775073 0.13521128462171519 
		0.12219896015303758;
	setAttr -s 8 ".wl[1313].w[0:7]"  0.10179520455999255 0.11459455864432219 
		0.12604854602102433 0.13388280846517536 0.1353439093742827 0.13524388367456433 0.13316440990207135 
		0.11992667935856718;
	setAttr -s 8 ".wl[1314].w[0:7]"  0.099766873029753608 0.11303037985137224 
		0.12534356678587122 0.13420149632645323 0.13623225526804625 0.13620782401187298 0.13436099254095202 
		0.12085661218567847;
	setAttr -s 8 ".wl[1315].w[0:7]"  0.094205152814345022 0.10828264335189193 
		0.12253690561039021 0.13445715366285763 0.13881201180750183 0.13899237046343876 0.13814608549311064 
		0.12456767679646388;
	setAttr -s 8 ".wl[1316].w[0:7]"  0.090583449815161921 0.10493347530392319 
		0.1201780968442288 0.13416657381126279 0.14041027841920162 0.14118562577332538 0.14088415265548895 
		0.12765834737740747;
	setAttr -s 8 ".wl[1317].w[0:7]"  0.093240525664897378 0.10723588390667491 
		0.12155928846101291 0.13408647902083007 0.13914601430428183 0.13955948553233971 0.13905655659278537 
		0.1261157665171779;
	setAttr -s 8 ".wl[1318].w[0:7]"  0.10385283124138794 0.12347660803418697 
		0.13891879725283318 0.14256451554911415 0.14148817165058092 0.13242247045531166 0.12176618522857782 
		0.095510420588007391;
	setAttr -s 8 ".wl[1319].w[0:7]"  0.096125534457084452 0.10945786729922091 
		0.12261086989841996 0.13351229205933637 0.13761278666550983 0.1378572420069461 0.13727792621784521 
		0.12554548139563723;
	setAttr -s 8 ".pm";
	setAttr ".pm[0]" -type "matrix" 1.151145028563028e-16 -2.1995092510043633e-16 0.99999999999999978 -0
		 0.999828576325131 0.018515344006019778 6.1668483673015637e-18 0 -0.018515344006019608 0.999828576325131 3.3300981183430537e-16 -0
		 -0 -0 -0 1;
	setAttr ".pm[1]" -type "matrix" 1.1102230246251563e-16 -2.2204460492503121e-16 0.99999999999999978 -0
		 0.99999999999999978 1.8041124150158786e-16 6.1668483673015637e-18 -0 -1.0408340855860803e-17 0.99999999999999978 3.3300981183430537e-16 -0
		 -2.056036185804762 0.038074744181566957 1.5142946868033004e-32 1;
	setAttr ".pm[2]" -type "matrix" 1.0816668768509524e-16 3.4591428473789569e-16 -0.99999999999999978 -0
		 0.99991782735513435 0.012819459325071253 -4.5969173843767416e-18 -0 0.012819459325071423 -0.99991782735513446 -4.5546442850238948e-16 -0
		 -5.1391799920492414 -0.10396479611613206 -5.2752083219675292e-20 1;
	setAttr ".pm[3]" -type "matrix" 1.1694361448063841e-16 -4.655112011661519e-16 0.99999999999999978 -0
		 0.99991989426029504 0.012657213851394938 6.1469790273001779e-18 0 -0.012657213851394768 0.99991989426029482 5.7791929829335254e-16 -0
		 -8.1092708594928844 -0.10264899822142001 -3.318062793878851e-17 1;
	setAttr ".pm[4]" -type "matrix" 1.1104217180252107e-16 -4.6695409138407724e-16 0.99999999999999978 -0
		 0.99999999999999978 8.7672924475867767e-15 6.1469790273001786e-18 -0 -8.5990242704170265e-15 0.99999999999999956 5.7791929829335244e-16 -0
		 -11.117825301018343 0.038074744181468889 -2.7709349711108685e-17 1;
	setAttr ".pm[5]" -type "matrix" 1.1104217180252107e-16 -4.6695409138407724e-16 0.99999999999999978 -0
		 0.99999999999999978 8.7672924475867767e-15 6.1469790273001786e-18 -0 -8.5990242704170265e-15 0.99999999999999956 5.7791929829335244e-16 -0
		 -13.440384696094091 0.038074744181448281 -3.7211783064470812e-17 1;
	setAttr ".pm[6]" -type "matrix" 1.0063760216748585e-16 5.9177114738447797e-16 -0.99999999999999978 -0
		 0.99975303742184529 0.022223054825883333 -3.4254397313207634e-18 -0 0.022223054825883493 -0.99975303742184496 -7.0035373401500328e-16 -0
		 -15.218033167437401 -0.37635887616200669 -1.587038210029869e-18 1;
	setAttr ".pm[7]" -type "matrix" 0.99999999999999978 -9.9495150262891215e-16 -6.6955851630516499e-16 -0
		 1.0581373131252192e-15 1 -6.2450045135165117e-17 0 9.2239833894003449e-16 2.3245294578089107e-16 0.99999999999999956 -0
		 -2.0578934609250872e-14 -19.443291256557664 -0.05574421816391676 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 8 ".ma";
	setAttr -s 8 ".dpf[0:7]"  1 1 1 1 1 1 1 1;
	setAttr -s 8 ".lw";
	setAttr -s 8 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 20;
	setAttr ".ucm" yes;
	setAttr -s 8 ".ifcl";
	setAttr -s 8 ".ifcl";
createNode groupId -n "groupId1";
	rename -uid "BA9F42E4-B049-3041-768D-7A9742CE8C03";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	rename -uid "5E0F0CFD-DB40-DB7F-E530-8885807AEF50";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:65]";
createNode groupId -n "groupId2";
	rename -uid "6C397A8A-7D48-69BE-C689-FBABB50E2732";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "30AD76A8-8A43-79C2-7641-6FA5E5A19AE7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[66:131]";
createNode groupId -n "groupId3";
	rename -uid "0E996546-D84A-90AE-A78D-1DB2ADE980D9";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	rename -uid "1AF9F6D4-6341-6098-D9FB-CCA9F80969E6";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[132:197]";
createNode groupId -n "groupId4";
	rename -uid "3B785925-0144-1FBA-B7F8-C4A322F1DA24";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	rename -uid "BF87050C-474A-396A-38C7-CB8AD9EF1ABE";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[198:227]";
createNode groupId -n "groupId5";
	rename -uid "59B8AE07-3542-DC93-7C54-7CB6ED8B49B1";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts5";
	rename -uid "EE2B2A19-6F4E-4CCE-682E-4689CF5EE335";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[228:257]";
createNode groupId -n "groupId6";
	rename -uid "C50D819F-8347-03EA-ED96-F7BD8A0448F7";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts6";
	rename -uid "B2EE257F-5540-72EE-7255-4DBD7D2CCC5E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[258:287]";
createNode groupId -n "groupId7";
	rename -uid "68A658A9-0440-C13D-3CDE-CCAA4A90EC89";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts7";
	rename -uid "669CCC81-1745-9403-AE73-21BAA2AB9DFA";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[288:353]";
createNode groupId -n "groupId8";
	rename -uid "9A75FBEB-5243-01D3-A620-63800E64AAEA";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts8";
	rename -uid "282770AC-E747-48D9-3096-818A55B2CCD8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[354:383]";
createNode groupId -n "groupId9";
	rename -uid "DE17D65D-9649-1A38-7821-F59DD1253BF2";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts9";
	rename -uid "6763F69B-AD45-61F9-397E-F9845E9881DE";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[384:413]";
createNode groupId -n "groupId10";
	rename -uid "D0109D05-6F42-29BC-23E5-F69932B8C92D";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts10";
	rename -uid "0F755D8D-5A4F-429E-E9E4-B3802525D0DA";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[414:479]";
createNode groupId -n "groupId11";
	rename -uid "B1018AF5-EB43-51E9-AA6B-A0983F4992A7";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts11";
	rename -uid "F93440DE-D344-548D-866B-8B921A6908D3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[480:509]";
createNode groupId -n "groupId12";
	rename -uid "BC1B0721-A945-ABC7-511C-A2A626502894";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts12";
	rename -uid "DECAA7A0-5643-5F86-04C0-529019CD463D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[510:575]";
createNode groupId -n "groupId13";
	rename -uid "EAA901DE-FE4E-E5E2-CE5F-118BF10EF412";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts13";
	rename -uid "695C4A72-044E-1611-AFE0-8AAE81D1EC5F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[576:641]";
createNode groupId -n "groupId14";
	rename -uid "44229924-1941-CA6E-138E-36B785DE45DE";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts14";
	rename -uid "E4354B95-404C-F049-1CBA-8DB103571BCD";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[642:671]";
createNode groupId -n "groupId15";
	rename -uid "D3BE892B-0F4B-1745-0E50-4C9170D5F75C";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts15";
	rename -uid "7E302E7B-0E43-E2BE-95BB-D591C4DD23A0";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[672:701]";
createNode groupId -n "groupId16";
	rename -uid "D0489D9F-1C48-953F-A174-E5924A197E2F";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts16";
	rename -uid "E41D4C51-0041-2F46-4E58-C68A300EFA7B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[702:767]";
createNode groupId -n "groupId17";
	rename -uid "E020188E-8F41-7275-A0C1-AB8482C1B2C8";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts17";
	rename -uid "885710C0-EA4E-F7F8-4D7E-3F8CFA781446";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[768:797]";
createNode groupId -n "groupId18";
	rename -uid "48F0DA99-A74E-5083-4EDA-17AB28F0A889";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts18";
	rename -uid "5A0C2FDC-B443-0C24-5832-B5AF24509B9E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[798:863]";
createNode groupId -n "groupId19";
	rename -uid "C8261771-3C41-C074-B657-A281FB0640FC";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts19";
	rename -uid "8280F61E-DE4F-E36A-4969-4BBC3CA3F09E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[864:929]";
createNode groupId -n "groupId20";
	rename -uid "F17A683E-3E4B-07EC-B1F5-8B9236E83BBC";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts20";
	rename -uid "37CCA2DE-C543-0261-D479-0F90150F08D9";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[930:959]";
createNode groupId -n "groupId21";
	rename -uid "83D6EF9E-794A-3465-2E68-56BC46067886";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts21";
	rename -uid "9F9C420D-8D4D-B835-90BE-4D8E4344CAFE";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[960:989]";
createNode groupId -n "groupId22";
	rename -uid "397B8B84-6248-B8C1-0F78-42B992E15434";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts22";
	rename -uid "A5CFB50C-DC40-EB97-85B7-3AAFC4FAB977";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[990:1055]";
createNode groupId -n "groupId23";
	rename -uid "1B458AAE-EC4B-3E95-5857-37AD9FD304A6";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts23";
	rename -uid "B0B35556-CE42-57C1-BECA-B9AE3C06851F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[1056:1085]";
createNode groupId -n "groupId24";
	rename -uid "6B448C46-C441-3F77-874C-4D8B91DC4F2E";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts24";
	rename -uid "7E2BD9A0-ED42-B506-2391-29956EC860B5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[1086:1151]";
createNode groupId -n "groupId25";
	rename -uid "6791C4D5-6445-3268-F061-CC9826AA7DA9";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts25";
	rename -uid "9AF8AF37-BD46-A101-EA95-2789AD57DE6D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[1152:1181]";
createNode groupId -n "groupId26";
	rename -uid "46FBF674-1245-B2F4-07D7-C194FE9C0D85";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts26";
	rename -uid "2CAE9469-9246-42BD-8B0E-C4AF29DE5284";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[1182:1247]";
createNode groupId -n "groupId27";
	rename -uid "92FEFD01-A840-230B-C454-D5A0DF2F1A02";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts27";
	rename -uid "692927FB-6246-31C2-7482-A484ED3BE5B7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[1248:1277]";
createNode groupId -n "groupId28";
	rename -uid "492F1B62-0544-0E73-170D-348D9D25B1E2";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts28";
	rename -uid "11B2931B-314D-4C2D-669D-CC9025406A3F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[1278:1343]";
createNode groupId -n "groupId29";
	rename -uid "62149100-144A-B012-684D-C8920A5E69B8";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts29";
	rename -uid "A16C122B-144D-A0D3-858F-E596ADFFF4FF";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[1344:1409]";
createNode groupId -n "groupId30";
	rename -uid "23C43FD8-C14D-3DEE-0ACF-2DA97B8409AE";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts30";
	rename -uid "312FD265-944A-6660-8BDE-598629F6CF72";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[1410:1439]";
createNode tweak -n "tweak1";
	rename -uid "77221DB7-5F40-F410-F1F3-F4B56D529F3A";
createNode objectSet -n "skinCluster1Set";
	rename -uid "77791469-5D4B-3833-BCE8-02B2A888D651";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster1GroupId";
	rename -uid "F1009A74-2448-87BC-3F08-AA8F0F0A28B7";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster1GroupParts";
	rename -uid "B1DE2FD5-8147-E5BD-A14B-7C94F9BF2B7F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet1";
	rename -uid "F68A211C-4949-2423-5029-9AAEC9B79C46";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId32";
	rename -uid "5A668FCD-914E-1959-67F8-7E92783E5F09";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts32";
	rename -uid "E7C3BDBA-1E47-A561-599A-40B75CB9B5E9";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose3";
	rename -uid "21C78A09-C84A-9EBD-832E-1AB8378AA2A5";
	setAttr -s 9 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 9 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 6.5326788425445557
		 9.9383148319867214 8.0076255798339844 0 0 0 6.5326788425445557 9.9383148319867214
		 8.0076255798339844 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0.49534953719418673 0.50460760596874166 0.49534953719418684 0.50460760596874188 1
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
	setAttr -s 56 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 58 ".s";
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
connectAttr "pasted__joint1.s" "pasted__joint2.is";
connectAttr "pasted__joint2.s" "pasted__joint3.is";
connectAttr "pasted__joint3.s" "pasted__joint4.is";
connectAttr "pasted__joint4.s" "pasted__joint5.is";
connectAttr "pasted__joint5.s" "pasted__joint6.is";
connectAttr "pasted__joint6.s" "pasted__joint7.is";
connectAttr "pasted__joint7.s" "pasted__joint8.is";
connectAttr "pasted__polySplitRing40.out" "pasted__polySurface1ShapeOrig.i";
connectAttr "pasted__tweak5.og[0]" "pasted__polySurface1Shape.i";
connectAttr "pasted__groupId55.id" "pasted__polySurface1Shape.iog.og[0].gid";
connectAttr "pasted__lambert2SG6.mwc" "pasted__polySurface1Shape.iog.og[0].gco";
connectAttr "pasted__groupId56.id" "pasted__polySurface1Shape.iog.og[1].gid";
connectAttr "pasted__lambert3SG6.mwc" "pasted__polySurface1Shape.iog.og[1].gco";
connectAttr "pasted__groupId57.id" "pasted__polySurface1Shape.iog.og[7].gid";
connectAttr "pasted__tweakSet5.mwc" "pasted__polySurface1Shape.iog.og[7].gco";
connectAttr "pasted__tweak5.vl[0].vt[0]" "pasted__polySurface1Shape.twl";
connectAttr "pasted__pasted__polySplitRing56.out" "|group10|pasted__group5|pasted__pasted__polySurface1|pasted__pasted__polySurface1ShapeOrig.i"
		;
connectAttr "pasted__pasted__tweak9.og[0]" "|group10|pasted__group5|pasted__pasted__polySurface1|pasted__transform3|pasted__pasted__polySurface1Shape.i"
		;
connectAttr "pasted__pasted__groupId135.id" "|group10|pasted__group5|pasted__pasted__polySurface1|pasted__transform3|pasted__pasted__polySurface1Shape.iog.og[0].gid"
		;
connectAttr "pasted__pasted__lambert2SG10.mwc" "|group10|pasted__group5|pasted__pasted__polySurface1|pasted__transform3|pasted__pasted__polySurface1Shape.iog.og[0].gco"
		;
connectAttr "pasted__pasted__groupId136.id" "|group10|pasted__group5|pasted__pasted__polySurface1|pasted__transform3|pasted__pasted__polySurface1Shape.iog.og[1].gid"
		;
connectAttr "pasted__pasted__lambert3SG10.mwc" "|group10|pasted__group5|pasted__pasted__polySurface1|pasted__transform3|pasted__pasted__polySurface1Shape.iog.og[1].gco"
		;
connectAttr "pasted__pasted__groupId137.id" "|group10|pasted__group5|pasted__pasted__polySurface1|pasted__transform3|pasted__pasted__polySurface1Shape.iog.og[7].gid"
		;
connectAttr "pasted__pasted__tweakSet9.mwc" "|group10|pasted__group5|pasted__pasted__polySurface1|pasted__transform3|pasted__pasted__polySurface1Shape.iog.og[7].gco"
		;
connectAttr "pasted__pasted__tweak9.vl[0].vt[0]" "|group10|pasted__group5|pasted__pasted__polySurface1|pasted__transform3|pasted__pasted__polySurface1Shape.twl"
		;
connectAttr "pasted__pasted__polySplitRing64.out" "|group10|pasted__group6|pasted__pasted__polySurface1|pasted__pasted__polySurface1ShapeOrig.i"
		;
connectAttr "pasted__pasted__lambert2SG11.mwc" "|group10|pasted__group6|pasted__pasted__polySurface1|pasted__transform4|pasted__pasted__polySurface1Shape.iog.og[0].gco"
		;
connectAttr "pasted__pasted__groupId138.id" "|group10|pasted__group6|pasted__pasted__polySurface1|pasted__transform4|pasted__pasted__polySurface1Shape.iog.og[0].gid"
		;
connectAttr "pasted__pasted__lambert3SG11.mwc" "|group10|pasted__group6|pasted__pasted__polySurface1|pasted__transform4|pasted__pasted__polySurface1Shape.iog.og[1].gco"
		;
connectAttr "pasted__pasted__groupId139.id" "|group10|pasted__group6|pasted__pasted__polySurface1|pasted__transform4|pasted__pasted__polySurface1Shape.iog.og[1].gid"
		;
connectAttr "pasted__pasted__tweakSet10.mwc" "|group10|pasted__group6|pasted__pasted__polySurface1|pasted__transform4|pasted__pasted__polySurface1Shape.iog.og[7].gco"
		;
connectAttr "pasted__pasted__groupId140.id" "|group10|pasted__group6|pasted__pasted__polySurface1|pasted__transform4|pasted__pasted__polySurface1Shape.iog.og[7].gid"
		;
connectAttr "pasted__pasted__tweak10.og[0]" "|group10|pasted__group6|pasted__pasted__polySurface1|pasted__transform4|pasted__pasted__polySurface1Shape.i"
		;
connectAttr "pasted__pasted__tweak10.vl[0].vt[0]" "|group10|pasted__group6|pasted__pasted__polySurface1|pasted__transform4|pasted__pasted__polySurface1Shape.twl"
		;
connectAttr "pasted__groupParts68.og" "pasted__polySurfaceShape2.i";
connectAttr "pasted__groupId67.id" "pasted__polySurfaceShape2.iog.og[0].gid";
connectAttr "pasted__pasted__lambert2SG11.mwc" "pasted__polySurfaceShape2.iog.og[0].gco"
		;
connectAttr "pasted__groupId68.id" "pasted__polySurfaceShape2.iog.og[1].gid";
connectAttr "pasted__pasted__tweakSet10.mwc" "pasted__polySurfaceShape2.iog.og[1].gco"
		;
connectAttr "pasted__groupParts70.og" "pasted__polySurfaceShape3.i";
connectAttr "pasted__groupId69.id" "pasted__polySurfaceShape3.iog.og[0].gid";
connectAttr "pasted__pasted__lambert3SG11.mwc" "pasted__polySurfaceShape3.iog.og[0].gco"
		;
connectAttr "pasted__groupId70.id" "pasted__polySurfaceShape3.iog.og[1].gid";
connectAttr "pasted__pasted__tweakSet10.mwc" "pasted__polySurfaceShape3.iog.og[1].gco"
		;
connectAttr "pasted__groupParts72.og" "pasted__polySurfaceShape4.i";
connectAttr "pasted__groupId71.id" "pasted__polySurfaceShape4.iog.og[0].gid";
connectAttr "pasted__pasted__lambert2SG10.mwc" "pasted__polySurfaceShape4.iog.og[0].gco"
		;
connectAttr "pasted__groupId72.id" "pasted__polySurfaceShape4.iog.og[2].gid";
connectAttr "pasted__pasted__tweakSet9.mwc" "pasted__polySurfaceShape4.iog.og[2].gco"
		;
connectAttr "pasted__groupParts74.og" "pasted__polySurfaceShape5.i";
connectAttr "pasted__groupId73.id" "pasted__polySurfaceShape5.iog.og[0].gid";
connectAttr "pasted__pasted__lambert3SG10.mwc" "pasted__polySurfaceShape5.iog.og[0].gco"
		;
connectAttr "pasted__groupId74.id" "pasted__polySurfaceShape5.iog.og[2].gid";
connectAttr "pasted__pasted__tweakSet9.mwc" "pasted__polySurfaceShape5.iog.og[2].gco"
		;
connectAttr "pasted__groupParts76.og" "pasted__polySurfaceShape6.i";
connectAttr "pasted__groupId75.id" "pasted__polySurfaceShape6.iog.og[0].gid";
connectAttr "pasted__lambert2SG6.mwc" "pasted__polySurfaceShape6.iog.og[0].gco";
connectAttr "pasted__groupId76.id" "pasted__polySurfaceShape6.iog.og[1].gid";
connectAttr "pasted__tweakSet5.mwc" "pasted__polySurfaceShape6.iog.og[1].gco";
connectAttr "pasted__groupParts78.og" "pasted__polySurfaceShape7.i";
connectAttr "pasted__groupId77.id" "pasted__polySurfaceShape7.iog.og[0].gid";
connectAttr "pasted__lambert3SG6.mwc" "pasted__polySurfaceShape7.iog.og[0].gco";
connectAttr "pasted__groupId78.id" "pasted__polySurfaceShape7.iog.og[1].gid";
connectAttr "pasted__tweakSet5.mwc" "pasted__polySurfaceShape7.iog.og[1].gco";
connectAttr "pasted__groupId58.id" "pasted__group6_pasted__polySurface1Shape.iog.og[0].gid"
		;
connectAttr "pasted__pasted__lambert2SG11.mwc" "pasted__group6_pasted__polySurface1Shape.iog.og[0].gco"
		;
connectAttr "pasted__groupId59.id" "pasted__group6_pasted__polySurface1Shape.iog.og[1].gid"
		;
connectAttr "pasted__pasted__lambert3SG11.mwc" "pasted__group6_pasted__polySurface1Shape.iog.og[1].gco"
		;
connectAttr "pasted__groupId60.id" "pasted__group6_pasted__polySurface1Shape.iog.og[3].gid"
		;
connectAttr "pasted__pasted__tweakSet10.mwc" "pasted__group6_pasted__polySurface1Shape.iog.og[3].gco"
		;
connectAttr "pasted__pasted__lambert2SG10.mwc" "pasted__group6_pasted__polySurface1Shape.iog.og[4].gco"
		;
connectAttr "pasted__groupId61.id" "pasted__group6_pasted__polySurface1Shape.iog.og[4].gid"
		;
connectAttr "pasted__pasted__lambert3SG10.mwc" "pasted__group6_pasted__polySurface1Shape.iog.og[5].gco"
		;
connectAttr "pasted__groupId62.id" "pasted__group6_pasted__polySurface1Shape.iog.og[5].gid"
		;
connectAttr "pasted__pasted__tweakSet9.mwc" "pasted__group6_pasted__polySurface1Shape.iog.og[7].gco"
		;
connectAttr "pasted__groupId63.id" "pasted__group6_pasted__polySurface1Shape.iog.og[7].gid"
		;
connectAttr "pasted__lambert2SG6.mwc" "pasted__group6_pasted__polySurface1Shape.iog.og[8].gco"
		;
connectAttr "pasted__groupId64.id" "pasted__group6_pasted__polySurface1Shape.iog.og[8].gid"
		;
connectAttr "pasted__lambert3SG6.mwc" "pasted__group6_pasted__polySurface1Shape.iog.og[9].gco"
		;
connectAttr "pasted__groupId65.id" "pasted__group6_pasted__polySurface1Shape.iog.og[9].gid"
		;
connectAttr "pasted__tweakSet5.mwc" "pasted__group6_pasted__polySurface1Shape.iog.og[11].gco"
		;
connectAttr "pasted__groupId66.id" "pasted__group6_pasted__polySurface1Shape.iog.og[11].gid"
		;
connectAttr "pasted__groupParts66.og" "pasted__group6_pasted__polySurface1Shape.i"
		;
connectAttr "pasted__groupParts81.og" "pasted__polySurface6Shape.i";
connectAttr "pasted__groupId79.id" "pasted__polySurface6Shape.iog.og[0].gid";
connectAttr "pasted__lambert2SG6.mwc" "pasted__polySurface6Shape.iog.og[0].gco";
connectAttr "pasted__groupId80.id" "pasted__polySurface6Shape.iog.og[1].gid";
connectAttr "pasted__tweakSet5.mwc" "pasted__polySurface6Shape.iog.og[1].gco";
connectAttr "pasted__groupId81.id" "pasted__polySurface6Shape.iog.og[2].gid";
connectAttr "pasted__lambert3SG6.mwc" "pasted__polySurface6Shape.iog.og[2].gco";
connectAttr "pasted__groupParts84.og" "pasted__polySurface2Shape.i";
connectAttr "pasted__groupId82.id" "pasted__polySurface2Shape.iog.og[0].gid";
connectAttr "pasted__pasted__lambert2SG11.mwc" "pasted__polySurface2Shape.iog.og[0].gco"
		;
connectAttr "pasted__groupId83.id" "pasted__polySurface2Shape.iog.og[1].gid";
connectAttr "pasted__pasted__tweakSet10.mwc" "pasted__polySurface2Shape.iog.og[1].gco"
		;
connectAttr "pasted__groupId84.id" "pasted__polySurface2Shape.iog.og[2].gid";
connectAttr "pasted__pasted__lambert3SG11.mwc" "pasted__polySurface2Shape.iog.og[2].gco"
		;
connectAttr "groupId1.id" "polySurface12Shape.iog.og[0].gid";
connectAttr "pasted__pasted__pasted__lambert2SG7.mwc" "polySurface12Shape.iog.og[0].gco"
		;
connectAttr "groupId2.id" "polySurface12Shape.iog.og[1].gid";
connectAttr "pasted__pasted__lambert2SG8.mwc" "polySurface12Shape.iog.og[1].gco"
		;
connectAttr "groupId3.id" "polySurface12Shape.iog.og[2].gid";
connectAttr "pasted__pasted__pasted__lambert2SG8.mwc" "polySurface12Shape.iog.og[2].gco"
		;
connectAttr "groupId4.id" "polySurface12Shape.iog.og[3].gid";
connectAttr "pasted__pasted__pasted__lambert3SG8.mwc" "polySurface12Shape.iog.og[3].gco"
		;
connectAttr "groupId5.id" "polySurface12Shape.iog.og[4].gid";
connectAttr "pasted__pasted__pasted__lambert3SG7.mwc" "polySurface12Shape.iog.og[4].gco"
		;
connectAttr "groupId6.id" "polySurface12Shape.iog.og[5].gid";
connectAttr "pasted__pasted__lambert3SG8.mwc" "polySurface12Shape.iog.og[5].gco"
		;
connectAttr "groupId7.id" "polySurface12Shape.iog.og[6].gid";
connectAttr "pasted__lambert2SG4.mwc" "polySurface12Shape.iog.og[6].gco";
connectAttr "groupId8.id" "polySurface12Shape.iog.og[7].gid";
connectAttr "pasted__lambert3SG4.mwc" "polySurface12Shape.iog.og[7].gco";
connectAttr "groupId9.id" "polySurface12Shape.iog.og[8].gid";
connectAttr "pasted__lambert3SG2.mwc" "polySurface12Shape.iog.og[8].gco";
connectAttr "groupId10.id" "polySurface12Shape.iog.og[9].gid";
connectAttr "lambert2SG.mwc" "polySurface12Shape.iog.og[9].gco";
connectAttr "groupId11.id" "polySurface12Shape.iog.og[10].gid";
connectAttr "lambert3SG.mwc" "polySurface12Shape.iog.og[10].gco";
connectAttr "groupId12.id" "polySurface12Shape.iog.og[11].gid";
connectAttr "pasted__lambert2SG2.mwc" "polySurface12Shape.iog.og[11].gco";
connectAttr "groupId13.id" "polySurface12Shape.iog.og[12].gid";
connectAttr "pasted__pasted__pasted__lambert2SG4.mwc" "polySurface12Shape.iog.og[12].gco"
		;
connectAttr "groupId14.id" "polySurface12Shape.iog.og[13].gid";
connectAttr "pasted__pasted__pasted__lambert3SG4.mwc" "polySurface12Shape.iog.og[13].gco"
		;
connectAttr "groupId15.id" "polySurface12Shape.iog.og[14].gid";
connectAttr "pasted__pasted__pasted__lambert3SG2.mwc" "polySurface12Shape.iog.og[14].gco"
		;
connectAttr "groupId16.id" "polySurface12Shape.iog.og[15].gid";
connectAttr "pasted__pasted__lambert2SG.mwc" "polySurface12Shape.iog.og[15].gco"
		;
connectAttr "groupId17.id" "polySurface12Shape.iog.og[16].gid";
connectAttr "pasted__pasted__lambert3SG.mwc" "polySurface12Shape.iog.og[16].gco"
		;
connectAttr "groupId18.id" "polySurface12Shape.iog.og[17].gid";
connectAttr "pasted__pasted__pasted__lambert2SG2.mwc" "polySurface12Shape.iog.og[17].gco"
		;
connectAttr "groupId19.id" "polySurface12Shape.iog.og[18].gid";
connectAttr "pasted__pasted__lambert2SG4.mwc" "polySurface12Shape.iog.og[18].gco"
		;
connectAttr "groupId20.id" "polySurface12Shape.iog.og[19].gid";
connectAttr "pasted__pasted__lambert3SG4.mwc" "polySurface12Shape.iog.og[19].gco"
		;
connectAttr "groupId21.id" "polySurface12Shape.iog.og[20].gid";
connectAttr "pasted__pasted__lambert3SG2.mwc" "polySurface12Shape.iog.og[20].gco"
		;
connectAttr "groupId22.id" "polySurface12Shape.iog.og[21].gid";
connectAttr "pasted__lambert2SG.mwc" "polySurface12Shape.iog.og[21].gco";
connectAttr "groupId23.id" "polySurface12Shape.iog.og[22].gid";
connectAttr "pasted__lambert3SG.mwc" "polySurface12Shape.iog.og[22].gco";
connectAttr "groupId24.id" "polySurface12Shape.iog.og[23].gid";
connectAttr "pasted__pasted__lambert2SG2.mwc" "polySurface12Shape.iog.og[23].gco"
		;
connectAttr "groupId25.id" "polySurface12Shape.iog.og[24].gid";
connectAttr "pasted__pasted__pasted__lambert3SG6.mwc" "polySurface12Shape.iog.og[24].gco"
		;
connectAttr "groupId26.id" "polySurface12Shape.iog.og[25].gid";
connectAttr "pasted__pasted__pasted__lambert2SG6.mwc" "polySurface12Shape.iog.og[25].gco"
		;
connectAttr "groupId27.id" "polySurface12Shape.iog.og[26].gid";
connectAttr "pasted__pasted__pasted__lambert3SG5.mwc" "polySurface12Shape.iog.og[26].gco"
		;
connectAttr "groupId28.id" "polySurface12Shape.iog.og[27].gid";
connectAttr "pasted__pasted__pasted__lambert2SG5.mwc" "polySurface12Shape.iog.og[27].gco"
		;
connectAttr "groupId29.id" "polySurface12Shape.iog.og[28].gid";
connectAttr "pasted__pasted__lambert2SG5.mwc" "polySurface12Shape.iog.og[28].gco"
		;
connectAttr "groupId30.id" "polySurface12Shape.iog.og[29].gid";
connectAttr "pasted__pasted__lambert3SG5.mwc" "polySurface12Shape.iog.og[29].gco"
		;
connectAttr "skinCluster1GroupId.id" "polySurface12Shape.iog.og[30].gid";
connectAttr "skinCluster1Set.mwc" "polySurface12Shape.iog.og[30].gco";
connectAttr "groupId32.id" "polySurface12Shape.iog.og[31].gid";
connectAttr "tweakSet1.mwc" "polySurface12Shape.iog.og[31].gco";
connectAttr "skinCluster1.og[0]" "polySurface12Shape.i";
connectAttr "tweak1.vl[0].vt[0]" "polySurface12Shape.twl";
connectAttr "pasted__bark4.oc" "pasted__lambert2SG4.ss";
connectAttr "polySurface12Shape.iog.og[6]" "pasted__lambert2SG4.dsm" -na;
connectAttr "groupId7.msg" "pasted__lambert2SG4.gn" -na;
connectAttr "pasted__lambert2SG4.msg" "pasted__materialInfo9.sg";
connectAttr "pasted__bark4.msg" "pasted__materialInfo9.m";
connectAttr "pasted__leaves4.oc" "pasted__lambert3SG4.ss";
connectAttr "polySurface12Shape.iog.og[7]" "pasted__lambert3SG4.dsm" -na;
connectAttr "groupId8.msg" "pasted__lambert3SG4.gn" -na;
connectAttr "pasted__lambert3SG4.msg" "pasted__materialInfo10.sg";
connectAttr "pasted__leaves4.msg" "pasted__materialInfo10.m";
connectAttr "pasted__bark2.oc" "pasted__lambert2SG2.ss";
connectAttr "polySurface12Shape.iog.og[11]" "pasted__lambert2SG2.dsm" -na;
connectAttr "groupId12.msg" "pasted__lambert2SG2.gn" -na;
connectAttr "pasted__lambert2SG2.msg" "pasted__materialInfo5.sg";
connectAttr "pasted__bark2.msg" "pasted__materialInfo5.m";
connectAttr "pasted__leaves2.oc" "pasted__lambert3SG2.ss";
connectAttr "polySurface12Shape.iog.og[8]" "pasted__lambert3SG2.dsm" -na;
connectAttr "groupId9.msg" "pasted__lambert3SG2.gn" -na;
connectAttr "pasted__lambert3SG2.msg" "pasted__materialInfo6.sg";
connectAttr "pasted__leaves2.msg" "pasted__materialInfo6.m";
connectAttr "bark.oc" "lambert2SG.ss";
connectAttr "polySurface12Shape.iog.og[9]" "lambert2SG.dsm" -na;
connectAttr "groupId10.msg" "lambert2SG.gn" -na;
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "bark.msg" "materialInfo1.m";
connectAttr "leaves.oc" "lambert3SG.ss";
connectAttr "polySurface12Shape.iog.og[10]" "lambert3SG.dsm" -na;
connectAttr "groupId11.msg" "lambert3SG.gn" -na;
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
relationship "link" ":lightLinker1" "pasted__lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__lambert3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__pasted__lambert2SG2.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__pasted__lambert3SG2.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__pasted__lambert2SG4.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__pasted__lambert3SG4.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__pasted__lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__pasted__lambert3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__pasted__pasted__lambert2SG2.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__pasted__pasted__lambert3SG2.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__pasted__pasted__lambert2SG4.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__pasted__pasted__lambert3SG4.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__pasted__lambert2SG5.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__pasted__lambert3SG5.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__pasted__pasted__lambert2SG5.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__pasted__pasted__lambert3SG5.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__pasted__pasted__lambert2SG6.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__pasted__pasted__lambert3SG6.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__lambert2SG5.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__lambert3SG5.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__pasted__lambert2SG6.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__pasted__lambert3SG6.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__pasted__lambert2SG7.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__pasted__lambert3SG7.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__pasted__lambert2SG8.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__pasted__lambert3SG8.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__pasted__pasted__lambert2SG7.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__pasted__pasted__lambert3SG7.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__pasted__pasted__lambert2SG8.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__pasted__pasted__lambert3SG8.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__pasted__lambert2SG9.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__pasted__lambert3SG9.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__pasted__pasted__lambert2SG9.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__pasted__pasted__lambert3SG9.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__pasted__pasted__lambert2SG10.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__pasted__pasted__lambert3SG10.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__lambert2SG6.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__lambert3SG6.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__pasted__lambert2SG10.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__pasted__lambert3SG10.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__pasted__lambert2SG11.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__pasted__lambert3SG11.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__pasted__lambert2SG12.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__pasted__lambert3SG12.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__pasted__pasted__lambert2SG11.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__pasted__pasted__lambert3SG11.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__pasted__pasted__lambert2SG12.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__pasted__pasted__lambert3SG12.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__lambert2SG2.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__lambert3SG2.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__lambert2SG4.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__lambert3SG4.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__lambert3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__pasted__lambert2SG2.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__pasted__lambert3SG2.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__pasted__lambert2SG4.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__pasted__lambert3SG4.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__pasted__lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__pasted__lambert3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__pasted__pasted__lambert2SG2.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__pasted__pasted__lambert3SG2.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__pasted__pasted__lambert2SG4.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__pasted__pasted__lambert3SG4.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__pasted__lambert2SG5.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__pasted__lambert3SG5.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__pasted__pasted__lambert2SG5.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__pasted__pasted__lambert3SG5.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__pasted__pasted__lambert2SG6.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__pasted__pasted__lambert3SG6.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__lambert2SG5.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__lambert3SG5.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__pasted__lambert2SG6.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__pasted__lambert3SG6.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__pasted__lambert2SG7.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__pasted__lambert3SG7.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__pasted__lambert2SG8.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__pasted__lambert3SG8.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__pasted__pasted__lambert2SG7.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__pasted__pasted__lambert3SG7.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__pasted__pasted__lambert2SG8.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__pasted__pasted__lambert3SG8.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__pasted__lambert2SG9.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__pasted__lambert3SG9.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__pasted__pasted__lambert2SG9.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__pasted__pasted__lambert3SG9.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__pasted__pasted__lambert2SG10.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__pasted__pasted__lambert3SG10.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__lambert2SG6.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__lambert3SG6.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__pasted__lambert2SG10.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__pasted__lambert3SG10.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__pasted__lambert2SG11.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__pasted__lambert3SG11.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__pasted__lambert2SG12.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__pasted__lambert3SG12.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__pasted__pasted__lambert2SG11.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__pasted__pasted__lambert3SG11.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__pasted__pasted__lambert2SG12.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__pasted__pasted__lambert3SG12.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "pasted__pasted__bark4.oc" "pasted__pasted__lambert2SG4.ss";
connectAttr "polySurface12Shape.iog.og[18]" "pasted__pasted__lambert2SG4.dsm" -na
		;
connectAttr "groupId19.msg" "pasted__pasted__lambert2SG4.gn" -na;
connectAttr "pasted__pasted__lambert2SG4.msg" "pasted__pasted__materialInfo9.sg"
		;
connectAttr "pasted__pasted__bark4.msg" "pasted__pasted__materialInfo9.m";
connectAttr "pasted__pasted__leaves4.oc" "pasted__pasted__lambert3SG4.ss";
connectAttr "polySurface12Shape.iog.og[19]" "pasted__pasted__lambert3SG4.dsm" -na
		;
connectAttr "groupId20.msg" "pasted__pasted__lambert3SG4.gn" -na;
connectAttr "pasted__pasted__lambert3SG4.msg" "pasted__pasted__materialInfo10.sg"
		;
connectAttr "pasted__pasted__leaves4.msg" "pasted__pasted__materialInfo10.m";
connectAttr "pasted__bark.oc" "pasted__lambert2SG.ss";
connectAttr "polySurface12Shape.iog.og[21]" "pasted__lambert2SG.dsm" -na;
connectAttr "groupId22.msg" "pasted__lambert2SG.gn" -na;
connectAttr "pasted__lambert2SG.msg" "pasted__materialInfo1.sg";
connectAttr "pasted__bark.msg" "pasted__materialInfo1.m";
connectAttr "pasted__leaves.oc" "pasted__lambert3SG.ss";
connectAttr "polySurface12Shape.iog.og[22]" "pasted__lambert3SG.dsm" -na;
connectAttr "groupId23.msg" "pasted__lambert3SG.gn" -na;
connectAttr "pasted__lambert3SG.msg" "pasted__materialInfo2.sg";
connectAttr "pasted__leaves.msg" "pasted__materialInfo2.m";
connectAttr "pasted__pasted__bark2.oc" "pasted__pasted__lambert2SG2.ss";
connectAttr "polySurface12Shape.iog.og[23]" "pasted__pasted__lambert2SG2.dsm" -na
		;
connectAttr "groupId24.msg" "pasted__pasted__lambert2SG2.gn" -na;
connectAttr "pasted__pasted__lambert2SG2.msg" "pasted__pasted__materialInfo5.sg"
		;
connectAttr "pasted__pasted__bark2.msg" "pasted__pasted__materialInfo5.m";
connectAttr "pasted__pasted__leaves2.oc" "pasted__pasted__lambert3SG2.ss";
connectAttr "polySurface12Shape.iog.og[20]" "pasted__pasted__lambert3SG2.dsm" -na
		;
connectAttr "groupId21.msg" "pasted__pasted__lambert3SG2.gn" -na;
connectAttr "pasted__pasted__lambert3SG2.msg" "pasted__pasted__materialInfo6.sg"
		;
connectAttr "pasted__pasted__leaves2.msg" "pasted__pasted__materialInfo6.m";
connectAttr "pasted__pasted__pasted__bark4.oc" "pasted__pasted__pasted__lambert2SG4.ss"
		;
connectAttr "polySurface12Shape.iog.og[12]" "pasted__pasted__pasted__lambert2SG4.dsm"
		 -na;
connectAttr "groupId13.msg" "pasted__pasted__pasted__lambert2SG4.gn" -na;
connectAttr "pasted__pasted__pasted__lambert2SG4.msg" "pasted__pasted__pasted__materialInfo9.sg"
		;
connectAttr "pasted__pasted__pasted__bark4.msg" "pasted__pasted__pasted__materialInfo9.m"
		;
connectAttr "pasted__pasted__pasted__leaves4.oc" "pasted__pasted__pasted__lambert3SG4.ss"
		;
connectAttr "polySurface12Shape.iog.og[13]" "pasted__pasted__pasted__lambert3SG4.dsm"
		 -na;
connectAttr "groupId14.msg" "pasted__pasted__pasted__lambert3SG4.gn" -na;
connectAttr "pasted__pasted__pasted__lambert3SG4.msg" "pasted__pasted__pasted__materialInfo10.sg"
		;
connectAttr "pasted__pasted__pasted__leaves4.msg" "pasted__pasted__pasted__materialInfo10.m"
		;
connectAttr "pasted__pasted__bark.oc" "pasted__pasted__lambert2SG.ss";
connectAttr "polySurface12Shape.iog.og[15]" "pasted__pasted__lambert2SG.dsm" -na
		;
connectAttr "groupId16.msg" "pasted__pasted__lambert2SG.gn" -na;
connectAttr "pasted__pasted__lambert2SG.msg" "pasted__pasted__materialInfo1.sg";
connectAttr "pasted__pasted__bark.msg" "pasted__pasted__materialInfo1.m";
connectAttr "pasted__pasted__leaves.oc" "pasted__pasted__lambert3SG.ss";
connectAttr "polySurface12Shape.iog.og[16]" "pasted__pasted__lambert3SG.dsm" -na
		;
connectAttr "groupId17.msg" "pasted__pasted__lambert3SG.gn" -na;
connectAttr "pasted__pasted__lambert3SG.msg" "pasted__pasted__materialInfo2.sg";
connectAttr "pasted__pasted__leaves.msg" "pasted__pasted__materialInfo2.m";
connectAttr "pasted__pasted__pasted__bark2.oc" "pasted__pasted__pasted__lambert2SG2.ss"
		;
connectAttr "polySurface12Shape.iog.og[17]" "pasted__pasted__pasted__lambert2SG2.dsm"
		 -na;
connectAttr "groupId18.msg" "pasted__pasted__pasted__lambert2SG2.gn" -na;
connectAttr "pasted__pasted__pasted__lambert2SG2.msg" "pasted__pasted__pasted__materialInfo5.sg"
		;
connectAttr "pasted__pasted__pasted__bark2.msg" "pasted__pasted__pasted__materialInfo5.m"
		;
connectAttr "pasted__pasted__pasted__leaves2.oc" "pasted__pasted__pasted__lambert3SG2.ss"
		;
connectAttr "polySurface12Shape.iog.og[14]" "pasted__pasted__pasted__lambert3SG2.dsm"
		 -na;
connectAttr "groupId15.msg" "pasted__pasted__pasted__lambert3SG2.gn" -na;
connectAttr "pasted__pasted__pasted__lambert3SG2.msg" "pasted__pasted__pasted__materialInfo6.sg"
		;
connectAttr "pasted__pasted__pasted__leaves2.msg" "pasted__pasted__pasted__materialInfo6.m"
		;
connectAttr "pasted__pasted__pasted__bark6.oc" "pasted__pasted__pasted__lambert2SG6.ss"
		;
connectAttr "polySurface12Shape.iog.og[25]" "pasted__pasted__pasted__lambert2SG6.dsm"
		 -na;
connectAttr "groupId26.msg" "pasted__pasted__pasted__lambert2SG6.gn" -na;
connectAttr "pasted__pasted__pasted__lambert2SG6.msg" "pasted__pasted__pasted__materialInfo13.sg"
		;
connectAttr "pasted__pasted__pasted__bark6.msg" "pasted__pasted__pasted__materialInfo13.m"
		;
connectAttr "pasted__pasted__pasted__leaves6.oc" "pasted__pasted__pasted__lambert3SG6.ss"
		;
connectAttr "polySurface12Shape.iog.og[24]" "pasted__pasted__pasted__lambert3SG6.dsm"
		 -na;
connectAttr "groupId25.msg" "pasted__pasted__pasted__lambert3SG6.gn" -na;
connectAttr "pasted__pasted__pasted__lambert3SG6.msg" "pasted__pasted__pasted__materialInfo14.sg"
		;
connectAttr "pasted__pasted__pasted__leaves6.msg" "pasted__pasted__pasted__materialInfo14.m"
		;
connectAttr "pasted__pasted__pasted__bark5.oc" "pasted__pasted__pasted__lambert2SG5.ss"
		;
connectAttr "polySurface12Shape.iog.og[27]" "pasted__pasted__pasted__lambert2SG5.dsm"
		 -na;
connectAttr "groupId28.msg" "pasted__pasted__pasted__lambert2SG5.gn" -na;
connectAttr "pasted__pasted__pasted__lambert2SG5.msg" "pasted__pasted__pasted__materialInfo11.sg"
		;
connectAttr "pasted__pasted__pasted__bark5.msg" "pasted__pasted__pasted__materialInfo11.m"
		;
connectAttr "pasted__pasted__pasted__leaves5.oc" "pasted__pasted__pasted__lambert3SG5.ss"
		;
connectAttr "polySurface12Shape.iog.og[26]" "pasted__pasted__pasted__lambert3SG5.dsm"
		 -na;
connectAttr "groupId27.msg" "pasted__pasted__pasted__lambert3SG5.gn" -na;
connectAttr "pasted__pasted__pasted__lambert3SG5.msg" "pasted__pasted__pasted__materialInfo12.sg"
		;
connectAttr "pasted__pasted__pasted__leaves5.msg" "pasted__pasted__pasted__materialInfo12.m"
		;
connectAttr "pasted__pasted__bark5.oc" "pasted__pasted__lambert2SG5.ss";
connectAttr "polySurface12Shape.iog.og[28]" "pasted__pasted__lambert2SG5.dsm" -na
		;
connectAttr "groupId29.msg" "pasted__pasted__lambert2SG5.gn" -na;
connectAttr "pasted__pasted__lambert2SG5.msg" "pasted__pasted__materialInfo11.sg"
		;
connectAttr "pasted__pasted__bark5.msg" "pasted__pasted__materialInfo11.m";
connectAttr "pasted__pasted__leaves5.oc" "pasted__pasted__lambert3SG5.ss";
connectAttr "polySurface12Shape.iog.og[29]" "pasted__pasted__lambert3SG5.dsm" -na
		;
connectAttr "groupId30.msg" "pasted__pasted__lambert3SG5.gn" -na;
connectAttr "pasted__pasted__lambert3SG5.msg" "pasted__pasted__materialInfo12.sg"
		;
connectAttr "pasted__pasted__leaves5.msg" "pasted__pasted__materialInfo12.m";
connectAttr "pasted__pasted__bark7.oc" "pasted__pasted__lambert2SG7.ss";
connectAttr "pasted__pasted__lambert2SG7.msg" "pasted__pasted__materialInfo15.sg"
		;
connectAttr "pasted__pasted__bark7.msg" "pasted__pasted__materialInfo15.m";
connectAttr "pasted__pasted__leaves7.oc" "pasted__pasted__lambert3SG7.ss";
connectAttr "pasted__pasted__lambert3SG7.msg" "pasted__pasted__materialInfo16.sg"
		;
connectAttr "pasted__pasted__leaves7.msg" "pasted__pasted__materialInfo16.m";
connectAttr "pasted__pasted__bark6.oc" "pasted__pasted__lambert2SG6.ss";
connectAttr "pasted__pasted__lambert2SG6.msg" "pasted__pasted__materialInfo13.sg"
		;
connectAttr "pasted__pasted__bark6.msg" "pasted__pasted__materialInfo13.m";
connectAttr "pasted__pasted__leaves6.oc" "pasted__pasted__lambert3SG6.ss";
connectAttr "pasted__pasted__lambert3SG6.msg" "pasted__pasted__materialInfo14.sg"
		;
connectAttr "pasted__pasted__leaves6.msg" "pasted__pasted__materialInfo14.m";
connectAttr "pasted__bark5.oc" "pasted__lambert2SG5.ss";
connectAttr "pasted__lambert2SG5.msg" "pasted__materialInfo11.sg";
connectAttr "pasted__bark5.msg" "pasted__materialInfo11.m";
connectAttr "pasted__leaves5.oc" "pasted__lambert3SG5.ss";
connectAttr "pasted__lambert3SG5.msg" "pasted__materialInfo12.sg";
connectAttr "pasted__leaves5.msg" "pasted__materialInfo12.m";
connectAttr "pasted__pasted__pasted__bark8.oc" "pasted__pasted__pasted__lambert2SG8.ss"
		;
connectAttr "polySurface12Shape.iog.og[2]" "pasted__pasted__pasted__lambert2SG8.dsm"
		 -na;
connectAttr "groupId3.msg" "pasted__pasted__pasted__lambert2SG8.gn" -na;
connectAttr "pasted__pasted__pasted__lambert2SG8.msg" "pasted__pasted__pasted__materialInfo17.sg"
		;
connectAttr "pasted__pasted__pasted__bark8.msg" "pasted__pasted__pasted__materialInfo17.m"
		;
connectAttr "pasted__pasted__pasted__leaves8.oc" "pasted__pasted__pasted__lambert3SG8.ss"
		;
connectAttr "polySurface12Shape.iog.og[3]" "pasted__pasted__pasted__lambert3SG8.dsm"
		 -na;
connectAttr "groupId4.msg" "pasted__pasted__pasted__lambert3SG8.gn" -na;
connectAttr "pasted__pasted__pasted__lambert3SG8.msg" "pasted__pasted__pasted__materialInfo18.sg"
		;
connectAttr "pasted__pasted__pasted__leaves8.msg" "pasted__pasted__pasted__materialInfo18.m"
		;
connectAttr "pasted__pasted__pasted__bark7.oc" "pasted__pasted__pasted__lambert2SG7.ss"
		;
connectAttr "polySurface12Shape.iog.og[0]" "pasted__pasted__pasted__lambert2SG7.dsm"
		 -na;
connectAttr "groupId1.msg" "pasted__pasted__pasted__lambert2SG7.gn" -na;
connectAttr "pasted__pasted__pasted__lambert2SG7.msg" "pasted__pasted__pasted__materialInfo15.sg"
		;
connectAttr "pasted__pasted__pasted__bark7.msg" "pasted__pasted__pasted__materialInfo15.m"
		;
connectAttr "pasted__pasted__pasted__leaves7.oc" "pasted__pasted__pasted__lambert3SG7.ss"
		;
connectAttr "polySurface12Shape.iog.og[4]" "pasted__pasted__pasted__lambert3SG7.dsm"
		 -na;
connectAttr "groupId5.msg" "pasted__pasted__pasted__lambert3SG7.gn" -na;
connectAttr "pasted__pasted__pasted__lambert3SG7.msg" "pasted__pasted__pasted__materialInfo16.sg"
		;
connectAttr "pasted__pasted__pasted__leaves7.msg" "pasted__pasted__pasted__materialInfo16.m"
		;
connectAttr "pasted__pasted__bark8.oc" "pasted__pasted__lambert2SG8.ss";
connectAttr "polySurface12Shape.iog.og[1]" "pasted__pasted__lambert2SG8.dsm" -na
		;
connectAttr "groupId2.msg" "pasted__pasted__lambert2SG8.gn" -na;
connectAttr "pasted__pasted__lambert2SG8.msg" "pasted__pasted__materialInfo17.sg"
		;
connectAttr "pasted__pasted__bark8.msg" "pasted__pasted__materialInfo17.m";
connectAttr "pasted__pasted__leaves8.oc" "pasted__pasted__lambert3SG8.ss";
connectAttr "polySurface12Shape.iog.og[5]" "pasted__pasted__lambert3SG8.dsm" -na
		;
connectAttr "groupId6.msg" "pasted__pasted__lambert3SG8.gn" -na;
connectAttr "pasted__pasted__lambert3SG8.msg" "pasted__pasted__materialInfo18.sg"
		;
connectAttr "pasted__pasted__leaves8.msg" "pasted__pasted__materialInfo18.m";
connectAttr "pasted__pasted__pasted__bark10.oc" "pasted__pasted__pasted__lambert2SG10.ss"
		;
connectAttr "pasted__pasted__pasted__lambert2SG10.msg" "pasted__pasted__pasted__materialInfo21.sg"
		;
connectAttr "pasted__pasted__pasted__bark10.msg" "pasted__pasted__pasted__materialInfo21.m"
		;
connectAttr "pasted__pasted__pasted__leaves10.oc" "pasted__pasted__pasted__lambert3SG10.ss"
		;
connectAttr "pasted__pasted__pasted__lambert3SG10.msg" "pasted__pasted__pasted__materialInfo22.sg"
		;
connectAttr "pasted__pasted__pasted__leaves10.msg" "pasted__pasted__pasted__materialInfo22.m"
		;
connectAttr "pasted__pasted__pasted__bark9.oc" "pasted__pasted__pasted__lambert2SG9.ss"
		;
connectAttr "pasted__pasted__pasted__lambert2SG9.msg" "pasted__pasted__pasted__materialInfo19.sg"
		;
connectAttr "pasted__pasted__pasted__bark9.msg" "pasted__pasted__pasted__materialInfo19.m"
		;
connectAttr "pasted__pasted__pasted__leaves9.oc" "pasted__pasted__pasted__lambert3SG9.ss"
		;
connectAttr "pasted__pasted__pasted__lambert3SG9.msg" "pasted__pasted__pasted__materialInfo20.sg"
		;
connectAttr "pasted__pasted__pasted__leaves9.msg" "pasted__pasted__pasted__materialInfo20.m"
		;
connectAttr "pasted__pasted__bark9.oc" "pasted__pasted__lambert2SG9.ss";
connectAttr "pasted__pasted__lambert2SG9.msg" "pasted__pasted__materialInfo19.sg"
		;
connectAttr "pasted__pasted__bark9.msg" "pasted__pasted__materialInfo19.m";
connectAttr "pasted__pasted__leaves9.oc" "pasted__pasted__lambert3SG9.ss";
connectAttr "pasted__pasted__lambert3SG9.msg" "pasted__pasted__materialInfo20.sg"
		;
connectAttr "pasted__pasted__leaves9.msg" "pasted__pasted__materialInfo20.m";
connectAttr "pasted__pasted__bark11.oc" "pasted__pasted__lambert2SG11.ss";
connectAttr "|group10|pasted__group6|pasted__pasted__polySurface1|pasted__transform4|pasted__pasted__polySurface1Shape.iog.og[0]" "pasted__pasted__lambert2SG11.dsm"
		 -na;
connectAttr "pasted__group6_pasted__polySurface1Shape.iog.og[0]" "pasted__pasted__lambert2SG11.dsm"
		 -na;
connectAttr "pasted__polySurfaceShape2.iog.og[0]" "pasted__pasted__lambert2SG11.dsm"
		 -na;
connectAttr "pasted__polySurface2Shape.iog.og[0]" "pasted__pasted__lambert2SG11.dsm"
		 -na;
connectAttr "pasted__pasted__groupId138.msg" "pasted__pasted__lambert2SG11.gn" -na
		;
connectAttr "pasted__groupId58.msg" "pasted__pasted__lambert2SG11.gn" -na;
connectAttr "pasted__groupId67.msg" "pasted__pasted__lambert2SG11.gn" -na;
connectAttr "pasted__groupId82.msg" "pasted__pasted__lambert2SG11.gn" -na;
connectAttr "pasted__pasted__lambert2SG11.msg" "pasted__pasted__materialInfo23.sg"
		;
connectAttr "pasted__pasted__bark11.msg" "pasted__pasted__materialInfo23.m";
connectAttr "pasted__pasted__leaves11.oc" "pasted__pasted__lambert3SG11.ss";
connectAttr "|group10|pasted__group6|pasted__pasted__polySurface1|pasted__transform4|pasted__pasted__polySurface1Shape.iog.og[1]" "pasted__pasted__lambert3SG11.dsm"
		 -na;
connectAttr "pasted__group6_pasted__polySurface1Shape.iog.og[1]" "pasted__pasted__lambert3SG11.dsm"
		 -na;
connectAttr "pasted__polySurfaceShape3.iog.og[0]" "pasted__pasted__lambert3SG11.dsm"
		 -na;
connectAttr "pasted__polySurface2Shape.iog.og[2]" "pasted__pasted__lambert3SG11.dsm"
		 -na;
connectAttr "pasted__pasted__groupId139.msg" "pasted__pasted__lambert3SG11.gn" -na
		;
connectAttr "pasted__groupId59.msg" "pasted__pasted__lambert3SG11.gn" -na;
connectAttr "pasted__groupId69.msg" "pasted__pasted__lambert3SG11.gn" -na;
connectAttr "pasted__groupId84.msg" "pasted__pasted__lambert3SG11.gn" -na;
connectAttr "pasted__pasted__lambert3SG11.msg" "pasted__pasted__materialInfo24.sg"
		;
connectAttr "pasted__pasted__leaves11.msg" "pasted__pasted__materialInfo24.m";
connectAttr "pasted__pasted__bark10.oc" "pasted__pasted__lambert2SG10.ss";
connectAttr "|group10|pasted__group5|pasted__pasted__polySurface1|pasted__transform3|pasted__pasted__polySurface1Shape.iog.og[0]" "pasted__pasted__lambert2SG10.dsm"
		 -na;
connectAttr "pasted__group6_pasted__polySurface1Shape.iog.og[4]" "pasted__pasted__lambert2SG10.dsm"
		 -na;
connectAttr "pasted__polySurfaceShape4.iog.og[0]" "pasted__pasted__lambert2SG10.dsm"
		 -na;
connectAttr "pasted__pasted__groupId135.msg" "pasted__pasted__lambert2SG10.gn" -na
		;
connectAttr "pasted__groupId61.msg" "pasted__pasted__lambert2SG10.gn" -na;
connectAttr "pasted__groupId71.msg" "pasted__pasted__lambert2SG10.gn" -na;
connectAttr "pasted__pasted__lambert2SG10.msg" "pasted__pasted__materialInfo21.sg"
		;
connectAttr "pasted__pasted__bark10.msg" "pasted__pasted__materialInfo21.m";
connectAttr "pasted__pasted__leaves10.oc" "pasted__pasted__lambert3SG10.ss";
connectAttr "|group10|pasted__group5|pasted__pasted__polySurface1|pasted__transform3|pasted__pasted__polySurface1Shape.iog.og[1]" "pasted__pasted__lambert3SG10.dsm"
		 -na;
connectAttr "pasted__group6_pasted__polySurface1Shape.iog.og[5]" "pasted__pasted__lambert3SG10.dsm"
		 -na;
connectAttr "pasted__polySurfaceShape5.iog.og[0]" "pasted__pasted__lambert3SG10.dsm"
		 -na;
connectAttr "pasted__pasted__groupId136.msg" "pasted__pasted__lambert3SG10.gn" -na
		;
connectAttr "pasted__groupId62.msg" "pasted__pasted__lambert3SG10.gn" -na;
connectAttr "pasted__groupId73.msg" "pasted__pasted__lambert3SG10.gn" -na;
connectAttr "pasted__pasted__lambert3SG10.msg" "pasted__pasted__materialInfo22.sg"
		;
connectAttr "pasted__pasted__leaves10.msg" "pasted__pasted__materialInfo22.m";
connectAttr "pasted__bark6.oc" "pasted__lambert2SG6.ss";
connectAttr "pasted__polySurface1Shape.iog.og[0]" "pasted__lambert2SG6.dsm" -na;
connectAttr "pasted__group6_pasted__polySurface1Shape.iog.og[8]" "pasted__lambert2SG6.dsm"
		 -na;
connectAttr "pasted__polySurfaceShape6.iog.og[0]" "pasted__lambert2SG6.dsm" -na;
connectAttr "pasted__polySurface6Shape.iog.og[0]" "pasted__lambert2SG6.dsm" -na;
connectAttr "pasted__groupId55.msg" "pasted__lambert2SG6.gn" -na;
connectAttr "pasted__groupId64.msg" "pasted__lambert2SG6.gn" -na;
connectAttr "pasted__groupId75.msg" "pasted__lambert2SG6.gn" -na;
connectAttr "pasted__groupId79.msg" "pasted__lambert2SG6.gn" -na;
connectAttr "pasted__lambert2SG6.msg" "pasted__materialInfo13.sg";
connectAttr "pasted__bark6.msg" "pasted__materialInfo13.m";
connectAttr "pasted__leaves6.oc" "pasted__lambert3SG6.ss";
connectAttr "pasted__polySurface1Shape.iog.og[1]" "pasted__lambert3SG6.dsm" -na;
connectAttr "pasted__group6_pasted__polySurface1Shape.iog.og[9]" "pasted__lambert3SG6.dsm"
		 -na;
connectAttr "pasted__polySurfaceShape7.iog.og[0]" "pasted__lambert3SG6.dsm" -na;
connectAttr "pasted__polySurface6Shape.iog.og[2]" "pasted__lambert3SG6.dsm" -na;
connectAttr "pasted__groupId56.msg" "pasted__lambert3SG6.gn" -na;
connectAttr "pasted__groupId65.msg" "pasted__lambert3SG6.gn" -na;
connectAttr "pasted__groupId77.msg" "pasted__lambert3SG6.gn" -na;
connectAttr "pasted__groupId81.msg" "pasted__lambert3SG6.gn" -na;
connectAttr "pasted__lambert3SG6.msg" "pasted__materialInfo14.sg";
connectAttr "pasted__leaves6.msg" "pasted__materialInfo14.m";
connectAttr "pasted__pasted__pasted__bark12.oc" "pasted__pasted__pasted__lambert2SG12.ss"
		;
connectAttr "pasted__pasted__pasted__lambert2SG12.msg" "pasted__pasted__pasted__materialInfo25.sg"
		;
connectAttr "pasted__pasted__pasted__bark12.msg" "pasted__pasted__pasted__materialInfo25.m"
		;
connectAttr "pasted__pasted__pasted__leaves12.oc" "pasted__pasted__pasted__lambert3SG12.ss"
		;
connectAttr "pasted__pasted__pasted__lambert3SG12.msg" "pasted__pasted__pasted__materialInfo26.sg"
		;
connectAttr "pasted__pasted__pasted__leaves12.msg" "pasted__pasted__pasted__materialInfo26.m"
		;
connectAttr "pasted__pasted__pasted__bark11.oc" "pasted__pasted__pasted__lambert2SG11.ss"
		;
connectAttr "pasted__pasted__pasted__lambert2SG11.msg" "pasted__pasted__pasted__materialInfo23.sg"
		;
connectAttr "pasted__pasted__pasted__bark11.msg" "pasted__pasted__pasted__materialInfo23.m"
		;
connectAttr "pasted__pasted__pasted__leaves11.oc" "pasted__pasted__pasted__lambert3SG11.ss"
		;
connectAttr "pasted__pasted__pasted__lambert3SG11.msg" "pasted__pasted__pasted__materialInfo24.sg"
		;
connectAttr "pasted__pasted__pasted__leaves11.msg" "pasted__pasted__pasted__materialInfo24.m"
		;
connectAttr "pasted__pasted__bark12.oc" "pasted__pasted__lambert2SG12.ss";
connectAttr "pasted__pasted__lambert2SG12.msg" "pasted__pasted__materialInfo25.sg"
		;
connectAttr "pasted__pasted__bark12.msg" "pasted__pasted__materialInfo25.m";
connectAttr "pasted__pasted__leaves12.oc" "pasted__pasted__lambert3SG12.ss";
connectAttr "pasted__pasted__lambert3SG12.msg" "pasted__pasted__materialInfo26.sg"
		;
connectAttr "pasted__pasted__leaves12.msg" "pasted__pasted__materialInfo26.m";
connectAttr "pasted__groupId57.msg" "pasted__tweakSet5.gn" -na;
connectAttr "pasted__groupId66.msg" "pasted__tweakSet5.gn" -na;
connectAttr "pasted__groupId76.msg" "pasted__tweakSet5.gn" -na;
connectAttr "pasted__groupId78.msg" "pasted__tweakSet5.gn" -na;
connectAttr "pasted__groupId80.msg" "pasted__tweakSet5.gn" -na;
connectAttr "pasted__polySurface1Shape.iog.og[7]" "pasted__tweakSet5.dsm" -na;
connectAttr "pasted__group6_pasted__polySurface1Shape.iog.og[11]" "pasted__tweakSet5.dsm"
		 -na;
connectAttr "pasted__polySurfaceShape6.iog.og[1]" "pasted__tweakSet5.dsm" -na;
connectAttr "pasted__polySurfaceShape7.iog.og[1]" "pasted__tweakSet5.dsm" -na;
connectAttr "pasted__polySurface6Shape.iog.og[1]" "pasted__tweakSet5.dsm" -na;
connectAttr "pasted__tweak5.msg" "pasted__tweakSet5.ub[0]";
connectAttr "pasted__groupParts79.og" "pasted__groupParts80.ig";
connectAttr "pasted__groupId80.id" "pasted__groupParts80.gi";
connectAttr "pasted__groupParts80.og" "pasted__groupParts81.ig";
connectAttr "pasted__groupId81.id" "pasted__groupParts81.gi";
connectAttr "pasted__polyUnite6.out" "pasted__groupParts79.ig";
connectAttr "pasted__groupId79.id" "pasted__groupParts79.gi";
connectAttr "pasted__polySurfaceShape6.o" "pasted__polyUnite6.ip[0]";
connectAttr "pasted__polySurfaceShape7.o" "pasted__polyUnite6.ip[1]";
connectAttr "pasted__polySurfaceShape6.wm" "pasted__polyUnite6.im[0]";
connectAttr "pasted__polySurfaceShape7.wm" "pasted__polyUnite6.im[1]";
connectAttr "pasted__groupParts75.og" "pasted__groupParts76.ig";
connectAttr "pasted__groupId76.id" "pasted__groupParts76.gi";
connectAttr "pasted__polySeparate2.out[4]" "pasted__groupParts75.ig";
connectAttr "pasted__groupId75.id" "pasted__groupParts75.gi";
connectAttr "pasted__groupParts77.og" "pasted__groupParts78.ig";
connectAttr "pasted__groupId78.id" "pasted__groupParts78.gi";
connectAttr "pasted__polySeparate2.out[5]" "pasted__groupParts77.ig";
connectAttr "pasted__groupId77.id" "pasted__groupParts77.gi";
connectAttr "pasted__group6_pasted__polySurface1Shape.o" "pasted__polySeparate2.ip"
		;
connectAttr "|group10|pasted__group6|pasted__pasted__polySurface1|pasted__transform4|pasted__pasted__polySurface1Shape.o" "pasted__polyUnite5.ip[0]"
		;
connectAttr "|group10|pasted__group5|pasted__pasted__polySurface1|pasted__transform3|pasted__pasted__polySurface1Shape.o" "pasted__polyUnite5.ip[1]"
		;
connectAttr "pasted__polySurface1Shape.o" "pasted__polyUnite5.ip[2]";
connectAttr "|group10|pasted__group6|pasted__pasted__polySurface1|pasted__transform4|pasted__pasted__polySurface1Shape.wm" "pasted__polyUnite5.im[0]"
		;
connectAttr "|group10|pasted__group5|pasted__pasted__polySurface1|pasted__transform3|pasted__pasted__polySurface1Shape.wm" "pasted__polyUnite5.im[1]"
		;
connectAttr "pasted__polySurface1Shape.wm" "pasted__polyUnite5.im[2]";
connectAttr "pasted__polySurface1ShapeOrig.w" "pasted__groupParts57.ig";
connectAttr "pasted__groupId57.id" "pasted__groupParts57.gi";
connectAttr "pasted__groupParts57.og" "pasted__tweak5.ip[0].ig";
connectAttr "pasted__groupId57.id" "pasted__tweak5.ip[0].gi";
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
connectAttr "pasted__groupParts56.og" "pasted__polySplitRing33.ip";
connectAttr "pasted__polySurface1Shape.wm" "pasted__polySplitRing33.mp";
connectAttr "pasted__groupParts55.og" "pasted__groupParts56.ig";
connectAttr "pasted__groupId56.id" "pasted__groupParts56.gi";
connectAttr "pasted__polySurfaceShape1.o" "pasted__groupParts55.ig";
connectAttr "pasted__groupId55.id" "pasted__groupParts55.gi";
connectAttr "pasted__pasted__groupId137.msg" "pasted__pasted__tweakSet9.gn" -na;
connectAttr "pasted__groupId63.msg" "pasted__pasted__tweakSet9.gn" -na;
connectAttr "pasted__groupId72.msg" "pasted__pasted__tweakSet9.gn" -na;
connectAttr "pasted__groupId74.msg" "pasted__pasted__tweakSet9.gn" -na;
connectAttr "|group10|pasted__group5|pasted__pasted__polySurface1|pasted__transform3|pasted__pasted__polySurface1Shape.iog.og[7]" "pasted__pasted__tweakSet9.dsm"
		 -na;
connectAttr "pasted__group6_pasted__polySurface1Shape.iog.og[7]" "pasted__pasted__tweakSet9.dsm"
		 -na;
connectAttr "pasted__polySurfaceShape4.iog.og[2]" "pasted__pasted__tweakSet9.dsm"
		 -na;
connectAttr "pasted__polySurfaceShape5.iog.og[2]" "pasted__pasted__tweakSet9.dsm"
		 -na;
connectAttr "pasted__pasted__tweak9.msg" "pasted__pasted__tweakSet9.ub[0]";
connectAttr "pasted__groupParts73.og" "pasted__groupParts74.ig";
connectAttr "pasted__groupId74.id" "pasted__groupParts74.gi";
connectAttr "pasted__polySeparate2.out[3]" "pasted__groupParts73.ig";
connectAttr "pasted__groupId73.id" "pasted__groupParts73.gi";
connectAttr "pasted__groupParts71.og" "pasted__groupParts72.ig";
connectAttr "pasted__groupId72.id" "pasted__groupParts72.gi";
connectAttr "pasted__polySeparate2.out[2]" "pasted__groupParts71.ig";
connectAttr "pasted__groupId71.id" "pasted__groupParts71.gi";
connectAttr "pasted__pasted__polySplitRing54.out" "pasted__pasted__polySplitRing55.ip"
		;
connectAttr "|group10|pasted__group5|pasted__pasted__polySurface1|pasted__transform3|pasted__pasted__polySurface1Shape.wm" "pasted__pasted__polySplitRing55.mp"
		;
connectAttr "pasted__pasted__polySplitRing53.out" "pasted__pasted__polySplitRing54.ip"
		;
connectAttr "|group10|pasted__group5|pasted__pasted__polySurface1|pasted__transform3|pasted__pasted__polySurface1Shape.wm" "pasted__pasted__polySplitRing54.mp"
		;
connectAttr "pasted__pasted__polySplitRing52.out" "pasted__pasted__polySplitRing53.ip"
		;
connectAttr "|group10|pasted__group5|pasted__pasted__polySurface1|pasted__transform3|pasted__pasted__polySurface1Shape.wm" "pasted__pasted__polySplitRing53.mp"
		;
connectAttr "pasted__pasted__polySplitRing51.out" "pasted__pasted__polySplitRing52.ip"
		;
connectAttr "|group10|pasted__group5|pasted__pasted__polySurface1|pasted__transform3|pasted__pasted__polySurface1Shape.wm" "pasted__pasted__polySplitRing52.mp"
		;
connectAttr "pasted__pasted__polySplitRing50.out" "pasted__pasted__polySplitRing51.ip"
		;
connectAttr "|group10|pasted__group5|pasted__pasted__polySurface1|pasted__transform3|pasted__pasted__polySurface1Shape.wm" "pasted__pasted__polySplitRing51.mp"
		;
connectAttr "pasted__pasted__polySplitRing49.out" "pasted__pasted__polySplitRing50.ip"
		;
connectAttr "|group10|pasted__group5|pasted__pasted__polySurface1|pasted__transform3|pasted__pasted__polySurface1Shape.wm" "pasted__pasted__polySplitRing50.mp"
		;
connectAttr "pasted__pasted__groupParts136.og" "pasted__pasted__polySplitRing49.ip"
		;
connectAttr "|group10|pasted__group5|pasted__pasted__polySurface1|pasted__transform3|pasted__pasted__polySurface1Shape.wm" "pasted__pasted__polySplitRing49.mp"
		;
connectAttr "pasted__pasted__groupParts135.og" "pasted__pasted__groupParts136.ig"
		;
connectAttr "pasted__pasted__groupId136.id" "pasted__pasted__groupParts136.gi";
connectAttr "|group10|pasted__group5|pasted__pasted__polySurface1|pasted__pasted__polySurfaceShape1.o" "pasted__pasted__groupParts135.ig"
		;
connectAttr "pasted__pasted__groupId135.id" "pasted__pasted__groupParts135.gi";
connectAttr "|group10|pasted__group5|pasted__pasted__polySurface1|pasted__pasted__polySurface1ShapeOrig.w" "pasted__pasted__groupParts137.ig"
		;
connectAttr "pasted__pasted__groupId137.id" "pasted__pasted__groupParts137.gi";
connectAttr "pasted__pasted__groupParts137.og" "pasted__pasted__tweak9.ip[0].ig"
		;
connectAttr "pasted__pasted__groupId137.id" "pasted__pasted__tweak9.ip[0].gi";
connectAttr "pasted__pasted__polySplitRing55.out" "pasted__pasted__polySplitRing56.ip"
		;
connectAttr "|group10|pasted__group5|pasted__pasted__polySurface1|pasted__transform3|pasted__pasted__polySurface1Shape.wm" "pasted__pasted__polySplitRing56.mp"
		;
connectAttr "pasted__pasted__groupId140.msg" "pasted__pasted__tweakSet10.gn" -na
		;
connectAttr "pasted__groupId60.msg" "pasted__pasted__tweakSet10.gn" -na;
connectAttr "pasted__groupId68.msg" "pasted__pasted__tweakSet10.gn" -na;
connectAttr "pasted__groupId70.msg" "pasted__pasted__tweakSet10.gn" -na;
connectAttr "pasted__groupId83.msg" "pasted__pasted__tweakSet10.gn" -na;
connectAttr "|group10|pasted__group6|pasted__pasted__polySurface1|pasted__transform4|pasted__pasted__polySurface1Shape.iog.og[7]" "pasted__pasted__tweakSet10.dsm"
		 -na;
connectAttr "pasted__group6_pasted__polySurface1Shape.iog.og[3]" "pasted__pasted__tweakSet10.dsm"
		 -na;
connectAttr "pasted__polySurfaceShape2.iog.og[1]" "pasted__pasted__tweakSet10.dsm"
		 -na;
connectAttr "pasted__polySurfaceShape3.iog.og[1]" "pasted__pasted__tweakSet10.dsm"
		 -na;
connectAttr "pasted__polySurface2Shape.iog.og[1]" "pasted__pasted__tweakSet10.dsm"
		 -na;
connectAttr "pasted__pasted__tweak10.msg" "pasted__pasted__tweakSet10.ub[0]";
connectAttr "pasted__groupParts83.og" "pasted__groupParts84.ig";
connectAttr "pasted__groupId84.id" "pasted__groupParts84.gi";
connectAttr "pasted__groupParts82.og" "pasted__groupParts83.ig";
connectAttr "pasted__groupId83.id" "pasted__groupParts83.gi";
connectAttr "pasted__polyUnite7.out" "pasted__groupParts82.ig";
connectAttr "pasted__groupId82.id" "pasted__groupParts82.gi";
connectAttr "pasted__polySurfaceShape2.o" "pasted__polyUnite7.ip[0]";
connectAttr "pasted__polySurfaceShape3.o" "pasted__polyUnite7.ip[1]";
connectAttr "pasted__polySurfaceShape2.wm" "pasted__polyUnite7.im[0]";
connectAttr "pasted__polySurfaceShape3.wm" "pasted__polyUnite7.im[1]";
connectAttr "pasted__groupParts69.og" "pasted__groupParts70.ig";
connectAttr "pasted__groupId70.id" "pasted__groupParts70.gi";
connectAttr "pasted__polySeparate2.out[1]" "pasted__groupParts69.ig";
connectAttr "pasted__groupId69.id" "pasted__groupParts69.gi";
connectAttr "pasted__groupParts67.og" "pasted__groupParts68.ig";
connectAttr "pasted__groupId68.id" "pasted__groupParts68.gi";
connectAttr "pasted__polySeparate2.out[0]" "pasted__groupParts67.ig";
connectAttr "pasted__groupId67.id" "pasted__groupParts67.gi";
connectAttr "pasted__groupParts65.og" "pasted__groupParts66.ig";
connectAttr "pasted__groupId66.id" "pasted__groupParts66.gi";
connectAttr "pasted__groupParts62.og" "pasted__groupParts63.ig";
connectAttr "pasted__groupId63.id" "pasted__groupParts63.gi";
connectAttr "pasted__groupParts59.og" "pasted__groupParts60.ig";
connectAttr "pasted__groupId60.id" "pasted__groupParts60.gi";
connectAttr "pasted__groupParts64.og" "pasted__groupParts65.ig";
connectAttr "pasted__groupId65.id" "pasted__groupParts65.gi";
connectAttr "pasted__groupParts63.og" "pasted__groupParts64.ig";
connectAttr "pasted__groupId64.id" "pasted__groupParts64.gi";
connectAttr "pasted__groupParts61.og" "pasted__groupParts62.ig";
connectAttr "pasted__groupId62.id" "pasted__groupParts62.gi";
connectAttr "pasted__groupParts60.og" "pasted__groupParts61.ig";
connectAttr "pasted__groupId61.id" "pasted__groupParts61.gi";
connectAttr "pasted__groupParts58.og" "pasted__groupParts59.ig";
connectAttr "pasted__groupId59.id" "pasted__groupParts59.gi";
connectAttr "pasted__polyUnite5.out" "pasted__groupParts58.ig";
connectAttr "pasted__groupId58.id" "pasted__groupParts58.gi";
connectAttr "|group10|pasted__group6|pasted__pasted__polySurface1|pasted__pasted__polySurface1ShapeOrig.w" "pasted__pasted__groupParts140.ig"
		;
connectAttr "pasted__pasted__groupId140.id" "pasted__pasted__groupParts140.gi";
connectAttr "pasted__pasted__groupParts140.og" "pasted__pasted__tweak10.ip[0].ig"
		;
connectAttr "pasted__pasted__groupId140.id" "pasted__pasted__tweak10.ip[0].gi";
connectAttr "pasted__pasted__polySplitRing62.out" "pasted__pasted__polySplitRing63.ip"
		;
connectAttr "|group10|pasted__group6|pasted__pasted__polySurface1|pasted__transform4|pasted__pasted__polySurface1Shape.wm" "pasted__pasted__polySplitRing63.mp"
		;
connectAttr "pasted__pasted__polySplitRing61.out" "pasted__pasted__polySplitRing62.ip"
		;
connectAttr "|group10|pasted__group6|pasted__pasted__polySurface1|pasted__transform4|pasted__pasted__polySurface1Shape.wm" "pasted__pasted__polySplitRing62.mp"
		;
connectAttr "pasted__pasted__polySplitRing60.out" "pasted__pasted__polySplitRing61.ip"
		;
connectAttr "|group10|pasted__group6|pasted__pasted__polySurface1|pasted__transform4|pasted__pasted__polySurface1Shape.wm" "pasted__pasted__polySplitRing61.mp"
		;
connectAttr "pasted__pasted__polySplitRing59.out" "pasted__pasted__polySplitRing60.ip"
		;
connectAttr "|group10|pasted__group6|pasted__pasted__polySurface1|pasted__transform4|pasted__pasted__polySurface1Shape.wm" "pasted__pasted__polySplitRing60.mp"
		;
connectAttr "pasted__pasted__polySplitRing58.out" "pasted__pasted__polySplitRing59.ip"
		;
connectAttr "|group10|pasted__group6|pasted__pasted__polySurface1|pasted__transform4|pasted__pasted__polySurface1Shape.wm" "pasted__pasted__polySplitRing59.mp"
		;
connectAttr "pasted__pasted__polySplitRing57.out" "pasted__pasted__polySplitRing58.ip"
		;
connectAttr "|group10|pasted__group6|pasted__pasted__polySurface1|pasted__transform4|pasted__pasted__polySurface1Shape.wm" "pasted__pasted__polySplitRing58.mp"
		;
connectAttr "pasted__pasted__groupParts139.og" "pasted__pasted__polySplitRing57.ip"
		;
connectAttr "|group10|pasted__group6|pasted__pasted__polySurface1|pasted__transform4|pasted__pasted__polySurface1Shape.wm" "pasted__pasted__polySplitRing57.mp"
		;
connectAttr "pasted__pasted__groupParts138.og" "pasted__pasted__groupParts139.ig"
		;
connectAttr "pasted__pasted__groupId139.id" "pasted__pasted__groupParts139.gi";
connectAttr "|group10|pasted__group6|pasted__pasted__polySurface1|pasted__pasted__polySurfaceShape1.o" "pasted__pasted__groupParts138.ig"
		;
connectAttr "pasted__pasted__groupId138.id" "pasted__pasted__groupParts138.gi";
connectAttr "pasted__pasted__polySplitRing63.out" "pasted__pasted__polySplitRing64.ip"
		;
connectAttr "|group10|pasted__group6|pasted__pasted__polySurface1|pasted__transform4|pasted__pasted__polySurface1Shape.wm" "pasted__pasted__polySplitRing64.mp"
		;
connectAttr "skinCluster1GroupParts.og" "skinCluster1.ip[0].ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1.ip[0].gi";
connectAttr "bindPose3.msg" "skinCluster1.bp";
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
connectAttr "polySurface12ShapeOrig.w" "groupParts1.ig";
connectAttr "groupId1.id" "groupParts1.gi";
connectAttr "groupParts1.og" "groupParts2.ig";
connectAttr "groupId2.id" "groupParts2.gi";
connectAttr "groupParts2.og" "groupParts3.ig";
connectAttr "groupId3.id" "groupParts3.gi";
connectAttr "groupParts3.og" "groupParts4.ig";
connectAttr "groupId4.id" "groupParts4.gi";
connectAttr "groupParts4.og" "groupParts5.ig";
connectAttr "groupId5.id" "groupParts5.gi";
connectAttr "groupParts5.og" "groupParts6.ig";
connectAttr "groupId6.id" "groupParts6.gi";
connectAttr "groupParts6.og" "groupParts7.ig";
connectAttr "groupId7.id" "groupParts7.gi";
connectAttr "groupParts7.og" "groupParts8.ig";
connectAttr "groupId8.id" "groupParts8.gi";
connectAttr "groupParts8.og" "groupParts9.ig";
connectAttr "groupId9.id" "groupParts9.gi";
connectAttr "groupParts9.og" "groupParts10.ig";
connectAttr "groupId10.id" "groupParts10.gi";
connectAttr "groupParts10.og" "groupParts11.ig";
connectAttr "groupId11.id" "groupParts11.gi";
connectAttr "groupParts11.og" "groupParts12.ig";
connectAttr "groupId12.id" "groupParts12.gi";
connectAttr "groupParts12.og" "groupParts13.ig";
connectAttr "groupId13.id" "groupParts13.gi";
connectAttr "groupParts13.og" "groupParts14.ig";
connectAttr "groupId14.id" "groupParts14.gi";
connectAttr "groupParts14.og" "groupParts15.ig";
connectAttr "groupId15.id" "groupParts15.gi";
connectAttr "groupParts15.og" "groupParts16.ig";
connectAttr "groupId16.id" "groupParts16.gi";
connectAttr "groupParts16.og" "groupParts17.ig";
connectAttr "groupId17.id" "groupParts17.gi";
connectAttr "groupParts17.og" "groupParts18.ig";
connectAttr "groupId18.id" "groupParts18.gi";
connectAttr "groupParts18.og" "groupParts19.ig";
connectAttr "groupId19.id" "groupParts19.gi";
connectAttr "groupParts19.og" "groupParts20.ig";
connectAttr "groupId20.id" "groupParts20.gi";
connectAttr "groupParts20.og" "groupParts21.ig";
connectAttr "groupId21.id" "groupParts21.gi";
connectAttr "groupParts21.og" "groupParts22.ig";
connectAttr "groupId22.id" "groupParts22.gi";
connectAttr "groupParts22.og" "groupParts23.ig";
connectAttr "groupId23.id" "groupParts23.gi";
connectAttr "groupParts23.og" "groupParts24.ig";
connectAttr "groupId24.id" "groupParts24.gi";
connectAttr "groupParts24.og" "groupParts25.ig";
connectAttr "groupId25.id" "groupParts25.gi";
connectAttr "groupParts25.og" "groupParts26.ig";
connectAttr "groupId26.id" "groupParts26.gi";
connectAttr "groupParts26.og" "groupParts27.ig";
connectAttr "groupId27.id" "groupParts27.gi";
connectAttr "groupParts27.og" "groupParts28.ig";
connectAttr "groupId28.id" "groupParts28.gi";
connectAttr "groupParts28.og" "groupParts29.ig";
connectAttr "groupId29.id" "groupParts29.gi";
connectAttr "groupParts29.og" "groupParts30.ig";
connectAttr "groupId30.id" "groupParts30.gi";
connectAttr "groupParts32.og" "tweak1.ip[0].ig";
connectAttr "groupId32.id" "tweak1.ip[0].gi";
connectAttr "skinCluster1GroupId.msg" "skinCluster1Set.gn" -na;
connectAttr "polySurface12Shape.iog.og[30]" "skinCluster1Set.dsm" -na;
connectAttr "skinCluster1.msg" "skinCluster1Set.ub[0]";
connectAttr "tweak1.og[0]" "skinCluster1GroupParts.ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1GroupParts.gi";
connectAttr "groupId32.msg" "tweakSet1.gn" -na;
connectAttr "polySurface12Shape.iog.og[31]" "tweakSet1.dsm" -na;
connectAttr "tweak1.msg" "tweakSet1.ub[0]";
connectAttr "groupParts30.og" "groupParts32.ig";
connectAttr "groupId32.id" "groupParts32.gi";
connectAttr "group5.msg" "bindPose3.m[0]";
connectAttr "pasted__joint1.msg" "bindPose3.m[1]";
connectAttr "pasted__joint2.msg" "bindPose3.m[2]";
connectAttr "pasted__joint3.msg" "bindPose3.m[3]";
connectAttr "pasted__joint4.msg" "bindPose3.m[4]";
connectAttr "pasted__joint5.msg" "bindPose3.m[5]";
connectAttr "pasted__joint6.msg" "bindPose3.m[6]";
connectAttr "pasted__joint7.msg" "bindPose3.m[7]";
connectAttr "pasted__joint8.msg" "bindPose3.m[8]";
connectAttr "bindPose3.w" "bindPose3.p[0]";
connectAttr "bindPose3.m[0]" "bindPose3.p[1]";
connectAttr "bindPose3.m[1]" "bindPose3.p[2]";
connectAttr "bindPose3.m[2]" "bindPose3.p[3]";
connectAttr "bindPose3.m[3]" "bindPose3.p[4]";
connectAttr "bindPose3.m[4]" "bindPose3.p[5]";
connectAttr "bindPose3.m[5]" "bindPose3.p[6]";
connectAttr "bindPose3.m[6]" "bindPose3.p[7]";
connectAttr "bindPose3.m[7]" "bindPose3.p[8]";
connectAttr "pasted__joint1.bps" "bindPose3.wm[1]";
connectAttr "pasted__joint2.bps" "bindPose3.wm[2]";
connectAttr "pasted__joint3.bps" "bindPose3.wm[3]";
connectAttr "pasted__joint4.bps" "bindPose3.wm[4]";
connectAttr "pasted__joint5.bps" "bindPose3.wm[5]";
connectAttr "pasted__joint6.bps" "bindPose3.wm[6]";
connectAttr "pasted__joint7.bps" "bindPose3.wm[7]";
connectAttr "pasted__joint8.bps" "bindPose3.wm[8]";
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert3SG.pa" ":renderPartition.st" -na;
connectAttr "pasted__lambert2SG2.pa" ":renderPartition.st" -na;
connectAttr "pasted__lambert3SG2.pa" ":renderPartition.st" -na;
connectAttr "pasted__lambert2SG4.pa" ":renderPartition.st" -na;
connectAttr "pasted__lambert3SG4.pa" ":renderPartition.st" -na;
connectAttr "pasted__lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "pasted__lambert3SG.pa" ":renderPartition.st" -na;
connectAttr "pasted__pasted__lambert2SG2.pa" ":renderPartition.st" -na;
connectAttr "pasted__pasted__lambert3SG2.pa" ":renderPartition.st" -na;
connectAttr "pasted__pasted__lambert2SG4.pa" ":renderPartition.st" -na;
connectAttr "pasted__pasted__lambert3SG4.pa" ":renderPartition.st" -na;
connectAttr "pasted__pasted__lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "pasted__pasted__lambert3SG.pa" ":renderPartition.st" -na;
connectAttr "pasted__pasted__pasted__lambert2SG2.pa" ":renderPartition.st" -na;
connectAttr "pasted__pasted__pasted__lambert3SG2.pa" ":renderPartition.st" -na;
connectAttr "pasted__pasted__pasted__lambert2SG4.pa" ":renderPartition.st" -na;
connectAttr "pasted__pasted__pasted__lambert3SG4.pa" ":renderPartition.st" -na;
connectAttr "pasted__pasted__lambert2SG5.pa" ":renderPartition.st" -na;
connectAttr "pasted__pasted__lambert3SG5.pa" ":renderPartition.st" -na;
connectAttr "pasted__pasted__pasted__lambert2SG5.pa" ":renderPartition.st" -na;
connectAttr "pasted__pasted__pasted__lambert3SG5.pa" ":renderPartition.st" -na;
connectAttr "pasted__pasted__pasted__lambert2SG6.pa" ":renderPartition.st" -na;
connectAttr "pasted__pasted__pasted__lambert3SG6.pa" ":renderPartition.st" -na;
connectAttr "pasted__lambert2SG5.pa" ":renderPartition.st" -na;
connectAttr "pasted__lambert3SG5.pa" ":renderPartition.st" -na;
connectAttr "pasted__pasted__lambert2SG6.pa" ":renderPartition.st" -na;
connectAttr "pasted__pasted__lambert3SG6.pa" ":renderPartition.st" -na;
connectAttr "pasted__pasted__lambert2SG7.pa" ":renderPartition.st" -na;
connectAttr "pasted__pasted__lambert3SG7.pa" ":renderPartition.st" -na;
connectAttr "pasted__pasted__lambert2SG8.pa" ":renderPartition.st" -na;
connectAttr "pasted__pasted__lambert3SG8.pa" ":renderPartition.st" -na;
connectAttr "pasted__pasted__pasted__lambert2SG7.pa" ":renderPartition.st" -na;
connectAttr "pasted__pasted__pasted__lambert3SG7.pa" ":renderPartition.st" -na;
connectAttr "pasted__pasted__pasted__lambert2SG8.pa" ":renderPartition.st" -na;
connectAttr "pasted__pasted__pasted__lambert3SG8.pa" ":renderPartition.st" -na;
connectAttr "pasted__pasted__lambert2SG9.pa" ":renderPartition.st" -na;
connectAttr "pasted__pasted__lambert3SG9.pa" ":renderPartition.st" -na;
connectAttr "pasted__pasted__pasted__lambert2SG9.pa" ":renderPartition.st" -na;
connectAttr "pasted__pasted__pasted__lambert3SG9.pa" ":renderPartition.st" -na;
connectAttr "pasted__pasted__pasted__lambert2SG10.pa" ":renderPartition.st" -na;
connectAttr "pasted__pasted__pasted__lambert3SG10.pa" ":renderPartition.st" -na;
connectAttr "pasted__lambert2SG6.pa" ":renderPartition.st" -na;
connectAttr "pasted__lambert3SG6.pa" ":renderPartition.st" -na;
connectAttr "pasted__pasted__lambert2SG10.pa" ":renderPartition.st" -na;
connectAttr "pasted__pasted__lambert3SG10.pa" ":renderPartition.st" -na;
connectAttr "pasted__pasted__lambert2SG11.pa" ":renderPartition.st" -na;
connectAttr "pasted__pasted__lambert3SG11.pa" ":renderPartition.st" -na;
connectAttr "pasted__pasted__lambert2SG12.pa" ":renderPartition.st" -na;
connectAttr "pasted__pasted__lambert3SG12.pa" ":renderPartition.st" -na;
connectAttr "pasted__pasted__pasted__lambert2SG11.pa" ":renderPartition.st" -na;
connectAttr "pasted__pasted__pasted__lambert3SG11.pa" ":renderPartition.st" -na;
connectAttr "pasted__pasted__pasted__lambert2SG12.pa" ":renderPartition.st" -na;
connectAttr "pasted__pasted__pasted__lambert3SG12.pa" ":renderPartition.st" -na;
connectAttr "bark.msg" ":defaultShaderList1.s" -na;
connectAttr "leaves.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__bark2.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__leaves2.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__bark4.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__leaves4.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__bark.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__leaves.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__pasted__bark2.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__pasted__leaves2.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__pasted__bark4.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__pasted__leaves4.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__pasted__bark.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__pasted__leaves.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__pasted__pasted__bark2.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__pasted__pasted__leaves2.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__pasted__pasted__bark4.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__pasted__pasted__leaves4.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__pasted__bark5.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__pasted__leaves5.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__pasted__pasted__bark5.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__pasted__pasted__leaves5.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__pasted__pasted__bark6.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__pasted__pasted__leaves6.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__bark5.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__leaves5.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__pasted__bark6.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__pasted__leaves6.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__pasted__bark7.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__pasted__leaves7.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__pasted__bark8.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__pasted__leaves8.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__pasted__pasted__bark7.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__pasted__pasted__leaves7.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__pasted__pasted__bark8.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__pasted__pasted__leaves8.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__pasted__bark9.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__pasted__leaves9.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__pasted__pasted__bark9.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__pasted__pasted__leaves9.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__pasted__pasted__bark10.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__pasted__pasted__leaves10.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__bark6.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__leaves6.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__pasted__bark10.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__pasted__leaves10.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__pasted__bark11.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__pasted__leaves11.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__pasted__bark12.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__pasted__leaves12.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__pasted__pasted__bark11.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__pasted__pasted__leaves11.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__pasted__pasted__bark12.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__pasted__pasted__leaves12.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of tree2_adult.ma
