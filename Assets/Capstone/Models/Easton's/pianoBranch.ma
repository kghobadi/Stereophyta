//Maya ASCII 2018 scene
//Name: pianoBranch.ma
//Last modified: Sun, Apr 22, 2018 05:40:29 PM
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
	rename -uid "F45FFE43-BE44-AB52-1D0F-609BABB91137";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 11.021541609383057 2.1928281729925958 3.3989591814710467 ;
	setAttr ".r" -type "double3" -23.138352729609476 55.399999999998052 -2.8005544739829209e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "FFADC2B3-1D48-D205-77DC-309E416DEAAB";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 6.5093505486458554;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 6.0944697840687834 -0.36503896117210388 0 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "60DF250F-944A-A157-A16B-698BD050E62F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "4B61635F-BC47-9A1B-BA58-3684FEAA24CE";
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
	rename -uid "D8A0E00D-274A-A6A4-C1A8-AF928A351B04";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "65195DAA-4B4E-0FBB-E024-288487A2AA67";
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
	rename -uid "9E785618-344B-F863-5DBA-B2A4B315B359";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "C777719E-ED45-AF00-AE40-E79E4B06C7F0";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "pCube1";
	rename -uid "13B9F8BE-3A4B-B006-5093-D7AB17A3DB2B";
	setAttr ".t" -type "double3" 4.978528304266657 0 0 ;
	setAttr ".rp" -type "double3" -5.0043088722910989 0 0 ;
	setAttr ".sp" -type "double3" -0.50043088722911011 0 0 ;
	setAttr ".spt" -type "double3" -4.5038779850619965 0 0 ;
createNode mesh -n "pCubeShape1" -p "pCube1";
	rename -uid "37648253-7646-3E0F-0FA2-198949548D97";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.70268890261650085 0.72091959215634105 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "pCubeShape1Orig" -p "pCube1";
	rename -uid "000E2329-2F41-E9DA-3A09-ACAF99E685AD";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 31 ".uvst[0].uvsp[0:30]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.5 0.25 0.5 0.5 0.5 0.75 0.5 0 0.5 1 0.625 0 0.875
		 0 0.875 0.25 0.625 0.25 0.625 0 0.875 0 0.875 0 0.625 0 0.875 0.25 0.625 0.25 0.625
		 0.25 0.875 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -0.49999997 -0.17628711 0.17628711 0.16625682 -0.5 0.5
		 -0.49999997 0.17628711 0.17628711 0.16625682 0.5 0.5 -0.49999997 0.17628711 -0.17628711
		 0.16625682 0.5 -0.5 -0.49999997 -0.17628711 -0.17628711 0.16625682 -0.5 -0.5 -2.2351742e-08 0.17628711 0.17628711
		 -2.2351742e-08 0.17628711 -0.17628711 -2.2351742e-08 -0.17628711 -0.17628711 -2.2351742e-08 -0.17628711 0.17628711
		 0.21458292 -0.5 -0.5 0.21458292 -0.5 0.5 0.21458292 0.5 -0.5 0.21458292 0.5 0.5 0.17535062 -2.79160357 -0.31182408
		 0.17535062 -2.79160357 0.31182408 0.20548911 -2.79160357 -0.31182408 0.20548911 -2.79160357 0.31182408
		 0.16625682 1.33144772 0.5 0.16625682 1.33144772 -0.5 0.21458292 1.33144772 0.5 0.21458292 1.33144772 -0.5;
	setAttr -s 44 ".ed[0:43]"  0 11 0 2 8 0 4 9 0 6 10 0 0 2 0 1 3 1 2 4 0
		 3 5 0 4 6 0 5 7 1 6 0 0 7 1 0 8 3 0 9 5 0 8 9 1 10 7 0 9 10 1 11 1 0 10 11 1 11 8 1
		 7 12 1 1 13 1 12 13 1 5 14 1 14 12 0 3 15 1 15 14 1 13 15 0 7 16 0 1 17 0 16 17 0
		 12 18 0 16 18 0 13 19 0 18 19 0 17 19 0 3 20 0 5 21 0 20 21 0 15 22 0 20 22 0 14 23 0
		 22 23 0 21 23 0;
	setAttr -s 22 -ch 88 ".fc[0:21]" -type "polyFaces" 
		f 4 0 19 -2 -5
		mu 0 4 0 17 14 2
		f 4 1 14 -3 -7
		mu 0 4 2 14 15 4
		f 4 2 16 -4 -9
		mu 0 4 4 15 16 6
		f 4 3 18 -1 -11
		mu 0 4 6 16 18 8
		f 4 -23 -25 -27 -28
		mu 0 4 19 20 21 22
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 12 7 -14 -15
		mu 0 4 14 3 5 15
		f 4 -17 13 9 -16
		mu 0 4 16 15 5 7
		f 4 -19 15 11 -18
		mu 0 4 18 16 7 9
		f 4 -20 17 5 -13
		mu 0 4 14 17 1 3
		f 4 -31 32 34 -36
		mu 0 4 23 24 25 26
		f 4 -10 23 24 -21
		mu 0 4 10 11 21 20
		f 4 -39 40 42 -44
		mu 0 4 27 28 29 30
		f 4 -6 21 27 -26
		mu 0 4 3 1 19 22
		f 4 -12 28 30 -30
		mu 0 4 1 10 24 23
		f 4 20 31 -33 -29
		mu 0 4 10 20 25 24
		f 4 22 33 -35 -32
		mu 0 4 20 19 26 25
		f 4 -22 29 35 -34
		mu 0 4 19 1 23 26
		f 4 -8 36 38 -38
		mu 0 4 11 3 28 27
		f 4 25 39 -41 -37
		mu 0 4 3 22 29 28
		f 4 26 41 -43 -40
		mu 0 4 22 21 30 29
		f 4 -24 37 43 -42
		mu 0 4 21 11 27 30;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "BB2DDF78-1D49-6565-B654-708F164839F6";
	setAttr -s 3 ".lnk";
	setAttr -s 3 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "5066F127-F84F-A858-B7E6-DB8BFA4F6030";
