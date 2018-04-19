//Maya ASCII 2018 scene
//Name: guitarPlantPetal 2.ma
//Last modified: Thu, Apr 19, 2018 03:32:16 PM
//Codeset: UTF-8
requires maya "2018";
currentUnit -l centimeter -a degree -t show;
fileInfo "application" "maya";
fileInfo "product" "Maya 2018";
fileInfo "version" "2018";
fileInfo "cutIdentifier" "201706261615-f9658c4cfc";
fileInfo "osv" "Mac OS X 10.12.6";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "78C24C93-F843-1BA1-26CA-0D8E66E28DBF";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 2.6264331523177864 5.6314402786040834 6.8420922842625487 ;
	setAttr ".r" -type "double3" -37.538352728733017 380.99999999998147 -8.5170880600950974e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "B739547C-EA46-5E1A-05F9-AEAE9912DA32";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 9.2425914948939614;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "90DF0CBE-DF4F-B596-F108-4DBFF796CA82";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "E6DD8C26-9948-E9B7-9D1D-EBBAF9A65008";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 12.181795440957618;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "23E35DD6-5944-0831-C756-1089AACB9754";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "1DC5D86A-8540-F459-E350-8C8EA65F6677";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "384B4AA2-A642-3D30-7D1B-858B3DEE7D2C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "34DAB482-F74A-6DBE-2527-9D9B6C9F30BC";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "pTorus1";
	rename -uid "7E360688-684B-9A6C-4E37-1E8EF8144F5E";
	setAttr ".rp" -type "double3" -3.5762786865234375e-07 3.725289869257201e-09 3.9042922743148516 ;
	setAttr ".rpt" -type "double3" 0 -0.031406949022731556 -0.031406941572151847 ;
	setAttr ".sp" -type "double3" -3.5762786865234375e-07 3.725289869257201e-09 2.5345255455589637 ;
	setAttr ".spt" -type "double3" 0 0 1.369766728755891 ;
createNode mesh -n "pTorusShape1" -p "pTorus1";
	rename -uid "E1126E4F-284E-E245-8C5F-85BB3785E309";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.95000016689300537 0.5625 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 99 ".uvst[0].uvsp[0:98]" -type "float2" 0.45000005 1 0.50000006
		 1 0.55000007 1 0.60000008 1 0.6500001 1 0.70000011 1 0.75000012 1 0.80000013 1 0.85000014
		 1 0.90000015 1 0.95000017 1 0.45000005 0.875 0.50000006 0.875 0.55000007 0.875 0.60000008
		 0.875 0.6500001 0.875 0.70000011 0.875 0.75000012 0.875 0.80000013 0.875 0.85000014
		 0.875 0.90000015 0.875 0.95000017 0.875 0.45000005 0.75 0.50000006 0.75 0.55000007
		 0.75 0.60000008 0.75 0.6500001 0.75 0.70000011 0.75 0.75000012 0.75 0.80000013 0.75
		 0.85000014 0.75 0.90000015 0.75 0.95000017 0.75 0.45000005 0.625 0.50000006 0.625
		 0.55000007 0.625 0.60000008 0.625 0.6500001 0.625 0.70000011 0.625 0.75000012 0.625
		 0.80000013 0.625 0.85000014 0.625 0.90000015 0.625 0.95000017 0.625 0.45000005 0.5
		 0.50000006 0.5 0.55000007 0.5 0.60000008 0.5 0.6500001 0.5 0.70000011 0.5 0.75000012
		 0.5 0.80000013 0.5 0.85000014 0.5 0.90000015 0.5 0.95000017 0.5 0.45000005 0.375
		 0.50000006 0.375 0.55000007 0.375 0.60000008 0.375 0.6500001 0.375 0.70000011 0.375
		 0.75000012 0.375 0.80000013 0.375 0.85000014 0.375 0.90000015 0.375 0.95000017 0.375
		 0.45000005 0.25 0.50000006 0.25 0.55000007 0.25 0.60000008 0.25 0.6500001 0.25 0.70000011
		 0.25 0.75000012 0.25 0.80000013 0.25 0.85000014 0.25 0.90000015 0.25 0.95000017 0.25
		 0.45000005 0.125 0.50000006 0.125 0.55000007 0.125 0.60000008 0.125 0.6500001 0.125
		 0.70000011 0.125 0.75000012 0.125 0.80000013 0.125 0.85000014 0.125 0.90000015 0.125
		 0.95000017 0.125 0.45000005 0 0.50000006 0 0.55000007 0 0.60000008 0 0.6500001 0
		 0.70000011 0 0.75000012 0 0.80000013 0 0.85000014 0 0.90000015 0 0.95000017 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 72 ".pt";
	setAttr ".pt[4]" -type "float3" 0.74163347 0 0 ;
	setAttr ".pt[5]" -type "float3" -4.3524746e-08 0 0 ;
	setAttr ".pt[6]" -type "float3" -0.74163347 0 0 ;
	setAttr ".pt[15]" -type "float3" 0.7506842 0 0 ;
	setAttr ".pt[16]" -type "float3" -4.2630838e-08 0 0 ;
	setAttr ".pt[17]" -type "float3" -0.75068426 0 0 ;
	setAttr ".pt[26]" -type "float3" 0.77253479 0 0 ;
	setAttr ".pt[27]" -type "float3" -4.0483634e-08 0 0 ;
	setAttr ".pt[28]" -type "float3" -0.77253479 0 0 ;
	setAttr ".pt[37]" -type "float3" 0.79438543 0 0 ;
	setAttr ".pt[38]" -type "float3" -3.8352542e-08 0 0 ;
	setAttr ".pt[39]" -type "float3" -0.79438543 0 0 ;
	setAttr ".pt[48]" -type "float3" 0.80343616 0 0 ;
	setAttr ".pt[49]" -type "float3" -3.7474742e-08 0 0 ;
	setAttr ".pt[50]" -type "float3" -0.80343616 0 0 ;
	setAttr ".pt[59]" -type "float3" 0.79438543 0 0 ;
	setAttr ".pt[60]" -type "float3" -3.8352542e-08 0 0 ;
	setAttr ".pt[61]" -type "float3" -0.79438543 0 0 ;
	setAttr ".pt[70]" -type "float3" 0.77253479 0 0 ;
	setAttr ".pt[71]" -type "float3" -4.0483634e-08 0 0 ;
	setAttr ".pt[72]" -type "float3" -0.77253479 0 0 ;
	setAttr ".pt[81]" -type "float3" 0.7506842 0 0 ;
	setAttr ".pt[82]" -type "float3" -4.2630838e-08 0 0 ;
	setAttr ".pt[83]" -type "float3" -0.75068426 0 0 ;
	setAttr -s 88 ".vt[0:87]"  -2.40000057 0 0 -2.28253627 0 0.74164099
		 -1.94164133 0 1.41068494 -1.41068494 0 1.94164121 -0.74164099 0 2.28253603 -7.1525577e-08 0 2.40000033
		 0.74164075 0 2.28253603 1.41068459 0 1.94164097 1.94164085 0 1.41068482 2.28253579 0 0.74164081
		 2.4000001 0 0 -2.42928982 0.070710681 0 -2.31039214 0.070710681 0.75069183 -1.9653368 0.070710681 1.42790067
		 -1.42790067 0.070710681 1.96533668 -0.75069183 0.070710681 2.3103919 -7.2398464e-08 0.070710681 2.42928958
		 0.75069165 0.070710681 2.31039166 1.42790043 0.070710681 1.96533656 1.96533632 0.070710681 1.42790055
		 2.31039143 0.070710681 0.75069171 2.42928934 0.070710681 0 -2.50000048 0.099999994 0
		 -2.37764192 0.099999994 0.77254266 -2.022542953 0.099999994 1.46946335 -1.46946335 0.099999994 2.022542715
		 -0.77254266 0.099999994 2.37764168 -7.4505806e-08 0.099999994 2.50000024 0.77254242 0.099999994 2.37764144
		 1.46946311 0.099999994 2.022542715 2.022542477 0.099999994 1.46946323 2.37764144 0.099999994 0.77254248
		 2.5 0.099999994 0 -2.57071137 0.070710674 0 -2.44489169 0.070710674 0.79439348 -2.079749107 0.070710674 1.51102614
		 -1.51102614 0.070710674 2.079748869 -0.79439348 0.070710674 2.44489145 -7.6613148e-08 0.070710674 2.5707109
		 0.79439324 0.070710674 2.44489145 1.51102579 0.070710674 2.079748869 2.079748631 0.070710674 1.51102591
		 2.44489121 0.070710674 0.7943933 2.57071066 0.070710674 0 -2.60000062 0 0 -2.47274756 0 0.80344433
		 -2.10344458 0 1.52824187 -1.52824187 0 2.10344434 -0.80344433 0 2.47274733 -7.7486035e-08 0 2.60000014
		 0.80344409 0 2.47274709 1.52824163 0 2.10344434 2.1034441 0 1.52824175 2.47274685 0 0.80344421
		 2.5999999 0 0 -2.57071137 -0.070710674 0 -2.44489169 -0.070710674 0.79439348 -2.079749107 -0.070710674 1.51102614
		 -1.51102614 -0.070710674 2.079748869 -0.79439348 -0.070710674 2.44489145 -7.6613148e-08 -0.070710674 2.5707109
		 0.79439324 -0.070710674 2.44489145 1.51102579 -0.070710674 2.079748869 2.079748631 -0.070710674 1.51102591
		 2.44489121 -0.070710674 0.7943933 2.57071066 -0.070710674 0 -2.50000048 -0.099999987 0
		 -2.37764192 -0.099999987 0.77254266 -2.022542953 -0.099999987 1.46946335 -1.46946335 -0.099999987 2.022542715
		 -0.77254266 -0.099999987 2.37764168 -7.4505806e-08 -0.099999987 2.50000024 0.77254242 -0.099999987 2.37764144
		 1.46946311 -0.099999987 2.022542715 2.022542477 -0.099999987 1.46946323 2.37764144 -0.099999987 0.77254248
		 2.5 -0.099999987 0 -2.42928982 -0.070710674 0 -2.31039214 -0.070710674 0.75069183
		 -1.9653368 -0.070710674 1.42790067 -1.42790067 -0.070710674 1.96533668 -0.75069183 -0.070710674 2.3103919
		 -7.2398464e-08 -0.070710674 2.42928958 0.75069165 -0.070710674 2.31039166 1.42790043 -0.070710674 1.96533656
		 1.96533632 -0.070710674 1.42790055 2.31039143 -0.070710674 0.75069171 2.42928934 -0.070710674 0;
	setAttr -s 168 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0 7 8 0 8 9 0
		 9 10 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0 18 19 0 19 20 0 20 21 0
		 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0 29 30 0 30 31 0 31 32 0 33 34 0
		 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 40 0 40 41 0 41 42 0 42 43 0 44 45 0 45 46 0
		 46 47 0 47 48 0 48 49 0 49 50 0 50 51 0 51 52 0 52 53 0 53 54 0 55 56 0 56 57 0 57 58 0
		 58 59 0 59 60 0 60 61 0 61 62 0 62 63 0 63 64 0 64 65 0 66 67 0 67 68 0 68 69 0 69 70 0
		 70 71 0 71 72 0 72 73 0 73 74 0 74 75 0 75 76 0 77 78 0 78 79 0 79 80 0 80 81 0 81 82 0
		 82 83 0 83 84 0 84 85 0 85 86 0 86 87 0 0 11 0 1 12 1 2 13 1 3 14 1 4 15 1 5 16 1
		 6 17 1 7 18 1 8 19 1 9 20 1 10 21 0 11 22 0 12 23 1 13 24 1 14 25 1 15 26 1 16 27 1
		 17 28 1 18 29 1 19 30 1 20 31 1 21 32 0 22 33 0 23 34 1 24 35 1 25 36 1 26 37 1 27 38 1
		 28 39 1 29 40 1 30 41 1 31 42 1 32 43 0 33 44 0 34 45 1 35 46 1 36 47 1 37 48 1 38 49 1
		 39 50 1 40 51 1 41 52 1 42 53 1 43 54 0 44 55 0 45 56 1 46 57 1 47 58 1 48 59 1 49 60 1
		 50 61 1 51 62 1 52 63 1 53 64 1 54 65 0 55 66 0 56 67 1 57 68 1 58 69 1 59 70 1 60 71 1
		 61 72 1 62 73 1 63 74 1 64 75 1 65 76 0 66 77 0 67 78 1 68 79 1 69 80 1 70 81 1 71 82 1
		 72 83 1 73 84 1 74 85 1 75 86 1 76 87 0 77 0 0 78 1 1 79 2 1 80 3 1 81 4 1 82 5 1
		 83 6 1 84 7 1 85 8 1;
	setAttr ".ed[166:167]" 86 9 1 87 10 0;
	setAttr -s 82 -ch 336 ".fc[0:81]" -type "polyFaces" 
		f 4 -1 80 10 -82
		mu 0 4 1 0 11 12
		f 4 -2 81 11 -83
		mu 0 4 2 1 12 13
		f 4 -3 82 12 -84
		mu 0 4 3 2 13 14
		f 4 -4 83 13 -85
		mu 0 4 4 3 14 15
		f 4 -5 84 14 -86
		mu 0 4 5 4 15 16
		f 4 -6 85 15 -87
		mu 0 4 6 5 16 17
		f 4 -7 86 16 -88
		mu 0 4 7 6 17 18
		f 4 -8 87 17 -89
		mu 0 4 8 7 18 19
		f 4 -9 88 18 -90
		mu 0 4 9 8 19 20
		f 4 -10 89 19 -91
		mu 0 4 10 9 20 21
		f 4 -11 91 20 -93
		mu 0 4 12 11 22 23
		f 4 -12 92 21 -94
		mu 0 4 13 12 23 24
		f 4 -13 93 22 -95
		mu 0 4 14 13 24 25
		f 4 -14 94 23 -96
		mu 0 4 15 14 25 26
		f 4 -15 95 24 -97
		mu 0 4 16 15 26 27
		f 4 -16 96 25 -98
		mu 0 4 17 16 27 28
		f 4 -17 97 26 -99
		mu 0 4 18 17 28 29
		f 4 -18 98 27 -100
		mu 0 4 19 18 29 30
		f 4 -19 99 28 -101
		mu 0 4 20 19 30 31
		f 4 -20 100 29 -102
		mu 0 4 21 20 31 32
		f 4 -21 102 30 -104
		mu 0 4 23 22 33 34
		f 4 -22 103 31 -105
		mu 0 4 24 23 34 35
		f 4 -23 104 32 -106
		mu 0 4 25 24 35 36
		f 4 -24 105 33 -107
		mu 0 4 26 25 36 37
		f 4 -25 106 34 -108
		mu 0 4 27 26 37 38
		f 4 -26 107 35 -109
		mu 0 4 28 27 38 39
		f 4 -27 108 36 -110
		mu 0 4 29 28 39 40
		f 4 -28 109 37 -111
		mu 0 4 30 29 40 41
		f 4 -29 110 38 -112
		mu 0 4 31 30 41 42
		f 4 -30 111 39 -113
		mu 0 4 32 31 42 43
		f 4 -31 113 40 -115
		mu 0 4 34 33 44 45
		f 4 -32 114 41 -116
		mu 0 4 35 34 45 46
		f 4 -33 115 42 -117
		mu 0 4 36 35 46 47
		f 4 -34 116 43 -118
		mu 0 4 37 36 47 48
		f 4 -35 117 44 -119
		mu 0 4 38 37 48 49
		f 4 -36 118 45 -120
		mu 0 4 39 38 49 50
		f 4 -37 119 46 -121
		mu 0 4 40 39 50 51
		f 4 -38 120 47 -122
		mu 0 4 41 40 51 52
		f 4 -39 121 48 -123
		mu 0 4 42 41 52 53
		f 4 -40 122 49 -124
		mu 0 4 43 42 53 54
		f 4 -41 124 50 -126
		mu 0 4 45 44 55 56
		f 4 -42 125 51 -127
		mu 0 4 46 45 56 57
		f 4 -43 126 52 -128
		mu 0 4 47 46 57 58
		f 4 -44 127 53 -129
		mu 0 4 48 47 58 59
		f 4 -45 128 54 -130
		mu 0 4 49 48 59 60
		f 4 -46 129 55 -131
		mu 0 4 50 49 60 61
		f 4 -47 130 56 -132
		mu 0 4 51 50 61 62
		f 4 -48 131 57 -133
		mu 0 4 52 51 62 63
		f 4 -49 132 58 -134
		mu 0 4 53 52 63 64
		f 4 -50 133 59 -135
		mu 0 4 54 53 64 65
		f 4 -51 135 60 -137
		mu 0 4 56 55 66 67
		f 4 -52 136 61 -138
		mu 0 4 57 56 67 68
		f 4 -53 137 62 -139
		mu 0 4 58 57 68 69
		f 4 -54 138 63 -140
		mu 0 4 59 58 69 70
		f 4 -55 139 64 -141
		mu 0 4 60 59 70 71
		f 4 -56 140 65 -142
		mu 0 4 61 60 71 72
		f 4 -57 141 66 -143
		mu 0 4 62 61 72 73
		f 4 -58 142 67 -144
		mu 0 4 63 62 73 74
		f 4 -59 143 68 -145
		mu 0 4 64 63 74 75
		f 4 -60 144 69 -146
		mu 0 4 65 64 75 76
		f 4 -61 146 70 -148
		mu 0 4 67 66 77 78
		f 4 -62 147 71 -149
		mu 0 4 68 67 78 79
		f 4 -63 148 72 -150
		mu 0 4 69 68 79 80
		f 4 -64 149 73 -151
		mu 0 4 70 69 80 81
		f 4 -65 150 74 -152
		mu 0 4 71 70 81 82
		f 4 -66 151 75 -153
		mu 0 4 72 71 82 83
		f 4 -67 152 76 -154
		mu 0 4 73 72 83 84
		f 4 -68 153 77 -155
		mu 0 4 74 73 84 85
		f 4 -69 154 78 -156
		mu 0 4 75 74 85 86
		f 4 -70 155 79 -157
		mu 0 4 76 75 86 87
		f 4 -71 157 0 -159
		mu 0 4 78 77 88 89
		f 4 -72 158 1 -160
		mu 0 4 79 78 89 90
		f 4 -73 159 2 -161
		mu 0 4 80 79 90 91
		f 4 -74 160 3 -162
		mu 0 4 81 80 91 92
		f 4 -75 161 4 -163
		mu 0 4 82 81 92 93
		f 4 -76 162 5 -164
		mu 0 4 83 82 93 94
		f 4 -77 163 6 -165
		mu 0 4 84 83 94 95
		f 4 -78 164 7 -166
		mu 0 4 85 84 95 96
		f 4 -79 165 8 -167
		mu 0 4 86 85 96 97
		f 4 -80 166 9 -168
		mu 0 4 87 86 97 98
		f 8 101 112 123 134 145 156 167 90
		mu 0 8 21 32 43 54 65 76 87 10
		f 8 -81 -158 -147 -136 -125 -114 -103 -92
		mu 0 8 11 88 77 66 55 44 33 22;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCone1";
	rename -uid "BA796032-B447-BC0E-4779-E681397DEEB9";
