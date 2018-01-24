//Maya ASCII 2016 scene
//Name: dadanim.ma
//Last modified: Tue, Oct 24, 2017 03:58:26 AM
//Codeset: UTF-8
requires maya "2016";
currentUnit -l centimeter -a degree -t film;
fileInfo "exportedFrom" "/Users/eastonself/Desktop/dad.ma";
fileInfo "application" "maya";
fileInfo "product" "Maya 2016";
fileInfo "version" "2016";
fileInfo "cutIdentifier" "201502261600-953408";
fileInfo "osv" "Mac OS X 10.9.6";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "7B4C795C-3E44-6360-B0DC-D5B51A3E8395";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 35.983393537122566 29.247403554423354 30.659708973642076 ;
	setAttr ".r" -type "double3" -31.538352733131848 1132.1999999995164 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "4140ADC5-3142-B8E4-185C-B5B9B23AAC22";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 55.238163640387945;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -1.2162722379068955 0.3540220893627713 1.8046904135522428 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "0FB88795-B940-948A-39F6-A6897138E9A8";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "A8DE837F-8445-5CB3-819C-C7B19356DF2C";
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
	rename -uid "AA8B39DC-D74A-81EC-5D50-38B48E2B59C2";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.092237683720382435 10.405655655066981 100.63956899887006 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "902C187B-874B-998E-2893-848A68588BFC";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 24.595400242996888;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "749DEF1C-7247-AD9C-3962-4CA1F3AA5123";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "7E919170-6544-6C3D-FD2F-34BD8C9D6ED3";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "pSphere3";
	rename -uid "C592D6B1-C846-BF06-31C6-A3A94B030B5C";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "pSphere3Shape" -p "pSphere3";
	rename -uid "E41A8540-4840-AD4F-D496-AFAE0D9B8B87";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.625 0.4375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
createNode mesh -n "polySurfaceShape1" -p "pSphere3";
	rename -uid "C9766E18-444C-52DE-C22A-50A19B063556";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:76]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 79 ".uvst[0].uvsp[0:78]" -type "float2" 0.5 0.25 0.75 0.25
		 1 0.25 0.75 0.5 1 0.5 0.5 0.75 0.75 0.75 1 0.75 0.625 0 0.875 0 0.625 1 0.875 1 0.625
		 0.5 0.75 0.25 0.5 0.5 0.5 0.25 0.5 0.5 0.625 0.5 0.5 1 0.5 0.375 0.5625 0.75 0.5
		 0.62999427 0.59260786 0.55723673 0.6875 0.625 0.6875 0.5 0.6875 0.375 0.70122623
		 0.42123616 0.75 0.625 0.875 0.5 0.75 0.375 0.8125 0.5 0.78125 0.5625 0.375 0.5 0.625
		 0.5 0.375 0.75 0.625 0.75 0.625 1 0.625 0 0.875 0 0.625 0.25 0.875 0.25 0.375 0.5
		 0.625 0.5 0.375 0.625 0.625 0.75 0.375 0.75 0.625 1 0.625 0 0.875 0 0.625 0.25 0.875
		 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.5 0.75 0.625 0.75 0.625 0.875 0.5 0.75 0.625
		 0.75 0.875 0.25 0.625 0.25 0.875 0 0.625 0 0.75 0 0.625 0.875 0.625 1 0.5 0.75 0.625
		 0.875 0.625 0.75 0.50000006 0 0.75 0.25 0.25 0.24999999 0.5 0.5 0.25 0.5 0.375 0.5
		 0.5 1 0.5 0.5 0.625 0.5 0.75 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 56 ".vt[0:55]"  0.10010925 10.33494568 -0.73289013 0.10160454 10.13706589 0.69500142
		 0.79608232 10.40559959 -0.065677442 0.090116605 11.17015648 -0.8613748 0.82781947 11.15308952 0.10547508
		 0.095704414 12.1861248 -0.76662922 0.097533323 11.82741356 0.78001976 0.84920061 11.8588829 0.0065234886
		 0.10094598 10.2249279 -0.0067298347 0.095219716 12.15269661 -0.047366053 0.46764499 11.18554306 0.53713924
		 0.12626514 10.70798111 1.030310631 0.09848921 11.68927193 0.90866721 0.098298624 10.62987328 0.6720618
		 0.31801355 11.45145226 0.48975021 0.67027223 11.42271996 0.27815306 0.7195726 11.17397308 0.2768622
		 0.56744802 10.63509178 0.36713207 0.66045803 10.74412918 0.08111544 0.92608535 11.58946228 0.03823993
		 0.8279388 11.161623 -0.19788133 0.81195092 10.77934456 0.019898817 1.012623429 11.013086319 -0.14762284
		 1.13531399 11.43317986 -0.054691456 0 9.004196167 0.21026668 0 10.074851036 0.38981161
		 0 10.21267319 -0.43867669 0.71074408 10.15345955 0.0203586 0 9.66371059 -0.7004112
		 0.54881328 9.28052044 0.0203586 0 5.86696482 0.54582083 0 8.52693462 0.71864641 0 9.62039661 -0.78990805
		 2.0035147667 9.073139191 -0.22740763 0 6.12390709 -1.073220849 1.67957735 6.10348797 -0.65012503
		 0 8.56083393 -1.46020222 0 4.84358883 0.36045569 0 5.58721018 0.60424179 0 5.85913754 -1.079577208
		 1.27324915 5.78880978 -0.69299835 0 4.90477943 -1.046158314 1.29567099 4.90746737 -0.61643434
		 0.23511396 4.60801888 0.078188896 0.23511404 4.64732599 -0.93015546 0.49803504 2.50027347 0.0045166612
		 0.49803501 2.50027347 -0.6229254 0.99607003 2.50027347 -0.30920428 0.59925771 0.36406422 -0.43023723
		 0.59925771 0.36406422 -0.8026315 0.89484739 0.36406422 -0.61643434 0.74426925 -0.35355338 -0.89976311
		 0.4894703 -0.35355338 0.56416893 0.74426919 -0.35355338 0.76503277 1.075228214 -0.35355338 -0.15677249
		 0.74426919 0.24616224 -0.67387837;
	setAttr -s 127 ".ed[0:126]"  1 2 0 2 0 0 4 22 0 6 7 0 7 5 0 0 3 0 1 13 0
		 2 21 0 3 5 0 4 19 0 8 0 0 8 1 0 8 2 0 5 9 0 6 9 0 7 9 0 10 16 0 11 10 0 11 12 0 10 14 0
		 11 13 0 14 12 0 12 6 0 7 15 1 7 14 1 7 12 1 14 11 1 10 13 1 10 17 1 13 2 1 15 10 1
		 16 4 0 15 16 1 17 2 1 16 18 1 18 17 1 16 17 1 18 4 1 18 2 1 13 17 1 3 2 1 3 7 1 15 4 1
		 15 14 1 19 7 0 20 3 0 21 4 0 19 20 1 20 21 1 22 20 0 18 21 1 20 2 1 20 7 1 15 19 1
		 19 23 1 22 21 1 23 22 1 23 20 1 23 4 1 26 27 0 28 29 0 24 25 0 25 27 0 26 28 0 27 29 0
		 29 24 0 25 26 1 24 28 1 27 28 1 29 25 1 32 33 0 34 35 0 30 31 0 31 33 0 32 36 0 33 35 0
		 35 30 0 31 32 0 30 34 0 36 34 0 33 36 1 35 36 1 35 31 1 39 40 0 41 44 0 37 38 0 38 40 0
		 39 41 0 40 42 0 42 43 1 38 39 0 37 41 0 43 37 0 44 42 1 43 44 0 43 45 0 44 46 0 45 46 1
		 42 47 0 46 47 1 47 45 1 45 48 0 46 49 0 48 49 0 47 50 0 49 50 0 50 48 0 40 41 1 40 44 1
		 38 42 1 37 42 1 43 41 1 46 43 1 47 44 1 43 47 1 46 48 1 50 46 1 48 47 1 51 52 0 52 53 0
		 53 54 0 54 51 0 51 55 0 52 55 0 53 55 0 54 55 0 54 52 1;
	setAttr -s 77 -ch 231 ".fc[0:76]" -type "polyFaces" 
		f 3 34 37 -32
		mu 0 3 24 26 3
		f 3 -38 50 46
		mu 0 3 3 26 29
		f 3 -51 38 7
		mu 0 3 29 26 1
		f 3 35 33 -39
		mu 0 3 26 25 1
		f 3 27 39 -29
		mu 0 3 12 19 25
		f 3 -40 29 -34
		mu 0 3 25 19 1
		f 3 0 -30 -7
		mu 0 3 0 1 19
		f 3 5 40 1
		mu 0 3 2 4 1
		f 3 -46 51 -41
		mu 0 3 4 28 1
		f 3 -52 48 -8
		mu 0 3 1 28 29
		f 3 47 52 -45
		mu 0 3 27 28 6
		f 3 -53 45 41
		mu 0 3 6 28 4
		f 3 -42 8 -5
		mu 0 3 6 4 7
		f 3 -1 -12 12
		mu 0 3 1 0 8
		f 3 -2 -13 10
		mu 0 3 2 1 9
		f 3 3 15 -15
		mu 0 3 5 6 10
		f 3 4 13 -16
		mu 0 3 6 7 11
		f 3 -28 -18 20
		mu 0 3 15 13 14
		f 3 19 26 17
		mu 0 3 17 20 16
		f 3 -27 21 -19
		mu 0 3 16 20 18
		f 3 23 53 44
		mu 0 3 6 23 27
		f 3 -54 42 9
		mu 0 3 27 23 3
		f 3 -43 32 31
		mu 0 3 3 23 24
		f 3 -31 43 -20
		mu 0 3 12 23 22
		f 3 -44 -24 24
		mu 0 3 22 23 6
		f 3 -25 25 -22
		mu 0 3 22 6 21
		f 3 -26 -4 -23
		mu 0 3 21 6 5
		f 3 -33 30 16
		mu 0 3 24 23 12
		f 3 -35 36 -36
		mu 0 3 26 24 25
		f 3 -37 -17 28
		mu 0 3 25 24 12
		f 3 54 57 -48
		mu 0 3 27 31 28
		f 3 -58 56 49
		mu 0 3 28 31 30
		f 3 -57 58 2
		mu 0 3 30 31 3
		f 3 -59 -55 -10
		mu 0 3 3 31 27
		f 3 -50 55 -49
		mu 0 3 28 30 29
		f 3 -56 -3 -47
		mu 0 3 29 30 3
		f 3 59 68 -64
		mu 0 3 32 33 34
		f 3 -69 64 -61
		mu 0 3 34 33 35
		f 3 60 65 67
		mu 0 3 34 35 36
		f 3 -66 69 -62
		mu 0 3 37 38 39
		f 3 -70 -65 -63
		mu 0 3 39 38 40
		f 3 -67 62 -60
		mu 0 3 32 39 33
		f 3 70 80 -75
		mu 0 3 41 42 43
		f 3 75 81 -81
		mu 0 3 42 44 43
		f 3 -72 -80 -82
		mu 0 3 44 45 43
		f 3 71 76 78
		mu 0 3 45 44 46
		f 3 -77 82 -73
		mu 0 3 47 48 49
		f 3 -83 -76 -74
		mu 0 3 49 48 50
		f 3 -78 73 -71
		mu 0 3 41 49 42
		f 3 83 107 -88
		mu 0 3 51 52 53
		f 3 -108 108 -85
		mu 0 3 53 52 54
		f 3 88 -94 -109
		mu 0 3 52 55 54
		f 3 103 105 106
		mu 0 3 56 57 58
		f 3 -87 109 -89
		mu 0 3 59 60 61
		f 3 -86 110 -110
		mu 0 3 60 62 61
		f 3 -93 -90 -111
		mu 0 3 62 63 61
		f 3 -91 86 -84
		mu 0 3 51 60 52
		f 3 -95 111 84
		mu 0 3 54 64 53
		f 3 -112 92 91
		mu 0 3 53 64 65
		f 3 96 112 94
		mu 0 3 54 66 64
		f 3 -113 -98 -96
		mu 0 3 64 66 67
		f 3 98 113 93
		mu 0 3 55 68 54
		f 3 -114 -100 -97
		mu 0 3 54 68 66
		f 3 89 114 -99
		mu 0 3 55 64 68
		f 3 -115 95 -101
		mu 0 3 68 64 67
		f 3 97 115 -102
		mu 0 3 67 66 56
		f 3 -116 102 -104
		mu 0 3 56 66 57
		f 3 104 116 99
		mu 0 3 68 58 66
		f 3 -117 -106 -103
		mu 0 3 66 58 57
		f 3 101 117 100
		mu 0 3 67 56 68
		f 3 -118 -107 -105
		mu 0 3 68 56 58
		f 3 -122 126 -119
		mu 0 3 69 70 71
		f 3 -127 -121 -120
		mu 0 3 71 70 72
		f 3 118 123 -123
		mu 0 3 73 74 75
		f 3 119 124 -124
		mu 0 3 74 76 75
		f 3 120 125 -125
		mu 0 3 76 77 75
		f 3 121 122 -126
		mu 0 3 77 78 75;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "pSphere3ShapeOrig" -p "pSphere3";
	rename -uid "C9FF8EEA-0049-B3F3-508C-54A40B24D6A2";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode joint -n "joint5";
	rename -uid "3BF0B797-8A45-4935-6FD8-44B655CDB157";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 180 89.999999999999659 ;
	setAttr ".bps" -type "matrix" -5.9952043329758453e-15 -1 -3.6739403974420599e-16 0
		 -1 6.106226635438361e-15 0 0 2.2186712959340957e-30 3.6739403974420599e-16 -1 0 -0.012803574074294083 9.6528599742051391 0 1;
	setAttr ".radi" 0.53206032906544853;
