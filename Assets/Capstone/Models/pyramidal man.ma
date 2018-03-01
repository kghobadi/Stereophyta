//Maya ASCII 2017 scene
//Name: pyramidal man.ma
//Last modified: Thu, Mar 01, 2018 04:47:03 PM
//Codeset: 1252
requires maya "2017";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2017";
fileInfo "version" "2017";
fileInfo "cutIdentifier" "201606150345-997974";
fileInfo "osv" "Microsoft Windows 8 Home Premium Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "0083C121-4D2B-DA64-B437-95A76DC71A72";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 19.513828501048089 5.6437332727322023 5.8577207078349414 ;
	setAttr ".r" -type "double3" -17.138352732758076 -286.60000000004902 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "02A0898B-48C2-DEFD-FA4F-409317E82E0D";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 21.025904475927138;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0.94132146287785101 -0.8745370377073014 0.37606687997644039 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "8D7764A8-407C-87E6-CF85-458532828CBA";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "95D2B642-40BE-5086-F57C-1C9EE72582DB";
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
	rename -uid "FBF109EC-4042-8EEF-DE3C-D0915ECDBC29";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "FD9C2451-4BBA-7A4E-8B0B-01A902C1F47C";
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
	rename -uid "4B577B2B-469F-FD32-E57D-189184ADBD79";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 -1.2444991887442924 -0.10370826572869121 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "CA89824D-4566-18BB-CA07-88A41DE9C0A1";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 27.413551574283989;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "pPyramid28";
	rename -uid "4555163B-4395-0D2F-EBBD-C8B98CF1DF17";
	setAttr ".t" -type "double3" 0 1.0078987368741044 0 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" -0.14352126159175427 -1.4644624466583709 0.040404369674576834 ;
	setAttr ".sp" -type "double3" -0.14352126159175427 -1.4644624466583709 0.040404369674576834 ;
createNode mesh -n "pPyramid28ShapeOrig" -p "pPyramid28";
	rename -uid "FD1ED73D-4802-F1C9-0B04-1698502FE1EC";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 260 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.50000006 0 0.25 0.24999999
		 0.5 0.5 0.75 0.25 0.25 0.5 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.5 1 0.50000006
		 0 0.75 0.25 0.5 0.5 0.25 0.24999999 0.25 0.5 0.375 0.5 0.5 1 0.5 0.5 0.625 0.5 0.75
		 0.5 0.50000006 0 0.75 0.25 0.5 0.5 0.25 0.24999999 0.25 0.5 0.375 0.5 0.5 1 0.5 0.5
		 0.625 0.5 0.75 0.5 0.50000006 0 0.75 0.25 0.5 0.5 0.25 0.24999999 0.25 0.5 0.375
		 0.5 0.5 1 0.5 0.5 0.625 0.5 0.75 0.5 0.50000006 0 0.75 0.25 0.5 0.5 0.25 0.24999999
		 0.25 0.5 0.375 0.5 0.5 1 0.5 0.5 0.625 0.5 0.75 0.5 0.50000006 0 0.75 0.25 0.5 0.5
		 0.25 0.24999999 0.25 0.5 0.375 0.5 0.5 1 0.5 0.5 0.625 0.5 0.75 0.5 0.50000006 0
		 0.75 0.25 0.5 0.5 0.25 0.24999999 0.25 0.5 0.375 0.5 0.5 1 0.5 0.5 0.625 0.5 0.75
		 0.5 0.50000006 0 0.75 0.25 0.5 0.5 0.25 0.24999999 0.25 0.5 0.375 0.5 0.5 1 0.5 0.5
		 0.625 0.5 0.75 0.5 0.50000006 0 0.75 0.25 0.5 0.5 0.25 0.24999999 0.25 0.5 0.375
		 0.5 0.5 1 0.5 0.5 0.625 0.5 0.75 0.5 0.50000006 0 0.75 0.25 0.5 0.5 0.25 0.24999999
		 0.25 0.5 0.375 0.5 0.5 1 0.5 0.5 0.625 0.5 0.75 0.5 0.50000006 0 0.75 0.25 0.5 0.5
		 0.25 0.24999999 0.25 0.5 0.375 0.5 0.5 1 0.5 0.5 0.625 0.5 0.75 0.5 0.50000006 0
		 0.75 0.25 0.5 0.5 0.25 0.24999999 0.25 0.5 0.375 0.5 0.5 1 0.5 0.5 0.625 0.5 0.75
		 0.5 0.50000006 0 0.75 0.25 0.5 0.5 0.25 0.24999999 0.25 0.5 0.375 0.5 0.5 1 0.5 0.5
		 0.625 0.5 0.75 0.5 0.50000006 0 0.75 0.25 0.5 0.5 0.25 0.24999999 0.25 0.5 0.375
		 0.5 0.5 1 0.5 0.5 0.625 0.5 0.75 0.5 0.50000006 0 0.75 0.25 0.5 0.5 0.25 0.24999999
		 0.25 0.5 0.375 0.5 0.5 1 0.5 0.5 0.625 0.5 0.75 0.5 0.50000006 0 0.75 0.25 0.5 0.5
		 0.25 0.24999999 0.25 0.5 0.375 0.5 0.5 1 0.5 0.5 0.625 0.5 0.75 0.5 0.50000006 0
		 0.75 0.25 0.5 0.5 0.25 0.24999999 0.25 0.5 0.375 0.5 0.5 1 0.5 0.5 0.625 0.5 0.75
		 0.5 0.50000006 0 0.75 0.25 0.5 0.5 0.25 0.24999999 0.25 0.5 0.375 0.5 0.5 1 0.5 0.5
		 0.625 0.5 0.75 0.5 0.50000006 0 0.75 0.25 0.5 0.5 0.25 0.24999999 0.25 0.5 0.375
		 0.5 0.5 1 0.5 0.5 0.625 0.5 0.75 0.5 0.50000006 0 0.75 0.25 0.5 0.5 0.25 0.24999999
		 0.25 0.5 0.375 0.5 0.5 1 0.5 0.5 0.625 0.5 0.75 0.5 0.50000006 0 0.75 0.25 0.5 0.5
		 0.25 0.24999999 0.25 0.5 0.375 0.5 0.5 1 0.5 0.5 0.625 0.5 0.75 0.5 0.50000006 0
		 0.75 0.25 0.5 0.5 0.25 0.24999999 0.25 0.5 0.375 0.5 0.5 1 0.5 0.5 0.625 0.5 0.75
		 0.5 0.50000006 0 0.75 0.25 0.5 0.5 0.25 0.24999999 0.25 0.5 0.375 0.5 0.5 1 0.5 0.5
		 0.625 0.5 0.75 0.5 0.50000006 0 0.75 0.25 0.5 0.5 0.25 0.24999999 0.25 0.5 0.375
		 0.5 0.5 1 0.5 0.5 0.625 0.5 0.75 0.5 0.50000006 0 0.75 0.25 0.5 0.5 0.25 0.24999999
		 0.25 0.5 0.375 0.5 0.5 1 0.5 0.5 0.625 0.5 0.75 0.5;
	setAttr ".uvst[0].uvsp[250:259]" 0.50000006 0 0.75 0.25 0.5 0.5 0.25 0.24999999
		 0.25 0.5 0.375 0.5 0.5 1 0.5 0.5 0.625 0.5 0.75 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 130 ".vt[0:129]"  3.3186076e-008 0.072837949 -0.46669638 -0.25306964 0.32590756 -0.18800402
		 -1.1062026e-008 0.57897723 -0.46669638 0.25306964 0.32590759 -0.18800402 0 0.32590759 -2.63730955
		 -0.029409736 0.610223 -0.081735469 -0.029409073 0.610223 0.081734747 0.13406114 0.610223 0.081735425
		 0.13406047 0.610223 -0.081734784 0.052325718 1.3594954 0 3.3186076e-008 0.57897723 0.47751546
		 -0.25306964 0.32590762 0.19882309 -1.1062026e-008 0.072837949 0.47751546 0.25306964 0.32590759 0.19882309
		 0 0.32590759 2.64812875 -0.041161329 0.19287208 -3.49108243 -0.1495225 0.29383749 -3.50241089
		 -0.053867899 0.38964021 -3.56353807 0.054493263 0.28867483 -3.55220938 -0.14940283 0.13686544 -3.92872214
		 0.023716643 0.18694532 -3.49539328 -0.059696093 0.26983598 -3.56371498 0.02937334 0.37155989 -3.5490427
		 0.11278608 0.28866923 -3.480721 0.20520702 0.17289053 -3.86938643 -0.053976558 0.27947152 -3.58615518
		 -0.14086561 0.35831538 -3.51737785 -0.043252401 0.4515847 -3.5009799 0.04363665 0.37274083 -3.56975722
		 -0.16067444 0.54358286 -3.88925219 6.3938714e-008 0.61654401 0.70710677 -0.48758247 0.61654401 6.1817239e-008
		 -2.1312907e-008 0.61654401 -0.70710677 0.48758247 0.61654401 -1.4577438e-016 0 -1.76413226 1.4577438e-016
		 2.5188754e-008 0.52171242 -3.49776769 -0.19208387 0.32962856 -3.49776769 -8.3962526e-009 0.13754466 -3.49776769
		 0.19208387 0.32962853 -3.49776769 0 0.32962853 -1.60353684 3.10134e-008 -1.21381927 0.07730867
		 -0.23650132 -1.21381927 0.31380996 -1.0337802e-008 -1.21381927 0.55031133 0.23650132 -1.21381927 0.31380999
		 0 -0.5879302 0.31380999 3.0831671e-008 -1.21586943 0.55259448 -0.2351155 -1.21586943 0.31767625
		 -1.0277225e-008 -1.21586943 0.082757965 0.2351155 -1.21586943 0.31767622 0 -4.43956375 0.31767622
		 2.5188754e-008 0.13754466 -3.4944613 -0.19208387 0.3296285 -3.4944613 -8.3962526e-009 0.52171242 -3.4944613
		 0.19208387 0.32962853 -3.4944613 -8.0957294e-009 0.32962853 -3.74224067 0.065935172 0.33372489 -3.56453848
		 0.0041876063 0.38921291 -3.56352353 0.044931822 0.43350732 -3.5063343 0.10667938 0.3780193 -3.50734925
		 0.16755307 0.51165903 -3.71448731 -0.009013488 -5.025219917 0.0077235699 -0.37155241 -5.025219917 0.32192886
		 -0.0090135513 -5.025219917 0.63613397 1.0055410862 -5.025219917 0.32192877 -0.0090135355 -4.48175859 0.32192877
		 -0.009013488 -5.025219917 -0.6215961 -0.37155241 -5.025219917 -0.30739078 -0.0090135513 -5.025219917 0.0068143308
		 1.0055410862 -5.025219917 -0.30739087 -0.0090135355 -4.48175859 -0.30739087 3.0707511e-008 -4.88583183 0.088824078
		 -0.23416869 -4.88583183 0.32299274 -1.0235839e-008 -4.88583183 0.55716145 0.23416869 -4.88583183 0.32299277
		 0 -2.84879017 0.32299277 3.0707511e-008 -4.88583183 -0.54155958 -0.23416869 -4.88583183 -0.3073909
		 -1.0235839e-008 -4.88583183 -0.073222175 0.23416869 -4.88583183 -0.30739087 0 -2.84879017 -0.30739087
		 0.47342014 1.64136684 -0.1155914 0.47342014 1.75695729 -3.0355817e-008 0.47342014 1.64136684 0.11559135
		 0.47342014 1.52577639 -2.0250539e-008 1.22269249 1.64136684 0 3.10134e-008 -1.21381927 -0.5438922
		 -0.23650132 -1.21381927 -0.3073909 -1.0337802e-008 -1.21381927 -0.070889547 0.23650132 -1.21381927 -0.30739087
		 0 -0.5879302 -0.30739087 3.0831671e-008 -1.21586943 -0.068606392 -0.2351155 -1.21586943 -0.30352461
		 -1.0277225e-008 -1.21586943 -0.53844291 0.2351155 -1.21586943 -0.30352464 0 -4.43956375 -0.30352464
		 0.0061579943 0.39222586 3.7064743 0.058524668 0.32780993 3.70545959 0.10477975 0.3663139 3.64827013
		 0.052413076 0.43072984 3.64928508 0.18889952 0.48492047 3.85642314 0.19065499 0.31707528 3.63970351
		 -0.010692507 0.13472506 3.63970351 -0.19304274 0.33607259 3.63970351 0.0083047748 0.51842278 3.63970351
		 -0.001193881 0.32657394 1.74547267 -0.19304274 0.33607262 3.63639736 -0.010692567 0.13472506 3.63639736
		 0.19065499 0.31707525 3.63639736 0.0083047748 0.51842278 3.63639736 -0.001193881 0.32657391 3.88417673
		 -0.14252973 0.35731733 3.6373291 -0.063865274 0.26990765 3.70565081 0.042138726 0.35383779 3.69097853
		 -0.036525726 0.44124746 3.62265682 -0.1475925 0.53928065 4.011322021 -0.13981847 0.29222566 3.63301826
		 -0.044335127 0.17900425 3.64434671 0.05608058 0.2698043 3.7054739 -0.039402753 0.38302571 3.6941452
		 -0.20110919 0.18688615 4.07065773 -0.053958714 0.27514368 3.728091 0.020491987 0.18446209 3.65931368
		 0.11847425 0.27734363 3.64291573 0.044023544 0.36802527 3.71169329 0.20455319 0.15551589 4.031188011
		 0.56517029 2.096295357 0.7086913 -0.85221261 2.096295357 0.70869148 -0.85221273 2.096295357 -0.70869136
		 0.56517017 2.096295357 -0.70869142 0.45828551 0.79902101 0;
	setAttr -s 208 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 0 0 0 4 0 1 4 0 2 4 0 3 4 0 5 6 0
		 6 7 0 7 8 0 8 5 0 5 9 0 6 9 0 7 9 0 8 9 0 10 11 0 11 12 0 12 13 0 13 10 0 10 14 0
		 11 14 0 12 14 0 13 14 0 15 16 0 16 17 0 17 18 0 18 15 0 15 19 0 16 19 0 17 19 0 18 19 0
		 20 21 0 21 22 0 22 23 0 23 20 0 20 24 0 21 24 0 22 24 0 23 24 0 25 26 0 26 27 0 27 28 0
		 28 25 0 25 29 0 26 29 0 27 29 0 28 29 0 30 31 0 31 32 0 32 33 0 33 30 0 30 34 0 31 34 0
		 32 34 0 33 34 0 35 36 0 36 37 0 37 38 0 38 35 0 35 39 0 36 39 0 37 39 0 38 39 0 40 41 0
		 41 42 0 42 43 0 43 40 0 40 44 0 41 44 0 42 44 0 43 44 0 45 46 0 46 47 0 47 48 0 48 45 0
		 45 49 0 46 49 0 47 49 0 48 49 0 50 51 0 51 52 0 52 53 0 53 50 0 50 54 0 51 54 0 52 54 0
		 53 54 0 55 56 0 56 57 0 57 58 0 58 55 0 55 59 0 56 59 0 57 59 0 58 59 0 60 61 0 61 62 0
		 62 63 0 63 60 0 60 64 0 61 64 0 62 64 0 63 64 0 65 66 0 66 67 0 67 68 0 68 65 0 65 69 0
		 66 69 0 67 69 0 68 69 0 70 71 0 71 72 0 72 73 0 73 70 0 70 74 0 71 74 0 72 74 0 73 74 0
		 75 76 0 76 77 0 77 78 0 78 75 0 75 79 0 76 79 0 77 79 0 78 79 0 80 81 0 81 82 0 82 83 0
		 83 80 0 80 84 0 81 84 0 82 84 0 83 84 0 85 86 0 86 87 0 87 88 0 88 85 0 85 89 0 86 89 0
		 87 89 0 88 89 0 90 91 0 91 92 0 92 93 0 93 90 0 90 94 0 91 94 0 92 94 0 93 94 0 95 96 0
		 96 97 0 97 98 0 98 95 0 95 99 0 96 99 0 97 99 0 98 99 0 100 101 0 101 102 0 102 103 0
		 103 100 0 100 104 0 101 104 0;
	setAttr ".ed[166:207]" 102 104 0 103 104 0 105 106 0 106 107 0 107 108 0 108 105 0
		 105 109 0 106 109 0 107 109 0 108 109 0 110 111 0 111 112 0 112 113 0 113 110 0 110 114 0
		 111 114 0 112 114 0 113 114 0 115 116 0 116 117 0 117 118 0 118 115 0 115 119 0 116 119 0
		 117 119 0 118 119 0 120 121 0 121 122 0 122 123 0 123 120 0 120 124 0 121 124 0 122 124 0
		 123 124 0 125 126 0 126 127 0 127 128 0 128 125 0 125 129 0 126 129 0 127 129 0 128 129 0;
	setAttr -s 130 -ch 416 ".fc[0:129]" -type "polyFaces" 
		f 4 -4 -3 -2 -1
		mu 0 4 0 3 2 1
		f 3 0 5 -5
		mu 0 3 4 5 9
		f 3 1 6 -6
		mu 0 3 5 6 9
		f 3 2 7 -7
		mu 0 3 6 7 9
		f 3 3 4 -8
		mu 0 3 7 8 9
		f 4 -12 -11 -10 -9
		mu 0 4 10 11 12 13
		f 3 8 13 -13
		mu 0 3 14 15 16
		f 3 9 14 -14
		mu 0 3 15 17 16
		f 3 10 15 -15
		mu 0 3 17 18 16
		f 3 11 12 -16
		mu 0 3 18 19 16
		f 4 -20 -19 -18 -17
		mu 0 4 20 21 22 23
		f 3 16 21 -21
		mu 0 3 24 25 26
		f 3 17 22 -22
		mu 0 3 25 27 26
		f 3 18 23 -23
		mu 0 3 27 28 26
		f 3 19 20 -24
		mu 0 3 28 29 26
		f 4 -28 -27 -26 -25
		mu 0 4 30 31 32 33
		f 3 24 29 -29
		mu 0 3 34 35 36
		f 3 25 30 -30
		mu 0 3 35 37 36
		f 3 26 31 -31
		mu 0 3 37 38 36
		f 3 27 28 -32
		mu 0 3 38 39 36
		f 4 -36 -35 -34 -33
		mu 0 4 40 41 42 43
		f 3 32 37 -37
		mu 0 3 44 45 46
		f 3 33 38 -38
		mu 0 3 45 47 46
		f 3 34 39 -39
		mu 0 3 47 48 46
		f 3 35 36 -40
		mu 0 3 48 49 46
		f 4 -44 -43 -42 -41
		mu 0 4 50 51 52 53
		f 3 40 45 -45
		mu 0 3 54 55 56
		f 3 41 46 -46
		mu 0 3 55 57 56
		f 3 42 47 -47
		mu 0 3 57 58 56
		f 3 43 44 -48
		mu 0 3 58 59 56
		f 4 -52 -51 -50 -49
		mu 0 4 60 61 62 63
		f 3 48 53 -53
		mu 0 3 64 65 66
		f 3 49 54 -54
		mu 0 3 65 67 66
		f 3 50 55 -55
		mu 0 3 67 68 66
		f 3 51 52 -56
		mu 0 3 68 69 66
		f 4 -60 -59 -58 -57
		mu 0 4 70 71 72 73
		f 3 56 61 -61
		mu 0 3 74 75 76
		f 3 57 62 -62
		mu 0 3 75 77 76
		f 3 58 63 -63
		mu 0 3 77 78 76
		f 3 59 60 -64
		mu 0 3 78 79 76
		f 4 -68 -67 -66 -65
		mu 0 4 80 81 82 83
		f 3 64 69 -69
		mu 0 3 84 85 86
		f 3 65 70 -70
		mu 0 3 85 87 86
		f 3 66 71 -71
		mu 0 3 87 88 86
		f 3 67 68 -72
		mu 0 3 88 89 86
		f 4 -76 -75 -74 -73
		mu 0 4 90 91 92 93
		f 3 72 77 -77
		mu 0 3 94 95 96
		f 3 73 78 -78
		mu 0 3 95 97 96
		f 3 74 79 -79
		mu 0 3 97 98 96
		f 3 75 76 -80
		mu 0 3 98 99 96
		f 4 -84 -83 -82 -81
		mu 0 4 100 101 102 103
		f 3 80 85 -85
		mu 0 3 104 105 106
		f 3 81 86 -86
		mu 0 3 105 107 106
		f 3 82 87 -87
		mu 0 3 107 108 106
		f 3 83 84 -88
		mu 0 3 108 109 106
		f 4 -92 -91 -90 -89
		mu 0 4 110 111 112 113
		f 3 88 93 -93
		mu 0 3 114 115 116
		f 3 89 94 -94
		mu 0 3 115 117 116
		f 3 90 95 -95
		mu 0 3 117 118 116
		f 3 91 92 -96
		mu 0 3 118 119 116
		f 4 -100 -99 -98 -97
		mu 0 4 120 121 122 123
		f 3 96 101 -101
		mu 0 3 124 125 126
		f 3 97 102 -102
		mu 0 3 125 127 126
		f 3 98 103 -103
		mu 0 3 127 128 126
		f 3 99 100 -104
		mu 0 3 128 129 126
		f 4 -108 -107 -106 -105
		mu 0 4 130 131 132 133
		f 3 104 109 -109
		mu 0 3 134 135 136
		f 3 105 110 -110
		mu 0 3 135 137 136
		f 3 106 111 -111
		mu 0 3 137 138 136
		f 3 107 108 -112
		mu 0 3 138 139 136
		f 4 -116 -115 -114 -113
		mu 0 4 140 141 142 143
		f 3 112 117 -117
		mu 0 3 144 145 146
		f 3 113 118 -118
		mu 0 3 145 147 146
		f 3 114 119 -119
		mu 0 3 147 148 146
		f 3 115 116 -120
		mu 0 3 148 149 146
		f 4 -124 -123 -122 -121
		mu 0 4 150 151 152 153
		f 3 120 125 -125
		mu 0 3 154 155 156
		f 3 121 126 -126
		mu 0 3 155 157 156
		f 3 122 127 -127
		mu 0 3 157 158 156
		f 3 123 124 -128
		mu 0 3 158 159 156
		f 4 -132 -131 -130 -129
		mu 0 4 160 161 162 163
		f 3 128 133 -133
		mu 0 3 164 165 166
		f 3 129 134 -134
		mu 0 3 165 167 166
		f 3 130 135 -135
		mu 0 3 167 168 166
		f 3 131 132 -136
		mu 0 3 168 169 166
		f 4 -140 -139 -138 -137
		mu 0 4 170 171 172 173
		f 3 136 141 -141
		mu 0 3 174 175 176
		f 3 137 142 -142
		mu 0 3 175 177 176
		f 3 138 143 -143
		mu 0 3 177 178 176
		f 3 139 140 -144
		mu 0 3 178 179 176
		f 4 -148 -147 -146 -145
		mu 0 4 180 181 182 183
		f 3 144 149 -149
		mu 0 3 184 185 186
		f 3 145 150 -150
		mu 0 3 185 187 186
		f 3 146 151 -151
		mu 0 3 187 188 186
		f 3 147 148 -152
		mu 0 3 188 189 186
		f 4 -156 -155 -154 -153
		mu 0 4 190 191 192 193
		f 3 152 157 -157
		mu 0 3 194 195 196
		f 3 153 158 -158
		mu 0 3 195 197 196
		f 3 154 159 -159
		mu 0 3 197 198 196
		f 3 155 156 -160
		mu 0 3 198 199 196
		f 4 -164 -163 -162 -161
		mu 0 4 200 201 202 203
		f 3 160 165 -165
		mu 0 3 204 205 206
		f 3 161 166 -166
		mu 0 3 205 207 206
		f 3 162 167 -167
		mu 0 3 207 208 206
		f 3 163 164 -168
		mu 0 3 208 209 206
		f 4 -172 -171 -170 -169
		mu 0 4 210 211 212 213
		f 3 168 173 -173
		mu 0 3 214 215 216
		f 3 169 174 -174
		mu 0 3 215 217 216
		f 3 170 175 -175
		mu 0 3 217 218 216
		f 3 171 172 -176
		mu 0 3 218 219 216
		f 4 -180 -179 -178 -177
		mu 0 4 220 221 222 223
		f 3 176 181 -181
		mu 0 3 224 225 226
		f 3 177 182 -182
		mu 0 3 225 227 226
		f 3 178 183 -183
		mu 0 3 227 228 226
		f 3 179 180 -184
		mu 0 3 228 229 226
		f 4 -188 -187 -186 -185
		mu 0 4 230 231 232 233
		f 3 184 189 -189
		mu 0 3 234 235 236
		f 3 185 190 -190
		mu 0 3 235 237 236
		f 3 186 191 -191
		mu 0 3 237 238 236
		f 3 187 188 -192
		mu 0 3 238 239 236
		f 4 -196 -195 -194 -193
		mu 0 4 240 241 242 243
		f 3 192 197 -197
		mu 0 3 244 245 246
		f 3 193 198 -198
		mu 0 3 245 247 246
		f 3 194 199 -199
		mu 0 3 247 248 246
		f 3 195 196 -200
		mu 0 3 248 249 246
		f 4 -204 -203 -202 -201
		mu 0 4 250 251 252 253
		f 3 200 205 -205
		mu 0 3 254 255 256
		f 3 201 206 -206
		mu 0 3 255 257 256
		f 3 202 207 -207
		mu 0 3 257 258 256
		f 3 203 204 -208
		mu 0 3 258 259 256;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface1" -p "pPyramid28";
	rename -uid "D2BB0710-40B4-8A65-434A-2D860534EDBA";
createNode transform -n "transform2" -p "polySurface1";
	rename -uid "0B1FDEBD-4EAA-3D16-F7B7-BF91FF5DF4E8";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape1" -p "transform2";
	rename -uid "BBA4C40D-4E7E-0D92-0EEA-20B3B478EC20";
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
createNode transform -n "polySurface2" -p "pPyramid28";
	rename -uid "96D3234C-4F44-FE7A-4DBC-F79EE9B389FF";
createNode transform -n "transform3" -p "polySurface2";
	rename -uid "15638F72-487C-0E05-5778-7D93C98CBB1A";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape2" -p "transform3";
	rename -uid "CFE2CA2B-4BEA-90C1-2145-09BE5692DFB2";
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
createNode transform -n "polySurface3" -p "pPyramid28";
	rename -uid "B05F6CB6-44EB-7863-2AEF-78BDE8E49F56";
createNode transform -n "transform4" -p "polySurface3";
	rename -uid "5B970E3F-438A-FB3F-816E-5A82C2A13F44";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape3" -p "transform4";
	rename -uid "A8ACDBCF-42F5-CEDB-156F-8D8C7D78DD7D";
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
createNode transform -n "polySurface4" -p "pPyramid28";
	rename -uid "2C640843-4E92-2670-BDF1-3583C8B75760";
	setAttr ".t" -type "double3" 0 0 -0.74229899549070111 ;
createNode transform -n "transform5" -p "polySurface4";
	rename -uid "8F2743E7-49C7-2BCD-2C66-4C882C8CF07B";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape4" -p "transform5";
	rename -uid "C99EDFAF-4610-F888-1BFD-E7A2B2D29DA2";
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
createNode transform -n "polySurface5" -p "pPyramid28";
	rename -uid "FE641CDD-438C-9750-9103-2BAD4BEFAF9B";
	setAttr ".t" -type "double3" 0 0 -0.74229899549070111 ;
createNode transform -n "transform6" -p "polySurface5";
	rename -uid "3A0AE08C-482A-D59E-FF21-FD82083A526B";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape5" -p "transform6";
	rename -uid "3DB40D3F-46A6-7A28-7EF2-96AC328EAE8F";
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
createNode transform -n "polySurface6" -p "pPyramid28";
	rename -uid "9546AF6B-4DCD-7438-AE96-108F522D1EC2";
	setAttr ".t" -type "double3" 0 0 -0.74229899549070111 ;
createNode transform -n "transform7" -p "polySurface6";
	rename -uid "653B5397-4151-7CFB-4DEA-748074959EDE";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape6" -p "transform7";
	rename -uid "CA94F1D3-471A-4E7E-4398-AA9EF585CC25";
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
createNode transform -n "polySurface7" -p "pPyramid28";
	rename -uid "69E171D9-492E-02A2-6DCC-A1AE4BDA66A3";
createNode transform -n "transform8" -p "polySurface7";
	rename -uid "4914AB1C-482C-485F-94A4-16B904B8254C";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape7" -p "transform8";
	rename -uid "07273407-4C5B-2C3E-D063-4A8955184E8C";
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
createNode transform -n "polySurface8" -p "pPyramid28";
	rename -uid "8738C679-4709-68C3-BA44-82982F794F54";
	setAttr ".t" -type "double3" 0 0 -0.74229899549070111 ;
createNode transform -n "transform9" -p "polySurface8";
	rename -uid "93EFBEA7-4807-BE9E-CDC8-E9B29FC1F5BB";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape8" -p "transform9";
	rename -uid "B344027D-4063-A4DB-5AFA-A38FFDCC0117";
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
createNode transform -n "polySurface9" -p "pPyramid28";
	rename -uid "968026B7-4D2D-DFC1-C9A4-D9B70CBB841D";
createNode transform -n "transform23" -p "polySurface9";
	rename -uid "E8514FB2-4B3F-B030-AFF6-13A108BD895E";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape9" -p "transform23";
	rename -uid "E00F45F4-4786-79CE-E8D1-88861D5EAC6F";
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
createNode transform -n "polySurface10" -p "pPyramid28";
	rename -uid "8C2341A7-482C-BD00-36C2-A78BCBF871DA";
createNode transform -n "transform27" -p "|pPyramid28|polySurface10";
	rename -uid "B3D8FE31-4C3A-0D83-E826-E99E1705EEBD";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape10" -p "transform27";
	rename -uid "26B2E072-4270-BBB9-DAD1-FDA201639E34";
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
createNode transform -n "polySurface11" -p "pPyramid28";
	rename -uid "4542D966-486E-7D68-9AF3-D9AADF878B3B";
	setAttr ".t" -type "double3" 0 0 -0.74229899549070111 ;
createNode transform -n "transform25" -p "polySurface11";
	rename -uid "04B7FE00-439B-C845-5C3D-7098C84E3F3C";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape11" -p "transform25";
	rename -uid "407A9CC0-422D-9ABD-DF83-78AFC79BDEBE";
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
createNode transform -n "polySurface12" -p "pPyramid28";
	rename -uid "842DA916-4BD4-F0D3-116A-D49A2473C423";
	setAttr ".t" -type "double3" 0 0 -0.74229899549070111 ;
createNode transform -n "transform26" -p "polySurface12";
	rename -uid "BD967AEE-4B40-79CA-67D6-7DA067FD5C31";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape12" -p "transform26";
	rename -uid "05B07737-463D-1481-47B0-228BC742A5CD";
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
createNode transform -n "polySurface13" -p "pPyramid28";
	rename -uid "18912692-4FF3-C5F3-DEAA-9795D1937F84";
	setAttr ".t" -type "double3" 0 -1.2733813411354804 0 ;
createNode transform -n "transform24" -p "polySurface13";
	rename -uid "A32F934F-4F01-C214-6BA1-A89C78BF2209";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape13" -p "transform24";
	rename -uid "49B2B542-465E-9C27-F507-06BDDB12585F";
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
createNode transform -n "polySurface14" -p "pPyramid28";
	rename -uid "DF474C31-4250-0E4C-A26A-2F8DBA148A2A";
	setAttr ".t" -type "double3" 0 -1.2733813411354804 0 ;
createNode transform -n "transform14" -p "polySurface14";
	rename -uid "04110A71-4EB9-8CF3-C5C1-368BC9B5368D";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape14" -p "transform14";
	rename -uid "B30715EA-4C28-E013-59BF-97B1C177D02C";
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
createNode transform -n "polySurface15" -p "pPyramid28";
	rename -uid "BA0468E4-4843-AC8B-E935-64830E428E95";
	setAttr ".t" -type "double3" 0 -1.2248118553978413 0 ;