createNode mesh -n "pConeShape1" -p "pCone1";
	rename -uid "8774205E-904D-7F2A-730D-B3B9BB44748F";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.25 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".pt[5]" -type "float3"  0 -0.47499481 -3.1454972e-17;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "FFE57516-254A-9CA2-7C11-7F9AD5873DE9";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "1D1D45EA-614C-787B-4733-F48E08A79EF8";
createNode displayLayer -n "defaultLayer";
	rename -uid "D463988D-B445-1F42-E8BF-1BA16382E49B";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "034E2C35-F74B-CC44-90E2-59AC72E29D6A";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "512FB122-7042-2DE0-F261-AE9CF2F9BDEF";
	setAttr ".g" yes;
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "193B6ABD-4C44-2FFA-2876-5DBD0C87DDF6";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "943F31AD-8149-320F-D308-E689E6A723D0";
createNode animCurveTL -n "pTorus1_translateX";
	rename -uid "A56C65EA-4C45-C87C-94C2-39984C500BFA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 1 0 2 0 28.8 0 38.4 0 48 0 57.6 0 62.4 0
		 67.2 0 71.04 0 80 0 81 0 100 0;
	setAttr -s 13 ".kit[0:12]"  1 1 18 1 18 1 18 18 
		18 18 1 18 18;
	setAttr -s 13 ".kot[0:12]"  1 1 18 1 18 1 18 18 
		18 18 1 18 18;
	setAttr -s 13 ".kix[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".koy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "pTorus1_translateY";
	rename -uid "DF8BE258-064A-6624-9903-7599319F401B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 1 0 2 0 28.8 0 38.4 0 48 0 57.6 0 62.4 0
		 67.2 0 71.04 0 80 0 81 0 100 0;
	setAttr -s 13 ".kit[0:12]"  1 1 18 1 18 1 18 18 
		18 18 1 18 18;
	setAttr -s 13 ".kot[0:12]"  1 1 18 1 18 1 18 18 
		18 18 1 18 18;
	setAttr -s 13 ".kix[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".koy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "pTorus1_translateZ";
	rename -uid "62D80C4B-124E-5DB5-F0D5-0590358A5E10";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 -3.8108912848887808 1 -3.8108912848887808
		 2 -3.8108912848887808 28.8 -3.8108912848887808 38.4 -3.8108912848887808 48 -3.8108912848887808
		 57.6 -3.8108912848887808 62.4 -3.8108912848887808 67.2 -3.8108912848887808 71.04 -3.8108912848887808
		 80 -3.8108912848887808 81 -3.8108912848887808 100 -3.8108912848887808;
	setAttr -s 13 ".kit[0:12]"  1 1 18 1 18 1 18 18 
		18 18 1 18 18;
	setAttr -s 13 ".kot[0:12]"  1 1 18 1 18 1 18 18 
		18 18 1 18 18;
	setAttr -s 13 ".kix[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".koy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "pTorus1_visibility";
	rename -uid "445483DF-0242-0DBD-530C-998292EC1018";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 28.8 1 38.4 1 48 1 57.6 1 62.4 1
		 67.2 1 71.04 1 80 1 81 1 100 1;
	setAttr -s 13 ".kit[0:12]"  1 1 9 1 9 1 9 9 
		9 9 1 9 9;
	setAttr -s 13 ".kix[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "pTorus1_rotateX";
	rename -uid "3047CC77-A14E-347F-BA15-E0928E9E97EF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 90 1 90 2 90 28.8 119.31709749945169 38.4 63.657557621016892
		 48 101.44682236368629 57.6 84.906288469844455 62.4 98.281966035534694 67.2 84.269539457234444
		 71.04 93.295649744932305 80 90 81 90 100 90;
	setAttr -s 13 ".kit[0:12]"  1 1 18 1 18 1 18 18 
		18 18 1 18 18;
	setAttr -s 13 ".kot[0:12]"  1 1 18 1 18 1 18 18 
		18 18 1 18 18;
	setAttr -s 13 ".kix[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".koy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "pTorus1_rotateY";
	rename -uid "50AEBE28-FF4B-A542-B225-C389EE6EE30A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 1 0 2 0 28.8 0 38.4 -9.0924847163974576
		 48 6.0117534425823846 57.6 7.2064178522724172 62.4 4.3474685454130251 67.2 -1.8879284545863169
		 71.04 4.4990839389797639 80 0 81 0 100 270;
	setAttr -s 13 ".kit[0:12]"  1 1 18 1 18 1 18 18 
		18 18 1 18 18;
	setAttr -s 13 ".kot[0:12]"  1 1 18 1 18 1 18 18 
		18 18 1 18 18;
	setAttr -s 13 ".kix[0:12]"  1 1 1 1 1 1 1 0.78329628790315642 1 1 1 
		1 1;
	setAttr -s 13 ".kiy[0:12]"  0 0 0 0 0 0 0 -0.62164855453635171 0 0 
		0 0 0;
	setAttr -s 13 ".kox[0:12]"  1 1 1 1 1 1 1 0.78329628790315653 1 1 1 
		1 1;
	setAttr -s 13 ".koy[0:12]"  0 0 0 0 0 0 0 -0.62164855453635171 0 0 
		0 0 0;