createNode joint -n "joint6" -p "joint5";
	rename -uid "57A7ED7E-1849-204A-CE5F-939DCB7EFFD3";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 3.8515127858047897 -2.2249254217351158e-14 -4.7160654526982624e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" -5.9952043329758453e-15 -1 -3.6739403974420599e-16 0
		 -1 6.106226635438361e-15 0 0 2.2186712959340957e-30 3.6739403974420599e-16 -1 0 -0.012803574074294924 5.8013471884003494 -9.4341629623345634e-16 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint7" -p "joint6";
	rename -uid "01366401-AD44-5076-CDD0-15BCF1655A91";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0.805316309759184 -4.6507153567476835e-15 -9.8608641283690979e-17 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 180 89.999999999999616 ;
	setAttr ".bps" -type "matrix" 1 5.5511151231257827e-16 1.2246467991473776e-16 0 -7.7715611723760958e-16 1 3.6739403974420599e-16 0
		 -1.2246467991473754e-16 -3.6739403974420609e-16 1 0 -0.012803574074295101 4.9960308786411654 -1.1406760672640883e-15 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint1" -p "joint7";
	rename -uid "291BA5D8-9642-DC93-60FA-E18B3E868E8B";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 180 88.83924800824704 ;
	setAttr ".bps" -type "matrix" -0.020257558288050093 -0.99979479461147747 -7.3719352364334582e-16 0
		 -0.99979479461147747 0.020257558288050204 -1.1499704332771485e-16 0 1.2990718608953794e-16 7.3471268825174556e-16 -1 0
		 0.76854082647916666 4.8181034994170062 -1.1858804177161869e-15 1;
	setAttr ".radi" 0.56587078469721452;
createNode joint -n "joint2" -p "joint1";
	rename -uid "80188305-454F-60D9-7D13-A1B2D651692D";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 4;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -7.1063406009215954e-17 7.015269431975487e-15 -1.1607519917526958 ;
	setAttr ".bps" -type "matrix" -3.9065972678997696e-15 -1.0000000000000002 -7.3471268825174615e-16 0
		 -1.0000000000000002 4.0176195703622852e-15 -1.2990718608953508e-16 0 1.2990718608953794e-16 7.3471268825174556e-16 -1 0
		 0.72248523048843771 2.5450681967653916 -2.5834675734848197e-15 1;
	setAttr ".radi" 0.6004045802543585;
createNode joint -n "joint3" -p "joint2";
	rename -uid "A405BA58-544F-FDF4-A29C-7589A0E517E7";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 180 89.99999999999973 ;
	setAttr ".bps" -type "matrix" 1.0000000000000002 6.4531713306337293e-16 2.5237186600427383e-16 0
		 -8.6736173798840434e-16 1.0000000000000002 7.3471268825174556e-16 0 -2.5237186600427329e-16 -7.3471268825174566e-16 1 0
		 0.72248523048844016 -0.39608702148553965 -4.3842579105120003e-15 1;
	setAttr ".radi" 0.6004045802543585;
createNode joint -n "joint8" -p "joint7";
	rename -uid "1994D8F1-A246-39B5-283D-FBAC2309CC59";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -7.1603200323944472e-15 -7.016709298534876e-15 91.16075199175296 ;
	setAttr ".bps" -type "matrix" -0.020257558288051647 0.99979479461147747 3.6483781311593912e-16 0
		 -0.99979479461147747 -0.020257558288051425 -1.298820556773163e-16 0 -1.2246467991473754e-16 -3.6739403974420609e-16 1 0
		 -0.76854100000000114 4.8181000000000012 -1.1826912545190075e-15 1;
	setAttr ".radi" 0.56587078469721452;
createNode joint -n "joint9" -p "joint8";
	rename -uid "009CB2FD-FF43-D42E-28FB-C3A9B1FCF228";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 4;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 8.5377364632265718e-07 -7.0152694459904884e-15 -1.1607519917526958 ;
	setAttr ".bps" -type "matrix" -5.4609095023749887e-15 1.0000000000000002 3.6739403974420544e-16 0
		 -1.0000000000000002 -5.2388648974499574e-15 -1.2246467991473949e-16 0 -1.2246467991473754e-16 -3.6739403974420609e-16 1 0
		 -0.72248499999999938 2.5450699999999999 -2.0121486953806274e-15 1;
	setAttr ".radi" 0.6004045802543585;
createNode joint -n "joint10" -p "joint9";
	rename -uid "F7B73E75-5349-741C-4F46-138FACA44580";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 180 89.999999999999716 ;
	setAttr ".bps" -type "matrix" 1.0000000000000002 3.5388358909926791e-16 2.3665827156630354e-30 0
		 5.7592819402429917e-16 -1.0000000000000002 -3.6739403974420604e-16 0 2.1940193926459391e-30 3.6739403974420604e-16 -1 0
		 -0.72248499999999716 -0.39608699999999875 -3.0927122471325767e-15 1;
	setAttr ".radi" 0.6004045802543585;
createNode joint -n "joint11" -p "joint5";
	rename -uid "778BB116-3646-CFD0-BF32-C5967CE8ED0E";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" -5.9952043329758453e-15 -1 -3.6739403974420599e-16 0
		 -1 6.106226635438361e-15 0 0 2.2186712959340957e-30 3.6739403974420599e-16 -1 0 -0.012803574074284379 11.271536501411344 0 1;
	setAttr ".radi" 0.53916058017147472;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "F8BB68A1-AD43-9135-FD63-7F8FC1A93054";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "FB5F6685-8448-7654-CF95-25B9ED4CCF54";
createNode displayLayer -n "defaultLayer";
	rename -uid "04EB6B14-1E42-AA91-91BC-35A4E0A0FC93";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "D0C71FA4-2A40-2B7C-0F1F-5D9ED5487189";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "469BD4AA-F14B-6CC6-392A-FD847042E87A";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "5A107B94-E24D-6D9E-303E-AE97F71B33EB";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 465\n                -height 294\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n"
		+ "            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n"
		+ "            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 465\n            -height 294\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n"
		+ "                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n"
		+ "                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n"
		+ "                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 465\n                -height 294\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n"
		+ "            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n"
		+ "            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n"
		+ "            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 465\n            -height 294\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n"
		+ "                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n"
		+ "                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n"
		+ "                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 465\n                -height 294\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n"
		+ "            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n"
		+ "            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 465\n            -height 294\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n"
		+ "                -width 936\n                -height 633\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 936\n            -height 633\n"
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
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 936\\n    -height 633\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 936\\n    -height 633\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "C581C25E-594A-B77C-454B-B79651B65574";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polyMirror -n "polyMirror1";
	rename -uid "AF8784E1-4D47-618C-4D05-BEB204F58695";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".p" -type "double3" 0 5.9162857085466385 -0.21494579315185547 ;
	setAttr ".d" 1;
	setAttr ".mm" 1;
createNode groupId -n "groupId1";
	rename -uid "00FD7609-F540-AA7B-F68F-68B9417DA229";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	rename -uid "F4948342-AD4A-BD8A-68B2-9CBBFEF034C2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:76]";
createNode polyMergeVert -n "polyMergeVert1";
	rename -uid "50D857B8-5F4E-A83A-5483-CDA7B3EEBAD8";
	setAttr ".ics" -type "componentList" 2 "vtx[9]" "vtx[73]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweak -n "polyTweak1";
	rename -uid "DE0278D3-A541-937C-7088-D9B39FAB80B8";
	setAttr ".uopa" yes;
	setAttr -s 3 ".tk";
	setAttr ".tk[9]" -type "float3" -0.095219716 0 0 ;
	setAttr ".tk[38]" -type "float3" -1.1920929e-07 0 0 ;
	setAttr ".tk[73]" -type "float3" 0.095219716 0 0 ;
createNode polyMergeVert -n "polyMergeVert2";
	rename -uid "8C8D45A7-D842-C087-8B7A-FCA37F3C83D8";
	setAttr ".ics" -type "componentList" 2 "vtx[6]" "vtx[72]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweak -n "polyTweak2";
	rename -uid "85D47EBE-8D4D-75D9-FDE9-50ABE1753066";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[6]" -type "float3" -0.097533323 0 0 ;
	setAttr ".tk[72]" -type "float3" 0.097533323 0 0 ;
createNode polyMergeVert -n "polyMergeVert3";
	rename -uid "72A82B48-7B4D-A63A-AF71-A9A934624C53";
	setAttr ".ics" -type "componentList" 2 "vtx[12]" "vtx[74]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweak -n "polyTweak3";
	rename -uid "F8BFB7F6-214D-1110-DDE9-2EAE37C2C696";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk";
	setAttr ".tk[12]" -type "float3" -0.09848921 0 0 ;
	setAttr ".tk[74]" -type "float3" 0.09848921 0 0 ;
createNode polyMergeVert -n "polyMergeVert4";
	rename -uid "E8D16594-0547-8357-C7BA-9B8B069F7802";
	setAttr ".ics" -type "componentList" 2 "vtx[0]" "vtx[65]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweak -n "polyTweak4";
	rename -uid "485E83C6-044E-5EC1-D252-E88C5A4FA10E";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[0]" -type "float3" -0.10010925 0 0 ;
	setAttr ".tk[65]" -type "float3" 0.10010925 0 0 ;
createNode polyMergeVert -n "polyMergeVert5";
	rename -uid "CB29D759-5F47-B0FF-A572-298624F5D85E";
	setAttr ".ics" -type "componentList" 2 "vtx[8]" "vtx[70]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweak -n "polyTweak5";
	rename -uid "1634C3F3-B44B-0E86-000C-91B4CDB7DA45";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[8]" -type "float3" -0.10094598 0 0 ;
	setAttr ".tk[70]" -type "float3" 0.10094598 0 0 ;
createNode polyMergeVert -n "polyMergeVert6";
	rename -uid "8ED89A7F-2149-C955-818C-CA831B4391F6";
	setAttr ".ics" -type "componentList" 2 "vtx[1]" "vtx[64]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweak -n "polyTweak6";
	rename -uid "0F4281DC-3A46-662F-86DB-93B9E71BA105";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[1]" -type "float3" -0.10160454 0 0 ;
	setAttr ".tk[64]" -type "float3" 0.10160454 0 0 ;
createNode polyMergeVert -n "polyMergeVert7";
	rename -uid "1423E403-EA44-54B4-93DD-0EAE75E1D27F";
	setAttr ".ics" -type "componentList" 2 "vtx[13]" "vtx[63]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweak -n "polyTweak7";
	rename -uid "C05BCE10-7B46-CFC3-77C2-93AEF4095AD1";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[13]" -type "float3" -0.098298624 0 0 ;
	setAttr ".tk[63]" -type "float3" 0.098298624 0 0 ;
createNode polyMergeVert -n "polyMergeVert8";
	rename -uid "AFB54F01-474F-C414-666E-EFB899D37FAD";
	setAttr ".ics" -type "componentList" 2 "vtx[11]" "vtx[68]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweak -n "polyTweak8";
	rename -uid "12F4CFB4-B545-E742-F071-05A71E93E362";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[11]" -type "float3" -0.12626514 0 0 ;
	setAttr ".tk[68]" -type "float3" 0.12626514 0 0 ;
createNode polyMergeVert -n "polyMergeVert9";
	rename -uid "C11225F8-5143-44A8-8BC8-BF98832969BA";
	setAttr ".ics" -type "componentList" 2 "vtx[5]" "vtx[67]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweak -n "polyTweak9";
	rename -uid "7DF7B4EF-F242-B8F7-7A9D-62875D0DC58E";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[5]" -type "float3" -0.095704414 0 0 ;
	setAttr ".tk[67]" -type "float3" 0.095704414 0 0 ;
createNode polyMergeVert -n "polyMergeVert10";
	rename -uid "5B9B581E-6B4D-C7A0-7804-088F609AAC7D";
	setAttr ".ics" -type "componentList" 2 "vtx[3]" "vtx[63]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweak -n "polyTweak10";
	rename -uid "7A1DF2AA-3E45-1CA2-6B62-E1A21CC015BD";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[3]" -type "float3" -0.090116605 0 0 ;
	setAttr ".tk[63]" -type "float3" 0.090116605 0 0 ;