createNode transform -n "transform10" -p "polySurface15";
	rename -uid "7972696C-4C2F-1A44-72A9-FB87858D6940";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape15" -p "transform10";
	rename -uid "7A3BBE93-4B00-B32B-A112-31B9769FE1B3";
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
createNode transform -n "polySurface16" -p "pPyramid28";
	rename -uid "47F37DF1-4439-E720-19A5-1DAB24B4D26F";
	setAttr ".t" -type "double3" 0 -1.2578722941459364 0 ;
createNode transform -n "transform13" -p "polySurface16";
	rename -uid "A8649D0B-4D89-43D6-08CF-AD8E6DCF9D21";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape16" -p "transform13";
	rename -uid "EA575E44-4A7F-7D0E-0787-FABED1C57F88";
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
createNode transform -n "polySurface17" -p "pPyramid28";
	rename -uid "5217D505-4A0A-9FD7-B409-71BEFC743702";
createNode transform -n "transform11" -p "polySurface17";
	rename -uid "D26D1868-4B2D-B581-FD08-F2AC528769E8";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape17" -p "transform11";
	rename -uid "B768292B-4657-D794-2C1C-80A8E6BE7452";
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
createNode transform -n "polySurface18" -p "pPyramid28";
	rename -uid "27FFEC9C-4F63-3F3F-3930-37A13675450A";
createNode transform -n "transform12" -p "polySurface18";
	rename -uid "E04B8F04-4608-0207-3F0F-8F8B44A1E226";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape18" -p "transform12";
	rename -uid "4E117876-4BBB-F58C-1F21-00A62C45FC7E";
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
createNode transform -n "polySurface19" -p "pPyramid28";
	rename -uid "046D8A3C-476C-F3AC-04FC-BDACFB3B3291";
createNode transform -n "transform15" -p "polySurface19";
	rename -uid "2EC85BE7-48C6-98FC-FF72-74B50386AA0D";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape19" -p "transform15";
	rename -uid "8C7D4F78-4F0F-E348-BE15-7EADC6517E53";
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
createNode transform -n "polySurface20" -p "pPyramid28";
	rename -uid "A00FA9DD-4EBB-281F-AB5B-579D7FF24955";
	setAttr ".t" -type "double3" 0 0 0.54062972356075889 ;
createNode transform -n "transform18" -p "polySurface20";
	rename -uid "15A6E8A7-4AF4-93F7-8E04-A898FD4DEC16";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape20" -p "transform18";
	rename -uid "FBAC682C-4465-8FE9-4B57-BAA356B0BC4F";
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
createNode transform -n "polySurface21" -p "pPyramid28";
	rename -uid "7022294A-4554-91FF-BA37-0D969716D23B";
	setAttr ".t" -type "double3" 0 0 0.54062972356075889 ;
createNode transform -n "transform17" -p "polySurface21";
	rename -uid "69F60F67-42DB-4D55-E346-58A240F17A96";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape21" -p "transform17";
	rename -uid "3640C60F-42EE-41B8-1102-AC8D7C454392";
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
createNode transform -n "polySurface22" -p "pPyramid28";
	rename -uid "35AB26C5-4674-0BD7-F964-C1BDA1FC6ADC";
	setAttr ".t" -type "double3" 0 0 0.54062972356075889 ;
createNode transform -n "transform16" -p "polySurface22";
	rename -uid "096B4409-49B3-351D-A847-B098DB3F9F83";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape22" -p "transform16";
	rename -uid "EB5EA012-4FF7-EA26-94DD-F29FCFC19738";
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
createNode transform -n "polySurface23" -p "pPyramid28";
	rename -uid "0A74693B-4F0C-7905-9AA4-7994A3B7B801";
	setAttr ".t" -type "double3" 0 0 0.54062972356075889 ;
createNode transform -n "transform21" -p "polySurface23";
	rename -uid "259DB96F-491F-6257-ECFE-7EB8BF43D91B";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape23" -p "transform21";
	rename -uid "70C1815B-4462-EBEE-1526-B8A1C4168B11";
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
createNode transform -n "polySurface24" -p "pPyramid28";
	rename -uid "068757B9-495A-9E5D-8672-FCB902D481BE";
	setAttr ".t" -type "double3" 0 0 0.54062972356075889 ;
createNode transform -n "transform20" -p "polySurface24";
	rename -uid "98412C5B-49E7-E5A4-753D-2B87EE5F8BF4";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape24" -p "transform20";
	rename -uid "AC6C448D-4F41-BD0D-E4B6-4793C5832EAD";
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
createNode transform -n "polySurface25" -p "pPyramid28";
	rename -uid "F0678944-412C-FA47-B29C-C3B243514021";
	setAttr ".t" -type "double3" 0 0 0.54062972356075889 ;
createNode transform -n "transform19" -p "polySurface25";
	rename -uid "B495495F-483E-A3A8-C027-4596C780EB4A";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape25" -p "transform19";
	rename -uid "6444BEF3-4843-8589-A6F1-FD8351C8BC66";
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
createNode transform -n "polySurface26" -p "pPyramid28";
	rename -uid "219566CE-4C0B-5E47-D825-7BAC668AE637";
createNode transform -n "transform22" -p "polySurface26";
	rename -uid "A99AA224-4055-5580-D0AF-B19AF9B2079E";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape26" -p "transform22";
	rename -uid "DC8270A8-4455-5143-66C5-0A970CE0BE74";
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
createNode transform -n "transform1" -p "pPyramid28";
	rename -uid "4A2FBF6C-4954-B0BD-1752-FDBBA3FF3483";
	setAttr ".v" no;
createNode mesh -n "pPyramid28Shape" -p "transform1";
	rename -uid "7F4EAD61-4C76-16FF-19BF-DD931580FCDB";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.25 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
createNode transform -n "polySurface10";
	rename -uid "0FFAD363-4712-7B3A-3185-8BABCD101C5F";
	setAttr ".rp" -type "double3" 0.18523988127708435 -1.0932542139670731 -0.029866842500310575 ;
	setAttr ".sp" -type "double3" 0.18523988127708435 -1.0932542139670731 -0.029866842500310575 ;
createNode transform -n "polySurface27" -p "|polySurface10";
	rename -uid "30CB7B71-46C9-7B09-E279-AABFDACA05D8";
createNode transform -n "transform42" -p "polySurface27";
	rename -uid "FAE8FE09-495B-9425-CFFE-239BD1E28AB0";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape27" -p "transform42";
	rename -uid "FDF3C769-44EE-5102-3A49-24BC71D91FB3";
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
createNode transform -n "polySurface28" -p "|polySurface10";
	rename -uid "3B72C85F-4D47-9FA4-3D4F-96BF1BD896EE";
createNode transform -n "transform43" -p "polySurface28";
	rename -uid "61EED4A3-436C-4B97-6B84-3EA3BB42E2C6";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape28" -p "transform43";
	rename -uid "2466E344-4617-6708-31CC-94A5A5E8159B";
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
createNode transform -n "polySurface29" -p "|polySurface10";
	rename -uid "A7369BC5-484F-B379-E493-B686B551A96E";
createNode transform -n "transform44" -p "polySurface29";
	rename -uid "993E0C18-4168-695D-9245-6AA2E0A5FA73";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape29" -p "transform44";
	rename -uid "6788EE66-4806-483E-655C-479CC2D73E5B";
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
createNode transform -n "polySurface30" -p "|polySurface10";
	rename -uid "C3664A17-4C50-C3E6-1B81-C8BC1DEC7C76";
	setAttr ".t" -type "double3" 0 -0.86067779720114423 0 ;
createNode transform -n "transform45" -p "polySurface30";
	rename -uid "D4224B90-40E7-136B-E764-ED9D10AE244F";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape30" -p "transform45";
	rename -uid "65155C05-4A7D-F599-B593-9AB03877A76D";
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
createNode transform -n "polySurface31" -p "|polySurface10";
	rename -uid "0C858245-4095-04BB-32DB-B8B28E3DB1A7";
createNode transform -n "transform46" -p "polySurface31";
	rename -uid "85B3E80F-4560-27DC-94BC-3BBE6A7C64DD";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape31" -p "transform46";
	rename -uid "0B1844B0-483A-22C3-4B56-80B3B7885267";
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
createNode transform -n "polySurface32" -p "|polySurface10";
	rename -uid "8DC28655-4B81-FEFD-E8AD-F58C2745BF9F";
createNode transform -n "transform47" -p "polySurface32";
	rename -uid "12045FE6-4361-3F47-C88F-C996767EE3EF";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape32" -p "transform47";
	rename -uid "E2A99EAC-4191-3674-107D-5382BBCC8462";
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
createNode transform -n "polySurface33" -p "|polySurface10";
	rename -uid "EBE799D5-4081-D8C5-F712-FD9C67C3C5D9";
createNode transform -n "transform48" -p "polySurface33";
	rename -uid "10BE0FF4-4D27-7EDE-FF3D-578E23986A34";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape33" -p "transform48";
	rename -uid "310660D6-4D6B-886B-5023-7E8B19F2CA81";
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
createNode transform -n "polySurface34" -p "|polySurface10";
	rename -uid "84D6E04A-4665-524E-C92B-7FBF6671EFCC";
createNode transform -n "transform49" -p "polySurface34";
	rename -uid "01A461C9-416B-6865-7CC4-D399AD4EFAA4";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape34" -p "transform49";
	rename -uid "8F227883-49B3-5E34-9A4C-0EB823986BEC";
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
createNode transform -n "polySurface35" -p "|polySurface10";
	rename -uid "2FC0D02A-44E7-41FB-255F-AFBB9672A8D9";
createNode transform -n "transform50" -p "polySurface35";
	rename -uid "9806980F-401D-3C85-9DFC-80A09B8AB2E2";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape35" -p "transform50";
	rename -uid "D8CCAE5A-438D-7B6D-023C-90A932082E95";
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
createNode transform -n "polySurface36" -p "|polySurface10";
	rename -uid "36CF92E7-47D4-2498-0333-56AE84810087";
createNode transform -n "transform51" -p "polySurface36";
	rename -uid "62A4499E-4C9C-A6DF-F0B9-8EB1612388CD";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape36" -p "transform51";
	rename -uid "F9B5709A-4D4C-B9D0-4F83-6A814847BB4F";
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
createNode transform -n "polySurface37" -p "|polySurface10";
	rename -uid "58F8DA24-4B79-3812-F6CA-A195BF4CF126";
createNode transform -n "transform52" -p "polySurface37";
	rename -uid "2E47A83B-41E6-EDF1-151B-318C7F16B097";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape37" -p "transform52";
	rename -uid "DE9CA524-432C-C48B-A8A3-D69619E84DF9";
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
createNode transform -n "polySurface38" -p "|polySurface10";
	rename -uid "98260C30-4F84-49BB-2B56-64AF88F85BBF";
createNode transform -n "transform53" -p "polySurface38";
	rename -uid "2B8676F6-4629-729F-3403-9C826B3113D0";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape38" -p "transform53";
	rename -uid "8D7752E8-4158-60AB-81E1-E9B11E424249";
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
createNode transform -n "polySurface39" -p "|polySurface10";
	rename -uid "526EA25D-44D9-94EA-1E47-90B5F907EC75";
createNode transform -n "transform54" -p "|polySurface10|polySurface39";
	rename -uid "382E0AC9-4CE7-836F-15D7-A8ADF90BCABC";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape39" -p "transform54";
	rename -uid "BC40A19A-48F7-2FB1-FCC4-2095D17E9443";
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
createNode transform -n "polySurface40" -p "|polySurface10";
	rename -uid "B0927B80-4AA4-E82B-9780-72A47C9DA908";
	setAttr ".t" -type "double3" 0 -0.86067779720114423 0 ;
createNode transform -n "transform29" -p "polySurface40";
	rename -uid "F4459F2B-461C-B83E-F94C-3191C1A6F805";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape40" -p "transform29";
	rename -uid "FE78B7A3-4663-35E8-4E61-42BB75CB5FC7";
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
createNode transform -n "polySurface41" -p "|polySurface10";
	rename -uid "5F467559-43E6-D627-E1F8-5B8B80A1EA8F";
	setAttr ".t" -type "double3" 0 1.1736955492452847 0 ;
	setAttr ".s" -type "double3" 1 1.419968606381973 1 ;
createNode transform -n "transform30" -p "polySurface41";
	rename -uid "F5BD0D1F-4543-1093-C890-8D9D4C3F32A6";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape41" -p "transform30";
	rename -uid "75E49E15-48BC-A05D-B1DC-ABACAFABB529";
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
createNode transform -n "polySurface42" -p "|polySurface10";
	rename -uid "D3F1C51F-4BCE-385D-3470-39993469DBF3";
createNode transform -n "transform31" -p "polySurface42";
	rename -uid "BF759ABE-4950-50F7-FD6D-7BA125ABE562";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape42" -p "transform31";
	rename -uid "58D4E869-41D0-FE77-D1A6-52B8F4462A4D";
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
createNode transform -n "polySurface43" -p "|polySurface10";
	rename -uid "4DAF17F4-498A-2FE6-48B5-05A1BC3D3C80";
createNode transform -n "transform32" -p "polySurface43";
	rename -uid "DBD34E74-42CC-907C-0EAF-94985307AAA0";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape43" -p "transform32";
	rename -uid "3FF73872-45CC-F21B-A1DC-B1B9DFC0BCA2";
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
createNode transform -n "polySurface45" -p "|polySurface10";
	rename -uid "6FFF07B5-4854-8EB7-A91A-12ADDB9AD69A";
createNode transform -n "transform33" -p "polySurface45";
	rename -uid "802473B3-4349-AFF4-80CC-01AD14249B86";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape45" -p "transform33";
	rename -uid "094B9059-4ED4-6FFF-082D-11BD962D4CB7";
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
createNode transform -n "polySurface46" -p "|polySurface10";
	rename -uid "FE955E7A-4C2D-980F-7343-8587EF60B63F";
createNode transform -n "transform34" -p "polySurface46";
	rename -uid "AFBA267C-4E7C-A569-5CB9-B999F1BB6131";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape46" -p "transform34";
	rename -uid "52C9032D-4382-4103-88DB-109BC017D215";
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
createNode transform -n "polySurface47" -p "|polySurface10";
	rename -uid "32FFEC40-4934-24E3-9CB3-CCBAE9DB06A0";
createNode transform -n "transform35" -p "polySurface47";
	rename -uid "C2AB9C46-4744-AFB6-4E92-05938338EEBB";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape47" -p "transform35";
	rename -uid "04FD0EDE-4069-AACB-7266-97A48C3F811C";
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
createNode transform -n "polySurface48" -p "|polySurface10";
	rename -uid "B1F9618F-43E8-35C5-05AC-47A49F88362D";
createNode transform -n "transform36" -p "polySurface48";
	rename -uid "91C6751A-4506-03A7-E987-029695B6E665";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape48" -p "transform36";
	rename -uid "408F5F31-4ADB-DF00-0C3C-DEA8F9FFB0CD";
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
createNode transform -n "polySurface49" -p "|polySurface10";
	rename -uid "4036F8BE-4315-002B-B8CA-E69D6E1C430C";
createNode transform -n "transform37" -p "polySurface49";
	rename -uid "7434686E-4B76-FF06-FAE5-B5B33A05646E";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape49" -p "transform37";
	rename -uid "455D166B-4DD7-1D92-5CB4-29A5FAA24DC1";
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
createNode transform -n "polySurface50" -p "|polySurface10";
	rename -uid "980D001A-4094-5BAC-B78E-1DA6BE5B45B2";
createNode transform -n "transform38" -p "polySurface50";
	rename -uid "BDC874AA-470D-A8CB-8439-6DB50222CAE1";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape50" -p "transform38";
	rename -uid "DDBBD20D-473F-3047-4192-4BB3C70F9347";
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
createNode transform -n "polySurface51" -p "|polySurface10";
	rename -uid "DCF36EB2-442F-F37A-FD5A-A4B6A53C2910";
createNode transform -n "transform39" -p "polySurface51";
	rename -uid "3BF5311B-4314-93DC-B13A-E7A4E55775FE";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape51" -p "transform39";
	rename -uid "7AAE8C61-4D0C-634A-91E3-96A5A5A58CF4";
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
createNode transform -n "polySurface52" -p "|polySurface10";
	rename -uid "826F1579-415B-5CCF-1222-0A91FAEF9E38";
createNode transform -n "transform40" -p "polySurface52";
	rename -uid "E8F6ED08-49E9-11EE-BBC2-A0A58CD1AF77";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape52" -p "transform40";
	rename -uid "09358E48-4DCA-E94D-E60B-C5AF1475FB52";
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
createNode transform -n "transform28" -p "|polySurface10";
	rename -uid "84243AF3-4B72-FD54-1956-4AA7177C726B";
	setAttr ".v" no;
createNode mesh -n "polySurface10Shape" -p "transform28";
	rename -uid "6EA6D068-4DF5-2A80-BD05-C5A58CAE0B8B";
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
createNode transform -n "polySurface53" -p "|polySurface10";
	rename -uid "2542FF11-4949-0BCD-9C58-DF91A6256986";
	setAttr ".t" -type "double3" 0 1.1736955492452847 0.62158300263700905 ;
	setAttr ".s" -type "double3" 1 1.419968606381973 1 ;
createNode transform -n "transform41" -p "polySurface53";
	rename -uid "3CB6269B-44D6-8324-6C4D-8BB18EB03E1A";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape53" -p "transform41";
	rename -uid "6FB78033-4379-826D-0FC9-D4920D7825E2";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:4]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "vtx[0:4]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 10 ".uvst[0].uvsp[0:9]" -type "float2" 0.50000006 0 0.75
		 0.25 0.5 0.5 0.25 0.24999999 0.25 0.5 0.375 0.5 0.5 1 0.5 0.5 0.625 0.5 0.75 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 5 ".vt[0:4]"  3.0707511e-008 -5.13580561 -0.54155958 -0.23416869 -5.13580561 -0.3073909
		 -1.0235839e-008 -5.13580561 -0.073222175 0.23416869 -5.13580561 -0.30739087 0 -3.098763704 -0.30739087;
	setAttr -s 8 ".ed[0:7]"  0 1 0 1 2 0 2 3 0 3 0 0 0 4 0 1 4 0 2 4 0
		 3 4 0;
	setAttr -s 5 -ch 16 ".fc[0:4]" -type "polyFaces" 
		f 4 -4 -3 -2 -1
		mu 0 4 0 1 2 3
		f 3 0 5 -5
		mu 0 3 4 5 6
		f 3 1 6 -6
		mu 0 3 5 7 6
		f 3 2 7 -7
		mu 0 3 7 8 6
		f 3 3 4 -8
		mu 0 3 8 9 6;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface39";
	rename -uid "46C6C68A-410E-B438-B447-D8AC89F5ADB5";
	setAttr ".t" -type "double3" 0 0.14019217712066379 0 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 0.18523988127708435 -1.5235929879560408 -0.029866695404052734 ;
	setAttr ".sp" -type "double3" 0.18523988127708435 -1.5235929879560408 -0.029866695404052734 ;
createNode mesh -n "polySurface39Shape" -p "|polySurface39";
	rename -uid "A45B96A9-48EF-7E06-0CC6-0D8C24A20AEA";
	setAttr -k off ".v";
	setAttr -s 8 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
createNode mesh -n "polySurface39ShapeOrig" -p "|polySurface39";
	rename -uid "9743372D-45DE-7B29-64A4-55A901726930";
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
	rename -uid "A7B7FF72-4A45-2D88-889D-A794222B3030";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 89.999999999999986 -38.659808254072097 -90 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-016 -0.78086880944322645 0.62469504755417882 0
		 1.6653345369377341e-016 0.62469504755417904 0.78086880944322645 0 -0.99999999999999978 5.5511151231257802e-017 4.4408920985006262e-016 0
		 0 0.086423554773909173 0 1;
	setAttr ".radi" 0.52069835925959029;
createNode joint -n "joint2" -p "joint1";
	rename -uid "99929B81-43EF-D769-A6A1-6B9FA23D6CFF";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 0 -39.015678084693995 ;
	setAttr ".bps" -type "matrix" 6.7684516410386981e-017 -0.99998071117883447 -0.0062110603178814339 0
		 -3.9164120937780245e-016 0.0062110603178812118 -0.99998071117883436 0 0.99999999999999978 -5.4750515717497363e-017 -5.6655152756548791e-016 0
		 -4.9303806576313238e-032 -0.3456942190956378 0.34569421909541492 1;
	setAttr ".radi" 0.59221855909114141;
createNode joint -n "joint3" -p "joint2";
	rename -uid "08BC2C0B-4F36-6304-E21E-8BB4772BC0B3";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 6.4015567529319282e-015 -1.5016326687969805 ;
	setAttr ".bps" -type "matrix" 7.7924399957783309e-017 -0.99980005998000698 0.019996001199599638 0
		 5.1219768921191439e-016 0.019996001199599864 0.99980005998000698 0 -0.99999999999999978 5.7199319603981025e-017 6.8899172188967258e-016 0
		 -9.7251234737134415e-017 -3.1285326828155142 0.32840950814063219 1;
	setAttr ".radi" 0.58240819651907694;
createNode joint -n "joint4" -p "joint3";
	rename -uid "F61A162E-4671-CCE2-CEAC-09A1EE9F5E20";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -88.85423716182494 89.999999999999986 0 ;
	setAttr ".bps" -type "matrix" 0.99999999999999978 -3.9130963463401726e-016 -7.3783176794057505e-016 0
		 2.0988884201250477e-016 1 -9.367506770274778e-017 0 5.1365345679072692e-016 3.7816971776294395e-016 1 0
		 -1.8491220903793983e-016 -5.7212393260327898 0.38026364100497734 1;
	setAttr ".radi" 0.58240819651907694;
createNode joint -n "joint5" -p "joint1";
	rename -uid "A23E920A-40D4-C239-3604-4498BEFA840B";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -38.659808254072061 ;
	setAttr ".bps" -type "matrix" 6.9355082516507499e-017 -1 4.4408920985006262e-016 0
		 2.6875094475111686e-016 6.106226635438361e-016 0.99999999999999978 0 -0.99999999999999978 5.5511151231257802e-017 4.4408920985006262e-016 0
		 0 -0.32840950814085496 -0.31112479718629504 1;
	setAttr ".radi" 0.59310981937972374;
createNode joint -n "joint6" -p "joint5";
	rename -uid "4D413564-43E5-CE0E-C472-869F7608D286";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 -7.8067889758904301e-015 -0.76902468257836309 ;
	setAttr ".bps" -type "matrix" 6.5741765136918334e-017 -0.99990992613925156 -0.013421609746840776 0
		 -3.9212227408217511e-016 0.013421609746840613 -0.99990992613925123 0 0.99999999999999978 -5.3867478089670475e-017 -5.6654285889827273e-016 0
		 -1.9420277383563235e-016 -3.1285326828155129 -0.31112479718629449 1;
	setAttr ".radi" 0.58149934127703673;
createNode joint -n "joint7" -p "joint6";
	rename -uid "AB574CFB-4707-6FA7-A11F-6BA4ABEE9C96";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -180 3.5311250384401269e-031 -39.428832936650451 ;
	setAttr ".bps" -type "matrix" 2.9982428612957084e-016 -0.78086880944322623 0.62469504755417915 0
		 1.3866221445194501e-016 0.62469504755417937 0.78086880944322612 0 -0.99999999999999978 -2.2635600953372454e-017 4.7091401009440758e-016 0
		 -3.7581833084858701e-016 -5.7039546150780076 -0.34569421909586018 1;
	setAttr ".radi" 0.58149934127703673;
createNode joint -n "joint8" -p "joint1";
	rename -uid "051568C6-4C01-6CAA-5988-4ABC1D6933AD";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -1.1040620981832903 0.86111444821546657 -1.0174666931688023e-016 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -7.0573680379594851e-015 -1.5559546270042924e-014 
		48.795387366114781 ;
	setAttr ".bps" -type "matrix" 2.7156531252865167e-016 -0.044400613620720952 0.99901380646620841 0
		 -5.7353978124495902e-017 0.99901380646620852 0.044400613620721119 0 -0.99999999999999978 5.5511151231257802e-017 4.4408920985006262e-016 0
		 3.6977854932234928e-032 1.4864851421112373 -0.017284710955004723 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint9" -p "joint8";
	rename -uid "1237CF3B-4EFF-B97D-C76E-2FA56A504EE5";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 4.3162741198471544 ;
	setAttr ".bps" -type "matrix" 2.6647852517880993e-016 0.030913053938444457 0.9995220773430662 0
		 -7.7629848602298362e-017 0.99952207734306631 -0.030913053938444277 0 -0.99999999999999978 5.5511151231257802e-017 4.4408920985006262e-016 0
		 -1.1093356479670479e-031 1.4519157202016733 0.7605272820101785 1;
	setAttr ".radi" 0.53503889511999514;
createNode joint -n "joint10" -p "joint9";
	rename -uid "50EAEA3B-44D5-8775-EAF4-A7A9B98C3011";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 3.9248316288423821e-016 -1.547394954985029e-014 -2.9058913710109819 ;
	setAttr ".bps" -type "matrix" 2.700713679323804e-016 -0.019798098978813083 0.99980399843010459 0
		 -6.4020731006621737e-017 0.9998039984301047 0.019798098978813253 0 -0.99999999999999978 5.5511151231257802e-017 4.4408920985006262e-016 0
		 -2.0954117794933126e-031 1.5037698530660182 2.437144244624017 1;
	setAttr ".radi" 0.53859127815814789;
createNode joint -n "joint11" -p "joint10";
	rename -uid "4C00F4BF-4749-2B1B-F727-148B04DA05E4";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -50.205770114950973 ;
	setAttr ".bps" -type "matrix" 2.2204460492503121e-016 -0.78086880944322667 0.62469504755417837 0
		 1.6653345369377353e-016 0.6246950475541786 0.78086880944322667 0 -0.99999999999999978 5.5511151231257802e-017 4.4408920985006262e-016 0
		 -1.2325951644078309e-032 1.4692004311564566 4.1829000510569836 1;
	setAttr ".radi" 0.53859127815814789;
createNode joint -n "joint12" -p "joint8";
	rename -uid "2EF416C1-468A-EEBE-9040-1EBE5E8C6BE2";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".r" -type "double3" 94.547864336152315 -186.93065081823644 -222.51453787795103 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 179.99999999999997 4.3727726241181095 ;
	setAttr ".bps" -type "matrix" 3.001520437537663e-016 -0.031898652399008694 -0.99949110850228517 0
		 -7.7892581273212428e-017 0.99949110850228529 -0.031898652399008513 0 0.99999999999999978 -3.7438845636344223e-017 1.2217636545723681e-016 0
		 1.6023737137301802e-031 1.5210545640208015 -0.79509670392018805 1;
	setAttr ".radi" 0.53235810751996493;
createNode joint -n "joint13" -p "joint12";
	rename -uid "743FFC1D-4556-6645-2DBE-3FA7329C8D8A";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".r" -type "double3" 7.0759291463516787 12.30711137300746 -52.485627865557106 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 2.6341810799969007e-017 1.7183681625991218e-014 0.17566356665369079 ;
	setAttr ".bps" -type "matrix" 2.9991182198799441e-016 -0.028834159879932465 -0.99958420917100232 0
		 -7.8812452181164949e-017 0.99958420917100244 -0.028834159879932285 0 0.99999999999999978 -3.7438845636344223e-017 1.2217636545723681e-016 0
		 1.6023737137301802e-031 1.4692004311564564 -2.4198595336696811 1;
	setAttr ".radi" 0.5412943627548904;
createNode joint -n "joint14" -p "joint13";
	rename -uid "4169294F-44B0-758B-6F8E-AA9DB4D26000";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 180.00000000000003 4.1971090574644165 ;
	setAttr ".bps" -type "matrix" 2.828513606341147e-017 -0.044400613620720911 0.99901380646620852 0
		 -1.0055099994442574e-016 0.99901380646620863 0.044400613620721091 0 -0.99999999999999978 2.3158519151739765e-017 1.9913098044635955e-016 0
		 6.1629758220391547e-032 1.4173462982921112 -4.2174694729669913 1;
	setAttr ".radi" 0.5412943627548904;
createNode joint -n "joint15" -p "joint8";
	rename -uid "65DB2FAF-42BB-5681-7175-D49ED6969FDA";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 4.1542875419757404e-015 3.9737535159774362e-015 92.544804379813158 ;
	setAttr ".bps" -type "matrix" -6.9355082516507412e-017 0.99999999999999978 -2.1510571102112408e-016 0
		 -2.6875094475111686e-016 -3.8163916471489756e-016 -0.99999999999999967 0 -0.99999999999999978 5.5511151231257802e-017 4.4408920985006262e-016 0
		 4.0059342843254506e-032 1.9186029159807829 3.4694469519536142e-018 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint16" -p "joint15";
	rename -uid "14244845-4D54-0F0D-274F-55A40BF1F5BF";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -92.544804379813158 ;
	setAttr ".bps" -type "matrix" 2.7156531252865167e-016 -0.044400613620720952 0.9990138064662083 0
		 -5.735397812449589e-017 0.99901380646620841 0.044400613620721112 0 -0.99999999999999978 5.5511151231257802e-017 4.4408920985006262e-016 0
		 1.5407439555097887e-032 2.8174078856294393 -9.4573936120526467e-018 1;
	setAttr ".radi" 0.5;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "2F8569B8-468B-8D91-2F6F-BB8BF97A8F0D";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "207BE5E0-4CFD-D187-668A-BEA90EB9767E";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "9E23CB1E-4AC2-E354-F528-6A9572062A10";
createNode displayLayerManager -n "layerManager";
	rename -uid "278DDA1D-482F-7A91-EBB8-D7A9672B6ECB";
createNode displayLayer -n "defaultLayer";
	rename -uid "0BA09230-4DD6-3894-DD61-2A9A46F18C8A";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "145CA263-427C-2F18-1C1C-D6BBE91199A2";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "0A6C26DD-4CA2-8D4D-44E2-47B399146FBD";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "E65BF2D8-48C7-F807-F6B1-17935BDF3A86";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 790\n                -height 356\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n"
		+ "            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n"
		+ "            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 790\n            -height 356\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n"
		+ "                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n"
		+ "                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n"
		+ "                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 789\n                -height 355\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n"
		+ "            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n"
		+ "            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n"
		+ "            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 789\n            -height 355\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n"
		+ "                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n"
		+ "                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n"
		+ "                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 790\n                -height 355\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n"
		+ "            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n"
		+ "            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 790\n            -height 355\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n"
		+ "                -width 1586\n                -height 756\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1586\n            -height 756\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n"
		+ "                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -isSet 0\n                -isSetMember 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n"
		+ "                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                -renderFilterIndex 0\n                -selectionOrder \"chronological\" \n                -expandAttribute 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n"
		+ "            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n"
		+ "            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n"
		+ "                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n"
		+ "            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n"
		+ "                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n"
		+ "                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n"
		+ "                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n"
		+ "                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n"
		+ "                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n"
		+ "                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n"
		+ "                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n"
		+ "                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n"
		+ "                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n"
		+ "                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n"
		+ "                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"timeEditorPanel\" -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n"
		+ "\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n"
		+ "                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n"
		+ "                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tshapePanel -unParent -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tposePanel -unParent -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels ;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"profilerPanel\" -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"contentBrowserPanel\" -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n"
		+ "                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xpm\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1586\\n    -height 756\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1586\\n    -height 756\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "F32CDAE1-476B-C789-F66A-A9861FAFCA0A";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode objectSet -n "tweakSet1";
	rename -uid "E01E8278-4176-0A96-8654-6B9BCB9FA8A7";
	setAttr ".ihi" 0;
	setAttr -s 54 ".dsm";
	setAttr ".vo" yes;
	setAttr -s 54 ".gn";
createNode groupId -n "groupId57";
	rename -uid "947A8EDC-46CE-998E-78EE-E5B306B624EF";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts57";
	rename -uid "4836668E-4657-182C-F808-3CA280216540";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[0:129]";
createNode groupId -n "groupId56";
	rename -uid "0D8DC063-4003-8F06-B102-6DAB5AE83576";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts56";
	rename -uid "41474D1A-4557-247C-258B-4F842BB447CA";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:129]";