createNode displayLayer -n "defaultLayer";
	rename -uid "770E1AAE-084E-A7B6-727A-398C8B7DDA66";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "BA4C52ED-6D46-6D4F-8950-25B8B8D4B54E";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "CA7A5A9D-7749-6F86-7DC8-629555036494";
	setAttr ".g" yes;
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "94E79811-DC40-1FA4-53C8-DE934873B595";
	setAttr ".bsdt[0].bscd" -type "Int32Array" 1 0 ;
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "B2335EB2-8547-7D9D-BB80-DCAA3774C2F1";
createNode animCurveTL -n "pCubeShape1_pnts_10__pntx";
	rename -uid "6814350D-2544-5A93-FF1E-96AD3663E717";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.10622790455818176 40 0 90 0;
	setAttr -s 3 ".kit[0:2]"  1 2 2;
	setAttr -s 3 ".kot[0:2]"  1 2 2;
	setAttr -s 3 ".kix[0:2]"  1 0.99787013882833231 1;
	setAttr -s 3 ".kiy[0:2]"  0 -0.0652317869962558 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "pCubeShape1_pnts_10__pnty";
	rename -uid "FFCDAABF-614E-A63C-84AD-E5B8B5BC393A";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -1.6718308925628662 40 0 90 0;
	setAttr -s 3 ".kit[0:2]"  1 2 2;
	setAttr -s 3 ".kot[0:2]"  1 2 2;
	setAttr -s 3 ".kix[0:2]"  1 0.69699214103710538 1;
	setAttr -s 3 ".kiy[0:2]"  0 0.71707876508268731 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "pCubeShape1_pnts_10__pntz";
	rename -uid "423DDF11-2648-F55F-1153-D2A212B998DB";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.1385171115398407 40 0 90 0;
	setAttr -s 3 ".kit[0:2]"  1 2 2;
	setAttr -s 3 ".kot[0:2]"  1 2 2;
	setAttr -s 3 ".kix[0:2]"  1 0.99638663977843633 1;
	setAttr -s 3 ".kiy[0:2]"  0 -0.084933291888613385 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "pCubeShape1_pnts_11__pntx";
	rename -uid "803703AF-A648-F420-3813-A682EF4B39C6";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.10622790455818176 40 0 90 0;
	setAttr -s 3 ".kit[0:2]"  1 2 2;
	setAttr -s 3 ".kot[0:2]"  1 2 2;
	setAttr -s 3 ".kix[0:2]"  1 0.99787013882833231 1;
	setAttr -s 3 ".kiy[0:2]"  0 -0.0652317869962558 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "pCubeShape1_pnts_11__pnty";
	rename -uid "58363B5B-9840-9878-E007-EFBC1DDB34BF";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -1.6718308925628662 40 0 90 0;
	setAttr -s 3 ".kit[0:2]"  1 2 2;
	setAttr -s 3 ".kot[0:2]"  1 2 2;
	setAttr -s 3 ".kix[0:2]"  1 0.69699214103710538 1;
	setAttr -s 3 ".kiy[0:2]"  0 0.71707876508268731 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "pCubeShape1_pnts_11__pntz";
	rename -uid "D7217724-8146-93AB-E57A-D4BC01AC96CF";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -0.1385171115398407 40 0 90 0;
	setAttr -s 3 ".kit[0:2]"  1 2 2;
	setAttr -s 3 ".kot[0:2]"  1 2 2;
	setAttr -s 3 ".kix[0:2]"  1 0.99638663977843633 1;
	setAttr -s 3 ".kiy[0:2]"  0 0.084933291888613385 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "pCubeShape1_pnts_12__pntx";
	rename -uid "C8EEC491-6D4C-64E9-425B-E79EFF215DFB";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -0.098017342388629913 40 0 90 0;
	setAttr -s 3 ".kit[0:2]"  1 2 2;
	setAttr -s 3 ".kot[0:2]"  1 2 2;
	setAttr -s 3 ".kix[0:2]"  1 0.99818579642058147 1;
	setAttr -s 3 ".kiy[0:2]"  0 0.06020893475398361 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "pCubeShape1_pnts_12__pnty";
	rename -uid "3B05482A-934C-C54E-CA85-509F4D2D01E9";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -1.4491983652114868 40 0 90 0;
	setAttr -s 3 ".kit[0:2]"  1 2 2;
	setAttr -s 3 ".kot[0:2]"  1 2 2;
	setAttr -s 3 ".kix[0:2]"  1 0.74632417051441324 1;
	setAttr -s 3 ".kiy[0:2]"  0 0.66558262635526555 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "pCubeShape1_pnts_12__pntz";
	rename -uid "AAABC92F-0547-EAB5-EA06-64AD4B499212";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.39287346601486206 40 0 90 0;
	setAttr -s 3 ".kit[0:2]"  1 2 2;
	setAttr -s 3 ".kot[0:2]"  1 2 2;
	setAttr -s 3 ".kix[0:2]"  1 0.97199590589706619 1;
	setAttr -s 3 ".kiy[0:2]"  0 -0.23499778492432991 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "pCubeShape1_pnts_13__pntx";
	rename -uid "8FAC0BCB-C241-FCD5-B76D-5AA35A8D0A2B";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -0.098017342388629913 40 0 90 0;
	setAttr -s 3 ".kit[0:2]"  1 2 2;
	setAttr -s 3 ".kot[0:2]"  1 2 2;
	setAttr -s 3 ".kix[0:2]"  1 0.99818579642058147 1;
	setAttr -s 3 ".kiy[0:2]"  0 0.06020893475398361 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "pCubeShape1_pnts_13__pnty";
	rename -uid "924ECECB-234B-12CA-F054-A38CFA7C4A02";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -1.4491983652114868 40 0 90 0;
	setAttr -s 3 ".kit[0:2]"  1 2 2;
	setAttr -s 3 ".kot[0:2]"  1 2 2;
	setAttr -s 3 ".kix[0:2]"  1 0.74632417051441324 1;
	setAttr -s 3 ".kiy[0:2]"  0 0.66558262635526555 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "pCubeShape1_pnts_13__pntz";
	rename -uid "36466427-5C40-FBC9-5A56-BFA975796B83";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -0.39287346601486206 40 0 90 0;
	setAttr -s 3 ".kit[0:2]"  1 2 2;
	setAttr -s 3 ".kot[0:2]"  1 2 2;
	setAttr -s 3 ".kix[0:2]"  1 0.97199590589706619 1;
	setAttr -s 3 ".kiy[0:2]"  0 0.23499778492432991 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "pCubeShape1_pnts_14__pntx";
	rename -uid "05F56187-204E-71F0-50DB-738681A4008F";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -0.098017342388629913 40 0 90 0;
	setAttr -s 3 ".kit[0:2]"  1 2 2;
	setAttr -s 3 ".kot[0:2]"  1 2 2;
	setAttr -s 3 ".kix[0:2]"  1 0.99818579642058147 1;
	setAttr -s 3 ".kiy[0:2]"  0 0.06020893475398361 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "pCubeShape1_pnts_14__pnty";
	rename -uid "90353FFE-8F40-CEF0-426E-CF99FF6F3B05";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -2.1369466781616211 40 0 90 0;
	setAttr -s 3 ".kit[0:2]"  1 2 2;
	setAttr -s 3 ".kot[0:2]"  1 2 2;
	setAttr -s 3 ".kix[0:2]"  1 0.60530059327959418 1;
	setAttr -s 3 ".kiy[0:2]"  0 0.79599697975266914 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "pCubeShape1_pnts_14__pntz";
	rename -uid "810AC78A-7346-0C27-D1BA-12818843C4C2";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.39287346601486206 40 0 90 0;
	setAttr -s 3 ".kit[0:2]"  1 2 2;
	setAttr -s 3 ".kot[0:2]"  1 2 2;
	setAttr -s 3 ".kix[0:2]"  1 0.97199590589706619 1;
	setAttr -s 3 ".kiy[0:2]"  0 -0.23499778492432991 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "pCubeShape1_pnts_15__pntx";
	rename -uid "F50C52E7-4F41-AD07-9A37-619EFD5624C7";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -0.098017342388629913 40 0 90 0;
	setAttr -s 3 ".kit[0:2]"  1 2 2;
	setAttr -s 3 ".kot[0:2]"  1 2 2;
	setAttr -s 3 ".kix[0:2]"  1 0.99818579642058147 1;
	setAttr -s 3 ".kiy[0:2]"  0 0.06020893475398361 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "pCubeShape1_pnts_15__pnty";
	rename -uid "8A8E0AF2-3B47-5370-3FE6-409BB694997B";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -2.1369466781616211 40 0 90 0;
	setAttr -s 3 ".kit[0:2]"  1 2 2;
	setAttr -s 3 ".kot[0:2]"  1 2 2;
	setAttr -s 3 ".kix[0:2]"  1 0.60530059327959418 1;
	setAttr -s 3 ".kiy[0:2]"  0 0.79599697975266914 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "pCubeShape1_pnts_15__pntz";
	rename -uid "B80E585A-6441-E633-2D8E-C3BFF2FB70AE";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -0.39287346601486206 40 0 90 0;
	setAttr -s 3 ".kit[0:2]"  1 2 2;
	setAttr -s 3 ".kot[0:2]"  1 2 2;
	setAttr -s 3 ".kix[0:2]"  1 0.97199590589706619 1;
	setAttr -s 3 ".kiy[0:2]"  0 0.23499778492432991 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "pCubeShape1_pnts_16__pntx";
	rename -uid "32D4B214-4742-5F8B-08DE-3F92D1DC1101";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -0.060687452554702759 40 0 90 0;
	setAttr -s 3 ".kit[0:2]"  1 2 2;
	setAttr -s 3 ".kot[0:2]"  1 2 2;
	setAttr -s 3 ".kix[0:2]"  1 0.99930336212010451 1;
	setAttr -s 3 ".kiy[0:2]"  0 0.037320107923950026 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "pCubeShape1_pnts_16__pnty";
	rename -uid "7D26ED60-7D41-ADAE-F459-E380733A16FC";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.12684808671474457 40 0 90 0;
	setAttr -s 3 ".kit[0:2]"  1 2 2;
	setAttr -s 3 ".kot[0:2]"  1 2 2;
	setAttr -s 3 ".kix[0:2]"  1 0.99696714335119474 1;
	setAttr -s 3 ".kiy[0:2]"  0 -0.077823615170192942 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "pCubeShape1_pnts_16__pntz";
	rename -uid "587F0D0E-9944-9B22-A737-AC86653244F3";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.24501484632492065 40 0 90 0;
	setAttr -s 3 ".kit[0:2]"  1 2 2;
	setAttr -s 3 ".kot[0:2]"  1 2 2;
	setAttr -s 3 ".kix[0:2]"  1 0.9888231567710255 1;
	setAttr -s 3 ".kiy[0:2]"  0 -0.1490931407992466 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "pCubeShape1_pnts_17__pntx";
	rename -uid "19AAAE28-0840-3B05-37D7-748CA444450C";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -0.060687452554702759 40 0 90 0;
	setAttr -s 3 ".kit[0:2]"  1 2 2;
	setAttr -s 3 ".kot[0:2]"  1 2 2;
	setAttr -s 3 ".kix[0:2]"  1 0.99930336212010451 1;
	setAttr -s 3 ".kiy[0:2]"  0 0.037320107923950026 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "pCubeShape1_pnts_17__pnty";
	rename -uid "6165B637-AE4F-F456-CADC-A38B6ADAD681";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.12684808671474457 40 0 90 0;
	setAttr -s 3 ".kit[0:2]"  1 2 2;
	setAttr -s 3 ".kot[0:2]"  1 2 2;
	setAttr -s 3 ".kix[0:2]"  1 0.99696714335119474 1;
	setAttr -s 3 ".kiy[0:2]"  0 -0.077823615170192942 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "pCubeShape1_pnts_17__pntz";
	rename -uid "36420051-544C-466F-FA57-99BBC3F8F74E";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -0.24501484632492065 40 0 90 0;
	setAttr -s 3 ".kit[0:2]"  1 2 2;
	setAttr -s 3 ".kot[0:2]"  1 2 2;
	setAttr -s 3 ".kix[0:2]"  1 0.9888231567710255 1;
	setAttr -s 3 ".kiy[0:2]"  0 0.1490931407992466 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "pCubeShape1_pnts_18__pntx";
	rename -uid "F769394A-8443-D5C0-3E57-15AD4F5D02AC";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -0.089354261755943298 40 0 90 0;
	setAttr -s 3 ".kit[0:2]"  1 2 2;
	setAttr -s 3 ".kot[0:2]"  1 2 2;
	setAttr -s 3 ".kix[0:2]"  1 0.99849162151355952 1;
	setAttr -s 3 ".kiy[0:2]"  0 0.054904296436823916 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "pCubeShape1_pnts_18__pnty";
	rename -uid "7A15D02F-2641-D820-4E9F-E6A427364D42";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.12684808671474457 40 0 90 0;
	setAttr -s 3 ".kit[0:2]"  1 2 2;
	setAttr -s 3 ".kot[0:2]"  1 2 2;
	setAttr -s 3 ".kix[0:2]"  1 0.99696714335119474 1;
	setAttr -s 3 ".kiy[0:2]"  0 -0.077823615170192942 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "pCubeShape1_pnts_18__pntz";
	rename -uid "03CADF84-8940-4276-8B11-0191F37693F8";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.24501484632492065 40 0 90 0;
	setAttr -s 3 ".kit[0:2]"  1 2 2;
	setAttr -s 3 ".kot[0:2]"  1 2 2;
	setAttr -s 3 ".kix[0:2]"  1 0.9888231567710255 1;
	setAttr -s 3 ".kiy[0:2]"  0 -0.1490931407992466 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "pCubeShape1_pnts_19__pntx";
	rename -uid "9B730A98-4A46-1DAF-39EC-5990009949F0";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -0.089354261755943298 40 0 90 0;
	setAttr -s 3 ".kit[0:2]"  1 2 2;
	setAttr -s 3 ".kot[0:2]"  1 2 2;
	setAttr -s 3 ".kix[0:2]"  1 0.99849162151355952 1;
	setAttr -s 3 ".kiy[0:2]"  0 0.054904296436823916 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "pCubeShape1_pnts_19__pnty";
	rename -uid "56905971-8C4A-0FBE-CE0F-C7A3A2290E62";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.12684808671474457 40 0 90 0;
	setAttr -s 3 ".kit[0:2]"  1 2 2;
	setAttr -s 3 ".kot[0:2]"  1 2 2;
	setAttr -s 3 ".kix[0:2]"  1 0.99696714335119474 1;
	setAttr -s 3 ".kiy[0:2]"  0 -0.077823615170192942 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "pCubeShape1_pnts_19__pntz";
	rename -uid "24459FF6-F947-B449-A67C-B397EEC3A449";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -0.24501484632492065 40 0 90 0;
	setAttr -s 3 ".kit[0:2]"  1 2 2;
	setAttr -s 3 ".kot[0:2]"  1 2 2;
	setAttr -s 3 ".kix[0:2]"  1 0.9888231567710255 1;
	setAttr -s 3 ".kiy[0:2]"  0 0.1490931407992466 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "pCubeShape1_pnts_1__pntx";
	rename -uid "CB07DDD5-6D42-E230-8371-BBA50C89BE23";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -0.051988549530506134 40 0 90 0;
	setAttr -s 3 ".kit[0:2]"  1 2 2;
	setAttr -s 3 ".kot[0:2]"  1 2 2;
	setAttr -s 3 ".kix[0:2]"  1 0.9994886179963085 1;
	setAttr -s 3 ".kiy[0:2]"  0 0.031976592936540441 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "pCubeShape1_pnts_1__pnty";
	rename -uid "98A05DE5-224E-4710-DF33-409D86BF4790";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -1.4491983652114868 40 0 90 0;
	setAttr -s 3 ".kit[0:2]"  1 2 2;
	setAttr -s 3 ".kot[0:2]"  1 2 2;
	setAttr -s 3 ".kix[0:2]"  1 0.74632417051441324 1;
	setAttr -s 3 ".kiy[0:2]"  0 0.66558262635526555 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "pCubeShape1_pnts_1__pntz";
	rename -uid "0A66783D-3B4F-6E58-B563-0889AE20B93B";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -0.39287346601486206 40 0 90 0;
	setAttr -s 3 ".kit[0:2]"  1 2 2;
	setAttr -s 3 ".kot[0:2]"  1 2 2;
	setAttr -s 3 ".kix[0:2]"  1 0.97199590589706619 1;
	setAttr -s 3 ".kiy[0:2]"  0 0.23499778492432991 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "pCubeShape1_pnts_20__pntx";
	rename -uid "8DE92DC8-F541-A6AC-A977-C79FD039622B";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -0.052419278770685196 40 -0.0086054122075438499
		 90 -0.0086054122075438499;
	setAttr -s 3 ".kit[0:2]"  1 2 2;
	setAttr -s 3 ".kot[0:2]"  1 2 2;
	setAttr -s 3 ".kix[0:2]"  1 0.99963671310989399 1;
	setAttr -s 3 ".kiy[0:2]"  0 0.026952584344500985 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "pCubeShape1_pnts_20__pnty";
	rename -uid "EA7D8312-7949-650B-FCF0-9F9B6FDCD8AD";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -2.7087728977203369 40 0 90 0;
	setAttr -s 3 ".kit[0:2]"  1 2 2;
	setAttr -s 3 ".kot[0:2]"  1 2 2;
	setAttr -s 3 ".kix[0:2]"  1 0.51443436215642135 1;
	setAttr -s 3 ".kiy[0:2]"  0 0.85752975868637693 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "pCubeShape1_pnts_20__pntz";
	rename -uid "F0842BF8-CF41-9BE5-CA92-B8AD66B91684";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -0.35472139716148376 40 0.17806965112686157
		 90 0.17806965112686157;
	setAttr -s 3 ".kit[0:2]"  1 2 2;
	setAttr -s 3 ".kot[0:2]"  1 2 2;
	setAttr -s 3 ".kix[0:2]"  1 0.95022882029026168 1;
	setAttr -s 3 ".kiy[0:2]"  0 0.31155286724692077 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "pCubeShape1_pnts_21__pntx";
	rename -uid "79E215BC-B642-E876-B214-20B21F587EB0";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -0.052419278770685196 40 -0.0086054122075438499
		 90 -0.0086054122075438499;
	setAttr -s 3 ".kit[0:2]"  1 2 2;
	setAttr -s 3 ".kot[0:2]"  1 2 2;
	setAttr -s 3 ".kix[0:2]"  1 0.99963671310989399 1;
	setAttr -s 3 ".kiy[0:2]"  0 0.026952584344500985 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "pCubeShape1_pnts_21__pnty";
	rename -uid "98B60327-1A41-AD42-3EBC-55AF6FD9F834";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -2.7087728977203369 40 0 90 0;
	setAttr -s 3 ".kit[0:2]"  1 2 2;
	setAttr -s 3 ".kot[0:2]"  1 2 2;
	setAttr -s 3 ".kix[0:2]"  1 0.51443436215642135 1;
	setAttr -s 3 ".kiy[0:2]"  0 0.85752975868637693 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "pCubeShape1_pnts_21__pntz";
	rename -uid "84769E8B-F645-C7D0-366A-54BB3A330B11";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.35472139716148376 40 -0.17806965112686157
		 90 -0.17806965112686157;
	setAttr -s 3 ".kit[0:2]"  1 2 2;
	setAttr -s 3 ".kot[0:2]"  1 2 2;
	setAttr -s 3 ".kix[0:2]"  1 0.95022882029026168 1;
	setAttr -s 3 ".kiy[0:2]"  0 -0.31155286724692077 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "pCubeShape1_pnts_22__pntx";
	rename -uid "24CB4EFB-524F-75E9-1BFA-A592BDF983A0";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -0.097622498869895935 40 0.0086054122075438499
		 90 0.0086054122075438499;
	setAttr -s 3 ".kit[0:2]"  1 2 2;
	setAttr -s 3 ".kot[0:2]"  1 2 2;
	setAttr -s 3 ".kix[0:2]"  1 0.99787013856774553 1;
	setAttr -s 3 ".kiy[0:2]"  0 0.065231790982527377 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "pCubeShape1_pnts_22__pnty";
	rename -uid "18F496FD-024C-1017-7BDB-9CA19B59718F";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -2.7087728977203369 40 0 90 0;
	setAttr -s 3 ".kit[0:2]"  1 2 2;
	setAttr -s 3 ".kot[0:2]"  1 2 2;
	setAttr -s 3 ".kix[0:2]"  1 0.51443436215642135 1;
	setAttr -s 3 ".kiy[0:2]"  0 0.85752975868637693 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "pCubeShape1_pnts_22__pntz";
	rename -uid "14A5DD12-554D-5C75-2FDC-90852B69D92C";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -0.35472139716148376 40 0.17806965112686157
		 90 0.17806965112686157;
	setAttr -s 3 ".kit[0:2]"  1 2 2;
	setAttr -s 3 ".kot[0:2]"  1 2 2;
	setAttr -s 3 ".kix[0:2]"  1 0.95022882029026168 1;
	setAttr -s 3 ".kiy[0:2]"  0 0.31155286724692077 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "pCubeShape1_pnts_23__pntx";
	rename -uid "887F3AA4-FE4B-11B0-F1BB-65880611E4C6";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -0.097622498869895935 40 0.0086054122075438499
		 90 0.0086054122075438499;
	setAttr -s 3 ".kit[0:2]"  1 2 2;
	setAttr -s 3 ".kot[0:2]"  1 2 2;
	setAttr -s 3 ".kix[0:2]"  1 0.99787013856774553 1;
	setAttr -s 3 ".kiy[0:2]"  0 0.065231790982527377 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "pCubeShape1_pnts_23__pnty";
	rename -uid "41D00A02-5247-7726-7D8C-A0BBD25E8C41";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -2.7087728977203369 40 0 90 0;
	setAttr -s 3 ".kit[0:2]"  1 2 2;
	setAttr -s 3 ".kot[0:2]"  1 2 2;
	setAttr -s 3 ".kix[0:2]"  1 0.51443436215642135 1;
	setAttr -s 3 ".kiy[0:2]"  0 0.85752975868637693 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "pCubeShape1_pnts_23__pntz";
	rename -uid "E69FE13F-8244-56CD-BB4F-13A86FBE1498";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.35472139716148376 40 -0.17806965112686157
		 90 -0.17806965112686157;
	setAttr -s 3 ".kit[0:2]"  1 2 2;
	setAttr -s 3 ".kot[0:2]"  1 2 2;
	setAttr -s 3 ".kix[0:2]"  1 0.95022882029026168 1;
	setAttr -s 3 ".kiy[0:2]"  0 -0.31155286724692077 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "pCubeShape1_pnts_3__pntx";
	rename -uid "EECF43C0-9D4E-EFB3-66FE-E580FBD4421A";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -0.051988549530506134 40 0 90 0;
	setAttr -s 3 ".kit[0:2]"  1 2 2;
	setAttr -s 3 ".kot[0:2]"  1 2 2;
	setAttr -s 3 ".kix[0:2]"  1 0.9994886179963085 1;
	setAttr -s 3 ".kiy[0:2]"  0 0.031976592936540441 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "pCubeShape1_pnts_3__pnty";
	rename -uid "563CC50D-9342-262E-E6ED-408670D6D7EF";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -2.1369466781616211 40 0 90 0;
	setAttr -s 3 ".kit[0:2]"  1 2 2;
	setAttr -s 3 ".kot[0:2]"  1 2 2;
	setAttr -s 3 ".kix[0:2]"  1 0.60530059327959418 1;
	setAttr -s 3 ".kiy[0:2]"  0 0.79599697975266914 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "pCubeShape1_pnts_3__pntz";
	rename -uid "B8597129-EB4B-22E9-E854-A7BA151B73D4";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -0.39287346601486206 40 0 90 0;
	setAttr -s 3 ".kit[0:2]"  1 2 2;
	setAttr -s 3 ".kot[0:2]"  1 2 2;
	setAttr -s 3 ".kix[0:2]"  1 0.97199590589706619 1;
	setAttr -s 3 ".kiy[0:2]"  0 0.23499778492432991 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "pCubeShape1_pnts_5__pntx";
	rename -uid "701A3E5A-AA42-91B6-9418-52811C491CBF";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -0.051988549530506134 40 0 90 0;
	setAttr -s 3 ".kit[0:2]"  1 2 2;
	setAttr -s 3 ".kot[0:2]"  1 2 2;
	setAttr -s 3 ".kix[0:2]"  1 0.9994886179963085 1;
	setAttr -s 3 ".kiy[0:2]"  0 0.031976592936540441 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "pCubeShape1_pnts_5__pnty";
	rename -uid "A47FFCA8-4149-4CD4-6F92-25B763C739FE";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -2.1369466781616211 40 0 90 0;
	setAttr -s 3 ".kit[0:2]"  1 2 2;
	setAttr -s 3 ".kot[0:2]"  1 2 2;
	setAttr -s 3 ".kix[0:2]"  1 0.60530059327959418 1;
	setAttr -s 3 ".kiy[0:2]"  0 0.79599697975266914 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "pCubeShape1_pnts_5__pntz";
	rename -uid "C9C49DC4-EE42-A26A-C733-D3B2C93C1CC5";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.39287346601486206 40 0 90 0;
	setAttr -s 3 ".kit[0:2]"  1 2 2;
	setAttr -s 3 ".kot[0:2]"  1 2 2;
	setAttr -s 3 ".kix[0:2]"  1 0.97199590589706619 1;
	setAttr -s 3 ".kiy[0:2]"  0 -0.23499778492432991 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "pCubeShape1_pnts_7__pntx";
	rename -uid "557E865A-7749-1C7C-1322-1F907DEC8A8F";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -0.051988549530506134 40 0 90 0;
	setAttr -s 3 ".kit[0:2]"  1 2 2;
	setAttr -s 3 ".kot[0:2]"  1 2 2;
	setAttr -s 3 ".kix[0:2]"  1 0.9994886179963085 1;
	setAttr -s 3 ".kiy[0:2]"  0 0.031976592936540441 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "pCubeShape1_pnts_7__pnty";
	rename -uid "32C5C0EF-D84C-D8A6-5E6A-13A4ED98626E";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -1.4491983652114868 40 0 90 0;
	setAttr -s 3 ".kit[0:2]"  1 2 2;
	setAttr -s 3 ".kot[0:2]"  1 2 2;
	setAttr -s 3 ".kix[0:2]"  1 0.74632417051441324 1;
	setAttr -s 3 ".kiy[0:2]"  0 0.66558262635526555 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "pCubeShape1_pnts_7__pntz";
	rename -uid "980D2081-AB40-B0B0-1C4C-A0B6FCDCFB2A";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.39287346601486206 40 0 90 0;
	setAttr -s 3 ".kit[0:2]"  1 2 2;
	setAttr -s 3 ".kot[0:2]"  1 2 2;
	setAttr -s 3 ".kix[0:2]"  1 0.97199590589706619 1;
	setAttr -s 3 ".kiy[0:2]"  0 -0.23499778492432991 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "pCubeShape1_pnts_8__pntx";
	rename -uid "481B41E0-C647-368F-3B71-5A8DCB7A3767";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.10622790455818176 40 0 90 0;
	setAttr -s 3 ".kit[0:2]"  1 2 2;
	setAttr -s 3 ".kot[0:2]"  1 2 2;
	setAttr -s 3 ".kix[0:2]"  1 0.99787013882833231 1;
	setAttr -s 3 ".kiy[0:2]"  0 -0.0652317869962558 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "pCubeShape1_pnts_8__pnty";
	rename -uid "8E7D248B-FE4D-F5F5-3A76-F49BC76409C7";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -1.9143135547637939 40 0 90 0;
	setAttr -s 3 ".kit[0:2]"  1 2 2;
	setAttr -s 3 ".kot[0:2]"  1 2 2;
	setAttr -s 3 ".kix[0:2]"  1 0.64714737716792292 1;
	setAttr -s 3 ".kiy[0:2]"  0 0.76236492064147221 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "pCubeShape1_pnts_8__pntz";
	rename -uid "E504AB80-C247-DE09-7B30-A7A5023BE9AA";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -0.1385171115398407 40 0 90 0;
	setAttr -s 3 ".kit[0:2]"  1 2 2;
	setAttr -s 3 ".kot[0:2]"  1 2 2;
	setAttr -s 3 ".kix[0:2]"  1 0.99638663977843633 1;
	setAttr -s 3 ".kiy[0:2]"  0 0.084933291888613385 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "pCubeShape1_pnts_9__pntx";
	rename -uid "5A338308-2349-4E6F-16B0-C599B05CF6F2";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.10622790455818176 40 0 90 0;
	setAttr -s 3 ".kit[0:2]"  1 2 2;
	setAttr -s 3 ".kot[0:2]"  1 2 2;
	setAttr -s 3 ".kix[0:2]"  1 0.99787013882833231 1;
	setAttr -s 3 ".kiy[0:2]"  0 -0.0652317869962558 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "pCubeShape1_pnts_9__pnty";
	rename -uid "29B18A52-CF45-9B9D-1C64-628132CA995F";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -1.9143135547637939 40 0 90 0;
	setAttr -s 3 ".kit[0:2]"  1 2 2;
	setAttr -s 3 ".kot[0:2]"  1 2 2;
	setAttr -s 3 ".kix[0:2]"  1 0.64714737716792292 1;
	setAttr -s 3 ".kiy[0:2]"  0 0.76236492064147221 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "pCubeShape1_pnts_9__pntz";
	rename -uid "AEACDE52-AB46-F66B-0CC7-0788862FF2E6";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.1385171115398407 40 0 90 0;
	setAttr -s 3 ".kit[0:2]"  1 2 2;
	setAttr -s 3 ".kot[0:2]"  1 2 2;
	setAttr -s 3 ".kix[0:2]"  1 0.99638663977843633 1;
	setAttr -s 3 ".kiy[0:2]"  0 -0.084933291888613385 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "pCube1_translateX";
	rename -uid "F6514B86-354B-8C53-797A-C5BFB9F775D1";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  40 4.978528304266657 41 4.978528304266657
		 45 4.978528304266657 48 4.978528304266657 50 4.978528304266657 53 4.978528304266657
		 56 4.978528304266657 60 4.978528304266657 90 4.978528304266657 110 4.978528304266657
		 111 4.978528304266657;