createNode tweak -n "tweak1";
	rename -uid "5F4B1888-FA4E-E04A-6D2F-F9BBE9F64900";
	setAttr -s 60 ".vl[0].vt";
	setAttr ".vl[0].vt[2]" -type "float3" -0.053105503 0 0 ;
	setAttr ".vl[0].vt[4]" -type "float3" -0.055222642 0 0 ;
	setAttr ".vl[0].vt[7]" -type "float3" -0.056648947 0 0 ;
	setAttr ".vl[0].vt[10]" -type "float3" -0.031195922 0 0 ;
	setAttr ".vl[0].vt[14]" -type "float3" -0.021214226 0 0 ;
	setAttr ".vl[0].vt[15]" -type "float3" -0.04471289 0 0 ;
	setAttr ".vl[0].vt[16]" -type "float3" -0.048001651 0 0 ;
	setAttr ".vl[0].vt[17]" -type "float3" -0.037853636 0 0 ;
	setAttr ".vl[0].vt[18]" -type "float3" -0.0440582 0 0 ;
	setAttr ".vl[0].vt[19]" -type "float3" -0.061777819 0 0 ;
	setAttr ".vl[0].vt[20]" -type "float3" -0.055230603 0 0 ;
	setAttr ".vl[0].vt[21]" -type "float3" -0.054164074 0 0 ;
	setAttr ".vl[0].vt[22]" -type "float3" -0.067550644 0 0 ;
	setAttr ".vl[0].vt[23]" -type "float3" -0.075735167 0 0 ;
	setAttr ".vl[0].vt[30]" -type "float3" -6.237586e-19 0 0 ;
	setAttr ".vl[0].vt[31]" -type "float3" 1.041283e-17 0 0 ;
	setAttr ".vl[0].vt[32]" -type "float3" 3.7617752e-19 0.028650215 0 ;
	setAttr ".vl[0].vt[33]" -type "float3" 0.1083488 -0.00094510312 0 ;
	setAttr ".vl[0].vt[35]" -type "float3" -0.17175747 0 0 ;
	setAttr ".vl[0].vt[36]" -type "float3" 2.0965509e-18 -0.028650215 0 ;
	setAttr ".vl[0].vt[43]" -type "float3" 0.054437671 -0.39849117 -0.037905779 ;
	setAttr ".vl[0].vt[44]" -type "float3" 0.054437671 -0.39849117 0.092234015 ;
	setAttr ".vl[0].vt[51]" -type "float3" -0.040098265 0 0 ;
	setAttr ".vl[0].vt[52]" -type "float3" -0.040098265 0 0 ;
	setAttr ".vl[0].vt[53]" -type "float3" -0.040098265 0 0 ;
	setAttr ".vl[0].vt[54]" -type "float3" -0.040098265 0 0 ;
	setAttr ".vl[0].vt[55]" -type "float3" -0.040098265 0 0 ;
	setAttr ".vl[0].vt[56]" -type "float3" 0.048001651 0 0 ;
	setAttr ".vl[0].vt[57]" -type "float3" 0.0440582 0 0 ;
	setAttr ".vl[0].vt[58]" -type "float3" 0.055222642 0 0 ;
	setAttr ".vl[0].vt[59]" -type "float3" 0.054164074 0 0 ;
	setAttr ".vl[0].vt[60]" -type "float3" 0.053105503 0 0 ;
	setAttr ".vl[0].vt[61]" -type "float3" 0.037853636 0 0 ;
	setAttr ".vl[0].vt[62]" -type "float3" 0.031195922 0 0 ;
	setAttr ".vl[0].vt[63]" -type "float3" 0.055230603 0 0 ;
	setAttr ".vl[0].vt[64]" -type "float3" 0.061777819 0 0 ;
	setAttr ".vl[0].vt[65]" -type "float3" 0.056648947 0 0 ;
	setAttr ".vl[0].vt[66]" -type "float3" 0.021214226 0 0 ;
	setAttr ".vl[0].vt[67]" -type "float3" 0.04471289 0 0 ;
	setAttr ".vl[0].vt[68]" -type "float3" 0.075735167 0 0 ;
	setAttr ".vl[0].vt[69]" -type "float3" 0.067550644 0 0 ;
	setAttr ".vl[0].vt[72]" -type "float3" -0.1083488 -0.00094510312 0 ;
	setAttr ".vl[0].vt[73]" -type "float3" 0.17175747 0 0 ;
	setAttr ".vl[0].vt[75]" -type "float3" -0.054437671 -0.39849117 0.092234015 ;
	setAttr ".vl[0].vt[80]" -type "float3" -0.054437671 -0.39849117 -0.037905779 ;
	setAttr ".vl[0].vt[84]" -type "float3" 0.040098265 0 0 ;
	setAttr ".vl[0].vt[85]" -type "float3" 0.040098265 0 0 ;
	setAttr ".vl[0].vt[86]" -type "float3" 0.040098265 0 0 ;
	setAttr ".vl[0].vt[87]" -type "float3" 0.040098265 0 0 ;
	setAttr ".vl[0].vt[88]" -type "float3" 0.040098265 0 0 ;