createNode polyUnite -n "polyUnite1";
	rename -uid "A960232A-497D-4201-8716-9A9BC6C60233";
	setAttr -s 26 ".ip";
	setAttr -s 26 ".im";
createNode groupParts -n "groupParts55";
	rename -uid "4C625506-40C5-BFBA-7CF2-E49A67E43BFF";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode groupId -n "groupId55";
	rename -uid "FE8F0046-49DC-5379-FA19-4BB0C05007A6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId54";
	rename -uid "4B42A1A1-4F2F-0291-C2C8-93A468A6C3BA";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts54";
	rename -uid "ABA5EB64-4638-EFEC-7D33-7D8AA9050B6C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:129]";
createNode groupParts -n "groupParts37";
	rename -uid "58582827-4E2C-5E8E-B6C0-B8BAFDA97E94";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode groupId -n "groupId37";
	rename -uid "44471C19-406B-B0A7-6E3F-DEB81EC2CC6F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId36";
	rename -uid "31E623DC-4125-8444-E2E8-A68743C7CE2B";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts36";
	rename -uid "E05660B1-4383-375C-CBCD-6EA2D8C9BA56";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:129]";
createNode groupParts -n "groupParts51";
	rename -uid "2DDAE287-403A-516C-ABF5-93BC54E3FF83";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode groupId -n "groupId51";
	rename -uid "4116B32E-41D0-15FA-711A-13B898C3AA77";
	setAttr ".ihi" 0;
createNode groupId -n "groupId50";
	rename -uid "A733FD1E-40FC-E0CB-231E-34BEF68ADBC6";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts50";
	rename -uid "B35EA9F0-4915-F179-8141-5A841AF62342";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:129]";
createNode groupParts -n "groupParts41";
	rename -uid "839ACD99-4F8A-C05C-1008-00A9DDADA46D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode groupId -n "groupId41";
	rename -uid "6BC67E89-4BD3-6EC4-C6D6-308123BBD398";
	setAttr ".ihi" 0;
createNode groupId -n "groupId40";
	rename -uid "283F636D-4EED-B383-62FF-5D80CD9BDE38";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts40";
	rename -uid "7F0ADC56-4039-E521-22BE-05B954F4B544";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:129]";
createNode groupParts -n "groupParts47";
	rename -uid "75637369-48F5-3BD3-7294-7CA311BC7944";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode groupId -n "groupId47";
	rename -uid "BA3E85DD-48C7-98BA-48AB-DFA91B4C0181";
	setAttr ".ihi" 0;
createNode groupId -n "groupId46";
	rename -uid "83D84022-42AA-69F0-8EFE-7FA67AA24862";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts46";
	rename -uid "726752FB-47D8-A306-8019-2E8E1987104E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:129]";
createNode groupParts -n "groupParts39";
	rename -uid "6A7BCC4D-4390-C3CC-E30B-4583222AA755";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode groupId -n "groupId39";
	rename -uid "C20BD23D-46D9-2FBE-B59E-25A9A8CF7256";
	setAttr ".ihi" 0;
createNode groupId -n "groupId38";
	rename -uid "51D4CCC0-4290-9759-8B17-398055089A3D";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts38";
	rename -uid "75AF15A1-4C1A-6F83-1A40-07BAACC758A4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:129]";
createNode groupParts -n "groupParts49";
	rename -uid "A4C11CB2-41E7-39E5-7F18-029242705F88";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode groupId -n "groupId49";
	rename -uid "CE1201B5-47B8-2776-02F8-3E9CD2CC5947";
	setAttr ".ihi" 0;
createNode groupId -n "groupId48";
	rename -uid "1D4CBE5F-4E50-AFC9-9138-B6A742774C69";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts48";
	rename -uid "BE224AE0-4E5A-1934-5B13-C4AD4F636CDF";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:129]";
createNode groupParts -n "groupParts45";
	rename -uid "36646E01-4E8C-524A-6D93-5989A01E8D58";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode groupId -n "groupId45";
	rename -uid "8CD1C8B6-4E99-A756-A8B7-E792B1AE1AC4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId44";
	rename -uid "53FC3453-408E-0784-ED57-1D8DCC5AEB3B";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts44";
	rename -uid "C40179CC-4A75-006D-A1A1-7DBCFFFBB10A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:129]";
createNode groupParts -n "groupParts31";
	rename -uid "F0AE2CD7-42BF-5903-2A95-FD8FF45D8C24";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode groupId -n "groupId31";
	rename -uid "14A0DEBD-4CF1-A511-0D02-3E89896682E1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId30";
	rename -uid "9822D567-487A-ACA3-E357-1D9443D9A0DE";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts30";
	rename -uid "94B6DB4A-4D00-C178-6018-B587EDA2E6DC";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:129]";
createNode groupParts -n "groupParts29";
	rename -uid "333140F5-4239-EA2C-600C-B3B92A374178";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode groupId -n "groupId29";
	rename -uid "FC3977A1-4998-174C-19A9-04B3EB9E570D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId28";
	rename -uid "61DF5170-4FCB-48D1-FFB7-B8AF417FF516";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts28";
	rename -uid "4BE13346-4D9E-474D-2983-BA8E17DC5389";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:129]";
createNode groupParts -n "groupParts53";
	rename -uid "3FB8B439-4397-C791-A5D3-178E29D34F57";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode groupId -n "groupId53";
	rename -uid "BB3715B8-46A8-FA9F-8182-7EA95A54BFBA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId52";
	rename -uid "5A420514-4D4C-E8B7-EEAB-74A5C02A77CC";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts52";
	rename -uid "D1DE3AE7-45E7-D2C8-36FD-52B857581F65";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:129]";
createNode groupParts -n "groupParts43";
	rename -uid "7FAF307E-42AA-F7CA-3AB3-2EBCC716F4DE";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode groupId -n "groupId43";
	rename -uid "459B6420-4390-E15F-03AF-FEA3DBE943D4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId42";
	rename -uid "56F9CC18-406A-D97C-2D2F-B992FDDFBE0D";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts42";
	rename -uid "B1A924C9-41C4-BF57-82DE-D2BB121CB7B9";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:129]";
createNode groupParts -n "groupParts27";
	rename -uid "1E9B7E58-421A-C7FE-E2CE-D7B324C48A2D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode groupId -n "groupId27";
	rename -uid "439C0D97-4525-043D-B675-2096CB0F5C51";
	setAttr ".ihi" 0;
createNode groupId -n "groupId26";
	rename -uid "151998A9-40BA-6DFC-FB21-47BBCB0D273F";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts26";
	rename -uid "E819C895-4D5C-DFC4-2550-6092AAFB5649";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:129]";
createNode groupParts -n "groupParts33";
	rename -uid "8DBFDE3B-42C0-C2E4-9677-9C8CE8AAD623";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode groupId -n "groupId33";
	rename -uid "FEAE057D-4FF0-A4F4-8ECD-CAAF05750CC7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId32";
	rename -uid "0DA21195-4F50-7263-2751-4D85816C82C3";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts32";
	rename -uid "92FB632E-4843-9C42-EBB7-2DB469088AAC";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:129]";
createNode groupParts -n "groupParts35";
	rename -uid "72D53241-4EBA-5239-E765-65A2E6C8529A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode groupId -n "groupId35";
	rename -uid "6AD1390E-4619-CE33-0A81-B0B0AE37746C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId34";
	rename -uid "C766415A-4FA4-5082-1A19-AF9746F249D0";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts34";
	rename -uid "008BC721-46B3-E10A-4883-01B907A67AA8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:129]";
createNode groupParts -n "groupParts23";
	rename -uid "A9DCAB41-4365-8DE0-DF0F-E29832E8DA32";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode groupId -n "groupId23";
	rename -uid "6AE4364C-43FB-CE29-8F1A-67B0F8D9C2AF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId22";
	rename -uid "A64E0543-41A7-F6ED-2CF9-06B1DA63DC1E";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts22";
	rename -uid "0F34C98E-49CE-783C-FADB-55AF9AB93B1F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:129]";
createNode groupParts -n "groupParts21";
	rename -uid "22691167-498D-2195-EA8F-619A97CDC96F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode groupId -n "groupId21";
	rename -uid "44E17C5A-4F0B-5157-C236-90A891A9CE3D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId20";
	rename -uid "872E6270-4A80-B568-2EB0-07A06F0D626A";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts20";
	rename -uid "80EA49C1-4C0F-DA0A-46E2-1697483594DE";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:129]";
createNode groupParts -n "groupParts19";
	rename -uid "DE2B1013-464A-E1E9-ACAB-09B6D6ECBC67";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode groupId -n "groupId19";
	rename -uid "D0EB30C8-450D-1210-0812-1B8718C53C6C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId18";
	rename -uid "589DDB6F-4367-B25C-DB5B-79B75C2BB1D3";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts18";
	rename -uid "60037A13-4779-48F4-AC58-719D8850D1EB";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:129]";
createNode groupParts -n "groupParts11";
	rename -uid "6ED61F34-48E0-99C3-0E87-F8AE164339D5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode groupId -n "groupId11";
	rename -uid "E0B46428-472F-6FE1-DF82-7DB4E1C9960E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId10";
	rename -uid "B2C05475-48A4-CE04-8B7C-30B9A4975852";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts10";
	rename -uid "DF6583F6-4FA7-D28D-C889-9D8BFB3AE5C6";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:129]";
createNode groupParts -n "groupParts9";
	rename -uid "4C0B5C8D-47AB-DCA6-E17B-5A97CD76253C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode groupId -n "groupId9";
	rename -uid "DEAAEB09-4C3B-61AD-6A48-768376A48735";
	setAttr ".ihi" 0;
createNode groupId -n "groupId8";
	rename -uid "B1EDD3F8-42D2-7BCA-2B50-849A039EBF7E";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts8";
	rename -uid "A00FA236-4F10-C3F9-0929-0981E88B8625";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:129]";
createNode groupParts -n "groupParts5";
	rename -uid "957585D9-41D5-4144-8EB2-F6B40543D3D5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode groupId -n "groupId5";
	rename -uid "6402C664-4F7D-D998-1DDF-2D911CB71E19";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4";
	rename -uid "1C9CEB4B-40AB-CD6F-5DD7-C09FD45ABB40";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	rename -uid "F934C591-4D9E-49A3-A721-7EB9A4D35B03";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:129]";
createNode groupParts -n "groupParts17";
	rename -uid "32F98808-4431-2C72-602C-8DB759B04E4D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode groupId -n "groupId17";
	rename -uid "DA1D746F-4FA9-4CB4-39BE-A89713586479";
	setAttr ".ihi" 0;
createNode groupId -n "groupId16";
	rename -uid "379B84BF-4D64-E175-218D-1AB5803333A5";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts16";
	rename -uid "073337B8-45BB-2708-41E4-D79C962767D6";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:129]";
createNode groupParts -n "groupParts15";
	rename -uid "5F816E67-4D34-BFBD-9BB5-DFA8A6D8A6F7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode groupId -n "groupId15";
	rename -uid "718C7AD6-4475-A19B-AF2C-42A4EDA0DB75";
	setAttr ".ihi" 0;
createNode groupId -n "groupId14";
	rename -uid "E5B81293-43A2-92FE-A035-EB82210BFAE4";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts14";
	rename -uid "AB284EDE-4BB4-6BDA-E51B-CF80278FA845";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:129]";
createNode groupParts -n "groupParts13";
	rename -uid "DC027DE2-4724-AFD6-F22D-C9A5F6BCE7D5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode groupId -n "groupId13";
	rename -uid "8D95BAC5-4B10-7B3C-8704-0B97F8D9F525";
	setAttr ".ihi" 0;
createNode groupId -n "groupId12";
	rename -uid "3004D1B0-4B6E-8DFF-04C8-EBA4C3E7EE1D";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts12";
	rename -uid "CAC2F4A8-4C8A-19A4-BA01-E7989E480544";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:129]";
createNode groupParts -n "groupParts7";
	rename -uid "0C91FDAE-4EC4-BE70-B2EC-988D3F260E25";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode groupId -n "groupId7";
	rename -uid "2D7E01D0-4352-592E-DC88-519868B2D629";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6";
	rename -uid "00C6914D-4573-A779-35F9-809C49CDEFF9";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts6";
	rename -uid "994E6840-40E4-E0AA-E624-FCA569EB069F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:129]";
createNode groupParts -n "groupParts25";
	rename -uid "AD2C1043-4E2F-F600-ED08-7FAE9B129CD5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode groupId -n "groupId25";
	rename -uid "6F807546-4C20-4E80-7E5C-699A524E9E9F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId24";
	rename -uid "81C27AC4-45AC-A36D-9AD0-39978C476BEB";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts24";
	rename -uid "2A444593-4BBF-3788-D56E-008291A9A6AC";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:129]";
createNode polySeparate -n "polySeparate1";
	rename -uid "BCEB059D-4EAD-41A4-E83A-D68F88E2DC40";
	setAttr ".ic" 26;
	setAttr -s 26 ".out";
createNode groupParts -n "groupParts3";
	rename -uid "2B91A3FE-480A-F4E8-D993-EFA4745FDAF7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode tweak -n "tweak1";
	rename -uid "B3AF3A5A-4EB1-15C7-0A03-059E35030682";
	setAttr -s 4 ".vl[0].vt";
	setAttr ".vl[0].vt[60]" -type "float3" 0 0 0.051324923 ;
	setAttr ".vl[0].vt[67]" -type "float3" 0 0 -0.047464982 ;
createNode groupId -n "groupId3";
	rename -uid "3949F2F7-49DA-9F05-D6E2-FB82BE523BB1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1";
	rename -uid "762DCD14-467E-D437-51D0-58883A25551A";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	rename -uid "10FB03C4-4BE1-00B0-D5DE-E1B527AD2C62";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:129]";
createNode polySeparate -n "polySeparate2";
	rename -uid "2DC80605-4969-123D-7348-91880F432014";
	setAttr ".ic" 26;
	setAttr -s 25 ".out";
createNode groupId -n "groupId58";
	rename -uid "0A1EE984-4E6B-F6FC-3676-8BA80F586251";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts58";
	rename -uid "9926E2B1-47D7-8FA2-D0C6-F3BF73AC328E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:129]";
createNode groupId -n "groupId59";
	rename -uid "D4B6068E-4E2C-812B-D2B9-3A9413B06FB5";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts59";
	rename -uid "6427538B-479C-DC30-AFD3-EC9040B8F4C6";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[0:129]";
createNode groupId -n "groupId60";
	rename -uid "81D92952-4728-2636-5AE9-BF9367B7C786";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts60";
	rename -uid "6CEF0A38-420B-9DF6-1C2C-4484D262DE22";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:129]";
createNode groupId -n "groupId61";
	rename -uid "03E24B11-4BAA-DD0F-CD1A-A6ABD2F69C98";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts61";
	rename -uid "D2083BAB-44C8-6E2A-5655-87A3A66FEEB4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[0:129]";
createNode groupId -n "groupId62";
	rename -uid "AB905109-4A03-77EA-12B9-CEB6778D39F1";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts62";
	rename -uid "CCAE1C6B-4739-FB3C-A07D-C9B7B93D7B95";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:129]";
createNode groupId -n "groupId63";
	rename -uid "DB782815-4A6A-3178-8F45-3AAD3E5AC003";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts63";
	rename -uid "988B2CFB-4E92-EFDB-B86B-96B475A00ECF";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[0:129]";
createNode groupId -n "groupId64";
	rename -uid "83EBAF4A-4353-6307-C7B8-F49946B79A44";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts64";
	rename -uid "DC8F6970-49EF-BAEC-1BF2-71AFD6A3F037";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:129]";
createNode groupId -n "groupId65";
	rename -uid "33EC88AD-4906-D444-DFD6-F7B8671B4854";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts65";
	rename -uid "EAF9C4F8-4FDB-1FCE-6E9A-D4943A1AC36C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[0:129]";
createNode groupId -n "groupId66";
	rename -uid "E57EA6B1-4AFA-406C-27D9-DBA6F6ADD12B";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts66";
	rename -uid "1853AB28-4053-CB37-5BEB-528974E34E84";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:129]";
createNode groupId -n "groupId67";
	rename -uid "FEECAE2E-431C-5A00-4BED-9D88578127A2";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts67";
	rename -uid "98F99701-40C4-02A2-F228-38B691125480";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[0:129]";
createNode groupId -n "groupId68";
	rename -uid "085A7971-46B2-FFB3-A442-D0A8934A6109";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts68";
	rename -uid "A8DE2665-4A37-BD5B-8B49-D4B6332FB24C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:129]";
createNode groupId -n "groupId69";
	rename -uid "AC5E7E34-4554-671A-1F49-6C9863A21E1B";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts69";
	rename -uid "C779115D-4D1B-200E-E641-F8B1643AC399";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[0:129]";
createNode groupId -n "groupId70";
	rename -uid "36779D23-4333-A82A-A6D1-A8882C0EFA72";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts70";
	rename -uid "6325151B-4A2E-4ACC-C58D-36B4CE278975";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:129]";
createNode groupId -n "groupId71";
	rename -uid "B57E700E-45D8-FA44-964F-188C5FCA2969";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts71";
	rename -uid "041ED5E2-4406-569D-2922-88B291100953";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[0:129]";
createNode groupId -n "groupId72";
	rename -uid "91E13C7B-47B9-CC46-EC47-7A934E3F0DDE";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts72";
	rename -uid "64842D6C-4F8D-3B89-4960-C691940E1F02";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:129]";
createNode groupId -n "groupId73";
	rename -uid "AC9A7F60-4D1B-7FBD-15E9-03B88D79D722";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts73";
	rename -uid "B2B2D2EF-48B0-91B1-9000-B7B4E26E71EA";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[0:129]";
createNode groupId -n "groupId74";
	rename -uid "683F0925-4AEE-020F-731D-90B0D9051E94";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts74";
	rename -uid "614D1B78-4DEA-035E-C5C5-AB9D45E454F5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:129]";
createNode groupId -n "groupId75";
	rename -uid "8AA35621-47D1-C183-E5E6-A992A54C0697";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts75";
	rename -uid "AFB52E97-488E-9032-7C12-D6A5BA8BCB61";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[0:129]";
createNode groupId -n "groupId76";
	rename -uid "CAB49083-44CF-8E1E-06EA-2287D5AD852B";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts76";
	rename -uid "D80DB2CE-4833-71ED-4837-B787C59BC980";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:129]";
createNode groupId -n "groupId77";
	rename -uid "B3B857FB-46DE-94D2-DD0C-4090A3B79F78";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts77";
	rename -uid "EBAC1788-4F91-04A5-38DD-0EB2DB6EFF27";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[0:129]";
createNode groupId -n "groupId78";
	rename -uid "2C006351-45E4-D37E-A61D-FBBDCA4E7CFF";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts78";
	rename -uid "D23599C6-4430-D59B-557D-85A9EE810B9C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:129]";
createNode groupId -n "groupId79";
	rename -uid "796D7234-41E8-284E-7784-CE9908F82448";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts79";
	rename -uid "ACCD8E36-4D0E-A09C-3B03-E382363C7517";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[0:129]";
createNode groupId -n "groupId80";
	rename -uid "45F9BC93-4DC0-4900-D473-17B4C607AC41";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts80";
	rename -uid "4D6C5796-463D-3577-897F-538F792408A7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:129]";
createNode groupId -n "groupId81";
	rename -uid "90BA9591-4009-5D98-4838-91B28DCA240B";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts81";
	rename -uid "2AAC0C10-4E9F-D75E-9A48-74BC35C292A1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[0:129]";
createNode groupId -n "groupId82";
	rename -uid "A3AE7BE1-4827-F29B-C989-4EBE78BE5D9E";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts82";
	rename -uid "882293B9-4758-86E5-0EF7-F8ACDE3B827B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:129]";
createNode groupId -n "groupId83";
	rename -uid "2859C2D4-453C-BB3A-B57B-878C496ABF49";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts83";
	rename -uid "AF0D2A91-48A5-AD34-D594-7DBE752665F2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[0:129]";
createNode groupId -n "groupId84";
	rename -uid "A06A4B3D-41C1-DA62-F118-42A3CAF3DD08";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts84";
	rename -uid "A455D0E7-4CD3-E74A-05F2-05BB13256109";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:129]";
createNode groupId -n "groupId85";
	rename -uid "28E65409-4981-3887-A97D-6E8B98F41981";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts85";
	rename -uid "613F3CAF-4882-C39D-203E-37967B7A8472";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[0:129]";
createNode groupId -n "groupId86";
	rename -uid "591338C2-44E5-B491-58E2-2294697B5208";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts86";
	rename -uid "A6DB1123-4621-2AF8-1ADB-52A7E97A6EBE";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:129]";
createNode groupId -n "groupId87";
	rename -uid "AE687129-46E2-9A50-1056-E197A27EC91B";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts87";
	rename -uid "AB89626A-4D88-72E8-9E26-76930AAE015F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[0:129]";
createNode groupId -n "groupId88";
	rename -uid "B718C528-42DB-32E9-D8D8-D5BEDF795B32";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts88";
	rename -uid "331D25F3-4CF5-1CCE-492A-E0952329AEAF";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:129]";
createNode groupId -n "groupId89";
	rename -uid "623974B8-4DB5-BA7C-60CB-ED8E53AE337C";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts89";
	rename -uid "55EFFA55-44F6-7F2D-8ADF-2C9DE8C1BC7F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[0:129]";
createNode groupId -n "groupId90";
	rename -uid "72577588-4974-EE65-1D6B-15BC1005EA18";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts90";
	rename -uid "12FF28C4-44A7-543D-EE10-F088BBB91697";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:129]";
createNode groupId -n "groupId91";
	rename -uid "E94E2ABF-485A-1EAC-4632-749AD9E7EB46";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts91";
	rename -uid "B329C733-4D97-6500-4E52-9EA37EE77A01";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[0:129]";
createNode groupId -n "groupId94";
	rename -uid "AEC7735E-44FA-EB0F-9E1D-C38386C241B8";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts94";
	rename -uid "21EA4972-4CB7-919B-2B1E-0DA9DE3176FA";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:129]";
createNode groupId -n "groupId95";
	rename -uid "BD28D8FD-4A38-7A85-A52B-F9AD1F264D42";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts95";
	rename -uid "DBC417E3-43C2-179E-D93C-C8800F53C833";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[0:129]";
createNode groupId -n "groupId96";
	rename -uid "454BC57D-4CF0-2396-5B98-138DB03BA767";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts96";
	rename -uid "D5BB6FBB-4254-CCB5-C579-90A37D4B1806";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:129]";
createNode groupId -n "groupId97";
	rename -uid "CCBAA17D-441D-967B-9F83-40B9EC34801D";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts97";
	rename -uid "522E94DA-4E42-8CE5-4438-8ABC32F3B108";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[0:129]";
createNode groupId -n "groupId98";
	rename -uid "2F282162-4571-6B0F-08BE-2C9C9365B294";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts98";
	rename -uid "C7109694-4D88-B33F-35CA-4398B3E1A007";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:129]";
createNode groupId -n "groupId99";
	rename -uid "3D5D899C-4E8C-86F8-B002-3599B1B27741";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts99";
	rename -uid "72EF5BAB-454C-5DBE-303C-40AFFF929421";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[0:129]";
createNode groupId -n "groupId100";
	rename -uid "B450E712-4C7D-626E-4260-36B318628476";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts100";
	rename -uid "913FFB8D-4CF8-60EC-4735-4FA6B663071A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:129]";
createNode groupId -n "groupId101";
	rename -uid "38BA6754-4D0B-1CFD-E44C-A086970F42DB";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts101";
	rename -uid "25E3CE5E-4F04-FABC-5CE2-39BF0084052D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[0:129]";
createNode groupId -n "groupId102";
	rename -uid "023B24C7-4A93-3CA8-6DC8-27944843523C";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts102";
	rename -uid "9A2B8F3E-4ECD-3A5D-A1FF-F3BC9A878A23";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:129]";
createNode groupId -n "groupId103";
	rename -uid "C96CB6C1-4E37-5F8D-243B-19B17D5F8326";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts103";
	rename -uid "2785831A-4458-7684-B828-AD85E06A0666";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[0:129]";
createNode groupId -n "groupId104";
	rename -uid "5CF0812C-40D3-2408-42D8-B5A2B46DD776";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts104";
	rename -uid "7C37377E-4681-6D7E-BD7F-0E9EF609BD6E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:129]";
createNode groupId -n "groupId105";
	rename -uid "7C78BD8D-404B-A596-FCE2-FE826C0AB3FA";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts105";
	rename -uid "99638B15-41F8-8D0A-D5BF-B79D22D70C54";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[0:129]";
createNode groupId -n "groupId106";
	rename -uid "2FCAC751-49AC-A00D-53DF-8A964041215B";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts106";
	rename -uid "069A596B-453E-E017-18A9-F3B72FB1B84A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:129]";
createNode groupId -n "groupId107";
	rename -uid "CFE3E4DB-4636-371B-0DE8-779A3AD16C9B";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts107";
	rename -uid "72C73A1A-451C-AB06-E2A5-479356795AD1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[0:129]";
createNode groupId -n "groupId108";
	rename -uid "9AC3A245-47B1-016E-5F33-838A05F3966E";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts108";
	rename -uid "6B4BEFF7-4FC4-8527-C562-D9B20A852BAA";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:129]";
createNode groupId -n "groupId109";
	rename -uid "49614CFD-41CB-DA26-5345-79A00D0F02AE";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts109";
	rename -uid "85778F4C-4479-193E-478D-9ABC826CF042";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[0:129]";
createNode groupId -n "groupId110";
	rename -uid "E40C590F-4DEA-4A04-0A5C-DCBA5DC3C79A";
	setAttr ".ihi" 0;
createNode polyUnite -n "polyUnite2";
	rename -uid "C8D116BA-4743-5DB7-9488-B09AA27CAA4E";
	setAttr -s 26 ".ip";
	setAttr -s 26 ".im";
createNode groupId -n "groupId111";
	rename -uid "5B6F5EE3-4FFD-84E5-F8F7-BDA10AAC2EA6";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts110";
	rename -uid "023F503F-46C2-DEFC-9935-D9BF989DD466";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:129]";
createNode groupId -n "groupId112";
	rename -uid "C326C173-43F2-C158-B27F-4BB2A2C02BA4";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts111";
	rename -uid "547101D7-484E-0121-CE9D-EEBF50331CA5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[0:129]";