createNode animCurveTA -n "pTorus1_rotateZ";
	rename -uid "2978919B-B347-AF73-CBBF-B1875231F10C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 1 0 2 0 28.8 0 38.4 0 48 3.9976788591007887e-16
		 57.6 8.0146975552405167e-16 62.4 0 67.2 0.46535406876366714 71.04 -0.34302492159900327
		 80 0 81 0 100 0;
	setAttr -s 13 ".kit[0:12]"  1 1 18 1 18 1 18 18 
		18 18 1 18 18;
	setAttr -s 13 ".kot[0:12]"  1 1 18 1 18 1 18 18 
		18 18 1 18 18;
	setAttr -s 13 ".kix[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".koy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "pTorus1_scaleX";
	rename -uid "FC215E8B-4543-9CE7-C545-B99A9CA87321";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 28.8 0.91542794404686478 38.4 1.1505817515915846
		 48 1 57.6 1 62.4 1 67.2 1 71.04 1 80 1 81 1 100 0.57028402130155365;
	setAttr -s 13 ".kit[0:12]"  1 1 18 1 18 1 18 18 
		18 18 1 18 18;
	setAttr -s 13 ".kot[0:12]"  1 1 18 1 18 1 18 18 
		18 18 1 18 18;
	setAttr -s 13 ".kix[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".koy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "pTorus1_scaleY";
	rename -uid "0CCE60F0-A943-57AD-5B7C-2BBCB0982BE0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 2 1 28.8 1 38.4 1.1505817515915846
		 48 1 57.6 1 62.4 1 67.2 1 71.04 1 80 1 81 1 100 0.57028402130155365;
	setAttr -s 13 ".kit[0:12]"  1 1 18 1 18 1 18 18 
		18 18 1 18 18;
	setAttr -s 13 ".kot[0:12]"  1 1 18 1 18 1 18 18 
		18 18 1 18 18;
	setAttr -s 13 ".kix[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".koy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "pTorus1_scaleZ";
	rename -uid "2EEBD48A-3747-0965-481B-31A9B1665B05";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 1.540443054975716 1 1.540443054975716
		 2 1.540443054975716 28.8 1.4101646187376913 38.4 1.7724056684210514 48 1.540443054975716
		 57.6 1.540443054975716 62.4 1.540443054975716 67.2 1.540443054975716 71.04 1.540443054975716
		 80 1.540443054975716 81 1.540443054975716 100 0.87849005997760088;
	setAttr -s 13 ".kit[0:12]"  1 1 18 1 18 1 18 18 
		18 18 1 18 18;
	setAttr -s 13 ".kot[0:12]"  1 1 18 1 18 1 18 18 
		18 18 1 18 18;
	setAttr -s 13 ".kix[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".koy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "BC615140-CD4D-9001-C606-BFB843499596";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n"
		+ "            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n"
		+ "            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n"
		+ "            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n"
		+ "            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n"
		+ "            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n"
		+ "            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n"
		+ "            -width 313\n            -height 381\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n"
		+ "            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n"
		+ "            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n"
		+ "            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n"
		+ "            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n"
		+ "                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n"
		+ "                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 2\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n"
		+ "                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n"
		+ "                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n"
		+ "                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n"
		+ "                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n"
		+ "                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n"
		+ "                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -highlightConnections 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n"
		+ "                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"vertical2\\\" -ps 1 50 100 -ps 2 49 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Outliner\")) \n\t\t\t\t\t\"outlinerPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -showShapes 0\\n    -showAssignedMaterials 0\\n    -showTimeEditor 1\\n    -showReferenceNodes 0\\n    -showReferenceMembers 0\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -organizeByClip 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -showAssets 1\\n    -showContainedOnly 1\\n    -showPublishedAsConnected 0\\n    -showParentContainers 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -isSet 0\\n    -isSetMember 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    -ignoreHiddenAttribute 0\\n    -ignoreOutlinerColor 0\\n    -renderFilterVisible 0\\n    -renderFilterIndex 0\\n    -selectionOrder \\\"chronological\\\" \\n    -expandAttribute 0\\n    $editorName\"\n"
		+ "\t\t\t\t\t\"outlinerPanel -edit -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -showShapes 0\\n    -showAssignedMaterials 0\\n    -showTimeEditor 1\\n    -showReferenceNodes 0\\n    -showReferenceMembers 0\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -organizeByClip 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -showAssets 1\\n    -showContainedOnly 1\\n    -showPublishedAsConnected 0\\n    -showParentContainers 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -isSet 0\\n    -isSetMember 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    -ignoreHiddenAttribute 0\\n    -ignoreOutlinerColor 0\\n    -renderFilterVisible 0\\n    -renderFilterIndex 0\\n    -selectionOrder \\\"chronological\\\" \\n    -expandAttribute 0\\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 313\\n    -height 381\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 313\\n    -height 381\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "1BBAB0F7-AB42-422E-EDC5-2AA5B8BCA1AF";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 110 -ast 0 -aet 400 ";
	setAttr ".st" 6;
createNode animCurveTL -n "pTorusShape1_pnts_1__pntx";
	rename -uid "00C4F2D0-9449-4E86-07E7-E18BE3F4F732";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.70309031009674072 1 0.70309031009674072
		 80 0.70309031009674072 81 0.70309031009674072 100 1.9611413478851318;
createNode animCurveTL -n "pTorusShape1_pnts_1__pnty";
	rename -uid "5510211A-CC4C-A7E3-C33E-E0BB3FB72FAB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 1 0 80 0 81 0 100 2.9271278734199768e-09;
createNode animCurveTL -n "pTorusShape1_pnts_1__pntz";
	rename -uid "624A83BF-294F-6337-1CF5-55BEAD4B2D69";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -2.9802322387695312e-08 1 -2.9802322387695312e-08
		 80 -2.9802322387695312e-08 81 -2.9802322387695312e-08 100 -2.9802322387695312e-08;
createNode animCurveTL -n "pTorusShape1_pnts_2__pntx";
	rename -uid "082B56B8-5F43-4278-4522-DD846B4615B4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.1495083570480347 1 1.1495083570480347
		 80 1.1495083570480347 81 1.1495083570480347 100 1.397274374961853;
createNode animCurveTL -n "pTorusShape1_pnts_2__pnty";
	rename -uid "DFED3604-9747-ABD2-97B1-689604A0706D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 1 0 80 0 81 0 100 1.1494563079139652e-09;
createNode animCurveTL -n "pTorusShape1_pnts_2__pntz";
	rename -uid "88C1FB0A-8446-EE07-1532-388520ED6855";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -2.2351741790771484e-08 1 -2.2351741790771484e-08
		 80 -2.2351741790771484e-08 81 -2.2351741790771484e-08 100 -2.2351741790771484e-08;
createNode animCurveTL -n "pTorusShape1_pnts_3__pntx";
	rename -uid "523DE312-BA47-31A1-B533-79A8454F16E0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.2590694427490234 1 1.2590694427490234
		 80 1.2590694427490234 81 1.2590694427490234 100 1.2642298936843872;
createNode animCurveTL -n "pTorusShape1_pnts_3__pnty";
	rename -uid "AC82BD5E-604C-827E-FFF6-E6BB9C3378E4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 1 0 80 0 81 0 100 1.2507483937440611e-10;
createNode animCurveTL -n "pTorusShape1_pnts_3__pntz";
	rename -uid "97A0600B-AA48-F123-EFFB-63A904798C89";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 1 0 80 0 81 0 100 0;
createNode animCurveTL -n "pTorusShape1_pnts_7__pntx";
	rename -uid "962CB769-0A4C-66B6-4E48-26BDB4FA161A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -1.2590693235397339 1 -1.2590693235397339
		 80 -1.2590693235397339 81 -1.2590693235397339 100 -1.2642297744750977;
createNode animCurveTL -n "pTorusShape1_pnts_7__pnty";
	rename -uid "E95C6503-7D46-C357-C9BD-659F97EC4752";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 1 0 80 0 81 0 100 1.2507483937440611e-10;
createNode animCurveTL -n "pTorusShape1_pnts_7__pntz";
	rename -uid "FE19D27F-0946-A3AA-0157-5887573C4B59";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 1 0 80 0 81 0 100 0;
createNode animCurveTL -n "pTorusShape1_pnts_8__pntx";
	rename -uid "A8A1D5D3-F842-20A7-BEFF-C592B01E6ABC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -1.1495082378387451 1 -1.1495082378387451
		 80 -1.1495082378387451 81 -1.1495082378387451 100 -1.397274374961853;
createNode animCurveTL -n "pTorusShape1_pnts_8__pnty";
	rename -uid "5DF10E33-9342-4F63-B508-BCBEF6F3A852";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 1 0 80 0 81 0 100 1.1494563079139652e-09;
createNode animCurveTL -n "pTorusShape1_pnts_8__pntz";
	rename -uid "D81E6B71-6241-EB57-2AEB-8CB319CE7452";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -2.2351741790771484e-08 1 -2.2351741790771484e-08
		 80 -2.2351741790771484e-08 81 -2.2351741790771484e-08 100 -2.2351741790771484e-08;
