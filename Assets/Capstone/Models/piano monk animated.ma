//Maya ASCII 2017 scene
//Name: piano monk animated.ma
//Last modified: Sun, May 13, 2018 01:33:03 PM
//Codeset: 1252
requires maya "2017";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2017";
fileInfo "version" "2017";
fileInfo "cutIdentifier" "201606150345-997974";
fileInfo "osv" "Microsoft Windows 8 Home Premium Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "5ACA7EC3-4515-FB08-76C6-01A2B705BEBA";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -2.244785850630616 5.4381175459053717 14.156586085213592 ;
	setAttr ".r" -type "double3" -3.9383527368794189 -4.1999999999997204 -2.4914993230707261e-017 ;
	setAttr ".rp" -type "double3" -2.2204460492503131e-016 -8.8817841970012523e-016 
		-8.8817841970012523e-016 ;
	setAttr ".rpt" -type "double3" 4.1715808741888065e-016 -2.9168210508847731e-016 
		4.4446061747327893e-016 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "5732CC97-4F12-1688-42FB-989802EE750C";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 14.604230094194774;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -0.055912498259530707 1.3469193627822342 -0.25660403514049734 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "92B4E00B-42FD-9941-1430-C89AFFE4F858";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "1776300F-4C7B-CEBB-4825-96A1C23F8C8C";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 31.630042940032812;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "2E67BAB3-44C1-45DC-A312-F6A191B991BB";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.22028995742790203 3.2183599267069254 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "B6E82A55-488F-3A3F-61BE-1AA980ED3A42";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 9.5416939545640158;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".dsa" yes;
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "C1993CA1-4595-C0A2-7D4B-BDAF397AF648";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "AD1292E2-49F0-8483-F963-38B9947152A5";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "back";
	rename -uid "EA34913A-440E-7530-038D-A8905CCC24E5";
	setAttr ".v" no;
createNode camera -n "backShape" -p "back";
	rename -uid "CD52D304-4F7C-7619-39A5-94BFBD45AF59";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".imn" -type "string" "back1";
	setAttr ".den" -type "string" "back1_depth";
	setAttr ".man" -type "string" "back1_mask";
	setAttr ".hc" -type "string" "viewSet -b %camera";
createNode transform -n "pPipe3";
	rename -uid "36FFD9A6-45CA-3268-DF5D-95A5FC11E987";
	setAttr ".t" -type "double3" 0 0 -0.048693695264674597 ;
	setAttr ".rp" -type "double3" -0.055912498259530707 1.5131099638376302 -0.082586894564701696 ;
	setAttr ".sp" -type "double3" -0.055912498259530707 1.5131099638376302 -0.082586894564701696 ;
createNode transform -n "polySurface1" -p "pPipe3";
	rename -uid "9B1EBA2E-41B7-BED8-ED8D-72980A607AC7";
createNode transform -n "transform6" -p "|pPipe3|polySurface1";
	rename -uid "14FDB45A-48C4-4AE8-A9DC-73B635CD65F8";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape1" -p "transform6";
	rename -uid "555CCE0A-48DE-170F-1916-D2AC92A6C65F";
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
createNode transform -n "polySurface2" -p "pPipe3";
	rename -uid "FEF5478C-4964-8AD4-BDC5-1E85BECB110A";
createNode transform -n "transform5" -p "polySurface2";
	rename -uid "F5FF3D60-4B9C-757A-C308-63B28CD629D0";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape2" -p "transform5";
	rename -uid "B033A0EB-4CBA-3748-F571-53BBA86DEAB7";
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
createNode transform -n "polySurface3" -p "pPipe3";
	rename -uid "87DF2655-4CAE-0A1E-1B3C-46B5542D1C78";
createNode transform -n "transform47" -p "polySurface3";
	rename -uid "D077BB3F-4CFA-E058-0F6C-27B4E02AEBC7";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape3" -p "transform47";
	rename -uid "41C96C92-4410-AF97-69CF-9BAB300BB154";
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
createNode transform -n "polySurface4" -p "pPipe3";
	rename -uid "60055652-4A9E-3B37-4D1A-FEA764462F4C";
createNode transform -n "transform4" -p "polySurface4";
	rename -uid "ADAFC927-4785-BB87-F2BC-849A8DDC8174";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape4" -p "transform4";
	rename -uid "E68185BC-4CCC-F304-7767-DE949FBC9496";
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
createNode transform -n "polySurface5" -p "pPipe3";
	rename -uid "F33B9C04-4F8A-A487-816A-BCA71D6F324C";
createNode transform -n "transform3" -p "polySurface5";
	rename -uid "2FED6246-47E3-9230-F391-318E4095E8C6";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape5" -p "transform3";
	rename -uid "4C1525FD-4DEA-7A8C-35E2-859BD8D32C59";
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
createNode transform -n "polySurface6" -p "pPipe3";
	rename -uid "265A83C4-4B95-0F8B-D208-A98ABCF6C3DB";
createNode transform -n "transform46" -p "|pPipe3|polySurface6";
	rename -uid "F2919884-4477-4FCA-117F-DC9EB25855A8";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape6" -p "transform46";
	rename -uid "7E7B2963-42F7-6B76-2C50-DE952F53A72D";
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
createNode transform -n "polySurface7" -p "pPipe3";
	rename -uid "DC1AE181-4512-DD9F-A969-3088447B84F4";
createNode transform -n "transform41" -p "polySurface7";
	rename -uid "A1EE1FF8-4762-3CA4-304B-0EB94014F0AB";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape7" -p "transform41";
	rename -uid "4B8F9CCF-4AC7-C836-74FC-5DB8D4B7EBFD";
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
createNode transform -n "polySurface8" -p "pPipe3";
	rename -uid "E6671D73-4123-D3C2-544D-20AF243BA29B";
createNode transform -n "transform45" -p "polySurface8";
	rename -uid "1019ABC2-459A-3354-C2D8-5AA925455CE0";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape8" -p "transform45";
	rename -uid "46FBFFA1-455B-A3E3-8702-E398DC006848";
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
createNode transform -n "polySurface9" -p "pPipe3";
	rename -uid "FD26F524-4DAE-848E-11C2-1ABA96E30B59";
createNode transform -n "transform2" -p "polySurface9";
	rename -uid "CCD1889B-44DC-055A-C0C0-E2850A006121";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape9" -p "transform2";
	rename -uid "985C7F11-4C37-7599-939D-0595FA666CC1";
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
createNode transform -n "polySurface10" -p "pPipe3";
	rename -uid "AB656370-4B17-62C1-6F22-C6B09F5A9FB9";
createNode transform -n "transform42" -p "polySurface10";
	rename -uid "9AB06AFC-441D-0921-BBB1-D7901396C1A4";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape10" -p "transform42";
	rename -uid "B695E1B5-4993-AB2B-C432-2AB2439F63B0";
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
createNode transform -n "polySurface11" -p "pPipe3";
	rename -uid "54B1D55D-439F-5876-E587-09A2BF6BAB63";
createNode transform -n "transform43" -p "polySurface11";
	rename -uid "74F1BC79-4628-BFAC-AD0F-E68F2DC71026";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape11" -p "transform43";
	rename -uid "ED6F82D1-44CB-69FE-2EEF-8389B56AEEF4";
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
createNode transform -n "polySurface12" -p "pPipe3";
	rename -uid "AE1FF3F8-4878-4E14-94E6-428885436010";
createNode transform -n "transform44" -p "polySurface12";
	rename -uid "5F7A4416-4B3D-CBF1-A566-F58662462B54";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape12" -p "transform44";
	rename -uid "508DF919-4DC3-74F4-64AC-ABBD43B4532D";
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
createNode transform -n "polySurface13" -p "pPipe3";
	rename -uid "3AA5217A-44A6-0433-B915-B3BADD72E0BA";
createNode transform -n "transform8" -p "polySurface13";
	rename -uid "3311F413-4DFE-D7CA-EB52-CE9C4A747B92";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape13" -p "transform8";
	rename -uid "C511B195-4A62-6DCE-F1CA-99AAF8BA695D";
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
createNode transform -n "polySurface14" -p "pPipe3";
	rename -uid "5A94110D-4F4F-6093-E0FF-2AB7B3130789";
createNode transform -n "transform7" -p "polySurface14";
	rename -uid "4D7B6255-486A-D60B-48E6-65A7F94222CF";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape14" -p "transform7";
	rename -uid "23FB0C67-4BA0-1680-F7A8-95A8A316620B";
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
createNode transform -n "polySurface15" -p "pPipe3";
	rename -uid "37B07ACC-4BCF-5825-6D32-3F919D81D338";
createNode transform -n "transform9" -p "polySurface15";
	rename -uid "4745E1EA-4DC7-84C4-2929-C19B25846332";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape15" -p "transform9";
	rename -uid "15D66FD1-4BE6-5DDB-56D6-4DA5502D1473";
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
createNode transform -n "polySurface16" -p "pPipe3";
	rename -uid "4B7AF297-45F4-FD2F-3935-D2825995426F";
createNode transform -n "transform18" -p "polySurface16";
	rename -uid "54A5F479-47F7-04E4-B45B-308E60F399A8";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape16" -p "transform18";
	rename -uid "A1AA6AD5-4EF7-CCC9-608C-1CB0283F47AB";
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
createNode transform -n "polySurface17" -p "pPipe3";
	rename -uid "F3A0E926-49ED-0CFE-B9D6-D8B3B8620263";
createNode transform -n "transform19" -p "polySurface17";
	rename -uid "E537B959-406C-1577-4ADC-66BCE8421D8B";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape17" -p "transform19";
	rename -uid "EF09E539-46DC-408A-5439-718C798C5832";
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
createNode transform -n "polySurface18" -p "pPipe3";
	rename -uid "E3B5AC88-473E-F14C-8F88-7E83A0D9D147";
createNode transform -n "transform10" -p "polySurface18";
	rename -uid "AAFF9506-4DC1-73A8-FABF-A08566F835B8";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape18" -p "transform10";
	rename -uid "F1E7841B-4220-DC3D-7A9C-B3BFB8E07964";
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
createNode transform -n "polySurface19" -p "pPipe3";
	rename -uid "06635699-4117-D0BD-EB06-C290F3654741";
createNode transform -n "transform11" -p "polySurface19";
	rename -uid "7FF8D719-46B3-C69F-E348-1EAB2736F6C0";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape19" -p "transform11";
	rename -uid "7E461A8D-4E41-BBC7-7D56-59AF755073A9";
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
createNode transform -n "polySurface20" -p "pPipe3";
	rename -uid "2A29F350-4D1B-A3C1-8314-A786DCB9096B";
createNode transform -n "transform12" -p "polySurface20";
	rename -uid "0D473D85-4E98-A7AC-5BF7-DD8A6B8A27D4";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape20" -p "transform12";
	rename -uid "7F16729C-4351-57B8-62CE-70881A4D859E";
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
createNode transform -n "polySurface21" -p "pPipe3";
	rename -uid "680EB2E1-4291-D790-F4EB-21B0ACCD2DFF";
createNode transform -n "transform13" -p "polySurface21";
	rename -uid "409B0182-4359-1B0A-7462-FDBC0017F299";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape21" -p "transform13";
	rename -uid "8D600C09-4C69-CC9E-170B-0594C80AA5EF";
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
createNode transform -n "polySurface22" -p "pPipe3";
	rename -uid "598DD72D-483B-EAAD-D6B3-7BA3F79884B3";
createNode transform -n "transform14" -p "polySurface22";
	rename -uid "5DFF9B3C-4E99-3344-B364-C8AFDD33B5AA";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape22" -p "transform14";
	rename -uid "B8BB778F-4D06-28FD-AD4C-D781782E5BEB";
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
createNode transform -n "polySurface23" -p "pPipe3";
	rename -uid "0AA3B6BB-4441-28FC-C4FF-239AB00F601B";
createNode transform -n "transform15" -p "polySurface23";
	rename -uid "CC54C232-4664-834C-E742-A193A4BAB22E";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape23" -p "transform15";
	rename -uid "471248C7-4E6C-8475-A8CD-1FA3D67861FA";
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
createNode transform -n "polySurface24" -p "pPipe3";
	rename -uid "EB097C8D-46AE-7CE4-A6F2-E593C07FA61B";
createNode transform -n "transform16" -p "polySurface24";
	rename -uid "CE32BCAB-4F06-0318-6D61-35BF49AD78AD";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape24" -p "transform16";
	rename -uid "8B6488C4-41D0-897F-1FFA-FD80AEE00935";
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
createNode transform -n "polySurface25" -p "pPipe3";
	rename -uid "D9EBACCA-4834-175F-82E1-63A794A68C26";
createNode transform -n "transform17" -p "polySurface25";
	rename -uid "FDE2861F-49B8-4B11-0882-CCA465F13B62";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape25" -p "transform17";
	rename -uid "FC88D3C1-4545-6343-C754-30AC698F6B5F";
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
createNode transform -n "polySurface26" -p "pPipe3";
	rename -uid "BBBFCD25-435D-777E-093A-B8833E7D44D4";
createNode transform -n "transform20" -p "polySurface26";
	rename -uid "4685FE72-4764-3B4C-9212-50BBD08C9376";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape26" -p "transform20";
	rename -uid "AD0A2D3F-41B8-F424-DF95-C9A21C7550DD";
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
createNode transform -n "polySurface27" -p "pPipe3";
	rename -uid "3C03FE68-4996-B227-3903-F3BDC85E9657";
createNode transform -n "transform37" -p "polySurface27";
	rename -uid "B4C859C2-4A77-A174-B472-8B8A45BACC67";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape27" -p "transform37";
	rename -uid "CAC2558B-49B8-39A7-F81D-73B933E49E6E";
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
createNode transform -n "polySurface28" -p "pPipe3";
	rename -uid "2B110764-4AB2-E8F8-2798-1CBD558DD034";
createNode transform -n "transform40" -p "polySurface28";
	rename -uid "FDC40198-434C-5977-9B67-BA819F50B184";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape28" -p "transform40";
	rename -uid "9BB0E590-4C4C-462F-2830-27B9A2D03735";
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
createNode transform -n "polySurface29" -p "pPipe3";
	rename -uid "8533F996-4BD5-62B3-CA97-368F8817EC2E";
createNode transform -n "transform36" -p "polySurface29";
	rename -uid "225D8D87-49FF-82BC-C7B9-B5AF88338B34";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape29" -p "transform36";
	rename -uid "CAAB9945-428B-0491-10F2-E6BB061BE2FE";
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
createNode transform -n "polySurface30" -p "pPipe3";
	rename -uid "49219971-484F-D00D-EE6A-E7ACDA1EB949";
createNode transform -n "transform38" -p "polySurface30";
	rename -uid "6BB9FD6C-4B12-8A2E-8657-12A361150CD6";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape30" -p "transform38";
	rename -uid "7EDC9159-4E0F-91DC-A864-9C9DFCC863BF";
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
createNode transform -n "polySurface31" -p "pPipe3";
	rename -uid "4F3B57ED-4395-7C9E-D9B3-57B2AB4DFFB4";
createNode transform -n "transform39" -p "polySurface31";
	rename -uid "261100A3-4F59-3266-A75E-1789C3000CC0";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape31" -p "transform39";
	rename -uid "D080A518-42B4-2269-6A13-DF853933174D";
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
createNode transform -n "polySurface32" -p "pPipe3";
	rename -uid "B26BF805-47A1-0AD2-F120-FFA6CE56F33A";
createNode transform -n "transform26" -p "polySurface32";
	rename -uid "6B1374ED-40CF-C41C-CABB-C7AACD25D37D";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape32" -p "transform26";
	rename -uid "03D30A5A-4053-73B4-2B3D-8FA7877682B6";
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
createNode transform -n "polySurface33" -p "pPipe3";
	rename -uid "1EA54011-4FE9-2207-D2CE-2D8C76D18CAD";
createNode transform -n "transform35" -p "polySurface33";
	rename -uid "1A85612B-45FF-290E-D081-2FB240ED9E18";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape33" -p "transform35";
	rename -uid "DB7A26D9-4CFB-6B4D-4780-5A8D8FE1CE85";
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
createNode transform -n "polySurface34" -p "pPipe3";
	rename -uid "E9FF9853-4ADC-7193-EE5A-78B7CFD56C37";
createNode transform -n "transform28" -p "polySurface34";
	rename -uid "76E8BB99-482D-7048-AB3D-66AB8D08520B";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape34" -p "transform28";
	rename -uid "BF9E0710-4012-479C-8D25-33B74E93A83E";
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
createNode transform -n "polySurface35" -p "pPipe3";
	rename -uid "68BA01EE-4B00-F42F-EF3C-D9AB0D70CA84";
createNode transform -n "transform33" -p "polySurface35";
	rename -uid "11D49F14-4324-7CB6-4D7A-97AE9620FA12";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape35" -p "transform33";
	rename -uid "09A006E5-448B-7218-A861-F5A14F647726";
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
createNode transform -n "polySurface36" -p "pPipe3";
	rename -uid "9BC3C394-4218-A347-E1BF-DC87F2A6B927";
createNode transform -n "transform31" -p "polySurface36";
	rename -uid "822E2D64-4684-5A19-8A15-80BD0808F601";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape36" -p "transform31";
	rename -uid "ECF12EB4-49E7-EF1F-9198-06AEB1630F46";
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
createNode transform -n "polySurface37" -p "pPipe3";
	rename -uid "5BC5285C-4B76-E102-9650-86966334241C";
createNode transform -n "transform30" -p "polySurface37";
	rename -uid "D8CDC98C-4C9A-E350-252F-29AEDD520731";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape37" -p "transform30";
	rename -uid "82319E1B-4699-4AFE-57A6-9F8BE7654A12";
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
createNode transform -n "polySurface38" -p "pPipe3";
	rename -uid "2927906A-4B8B-80CF-3C0C-CF9606E6B298";
createNode transform -n "transform34" -p "polySurface38";
	rename -uid "31731737-4BF8-1896-A600-3EA509B14BD2";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape38" -p "transform34";
	rename -uid "A3DC2FFC-4A61-BFA7-E0EA-4EB92E5BC990";
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
createNode transform -n "polySurface39" -p "pPipe3";
	rename -uid "A94FAD0D-4702-C125-F6AE-30B52B59B2E7";
createNode transform -n "transform29" -p "polySurface39";
	rename -uid "1EE1C6DC-46B0-A728-01F5-65B86CCA7E26";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape39" -p "transform29";
	rename -uid "C6E08E4C-4D4D-6241-8445-9D82113B2379";
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
createNode transform -n "polySurface40" -p "pPipe3";
	rename -uid "91A7EF23-4517-D687-51EE-049F36617E8A";
createNode transform -n "transform24" -p "polySurface40";
	rename -uid "B9BD2E51-49C8-EDAC-6688-EC991DB9343D";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape40" -p "transform24";
	rename -uid "3354EE7E-4276-CED6-D483-86B1D784FC4A";
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
createNode transform -n "polySurface41" -p "pPipe3";
	rename -uid "A50C904A-404B-8F1D-E188-3CAA853F9057";
createNode transform -n "transform25" -p "polySurface41";
	rename -uid "0C3F28A6-48C4-C8B4-97EA-ED9719816CFC";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape41" -p "transform25";
	rename -uid "7F5B71D0-4F3E-F82E-A88F-6F80D7919A90";
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
createNode transform -n "polySurface42" -p "pPipe3";
	rename -uid "44B6E703-4A6D-CBC5-0493-AE82D4DCE8EA";
createNode transform -n "transform27" -p "polySurface42";
	rename -uid "24645ACB-4ADB-B6BF-3EC1-75922CAED33C";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape42" -p "transform27";
	rename -uid "E41C94B2-4C03-7BF6-FA43-C594E2A5E5DB";
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
createNode transform -n "polySurface43" -p "pPipe3";
	rename -uid "43CCEA7B-4D8B-8435-1601-4D84BDBAA8C1";
createNode transform -n "transform32" -p "polySurface43";
	rename -uid "834D7CEE-4D68-8AEC-514F-43B5B4B5A2C2";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape43" -p "transform32";
	rename -uid "8824DF4D-4886-A4B3-EF4C-99AD837B324E";
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
createNode transform -n "polySurface44" -p "pPipe3";
	rename -uid "94F3F2B6-45A3-559A-88F7-59BF62A2B1DF";
createNode transform -n "transform21" -p "polySurface44";
	rename -uid "FBA213C1-42E4-DE3B-455B-819264A080B0";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape44" -p "transform21";
	rename -uid "A0D143BF-40BF-3F42-5307-1D90F52AE8F9";
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
createNode transform -n "polySurface45" -p "pPipe3";
	rename -uid "C0B7B99A-4D28-212C-8BF3-579F10B0B0C7";
createNode transform -n "transform22" -p "polySurface45";
	rename -uid "71FC3846-4180-AF4E-3F66-2B87C5F18C61";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape45" -p "transform22";
	rename -uid "C083F7BB-495B-EBDA-5D87-19B682F5FE30";
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
createNode transform -n "polySurface46" -p "pPipe3";
	rename -uid "2BC3C07D-4702-6408-CC61-519FC704C5F2";
createNode transform -n "transform23" -p "polySurface46";
	rename -uid "468F1229-4FC7-0C99-776D-27BB26DCB607";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape46" -p "transform23";
	rename -uid "EB918445-4BE9-BF71-A46C-3B8B4989C057";
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
createNode transform -n "transform1" -p "pPipe3";
	rename -uid "F00A23F0-4955-57B0-24CC-7E8EA027E022";
	setAttr ".v" no;
createNode mesh -n "pPipe3Shape" -p "transform1";
	rename -uid "917F727D-4C93-6BDD-67BF-8C9BAC1833FD";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:1463]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 1994 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0 1 0.050000001 1 0.1 1 0.15000001
		 1 0.2 1 0.25 1 0.30000001 1 0.35000002 1 0.40000004 1 0.45000005 1 0.50000006 1 0.55000007
		 1 0.60000008 1 0.6500001 1 0.70000011 1 0.75000012 1 0.80000013 1 0.85000014 1 0.90000015
		 1 0.95000017 1 1.000000119209 1 0 0.75 0.050000001 0.75 0.1 0.75 0.15000001 0.75
		 0.2 0.75 0.25 0.75 0.30000001 0.75 0.35000002 0.75 0.40000004 0.75 0.45000005 0.75
		 0.50000006 0.75 0.55000007 0.75 0.60000008 0.75 0.6500001 0.75 0.70000011 0.75 0.75000012
		 0.75 0.80000013 0.75 0.85000014 0.75 0.90000015 0.75 0.95000017 0.75 1.000000119209
		 0.75 0 0.5 0.050000001 0.5 0.1 0.5 0.15000001 0.5 0.2 0.5 0.25 0.5 0.30000001 0.5
		 0.35000002 0.5 0.40000004 0.5 0.45000005 0.5 0.50000006 0.5 0.55000007 0.5 0.60000008
		 0.5 0.6500001 0.5 0.70000011 0.5 0.75000012 0.5 0.80000013 0.5 0.85000014 0.5 0.90000015
		 0.5 0.95000017 0.5 1.000000119209 0.5 0 0.25 0.050000001 0.25 0.1 0.25 0.15000001
		 0.25 0.2 0.25 0.25 0.25 0.30000001 0.25 0.35000002 0.25 0.40000004 0.25 0.45000005
		 0.25 0.50000006 0.25 0.55000007 0.25 0.60000008 0.25 0.6500001 0.25 0.70000011 0.25
		 0.75000012 0.25 0.80000013 0.25 0.85000014 0.25 0.90000015 0.25 0.95000017 0.25 1.000000119209
		 0.25 0 0 0.050000001 0 0.1 0 0.15000001 0 0.2 0 0.25 0 0.30000001 0 0.35000002 0
		 0.40000004 0 0.45000005 0 0.50000006 0 0.55000007 0 0.60000008 0 0.6500001 0 0.70000011
		 0 0.75000012 0 0.80000013 0 0.85000014 0 0.90000015 0 0.95000017 0 1.000000119209
		 0 0 0.375 1.000000119209 0.375 0.95000017 0.375 0.90000015 0.375 0.85000014 0.375
		 0.80000013 0.375 0.75000012 0.375 0.70000011 0.375 0.6500001 0.375 0.60000008 0.375
		 0.55000007 0.375 0.50000006 0.375 0.45000005 0.375 0.40000004 0.375 0.35000002 0.375
		 0.30000001 0.375 0.25 0.375 0.2 0.375 0.15000001 0.375 0.1 0.375 0.050000001 0.375
		 0 0.3125 1.000000119209 0.3125 0.050000001 0.3125 0.1 0.3125 0.15000001 0.3125 0.2
		 0.3125 0.25 0.3125 0.30000001 0.3125 0.35000002 0.3125 0.40000004 0.3125 0.45000005
		 0.3125 0.50000006 0.3125 0.55000007 0.3125 0.60000008 0.3125 0.6500001 0.3125 0.70000011
		 0.3125 0.75000012 0.3125 0.80000013 0.3125 0.85000014 0.3125 0.90000015 0.3125 0.95000017
		 0.3125 0 0.4375 1.000000119209 0.4375 0.95000017 0.4375 0.90000015 0.4375 0.85000014
		 0.4375 0.80000013 0.4375 0.75000012 0.4375 0.70000011 0.4375 0.6500001 0.4375 0.60000008
		 0.4375 0.55000007 0.4375 0.50000006 0.4375 0.45000005 0.4375 0.40000004 0.4375 0.35000002
		 0.4375 0.30000001 0.4375 0.25 0.4375 0.2 0.4375 0.15000001 0.4375 0.1 0.4375 0.050000001
		 0.4375 0 0.875 1.000000119209 0.875 0.95000017 0.875 0.90000015 0.875 0.85000014
		 0.875 0.80000013 0.875 0.75000012 0.875 0.70000011 0.875 0.6500001 0.875 0.60000008
		 0.875 0.55000007 0.875 0.50000006 0.875 0.45000005 0.875 0.40000004 0.875 0.35000002
		 0.875 0.30000001 0.875 0.25 0.875 0.2 0.875 0.15000001 0.875 0.1 0.875 0.050000001
		 0.875 0 0.9375 1.000000119209 0.9375 0.95000017 0.9375 0.90000015 0.9375 0.85000014
		 0.9375 0.80000013 0.9375 0.75000012 0.9375 0.70000011 0.9375 0.6500001 0.9375 0.60000008
		 0.9375 0.55000007 0.9375 0.50000006 0.9375 0.45000005 0.9375 0.40000004 0.9375 0.35000002
		 0.9375 0.30000001 0.9375 0.25 0.9375 0.2 0.9375 0.15000001 0.9375 0.1 0.9375 0.050000001
		 0.9375 0 0.8125 1.000000119209 0.8125 0.050000001 0.8125 0.1 0.8125 0.15000001 0.8125
		 0.2 0.8125 0.25 0.8125 0.30000001 0.8125 0.35000002 0.8125 0.40000004 0.8125 0.45000005
		 0.8125 0.50000006 0.8125 0.55000007 0.8125 0.60000008 0.8125 0.6500001 0.8125 0.70000011
		 0.8125 0.75000012 0.8125 0.80000013 0.8125 0.85000014 0.8125 0.90000015 0.8125 0.95000017
		 0.8125 0 0.34375 1.000000119209 0.34375 0.95000017 0.34375 0.90000015 0.34375 0.85000014
		 0.34375 0.80000013 0.34375 0.75000012 0.34375 0.70000011 0.34375 0.6500001 0.34375
		 0.60000008 0.34375 0.55000007 0.34375 0.50000006 0.34375 0.45000005 0.34375 0.40000004
		 0.34375 0.35000002 0.34375 0.30000001 0.34375 0.25 0.34375 0.2 0.34375 0.15000001
		 0.34375;
	setAttr ".uvst[0].uvsp[250:499]" 0.1 0.34375 0.050000001 0.34375 0 0.90625
		 1.000000119209 0.90625 0.050000001 0.90625 0.1 0.90625 0.15000001 0.90625 0.2 0.90625
		 0.25 0.90625 0.30000001 0.90625 0.35000002 0.90625 0.40000004 0.90625 0.45000005
		 0.90625 0.50000006 0.90625 0.55000007 0.90625 0.60000008 0.90625 0.6500001 0.90625
		 0.70000011 0.90625 0.75000012 0.90625 0.80000013 0.90625 0.85000014 0.90625 0.90000015
		 0.90625 0.95000017 0.90625 0.050000001 1 0 1 0 0.94999999 0.050000001 0.94999999
		 0.1 1 0.1 0.94999999 0.15000001 1 0.15000001 0.94999999 0.2 1 0.2 0.94999999 0.25
		 1 0.25 0.94999999 0.30000001 1 0.30000001 0.94999999 0.35000002 1 0.35000002 0.94999999
		 0.40000004 1 0.40000004 0.94999999 0.45000005 1 0.45000005 0.94999999 0.50000006
		 1 0.50000006 0.94999999 0.55000007 1 0.55000007 0.94999999 0.60000008 1 0.60000008
		 0.94999999 0.6500001 1 0.6500001 0.94999999 0.70000011 1 0.70000011 0.94999999 0.75000012
		 1 0.75000012 0.94999999 0.80000013 1 0.80000013 0.94999999 0.85000014 1 0.85000014
		 0.94999999 0.90000015 1 0.90000015 0.94999999 0.95000017 1 0.95000017 0.94999999
		 1.000000119209 1 1.000000119209 0.94999999 0 0.89999998 0.050000001 0.89999998 0.1
		 0.89999998 0.15000001 0.89999998 0.2 0.89999998 0.25 0.89999998 0.30000001 0.89999998
		 0.35000002 0.89999998 0.40000004 0.89999998 0.45000005 0.89999998 0.50000006 0.89999998
		 0.55000007 0.89999998 0.60000008 0.89999998 0.6500001 0.89999998 0.70000011 0.89999998
		 0.75000012 0.89999998 0.80000013 0.89999998 0.85000014 0.89999998 0.90000015 0.89999998
		 0.95000017 0.89999998 1.000000119209 0.89999998 0 0.84999996 0.050000001 0.84999996
		 0.1 0.84999996 0.15000001 0.84999996 0.2 0.84999996 0.25 0.84999996 0.30000001 0.84999996
		 0.35000002 0.84999996 0.40000004 0.84999996 0.45000005 0.84999996 0.50000006 0.84999996
		 0.55000007 0.84999996 0.60000008 0.84999996 0.6500001 0.84999996 0.70000011 0.84999996
		 0.75000012 0.84999996 0.80000013 0.84999996 0.85000014 0.84999996 0.90000015 0.84999996
		 0.95000017 0.84999996 1.000000119209 0.84999996 0 0.79999995 0.050000001 0.79999995
		 0.1 0.79999995 0.15000001 0.79999995 0.2 0.79999995 0.25 0.79999995 0.30000001 0.79999995
		 0.35000002 0.79999995 0.40000004 0.79999995 0.45000005 0.79999995 0.50000006 0.79999995
		 0.55000007 0.79999995 0.60000008 0.79999995 0.6500001 0.79999995 0.70000011 0.79999995
		 0.75000012 0.79999995 0.80000013 0.79999995 0.85000014 0.79999995 0.90000015 0.79999995
		 0.95000017 0.79999995 1.000000119209 0.79999995 0 0.74999994 0.050000001 0.74999994
		 0.1 0.74999994 0.15000001 0.74999994 0.2 0.74999994 0.25 0.74999994 0.30000001 0.74999994
		 0.35000002 0.74999994 0.40000004 0.74999994 0.45000005 0.74999994 0.50000006 0.74999994
		 0.55000007 0.74999994 0.60000008 0.74999994 0.6500001 0.74999994 0.70000011 0.74999994
		 0.75000012 0.74999994 0.80000013 0.74999994 0.85000014 0.74999994 0.90000015 0.74999994
		 0.95000017 0.74999994 1.000000119209 0.74999994 0 0.69999993 0.050000001 0.69999993
		 0.1 0.69999993 0.15000001 0.69999993 0.2 0.69999993 0.25 0.69999993 0.30000001 0.69999993
		 0.35000002 0.69999993 0.40000004 0.69999993 0.45000005 0.69999993 0.50000006 0.69999993
		 0.55000007 0.69999993 0.60000008 0.69999993 0.6500001 0.69999993 0.70000011 0.69999993
		 0.75000012 0.69999993 0.80000013 0.69999993 0.85000014 0.69999993 0.90000015 0.69999993
		 0.95000017 0.69999993 1.000000119209 0.69999993 0 0.64999992 0.050000001 0.64999992
		 0.1 0.64999992 0.15000001 0.64999992 0.2 0.64999992 0.25 0.64999992 0.30000001 0.64999992
		 0.35000002 0.64999992 0.40000004 0.64999992 0.45000005 0.64999992 0.50000006 0.64999992
		 0.55000007 0.64999992 0.60000008 0.64999992 0.6500001 0.64999992 0.70000011 0.64999992
		 0.75000012 0.64999992 0.80000013 0.64999992 0.85000014 0.64999992 0.90000015 0.64999992
		 0.95000017 0.64999992 1.000000119209 0.64999992 0 0.5999999 0.050000001 0.5999999
		 0.1 0.5999999 0.15000001 0.5999999 0.2 0.5999999 0.25 0.5999999 0.30000001 0.5999999
		 0.35000002 0.5999999 0.40000004 0.5999999 0.45000005 0.5999999 0.50000006 0.5999999
		 0.55000007 0.5999999 0.60000008 0.5999999 0.6500001 0.5999999 0.70000011 0.5999999
		 0.75000012 0.5999999 0.80000013 0.5999999 0.85000014 0.5999999 0.90000015 0.5999999
		 0.95000017 0.5999999 1.000000119209 0.5999999 0 0.54999989 0.050000001 0.54999989
		 0.1 0.54999989 0.15000001 0.54999989 0.2 0.54999989 0.25 0.54999989 0.30000001 0.54999989
		 0.35000002 0.54999989 0.40000004 0.54999989 0.45000005 0.54999989 0.50000006 0.54999989
		 0.55000007 0.54999989 0.60000008 0.54999989 0.6500001 0.54999989 0.70000011 0.54999989
		 0.75000012 0.54999989 0.80000013 0.54999989 0.85000014 0.54999989 0.90000015 0.54999989
		 0.95000017 0.54999989 1.000000119209 0.54999989 0 0.49999988 0.050000001 0.49999988
		 0.1 0.49999988 0.15000001 0.49999988 0.2 0.49999988 0.25 0.49999988 0.30000001 0.49999988
		 0.35000002 0.49999988 0.40000004 0.49999988 0.45000005 0.49999988 0.50000006 0.49999988
		 0.55000007 0.49999988 0.60000008 0.49999988 0.6500001 0.49999988 0.70000011 0.49999988
		 0.75000012 0.49999988 0.80000013 0.49999988;
	setAttr ".uvst[0].uvsp[500:749]" 0.85000014 0.49999988 0.90000015 0.49999988
		 0.95000017 0.49999988 1.000000119209 0.49999988 0.049999997 0.48300952 0 0.48300952
		 0 0.46685538 0.049999997 0.46685538 0.099999994 0.48300952 0.099999994 0.46685538
		 0.15000001 0.48300952 0.15000001 0.46685538 0.19999999 0.48300952 0.19999999 0.46685538
		 0.25 0.48300952 0.25 0.46685538 0.30000001 0.48300952 0.30000001 0.46685538 0.35000002
		 0.48300952 0.35000002 0.46685538 0.40000004 0.48300952 0.40000004 0.46685538 0.45000005
		 0.48300952 0.45000005 0.46685538 0.5 0.48300952 0.5 0.46685538 0.55000007 0.48300952
		 0.55000007 0.46685538 0.60000008 0.48300952 0.60000008 0.46685538 0.6500001 0.48300952
		 0.6500001 0.46685538 0.70000005 0.48300952 0.70000005 0.46685538 0.75000012 0.48300952
		 0.75000012 0.46685538 0.80000007 0.48300952 0.80000007 0.46685538 0.85000014 0.48300952
		 0.85000014 0.46685538 0.90000015 0.48300952 0.90000015 0.46685538 0.95000017 0.48300952
		 0.95000017 0.46685538 1 0.48300952 1 0.46685538 0.050000001 0.44999987 0 0.44999987
		 0 0.39999986 0.050000001 0.39999986 0.1 0.44999987 0.1 0.39999986 0.15000001 0.44999987
		 0.15000001 0.39999986 0.2 0.44999987 0.2 0.39999986 0.25 0.44999987 0.25 0.39999986
		 0.30000001 0.44999987 0.30000001 0.39999986 0.35000002 0.44999987 0.35000002 0.39999986
		 0.40000004 0.44999987 0.40000004 0.39999986 0.45000005 0.44999987 0.45000005 0.39999986
		 0.50000006 0.44999987 0.50000006 0.39999986 0.55000007 0.44999987 0.55000007 0.39999986
		 0.60000008 0.44999987 0.60000008 0.39999986 0.6500001 0.44999987 0.6500001 0.39999986
		 0.70000011 0.44999987 0.70000011 0.39999986 0.75000012 0.44999987 0.75000012 0.39999986
		 0.80000013 0.44999987 0.80000013 0.39999986 0.85000014 0.44999987 0.85000014 0.39999986
		 0.90000015 0.44999987 0.90000015 0.39999986 0.95000017 0.44999987 0.95000017 0.39999986
		 1.000000119209 0.44999987 1.000000119209 0.39999986 0.050000001 0.37238294 0 0.37238294
		 0 0.34999985 0.050000001 0.34999985 0.1 0.37238294 0.1 0.34999985 0.15000001 0.37238294
		 0.15000001 0.34999985 0.2 0.37238294 0.2 0.34999985 0.25 0.37238294 0.25 0.34999985
		 0.30000001 0.37238294 0.30000001 0.34999985 0.35000002 0.37238294 0.35000002 0.34999985
		 0.40000004 0.37238294 0.40000004 0.34999985 0.45000005 0.37238294 0.45000005 0.34999985
		 0.50000006 0.37238294 0.50000006 0.34999985 0.55000007 0.37238294 0.55000007 0.34999985
		 0.60000008 0.37238294 0.60000008 0.34999985 0.6500001 0.37238294 0.6500001 0.34999985
		 0.70000011 0.37238294 0.70000011 0.34999985 0.75000012 0.37238294 0.75000012 0.34999985
		 0.80000013 0.37238294 0.80000013 0.34999985 0.85000014 0.37238294 0.85000014 0.34999985
		 0.90000015 0.37238294 0.90000015 0.34999985 0.95000017 0.37238294 0.95000017 0.34999985
		 1.000000119209 0.37238294 1.000000119209 0.34999985 0 0.29999983 0.050000001 0.29999983
		 0.1 0.29999983 0.15000001 0.29999983 0.2 0.29999983 0.25 0.29999983 0.30000001 0.29999983
		 0.35000002 0.29999983 0.40000004 0.29999983 0.45000005 0.29999983 0.50000006 0.29999983
		 0.55000007 0.29999983 0.60000008 0.29999983 0.6500001 0.29999983 0.70000011 0.29999983
		 0.75000012 0.29999983 0.80000013 0.29999983 0.85000014 0.29999983 0.90000015 0.29999983
		 0.95000017 0.29999983 1.000000119209 0.29999983 0 0.24999984 0.050000001 0.24999984
		 0.1 0.24999984 0.15000001 0.24999984 0.2 0.24999984 0.25 0.24999984 0.30000001 0.24999984
		 0.35000002 0.24999984 0.40000004 0.24999984 0.45000005 0.24999984 0.50000006 0.24999984
		 0.55000007 0.24999984 0.60000008 0.24999984 0.6500001 0.24999984 0.70000011 0.24999984
		 0.75000012 0.24999984 0.80000013 0.24999984 0.85000014 0.24999984 0.90000015 0.24999984
		 0.95000017 0.24999984 1.000000119209 0.24999984 0 0.19999984 0.050000001 0.19999984
		 0.1 0.19999984 0.15000001 0.19999984 0.2 0.19999984 0.25 0.19999984 0.30000001 0.19999984
		 0.35000002 0.19999984 0.40000004 0.19999984 0.45000005 0.19999984 0.50000006 0.19999984
		 0.55000007 0.19999984 0.60000008 0.19999984 0.6500001 0.19999984 0.70000011 0.19999984
		 0.75000012 0.19999984 0.80000013 0.19999984 0.85000014 0.19999984 0.90000015 0.19999984
		 0.95000017 0.19999984 1.000000119209 0.19999984 0 0.14999984 0.050000001 0.14999984
		 0.1 0.14999984 0.15000001 0.14999984 0.2 0.14999984 0.25 0.14999984 0.30000001 0.14999984
		 0.35000002 0.14999984 0.40000004 0.14999984 0.45000005 0.14999984 0.50000006 0.14999984
		 0.55000007 0.14999984 0.60000008 0.14999984 0.6500001 0.14999984 0.70000011 0.14999984
		 0.75000012 0.14999984 0.80000013 0.14999984 0.85000014 0.14999984 0.90000015 0.14999984
		 0.95000017 0.14999984 1.000000119209 0.14999984 0 0.099999845 0.050000001 0.099999845
		 0.1 0.099999845 0.15000001 0.099999845 0.2 0.099999845 0.25 0.099999845 0.30000001
		 0.099999845 0.35000002 0.099999845 0.40000004 0.099999845 0.45000005 0.099999845
		 0.50000006 0.099999845 0.55000007 0.099999845 0.60000008 0.099999845 0.6500001 0.099999845
		 0.70000011 0.099999845 0.75000012 0.099999845 0.80000013 0.099999845 0.85000014 0.099999845
		 0.90000015 0.099999845 0.95000017 0.099999845 1.000000119209 0.099999845 0 0.049999844
		 0.050000001 0.049999844 0.1 0.049999844 0.15000001 0.049999844 0.2 0.049999844 0.25
		 0.049999844 0.30000001 0.049999844 0.35000002 0.049999844 0.40000004 0.049999844
		 0.45000005 0.049999844 0.50000006 0.049999844 0.55000007 0.049999844 0.60000008 0.049999844
		 0.6500001 0.049999844 0.70000011 0.049999844;
	setAttr ".uvst[0].uvsp[750:999]" 0.75000012 0.049999844 0.80000013 0.049999844
		 0.85000014 0.049999844 0.90000015 0.049999844 0.95000017 0.049999844 1.000000119209
		 0.049999844 0 -1.5646219e-007 0.050000001 -1.5646219e-007 0.1 -1.5646219e-007 0.15000001
		 -1.5646219e-007 0.2 -1.5646219e-007 0.25 -1.5646219e-007 0.30000001 -1.5646219e-007
		 0.35000002 -1.5646219e-007 0.40000004 -1.5646219e-007 0.45000005 -1.5646219e-007
		 0.50000006 -1.5646219e-007 0.55000007 -1.5646219e-007 0.60000008 -1.5646219e-007
		 0.6500001 -1.5646219e-007 0.70000011 -1.5646219e-007 0.75000012 -1.5646219e-007 0.80000013
		 -1.5646219e-007 0.85000014 -1.5646219e-007 0.90000015 -1.5646219e-007 0.95000017
		 -1.5646219e-007 1.000000119209 -1.5646219e-007 0.40277123 0.25 0.40277123 0.22428624
		 0.59684026 0.22428624 0.59684026 0.25 0.40277123 0.5 0.40277123 0.25 0.59684026 0.25
		 0.59684026 0.5 0.40277123 0.52571374 0.59684032 0.52571374 0.40277123 1 0.40277123
		 0.75 0.59684026 0.75 0.59684026 1 0.625 0.22428624 0.875 0.22428626 0.875 0.25 0.625
		 0.25 0.125 0.22428626 0.375 0.22428624 0.375 0.25 0.125 0.25 0.40277123 0.22428624
		 0.40277123 0.12778462 0.40277123 0.031283002 0.59684026 0.031282995 0.59684026 0.22428624
		 0.62500006 0.031282995 0.875 0.031283006 0.875 0.12778464 0.625 0.12778462 0.59684026
		 0.71871698 0.40277126 0.71871704 0.40277123 0.62221539 0.59684026 0.62221539 0.125
		 0.031283006 0.375 0.031282995 0.375 0.12778462 0.125 0.12778464 0.375 0.75 0.375
		 1 0.375 0.62221539 0.375 0.71871698 0.375 0.5 0.375 0.52571374 0.375 0.22428624 0.40277123
		 0.22428624 0.40277123 0.25 0.375 0.25 0.375 0.031282995 0.40277123 0.031283002 0.40277123
		 0.12778462 0.375 0.12778462 0.625 0.71871698 0.625 0.62221539 0.625 0.75 0.625 1
		 0.625 0.12778462 0.59684026 0.12778462 0.59684026 0.031282995 0.62500006 0.031282995
		 0.59684026 0.25 0.59684026 0.22428624 0.625 0.22428624 0.625 0.25 0.625 0.5 0.62500006
		 0.52571374 0.375 0 0.40277123 0 0.59684026 0 0.625 0 0.875 0 0.125 0 0.59684026 0.031282995
		 0.59684026 0.22428624 0.62500006 0.031282995 0.625 0.22428624 0.59684026 0.031282995
		 0.59684026 0.12778462 0.59684026 0.22428624 0.62500006 0.031282995 0.625 0.22428624
		 0.625 0.12881602 0.375 0.22428624 0.59684026 0.22428624 0.625 0.22428624 0.40277123
		 0.22428624 0.375 0.22428624 0.40277123 0.25 0.375 0.25 0.050000001 0.875 0 0.875
		 0 0.8125 0.050000001 0.8125 0.1 0.875 0.1 0.8125 0.15000001 0.875 0.15000001 0.8125
		 0.2 0.875 0.2 0.8125 0.25 0.875 0.25 0.8125 0.30000001 0.875 0.30000001 0.8125 0.35000002
		 0.875 0.35000002 0.8125 0.40000004 0.875 0.40000004 0.8125 0.45000005 0.875 0.45000005
		 0.8125 0.50000006 0.875 0.50000006 0.8125 0.55000007 0.875 0.55000007 0.8125 0.60000008
		 0.875 0.60000008 0.8125 0.6500001 0.875 0.6500001 0.8125 0.70000011 0.875 0.70000011
		 0.8125 0.75000012 0.875 0.75000012 0.8125 0.80000013 0.875 0.80000013 0.8125 0.85000014
		 0.875 0.85000014 0.8125 0.90000015 0.875 0.90000015 0.8125 0.95000017 0.875 0.95000017
		 0.8125 1.000000119209 0.875 1.000000119209 0.8125 0.050000001 0.75 0 0.75 0 0.5 0.050000001
		 0.5 0.1 0.75 0.1 0.5 0.15000001 0.75 0.15000001 0.5 0.2 0.75 0.2 0.5 0.25 0.75 0.25
		 0.5 0.30000001 0.75 0.30000001 0.5 0.35000002 0.75 0.35000002 0.5 0.40000004 0.75
		 0.40000004 0.5 0.45000005 0.75 0.45000005 0.5 0.50000006 0.75 0.50000006 0.5 0.55000007
		 0.75 0.55000007 0.5 0.60000008 0.75 0.60000008 0.5 0.6500001 0.75 0.6500001 0.5 0.70000011
		 0.75 0.70000011 0.5 0.75000012 0.75 0.75000012 0.5 0.80000013 0.75 0.80000013 0.5
		 0.85000014 0.75 0.85000014 0.5 0.90000015 0.75 0.90000015 0.5 0.95000017 0.75 0.95000017
		 0.5 1.000000119209 0.75 1.000000119209 0.5 0.050000001 0.34375 0 0.34375 0 0.3125
		 0.050000001 0.3125 0.1 0.34375 0.1 0.3125 0.15000001 0.34375 0.15000001 0.3125 0.2
		 0.34375 0.2 0.3125 0.25 0.34375 0.25 0.3125 0.30000001 0.34375 0.30000001 0.3125
		 0.35000002 0.34375 0.35000002 0.3125 0.40000004 0.34375 0.40000004 0.3125 0.45000005
		 0.34375 0.45000005 0.3125 0.50000006 0.34375 0.50000006 0.3125 0.55000007 0.34375
		 0.55000007 0.3125 0.60000008 0.34375 0.60000008 0.3125 0.6500001 0.34375 0.6500001
		 0.3125 0.70000011 0.34375 0.70000011 0.3125 0.75000012 0.34375 0.75000012 0.3125
		 0.80000013 0.34375 0.80000013 0.3125 0.85000014 0.34375 0.85000014 0.3125 0.90000015
		 0.34375 0.90000015 0.3125 0.95000017 0.34375 0.95000017 0.3125 1.000000119209 0.34375
		 1.000000119209 0.3125 0.050000001 0.25 0 0.25 0 0 0.050000001 0 0.1 0.25 0.1 0 0.15000001
		 0.25;
	setAttr ".uvst[0].uvsp[1000:1249]" 0.15000001 0 0.2 0.25 0.2 0 0.25 0.25 0.25
		 0 0.30000001 0.25 0.30000001 0 0.35000002 0.25 0.35000002 0 0.40000004 0.25 0.40000004
		 0 0.45000005 0.25 0.45000005 0 0.50000006 0.25 0.50000006 0 0.55000007 0.25 0.55000007
		 0 0.60000008 0.25 0.60000008 0 0.6500001 0.25 0.6500001 0 0.70000011 0.25 0.70000011
		 0 0.75000012 0.25 0.75000012 0 0.80000013 0.25 0.80000013 0 0.85000014 0.25 0.85000014
		 0 0.90000015 0.25 0.90000015 0 0.95000017 0.25 0.95000017 0 1.000000119209 0.25 1.000000119209
		 0 1.000000119209 0.4375 0.95000017 0.4375 0.95000017 0.375 1.000000119209 0.375 0.90000015
		 0.4375 0.90000015 0.375 0.85000014 0.4375 0.85000014 0.375 0.80000013 0.4375 0.80000013
		 0.375 0.75000012 0.4375 0.75000012 0.375 0.70000011 0.4375 0.70000011 0.375 0.6500001
		 0.4375 0.6500001 0.375 0.60000008 0.4375 0.60000008 0.375 0.55000007 0.4375 0.55000007
		 0.375 0.50000006 0.4375 0.50000006 0.375 0.45000005 0.4375 0.45000005 0.375 0.40000004
		 0.4375 0.40000004 0.375 0.35000002 0.4375 0.35000002 0.375 0.30000001 0.4375 0.30000001
		 0.375 0.25 0.4375 0.25 0.375 0.2 0.4375 0.2 0.375 0.15000001 0.4375 0.15000001 0.375
		 0.1 0.4375 0.1 0.375 0.050000001 0.4375 0.050000001 0.375 0 0.4375 0 0.375 1.000000119209
		 0.9375 0.95000017 0.9375 0.95000017 0.90625 1.000000119209 0.90625 0.90000015 0.9375
		 0.90000015 0.90625 0.85000014 0.9375 0.85000014 0.90625 0.80000013 0.9375 0.80000013
		 0.90625 0.75000012 0.9375 0.75000012 0.90625 0.70000011 0.9375 0.70000011 0.90625
		 0.6500001 0.9375 0.6500001 0.90625 0.60000008 0.9375 0.60000008 0.90625 0.55000007
		 0.9375 0.55000007 0.90625 0.50000006 0.9375 0.50000006 0.90625 0.45000005 0.9375
		 0.45000005 0.90625 0.40000004 0.9375 0.40000004 0.90625 0.35000002 0.9375 0.35000002
		 0.90625 0.30000001 0.9375 0.30000001 0.90625 0.25 0.9375 0.25 0.90625 0.2 0.9375
		 0.2 0.90625 0.15000001 0.9375 0.15000001 0.90625 0.1 0.9375 0.1 0.90625 0.050000001
		 0.9375 0.050000001 0.90625 0 0.9375 0 0.90625 1.000000119209 1 0.95000017 1 0.90000015
		 1 0.85000014 1 0.80000013 1 0.75000012 1 0.70000011 1 0.6500001 1 0.60000008 1 0.55000007
		 1 0.50000006 1 0.45000005 1 0.40000004 1 0.35000002 1 0.30000001 1 0.25 1 0.2 1 0.15000001
		 1 0.1 1 0.050000001 1 0 1 0.375 0.032126501 0.625 0.032126501 0.62499994 0.063364767
		 0.375 0.063364767 0.625 0.375 0.5625 0.375 0.5625 0.3125 0.625 0.3125 0.375 0.6866352
		 0.625 0.6866352 0.625 0.71787345 0.375 0.71787345 0.375 0.75 0.625 0.75 0.625 1 0.375
		 1 0.875 0.032126501 0.875 0.063364774 0.125 0.032126501 0.125 0.063364774 0.375 0
		 0.625 0 0.875 0 0.125 0 0.375 0.65405321 0.625 0.65405321 0.875 0.095946804 0.62499994
		 0.095946804 0.375 0.095946804 0.125 0.095946804 0.375 0.61622608 0.625 0.61622608
		 0.875 0.13377395 0.625 0.13377395 0.375 0.13377395 0.125 0.13377395 0.375 0.58487236
		 0.625 0.58487236 0.875 0.16512766 0.625 0.16512766 0.37499997 0.16512766 0.125 0.16512766
		 0.375 0.55076343 0.625 0.55076343 0.875 0.19923657 0.625 0.19923657 0.37499997 0.19923657
		 0.125 0.19923657 0.375 0.51816928 0.625 0.51816928 0.875 0.2318307 0.625 0.2318307
		 0.375 0.2318307 0.125 0.2318307 0.375 0.5 0.4375 0.5 0.5 0.5 0.5625 0.5 0.625 0.5
		 0.875 0.25 0.8125 0.25 0.75 0.25 0.6875 0.25 0.625 0.25 0.5625 0.25 0.5 0.25 0.4375
		 0.25 0.375 0.25 0.3125 0.25 0.25 0.25 0.1875 0.25 0.125 0.25 0.4375 0.375 0.4375
		 0.3125 0.5 0.3125 0.5 0.375 0.5625 0.5 0.5625 0.4375 0.625 0.4375 0.625 0.5 0.4375
		 0.5 0.4375 0.4375 0.5 0.4375 0.5 0.5 0.375 0.4375 0.375 0.5 0.375 0.3125 0.375 0.375
		 0.375 0.25 0.4375 0.25 0.5 0.25 0.5625 0.25 0.625 0.25 0.625 0.3125 0.625 0.375 0.625
		 0.4375 0.375 0.4375 0.375 0.375 0.375 0.3125 0.375 0 0.625 0 0.625 0.25 0.375 0.25
		 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0;
	setAttr ".uvst[0].uvsp[1250:1499]" 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625
		 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1
		 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625
		 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125
		 0.25 0.375 0.032126501 0.625 0.032126501 0.62499994 0.063364767 0.375 0.063364767
		 0.625 0.375 0.5625 0.375 0.5625 0.3125 0.625 0.3125 0.375 0.6866352 0.625 0.6866352
		 0.625 0.71787345 0.375 0.71787345 0.375 0.75 0.625 0.75 0.625 1 0.375 1 0.875 0.032126501
		 0.875 0.063364774 0.125 0.032126501 0.125 0.063364774 0.375 0 0.625 0 0.875 0 0.125
		 0 0.375 0.65405321 0.625 0.65405321 0.875 0.095946804 0.62499994 0.095946804 0.375
		 0.095946804 0.125 0.095946804 0.375 0.61622608 0.625 0.61622608 0.875 0.13377395
		 0.625 0.13377395 0.375 0.13377395 0.125 0.13377395 0.375 0.58487236 0.625 0.58487236
		 0.875 0.16512766 0.625 0.16512766 0.37499997 0.16512766 0.125 0.16512766 0.375 0.55076343
		 0.625 0.55076343 0.875 0.19923657 0.625 0.19923657 0.37499997 0.19923657 0.125 0.19923657
		 0.375 0.51816928 0.625 0.51816928 0.875 0.2318307 0.625 0.2318307 0.375 0.2318307
		 0.125 0.2318307 0.375 0.5 0.4375 0.5 0.5 0.5 0.5625 0.5 0.625 0.5 0.875 0.25 0.8125
		 0.25 0.75 0.25 0.6875 0.25 0.625 0.25 0.5625 0.25 0.5 0.25 0.4375 0.25 0.375 0.25
		 0.3125 0.25 0.25 0.25 0.1875 0.25 0.125 0.25 0.4375 0.375 0.4375 0.3125 0.5 0.3125
		 0.5 0.375 0.5625 0.5 0.5625 0.4375 0.625 0.4375 0.625 0.5 0.4375 0.5 0.4375 0.4375
		 0.5 0.4375 0.5 0.5 0.375 0.4375 0.375 0.5 0.375 0.3125 0.375 0.375 0.375 0.25 0.4375
		 0.25 0.5 0.25 0.5625 0.25 0.625 0.25 0.625 0.3125 0.625 0.375 0.625 0.4375 0.375
		 0.4375 0.375 0.375 0.375 0.3125 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375
		 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375
		 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1
		 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25
		 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125
		 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75
		 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0
		 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875
		 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375
		 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375
		 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1
		 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25
		 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125
		 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75
		 0.375 0.75;
	setAttr ".uvst[0].uvsp[1500:1749]" 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0
		 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375
		 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625
		 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375
		 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375
		 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1
		 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25
		 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125
		 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75
		 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.375 0.25
		 0.625 0.25 0.625 0 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875
		 0.25 0.875 0 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375
		 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375
		 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1
		 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.375 0.25 0.625 0.25 0.625
		 0 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0.25 0.875 0 0.125
		 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75
		 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0
		 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875
		 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375
		 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375
		 0 0.375 0.25 0.625 0.25 0.625 0 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1
		 0.625 1 0.875 0.25 0.875 0 0.125 0 0.125 0.25 0.375 0 0.375 0.25 0.625 0.25 0.625
		 0 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0.25 0.875 0 0.125
		 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75
		 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0
		 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875
		 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375
		 0.5;
	setAttr ".uvst[0].uvsp[1750:1993]" 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875
		 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0.2145025 0.5 0.2145025 0.5 0.25 0.375 0.25
		 0.625 0.25 0.625 0.375 0.625 0.5 0.5 0.5 0.375 0.5 0.375 0.375 0.5 0.53549749 0.625
		 0.53549749 0.5 0.97917783 0.40623319 0.96876681 0.4374916 0.9375084 0.46875 0.90625
		 0.5 0.9375 0.625 0.2145025 0.75 0.2145025 0.75 0.25 0.125 0.2145025 0.25 0.2145025
		 0.25 0.25 0.125 0.25 0.375 0.18163793 0.5 0.18163793 0.625 0.18163793 0.75 0.18163793
		 0.5 0.56836206 0.625 0.56836206 0.125 0.18163793 0.25 0.18163793 0.375 0.12490132
		 0.5 0.12490132 0.625 0.12490132 0.75 0.12490132 0.5 0.62509871 0.625 0.62509871 0.125
		 0.12490132 0.25 0.12490132 0.375 0 0.5 0 0.625 0 0.6875 0 0.75 0 0.5 0.75 0.625 0.75
		 0.125 0 0.25 0 0.39582214 0.875 0.40623319 0.78123319 0.4374916 0.8124916 0.41644841
		 0.875 0.60417789 0.875 0.59376681 0.96876681 0.5625084 0.9375084 0.58413053 0.875
		 0.5 0.77082217 0.59376681 0.78123319 0.5625084 0.8124916 0.53125 0.84375 0.5 0.8125
		 0.4375 0.875 0.5 0.875 0.5625 0.875 0.53125 0.90625 0.5 0.9375 0.5 0.875 0.5 0.8125
		 0.53125 0.84375 0.46875 0.84375 0.53125 0.90625 0.38280129 0.875 0.38670197 0.76170194
		 0.39558923 0.77058923 0.38872615 0.875 0.5 0.75780129 0.5 0.76372617 0.613298 0.76170194
		 0.60441077 0.77058923 0.6142363 0.875 0.61719871 0.875 0.613298 0.988298 0.60441077
		 0.97941077 0.5 0.99219871 0.5 0.98627388 0.38670197 0.988298 0.39558923 0.97941077
		 0.375 0.75 0.375 0.875 0.625 0.8125 0.625 0.9375 0.5 1 0.625 1 0.375 1 0.61127388
		 0.875 0.8125 0 0.875 0 0.875 0.12490132 0.875 0.18163793 0.875 0.2145025 0.875 0.25
		 0.375 0.62509871 0.375 0.56836206 0.375 0.53549749 0.5625 0.875 0.625 0.875 0.375
		 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1
		 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25
		 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125
		 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75
		 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.375 0.25
		 0.625 0.25 0.625 0 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875
		 0.25 0.875 0 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375
		 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375
		 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1
		 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25
		 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125
		 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75
		 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.375 0.25
		 0.625 0.25 0.625 0 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875
		 0.25 0.875 0 0.125 0 0.125 0.25 0.40277123 0.22428624 0.40277123 0.22428624 0.40277123
		 0.22428624;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 1563 ".vt";
	setAttr ".vt[0:165]"  3.67886472 2.54297614 2.8405823e-008 3.67886472 2.52813697 -0.093690246
		 3.67886472 2.48507237 -0.17820942 3.67886472 2.4179976 -0.24528436 3.67886472 2.33347821 -0.28834894
		 3.67886472 2.23978806 -0.30318806 3.67886472 2.14609766 -0.28834894 3.67886472 2.061578512 -0.24528436
		 3.67886472 1.9945035 -0.17820953 3.67886472 1.95143902 -0.093690246 3.67886472 1.93659985 1.6766275e-008
		 3.67886472 1.95143902 0.093690298 3.67886472 1.9945035 0.17820953 3.67886472 2.061578512 0.2452845
		 3.67886472 2.14609766 0.28834906 3.67886472 2.23978806 0.30318826 3.67886472 2.33347821 0.28834906
		 3.67886472 2.4179976 0.2452845 3.67886472 2.48507237 0.1782096 3.67886472 2.52813721 0.093690298
		 0.93038666 2.78961563 9.8292383e-018 0.93038666 2.76270509 -0.16990606 0.93038666 2.68460798 -0.32318053
		 0.93038666 2.56296849 -0.44481987 0.93038666 2.40969419 -0.52291715 0.93038666 2.23978806 -0.54982764
		 0.93038666 2.069881916 -0.52291721 0.93038666 1.91660738 -0.44481996 0.93038666 1.79496813 -0.32318065
		 0.93038666 1.71687078 -0.16990614 0.93038666 1.68996024 -2.1108129e-008 0.93038666 1.71687078 0.16990611
		 0.93038666 1.79496801 0.32318065 0.93038666 1.91660738 0.44482005 0.93038666 2.069881916 0.52291733
		 0.93038666 2.23978806 0.54982781 0.93038666 2.40969419 0.52291739 0.93038666 2.56296873 0.44482008
		 0.93038666 2.68460822 0.32318068 0.93038666 2.76270533 0.16990612 0.93038666 2.83388257 9.8292383e-018
		 0.93038666 2.80480552 -0.18358529 0.93038666 2.7204206 -0.34920001 0.93038666 2.58898807 -0.4806326
		 0.93038666 2.42337322 -0.56501746 0.93038666 2.23978806 -0.59409451 0.93038666 2.05620265 -0.56501746
		 0.93038666 1.89058805 -0.4806326 0.93038666 1.75915539 -0.34920001 0.93038666 1.67477047 -0.18358529
		 0.93038666 1.64569342 4.2216257e-008 0.93038666 1.67477047 0.18358538 0.93038666 1.75915539 0.3492001
		 0.93038666 1.89058805 0.48063269 0.93038666 2.05620265 0.56501764 0.93038666 2.23978806 0.59409463
		 0.93038666 2.42337346 0.56501764 0.93038666 2.58898807 0.48063269 0.93038666 2.72042084 0.3492001
		 0.93038666 2.80480576 0.18358533 3.67886472 2.56738615 2.8405823e-008 3.67886472 2.55135226 -0.10123327
		 3.67886472 2.50482035 -0.19255707 3.67886472 2.43234515 -0.26503223 3.67886472 2.3410213 -0.31156427
		 3.67886472 2.23978806 -0.32759812 3.67886472 2.13855481 -0.31156427 3.67886472 2.047230959 -0.26503223
		 3.67886472 1.97475576 -0.19255707 3.67886472 1.92822361 -0.10123327 3.67886472 1.91218984 5.1684857e-008
		 3.67886472 1.92822361 0.10123335 3.67886472 1.97475576 0.19255719 3.67886472 2.047230959 0.26503235
		 3.67886472 2.13855481 0.31156439 3.67886472 2.23978806 0.32759827 3.67886472 2.3410213 0.31156439
		 3.67886472 2.43234515 0.26503235 3.67886472 2.50482035 0.19255719 3.67886472 2.55135226 0.10123332
		 2.18761969 2.59017324 2.5976936e-008 2.18761969 2.57302403 0.10827497 2.18761969 2.52325559 0.20595124
		 2.18761969 2.44573927 0.28346765 2.18761969 2.34806299 0.33323604 2.18761969 2.23978806 0.35038528
		 2.18761969 2.13151312 0.33323622 2.18761969 2.033836842 0.28346765 2.18761969 1.95632041 0.20595124
		 2.18761969 1.90655208 0.10827501 2.18761969 1.88940275 5.0875247e-008 2.18761969 1.90655208 -0.10827491
		 2.18761969 1.95632041 -0.20595117 2.18761969 2.033836842 -0.28346753 2.18761969 2.13151312 -0.33323595
		 2.18761969 2.23978806 -0.35038516 2.18761969 2.34806299 -0.33323595 2.18761969 2.44573927 -0.28346753
		 2.18761969 2.52325559 -0.20595117 2.18761969 2.57302403 -0.10827491 3.18904114 2.48414445 3.7278514e-008
		 3.18904114 2.4721849 -0.075510204 3.18904114 2.4374764 -0.14362893 3.18904114 2.38341689 -0.19768837
		 3.18904114 2.31529832 -0.23239674 3.18904114 2.23978806 -0.24435648 3.18904114 2.16427779 -0.23239674
		 3.18904114 2.096158981 -0.19768837 3.18904114 2.042099476 -0.14362893 3.18904114 2.0073912144 -0.075510204
		 3.18904114 1.99543154 5.4642424e-008 3.18904114 2.0073912144 0.075510293 3.18904114 2.042099476 0.14362903
		 3.18904114 2.096158981 0.19768849 3.18904114 2.16427779 0.23239687 3.18904114 2.23978806 0.2443566
		 3.18904114 2.31529832 0.23239687 3.18904114 2.38341713 0.19768849 3.18904114 2.4374764 0.14362903
		 3.18904114 2.4721849 0.075510263 1.63288939 2.64142418 2.0514104e-008 1.63288939 2.62176681 0.12411242
		 1.63288939 2.56471848 0.23607591 1.63288939 2.47586393 0.32493049 1.63288939 2.36390042 0.38197878
		 1.63288939 2.23978806 0.4016363 1.63288939 2.11567569 0.38197878 1.63288939 2.0037121773 0.32493049
		 1.63288939 1.91485763 0.23607591 1.63288939 1.85780931 0.12411246 1.63288939 1.83815181 4.9054286e-008
		 1.63288939 1.85780931 -0.12411238 1.63288939 1.91485763 -0.2360758 1.63288939 2.0037121773 -0.32493037
		 1.63288939 2.11567569 -0.3819786 1.63288939 2.23978806 -0.40163618 1.63288939 2.36390042 -0.3819786
		 1.63288939 2.47586393 -0.32493037 1.63288939 2.56471848 -0.2360758 1.63288939 2.62176657 -0.12411238
		 2.18761969 2.56406522 2.5976936e-008 2.18761969 2.54819393 0.10020725 2.18761969 2.50213408 0.19060548
		 2.18761969 2.43039346 0.26234603 2.18761969 2.33999538 0.30840603 2.18761969 2.23978806 0.32427725
		 2.18761969 2.13958073 0.30840597 2.18761969 2.049182653 0.262346 2.18761969 1.97744203 0.19060543
		 2.18761969 1.93138206 0.10020724 2.18761969 1.91551077 1.3527825e-008 2.18761969 1.93138218 -0.10020721
		 2.18761969 1.97744203 -0.19060534 2.18761969 2.049182653 -0.26234591 2.18761969 2.13958073 -0.30840588
		 2.18761969 2.23978806 -0.32427716 2.18761969 2.33999515 -0.30840585 2.18761969 2.43039346 -0.26234585
		 2.18761969 2.50213385 -0.19060534 2.18761969 2.54819393 -0.1002072 3.18904114 2.4659369 3.7278514e-008
		 3.18904114 2.45486856 0.069883913 3.18904114 2.42274642 0.13292712 3.18904114 2.37271523 0.1829585
		 3.18904114 2.30967188 0.21508051 3.18904114 2.23978806 0.22614911;
	setAttr ".vt[166:331]" 3.18904114 2.16990423 0.21508051 3.18904114 2.10686088 0.1829585
		 3.18904114 2.056829453 0.13292708 3.18904114 2.024707556 0.069883898 3.18904114 2.013638973 2.859654e-008
		 3.18904114 2.024707556 -0.069883838 3.18904114 2.056829453 -0.13292705 3.18904114 2.10686111 -0.18295838
		 3.18904114 2.16990423 -0.2150804 3.18904114 2.23978806 -0.22614895 3.18904114 2.30967188 -0.2150804
		 3.18904114 2.372715 -0.18295838 3.18904114 2.42274642 -0.13292696 3.18904114 2.45486832 -0.069883831
		 1.63288939 2.6114974 2.0514104e-008 1.63288939 2.59330487 -0.11486453 1.63288939 2.54050732 -0.21848539
		 1.63288939 2.45827341 -0.30071926 1.63288939 2.35465264 -0.35351688 1.63288939 2.23978806 -0.37170959
		 1.63288939 2.12492347 -0.35351688 1.63288939 2.021302462 -0.30071935 1.63288939 1.93906868 -0.21848544
		 1.63288939 1.886271 -0.11486459 1.63288939 1.86807835 6.2439853e-009 1.63288939 1.886271 0.11486459
		 1.63288939 1.93906856 0.2184855 1.63288939 2.021302462 0.30071944 1.63288939 2.12492347 0.35351703
		 1.63288939 2.23978806 0.3717097 1.63288939 2.35465264 0.35351703 1.63288939 2.45827365 0.3007195
		 1.63288939 2.54050756 0.2184855 1.63288939 2.59330487 0.1148646 2.81854463 2.52489901 3.2934512e-008
		 2.81854463 2.5109446 0.088104062 2.81854463 2.47044754 0.16758393 2.81854463 2.407372 0.23065957
		 2.81854463 2.32789207 0.27115655 2.81854463 2.23978806 0.28511101 2.81854463 2.15168405 0.27115661
		 2.81854463 2.072204113 0.23065957 2.81854463 2.0091285706 0.16758393 2.81854463 1.96863151 0.088104121
		 2.81854463 1.9546771 5.319443e-008 2.81854463 1.96863151 -0.088104039 2.81854463 2.0091285706 -0.16758385
		 2.81854463 2.072204113 -0.23065946 2.81854463 2.15168405 -0.27115643 2.81854463 2.23978806 -0.28511089
		 2.81854463 2.32789207 -0.27115643 2.81854463 2.407372 -0.23065946 2.81854463 2.47044754 -0.16758385
		 2.81854463 2.51094437 -0.088104039 2.81854463 2.50365472 3.2934512e-008 2.81854463 2.49074006 -0.081539266
		 2.81854463 2.45326066 -0.1550969 2.81854463 2.39488506 -0.21347265 2.81854463 2.32132721 -0.25095204
		 2.81854463 2.23978806 -0.26386663 2.81854463 2.15824866 -0.25095204 2.81854463 2.084691048 -0.21347266
		 2.81854463 2.026315212 -0.15509695 2.81854463 1.98883593 -0.081539273 2.81854463 1.97592127 2.2804562e-008
		 2.81854463 1.98883593 0.081539303 2.81854463 2.026315212 0.15509702 2.81854463 2.084691048 0.21347277
		 2.81854463 2.15824866 0.25095218 2.81854463 2.23978806 0.26386681 2.81854463 2.32132745 0.25095218
		 2.81854463 2.39488506 0.2134728 2.81854463 2.45326066 0.15509704 2.81854463 2.4907403 0.081539311
		 -0.82411802 0.9351539 0.31327865 -0.68965065 0.9351539 0.53571612 -0.49302739 0.9351539 0.70571387
		 -0.27829331 0.9351539 0.46517384 0.0054982305 0.9351539 0.82859039 0.25860149 0.9351539 0.76944113
		 0.48103893 0.9351539 0.63497359 0.65103668 0.9351539 0.43835029 0.75195414 0.9351539 0.19881842
		 0.7739132 0.9351539 -0.060175173 0.71476382 0.9351539 -0.31327835 0.5802964 0.9351539 -0.5357157
		 0.38367319 0.9351539 -0.70571345 0.14414132 0.9351539 -0.80663091 -0.11485223 0.9351539 -0.82858992
		 -0.36795539 0.9351539 -0.76944059 -0.59039277 0.9351539 -0.63497323 -0.76039046 0.9351539 -0.43835008
		 -0.86130798 0.9351539 -0.19881822 -0.88326699 0.9351539 0.060175303 -0.95251882 1.45086527 0.36555704
		 -0.80615574 1.45086527 0.47992882 -0.56067556 1.45086527 0.89923549 -0.30255654 1.45086527 0.72253191
		 0.015539952 1.45086527 0.96686143 0.31087995 1.45086527 0.89784163 0.57043654 1.45086527 0.74093473
		 0.7688027 1.45086527 0.51150006 0.88656086 1.45086527 0.23199621 0.912184 1.45086527 -0.070216939
		 0.84316438 1.45086527 -0.36555678 0.68625754 1.45086527 -0.62511343 0.45682293 1.45086527 -0.82347947
		 0.17731914 1.45086527 -0.94123769 -0.12489399 1.45086527 -0.96686089 -0.42023379 1.45086527 -0.89784116
		 -0.67979038 1.45086527 -0.74093431 -0.87815654 1.45086527 -0.51149982 -0.9959147 1.45086527 -0.23199609
		 -1.0215379 1.45086527 0.070217006 -1.12368429 2.59814358 0.43524712 -0.9368645 2.59814358 0.744286
		 -0.66369015 2.59814358 0.98046875 -0.33808124 2.59814358 1.021811843 0.021746241 2.59814358 1.052320004
		 0.37339002 2.59814358 0.97014219 0.68960881 2.59814358 0.88218707 0.92579144 2.59814358 0.6090129
		 1.06599915 2.59814358 0.2762242 1.096507192 2.59814358 -0.083603188 1.014329553 2.59814358 -0.43524691
		 0.82835972 2.59814358 -0.73258346 0.55983734 2.59814334 -0.90471303 0.24208216 2.59814358 -0.83791637
		 -0.10693468 2.59814358 -0.71956784 -0.47472817 2.59814358 -0.85976779 -0.79896265 2.59814358 -0.88218677
		 -1.035145283 2.59814358 -0.60901272 -1.17535317 2.59814358 -0.27622408 -1.20586121 2.59814358 0.083603211
		 -0.90117651 2.87267995 0.3446531 -0.75324243 2.87267995 0.58936733 -0.53692758 2.87267995 0.77639025
		 -0.27340686 2.87267995 0.88741457 0.011524692 2.87267995 0.91157258 0.28997594 2.87267995 0.84649962
		 0.53469008 2.87267995 0.69856536 0.72171295 2.87267995 0.48225054 0.83273721 2.87267995 0.21872982
		 0.85689527 2.87267995 -0.066201642 0.79182231 2.87267995 -0.34465286 0.64388818 2.87267995 -0.58936685
		 0.42757344 2.87267995 -0.77638984 0.16405277 2.87267995 -0.8874141 -0.12087872 2.87267995 -0.91157222
		 -0.39932984 2.87267995 -0.8464992 -0.6440438 2.87267995 -0.69856501 -0.83106667 2.87267995 -0.48225027
		 -0.94209105 2.87267995 -0.21872967 -0.96624911 2.87267995 0.066201761 -0.48411399 3.10501146 0.17484586
		 -0.40906519 3.10501146 0.29899082 -0.2993263 3.10501146 0.39386958 -0.16564074 3.10501146 0.45019379
		 -0.021092165 3.10501146 0.46245006 0.12016876 3.10501146 0.42943725 0.2443137 3.10501146 0.35438845
		 0.33919251 3.10501146 0.2446496 0.39551669 3.10501146 0.11096375 0.40777296 3.10501146 -0.033584677
		 0.37476021 3.10501146 -0.17484562 0.29971141 3.10501146 -0.29899043;
	setAttr ".vt[332:497]" 0.18997249 3.10501146 -0.39386919 0.056286693 3.10501146 -0.45019338
		 -0.088261746 3.10501146 -0.46244961 -0.22952262 3.10501146 -0.42943686 -0.3536675 3.10501146 -0.35438806
		 -0.44854635 3.10501146 -0.2446492 -0.50487053 3.10501146 -0.11096357 -0.5171268 3.10501146 0.033584919
		 -0.49349713 3.14230585 0.1786665 -0.4168089 3.14230585 0.30552495 -0.30467325 3.14230585 0.40247577
		 -0.16806553 3.14230585 0.46003056 -0.02035841 3.14230585 0.47255355 0.12398939 3.14230585 0.43882036
		 0.2508477 3.14230585 0.36213166 0.34779847 3.14230585 0.24999619 0.40535337 3.14230585 0.11338858
		 0.41787624 3.14230585 -0.034318414 0.38414329 3.14230585 -0.17866626 0.30745453 3.14230585 -0.30552456
		 0.19531904 3.14230585 -0.40247527 0.058711514 3.14230585 -0.46003014 -0.088995501 3.14230585 -0.47255313
		 -0.23334326 3.14230585 -0.43881997 -0.36020148 3.14230585 -0.3621313 -0.45715237 3.14230585 -0.24999595
		 -0.51470721 3.14230585 -0.11338842 -0.52723008 3.14230585 0.034318656 -0.50288093 3.10501146 0.18248698
		 -0.42455232 3.10501146 0.31205761 -0.3100183 3.10501146 0.41108227 -0.17049021 3.10501146 0.46986759
		 -0.01962452 3.10501146 0.48265895 0.12780987 3.10501146 0.44820395 0.25738055 3.10501146 0.3698757
		 0.35640514 3.10501146 0.25534162 0.41519034 3.10501146 0.11581291 0.42798179 3.10501146 -0.035052314
		 0.39352673 3.10501146 -0.18248674 0.31519854 3.10501146 -0.31205723 0.20066454 3.10501146 -0.41108185
		 0.061135828 3.10501146 -0.46986714 -0.089729384 3.10501146 -0.48265851 -0.23716375 3.10501146 -0.44820353
		 -0.36673433 3.10501146 -0.36987528 -0.46575892 3.10501146 -0.25534123 -0.52454418 3.10501146 -0.11581302
		 -0.53733557 3.10501146 0.035052557 -0.97295523 2.87267995 0.37387779 -0.81247675 2.87267995 0.63934237
		 -0.57781976 2.87267995 0.8422237 -0.29195398 2.87267995 0.96266222 0.017138235 2.87267995 0.98886901
		 0.31920058 2.87267995 0.91827792 0.58466512 2.87267995 0.7577998 0.78754652 2.87267995 0.5231427
		 0.90798491 2.87267995 0.23727694 0.93419164 2.87267995 -0.071815193 0.86360067 2.87267995 -0.37387753
		 0.70312256 2.87267995 -0.63934195 0.46846551 2.87267995 -0.84222317 0.18259986 2.87267995 -0.96266174
		 -0.12649225 2.87267995 -0.98886847 -0.42855448 2.87267995 -0.91827744 -0.69401902 2.87267995 -0.75779927
		 -0.8969003 2.87267995 -0.52314246 -1.017338753 2.87267995 -0.23727673 -1.043545485 2.87267995 0.071815297
		 -1.250471 2.59814358 0.48686844 -1.041493893 2.59814358 0.83255988 -0.73592031 2.59814358 1.096754789
		 -0.37084204 2.59814358 1.15472662 0.031661786 2.59814358 1.18885314 0.4250114 2.59814358 1.096928954
		 0.7778827 2.59814358 0.98681653 1.042077303 2.59814358 0.68124318 1.19891393 2.59814358 0.30898499
		 1.23304057 2.59814358 -0.093518741 1.14111626 2.59814358 -0.4868682 0.93298906 2.59814358 -0.82085741
		 0.63291746 2.59814334 -1.0092967749 0.27510959 2.59814358 -0.96715951 -0.12973943 2.59814358 -1.033580422
		 -0.52608281 2.59814358 -0.9828828 -0.88723654 2.59814358 -0.98681629 -1.15143132 2.59814358 -0.681243
		 -1.30826807 2.59814358 -0.30898494 -1.34239447 2.59814358 0.093518749 -1.079017758 1.45086527 0.41706118
		 -0.91054761 1.45086527 0.56800246 -0.63274199 1.45086539 1.015257359 -0.31693673 1.45086539 1.10721505
		 0.025432982 1.45086527 1.10308456 0.36238402 1.45086527 1.02434051 0.65851015 1.45086527 0.84532654
		 0.88482434 1.45086527 0.58356643 1.019173861 1.45086527 0.26468268 1.048407197 1.45086527 -0.080109961
		 0.9696632 1.45086527 -0.41706091 0.79064929 1.45086527 -0.71318698 0.5288893 1.45086527 -0.93950123
		 0.21000563 1.45086527 -1.07385087 -0.13478702 1.45086527 -1.10308409 -0.47088802 1.45086527 -1.012637973
		 -0.76786393 1.45086527 -0.84532619 -0.99417818 1.45086527 -0.58356625 -1.12852776 1.45086527 -0.26468256
		 -1.16494107 1.45086527 -0.018754803 -0.93852001 0.9351539 0.35985744 -0.78405964 0.9351539 0.61536735
		 -0.55347019 0.9351539 0.87579864 -0.28336817 0.9351539 0.92226636 0.014445201 0.9351539 0.95178676
		 0.30518031 0.9351539 0.88384289 0.5606901 0.9351539 0.72938246 0.75596339 0.9351539 0.50352514
		 0.87188536 0.9351539 0.22837912 0.89710933 0.9351539 -0.069122128 0.82916552 0.9351539 -0.3598572
		 0.67470533 0.9351539 -0.61536688 0.44884795 0.9351539 -0.81064028 0.17370199 0.9351539 -0.92656231
		 -0.1237992 0.9351539 -0.95178622 -0.41453421 0.9351539 -0.88384235 -0.67004395 0.9351539 -0.72938204
		 -0.86531711 0.9351539 -0.50352478 -0.9812392 0.9351539 -0.22837892 -1.0064631701 0.9351539 0.069122255
		 -0.80649704 -0.46874994 0.30610421 -0.67510885 -0.46874994 0.52344757 -0.4829886 -0.46874994 0.68955219
		 -0.2489422 -0.46874994 0.78815883 0.0041201636 -0.46874994 0.80961466 0.25142705 -0.46874994 0.75182009
		 0.46877038 -0.46874994 0.62043184 0.63487488 -0.46874994 0.42831165 0.73348141 -0.46874994 0.19426526
		 0.75493729 -0.46874994 -0.058797039 0.69714278 -0.46874994 -0.30610389 0.56575459 -0.46874994 -0.52344716
		 0.37124532 -0.38601202 -0.72244972 0.1373266 -0.36593324 -0.81929916 -0.11569171 -0.35901445 -0.84014952
		 -0.36304247 -0.36593324 -0.78296053 -0.5805133 -0.38601226 -0.65332949 -0.7442286 -0.46874994 -0.42831132
		 -0.84283519 -0.46874994 -0.19426505 -0.86429113 -0.46874994 0.05879724 -0.80726206 -0.76767439 0.19728017
		 -0.67733371 -0.80671829 0.40920243 -0.47903883 -0.69798476 0.68319327 -0.24715073 -0.69798476 0.78089046
		 0.0035779551 -0.69798476 0.80214858 0.24860425 -0.69798476 0.74488688 0.4639433 -0.69798476 0.61471033
		 0.62851596 -0.69798476 0.42436182 0.7262131 -0.69798476 0.19247383 0.74747139 -0.69798476 -0.058254838
		 0.69020957 -0.69798476 -0.30328107 0.56003308 -0.69798476 -0.51862007 0.36298168 -0.61108416 -0.77549034
		 0.13122015 -0.59119028 -0.87144661 -0.11946489 -0.58433527 -0.89210486 -0.36453462 -0.59119028 -0.83544308
		 -0.58000004 -0.61108416 -0.70700759 -0.7378698 -0.69798476 -0.42436153;
	setAttr ".vt[498:663]" -0.84271502 -0.6811133 -0.29089957 -0.86424816 -0.72439378 -0.043958593
		 -1.010214806 -1.50174665 0.38904798 -0.84322506 -1.50174665 0.66528392 -0.59904647 -1.50174665 0.87639749
		 -0.3015815 -1.50174665 1.0017226934 0.02005215 -1.50174665 1.028992653 0.33437079 -1.50174665 0.9555375
		 0.61060667 -1.50174665 0.78854769 0.82171994 -1.50174665 0.54436934 0.94704527 -1.50174665 0.24690446
		 0.97431523 -1.50174665 -0.0747291 0.90086007 -1.50174665 -0.38904765 0.73387039 -1.50174665 -0.66528344
		 0.45590937 -1.50174665 -1.34157324 0.15844458 -1.50174665 -1.46689844 -0.16318899 -1.50174665 -1.4941684
		 -0.47750741 -1.50174665 -1.42071319 -0.75374329 -1.50174665 -1.25372362 -0.96485651 -1.50174665 -1.0095456839
		 -1.056399226 -1.50174665 -0.24690431 -1.083669066 -1.50174665 0.074729227 -1.12404656 -1.78273487 0.4353947
		 -0.93716353 -1.78273487 0.74453831 -0.65543389 -1.78273487 0.99600536 -0.33099496 -1.78273487 1.12105632
		 0.028954491 -1.78273487 1.15157473 0.38071758 -1.78273487 1.069369078 0.68986106 -1.78273487 0.88248628
		 0.92612392 -1.78273487 0.60921937 1.06637907 -1.78273487 0.27631781 1.096897483 -1.78273487 -0.083631508
		 1.01469183 -1.78273487 -0.43539447 0.82780898 -1.78273487 -0.74453795 0.51456386 -1.78273487 -1.53128779
		 0.18166237 -1.78273487 -1.671543 -0.17828694 -1.78273487 -1.70206118 -0.53004986 -1.78273487 -1.61985552
		 -0.83919322 -1.78273487 -1.43297303 -1.075456262 -1.78273487 -1.15970612 -1.17573297 -1.78273487 -0.27631772
		 -1.20625126 -1.78273487 0.083631568 -1.10165906 -1.87171507 0.42627954 -0.91868842 -1.87171507 0.7289511
		 -0.6651473 -1.87171507 0.94478911 -0.3315323 -1.87171507 1.072941184 0.027203657 -1.87171507 1.12746632
		 0.37160242 -1.87171507 1.046981812 0.67427379 -1.87171507 0.86401093 0.90559036 -1.87171507 0.59646511
		 1.042909503 -1.87171507 0.27053308 1.072788835 -1.87171507 -0.081880651 0.9923045 -1.87171507 -0.42627931
		 0.80933374 -1.87171507 -0.72895068 0.50180954 -1.87171507 -1.51075423 0.17587753 -1.87171507 -1.64807343
		 -0.17653611 -1.87171507 -1.67795289 -0.52093464 -1.87171507 -1.59746826 -0.82360595 -1.87171507 -1.41449761
		 -1.0549227 -1.87171507 -1.14695191 -1.1522634 -1.87171507 -0.27053288 -1.18214285 -1.87171507 0.081880718
		 -1.079271197 -1.78273487 0.41716442 -0.90021306 -1.78273487 0.71336395 -0.6593346 -1.78273487 0.89637148
		 -0.31942528 -1.78273487 1.074117184 0.0254528 -1.78273487 1.10335779 0.36248732 -1.78273487 1.024594307
		 0.6586867 -1.78273487 0.84553617 0.88505727 -1.78273487 0.58371085 1.019439936 -1.78273487 0.26474828
		 1.048680305 -1.78273487 -0.080129802 0.96991712 -1.78273487 -0.41716418 0.79085892 -1.78273487 -0.71336353
		 0.48905534 -1.78273487 -1.49022102 0.17009281 -1.78273487 -1.62460363 -0.17478526 -1.78273487 -1.65384436
		 -0.5118196 -1.78273487 -1.57508075 -0.8080188 -1.78273487 -1.3960228 -1.034389496 -1.78273487 -1.13419759
		 -1.1300354 -1.78273487 -0.2818439 -1.15803421 -1.78273487 0.080129862 -0.93552345 -1.50174713 0.35863742
		 -0.78158683 -1.50174713 0.61328101 -0.55649501 -1.50174713 0.80789238 -0.28228188 -1.50174713 0.92342144
		 0.014210813 -1.50174713 0.9485597 0.30396032 -1.50174713 0.88084644 0.5586037 -1.50174713 0.72690964
		 0.75321513 -1.50174713 0.50181782 0.86874419 -1.50174713 0.22760485 0.89388245 -1.50174713 -0.068887785
		 0.82616919 -1.50174713 -0.35863721 0.67223245 -1.50174713 -0.61328053 0.41335785 -1.50174713 -1.27306807
		 0.13914491 -1.50174713 -1.38859737 -0.15734765 -1.50174713 -1.41373539 -0.447097 -1.50174713 -1.34602213
		 -0.70174038 -1.50174713 -1.19208562 -0.89635175 -1.50174713 -0.96699417 -0.9793396 -1.50174713 -0.24470037
		 -1.0032362938 -1.50174713 0.068887904 -0.72825462 -0.76308566 0.16552565 -0.61210215 -0.79798979 0.35497829
		 -0.43404496 -0.69798499 0.6107561 -0.22674328 -0.69798499 0.69809473 -0.0025986508 -0.69798499 0.71709913
		 0.2164482 -0.69798499 0.66590858 0.40895528 -0.69798499 0.54953432 0.55607891 -0.69798499 0.37936795
		 0.64341754 -0.69798499 0.17206639 0.66242176 -0.69798499 -0.052078225 0.61123139 -0.69798499 -0.27112499
		 0.49485713 -0.69798499 -0.46363217 0.32469082 -0.69798499 -0.61075568 0.11072297 -0.60531372 -0.78988695
		 -0.1067553 -0.69798499 -0.71709859 -0.32580203 -0.69798499 -0.66590804 -0.51830918 -0.69798499 -0.5495339
		 -0.67238808 -0.65079838 -0.47514072 -0.75994855 -0.68570262 -0.27089378 -0.77919871 -0.72439402 -0.050135233
		 -0.71365237 -0.46875018 0.2683025 -0.59848976 -0.46875018 0.45880544 -0.43009514 -0.46875018 0.60439724
		 -0.2249518 -0.46875018 0.69082654 -0.0031408668 -0.46875018 0.70963299 0.21362539 -0.46875018 0.65897542
		 0.40412825 -0.46875018 0.54381293 0.54972005 -0.46875018 0.37541816 0.63614923 -0.46875018 0.17027488
		 0.65495557 -0.46875018 -0.051536001 0.60429817 -0.46875018 -0.26830217 0.48913574 -0.46875018 -0.45880505
		 0.320741 -0.46875018 -0.6043967 0.11323071 -0.38253623 -0.72341985 -0.10854164 -0.37647182 -0.74169576
		 -0.32534629 -0.38253623 -0.69156879 -0.51596099 -0.40013558 -0.57794648 -0.65907383 -0.46875018 -0.37541786
		 -0.74550301 -0.46875018 -0.17027466 -0.76430947 -0.46875018 0.051536206 -0.83347386 0.2354902 0.31708789
		 -0.89334184 0.2354902 0.060907003 -0.87111586 0.2354902 -0.20123568 -0.76897126 0.2354902 -0.44368005
		 -0.5969066 0.2354902 -0.64269388 -0.3717646 0.2354902 -0.77879632 -0.11558388 0.2354902 -0.83866483
		 0.14655881 0.2354902 -0.81643897 0.38900322 0.2354902 -0.71429437 0.58801711 0.2354902 -0.54222959
		 0.7241196 0.2354902 -0.31708759 0.78398812 0.2354902 -0.06090682 0.76176214 0.2354902 0.20123594
		 0.65961748 0.2354902 0.44368035 0.48755282 0.2354902 0.64269423 0.26241076 0.2354902 0.77879679
		 0.0062299296 0.2354902 0.83866531 -0.25609761 0.2354902 0.81389558 -0.49555558 0.2354902 0.75287491
		 -0.69737136 0.2354902 0.54223001 -0.82027203 -0.10914809 0.31171274 -0.68647671 -0.10914809 0.53303832
		 -0.48940557 -0.10914803 0.72188634 -0.25259596 -0.10914809 0.80130064;
	setAttr ".vt[664:829]" 0.0051974654 -0.10914809 0.82444865 0.25703561 -0.10914809 0.76559508
		 0.47836119 -0.10914809 0.63179964 0.6475091 -0.10914809 0.43615925 0.74792218 -0.10914809 0.19782466
		 0.7697714 -0.10914809 -0.059874348 0.71091771 -0.10914809 -0.31171241 0.57712245 -0.10914809 -0.53303784
		 0.38148212 -0.10914809 -0.70218587 0.14314753 -0.10914809 -0.80259901 -0.11455142 -0.10914809 -0.82444811
		 -0.36638939 -0.10914809 -0.76559454 -0.58771491 -0.10914809 -0.63179922 -0.75686282 -0.10914809 -0.43615896
		 -0.85727596 -0.10914809 -0.1978244 -0.87912506 -0.10914809 0.059874531 -0.88866711 -1.24400306 0.29916599
		 -0.93794763 -1.17725992 0.064146437 -0.91453958 -1.17725992 -0.21193877 -0.82991785 -1.17725992 -0.78336972
		 -0.64870167 -1.17725992 -0.99296838 -0.41158515 -1.17725992 -1.13630962 -0.14177908 -1.17725992 -1.1993624
		 0.13430609 -1.17725992 -1.17595434 0.38964528 -1.17725992 -1.068377018 0.62219971 -1.17725992 -0.57106888
		 0.76554108 -1.17725992 -0.3339524 0.82859379 -1.17725992 -0.06414625 0.80518568 -1.17725992 0.21193896
		 0.69760847 -1.17725992 0.46727812 0.51639217 -1.17725992 0.67687696 0.27927554 -1.17725992 0.82021838
		 0.0094693527 -1.17725992 0.88327116 -0.26661596 -1.17725992 0.8598631 -0.52195519 -1.17725992 0.75228578
		 -0.77911168 -1.27138376 0.60386515 -0.83361769 2.37628651 -0.39809164 0.83361769 2.37628651 -0.39809164
		 -0.76635128 5.022446156 -0.39809164 0.73580736 5.040658951 -0.43072087 -0.76635128 5.022446156 -0.56111383
		 0.76843876 5.058582306 -0.47120532 -0.83361769 2.37628651 -0.56111383 0.83361769 2.37628651 -0.56111383
		 -0.83361769 4.83879328 -0.39809164 0.83361769 4.83879328 -0.39809164 0.83882391 4.83879519 -0.56111383
		 -0.83361769 4.83879519 -0.56111383 -0.43179798 2.37628651 -0.72944903 -0.43179798 2.37628651 -1.020475626
		 -0.53767574 4.83879519 -0.83778977 -0.64841288 5.1211133 -0.56111383 -0.64841288 5.1211133 -0.39809164
		 -0.64841288 4.83879328 -0.39809164 0.64582217 4.83879519 -0.69810963 0.49246788 2.37628651 -1.020475626
		 0.49246788 2.37628651 -0.72944903 0.64582217 4.83879328 -0.39809164 0.64582217 5.1211133 -0.39809164
		 0.64582217 5.1211133 -0.56111383 -0.83361769 2.71975231 -0.39809164 -0.43179798 2.71975231 -0.72944903
		 0.49246788 2.71975231 -0.72944903 0.83361769 2.71975231 -0.39809164 0.85620672 2.71975231 -0.56111383
		 0.49246788 2.71975231 -1.064021707 -0.43179798 2.71975231 -1.064021707 -0.83361769 2.71975231 -0.56111383
		 0.49246788 2.71975231 -0.72944903 0.64582217 4.83879328 -0.39809164 0.83361769 2.71975231 -0.39809164
		 0.83361769 4.83879328 -0.39809164 0.49246788 2.71975231 -0.72944903 0.64582217 4.83879328 -0.39809164
		 0.83259422 2.69063711 -0.41319707 0.83361769 4.83879328 -0.39809164 -0.64841288 5.1211133 0.65247852
		 -0.64841288 4.83879328 0.65247852 0.64582217 4.83879328 0.65247852 0.64582217 5.1211133 0.65247852
		 -0.83361769 2.71975231 0.65247852 -0.43179798 2.71975231 0.32112122 -0.64841288 4.83879328 0.65247852
		 -0.83361769 4.83879328 0.65247852 0.66558307 2.71975231 0.32112122 0.64582217 4.83879328 0.65247852
		 0.85337847 2.71975231 0.32112122 0.83361769 4.83879328 0.65247852 1.094910145 3.77927399 -0.56111383
		 1.072321177 3.77927327 -0.39809164 1.0067328215 3.77927327 0.65247852 0.81893742 3.77927327 0.65247852
		 0.49246788 3.77927327 -0.72944903 -0.76848745 3.77927327 -0.72944903 -0.84580564 3.77927327 0.65247852
		 -1.031010509 3.77927327 0.65247852 -1.031010509 3.77927327 -0.39809164 -1.031010509 3.77927399 -0.56111383
		 -0.43179798 3.77927399 -1.019628167 0.49246788 3.77927399 -1.019628167 1.071297765 3.76148176 -0.41319707
		 -0.83361769 4.83879328 -0.39809164 -0.64841288 4.83879328 -0.39809164 -0.64841288 5.1211133 -0.39809164
		 -0.76635128 5.022446156 -0.39809164 -0.83361769 4.83879328 0.64439565 -0.64841288 4.83879328 0.64439565
		 -0.64841288 5.1211133 0.64439565 -0.76635128 5.022446156 0.64439565 0.64744395 4.83839846 0.65691125
		 0.64744395 5.12071848 0.65691125 0.83523941 4.83839846 0.65691125 0.73742908 5.04026413 0.624282
		 -3.75145173 1.93659997 2.8405823e-008 -3.75145173 1.95143914 -0.093690246 -3.75145173 1.99450374 -0.17820942
		 -3.75145173 2.061578512 -0.24528436 -3.75145173 2.1460979 -0.28834894 -3.75145173 2.23978806 -0.30318806
		 -3.75145173 2.33347845 -0.28834894 -3.75145173 2.4179976 -0.24528436 -3.75145173 2.48507261 -0.17820953
		 -3.75145173 2.52813721 -0.093690246 -3.75145173 2.54297614 1.6766275e-008 -3.75145173 2.52813721 0.093690298
		 -3.75145173 2.48507261 0.17820953 -3.75145173 2.4179976 0.2452845 -3.75145173 2.33347845 0.28834906
		 -3.75145173 2.23978806 0.30318826 -3.75145173 2.1460979 0.28834906 -3.75145173 2.061578512 0.2452845
		 -3.75145173 1.99450362 0.1782096 -3.75145173 1.95143902 0.093690298 -1.0029736757 1.68996048 9.8292383e-018
		 -1.0029736757 1.71687102 -0.16990606 -1.0029736757 1.79496813 -0.32318053 -1.0029736757 1.9166075 -0.44481987
		 -1.0029736757 2.069881916 -0.52291715 -1.0029736757 2.23978806 -0.54982764 -1.0029736757 2.40969419 -0.52291721
		 -1.0029736757 2.56296873 -0.44481996 -1.0029736757 2.68460798 -0.32318065 -1.0029736757 2.76270533 -0.16990614
		 -1.0029736757 2.78961587 -2.1108129e-008 -1.0029736757 2.76270533 0.16990611 -1.0029736757 2.68460798 0.32318065
		 -1.0029736757 2.56296873 0.44482005 -1.0029736757 2.40969419 0.52291733 -1.0029736757 2.23978806 0.54982781
		 -1.0029736757 2.069881916 0.52291739 -1.0029736757 1.91660738 0.44482008 -1.0029736757 1.79496789 0.32318068
		 -1.0029736757 1.71687067 0.16990612 -1.0029736757 1.64569354 9.8292383e-018 -1.0029736757 1.67477059 -0.18358529
		 -1.0029736757 1.75915551 -0.34920001 -1.0029736757 1.89058805 -0.4806326 -1.0029736757 2.056202888 -0.56501746
		 -1.0029736757 2.23978806 -0.59409451 -1.0029736757 2.42337346 -0.56501746 -1.0029736757 2.58898807 -0.4806326
		 -1.0029736757 2.7204206 -0.34920001 -1.0029736757 2.80480576 -0.18358529 -1.0029736757 2.83388281 4.2216257e-008
		 -1.0029736757 2.80480576 0.18358538 -1.0029736757 2.7204206 0.3492001;
	setAttr ".vt[830:995]" -1.0029736757 2.58898807 0.48063269 -1.0029736757 2.42337346 0.56501764
		 -1.0029736757 2.23978806 0.59409463 -1.0029736757 2.05620265 0.56501764 -1.0029736757 1.89058793 0.48063269
		 -1.0029736757 1.75915527 0.3492001 -1.0029736757 1.67477036 0.18358533 -3.75145173 1.91218996 2.8405823e-008
		 -3.75145173 1.92822385 -0.10123327 -3.75145173 1.97475576 -0.19255707 -3.75145173 2.047230959 -0.26503223
		 -3.75145173 2.13855481 -0.31156427 -3.75145173 2.23978806 -0.32759812 -3.75145173 2.3410213 -0.31156427
		 -3.75145173 2.43234515 -0.26503223 -3.75145173 2.50482035 -0.19255707 -3.75145173 2.5513525 -0.10123327
		 -3.75145173 2.56738615 5.1684857e-008 -3.75145173 2.5513525 0.10123335 -3.75145173 2.50482035 0.19255719
		 -3.75145173 2.43234515 0.26503235 -3.75145173 2.3410213 0.31156439 -3.75145173 2.23978806 0.32759827
		 -3.75145173 2.13855481 0.31156439 -3.75145173 2.047230959 0.26503235 -3.75145173 1.97475576 0.19255719
		 -3.75145173 1.92822385 0.10123332 -2.2602067 1.88940287 2.5976936e-008 -2.2602067 1.90655208 0.10827497
		 -2.2602067 1.95632052 0.20595124 -2.2602067 2.033836842 0.28346765 -2.2602067 2.13151312 0.33323604
		 -2.2602067 2.23978806 0.35038528 -2.2602067 2.34806299 0.33323622 -2.2602067 2.44573927 0.28346765
		 -2.2602067 2.52325559 0.20595124 -2.2602067 2.57302403 0.10827501 -2.2602067 2.59017324 5.0875247e-008
		 -2.2602067 2.57302403 -0.10827491 -2.2602067 2.52325559 -0.20595117 -2.2602067 2.44573927 -0.28346753
		 -2.2602067 2.34806299 -0.33323595 -2.2602067 2.23978806 -0.35038516 -2.2602067 2.13151312 -0.33323595
		 -2.2602067 2.033836842 -0.28346753 -2.2602067 1.95632052 -0.20595117 -2.2602067 1.9065522 -0.10827491
		 -3.26162815 1.99543166 3.7278514e-008 -3.26162815 2.0073912144 -0.075510204 -3.26162815 2.042099714 -0.14362893
		 -3.26162815 2.09615922 -0.19768837 -3.26162815 2.16427779 -0.23239674 -3.26162815 2.23978806 -0.24435648
		 -3.26162815 2.31529832 -0.23239674 -3.26162815 2.38341713 -0.19768837 -3.26162815 2.43747663 -0.14362893
		 -3.26162815 2.4721849 -0.075510204 -3.26162815 2.48414469 5.4642424e-008 -3.26162815 2.4721849 0.075510293
		 -3.26162815 2.43747663 0.14362903 -3.26162815 2.38341713 0.19768849 -3.26162815 2.31529832 0.23239687
		 -3.26162815 2.23978806 0.2443566 -3.26162815 2.16427779 0.23239687 -3.26162815 2.096158981 0.19768849
		 -3.26162815 2.042099714 0.14362903 -3.26162815 2.0073912144 0.075510263 -1.7054764 1.83815193 2.0514104e-008
		 -1.7054764 1.85780931 0.12411242 -1.7054764 1.91485763 0.23607591 -1.7054764 2.0037121773 0.32493049
		 -1.7054764 2.11567569 0.38197878 -1.7054764 2.23978806 0.4016363 -1.7054764 2.36390042 0.38197878
		 -1.7054764 2.47586393 0.32493049 -1.7054764 2.56471848 0.23607591 -1.7054764 2.62176681 0.12411246
		 -1.7054764 2.64142442 4.9054286e-008 -1.7054764 2.62176681 -0.12411238 -1.7054764 2.56471848 -0.2360758
		 -1.7054764 2.47586393 -0.32493037 -1.7054764 2.36390042 -0.3819786 -1.7054764 2.23978806 -0.40163618
		 -1.7054764 2.11567569 -0.3819786 -1.7054764 2.0037121773 -0.32493037 -1.7054764 1.91485763 -0.2360758
		 -1.7054764 1.85780942 -0.12411238 -2.2602067 1.91551089 2.5976936e-008 -2.2602067 1.93138206 0.10020725
		 -2.2602067 1.97744215 0.19060548 -2.2602067 2.049182653 0.26234603 -2.2602067 2.13958073 0.30840603
		 -2.2602067 2.23978806 0.32427725 -2.2602067 2.33999538 0.30840597 -2.2602067 2.43039346 0.262346
		 -2.2602067 2.50213408 0.19060543 -2.2602067 2.54819393 0.10020724 -2.2602067 2.56406522 1.3527825e-008
		 -2.2602067 2.54819393 -0.10020721 -2.2602067 2.50213408 -0.19060534 -2.2602067 2.43039346 -0.26234591
		 -2.2602067 2.33999538 -0.30840588 -2.2602067 2.23978806 -0.32427716 -2.2602067 2.13958097 -0.30840585
		 -2.2602067 2.049182653 -0.26234585 -2.2602067 1.97744226 -0.19060534 -2.2602067 1.9313823 -0.1002072
		 -3.26162815 2.013639212 3.7278514e-008 -3.26162815 2.024707556 0.069883913 -3.26162815 2.056829691 0.13292712
		 -3.26162815 2.10686088 0.1829585 -3.26162815 2.16990423 0.21508051 -3.26162815 2.23978806 0.22614911
		 -3.26162815 2.30967188 0.21508051 -3.26162815 2.37271523 0.1829585 -3.26162815 2.42274666 0.13292708
		 -3.26162815 2.45486856 0.069883898 -3.26162815 2.46593714 2.859654e-008 -3.26162815 2.45486856 -0.069883838
		 -3.26162815 2.42274666 -0.13292705 -3.26162815 2.372715 -0.18295838 -3.26162815 2.30967188 -0.2150804
		 -3.26162815 2.23978806 -0.22614895 -3.26162815 2.16990423 -0.2150804 -3.26162815 2.10686111 -0.18295838
		 -3.26162815 2.056829691 -0.13292696 -3.26162815 2.024707794 -0.069883831 -1.7054764 1.86807871 2.0514104e-008
		 -1.7054764 1.88627124 -0.11486453 -1.7054764 1.93906879 -0.21848539 -1.7054764 2.0213027 -0.30071926
		 -1.7054764 2.12492347 -0.35351688 -1.7054764 2.23978806 -0.37170959 -1.7054764 2.35465264 -0.35351688
		 -1.7054764 2.45827365 -0.30071935 -1.7054764 2.54050732 -0.21848544 -1.7054764 2.59330511 -0.11486459
		 -1.7054764 2.61149764 6.2439853e-009 -1.7054764 2.59330511 0.11486459 -1.7054764 2.54050756 0.2184855
		 -1.7054764 2.45827365 0.30071944 -1.7054764 2.35465264 0.35351703 -1.7054764 2.23978806 0.3717097
		 -1.7054764 2.12492347 0.35351703 -1.7054764 2.021302462 0.3007195 -1.7054764 1.93906856 0.2184855
		 -1.7054764 1.88627112 0.1148646 -2.89113164 1.9546771 3.2934512e-008 -2.89113164 1.96863151 0.088104062
		 -2.89113164 2.0091285706 0.16758393 -2.89113164 2.072204113 0.23065957 -2.89113164 2.15168405 0.27115655
		 -2.89113164 2.23978806 0.28511101 -2.89113164 2.32789207 0.27115661 -2.89113164 2.407372 0.23065957
		 -2.89113164 2.47044754 0.16758393 -2.89113164 2.5109446 0.088104121 -2.89113164 2.52489901 5.319443e-008
		 -2.89113164 2.5109446 -0.088104039 -2.89113164 2.47044754 -0.16758385 -2.89113164 2.407372 -0.23065946
		 -2.89113164 2.32789207 -0.27115643 -2.89113164 2.23978806 -0.28511089 -2.89113164 2.15168405 -0.27115643
		 -2.89113164 2.072204113 -0.23065946 -2.89113164 2.0091285706 -0.16758385;
	setAttr ".vt[996:1161]" -2.89113164 1.96863163 -0.088104039 -2.89113164 1.97592139 3.2934512e-008
		 -2.89113164 1.98883605 -0.081539266 -2.89113164 2.026315451 -0.1550969 -2.89113164 2.084691048 -0.21347265
		 -2.89113164 2.1582489 -0.25095204 -2.89113164 2.23978806 -0.26386663 -2.89113164 2.32132745 -0.25095204
		 -2.89113164 2.39488506 -0.21347266 -2.89113164 2.4532609 -0.15509695 -2.89113164 2.4907403 -0.081539273
		 -2.89113164 2.50365472 2.2804562e-008 -2.89113164 2.4907403 0.081539303 -2.89113164 2.4532609 0.15509702
		 -2.89113164 2.39488506 0.21347277 -2.89113164 2.32132745 0.25095218 -2.89113164 2.23978806 0.26386681
		 -2.89113164 2.15824866 0.25095218 -2.89113164 2.084691048 0.2134728 -2.89113164 2.026315451 0.15509704
		 -2.89113164 1.98883593 0.081539311 -0.024336837 3.11803126 0.50724721 -0.081763454 3.10904002 0.51823473
		 0.24192381 2.35648441 1.21514428 0.18449721 2.34749341 1.22613192 0.25279769 2.35806561 1.27327061
		 0.19537112 2.34907436 1.28425825 -0.028133459 3.17187047 0.531461 -0.085560076 3.16287923 0.54244852
		 0.016921487 3.078033686 0.69015402 -0.040505126 3.069042444 0.7011416 -0.040505126 3.11482358 0.73860443
		 0.016921487 3.12381482 0.72761691 0.042052686 3.056143522 0.85366493 -0.01537393 3.047152281 0.86465251
		 -0.01537393 3.0013711452 0.82718962 0.042052686 3.010362387 0.81620204 0.054324251 2.95010614 0.96741807
		 -0.0031023622 2.94111514 0.97840559 -0.0031023622 2.89533377 0.94094276 0.054324251 2.90432501 0.92995518
		 0.12077273 2.84246826 1.043870211 0.063346118 2.83347702 1.054857731 0.063346118 2.78769588 1.0173949
		 0.12077273 2.79668713 1.0064072609 0.1731284 2.7372086 1.12544656 0.11570179 2.72821736 1.13643408
		 0.11570179 2.68243623 1.098971248 0.1731284 2.69142723 1.087983608 0.20497972 2.58718896 1.21084177
		 0.14755309 2.57819796 1.22182941 0.14755309 2.53241658 1.18436646 0.20497972 2.54140782 1.17337894
		 0.23501891 2.45789862 1.26204312 0.17759228 2.44890738 1.27303076 0.17191851 2.42147493 1.22092855
		 0.22934511 2.43046594 1.20994091 0.22408438 2.35356998 1.27876437 0.21321049 2.35198879 1.22063804
		 0.18993413 2.34828377 1.25519502 0.24736077 2.35727501 1.2442075 0.20972773 2.35132217 1.28151131
		 0.19885385 2.34974098 1.22338498 0.23844105 2.35581779 1.27601743 0.22756717 2.3542366 1.21789122
		 0.25007927 2.35767031 1.25873923 0.19265264 2.34867907 1.26972687 0.24464229 2.35687971 1.22967589
		 0.18721569 2.34788871 1.24066353 0.19533101 2.31372929 1.25512552 0.20968765 2.3159771 1.2523787
		 0.2172415 2.1575222 1.22781956 0.19105199 2.15342188 1.23283052 0.23840097 2.32047272 1.24688494
		 0.26998818 2.16336918 1.21779287 0.22132581 2.31782961 1.23510003 0.22404429 2.31822491 1.24963176
		 0.23053601 2.16981888 1.30736578 0.22557685 2.16909814 1.28085685 0.19938734 2.16499782 1.28586781
		 0.20434651 2.16571856 1.31237674 0.27957249 2.19942141 1.29738712 0.27461338 2.19870043 1.27087831
		 0.22676274 2.3186202 1.26416326 0.22948119 2.31901526 1.27869463 0.30080289 2.20280075 1.26586735
		 0.30576199 2.20352197 1.29237628 0.29617769 2.1674695 1.21278203 0.25275761 2.32272053 1.244138
		 0.2912187 2.16674852 1.18627381 0.26502919 2.16264796 1.19128466 0.21860737 2.31743431 1.22056866
		 0.21228248 2.15680122 1.20131111 0.18609296 2.15270066 1.20632195 -0.56268311 0.3832289 0.50382304
		 0.41091728 0.3832289 0.50382304 -0.87429166 2.39673066 0.82632822 0.72252584 2.39673066 0.82632822
		 -0.87429166 2.39673066 -0.82632822 0.72252584 2.39673066 -0.82632822 -0.56268311 0.3832289 -0.50382304
		 0.41091728 0.3832289 -0.50382304 -0.41017222 -1.53821635 0.081358291 -0.24487916 -1.54008591 0.081132725
		 -0.45420021 -0.81026888 0.13363597 -0.18425533 -0.81332207 0.1332676 -0.45456117 -0.81005132 -0.13268471
		 -0.18461631 -0.81310451 -0.13305308 -0.41039324 -1.5380832 -0.081715606 -0.2451002 -1.53995275 -0.081941172
		 -0.45498881 -0.80870116 0.1296933 -0.19205564 -0.80870116 0.1296933 -0.5382241 0.34837663 0.21180585
		 -0.10882035 0.34837663 0.21180585 -0.5382241 0.34837663 -0.21180585 -0.10882035 0.34837663 -0.21180585
		 -0.45498881 -0.80870116 -0.1296933 -0.19205564 -0.80870116 -0.1296933 -0.01894328 3.054467678 0.52442539
		 -0.076117858 3.06408143 0.51267689 -0.28110212 2.23307586 1.18470979 -0.33827668 2.24268961 1.17296124
		 -0.29272902 2.25073552 1.25574374 -0.34990361 2.26034927 1.24399543 -0.014883757 3.13217759 0.56825972
		 -0.072058335 3.14179134 0.55651128 -0.063058749 3.050542831 0.73590422 -0.12023332 3.060156584 0.72415578
		 -0.12023332 3.13075495 0.78192663 -0.063058749 3.1211412 0.79367512 -0.10857418 3.068296671 0.9251039
		 -0.16574875 3.077910423 0.91335547 -0.16574875 3.0073120594 0.85558462 -0.10857418 2.99769831 0.86733305
		 -0.17247462 2.96643567 1.025172949 -0.22964919 2.97604942 1.013424516 -0.22964919 2.90545106 0.95565361
		 -0.17247462 2.89583731 0.96740204 -0.17547946 2.83386254 1.10223556 -0.23265404 2.8434763 1.090487123
		 -0.23265404 2.77287793 1.032716274 -0.17547946 2.76326418 1.044464707 -0.19202235 2.71028709 1.18068671
		 -0.24919692 2.71990085 1.16893828 -0.24919692 2.64930248 1.11116743 -0.19202235 2.63968873 1.12291586
		 -0.24159962 2.53712583 1.24127352 -0.29877418 2.54673958 1.22952509 -0.29877418 2.47614121 1.17175412
		 -0.24159962 2.46652746 1.18350267 -0.27371901 2.37979889 1.26884353 -0.33089361 2.38941288 1.2570951
		 -0.3248269 2.33916712 1.18645501 -0.26765233 2.32955337 1.19820344 -0.3213163 2.25554252 1.24986959
		 -0.3096894 2.23788261 1.17883551 -0.34409013 2.25151944 1.20847833 -0.28691554 2.24190569 1.22022676
		 -0.33560991 2.25794601 1.24693239 -0.32398304 2.24028611 1.17589831 -0.30702263 2.25313902 1.25280666
		 -0.29539573 2.23547935 1.18177259 -0.28982234 2.24632072 1.23798561 -0.3469969 2.25593472 1.22623718
		 -0.28400886 2.23749089 1.2024684 -0.34118342 2.24710464 1.19071984;
	setAttr ".vt[1162:1327]" -0.34986073 2.20578814 1.19913912 -0.33556706 2.20338464 1.2020762
		 -0.36807722 1.99101019 1.12512791 -0.39415181 1.99539471 1.11977005 -0.30697978 2.19857764 1.20795035
		 -0.31632119 1.97912598 1.13520741 -0.31836668 2.1965661 1.18725467 -0.32127342 2.20098114 1.20501328
		 -0.38229239 2.028582573 1.2250526 -0.37698981 2.02052927 1.19265699 -0.40306437 2.024913788 1.18729913
		 -0.40836698 2.032967091 1.21969461 -0.3265692 2.048138142 1.24155283 -0.32126668 2.040084362 1.20915723
		 -0.32418013 2.20539618 1.22277164 -0.32708681 2.20981073 1.24052989 -0.29519212 2.035699844 1.21451521
		 -0.30049467 2.043753624 1.24691069 -0.29024664 1.97474158 1.14056528 -0.29268613 2.19617414 1.21088755
		 -0.28494424 1.9666878 1.10817051 -0.31101879 1.9710722 1.10281253 -0.31545997 2.19215131 1.1694963
		 -0.36277479 1.98295641 1.092732787 -0.38884938 1.98734081 1.087374926 -3.87465096 2.56817508 0.028222181
		 -3.91891956 2.53192639 0.028222181 -3.7011199 2.38483787 0.046090458 -3.77341652 2.32563949 0.046090458
		 -3.7011199 2.38483787 -0.046090458 -3.77341652 2.32563949 -0.046090458 -3.87465096 2.56817508 -0.028222181
		 -3.91891956 2.53192639 -0.028222181 4.20426702 2.20692587 0.016679335 4.20426702 2.24074078 0.016679335
		 4.055459499 2.19622135 0.027239503 4.055459499 2.25144529 0.027239503 4.055459499 2.19622135 -0.027239503
		 4.055459499 2.25144529 -0.027239503 4.20426702 2.20692587 -0.016679335 4.20426702 2.24074078 -0.016679335
		 4.060836315 2.29111624 0.028222181 4.060836315 2.34833241 0.028222181 3.80904818 2.27300358 0.046090458
		 3.80904818 2.36644506 0.046090458 3.80904818 2.27300358 -0.046090458 3.80904818 2.36644506 -0.046090458
		 4.060836315 2.29111624 -0.028222181 4.060836315 2.34833241 -0.028222181 3.8631804 2.50246358 0.028222181
		 3.82297945 2.54317641 0.028222181 3.69674206 2.31266427 0.046090458 3.63108873 2.37915397 0.046090458
		 3.69674206 2.31266427 -0.046090458 3.63108873 2.37915397 -0.046090458 3.8631804 2.50246358 -0.028222181
		 3.82297945 2.54317641 -0.028222181 4.20426702 2.30281687 0.016679335 4.20426702 2.33663177 0.016679335
		 4.055459499 2.29211235 0.027239503 4.055459499 2.34733629 0.027239503 4.055459499 2.29211235 -0.027239503
		 4.055459499 2.34733629 -0.027239503 4.20426702 2.30281687 -0.016679335 4.20426702 2.33663177 -0.016679335
		 -4.17266178 2.38909936 0.028222181 -4.17266178 2.33188367 0.028222181 -3.92087317 2.40721202 0.046090458
		 -3.92087317 2.31377101 0.046090458 -3.92087317 2.40721202 -0.046090458 -3.92087317 2.31377101 -0.046090458
		 -4.17266178 2.38909936 -0.028222181 -4.17266178 2.33188367 -0.028222181 3.55716658 2.16765094 0.055190872
		 3.55716658 2.27954173 0.055190872 3.064773083 2.13223004 0.090133809 3.064773083 2.31496263 0.090133809
		 3.064773083 2.13223004 -0.090133809 3.064773083 2.31496263 -0.090133809 3.55716658 2.16765094 -0.055190872
		 3.55716658 2.27954173 -0.055190872 3.52289462 2.067925453 0.066890009 3.8423245 2.067925453 0.066890009
		 3.52289462 2.38735533 0.066890009 3.8423245 2.38735533 0.066890009 3.52289462 2.38735533 -0.066890009
		 3.8423245 2.38735533 -0.066890009 3.52289462 2.067925453 -0.066890009 3.8423245 2.067925453 -0.066890009
		 -0.0005518198 -2.094892979 0.45463395 0.31727847 -2.094892979 0.45463395 -0.0005518198 -1.93431842 0.45463395
		 0.31727847 -1.93431842 0.45463395 -0.0005518198 -1.93431842 -0.15699075 0.31727847 -1.93431842 -0.15699075
		 -0.0005518198 -2.094892979 -0.15699075 0.31727847 -2.094892979 -0.15699075 -4.31609201 2.18706536 0.016679335
		 -4.31609201 2.15325093 0.016679335 -4.16728497 2.19776988 0.027239503 -4.16728497 2.14254642 0.027239503
		 -4.16728497 2.19776988 -0.027239503 -4.16728497 2.14254642 -0.027239503 -4.31609201 2.18706536 -0.016679335
		 -4.31609201 2.15325093 -0.016679335 -4.31609201 2.28295636 0.016679335 -4.31609201 2.24914193 0.016679335
		 -4.16728497 2.29366088 0.027239503 -4.16728497 2.23843741 0.027239503 -4.16728497 2.29366088 -0.027239503
		 -4.16728497 2.23843741 -0.027239503 -4.31609201 2.28295636 -0.016679335 -4.31609201 2.24914193 -0.016679335
		 -4.31609201 2.37739873 0.016679335 -4.31609201 2.3435843 0.016679335 -4.16728497 2.38810325 0.027239503
		 -4.16728497 2.33287978 0.027239503 -4.16728497 2.38810325 -0.027239503 -4.16728497 2.33287978 -0.027239503
		 -4.31609201 2.37739873 -0.016679335 -4.31609201 2.3435843 -0.016679335 -4.17266178 2.29465699 0.028222181
		 -4.17266178 2.2374413 0.028222181 -3.92087317 2.31276965 0.046090458 -3.92087317 2.21932864 0.046090458
		 -3.92087317 2.31276965 -0.046090458 -3.92087317 2.21932864 -0.046090458 -4.17266178 2.29465699 -0.028222181
		 -4.17266178 2.2374413 -0.028222181 4.060836315 2.19522524 0.028222181 4.060836315 2.25244141 0.028222181
		 3.80904818 2.17711258 0.046090458 3.80904818 2.27055407 0.046090458 3.80904818 2.17711258 -0.046090458
		 3.80904818 2.27055407 -0.046090458 4.060836315 2.19522524 -0.028222181 4.060836315 2.25244141 -0.028222181
		 -0.37620792 -1.99423838 0.051975053 -0.27083653 -1.99423838 0.051975053 -0.40956476 -1.53053534 0.084881961
		 -0.23747969 -1.53053534 0.084881961 -0.40956476 -1.53053534 -0.084881961 -0.23747969 -1.53053534 -0.084881961
		 -0.37620792 -1.99423838 -0.051975053 -0.27083653 -1.99423838 -0.051975053 0.2916854 -1.97931564 0.41766649
		 0.22606659 -1.97931564 0.41766649 0.2916854 -2.044934511 0.41766649 0.22606659 -2.044934511 0.41766649
		 0.2916854 -2.044934511 0.54494649 0.22606659 -2.044934511 0.54494649 0.2916854 -1.97931564 0.54494649
		 0.22606659 -1.97931564 0.54494649 -0.56268311 2.80088353 -0.50382304 0.41091728 2.80088353 -0.50382304
		 -0.87429166 2.3929894 -0.82632822 0.72252584 2.3929894 -0.82632822 -0.87429166 2.3929894 0.82632822
		 0.72252584 2.3929894 0.82632822 -0.56268311 2.80088353 0.50382304 0.41091728 2.80088353 0.50382304
		 -3.63471985 2.42195725 0.066890009 -3.95414972 2.42195725 0.066890009 -3.63471985 2.1025269 0.066890009
		 -3.95414972 2.1025269 0.066890009 -3.63471985 2.1025269 -0.066890009;
	setAttr ".vt[1328:1493]" -3.95414972 2.1025269 -0.066890009 -3.63471985 2.42195725 -0.066890009
		 -3.95414972 2.42195725 -0.066890009 -0.18201584 -1.96841407 0.39652079 -0.26943782 -1.96841407 0.39652079
		 -0.18201584 -2.055835962 0.39652079 -0.26943782 -2.055835962 0.39652079 -0.18201584 -2.055835962 0.56609219
		 -0.26943782 -2.055835962 0.56609219 -0.18201584 -1.96841407 0.56609219 -0.26943782 -1.96841407 0.56609219
		 -4.17266178 2.19876599 0.028222181 -4.17266178 2.1415503 0.028222181 -3.92087317 2.21687865 0.046090458
		 -3.92087317 2.12343764 0.046090458 -3.92087317 2.21687865 -0.046090458 -3.92087317 2.12343764 -0.046090458
		 -4.17266178 2.19876599 -0.028222181 -4.17266178 2.1415503 -0.028222181 0.024101138 -0.80870116 0.1296933
		 0.2870343 -0.80870116 0.1296933 -0.059134137 0.34837663 0.21180585 0.37026963 0.34837663 0.21180585
		 -0.059134137 0.34837663 -0.21180585 0.37026963 0.34837663 -0.21180585 0.024101138 -0.80870116 -0.1296933
		 0.2870343 -0.80870116 -0.1296933 0.22542578 0.13989067 -0.31184512 -0.3771916 0.13989067 -0.31184512
		 0.41829827 0.39235973 -0.51146215 -0.57006407 0.39235973 -0.51146215 0.41829827 0.39235973 0.51146215
		 -0.57006407 0.39235973 0.51146215 0.22542578 0.13989067 0.31184512 -0.3771916 0.13989067 0.31184512
		 -0.39499846 -1.97931564 0.41766649 -0.46061727 -1.97931564 0.41766649 -0.39499846 -2.044934511 0.41766649
		 -0.46061727 -2.044934511 0.41766649 -0.39499846 -2.044934511 0.54494649 -0.46061727 -2.044934511 0.54494649
		 -0.39499846 -1.97931564 0.54494649 -0.46061727 -1.97931564 0.54494649 -0.29433334 -1.97298026 0.40537798
		 -0.37262273 -1.97298026 0.40537798 -0.29433334 -2.05126977 0.40537798 -0.37262273 -2.05126977 0.40537798
		 -0.29433334 -2.05126977 0.557235 -0.37262273 -2.05126977 0.557235 -0.29433334 -1.97298026 0.557235
		 -0.37262273 -1.97298026 0.557235 -3.66899157 2.32223153 0.055190872 -3.66899157 2.21034074 0.055190872
		 -3.17659831 2.35765243 0.090133809 -3.17659831 2.17491984 0.090133809 -3.17659831 2.35765243 -0.090133809
		 -3.17659831 2.17491984 -0.090133809 -3.66899157 2.32223153 -0.055190872 -3.66899157 2.21034074 -0.055190872
		 0.068917722 -1.53821635 0.081358291 0.23421079 -1.54008591 0.081132725 0.024889745 -0.81026888 0.13363597
		 0.29483461 -0.81332207 0.1332676 0.024528787 -0.81005132 -0.13268471 0.29447365 -0.81310451 -0.13305308
		 0.068696707 -1.5380832 -0.081715606 0.23398975 -1.53995275 -0.081941172 4.060836315 2.10078263 0.028222181
		 4.060836315 2.1579988 0.028222181 3.80904818 2.082669973 0.046090458 3.80904818 2.17611146 0.046090458
		 3.80904818 2.082669973 -0.046090458 3.80904818 2.17611146 -0.046090458 4.060836315 2.10078263 -0.028222181
		 4.060836315 2.1579988 -0.028222181 0.45486319 4.41892624 0.51253557 0.43665266 4.41892624 -0.53074616
		 0.036312871 4.78873205 0.10834622 0.032463305 4.78873205 -0.1121958 -0.18422917 4.78873205 0.1121958
		 -0.18807873 4.78873205 -0.10834622 -0.58841854 4.41892624 0.52211797 -0.60662907 4.41892624 -0.51253557
		 0.24435481 4.75732994 0.30925 0.23336706 4.75732994 -0.32023773 -0.39612064 4.75732994 -0.30924997
		 -0.38513288 4.75732994 0.32023776 0.40423781 4.71021509 0.46364728 0.38776433 4.71021509 -0.48012078
		 -0.55600369 4.71021509 -0.46364728 -0.53953016 4.71021509 0.48012081 0.45486319 4.63533545 0.51253557
		 0.43665266 4.63533545 -0.53074616 -0.60662907 4.63533545 -0.51253557 -0.58841854 4.63533545 0.53074616
		 -0.066777639 4.41892624 0.52164084 -0.084988192 4.41892624 -0.52164084 -0.078090422 3.049864292 -0.02254452
		 0.44575793 4.41892624 -0.0091052745 -0.59752381 4.41892624 0.0091052754 -0.059667371 3.32911587 0.48598653
		 0.012813792 3.04986763 -0.024131259 -0.075663745 3.04986763 -0.43044522 -0.21001528 3.04986763 -0.020241762
		 0.051840857 3.32911587 0.48423868 0.10821986 3.04986763 -0.22972578 -0.27597231 3.04986763 -0.22301969
		 -0.17116867 3.32911587 0.48813131 -0.058705453 3.67456961 0.54109991 -0.28572249 3.67456961 0.42139548
		 -0.46727273 3.70694971 -0.015751418 -0.53579789 3.67281246 -0.4441345 -0.084793136 3.67281246 -0.51046991
		 0.36825165 3.67281246 -0.45991498 0.25194985 3.70694876 -0.02830532 0.10165216 3.67456961 0.46543792
		 -0.066537544 4.30144167 0.53539729 -0.565418 4.30144167 0.50692844 -0.61128014 4.30144167 0.0093453694
		 -0.59834599 4.30144167 -0.50453669 -0.084741063 4.32133055 -0.5074845 0.42865378 4.30144167 -0.52246302
		 0.45951432 4.30144167 -0.0093453694 0.44658011 4.30144167 0.50453675 -0.090236716 3.72249794 -0.82233167
		 -0.30769601 4.024669647 -0.48162857 -0.5999375 3.76646566 0.0091473637 -0.52654016 3.76646566 0.46666932
		 -0.066735551 3.76646566 0.52405465 0.41811901 3.76646566 0.47705209 0.44817168 3.76646566 -0.0091473637
		 0.13046607 4.0029406548 -0.48927683 -0.066777639 4.63533545 0.52164084 -0.067646168 4.71021509 0.47188401
		 -0.070389047 4.75732994 0.31474388 -0.073958129 4.78873205 0.11027101 0.44575793 4.63533545 -0.0091052745
		 0.3960011 4.71021509 -0.0082367659 0.23886093 4.75732994 -0.0054938733 0.03438808 4.78873205 -0.0019247869
		 -0.084988192 4.63533545 -0.52164084 -0.084119692 4.71021509 -0.47188401 -0.081376791 4.75732994 -0.31474388
		 -0.077807724 4.78873205 -0.11027101 -0.59752381 4.63533545 0.0091052754 -0.54776692 4.71021509 0.0082367659
		 -0.39062676 4.75732994 0.0054938737 -0.18615395 4.78873205 0.0019247881 -0.19946641 3.50184202 0.45425758
		 -0.059181511 3.50360489 0.51382446 0.070201725 3.50184202 0.47495261 0.0032492951 3.61864758 -0.34071863
		 -0.08040183 3.37317133 -0.47197744 -0.22197917 3.64974976 -0.33678719 -0.34580863 4.41892624 -0.51708823
		 0.17583224 4.41892624 -0.52619356 -0.088344291 4.047802925 -0.71391356 0.10822654 2.64318419 -0.22972722
		 -0.075663336 2.64318419 -0.4304468 0.01282052 2.64318419 -0.024132706 -0.078090012 2.64318037 -0.022546072
		 -0.21002118 2.64318419 -0.020243416 -0.27597821 2.64318419 -0.22302136 4.20426702 2.11248326 0.016679335
		 4.20426702 2.14629817 0.016679335 4.055459499 2.10177875 0.027239503;
	setAttr ".vt[1494:1562]" 4.055459499 2.15700269 0.027239503 4.055459499 2.10177875 -0.027239503
		 4.055459499 2.15700269 -0.027239503 4.20426702 2.11248326 -0.016679335 4.20426702 2.14629817 -0.016679335
		 0.10288203 -1.99423838 0.051975053 0.20825341 -1.99423838 0.051975053 0.069525182 -1.53053534 0.084881961
		 0.24161026 -1.53053534 0.084881961 0.069525182 -1.53053534 -0.084881961 0.24161026 -1.53053534 -0.084881961
		 0.10288203 -1.99423838 -0.051975053 0.20825341 -1.99423838 -0.051975053 -0.47964174 -2.094892979 0.45463395
		 -0.16181146 -2.094892979 0.45463395 -0.47964174 -1.93431842 0.45463395 -0.16181146 -1.93431842 0.45463395
		 -0.47964174 -1.93431842 -0.15699075 -0.16181146 -1.93431842 -0.15699075 -0.47964174 -2.094892979 -0.15699075
		 -0.16181146 -2.094892979 -0.15699075 0.20034853 -1.97298026 0.40537798 0.12205912 -1.97298026 0.40537798
		 0.20034853 -2.05126977 0.40537798 0.12205912 -2.05126977 0.40537798 0.20034853 -2.05126977 0.557235
		 0.12205912 -2.05126977 0.557235 0.20034853 -1.97298026 0.557235 0.12205912 -1.97298026 0.557235
		 2.16730714 2.046158314 0.17504476 2.16730714 2.40103436 0.17504476 0.60561967 1.93381715 0.28587064
		 0.60561967 2.51337552 0.28587064 0.60561967 1.93381715 -0.28587064 0.60561967 2.51337552 -0.28587064
		 2.16730714 2.046158314 -0.17504476 2.16730714 2.40103436 -0.17504476 -3.17788959 2.37140775 0.1037038
		 -3.17788959 2.16116452 0.1037038 -2.25268102 2.43796325 0.16936168 -2.25268102 2.094609022 0.16936168
		 -2.25268102 2.43796325 -0.16936168 -2.25268102 2.094609022 -0.16936168 -3.17788959 2.37140775 -0.1037038
		 -3.17788959 2.16116452 -0.1037038 -2.27913237 2.44372439 0.17504476 -2.27913237 2.088847876 0.17504476
		 -0.7174449 2.55606532 0.28587064 -0.7174449 1.97650695 0.28587064 -0.7174449 2.55606532 -0.28587064
		 -0.7174449 1.97650695 -0.28587064 -2.27913237 2.44372439 -0.17504476 -2.27913237 2.088847876 -0.17504476
		 3.066064596 2.11847472 0.1037038 3.066064596 2.32871795 0.1037038 2.14085603 2.051918983 0.16936168
		 2.14085603 2.39527369 0.16936168 2.14085603 2.051918983 -0.16936168 2.14085603 2.39527369 -0.16936168
		 3.066064596 2.11847472 -0.1037038 3.066064596 2.32871795 -0.1037038 0.10425156 -1.96841407 0.39652079
		 0.01682958 -1.96841407 0.39652079 0.10425156 -2.055835962 0.39652079 0.01682958 -2.055835962 0.39652079
		 0.10425156 -2.055835962 0.56609219 0.01682958 -2.055835962 0.56609219 0.10425156 -1.96841407 0.56609219
		 0.01682958 -1.96841407 0.56609219;
	setAttr -s 2941 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0 7 8 0 8 9 0
		 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0 18 19 0 19 0 0
		 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0 29 30 0 30 31 0
		 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 20 0 40 41 0 41 42 0
		 42 43 0 43 44 0 44 45 0 45 46 0 46 47 0 47 48 0 48 49 0 49 50 0 50 51 0 51 52 0 52 53 0
		 53 54 0 54 55 0 55 56 0 56 57 0 57 58 0 58 59 0 59 40 0 60 61 0 61 62 0 62 63 0 63 64 0
		 64 65 0 65 66 0 66 67 0 67 68 0 68 69 0 69 70 0 70 71 0 71 72 0 72 73 0 73 74 0 74 75 0
		 75 76 0 76 77 0 77 78 0 78 79 0 79 60 0 0 160 1 1 179 1 2 178 1 3 177 1 4 176 1 5 175 1
		 6 174 1 7 173 1 8 172 1 9 171 1 10 170 1 11 169 1 12 168 1 13 167 1 14 166 1 15 165 1
		 16 164 1 17 163 1 18 162 1 19 161 1 20 40 1 21 41 1 22 42 1 23 43 1 24 44 1 25 45 1
		 26 46 1 27 47 1 28 48 1 29 49 1 30 50 1 31 51 1 32 52 1 33 53 1 34 54 1 35 55 1 36 56 1
		 37 57 1 38 58 1 39 59 1 40 120 1 41 139 1 42 138 1 43 137 1 44 136 1 45 135 1 46 134 1
		 47 133 1 48 132 1 49 131 1 50 130 1 51 129 1 52 128 1 53 127 1 54 126 1 55 125 1
		 56 124 1 57 123 1 58 122 1 59 121 1 60 0 1 61 1 1 62 2 1 63 3 1 64 4 1 65 5 1 66 6 1
		 67 7 1 68 8 1 69 9 1 70 10 1 71 11 1 72 12 1 73 13 1 74 14 1 75 15 1 76 16 1 77 17 1
		 78 18 1 79 19 1 80 200 1 81 201 1 82 202 1 83 203 1 84 204 1 85 205 1;
	setAttr ".ed[166:331]" 86 206 1 87 207 1 88 208 1 89 209 1 90 210 1 91 211 1
		 92 212 1 93 213 1 94 214 1 95 215 1 96 216 1 97 217 1 98 218 1 99 219 1 80 81 1 81 82 1
		 82 83 1 83 84 1 84 85 1 85 86 1 86 87 1 87 88 1 88 89 1 89 90 1 90 91 1 91 92 1 92 93 1
		 93 94 1 94 95 1 95 96 1 96 97 1 97 98 1 98 99 1 99 80 1 100 60 1 101 61 1 102 62 1
		 103 63 1 104 64 1 105 65 1 106 66 1 107 67 1 108 68 1 109 69 1 110 70 1 111 71 1
		 112 72 1 113 73 1 114 74 1 115 75 1 116 76 1 117 77 1 118 78 1 119 79 1 100 101 1
		 101 102 1 102 103 1 103 104 1 104 105 1 105 106 1 106 107 1 107 108 1 108 109 1 109 110 1
		 110 111 1 111 112 1 112 113 1 113 114 1 114 115 1 115 116 1 116 117 1 117 118 1 118 119 1
		 119 100 1 120 80 1 121 81 1 122 82 1 123 83 1 124 84 1 125 85 1 126 86 1 127 87 1
		 128 88 1 129 89 1 130 90 1 131 91 1 132 92 1 133 93 1 134 94 1 135 95 1 136 96 1
		 137 97 1 138 98 1 139 99 1 120 121 1 121 122 1 122 123 1 123 124 1 124 125 1 125 126 1
		 126 127 1 127 128 1 128 129 1 129 130 1 130 131 1 131 132 1 132 133 1 133 134 1 134 135 1
		 135 136 1 136 137 1 137 138 1 138 139 1 139 120 1 140 180 1 141 199 1 142 198 1 143 197 1
		 144 196 1 145 195 1 146 194 1 147 193 1 148 192 1 149 191 1 150 190 1 151 189 1 152 188 1
		 153 187 1 154 186 1 155 185 1 156 184 1 157 183 1 158 182 1 159 181 1 140 141 1 141 142 1
		 142 143 1 143 144 1 144 145 1 145 146 1 146 147 1 147 148 1 148 149 1 149 150 1 150 151 1
		 151 152 1 152 153 1 153 154 1 154 155 1 155 156 1 156 157 1 157 158 1 158 159 1 159 140 1
		 160 220 1 161 239 1 162 238 1 163 237 1 164 236 1 165 235 1 166 234 1 167 233 1 168 232 1
		 169 231 1 170 230 1 171 229 1;
	setAttr ".ed[332:497]" 172 228 1 173 227 1 174 226 1 175 225 1 176 224 1 177 223 1
		 178 222 1 179 221 1 160 161 1 161 162 1 162 163 1 163 164 1 164 165 1 165 166 1 166 167 1
		 167 168 1 168 169 1 169 170 1 170 171 1 171 172 1 172 173 1 173 174 1 174 175 1 175 176 1
		 176 177 1 177 178 1 178 179 1 179 160 1 180 20 1 181 21 1 182 22 1 183 23 1 184 24 1
		 185 25 1 186 26 1 187 27 1 188 28 1 189 29 1 190 30 1 191 31 1 192 32 1 193 33 1
		 194 34 1 195 35 1 196 36 1 197 37 1 198 38 1 199 39 1 180 181 1 181 182 1 182 183 1
		 183 184 1 184 185 1 185 186 1 186 187 1 187 188 1 188 189 1 189 190 1 190 191 1 191 192 1
		 192 193 1 193 194 1 194 195 1 195 196 1 196 197 1 197 198 1 198 199 1 199 180 1 200 100 1
		 201 119 1 202 118 1 203 117 1 204 116 1 205 115 1 206 114 1 207 113 1 208 112 1 209 111 1
		 210 110 1 211 109 1 212 108 1 213 107 1 214 106 1 215 105 1 216 104 1 217 103 1 218 102 1
		 219 101 1 200 201 1 201 202 1 202 203 1 203 204 1 204 205 1 205 206 1 206 207 1 207 208 1
		 208 209 1 209 210 1 210 211 1 211 212 1 212 213 1 213 214 1 214 215 1 215 216 1 216 217 1
		 217 218 1 218 219 1 219 200 1 220 140 1 221 159 1 222 158 1 223 157 1 224 156 1 225 155 1
		 226 154 1 227 153 1 228 152 1 229 151 1 230 150 1 231 149 1 232 148 1 233 147 1 234 146 1
		 235 145 1 236 144 1 237 143 1 238 142 1 239 141 1 220 221 1 221 222 1 222 223 1 223 224 1
		 224 225 1 225 226 1 226 227 1 227 228 1 228 229 1 229 230 1 230 231 1 231 232 1 232 233 1
		 233 234 1 234 235 1 235 236 1 236 237 1 237 238 1 238 239 1 239 220 1 240 241 1 241 242 1
		 242 243 1 243 244 1 244 245 1 245 246 1 246 247 1 247 248 1 248 249 1 249 250 1 250 251 1
		 251 252 1 252 253 1 253 254 1 254 255 1 255 256 1 256 257 1 257 258 1;
	setAttr ".ed[498:663]" 258 259 1 259 240 1 260 261 1 261 262 1 262 263 1 263 264 1
		 264 265 1 265 266 1 266 267 1 267 268 1 268 269 1 269 270 1 270 271 1 271 272 1 272 273 1
		 273 274 1 274 275 1 275 276 1 276 277 1 277 278 1 278 279 1 279 260 1 280 281 1 281 282 1
		 282 283 1 283 284 1 284 285 1 285 286 1 286 287 1 287 288 1 288 289 1 289 290 1 290 291 1
		 291 292 1 292 293 1 293 294 1 294 295 1 295 296 1 296 297 1 297 298 1 298 299 1 299 280 1
		 300 301 1 301 302 1 302 303 1 303 304 1 304 305 1 305 306 1 306 307 1 307 308 1 308 309 1
		 309 310 1 310 311 1 311 312 1 312 313 1 313 314 1 314 315 1 315 316 1 316 317 1 317 318 1
		 318 319 1 319 300 1 320 321 1 321 322 1 322 323 1 323 324 1 324 325 1 325 326 1 326 327 1
		 327 328 1 328 329 1 329 330 1 330 331 1 331 332 1 332 333 1 333 334 1 334 335 1 335 336 1
		 336 337 1 337 338 1 338 339 1 339 320 1 340 341 1 341 342 1 342 343 1 343 344 1 344 345 1
		 345 346 1 346 347 1 347 348 1 348 349 1 349 350 1 350 351 1 351 352 1 352 353 1 353 354 1
		 354 355 1 355 356 1 356 357 1 357 358 1 358 359 1 359 340 1 360 361 1 361 362 1 362 363 1
		 363 364 1 364 365 1 365 366 1 366 367 1 367 368 1 368 369 1 369 370 1 370 371 1 371 372 1
		 372 373 1 373 374 1 374 375 1 375 376 1 376 377 1 377 378 1 378 379 1 379 360 1 380 381 1
		 381 382 1 382 383 1 383 384 1 384 385 1 385 386 1 386 387 1 387 388 1 388 389 1 389 390 1
		 390 391 1 391 392 1 392 393 1 393 394 1 394 395 1 395 396 1 396 397 1 397 398 1 398 399 1
		 399 380 1 400 401 1 401 402 1 402 403 1 403 404 1 404 405 1 405 406 1 406 407 1 407 408 1
		 408 409 1 409 410 1 410 411 1 411 412 1 412 413 1 413 414 1 414 415 1 415 416 1 416 417 1
		 417 418 1 418 419 1 419 400 1 420 421 1 421 422 1 422 423 1 423 424 1;
	setAttr ".ed[664:829]" 424 425 1 425 426 1 426 427 1 427 428 1 428 429 1 429 430 1
		 430 431 1 431 432 1 432 433 1 433 434 1 434 435 1 435 436 1 436 437 1 437 438 1 438 439 1
		 439 420 1 440 441 1 441 442 1 442 443 1 443 444 1 444 445 1 445 446 1 446 447 1 447 448 1
		 448 449 1 449 450 1 450 451 1 451 452 1 452 453 1 453 454 1 454 455 1 455 456 1 456 457 1
		 457 458 1 458 459 1 459 440 1 460 461 1 461 462 1 462 463 1 463 464 1 464 465 1 465 466 1
		 466 467 1 467 468 1 468 469 1 469 470 1 470 471 1 471 472 1 472 473 1 473 474 1 474 475 1
		 475 476 1 476 477 1 477 478 1 478 479 1 479 460 1 480 481 1 481 482 1 482 483 1 483 484 1
		 484 485 1 485 486 1 486 487 1 487 488 1 488 489 1 489 490 1 490 491 1 491 492 1 492 493 1
		 493 494 1 494 495 1 495 496 1 496 497 1 497 498 1 498 499 1 499 480 1 500 501 1 501 502 1
		 502 503 1 503 504 1 504 505 1 505 506 1 506 507 1 507 508 1 508 509 1 509 510 1 510 511 1
		 511 512 1 512 513 1 513 514 1 514 515 1 515 516 1 516 517 1 517 518 1 518 519 1 519 500 1
		 520 521 1 521 522 1 522 523 1 523 524 1 524 525 1 525 526 1 526 527 1 527 528 1 528 529 1
		 529 530 1 530 531 1 531 532 1 532 533 1 533 534 1 534 535 1 535 536 1 536 537 1 537 538 1
		 538 539 1 539 520 1 540 541 1 541 542 1 542 543 1 543 544 1 544 545 1 545 546 1 546 547 1
		 547 548 1 548 549 1 549 550 1 550 551 1 551 552 1 552 553 1 553 554 1 554 555 1 555 556 1
		 556 557 1 557 558 1 558 559 1 559 540 1 560 561 1 561 562 1 562 563 1 563 564 1 564 565 1
		 565 566 1 566 567 1 567 568 1 568 569 1 569 570 1 570 571 1 571 572 1 572 573 1 573 574 1
		 574 575 1 575 576 1 576 577 1 577 578 1 578 579 1 579 560 1 580 581 1 581 582 1 582 583 1
		 583 584 1 584 585 1 585 586 1 586 587 1 587 588 1 588 589 1 589 590 1;
	setAttr ".ed[830:995]" 590 591 1 591 592 1 592 593 1 593 594 1 594 595 1 595 596 1
		 596 597 1 597 598 1 598 599 1 599 580 1 600 601 1 601 602 1 602 603 1 603 604 1 604 605 1
		 605 606 1 606 607 1 607 608 1 608 609 1 609 610 1 610 611 1 611 612 1 612 613 1 613 614 1
		 614 615 1 615 616 1 616 617 1 617 618 1 618 619 1 619 600 1 620 621 1 621 622 1 622 623 1
		 623 624 1 624 625 1 625 626 1 626 627 1 627 628 1 628 629 1 629 630 1 630 631 1 631 632 1
		 632 633 1 633 634 1 634 635 1 635 636 1 636 637 1 637 638 1 638 639 1 639 620 1 240 260 1
		 241 261 1 242 262 1 243 263 1 244 264 1 245 265 1 246 266 1 247 267 1 248 268 1 249 269 1
		 250 270 1 251 271 1 252 272 1 253 273 1 254 274 1 255 275 1 256 276 1 257 277 1 258 278 1
		 259 279 1 260 280 1 261 281 1 262 282 1 263 283 1 264 284 1 265 285 1 266 286 1 267 287 1
		 268 288 1 269 289 1 270 290 1 271 291 1 272 292 1 273 293 1 274 294 1 275 295 1 276 296 1
		 277 297 1 278 298 1 279 299 1 280 300 1 281 301 1 282 302 1 283 303 1 284 304 1 285 305 1
		 286 306 1 287 307 1 288 308 1 289 309 1 290 310 1 291 311 1 292 312 1 293 313 1 294 314 1
		 295 315 1 296 316 1 297 317 1 298 318 1 299 319 1 300 320 1 301 321 1 302 322 1 303 323 1
		 304 324 1 305 325 1 306 326 1 307 327 1 308 328 1 309 329 1 310 330 1 311 331 1 312 332 1
		 313 333 1 314 334 1 315 335 1 316 336 1 317 337 1 318 338 1 319 339 1 320 340 1 321 341 1
		 322 342 1 323 343 1 324 344 1 325 345 1 326 346 1 327 347 1 328 348 1 329 349 1 330 350 1
		 331 351 1 332 352 1 333 353 1 334 354 1 335 355 1 336 356 1 337 357 1 338 358 1 339 359 1
		 340 360 1 341 361 1 342 362 1 343 363 1 344 364 1 345 365 1 346 366 1 347 367 1 348 368 1
		 349 369 1 350 370 1 351 371 1 352 372 1 353 373 1 354 374 1 355 375 1;
	setAttr ".ed[996:1161]" 356 376 1 357 377 1 358 378 1 359 379 1 360 380 1 361 381 1
		 362 382 1 363 383 1 364 384 1 365 385 1 366 386 1 367 387 1 368 388 1 369 389 1 370 390 1
		 371 391 1 372 392 1 373 393 1 374 394 1 375 395 1 376 396 1 377 397 1 378 398 1 379 399 1
		 380 400 1 381 401 1 382 402 1 383 403 1 384 404 1 385 405 1 386 406 1 387 407 1 388 408 1
		 389 409 1 390 410 1 391 411 1 392 412 1 393 413 1 394 414 1 395 415 1 396 416 1 397 417 1
		 398 418 1 399 419 1 400 420 1 401 421 1 402 422 1 403 423 1 404 424 1 405 425 1 406 426 1
		 407 427 1 408 428 1 409 429 1 410 430 1 411 431 1 412 432 1 413 433 1 414 434 1 415 435 1
		 416 436 1 417 437 1 418 438 1 419 439 1 420 440 1 421 441 1 422 442 1 423 443 1 424 444 1
		 425 445 1 426 446 1 427 447 1 428 448 1 429 449 1 430 450 1 431 451 1 432 452 1 433 453 1
		 434 454 1 435 455 1 436 456 1 437 457 1 438 458 1 439 459 1 440 640 1 441 659 1 442 658 1
		 443 657 1 444 656 1 445 655 1 446 654 1 447 653 1 448 652 1 449 651 1 450 650 1 451 649 1
		 452 648 1 453 647 1 454 646 1 455 645 1 456 644 1 457 643 1 458 642 1 459 641 1 460 480 1
		 461 481 1 462 482 1 463 483 1 464 484 1 465 485 1 466 486 1 467 487 1 468 488 1 469 489 1
		 470 490 1 471 491 1 472 492 1 473 493 1 474 494 1 475 495 1 476 496 1 477 497 1 478 498 1
		 479 499 1 480 680 1 481 699 1 482 698 1 483 697 1 484 696 1 485 695 1 486 694 1 487 693 1
		 488 692 1 489 691 1 490 690 1 491 689 1 492 688 1 493 687 1 494 686 1 495 685 1 496 684 1
		 497 683 1 498 682 1 499 681 1 500 520 1 501 521 1 502 522 1 503 523 1 504 524 1 505 525 1
		 506 526 1 507 527 1 508 528 1 509 529 1 510 530 1 511 531 1 512 532 1 513 533 1 514 534 1
		 515 535 1 516 536 1 517 537 1 518 538 1 519 539 1 520 540 1 521 541 1;
	setAttr ".ed[1162:1327]" 522 542 1 523 543 1 524 544 1 525 545 1 526 546 1 527 547 1
		 528 548 1 529 549 1 530 550 1 531 551 1 532 552 1 533 553 1 534 554 1 535 555 1 536 556 1
		 537 557 1 538 558 1 539 559 1 540 560 1 541 561 1 542 562 1 543 563 1 544 564 1 545 565 1
		 546 566 1 547 567 1 548 568 1 549 569 1 550 570 1 551 571 1 552 572 1 553 573 1 554 574 1
		 555 575 1 556 576 1 557 577 1 558 578 1 559 579 1 560 580 1 561 581 1 562 582 1 563 583 1
		 564 584 1 565 585 1 566 586 1 567 587 1 568 588 1 569 589 1 570 590 1 571 591 1 572 592 1
		 573 593 1 574 594 1 575 595 1 576 596 1 577 597 1 578 598 1 579 599 1 580 600 1 581 601 1
		 582 602 1 583 603 1 584 604 1 585 605 1 586 606 1 587 607 1 588 608 1 589 609 1 590 610 1
		 591 611 1 592 612 1 593 613 1 594 614 1 595 615 1 596 616 1 597 617 1 598 618 1 599 619 1
		 600 620 1 601 621 1 602 622 1 603 623 1 604 624 1 605 625 1 606 626 1 607 627 1 608 628 1
		 609 629 1 610 630 1 611 631 1 612 632 1 613 633 1 614 634 1 615 635 1 616 636 1 617 637 1
		 618 638 1 619 639 1 620 240 1 621 241 1 622 242 1 623 243 1 624 244 1 625 245 1 626 246 1
		 627 247 1 628 248 1 629 249 1 630 250 1 631 251 1 632 252 1 633 253 1 634 254 1 635 255 1
		 636 256 1 637 257 1 638 258 1 639 259 1 640 660 1 641 679 1 642 678 1 643 677 1 644 676 1
		 645 675 1 646 674 1 647 673 1 648 672 1 649 671 1 650 670 1 651 669 1 652 668 1 653 667 1
		 654 666 1 655 665 1 656 664 1 657 663 1 658 662 1 659 661 1 640 641 1 641 642 1 642 643 1
		 643 644 1 644 645 1 645 646 1 646 647 1 647 648 1 648 649 1 649 650 1 650 651 1 651 652 1
		 652 653 1 653 654 1 654 655 1 655 656 1 656 657 1 657 658 1 658 659 1 659 640 1 660 460 1
		 661 461 1 662 462 1 663 463 1 664 464 1 665 465 1 666 466 1 667 467 1;
	setAttr ".ed[1328:1493]" 668 468 1 669 469 1 670 470 1 671 471 1 672 472 1 673 473 1
		 674 474 1 675 475 1 676 476 1 677 477 1 678 478 1 679 479 1 660 661 1 661 662 1 662 663 1
		 663 664 1 664 665 1 665 666 1 666 667 1 667 668 1 668 669 1 669 670 1 670 671 1 671 672 1
		 672 673 1 673 674 1 674 675 1 675 676 1 676 677 1 677 678 1 678 679 1 679 660 1 680 500 1
		 681 519 1 682 518 1 683 517 1 684 516 1 685 515 1 686 514 1 687 513 1 688 512 1 689 511 1
		 690 510 1 691 509 1 692 508 1 693 507 1 694 506 1 695 505 1 696 504 1 697 503 1 698 502 1
		 699 501 1 680 681 1 681 682 1 682 683 1 683 684 1 684 685 1 685 686 1 686 687 1 687 688 1
		 688 689 1 689 690 1 690 691 1 691 692 1 692 693 1 693 694 1 694 695 1 695 696 1 696 697 1
		 697 698 1 698 699 1 699 680 1 700 712 0 702 716 0 704 715 0 706 713 0 700 724 0 701 727 0
		 702 704 0 703 705 0 704 711 0 705 710 0 706 700 0 707 701 0 708 702 0 709 703 0 710 752 0
		 711 761 0 708 717 0 709 710 1 710 718 1 711 708 1 712 720 0 713 719 0 714 711 1 715 723 0
		 716 722 1 717 721 0 712 713 1 713 730 1 714 715 1 715 716 1 716 717 0 717 757 0 718 714 1
		 719 707 0 720 701 0 721 709 0 722 703 0 723 705 0 718 763 1 719 720 1 720 726 1 721 722 0
		 722 723 1 723 718 1 724 760 1 725 712 1 726 721 0 727 753 0 728 707 0 729 719 1 730 762 1
		 731 706 0 724 725 0 725 726 1 726 727 0 727 728 1 728 729 1 729 730 1 730 731 1 731 724 1
		 726 732 0 721 733 0 732 733 0 727 734 0 732 734 0 709 735 0 734 735 0 733 735 0 732 736 0
		 733 737 0 736 756 0 734 738 0 736 738 0 735 739 0 738 764 0 737 739 0 716 740 0 717 741 0
		 740 741 0 721 742 0 741 742 0 722 743 0 742 743 0 740 743 0 724 744 0 725 745 0 744 745 0
		 717 746 0 746 758 0 708 747 0 747 746 0 744 759 0 736 748 0 737 749 0;
	setAttr ".ed[1494:1659]" 748 755 0 738 750 0 748 750 0 739 751 0 750 754 0 749 751 0
		 752 728 0 753 709 0 754 751 0 755 749 0 756 737 0 757 725 0 758 745 0 759 747 0 760 708 1
		 761 731 0 762 714 1 763 729 1 752 753 1 754 755 1 755 756 1 757 758 1 758 759 1 759 760 1
		 760 761 1 761 762 1 762 763 1 763 752 1 764 739 0 764 754 1 708 765 0 717 766 0 765 766 0
		 716 767 0 767 766 0 702 768 0 768 767 0 765 768 0 765 769 0 766 770 0 769 770 0 767 771 0
		 771 770 0 768 772 0 772 771 0 769 772 0 721 773 0 722 774 0 773 774 0 709 775 0 773 775 0
		 703 776 1 775 776 0 774 776 0 777 778 0 778 779 0 779 780 0 780 781 0 781 782 0 782 783 0
		 783 784 0 784 785 0 785 786 0 786 787 0 787 788 0 788 789 0 789 790 0 790 791 0 791 792 0
		 792 793 0 793 794 0 794 795 0 795 796 0 796 777 0 797 798 0 798 799 0 799 800 0 800 801 0
		 801 802 0 802 803 0 803 804 0 804 805 0 805 806 0 806 807 0 807 808 0 808 809 0 809 810 0
		 810 811 0 811 812 0 812 813 0 813 814 0 814 815 0 815 816 0 816 797 0 817 818 0 818 819 0
		 819 820 0 820 821 0 821 822 0 822 823 0 823 824 0 824 825 0 825 826 0 826 827 0 827 828 0
		 828 829 0 829 830 0 830 831 0 831 832 0 832 833 0 833 834 0 834 835 0 835 836 0 836 817 0
		 837 838 0 838 839 0 839 840 0 840 841 0 841 842 0 842 843 0 843 844 0 844 845 0 845 846 0
		 846 847 0 847 848 0 848 849 0 849 850 0 850 851 0 851 852 0 852 853 0 853 854 0 854 855 0
		 855 856 0 856 837 0 777 937 1 778 956 1 779 955 1 780 954 1 781 953 1 782 952 1 783 951 1
		 784 950 1 785 949 1 786 948 1 787 947 1 788 946 1 789 945 1 790 944 1 791 943 1 792 942 1
		 793 941 1 794 940 1 795 939 1 796 938 1 797 817 1 798 818 1 799 819 1 800 820 1 801 821 1
		 802 822 1 803 823 1 804 824 1 805 825 1 806 826 1 807 827 1 808 828 1;
	setAttr ".ed[1660:1825]" 809 829 1 810 830 1 811 831 1 812 832 1 813 833 1 814 834 1
		 815 835 1 816 836 1 817 897 1 818 916 1 819 915 1 820 914 1 821 913 1 822 912 1 823 911 1
		 824 910 1 825 909 1 826 908 1 827 907 1 828 906 1 829 905 1 830 904 1 831 903 1 832 902 1
		 833 901 1 834 900 1 835 899 1 836 898 1 837 777 1 838 778 1 839 779 1 840 780 1 841 781 1
		 842 782 1 843 783 1 844 784 1 845 785 1 846 786 1 847 787 1 848 788 1 849 789 1 850 790 1
		 851 791 1 852 792 1 853 793 1 854 794 1 855 795 1 856 796 1 857 977 1 858 978 1 859 979 1
		 860 980 1 861 981 1 862 982 1 863 983 1 864 984 1 865 985 1 866 986 1 867 987 1 868 988 1
		 869 989 1 870 990 1 871 991 1 872 992 1 873 993 1 874 994 1 875 995 1 876 996 1 857 858 1
		 858 859 1 859 860 1 860 861 1 861 862 1 862 863 1 863 864 1 864 865 1 865 866 1 866 867 1
		 867 868 1 868 869 1 869 870 1 870 871 1 871 872 1 872 873 1 873 874 1 874 875 1 875 876 1
		 876 857 1 877 837 1 878 838 1 879 839 1 880 840 1 881 841 1 882 842 1 883 843 1 884 844 1
		 885 845 1 886 846 1 887 847 1 888 848 1 889 849 1 890 850 1 891 851 1 892 852 1 893 853 1
		 894 854 1 895 855 1 896 856 1 877 878 1 878 879 1 879 880 1 880 881 1 881 882 1 882 883 1
		 883 884 1 884 885 1 885 886 1 886 887 1 887 888 1 888 889 1 889 890 1 890 891 1 891 892 1
		 892 893 1 893 894 1 894 895 1 895 896 1 896 877 1 897 857 1 898 858 1 899 859 1 900 860 1
		 901 861 1 902 862 1 903 863 1 904 864 1 905 865 1 906 866 1 907 867 1 908 868 1 909 869 1
		 910 870 1 911 871 1 912 872 1 913 873 1 914 874 1 915 875 1 916 876 1 897 898 1 898 899 1
		 899 900 1 900 901 1 901 902 1 902 903 1 903 904 1 904 905 1 905 906 1 906 907 1 907 908 1
		 908 909 1 909 910 1 910 911 1 911 912 1 912 913 1 913 914 1 914 915 1;
	setAttr ".ed[1826:1991]" 915 916 1 916 897 1 917 957 1 918 976 1 919 975 1 920 974 1
		 921 973 1 922 972 1 923 971 1 924 970 1 925 969 1 926 968 1 927 967 1 928 966 1 929 965 1
		 930 964 1 931 963 1 932 962 1 933 961 1 934 960 1 935 959 1 936 958 1 917 918 1 918 919 1
		 919 920 1 920 921 1 921 922 1 922 923 1 923 924 1 924 925 1 925 926 1 926 927 1 927 928 1
		 928 929 1 929 930 1 930 931 1 931 932 1 932 933 1 933 934 1 934 935 1 935 936 1 936 917 1
		 937 997 1 938 1016 1 939 1015 1 940 1014 1 941 1013 1 942 1012 1 943 1011 1 944 1010 1
		 945 1009 1 946 1008 1 947 1007 1 948 1006 1 949 1005 1 950 1004 1 951 1003 1 952 1002 1
		 953 1001 1 954 1000 1 955 999 1 956 998 1 937 938 1 938 939 1 939 940 1 940 941 1
		 941 942 1 942 943 1 943 944 1 944 945 1 945 946 1 946 947 1 947 948 1 948 949 1 949 950 1
		 950 951 1 951 952 1 952 953 1 953 954 1 954 955 1 955 956 1 956 937 1 957 797 1 958 798 1
		 959 799 1 960 800 1 961 801 1 962 802 1 963 803 1 964 804 1 965 805 1 966 806 1 967 807 1
		 968 808 1 969 809 1 970 810 1 971 811 1 972 812 1 973 813 1 974 814 1 975 815 1 976 816 1
		 957 958 1 958 959 1 959 960 1 960 961 1 961 962 1 962 963 1 963 964 1 964 965 1 965 966 1
		 966 967 1 967 968 1 968 969 1 969 970 1 970 971 1 971 972 1 972 973 1 973 974 1 974 975 1
		 975 976 1 976 957 1 977 877 1 978 896 1 979 895 1 980 894 1 981 893 1 982 892 1 983 891 1
		 984 890 1 985 889 1 986 888 1 987 887 1 988 886 1 989 885 1 990 884 1 991 883 1 992 882 1
		 993 881 1 994 880 1 995 879 1 996 878 1 977 978 1 978 979 1 979 980 1 980 981 1 981 982 1
		 982 983 1 983 984 1 984 985 1 985 986 1 986 987 1 987 988 1 988 989 1 989 990 1 990 991 1
		 991 992 1 992 993 1 993 994 1 994 995 1 995 996 1 996 977 1 997 917 1 998 936 1 999 935 1
		 1000 934 1;
	setAttr ".ed[1992:2157]" 1001 933 1 1002 932 1 1003 931 1 1004 930 1 1005 929 1
		 1006 928 1 1007 927 1 1008 926 1 1009 925 1 1010 924 1 1011 923 1 1012 922 1 1013 921 1
		 1014 920 1 1015 919 1 1016 918 1 997 998 1 998 999 1 999 1000 1 1000 1001 1 1001 1002 1
		 1002 1003 1 1003 1004 1 1004 1005 1 1005 1006 1 1006 1007 1 1007 1008 1 1008 1009 1
		 1009 1010 1 1010 1011 1 1011 1012 1 1012 1013 1 1013 1014 1 1014 1015 1 1015 1016 1
		 1016 997 1 1017 1018 0 1019 1060 1 1021 1059 1 1023 1024 0 1017 1025 0 1018 1026 0
		 1019 1063 1 1020 1064 1 1021 1049 0 1022 1050 0 1023 1017 0 1024 1018 0 1025 1032 0
		 1026 1031 0 1027 1024 0 1028 1023 0 1025 1026 1 1026 1027 1 1027 1028 1 1028 1025 1
		 1029 1028 0 1030 1027 0 1031 1035 0 1032 1036 0 1029 1030 1 1030 1031 1 1031 1032 1
		 1032 1029 1 1033 1029 0 1034 1030 0 1035 1039 0 1036 1040 0 1033 1034 1 1034 1035 1
		 1035 1036 1 1036 1033 1 1037 1033 0 1038 1034 0 1039 1043 0 1040 1044 0 1037 1038 1
		 1038 1039 1 1039 1040 1 1040 1037 1 1041 1037 0 1042 1038 0 1043 1047 0 1044 1048 0
		 1041 1042 1 1042 1043 1 1043 1044 1 1044 1041 1 1045 1041 0 1046 1042 0 1047 1051 0
		 1048 1052 0 1045 1046 1 1046 1047 1 1047 1048 1 1048 1045 1 1049 1045 0 1050 1046 0
		 1051 1020 0 1052 1019 0 1049 1050 1 1050 1051 1 1051 1052 1 1052 1049 1 1053 1057 1
		 1054 1058 1 1055 1062 1 1056 1061 1 1057 1022 1 1058 1020 1 1059 1053 1 1060 1054 1
		 1061 1021 1 1062 1022 1 1063 1056 1 1064 1055 1 1055 1065 1 1065 1066 1 1066 1067 1
		 1064 1068 1 1067 1068 1 1068 1065 0 1069 1070 1 1070 1071 1 1072 1071 1 1072 1069 1
		 1057 1073 1 1073 1074 1 1062 1075 1 1074 1075 1 1022 1076 0 1075 1076 0 1073 1076 0
		 1059 1077 1 1077 1078 1 1078 1079 1 1053 1080 1 1080 1079 1 1077 1080 0 1079 1074 1
		 1080 1073 0 1071 1067 1 1066 1072 1 1061 1081 1 1081 1078 1 1021 1082 0 1082 1077 0
		 1081 1082 0 1063 1083 1 1083 1070 1 1056 1084 1 1069 1084 1 1083 1084 0 1078 1069 1
		 1084 1081 0 1079 1072 1 1074 1066 1 1065 1075 0 1019 1085 0 1060 1086 1 1085 1086 0
		 1070 1086 1 1085 1083 0 1054 1087 1 1086 1087 0 1071 1087 1;
	setAttr ".ed[2158:2323]" 1058 1088 1 1067 1088 1 1087 1088 0 1020 1089 0 1088 1089 0
		 1089 1068 0 1090 1091 0 1092 1093 0 1094 1095 0 1096 1097 0 1090 1092 0 1091 1093 0
		 1092 1094 0 1093 1095 0 1094 1096 0 1095 1097 0 1096 1090 0 1097 1091 0 1098 1099 0
		 1100 1101 0 1102 1103 0 1104 1105 0 1098 1100 0 1099 1101 0 1100 1102 0 1101 1103 0
		 1102 1104 0 1103 1105 0 1104 1098 0 1105 1099 0 1106 1107 0 1108 1109 0 1110 1111 0
		 1112 1113 0 1106 1108 0 1107 1109 0 1108 1110 0 1109 1111 0 1110 1112 0 1111 1113 0
		 1112 1106 0 1113 1107 0 1114 1115 0 1116 1157 1 1118 1156 1 1120 1121 0 1114 1122 0
		 1115 1123 0 1116 1160 1 1117 1161 1 1118 1146 0 1119 1147 0 1120 1114 0 1121 1115 0
		 1122 1129 0 1123 1128 0 1124 1121 0 1125 1120 0 1122 1123 1 1123 1124 1 1124 1125 1
		 1125 1122 1 1126 1125 0 1127 1124 0 1128 1132 0 1129 1133 0 1126 1127 1 1127 1128 1
		 1128 1129 1 1129 1126 1 1130 1126 0 1131 1127 0 1132 1136 0 1133 1137 0 1130 1131 1
		 1131 1132 1 1132 1133 1 1133 1130 1 1134 1130 0 1135 1131 0 1136 1140 0 1137 1141 0
		 1134 1135 1 1135 1136 1 1136 1137 1 1137 1134 1 1138 1134 0 1139 1135 0 1140 1144 0
		 1141 1145 0 1138 1139 1 1139 1140 1 1140 1141 1 1141 1138 1 1142 1138 0 1143 1139 0
		 1144 1148 0 1145 1149 0 1142 1143 1 1143 1144 1 1144 1145 1 1145 1142 1 1146 1142 0
		 1147 1143 0 1148 1117 0 1149 1116 0 1146 1147 1 1147 1148 1 1148 1149 1 1149 1146 1
		 1150 1154 1 1151 1155 1 1152 1159 1 1153 1158 1 1154 1119 1 1155 1117 1 1156 1150 1
		 1157 1151 1 1158 1118 1 1159 1119 1 1160 1153 1 1161 1152 1 1152 1162 1 1162 1163 1
		 1163 1164 1 1161 1165 1 1164 1165 1 1165 1162 0 1166 1167 1 1167 1168 1 1169 1168 1
		 1169 1166 1 1154 1170 1 1170 1171 1 1159 1172 1 1171 1172 1 1119 1173 0 1172 1173 0
		 1170 1173 0 1156 1174 1 1174 1175 1 1175 1176 1 1150 1177 1 1177 1176 1 1174 1177 0
		 1176 1171 1 1177 1170 0 1168 1164 1 1163 1169 1 1158 1178 1 1178 1175 1 1118 1179 0
		 1179 1174 0 1178 1179 0 1160 1180 1 1180 1167 1 1153 1181 1 1166 1181 1 1180 1181 0
		 1175 1166 1 1181 1178 0 1176 1169 1 1171 1163 1 1162 1172 0 1116 1182 0 1157 1183 1;
	setAttr ".ed[2324:2489]" 1182 1183 0 1167 1183 1 1182 1180 0 1151 1184 1 1183 1184 0
		 1168 1184 1 1155 1185 1 1164 1185 1 1184 1185 0 1117 1186 0 1185 1186 0 1186 1165 0
		 1187 1188 0 1189 1190 0 1191 1192 0 1193 1194 0 1187 1189 0 1188 1190 0 1189 1191 0
		 1190 1192 0 1191 1193 0 1192 1194 0 1193 1187 0 1194 1188 0 1195 1196 0 1197 1198 0
		 1199 1200 0 1201 1202 0 1195 1197 0 1196 1198 0 1197 1199 0 1198 1200 0 1199 1201 0
		 1200 1202 0 1201 1195 0 1202 1196 0 1203 1204 0 1205 1206 0 1207 1208 0 1209 1210 0
		 1203 1205 0 1204 1206 0 1205 1207 0 1206 1208 0 1207 1209 0 1208 1210 0 1209 1203 0
		 1210 1204 0 1211 1212 0 1213 1214 0 1215 1216 0 1217 1218 0 1211 1213 0 1212 1214 0
		 1213 1215 0 1214 1216 0 1215 1217 0 1216 1218 0 1217 1211 0 1218 1212 0 1219 1220 0
		 1221 1222 0 1223 1224 0 1225 1226 0 1219 1221 0 1220 1222 0 1221 1223 0 1222 1224 0
		 1223 1225 0 1224 1226 0 1225 1219 0 1226 1220 0 1227 1228 0 1229 1230 0 1231 1232 0
		 1233 1234 0 1227 1229 0 1228 1230 0 1229 1231 0 1230 1232 0 1231 1233 0 1232 1234 0
		 1233 1227 0 1234 1228 0 1235 1236 0 1237 1238 0 1239 1240 0 1241 1242 0 1235 1237 0
		 1236 1238 0 1237 1239 0 1238 1240 0 1239 1241 0 1240 1242 0 1241 1235 0 1242 1236 0
		 1243 1244 0 1245 1246 0 1247 1248 0 1249 1250 0 1243 1245 0 1244 1246 0 1245 1247 0
		 1246 1248 0 1247 1249 0 1248 1250 0 1249 1243 0 1250 1244 0 1251 1252 0 1253 1254 0
		 1255 1256 0 1257 1258 0 1251 1253 0 1252 1254 0 1253 1255 0 1254 1256 0 1255 1257 0
		 1256 1258 0 1257 1251 0 1258 1252 0 1259 1260 0 1261 1262 0 1263 1264 0 1265 1266 0
		 1259 1261 0 1260 1262 0 1261 1263 0 1262 1264 0 1263 1265 0 1264 1266 0 1265 1259 0
		 1266 1260 0 1267 1268 0 1269 1270 0 1271 1272 0 1273 1274 0 1267 1269 0 1268 1270 0
		 1269 1271 0 1270 1272 0 1271 1273 0 1272 1274 0 1273 1267 0 1274 1268 0 1275 1276 0
		 1277 1278 0 1279 1280 0 1281 1282 0 1275 1277 0 1276 1278 0 1277 1279 0 1278 1280 0
		 1279 1281 0 1280 1282 0 1281 1275 0 1282 1276 0 1283 1284 0 1285 1286 0 1287 1288 0
		 1289 1290 0 1283 1285 0 1284 1286 0 1285 1287 0 1286 1288 0 1287 1289 0 1288 1290 0;
	setAttr ".ed[2490:2655]" 1289 1283 0 1290 1284 0 1291 1292 0 1293 1294 0 1295 1296 0
		 1297 1298 0 1291 1293 0 1292 1294 0 1293 1295 0 1294 1296 0 1295 1297 0 1296 1298 0
		 1297 1291 0 1298 1292 0 1299 1300 0 1301 1302 0 1303 1304 0 1305 1306 0 1299 1301 0
		 1300 1302 0 1301 1303 0 1302 1304 0 1303 1305 0 1304 1306 0 1305 1299 0 1306 1300 0
		 1307 1308 0 1309 1310 0 1311 1312 0 1313 1314 0 1307 1309 0 1308 1310 0 1309 1311 0
		 1310 1312 0 1311 1313 0 1312 1314 0 1313 1307 0 1314 1308 0 1315 1316 0 1317 1318 0
		 1319 1320 0 1321 1322 0 1315 1317 0 1316 1318 0 1317 1319 0 1318 1320 0 1319 1321 0
		 1320 1322 0 1321 1315 0 1322 1316 0 1323 1324 0 1325 1326 0 1327 1328 0 1329 1330 0
		 1323 1325 0 1324 1326 0 1325 1327 0 1326 1328 0 1327 1329 0 1328 1330 0 1329 1323 0
		 1330 1324 0 1331 1332 0 1333 1334 0 1335 1336 0 1337 1338 0 1331 1333 0 1332 1334 0
		 1333 1335 0 1334 1336 0 1335 1337 0 1336 1338 0 1337 1331 0 1338 1332 0 1339 1340 0
		 1341 1342 0 1343 1344 0 1345 1346 0 1339 1341 0 1340 1342 0 1341 1343 0 1342 1344 0
		 1343 1345 0 1344 1346 0 1345 1339 0 1346 1340 0 1347 1348 0 1349 1350 0 1351 1352 0
		 1353 1354 0 1347 1349 0 1348 1350 0 1349 1351 0 1350 1352 0 1351 1353 0 1352 1354 0
		 1353 1347 0 1354 1348 0 1355 1356 0 1357 1358 0 1359 1360 0 1361 1362 0 1355 1357 0
		 1356 1358 0 1357 1359 0 1358 1360 0 1359 1361 0 1360 1362 0 1361 1355 0 1362 1356 0
		 1363 1364 0 1365 1366 0 1367 1368 0 1369 1370 0 1363 1365 0 1364 1366 0 1365 1367 0
		 1366 1368 0 1367 1369 0 1368 1370 0 1369 1363 0 1370 1364 0 1371 1372 0 1373 1374 0
		 1375 1376 0 1377 1378 0 1371 1373 0 1372 1374 0 1373 1375 0 1374 1376 0 1375 1377 0
		 1376 1378 0 1377 1371 0 1378 1372 0 1379 1380 0 1381 1382 0 1383 1384 0 1385 1386 0
		 1379 1381 0 1380 1382 0 1381 1383 0 1382 1384 0 1383 1385 0 1384 1386 0 1385 1379 0
		 1386 1380 0 1387 1388 0 1389 1390 0 1391 1392 0 1393 1394 0 1387 1389 0 1388 1390 0
		 1389 1391 0 1390 1392 0 1391 1393 0 1392 1394 0 1393 1387 0 1394 1388 0 1395 1396 0
		 1397 1398 0 1399 1400 0 1401 1402 0 1395 1397 0 1396 1398 0 1397 1399 0 1398 1400 0;
	setAttr ".ed[2656:2821]" 1399 1401 0 1400 1402 0 1401 1395 0 1402 1396 0 1403 1426 0
		 1405 1467 0 1407 1475 0 1409 1427 0 1403 1419 0 1404 1420 0 1405 1463 0 1406 1471 0
		 1407 1414 0 1408 1413 0 1409 1423 0 1410 1482 0 1411 1405 0 1412 1406 0 1413 1417 0
		 1414 1418 0 1411 1466 1 1412 1470 1 1413 1474 1 1414 1462 1 1415 1411 0 1416 1412 0
		 1417 1421 0 1418 1422 0 1415 1465 1 1416 1469 1 1417 1473 1 1418 1461 1 1419 1415 0
		 1420 1416 0 1421 1410 0 1422 1409 0 1419 1464 1 1420 1468 1 1421 1472 1 1422 1460 1
		 1423 1403 0 1424 1483 0 1423 1444 1 1426 1404 0 1425 1429 0 1427 1410 0 1427 1446 1
		 1428 1425 1 1429 1442 1 1430 1480 1 1431 1425 0 1428 1432 1 1429 1433 0 1430 1434 1
		 1431 1435 1 1432 1429 1 1403 1451 1 1433 1430 1 1404 1449 1 1434 1431 0 1410 1447 1
		 1435 1428 1 1409 1445 1 1436 1477 1 1437 1476 1 1438 1431 1 1439 1481 1 1440 1452 1
		 1441 1479 1 1442 1458 1 1443 1478 1 1436 1437 1 1437 1438 1 1438 1439 1 1439 1440 1
		 1440 1441 1 1441 1442 1 1442 1443 1 1443 1436 1 1444 1456 1 1445 1455 1 1446 1454 1
		 1447 1453 1 1448 1424 1 1449 1459 1 1450 1426 1 1451 1457 1 1444 1445 1 1445 1446 1
		 1446 1447 1 1447 1448 1 1448 1449 1 1449 1450 1 1450 1451 1 1451 1444 1 1452 1484 1
		 1453 1439 1 1454 1438 1 1455 1437 1 1456 1436 1 1457 1443 1 1458 1450 1 1459 1441 1
		 1452 1453 1 1453 1454 1 1454 1455 1 1455 1456 1 1456 1457 1 1457 1458 1 1458 1459 1
		 1459 1452 1 1460 1419 1 1461 1415 1 1462 1411 1 1463 1407 0 1423 1460 1 1460 1461 1
		 1461 1462 1 1462 1463 1 1464 1420 1 1465 1416 1 1466 1412 1 1467 1406 0 1426 1464 1
		 1464 1465 1 1465 1466 1 1466 1467 1 1468 1421 1 1469 1417 1 1470 1413 1 1471 1408 0
		 1424 1468 1 1468 1469 1 1469 1470 1 1470 1471 1 1472 1422 1 1473 1418 1 1474 1414 1
		 1475 1408 0 1427 1472 1 1472 1473 1 1473 1474 1 1474 1475 1 1476 1435 1 1477 1428 1
		 1478 1432 1 1476 1477 1 1477 1478 1 1479 1433 1 1480 1440 1 1481 1434 1 1479 1480 1
		 1480 1481 1 1453 1448 1 1482 1424 0 1447 1482 1 1482 1448 1 1483 1404 0 1448 1483 1
		 1483 1449 1 1459 1448 1 1484 1448 1 1459 1484 1 1484 1453 1 1433 1485 0 1430 1486 0;
	setAttr ".ed[2822:2940]" 1485 1486 0 1429 1487 0 1487 1485 0 1425 1488 1 1488 1487 0
		 1488 1486 1 1431 1489 0 1489 1488 0 1434 1490 0 1490 1489 0 1486 1490 0 1491 1492 0
		 1493 1494 0 1495 1496 0 1497 1498 0 1491 1493 0 1492 1494 0 1493 1495 0 1494 1496 0
		 1495 1497 0 1496 1498 0 1497 1491 0 1498 1492 0 1499 1500 0 1501 1502 0 1503 1504 0
		 1505 1506 0 1499 1501 0 1500 1502 0 1501 1503 0 1502 1504 0 1503 1505 0 1504 1506 0
		 1505 1499 0 1506 1500 0 1507 1508 0 1509 1510 0 1511 1512 0 1513 1514 0 1507 1509 0
		 1508 1510 0 1509 1511 0 1510 1512 0 1511 1513 0 1512 1514 0 1513 1507 0 1514 1508 0
		 1515 1516 0 1517 1518 0 1519 1520 0 1521 1522 0 1515 1517 0 1516 1518 0 1517 1519 0
		 1518 1520 0 1519 1521 0 1520 1522 0 1521 1515 0 1522 1516 0 1523 1524 0 1525 1526 0
		 1527 1528 0 1529 1530 0 1523 1525 0 1524 1526 0 1525 1527 0 1526 1528 0 1527 1529 0
		 1528 1530 0 1529 1523 0 1530 1524 0 1531 1532 0 1533 1534 0 1535 1536 0 1537 1538 0
		 1531 1533 0 1532 1534 0 1533 1535 0 1534 1536 0 1535 1537 0 1536 1538 0 1537 1531 0
		 1538 1532 0 1539 1540 0 1541 1542 0 1543 1544 0 1545 1546 0 1539 1541 0 1540 1542 0
		 1541 1543 0 1542 1544 0 1543 1545 0 1544 1546 0 1545 1539 0 1546 1540 0 1547 1548 0
		 1549 1550 0 1551 1552 0 1553 1554 0 1547 1549 0 1548 1550 0 1549 1551 0 1550 1552 0
		 1551 1553 0 1552 1554 0 1553 1547 0 1554 1548 0 1555 1556 0 1557 1558 0 1559 1560 0
		 1561 1562 0 1555 1557 0 1556 1558 0 1557 1559 0 1558 1560 0 1559 1561 0 1560 1562 0
		 1561 1555 0 1562 1556 0;
	setAttr -s 1464 -ch 5882 ".fc";
	setAttr ".fc[0:499]" -type "polyFaces" 
		f 4 319 280 380 -300
		mu 0 4 188 168 210 212
		f 4 318 299 381 -299
		mu 0 4 187 188 212 213
		f 4 317 298 382 -298
		mu 0 4 186 187 213 214
		f 4 316 297 383 -297
		mu 0 4 185 186 214 215
		f 4 315 296 384 -296
		mu 0 4 184 185 215 216
		f 4 314 295 385 -295
		mu 0 4 183 184 216 217
		f 4 313 294 386 -294
		mu 0 4 182 183 217 218
		f 4 312 293 387 -293
		mu 0 4 181 182 218 219
		f 4 311 292 388 -292
		mu 0 4 180 181 219 220
		f 4 310 291 389 -291
		mu 0 4 179 180 220 221
		f 4 309 290 390 -290
		mu 0 4 178 179 221 222
		f 4 308 289 391 -289
		mu 0 4 177 178 222 223
		f 4 307 288 392 -288
		mu 0 4 176 177 223 224
		f 4 306 287 393 -287
		mu 0 4 175 176 224 225
		f 4 305 286 394 -286
		mu 0 4 174 175 225 226
		f 4 304 285 395 -285
		mu 0 4 173 174 226 227
		f 4 303 284 396 -284
		mu 0 4 172 173 227 228
		f 4 302 283 397 -283
		mu 0 4 171 172 228 229
		f 4 301 282 398 -282
		mu 0 4 170 171 229 230
		f 4 300 281 399 -281
		mu 0 4 169 170 230 211
		f 4 -21 100 40 -102
		mu 0 4 22 21 42 43
		f 4 -22 101 41 -103
		mu 0 4 23 22 43 44
		f 4 -23 102 42 -104
		mu 0 4 24 23 44 45
		f 4 -24 103 43 -105
		mu 0 4 25 24 45 46
		f 4 -25 104 44 -106
		mu 0 4 26 25 46 47
		f 4 -26 105 45 -107
		mu 0 4 27 26 47 48
		f 4 -27 106 46 -108
		mu 0 4 28 27 48 49
		f 4 -28 107 47 -109
		mu 0 4 29 28 49 50
		f 4 -29 108 48 -110
		mu 0 4 30 29 50 51
		f 4 -30 109 49 -111
		mu 0 4 31 30 51 52
		f 4 -31 110 50 -112
		mu 0 4 32 31 52 53
		f 4 -32 111 51 -113
		mu 0 4 33 32 53 54
		f 4 -33 112 52 -114
		mu 0 4 34 33 54 55
		f 4 -34 113 53 -115
		mu 0 4 35 34 55 56
		f 4 -35 114 54 -116
		mu 0 4 36 35 56 57
		f 4 -36 115 55 -117
		mu 0 4 37 36 57 58
		f 4 -37 116 56 -118
		mu 0 4 38 37 58 59
		f 4 -38 117 57 -119
		mu 0 4 39 38 59 60
		f 4 -39 118 58 -120
		mu 0 4 40 39 60 61
		f 4 -40 119 59 -101
		mu 0 4 41 40 61 62
		f 4 439 400 220 -420
		mu 0 4 251 231 126 128
		f 4 438 419 221 -419
		mu 0 4 250 251 128 129
		f 4 437 418 222 -418
		mu 0 4 249 250 129 130
		f 4 436 417 223 -417
		mu 0 4 248 249 130 131
		f 4 435 416 224 -416
		mu 0 4 247 248 131 132
		f 4 434 415 225 -415
		mu 0 4 246 247 132 133
		f 4 433 414 226 -414
		mu 0 4 245 246 133 134
		f 4 432 413 227 -413
		mu 0 4 244 245 134 135
		f 4 431 412 228 -412
		mu 0 4 243 244 135 136
		f 4 430 411 229 -411
		mu 0 4 242 243 136 137
		f 4 429 410 230 -410
		mu 0 4 241 242 137 138
		f 4 428 409 231 -409
		mu 0 4 240 241 138 139
		f 4 427 408 232 -408
		mu 0 4 239 240 139 140
		f 4 426 407 233 -407
		mu 0 4 238 239 140 141
		f 4 425 406 234 -406
		mu 0 4 237 238 141 142
		f 4 424 405 235 -405
		mu 0 4 236 237 142 143
		f 4 423 404 236 -404
		mu 0 4 235 236 143 144
		f 4 422 403 237 -403
		mu 0 4 234 235 144 145
		f 4 421 402 238 -402
		mu 0 4 233 234 145 146
		f 4 420 401 239 -401
		mu 0 4 232 233 146 127
		f 4 -61 140 0 -142
		mu 0 4 64 63 84 85
		f 4 -62 141 1 -143
		mu 0 4 65 64 85 86
		f 4 -63 142 2 -144
		mu 0 4 66 65 86 87
		f 4 -64 143 3 -145
		mu 0 4 67 66 87 88
		f 4 -65 144 4 -146
		mu 0 4 68 67 88 89
		f 4 -66 145 5 -147
		mu 0 4 69 68 89 90
		f 4 -67 146 6 -148
		mu 0 4 70 69 90 91
		f 4 -68 147 7 -149
		mu 0 4 71 70 91 92
		f 4 -69 148 8 -150
		mu 0 4 72 71 92 93
		f 4 -70 149 9 -151
		mu 0 4 73 72 93 94
		f 4 -71 150 10 -152
		mu 0 4 74 73 94 95
		f 4 -72 151 11 -153
		mu 0 4 75 74 95 96
		f 4 -73 152 12 -154
		mu 0 4 76 75 96 97
		f 4 -74 153 13 -155
		mu 0 4 77 76 97 98
		f 4 -75 154 14 -156
		mu 0 4 78 77 98 99
		f 4 -76 155 15 -157
		mu 0 4 79 78 99 100
		f 4 -77 156 16 -158
		mu 0 4 80 79 100 101
		f 4 -78 157 17 -159
		mu 0 4 81 80 101 102
		f 4 -79 158 18 -160
		mu 0 4 82 81 102 103
		f 4 -80 159 19 -141
		mu 0 4 83 82 103 104
		f 4 260 241 -181 -241
		mu 0 4 148 149 107 106
		f 4 261 242 -182 -242
		mu 0 4 149 150 108 107
		f 4 262 243 -183 -243
		mu 0 4 150 151 109 108
		f 4 263 244 -184 -244
		mu 0 4 151 152 110 109
		f 4 264 245 -185 -245
		mu 0 4 152 153 111 110
		f 4 265 246 -186 -246
		mu 0 4 153 154 112 111
		f 4 266 247 -187 -247
		mu 0 4 154 155 113 112
		f 4 267 248 -188 -248
		mu 0 4 155 156 114 113
		f 4 268 249 -189 -249
		mu 0 4 156 157 115 114
		f 4 269 250 -190 -250
		mu 0 4 157 158 116 115
		f 4 270 251 -191 -251
		mu 0 4 158 159 117 116
		f 4 271 252 -192 -252
		mu 0 4 159 160 118 117
		f 4 272 253 -193 -253
		mu 0 4 160 161 119 118
		f 4 273 254 -194 -254
		mu 0 4 161 162 120 119
		f 4 274 255 -195 -255
		mu 0 4 162 163 121 120
		f 4 275 256 -196 -256
		mu 0 4 163 164 122 121
		f 4 276 257 -197 -257
		mu 0 4 164 165 123 122
		f 4 277 258 -198 -258
		mu 0 4 165 166 124 123
		f 4 278 259 -199 -259
		mu 0 4 166 167 125 124
		f 4 279 240 -200 -260
		mu 0 4 167 147 105 125
		f 4 -221 200 60 -202
		mu 0 4 128 126 63 64
		f 4 -222 201 61 -203
		mu 0 4 129 128 64 65
		f 4 -223 202 62 -204
		mu 0 4 130 129 65 66
		f 4 -224 203 63 -205
		mu 0 4 131 130 66 67
		f 4 -225 204 64 -206
		mu 0 4 132 131 67 68
		f 4 -226 205 65 -207
		mu 0 4 133 132 68 69
		f 4 -227 206 66 -208
		mu 0 4 134 133 69 70
		f 4 -228 207 67 -209
		mu 0 4 135 134 70 71
		f 4 -229 208 68 -210
		mu 0 4 136 135 71 72
		f 4 -230 209 69 -211
		mu 0 4 137 136 72 73
		f 4 -231 210 70 -212
		mu 0 4 138 137 73 74
		f 4 -232 211 71 -213
		mu 0 4 139 138 74 75
		f 4 -233 212 72 -214
		mu 0 4 140 139 75 76
		f 4 -234 213 73 -215
		mu 0 4 141 140 76 77
		f 4 -235 214 74 -216
		mu 0 4 142 141 77 78
		f 4 -236 215 75 -217
		mu 0 4 143 142 78 79
		f 4 -237 216 76 -218
		mu 0 4 144 143 79 80
		f 4 -238 217 77 -219
		mu 0 4 145 144 80 81
		f 4 -239 218 78 -220
		mu 0 4 146 145 81 82
		f 4 -240 219 79 -201
		mu 0 4 127 146 82 83
		f 4 -60 139 -261 -121
		mu 0 4 62 61 149 148
		f 4 -59 138 -262 -140
		mu 0 4 61 60 150 149
		f 4 -58 137 -263 -139
		mu 0 4 60 59 151 150
		f 4 -57 136 -264 -138
		mu 0 4 59 58 152 151
		f 4 -56 135 -265 -137
		mu 0 4 58 57 153 152
		f 4 -55 134 -266 -136
		mu 0 4 57 56 154 153
		f 4 -54 133 -267 -135
		mu 0 4 56 55 155 154
		f 4 -53 132 -268 -134
		mu 0 4 55 54 156 155
		f 4 -52 131 -269 -133
		mu 0 4 54 53 157 156
		f 4 -51 130 -270 -132
		mu 0 4 53 52 158 157
		f 4 -50 129 -271 -131
		mu 0 4 52 51 159 158
		f 4 -49 128 -272 -130
		mu 0 4 51 50 160 159
		f 4 -48 127 -273 -129
		mu 0 4 50 49 161 160
		f 4 -47 126 -274 -128
		mu 0 4 49 48 162 161
		f 4 -46 125 -275 -127
		mu 0 4 48 47 163 162
		f 4 -45 124 -276 -126
		mu 0 4 47 46 164 163
		f 4 -44 123 -277 -125
		mu 0 4 46 45 165 164
		f 4 -43 122 -278 -124
		mu 0 4 45 44 166 165
		f 4 -42 121 -279 -123
		mu 0 4 44 43 167 166
		f 4 -41 120 -280 -122
		mu 0 4 43 42 147 167
		f 4 340 321 479 -321
		mu 0 4 190 191 272 253
		f 4 341 322 478 -322
		mu 0 4 191 192 271 272
		f 4 342 323 477 -323
		mu 0 4 192 193 270 271
		f 4 343 324 476 -324
		mu 0 4 193 194 269 270
		f 4 344 325 475 -325
		mu 0 4 194 195 268 269
		f 4 345 326 474 -326
		mu 0 4 195 196 267 268
		f 4 346 327 473 -327
		mu 0 4 196 197 266 267
		f 4 347 328 472 -328
		mu 0 4 197 198 265 266
		f 4 348 329 471 -329
		mu 0 4 198 199 264 265
		f 4 349 330 470 -330
		mu 0 4 199 200 263 264
		f 4 350 331 469 -331
		mu 0 4 200 201 262 263
		f 4 351 332 468 -332
		mu 0 4 201 202 261 262
		f 4 352 333 467 -333
		mu 0 4 202 203 260 261
		f 4 353 334 466 -334
		mu 0 4 203 204 259 260
		f 4 354 335 465 -335
		mu 0 4 204 205 258 259
		f 4 355 336 464 -336
		mu 0 4 205 206 257 258
		f 4 356 337 463 -337
		mu 0 4 206 207 256 257
		f 4 357 338 462 -338
		mu 0 4 207 208 255 256
		f 4 358 339 461 -339
		mu 0 4 208 209 254 255
		f 4 359 320 460 -340
		mu 0 4 209 189 252 254
		f 4 -20 99 -341 -81
		mu 0 4 20 19 191 190
		f 4 -19 98 -342 -100
		mu 0 4 19 18 192 191
		f 4 -18 97 -343 -99
		mu 0 4 18 17 193 192
		f 4 -17 96 -344 -98
		mu 0 4 17 16 194 193
		f 4 -16 95 -345 -97
		mu 0 4 16 15 195 194
		f 4 -15 94 -346 -96
		mu 0 4 15 14 196 195
		f 4 -14 93 -347 -95
		mu 0 4 14 13 197 196
		f 4 -13 92 -348 -94
		mu 0 4 13 12 198 197
		f 4 -12 91 -349 -93
		mu 0 4 12 11 199 198
		f 4 -11 90 -350 -92
		mu 0 4 11 10 200 199
		f 4 -10 89 -351 -91
		mu 0 4 10 9 201 200
		f 4 -9 88 -352 -90
		mu 0 4 9 8 202 201
		f 4 -8 87 -353 -89
		mu 0 4 8 7 203 202
		f 4 -7 86 -354 -88
		mu 0 4 7 6 204 203
		f 4 -6 85 -355 -87
		mu 0 4 6 5 205 204
		f 4 -5 84 -356 -86
		mu 0 4 5 4 206 205
		f 4 -4 83 -357 -85
		mu 0 4 4 3 207 206
		f 4 -3 82 -358 -84
		mu 0 4 3 2 208 207
		f 4 -2 81 -359 -83
		mu 0 4 2 1 209 208
		f 4 -1 80 -360 -82
		mu 0 4 1 0 189 209
		f 4 -381 360 20 -362
		mu 0 4 212 210 21 22
		f 4 -382 361 21 -363
		mu 0 4 213 212 22 23
		f 4 -383 362 22 -364
		mu 0 4 214 213 23 24
		f 4 -384 363 23 -365
		mu 0 4 215 214 24 25
		f 4 -385 364 24 -366
		mu 0 4 216 215 25 26
		f 4 -386 365 25 -367
		mu 0 4 217 216 26 27
		f 4 -387 366 26 -368
		mu 0 4 218 217 27 28
		f 4 -388 367 27 -369
		mu 0 4 219 218 28 29
		f 4 -389 368 28 -370
		mu 0 4 220 219 29 30
		f 4 -390 369 29 -371
		mu 0 4 221 220 30 31
		f 4 -391 370 30 -372
		mu 0 4 222 221 31 32
		f 4 -392 371 31 -373
		mu 0 4 223 222 32 33
		f 4 -393 372 32 -374
		mu 0 4 224 223 33 34
		f 4 -394 373 33 -375
		mu 0 4 225 224 34 35
		f 4 -395 374 34 -376
		mu 0 4 226 225 35 36
		f 4 -396 375 35 -377
		mu 0 4 227 226 36 37
		f 4 -397 376 36 -378
		mu 0 4 228 227 37 38
		f 4 -398 377 37 -379
		mu 0 4 229 228 38 39
		f 4 -399 378 38 -380
		mu 0 4 230 229 39 40
		f 4 -400 379 39 -361
		mu 0 4 211 230 40 41
		f 4 180 161 -421 -161
		mu 0 4 106 107 233 232
		f 4 181 162 -422 -162
		mu 0 4 107 108 234 233
		f 4 182 163 -423 -163
		mu 0 4 108 109 235 234
		f 4 183 164 -424 -164
		mu 0 4 109 110 236 235
		f 4 184 165 -425 -165
		mu 0 4 110 111 237 236
		f 4 185 166 -426 -166
		mu 0 4 111 112 238 237
		f 4 186 167 -427 -167
		mu 0 4 112 113 239 238
		f 4 187 168 -428 -168
		mu 0 4 113 114 240 239
		f 4 188 169 -429 -169
		mu 0 4 114 115 241 240
		f 4 189 170 -430 -170
		mu 0 4 115 116 242 241
		f 4 190 171 -431 -171
		mu 0 4 116 117 243 242
		f 4 191 172 -432 -172
		mu 0 4 117 118 244 243
		f 4 192 173 -433 -173
		mu 0 4 118 119 245 244
		f 4 193 174 -434 -174
		mu 0 4 119 120 246 245
		f 4 194 175 -435 -175
		mu 0 4 120 121 247 246
		f 4 195 176 -436 -176
		mu 0 4 121 122 248 247
		f 4 196 177 -437 -177
		mu 0 4 122 123 249 248
		f 4 197 178 -438 -178
		mu 0 4 123 124 250 249
		f 4 198 179 -439 -179
		mu 0 4 124 125 251 250
		f 4 199 160 -440 -180
		mu 0 4 125 105 231 251
		f 4 -461 440 -320 -442
		mu 0 4 254 252 168 188
		f 4 -462 441 -319 -443
		mu 0 4 255 254 188 187
		f 4 -463 442 -318 -444
		mu 0 4 256 255 187 186
		f 4 -464 443 -317 -445
		mu 0 4 257 256 186 185
		f 4 -465 444 -316 -446
		mu 0 4 258 257 185 184
		f 4 -466 445 -315 -447
		mu 0 4 259 258 184 183
		f 4 -467 446 -314 -448
		mu 0 4 260 259 183 182
		f 4 -468 447 -313 -449
		mu 0 4 261 260 182 181
		f 4 -469 448 -312 -450
		mu 0 4 262 261 181 180
		f 4 -470 449 -311 -451
		mu 0 4 263 262 180 179
		f 4 -471 450 -310 -452
		mu 0 4 264 263 179 178
		f 4 -472 451 -309 -453
		mu 0 4 265 264 178 177
		f 4 -473 452 -308 -454
		mu 0 4 266 265 177 176
		f 4 -474 453 -307 -455
		mu 0 4 267 266 176 175
		f 4 -475 454 -306 -456
		mu 0 4 268 267 175 174
		f 4 -476 455 -305 -457
		mu 0 4 269 268 174 173
		f 4 -477 456 -304 -458
		mu 0 4 270 269 173 172
		f 4 -478 457 -303 -459
		mu 0 4 271 270 172 171
		f 4 -479 458 -302 -460
		mu 0 4 272 271 171 170
		f 4 -480 459 -301 -441
		mu 0 4 253 272 170 169
		f 4 -481 880 500 -882
		mu 0 4 273 274 275 276
		f 4 -482 881 501 -883
		mu 0 4 277 273 276 278
		f 4 -483 882 502 -884
		mu 0 4 279 277 278 280
		f 4 -484 883 503 -885
		mu 0 4 281 279 280 282
		f 4 -485 884 504 -886
		mu 0 4 283 281 282 284
		f 4 -486 885 505 -887
		mu 0 4 285 283 284 286
		f 4 -487 886 506 -888
		mu 0 4 287 285 286 288
		f 4 -488 887 507 -889
		mu 0 4 289 287 288 290
		f 4 -489 888 508 -890
		mu 0 4 291 289 290 292
		f 4 -490 889 509 -891
		mu 0 4 293 291 292 294
		f 4 -491 890 510 -892
		mu 0 4 295 293 294 296
		f 4 -492 891 511 -893
		mu 0 4 297 295 296 298
		f 4 -493 892 512 -894
		mu 0 4 299 297 298 300
		f 4 -494 893 513 -895
		mu 0 4 301 299 300 302
		f 4 -495 894 514 -896
		mu 0 4 303 301 302 304
		f 4 -496 895 515 -897
		mu 0 4 305 303 304 306
		f 4 -497 896 516 -898
		mu 0 4 307 305 306 308
		f 4 -498 897 517 -899
		mu 0 4 309 307 308 310
		f 4 -499 898 518 -900
		mu 0 4 311 309 310 312
		f 4 -500 899 519 -881
		mu 0 4 313 311 312 314
		f 4 -501 900 520 -902
		mu 0 4 276 275 315 316
		f 4 -502 901 521 -903
		mu 0 4 278 276 316 317
		f 4 -503 902 522 -904
		mu 0 4 280 278 317 318
		f 4 -504 903 523 -905
		mu 0 4 282 280 318 319
		f 4 -505 904 524 -906
		mu 0 4 284 282 319 320
		f 4 -506 905 525 -907
		mu 0 4 286 284 320 321
		f 4 -507 906 526 -908
		mu 0 4 288 286 321 322
		f 4 -508 907 527 -909
		mu 0 4 290 288 322 323
		f 4 -509 908 528 -910
		mu 0 4 292 290 323 324
		f 4 -510 909 529 -911
		mu 0 4 294 292 324 325
		f 4 -511 910 530 -912
		mu 0 4 296 294 325 326
		f 4 -512 911 531 -913
		mu 0 4 298 296 326 327
		f 4 -513 912 532 -914
		mu 0 4 300 298 327 328
		f 4 -514 913 533 -915
		mu 0 4 302 300 328 329
		f 4 -515 914 534 -916
		mu 0 4 304 302 329 330
		f 4 -516 915 535 -917
		mu 0 4 306 304 330 331
		f 4 -517 916 536 -918
		mu 0 4 308 306 331 332
		f 4 -518 917 537 -919
		mu 0 4 310 308 332 333
		f 4 -519 918 538 -920
		mu 0 4 312 310 333 334
		f 4 -520 919 539 -901
		mu 0 4 314 312 334 335
		f 4 -521 920 540 -922
		mu 0 4 316 315 336 337
		f 4 -522 921 541 -923
		mu 0 4 317 316 337 338
		f 4 -523 922 542 -924
		mu 0 4 318 317 338 339
		f 4 -524 923 543 -925
		mu 0 4 319 318 339 340
		f 4 -525 924 544 -926
		mu 0 4 320 319 340 341
		f 4 -526 925 545 -927
		mu 0 4 321 320 341 342
		f 4 -527 926 546 -928
		mu 0 4 322 321 342 343
		f 4 -528 927 547 -929
		mu 0 4 323 322 343 344
		f 4 -529 928 548 -930
		mu 0 4 324 323 344 345
		f 4 -530 929 549 -931
		mu 0 4 325 324 345 346
		f 4 -531 930 550 -932
		mu 0 4 326 325 346 347
		f 4 -532 931 551 -933
		mu 0 4 327 326 347 348
		f 4 -533 932 552 -934
		mu 0 4 328 327 348 349
		f 4 -534 933 553 -935
		mu 0 4 329 328 349 350
		f 4 -535 934 554 -936
		mu 0 4 330 329 350 351
		f 4 -536 935 555 -937
		mu 0 4 331 330 351 352
		f 4 -537 936 556 -938
		mu 0 4 332 331 352 353
		f 4 -538 937 557 -939
		mu 0 4 333 332 353 354
		f 4 -539 938 558 -940
		mu 0 4 334 333 354 355
		f 4 -540 939 559 -921
		mu 0 4 335 334 355 356
		f 4 -541 940 560 -942
		mu 0 4 337 336 357 358
		f 4 -542 941 561 -943
		mu 0 4 338 337 358 359
		f 4 -543 942 562 -944
		mu 0 4 339 338 359 360
		f 4 -544 943 563 -945
		mu 0 4 340 339 360 361
		f 4 -545 944 564 -946
		mu 0 4 341 340 361 362
		f 4 -546 945 565 -947
		mu 0 4 342 341 362 363
		f 4 -547 946 566 -948
		mu 0 4 343 342 363 364
		f 4 -548 947 567 -949
		mu 0 4 344 343 364 365
		f 4 -549 948 568 -950
		mu 0 4 345 344 365 366
		f 4 -550 949 569 -951
		mu 0 4 346 345 366 367
		f 4 -551 950 570 -952
		mu 0 4 347 346 367 368
		f 4 -552 951 571 -953
		mu 0 4 348 347 368 369
		f 4 -553 952 572 -954
		mu 0 4 349 348 369 370
		f 4 -554 953 573 -955
		mu 0 4 350 349 370 371
		f 4 -555 954 574 -956
		mu 0 4 351 350 371 372
		f 4 -556 955 575 -957
		mu 0 4 352 351 372 373
		f 4 -557 956 576 -958
		mu 0 4 353 352 373 374
		f 4 -558 957 577 -959
		mu 0 4 354 353 374 375
		f 4 -559 958 578 -960
		mu 0 4 355 354 375 376
		f 4 -560 959 579 -941
		mu 0 4 356 355 376 377
		f 4 -561 960 580 -962
		mu 0 4 358 357 378 379
		f 4 -562 961 581 -963
		mu 0 4 359 358 379 380
		f 4 -563 962 582 -964
		mu 0 4 360 359 380 381
		f 4 -564 963 583 -965
		mu 0 4 361 360 381 382
		f 4 -565 964 584 -966
		mu 0 4 362 361 382 383
		f 4 -566 965 585 -967
		mu 0 4 363 362 383 384
		f 4 -567 966 586 -968
		mu 0 4 364 363 384 385
		f 4 -568 967 587 -969
		mu 0 4 365 364 385 386
		f 4 -569 968 588 -970
		mu 0 4 366 365 386 387
		f 4 -570 969 589 -971
		mu 0 4 367 366 387 388
		f 4 -571 970 590 -972
		mu 0 4 368 367 388 389
		f 4 -572 971 591 -973
		mu 0 4 369 368 389 390
		f 4 -573 972 592 -974
		mu 0 4 370 369 390 391
		f 4 -574 973 593 -975
		mu 0 4 371 370 391 392
		f 4 -575 974 594 -976
		mu 0 4 372 371 392 393
		f 4 -576 975 595 -977
		mu 0 4 373 372 393 394
		f 4 -577 976 596 -978
		mu 0 4 374 373 394 395
		f 4 -578 977 597 -979
		mu 0 4 375 374 395 396
		f 4 -579 978 598 -980
		mu 0 4 376 375 396 397
		f 4 -580 979 599 -961
		mu 0 4 377 376 397 398
		f 4 -581 980 600 -982
		mu 0 4 379 378 399 400
		f 4 -582 981 601 -983
		mu 0 4 380 379 400 401
		f 4 -583 982 602 -984
		mu 0 4 381 380 401 402
		f 4 -584 983 603 -985
		mu 0 4 382 381 402 403
		f 4 -585 984 604 -986
		mu 0 4 383 382 403 404
		f 4 -586 985 605 -987
		mu 0 4 384 383 404 405
		f 4 -587 986 606 -988
		mu 0 4 385 384 405 406
		f 4 -588 987 607 -989
		mu 0 4 386 385 406 407
		f 4 -589 988 608 -990
		mu 0 4 387 386 407 408
		f 4 -590 989 609 -991
		mu 0 4 388 387 408 409
		f 4 -591 990 610 -992
		mu 0 4 389 388 409 410
		f 4 -592 991 611 -993
		mu 0 4 390 389 410 411
		f 4 -593 992 612 -994
		mu 0 4 391 390 411 412
		f 4 -594 993 613 -995
		mu 0 4 392 391 412 413
		f 4 -595 994 614 -996
		mu 0 4 393 392 413 414
		f 4 -596 995 615 -997
		mu 0 4 394 393 414 415
		f 4 -597 996 616 -998
		mu 0 4 395 394 415 416
		f 4 -598 997 617 -999
		mu 0 4 396 395 416 417
		f 4 -599 998 618 -1000
		mu 0 4 397 396 417 418
		f 4 -600 999 619 -981
		mu 0 4 398 397 418 419
		f 4 -601 1000 620 -1002
		mu 0 4 400 399 420 421
		f 4 -602 1001 621 -1003
		mu 0 4 401 400 421 422
		f 4 -603 1002 622 -1004
		mu 0 4 402 401 422 423
		f 4 -604 1003 623 -1005
		mu 0 4 403 402 423 424
		f 4 -605 1004 624 -1006
		mu 0 4 404 403 424 425
		f 4 -606 1005 625 -1007
		mu 0 4 405 404 425 426
		f 4 -607 1006 626 -1008
		mu 0 4 406 405 426 427
		f 4 -608 1007 627 -1009
		mu 0 4 407 406 427 428
		f 4 -609 1008 628 -1010
		mu 0 4 408 407 428 429
		f 4 -610 1009 629 -1011
		mu 0 4 409 408 429 430
		f 4 -611 1010 630 -1012
		mu 0 4 410 409 430 431
		f 4 -612 1011 631 -1013
		mu 0 4 411 410 431 432
		f 4 -613 1012 632 -1014
		mu 0 4 412 411 432 433
		f 4 -614 1013 633 -1015
		mu 0 4 413 412 433 434
		f 4 -615 1014 634 -1016
		mu 0 4 414 413 434 435
		f 4 -616 1015 635 -1017
		mu 0 4 415 414 435 436
		f 4 -617 1016 636 -1018
		mu 0 4 416 415 436 437
		f 4 -618 1017 637 -1019
		mu 0 4 417 416 437 438
		f 4 -619 1018 638 -1020
		mu 0 4 418 417 438 439
		f 4 -620 1019 639 -1001
		mu 0 4 419 418 439 440
		f 4 -621 1020 640 -1022
		mu 0 4 421 420 441 442
		f 4 -622 1021 641 -1023
		mu 0 4 422 421 442 443
		f 4 -623 1022 642 -1024
		mu 0 4 423 422 443 444
		f 4 -624 1023 643 -1025
		mu 0 4 424 423 444 445
		f 4 -625 1024 644 -1026
		mu 0 4 425 424 445 446
		f 4 -626 1025 645 -1027
		mu 0 4 426 425 446 447
		f 4 -627 1026 646 -1028
		mu 0 4 427 426 447 448
		f 4 -628 1027 647 -1029
		mu 0 4 428 427 448 449
		f 4 -629 1028 648 -1030
		mu 0 4 429 428 449 450
		f 4 -630 1029 649 -1031
		mu 0 4 430 429 450 451
		f 4 -631 1030 650 -1032
		mu 0 4 431 430 451 452
		f 4 -632 1031 651 -1033
		mu 0 4 432 431 452 453
		f 4 -633 1032 652 -1034
		mu 0 4 433 432 453 454
		f 4 -634 1033 653 -1035
		mu 0 4 434 433 454 455
		f 4 -635 1034 654 -1036
		mu 0 4 435 434 455 456
		f 4 -636 1035 655 -1037
		mu 0 4 436 435 456 457
		f 4 -637 1036 656 -1038
		mu 0 4 437 436 457 458
		f 4 -638 1037 657 -1039
		mu 0 4 438 437 458 459
		f 4 -639 1038 658 -1040
		mu 0 4 439 438 459 460
		f 4 -640 1039 659 -1021
		mu 0 4 440 439 460 461
		f 4 -641 1040 660 -1042
		mu 0 4 442 441 462 463
		f 4 -642 1041 661 -1043
		mu 0 4 443 442 463 464
		f 4 -643 1042 662 -1044
		mu 0 4 444 443 464 465
		f 4 -644 1043 663 -1045
		mu 0 4 445 444 465 466
		f 4 -645 1044 664 -1046
		mu 0 4 446 445 466 467
		f 4 -646 1045 665 -1047
		mu 0 4 447 446 467 468
		f 4 -647 1046 666 -1048
		mu 0 4 448 447 468 469
		f 4 -648 1047 667 -1049
		mu 0 4 449 448 469 470
		f 4 -649 1048 668 -1050
		mu 0 4 450 449 470 471
		f 4 -650 1049 669 -1051
		mu 0 4 451 450 471 472
		f 4 -651 1050 670 -1052
		mu 0 4 452 451 472 473
		f 4 -652 1051 671 -1053
		mu 0 4 453 452 473 474
		f 4 -653 1052 672 -1054
		mu 0 4 454 453 474 475
		f 4 -654 1053 673 -1055
		mu 0 4 455 454 475 476
		f 4 -655 1054 674 -1056
		mu 0 4 456 455 476 477
		f 4 -656 1055 675 -1057
		mu 0 4 457 456 477 478
		f 4 -657 1056 676 -1058
		mu 0 4 458 457 478 479
		f 4 -658 1057 677 -1059
		mu 0 4 459 458 479 480
		f 4 -659 1058 678 -1060
		mu 0 4 460 459 480 481
		f 4 -660 1059 679 -1041
		mu 0 4 461 460 481 482
		f 4 -661 1060 680 -1062
		mu 0 4 463 462 483 484
		f 4 -662 1061 681 -1063
		mu 0 4 464 463 484 485
		f 4 -663 1062 682 -1064
		mu 0 4 465 464 485 486
		f 4 -664 1063 683 -1065
		mu 0 4 466 465 486 487
		f 4 -665 1064 684 -1066
		mu 0 4 467 466 487 488
		f 4 -666 1065 685 -1067
		mu 0 4 468 467 488 489
		f 4 -667 1066 686 -1068
		mu 0 4 469 468 489 490
		f 4 -668 1067 687 -1069
		mu 0 4 470 469 490 491
		f 4 -669 1068 688 -1070
		mu 0 4 471 470 491 492
		f 4 -670 1069 689 -1071
		mu 0 4 472 471 492 493
		f 4 -671 1070 690 -1072
		mu 0 4 473 472 493 494
		f 4 -672 1071 691 -1073
		mu 0 4 474 473 494 495
		f 4 -673 1072 692 -1074
		mu 0 4 475 474 495 496
		f 4 -674 1073 693 -1075
		mu 0 4 476 475 496 497
		f 4 -675 1074 694 -1076
		mu 0 4 477 476 497 498
		f 4 -676 1075 695 -1077
		mu 0 4 478 477 498 499
		f 4 -677 1076 696 -1078
		mu 0 4 479 478 499 500
		f 4 -678 1077 697 -1079
		mu 0 4 480 479 500 501
		f 4 -679 1078 698 -1080
		mu 0 4 481 480 501 502
		f 4 -680 1079 699 -1061
		mu 0 4 482 481 502 503
		f 4 1319 1280 1340 -1300
		mu 0 4 504 505 506 507
		f 4 1318 1299 1341 -1299
		mu 0 4 508 504 507 509
		f 4 1317 1298 1342 -1298
		mu 0 4 510 508 509 511
		f 4 1316 1297 1343 -1297
		mu 0 4 512 510 511 513
		f 4 1315 1296 1344 -1296
		mu 0 4 514 512 513 515
		f 4 1314 1295 1345 -1295
		mu 0 4 516 514 515 517
		f 4 1313 1294 1346 -1294
		mu 0 4 518 516 517 519
		f 4 1312 1293 1347 -1293
		mu 0 4 520 518 519 521
		f 4 1311 1292 1348 -1292
		mu 0 4 522 520 521 523
		f 4 1310 1291 1349 -1291
		mu 0 4 524 522 523 525
		f 4 1309 1290 1350 -1290
		mu 0 4 526 524 525 527
		f 4 1308 1289 1351 -1289
		mu 0 4 528 526 527 529
		f 4 1307 1288 1352 -1288
		mu 0 4 530 528 529 531
		f 4 1306 1287 1353 -1287
		mu 0 4 532 530 531 533
		f 4 1305 1286 1354 -1286
		mu 0 4 534 532 533 535
		f 4 1304 1285 1355 -1285
		mu 0 4 536 534 535 537
		f 4 1303 1284 1356 -1284
		mu 0 4 538 536 537 539
		f 4 1302 1283 1357 -1283
		mu 0 4 540 538 539 541
		f 4 1301 1282 1358 -1282
		mu 0 4 542 540 541 543
		f 4 1300 1281 1359 -1281
		mu 0 4 544 542 543 545
		f 4 -701 1100 720 -1102
		mu 0 4 546 547 548 549
		f 4 -702 1101 721 -1103
		mu 0 4 550 546 549 551
		f 4 -703 1102 722 -1104
		mu 0 4 552 550 551 553
		f 4 -704 1103 723 -1105
		mu 0 4 554 552 553 555
		f 4 -705 1104 724 -1106
		mu 0 4 556 554 555 557
		f 4 -706 1105 725 -1107
		mu 0 4 558 556 557 559
		f 4 -707 1106 726 -1108
		mu 0 4 560 558 559 561
		f 4 -708 1107 727 -1109
		mu 0 4 562 560 561 563
		f 4 -709 1108 728 -1110
		mu 0 4 564 562 563 565
		f 4 -710 1109 729 -1111
		mu 0 4 566 564 565 567
		f 4 -711 1110 730 -1112
		mu 0 4 568 566 567 569
		f 4 -712 1111 731 -1113
		mu 0 4 570 568 569 571
		f 4 -713 1112 732 -1114
		mu 0 4 572 570 571 573
		f 4 -714 1113 733 -1115
		mu 0 4 574 572 573 575
		f 4 -715 1114 734 -1116
		mu 0 4 576 574 575 577
		f 4 -716 1115 735 -1117
		mu 0 4 578 576 577 579
		f 4 -717 1116 736 -1118
		mu 0 4 580 578 579 581
		f 4 -718 1117 737 -1119
		mu 0 4 582 580 581 583
		f 4 -719 1118 738 -1120
		mu 0 4 584 582 583 585
		f 4 -720 1119 739 -1101
		mu 0 4 586 584 585 587
		f 4 1399 1360 740 -1380
		mu 0 4 588 589 590 591
		f 4 1398 1379 741 -1379
		mu 0 4 592 588 591 593
		f 4 1397 1378 742 -1378
		mu 0 4 594 592 593 595
		f 4 1396 1377 743 -1377
		mu 0 4 596 594 595 597
		f 4 1395 1376 744 -1376
		mu 0 4 598 596 597 599
		f 4 1394 1375 745 -1375
		mu 0 4 600 598 599 601
		f 4 1393 1374 746 -1374
		mu 0 4 602 600 601 603
		f 4 1392 1373 747 -1373
		mu 0 4 604 602 603 605
		f 4 1391 1372 748 -1372
		mu 0 4 606 604 605 607
		f 4 1390 1371 749 -1371
		mu 0 4 608 606 607 609
		f 4 1389 1370 750 -1370
		mu 0 4 610 608 609 611
		f 4 1388 1369 751 -1369
		mu 0 4 612 610 611 613
		f 4 1387 1368 752 -1368
		mu 0 4 614 612 613 615
		f 4 1386 1367 753 -1367
		mu 0 4 616 614 615 617
		f 4 1385 1366 754 -1366
		mu 0 4 618 616 617 619
		f 4 1384 1365 755 -1365
		mu 0 4 620 618 619 621
		f 4 1383 1364 756 -1364
		mu 0 4 622 620 621 623
		f 4 1382 1363 757 -1363
		mu 0 4 624 622 623 625
		f 4 1381 1362 758 -1362
		mu 0 4 626 624 625 627
		f 4 1380 1361 759 -1361
		mu 0 4 628 626 627 629;
	setAttr ".fc[500:999]"
		f 4 -741 1140 760 -1142
		mu 0 4 591 590 630 631
		f 4 -742 1141 761 -1143
		mu 0 4 593 591 631 632
		f 4 -743 1142 762 -1144
		mu 0 4 595 593 632 633
		f 4 -744 1143 763 -1145
		mu 0 4 597 595 633 634
		f 4 -745 1144 764 -1146
		mu 0 4 599 597 634 635
		f 4 -746 1145 765 -1147
		mu 0 4 601 599 635 636
		f 4 -747 1146 766 -1148
		mu 0 4 603 601 636 637
		f 4 -748 1147 767 -1149
		mu 0 4 605 603 637 638
		f 4 -749 1148 768 -1150
		mu 0 4 607 605 638 639
		f 4 -750 1149 769 -1151
		mu 0 4 609 607 639 640
		f 4 -751 1150 770 -1152
		mu 0 4 611 609 640 641
		f 4 -752 1151 771 -1153
		mu 0 4 613 611 641 642
		f 4 -753 1152 772 -1154
		mu 0 4 615 613 642 643
		f 4 -754 1153 773 -1155
		mu 0 4 617 615 643 644
		f 4 -755 1154 774 -1156
		mu 0 4 619 617 644 645
		f 4 -756 1155 775 -1157
		mu 0 4 621 619 645 646
		f 4 -757 1156 776 -1158
		mu 0 4 623 621 646 647
		f 4 -758 1157 777 -1159
		mu 0 4 625 623 647 648
		f 4 -759 1158 778 -1160
		mu 0 4 627 625 648 649
		f 4 -760 1159 779 -1141
		mu 0 4 629 627 649 650
		f 4 -761 1160 780 -1162
		mu 0 4 631 630 651 652
		f 4 -762 1161 781 -1163
		mu 0 4 632 631 652 653
		f 4 -763 1162 782 -1164
		mu 0 4 633 632 653 654
		f 4 -764 1163 783 -1165
		mu 0 4 634 633 654 655
		f 4 -765 1164 784 -1166
		mu 0 4 635 634 655 656
		f 4 -766 1165 785 -1167
		mu 0 4 636 635 656 657
		f 4 -767 1166 786 -1168
		mu 0 4 637 636 657 658
		f 4 -768 1167 787 -1169
		mu 0 4 638 637 658 659
		f 4 -769 1168 788 -1170
		mu 0 4 639 638 659 660
		f 4 -770 1169 789 -1171
		mu 0 4 640 639 660 661
		f 4 -771 1170 790 -1172
		mu 0 4 641 640 661 662
		f 4 -772 1171 791 -1173
		mu 0 4 642 641 662 663
		f 4 -773 1172 792 -1174
		mu 0 4 643 642 663 664
		f 4 -774 1173 793 -1175
		mu 0 4 644 643 664 665
		f 4 -775 1174 794 -1176
		mu 0 4 645 644 665 666
		f 4 -776 1175 795 -1177
		mu 0 4 646 645 666 667
		f 4 -777 1176 796 -1178
		mu 0 4 647 646 667 668
		f 4 -778 1177 797 -1179
		mu 0 4 648 647 668 669
		f 4 -779 1178 798 -1180
		mu 0 4 649 648 669 670
		f 4 -780 1179 799 -1161
		mu 0 4 650 649 670 671
		f 4 -781 1180 800 -1182
		mu 0 4 652 651 672 673
		f 4 -782 1181 801 -1183
		mu 0 4 653 652 673 674
		f 4 -783 1182 802 -1184
		mu 0 4 654 653 674 675
		f 4 -784 1183 803 -1185
		mu 0 4 655 654 675 676
		f 4 -785 1184 804 -1186
		mu 0 4 656 655 676 677
		f 4 -786 1185 805 -1187
		mu 0 4 657 656 677 678
		f 4 -787 1186 806 -1188
		mu 0 4 658 657 678 679
		f 4 -788 1187 807 -1189
		mu 0 4 659 658 679 680
		f 4 -789 1188 808 -1190
		mu 0 4 660 659 680 681
		f 4 -790 1189 809 -1191
		mu 0 4 661 660 681 682
		f 4 -791 1190 810 -1192
		mu 0 4 662 661 682 683
		f 4 -792 1191 811 -1193
		mu 0 4 663 662 683 684
		f 4 -793 1192 812 -1194
		mu 0 4 664 663 684 685
		f 4 -794 1193 813 -1195
		mu 0 4 665 664 685 686
		f 4 -795 1194 814 -1196
		mu 0 4 666 665 686 687
		f 4 -796 1195 815 -1197
		mu 0 4 667 666 687 688
		f 4 -797 1196 816 -1198
		mu 0 4 668 667 688 689
		f 4 -798 1197 817 -1199
		mu 0 4 669 668 689 690
		f 4 -799 1198 818 -1200
		mu 0 4 670 669 690 691
		f 4 -800 1199 819 -1181
		mu 0 4 671 670 691 692
		f 4 -801 1200 820 -1202
		mu 0 4 673 672 693 694
		f 4 -802 1201 821 -1203
		mu 0 4 674 673 694 695
		f 4 -803 1202 822 -1204
		mu 0 4 675 674 695 696
		f 4 -804 1203 823 -1205
		mu 0 4 676 675 696 697
		f 4 -805 1204 824 -1206
		mu 0 4 677 676 697 698
		f 4 -806 1205 825 -1207
		mu 0 4 678 677 698 699
		f 4 -807 1206 826 -1208
		mu 0 4 679 678 699 700
		f 4 -808 1207 827 -1209
		mu 0 4 680 679 700 701
		f 4 -809 1208 828 -1210
		mu 0 4 681 680 701 702
		f 4 -810 1209 829 -1211
		mu 0 4 682 681 702 703
		f 4 -811 1210 830 -1212
		mu 0 4 683 682 703 704
		f 4 -812 1211 831 -1213
		mu 0 4 684 683 704 705
		f 4 -813 1212 832 -1214
		mu 0 4 685 684 705 706
		f 4 -814 1213 833 -1215
		mu 0 4 686 685 706 707
		f 4 -815 1214 834 -1216
		mu 0 4 687 686 707 708
		f 4 -816 1215 835 -1217
		mu 0 4 688 687 708 709
		f 4 -817 1216 836 -1218
		mu 0 4 689 688 709 710
		f 4 -818 1217 837 -1219
		mu 0 4 690 689 710 711
		f 4 -819 1218 838 -1220
		mu 0 4 691 690 711 712
		f 4 -820 1219 839 -1201
		mu 0 4 692 691 712 713
		f 4 -821 1220 840 -1222
		mu 0 4 694 693 714 715
		f 4 -822 1221 841 -1223
		mu 0 4 695 694 715 716
		f 4 -823 1222 842 -1224
		mu 0 4 696 695 716 717
		f 4 -824 1223 843 -1225
		mu 0 4 697 696 717 718
		f 4 -825 1224 844 -1226
		mu 0 4 698 697 718 719
		f 4 -826 1225 845 -1227
		mu 0 4 699 698 719 720
		f 4 -827 1226 846 -1228
		mu 0 4 700 699 720 721
		f 4 -828 1227 847 -1229
		mu 0 4 701 700 721 722
		f 4 -829 1228 848 -1230
		mu 0 4 702 701 722 723
		f 4 -830 1229 849 -1231
		mu 0 4 703 702 723 724
		f 4 -831 1230 850 -1232
		mu 0 4 704 703 724 725
		f 4 -832 1231 851 -1233
		mu 0 4 705 704 725 726
		f 4 -833 1232 852 -1234
		mu 0 4 706 705 726 727
		f 4 -834 1233 853 -1235
		mu 0 4 707 706 727 728
		f 4 -835 1234 854 -1236
		mu 0 4 708 707 728 729
		f 4 -836 1235 855 -1237
		mu 0 4 709 708 729 730
		f 4 -837 1236 856 -1238
		mu 0 4 710 709 730 731
		f 4 -838 1237 857 -1239
		mu 0 4 711 710 731 732
		f 4 -839 1238 858 -1240
		mu 0 4 712 711 732 733
		f 4 -840 1239 859 -1221
		mu 0 4 713 712 733 734
		f 4 -841 1240 860 -1242
		mu 0 4 715 714 735 736
		f 4 -842 1241 861 -1243
		mu 0 4 716 715 736 737
		f 4 -843 1242 862 -1244
		mu 0 4 717 716 737 738
		f 4 -844 1243 863 -1245
		mu 0 4 718 717 738 739
		f 4 -845 1244 864 -1246
		mu 0 4 719 718 739 740
		f 4 -846 1245 865 -1247
		mu 0 4 720 719 740 741
		f 4 -847 1246 866 -1248
		mu 0 4 721 720 741 742
		f 4 -848 1247 867 -1249
		mu 0 4 722 721 742 743
		f 4 -849 1248 868 -1250
		mu 0 4 723 722 743 744
		f 4 -850 1249 869 -1251
		mu 0 4 724 723 744 745
		f 4 -851 1250 870 -1252
		mu 0 4 725 724 745 746
		f 4 -852 1251 871 -1253
		mu 0 4 726 725 746 747
		f 4 -853 1252 872 -1254
		mu 0 4 727 726 747 748
		f 4 -854 1253 873 -1255
		mu 0 4 728 727 748 749
		f 4 -855 1254 874 -1256
		mu 0 4 729 728 749 750
		f 4 -856 1255 875 -1257
		mu 0 4 730 729 750 751
		f 4 -857 1256 876 -1258
		mu 0 4 731 730 751 752
		f 4 -858 1257 877 -1259
		mu 0 4 732 731 752 753
		f 4 -859 1258 878 -1260
		mu 0 4 733 732 753 754
		f 4 -860 1259 879 -1241
		mu 0 4 734 733 754 755
		f 4 -861 1260 480 -1262
		mu 0 4 736 735 756 757
		f 4 -862 1261 481 -1263
		mu 0 4 737 736 757 758
		f 4 -863 1262 482 -1264
		mu 0 4 738 737 758 759
		f 4 -864 1263 483 -1265
		mu 0 4 739 738 759 760
		f 4 -865 1264 484 -1266
		mu 0 4 740 739 760 761
		f 4 -866 1265 485 -1267
		mu 0 4 741 740 761 762
		f 4 -867 1266 486 -1268
		mu 0 4 742 741 762 763
		f 4 -868 1267 487 -1269
		mu 0 4 743 742 763 764
		f 4 -869 1268 488 -1270
		mu 0 4 744 743 764 765
		f 4 -870 1269 489 -1271
		mu 0 4 745 744 765 766
		f 4 -871 1270 490 -1272
		mu 0 4 746 745 766 767
		f 4 -872 1271 491 -1273
		mu 0 4 747 746 767 768
		f 4 -873 1272 492 -1274
		mu 0 4 748 747 768 769
		f 4 -874 1273 493 -1275
		mu 0 4 749 748 769 770
		f 4 -875 1274 494 -1276
		mu 0 4 750 749 770 771
		f 4 -876 1275 495 -1277
		mu 0 4 751 750 771 772
		f 4 -877 1276 496 -1278
		mu 0 4 752 751 772 773
		f 4 -878 1277 497 -1279
		mu 0 4 753 752 773 774
		f 4 -879 1278 498 -1280
		mu 0 4 754 753 774 775
		f 4 -880 1279 499 -1261
		mu 0 4 755 754 775 776
		f 4 -700 1099 -1301 -1081
		mu 0 4 503 502 542 544
		f 4 -699 1098 -1302 -1100
		mu 0 4 502 501 540 542
		f 4 -698 1097 -1303 -1099
		mu 0 4 501 500 538 540
		f 4 -697 1096 -1304 -1098
		mu 0 4 500 499 536 538
		f 4 -696 1095 -1305 -1097
		mu 0 4 499 498 534 536
		f 4 -695 1094 -1306 -1096
		mu 0 4 498 497 532 534
		f 4 -694 1093 -1307 -1095
		mu 0 4 497 496 530 532
		f 4 -693 1092 -1308 -1094
		mu 0 4 496 495 528 530
		f 4 -692 1091 -1309 -1093
		mu 0 4 495 494 526 528
		f 4 -691 1090 -1310 -1092
		mu 0 4 494 493 524 526
		f 4 -690 1089 -1311 -1091
		mu 0 4 493 492 522 524
		f 4 -689 1088 -1312 -1090
		mu 0 4 492 491 520 522
		f 4 -688 1087 -1313 -1089
		mu 0 4 491 490 518 520
		f 4 -687 1086 -1314 -1088
		mu 0 4 490 489 516 518
		f 4 -686 1085 -1315 -1087
		mu 0 4 489 488 514 516
		f 4 -685 1084 -1316 -1086
		mu 0 4 488 487 512 514
		f 4 -684 1083 -1317 -1085
		mu 0 4 487 486 510 512
		f 4 -683 1082 -1318 -1084
		mu 0 4 486 485 508 510
		f 4 -682 1081 -1319 -1083
		mu 0 4 485 484 504 508
		f 4 -681 1080 -1320 -1082
		mu 0 4 484 483 505 504
		f 4 -1341 1320 700 -1322
		mu 0 4 507 506 547 546
		f 4 -1342 1321 701 -1323
		mu 0 4 509 507 546 550
		f 4 -1343 1322 702 -1324
		mu 0 4 511 509 550 552
		f 4 -1344 1323 703 -1325
		mu 0 4 513 511 552 554
		f 4 -1345 1324 704 -1326
		mu 0 4 515 513 554 556
		f 4 -1346 1325 705 -1327
		mu 0 4 517 515 556 558
		f 4 -1347 1326 706 -1328
		mu 0 4 519 517 558 560
		f 4 -1348 1327 707 -1329
		mu 0 4 521 519 560 562
		f 4 -1349 1328 708 -1330
		mu 0 4 523 521 562 564
		f 4 -1350 1329 709 -1331
		mu 0 4 525 523 564 566
		f 4 -1351 1330 710 -1332
		mu 0 4 527 525 566 568
		f 4 -1352 1331 711 -1333
		mu 0 4 529 527 568 570
		f 4 -1353 1332 712 -1334
		mu 0 4 531 529 570 572
		f 4 -1354 1333 713 -1335
		mu 0 4 533 531 572 574
		f 4 -1355 1334 714 -1336
		mu 0 4 535 533 574 576
		f 4 -1356 1335 715 -1337
		mu 0 4 537 535 576 578
		f 4 -1357 1336 716 -1338
		mu 0 4 539 537 578 580
		f 4 -1358 1337 717 -1339
		mu 0 4 541 539 580 582
		f 4 -1359 1338 718 -1340
		mu 0 4 543 541 582 584
		f 4 -1360 1339 719 -1321
		mu 0 4 545 543 584 586
		f 4 -740 1139 -1381 -1121
		mu 0 4 587 585 626 628
		f 4 -739 1138 -1382 -1140
		mu 0 4 585 583 624 626
		f 4 -738 1137 -1383 -1139
		mu 0 4 583 581 622 624
		f 4 -737 1136 -1384 -1138
		mu 0 4 581 579 620 622
		f 4 -736 1135 -1385 -1137
		mu 0 4 579 577 618 620
		f 4 -735 1134 -1386 -1136
		mu 0 4 577 575 616 618
		f 4 -734 1133 -1387 -1135
		mu 0 4 575 573 614 616
		f 4 -733 1132 -1388 -1134
		mu 0 4 573 571 612 614
		f 4 -732 1131 -1389 -1133
		mu 0 4 571 569 610 612
		f 4 -731 1130 -1390 -1132
		mu 0 4 569 567 608 610
		f 4 -730 1129 -1391 -1131
		mu 0 4 567 565 606 608
		f 4 -729 1128 -1392 -1130
		mu 0 4 565 563 604 606
		f 4 -728 1127 -1393 -1129
		mu 0 4 563 561 602 604
		f 4 -727 1126 -1394 -1128
		mu 0 4 561 559 600 602
		f 4 -726 1125 -1395 -1127
		mu 0 4 559 557 598 600
		f 4 -725 1124 -1396 -1126
		mu 0 4 557 555 596 598
		f 4 -724 1123 -1397 -1125
		mu 0 4 555 553 594 596
		f 4 -723 1122 -1398 -1124
		mu 0 4 553 551 592 594
		f 4 -722 1121 -1399 -1123
		mu 0 4 551 549 588 592
		f 4 -721 1120 -1400 -1122
		mu 0 4 549 548 589 588
		f 4 1478 1480 1482 -1484
		mu 0 4 777 778 779 780
		f 4 1429 1424 1442 -1424
		mu 0 4 781 782 783 784
		f 4 1428 1423 1443 1432
		mu 0 4 785 781 784 786
		f 4 1426 1421 1439 -1421
		mu 0 4 787 788 789 790
		f 4 1417 -1410 -1408 -1414
		mu 0 4 791 792 793 794
		f 4 1419 1412 1406 1408
		mu 0 4 795 796 797 798
		f 5 1431 1505 1453 1446 -1426
		mu 0 5 799 800 801 802 803
		f 4 1455 -1501 1512 -1448
		mu 0 4 804 805 806 807
		f 4 1457 1450 1520 1511
		mu 0 4 808 809 810 811
		f 4 1459 1444 1518 1509
		mu 0 4 812 813 814 815
		f 4 1403 -1427 -1401 -1411
		mu 0 4 816 788 787 817
		f 4 1519 -1451 1458 -1510
		mu 0 4 818 810 809 819
		f 4 1402 -1429 1422 -1409
		mu 0 4 820 781 785 821
		f 4 1401 -1430 -1403 -1407
		mu 0 4 797 782 781 820
		f 4 1534 -1537 -1539 -1540
		mu 0 4 822 823 824 825
		f 4 1486 -1507 1516 -1492
		mu 0 4 826 827 828 829
		f 4 1456 -1512 1521 1500
		mu 0 4 830 808 811 831
		f 4 -1440 1433 1411 -1435
		mu 0 4 790 789 832 833
		f 4 1513 -1495 1496 1498
		mu 0 4 834 835 836 837
		f 4 -1543 1544 1546 -1548
		mu 0 4 838 839 840 841
		f 4 -1443 1436 1407 -1438
		mu 0 4 784 783 794 842
		f 4 -1444 1437 1409 1418
		mu 0 4 786 784 842 843
		f 4 1400 -1446 -1453 -1405
		mu 0 4 844 845 801 813
		f 4 -1454 1445 1420 1440
		mu 0 4 802 801 845 846
		f 4 -1455 -1441 1434 1405
		mu 0 4 804 802 846 847
		f 4 -1412 -1449 -1456 -1406
		mu 0 4 847 848 805 804
		f 4 -1450 -1457 1448 -1434
		mu 0 4 789 808 830 832
		f 4 1427 -1458 1449 -1422
		mu 0 4 788 809 808 789
		f 4 -1459 -1428 -1404 -1452
		mu 0 4 819 809 788 816
		f 4 1410 1404 -1460 1451
		mu 0 4 849 844 813 812
		f 4 -1447 1460 1462 -1462
		mu 0 4 803 802 850 851
		f 4 1454 1463 -1465 -1461
		mu 0 4 802 804 852 850
		f 5 1447 1501 1465 -1467 -1464
		mu 0 5 804 807 791 853 852
		f 4 -1436 1461 1467 -1466
		mu 0 4 791 803 851 853
		f 5 -1463 1468 1470 1504 -1470
		mu 0 5 851 850 854 855 856
		f 4 1464 1471 -1473 -1469
		mu 0 4 850 852 857 854
		f 5 1466 1473 -1523 -1475 -1472
		mu 0 5 852 853 858 859 857
		f 4 -1468 1469 1475 -1474
		mu 0 4 853 851 856 858
		f 4 1430 1477 -1479 -1477
		mu 0 4 782 799 778 777
		f 4 1425 1479 -1481 -1478
		mu 0 4 799 803 779 778
		f 4 1441 1481 -1483 -1480
		mu 0 4 803 783 780 779
		f 4 -1425 1476 1483 -1482
		mu 0 4 783 782 777 780
		f 4 1452 1485 -1487 -1485
		mu 0 4 813 801 827 826
		f 4 -1506 1515 1506 -1486
		mu 0 4 801 800 828 827
		f 4 -1417 1489 1490 -1488
		mu 0 4 799 796 860 1991
		f 4 1517 -1445 1484 1491
		mu 0 4 829 814 813 826
		f 4 1514 -1471 1492 1494
		mu 0 4 835 855 854 836
		f 4 1472 1495 -1497 -1493
		mu 0 4 854 857 837 836
		f 4 1474 1523 -1499 -1496
		mu 0 4 857 859 834 837
		f 4 -1476 1493 1499 -1498
		mu 0 4 858 856 861 862
		f 4 -1513 -1415 -1418 -1502
		mu 0 4 807 806 792 791
		f 4 -1504 -1514 1502 -1500
		mu 0 4 861 835 834 862
		f 4 -1505 -1515 1503 -1494
		mu 0 4 856 855 835 861
		f 4 -1516 -1432 1487 1488
		mu 0 4 828 800 799 1992
		f 4 -1517 -1489 -1491 -1508
		mu 0 4 829 828 1993 860
		f 4 -1509 -1518 1507 -1490
		mu 0 4 796 814 829 860
		f 4 -1519 1508 -1420 1415
		mu 0 4 815 814 796 795
		f 4 -1423 -1511 -1520 -1416
		mu 0 4 821 785 810 818
		f 4 -1521 1510 -1433 1438
		mu 0 4 811 810 785 786
		f 4 -1522 -1439 -1419 1414
		mu 0 4 831 811 786 843
		f 4 -1524 1522 1497 -1503
		mu 0 4 834 859 858 862
		f 4 1416 1525 -1527 -1525
		mu 0 4 796 799 863 864
		f 4 -1431 1527 1528 -1526
		mu 0 4 799 782 865 863
		f 4 -1402 1529 1530 -1528
		mu 0 4 782 797 866 865
		f 4 -1413 1524 1531 -1530
		mu 0 4 797 796 864 866
		f 4 1526 1533 -1535 -1533
		mu 0 4 864 863 823 822
		f 4 -1529 1535 1536 -1534
		mu 0 4 863 865 824 823
		f 4 -1531 1537 1538 -1536
		mu 0 4 865 866 825 824
		f 4 -1532 1532 1539 -1538
		mu 0 4 866 864 822 825
		f 4 -1442 1540 1542 -1542
		mu 0 4 783 803 839 838
		f 4 1435 1543 -1545 -1541
		mu 0 4 803 791 840 839
		f 4 1413 1545 -1547 -1544
		mu 0 4 791 794 841 840
		f 4 -1437 1541 1547 -1546
		mu 0 4 794 783 838 841
		f 4 1867 1828 1928 -1848
		mu 0 4 867 868 869 870
		f 4 1866 1847 1929 -1847
		mu 0 4 871 867 870 872
		f 4 1865 1846 1930 -1846
		mu 0 4 873 871 872 874
		f 4 1864 1845 1931 -1845
		mu 0 4 875 873 874 876
		f 4 1863 1844 1932 -1844
		mu 0 4 877 875 876 878
		f 4 1862 1843 1933 -1843
		mu 0 4 879 877 878 880
		f 4 1861 1842 1934 -1842
		mu 0 4 881 879 880 882
		f 4 1860 1841 1935 -1841
		mu 0 4 883 881 882 884
		f 4 1859 1840 1936 -1840
		mu 0 4 885 883 884 886
		f 4 1858 1839 1937 -1839
		mu 0 4 887 885 886 888
		f 4 1857 1838 1938 -1838
		mu 0 4 889 887 888 890
		f 4 1856 1837 1939 -1837
		mu 0 4 891 889 890 892
		f 4 1855 1836 1940 -1836
		mu 0 4 893 891 892 894
		f 4 1854 1835 1941 -1835
		mu 0 4 895 893 894 896
		f 4 1853 1834 1942 -1834
		mu 0 4 897 895 896 898
		f 4 1852 1833 1943 -1833
		mu 0 4 899 897 898 900
		f 4 1851 1832 1944 -1832
		mu 0 4 901 899 900 902
		f 4 1850 1831 1945 -1831
		mu 0 4 903 901 902 904
		f 4 1849 1830 1946 -1830
		mu 0 4 905 903 904 906
		f 4 1848 1829 1947 -1829
		mu 0 4 907 905 906 908
		f 4 -1569 1648 1588 -1650
		mu 0 4 909 910 911 912
		f 4 -1570 1649 1589 -1651
		mu 0 4 913 909 912 914
		f 4 -1571 1650 1590 -1652
		mu 0 4 915 913 914 916
		f 4 -1572 1651 1591 -1653
		mu 0 4 917 915 916 918
		f 4 -1573 1652 1592 -1654
		mu 0 4 919 917 918 920
		f 4 -1574 1653 1593 -1655
		mu 0 4 921 919 920 922
		f 4 -1575 1654 1594 -1656
		mu 0 4 923 921 922 924
		f 4 -1576 1655 1595 -1657
		mu 0 4 925 923 924 926
		f 4 -1577 1656 1596 -1658
		mu 0 4 927 925 926 928
		f 4 -1578 1657 1597 -1659
		mu 0 4 929 927 928 930
		f 4 -1579 1658 1598 -1660
		mu 0 4 931 929 930 932
		f 4 -1580 1659 1599 -1661
		mu 0 4 933 931 932 934
		f 4 -1581 1660 1600 -1662
		mu 0 4 935 933 934 936
		f 4 -1582 1661 1601 -1663
		mu 0 4 937 935 936 938
		f 4 -1583 1662 1602 -1664
		mu 0 4 939 937 938 940
		f 4 -1584 1663 1603 -1665
		mu 0 4 941 939 940 942
		f 4 -1585 1664 1604 -1666
		mu 0 4 943 941 942 944
		f 4 -1586 1665 1605 -1667
		mu 0 4 945 943 944 946
		f 4 -1587 1666 1606 -1668
		mu 0 4 947 945 946 948
		f 4 -1588 1667 1607 -1649
		mu 0 4 949 947 948 950
		f 4 1987 1948 1768 -1968
		mu 0 4 951 952 953 954
		f 4 1986 1967 1769 -1967
		mu 0 4 955 951 954 956
		f 4 1985 1966 1770 -1966
		mu 0 4 957 955 956 958
		f 4 1984 1965 1771 -1965
		mu 0 4 959 957 958 960
		f 4 1983 1964 1772 -1964
		mu 0 4 961 959 960 962
		f 4 1982 1963 1773 -1963
		mu 0 4 963 961 962 964
		f 4 1981 1962 1774 -1962
		mu 0 4 965 963 964 966
		f 4 1980 1961 1775 -1961
		mu 0 4 967 965 966 968
		f 4 1979 1960 1776 -1960
		mu 0 4 969 967 968 970
		f 4 1978 1959 1777 -1959
		mu 0 4 971 969 970 972
		f 4 1977 1958 1778 -1958
		mu 0 4 973 971 972 974
		f 4 1976 1957 1779 -1957
		mu 0 4 975 973 974 976
		f 4 1975 1956 1780 -1956
		mu 0 4 977 975 976 978
		f 4 1974 1955 1781 -1955
		mu 0 4 979 977 978 980
		f 4 1973 1954 1782 -1954
		mu 0 4 981 979 980 982
		f 4 1972 1953 1783 -1953
		mu 0 4 983 981 982 984
		f 4 1971 1952 1784 -1952
		mu 0 4 985 983 984 986
		f 4 1970 1951 1785 -1951
		mu 0 4 987 985 986 988
		f 4 1969 1950 1786 -1950
		mu 0 4 989 987 988 990
		f 4 1968 1949 1787 -1949
		mu 0 4 991 989 990 992
		f 4 -1609 1688 1548 -1690
		mu 0 4 993 994 995 996
		f 4 -1610 1689 1549 -1691
		mu 0 4 997 993 996 998
		f 4 -1611 1690 1550 -1692
		mu 0 4 999 997 998 1000
		f 4 -1612 1691 1551 -1693
		mu 0 4 1001 999 1000 1002
		f 4 -1613 1692 1552 -1694
		mu 0 4 1003 1001 1002 1004
		f 4 -1614 1693 1553 -1695
		mu 0 4 1005 1003 1004 1006
		f 4 -1615 1694 1554 -1696
		mu 0 4 1007 1005 1006 1008
		f 4 -1616 1695 1555 -1697
		mu 0 4 1009 1007 1008 1010
		f 4 -1617 1696 1556 -1698
		mu 0 4 1011 1009 1010 1012
		f 4 -1618 1697 1557 -1699
		mu 0 4 1013 1011 1012 1014
		f 4 -1619 1698 1558 -1700
		mu 0 4 1015 1013 1014 1016
		f 4 -1620 1699 1559 -1701
		mu 0 4 1017 1015 1016 1018
		f 4 -1621 1700 1560 -1702
		mu 0 4 1019 1017 1018 1020
		f 4 -1622 1701 1561 -1703
		mu 0 4 1021 1019 1020 1022
		f 4 -1623 1702 1562 -1704
		mu 0 4 1023 1021 1022 1024
		f 4 -1624 1703 1563 -1705
		mu 0 4 1025 1023 1024 1026
		f 4 -1625 1704 1564 -1706
		mu 0 4 1027 1025 1026 1028
		f 4 -1626 1705 1565 -1707
		mu 0 4 1029 1027 1028 1030
		f 4 -1627 1706 1566 -1708
		mu 0 4 1031 1029 1030 1032
		f 4 -1628 1707 1567 -1689
		mu 0 4 1033 1031 1032 1034
		f 4 1808 1789 -1729 -1789
		mu 0 4 1035 1036 1037 1038
		f 4 1809 1790 -1730 -1790
		mu 0 4 1036 1039 1040 1037
		f 4 1810 1791 -1731 -1791
		mu 0 4 1039 1041 1042 1040
		f 4 1811 1792 -1732 -1792
		mu 0 4 1041 1043 1044 1042
		f 4 1812 1793 -1733 -1793
		mu 0 4 1043 1045 1046 1044
		f 4 1813 1794 -1734 -1794
		mu 0 4 1045 1047 1048 1046
		f 4 1814 1795 -1735 -1795
		mu 0 4 1047 1049 1050 1048
		f 4 1815 1796 -1736 -1796
		mu 0 4 1049 1051 1052 1050
		f 4 1816 1797 -1737 -1797
		mu 0 4 1051 1053 1054 1052
		f 4 1817 1798 -1738 -1798
		mu 0 4 1053 1055 1056 1054
		f 4 1818 1799 -1739 -1799
		mu 0 4 1055 1057 1058 1056
		f 4 1819 1800 -1740 -1800
		mu 0 4 1057 1059 1060 1058
		f 4 1820 1801 -1741 -1801
		mu 0 4 1059 1061 1062 1060
		f 4 1821 1802 -1742 -1802
		mu 0 4 1061 1063 1064 1062
		f 4 1822 1803 -1743 -1803
		mu 0 4 1063 1065 1066 1064
		f 4 1823 1804 -1744 -1804
		mu 0 4 1065 1067 1068 1066
		f 4 1824 1805 -1745 -1805
		mu 0 4 1067 1069 1070 1068
		f 4 1825 1806 -1746 -1806
		mu 0 4 1069 1071 1072 1070
		f 4 1826 1807 -1747 -1807
		mu 0 4 1071 1073 1074 1072
		f 4 1827 1788 -1748 -1808
		mu 0 4 1073 1075 1076 1074
		f 4 -1769 1748 1608 -1750
		mu 0 4 954 953 994 993
		f 4 -1770 1749 1609 -1751
		mu 0 4 956 954 993 997
		f 4 -1771 1750 1610 -1752
		mu 0 4 958 956 997 999
		f 4 -1772 1751 1611 -1753
		mu 0 4 960 958 999 1001
		f 4 -1773 1752 1612 -1754
		mu 0 4 962 960 1001 1003
		f 4 -1774 1753 1613 -1755
		mu 0 4 964 962 1003 1005
		f 4 -1775 1754 1614 -1756
		mu 0 4 966 964 1005 1007
		f 4 -1776 1755 1615 -1757
		mu 0 4 968 966 1007 1009
		f 4 -1777 1756 1616 -1758
		mu 0 4 970 968 1009 1011
		f 4 -1778 1757 1617 -1759
		mu 0 4 972 970 1011 1013
		f 4 -1779 1758 1618 -1760
		mu 0 4 974 972 1013 1015
		f 4 -1780 1759 1619 -1761
		mu 0 4 976 974 1015 1017
		f 4 -1781 1760 1620 -1762
		mu 0 4 978 976 1017 1019
		f 4 -1782 1761 1621 -1763
		mu 0 4 980 978 1019 1021
		f 4 -1783 1762 1622 -1764
		mu 0 4 982 980 1021 1023
		f 4 -1784 1763 1623 -1765
		mu 0 4 984 982 1023 1025
		f 4 -1785 1764 1624 -1766
		mu 0 4 986 984 1025 1027
		f 4 -1786 1765 1625 -1767
		mu 0 4 988 986 1027 1029
		f 4 -1787 1766 1626 -1768
		mu 0 4 990 988 1029 1031
		f 4 -1788 1767 1627 -1749
		mu 0 4 992 990 1031 1033
		f 4 -1608 1687 -1809 -1669
		mu 0 4 950 948 1036 1035
		f 4 -1607 1686 -1810 -1688
		mu 0 4 948 946 1039 1036
		f 4 -1606 1685 -1811 -1687
		mu 0 4 946 944 1041 1039
		f 4 -1605 1684 -1812 -1686
		mu 0 4 944 942 1043 1041
		f 4 -1604 1683 -1813 -1685
		mu 0 4 942 940 1045 1043
		f 4 -1603 1682 -1814 -1684
		mu 0 4 940 938 1047 1045
		f 4 -1602 1681 -1815 -1683
		mu 0 4 938 936 1049 1047
		f 4 -1601 1680 -1816 -1682
		mu 0 4 936 934 1051 1049
		f 4 -1600 1679 -1817 -1681
		mu 0 4 934 932 1053 1051
		f 4 -1599 1678 -1818 -1680
		mu 0 4 932 930 1055 1053
		f 4 -1598 1677 -1819 -1679
		mu 0 4 930 928 1057 1055
		f 4 -1597 1676 -1820 -1678
		mu 0 4 928 926 1059 1057
		f 4 -1596 1675 -1821 -1677
		mu 0 4 926 924 1061 1059
		f 4 -1595 1674 -1822 -1676
		mu 0 4 924 922 1063 1061
		f 4 -1594 1673 -1823 -1675
		mu 0 4 922 920 1065 1063
		f 4 -1593 1672 -1824 -1674
		mu 0 4 920 918 1067 1065
		f 4 -1592 1671 -1825 -1673
		mu 0 4 918 916 1069 1067
		f 4 -1591 1670 -1826 -1672
		mu 0 4 916 914 1071 1069
		f 4 -1590 1669 -1827 -1671
		mu 0 4 914 912 1073 1071
		f 4 -1589 1668 -1828 -1670
		mu 0 4 912 911 1075 1073
		f 4 1888 1869 2027 -1869
		mu 0 4 1077 1078 1079 1080
		f 4 1889 1870 2026 -1870
		mu 0 4 1078 1081 1082 1079
		f 4 1890 1871 2025 -1871
		mu 0 4 1081 1083 1084 1082
		f 4 1891 1872 2024 -1872
		mu 0 4 1083 1085 1086 1084
		f 4 1892 1873 2023 -1873
		mu 0 4 1085 1087 1088 1086
		f 4 1893 1874 2022 -1874
		mu 0 4 1087 1089 1090 1088
		f 4 1894 1875 2021 -1875
		mu 0 4 1089 1091 1092 1090
		f 4 1895 1876 2020 -1876
		mu 0 4 1091 1093 1094 1092
		f 4 1896 1877 2019 -1877
		mu 0 4 1093 1095 1096 1094
		f 4 1897 1878 2018 -1878
		mu 0 4 1095 1097 1098 1096
		f 4 1898 1879 2017 -1879
		mu 0 4 1097 1099 1100 1098
		f 4 1899 1880 2016 -1880
		mu 0 4 1099 1101 1102 1100
		f 4 1900 1881 2015 -1881
		mu 0 4 1101 1103 1104 1102
		f 4 1901 1882 2014 -1882
		mu 0 4 1103 1105 1106 1104
		f 4 1902 1883 2013 -1883
		mu 0 4 1105 1107 1108 1106
		f 4 1903 1884 2012 -1884
		mu 0 4 1107 1109 1110 1108
		f 4 1904 1885 2011 -1885
		mu 0 4 1109 1111 1112 1110
		f 4 1905 1886 2010 -1886
		mu 0 4 1111 1113 1114 1112
		f 4 1906 1887 2009 -1887
		mu 0 4 1113 1115 1116 1114
		f 4 1907 1868 2008 -1888
		mu 0 4 1115 1117 1118 1116
		f 4 -1568 1647 -1889 -1629
		mu 0 4 1119 1120 1078 1077
		f 4 -1567 1646 -1890 -1648
		mu 0 4 1120 1121 1081 1078
		f 4 -1566 1645 -1891 -1647
		mu 0 4 1121 1122 1083 1081
		f 4 -1565 1644 -1892 -1646
		mu 0 4 1122 1123 1085 1083
		f 4 -1564 1643 -1893 -1645
		mu 0 4 1123 1124 1087 1085
		f 4 -1563 1642 -1894 -1644
		mu 0 4 1124 1125 1089 1087
		f 4 -1562 1641 -1895 -1643
		mu 0 4 1125 1126 1091 1089
		f 4 -1561 1640 -1896 -1642
		mu 0 4 1126 1127 1093 1091
		f 4 -1560 1639 -1897 -1641
		mu 0 4 1127 1128 1095 1093
		f 4 -1559 1638 -1898 -1640
		mu 0 4 1128 1129 1097 1095
		f 4 -1558 1637 -1899 -1639
		mu 0 4 1129 1130 1099 1097
		f 4 -1557 1636 -1900 -1638
		mu 0 4 1130 1131 1101 1099
		f 4 -1556 1635 -1901 -1637
		mu 0 4 1131 1132 1103 1101
		f 4 -1555 1634 -1902 -1636
		mu 0 4 1132 1133 1105 1103
		f 4 -1554 1633 -1903 -1635
		mu 0 4 1133 1134 1107 1105
		f 4 -1553 1632 -1904 -1634
		mu 0 4 1134 1135 1109 1107
		f 4 -1552 1631 -1905 -1633
		mu 0 4 1135 1136 1111 1109
		f 4 -1551 1630 -1906 -1632
		mu 0 4 1136 1137 1113 1111
		f 4 -1550 1629 -1907 -1631
		mu 0 4 1137 1138 1115 1113
		f 4 -1549 1628 -1908 -1630
		mu 0 4 1138 1139 1117 1115
		f 4 -1929 1908 1568 -1910
		mu 0 4 870 869 910 909
		f 4 -1930 1909 1569 -1911
		mu 0 4 872 870 909 913
		f 4 -1931 1910 1570 -1912
		mu 0 4 874 872 913 915
		f 4 -1932 1911 1571 -1913
		mu 0 4 876 874 915 917
		f 4 -1933 1912 1572 -1914
		mu 0 4 878 876 917 919
		f 4 -1934 1913 1573 -1915
		mu 0 4 880 878 919 921
		f 4 -1935 1914 1574 -1916
		mu 0 4 882 880 921 923
		f 4 -1936 1915 1575 -1917
		mu 0 4 884 882 923 925
		f 4 -1937 1916 1576 -1918
		mu 0 4 886 884 925 927
		f 4 -1938 1917 1577 -1919
		mu 0 4 888 886 927 929
		f 4 -1939 1918 1578 -1920
		mu 0 4 890 888 929 931
		f 4 -1940 1919 1579 -1921
		mu 0 4 892 890 931 933
		f 4 -1941 1920 1580 -1922
		mu 0 4 894 892 933 935
		f 4 -1942 1921 1581 -1923
		mu 0 4 896 894 935 937
		f 4 -1943 1922 1582 -1924
		mu 0 4 898 896 937 939
		f 4 -1944 1923 1583 -1925
		mu 0 4 900 898 939 941
		f 4 -1945 1924 1584 -1926
		mu 0 4 902 900 941 943
		f 4 -1946 1925 1585 -1927
		mu 0 4 904 902 943 945
		f 4 -1947 1926 1586 -1928
		mu 0 4 906 904 945 947
		f 4 -1948 1927 1587 -1909
		mu 0 4 908 906 947 949
		f 4 1728 1709 -1969 -1709
		mu 0 4 1038 1037 989 991
		f 4 1729 1710 -1970 -1710
		mu 0 4 1037 1040 987 989
		f 4 1730 1711 -1971 -1711
		mu 0 4 1040 1042 985 987
		f 4 1731 1712 -1972 -1712
		mu 0 4 1042 1044 983 985
		f 4 1732 1713 -1973 -1713
		mu 0 4 1044 1046 981 983
		f 4 1733 1714 -1974 -1714
		mu 0 4 1046 1048 979 981
		f 4 1734 1715 -1975 -1715
		mu 0 4 1048 1050 977 979
		f 4 1735 1716 -1976 -1716
		mu 0 4 1050 1052 975 977
		f 4 1736 1717 -1977 -1717
		mu 0 4 1052 1054 973 975
		f 4 1737 1718 -1978 -1718
		mu 0 4 1054 1056 971 973
		f 4 1738 1719 -1979 -1719
		mu 0 4 1056 1058 969 971
		f 4 1739 1720 -1980 -1720
		mu 0 4 1058 1060 967 969
		f 4 1740 1721 -1981 -1721
		mu 0 4 1060 1062 965 967
		f 4 1741 1722 -1982 -1722
		mu 0 4 1062 1064 963 965
		f 4 1742 1723 -1983 -1723
		mu 0 4 1064 1066 961 963
		f 4 1743 1724 -1984 -1724
		mu 0 4 1066 1068 959 961
		f 4 1744 1725 -1985 -1725
		mu 0 4 1068 1070 957 959
		f 4 1745 1726 -1986 -1726
		mu 0 4 1070 1072 955 957
		f 4 1746 1727 -1987 -1727
		mu 0 4 1072 1074 951 955
		f 4 1747 1708 -1988 -1728
		mu 0 4 1074 1076 952 951
		f 4 -2009 1988 -1868 -1990
		mu 0 4 1116 1118 868 867
		f 4 -2010 1989 -1867 -1991
		mu 0 4 1114 1116 867 871
		f 4 -2011 1990 -1866 -1992
		mu 0 4 1112 1114 871 873
		f 4 -2012 1991 -1865 -1993
		mu 0 4 1110 1112 873 875
		f 4 -2013 1992 -1864 -1994
		mu 0 4 1108 1110 875 877
		f 4 -2014 1993 -1863 -1995
		mu 0 4 1106 1108 877 879
		f 4 -2015 1994 -1862 -1996
		mu 0 4 1104 1106 879 881;
	setAttr ".fc[1000:1463]"
		f 4 -2016 1995 -1861 -1997
		mu 0 4 1102 1104 881 883
		f 4 -2017 1996 -1860 -1998
		mu 0 4 1100 1102 883 885
		f 4 -2018 1997 -1859 -1999
		mu 0 4 1098 1100 885 887
		f 4 -2019 1998 -1858 -2000
		mu 0 4 1096 1098 887 889
		f 4 -2020 1999 -1857 -2001
		mu 0 4 1094 1096 889 891
		f 4 -2021 2000 -1856 -2002
		mu 0 4 1092 1094 891 893
		f 4 -2022 2001 -1855 -2003
		mu 0 4 1090 1092 893 895
		f 4 -2023 2002 -1854 -2004
		mu 0 4 1088 1090 895 897
		f 4 -2024 2003 -1853 -2005
		mu 0 4 1086 1088 897 899
		f 4 -2025 2004 -1852 -2006
		mu 0 4 1084 1086 899 901
		f 4 -2026 2005 -1851 -2007
		mu 0 4 1082 1084 901 903
		f 4 -2027 2006 -1850 -2008
		mu 0 4 1079 1082 903 905
		f 4 -2028 2007 -1849 -1989
		mu 0 4 1080 1079 905 907
		f 4 2040 -2055 -2042 -2045
		mu 0 4 1140 1143 1142 1141
		f 4 -2114 -2113 -2111 -2110
		mu 0 4 1144 1147 1146 1145
		f 4 2048 -2047 -2050 -2053
		mu 0 4 1148 1151 1150 1149
		f 4 2038 2028 -2040 -2032
		mu 0 4 1152 1155 1154 1153
		f 4 2041 -2054 2049 -2046
		mu 0 4 1141 1142 1157 1156
		f 4 -2049 -2056 -2041 -2048
		mu 0 4 1158 1159 1143 1140
		f 4 2032 2044 -2034 -2029
		mu 0 4 1160 1140 1141 1161
		f 4 2033 2045 2042 2039
		mu 0 4 1161 1141 1156 1162
		f 4 2043 2031 -2043 2046
		mu 0 4 1151 1152 1153 1150
		f 4 -2044 2047 -2033 -2039
		mu 0 4 1163 1158 1140 1160
		f 4 2056 2052 -2058 -2061
		mu 0 4 1164 1148 1149 1165
		f 4 2050 -2062 2057 2053
		mu 0 4 1142 1167 1166 1157
		f 4 2051 -2063 -2051 2054
		mu 0 4 1143 1168 1167 1142
		f 4 -2057 -2064 -2052 2055
		mu 0 4 1159 1169 1168 1143
		f 4 2064 2060 -2066 -2069
		mu 0 4 1170 1164 1165 1171
		f 4 2058 -2070 2065 2061
		mu 0 4 1167 1173 1172 1166
		f 4 2059 -2071 -2059 2062
		mu 0 4 1168 1174 1173 1167
		f 4 -2065 -2072 -2060 2063
		mu 0 4 1169 1175 1174 1168
		f 4 2072 2068 -2074 -2077
		mu 0 4 1176 1170 1171 1177
		f 4 2066 -2078 2073 2069
		mu 0 4 1173 1179 1178 1172
		f 4 2067 -2079 -2067 2070
		mu 0 4 1174 1180 1179 1173
		f 4 -2073 -2080 -2068 2071
		mu 0 4 1175 1181 1180 1174
		f 4 2080 2076 -2082 -2085
		mu 0 4 1182 1176 1177 1183
		f 4 2074 -2086 2081 2077
		mu 0 4 1179 1185 1184 1178
		f 4 2075 -2087 -2075 2078
		mu 0 4 1180 1186 1185 1179
		f 4 -2081 -2088 -2076 2079
		mu 0 4 1181 1187 1186 1180
		f 4 2088 2084 -2090 -2093
		mu 0 4 1188 1182 1183 1189
		f 4 2082 -2094 2089 2085
		mu 0 4 1185 1191 1190 1184
		f 4 2083 -2095 -2083 2086
		mu 0 4 1186 1192 1191 1185
		f 4 -2089 -2096 -2084 2087
		mu 0 4 1187 1193 1192 1186
		f 7 2036 2092 -2038 -2101 -2097 -2103 -2031
		mu 0 7 1194 1188 1189 1198 1197 1196 1195
		f 7 2090 2035 2107 2098 2105 2037 2093
		mu 0 7 1191 1203 1202 1201 1200 1199 1190
		f 7 2091 2029 2103 2097 2101 -2091 2094
		mu 0 7 1192 1207 1206 1205 1204 1203 1191
		f 7 -2037 -2105 -2100 -2107 -2035 -2092 2095
		mu 0 7 1193 1211 1210 1209 1208 1207 1192
		f 4 -2118 2116 -2116 -2115
		mu 0 4 1212 1215 1214 1213
		f 4 2124 -2124 -2122 -2120
		mu 0 4 1216 1219 1218 1217
		f 4 2130 2129 -2128 -2127
		mu 0 4 1220 1223 1222 1221
		f 4 2132 2119 -2132 -2130
		mu 0 4 1223 1216 1217 1222
		f 4 -2117 -2135 2110 -2134
		mu 0 4 1214 1215 1145 1146
		f 4 2139 2138 2126 -2137
		mu 0 4 1224 1225 1220 1221
		f 4 2144 -2144 2114 -2142
		mu 0 4 1226 1227 1212 1213
		f 4 2146 2136 2145 2143
		mu 0 4 1227 1224 1221 1212
		f 4 2147 2117 -2146 2127
		mu 0 4 1222 1215 1212 1221
		f 4 2148 2134 -2148 2131
		mu 0 4 1217 1145 1215 1222
		f 4 -2150 2109 -2149 2121
		mu 0 4 1218 1144 1145 1217
		f 4 2154 2141 2153 -2153
		mu 0 4 1228 1226 1213 1229
		f 4 2157 -2157 -2154 2115
		mu 0 4 1214 1230 1229 1213
		f 4 -2161 -2158 2133 2159
		mu 0 4 1231 1230 1214 1146
		f 4 -2164 -2163 -2160 2112
		mu 0 4 1147 1232 1231 1146
		f 4 2111 2113 -2109 -2108
		mu 0 4 1233 1147 1144 1234
		f 4 2120 2123 -2123 -2106
		mu 0 4 1235 1218 1219 1198
		f 4 2122 -2125 -2119 2100
		mu 0 4 1198 1219 1216 1197
		f 4 2128 -2131 -2126 2102
		mu 0 4 1196 1223 1220 1195
		f 4 2118 -2133 -2129 2096
		mu 0 4 1197 1216 1223 1196
		f 4 2125 -2139 -2138 2030
		mu 0 4 1195 1220 1225 1194
		f 4 2137 -2140 -2136 2104
		mu 0 4 1194 1225 1224 1236
		f 4 2142 -2145 -2141 2106
		mu 0 4 1237 1227 1226 1238
		f 4 2135 -2147 -2143 2099
		mu 0 4 1236 1224 1227 1237
		f 4 2108 2149 -2121 -2099
		mu 0 4 1234 1144 1218 1235
		f 4 2150 2152 -2152 -2030
		mu 0 4 1207 1228 1229 1206
		f 4 2140 -2155 -2151 2034
		mu 0 4 1238 1226 1228 1207
		f 4 2151 2156 -2156 -2104
		mu 0 4 1206 1229 1230 1205
		f 4 2155 2160 -2159 -2098
		mu 0 4 1205 1230 1231 1204
		f 4 2158 2162 -2162 -2102
		mu 0 4 1204 1231 1232 1203
		f 4 2161 2163 -2112 -2036
		mu 0 4 1203 1232 1147 1233
		f 4 2164 2169 -2166 -2169
		mu 0 4 1239 1240 1241 1242
		f 4 2165 2171 -2167 -2171
		mu 0 4 1242 1241 1243 1244
		f 4 2166 2173 -2168 -2173
		mu 0 4 1244 1243 1245 1246
		f 4 2167 2175 -2165 -2175
		mu 0 4 1246 1245 1247 1248
		f 4 -2176 -2174 -2172 -2170
		mu 0 4 1240 1249 1250 1241
		f 4 2174 2168 2170 2172
		mu 0 4 1251 1239 1242 1252
		f 4 2176 2181 -2178 -2181
		mu 0 4 1253 1254 1255 1256
		f 4 2177 2183 -2179 -2183
		mu 0 4 1256 1255 1257 1258
		f 4 2178 2185 -2180 -2185
		mu 0 4 1258 1257 1259 1260
		f 4 2179 2187 -2177 -2187
		mu 0 4 1260 1259 1261 1262
		f 4 -2188 -2186 -2184 -2182
		mu 0 4 1254 1263 1264 1255
		f 4 2186 2180 2182 2184
		mu 0 4 1265 1253 1256 1266
		f 4 2188 2193 -2190 -2193
		mu 0 4 1267 1268 1269 1270
		f 4 2189 2195 -2191 -2195
		mu 0 4 1270 1269 1271 1272
		f 4 2190 2197 -2192 -2197
		mu 0 4 1272 1271 1273 1274
		f 4 2191 2199 -2189 -2199
		mu 0 4 1274 1273 1275 1276
		f 4 -2200 -2198 -2196 -2194
		mu 0 4 1268 1277 1278 1269
		f 4 2198 2192 2194 2196
		mu 0 4 1279 1267 1270 1280
		f 4 2212 -2227 -2214 -2217
		mu 0 4 1281 1284 1283 1282
		f 4 -2286 -2285 -2283 -2282
		mu 0 4 1285 1288 1287 1286
		f 4 2220 -2219 -2222 -2225
		mu 0 4 1289 1292 1291 1290
		f 4 2210 2200 -2212 -2204
		mu 0 4 1293 1296 1295 1294
		f 4 2213 -2226 2221 -2218
		mu 0 4 1282 1283 1298 1297
		f 4 -2221 -2228 -2213 -2220
		mu 0 4 1299 1300 1284 1281
		f 4 2204 2216 -2206 -2201
		mu 0 4 1301 1281 1282 1302
		f 4 2205 2217 2214 2211
		mu 0 4 1302 1282 1297 1303
		f 4 2215 2203 -2215 2218
		mu 0 4 1292 1293 1294 1291
		f 4 -2216 2219 -2205 -2211
		mu 0 4 1304 1299 1281 1301
		f 4 2228 2224 -2230 -2233
		mu 0 4 1305 1289 1290 1306
		f 4 2222 -2234 2229 2225
		mu 0 4 1283 1308 1307 1298
		f 4 2223 -2235 -2223 2226
		mu 0 4 1284 1309 1308 1283
		f 4 -2229 -2236 -2224 2227
		mu 0 4 1300 1310 1309 1284
		f 4 2236 2232 -2238 -2241
		mu 0 4 1311 1305 1306 1312
		f 4 2230 -2242 2237 2233
		mu 0 4 1308 1314 1313 1307
		f 4 2231 -2243 -2231 2234
		mu 0 4 1309 1315 1314 1308
		f 4 -2237 -2244 -2232 2235
		mu 0 4 1310 1316 1315 1309
		f 4 2244 2240 -2246 -2249
		mu 0 4 1317 1311 1312 1318
		f 4 2238 -2250 2245 2241
		mu 0 4 1314 1320 1319 1313
		f 4 2239 -2251 -2239 2242
		mu 0 4 1315 1321 1320 1314
		f 4 -2245 -2252 -2240 2243
		mu 0 4 1316 1322 1321 1315
		f 4 2252 2248 -2254 -2257
		mu 0 4 1323 1317 1318 1324
		f 4 2246 -2258 2253 2249
		mu 0 4 1320 1326 1325 1319
		f 4 2247 -2259 -2247 2250
		mu 0 4 1321 1327 1326 1320
		f 4 -2253 -2260 -2248 2251
		mu 0 4 1322 1328 1327 1321
		f 4 2260 2256 -2262 -2265
		mu 0 4 1329 1323 1324 1330
		f 4 2254 -2266 2261 2257
		mu 0 4 1326 1332 1331 1325
		f 4 2255 -2267 -2255 2258
		mu 0 4 1327 1333 1332 1326
		f 4 -2261 -2268 -2256 2259
		mu 0 4 1328 1334 1333 1327
		f 7 2208 2264 -2210 -2273 -2269 -2275 -2203
		mu 0 7 1335 1329 1330 1339 1338 1337 1336
		f 7 2262 2207 2279 2270 2277 2209 2265
		mu 0 7 1332 1344 1343 1342 1341 1340 1331
		f 7 2263 2201 2275 2269 2273 -2263 2266
		mu 0 7 1333 1348 1347 1346 1345 1344 1332
		f 7 -2209 -2277 -2272 -2279 -2207 -2264 2267
		mu 0 7 1334 1352 1351 1350 1349 1348 1333
		f 4 -2290 2288 -2288 -2287
		mu 0 4 1353 1356 1355 1354
		f 4 2296 -2296 -2294 -2292
		mu 0 4 1357 1360 1359 1358
		f 4 2302 2301 -2300 -2299
		mu 0 4 1361 1364 1363 1362
		f 4 2304 2291 -2304 -2302
		mu 0 4 1364 1357 1358 1363
		f 4 -2289 -2307 2282 -2306
		mu 0 4 1355 1356 1286 1287
		f 4 2311 2310 2298 -2309
		mu 0 4 1365 1366 1361 1362
		f 4 2316 -2316 2286 -2314
		mu 0 4 1367 1368 1353 1354
		f 4 2318 2308 2317 2315
		mu 0 4 1368 1365 1362 1353
		f 4 2319 2289 -2318 2299
		mu 0 4 1363 1356 1353 1362
		f 4 2320 2306 -2320 2303
		mu 0 4 1358 1286 1356 1363
		f 4 -2322 2281 -2321 2293
		mu 0 4 1359 1285 1286 1358
		f 4 2326 2313 2325 -2325
		mu 0 4 1369 1367 1354 1370
		f 4 2329 -2329 -2326 2287
		mu 0 4 1355 1371 1370 1354
		f 4 -2333 -2330 2305 2331
		mu 0 4 1372 1371 1355 1287
		f 4 -2336 -2335 -2332 2284
		mu 0 4 1288 1373 1372 1287
		f 4 2283 2285 -2281 -2280
		mu 0 4 1374 1288 1285 1375
		f 4 2292 2295 -2295 -2278
		mu 0 4 1376 1359 1360 1339
		f 4 2294 -2297 -2291 2272
		mu 0 4 1339 1360 1357 1338
		f 4 2300 -2303 -2298 2274
		mu 0 4 1337 1364 1361 1336
		f 4 2290 -2305 -2301 2268
		mu 0 4 1338 1357 1364 1337
		f 4 2297 -2311 -2310 2202
		mu 0 4 1336 1361 1366 1335
		f 4 2309 -2312 -2308 2276
		mu 0 4 1335 1366 1365 1377
		f 4 2314 -2317 -2313 2278
		mu 0 4 1378 1368 1367 1379
		f 4 2307 -2319 -2315 2271
		mu 0 4 1377 1365 1368 1378
		f 4 2280 2321 -2293 -2271
		mu 0 4 1375 1285 1359 1376
		f 4 2322 2324 -2324 -2202
		mu 0 4 1348 1369 1370 1347
		f 4 2312 -2327 -2323 2206
		mu 0 4 1379 1367 1369 1348
		f 4 2323 2328 -2328 -2276
		mu 0 4 1347 1370 1371 1346
		f 4 2327 2332 -2331 -2270
		mu 0 4 1346 1371 1372 1345
		f 4 2330 2334 -2334 -2274
		mu 0 4 1345 1372 1373 1344
		f 4 2333 2335 -2284 -2208
		mu 0 4 1344 1373 1288 1374
		f 4 2336 2341 -2338 -2341
		mu 0 4 1380 1381 1382 1383
		f 4 2337 2343 -2339 -2343
		mu 0 4 1383 1382 1384 1385
		f 4 2338 2345 -2340 -2345
		mu 0 4 1385 1384 1386 1387
		f 4 2339 2347 -2337 -2347
		mu 0 4 1387 1386 1388 1389
		f 4 -2348 -2346 -2344 -2342
		mu 0 4 1381 1390 1391 1382
		f 4 2346 2340 2342 2344
		mu 0 4 1392 1380 1383 1393
		f 4 2348 2353 -2350 -2353
		mu 0 4 1394 1395 1396 1397
		f 4 2349 2355 -2351 -2355
		mu 0 4 1397 1396 1398 1399
		f 4 2350 2357 -2352 -2357
		mu 0 4 1399 1398 1400 1401
		f 4 2351 2359 -2349 -2359
		mu 0 4 1401 1400 1402 1403
		f 4 -2360 -2358 -2356 -2354
		mu 0 4 1395 1404 1405 1396
		f 4 2358 2352 2354 2356
		mu 0 4 1406 1394 1397 1407
		f 4 2360 2365 -2362 -2365
		mu 0 4 1408 1409 1410 1411
		f 4 2361 2367 -2363 -2367
		mu 0 4 1411 1410 1412 1413
		f 4 2362 2369 -2364 -2369
		mu 0 4 1413 1412 1414 1415
		f 4 2363 2371 -2361 -2371
		mu 0 4 1415 1414 1416 1417
		f 4 -2372 -2370 -2368 -2366
		mu 0 4 1409 1418 1419 1410
		f 4 2370 2364 2366 2368
		mu 0 4 1420 1408 1411 1421
		f 4 2372 2377 -2374 -2377
		mu 0 4 1422 1423 1424 1425
		f 4 2373 2379 -2375 -2379
		mu 0 4 1425 1424 1426 1427
		f 4 2374 2381 -2376 -2381
		mu 0 4 1427 1426 1428 1429
		f 4 2375 2383 -2373 -2383
		mu 0 4 1429 1428 1430 1431
		f 4 -2384 -2382 -2380 -2378
		mu 0 4 1423 1432 1433 1424
		f 4 2382 2376 2378 2380
		mu 0 4 1434 1422 1425 1435
		f 4 2384 2389 -2386 -2389
		mu 0 4 1436 1437 1438 1439
		f 4 2385 2391 -2387 -2391
		mu 0 4 1439 1438 1440 1441
		f 4 2386 2393 -2388 -2393
		mu 0 4 1441 1440 1442 1443
		f 4 2387 2395 -2385 -2395
		mu 0 4 1443 1442 1444 1445
		f 4 -2396 -2394 -2392 -2390
		mu 0 4 1437 1446 1447 1438
		f 4 2394 2388 2390 2392
		mu 0 4 1448 1436 1439 1449
		f 4 2396 2401 -2398 -2401
		mu 0 4 1450 1451 1452 1453
		f 4 2397 2403 -2399 -2403
		mu 0 4 1453 1452 1454 1455
		f 4 2398 2405 -2400 -2405
		mu 0 4 1455 1454 1456 1457
		f 4 2399 2407 -2397 -2407
		mu 0 4 1457 1456 1458 1459
		f 4 -2408 -2406 -2404 -2402
		mu 0 4 1451 1460 1461 1452
		f 4 2406 2400 2402 2404
		mu 0 4 1462 1450 1453 1463
		f 4 2408 2413 -2410 -2413
		mu 0 4 1464 1465 1466 1467
		f 4 2409 2415 -2411 -2415
		mu 0 4 1467 1466 1468 1469
		f 4 2410 2417 -2412 -2417
		mu 0 4 1469 1468 1470 1471
		f 4 2411 2419 -2409 -2419
		mu 0 4 1471 1470 1472 1473
		f 4 -2420 -2418 -2416 -2414
		mu 0 4 1465 1474 1475 1466
		f 4 2418 2412 2414 2416
		mu 0 4 1476 1464 1467 1477
		f 4 2420 2425 -2422 -2425
		mu 0 4 1478 1479 1480 1481
		f 4 2421 2427 -2423 -2427
		mu 0 4 1481 1480 1482 1483
		f 4 2422 2429 -2424 -2429
		mu 0 4 1483 1482 1484 1485
		f 4 2423 2431 -2421 -2431
		mu 0 4 1485 1484 1486 1487
		f 4 -2432 -2430 -2428 -2426
		mu 0 4 1479 1488 1489 1480
		f 4 2430 2424 2426 2428
		mu 0 4 1490 1478 1481 1491
		f 4 2432 2437 -2434 -2437
		mu 0 4 1492 1493 1494 1495
		f 4 2433 2439 -2435 -2439
		mu 0 4 1495 1494 1496 1497
		f 4 2434 2441 -2436 -2441
		mu 0 4 1497 1496 1498 1499
		f 4 2435 2443 -2433 -2443
		mu 0 4 1499 1498 1500 1501
		f 4 -2444 -2442 -2440 -2438
		mu 0 4 1493 1502 1503 1494
		f 4 2442 2436 2438 2440
		mu 0 4 1504 1492 1495 1505
		f 4 2444 2449 -2446 -2449
		mu 0 4 1506 1507 1508 1509
		f 4 2445 2451 -2447 -2451
		mu 0 4 1509 1508 1510 1511
		f 4 2446 2453 -2448 -2453
		mu 0 4 1511 1510 1512 1513
		f 4 2447 2455 -2445 -2455
		mu 0 4 1513 1512 1514 1515
		f 4 -2456 -2454 -2452 -2450
		mu 0 4 1507 1516 1517 1508
		f 4 2454 2448 2450 2452
		mu 0 4 1518 1506 1509 1519
		f 4 2456 2461 -2458 -2461
		mu 0 4 1520 1521 1522 1523
		f 4 2457 2463 -2459 -2463
		mu 0 4 1523 1522 1524 1525
		f 4 2458 2465 -2460 -2465
		mu 0 4 1525 1524 1526 1527
		f 4 2459 2467 -2457 -2467
		mu 0 4 1527 1526 1528 1529
		f 4 -2468 -2466 -2464 -2462
		mu 0 4 1521 1530 1531 1522
		f 4 2466 2460 2462 2464
		mu 0 4 1532 1520 1523 1533
		f 4 2468 2473 -2470 -2473
		mu 0 4 1534 1535 1536 1537
		f 4 2469 2475 -2471 -2475
		mu 0 4 1537 1536 1538 1539
		f 4 2470 2477 -2472 -2477
		mu 0 4 1539 1538 1540 1541
		f 4 2471 2479 -2469 -2479
		mu 0 4 1541 1540 1542 1543
		f 4 -2480 -2478 -2476 -2474
		mu 0 4 1535 1544 1545 1536
		f 4 2478 2472 2474 2476
		mu 0 4 1546 1534 1537 1547
		f 4 2480 2485 -2482 -2485
		mu 0 4 1548 1549 1550 1551
		f 4 2481 2487 -2483 -2487
		mu 0 4 1551 1550 1552 1553
		f 4 2482 2489 -2484 -2489
		mu 0 4 1553 1552 1554 1555
		f 4 2483 2491 -2481 -2491
		mu 0 4 1555 1554 1556 1557
		f 4 -2492 -2490 -2488 -2486
		mu 0 4 1549 1558 1559 1550
		f 4 2490 2484 2486 2488
		mu 0 4 1560 1548 1551 1561
		f 4 2492 2497 -2494 -2497
		mu 0 4 1562 1563 1564 1565
		f 4 2493 2499 -2495 -2499
		mu 0 4 1565 1564 1566 1567
		f 4 2494 2501 -2496 -2501
		mu 0 4 1567 1566 1568 1569
		f 4 2495 2503 -2493 -2503
		mu 0 4 1569 1568 1570 1571
		f 4 -2504 -2502 -2500 -2498
		mu 0 4 1563 1572 1573 1564
		f 4 2502 2496 2498 2500
		mu 0 4 1574 1562 1565 1575
		f 4 2504 2509 -2506 -2509
		mu 0 4 1576 1577 1578 1579
		f 4 2505 2511 -2507 -2511
		mu 0 4 1579 1578 1580 1581
		f 4 2506 2513 -2508 -2513
		mu 0 4 1581 1580 1582 1583
		f 4 2507 2515 -2505 -2515
		mu 0 4 1583 1582 1584 1585
		f 4 -2516 -2514 -2512 -2510
		mu 0 4 1577 1586 1587 1578
		f 4 2514 2508 2510 2512
		mu 0 4 1588 1576 1579 1589
		f 4 2520 2517 -2522 -2517
		mu 0 4 1590 1591 1592 1593
		f 4 2522 2518 -2524 -2518
		mu 0 4 1591 1594 1595 1592
		f 4 2524 2519 -2526 -2519
		mu 0 4 1594 1596 1597 1595
		f 4 2526 2516 -2528 -2520
		mu 0 4 1596 1598 1599 1597
		f 4 2521 2523 2525 2527
		mu 0 4 1593 1592 1600 1601
		f 4 -2525 -2523 -2521 -2527
		mu 0 4 1602 1603 1591 1590
		f 4 2528 2533 -2530 -2533
		mu 0 4 1604 1605 1606 1607
		f 4 2529 2535 -2531 -2535
		mu 0 4 1607 1606 1608 1609
		f 4 2530 2537 -2532 -2537
		mu 0 4 1609 1608 1610 1611
		f 4 2531 2539 -2529 -2539
		mu 0 4 1611 1610 1612 1613
		f 4 -2540 -2538 -2536 -2534
		mu 0 4 1605 1614 1615 1606
		f 4 2538 2532 2534 2536
		mu 0 4 1616 1604 1607 1617
		f 4 2540 2545 -2542 -2545
		mu 0 4 1618 1619 1620 1621
		f 4 2541 2547 -2543 -2547
		mu 0 4 1621 1620 1622 1623
		f 4 2542 2549 -2544 -2549
		mu 0 4 1623 1622 1624 1625
		f 4 2543 2551 -2541 -2551
		mu 0 4 1625 1624 1626 1627
		f 4 -2552 -2550 -2548 -2546
		mu 0 4 1619 1628 1629 1620
		f 4 2550 2544 2546 2548
		mu 0 4 1630 1618 1621 1631
		f 4 2556 2553 -2558 -2553
		mu 0 4 1632 1633 1634 1635
		f 4 2558 2554 -2560 -2554
		mu 0 4 1633 1636 1637 1634
		f 4 2560 2555 -2562 -2555
		mu 0 4 1636 1638 1639 1637
		f 4 2562 2552 -2564 -2556
		mu 0 4 1638 1640 1641 1639
		f 4 2557 2559 2561 2563
		mu 0 4 1635 1634 1642 1643
		f 4 -2561 -2559 -2557 -2563
		mu 0 4 1644 1645 1633 1632
		f 4 2564 2569 -2566 -2569
		mu 0 4 1646 1647 1648 1649
		f 4 2565 2571 -2567 -2571
		mu 0 4 1649 1648 1650 1651
		f 4 2566 2573 -2568 -2573
		mu 0 4 1651 1650 1652 1653
		f 4 2567 2575 -2565 -2575
		mu 0 4 1653 1652 1654 1655
		f 4 -2576 -2574 -2572 -2570
		mu 0 4 1647 1656 1657 1648
		f 4 2574 2568 2570 2572
		mu 0 4 1658 1646 1649 1659
		f 4 2576 2581 -2578 -2581
		mu 0 4 1660 1661 1662 1663
		f 4 2577 2583 -2579 -2583
		mu 0 4 1663 1662 1664 1665
		f 4 2578 2585 -2580 -2585
		mu 0 4 1665 1664 1666 1667
		f 4 2579 2587 -2577 -2587
		mu 0 4 1667 1666 1668 1669
		f 4 -2588 -2586 -2584 -2582
		mu 0 4 1661 1670 1671 1662
		f 4 2586 2580 2582 2584
		mu 0 4 1672 1660 1663 1673
		f 4 2588 2593 -2590 -2593
		mu 0 4 1674 1675 1676 1677
		f 4 2589 2595 -2591 -2595
		mu 0 4 1677 1676 1678 1679
		f 4 2590 2597 -2592 -2597
		mu 0 4 1679 1678 1680 1681
		f 4 2591 2599 -2589 -2599
		mu 0 4 1681 1680 1682 1683
		f 4 -2600 -2598 -2596 -2594
		mu 0 4 1675 1684 1685 1676
		f 4 2598 2592 2594 2596
		mu 0 4 1686 1674 1677 1687
		f 4 2604 2601 -2606 -2601
		mu 0 4 1688 1689 1690 1691
		f 4 2606 2602 -2608 -2602
		mu 0 4 1689 1692 1693 1690
		f 4 2608 2603 -2610 -2603
		mu 0 4 1692 1694 1695 1693
		f 4 2610 2600 -2612 -2604
		mu 0 4 1694 1696 1697 1695
		f 4 2605 2607 2609 2611
		mu 0 4 1691 1690 1698 1699
		f 4 -2609 -2607 -2605 -2611
		mu 0 4 1700 1701 1689 1688
		f 4 2616 2613 -2618 -2613
		mu 0 4 1702 1703 1704 1705
		f 4 2618 2614 -2620 -2614
		mu 0 4 1703 1706 1707 1704
		f 4 2620 2615 -2622 -2615
		mu 0 4 1706 1708 1709 1707
		f 4 2622 2612 -2624 -2616
		mu 0 4 1708 1710 1711 1709
		f 4 2617 2619 2621 2623
		mu 0 4 1705 1704 1712 1713
		f 4 -2621 -2619 -2617 -2623
		mu 0 4 1714 1715 1703 1702
		f 4 2624 2629 -2626 -2629
		mu 0 4 1716 1717 1718 1719
		f 4 2625 2631 -2627 -2631
		mu 0 4 1719 1718 1720 1721
		f 4 2626 2633 -2628 -2633
		mu 0 4 1721 1720 1722 1723
		f 4 2627 2635 -2625 -2635
		mu 0 4 1723 1722 1724 1725
		f 4 -2636 -2634 -2632 -2630
		mu 0 4 1717 1726 1727 1718
		f 4 2634 2628 2630 2632
		mu 0 4 1728 1716 1719 1729
		f 4 2636 2641 -2638 -2641
		mu 0 4 1730 1731 1732 1733
		f 4 2637 2643 -2639 -2643
		mu 0 4 1733 1732 1734 1735
		f 4 2638 2645 -2640 -2645
		mu 0 4 1735 1734 1736 1737
		f 4 2639 2647 -2637 -2647
		mu 0 4 1737 1736 1738 1739
		f 4 -2648 -2646 -2644 -2642
		mu 0 4 1731 1740 1741 1732
		f 4 2646 2640 2642 2644
		mu 0 4 1742 1730 1733 1743
		f 4 2648 2653 -2650 -2653
		mu 0 4 1744 1745 1746 1747
		f 4 2649 2655 -2651 -2655
		mu 0 4 1747 1746 1748 1749
		f 4 2650 2657 -2652 -2657
		mu 0 4 1749 1748 1750 1751
		f 4 2651 2659 -2649 -2659
		mu 0 4 1751 1750 1752 1753
		f 4 -2660 -2658 -2656 -2654
		mu 0 4 1745 1754 1755 1746
		f 4 2658 2652 2654 2656
		mu 0 4 1756 1744 1747 1757
		f 4 2676 2782 -2662 -2673
		mu 0 4 1758 1759 1760 1761
		f 8 2661 2778 2667 2786 -2795 -2663 -2771 -2667
		mu 0 8 1761 1760 1762 1763 1764 1765 1766 1767
		f 4 2798 2794 2669 2678
		mu 0 4 1768 1765 1764 1769
		f 5 2733 2726 2801 2711 2704
		mu 0 5 1770 1771 1772 1773 1774
		f 4 2677 2790 -2668 -2674
		mu 0 4 1775 1776 1777 1762
		f 4 2679 2774 2770 2668
		mu 0 4 1778 1779 1780 1781
		f 4 2684 2781 -2677 -2681
		mu 0 4 1782 1783 1759 1758
		f 4 2685 2789 -2678 -2682
		mu 0 4 1784 1785 1776 1775
		f 4 2797 -2679 2674 2686
		mu 0 4 1786 1768 1769 1787
		f 4 2687 2773 -2680 2675
		mu 0 4 1788 1789 1779 1778
		f 4 2692 2780 -2685 -2689
		mu 0 4 1790 1791 1783 1782
		f 4 2693 2788 -2686 -2690
		mu 0 4 1792 1793 1785 1784
		f 4 2796 -2687 2682 2694
		mu 0 4 1794 1786 1787 1795
		f 4 2695 2772 -2688 2683
		mu 0 4 1796 1797 1789 1788
		f 4 2660 2779 -2693 -2665
		mu 0 4 1798 1799 1791 1790
		f 5 -2814 -2698 2787 -2694 -2666
		mu 0 5 1800 1801 1802 1793 1792
		f 4 2795 -2695 2690 -2702
		mu 0 4 1803 1794 1795 1804
		f 4 2670 2771 -2696 2691
		mu 0 4 1805 1806 1797 1796
		f 4 2727 2720 2802 -2720
		mu 0 4 1807 1808 1809 1810
		f 4 2731 2724 2807 2805
		mu 0 4 1811 1812 1813 1814
		f 5 2729 2722 2806 2715 -2722
		mu 0 5 1815 1816 1817 1818 1819
		f 4 -2712 -2708 2703 2700
		mu 0 4 1774 1773 1820 1821
		f 4 -2823 -2825 -2827 2827
		mu 0 4 1822 1823 1824 1825
		f 4 -2830 -2832 -2833 -2828
		mu 0 4 1825 1826 1827 1822
		f 4 -2718 -2711 2706 -2704
		mu 0 4 1820 1828 1819 1821
		f 4 2734 2719 2803 -2727
		mu 0 4 1771 1807 1810 1772
		f 5 2732 -2705 2708 -2805 -2725
		mu 0 5 1812 1770 1774 1829 1813
		f 4 2808 -2723 2730 -2806
		mu 0 4 1814 1817 1816 1811
		f 5 2728 2721 2710 -2800 -2721
		mu 0 5 1808 1815 1819 1828 1809
		f 4 2743 2736 2762 -2736
		mu 0 4 1830 1831 1832 1833
		f 4 2744 2737 2761 -2737
		mu 0 4 1831 1834 1835 1832
		f 4 2745 2738 2760 -2738
		mu 0 4 1834 1836 1837 1835
		f 3 2819 2809 -2818
		mu 0 3 1838 1837 1839
		f 3 2747 2740 2816
		mu 0 3 1839 1840 1841
		f 4 2748 -2758 2765 -2741
		mu 0 4 1840 1842 1843 1841
		f 4 2749 2742 2764 2757
		mu 0 4 1842 1844 1845 1843
		f 4 2750 2735 2763 -2743
		mu 0 4 1844 1830 1833 1845
		f 4 2718 -2744 -2699 -2671
		mu 0 4 1846 1831 1830 1847
		f 4 2663 2702 -2745 -2719
		mu 0 4 1846 1803 1834 1831
		f 4 2716 -2746 -2703 2701
		mu 0 4 1804 1836 1834 1803
		f 3 -2747 2811 2812
		mu 0 3 1839 1836 1848
		f 3 2815 -2748 2814
		mu 0 3 1849 1840 1839
		f 4 -2742 -2749 -2715 -2700
		mu 0 4 1850 1842 1840 1851
		f 4 2712 -2750 2741 -2661
		mu 0 4 1852 1844 1842 1850
		f 4 2698 -2751 -2713 -2697
		mu 0 4 1847 1830 1844 1852
		f 4 -2731 -2753 -2760 -2724
		mu 0 4 1811 1816 1837 1853
		f 4 -2761 2752 -2730 -2754
		mu 0 4 1835 1837 1816 1815
		f 4 -2762 2753 -2729 -2755
		mu 0 4 1832 1835 1815 1808
		f 4 -2763 2754 -2728 -2756
		mu 0 4 1833 1832 1808 1807
		f 4 -2764 2755 -2735 -2757
		mu 0 4 1845 1833 1807 1771
		f 4 -2765 2756 -2734 2725
		mu 0 4 1843 1845 1771 1770
		f 4 -2766 -2726 -2733 -2759
		mu 0 4 1841 1843 1770 1812
		f 4 -2767 2758 -2732 2723
		mu 0 4 1853 1841 1812 1811
		f 4 -2772 2696 2664 -2768
		mu 0 4 1797 1806 1798 1790
		f 4 -2773 2767 2688 -2769
		mu 0 4 1789 1797 1790 1782
		f 4 -2774 2768 2680 -2770
		mu 0 4 1779 1789 1782 1758
		f 4 -2775 2769 2672 2666
		mu 0 4 1780 1779 1758 1761
		f 4 -2780 2699 2665 -2776
		mu 0 4 1791 1799 1800 1792
		f 4 -2781 2775 2689 -2777
		mu 0 4 1783 1791 1792 1784
		f 4 -2782 2776 2681 -2778
		mu 0 4 1759 1783 1784 1775
		f 4 -2783 2777 2673 -2779
		mu 0 4 1760 1759 1775 1762
		f 5 -2788 -2811 -2672 -2691 -2784
		mu 0 5 1793 1802 1854 1855 1856
		f 4 -2789 2783 -2683 -2785
		mu 0 4 1785 1793 1856 1857
		f 4 -2790 2784 -2675 -2786
		mu 0 4 1776 1785 1857 1858
		f 4 -2791 2785 -2670 -2787
		mu 0 4 1777 1776 1858 1859
		f 4 -2792 -2796 -2664 -2692
		mu 0 4 1860 1794 1803 1846
		f 4 -2793 -2797 2791 -2684
		mu 0 4 1861 1786 1794 1860
		f 4 -2794 -2798 2792 -2676
		mu 0 4 1862 1768 1786 1861
		f 4 2662 -2799 2793 -2669
		mu 0 4 1766 1765 1768 1862
		f 4 -2803 2799 2717 -2801
		mu 0 4 1810 1809 1828 1820
		f 4 -2804 2800 2707 -2802
		mu 0 4 1772 1810 1820 1773
		f 4 -2808 2804 2713 2705
		mu 0 4 1814 1813 1829 1863
		f 4 2709 -2807 -2809 -2706
		mu 0 4 1863 1818 1817 1814
		f 3 -2810 -2739 2746
		mu 0 3 1839 1837 1836
		f 3 -2812 -2717 2671
		mu 0 3 1848 1836 1804
		f 3 -2813 2810 -2740
		mu 0 3 1839 1848 1864
		f 3 -2815 2739 2697
		mu 0 3 1849 1839 1864
		f 3 2714 -2816 2813
		mu 0 3 1851 1840 1849
		f 3 -2817 2818 2817
		mu 0 3 1839 1841 1838
		f 3 -2819 2766 2751
		mu 0 3 1838 1841 1853
		f 3 2759 -2820 -2752
		mu 0 3 1853 1837 1838
		f 4 -2714 2820 2822 -2822
		mu 0 4 1863 1829 1823 1822
		f 4 -2709 2823 2824 -2821
		mu 0 4 1829 1774 1824 1823
		f 4 -2701 2825 2826 -2824
		mu 0 4 1774 1821 1825 1824
		f 4 -2707 2828 2829 -2826
		mu 0 4 1821 1819 1826 1825
		f 4 -2716 2830 2831 -2829
		mu 0 4 1819 1818 1827 1826
		f 4 -2710 2821 2832 -2831
		mu 0 4 1818 1863 1822 1827
		f 4 2833 2838 -2835 -2838
		mu 0 4 1865 1866 1867 1868
		f 4 2834 2840 -2836 -2840
		mu 0 4 1868 1867 1869 1870
		f 4 2835 2842 -2837 -2842
		mu 0 4 1870 1869 1871 1872
		f 4 2836 2844 -2834 -2844
		mu 0 4 1872 1871 1873 1874
		f 4 -2845 -2843 -2841 -2839
		mu 0 4 1866 1875 1876 1867
		f 4 2843 2837 2839 2841
		mu 0 4 1877 1865 1868 1878
		f 4 2845 2850 -2847 -2850
		mu 0 4 1879 1880 1881 1882
		f 4 2846 2852 -2848 -2852
		mu 0 4 1882 1881 1883 1884
		f 4 2847 2854 -2849 -2854
		mu 0 4 1884 1883 1885 1886
		f 4 2848 2856 -2846 -2856
		mu 0 4 1886 1885 1887 1888
		f 4 -2857 -2855 -2853 -2851
		mu 0 4 1880 1889 1890 1881
		f 4 2855 2849 2851 2853
		mu 0 4 1891 1879 1882 1892
		f 4 2857 2862 -2859 -2862
		mu 0 4 1893 1894 1895 1896
		f 4 2858 2864 -2860 -2864
		mu 0 4 1896 1895 1897 1898
		f 4 2859 2866 -2861 -2866
		mu 0 4 1898 1897 1899 1900
		f 4 2860 2868 -2858 -2868
		mu 0 4 1900 1899 1901 1902
		f 4 -2869 -2867 -2865 -2863
		mu 0 4 1894 1903 1904 1895
		f 4 2867 2861 2863 2865
		mu 0 4 1905 1893 1896 1906
		f 4 2873 2870 -2875 -2870
		mu 0 4 1907 1908 1909 1910
		f 4 2875 2871 -2877 -2871
		mu 0 4 1908 1911 1912 1909
		f 4 2877 2872 -2879 -2872
		mu 0 4 1911 1913 1914 1912
		f 4 2879 2869 -2881 -2873
		mu 0 4 1913 1915 1916 1914
		f 4 2874 2876 2878 2880
		mu 0 4 1910 1909 1917 1918
		f 4 -2878 -2876 -2874 -2880
		mu 0 4 1919 1920 1908 1907
		f 4 2881 2886 -2883 -2886
		mu 0 4 1921 1922 1923 1924
		f 4 2882 2888 -2884 -2888
		mu 0 4 1924 1923 1925 1926
		f 4 2883 2890 -2885 -2890
		mu 0 4 1926 1925 1927 1928
		f 4 2884 2892 -2882 -2892
		mu 0 4 1928 1927 1929 1930
		f 4 -2893 -2891 -2889 -2887
		mu 0 4 1922 1931 1932 1923
		f 4 2891 2885 2887 2889
		mu 0 4 1933 1921 1924 1934
		f 4 2893 2898 -2895 -2898
		mu 0 4 1935 1936 1937 1938
		f 4 2894 2900 -2896 -2900
		mu 0 4 1938 1937 1939 1940
		f 4 2895 2902 -2897 -2902
		mu 0 4 1940 1939 1941 1942
		f 4 2896 2904 -2894 -2904
		mu 0 4 1942 1941 1943 1944
		f 4 -2905 -2903 -2901 -2899
		mu 0 4 1936 1945 1946 1937
		f 4 2903 2897 2899 2901
		mu 0 4 1947 1935 1938 1948
		f 4 2905 2910 -2907 -2910
		mu 0 4 1949 1950 1951 1952
		f 4 2906 2912 -2908 -2912
		mu 0 4 1952 1951 1953 1954
		f 4 2907 2914 -2909 -2914
		mu 0 4 1954 1953 1955 1956
		f 4 2908 2916 -2906 -2916
		mu 0 4 1956 1955 1957 1958
		f 4 -2917 -2915 -2913 -2911
		mu 0 4 1950 1959 1960 1951
		f 4 2915 2909 2911 2913
		mu 0 4 1961 1949 1952 1962
		f 4 2917 2922 -2919 -2922
		mu 0 4 1963 1964 1965 1966
		f 4 2918 2924 -2920 -2924
		mu 0 4 1966 1965 1967 1968
		f 4 2919 2926 -2921 -2926
		mu 0 4 1968 1967 1969 1970
		f 4 2920 2928 -2918 -2928
		mu 0 4 1970 1969 1971 1972
		f 4 -2929 -2927 -2925 -2923
		mu 0 4 1964 1973 1974 1965
		f 4 2927 2921 2923 2925
		mu 0 4 1975 1963 1966 1976
		f 4 2933 2930 -2935 -2930
		mu 0 4 1977 1978 1979 1980
		f 4 2935 2931 -2937 -2931
		mu 0 4 1978 1981 1982 1979
		f 4 2937 2932 -2939 -2932
		mu 0 4 1981 1983 1984 1982
		f 4 2939 2929 -2941 -2933
		mu 0 4 1983 1985 1986 1984
		f 4 2934 2936 2938 2940
		mu 0 4 1980 1979 1987 1988
		f 4 -2938 -2936 -2934 -2940
		mu 0 4 1989 1990 1978 1977;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode joint -n "joint1";
	rename -uid "476CD2BC-424B-C680-882B-EF9885365C53";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 7.0622500768802555e-031 90.430787217008628 ;
	setAttr ".bps" -type "matrix" -0.0075185844740173202 0.9999717350442997 0 0 0.9999717350442997 0.0075185844740170982 1.2246467991473535e-016 0
		 1.2246121845598269e-016 9.2076104102241058e-019 -1 0 -0.061633440787063565 0.78482764313806763 0 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint2" -p "joint1";
	rename -uid "28CC17A7-4BDA-F00A-7772-F7966DDE838B";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -96.522170251165321 ;
	setAttr ".bps" -type "matrix" -0.99264587755052602 -0.12105437531104002 -1.2167208581277733e-016 0
		 -0.12105437531104024 0.99264587755052602 -1.3910476648437772e-017 0 1.2246121845598269e-016 9.2076104102241058e-019 -1 0
		 -0.073532447629906864 2.3673955532362361 2.6325994298675597e-033 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint3" -p "joint2";
	rename -uid "187763F9-4E74-6A4B-79F4-46804571333D";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 6.3163638922104415 ;
	setAttr ".bps" -type "matrix" -0.99993827731994256 -0.011110425303554924 -1.2246388986814519e-016 0
		 -0.011110425303555146 0.99993827731994256 -4.3989201105426118e-019 0 1.2246121845598269e-016 9.2076104102241058e-019 -1 0
		 -1.0492510087430631 2.2484054848078023 2.7284502718024179e-032 1;
	setAttr ".radi" 0.5036712096246192;
createNode joint -n "joint4" -p "joint3";
	rename -uid "B23E50E2-4D2D-B4BC-F426-E38A5AFA7E4D";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.8489632672606896e-016 7.0082319199717425e-015 3.0225376063522997 ;
	setAttr ".bps" -type "matrix" -0.99913307309235211 0.041630544712181333 -1.2231672174687233e-016 0
		 0.041630544712181111 0.99913307309235211 6.0180900389404182e-018 0 1.2246121845598269e-016 9.2076104102241058e-019 -1 0
		 -2.1201616245989658 2.236506477964959 2.7284502718024179e-032 1;
	setAttr ".radi" 0.50741185228352204;
createNode joint -n "joint5" -p "joint4";
	rename -uid "F3D5CC4D-49B5-A495-F20C-80AE1FE2B871";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -8.1110949694265557e-017 7.014331385126435e-015 -1.3250323401241773 ;
	setAttr ".bps" -type "matrix" -0.99982857632513122 0.018515344006028066 -1.2242317749646417e-016 0
		 0.018515344006027844 0.99982857632513122 3.1880147878909453e-018 0 1.2246121845598269e-016 9.2076104102241058e-019 -1 0
		 -3.2624662815119301 2.2841025053363326 5.1936406006180798e-032 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint6" -p "joint5";
	rename -uid "D9899427-4EBD-0969-A6D5-DDB18D183CE2";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 0 178.93908830973538 ;
	setAttr ".bps" -type "matrix" 1.0000000000000004 -2.9143354396410359e-016 1.2246121845598271e-016 0
		 6.5919492087118682e-017 1.0000000000000002 -1.215439188737129e-016 0 -1.2246121845598269e-016 1.2154391887371295e-016 1 0
		 -3.9050126510254715 2.2960015121791764 1.0124021258249404e-031 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint7" -p "joint2";
	rename -uid "B5281E61-4F09-0207-668F-E8ACA4D3D987";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 180 8.4408249970017941 ;
	setAttr ".bps" -type "matrix" 0.99966284557369434 -0.02596526871620132 2.4486070222101123e-016 0
		 0.025965268716201112 0.99966284557369423 4.100189046884877e-018 0 -2.4488460886181862e-016 2.2590672812072742e-018 1 0
		 0.97358015454030977 2.2365064779649595 -4.6671207146445678e-032 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint8" -p "joint7";
	rename -uid "96E1E59B-4ABC-97F4-D7CA-F8A8298BCD62";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 3.1202305537582239e-016 1.402605280090753e-014 2.548779219092133 ;
	setAttr ".bps" -type "matrix" 0.99982857632513134 0.01851534400602169 2.448008024344044e-016 0
		 -0.018515344006021898 0.99982857632513122 -6.7928027984487996e-018 0 -2.4488460886181862e-016 2.2590672812072742e-018 1 0
		 1.8898036814392487 2.212708464279272 -4.6671207146445678e-032 1;
	setAttr ".radi" 0.51475757269572064;
createNode joint -n "joint9" -p "joint8";
	rename -uid "ABD5877F-45BE-C2F0-C85F-9FA29E6647C2";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -2.6482536628716028e-016 1.4030749487014858e-014 -2.1626178054706027 ;
	setAttr ".bps" -type "matrix" 0.99981514002984684 -0.019227214231342462 2.4488277507091218e-016 0
		 0.019227214231342261 0.99981514002984673 2.4497991664475883e-018 0 -2.4488460886181862e-016 2.2590672812072742e-018 1 0
		 3.1748964204663341 2.236506477964959 1.0124021258249404e-031 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint10" -p "joint9";
	rename -uid "2FB511E2-4D11-5E51-B828-C5B5DB535C41";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 180 8.054663583380238 ;
	setAttr ".bps" -type "matrix" -0.99264587755052613 -0.12105437531103957 -3.6527490739848043e-016 0
		 -0.12105437531103981 0.99264587755052602 -3.1886807172855402e-017 0 3.664486685247254e-016 1.2565818043537429e-017 -1 0
		 3.7936447762941889 2.2246074711221162 1.2589211587065065e-031 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint11" -p "joint2";
	rename -uid "BDA014E1-4553-BC1D-4AB6-8D9A9EC856DB";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 -3.2238316721950758e-016 99.155555629939741 ;
	setAttr ".bps" -type "matrix" 0.038433122101204295 0.99926117463131436 5.6266477209878745e-018 0
		 -0.99926117463131447 0.038433122101204295 -2.4480003319432692e-016 0 -2.4483541835842906e-016 3.785938955225511e-018 1 0
		 -0.097330461315593531 3.0218409295926221 -6.2266783143137252e-033 1;
	setAttr ".radi" 0.87441390003070629;
createNode joint -n "joint12" -p "joint11";
	rename -uid "A046DFCA-4C9A-0E1F-88CB-75ADBF65F19C";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.61920584081148422 -9.2361391227738882e-017 0.037612128312800697 ;
	setAttr ".r" -type "double3" 346.37378418752246 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 179.99999879258172 -5.9242447492918341e-024 4.4051963235315581 ;
	setAttr ".bps" -type "matrix" -0.038433122101203594 0.99926117463131436 -1.3192931232552249e-017 0
		 0.99926117463131447 0.038433122101203566 2.1073424705853634e-008 0 2.105785512558291e-008 8.099174916274087e-010 -1 0
		 -0.073532447629906961 3.6405892854204764 -2.4715605780431189e-032 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint13" -p "joint12";
	rename -uid "B770E1B7-4D44-396C-BF60-6B81A256F989";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.61920584081148611 -1.8735013682586979e-016 -8.1691442462240028e-018 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -94.7503593064082 ;
	setAttr ".bps" -type "matrix" -0.99264587755052613 -0.12105437531104046 -2.1001037136468521e-008 0
		 -0.12105437531104049 0.99264587755052602 -1.7451842383978203e-009 0 2.105785512558291e-008 8.099174916274087e-010 -1 0
		 -0.097330461315593433 4.259337641248333 2.2149434498892755e-025 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint20" -p "joint11";
	rename -uid "D69EAFB6-465E-DC93-90FC-0B87B080DD21";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.36787068826814279 -0.014009699947487736 -0.89845319404658874 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 1.0804520276932472e-014 2.9864297064309411 ;
	setAttr ".bps" -type "matrix" -0.013680014513432648 0.99990642422324316 -7.1349367595926509e-018 0
		 0.99990642422324327 0.013680014513432641 3.6722539590885946e-016 0 3.672886385456161e-016 -2.1106203566090496e-018 -1 0
		 -0.069192693010170864 3.3889013891551936 -0.89845319404658874 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint21" -p "joint20";
	rename -uid "3891F35F-413E-9D85-AA60-A49C1C5F4553";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 1.6331453302785586e-030 1.9773209686471636 ;
	setAttr ".bps" -type "matrix" 0.02082881368183542 0.99978305672811207 5.5400241479984937e-018 0
		 -0.99978305672811241 0.020828813681835416 -4.8971759937953904e-016 0 -4.8972675057200005e-016 4.6614143571586836e-018 1 0
		 -0.077246735778932943 3.9775914886829868 -0.89845319404658885 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint22" -p "joint21";
	rename -uid "2A8102BC-4526-96BD-4C42-3D845E2A65A0";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.91181698280530576 -0.001528037395946211 0.27116896951224501 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 179.99999999999997 -2.8987304162780038e-014 97.798324920735965 ;
	setAttr ".bps" -type "matrix" -0.99336306190290624 -0.11502098611507269 -4.859403039679113e-016 0
		 -0.11502098611507273 0.99336306190290591 5.0559455914845095e-016 0 4.2456116348392277e-016 5.5813229231260239e-016 -1 0
		 -0.056726963833634063 4.8891788317224609 -0.62728422453434385 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint23" -p "joint22";
	rename -uid "E393A9F5-484B-E52E-0392-B8AF434A7AAE";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.65413422663718113 -2.8620508740841489e-016 -0.14758346237039366 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 0 98.807433658519741 ;
	setAttr ".bps" -type "matrix" 0.038433122101204337 0.99926117463131447 5.7403714105156606e-016 0
		 -0.9992611746313147 0.038433122101204212 -5.2526140030144231e-016 0 -5.4693536338636916e-016 -5.5342559231635447e-016 1 0
		 -0.70651974210143409 4.813939667923032 -0.47970076216395052 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint24" -p "joint22";
	rename -uid "141EC96A-4B39-71B8-894B-5D99DA7F365E";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -0.67315890456037097 -0.13302970277117507 -0.22555168798652858 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" -0.99336306190290624 -0.11502098611507269 -4.859403039679113e-016 0
		 -0.11502098611507273 0.99336306190290591 5.0559455914845095e-016 0 4.2456116348392277e-016 5.5813229231260239e-016 -1 0
		 0.62726543434299775 4.8344594398683292 -0.40173253654781504 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint14" -p "joint1";
	rename -uid "6248F217-47A6-2C98-4C20-CD845675FA6E";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 179.99999999999997 -1.7655625192200639e-031 175.23635830927381 ;
	setAttr ".bps" -type "matrix" 0.0893081025023926 -0.99577356826085517 0.021425769075270412 0
		 0.9956471854737996 0.089831244346530947 0.024840080459917039 0 -0.026659799052571292 0.019114086224522622 0.99946180858614042 0
		 -0.35763140725218256 0.24978533389000124 0 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint15" -p "joint14";
	rename -uid "09BA043A-4199-9F2C-8769-61B6DF5D3123";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -1.0984276721555649e-016 2.6715397352150199e-015 -4.7088830777266839 ;
	setAttr ".bps" -type "matrix" 0.0076811736966789033 -0.99996288947856715 0.0039011839635045373 0
		 0.99961812114829829 0.0077819696633688457 0.026515143222399805 0 -0.026544518126864161 0.0036960267631687155 0.99964079945927542 0
		 -0.32639693199461195 -0.46419311412874875 0.01448754752544662 1;
	setAttr ".radi" 0.5209885839016557;
createNode joint -n "joint16" -p "joint15";
	rename -uid "4422D573-4A35-7FB8-4A3C-3882A5F882CF";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 179.99999999999997 2.7586914362813491e-033 179.94524138700049 ;
	setAttr ".bps" -type "matrix" -0.0067258172119946625 0.99996987016507188 -0.0038758411836431364 0
		 0.99962500565974399 0.0068262836313710742 0.026518859544495593 0 0.026544518126864727 -0.0036960267631687116 -0.99964079945927542 0
		 -0.32705030787294598 -1.978287601847363 0.02006834235069356 1;
	setAttr ".radi" 0.5209885839016557;
createNode joint -n "joint17" -p "joint1";
	rename -uid "241DBE2D-4DAA-2950-9F11-8585D7EC26A4";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -1.3964698346566869e-014 9.7962113522176273e-016 -171.97456941440001 ;
	setAttr ".bps" -type "matrix" -0.13216372009101668 -0.99122790068263511 -1.7097614231744361e-017 0
		 -0.99122790068263511 0.1321637200910169 -1.2126528528066491e-016 0 1.2246121845598269e-016 9.2076104102241058e-019 -1 0
		 0.22394323224185153 0.2293430362097213 -6.1629758220391547e-032 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint18" -p "joint17";
	rename -uid "EB8DDEFF-4B9B-E586-A95E-38AE04E8DC5C";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -1.6958543369543309e-017 5.486129379379465e-016 -3.541089136759898 ;
	setAttr ".bps" -type "matrix" -0.070688863933926191 -0.99749841328983146 -9.5751020860567343e-018 0
		 -0.99749841328983146 0.070688863933926413 -1.2208978354743769e-016 0 1.2246121845598269e-016 9.2076104102241058e-019 -1 0
		 0.1814445757908473 -0.46748229482811876 -7.1644593931205174e-032 1;
	setAttr ".radi" 0.52672791402140862;
createNode joint -n "joint19" -p "joint18";
	rename -uid "78635EFD-4C50-7564-F645-0E8019466F7F";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 175.5156585511599 ;
	setAttr ".bps" -type "matrix" -0.007518584474017348 0.99997173504430037 -7.7037197775489434e-033 0
		 0.99997173504430026 0.0075185844740171259 1.2246467991473544e-016 0 1.2246121845598269e-016 9.2076104102241058e-019 -1 0
		 0.15627960703381527 -1.9804277101047265 -8.0118685686509011e-032 1;
	setAttr ".radi" 0.52672791402140862;
createNode transform -n "polySurface1";
	rename -uid "0B991370-40E2-03C3-1B3A-1087525A25A3";
	setAttr ".t" -type "double3" 0.014621142616491056 0 0 ;
	setAttr ".rp" -type "double3" -0.036293506622314453 0.6500777006149292 -0.24353591461739676 ;
	setAttr ".sp" -type "double3" -0.036293506622314453 0.6500777006149292 -0.24353591461739676 ;
createNode transform -n "transform49" -p "|polySurface1";
	rename -uid "B4E7EA69-4F01-9A0E-11E7-87B0F7B1E49C";
	setAttr ".v" no;
createNode mesh -n "polySurface1Shape" -p "transform49";
	rename -uid "E2080C15-45BA-4A65-9693-BAA152657606";
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
createNode transform -n "polySurface6";
	rename -uid "5638304D-4BA7-6361-E673-CB9CB4AF756D";
	setAttr ".rp" -type "double3" -0.055912494659423828 1.3469195365905762 -0.048693695264674597 ;
	setAttr ".sp" -type "double3" -0.055912494659423828 1.3469195365905762 -0.048693695264674597 ;
createNode mesh -n "polySurface6ShapeOrig" -p "|polySurface6";
	rename -uid "5FF791B5-4EFC-A8D6-2AE5-2DB15398FCE4";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "transform48" -p "|polySurface6";
	rename -uid "BD72A352-4DEF-86C6-F476-B0BD49C78DE3";
	setAttr ".v" no;
createNode mesh -n "polySurface6Shape" -p "transform48";
	rename -uid "4B980415-4EBD-4BA3-54D0-38B50301E288";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface47";
	rename -uid "A99D22B2-408D-7B6C-E3CF-C18E767DD328";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" -0.055912494659423828 1.5131101608276367 -0.24353587627410889 ;
	setAttr ".sp" -type "double3" -0.055912494659423828 1.5131101608276367 -0.24353587627410889 ;
createNode mesh -n "polySurface1Shape" -p "polySurface47";
	rename -uid "0F9F7042-43F5-A909-D52B-DC8DB0451CF6";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
createNode mesh -n "polySurface1ShapeOrig" -p "polySurface47";
	rename -uid "59AEA7A8-483E-D5E9-4C98-6ABFBEFE6E03";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "674D3F30-4B35-A469-0710-05A6FCD860B6";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "57444A9D-47C4-D369-CCF7-36B875DC91ED";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "0B7C65F8-4B19-115D-4499-FCA8E7EC193D";
createNode displayLayerManager -n "layerManager";
	rename -uid "B107F39A-4327-8C32-E626-B99D3C0E5CB3";
createNode displayLayer -n "defaultLayer";
	rename -uid "29BC9136-47FB-7C86-8EC9-F5A559C3B683";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "654AB215-42A6-BB16-FA93-C0B509A66F6F";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "DCA180A0-4641-4044-EF9E-18861934D00C";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "3A31DF5D-48DE-9FA4-76F7-46B9BDB855D9";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 699\n                -height 356\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n"
		+ "            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n"
		+ "            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 699\n            -height 356\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n"
		+ "                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n"
		+ "                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n"
		+ "                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 699\n                -height 355\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n"
		+ "            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n"
		+ "            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n"
		+ "            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 699\n            -height 355\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n"
		+ "                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n"
		+ "                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n"
		+ "                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 699\n                -height 355\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n"
		+ "            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n"
		+ "            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 699\n            -height 355\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n"
		+ "                -width 1405\n                -height 756\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1405\n            -height 756\n"
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
		+ "                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                -outliner \"graphEditor1OutlineEd\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n"
		+ "                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n"
		+ "                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n"
		+ "                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                -outliner \"graphEditor1OutlineEd\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n"
		+ "                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n"
		+ "                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n"
		+ "                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n"
		+ "                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"timeEditorPanel\" -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n"
		+ "                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n"
		+ "                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n"
		+ "                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tshapePanel -unParent -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tposePanel -unParent -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels ;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"profilerPanel\" -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"contentBrowserPanel\" -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"Stereo\" -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels `;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n"
		+ "                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n"
		+ "                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n"
		+ "                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n"
		+ "                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n"
		+ "                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n"
		+ "                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n"
		+ "                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n"
		+ "            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xpm\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1405\\n    -height 756\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1405\\n    -height 756\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "0DC30C09-48EC-4A5B-D3CE-DCA0FB4A2363";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode groupId -n "groupId1";
	rename -uid "2AA8CFA9-479C-A0FF-922B-54BEF90D36F7";
	setAttr ".ihi" 0;
createNode polySeparate -n "polySeparate1";
	rename -uid "6451B96D-49A8-14A5-085B-53AC80274478";
	setAttr ".ic" 46;
	setAttr -s 46 ".out";
createNode groupId -n "groupId2";
	rename -uid "A7F499F5-4805-C560-0A21-99918BD33AF9";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	rename -uid "D71B8658-4A54-C6B3-CB74-FC9706101E30";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:1463]";
createNode groupId -n "groupId3";
	rename -uid "CB3ED1BE-43FC-9624-EABF-25A93AC0EA5D";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "0C5D79B3-4B85-CA53-DFE6-759E94C88350";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:1463]";
createNode groupId -n "groupId4";
	rename -uid "D09E70A8-401A-24C4-6C77-C0857F4EF6B9";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	rename -uid "FC289F4A-4F83-C96E-3038-51BC6EF5D076";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:1463]";
createNode groupId -n "groupId5";
	rename -uid "73AA3966-41B5-8A10-46B9-74987204C21A";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	rename -uid "B67A179E-4DA1-DD3A-D593-E3ACC64F72BF";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:1463]";
createNode groupId -n "groupId6";
	rename -uid "9E3C5667-4AD1-A978-E86D-1AB485AE8D99";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts5";
	rename -uid "0445CDA0-40C1-588E-5E99-30AFC1272053";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:1463]";
createNode groupId -n "groupId7";
	rename -uid "9E0987F9-439C-0B35-9C17-6CBD0CD53A0E";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts6";
	rename -uid "BBB0B167-4D3C-095E-0E8A-B3B68E3DE7D8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:1463]";
createNode groupId -n "groupId8";
	rename -uid "5E436461-48A5-4177-16FB-70927D55F845";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts7";
	rename -uid "8CD05BF9-472A-6FB0-9AB1-92AFD0ECB801";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:1463]";
createNode groupId -n "groupId9";
	rename -uid "41CB5663-45A5-2FA6-B743-1295EBA60194";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts8";
	rename -uid "D932132F-4067-98E0-7995-0F9A0A5AD15C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:1463]";
createNode groupId -n "groupId10";
	rename -uid "E22C62E4-4AA4-FE53-D799-FF92A61309BC";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts9";
	rename -uid "8C3DD7D8-4E05-13F2-47B8-07AD1549DA9E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:1463]";
createNode groupId -n "groupId11";
	rename -uid "59753074-48B7-97B1-4E9F-1888EA317989";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts10";
	rename -uid "A7B52419-4E16-DF58-2367-5F9BD2A3C53D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:1463]";
createNode groupId -n "groupId12";
	rename -uid "D2064D23-4981-C3A9-6037-4C9782C56E25";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts11";
	rename -uid "F50BE5E7-4402-5CEF-16FB-05A311E83A99";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:1463]";
createNode groupId -n "groupId13";
	rename -uid "64611633-4042-E93A-A9E0-B69BA3FAD911";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts12";
	rename -uid "FC0B5436-4673-241F-086F-23BA0E00ACD2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:1463]";
createNode groupId -n "groupId14";
	rename -uid "5C34ADE8-4640-ABE7-8483-0DBCBC0EC435";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts13";
	rename -uid "B71EF68F-4061-EEA9-E94C-59B7C6A60048";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:1463]";
createNode groupId -n "groupId15";
	rename -uid "3F7B7999-49E7-FB3A-896C-13B9F4D02648";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts14";
	rename -uid "8A8410D7-4BA6-E249-97C6-67B5B7DED2B1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:1463]";
createNode groupId -n "groupId16";
	rename -uid "4A3B37E7-423E-7B82-1599-4F96A7F552C0";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts15";
	rename -uid "E1A1ED2A-4492-8B83-C255-3C888F73B1BC";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:1463]";
createNode groupId -n "groupId17";
	rename -uid "83E69B63-4EB5-44D8-A0A5-B3B3BF636A31";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts16";
	rename -uid "4007C4F9-4AE1-9DD4-FB38-E2881643B031";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:1463]";
createNode groupId -n "groupId18";
	rename -uid "47E7AC68-4725-14E7-1675-9ABDC4F6866E";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts17";
	rename -uid "692C3CC7-4830-9CA6-3D8E-12A15DED11B3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:1463]";
createNode groupId -n "groupId19";
	rename -uid "92455343-4D0E-BD78-B2F5-F189777ED3B4";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts18";
	rename -uid "1ED862E1-4A92-95FB-9109-EB9B6C02191B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:1463]";
createNode groupId -n "groupId20";
	rename -uid "26D0185E-41E7-50F1-2DAE-06BBEE13F62D";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts19";
	rename -uid "F87A417D-4691-A12B-D0C1-1A8A78D441EE";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:1463]";
createNode groupId -n "groupId21";
	rename -uid "DE355719-4C19-9E19-8B22-C6B93CCC15FD";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts20";
	rename -uid "CE5CC3EC-4151-E4B5-AAF5-BEAAFE73E1AA";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:1463]";
createNode groupId -n "groupId22";
	rename -uid "CEA866C3-4A57-B6A9-5A29-B89EF05BB43D";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts21";
	rename -uid "99CA9E09-4E95-58F6-541E-B580C834E593";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:1463]";
createNode groupId -n "groupId23";
	rename -uid "DA96B957-43EF-762C-68F8-9B84C2F43890";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts22";
	rename -uid "DB80E961-42A8-7527-97E9-4896F9C556B8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:1463]";
createNode groupId -n "groupId24";
	rename -uid "E0CDDC5B-4F07-FB0C-441F-12B8F5EE7FE6";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts23";
	rename -uid "4EB41D5B-41F6-3D19-E8D8-BABA436883A8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:1463]";
createNode groupId -n "groupId25";
	rename -uid "65FCF3E1-46D9-112F-2A07-68892677AC1F";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts24";
	rename -uid "B16D65D3-4CA5-A124-4C28-0892C74D2112";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:1463]";
createNode groupId -n "groupId26";
	rename -uid "7E629CCB-416D-BAAE-8A6D-8EA76824FE0D";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts25";
	rename -uid "15EC7126-4B7A-52D2-8C4A-1E95A73C74FF";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:1463]";
createNode groupId -n "groupId27";
	rename -uid "2CF9D53B-4885-FE6F-0A7B-E4BAB63CA61D";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts26";
	rename -uid "302BC3C7-4776-00EC-07B2-F38BE37E402C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:1463]";
createNode groupId -n "groupId28";
	rename -uid "88955DF6-4D2D-7850-FB40-E9A3B38DCEB9";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts27";
	rename -uid "BCBC58D0-42D7-04CA-06F1-AAB4C996B096";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:1463]";
createNode groupId -n "groupId29";
	rename -uid "698FAE63-4127-5741-B610-C7B529DF6E8F";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts28";
	rename -uid "A52A216E-4F53-A822-E621-D485B047A689";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:1463]";
createNode groupId -n "groupId30";
	rename -uid "F9D6A472-4D10-5131-D9A3-00A9235C61CD";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts29";
	rename -uid "96354891-4A87-B457-6F6E-F2B614C3748B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:1463]";
createNode groupId -n "groupId31";
	rename -uid "1A3A19CF-40B8-0F39-5B67-FBA03B069A07";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts30";
	rename -uid "A915B24C-4089-8E3F-1EF2-45A9BDCA548E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:1463]";
createNode groupId -n "groupId32";
	rename -uid "75947362-458E-0781-0C18-0AA8A947E2B6";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts31";
	rename -uid "CCB62804-46E8-B760-33A8-9A8F47086BB3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:1463]";
createNode groupId -n "groupId33";
	rename -uid "356F24E3-484F-564D-48AB-3CAA23194E91";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts32";
	rename -uid "A5E66D39-427C-D86B-4C22-B5804CD352BA";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:1463]";
createNode groupId -n "groupId34";
	rename -uid "F7E364A5-432D-5862-E9A9-0AB150E65D5A";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts33";
	rename -uid "F0042200-4FD4-7183-894E-D89A5A8AC896";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:1463]";
createNode groupId -n "groupId35";
	rename -uid "55F129AB-4F60-81F5-1B63-B9B692E01CB1";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts34";
	rename -uid "C2B17F65-4337-C0CB-34F4-DDBE932B7606";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:1463]";
createNode groupId -n "groupId36";
	rename -uid "5AFDFEDC-4CC7-4228-34F6-009397F972D7";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts35";
	rename -uid "9AE9E743-4977-585A-64BA-09AC0E2B3FD0";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:1463]";
createNode groupId -n "groupId37";
	rename -uid "7865DF59-431D-54FB-E242-AC850F6D2FA8";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts36";
	rename -uid "9BCAC003-47EE-8232-2DCA-0A977C8A6A44";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:1463]";
createNode groupId -n "groupId38";
	rename -uid "EB1D5290-47D6-45BA-0BEC-DBB7F91322E1";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts37";
	rename -uid "55982B12-4F49-6B97-7DAF-EDBC1457BE95";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:1463]";
createNode groupId -n "groupId39";
	rename -uid "488FE939-4175-CD15-CB90-FF8578092BC3";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts38";
	rename -uid "4665B106-4C16-4766-123E-CFB29E899C99";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:1463]";
createNode groupId -n "groupId40";
	rename -uid "A4F487EC-4E07-00B6-AA07-8E8917B55E5A";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts39";
	rename -uid "D8CC5534-420B-A95E-5652-70A85C34E704";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:1463]";
createNode groupId -n "groupId41";
	rename -uid "DC7B1F1A-43D7-A783-6A9D-0C86D39B1896";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts40";
	rename -uid "892AE305-4002-904A-F976-DCA5ECB0D38A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:1463]";
createNode groupId -n "groupId42";
	rename -uid "E0002965-41D1-57AF-248E-B4A3E42B85E2";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts41";
	rename -uid "11E2AF03-4CA8-B898-ACF8-52801BEEFA04";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:1463]";
createNode groupId -n "groupId43";
	rename -uid "30011702-49BC-2B04-C770-57B9E4081688";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts42";
	rename -uid "78172236-4079-4825-4A5F-3DA392802561";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:1463]";
createNode groupId -n "groupId44";
	rename -uid "A0E35A8C-45B1-ABCD-1D76-2294D63D1D2E";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts43";
	rename -uid "6E9BE806-400D-52CF-4797-BE88A87C5A0B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:1463]";
createNode groupId -n "groupId45";
	rename -uid "0B02C02F-4FC5-A012-B922-5F84D0A8F6FC";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts44";
	rename -uid "FDD4427E-4E9D-4B13-829D-2284233572AC";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:1463]";
createNode groupId -n "groupId46";
	rename -uid "BB5722A6-4C50-D008-CCFE-108FF329033B";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts45";
	rename -uid "965B0085-447A-68EF-382E-FBA2B2C4D11D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:1463]";
createNode groupId -n "groupId47";
	rename -uid "BB00D03E-4993-1E5B-B774-628721B36FC1";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts46";
	rename -uid "E2E42987-4FE0-3C75-B394-0799E779DB09";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:1463]";
createNode polyUnite -n "polyUnite1";
	rename -uid "4770EC23-4798-08D8-DBAF-E7B318CE2ED3";
	setAttr -s 5 ".ip";
	setAttr -s 5 ".im";
createNode groupId -n "groupId48";
	rename -uid "BDDD0FA7-4E3F-13D0-7336-C980A946466A";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts47";
	rename -uid "AFFCAC17-4C81-8735-7F58-5695B9C54F1C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:1069]";
createNode polyUnite -n "polyUnite2";
	rename -uid "4145D4A9-42C0-6EC7-2BD7-369097ECAF7E";
	setAttr -s 40 ".ip";
	setAttr -s 40 ".im";
createNode groupId -n "groupId49";
	rename -uid "BA4BE75C-4EA5-9A50-DE2D-0599E109E00E";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts48";
	rename -uid "54656264-4E2C-F42F-FC67-BE8F185B5132";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:320]";
createNode polyUnite -n "polyUnite3";
	rename -uid "7D42A981-407D-FD35-F054-379D522EC2BD";
	setAttr -s 3 ".ip";
	setAttr -s 3 ".im";
createNode groupId -n "groupId50";
	rename -uid "6CCA5B06-4679-9542-D278-23885AE0EF18";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts49";
	rename -uid "F820915E-456C-0C55-315C-68B1E4924270";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:1463]";
createNode skinCluster -n "skinCluster1";
	rename -uid "B56F2F9F-456A-B89F-BE02-079ED4D6AE75";
	setAttr -s 1563 ".wl";
	setAttr -s 2 ".wl[0].w[8:9]"  0.86797088384628296 0.042104482650756836;
	setAttr -s 2 ".wl[1].w[8:9]"  0.82105499505996704 0.0093469619750976563;
	setAttr -s 2 ".wl[2].w[8:9]"  0.79243707656860352 0.00014221668243408203;
	setAttr ".wl[3].w[8]"  0.78305315971374512;
	setAttr ".wl[4].w[8]"  0.7886088490486145;
	setAttr ".wl[5].w[8]"  0.80360031127929688;
	setAttr -s 2 ".wl[6].w[8:9]"  0.82431912422180176 4.4524669647216797e-005;
	setAttr -s 2 ".wl[7].w[8:9]"  0.84988093376159668 0.0079714059829711914;
	setAttr -s 2 ".wl[8].w[8:9]"  0.88109171390533447 0.038541793823242188;
	setAttr -s 2 ".wl[9].w[8:9]"  0.9176943302154541 0.10071384906768799;
	setAttr -s 2 ".wl[10].w[8:9]"  0.95544540882110596 0.19282591342926025;
	setAttr -s 2 ".wl[11].w[8:9]"  0.98559290170669556 0.30009555816650391;
	setAttr -s 2 ".wl[12].w[8:9]"  0.99941384792327881 0.39948058128356934;
	setAttr -s 2 ".wl[13].w[8:9]"  1 0.46907824277877808;
	setAttr -s 2 ".wl[14].w[8:9]"  1 0.49501758813858032;
	setAttr -s 2 ".wl[15].w[8:9]"  1 0.47269797325134277;
	setAttr -s 2 ".wl[16].w[8:9]"  1 0.40605801343917847;
	setAttr -s 2 ".wl[17].w[8:9]"  0.99718797206878662 0.30824089050292969;
	setAttr -s 2 ".wl[18].w[8:9]"  0.97199070453643799 0.20071738958358765;
	setAttr -s 2 ".wl[19].w[8:9]"  0.92383325099945068 0.10677897930145264;
	setAttr -s 3 ".wl[20].w";
	setAttr ".wl[20].w[1]" 0.55894982814788818;
	setAttr ".wl[20].w[6]" 0.01716911792755127;
	setAttr ".wl[20].w[10]" 0.074884653091430664;
	setAttr -s 3 ".wl[21].w";
	setAttr ".wl[21].w[1]" 0.51047271490097046;
	setAttr ".wl[21].w[6]" 0.0071315765380859375;
	setAttr ".wl[21].w[10]" 0.091026186943054199;
	setAttr -s 3 ".wl[22].w";
	setAttr ".wl[22].w[1]" 0.44700342416763306;
	setAttr ".wl[22].w[6]" 0.0022224187850952148;
	setAttr ".wl[22].w[10]" 0.060732364654541016;
	setAttr -s 3 ".wl[23].w";
	setAttr ".wl[23].w[1]" 0.46004223823547363;
	setAttr ".wl[23].w[6]" 0.00050657987594604492;
	setAttr ".wl[23].w[10]" 0.018582940101623535;
	setAttr -s 3 ".wl[24].w";
	setAttr ".wl[24].w[1]" 0.51685082912445068;
	setAttr ".wl[24].w[6]" 0.00016099214553833008;
	setAttr ".wl[24].w[10]" 0.00011706352233886719;
	setAttr -s 2 ".wl[25].w";
	setAttr ".wl[25].w[1]" 0.62358880043029785;
	setAttr ".wl[25].w[6]" 0.00034302473068237305;
	setAttr -s 2 ".wl[26].w";
	setAttr ".wl[26].w[1]" 0.7429003119468689;
	setAttr ".wl[26].w[6]" 0.0015610456466674805;
	setAttr -s 4 ".wl[27].w";
	setAttr ".wl[27].w[0]" 0.024450957775115967;
	setAttr ".wl[27].w[1]" 0.78382468223571777;
	setAttr ".wl[27].w[6]" 0.0054529905319213867;
	setAttr ".wl[27].w[22]" 0.041799306869506836;
	setAttr -s 4 ".wl[28].w";
	setAttr ".wl[28].w[0]" 0.12199074029922485;
	setAttr ".wl[28].w[1]" 0.81767868995666504;
	setAttr ".wl[28].w[6]" 0.014026820659637451;
	setAttr ".wl[28].w[22]" 0.1686854362487793;
	setAttr -s 4 ".wl[29].w";
	setAttr ".wl[29].w[0]" 0.23084115982055664;
	setAttr ".wl[29].w[1]" 0.84172248840332031;
	setAttr ".wl[29].w[6]" 0.028589606285095215;
	setAttr ".wl[29].w[22]" 0.28926563262939453;
	setAttr -s 4 ".wl[30].w";
	setAttr ".wl[30].w[0]" 0.28744059801101685;
	setAttr ".wl[30].w[1]" 0.85455977916717529;
	setAttr ".wl[30].w[6]" 0.048763871192932129;
	setAttr ".wl[30].w[22]" 0.33688187599182129;
	setAttr -s 4 ".wl[31].w";
	setAttr ".wl[31].w[0]" 0.26301348209381104;
	setAttr ".wl[31].w[1]" 0.85570681095123291;
	setAttr ".wl[31].w[6]" 0.072060942649841309;
	setAttr ".wl[31].w[22]" 0.29066157341003418;
	setAttr -s 4 ".wl[32].w";
	setAttr ".wl[32].w[0]" 0.1695936918258667;
	setAttr ".wl[32].w[1]" 0.84513092041015625;
	setAttr ".wl[32].w[6]" 0.094302177429199219;
	setAttr ".wl[32].w[22]" 0.17086213827133179;
	setAttr -s 4 ".wl[33].w";
	setAttr ".wl[33].w[0]" 0.058416426181793213;
	setAttr ".wl[33].w[1]" 0.82319992780685425;
	setAttr ".wl[33].w[6]" 0.11079156398773193;
	setAttr ".wl[33].w[22]" 0.043393969535827637;
	setAttr -s 3 ".wl[34].w";
	setAttr ".wl[34].w[0]" 0.00061380863189697266;
	setAttr ".wl[34].w[1]" 0.78765833377838135;
	setAttr ".wl[34].w[6]" 0.11777019500732422;
	setAttr -s 2 ".wl[35].w";
	setAttr ".wl[35].w[1]" 0.66916036605834961;
	setAttr ".wl[35].w[6]" 0.11359655857086182;
	setAttr -s 2 ".wl[36].w";
	setAttr ".wl[36].w[1]" 0.57425987720489502;
	setAttr ".wl[36].w[6]" 0.099254965782165527;
	setAttr -s 2 ".wl[37].w";
	setAttr ".wl[37].w[1]" 0.52185696363449097;
	setAttr ".wl[37].w[6]" 0.078052997589111328;
	setAttr -s 2 ".wl[38].w";
	setAttr ".wl[38].w[1]" 0.49658823013305664;
	setAttr ".wl[38].w[6]" 0.054582953453063965;
	setAttr -s 3 ".wl[39].w";
	setAttr ".wl[39].w[1]" 0.55102819204330444;
	setAttr ".wl[39].w[6]" 0.033289313316345215;
	setAttr ".wl[39].w[10]" 0.023585319519042969;
	setAttr -s 2 ".wl[40].w";
	setAttr ".wl[40].w[1]" 0.54802346229553223;
	setAttr ".wl[40].w[10]" 0.087080955505371094;
	setAttr -s 2 ".wl[41].w";
	setAttr ".wl[41].w[1]" 0.49585777521133423;
	setAttr ".wl[41].w[10]" 0.10320210456848145;
	setAttr -s 2 ".wl[42].w";
	setAttr ".wl[42].w[1]" 0.39337140321731567;
	setAttr ".wl[42].w[10]" 0.064462125301361084;
	setAttr -s 2 ".wl[43].w";
	setAttr ".wl[43].w[1]" 0.40249878168106079;
	setAttr ".wl[43].w[10]" 0.015880584716796875;
	setAttr ".wl[44].w[1]"  0.46247059106826782;
	setAttr ".wl[45].w[1]"  0.58060461282730103;
	setAttr ".wl[46].w[1]"  0.707741379737854;
	setAttr -s 3 ".wl[47].w";
	setAttr ".wl[47].w[0]" 0.020091533660888672;
	setAttr ".wl[47].w[1]" 0.75308346748352051;
	setAttr ".wl[47].w[22]" 0.057152152061462402;
	setAttr -s 3 ".wl[48].w";
	setAttr ".wl[48].w[0]" 0.12249714136123657;
	setAttr ".wl[48].w[1]" 0.79085546731948853;
	setAttr ".wl[48].w[22]" 0.21134501695632935;
	setAttr -s 4 ".wl[49].w";
	setAttr ".wl[49].w[0]" 0.24170529842376709;
	setAttr ".wl[49].w[1]" 0.81783056259155273;
	setAttr ".wl[49].w[6]" 0.00039714574813842773;
	setAttr ".wl[49].w[22]" 0.35242384672164917;
	setAttr -s 4 ".wl[50].w";
	setAttr ".wl[50].w[0]" 0.30424970388412476;
	setAttr ".wl[50].w[1]" 0.83228552341461182;
	setAttr ".wl[50].w[6]" 0.0054937601089477539;
	setAttr ".wl[50].w[22]" 0.40698057413101196;
	setAttr -s 4 ".wl[51].w";
	setAttr ".wl[51].w[0]" 0.27723497152328491;
	setAttr ".wl[51].w[1]" 0.83357888460159302;
	setAttr ".wl[51].w[6]" 0.015464305877685547;
	setAttr ".wl[51].w[22]" 0.35401511192321777;
	setAttr -s 4 ".wl[52].w";
	setAttr ".wl[52].w[0]" 0.17435890436172485;
	setAttr ".wl[52].w[1]" 0.82166492938995361;
	setAttr ".wl[52].w[6]" 0.027352809906005859;
	setAttr ".wl[52].w[22]" 0.21390771865844727;
	setAttr -s 4 ".wl[53].w";
	setAttr ".wl[53].w[0]" 0.054656267166137695;
	setAttr ".wl[53].w[1]" 0.79703879356384277;
	setAttr ".wl[53].w[6]" 0.037201464176177979;
	setAttr ".wl[53].w[22]" 0.059145808219909668;
	setAttr -s 3 ".wl[54].w";
	setAttr ".wl[54].w[0]" 5.9604644775390625e-008;
	setAttr ".wl[54].w[1]" 0.76116931438446045;
	setAttr ".wl[54].w[6]" 0.041583418846130371;
	setAttr -s 2 ".wl[55].w";
	setAttr ".wl[55].w[1]" 0.62901633977890015;
	setAttr ".wl[55].w[6]" 0.038948655128479004;
	setAttr -s 2 ".wl[56].w";
	setAttr ".wl[56].w[1]" 0.52368539571762085;
	setAttr ".wl[56].w[6]" 0.030230402946472168;
	setAttr -s 2 ".wl[57].w";
	setAttr ".wl[57].w[1]" 0.46901971101760864;
	setAttr ".wl[57].w[6]" 0.018481254577636719;
	setAttr -s 2 ".wl[58].w";
	setAttr ".wl[58].w[1]" 0.47163248062133789;
	setAttr ".wl[58].w[6]" 0.0076727867126464844;
	setAttr -s 3 ".wl[59].w";
	setAttr ".wl[59].w[1]" 0.53948652744293213;
	setAttr ".wl[59].w[6]" 0.0011485815048217773;
	setAttr ".wl[59].w[10]" 0.02716827392578125;
	setAttr -s 2 ".wl[60].w[8:9]"  0.75422501564025879 2.8967857360839844e-005;
	setAttr ".wl[61].w[8]"  0.69661563634872437;
	setAttr ".wl[62].w[8]"  0.66411572694778442;
	setAttr ".wl[63].w[8]"  0.65510022640228271;
	setAttr ".wl[64].w[8]"  0.66317111253738403;
	setAttr ".wl[65].w[8]"  0.681427001953125;
	setAttr ".wl[66].w[8]"  0.7056240439414978;
	setAttr ".wl[67].w[8]"  0.73541718721389771;
	setAttr ".wl[68].w[8]"  0.77321213483810425;
	setAttr -s 2 ".wl[69].w[8:9]"  0.82098758220672607 0.015010952949523926;
	setAttr -s 2 ".wl[70].w[8:9]"  0.87639361619949341 0.063867270946502686;
	setAttr -s 2 ".wl[71].w[8:9]"  0.93065881729125977 0.13838648796081543;
	setAttr -s 2 ".wl[72].w[8:9]"  0.97170484066009521 0.21797126531600952;
	setAttr -s 2 ".wl[73].w[8:9]"  0.99280357360839844 0.27849966287612915;
	setAttr -s 2 ".wl[74].w[8:9]"  0.99870872497558594 0.30198955535888672;
	setAttr -s 2 ".wl[75].w[8:9]"  0.99848818778991699 0.28174519538879395;
	setAttr -s 2 ".wl[76].w[8:9]"  0.99072873592376709 0.22352850437164307;
	setAttr -s 2 ".wl[77].w[8:9]"  0.96244025230407715 0.14457607269287109;
	setAttr -s 2 ".wl[78].w[8:9]"  0.9056897759437561 0.068837165832519531;
	setAttr -s 2 ".wl[79].w[8:9]"  0.82963508367538452 0.01754915714263916;
	setAttr -s 2 ".wl[80].w[6:7]"  0.97764670848846436 0.65196061134338379;
	setAttr -s 2 ".wl[81].w[6:7]"  0.98376739025115967 0.73694890737533569;
	setAttr -s 2 ".wl[82].w[6:7]"  0.98912966251373291 0.84573471546173096;
	setAttr -s 2 ".wl[83].w[6:7]"  0.9932175874710083 0.93947762250900269;
	setAttr -s 2 ".wl[84].w[6:7]"  0.99591028690338135 0.98844343423843384;
	setAttr -s 2 ".wl[85].w[6:7]"  0.99739694595336914 0.99961328506469727;
	setAttr -s 2 ".wl[86].w[6:7]"  0.99797606468200684 0.99990499019622803;
	setAttr -s 2 ".wl[87].w[6:7]"  0.99783515930175781 0.99464797973632813;
	setAttr -s 2 ".wl[88].w[6:7]"  0.99692320823669434 0.9682234525680542;
	setAttr -s 2 ".wl[89].w[6:7]"  0.99498546123504639 0.91761881113052368;
	setAttr -s 2 ".wl[90].w[6:7]"  0.99173915386199951 0.86080396175384521;
	setAttr -s 2 ".wl[91].w[6:7]"  0.98710101842880249 0.81744575500488281;
	setAttr -s 2 ".wl[92].w[6:7]"  0.98134934902191162 0.79377871751785278;
	setAttr -s 2 ".wl[93].w[6:7]"  0.97514855861663818 0.78236055374145508;
	setAttr -s 2 ".wl[94].w[6:7]"  0.9694247841835022 0.76962357759475708;
	setAttr -s 2 ".wl[95].w[6:7]"  0.96514558792114258 0.74419569969177246;
	setAttr -s 2 ".wl[96].w[6:7]"  0.96308088302612305 0.7030491828918457;
	setAttr -s 2 ".wl[97].w[6:7]"  0.96361207962036133 0.65474438667297363;
	setAttr -s 2 ".wl[98].w[6:7]"  0.96664059162139893 0.61760067939758301;
	setAttr -s 2 ".wl[99].w[6:7]"  0.97161102294921875 0.61207044124603271;
	setAttr -s 2 ".wl[100].w[7:8]"  0.95684641599655151 1;
	setAttr -s 2 ".wl[101].w[7:8]"  0.93732255697250366 0.99891728162765503;
	setAttr -s 2 ".wl[102].w[7:8]"  0.92871588468551636 0.99349343776702881;
	setAttr -s 2 ".wl[103].w[7:8]"  0.92982840538024902 0.98831295967102051;
	setAttr -s 2 ".wl[104].w[7:8]"  0.9355044960975647 0.98575258255004883;
	setAttr -s 2 ".wl[105].w[7:8]"  0.9409559965133667 0.98600554466247559;
	setAttr -s 2 ".wl[106].w[7:8]"  0.94424021244049072 0.98860347270965576;
	setAttr -s 2 ".wl[107].w[7:8]"  0.9466019868850708 0.99297177791595459;
	setAttr -s 2 ".wl[108].w[7:8]"  0.95147764682769775 0.99783742427825928;
	setAttr -s 2 ".wl[109].w[7:8]"  0.96217620372772217 1;
	setAttr -s 2 ".wl[110].w[7:8]"  0.97842824459075928 1;
	setAttr -s 2 ".wl[111].w[7:8]"  0.994121253490448 1;
	setAttr -s 2 ".wl[112].w[7:8]"  1 1;
	setAttr -s 2 ".wl[113].w[7:8]"  1 1;
	setAttr -s 2 ".wl[114].w[7:8]"  1 1;
	setAttr -s 2 ".wl[115].w[7:8]"  1 1;
	setAttr -s 2 ".wl[116].w[7:8]"  1 1;
	setAttr -s 2 ".wl[117].w[7:8]"  1 1;
	setAttr -s 2 ".wl[118].w[7:8]"  0.99780446290969849 1;
	setAttr -s 2 ".wl[119].w[7:8]"  0.98106038570404053 1;
	setAttr ".wl[120].w[6]"  1;
	setAttr ".wl[121].w[6]"  1;
	setAttr ".wl[122].w[6]"  1;
	setAttr ".wl[123].w[6]"  1;
	setAttr ".wl[124].w[6]"  1;
	setAttr ".wl[125].w[6]"  1;
	setAttr ".wl[126].w[6]"  1;
	setAttr ".wl[127].w[6]"  1;
	setAttr ".wl[128].w[6]"  1;
	setAttr ".wl[129].w[6]"  1;
	setAttr ".wl[130].w[6]"  1;
	setAttr ".wl[131].w[6]"  1;
	setAttr ".wl[132].w[6]"  1;
	setAttr ".wl[133].w[6]"  1;
	setAttr ".wl[134].w[6]"  1;
	setAttr ".wl[135].w[6]"  1;
	setAttr ".wl[136].w[6]"  1;
	setAttr ".wl[137].w[6]"  1;
	setAttr ".wl[138].w[6]"  1;
	setAttr ".wl[139].w[6]"  1;
	setAttr -s 2 ".wl[140].w[6:7]"  0.98732089996337891 0.7879868745803833;
	setAttr -s 2 ".wl[141].w[6:7]"  0.99160850048065186 0.85694676637649536;
	setAttr -s 2 ".wl[142].w[6:7]"  0.99514919519424438 0.93532359600067139;
	setAttr -s 2 ".wl[143].w[6:7]"  0.99760925769805908 0.98858320713043213;
	setAttr -s 2 ".wl[144].w[6:7]"  0.99900895357131958 1;
	setAttr -s 2 ".wl[145].w[6:7]"  0.99962919950485229 1;
	setAttr -s 2 ".wl[146].w[6:7]"  0.99981623888015747 1;
	setAttr -s 2 ".wl[147].w[6:7]"  0.99977469444274902 1;
	setAttr -s 2 ".wl[148].w[6:7]"  0.99944961071014404 0.99899953603744507;
	setAttr -s 2 ".wl[149].w[6:7]"  0.9985581636428833 0.9805113673210144;
	setAttr -s 2 ".wl[150].w[6:7]"  0.99675369262695313 0.94795495271682739;
	setAttr -s 2 ".wl[151].w[6:7]"  0.99384117126464844 0.9177100658416748;
	setAttr -s 2 ".wl[152].w[6:7]"  0.98993921279907227 0.89818179607391357;
	setAttr -s 2 ".wl[153].w[6:7]"  0.98551928997039795 0.88658630847930908;
	setAttr -s 2 ".wl[154].w[6:7]"  0.98130834102630615 0.87424933910369873;
	setAttr -s 2 ".wl[155].w[6:7]"  0.97809851169586182 0.85310852527618408;
	setAttr -s 2 ".wl[156].w[6:7]"  0.97653388977050781 0.820526123046875;
	setAttr -s 2 ".wl[157].w[6:7]"  0.97693729400634766 0.78261053562164307;
	setAttr -s 2 ".wl[158].w[6:7]"  0.97922509908676147 0.75407981872558594;
	setAttr -s 2 ".wl[159].w[6:7]"  0.9829290509223938 0.75227534770965576;
	setAttr -s 2 ".wl[160].w[7:8]"  0.98531389236450195 1;
	setAttr -s 2 ".wl[161].w[7:8]"  0.99719476699829102 1;
	setAttr -s 2 ".wl[162].w[7:8]"  1 1;
	setAttr -s 2 ".wl[163].w[7:8]"  1 1;
	setAttr -s 2 ".wl[164].w[7:8]"  1 1;
	setAttr -s 2 ".wl[165].w[7:8]"  1 1;
	setAttr -s 2 ".wl[166].w[7:8]"  1 1;
	setAttr -s 2 ".wl[167].w[7:8]"  1 1;
	setAttr -s 2 ".wl[168].w[7:8]"  1 1;
	setAttr -s 2 ".wl[169].w[7:8]"  1 1;
	setAttr -s 2 ".wl[170].w[7:8]"  0.9962533712387085 1;
	setAttr -s 2 ".wl[171].w[7:8]"  0.98813635110855103 1;
	setAttr -s 2 ".wl[172].w[7:8]"  0.98137211799621582 1;
	setAttr -s 2 ".wl[173].w[7:8]"  0.9775855541229248 1;
	setAttr -s 2 ".wl[174].w[7:8]"  0.97542518377304077 0.99999707937240601;
	setAttr -s 2 ".wl[175].w[7:8]"  0.97300565242767334 0.99981415271759033;
	setAttr -s 2 ".wl[176].w[7:8]"  0.96960937976837158 0.99979734420776367;
	setAttr -s 2 ".wl[177].w[7:8]"  0.96647340059280396 0.99999654293060303;
	setAttr -s 2 ".wl[178].w[7:8]"  0.96663093566894531 1;
	setAttr -s 2 ".wl[179].w[7:8]"  0.97305524349212646 1;
	setAttr ".wl[180].w[6]"  1;
	setAttr ".wl[181].w[6]"  1;
	setAttr ".wl[182].w[6]"  1;
	setAttr ".wl[183].w[6]"  1;
	setAttr ".wl[184].w[6]"  1;
	setAttr ".wl[185].w[6]"  1;
	setAttr ".wl[186].w[6]"  1;
	setAttr ".wl[187].w[6]"  1;
	setAttr ".wl[188].w[6]"  1;
	setAttr ".wl[189].w[6]"  1;
	setAttr ".wl[190].w[6]"  1;
	setAttr ".wl[191].w[6]"  1;
	setAttr ".wl[192].w[6]"  1;
	setAttr ".wl[193].w[6]"  1;
	setAttr ".wl[194].w[6]"  1;
	setAttr ".wl[195].w[6]"  1;
	setAttr ".wl[196].w[6]"  1;
	setAttr ".wl[197].w[6]"  1;
	setAttr ".wl[198].w[6]"  1;
	setAttr ".wl[199].w[6]"  1;
	setAttr ".wl[200].w[7]"  0.96722173690795898;
	setAttr ".wl[201].w[7]"  0.99117136001586914;
	setAttr ".wl[202].w[7]"  1;
	setAttr -s 3 ".wl[203].w[6:8]"  4.0650367736816406e-005 1 1.7881393432617188e-007;
	setAttr -s 3 ".wl[204].w[6:8]"  0.00020337104797363281 1 0.001646578311920166;
	setAttr -s 3 ".wl[205].w[6:8]"  0.00039017200469970703 1 0.0036575794219970703;
	setAttr -s 3 ".wl[206].w[6:8]"  0.00049734115600585938 1 0.0031934976577758789;
	setAttr -s 3 ".wl[207].w[6:8]"  0.00046873092651367188 1 0.00092709064483642578;
	setAttr -s 2 ".wl[208].w[6:7]"  0.00031924247741699219 1;
	setAttr -s 2 ".wl[209].w[6:7]"  0.00012838840484619141 1;
	setAttr -s 2 ".wl[210].w[6:7]"  7.2717666625976563e-006 0.99507147073745728;
	setAttr ".wl[211].w[7]"  0.98377245664596558;
	setAttr ".wl[212].w[7]"  0.97571170330047607;
	setAttr ".wl[213].w[7]"  0.97242748737335205;
	setAttr ".wl[214].w[7]"  0.97055590152740479;
	setAttr ".wl[215].w[7]"  0.96637922525405884;
	setAttr ".wl[216].w[7]"  0.95825862884521484;
	setAttr ".wl[217].w[7]"  0.94809269905090332;
	setAttr ".wl[218].w[7]"  0.94202828407287598;
	setAttr ".wl[219].w[7]"  0.94765955209732056;
	setAttr ".wl[220].w[7]"  0.99658203125;
	setAttr ".wl[221].w[7]"  0.98835349082946777;
	setAttr ".wl[222].w[7]"  0.98487967252731323;
	setAttr ".wl[223].w[7]"  0.98713141679763794;
	setAttr ".wl[224].w[7]"  0.99141502380371094;
	setAttr ".wl[225].w[7]"  0.99470698833465576;
	setAttr ".wl[226].w[7]"  0.99642223119735718;
	setAttr ".wl[227].w[7]"  0.99737417697906494;
	setAttr ".wl[228].w[7]"  0.99861311912536621;
	setAttr -s 2 ".wl[229].w[6:7]"  2.6583671569824219e-005 0.9999692440032959;
	setAttr -s 2 ".wl[230].w[6:7]"  0.00020551681518554688 1;
	setAttr -s 3 ".wl[231].w[6:8]"  0.000499725341796875 1 4.3511390686035156e-006;
	setAttr -s 3 ".wl[232].w[6:8]"  0.00080794095993041992 1 0.0022282600402832031;
	setAttr -s 3 ".wl[233].w[6:8]"  0.0010199546813964844 1 0.0073008537292480469;
	setAttr -s 3 ".wl[234].w[6:8]"  0.0010588765144348145 1 0.011892557144165039;
	setAttr -s 3 ".wl[235].w[6:8]"  0.00091052055358886719 1 0.012644410133361816;
	setAttr -s 3 ".wl[236].w[6:8]"  0.00062882900238037109 1 0.008856654167175293;
	setAttr -s 3 ".wl[237].w[6:8]"  0.00031524896621704102 1 0.0032750368118286133;
	setAttr -s 3 ".wl[238].w[6:8]"  7.9929828643798828e-005 1 7.7903270721435547e-005;
	setAttr ".wl[239].w[7]"  1;
	setAttr -s 4 ".wl[240].w";
	setAttr ".wl[240].w[0]" 0.8882220983505249;
	setAttr ".wl[240].w[1]" 0.2788538932800293;
	setAttr ".wl[240].w[18]" 0.48983001708984375;
	setAttr ".wl[240].w[19]" 0.30515992641448975;
	setAttr -s 4 ".wl[241].w";
	setAttr ".wl[241].w[0]" 0.90124964714050293;
	setAttr ".wl[241].w[1]" 0.28706133365631104;
	setAttr ".wl[241].w[18]" 0.20678585767745972;
	setAttr ".wl[241].w[19]" 0.36695373058319092;
	setAttr -s 5 ".wl[242].w";
	setAttr ".wl[242].w[0]" 0.90585583448410034;
	setAttr ".wl[242].w[1]" 0.29299122095108032;
	setAttr ".wl[242].w[18]" 0.014356017112731934;
	setAttr ".wl[242].w[19]" 0.16312700510025024;
	setAttr ".wl[242].w[21]" 0.036795139312744141;
	setAttr -s 4 ".wl[243].w";
	setAttr ".wl[243].w[0]" 1;
	setAttr ".wl[243].w[1]" 0.57417261600494385;
	setAttr ".wl[243].w[18]" 0.56889313459396362;
	setAttr ".wl[243].w[21]" 0.48560601472854614;
	setAttr -s 4 ".wl[244].w";
	setAttr ".wl[244].w[0]" 0.89012324810028076;
	setAttr ".wl[244].w[1]" 0.29574316740036011;
	setAttr ".wl[244].w[21]" 0.51688063144683838;
	setAttr ".wl[244].w[22]" 0.17352080345153809;
	setAttr -s 4 ".wl[245].w";
	setAttr ".wl[245].w[0]" 0.87026607990264893;
	setAttr ".wl[245].w[1]" 0.29226034879684448;
	setAttr ".wl[245].w[21]" 0.57766783237457275;
	setAttr ".wl[245].w[22]" 0.73649823665618896;
	setAttr -s 4 ".wl[246].w";
	setAttr ".wl[246].w[0]" 0.84352612495422363;
	setAttr ".wl[246].w[1]" 0.28593331575393677;
	setAttr ".wl[246].w[21]" 0.49756217002868652;
	setAttr ".wl[246].w[22]" 0.9940112829208374;
	setAttr -s 4 ".wl[247].w";
	setAttr ".wl[247].w[0]" 0.81187772750854492;
	setAttr ".wl[247].w[1]" 0.27745014429092407;
	setAttr ".wl[247].w[21]" 0.37687444686889648;
	setAttr ".wl[247].w[22]" 1;
	setAttr -s 4 ".wl[248].w";
	setAttr ".wl[248].w[0]" 0.77828812599182129;
	setAttr ".wl[248].w[1]" 0.26771032810211182;
	setAttr ".wl[248].w[21]" 0.30532193183898926;
	setAttr ".wl[248].w[22]" 1;
	setAttr -s 4 ".wl[249].w";
	setAttr ".wl[249].w[0]" 0.74636197090148926;
	setAttr ".wl[249].w[1]" 0.25770968198776245;
	setAttr ".wl[249].w[21]" 0.31666362285614014;
	setAttr ".wl[249].w[22]" 1;
	setAttr -s 4 ".wl[250].w";
	setAttr ".wl[250].w[0]" 0.71977269649505615;
	setAttr ".wl[250].w[1]" 0.24842709302902222;
	setAttr ".wl[250].w[21]" 0.40247583389282227;
	setAttr ".wl[250].w[22]" 1;
	setAttr -s 4 ".wl[251].w";
	setAttr ".wl[251].w[0]" 0.70168435573577881;
	setAttr ".wl[251].w[1]" 0.24072486162185669;
	setAttr ".wl[251].w[21]" 0.50783646106719971;
	setAttr ".wl[251].w[22]" 0.99985396862030029;
	setAttr -s 4 ".wl[252].w";
	setAttr ".wl[252].w[0]" 0.69431298971176147;
	setAttr ".wl[252].w[1]" 0.23528480529785156;
	setAttr ".wl[252].w[21]" 0.53337359428405762;
	setAttr ".wl[252].w[22]" 0.81918984651565552;
	setAttr -s 4 ".wl[253].w";
	setAttr ".wl[253].w[0]" 0.69864749908447266;
	setAttr ".wl[253].w[1]" 0.2325671911239624;
	setAttr ".wl[253].w[21]" 0.39795291423797607;
	setAttr ".wl[253].w[22]" 0.27439868450164795;
	setAttr -s 3 ".wl[254].w";
	setAttr ".wl[254].w[0]" 0.71430879831314087;
	setAttr ".wl[254].w[1]" 0.23279488086700439;
	setAttr ".wl[254].w[21]" 0.14082014560699463;
	setAttr -s 4 ".wl[255].w";
	setAttr ".wl[255].w[0]" 0.73952358961105347;
	setAttr ".wl[255].w[1]" 0.23594975471496582;
	setAttr ".wl[255].w[19]" 0.039341926574707031;
	setAttr ".wl[255].w[21]" 6.4373016357421875e-006;
	setAttr -s 4 ".wl[256].w";
	setAttr ".wl[256].w[0]" 0.771270751953125;
	setAttr ".wl[256].w[1]" 0.2417716383934021;
	setAttr ".wl[256].w[18]" 0.0028548240661621094;
	setAttr ".wl[256].w[19]" 0.29582977294921875;
	setAttr -s 4 ".wl[257].w";
	setAttr ".wl[257].w[0]" 0.8056904673576355;
	setAttr ".wl[257].w[1]" 0.24976509809494019;
	setAttr ".wl[257].w[18]" 0.20148110389709473;
	setAttr ".wl[257].w[19]" 0.31045615673065186;
	setAttr -s 4 ".wl[258].w";
	setAttr ".wl[258].w[0]" 0.83875393867492676;
	setAttr ".wl[258].w[1]" 0.25921773910522461;
	setAttr ".wl[258].w[18]" 0.504558265209198;
	setAttr ".wl[258].w[19]" 0.22610437870025635;
	setAttr -s 4 ".wl[259].w";
	setAttr ".wl[259].w[0]" 0.86702883243560791;
	setAttr ".wl[259].w[1]" 0.26924324035644531;
	setAttr ".wl[259].w[18]" 0.62126815319061279;
	setAttr ".wl[259].w[19]" 0.21672558784484863;
	setAttr -s 2 ".wl[260].w[0:1]"  0.65846490859985352 0.74087858200073242;
	setAttr -s 2 ".wl[261].w[0:1]"  0.8289642333984375 0.84343600273132324;
	setAttr -s 2 ".wl[262].w[0:1]"  0.51199746131896973 0.67339253425598145;
	setAttr -s 2 ".wl[263].w[0:1]"  0.98171699047088623 0.95989894866943359;
	setAttr -s 2 ".wl[264].w[0:1]"  0.60312676429748535 0.76402634382247925;
	setAttr -s 3 ".wl[265].w";
	setAttr ".wl[265].w[0]" 0.55571591854095459;
	setAttr ".wl[265].w[1]" 0.75933545827865601;
	setAttr ".wl[265].w[22]" 0.2115064263343811;
	setAttr -s 3 ".wl[266].w";
	setAttr ".wl[266].w[0]" 0.50299286842346191;
	setAttr ".wl[266].w[1]" 0.75070393085479736;
	setAttr ".wl[266].w[22]" 0.54496169090270996;
	setAttr -s 3 ".wl[267].w";
	setAttr ".wl[267].w[0]" 0.45056396722793579;
	setAttr ".wl[267].w[1]" 0.73890972137451172;
	setAttr ".wl[267].w[22]" 0.69150590896606445;
	setAttr -s 3 ".wl[268].w";
	setAttr ".wl[268].w[0]" 0.40366733074188232;
	setAttr ".wl[268].w[1]" 0.72505366802215576;
	setAttr ".wl[268].w[22]" 0.72256499528884888;
	setAttr -s 3 ".wl[269].w";
	setAttr ".wl[269].w[0]" 0.36645644903182983;
	setAttr ".wl[269].w[1]" 0.71047359704971313;
	setAttr ".wl[269].w[22]" 0.72313207387924194;
	setAttr -s 3 ".wl[270].w";
	setAttr ".wl[270].w[0]" 0.34173792600631714;
	setAttr ".wl[270].w[1]" 0.69661474227905273;
	setAttr ".wl[270].w[22]" 0.70138418674468994;
	setAttr -s 3 ".wl[271].w";
	setAttr ".wl[271].w[0]" 0.33112168312072754;
	setAttr ".wl[271].w[1]" 0.68487650156021118;
	setAttr ".wl[271].w[22]" 0.58521521091461182;
	setAttr -s 3 ".wl[272].w";
	setAttr ".wl[272].w[0]" 0.33532339334487915;
	setAttr ".wl[272].w[1]" 0.6764528751373291;
	setAttr ".wl[272].w[22]" 0.28240245580673218;
	setAttr -s 4 ".wl[273].w";
	setAttr ".wl[273].w[0]" 0.3543245792388916;
	setAttr ".wl[273].w[1]" 0.6722031831741333;
	setAttr ".wl[273].w[10]" 0.00019437074661254883;
	setAttr ".wl[273].w[22]" 0.0017922520637512207;
	setAttr -s 3 ".wl[274].w";
	setAttr ".wl[274].w[0]" 0.38721311092376709;
	setAttr ".wl[274].w[1]" 0.67256057262420654;
	setAttr ".wl[274].w[10]" 0.013172626495361328;
	setAttr -s 3 ".wl[275].w";
	setAttr ".wl[275].w[0]" 0.43177026510238647;
	setAttr ".wl[275].w[1]" 0.67748862504959106;
	setAttr ".wl[275].w[10]" 0.021387338638305664;
	setAttr -s 3 ".wl[276].w";
	setAttr ".wl[276].w[0]" 0.48412400484085083;
	setAttr ".wl[276].w[1]" 0.6864851713180542;
	setAttr ".wl[276].w[10]" 0.011151671409606934;
	setAttr -s 3 ".wl[277].w";
	setAttr ".wl[277].w[0]" 0.53885877132415771;
	setAttr ".wl[277].w[1]" 0.69863200187683105;
	setAttr ".wl[277].w[10]" 5.3644180297851563e-006;
	setAttr -s 2 ".wl[278].w[0:1]"  0.58976447582244873 0.71269446611404419;
	setAttr -s 2 ".wl[279].w[0:1]"  0.63107717037200928 0.72725701332092285;
	setAttr ".wl[280].w[1]"  0.34903115034103394;
	setAttr ".wl[281].w[1]"  0.36867338418960571;
	setAttr ".wl[282].w[1]"  0.38287186622619629;
	setAttr ".wl[283].w[1]"  0.60016000270843506;
	setAttr ".wl[284].w[1]"  0.61023610830307007;
	setAttr ".wl[285].w[1]"  0.58683323860168457;
	setAttr ".wl[286].w[1]"  0.36314767599105835;
	setAttr ".wl[287].w[1]"  0.34292483329772949;
	setAttr -s 2 ".wl[288].w";
	setAttr ".wl[288].w[1]" 0.32078069448471069;
	setAttr ".wl[288].w[6]" 0.62613356113433838;
	setAttr -s 2 ".wl[289].w";
	setAttr ".wl[289].w[1]" 0.29905849695205688;
	setAttr ".wl[289].w[6]" 0.81811189651489258;
	setAttr -s 2 ".wl[290].w";
	setAttr ".wl[290].w[1]" 0.27970731258392334;
	setAttr ".wl[290].w[6]" 0.028051495552062988;
	setAttr -s 3 ".wl[291].w";
	setAttr ".wl[291].w[1]" 0.27763807773590088;
	setAttr ".wl[291].w[10]" 0.019878864288330078;
	setAttr ".wl[291].w[13]" 0.037400424480438232;
	setAttr -s 3 ".wl[292].w";
	setAttr ".wl[292].w[1]" 0.37471145391464233;
	setAttr ".wl[292].w[10]" 0.19684183597564697;
	setAttr ".wl[292].w[13]" 0.86418271064758301;
	setAttr -s 3 ".wl[293].w";
	setAttr ".wl[293].w[1]" 0.78865206241607666;
	setAttr ".wl[293].w[10]" 0.83478701114654541;
	setAttr ".wl[293].w[13]" 1;
	setAttr -s 4 ".wl[294].w";
	setAttr ".wl[294].w[1]" 0.98694014549255371;
	setAttr ".wl[294].w[10]" 1;
	setAttr ".wl[294].w[11]" 0.036162257194519043;
	setAttr ".wl[294].w[13]" 1;
	setAttr -s 3 ".wl[295].w";
	setAttr ".wl[295].w[1]" 0.66985011100769043;
	setAttr ".wl[295].w[10]" 0.83477896451950073;
	setAttr ".wl[295].w[13]" 1;
	setAttr -s 3 ".wl[296].w";
	setAttr ".wl[296].w[1]" 0.26631677150726318;
	setAttr ".wl[296].w[10]" 0.27795135974884033;
	setAttr ".wl[296].w[13]" 0.70166587829589844;
	setAttr -s 2 ".wl[297].w";
	setAttr ".wl[297].w[1]" 0.2830771803855896;
	setAttr ".wl[297].w[10]" 0.17136871814727783;
	setAttr -s 3 ".wl[298].w";
	setAttr ".wl[298].w[1]" 0.30372357368469238;
	setAttr ".wl[298].w[2]" 0.04449164867401123;
	setAttr ".wl[298].w[10]" 0.064777970314025879;
	setAttr -s 3 ".wl[299].w";
	setAttr ".wl[299].w[1]" 0.3264923095703125;
	setAttr ".wl[299].w[2]" 0.34303849935531616;
	setAttr ".wl[299].w[10]" 0.005555272102355957;
	setAttr -s 2 ".wl[300].w";
	setAttr ".wl[300].w[1]" 0.77391499280929565;
	setAttr ".wl[300].w[10]" 0.34717804193496704;
	setAttr -s 2 ".wl[301].w";
	setAttr ".wl[301].w[1]" 0.79762208461761475;
	setAttr ".wl[301].w[10]" 0.22521394491195679;
	setAttr -s 2 ".wl[302].w";
	setAttr ".wl[302].w[1]" 0.81293118000030518;
	setAttr ".wl[302].w[10]" 0.14127755165100098;
	setAttr -s 3 ".wl[303].w";
	setAttr ".wl[303].w[1]" 0.81880784034729004;
	setAttr ".wl[303].w[10]" 0.090694308280944824;
	setAttr ".wl[303].w[11]" 0.14898312091827393;
	setAttr -s 3 ".wl[304].w";
	setAttr ".wl[304].w[1]" 0.81490409374237061;
	setAttr ".wl[304].w[10]" 0.065043926239013672;
	setAttr ".wl[304].w[11]" 0.22265446186065674;
	setAttr -s 3 ".wl[305].w";
	setAttr ".wl[305].w[1]" 0.80144768953323364;
	setAttr ".wl[305].w[10]" 0.057746171951293945;
	setAttr ".wl[305].w[11]" 0.027451157569885254;
	setAttr -s 2 ".wl[306].w";
	setAttr ".wl[306].w[1]" 0.77931845188140869;
	setAttr ".wl[306].w[10]" 0.067016780376434326;
	setAttr -s 2 ".wl[307].w";
	setAttr ".wl[307].w[1]" 0.75023424625396729;
	setAttr ".wl[307].w[10]" 0.097108781337738037;
	setAttr -s 2 ".wl[308].w";
	setAttr ".wl[308].w[1]" 0.71682637929916382;
	setAttr ".wl[308].w[10]" 0.15762341022491455;
	setAttr -s 2 ".wl[309].w";
	setAttr ".wl[309].w[1]" 0.682445228099823;
	setAttr ".wl[309].w[10]" 0.25907814502716064;
	setAttr -s 2 ".wl[310].w";
	setAttr ".wl[310].w[1]" 0.65071535110473633;
	setAttr ".wl[310].w[10]" 0.40342867374420166;
	setAttr -s 2 ".wl[311].w";
	setAttr ".wl[311].w[1]" 0.62500208616256714;
	setAttr ".wl[311].w[10]" 0.57362627983093262;
	setAttr -s 3 ".wl[312].w";
	setAttr ".wl[312].w[1]" 0.60797244310379028;
	setAttr ".wl[312].w[10]" 0.73400861024856567;
	setAttr ".wl[312].w[13]" 0.98563432693481445;
	setAttr -s 4 ".wl[313].w";
	setAttr ".wl[313].w[1]" 0.60133862495422363;
	setAttr ".wl[313].w[10]" 0.84951138496398926;
	setAttr ".wl[313].w[11]" 0.037344932556152344;
	setAttr ".wl[313].w[13]" 1;
	setAttr -s 4 ".wl[314].w";
	setAttr ".wl[314].w[1]" 0.605751633644104;
	setAttr ".wl[314].w[10]" 0.90810716152191162;
	setAttr ".wl[314].w[11]" 0.101845383644104;
	setAttr ".wl[314].w[13]" 1;
	setAttr -s 4 ".wl[315].w";
	setAttr ".wl[315].w[1]" 0.62077981233596802;
	setAttr ".wl[315].w[10]" 0.91787689924240112;
	setAttr ".wl[315].w[11]" 0.0048839449882507324;
	setAttr ".wl[315].w[13]" 1;
	setAttr -s 3 ".wl[316].w";
	setAttr ".wl[316].w[1]" 0.64492118358612061;
	setAttr ".wl[316].w[10]" 0.88293749094009399;
	setAttr ".wl[316].w[13]" 0.46959203481674194;
	setAttr -s 2 ".wl[317].w";
	setAttr ".wl[317].w[1]" 0.67568635940551758;
	setAttr ".wl[317].w[10]" 0.79660558700561523;
	setAttr -s 2 ".wl[318].w";
	setAttr ".wl[318].w[1]" 0.70982217788696289;
	setAttr ".wl[318].w[10]" 0.66111356019973755;
	setAttr -s 2 ".wl[319].w";
	setAttr ".wl[319].w[1]" 0.74371469020843506;
	setAttr ".wl[319].w[10]" 0.5002741813659668;
	setAttr -s 3 ".wl[320].w";
	setAttr ".wl[320].w[1]" 1;
	setAttr ".wl[320].w[10]" 1;
	setAttr ".wl[320].w[11]" 0.67110949754714966;
	setAttr -s 3 ".wl[321].w";
	setAttr ".wl[321].w[1]" 1;
	setAttr ".wl[321].w[10]" 1;
	setAttr ".wl[321].w[11]" 0.84702873229980469;
	setAttr -s 3 ".wl[322].w";
	setAttr ".wl[322].w[1]" 1;
	setAttr ".wl[322].w[10]" 1;
	setAttr ".wl[322].w[11]" 0.97746634483337402;
	setAttr -s 3 ".wl[323].w";
	setAttr ".wl[323].w[1]" 1;
	setAttr ".wl[323].w[10]" 0.99908614158630371;
	setAttr ".wl[323].w[11]" 1;
	setAttr -s 3 ".wl[324].w";
	setAttr ".wl[324].w[1]" 1;
	setAttr ".wl[324].w[10]" 0.99532043933868408;
	setAttr ".wl[324].w[11]" 1;
	setAttr -s 3 ".wl[325].w";
	setAttr ".wl[325].w[1]" 1;
	setAttr ".wl[325].w[10]" 0.99402904510498047;
	setAttr ".wl[325].w[11]" 0.98820871114730835;
	setAttr -s 3 ".wl[326].w";
	setAttr ".wl[326].w[1]" 1;
	setAttr ".wl[326].w[10]" 0.99684131145477295;
	setAttr ".wl[326].w[11]" 0.86227977275848389;
	setAttr -s 3 ".wl[327].w";
	setAttr ".wl[327].w[1]" 1;
	setAttr ".wl[327].w[10]" 0.99997645616531372;
	setAttr ".wl[327].w[11]" 0.64290732145309448;
	setAttr -s 3 ".wl[328].w";
	setAttr ".wl[328].w[1]" 1;
	setAttr ".wl[328].w[10]" 1;
	setAttr ".wl[328].w[11]" 0.47016036510467529;
	setAttr -s 3 ".wl[329].w";
	setAttr ".wl[329].w[1]" 1;
	setAttr ".wl[329].w[10]" 1;
	setAttr ".wl[329].w[11]" 0.41895538568496704;
	setAttr -s 3 ".wl[330].w";
	setAttr ".wl[330].w[1]" 1;
	setAttr ".wl[330].w[10]" 1;
	setAttr ".wl[330].w[11]" 0.4971625804901123;
	setAttr -s 3 ".wl[331].w";
	setAttr ".wl[331].w[1]" 1;
	setAttr ".wl[331].w[10]" 1;
	setAttr ".wl[331].w[11]" 0.67926222085952759;
	setAttr -s 3 ".wl[332].w";
	setAttr ".wl[332].w[1]" 1;
	setAttr ".wl[332].w[10]" 1;
	setAttr ".wl[332].w[11]" 0.87447023391723633;
	setAttr -s 3 ".wl[333].w";
	setAttr ".wl[333].w[1]" 1;
	setAttr ".wl[333].w[10]" 1;
	setAttr ".wl[333].w[11]" 0.97617018222808838;
	setAttr -s 3 ".wl[334].w";
	setAttr ".wl[334].w[1]" 1;
	setAttr ".wl[334].w[10]" 1;
	setAttr ".wl[334].w[11]" 0.9939577579498291;
	setAttr -s 3 ".wl[335].w";
	setAttr ".wl[335].w[1]" 1;
	setAttr ".wl[335].w[10]" 1;
	setAttr ".wl[335].w[11]" 0.97172117233276367;
	setAttr -s 3 ".wl[336].w";
	setAttr ".wl[336].w[1]" 1;
	setAttr ".wl[336].w[10]" 1;
	setAttr ".wl[336].w[11]" 0.87160152196884155;
	setAttr -s 3 ".wl[337].w";
	setAttr ".wl[337].w[1]" 1;
	setAttr ".wl[337].w[10]" 1;
	setAttr ".wl[337].w[11]" 0.708912193775177;
	setAttr -s 3 ".wl[338].w";
	setAttr ".wl[338].w[1]" 1;
	setAttr ".wl[338].w[10]" 1;
	setAttr ".wl[338].w[11]" 0.58374536037445068;
	setAttr -s 3 ".wl[339].w";
	setAttr ".wl[339].w[1]" 1;
	setAttr ".wl[339].w[10]" 1;
	setAttr ".wl[339].w[11]" 0.56709396839141846;
	setAttr -s 3 ".wl[340].w";
	setAttr ".wl[340].w[1]" 1;
	setAttr ".wl[340].w[10]" 1;
	setAttr ".wl[340].w[11]" 0.68130660057067871;
	setAttr -s 3 ".wl[341].w";
	setAttr ".wl[341].w[1]" 1;
	setAttr ".wl[341].w[10]" 1;
	setAttr ".wl[341].w[11]" 0.86181825399398804;
	setAttr -s 3 ".wl[342].w";
	setAttr ".wl[342].w[1]" 1;
	setAttr ".wl[342].w[10]" 1;
	setAttr ".wl[342].w[11]" 0.98667728900909424;
	setAttr -s 3 ".wl[343].w";
	setAttr ".wl[343].w[1]" 1;
	setAttr ".wl[343].w[10]" 0.99817132949829102;
	setAttr ".wl[343].w[11]" 1;
	setAttr -s 3 ".wl[344].w";
	setAttr ".wl[344].w[1]" 1;
	setAttr ".wl[344].w[10]" 0.99362665414810181;
	setAttr ".wl[344].w[11]" 1;
	setAttr -s 3 ".wl[345].w";
	setAttr ".wl[345].w[1]" 1;
	setAttr ".wl[345].w[10]" 0.99225366115570068;
	setAttr ".wl[345].w[11]" 0.99446392059326172;
	setAttr -s 3 ".wl[346].w";
	setAttr ".wl[346].w[1]" 1;
	setAttr ".wl[346].w[10]" 0.99555253982543945;
	setAttr ".wl[346].w[11]" 0.87415969371795654;
	setAttr -s 3 ".wl[347].w";
	setAttr ".wl[347].w[1]" 1;
	setAttr ".wl[347].w[10]" 0.99975979328155518;
	setAttr ".wl[347].w[11]" 0.64706575870513916;
	setAttr -s 3 ".wl[348].w";
	setAttr ".wl[348].w[1]" 1;
	setAttr ".wl[348].w[10]" 1;
	setAttr ".wl[348].w[11]" 0.466777503490448;
	setAttr -s 3 ".wl[349].w";
	setAttr ".wl[349].w[1]" 1;
	setAttr ".wl[349].w[10]" 1;
	setAttr ".wl[349].w[11]" 0.41375380754470825;
	setAttr -s 3 ".wl[350].w";
	setAttr ".wl[350].w[1]" 1;
	setAttr ".wl[350].w[10]" 1;
	setAttr ".wl[350].w[11]" 0.49576956033706665;
	setAttr -s 3 ".wl[351].w";
	setAttr ".wl[351].w[1]" 1;
	setAttr ".wl[351].w[10]" 1;
	setAttr ".wl[351].w[11]" 0.68658828735351563;
	setAttr -s 3 ".wl[352].w";
	setAttr ".wl[352].w[1]" 1;
	setAttr ".wl[352].w[10]" 1;
	setAttr ".wl[352].w[11]" 0.88820278644561768;
	setAttr -s 3 ".wl[353].w";
	setAttr ".wl[353].w[1]" 0.99998211860656738;
	setAttr ".wl[353].w[10]" 1;
	setAttr ".wl[353].w[11]" 0.98565471172332764;
	setAttr -s 3 ".wl[354].w";
	setAttr ".wl[354].w[1]" 0.99999922513961792;
	setAttr ".wl[354].w[10]" 1;
	setAttr ".wl[354].w[11]" 0.99867498874664307;
	setAttr -s 3 ".wl[355].w";
	setAttr ".wl[355].w[1]" 1;
	setAttr ".wl[355].w[10]" 1;
	setAttr ".wl[355].w[11]" 0.98246204853057861;
	setAttr -s 3 ".wl[356].w";
	setAttr ".wl[356].w[1]" 1;
	setAttr ".wl[356].w[10]" 1;
	setAttr ".wl[356].w[11]" 0.88760840892791748;
	setAttr -s 3 ".wl[357].w";
	setAttr ".wl[357].w[1]" 1;
	setAttr ".wl[357].w[10]" 1;
	setAttr ".wl[357].w[11]" 0.72145175933837891;
	setAttr -s 3 ".wl[358].w";
	setAttr ".wl[358].w[1]" 1;
	setAttr ".wl[358].w[10]" 1;
	setAttr ".wl[358].w[11]" 0.59103024005889893;
	setAttr -s 3 ".wl[359].w";
	setAttr ".wl[359].w[1]" 1;
	setAttr ".wl[359].w[10]" 1;
	setAttr ".wl[359].w[11]" 0.57333004474639893;
	setAttr -s 3 ".wl[360].w";
	setAttr ".wl[360].w[1]" 1;
	setAttr ".wl[360].w[10]" 1;
	setAttr ".wl[360].w[11]" 0.60022467374801636;
	setAttr -s 3 ".wl[361].w";
	setAttr ".wl[361].w[1]" 1;
	setAttr ".wl[361].w[10]" 1;
	setAttr ".wl[361].w[11]" 0.79950565099716187;
	setAttr -s 3 ".wl[362].w";
	setAttr ".wl[362].w[1]" 1;
	setAttr ".wl[362].w[10]" 0.99981141090393066;
	setAttr ".wl[362].w[11]" 0.96121275424957275;
	setAttr -s 3 ".wl[363].w";
	setAttr ".wl[363].w[1]" 1;
	setAttr ".wl[363].w[10]" 0.99349808692932129;
	setAttr ".wl[363].w[11]" 1;
	setAttr -s 3 ".wl[364].w";
	setAttr ".wl[364].w[1]" 1;
	setAttr ".wl[364].w[10]" 0.98585325479507446;
	setAttr ".wl[364].w[11]" 1;
	setAttr -s 3 ".wl[365].w";
	setAttr ".wl[365].w[1]" 1;
	setAttr ".wl[365].w[10]" 0.98364967107772827;
	setAttr ".wl[365].w[11]" 0.97764623165130615;
	setAttr -s 3 ".wl[366].w";
	setAttr ".wl[366].w[1]" 1;
	setAttr ".wl[366].w[10]" 0.98859214782714844;
	setAttr ".wl[366].w[11]" 0.82134205102920532;
	setAttr -s 3 ".wl[367].w";
	setAttr ".wl[367].w[1]" 1;
	setAttr ".wl[367].w[10]" 0.9969441294670105;
	setAttr ".wl[367].w[11]" 0.57488059997558594;
	setAttr -s 3 ".wl[368].w";
	setAttr ".wl[368].w[1]" 1;
	setAttr ".wl[368].w[10]" 1;
	setAttr ".wl[368].w[11]" 0.39263033866882324;
	setAttr -s 3 ".wl[369].w";
	setAttr ".wl[369].w[1]" 1;
	setAttr ".wl[369].w[10]" 1;
	setAttr ".wl[369].w[11]" 0.34102296829223633;
	setAttr -s 3 ".wl[370].w";
	setAttr ".wl[370].w[1]" 1;
	setAttr ".wl[370].w[10]" 1;
	setAttr ".wl[370].w[11]" 0.42189621925354004;
	setAttr -s 3 ".wl[371].w";
	setAttr ".wl[371].w[1]" 1;
	setAttr ".wl[371].w[10]" 1;
	setAttr ".wl[371].w[11]" 0.61729711294174194;
	setAttr -s 3 ".wl[372].w";
	setAttr ".wl[372].w[1]" 1;
	setAttr ".wl[372].w[10]" 1;
	setAttr ".wl[372].w[11]" 0.83878481388092041;
	setAttr -s 3 ".wl[373].w";
	setAttr ".wl[373].w[1]" 1;
	setAttr ".wl[373].w[10]" 1;
	setAttr ".wl[373].w[11]" 0.96294856071472168;
	setAttr -s 3 ".wl[374].w";
	setAttr ".wl[374].w[1]" 1;
	setAttr ".wl[374].w[10]" 1;
	setAttr ".wl[374].w[11]" 0.9873497486114502;
	setAttr -s 3 ".wl[375].w";
	setAttr ".wl[375].w[1]" 1;
	setAttr ".wl[375].w[10]" 1;
	setAttr ".wl[375].w[11]" 0.95598512887954712;
	setAttr -s 3 ".wl[376].w";
	setAttr ".wl[376].w[1]" 1;
	setAttr ".wl[376].w[10]" 1;
	setAttr ".wl[376].w[11]" 0.83188319206237793;
	setAttr -s 3 ".wl[377].w";
	setAttr ".wl[377].w[1]" 1;
	setAttr ".wl[377].w[10]" 1;
	setAttr ".wl[377].w[11]" 0.64447891712188721;
	setAttr -s 3 ".wl[378].w";
	setAttr ".wl[378].w[1]" 1;
	setAttr ".wl[378].w[10]" 1;
	setAttr ".wl[378].w[11]" 0.50692296028137207;
	setAttr -s 3 ".wl[379].w";
	setAttr ".wl[379].w[1]" 1;
	setAttr ".wl[379].w[10]" 1;
	setAttr ".wl[379].w[11]" 0.48835361003875732;
	setAttr -s 2 ".wl[380].w";
	setAttr ".wl[380].w[1]" 0.6142352819442749;
	setAttr ".wl[380].w[10]" 0.17232179641723633;
	setAttr -s 2 ".wl[381].w";
	setAttr ".wl[381].w[1]" 0.64215755462646484;
	setAttr ".wl[381].w[10]" 0.083788752555847168;
	setAttr -s 2 ".wl[382].w";
	setAttr ".wl[382].w[1]" 0.6605600118637085;
	setAttr ".wl[382].w[10]" 0.034097135066986084;
	setAttr -s 3 ".wl[383].w";
	setAttr ".wl[383].w[1]" 0.66770839691162109;
	setAttr ".wl[383].w[10]" 0.011455655097961426;
	setAttr ".wl[383].w[11]" 0.056476950645446777;
	setAttr -s 3 ".wl[384].w";
	setAttr ".wl[384].w[1]" 0.66295403242111206;
	setAttr ".wl[384].w[10]" 0.0035627484321594238;
	setAttr ".wl[384].w[11]" 0.11624139547348022;
	setAttr -s 2 ".wl[385].w";
	setAttr ".wl[385].w[1]" 0.64672756195068359;
	setAttr ".wl[385].w[10]" 0.0019806623458862305;
	setAttr -s 2 ".wl[386].w";
	setAttr ".wl[386].w[1]" 0.62054193019866943;
	setAttr ".wl[386].w[10]" 0.0040014982223510742;
	setAttr -s 2 ".wl[387].w";
	setAttr ".wl[387].w[1]" 0.58697319030761719;
	setAttr ".wl[387].w[10]" 0.013808608055114746;
	setAttr -s 2 ".wl[388].w";
	setAttr ".wl[388].w[1]" 0.54946422576904297;
	setAttr ".wl[388].w[10]" 0.042922377586364746;
	setAttr -s 2 ".wl[389].w";
	setAttr ".wl[389].w[1]" 0.51190787553787231;
	setAttr ".wl[389].w[10]" 0.10761475563049316;
	setAttr -s 2 ".wl[390].w";
	setAttr ".wl[390].w[1]" 0.47810631990432739;
	setAttr ".wl[390].w[10]" 0.2201654314994812;
	setAttr -s 2 ".wl[391].w";
	setAttr ".wl[391].w[1]" 0.45127838850021362;
	setAttr ".wl[391].w[10]" 0.375235915184021;
	setAttr -s 3 ".wl[392].w";
	setAttr ".wl[392].w[1]" 0.43377768993377686;
	setAttr ".wl[392].w[10]" 0.54270279407501221;
	setAttr ".wl[392].w[13]" 0.99955075979232788;
	setAttr -s 4 ".wl[393].w";
	setAttr ".wl[393].w[1]" 0.42701637744903564;
	setAttr ".wl[393].w[10]" 0.6805121898651123;
	setAttr ".wl[393].w[11]" 0.0010637044906616211;
	setAttr ".wl[393].w[13]" 1;
	setAttr -s 4 ".wl[394].w";
	setAttr ".wl[394].w[1]" 0.43151068687438965;
	setAttr ".wl[394].w[10]" 0.75980329513549805;
	setAttr ".wl[394].w[11]" 0.030783712863922119;
	setAttr ".wl[394].w[13]" 0.99964666366577148;
	setAttr -s 3 ".wl[395].w";
	setAttr ".wl[395].w[1]" 0.44692021608352661;
	setAttr ".wl[395].w[10]" 0.77339041233062744;
	setAttr ".wl[395].w[13]" 1;
	setAttr -s 3 ".wl[396].w";
	setAttr ".wl[396].w[1]" 0.47201782464981079;
	setAttr ".wl[396].w[10]" 0.72246271371841431;
	setAttr ".wl[396].w[13]" 0.76076757907867432;
	setAttr -s 2 ".wl[397].w";
	setAttr ".wl[397].w[1]" 0.50464123487472534;
	setAttr ".wl[397].w[10]" 0.61155545711517334;
	setAttr -s 2 ".wl[398].w";
	setAttr ".wl[398].w[1]" 0.54173088073730469;
	setAttr ".wl[398].w[10]" 0.45997756719589233;
	setAttr -s 2 ".wl[399].w";
	setAttr ".wl[399].w[1]" 0.57956910133361816;
	setAttr ".wl[399].w[10]" 0.30267477035522461;
	setAttr -s 2 ".wl[400].w[1:2]"  0.10148531198501587 0.031888008117675781;
	setAttr ".wl[401].w[1]"  0.11308366060256958;
	setAttr ".wl[402].w[1]"  0.12189507484436035;
	setAttr ".wl[403].w[1]"  0.29707258939743042;
	setAttr ".wl[404].w[1]"  0.30710881948471069;
	setAttr ".wl[405].w[1]"  0.28698301315307617;
	setAttr ".wl[406].w[1]"  0.11167073249816895;
	setAttr ".wl[407].w[1]"  0.10027337074279785;
	setAttr -s 2 ".wl[408].w";
	setAttr ".wl[408].w[1]" 0.088167488574981689;
	setAttr ".wl[408].w[6]" 0.79388248920440674;
	setAttr -s 2 ".wl[409].w";
	setAttr ".wl[409].w[1]" 0.076715707778930664;
	setAttr ".wl[409].w[6]" 0.96012723445892334;
	setAttr -s 2 ".wl[410].w";
	setAttr ".wl[410].w[1]" 0.066877365112304688;
	setAttr ".wl[410].w[6]" 0.050043344497680664;
	setAttr -s 2 ".wl[411].w";
	setAttr ".wl[411].w[1]" 0.066506862640380859;
	setAttr ".wl[411].w[13]" 0.035695791244506836;
	setAttr -s 3 ".wl[412].w";
	setAttr ".wl[412].w[1]" 0.14115893840789795;
	setAttr ".wl[412].w[10]" 0.013325035572052002;
	setAttr ".wl[412].w[13]" 0.14959794282913208;
	setAttr -s 3 ".wl[413].w";
	setAttr ".wl[413].w[1]" 0.52124214172363281;
	setAttr ".wl[413].w[10]" 0.51640260219573975;
	setAttr ".wl[413].w[13]" 0.98860305547714233;
	setAttr -s 3 ".wl[414].w";
	setAttr ".wl[414].w[1]" 0.49014872312545776;
	setAttr ".wl[414].w[10]" 0.62616360187530518;
	setAttr ".wl[414].w[13]" 0.7466198205947876;
	setAttr -s 3 ".wl[415].w";
	setAttr ".wl[415].w[1]" 0.38536667823791504;
	setAttr ".wl[415].w[10]" 0.50142478942871094;
	setAttr ".wl[415].w[13]" 0.81921136379241943;
	setAttr -s 3 ".wl[416].w";
	setAttr ".wl[416].w[1]" 0.058703958988189697;
	setAttr ".wl[416].w[10]" 0.030878841876983643;
	setAttr ".wl[416].w[13]" 0.087932825088500977;
	setAttr -s 2 ".wl[417].w";
	setAttr ".wl[417].w[1]" 0.066549062728881836;
	setAttr ".wl[417].w[10]" 0.0023486614227294922;
	setAttr -s 2 ".wl[418].w[1:2]"  0.076823115348815918 0.24387574195861816;
	setAttr -s 2 ".wl[419].w[1:2]"  0.088861227035522461 0.75250113010406494;
	setAttr -s 2 ".wl[420].w[0:1]"  0.33274692296981812 0.53457498550415039;
	setAttr -s 2 ".wl[421].w[0:1]"  0.53021854162216187 0.66614854335784912;
	setAttr -s 2 ".wl[422].w[0:1]"  0.2018699049949646 0.45784193277359009;
	setAttr -s 2 ".wl[423].w[0:1]"  0.24453765153884888 0.51139664649963379;
	setAttr -s 2 ".wl[424].w[0:1]"  0.28005045652389526 0.56217646598815918;
	setAttr -s 3 ".wl[425].w";
	setAttr ".wl[425].w[0]" 0.23819887638092041;
	setAttr ".wl[425].w[1]" 0.55652618408203125;
	setAttr ".wl[425].w[22]" 0.23929482698440552;
	setAttr -s 3 ".wl[426].w";
	setAttr ".wl[426].w[0]" 0.19485563039779663;
	setAttr ".wl[426].w[1]" 0.54620623588562012;
	setAttr ".wl[426].w[22]" 0.56451427936553955;
	setAttr -s 3 ".wl[427].w";
	setAttr ".wl[427].w[0]" 0.15503418445587158;
	setAttr ".wl[427].w[1]" 0.53225946426391602;
	setAttr ".wl[427].w[22]" 0.65705835819244385;
	setAttr -s 3 ".wl[428].w";
	setAttr ".wl[428].w[0]" 0.12223196029663086;
	setAttr ".wl[428].w[1]" 0.51609355211257935;
	setAttr ".wl[428].w[22]" 0.64396661520004272;
	setAttr -s 3 ".wl[429].w";
	setAttr ".wl[429].w[0]" 0.09817880392074585;
	setAttr ".wl[429].w[1]" 0.49932861328125;
	setAttr ".wl[429].w[22]" 0.63991451263427734;
	setAttr -s 3 ".wl[430].w";
	setAttr ".wl[430].w[0]" 0.083209395408630371;
	setAttr ".wl[430].w[1]" 0.48361736536026001;
	setAttr ".wl[430].w[22]" 0.65615361928939819;
	setAttr -s 3 ".wl[431].w";
	setAttr ".wl[431].w[0]" 0.077012777328491211;
	setAttr ".wl[431].w[1]" 0.47047519683837891;
	setAttr ".wl[431].w[22]" 0.59526914358139038;
	setAttr -s 3 ".wl[432].w";
	setAttr ".wl[432].w[0]" 0.07937312126159668;
	setAttr ".wl[432].w[1]" 0.46113455295562744;
	setAttr ".wl[432].w[22]" 0.31452000141143799;
	setAttr -s 3 ".wl[433].w";
	setAttr ".wl[433].w[0]" 0.090562343597412109;
	setAttr ".wl[433].w[1]" 0.45645040273666382;
	setAttr ".wl[433].w[22]" 0.001696169376373291;
	setAttr -s 2 ".wl[434].w[0:1]"  0.11117279529571533 0.45684373378753662;
	setAttr -s 2 ".wl[435].w[0:1]"  0.16117364168167114 0.48048323392868042;
	setAttr -s 2 ".wl[436].w[0:1]"  0.18011784553527832 0.47226709127426147;
	setAttr -s 2 ".wl[437].w[0:1]"  0.22411102056503296 0.48589080572128296;
	setAttr -s 2 ".wl[438].w[0:1]"  0.26817768812179565 0.50186657905578613;
	setAttr -s 2 ".wl[439].w[0:1]"  0.28661316633224487 0.50671219825744629;
	setAttr -s 4 ".wl[440].w";
	setAttr ".wl[440].w[0]" 0.64263612031936646;
	setAttr ".wl[440].w[1]" 0.16341972351074219;
	setAttr ".wl[440].w[18]" 0.20694714784622192;
	setAttr ".wl[440].w[19]" 0.12968426942825317;
	setAttr -s 4 ".wl[441].w";
	setAttr ".wl[441].w[0]" 0.66261160373687744;
	setAttr ".wl[441].w[1]" 0.17082732915878296;
	setAttr ".wl[441].w[18]" 0.017503082752227783;
	setAttr ".wl[441].w[19]" 0.30913275480270386;
	setAttr -s 3 ".wl[442].w";
	setAttr ".wl[442].w[0]" 0.54290163516998291;
	setAttr ".wl[442].w[1]" 0.13072925806045532;
	setAttr ".wl[442].w[19]" 0.19091486930847168;
	setAttr -s 3 ".wl[443].w";
	setAttr ".wl[443].w[0]" 0.67322432994842529;
	setAttr ".wl[443].w[1]" 0.18264633417129517;
	setAttr ".wl[443].w[21]" 0.15003734827041626;
	setAttr -s 4 ".wl[444].w";
	setAttr ".wl[444].w[0]" 0.64525085687637329;
	setAttr ".wl[444].w[1]" 0.17873448133468628;
	setAttr ".wl[444].w[21]" 0.36467766761779785;
	setAttr ".wl[444].w[22]" 0.16829580068588257;
	setAttr -s 4 ".wl[445].w";
	setAttr ".wl[445].w[0]" 0.61594825983047485;
	setAttr ".wl[445].w[1]" 0.17555403709411621;
	setAttr ".wl[445].w[21]" 0.3951878547668457;
	setAttr ".wl[445].w[22]" 0.7864222526550293;
	setAttr -s 4 ".wl[446].w";
	setAttr ".wl[446].w[0]" 0.57869851589202881;
	setAttr ".wl[446].w[1]" 0.16980540752410889;
	setAttr ".wl[446].w[21]" 0.27086746692657471;
	setAttr ".wl[446].w[22]" 0.99999499320983887;
	setAttr -s 4 ".wl[447].w";
	setAttr ".wl[447].w[0]" 0.53719013929367065;
	setAttr ".wl[447].w[1]" 0.16215968132019043;
	setAttr ".wl[447].w[21]" 0.13714504241943359;
	setAttr ".wl[447].w[22]" 1;
	setAttr -s 4 ".wl[448].w";
	setAttr ".wl[448].w[0]" 0.49558550119400024;
	setAttr ".wl[448].w[1]" 0.15347230434417725;
	setAttr ".wl[448].w[21]" 0.076716959476470947;
	setAttr ".wl[448].w[22]" 1;
	setAttr -s 4 ".wl[449].w";
	setAttr ".wl[449].w[0]" 0.4579777717590332;
	setAttr ".wl[449].w[1]" 0.14465677738189697;
	setAttr ".wl[449].w[21]" 0.086593389511108398;
	setAttr ".wl[449].w[22]" 1;
	setAttr -s 4 ".wl[450].w";
	setAttr ".wl[450].w[0]" 0.42789745330810547;
	setAttr ".wl[450].w[1]" 0.13657307624816895;
	setAttr ".wl[450].w[21]" 0.16729438304901123;
	setAttr ".wl[450].w[22]" 1;
	setAttr -s 4 ".wl[451].w";
	setAttr ".wl[451].w[0]" 0.4079965353012085;
	setAttr ".wl[451].w[1]" 0.12994116544723511;
	setAttr ".wl[451].w[21]" 0.29820430278778076;
	setAttr ".wl[451].w[22]" 1;
	setAttr -s 4 ".wl[452].w";
	setAttr ".wl[452].w[0]" 0.39996641874313354;
	setAttr ".wl[452].w[1]" 0.12529963254928589;
	setAttr ".wl[452].w[21]" 0.36499351263046265;
	setAttr ".wl[452].w[22]" 0.86702191829681396;
	setAttr -s 4 ".wl[453].w";
	setAttr ".wl[453].w[0]" 0.40456396341323853;
	setAttr ".wl[453].w[1]" 0.12299442291259766;
	setAttr ".wl[453].w[21]" 0.25155019760131836;
	setAttr ".wl[453].w[22]" 0.281544029712677;
	setAttr -s 3 ".wl[454].w";
	setAttr ".wl[454].w[0]" 0.42161107063293457;
	setAttr ".wl[454].w[1]" 0.12318730354309082;
	setAttr ".wl[454].w[21]" 0.038952350616455078;
	setAttr -s 3 ".wl[455].w";
	setAttr ".wl[455].w[0]" 0.44989281892776489;
	setAttr ".wl[455].w[1]" 0.12586516141891479;
	setAttr ".wl[455].w[19]" 0.07094264030456543;
	setAttr -s 3 ".wl[456].w";
	setAttr ".wl[456].w[0]" 0.48700118064880371;
	setAttr ".wl[456].w[1]" 0.13083839416503906;
	setAttr ".wl[456].w[19]" 0.28102624416351318;
	setAttr -s 4 ".wl[457].w";
	setAttr ".wl[457].w[0]" 0.52933651208877563;
	setAttr ".wl[457].w[1]" 0.13773214817047119;
	setAttr ".wl[457].w[18]" 0.023255825042724609;
	setAttr ".wl[457].w[19]" 0.16321635246276855;
	setAttr -s 4 ".wl[458].w";
	setAttr ".wl[458].w[0]" 0.57242381572723389;
	setAttr ".wl[458].w[1]" 0.14597916603088379;
	setAttr ".wl[458].w[18]" 0.2351650595664978;
	setAttr ".wl[458].w[19]" 0.044487833976745605;
	setAttr -s 4 ".wl[459].w";
	setAttr ".wl[459].w[0]" 0.61156988143920898;
	setAttr ".wl[459].w[1]" 0.15483283996582031;
	setAttr ".wl[459].w[18]" 0.34500354528427124;
	setAttr ".wl[459].w[19]" 0.034219861030578613;
	setAttr -s 3 ".wl[460].w";
	setAttr ".wl[460].w[0]" 0.28015685081481934;
	setAttr ".wl[460].w[18]" 0.97551876306533813;
	setAttr ".wl[460].w[19]" 1;
	setAttr -s 4 ".wl[461].w";
	setAttr ".wl[461].w[0]" 0.30323070287704468;
	setAttr ".wl[461].w[18]" 0.78049039840698242;
	setAttr ".wl[461].w[19]" 1;
	setAttr ".wl[461].w[21]" 0.10947179794311523;
	setAttr -s 4 ".wl[462].w";
	setAttr ".wl[462].w[0]" 0.32206028699874878;
	setAttr ".wl[462].w[18]" 0.41971468925476074;
	setAttr ".wl[462].w[19]" 1;
	setAttr ".wl[462].w[21]" 0.51737290620803833;
	setAttr -s 5 ".wl[463].w";
	setAttr ".wl[463].w[0]" 0.33436876535415649;
	setAttr ".wl[463].w[18]" 0.13589537143707275;
	setAttr ".wl[463].w[19]" 0.47543656826019287;
	setAttr ".wl[463].w[21]" 0.91285282373428345;
	setAttr ".wl[463].w[22]" 0.0057613849639892578;
	setAttr -s 4 ".wl[464].w";
	setAttr ".wl[464].w[0]" 0.338623046875;
	setAttr ".wl[464].w[18]" 0.019977390766143799;
	setAttr ".wl[464].w[21]" 1;
	setAttr ".wl[464].w[22]" 0.50188040733337402;
	setAttr -s 3 ".wl[465].w";
	setAttr ".wl[465].w[0]" 0.33428490161895752;
	setAttr ".wl[465].w[21]" 1;
	setAttr ".wl[465].w[22]" 0.99128687381744385;
	setAttr -s 3 ".wl[466].w";
	setAttr ".wl[466].w[0]" 0.32190275192260742;
	setAttr ".wl[466].w[21]" 1;
	setAttr ".wl[466].w[22]" 1;
	setAttr -s 3 ".wl[467].w";
	setAttr ".wl[467].w[0]" 0.30301880836486816;
	setAttr ".wl[467].w[21]" 0.98216402530670166;
	setAttr ".wl[467].w[22]" 1;
	setAttr -s 3 ".wl[468].w";
	setAttr ".wl[468].w[0]" 0.27991580963134766;
	setAttr ".wl[468].w[21]" 0.94586187601089478;
	setAttr ".wl[468].w[22]" 1;
	setAttr -s 3 ".wl[469].w";
	setAttr ".wl[469].w[0]" 0.25523906946182251;
	setAttr ".wl[469].w[21]" 0.95304000377655029;
	setAttr ".wl[469].w[22]" 1;
	setAttr -s 3 ".wl[470].w";
	setAttr ".wl[470].w[0]" 0.23158222436904907;
	setAttr ".wl[470].w[21]" 0.99044358730316162;
	setAttr ".wl[470].w[22]" 1;
	setAttr -s 3 ".wl[471].w";
	setAttr ".wl[471].w[0]" 0.21114999055862427;
	setAttr ".wl[471].w[21]" 1;
	setAttr ".wl[471].w[22]" 1;
	setAttr -s 3 ".wl[472].w";
	setAttr ".wl[472].w[0]" 0.25283592939376831;
	setAttr ".wl[472].w[21]" 1;
	setAttr ".wl[472].w[22]" 0.99999570846557617;
	setAttr -s 3 ".wl[473].w";
	setAttr ".wl[473].w[0]" 0.26137787103652954;
	setAttr ".wl[473].w[21]" 0.96483469009399414;
	setAttr ".wl[473].w[22]" 0.60785233974456787;
	setAttr -s 4 ".wl[474].w";
	setAttr ".wl[474].w[0]" 0.2643769383430481;
	setAttr ".wl[474].w[19]" 0.094883620738983154;
	setAttr ".wl[474].w[21]" 0.69686985015869141;
	setAttr ".wl[474].w[22]" 0.03381657600402832;
	setAttr -s 3 ".wl[475].w";
	setAttr ".wl[475].w[0]" 0.26145392656326294;
	setAttr ".wl[475].w[19]" 0.98215854167938232;
	setAttr ".wl[475].w[21]" 0.25243955850601196;
	setAttr -s 4 ".wl[476].w";
	setAttr ".wl[476].w[0]" 0.25297856330871582;
	setAttr ".wl[476].w[18]" 0.11654222011566162;
	setAttr ".wl[476].w[19]" 1;
	setAttr ".wl[476].w[21]" 0.0112496018409729;
	setAttr -s 3 ".wl[477].w";
	setAttr ".wl[477].w[0]" 0.21133136749267578;
	setAttr ".wl[477].w[18]" 0.64343386888504028;
	setAttr ".wl[477].w[19]" 1;
	setAttr -s 3 ".wl[478].w";
	setAttr ".wl[478].w[0]" 0.2318044900894165;
	setAttr ".wl[478].w[18]" 0.94808089733123779;
	setAttr ".wl[478].w[19]" 1;
	setAttr -s 3 ".wl[479].w";
	setAttr ".wl[479].w[0]" 0.25548315048217773;
	setAttr ".wl[479].w[18]" 0.99863237142562866;
	setAttr ".wl[479].w[19]" 1;
	setAttr -s 3 ".wl[480].w";
	setAttr ".wl[480].w[0]" 0.0049862861633300781;
	setAttr ".wl[480].w[18]" 0.96418905258178711;
	setAttr ".wl[480].w[19]" 1;
	setAttr -s 4 ".wl[481].w";
	setAttr ".wl[481].w[0]" 0.0039657354354858398;
	setAttr ".wl[481].w[18]" 0.85766088962554932;
	setAttr ".wl[481].w[19]" 1;
	setAttr ".wl[481].w[21]" 0.024729490280151367;
	setAttr -s 4 ".wl[482].w";
	setAttr ".wl[482].w[0]" 0.043963909149169922;
	setAttr ".wl[482].w[18]" 0.3674888014793396;
	setAttr ".wl[482].w[19]" 1;
	setAttr ".wl[482].w[21]" 0.4212067723274231;
	setAttr -s 5 ".wl[483].w";
	setAttr ".wl[483].w[0]" 0.04868769645690918;
	setAttr ".wl[483].w[18]" 0.10803985595703125;
	setAttr ".wl[483].w[19]" 0.58435547351837158;
	setAttr ".wl[483].w[21]" 0.82959306240081787;
	setAttr ".wl[483].w[22]" 0.0086251497268676758;
	setAttr -s 4 ".wl[484].w";
	setAttr ".wl[484].w[0]" 0.050361216068267822;
	setAttr ".wl[484].w[18]" 0.010904550552368164;
	setAttr ".wl[484].w[21]" 0.9878922700881958;
	setAttr ".wl[484].w[22]" 0.51270943880081177;
	setAttr -s 3 ".wl[485].w";
	setAttr ".wl[485].w[0]" 0.048654794692993164;
	setAttr ".wl[485].w[21]" 0.99974727630615234;
	setAttr ".wl[485].w[22]" 0.99220007658004761;
	setAttr -s 3 ".wl[486].w";
	setAttr ".wl[486].w[0]" 0.043904483318328857;
	setAttr ".wl[486].w[21]" 0.98775207996368408;
	setAttr ".wl[486].w[22]" 1;
	setAttr -s 3 ".wl[487].w";
	setAttr ".wl[487].w[0]" 0.037013769149780273;
	setAttr ".wl[487].w[21]" 0.93401634693145752;
	setAttr ".wl[487].w[22]" 1;
	setAttr -s 3 ".wl[488].w";
	setAttr ".wl[488].w[0]" 0.02919459342956543;
	setAttr ".wl[488].w[21]" 0.88246297836303711;
	setAttr ".wl[488].w[22]" 1;
	setAttr -s 3 ".wl[489].w";
	setAttr ".wl[489].w[0]" 0.021640121936798096;
	setAttr ".wl[489].w[21]" 0.89294803142547607;
	setAttr ".wl[489].w[22]" 1;
	setAttr -s 3 ".wl[490].w";
	setAttr ".wl[490].w[0]" 0.0152435302734375;
	setAttr ".wl[490].w[21]" 0.95139133930206299;
	setAttr ".wl[490].w[22]" 1;
	setAttr -s 3 ".wl[491].w";
	setAttr ".wl[491].w[0]" 0.010454654693603516;
	setAttr ".wl[491].w[21]" 0.99181020259857178;
	setAttr ".wl[491].w[22]" 1;
	setAttr -s 3 ".wl[492].w";
	setAttr ".wl[492].w[0]" 0.010231494903564453;
	setAttr ".wl[492].w[21]" 0.98414021730422974;
	setAttr ".wl[492].w[22]" 0.99754279851913452;
	setAttr -s 3 ".wl[493].w";
	setAttr ".wl[493].w[0]" 0.011046528816223145;
	setAttr ".wl[493].w[21]" 0.89467811584472656;
	setAttr ".wl[493].w[22]" 0.57227873802185059;
	setAttr -s 4 ".wl[494].w";
	setAttr ".wl[494].w[0]" 0.011340141296386719;
	setAttr ".wl[494].w[19]" 0.11298143863677979;
	setAttr ".wl[494].w[21]" 0.57779383659362793;
	setAttr ".wl[494].w[22]" 0.025367677211761475;
	setAttr -s 3 ".wl[495].w";
	setAttr ".wl[495].w[0]" 0.011061906814575195;
	setAttr ".wl[495].w[19]" 0.98699015378952026;
	setAttr ".wl[495].w[21]" 0.1672290563583374;
	setAttr -s 4 ".wl[496].w";
	setAttr ".wl[496].w[0]" 0.010259687900543213;
	setAttr ".wl[496].w[18]" 0.012674808502197266;
	setAttr ".wl[496].w[19]" 1;
	setAttr ".wl[496].w[21]" 0.00023257732391357422;
	setAttr -s 3 ".wl[497].w";
	setAttr ".wl[497].w[0]" 0.010493993759155273;
	setAttr ".wl[497].w[18]" 0.56695765256881714;
	setAttr ".wl[497].w[19]" 1;
	setAttr -s 3 ".wl[498].w";
	setAttr ".wl[498].w[0]" 0.0076680183410644531;
	setAttr ".wl[498].w[18]" 0.73788344860076904;
	setAttr ".wl[498].w[19]" 1;
	setAttr -s 3 ".wl[499].w";
	setAttr ".wl[499].w[0]" 0.0062549114227294922;
	setAttr ".wl[499].w[18]" 0.94616043567657471;
	setAttr ".wl[499].w[19]" 1;
	setAttr ".wl[500].w[19]"  1;
	setAttr ".wl[501].w[19]"  1;
	setAttr ".wl[502].w[19]"  1;
	setAttr ".wl[503].w[19]"  0.99926292896270752;
	setAttr -s 2 ".wl[504].w";
	setAttr ".wl[504].w[19]" 0.19963574409484863;
	setAttr ".wl[504].w[22]" 0.45518457889556885;
	setAttr ".wl[505].w[22]"  0.99791759252548218;
	setAttr ".wl[506].w[22]"  1;
	setAttr ".wl[507].w[22]"  1;
	setAttr ".wl[508].w[22]"  1;
	setAttr ".wl[509].w[22]"  1;
	setAttr ".wl[510].w[22]"  1;
	setAttr ".wl[511].w[22]"  1;
	setAttr ".wl[512].w[22]"  0.86807727813720703;
	setAttr -s 2 ".wl[513].w";
	setAttr ".wl[513].w[19]" 0.016753792762756348;
	setAttr ".wl[513].w[22]" 0.223457932472229;
	setAttr ".wl[514].w[19]"  0.8182368278503418;
	setAttr ".wl[515].w[19]"  1;
	setAttr ".wl[516].w[19]"  1;
	setAttr ".wl[517].w[19]"  1;
	setAttr ".wl[518].w[19]"  1;
	setAttr ".wl[519].w[19]"  1;
	setAttr ".wl[520].w[19]"  1;
	setAttr ".wl[521].w[19]"  1;
	setAttr ".wl[522].w[19]"  1;
	setAttr ".wl[523].w[19]"  1;
	setAttr -s 2 ".wl[524].w";
	setAttr ".wl[524].w[19]" 0.3341134786605835;
	setAttr ".wl[524].w[22]" 0.29677152633666992;
	setAttr ".wl[525].w[22]"  0.94666296243667603;
	setAttr ".wl[526].w[22]"  1;
	setAttr ".wl[527].w[22]"  1;
	setAttr ".wl[528].w[22]"  1;
	setAttr ".wl[529].w[22]"  1;
	setAttr ".wl[530].w[22]"  1;
	setAttr ".wl[531].w[22]"  1;
	setAttr ".wl[532].w[22]"  0.65732407569885254;
	setAttr -s 2 ".wl[533].w";
	setAttr ".wl[533].w[19]" 0.070051312446594238;
	setAttr ".wl[533].w[22]" 0.065562725067138672;
	setAttr ".wl[534].w[19]"  0.90687280893325806;
	setAttr ".wl[535].w[19]"  1;
	setAttr ".wl[536].w[19]"  1;
	setAttr ".wl[537].w[19]"  0.98906576633453369;
	setAttr ".wl[538].w[19]"  0.98508334159851074;
	setAttr ".wl[539].w[19]"  0.97251439094543457;
	setAttr ".wl[540].w[19]"  1;
	setAttr ".wl[541].w[19]"  1;
	setAttr ".wl[542].w[19]"  1;
	setAttr ".wl[543].w[19]"  1;
	setAttr -s 2 ".wl[544].w";
	setAttr ".wl[544].w[19]" 0.40728962421417236;
	setAttr ".wl[544].w[22]" 0.24700248241424561;
	setAttr ".wl[545].w[22]"  0.89945358037948608;
	setAttr ".wl[546].w[22]"  1;
	setAttr ".wl[547].w[22]"  1;
	setAttr ".wl[548].w[22]"  1;
	setAttr ".wl[549].w[22]"  1;
	setAttr ".wl[550].w[22]"  1;
	setAttr ".wl[551].w[22]"  1;
	setAttr ".wl[552].w[22]"  0.58865886926651001;
	setAttr -s 2 ".wl[553].w";
	setAttr ".wl[553].w[19]" 0.1248934268951416;
	setAttr ".wl[553].w[22]" 0.043863654136657715;
	setAttr ".wl[554].w[19]"  0.93459570407867432;
	setAttr ".wl[555].w[19]"  1;
	setAttr ".wl[556].w[19]"  1;
	setAttr ".wl[557].w[19]"  0.9999992847442627;
	setAttr ".wl[558].w[19]"  0.99997806549072266;
	setAttr ".wl[559].w[19]"  0.99786007404327393;
	setAttr ".wl[560].w[19]"  1;
	setAttr ".wl[561].w[19]"  1;
	setAttr ".wl[562].w[19]"  1;
	setAttr ".wl[563].w[19]"  1;
	setAttr -s 2 ".wl[564].w";
	setAttr ".wl[564].w[19]" 0.35845881700515747;
	setAttr ".wl[564].w[22]" 0.30529427528381348;
	setAttr ".wl[565].w[22]"  0.94367408752441406;
	setAttr ".wl[566].w[22]"  1;
	setAttr ".wl[567].w[22]"  1;
	setAttr ".wl[568].w[22]"  1;
	setAttr ".wl[569].w[22]"  1;
	setAttr ".wl[570].w[22]"  1;
	setAttr ".wl[571].w[22]"  1;
	setAttr ".wl[572].w[22]"  0.65814852714538574;
	setAttr -s 2 ".wl[573].w";
	setAttr ".wl[573].w[19]" 0.093851089477539063;
	setAttr ".wl[573].w[22]" 0.071651458740234375;
	setAttr ".wl[574].w[19]"  0.91193592548370361;
	setAttr ".wl[575].w[19]"  1;
	setAttr ".wl[576].w[19]"  1;
	setAttr ".wl[577].w[19]"  1;
	setAttr ".wl[578].w[19]"  1;
	setAttr ".wl[579].w[19]"  0.99991011619567871;
	setAttr ".wl[580].w[19]"  1;
	setAttr ".wl[581].w[19]"  1;
	setAttr ".wl[582].w[19]"  1;
	setAttr ".wl[583].w[19]"  0.99685263633728027;
	setAttr -s 2 ".wl[584].w";
	setAttr ".wl[584].w[19]" 0.23668020963668823;
	setAttr ".wl[584].w[22]" 0.46574389934539795;
	setAttr ".wl[585].w[22]"  0.99427920579910278;
	setAttr ".wl[586].w[22]"  1;
	setAttr ".wl[587].w[22]"  1;
	setAttr ".wl[588].w[22]"  1;
	setAttr ".wl[589].w[22]"  1;
	setAttr ".wl[590].w[22]"  1;
	setAttr ".wl[591].w[22]"  1;
	setAttr ".wl[592].w[22]"  0.85626542568206787;
	setAttr -s 2 ".wl[593].w";
	setAttr ".wl[593].w[19]" 0.042447686195373535;
	setAttr ".wl[593].w[22]" 0.23480331897735596;
	setAttr ".wl[594].w[19]"  0.8258059024810791;
	setAttr ".wl[595].w[19]"  1;
	setAttr ".wl[596].w[19]"  1;
	setAttr ".wl[597].w[19]"  1;
	setAttr ".wl[598].w[19]"  1;
	setAttr ".wl[599].w[19]"  1;
	setAttr -s 4 ".wl[600].w";
	setAttr ".wl[600].w[0]" 0.039202690124511719;
	setAttr ".wl[600].w[18]" 1;
	setAttr ".wl[600].w[19]" 1;
	setAttr ".wl[600].w[21]" 0.0033998489379882813;
	setAttr -s 4 ".wl[601].w";
	setAttr ".wl[601].w[0]" 0.036476850509643555;
	setAttr ".wl[601].w[18]" 0.98409128189086914;
	setAttr ".wl[601].w[19]" 1;
	setAttr ".wl[601].w[21]" 0.12874025106430054;
	setAttr -s 4 ".wl[602].w";
	setAttr ".wl[602].w[0]" 0.11011600494384766;
	setAttr ".wl[602].w[18]" 0.650307297706604;
	setAttr ".wl[602].w[19]" 1;
	setAttr ".wl[602].w[21]" 0.59041571617126465;
	setAttr -s 5 ".wl[603].w";
	setAttr ".wl[603].w[0]" 0.11677742004394531;
	setAttr ".wl[603].w[18]" 0.34955334663391113;
	setAttr ".wl[603].w[19]" 0.5320284366607666;
	setAttr ".wl[603].w[21]" 0.91954004764556885;
	setAttr ".wl[603].w[22]" 0.025942742824554443;
	setAttr -s 4 ".wl[604].w";
	setAttr ".wl[604].w[0]" 0.11910206079483032;
	setAttr ".wl[604].w[18]" 0.15433019399642944;
	setAttr ".wl[604].w[21]" 1;
	setAttr ".wl[604].w[22]" 0.51326525211334229;
	setAttr -s 4 ".wl[605].w";
	setAttr ".wl[605].w[0]" 0.11673152446746826;
	setAttr ".wl[605].w[18]" 0.06343686580657959;
	setAttr ".wl[605].w[21]" 1;
	setAttr ".wl[605].w[22]" 0.97752141952514648;
	setAttr -s 4 ".wl[606].w";
	setAttr ".wl[606].w[0]" 0.11003124713897705;
	setAttr ".wl[606].w[18]" 0.026966750621795654;
	setAttr ".wl[606].w[21]" 1;
	setAttr ".wl[606].w[22]" 1;
	setAttr -s 4 ".wl[607].w";
	setAttr ".wl[607].w[0]" 0.10000514984130859;
	setAttr ".wl[607].w[18]" 0.010372638702392578;
	setAttr ".wl[607].w[21]" 0.99944508075714111;
	setAttr ".wl[607].w[22]" 1;
	setAttr -s 4 ".wl[608].w";
	setAttr ".wl[608].w[0]" 0.088066935539245605;
	setAttr ".wl[608].w[18]" 0.0011829137802124023;
	setAttr ".wl[608].w[21]" 0.99053919315338135;
	setAttr ".wl[608].w[22]" 1;
	setAttr -s 3 ".wl[609].w";
	setAttr ".wl[609].w[0]" 0.075737237930297852;
	setAttr ".wl[609].w[21]" 0.99275720119476318;
	setAttr ".wl[609].w[22]" 1;
	setAttr -s 3 ".wl[610].w";
	setAttr ".wl[610].w[0]" 0.064357638359069824;
	setAttr ".wl[610].w[21]" 1;
	setAttr ".wl[610].w[22]" 1;
	setAttr -s 3 ".wl[611].w";
	setAttr ".wl[611].w[0]" 0.054907381534576416;
	setAttr ".wl[611].w[21]" 1;
	setAttr ".wl[611].w[22]" 1;
	setAttr -s 3 ".wl[612].w";
	setAttr ".wl[612].w[0]" 0.047958731651306152;
	setAttr ".wl[612].w[21]" 1;
	setAttr ".wl[612].w[22]" 0.99846696853637695;
	setAttr -s 3 ".wl[613].w";
	setAttr ".wl[613].w[0]" 0.05269312858581543;
	setAttr ".wl[613].w[21]" 0.95991325378417969;
	setAttr ".wl[613].w[22]" 0.56338942050933838;
	setAttr -s 4 ".wl[614].w";
	setAttr ".wl[614].w[0]" 0.042365014553070068;
	setAttr ".wl[614].w[19]" 0.18803340196609497;
	setAttr ".wl[614].w[21]" 0.78873145580291748;
	setAttr ".wl[614].w[22]" 0.077408075332641602;
	setAttr -s 4 ".wl[615].w";
	setAttr ".wl[615].w[0]" 0.043785452842712402;
	setAttr ".wl[615].w[18]" 0.078586459159851074;
	setAttr ".wl[615].w[19]" 0.97882258892059326;
	setAttr ".wl[615].w[21]" 0.40017640590667725;
	setAttr -s 4 ".wl[616].w";
	setAttr ".wl[616].w[0]" 0.048014461994171143;
	setAttr ".wl[616].w[18]" 0.38586336374282837;
	setAttr ".wl[616].w[19]" 1;
	setAttr ".wl[616].w[21]" 0.095031499862670898;
	setAttr -s 3 ".wl[617].w";
	setAttr ".wl[617].w[0]" 0.048630237579345703;
	setAttr ".wl[617].w[18]" 0.53554153442382813;
	setAttr ".wl[617].w[19]" 1;
	setAttr -s 3 ".wl[618].w";
	setAttr ".wl[618].w[0]" 0.045592546463012695;
	setAttr ".wl[618].w[18]" 0.90227019786834717;
	setAttr ".wl[618].w[19]" 1;
	setAttr -s 3 ".wl[619].w";
	setAttr ".wl[619].w[0]" 0.042338013648986816;
	setAttr ".wl[619].w[18]" 0.99983406066894531;
	setAttr ".wl[619].w[19]" 1;
	setAttr -s 4 ".wl[620].w";
	setAttr ".wl[620].w[0]" 0.44980031251907349;
	setAttr ".wl[620].w[18]" 1;
	setAttr ".wl[620].w[19]" 1;
	setAttr ".wl[620].w[21]" 0.065832972526550293;
	setAttr -s 4 ".wl[621].w";
	setAttr ".wl[621].w[0]" 0.47361981868743896;
	setAttr ".wl[621].w[18]" 0.9769974946975708;
	setAttr ".wl[621].w[19]" 1;
	setAttr ".wl[621].w[21]" 0.31192868947982788;
	setAttr -s 4 ".wl[622].w";
	setAttr ".wl[622].w[0]" 0.49272561073303223;
	setAttr ".wl[622].w[18]" 0.75705099105834961;
	setAttr ".wl[622].w[19]" 1;
	setAttr ".wl[622].w[21]" 0.71937358379364014;
	setAttr -s 5 ".wl[623].w";
	setAttr ".wl[623].w[0]" 0.50506293773651123;
	setAttr ".wl[623].w[18]" 0.45294749736785889;
	setAttr ".wl[623].w[19]" 0.40828055143356323;
	setAttr ".wl[623].w[21]" 0.98440372943878174;
	setAttr ".wl[623].w[22]" 0.024365663528442383;
	setAttr -s 4 ".wl[624].w";
	setAttr ".wl[624].w[0]" 0.50929969549179077;
	setAttr ".wl[624].w[18]" 0.23206675052642822;
	setAttr ".wl[624].w[21]" 1;
	setAttr ".wl[624].w[22]" 0.50236105918884277;
	setAttr -s 4 ".wl[625].w";
	setAttr ".wl[625].w[0]" 0.50497877597808838;
	setAttr ".wl[625].w[18]" 0.11720043420791626;
	setAttr ".wl[625].w[21]" 1;
	setAttr ".wl[625].w[22]" 0.97243142127990723;
	setAttr -s 4 ".wl[626].w";
	setAttr ".wl[626].w[0]" 0.49256634712219238;
	setAttr ".wl[626].w[18]" 0.064748406410217285;
	setAttr ".wl[626].w[21]" 1;
	setAttr ".wl[626].w[22]" 1;
	setAttr -s 4 ".wl[627].w";
	setAttr ".wl[627].w[0]" 0.47340291738510132;
	setAttr ".wl[627].w[18]" 0.036747097969055176;
	setAttr ".wl[627].w[21]" 1;
	setAttr ".wl[627].w[22]" 1;
	setAttr -s 4 ".wl[628].w";
	setAttr ".wl[628].w[0]" 0.44954913854598999;
	setAttr ".wl[628].w[18]" 0.015419244766235352;
	setAttr ".wl[628].w[21]" 1;
	setAttr ".wl[628].w[22]" 1;
	setAttr -s 4 ".wl[629].w";
	setAttr ".wl[629].w[0]" 0.42352980375289917;
	setAttr ".wl[629].w[18]" 0.001343846321105957;
	setAttr ".wl[629].w[21]" 1;
	setAttr ".wl[629].w[22]" 1;
	setAttr -s 3 ".wl[630].w";
	setAttr ".wl[630].w[0]" 0.39800751209259033;
	setAttr ".wl[630].w[21]" 1;
	setAttr ".wl[630].w[22]" 1;
	setAttr -s 3 ".wl[631].w";
	setAttr ".wl[631].w[0]" 0.37545454502105713;
	setAttr ".wl[631].w[21]" 1;
	setAttr ".wl[631].w[22]" 1;
	setAttr -s 3 ".wl[632].w";
	setAttr ".wl[632].w[0]" 0.35790419578552246;
	setAttr ".wl[632].w[21]" 1;
	setAttr ".wl[632].w[22]" 0.99684607982635498;
	setAttr -s 3 ".wl[633].w";
	setAttr ".wl[633].w[0]" 0.42241555452346802;
	setAttr ".wl[633].w[21]" 0.99949133396148682;
	setAttr ".wl[633].w[22]" 0.59482979774475098;
	setAttr -s 4 ".wl[634].w";
	setAttr ".wl[634].w[0]" 0.42557322978973389;
	setAttr ".wl[634].w[19]" 0.087733447551727295;
	setAttr ".wl[634].w[21]" 0.85007119178771973;
	setAttr ".wl[634].w[22]" 0.06164860725402832;
	setAttr -s 4 ".wl[635].w";
	setAttr ".wl[635].w[0]" 0.42249584197998047;
	setAttr ".wl[635].w[18]" 0.072735071182250977;
	setAttr ".wl[635].w[19]" 0.93529856204986572;
	setAttr ".wl[635].w[21]" 0.46851432323455811;
	setAttr -s 4 ".wl[636].w";
	setAttr ".wl[636].w[0]" 0.41352415084838867;
	setAttr ".wl[636].w[18]" 0.38220417499542236;
	setAttr ".wl[636].w[19]" 1;
	setAttr ".wl[636].w[21]" 0.13661587238311768;
	setAttr -s 4 ".wl[637].w";
	setAttr ".wl[637].w[0]" 0.3756568431854248;
	setAttr ".wl[637].w[18]" 0.89084482192993164;
	setAttr ".wl[637].w[19]" 1;
	setAttr ".wl[637].w[21]" 0.022340893745422363;
	setAttr -s 4 ".wl[638].w";
	setAttr ".wl[638].w[0]" 0.3982502818107605;
	setAttr ".wl[638].w[18]" 1;
	setAttr ".wl[638].w[19]" 1;
	setAttr ".wl[638].w[21]" 0.00054395198822021484;
	setAttr -s 4 ".wl[639].w";
	setAttr ".wl[639].w[0]" 0.42379015684127808;
	setAttr ".wl[639].w[18]" 1;
	setAttr ".wl[639].w[19]" 1;
	setAttr ".wl[639].w[21]" 0.0037375688552856445;
	setAttr -s 3 ".wl[640].w";
	setAttr ".wl[640].w[0]" 0.81998217105865479;
	setAttr ".wl[640].w[18]" 0.95926046371459961;
	setAttr ".wl[640].w[19]" 1;
	setAttr -s 3 ".wl[641].w";
	setAttr ".wl[641].w[0]" 0.79096442461013794;
	setAttr ".wl[641].w[18]" 0.99883478879928589;
	setAttr ".wl[641].w[19]" 0.97888362407684326;
	setAttr -s 3 ".wl[642].w";
	setAttr ".wl[642].w[0]" 0.76055949926376343;
	setAttr ".wl[642].w[18]" 0.95692181587219238;
	setAttr ".wl[642].w[19]" 0.98428511619567871;
	setAttr -s 3 ".wl[643].w";
	setAttr ".wl[643].w[0]" 0.73206120729446411;
	setAttr ".wl[643].w[18]" 0.64961743354797363;
	setAttr ".wl[643].w[19]" 1;
	setAttr -s 4 ".wl[644].w";
	setAttr ".wl[644].w[0]" 0.7087705135345459;
	setAttr ".wl[644].w[18]" 0.18249326944351196;
	setAttr ".wl[644].w[19]" 1;
	setAttr ".wl[644].w[21]" 0.0057486295700073242;
	setAttr -s 3 ".wl[645].w";
	setAttr ".wl[645].w[0]" 0.69346845149993896;
	setAttr ".wl[645].w[19]" 0.74910187721252441;
	setAttr ".wl[645].w[21]" 0.24408161640167236;
	setAttr -s 4 ".wl[646].w";
	setAttr ".wl[646].w[0]" 0.68800258636474609;
	setAttr ".wl[646].w[19]" 0.0018148422241210938;
	setAttr ".wl[646].w[21]" 0.70701807737350464;
	setAttr ".wl[646].w[22]" 0.024630248546600342;
	setAttr -s 3 ".wl[647].w";
	setAttr ".wl[647].w[0]" 0.69299745559692383;
	setAttr ".wl[647].w[21]" 0.97284036874771118;
	setAttr ".wl[647].w[22]" 0.60641217231750488;
	setAttr -s 3 ".wl[648].w";
	setAttr ".wl[648].w[0]" 0.70764374732971191;
	setAttr ".wl[648].w[21]" 1;
	setAttr ".wl[648].w[22]" 1;
	setAttr -s 3 ".wl[649].w";
	setAttr ".wl[649].w[0]" 0.73027503490447998;
	setAttr ".wl[649].w[21]" 0.99979603290557861;
	setAttr ".wl[649].w[22]" 1;
	setAttr -s 3 ".wl[650].w";
	setAttr ".wl[650].w[0]" 0.7583463191986084;
	setAttr ".wl[650].w[21]" 0.96883845329284668;
	setAttr ".wl[650].w[22]" 1;
	setAttr -s 3 ".wl[651].w";
	setAttr ".wl[651].w[0]" 0.78870695829391479;
	setAttr ".wl[651].w[21]" 0.90726584196090698;
	setAttr ".wl[651].w[22]" 1;
	setAttr -s 3 ".wl[652].w";
	setAttr ".wl[652].w[0]" 0.81806743144989014;
	setAttr ".wl[652].w[21]" 0.89460963010787964;
	setAttr ".wl[652].w[22]" 1;
	setAttr -s 3 ".wl[653].w";
	setAttr ".wl[653].w[0]" 0.84351193904876709;
	setAttr ".wl[653].w[21]" 0.9488798975944519;
	setAttr ".wl[653].w[22]" 1;
	setAttr -s 3 ".wl[654].w";
	setAttr ".wl[654].w[0]" 0.86288726329803467;
	setAttr ".wl[654].w[21]" 0.99725180864334106;
	setAttr ".wl[654].w[22]" 1;
	setAttr -s 3 ".wl[655].w";
	setAttr ".wl[655].w[0]" 0.87490993738174438;
	setAttr ".wl[655].w[21]" 1;
	setAttr ".wl[655].w[22]" 0.98868417739868164;
	setAttr -s 3 ".wl[656].w";
	setAttr ".wl[656].w[0]" 0.87899535894393921;
	setAttr ".wl[656].w[21]" 0.99962586164474487;
	setAttr ".wl[656].w[22]" 0.46750026941299438;
	setAttr -s 5 ".wl[657].w";
	setAttr ".wl[657].w[0]" 0.87898194789886475;
	setAttr ".wl[657].w[18]" 0.047778844833374023;
	setAttr ".wl[657].w[19]" 0.18731379508972168;
	setAttr ".wl[657].w[21]" 0.87728303670883179;
	setAttr ".wl[657].w[22]" 0.00032162666320800781;
	setAttr -s 4 ".wl[658].w";
	setAttr ".wl[658].w[0]" 0.80825930833816528;
	setAttr ".wl[658].w[18]" 0.16914033889770508;
	setAttr ".wl[658].w[19]" 0.94371408224105835;
	setAttr ".wl[658].w[21]" 0.42490112781524658;
	setAttr -s 4 ".wl[659].w";
	setAttr ".wl[659].w[0]" 0.84483897686004639;
	setAttr ".wl[659].w[18]" 0.69546937942504883;
	setAttr ".wl[659].w[19]" 1;
	setAttr ".wl[659].w[21]" 0.065344452857971191;
	setAttr -s 3 ".wl[660].w";
	setAttr ".wl[660].w[0]" 0.70555907487869263;
	setAttr ".wl[660].w[18]" 0.9678952693939209;
	setAttr ".wl[660].w[19]" 1;
	setAttr -s 4 ".wl[661].w";
	setAttr ".wl[661].w[0]" 0.73360204696655273;
	setAttr ".wl[661].w[18]" 0.73855823278427124;
	setAttr ".wl[661].w[19]" 1;
	setAttr ".wl[661].w[21]" 0.085671901702880859;
	setAttr -s 4 ".wl[662].w";
	setAttr ".wl[662].w[0]" 0.72485268115997314;
	setAttr ".wl[662].w[18]" 0.28380072116851807;
	setAttr ".wl[662].w[19]" 1;
	setAttr ".wl[662].w[21]" 0.47057086229324341;
	setAttr -s 5 ".wl[663].w";
	setAttr ".wl[663].w[0]" 0.77161592245101929;
	setAttr ".wl[663].w[18]" 0.0858803391456604;
	setAttr ".wl[663].w[19]" 0.37569403648376465;
	setAttr ".wl[663].w[21]" 0.89539122581481934;
	setAttr ".wl[663].w[22]" 0.0021702051162719727;
	setAttr -s 4 ".wl[664].w";
	setAttr ".wl[664].w[0]" 0.77400374412536621;
	setAttr ".wl[664].w[18]" 0.0021598935127258301;
	setAttr ".wl[664].w[21]" 1;
	setAttr ".wl[664].w[22]" 0.48476451635360718;
	setAttr -s 3 ".wl[665].w";
	setAttr ".wl[665].w[0]" 0.769217848777771;
	setAttr ".wl[665].w[21]" 1;
	setAttr ".wl[665].w[22]" 0.99015915393829346;
	setAttr -s 3 ".wl[666].w";
	setAttr ".wl[666].w[0]" 0.75530409812927246;
	setAttr ".wl[666].w[21]" 0.99989974498748779;
	setAttr ".wl[666].w[22]" 1;
	setAttr -s 3 ".wl[667].w";
	setAttr ".wl[667].w[0]" 0.73335117101669312;
	setAttr ".wl[667].w[21]" 0.96723639965057373;
	setAttr ".wl[667].w[22]" 1;
	setAttr -s 3 ".wl[668].w";
	setAttr ".wl[668].w[0]" 0.70525908470153809;
	setAttr ".wl[668].w[21]" 0.92162990570068359;
	setAttr ".wl[668].w[22]" 1;
	setAttr -s 3 ".wl[669].w";
	setAttr ".wl[669].w[0]" 0.67369461059570313;
	setAttr ".wl[669].w[21]" 0.93146461248397827;
	setAttr ".wl[669].w[22]" 1;
	setAttr -s 3 ".wl[670].w";
	setAttr ".wl[670].w[0]" 0.6418423056602478;
	setAttr ".wl[670].w[21]" 0.98094546794891357;
	setAttr ".wl[670].w[22]" 1;
	setAttr -s 3 ".wl[671].w";
	setAttr ".wl[671].w[0]" 0.61299103498458862;
	setAttr ".wl[671].w[21]" 1;
	setAttr ".wl[671].w[22]" 1;
	setAttr -s 3 ".wl[672].w";
	setAttr ".wl[672].w[0]" 0.5900958776473999;
	setAttr ".wl[672].w[21]" 1;
	setAttr ".wl[672].w[22]" 1;
	setAttr -s 3 ".wl[673].w";
	setAttr ".wl[673].w[0]" 0.57543635368347168;
	setAttr ".wl[673].w[21]" 0.97861510515213013;
	setAttr ".wl[673].w[22]" 0.62104058265686035;
	setAttr -s 4 ".wl[674].w";
	setAttr ".wl[674].w[0]" 0.57042539119720459;
	setAttr ".wl[674].w[19]" 0.053010940551757813;
	setAttr ".wl[674].w[21]" 0.72697663307189941;
	setAttr ".wl[674].w[22]" 0.033416748046875;
	setAttr -s 4 ".wl[675].w";
	setAttr ".wl[675].w[0]" 0.57553607225418091;
	setAttr ".wl[675].w[18]" 0.00024956464767456055;
	setAttr ".wl[675].w[19]" 0.9415050745010376;
	setAttr ".wl[675].w[21]" 0.26948881149291992;
	setAttr -s 4 ".wl[676].w";
	setAttr ".wl[676].w[0]" 0.59028583765029907;
	setAttr ".wl[676].w[18]" 0.19043642282485962;
	setAttr ".wl[676].w[19]" 1;
	setAttr ".wl[676].w[21]" 0.01255565881729126;
	setAttr -s 3 ".wl[677].w";
	setAttr ".wl[677].w[0]" 0.61325275897979736;
	setAttr ".wl[677].w[18]" 0.64661204814910889;
	setAttr ".wl[677].w[19]" 1;
	setAttr -s 3 ".wl[678].w";
	setAttr ".wl[678].w[0]" 0.64214909076690674;
	setAttr ".wl[678].w[18]" 0.9527047872543335;
	setAttr ".wl[678].w[19]" 1;
	setAttr -s 3 ".wl[679].w";
	setAttr ".wl[679].w[0]" 0.67401516437530518;
	setAttr ".wl[679].w[18]" 0.99875915050506592;
	setAttr ".wl[679].w[19]" 1;
	setAttr -s 2 ".wl[680].w[18:19]"  0.01522374153137207 1;
	setAttr -s 2 ".wl[681].w[18:19]"  0.10949337482452393 1;
	setAttr -s 2 ".wl[682].w[18:19]"  0.041551351547241211 1;
	setAttr ".wl[683].w[19]"  1;
	setAttr ".wl[684].w[19]"  1;
	setAttr ".wl[685].w[19]"  1;
	setAttr ".wl[686].w[19]"  0.64230906963348389;
	setAttr ".wl[687].w[22]"  0.41271483898162842;
	setAttr ".wl[688].w[22]"  0.96508646011352539;
	setAttr -s 2 ".wl[689].w[21:22]"  0.084451675415039063 1;
	setAttr -s 2 ".wl[690].w[21:22]"  0.032402217388153076 1;
	setAttr -s 2 ".wl[691].w[21:22]"  0.007405400276184082 1;
	setAttr -s 2 ".wl[692].w[21:22]"  0.0047397017478942871 1;
	setAttr -s 2 ".wl[693].w[21:22]"  0.019300758838653564 1;
	setAttr -s 2 ".wl[694].w[21:22]"  0.065020084381103516 1;
	setAttr -s 2 ".wl[695].w[21:22]"  0.11250197887420654 0.9996795654296875;
	setAttr -s 3 ".wl[696].w";
	setAttr ".wl[696].w[19]" 0.060408711433410645;
	setAttr ".wl[696].w[21]" 0.086768507957458496;
	setAttr ".wl[696].w[22]" 0.5298919677734375;
	setAttr -s 3 ".wl[697].w";
	setAttr ".wl[697].w[19]" 0.92858445644378662;
	setAttr ".wl[697].w[21]" 0.007312774658203125;
	setAttr ".wl[697].w[22]" 0.0022991299629211426;
	setAttr ".wl[698].w[19]"  1;
	setAttr ".wl[699].w[19]"  1;
	setAttr -s 2 ".wl[700].w[4:5]"  0.23930215835571289 0.51804935932159424;
	setAttr -s 2 ".wl[701].w[4:5]"  0.18010509014129639 0.36168301105499268;
	setAttr -s 2 ".wl[702].w[4:5]"  0.1535412073135376 0.17524611949920654;
	setAttr -s 2 ".wl[703].w[4:5]"  0.15613365173339844 0.052072286605834961;
	setAttr -s 2 ".wl[704].w[4:5]"  0.18828558921813965 0.0099910497665405273;
	setAttr -s 2 ".wl[705].w[4:5]"  0.25387996435165405 0.0066260099411010742;
	setAttr -s 2 ".wl[706].w[4:5]"  0.35583698749542236 0.035629928112030029;
	setAttr -s 2 ".wl[707].w[4:5]"  0.48943597078323364 0.16266834735870361;
	setAttr -s 2 ".wl[708].w[4:5]"  0.63779133558273315 0.43434345722198486;
	setAttr -s 2 ".wl[709].w[4:5]"  0.77489537000656128 0.7397686243057251;
	setAttr -s 2 ".wl[710].w[4:5]"  0.87734448909759521 0.91148436069488525;
	setAttr -s 2 ".wl[711].w[4:5]"  0.93673074245452881 0.94509601593017578;
	setAttr -s 2 ".wl[712].w[4:5]"  0.96040868759155273 0.88714897632598877;
	setAttr -s 2 ".wl[713].w[4:5]"  0.95822381973266602 0.73902678489685059;
	setAttr -s 2 ".wl[714].w[4:5]"  0.9289584755897522 0.56398272514343262;
	setAttr -s 2 ".wl[715].w[4:5]"  0.86195886135101318 0.44838321208953857;
	setAttr -s 2 ".wl[716].w[4:5]"  0.75205564498901367 0.42212563753128052;
	setAttr -s 2 ".wl[717].w[4:5]"  0.61089926958084106 0.46875345706939697;
	setAttr -s 2 ".wl[718].w[4:5]"  0.4634406566619873 0.54202908277511597;
	setAttr -s 2 ".wl[719].w[4:5]"  0.33470040559768677 0.57618767023086548;
	setAttr -s 3 ".wl[720].w";
	setAttr ".wl[720].w[0]" 0.62068057060241699;
	setAttr ".wl[720].w[1]" 0.90378034114837646;
	setAttr ".wl[720].w[10]" 0.042604327201843262;
	setAttr -s 3 ".wl[721].w";
	setAttr ".wl[721].w[0]" 0.54755425453186035;
	setAttr ".wl[721].w[1]" 0.89253264665603638;
	setAttr ".wl[721].w[10]" 0.10112226009368896;
	setAttr -s 3 ".wl[722].w";
	setAttr ".wl[722].w[0]" 0.38482952117919922;
	setAttr ".wl[722].w[1]" 0.87109029293060303;
	setAttr ".wl[722].w[10]" 0.1734994649887085;
	setAttr -s 3 ".wl[723].w";
	setAttr ".wl[723].w[0]" 0.18618714809417725;
	setAttr ".wl[723].w[1]" 0.84020781517028809;
	setAttr ".wl[723].w[10]" 0.23560750484466553;
	setAttr -s 3 ".wl[724].w";
	setAttr ".wl[724].w[0]" 0.03805696964263916;
	setAttr ".wl[724].w[1]" 0.80200737714767456;
	setAttr ".wl[724].w[10]" 0.26004916429519653;
	setAttr -s 2 ".wl[725].w";
	setAttr ".wl[725].w[1]" 0.68352401256561279;
	setAttr ".wl[725].w[10]" 0.24849820137023926;
	setAttr -s 2 ".wl[726].w";
	setAttr ".wl[726].w[1]" 0.59029382467269897;
	setAttr ".wl[726].w[10]" 0.29260456562042236;
	setAttr -s 2 ".wl[727].w";
	setAttr ".wl[727].w[1]" 0.54788297414779663;
	setAttr ".wl[727].w[10]" 0.37136995792388916;
	setAttr -s 2 ".wl[728].w";
	setAttr ".wl[728].w[1]" 0.54599922895431519;
	setAttr ".wl[728].w[10]" 0.4508892297744751;
	setAttr -s 2 ".wl[729].w";
	setAttr ".wl[729].w[1]" 0.64080995321273804;
	setAttr ".wl[729].w[10]" 0.48302024602890015;
	setAttr -s 2 ".wl[730].w";
	setAttr ".wl[730].w[1]" 0.68947166204452515;
	setAttr ".wl[730].w[10]" 0.43146347999572754;
	setAttr -s 2 ".wl[731].w";
	setAttr ".wl[731].w[1]" 0.6816096305847168;
	setAttr ".wl[731].w[10]" 0.29586613178253174;
	setAttr -s 2 ".wl[732].w";
	setAttr ".wl[732].w[1]" 0.61770915985107422;
	setAttr ".wl[732].w[10]" 0.13113248348236084;
	setAttr -s 2 ".wl[733].w";
	setAttr ".wl[733].w[1]" 0.61572742462158203;
	setAttr ".wl[733].w[10]" 0.021777153015136719;
	setAttr ".wl[734].w[1]"  0.65234601497650146;
	setAttr -s 2 ".wl[735].w[0:1]"  0.0023247599601745605 0.73166954517364502;
	setAttr -s 2 ".wl[736].w[0:1]"  0.087572574615478516 0.83424890041351318;
	setAttr -s 2 ".wl[737].w[0:1]"  0.26691621541976929 0.87605386972427368;
	setAttr -s 2 ".wl[738].w[0:1]"  0.46028625965118408 0.89553368091583252;
	setAttr -s 3 ".wl[739].w";
	setAttr ".wl[739].w[0]" 0.58991479873657227;
	setAttr ".wl[739].w[1]" 0.90477770566940308;
	setAttr ".wl[739].w[10]" 0.0091459751129150391;
	setAttr -s 3 ".wl[740].w";
	setAttr ".wl[740].w[0]" 0.64119195938110352;
	setAttr ".wl[740].w[1]" 0.88417148590087891;
	setAttr ".wl[740].w[10]" 0.018661975860595703;
	setAttr -s 3 ".wl[741].w";
	setAttr ".wl[741].w[0]" 0.56210315227508545;
	setAttr ".wl[741].w[1]" 0.87122702598571777;
	setAttr ".wl[741].w[10]" 0.065934896469116211;
	setAttr -s 3 ".wl[742].w";
	setAttr ".wl[742].w[0]" 0.38567674160003662;
	setAttr ".wl[742].w[1]" 0.84668028354644775;
	setAttr ".wl[742].w[10]" 0.13334089517593384;
	setAttr -s 3 ".wl[743].w";
	setAttr ".wl[743].w[0]" 0.17361652851104736;
	setAttr ".wl[743].w[1]" 0.81159067153930664;
	setAttr ".wl[743].w[10]" 0.19584852457046509;
	setAttr -s 3 ".wl[744].w";
	setAttr ".wl[744].w[0]" 0.026096761226654053;
	setAttr ".wl[744].w[1]" 0.76856756210327148;
	setAttr ".wl[744].w[10]" 0.22237139940261841;
	setAttr -s 2 ".wl[745].w";
	setAttr ".wl[745].w[1]" 0.64006125926971436;
	setAttr ".wl[745].w[10]" 0.20970523357391357;
	setAttr -s 2 ".wl[746].w";
	setAttr ".wl[746].w[1]" 0.53495746850967407;
	setAttr ".wl[746].w[10]" 0.25795727968215942;
	setAttr -s 2 ".wl[747].w";
	setAttr ".wl[747].w[1]" 0.48959213495254517;
	setAttr ".wl[747].w[10]" 0.34897410869598389;
	setAttr -s 2 ".wl[748].w";
	setAttr ".wl[748].w[1]" 0.51703047752380371;
	setAttr ".wl[748].w[10]" 0.44558429718017578;
	setAttr -s 2 ".wl[749].w";
	setAttr ".wl[749].w[1]" 0.62588858604431152;
	setAttr ".wl[749].w[10]" 0.49067908525466919;
	setAttr -s 2 ".wl[750].w";
	setAttr ".wl[750].w[1]" 0.67861795425415039;
	setAttr ".wl[750].w[10]" 0.44035059213638306;
	setAttr -s 2 ".wl[751].w";
	setAttr ".wl[751].w[1]" 0.67009115219116211;
	setAttr ".wl[751].w[10]" 0.2930600643157959;
	setAttr -s 2 ".wl[752].w";
	setAttr ".wl[752].w[1]" 0.6009063720703125;
	setAttr ".wl[752].w[10]" 0.11513257026672363;
	setAttr -s 2 ".wl[753].w";
	setAttr ".wl[753].w[1]" 0.5640527606010437;
	setAttr ".wl[753].w[10]" 0.0098760724067687988;
	setAttr ".wl[754].w[1]"  0.6021924614906311;
	setAttr -s 2 ".wl[755].w[0:1]"  1.8239021301269531e-005 0.69190311431884766;
	setAttr -s 2 ".wl[756].w[0:1]"  0.072980523109436035 0.8109670877456665;
	setAttr -s 2 ".wl[757].w[0:1]"  0.25892692804336548 0.8523482084274292;
	setAttr -s 2 ".wl[758].w[0:1]"  0.46743029356002808 0.87467604875564575;
	setAttr -s 3 ".wl[759].w";
	setAttr ".wl[759].w[0]" 0.6079677939414978;
	setAttr ".wl[759].w[1]" 0.88532173633575439;
	setAttr ".wl[759].w[10]" 0.00039529800415039063;
	setAttr -s 2 ".wl[760].w[4:5]"  0.1126638650894165 0.41370588541030884;
	setAttr -s 2 ".wl[761].w[4:5]"  0.070257306098937988 0.25613123178482056;
	setAttr -s 2 ".wl[762].w[4:5]"  0.052872419357299805 0.086557626724243164;
	setAttr -s 2 ".wl[763].w[4:5]"  0.05451589822769165 0.0059425830841064453;
	setAttr ".wl[764].w[4]"  0.075838446617126465;
	setAttr ".wl[765].w[4]"  0.12374663352966309;
	setAttr -s 2 ".wl[766].w[4:5]"  0.20681595802307129 0.00056242942810058594;
	setAttr -s 2 ".wl[767].w[4:5]"  0.32756006717681885 0.068691015243530273;
	setAttr -s 2 ".wl[768].w[4:5]"  0.47531676292419434 0.31198835372924805;
	setAttr -s 2 ".wl[769].w[4:5]"  0.62593954801559448 0.64449554681777954;
	setAttr -s 2 ".wl[770].w[4:5]"  0.75160074234008789 0.85434186458587646;
	setAttr -s 2 ".wl[771].w[4:5]"  0.83456969261169434 0.89500939846038818;
	setAttr -s 2 ".wl[772].w[4:5]"  0.87227267026901245 0.80667155981063843;
	setAttr -s 2 ".wl[773].w[4:5]"  0.86860114336013794 0.61267769336700439;
	setAttr -s 2 ".wl[774].w[4:5]"  0.82296812534332275 0.41172242164611816;
	setAttr -s 2 ".wl[775].w[4:5]"  0.73166579008102417 0.29444766044616699;
	setAttr -s 2 ".wl[776].w[4:5]"  0.59971380233764648 0.27419847249984741;
	setAttr -s 2 ".wl[777].w[4:5]"  0.44745838642120361 0.3297310471534729;
	setAttr -s 2 ".wl[778].w[4:5]"  0.30312991142272949 0.41836142539978027;
	setAttr -s 2 ".wl[779].w[4:5]"  0.18887662887573242 0.46771436929702759;
	setAttr -s 2 ".wl[780].w[2:3]"  0.98151683807373047 1;
	setAttr -s 2 ".wl[781].w[2:3]"  0.9928133487701416 1;
	setAttr -s 2 ".wl[782].w[2:3]"  0.99857532978057861 1;
	setAttr -s 2 ".wl[783].w[2:3]"  1 1;
	setAttr -s 2 ".wl[784].w[2:3]"  1 1;
	setAttr -s 2 ".wl[785].w[2:3]"  1 1;
	setAttr -s 2 ".wl[786].w[2:3]"  1 1;
	setAttr -s 2 ".wl[787].w[2:3]"  0.9999116063117981 1;
	setAttr -s 2 ".wl[788].w[2:3]"  0.99749124050140381 1;
	setAttr -s 2 ".wl[789].w[2:3]"  0.99023491144180298 1;
	setAttr -s 2 ".wl[790].w[2:3]"  0.97744345664978027 1;
	setAttr -s 2 ".wl[791].w[2:3]"  0.96039688587188721 0.99966156482696533;
	setAttr -s 2 ".wl[792].w[2:3]"  0.94198894500732422 0.99869811534881592;
	setAttr -s 2 ".wl[793].w[2:3]"  0.92581117153167725 0.9986339807510376;
	setAttr -s 2 ".wl[794].w[2:3]"  0.91513711214065552 0.99898004531860352;
	setAttr -s 2 ".wl[795].w[2:3]"  0.91213101148605347 0.99908149242401123;
	setAttr -s 2 ".wl[796].w[2:3]"  0.91740119457244873 0.99873363971710205;
	setAttr -s 2 ".wl[797].w[2:3]"  0.92988103628158569 0.99807733297348022;
	setAttr -s 2 ".wl[798].w[2:3]"  0.94703805446624756 0.99792444705963135;
	setAttr -s 2 ".wl[799].w[2:3]"  0.96541792154312134 0.99911481142044067;
	setAttr ".wl[800].w[4]"  0.75211417675018311;
	setAttr ".wl[801].w[4]"  0.68407917022705078;
	setAttr ".wl[802].w[4]"  0.64452183246612549;
	setAttr ".wl[803].w[4]"  0.63883858919143677;
	setAttr ".wl[804].w[4]"  0.66773450374603271;
	setAttr ".wl[805].w[4]"  0.72751182317733765;
	setAttr ".wl[806].w[4]"  0.80869591236114502;
	setAttr ".wl[807].w[4]"  0.89478397369384766;
	setAttr ".wl[808].w[4]"  0.96426630020141602;
	setAttr ".wl[809].w[4]"  0.99813747406005859;
	setAttr ".wl[810].w[4]"  1;
	setAttr ".wl[811].w[4]"  1;
	setAttr ".wl[812].w[4]"  1;
	setAttr ".wl[813].w[4]"  1;
	setAttr ".wl[814].w[4]"  1;
	setAttr ".wl[815].w[4]"  1;
	setAttr ".wl[816].w[4]"  1;
	setAttr ".wl[817].w[4]"  0.9796297550201416;
	setAttr ".wl[818].w[4]"  0.92000174522399902;
	setAttr ".wl[819].w[4]"  0.83692997694015503;
	setAttr -s 2 ".wl[820].w[1:2]"  0.0033898353576660156 0.99354648590087891;
	setAttr -s 2 ".wl[821].w[1:2]"  0.0034784078598022461 0.99965989589691162;
	setAttr -s 2 ".wl[822].w[1:2]"  0.0027124881744384766 1;
	setAttr -s 3 ".wl[823].w[1:3]"  0.0014629364013671875 1 0.0019915103912353516;
	setAttr -s 2 ".wl[824].w[2:3]"  1 0.0088956356048583984;
	setAttr -s 2 ".wl[825].w[2:3]"  1 0.01529461145401001;
	setAttr -s 2 ".wl[826].w[2:3]"  1 0.016141295433044434;
	setAttr -s 2 ".wl[827].w[2:3]"  1 0.01131361722946167;
	setAttr -s 2 ".wl[828].w[2:3]"  1 0.0048916935920715332;
	setAttr -s 2 ".wl[829].w[2:3]"  0.99995148181915283 0.00084340572357177734;
	setAttr ".wl[830].w[2]"  0.99527329206466675;
	setAttr ".wl[831].w[2]"  0.98346477746963501;
	setAttr ".wl[832].w[2]"  0.96725285053253174;
	setAttr ".wl[833].w[2]"  0.95087277889251709;
	setAttr ".wl[834].w[2]"  0.93860405683517456;
	setAttr ".wl[835].w[2]"  0.93357360363006592;
	setAttr ".wl[836].w[2]"  0.93703931570053101;
	setAttr -s 2 ".wl[837].w[1:2]"  0.00021457672119140625 0.9481358528137207;
	setAttr -s 2 ".wl[838].w[1:2]"  0.0012146234512329102 0.96404826641082764;
	setAttr -s 2 ".wl[839].w[1:2]"  0.0024892687797546387 0.98063623905181885;
	setAttr -s 2 ".wl[840].w[2:3]"  0.99756383895874023 1;
	setAttr -s 2 ".wl[841].w[2:3]"  1 1;
	setAttr -s 2 ".wl[842].w[2:3]"  1 1;
	setAttr -s 2 ".wl[843].w[2:3]"  1 1;
	setAttr -s 2 ".wl[844].w[2:3]"  1 1;
	setAttr -s 2 ".wl[845].w[2:3]"  1 1;
	setAttr -s 2 ".wl[846].w[2:3]"  1 1;
	setAttr -s 2 ".wl[847].w[2:3]"  1 1;
	setAttr -s 2 ".wl[848].w[2:3]"  1 1;
	setAttr -s 2 ".wl[849].w[2:3]"  0.99983358383178711 1;
	setAttr -s 2 ".wl[850].w[2:3]"  0.99598550796508789 1;
	setAttr -s 2 ".wl[851].w[2:3]"  0.98756885528564453 1;
	setAttr -s 2 ".wl[852].w[2:3]"  0.97661817073822021 1;
	setAttr -s 2 ".wl[853].w[2:3]"  0.96606874465942383 1;
	setAttr -s 2 ".wl[854].w[2:3]"  0.95877218246459961 1;
	setAttr -s 2 ".wl[855].w[2:3]"  0.95667731761932373 1;
	setAttr -s 2 ".wl[856].w[2:3]"  0.96033912897109985 1;
	setAttr -s 2 ".wl[857].w[2:3]"  0.96878612041473389 1;
	setAttr -s 2 ".wl[858].w[2:3]"  0.97975420951843262 1;
	setAttr -s 2 ".wl[859].w[2:3]"  0.99027466773986816 1;
	setAttr ".wl[860].w[4]"  0.85344094038009644;
	setAttr ".wl[861].w[4]"  0.91892457008361816;
	setAttr ".wl[862].w[4]"  0.97430062294006348;
	setAttr ".wl[863].w[4]"  0.99967169761657715;
	setAttr ".wl[864].w[4]"  1;
	setAttr ".wl[865].w[4]"  1;
	setAttr ".wl[866].w[4]"  1;
	setAttr ".wl[867].w[4]"  1;
	setAttr ".wl[868].w[4]"  1;
	setAttr ".wl[869].w[4]"  1;
	setAttr ".wl[870].w[4]"  1;
	setAttr ".wl[871].w[4]"  1;
	setAttr ".wl[872].w[4]"  0.99578547477722168;
	setAttr ".wl[873].w[4]"  0.9588627815246582;
	setAttr ".wl[874].w[4]"  0.8978736400604248;
	setAttr ".wl[875].w[4]"  0.83337253332138062;
	setAttr ".wl[876].w[4]"  0.78295683860778809;
	setAttr ".wl[877].w[4]"  0.75783830881118774;
	setAttr ".wl[878].w[4]"  0.76280903816223145;
	setAttr ".wl[879].w[4]"  0.79694420099258423;
	setAttr -s 2 ".wl[880].w[1:2]"  0.0042682886123657227 1;
	setAttr -s 2 ".wl[881].w[1:2]"  0.0033186674118041992 0.99965059757232666;
	setAttr -s 2 ".wl[882].w[1:2]"  0.0019057989120483398 0.99516558647155762;
	setAttr -s 2 ".wl[883].w[1:2]"  0.00062030553817749023 0.98831534385681152;
	setAttr ".wl[884].w[2]"  0.98267835378646851;
	setAttr ".wl[885].w[2]"  0.98080885410308838;
	setAttr -s 2 ".wl[886].w[2:3]"  0.98350679874420166 2.3484230041503906e-005;
	setAttr -s 2 ".wl[887].w[2:3]"  0.98961085081100464 0.00017350912094116211;
	setAttr -s 2 ".wl[888].w[2:3]"  0.99630320072174072 0.00047081708908081055;
	setAttr -s 2 ".wl[889].w[2:3]"  0.99993479251861572 0.0012857913970947266;
	setAttr -s 2 ".wl[890].w[2:3]"  1 0.0035321712493896484;
	setAttr -s 2 ".wl[891].w[2:3]"  1 0.0085046291351318359;
	setAttr -s 2 ".wl[892].w[2:3]"  1 0.016688346862792969;
	setAttr -s 2 ".wl[893].w[2:3]"  1 0.026077449321746826;
	setAttr -s 2 ".wl[894].w[2:3]"  1 0.032163023948669434;
	setAttr -s 2 ".wl[895].w[2:3]"  1 0.030841708183288574;
	setAttr -s 2 ".wl[896].w[2:3]"  1 0.022120356559753418;
	setAttr -s 3 ".wl[897].w[1:3]"  0.0021908879280090332 1 0.010733842849731445;
	setAttr -s 3 ".wl[898].w[1:3]"  0.003556668758392334 1 0.0025272369384765625;
	setAttr -s 3 ".wl[899].w[1:3]"  0.0043603181838989258 1 2.384185791015625e-007;
	setAttr -s 2 ".wl[900].w[3:4]"  0.74800914525985718 0.23997890949249268;
	setAttr -s 2 ".wl[901].w[3:4]"  0.78484952449798584 0.32641518115997314;
	setAttr -s 2 ".wl[902].w[3:4]"  0.82698941230773926 0.43651831150054932;
	setAttr -s 2 ".wl[903].w[3:4]"  0.86523878574371338 0.55786824226379395;
	setAttr -s 2 ".wl[904].w[3:4]"  0.89174461364746094 0.67249029874801636;
	setAttr -s 2 ".wl[905].w[3:4]"  0.90250504016876221 0.76353782415390015;
	setAttr -s 2 ".wl[906].w[3:4]"  0.89669179916381836 0.82157456874847412;
	setAttr -s 2 ".wl[907].w[3:4]"  0.8753211498260498 0.8450046181678772;
	setAttr -s 2 ".wl[908].w[3:4]"  0.84194868803024292 0.8348691463470459;
	setAttr -s 2 ".wl[909].w[3:4]"  0.80349397659301758 0.79056602716445923;
	setAttr -s 2 ".wl[910].w[3:4]"  0.7683413028717041 0.71190053224563599;
	setAttr -s 2 ".wl[911].w[3:4]"  0.74271440505981445 0.60487020015716553;
	setAttr -s 2 ".wl[912].w[3:4]"  0.72831416130065918 0.48391330242156982;
	setAttr -s 2 ".wl[913].w[3:4]"  0.72253358364105225 0.36747777462005615;
	setAttr -s 2 ".wl[914].w[3:4]"  0.72059059143066406 0.27075302600860596;
	setAttr -s 2 ".wl[915].w[3:4]"  0.71827602386474609 0.20129120349884033;
	setAttr -s 2 ".wl[916].w[3:4]"  0.7141263484954834 0.15966916084289551;
	setAttr -s 2 ".wl[917].w[3:4]"  0.71023178100585938 0.14329862594604492;
	setAttr -s 2 ".wl[918].w[3:4]"  0.71141582727432251 0.15035605430603027;
	setAttr -s 2 ".wl[919].w[3:4]"  0.72300684452056885 0.18169200420379639;
	setAttr -s 2 ".wl[920].w[3:4]"  0.79862523078918457 0.36187434196472168;
	setAttr -s 2 ".wl[921].w[3:4]"  0.77613532543182373 0.29636490345001221;
	setAttr -s 2 ".wl[922].w[3:4]"  0.76479125022888184 0.25959455966949463;
	setAttr -s 2 ".wl[923].w[3:4]"  0.76245158910751343 0.2511259913444519;
	setAttr -s 2 ".wl[924].w[3:4]"  0.76489138603210449 0.27065831422805786;
	setAttr -s 2 ".wl[925].w[3:4]"  0.76819944381713867 0.31876742839813232;
	setAttr -s 2 ".wl[926].w[3:4]"  0.77065742015838623 0.39525848627090454;
	setAttr -s 2 ".wl[927].w[3:4]"  0.77341735363006592 0.49599605798721313;
	setAttr -s 2 ".wl[928].w[3:4]"  0.77982074022293091 0.61042749881744385;
	setAttr -s 2 ".wl[929].w[3:4]"  0.79357534646987915 0.72244328260421753;
	setAttr -s 2 ".wl[930].w[3:4]"  0.81646215915679932 0.81557643413543701;
	setAttr -s 2 ".wl[931].w[3:4]"  0.84664332866668701 0.87969422340393066;
	setAttr -s 2 ".wl[932].w[3:4]"  0.87871932983398438 0.91366291046142578;
	setAttr -s 2 ".wl[933].w[3:4]"  0.90591037273406982 0.92115867137908936;
	setAttr -s 2 ".wl[934].w[3:4]"  0.92299783229827881 0.90366566181182861;
	setAttr -s 2 ".wl[935].w[3:4]"  0.92754518985748291 0.85815203189849854;
	setAttr -s 2 ".wl[936].w[3:4]"  0.91888076066970825 0.78199130296707153;
	setAttr -s 2 ".wl[937].w[3:4]"  0.89742475748062134 0.67973041534423828;
	setAttr -s 2 ".wl[938].w[3:4]"  0.86594462394714355 0.56466132402420044;
	setAttr -s 2 ".wl[939].w[3:4]"  0.83048719167709351 0.45393592119216919;
	setAttr -s 3 ".wl[940].w";
	setAttr ".wl[940].w[1]" 1;
	setAttr ".wl[940].w[10]" 0.97005999088287354;
	setAttr ".wl[940].w[11]" 1;
	setAttr -s 3 ".wl[941].w";
	setAttr ".wl[941].w[1]" 1;
	setAttr ".wl[941].w[10]" 0.96303558349609375;
	setAttr ".wl[941].w[11]" 0.99999940395355225;
	setAttr ".wl[942].w[1]"  0.36998379230499268;
	setAttr ".wl[943].w[1]"  0.38056600093841553;
	setAttr ".wl[944].w[1]"  0.25555384159088135;
	setAttr ".wl[945].w[1]"  0.2652289867401123;
	setAttr -s 3 ".wl[946].w";
	setAttr ".wl[946].w[1]" 1;
	setAttr ".wl[946].w[10]" 0.95561045408248901;
	setAttr ".wl[946].w[11]" 1;
	setAttr -s 3 ".wl[947].w";
	setAttr ".wl[947].w[1]" 1;
	setAttr ".wl[947].w[10]" 0.94647109508514404;
	setAttr ".wl[947].w[11]" 1;
	setAttr -s 3 ".wl[948].w";
	setAttr ".wl[948].w[1]" 0.98166710138320923;
	setAttr ".wl[948].w[10]" 0.62537163496017456;
	setAttr ".wl[948].w[11]" 0.85598123073577881;
	setAttr -s 3 ".wl[949].w";
	setAttr ".wl[949].w[1]" 0.98114889860153198;
	setAttr ".wl[949].w[10]" 0.61033403873443604;
	setAttr ".wl[949].w[11]" 0.85768914222717285;
	setAttr -s 3 ".wl[950].w";
	setAttr ".wl[950].w[1]" 0.93151634931564331;
	setAttr ".wl[950].w[10]" 0.53777527809143066;
	setAttr ".wl[950].w[11]" 0.85313475131988525;
	setAttr -s 3 ".wl[951].w";
	setAttr ".wl[951].w[1]" 0.9324154257774353;
	setAttr ".wl[951].w[10]" 0.55420714616775513;
	setAttr ".wl[951].w[11]" 0.85086381435394287;
	setAttr -s 3 ".wl[952].w";
	setAttr ".wl[952].w[1]" 0.80936014652252197;
	setAttr ".wl[952].w[10]" 0.21893751621246338;
	setAttr ".wl[952].w[11]" 0.54050314426422119;
	setAttr -s 3 ".wl[953].w";
	setAttr ".wl[953].w[1]" 0.80695956945419312;
	setAttr ".wl[953].w[10]" 0.20666670799255371;
	setAttr ".wl[953].w[11]" 0.55005472898483276;
	setAttr -s 3 ".wl[954].w";
	setAttr ".wl[954].w[1]" 0.891257643699646;
	setAttr ".wl[954].w[10]" 0.2675437331199646;
	setAttr ".wl[954].w[11]" 0.55950003862380981;
	setAttr -s 3 ".wl[955].w";
	setAttr ".wl[955].w[1]" 0.89326596260070801;
	setAttr ".wl[955].w[10]" 0.28004062175750732;
	setAttr ".wl[955].w[11]" 0.55057847499847412;
	setAttr -s 3 ".wl[956].w";
	setAttr ".wl[956].w[1]" 0.66281747817993164;
	setAttr ".wl[956].w[10]" 0.020583450794219971;
	setAttr ".wl[956].w[11]" 0.20060300827026367;
	setAttr -s 3 ".wl[957].w";
	setAttr ".wl[957].w[1]" 0.65674620866775513;
	setAttr ".wl[957].w[10]" 0.016478896141052246;
	setAttr ".wl[957].w[11]" 0.2068641185760498;
	setAttr -s 3 ".wl[958].w";
	setAttr ".wl[958].w[1]" 0.75450664758682251;
	setAttr ".wl[958].w[10]" 0.039163291454315186;
	setAttr ".wl[958].w[11]" 0.21247351169586182;
	setAttr -s 3 ".wl[959].w";
	setAttr ".wl[959].w[1]" 0.76028329133987427;
	setAttr ".wl[959].w[10]" 0.044918835163116455;
	setAttr ".wl[959].w[11]" 0.20659124851226807;
	setAttr -s 2 ".wl[960].w";
	setAttr ".wl[960].w[1]" 0.52110159397125244;
	setAttr ".wl[960].w[11]" 0.012175798416137695;
	setAttr -s 2 ".wl[961].w";
	setAttr ".wl[961].w[1]" 0.51960873603820801;
	setAttr ".wl[961].w[11]" 0.019041836261749268;
	setAttr -s 2 ".wl[962].w";
	setAttr ".wl[962].w[1]" 0.61458158493041992;
	setAttr ".wl[962].w[11]" 0.019794821739196777;
	setAttr -s 2 ".wl[963].w";
	setAttr ".wl[963].w[1]" 0.61609780788421631;
	setAttr ".wl[963].w[11]" 0.012888193130493164;
	setAttr ".wl[964].w[1]"  0.33739852905273438;
	setAttr ".wl[965].w[1]"  0.33838683366775513;
	setAttr ".wl[966].w[1]"  0.42067193984985352;
	setAttr ".wl[967].w[1]"  0.41960501670837402;
	setAttr ".wl[968].w[1]"  0.22093307971954346;
	setAttr ".wl[969].w[1]"  0.22841548919677734;
	setAttr ".wl[970].w[1]"  0.33736765384674072;
	setAttr ".wl[971].w[1]"  0.32867789268493652;
	setAttr ".wl[972].w[1]"  0.21182310581207275;
	setAttr ".wl[973].w[1]"  0.2202686071395874;
	setAttr ".wl[974].w[1]"  0.34017151594161987;
	setAttr ".wl[975].w[1]"  0.33042371273040771;
	setAttr ".wl[976].w[1]"  0.26099288463592529;
	setAttr ".wl[977].w[1]"  0.37597876787185669;
	setAttr ".wl[978].w[1]"  0.32156378030776978;
	setAttr ".wl[979].w[1]"  0.31135690212249756;
	setAttr ".wl[980].w[1]"  0.26326251029968262;
	setAttr ".wl[981].w[1]"  0.3784492015838623;
	setAttr ".wl[982].w[1]"  0.25842243432998657;
	setAttr ".wl[983].w[1]"  0.37315642833709717;
	setAttr ".wl[984].w[1]"  0.28304684162139893;
	setAttr ".wl[985].w[1]"  0.29300689697265625;
	setAttr ".wl[986].w[1]"  0.34037351608276367;
	setAttr ".wl[987].w[1]"  0.35078728199005127;
	setAttr ".wl[988].w[1]"  0.34496885538101196;
	setAttr ".wl[989].w[1]"  0.34280717372894287;
	setAttr ".wl[990].w[1]"  0.49981951713562012;
	setAttr ".wl[991].w[1]"  0.50373339653015137;
	setAttr ".wl[992].w[1]"  0.33748912811279297;
	setAttr ".wl[993].w[1]"  0.49003380537033081;
	setAttr ".wl[994].w[1]"  0.36958575248718262;
	setAttr ".wl[995].w[1]"  0.3403136134147644;
	setAttr ".wl[996].w[1]"  0.33696770668029785;
	setAttr ".wl[997].w[1]"  0.38813126087188721;
	setAttr ".wl[998].w[1]"  0.39196908473968506;
	setAttr ".wl[999].w[1]"  0.3407214879989624;
	setAttr ".wl[1000].w[1]"  0.31298381090164185;
	setAttr ".wl[1001].w[1]"  0.36369079351425171;
	setAttr ".wl[1002].w[1]"  0.31162345409393311;
	setAttr ".wl[1003].w[1]"  0.28362381458282471;
	setAttr ".wl[1004].w[1]"  0.35681372880935669;
	setAttr ".wl[1005].w[1]"  0.30638885498046875;
	setAttr ".wl[1006].w[1]"  0.48271453380584717;
	setAttr ".wl[1007].w[1]"  0.33433663845062256;
	setAttr ".wl[1008].w[1]"  0.53548306226730347;
	setAttr ".wl[1009].w[1]"  0.54283154010772705;
	setAttr ".wl[1010].w[1]"  0.39932829141616821;
	setAttr ".wl[1011].w[1]"  0.55263710021972656;
	setAttr ".wl[1012].w[1]"  0.55650317668914795;
	setAttr -s 3 ".wl[1013].w";
	setAttr ".wl[1013].w[1]" 1;
	setAttr ".wl[1013].w[10]" 0.94204175472259521;
	setAttr ".wl[1013].w[11]" 0.98550271987915039;
	setAttr -s 3 ".wl[1014].w";
	setAttr ".wl[1014].w[1]" 1;
	setAttr ".wl[1014].w[10]" 0.96167266368865967;
	setAttr ".wl[1014].w[11]" 0.99520355463027954;
	setAttr ".wl[1015].w[1]"  0.55023622512817383;
	setAttr ".wl[1016].w[1]"  0.54209655523300171;
	setAttr ".wl[1017].w[1]"  0.39436274766921997;
	setAttr ".wl[1018].w[1]"  0.3862006664276123;
	setAttr -s 3 ".wl[1019].w";
	setAttr ".wl[1019].w[1]" 1;
	setAttr ".wl[1019].w[10]" 0.89938092231750488;
	setAttr ".wl[1019].w[11]" 0.99528360366821289;
	setAttr -s 3 ".wl[1020].w";
	setAttr ".wl[1020].w[1]" 1;
	setAttr ".wl[1020].w[10]" 0.92482161521911621;
	setAttr ".wl[1020].w[11]" 0.99985504150390625;
	setAttr -s 3 ".wl[1021].w";
	setAttr ".wl[1021].w[1]" 0.96544444561004639;
	setAttr ".wl[1021].w[10]" 0.51933640241622925;
	setAttr ".wl[1021].w[11]" 0.79242336750030518;
	setAttr -s 3 ".wl[1022].w";
	setAttr ".wl[1022].w[1]" 0.96876132488250732;
	setAttr ".wl[1022].w[10]" 0.55527377128601074;
	setAttr ".wl[1022].w[11]" 0.81164467334747314;
	setAttr -s 3 ".wl[1023].w";
	setAttr ".wl[1023].w[1]" 0.86791592836380005;
	setAttr ".wl[1023].w[10]" 0.44171619415283203;
	setAttr ".wl[1023].w[11]" 0.80059289932250977;
	setAttr -s 3 ".wl[1024].w";
	setAttr ".wl[1024].w[1]" 0.86219322681427002;
	setAttr ".wl[1024].w[10]" 0.40705275535583496;
	setAttr ".wl[1024].w[11]" 0.78023648262023926;
	setAttr -s 3 ".wl[1025].w";
	setAttr ".wl[1025].w[1]" 0.68082058429718018;
	setAttr ".wl[1025].w[10]" 0.11132133007049561;
	setAttr ".wl[1025].w[11]" 0.46480566263198853;
	setAttr -s 3 ".wl[1026].w";
	setAttr ".wl[1026].w[1]" 0.68657344579696655;
	setAttr ".wl[1026].w[10]" 0.13039863109588623;
	setAttr ".wl[1026].w[11]" 0.46853595972061157;
	setAttr -s 3 ".wl[1027].w";
	setAttr ".wl[1027].w[1]" 0.84001922607421875;
	setAttr ".wl[1027].w[10]" 0.21402192115783691;
	setAttr ".wl[1027].w[11]" 0.48839002847671509;
	setAttr -s 3 ".wl[1028].w";
	setAttr ".wl[1028].w[1]" 0.83503663539886475;
	setAttr ".wl[1028].w[10]" 0.19009822607040405;
	setAttr ".wl[1028].w[11]" 0.48553431034088135;
	setAttr -s 3 ".wl[1029].w";
	setAttr ".wl[1029].w[1]" 0.53271126747131348;
	setAttr ".wl[1029].w[10]" 0.00094890594482421875;
	setAttr ".wl[1029].w[11]" 0.14520466327667236;
	setAttr -s 3 ".wl[1030].w";
	setAttr ".wl[1030].w[1]" 0.53508567810058594;
	setAttr ".wl[1030].w[10]" 0.0028567910194396973;
	setAttr ".wl[1030].w[11]" 0.13140189647674561;
	setAttr -s 3 ".wl[1031].w";
	setAttr ".wl[1031].w[1]" 0.69570571184158325;
	setAttr ".wl[1031].w[10]" 0.026478767395019531;
	setAttr ".wl[1031].w[11]" 0.14037442207336426;
	setAttr -s 3 ".wl[1032].w";
	setAttr ".wl[1032].w[1]" 0.69334489107131958;
	setAttr ".wl[1032].w[10]" 0.019661426544189453;
	setAttr ".wl[1032].w[11]" 0.15519285202026367;
	setAttr -s 2 ".wl[1033].w";
	setAttr ".wl[1033].w[1]" 0.41798651218414307;
	setAttr ".wl[1033].w[11]" 0.0042685866355895996;
	setAttr -s 2 ".wl[1034].w";
	setAttr ".wl[1034].w[1]" 0.42451149225234985;
	setAttr ".wl[1034].w[11]" 0.0023916959762573242;
	setAttr -s 2 ".wl[1035].w";
	setAttr ".wl[1035].w[1]" 0.57052123546600342;
	setAttr ".wl[1035].w[11]" 0.0026551485061645508;
	setAttr -s 2 ".wl[1036].w";
	setAttr ".wl[1036].w[1]" 0.56355452537536621;
	setAttr ".wl[1036].w[11]" 0.0047159194946289063;
	setAttr ".wl[1037].w[1]"  0.2630082368850708;
	setAttr ".wl[1038].w[1]"  0.2705693244934082;
	setAttr ".wl[1039].w[1]"  0.39697098731994629;
	setAttr ".wl[1040].w[1]"  0.39720451831817627;
	setAttr ".wl[1041].w[1]"  0.22957921028137207;
	setAttr ".wl[1042].w[1]"  0.22563660144805908;
	setAttr ".wl[1043].w[1]"  0.39330410957336426;
	setAttr ".wl[1044].w[1]"  0.39826524257659912;
	setAttr ".wl[1045].w[1]"  0.28293412923812866;
	setAttr ".wl[1046].w[1]"  0.27666908502578735;
	setAttr ".wl[1047].w[1]"  0.45392334461212158;
	setAttr ".wl[1048].w[1]"  0.4609527587890625;
	setAttr ".wl[1049].w[1]"  0.39095139503479004;
	setAttr ".wl[1050].w[1]"  0.54689228534698486;
	setAttr ".wl[1051].w[1]"  0.46396166086196899;
	setAttr ".wl[1052].w[1]"  0.47220849990844727;
	setAttr ".wl[1053].w[1]"  0.38874346017837524;
	setAttr ".wl[1054].w[1]"  0.54467648267745972;
	setAttr ".wl[1055].w[1]"  0.39282476902008057;
	setAttr ".wl[1056].w[1]"  0.54874509572982788;
	setAttr ".wl[1057].w[1]"  0.43314111232757568;
	setAttr ".wl[1058].w[1]"  0.4249119758605957;
	setAttr ".wl[1059].w[1]"  0.51131939888000488;
	setAttr ".wl[1060].w[1]"  0.50310301780700684;
	setAttr ".wl[1061].w[1]"  0.51098400354385376;
	setAttr ".wl[1062].w[1]"  0.51369589567184448;
	setAttr -s 2 ".wl[1063].w[0:1]"  0.033194661140441895 0.73706817626953125;
	setAttr -s 2 ".wl[1064].w[0:1]"  0.03067934513092041 0.73382341861724854;
	setAttr ".wl[1065].w[1]"  0.51806461811065674;
	setAttr -s 2 ".wl[1066].w[0:1]"  0.038503408432006836 0.74089133739471436;
	setAttr ".wl[1067].w[1]"  0.55445075035095215;
	setAttr ".wl[1068].w[1]"  0.51605594158172607;
	setAttr ".wl[1069].w[1]"  0.56253135204315186;
	setAttr -s 2 ".wl[1070].w[0:1]"  1.239776611328125e-005 0.62369388341903687;
	setAttr ".wl[1071].w[1]"  0.62032169103622437;
	setAttr ".wl[1072].w[1]"  0.55608671903610229;
	setAttr ".wl[1073].w[1]"  0.5453762412071228;
	setAttr ".wl[1074].w[1]"  0.61134839057922363;
	setAttr ".wl[1075].w[1]"  0.47744178771972656;
	setAttr ".wl[1076].w[1]"  0.43883895874023438;
	setAttr ".wl[1077].w[1]"  0.61437386274337769;
	setAttr ".wl[1078].w[1]"  0.54850518703460693;
	setAttr -s 2 ".wl[1079].w[0:1]"  0.039593338966369629 0.74100017547607422;
	setAttr ".wl[1080].w[1]"  0.51972281932830811;
	setAttr -s 2 ".wl[1081].w[0:1]"  0.0770263671875 0.79113465547561646;
	setAttr -s 2 ".wl[1082].w[0:1]"  0.075491011142730713 0.79103094339370728;
	setAttr ".wl[1083].w[1]"  0.59240090847015381;
	setAttr -s 2 ".wl[1084].w[0:1]"  0.067959904670715332 0.78743791580200195;
	setAttr -s 2 ".wl[1085].w[0:1]"  0.064305305480957031 0.78433334827423096;
	setAttr -s 4 ".wl[1086].w";
	setAttr ".wl[1086].w[0]" 0.9885261058807373;
	setAttr ".wl[1086].w[18]" 0.91582262516021729;
	setAttr ".wl[1086].w[19]" 0.97961509227752686;
	setAttr ".wl[1086].w[21]" 0.35191142559051514;
	setAttr -s 4 ".wl[1087].w";
	setAttr ".wl[1087].w[0]" 1;
	setAttr ".wl[1087].w[18]" 0.055633783340454102;
	setAttr ".wl[1087].w[21]" 1;
	setAttr ".wl[1087].w[22]" 1;
	setAttr ".wl[1088].w[1]"  0.48587530851364136;
	setAttr ".wl[1089].w[1]"  0.58340853452682495;
	setAttr -s 3 ".wl[1090].w";
	setAttr ".wl[1090].w[1]" 0.40127861499786377;
	setAttr ".wl[1090].w[10]" 0.18534129858016968;
	setAttr ".wl[1090].w[13]" 0.45441740751266479;
	setAttr -s 3 ".wl[1091].w";
	setAttr ".wl[1091].w[1]" 0.49485498666763306;
	setAttr ".wl[1091].w[10]" 0.043559551239013672;
	setAttr ".wl[1091].w[13]" 0.57150936126708984;
	setAttr -s 4 ".wl[1092].w";
	setAttr ".wl[1092].w[0]" 0.92775678634643555;
	setAttr ".wl[1092].w[18]" 0.69014376401901245;
	setAttr ".wl[1092].w[19]" 0.9813416600227356;
	setAttr ".wl[1092].w[21]" 0.078530550003051758;
	setAttr -s 3 ".wl[1093].w";
	setAttr ".wl[1093].w[0]" 0.97205162048339844;
	setAttr ".wl[1093].w[21]" 1;
	setAttr ".wl[1093].w[22]" 1;
	setAttr -s 4 ".wl[1094].w";
	setAttr ".wl[1094].w[0]" 0.15520423650741577;
	setAttr ".wl[1094].w[18]" 1;
	setAttr ".wl[1094].w[19]" 1;
	setAttr ".wl[1094].w[21]" 0.48092186450958252;
	setAttr -s 5 ".wl[1095].w";
	setAttr ".wl[1095].w[0]" 0.2940400242805481;
	setAttr ".wl[1095].w[18]" 1;
	setAttr ".wl[1095].w[19]" 0.71546292304992676;
	setAttr ".wl[1095].w[21]" 0.99020898342132568;
	setAttr ".wl[1095].w[22]" 0.050575852394104004;
	setAttr -s 4 ".wl[1096].w";
	setAttr ".wl[1096].w[0]" 1;
	setAttr ".wl[1096].w[18]" 1;
	setAttr ".wl[1096].w[19]" 0.99645400047302246;
	setAttr ".wl[1096].w[21]" 0.48267638683319092;
	setAttr -s 4 ".wl[1097].w";
	setAttr ".wl[1097].w[0]" 1;
	setAttr ".wl[1097].w[18]" 1;
	setAttr ".wl[1097].w[21]" 1;
	setAttr ".wl[1097].w[22]" 0.1605459451675415;
	setAttr -s 4 ".wl[1098].w";
	setAttr ".wl[1098].w[0]" 1;
	setAttr ".wl[1098].w[18]" 1;
	setAttr ".wl[1098].w[19]" 0.99735110998153687;
	setAttr ".wl[1098].w[21]" 0.32876729965209961;
	setAttr -s 5 ".wl[1099].w";
	setAttr ".wl[1099].w[0]" 1;
	setAttr ".wl[1099].w[18]" 1;
	setAttr ".wl[1099].w[19]" 0.0014285445213317871;
	setAttr ".wl[1099].w[21]" 1;
	setAttr ".wl[1099].w[22]" 0.11442434787750244;
	setAttr -s 4 ".wl[1100].w";
	setAttr ".wl[1100].w[0]" 0.13605523109436035;
	setAttr ".wl[1100].w[18]" 1;
	setAttr ".wl[1100].w[19]" 1;
	setAttr ".wl[1100].w[21]" 0.39205247163772583;
	setAttr -s 5 ".wl[1101].w";
	setAttr ".wl[1101].w[0]" 0.26805007457733154;
	setAttr ".wl[1101].w[18]" 1;
	setAttr ".wl[1101].w[19]" 0.74373555183410645;
	setAttr ".wl[1101].w[21]" 0.9655609130859375;
	setAttr ".wl[1101].w[22]" 0.034114241600036621;
	setAttr -s 2 ".wl[1102].w[8:9]"  0.14072239398956299 1;
	setAttr -s 2 ".wl[1103].w[8:9]"  0.097038030624389648 1;
	setAttr -s 2 ".wl[1104].w[8:9]"  1 1;
	setAttr -s 2 ".wl[1105].w[8:9]"  1 1;
	setAttr -s 2 ".wl[1106].w[8:9]"  1 1;
	setAttr -s 2 ".wl[1107].w[8:9]"  1 1;
	setAttr -s 2 ".wl[1108].w[8:9]"  0.11861824989318848 1;
	setAttr -s 2 ".wl[1109].w[8:9]"  0.07885277271270752 1;
	setAttr ".wl[1110].w[9]"  1;
	setAttr ".wl[1111].w[9]"  1;
	setAttr -s 2 ".wl[1112].w[8:9]"  0.18291389942169189 1;
	setAttr -s 2 ".wl[1113].w[8:9]"  0.18662333488464355 1;
	setAttr -s 2 ".wl[1114].w[8:9]"  0.15850573778152466 1;
	setAttr -s 2 ".wl[1115].w[8:9]"  0.16197007894515991 1;
	setAttr ".wl[1116].w[9]"  1;
	setAttr ".wl[1117].w[9]"  1;
	setAttr -s 2 ".wl[1118].w[4:5]"  0.32019150257110596 1;
	setAttr -s 2 ".wl[1119].w[4:5]"  0.29426556825637817 1;
	setAttr -s 2 ".wl[1120].w[4:5]"  1 0.99321407079696655;
	setAttr -s 2 ".wl[1121].w[4:5]"  1 1;
	setAttr -s 2 ".wl[1122].w[4:5]"  1 0.94180488586425781;
	setAttr -s 2 ".wl[1123].w[4:5]"  1 1;
	setAttr -s 2 ".wl[1124].w[4:5]"  0.27025055885314941 1;
	setAttr -s 2 ".wl[1125].w[4:5]"  0.24617087841033936 1;
	setAttr ".wl[1126].w[19]"  1;
	setAttr -s 2 ".wl[1127].w";
	setAttr ".wl[1127].w[19]" 1;
	setAttr ".wl[1127].w[22]" 0.00092595815658569336;
	setAttr -s 4 ".wl[1128].w";
	setAttr ".wl[1128].w[0]" 0.15266120433807373;
	setAttr ".wl[1128].w[18]" 1;
	setAttr ".wl[1128].w[19]" 1;
	setAttr ".wl[1128].w[21]" 0.48134809732437134;
	setAttr -s 5 ".wl[1129].w";
	setAttr ".wl[1129].w[0]" 0.28582841157913208;
	setAttr ".wl[1129].w[18]" 1;
	setAttr ".wl[1129].w[19]" 0.68609464168548584;
	setAttr ".wl[1129].w[21]" 0.99190384149551392;
	setAttr ".wl[1129].w[22]" 0.061458468437194824;
	setAttr -s 4 ".wl[1130].w";
	setAttr ".wl[1130].w[0]" 0.13347578048706055;
	setAttr ".wl[1130].w[18]" 1;
	setAttr ".wl[1130].w[19]" 1;
	setAttr ".wl[1130].w[21]" 0.38974571228027344;
	setAttr -s 5 ".wl[1131].w";
	setAttr ".wl[1131].w[0]" 0.25989186763763428;
	setAttr ".wl[1131].w[18]" 1;
	setAttr ".wl[1131].w[19]" 0.71735835075378418;
	setAttr ".wl[1131].w[21]" 0.96810877323150635;
	setAttr ".wl[1131].w[22]" 0.042343795299530029;
	setAttr ".wl[1132].w[19]"  1;
	setAttr -s 2 ".wl[1133].w";
	setAttr ".wl[1133].w[19]" 1;
	setAttr ".wl[1133].w[22]" 2.1815299987792969e-005;
	setAttr -s 3 ".wl[1134].w";
	setAttr ".wl[1134].w[19]" 1;
	setAttr ".wl[1134].w[20]" 0.98992013931274414;
	setAttr ".wl[1134].w[22]" 0.00017917156219482422;
	setAttr -s 2 ".wl[1135].w[19:20]"  1 1;
	setAttr -s 2 ".wl[1136].w[19:20]"  1 0.99794340133666992;
	setAttr -s 2 ".wl[1137].w[19:20]"  1 1;
	setAttr -s 2 ".wl[1138].w[19:20]"  0.99984365701675415 0.93390011787414551;
	setAttr -s 2 ".wl[1139].w[19:20]"  1 1;
	setAttr -s 3 ".wl[1140].w";
	setAttr ".wl[1140].w[19]" 0.99993163347244263;
	setAttr ".wl[1140].w[20]" 0.90752410888671875;
	setAttr ".wl[1140].w[22]" 6.3657760620117188e-005;
	setAttr -s 2 ".wl[1141].w[19:20]"  1 1;
	setAttr -s 4 ".wl[1142].w";
	setAttr ".wl[1142].w[0]" 1;
	setAttr ".wl[1142].w[18]" 0.57136327028274536;
	setAttr ".wl[1142].w[21]" 1;
	setAttr ".wl[1142].w[22]" 0.93589496612548828;
	setAttr -s 4 ".wl[1143].w";
	setAttr ".wl[1143].w[0]" 1;
	setAttr ".wl[1143].w[18]" 1;
	setAttr ".wl[1143].w[19]" 0.93914258480072021;
	setAttr ".wl[1143].w[21]" 0.73400378227233887;
	setAttr -s 3 ".wl[1144].w";
	setAttr ".wl[1144].w[0]" 0.96270400285720825;
	setAttr ".wl[1144].w[21]" 1;
	setAttr ".wl[1144].w[22]" 1;
	setAttr -s 4 ".wl[1145].w";
	setAttr ".wl[1145].w[0]" 0.91421210765838623;
	setAttr ".wl[1145].w[18]" 0.65956097841262817;
	setAttr ".wl[1145].w[19]" 0.97909194231033325;
	setAttr ".wl[1145].w[21]" 0.063286900520324707;
	setAttr -s 4 ".wl[1146].w";
	setAttr ".wl[1146].w[0]" 0.9996488094329834;
	setAttr ".wl[1146].w[18]" 0.040205478668212891;
	setAttr ".wl[1146].w[21]" 1;
	setAttr ".wl[1146].w[22]" 1;
	setAttr -s 4 ".wl[1147].w";
	setAttr ".wl[1147].w[0]" 0.98259925842285156;
	setAttr ".wl[1147].w[18]" 0.89487063884735107;
	setAttr ".wl[1147].w[19]" 0.97833061218261719;
	setAttr ".wl[1147].w[21]" 0.32783800363540649;
	setAttr -s 4 ".wl[1148].w";
	setAttr ".wl[1148].w[0]" 1;
	setAttr ".wl[1148].w[18]" 0.82132232189178467;
	setAttr ".wl[1148].w[21]" 1;
	setAttr ".wl[1148].w[22]" 0.97735649347305298;
	setAttr -s 4 ".wl[1149].w";
	setAttr ".wl[1149].w[0]" 1;
	setAttr ".wl[1149].w[18]" 1;
	setAttr ".wl[1149].w[19]" 0.90970796346664429;
	setAttr ".wl[1149].w[21]" 0.91032660007476807;
	setAttr -s 5 ".wl[1150].w";
	setAttr ".wl[1150].w[0]" 0.31584852933883667;
	setAttr ".wl[1150].w[18]" 1;
	setAttr ".wl[1150].w[19]" 0.00063848495483398438;
	setAttr ".wl[1150].w[21]" 1;
	setAttr ".wl[1150].w[22]" 0.5805361270904541;
	setAttr -s 4 ".wl[1151].w";
	setAttr ".wl[1151].w[0]" 0.21487188339233398;
	setAttr ".wl[1151].w[18]" 0.71524602174758911;
	setAttr ".wl[1151].w[21]" 1;
	setAttr ".wl[1151].w[22]" 1;
	setAttr -s 4 ".wl[1152].w";
	setAttr ".wl[1152].w[0]" 1;
	setAttr ".wl[1152].w[18]" 1;
	setAttr ".wl[1152].w[21]" 1;
	setAttr ".wl[1152].w[22]" 0.28058135509490967;
	setAttr -s 4 ".wl[1153].w";
	setAttr ".wl[1153].w[0]" 1;
	setAttr ".wl[1153].w[18]" 0.53997653722763062;
	setAttr ".wl[1153].w[21]" 1;
	setAttr ".wl[1153].w[22]" 1;
	setAttr -s 4 ".wl[1154].w";
	setAttr ".wl[1154].w[0]" 1;
	setAttr ".wl[1154].w[18]" 1;
	setAttr ".wl[1154].w[21]" 1;
	setAttr ".wl[1154].w[22]" 0.22202390432357788;
	setAttr -s 4 ".wl[1155].w";
	setAttr ".wl[1155].w[0]" 1;
	setAttr ".wl[1155].w[18]" 0.37359601259231567;
	setAttr ".wl[1155].w[21]" 1;
	setAttr ".wl[1155].w[22]" 1;
	setAttr -s 5 ".wl[1156].w";
	setAttr ".wl[1156].w[0]" 0.28904664516448975;
	setAttr ".wl[1156].w[18]" 0.99329042434692383;
	setAttr ".wl[1156].w[19]" 0.0034516453742980957;
	setAttr ".wl[1156].w[21]" 1;
	setAttr ".wl[1156].w[22]" 0.53846538066864014;
	setAttr -s 4 ".wl[1157].w";
	setAttr ".wl[1157].w[0]" 0.19238066673278809;
	setAttr ".wl[1157].w[18]" 0.58382999897003174;
	setAttr ".wl[1157].w[21]" 1;
	setAttr ".wl[1157].w[22]" 1;
	setAttr -s 2 ".wl[1158].w[4:5]"  1 0.64687711000442505;
	setAttr -s 2 ".wl[1159].w[4:5]"  0.5059581995010376 1;
	setAttr -s 2 ".wl[1160].w[4:5]"  1 0.49451601505279541;
	setAttr -s 2 ".wl[1161].w[4:5]"  0.31602096557617188 1;
	setAttr -s 2 ".wl[1162].w[4:5]"  0.999886155128479 0.34073913097381592;
	setAttr -s 2 ".wl[1163].w[4:5]"  0.20444554090499878 1;
	setAttr -s 2 ".wl[1164].w[4:5]"  1 0.47107499837875366;
	setAttr -s 2 ".wl[1165].w[4:5]"  0.36966609954833984 1;
	setAttr ".wl[1166].w[5]"  1;
	setAttr ".wl[1167].w[5]"  1;
	setAttr -s 2 ".wl[1168].w[4:5]"  0.83631992340087891 1;
	setAttr -s 2 ".wl[1169].w[4:5]"  0.59542036056518555 1;
	setAttr -s 2 ".wl[1170].w[4:5]"  0.74536943435668945 1;
	setAttr -s 2 ".wl[1171].w[4:5]"  0.49655723571777344 1;
	setAttr ".wl[1172].w[5]"  1;
	setAttr ".wl[1173].w[5]"  1;
	setAttr -s 2 ".wl[1174].w[19:20]"  1 1;
	setAttr -s 2 ".wl[1175].w[19:20]"  1 1;
	setAttr -s 2 ".wl[1176].w[19:20]"  1 1;
	setAttr -s 2 ".wl[1177].w[19:20]"  1 1;
	setAttr -s 2 ".wl[1178].w[19:20]"  1 1;
	setAttr -s 2 ".wl[1179].w[19:20]"  1 1;
	setAttr -s 2 ".wl[1180].w[19:20]"  1 1;
	setAttr -s 2 ".wl[1181].w[19:20]"  1 1;
	setAttr ".wl[1182].w[9]"  1;
	setAttr ".wl[1183].w[9]"  1;
	setAttr -s 2 ".wl[1184].w[8:9]"  0.11062562465667725 1;
	setAttr -s 2 ".wl[1185].w[8:9]"  0.1613544225692749 1;
	setAttr -s 2 ".wl[1186].w[8:9]"  0.091778993606567383 1;
	setAttr -s 2 ".wl[1187].w[8:9]"  0.13843905925750732 1;
	setAttr ".wl[1188].w[9]"  1;
	setAttr ".wl[1189].w[9]"  1;
	setAttr -s 2 ".wl[1190].w";
	setAttr ".wl[1190].w[19]" 0.30151873826980591;
	setAttr ".wl[1190].w[22]" 0.64532315731048584;
	setAttr -s 2 ".wl[1191].w";
	setAttr ".wl[1191].w[19]" 4.4107437133789063e-006;
	setAttr ".wl[1191].w[22]" 0.96953672170639038;
	setAttr -s 5 ".wl[1192].w";
	setAttr ".wl[1192].w[0]" 0.31151938438415527;
	setAttr ".wl[1192].w[18]" 1;
	setAttr ".wl[1192].w[19]" 0.00052839517593383789;
	setAttr ".wl[1192].w[21]" 1;
	setAttr ".wl[1192].w[22]" 0.58329617977142334;
	setAttr -s 4 ".wl[1193].w";
	setAttr ".wl[1193].w[0]" 0.20106720924377441;
	setAttr ".wl[1193].w[18]" 0.68885838985443115;
	setAttr ".wl[1193].w[21]" 1;
	setAttr ".wl[1193].w[22]" 1;
	setAttr -s 5 ".wl[1194].w";
	setAttr ".wl[1194].w[0]" 0.28495305776596069;
	setAttr ".wl[1194].w[18]" 0.99178826808929443;
	setAttr ".wl[1194].w[19]" 0.0034518241882324219;
	setAttr ".wl[1194].w[21]" 1;
	setAttr ".wl[1194].w[22]" 0.5391126275062561;
	setAttr -s 4 ".wl[1195].w";
	setAttr ".wl[1195].w[0]" 0.17935091257095337;
	setAttr ".wl[1195].w[18]" 0.55448633432388306;
	setAttr ".wl[1195].w[21]" 1;
	setAttr ".wl[1195].w[22]" 1;
	setAttr -s 2 ".wl[1196].w";
	setAttr ".wl[1196].w[19]" 0.31731879711151123;
	setAttr ".wl[1196].w[22]" 0.61987268924713135;
	setAttr -s 2 ".wl[1197].w";
	setAttr ".wl[1197].w[19]" 0.00037759542465209961;
	setAttr ".wl[1197].w[22]" 0.95964062213897705;
	setAttr ".wl[1198].w[4]"  1;
	setAttr ".wl[1199].w[4]"  1;
	setAttr -s 2 ".wl[1200].w[2:3]"  1 1;
	setAttr -s 2 ".wl[1201].w[2:3]"  1 1;
	setAttr -s 2 ".wl[1202].w[2:3]"  1 1;
	setAttr -s 2 ".wl[1203].w[2:3]"  1 1;
	setAttr ".wl[1204].w[4]"  1;
	setAttr ".wl[1205].w[4]"  1;
	setAttr -s 2 ".wl[1206].w[8:9]"  0.086512565612792969 1;
	setAttr -s 2 ".wl[1207].w[8:9]"  0.13379848003387451 1;
	setAttr -s 2 ".wl[1208].w[8:9]"  1 1;
	setAttr -s 2 ".wl[1209].w[8:9]"  1 1;
	setAttr -s 2 ".wl[1210].w[8:9]"  1 1;
	setAttr -s 2 ".wl[1211].w[8:9]"  1 1;
	setAttr -s 2 ".wl[1212].w[8:9]"  0.06940925121307373 1;
	setAttr -s 2 ".wl[1213].w[8:9]"  0.11226439476013184 1;
	setAttr -s 3 ".wl[1214].w[10:12]"  0.91369831562042236 0.018639326095581055 
		0.28123718500137329;
	setAttr -s 3 ".wl[1215].w[10:12]"  1 0.0086844563484191895 0.10070610046386719;
	setAttr -s 3 ".wl[1216].w[10:12]"  1 0.56623625755310059 1;
	setAttr -s 3 ".wl[1217].w[10:12]"  1 0.54457008838653564 1;
	setAttr -s 3 ".wl[1218].w[10:12]"  1 0.63045865297317505 1;
	setAttr -s 3 ".wl[1219].w[10:12]"  1 0.60330730676651001 1;
	setAttr -s 3 ".wl[1220].w[10:12]"  0.85976707935333252 0.11747574806213379 
		0.4427560567855835;
	setAttr -s 3 ".wl[1221].w[10:12]"  0.99374282360076904 0.039276123046875 
		0.19508081674575806;
	setAttr -s 3 ".wl[1222].w[10:12]"  0.96221691370010376 0.17694926261901855 
		0.84087449312210083;
	setAttr -s 3 ".wl[1223].w[10:12]"  1 0.14707827568054199 0.68511795997619629;
	setAttr -s 3 ".wl[1224].w[10:12]"  0.99820888042449951 0.24820601940155029 
		0.77862083911895752;
	setAttr -s 3 ".wl[1225].w[10:12]"  0.93652284145355225 0.32204335927963257 
		0.91606879234313965;
	setAttr -s 2 ".wl[1226].w";
	setAttr ".wl[1226].w[10]" 0.78423392772674561;
	setAttr ".wl[1226].w[12]" 0.29521471261978149;
	setAttr -s 2 ".wl[1227].w";
	setAttr ".wl[1227].w[10]" 0.96194732189178467;
	setAttr ".wl[1227].w[12]" 0.12334418296813965;
	setAttr -s 3 ".wl[1228].w[10:12]"  0.91966640949249268 0.0029935836791992188 
		0.21503019332885742;
	setAttr -s 3 ".wl[1229].w[10:12]"  0.71807503700256348 0.029270529747009277 
		0.42353689670562744;
	setAttr -s 2 ".wl[1230].w";
	setAttr ".wl[1230].w[10]" 0.75964951515197754;
	setAttr ".wl[1230].w[12]" 0.17865538597106934;
	setAttr -s 2 ".wl[1231].w";
	setAttr ".wl[1231].w[10]" 0.96006691455841064;
	setAttr ".wl[1231].w[12]" 0.043551445007324219;
	setAttr -s 3 ".wl[1232].w";
	setAttr ".wl[1232].w[10]" 0.91071480512619019;
	setAttr ".wl[1232].w[12]" 0.11098802089691162;
	setAttr ".wl[1232].w[16]" 0.049101710319519043;
	setAttr -s 4 ".wl[1233].w";
	setAttr ".wl[1233].w[10]" 0.68358033895492554;
	setAttr ".wl[1233].w[11]" 0.00753021240234375;
	setAttr ".wl[1233].w[12]" 0.29775679111480713;
	setAttr ".wl[1233].w[16]" 0.048461079597473145;
	setAttr -s 3 ".wl[1234].w[10:12]"  1 0.97561812400817871 0.98614513874053955;
	setAttr -s 3 ".wl[1235].w[10:12]"  1 0.90884274244308472 0.80240017175674438;
	setAttr -s 3 ".wl[1236].w";
	setAttr ".wl[1236].w[1]" 1;
	setAttr ".wl[1236].w[10]" 1;
	setAttr ".wl[1236].w[11]" 1;
	setAttr -s 3 ".wl[1237].w[10:12]"  1 0.13237404823303223 0.85295087099075317;
	setAttr -s 3 ".wl[1238].w[10:12]"  1 0.26640361547470093 0.96241652965545654;
	setAttr -s 3 ".wl[1239].w";
	setAttr ".wl[1239].w[1]" 0.96954596042633057;
	setAttr ".wl[1239].w[10]" 0.99879699945449829;
	setAttr ".wl[1239].w[11]" 1;
	setAttr -s 3 ".wl[1240].w";
	setAttr ".wl[1240].w[1]" 1;
	setAttr ".wl[1240].w[10]" 1;
	setAttr ".wl[1240].w[11]" 1;
	setAttr -s 3 ".wl[1241].w";
	setAttr ".wl[1241].w[1]" 1;
	setAttr ".wl[1241].w[10]" 1;
	setAttr ".wl[1241].w[11]" 0.9856717586517334;
	setAttr -s 3 ".wl[1242].w";
	setAttr ".wl[1242].w[1]" 1;
	setAttr ".wl[1242].w[10]" 1;
	setAttr ".wl[1242].w[11]" 1;
	setAttr -s 3 ".wl[1243].w";
	setAttr ".wl[1243].w[1]" 0.96470040082931519;
	setAttr ".wl[1243].w[10]" 0.99596935510635376;
	setAttr ".wl[1243].w[11]" 1;
	setAttr -s 3 ".wl[1244].w";
	setAttr ".wl[1244].w[1]" 1;
	setAttr ".wl[1244].w[10]" 1;
	setAttr ".wl[1244].w[11]" 0.99910169839859009;
	setAttr -s 3 ".wl[1245].w";
	setAttr ".wl[1245].w[1]" 1;
	setAttr ".wl[1245].w[10]" 1;
	setAttr ".wl[1245].w[11]" 0.97751259803771973;
	setAttr -s 3 ".wl[1246].w";
	setAttr ".wl[1246].w[1]" 0.9606926441192627;
	setAttr ".wl[1246].w[10]" 0.99696254730224609;
	setAttr ".wl[1246].w[11]" 1;
	setAttr -s 4 ".wl[1247].w";
	setAttr ".wl[1247].w[1]" 0.36398118734359741;
	setAttr ".wl[1247].w[10]" 0.99755293130874634;
	setAttr ".wl[1247].w[11]" 1;
	setAttr ".wl[1247].w[12]" 0.16401183605194092;
	setAttr -s 4 ".wl[1248].w";
	setAttr ".wl[1248].w[1]" 0.41347837448120117;
	setAttr ".wl[1248].w[10]" 1;
	setAttr ".wl[1248].w[11]" 1;
	setAttr ".wl[1248].w[12]" 0.30381959676742554;
	setAttr -s 4 ".wl[1249].w";
	setAttr ".wl[1249].w[1]" 0.36067545413970947;
	setAttr ".wl[1249].w[10]" 1;
	setAttr ".wl[1249].w[11]" 0.9658818244934082;
	setAttr ".wl[1249].w[12]" 0.47865158319473267;
	setAttr -s 3 ".wl[1250].w";
	setAttr ".wl[1250].w[1]" 0.1561812162399292;
	setAttr ".wl[1250].w[10]" 1;
	setAttr ".wl[1250].w[11]" 0.49320882558822632;
	setAttr -s 4 ".wl[1251].w";
	setAttr ".wl[1251].w[1]" 0.28946477174758911;
	setAttr ".wl[1251].w[10]" 1;
	setAttr ".wl[1251].w[11]" 1;
	setAttr ".wl[1251].w[12]" 0.064491629600524902;
	setAttr -s 3 ".wl[1252].w";
	setAttr ".wl[1252].w[1]" 0.18740761280059814;
	setAttr ".wl[1252].w[10]" 1;
	setAttr ".wl[1252].w[11]" 0.54432475566864014;
	setAttr -s 4 ".wl[1253].w";
	setAttr ".wl[1253].w[1]" 0.44376397132873535;
	setAttr ".wl[1253].w[10]" 1;
	setAttr ".wl[1253].w[11]" 1;
	setAttr ".wl[1253].w[12]" 0.51376569271087646;
	setAttr -s 4 ".wl[1254].w";
	setAttr ".wl[1254].w[1]" 0.41045570373535156;
	setAttr ".wl[1254].w[10]" 1;
	setAttr ".wl[1254].w[11]" 1;
	setAttr ".wl[1254].w[12]" 0.22088229656219482;
	setAttr -s 3 ".wl[1255].w[10:12]"  1 1 0.97286832332611084;
	setAttr -s 3 ".wl[1256].w[10:12]"  0.92839157581329346 0.27930480241775513 
		0.52951312065124512;
	setAttr -s 3 ".wl[1257].w[10:12]"  1 0.32106900215148926 0.93544870615005493;
	setAttr -s 3 ".wl[1258].w[10:12]"  1 0.11108255386352539 0.22114282846450806;
	setAttr -s 3 ".wl[1259].w[10:12]"  1 0.9840274453163147 0.84136462211608887;
	setAttr -s 3 ".wl[1260].w[10:12]"  1 0.062459349632263184 0.13403189182281494;
	setAttr -s 3 ".wl[1261].w[10:12]"  1 0.18928033113479614 0.82899975776672363;
	setAttr -s 3 ".wl[1262].w[10:12]"  0.95501077175140381 0.086825132369995117 
		0.33022749423980713;
	setAttr -s 5 ".wl[1263].w";
	setAttr ".wl[1263].w[1]" 0.0034214258193969727;
	setAttr ".wl[1263].w[10]" 0.99733132123947144;
	setAttr ".wl[1263].w[11]" 0.79641103744506836;
	setAttr ".wl[1263].w[13]" 1;
	setAttr ".wl[1263].w[14]" 0.27849924564361572;
	setAttr -s 3 ".wl[1264].w[10:12]"  1 0.9960099458694458 0.65759134292602539;
	setAttr -s 4 ".wl[1265].w";
	setAttr ".wl[1265].w[1]" 0.14820313453674316;
	setAttr ".wl[1265].w[10]" 1;
	setAttr ".wl[1265].w[11]" 0.52099156379699707;
	setAttr ".wl[1265].w[12]" 0.3489341139793396;
	setAttr -s 4 ".wl[1266].w";
	setAttr ".wl[1266].w[1]" 0.090983569622039795;
	setAttr ".wl[1266].w[10]" 0.94597917795181274;
	setAttr ".wl[1266].w[11]" 0.62408745288848877;
	setAttr ".wl[1266].w[12]" 0.13768666982650757;
	setAttr -s 4 ".wl[1267].w";
	setAttr ".wl[1267].w[1]" 0.20796859264373779;
	setAttr ".wl[1267].w[10]" 1;
	setAttr ".wl[1267].w[11]" 1;
	setAttr ".wl[1267].w[12]" 0.41674333810806274;
	setAttr -s 4 ".wl[1268].w";
	setAttr ".wl[1268].w[1]" 0.089268684387207031;
	setAttr ".wl[1268].w[10]" 0.93170511722564697;
	setAttr ".wl[1268].w[11]" 0.41968619823455811;
	setAttr ".wl[1268].w[12]" 0.032166481018066406;
	setAttr -s 4 ".wl[1269].w";
	setAttr ".wl[1269].w[1]" 0.18379771709442139;
	setAttr ".wl[1269].w[10]" 1;
	setAttr ".wl[1269].w[11]" 0.49665951728820801;
	setAttr ".wl[1269].w[12]" 0.24396157264709473;
	setAttr -s 3 ".wl[1270].w[10:12]"  1 0.99722039699554443 0.58480596542358398;
	setAttr -s 3 ".wl[1271].w[10:12]"  0.96487283706665039 0.70470410585403442 
		0.91289341449737549;
	setAttr -s 3 ".wl[1272].w[10:12]"  0.95170748233795166 0.61060512065887451 
		0.92258894443511963;
	setAttr -s 3 ".wl[1273].w[10:12]"  0.9944380521774292 0.64014500379562378 
		1;
	setAttr -s 3 ".wl[1274].w[10:12]"  1 0.65116453170776367 1;
	setAttr -s 3 ".wl[1275].w[10:12]"  1 0.0054788589477539063 0.72491568326950073;
	setAttr -s 3 ".wl[1276].w[10:12]"  0.99940013885498047 0.016182661056518555 
		0.75858330726623535;
	setAttr -s 3 ".wl[1277].w[10:12]"  1 0.24276864528656006 0.96908819675445557;
	setAttr -s 3 ".wl[1278].w[10:12]"  1 0.56980502605438232 1;
	setAttr -s 3 ".wl[1279].w[10:12]"  1 0.5889211893081665 0.66809988021850586;
	setAttr -s 3 ".wl[1280].w[10:12]"  1 0.50627619028091431 0.70819604396820068;
	setAttr -s 3 ".wl[1281].w[10:12]"  1 0.57026249170303345 0.95145988464355469;
	setAttr -s 3 ".wl[1282].w[10:12]"  1 0.62674003839492798 1;
	setAttr -s 4 ".wl[1283].w";
	setAttr ".wl[1283].w[10]" 0.99330431222915649;
	setAttr ".wl[1283].w[11]" 0.071137905120849609;
	setAttr ".wl[1283].w[12]" 0.86956131458282471;
	setAttr ".wl[1283].w[16]" 0.050625801086425781;
	setAttr -s 3 ".wl[1284].w[10:12]"  0.98484420776367188 0.099803566932678223 
		0.88505768775939941;
	setAttr -s 3 ".wl[1285].w[10:12]"  1 0.38527989387512207 0.99810194969177246;
	setAttr -s 3 ".wl[1286].w[10:12]"  1 0.63135534524917603 1;
	setAttr -s 4 ".wl[1287].w";
	setAttr ".wl[1287].w[1]" 0.76371145248413086;
	setAttr ".wl[1287].w[10]" 1;
	setAttr ".wl[1287].w[11]" 1;
	setAttr ".wl[1287].w[12]" 0.0037891864776611328;
	setAttr -s 3 ".wl[1288].w";
	setAttr ".wl[1288].w[1]" 0.72848683595657349;
	setAttr ".wl[1288].w[10]" 0.99822258949279785;
	setAttr ".wl[1288].w[11]" 1;
	setAttr -s 3 ".wl[1289].w";
	setAttr ".wl[1289].w[1]" 0.75306046009063721;
	setAttr ".wl[1289].w[10]" 1;
	setAttr ".wl[1289].w[11]" 1;
	setAttr -s 4 ".wl[1290].w";
	setAttr ".wl[1290].w[1]" 0.56670975685119629;
	setAttr ".wl[1290].w[10]" 1;
	setAttr ".wl[1290].w[11]" 1;
	setAttr ".wl[1290].w[12]" 0.18835532665252686;
	setAttr -s 3 ".wl[1291].w";
	setAttr ".wl[1291].w[1]" 0.86057692766189575;
	setAttr ".wl[1291].w[10]" 1;
	setAttr ".wl[1291].w[11]" 1;
	setAttr -s 4 ".wl[1292].w";
	setAttr ".wl[1292].w[1]" 0.47567325830459595;
	setAttr ".wl[1292].w[10]" 1;
	setAttr ".wl[1292].w[11]" 1;
	setAttr ".wl[1292].w[12]" 0.26103115081787109;
	setAttr -s 3 ".wl[1293].w[10:12]"  1 0.67776787281036377 0.66156643629074097;
	setAttr -s 3 ".wl[1294].w[10:12]"  1 0.60892647504806519 0.58110594749450684;
	setAttr -s 5 ".wl[1295].w[10:14]"  1 0.92999672889709473 0.10159128904342651 
		0.94954085350036621 0.12381947040557861;
	setAttr -s 4 ".wl[1296].w";
	setAttr ".wl[1296].w[0]" 0.043050229549407959;
	setAttr ".wl[1296].w[1]" 1;
	setAttr ".wl[1296].w[10]" 1;
	setAttr ".wl[1296].w[11]" 0.44016760587692261;
	setAttr -s 4 ".wl[1297].w";
	setAttr ".wl[1297].w[0]" 0.0096683502197265625;
	setAttr ".wl[1297].w[1]" 1;
	setAttr ".wl[1297].w[10]" 1;
	setAttr ".wl[1297].w[11]" 0.36446696519851685;
	setAttr -s 4 ".wl[1298].w";
	setAttr ".wl[1298].w[0]" 0.094984531402587891;
	setAttr ".wl[1298].w[1]" 1;
	setAttr ".wl[1298].w[10]" 1;
	setAttr ".wl[1298].w[11]" 0.61062419414520264;
	setAttr -s 4 ".wl[1299].w";
	setAttr ".wl[1299].w[0]" 0.10204124450683594;
	setAttr ".wl[1299].w[1]" 1;
	setAttr ".wl[1299].w[10]" 1;
	setAttr ".wl[1299].w[11]" 0.6208571195602417;
	setAttr -s 4 ".wl[1300].w";
	setAttr ".wl[1300].w[0]" 0.093931496143341064;
	setAttr ".wl[1300].w[1]" 1;
	setAttr ".wl[1300].w[10]" 1;
	setAttr ".wl[1300].w[11]" 0.5085185170173645;
	setAttr -s 4 ".wl[1301].w";
	setAttr ".wl[1301].w[0]" 0.047708988189697266;
	setAttr ".wl[1301].w[1]" 1;
	setAttr ".wl[1301].w[10]" 1;
	setAttr ".wl[1301].w[11]" 0.32759785652160645;
	setAttr -s 3 ".wl[1302].w";
	setAttr ".wl[1302].w[19]" 0.47574710845947266;
	setAttr ".wl[1302].w[22]" 0.41985845565795898;
	setAttr ".wl[1302].w[23]" 1;
	setAttr -s 3 ".wl[1303].w";
	setAttr ".wl[1303].w[19]" 0.17524486780166626;
	setAttr ".wl[1303].w[22]" 0.66590070724487305;
	setAttr ".wl[1303].w[23]" 1;
	setAttr -s 2 ".wl[1304].w";
	setAttr ".wl[1304].w[19]" 0.29356956481933594;
	setAttr ".wl[1304].w[22]" 0.65054738521575928;
	setAttr ".wl[1305].w[22]"  0.97790205478668213;
	setAttr -s 2 ".wl[1306].w";
	setAttr ".wl[1306].w[19]" 0.30930137634277344;
	setAttr ".wl[1306].w[22]" 0.62467217445373535;
	setAttr ".wl[1307].w[22]"  0.9691166877746582;
	setAttr -s 3 ".wl[1308].w";
	setAttr ".wl[1308].w[19]" 0.4853479266166687;
	setAttr ".wl[1308].w[22]" 0.40584796667098999;
	setAttr ".wl[1308].w[23]" 1;
	setAttr -s 3 ".wl[1309].w";
	setAttr ".wl[1309].w[19]" 0.18271875381469727;
	setAttr ".wl[1309].w[22]" 0.65283668041229248;
	setAttr ".wl[1309].w[23]" 1;
	setAttr -s 2 ".wl[1310].w[4:5]"  1 0.92505931854248047;
	setAttr -s 2 ".wl[1311].w[4:5]"  1 0.89199149608612061;
	setAttr ".wl[1312].w[4]"  1;
	setAttr ".wl[1313].w[4]"  1;
	setAttr ".wl[1314].w[4]"  1;
	setAttr ".wl[1315].w[4]"  1;
	setAttr -s 2 ".wl[1316].w[4:5]"  1 0.81225347518920898;
	setAttr -s 2 ".wl[1317].w[4:5]"  1 0.77245151996612549;
	setAttr -s 2 ".wl[1318].w[6:7]"  1 1;
	setAttr -s 2 ".wl[1319].w[6:7]"  1 1;
	setAttr -s 4 ".wl[1320].w";
	setAttr ".wl[1320].w[0]" 0.74678385257720947;
	setAttr ".wl[1320].w[1]" 1;
	setAttr ".wl[1320].w[10]" 0.15362304449081421;
	setAttr ".wl[1320].w[22]" 0.02462303638458252;
	setAttr -s 3 ".wl[1321].w";
	setAttr ".wl[1321].w[0]" 0.0045722723007202148;
	setAttr ".wl[1321].w[1]" 1;
	setAttr ".wl[1321].w[10]" 0.42439883947372437;
	setAttr -s 4 ".wl[1322].w";
	setAttr ".wl[1322].w[0]" 0.67711323499679565;
	setAttr ".wl[1322].w[1]" 1;
	setAttr ".wl[1322].w[10]" 0.5719606876373291;
	setAttr ".wl[1322].w[22]" 0.016368687152862549;
	setAttr -s 3 ".wl[1323].w";
	setAttr ".wl[1323].w[0]" 0.00021231174468994141;
	setAttr ".wl[1323].w[1]" 1;
	setAttr ".wl[1323].w[10]" 0.79980146884918213;
	setAttr -s 2 ".wl[1324].w[6:7]"  1 1;
	setAttr -s 2 ".wl[1325].w[6:7]"  1 0.99940979480743408;
	setAttr -s 2 ".wl[1326].w[19:20]"  1 1;
	setAttr -s 2 ".wl[1327].w[19:20]"  1 1;
	setAttr -s 2 ".wl[1328].w[19:20]"  1 1;
	setAttr -s 2 ".wl[1329].w[19:20]"  1 1;
	setAttr -s 2 ".wl[1330].w[19:20]"  1 1;
	setAttr -s 2 ".wl[1331].w[19:20]"  1 1;
	setAttr -s 2 ".wl[1332].w[19:20]"  1 1;
	setAttr -s 2 ".wl[1333].w[19:20]"  1 1;
	setAttr -s 3 ".wl[1334].w";
	setAttr ".wl[1334].w[19]" 0.15947365760803223;
	setAttr ".wl[1334].w[22]" 0.67379224300384521;
	setAttr ".wl[1334].w[23]" 1;
	setAttr -s 3 ".wl[1335].w";
	setAttr ".wl[1335].w[19]" 0.37057757377624512;
	setAttr ".wl[1335].w[22]" 0.49528652429580688;
	setAttr ".wl[1335].w[23]" 1;
	setAttr -s 3 ".wl[1336].w";
	setAttr ".wl[1336].w[19]" 0.15785634517669678;
	setAttr ".wl[1336].w[22]" 0.59610271453857422;
	setAttr ".wl[1336].w[23]" 1;
	setAttr -s 3 ".wl[1337].w";
	setAttr ".wl[1337].w[19]" 0.36823821067810059;
	setAttr ".wl[1337].w[22]" 0.42111283540725708;
	setAttr ".wl[1337].w[23]" 1;
	setAttr -s 3 ".wl[1338].w";
	setAttr ".wl[1338].w[19]" 0.13945305347442627;
	setAttr ".wl[1338].w[22]" 0.57905876636505127;
	setAttr ".wl[1338].w[23]" 1;
	setAttr -s 3 ".wl[1339].w";
	setAttr ".wl[1339].w[19]" 0.34253716468811035;
	setAttr ".wl[1339].w[22]" 0.40725892782211304;
	setAttr ".wl[1339].w[23]" 1;
	setAttr -s 3 ".wl[1340].w";
	setAttr ".wl[1340].w[19]" 0.14098238945007324;
	setAttr ".wl[1340].w[22]" 0.65688931941986084;
	setAttr ".wl[1340].w[23]" 1;
	setAttr -s 3 ".wl[1341].w";
	setAttr ".wl[1341].w[19]" 0.34482473134994507;
	setAttr ".wl[1341].w[22]" 0.48082131147384644;
	setAttr ".wl[1341].w[23]" 1;
	setAttr -s 2 ".wl[1342].w[19:20]"  1 1;
	setAttr -s 2 ".wl[1343].w[19:20]"  0.99723398685455322 0.91637051105499268;
	setAttr -s 2 ".wl[1344].w[19:20]"  1 0.99990808963775635;
	setAttr -s 3 ".wl[1345].w";
	setAttr ".wl[1345].w[19]" 0.99787998199462891;
	setAttr ".wl[1345].w[20]" 0.86774349212646484;
	setAttr ".wl[1345].w[22]" 0.0079404115676879883;
	setAttr -s 2 ".wl[1346].w[19:20]"  1 0.87205326557159424;
	setAttr -s 3 ".wl[1347].w";
	setAttr ".wl[1347].w[19]" 1;
	setAttr ".wl[1347].w[20]" 0.88762080669403076;
	setAttr ".wl[1347].w[22]" 0.0012162327766418457;
	setAttr -s 2 ".wl[1348].w[19:20]"  1 0.91524755954742432;
	setAttr -s 2 ".wl[1349].w[19:20]"  1 0.92811620235443115;
	setAttr -s 3 ".wl[1350].w";
	setAttr ".wl[1350].w[19]" 0.42628365755081177;
	setAttr ".wl[1350].w[22]" 0.45728623867034912;
	setAttr ".wl[1350].w[23]" 1;
	setAttr -s 3 ".wl[1351].w";
	setAttr ".wl[1351].w[19]" 0.69275873899459839;
	setAttr ".wl[1351].w[22]" 0.25336587429046631;
	setAttr ".wl[1351].w[23]" 0.9992297887802124;
	setAttr -s 3 ".wl[1352].w";
	setAttr ".wl[1352].w[19]" 0.42354768514633179;
	setAttr ".wl[1352].w[22]" 0.37680649757385254;
	setAttr ".wl[1352].w[23]" 1;
	setAttr -s 3 ".wl[1353].w";
	setAttr ".wl[1353].w[19]" 0.68988883495330811;
	setAttr ".wl[1353].w[22]" 0.19122076034545898;
	setAttr ".wl[1353].w[23]" 1;
	setAttr -s 3 ".wl[1354].w";
	setAttr ".wl[1354].w[19]" 0.39380258321762085;
	setAttr ".wl[1354].w[22]" 0.36240804195404053;
	setAttr ".wl[1354].w[23]" 1;
	setAttr -s 3 ".wl[1355].w";
	setAttr ".wl[1355].w[19]" 0.66008871793746948;
	setAttr ".wl[1355].w[22]" 0.18226146697998047;
	setAttr ".wl[1355].w[23]" 0.97308135032653809;
	setAttr -s 3 ".wl[1356].w";
	setAttr ".wl[1356].w[19]" 0.39648807048797607;
	setAttr ".wl[1356].w[22]" 0.44198709726333618;
	setAttr ".wl[1356].w[23]" 1;
	setAttr -s 3 ".wl[1357].w";
	setAttr ".wl[1357].w[19]" 0.66299957036972046;
	setAttr ".wl[1357].w[22]" 0.24318397045135498;
	setAttr ".wl[1357].w[23]" 0.94689774513244629;
	setAttr -s 2 ".wl[1358].w[7:8]"  1 1;
	setAttr -s 2 ".wl[1359].w[7:8]"  1 1;
	setAttr -s 2 ".wl[1360].w[6:7]"  1 1;
	setAttr -s 2 ".wl[1361].w[6:7]"  1 1;
	setAttr -s 2 ".wl[1362].w[6:7]"  1 1;
	setAttr -s 2 ".wl[1363].w[6:7]"  1 1;
	setAttr -s 2 ".wl[1364].w[7:8]"  1 1;
	setAttr -s 2 ".wl[1365].w[7:8]"  1 1;
	setAttr -s 2 ".wl[1366].w[2:3]"  1 1;
	setAttr -s 2 ".wl[1367].w[2:3]"  1 1;
	setAttr -s 3 ".wl[1368].w";
	setAttr ".wl[1368].w[0]" 0.0059676170349121094;
	setAttr ".wl[1368].w[1]" 1;
	setAttr ".wl[1368].w[10]" 0.71134841442108154;
	setAttr -s 3 ".wl[1369].w";
	setAttr ".wl[1369].w[0]" 0.81726276874542236;
	setAttr ".wl[1369].w[1]" 1;
	setAttr ".wl[1369].w[10]" 0.53861868381500244;
	setAttr -s 3 ".wl[1370].w";
	setAttr ".wl[1370].w[0]" 0.00057899951934814453;
	setAttr ".wl[1370].w[1]" 0.99731886386871338;
	setAttr ".wl[1370].w[10]" 0.99206310510635376;
	setAttr -s 3 ".wl[1371].w";
	setAttr ".wl[1371].w[0]" 0.7514650821685791;
	setAttr ".wl[1371].w[1]" 1;
	setAttr ".wl[1371].w[10]" 0.96591979265213013;
	setAttr -s 2 ".wl[1372].w[2:3]"  0.99590921401977539 1;
	setAttr -s 2 ".wl[1373].w[2:3]"  1 1;
	setAttr -s 2 ".wl[1374].w";
	setAttr ".wl[1374].w[1]" 0.96881949901580811;
	setAttr ".wl[1374].w[10]" 1;
	setAttr -s 3 ".wl[1375].w";
	setAttr ".wl[1375].w[1]" 0.98922669887542725;
	setAttr ".wl[1375].w[10]" 0.99810826778411865;
	setAttr ".wl[1375].w[11]" 0.0071996450424194336;
	setAttr -s 3 ".wl[1376].w";
	setAttr ".wl[1376].w[1]" 0.40437722206115723;
	setAttr ".wl[1376].w[10]" 0.18497991561889648;
	setAttr ".wl[1376].w[13]" 0.45426976680755615;
	setAttr -s 3 ".wl[1377].w";
	setAttr ".wl[1377].w[1]" 0.49800682067871094;
	setAttr ".wl[1377].w[10]" 0.042967617511749268;
	setAttr ".wl[1377].w[13]" 0.57165610790252686;
	setAttr ".wl[1378].w[1]"  0.48863339424133301;
	setAttr ".wl[1379].w[1]"  0.58611369132995605;
	setAttr -s 3 ".wl[1380].w";
	setAttr ".wl[1380].w[1]" 0.99991726875305176;
	setAttr ".wl[1380].w[10]" 0.64189398288726807;
	setAttr ".wl[1380].w[11]" 4.0352344512939453e-005;
	setAttr -s 3 ".wl[1381].w";
	setAttr ".wl[1381].w[1]" 1;
	setAttr ".wl[1381].w[10]" 0.55555129051208496;
	setAttr ".wl[1381].w[11]" 0.030017256736755371;
	setAttr -s 2 ".wl[1382].w[8:9]"  1 0.16253948211669922;
	setAttr -s 2 ".wl[1383].w[8:9]"  1 1;
	setAttr -s 2 ".wl[1384].w[8:9]"  1 0.14327776432037354;
	setAttr -s 2 ".wl[1385].w[8:9]"  1 1;
	setAttr -s 2 ".wl[1386].w[8:9]"  1 0.045322418212890625;
	setAttr -s 2 ".wl[1387].w[8:9]"  0.99938023090362549 0.97049784660339355;
	setAttr -s 2 ".wl[1388].w[8:9]"  1 0.056365072727203369;
	setAttr -s 2 ".wl[1389].w[8:9]"  0.99927437305450439 0.98644804954528809;
	setAttr -s 2 ".wl[1390].w[8:9]"  1 0.72987008094787598;
	setAttr -s 2 ".wl[1391].w[8:9]"  1 0.73345893621444702;
	setAttr -s 2 ".wl[1392].w[7:8]"  1 1;
	setAttr -s 2 ".wl[1393].w[7:8]"  1 1;
	setAttr -s 2 ".wl[1394].w[7:8]"  1 1;
	setAttr -s 2 ".wl[1395].w[7:8]"  1 1;
	setAttr -s 2 ".wl[1396].w[8:9]"  1 0.55454343557357788;
	setAttr -s 2 ".wl[1397].w[8:9]"  1 0.55824470520019531;
	setAttr -s 3 ".wl[1398].w";
	setAttr ".wl[1398].w[19]" 0.015375137329101563;
	setAttr ".wl[1398].w[22]" 0.83608925342559814;
	setAttr ".wl[1398].w[23]" 1;
	setAttr -s 3 ".wl[1399].w";
	setAttr ".wl[1399].w[19]" 0.10419285297393799;
	setAttr ".wl[1399].w[22]" 0.71983134746551514;
	setAttr ".wl[1399].w[23]" 1;
	setAttr -s 3 ".wl[1400].w";
	setAttr ".wl[1400].w[19]" 0.014963269233703613;
	setAttr ".wl[1400].w[22]" 0.77740168571472168;
	setAttr ".wl[1400].w[23]" 1;
	setAttr -s 3 ".wl[1401].w";
	setAttr ".wl[1401].w[19]" 0.10309362411499023;
	setAttr ".wl[1401].w[22]" 0.6554495096206665;
	setAttr ".wl[1401].w[23]" 1;
	setAttr -s 3 ".wl[1402].w";
	setAttr ".wl[1402].w[19]" 0.010313630104064941;
	setAttr ".wl[1402].w[22]" 0.76207113265991211;
	setAttr ".wl[1402].w[23]" 0.99723827838897705;
	setAttr -s 3 ".wl[1403].w";
	setAttr ".wl[1403].w[19]" 0.090416193008422852;
	setAttr ".wl[1403].w[22]" 0.64061522483825684;
	setAttr ".wl[1403].w[23]" 1;
	setAttr -s 3 ".wl[1404].w";
	setAttr ".wl[1404].w[19]" 0.010655760765075684;
	setAttr ".wl[1404].w[22]" 0.82189208269119263;
	setAttr ".wl[1404].w[23]" 0.98919510841369629;
	setAttr -s 3 ".wl[1405].w";
	setAttr ".wl[1405].w[19]" 0.09144902229309082;
	setAttr ".wl[1405].w[22]" 0.70534324645996094;
	setAttr ".wl[1405].w[23]" 1;
	setAttr -s 2 ".wl[1406].w[19:20]"  1 1;
	setAttr -s 2 ".wl[1407].w[19:20]"  1 1;
	setAttr ".wl[1408].w[19]"  1;
	setAttr -s 2 ".wl[1409].w";
	setAttr ".wl[1409].w[19]" 1;
	setAttr ".wl[1409].w[22]" 0.0030461549758911133;
	setAttr ".wl[1410].w[19]"  1;
	setAttr -s 2 ".wl[1411].w";
	setAttr ".wl[1411].w[19]" 1;
	setAttr ".wl[1411].w[22]" 0.00084137916564941406;
	setAttr -s 2 ".wl[1412].w[19:20]"  1 1;
	setAttr -s 2 ".wl[1413].w[19:20]"  1 1;
	setAttr -s 2 ".wl[1414].w[8:9]"  0.15252971649169922 1;
	setAttr -s 2 ".wl[1415].w[8:9]"  0.15608537197113037 1;
	setAttr -s 2 ".wl[1416].w[8:9]"  1 1;
	setAttr -s 2 ".wl[1417].w[8:9]"  1 1;
	setAttr -s 2 ".wl[1418].w[8:9]"  1 1;
	setAttr -s 2 ".wl[1419].w[8:9]"  1 1;
	setAttr -s 2 ".wl[1420].w[8:9]"  0.12949049472808838 1;
	setAttr -s 2 ".wl[1421].w[8:9]"  0.13277310132980347 1;
	setAttr ".wl[1422].w[5]"  1;
	setAttr ".wl[1423].w[5]"  1;
	setAttr -s 2 ".wl[1424].w[4:5]"  0.88247394561767578 1;
	setAttr -s 2 ".wl[1425].w[4:5]"  0.83972877264022827 1;
	setAttr -s 2 ".wl[1426].w[4:5]"  0.79810404777526855 1;
	setAttr -s 2 ".wl[1427].w[4:5]"  0.74917441606521606 1;
	setAttr ".wl[1428].w[5]"  1;
	setAttr ".wl[1429].w[5]"  1;
	setAttr ".wl[1430].w[5]"  1;
	setAttr ".wl[1431].w[5]"  1;
	setAttr ".wl[1432].w[5]"  1;
	setAttr ".wl[1433].w[5]"  1;
	setAttr ".wl[1434].w[5]"  1;
	setAttr ".wl[1435].w[5]"  1;
	setAttr ".wl[1436].w[5]"  1;
	setAttr ".wl[1437].w[5]"  1;
	setAttr ".wl[1438].w[5]"  1;
	setAttr ".wl[1439].w[5]"  1;
	setAttr ".wl[1440].w[5]"  1;
	setAttr ".wl[1441].w[5]"  1;
	setAttr ".wl[1442].w[5]"  1;
	setAttr ".wl[1443].w[5]"  1;
	setAttr ".wl[1444].w[5]"  1;
	setAttr ".wl[1445].w[5]"  1;
	setAttr ".wl[1446].w[5]"  1;
	setAttr ".wl[1447].w[5]"  1;
	setAttr ".wl[1448].w[5]"  1;
	setAttr ".wl[1449].w[5]"  1;
	setAttr ".wl[1450].w[5]"  1;
	setAttr ".wl[1451].w[5]"  1;
	setAttr ".wl[1452].w[5]"  1;
	setAttr ".wl[1453].w[5]"  1;
	setAttr -s 3 ".wl[1454].w";
	setAttr ".wl[1454].w[19]" 0.72709345817565918;
	setAttr ".wl[1454].w[22]" 0.13283085823059082;
	setAttr ".wl[1454].w[23]" 0.94821882247924805;
	setAttr -s 3 ".wl[1455].w";
	setAttr ".wl[1455].w[19]" 0.0012226104736328125;
	setAttr ".wl[1455].w[22]" 0.7653728723526001;
	setAttr ".wl[1455].w[23]" 0.92108547687530518;
	setAttr -s 3 ".wl[1456].w";
	setAttr ".wl[1456].w[19]" 0.73093080520629883;
	setAttr ".wl[1456].w[22]" 0.23698610067367554;
	setAttr ".wl[1456].w[23]" 0.88312727212905884;
	setAttr -s 3 ".wl[1457].w";
	setAttr ".wl[1457].w[19]" 0.0013321042060852051;
	setAttr ".wl[1457].w[22]" 0.90182846784591675;
	setAttr ".wl[1457].w[23]" 0.8557288646697998;
	setAttr -s 3 ".wl[1458].w";
	setAttr ".wl[1458].w[19]" 0.79322052001953125;
	setAttr ".wl[1458].w[22]" 0.19773083925247192;
	setAttr ".wl[1458].w[23]" 0.87363213300704956;
	setAttr -s 3 ".wl[1459].w";
	setAttr ".wl[1459].w[19]" 0.011115193367004395;
	setAttr ".wl[1459].w[22]" 0.8869243860244751;
	setAttr ".wl[1459].w[23]" 0.73780375719070435;
	setAttr -s 3 ".wl[1460].w";
	setAttr ".wl[1460].w[19]" 0.79060757160186768;
	setAttr ".wl[1460].w[22]" 0.103751540184021;
	setAttr ".wl[1460].w[23]" 0.9936482310295105;
	setAttr -s 3 ".wl[1461].w";
	setAttr ".wl[1461].w[19]" 0.011173009872436523;
	setAttr ".wl[1461].w[22]" 0.74667000770568848;
	setAttr ".wl[1461].w[23]" 0.91663122177124023;
	setAttr ".wl[1462].w[5]"  1;
	setAttr ".wl[1463].w[5]"  1;
	setAttr -s 2 ".wl[1464].w[4:5]"  0.75694692134857178 1;
	setAttr -s 2 ".wl[1465].w[4:5]"  0.88209688663482666 1;
	setAttr -s 2 ".wl[1466].w[4:5]"  0.65966492891311646 1;
	setAttr -s 2 ".wl[1467].w[4:5]"  0.7976609468460083 1;
	setAttr ".wl[1468].w[5]"  1;
	setAttr ".wl[1469].w[5]"  1;
	setAttr -s 2 ".wl[1470].w[8:9]"  0.76344907283782959 0.42101728916168213;
	setAttr -s 2 ".wl[1471].w[8:9]"  0.71406817436218262 0.12371569871902466;
	setAttr -s 2 ".wl[1472].w[8:9]"  1 1;
	setAttr -s 2 ".wl[1473].w[8:9]"  1 0.86167150735855103;
	setAttr -s 2 ".wl[1474].w[8:9]"  1 1;
	setAttr -s 2 ".wl[1475].w[8:9]"  1 0.72852116823196411;
	setAttr -s 2 ".wl[1476].w[8:9]"  0.7255476713180542 0.33957362174987793;
	setAttr -s 2 ".wl[1477].w[8:9]"  0.67507016658782959 0.07937312126159668;
	setAttr ".wl[1478].w[9]"  1;
	setAttr ".wl[1479].w[9]"  1;
	setAttr -s 2 ".wl[1480].w[8:9]"  0.16896945238113403 1;
	setAttr -s 2 ".wl[1481].w[8:9]"  0.12227737903594971 1;
	setAttr -s 2 ".wl[1482].w[8:9]"  0.14551293849945068 1;
	setAttr -s 2 ".wl[1483].w[8:9]"  0.10241436958312988 1;
	setAttr ".wl[1484].w[9]"  1;
	setAttr ".wl[1485].w[9]"  1;
	setAttr -s 3 ".wl[1486].w";
	setAttr ".wl[1486].w[0]" 0.01581650972366333;
	setAttr ".wl[1486].w[1]" 0.92913568019866943;
	setAttr ".wl[1486].w[10]" 0.78722095489501953;
	setAttr -s 3 ".wl[1487].w";
	setAttr ".wl[1487].w[1]" 0.82882404327392578;
	setAttr ".wl[1487].w[6]" 0.010171294212341309;
	setAttr ".wl[1487].w[10]" 0.13599443435668945;
	setAttr -s 3 ".wl[1488].w";
	setAttr ".wl[1488].w[10]" 0.21728241443634033;
	setAttr ".wl[1488].w[15]" 1;
	setAttr ".wl[1488].w[16]" 1;
	setAttr -s 3 ".wl[1489].w";
	setAttr ".wl[1489].w[10]" 0.11133706569671631;
	setAttr ".wl[1489].w[15]" 1;
	setAttr ".wl[1489].w[17]" 1;
	setAttr -s 3 ".wl[1490].w";
	setAttr ".wl[1490].w[10]" 0.13447564840316772;
	setAttr ".wl[1490].w[15]" 1;
	setAttr ".wl[1490].w[16]" 1;
	setAttr -s 3 ".wl[1491].w";
	setAttr ".wl[1491].w[10]" 0.054798126220703125;
	setAttr ".wl[1491].w[15]" 1;
	setAttr ".wl[1491].w[17]" 1;
	setAttr -s 2 ".wl[1492].w";
	setAttr ".wl[1492].w[1]" 0.81108188629150391;
	setAttr ".wl[1492].w[10]" 0.65145426988601685;
	setAttr -s 2 ".wl[1493].w";
	setAttr ".wl[1493].w[1]" 0.68961793184280396;
	setAttr ".wl[1493].w[10]" 0.066681742668151855;
	setAttr -s 2 ".wl[1494].w";
	setAttr ".wl[1494].w[10]" 0.4077797532081604;
	setAttr ".wl[1494].w[16]" 1;
	setAttr -s 2 ".wl[1495].w";
	setAttr ".wl[1495].w[10]" 0.25907480716705322;
	setAttr ".wl[1495].w[17]" 1;
	setAttr -s 2 ".wl[1496].w";
	setAttr ".wl[1496].w[10]" 0.16117382049560547;
	setAttr ".wl[1496].w[17]" 0.99338775873184204;
	setAttr -s 2 ".wl[1497].w";
	setAttr ".wl[1497].w[10]" 0.2943231463432312;
	setAttr ".wl[1497].w[16]" 1;
	setAttr -s 4 ".wl[1498].w";
	setAttr ".wl[1498].w[0]" 0.023264408111572266;
	setAttr ".wl[1498].w[1]" 0.96764063835144043;
	setAttr ".wl[1498].w[10]" 0.99561727046966553;
	setAttr ".wl[1498].w[13]" 0.96654510498046875;
	setAttr -s 3 ".wl[1499].w";
	setAttr ".wl[1499].w[1]" 0.56708312034606934;
	setAttr ".wl[1499].w[10]" 0.48070192337036133;
	setAttr ".wl[1499].w[13]" 0.62361490726470947;
	setAttr ".wl[1500].w[10]"  0.35964375734329224;
	setAttr -s 3 ".wl[1501].w";
	setAttr ".wl[1501].w[10]" 0.10958468914031982;
	setAttr ".wl[1501].w[15]" 1;
	setAttr ".wl[1501].w[16]" 1;
	setAttr -s 3 ".wl[1502].w";
	setAttr ".wl[1502].w[10]" 0.18516659736633301;
	setAttr ".wl[1502].w[15]" 1;
	setAttr ".wl[1502].w[16]" 1;
	setAttr -s 3 ".wl[1503].w";
	setAttr ".wl[1503].w[10]" 0.69468569755554199;
	setAttr ".wl[1503].w[12]" 0.04069209098815918;
	setAttr ".wl[1503].w[16]" 0.93269968032836914;
	setAttr -s 2 ".wl[1504].w";
	setAttr ".wl[1504].w[10]" 0.30045336484909058;
	setAttr ".wl[1504].w[17]" 1;
	setAttr -s 3 ".wl[1505].w";
	setAttr ".wl[1505].w[1]" 0.45150977373123169;
	setAttr ".wl[1505].w[10]" 0.090492129325866699;
	setAttr ".wl[1505].w[13]" 0.34389805793762207;
	setAttr -s 3 ".wl[1506].w";
	setAttr ".wl[1506].w[1]" 0.89189291000366211;
	setAttr ".wl[1506].w[10]" 0.59980207681655884;
	setAttr ".wl[1506].w[13]" 0.74191963672637939;
	setAttr -s 2 ".wl[1507].w";
	setAttr ".wl[1507].w[10]" 0.56377279758453369;
	setAttr ".wl[1507].w[17]" 1;
	setAttr -s 3 ".wl[1508].w";
	setAttr ".wl[1508].w[10]" 0.10409188270568848;
	setAttr ".wl[1508].w[15]" 1;
	setAttr ".wl[1508].w[17]" 1;
	setAttr -s 3 ".wl[1509].w";
	setAttr ".wl[1509].w[10]" 0.049995303153991699;
	setAttr ".wl[1509].w[15]" 1;
	setAttr ".wl[1509].w[17]" 1;
	setAttr -s 2 ".wl[1510].w";
	setAttr ".wl[1510].w[1]" 0.76952779293060303;
	setAttr ".wl[1510].w[10]" 0.80918335914611816;
	setAttr -s 3 ".wl[1511].w";
	setAttr ".wl[1511].w[1]" 0.83013069629669189;
	setAttr ".wl[1511].w[10]" 0.99480366706848145;
	setAttr ".wl[1511].w[13]" 0.9695473313331604;
	setAttr -s 3 ".wl[1512].w";
	setAttr ".wl[1512].w[1]" 0.67030996084213257;
	setAttr ".wl[1512].w[10]" 0.6892549991607666;
	setAttr ".wl[1512].w[13]" 0.73274749517440796;
	setAttr -s 2 ".wl[1513].w";
	setAttr ".wl[1513].w[1]" 0.57848900556564331;
	setAttr ".wl[1513].w[10]" 0.25420397520065308;
	setAttr -s 2 ".wl[1514].w";
	setAttr ".wl[1514].w[1]" 0.34884864091873169;
	setAttr ".wl[1514].w[10]" 0.11711835861206055;
	setAttr -s 3 ".wl[1515].w";
	setAttr ".wl[1515].w[1]" 0.096318840980529785;
	setAttr ".wl[1515].w[10]" 0.094771325588226318;
	setAttr ".wl[1515].w[13]" 0.047331809997558594;
	setAttr -s 3 ".wl[1516].w";
	setAttr ".wl[1516].w[1]" 0.18154716491699219;
	setAttr ".wl[1516].w[10]" 0.39980685710906982;
	setAttr ".wl[1516].w[13]" 0.20781612396240234;
	setAttr -s 2 ".wl[1517].w";
	setAttr ".wl[1517].w[1]" 0.57454347610473633;
	setAttr ".wl[1517].w[10]" 0.67580127716064453;
	setAttr -s 3 ".wl[1518].w";
	setAttr ".wl[1518].w[1]" 0.67030996084213257;
	setAttr ".wl[1518].w[10]" 0.6892549991607666;
	setAttr ".wl[1518].w[13]" 0.73274749517440796;
	setAttr -s 2 ".wl[1519].w";
	setAttr ".wl[1519].w[10]" 0.56377279758453369;
	setAttr ".wl[1519].w[17]" 1;
	setAttr -s 2 ".wl[1520].w";
	setAttr ".wl[1520].w[1]" 0.57848900556564331;
	setAttr ".wl[1520].w[10]" 0.25420397520065308;
	setAttr -s 2 ".wl[1521].w";
	setAttr ".wl[1521].w[10]" 0.25907480716705322;
	setAttr ".wl[1521].w[17]" 1;
	setAttr -s 3 ".wl[1522].w";
	setAttr ".wl[1522].w[1]" 0.67030996084213257;
	setAttr ".wl[1522].w[10]" 0.6892549991607666;
	setAttr ".wl[1522].w[13]" 0.73274749517440796;
	setAttr -s 2 ".wl[1523].w";
	setAttr ".wl[1523].w[10]" 0.56377279758453369;
	setAttr ".wl[1523].w[17]" 1;
	setAttr -s 2 ".wl[1524].w";
	setAttr ".wl[1524].w[1]" 0.58730584383010864;
	setAttr ".wl[1524].w[10]" 0.23868089914321899;
	setAttr -s 2 ".wl[1525].w";
	setAttr ".wl[1525].w[10]" 0.25907480716705322;
	setAttr ".wl[1525].w[17]" 1;
	setAttr -s 2 ".wl[1526].w[15:16]"  1 0.99920403957366943;
	setAttr -s 2 ".wl[1527].w";
	setAttr ".wl[1527].w[10]" 0.19011396169662476;
	setAttr ".wl[1527].w[16]" 0.80664104223251343;
	setAttr -s 2 ".wl[1528].w";
	setAttr ".wl[1528].w[10]" 0.11121129989624023;
	setAttr ".wl[1528].w[17]" 0.29182994365692139;
	setAttr -s 2 ".wl[1529].w";
	setAttr ".wl[1529].w[15]" 1;
	setAttr ".wl[1529].w[17]" 0.97875630855560303;
	setAttr -s 2 ".wl[1530].w";
	setAttr ".wl[1530].w[1]" 0.59444212913513184;
	setAttr ".wl[1530].w[10]" 0.02053070068359375;
	setAttr -s 3 ".wl[1531].w";
	setAttr ".wl[1531].w[1]" 1;
	setAttr ".wl[1531].w[10]" 0.9949638843536377;
	setAttr ".wl[1531].w[11]" 0.1490597128868103;
	setAttr -s 2 ".wl[1532].w";
	setAttr ".wl[1532].w[10]" 0.19011396169662476;
	setAttr ".wl[1532].w[16]" 0.80664104223251343;
	setAttr -s 2 ".wl[1533].w";
	setAttr ".wl[1533].w[10]" 0.044056057929992676;
	setAttr ".wl[1533].w[16]" 1;
	setAttr -s 2 ".wl[1534].w";
	setAttr ".wl[1534].w[1]" 0.96603786945343018;
	setAttr ".wl[1534].w[10]" 0.34680217504501343;
	setAttr -s 2 ".wl[1535].w";
	setAttr ".wl[1535].w[10]" 0.11121129989624023;
	setAttr ".wl[1535].w[17]" 0.29182994365692139;
	setAttr -s 2 ".wl[1536].w";
	setAttr ".wl[1536].w[1]" 0.68678158521652222;
	setAttr ".wl[1536].w[10]" 0.03928297758102417;
	setAttr -s 2 ".wl[1537].w";
	setAttr ".wl[1537].w[10]" 0.0058407783508300781;
	setAttr ".wl[1537].w[17]" 1;
	setAttr -s 2 ".wl[1538].w";
	setAttr ".wl[1538].w[10]" 0.039711236953735352;
	setAttr ".wl[1538].w[17]" 0.40026330947875977;
	setAttr -s 2 ".wl[1539].w";
	setAttr ".wl[1539].w[10]" 0.12659645080566406;
	setAttr ".wl[1539].w[17]" 0.76674211025238037;
	setAttr -s 2 ".wl[1540].w";
	setAttr ".wl[1540].w[10]" 0.00037395954132080078;
	setAttr ".wl[1540].w[17]" 0.97675174474716187;
	setAttr ".wl[1541].w[10]"  0.1268775463104248;
	setAttr -s 3 ".wl[1542].w";
	setAttr ".wl[1542].w[10]" 0.87509018182754517;
	setAttr ".wl[1542].w[11]" 1.1682510375976563e-005;
	setAttr ".wl[1542].w[13]" 0.70362162590026855;
	setAttr -s 2 ".wl[1543].w";
	setAttr ".wl[1543].w[10]" 0.6482275128364563;
	setAttr ".wl[1543].w[13]" 0.41362816095352173;
	setAttr -s 2 ".wl[1544].w";
	setAttr ".wl[1544].w[10]" 0.23100459575653076;
	setAttr ".wl[1544].w[16]" 0.12372589111328125;
	setAttr -s 2 ".wl[1545].w";
	setAttr ".wl[1545].w[10]" 0.027425050735473633;
	setAttr ".wl[1545].w[16]" 0.99814897775650024;
	setAttr -s 2 ".wl[1546].w";
	setAttr ".wl[1546].w[10]" 0.44066309928894043;
	setAttr ".wl[1546].w[16]" 0.81911647319793701;
	setAttr -s 2 ".wl[1547].w";
	setAttr ".wl[1547].w[10]" 0.31672066450119019;
	setAttr ".wl[1547].w[16]" 0.68503773212432861;
	setAttr -s 4 ".wl[1548].w";
	setAttr ".wl[1548].w[10]" 0.58316802978515625;
	setAttr ".wl[1548].w[11]" 0.033846497535705566;
	setAttr ".wl[1548].w[13]" 0.65765988826751709;
	setAttr ".wl[1548].w[14]" 1;
	setAttr -s 3 ".wl[1549].w";
	setAttr ".wl[1549].w[10]" 0.37999767065048218;
	setAttr ".wl[1549].w[13]" 0.31702238321304321;
	setAttr ".wl[1549].w[14]" 0.9201962947845459;
	setAttr -s 2 ".wl[1550].w";
	setAttr ".wl[1550].w[10]" 0.11816662549972534;
	setAttr ".wl[1550].w[17]" 0.78082406520843506;
	setAttr -s 2 ".wl[1551].w";
	setAttr ".wl[1551].w[10]" 0.4077797532081604;
	setAttr ".wl[1551].w[16]" 1;
	setAttr -s 3 ".wl[1552].w";
	setAttr ".wl[1552].w[10]" 0.69468569755554199;
	setAttr ".wl[1552].w[12]" 0.04069209098815918;
	setAttr ".wl[1552].w[16]" 0.93269968032836914;
	setAttr -s 3 ".wl[1553].w";
	setAttr ".wl[1553].w[10]" 0.18516659736633301;
	setAttr ".wl[1553].w[15]" 1;
	setAttr ".wl[1553].w[16]" 1;
	setAttr -s 3 ".wl[1554].w";
	setAttr ".wl[1554].w[10]" 0.21728241443634033;
	setAttr ".wl[1554].w[15]" 1;
	setAttr ".wl[1554].w[16]" 1;
	setAttr -s 2 ".wl[1555].w";
	setAttr ".wl[1555].w[10]" 0.048544764518737793;
	setAttr ".wl[1555].w[16]" 1;
	setAttr -s 2 ".wl[1556].w";
	setAttr ".wl[1556].w[10]" 0.19933235645294189;
	setAttr ".wl[1556].w[16]" 0.80750429630279541;
	setAttr -s 3 ".wl[1557].w";
	setAttr ".wl[1557].w[10]" 1.6808509826660156e-005;
	setAttr ".wl[1557].w[15]" 1;
	setAttr ".wl[1557].w[16]" 0.99931758642196655;
	setAttr -s 3 ".wl[1558].w";
	setAttr ".wl[1558].w[10]" 0.0016872286796569824;
	setAttr ".wl[1558].w[15]" 1;
	setAttr ".wl[1558].w[16]" 1;
	setAttr -s 2 ".wl[1559].w";
	setAttr ".wl[1559].w[10]" 0.10640978813171387;
	setAttr ".wl[1559].w[17]" 0.30711495876312256;
	setAttr -s 2 ".wl[1560].w";
	setAttr ".wl[1560].w[15]" 1;
	setAttr ".wl[1560].w[17]" 0.98321133852005005;
	setAttr -s 2 ".wl[1561].w";
	setAttr ".wl[1561].w[10]" 0.0047441720962524414;
	setAttr ".wl[1561].w[17]" 1;
	setAttr -s 2 ".wl[1562].w";
	setAttr ".wl[1562].w[15]" 1;
	setAttr ".wl[1562].w[17]" 1;
	setAttr -s 24 ".pm";
	setAttr ".pm[0]" -type "matrix" -0.0075185844740170982 0.9999717350442997 1.2246121845598271e-016 0
		 0.9999717350442997 0.0075185844740173202 9.2076104102242984e-019 0 7.8963127719876656e-033 1.2246467991473532e-016 -1 0
		 -0.78526885625048393 0.055730905788112579 6.8250675386994788e-018 1;
	setAttr ".pm[1]" -type "matrix" -0.99264587755052602 -0.12105437531104002 1.2246121845598271e-016 0
		 -0.12105437531104024 0.99264587755052602 9.2076104102242753e-019 0 -1.2167208581277733e-016 -1.3910476648437762e-017 -1 0
		 0.21359190880512008 -2.3588868609643265 6.8250675386994626e-018 1;
	setAttr ".pm[2]" -type "matrix" -0.99993827731994234 -0.011110425303554923 1.2246121845598269e-016 0
		 -0.011110425303555145 0.99993827731994234 9.2076104102242772e-019 0 -1.2246388986814517e-016 -4.3989201105425107e-019 -1 0
		 -1.0242055049676895 -2.2599243321527429 1.2642231282201233e-016 1;
	setAttr ".pm[3]" -type "matrix" -0.99913307309235166 0.041630544712181312 1.2246121845598269e-016 0
		 0.04163054471218109 0.99913307309235166 9.2076104102242868e-019 0 -1.2231672174687228e-016 6.0180900389404259e-018 -1 0
		 -2.2114305823680405 -2.1463041070101632 2.5757828783910068e-016 1;
	setAttr ".pm[4]" -type "matrix" -0.99982857632513078 0.01851534400602806 1.2246121845598267e-016 0
		 0.018515344006027838 0.99982857632513078 9.2076104102242753e-019 0 -1.2242317749646412e-016 3.1880147878909538e-018 -1 0
		 -3.3041979611841485 -2.2233052705808296 3.9742248340489451e-016 1;
	setAttr ".pm[5]" -type "matrix" 0.99999999999999956 2.9143354396410339e-016 -1.2246121845598264e-016 0
		 -6.591949208711862e-017 0.99999999999999978 1.2154391887371287e-016 0 1.2246121845598264e-016 -1.215439188737129e-016 1 0
		 3.9050126510254697 -2.2960015121791746 -7.5727762886083415e-016 1;
	setAttr ".pm[6]" -type "matrix" 0.999662845573694 0.025965268716201313 -2.4488460886181862e-016 0
		 -0.025965268716201105 0.99966284557369411 2.2590672812072284e-018 0 2.4486070222101118e-016 4.1001890468848824e-018 1 0
		 -0.91518041599595812 -2.261031700235852 2.3336237673165404e-016 1;
	setAttr ".pm[7]" -type "matrix" 0.999828576325131 -0.018515344006021686 -2.4488460886181857e-016 0
		 0.018515344006021894 0.99982857632513111 2.2590672812072307e-018 0 2.448008024344044e-016 -6.7928027984487919e-018 1 0
		 -1.9304487827485624 -2.177338788397218 4.5778517806037165e-016 1;
	setAttr ".pm[8]" -type "matrix" 0.99981514002984673 0.019227214231342462 -2.4488460886181857e-016 0
		 -0.019227214231342261 0.99981514002984684 2.2590672812072311e-018 0 2.4488277507091223e-016 2.4497991664475948e-018 1 0
		 -3.1313077200271899 -2.2971374510828237 7.724308494941074e-016 1;
	setAttr ".pm[9]" -type "matrix" -0.99264587755052602 -0.12105437531103957 3.664486685247253e-016 0
		 -0.12105437531103981 0.99264587755052613 1.2565818043537497e-017 0 -3.6527490739848048e-016 -3.1886807172855396e-017 -1 0
		 4.0350443158084737 -1.7490101368311881 -1.4181300898291994e-015 1;
	setAttr ".pm[10]" -type "matrix" 0.038433122101204281 -0.99926117463131392 -2.4483541835842896e-016 0
		 0.99926117463131403 0.038433122101204281 3.7859389552254778e-018 0 5.6266477209878414e-018 -2.4480003319432687e-016 1 0
		 -3.0158676033497964 -0.21339733251907753 -3.5270449507061691e-017 1;
	setAttr ".pm[11]" -type "matrix" -0.038433122101203553 0.9992611746313137 2.1057855125582894e-008 0
		 0.99926117463131425 0.038433122101203566 8.099174916274086e-010 0 -1.3192931167674258e-017 2.1073424705853624e-008 -0.99999999999999956 0
		 -3.6407256072376031 -0.066441092534722232 -1.4001413128732804e-009 1;
	setAttr ".pm[12]" -type "matrix" -0.99264587755052536 -0.12105437531104039 2.1057855125582891e-008 0
		 -0.12105437531104045 0.99264587755052591 8.0991749162740808e-010 0 -2.1001037136468518e-008 -1.7451842383978196e-009 -0.99999999999999956 0
		 0.41899677621510273 -4.2397962288742335 -1.4001413047041326e-009 1;
	setAttr ".pm[13]" -type "matrix" -0.013680014513432637 0.99990642422324294 3.67288638545616e-016 0
		 0.99990642422324305 0.013680014513432644 -2.1106203566090134e-018 0 -7.1349367595926833e-018 3.6722539590885936e-016 -1 0
		 -3.3895308271199531 0.022825998061941761 -0.89845319404658874 1;
	setAttr ".pm[14]" -type "matrix" 0.020828813681835413 -0.99978305672811185 -4.8972675057199995e-016 0
		 0.99978305672811218 0.020828813681835416 4.6614143571586482e-018 0 5.5400241479984552e-018 -4.8971759937953885e-016 1 0
		 -3.9751196191041296 -0.16007848963956314 0.89845319404658885 1;
	setAttr ".pm[15]" -type "matrix" -0.99336306190290524 -0.11502098611507261 4.2456116348392267e-016 0
		 -0.11502098611507265 0.99336306190290558 5.5813229231260229e-016 0 -4.85940303967911e-016 5.0559455914845095e-016 -1 0
		 0.50600770003142193 -4.8632544457901528 -0.6272842245343464 1;
	setAttr ".pm[16]" -type "matrix" 0.038433122101204184 -0.99926117463131381 -5.4693536338636896e-016 0
		 0.99926117463131403 0.038433122101204309 -5.5342559231635427e-016 0 5.7403714105156596e-016 -5.2526140030144192e-016 1 0
		 -4.7832292476579505 -0.89101247843760911 0.47970076216395274 1;
	setAttr ".pm[17]" -type "matrix" -0.99336306190290524 -0.11502098611507261 4.2456116348392267e-016 0
		 -0.11502098611507265 0.99336306190290558 5.5813229231260229e-016 0 -4.85940303967911e-016 5.0559455914845095e-016 -1 0
		 1.1791666045917926 -4.7302247430189777 -0.40173253654781799 1;
	setAttr ".pm[18]" -type "matrix" 0.089308102502392336 0.9956471854737996 -0.026659799052571279 0
		 -0.99577356826085461 0.089831244346531169 0.019114086224522594 0 0.021425769075270405 0.024840080459917029 0.99946180858613975 0
		 0.28066901560382823 0.33363617670481721 -0.01430879986182612 1;
	setAttr ".pm[19]" -type "matrix" 0.0076811736966786136 0.99961812114829818 -0.026544518126864147 0
		 -0.99996288947856626 0.0077819696633691276 0.0036960267631687025 0 0.0039011839635045356 0.026515143222399791 0.99964079945927453 0
		 -0.46172529473960067 0.32950048524353914 -0.021430722695327031 1;
	setAttr ".pm[20]" -type "matrix" -0.0067258172119943746 0.99962500565974421 0.026544518126864716 0
		 0.99996987016507122 0.0068262836313713587 -0.0036960267631686991 0 -0.0038758411836431355 0.02651885954449559 -0.99964079945927464 0
		 1.9761060974863678 0.33989982858106127 0.021430722695327153 1;
	setAttr ".pm[21]" -type "matrix" -0.13216372009101685 -0.99122790068263467 1.2246121845598271e-016 0
		 -0.99122790068263467 0.13216372009101662 9.207610410224256e-019 0 -1.7097614231744364e-017 -1.2126528528066486e-016 -1 0
		 0.25692838698063314 0.1916679511247287 -2.7635531218080017e-017 1;
	setAttr ".pm[22]" -type "matrix" -0.070688863933926385 -0.99749841328983102 1.2246121845598274e-016 0
		 -0.99749841328983102 0.070688863933926163 9.2076104102242406e-019 0 -9.575102086056742e-018 -1.2208978354743762e-016 -1 0
		 -0.45348673640250919 0.21403646878204113 -2.1789484349130649e-017 1;
	setAttr ".pm[23]" -type "matrix" -0.0075185844740171155 0.99997173504429904 1.2246121845598271e-016 0
		 0.99997173504429893 0.0075185844740173376 9.2076104102242522e-019 0 5.0074178554068064e-033 1.2246467991473525e-016 -1 0
		 1.9815467348302811 -0.14138517676453838 -1.7314690417157579e-017 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 24 ".ma";
	setAttr -s 24 ".dpf[0:23]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4;
	setAttr -s 24 ".lw";
	setAttr -s 24 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 4;
	setAttr ".ucm" yes;
	setAttr ".nw" 2;
	setAttr -s 24 ".ifcl";
	setAttr -s 24 ".ifcl";
createNode tweak -n "tweak1";
	rename -uid "F8DD3F71-472C-DE35-1453-7AB8EE5B01BE";
createNode objectSet -n "skinCluster1Set";
	rename -uid "F4609EE9-4B9A-1E0F-6612-A79D2DC73DD8";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster1GroupId";
	rename -uid "9C10DCF5-4EAD-0332-4700-EA8CF3C8D9A5";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster1GroupParts";
	rename -uid "48395F1C-4537-93E2-759B-AF93EAC2DB07";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet1";
	rename -uid "1E826330-4076-C3C7-7630-D9A4956FF1EA";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId52";
	rename -uid "B859EA40-49C9-38EC-C161-46BC89D0A9BE";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts51";
	rename -uid "C4848684-499E-D742-2C91-63B0D561CEE0";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose1";
	rename -uid "12E68AB9-44AD-C71C-9B21-5CA63C61B7DA";
	setAttr -s 24 ".wm";
	setAttr -s 24 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.061633440787063565
		 0.78482764313806763 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.70444354476635773 0.70976002440050723 4.3460267102241426e-017 4.3134726613906759e-017 1
		 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.5826126425744016 1.1796119636642288e-016
		 1.1813480725505659e-032 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.7461861905152547 0.6657373123720286 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.98294727574032748 1.8041124150158796e-016
		 -1.1959724528331285e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.055092765490682531 0.99848124027975038 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.0709767194093041 1.6653345369377348e-016
		 -1.3115597501708843e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.026373558121956738 0.9996521572186936 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.1432958108147606 1.9428902930940239e-016
		 -1.398441955657939e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.011562830843186225 0.99993314823686685 1
		 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.64265653605863104 -4.109559914589056e-015
		 -7.8676055183168682e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.0092580687745589547 0.9999571431629285 6.1229715732950599e-017 5.6689321455248415e-019 1
		 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.0235673126334652 -0.25668406292046653
		 1.2811016756117419e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.073593501021039426 0.99728832170414305 4.5063022731731701e-018 6.1066297550100729e-017 1
		 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.91653253990161998 7.2164496600635175e-016
		 -2.2442280132871766e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.022240460735034013 0.99975265036222505 1
		 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.2853130721172648 -8.0491169285323849e-016
		 -3.1464567143373575e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.018871280314507386 0.99982192153367555 1
		 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.61886275877897168 -2.775557561562891e-017
		 -1.5154882975783507e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.070232333524230042 0.99753066084594177 4.3004901223548839e-018 6.1081136542816334e-017 1
		 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.055600476031033047
		 0.65251335860253334 -2.3117459467551122e-018 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0.64841521516589729 0.76128687676943652 4.6615376843428795e-017 3.9703980888567921e-017 1
		 1 1 yes;
	setAttr ".xm[11]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.61920584081148422 6.9388939039072259e-017
		 -3.4840531330243199e-018 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.99926117463131414 0.038433122101203927 4.0495874770667756e-010 1.0528927440373742e-008 1
		 1 1 yes;
	setAttr ".xm[12]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.61920584081148611 -1.8735013682586979e-016
		 -8.1691442462240028e-018 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.73580379757528247 0.67719478104441466 1
		 1 1 yes;
	setAttr ".xm[13]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.36787068826814279 -0.014009699947487736
		 -0.89845319404658874 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.99966041792264992 0.026058565553631764 1.5956269447813308e-018 6.1211546552163931e-017 1
		 1 1 yes;
	setAttr ".xm[14]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.58874519181642926 3.6429192995512949e-016
		 1.110223024625157e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.99985112961343536 0.017254524355581224 1.0565349011436297e-018 6.1223224275247945e-017 1
		 1 1 yes;
	setAttr ".xm[15]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.91181698280530576 -0.001528037395946211
		 0.27116896951224501 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.65738626118104937 0.75355378282535423 2.1346441340334113e-016 1.8622237167503045e-016 1
		 1 1 yes;
	setAttr ".xm[16]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.65413422663718113 -2.8620508740841489e-016
		 -0.14758346237039366 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.65072496127721269 0.75931352205184 4.6494543716504454e-017 3.9845412047671197e-017 1
		 1 1 yes;
	setAttr ".xm[17]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.67315890456037097
		 -0.13302970277117507 -0.22555168798652858 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[18]" -type "matrix" "xform" 1 1 1 0.024848340993060755 -0.021427408712384601
		 -0.0012120488596379844 0 -0.53280170058589238 -0.30001236089496436 -3.6740917747465871e-017 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.041558643836874569 0.99913606637056185 2.830322124032706e-016 1.1772605659565567e-017 1
		 1 1 yes;
	setAttr ".xm[19]" -type "matrix" "xform" 1 1 1 0 0.015419682098555716 0 0 0.71406076541063646
		 -0.032679183195979226 -2.1788393279642392e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 -0.041081192903268532 0.99915581146768317 1 1 1 yes;
	setAttr ".xm[20]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.5140550518963403 -0.012287788164718332
		 -7.602947074966053e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.00047785902714697403 0.99999988582536858 2.832769125393582e-016 1.3536644529467017e-019 1
		 1 1 yes;
	setAttr ".xm[21]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.557616038520516 0.28139214327569578
		 3.4460598756779495e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.99754854507839075 0.069977855154225652 1
		 1 1 yes;
	setAttr ".xm[22]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.69632949056255489 -0.049969173987853652
		 -5.8460468689493756e-018 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.030896914360061804 0.99952257637485453 1
		 1 1 yes;
	setAttr ".xm[23]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.5109395341849079 -0.08184637619431788
		 -4.4747939319730676e-018 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.99923439163354177 0.039123274105646741 1
		 1 1 yes;
	setAttr -s 24 ".m";
	setAttr -s 24 ".p";
	setAttr ".bp" yes;
createNode skinBinding -n "skinBinding1";
	rename -uid "B6A7C56C-4EB9-B071-FD6E-C1815E3C207F";
	setAttr -s 24 ".l[0:23]"  0.62783563846068846 0.31851160785835353 
		0.16049637335047218 0.29981176322173336 0.30640305924906475 0.2062579960143649 0.14177600846920047 
		0.46508749697536556 0.25036506239689338 0.20635108862642459 1.0496288360848691 0.13781691384386896 
		0.075014452041380131 0.71005268329873439 0.30894727700835611 1.0216983172764764 0.77833024224251168 
		0.73854228065644878 0.45056062739259561 0.67754975004595941 0.40762547668842453 0.44213912173208431 
		0.67268851123048323 0.30014765931339321;
	setAttr -s 24 ".rr[0:23]"  1.2919166140063472 1.6947023767236233 0.77250998276858884 
		0.41355700887201613 0.43913941354537434 0.40197111020364179 1.2070773616247295 0.44363223292751613 
		0.41580637329892434 0.36103521114528975 1.2596751133650395 1.3312119055278695 0.8825866339220223 
		0.88846018381633918 0.59855495448710627 1.0177250661237434 1.1692966922942323 1.1877024242797112 
		1.0230321945352467 3.130513701092613 0.48398926079633658 0.95559596863940621 1.8926911564388584 
		0.58949929885014296;
	setAttr -s 24 ".lr[0:23]"  1.2919166140063472 1.3696377900246142 0.77250998276858884 
		0.43899193204401321 0.43913941354537434 0.27264939586200132 0.74084419159222814 0.44363223292751613 
		0.41580637329892434 0.36103521114528975 0.98458381573854403 1.3312119055278695 0.8825866339220223 
		0.88846018381633918 0.59855495448710627 1.0177250661237434 2.077750761193387 1.1877024242797112 
		1.0230321945352467 1.9553674700373536 0.42195342719915335 0.95559596863940621 1.8926911564388584 
		0.58949929885014296;
	setAttr -s 24 ".bpm";
	setAttr ".bpm[0]" -type "matrix" -0.0075185844740173202 0.9999717350442997 0 0 0.9999717350442997 0.0075185844740170982 1.2246467991473535e-016 0
		 1.2246121845598269e-016 9.2076104102241058e-019 -1 0 -0.061633440787063565 0.78482764313806763 0 1;
	setAttr ".bpm[1]" -type "matrix" -0.99264587755052602 -0.12105437531104002 -1.2167208581277733e-016 0
		 -0.12105437531104024 0.99264587755052602 -1.3910476648437772e-017 0 1.2246121845598269e-016 9.2076104102241058e-019 -1 0
		 -0.073532447629906864 2.3673955532362361 2.6325994298675597e-033 1;
	setAttr ".bpm[2]" -type "matrix" -0.99993827731994256 -0.011110425303554924 -1.2246388986814519e-016 0
		 -0.011110425303555146 0.99993827731994256 -4.3989201105426118e-019 0 1.2246121845598269e-016 9.2076104102241058e-019 -1 0
		 -1.0492510087430631 2.2484054848078023 2.7284502718024179e-032 1;
	setAttr ".bpm[3]" -type "matrix" -0.99913307309235211 0.041630544712181333 -1.2231672174687233e-016 0
		 0.041630544712181111 0.99913307309235211 6.0180900389404182e-018 0 1.2246121845598269e-016 9.2076104102241058e-019 -1 0
		 -2.1201616245989658 2.236506477964959 2.7284502718024179e-032 1;
	setAttr ".bpm[4]" -type "matrix" -0.99982857632513122 0.018515344006028066 -1.2242317749646417e-016 0
		 0.018515344006027844 0.99982857632513122 3.1880147878909453e-018 0 1.2246121845598269e-016 9.2076104102241058e-019 -1 0
		 -3.2624662815119301 2.2841025053363326 5.1936406006180798e-032 1;
	setAttr ".bpm[5]" -type "matrix" 1.0000000000000004 -2.9143354396410359e-016 1.2246121845598271e-016 0
		 6.5919492087118682e-017 1.0000000000000002 -1.215439188737129e-016 0 -1.2246121845598269e-016 1.2154391887371295e-016 1 0
		 -3.9050126510254715 2.2960015121791764 1.0124021258249404e-031 1;
	setAttr ".bpm[6]" -type "matrix" 0.99966284557369434 -0.02596526871620132 2.4486070222101123e-016 0
		 0.025965268716201112 0.99966284557369423 4.100189046884877e-018 0 -2.4488460886181862e-016 2.2590672812072742e-018 1 0
		 0.97358015454030977 2.2365064779649595 -4.6671207146445678e-032 1;
	setAttr ".bpm[7]" -type "matrix" 0.99982857632513134 0.01851534400602169 2.448008024344044e-016 0
		 -0.018515344006021898 0.99982857632513122 -6.7928027984487996e-018 0 -2.4488460886181862e-016 2.2590672812072742e-018 1 0
		 1.8898036814392487 2.212708464279272 -4.6671207146445678e-032 1;
	setAttr ".bpm[8]" -type "matrix" 0.99981514002984684 -0.019227214231342462 2.4488277507091218e-016 0
		 0.019227214231342261 0.99981514002984673 2.4497991664475883e-018 0 -2.4488460886181862e-016 2.2590672812072742e-018 1 0
		 3.1748964204663341 2.236506477964959 1.0124021258249404e-031 1;
	setAttr ".bpm[9]" -type "matrix" -0.99264587755052613 -0.12105437531103957 -3.6527490739848043e-016 0
		 -0.12105437531103981 0.99264587755052602 -3.1886807172855402e-017 0 3.664486685247254e-016 1.2565818043537429e-017 -1 0
		 3.7936447762941889 2.2246074711221162 1.2589211587065065e-031 1;
	setAttr ".bpm[10]" -type "matrix" 0.038433122101204295 0.99926117463131436 5.6266477209878745e-018 0
		 -0.99926117463131447 0.038433122101204295 -2.4480003319432692e-016 0 -2.4483541835842906e-016 3.785938955225511e-018 1 0
		 -0.097330461315593531 3.0218409295926221 -6.2266783143137252e-033 1;
	setAttr ".bpm[11]" -type "matrix" -0.038433122101203594 0.99926117463131436 -1.3192931232552249e-017 0
		 0.99926117463131447 0.038433122101203566 2.1073424705853634e-008 0 2.105785512558291e-008 8.099174916274087e-010 -1 0
		 -0.073532447629906961 3.6405892854204764 -2.4715605780431189e-032 1;
	setAttr ".bpm[12]" -type "matrix" -0.99264587755052613 -0.12105437531104046 -2.1001037136468521e-008 0
		 -0.12105437531104049 0.99264587755052602 -1.7451842383978203e-009 0 2.105785512558291e-008 8.099174916274087e-010 -1 0
		 -0.097330461315593433 4.259337641248333 2.2149434498892755e-025 1;
	setAttr ".bpm[13]" -type "matrix" -0.013680014513432648 0.99990642422324316 -7.1349367595926509e-018 0
		 0.99990642422324327 0.013680014513432641 3.6722539590885946e-016 0 3.672886385456161e-016 -2.1106203566090496e-018 -1 0
		 -0.069192693010170864 3.3889013891551936 -0.89845319404658874 1;
	setAttr ".bpm[14]" -type "matrix" 0.02082881368183542 0.99978305672811207 5.5400241479984937e-018 0
		 -0.99978305672811241 0.020828813681835416 -4.8971759937953904e-016 0 -4.8972675057200005e-016 4.6614143571586836e-018 1 0
		 -0.077246735778932943 3.9775914886829868 -0.89845319404658885 1;
	setAttr ".bpm[15]" -type "matrix" -0.99336306190290624 -0.11502098611507269 -4.859403039679113e-016 0
		 -0.11502098611507273 0.99336306190290591 5.0559455914845095e-016 0 4.2456116348392277e-016 5.5813229231260239e-016 -1 0
		 -0.056726963833634063 4.8891788317224609 -0.62728422453434385 1;
	setAttr ".bpm[16]" -type "matrix" 0.038433122101204337 0.99926117463131447 5.7403714105156606e-016 0
		 -0.9992611746313147 0.038433122101204212 -5.2526140030144231e-016 0 -5.4693536338636916e-016 -5.5342559231635447e-016 1 0
		 -0.70651974210143409 4.813939667923032 -0.47970076216395052 1;
	setAttr ".bpm[17]" -type "matrix" -0.99336306190290624 -0.11502098611507269 -4.859403039679113e-016 0
		 -0.11502098611507273 0.99336306190290591 5.0559455914845095e-016 0 4.2456116348392277e-016 5.5813229231260239e-016 -1 0
		 0.62726543434299775 4.8344594398683292 -0.40173253654781504 1;
	setAttr ".bpm[18]" -type "matrix" 0.0893081025023926 -0.99577356826085517 0.021425769075270412 0
		 0.9956471854737996 0.089831244346530947 0.024840080459917039 0 -0.026659799052571292 0.019114086224522622 0.99946180858614042 0
		 -0.35763140725218256 0.24978533389000124 0 1;
	setAttr ".bpm[19]" -type "matrix" 0.0076811736966789033 -0.99996288947856715 0.0039011839635045373 0
		 0.99961812114829829 0.0077819696633688457 0.026515143222399805 0 -0.026544518126864161 0.0036960267631687155 0.99964079945927542 0
		 -0.32639693199461195 -0.46419311412874875 0.01448754752544662 1;
	setAttr ".bpm[20]" -type "matrix" -0.0067258172119946625 0.99996987016507188 -0.0038758411836431364 0
		 0.99962500565974399 0.0068262836313710742 0.026518859544495593 0 0.026544518126864727 -0.0036960267631687116 -0.99964079945927542 0
		 -0.32705030787294598 -1.978287601847363 0.02006834235069356 1;
	setAttr ".bpm[21]" -type "matrix" -0.13216372009101668 -0.99122790068263511 -1.7097614231744361e-017 0
		 -0.99122790068263511 0.1321637200910169 -1.2126528528066491e-016 0 1.2246121845598269e-016 9.2076104102241058e-019 -1 0
		 0.22394323224185153 0.2293430362097213 -6.1629758220391547e-032 1;
	setAttr ".bpm[22]" -type "matrix" -0.070688863933926191 -0.99749841328983146 -9.5751020860567343e-018 0
		 -0.99749841328983146 0.070688863933926413 -1.2208978354743769e-016 0 1.2246121845598269e-016 9.2076104102241058e-019 -1 0
		 0.1814445757908473 -0.46748229482811876 -7.1644593931205174e-032 1;
	setAttr ".bpm[23]" -type "matrix" -0.007518584474017348 0.99997173504430037 -7.7037197775489434e-033 0
		 0.99997173504430026 0.0075185844740171259 1.2246467991473544e-016 0 1.2246121845598269e-016 9.2076104102241058e-019 -1 0
		 0.15627960703381527 -1.9804277101047265 -8.0118685686509011e-032 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 24 ".pm";
	setAttr -s 24 ".lm";
	setAttr ".lm[0]" -type "matrix" 0.0014291380074351601 0.037776918508403784 -0.99928517550925622 0
		 0.037776918508403784 0.99857086199256517 0.037803941691771717 0 0.99928517550925622 -0.037803941691771717 3.3306690738754696e-016 0
		 0.075270814383058493 -0.002847568990082509 -2.6337525231690507e-018 1;
	setAttr ".lm[1]" -type "matrix" 0.96717615086232711 0.098770725035478124 -0.23412525937860149 0
		 0.2295231845844227 0.05579384545210872 0.9717027089330823 0 0.10903852961846344 -0.99354486093262695 0.031292305332322759 0
		 -0.027962566332388999 0.014086553942495805 0.005796129009794232 1;
	setAttr ".lm[2]" -type "matrix" -2.2204460492503131e-016 -1.5549680088809477e-016 -1 0
		 -1.5549680088809477e-016 1 -1.5549680088809475e-016 0 1 1.5549680088809475e-016 -2.2204460492503131e-016 0
		 0.80661911919351936 1.2542669256976506e-016 -1.2578110988227345e-016 1;
	setAttr ".lm[3]" -type "matrix" -4.0309800867708346e-016 -3.0850349861869222e-016 -1.815392041671902 0
		 -2.812352145662744e-016 1.6549315409629846 -2.8123521456627435e-016 0 1 1.699376727103932e-016 -2.2204460492503131e-016 0
		 0.24496769539427221 -5.2235299934816764e-016 -8.3519326825732737e-017 1;
	setAttr ".lm[4]" -type "matrix" -2.2204460492503131e-016 6.3946442368620558e-015 -1 0
		 6.3946442368620558e-015 1 6.3946442368620542e-015 0 1 -6.3946442368620542e-015 -2.2204460492503131e-016 0
		 0.084458069883596928 -2.7824964554667986e-015 -3.7030563340482476e-017 1;
	setAttr ".lm[5]" -type "matrix" 0.00034281796366109063 0.018512170037710413 -0.99982857632513134 0
		 0.027644780717484049 1.4928181587441034 0.0276495204998965 0 0.99982857632513134 -0.018515344006021384 -2.2204460492503131e-016 0
		 -0.20622263851071707 0.0038189377501985536 4.5798475237638336e-017 1;
	setAttr ".lm[6]" -type "matrix" -2.2204460492503131e-016 -7.873642610482905e-016 -1 0
		 -7.873642610482905e-016 1 -7.873642610482903e-016 0 1 7.873642610482903e-016 -2.2204460492503131e-016 0
		 0.5422705328780818 4.269644374078135e-016 -1.3086409403806336e-016 1;
	setAttr ".lm[7]" -type "matrix" -2.991977389891967e-016 8.4383472584560011e-016 -1.3474668258218412 0
		 7.5359275012613707e-016 1.2033650664912519 7.5359275012613697e-016 0 1 -6.2623784843900104e-016 -2.2204460492503131e-016 0
		 0.71311973427357411 -4.4658256807087525e-016 -1.7296880872625878e-016 1;
	setAttr ".lm[8]" -type "matrix" -2.9104286031654421e-016 5.8785824520039266e-017 -1.3107405172704318 0
		 5.5771461565782426e-017 1.2435296260366686 5.5771461565782413e-017 0 1 -4.484932276485856e-017 -2.2204460492503131e-016 0
		 0.27436433140516692 -1.2305054454354953e-017 -6.7987966063352323e-017 1;
	setAttr ".lm[9]" -type "matrix" 0.019633001280680906 -0.13873552732229114 -0.99013483865548257 0
		 -0.13873552732229114 0.98036699871931854 -0.14011781214635563 0 0.99013483865548257 0.14011781214635563 -4.4408920985006262e-016 0
		 -0.2043154018435081 -0.028913463072353342 9.1638291899809141e-017 1;
	setAttr ".lm[10]" -type "matrix" 0.072339533122848451 0.0099106433862139499 -1.1075840289535852 0
		 0.011820362296429764 1.0900582353763604 0.010525845106219008 0 0.9978151729201753 -0.011448406801155015 0.065067769840344444 0
		 0.15590577225483646 0.0012186428337200086 -0.22462798721377508 1;
	setAttr ".lm[11]" -type "matrix" 2.2395807100729136e-016 3.051725474639797e-016 -1.0086174851350524 0
		 1.5948716179433281e-016 0.52711667998024647 1.5948716179433288e-016 0 1 -3.0256519638177565e-016 2.2204460492503131e-016 0
		 0.081853739916657065 -2.4766092892466134e-017 -5.4655048926810749e-017 1;
	setAttr ".lm[12]" -type "matrix" 0.99314176570311385 0.082529987999606383 0.082814457052414248 0
		 0.082529987999606383 0.0068582342968863674 -0.99656498318128461 0 -0.082814457052414248 0.99656498318128461 2.2204460492503131e-016 0
		 -0.0062122811168912641 0.074756776136971292 1.6656554367195959e-017 1;
	setAttr ".lm[13]" -type "matrix" -6.8997894270941404e-017 -1.9227277243490239e-016 0.31073889092796059 0
		 -7.5033033778627678e-016 1.212635642793622 7.5033033778627668e-016 0 -1 -6.1875992367970917e-016 -2.2204460492503131e-016 0
		 -0.31015096777324924 -1.9190898914856367e-016 -7.8720044634264799e-017 1;
	setAttr ".lm[14]" -type "matrix" -0.085479697656038342 0.00064578278081400386 0.28743269161023149 0
		 0.0043097607880792956 2.001265699813199 -0.0032146165227828023 0 -0.95850977707066187 0.0016062859229029867 -0.28505512994065585 0
		 0.042582531855355127 -0.00066614744757640862 -0.038082688746173377 1;
	setAttr ".lm[15]" -type "matrix" 4.1961075198930677 0.49511075255855785 0.13209842543434575 0
		 0.03235832382418205 -0.27424206891281883 9.0174644575310462e-006 0 0.031037574462798433 0.0036293148915419568 -0.99951162926945791 0
		 0.03452809828236518 0.25833490605580745 -0.11726636888454435 1;
	setAttr ".lm[16]" -type "matrix" 1.0410098338735085 -0.19591957616869368 0.15424105591958753 0
		 -0.034298434538779884 -0.17143439441588487 0.013729507581586132 0 0.12652673804490749 -0.10431582265792318 -0.98646297127814597 0
		 -0.017754390921927349 0.12489271267331925 0.27247165612393931 1;
	setAttr ".lm[17]" -type "matrix" -0.17771653887661296 0.019019420846544666 0.014569641583695747 0
		 0.19706130255751786 1.8570045520464871 -0.020460246092517103 0 -0.081950971589281815 -0.0022843274448565904 -0.99663374421283879 0
		 -0.14697104902730349 -0.020821238446574217 -0.39266948569939852 1;
	setAttr ".lm[18]" -type "matrix" 0.001684676023488825 0.036811233732103675 -0.80519057335129995 0
		 0.045669616080370533 0.99790991772314752 0.045717417652930172 0 0.9989544122346864 -0.045717417652930172 0 0
		 0.28721548027396582 -0.013144493789959848 -1.0894196639821196e-017 1;
	setAttr ".lm[19]" -type "matrix" 9.9759168951719089e-005 0.012291949673938336 -1.5146176961770934 0
		 0.0026045614137877029 0.32092426347699043 0.0026046471889535827 0 0.99996706841384364 -0.00811554605822392 0 0
		 0.79404825896603282 -0.33842824759420509 -3.9898639947466563e-017 1;
	setAttr ".lm[20]" -type "matrix" -0.99987523193099492 -0.0070579597296331819 0.014131729384325104 0
		 -0.0045367028173484694 0.63361422466852058 -0.0045368191055400412 0 -0.014080470967432855 -0.0072601411108572994 -0.99987450747000461 0
		 -0.054200027243198945 -0.00014354126390061909 0.034151599624360457 1;
	setAttr ".lm[21]" -type "matrix" 0.13293647270146633 0.99425478477205398 0.14971975901912157 0
		 -0.017929574473021122 -0.24985186791034339 1.6751289955626014 0 0.99131615485586255 -0.13119466518443479 -0.0089577312381046263 0
		 0.26690688376572858 -0.019153456365420707 -1.1967656943781386e-017 1;
	setAttr ".lm[22]" -type "matrix" 0.0045780514849084143 0.084513930850877286 -1.5624717487482505 0
		 0.030244827417485142 0.55833999713300253 0.030289168635504266 0 0.99853607015266832 -0.05408989373316779 5.5511151231257827e-016 0
		 -0.023012074786822604 -0.61988200609240696 6.7319069588802286e-018 1;
	setAttr ".lm[23]" -type "matrix" 0.56146559744622448 0.013108247464274981 0.018785998199768488 0
		 -0.011808972598838523 0.49721488148219684 0.0060000083490672432 0 -0.033137796550654755 -0.012846640892082014 0.99936822555930305 0
		 -0.059751933774713245 -0.0050829577385781907 -0.061893391538258638 1;
	setAttr ".otw" -type "doubleArray" 1563 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.049101710319519043 0.048461079597473145
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0.050625801086425781 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 1 0 0 0 1 0 0 1 0 0 0 1 1 0.93269968032836914
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.99920403957366943 0.80664104223251343
		 0 0 0 0 0.80664104223251343 1 0 0 0 0 0 0 0 0 0 0 0.12372589111328125 0.99814897775650024
		 0.81911647319793701 0.68503773212432861 0 0 0 1 0.93269968032836914 1 1 1 0.80750429630279541
		 0.99931758642196655 1 0 0 0 0 ;
	setAttr -s 3 ".fc[0:2]"  0 1 2 0.5 1 2 1 0 2;
	setAttr ".ci" 16;
createNode animCurveTU -n "joint2_scaleX";
	rename -uid "8260243E-45AE-C210-FA49-65891406D955";
	setAttr ".tan" 18;
	setAttr -s 11 ".ktv[0:10]"  1 1 5 1 10 1 15 1 20 1 25 1 27 1 30 1 32 1
		 35 1 40 1;
createNode animCurveTU -n "joint2_scaleZ";
	rename -uid "4C2A74A7-45D0-5A17-6572-34A6FC910E33";
	setAttr ".tan" 18;
	setAttr -s 11 ".ktv[0:10]"  1 1 5 1 10 1 15 1 20 1 25 1 27 1 30 1 32 1
		 35 1 40 1;
createNode animCurveTL -n "joint2_translateY";
	rename -uid "2799DBE0-462C-28DA-2A3B-92AC846CA4D4";
	setAttr ".tan" 18;
	setAttr -s 11 ".ktv[0:10]"  1 1.1796119636642288e-016 5 1.1796119636642288e-016
		 10 2.5806396466500615e-016 15 1.2108458711153277e-016 20 1.2108458711153277e-016
		 25 1.2108458711153277e-016 27 1.2108458711153277e-016 30 1.2108458711153277e-016
		 32 1.4825835933374917e-016 35 1.2108458711153277e-016 40 1.2108458711153277e-016;
createNode animCurveTU -n "joint2_scaleY";
	rename -uid "B8C160B5-4554-96AF-A520-FF94F4387673";
	setAttr ".tan" 18;
	setAttr -s 11 ".ktv[0:10]"  1 1 5 1 10 1 15 1 20 1 25 1 27 1 30 1 32 1
		 35 1 40 1;
createNode animCurveTL -n "joint2_translateZ";
	rename -uid "B760FD33-4A8F-C39F-ACE7-6B9A0D4CD4C5";
	setAttr ".tan" 18;
	setAttr -s 11 ".ktv[0:10]"  1 1.1813480725505659e-032 5 1.1813480725505659e-032
		 10 -1.1440259215647186 15 -0.025504420925973603 20 -0.025504420925973603 25 -0.025504420925973603
		 27 -0.025504420925973603 30 -0.025504420925973603 32 -0.24739511007108728 35 -0.025504420925973603
		 40 -0.025504420925973603;
createNode animCurveTL -n "joint2_translateX";
	rename -uid "08614648-459A-12A1-0CD9-728D06580D71";
	setAttr ".tan" 18;
	setAttr -s 11 ".ktv[0:10]"  1 1.5826126425744016 5 1.5826126425744016
		 10 1.5826126425744016 15 1.5826126425744016 20 1.5826126425744016 25 1.5826126425744016
		 27 1.5826126425744016 30 1.5826126425744016 32 1.5826126425744016 35 1.5826126425744016
		 40 1.5826126425744016;
createNode animCurveTU -n "joint2_visibility";
	rename -uid "CFA10157-4FF0-4496-F45E-1A9E0646599A";
	setAttr ".tan" 9;
	setAttr -s 11 ".ktv[0:10]"  1 1 5 1 10 1 15 1 20 1 25 1 27 1 30 1 32 1
		 35 1 40 1;
	setAttr -s 11 ".kot[0:10]"  5 5 5 5 5 5 5 5 
		5 5 5;
createNode animCurveTA -n "joint2_rotateX";
	rename -uid "F12BBC58-4D8D-C4BC-D1BD-3AA98EE9C371";
	setAttr ".tan" 18;
	setAttr -s 11 ".ktv[0:10]"  1 0 5 -29.076733958780135 10 -83.222453112098421
		 15 -35.964598854786594 20 -3.8427202579225086 25 -16.262964283251758 27 -8.9015337565417667
		 30 -20.870642692427811 32 -25.4309830279438 35 -4.1035916044506155 40 -4.1035916044506155;
createNode animCurveTA -n "joint2_rotateZ";
	rename -uid "CE3ACAA1-4D00-51A5-C716-80AEF28FE5DB";
	setAttr ".tan" 18;
	setAttr -s 11 ".ktv[0:10]"  1 0 5 0 10 0 15 0 20 0 25 0 27 0 30 0 32 0
		 35 0 40 0;
createNode animCurveTA -n "joint2_rotateY";
	rename -uid "BC6EE5E1-47EB-2005-636A-72BB13FC247C";
	setAttr ".tan" 18;
	setAttr -s 11 ".ktv[0:10]"  1 0 5 0 10 0 15 0 20 0 25 0 27 0 30 0 32 0
		 35 0 40 0;
createNode animCurveTU -n "joint3_visibility";
	rename -uid "9409C541-4C40-D181-5D9F-27BF7FB1E57E";
	setAttr ".tan" 9;
	setAttr -s 12 ".ktv[0:11]"  1 1 20 1 30 1 40 1 43 1 45 1 47 1 50 1 53 1
		 55 1 56 1 58 1;
	setAttr -s 12 ".kot[0:11]"  5 5 5 5 5 5 5 5 
		5 5 5 5;
createNode animCurveTL -n "joint3_translateX";
	rename -uid "8A542490-458D-CAAE-A142-0B8DADBD8AC9";
	setAttr ".tan" 18;
	setAttr -s 12 ".ktv[0:11]"  1 0.98294727574032748 20 0.98294727574032748
		 30 0.98294727574032748 40 0.98294727574032748 43 0.98294727574032748 45 0.98294727574032748
		 47 0.98294727574032748 50 0.98294727574032748 53 0.98294727574032748 55 0.98294727574032748
		 56 0.98294727574032748 58 0.98294727574032748;
createNode animCurveTU -n "joint3_scaleY";
	rename -uid "DD91076A-47BF-A37A-9E80-BDB657619A74";
	setAttr ".tan" 18;
	setAttr -s 12 ".ktv[0:11]"  1 1 20 1 30 1 40 1 43 1 45 1 47 1 50 1 53 1
		 55 1 56 1 58 1;
createNode animCurveTU -n "joint3_scaleX";
	rename -uid "1F49A33C-41DB-35DF-2576-BC8529164036";
	setAttr ".tan" 18;
	setAttr -s 12 ".ktv[0:11]"  1 1 20 1 30 1 40 1 43 1 45 1 47 1 50 1 53 1
		 55 1 56 1 58 1;
createNode animCurveTU -n "joint3_scaleZ";
	rename -uid "E722E9FC-4B4D-AC5F-CD85-AEB414B149B1";
	setAttr ".tan" 18;
	setAttr -s 12 ".ktv[0:11]"  1 1 20 1 30 1 40 1 43 1 45 1 47 1 50 1 53 1
		 55 1 56 1 58 1;
createNode animCurveTL -n "joint3_translateZ";
	rename -uid "01087285-4365-BB5A-2556-3487BA6ECFB1";
	setAttr ".tan" 18;
	setAttr -s 12 ".ktv[0:11]"  1 -1.1959724528331285e-016 20 -1.1959724528331285e-016
		 30 -1.1959724528331285e-016 40 -1.1959724528331285e-016 43 -1.1959724528331285e-016
		 45 -1.1959724528331285e-016 47 -1.1959724528331285e-016 50 -1.1959724528331285e-016
		 53 -1.1959724528331285e-016 55 -1.1959724528331285e-016 56 -1.1959724528331285e-016
		 58 -1.1959724528331285e-016;
createNode animCurveTL -n "joint3_translateY";
	rename -uid "5AFFAFA8-4B68-FC07-3905-0AB81BCEE2D3";
	setAttr ".tan" 18;
	setAttr -s 12 ".ktv[0:11]"  1 1.8041124150158796e-016 20 1.8041124150158796e-016
		 30 1.8041124150158796e-016 40 1.8041124150158796e-016 43 1.8041124150158796e-016
		 45 1.8041124150158796e-016 47 1.8041124150158796e-016 50 1.8041124150158796e-016
		 53 1.8041124150158796e-016 55 1.8041124150158796e-016 56 1.8041124150158796e-016
		 58 1.8041124150158796e-016;
createNode animCurveTA -n "joint3_rotateZ";
	rename -uid "FE63EAEE-4C94-8CA5-1AC0-33AE1131EF51";
	setAttr ".tan" 18;
	setAttr -s 12 ".ktv[0:11]"  1 -11.503230860883264 20 -11.503230860883264
		 30 -11.503230860883264 40 -11.503230860883264 43 23.332462993223803 45 16.736327809682741
		 47 41.791511398265968 50 -44.157074028134758 53 29.527880375208557 55 -24.511480131740289
		 56 -21.678181932202271 58 -187.71086173520536;
createNode animCurveTA -n "joint3_rotateX";
	rename -uid "8B4B8E36-4A1C-1710-6343-76B2030D3A00";
	setAttr ".tan" 18;
	setAttr -s 12 ".ktv[0:11]"  1 35.238985186632519 20 35.238985186632519
		 30 35.238985186632519 40 35.238985186632519 43 18.197231654429778 45 -5.8119120238191924
		 47 -9.3066991570603932 50 5.4587902922568325 53 -7.7782054217050804 55 1.8808213190860557
		 56 3.0863206816058639 58 -172.59454210490904;
createNode animCurveTA -n "joint3_rotateY";
	rename -uid "A16EB52C-42CD-5260-672B-C0B9242F69F3";
	setAttr ".tan" 18;
	setAttr -s 12 ".ktv[0:11]"  1 68.681158523437503 20 68.681158523437503
		 30 68.681158523437503 40 68.681158523437503 43 12.085171503374225 45 -9.5617800985927168
		 47 -6.2142922574354476 50 -9.7663976837905579 53 -8.0492317197593763 55 -11.018067392334983
		 56 53.247871163044444 58 98.944178631786855;
createNode animCurveTU -n "joint4_scaleZ";
	rename -uid "C667E727-4E0C-F7F8-6EF7-8DAC8DB4E7EE";
	setAttr ".tan" 18;
	setAttr -s 10 ".ktv[0:9]"  1 1 20 1 30 1 40 1 45 1 48 1 51 1 53 1 55 1
		 60 1;
createNode animCurveTU -n "joint4_scaleX";
	rename -uid "D2580277-4B0A-10B7-F249-88AE7B8D7EA6";
	setAttr ".tan" 18;
	setAttr -s 10 ".ktv[0:9]"  1 1 20 1 30 1 40 1 45 1 48 1 51 1 53 1 55 1
		 60 1;
createNode animCurveTL -n "joint4_translateZ";
	rename -uid "ACC190E3-4AF7-1D45-4605-52AA2B70D015";
	setAttr ".tan" 18;
	setAttr -s 10 ".ktv[0:9]"  1 -1.3115597501708843e-016 20 -1.3115597501708843e-016
		 30 -1.3115597501708843e-016 40 -1.3115597501708843e-016 45 -1.3115597501708843e-016
		 48 -1.3115597501708843e-016 51 -1.3115597501708843e-016 53 -1.3115597501708843e-016
		 55 -1.3115597501708843e-016 60 -1.3115597501708843e-016;
createNode animCurveTL -n "joint4_translateY";
	rename -uid "4AC5A96A-4451-E922-ACEC-2986C108F04A";
	setAttr ".tan" 18;
	setAttr -s 10 ".ktv[0:9]"  1 1.6653345369377348e-016 20 1.6653345369377348e-016
		 30 1.6653345369377348e-016 40 1.6653345369377348e-016 45 1.6653345369377348e-016
		 48 1.6653345369377348e-016 51 1.6653345369377348e-016 53 1.6653345369377348e-016
		 55 1.6653345369377348e-016 60 1.6653345369377348e-016;
createNode animCurveTU -n "joint4_visibility";
	rename -uid "D261C562-41AB-5146-5B69-CABE391B0013";
	setAttr ".tan" 9;
	setAttr -s 10 ".ktv[0:9]"  1 1 20 1 30 1 40 1 45 1 48 1 51 1 53 1 55 1
		 60 1;
	setAttr -s 10 ".kot[0:9]"  5 5 5 5 5 5 5 5 
		5 5;
createNode animCurveTU -n "joint4_scaleY";
	rename -uid "FDE7F126-4E57-52EE-C921-80870C1E1129";
	setAttr ".tan" 18;
	setAttr -s 10 ".ktv[0:9]"  1 1 20 1 30 1 40 1 45 1 48 1 51 1 53 1 55 1
		 60 1;
createNode animCurveTL -n "joint4_translateX";
	rename -uid "7D1A9020-49FA-AE70-55B8-2D88AAD8B8D4";
	setAttr ".tan" 18;
	setAttr -s 10 ".ktv[0:9]"  1 1.0709767194093041 20 1.0709767194093041
		 30 1.0709767194093041 40 1.0709767194093041 45 1.0709767194093041 48 1.0709767194093041
		 51 1.0709767194093041 53 1.0709767194093041 55 1.0709767194093041 60 1.0709767194093041;
createNode animCurveTA -n "joint4_rotateY";
	rename -uid "D99FE1DF-4DC2-8954-0BBD-F7964B72A72F";
	setAttr ".tan" 18;
	setAttr -s 10 ".ktv[0:9]"  1 75.753145967868292 20 75.753145967868292
		 30 75.753145967868292 40 75.753145967868292 45 2.3119085721210633 48 2.2881455335997449
		 51 22.760358572086595 53 17.707052767201716 55 73.238414209880531 60 74.671100261428563;
createNode animCurveTA -n "joint4_rotateX";
	rename -uid "0F92336F-4B09-5C39-CDD5-A2BB14D5E406";
	setAttr ".tan" 18;
	setAttr -s 10 ".ktv[0:9]"  1 -56.298965645833569 20 -56.298965645833569
		 30 -56.298965645833569 40 -56.298965645833569 45 56.310613246672823 48 50.801734745702028
		 51 51.605684295564323 53 28.615917640219056 55 47.199151700409054 60 42.165019044459626;
createNode animCurveTA -n "joint4_rotateZ";
	rename -uid "CEAD93B8-49AC-C925-9F1C-768895DF8D12";
	setAttr ".tan" 18;
	setAttr -s 10 ".ktv[0:9]"  1 -101.02884878585419 20 -101.02884878585419
		 30 -101.02884878585419 40 -101.02884878585419 45 63.01834847312184 48 61.051655084216776
		 51 79.642190138655863 53 53.646923717231651 55 90.597941122084876 60 85.360435471576537;
createNode animCurveTL -n "joint5_translateZ";
	rename -uid "F22DB9E1-4B5A-1219-B440-36AE9E263CBA";
	setAttr ".tan" 18;
	setAttr -s 7 ".ktv[0:6]"  1 -1.398441955657939e-016 20 -1.398441955657939e-016
		 30 -1.398441955657939e-016 40 -1.398441955657939e-016 45 -1.398441955657939e-016
		 58 -1.398441955657939e-016 60 -1.398441955657939e-016;
createNode animCurveTU -n "joint5_scaleZ";
	rename -uid "93370EE5-4D7C-7F21-B991-2CB9C31E6F26";
	setAttr ".tan" 18;
	setAttr -s 7 ".ktv[0:6]"  1 1 20 1 30 1 40 1 45 1 58 1 60 1;
createNode animCurveTU -n "joint5_visibility";
	rename -uid "68C3AA81-4F9C-718C-BAA1-8C861B563F60";
	setAttr ".tan" 9;
	setAttr -s 7 ".ktv[0:6]"  1 1 20 1 30 1 40 1 45 1 58 1 60 1;
	setAttr -s 7 ".kot[0:6]"  5 5 5 5 5 5 5;
createNode animCurveTL -n "joint5_translateX";
	rename -uid "F2EC7631-46CF-DC0B-CE2C-0993054AA72A";
	setAttr ".tan" 18;
	setAttr -s 7 ".ktv[0:6]"  1 1.1432958108147606 20 1.1432958108147606
		 30 1.1432958108147606 40 1.1432958108147606 45 1.1432958108147606 58 1.1432958108147606
		 60 1.1432958108147606;
createNode animCurveTL -n "joint5_translateY";
	rename -uid "B547668C-4076-7BF7-8169-50931467BCB5";
	setAttr ".tan" 18;
	setAttr -s 7 ".ktv[0:6]"  1 1.9428902930940239e-016 20 1.9428902930940239e-016
		 30 1.9428902930940239e-016 40 1.9428902930940239e-016 45 1.9428902930940239e-016
		 58 1.9428902930940239e-016 60 1.9428902930940239e-016;
createNode animCurveTU -n "joint5_scaleY";
	rename -uid "FCD2F18C-4401-D43B-1E61-7BB4618113E5";
	setAttr ".tan" 18;
	setAttr -s 7 ".ktv[0:6]"  1 1 20 1 30 1 40 1 45 1 58 1 60 1;
createNode animCurveTU -n "joint5_scaleX";
	rename -uid "ACAF002A-4F19-8895-7496-3798B7424748";
	setAttr ".tan" 18;
	setAttr -s 7 ".ktv[0:6]"  1 1 20 1 30 1 40 1 45 1 58 1 60 1;
createNode animCurveTA -n "joint5_rotateY";
	rename -uid "10D7F043-411F-E90E-FEDB-0EB4501B45D1";
	setAttr ".tan" 18;
	setAttr -s 7 ".ktv[0:6]"  1 18.165736125096899 20 18.165736125096899
		 30 18.165736125096899 40 18.165736125096899 45 8.6296364719514376 58 -27.481987208357257
		 60 -26.32026830293885;
createNode animCurveTA -n "joint5_rotateZ";
	rename -uid "119A03AE-4F23-5020-75E7-29B2168E7DD9";
	setAttr ".tan" 18;
	setAttr -s 7 ".ktv[0:6]"  1 17.987181787702987 20 17.987181787702987
		 30 17.987181787702987 40 17.987181787702987 45 3.0993393672190508 58 35.439286207222359
		 60 33.212017701835698;
createNode animCurveTA -n "joint5_rotateX";
	rename -uid "687693EE-4733-42CC-BBF6-5B9750223583";
	setAttr ".tan" 18;
	setAttr -s 7 ".ktv[0:6]"  1 55.259999961880773 20 55.259999961880773
		 30 55.259999961880773 40 55.259999961880773 45 -28.30810470016689 58 -60.185016039262315
		 60 -59.177130641018337;
createNode animCurveTU -n "joint6_scaleZ";
	rename -uid "45B4601C-41F1-CC08-D35E-99940BEF2346";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 1 20 1 30 1 40 1 45 1;
createNode animCurveTL -n "joint6_translateZ";
	rename -uid "E9A6E66E-4E79-4F6B-CFF4-A6B4D3B9DC4A";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 -7.8676055183168682e-017 20 -7.8676055183168682e-017
		 30 -7.8676055183168682e-017 40 -7.8676055183168682e-017 45 -7.8676055183168682e-017;
createNode animCurveTU -n "joint6_scaleY";
	rename -uid "E26924D1-4E70-A6D6-89CD-F0A35783B0C3";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 1 20 1 30 1 40 1 45 1;
createNode animCurveTU -n "joint6_visibility";
	rename -uid "94536D2D-404F-3570-BD69-3EBED918FE0D";
	setAttr ".tan" 9;
	setAttr -s 5 ".ktv[0:4]"  1 1 20 1 30 1 40 1 45 1;
	setAttr -s 5 ".kot[0:4]"  5 5 5 5 5;
createNode animCurveTU -n "joint6_scaleX";
	rename -uid "2E7C9387-4AE4-EE52-E88D-B29EE5DB2DE5";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 1 20 1 30 1 40 1 45 1;
createNode animCurveTL -n "joint6_translateX";
	rename -uid "723FFDBA-41A4-D64E-0FB6-289C0020B7B6";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 0.64265653605863104 20 0.64265653605863104
		 30 0.64265653605863104 40 0.64265653605863104 45 0.64265653605863104;
createNode animCurveTL -n "joint6_translateY";
	rename -uid "C1C34690-404C-1908-3283-CCA1CDB12B39";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 -4.109559914589056e-015 20 -4.109559914589056e-015
		 30 -4.109559914589056e-015 40 -4.109559914589056e-015 45 -4.109559914589056e-015;
createNode animCurveTA -n "joint6_rotateZ";
	rename -uid "120AA072-46D6-EE9A-599B-46873F0A1A4F";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 6.2822066208721399 20 6.2822066208721399
		 30 6.2822066208721399 40 6.2822066208721399 45 12.034277550447364;
createNode animCurveTA -n "joint6_rotateX";
	rename -uid "24C31DEB-4732-693D-6966-32A3966697B2";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 -14.177140809724577 20 -14.177140809724577
		 30 -14.177140809724577 40 -14.177140809724577 45 -13.332804906677726;
createNode animCurveTA -n "joint6_rotateY";
	rename -uid "25154E59-4134-E2EE-9AC1-14BC96217502";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 19.975315669071616 20 19.975315669071616
		 30 19.975315669071616 40 19.975315669071616 45 -3.4616590624430756;
createNode animCurveTU -n "joint7_scaleX";
	rename -uid "D1902568-45C6-E968-0338-F7B84B34630E";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 1 20 1 30 1 40 1 45 1 50 1 53 1 56 1 58 1;
createNode animCurveTL -n "joint7_translateX";
	rename -uid "BD7A7C48-4BD3-2151-E11E-C1987A578769";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 -1.0235673126334652 20 -1.0235673126334652
		 30 -1.0235673126334652 40 -1.0235673126334652 45 -1.0235673126334652 50 -1.0235673126334652
		 53 -1.0235673126334652 56 -1.0235673126334652 58 -1.0235673126334652;
createNode animCurveTL -n "joint7_translateZ";
	rename -uid "3D8B4F2A-47FD-3744-14F9-71ABA8D0EDAE";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 1.2811016756117419e-016 20 1.2811016756117419e-016
		 30 1.2811016756117419e-016 40 1.2811016756117419e-016 45 1.2811016756117419e-016
		 50 1.2811016756117419e-016 53 1.2811016756117419e-016 56 1.2811016756117419e-016
		 58 1.2811016756117419e-016;
createNode animCurveTU -n "joint7_scaleZ";
	rename -uid "1304BC77-423E-3677-E090-B4A1DF4B166B";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 1 20 1 30 1 40 1 45 1 50 1 53 1 56 1 58 1;
createNode animCurveTU -n "joint7_scaleY";
	rename -uid "5E193776-4102-5BFD-0BBC-57BA4DD577F1";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 1 20 1 30 1 40 1 45 1 50 1 53 1 56 1 58 1;
createNode animCurveTL -n "joint7_translateY";
	rename -uid "6DF581ED-4AE2-056C-9D59-3D9ACD705C90";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 -0.25668406292046653 20 -0.25668406292046653
		 30 -0.25668406292046653 40 -0.25668406292046653 45 -0.25668406292046653 50 -0.25668406292046653
		 53 -0.25668406292046653 56 -0.25668406292046653 58 -0.25668406292046653;
createNode animCurveTU -n "joint7_visibility";
	rename -uid "728B338A-4C9D-17FA-8E54-9FB44660D590";
	setAttr ".tan" 9;
	setAttr -s 9 ".ktv[0:8]"  1 1 20 1 30 1 40 1 45 1 50 1 53 1 56 1 58 1;
	setAttr -s 9 ".kot[0:8]"  5 5 5 5 5 5 5 5 
		5;
createNode animCurveTA -n "joint7_rotateZ";
	rename -uid "60E68715-4B1C-FDE6-B708-5E8206634DB8";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 0 20 0 30 0 40 0 45 -75.277656602044729
		 50 -80.756797559758397 53 -48.480768917544424 56 -16.204740275330586 58 -19.986744769053253;
createNode animCurveTA -n "joint7_rotateX";
	rename -uid "EC086184-4763-53D0-17AB-83AAFAE6D9E4";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 0 20 0 30 0 40 0 45 60.475189361455229
		 50 83.854088048798246 53 79.647302014266813 56 14.541087074313777 58 17.995880419626548;
createNode animCurveTA -n "joint7_rotateY";
	rename -uid "5D8F0C4B-47DD-8597-5C8F-D4B106C8CC35";
	setAttr ".tan" 18;
	setAttr -s 9 ".ktv[0:8]"  1 -64.116039941453252 20 -64.116039941453252
		 30 -64.116039941453252 40 -64.116039941453252 45 -27.643017555374673 50 -43.084966015803722
		 53 -53.179897671963303 56 -63.192374857575679 58 -68.49930286965774;
createNode animCurveTU -n "joint8_scaleY";
	rename -uid "89382449-4453-AFD5-8F2C-98A4EEB177F4";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1 20 1 30 1 40 1 45 1 58 1;
createNode animCurveTU -n "joint8_scaleZ";
	rename -uid "27FE1C8F-4540-6BD7-991F-8792684396AF";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1 20 1 30 1 40 1 45 1 58 1;
createNode animCurveTL -n "joint8_translateZ";
	rename -uid "BADBAC6E-4B8B-5665-A590-14B259DAA0B4";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 -2.2442280132871766e-016 20 -2.2442280132871766e-016
		 30 -2.2442280132871766e-016 40 -2.2442280132871766e-016 45 -2.2442280132871766e-016
		 58 -2.2442280132871766e-016;
createNode animCurveTL -n "joint8_translateY";
	rename -uid "CE280468-47D7-3DCB-0B70-D4967EE6C70C";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 7.2164496600635175e-016 20 7.2164496600635175e-016
		 30 7.2164496600635175e-016 40 7.2164496600635175e-016 45 7.2164496600635175e-016
		 58 7.2164496600635175e-016;
createNode animCurveTU -n "joint8_visibility";
	rename -uid "A7266C4B-4934-8394-0EE0-2899A53EE034";
	setAttr ".tan" 9;
	setAttr -s 6 ".ktv[0:5]"  1 1 20 1 30 1 40 1 45 1 58 1;
	setAttr -s 6 ".kot[0:5]"  5 5 5 5 5 5;
createNode animCurveTU -n "joint8_scaleX";
	rename -uid "0163018D-413B-6A06-8512-F599FD702763";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 1 20 1 30 1 40 1 45 1 58 1;
createNode animCurveTL -n "joint8_translateX";
	rename -uid "1D479A8D-46D9-53B4-3753-18904A66F210";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 0.91653253990161998 20 0.91653253990161998
		 30 0.91653253990161998 40 0.91653253990161998 45 0.91653253990161998 58 0.91653253990161998;
createNode animCurveTA -n "joint8_rotateY";
	rename -uid "BA845B33-40E5-2974-224D-DE87F75A70ED";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 -68.826027672179293 20 -68.826027672179293
		 30 -68.826027672179293 40 -68.826027672179293 45 -43.402024444479402 58 -59.588186714335357;
createNode animCurveTA -n "joint8_rotateX";
	rename -uid "A91A0411-4C0D-1740-D916-B9AE2FC06F90";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 -26.837251272996365 20 -26.837251272996365
		 30 -26.837251272996365 40 -26.837251272996365 45 -12.969952752348448 58 -31.940648350414843;
createNode animCurveTA -n "joint8_rotateZ";
	rename -uid "33A309FF-4F14-E4EE-1B3A-85AFF2F61726";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  1 103.62940261209525 20 103.62940261209525
		 30 103.62940261209525 40 103.62940261209525 45 87.364366302263235 58 111.17827681640954;
createNode animCurveTU -n "joint9_scaleZ";
	rename -uid "AB294D1C-476F-46C4-7586-12A72C605E26";
	setAttr ".tan" 18;
	setAttr -s 7 ".ktv[0:6]"  1 1 20 1 30 1 40 1 45 1 56 1 58 1;
createNode animCurveTU -n "joint9_scaleY";
	rename -uid "94C88083-43F2-A07D-7DCE-18A9739ABD16";
	setAttr ".tan" 18;
	setAttr -s 7 ".ktv[0:6]"  1 1 20 1 30 1 40 1 45 1 56 1 58 1;
createNode animCurveTL -n "joint9_translateZ";
	rename -uid "1621CCD1-4A73-4145-2E65-7DA1CE318452";
	setAttr ".tan" 18;
	setAttr -s 7 ".ktv[0:6]"  1 -3.1464567143373575e-016 20 -3.1464567143373575e-016
		 30 -3.1464567143373575e-016 40 -3.1464567143373575e-016 45 -3.1464567143373575e-016
		 56 -3.1464567143373575e-016 58 -3.1464567143373575e-016;
createNode animCurveTL -n "joint9_translateX";
	rename -uid "3C1BB0E8-46DA-FF48-57C2-2DBD944E35EA";
	setAttr ".tan" 18;
	setAttr -s 7 ".ktv[0:6]"  1 1.2853130721172648 20 1.2853130721172648
		 30 1.2853130721172648 40 1.2853130721172648 45 1.2853130721172648 56 1.2853130721172648
		 58 1.2853130721172648;
createNode animCurveTU -n "joint9_visibility";
	rename -uid "97382E3D-441C-611B-5CB5-EFB0AA1C2892";
	setAttr ".tan" 9;
	setAttr -s 7 ".ktv[0:6]"  1 1 20 1 30 1 40 1 45 1 56 1 58 1;
	setAttr -s 7 ".kot[0:6]"  5 5 5 5 5 5 5;
createNode animCurveTL -n "joint9_translateY";
	rename -uid "E705872F-4766-AC36-9D5D-A19C276A785E";
	setAttr ".tan" 18;
	setAttr -s 7 ".ktv[0:6]"  1 -8.0491169285323849e-016 20 -8.0491169285323849e-016
		 30 -8.0491169285323849e-016 40 -8.0491169285323849e-016 45 -8.0491169285323849e-016
		 56 -8.0491169285323849e-016 58 -8.0491169285323849e-016;
createNode animCurveTU -n "joint9_scaleX";
	rename -uid "AE2900C0-43E0-4D8E-2841-ABBA5D49BF0D";
	setAttr ".tan" 18;
	setAttr -s 7 ".ktv[0:6]"  1 1 20 1 30 1 40 1 45 1 56 1 58 1;
createNode animCurveTA -n "joint9_rotateX";
	rename -uid "9A2E5A2C-416C-BA96-8536-77A79E9160CA";
	setAttr ".tan" 18;
	setAttr -s 7 ".ktv[0:6]"  1 0 20 0 30 0 40 0 45 0 56 0 58 0;
createNode animCurveTA -n "joint9_rotateY";
	rename -uid "CF1B7126-400B-9ECF-EF5B-36818A79BC88";
	setAttr ".tan" 18;
	setAttr -s 7 ".ktv[0:6]"  1 46.312575051834578 20 46.312575051834578
		 30 46.312575051834578 40 46.312575051834578 45 -31.336332760146842 56 31.884463486518097
		 58 42.199918419260932;
createNode animCurveTA -n "joint9_rotateZ";
	rename -uid "8E7E92C7-46BE-51EB-29A9-C4B4123E472A";
	setAttr ".tan" 18;
	setAttr -s 7 ".ktv[0:6]"  1 0 20 0 30 0 40 0 45 0 56 0 58 0;
createNode animCurveTU -n "joint10_scaleY";
	rename -uid "84BB38C4-436F-5DE9-E615-DCA20AC2DB60";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  1 1 20 1 30 1 40 1;
createNode animCurveTL -n "joint10_translateZ";
	rename -uid "6A8C7625-422F-BBDB-81AF-8B8F82F453E8";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  1 -1.5154882975783507e-016 20 -1.5154882975783507e-016
		 30 -1.5154882975783507e-016 40 -1.5154882975783507e-016;
createNode animCurveTL -n "joint10_translateX";
	rename -uid "C4288894-4157-B402-799A-75944E02FCCB";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  1 0.61886275877897168 20 0.61886275877897168
		 30 0.61886275877897168 40 0.61886275877897168;
createNode animCurveTU -n "joint10_visibility";
	rename -uid "737B2C7B-478F-DE0C-C137-05ACA8CBD514";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 1 20 1 30 1 40 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTU -n "joint10_scaleZ";
	rename -uid "D0B090EC-4F1C-132E-6C8B-83AFA834A6AB";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  1 1 20 1 30 1 40 1;
createNode animCurveTU -n "joint10_scaleX";
	rename -uid "0DECE0E1-4FBF-5364-1C4A-169BE7253A67";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  1 1 20 1 30 1 40 1;
createNode animCurveTL -n "joint10_translateY";
	rename -uid "F7BE9DB6-4757-57E0-5C49-C7AFC6157DF4";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  1 -2.775557561562891e-017 20 -2.775557561562891e-017
		 30 -2.775557561562891e-017 40 -2.775557561562891e-017;
createNode animCurveTA -n "joint10_rotateY";
	rename -uid "A137F285-4A49-788B-84D2-81889BCE2686";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  1 0 20 0 30 0 40 0;
createNode animCurveTA -n "joint10_rotateZ";
	rename -uid "BB120324-409F-9D74-A556-E281525064A2";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  1 0 20 0 30 0 40 0;
createNode animCurveTA -n "joint10_rotateX";
	rename -uid "13C0152A-4001-8A40-10C2-E2B122F15821";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  1 0 20 0 30 0 40 0;
createNode animCurveTU -n "joint11_scaleY";
	rename -uid "DDF8B47F-4272-253A-B510-68883EBFC4AF";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "joint11_scaleX";
	rename -uid "9AE79D35-4FA8-FE71-1341-278D9D7E4DBB";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTL -n "joint11_translateY";
	rename -uid "7A3698F9-473C-B55D-4874-DF87206CD546";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 0.65251335860253334;
createNode animCurveTL -n "joint11_translateZ";
	rename -uid "85D58F4B-4FC2-485F-E752-B499B54130F9";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 -2.3117459467551122e-018;
createNode animCurveTU -n "joint11_scaleZ";
	rename -uid "C90649C1-478C-A42A-06EA-52B861269528";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTL -n "joint11_translateX";
	rename -uid "21B68E5C-4316-A65F-8E91-378B6E0F1A49";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 -0.055600476031033047;
createNode animCurveTU -n "joint11_visibility";
	rename -uid "E4443D5A-4FB4-BACB-C173-8D8307D6A7FD";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "joint11_rotateZ";
	rename -uid "FE2BDD7A-4EE6-2A36-3236-02B0D8DBC934";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "joint11_rotateY";
	rename -uid "F0DD57EC-40CF-D346-9925-24A312F263D7";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "joint11_rotateX";
	rename -uid "E6C25A28-4DDD-87C4-F386-3E95D13DC0D9";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "joint21_scaleZ";
	rename -uid "2FEA5083-49A7-9F08-9ADD-C680ED339528";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "joint21_scaleY";
	rename -uid "93ECC4E4-4920-8A95-210A-BAA2981CC97E";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTL -n "joint21_translateY";
	rename -uid "36A2CA0E-415E-3288-8F16-5EBC5852E089";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 3.6429192995512949e-016;
createNode animCurveTL -n "joint21_translateX";
	rename -uid "88A03CC2-44B4-C878-025B-08814D72E8C1";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 0.58874519181642926;
createNode animCurveTL -n "joint21_translateZ";
	rename -uid "B8C6BF57-42C6-0C27-C0BA-2BBEA532F1A7";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 1.110223024625157e-016;
createNode animCurveTU -n "joint21_visibility";
	rename -uid "1DBAA593-4739-CD69-E006-85B973BB28B5";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "joint21_scaleX";
	rename -uid "EBDA8D97-4953-DD25-C349-05971E79EA5E";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTA -n "joint21_rotateY";
	rename -uid "74B7E5BD-4B10-088E-A5E9-FE9B1F908A59";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "joint21_rotateZ";
	rename -uid "133CA4BB-45A1-A874-3CC7-1A94A2DF8B83";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "joint21_rotateX";
	rename -uid "A856B167-4130-6366-3117-DCA5D8A5A7E7";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "joint17_rotateX";
	rename -uid "BC7EF341-49CD-2489-3841-919951B806EB";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  20 0 25 0 30 0 35 0;
createNode animCurveTA -n "joint17_rotateY";
	rename -uid "C837DA7F-4CAC-CD24-E416-F18384045D30";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  20 0 25 2.0501200792487353 30 -22.761682140891249
		 35 1.2818589507654383;
createNode animCurveTA -n "joint17_rotateZ";
	rename -uid "93A203D4-46B4-8F3F-75F9-65B2092817C3";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  20 0 25 0 30 0 35 0;
createNode animCurveTU -n "joint17_visibility";
	rename -uid "49F2A0A4-48D8-F193-3D54-5AAC04EC8E4F";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  20 1 25 1 30 1 35 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "joint17_translateX";
	rename -uid "E2AEBB72-4ED2-0CFD-AF0F-45B7847103FB";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  20 -0.557616038520516 25 -0.557616038520516
		 30 -0.557616038520516 35 -0.557616038520516;
createNode animCurveTL -n "joint17_translateY";
	rename -uid "16CDCCEA-48C2-4AFB-87B6-0BAD5B294648";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  20 0.28139214327569578 25 0.28139214327569584
		 30 0.28139214327569589 35 0.28139214327569589;
createNode animCurveTL -n "joint17_translateZ";
	rename -uid "6C998B1E-4228-883B-1D5C-D2BB614BF19D";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  20 3.4460598756779495e-017 25 -0.43430904165479312
		 30 0.17764148815877595 35 0.019254639783824745;
createNode animCurveTU -n "joint17_scaleX";
	rename -uid "62B585F0-4FF0-D6AC-A17B-87B3E89BA7DA";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  20 1 25 1 30 1 35 1;
createNode animCurveTU -n "joint17_scaleY";
	rename -uid "1818EE17-439D-72B9-6B3D-7CA6F50BAE5B";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  20 1 25 1 30 1 35 1;
createNode animCurveTU -n "joint17_scaleZ";
	rename -uid "C7E99525-47DD-ED5C-6DE1-51BA8036E2DA";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  20 1 25 1 30 1 35 1;
createNode animCurveTA -n "joint1_rotateX";
	rename -uid "B70F4025-4004-17D7-E6FC-92BB842BB199";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  20 0;
createNode animCurveTA -n "joint1_rotateY";
	rename -uid "EE765416-44BB-CA6C-17DC-2288406976F7";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  20 0;
createNode animCurveTA -n "joint1_rotateZ";
	rename -uid "0722FB00-4068-142E-395F-BC96E4048108";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  20 0;
createNode animCurveTU -n "joint1_visibility";
	rename -uid "DCE854F8-4FFA-2FD6-87D5-2A9AC004BED3";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  20 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "joint1_translateX";
	rename -uid "11136E08-421C-5918-72AC-978B6D5471C8";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  20 -0.061633440787063565;
createNode animCurveTL -n "joint1_translateY";
	rename -uid "89EF3375-48D5-8E56-C35F-3880ED0873EE";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  20 0.78482764313806763;
createNode animCurveTL -n "joint1_translateZ";
	rename -uid "B23FA9BB-4B25-5F43-5A44-5D950159D56F";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  20 0;
createNode animCurveTU -n "joint1_scaleX";
	rename -uid "05DDD62C-4B87-1843-33CC-43BC0BB7A911";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  20 1;
createNode animCurveTU -n "joint1_scaleY";
	rename -uid "35A234FD-4946-33C9-3961-E1B0F81AA4DA";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  20 1;
createNode animCurveTU -n "joint1_scaleZ";
	rename -uid "469A71A9-4B7D-9BF1-2703-BEA330730314";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  20 1;
createNode animCurveTA -n "joint14_rotateX";
	rename -uid "C03B348F-4A15-8F39-68E6-50A3683829DD";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  20 1.4237050668042941 25 1.6137721965831646
		 30 1.4234271308751767 35 1.4234271308751767;
createNode animCurveTA -n "joint14_rotateY";
	rename -uid "4B209A25-4CE8-58D5-365D-448D59E32CBC";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  20 -1.2277000851214872 25 28.109936612432644
		 30 -0.47514099740066845 35 -0.47514099740066845;
createNode animCurveTA -n "joint14_rotateZ";
	rename -uid "019CDE53-4111-4F93-D150-9FBA3884863C";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  20 -0.069445284220900821 25 0.72157417825144232
		 30 -0.050741485713819826 35 -0.050741485713819826;
createNode animCurveTU -n "joint14_visibility";
	rename -uid "5E9F309D-4596-DB86-7E73-3AB646EE14A7";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  20 1 25 1 30 1 35 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "joint14_translateX";
	rename -uid "F868535B-4B66-11EF-25ED-5A988699B914";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  20 -0.53280170058589238 25 -0.53280170058589238
		 30 -0.53280170058589238 35 -0.53280170058589238;
createNode animCurveTL -n "joint14_translateY";
	rename -uid "C38F4ACD-466B-25EF-CD9C-C38A8FCE3FAC";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  20 -0.30001236089496436 25 -0.30001236089496441
		 30 -0.30001236089496458 35 -0.30001236089496464;
createNode animCurveTL -n "joint14_translateZ";
	rename -uid "9500E103-41BE-ED44-31CF-C6888D6AEB5F";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  20 -3.6740917747465871e-017 25 0.24346081008403772
		 30 -0.83102763973903149 35 0.0057456658356829227;
createNode animCurveTU -n "joint14_scaleX";
	rename -uid "1B63DF76-4DF1-B067-CF72-8098B240152C";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  20 1 25 1 30 1 35 1;
createNode animCurveTU -n "joint14_scaleY";
	rename -uid "6416F02B-4341-9ACC-FBEE-A1B0EF84B4E3";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  20 1 25 1 30 1 35 1;
createNode animCurveTU -n "joint14_scaleZ";
	rename -uid "7DFD7062-4716-D192-65D5-F1B8E37E2E44";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  20 1 25 1 30 1 35 1;
createNode animCurveTA -n "joint15_rotateX";
	rename -uid "4E61DC35-4137-975B-CB4F-61A17EE8FEFC";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  20 0;
createNode animCurveTA -n "joint15_rotateY";
	rename -uid "2DACA50E-44FF-10A8-3E6E-31A974436573";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  20 0.88348270568067089;
createNode animCurveTA -n "joint15_rotateZ";
	rename -uid "1E888D81-411F-1715-64CE-3CAE6EC3B8FF";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  20 0;
createNode animCurveTU -n "joint15_visibility";
	rename -uid "FA15B361-4F4D-DC4C-1C11-F19E322E0F05";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  20 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "joint15_translateX";
	rename -uid "9D240E3F-46A6-1433-AD88-439B43A22506";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  20 0.71406076541063646;
createNode animCurveTL -n "joint15_translateY";
	rename -uid "092397AD-4BC3-947D-D23B-898B5CFF464D";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  20 -0.032679183195979226;
createNode animCurveTL -n "joint15_translateZ";
	rename -uid "E9E91DAB-4D38-A626-B39F-9EA1E7633DBF";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  20 -2.1788393279642392e-017;
createNode animCurveTU -n "joint15_scaleX";
	rename -uid "4E2C0815-4546-0E5D-E34B-ABBBE5C2E2CE";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  20 1;
createNode animCurveTU -n "joint15_scaleY";
	rename -uid "E015F1A1-4CB1-92A8-8FD0-73B068637586";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  20 1;
createNode animCurveTU -n "joint15_scaleZ";
	rename -uid "70C0E0EA-4A8E-05E0-BC07-B7AB4971510C";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  20 1;
createNode animCurveTA -n "joint18_rotateX";
	rename -uid "64C63370-4EA4-6239-0E71-E0B6B347BE5D";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  20 0;
createNode animCurveTA -n "joint18_rotateY";
	rename -uid "BAE419A1-46CE-D6DE-801B-88B234E0237B";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  20 0;
createNode animCurveTA -n "joint18_rotateZ";
	rename -uid "23BF8D4B-4A29-4B96-4A53-BEA6EF95D5D4";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  20 0;
createNode animCurveTU -n "joint18_visibility";
	rename -uid "22709A79-4CC6-E009-5D42-E5B89AF111CE";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  20 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "joint18_translateX";
	rename -uid "CAB00A8A-4EE8-CE67-25BB-A4BC4B413DCA";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  20 0.69632949056255489;
createNode animCurveTL -n "joint18_translateY";
	rename -uid "95D30ED8-4B79-17CE-B748-F6B52CD36825";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  20 -0.049969173987853652;
createNode animCurveTL -n "joint18_translateZ";
	rename -uid "BF379E7A-46E1-FA6E-0411-608252EE34EF";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  20 -5.8460468689493756e-018;
createNode animCurveTU -n "joint18_scaleX";
	rename -uid "9E6A3F39-4442-6831-E347-25A470AE8CD3";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  20 1;
createNode animCurveTU -n "joint18_scaleY";
	rename -uid "96285A92-4229-9F4F-407B-B1882464339F";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  20 1;
createNode animCurveTU -n "joint18_scaleZ";
	rename -uid "8CDD877A-49D8-4813-3F97-BF8F0104B811";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  20 1;
createNode animCurveTA -n "joint19_rotateX";
	rename -uid "9BECEDF8-471E-7CED-BD94-36A61CFDAD4C";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  20 0;
createNode animCurveTA -n "joint19_rotateY";
	rename -uid "5BBDC7E5-4663-6869-4F99-2C8679739520";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  20 0;
createNode animCurveTA -n "joint19_rotateZ";
	rename -uid "417F1F4A-4A0F-20FF-3829-3998F7B4EE5D";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  20 0;
createNode animCurveTU -n "joint19_visibility";
	rename -uid "84E55EDA-4F28-65F6-BD46-D0920807F932";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  20 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "joint19_translateX";
	rename -uid "443A53B8-48C9-9597-E07F-529A02BE2114";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  20 1.5109395341849079;
createNode animCurveTL -n "joint19_translateY";
	rename -uid "146304EC-4374-6CA6-85B2-72A77285B70B";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  20 -0.08184637619431788;
createNode animCurveTL -n "joint19_translateZ";
	rename -uid "C7E0B38E-4994-DA8F-DD5B-32A0CD3ECBF6";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  20 -4.4747939319730676e-018;
createNode animCurveTU -n "joint19_scaleX";
	rename -uid "FCA5E805-4E49-CFA6-FDD6-5FAF287F38E4";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  20 1;
createNode animCurveTU -n "joint19_scaleY";
	rename -uid "5FA65059-4A85-3A0D-0DFB-1B9ED8F5B635";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  20 1;
createNode animCurveTU -n "joint19_scaleZ";
	rename -uid "CEC60B59-4684-ED73-46A7-7E84FB8F0FA1";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  20 1;
createNode animCurveTA -n "joint16_rotateX";
	rename -uid "D7F6A31C-4F87-BC80-0DA8-ABA001D06AA2";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  20 0;
createNode animCurveTA -n "joint16_rotateY";
	rename -uid "078C1A78-4021-6DBC-1439-E89C5EA3A449";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  20 0;
createNode animCurveTA -n "joint16_rotateZ";
	rename -uid "DBC3E82F-43BF-A311-2789-A48568D482DF";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  20 0;
createNode animCurveTU -n "joint16_visibility";
	rename -uid "EE263033-4B04-2B88-B2D9-E3A9DEF05871";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  20 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "joint16_translateX";
	rename -uid "ABB269A2-4A57-FAEE-8D56-F280483E97F4";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  20 1.5140550518963403;
createNode animCurveTL -n "joint16_translateY";
	rename -uid "F82B3E53-4AC1-369D-C412-BAB555514778";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  20 -0.012287788164718332;
createNode animCurveTL -n "joint16_translateZ";
	rename -uid "C70D013A-4D0E-6D0A-BE6E-03B17E582988";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  20 -7.602947074966053e-017;
createNode animCurveTU -n "joint16_scaleX";
	rename -uid "5093DE22-4082-F036-388D-4DBAF46B3491";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  20 1;
createNode animCurveTU -n "joint16_scaleY";
	rename -uid "765B0BA5-40D1-5732-0E9F-23A2DBE8BFCE";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  20 1;
createNode animCurveTU -n "joint16_scaleZ";
	rename -uid "2AE50359-449C-9F69-6052-70A690617E21";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  20 1;
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
	setAttr -s 50 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 50 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".mcfr" 48;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
	setAttr ".hwfr" 48;
connectAttr "groupParts1.og" "polySurfaceShape1.i";
connectAttr "groupId2.id" "polySurfaceShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape1.iog.og[0].gco";
connectAttr "groupParts2.og" "polySurfaceShape2.i";
connectAttr "groupId3.id" "polySurfaceShape2.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape2.iog.og[0].gco";
connectAttr "groupParts3.og" "polySurfaceShape3.i";
connectAttr "groupId4.id" "polySurfaceShape3.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape3.iog.og[0].gco";
connectAttr "groupParts4.og" "polySurfaceShape4.i";
connectAttr "groupId5.id" "polySurfaceShape4.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape4.iog.og[0].gco";
connectAttr "groupParts5.og" "polySurfaceShape5.i";
connectAttr "groupId6.id" "polySurfaceShape5.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape5.iog.og[0].gco";
connectAttr "groupParts6.og" "polySurfaceShape6.i";
connectAttr "groupId7.id" "polySurfaceShape6.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape6.iog.og[0].gco";
connectAttr "groupParts7.og" "polySurfaceShape7.i";
connectAttr "groupId8.id" "polySurfaceShape7.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape7.iog.og[0].gco";
connectAttr "groupParts8.og" "polySurfaceShape8.i";
connectAttr "groupId9.id" "polySurfaceShape8.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape8.iog.og[0].gco";
connectAttr "groupParts9.og" "polySurfaceShape9.i";
connectAttr "groupId10.id" "polySurfaceShape9.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape9.iog.og[0].gco";
connectAttr "groupParts10.og" "polySurfaceShape10.i";
connectAttr "groupId11.id" "polySurfaceShape10.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape10.iog.og[0].gco";
connectAttr "groupParts11.og" "polySurfaceShape11.i";
connectAttr "groupId12.id" "polySurfaceShape11.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape11.iog.og[0].gco";
connectAttr "groupParts12.og" "polySurfaceShape12.i";
connectAttr "groupId13.id" "polySurfaceShape12.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape12.iog.og[0].gco";
connectAttr "groupParts13.og" "polySurfaceShape13.i";
connectAttr "groupId14.id" "polySurfaceShape13.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape13.iog.og[0].gco";
connectAttr "groupParts14.og" "polySurfaceShape14.i";
connectAttr "groupId15.id" "polySurfaceShape14.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape14.iog.og[0].gco";
connectAttr "groupParts15.og" "polySurfaceShape15.i";
connectAttr "groupId16.id" "polySurfaceShape15.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape15.iog.og[0].gco";
connectAttr "groupParts16.og" "polySurfaceShape16.i";
connectAttr "groupId17.id" "polySurfaceShape16.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape16.iog.og[0].gco";
connectAttr "groupParts17.og" "polySurfaceShape17.i";
connectAttr "groupId18.id" "polySurfaceShape17.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape17.iog.og[0].gco";
connectAttr "groupParts18.og" "polySurfaceShape18.i";
connectAttr "groupId19.id" "polySurfaceShape18.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape18.iog.og[0].gco";
connectAttr "groupParts19.og" "polySurfaceShape19.i";
connectAttr "groupId20.id" "polySurfaceShape19.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape19.iog.og[0].gco";
connectAttr "groupParts20.og" "polySurfaceShape20.i";
connectAttr "groupId21.id" "polySurfaceShape20.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape20.iog.og[0].gco";
connectAttr "groupParts21.og" "polySurfaceShape21.i";
connectAttr "groupId22.id" "polySurfaceShape21.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape21.iog.og[0].gco";
connectAttr "groupParts22.og" "polySurfaceShape22.i";
connectAttr "groupId23.id" "polySurfaceShape22.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape22.iog.og[0].gco";
connectAttr "groupParts23.og" "polySurfaceShape23.i";
connectAttr "groupId24.id" "polySurfaceShape23.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape23.iog.og[0].gco";
connectAttr "groupParts24.og" "polySurfaceShape24.i";
connectAttr "groupId25.id" "polySurfaceShape24.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape24.iog.og[0].gco";
connectAttr "groupParts25.og" "polySurfaceShape25.i";
connectAttr "groupId26.id" "polySurfaceShape25.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape25.iog.og[0].gco";
connectAttr "groupParts26.og" "polySurfaceShape26.i";
connectAttr "groupId27.id" "polySurfaceShape26.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape26.iog.og[0].gco";
connectAttr "groupParts27.og" "polySurfaceShape27.i";
connectAttr "groupId28.id" "polySurfaceShape27.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape27.iog.og[0].gco";
connectAttr "groupParts28.og" "polySurfaceShape28.i";
connectAttr "groupId29.id" "polySurfaceShape28.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape28.iog.og[0].gco";
connectAttr "groupParts29.og" "polySurfaceShape29.i";
connectAttr "groupId30.id" "polySurfaceShape29.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape29.iog.og[0].gco";
connectAttr "groupParts30.og" "polySurfaceShape30.i";
connectAttr "groupId31.id" "polySurfaceShape30.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape30.iog.og[0].gco";
connectAttr "groupParts31.og" "polySurfaceShape31.i";
connectAttr "groupId32.id" "polySurfaceShape31.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape31.iog.og[0].gco";
connectAttr "groupParts32.og" "polySurfaceShape32.i";
connectAttr "groupId33.id" "polySurfaceShape32.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape32.iog.og[0].gco";
connectAttr "groupParts33.og" "polySurfaceShape33.i";
connectAttr "groupId34.id" "polySurfaceShape33.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape33.iog.og[0].gco";
connectAttr "groupParts34.og" "polySurfaceShape34.i";
connectAttr "groupId35.id" "polySurfaceShape34.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape34.iog.og[0].gco";
connectAttr "groupParts35.og" "polySurfaceShape35.i";
connectAttr "groupId36.id" "polySurfaceShape35.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape35.iog.og[0].gco";
connectAttr "groupParts36.og" "polySurfaceShape36.i";
connectAttr "groupId37.id" "polySurfaceShape36.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape36.iog.og[0].gco";
connectAttr "groupParts37.og" "polySurfaceShape37.i";
connectAttr "groupId38.id" "polySurfaceShape37.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape37.iog.og[0].gco";
connectAttr "groupParts38.og" "polySurfaceShape38.i";
connectAttr "groupId39.id" "polySurfaceShape38.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape38.iog.og[0].gco";
connectAttr "groupParts39.og" "polySurfaceShape39.i";
connectAttr "groupId40.id" "polySurfaceShape39.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape39.iog.og[0].gco";
connectAttr "groupParts40.og" "polySurfaceShape40.i";
connectAttr "groupId41.id" "polySurfaceShape40.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape40.iog.og[0].gco";
connectAttr "groupParts41.og" "polySurfaceShape41.i";
connectAttr "groupId42.id" "polySurfaceShape41.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape41.iog.og[0].gco";
connectAttr "groupParts42.og" "polySurfaceShape42.i";
connectAttr "groupId43.id" "polySurfaceShape42.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape42.iog.og[0].gco";
connectAttr "groupParts43.og" "polySurfaceShape43.i";
connectAttr "groupId44.id" "polySurfaceShape43.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape43.iog.og[0].gco";
connectAttr "groupParts44.og" "polySurfaceShape44.i";
connectAttr "groupId45.id" "polySurfaceShape44.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape44.iog.og[0].gco";
connectAttr "groupParts45.og" "polySurfaceShape45.i";
connectAttr "groupId46.id" "polySurfaceShape45.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape45.iog.og[0].gco";
connectAttr "groupParts46.og" "polySurfaceShape46.i";
connectAttr "groupId47.id" "polySurfaceShape46.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape46.iog.og[0].gco";
connectAttr "groupId1.id" "pPipe3Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pPipe3Shape.iog.og[0].gco";
connectAttr "joint1_scaleX.o" "joint1.sx";
connectAttr "joint1_scaleY.o" "joint1.sy";
connectAttr "joint1_scaleZ.o" "joint1.sz";
connectAttr "joint1_rotateX.o" "joint1.rx";
connectAttr "joint1_rotateY.o" "joint1.ry";
connectAttr "joint1_rotateZ.o" "joint1.rz";
connectAttr "joint1_visibility.o" "joint1.v";
connectAttr "joint1_translateX.o" "joint1.tx";
connectAttr "joint1_translateY.o" "joint1.ty";
connectAttr "joint1_translateZ.o" "joint1.tz";
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
connectAttr "joint3_scaleX.o" "joint3.sx";
connectAttr "joint3_scaleY.o" "joint3.sy";
connectAttr "joint3_scaleZ.o" "joint3.sz";
connectAttr "joint3_rotateX.o" "joint3.rx";
connectAttr "joint3_rotateY.o" "joint3.ry";
connectAttr "joint3_rotateZ.o" "joint3.rz";
connectAttr "joint3_visibility.o" "joint3.v";
connectAttr "joint3_translateX.o" "joint3.tx";
connectAttr "joint3_translateY.o" "joint3.ty";
connectAttr "joint3_translateZ.o" "joint3.tz";
connectAttr "joint3.s" "joint4.is";
connectAttr "joint4_scaleX.o" "joint4.sx";
connectAttr "joint4_scaleY.o" "joint4.sy";
connectAttr "joint4_scaleZ.o" "joint4.sz";
connectAttr "joint4_rotateX.o" "joint4.rx";
connectAttr "joint4_rotateY.o" "joint4.ry";
connectAttr "joint4_rotateZ.o" "joint4.rz";
connectAttr "joint4_visibility.o" "joint4.v";
connectAttr "joint4_translateX.o" "joint4.tx";
connectAttr "joint4_translateY.o" "joint4.ty";
connectAttr "joint4_translateZ.o" "joint4.tz";
connectAttr "joint4.s" "joint5.is";
connectAttr "joint5_scaleX.o" "joint5.sx";
connectAttr "joint5_scaleY.o" "joint5.sy";
connectAttr "joint5_scaleZ.o" "joint5.sz";
connectAttr "joint5_rotateX.o" "joint5.rx";
connectAttr "joint5_rotateY.o" "joint5.ry";
connectAttr "joint5_rotateZ.o" "joint5.rz";
connectAttr "joint5_visibility.o" "joint5.v";
connectAttr "joint5_translateX.o" "joint5.tx";
connectAttr "joint5_translateY.o" "joint5.ty";
connectAttr "joint5_translateZ.o" "joint5.tz";
connectAttr "joint5.s" "joint6.is";
connectAttr "joint6_rotateX.o" "joint6.rx";
connectAttr "joint6_rotateY.o" "joint6.ry";
connectAttr "joint6_rotateZ.o" "joint6.rz";
connectAttr "joint6_visibility.o" "joint6.v";
connectAttr "joint6_translateX.o" "joint6.tx";
connectAttr "joint6_translateY.o" "joint6.ty";
connectAttr "joint6_translateZ.o" "joint6.tz";
connectAttr "joint6_scaleX.o" "joint6.sx";
connectAttr "joint6_scaleY.o" "joint6.sy";
connectAttr "joint6_scaleZ.o" "joint6.sz";
connectAttr "joint2.s" "joint7.is";
connectAttr "joint7_scaleX.o" "joint7.sx";
connectAttr "joint7_scaleY.o" "joint7.sy";
connectAttr "joint7_scaleZ.o" "joint7.sz";
connectAttr "joint7_rotateX.o" "joint7.rx";
connectAttr "joint7_rotateY.o" "joint7.ry";
connectAttr "joint7_rotateZ.o" "joint7.rz";
connectAttr "joint7_visibility.o" "joint7.v";
connectAttr "joint7_translateX.o" "joint7.tx";
connectAttr "joint7_translateY.o" "joint7.ty";
connectAttr "joint7_translateZ.o" "joint7.tz";
connectAttr "joint7.s" "joint8.is";
connectAttr "joint8_scaleX.o" "joint8.sx";
connectAttr "joint8_scaleY.o" "joint8.sy";
connectAttr "joint8_scaleZ.o" "joint8.sz";
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
connectAttr "joint2.s" "joint11.is";
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
connectAttr "joint11.s" "joint12.is";
connectAttr "joint12.s" "joint13.is";
connectAttr "joint11.s" "joint20.is";
connectAttr "joint20.s" "joint21.is";
connectAttr "joint21_scaleX.o" "joint21.sx";
connectAttr "joint21_scaleY.o" "joint21.sy";
connectAttr "joint21_scaleZ.o" "joint21.sz";
connectAttr "joint21_visibility.o" "joint21.v";
connectAttr "joint21_translateX.o" "joint21.tx";
connectAttr "joint21_translateY.o" "joint21.ty";
connectAttr "joint21_translateZ.o" "joint21.tz";
connectAttr "joint21_rotateX.o" "joint21.rx";
connectAttr "joint21_rotateY.o" "joint21.ry";
connectAttr "joint21_rotateZ.o" "joint21.rz";
connectAttr "joint21.s" "joint22.is";
connectAttr "joint22.s" "joint23.is";
connectAttr "joint22.s" "joint24.is";
connectAttr "joint1.s" "joint14.is";
connectAttr "joint14_scaleX.o" "joint14.sx";
connectAttr "joint14_scaleY.o" "joint14.sy";
connectAttr "joint14_scaleZ.o" "joint14.sz";
connectAttr "joint14_rotateX.o" "joint14.rx";
connectAttr "joint14_rotateY.o" "joint14.ry";
connectAttr "joint14_rotateZ.o" "joint14.rz";
connectAttr "joint14_visibility.o" "joint14.v";
connectAttr "joint14_translateX.o" "joint14.tx";
connectAttr "joint14_translateY.o" "joint14.ty";
connectAttr "joint14_translateZ.o" "joint14.tz";
connectAttr "joint14.s" "joint15.is";
connectAttr "joint15_scaleX.o" "joint15.sx";
connectAttr "joint15_scaleY.o" "joint15.sy";
connectAttr "joint15_scaleZ.o" "joint15.sz";
connectAttr "joint15_rotateX.o" "joint15.rx";
connectAttr "joint15_rotateY.o" "joint15.ry";
connectAttr "joint15_rotateZ.o" "joint15.rz";
connectAttr "joint15_visibility.o" "joint15.v";
connectAttr "joint15_translateX.o" "joint15.tx";
connectAttr "joint15_translateY.o" "joint15.ty";
connectAttr "joint15_translateZ.o" "joint15.tz";
connectAttr "joint15.s" "joint16.is";
connectAttr "joint16_rotateX.o" "joint16.rx";
connectAttr "joint16_rotateY.o" "joint16.ry";
connectAttr "joint16_rotateZ.o" "joint16.rz";
connectAttr "joint16_visibility.o" "joint16.v";
connectAttr "joint16_translateX.o" "joint16.tx";
connectAttr "joint16_translateY.o" "joint16.ty";
connectAttr "joint16_translateZ.o" "joint16.tz";
connectAttr "joint16_scaleX.o" "joint16.sx";
connectAttr "joint16_scaleY.o" "joint16.sy";
connectAttr "joint16_scaleZ.o" "joint16.sz";
connectAttr "joint1.s" "joint17.is";
connectAttr "joint17_scaleX.o" "joint17.sx";
connectAttr "joint17_scaleY.o" "joint17.sy";
connectAttr "joint17_scaleZ.o" "joint17.sz";
connectAttr "joint17_rotateX.o" "joint17.rx";
connectAttr "joint17_rotateY.o" "joint17.ry";
connectAttr "joint17_rotateZ.o" "joint17.rz";
connectAttr "joint17_visibility.o" "joint17.v";
connectAttr "joint17_translateX.o" "joint17.tx";
connectAttr "joint17_translateY.o" "joint17.ty";
connectAttr "joint17_translateZ.o" "joint17.tz";
connectAttr "joint17.s" "joint18.is";
connectAttr "joint18_scaleX.o" "joint18.sx";
connectAttr "joint18_scaleY.o" "joint18.sy";
connectAttr "joint18_scaleZ.o" "joint18.sz";
connectAttr "joint18_rotateX.o" "joint18.rx";
connectAttr "joint18_rotateY.o" "joint18.ry";
connectAttr "joint18_rotateZ.o" "joint18.rz";
connectAttr "joint18_visibility.o" "joint18.v";
connectAttr "joint18_translateX.o" "joint18.tx";
connectAttr "joint18_translateY.o" "joint18.ty";
connectAttr "joint18_translateZ.o" "joint18.tz";
connectAttr "joint18.s" "joint19.is";
connectAttr "joint19_rotateX.o" "joint19.rx";
connectAttr "joint19_rotateY.o" "joint19.ry";
connectAttr "joint19_rotateZ.o" "joint19.rz";
connectAttr "joint19_visibility.o" "joint19.v";
connectAttr "joint19_translateX.o" "joint19.tx";
connectAttr "joint19_translateY.o" "joint19.ty";
connectAttr "joint19_translateZ.o" "joint19.tz";
connectAttr "joint19_scaleX.o" "joint19.sx";
connectAttr "joint19_scaleY.o" "joint19.sy";
connectAttr "joint19_scaleZ.o" "joint19.sz";
connectAttr "groupParts47.og" "|polySurface1|transform49|polySurface1Shape.i";
connectAttr "groupId48.id" "|polySurface1|transform49|polySurface1Shape.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|polySurface1|transform49|polySurface1Shape.iog.og[0].gco"
		;
connectAttr "groupParts48.og" "polySurface6ShapeOrig.i";
connectAttr "polySurface6ShapeOrig.w" "polySurface6Shape.i";
connectAttr "groupId49.id" "polySurface6Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurface6Shape.iog.og[0].gco";
connectAttr "skinCluster1.og[0]" "|polySurface47|polySurface1Shape.i";
connectAttr "groupId50.id" "|polySurface47|polySurface1Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "|polySurface47|polySurface1Shape.iog.og[0].gco"
		;
connectAttr "skinCluster1GroupId.id" "|polySurface47|polySurface1Shape.iog.og[5].gid"
		;
connectAttr "skinCluster1Set.mwc" "|polySurface47|polySurface1Shape.iog.og[5].gco"
		;
connectAttr "groupId52.id" "|polySurface47|polySurface1Shape.iog.og[6].gid";
connectAttr "tweakSet1.mwc" "|polySurface47|polySurface1Shape.iog.og[6].gco";
connectAttr "tweak1.vl[0].vt[0]" "|polySurface47|polySurface1Shape.twl";
connectAttr "groupParts49.og" "polySurface1ShapeOrig.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "pPipe3Shape.o" "polySeparate1.ip";
connectAttr "polySeparate1.out[0]" "groupParts1.ig";
connectAttr "groupId2.id" "groupParts1.gi";
connectAttr "polySeparate1.out[1]" "groupParts2.ig";
connectAttr "groupId3.id" "groupParts2.gi";
connectAttr "polySeparate1.out[2]" "groupParts3.ig";
connectAttr "groupId4.id" "groupParts3.gi";
connectAttr "polySeparate1.out[3]" "groupParts4.ig";
connectAttr "groupId5.id" "groupParts4.gi";
connectAttr "polySeparate1.out[4]" "groupParts5.ig";
connectAttr "groupId6.id" "groupParts5.gi";
connectAttr "polySeparate1.out[5]" "groupParts6.ig";
connectAttr "groupId7.id" "groupParts6.gi";
connectAttr "polySeparate1.out[6]" "groupParts7.ig";
connectAttr "groupId8.id" "groupParts7.gi";
connectAttr "polySeparate1.out[7]" "groupParts8.ig";
connectAttr "groupId9.id" "groupParts8.gi";
connectAttr "polySeparate1.out[8]" "groupParts9.ig";
connectAttr "groupId10.id" "groupParts9.gi";
connectAttr "polySeparate1.out[9]" "groupParts10.ig";
connectAttr "groupId11.id" "groupParts10.gi";
connectAttr "polySeparate1.out[10]" "groupParts11.ig";
connectAttr "groupId12.id" "groupParts11.gi";
connectAttr "polySeparate1.out[11]" "groupParts12.ig";
connectAttr "groupId13.id" "groupParts12.gi";
connectAttr "polySeparate1.out[12]" "groupParts13.ig";
connectAttr "groupId14.id" "groupParts13.gi";
connectAttr "polySeparate1.out[13]" "groupParts14.ig";
connectAttr "groupId15.id" "groupParts14.gi";
connectAttr "polySeparate1.out[14]" "groupParts15.ig";
connectAttr "groupId16.id" "groupParts15.gi";
connectAttr "polySeparate1.out[15]" "groupParts16.ig";
connectAttr "groupId17.id" "groupParts16.gi";
connectAttr "polySeparate1.out[16]" "groupParts17.ig";
connectAttr "groupId18.id" "groupParts17.gi";
connectAttr "polySeparate1.out[17]" "groupParts18.ig";
connectAttr "groupId19.id" "groupParts18.gi";
connectAttr "polySeparate1.out[18]" "groupParts19.ig";
connectAttr "groupId20.id" "groupParts19.gi";
connectAttr "polySeparate1.out[19]" "groupParts20.ig";
connectAttr "groupId21.id" "groupParts20.gi";
connectAttr "polySeparate1.out[20]" "groupParts21.ig";
connectAttr "groupId22.id" "groupParts21.gi";
connectAttr "polySeparate1.out[21]" "groupParts22.ig";
connectAttr "groupId23.id" "groupParts22.gi";
connectAttr "polySeparate1.out[22]" "groupParts23.ig";
connectAttr "groupId24.id" "groupParts23.gi";
connectAttr "polySeparate1.out[23]" "groupParts24.ig";
connectAttr "groupId25.id" "groupParts24.gi";
connectAttr "polySeparate1.out[24]" "groupParts25.ig";
connectAttr "groupId26.id" "groupParts25.gi";
connectAttr "polySeparate1.out[25]" "groupParts26.ig";
connectAttr "groupId27.id" "groupParts26.gi";
connectAttr "polySeparate1.out[26]" "groupParts27.ig";
connectAttr "groupId28.id" "groupParts27.gi";
connectAttr "polySeparate1.out[27]" "groupParts28.ig";
connectAttr "groupId29.id" "groupParts28.gi";
connectAttr "polySeparate1.out[28]" "groupParts29.ig";
connectAttr "groupId30.id" "groupParts29.gi";
connectAttr "polySeparate1.out[29]" "groupParts30.ig";
connectAttr "groupId31.id" "groupParts30.gi";
connectAttr "polySeparate1.out[30]" "groupParts31.ig";
connectAttr "groupId32.id" "groupParts31.gi";
connectAttr "polySeparate1.out[31]" "groupParts32.ig";
connectAttr "groupId33.id" "groupParts32.gi";
connectAttr "polySeparate1.out[32]" "groupParts33.ig";
connectAttr "groupId34.id" "groupParts33.gi";
connectAttr "polySeparate1.out[33]" "groupParts34.ig";
connectAttr "groupId35.id" "groupParts34.gi";
connectAttr "polySeparate1.out[34]" "groupParts35.ig";
connectAttr "groupId36.id" "groupParts35.gi";
connectAttr "polySeparate1.out[35]" "groupParts36.ig";
connectAttr "groupId37.id" "groupParts36.gi";
connectAttr "polySeparate1.out[36]" "groupParts37.ig";
connectAttr "groupId38.id" "groupParts37.gi";
connectAttr "polySeparate1.out[37]" "groupParts38.ig";
connectAttr "groupId39.id" "groupParts38.gi";
connectAttr "polySeparate1.out[38]" "groupParts39.ig";
connectAttr "groupId40.id" "groupParts39.gi";
connectAttr "polySeparate1.out[39]" "groupParts40.ig";
connectAttr "groupId41.id" "groupParts40.gi";
connectAttr "polySeparate1.out[40]" "groupParts41.ig";
connectAttr "groupId42.id" "groupParts41.gi";
connectAttr "polySeparate1.out[41]" "groupParts42.ig";
connectAttr "groupId43.id" "groupParts42.gi";
connectAttr "polySeparate1.out[42]" "groupParts43.ig";
connectAttr "groupId44.id" "groupParts43.gi";
connectAttr "polySeparate1.out[43]" "groupParts44.ig";
connectAttr "groupId45.id" "groupParts44.gi";
connectAttr "polySeparate1.out[44]" "groupParts45.ig";
connectAttr "groupId46.id" "groupParts45.gi";
connectAttr "polySeparate1.out[45]" "groupParts46.ig";
connectAttr "groupId47.id" "groupParts46.gi";
connectAttr "polySurfaceShape1.o" "polyUnite1.ip[0]";
connectAttr "polySurfaceShape2.o" "polyUnite1.ip[1]";
connectAttr "polySurfaceShape4.o" "polyUnite1.ip[2]";
connectAttr "polySurfaceShape5.o" "polyUnite1.ip[3]";
connectAttr "polySurfaceShape9.o" "polyUnite1.ip[4]";
connectAttr "polySurfaceShape1.wm" "polyUnite1.im[0]";
connectAttr "polySurfaceShape2.wm" "polyUnite1.im[1]";
connectAttr "polySurfaceShape4.wm" "polyUnite1.im[2]";
connectAttr "polySurfaceShape5.wm" "polyUnite1.im[3]";
connectAttr "polySurfaceShape9.wm" "polyUnite1.im[4]";
connectAttr "polyUnite1.out" "groupParts47.ig";
connectAttr "groupId48.id" "groupParts47.gi";
connectAttr "polySurfaceShape6.o" "polyUnite2.ip[0]";
connectAttr "polySurfaceShape8.o" "polyUnite2.ip[1]";
connectAttr "polySurfaceShape12.o" "polyUnite2.ip[2]";
connectAttr "polySurfaceShape11.o" "polyUnite2.ip[3]";
connectAttr "polySurfaceShape10.o" "polyUnite2.ip[4]";
connectAttr "polySurfaceShape7.o" "polyUnite2.ip[5]";
connectAttr "polySurfaceShape28.o" "polyUnite2.ip[6]";
connectAttr "polySurfaceShape31.o" "polyUnite2.ip[7]";
connectAttr "polySurfaceShape30.o" "polyUnite2.ip[8]";
connectAttr "polySurfaceShape27.o" "polyUnite2.ip[9]";
connectAttr "polySurfaceShape29.o" "polyUnite2.ip[10]";
connectAttr "polySurfaceShape33.o" "polyUnite2.ip[11]";
connectAttr "polySurfaceShape38.o" "polyUnite2.ip[12]";
connectAttr "polySurfaceShape35.o" "polyUnite2.ip[13]";
connectAttr "polySurfaceShape43.o" "polyUnite2.ip[14]";
connectAttr "polySurfaceShape36.o" "polyUnite2.ip[15]";
connectAttr "polySurfaceShape37.o" "polyUnite2.ip[16]";
connectAttr "polySurfaceShape39.o" "polyUnite2.ip[17]";
connectAttr "polySurfaceShape34.o" "polyUnite2.ip[18]";
connectAttr "polySurfaceShape42.o" "polyUnite2.ip[19]";
connectAttr "polySurfaceShape32.o" "polyUnite2.ip[20]";
connectAttr "polySurfaceShape41.o" "polyUnite2.ip[21]";
connectAttr "polySurfaceShape40.o" "polyUnite2.ip[22]";
connectAttr "polySurfaceShape46.o" "polyUnite2.ip[23]";
connectAttr "polySurfaceShape45.o" "polyUnite2.ip[24]";
connectAttr "polySurfaceShape44.o" "polyUnite2.ip[25]";
connectAttr "polySurfaceShape26.o" "polyUnite2.ip[26]";
connectAttr "polySurfaceShape17.o" "polyUnite2.ip[27]";
connectAttr "polySurfaceShape16.o" "polyUnite2.ip[28]";
connectAttr "polySurfaceShape25.o" "polyUnite2.ip[29]";
connectAttr "polySurfaceShape24.o" "polyUnite2.ip[30]";
connectAttr "polySurfaceShape23.o" "polyUnite2.ip[31]";
connectAttr "polySurfaceShape22.o" "polyUnite2.ip[32]";
connectAttr "polySurfaceShape21.o" "polyUnite2.ip[33]";
connectAttr "polySurfaceShape20.o" "polyUnite2.ip[34]";
connectAttr "polySurfaceShape19.o" "polyUnite2.ip[35]";
connectAttr "polySurfaceShape18.o" "polyUnite2.ip[36]";
connectAttr "polySurfaceShape15.o" "polyUnite2.ip[37]";
connectAttr "polySurfaceShape13.o" "polyUnite2.ip[38]";
connectAttr "polySurfaceShape14.o" "polyUnite2.ip[39]";
connectAttr "polySurfaceShape6.wm" "polyUnite2.im[0]";
connectAttr "polySurfaceShape8.wm" "polyUnite2.im[1]";
connectAttr "polySurfaceShape12.wm" "polyUnite2.im[2]";
connectAttr "polySurfaceShape11.wm" "polyUnite2.im[3]";
connectAttr "polySurfaceShape10.wm" "polyUnite2.im[4]";
connectAttr "polySurfaceShape7.wm" "polyUnite2.im[5]";
connectAttr "polySurfaceShape28.wm" "polyUnite2.im[6]";
connectAttr "polySurfaceShape31.wm" "polyUnite2.im[7]";
connectAttr "polySurfaceShape30.wm" "polyUnite2.im[8]";
connectAttr "polySurfaceShape27.wm" "polyUnite2.im[9]";
connectAttr "polySurfaceShape29.wm" "polyUnite2.im[10]";
connectAttr "polySurfaceShape33.wm" "polyUnite2.im[11]";
connectAttr "polySurfaceShape38.wm" "polyUnite2.im[12]";
connectAttr "polySurfaceShape35.wm" "polyUnite2.im[13]";
connectAttr "polySurfaceShape43.wm" "polyUnite2.im[14]";
connectAttr "polySurfaceShape36.wm" "polyUnite2.im[15]";
connectAttr "polySurfaceShape37.wm" "polyUnite2.im[16]";
connectAttr "polySurfaceShape39.wm" "polyUnite2.im[17]";
connectAttr "polySurfaceShape34.wm" "polyUnite2.im[18]";
connectAttr "polySurfaceShape42.wm" "polyUnite2.im[19]";
connectAttr "polySurfaceShape32.wm" "polyUnite2.im[20]";
connectAttr "polySurfaceShape41.wm" "polyUnite2.im[21]";
connectAttr "polySurfaceShape40.wm" "polyUnite2.im[22]";
connectAttr "polySurfaceShape46.wm" "polyUnite2.im[23]";
connectAttr "polySurfaceShape45.wm" "polyUnite2.im[24]";
connectAttr "polySurfaceShape44.wm" "polyUnite2.im[25]";
connectAttr "polySurfaceShape26.wm" "polyUnite2.im[26]";
connectAttr "polySurfaceShape17.wm" "polyUnite2.im[27]";
connectAttr "polySurfaceShape16.wm" "polyUnite2.im[28]";
connectAttr "polySurfaceShape25.wm" "polyUnite2.im[29]";
connectAttr "polySurfaceShape24.wm" "polyUnite2.im[30]";
connectAttr "polySurfaceShape23.wm" "polyUnite2.im[31]";
connectAttr "polySurfaceShape22.wm" "polyUnite2.im[32]";
connectAttr "polySurfaceShape21.wm" "polyUnite2.im[33]";
connectAttr "polySurfaceShape20.wm" "polyUnite2.im[34]";
connectAttr "polySurfaceShape19.wm" "polyUnite2.im[35]";
connectAttr "polySurfaceShape18.wm" "polyUnite2.im[36]";
connectAttr "polySurfaceShape15.wm" "polyUnite2.im[37]";
connectAttr "polySurfaceShape13.wm" "polyUnite2.im[38]";
connectAttr "polySurfaceShape14.wm" "polyUnite2.im[39]";
connectAttr "polyUnite2.out" "groupParts48.ig";
connectAttr "groupId49.id" "groupParts48.gi";
connectAttr "|polySurface1|transform49|polySurface1Shape.o" "polyUnite3.ip[0]";
connectAttr "polySurface6Shape.o" "polyUnite3.ip[1]";
connectAttr "polySurfaceShape3.o" "polyUnite3.ip[2]";
connectAttr "|polySurface1|transform49|polySurface1Shape.wm" "polyUnite3.im[0]";
connectAttr "polySurface6Shape.wm" "polyUnite3.im[1]";
connectAttr "polySurfaceShape3.wm" "polyUnite3.im[2]";
connectAttr "polyUnite3.out" "groupParts49.ig";
connectAttr "groupId50.id" "groupParts49.gi";
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
connectAttr "joint20.wm" "skinCluster1.ma[13]";
connectAttr "joint21.wm" "skinCluster1.ma[14]";
connectAttr "joint22.wm" "skinCluster1.ma[15]";
connectAttr "joint23.wm" "skinCluster1.ma[16]";
connectAttr "joint24.wm" "skinCluster1.ma[17]";
connectAttr "joint14.wm" "skinCluster1.ma[18]";
connectAttr "joint15.wm" "skinCluster1.ma[19]";
connectAttr "joint16.wm" "skinCluster1.ma[20]";
connectAttr "joint17.wm" "skinCluster1.ma[21]";
connectAttr "joint18.wm" "skinCluster1.ma[22]";
connectAttr "joint19.wm" "skinCluster1.ma[23]";
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
connectAttr "joint20.liw" "skinCluster1.lw[13]";
connectAttr "joint21.liw" "skinCluster1.lw[14]";
connectAttr "joint22.liw" "skinCluster1.lw[15]";
connectAttr "joint23.liw" "skinCluster1.lw[16]";
connectAttr "joint24.liw" "skinCluster1.lw[17]";
connectAttr "joint14.liw" "skinCluster1.lw[18]";
connectAttr "joint15.liw" "skinCluster1.lw[19]";
connectAttr "joint16.liw" "skinCluster1.lw[20]";
connectAttr "joint17.liw" "skinCluster1.lw[21]";
connectAttr "joint18.liw" "skinCluster1.lw[22]";
connectAttr "joint19.liw" "skinCluster1.lw[23]";
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
connectAttr "joint20.obcc" "skinCluster1.ifcl[13]";
connectAttr "joint21.obcc" "skinCluster1.ifcl[14]";
connectAttr "joint22.obcc" "skinCluster1.ifcl[15]";
connectAttr "joint23.obcc" "skinCluster1.ifcl[16]";
connectAttr "joint24.obcc" "skinCluster1.ifcl[17]";
connectAttr "joint14.obcc" "skinCluster1.ifcl[18]";
connectAttr "joint15.obcc" "skinCluster1.ifcl[19]";
connectAttr "joint16.obcc" "skinCluster1.ifcl[20]";
connectAttr "joint17.obcc" "skinCluster1.ifcl[21]";
connectAttr "joint18.obcc" "skinCluster1.ifcl[22]";
connectAttr "joint19.obcc" "skinCluster1.ifcl[23]";
connectAttr "skinBinding1.uw" "skinCluster1.bc";
connectAttr "groupParts51.og" "tweak1.ip[0].ig";
connectAttr "groupId52.id" "tweak1.ip[0].gi";
connectAttr "skinCluster1GroupId.msg" "skinCluster1Set.gn" -na;
connectAttr "|polySurface47|polySurface1Shape.iog.og[5]" "skinCluster1Set.dsm" -na
		;
connectAttr "skinCluster1.msg" "skinCluster1Set.ub[0]";
connectAttr "tweak1.og[0]" "skinCluster1GroupParts.ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1GroupParts.gi";
connectAttr "groupId52.msg" "tweakSet1.gn" -na;
connectAttr "|polySurface47|polySurface1Shape.iog.og[6]" "tweakSet1.dsm" -na;
connectAttr "tweak1.msg" "tweakSet1.ub[0]";
connectAttr "polySurface1ShapeOrig.w" "groupParts51.ig";
connectAttr "groupId52.id" "groupParts51.gi";
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
connectAttr "joint20.msg" "bindPose1.m[13]";
connectAttr "joint21.msg" "bindPose1.m[14]";
connectAttr "joint22.msg" "bindPose1.m[15]";
connectAttr "joint23.msg" "bindPose1.m[16]";
connectAttr "joint24.msg" "bindPose1.m[17]";
connectAttr "joint14.msg" "bindPose1.m[18]";
connectAttr "joint15.msg" "bindPose1.m[19]";
connectAttr "joint16.msg" "bindPose1.m[20]";
connectAttr "joint17.msg" "bindPose1.m[21]";
connectAttr "joint18.msg" "bindPose1.m[22]";
connectAttr "joint19.msg" "bindPose1.m[23]";
connectAttr "bindPose1.w" "bindPose1.p[0]";
connectAttr "bindPose1.m[0]" "bindPose1.p[1]";
connectAttr "bindPose1.m[1]" "bindPose1.p[2]";
connectAttr "bindPose1.m[2]" "bindPose1.p[3]";
connectAttr "bindPose1.m[3]" "bindPose1.p[4]";
connectAttr "bindPose1.m[4]" "bindPose1.p[5]";
connectAttr "bindPose1.m[1]" "bindPose1.p[6]";
connectAttr "bindPose1.m[6]" "bindPose1.p[7]";
connectAttr "bindPose1.m[7]" "bindPose1.p[8]";
connectAttr "bindPose1.m[8]" "bindPose1.p[9]";
connectAttr "bindPose1.m[1]" "bindPose1.p[10]";
connectAttr "bindPose1.m[10]" "bindPose1.p[11]";
connectAttr "bindPose1.m[11]" "bindPose1.p[12]";
connectAttr "bindPose1.m[10]" "bindPose1.p[13]";
connectAttr "bindPose1.m[13]" "bindPose1.p[14]";
connectAttr "bindPose1.m[14]" "bindPose1.p[15]";
connectAttr "bindPose1.m[15]" "bindPose1.p[16]";
connectAttr "bindPose1.m[15]" "bindPose1.p[17]";
connectAttr "bindPose1.m[0]" "bindPose1.p[18]";
connectAttr "bindPose1.m[18]" "bindPose1.p[19]";
connectAttr "bindPose1.m[19]" "bindPose1.p[20]";
connectAttr "bindPose1.m[0]" "bindPose1.p[21]";
connectAttr "bindPose1.m[21]" "bindPose1.p[22]";
connectAttr "bindPose1.m[22]" "bindPose1.p[23]";
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
connectAttr "joint20.bps" "bindPose1.wm[13]";
connectAttr "joint21.bps" "bindPose1.wm[14]";
connectAttr "joint22.bps" "bindPose1.wm[15]";
connectAttr "joint23.bps" "bindPose1.wm[16]";
connectAttr "joint24.bps" "bindPose1.wm[17]";
connectAttr "joint14.bps" "bindPose1.wm[18]";
connectAttr "joint15.bps" "bindPose1.wm[19]";
connectAttr "joint16.bps" "bindPose1.wm[20]";
connectAttr "joint17.bps" "bindPose1.wm[21]";
connectAttr "joint18.bps" "bindPose1.wm[22]";
connectAttr "joint19.bps" "bindPose1.wm[23]";
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
connectAttr "joint20.wm" "skinBinding1.pm[13]";
connectAttr "joint21.wm" "skinBinding1.pm[14]";
connectAttr "joint22.wm" "skinBinding1.pm[15]";
connectAttr "joint23.wm" "skinBinding1.pm[16]";
connectAttr "joint24.wm" "skinBinding1.pm[17]";
connectAttr "joint14.wm" "skinBinding1.pm[18]";
connectAttr "joint15.wm" "skinBinding1.pm[19]";
connectAttr "joint16.wm" "skinBinding1.pm[20]";
connectAttr "joint17.wm" "skinBinding1.pm[21]";
connectAttr "joint18.wm" "skinBinding1.pm[22]";
connectAttr "joint19.wm" "skinBinding1.pm[23]";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pPipe3Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
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
connectAttr "polySurfaceShape44.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape45.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape46.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "|polySurface1|transform49|polySurface1Shape.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "polySurface6Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "|polySurface47|polySurface1Shape.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "groupId1.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId3.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId4.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId5.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId6.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId7.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId8.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId9.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId10.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId11.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId12.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId13.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId14.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId15.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId16.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId17.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId18.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId19.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId20.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId21.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId22.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId23.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId24.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId25.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId26.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId27.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId28.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId29.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId30.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId31.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId32.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId33.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId34.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId35.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId36.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId37.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId38.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId39.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId40.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId41.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId42.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId43.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId44.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId45.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId46.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId47.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId48.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId49.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId50.msg" ":initialShadingGroup.gn" -na;
// End of piano monk animated.ma