createNode skinCluster -n "skinCluster1";
	rename -uid "0EAB4CE6-4143-D9E7-DC94-7B8DC6BF2635";
	setAttr -s 130 ".wl";
	setAttr -s 2 ".wl[0].w";
	setAttr ".wl[0].w[0]" 1;
	setAttr ".wl[0].w[4]" 0.81911897659301758;
	setAttr -s 2 ".wl[1].w";
	setAttr ".wl[1].w[0]" 0.15534067153930664;
	setAttr ".wl[1].w[4]" 0.99239253997802734;
	setAttr ".wl[2].w[4]"  0.90500807762145996;
	setAttr -s 2 ".wl[3].w";
	setAttr ".wl[3].w[0]" 0.15940296649932861;
	setAttr ".wl[3].w[4]" 0.99239253997802734;
	setAttr ".wl[4].w[5]"  1;
	setAttr ".wl[5].w[10]"  0.78564941883087158;
	setAttr ".wl[6].w[10]"  0.84196245670318604;
	setAttr ".wl[7].w[10]"  0.81042498350143433;
	setAttr ".wl[8].w[10]"  0.75242972373962402;
	setAttr ".wl[9].w[10]"  1;
	setAttr ".wl[10].w[10]"  0.81043672561645508;
	setAttr ".wl[11].w[10]"  0.84246730804443359;
	setAttr ".wl[12].w[10]"  0.78560560941696167;
	setAttr ".wl[13].w[10]"  0.75183117389678955;
	setAttr ".wl[14].w[8]"  0.1404758095741272;
	setAttr ".wl[15].w[10]"  1;
	setAttr ".wl[16].w[10]"  1;
	setAttr ".wl[17].w[10]"  1;
	setAttr ".wl[18].w[10]"  1;
	setAttr ".wl[19].w[10]"  0.19867140054702759;
	setAttr ".wl[20].w[10]"  1;
	setAttr ".wl[21].w[10]"  1;
	setAttr ".wl[22].w[10]"  1;
	setAttr ".wl[23].w[10]"  1;
	setAttr ".wl[24].w[10]"  0.15374302864074707;
	setAttr ".wl[25].w[10]"  1;
	setAttr ".wl[26].w[10]"  0.99996006488800049;
	setAttr ".wl[27].w[10]"  1;
	setAttr ".wl[28].w[10]"  1;
	setAttr ".wl[29].w[10]"  0.344970703125;
	setAttr ".wl[30].w[10]"  1;
	setAttr ".wl[31].w[10]"  1;
	setAttr ".wl[32].w[10]"  1;
	setAttr ".wl[33].w[10]"  1;
	setAttr ".wl[34].w[10]"  0.07937312126159668;
	setAttr ".wl[35].w[15]"  0.52050447463989258;
	setAttr ".wl[36].w[15]"  0.07937324047088623;
	setAttr ".wl[37].w[15]"  0.07937312126159668;
	setAttr ".wl[38].w[15]"  0.52050447463989258;
	setAttr -s 3 ".wl[39].w";
	setAttr ".wl[39].w[7]" 0.062545657157897949;
	setAttr ".wl[39].w[14]" 1;
	setAttr ".wl[39].w[15]" 0.32551687955856323;
	setAttr -s 2 ".wl[40].w[0:1]"  1 0.32071214914321899;
	setAttr -s 2 ".wl[41].w[0:1]"  0.093752384185791016 1;
	setAttr ".wl[42].w[1]"  0.89094293117523193;
	setAttr -s 2 ".wl[43].w[0:1]"  0.097807407379150391 1;
	setAttr ".wl[44].w[0]"  0.50030517578125;
	setAttr ".wl[45].w[3]"  0.12868154048919678;
	setAttr ".wl[46].w[3]"  1;
	setAttr ".wl[47].w[3]"  0.72584742307662964;
	setAttr ".wl[48].w[3]"  0.95456171035766602;
	setAttr ".wl[49].w[3]"  1;
	setAttr -s 2 ".wl[50].w[12:13]"  1 1;
	setAttr -s 2 ".wl[51].w[12:13]"  0.21968412399291992 0.96693634986877441;
	setAttr -s 2 ".wl[52].w[12:13]"  0.0596274733543396 0.65274995565414429;
	setAttr -s 2 ".wl[53].w[12:13]"  0.21968388557434082 0.96693634986877441;
	setAttr ".wl[54].w[13]"  1;
	setAttr ".wl[55].w[13]"  1;
	setAttr ".wl[56].w[13]"  1;
	setAttr -s 2 ".wl[57].w[12:13]"  0.84003341197967529 1;
	setAttr -s 2 ".wl[58].w[12:13]"  0.89748704433441162 1;
	setAttr ".wl[59].w[13]"  0.25404083728790283;
	setAttr ".wl[60].w[1]"  0.87712645530700684;
	setAttr -s 2 ".wl[61].w[0:1]"  0.084525108337402344 1;
	setAttr -s 2 ".wl[62].w[0:1]"  1 0.36950886249542236;
	setAttr -s 2 ".wl[63].w[0:1]"  0.088520050048828125 1;
	setAttr ".wl[64].w[2]"  1;
	setAttr ".wl[65].w[3]"  0.27356350421905518;
	setAttr ".wl[66].w[3]"  1;
	setAttr ".wl[67].w[3]"  1;
	setAttr ".wl[68].w[3]"  1;
	setAttr ".wl[69].w[2]"  1;
	setAttr -s 2 ".wl[70].w";
	setAttr ".wl[70].w[7]" 0.29453438520431519;
	setAttr ".wl[70].w[14]" 0.13476145267486572;
	setAttr -s 2 ".wl[71].w";
	setAttr ".wl[71].w[7]" 0.95444780588150024;
	setAttr ".wl[71].w[14]" 0.85170662403106689;
	setAttr -s 3 ".wl[72].w";
	setAttr ".wl[72].w[7]" 0.19326704740524292;
	setAttr ".wl[72].w[14]" 0.92377626895904541;
	setAttr ".wl[72].w[15]" 0.0072999000549316406;
	setAttr -s 2 ".wl[73].w";
	setAttr ".wl[73].w[7]" 0.95444780588150024;
	setAttr ".wl[73].w[14]" 0.85170662403106689;
	setAttr ".wl[74].w[12]"  1;
	setAttr -s 3 ".wl[75].w";
	setAttr ".wl[75].w[7]" 1;
	setAttr ".wl[75].w[14]" 1;
	setAttr ".wl[75].w[15]" 0.15411972999572754;
	setAttr -s 3 ".wl[76].w";
	setAttr ".wl[76].w[7]" 1;
	setAttr ".wl[76].w[14]" 1;
	setAttr ".wl[76].w[15]" 0.15411996841430664;
	setAttr -s 3 ".wl[77].w";
	setAttr ".wl[77].w[7]" 1;
	setAttr ".wl[77].w[14]" 1;
	setAttr ".wl[77].w[15]" 0.13949781656265259;
	setAttr -s 3 ".wl[78].w";
	setAttr ".wl[78].w[7]" 1;
	setAttr ".wl[78].w[14]" 1;
	setAttr ".wl[78].w[15]" 0.13949811458587646;
	setAttr -s 2 ".wl[79].w[14:15]"  1 1;
	setAttr -s 4 ".wl[80].w";
	setAttr ".wl[80].w[7]" 0.088571071624755859;
	setAttr ".wl[80].w[8]" 1;
	setAttr ".wl[80].w[14]" 0.90992081165313721;
	setAttr ".wl[80].w[15]" 0.0055350065231323242;
	setAttr -s 2 ".wl[81].w";
	setAttr ".wl[81].w[7]" 0.86271214485168457;
	setAttr ".wl[81].w[14]" 0.84472858905792236;
	setAttr -s 3 ".wl[82].w";
	setAttr ".wl[82].w[7]" 0.033369064331054688;
	setAttr ".wl[82].w[8]" 1;
	setAttr ".wl[82].w[14]" 0.12345409393310547;
	setAttr -s 2 ".wl[83].w";
	setAttr ".wl[83].w[7]" 0.86271214485168457;
	setAttr ".wl[83].w[14]" 0.84472858905792236;
	setAttr ".wl[84].w[9]"  1;
	setAttr -s 2 ".wl[85].w[12:13]"  1 1;
	setAttr -s 2 ".wl[86].w[12:13]"  0.815926194190979 1;
	setAttr ".wl[87].w[13]"  1;
	setAttr ".wl[88].w[13]"  1;
	setAttr ".wl[89].w[13]"  0.99140816926956177;
	setAttr -s 2 ".wl[90].w[12:13]"  1 1;
	setAttr ".wl[91].w[13]"  1;
	setAttr ".wl[92].w[13]"  1;
	setAttr -s 2 ".wl[93].w[12:13]"  1 1;
	setAttr ".wl[94].w[13]"  0.87455344200134277;
	setAttr ".wl[95].w[13]"  1;
	setAttr -s 2 ".wl[96].w[12:13]"  0.47530651092529297 1;
	setAttr -s 2 ".wl[97].w[12:13]"  0.67951107025146484 0.99569755792617798;
	setAttr ".wl[98].w[13]"  1;
	setAttr ".wl[99].w[13]"  0.07937312126159668;
	setAttr -s 2 ".wl[100].w";
	setAttr ".wl[100].w[8]" 1;
	setAttr ".wl[100].w[14]" 0.44652456045150757;
	setAttr -s 3 ".wl[101].w";
	setAttr ".wl[101].w[7]" 0.07937312126159668;
	setAttr ".wl[101].w[14]" 0.99967420101165771;
	setAttr ".wl[101].w[15]" 0.022948741912841797;
	setAttr -s 2 ".wl[102].w";
	setAttr ".wl[102].w[11]" 0.45598918199539185;
	setAttr ".wl[102].w[14]" 0.44652456045150757;
	setAttr -s 3 ".wl[103].w";
	setAttr ".wl[103].w[7]" 0.07937312126159668;
	setAttr ".wl[103].w[14]" 0.99967420101165771;
	setAttr ".wl[103].w[15]" 0.022948741912841797;
	setAttr -s 2 ".wl[104].w";
	setAttr ".wl[104].w[0]" 1;
	setAttr ".wl[104].w[4]" 0.28474044799804688;
	setAttr -s 2 ".wl[105].w[12:13]"  0.059111595153808594 0.65195947885513306;
	setAttr -s 2 ".wl[106].w[12:13]"  0.21944642066955566 0.96684646606445313;
	setAttr -s 2 ".wl[107].w[12:13]"  1 1;
	setAttr -s 2 ".wl[108].w[12:13]"  0.21944642066955566 0.96684646606445313;
	setAttr ".wl[109].w[11]"  0.44587010145187378;
	setAttr -s 2 ".wl[110].w[14:15]"  0.99907422065734863 1;
	setAttr -s 2 ".wl[111].w[14:15]"  0.96325445175170898 1;
	setAttr -s 2 ".wl[112].w[14:15]"  0.99907422065734863 1;
	setAttr -s 2 ".wl[113].w[14:15]"  1 1;
	setAttr ".wl[114].w[14]"  0.0063332915306091309;
	setAttr ".wl[115].w[4]"  0.8769071102142334;
	setAttr -s 2 ".wl[116].w";
	setAttr ".wl[116].w[0]" 0.13592988252639771;
	setAttr ".wl[116].w[4]" 0.99077630043029785;
	setAttr -s 2 ".wl[117].w";
	setAttr ".wl[117].w[0]" 1;
	setAttr ".wl[117].w[4]" 0.83345526456832886;
	setAttr -s 2 ".wl[118].w";
	setAttr ".wl[118].w[0]" 0.13954842090606689;
	setAttr ".wl[118].w[4]" 0.99077630043029785;
	setAttr ".wl[119].w[0]"  0.75202250480651855;
	setAttr ".wl[120].w[6]"  0.99830776453018188;
	setAttr ".wl[121].w[6]"  1;
	setAttr ".wl[122].w[6]"  0.53975480794906616;
	setAttr ".wl[123].w[6]"  1;
	setAttr ".wl[124].w[5]"  1;
	setAttr ".wl[125].w[6]"  0.57234644889831543;
	setAttr ".wl[126].w[6]"  1;
	setAttr ".wl[127].w[6]"  0.27518969774246216;
	setAttr ".wl[128].w[6]"  0.97885382175445557;
	setAttr ".wl[129].w[6]"  1;
	setAttr -s 16 ".pm";
	setAttr ".pm[0]" -type "matrix" 2.3407340349280758e-016 3.8145295384039949e-016 -1.0000000000000002 -0
		 -0.78086880944322656 0.62469504755417893 -6.9355082516507388e-017 0 0.62469504755417915 0.78086880944322656 2.6875094475111695e-016 -0
		 0.067485458324153938 -0.053988366659288384 5.9939127727143658e-018 1;
	setAttr ".pm[1]" -type "matrix" -5.8268345355487974e-017 -5.6620054069883552e-016 1.0000000000000002 -0
		 -0.99998071117883458 0.0062110603178814347 7.0115718030267864e-017 0 -0.0062110603178812127 -0.99998071117883469 -3.9121326246654234e-016 -0
		 -0.34354042341532331 0.34783467870779089 1.5947876165894437e-016 1;
	setAttr ".pm[2]" -type "matrix" -4.3410803873455563e-017 6.8999772253444067e-016 -1.0000000000000002 0
		 -0.99980005998000698 0.019996001199599638 -6.7666914143784214e-017 0 0.019996001199599864 0.99980005998000698 5.1365345679072702e-016 -0
		 -3.1344740408471035 -0.26578570265844298 -4.7763806628061279e-016 1;
	setAttr ".pm[3]" -type "matrix" 1.0000000000000002 3.9130963463401706e-016 7.3783176794057524e-016 -0
		 -2.0988884201250487e-016 1 9.367506770274762e-017 0 -5.1365345679072692e-016 -3.7816971776294414e-016 1 -0
		 -8.2058835428545156e-016 5.7212393260327898 -0.38026364100497678 1;
	setAttr ".pm[4]" -type "matrix" -5.5511151231257544e-017 4.4408920985006281e-016 -1.0000000000000002 0
		 -1 4.4408920985006271e-016 -6.9355082516507388e-017 0 6.1062266354383629e-016 1.0000000000000002 2.68750944751117e-016 -0
		 -0.32840950814085484 0.31112479718629527 6.0838214643001855e-017 1;
	setAttr ".pm[5]" -type "matrix" -6.146654319494218e-017 -5.6576883992672669e-016 1.0000000000000002 -0
		 -0.99990992613925167 0.013421609746840781 7.0998755658094758e-017 0 -0.013421609746840618 -0.999909926139252 -3.9120459379932716e-016 -0
		 -3.1324266794086939 -0.26910682822565085 2.9461125144705227e-016 1;
	setAttr ".pm[6]" -type "matrix" 3.1185308469734727e-016 3.5358171459857117e-016 -1.0000000000000002 -0
		 -0.78086880944322623 0.62469504755417926 -1.4750183470113765e-016 0 0.62469504755417948 0.78086880944322634 2.9557574499546192e-016 -0
		 -4.2380867827568673 3.8331740328098269 -1.1149832752747313e-015 1;
	setAttr ".pm[7]" -type "matrix" 4.4118652276542173e-016 7.5174239912544154e-017 -1.0000000000000002 -0
		 -0.04440061362072114 0.99901380646620885 -6.9355082516507388e-017 0 0.99901380646620896 0.044400613620720973 2.6875094475111705e-016 -0
		 0.083268517332651254 -1.4842517283033516 1.0774058208959462e-016 1;
	setAttr ".pm[8]" -type "matrix" 4.4559298876717278e-016 4.1756467496795771e-017 -1.0000000000000002 -0
		 0.03091305393844429 0.99952207734306664 -6.93550825165074e-017 -0 0.99952207734306675 -0.030913053938444471 2.6875094475111705e-016 -0
		 -0.80504695776355939 -1.4277115958925919 -1.0369469096763346e-016 1;
	setAttr ".pm[9]" -type "matrix" 4.4290315240125442e-016 6.429239309050424e-017 -1.0000000000000002 -0
		 -0.019798098978813263 0.99980399843010503 -6.93550825165074e-017 0 0.99980399843010515 0.019798098978813093 2.68750944751117e-016 -0
		 -2.4068947761336541 -1.5517259347947674 -5.5069073599222229e-016 1;
	setAttr ".pm[10]" -type "matrix" 2.3407340349280744e-016 3.8145295384039969e-016 -1.0000000000000002 -0
		 -0.78086880944322701 0.62469504755417871 -6.9355082516507388e-017 0 0.62469504755417893 0.78086880944322701 2.6875094475111705e-016 -0
		 -1.4657841547988015 -4.1840984160967833 -1.0222618233849156e-015 1;
	setAttr ".pm[11]" -type "matrix" 1.2091994222046012e-016 4.1317054739210306e-017 1.0000000000000002 -0
		 -0.031898652399008527 0.99949110850228562 8.7427388111420868e-017 0 -0.99949110850228573 -0.031898652399008708 2.9751463055618276e-016 -0
		 -0.74617249515007722 -1.5456430256675593 1.0357107441595852e-016 1;
	setAttr ".pm[12]" -type "matrix" 1.2104604798416103e-016 4.0946131762823417e-017 1.0000000000000002 -0
		 -0.028834159879932292 0.99958420917100255 8.7427388111420868e-017 0 -0.99958420917100266 -0.028834159879932472 2.9751463055618276e-016 -0
		 -2.3764902181404888 -1.538364167772033 5.9149525884940931e-016 1;
	setAttr ".pm[13]" -type "matrix" 1.9790634630018145e-016 3.1977218092614289e-017 -1.0000000000000002 -0
		 -0.044400613620721105 0.99901380646620874 -1.0170771459602539e-016 0 0.99901380646620885 0.044400613620720925 2.3792715347413759e-017 -0
		 4.2762412772010165 -1.2286902880111998 2.4450010344713787e-016 1;
	setAttr ".pm[14]" -type "matrix" 5.5511151231257667e-017 -4.4408920985006291e-016 -1.0000000000000002 -0
		 1.0000000000000002 -2.1510571102112425e-016 -6.9355082516507388e-017 0 -3.8163916471489781e-016 -1.0000000000000004 2.687509447511171e-016 -0
		 -1.9186029159807836 4.1617189136120219e-016 1.3306486355425896e-016 1;
	setAttr ".pm[15]" -type "matrix" 4.4118652276542178e-016 7.5174239912544154e-017 -1.0000000000000002 -0
		 -0.044400613620721147 0.99901380646620896 -6.9355082516507388e-017 0 0.99901380646620908 0.044400613620720987 2.6875094475111705e-016 -0
		 0.12509463894180564 -2.8146293761905801 1.9540155639048838e-016 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.14019217712066379 0 1;
	setAttr -s 16 ".ma";
	setAttr -s 16 ".dpf[0:15]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 16 ".lw";
	setAttr -s 16 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 4;
	setAttr ".ucm" yes;
	setAttr ".nw" 2;
	setAttr -s 16 ".ifcl";
	setAttr -s 16 ".ifcl";
createNode tweak -n "tweak2";
	rename -uid "F60DDE9C-43AC-CD5A-7EC5-C0AF3B4C5DC7";
createNode objectSet -n "skinCluster1Set";
	rename -uid "BCB3A03C-4543-4B4D-8E2B-28AFD9C646B1";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster1GroupId";
	rename -uid "2EE68462-4E06-0B11-B9E7-A6BE9907B8FD";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster1GroupParts";
	rename -uid "137DE8D2-4467-96E8-6311-2A8F1746F0F7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet2";
	rename -uid "30FFC60A-4937-5B51-593C-87A13DDEF478";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId114";
	rename -uid "1DDD23B0-4205-651A-A78A-8AB16787CED2";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts113";
	rename -uid "168D411A-4417-0C26-3BAE-79897D722D01";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose1";
	rename -uid "907D4B24-4061-192A-4ABC-A29445649EBC";
	setAttr -s 16 ".wm";
	setAttr -s 16 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0.086423554773909173
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.30631068886255874 -0.637317630297911 -0.30631068886255886 0.63731763029791111 1
		 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.55338075825778565 5.926454688974279e-018
		 1.2287521184046435e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.94259581178354668 -0.3339358255834744 -2.0447671996071538e-017 5.7717347189521075e-017 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.7828921424287345 -4.0592529337857286e-016
		 -2.8560994361968923e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.9999141409755844 -0.013103842072429324 -8.0237891252664951e-019 6.1227082608396237e-017 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.5932251327021545 9.298117831235686e-016
		 2.8973648672206432e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.49497575667915317 0.50497425706653587 0.494975756679153 0.50497425706653598 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.12957207998236206 -0.50209180993171187
		 -5.4844301870287483e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.33100694143535198 0.94362831916046974 1
		 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.800123174674658 -6.6613381477509392e-016
		 3.8840554767157813e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.99997748128126651 -0.0067109559955511088 -4.1092753895852021e-019 6.1230961083526767e-017 1
		 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.5756539313560434 -1.1324274851176597e-014
		 -3.5094359284214858e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.94138569684156703 0.33733213570918097 -2.0655636012289452e-017 5.7643249020006287e-017 1
		 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.1040620981832903 0.86111444821546657
		 -1.0174666931688023e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.41306777190053773 0.9107002886883947 1
		 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.77857982335251408 1.1102230246251565e-016
		 2.114352730572281e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.037657691314314359 0.99929069758748168 1
		 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.6774186389865733 9.9920072216264089e-016
		 4.4699604502458878e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.025355968280154448 0.9996784857505816 1
		 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.7460980443908585 5.5511151231257827e-016
		 4.7157108739269331e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.42424502099436751 0.90554743783055824 1
		 1 1 yes;
	setAttr ".xm[11]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.77857982335251419
		 1.303070475777943e-048 -2.114352730572281e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		-0.038150379462015563 0.99927200928821391 1.0807122940103988e-017 2.8307072189766146e-016 1
		 1 1 yes;
	setAttr ".xm[12]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.6255900787193229 -3.4694469519536142e-016
		 -4.8792418443345073e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.0015329532065583192 0.99999882502654291 1
		 1 1 yes;
	setAttr ".xm[13]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.7983576799278818 -1.9428902930940239e-016
		 -5.3934872837327367e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.036618497405469956 0.99932931791665436 -5.8887035074861389e-018 -1.6070441106276761e-016 1
		 1 1 yes;
	setAttr ".xm[14]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.0019186294314003927
		 0.43245907388777827 -2.5324281464664318e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0.72263428289167175 0.69123056442090236 1 1 1 yes;
	setAttr ".xm[15]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.89880496964865664 -1.8041124150158794e-016
		 -6.2336692836229463e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.72263428289167175 0.69123056442090236 1
		 1 1 yes;
	setAttr -s 16 ".m";
	setAttr -s 16 ".p";
	setAttr ".bp" yes;
createNode skinBinding -n "skinBinding1";
	rename -uid "EC5AAFD9-4FC0-B5BB-42B4-5DA9A1932ECB";
	setAttr -s 16 ".l[0:15]"  0.59271496951987535 1.3781830143677247 1.0879518547254925 
		0.1475034850056387 1.3152364026278187 1.0880548315060192 0.15545432178208829 0.28096227860896061 
		0.69948070249690475 0.80686627190868443 0.22647448432665618 0.72200368439221585 0.86013698563007046 
		0.22859014085554152 0.038960957708154442 0.21348922788367397;
	setAttr -s 16 ".rr[0:15]"  0.43887228731477285 0.22568713422991926 
		0.05941251408794692 1.1083417799946806 0.25604414833273348 0.039893988604171329 1.1070791651889096 
		0.53638343866697369 0.34564319803102594 0.028147319533555471 0.29639727627673068 
		0.26471455271435823 0.012172617472887915 0.36099415066126367 1.3449617385864261 1.2192198605676097;
	setAttr -s 16 ".lr[0:15]"  0.43887228731477285 0.22568713422991926 
		0.05941251408794692 1.1083417799946806 0.25604414833273348 0.039893988604171329 1.1070791651889096 
		0.53638343866697369 0.34564319803102594 0.028147319533555471 0.29639727627673068 
		0.26471455271435823 0.012172617472887915 0.36099415066126367 1.3449617385864261 1.2192198605676097;
	setAttr -s 16 ".bpm";
	setAttr ".bpm[0]" -type "matrix" 2.2204460492503131e-016 -0.78086880944322645 0.62469504755417882 0
		 1.6653345369377341e-016 0.62469504755417904 0.78086880944322645 0 -0.99999999999999978 5.5511151231257802e-017 4.4408920985006262e-016 0
		 0 0.086423554773909173 0 1;
	setAttr ".bpm[1]" -type "matrix" 6.7684516410386981e-017 -0.99998071117883447 -0.0062110603178814339 0
		 -3.9164120937780245e-016 0.0062110603178812118 -0.99998071117883436 0 0.99999999999999978 -5.4750515717497363e-017 -5.6655152756548791e-016 0
		 -4.9303806576313238e-032 -0.3456942190956378 0.34569421909541492 1;
	setAttr ".bpm[2]" -type "matrix" 7.7924399957783309e-017 -0.99980005998000698 0.019996001199599638 0
		 5.1219768921191439e-016 0.019996001199599864 0.99980005998000698 0 -0.99999999999999978 5.7199319603981025e-017 6.8899172188967258e-016 0
		 -9.7251234737134415e-017 -3.1285326828155142 0.32840950814063219 1;
	setAttr ".bpm[3]" -type "matrix" 0.99999999999999978 -3.9130963463401726e-016 -7.3783176794057505e-016 0
		 2.0988884201250477e-016 1 -9.367506770274778e-017 0 5.1365345679072692e-016 3.7816971776294395e-016 1 0
		 -1.8491220903793983e-016 -5.7212393260327898 0.38026364100497734 1;
	setAttr ".bpm[4]" -type "matrix" 6.9355082516507499e-017 -1 4.4408920985006262e-016 0
		 2.6875094475111686e-016 6.106226635438361e-016 0.99999999999999978 0 -0.99999999999999978 5.5511151231257802e-017 4.4408920985006262e-016 0
		 0 -0.32840950814085496 -0.31112479718629504 1;
	setAttr ".bpm[5]" -type "matrix" 6.5741765136918334e-017 -0.99990992613925156 -0.013421609746840776 0
		 -3.9212227408217511e-016 0.013421609746840613 -0.99990992613925123 0 0.99999999999999978 -5.3867478089670475e-017 -5.6654285889827273e-016 0
		 -1.9420277383563235e-016 -3.1285326828155129 -0.31112479718629449 1;
	setAttr ".bpm[6]" -type "matrix" 2.9982428612957084e-016 -0.78086880944322623 0.62469504755417915 0
		 1.3866221445194501e-016 0.62469504755417937 0.78086880944322612 0 -0.99999999999999978 -2.2635600953372454e-017 4.7091401009440758e-016 0
		 -3.7581833084858701e-016 -5.7039546150780076 -0.34569421909586018 1;
	setAttr ".bpm[7]" -type "matrix" 2.7156531252865167e-016 -0.044400613620720952 0.99901380646620841 0
		 -5.7353978124495902e-017 0.99901380646620852 0.044400613620721119 0 -0.99999999999999978 5.5511151231257802e-017 4.4408920985006262e-016 0
		 3.6977854932234928e-032 1.4864851421112373 -0.017284710955004723 1;
	setAttr ".bpm[8]" -type "matrix" 2.6647852517880993e-016 0.030913053938444457 0.9995220773430662 0
		 -7.7629848602298362e-017 0.99952207734306631 -0.030913053938444277 0 -0.99999999999999978 5.5511151231257802e-017 4.4408920985006262e-016 0
		 -1.1093356479670479e-031 1.4519157202016733 0.7605272820101785 1;
	setAttr ".bpm[9]" -type "matrix" 2.700713679323804e-016 -0.019798098978813083 0.99980399843010459 0
		 -6.4020731006621737e-017 0.9998039984301047 0.019798098978813253 0 -0.99999999999999978 5.5511151231257802e-017 4.4408920985006262e-016 0
		 -2.0954117794933126e-031 1.5037698530660182 2.437144244624017 1;
	setAttr ".bpm[10]" -type "matrix" 2.2204460492503121e-016 -0.78086880944322667 0.62469504755417837 0
		 1.6653345369377353e-016 0.6246950475541786 0.78086880944322667 0 -0.99999999999999978 5.5511151231257802e-017 4.4408920985006262e-016 0
		 -1.2325951644078309e-032 1.4692004311564566 4.1829000510569836 1;
	setAttr ".bpm[11]" -type "matrix" 3.001520437537663e-016 -0.031898652399008694 -0.99949110850228517 0
		 -7.7892581273212428e-017 0.99949110850228529 -0.031898652399008513 0 0.99999999999999978 -3.7438845636344223e-017 1.2217636545723681e-016 0
		 1.6023737137301802e-031 1.5210545640208015 -0.79509670392018805 1;
	setAttr ".bpm[12]" -type "matrix" 2.9991182198799441e-016 -0.028834159879932465 -0.99958420917100232 0
		 -7.8812452181164949e-017 0.99958420917100244 -0.028834159879932285 0 0.99999999999999978 -3.7438845636344223e-017 1.2217636545723681e-016 0
		 1.6023737137301802e-031 1.4692004311564564 -2.4198595336696811 1;
	setAttr ".bpm[13]" -type "matrix" 2.828513606341147e-017 -0.044400613620720911 0.99901380646620852 0
		 -1.0055099994442574e-016 0.99901380646620863 0.044400613620721091 0 -0.99999999999999978 2.3158519151739765e-017 1.9913098044635955e-016 0
		 6.1629758220391547e-032 1.4173462982921112 -4.2174694729669913 1;
	setAttr ".bpm[14]" -type "matrix" -6.9355082516507412e-017 0.99999999999999978 -2.1510571102112408e-016 0
		 -2.6875094475111686e-016 -3.8163916471489756e-016 -0.99999999999999967 0 -0.99999999999999978 5.5511151231257802e-017 4.4408920985006262e-016 0
		 4.0059342843254506e-032 1.9186029159807829 3.4694469519536142e-018 1;
	setAttr ".bpm[15]" -type "matrix" 2.7156531252865167e-016 -0.044400613620720952 0.9990138064662083 0
		 -5.735397812449589e-017 0.99901380646620841 0.044400613620721112 0 -0.99999999999999978 5.5511151231257802e-017 4.4408920985006262e-016 0
		 1.5407439555097887e-032 2.8174078856294393 -9.4573936120526467e-018 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.14019217712066379 0 1;
	setAttr -s 16 ".pm";
	setAttr -s 16 ".lm";
	setAttr ".lm[0]" -type "matrix" 0.017277471515704891 -0.0043077893465975287 0.99984145339597075 0
		 0.60863735395660612 0.79341677321929416 -0.0070989677405208645 0 -0.79326039882671751 0.60866350878397979 0.01633011720869447 0
		 0.083256234813575664 -0.070981277116484054 3.9153194275720391e-017 1;
	setAttr ".lm[1]" -type "matrix" -4.9278280917776779e-016 3.2371666845912506e-016 -2.2192964757875813 0
		 2.1596778015349771e-016 1.4806050478023014 2.1596778015349766e-016 0 1 -1.458645440079135e-016 -2.2204460492503131e-016 0
		 1.0969517062121517 -1.6000636042533822e-016 -7.7414086880279711e-017 1;
	setAttr ".lm[2]" -type "matrix" -9.6227572391734492e-016 -1.5538680167367851e-015 4.3337045916618289 0
		 -1.5808268453031214e-015 4.4088921866733468 1.5808268453031213e-015 0 -1 -3.585542078079044e-016 -2.2204460492503131e-016 0
		 -0.042548558854427425 6.3447511133851719e-016 2.7275607459299815e-016 1;
	setAttr ".lm[3]" -type "matrix" 1.675929990250957 2.8343430315873319e-016 2.7782229828863768e-016 0
		 5.6486390566742564e-017 -0.0066786770103665332 -0.33393385051833102 0 -1.6577201906091319e-016 0.99980005998000698 -0.019996001199599878 0
		 2.4451950527905861e-017 -0.14747399315589763 0.002949479863117914 1;
	setAttr ".lm[4]" -type "matrix" -7.7318252314350422e-016 4.1418670264389674e-016 1.7410522615592332 0
		 3.5216678936831642e-016 1.480348792372792 -3.5216678936831632e-016 0 -1.0000000000000002 2.3789446864332711e-016 -4.4408920985006262e-016 0
		 1.0525552944155556 -2.5039708248270932e-016 3.987897879423437e-017 1;
	setAttr ".lm[5]" -type "matrix" -2.3034534854063278e-015 4.5610214293763181e-014 -10.373832258541208 0
		 3.0362168558483314e-014 6.9057347900759511 3.0362168558483308e-014 0 1 -4.3966600921477581e-015 -2.2204460492503131e-016 0
		 -0.048854554450330871 -5.5498140805188001e-015 -1.6470188594292093e-016 1;
	setAttr ".lm[6]" -type "matrix" 0.063795881853076525 0.07758674080156841 1.8741532919284585 0
		 0.21424534703744211 0.26055911017606981 -0.018079579262710366 0 -0.77241406043577343 0.63511929528327271 -1.3322676295501875e-015 0
		 0.12007510389999129 -0.098732039298980043 3.4517793463992483e-017 1;
	setAttr ".lm[7]" -type "matrix" 0.99998031734734982 0.0044364699078593252 0.0044365135692519498 0
		 0.0044364699078593252 1.9682652649954946e-005 -0.99999015862524865 0 -0.0044365135692519498 0.99999015862524865 -2.2204460492503131e-016 0
		 1.0399017817868728e-005 -0.0023439386164191833 1.2304108674851863e-017 1;
	setAttr ".lm[8]" -type "matrix" -1.1238926633428134e-015 -3.0150594893223573e-015 5.0615625798351287 0
		 -1.2385125436954349e-015 2.0791658566027715 1.2385125436954347e-015 0 -1 -5.9567760780714613e-016 -2.2204460492503131e-016 0
		 0.52292117202387445 3.1149243282289069e-016 1.5337896806744124e-016 1;
	setAttr ".lm[9]" -type "matrix" -1.6775027320027544e-015 -2.401787713741994e-015 7.5548006787605937 0
		 -2.2287189263110291e-015 7.0104144345997224 2.2287189263110287e-015 0 -1 -3.1791543097812346e-016 -2.2204460492503131e-016 0
		 0.77938623268211793 8.9729318879134247e-016 3.4947000877662015e-016 1;
	setAttr ".lm[10]" -type "matrix" 0.59035862382172744 -0.49176754579886989 0.64003232432297708 0
		 -0.49176754579886989 0.40964137617827245 0.76834798354764189 0 -0.64003232432297708 -0.76834798354764189 0 0
		 0.13087794523214202 0.15711676033916988 0 1;
	setAttr ".lm[11]" -type "matrix" -1.0823865064673949e-015 5.2018923420340216e-016 -2.4373177335987064 0
		 2.5394968100707972e-016 1.1898671103951923 2.5394968100707963e-016 0 1 -2.1342692708157547e-016 -4.4408920985006262e-016 0
		 0.62628864325723488 -1.3366686059648067e-016 -1.6113661413961595e-016 1;
	setAttr ".lm[12]" -type "matrix" -8.5978817296523858e-015 2.0916713614356007e-015 -19.36070847691904 0
		 2.4359359355543754e-015 22.547254021946571 2.4359359355543742e-015 0 1 -1.0803692250876023e-016 -4.4408920985006262e-016 0
		 0.97382419258089592 9.4244724937624156e-017 -3.4933111734908701e-016 1;
	setAttr ".lm[13]" -type "matrix" 0.0053564652037374483 -0.072991598723816789 0.99731817129553124 0
		 -0.072991598723816789 0.99464353479626244 0.073187876070682251 0 -0.99731817129553124 -0.073187876070682251 0 0
		 -0.22797710125423656 -0.016730026899915172 0 1;
	setAttr ".lm[14]" -type "matrix" -2.2204460492503131e-016 2.0072345791780702e-016 -1 0
		 1.549193453798354e-016 0.77180488512345347 1.5491934537983537e-016 0 1 -2.0072345791780699e-016 -2.2204460492503131e-016 0
		 0.35927867438796945 -7.2115657879279091e-017 -1.115684053543502e-017 1;
	setAttr ".lm[15]" -type "matrix" 0.99802858551010343 0.044356826022672033 0.044400613620721154 0
		 0.044356826022672033 0.0019714144898962394 -0.99901380646620885 0 -0.044400613620721154 0.99901380646620885 -2.2204460492503131e-016 0
		 -0.0094790527194490975 0.21327868618760104 -4.7404131261180365e-017 1;
	setAttr ".otw" -type "doubleArray" 130 1 0.15534067153930664 0 0.15940296649932861
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.093752384185791016
		 0 0.097807407379150391 0.50030517578125 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.084525108337402344
		 1 0.088520050048828125 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0.13592988252639771 1 0.13954842090606689
		 0.75202250480651855 0 0 0 0 0 0 0 0 0 0 ;
	setAttr -s 3 ".fc[0:2]"  0 1 2 0.5 1 2 1 0 2;
createNode animCurveTU -n "joint1_visibility";
	rename -uid "1BA19A77-49B6-38DF-5ED2-97B612C8FB8B";
	setAttr ".tan" 9;
	setAttr -s 9 ".ktv[0:8]"  1 1 3 1 5 1 7 1 9 1 11 1 13 1 15 1 17 1;
	setAttr -s 9 ".kot[0:8]"  5 5 5 5 5 5 5 5 
		5;
createNode animCurveTL -n "joint1_translateX";
	rename -uid "DB17308B-47B0-2663-CD7F-F9B4953CAEB4";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 0 3 0 5 0 7 0 9 0 11 0 13 0 15 0 17 0;