createNode animCurveTL -n "pCube1_translateY";
	rename -uid "03A971E0-B747-565C-15B0-FD90B6D7DDE1";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  40 0 41 0 45 0 48 0 50 0 53 0 56 0 60 0
		 90 0 110 0 111 0;
createNode animCurveTL -n "pCube1_translateZ";
	rename -uid "44B15C83-6849-1504-63BB-788EBC7FDD0D";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  40 0 41 0 45 0 48 0 50 0 53 0 56 0 60 0
		 90 0 110 0 111 0;
createNode animCurveTU -n "pCube1_visibility";
	rename -uid "4FAE5B36-6A47-616F-721F-F59EB76F9A1C";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  40 1 41 1 45 1 48 1 50 1 53 1 56 1 60 1
		 90 1 110 1 111 1;
createNode animCurveTA -n "pCube1_rotateX";
	rename -uid "2443268C-1E47-4D64-3AFB-198FD95A0ACE";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  40 0 41 0 45 0 48 0 50 0 53 0 56 0 60 0
		 90 0 110 0 111 0;
createNode animCurveTA -n "pCube1_rotateY";
	rename -uid "D122A47A-F348-7379-4729-3DA7A76A15CA";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  40 0 41 0 45 0 48 0 50 0 53 0 56 0 60 0
		 90 0 110 0 111 0;