createNode animCurveTL -n "pTorusShape1_pnts_9__pntx";
	rename -uid "1A9903E6-D545-257E-3B30-3384A5177AC4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.70309048891067505 1 -0.70309048891067505
		 80 -0.70309048891067505 81 -0.70309048891067505 100 -1.9611415863037109;
createNode animCurveTL -n "pTorusShape1_pnts_9__pnty";
	rename -uid "137411C8-A943-478A-7059-A6818FFBEE4A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 1 0 80 0 81 0 100 2.9271278734199768e-09;
createNode animCurveTL -n "pTorusShape1_pnts_9__pntz";
	rename -uid "88E8618F-7A49-6C7B-894A-87BCE50E8666";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -5.9604644775390625e-08 1 -5.9604644775390625e-08
		 80 -5.9604644775390625e-08 81 -5.9604644775390625e-08 100 -5.9604644775390625e-08;
createNode animCurveTL -n "pTorusShape1_pnts_12__pntx";
	rename -uid "15888FAD-314A-5C01-7AF3-23B1308F79AA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.71497732400894165 1 0.71497732400894165
		 80 0.71497732400894165 81 0.71497732400894165 100 1.9801520109176636;
createNode animCurveTL -n "pTorusShape1_pnts_12__pnty";
	rename -uid "4363E4DB-2640-7813-FEB4-C1805532B1FB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 1 0 80 0 81 0 100 -0.055315889418125153;
createNode animCurveTL -n "pTorusShape1_pnts_12__pntz";
	rename -uid "E98FC48E-8448-B0FC-6A39-DA9800043684";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 2.9802322387695312e-08 1 2.9802322387695312e-08
		 80 2.9802322387695312e-08 81 2.9802322387695312e-08 100 2.9802322387695312e-08;
createNode animCurveTL -n "pTorusShape1_pnts_13__pntx";
	rename -uid "97A57B71-484D-846E-B5F8-45A278C8B535";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.1680735349655151 1 1.1680735349655151
		 80 1.1680735349655151 81 1.1680735349655151 100 1.4116531610488892;
createNode animCurveTL -n "pTorusShape1_pnts_13__pnty";
	rename -uid "AD06FF95-1B4C-5D1F-1339-30B4AE33933A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 1 0 80 0 81 0 100 -0.021311391144990921;
createNode animCurveTL -n "pTorusShape1_pnts_13__pntz";
	rename -uid "03094490-2A44-8CFC-9E0A-C683F41795F2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -2.2351741790771484e-08 1 -2.2351741790771484e-08
		 80 -2.2351741790771484e-08 81 -2.2351741790771484e-08 100 -2.2351741790771484e-08;
createNode animCurveTL -n "pTorusShape1_pnts_14__pntx";
	rename -uid "952633A0-EA42-2CE8-A212-53B4A6A7CCD7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.2762062549591064 1 1.2762062549591064
		 80 1.2762062549591064 81 1.2762062549591064 100 1.280735969543457;
createNode animCurveTL -n "pTorusShape1_pnts_14__pnty";
	rename -uid "B97CFB8E-C249-5FD5-32CA-8DB75278430A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 1 0 80 0 81 0 100 -0.0020829907152801752;
createNode animCurveTL -n "pTorusShape1_pnts_14__pntz";
	rename -uid "484D7F9B-4E42-D270-D69B-B3B0513E9E54";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 1 0 80 0 81 0 100 0;
createNode animCurveTL -n "pTorusShape1_pnts_18__pntx";
	rename -uid "CDB03CFF-824F-5EDC-9C64-ADAB145D16CA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -1.2762062549591064 1 -1.2762062549591064
		 80 -1.2762062549591064 81 -1.2762062549591064 100 -1.280735969543457;
createNode animCurveTL -n "pTorusShape1_pnts_18__pnty";
	rename -uid "C00748EE-2C4C-166F-817E-21877648926C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 1 0 80 0 81 0 100 -0.0020829907152801752;
createNode animCurveTL -n "pTorusShape1_pnts_18__pntz";
	rename -uid "5D5251CA-2A4C-CC49-7A1F-95918754ECFD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 1 0 80 0 81 0 100 0;
createNode animCurveTL -n "pTorusShape1_pnts_19__pntx";
	rename -uid "2EDF7AEF-F54E-A8B3-EAF4-7BBA865F3DBA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -1.1680734157562256 1 -1.1680734157562256
		 80 -1.1680734157562256 81 -1.1680734157562256 100 -1.4116530418395996;
createNode animCurveTL -n "pTorusShape1_pnts_19__pnty";
	rename -uid "DB2416BF-034D-2ED4-1A6F-6AB08FF13B05";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 1 0 80 0 81 0 100 -0.021311391144990921;
createNode animCurveTL -n "pTorusShape1_pnts_19__pntz";
	rename -uid "D6B235AC-1747-412A-3CC0-C4BC140EC7E1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -2.2351741790771484e-08 1 -2.2351741790771484e-08
		 80 -2.2351741790771484e-08 81 -2.2351741790771484e-08 100 -2.2351741790771484e-08;
createNode animCurveTL -n "pTorusShape1_pnts_20__pntx";
	rename -uid "E949D711-E042-3E28-F811-1D9BBC51EF32";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.71497732400894165 1 -0.71497732400894165
		 80 -0.71497732400894165 81 -0.71497732400894165 100 -1.9801520109176636;
createNode animCurveTL -n "pTorusShape1_pnts_20__pnty";
	rename -uid "98AED0B4-E34F-7D61-3D64-47805D069071";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 1 0 80 0 81 0 100 -0.055315889418125153;
createNode animCurveTL -n "pTorusShape1_pnts_20__pntz";
	rename -uid "06786436-2646-F1DC-F523-54AD789F51C8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 5.9604644775390625e-08 1 5.9604644775390625e-08
		 80 5.9604644775390625e-08 81 5.9604644775390625e-08 100 5.9604644775390625e-08;
createNode animCurveTL -n "pTorusShape1_pnts_23__pntx";
	rename -uid "D414CBDC-864D-5CA7-2987-F08A0E5CE5F3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.74295192956924438 1 0.74295192956924438
		 80 0.74295192956924438 81 0.74295192956924438 100 2.0253009796142578;
createNode animCurveTL -n "pTorusShape1_pnts_23__pnty";
	rename -uid "21AE062F-DD42-B91D-F0D7-5F93306803C4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 1 0 80 0 81 0 100 -0.077385373413562775;
createNode animCurveTL -n "pTorusShape1_pnts_23__pntz";
	rename -uid "0D5FBBF5-0F48-8057-3FE3-269B04751279";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 5.9604644775390625e-08 1 5.9604644775390625e-08
		 80 5.9604644775390625e-08 81 5.9604644775390625e-08 100 5.9604644775390625e-08;
createNode animCurveTL -n "pTorusShape1_pnts_24__pntx";
	rename -uid "D132F67E-6F4C-7D9E-C453-A8880958A5E9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.2092372179031372 1 1.2092372179031372
		 80 1.2092372179031372 81 1.2092372179031372 100 1.4442825317382812;
createNode animCurveTL -n "pTorusShape1_pnts_24__pnty";
	rename -uid "BCFE98F6-8841-6014-837C-6196A7262059";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 1 0 80 0 81 0 100 -0.028509294614195824;
createNode animCurveTL -n "pTorusShape1_pnts_24__pntz";
	rename -uid "23A4FEE8-8548-539B-48E7-9D858CAE4D47";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 7.4505805969238281e-09 1 7.4505805969238281e-09
		 80 7.4505805969238281e-09 81 7.4505805969238281e-09 100 7.4505805969238281e-09;
createNode animCurveTL -n "pTorusShape1_pnts_25__pntx";
	rename -uid "F95D2E20-524B-F26B-FB6A-F4BF06EA062E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.313353419303894 1 1.313353419303894
		 80 1.313353419303894 81 1.313353419303894 100 1.3166773319244385;
createNode animCurveTL -n "pTorusShape1_pnts_25__pnty";
	rename -uid "F5E7EF6F-9542-AB82-27DF-70B68C938110";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 1 0 80 0 81 0 100 -0.0020998234394937754;
createNode animCurveTL -n "pTorusShape1_pnts_25__pntz";
	rename -uid "11EF8437-9B47-6111-A7F1-8489CD4A1BED";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 1 0 80 0 81 0 100 0;
createNode animCurveTL -n "pTorusShape1_pnts_29__pntx";
	rename -uid "B075CBE1-C240-2FC4-5523-DB91900667E4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -1.313353419303894 1 -1.313353419303894
		 80 -1.313353419303894 81 -1.313353419303894 100 -1.3166773319244385;
createNode animCurveTL -n "pTorusShape1_pnts_29__pnty";
	rename -uid "E73CF3F1-4C47-6B14-911A-BDA5C6D56DCA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 1 0 80 0 81 0 100 -0.0020998234394937754;
createNode animCurveTL -n "pTorusShape1_pnts_29__pntz";
	rename -uid "805D85AA-664D-8512-DD59-8796C6FFD6F2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 1 0 80 0 81 0 100 0;
createNode animCurveTL -n "pTorusShape1_pnts_30__pntx";
	rename -uid "710CFC9A-0E44-87CC-E67A-14BB94D730AF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -1.2092369794845581 1 -1.2092369794845581
		 80 -1.2092369794845581 81 -1.2092369794845581 100 -1.4442822933197021;
createNode animCurveTL -n "pTorusShape1_pnts_30__pnty";
	rename -uid "36D68F59-A44D-CD15-FA47-9AB669F22A88";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 1 0 80 0 81 0 100 -0.028509294614195824;
createNode animCurveTL -n "pTorusShape1_pnts_30__pntz";
	rename -uid "F46FAB31-2D43-1A29-EE43-E29CD38D824D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 7.4505805969238281e-09 1 7.4505805969238281e-09
		 80 7.4505805969238281e-09 81 7.4505805969238281e-09 100 7.4505805969238281e-09;
createNode animCurveTL -n "pTorusShape1_pnts_31__pntx";
	rename -uid "7E630AC5-0B49-1C34-CABF-B6A53AEBC340";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.74295163154602051 1 -0.74295163154602051
		 80 -0.74295163154602051 81 -0.74295163154602051 100 -2.0253012180328369;
createNode animCurveTL -n "pTorusShape1_pnts_31__pnty";
	rename -uid "DD9CFEA2-084E-3E49-BCDB-3D88E7156449";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 1 0 80 0 81 0 100 -0.077385373413562775;
createNode animCurveTL -n "pTorusShape1_pnts_31__pntz";
	rename -uid "8EFE9EEB-3B4D-93F2-1E9F-6FA60CF7F490";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 2.9802322387695312e-08 1 2.9802322387695312e-08
		 80 2.9802322387695312e-08 81 2.9802322387695312e-08 100 2.9802322387695312e-08;
createNode animCurveTL -n "pTorusShape1_pnts_34__pntx";
	rename -uid "1E003AB9-BF4E-9772-8299-B7A3FBC727EC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.76318752765655518 1 0.76318752765655518
		 80 0.76318752765655518 81 0.76318752765655518 100 2.0632538795471191;