createNode animCurveTL -n "joint1_translateY";
	rename -uid "806AEDF0-4662-FF54-F2CB-988F27002D17";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 0.086423554773909173 3 0.086423554773909173
		 5 0.086423554773909173 7 0.086423554773909173 9 0.086423554773909173 11 0.086423554773909173
		 13 0.086423554773909173 15 0.086423554773909173 17 0.086423554773909173;
createNode animCurveTL -n "joint1_translateZ";
	rename -uid "0D4C0E95-4420-B8F3-6E54-8AB80A81A6B4";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 0 3 0 5 0 7 0 9 0 11 0 13 0 15 0 17 0;
createNode animCurveTA -n "joint1_rotateX";
	rename -uid "838D8902-461D-CD4E-DE67-019C5204596E";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 0 3 2.8719500626556118 5 -3.8473433263678354
		 7 -3.8473433263678354 9 0.77981198603049295 11 0.77981198603049295 13 -5.9935053816068455
		 15 0.48002840510253836 17 1.2497500889814066;
createNode animCurveTA -n "joint1_rotateY";
	rename -uid "2CC0FF27-48DB-CE68-2BD0-8F9C31A82369";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 0 3 -2.3707044697793349 5 -8.7012700947427142
		 7 -8.7012700947427142 9 -3.5976545392432109 11 -3.5976545392432109 13 -21.731046966421385
		 15 -7.889114914482807 17 -3.1830419619997588;
createNode animCurveTA -n "joint1_rotateZ";
	rename -uid "8AD6BFFB-4677-F067-8A42-128DAA6EF2A1";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 0 3 0.099594643536181859 5 0 7 0 9 -0.11767022920091236
		 11 -0.11767022920091236 13 0.15741573449431609 15 1.0460916955208241 17 1.268734060420984;
createNode animCurveTU -n "joint1_scaleX";
	rename -uid "8699113A-40BB-8559-4A84-EC824A185E2F";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 1 3 1 5 1 7 1 9 1 11 1 13 1 15 1 17 1;
createNode animCurveTU -n "joint1_scaleY";
	rename -uid "2CB82DA2-476C-62CE-0898-2D92E7AB0A52";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 1 3 1 5 1 7 1 9 1 11 1 13 1 15 1 17 1;
createNode animCurveTU -n "joint1_scaleZ";
	rename -uid "2C781318-41E6-8A22-D86A-2CBF4B6DF3DA";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 1 3 1 5 1 7 1 9 1 11 1 13 1 15 1 17 1;
createNode animCurveTU -n "joint15_visibility";
	rename -uid "1D3A5CB3-41AE-87B5-F5C8-AA8306B6C437";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  1 1 3 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "joint15_translateX";
	rename -uid "8365D6A1-4EB5-F28A-9FD9-90A0732955E6";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 -0.0019186294314003927 3 -0.0019186294314003927;
createNode animCurveTL -n "joint15_translateY";
	rename -uid "24351598-4B38-46DF-3927-9D8108CFF782";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0.43245907388777827 3 0.43245907388777827;
createNode animCurveTL -n "joint15_translateZ";
	rename -uid "3FC9B8AE-4E22-85AA-E037-769EA152E328";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 -2.5324281464664318e-017 3 -2.5324281464664318e-017;
createNode animCurveTA -n "joint15_rotateX";
	rename -uid "6A154878-425F-0A29-D685-75B08B14AA70";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 3 0;
createNode animCurveTA -n "joint15_rotateY";
	rename -uid "A6129CBA-4C30-8CF3-21C5-15AAA2E81090";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 3 0;
createNode animCurveTA -n "joint15_rotateZ";
	rename -uid "EE6B3286-4BB0-578C-3834-C3B09D21F9A7";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 3 0;
createNode animCurveTU -n "joint15_scaleX";
	rename -uid "434FEAF0-4757-3DF6-8C50-129CA4E798AE";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 3 1;
createNode animCurveTU -n "joint15_scaleY";
	rename -uid "4380EB3D-4B5E-C31C-3CEA-40B94444DA68";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 3 1;
createNode animCurveTU -n "joint15_scaleZ";
	rename -uid "1EBC0653-42C4-3278-03B7-B8808EC9D16A";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 3 1;
createNode animCurveTU -n "joint9_visibility";
	rename -uid "698B7AB0-4CFA-F6B2-FE52-8BBD3CA9FB8C";
	setAttr ".tan" 5;
	setAttr -s 22 ".ktv[0:21]"  1 1 3 1 5 1 7 1 9 1 11 1 13 1 15 1 17 1
		 20 1 22 1 23 1 24 1 25 1 26 1 28 1 35 1 37 1 38 1 39 1 40 1 42 1;
	setAttr -s 22 ".kit[0:21]"  9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 1 1 1 9;
	setAttr -s 22 ".kix[18:21]"  0.083333253860473633 0.083333253860473633 
		0.083333253860473633 0.083333373069763184;
	setAttr -s 22 ".kiy[18:21]"  0 0 0 0;
createNode animCurveTL -n "joint9_translateX";
	rename -uid "93A70DAA-41B6-4EA0-7805-6CB3B4B0618B";
	setAttr ".tan" 18;
	setAttr -s 22 ".ktv[0:21]"  1 0.77857982335251408 3 0.77857982335251408
		 5 0.77857982335251408 7 0.77857982335251408 9 0.77857982335251408 11 0.77857982335251408
		 13 0.77857982335251408 15 0.77857982335251408 17 0.77857982335251408 20 0.77857982335251408
		 22 0.77857982335251408 23 0.77857982335251408 24 0.77857982335251408 25 0.77857982335251408
		 26 0.77857982335251408 28 0.77857982335251408 35 0.77857982335251408 37 0.77857982335251408
		 38 0.77857982335251408 39 0.77857982335251408 40 0.77857982335251408 42 0.77857982335251408;
	setAttr -s 22 ".kit[18:21]"  1 1 1 18;
	setAttr -s 22 ".kot[18:21]"  1 1 1 18;
	setAttr -s 22 ".kix[18:21]"  0.083333253860473633 0.083333253860473633 
		0.083333253860473633 0.083333373069763184;
	setAttr -s 22 ".kiy[18:21]"  0 0 0 0;
	setAttr -s 22 ".kox[18:21]"  0.20833337306976318 0.20833337306976318 
		0.20833337306976318 0.083333373069763184;
	setAttr -s 22 ".koy[18:21]"  0 0 0 0;
createNode animCurveTL -n "joint9_translateY";
	rename -uid "F8996106-4F89-34E1-9CE7-D184C58CF487";
	setAttr ".tan" 18;
	setAttr -s 22 ".ktv[0:21]"  1 1.1102230246251565e-016 3 1.1102230246251565e-016
		 5 1.1102230246251565e-016 7 1.1102230246251565e-016 9 1.1102230246251565e-016 11 1.1102230246251565e-016
		 13 1.1102230246251565e-016 15 1.1102230246251565e-016 17 1.1102230246251565e-016
		 20 1.1102230246251565e-016 22 1.1102230246251565e-016 23 1.1102230246251565e-016
		 24 1.1102230246251565e-016 25 1.1102230246251565e-016 26 1.1102230246251565e-016
		 28 1.1102230246251565e-016 35 1.1102230246251565e-016 37 1.1102230246251565e-016
		 38 1.1102230246251565e-016 39 1.1102230246251565e-016 40 1.1102230246251565e-016
		 42 1.1102230246251565e-016;
	setAttr -s 22 ".kit[18:21]"  1 1 1 18;
	setAttr -s 22 ".kot[18:21]"  1 1 1 18;
	setAttr -s 22 ".kix[18:21]"  0.083333253860473633 0.083333253860473633 
		0.083333253860473633 0.083333373069763184;
	setAttr -s 22 ".kiy[18:21]"  0 0 0 0;
	setAttr -s 22 ".kox[18:21]"  0.20833337306976318 0.20833337306976318 
		0.20833337306976318 0.083333373069763184;
	setAttr -s 22 ".koy[18:21]"  0 0 0 0;
createNode animCurveTL -n "joint9_translateZ";
	rename -uid "279FA717-4614-F2BC-D0DC-BFAC07EE3822";
	setAttr ".tan" 18;
	setAttr -s 22 ".ktv[0:21]"  1 2.114352730572281e-016 3 2.114352730572281e-016
		 5 2.114352730572281e-016 7 2.114352730572281e-016 9 2.114352730572281e-016 11 2.114352730572281e-016
		 13 2.114352730572281e-016 15 2.114352730572281e-016 17 2.114352730572281e-016 20 2.114352730572281e-016
		 22 2.114352730572281e-016 23 2.114352730572281e-016 24 2.114352730572281e-016 25 2.114352730572281e-016
		 26 2.114352730572281e-016 28 2.114352730572281e-016 35 2.114352730572281e-016 37 2.114352730572281e-016
		 38 2.114352730572281e-016 39 2.114352730572281e-016 40 2.114352730572281e-016 42 2.114352730572281e-016;
	setAttr -s 22 ".kit[18:21]"  1 1 1 18;
	setAttr -s 22 ".kot[18:21]"  1 1 1 18;
	setAttr -s 22 ".kix[18:21]"  0.083333253860473633 0.083333253860473633 
		0.083333253860473633 0.083333373069763184;
	setAttr -s 22 ".kiy[18:21]"  0 0 0 0;
	setAttr -s 22 ".kox[18:21]"  0.20833337306976318 0.20833337306976318 
		0.20833337306976318 0.083333373069763184;
	setAttr -s 22 ".koy[18:21]"  0 0 0 0;
createNode animCurveTA -n "joint9_rotateX";
	rename -uid "06BFAD3C-427C-0796-3587-99B7F2FDE9B7";
	setAttr ".tan" 18;
	setAttr -s 22 ".ktv[0:21]"  1 0 3 0 5 -1.6156670273598303e-015 7 0 9 -8.2108603509627201e-016
		 11 -1.7809009591894056e-015 13 -6.2331303619574703e-015 15 1.8051828899090173e-015
		 17 -1.9915219999114596e-016 20 -1.9915219999114596e-016 22 -3.2217653227554686 23 -3.4734808497436416
		 24 -3.4642820967978563 25 -2.5300526373157326 26 -3.4528268229699703 28 -0.11410165722416181
		 35 -0.11410165722416181 37 -28.644694655094824 38 -28.644694655094824 39 -28.644694655094824
		 40 -28.644694655094824 42 -0.11469109400834397;
	setAttr -s 22 ".kit[18:21]"  1 1 1 18;
	setAttr -s 22 ".kot[18:21]"  1 1 1 18;
	setAttr -s 22 ".kix[18:21]"  0.083333253860473633 0.083333253860473633 
		0.083333253860473633 0.083333373069763184;
	setAttr -s 22 ".kiy[18:21]"  0 0 0 0;
	setAttr -s 22 ".kox[18:21]"  0.20833337306976318 0.20833337306976318 
		0.20833337306976318 0.083333373069763184;
	setAttr -s 22 ".koy[18:21]"  0 0 0 0;
createNode animCurveTA -n "joint9_rotateY";
	rename -uid "46045C69-407D-5589-9372-55BD839E260B";
	setAttr ".tan" 18;
	setAttr -s 22 ".ktv[0:21]"  1 0 3 0 5 -10.170931944870627 7 -39.323132214031915
		 9 -14.442430896215821 11 26.752123985577743 13 59.318448539302203 15 28.242726612553938
		 17 -3.4814463269848925 20 -3.4814463269848925 22 -1.3200506557693183 23 0.23551493063240966
		 24 -0.34549033756126285 25 0.90894823955794402 26 0.44575335015331868 28 -3.4795783291926714
		 35 -3.4795783291926714 37 89.762417353285656 38 89.762417353285656 39 89.762417353285656
		 40 89.762417353285656 42 -6.770357191862435;
	setAttr -s 22 ".kit[18:21]"  1 1 1 18;
	setAttr -s 22 ".kot[18:21]"  1 1 1 18;
	setAttr -s 22 ".kix[18:21]"  0.083333253860473633 0.083333253860473633 
		0.083333253860473633 0.083333373069763184;
	setAttr -s 22 ".kiy[18:21]"  0 0 0 0;
	setAttr -s 22 ".kox[18:21]"  0.20833337306976318 0.20833337306976318 
		0.20833337306976318 0.083333373069763184;
	setAttr -s 22 ".koy[18:21]"  0 0 0 0;
createNode animCurveTA -n "joint9_rotateZ";
	rename -uid "9BC5D167-4A24-E055-BFD2-AFB7BA7515F8";
	setAttr ".tan" 18;
	setAttr -s 22 ".ktv[0:21]"  1 0 3 -62.422322505401837 5 -62.422322505401837
		 7 -62.422322505401823 9 -62.422322505401823 11 -62.422322505401837 13 -62.422322505401837
		 15 -62.422322505401837 17 -62.422322505401915 20 -62.422322505401915 22 5.3203130293338869
		 23 31.451858077694464 24 21.889373239750515 25 44.38552489267537 26 34.924883978273556
		 28 -60.543006788843634 35 -60.543006788843634 37 -89.19441936810631 38 -89.19441936810631
		 39 -89.19441936810631 40 -89.19441936810631 42 -60.536410967236819;
	setAttr -s 22 ".kit[18:21]"  1 1 1 18;
	setAttr -s 22 ".kot[18:21]"  1 1 1 18;
	setAttr -s 22 ".kix[18:21]"  0.083333253860473633 0.083333253860473633 
		0.083333253860473633 0.083333373069763184;
	setAttr -s 22 ".kiy[18:21]"  0 0 0 0;
	setAttr -s 22 ".kox[18:21]"  0.20833337306976318 0.20833337306976318 
		0.20833337306976318 0.083333373069763184;
	setAttr -s 22 ".koy[18:21]"  0 0 0 0;
createNode animCurveTU -n "joint9_scaleX";
	rename -uid "2606D8AC-4066-96F3-F1C4-B28855DEF80F";
	setAttr ".tan" 18;
	setAttr -s 22 ".ktv[0:21]"  1 1 3 1 5 1 7 1 9 1 11 1 13 1 15 1 17 1
		 20 1 22 1 23 1 24 1 25 1 26 1 28 1 35 1 37 1 38 1 39 1 40 1 42 1;
	setAttr -s 22 ".kit[18:21]"  1 1 1 18;
	setAttr -s 22 ".kot[18:21]"  1 1 1 18;
	setAttr -s 22 ".kix[18:21]"  0.083333253860473633 0.083333253860473633 
		0.083333253860473633 0.083333373069763184;
	setAttr -s 22 ".kiy[18:21]"  0 0 0 0;
	setAttr -s 22 ".kox[18:21]"  0.20833337306976318 0.20833337306976318 
		0.20833337306976318 0.083333373069763184;
	setAttr -s 22 ".koy[18:21]"  0 0 0 0;
createNode animCurveTU -n "joint9_scaleY";
	rename -uid "B5F1FAB1-42D6-B24A-9CFD-0582FCCD4B12";
	setAttr ".tan" 18;
	setAttr -s 22 ".ktv[0:21]"  1 1 3 1 5 1 7 1 9 1 11 1 13 1 15 1 17 1
		 20 1 22 1 23 1 24 1 25 1 26 1 28 1 35 1 37 1 38 1 39 1 40 1 42 1;
	setAttr -s 22 ".kit[18:21]"  1 1 1 18;
	setAttr -s 22 ".kot[18:21]"  1 1 1 18;
	setAttr -s 22 ".kix[18:21]"  0.083333253860473633 0.083333253860473633 
		0.083333253860473633 0.083333373069763184;
	setAttr -s 22 ".kiy[18:21]"  0 0 0 0;
	setAttr -s 22 ".kox[18:21]"  0.20833337306976318 0.20833337306976318 
		0.20833337306976318 0.083333373069763184;
	setAttr -s 22 ".koy[18:21]"  0 0 0 0;
createNode animCurveTU -n "joint9_scaleZ";
	rename -uid "4AB05537-4D39-D410-DAAC-14B2B2A23C76";
	setAttr ".tan" 18;
	setAttr -s 22 ".ktv[0:21]"  1 1 3 1 5 1 7 1 9 1 11 1 13 1 15 1 17 1
		 20 1 22 1 23 1 24 1 25 1 26 1 28 1 35 1 37 1 38 1 39 1 40 1 42 1;
	setAttr -s 22 ".kit[18:21]"  1 1 1 18;
	setAttr -s 22 ".kot[18:21]"  1 1 1 18;
	setAttr -s 22 ".kix[18:21]"  0.083333253860473633 0.083333253860473633 
		0.083333253860473633 0.083333373069763184;
	setAttr -s 22 ".kiy[18:21]"  0 0 0 0;
	setAttr -s 22 ".kox[18:21]"  0.20833337306976318 0.20833337306976318 
		0.20833337306976318 0.083333373069763184;
	setAttr -s 22 ".koy[18:21]"  0 0 0 0;
createNode animCurveTU -n "joint12_visibility";
	rename -uid "C335D6BA-423D-27DD-7E40-199A9D0AAB03";
	setAttr ".tan" 5;
	setAttr -s 16 ".ktv[0:15]"  1 1 3 1 5 1 7 1 9 1 11 1 13 1 15 1 17 1
		 20 1 35 1 37 1 38 1 39 1 40 1 42 1;
	setAttr -s 16 ".kit[0:15]"  9 9 9 9 9 9 9 9 
		9 9 9 9 1 1 1 9;
	setAttr -s 16 ".kix[12:15]"  0.083333253860473633 0.083333253860473633 
		0.083333253860473633 0.083333373069763184;
	setAttr -s 16 ".kiy[12:15]"  0 0 0 0;
createNode animCurveTL -n "joint12_translateX";
	rename -uid "4A58EDF3-415B-6E5E-39D8-498F243C4133";
	setAttr ".tan" 18;
	setAttr -s 16 ".ktv[0:15]"  1 -0.77857982335251419 3 -0.77857982335251419
		 5 -0.77857982335251419 7 -0.77857982335251419 9 -0.77857982335251419 11 -0.77857982335251419
		 13 -0.77857982335251419 15 -0.77857982335251419 17 -0.77857982335251419 20 -0.77857982335251419
		 35 -0.77857982335251419 37 -0.77857982335251419 38 -0.77857982335251419 39 -0.77857982335251419
		 40 -0.77857982335251419 42 -0.77857982335251419;
	setAttr -s 16 ".kit[12:15]"  1 1 1 18;
	setAttr -s 16 ".kot[12:15]"  1 1 1 18;
	setAttr -s 16 ".kix[12:15]"  0.083333253860473633 0.083333253860473633 
		0.083333253860473633 0.083333373069763184;
	setAttr -s 16 ".kiy[12:15]"  0 0 0 0;
	setAttr -s 16 ".kox[12:15]"  0.20833337306976318 0.20833337306976318 
		0.20833337306976318 0.083333373069763184;
	setAttr -s 16 ".koy[12:15]"  0 0 0 0;
createNode animCurveTL -n "joint12_translateY";
	rename -uid "F614D441-48BD-451B-143B-B8BDD5290D15";
	setAttr ".tan" 18;
	setAttr -s 16 ".ktv[0:15]"  1 1.303070475777943e-048 3 1.303070475777943e-048
		 5 1.303070475777943e-048 7 1.303070475777943e-048 9 1.303070475777943e-048 11 1.303070475777943e-048
		 13 1.303070475777943e-048 15 1.303070475777943e-048 17 1.303070475777943e-048 20 1.303070475777943e-048
		 35 1.303070475777943e-048 37 1.303070475777943e-048 38 1.303070475777943e-048 39 1.303070475777943e-048
		 40 1.303070475777943e-048 42 1.303070475777943e-048;
	setAttr -s 16 ".kit[12:15]"  1 1 1 18;
	setAttr -s 16 ".kot[12:15]"  1 1 1 18;
	setAttr -s 16 ".kix[12:15]"  0.083333253860473633 0.083333253860473633 
		0.083333253860473633 0.083333373069763184;
	setAttr -s 16 ".kiy[12:15]"  0 0 0 0;
	setAttr -s 16 ".kox[12:15]"  0.20833337306976318 0.20833337306976318 
		0.20833337306976318 0.083333373069763184;
	setAttr -s 16 ".koy[12:15]"  0 0 0 0;
createNode animCurveTL -n "joint12_translateZ";
	rename -uid "98D50A94-4961-E4B3-1143-D292C7FF9423";
	setAttr ".tan" 18;
	setAttr -s 16 ".ktv[0:15]"  1 -2.114352730572281e-016 3 -2.114352730572281e-016
		 5 -2.114352730572281e-016 7 -2.114352730572281e-016 9 -2.114352730572281e-016 11 -2.114352730572281e-016
		 13 -2.114352730572281e-016 15 -2.114352730572281e-016 17 -2.114352730572281e-016
		 20 -2.114352730572281e-016 35 -2.114352730572281e-016 37 -2.114352730572281e-016
		 38 -2.114352730572281e-016 39 -2.114352730572281e-016 40 -2.114352730572281e-016
		 42 -2.114352730572281e-016;
	setAttr -s 16 ".kit[12:15]"  1 1 1 18;
	setAttr -s 16 ".kot[12:15]"  1 1 1 18;
	setAttr -s 16 ".kix[12:15]"  0.083333253860473633 0.083333253860473633 
		0.083333253860473633 0.083333373069763184;
	setAttr -s 16 ".kiy[12:15]"  0 0 0 0;
	setAttr -s 16 ".kox[12:15]"  0.20833337306976318 0.20833337306976318 
		0.20833337306976318 0.083333373069763184;
	setAttr -s 16 ".koy[12:15]"  0 0 0 0;
createNode animCurveTA -n "joint12_rotateX";
	rename -uid "C3982763-41F6-A443-B869-08A828EDD701";
	setAttr ".tan" 18;
	setAttr -s 16 ".ktv[0:15]"  1 0 3 0 5 0 7 -1.5940207952650438e-014 9 1.8345930822214102e-015
		 11 8.0758431097901761e-016 13 -3.9663459869859307e-015 15 -1.696502195336534e-015
		 17 0 20 0 35 0 37 84.288218679048015 38 84.288218679048015 39 84.288218679048015
		 40 84.288218679048015 42 94.547864336152315;
	setAttr -s 16 ".kit[12:15]"  1 1 1 18;
	setAttr -s 16 ".kot[12:15]"  1 1 1 18;
	setAttr -s 16 ".kix[12:15]"  0.083333253860473633 0.083333253860473633 
		0.083333253860473633 0.083333373069763184;
	setAttr -s 16 ".kiy[12:15]"  0.59994781017303467 0.59994781017303467 
		0.59994781017303467 0;
	setAttr -s 16 ".kox[12:15]"  0.20833337306976318 0.20833337306976318 
		0.20833337306976318 0.083333373069763184;
	setAttr -s 16 ".koy[12:15]"  1.4998712539672852 1.4998712539672852 1.4998712539672852 
		0;
createNode animCurveTA -n "joint12_rotateY";
	rename -uid "E7C316D8-41A3-8088-2BE2-028F860607B2";
	setAttr ".tan" 18;
	setAttr -s 16 ".ktv[0:15]"  1 0 3 0 5 -17.563075434000044 7 -53.230952407700286
		 9 -29.907857877779037 11 10.071905560372198 13 36.689482361375191 15 20.382903046303959
		 17 -1.5109254466151982 20 -1.5109254466151982 35 -1.5109254466151982 37 -144.63745721329408
		 38 -144.63745721329408 39 -144.63745721329408 40 -144.63745721329408 42 -186.93065081823644;
	setAttr -s 16 ".kit[12:15]"  1 1 1 18;
	setAttr -s 16 ".kot[12:15]"  1 1 1 18;
	setAttr -s 16 ".kix[12:15]"  0.083333253860473633 0.083333253860473633 
		0.083333253860473633 0.083333373069763184;
	setAttr -s 16 ".kiy[12:15]"  -0.32264754176139832 -0.32264754176139832 
		-0.32264754176139832 0;
	setAttr -s 16 ".kox[12:15]"  0.20833337306976318 0.20833337306976318 
		0.20833337306976318 0.083333373069763184;
	setAttr -s 16 ".koy[12:15]"  -0.80661982297897339 -0.80661982297897339 
		-0.80661982297897339 0;
createNode animCurveTA -n "joint12_rotateZ";
	rename -uid "C779E4CA-4721-065E-E048-F399CC4A3B7C";
	setAttr ".tan" 18;
	setAttr -s 16 ".ktv[0:15]"  1 0 3 -68.493555216529998 5 -68.493555216530041
		 7 -68.493555216529955 9 -68.493555216530055 11 -68.493555216530112 13 -68.493555216530112
		 15 -68.493555216530112 17 -68.493555216530112 20 -68.493555216530112 35 -68.493555216530112
		 37 -155.18057518217503 38 -155.18057518217503 39 -155.18057518217503 40 -155.18057518217503
		 42 -222.51453787795103;
	setAttr -s 16 ".kit[12:15]"  1 1 1 18;
	setAttr -s 16 ".kot[12:15]"  1 1 1 18;
	setAttr -s 16 ".kix[12:15]"  0.083333253860473633 0.083333253860473633 
		0.083333253860473633 0.083333373069763184;
	setAttr -s 16 ".kiy[12:15]"  -0.77898406982421875 -0.77898406982421875 
		-0.77898406982421875 0;
	setAttr -s 16 ".kox[12:15]"  0.20833337306976318 0.20833337306976318 
		0.20833337306976318 0.083333373069763184;
	setAttr -s 16 ".koy[12:15]"  -1.9474624395370483 -1.9474624395370483 
		-1.9474624395370483 0;
createNode animCurveTU -n "joint12_scaleX";
	rename -uid "636DB7D1-4B8D-ADD0-1989-8E8FE05058E1";
	setAttr ".tan" 18;
	setAttr -s 16 ".ktv[0:15]"  1 1 3 1 5 1 7 1 9 1 11 1 13 1 15 1 17 1
		 20 1 35 1 37 1 38 1 39 1 40 1 42 1;
	setAttr -s 16 ".kit[12:15]"  1 1 1 18;
	setAttr -s 16 ".kot[12:15]"  1 1 1 18;
	setAttr -s 16 ".kix[12:15]"  0.083333253860473633 0.083333253860473633 
		0.083333253860473633 0.083333373069763184;
	setAttr -s 16 ".kiy[12:15]"  0 0 0 0;
	setAttr -s 16 ".kox[12:15]"  0.20833337306976318 0.20833337306976318 
		0.20833337306976318 0.083333373069763184;
	setAttr -s 16 ".koy[12:15]"  0 0 0 0;
createNode animCurveTU -n "joint12_scaleY";
	rename -uid "0D65908E-404B-C42E-F70D-89BB440C4699";
	setAttr ".tan" 18;
	setAttr -s 16 ".ktv[0:15]"  1 1 3 1 5 1 7 1 9 1 11 1 13 1 15 1 17 1
		 20 1 35 1 37 1 38 1 39 1 40 1 42 1;
	setAttr -s 16 ".kit[12:15]"  1 1 1 18;
	setAttr -s 16 ".kot[12:15]"  1 1 1 18;
	setAttr -s 16 ".kix[12:15]"  0.083333253860473633 0.083333253860473633 
		0.083333253860473633 0.083333373069763184;
	setAttr -s 16 ".kiy[12:15]"  0 0 0 0;
	setAttr -s 16 ".kox[12:15]"  0.20833337306976318 0.20833337306976318 
		0.20833337306976318 0.083333373069763184;
	setAttr -s 16 ".koy[12:15]"  0 0 0 0;
createNode animCurveTU -n "joint12_scaleZ";
	rename -uid "696169A7-4262-A924-7721-E2820CB40897";
	setAttr ".tan" 18;
	setAttr -s 16 ".ktv[0:15]"  1 1 3 1 5 1 7 1 9 1 11 1 13 1 15 1 17 1
		 20 1 35 1 37 1 38 1 39 1 40 1 42 1;
	setAttr -s 16 ".kit[12:15]"  1 1 1 18;
	setAttr -s 16 ".kot[12:15]"  1 1 1 18;
	setAttr -s 16 ".kix[12:15]"  0.083333253860473633 0.083333253860473633 
		0.083333253860473633 0.083333373069763184;
	setAttr -s 16 ".kiy[12:15]"  0 0 0 0;
	setAttr -s 16 ".kox[12:15]"  0.20833337306976318 0.20833337306976318 
		0.20833337306976318 0.083333373069763184;
	setAttr -s 16 ".koy[12:15]"  0 0 0 0;
createNode animCurveTU -n "joint13_visibility";
	rename -uid "4D51A64A-4855-8954-040B-1A9802918DFC";
	setAttr ".tan" 9;
	setAttr -s 9 ".ktv[0:8]"  1 1 3 1 20 1 35 1 37 1 38 1 39 1 40 1 42 1;
	setAttr -s 9 ".kot[0:8]"  5 5 5 5 5 5 5 5 
		5;
createNode animCurveTL -n "joint13_translateX";
	rename -uid "D2722117-464D-2474-A884-D3BD0E721E7A";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 1.6255900787193229 3 1.6255900787193229
		 20 1.6255900787193229 35 1.6255900787193229 37 1.6255900787193229 38 1.6255900787193229
		 39 1.6255900787193229 40 1.6255900787193229 42 1.6255900787193229;
createNode animCurveTL -n "joint13_translateY";
	rename -uid "CBFDDA27-4DF2-2CC5-7773-13855D2BA700";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 -3.4694469519536142e-016 3 -3.4694469519536142e-016
		 20 -3.4694469519536142e-016 35 -3.4694469519536142e-016 37 -3.4694469519536142e-016
		 38 -3.4694469519536142e-016 39 -3.4694469519536142e-016 40 -3.4694469519536142e-016
		 42 -3.4694469519536142e-016;
createNode animCurveTL -n "joint13_translateZ";
	rename -uid "3B50C091-4586-026C-9F88-A18070FEBA52";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 -4.8792418443345073e-016 3 -4.8792418443345073e-016
		 20 -4.8792418443345073e-016 35 -4.8792418443345073e-016 37 -4.8792418443345073e-016
		 38 -4.8792418443345073e-016 39 -4.8792418443345073e-016 40 -4.8792418443345073e-016
		 42 -4.8792418443345073e-016;
createNode animCurveTA -n "joint13_rotateX";
	rename -uid "44B0D2D9-42EF-2496-53D2-24927F55FF26";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 0 3 0 20 0 35 0 37 0 38 -3.9916165397167431e-016
		 39 4.0421908548295352e-015 40 0 42 7.0759291463516787;
createNode animCurveTA -n "joint13_rotateY";
	rename -uid "62D2DDDC-4D7F-9A06-B22F-07ACE27F2E0E";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 0 3 0 20 0 35 0 37 -32.091288593475468
		 38 5.119442994401612 39 -38.108886175256828 40 14.169000265822211 42 12.30711137300746;
createNode animCurveTA -n "joint13_rotateZ";
	rename -uid "A1E381FB-433C-028F-BD45-3B88B54EEC32";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 0 3 -16.074422836734762 20 -16.074422836734762
		 35 -16.074422836734762 37 -82.700232825156405 38 -82.700232825156405 39 -82.700232825156633
		 40 -82.700232825156604 42 -52.485627865557106;
createNode animCurveTU -n "joint13_scaleX";
	rename -uid "F2E9DF14-46B1-9C05-E6F2-DF9AD1D2C4DC";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 1 3 1 20 1 35 1 37 1 38 1 39 1 40 1 42 1;
createNode animCurveTU -n "joint13_scaleY";
	rename -uid "63FF05AD-4E60-0F1C-EA4D-708E910470DF";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 1 3 1 20 1 35 1 37 1 38 1 39 1 40 1 42 1;
createNode animCurveTU -n "joint13_scaleZ";
	rename -uid "68294A7E-4A22-3139-8D97-22B7CC4465FF";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 1 3 1 20 1 35 1 37 1 38 1 39 1 40 1 42 1;
createNode animCurveTU -n "joint14_visibility";
	rename -uid "7D02D598-4FBD-7C15-B3F4-3AA03099055E";
	setAttr ".tan" 9;
	setAttr -s 3 ".ktv[0:2]"  1 1 20 1 35 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "joint14_translateX";
	rename -uid "05486FF7-4DEC-FE72-1121-C8B9A79AF18F";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 1.7983576799278818 20 1.7983576799278818
		 35 1.7983576799278818;