createNode objectSet -n "tweakSet1";
	rename -uid "59C6E88E-EA4F-9F8D-EA84-B9870B8470F6";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId3";
	rename -uid "BEE10EDC-A848-5A66-BEE6-C6BCDCBCE0D2";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	rename -uid "6D688D3F-AE4F-A6F5-9149-50833E0421DB";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "skinCluster1";
	rename -uid "C92E6C0B-1A4F-12E5-B4C4-C0BF76A8953C";
	setAttr -s 89 ".wl";
	setAttr -s 2 ".wl[0].w";
	setAttr ".wl[0].w[0]" 0.99798834323883057;
	setAttr ".wl[0].w[9]" 1;
	setAttr -s 2 ".wl[1].w";
	setAttr ".wl[1].w[0]" 1;
	setAttr ".wl[1].w[9]" 1;
	setAttr -s 2 ".wl[2].w";
	setAttr ".wl[2].w[0]" 0.99629944562911987;
	setAttr ".wl[2].w[9]" 1;
	setAttr -s 2 ".wl[3].w";
	setAttr ".wl[3].w[0]" 0.17352348566055298;
	setAttr ".wl[3].w[9]" 1;
	setAttr -s 2 ".wl[4].w";
	setAttr ".wl[4].w[0]" 0.24591356515884399;
	setAttr ".wl[4].w[9]" 1;
	setAttr ".wl[5].w[9]"  1;
	setAttr ".wl[6].w[9]"  1;
	setAttr ".wl[7].w[9]"  1;
	setAttr -s 2 ".wl[8].w";
	setAttr ".wl[8].w[0]" 1;
	setAttr ".wl[8].w[9]" 1;
	setAttr ".wl[9].w[9]"  1;
	setAttr -s 2 ".wl[10].w";
	setAttr ".wl[10].w[0]" 0.19346046447753906;
	setAttr ".wl[10].w[9]" 1;
	setAttr -s 2 ".wl[11].w";
	setAttr ".wl[11].w[0]" 0.68690627813339233;
	setAttr ".wl[11].w[9]" 1;
	setAttr ".wl[12].w[9]"  1;
	setAttr -s 2 ".wl[13].w";
	setAttr ".wl[13].w[0]" 0.8445926308631897;
	setAttr ".wl[13].w[9]" 1;
	setAttr -s 2 ".wl[14].w";
	setAttr ".wl[14].w[0]" 0.012482523918151855;
	setAttr ".wl[14].w[9]" 1;
	setAttr -s 2 ".wl[15].w";
	setAttr ".wl[15].w[0]" 0.025081396102905273;
	setAttr ".wl[15].w[9]" 1;
	setAttr -s 2 ".wl[16].w";
	setAttr ".wl[16].w[0]" 0.21956288814544678;
	setAttr ".wl[16].w[9]" 1;
	setAttr -s 2 ".wl[17].w";
	setAttr ".wl[17].w[0]" 0.86682379245758057;
	setAttr ".wl[17].w[9]" 1;
	setAttr -s 2 ".wl[18].w";
	setAttr ".wl[18].w[0]" 0.76865684986114502;
	setAttr ".wl[18].w[9]" 1;
	setAttr ".wl[19].w[9]"  1;
	setAttr -s 2 ".wl[20].w";
	setAttr ".wl[20].w[0]" 0.23346847295761108;
	setAttr ".wl[20].w[9]" 1;
	setAttr -s 2 ".wl[21].w";
	setAttr ".wl[21].w[0]" 0.7228657603263855;
	setAttr ".wl[21].w[9]" 1;
	setAttr -s 2 ".wl[22].w";
	setAttr ".wl[22].w[0]" 0.40939217805862427;
	setAttr ".wl[22].w[9]" 1;
	setAttr -s 2 ".wl[23].w";
	setAttr ".wl[23].w[0]" 0.018040120601654053;
	setAttr ".wl[23].w[9]" 1;
	setAttr -s 2 ".wl[24].w";
	setAttr ".wl[24].w[0]" 1;
	setAttr ".wl[24].w[9]" 0.28507530689239502;
	setAttr -s 2 ".wl[25].w";
	setAttr ".wl[25].w[0]" 1;
	setAttr ".wl[25].w[9]" 1;
	setAttr -s 2 ".wl[26].w";
	setAttr ".wl[26].w[0]" 1;
	setAttr ".wl[26].w[9]" 1;
	setAttr -s 2 ".wl[27].w";
	setAttr ".wl[27].w[0]" 1;
	setAttr ".wl[27].w[9]" 1;
	setAttr -s 2 ".wl[28].w";
	setAttr ".wl[28].w[0]" 1;
	setAttr ".wl[28].w[9]" 1;
	setAttr -s 2 ".wl[29].w";
	setAttr ".wl[29].w[0]" 1;
	setAttr ".wl[29].w[9]" 0.87822866439819336;
	setAttr -s 5 ".wl[30].w";
	setAttr ".wl[30].w[0]" 0.94540917873382568;
	setAttr ".wl[30].w[1]" 1;
	setAttr ".wl[30].w[2]" 0.016058921813964844;
	setAttr ".wl[30].w[3]" 0.12737524509429932;
	setAttr ".wl[30].w[6]" 0.12737524509429932;
	setAttr ".wl[31].w[0]"  1;
	setAttr -s 2 ".wl[32].w";
	setAttr ".wl[32].w[0]" 1;
	setAttr ".wl[32].w[9]" 1;
	setAttr ".wl[33].w[0]"  1;
	setAttr -s 4 ".wl[34].w";
	setAttr ".wl[34].w[0]" 0.99483609199523926;
	setAttr ".wl[34].w[1]" 1;
	setAttr ".wl[34].w[3]" 0.0030424594879150391;
	setAttr ".wl[34].w[6]" 0.0030424594879150391;
	setAttr -s 3 ".wl[35].w";
	setAttr ".wl[35].w[0]" 0.99615460634231567;
	setAttr ".wl[35].w[1]" 0.96344447135925293;
	setAttr ".wl[35].w[3]" 0.28471934795379639;
	setAttr ".wl[36].w[0]"  1;
	setAttr -s 4 ".wl[37].w";
	setAttr ".wl[37].w[1]" 1;
	setAttr ".wl[37].w[2]" 1;
	setAttr ".wl[37].w[3]" 0.22594833374023438;
	setAttr ".wl[37].w[6]" 0.22594833374023438;
	setAttr -s 5 ".wl[38].w";
	setAttr ".wl[38].w[0]" 0.66889965534210205;
	setAttr ".wl[38].w[1]" 1;
	setAttr ".wl[38].w[2]" 0.37386524677276611;
	setAttr ".wl[38].w[3]" 0.12334543466567993;
	setAttr ".wl[38].w[6]" 0.12334591150283813;
	setAttr -s 4 ".wl[39].w";
	setAttr ".wl[39].w[0]" 0.85654866695404053;
	setAttr ".wl[39].w[1]" 1;
	setAttr ".wl[39].w[3]" 0.0044065713882446289;
	setAttr ".wl[39].w[6]" 0.0044065713882446289;
	setAttr -s 3 ".wl[40].w";
	setAttr ".wl[40].w[0]" 0.82655739784240723;
	setAttr ".wl[40].w[1]" 1;
	setAttr ".wl[40].w[3]" 0.88900989294052124;
	setAttr -s 4 ".wl[41].w";
	setAttr ".wl[41].w[1]" 1;
	setAttr ".wl[41].w[2]" 0.07937312126159668;
	setAttr ".wl[41].w[3]" 0.02135765552520752;
	setAttr ".wl[41].w[6]" 0.02135765552520752;
	setAttr -s 3 ".wl[42].w";
	setAttr ".wl[42].w[0]" 0.00024807453155517578;
	setAttr ".wl[42].w[1]" 0.96841281652450562;
	setAttr ".wl[42].w[3]" 0.84334957599639893;
	setAttr -s 4 ".wl[43].w[1:4]"  0.76131641864776611 1 0.99996829032897949 
		0.78246599435806274;
	setAttr -s 4 ".wl[44].w[1:4]"  0.73336970806121826 0.4706956148147583 
		0.84427732229232788 0.10824358463287354;
	setAttr -s 2 ".wl[45].w[4:5]"  1 0.076067090034484863;
	setAttr -s 2 ".wl[46].w[4:5]"  0.95839500427246094 0.0011116862297058105;
	setAttr -s 2 ".wl[47].w[4:5]"  1 0.01653754711151123;
	setAttr -s 2 ".wl[48].w[4:5]"  1 1;
	setAttr -s 2 ".wl[49].w[4:5]"  0.88114404678344727 0.99165236949920654;
	setAttr -s 2 ".wl[50].w[4:5]"  0.99682140350341797 1;
	setAttr -s 2 ".wl[51].w[4:5]"  0.038157224655151367 0.96721780300140381;
	setAttr -s 2 ".wl[52].w[4:5]"  0.11843752861022949 0.98974120616912842;
	setAttr -s 2 ".wl[53].w[4:5]"  0.15316492319107056 1;
	setAttr -s 2 ".wl[54].w[4:5]"  0.26285374164581299 1;
	setAttr -s 2 ".wl[55].w[4:5]"  1 1;
	setAttr -s 2 ".wl[56].w";
	setAttr ".wl[56].w[0]" 0.22034382820129395;
	setAttr ".wl[56].w[9]" 1;
	setAttr -s 2 ".wl[57].w";
	setAttr ".wl[57].w[0]" 0.76959061622619629;
	setAttr ".wl[57].w[9]" 1;
	setAttr -s 2 ".wl[58].w";
	setAttr ".wl[58].w[0]" 0.24685955047607422;
	setAttr ".wl[58].w[9]" 1;
	setAttr -s 2 ".wl[59].w";
	setAttr ".wl[59].w[0]" 0.72405415773391724;
	setAttr ".wl[59].w[9]" 1;
	setAttr -s 2 ".wl[60].w";
	setAttr ".wl[60].w[0]" 0.99650263786315918;
	setAttr ".wl[60].w[9]" 1;
	setAttr -s 2 ".wl[61].w";
	setAttr ".wl[61].w[0]" 0.86751252412796021;
	setAttr ".wl[61].w[9]" 1;
	setAttr -s 2 ".wl[62].w";
	setAttr ".wl[62].w[0]" 0.19393891096115112;
	setAttr ".wl[62].w[9]" 1;
	setAttr -s 2 ".wl[63].w";
	setAttr ".wl[63].w[0]" 0.23439258337020874;
	setAttr ".wl[63].w[9]" 1;
	setAttr ".wl[64].w[9]"  1;
	setAttr ".wl[65].w[9]"  1;
	setAttr -s 2 ".wl[66].w";
	setAttr ".wl[66].w[0]" 0.012563705444335938;
	setAttr ".wl[66].w[9]" 1;
	setAttr -s 2 ".wl[67].w";
	setAttr ".wl[67].w[0]" 0.025326251983642578;
	setAttr ".wl[67].w[9]" 1;
	setAttr -s 2 ".wl[68].w";
	setAttr ".wl[68].w[0]" 0.018391251564025879;
	setAttr ".wl[68].w[9]" 1;
	setAttr -s 2 ".wl[69].w";
	setAttr ".wl[69].w[0]" 0.41080760955810547;
	setAttr ".wl[69].w[9]" 1;
	setAttr -s 2 ".wl[70].w";
	setAttr ".wl[70].w[0]" 1;
	setAttr ".wl[70].w[9]" 1;
	setAttr -s 2 ".wl[71].w";
	setAttr ".wl[71].w[0]" 1;
	setAttr ".wl[71].w[9]" 0.88353300094604492;
	setAttr ".wl[72].w[0]"  1;
	setAttr -s 3 ".wl[73].w";
	setAttr ".wl[73].w[0]" 0.9965749979019165;
	setAttr ".wl[73].w[1]" 0.97300040721893311;
	setAttr ".wl[73].w[6]" 0.28471934795379639;
	setAttr -s 3 ".wl[74].w";
	setAttr ".wl[74].w[0]" 0.82837647199630737;
	setAttr ".wl[74].w[1]" 1;
	setAttr ".wl[74].w[6]" 0.88900989294052124;
	setAttr -s 4 ".wl[75].w";
	setAttr ".wl[75].w[1]" 0.73720520734786987;
	setAttr ".wl[75].w[2]" 0.3987613320350647;
	setAttr ".wl[75].w[6]" 0.84427732229232788;
	setAttr ".wl[75].w[7]" 0.10824358463287354;
	setAttr -s 3 ".wl[76].w";
	setAttr ".wl[76].w[0]" 0.00029981136322021484;
	setAttr ".wl[76].w[1]" 0.97615313529968262;
	setAttr ".wl[76].w[6]" 0.84334957599639893;
	setAttr -s 2 ".wl[77].w[7:8]"  1 1;
	setAttr -s 2 ".wl[78].w[7:8]"  0.88114404678344727 0.99165236949920654;
	setAttr -s 2 ".wl[79].w[7:8]"  0.99682140350341797 1;
	setAttr -s 4 ".wl[80].w";
	setAttr ".wl[80].w[1]" 0.76506972312927246;
	setAttr ".wl[80].w[2]" 1;
	setAttr ".wl[80].w[6]" 0.99996829032897949;
	setAttr ".wl[80].w[7]" 0.78246599435806274;
	setAttr -s 2 ".wl[81].w[7:8]"  0.95839500427246094 0.0011116862297058105;
	setAttr -s 2 ".wl[82].w[7:8]"  1 0.076067090034484863;
	setAttr -s 2 ".wl[83].w[7:8]"  1 0.01653754711151123;
	setAttr -s 2 ".wl[84].w[7:8]"  0.038157224655151367 0.96721780300140381;
	setAttr -s 2 ".wl[85].w[7:8]"  0.26285374164581299 1;
	setAttr -s 2 ".wl[86].w[7:8]"  0.11843752861022949 0.98974120616912842;
	setAttr -s 2 ".wl[87].w[7:8]"  0.15316492319107056 1;
	setAttr -s 2 ".wl[88].w[7:8]"  1 1;
	setAttr -s 10 ".pm";
	setAttr ".pm[0]" -type "matrix" -6.106226635438361e-15 -1 2.2433912711873702e-30 -0
		 -1 5.9952043329758453e-15 3.6739403974420599e-16 0 -3.6739403974420599e-16 -1.6068956950132144e-32 -1 0
		 9.6528599742051391 -0.012803574074351953 -3.546403221008378e-15 1;
	setAttr ".pm[1]" -type "matrix" -6.106226635438361e-15 -1 2.2433912711873702e-30 -0
		 -1 5.9952043329758453e-15 3.6739403974420599e-16 0 -3.6739403974420599e-16 -1.6068956950132144e-32 -1 0
		 5.8013471884003494 -0.012803574074329704 -3.0747966757385521e-15 1;
	setAttr ".pm[2]" -type "matrix" 1 -5.5511151231257827e-16 -1.2246467991473756e-16 -0
		 7.7715611723760958e-16 1 -3.6739403974420609e-16 0 1.2246467991473784e-16 3.6739403974420604e-16 1 -0
		 0.012803574074291219 -4.9960308786411654 2.9746200488540886e-15 1;
	setAttr ".pm[3]" -type "matrix" -0.0202575582880502 -0.99979479461147724 1.2990718608953801e-16 -0
		 -0.99979479461147724 0.020257558288050089 7.3471268825174546e-16 0 -7.3719352364334562e-16 -1.1499704332771483e-16 -1 0
		 4.8326835592056137 0.67078010528297527 -4.8256411682108349e-15 1;
	setAttr ".pm[4]" -type "matrix" -4.0176195703622837e-15 -0.99999999999999978 1.2990718608953801e-16 -0
		 -0.99999999999999978 3.906597267899768e-15 7.3471268825174556e-16 0 -7.3471268825174596e-16 -1.2990718608953506e-16 -1 0
		 2.5450681967653939 0.7224852304884275 -4.5472174933983467e-15 1;
	setAttr ".pm[5]" -type "matrix" 0.99999999999999978 -6.4531713306337283e-16 -2.5237186600427329e-16 -0
		 8.6736173798840374e-16 0.99999999999999978 -7.3471268825174566e-16 0 2.5237186600427388e-16 7.3471268825174536e-16 1 -0
		 -0.7224852304884396 0.39608702148554004 4.2755826959536282e-15 1;
	setAttr ".pm[6]" -type "matrix" -0.020257558288051421 -0.99979479461147724 -1.2246467991473754e-16 0
		 0.99979479461147724 -0.020257558288051643 -3.6739403974420609e-16 0 3.6483781311593907e-16 -1.2988205567731635e-16 1 -0
		 -4.832680064021817 -0.67078034965783884 2.8587133498442146e-15 1;
	setAttr ".pm[7]" -type "matrix" -5.2388648974499551e-15 -0.99999999999999978 -1.2246467991473754e-16 0
		 0.99999999999999978 -5.4609095023749864e-15 -3.6739403974420609e-16 0 3.673940397442054e-16 -1.2246467991473951e-16 1 -0
		 -2.5450700000000031 -0.72248499999998528 2.8587133498442146e-15 1;
	setAttr ".pm[8]" -type "matrix" 0.99999999999999978 3.5388358909926776e-16 2.2365679942646765e-30 -0
		 5.7592819402429887e-16 -0.99999999999999978 3.6739403974420599e-16 0 2.4056119784511107e-30 -3.6739403974420599e-16 -1 -0
		 0.72248499999999716 -0.39608699999999841 -2.9471922441124128e-15 1;
	setAttr ".pm[9]" -type "matrix" -6.106226635438361e-15 -1 2.2433912711873702e-30 -0
		 -1 5.9952043329758453e-15 3.6739403974420599e-16 0 -3.6739403974420599e-16 -1.6068956950132144e-32 -1 0
		 11.271536501411344 -0.012803574074351953 -4.1410953293777878e-15 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 10 ".ma";
	setAttr -s 10 ".dpf[0:9]"  4 4 4 4 4 4 4 4 4 4;
	setAttr -s 10 ".lw";
	setAttr -s 10 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 4;
	setAttr ".ucm" yes;
	setAttr ".nw" 2;
	setAttr -s 10 ".ifcl";
	setAttr -s 10 ".ifcl";
createNode objectSet -n "skinCluster1Set";
	rename -uid "6F21E0D9-7D45-156A-F375-ECAC04D9E702";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster1GroupId";
	rename -uid "C691585A-3D43-5ABB-8F6F-EFBAA76274F7";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster1GroupParts";
	rename -uid "E33941D1-2F42-020E-D3CA-0098E39AAC86";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose1";
	rename -uid "A0E796F7-364C-7274-0E8E-1D93162069E6";
	setAttr -s 10 ".wm";
	setAttr -s 10 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 1.2246467991473532e-16 6.2831853071795862
		 -4.4408920985006262e-16 0 -0.012803574074294083 9.6528599742051391 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.70710678118654535 0.70710678118654968 4.3297802811774535e-17 4.32978028117748e-17 1
		 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.8515127858047897 -2.2249254217351158e-14
		 -4.7160654526982624e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.805316309759184 -4.6507153567476835e-15
		 -9.8608641283690979e-17 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.70710678118654513 0.7071067811865499 4.3297802811774516e-17 4.3297802811774812e-17 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 1.2243954950251313e-16 6.2831853071795862
		 3.3306690738754696e-16 0 0.78134440055346166 -0.17792737922416002 -7.5521983734787439e-17 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.69990800885257387 0.71423300059856198 4.2857005136945099e-17 4.3734157901421924e-17 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.2735018374794813 -6.3143934525555778e-16
		 -2.7842367481248729e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.010129298804027199 0.99994869733688774 1
		 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.9411552182509308 -1.3893201095317461e-14
		 -3.6011371993960966e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.70710678118654591 0.70710678118654924 4.3297802811774566e-17 4.3297802811774769e-17 1
		 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.75573742592570614 -0.17793087864116419
		 1.1590669900987371e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.71423300059856198 0.69990800885257387 1
		 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 0 0 0 0 -2.2734965441002415 -5.1134513789907743e-07
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.010129298804027199 0.99994869733688774 1
		 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 0 0 0 0 -2.9411569999999982 1.3877787807814457e-14
		 4.9303800000000003e-32 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.7071067811865458 0.70710678118654924 4.329780281177456e-17 4.3297802811774769e-17 1
		 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.6186765272062045 0
		 5.9469210836940964e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr -s 10 ".m";
	setAttr -s 10 ".p";
	setAttr ".bp" yes;