createNode animCurveTL -n "pTorusShape1_pnts_34__pnty";
	rename -uid "A10411B8-1B40-C404-57DB-7AB97662BACE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 1 0 80 0 81 0 100 -0.05392485111951828;
createNode animCurveTL -n "pTorusShape1_pnts_34__pntz";
	rename -uid "ECB5B84B-934B-FD47-73FD-E98881F84001";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 2.9802322387695312e-08 1 2.9802322387695312e-08
		 80 2.9802322387695312e-08 81 2.9802322387695312e-08 100 2.9802322387695312e-08;
createNode animCurveTL -n "pTorusShape1_pnts_35__pntx";
	rename -uid "CDCEA49D-4041-F8DB-3F39-2785B557A50B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.2411131858825684 1 1.2411131858825684
		 80 1.2411131858825684 81 1.2411131858825684 100 1.4702134132385254;
createNode animCurveTL -n "pTorusShape1_pnts_35__pnty";
	rename -uid "B9A2DC0B-EA4D-2A0F-E05B-679E633C4D25";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 1 0 80 0 81 0 100 -0.019055679440498352;
createNode animCurveTL -n "pTorusShape1_pnts_35__pntz";
	rename -uid "C6937E71-DF41-FE20-04F9-21A843DA3048";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -2.9802322387695312e-08 1 -2.9802322387695312e-08
		 80 -2.9802322387695312e-08 81 -2.9802322387695312e-08 100 -2.9802322387695312e-08;
createNode animCurveTL -n "pTorusShape1_pnts_36__pntx";
	rename -uid "07C06F0C-B849-C4C6-73C9-898CCB9DCBC7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.3414195775985718 1 1.3414195775985718
		 80 1.3414195775985718 81 1.3414195775985718 100 1.3438578844070435;
createNode animCurveTL -n "pTorusShape1_pnts_36__pnty";
	rename -uid "75349FA2-1947-F091-E89B-B4800BE387E0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 1 0 80 0 81 0 100 -0.0010027188109233975;
createNode animCurveTL -n "pTorusShape1_pnts_36__pntz";
	rename -uid "AEE825B7-C249-F048-2E89-6D8FD142F4B8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 1 0 80 0 81 0 100 0;
createNode animCurveTL -n "pTorusShape1_pnts_40__pntx";
	rename -uid "4BD567F1-5447-2EF0-B1E0-96B22B27DBB5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -1.3414194583892822 1 -1.3414194583892822
		 80 -1.3414194583892822 81 -1.3414194583892822 100 -1.3438577651977539;
createNode animCurveTL -n "pTorusShape1_pnts_40__pnty";
	rename -uid "78E7529E-7F43-FEA8-C1F7-C1A565D1DDE1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 1 0 80 0 81 0 100 -0.0010027188109233975;
createNode animCurveTL -n "pTorusShape1_pnts_40__pntz";
	rename -uid "3403AA0D-174D-D5B5-08FE-6092C4AD9735";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 1 0 80 0 81 0 100 0;
createNode animCurveTL -n "pTorusShape1_pnts_41__pntx";
	rename -uid "B64285E6-4C47-41A0-B6AF-899290FF0453";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -1.2411131858825684 1 -1.2411131858825684
		 80 -1.2411131858825684 81 -1.2411131858825684 100 -1.4702135324478149;
createNode animCurveTL -n "pTorusShape1_pnts_41__pnty";
	rename -uid "C861C86B-2D42-5314-2216-4E8A756A7827";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 1 0 80 0 81 0 100 -0.019055679440498352;
createNode animCurveTL -n "pTorusShape1_pnts_41__pntz";
	rename -uid "A151C915-8A40-D500-E933-9897BD227E60";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -1.4901161193847656e-08 1 -1.4901161193847656e-08
		 80 -1.4901161193847656e-08 81 -1.4901161193847656e-08 100 -1.4901161193847656e-08;
createNode animCurveTL -n "pTorusShape1_pnts_42__pntx";
	rename -uid "06D83D63-0A41-66AC-FE43-1C9AF450E3DB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.7631877064704895 1 -0.7631877064704895
		 80 -0.7631877064704895 81 -0.7631877064704895 100 -2.0632541179656982;
createNode animCurveTL -n "pTorusShape1_pnts_42__pnty";
	rename -uid "454A7865-B44C-161B-D52F-32A9031CD6AD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 1 0 80 0 81 0 100 -0.05392485111951828;
createNode animCurveTL -n "pTorusShape1_pnts_42__pntz";
	rename -uid "D80BD1E0-4A4E-B58E-2970-EDB900A5B8C6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.1920928955078125e-07 1 1.1920928955078125e-07
		 80 1.1920928955078125e-07 81 1.1920928955078125e-07 100 1.1920928955078125e-07;
createNode animCurveTL -n "pTorusShape1_pnts_45__pntx";
	rename -uid "909D411F-6A48-2B69-1C7F-E6ADC647F5E7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.75751584768295288 1 0.75751584768295288
		 80 0.75751584768295288 81 0.75751584768295288 100 2.0715854167938232;
createNode animCurveTL -n "pTorusShape1_pnts_45__pnty";
	rename -uid "E81DD8BC-754C-9F9E-5998-6DBF8504CF05";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 1 0 80 0 81 0 100 2.8154232278865265e-09;
createNode animCurveTL -n "pTorusShape1_pnts_45__pntz";
	rename -uid "D5E3759D-4D4A-E30D-BDAF-54AABE036F9F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 5.9604644775390625e-08 1 5.9604644775390625e-08
		 80 5.9604644775390625e-08 81 5.9604644775390625e-08 100 5.9604644775390625e-08;
createNode animCurveTL -n "pTorusShape1_pnts_46__pntx";
	rename -uid "20394077-1A45-55D5-1E33-5FBDC070A153";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.2380006313323975 1 1.2380006313323975
		 80 1.2380006313323975 81 1.2380006313323975 100 1.4680379629135132;
createNode animCurveTL -n "pTorusShape1_pnts_46__pnty";
	rename -uid "6F59A441-994E-7B31-2F14-7AADDD68BB13";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 1 0 80 0 81 0 100 9.7680630251062439e-10;
createNode animCurveTL -n "pTorusShape1_pnts_46__pntz";
	rename -uid "591D163E-174D-CAA3-A0B9-9299A000C522";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 5.2154064178466797e-08 1 5.2154064178466797e-08
		 80 5.2154064178466797e-08 81 5.2154064178466797e-08 100 5.2154064178466797e-08;
createNode animCurveTL -n "pTorusShape1_pnts_47__pntx";
	rename -uid "DC197F05-D542-C398-EA3B-ACBB7D7079A5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.3429446220397949 1 1.3429446220397949
		 80 1.3429446220397949 81 1.3429446220397949 100 1.3451449871063232;
createNode animCurveTL -n "pTorusShape1_pnts_47__pnty";
	rename -uid "FAEC39C3-3845-8BDD-640E-6E8398C3B190";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 1 0 80 0 81 0 100 4.3625374146483153e-11;
createNode animCurveTL -n "pTorusShape1_pnts_47__pntz";
	rename -uid "A172DC66-C943-C391-86BB-D6B1595A6FA8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 1 0 80 0 81 0 100 0;
createNode animCurveTL -n "pTorusShape1_pnts_51__pntx";
	rename -uid "EB5DD617-EE40-44A2-AEF3-548109311F3D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -1.3429446220397949 1 -1.3429446220397949
		 80 -1.3429446220397949 81 -1.3429446220397949 100 -1.3451449871063232;
createNode animCurveTL -n "pTorusShape1_pnts_51__pnty";
	rename -uid "911D67B6-A143-0C1B-7192-2B9E61C180CC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 1 0 80 0 81 0 100 4.3625374146483153e-11;
createNode animCurveTL -n "pTorusShape1_pnts_51__pntz";
	rename -uid "FDF505C3-2849-54E3-670B-778F35607DFB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 1 0 80 0 81 0 100 0;
createNode animCurveTL -n "pTorusShape1_pnts_52__pntx";
	rename -uid "28374695-0244-B0A1-2AEA-C6B7289D01B1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -1.2380005121231079 1 -1.2380005121231079
		 80 -1.2380005121231079 81 -1.2380005121231079 100 -1.4680378437042236;
createNode animCurveTL -n "pTorusShape1_pnts_52__pnty";
	rename -uid "0A1B045C-5C4E-95CC-98D5-C080BD51F06C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 1 0 80 0 81 0 100 9.7680630251062439e-10;
createNode animCurveTL -n "pTorusShape1_pnts_52__pntz";
	rename -uid "F4E24487-4E48-D867-88EB-51ACB10A2198";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 3.7252902984619141e-08 1 3.7252902984619141e-08
		 80 3.7252902984619141e-08 81 3.7252902984619141e-08 100 3.7252902984619141e-08;
createNode animCurveTL -n "pTorusShape1_pnts_53__pntx";
	rename -uid "62AE885A-4C46-0303-38D9-9FA02B39913F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.75751668214797974 1 -0.75751668214797974
		 80 -0.75751668214797974 81 -0.75751668214797974 100 -2.0715854167938232;
createNode animCurveTL -n "pTorusShape1_pnts_53__pnty";
	rename -uid "E5FF2C41-044F-498A-99DB-2EB52AD1DE64";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 1 0 80 0 81 0 100 2.8154232278865265e-09;
createNode animCurveTL -n "pTorusShape1_pnts_53__pntz";
	rename -uid "22F81947-9D41-E9CC-D6BD-88B9E77D2E9D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 2.9802322387695312e-08 1 2.9802322387695312e-08
		 80 2.9802322387695312e-08 81 2.9802322387695312e-08 100 2.9802322387695312e-08;
createNode animCurveTL -n "pTorusShape1_pnts_56__pntx";
	rename -uid "7154265F-EB42-33E7-1C7A-7388E5C31BE7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.73699843883514404 1 0.73699843883514404
		 80 0.73699843883514404 81 0.73699843883514404 100 2.060847282409668;
createNode animCurveTL -n "pTorusShape1_pnts_56__pnty";
	rename -uid "46D9B8DF-184A-172D-5F4C-C0A0273033A8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 1 0 80 0 81 0 100 0.054069302976131439;
createNode animCurveTL -n "pTorusShape1_pnts_56__pntz";
	rename -uid "1FB01A36-3C4E-A1C6-5CAF-75BB9D72199F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 2.9802322387695312e-08 1 2.9802322387695312e-08
		 80 2.9802322387695312e-08 81 2.9802322387695312e-08 100 2.9802322387695312e-08;
createNode animCurveTL -n "pTorusShape1_pnts_57__pntx";
	rename -uid "4490BAA5-1942-23CA-A178-85A01AFD3933";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.2379822731018066 1 1.2379822731018066
		 80 1.2379822731018066 81 1.2379822731018066 100 1.4683986902236938;
createNode animCurveTL -n "pTorusShape1_pnts_57__pnty";
	rename -uid "2D25DC87-324E-CA37-7213-8B90231E65D9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 1 0 80 0 81 0 100 0.019093900918960571;