createNode animCurveTL -n "joint14_translateY";
	rename -uid "151E7A6C-4A03-7A9B-148D-A484F80BE20E";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 -1.9428902930940239e-016 20 -1.9428902930940239e-016
		 35 -1.9428902930940239e-016;
createNode animCurveTL -n "joint14_translateZ";
	rename -uid "5F083180-443B-86FA-7BE9-FD839B2784B3";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 -5.3934872837327367e-016 20 -5.3934872837327367e-016
		 35 -5.3934872837327367e-016;
createNode animCurveTA -n "joint14_rotateX";
	rename -uid "951909D7-4E73-0414-BCF5-828ED6B1458E";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 20 0 35 0;
createNode animCurveTA -n "joint14_rotateY";
	rename -uid "9F751679-41A9-AEC9-3881-4AA71626FF1C";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 20 0 35 0;
createNode animCurveTA -n "joint14_rotateZ";
	rename -uid "2C5F71A5-4D74-0307-8ABC-C8A887E742A0";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 20 0 35 0;
createNode animCurveTU -n "joint14_scaleX";
	rename -uid "DCF67F0B-4E91-3B3F-A854-20BE25657D95";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 1 20 1 35 1;
createNode animCurveTU -n "joint14_scaleY";
	rename -uid "111BE5C4-4F53-D11D-56F9-F695AE884D05";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 1 20 1 35 1;
createNode animCurveTU -n "joint14_scaleZ";
	rename -uid "88C30AE5-436A-145B-671D-809EF509E1A1";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 1 20 1 35 1;
createNode animCurveTU -n "joint10_visibility";
	rename -uid "C3A87137-4AD4-50C6-1EAC-6AB0E47C2877";
	setAttr ".tan" 9;
	setAttr -s 13 ".ktv[0:12]"  1 1 3 1 15 1 20 1 22 1 24 1 25 1 26 1 35 1
		 37 1 38 1 39 1 40 1;
	setAttr -s 13 ".kot[0:12]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5;
createNode animCurveTL -n "joint10_translateX";
	rename -uid "D541FC41-4A52-04A0-C9A0-FD92D074D8B1";
	setAttr ".tan" 18;
	setAttr -s 13 ".ktv[0:12]"  1 1.6774186389865733 3 1.6774186389865733
		 15 1.6774186389865733 20 1.6774186389865733 22 1.6774186389865733 24 1.6774186389865733
		 25 1.6774186389865733 26 1.6774186389865733 35 1.6774186389865733 37 1.6774186389865733
		 38 1.6774186389865733 39 1.6774186389865733 40 1.6774186389865733;
createNode animCurveTL -n "joint10_translateY";
	rename -uid "31D813C8-4672-22AA-1FCB-548D40066EBE";
	setAttr ".tan" 18;
	setAttr -s 13 ".ktv[0:12]"  1 9.9920072216264089e-016 3 9.9920072216264089e-016
		 15 9.9920072216264089e-016 20 9.9920072216264089e-016 22 9.9920072216264089e-016
		 24 9.9920072216264089e-016 25 9.9920072216264089e-016 26 9.9920072216264089e-016
		 35 9.9920072216264089e-016 37 9.9920072216264089e-016 38 9.9920072216264089e-016
		 39 9.9920072216264089e-016 40 9.9920072216264089e-016;
createNode animCurveTL -n "joint10_translateZ";
	rename -uid "D70C3E7D-41AE-9BAE-4781-2F913827A174";
	setAttr ".tan" 18;
	setAttr -s 13 ".ktv[0:12]"  1 4.4699604502458878e-016 3 4.4699604502458878e-016
		 15 4.4699604502458878e-016 20 4.4699604502458878e-016 22 4.4699604502458878e-016
		 24 4.4699604502458878e-016 25 4.4699604502458878e-016 26 4.4699604502458878e-016
		 35 4.4699604502458878e-016 37 4.4699604502458878e-016 38 4.4699604502458878e-016
		 39 4.4699604502458878e-016 40 4.4699604502458878e-016;
createNode animCurveTA -n "joint10_rotateX";
	rename -uid "9C19FF65-4FAE-BE3B-89DA-01A260CE4CE5";
	setAttr ".tan" 18;
	setAttr -s 13 ".ktv[0:12]"  1 0 3 0 15 0 20 0 22 0 24 0 25 0 26 0 35 0
		 37 28.581112050525775 38 6.1553080676515339 39 -163.414284855293 40 -174.45185665476657;
createNode animCurveTA -n "joint10_rotateY";
	rename -uid "0D641178-431A-1F4D-7E27-36B0434DB381";
	setAttr ".tan" 18;
	setAttr -s 13 ".ktv[0:12]"  1 0 3 0 15 0 20 0 22 0 24 0 25 0 26 0 35 0
		 37 60.493942551417973 38 27.255954157900486 39 109.50719146173402 40 170.36655900816231;
createNode animCurveTA -n "joint10_rotateZ";
	rename -uid "AF445954-4AD0-EFC6-210D-F4B39BD7C974";
	setAttr ".tan" 18;
	setAttr -s 13 ".ktv[0:12]"  1 0 3 -24.333651348435804 15 -24.333651348435804
		 20 -24.333651348435804 22 59.996122344611095 24 11.169771041020462 25 24.11255816219909
		 26 -26.535291962781386 35 -26.535291962781386 37 12.961472279638654 38 -26.41850501947637
		 39 -193.56419090944797 40 -208.31474559798397;
createNode animCurveTU -n "joint10_scaleX";
	rename -uid "2A1AAB9D-4A8E-584C-EA48-61A8E52A6EE6";
	setAttr ".tan" 18;
	setAttr -s 13 ".ktv[0:12]"  1 1 3 1 15 1 20 1 22 1 24 1 25 1 26 1 35 1
		 37 1 38 1 39 1 40 1;
createNode animCurveTU -n "joint10_scaleY";
	rename -uid "80DA0510-496A-0316-F30B-35B87FAD53DE";
	setAttr ".tan" 18;
	setAttr -s 13 ".ktv[0:12]"  1 1 3 1 15 1 20 1 22 1 24 1 25 1 26 1 35 1
		 37 1 38 1 39 1 40 1;
createNode animCurveTU -n "joint10_scaleZ";
	rename -uid "99C6CE0A-4D32-B77D-7426-6C8DBA349E65";
	setAttr ".tan" 18;
	setAttr -s 13 ".ktv[0:12]"  1 1 3 1 15 1 20 1 22 1 24 1 25 1 26 1 35 1
		 37 1 38 1 39 1 40 1;
createNode animCurveTU -n "joint11_visibility";
	rename -uid "8EDF4E2F-41BC-4770-18A9-08B6108F27D6";
	setAttr ".tan" 9;
	setAttr -s 3 ".ktv[0:2]"  1 1 20 1 35 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "joint11_translateX";
	rename -uid "834910FB-4AA6-6CD3-273F-5ABAC83818C0";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 1.7460980443908585 20 1.7460980443908585
		 35 1.7460980443908585;
createNode animCurveTL -n "joint11_translateY";
	rename -uid "849D4F5C-48AC-343A-BD62-3E9646B705B8";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 5.5511151231257827e-016 20 5.5511151231257827e-016
		 35 5.5511151231257827e-016;
createNode animCurveTL -n "joint11_translateZ";
	rename -uid "60C8499B-4B05-1498-BB22-CEB98FBB28B5";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 4.7157108739269331e-016 20 4.7157108739269331e-016
		 35 4.7157108739269331e-016;
createNode animCurveTA -n "joint11_rotateX";
	rename -uid "6636D35F-442B-84EF-161C-688470CFAEA5";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 20 0 35 0;
createNode animCurveTA -n "joint11_rotateY";
	rename -uid "1BD3F7E3-43E1-8823-BA3E-4E9EC0341E7C";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 20 0 35 0;
createNode animCurveTA -n "joint11_rotateZ";
	rename -uid "1E537483-49EF-E1C0-3364-509332B15768";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 20 0 35 0;
createNode animCurveTU -n "joint11_scaleX";
	rename -uid "60D2FC6C-49A7-C6F3-ED13-779BE7C29A9D";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 1 20 1 35 1;
createNode animCurveTU -n "joint11_scaleY";
	rename -uid "2F38CE03-4016-BEF9-7B41-769349BB5765";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 1 20 1 35 1;
createNode animCurveTU -n "joint11_scaleZ";
	rename -uid "F37521E1-4EC3-8226-90C0-90AD79697F1C";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 1 20 1 35 1;
createNode animCurveTU -n "joint16_visibility";
	rename -uid "CFD5669E-4E2F-5F6C-FCC6-4B82FB9DEA52";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  1 1 3 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "joint16_translateX";
	rename -uid "A63D6E4A-4E65-0EFA-02C4-AE88F7FBEE9F";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0.89880496964865664 3 0.89880496964865664;
createNode animCurveTL -n "joint16_translateY";
	rename -uid "F7B32257-4DA9-93FD-B99B-BE983051DE38";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 -1.8041124150158794e-016 3 -1.8041124150158794e-016;
createNode animCurveTL -n "joint16_translateZ";
	rename -uid "EEC0EC1C-476D-427C-7F71-BF88940EDAB0";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 -6.2336692836229463e-017 3 -6.2336692836229463e-017;
createNode animCurveTA -n "joint16_rotateX";
	rename -uid "173F6015-44D3-9B30-8926-84BBDA7CE377";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 3 0;
createNode animCurveTA -n "joint16_rotateY";
	rename -uid "817A2ACA-4149-82FA-D96B-D7A9C0F64E80";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 3 0;
createNode animCurveTA -n "joint16_rotateZ";
	rename -uid "3AAE3399-49A1-5C29-F01D-4998D86C1F0C";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 3 0;
createNode animCurveTU -n "joint16_scaleX";
	rename -uid "2E4489DF-487E-AC20-03E2-C5B1485920AD";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 3 1;
createNode animCurveTU -n "joint16_scaleY";
	rename -uid "52161811-4D54-3A1D-9BFB-DFA71A0679D9";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 3 1;
createNode animCurveTU -n "joint16_scaleZ";
	rename -uid "6E8194F7-4B1E-B37E-949E-A9A809ED1681";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 3 1;
createNode animCurveTU -n "joint5_visibility";
	rename -uid "66052550-4860-03A5-8B48-EC88667361F9";
	setAttr ".tan" 9;
	setAttr -s 9 ".ktv[0:8]"  1 1 3 1 5 1 7 1 9 1 11 1 13 1 15 1 17 1;
	setAttr -s 9 ".kot[0:8]"  5 5 5 5 5 5 5 5 
		5;
createNode animCurveTL -n "joint5_translateX";
	rename -uid "E6A59095-4547-7ADF-E692-2BB1066BB844";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 0.12957207998236206 3 0.12957207998236206
		 5 0.12957207998236206 7 0.12957207998236206 9 0.12957207998236206 11 0.12957207998236206
		 13 0.12957207998236206 15 0.12957207998236206 17 0.12957207998236206;
createNode animCurveTL -n "joint5_translateY";
	rename -uid "B9F3EB33-47E1-5B7B-0B6E-0C8BAF37A3E7";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 -0.50209180993171187 3 -0.50209180993171187
		 5 -0.50209180993171187 7 -0.50209180993171187 9 -0.50209180993171187 11 -0.50209180993171187
		 13 -0.50209180993171187 15 -0.50209180993171187 17 -0.50209180993171187;
createNode animCurveTL -n "joint5_translateZ";
	rename -uid "A05AD264-46CF-2D31-1F86-408DF609FF58";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 -5.4844301870287483e-017 3 -5.4844301870287483e-017
		 5 -5.4844301870287483e-017 7 -5.4844301870287483e-017 9 -5.4844301870287483e-017
		 11 -5.4844301870287483e-017 13 -5.4844301870287483e-017 15 -5.4844301870287483e-017
		 17 -5.4844301870287483e-017;
createNode animCurveTA -n "joint5_rotateX";
	rename -uid "CC20B7A6-4F6C-58C9-02C6-0F8EB16CEF17";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 0 3 0 5 0 7 0 9 0 11 0 13 0 15 0 17 0.036543655604478281;
createNode animCurveTA -n "joint5_rotateY";
	rename -uid "3266AFE9-428F-3941-DC04-178F978F1DF1";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 0 3 0 5 0 7 -18.598476063515609 9 -1.2177927728432687
		 11 27.089483835938225 13 57.090941526103144 15 21.773927266793315 17 -0.51508589424872631;
createNode animCurveTA -n "joint5_rotateZ";
	rename -uid "7FEDBB2F-4E51-43D3-863E-C680DC39172E";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 0 3 0 5 0 7 0 9 0 11 0 13 0 15 0 17 -4.0582030580517392;
createNode animCurveTU -n "joint5_scaleX";
	rename -uid "7AEF292C-46F0-F5CF-6E6C-B2AEEB18DB53";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 1 3 1 5 1 7 1 9 1 11 1 13 1 15 1 17 1;
createNode animCurveTU -n "joint5_scaleY";
	rename -uid "5F638E56-4DFA-55D3-5DBF-ABBE5898E166";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 1 3 1 5 1 7 1 9 1 11 1 13 1 15 1 17 1;
createNode animCurveTU -n "joint5_scaleZ";
	rename -uid "2992CE48-465F-54DF-BE13-42983EA88718";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 1 3 1 5 1 7 1 9 1 11 1 13 1 15 1 17 1;
createNode animCurveTU -n "joint2_visibility";
	rename -uid "B5B542ED-45F0-6CF2-74AA-47BC0D43C67B";
	setAttr ".tan" 9;
	setAttr -s 9 ".ktv[0:8]"  1 1 3 1 5 1 7 1 9 1 11 1 13 1 15 1 17 1;
	setAttr -s 9 ".kot[0:8]"  5 5 5 5 5 5 5 5 
		5;
createNode animCurveTL -n "joint2_translateX";
	rename -uid "0AC8181C-4FA0-CBA1-05F9-01AA7A6A869B";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 0.55338075825778565 3 0.55338075825778565
		 5 0.55338075825778565 7 0.55338075825778565 9 0.55338075825778565 11 0.55338075825778565
		 13 0.55338075825778565 15 0.55338075825778565 17 0.55338075825778565;
createNode animCurveTL -n "joint2_translateY";
	rename -uid "1D19719F-4828-8E9C-8646-BBB2D2EB9008";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 5.926454688974279e-018 3 5.926454688974279e-018
		 5 5.926454688974279e-018 7 5.926454688974279e-018 9 5.926454688974279e-018 11 5.926454688974279e-018
		 13 5.926454688974279e-018 15 5.926454688974279e-018 17 5.926454688974279e-018;
createNode animCurveTL -n "joint2_translateZ";
	rename -uid "F52C1AD8-4CAF-6594-4167-17A359845907";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 1.2287521184046435e-016 3 1.2287521184046435e-016
		 5 1.2287521184046435e-016 7 1.2287521184046435e-016 9 1.2287521184046435e-016 11 1.2287521184046435e-016
		 13 1.2287521184046435e-016 15 1.2287521184046435e-016 17 1.2287521184046435e-016;
createNode animCurveTA -n "joint2_rotateX";
	rename -uid "1219C0A4-41B7-6197-5845-BAA1756813AE";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 0 3 0 5 0 7 0 9 0 11 0 13 0 15 0 17 0;
createNode animCurveTA -n "joint2_rotateY";
	rename -uid "08668FAD-48B4-BD83-FC7C-6F91F94DAC77";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 0 3 0 5 -35.397803290982012 7 -50.631659245752743
		 9 -26.586410560397471 11 -2.5111052919388106 13 9.1682241818917198 15 0.92155966565588754
		 17 -3.00806762749886;
createNode animCurveTA -n "joint2_rotateZ";
	rename -uid "931B0373-45B8-E10F-BC31-59B73E4E86D5";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 0 3 0 5 0 7 0 9 0 11 0 13 0 15 0 17 0;
createNode animCurveTU -n "joint2_scaleX";
	rename -uid "BFAFADB9-46DE-DFD4-F3F0-ACA4D7848188";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 1 3 1 5 1 7 1 9 1 11 1 13 1 15 1 17 1;
createNode animCurveTU -n "joint2_scaleY";
	rename -uid "8D4F3673-4764-19E4-4960-96B8F93F5A6C";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 1 3 1 5 1 7 1 9 1 11 1 13 1 15 1 17 1;
createNode animCurveTU -n "joint2_scaleZ";
	rename -uid "A1004E3E-4537-F325-6F0A-97A76661DA7C";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 1 3 1 5 1 7 1 9 1 11 1 13 1 15 1 17 1;
createNode animCurveTU -n "joint6_visibility";
	rename -uid "117BADB2-462E-19F6-E268-728F1A2D907D";
	setAttr ".tan" 9;
	setAttr -s 8 ".ktv[0:7]"  1 1 3 1 5 1 7 1 9 1 13 1 15 1 17 1;
	setAttr -s 8 ".kot[0:7]"  5 5 5 5 5 5 5 5;
createNode animCurveTL -n "joint6_translateX";
	rename -uid "AB24862A-4F7F-9E83-F403-0AAB3464BDC0";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 2.800123174674658 3 2.800123174674658
		 5 2.800123174674658 7 2.800123174674658 9 2.800123174674658 13 2.800123174674658
		 15 2.800123174674658 17 2.800123174674658;
createNode animCurveTL -n "joint6_translateY";
	rename -uid "A3FBBA19-4304-5EAD-FA80-5EB2135FDC5D";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 -6.6613381477509392e-016 3 -6.6613381477509392e-016
		 5 -6.6613381477509392e-016 7 -6.6613381477509392e-016 9 -6.6613381477509392e-016
		 13 -6.6613381477509392e-016 15 -6.6613381477509392e-016 17 -6.6613381477509392e-016;
createNode animCurveTL -n "joint6_translateZ";
	rename -uid "6294DF14-4120-F84F-F068-6A9903F6AC8E";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 3.8840554767157813e-016 3 3.8840554767157813e-016
		 5 3.8840554767157813e-016 7 3.8840554767157813e-016 9 3.8840554767157813e-016 13 3.8840554767157813e-016
		 15 3.8840554767157813e-016 17 3.8840554767157813e-016;
createNode animCurveTA -n "joint6_rotateX";
	rename -uid "A7038AB7-412F-29CD-8404-3C944474B582";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 3 0 5 0 7 0 9 0 13 0 15 0 17 0;
createNode animCurveTA -n "joint6_rotateY";
	rename -uid "8DA0DF32-4F39-787E-3685-7BB5017BAB90";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 3 0 5 10.096487432097865 7 22.320184274035057
		 9 46.463227385468926 13 40.818001145480586 15 16.083468884394669 17 -0.51836011816457839;
createNode animCurveTA -n "joint6_rotateZ";
	rename -uid "23E08CE2-42B9-2731-B084-BAAE484D0264";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 0 3 0 5 0 7 0 9 0 13 0 15 0 17 0;
createNode animCurveTU -n "joint6_scaleX";
	rename -uid "8E013A1A-4B03-CFAD-2319-89A199BB722C";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 3 1 5 1 7 1 9 1 13 1 15 1 17 1;
createNode animCurveTU -n "joint6_scaleY";
	rename -uid "50E73F06-4AB3-8D3C-3533-6B9B75475A5E";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 3 1 5 1 7 1 9 1 13 1 15 1 17 1;
createNode animCurveTU -n "joint6_scaleZ";
	rename -uid "D6F17947-42FB-684E-20E9-EFA0A43D8009";
	setAttr ".tan" 18;
	setAttr -s 8 ".ktv[0:7]"  1 1 3 1 5 1 7 1 9 1 13 1 15 1 17 1;
createNode animCurveTU -n "joint3_visibility";
	rename -uid "F1BCB96A-47FE-23BB-37F0-5A9BA6C474CA";
	setAttr ".tan" 9;
	setAttr -s 9 ".ktv[0:8]"  1 1 3 1 5 1 7 1 9 1 11 1 13 1 15 1 17 1;
	setAttr -s 9 ".kot[0:8]"  5 5 5 5 5 5 5 5 
		5;
createNode animCurveTL -n "joint3_translateX";
	rename -uid "66A54531-42F3-792C-683A-898D3DDB0E2F";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 2.7828921424287345 3 2.7828921424287345
		 5 2.7828921424287345 7 2.7828921424287345 9 2.7828921424287345 11 2.7828921424287345
		 13 2.7828921424287345 15 2.7828921424287345 17 2.7828921424287345;
createNode animCurveTL -n "joint3_translateY";
	rename -uid "714CE035-46AD-9061-9660-D4B8B84FC05B";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 -4.0592529337857286e-016 3 -4.0592529337857286e-016
		 5 -4.0592529337857286e-016 7 -4.0592529337857286e-016 9 -4.0592529337857286e-016
		 11 -4.0592529337857286e-016 13 -4.0592529337857286e-016 15 -4.0592529337857286e-016
		 17 -4.0592529337857286e-016;
createNode animCurveTL -n "joint3_translateZ";
	rename -uid "1976C419-4E88-170E-0883-DBB8A0372E16";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 -2.8560994361968923e-016 3 -2.8560994361968923e-016
		 5 -2.8560994361968923e-016 7 -2.8560994361968923e-016 9 -2.8560994361968923e-016
		 11 -2.8560994361968923e-016 13 -2.8560994361968923e-016 15 -2.8560994361968923e-016
		 17 -2.8560994361968923e-016;
createNode animCurveTA -n "joint3_rotateX";
	rename -uid "061F506B-48E9-C56C-8A3C-16BEA690D81F";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 0 3 0 5 0 7 0 9 0 11 0 13 0 15 0 17 0;
createNode animCurveTA -n "joint3_rotateY";
	rename -uid "1B7B45D6-43C5-769E-3380-CBA6F12FD467";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 0 3 0 5 -28.457453643515755 7 -45.154123044298785
		 9 -22.856635334869754 11 -14.699700746642771 13 -21.874971365002359 15 -21.874971365002359
		 17 -7.3314905147374869;
createNode animCurveTA -n "joint3_rotateZ";
	rename -uid "3D6BE9A5-44B9-9972-1E4B-DBBA85A1ABD8";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 0 3 0 5 0 7 0 9 0 11 0 13 0 15 0 17 0;
createNode animCurveTU -n "joint3_scaleX";
	rename -uid "6BFC69D5-47C3-32B2-7CE5-D784494F53EE";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 1 3 1 5 1 7 1 9 1 11 1 13 1 15 1 17 1;
createNode animCurveTU -n "joint3_scaleY";
	rename -uid "E50D5563-4C4A-84D3-F3AF-CBA7527E085B";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 1 3 1 5 1 7 1 9 1 11 1 13 1 15 1 17 1;
createNode animCurveTU -n "joint3_scaleZ";
	rename -uid "6132FEDC-4BA2-F523-D26B-42ADAF04532D";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 1 3 1 5 1 7 1 9 1 11 1 13 1 15 1 17 1;
createNode animCurveTU -n "joint7_visibility";
	rename -uid "FD8C09AE-4862-C08B-E15A-9B9A42E9AC33";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  1 1 3 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "joint7_translateX";
	rename -uid "2DD99591-478C-BB80-27F3-F39FD5667ECA";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 2.5756539313560434 3 2.5756539313560434;
createNode animCurveTL -n "joint7_translateY";
	rename -uid "911C9514-4C2B-84AD-90B4-E6A67AA03BA9";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 -1.1324274851176597e-014 3 -1.1324274851176597e-014;
createNode animCurveTL -n "joint7_translateZ";
	rename -uid "7BAA329F-4F99-2E5F-EC7F-2F91360E764E";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 -3.5094359284214858e-016 3 -3.5094359284214858e-016;
createNode animCurveTA -n "joint7_rotateX";
	rename -uid "2B181FBB-4444-21A8-38EF-9C9F21B7C313";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 3 0;
createNode animCurveTA -n "joint7_rotateY";
	rename -uid "893516CA-4CD7-30A6-9B73-97B30A869B51";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 3 0;
createNode animCurveTA -n "joint7_rotateZ";
	rename -uid "CA124B88-4EE6-B99B-3ECB-30B9E4643738";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 3 0;
createNode animCurveTU -n "joint7_scaleX";
	rename -uid "0784DCFD-492C-0058-C542-C0A51842ACC8";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 3 1;
createNode animCurveTU -n "joint7_scaleY";
	rename -uid "123E4DD8-4F48-FE13-DD8C-43B9FA364E15";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 3 1;
createNode animCurveTU -n "joint7_scaleZ";
	rename -uid "15C0E57D-4DDE-05F4-CD7C-DBBC46E1F010";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 3 1;
createNode animCurveTU -n "joint4_visibility";
	rename -uid "07E78B1D-461E-45FB-EB91-C7890E770C78";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  1 1 3 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "joint4_translateX";
	rename -uid "E97D1560-4D5A-1CB2-4029-A19CD221018A";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 2.5932251327021545 3 2.5932251327021545;
createNode animCurveTL -n "joint4_translateY";
	rename -uid "C18ADBBF-4735-F1DE-76CC-D78C6878A955";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 9.298117831235686e-016 3 9.298117831235686e-016;
createNode animCurveTL -n "joint4_translateZ";
	rename -uid "89B8A7FF-4BE2-6173-24C8-999E80312910";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 2.8973648672206432e-016 3 2.8973648672206432e-016;
createNode animCurveTA -n "joint4_rotateX";
	rename -uid "A3EE925A-4CF2-0AF9-37BF-69A3C3D9AEA0";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 3 0;
createNode animCurveTA -n "joint4_rotateY";
	rename -uid "39361AC3-4EE3-1A38-9724-419332ACBDDB";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 3 0;
createNode animCurveTA -n "joint4_rotateZ";
	rename -uid "893A242C-4E65-7198-9D81-A3ABF32353A7";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 3 0;
createNode animCurveTU -n "joint4_scaleX";
	rename -uid "E25EFB57-4A15-D023-2959-24B6F2A06367";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 3 1;
createNode animCurveTU -n "joint4_scaleY";
	rename -uid "274B082B-4D57-4506-C3BD-DAADF189D75E";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 3 1;
createNode animCurveTU -n "joint4_scaleZ";
	rename -uid "FB4E4A6C-414F-04FA-0681-0E85AB346C9E";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 3 1;
select -ne :time1;
	setAttr ".o" 42;
	setAttr ".unw" 42;
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
	setAttr -s 55 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 55 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "groupParts5.og" "polySurfaceShape1.i";