createNode skinBinding -n "skinBinding1";
	rename -uid "1975C195-3947-7DAE-BE65-2A9DA59C1BE1";
	setAttr -s 10 ".l[0:9]"  1.0172306791279557 0.36260902785632032 0.35849063862753328 
		1.2291009478958936 2.0711983965787297 1.0278552195663604 1.2291009478958936 2.0711983965787297 
		1.0278552195663604 1.3220065740673865;
	setAttr -s 10 ".rr[0:9]"  2.3504827408598397 1.8191480176435004 1.150794492464019 
		0.93040371687644041 0.89323951716073757 0.98994442413383443 0.93040371687644041 0.89323951716073757 
		0.98994442413383443 1.181153683353988;
	setAttr -s 10 ".lr[0:9]"  2.3331352762983775 1.8191480176435004 1.150794492464019 
		0.93040371687644041 0.89323951716073757 0.98994442413383443 0.93040371687644041 0.89323951716073757 
		0.98994442413383443 1.181153683353988;
	setAttr -s 10 ".bpm";
	setAttr ".bpm[0]" -type "matrix" -5.9952043329758453e-15 -1 -3.6739403974420599e-16 0
		 -1 6.106226635438361e-15 0 0 2.2186712959340957e-30 3.6739403974420599e-16 -1 0 -0.012803574074294083 9.6528599742051391 0 1;
	setAttr ".bpm[1]" -type "matrix" -5.9952043329758453e-15 -1 -3.6739403974420599e-16 0
		 -1 6.106226635438361e-15 0 0 2.2186712959340957e-30 3.6739403974420599e-16 -1 0 -0.012803574074294924 5.8013471884003494 -9.4341629623345634e-16 1;
	setAttr ".bpm[2]" -type "matrix" 1 5.5511151231257827e-16 1.2246467991473776e-16 0
		 -7.7715611723760958e-16 1 3.6739403974420599e-16 0 -1.2246467991473754e-16 -3.6739403974420609e-16 1 0
		 -0.012803574074295101 4.9960308786411654 -1.1406760672640883e-15 1;
	setAttr ".bpm[3]" -type "matrix" -0.020257558288050093 -0.99979479461147747 -7.3719352364334582e-16 0
		 -0.99979479461147747 0.020257558288050204 -1.1499704332771485e-16 0 1.2990718608953794e-16 7.3471268825174556e-16 -1 0
		 0.76854082647916666 4.8181034994170062 -1.1858804177161869e-15 1;
	setAttr ".bpm[4]" -type "matrix" -3.9065972678997696e-15 -1.0000000000000002 -7.3471268825174615e-16 0
		 -1.0000000000000002 4.0176195703622852e-15 -1.2990718608953508e-16 0 1.2990718608953794e-16 7.3471268825174556e-16 -1 0
		 0.72248523048843771 2.5450681967653916 -2.5834675734848197e-15 1;
	setAttr ".bpm[5]" -type "matrix" 1.0000000000000002 6.4531713306337293e-16 2.5237186600427383e-16 0
		 -8.6736173798840434e-16 1.0000000000000002 7.3471268825174556e-16 0 -2.5237186600427329e-16 -7.3471268825174566e-16 1 0
		 0.72248523048844016 -0.39608702148553965 -4.3842579105120003e-15 1;
	setAttr ".bpm[6]" -type "matrix" -0.020257558288051647 0.99979479461147747 3.6483781311593912e-16 0
		 -0.99979479461147747 -0.020257558288051425 -1.298820556773163e-16 0 -1.2246467991473754e-16 -3.6739403974420609e-16 1 0
		 -0.76854100000000114 4.8181000000000012 -1.1826912545190075e-15 1;
	setAttr ".bpm[7]" -type "matrix" -5.4609095023749887e-15 1.0000000000000002 3.6739403974420544e-16 0
		 -1.0000000000000002 -5.2388648974499574e-15 -1.2246467991473949e-16 0 -1.2246467991473754e-16 -3.6739403974420609e-16 1 0
		 -0.72248499999999938 2.5450699999999999 -2.0121486953806274e-15 1;
	setAttr ".bpm[8]" -type "matrix" 1.0000000000000002 3.5388358909926791e-16 2.3665827156630354e-30 0
		 5.7592819402429917e-16 -1.0000000000000002 -3.6739403974420604e-16 0 2.1940193926459391e-30 3.6739403974420604e-16 -1 0
		 -0.72248499999999716 -0.39608699999999875 -3.0927122471325767e-15 1;
	setAttr ".bpm[9]" -type "matrix" -5.9952043329758453e-15 -1 -3.6739403974420599e-16 0
		 -1 6.106226635438361e-15 0 0 2.2186712959340957e-30 3.6739403974420599e-16 -1 0 -0.012803574074284379 11.271536501411344 0 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 10 ".pm";
	setAttr -s 10 ".lm";
	setAttr ".lm[0]" -type "matrix" 3.7980091540823588e-16 1.7044111395673935e-14 1.7104712611075044 0
		 3.4922843326998134e-14 3.5047013294076375 -3.492284332699814e-14 0 -1 9.9645704568214317e-15 2.2204460492503131e-16 0
		 1.4654626847291392 -1.4602706173826199e-14 -1.7067938086245961e-16 1;
	setAttr ".lm[1]" -type "matrix" 5.0175389403613741e-16 1.3049798056752981e-14 -2.2596986502128438 0
		 8.9645323748575894e-15 1.5522954163089451 8.9645323748575894e-15 0 1 -5.7750169720744875e-15 2.2204460492503131e-16 0
		 0.04004912702327168 -2.3128438827616111e-16 -1.298196989744518e-16 1;
	setAttr ".lm[2]" -type "matrix" 0.99484866885245937 0.071587673065612548 0.07177277441718867 0
		 0.071587673065612548 0.0051513311475408496 -0.99742100882849827 0 -0.07177277441718867 0.99742100882849827 2.2204460492503131e-16 0
		 0.032131611393826726 -0.4465306589017779 -6.9504733404601227e-17 1;
	setAttr ".lm[3]" -type "matrix" 5.2794528038445836e-16 6.6036647357970432e-16 -2.3776541680114587 0
		 2.7773865622013446e-16 1 2.7773865622013446e-16 0 1 -2.7773865622013446e-16 2.2204460492503131e-16 0
		 -0.09235002915615298 2.5649172999720096e-17 -4.1212707179476884e-16 1;
	setAttr ".lm[4]" -type "matrix" 3.4219572552375325e-16 7.279787997265608e-15 -1.5411125419565517 0
		 3.5018300268704617e-15 0.74132848047734345 3.5018300268704621e-15 0 1 -4.7237225050569003e-15 2.2204460492503131e-16 0
		 0.22770756444981566 -1.0756273467632887e-15 -4.5602944801296552e-16 1;
	setAttr ".lm[5]" -type "matrix" 0.68708094747763027 -3.451654258911171e-17 -3.4516542589111717e-17 0
		 -8.1930559621619642e-17 3.6213188501266712e-16 -1.6308970224020229 0 5.0236500831272859e-17 1 2.2204460492503131e-16 0
		 5.1635849592173612e-17 1.0278552195663604 2.282297061487438e-16 1;
	setAttr ".lm[6]" -type "matrix" -1.4132783875028155e-15 -1.242604283987904e-15 2.3776541680114587 0
		 -1.5057399771478688e-15 -1.0000000000000002 -5.2261775522516527e-16 0 -0.99999999999999978 1.8353374375834619e-15 -5.9440031545243786e-16 0
		 0.092353524339950255 -2.4437487111672596e-07 4.4332366240613187e-16 1;
	setAttr ".lm[7]" -type "matrix" -9.0827510163326347e-16 -7.6687214452017727e-15 1.5411125419565517 0
		 -4.4071739694904206e-15 -0.74132848047734345 -3.6889204788106438e-15 0 -0.99999999999999989 6.2017069065891423e-15 -5.8936325343257074e-16 0
		 -0.22770936768442418 2.3048843988959788e-07 -1.9892997419553608e-16 1;
	setAttr ".lm[8]" -type "matrix" -0.68708094747763027 -6.5201523631472787e-16 -1.3888335822180365e-16 0
		 -3.2966196518279466e-16 -9.6119077513634889e-16 1.6308970224020229 0 1.3930534311814304e-15 -1 -5.8936325343257083e-16 0
		 -2.3048844155493242e-07 -1.0278551980808195 6.8576555922448436e-16 1;
	setAttr ".lm[9]" -type "matrix" -1.0826740180556458e-15 0 -2.4379651521395624 0 0 2.5126869847503781 0 0
		 1.0000000000000002 0 -4.4408920985006262e-16 0 -0.020201020265563256 0 8.9710551278990374e-18 1;
	setAttr ".otw" -type "doubleArray" 89 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.10824358463287354 0 1 0.88114404678344727 0.99682140350341797
		 0.78246599435806274 0.95839500427246094 1 1 0.038157224655151367 0.26285374164581299
		 0.11843752861022949 0.15316492319107056 1 ;
	setAttr -s 3 ".fc[0:2]"  0 1 2 0.5 1 2 1 0 2;
	setAttr ".ci" 7;
createNode animCurveTA -n "joint11_rotateX";
	rename -uid "8FE4B5A6-3243-806F-9901-309E64AB7AEE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 20 2.691138257721199e-16 40 0 60 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "joint11_rotateY";
	rename -uid "51BA0C4D-3840-AA10-18A7-CE8979898776";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 20 -10.000000000000039 40 0 60 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "joint11_rotateZ";
	rename -uid "7C887247-6D4C-676A-2927-1F88681212F6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 20 -2.3544408953151227e-17 40 0 60 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "joint11_visibility";
	rename -uid "FBB0BC81-4243-8CBC-408D-E0AB2A7FF037";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 20 1 40 1 60 1;
	setAttr -s 4 ".kit[0:3]"  9 9 9 1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTL -n "joint11_translateX";
	rename -uid "DA086F49-BF4E-2441-33C4-7C86488A74B0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 -1.6186765272062045 20 -1.6186765272062045
		 40 -1.4267726226744839 60 -1.6186765272062045;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "joint11_translateY";
	rename -uid "39078494-9947-F950-A0E3-DCB7C764A064";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 20 0 40 2.4022105588369468e-15 60 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "joint11_translateZ";
	rename -uid "B8AAAD44-A749-A57B-1180-7C9A396A10E1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 5.9469210836940964e-16 20 5.9469210836940964e-16
		 40 0.1503912579399144 60 5.9469210836940964e-16;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "joint11_scaleX";
	rename -uid "91F7E0C1-1947-3748-65B8-31BDAE733825";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 20 1 40 1 60 1;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "joint11_scaleY";
	rename -uid "CDED5B77-064C-A21D-35BE-AB83F97BE801";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 20 1 40 1 60 1;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "joint11_scaleZ";
	rename -uid "99CA7172-2F41-14E0-60E7-72BCA05A155E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 20 1 40 1 60 1;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "joint2_rotateX";
	rename -uid "6321C783-114B-C6A0-3192-BB9F8E9A57E5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 2.9111375621054696e-15 20 -21.740205355728136
		 40 -8.7938639010712425 60 2.9111375621054696e-15 90 8.8242788070488746e-15 110 2.9111375621054696e-15;
	setAttr -s 6 ".kit[3:5]"  1 18 1;
	setAttr -s 6 ".kot[3:5]"  1 18 1;
	setAttr -s 6 ".kix[3:5]"  1 1 1;
	setAttr -s 6 ".kiy[3:5]"  0 0 0;
	setAttr -s 6 ".kox[3:5]"  1 1 1;
	setAttr -s 6 ".koy[3:5]"  0 0 0;
createNode animCurveTA -n "joint2_rotateY";
	rename -uid "EB9E12F9-1744-FA24-5767-7592E12B1BB6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 20 -78.831047187645453 40 -25.394834509871892
		 60 0 90 -20.000000000000057 110 0;
	setAttr -s 6 ".kit[3:5]"  1 18 1;
	setAttr -s 6 ".kot[3:5]"  1 18 1;
	setAttr -s 6 ".kix[3:5]"  1 1 1;
	setAttr -s 6 ".kiy[3:5]"  0 0 0;
	setAttr -s 6 ".kox[3:5]"  1 1 1;
	setAttr -s 6 ".koy[3:5]"  0 0 0;
createNode animCurveTA -n "joint2_rotateZ";
	rename -uid "367617CB-EF48-E1BE-87B8-20B6905E883A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 6.2400664865414369e-15 20 26.302486345343148
		 40 12.219066376102163 60 6.2400664865414369e-15 90 4.9032812892550605e-15 110 6.2400664865414369e-15;
	setAttr -s 6 ".kit[3:5]"  1 18 1;
	setAttr -s 6 ".kot[3:5]"  1 18 1;
	setAttr -s 6 ".kix[3:5]"  1 1 1;
	setAttr -s 6 ".kiy[3:5]"  0 0 0;
	setAttr -s 6 ".kox[3:5]"  1 1 1;
	setAttr -s 6 ".koy[3:5]"  0 0 0;