createNode animCurveTA -n "pCube1_rotateZ";
	rename -uid "94E86C42-304E-42B2-528D-CD9D2665222E";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  40 0 41 0 45 43.830716109540575 48 -73.427248824225956
		 50 -72.298143653763191 53 -73.11624542243797 56 -70.773819578941655 60 -73.427248824225956
		 90 0 110 0 111 0;
createNode animCurveTU -n "pCube1_scaleX";
	rename -uid "FE2412B1-4940-92EF-1584-EF947C08F857";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  40 10 41 10 45 10 48 10 50 10 53 10 56 10
		 60 10 90 10 110 10 111 10;
createNode animCurveTU -n "pCube1_scaleY";
	rename -uid "5FD81DC1-A145-94C7-96DE-40B287D89569";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  40 0.5 41 0.5 45 1.2296328894989716 48 0.45781962663804071
		 50 0.45781962663804071 53 0.45781962663804071 56 0.45781962663804071 60 0.45781962663804071
		 90 0.5 110 0.13527742926178532 111 0.13527742926178532;
createNode animCurveTU -n "pCube1_scaleZ";
	rename -uid "E2BE2FAF-8C4E-C249-185C-20B500D8B935";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  40 0.5 41 0.5 45 1.2296328894989716 48 1.5167848436862881
		 50 1.5167848436862881 53 1.5167848436862881 56 1.5167848436862881 60 1.5167848436862881
		 90 0.5 110 0.13527742926178532 111 0.13527742926178532;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "D6A00C3D-E845-7B36-6DF4-54A81AF7AE3B";
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
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n"
		+ "            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n"
		+ "            -width 307\n            -height 480\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n"
		+ "            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n"
		+ "            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n"
		+ "            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n"
		+ "            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n"
		+ "                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n"
		+ "                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n"
		+ "                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 0\n                -outliner \"graphEditor1OutlineEd\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n"
		+ "                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n"
		+ "                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n"
		+ "                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n"
		+ "                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n"
		+ "                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -highlightConnections 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n"
		+ "                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"vertical2\\\" -ps 1 51 100 -ps 2 49 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Outliner\")) \n\t\t\t\t\t\"outlinerPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -showShapes 0\\n    -showAssignedMaterials 0\\n    -showTimeEditor 1\\n    -showReferenceNodes 0\\n    -showReferenceMembers 0\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -organizeByClip 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -showAssets 1\\n    -showContainedOnly 1\\n    -showPublishedAsConnected 0\\n    -showParentContainers 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -isSet 0\\n    -isSetMember 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    -ignoreHiddenAttribute 0\\n    -ignoreOutlinerColor 0\\n    -renderFilterVisible 0\\n    -renderFilterIndex 0\\n    -selectionOrder \\\"chronological\\\" \\n    -expandAttribute 0\\n    $editorName\"\n"
		+ "\t\t\t\t\t\"outlinerPanel -edit -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -showShapes 0\\n    -showAssignedMaterials 0\\n    -showTimeEditor 1\\n    -showReferenceNodes 0\\n    -showReferenceMembers 0\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -organizeByClip 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -showAssets 1\\n    -showContainedOnly 1\\n    -showPublishedAsConnected 0\\n    -showParentContainers 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -isSet 0\\n    -isSetMember 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    -ignoreHiddenAttribute 0\\n    -ignoreOutlinerColor 0\\n    -renderFilterVisible 0\\n    -renderFilterIndex 0\\n    -selectionOrder \\\"chronological\\\" \\n    -expandAttribute 0\\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 307\\n    -height 480\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 307\\n    -height 480\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "83D7795E-204C-7BF1-7D36-3AADB6B0831C";
	setAttr ".b" -type "string" "playbackOptions -min 40 -max 111 -ast 0 -aet 200 ";
	setAttr ".st" 6;