connectAttr "groupId4.id" "polySurfaceShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape1.iog.og[0].gco";
connectAttr "groupId5.id" "polySurfaceShape1.iog.og[1].gid";
connectAttr "tweakSet1.mwc" "polySurfaceShape1.iog.og[1].gco";
connectAttr "groupParts7.og" "polySurfaceShape2.i";
connectAttr "groupId6.id" "polySurfaceShape2.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape2.iog.og[0].gco";
connectAttr "groupId7.id" "polySurfaceShape2.iog.og[1].gid";
connectAttr "tweakSet1.mwc" "polySurfaceShape2.iog.og[1].gco";
connectAttr "groupParts9.og" "polySurfaceShape3.i";
connectAttr "groupId8.id" "polySurfaceShape3.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape3.iog.og[0].gco";
connectAttr "groupId9.id" "polySurfaceShape3.iog.og[1].gid";
connectAttr "tweakSet1.mwc" "polySurfaceShape3.iog.og[1].gco";
connectAttr "groupParts11.og" "polySurfaceShape4.i";
connectAttr "groupId10.id" "polySurfaceShape4.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape4.iog.og[0].gco";
connectAttr "groupId11.id" "polySurfaceShape4.iog.og[1].gid";
connectAttr "tweakSet1.mwc" "polySurfaceShape4.iog.og[1].gco";
connectAttr "groupParts13.og" "polySurfaceShape5.i";
connectAttr "groupId12.id" "polySurfaceShape5.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape5.iog.og[0].gco";
connectAttr "groupId13.id" "polySurfaceShape5.iog.og[1].gid";
connectAttr "tweakSet1.mwc" "polySurfaceShape5.iog.og[1].gco";
connectAttr "groupParts15.og" "polySurfaceShape6.i";
connectAttr "groupId14.id" "polySurfaceShape6.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape6.iog.og[0].gco";
connectAttr "groupId15.id" "polySurfaceShape6.iog.og[1].gid";
connectAttr "tweakSet1.mwc" "polySurfaceShape6.iog.og[1].gco";
connectAttr "groupParts17.og" "polySurfaceShape7.i";
connectAttr "groupId16.id" "polySurfaceShape7.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape7.iog.og[0].gco";
connectAttr "groupId17.id" "polySurfaceShape7.iog.og[1].gid";
connectAttr "tweakSet1.mwc" "polySurfaceShape7.iog.og[1].gco";
connectAttr "groupParts19.og" "polySurfaceShape8.i";
connectAttr "groupId18.id" "polySurfaceShape8.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape8.iog.og[0].gco";
connectAttr "groupId19.id" "polySurfaceShape8.iog.og[1].gid";
connectAttr "tweakSet1.mwc" "polySurfaceShape8.iog.og[1].gco";
connectAttr "groupParts21.og" "polySurfaceShape9.i";
connectAttr "groupId20.id" "polySurfaceShape9.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape9.iog.og[0].gco";
connectAttr "groupId21.id" "polySurfaceShape9.iog.og[1].gid";
connectAttr "tweakSet1.mwc" "polySurfaceShape9.iog.og[1].gco";
connectAttr "groupParts23.og" "polySurfaceShape10.i";
connectAttr "groupId22.id" "polySurfaceShape10.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape10.iog.og[0].gco";
connectAttr "groupId23.id" "polySurfaceShape10.iog.og[1].gid";
connectAttr "tweakSet1.mwc" "polySurfaceShape10.iog.og[1].gco";
connectAttr "groupParts25.og" "polySurfaceShape11.i";
connectAttr "groupId24.id" "polySurfaceShape11.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape11.iog.og[0].gco";
connectAttr "groupId25.id" "polySurfaceShape11.iog.og[1].gid";
connectAttr "tweakSet1.mwc" "polySurfaceShape11.iog.og[1].gco";
connectAttr "groupParts27.og" "polySurfaceShape12.i";
connectAttr "groupId26.id" "polySurfaceShape12.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape12.iog.og[0].gco";
connectAttr "groupId27.id" "polySurfaceShape12.iog.og[1].gid";
connectAttr "tweakSet1.mwc" "polySurfaceShape12.iog.og[1].gco";
connectAttr "groupParts29.og" "polySurfaceShape13.i";
connectAttr "groupId28.id" "polySurfaceShape13.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape13.iog.og[0].gco";
connectAttr "groupId29.id" "polySurfaceShape13.iog.og[1].gid";
connectAttr "tweakSet1.mwc" "polySurfaceShape13.iog.og[1].gco";
connectAttr "groupParts31.og" "polySurfaceShape14.i";
connectAttr "groupId30.id" "polySurfaceShape14.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape14.iog.og[0].gco";
connectAttr "groupId31.id" "polySurfaceShape14.iog.og[1].gid";
connectAttr "tweakSet1.mwc" "polySurfaceShape14.iog.og[1].gco";
connectAttr "groupParts33.og" "polySurfaceShape15.i";
connectAttr "groupId32.id" "polySurfaceShape15.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape15.iog.og[0].gco";
connectAttr "groupId33.id" "polySurfaceShape15.iog.og[1].gid";
connectAttr "tweakSet1.mwc" "polySurfaceShape15.iog.og[1].gco";
connectAttr "groupParts35.og" "polySurfaceShape16.i";
connectAttr "groupId34.id" "polySurfaceShape16.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape16.iog.og[0].gco";
connectAttr "groupId35.id" "polySurfaceShape16.iog.og[1].gid";
connectAttr "tweakSet1.mwc" "polySurfaceShape16.iog.og[1].gco";
connectAttr "groupParts37.og" "polySurfaceShape17.i";
connectAttr "groupId36.id" "polySurfaceShape17.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape17.iog.og[0].gco";
connectAttr "groupId37.id" "polySurfaceShape17.iog.og[1].gid";
connectAttr "tweakSet1.mwc" "polySurfaceShape17.iog.og[1].gco";
connectAttr "groupParts39.og" "polySurfaceShape18.i";
connectAttr "groupId38.id" "polySurfaceShape18.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape18.iog.og[0].gco";
connectAttr "groupId39.id" "polySurfaceShape18.iog.og[1].gid";
connectAttr "tweakSet1.mwc" "polySurfaceShape18.iog.og[1].gco";
connectAttr "groupParts41.og" "polySurfaceShape19.i";
connectAttr "groupId40.id" "polySurfaceShape19.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape19.iog.og[0].gco";
connectAttr "groupId41.id" "polySurfaceShape19.iog.og[1].gid";
connectAttr "tweakSet1.mwc" "polySurfaceShape19.iog.og[1].gco";
connectAttr "groupParts43.og" "polySurfaceShape20.i";
connectAttr "groupId42.id" "polySurfaceShape20.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape20.iog.og[0].gco";
connectAttr "groupId43.id" "polySurfaceShape20.iog.og[1].gid";
connectAttr "tweakSet1.mwc" "polySurfaceShape20.iog.og[1].gco";
connectAttr "groupParts45.og" "polySurfaceShape21.i";
connectAttr "groupId44.id" "polySurfaceShape21.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape21.iog.og[0].gco";
connectAttr "groupId45.id" "polySurfaceShape21.iog.og[1].gid";
connectAttr "tweakSet1.mwc" "polySurfaceShape21.iog.og[1].gco";
connectAttr "groupParts47.og" "polySurfaceShape22.i";
connectAttr "groupId46.id" "polySurfaceShape22.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape22.iog.og[0].gco";
connectAttr "groupId47.id" "polySurfaceShape22.iog.og[1].gid";
connectAttr "tweakSet1.mwc" "polySurfaceShape22.iog.og[1].gco";
connectAttr "groupParts49.og" "polySurfaceShape23.i";
connectAttr "groupId48.id" "polySurfaceShape23.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape23.iog.og[0].gco";
connectAttr "groupId49.id" "polySurfaceShape23.iog.og[1].gid";
connectAttr "tweakSet1.mwc" "polySurfaceShape23.iog.og[1].gco";
connectAttr "groupParts51.og" "polySurfaceShape24.i";
connectAttr "groupId50.id" "polySurfaceShape24.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape24.iog.og[0].gco";
connectAttr "groupId51.id" "polySurfaceShape24.iog.og[1].gid";
connectAttr "tweakSet1.mwc" "polySurfaceShape24.iog.og[1].gco";
connectAttr "groupParts53.og" "polySurfaceShape25.i";
connectAttr "groupId52.id" "polySurfaceShape25.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape25.iog.og[0].gco";
connectAttr "groupId53.id" "polySurfaceShape25.iog.og[1].gid";
connectAttr "tweakSet1.mwc" "polySurfaceShape25.iog.og[1].gco";
connectAttr "groupParts55.og" "polySurfaceShape26.i";
connectAttr "groupId54.id" "polySurfaceShape26.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape26.iog.og[0].gco";
connectAttr "groupId55.id" "polySurfaceShape26.iog.og[1].gid";
connectAttr "tweakSet1.mwc" "polySurfaceShape26.iog.og[1].gco";
connectAttr "groupId1.id" "pPyramid28Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pPyramid28Shape.iog.og[0].gco";
connectAttr "groupId3.id" "pPyramid28Shape.iog.og[2].gid";
connectAttr "tweakSet1.mwc" "pPyramid28Shape.iog.og[2].gco";
connectAttr "tweak1.og[0]" "pPyramid28Shape.i";
connectAttr "tweak1.vl[0].vt[0]" "pPyramid28Shape.twl";
connectAttr "groupParts59.og" "polySurfaceShape27.i";
connectAttr "groupId58.id" "polySurfaceShape27.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape27.iog.og[0].gco";
connectAttr "groupId59.id" "polySurfaceShape27.iog.og[1].gid";
connectAttr "tweakSet1.mwc" "polySurfaceShape27.iog.og[1].gco";
connectAttr "groupParts61.og" "polySurfaceShape28.i";
connectAttr "groupId60.id" "polySurfaceShape28.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape28.iog.og[0].gco";
connectAttr "groupId61.id" "polySurfaceShape28.iog.og[1].gid";
connectAttr "tweakSet1.mwc" "polySurfaceShape28.iog.og[1].gco";
connectAttr "groupParts63.og" "polySurfaceShape29.i";
connectAttr "groupId62.id" "polySurfaceShape29.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape29.iog.og[0].gco";
connectAttr "groupId63.id" "polySurfaceShape29.iog.og[1].gid";
connectAttr "tweakSet1.mwc" "polySurfaceShape29.iog.og[1].gco";
connectAttr "groupParts65.og" "polySurfaceShape30.i";
connectAttr "groupId64.id" "polySurfaceShape30.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape30.iog.og[0].gco";
connectAttr "groupId65.id" "polySurfaceShape30.iog.og[1].gid";
connectAttr "tweakSet1.mwc" "polySurfaceShape30.iog.og[1].gco";
connectAttr "groupParts67.og" "polySurfaceShape31.i";
connectAttr "groupId66.id" "polySurfaceShape31.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape31.iog.og[0].gco";
connectAttr "groupId67.id" "polySurfaceShape31.iog.og[1].gid";
connectAttr "tweakSet1.mwc" "polySurfaceShape31.iog.og[1].gco";
connectAttr "groupParts69.og" "polySurfaceShape32.i";
connectAttr "groupId68.id" "polySurfaceShape32.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape32.iog.og[0].gco";
connectAttr "groupId69.id" "polySurfaceShape32.iog.og[1].gid";
connectAttr "tweakSet1.mwc" "polySurfaceShape32.iog.og[1].gco";
connectAttr "groupParts71.og" "polySurfaceShape33.i";
connectAttr "groupId70.id" "polySurfaceShape33.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape33.iog.og[0].gco";
connectAttr "groupId71.id" "polySurfaceShape33.iog.og[1].gid";
connectAttr "tweakSet1.mwc" "polySurfaceShape33.iog.og[1].gco";
connectAttr "groupParts73.og" "polySurfaceShape34.i";
connectAttr "groupId72.id" "polySurfaceShape34.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape34.iog.og[0].gco";
connectAttr "groupId73.id" "polySurfaceShape34.iog.og[1].gid";
connectAttr "tweakSet1.mwc" "polySurfaceShape34.iog.og[1].gco";
connectAttr "groupParts75.og" "polySurfaceShape35.i";
connectAttr "groupId74.id" "polySurfaceShape35.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape35.iog.og[0].gco";
connectAttr "groupId75.id" "polySurfaceShape35.iog.og[1].gid";
connectAttr "tweakSet1.mwc" "polySurfaceShape35.iog.og[1].gco";
connectAttr "groupParts77.og" "polySurfaceShape36.i";
connectAttr "groupId76.id" "polySurfaceShape36.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape36.iog.og[0].gco";
connectAttr "groupId77.id" "polySurfaceShape36.iog.og[1].gid";
connectAttr "tweakSet1.mwc" "polySurfaceShape36.iog.og[1].gco";
connectAttr "groupParts79.og" "polySurfaceShape37.i";
connectAttr "groupId78.id" "polySurfaceShape37.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape37.iog.og[0].gco";
connectAttr "groupId79.id" "polySurfaceShape37.iog.og[1].gid";
connectAttr "tweakSet1.mwc" "polySurfaceShape37.iog.og[1].gco";
connectAttr "groupParts81.og" "polySurfaceShape38.i";
connectAttr "groupId80.id" "polySurfaceShape38.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape38.iog.og[0].gco";
connectAttr "groupId81.id" "polySurfaceShape38.iog.og[1].gid";
connectAttr "tweakSet1.mwc" "polySurfaceShape38.iog.og[1].gco";
connectAttr "groupParts83.og" "polySurfaceShape39.i";
connectAttr "groupId82.id" "polySurfaceShape39.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape39.iog.og[0].gco";
connectAttr "groupId83.id" "polySurfaceShape39.iog.og[1].gid";
connectAttr "tweakSet1.mwc" "polySurfaceShape39.iog.og[1].gco";
connectAttr "groupParts85.og" "polySurfaceShape40.i";
connectAttr "groupId84.id" "polySurfaceShape40.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape40.iog.og[0].gco";
connectAttr "groupId85.id" "polySurfaceShape40.iog.og[1].gid";
connectAttr "tweakSet1.mwc" "polySurfaceShape40.iog.og[1].gco";
connectAttr "groupParts87.og" "polySurfaceShape41.i";
connectAttr "groupId86.id" "polySurfaceShape41.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape41.iog.og[0].gco";
connectAttr "groupId87.id" "polySurfaceShape41.iog.og[1].gid";
connectAttr "tweakSet1.mwc" "polySurfaceShape41.iog.og[1].gco";
connectAttr "groupParts89.og" "polySurfaceShape42.i";
connectAttr "groupId88.id" "polySurfaceShape42.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape42.iog.og[0].gco";
connectAttr "groupId89.id" "polySurfaceShape42.iog.og[1].gid";
connectAttr "tweakSet1.mwc" "polySurfaceShape42.iog.og[1].gco";
connectAttr "groupParts91.og" "polySurfaceShape43.i";
connectAttr "groupId90.id" "polySurfaceShape43.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape43.iog.og[0].gco";
connectAttr "groupId91.id" "polySurfaceShape43.iog.og[1].gid";
connectAttr "tweakSet1.mwc" "polySurfaceShape43.iog.og[1].gco";
connectAttr "groupParts95.og" "polySurfaceShape45.i";
connectAttr "groupId94.id" "polySurfaceShape45.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape45.iog.og[0].gco";
connectAttr "groupId95.id" "polySurfaceShape45.iog.og[1].gid";
connectAttr "tweakSet1.mwc" "polySurfaceShape45.iog.og[1].gco";
connectAttr "groupParts97.og" "polySurfaceShape46.i";
connectAttr "groupId96.id" "polySurfaceShape46.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape46.iog.og[0].gco";
connectAttr "groupId97.id" "polySurfaceShape46.iog.og[1].gid";
connectAttr "tweakSet1.mwc" "polySurfaceShape46.iog.og[1].gco";
connectAttr "groupParts99.og" "polySurfaceShape47.i";
connectAttr "groupId98.id" "polySurfaceShape47.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape47.iog.og[0].gco";
connectAttr "groupId99.id" "polySurfaceShape47.iog.og[1].gid";
connectAttr "tweakSet1.mwc" "polySurfaceShape47.iog.og[1].gco";
connectAttr "groupParts101.og" "polySurfaceShape48.i";
connectAttr "groupId100.id" "polySurfaceShape48.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape48.iog.og[0].gco";
connectAttr "groupId101.id" "polySurfaceShape48.iog.og[1].gid";
connectAttr "tweakSet1.mwc" "polySurfaceShape48.iog.og[1].gco";
connectAttr "groupParts103.og" "polySurfaceShape49.i";
connectAttr "groupId102.id" "polySurfaceShape49.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape49.iog.og[0].gco";
connectAttr "groupId103.id" "polySurfaceShape49.iog.og[1].gid";
connectAttr "tweakSet1.mwc" "polySurfaceShape49.iog.og[1].gco";
connectAttr "groupParts105.og" "polySurfaceShape50.i";
connectAttr "groupId104.id" "polySurfaceShape50.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape50.iog.og[0].gco";
connectAttr "groupId105.id" "polySurfaceShape50.iog.og[1].gid";
connectAttr "tweakSet1.mwc" "polySurfaceShape50.iog.og[1].gco";
connectAttr "groupParts107.og" "polySurfaceShape51.i";
connectAttr "groupId106.id" "polySurfaceShape51.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape51.iog.og[0].gco";
connectAttr "groupId107.id" "polySurfaceShape51.iog.og[1].gid";
connectAttr "tweakSet1.mwc" "polySurfaceShape51.iog.og[1].gco";
connectAttr "groupParts109.og" "polySurfaceShape52.i";
connectAttr "groupId108.id" "polySurfaceShape52.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape52.iog.og[0].gco";
connectAttr "groupId109.id" "polySurfaceShape52.iog.og[1].gid";
connectAttr "tweakSet1.mwc" "polySurfaceShape52.iog.og[1].gco";
connectAttr "groupParts57.og" "polySurface10Shape.i";
connectAttr "groupId56.id" "polySurface10Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurface10Shape.iog.og[0].gco";
connectAttr "groupId57.id" "polySurface10Shape.iog.og[1].gid";
connectAttr "tweakSet1.mwc" "polySurface10Shape.iog.og[1].gco";
connectAttr "groupId110.id" "polySurfaceShape53.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape53.iog.og[0].gco";
connectAttr "skinCluster1.og[0]" "polySurface39Shape.i";
connectAttr "groupId111.id" "polySurface39Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurface39Shape.iog.og[0].gco";
connectAttr "groupId112.id" "polySurface39Shape.iog.og[1].gid";
connectAttr "tweakSet1.mwc" "polySurface39Shape.iog.og[1].gco";
connectAttr "skinCluster1GroupId.id" "polySurface39Shape.iog.og[4].gid";
connectAttr "skinCluster1Set.mwc" "polySurface39Shape.iog.og[4].gco";
connectAttr "groupId114.id" "polySurface39Shape.iog.og[5].gid";
connectAttr "tweakSet2.mwc" "polySurface39Shape.iog.og[5].gco";
connectAttr "tweak2.vl[0].vt[0]" "polySurface39Shape.twl";
connectAttr "groupParts111.og" "polySurface39ShapeOrig.i";
connectAttr "joint1_scaleX.o" "joint1.sx";
connectAttr "joint1_scaleY.o" "joint1.sy";
connectAttr "joint1_scaleZ.o" "joint1.sz";
connectAttr "joint1_visibility.o" "joint1.v";
connectAttr "joint1_translateX.o" "joint1.tx";
connectAttr "joint1_translateY.o" "joint1.ty";
connectAttr "joint1_translateZ.o" "joint1.tz";
connectAttr "joint1_rotateX.o" "joint1.rx";
connectAttr "joint1_rotateY.o" "joint1.ry";
connectAttr "joint1_rotateZ.o" "joint1.rz";
connectAttr "joint1.s" "joint2.is";
connectAttr "joint2_scaleX.o" "joint2.sx";
connectAttr "joint2_scaleY.o" "joint2.sy";
connectAttr "joint2_scaleZ.o" "joint2.sz";
connectAttr "joint2_visibility.o" "joint2.v";
connectAttr "joint2_translateX.o" "joint2.tx";
connectAttr "joint2_translateY.o" "joint2.ty";
connectAttr "joint2_translateZ.o" "joint2.tz";
connectAttr "joint2_rotateX.o" "joint2.rx";
connectAttr "joint2_rotateY.o" "joint2.ry";
connectAttr "joint2_rotateZ.o" "joint2.rz";
connectAttr "joint2.s" "joint3.is";
connectAttr "joint3_scaleX.o" "joint3.sx";
connectAttr "joint3_scaleY.o" "joint3.sy";
connectAttr "joint3_scaleZ.o" "joint3.sz";
connectAttr "joint3_visibility.o" "joint3.v";
connectAttr "joint3_translateX.o" "joint3.tx";
connectAttr "joint3_translateY.o" "joint3.ty";
connectAttr "joint3_translateZ.o" "joint3.tz";
connectAttr "joint3_rotateX.o" "joint3.rx";
connectAttr "joint3_rotateY.o" "joint3.ry";
connectAttr "joint3_rotateZ.o" "joint3.rz";
connectAttr "joint3.s" "joint4.is";
connectAttr "joint4_visibility.o" "joint4.v";
connectAttr "joint4_translateX.o" "joint4.tx";
connectAttr "joint4_translateY.o" "joint4.ty";
connectAttr "joint4_translateZ.o" "joint4.tz";
connectAttr "joint4_rotateX.o" "joint4.rx";
connectAttr "joint4_rotateY.o" "joint4.ry";
connectAttr "joint4_rotateZ.o" "joint4.rz";
connectAttr "joint4_scaleX.o" "joint4.sx";
connectAttr "joint4_scaleY.o" "joint4.sy";
connectAttr "joint4_scaleZ.o" "joint4.sz";
connectAttr "joint1.s" "joint5.is";
connectAttr "joint5_scaleX.o" "joint5.sx";
connectAttr "joint5_scaleY.o" "joint5.sy";
connectAttr "joint5_scaleZ.o" "joint5.sz";
connectAttr "joint5_visibility.o" "joint5.v";
connectAttr "joint5_translateX.o" "joint5.tx";
connectAttr "joint5_translateY.o" "joint5.ty";
connectAttr "joint5_translateZ.o" "joint5.tz";
connectAttr "joint5_rotateX.o" "joint5.rx";
connectAttr "joint5_rotateY.o" "joint5.ry";
connectAttr "joint5_rotateZ.o" "joint5.rz";
connectAttr "joint5.s" "joint6.is";
connectAttr "joint6_scaleX.o" "joint6.sx";
connectAttr "joint6_scaleY.o" "joint6.sy";
connectAttr "joint6_scaleZ.o" "joint6.sz";
connectAttr "joint6_visibility.o" "joint6.v";
connectAttr "joint6_translateX.o" "joint6.tx";
connectAttr "joint6_translateY.o" "joint6.ty";
connectAttr "joint6_translateZ.o" "joint6.tz";
connectAttr "joint6_rotateX.o" "joint6.rx";
connectAttr "joint6_rotateY.o" "joint6.ry";
connectAttr "joint6_rotateZ.o" "joint6.rz";
connectAttr "joint6.s" "joint7.is";
connectAttr "joint7_visibility.o" "joint7.v";
connectAttr "joint7_translateX.o" "joint7.tx";
connectAttr "joint7_translateY.o" "joint7.ty";
connectAttr "joint7_translateZ.o" "joint7.tz";
connectAttr "joint7_rotateX.o" "joint7.rx";
connectAttr "joint7_rotateY.o" "joint7.ry";
connectAttr "joint7_rotateZ.o" "joint7.rz";
connectAttr "joint7_scaleX.o" "joint7.sx";
connectAttr "joint7_scaleY.o" "joint7.sy";
connectAttr "joint7_scaleZ.o" "joint7.sz";
connectAttr "joint1.s" "joint8.is";
connectAttr "joint8.s" "joint9.is";
connectAttr "joint9_scaleX.o" "joint9.sx";
connectAttr "joint9_scaleY.o" "joint9.sy";
connectAttr "joint9_scaleZ.o" "joint9.sz";
connectAttr "joint9_visibility.o" "joint9.v";
connectAttr "joint9_translateX.o" "joint9.tx";
connectAttr "joint9_translateY.o" "joint9.ty";
connectAttr "joint9_translateZ.o" "joint9.tz";
connectAttr "joint9_rotateX.o" "joint9.rx";
connectAttr "joint9_rotateY.o" "joint9.ry";
connectAttr "joint9_rotateZ.o" "joint9.rz";
connectAttr "joint9.s" "joint10.is";
connectAttr "joint10_scaleX.o" "joint10.sx";
connectAttr "joint10_scaleY.o" "joint10.sy";
connectAttr "joint10_scaleZ.o" "joint10.sz";
connectAttr "joint10_visibility.o" "joint10.v";
connectAttr "joint10_translateX.o" "joint10.tx";
connectAttr "joint10_translateY.o" "joint10.ty";
connectAttr "joint10_translateZ.o" "joint10.tz";
connectAttr "joint10_rotateX.o" "joint10.rx";
connectAttr "joint10_rotateY.o" "joint10.ry";
connectAttr "joint10_rotateZ.o" "joint10.rz";
connectAttr "joint10.s" "joint11.is";
connectAttr "joint11_visibility.o" "joint11.v";
connectAttr "joint11_translateX.o" "joint11.tx";
connectAttr "joint11_translateY.o" "joint11.ty";
connectAttr "joint11_translateZ.o" "joint11.tz";
connectAttr "joint11_rotateX.o" "joint11.rx";
connectAttr "joint11_rotateY.o" "joint11.ry";
connectAttr "joint11_rotateZ.o" "joint11.rz";
connectAttr "joint11_scaleX.o" "joint11.sx";
connectAttr "joint11_scaleY.o" "joint11.sy";
connectAttr "joint11_scaleZ.o" "joint11.sz";
connectAttr "joint8.s" "joint12.is";
connectAttr "joint12_scaleX.o" "joint12.sx";
connectAttr "joint12_scaleY.o" "joint12.sy";
connectAttr "joint12_scaleZ.o" "joint12.sz";
connectAttr "joint12_visibility.o" "joint12.v";
connectAttr "joint12_translateX.o" "joint12.tx";
connectAttr "joint12_translateY.o" "joint12.ty";
connectAttr "joint12_translateZ.o" "joint12.tz";
connectAttr "joint12_rotateX.o" "joint12.rx";
connectAttr "joint12_rotateY.o" "joint12.ry";
connectAttr "joint12_rotateZ.o" "joint12.rz";
connectAttr "joint12.s" "joint13.is";
connectAttr "joint13_scaleX.o" "joint13.sx";
connectAttr "joint13_scaleY.o" "joint13.sy";
connectAttr "joint13_scaleZ.o" "joint13.sz";
connectAttr "joint13_visibility.o" "joint13.v";
connectAttr "joint13_translateX.o" "joint13.tx";
connectAttr "joint13_translateY.o" "joint13.ty";
connectAttr "joint13_translateZ.o" "joint13.tz";
connectAttr "joint13_rotateX.o" "joint13.rx";
connectAttr "joint13_rotateY.o" "joint13.ry";
connectAttr "joint13_rotateZ.o" "joint13.rz";
connectAttr "joint13.s" "joint14.is";
connectAttr "joint14_visibility.o" "joint14.v";
connectAttr "joint14_translateX.o" "joint14.tx";
connectAttr "joint14_translateY.o" "joint14.ty";
connectAttr "joint14_translateZ.o" "joint14.tz";
connectAttr "joint14_rotateX.o" "joint14.rx";
connectAttr "joint14_rotateY.o" "joint14.ry";
connectAttr "joint14_rotateZ.o" "joint14.rz";
connectAttr "joint14_scaleX.o" "joint14.sx";
connectAttr "joint14_scaleY.o" "joint14.sy";
connectAttr "joint14_scaleZ.o" "joint14.sz";
connectAttr "joint8.s" "joint15.is";
connectAttr "joint15_scaleX.o" "joint15.sx";
connectAttr "joint15_scaleY.o" "joint15.sy";
connectAttr "joint15_scaleZ.o" "joint15.sz";
connectAttr "joint15_visibility.o" "joint15.v";
connectAttr "joint15_translateX.o" "joint15.tx";
connectAttr "joint15_translateY.o" "joint15.ty";
connectAttr "joint15_translateZ.o" "joint15.tz";
connectAttr "joint15_rotateX.o" "joint15.rx";
connectAttr "joint15_rotateY.o" "joint15.ry";
connectAttr "joint15_rotateZ.o" "joint15.rz";
connectAttr "joint15.s" "joint16.is";
connectAttr "joint16_visibility.o" "joint16.v";
connectAttr "joint16_translateX.o" "joint16.tx";
connectAttr "joint16_translateY.o" "joint16.ty";
connectAttr "joint16_translateZ.o" "joint16.tz";
connectAttr "joint16_rotateX.o" "joint16.rx";
connectAttr "joint16_rotateY.o" "joint16.ry";
connectAttr "joint16_rotateZ.o" "joint16.rz";
connectAttr "joint16_scaleX.o" "joint16.sx";
connectAttr "joint16_scaleY.o" "joint16.sy";
connectAttr "joint16_scaleZ.o" "joint16.sz";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "groupId3.msg" "tweakSet1.gn" -na;
connectAttr "groupId5.msg" "tweakSet1.gn" -na;
connectAttr "groupId7.msg" "tweakSet1.gn" -na;
connectAttr "groupId9.msg" "tweakSet1.gn" -na;
connectAttr "groupId11.msg" "tweakSet1.gn" -na;
connectAttr "groupId13.msg" "tweakSet1.gn" -na;
connectAttr "groupId15.msg" "tweakSet1.gn" -na;
connectAttr "groupId17.msg" "tweakSet1.gn" -na;
connectAttr "groupId19.msg" "tweakSet1.gn" -na;
connectAttr "groupId21.msg" "tweakSet1.gn" -na;
connectAttr "groupId23.msg" "tweakSet1.gn" -na;
connectAttr "groupId25.msg" "tweakSet1.gn" -na;
connectAttr "groupId27.msg" "tweakSet1.gn" -na;
connectAttr "groupId29.msg" "tweakSet1.gn" -na;
connectAttr "groupId31.msg" "tweakSet1.gn" -na;
connectAttr "groupId33.msg" "tweakSet1.gn" -na;
connectAttr "groupId35.msg" "tweakSet1.gn" -na;
connectAttr "groupId37.msg" "tweakSet1.gn" -na;
connectAttr "groupId39.msg" "tweakSet1.gn" -na;
connectAttr "groupId41.msg" "tweakSet1.gn" -na;
connectAttr "groupId43.msg" "tweakSet1.gn" -na;
connectAttr "groupId45.msg" "tweakSet1.gn" -na;
connectAttr "groupId47.msg" "tweakSet1.gn" -na;
connectAttr "groupId49.msg" "tweakSet1.gn" -na;
connectAttr "groupId51.msg" "tweakSet1.gn" -na;
connectAttr "groupId53.msg" "tweakSet1.gn" -na;
connectAttr "groupId55.msg" "tweakSet1.gn" -na;
connectAttr "groupId57.msg" "tweakSet1.gn" -na;
connectAttr "groupId59.msg" "tweakSet1.gn" -na;
connectAttr "groupId61.msg" "tweakSet1.gn" -na;
connectAttr "groupId63.msg" "tweakSet1.gn" -na;
connectAttr "groupId65.msg" "tweakSet1.gn" -na;
connectAttr "groupId67.msg" "tweakSet1.gn" -na;
connectAttr "groupId69.msg" "tweakSet1.gn" -na;
connectAttr "groupId71.msg" "tweakSet1.gn" -na;
connectAttr "groupId73.msg" "tweakSet1.gn" -na;
connectAttr "groupId75.msg" "tweakSet1.gn" -na;
connectAttr "groupId77.msg" "tweakSet1.gn" -na;
connectAttr "groupId79.msg" "tweakSet1.gn" -na;
connectAttr "groupId81.msg" "tweakSet1.gn" -na;
connectAttr "groupId83.msg" "tweakSet1.gn" -na;
connectAttr "groupId85.msg" "tweakSet1.gn" -na;
connectAttr "groupId87.msg" "tweakSet1.gn" -na;
connectAttr "groupId89.msg" "tweakSet1.gn" -na;
connectAttr "groupId91.msg" "tweakSet1.gn" -na;
connectAttr "groupId95.msg" "tweakSet1.gn" -na;
connectAttr "groupId97.msg" "tweakSet1.gn" -na;
connectAttr "groupId99.msg" "tweakSet1.gn" -na;
connectAttr "groupId101.msg" "tweakSet1.gn" -na;
connectAttr "groupId103.msg" "tweakSet1.gn" -na;
connectAttr "groupId105.msg" "tweakSet1.gn" -na;
connectAttr "groupId107.msg" "tweakSet1.gn" -na;
connectAttr "groupId109.msg" "tweakSet1.gn" -na;
connectAttr "groupId112.msg" "tweakSet1.gn" -na;
connectAttr "pPyramid28Shape.iog.og[2]" "tweakSet1.dsm" -na;
connectAttr "polySurfaceShape1.iog.og[1]" "tweakSet1.dsm" -na;
connectAttr "polySurfaceShape2.iog.og[1]" "tweakSet1.dsm" -na;
connectAttr "polySurfaceShape3.iog.og[1]" "tweakSet1.dsm" -na;
connectAttr "polySurfaceShape4.iog.og[1]" "tweakSet1.dsm" -na;
connectAttr "polySurfaceShape5.iog.og[1]" "tweakSet1.dsm" -na;
connectAttr "polySurfaceShape6.iog.og[1]" "tweakSet1.dsm" -na;
connectAttr "polySurfaceShape7.iog.og[1]" "tweakSet1.dsm" -na;
connectAttr "polySurfaceShape8.iog.og[1]" "tweakSet1.dsm" -na;
connectAttr "polySurfaceShape9.iog.og[1]" "tweakSet1.dsm" -na;
connectAttr "polySurfaceShape10.iog.og[1]" "tweakSet1.dsm" -na;
connectAttr "polySurfaceShape11.iog.og[1]" "tweakSet1.dsm" -na;
connectAttr "polySurfaceShape12.iog.og[1]" "tweakSet1.dsm" -na;
connectAttr "polySurfaceShape13.iog.og[1]" "tweakSet1.dsm" -na;
connectAttr "polySurfaceShape14.iog.og[1]" "tweakSet1.dsm" -na;
connectAttr "polySurfaceShape15.iog.og[1]" "tweakSet1.dsm" -na;
connectAttr "polySurfaceShape16.iog.og[1]" "tweakSet1.dsm" -na;
connectAttr "polySurfaceShape17.iog.og[1]" "tweakSet1.dsm" -na;
connectAttr "polySurfaceShape18.iog.og[1]" "tweakSet1.dsm" -na;
connectAttr "polySurfaceShape19.iog.og[1]" "tweakSet1.dsm" -na;
connectAttr "polySurfaceShape20.iog.og[1]" "tweakSet1.dsm" -na;
connectAttr "polySurfaceShape21.iog.og[1]" "tweakSet1.dsm" -na;
connectAttr "polySurfaceShape22.iog.og[1]" "tweakSet1.dsm" -na;
connectAttr "polySurfaceShape23.iog.og[1]" "tweakSet1.dsm" -na;
connectAttr "polySurfaceShape24.iog.og[1]" "tweakSet1.dsm" -na;
connectAttr "polySurfaceShape25.iog.og[1]" "tweakSet1.dsm" -na;
connectAttr "polySurfaceShape26.iog.og[1]" "tweakSet1.dsm" -na;
connectAttr "polySurface10Shape.iog.og[1]" "tweakSet1.dsm" -na;
connectAttr "polySurfaceShape27.iog.og[1]" "tweakSet1.dsm" -na;
connectAttr "polySurfaceShape28.iog.og[1]" "tweakSet1.dsm" -na;
connectAttr "polySurfaceShape29.iog.og[1]" "tweakSet1.dsm" -na;
connectAttr "polySurfaceShape30.iog.og[1]" "tweakSet1.dsm" -na;
connectAttr "polySurfaceShape31.iog.og[1]" "tweakSet1.dsm" -na;
connectAttr "polySurfaceShape32.iog.og[1]" "tweakSet1.dsm" -na;
connectAttr "polySurfaceShape33.iog.og[1]" "tweakSet1.dsm" -na;
connectAttr "polySurfaceShape34.iog.og[1]" "tweakSet1.dsm" -na;
connectAttr "polySurfaceShape35.iog.og[1]" "tweakSet1.dsm" -na;
connectAttr "polySurfaceShape36.iog.og[1]" "tweakSet1.dsm" -na;
connectAttr "polySurfaceShape37.iog.og[1]" "tweakSet1.dsm" -na;
connectAttr "polySurfaceShape38.iog.og[1]" "tweakSet1.dsm" -na;
connectAttr "polySurfaceShape39.iog.og[1]" "tweakSet1.dsm" -na;
connectAttr "polySurfaceShape40.iog.og[1]" "tweakSet1.dsm" -na;
connectAttr "polySurfaceShape41.iog.og[1]" "tweakSet1.dsm" -na;
connectAttr "polySurfaceShape42.iog.og[1]" "tweakSet1.dsm" -na;
connectAttr "polySurfaceShape43.iog.og[1]" "tweakSet1.dsm" -na;
connectAttr "polySurfaceShape45.iog.og[1]" "tweakSet1.dsm" -na;
connectAttr "polySurfaceShape46.iog.og[1]" "tweakSet1.dsm" -na;
connectAttr "polySurfaceShape47.iog.og[1]" "tweakSet1.dsm" -na;
connectAttr "polySurfaceShape48.iog.og[1]" "tweakSet1.dsm" -na;
connectAttr "polySurfaceShape49.iog.og[1]" "tweakSet1.dsm" -na;
connectAttr "polySurfaceShape50.iog.og[1]" "tweakSet1.dsm" -na;
connectAttr "polySurfaceShape51.iog.og[1]" "tweakSet1.dsm" -na;
connectAttr "polySurfaceShape52.iog.og[1]" "tweakSet1.dsm" -na;
connectAttr "polySurface39Shape.iog.og[1]" "tweakSet1.dsm" -na;
connectAttr "tweak1.msg" "tweakSet1.ub[0]";
connectAttr "groupParts56.og" "groupParts57.ig";
connectAttr "groupId57.id" "groupParts57.gi";
connectAttr "polyUnite1.out" "groupParts56.ig";
connectAttr "groupId56.id" "groupParts56.gi";
connectAttr "polySurfaceShape10.o" "polyUnite1.ip[0]";
connectAttr "polySurfaceShape12.o" "polyUnite1.ip[1]";
connectAttr "polySurfaceShape11.o" "polyUnite1.ip[2]";
connectAttr "polySurfaceShape13.o" "polyUnite1.ip[3]";
connectAttr "polySurfaceShape9.o" "polyUnite1.ip[4]";
connectAttr "polySurfaceShape26.o" "polyUnite1.ip[5]";
connectAttr "polySurfaceShape23.o" "polyUnite1.ip[6]";
connectAttr "polySurfaceShape24.o" "polyUnite1.ip[7]";
connectAttr "polySurfaceShape25.o" "polyUnite1.ip[8]";
connectAttr "polySurfaceShape20.o" "polyUnite1.ip[9]";
connectAttr "polySurfaceShape21.o" "polyUnite1.ip[10]";
connectAttr "polySurfaceShape22.o" "polyUnite1.ip[11]";
connectAttr "polySurfaceShape19.o" "polyUnite1.ip[12]";
connectAttr "polySurfaceShape14.o" "polyUnite1.ip[13]";
connectAttr "polySurfaceShape16.o" "polyUnite1.ip[14]";
connectAttr "polySurfaceShape18.o" "polyUnite1.ip[15]";
connectAttr "polySurfaceShape17.o" "polyUnite1.ip[16]";
connectAttr "polySurfaceShape15.o" "polyUnite1.ip[17]";
connectAttr "polySurfaceShape8.o" "polyUnite1.ip[18]";
connectAttr "polySurfaceShape7.o" "polyUnite1.ip[19]";
connectAttr "polySurfaceShape6.o" "polyUnite1.ip[20]";
connectAttr "polySurfaceShape5.o" "polyUnite1.ip[21]";
connectAttr "polySurfaceShape4.o" "polyUnite1.ip[22]";
connectAttr "polySurfaceShape3.o" "polyUnite1.ip[23]";
connectAttr "polySurfaceShape2.o" "polyUnite1.ip[24]";
connectAttr "polySurfaceShape1.o" "polyUnite1.ip[25]";
connectAttr "polySurfaceShape10.wm" "polyUnite1.im[0]";
connectAttr "polySurfaceShape12.wm" "polyUnite1.im[1]";
connectAttr "polySurfaceShape11.wm" "polyUnite1.im[2]";
connectAttr "polySurfaceShape13.wm" "polyUnite1.im[3]";
connectAttr "polySurfaceShape9.wm" "polyUnite1.im[4]";
connectAttr "polySurfaceShape26.wm" "polyUnite1.im[5]";
connectAttr "polySurfaceShape23.wm" "polyUnite1.im[6]";
connectAttr "polySurfaceShape24.wm" "polyUnite1.im[7]";
connectAttr "polySurfaceShape25.wm" "polyUnite1.im[8]";
connectAttr "polySurfaceShape20.wm" "polyUnite1.im[9]";
connectAttr "polySurfaceShape21.wm" "polyUnite1.im[10]";
connectAttr "polySurfaceShape22.wm" "polyUnite1.im[11]";
connectAttr "polySurfaceShape19.wm" "polyUnite1.im[12]";
connectAttr "polySurfaceShape14.wm" "polyUnite1.im[13]";
connectAttr "polySurfaceShape16.wm" "polyUnite1.im[14]";
connectAttr "polySurfaceShape18.wm" "polyUnite1.im[15]";
connectAttr "polySurfaceShape17.wm" "polyUnite1.im[16]";
connectAttr "polySurfaceShape15.wm" "polyUnite1.im[17]";
connectAttr "polySurfaceShape8.wm" "polyUnite1.im[18]";
connectAttr "polySurfaceShape7.wm" "polyUnite1.im[19]";
connectAttr "polySurfaceShape6.wm" "polyUnite1.im[20]";
connectAttr "polySurfaceShape5.wm" "polyUnite1.im[21]";
connectAttr "polySurfaceShape4.wm" "polyUnite1.im[22]";
connectAttr "polySurfaceShape3.wm" "polyUnite1.im[23]";
connectAttr "polySurfaceShape2.wm" "polyUnite1.im[24]";
connectAttr "polySurfaceShape1.wm" "polyUnite1.im[25]";
connectAttr "groupParts54.og" "groupParts55.ig";
connectAttr "groupId55.id" "groupParts55.gi";
connectAttr "polySeparate1.out[25]" "groupParts54.ig";
connectAttr "groupId54.id" "groupParts54.gi";
connectAttr "groupParts36.og" "groupParts37.ig";
connectAttr "groupId37.id" "groupParts37.gi";
connectAttr "polySeparate1.out[16]" "groupParts36.ig";
connectAttr "groupId36.id" "groupParts36.gi";
connectAttr "groupParts50.og" "groupParts51.ig";
connectAttr "groupId51.id" "groupParts51.gi";
connectAttr "polySeparate1.out[23]" "groupParts50.ig";
connectAttr "groupId50.id" "groupParts50.gi";
connectAttr "groupParts40.og" "groupParts41.ig";
connectAttr "groupId41.id" "groupParts41.gi";
connectAttr "polySeparate1.out[18]" "groupParts40.ig";
connectAttr "groupId40.id" "groupParts40.gi";
connectAttr "groupParts46.og" "groupParts47.ig";
connectAttr "groupId47.id" "groupParts47.gi";
connectAttr "polySeparate1.out[21]" "groupParts46.ig";
connectAttr "groupId46.id" "groupParts46.gi";
connectAttr "groupParts38.og" "groupParts39.ig";
connectAttr "groupId39.id" "groupParts39.gi";
connectAttr "polySeparate1.out[17]" "groupParts38.ig";
connectAttr "groupId38.id" "groupParts38.gi";
connectAttr "groupParts48.og" "groupParts49.ig";
connectAttr "groupId49.id" "groupParts49.gi";
connectAttr "polySeparate1.out[22]" "groupParts48.ig";
connectAttr "groupId48.id" "groupParts48.gi";
connectAttr "groupParts44.og" "groupParts45.ig";
connectAttr "groupId45.id" "groupParts45.gi";
connectAttr "polySeparate1.out[20]" "groupParts44.ig";
connectAttr "groupId44.id" "groupParts44.gi";
connectAttr "groupParts30.og" "groupParts31.ig";
connectAttr "groupId31.id" "groupParts31.gi";
connectAttr "polySeparate1.out[13]" "groupParts30.ig";
connectAttr "groupId30.id" "groupParts30.gi";
connectAttr "groupParts28.og" "groupParts29.ig";
connectAttr "groupId29.id" "groupParts29.gi";
connectAttr "polySeparate1.out[12]" "groupParts28.ig";
connectAttr "groupId28.id" "groupParts28.gi";
connectAttr "groupParts52.og" "groupParts53.ig";
connectAttr "groupId53.id" "groupParts53.gi";
connectAttr "polySeparate1.out[24]" "groupParts52.ig";
connectAttr "groupId52.id" "groupParts52.gi";
connectAttr "groupParts42.og" "groupParts43.ig";
connectAttr "groupId43.id" "groupParts43.gi";
connectAttr "polySeparate1.out[19]" "groupParts42.ig";
connectAttr "groupId42.id" "groupParts42.gi";
connectAttr "groupParts26.og" "groupParts27.ig";
connectAttr "groupId27.id" "groupParts27.gi";
connectAttr "polySeparate1.out[11]" "groupParts26.ig";
connectAttr "groupId26.id" "groupParts26.gi";
connectAttr "groupParts32.og" "groupParts33.ig";
connectAttr "groupId33.id" "groupParts33.gi";
connectAttr "polySeparate1.out[14]" "groupParts32.ig";
connectAttr "groupId32.id" "groupParts32.gi";
connectAttr "groupParts34.og" "groupParts35.ig";
connectAttr "groupId35.id" "groupParts35.gi";
connectAttr "polySeparate1.out[15]" "groupParts34.ig";
connectAttr "groupId34.id" "groupParts34.gi";
connectAttr "groupParts22.og" "groupParts23.ig";
connectAttr "groupId23.id" "groupParts23.gi";
connectAttr "polySeparate1.out[9]" "groupParts22.ig";
connectAttr "groupId22.id" "groupParts22.gi";
connectAttr "groupParts20.og" "groupParts21.ig";
connectAttr "groupId21.id" "groupParts21.gi";
connectAttr "polySeparate1.out[8]" "groupParts20.ig";
connectAttr "groupId20.id" "groupParts20.gi";
connectAttr "groupParts18.og" "groupParts19.ig";
connectAttr "groupId19.id" "groupParts19.gi";
connectAttr "polySeparate1.out[7]" "groupParts18.ig";
connectAttr "groupId18.id" "groupParts18.gi";
connectAttr "groupParts10.og" "groupParts11.ig";
connectAttr "groupId11.id" "groupParts11.gi";
connectAttr "polySeparate1.out[3]" "groupParts10.ig";
connectAttr "groupId10.id" "groupParts10.gi";
connectAttr "groupParts8.og" "groupParts9.ig";
connectAttr "groupId9.id" "groupParts9.gi";
connectAttr "polySeparate1.out[2]" "groupParts8.ig";
connectAttr "groupId8.id" "groupParts8.gi";
connectAttr "groupParts4.og" "groupParts5.ig";
connectAttr "groupId5.id" "groupParts5.gi";
connectAttr "polySeparate1.out[0]" "groupParts4.ig";
connectAttr "groupId4.id" "groupParts4.gi";
connectAttr "groupParts16.og" "groupParts17.ig";
connectAttr "groupId17.id" "groupParts17.gi";
connectAttr "polySeparate1.out[6]" "groupParts16.ig";
connectAttr "groupId16.id" "groupParts16.gi";
connectAttr "groupParts14.og" "groupParts15.ig";
connectAttr "groupId15.id" "groupParts15.gi";
connectAttr "polySeparate1.out[5]" "groupParts14.ig";
connectAttr "groupId14.id" "groupParts14.gi";
connectAttr "groupParts12.og" "groupParts13.ig";
connectAttr "groupId13.id" "groupParts13.gi";
connectAttr "polySeparate1.out[4]" "groupParts12.ig";
connectAttr "groupId12.id" "groupParts12.gi";
connectAttr "groupParts6.og" "groupParts7.ig";
connectAttr "groupId7.id" "groupParts7.gi";
connectAttr "polySeparate1.out[1]" "groupParts6.ig";
connectAttr "groupId6.id" "groupParts6.gi";
connectAttr "groupParts24.og" "groupParts25.ig";
connectAttr "groupId25.id" "groupParts25.gi";
connectAttr "polySeparate1.out[10]" "groupParts24.ig";
connectAttr "groupId24.id" "groupParts24.gi";
connectAttr "pPyramid28Shape.o" "polySeparate1.ip";
connectAttr "groupParts1.og" "groupParts3.ig";
connectAttr "groupId3.id" "groupParts3.gi";
connectAttr "groupParts3.og" "tweak1.ip[0].ig";
connectAttr "groupId3.id" "tweak1.ip[0].gi";
connectAttr "pPyramid28ShapeOrig.w" "groupParts1.ig";
connectAttr "groupId1.id" "groupParts1.gi";
connectAttr "polySurface10Shape.o" "polySeparate2.ip";
connectAttr "polySeparate2.out[0]" "groupParts58.ig";
connectAttr "groupId58.id" "groupParts58.gi";
connectAttr "groupParts58.og" "groupParts59.ig";
connectAttr "groupId59.id" "groupParts59.gi";
connectAttr "polySeparate2.out[1]" "groupParts60.ig";
connectAttr "groupId60.id" "groupParts60.gi";
connectAttr "groupParts60.og" "groupParts61.ig";
connectAttr "groupId61.id" "groupParts61.gi";
connectAttr "polySeparate2.out[2]" "groupParts62.ig";
connectAttr "groupId62.id" "groupParts62.gi";
connectAttr "groupParts62.og" "groupParts63.ig";
connectAttr "groupId63.id" "groupParts63.gi";
connectAttr "polySeparate2.out[3]" "groupParts64.ig";
connectAttr "groupId64.id" "groupParts64.gi";
connectAttr "groupParts64.og" "groupParts65.ig";
connectAttr "groupId65.id" "groupParts65.gi";
connectAttr "polySeparate2.out[4]" "groupParts66.ig";
connectAttr "groupId66.id" "groupParts66.gi";
connectAttr "groupParts66.og" "groupParts67.ig";
connectAttr "groupId67.id" "groupParts67.gi";
connectAttr "polySeparate2.out[5]" "groupParts68.ig";
connectAttr "groupId68.id" "groupParts68.gi";
connectAttr "groupParts68.og" "groupParts69.ig";
connectAttr "groupId69.id" "groupParts69.gi";
connectAttr "polySeparate2.out[6]" "groupParts70.ig";
connectAttr "groupId70.id" "groupParts70.gi";
connectAttr "groupParts70.og" "groupParts71.ig";
connectAttr "groupId71.id" "groupParts71.gi";
connectAttr "polySeparate2.out[7]" "groupParts72.ig";
connectAttr "groupId72.id" "groupParts72.gi";
connectAttr "groupParts72.og" "groupParts73.ig";
connectAttr "groupId73.id" "groupParts73.gi";
connectAttr "polySeparate2.out[8]" "groupParts74.ig";
connectAttr "groupId74.id" "groupParts74.gi";
connectAttr "groupParts74.og" "groupParts75.ig";
connectAttr "groupId75.id" "groupParts75.gi";
connectAttr "polySeparate2.out[9]" "groupParts76.ig";
connectAttr "groupId76.id" "groupParts76.gi";
connectAttr "groupParts76.og" "groupParts77.ig";
connectAttr "groupId77.id" "groupParts77.gi";
connectAttr "polySeparate2.out[10]" "groupParts78.ig";
connectAttr "groupId78.id" "groupParts78.gi";
connectAttr "groupParts78.og" "groupParts79.ig";
connectAttr "groupId79.id" "groupParts79.gi";
connectAttr "polySeparate2.out[11]" "groupParts80.ig";
connectAttr "groupId80.id" "groupParts80.gi";
connectAttr "groupParts80.og" "groupParts81.ig";
connectAttr "groupId81.id" "groupParts81.gi";
connectAttr "polySeparate2.out[12]" "groupParts82.ig";
connectAttr "groupId82.id" "groupParts82.gi";
connectAttr "groupParts82.og" "groupParts83.ig";
connectAttr "groupId83.id" "groupParts83.gi";
connectAttr "polySeparate2.out[13]" "groupParts84.ig";
connectAttr "groupId84.id" "groupParts84.gi";
connectAttr "groupParts84.og" "groupParts85.ig";
connectAttr "groupId85.id" "groupParts85.gi";
connectAttr "polySeparate2.out[14]" "groupParts86.ig";
connectAttr "groupId86.id" "groupParts86.gi";
connectAttr "groupParts86.og" "groupParts87.ig";
connectAttr "groupId87.id" "groupParts87.gi";
connectAttr "polySeparate2.out[15]" "groupParts88.ig";
connectAttr "groupId88.id" "groupParts88.gi";
connectAttr "groupParts88.og" "groupParts89.ig";
connectAttr "groupId89.id" "groupParts89.gi";
connectAttr "polySeparate2.out[16]" "groupParts90.ig";
connectAttr "groupId90.id" "groupParts90.gi";
connectAttr "groupParts90.og" "groupParts91.ig";
connectAttr "groupId91.id" "groupParts91.gi";
connectAttr "polySeparate2.out[18]" "groupParts94.ig";
connectAttr "groupId94.id" "groupParts94.gi";
connectAttr "groupParts94.og" "groupParts95.ig";
connectAttr "groupId95.id" "groupParts95.gi";
connectAttr "polySeparate2.out[19]" "groupParts96.ig";
connectAttr "groupId96.id" "groupParts96.gi";
connectAttr "groupParts96.og" "groupParts97.ig";
connectAttr "groupId97.id" "groupParts97.gi";
connectAttr "polySeparate2.out[20]" "groupParts98.ig";
connectAttr "groupId98.id" "groupParts98.gi";
connectAttr "groupParts98.og" "groupParts99.ig";
connectAttr "groupId99.id" "groupParts99.gi";
connectAttr "polySeparate2.out[21]" "groupParts100.ig";
connectAttr "groupId100.id" "groupParts100.gi";
connectAttr "groupParts100.og" "groupParts101.ig";
connectAttr "groupId101.id" "groupParts101.gi";
connectAttr "polySeparate2.out[22]" "groupParts102.ig";
connectAttr "groupId102.id" "groupParts102.gi";
connectAttr "groupParts102.og" "groupParts103.ig";
connectAttr "groupId103.id" "groupParts103.gi";
connectAttr "polySeparate2.out[23]" "groupParts104.ig";
connectAttr "groupId104.id" "groupParts104.gi";
connectAttr "groupParts104.og" "groupParts105.ig";
connectAttr "groupId105.id" "groupParts105.gi";
connectAttr "polySeparate2.out[24]" "groupParts106.ig";
connectAttr "groupId106.id" "groupParts106.gi";
connectAttr "groupParts106.og" "groupParts107.ig";
connectAttr "groupId107.id" "groupParts107.gi";
connectAttr "polySeparate2.out[25]" "groupParts108.ig";
connectAttr "groupId108.id" "groupParts108.gi";
connectAttr "groupParts108.og" "groupParts109.ig";
connectAttr "groupId109.id" "groupParts109.gi";
connectAttr "polySurfaceShape39.o" "polyUnite2.ip[0]";
connectAttr "polySurfaceShape38.o" "polyUnite2.ip[1]";
connectAttr "polySurfaceShape37.o" "polyUnite2.ip[2]";
connectAttr "polySurfaceShape36.o" "polyUnite2.ip[3]";
connectAttr "polySurfaceShape35.o" "polyUnite2.ip[4]";
connectAttr "polySurfaceShape34.o" "polyUnite2.ip[5]";
connectAttr "polySurfaceShape33.o" "polyUnite2.ip[6]";
connectAttr "polySurfaceShape32.o" "polyUnite2.ip[7]";
connectAttr "polySurfaceShape31.o" "polyUnite2.ip[8]";
connectAttr "polySurfaceShape30.o" "polyUnite2.ip[9]";
connectAttr "polySurfaceShape29.o" "polyUnite2.ip[10]";
connectAttr "polySurfaceShape28.o" "polyUnite2.ip[11]";
connectAttr "polySurfaceShape27.o" "polyUnite2.ip[12]";
connectAttr "polySurfaceShape53.o" "polyUnite2.ip[13]";
connectAttr "polySurfaceShape52.o" "polyUnite2.ip[14]";
connectAttr "polySurfaceShape51.o" "polyUnite2.ip[15]";
connectAttr "polySurfaceShape50.o" "polyUnite2.ip[16]";
connectAttr "polySurfaceShape49.o" "polyUnite2.ip[17]";
connectAttr "polySurfaceShape48.o" "polyUnite2.ip[18]";
connectAttr "polySurfaceShape47.o" "polyUnite2.ip[19]";
connectAttr "polySurfaceShape46.o" "polyUnite2.ip[20]";
connectAttr "polySurfaceShape45.o" "polyUnite2.ip[21]";
connectAttr "polySurfaceShape43.o" "polyUnite2.ip[22]";
connectAttr "polySurfaceShape42.o" "polyUnite2.ip[23]";
connectAttr "polySurfaceShape41.o" "polyUnite2.ip[24]";
connectAttr "polySurfaceShape40.o" "polyUnite2.ip[25]";
connectAttr "polySurfaceShape39.wm" "polyUnite2.im[0]";
connectAttr "polySurfaceShape38.wm" "polyUnite2.im[1]";
connectAttr "polySurfaceShape37.wm" "polyUnite2.im[2]";
connectAttr "polySurfaceShape36.wm" "polyUnite2.im[3]";
connectAttr "polySurfaceShape35.wm" "polyUnite2.im[4]";
connectAttr "polySurfaceShape34.wm" "polyUnite2.im[5]";
connectAttr "polySurfaceShape33.wm" "polyUnite2.im[6]";
connectAttr "polySurfaceShape32.wm" "polyUnite2.im[7]";
connectAttr "polySurfaceShape31.wm" "polyUnite2.im[8]";
connectAttr "polySurfaceShape30.wm" "polyUnite2.im[9]";
connectAttr "polySurfaceShape29.wm" "polyUnite2.im[10]";
connectAttr "polySurfaceShape28.wm" "polyUnite2.im[11]";
connectAttr "polySurfaceShape27.wm" "polyUnite2.im[12]";
connectAttr "polySurfaceShape53.wm" "polyUnite2.im[13]";
connectAttr "polySurfaceShape52.wm" "polyUnite2.im[14]";
connectAttr "polySurfaceShape51.wm" "polyUnite2.im[15]";
connectAttr "polySurfaceShape50.wm" "polyUnite2.im[16]";
connectAttr "polySurfaceShape49.wm" "polyUnite2.im[17]";
connectAttr "polySurfaceShape48.wm" "polyUnite2.im[18]";
connectAttr "polySurfaceShape47.wm" "polyUnite2.im[19]";
connectAttr "polySurfaceShape46.wm" "polyUnite2.im[20]";
connectAttr "polySurfaceShape45.wm" "polyUnite2.im[21]";
connectAttr "polySurfaceShape43.wm" "polyUnite2.im[22]";
connectAttr "polySurfaceShape42.wm" "polyUnite2.im[23]";
connectAttr "polySurfaceShape41.wm" "polyUnite2.im[24]";
connectAttr "polySurfaceShape40.wm" "polyUnite2.im[25]";
connectAttr "polyUnite2.out" "groupParts110.ig";
connectAttr "groupId111.id" "groupParts110.gi";
connectAttr "groupParts110.og" "groupParts111.ig";
connectAttr "groupId112.id" "groupParts111.gi";
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
connectAttr "joint10.wm" "skinCluster1.ma[9]";
connectAttr "joint11.wm" "skinCluster1.ma[10]";
connectAttr "joint12.wm" "skinCluster1.ma[11]";
connectAttr "joint13.wm" "skinCluster1.ma[12]";
connectAttr "joint14.wm" "skinCluster1.ma[13]";
connectAttr "joint15.wm" "skinCluster1.ma[14]";
connectAttr "joint16.wm" "skinCluster1.ma[15]";
connectAttr "joint1.liw" "skinCluster1.lw[0]";
connectAttr "joint2.liw" "skinCluster1.lw[1]";
connectAttr "joint3.liw" "skinCluster1.lw[2]";
connectAttr "joint4.liw" "skinCluster1.lw[3]";
connectAttr "joint5.liw" "skinCluster1.lw[4]";
connectAttr "joint6.liw" "skinCluster1.lw[5]";
connectAttr "joint7.liw" "skinCluster1.lw[6]";
connectAttr "joint8.liw" "skinCluster1.lw[7]";
connectAttr "joint9.liw" "skinCluster1.lw[8]";
connectAttr "joint10.liw" "skinCluster1.lw[9]";
connectAttr "joint11.liw" "skinCluster1.lw[10]";
connectAttr "joint12.liw" "skinCluster1.lw[11]";
connectAttr "joint13.liw" "skinCluster1.lw[12]";
connectAttr "joint14.liw" "skinCluster1.lw[13]";
connectAttr "joint15.liw" "skinCluster1.lw[14]";
connectAttr "joint16.liw" "skinCluster1.lw[15]";
connectAttr "joint1.obcc" "skinCluster1.ifcl[0]";
connectAttr "joint2.obcc" "skinCluster1.ifcl[1]";
connectAttr "joint3.obcc" "skinCluster1.ifcl[2]";
connectAttr "joint4.obcc" "skinCluster1.ifcl[3]";
connectAttr "joint5.obcc" "skinCluster1.ifcl[4]";
connectAttr "joint6.obcc" "skinCluster1.ifcl[5]";
connectAttr "joint7.obcc" "skinCluster1.ifcl[6]";
connectAttr "joint8.obcc" "skinCluster1.ifcl[7]";
connectAttr "joint9.obcc" "skinCluster1.ifcl[8]";
connectAttr "joint10.obcc" "skinCluster1.ifcl[9]";
connectAttr "joint11.obcc" "skinCluster1.ifcl[10]";
connectAttr "joint12.obcc" "skinCluster1.ifcl[11]";
connectAttr "joint13.obcc" "skinCluster1.ifcl[12]";
connectAttr "joint14.obcc" "skinCluster1.ifcl[13]";
connectAttr "joint15.obcc" "skinCluster1.ifcl[14]";
connectAttr "joint16.obcc" "skinCluster1.ifcl[15]";
connectAttr "skinBinding1.uw" "skinCluster1.bc";
connectAttr "groupParts113.og" "tweak2.ip[0].ig";
connectAttr "groupId114.id" "tweak2.ip[0].gi";
connectAttr "skinCluster1GroupId.msg" "skinCluster1Set.gn" -na;
connectAttr "polySurface39Shape.iog.og[4]" "skinCluster1Set.dsm" -na;
connectAttr "skinCluster1.msg" "skinCluster1Set.ub[0]";
connectAttr "tweak2.og[0]" "skinCluster1GroupParts.ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1GroupParts.gi";
connectAttr "groupId114.msg" "tweakSet2.gn" -na;
connectAttr "polySurface39Shape.iog.og[5]" "tweakSet2.dsm" -na;
connectAttr "tweak2.msg" "tweakSet2.ub[0]";
connectAttr "polySurface39ShapeOrig.w" "groupParts113.ig";
connectAttr "groupId114.id" "groupParts113.gi";
connectAttr "joint1.msg" "bindPose1.m[0]";
connectAttr "joint2.msg" "bindPose1.m[1]";
connectAttr "joint3.msg" "bindPose1.m[2]";
connectAttr "joint4.msg" "bindPose1.m[3]";
connectAttr "joint5.msg" "bindPose1.m[4]";
connectAttr "joint6.msg" "bindPose1.m[5]";
connectAttr "joint7.msg" "bindPose1.m[6]";
connectAttr "joint8.msg" "bindPose1.m[7]";
connectAttr "joint9.msg" "bindPose1.m[8]";
connectAttr "joint10.msg" "bindPose1.m[9]";
connectAttr "joint11.msg" "bindPose1.m[10]";
connectAttr "joint12.msg" "bindPose1.m[11]";
connectAttr "joint13.msg" "bindPose1.m[12]";
connectAttr "joint14.msg" "bindPose1.m[13]";
connectAttr "joint15.msg" "bindPose1.m[14]";
connectAttr "joint16.msg" "bindPose1.m[15]";
connectAttr "bindPose1.w" "bindPose1.p[0]";
connectAttr "bindPose1.m[0]" "bindPose1.p[1]";
connectAttr "bindPose1.m[1]" "bindPose1.p[2]";
connectAttr "bindPose1.m[2]" "bindPose1.p[3]";
connectAttr "bindPose1.m[0]" "bindPose1.p[4]";
connectAttr "bindPose1.m[4]" "bindPose1.p[5]";
connectAttr "bindPose1.m[5]" "bindPose1.p[6]";
connectAttr "bindPose1.m[0]" "bindPose1.p[7]";
connectAttr "bindPose1.m[7]" "bindPose1.p[8]";
connectAttr "bindPose1.m[8]" "bindPose1.p[9]";
connectAttr "bindPose1.m[9]" "bindPose1.p[10]";
connectAttr "bindPose1.m[7]" "bindPose1.p[11]";
connectAttr "bindPose1.m[11]" "bindPose1.p[12]";
connectAttr "bindPose1.m[12]" "bindPose1.p[13]";
connectAttr "bindPose1.m[7]" "bindPose1.p[14]";
connectAttr "bindPose1.m[14]" "bindPose1.p[15]";
connectAttr "joint1.bps" "bindPose1.wm[0]";
connectAttr "joint2.bps" "bindPose1.wm[1]";
connectAttr "joint3.bps" "bindPose1.wm[2]";
connectAttr "joint4.bps" "bindPose1.wm[3]";
connectAttr "joint5.bps" "bindPose1.wm[4]";
connectAttr "joint6.bps" "bindPose1.wm[5]";
connectAttr "joint7.bps" "bindPose1.wm[6]";
connectAttr "joint8.bps" "bindPose1.wm[7]";
connectAttr "joint9.bps" "bindPose1.wm[8]";
connectAttr "joint10.bps" "bindPose1.wm[9]";
connectAttr "joint11.bps" "bindPose1.wm[10]";
connectAttr "joint12.bps" "bindPose1.wm[11]";
connectAttr "joint13.bps" "bindPose1.wm[12]";
connectAttr "joint14.bps" "bindPose1.wm[13]";
connectAttr "joint15.bps" "bindPose1.wm[14]";
connectAttr "joint16.bps" "bindPose1.wm[15]";
connectAttr "skinCluster1GroupParts.og" "skinBinding1.ig";
connectAttr "joint1.wm" "skinBinding1.pm[0]";
connectAttr "joint2.wm" "skinBinding1.pm[1]";
connectAttr "joint3.wm" "skinBinding1.pm[2]";
connectAttr "joint4.wm" "skinBinding1.pm[3]";
connectAttr "joint5.wm" "skinBinding1.pm[4]";
connectAttr "joint6.wm" "skinBinding1.pm[5]";
connectAttr "joint7.wm" "skinBinding1.pm[6]";
connectAttr "joint8.wm" "skinBinding1.pm[7]";
connectAttr "joint9.wm" "skinBinding1.pm[8]";
connectAttr "joint10.wm" "skinBinding1.pm[9]";
connectAttr "joint11.wm" "skinBinding1.pm[10]";
connectAttr "joint12.wm" "skinBinding1.pm[11]";
connectAttr "joint13.wm" "skinBinding1.pm[12]";
connectAttr "joint14.wm" "skinBinding1.pm[13]";
connectAttr "joint15.wm" "skinBinding1.pm[14]";
connectAttr "joint16.wm" "skinBinding1.pm[15]";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pPyramid28Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape2.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape3.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape4.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape5.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape6.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape7.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape8.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape9.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape10.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape11.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape12.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape13.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape14.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape15.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape16.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape17.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape18.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape19.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape20.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape21.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape22.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape23.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape24.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape25.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape26.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurface10Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape27.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape28.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape29.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape30.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape31.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape32.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape33.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape34.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape35.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape36.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape37.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape38.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape39.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape40.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape41.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape42.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape43.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape45.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape46.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape47.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape48.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape49.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape50.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape51.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape52.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape53.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurface39Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId1.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId4.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId6.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId8.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId10.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId12.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId14.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId16.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId18.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId20.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId22.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId24.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId26.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId28.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId30.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId32.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId34.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId36.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId38.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId40.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId42.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId44.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId46.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId48.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId50.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId52.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId54.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId56.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId58.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId60.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId62.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId64.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId66.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId68.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId70.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId72.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId74.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId76.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId78.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId80.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId82.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId84.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId86.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId88.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId90.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId94.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId96.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId98.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId100.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId102.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId104.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId106.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId108.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId110.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId111.msg" ":initialShadingGroup.gn" -na;
// End of pyramidal man.ma