createNode animCurveTU -n "joint2_visibility";
	rename -uid "46C2177F-B447-7550-D545-72A576CEBFE7";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1 20 1 40 1 60 1 90 1 110 1;
	setAttr -s 6 ".kit[0:5]"  9 9 9 1 9 1;
	setAttr -s 6 ".kix[3:5]"  1 1 1;
	setAttr -s 6 ".kiy[3:5]"  0 0 0;
createNode animCurveTL -n "joint2_translateX";
	rename -uid "941F7B7A-A746-E437-4FC2-B7BF429311B5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 2.2735018374794813 20 2.2735018374794813
		 40 2.2735018374794813 60 2.2735018374794813 90 2.2735018374794813 110 2.2735018374794813;
	setAttr -s 6 ".kit[3:5]"  1 18 1;
	setAttr -s 6 ".kot[3:5]"  1 18 1;
	setAttr -s 6 ".kix[3:5]"  1 1 1;
	setAttr -s 6 ".kiy[3:5]"  0 0 0;
	setAttr -s 6 ".kox[3:5]"  1 1 1;
	setAttr -s 6 ".koy[3:5]"  0 0 0;
createNode animCurveTL -n "joint2_translateY";
	rename -uid "C5EEFE99-FC44-E4C1-3801-33BB431B1505";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 -6.3143934525555778e-16 20 -6.3143934525555778e-16
		 40 -6.3143934525555778e-16 60 -6.3143934525555778e-16 90 -6.3143934525555778e-16
		 110 -6.3143934525555778e-16;
	setAttr -s 6 ".kit[3:5]"  1 18 1;
	setAttr -s 6 ".kot[3:5]"  1 18 1;
	setAttr -s 6 ".kix[3:5]"  1 1 1;
	setAttr -s 6 ".kiy[3:5]"  0 0 0;
	setAttr -s 6 ".kox[3:5]"  1 1 1;
	setAttr -s 6 ".koy[3:5]"  0 0 0;
createNode animCurveTL -n "joint2_translateZ";
	rename -uid "DD0F78C2-BA40-D513-CF19-63AA1D88DB87";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 -2.7842367481248729e-16 20 -2.7842367481248729e-16
		 40 -2.7842367481248729e-16 60 -2.7842367481248729e-16 90 -2.7842367481248729e-16
		 110 -2.7842367481248729e-16;
	setAttr -s 6 ".kit[3:5]"  1 18 1;
	setAttr -s 6 ".kot[3:5]"  1 18 1;
	setAttr -s 6 ".kix[3:5]"  1 1 1;
	setAttr -s 6 ".kiy[3:5]"  0 0 0;
	setAttr -s 6 ".kox[3:5]"  1 1 1;
	setAttr -s 6 ".koy[3:5]"  0 0 0;
createNode animCurveTU -n "joint2_scaleX";
	rename -uid "EE31D3C0-1A47-5AB4-B535-EFB97F8AC854";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1 20 1 40 1 60 1 90 1 110 1;
	setAttr -s 6 ".kit[3:5]"  1 18 1;
	setAttr -s 6 ".kot[3:5]"  1 18 1;
	setAttr -s 6 ".kix[3:5]"  1 1 1;
	setAttr -s 6 ".kiy[3:5]"  0 0 0;
	setAttr -s 6 ".kox[3:5]"  1 1 1;
	setAttr -s 6 ".koy[3:5]"  0 0 0;
createNode animCurveTU -n "joint2_scaleY";
	rename -uid "67A945B4-004C-6F13-0A53-F1858991D81D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1 20 1 40 1 60 1 90 1 110 1;
	setAttr -s 6 ".kit[3:5]"  1 18 1;
	setAttr -s 6 ".kot[3:5]"  1 18 1;
	setAttr -s 6 ".kix[3:5]"  1 1 1;
	setAttr -s 6 ".kiy[3:5]"  0 0 0;
	setAttr -s 6 ".kox[3:5]"  1 1 1;
	setAttr -s 6 ".koy[3:5]"  0 0 0;
createNode animCurveTU -n "joint2_scaleZ";
	rename -uid "0A5F6AA0-3E40-69C2-6937-CABA79469AD7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1 20 1 40 1 60 1 90 1 110 1;
	setAttr -s 6 ".kit[3:5]"  1 18 1;
	setAttr -s 6 ".kot[3:5]"  1 18 1;
	setAttr -s 6 ".kix[3:5]"  1 1 1;
	setAttr -s 6 ".kiy[3:5]"  0 0 0;
	setAttr -s 6 ".kox[3:5]"  1 1 1;
	setAttr -s 6 ".koy[3:5]"  0 0 0;
createNode animCurveTA -n "joint1_rotateX";
	rename -uid "2ADD85BC-D247-DA12-11EA-47A1AF1496FE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 20 -7.9497452323672464 60 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "joint1_rotateY";
	rename -uid "8CDE7E32-624E-5850-C2EB-BFAD0C1633C1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 20 72.353468707217289 60 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "joint1_rotateZ";
	rename -uid "69BC1D14-8F48-0DBE-717E-4B852DDEA728";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 20 -13.177591749229666 60 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "joint1_visibility";
	rename -uid "968526F8-7942-8C4A-F510-19A5FEE99D2A";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 20 1 60 1;
	setAttr -s 3 ".kit[0:2]"  9 9 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTL -n "joint1_translateX";
	rename -uid "78A42672-5541-528F-FF73-4F8AB71C609B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.78134440055345455 20 0.81990443589922635
		 60 0.78134440055345455;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "joint1_translateY";
	rename -uid "8F0D4D06-164C-FCC4-4291-038F1282C0B4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -0.178 20 0.10011563503259845 60 -0.178;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "joint1_translateZ";
	rename -uid "33073CA3-104B-9FEB-A063-30AD00152288";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 20 0.44074322079853873 60 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "joint1_scaleX";
	rename -uid "DAF99F7A-F148-7822-1FA3-F595F8CD1959";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 20 1 60 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "joint1_scaleY";
	rename -uid "655E4A84-F44B-9098-F0D3-909894C76AAF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 20 1 60 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "joint1_scaleZ";
	rename -uid "860E64C7-B246-5800-32BA-8EA46BDCA55E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 20 1 60 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "joint5_rotateX";
	rename -uid "06919966-A745-BD74-818B-108009176713";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 10 0 30 2.1333505746954833e-15 40 1.0666752873477418e-15
		 50 0 60 0 70 0 90 2.1333505746954833e-15 110 0;
	setAttr -s 9 ".kit[0:8]"  18 1 1 18 18 1 1 1 
		1;
	setAttr -s 9 ".kot[0:8]"  18 1 1 18 18 1 1 1 
		1;
	setAttr -s 9 ".kix[1:8]"  1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[1:8]"  0 0 0 0 0 0 0 0;
	setAttr -s 9 ".kox[1:8]"  1 1 1 1 1 1 1 1;
	setAttr -s 9 ".koy[1:8]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "joint5_rotateY";
	rename -uid "14B3F377-8342-FDD3-6891-DDA675D2BE61";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 10 0 30 -30.000000000000178 40 -15.000000000000091
		 50 0 60 0 70 0 90 -30.000000000000178 110 0;
	setAttr -s 9 ".kit[0:8]"  18 1 1 18 18 1 1 1 
		1;
	setAttr -s 9 ".kot[0:8]"  18 1 1 18 18 1 1 1 
		1;
	setAttr -s 9 ".kix[1:8]"  1 1 0.8467329740524292 1 1 1 1 1;
	setAttr -s 9 ".kiy[1:8]"  0 0 0.53201806545257568 0 0 0 0 0;
	setAttr -s 9 ".kox[1:8]"  1 1 0.8467329740524292 1 1 1 1 1;
	setAttr -s 9 ".koy[1:8]"  0 0 0.53201806545257568 0 0 0 0 0;
createNode animCurveTA -n "joint5_rotateZ";
	rename -uid "C3C22BF4-4B49-A129-C3C2-D090C21739A2";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 10 0 30 -7.1571345680840489e-15 40 -3.5785672840420245e-15
		 50 0 60 0 70 0 90 -7.1571345680840489e-15 110 0;
	setAttr -s 9 ".kit[0:8]"  18 1 1 18 18 1 1 1 
		1;
	setAttr -s 9 ".kot[0:8]"  18 1 1 18 18 1 1 1 
		1;
	setAttr -s 9 ".kix[1:8]"  1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[1:8]"  0 0 0 0 0 0 0 0;
	setAttr -s 9 ".kox[1:8]"  1 1 1 1 1 1 1 1;
	setAttr -s 9 ".koy[1:8]"  0 0 0 0 0 0 0 0;
createNode animCurveTU -n "joint5_visibility";
	rename -uid "8F664E08-C641-C7E8-E287-59A06B38AD79";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 1 10 1 30 1 40 1 50 1 60 1 70 1 90 1 110 1;
	setAttr -s 9 ".kit[0:8]"  9 1 1 9 9 1 1 1 
		1;
	setAttr -s 9 ".kix[1:8]"  1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[1:8]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "joint5_translateX";
	rename -uid "149769EB-2A4F-6A68-AA2B-12924B4CBAAF";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 -0.012803574074294083 10 -0.012803574074294083
		 30 -0.012803574074286977 40 -0.01280357407429053 50 -0.012803574074294083 60 -0.012803574074294083
		 70 -0.012803574074294083 90 -0.012803574074286977 110 -0.012803574074294083;
	setAttr -s 9 ".kit[0:8]"  18 1 1 18 18 1 1 1 
		1;
	setAttr -s 9 ".kot[0:8]"  18 1 1 18 18 1 1 1 
		1;
	setAttr -s 9 ".kix[1:8]"  1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[1:8]"  0 0 0 0 0 0 0 0;
	setAttr -s 9 ".kox[1:8]"  1 1 1 1 1 1 1 1;
	setAttr -s 9 ".koy[1:8]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "joint5_translateY";
	rename -uid "438ACA7D-5849-96C8-FE5C-B0A6BF4584F4";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 9.6528599742051391 10 9.6528599742051391
		 30 8.8413553208607318 40 9.470589287057221 50 9.6528599742051391 60 9.6528599742051391
		 70 9.6528599742051391 90 8.8413553208607318 110 9.6528599742051391;
	setAttr -s 9 ".kit[0:8]"  18 1 1 18 18 1 1 1 
		1;
	setAttr -s 9 ".kot[0:8]"  18 1 1 18 18 1 1 1 
		1;
	setAttr -s 9 ".kix[1:8]"  1 1 0.71642768383026123 1 1 1 1 1;
	setAttr -s 9 ".kiy[1:8]"  0 0 0.69766134023666382 0 0 0 0 0;
	setAttr -s 9 ".kox[1:8]"  1 1 0.71642768383026123 1 1 1 1 1;
	setAttr -s 9 ".koy[1:8]"  0 0 0.69766134023666382 0 0 0 0 0;
createNode animCurveTL -n "joint5_translateZ";
	rename -uid "6223A4FA-F946-6C90-5F08-93AAA3EAD1A2";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 10 0 30 4.7681782788231644 40 2.3840891394115822
		 50 0 60 0 70 0 90 4.7681782788231644 110 0;
	setAttr -s 9 ".kit[0:8]"  18 1 1 18 18 1 1 1 
		1;
	setAttr -s 9 ".kot[0:8]"  18 1 1 18 18 1 1 1 
		1;
	setAttr -s 9 ".kix[1:8]"  1 1 0.17216023802757263 1 1 1 1 1;
	setAttr -s 9 ".kiy[1:8]"  0 0 -0.98506897687911987 0 0 0 0 0;
	setAttr -s 9 ".kox[1:8]"  1 1 0.17216023802757263 1 1 1 1 1;
	setAttr -s 9 ".koy[1:8]"  0 0 -0.98506897687911987 0 0 0 0 0;
createNode animCurveTU -n "joint5_scaleX";
	rename -uid "598505BE-D845-B8AC-67ED-92B488D6109C";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 1 10 1 30 1 40 1 50 1 60 1 70 1 90 1 110 1;
	setAttr -s 9 ".kit[0:8]"  18 1 1 18 18 1 1 1 
		1;
	setAttr -s 9 ".kot[0:8]"  18 1 1 18 18 1 1 1 
		1;
	setAttr -s 9 ".kix[1:8]"  1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[1:8]"  0 0 0 0 0 0 0 0;
	setAttr -s 9 ".kox[1:8]"  1 1 1 1 1 1 1 1;
	setAttr -s 9 ".koy[1:8]"  0 0 0 0 0 0 0 0;