createNode blendShape -n "blendShape1";
	rename -uid "4B40206A-EC4C-C805-29CF-D082848B212B";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr ".it[0].itg[0].iti[6000].ipt" -type "pointArray" 4 -7.4505805969238281e-09
		 0 0 1 -7.4505805969238281e-09 0 0 1 -7.4505805969238281e-09 0 0 1 -7.4505805969238281e-09
		 0 0 1 ;
	setAttr ".it[0].itg[0].iti[6000].ict" -type "componentList" 1 "vtx[8:11]";
	setAttr ".sn" yes;
	setAttr ".mlid" 0;
	setAttr ".mlpr" 0;
	setAttr ".pndr[0]"  0;
	setAttr ".tgdt[0].cid" -type "Int32Array" 1 0 ;
	setAttr ".aal" -type "attributeAlias" {"pCube2","weight[0]"} ;
createNode tweak -n "tweak1";
	rename -uid "7BA83F2F-D146-FD2B-070F-24AE9A31CB32";
	setAttr -s 21 ".vl[0].vt";
createNode objectSet -n "blendShape1Set";
	rename -uid "ED7040BE-CF4A-51C8-40A4-6D8C9486C38E";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "blendShape1GroupId";
	rename -uid "C0250663-EE47-3D54-4DFD-B18F2CCBC78A";
	setAttr ".ihi" 0;