createNode animCurveTL -n "pTorusShape1_pnts_57__pntz";
	rename -uid "A144F0AF-D04B-209B-CDBA-B49D22F8AEC9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -2.9802322387695312e-08 1 -2.9802322387695312e-08
		 80 -2.9802322387695312e-08 81 -2.9802322387695312e-08 100 -2.9802322387695312e-08;
createNode animCurveTL -n "pTorusShape1_pnts_58__pntx";
	rename -uid "A742431A-5E40-95E6-98C7-BAA9134B6A3F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.3414195775985718 1 1.3414195775985718
		 80 1.3414195775985718 81 1.3414195775985718 100 1.3438578844070435;
createNode animCurveTL -n "pTorusShape1_pnts_58__pnty";
	rename -uid "87CFA1F7-004E-2FD1-DDD6-158D9F21BC13";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 1 0 80 0 81 0 100 0.0010027189273387194;
createNode animCurveTL -n "pTorusShape1_pnts_58__pntz";
	rename -uid "837CD8A7-1148-41F3-9CD3-9CA64672557C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 1 0 80 0 81 0 100 0;
createNode animCurveTL -n "pTorusShape1_pnts_62__pntx";
	rename -uid "65FC3379-354E-0335-751D-6A9B897DD342";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -1.3414194583892822 1 -1.3414194583892822
		 80 -1.3414194583892822 81 -1.3414194583892822 100 -1.3438577651977539;
createNode animCurveTL -n "pTorusShape1_pnts_62__pnty";
	rename -uid "AA225218-0B49-A04E-857F-4F8CFA4911F9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 1 0 80 0 81 0 100 0.0010027189273387194;
createNode animCurveTL -n "pTorusShape1_pnts_62__pntz";
	rename -uid "4AAF9FEE-A140-5C66-6E53-0F8DCF524C90";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 1 0 80 0 81 0 100 0;
createNode animCurveTL -n "pTorusShape1_pnts_63__pntx";
	rename -uid "407DFC54-374E-779C-4C5F-E4AFC9125FC7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -1.2409313917160034 1 -1.2409313917160034
		 80 -1.2409313917160034 81 -1.2409313917160034 100 -1.4691272974014282;
createNode animCurveTL -n "pTorusShape1_pnts_63__pnty";
	rename -uid "93100219-5F42-C930-DB8F-D2A3FC905362";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 1 0 80 0 81 0 100 0.018976371735334396;
createNode animCurveTL -n "pTorusShape1_pnts_63__pntz";
	rename -uid "53AE504E-CB44-E084-9278-42A14668D8F8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 2.9802322387695312e-08 1 2.9802322387695312e-08
		 80 2.9802322387695312e-08 81 2.9802322387695312e-08 100 2.9802322387695312e-08;
createNode animCurveTL -n "pTorusShape1_pnts_64__pntx";
	rename -uid "E4D02FD6-3945-B149-85E5-ADA6131AA927";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.7631877064704895 1 -0.7631877064704895
		 80 -0.7631877064704895 81 -0.7631877064704895 100 -2.0632541179656982;
createNode animCurveTL -n "pTorusShape1_pnts_64__pnty";
	rename -uid "03B2D202-3044-BD11-D3D1-F7B306687900";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 1 0 80 0 81 0 100 0.053924854844808578;
createNode animCurveTL -n "pTorusShape1_pnts_64__pntz";
	rename -uid "5B446849-6148-9482-B720-00BADF2D8752";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.1920928955078125e-07 1 1.1920928955078125e-07
		 80 1.1920928955078125e-07 81 1.1920928955078125e-07 100 1.1920928955078125e-07;
createNode animCurveTL -n "pTorusShape1_pnts_67__pntx";
	rename -uid "55F8B985-0B40-91CA-055A-B9A1C2BEC280";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.73903614282608032 1 0.73903614282608032
		 80 0.73903614282608032 81 0.73903614282608032 100 2.0249714851379395;
createNode animCurveTL -n "pTorusShape1_pnts_67__pnty";
	rename -uid "9F33F2E1-854D-8880-DA75-828ED6B32F71";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 1 0 80 0 81 0 100 0.077416352927684784;
createNode animCurveTL -n "pTorusShape1_pnts_67__pntz";
	rename -uid "4956B200-5048-66EB-5753-469676791325";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 5.9604644775390625e-08 1 5.9604644775390625e-08
		 80 5.9604644775390625e-08 81 5.9604644775390625e-08 100 5.9604644775390625e-08;
createNode animCurveTL -n "pTorusShape1_pnts_68__pntx";
	rename -uid "5B40730A-A444-653C-DF6B-969DD9E66BE1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.2049520015716553 1 1.2049520015716553
		 80 1.2049520015716553 81 1.2049520015716553 100 1.4419069290161133;
createNode animCurveTL -n "pTorusShape1_pnts_68__pnty";
	rename -uid "8EA99031-0044-3237-BC89-7CA14557F5D2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 1 0 80 0 81 0 100 0.028590191155672073;
createNode animCurveTL -n "pTorusShape1_pnts_68__pntz";
	rename -uid "75310EB3-3042-8FC9-723F-FA8802504375";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 7.4505805969238281e-09 1 7.4505805969238281e-09
		 80 7.4505805969238281e-09 81 7.4505805969238281e-09 100 7.4505805969238281e-09;
createNode animCurveTL -n "pTorusShape1_pnts_69__pntx";
	rename -uid "AB18692E-C043-9828-D91C-B98418E672CC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.313353419303894 1 1.313353419303894
		 80 1.313353419303894 81 1.313353419303894 100 1.3166773319244385;
createNode animCurveTL -n "pTorusShape1_pnts_69__pnty";
	rename -uid "3A49B8B4-A347-BCDB-1D36-76A613879B1F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 1 0 80 0 81 0 100 0.0020998234394937754;
createNode animCurveTL -n "pTorusShape1_pnts_69__pntz";
	rename -uid "0542C7A0-364C-9312-0065-CAA9C38CF813";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 1 0 80 0 81 0 100 0;
createNode animCurveTL -n "pTorusShape1_pnts_73__pntx";
	rename -uid "B046A23B-444F-053E-E249-86A6A69DC48C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -1.313353419303894 1 -1.313353419303894
		 80 -1.313353419303894 81 -1.313353419303894 100 -1.3166773319244385;
createNode animCurveTL -n "pTorusShape1_pnts_73__pnty";
	rename -uid "4658310C-8940-7D38-E321-058147681112";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 1 0 80 0 81 0 100 0.0020998234394937754;
createNode animCurveTL -n "pTorusShape1_pnts_73__pntz";
	rename -uid "107AD44D-AF43-428F-36EF-D0B2399E61A6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 1 0 80 0 81 0 100 0;
createNode animCurveTL -n "pTorusShape1_pnts_74__pntx";
	rename -uid "AE854DD5-294E-45AC-24A6-F98B0DBAA181";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -1.2089866399765015 1 -1.2089866399765015
		 80 -1.2089866399765015 81 -1.2089866399765015 100 -1.4429899454116821;
createNode animCurveTL -n "pTorusShape1_pnts_74__pnty";
	rename -uid "605A9BFA-274E-43BC-8AA4-4EBF00910B06";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 1 0 80 0 81 0 100 0.028374083340167999;
createNode animCurveTL -n "pTorusShape1_pnts_74__pntz";
	rename -uid "052E2108-4646-9962-468D-06B954B6096C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 2.9802322387695312e-08 1 2.9802322387695312e-08
		 80 2.9802322387695312e-08 81 2.9802322387695312e-08 100 2.9802322387695312e-08;
createNode animCurveTL -n "pTorusShape1_pnts_75__pntx";
	rename -uid "BCFD5DD0-5840-8B0E-E478-A7A8129B49B2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.74295163154602051 1 -0.74295163154602051
		 80 -0.74295163154602051 81 -0.74295163154602051 100 -2.0253012180328369;
createNode animCurveTL -n "pTorusShape1_pnts_75__pnty";
	rename -uid "56DA2DD8-A148-08F6-3E8C-3F90A1BE0BFE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 1 0 80 0 81 0 100 0.077385373413562775;
createNode animCurveTL -n "pTorusShape1_pnts_75__pntz";
	rename -uid "9F508F89-794D-CF96-F301-188ECA2849DF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 2.9802322387695312e-08 1 2.9802322387695312e-08
		 80 2.9802322387695312e-08 81 2.9802322387695312e-08 100 2.9802322387695312e-08;
createNode animCurveTL -n "pTorusShape1_pnts_78__pntx";
	rename -uid "9E747E02-2447-716A-537E-9C8E94D4A0A3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.71497732400894165 1 0.71497732400894165
		 80 0.71497732400894165 81 0.71497732400894165 100 1.9801520109176636;
createNode animCurveTL -n "pTorusShape1_pnts_78__pnty";
	rename -uid "E66437C2-3C45-D260-2051-D8AFEAB1E483";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 1 0 80 0 81 0 100 0.055315889418125153;
createNode animCurveTL -n "pTorusShape1_pnts_78__pntz";
	rename -uid "4FAA9178-9F48-A855-9BA5-FD97CA28EEDC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 2.9802322387695312e-08 1 2.9802322387695312e-08
		 80 2.9802322387695312e-08 81 2.9802322387695312e-08 100 2.9802322387695312e-08;
createNode animCurveTL -n "pTorusShape1_pnts_79__pntx";
	rename -uid "094AE86A-3343-D5FF-CF21-A38CE6174346";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.1680735349655151 1 1.1680735349655151
		 80 1.1680735349655151 81 1.1680735349655151 100 1.4116531610488892;
createNode animCurveTL -n "pTorusShape1_pnts_79__pnty";
	rename -uid "79000F05-CA4C-29E3-619E-14847ED00DC6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 1 0 80 0 81 0 100 0.021311391144990921;
createNode animCurveTL -n "pTorusShape1_pnts_79__pntz";
	rename -uid "4C793C30-AB49-227B-7760-1F95C9397399";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -2.2351741790771484e-08 1 -2.2351741790771484e-08
		 80 -2.2351741790771484e-08 81 -2.2351741790771484e-08 100 -2.2351741790771484e-08;
createNode animCurveTL -n "pTorusShape1_pnts_80__pntx";
	rename -uid "EB8BCD0B-F14E-7AFE-505E-02AF867AAED2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.2762062549591064 1 1.2762062549591064
		 80 1.2762062549591064 81 1.2762062549591064 100 1.280735969543457;
createNode animCurveTL -n "pTorusShape1_pnts_80__pnty";
	rename -uid "2F2F2123-434B-B5AF-7A89-00BEA9906164";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 1 0 80 0 81 0 100 0.0020829907152801752;
createNode animCurveTL -n "pTorusShape1_pnts_80__pntz";
	rename -uid "1AA08F1C-B941-6AB1-D52C-9396166FEB2F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 1 0 80 0 81 0 100 0;
createNode animCurveTL -n "pTorusShape1_pnts_84__pntx";
	rename -uid "CEEF2D85-1046-CB15-298D-8C8B1CB7D735";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -1.2762062549591064 1 -1.2762062549591064
		 80 -1.2762062549591064 81 -1.2762062549591064 100 -1.280735969543457;