createNode animCurveTU -n "joint5_scaleY";
	rename -uid "85B3C842-704F-7F6E-8525-F5A9DBE62B79";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 1 10 1 30 1 40 1 50 1 60 1 70 1 90 1 110 1;
	setAttr -s 9 ".kit[0:8]"  18 1 1 18 18 1 1 1 
		1;
	setAttr -s 9 ".kot[0:8]"  18 1 1 18 18 1 1 1 
		1;
	setAttr -s 9 ".kix[1:8]"  1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[1:8]"  0 0 0 0 0 0 0 0;
	setAttr -s 9 ".kox[1:8]"  1 1 1 1 1 1 1 1;
	setAttr -s 9 ".koy[1:8]"  0 0 0 0 0 0 0 0;
createNode animCurveTU -n "joint5_scaleZ";
	rename -uid "1EC27174-694C-C674-00D3-FFB0F4454E4E";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 1 10 1 30 1 40 1 50 1 60 1 70 1 90 1 110 1;
	setAttr -s 9 ".kit[0:8]"  18 1 1 18 18 1 1 1 
		1;
	setAttr -s 9 ".kot[0:8]"  18 1 1 18 18 1 1 1 
		1;
	setAttr -s 9 ".kix[1:8]"  1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[1:8]"  0 0 0 0 0 0 0 0;
	setAttr -s 9 ".kox[1:8]"  1 1 1 1 1 1 1 1;
	setAttr -s 9 ".koy[1:8]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "joint8_translateX";
	rename -uid "29E7876D-764E-0A63-3D65-CEBA2BF4CBDC";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  60 -0.75573742592570614 80 -0.756 120 -0.75573742592570614;
	setAttr -s 3 ".kit[0:2]"  18 1 1;
	setAttr -s 3 ".kot[0:2]"  18 1 1;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "joint8_translateY";
	rename -uid "41F95FCE-A343-BA66-A8F8-68B2DA9073A9";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  60 -0.17793087864116419 80 -0.178 120 -0.17793087864116419;
	setAttr -s 3 ".kit[0:2]"  18 1 1;
	setAttr -s 3 ".kot[0:2]"  18 1 1;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "joint8_translateZ";
	rename -uid "587AC628-C940-A25C-893B-928B0CB7ECCE";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  60 1.1590669900987371e-16 80 0 120 1.1590669900987371e-16;
	setAttr -s 3 ".kit[0:2]"  18 1 1;
	setAttr -s 3 ".kot[0:2]"  18 1 1;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "joint8_visibility";
	rename -uid "AFBAE7D9-6049-4CDD-5380-4DB8D10BBD76";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  60 1 80 1 120 1;
	setAttr -s 3 ".kit[0:2]"  9 1 1;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "joint8_rotateX";
	rename -uid "60B41366-964C-1923-C696-D59F02BB06E0";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  60 0 80 -7.9497452323672464 120 0;
	setAttr -s 3 ".kit[0:2]"  18 1 1;
	setAttr -s 3 ".kot[0:2]"  18 1 1;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "joint8_rotateY";
	rename -uid "9DA9C7AE-944C-3AB2-2055-1991E0BA6C20";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  60 0 80 72.353468707217289 120 0;
	setAttr -s 3 ".kit[0:2]"  18 1 1;
	setAttr -s 3 ".kot[0:2]"  18 1 1;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "joint8_rotateZ";
	rename -uid "233253E4-6E49-B535-B634-1FBF356832E7";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  60 0 80 -13.177591749229666 120 0;
	setAttr -s 3 ".kit[0:2]"  18 1 1;
	setAttr -s 3 ".kot[0:2]"  18 1 1;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "joint8_scaleX";
	rename -uid "B6C52972-D043-EA24-1750-C68A8AC7424C";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  60 1 80 1 120 1;
	setAttr -s 3 ".kit[0:2]"  18 1 1;
	setAttr -s 3 ".kot[0:2]"  18 1 1;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "joint8_scaleY";
	rename -uid "1B2E88BE-064C-BEA3-4D79-689950D8F0E9";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  60 1 80 1 120 1;
	setAttr -s 3 ".kit[0:2]"  18 1 1;
	setAttr -s 3 ".kot[0:2]"  18 1 1;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "joint8_scaleZ";
	rename -uid "8418D5AE-B149-054F-2D75-D69C918587F9";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  60 1 80 1 120 1;
	setAttr -s 3 ".kit[0:2]"  18 1 1;
	setAttr -s 3 ".kot[0:2]"  18 1 1;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "joint9_rotateX";
	rename -uid "CA42BBB5-EE4F-7E09-45C3-72B1CD1BF5DD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 30 -1.4903045594836968e-14 60 0 80 10.166670047682391
		 120 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[4]"  1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[4]"  1;
	setAttr -s 5 ".koy[4]"  0;
createNode animCurveTA -n "joint9_rotateY";
	rename -uid "35BE1B63-C848-F8DA-23A7-6B88538B591B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 30 -19.999999999999918 60 0 80 -79.655583124436205
		 120 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[4]"  1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[4]"  1;
	setAttr -s 5 ".koy[4]"  0;
createNode animCurveTA -n "joint9_rotateZ";
	rename -uid "DE3693DA-424A-AAFE-235A-53B762150D88";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 30 -7.0610505592493512e-15 60 0 80 -2.6041374434470037
		 120 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[4]"  1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[4]"  1;
	setAttr -s 5 ".koy[4]"  0;
createNode animCurveTU -n "joint9_visibility";
	rename -uid "3AC164EE-9A4D-730A-E676-E4BD3384C76B";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 30 1 60 1 80 1 120 1;
	setAttr -s 5 ".kit[0:4]"  9 9 9 9 1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
createNode animCurveTL -n "joint9_translateX";
	rename -uid "1E3976C5-4B48-C32B-D541-D9A485B989C2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 -2.2734965441002415 30 -2.2734965441002415
		 60 -2.2734965441002415 80 -2.2734965441002415 120 -2.2734965441002415;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[4]"  1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[4]"  1;
	setAttr -s 5 ".koy[4]"  0;
createNode animCurveTL -n "joint9_translateY";
	rename -uid "7C5FA61A-3F4A-5DDF-5E32-29B366208CFD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 -5.1134513789907743e-07 30 -5.1134513789907743e-07
		 60 -5.1134513789907743e-07 80 -5.1134513789907743e-07 120 -5.1134513789907743e-07;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[4]"  1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[4]"  1;
	setAttr -s 5 ".koy[4]"  0;
createNode animCurveTL -n "joint9_translateZ";
	rename -uid "B22D8D8E-E448-773B-17E8-E598A5E52229";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 30 0 60 0 80 0 120 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[4]"  1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[4]"  1;
	setAttr -s 5 ".koy[4]"  0;
createNode animCurveTU -n "joint9_scaleX";
	rename -uid "F72BC0D5-8F44-41F0-BD55-A78C23F7BB8C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 30 1 60 1 80 1 120 1;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[4]"  1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[4]"  1;
	setAttr -s 5 ".koy[4]"  0;
createNode animCurveTU -n "joint9_scaleY";
	rename -uid "3FC64008-AD4D-A470-1BC7-16A68861893D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 30 1 60 1 80 1 120 1;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[4]"  1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[4]"  1;
	setAttr -s 5 ".koy[4]"  0;
createNode animCurveTU -n "joint9_scaleZ";
	rename -uid "94FB2EA5-F34E-B089-DB08-699C465CAA86";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 30 1 60 1 80 1 120 1;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[4]"  1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[4]"  1;
	setAttr -s 5 ".koy[4]"  0;