createNode groupParts -n "blendShape1GroupParts";
	rename -uid "C071BBDA-2043-46E3-98F2-D589665210D8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet1";
	rename -uid "04BB512A-6B47-F012-B8EB-FB8AF49CA3F9";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId2";
	rename -uid "B6B349AF-BE47-2598-4E02-91AD2CB01325";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "C600E0A7-844F-86EF-6BCD-00845EBAF0CB";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode animCurveTU -n "blendShape1_pCube2";
	rename -uid "367D1586-0E44-AA32-49E5-C38C0502BA46";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 40 0 41 0 45 0 90 0;
	setAttr -s 6 ".kit[0:5]"  18 18 2 2 2 2;
	setAttr -s 6 ".kot[0:5]"  18 18 2 2 2 2;
createNode polyAutoProj -n "polyAutoProj1";
	rename -uid "838C6FCC-2C45-C4F2-B933-B494FE77E6DB";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:21]";
	setAttr ".ix" -type "matrix" 10 0 0 0 0 0.5 0 0 0 0 0.5 0 4.9785283042666517 0 0 1;
	setAttr ".s" -type "double3" 7.2318829596042633 7.2318829596042633 7.2318829596042633 ;
	setAttr ".p" 3;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode lambert -n "lambert2";
	rename -uid "0E97F12F-0946-99D7-FD39-CDAC049B525F";
createNode shadingEngine -n "lambert2SG";
	rename -uid "35CD16EC-5741-D01F-07EC-C8A9C9EAF62D";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "F778469A-8D4C-AB99-BBAE-0A9659201124";