createNode animCurveTL -n "pTorusShape1_pnts_84__pnty";
	rename -uid "7D9F5BC4-8344-3F3D-AB82-B5BBA1537742";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 1 0 80 0 81 0 100 0.0020829907152801752;
createNode animCurveTL -n "pTorusShape1_pnts_84__pntz";
	rename -uid "9C7B51E9-9D4A-C2AC-2122-178EB067953F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 1 0 80 0 81 0 100 0;
createNode animCurveTL -n "pTorusShape1_pnts_85__pntx";
	rename -uid "1F61CB07-B140-5141-68EE-AE9E9EA7A0EF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -1.1680734157562256 1 -1.1680734157562256
		 80 -1.1680734157562256 81 -1.1680734157562256 100 -1.4116530418395996;
createNode animCurveTL -n "pTorusShape1_pnts_85__pnty";
	rename -uid "7735714D-EC47-5895-57E8-88ADB934E88C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 1 0 80 0 81 0 100 0.021311391144990921;
createNode animCurveTL -n "pTorusShape1_pnts_85__pntz";
	rename -uid "F9A86229-1F4F-60CE-7A3B-B682FE96027E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -2.2351741790771484e-08 1 -2.2351741790771484e-08
		 80 -2.2351741790771484e-08 81 -2.2351741790771484e-08 100 -2.2351741790771484e-08;
createNode animCurveTL -n "pTorusShape1_pnts_86__pntx";
	rename -uid "0D37BA27-D24B-B3A2-3557-5E834CC59887";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.71497732400894165 1 -0.71497732400894165
		 80 -0.71497732400894165 81 -0.71497732400894165 100 -1.9801520109176636;
createNode animCurveTL -n "pTorusShape1_pnts_86__pnty";
	rename -uid "5C8C5F5A-0A49-76A5-AAC3-AFA53D11F7F5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 1 0 80 0 81 0 100 0.055315889418125153;
createNode animCurveTL -n "pTorusShape1_pnts_86__pntz";
	rename -uid "CB4FD0B4-2546-87C2-8FB5-2D9E07A03213";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 5.9604644775390625e-08 1 5.9604644775390625e-08
		 80 5.9604644775390625e-08 81 5.9604644775390625e-08 100 5.9604644775390625e-08;
createNode polyCone -n "polyCone1";
	rename -uid "C580DA0B-DE4D-82B5-8990-00949EFC4714";
	setAttr ".sa" 4;
	setAttr ".cuv" 3;
createNode polyTweak -n "polyTweak1";
	rename -uid "AFCFB378-F04E-E804-E1C1-5EA308B372C1";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[0]" -type "float3" 0 4.5998931e-08 0.32460472 ;
	setAttr ".tk[2]" -type "float3" 0 4.5998931e-08 -0.32460472 ;
createNode polySplit -n "polySplit1";
	rename -uid "B6AFA096-004D-45BF-1B51-5CA25F0DD56D";
	setAttr -s 2 ".e[0:1]"  0 0;
	setAttr -s 2 ".d[0:1]"  -2147483645 -2147483647;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit2";
	rename -uid "F63A0DD2-654E-A989-A841-76B119C62225";
	setAttr -s 3 ".e[0:2]"  0 0.5 0;
	setAttr -s 3 ".d[0:2]"  -2147483648 -2147483640 -2147483646;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode animCurveTU -n "pCone1_scaleX";
	rename -uid "6812F7B9-3548-1A2F-8CAC-2BA471CDF413";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  80 9.9999999999999998e-13 100 1.1705737612183447;
createNode animCurveTU -n "pCone1_scaleY";
	rename -uid "50C833A6-F941-F1CE-E21D-B98E3852536F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  80 9.9999999999999998e-13 100 1.3608888519880853;
createNode animCurveTU -n "pCone1_scaleZ";
	rename -uid "5431EE6A-C244-86E4-5D3C-009D43EA8103";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  80 9.9999999999999998e-13 100 2.7021077602337469;
createNode animCurveTU -n "pCone1_visibility";
	rename -uid "1CB45551-274C-2207-61EA-5F8B5C846C83";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  80 1 100 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "pCone1_translateX";
	rename -uid "C765D180-6F47-E78C-7CC9-0990002E80BF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  80 0 100 0;
createNode animCurveTL -n "pCone1_translateY";
	rename -uid "6EDB0863-E34C-2C09-56C9-02AD2898D6EF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  80 0 100 1.0363325843492024;
createNode animCurveTL -n "pCone1_translateZ";
	rename -uid "18C690BC-9746-BADA-7F5E-C78A94AE2D79";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  80 0 100 0;
createNode animCurveTA -n "pCone1_rotateX";
	rename -uid "AB682119-3044-D75C-238D-309CDA12EABC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  80 180 100 180;
createNode animCurveTA -n "pCone1_rotateY";
	rename -uid "4EA9AD2C-5141-1AE9-9F89-70970BE8AAA8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  80 0 100 0;
createNode animCurveTA -n "pCone1_rotateZ";
	rename -uid "351D4116-AE40-A642-42D3-7A96EC76F616";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  80 0 100 0;