createNode animCurveTL -n "joint3_translateX";
	rename -uid "0F879D51-3140-3549-74F7-579503C62F61";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 2.9411552182509308 30 2.9411552182509308
		 60 2.9411552182509308;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "joint3_translateY";
	rename -uid "86991BCC-A041-9749-ADE7-C4BB8A8895E4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -1.3893201095317461e-14 30 -1.3893201095317461e-14
		 60 -1.3893201095317461e-14;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "joint3_translateZ";
	rename -uid "79A702EB-AA47-F7C4-4C82-3FA7AB22B7C5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -3.6011371993960966e-16 30 -3.6011371993960966e-16
		 60 -3.6011371993960966e-16;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "joint3_visibility";
	rename -uid "AB557ECB-6949-6845-170C-C782A7F9D827";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 30 1 60 1;
	setAttr -s 3 ".kit[0:2]"  9 9 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "joint3_rotateX";
	rename -uid "7607648C-7146-7245-7A1E-6A85AFFF8329";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 30 -40.024650777488155 60 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "joint3_rotateY";
	rename -uid "FEA6EA2A-E444-E290-E73C-929D2D932EFF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 30 -3.5366920144952729 60 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "joint3_rotateZ";
	rename -uid "DDD50AE5-254F-955F-1110-809A41AF259F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 30 -0.62064254743556568 60 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "joint3_scaleX";
	rename -uid "CC49BCAB-2F43-A313-2957-E1AF826A5040";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 30 1 60 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "joint3_scaleY";
	rename -uid "F0D2624F-E14E-0D48-019E-C49D2472B0E9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 30 1 60 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "joint3_scaleZ";
	rename -uid "BB21FDB3-6F42-EAD4-261E-989FB0650CE2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 30 1 60 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "joint10_rotateX";
	rename -uid "DA97AC31-F146-A564-C00A-D19ABFCF7BA0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  60 7.9513867036587919e-16 90 -40.009562769580143
		 120 7.9513867036587919e-16;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "joint10_rotateY";
	rename -uid "0EDCDF56-DB4A-D374-207D-B789BCAFA529";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  60 0 90 3.6609911299991031 120 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "joint10_rotateZ";
	rename -uid "85AD8F76-7143-CB17-6F3E-80803B36AE2B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  60 0 90 -0.0052085662612483732 120 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "joint10_visibility";
	rename -uid "D0D3EB52-714F-E808-A8D0-90880F5E9B1C";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  60 1 90 1 120 1;
	setAttr -s 3 ".kit[0:2]"  9 9 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTL -n "joint10_translateX";
	rename -uid "29E58E2E-0849-ABDB-2567-50BBB847302B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  60 -2.9411569999999982 90 -2.9411569999999982
		 120 -2.9411569999999982;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "joint10_translateY";
	rename -uid "3932E939-AA42-FB5E-0B3D-2A9CB7CB272A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  60 1.3877787807814457e-14 90 1.3877787807814457e-14
		 120 1.3877787807814457e-14;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "joint10_translateZ";
	rename -uid "CB7BEAA2-6047-A582-C2CE-88A3DA2A18CC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  60 4.9303800000000003e-32 90 4.9303800000000003e-32
		 120 4.9303800000000003e-32;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "joint10_scaleX";
	rename -uid "BFD663C7-BF4D-C813-07E8-1182CA92B469";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  60 1 90 1 120 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "joint10_scaleY";
	rename -uid "46CD652D-4047-C559-D933-8AA41BAC1225";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  60 1 90 1 120 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "joint10_scaleZ";
	rename -uid "9F2F6A45-D34E-D4DD-BDD9-D199A24C51A8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  60 1 90 1 120 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
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
connectAttr "skinCluster1.og[0]" "pSphere3Shape.i";
connectAttr "groupId1.id" "pSphere3Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pSphere3Shape.iog.og[0].gco";
connectAttr "groupId3.id" "pSphere3Shape.iog.og[4].gid";
connectAttr "tweakSet1.mwc" "pSphere3Shape.iog.og[4].gco";
connectAttr "skinCluster1GroupId.id" "pSphere3Shape.iog.og[5].gid";
connectAttr "skinCluster1Set.mwc" "pSphere3Shape.iog.og[5].gco";
connectAttr "tweak1.vl[0].vt[0]" "pSphere3Shape.twl";
connectAttr "polyMergeVert10.out" "pSphere3ShapeOrig.i";
connectAttr "joint5_scaleX.o" "joint5.sx";
connectAttr "joint5_scaleY.o" "joint5.sy";
connectAttr "joint5_scaleZ.o" "joint5.sz";
connectAttr "joint5_translateX.o" "joint5.tx";
connectAttr "joint5_translateY.o" "joint5.ty";
connectAttr "joint5_translateZ.o" "joint5.tz";
connectAttr "joint5_visibility.o" "joint5.v";
connectAttr "joint5_rotateX.o" "joint5.rx";
connectAttr "joint5_rotateY.o" "joint5.ry";
connectAttr "joint5_rotateZ.o" "joint5.rz";
connectAttr "joint5.s" "joint6.is";
connectAttr "joint6.s" "joint7.is";
connectAttr "joint1_scaleX.o" "joint1.sx";
connectAttr "joint1_scaleY.o" "joint1.sy";
connectAttr "joint1_scaleZ.o" "joint1.sz";
connectAttr "joint7.s" "joint1.is";
connectAttr "joint1_translateX.o" "joint1.tx";
connectAttr "joint1_translateY.o" "joint1.ty";
connectAttr "joint1_translateZ.o" "joint1.tz";
connectAttr "joint1_visibility.o" "joint1.v";
connectAttr "joint1_rotateX.o" "joint1.rx";
connectAttr "joint1_rotateY.o" "joint1.ry";
connectAttr "joint1_rotateZ.o" "joint1.rz";
connectAttr "joint1.s" "joint2.is";
connectAttr "joint2_scaleX.o" "joint2.sx";
connectAttr "joint2_scaleY.o" "joint2.sy";
connectAttr "joint2_scaleZ.o" "joint2.sz";
connectAttr "joint2_rotateX.o" "joint2.rx";
connectAttr "joint2_rotateY.o" "joint2.ry";
connectAttr "joint2_rotateZ.o" "joint2.rz";
connectAttr "joint2_visibility.o" "joint2.v";
connectAttr "joint2_translateX.o" "joint2.tx";
connectAttr "joint2_translateY.o" "joint2.ty";
connectAttr "joint2_translateZ.o" "joint2.tz";
connectAttr "joint2.s" "joint3.is";
connectAttr "joint3_rotateX.o" "joint3.rx";
connectAttr "joint3_rotateY.o" "joint3.ry";
connectAttr "joint3_rotateZ.o" "joint3.rz";
connectAttr "joint3_visibility.o" "joint3.v";
connectAttr "joint3_translateX.o" "joint3.tx";
connectAttr "joint3_translateY.o" "joint3.ty";
connectAttr "joint3_translateZ.o" "joint3.tz";
connectAttr "joint3_scaleX.o" "joint3.sx";
connectAttr "joint3_scaleY.o" "joint3.sy";
connectAttr "joint3_scaleZ.o" "joint3.sz";
connectAttr "joint8_scaleX.o" "joint8.sx";
connectAttr "joint8_scaleY.o" "joint8.sy";
connectAttr "joint8_scaleZ.o" "joint8.sz";
connectAttr "joint7.s" "joint8.is";
connectAttr "joint8_rotateX.o" "joint8.rx";
connectAttr "joint8_rotateY.o" "joint8.ry";
connectAttr "joint8_rotateZ.o" "joint8.rz";
connectAttr "joint8_visibility.o" "joint8.v";
connectAttr "joint8_translateX.o" "joint8.tx";
connectAttr "joint8_translateY.o" "joint8.ty";
connectAttr "joint8_translateZ.o" "joint8.tz";
connectAttr "joint8.s" "joint9.is";
connectAttr "joint9_scaleX.o" "joint9.sx";
connectAttr "joint9_scaleY.o" "joint9.sy";
connectAttr "joint9_scaleZ.o" "joint9.sz";
connectAttr "joint9_rotateX.o" "joint9.rx";
connectAttr "joint9_rotateY.o" "joint9.ry";
connectAttr "joint9_rotateZ.o" "joint9.rz";
connectAttr "joint9_visibility.o" "joint9.v";
connectAttr "joint9_translateX.o" "joint9.tx";
connectAttr "joint9_translateY.o" "joint9.ty";
connectAttr "joint9_translateZ.o" "joint9.tz";
connectAttr "joint9.s" "joint10.is";
connectAttr "joint10_rotateX.o" "joint10.rx";
connectAttr "joint10_rotateY.o" "joint10.ry";
connectAttr "joint10_rotateZ.o" "joint10.rz";
connectAttr "joint10_visibility.o" "joint10.v";
connectAttr "joint10_translateX.o" "joint10.tx";
connectAttr "joint10_translateY.o" "joint10.ty";
connectAttr "joint10_translateZ.o" "joint10.tz";
connectAttr "joint10_scaleX.o" "joint10.sx";
connectAttr "joint10_scaleY.o" "joint10.sy";
connectAttr "joint10_scaleZ.o" "joint10.sz";
connectAttr "joint5.s" "joint11.is";
connectAttr "joint11_scaleX.o" "joint11.sx";
connectAttr "joint11_scaleY.o" "joint11.sy";
connectAttr "joint11_scaleZ.o" "joint11.sz";
connectAttr "joint11_rotateX.o" "joint11.rx";
connectAttr "joint11_rotateY.o" "joint11.ry";
connectAttr "joint11_rotateZ.o" "joint11.rz";
connectAttr "joint11_visibility.o" "joint11.v";
connectAttr "joint11_translateX.o" "joint11.tx";
connectAttr "joint11_translateY.o" "joint11.ty";
connectAttr "joint11_translateZ.o" "joint11.tz";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "groupParts1.og" "polyMirror1.ip";
connectAttr "pSphere3Shape.wm" "polyMirror1.mp";
connectAttr "polySurfaceShape1.o" "groupParts1.ig";
connectAttr "groupId1.id" "groupParts1.gi";
connectAttr "polyTweak1.out" "polyMergeVert1.ip";
connectAttr "pSphere3Shape.wm" "polyMergeVert1.mp";
connectAttr "polyMirror1.out" "polyTweak1.ip";
connectAttr "polyTweak2.out" "polyMergeVert2.ip";
connectAttr "pSphere3Shape.wm" "polyMergeVert2.mp";
connectAttr "polyMergeVert1.out" "polyTweak2.ip";
connectAttr "polyTweak3.out" "polyMergeVert3.ip";
connectAttr "pSphere3Shape.wm" "polyMergeVert3.mp";
connectAttr "polyMergeVert2.out" "polyTweak3.ip";
connectAttr "polyTweak4.out" "polyMergeVert4.ip";
connectAttr "pSphere3Shape.wm" "polyMergeVert4.mp";
connectAttr "polyMergeVert3.out" "polyTweak4.ip";
connectAttr "polyTweak5.out" "polyMergeVert5.ip";
connectAttr "pSphere3Shape.wm" "polyMergeVert5.mp";
connectAttr "polyMergeVert4.out" "polyTweak5.ip";
connectAttr "polyTweak6.out" "polyMergeVert6.ip";
connectAttr "pSphere3Shape.wm" "polyMergeVert6.mp";
connectAttr "polyMergeVert5.out" "polyTweak6.ip";
connectAttr "polyTweak7.out" "polyMergeVert7.ip";
connectAttr "pSphere3Shape.wm" "polyMergeVert7.mp";
connectAttr "polyMergeVert6.out" "polyTweak7.ip";
connectAttr "polyTweak8.out" "polyMergeVert8.ip";
connectAttr "pSphere3Shape.wm" "polyMergeVert8.mp";
connectAttr "polyMergeVert7.out" "polyTweak8.ip";
connectAttr "polyTweak9.out" "polyMergeVert9.ip";
connectAttr "pSphere3Shape.wm" "polyMergeVert9.mp";
connectAttr "polyMergeVert8.out" "polyTweak9.ip";
connectAttr "polyTweak10.out" "polyMergeVert10.ip";
connectAttr "pSphere3Shape.wm" "polyMergeVert10.mp";
connectAttr "polyMergeVert9.out" "polyTweak10.ip";
connectAttr "groupParts3.og" "tweak1.ip[0].ig";
connectAttr "groupId3.id" "tweak1.ip[0].gi";
connectAttr "groupId3.msg" "tweakSet1.gn" -na;
connectAttr "pSphere3Shape.iog.og[4]" "tweakSet1.dsm" -na;
connectAttr "tweak1.msg" "tweakSet1.ub[0]";
connectAttr "pSphere3ShapeOrig.w" "groupParts3.ig";
connectAttr "groupId3.id" "groupParts3.gi";
connectAttr "skinCluster1GroupParts.og" "skinCluster1.ip[0].ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1.ip[0].gi";
connectAttr "bindPose1.msg" "skinCluster1.bp";
connectAttr "joint5.wm" "skinCluster1.ma[0]";
connectAttr "joint6.wm" "skinCluster1.ma[1]";
connectAttr "joint7.wm" "skinCluster1.ma[2]";
connectAttr "joint1.wm" "skinCluster1.ma[3]";
connectAttr "joint2.wm" "skinCluster1.ma[4]";
connectAttr "joint3.wm" "skinCluster1.ma[5]";
connectAttr "joint8.wm" "skinCluster1.ma[6]";
connectAttr "joint9.wm" "skinCluster1.ma[7]";
connectAttr "joint10.wm" "skinCluster1.ma[8]";
connectAttr "joint11.wm" "skinCluster1.ma[9]";
connectAttr "joint5.liw" "skinCluster1.lw[0]";
connectAttr "joint6.liw" "skinCluster1.lw[1]";
connectAttr "joint7.liw" "skinCluster1.lw[2]";
connectAttr "joint1.liw" "skinCluster1.lw[3]";
connectAttr "joint2.liw" "skinCluster1.lw[4]";
connectAttr "joint3.liw" "skinCluster1.lw[5]";
connectAttr "joint8.liw" "skinCluster1.lw[6]";
connectAttr "joint9.liw" "skinCluster1.lw[7]";
connectAttr "joint10.liw" "skinCluster1.lw[8]";
connectAttr "joint11.liw" "skinCluster1.lw[9]";
connectAttr "joint5.obcc" "skinCluster1.ifcl[0]";
connectAttr "joint6.obcc" "skinCluster1.ifcl[1]";
connectAttr "joint7.obcc" "skinCluster1.ifcl[2]";
connectAttr "joint1.obcc" "skinCluster1.ifcl[3]";
connectAttr "joint2.obcc" "skinCluster1.ifcl[4]";
connectAttr "joint3.obcc" "skinCluster1.ifcl[5]";
connectAttr "joint8.obcc" "skinCluster1.ifcl[6]";
connectAttr "joint9.obcc" "skinCluster1.ifcl[7]";
connectAttr "joint10.obcc" "skinCluster1.ifcl[8]";
connectAttr "joint11.obcc" "skinCluster1.ifcl[9]";
connectAttr "skinBinding1.uw" "skinCluster1.bc";
connectAttr "skinCluster1GroupId.msg" "skinCluster1Set.gn" -na;
connectAttr "pSphere3Shape.iog.og[5]" "skinCluster1Set.dsm" -na;
connectAttr "skinCluster1.msg" "skinCluster1Set.ub[0]";
connectAttr "tweak1.og[0]" "skinCluster1GroupParts.ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1GroupParts.gi";
connectAttr "joint5.msg" "bindPose1.m[0]";
connectAttr "joint6.msg" "bindPose1.m[1]";
connectAttr "joint7.msg" "bindPose1.m[2]";
connectAttr "joint1.msg" "bindPose1.m[3]";
connectAttr "joint2.msg" "bindPose1.m[4]";
connectAttr "joint3.msg" "bindPose1.m[5]";
connectAttr "joint8.msg" "bindPose1.m[6]";
connectAttr "joint9.msg" "bindPose1.m[7]";
connectAttr "joint10.msg" "bindPose1.m[8]";
connectAttr "joint11.msg" "bindPose1.m[9]";
connectAttr "bindPose1.w" "bindPose1.p[0]";
connectAttr "bindPose1.m[0]" "bindPose1.p[1]";
connectAttr "bindPose1.m[1]" "bindPose1.p[2]";
connectAttr "bindPose1.m[2]" "bindPose1.p[3]";
connectAttr "bindPose1.m[3]" "bindPose1.p[4]";
connectAttr "bindPose1.m[4]" "bindPose1.p[5]";
connectAttr "bindPose1.m[2]" "bindPose1.p[6]";
connectAttr "bindPose1.m[6]" "bindPose1.p[7]";
connectAttr "bindPose1.m[7]" "bindPose1.p[8]";
connectAttr "bindPose1.m[0]" "bindPose1.p[9]";
connectAttr "joint5.bps" "bindPose1.wm[0]";
connectAttr "joint6.bps" "bindPose1.wm[1]";
connectAttr "joint7.bps" "bindPose1.wm[2]";
connectAttr "joint1.bps" "bindPose1.wm[3]";
connectAttr "joint2.bps" "bindPose1.wm[4]";
connectAttr "joint3.bps" "bindPose1.wm[5]";
connectAttr "joint8.bps" "bindPose1.wm[6]";
connectAttr "joint9.bps" "bindPose1.wm[7]";
connectAttr "joint10.bps" "bindPose1.wm[8]";
connectAttr "joint11.bps" "bindPose1.wm[9]";
connectAttr "skinCluster1GroupParts.og" "skinBinding1.ig";
connectAttr "joint5.wm" "skinBinding1.pm[0]";
connectAttr "joint6.wm" "skinBinding1.pm[1]";
connectAttr "joint7.wm" "skinBinding1.pm[2]";
connectAttr "joint1.wm" "skinBinding1.pm[3]";
connectAttr "joint2.wm" "skinBinding1.pm[4]";
connectAttr "joint3.wm" "skinBinding1.pm[5]";
connectAttr "joint8.wm" "skinBinding1.pm[6]";
connectAttr "joint9.wm" "skinBinding1.pm[7]";
connectAttr "joint10.wm" "skinBinding1.pm[8]";
connectAttr "joint11.wm" "skinBinding1.pm[9]";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pSphere3Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId1.msg" ":initialShadingGroup.gn" -na;
// End of dadanim.ma