createNode groupId -n "groupId3";
	rename -uid "DCB0E654-8E4E-7A4E-18F6-AC9E1F310BBD";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	rename -uid "D172901F-6A48-EB35-4D8E-ABB251831467";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:21]";
createNode groupId -n "groupId4";
	rename -uid "FF2F3A45-4B46-28C7-C87D-1192A430B2C8";
	setAttr ".ihi" 0;
createNode file -n "file1";
	rename -uid "F5C06C69-6944-F98C-6D63-C1908B6635B6";
	setAttr ".ftn" -type "string" "/Users/eastonself/Desktop/gradientText.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture1";
	rename -uid "704A0B59-6B4F-57A4-EEF2-4DB083E4A50C";
createNode polyTweakUV -n "polyTweakUV1";
	rename -uid "64484A42-6347-C06D-63D0-558D17EB8FC0";
	setAttr ".uopa" yes;
	setAttr -s 24 ".uvtk";
	setAttr ".uvtk[0]" -type "float2" 0.17783445 -0.11316884 ;
	setAttr ".uvtk[1]" -type "float2" 0.17783457 0.73578614 ;
	setAttr ".uvtk[2]" -type "float2" 0.0074899793 0.73578614 ;
	setAttr ".uvtk[3]" -type "float2" 0.0074898601 -0.11316884 ;
	setAttr ".uvtk[4]" -type "float2" -0.19281423 -0.11316884 ;
	setAttr ".uvtk[5]" -type "float2" -0.19281423 0.73578614 ;
	setAttr ".uvtk[6]" -type "float2" -0.36315888 0.73578614 ;
	setAttr ".uvtk[7]" -type "float2" -0.363159 -0.11316881 ;
	setAttr ".uvtk[12]" -type "float2" 0.13829327 0.50874299 ;
	setAttr ".uvtk[13]" -type "float2" 0.13829327 0.68753952 ;
	setAttr ".uvtk[14]" -type "float2" 0.18378307 0.68753952 ;
	setAttr ".uvtk[15]" -type "float2" 0.18378307 0.50874299 ;
	setAttr ".uvtk[24]" -type "float2" -0.6080054 -0.10603085 ;
	setAttr ".uvtk[25]" -type "float2" -0.70163703 -0.10603085 ;
	setAttr ".uvtk[26]" -type "float2" -0.70163703 -0.19966243 ;
	setAttr ".uvtk[27]" -type "float2" -0.6080054 -0.19966243 ;
	setAttr ".uvtk[40]" -type "float2" 0.36315888 -0.11316922 ;
	setAttr ".uvtk[41]" -type "float2" 0.363159 0.73578572 ;
	setAttr ".uvtk[42]" -type "float2" 0.19281441 0.73578572 ;
	setAttr ".uvtk[43]" -type "float2" 0.19281429 -0.11316919 ;
	setAttr ".uvtk[44]" -type "float2" -0.0074898601 -0.11316919 ;
	setAttr ".uvtk[45]" -type "float2" -0.0074897408 0.73578572 ;
	setAttr ".uvtk[46]" -type "float2" -0.17783439 0.73578572 ;
	setAttr ".uvtk[47]" -type "float2" -0.17783439 -0.11316919 ;
select -ne :time1;
	setAttr ".o" 40;
	setAttr ".unw" 40;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 3 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 5 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