select -ne :time1;
	setAttr ".o" 0;
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
	setAttr -s 2 ".dsm";
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
connectAttr "pTorus1_translateX.o" "pTorus1.tx";
connectAttr "pTorus1_translateY.o" "pTorus1.ty";
connectAttr "pTorus1_translateZ.o" "pTorus1.tz";
connectAttr "pTorus1_visibility.o" "pTorus1.v";
connectAttr "pTorus1_rotateX.o" "pTorus1.rx";
connectAttr "pTorus1_rotateY.o" "pTorus1.ry";
connectAttr "pTorus1_rotateZ.o" "pTorus1.rz";
connectAttr "pTorus1_scaleX.o" "pTorus1.sx";
connectAttr "pTorus1_scaleY.o" "pTorus1.sy";
connectAttr "pTorus1_scaleZ.o" "pTorus1.sz";
connectAttr "pTorusShape1_pnts_1__pntx.o" "pTorusShape1.pt[1].px";
connectAttr "pTorusShape1_pnts_1__pnty.o" "pTorusShape1.pt[1].py";
connectAttr "pTorusShape1_pnts_1__pntz.o" "pTorusShape1.pt[1].pz";
connectAttr "pTorusShape1_pnts_2__pntx.o" "pTorusShape1.pt[2].px";
connectAttr "pTorusShape1_pnts_2__pnty.o" "pTorusShape1.pt[2].py";
connectAttr "pTorusShape1_pnts_2__pntz.o" "pTorusShape1.pt[2].pz";
connectAttr "pTorusShape1_pnts_3__pntx.o" "pTorusShape1.pt[3].px";
connectAttr "pTorusShape1_pnts_3__pnty.o" "pTorusShape1.pt[3].py";
connectAttr "pTorusShape1_pnts_3__pntz.o" "pTorusShape1.pt[3].pz";
connectAttr "pTorusShape1_pnts_7__pntx.o" "pTorusShape1.pt[7].px";
connectAttr "pTorusShape1_pnts_7__pnty.o" "pTorusShape1.pt[7].py";
connectAttr "pTorusShape1_pnts_7__pntz.o" "pTorusShape1.pt[7].pz";
connectAttr "pTorusShape1_pnts_8__pntx.o" "pTorusShape1.pt[8].px";
connectAttr "pTorusShape1_pnts_8__pnty.o" "pTorusShape1.pt[8].py";
connectAttr "pTorusShape1_pnts_8__pntz.o" "pTorusShape1.pt[8].pz";
connectAttr "pTorusShape1_pnts_9__pntx.o" "pTorusShape1.pt[9].px";
connectAttr "pTorusShape1_pnts_9__pnty.o" "pTorusShape1.pt[9].py";
connectAttr "pTorusShape1_pnts_9__pntz.o" "pTorusShape1.pt[9].pz";
connectAttr "pTorusShape1_pnts_12__pntx.o" "pTorusShape1.pt[12].px";
connectAttr "pTorusShape1_pnts_12__pnty.o" "pTorusShape1.pt[12].py";
connectAttr "pTorusShape1_pnts_12__pntz.o" "pTorusShape1.pt[12].pz";
connectAttr "pTorusShape1_pnts_13__pntx.o" "pTorusShape1.pt[13].px";
connectAttr "pTorusShape1_pnts_13__pnty.o" "pTorusShape1.pt[13].py";
connectAttr "pTorusShape1_pnts_13__pntz.o" "pTorusShape1.pt[13].pz";
connectAttr "pTorusShape1_pnts_14__pntx.o" "pTorusShape1.pt[14].px";
connectAttr "pTorusShape1_pnts_14__pnty.o" "pTorusShape1.pt[14].py";
connectAttr "pTorusShape1_pnts_14__pntz.o" "pTorusShape1.pt[14].pz";
connectAttr "pTorusShape1_pnts_18__pntx.o" "pTorusShape1.pt[18].px";
connectAttr "pTorusShape1_pnts_18__pnty.o" "pTorusShape1.pt[18].py";
connectAttr "pTorusShape1_pnts_18__pntz.o" "pTorusShape1.pt[18].pz";
connectAttr "pTorusShape1_pnts_19__pntx.o" "pTorusShape1.pt[19].px";
connectAttr "pTorusShape1_pnts_19__pnty.o" "pTorusShape1.pt[19].py";
connectAttr "pTorusShape1_pnts_19__pntz.o" "pTorusShape1.pt[19].pz";
connectAttr "pTorusShape1_pnts_20__pntx.o" "pTorusShape1.pt[20].px";
connectAttr "pTorusShape1_pnts_20__pnty.o" "pTorusShape1.pt[20].py";
connectAttr "pTorusShape1_pnts_20__pntz.o" "pTorusShape1.pt[20].pz";
connectAttr "pTorusShape1_pnts_23__pntx.o" "pTorusShape1.pt[23].px";
connectAttr "pTorusShape1_pnts_23__pnty.o" "pTorusShape1.pt[23].py";
connectAttr "pTorusShape1_pnts_23__pntz.o" "pTorusShape1.pt[23].pz";
connectAttr "pTorusShape1_pnts_24__pntx.o" "pTorusShape1.pt[24].px";
connectAttr "pTorusShape1_pnts_24__pnty.o" "pTorusShape1.pt[24].py";
connectAttr "pTorusShape1_pnts_24__pntz.o" "pTorusShape1.pt[24].pz";
connectAttr "pTorusShape1_pnts_25__pntx.o" "pTorusShape1.pt[25].px";
connectAttr "pTorusShape1_pnts_25__pnty.o" "pTorusShape1.pt[25].py";
connectAttr "pTorusShape1_pnts_25__pntz.o" "pTorusShape1.pt[25].pz";
connectAttr "pTorusShape1_pnts_29__pntx.o" "pTorusShape1.pt[29].px";
connectAttr "pTorusShape1_pnts_29__pnty.o" "pTorusShape1.pt[29].py";
connectAttr "pTorusShape1_pnts_29__pntz.o" "pTorusShape1.pt[29].pz";
connectAttr "pTorusShape1_pnts_30__pntx.o" "pTorusShape1.pt[30].px";
connectAttr "pTorusShape1_pnts_30__pnty.o" "pTorusShape1.pt[30].py";
connectAttr "pTorusShape1_pnts_30__pntz.o" "pTorusShape1.pt[30].pz";
connectAttr "pTorusShape1_pnts_31__pntx.o" "pTorusShape1.pt[31].px";
connectAttr "pTorusShape1_pnts_31__pnty.o" "pTorusShape1.pt[31].py";
connectAttr "pTorusShape1_pnts_31__pntz.o" "pTorusShape1.pt[31].pz";
connectAttr "pTorusShape1_pnts_34__pntx.o" "pTorusShape1.pt[34].px";
connectAttr "pTorusShape1_pnts_34__pnty.o" "pTorusShape1.pt[34].py";
connectAttr "pTorusShape1_pnts_34__pntz.o" "pTorusShape1.pt[34].pz";
connectAttr "pTorusShape1_pnts_35__pntx.o" "pTorusShape1.pt[35].px";
connectAttr "pTorusShape1_pnts_35__pnty.o" "pTorusShape1.pt[35].py";
connectAttr "pTorusShape1_pnts_35__pntz.o" "pTorusShape1.pt[35].pz";
connectAttr "pTorusShape1_pnts_36__pntx.o" "pTorusShape1.pt[36].px";
connectAttr "pTorusShape1_pnts_36__pnty.o" "pTorusShape1.pt[36].py";
connectAttr "pTorusShape1_pnts_36__pntz.o" "pTorusShape1.pt[36].pz";
connectAttr "pTorusShape1_pnts_40__pntx.o" "pTorusShape1.pt[40].px";
connectAttr "pTorusShape1_pnts_40__pnty.o" "pTorusShape1.pt[40].py";
connectAttr "pTorusShape1_pnts_40__pntz.o" "pTorusShape1.pt[40].pz";
connectAttr "pTorusShape1_pnts_41__pntx.o" "pTorusShape1.pt[41].px";
connectAttr "pTorusShape1_pnts_41__pnty.o" "pTorusShape1.pt[41].py";
connectAttr "pTorusShape1_pnts_41__pntz.o" "pTorusShape1.pt[41].pz";
connectAttr "pTorusShape1_pnts_42__pntx.o" "pTorusShape1.pt[42].px";
connectAttr "pTorusShape1_pnts_42__pnty.o" "pTorusShape1.pt[42].py";
connectAttr "pTorusShape1_pnts_42__pntz.o" "pTorusShape1.pt[42].pz";
connectAttr "pTorusShape1_pnts_45__pntx.o" "pTorusShape1.pt[45].px";
connectAttr "pTorusShape1_pnts_45__pnty.o" "pTorusShape1.pt[45].py";
connectAttr "pTorusShape1_pnts_45__pntz.o" "pTorusShape1.pt[45].pz";
connectAttr "pTorusShape1_pnts_46__pntx.o" "pTorusShape1.pt[46].px";
connectAttr "pTorusShape1_pnts_46__pnty.o" "pTorusShape1.pt[46].py";
connectAttr "pTorusShape1_pnts_46__pntz.o" "pTorusShape1.pt[46].pz";
connectAttr "pTorusShape1_pnts_47__pntx.o" "pTorusShape1.pt[47].px";
connectAttr "pTorusShape1_pnts_47__pnty.o" "pTorusShape1.pt[47].py";
connectAttr "pTorusShape1_pnts_47__pntz.o" "pTorusShape1.pt[47].pz";
connectAttr "pTorusShape1_pnts_51__pntx.o" "pTorusShape1.pt[51].px";
connectAttr "pTorusShape1_pnts_51__pnty.o" "pTorusShape1.pt[51].py";
connectAttr "pTorusShape1_pnts_51__pntz.o" "pTorusShape1.pt[51].pz";
connectAttr "pTorusShape1_pnts_52__pntx.o" "pTorusShape1.pt[52].px";
connectAttr "pTorusShape1_pnts_52__pnty.o" "pTorusShape1.pt[52].py";
connectAttr "pTorusShape1_pnts_52__pntz.o" "pTorusShape1.pt[52].pz";
connectAttr "pTorusShape1_pnts_53__pntx.o" "pTorusShape1.pt[53].px";
connectAttr "pTorusShape1_pnts_53__pnty.o" "pTorusShape1.pt[53].py";
connectAttr "pTorusShape1_pnts_53__pntz.o" "pTorusShape1.pt[53].pz";
connectAttr "pTorusShape1_pnts_56__pntx.o" "pTorusShape1.pt[56].px";
connectAttr "pTorusShape1_pnts_56__pnty.o" "pTorusShape1.pt[56].py";
connectAttr "pTorusShape1_pnts_56__pntz.o" "pTorusShape1.pt[56].pz";
connectAttr "pTorusShape1_pnts_57__pntx.o" "pTorusShape1.pt[57].px";
connectAttr "pTorusShape1_pnts_57__pnty.o" "pTorusShape1.pt[57].py";
connectAttr "pTorusShape1_pnts_57__pntz.o" "pTorusShape1.pt[57].pz";
connectAttr "pTorusShape1_pnts_58__pntx.o" "pTorusShape1.pt[58].px";
connectAttr "pTorusShape1_pnts_58__pnty.o" "pTorusShape1.pt[58].py";
connectAttr "pTorusShape1_pnts_58__pntz.o" "pTorusShape1.pt[58].pz";
connectAttr "pTorusShape1_pnts_62__pntx.o" "pTorusShape1.pt[62].px";
connectAttr "pTorusShape1_pnts_62__pnty.o" "pTorusShape1.pt[62].py";
connectAttr "pTorusShape1_pnts_62__pntz.o" "pTorusShape1.pt[62].pz";
connectAttr "pTorusShape1_pnts_63__pntx.o" "pTorusShape1.pt[63].px";
connectAttr "pTorusShape1_pnts_63__pnty.o" "pTorusShape1.pt[63].py";
connectAttr "pTorusShape1_pnts_63__pntz.o" "pTorusShape1.pt[63].pz";
connectAttr "pTorusShape1_pnts_64__pntx.o" "pTorusShape1.pt[64].px";
connectAttr "pTorusShape1_pnts_64__pnty.o" "pTorusShape1.pt[64].py";
connectAttr "pTorusShape1_pnts_64__pntz.o" "pTorusShape1.pt[64].pz";
connectAttr "pTorusShape1_pnts_67__pntx.o" "pTorusShape1.pt[67].px";
connectAttr "pTorusShape1_pnts_67__pnty.o" "pTorusShape1.pt[67].py";
connectAttr "pTorusShape1_pnts_67__pntz.o" "pTorusShape1.pt[67].pz";
connectAttr "pTorusShape1_pnts_68__pntx.o" "pTorusShape1.pt[68].px";
connectAttr "pTorusShape1_pnts_68__pnty.o" "pTorusShape1.pt[68].py";
connectAttr "pTorusShape1_pnts_68__pntz.o" "pTorusShape1.pt[68].pz";
connectAttr "pTorusShape1_pnts_69__pntx.o" "pTorusShape1.pt[69].px";
connectAttr "pTorusShape1_pnts_69__pnty.o" "pTorusShape1.pt[69].py";
connectAttr "pTorusShape1_pnts_69__pntz.o" "pTorusShape1.pt[69].pz";
connectAttr "pTorusShape1_pnts_73__pntx.o" "pTorusShape1.pt[73].px";
connectAttr "pTorusShape1_pnts_73__pnty.o" "pTorusShape1.pt[73].py";
connectAttr "pTorusShape1_pnts_73__pntz.o" "pTorusShape1.pt[73].pz";
connectAttr "pTorusShape1_pnts_74__pntx.o" "pTorusShape1.pt[74].px";
connectAttr "pTorusShape1_pnts_74__pnty.o" "pTorusShape1.pt[74].py";
connectAttr "pTorusShape1_pnts_74__pntz.o" "pTorusShape1.pt[74].pz";
connectAttr "pTorusShape1_pnts_75__pntx.o" "pTorusShape1.pt[75].px";
connectAttr "pTorusShape1_pnts_75__pnty.o" "pTorusShape1.pt[75].py";
connectAttr "pTorusShape1_pnts_75__pntz.o" "pTorusShape1.pt[75].pz";
connectAttr "pTorusShape1_pnts_78__pntx.o" "pTorusShape1.pt[78].px";
connectAttr "pTorusShape1_pnts_78__pnty.o" "pTorusShape1.pt[78].py";
connectAttr "pTorusShape1_pnts_78__pntz.o" "pTorusShape1.pt[78].pz";
connectAttr "pTorusShape1_pnts_79__pntx.o" "pTorusShape1.pt[79].px";
connectAttr "pTorusShape1_pnts_79__pnty.o" "pTorusShape1.pt[79].py";
connectAttr "pTorusShape1_pnts_79__pntz.o" "pTorusShape1.pt[79].pz";
connectAttr "pTorusShape1_pnts_80__pntx.o" "pTorusShape1.pt[80].px";
connectAttr "pTorusShape1_pnts_80__pnty.o" "pTorusShape1.pt[80].py";
connectAttr "pTorusShape1_pnts_80__pntz.o" "pTorusShape1.pt[80].pz";
connectAttr "pTorusShape1_pnts_84__pntx.o" "pTorusShape1.pt[84].px";
connectAttr "pTorusShape1_pnts_84__pnty.o" "pTorusShape1.pt[84].py";
connectAttr "pTorusShape1_pnts_84__pntz.o" "pTorusShape1.pt[84].pz";
connectAttr "pTorusShape1_pnts_85__pntx.o" "pTorusShape1.pt[85].px";
connectAttr "pTorusShape1_pnts_85__pnty.o" "pTorusShape1.pt[85].py";
connectAttr "pTorusShape1_pnts_85__pntz.o" "pTorusShape1.pt[85].pz";
connectAttr "pTorusShape1_pnts_86__pntx.o" "pTorusShape1.pt[86].px";
connectAttr "pTorusShape1_pnts_86__pnty.o" "pTorusShape1.pt[86].py";
connectAttr "pTorusShape1_pnts_86__pntz.o" "pTorusShape1.pt[86].pz";
connectAttr "pCone1_scaleX.o" "pCone1.sx";
connectAttr "pCone1_scaleY.o" "pCone1.sy";
connectAttr "pCone1_scaleZ.o" "pCone1.sz";
connectAttr "pCone1_visibility.o" "pCone1.v";
connectAttr "pCone1_translateX.o" "pCone1.tx";
connectAttr "pCone1_translateY.o" "pCone1.ty";
connectAttr "pCone1_translateZ.o" "pCone1.tz";
connectAttr "pCone1_rotateX.o" "pCone1.rx";
connectAttr "pCone1_rotateY.o" "pCone1.ry";
connectAttr "pCone1_rotateZ.o" "pCone1.rz";
connectAttr "polySplit2.out" "pConeShape1.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyCone1.out" "polyTweak1.ip";
connectAttr "polyTweak1.out" "polySplit1.ip";
connectAttr "polySplit1.out" "polySplit2.ip";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pTorusShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pConeShape1.iog" ":initialShadingGroup.dsm" -na;
// End of guitarPlantPetal 2.ma