select -ne :defaultRenderingList1;
select -ne :defaultTextureList1;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "pCube1_visibility.o" "pCube1.v";
connectAttr "pCube1_rotateX.o" "pCube1.rx";
connectAttr "pCube1_rotateY.o" "pCube1.ry";
connectAttr "pCube1_rotateZ.o" "pCube1.rz";
connectAttr "pCube1_scaleX.o" "pCube1.sx";
connectAttr "pCube1_scaleY.o" "pCube1.sy";
connectAttr "pCube1_scaleZ.o" "pCube1.sz";
connectAttr "polyTweakUV1.out" "pCubeShape1.i";
connectAttr "blendShape1GroupId.id" "pCubeShape1.iog.og[0].gid";
connectAttr "blendShape1Set.mwc" "pCubeShape1.iog.og[0].gco";
connectAttr "groupId2.id" "pCubeShape1.iog.og[1].gid";
connectAttr "tweakSet1.mwc" "pCubeShape1.iog.og[1].gco";
connectAttr "groupId3.id" "pCubeShape1.iog.og[2].gid";
connectAttr "lambert2SG.mwc" "pCubeShape1.iog.og[2].gco";
connectAttr "tweak1.vl[0].vt[0]" "pCubeShape1.twl";
connectAttr "groupId4.id" "pCubeShape1.ciog.cog[0].cgid";
connectAttr "polyTweakUV1.uvtk[0]" "pCubeShape1.uvst[0].uvtw";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "blendShape1.mlpr" "shapeEditorManager.bspr[0]";
connectAttr "blendShape1GroupParts.og" "blendShape1.ip[0].ig";
connectAttr "blendShape1GroupId.id" "blendShape1.ip[0].gi";
connectAttr "shapeEditorManager.obsv[0]" "blendShape1.tgdt[0].dpvs";
connectAttr "blendShape1_pCube2.o" "blendShape1.w[0]";
connectAttr "pCubeShape1_pnts_1__pntx.o" "tweak1.vl[0].vt[1].vx";
connectAttr "pCubeShape1_pnts_1__pnty.o" "tweak1.vl[0].vt[1].vy";
connectAttr "pCubeShape1_pnts_1__pntz.o" "tweak1.vl[0].vt[1].vz";
connectAttr "pCubeShape1_pnts_3__pntx.o" "tweak1.vl[0].vt[3].vx";
connectAttr "pCubeShape1_pnts_3__pnty.o" "tweak1.vl[0].vt[3].vy";
connectAttr "pCubeShape1_pnts_3__pntz.o" "tweak1.vl[0].vt[3].vz";
connectAttr "pCubeShape1_pnts_5__pntx.o" "tweak1.vl[0].vt[5].vx";
connectAttr "pCubeShape1_pnts_5__pnty.o" "tweak1.vl[0].vt[5].vy";
connectAttr "pCubeShape1_pnts_5__pntz.o" "tweak1.vl[0].vt[5].vz";
connectAttr "pCubeShape1_pnts_7__pntx.o" "tweak1.vl[0].vt[7].vx";
connectAttr "pCubeShape1_pnts_7__pnty.o" "tweak1.vl[0].vt[7].vy";
connectAttr "pCubeShape1_pnts_7__pntz.o" "tweak1.vl[0].vt[7].vz";
connectAttr "pCubeShape1_pnts_8__pntx.o" "tweak1.vl[0].vt[8].vx";
connectAttr "pCubeShape1_pnts_8__pnty.o" "tweak1.vl[0].vt[8].vy";
connectAttr "pCubeShape1_pnts_8__pntz.o" "tweak1.vl[0].vt[8].vz";
connectAttr "pCubeShape1_pnts_9__pntx.o" "tweak1.vl[0].vt[9].vx";
connectAttr "pCubeShape1_pnts_9__pnty.o" "tweak1.vl[0].vt[9].vy";
connectAttr "pCubeShape1_pnts_9__pntz.o" "tweak1.vl[0].vt[9].vz";
connectAttr "pCubeShape1_pnts_10__pntx.o" "tweak1.vl[0].vt[10].vx";
connectAttr "pCubeShape1_pnts_10__pnty.o" "tweak1.vl[0].vt[10].vy";
connectAttr "pCubeShape1_pnts_10__pntz.o" "tweak1.vl[0].vt[10].vz";
connectAttr "pCubeShape1_pnts_11__pntx.o" "tweak1.vl[0].vt[11].vx";
connectAttr "pCubeShape1_pnts_11__pnty.o" "tweak1.vl[0].vt[11].vy";
connectAttr "pCubeShape1_pnts_11__pntz.o" "tweak1.vl[0].vt[11].vz";
connectAttr "pCubeShape1_pnts_12__pntx.o" "tweak1.vl[0].vt[12].vx";
connectAttr "pCubeShape1_pnts_12__pnty.o" "tweak1.vl[0].vt[12].vy";
connectAttr "pCubeShape1_pnts_12__pntz.o" "tweak1.vl[0].vt[12].vz";
connectAttr "pCubeShape1_pnts_13__pntx.o" "tweak1.vl[0].vt[13].vx";
connectAttr "pCubeShape1_pnts_13__pnty.o" "tweak1.vl[0].vt[13].vy";
connectAttr "pCubeShape1_pnts_13__pntz.o" "tweak1.vl[0].vt[13].vz";
connectAttr "pCubeShape1_pnts_14__pntx.o" "tweak1.vl[0].vt[14].vx";
connectAttr "pCubeShape1_pnts_14__pnty.o" "tweak1.vl[0].vt[14].vy";
connectAttr "pCubeShape1_pnts_14__pntz.o" "tweak1.vl[0].vt[14].vz";
connectAttr "pCubeShape1_pnts_15__pntx.o" "tweak1.vl[0].vt[15].vx";
connectAttr "pCubeShape1_pnts_15__pnty.o" "tweak1.vl[0].vt[15].vy";
connectAttr "pCubeShape1_pnts_15__pntz.o" "tweak1.vl[0].vt[15].vz";
connectAttr "pCubeShape1_pnts_16__pntx.o" "tweak1.vl[0].vt[16].vx";
connectAttr "pCubeShape1_pnts_16__pnty.o" "tweak1.vl[0].vt[16].vy";
connectAttr "pCubeShape1_pnts_16__pntz.o" "tweak1.vl[0].vt[16].vz";
connectAttr "pCubeShape1_pnts_17__pntx.o" "tweak1.vl[0].vt[17].vx";
connectAttr "pCubeShape1_pnts_17__pnty.o" "tweak1.vl[0].vt[17].vy";
connectAttr "pCubeShape1_pnts_17__pntz.o" "tweak1.vl[0].vt[17].vz";
connectAttr "pCubeShape1_pnts_18__pntx.o" "tweak1.vl[0].vt[18].vx";
connectAttr "pCubeShape1_pnts_18__pnty.o" "tweak1.vl[0].vt[18].vy";
connectAttr "pCubeShape1_pnts_18__pntz.o" "tweak1.vl[0].vt[18].vz";
connectAttr "pCubeShape1_pnts_19__pntx.o" "tweak1.vl[0].vt[19].vx";
connectAttr "pCubeShape1_pnts_19__pnty.o" "tweak1.vl[0].vt[19].vy";
connectAttr "pCubeShape1_pnts_19__pntz.o" "tweak1.vl[0].vt[19].vz";
connectAttr "pCubeShape1_pnts_20__pntx.o" "tweak1.vl[0].vt[20].vx";
connectAttr "pCubeShape1_pnts_20__pnty.o" "tweak1.vl[0].vt[20].vy";
connectAttr "pCubeShape1_pnts_20__pntz.o" "tweak1.vl[0].vt[20].vz";
connectAttr "pCubeShape1_pnts_21__pntx.o" "tweak1.vl[0].vt[21].vx";
connectAttr "pCubeShape1_pnts_21__pnty.o" "tweak1.vl[0].vt[21].vy";
connectAttr "pCubeShape1_pnts_21__pntz.o" "tweak1.vl[0].vt[21].vz";
connectAttr "pCubeShape1_pnts_22__pntx.o" "tweak1.vl[0].vt[22].vx";
connectAttr "pCubeShape1_pnts_22__pnty.o" "tweak1.vl[0].vt[22].vy";
connectAttr "pCubeShape1_pnts_22__pntz.o" "tweak1.vl[0].vt[22].vz";
connectAttr "pCubeShape1_pnts_23__pntx.o" "tweak1.vl[0].vt[23].vx";
connectAttr "pCubeShape1_pnts_23__pnty.o" "tweak1.vl[0].vt[23].vy";
connectAttr "pCubeShape1_pnts_23__pntz.o" "tweak1.vl[0].vt[23].vz";
connectAttr "groupParts2.og" "tweak1.ip[0].ig";
connectAttr "groupId2.id" "tweak1.ip[0].gi";
connectAttr "blendShape1GroupId.msg" "blendShape1Set.gn" -na;
connectAttr "pCubeShape1.iog.og[0]" "blendShape1Set.dsm" -na;
connectAttr "blendShape1.msg" "blendShape1Set.ub[0]";
connectAttr "tweak1.og[0]" "blendShape1GroupParts.ig";
connectAttr "blendShape1GroupId.id" "blendShape1GroupParts.gi";
connectAttr "groupId2.msg" "tweakSet1.gn" -na;
connectAttr "pCubeShape1.iog.og[1]" "tweakSet1.dsm" -na;
connectAttr "tweak1.msg" "tweakSet1.ub[0]";
connectAttr "polyAutoProj1.out" "groupParts2.ig";
connectAttr "groupId2.id" "groupParts2.gi";
connectAttr "pCubeShape1Orig.w" "polyAutoProj1.ip";
connectAttr "pCubeShape1.wm" "polyAutoProj1.mp";
connectAttr "file1.oc" "lambert2.c";
connectAttr "lambert2.oc" "lambert2SG.ss";
connectAttr "pCubeShape1.iog.og[2]" "lambert2SG.dsm" -na;
connectAttr "groupId3.msg" "lambert2SG.gn" -na;
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "lambert2.msg" "materialInfo1.m";
connectAttr "file1.msg" "materialInfo1.t" -na;
connectAttr "blendShape1.og[0]" "groupParts3.ig";
connectAttr "groupId3.id" "groupParts3.gi";
connectAttr ":defaultColorMgtGlobals.cme" "file1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file1.ws";
connectAttr "place2dTexture1.c" "file1.c";
connectAttr "place2dTexture1.tf" "file1.tf";
connectAttr "place2dTexture1.rf" "file1.rf";
connectAttr "place2dTexture1.mu" "file1.mu";
connectAttr "place2dTexture1.mv" "file1.mv";
connectAttr "place2dTexture1.s" "file1.s";
connectAttr "place2dTexture1.wu" "file1.wu";
connectAttr "place2dTexture1.wv" "file1.wv";
connectAttr "place2dTexture1.re" "file1.re";
connectAttr "place2dTexture1.of" "file1.of";
connectAttr "place2dTexture1.r" "file1.ro";
connectAttr "place2dTexture1.n" "file1.n";
connectAttr "place2dTexture1.vt1" "file1.vt1";
connectAttr "place2dTexture1.vt2" "file1.vt2";
connectAttr "place2dTexture1.vt3" "file1.vt3";
connectAttr "place2dTexture1.vc1" "file1.vc1";
connectAttr "place2dTexture1.o" "file1.uv";
connectAttr "place2dTexture1.ofs" "file1.fs";
connectAttr "groupParts3.og" "polyTweakUV1.ip";
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "pCubeShape1.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId4.msg" ":initialShadingGroup.gn" -na;
// End of pianoBranch.ma
